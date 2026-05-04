local M = {}

M.AlreadyExistsException = {
    type = "structure",
    id = "AlreadyExistsException",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.BadRequestException = {
    type = "structure",
    id = "BadRequestException",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.CallInstructionsMessageType = {
    type = "structure",
    id = "CallInstructionsMessageType",
    members = {
        Text = {
            type = "string",
        },
    },
}

M.CloudWatchLogsDestination = {
    type = "structure",
    id = "CloudWatchLogsDestination",
    members = {
        IamRoleArn = {
            type = "string",
        },
        LogGroupArn = {
            type = "string",
        },
    },
}

M.CreateConfigurationSetInput = {
    type = "structure",
    id = "CreateConfigurationSetInput",
    members = {
        ConfigurationSetName = {
            type = "string",
        },
    },
}

M.CreateConfigurationSetOutput = {
    type = "structure",
    id = "CreateConfigurationSetOutput",
}

M.InternalServiceErrorException = {
    type = "structure",
    id = "InternalServiceErrorException",
    error = "server",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.LimitExceededException = {
    type = "structure",
    id = "LimitExceededException",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.TooManyRequestsException = {
    type = "structure",
    id = "TooManyRequestsException",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.KinesisFirehoseDestination = {
    type = "structure",
    id = "KinesisFirehoseDestination",
    members = {
        DeliveryStreamArn = {
            type = "string",
        },
        IamRoleArn = {
            type = "string",
        },
    },
}

M.EventType = {
    INITIATED_CALL = "INITIATED_CALL",
    RINGING = "RINGING",
    ANSWERED = "ANSWERED",
    COMPLETED_CALL = "COMPLETED_CALL",
    BUSY = "BUSY",
    FAILED = "FAILED",
    NO_ANSWER = "NO_ANSWER",
}

M.SnsDestination = {
    type = "structure",
    id = "SnsDestination",
    members = {
        TopicArn = {
            type = "string",
        },
    },
}

M.EventDestinationDefinition = {
    type = "structure",
    id = "EventDestinationDefinition",
    members = {
        CloudWatchLogsDestination = M.CloudWatchLogsDestination,
        Enabled = {
            type = "boolean",
        },
        KinesisFirehoseDestination = M.KinesisFirehoseDestination,
        MatchingEventTypes = {
            type = "list",
            member = { type = "string" },
        },
        SnsDestination = M.SnsDestination,
    },
}

M.CreateConfigurationSetEventDestinationInput = {
    type = "structure",
    id = "CreateConfigurationSetEventDestinationInput",
    members = {
        ConfigurationSetName = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        EventDestination = M.EventDestinationDefinition,
        EventDestinationName = {
            type = "string",
        },
    },
}

M.CreateConfigurationSetEventDestinationOutput = {
    type = "structure",
    id = "CreateConfigurationSetEventDestinationOutput",
}

M.NotFoundException = {
    type = "structure",
    id = "NotFoundException",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.DeleteConfigurationSetInput = {
    type = "structure",
    id = "DeleteConfigurationSetInput",
    members = {
        ConfigurationSetName = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.DeleteConfigurationSetOutput = {
    type = "structure",
    id = "DeleteConfigurationSetOutput",
}

M.DeleteConfigurationSetEventDestinationInput = {
    type = "structure",
    id = "DeleteConfigurationSetEventDestinationInput",
    members = {
        ConfigurationSetName = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        EventDestinationName = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.DeleteConfigurationSetEventDestinationOutput = {
    type = "structure",
    id = "DeleteConfigurationSetEventDestinationOutput",
}

M.EventDestination = {
    type = "structure",
    id = "EventDestination",
    members = {
        CloudWatchLogsDestination = M.CloudWatchLogsDestination,
        Enabled = {
            type = "boolean",
        },
        KinesisFirehoseDestination = M.KinesisFirehoseDestination,
        MatchingEventTypes = {
            type = "list",
            member = { type = "string" },
        },
        Name = {
            type = "string",
        },
        SnsDestination = M.SnsDestination,
    },
}

M.GetConfigurationSetEventDestinationsInput = {
    type = "structure",
    id = "GetConfigurationSetEventDestinationsInput",
    members = {
        ConfigurationSetName = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.GetConfigurationSetEventDestinationsOutput = {
    type = "structure",
    id = "GetConfigurationSetEventDestinationsOutput",
    members = {
        EventDestinations = {
            type = "list",
            member = M.EventDestination,
        },
    },
}

M.ListConfigurationSetsInput = {
    type = "structure",
    id = "ListConfigurationSetsInput",
    members = {
        NextToken = {
            type = "string",
            traits = {
                http_query = "NextToken",
            },
        },
        PageSize = {
            type = "string",
            traits = {
                http_query = "PageSize",
            },
        },
    },
}

M.ListConfigurationSetsOutput = {
    type = "structure",
    id = "ListConfigurationSetsOutput",
    members = {
        ConfigurationSets = {
            type = "list",
            member = { type = "string" },
        },
        NextToken = {
            type = "string",
        },
    },
}

M.PlainTextMessageType = {
    type = "structure",
    id = "PlainTextMessageType",
    members = {
        LanguageCode = {
            type = "string",
        },
        Text = {
            type = "string",
        },
        VoiceId = {
            type = "string",
        },
    },
}

M.SSMLMessageType = {
    type = "structure",
    id = "SSMLMessageType",
    members = {
        LanguageCode = {
            type = "string",
        },
        Text = {
            type = "string",
        },
        VoiceId = {
            type = "string",
        },
    },
}

M.VoiceMessageContent = {
    type = "structure",
    id = "VoiceMessageContent",
    members = {
        CallInstructionsMessage = M.CallInstructionsMessageType,
        PlainTextMessage = M.PlainTextMessageType,
        SSMLMessage = M.SSMLMessageType,
    },
}

M.SendVoiceMessageInput = {
    type = "structure",
    id = "SendVoiceMessageInput",
    members = {
        CallerId = {
            type = "string",
        },
        ConfigurationSetName = {
            type = "string",
        },
        Content = M.VoiceMessageContent,
        DestinationPhoneNumber = {
            type = "string",
        },
        OriginationPhoneNumber = {
            type = "string",
        },
    },
}

M.SendVoiceMessageOutput = {
    type = "structure",
    id = "SendVoiceMessageOutput",
    members = {
        MessageId = {
            type = "string",
        },
    },
}

M.UpdateConfigurationSetEventDestinationInput = {
    type = "structure",
    id = "UpdateConfigurationSetEventDestinationInput",
    members = {
        ConfigurationSetName = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        EventDestination = M.EventDestinationDefinition,
        EventDestinationName = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.UpdateConfigurationSetEventDestinationOutput = {
    type = "structure",
    id = "UpdateConfigurationSetEventDestinationOutput",
}

return M
