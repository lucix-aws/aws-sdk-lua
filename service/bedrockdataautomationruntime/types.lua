local M = {}

M.AccessDeniedException = {
    type = "structure",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.GetDataAutomationStatusInput = {
    type = "structure",
    members = {
        invocationArn = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.OutputConfiguration = {
    type = "structure",
    members = {
        s3Uri = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.AutomationJobStatus = {
    CREATED = "Created",
    IN_PROGRESS = "InProgress",
    SUCCESS = "Success",
    SERVICE_ERROR = "ServiceError",
    CLIENT_ERROR = "ClientError",
}

M.GetDataAutomationStatusOutput = {
    type = "structure",
    members = {
        status = {
            type = "string",
        },
        errorType = {
            type = "string",
        },
        errorMessage = {
            type = "string",
        },
        outputConfiguration = M.OutputConfiguration,
        jobSubmissionTime = {
            type = "timestamp",
            traits = {
                timestamp_format = "date-time",
            },
        },
        jobCompletionTime = {
            type = "timestamp",
            traits = {
                timestamp_format = "date-time",
            },
        },
        jobDurationInSeconds = {
            type = "integer",
        },
    },
}

M.InternalServerException = {
    type = "structure",
    error = "server",
    members = {
        message = {
            type = "string",
        },
    },
}

M.ResourceNotFoundException = {
    type = "structure",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.ThrottlingException = {
    type = "structure",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.ValidationException = {
    type = "structure",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.BlueprintStage = {
    DEVELOPMENT = "DEVELOPMENT",
    LIVE = "LIVE",
}

M.Blueprint = {
    type = "structure",
    members = {
        blueprintArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        version = {
            type = "string",
        },
        stage = {
            type = "string",
        },
    },
}

M.DataAutomationStage = {
    LIVE = "LIVE",
    DEVELOPMENT = "DEVELOPMENT",
}

M.DataAutomationConfiguration = {
    type = "structure",
    members = {
        dataAutomationProjectArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        stage = {
            type = "string",
        },
    },
}

M.EncryptionConfiguration = {
    type = "structure",
    members = {
        kmsKeyId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        kmsEncryptionContext = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
    },
}

M.TimestampSegment = {
    type = "structure",
    members = {
        startTimeMillis = {
            type = "long",
            traits = {
                required = true,
            },
        },
        endTimeMillis = {
            type = "long",
            traits = {
                required = true,
            },
        },
    },
}

M.VideoSegmentConfiguration = {
    type = "union",
    members = {
        timestampSegment = M.TimestampSegment,
    },
}

M.VideoAssetProcessingConfiguration = {
    type = "structure",
    members = {
        segmentConfiguration = M.VideoSegmentConfiguration,
    },
}

M.AssetProcessingConfiguration = {
    type = "structure",
    members = {
        video = M.VideoAssetProcessingConfiguration,
    },
}

M.InputConfiguration = {
    type = "structure",
    members = {
        s3Uri = {
            type = "string",
            traits = {
                required = true,
            },
        },
        assetProcessingConfiguration = M.AssetProcessingConfiguration,
    },
}

M.EventBridgeConfiguration = {
    type = "structure",
    members = {
        eventBridgeEnabled = {
            type = "boolean",
            traits = {
                required = true,
            },
        },
    },
}

M.NotificationConfiguration = {
    type = "structure",
    members = {
        eventBridgeConfiguration = setmetatable({ traits = {
            required = true,
        } }, { __index = M.EventBridgeConfiguration }),
    },
}

M.Tag = {
    type = "structure",
    members = {
        key = {
            type = "string",
            traits = {
                required = true,
            },
        },
        value = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.InvokeDataAutomationAsyncInput = {
    type = "structure",
    members = {
        clientToken = {
            type = "string",
            traits = {
                idempotency_token = true,
            },
        },
        inputConfiguration = setmetatable({ traits = {
            required = true,
        } }, { __index = M.InputConfiguration }),
        outputConfiguration = setmetatable({ traits = {
            required = true,
        } }, { __index = M.OutputConfiguration }),
        dataAutomationConfiguration = M.DataAutomationConfiguration,
        encryptionConfiguration = M.EncryptionConfiguration,
        notificationConfiguration = M.NotificationConfiguration,
        blueprints = {
            type = "list",
            member = M.Blueprint,
        },
        dataAutomationProfileArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        tags = {
            type = "list",
            member = M.Tag,
        },
    },
}

M.InvokeDataAutomationAsyncOutput = {
    type = "structure",
    members = {
        invocationArn = {
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
        },
    },
}

M.SyncInputConfiguration = {
    type = "structure",
    members = {
        bytes = {
            type = "blob",
        },
        s3Uri = {
            type = "string",
        },
    },
}

M.InvokeDataAutomationInput = {
    type = "structure",
    members = {
        inputConfiguration = setmetatable({ traits = {
            required = true,
        } }, { __index = M.SyncInputConfiguration }),
        dataAutomationConfiguration = M.DataAutomationConfiguration,
        blueprints = {
            type = "list",
            member = M.Blueprint,
        },
        dataAutomationProfileArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        encryptionConfiguration = M.EncryptionConfiguration,
        outputConfiguration = M.OutputConfiguration,
    },
}

M.CustomOutputStatus = {
    MATCH = "MATCH",
    NO_MATCH = "NO_MATCH",
}

M.OutputSegment = {
    type = "structure",
    members = {
        customOutputStatus = {
            type = "string",
        },
        customOutput = {
            type = "string",
        },
        standardOutput = {
            type = "string",
        },
    },
}

M.SemanticModality = {
    DOCUMENT = "DOCUMENT",
    IMAGE = "IMAGE",
    AUDIO = "AUDIO",
    VIDEO = "VIDEO",
}

M.InvokeDataAutomationOutput = {
    type = "structure",
    members = {
        outputConfiguration = M.OutputConfiguration,
        semanticModality = {
            type = "string",
            traits = {
                required = true,
            },
        },
        outputSegments = {
            type = "list",
            member = M.OutputSegment,
            traits = {
                default = {},
            },
        },
    },
}

M.ServiceUnavailableException = {
    type = "structure",
    error = "server",
    members = {
        message = {
            type = "string",
        },
    },
}

M.ListTagsForResourceInput = {
    type = "structure",
    members = {
        resourceARN = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.ListTagsForResourceOutput = {
    type = "structure",
    members = {
        tags = {
            type = "list",
            member = M.Tag,
        },
    },
}

M.TagResourceInput = {
    type = "structure",
    members = {
        resourceARN = {
            type = "string",
            traits = {
                required = true,
            },
        },
        tags = {
            type = "list",
            member = M.Tag,
            traits = {
                required = true,
            },
        },
    },
}

M.TagResourceOutput = {
    type = "structure",
}

M.UntagResourceInput = {
    type = "structure",
    members = {
        resourceARN = {
            type = "string",
            traits = {
                required = true,
            },
        },
        tagKeys = {
            type = "list",
            member = { type = "string" },
            traits = {
                required = true,
            },
        },
    },
}

M.UntagResourceOutput = {
    type = "structure",
}

return M
