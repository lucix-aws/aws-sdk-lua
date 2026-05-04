local M = {}

M.AccessDeniedException = {
    type = "structure",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.TargetType = {
    ACCOUNT = "ACCOUNT",
}

M.Target = {
    type = "structure",
    members = {
        Type = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Id = {
            type = "string",
        },
    },
}

M.CreateHomeRegionControlInput = {
    type = "structure",
    members = {
        HomeRegion = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Target = {
            type = "structure",
            traits = {
                required = true,
            },
        },
        DryRun = {
            type = "boolean",
        },
    },
}

M.HomeRegionControl = {
    type = "structure",
    members = {
        ControlId = {
            type = "string",
        },
        HomeRegion = {
            type = "string",
        },
        Target = {
            type = "structure",
        },
        RequestedTime = {
            type = "timestamp",
        },
    },
}

M.CreateHomeRegionControlOutput = {
    type = "structure",
    members = {
        HomeRegionControl = {
            type = "structure",
        },
    },
}

M.DryRunOperation = {
    type = "structure",
    error = "client",
    members = {
        Message = {
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
    },
}

M.InvalidInputException = {
    type = "structure",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.ServiceUnavailableException = {
    type = "structure",
    error = "server",
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
            traits = {
                required = true,
            },
        },
        RetryAfterSeconds = {
            type = "number",
            traits = {
                http_header = "Retry-After",
            },
        },
    },
}

M.DeleteHomeRegionControlInput = {
    type = "structure",
    members = {
        ControlId = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.DeleteHomeRegionControlOutput = {
    type = "structure",
}

M.DescribeHomeRegionControlsInput = {
    type = "structure",
    members = {
        ControlId = {
            type = "string",
        },
        HomeRegion = {
            type = "string",
        },
        Target = {
            type = "structure",
        },
        MaxResults = {
            type = "number",
        },
        NextToken = {
            type = "string",
        },
    },
}

M.DescribeHomeRegionControlsOutput = {
    type = "structure",
    members = {
        HomeRegionControls = {
            type = "list",
            member_type = "structure",
        },
        NextToken = {
            type = "string",
        },
    },
}

M.GetHomeRegionInput = {
    type = "structure",
}

M.GetHomeRegionOutput = {
    type = "structure",
    members = {
        HomeRegion = {
            type = "string",
        },
    },
}

return M
