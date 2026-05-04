local M = {}

M.AlreadyExistsException = {
    type = "structure",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.BadRequestException = {
    type = "structure",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.CallInstructionsMessageType = {
    type = "structure",
    members = {
        Text = {
            type = "string",
        },
    },
}

M.CloudWatchLogsDestination = {
    type = "structure",
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
    members = {
        ConfigurationSetName = {
            type = "string",
        },
    },
}

M.CreateConfigurationSetOutput = {
    type = "structure",
}

M.InternalServiceErrorException = {
    type = "structure",
    error = "server",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.LimitExceededException = {
    type = "structure",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.TooManyRequestsException = {
    type = "structure",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.KinesisFirehoseDestination = {
    type = "structure",
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
    members = {
        TopicArn = {
            type = "string",
        },
    },
}

M.EventDestinationDefinition = {
    type = "structure",
    members = {
        CloudWatchLogsDestination = {
            type = "structure",
        },
        Enabled = {
            type = "boolean",
        },
        KinesisFirehoseDestination = {
            type = "structure",
        },
        MatchingEventTypes = {
            type = "list",
            member_type = "string",
        },
        SnsDestination = {
            type = "structure",
        },
    },
}

M.CreateConfigurationSetEventDestinationInput = {
    type = "structure",
    members = {
        ConfigurationSetName = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        EventDestination = {
            type = "structure",
        },
        EventDestinationName = {
            type = "string",
        },
    },
}

M.CreateConfigurationSetEventDestinationOutput = {
    type = "structure",
}

M.NotFoundException = {
    type = "structure",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.DeleteConfigurationSetInput = {
    type = "structure",
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
}

M.DeleteConfigurationSetEventDestinationInput = {
    type = "structure",
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
}

M.EventDestination = {
    type = "structure",
    members = {
        CloudWatchLogsDestination = {
            type = "structure",
        },
        Enabled = {
            type = "boolean",
        },
        KinesisFirehoseDestination = {
            type = "structure",
        },
        MatchingEventTypes = {
            type = "list",
            member_type = "string",
        },
        Name = {
            type = "string",
        },
        SnsDestination = {
            type = "structure",
        },
    },
}

M.GetConfigurationSetEventDestinationsInput = {
    type = "structure",
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
    members = {
        EventDestinations = {
            type = "list",
            member_type = "structure",
        },
    },
}

M.ListConfigurationSetsInput = {
    type = "structure",
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
    members = {
        ConfigurationSets = {
            type = "list",
            member_type = "string",
        },
        NextToken = {
            type = "string",
        },
    },
}

M.PlainTextMessageType = {
    type = "structure",
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
    members = {
        CallInstructionsMessage = {
            type = "structure",
        },
        PlainTextMessage = {
            type = "structure",
        },
        SSMLMessage = {
            type = "structure",
        },
    },
}

M.SendVoiceMessageInput = {
    type = "structure",
    members = {
        CallerId = {
            type = "string",
        },
        ConfigurationSetName = {
            type = "string",
        },
        Content = {
            type = "structure",
        },
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
    members = {
        MessageId = {
            type = "string",
        },
    },
}

M.UpdateConfigurationSetEventDestinationInput = {
    type = "structure",
    members = {
        ConfigurationSetName = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        EventDestination = {
            type = "structure",
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

M.UpdateConfigurationSetEventDestinationOutput = {
    type = "structure",
}

return M
