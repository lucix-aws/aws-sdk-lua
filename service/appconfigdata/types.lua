local M = {}

M.InvalidParameterProblem = {
    CORRUPTED = "Corrupted",
    EXPIRED = "Expired",
    POLL_INTERVAL_NOT_SATISFIED = "PollIntervalNotSatisfied",
}

M.InvalidParameterDetail = {
    type = "structure",
    id = "InvalidParameterDetail",
    members = {
        Problem = {
            type = "string",
        },
    },
}

M.BadRequestDetails = {
    type = "union",
    id = "BadRequestDetails",
    members = {
        InvalidParameters = {
            type = "map",
            key = { type = "string" },
            value = M.InvalidParameterDetail,
        },
    },
}

M.BadRequestReason = {
    INVALID_PARAMETERS = "InvalidParameters",
}

M.BadRequestException = {
    type = "structure",
    id = "BadRequestException",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
        Reason = {
            type = "string",
        },
        Details = M.BadRequestDetails,
    },
}

M.InternalServerException = {
    type = "structure",
    id = "InternalServerException",
    error = "server",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.ResourceType = {
    APPLICATION = "Application",
    CONFIGURATION_PROFILE = "ConfigurationProfile",
    DEPLOYMENT = "Deployment",
    ENVIRONMENT = "Environment",
    CONFIGURATION = "Configuration",
}

M.ResourceNotFoundException = {
    type = "structure",
    id = "ResourceNotFoundException",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
        ResourceType = {
            type = "string",
        },
        ReferencedBy = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
    },
}

M.StartConfigurationSessionInput = {
    type = "structure",
    id = "StartConfigurationSessionInput",
    members = {
        ApplicationIdentifier = {
            type = "string",
            traits = {
                required = true,
            },
        },
        EnvironmentIdentifier = {
            type = "string",
            traits = {
                required = true,
            },
        },
        ConfigurationProfileIdentifier = {
            type = "string",
            traits = {
                required = true,
            },
        },
        RequiredMinimumPollIntervalInSeconds = {
            type = "integer",
        },
    },
}

M.StartConfigurationSessionOutput = {
    type = "structure",
    id = "StartConfigurationSessionOutput",
    members = {
        InitialConfigurationToken = {
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

M.GetLatestConfigurationInput = {
    type = "structure",
    id = "GetLatestConfigurationInput",
    members = {
        ConfigurationToken = {
            type = "string",
            traits = {
                http_query = "configuration_token",
                required = true,
            },
        },
    },
}

M.GetLatestConfigurationOutput = {
    type = "structure",
    id = "GetLatestConfigurationOutput",
    members = {
        NextPollConfigurationToken = {
            type = "string",
            traits = {
                http_header = "Next-Poll-Configuration-Token",
            },
        },
        NextPollIntervalInSeconds = {
            type = "integer",
            traits = {
                default = 0,
                http_header = "Next-Poll-Interval-In-Seconds",
            },
        },
        ContentType = {
            type = "string",
            traits = {
                http_header = "Content-Type",
            },
        },
        Configuration = {
            type = "blob",
            traits = {
                http_payload = true,
            },
        },
        VersionLabel = {
            type = "string",
            traits = {
                http_header = "Version-Label",
            },
        },
    },
}

return M
