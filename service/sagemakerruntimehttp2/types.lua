local M = {}

M.InputValidationError = {
    type = "structure",
    id = "InputValidationError",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
        ErrorCode = {
            type = "string",
        },
    },
}

M.InternalServerError = {
    type = "structure",
    id = "InternalServerError",
    error = "server",
    members = {
        Message = {
            type = "string",
        },
        ErrorCode = {
            type = "string",
        },
    },
}

M.InternalStreamFailure = {
    type = "structure",
    id = "InternalStreamFailure",
    error = "server",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.RequestPayloadPart = {
    type = "structure",
    id = "RequestPayloadPart",
    members = {
        Bytes = {
            type = "blob",
        },
        DataType = {
            type = "string",
        },
        CompletionState = {
            type = "string",
        },
        P = {
            type = "string",
        },
    },
}

M.RequestStreamEvent = {
    type = "union",
    id = "RequestStreamEvent",
    members = {
        PayloadPart = M.RequestPayloadPart,
    },
}

M.InvokeEndpointWithBidirectionalStreamInput = {
    type = "structure",
    id = "InvokeEndpointWithBidirectionalStreamInput",
    members = {
        EndpointName = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        Body = setmetatable({ traits = {
            http_payload = true,
            required = true,
        } }, { __index = M.RequestStreamEvent }),
        TargetVariant = {
            type = "string",
            traits = {
                http_header = "X-Amzn-SageMaker-Target-Variant",
            },
        },
        ModelInvocationPath = {
            type = "string",
            traits = {
                http_header = "X-Amzn-SageMaker-Model-Invocation-Path",
            },
        },
        ModelQueryString = {
            type = "string",
            traits = {
                http_header = "X-Amzn-SageMaker-Model-Query-String",
            },
        },
    },
}

M.ModelStreamError = {
    type = "structure",
    id = "ModelStreamError",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
        ErrorCode = {
            type = "string",
        },
    },
}

M.ResponsePayloadPart = {
    type = "structure",
    id = "ResponsePayloadPart",
    members = {
        Bytes = {
            type = "blob",
        },
        DataType = {
            type = "string",
        },
        CompletionState = {
            type = "string",
        },
        P = {
            type = "string",
        },
    },
}

M.ResponseStreamEvent = {
    type = "union",
    id = "ResponseStreamEvent",
    members = {
        PayloadPart = M.ResponsePayloadPart,
        ModelStreamError = M.ModelStreamError,
        InternalStreamFailure = M.InternalStreamFailure,
    },
}

M.InvokeEndpointWithBidirectionalStreamOutput = {
    type = "structure",
    id = "InvokeEndpointWithBidirectionalStreamOutput",
    members = {
        Body = setmetatable({ traits = {
            http_payload = true,
            required = true,
        } }, { __index = M.ResponseStreamEvent }),
        InvokedProductionVariant = {
            type = "string",
            traits = {
                http_header = "X-Amzn-Invoked-Production-Variant",
            },
        },
    },
}

M.ModelError = {
    type = "structure",
    id = "ModelError",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
        OriginalStatusCode = {
            type = "integer",
        },
        OriginalMessage = {
            type = "string",
        },
        LogStreamArn = {
            type = "string",
        },
        ErrorCode = {
            type = "string",
        },
    },
}

M.ServiceUnavailableError = {
    type = "structure",
    id = "ServiceUnavailableError",
    error = "server",
    members = {
        Message = {
            type = "string",
        },
        ErrorCode = {
            type = "string",
        },
    },
}

return M
