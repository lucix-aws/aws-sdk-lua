local M = {}

M.AccessForbidden = {
    type = "structure",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.ExpirationTimeResponse = {
    ENABLED = "Enabled",
    DISABLED = "Disabled",
}

M.BatchGetRecordIdentifier = {
    type = "structure",
    members = {
        FeatureGroupName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        RecordIdentifiersValueAsString = {
            type = "list",
            member = { type = "string" },
            traits = {
                required = true,
            },
        },
        FeatureNames = {
            type = "list",
            member = { type = "string" },
        },
    },
}

M.BatchGetRecordInput = {
    type = "structure",
    members = {
        Identifiers = {
            type = "list",
            member = M.BatchGetRecordIdentifier,
            traits = {
                required = true,
            },
        },
        ExpirationTimeResponse = {
            type = "string",
        },
    },
}

M.BatchGetRecordError = {
    type = "structure",
    members = {
        FeatureGroupName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        RecordIdentifierValueAsString = {
            type = "string",
            traits = {
                required = true,
            },
        },
        ErrorCode = {
            type = "string",
            traits = {
                required = true,
            },
        },
        ErrorMessage = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.FeatureValue = {
    type = "structure",
    members = {
        FeatureName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        ValueAsString = {
            type = "string",
        },
        ValueAsStringList = {
            type = "list",
            member = { type = "string" },
        },
    },
}

M.BatchGetRecordResultDetail = {
    type = "structure",
    members = {
        FeatureGroupName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        RecordIdentifierValueAsString = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Record = {
            type = "list",
            member = M.FeatureValue,
            traits = {
                required = true,
            },
        },
        ExpiresAt = {
            type = "string",
        },
    },
}

M.BatchGetRecordOutput = {
    type = "structure",
    members = {
        Records = {
            type = "list",
            member = M.BatchGetRecordResultDetail,
            traits = {
                required = true,
            },
        },
        Errors = {
            type = "list",
            member = M.BatchGetRecordError,
            traits = {
                required = true,
            },
        },
        UnprocessedIdentifiers = {
            type = "list",
            member = M.BatchGetRecordIdentifier,
            traits = {
                required = true,
            },
        },
    },
}

M.InternalFailure = {
    type = "structure",
    error = "server",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.ServiceUnavailable = {
    type = "structure",
    error = "server",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.ValidationError = {
    type = "structure",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.DeletionMode = {
    SOFT_DELETE = "SoftDelete",
    HARD_DELETE = "HardDelete",
}

M.TargetStore = {
    ONLINE_STORE = "OnlineStore",
    OFFLINE_STORE = "OfflineStore",
}

M.DeleteRecordInput = {
    type = "structure",
    members = {
        FeatureGroupName = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        RecordIdentifierValueAsString = {
            type = "string",
            traits = {
                http_query = "RecordIdentifierValueAsString",
                required = true,
            },
        },
        EventTime = {
            type = "string",
            traits = {
                http_query = "EventTime",
                required = true,
            },
        },
        TargetStores = {
            type = "list",
            member = { type = "string" },
            traits = {
                http_query = "TargetStores",
            },
        },
        DeletionMode = {
            type = "string",
            traits = {
                http_query = "DeletionMode",
            },
        },
    },
}

M.DeleteRecordOutput = {
    type = "structure",
}

M.GetRecordInput = {
    type = "structure",
    members = {
        FeatureGroupName = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        RecordIdentifierValueAsString = {
            type = "string",
            traits = {
                http_query = "RecordIdentifierValueAsString",
                required = true,
            },
        },
        FeatureNames = {
            type = "list",
            member = { type = "string" },
            traits = {
                http_query = "FeatureName",
            },
        },
        ExpirationTimeResponse = {
            type = "string",
            traits = {
                http_query = "ExpirationTimeResponse",
            },
        },
    },
}

M.GetRecordOutput = {
    type = "structure",
    members = {
        Record = {
            type = "list",
            member = M.FeatureValue,
        },
        ExpiresAt = {
            type = "string",
        },
    },
}

M.ResourceNotFound = {
    type = "structure",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.TtlDurationUnit = {
    SECONDS = "Seconds",
    MINUTES = "Minutes",
    HOURS = "Hours",
    DAYS = "Days",
    WEEKS = "Weeks",
}

M.TtlDuration = {
    type = "structure",
    members = {
        Unit = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Value = {
            type = "integer",
            traits = {
                required = true,
            },
        },
    },
}

M.PutRecordInput = {
    type = "structure",
    members = {
        FeatureGroupName = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        Record = {
            type = "list",
            member = M.FeatureValue,
            traits = {
                required = true,
            },
        },
        TargetStores = {
            type = "list",
            member = { type = "string" },
        },
        TtlDuration = M.TtlDuration,
    },
}

M.PutRecordOutput = {
    type = "structure",
}

return M
