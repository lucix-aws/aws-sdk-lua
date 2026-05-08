

local id = require("smithy.shape_id")
local schema = require("smithy.schema")
local prelude = require("smithy.prelude")
local traits = require("smithy.traits")

local _N = "com.amazonaws.migrationhubrefactorspaces"

local M = {}

M.TagMap = schema.new({ type = "map", map_key = prelude.String, map_value = prelude.String })

M.HttpMethods = schema.new({ type = "list", list_member = prelude.String })

M.PathResourceToId = schema.new({ type = "map", map_key = prelude.String, map_value = prelude.String })

M.ApplicationSummaries = schema.new({ type = "list", list_member = M.ApplicationSummary })

M.EnvironmentSummaries = schema.new({ type = "list", list_member = M.EnvironmentSummary })

M.EnvironmentVpcs = schema.new({ type = "list", list_member = M.EnvironmentVpc })

M.RouteSummaries = schema.new({ type = "list", list_member = M.RouteSummary })

M.ServiceSummaries = schema.new({ type = "list", list_member = M.ServiceSummary })

M.TagKeys = schema.new({ type = "list", list_member = prelude.String })

M.AdditionalDetails = schema.new({ type = "map", map_key = prelude.String, map_value = prelude.String })

M.CidrBlocks = schema.new({ type = "list", list_member = prelude.String })

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

M.ApiGatewayProxyConfig = schema.new({
   id = id.from(_N, "ApiGatewayProxyConfig"),
   type = "structure",
   members = {
      ProxyUrl = schema.new({
         id = id.from(_N, "ApiGatewayProxyConfig", "ProxyUrl"),
         type = "string",
         name = "ProxyUrl",
         target_id = prelude.String.id,
      }),
      ApiGatewayId = schema.new({
         id = id.from(_N, "ApiGatewayProxyConfig", "ApiGatewayId"),
         type = "string",
         name = "ApiGatewayId",
         target_id = prelude.String.id,
      }),
      VpcLinkId = schema.new({
         id = id.from(_N, "ApiGatewayProxyConfig", "VpcLinkId"),
         type = "string",
         name = "VpcLinkId",
         target_id = prelude.String.id,
      }),
      NlbArn = schema.new({
         id = id.from(_N, "ApiGatewayProxyConfig", "NlbArn"),
         type = "string",
         name = "NlbArn",
         target_id = prelude.String.id,
      }),
      NlbName = schema.new({
         id = id.from(_N, "ApiGatewayProxyConfig", "NlbName"),
         type = "string",
         name = "NlbName",
         target_id = prelude.String.id,
      }),
      EndpointType = schema.new({
         id = id.from(_N, "ApiGatewayProxyConfig", "EndpointType"),
         type = "string",
         name = "EndpointType",
         target_id = prelude.String.id,
      }),
      StageName = schema.new({
         id = id.from(_N, "ApiGatewayProxyConfig", "StageName"),
         type = "string",
         name = "StageName",
         target_id = prelude.String.id,
      }),
   },
})

M.ApiGatewayProxyInput = schema.new({
   id = id.from(_N, "ApiGatewayProxyInput"),
   type = "structure",
   members = {
      EndpointType = schema.new({
         id = id.from(_N, "ApiGatewayProxyInput", "EndpointType"),
         type = "string",
         name = "EndpointType",
         target_id = prelude.String.id,
      }),
      StageName = schema.new({
         id = id.from(_N, "ApiGatewayProxyInput", "StageName"),
         type = "string",
         name = "StageName",
         target_id = prelude.String.id,
      }),
   },
})

M.ApiGatewayProxySummary = schema.new({
   id = id.from(_N, "ApiGatewayProxySummary"),
   type = "structure",
   members = {
      ProxyUrl = schema.new({
         id = id.from(_N, "ApiGatewayProxySummary", "ProxyUrl"),
         type = "string",
         name = "ProxyUrl",
         target_id = prelude.String.id,
      }),
      ApiGatewayId = schema.new({
         id = id.from(_N, "ApiGatewayProxySummary", "ApiGatewayId"),
         type = "string",
         name = "ApiGatewayId",
         target_id = prelude.String.id,
      }),
      VpcLinkId = schema.new({
         id = id.from(_N, "ApiGatewayProxySummary", "VpcLinkId"),
         type = "string",
         name = "VpcLinkId",
         target_id = prelude.String.id,
      }),
      NlbArn = schema.new({
         id = id.from(_N, "ApiGatewayProxySummary", "NlbArn"),
         type = "string",
         name = "NlbArn",
         target_id = prelude.String.id,
      }),
      NlbName = schema.new({
         id = id.from(_N, "ApiGatewayProxySummary", "NlbName"),
         type = "string",
         name = "NlbName",
         target_id = prelude.String.id,
      }),
      EndpointType = schema.new({
         id = id.from(_N, "ApiGatewayProxySummary", "EndpointType"),
         type = "string",
         name = "EndpointType",
         target_id = prelude.String.id,
      }),
      StageName = schema.new({
         id = id.from(_N, "ApiGatewayProxySummary", "StageName"),
         type = "string",
         name = "StageName",
         target_id = prelude.String.id,
      }),
   },
})

M.ErrorResponse = schema.new({
   id = id.from(_N, "ErrorResponse"),
   type = "structure",
   members = {
      Code = schema.new({
         id = id.from(_N, "ErrorResponse", "Code"),
         type = "string",
         name = "Code",
         target_id = prelude.String.id,
      }),
      Message = schema.new({
         id = id.from(_N, "ErrorResponse", "Message"),
         type = "string",
         name = "Message",
         target_id = prelude.String.id,
      }),
      AccountId = schema.new({
         id = id.from(_N, "ErrorResponse", "AccountId"),
         type = "string",
         name = "AccountId",
         target_id = prelude.String.id,
      }),
      ResourceIdentifier = schema.new({
         id = id.from(_N, "ErrorResponse", "ResourceIdentifier"),
         type = "string",
         name = "ResourceIdentifier",
         target_id = prelude.String.id,
      }),
      ResourceType = schema.new({
         id = id.from(_N, "ErrorResponse", "ResourceType"),
         type = "string",
         name = "ResourceType",
         target_id = prelude.String.id,
      }),
      AdditionalDetails = schema.new({
         id = id.from(_N, "ErrorResponse", "AdditionalDetails"),
         type = "map",
         name = "AdditionalDetails",
         target_id = prelude.Document.id,
         map_key = prelude.String,
         map_value = prelude.String,
      }),
   },
})

