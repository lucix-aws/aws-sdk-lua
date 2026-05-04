local record CreateConfigurationSetInput
    ConfigurationSetName: string
end

local record CreateConfigurationSetOutput
end

local record CreateConfigurationSetEventDestinationInput
    ConfigurationSetName: string
    EventDestination: EventDestinationDefinition
    EventDestinationName: string
end

local record CreateConfigurationSetEventDestinationOutput
end

local record DeleteConfigurationSetInput
    ConfigurationSetName: string
end

local record DeleteConfigurationSetOutput
end

local record DeleteConfigurationSetEventDestinationInput
    ConfigurationSetName: string
    EventDestinationName: string
end

local record DeleteConfigurationSetEventDestinationOutput
end

local record GetConfigurationSetEventDestinationsInput
    ConfigurationSetName: string
end

local record GetConfigurationSetEventDestinationsOutput
    EventDestinations: {EventDestination}
end

local record ListConfigurationSetsInput
    NextToken: string
    PageSize: string
end

local record ListConfigurationSetsOutput
    ConfigurationSets: {string}
    NextToken: string
end

local record SendVoiceMessageInput
    CallerId: string
    ConfigurationSetName: string
    Content: VoiceMessageContent
    DestinationPhoneNumber: string
    OriginationPhoneNumber: string
end

local record SendVoiceMessageOutput
    MessageId: string
end

local record UpdateConfigurationSetEventDestinationInput
    ConfigurationSetName: string
    EventDestination: EventDestinationDefinition
    EventDestinationName: string
end

local record UpdateConfigurationSetEventDestinationOutput
end

local record AlreadyExistsException
    Message: string
end

local record BadRequestException
    Message: string
end

local record InternalServiceErrorException
    Message: string
end

local record LimitExceededException
    Message: string
end

local record TooManyRequestsException
    Message: string
end

local record AlreadyExistsException
    Message: string
end

local record BadRequestException
    Message: string
end

local record InternalServiceErrorException
    Message: string
end

local record LimitExceededException
    Message: string
end

local record NotFoundException
    Message: string
end

local record TooManyRequestsException
    Message: string
end

local record BadRequestException
    Message: string
end

local record InternalServiceErrorException
    Message: string
end

local record NotFoundException
    Message: string
end

local record TooManyRequestsException
    Message: string
end

local record BadRequestException
    Message: string
end

local record InternalServiceErrorException
    Message: string
end

local record NotFoundException
    Message: string
end

local record TooManyRequestsException
    Message: string
end

local record BadRequestException
    Message: string
end

local record InternalServiceErrorException
    Message: string
end

local record NotFoundException
    Message: string
end

local record TooManyRequestsException
    Message: string
end

local record BadRequestException
    Message: string
end

local record InternalServiceErrorException
    Message: string
end

local record TooManyRequestsException
    Message: string
end

local record BadRequestException
    Message: string
end

local record InternalServiceErrorException
    Message: string
end

local record TooManyRequestsException
    Message: string
end

local record BadRequestException
    Message: string
end

local record InternalServiceErrorException
    Message: string
end

local record NotFoundException
    Message: string
end

local record TooManyRequestsException
    Message: string
end

local record M
    CreateConfigurationSetInput: CreateConfigurationSetInput
    CreateConfigurationSetOutput: CreateConfigurationSetOutput
    CreateConfigurationSetEventDestinationInput: CreateConfigurationSetEventDestinationInput
    CreateConfigurationSetEventDestinationOutput: CreateConfigurationSetEventDestinationOutput
    DeleteConfigurationSetInput: DeleteConfigurationSetInput
    DeleteConfigurationSetOutput: DeleteConfigurationSetOutput
    DeleteConfigurationSetEventDestinationInput: DeleteConfigurationSetEventDestinationInput
    DeleteConfigurationSetEventDestinationOutput: DeleteConfigurationSetEventDestinationOutput
    GetConfigurationSetEventDestinationsInput: GetConfigurationSetEventDestinationsInput
    GetConfigurationSetEventDestinationsOutput: GetConfigurationSetEventDestinationsOutput
    ListConfigurationSetsInput: ListConfigurationSetsInput
    ListConfigurationSetsOutput: ListConfigurationSetsOutput
    SendVoiceMessageInput: SendVoiceMessageInput
    SendVoiceMessageOutput: SendVoiceMessageOutput
    UpdateConfigurationSetEventDestinationInput: UpdateConfigurationSetEventDestinationInput
    UpdateConfigurationSetEventDestinationOutput: UpdateConfigurationSetEventDestinationOutput
end

return M
