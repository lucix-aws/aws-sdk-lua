local M = {}

M.InternalDependencyException = {
    type = "structure",
    error = "server",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.InternalFailure = {
    type = "structure",
    error = "server",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.InvokeEndpointInput = {
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
            type = "blob",
            traits = {
                http_payload = true,
                required = true,
            },
        },
        ContentType = {
            type = "string",
            traits = {
                http_header = "Content-Type",
            },
        },
        Accept = {
            type = "string",
            traits = {
                http_header = "Accept",
            },
        },
        CustomAttributes = {
            type = "string",
            traits = {
                http_header = "X-Amzn-SageMaker-Custom-Attributes",
            },
        },
        TargetModel = {
            type = "string",
            traits = {
                http_header = "X-Amzn-SageMaker-Target-Model",
            },
        },
        TargetVariant = {
            type = "string",
            traits = {
                http_header = "X-Amzn-SageMaker-Target-Variant",
            },
        },
        TargetContainerHostname = {
            type = "string",
            traits = {
                http_header = "X-Amzn-SageMaker-Target-Container-Hostname",
            },
        },
        InferenceId = {
            type = "string",
            traits = {
                http_header = "X-Amzn-SageMaker-Inference-Id",
            },
        },
        EnableExplanations = {
            type = "string",
            traits = {
                http_header = "X-Amzn-SageMaker-Enable-Explanations",
            },
        },
        InferenceComponentName = {
            type = "string",
            traits = {
                http_header = "X-Amzn-SageMaker-Inference-Component",
            },
        },
        SessionId = {
            type = "string",
            traits = {
                http_header = "X-Amzn-SageMaker-Session-Id",
            },
        },
    },
}

M.InvokeEndpointOutput = {
    type = "structure",
    members = {
        Body = {
            type = "blob",
            traits = {
                http_payload = true,
                required = true,
            },
        },
        ContentType = {
            type = "string",
            traits = {
                http_header = "Content-Type",
            },
        },
        InvokedProductionVariant = {
            type = "string",
            traits = {
                http_header = "x-Amzn-Invoked-Production-Variant",
            },
        },
        CustomAttributes = {
            type = "string",
            traits = {
                http_header = "X-Amzn-SageMaker-Custom-Attributes",
            },
        },
        NewSessionId = {
            type = "string",
            traits = {
                http_header = "X-Amzn-SageMaker-New-Session-Id",
            },
        },
        ClosedSessionId = {
            type = "string",
            traits = {
                http_header = "X-Amzn-SageMaker-Closed-Session-Id",
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
            type = "integer",
        },
        OriginalMessage = {
            type = "string",
        },
        LogStreamArn = {
            type = "string",
        },
    },
}

M.ModelNotReadyException = {
    type = "structure",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.ServiceUnavailable = {
    type = "structure",
    error = "server",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.ValidationError = {
    type = "structure",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.InvokeEndpointAsyncInput = {
    type = "structure",
    members = {
        EndpointName = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        ContentType = {
            type = "string",
            traits = {
                http_header = "X-Amzn-SageMaker-Content-Type",
            },
        },
        Accept = {
            type = "string",
            traits = {
                http_header = "X-Amzn-SageMaker-Accept",
            },
        },
        CustomAttributes = {
            type = "string",
            traits = {
                http_header = "X-Amzn-SageMaker-Custom-Attributes",
            },
        },
        InferenceId = {
            type = "string",
            traits = {
                http_header = "X-Amzn-SageMaker-Inference-Id",
            },
        },
        InputLocation = {
            type = "string",
            traits = {
                http_header = "X-Amzn-SageMaker-InputLocation",
                required = true,
            },
        },
        S3OutputPathExtension = {
            type = "string",
            traits = {
                http_header = "X-Amzn-SageMaker-S3OutputPathExtension",
            },
        },
        Filename = {
            type = "string",
            traits = {
                http_header = "X-Amzn-SageMaker-Filename",
            },
        },
        RequestTTLSeconds = {
            type = "integer",
            traits = {
                http_header = "X-Amzn-SageMaker-RequestTTLSeconds",
            },
        },
        InvocationTimeoutSeconds = {
            type = "integer",
            traits = {
                http_header = "X-Amzn-SageMaker-InvocationTimeoutSeconds",
            },
        },
    },
}

M.InvokeEndpointAsyncOutput = {
    type = "structure",
    members = {
        InferenceId = {
            type = "string",
        },
        OutputLocation = {
            type = "string",
            traits = {
                http_header = "X-Amzn-SageMaker-OutputLocation",
            },
        },
        FailureLocation = {
            type = "string",
            traits = {
                http_header = "X-Amzn-SageMaker-FailureLocation",
            },
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

M.InvokeEndpointWithResponseStreamInput = {
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
            type = "blob",
            traits = {
                http_payload = true,
                required = true,
            },
        },
        ContentType = {
            type = "string",
            traits = {
                http_header = "Content-Type",
            },
        },
        Accept = {
            type = "string",
            traits = {
                http_header = "X-Amzn-SageMaker-Accept",
            },
        },
        CustomAttributes = {
            type = "string",
            traits = {
                http_header = "X-Amzn-SageMaker-Custom-Attributes",
            },
        },
        TargetVariant = {
            type = "string",
            traits = {
                http_header = "X-Amzn-SageMaker-Target-Variant",
            },
        },
        TargetContainerHostname = {
            type = "string",
            traits = {
                http_header = "X-Amzn-SageMaker-Target-Container-Hostname",
            },
        },
        InferenceId = {
            type = "string",
            traits = {
                http_header = "X-Amzn-SageMaker-Inference-Id",
            },
        },
        InferenceComponentName = {
            type = "string",
            traits = {
                http_header = "X-Amzn-SageMaker-Inference-Component",
            },
        },
        SessionId = {
            type = "string",
            traits = {
                http_header = "X-Amzn-SageMaker-Session-Id",
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

M.PayloadPart = {
    type = "structure",
    members = {
        Bytes = {
            type = "blob",
        },
    },
}

M.ResponseStream = {
    type = "union",
    members = {
        PayloadPart = M.PayloadPart,
        ModelStreamError = M.ModelStreamError,
        InternalStreamFailure = M.InternalStreamFailure,
    },
}

M.InvokeEndpointWithResponseStreamOutput = {
    type = "structure",
    members = {
        Body = setmetatable({ traits = {
            http_payload = true,
            required = true,
        } }, { __index = M.ResponseStream }),
        ContentType = {
            type = "string",
            traits = {
                http_header = "X-Amzn-SageMaker-Content-Type",
            },
        },
        InvokedProductionVariant = {
            type = "string",
            traits = {
                http_header = "x-Amzn-Invoked-Production-Variant",
            },
        },
        CustomAttributes = {
            type = "string",
            traits = {
                http_header = "X-Amzn-SageMaker-Custom-Attributes",
            },
        },
    },
}

return M
