local M = {}

M.AccessDeniedException = {
    type = "structure",
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
}

M.InternalServerException = {
    type = "structure",
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
            key_type = "string",
            value_type = "document",
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
            type = "number",
        },
    },
}

M.ExecuteQueryOutput = {
    type = "structure",
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
    members = {
        count = {
            type = "number",
        },
        edgeProperties = {
            type = "list",
            member_type = "string",
        },
    },
}

M.NodeStructure = {
    type = "structure",
    members = {
        count = {
            type = "number",
        },
        nodeProperties = {
            type = "list",
            member_type = "string",
        },
        distinctOutgoingEdgeLabels = {
            type = "list",
            member_type = "string",
        },
    },
}

M.GraphDataSummary = {
    type = "structure",
    members = {
        numNodes = {
            type = "number",
        },
        numEdges = {
            type = "number",
        },
        numNodeLabels = {
            type = "number",
        },
        numEdgeLabels = {
            type = "number",
        },
        nodeLabels = {
            type = "list",
            member_type = "string",
        },
        edgeLabels = {
            type = "list",
            member_type = "string",
        },
        numNodeProperties = {
            type = "number",
        },
        numEdgeProperties = {
            type = "number",
        },
        nodeProperties = {
            type = "list",
            member_type = "map",
        },
        edgeProperties = {
            type = "list",
            member_type = "map",
        },
        totalNodePropertyValues = {
            type = "number",
        },
        totalEdgePropertyValues = {
            type = "number",
        },
        nodeStructures = {
            type = "list",
            member_type = "structure",
        },
        edgeStructures = {
            type = "list",
            member_type = "structure",
        },
    },
}

M.GetGraphSummaryOutput = {
    type = "structure",
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
        graphSummary = {
            type = "structure",
        },
    },
}

M.GetQueryInput = {
    type = "structure",
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
    members = {
        id = {
            type = "string",
        },
        queryString = {
            type = "string",
        },
        waited = {
            type = "number",
        },
        elapsed = {
            type = "number",
        },
        state = {
            type = "string",
        },
    },
}

M.VectorSearchConfiguration = {
    type = "structure",
    members = {
        dimension = {
            type = "number",
            traits = {
                required = true,
            },
        },
    },
}

M.CreateGraphInput = {
    type = "structure",
    members = {
        graphName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        tags = {
            type = "map",
            key_type = "string",
            value_type = "string",
        },
        publicConnectivity = {
            type = "boolean",
        },
        kmsKeyIdentifier = {
            type = "string",
        },
        vectorSearchConfiguration = {
            type = "structure",
        },
        replicaCount = {
            type = "number",
        },
        deletionProtection = {
            type = "boolean",
        },
        provisionedMemory = {
            type = "number",
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
            type = "number",
        },
        endpoint = {
            type = "string",
        },
        publicConnectivity = {
            type = "boolean",
        },
        vectorSearchConfiguration = {
            type = "structure",
        },
        replicaCount = {
            type = "number",
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
            type = "number",
        },
        endpoint = {
            type = "string",
        },
        publicConnectivity = {
            type = "boolean",
        },
        vectorSearchConfiguration = {
            type = "structure",
        },
        replicaCount = {
            type = "number",
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
            type = "number",
        },
        endpoint = {
            type = "string",
        },
        publicConnectivity = {
            type = "boolean",
        },
        vectorSearchConfiguration = {
            type = "structure",
        },
        replicaCount = {
            type = "number",
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
    members = {
        nextToken = {
            type = "string",
            traits = {
                http_query = "nextToken",
            },
        },
        maxResults = {
            type = "number",
            traits = {
                http_query = "maxResults",
            },
        },
    },
}

M.GraphSummary = {
    type = "structure",
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
            type = "number",
        },
        publicConnectivity = {
            type = "boolean",
        },
        endpoint = {
            type = "string",
        },
        replicaCount = {
            type = "number",
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
    members = {
        graphs = {
            type = "list",
            member_type = "structure",
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
            type = "number",
        },
        endpoint = {
            type = "string",
        },
        publicConnectivity = {
            type = "boolean",
        },
        vectorSearchConfiguration = {
            type = "structure",
        },
        replicaCount = {
            type = "number",
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
            type = "number",
        },
        deletionProtection = {
            type = "boolean",
        },
        tags = {
            type = "map",
            key_type = "string",
            value_type = "string",
        },
        replicaCount = {
            type = "number",
        },
        publicConnectivity = {
            type = "boolean",
        },
    },
}

M.RestoreGraphFromSnapshotOutput = {
    type = "structure",
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
            type = "number",
        },
        endpoint = {
            type = "string",
        },
        publicConnectivity = {
            type = "boolean",
        },
        vectorSearchConfiguration = {
            type = "structure",
        },
        replicaCount = {
            type = "number",
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
            type = "number",
        },
        endpoint = {
            type = "string",
        },
        publicConnectivity = {
            type = "boolean",
        },
        vectorSearchConfiguration = {
            type = "structure",
        },
        replicaCount = {
            type = "number",
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
            type = "number",
        },
        endpoint = {
            type = "string",
        },
        publicConnectivity = {
            type = "boolean",
        },
        vectorSearchConfiguration = {
            type = "structure",
        },
        replicaCount = {
            type = "number",
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
            type = "number",
        },
        deletionProtection = {
            type = "boolean",
        },
    },
}

