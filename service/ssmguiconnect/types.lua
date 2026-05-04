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
    },
}

M.S3Bucket = {
    type = "structure",
    id = "S3Bucket",
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
    id = "RecordingDestinations",
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
    id = "ConnectionRecordingPreferences",
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
    id = "DeleteConnectionRecordingPreferencesInput",
    members = {
        ClientToken = {
            type = "string",
            traits = {
                idempotency_token = true,
            },
        },
    },
}

M.DeleteConnectionRecordingPreferencesOutput = {
    type = "structure",
    id = "DeleteConnectionRecordingPreferencesOutput",
    members = {
        ClientToken = {
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
    },
}

M.ServiceQuotaExceededException = {
    type = "structure",
    id = "ServiceQuotaExceededException",
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
    id = "ThrottlingException",
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
    id = "ValidationException",
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
    id = "GetConnectionRecordingPreferencesInput",
}

M.GetConnectionRecordingPreferencesOutput = {
    type = "structure",
    id = "GetConnectionRecordingPreferencesOutput",
    members = {
        ClientToken = {
            type = "string",
        },
        ConnectionRecordingPreferences = M.ConnectionRecordingPreferences,
    },
}

M.UpdateConnectionRecordingPreferencesInput = {
    type = "structure",
    id = "UpdateConnectionRecordingPreferencesInput",
    members = {
        ConnectionRecordingPreferences = setmetatable({ traits = {
            required = true,
        } }, { __index = M.ConnectionRecordingPreferences }),
        ClientToken = {
            type = "string",
            traits = {
                idempotency_token = true,
            },
        },
    },
}

M.UpdateConnectionRecordingPreferencesOutput = {
    type = "structure",
    id = "UpdateConnectionRecordingPreferencesOutput",
    members = {
        ClientToken = {
            type = "string",
        },
        ConnectionRecordingPreferences = M.ConnectionRecordingPreferences,
    },
}

return M
