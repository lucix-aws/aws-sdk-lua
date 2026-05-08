

local id = require("smithy.shape_id")
local schema = require("smithy.schema")
local prelude = require("smithy.prelude")
local traits = require("smithy.traits")

local _N = "com.amazonaws.neptunegraph"

local M = {}

M.DocumentValuedMap = schema.new({ type = "map", map_key = prelude.String, map_value = prelude.Document })

M.QuerySummaryList = schema.new({ type = "list", list_member = M.QuerySummary })

M.TagMap = schema.new({ type = "map", map_key = prelude.String, map_value = prelude.String })

M.TagKeyList = schema.new({ type = "list", list_member = prelude.String })

M.GraphSummaryList = schema.new({ type = "list", list_member = M.GraphSummary })

M.SubnetIds = schema.new({ type = "list", list_member = prelude.String })

M.SecurityGroupIds = schema.new({ type = "list", list_member = prelude.String })

M.PrivateGraphEndpointSummaryList = schema.new({ type = "list", list_member = M.PrivateGraphEndpointSummary })

M.GraphSnapshotSummaryList = schema.new({ type = "list", list_member = M.GraphSnapshotSummary })

M.ExportTaskSummaryList = schema.new({ type = "list", list_member = M.ExportTaskSummary })

M.ImportTaskSummaryList = schema.new({ type = "list", list_member = M.ImportTaskSummary })

M.NodeLabels = schema.new({ type = "list", list_member = prelude.String })

M.EdgeLabels = schema.new({ type = "list", list_member = prelude.String })

M.LongValuedMapList = schema.new({ type = "list", list_member = M.LongValuedMap })

M.NodeStructures = schema.new({ type = "list", list_member = M.NodeStructure })

M.EdgeStructures = schema.new({ type = "list", list_member = M.EdgeStructure })

M.ExportFilterPerLabelMap = schema.new({ type = "map", map_key = prelude.String, map_value = M.ExportFilterElement })

M.LongValuedMap = schema.new({ type = "map", map_key = prelude.String, map_value = prelude.Long })

M.NodeProperties = schema.new({ type = "list", list_member = prelude.String })

M.OutgoingEdgeLabels = schema.new({ type = "list", list_member = prelude.String })

M.EdgeProperties = schema.new({ type = "list", list_member = prelude.String })

M.ExportFilterPropertyMap = schema.new({ type = "map", map_key = prelude.String, map_value = M.ExportFilterPropertyAttributes })

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
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
   },
})

M.CancelQueryInput = schema.new({
   id = id.from(_N, "CancelQueryInput"),
   type = "structure",
   members = {
      graphIdentifier = schema.new({
         id = id.from(_N, "CancelQueryInput", "graphIdentifier"),
         type = "string",
         name = "graphIdentifier",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_HEADER] = { name = "graphIdentifier" },
         },
      }),
      queryId = schema.new({
         id = id.from(_N, "CancelQueryInput", "queryId"),
         type = "string",
         name = "queryId",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_LABEL] = {},
         },
      }),
   },
})

M.CancelQueryOutput = prelude.Unit

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
      reason = schema.new({
         id = id.from(_N, "ValidationException", "reason"),
         type = "string",
         name = "reason",
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
      message = schema.new({
         id = id.from(_N, "ConflictException", "message"),
         type = "string",
         name = "message",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      reason = schema.new({
         id = id.from(_N, "ConflictException", "reason"),
         type = "string",
         name = "reason",
         target_id = prelude.String.id,
      }),
   },
})

M.ExecuteQueryInput = schema.new({
   id = id.from(_N, "ExecuteQueryInput"),
   type = "structure",
   members = {
      graphIdentifier = schema.new({
         id = id.from(_N, "ExecuteQueryInput", "graphIdentifier"),
         type = "string",
         name = "graphIdentifier",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_HEADER] = { name = "graphIdentifier" },
         },
      }),
      queryString = schema.new({
         id = id.from(_N, "ExecuteQueryInput", "queryString"),
         type = "string",
         name = "queryString",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.JSON_NAME] = { name = "query" },
         },
      }),
      language = schema.new({
         id = id.from(_N, "ExecuteQueryInput", "language"),
         type = "string",
         name = "language",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      parameters = schema.new({
         id = id.from(_N, "ExecuteQueryInput", "parameters"),
         type = "map",
         name = "parameters",
         target_id = prelude.Document.id,
         map_key = prelude.String,
         map_value = prelude.Document,
      }),
      planCache = schema.new({
         id = id.from(_N, "ExecuteQueryInput", "planCache"),
         type = "string",
         name = "planCache",
         target_id = prelude.String.id,
      }),
      explainMode = schema.new({
         id = id.from(_N, "ExecuteQueryInput", "explainMode"),
         type = "string",
         name = "explainMode",
         target_id = prelude.String.id,
         traits = {
            [traits.JSON_NAME] = { name = "explain" },
         },
      }),
      queryTimeoutMilliseconds = schema.new({
         id = id.from(_N, "ExecuteQueryInput", "queryTimeoutMilliseconds"),
         type = "integer",
         name = "queryTimeoutMilliseconds",
         target_id = prelude.Integer.id,
      }),
   },
})

M.ExecuteQueryOutput = schema.new({
   id = id.from(_N, "ExecuteQueryOutput"),
   type = "structure",
   members = {
      payload = schema.new({
         id = id.from(_N, "ExecuteQueryOutput", "payload"),
         type = "blob",
         name = "payload",
         target_id = prelude.Blob.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_PAYLOAD] = {},
            [traits.STREAMING] = {},
         },
         direct_traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_PAYLOAD] = {},
         },
      }),
   },
})

M.UnprocessableException = schema.new({
   id = id.from(_N, "UnprocessableException"),
   type = "structure",
   traits = {
      [traits.ERROR] = { value = "client" },
   },
   members = {
      message = schema.new({
         id = id.from(_N, "UnprocessableException", "message"),
         type = "string",
         name = "message",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      reason = schema.new({
         id = id.from(_N, "UnprocessableException", "reason"),
         type = "string",
         name = "reason",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
   },
})

M.GetGraphSummaryInput = schema.new({
   id = id.from(_N, "GetGraphSummaryInput"),
   type = "structure",
   members = {
      graphIdentifier = schema.new({
         id = id.from(_N, "GetGraphSummaryInput", "graphIdentifier"),
         type = "string",
         name = "graphIdentifier",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_HEADER] = { name = "graphIdentifier" },
         },
      }),
      mode = schema.new({
         id = id.from(_N, "GetGraphSummaryInput", "mode"),
         type = "string",
         name = "mode",
         target_id = prelude.String.id,
         traits = {
            [traits.HTTP_QUERY] = { name = "mode" },
         },
      }),
   },
})

M.EdgeStructure = schema.new({
   id = id.from(_N, "EdgeStructure"),
   type = "structure",
   members = {
      count = schema.new({
         id = id.from(_N, "EdgeStructure", "count"),
         type = "long",
         name = "count",
         target_id = prelude.Long.id,
      }),
      edgeProperties = schema.new({
         id = id.from(_N, "EdgeStructure", "edgeProperties"),
         type = "list",
         name = "edgeProperties",
         target_id = prelude.Document.id,
         list_member = prelude.String,
      }),
   },
})

M.NodeStructure = schema.new({
   id = id.from(_N, "NodeStructure"),
   type = "structure",
   members = {
      count = schema.new({
         id = id.from(_N, "NodeStructure", "count"),
         type = "long",
         name = "count",
         target_id = prelude.Long.id,
      }),
      nodeProperties = schema.new({
         id = id.from(_N, "NodeStructure", "nodeProperties"),
         type = "list",
         name = "nodeProperties",
         target_id = prelude.Document.id,
         list_member = prelude.String,
      }),
      distinctOutgoingEdgeLabels = schema.new({
         id = id.from(_N, "NodeStructure", "distinctOutgoingEdgeLabels"),
         type = "list",
         name = "distinctOutgoingEdgeLabels",
         target_id = prelude.Document.id,
         list_member = prelude.String,
      }),
   },
})

M.GraphDataSummary = schema.new({
   id = id.from(_N, "GraphDataSummary"),
   type = "structure",
   members = {
      numNodes = schema.new({
         id = id.from(_N, "GraphDataSummary", "numNodes"),
         type = "long",
         name = "numNodes",
         target_id = prelude.Long.id,
      }),
      numEdges = schema.new({
         id = id.from(_N, "GraphDataSummary", "numEdges"),
         type = "long",
         name = "numEdges",
         target_id = prelude.Long.id,
      }),
      numNodeLabels = schema.new({
         id = id.from(_N, "GraphDataSummary", "numNodeLabels"),
         type = "long",
         name = "numNodeLabels",
         target_id = prelude.Long.id,
      }),
      numEdgeLabels = schema.new({
         id = id.from(_N, "GraphDataSummary", "numEdgeLabels"),
         type = "long",
         name = "numEdgeLabels",
         target_id = prelude.Long.id,
      }),
      nodeLabels = schema.new({
         id = id.from(_N, "GraphDataSummary", "nodeLabels"),
         type = "list",
         name = "nodeLabels",
         target_id = prelude.Document.id,
         list_member = prelude.String,
      }),
      edgeLabels = schema.new({
         id = id.from(_N, "GraphDataSummary", "edgeLabels"),
         type = "list",
         name = "edgeLabels",
         target_id = prelude.Document.id,
         list_member = prelude.String,
      }),
      numNodeProperties = schema.new({
         id = id.from(_N, "GraphDataSummary", "numNodeProperties"),
         type = "long",
         name = "numNodeProperties",
         target_id = prelude.Long.id,
      }),
      numEdgeProperties = schema.new({
         id = id.from(_N, "GraphDataSummary", "numEdgeProperties"),
         type = "long",
         name = "numEdgeProperties",
         target_id = prelude.Long.id,
      }),
      nodeProperties = schema.new({
         id = id.from(_N, "GraphDataSummary", "nodeProperties"),
         type = "list",
         name = "nodeProperties",
         target_id = prelude.Document.id,
         list_member = M.LongValuedMap,
      }),
      edgeProperties = schema.new({
         id = id.from(_N, "GraphDataSummary", "edgeProperties"),
         type = "list",
         name = "edgeProperties",
         target_id = prelude.Document.id,
         list_member = M.LongValuedMap,
      }),
      totalNodePropertyValues = schema.new({
         id = id.from(_N, "GraphDataSummary", "totalNodePropertyValues"),
         type = "long",
         name = "totalNodePropertyValues",
         target_id = prelude.Long.id,
      }),
      totalEdgePropertyValues = schema.new({
         id = id.from(_N, "GraphDataSummary", "totalEdgePropertyValues"),
         type = "long",
         name = "totalEdgePropertyValues",
         target_id = prelude.Long.id,
      }),
      nodeStructures = schema.new({
         id = id.from(_N, "GraphDataSummary", "nodeStructures"),
         type = "list",
         name = "nodeStructures",
         target_id = prelude.Document.id,
         list_member = M.NodeStructure,
      }),
      edgeStructures = schema.new({
         id = id.from(_N, "GraphDataSummary", "edgeStructures"),
         type = "list",
         name = "edgeStructures",
         target_id = prelude.Document.id,
         list_member = M.EdgeStructure,
      }),
   },
})

M.GetGraphSummaryOutput = schema.new({
   id = id.from(_N, "GetGraphSummaryOutput"),
   type = "structure",
   members = {
      version = schema.new({
         id = id.from(_N, "GetGraphSummaryOutput", "version"),
         type = "string",
         name = "version",
         target_id = prelude.String.id,
      }),
      lastStatisticsComputationTime = schema.new({
         id = id.from(_N, "GetGraphSummaryOutput", "lastStatisticsComputationTime"),
         type = "timestamp",
         name = "lastStatisticsComputationTime",
         target_id = prelude.Timestamp.id,
         traits = {
            [traits.TIMESTAMP_FORMAT] = { format = "date-time" },
         },
      }),
      graphSummary = schema.new({
         id = id.from(_N, "GetGraphSummaryOutput", "graphSummary"),
         type = "structure",
         name = "graphSummary",
         target_id = id.from(_N, "GraphDataSummary"),
         target = M.GraphDataSummary,
      }),
   },
})

M.GetQueryInput = schema.new({
   id = id.from(_N, "GetQueryInput"),
   type = "structure",
   members = {
      graphIdentifier = schema.new({
         id = id.from(_N, "GetQueryInput", "graphIdentifier"),
         type = "string",
         name = "graphIdentifier",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_HEADER] = { name = "graphIdentifier" },
         },
      }),
      queryId = schema.new({
         id = id.from(_N, "GetQueryInput", "queryId"),
         type = "string",
         name = "queryId",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_LABEL] = {},
         },
      }),
   },
})

M.GetQueryOutput = schema.new({
   id = id.from(_N, "GetQueryOutput"),
   type = "structure",
   members = {
      id = schema.new({
         id = id.from(_N, "GetQueryOutput", "id"),
         type = "string",
         name = "id",
         target_id = prelude.String.id,
      }),
      queryString = schema.new({
         id = id.from(_N, "GetQueryOutput", "queryString"),
         type = "string",
         name = "queryString",
         target_id = prelude.String.id,
      }),
      waited = schema.new({
         id = id.from(_N, "GetQueryOutput", "waited"),
         type = "integer",
         name = "waited",
         target_id = prelude.Integer.id,
      }),
      elapsed = schema.new({
         id = id.from(_N, "GetQueryOutput", "elapsed"),
         type = "integer",
         name = "elapsed",
         target_id = prelude.Integer.id,
      }),
      state = schema.new({
         id = id.from(_N, "GetQueryOutput", "state"),
         type = "string",
         name = "state",
         target_id = prelude.String.id,
      }),
   },
})

