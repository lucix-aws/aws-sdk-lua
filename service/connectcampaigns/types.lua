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
    members = {
        dialingCapacity = {
            type = "number",
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
    members = {
        bandwidthAllocation = {
            type = "number",
            traits = {
                required = true,
            },
        },
        dialingCapacity = {
            type = "number",
        },
    },
}

M.ProgressiveDialerConfig = {
    type = "structure",
    members = {
        bandwidthAllocation = {
            type = "number",
            traits = {
                required = true,
            },
        },
        dialingCapacity = {
            type = "number",
        },
    },
}

M.DialerConfig = {
    type = "union",
    members = {
        progressiveDialerConfig = {
            type = "structure",
        },
        predictiveDialerConfig = {
            type = "structure",
        },
        agentlessDialerConfig = {
            type = "structure",
        },
    },
}

M.AnswerMachineDetectionConfig = {
    type = "structure",
    members = {
        enableAnswerMachineDetection = {
            type = "boolean",
            traits = {
                required = true,
            },
        },
        awaitAnswerMachinePrompt = {
            type = "boolean",
        },
    },
}

M.OutboundCallConfig = {
    type = "structure",
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
        answerMachineDetectionConfig = {
            type = "structure",
        },
    },
}

M.CreateCampaignInput = {
    type = "structure",
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
        dialerConfig = {
            type = "union",
            traits = {
                required = true,
            },
        },
        outboundCallConfig = {
            type = "structure",
            traits = {
                required = true,
            },
        },
        tags = {
            type = "map",
            key_type = "string",
            value_type = "string",
        },
    },
}

M.CreateCampaignOutput = {
    type = "structure",
    members = {
        id = {
            type = "string",
        },
        arn = {
            type = "string",
        },
        tags = {
            type = "map",
            key_type = "string",
            value_type = "string",
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
}

M.DeleteConnectInstanceConfigInput = {
    type = "structure",
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
}

M.InvalidStateException = {
    type = "structure",
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
}

M.DescribeCampaignInput = {
    type = "structure",
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
        dialerConfig = {
            type = "union",
            traits = {
                required = true,
            },
        },
        outboundCallConfig = {
            type = "structure",
            traits = {
                required = true,
            },
        },
        tags = {
            type = "map",
            key_type = "string",
            value_type = "string",
        },
    },
}

M.DescribeCampaignOutput = {
    type = "structure",
    members = {
        campaign = {
            type = "structure",
        },
    },
}

M.GetCampaignStateInput = {
    type = "structure",
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
    members = {
        state = {
            type = "string",
        },
    },
}

M.GetCampaignStateBatchInput = {
    type = "structure",
    members = {
        campaignIds = {
            type = "list",
            member_type = "string",
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
    members = {
        successfulRequests = {
            type = "list",
            member_type = "structure",
        },
        failedRequests = {
            type = "list",
            member_type = "structure",
        },
    },
}

M.GetConnectInstanceConfigInput = {
    type = "structure",
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
    members = {
        enabled = {
            type = "boolean",
            traits = {
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
        encryptionConfig = {
            type = "structure",
            traits = {
                required = true,
            },
        },
    },
}

M.GetConnectInstanceConfigOutput = {
    type = "structure",
    members = {
        connectInstanceConfig = {
            type = "structure",
        },
    },
}

M.GetInstanceOnboardingJobStatusInput = {
    type = "structure",
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
    members = {
        connectInstanceOnboardingJobStatus = {
            type = "structure",
        },
    },
}

M.InstanceIdFilterOperator = {
    EQ = "Eq",
}

M.InstanceIdFilter = {
    type = "structure",
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
    members = {
        instanceIdFilter = {
            type = "structure",
        },
    },
}

M.ListCampaignsInput = {
    type = "structure",
    members = {
        maxResults = {
            type = "number",
        },
        nextToken = {
            type = "string",
        },
        filters = {
            type = "structure",
        },
    },
}

M.CampaignSummary = {
    type = "structure",
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
    members = {
        nextToken = {
            type = "string",
        },
        campaignSummaryList = {
            type = "list",
            member_type = "structure",
        },
    },
}

M.ListTagsForResourceInput = {
    type = "structure",
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
    members = {
        tags = {
            type = "map",
            key_type = "string",
            value_type = "string",
        },
    },
}

M.InvalidCampaignStateException = {
    type = "structure",
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
}

M.DialRequest = {
    type = "structure",
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
            },
        },
        attributes = {
            type = "map",
            key_type = "string",
            value_type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.PutDialRequestBatchInput = {
    type = "structure",
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
            member_type = "structure",
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
    members = {
        successfulRequests = {
            type = "list",
            member_type = "structure",
        },
        failedRequests = {
            type = "list",
            member_type = "structure",
        },
    },
}

M.ResumeCampaignInput = {
    type = "structure",
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
}

M.StartCampaignInput = {
    type = "structure",
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
}

M.StartInstanceOnboardingJobInput = {
    type = "structure",
    members = {
        connectInstanceId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        encryptionConfig = {
            type = "structure",
            traits = {
                required = true,
            },
        },
    },
}

M.StartInstanceOnboardingJobOutput = {
    type = "structure",
    members = {
        connectInstanceOnboardingJobStatus = {
            type = "structure",
        },
    },
}

M.StopCampaignInput = {
    type = "structure",
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
}

M.TagResourceInput = {
    type = "structure",
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
            key_type = "string",
            value_type = "string",
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
        arn = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        tagKeys = {
            type = "list",
            member_type = "string",
            traits = {
                http_query = "tagKeys",
                required = true,
            },
        },
    },
}

M.UntagResourceOutput = {
    type = "structure",
}

M.UpdateCampaignDialerConfigInput = {
    type = "structure",
    members = {
        id = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        dialerConfig = {
            type = "union",
            traits = {
                required = true,
            },
        },
    },
}

M.UpdateCampaignDialerConfigOutput = {
    type = "structure",
}

M.UpdateCampaignNameInput = {
    type = "structure",
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
}

M.UpdateCampaignOutboundCallConfigInput = {
    type = "structure",
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
        answerMachineDetectionConfig = {
            type = "structure",
        },
    },
}

M.UpdateCampaignOutboundCallConfigOutput = {
    type = "structure",
}

return M
