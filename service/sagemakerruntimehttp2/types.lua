local M = {}

M.InputValidationError = {
    type = "structure",
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
    error = "server",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.RequestPayloadPart = {
    type = "structure",
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
    members = {
        PayloadPart = {
            type = "structure",
        },
    },
}

M.InvokeEndpointWithBidirectionalStreamInput = {
    type = "structure",
    members = {
        EndpointName = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        Body = {
            type = "union",
            traits = {
                http_payload = true,
                required = true,
            },
        },
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
    members = {
        PayloadPart = {
            type = "structure",
        },
        ModelStreamError = {
            type = "structure",
        },
        InternalStreamFailure = {
            type = "structure",
        },
    },
}

M.InvokeEndpointWithBidirectionalStreamOutput = {
    type = "structure",
    members = {
        Body = {
            type = "union",
            traits = {
                http_payload = true,
                required = true,
            },
        },
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
    error = "client",
    members = {
        Message = {
            type = "string",
        },
        OriginalStatusCode = {
            type = "number",
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
