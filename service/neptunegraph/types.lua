local M = {}

M.AccessDeniedException = {
    type = "structure",
    id = "AccessDeniedException",
    error = "client",
    members = {
        message = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.CancelQueryInput = {
    type = "structure",
    id = "CancelQueryInput",
    members = {
        graphIdentifier = {
            type = "string",
            traits = {
                http_header = "graphIdentifier",
                required = true,
            },
        },
        queryId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.CancelQueryOutput = {
    type = "structure",
    id = "CancelQueryOutput",
}

M.InternalServerException = {
    type = "structure",
    id = "InternalServerException",
    error = "server",
    members = {
        message = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.ResourceNotFoundException = {
    type = "structure",
    id = "ResourceNotFoundException",
    error = "client",
    members = {
        message = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.ThrottlingException = {
    type = "structure",
    id = "ThrottlingException",
    error = "client",
    members = {
        message = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.ValidationExceptionReason = {
    CONSTRAINT_VIOLATION = "CONSTRAINT_VIOLATION",
    ILLEGAL_ARGUMENT = "ILLEGAL_ARGUMENT",
    MALFORMED_QUERY = "MALFORMED_QUERY",
    QUERY_CANCELLED = "QUERY_CANCELLED",
    QUERY_TOO_LARGE = "QUERY_TOO_LARGE",
    UNSUPPORTED_OPERATION = "UNSUPPORTED_OPERATION",
    BAD_REQUEST = "BAD_REQUEST",
}

M.ValidationException = {
    type = "structure",
    id = "ValidationException",
    error = "client",
    members = {
        message = {
            type = "string",
            traits = {
                required = true,
            },
        },
        reason = {
            type = "string",
        },
    },
}

M.ConflictExceptionReason = {
    CONCURRENT_MODIFICATION = "CONCURRENT_MODIFICATION",
}

M.ConflictException = {
    type = "structure",
    id = "ConflictException",
    error = "client",
    members = {
        message = {
            type = "string",
            traits = {
                required = true,
            },
        },
        reason = {
            type = "string",
        },
    },
}

M.ExplainMode = {
    STATIC = "STATIC",
    DETAILS = "DETAILS",
}

M.QueryLanguage = {
    OPEN_CYPHER = "OPEN_CYPHER",
}

M.PlanCacheType = {
    ENABLED = "ENABLED",
    DISABLED = "DISABLED",
    AUTO = "AUTO",
}

M.ExecuteQueryInput = {
    type = "structure",
    id = "ExecuteQueryInput",
    members = {
        graphIdentifier = {
            type = "string",
            traits = {
                http_header = "graphIdentifier",
                required = true,
            },
        },
        queryString = {
            type = "string",
            traits = {
                json_name = "query",
                required = true,
            },
        },
        language = {
            type = "string",
            traits = {
                required = true,
            },
        },
        parameters = {
            type = "map",
            key = { type = "string" },
            value = { type = "document" },
        },
        planCache = {
            type = "string",
        },
        explainMode = {
            type = "string",
            traits = {
                json_name = "explain",
            },
        },
        queryTimeoutMilliseconds = {
            type = "integer",
        },
    },
}

M.ExecuteQueryOutput = {
    type = "structure",
    id = "ExecuteQueryOutput",
    members = {
        payload = {
            type = "blob",
            traits = {
                http_payload = true,
                required = true,
            },
        },
    },
}

M.UnprocessableExceptionReason = {
    QUERY_TIMEOUT = "QUERY_TIMEOUT",
    INTERNAL_LIMIT_EXCEEDED = "INTERNAL_LIMIT_EXCEEDED",
    MEMORY_LIMIT_EXCEEDED = "MEMORY_LIMIT_EXCEEDED",
    STORAGE_LIMIT_EXCEEDED = "STORAGE_LIMIT_EXCEEDED",
    PARTITION_FULL = "PARTITION_FULL",
}

M.UnprocessableException = {
    type = "structure",
    id = "UnprocessableException",
    error = "client",
    members = {
        message = {
            type = "string",
            traits = {
                required = true,
            },
        },
        reason = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.GraphSummaryMode = {
    BASIC = "BASIC",
    DETAILED = "DETAILED",
}

M.GetGraphSummaryInput = {
    type = "structure",
    id = "GetGraphSummaryInput",
    members = {
        graphIdentifier = {
            type = "string",
            traits = {
                http_header = "graphIdentifier",
                required = true,
            },
        },
        mode = {
            type = "string",
            traits = {
                http_query = "mode",
            },
        },
    },
}

M.EdgeStructure = {
    type = "structure",
    id = "EdgeStructure",
    members = {
        count = {
            type = "long",
        },
        edgeProperties = {
            type = "list",
            member = { type = "string" },
        },
    },
}

M.NodeStructure = {
    type = "structure",
    id = "NodeStructure",
    members = {
        count = {
            type = "long",
        },
        nodeProperties = {
            type = "list",
            member = { type = "string" },
        },
        distinctOutgoingEdgeLabels = {
            type = "list",
            member = { type = "string" },
        },
    },
}

M.GraphDataSummary = {
    type = "structure",
    id = "GraphDataSummary",
    members = {
        numNodes = {
            type = "long",
        },
        numEdges = {
            type = "long",
        },
        numNodeLabels = {
            type = "long",
        },
        numEdgeLabels = {
            type = "long",
        },
        nodeLabels = {
            type = "list",
            member = { type = "string" },
        },
        edgeLabels = {
            type = "list",
            member = { type = "string" },
        },
        numNodeProperties = {
            type = "long",
        },
        numEdgeProperties = {
            type = "long",
        },
        nodeProperties = {
            type = "list",
            member = { type = "map" },
        },
        edgeProperties = {
            type = "list",
            member = { type = "map" },
        },
        totalNodePropertyValues = {
            type = "long",
        },
        totalEdgePropertyValues = {
            type = "long",
        },
        nodeStructures = {
            type = "list",
            member = M.NodeStructure,
        },
        edgeStructures = {
            type = "list",
            member = M.EdgeStructure,
        },
    },
}

M.GetGraphSummaryOutput = {
    type = "structure",
    id = "GetGraphSummaryOutput",
    members = {
        version = {
            type = "string",
        },
        lastStatisticsComputationTime = {
            type = "timestamp",
            traits = {
                timestamp_format = "date-time",
            },
        },
        graphSummary = M.GraphDataSummary,
    },
}

M.GetQueryInput = {
    type = "structure",
    id = "GetQueryInput",
    members = {
        graphIdentifier = {
            type = "string",
            traits = {
                http_header = "graphIdentifier",
                required = true,
            },
        },
        queryId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.QueryState = {
    RUNNING = "RUNNING",
    WAITING = "WAITING",
    CANCELLING = "CANCELLING",
}

M.GetQueryOutput = {
    type = "structure",
    id = "GetQueryOutput",
    members = {
        id = {
            type = "string",
        },
        queryString = {
            type = "string",
        },
        waited = {
            type = "integer",
        },
        elapsed = {
            type = "integer",
        },
        state = {
            type = "string",
        },
    },
}

M.VectorSearchConfiguration = {
    type = "structure",
    id = "VectorSearchConfiguration",
    members = {
        dimension = {
            type = "integer",
            traits = {
                required = true,
            },
        },
    },
}

M.CreateGraphInput = {
    type = "structure",
    id = "CreateGraphInput",
    members = {
        graphName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        tags = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
        publicConnectivity = {
            type = "boolean",
        },
        kmsKeyIdentifier = {
            type = "string",
        },
        vectorSearchConfiguration = M.VectorSearchConfiguration,
        replicaCount = {
            type = "integer",
        },
        deletionProtection = {
            type = "boolean",
        },
        provisionedMemory = {
            type = "integer",
            traits = {
                required = true,
            },
        },
    },
}

M.GraphStatus = {
    CREATING = "CREATING",
    AVAILABLE = "AVAILABLE",
    DELETING = "DELETING",
    RESETTING = "RESETTING",
    UPDATING = "UPDATING",
    SNAPSHOTTING = "SNAPSHOTTING",
    FAILED = "FAILED",
    IMPORTING = "IMPORTING",
    STARTING = "STARTING",
    STOPPING = "STOPPING",
    STOPPED = "STOPPED",
}

M.CreateGraphOutput = {
    type = "structure",
    id = "CreateGraphOutput",
    members = {
        id = {
            type = "string",
            traits = {
                required = true,
            },
        },
        name = {
            type = "string",
            traits = {
                required = true,
            },
        },
        arn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        status = {
            type = "string",
        },
        statusReason = {
            type = "string",
        },
        createTime = {
            type = "timestamp",
        },
        provisionedMemory = {
            type = "integer",
        },
        endpoint = {
            type = "string",
        },
        publicConnectivity = {
            type = "boolean",
        },
        vectorSearchConfiguration = M.VectorSearchConfiguration,
        replicaCount = {
            type = "integer",
        },
        kmsKeyIdentifier = {
            type = "string",
        },
        sourceSnapshotId = {
            type = "string",
        },
        deletionProtection = {
            type = "boolean",
        },
        buildNumber = {
            type = "string",
        },
    },
}

M.ServiceQuotaExceededException = {
    type = "structure",
    id = "ServiceQuotaExceededException",
    error = "client",
    members = {
        message = {
            type = "string",
            traits = {
                required = true,
            },
        },
        resourceId = {
            type = "string",
        },
        resourceType = {
            type = "string",
        },
        serviceCode = {
            type = "string",
        },
        quotaCode = {
            type = "string",
        },
    },
}

M.DeleteGraphInput = {
    type = "structure",
    id = "DeleteGraphInput",
    members = {
        graphIdentifier = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        skipSnapshot = {
            type = "boolean",
            traits = {
                http_query = "skipSnapshot",
                required = true,
            },
        },
    },
}

M.DeleteGraphOutput = {
    type = "structure",
    id = "DeleteGraphOutput",
    members = {
        id = {
            type = "string",
            traits = {
                required = true,
            },
        },
        name = {
            type = "string",
            traits = {
                required = true,
            },
        },
        arn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        status = {
            type = "string",
        },
        statusReason = {
            type = "string",
        },
        createTime = {
            type = "timestamp",
        },
        provisionedMemory = {
            type = "integer",
        },
        endpoint = {
            type = "string",
        },
        publicConnectivity = {
            type = "boolean",
        },
        vectorSearchConfiguration = M.VectorSearchConfiguration,
        replicaCount = {
            type = "integer",
        },
        kmsKeyIdentifier = {
            type = "string",
        },
        sourceSnapshotId = {
            type = "string",
        },
        deletionProtection = {
            type = "boolean",
        },
        buildNumber = {
            type = "string",
        },
    },
}

M.GetGraphInput = {
    type = "structure",
    id = "GetGraphInput",
    members = {
        graphIdentifier = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.GetGraphOutput = {
    type = "structure",
    id = "GetGraphOutput",
    members = {
        id = {
            type = "string",
            traits = {
                required = true,
            },
        },
        name = {
            type = "string",
            traits = {
                required = true,
            },
        },
        arn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        status = {
            type = "string",
        },
        statusReason = {
            type = "string",
        },
        createTime = {
            type = "timestamp",
        },
        provisionedMemory = {
            type = "integer",
        },
        endpoint = {
            type = "string",
        },
        publicConnectivity = {
            type = "boolean",
        },
        vectorSearchConfiguration = M.VectorSearchConfiguration,
        replicaCount = {
            type = "integer",
        },
        kmsKeyIdentifier = {
            type = "string",
        },
        sourceSnapshotId = {
            type = "string",
        },
        deletionProtection = {
            type = "boolean",
        },
        buildNumber = {
            type = "string",
        },
    },
}

M.ListGraphsInput = {
    type = "structure",
    id = "ListGraphsInput",
    members = {
        nextToken = {
            type = "string",
            traits = {
                http_query = "nextToken",
            },
        },
        maxResults = {
            type = "integer",
            traits = {
                http_query = "maxResults",
            },
        },
    },
}

M.GraphSummary = {
    type = "structure",
    id = "GraphSummary",
    members = {
        id = {
            type = "string",
            traits = {
                required = true,
            },
        },
        name = {
            type = "string",
            traits = {
                required = true,
            },
        },
        arn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        status = {
            type = "string",
        },
        provisionedMemory = {
            type = "integer",
        },
        publicConnectivity = {
            type = "boolean",
        },
        endpoint = {
            type = "string",
        },
        replicaCount = {
            type = "integer",
        },
        kmsKeyIdentifier = {
            type = "string",
        },
        deletionProtection = {
            type = "boolean",
        },
    },
}

M.ListGraphsOutput = {
    type = "structure",
    id = "ListGraphsOutput",
    members = {
        graphs = {
            type = "list",
            member = M.GraphSummary,
            traits = {
                required = true,
            },
        },
        nextToken = {
            type = "string",
        },
    },
}

M.ResetGraphInput = {
    type = "structure",
    id = "ResetGraphInput",
    members = {
        graphIdentifier = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        skipSnapshot = {
            type = "boolean",
            traits = {
                required = true,
            },
        },
    },
}

M.ResetGraphOutput = {
    type = "structure",
    id = "ResetGraphOutput",
    members = {
        id = {
            type = "string",
            traits = {
                required = true,
            },
        },
        name = {
            type = "string",
            traits = {
                required = true,
            },
        },
        arn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        status = {
            type = "string",
        },
        statusReason = {
            type = "string",
        },
        createTime = {
            type = "timestamp",
        },
        provisionedMemory = {
            type = "integer",
        },
        endpoint = {
            type = "string",
        },
        publicConnectivity = {
            type = "boolean",
        },
        vectorSearchConfiguration = M.VectorSearchConfiguration,
        replicaCount = {
            type = "integer",
        },
        kmsKeyIdentifier = {
            type = "string",
        },
        sourceSnapshotId = {
            type = "string",
        },
        deletionProtection = {
            type = "boolean",
        },
        buildNumber = {
            type = "string",
        },
    },
}

M.RestoreGraphFromSnapshotInput = {
    type = "structure",
    id = "RestoreGraphFromSnapshotInput",
    members = {
        snapshotIdentifier = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        graphName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        provisionedMemory = {
            type = "integer",
        },
        deletionProtection = {
            type = "boolean",
        },
        tags = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
        replicaCount = {
            type = "integer",
        },
        publicConnectivity = {
            type = "boolean",
        },
    },
}

M.RestoreGraphFromSnapshotOutput = {
    type = "structure",
    id = "RestoreGraphFromSnapshotOutput",
    members = {
        id = {
            type = "string",
            traits = {
                required = true,
            },
        },
        name = {
            type = "string",
            traits = {
                required = true,
            },
        },
        arn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        status = {
            type = "string",
        },
        statusReason = {
            type = "string",
        },
        createTime = {
            type = "timestamp",
        },
        provisionedMemory = {
            type = "integer",
        },
        endpoint = {
            type = "string",
        },
        publicConnectivity = {
            type = "boolean",
        },
        vectorSearchConfiguration = M.VectorSearchConfiguration,
        replicaCount = {
            type = "integer",
        },
        kmsKeyIdentifier = {
            type = "string",
        },
        sourceSnapshotId = {
            type = "string",
        },
        deletionProtection = {
            type = "boolean",
        },
        buildNumber = {
            type = "string",
        },
    },
}

M.StartGraphInput = {
    type = "structure",
    id = "StartGraphInput",
    members = {
        graphIdentifier = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.StartGraphOutput = {
    type = "structure",
    id = "StartGraphOutput",
    members = {
        id = {
            type = "string",
            traits = {
                required = true,
            },
        },
        name = {
            type = "string",
            traits = {
                required = true,
            },
        },
        arn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        status = {
            type = "string",
        },
        statusReason = {
            type = "string",
        },
        createTime = {
            type = "timestamp",
        },
        provisionedMemory = {
            type = "integer",
        },
        endpoint = {
            type = "string",
        },
        publicConnectivity = {
            type = "boolean",
        },
        vectorSearchConfiguration = M.VectorSearchConfiguration,
        replicaCount = {
            type = "integer",
        },
        kmsKeyIdentifier = {
            type = "string",
        },
        sourceSnapshotId = {
            type = "string",
        },
        deletionProtection = {
            type = "boolean",
        },
        buildNumber = {
            type = "string",
        },
    },
}

M.StopGraphInput = {
    type = "structure",
    id = "StopGraphInput",
    members = {
        graphIdentifier = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.StopGraphOutput = {
    type = "structure",
    id = "StopGraphOutput",
    members = {
        id = {
            type = "string",
            traits = {
                required = true,
            },
        },
        name = {
            type = "string",
            traits = {
                required = true,
            },
        },
        arn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        status = {
            type = "string",
        },
        statusReason = {
            type = "string",
        },
        createTime = {
            type = "timestamp",
        },
        provisionedMemory = {
            type = "integer",
        },
        endpoint = {
            type = "string",
        },
        publicConnectivity = {
            type = "boolean",
        },
        vectorSearchConfiguration = M.VectorSearchConfiguration,
        replicaCount = {
            type = "integer",
        },
        kmsKeyIdentifier = {
            type = "string",
        },
        sourceSnapshotId = {
            type = "string",
        },
        deletionProtection = {
            type = "boolean",
        },
        buildNumber = {
            type = "string",
        },
    },
}

M.UpdateGraphInput = {
    type = "structure",
    id = "UpdateGraphInput",
    members = {
        graphIdentifier = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        publicConnectivity = {
            type = "boolean",
        },
        provisionedMemory = {
            type = "integer",
        },
        deletionProtection = {
            type = "boolean",
        },
    },
}

M.UpdateGraphOutput = {
    type = "structure",
    id = "UpdateGraphOutput",
    members = {
        id = {
            type = "string",
            traits = {
                required = true,
            },
        },
        name = {
            type = "string",
            traits = {
                required = true,
            },
        },
        arn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        status = {
            type = "string",
        },
        statusReason = {
            type = "string",
        },
        createTime = {
            type = "timestamp",
        },
        provisionedMemory = {
            type = "integer",
        },
        endpoint = {
            type = "string",
        },
        publicConnectivity = {
            type = "boolean",
        },
        vectorSearchConfiguration = M.VectorSearchConfiguration,
        replicaCount = {
            type = "integer",
        },
        kmsKeyIdentifier = {
            type = "string",
        },
        sourceSnapshotId = {
            type = "string",
        },
        deletionProtection = {
            type = "boolean",
        },
        buildNumber = {
            type = "string",
        },
    },
}

M.QueryStateInput = {
    ALL = "ALL",
    RUNNING = "RUNNING",
    WAITING = "WAITING",
    CANCELLING = "CANCELLING",
}

M.ListQueriesInput = {
    type = "structure",
    id = "ListQueriesInput",
    members = {
        graphIdentifier = {
            type = "string",
            traits = {
                http_header = "graphIdentifier",
                required = true,
            },
        },
        maxResults = {
            type = "integer",
            traits = {
                http_query = "maxResults",
                required = true,
            },
        },
        state = {
            type = "string",
            traits = {
                http_query = "state",
            },
        },
    },
}

M.QuerySummary = {
    type = "structure",
    id = "QuerySummary",
    members = {
        id = {
            type = "string",
        },
        queryString = {
            type = "string",
        },
        waited = {
            type = "integer",
        },
        elapsed = {
            type = "integer",
        },
        state = {
            type = "string",
        },
    },
}

M.ListQueriesOutput = {
    type = "structure",
    id = "ListQueriesOutput",
    members = {
        queries = {
            type = "list",
            member = M.QuerySummary,
            traits = {
                required = true,
            },
        },
    },
}

M.ListTagsForResourceInput = {
    type = "structure",
    id = "ListTagsForResourceInput",
    members = {
        resourceArn = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.ListTagsForResourceOutput = {
    type = "structure",
    id = "ListTagsForResourceOutput",
    members = {
        tags = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
    },
}

M.CreatePrivateGraphEndpointInput = {
    type = "structure",
    id = "CreatePrivateGraphEndpointInput",
    members = {
        graphIdentifier = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        vpcId = {
            type = "string",
        },
        subnetIds = {
            type = "list",
            member = { type = "string" },
        },
        vpcSecurityGroupIds = {
            type = "list",
            member = { type = "string" },
        },
    },
}

M.PrivateGraphEndpointStatus = {
    CREATING = "CREATING",
    AVAILABLE = "AVAILABLE",
    DELETING = "DELETING",
    FAILED = "FAILED",
}

M.CreatePrivateGraphEndpointOutput = {
    type = "structure",
    id = "CreatePrivateGraphEndpointOutput",
    members = {
        vpcId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        subnetIds = {
            type = "list",
            member = { type = "string" },
            traits = {
                required = true,
            },
        },
        status = {
            type = "string",
            traits = {
                required = true,
            },
        },
        vpcEndpointId = {
            type = "string",
        },
    },
}

M.DeletePrivateGraphEndpointInput = {
    type = "structure",
    id = "DeletePrivateGraphEndpointInput",
    members = {
        graphIdentifier = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        vpcId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.DeletePrivateGraphEndpointOutput = {
    type = "structure",
    id = "DeletePrivateGraphEndpointOutput",
    members = {
        vpcId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        subnetIds = {
            type = "list",
            member = { type = "string" },
            traits = {
                required = true,
            },
        },
        status = {
            type = "string",
            traits = {
                required = true,
            },
        },
        vpcEndpointId = {
            type = "string",
        },
    },
}

M.GetPrivateGraphEndpointInput = {
    type = "structure",
    id = "GetPrivateGraphEndpointInput",
    members = {
        graphIdentifier = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        vpcId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.GetPrivateGraphEndpointOutput = {
    type = "structure",
    id = "GetPrivateGraphEndpointOutput",
    members = {
        vpcId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        subnetIds = {
            type = "list",
            member = { type = "string" },
            traits = {
                required = true,
            },
        },
        status = {
            type = "string",
            traits = {
                required = true,
            },
        },
        vpcEndpointId = {
            type = "string",
        },
    },
}

M.ListPrivateGraphEndpointsInput = {
    type = "structure",
    id = "ListPrivateGraphEndpointsInput",
    members = {
        graphIdentifier = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        nextToken = {
            type = "string",
            traits = {
                http_query = "nextToken",
            },
        },
        maxResults = {
            type = "integer",
            traits = {
                http_query = "maxResults",
            },
        },
    },
}

M.PrivateGraphEndpointSummary = {
    type = "structure",
    id = "PrivateGraphEndpointSummary",
    members = {
        vpcId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        subnetIds = {
            type = "list",
            member = { type = "string" },
            traits = {
                required = true,
            },
        },
        status = {
            type = "string",
            traits = {
                required = true,
            },
        },
        vpcEndpointId = {
            type = "string",
        },
    },
}

M.ListPrivateGraphEndpointsOutput = {
    type = "structure",
    id = "ListPrivateGraphEndpointsOutput",
    members = {
        privateGraphEndpoints = {
            type = "list",
            member = M.PrivateGraphEndpointSummary,
            traits = {
                required = true,
            },
        },
        nextToken = {
            type = "string",
        },
    },
}

M.CreateGraphSnapshotInput = {
    type = "structure",
    id = "CreateGraphSnapshotInput",
    members = {
        graphIdentifier = {
            type = "string",
            traits = {
                required = true,
            },
        },
        snapshotName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        tags = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
    },
}

M.SnapshotStatus = {
    CREATING = "CREATING",
    AVAILABLE = "AVAILABLE",
    DELETING = "DELETING",
    FAILED = "FAILED",
}

M.CreateGraphSnapshotOutput = {
    type = "structure",
    id = "CreateGraphSnapshotOutput",
    members = {
        id = {
            type = "string",
            traits = {
                required = true,
            },
        },
        name = {
            type = "string",
            traits = {
                required = true,
            },
        },
        arn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        sourceGraphId = {
            type = "string",
        },
        snapshotCreateTime = {
            type = "timestamp",
        },
        status = {
            type = "string",
        },
        kmsKeyIdentifier = {
            type = "string",
        },
    },
}

M.DeleteGraphSnapshotInput = {
    type = "structure",
    id = "DeleteGraphSnapshotInput",
    members = {
        snapshotIdentifier = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.DeleteGraphSnapshotOutput = {
    type = "structure",
    id = "DeleteGraphSnapshotOutput",
    members = {
        id = {
            type = "string",
            traits = {
                required = true,
            },
        },
        name = {
            type = "string",
            traits = {
                required = true,
            },
        },
        arn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        sourceGraphId = {
            type = "string",
        },
        snapshotCreateTime = {
            type = "timestamp",
        },
        status = {
            type = "string",
        },
        kmsKeyIdentifier = {
            type = "string",
        },
    },
}

M.GetGraphSnapshotInput = {
    type = "structure",
    id = "GetGraphSnapshotInput",
    members = {
        snapshotIdentifier = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.GetGraphSnapshotOutput = {
    type = "structure",
    id = "GetGraphSnapshotOutput",
    members = {
        id = {
            type = "string",
            traits = {
                required = true,
            },
        },
        name = {
            type = "string",
            traits = {
                required = true,
            },
        },
        arn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        sourceGraphId = {
            type = "string",
        },
        snapshotCreateTime = {
            type = "timestamp",
        },
        status = {
            type = "string",
        },
        kmsKeyIdentifier = {
            type = "string",
        },
    },
}

M.ListGraphSnapshotsInput = {
    type = "structure",
    id = "ListGraphSnapshotsInput",
    members = {
        graphIdentifier = {
            type = "string",
            traits = {
                http_query = "graphIdentifier",
            },
        },
        nextToken = {
            type = "string",
            traits = {
                http_query = "nextToken",
            },
        },
        maxResults = {
            type = "integer",
            traits = {
                http_query = "maxResults",
            },
        },
    },
}

M.GraphSnapshotSummary = {
    type = "structure",
    id = "GraphSnapshotSummary",
    members = {
        id = {
            type = "string",
            traits = {
                required = true,
            },
        },
        name = {
            type = "string",
            traits = {
                required = true,
            },
        },
        arn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        sourceGraphId = {
            type = "string",
        },
        snapshotCreateTime = {
            type = "timestamp",
        },
        status = {
            type = "string",
        },
        kmsKeyIdentifier = {
            type = "string",
        },
    },
}

M.ListGraphSnapshotsOutput = {
    type = "structure",
    id = "ListGraphSnapshotsOutput",
    members = {
        graphSnapshots = {
            type = "list",
            member = M.GraphSnapshotSummary,
            traits = {
                required = true,
            },
        },
        nextToken = {
            type = "string",
        },
    },
}

M.TagResourceInput = {
    type = "structure",
    id = "TagResourceInput",
    members = {
        resourceArn = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        tags = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
            traits = {
                required = true,
            },
        },
    },
}

M.TagResourceOutput = {
    type = "structure",
    id = "TagResourceOutput",
}

M.CancelExportTaskInput = {
    type = "structure",
    id = "CancelExportTaskInput",
    members = {
        taskIdentifier = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.ExportFormat = {
    PARQUET = "PARQUET",
    CSV = "CSV",
}

M.ParquetType = {
    COLUMNAR = "COLUMNAR",
}

M.ExportTaskStatus = {
    INITIALIZING = "INITIALIZING",
    EXPORTING = "EXPORTING",
    SUCCEEDED = "SUCCEEDED",
    FAILED = "FAILED",
    CANCELLING = "CANCELLING",
    CANCELLED = "CANCELLED",
    DELETED = "DELETED",
}

M.CancelExportTaskOutput = {
    type = "structure",
    id = "CancelExportTaskOutput",
    members = {
        graphId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        roleArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        taskId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        status = {
            type = "string",
            traits = {
                required = true,
            },
        },
        format = {
            type = "string",
            traits = {
                required = true,
            },
        },
        destination = {
            type = "string",
            traits = {
                required = true,
            },
        },
        kmsKeyIdentifier = {
            type = "string",
            traits = {
                required = true,
            },
        },
        parquetType = {
            type = "string",
        },
        statusReason = {
            type = "string",
        },
    },
}

M.CancelImportTaskInput = {
    type = "structure",
    id = "CancelImportTaskInput",
    members = {
        taskIdentifier = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.Format = {
    CSV = "CSV",
    OPEN_CYPHER = "OPEN_CYPHER",
    PARQUET = "PARQUET",
    NTRIPLES = "NTRIPLES",
}

M.ImportTaskStatus = {
    INITIALIZING = "INITIALIZING",
    EXPORTING = "EXPORTING",
    ANALYZING_DATA = "ANALYZING_DATA",
    IMPORTING = "IMPORTING",
    REPROVISIONING = "REPROVISIONING",
    ROLLING_BACK = "ROLLING_BACK",
    SUCCEEDED = "SUCCEEDED",
    FAILED = "FAILED",
    CANCELLING = "CANCELLING",
    CANCELLED = "CANCELLED",
    DELETED = "DELETED",
}

M.CancelImportTaskOutput = {
    type = "structure",
    id = "CancelImportTaskOutput",
    members = {
        graphId = {
            type = "string",
        },
        taskId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        source = {
            type = "string",
            traits = {
                required = true,
            },
        },
        format = {
            type = "string",
        },
        parquetType = {
            type = "string",
        },
        roleArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        status = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.BlankNodeHandling = {
    CONVERT_TO_IRI = "convertToIri",
}

M.NeptuneImportOptions = {
    type = "structure",
    id = "NeptuneImportOptions",
    members = {
        s3ExportPath = {
            type = "string",
            traits = {
                required = true,
            },
        },
        s3ExportKmsKeyId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        preserveDefaultVertexLabels = {
            type = "boolean",
        },
        preserveEdgeIds = {
            type = "boolean",
        },
    },
}

M.ImportOptions = {
    type = "union",
    id = "ImportOptions",
    members = {
        neptune = M.NeptuneImportOptions,
    },
}

M.CreateGraphUsingImportTaskInput = {
    type = "structure",
    id = "CreateGraphUsingImportTaskInput",
    members = {
        graphName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        tags = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
        publicConnectivity = {
            type = "boolean",
        },
        kmsKeyIdentifier = {
            type = "string",
        },
        vectorSearchConfiguration = M.VectorSearchConfiguration,
        replicaCount = {
            type = "integer",
        },
        deletionProtection = {
            type = "boolean",
        },
        importOptions = M.ImportOptions,
        maxProvisionedMemory = {
            type = "integer",
        },
        minProvisionedMemory = {
            type = "integer",
        },
        failOnError = {
            type = "boolean",
        },
        source = {
            type = "string",
            traits = {
                required = true,
            },
        },
        format = {
            type = "string",
        },
        parquetType = {
            type = "string",
        },
        blankNodeHandling = {
            type = "string",
        },
        roleArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.CreateGraphUsingImportTaskOutput = {
    type = "structure",
    id = "CreateGraphUsingImportTaskOutput",
    members = {
        graphId = {
            type = "string",
        },
        taskId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        source = {
            type = "string",
            traits = {
                required = true,
            },
        },
        format = {
            type = "string",
        },
        parquetType = {
            type = "string",
        },
        roleArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        status = {
            type = "string",
            traits = {
                required = true,
            },
        },
        importOptions = M.ImportOptions,
    },
}

M.GetExportTaskInput = {
    type = "structure",
    id = "GetExportTaskInput",
    members = {
        taskIdentifier = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.MultiValueHandlingType = {
    TO_LIST = "TO_LIST",
    PICK_FIRST = "PICK_FIRST",
}

M.ExportFilterPropertyAttributes = {
    type = "structure",
    id = "ExportFilterPropertyAttributes",
    members = {
        outputType = {
            type = "string",
        },
        sourcePropertyName = {
            type = "string",
        },
        multiValueHandling = {
            type = "string",
            traits = {
                default = "PICK_FIRST",
            },
        },
    },
}

M.ExportFilterElement = {
    type = "structure",
    id = "ExportFilterElement",
    members = {
        properties = {
            type = "map",
            key = { type = "string" },
            value = M.ExportFilterPropertyAttributes,
        },
    },
}

M.ExportFilter = {
    type = "structure",
    id = "ExportFilter",
    members = {
        vertexFilter = {
            type = "map",
            key = { type = "string" },
            value = M.ExportFilterElement,
        },
        edgeFilter = {
            type = "map",
            key = { type = "string" },
            value = M.ExportFilterElement,
        },
    },
}

M.ExportTaskDetails = {
    type = "structure",
    id = "ExportTaskDetails",
    members = {
        startTime = {
            type = "timestamp",
            traits = {
                required = true,
            },
        },
        timeElapsedSeconds = {
            type = "long",
            traits = {
                required = true,
            },
        },
        progressPercentage = {
            type = "integer",
            traits = {
                required = true,
            },
        },
        numVerticesWritten = {
            type = "long",
        },
        numEdgesWritten = {
            type = "long",
        },
    },
}

M.GetExportTaskOutput = {
    type = "structure",
    id = "GetExportTaskOutput",
    members = {
        graphId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        roleArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        taskId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        status = {
            type = "string",
            traits = {
                required = true,
            },
        },
        format = {
            type = "string",
            traits = {
                required = true,
            },
        },
        destination = {
            type = "string",
            traits = {
                required = true,
            },
        },
        kmsKeyIdentifier = {
            type = "string",
            traits = {
                required = true,
            },
        },
        parquetType = {
            type = "string",
        },
        statusReason = {
            type = "string",
        },
        exportTaskDetails = M.ExportTaskDetails,
        exportFilter = M.ExportFilter,
    },
}

M.GetImportTaskInput = {
    type = "structure",
    id = "GetImportTaskInput",
    members = {
        taskIdentifier = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.ImportTaskDetails = {
    type = "structure",
    id = "ImportTaskDetails",
    members = {
        status = {
            type = "string",
            traits = {
                required = true,
            },
        },
        startTime = {
            type = "timestamp",
            traits = {
                required = true,
            },
        },
        timeElapsedSeconds = {
            type = "long",
            traits = {
                required = true,
            },
        },
        progressPercentage = {
            type = "integer",
            traits = {
                required = true,
            },
        },
        errorCount = {
            type = "integer",
            traits = {
                required = true,
            },
        },
        errorDetails = {
            type = "string",
        },
        statementCount = {
            type = "long",
            traits = {
                required = true,
            },
        },
        dictionaryEntryCount = {
            type = "long",
            traits = {
                required = true,
            },
        },
    },
}

M.GetImportTaskOutput = {
    type = "structure",
    id = "GetImportTaskOutput",
    members = {
        graphId = {
            type = "string",
        },
        taskId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        source = {
            type = "string",
            traits = {
                required = true,
            },
        },
        format = {
            type = "string",
        },
        parquetType = {
            type = "string",
        },
        roleArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        status = {
            type = "string",
            traits = {
                required = true,
            },
        },
        importOptions = M.ImportOptions,
        importTaskDetails = M.ImportTaskDetails,
        attemptNumber = {
            type = "integer",
        },
        statusReason = {
            type = "string",
        },
    },
}

M.ListExportTasksInput = {
    type = "structure",
    id = "ListExportTasksInput",
    members = {
        graphIdentifier = {
            type = "string",
            traits = {
                http_query = "graphIdentifier",
            },
        },
        nextToken = {
            type = "string",
            traits = {
                http_query = "nextToken",
            },
        },
        maxResults = {
            type = "integer",
            traits = {
                http_query = "maxResults",
            },
        },
    },
}

M.ExportTaskSummary = {
    type = "structure",
    id = "ExportTaskSummary",
    members = {
        graphId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        roleArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        taskId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        status = {
            type = "string",
            traits = {
                required = true,
            },
        },
        format = {
            type = "string",
            traits = {
                required = true,
            },
        },
        destination = {
            type = "string",
            traits = {
                required = true,
            },
        },
        kmsKeyIdentifier = {
            type = "string",
            traits = {
                required = true,
            },
        },
        parquetType = {
            type = "string",
        },
        statusReason = {
            type = "string",
        },
    },
}

M.ListExportTasksOutput = {
    type = "structure",
    id = "ListExportTasksOutput",
    members = {
        tasks = {
            type = "list",
            member = M.ExportTaskSummary,
            traits = {
                required = true,
            },
        },
        nextToken = {
            type = "string",
        },
    },
}

M.ListImportTasksInput = {
    type = "structure",
    id = "ListImportTasksInput",
    members = {
        nextToken = {
            type = "string",
            traits = {
                http_query = "nextToken",
            },
        },
        maxResults = {
            type = "integer",
            traits = {
                http_query = "maxResults",
            },
        },
    },
}

M.ImportTaskSummary = {
    type = "structure",
    id = "ImportTaskSummary",
    members = {
        graphId = {
            type = "string",
        },
        taskId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        source = {
            type = "string",
            traits = {
                required = true,
            },
        },
        format = {
            type = "string",
        },
        parquetType = {
            type = "string",
        },
        roleArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        status = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.ListImportTasksOutput = {
    type = "structure",
    id = "ListImportTasksOutput",
    members = {
        tasks = {
            type = "list",
            member = M.ImportTaskSummary,
            traits = {
                required = true,
            },
        },
        nextToken = {
            type = "string",
        },
    },
}

M.StartExportTaskInput = {
    type = "structure",
    id = "StartExportTaskInput",
    members = {
        graphIdentifier = {
            type = "string",
            traits = {
                required = true,
            },
        },
        roleArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        format = {
            type = "string",
            traits = {
                required = true,
            },
        },
        destination = {
            type = "string",
            traits = {
                required = true,
            },
        },
        kmsKeyIdentifier = {
            type = "string",
            traits = {
                required = true,
            },
        },
        parquetType = {
            type = "string",
        },
        exportFilter = M.ExportFilter,
        tags = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
    },
}

M.StartExportTaskOutput = {
    type = "structure",
    id = "StartExportTaskOutput",
    members = {
        graphId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        roleArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        taskId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        status = {
            type = "string",
            traits = {
                required = true,
            },
        },
        format = {
            type = "string",
            traits = {
                required = true,
            },
        },
        destination = {
            type = "string",
            traits = {
                required = true,
            },
        },
        kmsKeyIdentifier = {
            type = "string",
            traits = {
                required = true,
            },
        },
        parquetType = {
            type = "string",
        },
        statusReason = {
            type = "string",
        },
        exportFilter = M.ExportFilter,
    },
}

M.StartImportTaskInput = {
    type = "structure",
    id = "StartImportTaskInput",
    members = {
        importOptions = M.ImportOptions,
        failOnError = {
            type = "boolean",
        },
        source = {
            type = "string",
            traits = {
                required = true,
            },
        },
        format = {
            type = "string",
        },
        parquetType = {
            type = "string",
        },
        blankNodeHandling = {
            type = "string",
        },
        graphIdentifier = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        roleArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.StartImportTaskOutput = {
    type = "structure",
    id = "StartImportTaskOutput",
    members = {
        graphId = {
            type = "string",
        },
        taskId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        source = {
            type = "string",
            traits = {
                required = true,
            },
        },
        format = {
            type = "string",
        },
        parquetType = {
            type = "string",
        },
        roleArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        status = {
            type = "string",
            traits = {
                required = true,
            },
        },
        importOptions = M.ImportOptions,
    },
}

M.UntagResourceInput = {
    type = "structure",
    id = "UntagResourceInput",
    members = {
        resourceArn = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        tagKeys = {
            type = "list",
            member = { type = "string" },
            traits = {
                http_query = "tagKeys",
                required = true,
            },
        },
    },
}

M.UntagResourceOutput = {
    type = "structure",
    id = "UntagResourceOutput",
}

return M
