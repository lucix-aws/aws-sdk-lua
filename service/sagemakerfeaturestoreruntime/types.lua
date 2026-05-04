local M = {}

M.AccessForbidden = {
    type = "structure",
    id = "AccessForbidden",
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
    id = "BatchGetRecordIdentifier",
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
    id = "BatchGetRecordInput",
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
    id = "BatchGetRecordError",
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
    id = "FeatureValue",
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
    id = "BatchGetRecordResultDetail",
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
    id = "BatchGetRecordOutput",
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
    id = "InternalFailure",
    error = "server",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.ServiceUnavailable = {
    type = "structure",
    id = "ServiceUnavailable",
    error = "server",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.ValidationError = {
    type = "structure",
    id = "ValidationError",
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
    id = "DeleteRecordInput",
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
    id = "DeleteRecordOutput",
}

M.GetRecordInput = {
    type = "structure",
    id = "GetRecordInput",
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
    id = "GetRecordOutput",
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
    id = "ResourceNotFound",
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
    id = "TtlDuration",
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
    id = "PutRecordInput",
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
    id = "PutRecordOutput",
}

return M
