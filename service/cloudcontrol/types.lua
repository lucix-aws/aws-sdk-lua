local M = {}

M.AlreadyExistsException = {
    type = "structure",
    id = "AlreadyExistsException",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.CancelResourceRequestInput = {
    type = "structure",
    id = "CancelResourceRequestInput",
    members = {
        RequestToken = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.HandlerErrorCode = {
    NOT_UPDATABLE = "NotUpdatable",
    INVALID_REQUEST = "InvalidRequest",
    ACCESS_DENIED = "AccessDenied",
    UNAUTHORIZED_TAGGING_OPERATION = "UnauthorizedTaggingOperation",
    INVALID_CREDENTIALS = "InvalidCredentials",
    ALREADY_EXISTS = "AlreadyExists",
    NOT_FOUND = "NotFound",
    RESOURCE_CONFLICT = "ResourceConflict",
    THROTTLING = "Throttling",
    SERVICE_LIMIT_EXCEEDED = "ServiceLimitExceeded",
    NOT_STABILIZED = "NotStabilized",
    GENERAL_SERVICE_EXCEPTION = "GeneralServiceException",
    SERVICE_INTERNAL_ERROR = "ServiceInternalError",
    SERVICE_TIMEOUT = "ServiceTimeout",
    NETWORK_FAILURE = "NetworkFailure",
    INTERNAL_FAILURE = "InternalFailure",
}

M.Operation = {
    CREATE = "CREATE",
    DELETE = "DELETE",
    UPDATE = "UPDATE",
}

M.OperationStatus = {
    PENDING = "PENDING",
    IN_PROGRESS = "IN_PROGRESS",
    SUCCESS = "SUCCESS",
    FAILED = "FAILED",
    CANCEL_IN_PROGRESS = "CANCEL_IN_PROGRESS",
    CANCEL_COMPLETE = "CANCEL_COMPLETE",
}

M.ProgressEvent = {
    type = "structure",
    id = "ProgressEvent",
    members = {
        TypeName = {
            type = "string",
        },
        Identifier = {
            type = "string",
        },
        RequestToken = {
            type = "string",
        },
        HooksRequestToken = {
            type = "string",
        },
        Operation = {
            type = "string",
        },
        OperationStatus = {
            type = "string",
        },
        EventTime = {
            type = "timestamp",
        },
        ResourceModel = {
            type = "string",
        },
        StatusMessage = {
            type = "string",
        },
        ErrorCode = {
            type = "string",
        },
        RetryAfter = {
            type = "timestamp",
        },
    },
}

M.CancelResourceRequestOutput = {
    type = "structure",
    id = "CancelResourceRequestOutput",
    members = {
        ProgressEvent = M.ProgressEvent,
    },
}

M.ConcurrentModificationException = {
    type = "structure",
    id = "ConcurrentModificationException",
    error = "server",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.RequestTokenNotFoundException = {
    type = "structure",
    id = "RequestTokenNotFoundException",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.ClientTokenConflictException = {
    type = "structure",
    id = "ClientTokenConflictException",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.ConcurrentOperationException = {
    type = "structure",
    id = "ConcurrentOperationException",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.CreateResourceInput = {
    type = "structure",
    id = "CreateResourceInput",
    members = {
        TypeName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        TypeVersionId = {
            type = "string",
        },
        RoleArn = {
            type = "string",
        },
        ClientToken = {
            type = "string",
            traits = {
                idempotency_token = true,
            },
        },
        DesiredState = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.CreateResourceOutput = {
    type = "structure",
    id = "CreateResourceOutput",
    members = {
        ProgressEvent = M.ProgressEvent,
    },
}

M.GeneralServiceException = {
    type = "structure",
    id = "GeneralServiceException",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.HandlerFailureException = {
    type = "structure",
    id = "HandlerFailureException",
    error = "server",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.HandlerInternalFailureException = {
    type = "structure",
    id = "HandlerInternalFailureException",
    error = "server",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.InvalidCredentialsException = {
    type = "structure",
    id = "InvalidCredentialsException",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.InvalidRequestException = {
    type = "structure",
    id = "InvalidRequestException",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.NetworkFailureException = {
    type = "structure",
    id = "NetworkFailureException",
    error = "server",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.NotStabilizedException = {
    type = "structure",
    id = "NotStabilizedException",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.NotUpdatableException = {
    type = "structure",
    id = "NotUpdatableException",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.PrivateTypeException = {
    type = "structure",
    id = "PrivateTypeException",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.ResourceConflictException = {
    type = "structure",
    id = "ResourceConflictException",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.ResourceNotFoundException = {
    type = "structure",
    id = "ResourceNotFoundException",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.ServiceInternalErrorException = {
    type = "structure",
    id = "ServiceInternalErrorException",
    error = "server",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.ServiceLimitExceededException = {
    type = "structure",
    id = "ServiceLimitExceededException",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.ThrottlingException = {
    type = "structure",
    id = "ThrottlingException",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.TypeNotFoundException = {
    type = "structure",
    id = "TypeNotFoundException",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.UnsupportedActionException = {
    type = "structure",
    id = "UnsupportedActionException",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.DeleteResourceInput = {
    type = "structure",
    id = "DeleteResourceInput",
    members = {
        TypeName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        TypeVersionId = {
            type = "string",
        },
        RoleArn = {
            type = "string",
        },
        ClientToken = {
            type = "string",
            traits = {
                idempotency_token = true,
            },
        },
        Identifier = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.DeleteResourceOutput = {
    type = "structure",
    id = "DeleteResourceOutput",
    members = {
        ProgressEvent = M.ProgressEvent,
    },
}

M.GetResourceInput = {
    type = "structure",
    id = "GetResourceInput",
    members = {
        TypeName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        TypeVersionId = {
            type = "string",
        },
        RoleArn = {
            type = "string",
        },
        Identifier = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.ResourceDescription = {
    type = "structure",
    id = "ResourceDescription",
    members = {
        Identifier = {
            type = "string",
        },
        Properties = {
            type = "string",
        },
    },
}

M.GetResourceOutput = {
    type = "structure",
    id = "GetResourceOutput",
    members = {
        TypeName = {
            type = "string",
        },
        ResourceDescription = M.ResourceDescription,
    },
}

M.GetResourceRequestStatusInput = {
    type = "structure",
    id = "GetResourceRequestStatusInput",
    members = {
        RequestToken = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.HookProgressEvent = {
    type = "structure",
    id = "HookProgressEvent",
    members = {
        HookTypeName = {
            type = "string",
        },
        HookTypeVersionId = {
            type = "string",
        },
        HookTypeArn = {
            type = "string",
        },
        InvocationPoint = {
            type = "string",
        },
        HookStatus = {
            type = "string",
        },
        HookEventTime = {
            type = "timestamp",
        },
        HookStatusMessage = {
            type = "string",
        },
        FailureMode = {
            type = "string",
        },
    },
}

M.GetResourceRequestStatusOutput = {
    type = "structure",
    id = "GetResourceRequestStatusOutput",
    members = {
        ProgressEvent = M.ProgressEvent,
        HooksProgressEvent = {
            type = "list",
            member = M.HookProgressEvent,
        },
    },
}

M.ResourceRequestStatusFilter = {
    type = "structure",
    id = "ResourceRequestStatusFilter",
    members = {
        Operations = {
            type = "list",
            member = { type = "string" },
        },
        OperationStatuses = {
            type = "list",
            member = { type = "string" },
        },
    },
}

M.ListResourceRequestsInput = {
    type = "structure",
    id = "ListResourceRequestsInput",
    members = {
        MaxResults = {
            type = "integer",
        },
        NextToken = {
            type = "string",
        },
        ResourceRequestStatusFilter = M.ResourceRequestStatusFilter,
    },
}

M.ListResourceRequestsOutput = {
    type = "structure",
    id = "ListResourceRequestsOutput",
    members = {
        ResourceRequestStatusSummaries = {
            type = "list",
            member = M.ProgressEvent,
        },
        NextToken = {
            type = "string",
        },
    },
}

M.ListResourcesInput = {
    type = "structure",
    id = "ListResourcesInput",
    members = {
        TypeName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        TypeVersionId = {
            type = "string",
        },
        RoleArn = {
            type = "string",
        },
        NextToken = {
            type = "string",
        },
        MaxResults = {
            type = "integer",
        },
        ResourceModel = {
            type = "string",
        },
    },
}

M.ListResourcesOutput = {
    type = "structure",
    id = "ListResourcesOutput",
    members = {
        TypeName = {
            type = "string",
        },
        ResourceDescriptions = {
            type = "list",
            member = M.ResourceDescription,
        },
        NextToken = {
            type = "string",
        },
    },
}

M.UpdateResourceInput = {
    type = "structure",
    id = "UpdateResourceInput",
    members = {
        TypeName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        TypeVersionId = {
            type = "string",
        },
        RoleArn = {
            type = "string",
        },
        ClientToken = {
            type = "string",
            traits = {
                idempotency_token = true,
            },
        },
        Identifier = {
            type = "string",
            traits = {
                required = true,
            },
        },
        PatchDocument = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.UpdateResourceOutput = {
    type = "structure",
    id = "UpdateResourceOutput",
    members = {
        ProgressEvent = M.ProgressEvent,
    },
}

return M
