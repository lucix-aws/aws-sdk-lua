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
    },
}

M.S3Bucket = {
    type = "structure",
    members = {
        BucketOwner = {
            type = "string",
            traits = {
                required = true,
            },
        },
        BucketName = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.RecordingDestinations = {
    type = "structure",
    members = {
        S3Buckets = {
            type = "list",
            member = M.S3Bucket,
            traits = {
                required = true,
            },
        },
    },
}

M.ConnectionRecordingPreferences = {
    type = "structure",
    members = {
        RecordingDestinations = setmetatable({ traits = {
            required = true,
        } }, { __index = M.RecordingDestinations }),
        KMSKeyArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.DeleteConnectionRecordingPreferencesInput = {
    type = "structure",
    members = {
        ClientToken = {
            type = "string",
        },
    },
}

M.DeleteConnectionRecordingPreferencesOutput = {
    type = "structure",
    members = {
        ClientToken = {
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
    },
}

M.ServiceQuotaExceededException = {
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
    },
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
    },
}

M.GetConnectionRecordingPreferencesInput = {
    type = "structure",
}

M.GetConnectionRecordingPreferencesOutput = {
    type = "structure",
    members = {
        ClientToken = {
            type = "string",
        },
        ConnectionRecordingPreferences = M.ConnectionRecordingPreferences,
    },
}

M.UpdateConnectionRecordingPreferencesInput = {
    type = "structure",
    members = {
        ConnectionRecordingPreferences = setmetatable({ traits = {
            required = true,
        } }, { __index = M.ConnectionRecordingPreferences }),
        ClientToken = {
            type = "string",
        },
    },
}

M.UpdateConnectionRecordingPreferencesOutput = {
    type = "structure",
    members = {
        ClientToken = {
            type = "string",
        },
        ConnectionRecordingPreferences = M.ConnectionRecordingPreferences,
    },
}

return M
