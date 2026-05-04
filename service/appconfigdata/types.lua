local M = {}

M.InvalidParameterProblem = {
    CORRUPTED = "Corrupted",
    EXPIRED = "Expired",
    POLL_INTERVAL_NOT_SATISFIED = "PollIntervalNotSatisfied",
}

M.InvalidParameterDetail = {
    type = "structure",
    members = {
        Problem = {
            type = "string",
        },
    },
}

M.BadRequestDetails = {
    type = "union",
    members = {
        InvalidParameters = {
            type = "map",
            key_type = "string",
            value_type = "structure",
        },
    },
}

M.BadRequestReason = {
    INVALID_PARAMETERS = "InvalidParameters",
}

M.BadRequestException = {
    type = "structure",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
        Reason = {
            type = "string",
        },
        Details = {
            type = "union",
        },
    },
}

M.InternalServerException = {
    type = "structure",
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
            key_type = "string",
            value_type = "string",
        },
    },
}

M.StartConfigurationSessionInput = {
    type = "structure",
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
            type = "number",
        },
    },
}

M.StartConfigurationSessionOutput = {
    type = "structure",
    members = {
        InitialConfigurationToken = {
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

M.GetLatestConfigurationInput = {
    type = "structure",
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
    members = {
        NextPollConfigurationToken = {
            type = "string",
            traits = {
                http_header = "Next-Poll-Configuration-Token",
            },
        },
        NextPollIntervalInSeconds = {
            type = "number",
            traits = {
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