M.VectorSearchConfiguration = schema.new({
   id = id.from(_N, "VectorSearchConfiguration"),
   type = "structure",
   members = {
      dimension = schema.new({
         id = id.from(_N, "VectorSearchConfiguration", "dimension"),
         type = "integer",
         name = "dimension",
         target_id = prelude.Integer.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
   },
})

M.CreateGraphInput = schema.new({
   id = id.from(_N, "CreateGraphInput"),
   type = "structure",
   members = {
      graphName = schema.new({
         id = id.from(_N, "CreateGraphInput", "graphName"),
         type = "string",
         name = "graphName",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      tags = schema.new({
         id = id.from(_N, "CreateGraphInput", "tags"),
         type = "map",
         name = "tags",
         target_id = prelude.Document.id,
         map_key = prelude.String,
         map_value = prelude.String,
      }),
      publicConnectivity = schema.new({
         id = id.from(_N, "CreateGraphInput", "publicConnectivity"),
         type = "boolean",
         name = "publicConnectivity",
         target_id = prelude.Boolean.id,
      }),
      kmsKeyIdentifier = schema.new({
         id = id.from(_N, "CreateGraphInput", "kmsKeyIdentifier"),
         type = "string",
         name = "kmsKeyIdentifier",
         target_id = prelude.String.id,
      }),
      vectorSearchConfiguration = schema.new({
         id = id.from(_N, "CreateGraphInput", "vectorSearchConfiguration"),
         type = "structure",
         name = "vectorSearchConfiguration",
         target_id = id.from(_N, "VectorSearchConfiguration"),
         target = M.VectorSearchConfiguration,
      }),
      replicaCount = schema.new({
         id = id.from(_N, "CreateGraphInput", "replicaCount"),
         type = "integer",
         name = "replicaCount",
         target_id = prelude.Integer.id,
      }),
      deletionProtection = schema.new({
         id = id.from(_N, "CreateGraphInput", "deletionProtection"),
         type = "boolean",
         name = "deletionProtection",
         target_id = prelude.Boolean.id,
      }),
      provisionedMemory = schema.new({
         id = id.from(_N, "CreateGraphInput", "provisionedMemory"),
         type = "integer",
         name = "provisionedMemory",
         target_id = prelude.Integer.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
   },
})

M.CreateGraphOutput = schema.new({
   id = id.from(_N, "CreateGraphOutput"),
   type = "structure",
   members = {
      id = schema.new({
         id = id.from(_N, "CreateGraphOutput", "id"),
         type = "string",
         name = "id",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      name = schema.new({
         id = id.from(_N, "CreateGraphOutput", "name"),
         type = "string",
         name = "name",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      arn = schema.new({
         id = id.from(_N, "CreateGraphOutput", "arn"),
         type = "string",
         name = "arn",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      status = schema.new({
         id = id.from(_N, "CreateGraphOutput", "status"),
         type = "string",
         name = "status",
         target_id = prelude.String.id,
      }),
      statusReason = schema.new({
         id = id.from(_N, "CreateGraphOutput", "statusReason"),
         type = "string",
         name = "statusReason",
         target_id = prelude.String.id,
      }),
      createTime = schema.new({
         id = id.from(_N, "CreateGraphOutput", "createTime"),
         type = "timestamp",
         name = "createTime",
         target_id = prelude.Timestamp.id,
      }),
      provisionedMemory = schema.new({
         id = id.from(_N, "CreateGraphOutput", "provisionedMemory"),
         type = "integer",
         name = "provisionedMemory",
         target_id = prelude.Integer.id,
      }),
      endpoint = schema.new({
         id = id.from(_N, "CreateGraphOutput", "endpoint"),
         type = "string",
         name = "endpoint",
         target_id = prelude.String.id,
      }),
      publicConnectivity = schema.new({
         id = id.from(_N, "CreateGraphOutput", "publicConnectivity"),
         type = "boolean",
         name = "publicConnectivity",
         target_id = prelude.Boolean.id,
      }),
      vectorSearchConfiguration = schema.new({
         id = id.from(_N, "CreateGraphOutput", "vectorSearchConfiguration"),
         type = "structure",
         name = "vectorSearchConfiguration",
         target_id = id.from(_N, "VectorSearchConfiguration"),
         target = M.VectorSearchConfiguration,
      }),
      replicaCount = schema.new({
         id = id.from(_N, "CreateGraphOutput", "replicaCount"),
         type = "integer",
         name = "replicaCount",
         target_id = prelude.Integer.id,
      }),
      kmsKeyIdentifier = schema.new({
         id = id.from(_N, "CreateGraphOutput", "kmsKeyIdentifier"),
         type = "string",
         name = "kmsKeyIdentifier",
         target_id = prelude.String.id,
      }),
      sourceSnapshotId = schema.new({
         id = id.from(_N, "CreateGraphOutput", "sourceSnapshotId"),
         type = "string",
         name = "sourceSnapshotId",
         target_id = prelude.String.id,
      }),
      deletionProtection = schema.new({
         id = id.from(_N, "CreateGraphOutput", "deletionProtection"),
         type = "boolean",
         name = "deletionProtection",
         target_id = prelude.Boolean.id,
      }),
      buildNumber = schema.new({
         id = id.from(_N, "CreateGraphOutput", "buildNumber"),
         type = "string",
         name = "buildNumber",
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
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      resourceId = schema.new({
         id = id.from(_N, "ServiceQuotaExceededException", "resourceId"),
         type = "string",
         name = "resourceId",
         target_id = prelude.String.id,
      }),
      resourceType = schema.new({
         id = id.from(_N, "ServiceQuotaExceededException", "resourceType"),
         type = "string",
         name = "resourceType",
         target_id = prelude.String.id,
      }),
      serviceCode = schema.new({
         id = id.from(_N, "ServiceQuotaExceededException", "serviceCode"),
         type = "string",
         name = "serviceCode",
         target_id = prelude.String.id,
      }),
      quotaCode = schema.new({
         id = id.from(_N, "ServiceQuotaExceededException", "quotaCode"),
         type = "string",
         name = "quotaCode",
         target_id = prelude.String.id,
      }),
   },
})

M.DeleteGraphInput = schema.new({
   id = id.from(_N, "DeleteGraphInput"),
   type = "structure",
   members = {
      graphIdentifier = schema.new({
         id = id.from(_N, "DeleteGraphInput", "graphIdentifier"),
         type = "string",
         name = "graphIdentifier",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_LABEL] = {},
         },
      }),
      skipSnapshot = schema.new({
         id = id.from(_N, "DeleteGraphInput", "skipSnapshot"),
         type = "boolean",
         name = "skipSnapshot",
         target_id = prelude.Boolean.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_QUERY] = { name = "skipSnapshot" },
         },
      }),
   },
})

M.DeleteGraphOutput = schema.new({
   id = id.from(_N, "DeleteGraphOutput"),
   type = "structure",
   members = {
      id = schema.new({
         id = id.from(_N, "DeleteGraphOutput", "id"),
         type = "string",
         name = "id",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      name = schema.new({
         id = id.from(_N, "DeleteGraphOutput", "name"),
         type = "string",
         name = "name",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      arn = schema.new({
         id = id.from(_N, "DeleteGraphOutput", "arn"),
         type = "string",
         name = "arn",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      status = schema.new({
         id = id.from(_N, "DeleteGraphOutput", "status"),
         type = "string",
         name = "status",
         target_id = prelude.String.id,
      }),
      statusReason = schema.new({
         id = id.from(_N, "DeleteGraphOutput", "statusReason"),
         type = "string",
         name = "statusReason",
         target_id = prelude.String.id,
      }),
      createTime = schema.new({
         id = id.from(_N, "DeleteGraphOutput", "createTime"),
         type = "timestamp",
         name = "createTime",
         target_id = prelude.Timestamp.id,
      }),
      provisionedMemory = schema.new({
         id = id.from(_N, "DeleteGraphOutput", "provisionedMemory"),
         type = "integer",
         name = "provisionedMemory",
         target_id = prelude.Integer.id,
      }),
      endpoint = schema.new({
         id = id.from(_N, "DeleteGraphOutput", "endpoint"),
         type = "string",
         name = "endpoint",
         target_id = prelude.String.id,
      }),
      publicConnectivity = schema.new({
         id = id.from(_N, "DeleteGraphOutput", "publicConnectivity"),
         type = "boolean",
         name = "publicConnectivity",
         target_id = prelude.Boolean.id,
      }),
      vectorSearchConfiguration = schema.new({
         id = id.from(_N, "DeleteGraphOutput", "vectorSearchConfiguration"),
         type = "structure",
         name = "vectorSearchConfiguration",
         target_id = id.from(_N, "VectorSearchConfiguration"),
         target = M.VectorSearchConfiguration,
      }),
      replicaCount = schema.new({
         id = id.from(_N, "DeleteGraphOutput", "replicaCount"),
         type = "integer",
         name = "replicaCount",
         target_id = prelude.Integer.id,
      }),
      kmsKeyIdentifier = schema.new({
         id = id.from(_N, "DeleteGraphOutput", "kmsKeyIdentifier"),
         type = "string",
         name = "kmsKeyIdentifier",
         target_id = prelude.String.id,
      }),
      sourceSnapshotId = schema.new({
         id = id.from(_N, "DeleteGraphOutput", "sourceSnapshotId"),
         type = "string",
         name = "sourceSnapshotId",
         target_id = prelude.String.id,
      }),
      deletionProtection = schema.new({
         id = id.from(_N, "DeleteGraphOutput", "deletionProtection"),
         type = "boolean",
         name = "deletionProtection",
         target_id = prelude.Boolean.id,
      }),
      buildNumber = schema.new({
         id = id.from(_N, "DeleteGraphOutput", "buildNumber"),
         type = "string",
         name = "buildNumber",
         target_id = prelude.String.id,
      }),
   },
})

M.GetGraphInput = schema.new({
   id = id.from(_N, "GetGraphInput"),
   type = "structure",
   members = {
      graphIdentifier = schema.new({
         id = id.from(_N, "GetGraphInput", "graphIdentifier"),
         type = "string",
         name = "graphIdentifier",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_LABEL] = {},
         },
      }),
   },
})

M.GetGraphOutput = schema.new({
   id = id.from(_N, "GetGraphOutput"),
   type = "structure",
   members = {
      id = schema.new({
         id = id.from(_N, "GetGraphOutput", "id"),
         type = "string",
         name = "id",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      name = schema.new({
         id = id.from(_N, "GetGraphOutput", "name"),
         type = "string",
         name = "name",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      arn = schema.new({
         id = id.from(_N, "GetGraphOutput", "arn"),
         type = "string",
         name = "arn",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      status = schema.new({
         id = id.from(_N, "GetGraphOutput", "status"),
         type = "string",
         name = "status",
         target_id = prelude.String.id,
      }),
      statusReason = schema.new({
         id = id.from(_N, "GetGraphOutput", "statusReason"),
         type = "string",
         name = "statusReason",
         target_id = prelude.String.id,
      }),
      createTime = schema.new({
         id = id.from(_N, "GetGraphOutput", "createTime"),
         type = "timestamp",
         name = "createTime",
         target_id = prelude.Timestamp.id,
      }),
      provisionedMemory = schema.new({
         id = id.from(_N, "GetGraphOutput", "provisionedMemory"),
         type = "integer",
         name = "provisionedMemory",
         target_id = prelude.Integer.id,
      }),
      endpoint = schema.new({
         id = id.from(_N, "GetGraphOutput", "endpoint"),
         type = "string",
         name = "endpoint",
         target_id = prelude.String.id,
      }),
      publicConnectivity = schema.new({
         id = id.from(_N, "GetGraphOutput", "publicConnectivity"),
         type = "boolean",
         name = "publicConnectivity",
         target_id = prelude.Boolean.id,
      }),
      vectorSearchConfiguration = schema.new({
         id = id.from(_N, "GetGraphOutput", "vectorSearchConfiguration"),
         type = "structure",
         name = "vectorSearchConfiguration",
         target_id = id.from(_N, "VectorSearchConfiguration"),
         target = M.VectorSearchConfiguration,
      }),
      replicaCount = schema.new({
         id = id.from(_N, "GetGraphOutput", "replicaCount"),
         type = "integer",
         name = "replicaCount",
         target_id = prelude.Integer.id,
      }),
      kmsKeyIdentifier = schema.new({
         id = id.from(_N, "GetGraphOutput", "kmsKeyIdentifier"),
         type = "string",
         name = "kmsKeyIdentifier",
         target_id = prelude.String.id,
      }),
      sourceSnapshotId = schema.new({
         id = id.from(_N, "GetGraphOutput", "sourceSnapshotId"),
         type = "string",
         name = "sourceSnapshotId",
         target_id = prelude.String.id,
      }),
      deletionProtection = schema.new({
         id = id.from(_N, "GetGraphOutput", "deletionProtection"),
         type = "boolean",
         name = "deletionProtection",
         target_id = prelude.Boolean.id,
      }),
      buildNumber = schema.new({
         id = id.from(_N, "GetGraphOutput", "buildNumber"),
         type = "string",
         name = "buildNumber",
         target_id = prelude.String.id,
      }),
   },
})

M.ListGraphsInput = schema.new({
   id = id.from(_N, "ListGraphsInput"),
   type = "structure",
   members = {
      nextToken = schema.new({
         id = id.from(_N, "ListGraphsInput", "nextToken"),
         type = "string",
         name = "nextToken",
         target_id = prelude.String.id,
         traits = {
            [traits.HTTP_QUERY] = { name = "nextToken" },
         },
      }),
      maxResults = schema.new({
         id = id.from(_N, "ListGraphsInput", "maxResults"),
         type = "integer",
         name = "maxResults",
         target_id = prelude.Integer.id,
         traits = {
            [traits.HTTP_QUERY] = { name = "maxResults" },
         },
      }),
   },
})

M.GraphSummary = schema.new({
   id = id.from(_N, "GraphSummary"),
   type = "structure",
   members = {
      id = schema.new({
         id = id.from(_N, "GraphSummary", "id"),
         type = "string",
         name = "id",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      name = schema.new({
         id = id.from(_N, "GraphSummary", "name"),
         type = "string",
         name = "name",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      arn = schema.new({
         id = id.from(_N, "GraphSummary", "arn"),
         type = "string",
         name = "arn",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      status = schema.new({
         id = id.from(_N, "GraphSummary", "status"),
         type = "string",
         name = "status",
         target_id = prelude.String.id,
      }),
      provisionedMemory = schema.new({
         id = id.from(_N, "GraphSummary", "provisionedMemory"),
         type = "integer",
         name = "provisionedMemory",
         target_id = prelude.Integer.id,
      }),
      publicConnectivity = schema.new({
         id = id.from(_N, "GraphSummary", "publicConnectivity"),
         type = "boolean",
         name = "publicConnectivity",
         target_id = prelude.Boolean.id,
      }),
      endpoint = schema.new({
         id = id.from(_N, "GraphSummary", "endpoint"),
         type = "string",
         name = "endpoint",
         target_id = prelude.String.id,
      }),
      replicaCount = schema.new({
         id = id.from(_N, "GraphSummary", "replicaCount"),
         type = "integer",
         name = "replicaCount",
         target_id = prelude.Integer.id,
      }),
      kmsKeyIdentifier = schema.new({
         id = id.from(_N, "GraphSummary", "kmsKeyIdentifier"),
         type = "string",
         name = "kmsKeyIdentifier",
         target_id = prelude.String.id,
      }),
      deletionProtection = schema.new({
         id = id.from(_N, "GraphSummary", "deletionProtection"),
         type = "boolean",
         name = "deletionProtection",
         target_id = prelude.Boolean.id,
      }),
   },
})

M.ListGraphsOutput = schema.new({
   id = id.from(_N, "ListGraphsOutput"),
   type = "structure",
   members = {
      graphs = schema.new({
         id = id.from(_N, "ListGraphsOutput", "graphs"),
         type = "list",
         name = "graphs",
         target_id = prelude.Document.id,
         list_member = M.GraphSummary,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      nextToken = schema.new({
         id = id.from(_N, "ListGraphsOutput", "nextToken"),
         type = "string",
         name = "nextToken",
         target_id = prelude.String.id,
      }),
   },
})

M.ResetGraphInput = schema.new({
   id = id.from(_N, "ResetGraphInput"),
   type = "structure",
   members = {
      graphIdentifier = schema.new({
         id = id.from(_N, "ResetGraphInput", "graphIdentifier"),
         type = "string",
         name = "graphIdentifier",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_LABEL] = {},
         },
      }),
      skipSnapshot = schema.new({
         id = id.from(_N, "ResetGraphInput", "skipSnapshot"),
         type = "boolean",
         name = "skipSnapshot",
         target_id = prelude.Boolean.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
   },
})

M.ResetGraphOutput = schema.new({
   id = id.from(_N, "ResetGraphOutput"),
   type = "structure",
   members = {
      id = schema.new({
         id = id.from(_N, "ResetGraphOutput", "id"),
         type = "string",
         name = "id",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      name = schema.new({
         id = id.from(_N, "ResetGraphOutput", "name"),
         type = "string",
         name = "name",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      arn = schema.new({
         id = id.from(_N, "ResetGraphOutput", "arn"),
         type = "string",
         name = "arn",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      status = schema.new({
         id = id.from(_N, "ResetGraphOutput", "status"),
         type = "string",
         name = "status",
         target_id = prelude.String.id,
      }),
      statusReason = schema.new({
         id = id.from(_N, "ResetGraphOutput", "statusReason"),
         type = "string",
         name = "statusReason",
         target_id = prelude.String.id,
      }),
      createTime = schema.new({
         id = id.from(_N, "ResetGraphOutput", "createTime"),
         type = "timestamp",
         name = "createTime",
         target_id = prelude.Timestamp.id,
      }),
      provisionedMemory = schema.new({
         id = id.from(_N, "ResetGraphOutput", "provisionedMemory"),
         type = "integer",
         name = "provisionedMemory",
         target_id = prelude.Integer.id,
      }),
      endpoint = schema.new({
         id = id.from(_N, "ResetGraphOutput", "endpoint"),
         type = "string",
         name = "endpoint",
         target_id = prelude.String.id,
      }),
      publicConnectivity = schema.new({
         id = id.from(_N, "ResetGraphOutput", "publicConnectivity"),
         type = "boolean",
         name = "publicConnectivity",
         target_id = prelude.Boolean.id,
      }),
      vectorSearchConfiguration = schema.new({
         id = id.from(_N, "ResetGraphOutput", "vectorSearchConfiguration"),
         type = "structure",
         name = "vectorSearchConfiguration",
         target_id = id.from(_N, "VectorSearchConfiguration"),
         target = M.VectorSearchConfiguration,
      }),
      replicaCount = schema.new({
         id = id.from(_N, "ResetGraphOutput", "replicaCount"),
         type = "integer",
         name = "replicaCount",
         target_id = prelude.Integer.id,
      }),
      kmsKeyIdentifier = schema.new({
         id = id.from(_N, "ResetGraphOutput", "kmsKeyIdentifier"),
         type = "string",
         name = "kmsKeyIdentifier",
         target_id = prelude.String.id,
      }),
      sourceSnapshotId = schema.new({
         id = id.from(_N, "ResetGraphOutput", "sourceSnapshotId"),
         type = "string",
         name = "sourceSnapshotId",
         target_id = prelude.String.id,
      }),
      deletionProtection = schema.new({
         id = id.from(_N, "ResetGraphOutput", "deletionProtection"),
         type = "boolean",
         name = "deletionProtection",
         target_id = prelude.Boolean.id,
      }),
      buildNumber = schema.new({
         id = id.from(_N, "ResetGraphOutput", "buildNumber"),
         type = "string",
         name = "buildNumber",
         target_id = prelude.String.id,
      }),
   },
})

M.RestoreGraphFromSnapshotInput = schema.new({
   id = id.from(_N, "RestoreGraphFromSnapshotInput"),
   type = "structure",
   members = {
      snapshotIdentifier = schema.new({
         id = id.from(_N, "RestoreGraphFromSnapshotInput", "snapshotIdentifier"),
         type = "string",
         name = "snapshotIdentifier",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_LABEL] = {},
         },
      }),
      graphName = schema.new({
         id = id.from(_N, "RestoreGraphFromSnapshotInput", "graphName"),
         type = "string",
         name = "graphName",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      provisionedMemory = schema.new({
         id = id.from(_N, "RestoreGraphFromSnapshotInput", "provisionedMemory"),
         type = "integer",
         name = "provisionedMemory",
         target_id = prelude.Integer.id,
      }),
      deletionProtection = schema.new({
         id = id.from(_N, "RestoreGraphFromSnapshotInput", "deletionProtection"),
         type = "boolean",
         name = "deletionProtection",
         target_id = prelude.Boolean.id,
      }),
      tags = schema.new({
         id = id.from(_N, "RestoreGraphFromSnapshotInput", "tags"),
         type = "map",
         name = "tags",
         target_id = prelude.Document.id,
         map_key = prelude.String,
         map_value = prelude.String,
      }),
      replicaCount = schema.new({
         id = id.from(_N, "RestoreGraphFromSnapshotInput", "replicaCount"),
         type = "integer",
         name = "replicaCount",
         target_id = prelude.Integer.id,
      }),
      publicConnectivity = schema.new({
         id = id.from(_N, "RestoreGraphFromSnapshotInput", "publicConnectivity"),
         type = "boolean",
         name = "publicConnectivity",
         target_id = prelude.Boolean.id,
      }),
   },
})

M.RestoreGraphFromSnapshotOutput = schema.new({
   id = id.from(_N, "RestoreGraphFromSnapshotOutput"),
   type = "structure",
   members = {
      id = schema.new({
         id = id.from(_N, "RestoreGraphFromSnapshotOutput", "id"),
         type = "string",
         name = "id",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      name = schema.new({
         id = id.from(_N, "RestoreGraphFromSnapshotOutput", "name"),
         type = "string",
         name = "name",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      arn = schema.new({
         id = id.from(_N, "RestoreGraphFromSnapshotOutput", "arn"),
         type = "string",
         name = "arn",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      status = schema.new({
         id = id.from(_N, "RestoreGraphFromSnapshotOutput", "status"),
         type = "string",
         name = "status",
         target_id = prelude.String.id,
      }),
      statusReason = schema.new({
         id = id.from(_N, "RestoreGraphFromSnapshotOutput", "statusReason"),
         type = "string",
         name = "statusReason",
         target_id = prelude.String.id,
      }),
      createTime = schema.new({
         id = id.from(_N, "RestoreGraphFromSnapshotOutput", "createTime"),
         type = "timestamp",
         name = "createTime",
         target_id = prelude.Timestamp.id,
      }),
      provisionedMemory = schema.new({
         id = id.from(_N, "RestoreGraphFromSnapshotOutput", "provisionedMemory"),
         type = "integer",
         name = "provisionedMemory",
         target_id = prelude.Integer.id,
      }),
      endpoint = schema.new({
         id = id.from(_N, "RestoreGraphFromSnapshotOutput", "endpoint"),
         type = "string",
         name = "endpoint",
         target_id = prelude.String.id,
      }),
      publicConnectivity = schema.new({
         id = id.from(_N, "RestoreGraphFromSnapshotOutput", "publicConnectivity"),
         type = "boolean",
         name = "publicConnectivity",
         target_id = prelude.Boolean.id,
      }),
      vectorSearchConfiguration = schema.new({
         id = id.from(_N, "RestoreGraphFromSnapshotOutput", "vectorSearchConfiguration"),
         type = "structure",
         name = "vectorSearchConfiguration",
         target_id = id.from(_N, "VectorSearchConfiguration"),
         target = M.VectorSearchConfiguration,
      }),
      replicaCount = schema.new({
         id = id.from(_N, "RestoreGraphFromSnapshotOutput", "replicaCount"),
         type = "integer",
         name = "replicaCount",
         target_id = prelude.Integer.id,
      }),
      kmsKeyIdentifier = schema.new({
         id = id.from(_N, "RestoreGraphFromSnapshotOutput", "kmsKeyIdentifier"),
         type = "string",
         name = "kmsKeyIdentifier",
         target_id = prelude.String.id,
      }),
      sourceSnapshotId = schema.new({
         id = id.from(_N, "RestoreGraphFromSnapshotOutput", "sourceSnapshotId"),
         type = "string",
         name = "sourceSnapshotId",
         target_id = prelude.String.id,
      }),
      deletionProtection = schema.new({
         id = id.from(_N, "RestoreGraphFromSnapshotOutput", "deletionProtection"),
         type = "boolean",
         name = "deletionProtection",
         target_id = prelude.Boolean.id,
      }),
      buildNumber = schema.new({
         id = id.from(_N, "RestoreGraphFromSnapshotOutput", "buildNumber"),
         type = "string",
         name = "buildNumber",
         target_id = prelude.String.id,
      }),
   },
})

M.StartGraphInput = schema.new({
   id = id.from(_N, "StartGraphInput"),
   type = "structure",
   members = {
      graphIdentifier = schema.new({
         id = id.from(_N, "StartGraphInput", "graphIdentifier"),
         type = "string",
         name = "graphIdentifier",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_LABEL] = {},
         },
      }),
   },
})

M.StartGraphOutput = schema.new({
   id = id.from(_N, "StartGraphOutput"),
   type = "structure",
   members = {
      id = schema.new({
         id = id.from(_N, "StartGraphOutput", "id"),
         type = "string",
         name = "id",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      name = schema.new({
         id = id.from(_N, "StartGraphOutput", "name"),
         type = "string",
         name = "name",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      arn = schema.new({
         id = id.from(_N, "StartGraphOutput", "arn"),
         type = "string",
         name = "arn",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      status = schema.new({
         id = id.from(_N, "StartGraphOutput", "status"),
         type = "string",
         name = "status",
         target_id = prelude.String.id,
      }),
      statusReason = schema.new({
         id = id.from(_N, "StartGraphOutput", "statusReason"),
         type = "string",
         name = "statusReason",
         target_id = prelude.String.id,
      }),
      createTime = schema.new({
         id = id.from(_N, "StartGraphOutput", "createTime"),
         type = "timestamp",
         name = "createTime",
         target_id = prelude.Timestamp.id,
      }),
      provisionedMemory = schema.new({
         id = id.from(_N, "StartGraphOutput", "provisionedMemory"),
         type = "integer",
         name = "provisionedMemory",
         target_id = prelude.Integer.id,
      }),
      endpoint = schema.new({
         id = id.from(_N, "StartGraphOutput", "endpoint"),
         type = "string",
         name = "endpoint",
         target_id = prelude.String.id,
      }),
      publicConnectivity = schema.new({
         id = id.from(_N, "StartGraphOutput", "publicConnectivity"),
         type = "boolean",
         name = "publicConnectivity",
         target_id = prelude.Boolean.id,
      }),
      vectorSearchConfiguration = schema.new({
         id = id.from(_N, "StartGraphOutput", "vectorSearchConfiguration"),
         type = "structure",
         name = "vectorSearchConfiguration",
         target_id = id.from(_N, "VectorSearchConfiguration"),
         target = M.VectorSearchConfiguration,
      }),
      replicaCount = schema.new({
         id = id.from(_N, "StartGraphOutput", "replicaCount"),
         type = "integer",
         name = "replicaCount",
         target_id = prelude.Integer.id,
      }),
      kmsKeyIdentifier = schema.new({
         id = id.from(_N, "StartGraphOutput", "kmsKeyIdentifier"),
         type = "string",
         name = "kmsKeyIdentifier",
         target_id = prelude.String.id,
      }),
      sourceSnapshotId = schema.new({
         id = id.from(_N, "StartGraphOutput", "sourceSnapshotId"),
         type = "string",
         name = "sourceSnapshotId",
         target_id = prelude.String.id,
      }),
      deletionProtection = schema.new({
         id = id.from(_N, "StartGraphOutput", "deletionProtection"),
         type = "boolean",
         name = "deletionProtection",
         target_id = prelude.Boolean.id,
      }),
      buildNumber = schema.new({
         id = id.from(_N, "StartGraphOutput", "buildNumber"),
         type = "string",
         name = "buildNumber",
         target_id = prelude.String.id,
      }),
   },
})

M.StopGraphInput = schema.new({
   id = id.from(_N, "StopGraphInput"),
   type = "structure",
   members = {
      graphIdentifier = schema.new({
         id = id.from(_N, "StopGraphInput", "graphIdentifier"),
         type = "string",
         name = "graphIdentifier",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_LABEL] = {},
         },
      }),
   },
})

M.StopGraphOutput = schema.new({
   id = id.from(_N, "StopGraphOutput"),
   type = "structure",
   members = {
      id = schema.new({
         id = id.from(_N, "StopGraphOutput", "id"),
         type = "string",
         name = "id",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      name = schema.new({
         id = id.from(_N, "StopGraphOutput", "name"),
         type = "string",
         name = "name",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      arn = schema.new({
         id = id.from(_N, "StopGraphOutput", "arn"),
         type = "string",
         name = "arn",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      status = schema.new({
         id = id.from(_N, "StopGraphOutput", "status"),
         type = "string",
         name = "status",
         target_id = prelude.String.id,
      }),
      statusReason = schema.new({
         id = id.from(_N, "StopGraphOutput", "statusReason"),
         type = "string",
         name = "statusReason",
         target_id = prelude.String.id,
      }),
      createTime = schema.new({
         id = id.from(_N, "StopGraphOutput", "createTime"),
         type = "timestamp",
         name = "createTime",
         target_id = prelude.Timestamp.id,
      }),
      provisionedMemory = schema.new({
         id = id.from(_N, "StopGraphOutput", "provisionedMemory"),
         type = "integer",
         name = "provisionedMemory",
         target_id = prelude.Integer.id,
      }),
      endpoint = schema.new({
         id = id.from(_N, "StopGraphOutput", "endpoint"),
         type = "string",
         name = "endpoint",
         target_id = prelude.String.id,
      }),
      publicConnectivity = schema.new({
         id = id.from(_N, "StopGraphOutput", "publicConnectivity"),
         type = "boolean",
         name = "publicConnectivity",
         target_id = prelude.Boolean.id,
      }),
      vectorSearchConfiguration = schema.new({
         id = id.from(_N, "StopGraphOutput", "vectorSearchConfiguration"),
         type = "structure",
         name = "vectorSearchConfiguration",
         target_id = id.from(_N, "VectorSearchConfiguration"),
         target = M.VectorSearchConfiguration,
      }),
      replicaCount = schema.new({
         id = id.from(_N, "StopGraphOutput", "replicaCount"),
         type = "integer",
         name = "replicaCount",
         target_id = prelude.Integer.id,
      }),
      kmsKeyIdentifier = schema.new({
         id = id.from(_N, "StopGraphOutput", "kmsKeyIdentifier"),
         type = "string",
         name = "kmsKeyIdentifier",
         target_id = prelude.String.id,
      }),
      sourceSnapshotId = schema.new({
         id = id.from(_N, "StopGraphOutput", "sourceSnapshotId"),
         type = "string",
         name = "sourceSnapshotId",
         target_id = prelude.String.id,
      }),
      deletionProtection = schema.new({
         id = id.from(_N, "StopGraphOutput", "deletionProtection"),
         type = "boolean",
         name = "deletionProtection",
         target_id = prelude.Boolean.id,
      }),
      buildNumber = schema.new({
         id = id.from(_N, "StopGraphOutput", "buildNumber"),
         type = "string",
         name = "buildNumber",
         target_id = prelude.String.id,
      }),
   },
})

M.UpdateGraphInput = schema.new({
   id = id.from(_N, "UpdateGraphInput"),
   type = "structure",
   members = {
      graphIdentifier = schema.new({
         id = id.from(_N, "UpdateGraphInput", "graphIdentifier"),
         type = "string",
         name = "graphIdentifier",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_LABEL] = {},
         },
      }),
      publicConnectivity = schema.new({
         id = id.from(_N, "UpdateGraphInput", "publicConnectivity"),
         type = "boolean",
         name = "publicConnectivity",
         target_id = prelude.Boolean.id,
      }),
      provisionedMemory = schema.new({
         id = id.from(_N, "UpdateGraphInput", "provisionedMemory"),
         type = "integer",
         name = "provisionedMemory",
         target_id = prelude.Integer.id,
      }),
      deletionProtection = schema.new({
         id = id.from(_N, "UpdateGraphInput", "deletionProtection"),
         type = "boolean",
         name = "deletionProtection",
         target_id = prelude.Boolean.id,
      }),
   },
})

M.UpdateGraphOutput = schema.new({
   id = id.from(_N, "UpdateGraphOutput"),
   type = "structure",
   members = {
      id = schema.new({
         id = id.from(_N, "UpdateGraphOutput", "id"),
         type = "string",
         name = "id",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      name = schema.new({
         id = id.from(_N, "UpdateGraphOutput", "name"),
         type = "string",
         name = "name",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      arn = schema.new({
         id = id.from(_N, "UpdateGraphOutput", "arn"),
         type = "string",
         name = "arn",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      status = schema.new({
         id = id.from(_N, "UpdateGraphOutput", "status"),
         type = "string",
         name = "status",
         target_id = prelude.String.id,
      }),
      statusReason = schema.new({
         id = id.from(_N, "UpdateGraphOutput", "statusReason"),
         type = "string",
         name = "statusReason",
         target_id = prelude.String.id,
      }),
      createTime = schema.new({
         id = id.from(_N, "UpdateGraphOutput", "createTime"),
         type = "timestamp",
         name = "createTime",
         target_id = prelude.Timestamp.id,
      }),
      provisionedMemory = schema.new({
         id = id.from(_N, "UpdateGraphOutput", "provisionedMemory"),
         type = "integer",
         name = "provisionedMemory",
         target_id = prelude.Integer.id,
      }),
      endpoint = schema.new({
         id = id.from(_N, "UpdateGraphOutput", "endpoint"),
         type = "string",
         name = "endpoint",
         target_id = prelude.String.id,
      }),
      publicConnectivity = schema.new({
         id = id.from(_N, "UpdateGraphOutput", "publicConnectivity"),
         type = "boolean",
         name = "publicConnectivity",
         target_id = prelude.Boolean.id,
      }),
      vectorSearchConfiguration = schema.new({
         id = id.from(_N, "UpdateGraphOutput", "vectorSearchConfiguration"),
         type = "structure",
         name = "vectorSearchConfiguration",
         target_id = id.from(_N, "VectorSearchConfiguration"),
         target = M.VectorSearchConfiguration,
      }),
      replicaCount = schema.new({
         id = id.from(_N, "UpdateGraphOutput", "replicaCount"),
         type = "integer",
         name = "replicaCount",
         target_id = prelude.Integer.id,
      }),
      kmsKeyIdentifier = schema.new({
         id = id.from(_N, "UpdateGraphOutput", "kmsKeyIdentifier"),
         type = "string",
         name = "kmsKeyIdentifier",
         target_id = prelude.String.id,
      }),
      sourceSnapshotId = schema.new({
         id = id.from(_N, "UpdateGraphOutput", "sourceSnapshotId"),
         type = "string",
         name = "sourceSnapshotId",
         target_id = prelude.String.id,
      }),
      deletionProtection = schema.new({
         id = id.from(_N, "UpdateGraphOutput", "deletionProtection"),
         type = "boolean",
         name = "deletionProtection",
         target_id = prelude.Boolean.id,
      }),
      buildNumber = schema.new({
         id = id.from(_N, "UpdateGraphOutput", "buildNumber"),
         type = "string",
         name = "buildNumber",
         target_id = prelude.String.id,
      }),
   },
})

M.ListQueriesInput = schema.new({
   id = id.from(_N, "ListQueriesInput"),
   type = "structure",
   members = {
      graphIdentifier = schema.new({
         id = id.from(_N, "ListQueriesInput", "graphIdentifier"),
         type = "string",
         name = "graphIdentifier",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_HEADER] = { name = "graphIdentifier" },
         },
      }),
      maxResults = schema.new({
         id = id.from(_N, "ListQueriesInput", "maxResults"),
         type = "integer",
         name = "maxResults",
         target_id = prelude.Integer.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_QUERY] = { name = "maxResults" },
         },
      }),
      state = schema.new({
         id = id.from(_N, "ListQueriesInput", "state"),
         type = "string",
         name = "state",
         target_id = prelude.String.id,
         traits = {
            [traits.HTTP_QUERY] = { name = "state" },
         },
      }),
   },
})

M.QuerySummary = schema.new({
   id = id.from(_N, "QuerySummary"),
   type = "structure",
   members = {
      id = schema.new({
         id = id.from(_N, "QuerySummary", "id"),
         type = "string",
         name = "id",
         target_id = prelude.String.id,
      }),
      queryString = schema.new({
         id = id.from(_N, "QuerySummary", "queryString"),
         type = "string",
         name = "queryString",
         target_id = prelude.String.id,
      }),
      waited = schema.new({
         id = id.from(_N, "QuerySummary", "waited"),
         type = "integer",
         name = "waited",
         target_id = prelude.Integer.id,
      }),
      elapsed = schema.new({
         id = id.from(_N, "QuerySummary", "elapsed"),
         type = "integer",
         name = "elapsed",
         target_id = prelude.Integer.id,
      }),
      state = schema.new({
         id = id.from(_N, "QuerySummary", "state"),
         type = "string",
         name = "state",
         target_id = prelude.String.id,
      }),
   },
})

M.ListQueriesOutput = schema.new({
   id = id.from(_N, "ListQueriesOutput"),
   type = "structure",
   members = {
      queries = schema.new({
         id = id.from(_N, "ListQueriesOutput", "queries"),
         type = "list",
         name = "queries",
         target_id = prelude.Document.id,
         list_member = M.QuerySummary,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
   },
})

M.ListTagsForResourceInput = schema.new({
   id = id.from(_N, "ListTagsForResourceInput"),
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
   id = id.from(_N, "ListTagsForResourceOutput"),
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

M.CreatePrivateGraphEndpointInput = schema.new({
   id = id.from(_N, "CreatePrivateGraphEndpointInput"),
   type = "structure",
   members = {
      graphIdentifier = schema.new({
         id = id.from(_N, "CreatePrivateGraphEndpointInput", "graphIdentifier"),
         type = "string",
         name = "graphIdentifier",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_LABEL] = {},
         },
      }),
      vpcId = schema.new({
         id = id.from(_N, "CreatePrivateGraphEndpointInput", "vpcId"),
         type = "string",
         name = "vpcId",
         target_id = prelude.String.id,
      }),
      subnetIds = schema.new({
         id = id.from(_N, "CreatePrivateGraphEndpointInput", "subnetIds"),
         type = "list",
         name = "subnetIds",
         target_id = prelude.Document.id,
         list_member = prelude.String,
      }),
      vpcSecurityGroupIds = schema.new({
         id = id.from(_N, "CreatePrivateGraphEndpointInput", "vpcSecurityGroupIds"),
         type = "list",
         name = "vpcSecurityGroupIds",
         target_id = prelude.Document.id,
         list_member = prelude.String,
      }),
   },
})

M.CreatePrivateGraphEndpointOutput = schema.new({
   id = id.from(_N, "CreatePrivateGraphEndpointOutput"),
   type = "structure",
   members = {
      vpcId = schema.new({
         id = id.from(_N, "CreatePrivateGraphEndpointOutput", "vpcId"),
         type = "string",
         name = "vpcId",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      subnetIds = schema.new({
         id = id.from(_N, "CreatePrivateGraphEndpointOutput", "subnetIds"),
         type = "list",
         name = "subnetIds",
         target_id = prelude.Document.id,
         list_member = prelude.String,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      status = schema.new({
         id = id.from(_N, "CreatePrivateGraphEndpointOutput", "status"),
         type = "string",
         name = "status",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      vpcEndpointId = schema.new({
         id = id.from(_N, "CreatePrivateGraphEndpointOutput", "vpcEndpointId"),
         type = "string",
         name = "vpcEndpointId",
         target_id = prelude.String.id,
      }),
   },
})

M.DeletePrivateGraphEndpointInput = schema.new({
   id = id.from(_N, "DeletePrivateGraphEndpointInput"),
   type = "structure",
   members = {
      graphIdentifier = schema.new({
         id = id.from(_N, "DeletePrivateGraphEndpointInput", "graphIdentifier"),
         type = "string",
         name = "graphIdentifier",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_LABEL] = {},
         },
      }),
      vpcId = schema.new({
         id = id.from(_N, "DeletePrivateGraphEndpointInput", "vpcId"),
         type = "string",
         name = "vpcId",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_LABEL] = {},
         },
      }),
   },
})

M.DeletePrivateGraphEndpointOutput = schema.new({
   id = id.from(_N, "DeletePrivateGraphEndpointOutput"),
   type = "structure",
   members = {
      vpcId = schema.new({
         id = id.from(_N, "DeletePrivateGraphEndpointOutput", "vpcId"),
         type = "string",
         name = "vpcId",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      subnetIds = schema.new({
         id = id.from(_N, "DeletePrivateGraphEndpointOutput", "subnetIds"),
         type = "list",
         name = "subnetIds",
         target_id = prelude.Document.id,
         list_member = prelude.String,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      status = schema.new({
         id = id.from(_N, "DeletePrivateGraphEndpointOutput", "status"),
         type = "string",
         name = "status",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      vpcEndpointId = schema.new({
         id = id.from(_N, "DeletePrivateGraphEndpointOutput", "vpcEndpointId"),
         type = "string",
         name = "vpcEndpointId",
         target_id = prelude.String.id,
      }),
   },
})

M.GetPrivateGraphEndpointInput = schema.new({
   id = id.from(_N, "GetPrivateGraphEndpointInput"),
   type = "structure",
   members = {
      graphIdentifier = schema.new({
         id = id.from(_N, "GetPrivateGraphEndpointInput", "graphIdentifier"),
         type = "string",
         name = "graphIdentifier",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_LABEL] = {},
         },
      }),
      vpcId = schema.new({
         id = id.from(_N, "GetPrivateGraphEndpointInput", "vpcId"),
         type = "string",
         name = "vpcId",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_LABEL] = {},
         },
      }),
   },
})

M.GetPrivateGraphEndpointOutput = schema.new({
   id = id.from(_N, "GetPrivateGraphEndpointOutput"),
   type = "structure",
   members = {
      vpcId = schema.new({
         id = id.from(_N, "GetPrivateGraphEndpointOutput", "vpcId"),
         type = "string",
         name = "vpcId",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      subnetIds = schema.new({
         id = id.from(_N, "GetPrivateGraphEndpointOutput", "subnetIds"),
         type = "list",
         name = "subnetIds",
         target_id = prelude.Document.id,
         list_member = prelude.String,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      status = schema.new({
         id = id.from(_N, "GetPrivateGraphEndpointOutput", "status"),
         type = "string",
         name = "status",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      vpcEndpointId = schema.new({
         id = id.from(_N, "GetPrivateGraphEndpointOutput", "vpcEndpointId"),
         type = "string",
         name = "vpcEndpointId",
         target_id = prelude.String.id,
      }),
   },
})

M.ListPrivateGraphEndpointsInput = schema.new({
   id = id.from(_N, "ListPrivateGraphEndpointsInput"),
   type = "structure",
   members = {
      graphIdentifier = schema.new({
         id = id.from(_N, "ListPrivateGraphEndpointsInput", "graphIdentifier"),
         type = "string",
         name = "graphIdentifier",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_LABEL] = {},
         },
      }),
      nextToken = schema.new({
         id = id.from(_N, "ListPrivateGraphEndpointsInput", "nextToken"),
         type = "string",
         name = "nextToken",
         target_id = prelude.String.id,
         traits = {
            [traits.HTTP_QUERY] = { name = "nextToken" },
         },
      }),
      maxResults = schema.new({
         id = id.from(_N, "ListPrivateGraphEndpointsInput", "maxResults"),
         type = "integer",
         name = "maxResults",
         target_id = prelude.Integer.id,
         traits = {
            [traits.HTTP_QUERY] = { name = "maxResults" },
         },
      }),
   },
})

M.PrivateGraphEndpointSummary = schema.new({
   id = id.from(_N, "PrivateGraphEndpointSummary"),
   type = "structure",
   members = {
      vpcId = schema.new({
         id = id.from(_N, "PrivateGraphEndpointSummary", "vpcId"),
         type = "string",
         name = "vpcId",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      subnetIds = schema.new({
         id = id.from(_N, "PrivateGraphEndpointSummary", "subnetIds"),
         type = "list",
         name = "subnetIds",
         target_id = prelude.Document.id,
         list_member = prelude.String,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      status = schema.new({
         id = id.from(_N, "PrivateGraphEndpointSummary", "status"),
         type = "string",
         name = "status",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      vpcEndpointId = schema.new({
         id = id.from(_N, "PrivateGraphEndpointSummary", "vpcEndpointId"),
         type = "string",
         name = "vpcEndpointId",
         target_id = prelude.String.id,
      }),
   },
})

M.ListPrivateGraphEndpointsOutput = schema.new({
   id = id.from(_N, "ListPrivateGraphEndpointsOutput"),
   type = "structure",
   members = {
      privateGraphEndpoints = schema.new({
         id = id.from(_N, "ListPrivateGraphEndpointsOutput", "privateGraphEndpoints"),
         type = "list",
         name = "privateGraphEndpoints",
         target_id = prelude.Document.id,
         list_member = M.PrivateGraphEndpointSummary,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      nextToken = schema.new({
         id = id.from(_N, "ListPrivateGraphEndpointsOutput", "nextToken"),
         type = "string",
         name = "nextToken",
         target_id = prelude.String.id,
      }),
   },
})

M.CreateGraphSnapshotInput = schema.new({
   id = id.from(_N, "CreateGraphSnapshotInput"),
   type = "structure",
   members = {
      graphIdentifier = schema.new({
         id = id.from(_N, "CreateGraphSnapshotInput", "graphIdentifier"),
         type = "string",
         name = "graphIdentifier",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      snapshotName = schema.new({
         id = id.from(_N, "CreateGraphSnapshotInput", "snapshotName"),
         type = "string",
         name = "snapshotName",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      tags = schema.new({
         id = id.from(_N, "CreateGraphSnapshotInput", "tags"),
         type = "map",
         name = "tags",
         target_id = prelude.Document.id,
         map_key = prelude.String,
         map_value = prelude.String,
      }),
   },
})

M.CreateGraphSnapshotOutput = schema.new({
   id = id.from(_N, "CreateGraphSnapshotOutput"),
   type = "structure",
   members = {
      id = schema.new({
         id = id.from(_N, "CreateGraphSnapshotOutput", "id"),
         type = "string",
         name = "id",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      name = schema.new({
         id = id.from(_N, "CreateGraphSnapshotOutput", "name"),
         type = "string",
         name = "name",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      arn = schema.new({
         id = id.from(_N, "CreateGraphSnapshotOutput", "arn"),
         type = "string",
         name = "arn",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      sourceGraphId = schema.new({
         id = id.from(_N, "CreateGraphSnapshotOutput", "sourceGraphId"),
         type = "string",
         name = "sourceGraphId",
         target_id = prelude.String.id,
      }),
      snapshotCreateTime = schema.new({
         id = id.from(_N, "CreateGraphSnapshotOutput", "snapshotCreateTime"),
         type = "timestamp",
         name = "snapshotCreateTime",
         target_id = prelude.Timestamp.id,
      }),
      status = schema.new({
         id = id.from(_N, "CreateGraphSnapshotOutput", "status"),
         type = "string",
         name = "status",
         target_id = prelude.String.id,
      }),
      kmsKeyIdentifier = schema.new({
         id = id.from(_N, "CreateGraphSnapshotOutput", "kmsKeyIdentifier"),
         type = "string",
         name = "kmsKeyIdentifier",
         target_id = prelude.String.id,
      }),
   },
})

M.DeleteGraphSnapshotInput = schema.new({
   id = id.from(_N, "DeleteGraphSnapshotInput"),
   type = "structure",
   members = {
      snapshotIdentifier = schema.new({
         id = id.from(_N, "DeleteGraphSnapshotInput", "snapshotIdentifier"),
         type = "string",
         name = "snapshotIdentifier",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_LABEL] = {},
         },
      }),
   },
})

M.DeleteGraphSnapshotOutput = schema.new({
   id = id.from(_N, "DeleteGraphSnapshotOutput"),
   type = "structure",
   members = {
      id = schema.new({
         id = id.from(_N, "DeleteGraphSnapshotOutput", "id"),
         type = "string",
         name = "id",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      name = schema.new({
         id = id.from(_N, "DeleteGraphSnapshotOutput", "name"),
         type = "string",
         name = "name",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      arn = schema.new({
         id = id.from(_N, "DeleteGraphSnapshotOutput", "arn"),
         type = "string",
         name = "arn",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      sourceGraphId = schema.new({
         id = id.from(_N, "DeleteGraphSnapshotOutput", "sourceGraphId"),
         type = "string",
         name = "sourceGraphId",
         target_id = prelude.String.id,
      }),
      snapshotCreateTime = schema.new({
         id = id.from(_N, "DeleteGraphSnapshotOutput", "snapshotCreateTime"),
         type = "timestamp",
         name = "snapshotCreateTime",
         target_id = prelude.Timestamp.id,
      }),
      status = schema.new({
         id = id.from(_N, "DeleteGraphSnapshotOutput", "status"),
         type = "string",
         name = "status",
         target_id = prelude.String.id,
      }),
      kmsKeyIdentifier = schema.new({
         id = id.from(_N, "DeleteGraphSnapshotOutput", "kmsKeyIdentifier"),
         type = "string",
         name = "kmsKeyIdentifier",
         target_id = prelude.String.id,
      }),
   },
})

M.GetGraphSnapshotInput = schema.new({
   id = id.from(_N, "GetGraphSnapshotInput"),
   type = "structure",
   members = {
      snapshotIdentifier = schema.new({
         id = id.from(_N, "GetGraphSnapshotInput", "snapshotIdentifier"),
         type = "string",
         name = "snapshotIdentifier",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_LABEL] = {},
         },
      }),
   },
})

M.GetGraphSnapshotOutput = schema.new({
   id = id.from(_N, "GetGraphSnapshotOutput"),
   type = "structure",
   members = {
      id = schema.new({
         id = id.from(_N, "GetGraphSnapshotOutput", "id"),
         type = "string",
         name = "id",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      name = schema.new({
         id = id.from(_N, "GetGraphSnapshotOutput", "name"),
         type = "string",
         name = "name",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      arn = schema.new({
         id = id.from(_N, "GetGraphSnapshotOutput", "arn"),
         type = "string",
         name = "arn",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      sourceGraphId = schema.new({
         id = id.from(_N, "GetGraphSnapshotOutput", "sourceGraphId"),
         type = "string",
         name = "sourceGraphId",
         target_id = prelude.String.id,
      }),
      snapshotCreateTime = schema.new({
         id = id.from(_N, "GetGraphSnapshotOutput", "snapshotCreateTime"),
         type = "timestamp",
         name = "snapshotCreateTime",
         target_id = prelude.Timestamp.id,
      }),
      status = schema.new({
         id = id.from(_N, "GetGraphSnapshotOutput", "status"),
         type = "string",
         name = "status",
         target_id = prelude.String.id,
      }),
      kmsKeyIdentifier = schema.new({
         id = id.from(_N, "GetGraphSnapshotOutput", "kmsKeyIdentifier"),
         type = "string",
         name = "kmsKeyIdentifier",
         target_id = prelude.String.id,
      }),
   },
})

M.ListGraphSnapshotsInput = schema.new({
   id = id.from(_N, "ListGraphSnapshotsInput"),
   type = "structure",
   members = {
      graphIdentifier = schema.new({
         id = id.from(_N, "ListGraphSnapshotsInput", "graphIdentifier"),
         type = "string",
         name = "graphIdentifier",
         target_id = prelude.String.id,
         traits = {
            [traits.HTTP_QUERY] = { name = "graphIdentifier" },
         },
      }),
      nextToken = schema.new({
         id = id.from(_N, "ListGraphSnapshotsInput", "nextToken"),
         type = "string",
         name = "nextToken",
         target_id = prelude.String.id,
         traits = {
            [traits.HTTP_QUERY] = { name = "nextToken" },
         },
      }),
      maxResults = schema.new({
         id = id.from(_N, "ListGraphSnapshotsInput", "maxResults"),
         type = "integer",
         name = "maxResults",
         target_id = prelude.Integer.id,
         traits = {
            [traits.HTTP_QUERY] = { name = "maxResults" },
         },
      }),
   },
})

M.GraphSnapshotSummary = schema.new({
   id = id.from(_N, "GraphSnapshotSummary"),
   type = "structure",
   members = {
      id = schema.new({
         id = id.from(_N, "GraphSnapshotSummary", "id"),
         type = "string",
         name = "id",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      name = schema.new({
         id = id.from(_N, "GraphSnapshotSummary", "name"),
         type = "string",
         name = "name",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      arn = schema.new({
         id = id.from(_N, "GraphSnapshotSummary", "arn"),
         type = "string",
         name = "arn",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      sourceGraphId = schema.new({
         id = id.from(_N, "GraphSnapshotSummary", "sourceGraphId"),
         type = "string",
         name = "sourceGraphId",
         target_id = prelude.String.id,
      }),
      snapshotCreateTime = schema.new({
         id = id.from(_N, "GraphSnapshotSummary", "snapshotCreateTime"),
         type = "timestamp",
         name = "snapshotCreateTime",
         target_id = prelude.Timestamp.id,
      }),
      status = schema.new({
         id = id.from(_N, "GraphSnapshotSummary", "status"),
         type = "string",
         name = "status",
         target_id = prelude.String.id,
      }),
      kmsKeyIdentifier = schema.new({
         id = id.from(_N, "GraphSnapshotSummary", "kmsKeyIdentifier"),
         type = "string",
         name = "kmsKeyIdentifier",
         target_id = prelude.String.id,
      }),
   },
})

M.ListGraphSnapshotsOutput = schema.new({
   id = id.from(_N, "ListGraphSnapshotsOutput"),
   type = "structure",
   members = {
      graphSnapshots = schema.new({
         id = id.from(_N, "ListGraphSnapshotsOutput", "graphSnapshots"),
         type = "list",
         name = "graphSnapshots",
         target_id = prelude.Document.id,
         list_member = M.GraphSnapshotSummary,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      nextToken = schema.new({
         id = id.from(_N, "ListGraphSnapshotsOutput", "nextToken"),
         type = "string",
         name = "nextToken",
         target_id = prelude.String.id,
      }),
   },
})

M.TagResourceInput = schema.new({
   id = id.from(_N, "TagResourceInput"),
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
   id = id.from(_N, "TagResourceOutput"),
   type = "structure",
})

M.CancelExportTaskInput = schema.new({
   id = id.from(_N, "CancelExportTaskInput"),
   type = "structure",
   members = {
      taskIdentifier = schema.new({
         id = id.from(_N, "CancelExportTaskInput", "taskIdentifier"),
         type = "string",
         name = "taskIdentifier",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_LABEL] = {},
         },
      }),
   },
})

M.CancelExportTaskOutput = schema.new({
   id = id.from(_N, "CancelExportTaskOutput"),
   type = "structure",
   members = {
      graphId = schema.new({
         id = id.from(_N, "CancelExportTaskOutput", "graphId"),
         type = "string",
         name = "graphId",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      roleArn = schema.new({
         id = id.from(_N, "CancelExportTaskOutput", "roleArn"),
         type = "string",
         name = "roleArn",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      taskId = schema.new({
         id = id.from(_N, "CancelExportTaskOutput", "taskId"),
         type = "string",
         name = "taskId",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      status = schema.new({
         id = id.from(_N, "CancelExportTaskOutput", "status"),
         type = "string",
         name = "status",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      format = schema.new({
         id = id.from(_N, "CancelExportTaskOutput", "format"),
         type = "string",
         name = "format",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      destination = schema.new({
         id = id.from(_N, "CancelExportTaskOutput", "destination"),
         type = "string",
         name = "destination",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      kmsKeyIdentifier = schema.new({
         id = id.from(_N, "CancelExportTaskOutput", "kmsKeyIdentifier"),
         type = "string",
         name = "kmsKeyIdentifier",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      parquetType = schema.new({
         id = id.from(_N, "CancelExportTaskOutput", "parquetType"),
         type = "string",
         name = "parquetType",
         target_id = prelude.String.id,
      }),
      statusReason = schema.new({
         id = id.from(_N, "CancelExportTaskOutput", "statusReason"),
         type = "string",
         name = "statusReason",
         target_id = prelude.String.id,
      }),
   },
})

M.CancelImportTaskInput = schema.new({
   id = id.from(_N, "CancelImportTaskInput"),
   type = "structure",
   members = {
      taskIdentifier = schema.new({
         id = id.from(_N, "CancelImportTaskInput", "taskIdentifier"),
         type = "string",
         name = "taskIdentifier",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_LABEL] = {},
         },
      }),
   },
})

M.CancelImportTaskOutput = schema.new({
   id = id.from(_N, "CancelImportTaskOutput"),
   type = "structure",
   members = {
      graphId = schema.new({
         id = id.from(_N, "CancelImportTaskOutput", "graphId"),
         type = "string",
         name = "graphId",
         target_id = prelude.String.id,
      }),
      taskId = schema.new({
         id = id.from(_N, "CancelImportTaskOutput", "taskId"),
         type = "string",
         name = "taskId",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      source = schema.new({
         id = id.from(_N, "CancelImportTaskOutput", "source"),
         type = "string",
         name = "source",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      format = schema.new({
         id = id.from(_N, "CancelImportTaskOutput", "format"),
         type = "string",
         name = "format",
         target_id = prelude.String.id,
      }),
      parquetType = schema.new({
         id = id.from(_N, "CancelImportTaskOutput", "parquetType"),
         type = "string",
         name = "parquetType",
         target_id = prelude.String.id,
      }),
      roleArn = schema.new({
         id = id.from(_N, "CancelImportTaskOutput", "roleArn"),
         type = "string",
         name = "roleArn",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      status = schema.new({
         id = id.from(_N, "CancelImportTaskOutput", "status"),
         type = "string",
         name = "status",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
   },
})

M.NeptuneImportOptions = schema.new({
   id = id.from(_N, "NeptuneImportOptions"),
   type = "structure",
   members = {
      s3ExportPath = schema.new({
         id = id.from(_N, "NeptuneImportOptions", "s3ExportPath"),
         type = "string",
         name = "s3ExportPath",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      s3ExportKmsKeyId = schema.new({
         id = id.from(_N, "NeptuneImportOptions", "s3ExportKmsKeyId"),
         type = "string",
         name = "s3ExportKmsKeyId",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      preserveDefaultVertexLabels = schema.new({
         id = id.from(_N, "NeptuneImportOptions", "preserveDefaultVertexLabels"),
         type = "boolean",
         name = "preserveDefaultVertexLabels",
         target_id = prelude.Boolean.id,
      }),
      preserveEdgeIds = schema.new({
         id = id.from(_N, "NeptuneImportOptions", "preserveEdgeIds"),
         type = "boolean",
         name = "preserveEdgeIds",
         target_id = prelude.Boolean.id,
      }),
   },
})

M.ImportOptions = schema.new({
   id = id.from(_N, "ImportOptions"),
   type = "union",
   members = {
      neptune = schema.new({
         id = id.from(_N, "ImportOptions", "neptune"),
         type = "structure",
         name = "neptune",
         target_id = id.from(_N, "NeptuneImportOptions"),
         target = M.NeptuneImportOptions,
      }),
   },
})

M.CreateGraphUsingImportTaskInput = schema.new({
   id = id.from(_N, "CreateGraphUsingImportTaskInput"),
   type = "structure",
   members = {
      graphName = schema.new({
         id = id.from(_N, "CreateGraphUsingImportTaskInput", "graphName"),
         type = "string",
         name = "graphName",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      tags = schema.new({
         id = id.from(_N, "CreateGraphUsingImportTaskInput", "tags"),
         type = "map",
         name = "tags",
         target_id = prelude.Document.id,
         map_key = prelude.String,
         map_value = prelude.String,
      }),
      publicConnectivity = schema.new({
         id = id.from(_N, "CreateGraphUsingImportTaskInput", "publicConnectivity"),
         type = "boolean",
         name = "publicConnectivity",
         target_id = prelude.Boolean.id,
      }),
      kmsKeyIdentifier = schema.new({
         id = id.from(_N, "CreateGraphUsingImportTaskInput", "kmsKeyIdentifier"),
         type = "string",
         name = "kmsKeyIdentifier",
         target_id = prelude.String.id,
      }),
      vectorSearchConfiguration = schema.new({
         id = id.from(_N, "CreateGraphUsingImportTaskInput", "vectorSearchConfiguration"),
         type = "structure",
         name = "vectorSearchConfiguration",
         target_id = id.from(_N, "VectorSearchConfiguration"),
         target = M.VectorSearchConfiguration,
      }),
      replicaCount = schema.new({
         id = id.from(_N, "CreateGraphUsingImportTaskInput", "replicaCount"),
         type = "integer",
         name = "replicaCount",
         target_id = prelude.Integer.id,
      }),
      deletionProtection = schema.new({
         id = id.from(_N, "CreateGraphUsingImportTaskInput", "deletionProtection"),
         type = "boolean",
         name = "deletionProtection",
         target_id = prelude.Boolean.id,
      }),
      importOptions = schema.new({
         id = id.from(_N, "CreateGraphUsingImportTaskInput", "importOptions"),
         type = "union",
         name = "importOptions",
         target_id = id.from(_N, "ImportOptions"),
         target = M.ImportOptions,
      }),
      maxProvisionedMemory = schema.new({
         id = id.from(_N, "CreateGraphUsingImportTaskInput", "maxProvisionedMemory"),
         type = "integer",
         name = "maxProvisionedMemory",
         target_id = prelude.Integer.id,
      }),
      minProvisionedMemory = schema.new({
         id = id.from(_N, "CreateGraphUsingImportTaskInput", "minProvisionedMemory"),
         type = "integer",
         name = "minProvisionedMemory",
         target_id = prelude.Integer.id,
      }),
      failOnError = schema.new({
         id = id.from(_N, "CreateGraphUsingImportTaskInput", "failOnError"),
         type = "boolean",
         name = "failOnError",
         target_id = prelude.Boolean.id,
      }),
      source = schema.new({
         id = id.from(_N, "CreateGraphUsingImportTaskInput", "source"),
         type = "string",
         name = "source",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      format = schema.new({
         id = id.from(_N, "CreateGraphUsingImportTaskInput", "format"),
         type = "string",
         name = "format",
         target_id = prelude.String.id,
      }),
      parquetType = schema.new({
         id = id.from(_N, "CreateGraphUsingImportTaskInput", "parquetType"),
         type = "string",
         name = "parquetType",
         target_id = prelude.String.id,
      }),
      blankNodeHandling = schema.new({
         id = id.from(_N, "CreateGraphUsingImportTaskInput", "blankNodeHandling"),
         type = "string",
         name = "blankNodeHandling",
         target_id = prelude.String.id,
      }),
      roleArn = schema.new({
         id = id.from(_N, "CreateGraphUsingImportTaskInput", "roleArn"),
         type = "string",
         name = "roleArn",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
   },
})

M.CreateGraphUsingImportTaskOutput = schema.new({
   id = id.from(_N, "CreateGraphUsingImportTaskOutput"),
   type = "structure",
   members = {
      graphId = schema.new({
         id = id.from(_N, "CreateGraphUsingImportTaskOutput", "graphId"),
         type = "string",
         name = "graphId",
         target_id = prelude.String.id,
      }),
      taskId = schema.new({
         id = id.from(_N, "CreateGraphUsingImportTaskOutput", "taskId"),
         type = "string",
         name = "taskId",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      source = schema.new({
         id = id.from(_N, "CreateGraphUsingImportTaskOutput", "source"),
         type = "string",
         name = "source",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      format = schema.new({
         id = id.from(_N, "CreateGraphUsingImportTaskOutput", "format"),
         type = "string",
         name = "format",
         target_id = prelude.String.id,
      }),
      parquetType = schema.new({
         id = id.from(_N, "CreateGraphUsingImportTaskOutput", "parquetType"),
         type = "string",
         name = "parquetType",
         target_id = prelude.String.id,
      }),
      roleArn = schema.new({
         id = id.from(_N, "CreateGraphUsingImportTaskOutput", "roleArn"),
         type = "string",
         name = "roleArn",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      status = schema.new({
         id = id.from(_N, "CreateGraphUsingImportTaskOutput", "status"),
         type = "string",
         name = "status",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      importOptions = schema.new({
         id = id.from(_N, "CreateGraphUsingImportTaskOutput", "importOptions"),
         type = "union",
         name = "importOptions",
         target_id = id.from(_N, "ImportOptions"),
         target = M.ImportOptions,
      }),
   },
})

M.GetExportTaskInput = schema.new({
   id = id.from(_N, "GetExportTaskInput"),
   type = "structure",
   members = {
      taskIdentifier = schema.new({
         id = id.from(_N, "GetExportTaskInput", "taskIdentifier"),
         type = "string",
         name = "taskIdentifier",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_LABEL] = {},
         },
      }),
   },
})

M.ExportFilterPropertyAttributes = schema.new({
   id = id.from(_N, "ExportFilterPropertyAttributes"),
   type = "structure",
   members = {
      outputType = schema.new({
         id = id.from(_N, "ExportFilterPropertyAttributes", "outputType"),
         type = "string",
         name = "outputType",
         target_id = prelude.String.id,
      }),
      sourcePropertyName = schema.new({
         id = id.from(_N, "ExportFilterPropertyAttributes", "sourcePropertyName"),
         type = "string",
         name = "sourcePropertyName",
         target_id = prelude.String.id,
      }),
      multiValueHandling = schema.new({
         id = id.from(_N, "ExportFilterPropertyAttributes", "multiValueHandling"),
         type = "string",
         name = "multiValueHandling",
         target_id = prelude.String.id,
         traits = {
            [traits.DEFAULT] = { value = "PICK_FIRST" },
         },
      }),
   },
})

M.ExportFilterElement = schema.new({
   id = id.from(_N, "ExportFilterElement"),
   type = "structure",
   members = {
      properties = schema.new({
         id = id.from(_N, "ExportFilterElement", "properties"),
         type = "map",
         name = "properties",
         target_id = prelude.Document.id,
         map_key = prelude.String,
         map_value = M.ExportFilterPropertyAttributes,
      }),
   },
})

M.ExportFilter = schema.new({
   id = id.from(_N, "ExportFilter"),
   type = "structure",
   members = {
      vertexFilter = schema.new({
         id = id.from(_N, "ExportFilter", "vertexFilter"),
         type = "map",
         name = "vertexFilter",
         target_id = prelude.Document.id,
         map_key = prelude.String,
         map_value = M.ExportFilterElement,
      }),
      edgeFilter = schema.new({
         id = id.from(_N, "ExportFilter", "edgeFilter"),
         type = "map",
         name = "edgeFilter",
         target_id = prelude.Document.id,
         map_key = prelude.String,
         map_value = M.ExportFilterElement,
      }),
   },
})

M.ExportTaskDetails = schema.new({
   id = id.from(_N, "ExportTaskDetails"),
   type = "structure",
   members = {
      startTime = schema.new({
         id = id.from(_N, "ExportTaskDetails", "startTime"),
         type = "timestamp",
         name = "startTime",
         target_id = prelude.Timestamp.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      timeElapsedSeconds = schema.new({
         id = id.from(_N, "ExportTaskDetails", "timeElapsedSeconds"),
         type = "long",
         name = "timeElapsedSeconds",
         target_id = prelude.Long.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      progressPercentage = schema.new({
         id = id.from(_N, "ExportTaskDetails", "progressPercentage"),
         type = "integer",
         name = "progressPercentage",
         target_id = prelude.Integer.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      numVerticesWritten = schema.new({
         id = id.from(_N, "ExportTaskDetails", "numVerticesWritten"),
         type = "long",
         name = "numVerticesWritten",
         target_id = prelude.Long.id,
      }),
      numEdgesWritten = schema.new({
         id = id.from(_N, "ExportTaskDetails", "numEdgesWritten"),
         type = "long",
         name = "numEdgesWritten",
         target_id = prelude.Long.id,
      }),
   },
})

M.GetExportTaskOutput = schema.new({
   id = id.from(_N, "GetExportTaskOutput"),
   type = "structure",
   members = {
      graphId = schema.new({
         id = id.from(_N, "GetExportTaskOutput", "graphId"),
         type = "string",
         name = "graphId",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      roleArn = schema.new({
         id = id.from(_N, "GetExportTaskOutput", "roleArn"),
         type = "string",
         name = "roleArn",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      taskId = schema.new({
         id = id.from(_N, "GetExportTaskOutput", "taskId"),
         type = "string",
         name = "taskId",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      status = schema.new({
         id = id.from(_N, "GetExportTaskOutput", "status"),
         type = "string",
         name = "status",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      format = schema.new({
         id = id.from(_N, "GetExportTaskOutput", "format"),
         type = "string",
         name = "format",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      destination = schema.new({
         id = id.from(_N, "GetExportTaskOutput", "destination"),
         type = "string",
         name = "destination",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      kmsKeyIdentifier = schema.new({
         id = id.from(_N, "GetExportTaskOutput", "kmsKeyIdentifier"),
         type = "string",
         name = "kmsKeyIdentifier",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      parquetType = schema.new({
         id = id.from(_N, "GetExportTaskOutput", "parquetType"),
         type = "string",
         name = "parquetType",
         target_id = prelude.String.id,
      }),
      statusReason = schema.new({
         id = id.from(_N, "GetExportTaskOutput", "statusReason"),
         type = "string",
         name = "statusReason",
         target_id = prelude.String.id,
      }),
      exportTaskDetails = schema.new({
         id = id.from(_N, "GetExportTaskOutput", "exportTaskDetails"),
         type = "structure",
         name = "exportTaskDetails",
         target_id = id.from(_N, "ExportTaskDetails"),
         target = M.ExportTaskDetails,
      }),
      exportFilter = schema.new({
         id = id.from(_N, "GetExportTaskOutput", "exportFilter"),
         type = "structure",
         name = "exportFilter",
         target_id = id.from(_N, "ExportFilter"),
         target = M.ExportFilter,
      }),
   },
})

M.GetImportTaskInput = schema.new({
   id = id.from(_N, "GetImportTaskInput"),
   type = "structure",
   members = {
      taskIdentifier = schema.new({
         id = id.from(_N, "GetImportTaskInput", "taskIdentifier"),
         type = "string",
         name = "taskIdentifier",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_LABEL] = {},
         },
      }),
   },
})

M.ImportTaskDetails = schema.new({
   id = id.from(_N, "ImportTaskDetails"),
   type = "structure",
   members = {
      status = schema.new({
         id = id.from(_N, "ImportTaskDetails", "status"),
         type = "string",
         name = "status",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      startTime = schema.new({
         id = id.from(_N, "ImportTaskDetails", "startTime"),
         type = "timestamp",
         name = "startTime",
         target_id = prelude.Timestamp.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      timeElapsedSeconds = schema.new({
         id = id.from(_N, "ImportTaskDetails", "timeElapsedSeconds"),
         type = "long",
         name = "timeElapsedSeconds",
         target_id = prelude.Long.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      progressPercentage = schema.new({
         id = id.from(_N, "ImportTaskDetails", "progressPercentage"),
         type = "integer",
         name = "progressPercentage",
         target_id = prelude.Integer.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      errorCount = schema.new({
         id = id.from(_N, "ImportTaskDetails", "errorCount"),
         type = "integer",
         name = "errorCount",
         target_id = prelude.Integer.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      errorDetails = schema.new({
         id = id.from(_N, "ImportTaskDetails", "errorDetails"),
         type = "string",
         name = "errorDetails",
         target_id = prelude.String.id,
      }),
      statementCount = schema.new({
         id = id.from(_N, "ImportTaskDetails", "statementCount"),
         type = "long",
         name = "statementCount",
         target_id = prelude.Long.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      dictionaryEntryCount = schema.new({
         id = id.from(_N, "ImportTaskDetails", "dictionaryEntryCount"),
         type = "long",
         name = "dictionaryEntryCount",
         target_id = prelude.Long.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
   },
})

M.GetImportTaskOutput = schema.new({
   id = id.from(_N, "GetImportTaskOutput"),
   type = "structure",
   members = {
      graphId = schema.new({
         id = id.from(_N, "GetImportTaskOutput", "graphId"),
         type = "string",
         name = "graphId",
         target_id = prelude.String.id,
      }),
      taskId = schema.new({
         id = id.from(_N, "GetImportTaskOutput", "taskId"),
         type = "string",
         name = "taskId",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      source = schema.new({
         id = id.from(_N, "GetImportTaskOutput", "source"),
         type = "string",
         name = "source",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      format = schema.new({
         id = id.from(_N, "GetImportTaskOutput", "format"),
         type = "string",
         name = "format",
         target_id = prelude.String.id,
      }),
      parquetType = schema.new({
         id = id.from(_N, "GetImportTaskOutput", "parquetType"),
         type = "string",
         name = "parquetType",
         target_id = prelude.String.id,
      }),
      roleArn = schema.new({
         id = id.from(_N, "GetImportTaskOutput", "roleArn"),
         type = "string",
         name = "roleArn",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      status = schema.new({
         id = id.from(_N, "GetImportTaskOutput", "status"),
         type = "string",
         name = "status",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      importOptions = schema.new({
         id = id.from(_N, "GetImportTaskOutput", "importOptions"),
         type = "union",
         name = "importOptions",
         target_id = id.from(_N, "ImportOptions"),
         target = M.ImportOptions,
      }),
      importTaskDetails = schema.new({
         id = id.from(_N, "GetImportTaskOutput", "importTaskDetails"),
         type = "structure",
         name = "importTaskDetails",
         target_id = id.from(_N, "ImportTaskDetails"),
         target = M.ImportTaskDetails,
      }),
      attemptNumber = schema.new({
         id = id.from(_N, "GetImportTaskOutput", "attemptNumber"),
         type = "integer",
         name = "attemptNumber",
         target_id = prelude.Integer.id,
      }),
      statusReason = schema.new({
         id = id.from(_N, "GetImportTaskOutput", "statusReason"),
         type = "string",
         name = "statusReason",
         target_id = prelude.String.id,
      }),
   },
})

M.ListExportTasksInput = schema.new({
   id = id.from(_N, "ListExportTasksInput"),
   type = "structure",
   members = {
      graphIdentifier = schema.new({
         id = id.from(_N, "ListExportTasksInput", "graphIdentifier"),
         type = "string",
         name = "graphIdentifier",
         target_id = prelude.String.id,
         traits = {
            [traits.HTTP_QUERY] = { name = "graphIdentifier" },
         },
      }),
      nextToken = schema.new({
         id = id.from(_N, "ListExportTasksInput", "nextToken"),
         type = "string",
         name = "nextToken",
         target_id = prelude.String.id,
         traits = {
            [traits.HTTP_QUERY] = { name = "nextToken" },
         },
      }),
      maxResults = schema.new({
         id = id.from(_N, "ListExportTasksInput", "maxResults"),
         type = "integer",
         name = "maxResults",
         target_id = prelude.Integer.id,
         traits = {
            [traits.HTTP_QUERY] = { name = "maxResults" },
         },
      }),
   },
})

M.ExportTaskSummary = schema.new({
   id = id.from(_N, "ExportTaskSummary"),
   type = "structure",
   members = {
      graphId = schema.new({
         id = id.from(_N, "ExportTaskSummary", "graphId"),
         type = "string",
         name = "graphId",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      roleArn = schema.new({
         id = id.from(_N, "ExportTaskSummary", "roleArn"),
         type = "string",
         name = "roleArn",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      taskId = schema.new({
         id = id.from(_N, "ExportTaskSummary", "taskId"),
         type = "string",
         name = "taskId",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      status = schema.new({
         id = id.from(_N, "ExportTaskSummary", "status"),
         type = "string",
         name = "status",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      format = schema.new({
         id = id.from(_N, "ExportTaskSummary", "format"),
         type = "string",
         name = "format",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      destination = schema.new({
         id = id.from(_N, "ExportTaskSummary", "destination"),
         type = "string",
         name = "destination",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      kmsKeyIdentifier = schema.new({
         id = id.from(_N, "ExportTaskSummary", "kmsKeyIdentifier"),
         type = "string",
         name = "kmsKeyIdentifier",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      parquetType = schema.new({
         id = id.from(_N, "ExportTaskSummary", "parquetType"),
         type = "string",
         name = "parquetType",
         target_id = prelude.String.id,
      }),
      statusReason = schema.new({
         id = id.from(_N, "ExportTaskSummary", "statusReason"),
         type = "string",
         name = "statusReason",
         target_id = prelude.String.id,
      }),
   },
})

M.ListExportTasksOutput = schema.new({
   id = id.from(_N, "ListExportTasksOutput"),
   type = "structure",
   members = {
      tasks = schema.new({
         id = id.from(_N, "ListExportTasksOutput", "tasks"),
         type = "list",
         name = "tasks",
         target_id = prelude.Document.id,
         list_member = M.ExportTaskSummary,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      nextToken = schema.new({
         id = id.from(_N, "ListExportTasksOutput", "nextToken"),
         type = "string",
         name = "nextToken",
         target_id = prelude.String.id,
      }),
   },
})

M.ListImportTasksInput = schema.new({
   id = id.from(_N, "ListImportTasksInput"),
   type = "structure",
   members = {
      nextToken = schema.new({
         id = id.from(_N, "ListImportTasksInput", "nextToken"),
         type = "string",
         name = "nextToken",
         target_id = prelude.String.id,
         traits = {
            [traits.HTTP_QUERY] = { name = "nextToken" },
         },
      }),
      maxResults = schema.new({
         id = id.from(_N, "ListImportTasksInput", "maxResults"),
         type = "integer",
         name = "maxResults",
         target_id = prelude.Integer.id,
         traits = {
            [traits.HTTP_QUERY] = { name = "maxResults" },
         },
      }),
   },
})

M.ImportTaskSummary = schema.new({
   id = id.from(_N, "ImportTaskSummary"),
   type = "structure",
   members = {
      graphId = schema.new({
         id = id.from(_N, "ImportTaskSummary", "graphId"),
         type = "string",
         name = "graphId",
         target_id = prelude.String.id,
      }),
      taskId = schema.new({
         id = id.from(_N, "ImportTaskSummary", "taskId"),
         type = "string",
         name = "taskId",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      source = schema.new({
         id = id.from(_N, "ImportTaskSummary", "source"),
         type = "string",
         name = "source",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      format = schema.new({
         id = id.from(_N, "ImportTaskSummary", "format"),
         type = "string",
         name = "format",
         target_id = prelude.String.id,
      }),
      parquetType = schema.new({
         id = id.from(_N, "ImportTaskSummary", "parquetType"),
         type = "string",
         name = "parquetType",
         target_id = prelude.String.id,
      }),
      roleArn = schema.new({
         id = id.from(_N, "ImportTaskSummary", "roleArn"),
         type = "string",
         name = "roleArn",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      status = schema.new({
         id = id.from(_N, "ImportTaskSummary", "status"),
         type = "string",
         name = "status",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
   },
})

M.ListImportTasksOutput = schema.new({
   id = id.from(_N, "ListImportTasksOutput"),
   type = "structure",
   members = {
      tasks = schema.new({
         id = id.from(_N, "ListImportTasksOutput", "tasks"),
         type = "list",
         name = "tasks",
         target_id = prelude.Document.id,
         list_member = M.ImportTaskSummary,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      nextToken = schema.new({
         id = id.from(_N, "ListImportTasksOutput", "nextToken"),
         type = "string",
         name = "nextToken",
         target_id = prelude.String.id,
      }),
   },
})

M.StartExportTaskInput = schema.new({
   id = id.from(_N, "StartExportTaskInput"),
   type = "structure",
   members = {
      graphIdentifier = schema.new({
         id = id.from(_N, "StartExportTaskInput", "graphIdentifier"),
         type = "string",
         name = "graphIdentifier",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      roleArn = schema.new({
         id = id.from(_N, "StartExportTaskInput", "roleArn"),
         type = "string",
         name = "roleArn",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      format = schema.new({
         id = id.from(_N, "StartExportTaskInput", "format"),
         type = "string",
         name = "format",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      destination = schema.new({
         id = id.from(_N, "StartExportTaskInput", "destination"),
         type = "string",
         name = "destination",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      kmsKeyIdentifier = schema.new({
         id = id.from(_N, "StartExportTaskInput", "kmsKeyIdentifier"),
         type = "string",
         name = "kmsKeyIdentifier",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      parquetType = schema.new({
         id = id.from(_N, "StartExportTaskInput", "parquetType"),
         type = "string",
         name = "parquetType",
         target_id = prelude.String.id,
      }),
      exportFilter = schema.new({
         id = id.from(_N, "StartExportTaskInput", "exportFilter"),
         type = "structure",
         name = "exportFilter",
         target_id = id.from(_N, "ExportFilter"),
         target = M.ExportFilter,
      }),
      tags = schema.new({
         id = id.from(_N, "StartExportTaskInput", "tags"),
         type = "map",
         name = "tags",
         target_id = prelude.Document.id,
         map_key = prelude.String,
         map_value = prelude.String,
      }),
   },
})

M.StartExportTaskOutput = schema.new({
   id = id.from(_N, "StartExportTaskOutput"),
   type = "structure",
   members = {
      graphId = schema.new({
         id = id.from(_N, "StartExportTaskOutput", "graphId"),
         type = "string",
         name = "graphId",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      roleArn = schema.new({
         id = id.from(_N, "StartExportTaskOutput", "roleArn"),
         type = "string",
         name = "roleArn",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      taskId = schema.new({
         id = id.from(_N, "StartExportTaskOutput", "taskId"),
         type = "string",
         name = "taskId",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      status = schema.new({
         id = id.from(_N, "StartExportTaskOutput", "status"),
         type = "string",
         name = "status",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      format = schema.new({
         id = id.from(_N, "StartExportTaskOutput", "format"),
         type = "string",
         name = "format",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      destination = schema.new({
         id = id.from(_N, "StartExportTaskOutput", "destination"),
         type = "string",
         name = "destination",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      kmsKeyIdentifier = schema.new({
         id = id.from(_N, "StartExportTaskOutput", "kmsKeyIdentifier"),
         type = "string",
         name = "kmsKeyIdentifier",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      parquetType = schema.new({
         id = id.from(_N, "StartExportTaskOutput", "parquetType"),
         type = "string",
         name = "parquetType",
         target_id = prelude.String.id,
      }),
      statusReason = schema.new({
         id = id.from(_N, "StartExportTaskOutput", "statusReason"),
         type = "string",
         name = "statusReason",
         target_id = prelude.String.id,
      }),
      exportFilter = schema.new({
         id = id.from(_N, "StartExportTaskOutput", "exportFilter"),
         type = "structure",
         name = "exportFilter",
         target_id = id.from(_N, "ExportFilter"),
         target = M.ExportFilter,
      }),
   },
})

M.StartImportTaskInput = schema.new({
   id = id.from(_N, "StartImportTaskInput"),
   type = "structure",
   members = {
      importOptions = schema.new({
         id = id.from(_N, "StartImportTaskInput", "importOptions"),
         type = "union",
         name = "importOptions",
         target_id = id.from(_N, "ImportOptions"),
         target = M.ImportOptions,
      }),
      failOnError = schema.new({
         id = id.from(_N, "StartImportTaskInput", "failOnError"),
         type = "boolean",
         name = "failOnError",
         target_id = prelude.Boolean.id,
      }),
      source = schema.new({
         id = id.from(_N, "StartImportTaskInput", "source"),
         type = "string",
         name = "source",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      format = schema.new({
         id = id.from(_N, "StartImportTaskInput", "format"),
         type = "string",
         name = "format",
         target_id = prelude.String.id,
      }),
      parquetType = schema.new({
         id = id.from(_N, "StartImportTaskInput", "parquetType"),
         type = "string",
         name = "parquetType",
         target_id = prelude.String.id,
      }),
      blankNodeHandling = schema.new({
         id = id.from(_N, "StartImportTaskInput", "blankNodeHandling"),
         type = "string",
         name = "blankNodeHandling",
         target_id = prelude.String.id,
      }),
      graphIdentifier = schema.new({
         id = id.from(_N, "StartImportTaskInput", "graphIdentifier"),
         type = "string",
         name = "graphIdentifier",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_LABEL] = {},
         },
      }),
      roleArn = schema.new({
         id = id.from(_N, "StartImportTaskInput", "roleArn"),
         type = "string",
         name = "roleArn",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
   },
})

M.StartImportTaskOutput = schema.new({
   id = id.from(_N, "StartImportTaskOutput"),
   type = "structure",
   members = {
      graphId = schema.new({
         id = id.from(_N, "StartImportTaskOutput", "graphId"),
         type = "string",
         name = "graphId",
         target_id = prelude.String.id,
      }),
      taskId = schema.new({
         id = id.from(_N, "StartImportTaskOutput", "taskId"),
         type = "string",
         name = "taskId",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      source = schema.new({
         id = id.from(_N, "StartImportTaskOutput", "source"),
         type = "string",
         name = "source",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      format = schema.new({
         id = id.from(_N, "StartImportTaskOutput", "format"),
         type = "string",
         name = "format",
         target_id = prelude.String.id,
      }),
      parquetType = schema.new({
         id = id.from(_N, "StartImportTaskOutput", "parquetType"),
         type = "string",
         name = "parquetType",
         target_id = prelude.String.id,
      }),
      roleArn = schema.new({
         id = id.from(_N, "StartImportTaskOutput", "roleArn"),
         type = "string",
         name = "roleArn",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      status = schema.new({
         id = id.from(_N, "StartImportTaskOutput", "status"),
         type = "string",
         name = "status",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      importOptions = schema.new({
         id = id.from(_N, "StartImportTaskOutput", "importOptions"),
         type = "union",
         name = "importOptions",
         target_id = id.from(_N, "ImportOptions"),
         target = M.ImportOptions,
      }),
   },
})

M.UntagResourceInput = schema.new({
   id = id.from(_N, "UntagResourceInput"),
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
   id = id.from("com.amazonaws.neptunegraph", "AmazonNeptuneGraph"),
   version = "2023-11-29",
   traits = {
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.CancelExportTask = schema.operation({
   id = id.from("com.amazonaws.neptunegraph", "CancelExportTask"),
   input = M.CancelExportTaskInput,
   output = M.CancelExportTaskOutput,
   traits = {
      [traits.HTTP] = { method = "DELETE", path = "/exporttasks/{taskIdentifier}" },
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
      [traits.STATIC_CONTEXT_PARAMS] = {
         ApiType = { value = "ControlPlane" },
      },
   },
})

M.CancelImportTask = schema.operation({
   id = id.from("com.amazonaws.neptunegraph", "CancelImportTask"),
   input = M.CancelImportTaskInput,
   output = M.CancelImportTaskOutput,
   traits = {
      [traits.HTTP] = { method = "DELETE", path = "/importtasks/{taskIdentifier}" },
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
      [traits.STATIC_CONTEXT_PARAMS] = {
         ApiType = { value = "ControlPlane" },
      },
   },
})

M.CancelQuery = schema.operation({
   id = id.from("com.amazonaws.neptunegraph", "CancelQuery"),
   input = M.CancelQueryInput,
   output = M.CancelQueryOutput,
   traits = {
      [traits.HTTP] = { method = "DELETE", path = "/queries/{queryId}" },
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
      [traits.STATIC_CONTEXT_PARAMS] = {
         ApiType = { value = "DataPlane" },
      },
   },
})

M.CreateGraph = schema.operation({
   id = id.from("com.amazonaws.neptunegraph", "CreateGraph"),
   input = M.CreateGraphInput,
   output = M.CreateGraphOutput,
   traits = {
      [traits.HTTP] = { method = "POST", path = "/graphs" },
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
      [traits.STATIC_CONTEXT_PARAMS] = {
         ApiType = { value = "ControlPlane" },
      },
   },
})

M.CreateGraphSnapshot = schema.operation({
   id = id.from("com.amazonaws.neptunegraph", "CreateGraphSnapshot"),
   input = M.CreateGraphSnapshotInput,
   output = M.CreateGraphSnapshotOutput,
   traits = {
      [traits.HTTP] = { method = "POST", path = "/snapshots" },
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
      [traits.STATIC_CONTEXT_PARAMS] = {
         ApiType = { value = "ControlPlane" },
      },
   },
})

M.CreateGraphUsingImportTask = schema.operation({
   id = id.from("com.amazonaws.neptunegraph", "CreateGraphUsingImportTask"),
   input = M.CreateGraphUsingImportTaskInput,
   output = M.CreateGraphUsingImportTaskOutput,
   traits = {
      [traits.HTTP] = { method = "POST", path = "/importtasks" },
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
      [traits.STATIC_CONTEXT_PARAMS] = {
         ApiType = { value = "ControlPlane" },
      },
   },
})

M.CreatePrivateGraphEndpoint = schema.operation({
   id = id.from("com.amazonaws.neptunegraph", "CreatePrivateGraphEndpoint"),
   input = M.CreatePrivateGraphEndpointInput,
   output = M.CreatePrivateGraphEndpointOutput,
   traits = {
      [traits.HTTP] = { method = "POST", path = "/graphs/{graphIdentifier}/endpoints/" },
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
      [traits.STATIC_CONTEXT_PARAMS] = {
         ApiType = { value = "ControlPlane" },
      },
   },
})

M.DeleteGraph = schema.operation({
   id = id.from("com.amazonaws.neptunegraph", "DeleteGraph"),
   input = M.DeleteGraphInput,
   output = M.DeleteGraphOutput,
   traits = {
      [traits.HTTP] = { method = "DELETE", path = "/graphs/{graphIdentifier}" },
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
      [traits.STATIC_CONTEXT_PARAMS] = {
         ApiType = { value = "ControlPlane" },
      },
   },
})

M.DeleteGraphSnapshot = schema.operation({
   id = id.from("com.amazonaws.neptunegraph", "DeleteGraphSnapshot"),
   input = M.DeleteGraphSnapshotInput,
   output = M.DeleteGraphSnapshotOutput,
   traits = {
      [traits.HTTP] = { method = "DELETE", path = "/snapshots/{snapshotIdentifier}" },
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
      [traits.STATIC_CONTEXT_PARAMS] = {
         ApiType = { value = "ControlPlane" },
      },
   },
})

M.DeletePrivateGraphEndpoint = schema.operation({
   id = id.from("com.amazonaws.neptunegraph", "DeletePrivateGraphEndpoint"),
   input = M.DeletePrivateGraphEndpointInput,
   output = M.DeletePrivateGraphEndpointOutput,
   traits = {
      [traits.HTTP] = { method = "DELETE", path = "/graphs/{graphIdentifier}/endpoints/{vpcId}" },
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
      [traits.STATIC_CONTEXT_PARAMS] = {
         ApiType = { value = "ControlPlane" },
      },
   },
})

M.ExecuteQuery = schema.operation({
   id = id.from("com.amazonaws.neptunegraph", "ExecuteQuery"),
   input = M.ExecuteQueryInput,
   output = M.ExecuteQueryOutput,
   traits = {
      [traits.HTTP] = { method = "POST", path = "/queries" },
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
      [traits.STATIC_CONTEXT_PARAMS] = {
         ApiType = { value = "DataPlane" },
      },
   },
})

M.GetExportTask = schema.operation({
   id = id.from("com.amazonaws.neptunegraph", "GetExportTask"),
   input = M.GetExportTaskInput,
   output = M.GetExportTaskOutput,
   traits = {
      [traits.HTTP] = { method = "GET", path = "/exporttasks/{taskIdentifier}" },
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
      [traits.STATIC_CONTEXT_PARAMS] = {
         ApiType = { value = "ControlPlane" },
      },
   },
})

M.GetGraph = schema.operation({
   id = id.from("com.amazonaws.neptunegraph", "GetGraph"),
   input = M.GetGraphInput,
   output = M.GetGraphOutput,
   traits = {
      [traits.HTTP] = { method = "GET", path = "/graphs/{graphIdentifier}" },
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
      [traits.STATIC_CONTEXT_PARAMS] = {
         ApiType = { value = "ControlPlane" },
      },
   },
})

M.GetGraphSnapshot = schema.operation({
   id = id.from("com.amazonaws.neptunegraph", "GetGraphSnapshot"),
   input = M.GetGraphSnapshotInput,
   output = M.GetGraphSnapshotOutput,
   traits = {
      [traits.HTTP] = { method = "GET", path = "/snapshots/{snapshotIdentifier}" },
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
      [traits.STATIC_CONTEXT_PARAMS] = {
         ApiType = { value = "ControlPlane" },
      },
   },
})

M.GetGraphSummary = schema.operation({
   id = id.from("com.amazonaws.neptunegraph", "GetGraphSummary"),
   input = M.GetGraphSummaryInput,
   output = M.GetGraphSummaryOutput,
   traits = {
      [traits.HTTP] = { method = "GET", path = "/summary" },
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
      [traits.STATIC_CONTEXT_PARAMS] = {
         ApiType = { value = "DataPlane" },
      },
   },
})

M.GetImportTask = schema.operation({
   id = id.from("com.amazonaws.neptunegraph", "GetImportTask"),
   input = M.GetImportTaskInput,
   output = M.GetImportTaskOutput,
   traits = {
      [traits.HTTP] = { method = "GET", path = "/importtasks/{taskIdentifier}" },
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
      [traits.STATIC_CONTEXT_PARAMS] = {
         ApiType = { value = "ControlPlane" },
      },
   },
})

M.GetPrivateGraphEndpoint = schema.operation({
   id = id.from("com.amazonaws.neptunegraph", "GetPrivateGraphEndpoint"),
   input = M.GetPrivateGraphEndpointInput,
   output = M.GetPrivateGraphEndpointOutput,
   traits = {
      [traits.HTTP] = { method = "GET", path = "/graphs/{graphIdentifier}/endpoints/{vpcId}" },
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
      [traits.STATIC_CONTEXT_PARAMS] = {
         ApiType = { value = "ControlPlane" },
      },
   },
})

M.GetQuery = schema.operation({
   id = id.from("com.amazonaws.neptunegraph", "GetQuery"),
   input = M.GetQueryInput,
   output = M.GetQueryOutput,
   traits = {
      [traits.HTTP] = { method = "GET", path = "/queries/{queryId}" },
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
      [traits.STATIC_CONTEXT_PARAMS] = {
         ApiType = { value = "DataPlane" },
      },
   },
})

M.ListExportTasks = schema.operation({
   id = id.from("com.amazonaws.neptunegraph", "ListExportTasks"),
   input = M.ListExportTasksInput,
   output = M.ListExportTasksOutput,
   traits = {
      [traits.HTTP] = { method = "GET", path = "/exporttasks" },
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
      [traits.STATIC_CONTEXT_PARAMS] = {
         ApiType = { value = "ControlPlane" },
      },
   },
})

M.ListGraphs = schema.operation({
   id = id.from("com.amazonaws.neptunegraph", "ListGraphs"),
   input = M.ListGraphsInput,
   output = M.ListGraphsOutput,
   traits = {
      [traits.HTTP] = { method = "GET", path = "/graphs" },
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
      [traits.STATIC_CONTEXT_PARAMS] = {
         ApiType = { value = "ControlPlane" },
      },
   },
})

M.ListGraphSnapshots = schema.operation({
   id = id.from("com.amazonaws.neptunegraph", "ListGraphSnapshots"),
   input = M.ListGraphSnapshotsInput,
   output = M.ListGraphSnapshotsOutput,
   traits = {
      [traits.HTTP] = { method = "GET", path = "/snapshots" },
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
      [traits.STATIC_CONTEXT_PARAMS] = {
         ApiType = { value = "ControlPlane" },
      },
   },
})

M.ListImportTasks = schema.operation({
   id = id.from("com.amazonaws.neptunegraph", "ListImportTasks"),
   input = M.ListImportTasksInput,
   output = M.ListImportTasksOutput,
   traits = {
      [traits.HTTP] = { method = "GET", path = "/importtasks" },
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
      [traits.STATIC_CONTEXT_PARAMS] = {
         ApiType = { value = "ControlPlane" },
      },
   },
})

M.ListPrivateGraphEndpoints = schema.operation({
   id = id.from("com.amazonaws.neptunegraph", "ListPrivateGraphEndpoints"),
   input = M.ListPrivateGraphEndpointsInput,
   output = M.ListPrivateGraphEndpointsOutput,
   traits = {
      [traits.HTTP] = { method = "GET", path = "/graphs/{graphIdentifier}/endpoints/" },
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
      [traits.STATIC_CONTEXT_PARAMS] = {
         ApiType = { value = "ControlPlane" },
      },
   },
})

M.ListQueries = schema.operation({
   id = id.from("com.amazonaws.neptunegraph", "ListQueries"),
   input = M.ListQueriesInput,
   output = M.ListQueriesOutput,
   traits = {
      [traits.HTTP] = { method = "GET", path = "/queries" },
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
      [traits.STATIC_CONTEXT_PARAMS] = {
         ApiType = { value = "DataPlane" },
      },
   },
})

M.ListTagsForResource = schema.operation({
   id = id.from("com.amazonaws.neptunegraph", "ListTagsForResource"),
   input = M.ListTagsForResourceInput,
   output = M.ListTagsForResourceOutput,
   traits = {
      [traits.HTTP] = { method = "GET", path = "/tags/{resourceArn}" },
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
      [traits.STATIC_CONTEXT_PARAMS] = {
         ApiType = { value = "ControlPlane" },
      },
   },
})

M.ResetGraph = schema.operation({
   id = id.from("com.amazonaws.neptunegraph", "ResetGraph"),
   input = M.ResetGraphInput,
   output = M.ResetGraphOutput,
   traits = {
      [traits.HTTP] = { method = "PUT", path = "/graphs/{graphIdentifier}" },
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
      [traits.STATIC_CONTEXT_PARAMS] = {
         ApiType = { value = "ControlPlane" },
      },
   },
})

M.RestoreGraphFromSnapshot = schema.operation({
   id = id.from("com.amazonaws.neptunegraph", "RestoreGraphFromSnapshot"),
   input = M.RestoreGraphFromSnapshotInput,
   output = M.RestoreGraphFromSnapshotOutput,
   traits = {
      [traits.HTTP] = { method = "POST", path = "/snapshots/{snapshotIdentifier}/restore" },
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
      [traits.STATIC_CONTEXT_PARAMS] = {
         ApiType = { value = "ControlPlane" },
      },
   },
})

M.StartExportTask = schema.operation({
   id = id.from("com.amazonaws.neptunegraph", "StartExportTask"),
   input = M.StartExportTaskInput,
   output = M.StartExportTaskOutput,
   traits = {
      [traits.HTTP] = { method = "POST", path = "/exporttasks" },
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
      [traits.STATIC_CONTEXT_PARAMS] = {
         ApiType = { value = "ControlPlane" },
      },
   },
})

M.StartGraph = schema.operation({
   id = id.from("com.amazonaws.neptunegraph", "StartGraph"),
   input = M.StartGraphInput,
   output = M.StartGraphOutput,
   traits = {
      [traits.HTTP] = { method = "POST", path = "/graphs/{graphIdentifier}/start" },
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
      [traits.STATIC_CONTEXT_PARAMS] = {
         ApiType = { value = "ControlPlane" },
      },
   },
})

M.StartImportTask = schema.operation({
   id = id.from("com.amazonaws.neptunegraph", "StartImportTask"),
   input = M.StartImportTaskInput,
   output = M.StartImportTaskOutput,
   traits = {
      [traits.HTTP] = { method = "POST", path = "/graphs/{graphIdentifier}/importtasks" },
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
      [traits.STATIC_CONTEXT_PARAMS] = {
         ApiType = { value = "ControlPlane" },
      },
   },
})

M.StopGraph = schema.operation({
   id = id.from("com.amazonaws.neptunegraph", "StopGraph"),
   input = M.StopGraphInput,
   output = M.StopGraphOutput,
   traits = {
      [traits.HTTP] = { method = "POST", path = "/graphs/{graphIdentifier}/stop" },
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
      [traits.STATIC_CONTEXT_PARAMS] = {
         ApiType = { value = "ControlPlane" },
      },
   },
})

M.TagResource = schema.operation({
   id = id.from("com.amazonaws.neptunegraph", "TagResource"),
   input = M.TagResourceInput,
   output = M.TagResourceOutput,
   traits = {
      [traits.HTTP] = { method = "POST", path = "/tags/{resourceArn}" },
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
      [traits.STATIC_CONTEXT_PARAMS] = {
         ApiType = { value = "ControlPlane" },
      },
   },
})

M.UntagResource = schema.operation({
   id = id.from("com.amazonaws.neptunegraph", "UntagResource"),
   input = M.UntagResourceInput,
   output = M.UntagResourceOutput,
   traits = {
      [traits.HTTP] = { method = "DELETE", path = "/tags/{resourceArn}" },
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
      [traits.STATIC_CONTEXT_PARAMS] = {
         ApiType = { value = "ControlPlane" },
      },
   },
})

M.UpdateGraph = schema.operation({
   id = id.from("com.amazonaws.neptunegraph", "UpdateGraph"),
   input = M.UpdateGraphInput,
   output = M.UpdateGraphOutput,
   traits = {
      [traits.HTTP] = { method = "PATCH", path = "/graphs/{graphIdentifier}" },
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
      [traits.STATIC_CONTEXT_PARAMS] = {
         ApiType = { value = "ControlPlane" },
      },
   },
})

return M
