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
        resourceId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        resourceType = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.EndpointTemporarilyUnavailableException = {
    type = "structure",
    id = "EndpointTemporarilyUnavailableException",
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

M.GetRoutingControlStateInput = {
    type = "structure",
    id = "GetRoutingControlStateInput",
    members = {
        RoutingControlArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.RoutingControlState = {
    On = "On",
    Off = "Off",
}

M.GetRoutingControlStateOutput = {
    type = "structure",
    id = "GetRoutingControlStateOutput",
    members = {
        RoutingControlArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        RoutingControlState = {
            type = "string",
            traits = {
                required = true,
            },
        },
        RoutingControlName = {
            type = "string",
        },
    },
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
        retryAfterSeconds = {
            type = "integer",
            traits = {
                default = 0,
                http_header = "Retry-After",
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
        resourceId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        resourceType = {
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
        retryAfterSeconds = {
            type = "integer",
            traits = {
                default = 0,
                http_header = "Retry-After",
            },
        },
    },
}

M.ValidationExceptionField = {
    type = "structure",
    id = "ValidationExceptionField",
    members = {
        name = {
            type = "string",
            traits = {
                required = true,
            },
        },
        message = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.ValidationExceptionReason = {
    UNKNOWN_OPERATION = "unknownOperation",
    CANNOT_PARSE = "cannotParse",
    FIELD_VALIDATION_FAILED = "fieldValidationFailed",
    OTHER = "other",
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
        fields = {
            type = "list",
            member = M.ValidationExceptionField,
        },
    },
}

M.ListRoutingControlsInput = {
    type = "structure",
    id = "ListRoutingControlsInput",
    members = {
        ControlPanelArn = {
            type = "string",
        },
        NextToken = {
            type = "string",
        },
        MaxResults = {
            type = "integer",
        },
    },
}

M.RoutingControl = {
    type = "structure",
    id = "RoutingControl",
    members = {
        ControlPanelArn = {
            type = "string",
        },
        ControlPanelName = {
            type = "string",
        },
        RoutingControlArn = {
            type = "string",
        },
        RoutingControlName = {
            type = "string",
        },
        RoutingControlState = {
            type = "string",
        },
        Owner = {
            type = "string",
        },
    },
}

M.ListRoutingControlsOutput = {
    type = "structure",
    id = "ListRoutingControlsOutput",
    members = {
        RoutingControls = {
            type = "list",
            member = M.RoutingControl,
            traits = {
                required = true,
            },
        },
        NextToken = {
            type = "string",
        },
    },
}

M.ServiceLimitExceededException = {
    type = "structure",
    id = "ServiceLimitExceededException",
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
        limitCode = {
            type = "string",
            traits = {
                required = true,
            },
        },
        serviceCode = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.UpdateRoutingControlStateInput = {
    type = "structure",
    id = "UpdateRoutingControlStateInput",
    members = {
        RoutingControlArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        RoutingControlState = {
            type = "string",
            traits = {
                required = true,
            },
        },
        SafetyRulesToOverride = {
            type = "list",
            member = { type = "string" },
        },
    },
}

M.UpdateRoutingControlStateOutput = {
    type = "structure",
    id = "UpdateRoutingControlStateOutput",
}

M.UpdateRoutingControlStateEntry = {
    type = "structure",
    id = "UpdateRoutingControlStateEntry",
    members = {
        RoutingControlArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        RoutingControlState = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.UpdateRoutingControlStatesInput = {
    type = "structure",
    id = "UpdateRoutingControlStatesInput",
    members = {
        UpdateRoutingControlStateEntries = {
            type = "list",
            member = M.UpdateRoutingControlStateEntry,
            traits = {
                required = true,
            },
        },
        SafetyRulesToOverride = {
            type = "list",
            member = { type = "string" },
        },
    },
}

M.UpdateRoutingControlStatesOutput = {
    type = "structure",
    id = "UpdateRoutingControlStatesOutput",
}

return M