M.ApplicationSummary = schema.new({
   id = id.from(_N, "ApplicationSummary"),
   type = "structure",
   members = {
      Name = schema.new({
         id = id.from(_N, "ApplicationSummary", "Name"),
         type = "string",
         name = "Name",
         target_id = prelude.String.id,
      }),
      Arn = schema.new({
         id = id.from(_N, "ApplicationSummary", "Arn"),
         type = "string",
         name = "Arn",
         target_id = prelude.String.id,
      }),
      OwnerAccountId = schema.new({
         id = id.from(_N, "ApplicationSummary", "OwnerAccountId"),
         type = "string",
         name = "OwnerAccountId",
         target_id = prelude.String.id,
      }),
      CreatedByAccountId = schema.new({
         id = id.from(_N, "ApplicationSummary", "CreatedByAccountId"),
         type = "string",
         name = "CreatedByAccountId",
         target_id = prelude.String.id,
      }),
      ApplicationId = schema.new({
         id = id.from(_N, "ApplicationSummary", "ApplicationId"),
         type = "string",
         name = "ApplicationId",
         target_id = prelude.String.id,
      }),
      EnvironmentId = schema.new({
         id = id.from(_N, "ApplicationSummary", "EnvironmentId"),
         type = "string",
         name = "EnvironmentId",
         target_id = prelude.String.id,
      }),
      VpcId = schema.new({
         id = id.from(_N, "ApplicationSummary", "VpcId"),
         type = "string",
         name = "VpcId",
         target_id = prelude.String.id,
      }),
      ProxyType = schema.new({
         id = id.from(_N, "ApplicationSummary", "ProxyType"),
         type = "string",
         name = "ProxyType",
         target_id = prelude.String.id,
      }),
      ApiGatewayProxy = schema.new({
         id = id.from(_N, "ApplicationSummary", "ApiGatewayProxy"),
         type = "structure",
         name = "ApiGatewayProxy",
         target_id = id.from(_N, "ApiGatewayProxySummary"),
         target = M.ApiGatewayProxySummary,
      }),
      State = schema.new({
         id = id.from(_N, "ApplicationSummary", "State"),
         type = "string",
         name = "State",
         target_id = prelude.String.id,
      }),
      Tags = schema.new({
         id = id.from(_N, "ApplicationSummary", "Tags"),
         type = "map",
         name = "Tags",
         target_id = prelude.Document.id,
         map_key = prelude.String,
         map_value = prelude.String,
      }),
      Error = schema.new({
         id = id.from(_N, "ApplicationSummary", "Error"),
         type = "structure",
         name = "Error",
         target_id = id.from(_N, "ErrorResponse"),
         target = M.ErrorResponse,
      }),
      LastUpdatedTime = schema.new({
         id = id.from(_N, "ApplicationSummary", "LastUpdatedTime"),
         type = "timestamp",
         name = "LastUpdatedTime",
         target_id = prelude.Timestamp.id,
      }),
      CreatedTime = schema.new({
         id = id.from(_N, "ApplicationSummary", "CreatedTime"),
         type = "timestamp",
         name = "CreatedTime",
         target_id = prelude.Timestamp.id,
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
      ResourceId = schema.new({
         id = id.from(_N, "ConflictException", "ResourceId"),
         type = "string",
         name = "ResourceId",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      ResourceType = schema.new({
         id = id.from(_N, "ConflictException", "ResourceType"),
         type = "string",
         name = "ResourceType",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
   },
})

M.CreateApplicationInput = schema.new({
   id = id.from(_N, "CreateApplicationRequest"),
   type = "structure",
   members = {
      Name = schema.new({
         id = id.from(_N, "CreateApplicationInput", "Name"),
         type = "string",
         name = "Name",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      EnvironmentIdentifier = schema.new({
         id = id.from(_N, "CreateApplicationInput", "EnvironmentIdentifier"),
         type = "string",
         name = "EnvironmentIdentifier",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_LABEL] = {},
         },
      }),
      VpcId = schema.new({
         id = id.from(_N, "CreateApplicationInput", "VpcId"),
         type = "string",
         name = "VpcId",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      ProxyType = schema.new({
         id = id.from(_N, "CreateApplicationInput", "ProxyType"),
         type = "string",
         name = "ProxyType",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      ApiGatewayProxy = schema.new({
         id = id.from(_N, "CreateApplicationInput", "ApiGatewayProxy"),
         type = "structure",
         name = "ApiGatewayProxy",
         target_id = id.from(_N, "ApiGatewayProxyInput"),
         target = M.ApiGatewayProxyInput,
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

M.CreateApplicationOutput = schema.new({
   id = id.from(_N, "CreateApplicationResponse"),
   type = "structure",
   members = {
      Name = schema.new({
         id = id.from(_N, "CreateApplicationOutput", "Name"),
         type = "string",
         name = "Name",
         target_id = prelude.String.id,
      }),
      Arn = schema.new({
         id = id.from(_N, "CreateApplicationOutput", "Arn"),
         type = "string",
         name = "Arn",
         target_id = prelude.String.id,
      }),
      OwnerAccountId = schema.new({
         id = id.from(_N, "CreateApplicationOutput", "OwnerAccountId"),
         type = "string",
         name = "OwnerAccountId",
         target_id = prelude.String.id,
      }),
      CreatedByAccountId = schema.new({
         id = id.from(_N, "CreateApplicationOutput", "CreatedByAccountId"),
         type = "string",
         name = "CreatedByAccountId",
         target_id = prelude.String.id,
      }),
      ApplicationId = schema.new({
         id = id.from(_N, "CreateApplicationOutput", "ApplicationId"),
         type = "string",
         name = "ApplicationId",
         target_id = prelude.String.id,
      }),
      EnvironmentId = schema.new({
         id = id.from(_N, "CreateApplicationOutput", "EnvironmentId"),
         type = "string",
         name = "EnvironmentId",
         target_id = prelude.String.id,
      }),
      VpcId = schema.new({
         id = id.from(_N, "CreateApplicationOutput", "VpcId"),
         type = "string",
         name = "VpcId",
         target_id = prelude.String.id,
      }),
      ProxyType = schema.new({
         id = id.from(_N, "CreateApplicationOutput", "ProxyType"),
         type = "string",
         name = "ProxyType",
         target_id = prelude.String.id,
      }),
      ApiGatewayProxy = schema.new({
         id = id.from(_N, "CreateApplicationOutput", "ApiGatewayProxy"),
         type = "structure",
         name = "ApiGatewayProxy",
         target_id = id.from(_N, "ApiGatewayProxyInput"),
         target = M.ApiGatewayProxyInput,
      }),
      State = schema.new({
         id = id.from(_N, "CreateApplicationOutput", "State"),
         type = "string",
         name = "State",
         target_id = prelude.String.id,
      }),
      Tags = schema.new({
         id = id.from(_N, "CreateApplicationOutput", "Tags"),
         type = "map",
         name = "Tags",
         target_id = prelude.Document.id,
         map_key = prelude.String,
         map_value = prelude.String,
      }),
      LastUpdatedTime = schema.new({
         id = id.from(_N, "CreateApplicationOutput", "LastUpdatedTime"),
         type = "timestamp",
         name = "LastUpdatedTime",
         target_id = prelude.Timestamp.id,
      }),
      CreatedTime = schema.new({
         id = id.from(_N, "CreateApplicationOutput", "CreatedTime"),
         type = "timestamp",
         name = "CreatedTime",
         target_id = prelude.Timestamp.id,
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
      ResourceId = schema.new({
         id = id.from(_N, "ResourceNotFoundException", "ResourceId"),
         type = "string",
         name = "ResourceId",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      ResourceType = schema.new({
         id = id.from(_N, "ResourceNotFoundException", "ResourceType"),
         type = "string",
         name = "ResourceType",
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
      ResourceId = schema.new({
         id = id.from(_N, "ServiceQuotaExceededException", "ResourceId"),
         type = "string",
         name = "ResourceId",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      ResourceType = schema.new({
         id = id.from(_N, "ServiceQuotaExceededException", "ResourceType"),
         type = "string",
         name = "ResourceType",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      QuotaCode = schema.new({
         id = id.from(_N, "ServiceQuotaExceededException", "QuotaCode"),
         type = "string",
         name = "QuotaCode",
         target_id = prelude.String.id,
      }),
      ServiceCode = schema.new({
         id = id.from(_N, "ServiceQuotaExceededException", "ServiceCode"),
         type = "string",
         name = "ServiceCode",
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
      QuotaCode = schema.new({
         id = id.from(_N, "ThrottlingException", "QuotaCode"),
         type = "string",
         name = "QuotaCode",
         target_id = prelude.String.id,
      }),
      ServiceCode = schema.new({
         id = id.from(_N, "ThrottlingException", "ServiceCode"),
         type = "string",
         name = "ServiceCode",
         target_id = prelude.String.id,
      }),
      RetryAfterSeconds = schema.new({
         id = id.from(_N, "ThrottlingException", "RetryAfterSeconds"),
         type = "integer",
         name = "RetryAfterSeconds",
         target_id = prelude.Integer.id,
         traits = {
            [traits.DEFAULT] = { value = 0 },
            [traits.HTTP_HEADER] = { name = "Retry-After" },
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

M.CreateEnvironmentInput = schema.new({
   id = id.from(_N, "CreateEnvironmentRequest"),
   type = "structure",
   members = {
      Name = schema.new({
         id = id.from(_N, "CreateEnvironmentInput", "Name"),
         type = "string",
         name = "Name",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      Description = schema.new({
         id = id.from(_N, "CreateEnvironmentInput", "Description"),
         type = "string",
         name = "Description",
         target_id = prelude.String.id,
      }),
      NetworkFabricType = schema.new({
         id = id.from(_N, "CreateEnvironmentInput", "NetworkFabricType"),
         type = "string",
         name = "NetworkFabricType",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      Tags = schema.new({
         id = id.from(_N, "CreateEnvironmentInput", "Tags"),
         type = "map",
         name = "Tags",
         target_id = prelude.Document.id,
         map_key = prelude.String,
         map_value = prelude.String,
      }),
      ClientToken = schema.new({
         id = id.from(_N, "CreateEnvironmentInput", "ClientToken"),
         type = "string",
         name = "ClientToken",
         target_id = prelude.String.id,
         traits = {
            [traits.IDEMPOTENCY_TOKEN] = {},
         },
      }),
   },
})

M.CreateEnvironmentOutput = schema.new({
   id = id.from(_N, "CreateEnvironmentResponse"),
   type = "structure",
   members = {
      Name = schema.new({
         id = id.from(_N, "CreateEnvironmentOutput", "Name"),
         type = "string",
         name = "Name",
         target_id = prelude.String.id,
      }),
      Arn = schema.new({
         id = id.from(_N, "CreateEnvironmentOutput", "Arn"),
         type = "string",
         name = "Arn",
         target_id = prelude.String.id,
      }),
      Description = schema.new({
         id = id.from(_N, "CreateEnvironmentOutput", "Description"),
         type = "string",
         name = "Description",
         target_id = prelude.String.id,
      }),
      EnvironmentId = schema.new({
         id = id.from(_N, "CreateEnvironmentOutput", "EnvironmentId"),
         type = "string",
         name = "EnvironmentId",
         target_id = prelude.String.id,
      }),
      NetworkFabricType = schema.new({
         id = id.from(_N, "CreateEnvironmentOutput", "NetworkFabricType"),
         type = "string",
         name = "NetworkFabricType",
         target_id = prelude.String.id,
      }),
      OwnerAccountId = schema.new({
         id = id.from(_N, "CreateEnvironmentOutput", "OwnerAccountId"),
         type = "string",
         name = "OwnerAccountId",
         target_id = prelude.String.id,
      }),
      State = schema.new({
         id = id.from(_N, "CreateEnvironmentOutput", "State"),
         type = "string",
         name = "State",
         target_id = prelude.String.id,
      }),
      Tags = schema.new({
         id = id.from(_N, "CreateEnvironmentOutput", "Tags"),
         type = "map",
         name = "Tags",
         target_id = prelude.Document.id,
         map_key = prelude.String,
         map_value = prelude.String,
      }),
      LastUpdatedTime = schema.new({
         id = id.from(_N, "CreateEnvironmentOutput", "LastUpdatedTime"),
         type = "timestamp",
         name = "LastUpdatedTime",
         target_id = prelude.Timestamp.id,
      }),
      CreatedTime = schema.new({
         id = id.from(_N, "CreateEnvironmentOutput", "CreatedTime"),
         type = "timestamp",
         name = "CreatedTime",
         target_id = prelude.Timestamp.id,
      }),
   },
})

M.DefaultRouteInput = schema.new({
   id = id.from(_N, "DefaultRouteInput"),
   type = "structure",
   members = {
      ActivationState = schema.new({
         id = id.from(_N, "DefaultRouteInput", "ActivationState"),
         type = "string",
         name = "ActivationState",
         target_id = prelude.String.id,
      }),
   },
})

M.UriPathRouteInput = schema.new({
   id = id.from(_N, "UriPathRouteInput"),
   type = "structure",
   members = {
      SourcePath = schema.new({
         id = id.from(_N, "UriPathRouteInput", "SourcePath"),
         type = "string",
         name = "SourcePath",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      ActivationState = schema.new({
         id = id.from(_N, "UriPathRouteInput", "ActivationState"),
         type = "string",
         name = "ActivationState",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      Methods = schema.new({
         id = id.from(_N, "UriPathRouteInput", "Methods"),
         type = "list",
         name = "Methods",
         target_id = prelude.Document.id,
         list_member = prelude.String,
      }),
      IncludeChildPaths = schema.new({
         id = id.from(_N, "UriPathRouteInput", "IncludeChildPaths"),
         type = "boolean",
         name = "IncludeChildPaths",
         target_id = prelude.Boolean.id,
      }),
      AppendSourcePath = schema.new({
         id = id.from(_N, "UriPathRouteInput", "AppendSourcePath"),
         type = "boolean",
         name = "AppendSourcePath",
         target_id = prelude.Boolean.id,
      }),
   },
})

M.CreateRouteInput = schema.new({
   id = id.from(_N, "CreateRouteRequest"),
   type = "structure",
   members = {
      EnvironmentIdentifier = schema.new({
         id = id.from(_N, "CreateRouteInput", "EnvironmentIdentifier"),
         type = "string",
         name = "EnvironmentIdentifier",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_LABEL] = {},
         },
      }),
      ApplicationIdentifier = schema.new({
         id = id.from(_N, "CreateRouteInput", "ApplicationIdentifier"),
         type = "string",
         name = "ApplicationIdentifier",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_LABEL] = {},
         },
      }),
      ServiceIdentifier = schema.new({
         id = id.from(_N, "CreateRouteInput", "ServiceIdentifier"),
         type = "string",
         name = "ServiceIdentifier",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      RouteType = schema.new({
         id = id.from(_N, "CreateRouteInput", "RouteType"),
         type = "string",
         name = "RouteType",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      DefaultRoute = schema.new({
         id = id.from(_N, "CreateRouteInput", "DefaultRoute"),
         type = "structure",
         name = "DefaultRoute",
         target_id = id.from(_N, "DefaultRouteInput"),
         target = M.DefaultRouteInput,
      }),
      UriPathRoute = schema.new({
         id = id.from(_N, "CreateRouteInput", "UriPathRoute"),
         type = "structure",
         name = "UriPathRoute",
         target_id = id.from(_N, "UriPathRouteInput"),
         target = M.UriPathRouteInput,
      }),
      Tags = schema.new({
         id = id.from(_N, "CreateRouteInput", "Tags"),
         type = "map",
         name = "Tags",
         target_id = prelude.Document.id,
         map_key = prelude.String,
         map_value = prelude.String,
      }),
      ClientToken = schema.new({
         id = id.from(_N, "CreateRouteInput", "ClientToken"),
         type = "string",
         name = "ClientToken",
         target_id = prelude.String.id,
         traits = {
            [traits.IDEMPOTENCY_TOKEN] = {},
         },
      }),
   },
})

M.CreateRouteOutput = schema.new({
   id = id.from(_N, "CreateRouteResponse"),
   type = "structure",
   members = {
      RouteId = schema.new({
         id = id.from(_N, "CreateRouteOutput", "RouteId"),
         type = "string",
         name = "RouteId",
         target_id = prelude.String.id,
      }),
      Arn = schema.new({
         id = id.from(_N, "CreateRouteOutput", "Arn"),
         type = "string",
         name = "Arn",
         target_id = prelude.String.id,
      }),
      OwnerAccountId = schema.new({
         id = id.from(_N, "CreateRouteOutput", "OwnerAccountId"),
         type = "string",
         name = "OwnerAccountId",
         target_id = prelude.String.id,
      }),
      CreatedByAccountId = schema.new({
         id = id.from(_N, "CreateRouteOutput", "CreatedByAccountId"),
         type = "string",
         name = "CreatedByAccountId",
         target_id = prelude.String.id,
      }),
      RouteType = schema.new({
         id = id.from(_N, "CreateRouteOutput", "RouteType"),
         type = "string",
         name = "RouteType",
         target_id = prelude.String.id,
      }),
      ServiceId = schema.new({
         id = id.from(_N, "CreateRouteOutput", "ServiceId"),
         type = "string",
         name = "ServiceId",
         target_id = prelude.String.id,
      }),
      ApplicationId = schema.new({
         id = id.from(_N, "CreateRouteOutput", "ApplicationId"),
         type = "string",
         name = "ApplicationId",
         target_id = prelude.String.id,
      }),
      UriPathRoute = schema.new({
         id = id.from(_N, "CreateRouteOutput", "UriPathRoute"),
         type = "structure",
         name = "UriPathRoute",
         target_id = id.from(_N, "UriPathRouteInput"),
         target = M.UriPathRouteInput,
      }),
      State = schema.new({
         id = id.from(_N, "CreateRouteOutput", "State"),
         type = "string",
         name = "State",
         target_id = prelude.String.id,
      }),
      Tags = schema.new({
         id = id.from(_N, "CreateRouteOutput", "Tags"),
         type = "map",
         name = "Tags",
         target_id = prelude.Document.id,
         map_key = prelude.String,
         map_value = prelude.String,
      }),
      LastUpdatedTime = schema.new({
         id = id.from(_N, "CreateRouteOutput", "LastUpdatedTime"),
         type = "timestamp",
         name = "LastUpdatedTime",
         target_id = prelude.Timestamp.id,
      }),
      CreatedTime = schema.new({
         id = id.from(_N, "CreateRouteOutput", "CreatedTime"),
         type = "timestamp",
         name = "CreatedTime",
         target_id = prelude.Timestamp.id,
      }),
   },
})

M.LambdaEndpointInput = schema.new({
   id = id.from(_N, "LambdaEndpointInput"),
   type = "structure",
   members = {
      Arn = schema.new({
         id = id.from(_N, "LambdaEndpointInput", "Arn"),
         type = "string",
         name = "Arn",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
   },
})

M.UrlEndpointInput = schema.new({
   id = id.from(_N, "UrlEndpointInput"),
   type = "structure",
   members = {
      Url = schema.new({
         id = id.from(_N, "UrlEndpointInput", "Url"),
         type = "string",
         name = "Url",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      HealthUrl = schema.new({
         id = id.from(_N, "UrlEndpointInput", "HealthUrl"),
         type = "string",
         name = "HealthUrl",
         target_id = prelude.String.id,
      }),
   },
})

M.CreateServiceInput = schema.new({
   id = id.from(_N, "CreateServiceRequest"),
   type = "structure",
   members = {
      Name = schema.new({
         id = id.from(_N, "CreateServiceInput", "Name"),
         type = "string",
         name = "Name",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      Description = schema.new({
         id = id.from(_N, "CreateServiceInput", "Description"),
         type = "string",
         name = "Description",
         target_id = prelude.String.id,
      }),
      EnvironmentIdentifier = schema.new({
         id = id.from(_N, "CreateServiceInput", "EnvironmentIdentifier"),
         type = "string",
         name = "EnvironmentIdentifier",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_LABEL] = {},
         },
      }),
      ApplicationIdentifier = schema.new({
         id = id.from(_N, "CreateServiceInput", "ApplicationIdentifier"),
         type = "string",
         name = "ApplicationIdentifier",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_LABEL] = {},
         },
      }),
      VpcId = schema.new({
         id = id.from(_N, "CreateServiceInput", "VpcId"),
         type = "string",
         name = "VpcId",
         target_id = prelude.String.id,
      }),
      EndpointType = schema.new({
         id = id.from(_N, "CreateServiceInput", "EndpointType"),
         type = "string",
         name = "EndpointType",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      UrlEndpoint = schema.new({
         id = id.from(_N, "CreateServiceInput", "UrlEndpoint"),
         type = "structure",
         name = "UrlEndpoint",
         target_id = id.from(_N, "UrlEndpointInput"),
         target = M.UrlEndpointInput,
      }),
      LambdaEndpoint = schema.new({
         id = id.from(_N, "CreateServiceInput", "LambdaEndpoint"),
         type = "structure",
         name = "LambdaEndpoint",
         target_id = id.from(_N, "LambdaEndpointInput"),
         target = M.LambdaEndpointInput,
      }),
      Tags = schema.new({
         id = id.from(_N, "CreateServiceInput", "Tags"),
         type = "map",
         name = "Tags",
         target_id = prelude.Document.id,
         map_key = prelude.String,
         map_value = prelude.String,
      }),
      ClientToken = schema.new({
         id = id.from(_N, "CreateServiceInput", "ClientToken"),
         type = "string",
         name = "ClientToken",
         target_id = prelude.String.id,
         traits = {
            [traits.IDEMPOTENCY_TOKEN] = {},
         },
      }),
   },
})

M.CreateServiceOutput = schema.new({
   id = id.from(_N, "CreateServiceResponse"),
   type = "structure",
   members = {
      ServiceId = schema.new({
         id = id.from(_N, "CreateServiceOutput", "ServiceId"),
         type = "string",
         name = "ServiceId",
         target_id = prelude.String.id,
      }),
      Name = schema.new({
         id = id.from(_N, "CreateServiceOutput", "Name"),
         type = "string",
         name = "Name",
         target_id = prelude.String.id,
      }),
      Arn = schema.new({
         id = id.from(_N, "CreateServiceOutput", "Arn"),
         type = "string",
         name = "Arn",
         target_id = prelude.String.id,
      }),
      OwnerAccountId = schema.new({
         id = id.from(_N, "CreateServiceOutput", "OwnerAccountId"),
         type = "string",
         name = "OwnerAccountId",
         target_id = prelude.String.id,
      }),
      CreatedByAccountId = schema.new({
         id = id.from(_N, "CreateServiceOutput", "CreatedByAccountId"),
         type = "string",
         name = "CreatedByAccountId",
         target_id = prelude.String.id,
      }),
      Description = schema.new({
         id = id.from(_N, "CreateServiceOutput", "Description"),
         type = "string",
         name = "Description",
         target_id = prelude.String.id,
      }),
      EnvironmentId = schema.new({
         id = id.from(_N, "CreateServiceOutput", "EnvironmentId"),
         type = "string",
         name = "EnvironmentId",
         target_id = prelude.String.id,
      }),
      ApplicationId = schema.new({
         id = id.from(_N, "CreateServiceOutput", "ApplicationId"),
         type = "string",
         name = "ApplicationId",
         target_id = prelude.String.id,
      }),
      VpcId = schema.new({
         id = id.from(_N, "CreateServiceOutput", "VpcId"),
         type = "string",
         name = "VpcId",
         target_id = prelude.String.id,
      }),
      EndpointType = schema.new({
         id = id.from(_N, "CreateServiceOutput", "EndpointType"),
         type = "string",
         name = "EndpointType",
         target_id = prelude.String.id,
      }),
      UrlEndpoint = schema.new({
         id = id.from(_N, "CreateServiceOutput", "UrlEndpoint"),
         type = "structure",
         name = "UrlEndpoint",
         target_id = id.from(_N, "UrlEndpointInput"),
         target = M.UrlEndpointInput,
      }),
      LambdaEndpoint = schema.new({
         id = id.from(_N, "CreateServiceOutput", "LambdaEndpoint"),
         type = "structure",
         name = "LambdaEndpoint",
         target_id = id.from(_N, "LambdaEndpointInput"),
         target = M.LambdaEndpointInput,
      }),
      State = schema.new({
         id = id.from(_N, "CreateServiceOutput", "State"),
         type = "string",
         name = "State",
         target_id = prelude.String.id,
      }),
      Tags = schema.new({
         id = id.from(_N, "CreateServiceOutput", "Tags"),
         type = "map",
         name = "Tags",
         target_id = prelude.Document.id,
         map_key = prelude.String,
         map_value = prelude.String,
      }),
      LastUpdatedTime = schema.new({
         id = id.from(_N, "CreateServiceOutput", "LastUpdatedTime"),
         type = "timestamp",
         name = "LastUpdatedTime",
         target_id = prelude.Timestamp.id,
      }),
      CreatedTime = schema.new({
         id = id.from(_N, "CreateServiceOutput", "CreatedTime"),
         type = "timestamp",
         name = "CreatedTime",
         target_id = prelude.Timestamp.id,
      }),
   },
})

M.DeleteApplicationInput = schema.new({
   id = id.from(_N, "DeleteApplicationRequest"),
   type = "structure",
   members = {
      EnvironmentIdentifier = schema.new({
         id = id.from(_N, "DeleteApplicationInput", "EnvironmentIdentifier"),
         type = "string",
         name = "EnvironmentIdentifier",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_LABEL] = {},
         },
      }),
      ApplicationIdentifier = schema.new({
         id = id.from(_N, "DeleteApplicationInput", "ApplicationIdentifier"),
         type = "string",
         name = "ApplicationIdentifier",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_LABEL] = {},
         },
      }),
   },
})

M.DeleteApplicationOutput = schema.new({
   id = id.from(_N, "DeleteApplicationResponse"),
   type = "structure",
   members = {
      Name = schema.new({
         id = id.from(_N, "DeleteApplicationOutput", "Name"),
         type = "string",
         name = "Name",
         target_id = prelude.String.id,
      }),
      Arn = schema.new({
         id = id.from(_N, "DeleteApplicationOutput", "Arn"),
         type = "string",
         name = "Arn",
         target_id = prelude.String.id,
      }),
      ApplicationId = schema.new({
         id = id.from(_N, "DeleteApplicationOutput", "ApplicationId"),
         type = "string",
         name = "ApplicationId",
         target_id = prelude.String.id,
      }),
      EnvironmentId = schema.new({
         id = id.from(_N, "DeleteApplicationOutput", "EnvironmentId"),
         type = "string",
         name = "EnvironmentId",
         target_id = prelude.String.id,
      }),
      State = schema.new({
         id = id.from(_N, "DeleteApplicationOutput", "State"),
         type = "string",
         name = "State",
         target_id = prelude.String.id,
      }),
      LastUpdatedTime = schema.new({
         id = id.from(_N, "DeleteApplicationOutput", "LastUpdatedTime"),
         type = "timestamp",
         name = "LastUpdatedTime",
         target_id = prelude.Timestamp.id,
      }),
   },
})

M.DeleteEnvironmentInput = schema.new({
   id = id.from(_N, "DeleteEnvironmentRequest"),
   type = "structure",
   members = {
      EnvironmentIdentifier = schema.new({
         id = id.from(_N, "DeleteEnvironmentInput", "EnvironmentIdentifier"),
         type = "string",
         name = "EnvironmentIdentifier",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_LABEL] = {},
         },
      }),
   },
})

M.DeleteEnvironmentOutput = schema.new({
   id = id.from(_N, "DeleteEnvironmentResponse"),
   type = "structure",
   members = {
      Name = schema.new({
         id = id.from(_N, "DeleteEnvironmentOutput", "Name"),
         type = "string",
         name = "Name",
         target_id = prelude.String.id,
      }),
      Arn = schema.new({
         id = id.from(_N, "DeleteEnvironmentOutput", "Arn"),
         type = "string",
         name = "Arn",
         target_id = prelude.String.id,
      }),
      EnvironmentId = schema.new({
         id = id.from(_N, "DeleteEnvironmentOutput", "EnvironmentId"),
         type = "string",
         name = "EnvironmentId",
         target_id = prelude.String.id,
      }),
      State = schema.new({
         id = id.from(_N, "DeleteEnvironmentOutput", "State"),
         type = "string",
         name = "State",
         target_id = prelude.String.id,
      }),
      LastUpdatedTime = schema.new({
         id = id.from(_N, "DeleteEnvironmentOutput", "LastUpdatedTime"),
         type = "timestamp",
         name = "LastUpdatedTime",
         target_id = prelude.Timestamp.id,
      }),
   },
})

M.DeleteResourcePolicyInput = schema.new({
   id = id.from(_N, "DeleteResourcePolicyRequest"),
   type = "structure",
   members = {
      Identifier = schema.new({
         id = id.from(_N, "DeleteResourcePolicyInput", "Identifier"),
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

M.DeleteResourcePolicyOutput = schema.new({
   id = id.from(_N, "DeleteResourcePolicyResponse"),
   type = "structure",
})

M.DeleteRouteInput = schema.new({
   id = id.from(_N, "DeleteRouteRequest"),
   type = "structure",
   members = {
      EnvironmentIdentifier = schema.new({
         id = id.from(_N, "DeleteRouteInput", "EnvironmentIdentifier"),
         type = "string",
         name = "EnvironmentIdentifier",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_LABEL] = {},
         },
      }),
      ApplicationIdentifier = schema.new({
         id = id.from(_N, "DeleteRouteInput", "ApplicationIdentifier"),
         type = "string",
         name = "ApplicationIdentifier",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_LABEL] = {},
         },
      }),
      RouteIdentifier = schema.new({
         id = id.from(_N, "DeleteRouteInput", "RouteIdentifier"),
         type = "string",
         name = "RouteIdentifier",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_LABEL] = {},
         },
      }),
   },
})

M.DeleteRouteOutput = schema.new({
   id = id.from(_N, "DeleteRouteResponse"),
   type = "structure",
   members = {
      RouteId = schema.new({
         id = id.from(_N, "DeleteRouteOutput", "RouteId"),
         type = "string",
         name = "RouteId",
         target_id = prelude.String.id,
      }),
      Arn = schema.new({
         id = id.from(_N, "DeleteRouteOutput", "Arn"),
         type = "string",
         name = "Arn",
         target_id = prelude.String.id,
      }),
      ServiceId = schema.new({
         id = id.from(_N, "DeleteRouteOutput", "ServiceId"),
         type = "string",
         name = "ServiceId",
         target_id = prelude.String.id,
      }),
      ApplicationId = schema.new({
         id = id.from(_N, "DeleteRouteOutput", "ApplicationId"),
         type = "string",
         name = "ApplicationId",
         target_id = prelude.String.id,
      }),
      State = schema.new({
         id = id.from(_N, "DeleteRouteOutput", "State"),
         type = "string",
         name = "State",
         target_id = prelude.String.id,
      }),
      LastUpdatedTime = schema.new({
         id = id.from(_N, "DeleteRouteOutput", "LastUpdatedTime"),
         type = "timestamp",
         name = "LastUpdatedTime",
         target_id = prelude.Timestamp.id,
      }),
   },
})

M.DeleteServiceInput = schema.new({
   id = id.from(_N, "DeleteServiceRequest"),
   type = "structure",
   members = {
      EnvironmentIdentifier = schema.new({
         id = id.from(_N, "DeleteServiceInput", "EnvironmentIdentifier"),
         type = "string",
         name = "EnvironmentIdentifier",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_LABEL] = {},
         },
      }),
      ApplicationIdentifier = schema.new({
         id = id.from(_N, "DeleteServiceInput", "ApplicationIdentifier"),
         type = "string",
         name = "ApplicationIdentifier",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_LABEL] = {},
         },
      }),
      ServiceIdentifier = schema.new({
         id = id.from(_N, "DeleteServiceInput", "ServiceIdentifier"),
         type = "string",
         name = "ServiceIdentifier",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_LABEL] = {},
         },
      }),
   },
})

M.DeleteServiceOutput = schema.new({
   id = id.from(_N, "DeleteServiceResponse"),
   type = "structure",
   members = {
      ServiceId = schema.new({
         id = id.from(_N, "DeleteServiceOutput", "ServiceId"),
         type = "string",
         name = "ServiceId",
         target_id = prelude.String.id,
      }),
      Name = schema.new({
         id = id.from(_N, "DeleteServiceOutput", "Name"),
         type = "string",
         name = "Name",
         target_id = prelude.String.id,
      }),
      Arn = schema.new({
         id = id.from(_N, "DeleteServiceOutput", "Arn"),
         type = "string",
         name = "Arn",
         target_id = prelude.String.id,
      }),
      EnvironmentId = schema.new({
         id = id.from(_N, "DeleteServiceOutput", "EnvironmentId"),
         type = "string",
         name = "EnvironmentId",
         target_id = prelude.String.id,
      }),
      ApplicationId = schema.new({
         id = id.from(_N, "DeleteServiceOutput", "ApplicationId"),
         type = "string",
         name = "ApplicationId",
         target_id = prelude.String.id,
      }),
      State = schema.new({
         id = id.from(_N, "DeleteServiceOutput", "State"),
         type = "string",
         name = "State",
         target_id = prelude.String.id,
      }),
      LastUpdatedTime = schema.new({
         id = id.from(_N, "DeleteServiceOutput", "LastUpdatedTime"),
         type = "timestamp",
         name = "LastUpdatedTime",
         target_id = prelude.Timestamp.id,
      }),
   },
})

M.EnvironmentSummary = schema.new({
   id = id.from(_N, "EnvironmentSummary"),
   type = "structure",
   members = {
      Name = schema.new({
         id = id.from(_N, "EnvironmentSummary", "Name"),
         type = "string",
         name = "Name",
         target_id = prelude.String.id,
      }),
      Arn = schema.new({
         id = id.from(_N, "EnvironmentSummary", "Arn"),
         type = "string",
         name = "Arn",
         target_id = prelude.String.id,
      }),
      Description = schema.new({
         id = id.from(_N, "EnvironmentSummary", "Description"),
         type = "string",
         name = "Description",
         target_id = prelude.String.id,
      }),
      EnvironmentId = schema.new({
         id = id.from(_N, "EnvironmentSummary", "EnvironmentId"),
         type = "string",
         name = "EnvironmentId",
         target_id = prelude.String.id,
      }),
      NetworkFabricType = schema.new({
         id = id.from(_N, "EnvironmentSummary", "NetworkFabricType"),
         type = "string",
         name = "NetworkFabricType",
         target_id = prelude.String.id,
      }),
      OwnerAccountId = schema.new({
         id = id.from(_N, "EnvironmentSummary", "OwnerAccountId"),
         type = "string",
         name = "OwnerAccountId",
         target_id = prelude.String.id,
      }),
      TransitGatewayId = schema.new({
         id = id.from(_N, "EnvironmentSummary", "TransitGatewayId"),
         type = "string",
         name = "TransitGatewayId",
         target_id = prelude.String.id,
      }),
      State = schema.new({
         id = id.from(_N, "EnvironmentSummary", "State"),
         type = "string",
         name = "State",
         target_id = prelude.String.id,
      }),
      Tags = schema.new({
         id = id.from(_N, "EnvironmentSummary", "Tags"),
         type = "map",
         name = "Tags",
         target_id = prelude.Document.id,
         map_key = prelude.String,
         map_value = prelude.String,
      }),
      Error = schema.new({
         id = id.from(_N, "EnvironmentSummary", "Error"),
         type = "structure",
         name = "Error",
         target_id = id.from(_N, "ErrorResponse"),
         target = M.ErrorResponse,
      }),
      LastUpdatedTime = schema.new({
         id = id.from(_N, "EnvironmentSummary", "LastUpdatedTime"),
         type = "timestamp",
         name = "LastUpdatedTime",
         target_id = prelude.Timestamp.id,
      }),
      CreatedTime = schema.new({
         id = id.from(_N, "EnvironmentSummary", "CreatedTime"),
         type = "timestamp",
         name = "CreatedTime",
         target_id = prelude.Timestamp.id,
      }),
   },
})

M.EnvironmentVpc = schema.new({
   id = id.from(_N, "EnvironmentVpc"),
   type = "structure",
   members = {
      EnvironmentId = schema.new({
         id = id.from(_N, "EnvironmentVpc", "EnvironmentId"),
         type = "string",
         name = "EnvironmentId",
         target_id = prelude.String.id,
      }),
      VpcId = schema.new({
         id = id.from(_N, "EnvironmentVpc", "VpcId"),
         type = "string",
         name = "VpcId",
         target_id = prelude.String.id,
      }),
      AccountId = schema.new({
         id = id.from(_N, "EnvironmentVpc", "AccountId"),
         type = "string",
         name = "AccountId",
         target_id = prelude.String.id,
      }),
      CidrBlocks = schema.new({
         id = id.from(_N, "EnvironmentVpc", "CidrBlocks"),
         type = "list",
         name = "CidrBlocks",
         target_id = prelude.Document.id,
         list_member = prelude.String,
      }),
      VpcName = schema.new({
         id = id.from(_N, "EnvironmentVpc", "VpcName"),
         type = "string",
         name = "VpcName",
         target_id = prelude.String.id,
      }),
      LastUpdatedTime = schema.new({
         id = id.from(_N, "EnvironmentVpc", "LastUpdatedTime"),
         type = "timestamp",
         name = "LastUpdatedTime",
         target_id = prelude.Timestamp.id,
      }),
      CreatedTime = schema.new({
         id = id.from(_N, "EnvironmentVpc", "CreatedTime"),
         type = "timestamp",
         name = "CreatedTime",
         target_id = prelude.Timestamp.id,
      }),
   },
})

M.GetApplicationInput = schema.new({
   id = id.from(_N, "GetApplicationRequest"),
   type = "structure",
   members = {
      EnvironmentIdentifier = schema.new({
         id = id.from(_N, "GetApplicationInput", "EnvironmentIdentifier"),
         type = "string",
         name = "EnvironmentIdentifier",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_LABEL] = {},
         },
      }),
      ApplicationIdentifier = schema.new({
         id = id.from(_N, "GetApplicationInput", "ApplicationIdentifier"),
         type = "string",
         name = "ApplicationIdentifier",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_LABEL] = {},
         },
      }),
   },
})

M.GetApplicationOutput = schema.new({
   id = id.from(_N, "GetApplicationResponse"),
   type = "structure",
   members = {
      Name = schema.new({
         id = id.from(_N, "GetApplicationOutput", "Name"),
         type = "string",
         name = "Name",
         target_id = prelude.String.id,
      }),
      Arn = schema.new({
         id = id.from(_N, "GetApplicationOutput", "Arn"),
         type = "string",
         name = "Arn",
         target_id = prelude.String.id,
      }),
      OwnerAccountId = schema.new({
         id = id.from(_N, "GetApplicationOutput", "OwnerAccountId"),
         type = "string",
         name = "OwnerAccountId",
         target_id = prelude.String.id,
      }),
      CreatedByAccountId = schema.new({
         id = id.from(_N, "GetApplicationOutput", "CreatedByAccountId"),
         type = "string",
         name = "CreatedByAccountId",
         target_id = prelude.String.id,
      }),
      ApplicationId = schema.new({
         id = id.from(_N, "GetApplicationOutput", "ApplicationId"),
         type = "string",
         name = "ApplicationId",
         target_id = prelude.String.id,
      }),
      EnvironmentId = schema.new({
         id = id.from(_N, "GetApplicationOutput", "EnvironmentId"),
         type = "string",
         name = "EnvironmentId",
         target_id = prelude.String.id,
      }),
      VpcId = schema.new({
         id = id.from(_N, "GetApplicationOutput", "VpcId"),
         type = "string",
         name = "VpcId",
         target_id = prelude.String.id,
      }),
      ProxyType = schema.new({
         id = id.from(_N, "GetApplicationOutput", "ProxyType"),
         type = "string",
         name = "ProxyType",
         target_id = prelude.String.id,
      }),
      ApiGatewayProxy = schema.new({
         id = id.from(_N, "GetApplicationOutput", "ApiGatewayProxy"),
         type = "structure",
         name = "ApiGatewayProxy",
         target_id = id.from(_N, "ApiGatewayProxyConfig"),
         target = M.ApiGatewayProxyConfig,
      }),
      State = schema.new({
         id = id.from(_N, "GetApplicationOutput", "State"),
         type = "string",
         name = "State",
         target_id = prelude.String.id,
      }),
      Tags = schema.new({
         id = id.from(_N, "GetApplicationOutput", "Tags"),
         type = "map",
         name = "Tags",
         target_id = prelude.Document.id,
         map_key = prelude.String,
         map_value = prelude.String,
      }),
      Error = schema.new({
         id = id.from(_N, "GetApplicationOutput", "Error"),
         type = "structure",
         name = "Error",
         target_id = id.from(_N, "ErrorResponse"),
         target = M.ErrorResponse,
      }),
      LastUpdatedTime = schema.new({
         id = id.from(_N, "GetApplicationOutput", "LastUpdatedTime"),
         type = "timestamp",
         name = "LastUpdatedTime",
         target_id = prelude.Timestamp.id,
      }),
      CreatedTime = schema.new({
         id = id.from(_N, "GetApplicationOutput", "CreatedTime"),
         type = "timestamp",
         name = "CreatedTime",
         target_id = prelude.Timestamp.id,
      }),
   },
})

M.GetEnvironmentInput = schema.new({
   id = id.from(_N, "GetEnvironmentRequest"),
   type = "structure",
   members = {
      EnvironmentIdentifier = schema.new({
         id = id.from(_N, "GetEnvironmentInput", "EnvironmentIdentifier"),
         type = "string",
         name = "EnvironmentIdentifier",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_LABEL] = {},
         },
      }),
   },
})

M.GetEnvironmentOutput = schema.new({
   id = id.from(_N, "GetEnvironmentResponse"),
   type = "structure",
   members = {
      Name = schema.new({
         id = id.from(_N, "GetEnvironmentOutput", "Name"),
         type = "string",
         name = "Name",
         target_id = prelude.String.id,
      }),
      Arn = schema.new({
         id = id.from(_N, "GetEnvironmentOutput", "Arn"),
         type = "string",
         name = "Arn",
         target_id = prelude.String.id,
      }),
      Description = schema.new({
         id = id.from(_N, "GetEnvironmentOutput", "Description"),
         type = "string",
         name = "Description",
         target_id = prelude.String.id,
      }),
      EnvironmentId = schema.new({
         id = id.from(_N, "GetEnvironmentOutput", "EnvironmentId"),
         type = "string",
         name = "EnvironmentId",
         target_id = prelude.String.id,
      }),
      NetworkFabricType = schema.new({
         id = id.from(_N, "GetEnvironmentOutput", "NetworkFabricType"),
         type = "string",
         name = "NetworkFabricType",
         target_id = prelude.String.id,
      }),
      OwnerAccountId = schema.new({
         id = id.from(_N, "GetEnvironmentOutput", "OwnerAccountId"),
         type = "string",
         name = "OwnerAccountId",
         target_id = prelude.String.id,
      }),
      TransitGatewayId = schema.new({
         id = id.from(_N, "GetEnvironmentOutput", "TransitGatewayId"),
         type = "string",
         name = "TransitGatewayId",
         target_id = prelude.String.id,
      }),
      State = schema.new({
         id = id.from(_N, "GetEnvironmentOutput", "State"),
         type = "string",
         name = "State",
         target_id = prelude.String.id,
      }),
      Tags = schema.new({
         id = id.from(_N, "GetEnvironmentOutput", "Tags"),
         type = "map",
         name = "Tags",
         target_id = prelude.Document.id,
         map_key = prelude.String,
         map_value = prelude.String,
      }),
      Error = schema.new({
         id = id.from(_N, "GetEnvironmentOutput", "Error"),
         type = "structure",
         name = "Error",
         target_id = id.from(_N, "ErrorResponse"),
         target = M.ErrorResponse,
      }),
      LastUpdatedTime = schema.new({
         id = id.from(_N, "GetEnvironmentOutput", "LastUpdatedTime"),
         type = "timestamp",
         name = "LastUpdatedTime",
         target_id = prelude.Timestamp.id,
      }),
      CreatedTime = schema.new({
         id = id.from(_N, "GetEnvironmentOutput", "CreatedTime"),
         type = "timestamp",
         name = "CreatedTime",
         target_id = prelude.Timestamp.id,
      }),
   },
})

M.GetResourcePolicyInput = schema.new({
   id = id.from(_N, "GetResourcePolicyRequest"),
   type = "structure",
   members = {
      Identifier = schema.new({
         id = id.from(_N, "GetResourcePolicyInput", "Identifier"),
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

M.GetResourcePolicyOutput = schema.new({
   id = id.from(_N, "GetResourcePolicyResponse"),
   type = "structure",
   members = {
      Policy = schema.new({
         id = id.from(_N, "GetResourcePolicyOutput", "Policy"),
         type = "string",
         name = "Policy",
         target_id = prelude.String.id,
      }),
   },
})

M.GetRouteInput = schema.new({
   id = id.from(_N, "GetRouteRequest"),
   type = "structure",
   members = {
      EnvironmentIdentifier = schema.new({
         id = id.from(_N, "GetRouteInput", "EnvironmentIdentifier"),
         type = "string",
         name = "EnvironmentIdentifier",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_LABEL] = {},
         },
      }),
      ApplicationIdentifier = schema.new({
         id = id.from(_N, "GetRouteInput", "ApplicationIdentifier"),
         type = "string",
         name = "ApplicationIdentifier",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_LABEL] = {},
         },
      }),
      RouteIdentifier = schema.new({
         id = id.from(_N, "GetRouteInput", "RouteIdentifier"),
         type = "string",
         name = "RouteIdentifier",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_LABEL] = {},
         },
      }),
   },
})

M.GetRouteOutput = schema.new({
   id = id.from(_N, "GetRouteResponse"),
   type = "structure",
   members = {
      RouteId = schema.new({
         id = id.from(_N, "GetRouteOutput", "RouteId"),
         type = "string",
         name = "RouteId",
         target_id = prelude.String.id,
      }),
      Arn = schema.new({
         id = id.from(_N, "GetRouteOutput", "Arn"),
         type = "string",
         name = "Arn",
         target_id = prelude.String.id,
      }),
      OwnerAccountId = schema.new({
         id = id.from(_N, "GetRouteOutput", "OwnerAccountId"),
         type = "string",
         name = "OwnerAccountId",
         target_id = prelude.String.id,
      }),
      CreatedByAccountId = schema.new({
         id = id.from(_N, "GetRouteOutput", "CreatedByAccountId"),
         type = "string",
         name = "CreatedByAccountId",
         target_id = prelude.String.id,
      }),
      RouteType = schema.new({
         id = id.from(_N, "GetRouteOutput", "RouteType"),
         type = "string",
         name = "RouteType",
         target_id = prelude.String.id,
      }),
      ServiceId = schema.new({
         id = id.from(_N, "GetRouteOutput", "ServiceId"),
         type = "string",
         name = "ServiceId",
         target_id = prelude.String.id,
      }),
      ApplicationId = schema.new({
         id = id.from(_N, "GetRouteOutput", "ApplicationId"),
         type = "string",
         name = "ApplicationId",
         target_id = prelude.String.id,
      }),
      EnvironmentId = schema.new({
         id = id.from(_N, "GetRouteOutput", "EnvironmentId"),
         type = "string",
         name = "EnvironmentId",
         target_id = prelude.String.id,
      }),
      SourcePath = schema.new({
         id = id.from(_N, "GetRouteOutput", "SourcePath"),
         type = "string",
         name = "SourcePath",
         target_id = prelude.String.id,
      }),
      Methods = schema.new({
         id = id.from(_N, "GetRouteOutput", "Methods"),
         type = "list",
         name = "Methods",
         target_id = prelude.Document.id,
         list_member = prelude.String,
      }),
      IncludeChildPaths = schema.new({
         id = id.from(_N, "GetRouteOutput", "IncludeChildPaths"),
         type = "boolean",
         name = "IncludeChildPaths",
         target_id = prelude.Boolean.id,
      }),
      PathResourceToId = schema.new({
         id = id.from(_N, "GetRouteOutput", "PathResourceToId"),
         type = "map",
         name = "PathResourceToId",
         target_id = prelude.Document.id,
         map_key = prelude.String,
         map_value = prelude.String,
      }),
      State = schema.new({
         id = id.from(_N, "GetRouteOutput", "State"),
         type = "string",
         name = "State",
         target_id = prelude.String.id,
      }),
      Tags = schema.new({
         id = id.from(_N, "GetRouteOutput", "Tags"),
         type = "map",
         name = "Tags",
         target_id = prelude.Document.id,
         map_key = prelude.String,
         map_value = prelude.String,
      }),
      Error = schema.new({
         id = id.from(_N, "GetRouteOutput", "Error"),
         type = "structure",
         name = "Error",
         target_id = id.from(_N, "ErrorResponse"),
         target = M.ErrorResponse,
      }),
      LastUpdatedTime = schema.new({
         id = id.from(_N, "GetRouteOutput", "LastUpdatedTime"),
         type = "timestamp",
         name = "LastUpdatedTime",
         target_id = prelude.Timestamp.id,
      }),
      CreatedTime = schema.new({
         id = id.from(_N, "GetRouteOutput", "CreatedTime"),
         type = "timestamp",
         name = "CreatedTime",
         target_id = prelude.Timestamp.id,
      }),
      AppendSourcePath = schema.new({
         id = id.from(_N, "GetRouteOutput", "AppendSourcePath"),
         type = "boolean",
         name = "AppendSourcePath",
         target_id = prelude.Boolean.id,
      }),
   },
})

M.GetServiceInput = schema.new({
   id = id.from(_N, "GetServiceRequest"),
   type = "structure",
   members = {
      EnvironmentIdentifier = schema.new({
         id = id.from(_N, "GetServiceInput", "EnvironmentIdentifier"),
         type = "string",
         name = "EnvironmentIdentifier",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_LABEL] = {},
         },
      }),
      ApplicationIdentifier = schema.new({
         id = id.from(_N, "GetServiceInput", "ApplicationIdentifier"),
         type = "string",
         name = "ApplicationIdentifier",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_LABEL] = {},
         },
      }),
      ServiceIdentifier = schema.new({
         id = id.from(_N, "GetServiceInput", "ServiceIdentifier"),
         type = "string",
         name = "ServiceIdentifier",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_LABEL] = {},
         },
      }),
   },
})

M.LambdaEndpointConfig = schema.new({
   id = id.from(_N, "LambdaEndpointConfig"),
   type = "structure",
   members = {
      Arn = schema.new({
         id = id.from(_N, "LambdaEndpointConfig", "Arn"),
         type = "string",
         name = "Arn",
         target_id = prelude.String.id,
      }),
   },
})

M.UrlEndpointConfig = schema.new({
   id = id.from(_N, "UrlEndpointConfig"),
   type = "structure",
   members = {
      Url = schema.new({
         id = id.from(_N, "UrlEndpointConfig", "Url"),
         type = "string",
         name = "Url",
         target_id = prelude.String.id,
      }),
      HealthUrl = schema.new({
         id = id.from(_N, "UrlEndpointConfig", "HealthUrl"),
         type = "string",
         name = "HealthUrl",
         target_id = prelude.String.id,
      }),
   },
})

M.GetServiceOutput = schema.new({
   id = id.from(_N, "GetServiceResponse"),
   type = "structure",
   members = {
      ServiceId = schema.new({
         id = id.from(_N, "GetServiceOutput", "ServiceId"),
         type = "string",
         name = "ServiceId",
         target_id = prelude.String.id,
      }),
      Name = schema.new({
         id = id.from(_N, "GetServiceOutput", "Name"),
         type = "string",
         name = "Name",
         target_id = prelude.String.id,
      }),
      Arn = schema.new({
         id = id.from(_N, "GetServiceOutput", "Arn"),
         type = "string",
         name = "Arn",
         target_id = prelude.String.id,
      }),
      OwnerAccountId = schema.new({
         id = id.from(_N, "GetServiceOutput", "OwnerAccountId"),
         type = "string",
         name = "OwnerAccountId",
         target_id = prelude.String.id,
      }),
      CreatedByAccountId = schema.new({
         id = id.from(_N, "GetServiceOutput", "CreatedByAccountId"),
         type = "string",
         name = "CreatedByAccountId",
         target_id = prelude.String.id,
      }),
      Description = schema.new({
         id = id.from(_N, "GetServiceOutput", "Description"),
         type = "string",
         name = "Description",
         target_id = prelude.String.id,
      }),
      EnvironmentId = schema.new({
         id = id.from(_N, "GetServiceOutput", "EnvironmentId"),
         type = "string",
         name = "EnvironmentId",
         target_id = prelude.String.id,
      }),
      ApplicationId = schema.new({
         id = id.from(_N, "GetServiceOutput", "ApplicationId"),
         type = "string",
         name = "ApplicationId",
         target_id = prelude.String.id,
      }),
      VpcId = schema.new({
         id = id.from(_N, "GetServiceOutput", "VpcId"),
         type = "string",
         name = "VpcId",
         target_id = prelude.String.id,
      }),
      EndpointType = schema.new({
         id = id.from(_N, "GetServiceOutput", "EndpointType"),
         type = "string",
         name = "EndpointType",
         target_id = prelude.String.id,
      }),
      UrlEndpoint = schema.new({
         id = id.from(_N, "GetServiceOutput", "UrlEndpoint"),
         type = "structure",
         name = "UrlEndpoint",
         target_id = id.from(_N, "UrlEndpointConfig"),
         target = M.UrlEndpointConfig,
      }),
      LambdaEndpoint = schema.new({
         id = id.from(_N, "GetServiceOutput", "LambdaEndpoint"),
         type = "structure",
         name = "LambdaEndpoint",
         target_id = id.from(_N, "LambdaEndpointConfig"),
         target = M.LambdaEndpointConfig,
      }),
      State = schema.new({
         id = id.from(_N, "GetServiceOutput", "State"),
         type = "string",
         name = "State",
         target_id = prelude.String.id,
      }),
      Tags = schema.new({
         id = id.from(_N, "GetServiceOutput", "Tags"),
         type = "map",
         name = "Tags",
         target_id = prelude.Document.id,
         map_key = prelude.String,
         map_value = prelude.String,
      }),
      Error = schema.new({
         id = id.from(_N, "GetServiceOutput", "Error"),
         type = "structure",
         name = "Error",
         target_id = id.from(_N, "ErrorResponse"),
         target = M.ErrorResponse,
      }),
      LastUpdatedTime = schema.new({
         id = id.from(_N, "GetServiceOutput", "LastUpdatedTime"),
         type = "timestamp",
         name = "LastUpdatedTime",
         target_id = prelude.Timestamp.id,
      }),
      CreatedTime = schema.new({
         id = id.from(_N, "GetServiceOutput", "CreatedTime"),
         type = "timestamp",
         name = "CreatedTime",
         target_id = prelude.Timestamp.id,
      }),
   },
})

M.InvalidResourcePolicyException = schema.new({
   id = id.from(_N, "InvalidResourcePolicyException"),
   type = "structure",
   traits = {
      [traits.ERROR] = { value = "client" },
   },
   members = {
      Message = schema.new({
         id = id.from(_N, "InvalidResourcePolicyException", "Message"),
         type = "string",
         name = "Message",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
   },
})

M.LambdaEndpointSummary = schema.new({
   id = id.from(_N, "LambdaEndpointSummary"),
   type = "structure",
   members = {
      Arn = schema.new({
         id = id.from(_N, "LambdaEndpointSummary", "Arn"),
         type = "string",
         name = "Arn",
         target_id = prelude.String.id,
      }),
   },
})

M.ListApplicationsInput = schema.new({
   id = id.from(_N, "ListApplicationsRequest"),
   type = "structure",
   members = {
      EnvironmentIdentifier = schema.new({
         id = id.from(_N, "ListApplicationsInput", "EnvironmentIdentifier"),
         type = "string",
         name = "EnvironmentIdentifier",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_LABEL] = {},
         },
      }),
      NextToken = schema.new({
         id = id.from(_N, "ListApplicationsInput", "NextToken"),
         type = "string",
         name = "NextToken",
         target_id = prelude.String.id,
         traits = {
            [traits.HTTP_QUERY] = { name = "nextToken" },
         },
      }),
      MaxResults = schema.new({
         id = id.from(_N, "ListApplicationsInput", "MaxResults"),
         type = "integer",
         name = "MaxResults",
         target_id = prelude.Integer.id,
         traits = {
            [traits.HTTP_QUERY] = { name = "maxResults" },
         },
      }),
   },
})

M.ListApplicationsOutput = schema.new({
   id = id.from(_N, "ListApplicationsResponse"),
   type = "structure",
   members = {
      ApplicationSummaryList = schema.new({
         id = id.from(_N, "ListApplicationsOutput", "ApplicationSummaryList"),
         type = "list",
         name = "ApplicationSummaryList",
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

M.ListEnvironmentsInput = schema.new({
   id = id.from(_N, "ListEnvironmentsRequest"),
   type = "structure",
   members = {
      NextToken = schema.new({
         id = id.from(_N, "ListEnvironmentsInput", "NextToken"),
         type = "string",
         name = "NextToken",
         target_id = prelude.String.id,
         traits = {
            [traits.HTTP_QUERY] = { name = "nextToken" },
         },
      }),
      MaxResults = schema.new({
         id = id.from(_N, "ListEnvironmentsInput", "MaxResults"),
         type = "integer",
         name = "MaxResults",
         target_id = prelude.Integer.id,
         traits = {
            [traits.HTTP_QUERY] = { name = "maxResults" },
         },
      }),
   },
})

M.ListEnvironmentsOutput = schema.new({
   id = id.from(_N, "ListEnvironmentsResponse"),
   type = "structure",
   members = {
      EnvironmentSummaryList = schema.new({
         id = id.from(_N, "ListEnvironmentsOutput", "EnvironmentSummaryList"),
         type = "list",
         name = "EnvironmentSummaryList",
         target_id = prelude.Document.id,
         list_member = M.EnvironmentSummary,
      }),
      NextToken = schema.new({
         id = id.from(_N, "ListEnvironmentsOutput", "NextToken"),
         type = "string",
         name = "NextToken",
         target_id = prelude.String.id,
      }),
   },
})

M.ListEnvironmentVpcsInput = schema.new({
   id = id.from(_N, "ListEnvironmentVpcsRequest"),
   type = "structure",
   members = {
      EnvironmentIdentifier = schema.new({
         id = id.from(_N, "ListEnvironmentVpcsInput", "EnvironmentIdentifier"),
         type = "string",
         name = "EnvironmentIdentifier",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_LABEL] = {},
         },
      }),
      NextToken = schema.new({
         id = id.from(_N, "ListEnvironmentVpcsInput", "NextToken"),
         type = "string",
         name = "NextToken",
         target_id = prelude.String.id,
         traits = {
            [traits.HTTP_QUERY] = { name = "nextToken" },
         },
      }),
      MaxResults = schema.new({
         id = id.from(_N, "ListEnvironmentVpcsInput", "MaxResults"),
         type = "integer",
         name = "MaxResults",
         target_id = prelude.Integer.id,
         traits = {
            [traits.HTTP_QUERY] = { name = "maxResults" },
         },
      }),
   },
})

M.ListEnvironmentVpcsOutput = schema.new({
   id = id.from(_N, "ListEnvironmentVpcsResponse"),
   type = "structure",
   members = {
      EnvironmentVpcList = schema.new({
         id = id.from(_N, "ListEnvironmentVpcsOutput", "EnvironmentVpcList"),
         type = "list",
         name = "EnvironmentVpcList",
         target_id = prelude.Document.id,
         list_member = M.EnvironmentVpc,
      }),
      NextToken = schema.new({
         id = id.from(_N, "ListEnvironmentVpcsOutput", "NextToken"),
         type = "string",
         name = "NextToken",
         target_id = prelude.String.id,
      }),
   },
})

M.ListRoutesInput = schema.new({
   id = id.from(_N, "ListRoutesRequest"),
   type = "structure",
   members = {
      EnvironmentIdentifier = schema.new({
         id = id.from(_N, "ListRoutesInput", "EnvironmentIdentifier"),
         type = "string",
         name = "EnvironmentIdentifier",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_LABEL] = {},
         },
      }),
      ApplicationIdentifier = schema.new({
         id = id.from(_N, "ListRoutesInput", "ApplicationIdentifier"),
         type = "string",
         name = "ApplicationIdentifier",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_LABEL] = {},
         },
      }),
      NextToken = schema.new({
         id = id.from(_N, "ListRoutesInput", "NextToken"),
         type = "string",
         name = "NextToken",
         target_id = prelude.String.id,
         traits = {
            [traits.HTTP_QUERY] = { name = "nextToken" },
         },
      }),
      MaxResults = schema.new({
         id = id.from(_N, "ListRoutesInput", "MaxResults"),
         type = "integer",
         name = "MaxResults",
         target_id = prelude.Integer.id,
         traits = {
            [traits.HTTP_QUERY] = { name = "maxResults" },
         },
      }),
   },
})

M.RouteSummary = schema.new({
   id = id.from(_N, "RouteSummary"),
   type = "structure",
   members = {
      RouteId = schema.new({
         id = id.from(_N, "RouteSummary", "RouteId"),
         type = "string",
         name = "RouteId",
         target_id = prelude.String.id,
      }),
      Arn = schema.new({
         id = id.from(_N, "RouteSummary", "Arn"),
         type = "string",
         name = "Arn",
         target_id = prelude.String.id,
      }),
      OwnerAccountId = schema.new({
         id = id.from(_N, "RouteSummary", "OwnerAccountId"),
         type = "string",
         name = "OwnerAccountId",
         target_id = prelude.String.id,
      }),
      CreatedByAccountId = schema.new({
         id = id.from(_N, "RouteSummary", "CreatedByAccountId"),
         type = "string",
         name = "CreatedByAccountId",
         target_id = prelude.String.id,
      }),
      RouteType = schema.new({
         id = id.from(_N, "RouteSummary", "RouteType"),
         type = "string",
         name = "RouteType",
         target_id = prelude.String.id,
      }),
      ServiceId = schema.new({
         id = id.from(_N, "RouteSummary", "ServiceId"),
         type = "string",
         name = "ServiceId",
         target_id = prelude.String.id,
      }),
      ApplicationId = schema.new({
         id = id.from(_N, "RouteSummary", "ApplicationId"),
         type = "string",
         name = "ApplicationId",
         target_id = prelude.String.id,
      }),
      EnvironmentId = schema.new({
         id = id.from(_N, "RouteSummary", "EnvironmentId"),
         type = "string",
         name = "EnvironmentId",
         target_id = prelude.String.id,
      }),
      SourcePath = schema.new({
         id = id.from(_N, "RouteSummary", "SourcePath"),
         type = "string",
         name = "SourcePath",
         target_id = prelude.String.id,
      }),
      Methods = schema.new({
         id = id.from(_N, "RouteSummary", "Methods"),
         type = "list",
         name = "Methods",
         target_id = prelude.Document.id,
         list_member = prelude.String,
      }),
      IncludeChildPaths = schema.new({
         id = id.from(_N, "RouteSummary", "IncludeChildPaths"),
         type = "boolean",
         name = "IncludeChildPaths",
         target_id = prelude.Boolean.id,
      }),
      PathResourceToId = schema.new({
         id = id.from(_N, "RouteSummary", "PathResourceToId"),
         type = "map",
         name = "PathResourceToId",
         target_id = prelude.Document.id,
         map_key = prelude.String,
         map_value = prelude.String,
      }),
      State = schema.new({
         id = id.from(_N, "RouteSummary", "State"),
         type = "string",
         name = "State",
         target_id = prelude.String.id,
      }),
      Tags = schema.new({
         id = id.from(_N, "RouteSummary", "Tags"),
         type = "map",
         name = "Tags",
         target_id = prelude.Document.id,
         map_key = prelude.String,
         map_value = prelude.String,
      }),
      Error = schema.new({
         id = id.from(_N, "RouteSummary", "Error"),
         type = "structure",
         name = "Error",
         target_id = id.from(_N, "ErrorResponse"),
         target = M.ErrorResponse,
      }),
      LastUpdatedTime = schema.new({
         id = id.from(_N, "RouteSummary", "LastUpdatedTime"),
         type = "timestamp",
         name = "LastUpdatedTime",
         target_id = prelude.Timestamp.id,
      }),
      CreatedTime = schema.new({
         id = id.from(_N, "RouteSummary", "CreatedTime"),
         type = "timestamp",
         name = "CreatedTime",
         target_id = prelude.Timestamp.id,
      }),
      AppendSourcePath = schema.new({
         id = id.from(_N, "RouteSummary", "AppendSourcePath"),
         type = "boolean",
         name = "AppendSourcePath",
         target_id = prelude.Boolean.id,
      }),
   },
})

M.ListRoutesOutput = schema.new({
   id = id.from(_N, "ListRoutesResponse"),
   type = "structure",
   members = {
      RouteSummaryList = schema.new({
         id = id.from(_N, "ListRoutesOutput", "RouteSummaryList"),
         type = "list",
         name = "RouteSummaryList",
         target_id = prelude.Document.id,
         list_member = M.RouteSummary,
      }),
      NextToken = schema.new({
         id = id.from(_N, "ListRoutesOutput", "NextToken"),
         type = "string",
         name = "NextToken",
         target_id = prelude.String.id,
      }),
   },
})

M.ListServicesInput = schema.new({
   id = id.from(_N, "ListServicesRequest"),
   type = "structure",
   members = {
      EnvironmentIdentifier = schema.new({
         id = id.from(_N, "ListServicesInput", "EnvironmentIdentifier"),
         type = "string",
         name = "EnvironmentIdentifier",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_LABEL] = {},
         },
      }),
      ApplicationIdentifier = schema.new({
         id = id.from(_N, "ListServicesInput", "ApplicationIdentifier"),
         type = "string",
         name = "ApplicationIdentifier",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_LABEL] = {},
         },
      }),
      NextToken = schema.new({
         id = id.from(_N, "ListServicesInput", "NextToken"),
         type = "string",
         name = "NextToken",
         target_id = prelude.String.id,
         traits = {
            [traits.HTTP_QUERY] = { name = "nextToken" },
         },
      }),
      MaxResults = schema.new({
         id = id.from(_N, "ListServicesInput", "MaxResults"),
         type = "integer",
         name = "MaxResults",
         target_id = prelude.Integer.id,
         traits = {
            [traits.HTTP_QUERY] = { name = "maxResults" },
         },
      }),
   },
})

M.UrlEndpointSummary = schema.new({
   id = id.from(_N, "UrlEndpointSummary"),
   type = "structure",
   members = {
      Url = schema.new({
         id = id.from(_N, "UrlEndpointSummary", "Url"),
         type = "string",
         name = "Url",
         target_id = prelude.String.id,
      }),
      HealthUrl = schema.new({
         id = id.from(_N, "UrlEndpointSummary", "HealthUrl"),
         type = "string",
         name = "HealthUrl",
         target_id = prelude.String.id,
      }),
   },
})

M.ServiceSummary = schema.new({
   id = id.from(_N, "ServiceSummary"),
   type = "structure",
   members = {
      ServiceId = schema.new({
         id = id.from(_N, "ServiceSummary", "ServiceId"),
         type = "string",
         name = "ServiceId",
         target_id = prelude.String.id,
      }),
      Name = schema.new({
         id = id.from(_N, "ServiceSummary", "Name"),
         type = "string",
         name = "Name",
         target_id = prelude.String.id,
      }),
      Arn = schema.new({
         id = id.from(_N, "ServiceSummary", "Arn"),
         type = "string",
         name = "Arn",
         target_id = prelude.String.id,
      }),
      OwnerAccountId = schema.new({
         id = id.from(_N, "ServiceSummary", "OwnerAccountId"),
         type = "string",
         name = "OwnerAccountId",
         target_id = prelude.String.id,
      }),
      CreatedByAccountId = schema.new({
         id = id.from(_N, "ServiceSummary", "CreatedByAccountId"),
         type = "string",
         name = "CreatedByAccountId",
         target_id = prelude.String.id,
      }),
      Description = schema.new({
         id = id.from(_N, "ServiceSummary", "Description"),
         type = "string",
         name = "Description",
         target_id = prelude.String.id,
      }),
      EnvironmentId = schema.new({
         id = id.from(_N, "ServiceSummary", "EnvironmentId"),
         type = "string",
         name = "EnvironmentId",
         target_id = prelude.String.id,
      }),
      ApplicationId = schema.new({
         id = id.from(_N, "ServiceSummary", "ApplicationId"),
         type = "string",
         name = "ApplicationId",
         target_id = prelude.String.id,
      }),
      VpcId = schema.new({
         id = id.from(_N, "ServiceSummary", "VpcId"),
         type = "string",
         name = "VpcId",
         target_id = prelude.String.id,
      }),
      EndpointType = schema.new({
         id = id.from(_N, "ServiceSummary", "EndpointType"),
         type = "string",
         name = "EndpointType",
         target_id = prelude.String.id,
      }),
      UrlEndpoint = schema.new({
         id = id.from(_N, "ServiceSummary", "UrlEndpoint"),
         type = "structure",
         name = "UrlEndpoint",
         target_id = id.from(_N, "UrlEndpointSummary"),
         target = M.UrlEndpointSummary,
      }),
      LambdaEndpoint = schema.new({
         id = id.from(_N, "ServiceSummary", "LambdaEndpoint"),
         type = "structure",
         name = "LambdaEndpoint",
         target_id = id.from(_N, "LambdaEndpointSummary"),
         target = M.LambdaEndpointSummary,
      }),
      State = schema.new({
         id = id.from(_N, "ServiceSummary", "State"),
         type = "string",
         name = "State",
         target_id = prelude.String.id,
      }),
      Tags = schema.new({
         id = id.from(_N, "ServiceSummary", "Tags"),
         type = "map",
         name = "Tags",
         target_id = prelude.Document.id,
         map_key = prelude.String,
         map_value = prelude.String,
      }),
      Error = schema.new({
         id = id.from(_N, "ServiceSummary", "Error"),
         type = "structure",
         name = "Error",
         target_id = id.from(_N, "ErrorResponse"),
         target = M.ErrorResponse,
      }),
      LastUpdatedTime = schema.new({
         id = id.from(_N, "ServiceSummary", "LastUpdatedTime"),
         type = "timestamp",
         name = "LastUpdatedTime",
         target_id = prelude.Timestamp.id,
      }),
      CreatedTime = schema.new({
         id = id.from(_N, "ServiceSummary", "CreatedTime"),
         type = "timestamp",
         name = "CreatedTime",
         target_id = prelude.Timestamp.id,
      }),
   },
})

M.ListServicesOutput = schema.new({
   id = id.from(_N, "ListServicesResponse"),
   type = "structure",
   members = {
      ServiceSummaryList = schema.new({
         id = id.from(_N, "ListServicesOutput", "ServiceSummaryList"),
         type = "list",
         name = "ServiceSummaryList",
         target_id = prelude.Document.id,
         list_member = M.ServiceSummary,
      }),
      NextToken = schema.new({
         id = id.from(_N, "ListServicesOutput", "NextToken"),
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

M.PutResourcePolicyInput = schema.new({
   id = id.from(_N, "PutResourcePolicyRequest"),
   type = "structure",
   members = {
      ResourceArn = schema.new({
         id = id.from(_N, "PutResourcePolicyInput", "ResourceArn"),
         type = "string",
         name = "ResourceArn",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      Policy = schema.new({
         id = id.from(_N, "PutResourcePolicyInput", "Policy"),
         type = "string",
         name = "Policy",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
   },
})

M.PutResourcePolicyOutput = schema.new({
   id = id.from(_N, "PutResourcePolicyResponse"),
   type = "structure",
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

M.UpdateRouteInput = schema.new({
   id = id.from(_N, "UpdateRouteRequest"),
   type = "structure",
   members = {
      EnvironmentIdentifier = schema.new({
         id = id.from(_N, "UpdateRouteInput", "EnvironmentIdentifier"),
         type = "string",
         name = "EnvironmentIdentifier",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_LABEL] = {},
         },
      }),
      ApplicationIdentifier = schema.new({
         id = id.from(_N, "UpdateRouteInput", "ApplicationIdentifier"),
         type = "string",
         name = "ApplicationIdentifier",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_LABEL] = {},
         },
      }),
      RouteIdentifier = schema.new({
         id = id.from(_N, "UpdateRouteInput", "RouteIdentifier"),
         type = "string",
         name = "RouteIdentifier",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_LABEL] = {},
         },
      }),
      ActivationState = schema.new({
         id = id.from(_N, "UpdateRouteInput", "ActivationState"),
         type = "string",
         name = "ActivationState",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
   },
})

M.UpdateRouteOutput = schema.new({
   id = id.from(_N, "UpdateRouteResponse"),
   type = "structure",
   members = {
      RouteId = schema.new({
         id = id.from(_N, "UpdateRouteOutput", "RouteId"),
         type = "string",
         name = "RouteId",
         target_id = prelude.String.id,
      }),
      Arn = schema.new({
         id = id.from(_N, "UpdateRouteOutput", "Arn"),
         type = "string",
         name = "Arn",
         target_id = prelude.String.id,
      }),
      ServiceId = schema.new({
         id = id.from(_N, "UpdateRouteOutput", "ServiceId"),
         type = "string",
         name = "ServiceId",
         target_id = prelude.String.id,
      }),
      ApplicationId = schema.new({
         id = id.from(_N, "UpdateRouteOutput", "ApplicationId"),
         type = "string",
         name = "ApplicationId",
         target_id = prelude.String.id,
      }),
      State = schema.new({
         id = id.from(_N, "UpdateRouteOutput", "State"),
         type = "string",
         name = "State",
         target_id = prelude.String.id,
      }),
      LastUpdatedTime = schema.new({
         id = id.from(_N, "UpdateRouteOutput", "LastUpdatedTime"),
         type = "timestamp",
         name = "LastUpdatedTime",
         target_id = prelude.Timestamp.id,
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
   id = id.from("com.amazonaws.migrationhubrefactorspaces", "RefactorSpaces"),
   version = "2021-10-26",
   traits = {
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.CreateApplication = schema.operation({
   id = id.from("com.amazonaws.migrationhubrefactorspaces", "CreateApplication"),
   input = M.CreateApplicationInput,
   output = M.CreateApplicationOutput,
   traits = {
      [traits.HTTP] = { method = "POST", path = "/environments/{EnvironmentIdentifier}/applications" },
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.CreateEnvironment = schema.operation({
   id = id.from("com.amazonaws.migrationhubrefactorspaces", "CreateEnvironment"),
   input = M.CreateEnvironmentInput,
   output = M.CreateEnvironmentOutput,
   traits = {
      [traits.HTTP] = { method = "POST", path = "/environments" },
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.CreateRoute = schema.operation({
   id = id.from("com.amazonaws.migrationhubrefactorspaces", "CreateRoute"),
   input = M.CreateRouteInput,
   output = M.CreateRouteOutput,
   traits = {
      [traits.HTTP] = { method = "POST", path = "/environments/{EnvironmentIdentifier}/applications/{ApplicationIdentifier}/routes" },
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.CreateService = schema.operation({
   id = id.from("com.amazonaws.migrationhubrefactorspaces", "CreateService"),
   input = M.CreateServiceInput,
   output = M.CreateServiceOutput,
   traits = {
      [traits.HTTP] = { method = "POST", path = "/environments/{EnvironmentIdentifier}/applications/{ApplicationIdentifier}/services" },
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.DeleteApplication = schema.operation({
   id = id.from("com.amazonaws.migrationhubrefactorspaces", "DeleteApplication"),
   input = M.DeleteApplicationInput,
   output = M.DeleteApplicationOutput,
   traits = {
      [traits.HTTP] = { method = "DELETE", path = "/environments/{EnvironmentIdentifier}/applications/{ApplicationIdentifier}" },
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.DeleteEnvironment = schema.operation({
   id = id.from("com.amazonaws.migrationhubrefactorspaces", "DeleteEnvironment"),
   input = M.DeleteEnvironmentInput,
   output = M.DeleteEnvironmentOutput,
   traits = {
      [traits.HTTP] = { method = "DELETE", path = "/environments/{EnvironmentIdentifier}" },
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.DeleteResourcePolicy = schema.operation({
   id = id.from("com.amazonaws.migrationhubrefactorspaces", "DeleteResourcePolicy"),
   input = M.DeleteResourcePolicyInput,
   output = M.DeleteResourcePolicyOutput,
   traits = {
      [traits.HTTP] = { method = "DELETE", path = "/resourcepolicy/{Identifier}" },
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.DeleteRoute = schema.operation({
   id = id.from("com.amazonaws.migrationhubrefactorspaces", "DeleteRoute"),
   input = M.DeleteRouteInput,
   output = M.DeleteRouteOutput,
   traits = {
      [traits.HTTP] = { method = "DELETE", path = "/environments/{EnvironmentIdentifier}/applications/{ApplicationIdentifier}/routes/{RouteIdentifier}" },
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.DeleteService = schema.operation({
   id = id.from("com.amazonaws.migrationhubrefactorspaces", "DeleteService"),
   input = M.DeleteServiceInput,
   output = M.DeleteServiceOutput,
   traits = {
      [traits.HTTP] = { method = "DELETE", path = "/environments/{EnvironmentIdentifier}/applications/{ApplicationIdentifier}/services/{ServiceIdentifier}" },
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.GetApplication = schema.operation({
   id = id.from("com.amazonaws.migrationhubrefactorspaces", "GetApplication"),
   input = M.GetApplicationInput,
   output = M.GetApplicationOutput,
   traits = {
      [traits.HTTP] = { method = "GET", path = "/environments/{EnvironmentIdentifier}/applications/{ApplicationIdentifier}" },
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.GetEnvironment = schema.operation({
   id = id.from("com.amazonaws.migrationhubrefactorspaces", "GetEnvironment"),
   input = M.GetEnvironmentInput,
   output = M.GetEnvironmentOutput,
   traits = {
      [traits.HTTP] = { method = "GET", path = "/environments/{EnvironmentIdentifier}" },
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.GetResourcePolicy = schema.operation({
   id = id.from("com.amazonaws.migrationhubrefactorspaces", "GetResourcePolicy"),
   input = M.GetResourcePolicyInput,
   output = M.GetResourcePolicyOutput,
   traits = {
      [traits.HTTP] = { method = "GET", path = "/resourcepolicy/{Identifier}" },
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.GetRoute = schema.operation({
   id = id.from("com.amazonaws.migrationhubrefactorspaces", "GetRoute"),
   input = M.GetRouteInput,
   output = M.GetRouteOutput,
   traits = {
      [traits.HTTP] = { method = "GET", path = "/environments/{EnvironmentIdentifier}/applications/{ApplicationIdentifier}/routes/{RouteIdentifier}" },
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.GetService = schema.operation({
   id = id.from("com.amazonaws.migrationhubrefactorspaces", "GetService"),
   input = M.GetServiceInput,
   output = M.GetServiceOutput,
   traits = {
      [traits.HTTP] = { method = "GET", path = "/environments/{EnvironmentIdentifier}/applications/{ApplicationIdentifier}/services/{ServiceIdentifier}" },
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.ListApplications = schema.operation({
   id = id.from("com.amazonaws.migrationhubrefactorspaces", "ListApplications"),
   input = M.ListApplicationsInput,
   output = M.ListApplicationsOutput,
   traits = {
      [traits.HTTP] = { method = "GET", path = "/environments/{EnvironmentIdentifier}/applications" },
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.ListEnvironments = schema.operation({
   id = id.from("com.amazonaws.migrationhubrefactorspaces", "ListEnvironments"),
   input = M.ListEnvironmentsInput,
   output = M.ListEnvironmentsOutput,
   traits = {
      [traits.HTTP] = { method = "GET", path = "/environments" },
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.ListEnvironmentVpcs = schema.operation({
   id = id.from("com.amazonaws.migrationhubrefactorspaces", "ListEnvironmentVpcs"),
   input = M.ListEnvironmentVpcsInput,
   output = M.ListEnvironmentVpcsOutput,
   traits = {
      [traits.HTTP] = { method = "GET", path = "/environments/{EnvironmentIdentifier}/vpcs" },
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.ListRoutes = schema.operation({
   id = id.from("com.amazonaws.migrationhubrefactorspaces", "ListRoutes"),
   input = M.ListRoutesInput,
   output = M.ListRoutesOutput,
   traits = {
      [traits.HTTP] = { method = "GET", path = "/environments/{EnvironmentIdentifier}/applications/{ApplicationIdentifier}/routes" },
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.ListServices = schema.operation({
   id = id.from("com.amazonaws.migrationhubrefactorspaces", "ListServices"),
   input = M.ListServicesInput,
   output = M.ListServicesOutput,
   traits = {
      [traits.HTTP] = { method = "GET", path = "/environments/{EnvironmentIdentifier}/applications/{ApplicationIdentifier}/services" },
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.ListTagsForResource = schema.operation({
   id = id.from("com.amazonaws.migrationhubrefactorspaces", "ListTagsForResource"),
   input = M.ListTagsForResourceInput,
   output = M.ListTagsForResourceOutput,
   traits = {
      [traits.HTTP] = { method = "GET", path = "/tags/{ResourceArn}" },
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.PutResourcePolicy = schema.operation({
   id = id.from("com.amazonaws.migrationhubrefactorspaces", "PutResourcePolicy"),
   input = M.PutResourcePolicyInput,
   output = M.PutResourcePolicyOutput,
   traits = {
      [traits.HTTP] = { method = "PUT", path = "/resourcepolicy" },
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.TagResource = schema.operation({
   id = id.from("com.amazonaws.migrationhubrefactorspaces", "TagResource"),
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
   id = id.from("com.amazonaws.migrationhubrefactorspaces", "UntagResource"),
   input = M.UntagResourceInput,
   output = M.UntagResourceOutput,
   traits = {
      [traits.HTTP] = { method = "DELETE", path = "/tags/{ResourceArn}" },
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.UpdateRoute = schema.operation({
   id = id.from("com.amazonaws.migrationhubrefactorspaces", "UpdateRoute"),
   input = M.UpdateRouteInput,
   output = M.UpdateRouteOutput,
   traits = {
      [traits.HTTP] = { method = "PATCH", path = "/environments/{EnvironmentIdentifier}/applications/{ApplicationIdentifier}/routes/{RouteIdentifier}" },
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

return M
