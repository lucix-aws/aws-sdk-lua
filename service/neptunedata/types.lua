local M = {}

M.AccessDeniedException = {
    type = "structure",
    error = "client",
    members = {
        detailedMessage = {
            type = "string",
            traits = {
                required = true,
            },
        },
        requestId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        code = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.Action = {
    INITIALIZE_RESET = "initiateDatabaseReset",
    PERFORM_RESET = "performDatabaseReset",
}

M.BadRequestException = {
    type = "structure",
    error = "client",
    members = {
        detailedMessage = {
            type = "string",
            traits = {
                required = true,
            },
        },
        requestId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        code = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.CancelGremlinQueryInput = {
    type = "structure",
    members = {
        queryId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.CancelGremlinQueryOutput = {
    type = "structure",
    members = {
        status = {
            type = "string",
        },
    },
}

M.ClientTimeoutException = {
    type = "structure",
    error = "client",
    members = {
        detailedMessage = {
            type = "string",
            traits = {
                required = true,
            },
        },
        requestId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        code = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.ConcurrentModificationException = {
    type = "structure",
    error = "server",
    members = {
        detailedMessage = {
            type = "string",
            traits = {
                required = true,
            },
        },
        requestId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        code = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.ConstraintViolationException = {
    type = "structure",
    error = "client",
    members = {
        detailedMessage = {
            type = "string",
            traits = {
                required = true,
            },
        },
        requestId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        code = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.FailureByQueryException = {
    type = "structure",
    error = "server",
    members = {
        detailedMessage = {
            type = "string",
            traits = {
                required = true,
            },
        },
        requestId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        code = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.IllegalArgumentException = {
    type = "structure",
    error = "client",
    members = {
        detailedMessage = {
            type = "string",
            traits = {
                required = true,
            },
        },
        requestId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        code = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.InvalidArgumentException = {
    type = "structure",
    error = "client",
    members = {
        detailedMessage = {
            type = "string",
            traits = {
                required = true,
            },
        },
        requestId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        code = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.InvalidParameterException = {
    type = "structure",
    error = "client",
    members = {
        detailedMessage = {
            type = "string",
            traits = {
                required = true,
            },
        },
        requestId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        code = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.MissingParameterException = {
    type = "structure",
    error = "client",
    members = {
        detailedMessage = {
            type = "string",
            traits = {
                required = true,
            },
        },
        requestId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        code = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.ParsingException = {
    type = "structure",
    error = "client",
    members = {
        detailedMessage = {
            type = "string",
            traits = {
                required = true,
            },
        },
        requestId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        code = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.PreconditionsFailedException = {
    type = "structure",
    error = "client",
    members = {
        detailedMessage = {
            type = "string",
            traits = {
                required = true,
            },
        },
        requestId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        code = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.TimeLimitExceededException = {
    type = "structure",
    error = "server",
    members = {
        detailedMessage = {
            type = "string",
            traits = {
                required = true,
            },
        },
        requestId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        code = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.TooManyRequestsException = {
    type = "structure",
    error = "client",
    members = {
        detailedMessage = {
            type = "string",
            traits = {
                required = true,
            },
        },
        requestId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        code = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.UnsupportedOperationException = {
    type = "structure",
    error = "client",
    members = {
        detailedMessage = {
            type = "string",
            traits = {
                required = true,
            },
        },
        requestId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        code = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.BulkLoadIdNotFoundException = {
    type = "structure",
    error = "client",
    members = {
        detailedMessage = {
            type = "string",
            traits = {
                required = true,
            },
        },
        requestId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        code = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.CancelLoaderJobInput = {
    type = "structure",
    members = {
        loadId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.CancelLoaderJobOutput = {
    type = "structure",
    members = {
        status = {
            type = "string",
        },
    },
}

M.InternalFailureException = {
    type = "structure",
    error = "server",
    members = {
        detailedMessage = {
            type = "string",
            traits = {
                required = true,
            },
        },
        requestId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        code = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.LoadUrlAccessDeniedException = {
    type = "structure",
    error = "client",
    members = {
        detailedMessage = {
            type = "string",
            traits = {
                required = true,
            },
        },
        requestId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        code = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.CancelMLDataProcessingJobInput = {
    type = "structure",
    members = {
        id = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        neptuneIamRoleArn = {
            type = "string",
            traits = {
                http_query = "neptuneIamRoleArn",
            },
        },
        clean = {
            type = "boolean",
            traits = {
                http_query = "clean",
            },
        },
    },
}

M.CancelMLDataProcessingJobOutput = {
    type = "structure",
    members = {
        status = {
            type = "string",
        },
    },
}

M.MLResourceNotFoundException = {
    type = "structure",
    error = "client",
    members = {
        detailedMessage = {
            type = "string",
            traits = {
                required = true,
            },
        },
        requestId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        code = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.CancelMLModelTrainingJobInput = {
    type = "structure",
    members = {
        id = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        neptuneIamRoleArn = {
            type = "string",
            traits = {
                http_query = "neptuneIamRoleArn",
            },
        },
        clean = {
            type = "boolean",
            traits = {
                http_query = "clean",
            },
        },
    },
}

M.CancelMLModelTrainingJobOutput = {
    type = "structure",
    members = {
        status = {
            type = "string",
        },
    },
}

M.CancelMLModelTransformJobInput = {
    type = "structure",
    members = {
        id = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        neptuneIamRoleArn = {
            type = "string",
            traits = {
                http_query = "neptuneIamRoleArn",
            },
        },
        clean = {
            type = "boolean",
            traits = {
                http_query = "clean",
            },
        },
    },
}

M.CancelMLModelTransformJobOutput = {
    type = "structure",
    members = {
        status = {
            type = "string",
        },
    },
}

M.CancelOpenCypherQueryInput = {
    type = "structure",
    members = {
        queryId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        silent = {
            type = "boolean",
            traits = {
                http_query = "silent",
            },
        },
    },
}

M.CancelOpenCypherQueryOutput = {
    type = "structure",
    members = {
        status = {
            type = "string",
        },
        payload = {
            type = "boolean",
        },
    },
}

M.InvalidNumericDataException = {
    type = "structure",
    error = "client",
    members = {
        detailedMessage = {
            type = "string",
            traits = {
                required = true,
            },
        },
        requestId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        code = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.CreateMLEndpointInput = {
    type = "structure",
    members = {
        id = {
            type = "string",
        },
        mlModelTrainingJobId = {
            type = "string",
        },
        mlModelTransformJobId = {
            type = "string",
        },
        update = {
            type = "boolean",
        },
        neptuneIamRoleArn = {
            type = "string",
        },
        modelName = {
            type = "string",
        },
        instanceType = {
            type = "string",
        },
        instanceCount = {
            type = "integer",
        },
        volumeEncryptionKMSKey = {
            type = "string",
        },
    },
}

M.CreateMLEndpointOutput = {
    type = "structure",
    members = {
        id = {
            type = "string",
        },
        arn = {
            type = "string",
        },
        creationTimeInMillis = {
            type = "long",
        },
    },
}

M.DeleteMLEndpointInput = {
    type = "structure",
    members = {
        id = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        neptuneIamRoleArn = {
            type = "string",
            traits = {
                http_query = "neptuneIamRoleArn",
            },
        },
        clean = {
            type = "boolean",
            traits = {
                http_query = "clean",
            },
        },
    },
}

M.DeleteMLEndpointOutput = {
    type = "structure",
    members = {
        status = {
            type = "string",
        },
    },
}

M.DeletePropertygraphStatisticsInput = {
    type = "structure",
}

M.DeleteStatisticsValueMap = {
    type = "structure",
    members = {
        active = {
            type = "boolean",
        },
        statisticsId = {
            type = "string",
        },
    },
}

M.DeletePropertygraphStatisticsOutput = {
    type = "structure",
    members = {
        statusCode = {
            type = "integer",
            traits = {
                http_response_code = true,
            },
        },
        status = {
            type = "string",
        },
        payload = M.DeleteStatisticsValueMap,
    },
}

M.ReadOnlyViolationException = {
    type = "structure",
    error = "client",
    members = {
        detailedMessage = {
            type = "string",
            traits = {
                required = true,
            },
        },
        requestId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        code = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.StatisticsNotAvailableException = {
    type = "structure",
    error = "client",
    members = {
        detailedMessage = {
            type = "string",
            traits = {
                required = true,
            },
        },
        requestId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        code = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.DeleteSparqlStatisticsInput = {
    type = "structure",
}

M.DeleteSparqlStatisticsOutput = {
    type = "structure",
    members = {
        statusCode = {
            type = "integer",
            traits = {
                http_response_code = true,
            },
        },
        status = {
            type = "string",
        },
        payload = M.DeleteStatisticsValueMap,
    },
}

M.ExecuteFastResetInput = {
    type = "structure",
    members = {
        action = {
            type = "string",
            traits = {
                required = true,
            },
        },
        token = {
            type = "string",
        },
    },
}

M.FastResetToken = {
    type = "structure",
    members = {
        token = {
            type = "string",
        },
    },
}

M.ExecuteFastResetOutput = {
    type = "structure",
    members = {
        status = {
            type = "string",
            traits = {
                required = true,
            },
        },
        payload = M.FastResetToken,
    },
}

M.MethodNotAllowedException = {
    type = "structure",
    error = "client",
    members = {
        detailedMessage = {
            type = "string",
            traits = {
                required = true,
            },
        },
        requestId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        code = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.ServerShutdownException = {
    type = "structure",
    error = "server",
    members = {
        detailedMessage = {
            type = "string",
            traits = {
                required = true,
            },
        },
        requestId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        code = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.CancelledByUserException = {
    type = "structure",
    error = "server",
    members = {
        detailedMessage = {
            type = "string",
            traits = {
                required = true,
            },
        },
        requestId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        code = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.ExecuteGremlinExplainQueryInput = {
    type = "structure",
    members = {
        gremlinQuery = {
            type = "string",
            traits = {
                json_name = "gremlin",
                required = true,
            },
        },
    },
}

M.ExecuteGremlinExplainQueryOutput = {
    type = "structure",
    members = {
        output = {
            type = "blob",
            traits = {
                http_payload = true,
            },
        },
    },
}

M.MalformedQueryException = {
    type = "structure",
    error = "client",
    members = {
        detailedMessage = {
            type = "string",
            traits = {
                required = true,
            },
        },
        requestId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        code = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.MemoryLimitExceededException = {
    type = "structure",
    error = "server",
    members = {
        detailedMessage = {
            type = "string",
            traits = {
                required = true,
            },
        },
        requestId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        code = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.QueryLimitExceededException = {
    type = "structure",
    error = "server",
    members = {
        detailedMessage = {
            type = "string",
            traits = {
                required = true,
            },
        },
        requestId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        code = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.QueryLimitException = {
    type = "structure",
    error = "client",
    members = {
        detailedMessage = {
            type = "string",
            traits = {
                required = true,
            },
        },
        requestId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        code = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.QueryTooLargeException = {
    type = "structure",
    error = "client",
    members = {
        detailedMessage = {
            type = "string",
            traits = {
                required = true,
            },
        },
        requestId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        code = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.ExecuteGremlinProfileQueryInput = {
    type = "structure",
    members = {
        gremlinQuery = {
            type = "string",
            traits = {
                json_name = "gremlin",
                required = true,
            },
        },
        results = {
            type = "boolean",
            traits = {
                json_name = "profile.results",
            },
        },
        chop = {
            type = "integer",
            traits = {
                json_name = "profile.chop",
            },
        },
        serializer = {
            type = "string",
            traits = {
                json_name = "profile.serializer",
            },
        },
        indexOps = {
            type = "boolean",
            traits = {
                json_name = "profile.indexOps",
            },
        },
    },
}

M.ExecuteGremlinProfileQueryOutput = {
    type = "structure",
    members = {
        output = {
            type = "blob",
            traits = {
                http_payload = true,
            },
        },
    },
}

M.ExecuteGremlinQueryInput = {
    type = "structure",
    members = {
        gremlinQuery = {
            type = "string",
            traits = {
                json_name = "gremlin",
                required = true,
            },
        },
        serializer = {
            type = "string",
            traits = {
                http_header = "accept",
            },
        },
    },
}

M.GremlinQueryStatusAttributes = {
    type = "structure",
    members = {
        message = {
            type = "string",
        },
        code = {
            type = "integer",
        },
        attributes = {
            type = "document",
        },
    },
}

M.ExecuteGremlinQueryOutput = {
    type = "structure",
    members = {
        requestId = {
            type = "string",
        },
        status = M.GremlinQueryStatusAttributes,
        result = {
            type = "document",
        },
        meta = {
            type = "document",
        },
    },
}

M.OpenCypherExplainMode = {
    STATIC = "static",
    DYNAMIC = "dynamic",
    DETAILS = "details",
}

M.ExecuteOpenCypherExplainQueryInput = {
    type = "structure",
    members = {
        openCypherQuery = {
            type = "string",
            traits = {
                json_name = "query",
                required = true,
            },
        },
        parameters = {
            type = "string",
        },
        explainMode = {
            type = "string",
            traits = {
                json_name = "explain",
                required = true,
            },
        },
    },
}

M.ExecuteOpenCypherExplainQueryOutput = {
    type = "structure",
    members = {
        results = {
            type = "blob",
            traits = {
                http_payload = true,
                required = true,
            },
        },
    },
}

M.ExecuteOpenCypherQueryInput = {
    type = "structure",
    members = {
        openCypherQuery = {
            type = "string",
            traits = {
                json_name = "query",
                required = true,
            },
        },
        parameters = {
            type = "string",
        },
    },
}

M.ExecuteOpenCypherQueryOutput = {
    type = "structure",
    members = {
        results = {
            type = "document",
            traits = {
                required = true,
            },
        },
    },
}

M.GetEngineStatusInput = {
    type = "structure",
}

M.QueryLanguageVersion = {
    type = "structure",
    members = {
        version = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.GetEngineStatusOutput = {
    type = "structure",
    members = {
        status = {
            type = "string",
        },
        startTime = {
            type = "string",
        },
        dbEngineVersion = {
            type = "string",
        },
        role = {
            type = "string",
        },
        dfeQueryEngine = {
            type = "string",
        },
        gremlin = M.QueryLanguageVersion,
        sparql = M.QueryLanguageVersion,
        opencypher = M.QueryLanguageVersion,
        labMode = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
        rollingBackTrxCount = {
            type = "integer",
        },
        rollingBackTrxEarliestStartTime = {
            type = "string",
        },
        features = {
            type = "map",
            key = { type = "string" },
            value = { type = "document" },
        },
        settings = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
    },
}

M.GetGremlinQueryStatusInput = {
    type = "structure",
    members = {
        queryId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.QueryEvalStats = {
    type = "structure",
    members = {
        waited = {
            type = "integer",
        },
        elapsed = {
            type = "integer",
        },
        cancelled = {
            type = "boolean",
        },
        subqueries = {
            type = "document",
        },
    },
}

M.GetGremlinQueryStatusOutput = {
    type = "structure",
    members = {
        queryId = {
            type = "string",
        },
        queryString = {
            type = "string",
        },
        queryEvalStats = M.QueryEvalStats,
    },
}

M.GetLoaderJobStatusInput = {
    type = "structure",
    members = {
        loadId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        details = {
            type = "boolean",
            traits = {
                http_query = "details",
            },
        },
        errors = {
            type = "boolean",
            traits = {
                http_query = "errors",
            },
        },
        page = {
            type = "integer",
            traits = {
                http_query = "page",
            },
        },
        errorsPerPage = {
            type = "integer",
            traits = {
                http_query = "errorsPerPage",
            },
        },
    },
}

M.GetLoaderJobStatusOutput = {
    type = "structure",
    members = {
        status = {
            type = "string",
            traits = {
                required = true,
            },
        },
        payload = {
            type = "document",
            traits = {
                required = true,
            },
        },
    },
}

M.GetMLDataProcessingJobInput = {
    type = "structure",
    members = {
        id = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        neptuneIamRoleArn = {
            type = "string",
            traits = {
                http_query = "neptuneIamRoleArn",
            },
        },
    },
}

M.MlResourceDefinition = {
    type = "structure",
    members = {
        name = {
            type = "string",
        },
        arn = {
            type = "string",
        },
        status = {
            type = "string",
        },
        outputLocation = {
            type = "string",
        },
        failureReason = {
            type = "string",
        },
        cloudwatchLogUrl = {
            type = "string",
        },
    },
}

M.GetMLDataProcessingJobOutput = {
    type = "structure",
    members = {
        status = {
            type = "string",
        },
        id = {
            type = "string",
        },
        processingJob = M.MlResourceDefinition,
    },
}

M.GetMLEndpointInput = {
    type = "structure",
    members = {
        id = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        neptuneIamRoleArn = {
            type = "string",
            traits = {
                http_query = "neptuneIamRoleArn",
            },
        },
    },
}

M.MlConfigDefinition = {
    type = "structure",
    members = {
        name = {
            type = "string",
        },
        arn = {
            type = "string",
        },
    },
}

M.GetMLEndpointOutput = {
    type = "structure",
    members = {
        status = {
            type = "string",
        },
        id = {
            type = "string",
        },
        endpoint = M.MlResourceDefinition,
        endpointConfig = M.MlConfigDefinition,
    },
}

M.GetMLModelTrainingJobInput = {
    type = "structure",
    members = {
        id = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        neptuneIamRoleArn = {
            type = "string",
            traits = {
                http_query = "neptuneIamRoleArn",
            },
        },
    },
}

M.GetMLModelTrainingJobOutput = {
    type = "structure",
    members = {
        status = {
            type = "string",
        },
        id = {
            type = "string",
        },
        processingJob = M.MlResourceDefinition,
        hpoJob = M.MlResourceDefinition,
        modelTransformJob = M.MlResourceDefinition,
        mlModels = {
            type = "list",
            member = M.MlConfigDefinition,
        },
    },
}

M.GetMLModelTransformJobInput = {
    type = "structure",
    members = {
        id = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        neptuneIamRoleArn = {
            type = "string",
            traits = {
                http_query = "neptuneIamRoleArn",
            },
        },
    },
}

M.GetMLModelTransformJobOutput = {
    type = "structure",
    members = {
        status = {
            type = "string",
        },
        id = {
            type = "string",
        },
        baseProcessingJob = M.MlResourceDefinition,
        remoteModelTransformJob = M.MlResourceDefinition,
        models = {
            type = "list",
            member = M.MlConfigDefinition,
        },
    },
}

M.GetOpenCypherQueryStatusInput = {
    type = "structure",
    members = {
        queryId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.GetOpenCypherQueryStatusOutput = {
    type = "structure",
    members = {
        queryId = {
            type = "string",
        },
        queryString = {
            type = "string",
        },
        queryEvalStats = M.QueryEvalStats,
    },
}

M.GetPropertygraphStatisticsInput = {
    type = "structure",
}

M.StatisticsSummary = {
    type = "structure",
    members = {
        signatureCount = {
            type = "integer",
        },
        instanceCount = {
            type = "integer",
        },
        predicateCount = {
            type = "integer",
        },
    },
}

M.Statistics = {
    type = "structure",
    members = {
        autoCompute = {
            type = "boolean",
        },
        active = {
            type = "boolean",
        },
        statisticsId = {
            type = "string",
        },
        date = {
            type = "timestamp",
            traits = {
                timestamp_format = "date-time",
            },
        },
        note = {
            type = "string",
        },
        signatureInfo = M.StatisticsSummary,
    },
}

M.GetPropertygraphStatisticsOutput = {
    type = "structure",
    members = {
        status = {
            type = "string",
            traits = {
                required = true,
            },
        },
        payload = setmetatable({ traits = {
            required = true,
        } }, { __index = M.Statistics }),
    },
}

M.ExpiredStreamException = {
    type = "structure",
    error = "client",
    members = {
        detailedMessage = {
            type = "string",
            traits = {
                required = true,
            },
        },
        requestId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        code = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.Encoding = {
    GZIP = "gzip",
}

M.IteratorType = {
    AT_SEQUENCE_NUMBER = "AT_SEQUENCE_NUMBER",
    AFTER_SEQUENCE_NUMBER = "AFTER_SEQUENCE_NUMBER",
    TRIM_HORIZON = "TRIM_HORIZON",
    LATEST = "LATEST",
}

M.GetPropertygraphStreamInput = {
    type = "structure",
    members = {
        limit = {
            type = "long",
            traits = {
                http_query = "limit",
            },
        },
        iteratorType = {
            type = "string",
            traits = {
                http_query = "iteratorType",
            },
        },
        commitNum = {
            type = "long",
            traits = {
                http_query = "commitNum",
            },
        },
        opNum = {
            type = "long",
            traits = {
                http_query = "opNum",
            },
        },
        encoding = {
            type = "string",
            traits = {
                http_header = "Accept-Encoding",
            },
        },
    },
}

M.PropertygraphData = {
    type = "structure",
    members = {
        id = {
            type = "string",
            traits = {
                required = true,
            },
        },
        type = {
            type = "string",
            traits = {
                required = true,
            },
        },
        key = {
            type = "string",
            traits = {
                required = true,
            },
        },
        value = {
            type = "document",
            traits = {
                required = true,
            },
        },
        from = {
            type = "string",
        },
        to = {
            type = "string",
        },
    },
}

M.PropertygraphRecord = {
    type = "structure",
    members = {
        commitTimestampInMillis = {
            type = "long",
            traits = {
                json_name = "commitTimestamp",
                required = true,
            },
        },
        eventId = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
            traits = {
                required = true,
            },
        },
        data = setmetatable({ traits = {
            required = true,
        } }, { __index = M.PropertygraphData }),
        op = {
            type = "string",
            traits = {
                required = true,
            },
        },
        isLastOp = {
            type = "boolean",
        },
    },
}

M.GetPropertygraphStreamOutput = {
    type = "structure",
    members = {
        lastEventId = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
            traits = {
                required = true,
            },
        },
        lastTrxTimestampInMillis = {
            type = "long",
            traits = {
                json_name = "lastTrxTimestamp",
                required = true,
            },
        },
        format = {
            type = "string",
            traits = {
                required = true,
            },
        },
        records = {
            type = "list",
            member = M.PropertygraphRecord,
            traits = {
                required = true,
            },
        },
        totalRecords = {
            type = "integer",
            traits = {
                required = true,
            },
        },
    },
}

M.StreamRecordsNotFoundException = {
    type = "structure",
    error = "client",
    members = {
        detailedMessage = {
            type = "string",
            traits = {
                required = true,
            },
        },
        requestId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        code = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.ThrottlingException = {
    type = "structure",
    error = "server",
    members = {
        detailedMessage = {
            type = "string",
            traits = {
                required = true,
            },
        },
        requestId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        code = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.GraphSummaryType = {
    BASIC = "basic",
    DETAILED = "detailed",
}

M.GetPropertygraphSummaryInput = {
    type = "structure",
    members = {
        mode = {
            type = "string",
            traits = {
                default = "basic",
                http_query = "mode",
            },
        },
    },
}

M.EdgeStructure = {
    type = "structure",
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

M.PropertygraphSummary = {
    type = "structure",
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

M.PropertygraphSummaryValueMap = {
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
        graphSummary = M.PropertygraphSummary,
    },
}

M.GetPropertygraphSummaryOutput = {
    type = "structure",
    members = {
        statusCode = {
            type = "integer",
            traits = {
                http_response_code = true,
            },
        },
        payload = M.PropertygraphSummaryValueMap,
    },
}

M.GetRDFGraphSummaryInput = {
    type = "structure",
    members = {
        mode = {
            type = "string",
            traits = {
                default = "basic",
                http_query = "mode",
            },
        },
    },
}

M.SubjectStructure = {
    type = "structure",
    members = {
        count = {
            type = "long",
        },
        predicates = {
            type = "list",
            member = { type = "string" },
        },
    },
}

M.RDFGraphSummary = {
    type = "structure",
    members = {
        numDistinctSubjects = {
            type = "long",
        },
        numDistinctPredicates = {
            type = "long",
        },
        numQuads = {
            type = "long",
        },
        numClasses = {
            type = "long",
        },
        classes = {
            type = "list",
            member = { type = "string" },
        },
        predicates = {
            type = "list",
            member = { type = "map" },
        },
        subjectStructures = {
            type = "list",
            member = M.SubjectStructure,
        },
    },
}

M.RDFGraphSummaryValueMap = {
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
        graphSummary = M.RDFGraphSummary,
    },
}

M.GetRDFGraphSummaryOutput = {
    type = "structure",
    members = {
        statusCode = {
            type = "integer",
            traits = {
                http_response_code = true,
            },
        },
        payload = M.RDFGraphSummaryValueMap,
    },
}

M.GetSparqlStatisticsInput = {
    type = "structure",
}

M.GetSparqlStatisticsOutput = {
    type = "structure",
    members = {
        status = {
            type = "string",
            traits = {
                required = true,
            },
        },
        payload = setmetatable({ traits = {
            required = true,
        } }, { __index = M.Statistics }),
    },
}

M.GetSparqlStreamInput = {
    type = "structure",
    members = {
        limit = {
            type = "long",
            traits = {
                http_query = "limit",
            },
        },
        iteratorType = {
            type = "string",
            traits = {
                http_query = "iteratorType",
            },
        },
        commitNum = {
            type = "long",
            traits = {
                http_query = "commitNum",
            },
        },
        opNum = {
            type = "long",
            traits = {
                http_query = "opNum",
            },
        },
        encoding = {
            type = "string",
            traits = {
                http_header = "Accept-Encoding",
            },
        },
    },
}

M.SparqlData = {
    type = "structure",
    members = {
        stmt = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.SparqlRecord = {
    type = "structure",
    members = {
        commitTimestampInMillis = {
            type = "long",
            traits = {
                json_name = "commitTimestamp",
                required = true,
            },
        },
        eventId = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
            traits = {
                required = true,
            },
        },
        data = setmetatable({ traits = {
            required = true,
        } }, { __index = M.SparqlData }),
        op = {
            type = "string",
            traits = {
                required = true,
            },
        },
        isLastOp = {
            type = "boolean",
        },
    },
}

M.GetSparqlStreamOutput = {
    type = "structure",
    members = {
        lastEventId = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
            traits = {
                required = true,
            },
        },
        lastTrxTimestampInMillis = {
            type = "long",
            traits = {
                json_name = "lastTrxTimestamp",
                required = true,
            },
        },
        format = {
            type = "string",
            traits = {
                required = true,
            },
        },
        records = {
            type = "list",
            member = M.SparqlRecord,
            traits = {
                required = true,
            },
        },
        totalRecords = {
            type = "integer",
            traits = {
                required = true,
            },
        },
    },
}

M.ListGremlinQueriesInput = {
    type = "structure",
    members = {
        includeWaiting = {
            type = "boolean",
            traits = {
                http_query = "includeWaiting",
            },
        },
    },
}

M.GremlinQueryStatus = {
    type = "structure",
    members = {
        queryId = {
            type = "string",
        },
        queryString = {
            type = "string",
        },
        queryEvalStats = M.QueryEvalStats,
    },
}

M.ListGremlinQueriesOutput = {
    type = "structure",
    members = {
        acceptedQueryCount = {
            type = "integer",
        },
        runningQueryCount = {
            type = "integer",
        },
        queries = {
            type = "list",
            member = M.GremlinQueryStatus,
        },
    },
}

M.ListLoaderJobsInput = {
    type = "structure",
    members = {
        limit = {
            type = "integer",
            traits = {
                http_query = "limit",
            },
        },
        includeQueuedLoads = {
            type = "boolean",
            traits = {
                http_query = "includeQueuedLoads",
            },
        },
    },
}

M.LoaderIdResult = {
    type = "structure",
    members = {
        loadIds = {
            type = "list",
            member = { type = "string" },
        },
    },
}

M.ListLoaderJobsOutput = {
    type = "structure",
    members = {
        status = {
            type = "string",
            traits = {
                required = true,
            },
        },
        payload = setmetatable({ traits = {
            required = true,
        } }, { __index = M.LoaderIdResult }),
    },
}

M.ListMLDataProcessingJobsInput = {
    type = "structure",
    members = {
        maxItems = {
            type = "integer",
            traits = {
                http_query = "maxItems",
            },
        },
        neptuneIamRoleArn = {
            type = "string",
            traits = {
                http_query = "neptuneIamRoleArn",
            },
        },
    },
}

M.ListMLDataProcessingJobsOutput = {
    type = "structure",
    members = {
        ids = {
            type = "list",
            member = { type = "string" },
        },
    },
}

M.ListMLEndpointsInput = {
    type = "structure",
    members = {
        maxItems = {
            type = "integer",
            traits = {
                http_query = "maxItems",
            },
        },
        neptuneIamRoleArn = {
            type = "string",
            traits = {
                http_query = "neptuneIamRoleArn",
            },
        },
    },
}

M.ListMLEndpointsOutput = {
    type = "structure",
    members = {
        ids = {
            type = "list",
            member = { type = "string" },
        },
    },
}

M.ListMLModelTrainingJobsInput = {
    type = "structure",
    members = {
        maxItems = {
            type = "integer",
            traits = {
                http_query = "maxItems",
            },
        },
        neptuneIamRoleArn = {
            type = "string",
            traits = {
                http_query = "neptuneIamRoleArn",
            },
        },
    },
}

M.ListMLModelTrainingJobsOutput = {
    type = "structure",
    members = {
        ids = {
            type = "list",
            member = { type = "string" },
        },
    },
}

M.ListMLModelTransformJobsInput = {
    type = "structure",
    members = {
        maxItems = {
            type = "integer",
            traits = {
                http_query = "maxItems",
            },
        },
        neptuneIamRoleArn = {
            type = "string",
            traits = {
                http_query = "neptuneIamRoleArn",
            },
        },
    },
}

M.ListMLModelTransformJobsOutput = {
    type = "structure",
    members = {
        ids = {
            type = "list",
            member = { type = "string" },
        },
    },
}

M.ListOpenCypherQueriesInput = {
    type = "structure",
    members = {
        includeWaiting = {
            type = "boolean",
            traits = {
                http_query = "includeWaiting",
            },
        },
    },
}

M.ListOpenCypherQueriesOutput = {
    type = "structure",
    members = {
        acceptedQueryCount = {
            type = "integer",
        },
        runningQueryCount = {
            type = "integer",
        },
        queries = {
            type = "list",
            member = M.GremlinQueryStatus,
        },
    },
}

M.StatisticsAutoGenerationMode = {
    DISABLE_AUTOCOMPUTE = "disableAutoCompute",
    ENABLE_AUTOCOMPUTE = "enableAutoCompute",
    REFRESH = "refresh",
}

M.ManagePropertygraphStatisticsInput = {
    type = "structure",
    members = {
        mode = {
            type = "string",
        },
    },
}

M.RefreshStatisticsIdMap = {
    type = "structure",
    members = {
        statisticsId = {
            type = "string",
        },
    },
}

M.ManagePropertygraphStatisticsOutput = {
    type = "structure",
    members = {
        status = {
            type = "string",
            traits = {
                required = true,
            },
        },
        payload = M.RefreshStatisticsIdMap,
    },
}

M.ManageSparqlStatisticsInput = {
    type = "structure",
    members = {
        mode = {
            type = "string",
        },
    },
}

M.ManageSparqlStatisticsOutput = {
    type = "structure",
    members = {
        status = {
            type = "string",
            traits = {
                required = true,
            },
        },
        payload = M.RefreshStatisticsIdMap,
    },
}

M.S3Exception = {
    type = "structure",
    error = "client",
    members = {
        detailedMessage = {
            type = "string",
            traits = {
                required = true,
            },
        },
        requestId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        code = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.Format = {
    CSV = "csv",
    OPENCYPHER = "opencypher",
    NTRIPLES = "ntriples",
    NQUADS = "nquads",
    RDFXML = "rdfxml",
    TURTLE = "turtle",
}

M.Mode = {
    RESUME = "RESUME",
    NEW = "NEW",
    AUTO = "AUTO",
}

M.Parallelism = {
    LOW = "LOW",
    MEDIUM = "MEDIUM",
    HIGH = "HIGH",
    OVERSUBSCRIBE = "OVERSUBSCRIBE",
}

M.S3BucketRegion = {
    US_EAST_1 = "us-east-1",
    US_EAST_2 = "us-east-2",
    US_WEST_1 = "us-west-1",
    US_WEST_2 = "us-west-2",
    CA_CENTRAL_1 = "ca-central-1",
    SA_EAST_1 = "sa-east-1",
    EU_NORTH_1 = "eu-north-1",
    EU_WEST_1 = "eu-west-1",
    EU_WEST_2 = "eu-west-2",
    EU_WEST_3 = "eu-west-3",
    EU_CENTRAL_1 = "eu-central-1",
    ME_SOUTH_1 = "me-south-1",
    AF_SOUTH_1 = "af-south-1",
    AP_EAST_1 = "ap-east-1",
    AP_NORTHEAST_1 = "ap-northeast-1",
    AP_NORTHEAST_2 = "ap-northeast-2",
    AP_SOUTHEAST_1 = "ap-southeast-1",
    AP_SOUTHEAST_2 = "ap-southeast-2",
    AP_SOUTH_1 = "ap-south-1",
    CN_NORTH_1 = "cn-north-1",
    CN_NORTHWEST_1 = "cn-northwest-1",
    US_GOV_WEST_1 = "us-gov-west-1",
    US_GOV_EAST_1 = "us-gov-east-1",
    CA_WEST_1 = "ca-west-1",
    EU_SOUTH_2 = "eu-south-2",
    IL_CENTRAL_1 = "il-central-1",
    ME_CENTRAL_1 = "me-central-1",
    AP_NORTHEAST_3 = "ap-northeast-3",
    AP_SOUTHEAST_3 = "ap-southeast-3",
    AP_SOUTHEAST_4 = "ap-southeast-4",
    AP_SOUTHEAST_5 = "ap-southeast-5",
    AP_SOUTHEAST_7 = "ap-southeast-7",
    MX_CENTRAL_1 = "mx-central-1",
    AP_EAST_2 = "ap-east-2",
    AP_SOUTH_2 = "ap-south-2",
    EU_CENTRAL_2 = "eu-central-2",
}

M.StartLoaderJobInput = {
    type = "structure",
    members = {
        source = {
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
        s3BucketRegion = {
            type = "string",
            traits = {
                json_name = "region",
                required = true,
            },
        },
        iamRoleArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        mode = {
            type = "string",
        },
        failOnError = {
            type = "boolean",
        },
        parallelism = {
            type = "string",
        },
        parserConfiguration = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
        updateSingleCardinalityProperties = {
            type = "boolean",
        },
        queueRequest = {
            type = "boolean",
        },
        dependencies = {
            type = "list",
            member = { type = "string" },
        },
        userProvidedEdgeIds = {
            type = "boolean",
        },
        edgeOnlyLoad = {
            type = "boolean",
        },
    },
}

M.StartLoaderJobOutput = {
    type = "structure",
    members = {
        status = {
            type = "string",
            traits = {
                required = true,
            },
        },
        payload = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
            traits = {
                required = true,
            },
        },
    },
}

M.StartMLDataProcessingJobInput = {
    type = "structure",
    members = {
        id = {
            type = "string",
        },
        previousDataProcessingJobId = {
            type = "string",
        },
        inputDataS3Location = {
            type = "string",
            traits = {
                required = true,
            },
        },
        processedDataS3Location = {
            type = "string",
            traits = {
                required = true,
            },
        },
        sagemakerIamRoleArn = {
            type = "string",
        },
        neptuneIamRoleArn = {
            type = "string",
        },
        processingInstanceType = {
            type = "string",
        },
        processingInstanceVolumeSizeInGB = {
            type = "integer",
        },
        processingTimeOutInSeconds = {
            type = "integer",
        },
        modelType = {
            type = "string",
        },
        configFileName = {
            type = "string",
        },
        subnets = {
            type = "list",
            member = { type = "string" },
        },
        securityGroupIds = {
            type = "list",
            member = { type = "string" },
        },
        volumeEncryptionKMSKey = {
            type = "string",
        },
        s3OutputEncryptionKMSKey = {
            type = "string",
        },
    },
}

M.StartMLDataProcessingJobOutput = {
    type = "structure",
    members = {
        id = {
            type = "string",
        },
        arn = {
            type = "string",
        },
        creationTimeInMillis = {
            type = "long",
        },
    },
}

M.CustomModelTrainingParameters = {
    type = "structure",
    members = {
        sourceS3DirectoryPath = {
            type = "string",
            traits = {
                required = true,
            },
        },
        trainingEntryPointScript = {
            type = "string",
        },
        transformEntryPointScript = {
            type = "string",
        },
    },
}

M.StartMLModelTrainingJobInput = {
    type = "structure",
    members = {
        id = {
            type = "string",
        },
        previousModelTrainingJobId = {
            type = "string",
        },
        dataProcessingJobId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        trainModelS3Location = {
            type = "string",
            traits = {
                required = true,
            },
        },
        sagemakerIamRoleArn = {
            type = "string",
        },
        neptuneIamRoleArn = {
            type = "string",
        },
        baseProcessingInstanceType = {
            type = "string",
        },
        trainingInstanceType = {
            type = "string",
        },
        trainingInstanceVolumeSizeInGB = {
            type = "integer",
        },
        trainingTimeOutInSeconds = {
            type = "integer",
        },
        maxHPONumberOfTrainingJobs = {
            type = "integer",
        },
        maxHPOParallelTrainingJobs = {
            type = "integer",
        },
        subnets = {
            type = "list",
            member = { type = "string" },
        },
        securityGroupIds = {
            type = "list",
            member = { type = "string" },
        },
        volumeEncryptionKMSKey = {
            type = "string",
        },
        s3OutputEncryptionKMSKey = {
            type = "string",
        },
        enableManagedSpotTraining = {
            type = "boolean",
        },
        customModelTrainingParameters = M.CustomModelTrainingParameters,
    },
}

M.StartMLModelTrainingJobOutput = {
    type = "structure",
    members = {
        id = {
            type = "string",
        },
        arn = {
            type = "string",
        },
        creationTimeInMillis = {
            type = "long",
        },
    },
}

M.CustomModelTransformParameters = {
    type = "structure",
    members = {
        sourceS3DirectoryPath = {
            type = "string",
            traits = {
                required = true,
            },
        },
        transformEntryPointScript = {
            type = "string",
        },
    },
}

M.StartMLModelTransformJobInput = {
    type = "structure",
    members = {
        id = {
            type = "string",
        },
        dataProcessingJobId = {
            type = "string",
        },
        mlModelTrainingJobId = {
            type = "string",
        },
        trainingJobName = {
            type = "string",
        },
        modelTransformOutputS3Location = {
            type = "string",
            traits = {
                required = true,
            },
        },
        sagemakerIamRoleArn = {
            type = "string",
        },
        neptuneIamRoleArn = {
            type = "string",
        },
        customModelTransformParameters = M.CustomModelTransformParameters,
        baseProcessingInstanceType = {
            type = "string",
        },
        baseProcessingInstanceVolumeSizeInGB = {
            type = "integer",
        },
        subnets = {
            type = "list",
            member = { type = "string" },
        },
        securityGroupIds = {
            type = "list",
            member = { type = "string" },
        },
        volumeEncryptionKMSKey = {
            type = "string",
        },
        s3OutputEncryptionKMSKey = {
            type = "string",
        },
    },
}

M.StartMLModelTransformJobOutput = {
    type = "structure",
    members = {
        id = {
            type = "string",
        },
        arn = {
            type = "string",
        },
        creationTimeInMillis = {
            type = "long",
        },
    },
}

return M
