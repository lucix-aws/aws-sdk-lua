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
    error = "server",
    members = {
        message = {
            type = "string",
            traits = {
                required = true,
            },
        },
        retryAfterSeconds = {
            type = "number",
            traits = {
                http_header = "Retry-After",
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
    error = "client",
    members = {
        message = {
            type = "string",
            traits = {
                required = true,
            },
        },
        retryAfterSeconds = {
            type = "number",
            traits = {
                http_header = "Retry-After",
            },
        },
    },
}

M.ValidationExceptionField = {
    type = "structure",
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
            member_type = "structure",
        },
    },
}

M.ListRoutingControlsInput = {
    type = "structure",
    members = {
        ControlPanelArn = {
            type = "string",
        },
        NextToken = {
            type = "string",
        },
        MaxResults = {
            type = "number",
        },
    },
}

M.RoutingControl = {
    type = "structure",
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
    members = {
        RoutingControls = {
            type = "list",
            member_type = "structure",
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
            member_type = "string",
        },
    },
}

M.UpdateRoutingControlStateOutput = {
    type = "structure",
}

M.UpdateRoutingControlStateEntry = {
    type = "structure",
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
    members = {
        UpdateRoutingControlStateEntries = {
            type = "list",
            member_type = "structure",
            traits = {
                required = true,
            },
        },
        SafetyRulesToOverride = {
            type = "list",
            member_type = "string",
        },
    },
}

M.UpdateRoutingControlStatesOutput = {
    type = "structure",
}

return M
