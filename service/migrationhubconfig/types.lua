local M = {}

M.AccessDeniedException = {
    type = "structure",
    id = "AccessDeniedException",
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
    id = "Target",
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
    id = "CreateHomeRegionControlInput",
    members = {
        HomeRegion = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Target = setmetatable({ traits = {
            required = true,
        } }, { __index = M.Target }),
        DryRun = {
            type = "boolean",
            traits = {
                default = false,
            },
        },
    },
}

M.HomeRegionControl = {
    type = "structure",
    id = "HomeRegionControl",
    members = {
        ControlId = {
            type = "string",
        },
        HomeRegion = {
            type = "string",
        },
        Target = M.Target,
        RequestedTime = {
            type = "timestamp",
        },
    },
}

M.CreateHomeRegionControlOutput = {
    type = "structure",
    id = "CreateHomeRegionControlOutput",
    members = {
        HomeRegionControl = M.HomeRegionControl,
    },
}

M.DryRunOperation = {
    type = "structure",
    id = "DryRunOperation",
    error = "client",
    members = {
        Message = {
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
    },
}

M.InvalidInputException = {
    type = "structure",
    id = "InvalidInputException",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.ServiceUnavailableException = {
    type = "structure",
    id = "ServiceUnavailableException",
    error = "server",
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
            traits = {
                required = true,
            },
        },
        RetryAfterSeconds = {
            type = "integer",
            traits = {
                default = 0,
                http_header = "Retry-After",
            },
        },
    },
}

M.DeleteHomeRegionControlInput = {
    type = "structure",
    id = "DeleteHomeRegionControlInput",
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
    id = "DeleteHomeRegionControlOutput",
}

M.DescribeHomeRegionControlsInput = {
    type = "structure",
    id = "DescribeHomeRegionControlsInput",
    members = {
        ControlId = {
            type = "string",
        },
        HomeRegion = {
            type = "string",
        },
        Target = M.Target,
        MaxResults = {
            type = "integer",
        },
        NextToken = {
            type = "string",
        },
    },
}

M.DescribeHomeRegionControlsOutput = {
    type = "structure",
    id = "DescribeHomeRegionControlsOutput",
    members = {
        HomeRegionControls = {
            type = "list",
            member = M.HomeRegionControl,
        },
        NextToken = {
            type = "string",
        },
    },
}

M.GetHomeRegionInput = {
    type = "structure",
    id = "GetHomeRegionInput",
}

M.GetHomeRegionOutput = {
    type = "structure",
    id = "GetHomeRegionOutput",
    members = {
        HomeRegion = {
            type = "string",
        },
    },
}

return M