M.UpdateGraphOutput = {
    type = "structure",
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
            type = "number",
        },
        endpoint = {
            type = "string",
        },
        publicConnectivity = {
            type = "boolean",
        },
        vectorSearchConfiguration = {
            type = "structure",
        },
        replicaCount = {
            type = "number",
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
    members = {
        graphIdentifier = {
            type = "string",
            traits = {
                http_header = "graphIdentifier",
                required = true,
            },
        },
        maxResults = {
            type = "number",
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
    members = {
        id = {
            type = "string",
        },
        queryString = {
            type = "string",
        },
        waited = {
            type = "number",
        },
        elapsed = {
            type = "number",
        },
        state = {
            type = "string",
        },
    },
}

M.ListQueriesOutput = {
    type = "structure",
    members = {
        queries = {
            type = "list",
            member_type = "structure",
            traits = {
                required = true,
            },
        },
    },
}

M.ListTagsForResourceInput = {
    type = "structure",
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
    members = {
        tags = {
            type = "map",
            key_type = "string",
            value_type = "string",
        },
    },
}

M.CreatePrivateGraphEndpointInput = {
    type = "structure",
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
            member_type = "string",
        },
        vpcSecurityGroupIds = {
            type = "list",
            member_type = "string",
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
    members = {
        vpcId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        subnetIds = {
            type = "list",
            member_type = "string",
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
    members = {
        vpcId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        subnetIds = {
            type = "list",
            member_type = "string",
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
    members = {
        vpcId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        subnetIds = {
            type = "list",
            member_type = "string",
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
            type = "number",
            traits = {
                http_query = "maxResults",
            },
        },
    },
}

M.PrivateGraphEndpointSummary = {
    type = "structure",
    members = {
        vpcId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        subnetIds = {
            type = "list",
            member_type = "string",
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
    members = {
        privateGraphEndpoints = {
            type = "list",
            member_type = "structure",
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
            key_type = "string",
            value_type = "string",
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
            type = "number",
            traits = {
                http_query = "maxResults",
            },
        },
    },
}

M.GraphSnapshotSummary = {
    type = "structure",
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
    members = {
        graphSnapshots = {
            type = "list",
            member_type = "structure",
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
            key_type = "string",
            value_type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.TagResourceOutput = {
    type = "structure",
}

M.CancelExportTaskInput = {
    type = "structure",
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
    members = {
        neptune = {
            type = "structure",
        },
    },
}

M.CreateGraphUsingImportTaskInput = {
    type = "structure",
    members = {
        graphName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        tags = {
            type = "map",
            key_type = "string",
            value_type = "string",
        },
        publicConnectivity = {
            type = "boolean",
        },
        kmsKeyIdentifier = {
            type = "string",
        },
        vectorSearchConfiguration = {
            type = "structure",
        },
        replicaCount = {
            type = "number",
        },
        deletionProtection = {
            type = "boolean",
        },
        importOptions = {
            type = "union",
        },
        maxProvisionedMemory = {
            type = "number",
        },
        minProvisionedMemory = {
            type = "number",
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
        importOptions = {
            type = "union",
        },
    },
}

M.GetExportTaskInput = {
    type = "structure",
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
    members = {
        outputType = {
            type = "string",
        },
        sourcePropertyName = {
            type = "string",
        },
        multiValueHandling = {
            type = "string",
        },
    },
}

M.ExportFilterElement = {
    type = "structure",
    members = {
        properties = {
            type = "map",
            key_type = "string",
            value_type = "structure",
        },
    },
}

M.ExportFilter = {
    type = "structure",
    members = {
        vertexFilter = {
            type = "map",
            key_type = "string",
            value_type = "structure",
        },
        edgeFilter = {
            type = "map",
            key_type = "string",
            value_type = "structure",
        },
    },
}

M.ExportTaskDetails = {
    type = "structure",
    members = {
        startTime = {
            type = "timestamp",
            traits = {
                required = true,
            },
        },
        timeElapsedSeconds = {
            type = "number",
            traits = {
                required = true,
            },
        },
        progressPercentage = {
            type = "number",
            traits = {
                required = true,
            },
        },
        numVerticesWritten = {
            type = "number",
        },
        numEdgesWritten = {
            type = "number",
        },
    },
}

M.GetExportTaskOutput = {
    type = "structure",
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
        exportTaskDetails = {
            type = "structure",
        },
        exportFilter = {
            type = "structure",
        },
    },
}

M.GetImportTaskInput = {
    type = "structure",
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
            type = "number",
            traits = {
                required = true,
            },
        },
        progressPercentage = {
            type = "number",
            traits = {
                required = true,
            },
        },
        errorCount = {
            type = "number",
            traits = {
                required = true,
            },
        },
        errorDetails = {
            type = "string",
        },
        statementCount = {
            type = "number",
            traits = {
                required = true,
            },
        },
        dictionaryEntryCount = {
            type = "number",
            traits = {
                required = true,
            },
        },
    },
}

M.GetImportTaskOutput = {
    type = "structure",
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
        importOptions = {
            type = "union",
        },
        importTaskDetails = {
            type = "structure",
        },
        attemptNumber = {
            type = "number",
        },
        statusReason = {
            type = "string",
        },
    },
}

M.ListExportTasksInput = {
    type = "structure",
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
            type = "number",
            traits = {
                http_query = "maxResults",
            },
        },
    },
}

M.ExportTaskSummary = {
    type = "structure",
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
    members = {
        tasks = {
            type = "list",
            member_type = "structure",
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
    members = {
        nextToken = {
            type = "string",
            traits = {
                http_query = "nextToken",
            },
        },
        maxResults = {
            type = "number",
            traits = {
                http_query = "maxResults",
            },
        },
    },
}

M.ImportTaskSummary = {
    type = "structure",
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
    members = {
        tasks = {
            type = "list",
            member_type = "structure",
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
        exportFilter = {
            type = "structure",
        },
        tags = {
            type = "map",
            key_type = "string",
            value_type = "string",
        },
    },
}

M.StartExportTaskOutput = {
    type = "structure",
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
        exportFilter = {
            type = "structure",
        },
    },
}

M.StartImportTaskInput = {
    type = "structure",
    members = {
        importOptions = {
            type = "union",
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
        importOptions = {
            type = "union",
        },
    },
}

M.UntagResourceInput = {
    type = "structure",
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
            member_type = "string",
            traits = {
                http_query = "tagKeys",
                required = true,
            },
        },
    },
}

M.UntagResourceOutput = {
    type = "structure",
}

return M
