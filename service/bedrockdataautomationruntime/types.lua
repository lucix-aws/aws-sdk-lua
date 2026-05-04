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
        outputConfiguration = {
            type = "structure",
        },
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
            type = "number",
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
            key_type = "string",
            value_type = "string",
        },
    },
}

M.TimestampSegment = {
    type = "structure",
    members = {
        startTimeMillis = {
            type = "number",
            traits = {
                required = true,
            },
        },
        endTimeMillis = {
            type = "number",
            traits = {
                required = true,
            },
        },
    },
}

M.VideoSegmentConfiguration = {
    type = "union",
    members = {
        timestampSegment = {
            type = "structure",
        },
    },
}

M.VideoAssetProcessingConfiguration = {
    type = "structure",
    members = {
        segmentConfiguration = {
            type = "union",
        },
    },
}

M.AssetProcessingConfiguration = {
    type = "structure",
    members = {
        video = {
            type = "structure",
        },
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
        assetProcessingConfiguration = {
            type = "structure",
        },
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
        eventBridgeConfiguration = {
            type = "structure",
            traits = {
                required = true,
            },
        },
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
        },
        inputConfiguration = {
            type = "structure",
            traits = {
                required = true,
            },
        },
        outputConfiguration = {
            type = "structure",
            traits = {
                required = true,
            },
        },
        dataAutomationConfiguration = {
            type = "structure",
        },
        encryptionConfiguration = {
            type = "structure",
        },
        notificationConfiguration = {
            type = "structure",
        },
        blueprints = {
            type = "list",
            member_type = "structure",
        },
        dataAutomationProfileArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        tags = {
            type = "list",
            member_type = "structure",
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
        inputConfiguration = {
            type = "structure",
            traits = {
                required = true,
            },
        },
        dataAutomationConfiguration = {
            type = "structure",
        },
        blueprints = {
            type = "list",
            member_type = "structure",
        },
        dataAutomationProfileArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        encryptionConfiguration = {
            type = "structure",
        },
        outputConfiguration = {
            type = "structure",
        },
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
        outputConfiguration = {
            type = "structure",
        },
        semanticModality = {
            type = "string",
            traits = {
                required = true,
            },
        },
        outputSegments = {
            type = "list",
            member_type = "structure",
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
            member_type = "structure",
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
            member_type = "structure",
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
            member_type = "string",
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
