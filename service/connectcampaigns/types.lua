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
        xAmzErrorType = {
            type = "string",
            traits = {
                http_header = "x-amzn-ErrorType",
            },
        },
    },
}

M.AgentlessDialerConfig = {
    type = "structure",
    id = "AgentlessDialerConfig",
    members = {
        dialingCapacity = {
            type = "double",
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
        xAmzErrorType = {
            type = "string",
            traits = {
                http_header = "x-amzn-ErrorType",
            },
        },
    },
}

M.PredictiveDialerConfig = {
    type = "structure",
    id = "PredictiveDialerConfig",
    members = {
        bandwidthAllocation = {
            type = "double",
            traits = {
                required = true,
            },
        },
        dialingCapacity = {
            type = "double",
        },
    },
}

M.ProgressiveDialerConfig = {
    type = "structure",
    id = "ProgressiveDialerConfig",
    members = {
        bandwidthAllocation = {
            type = "double",
            traits = {
                required = true,
            },
        },
        dialingCapacity = {
            type = "double",
        },
    },
}

M.DialerConfig = {
    type = "union",
    id = "DialerConfig",
    members = {
        progressiveDialerConfig = M.ProgressiveDialerConfig,
        predictiveDialerConfig = M.PredictiveDialerConfig,
        agentlessDialerConfig = M.AgentlessDialerConfig,
    },
}

M.AnswerMachineDetectionConfig = {
    type = "structure",
    id = "AnswerMachineDetectionConfig",
    members = {
        enableAnswerMachineDetection = {
            type = "boolean",
            traits = {
                required = true,
            },
        },
        awaitAnswerMachinePrompt = {
            type = "boolean",
            traits = {
                default = nil,
            },
        },
    },
}

M.OutboundCallConfig = {
    type = "structure",
    id = "OutboundCallConfig",
    members = {
        connectContactFlowId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        connectSourcePhoneNumber = {
            type = "string",
        },
        connectQueueId = {
            type = "string",
        },
        answerMachineDetectionConfig = M.AnswerMachineDetectionConfig,
    },
}

M.CreateCampaignInput = {
    type = "structure",
    id = "CreateCampaignInput",
    members = {
        name = {
            type = "string",
            traits = {
                required = true,
            },
        },
        connectInstanceId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        dialerConfig = setmetatable({ traits = {
            required = true,
        } }, { __index = M.DialerConfig }),
        outboundCallConfig = setmetatable({ traits = {
            required = true,
        } }, { __index = M.OutboundCallConfig }),
        tags = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
    },
}

M.CreateCampaignOutput = {
    type = "structure",
    id = "CreateCampaignOutput",
    members = {
        id = {
            type = "string",
        },
        arn = {
            type = "string",
        },
        tags = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
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
        xAmzErrorType = {
            type = "string",
            traits = {
                http_header = "x-amzn-ErrorType",
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
        xAmzErrorType = {
            type = "string",
            traits = {
                http_header = "x-amzn-ErrorType",
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
        xAmzErrorType = {
            type = "string",
            traits = {
                http_header = "x-amzn-ErrorType",
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
        xAmzErrorType = {
            type = "string",
            traits = {
                http_header = "x-amzn-ErrorType",
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
        xAmzErrorType = {
            type = "string",
            traits = {
                http_header = "x-amzn-ErrorType",
            },
        },
    },
}

M.DeleteCampaignInput = {
    type = "structure",
    id = "DeleteCampaignInput",
    members = {
        id = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.DeleteCampaignOutput = {
    type = "structure",
    id = "DeleteCampaignOutput",
}

M.DeleteConnectInstanceConfigInput = {
    type = "structure",
    id = "DeleteConnectInstanceConfigInput",
    members = {
        connectInstanceId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.DeleteConnectInstanceConfigOutput = {
    type = "structure",
    id = "DeleteConnectInstanceConfigOutput",
}

M.InvalidStateException = {
    type = "structure",
    id = "InvalidStateException",
    error = "client",
    members = {
        message = {
            type = "string",
            traits = {
                required = true,
            },
        },
        xAmzErrorType = {
            type = "string",
            traits = {
                http_header = "x-amzn-ErrorType",
            },
        },
    },
}

M.DeleteInstanceOnboardingJobInput = {
    type = "structure",
    id = "DeleteInstanceOnboardingJobInput",
    members = {
        connectInstanceId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.DeleteInstanceOnboardingJobOutput = {
    type = "structure",
    id = "DeleteInstanceOnboardingJobOutput",
}

M.DescribeCampaignInput = {
    type = "structure",
    id = "DescribeCampaignInput",
    members = {
        id = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.Campaign = {
    type = "structure",
    id = "Campaign",
    members = {
        id = {
            type = "string",
            traits = {
                required = true,
            },
        },
        arn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        name = {
            type = "string",
            traits = {
                required = true,
            },
        },
        connectInstanceId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        dialerConfig = setmetatable({ traits = {
            required = true,
        } }, { __index = M.DialerConfig }),
        outboundCallConfig = setmetatable({ traits = {
            required = true,
        } }, { __index = M.OutboundCallConfig }),
        tags = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
    },
}

M.DescribeCampaignOutput = {
    type = "structure",
    id = "DescribeCampaignOutput",
    members = {
        campaign = M.Campaign,
    },
}

M.GetCampaignStateInput = {
    type = "structure",
    id = "GetCampaignStateInput",
    members = {
        id = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.CampaignState = {
    INITIALIZED = "Initialized",
    RUNNING = "Running",
    PAUSED = "Paused",
    STOPPED = "Stopped",
    FAILED = "Failed",
}

M.GetCampaignStateOutput = {
    type = "structure",
    id = "GetCampaignStateOutput",
    members = {
        state = {
            type = "string",
        },
    },
}

M.GetCampaignStateBatchInput = {
    type = "structure",
    id = "GetCampaignStateBatchInput",
    members = {
        campaignIds = {
            type = "list",
            member = { type = "string" },
            traits = {
                required = true,
            },
        },
    },
}

M.GetCampaignStateBatchFailureCode = {
    RESOURCE_NOT_FOUND = "ResourceNotFound",
    UNKNOWN_ERROR = "UnknownError",
}

M.FailedCampaignStateResponse = {
    type = "structure",
    id = "FailedCampaignStateResponse",
    members = {
        campaignId = {
            type = "string",
        },
        failureCode = {
            type = "string",
        },
    },
}

M.SuccessfulCampaignStateResponse = {
    type = "structure",
    id = "SuccessfulCampaignStateResponse",
    members = {
        campaignId = {
            type = "string",
        },
        state = {
            type = "string",
        },
    },
}

M.GetCampaignStateBatchOutput = {
    type = "structure",
    id = "GetCampaignStateBatchOutput",
    members = {
        successfulRequests = {
            type = "list",
            member = M.SuccessfulCampaignStateResponse,
        },
        failedRequests = {
            type = "list",
            member = M.FailedCampaignStateResponse,
        },
    },
}

M.GetConnectInstanceConfigInput = {
    type = "structure",
    id = "GetConnectInstanceConfigInput",
    members = {
        connectInstanceId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.EncryptionType = {
    KMS = "KMS",
}

M.EncryptionConfig = {
    type = "structure",
    id = "EncryptionConfig",
    members = {
        enabled = {
            type = "boolean",
            traits = {
                default = false,
                required = true,
            },
        },
        encryptionType = {
            type = "string",
        },
        keyArn = {
            type = "string",
        },
    },
}

M.InstanceConfig = {
    type = "structure",
    id = "InstanceConfig",
    members = {
        connectInstanceId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        serviceLinkedRoleArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        encryptionConfig = setmetatable({ traits = {
            required = true,
        } }, { __index = M.EncryptionConfig }),
    },
}

M.GetConnectInstanceConfigOutput = {
    type = "structure",
    id = "GetConnectInstanceConfigOutput",
    members = {
        connectInstanceConfig = M.InstanceConfig,
    },
}

M.GetInstanceOnboardingJobStatusInput = {
    type = "structure",
    id = "GetInstanceOnboardingJobStatusInput",
    members = {
        connectInstanceId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.InstanceOnboardingJobFailureCode = {
    EVENT_BRIDGE_ACCESS_DENIED = "EVENT_BRIDGE_ACCESS_DENIED",
    EVENT_BRIDGE_MANAGED_RULE_LIMIT_EXCEEDED = "EVENT_BRIDGE_MANAGED_RULE_LIMIT_EXCEEDED",
    IAM_ACCESS_DENIED = "IAM_ACCESS_DENIED",
    KMS_ACCESS_DENIED = "KMS_ACCESS_DENIED",
    KMS_KEY_NOT_FOUND = "KMS_KEY_NOT_FOUND",
    INTERNAL_FAILURE = "INTERNAL_FAILURE",
}

M.InstanceOnboardingJobStatusCode = {
    IN_PROGRESS = "IN_PROGRESS",
    SUCCEEDED = "SUCCEEDED",
    FAILED = "FAILED",
}

M.InstanceOnboardingJobStatus = {
    type = "structure",
    id = "InstanceOnboardingJobStatus",
    members = {
        connectInstanceId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        status = {
            type = "string",
            traits = {
                required = true,
            },
        },
        failureCode = {
            type = "string",
        },
    },
}

M.GetInstanceOnboardingJobStatusOutput = {
    type = "structure",
    id = "GetInstanceOnboardingJobStatusOutput",
    members = {
        connectInstanceOnboardingJobStatus = M.InstanceOnboardingJobStatus,
    },
}

M.InstanceIdFilterOperator = {
    EQ = "Eq",
}

M.InstanceIdFilter = {
    type = "structure",
    id = "InstanceIdFilter",
    members = {
        value = {
            type = "string",
            traits = {
                required = true,
            },
        },
        operator = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.CampaignFilters = {
    type = "structure",
    id = "CampaignFilters",
    members = {
        instanceIdFilter = M.InstanceIdFilter,
    },
}

M.ListCampaignsInput = {
    type = "structure",
    id = "ListCampaignsInput",
    members = {
        maxResults = {
            type = "integer",
        },
        nextToken = {
            type = "string",
        },
        filters = M.CampaignFilters,
    },
}

M.CampaignSummary = {
    type = "structure",
    id = "CampaignSummary",
    members = {
        id = {
            type = "string",
            traits = {
                required = true,
            },
        },
        arn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        name = {
            type = "string",
            traits = {
                required = true,
            },
        },
        connectInstanceId = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.ListCampaignsOutput = {
    type = "structure",
    id = "ListCampaignsOutput",
    members = {
        nextToken = {
            type = "string",
        },
        campaignSummaryList = {
            type = "list",
            member = M.CampaignSummary,
        },
    },
}

M.ListTagsForResourceInput = {
    type = "structure",
    id = "ListTagsForResourceInput",
    members = {
        arn = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.ListTagsForResourceOutput = {
    type = "structure",
    id = "ListTagsForResourceOutput",
    members = {
        tags = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
    },
}

M.InvalidCampaignStateException = {
    type = "structure",
    id = "InvalidCampaignStateException",
    error = "client",
    members = {
        state = {
            type = "string",
            traits = {
                required = true,
            },
        },
        message = {
            type = "string",
            traits = {
                required = true,
            },
        },
        xAmzErrorType = {
            type = "string",
            traits = {
                http_header = "x-amzn-ErrorType",
            },
        },
    },
}

M.PauseCampaignInput = {
    type = "structure",
    id = "PauseCampaignInput",
    members = {
        id = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.PauseCampaignOutput = {
    type = "structure",
    id = "PauseCampaignOutput",
}

M.DialRequest = {
    type = "structure",
    id = "DialRequest",
    members = {
        clientToken = {
            type = "string",
            traits = {
                required = true,
            },
        },
        phoneNumber = {
            type = "string",
            traits = {
                required = true,
            },
        },
        expirationTime = {
            type = "timestamp",
            traits = {
                required = true,
                timestamp_format = "date-time",
            },
        },
        attributes = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
            traits = {
                required = true,
            },
        },
    },
}

M.PutDialRequestBatchInput = {
    type = "structure",
    id = "PutDialRequestBatchInput",
    members = {
        id = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        dialRequests = {
            type = "list",
            member = M.DialRequest,
            traits = {
                required = true,
            },
        },
    },
}

M.FailureCode = {
    INVALID_INPUT = "InvalidInput",
    REQUEST_THROTTLED = "RequestThrottled",
    UNKNOWN_ERROR = "UnknownError",
}

M.FailedRequest = {
    type = "structure",
    id = "FailedRequest",
    members = {
        clientToken = {
            type = "string",
        },
        id = {
            type = "string",
        },
        failureCode = {
            type = "string",
        },
    },
}

M.SuccessfulRequest = {
    type = "structure",
    id = "SuccessfulRequest",
    members = {
        clientToken = {
            type = "string",
        },
        id = {
            type = "string",
        },
    },
}

M.PutDialRequestBatchOutput = {
    type = "structure",
    id = "PutDialRequestBatchOutput",
    members = {
        successfulRequests = {
            type = "list",
            member = M.SuccessfulRequest,
        },
        failedRequests = {
            type = "list",
            member = M.FailedRequest,
        },
    },
}

M.ResumeCampaignInput = {
    type = "structure",
    id = "ResumeCampaignInput",
    members = {
        id = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.ResumeCampaignOutput = {
    type = "structure",
    id = "ResumeCampaignOutput",
}

M.StartCampaignInput = {
    type = "structure",
    id = "StartCampaignInput",
    members = {
        id = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.StartCampaignOutput = {
    type = "structure",
    id = "StartCampaignOutput",
}

M.StartInstanceOnboardingJobInput = {
    type = "structure",
    id = "StartInstanceOnboardingJobInput",
    members = {
        connectInstanceId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        encryptionConfig = setmetatable({ traits = {
            required = true,
        } }, { __index = M.EncryptionConfig }),
    },
}

M.StartInstanceOnboardingJobOutput = {
    type = "structure",
    id = "StartInstanceOnboardingJobOutput",
    members = {
        connectInstanceOnboardingJobStatus = M.InstanceOnboardingJobStatus,
    },
}

M.StopCampaignInput = {
    type = "structure",
    id = "StopCampaignInput",
    members = {
        id = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.StopCampaignOutput = {
    type = "structure",
    id = "StopCampaignOutput",
}

M.TagResourceInput = {
    type = "structure",
    id = "TagResourceInput",
    members = {
        arn = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        tags = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
            traits = {
                required = true,
            },
        },
    },
}

M.TagResourceOutput = {
    type = "structure",
    id = "TagResourceOutput",
}

M.UntagResourceInput = {
    type = "structure",
    id = "UntagResourceInput",
    members = {
        arn = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        tagKeys = {
            type = "list",
            member = { type = "string" },
            traits = {
                http_query = "tagKeys",
                required = true,
            },
        },
    },
}

M.UntagResourceOutput = {
    type = "structure",
    id = "UntagResourceOutput",
}

M.UpdateCampaignDialerConfigInput = {
    type = "structure",
    id = "UpdateCampaignDialerConfigInput",
    members = {
        id = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        dialerConfig = setmetatable({ traits = {
            required = true,
        } }, { __index = M.DialerConfig }),
    },
}

M.UpdateCampaignDialerConfigOutput = {
    type = "structure",
    id = "UpdateCampaignDialerConfigOutput",
}

M.UpdateCampaignNameInput = {
    type = "structure",
    id = "UpdateCampaignNameInput",
    members = {
        id = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        name = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.UpdateCampaignNameOutput = {
    type = "structure",
    id = "UpdateCampaignNameOutput",
}

M.UpdateCampaignOutboundCallConfigInput = {
    type = "structure",
    id = "UpdateCampaignOutboundCallConfigInput",
    members = {
        id = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        connectContactFlowId = {
            type = "string",
        },
        connectSourcePhoneNumber = {
            type = "string",
        },
        answerMachineDetectionConfig = M.AnswerMachineDetectionConfig,
    },
}

M.UpdateCampaignOutboundCallConfigOutput = {
    type = "structure",
    id = "UpdateCampaignOutboundCallConfigOutput",
}

return M
