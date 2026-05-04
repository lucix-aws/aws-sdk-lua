local M = {}

M.AlreadyExistsException = {
    type = "structure",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.CancelResourceRequestInput = {
    type = "structure",
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
    members = {
        ProgressEvent = M.ProgressEvent,
    },
}

M.ConcurrentModificationException = {
    type = "structure",
    error = "server",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.RequestTokenNotFoundException = {
    type = "structure",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.ClientTokenConflictException = {
    type = "structure",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.ConcurrentOperationException = {
    type = "structure",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.CreateResourceInput = {
    type = "structure",
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
    members = {
        ProgressEvent = M.ProgressEvent,
    },
}

M.GeneralServiceException = {
    type = "structure",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.HandlerFailureException = {
    type = "structure",
    error = "server",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.HandlerInternalFailureException = {
    type = "structure",
    error = "server",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.InvalidCredentialsException = {
    type = "structure",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.InvalidRequestException = {
    type = "structure",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.NetworkFailureException = {
    type = "structure",
    error = "server",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.NotStabilizedException = {
    type = "structure",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.NotUpdatableException = {
    type = "structure",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.PrivateTypeException = {
    type = "structure",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.ResourceConflictException = {
    type = "structure",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.ResourceNotFoundException = {
    type = "structure",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.ServiceInternalErrorException = {
    type = "structure",
    error = "server",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.ServiceLimitExceededException = {
    type = "structure",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.ThrottlingException = {
    type = "structure",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.TypeNotFoundException = {
    type = "structure",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.UnsupportedActionException = {
    type = "structure",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.DeleteResourceInput = {
    type = "structure",
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
    members = {
        ProgressEvent = M.ProgressEvent,
    },
}

M.GetResourceInput = {
    type = "structure",
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
    members = {
        TypeName = {
            type = "string",
        },
        ResourceDescription = M.ResourceDescription,
    },
}

M.GetResourceRequestStatusInput = {
    type = "structure",
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
    members = {
        ProgressEvent = M.ProgressEvent,
    },
}

return M
