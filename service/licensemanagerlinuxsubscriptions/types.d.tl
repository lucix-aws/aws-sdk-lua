local record DeregisterSubscriptionProviderInput
    SubscriptionProviderArn: string
end

local record DeregisterSubscriptionProviderOutput
end

local record GetRegisteredSubscriptionProviderInput
    SubscriptionProviderArn: string
end

local record GetRegisteredSubscriptionProviderOutput
    SubscriptionProviderArn: string
    SubscriptionProviderSource: string
    SecretArn: string
    SubscriptionProviderStatus: string
    SubscriptionProviderStatusMessage: string
    LastSuccessfulDataRetrievalTime: string
end

local record GetServiceSettingsInput
end

local record GetServiceSettingsOutput
    LinuxSubscriptionsDiscovery: string
    LinuxSubscriptionsDiscoverySettings: LinuxSubscriptionsDiscoverySettings
    Status: string
    StatusMessage: {string : string}
    HomeRegions: {string}
end

local record ListLinuxSubscriptionInstancesInput
    Filters: {Filter}
    MaxResults: number
    NextToken: string
end

local record ListLinuxSubscriptionInstancesOutput
    Instances: {Instance}
    NextToken: string
end

local record ListLinuxSubscriptionsInput
    Filters: {Filter}
    MaxResults: number
    NextToken: string
end

local record ListLinuxSubscriptionsOutput
    Subscriptions: {Subscription}
    NextToken: string
end

local record ListRegisteredSubscriptionProvidersInput
    SubscriptionProviderSources: {string}
    MaxResults: number
    NextToken: string
end

local record ListRegisteredSubscriptionProvidersOutput
    RegisteredSubscriptionProviders: {RegisteredSubscriptionProvider}
    NextToken: string
end

local record ListTagsForResourceInput
    resourceArn: string
end

local record ListTagsForResourceOutput
    tags: {string : string}
end

local record RegisterSubscriptionProviderInput
    SubscriptionProviderSource: string
    SecretArn: string
    Tags: {string : string}
end

local record RegisterSubscriptionProviderOutput
    SubscriptionProviderSource: string
    SubscriptionProviderArn: string
    SubscriptionProviderStatus: string
end

local record TagResourceInput
    resourceArn: string
    tags: {string : string}
end

local record TagResourceOutput
end

local record UntagResourceInput
    resourceArn: string
    tagKeys: {string}
end

local record UntagResourceOutput
end

local record UpdateServiceSettingsInput
    LinuxSubscriptionsDiscovery: string
    LinuxSubscriptionsDiscoverySettings: LinuxSubscriptionsDiscoverySettings
    AllowUpdate: boolean
end

local record UpdateServiceSettingsOutput
    LinuxSubscriptionsDiscovery: string
    LinuxSubscriptionsDiscoverySettings: LinuxSubscriptionsDiscoverySettings
    Status: string
    StatusMessage: {string : string}
    HomeRegions: {string}
end

local record InternalServerException
    message: string
end

local record ResourceNotFoundException
    message: string
end

local record ThrottlingException
    message: string
end

local record ValidationException
    message: string
end

local record InternalServerException
    message: string
end

local record ResourceNotFoundException
    message: string
end

local record ThrottlingException
    message: string
end

local record ValidationException
    message: string
end

local record InternalServerException
    message: string
end

local record ThrottlingException
    message: string
end

local record ValidationException
    message: string
end

local record InternalServerException
    message: string
end

local record ThrottlingException
    message: string
end

local record ValidationException
    message: string
end

local record InternalServerException
    message: string
end

local record ThrottlingException
    message: string
end

local record ValidationException
    message: string
end

local record InternalServerException
    message: string
end

local record ThrottlingException
    message: string
end

local record ValidationException
    message: string
end

local record InternalServerException
    message: string
end

local record ResourceNotFoundException
    message: string
end

local record ValidationException
    message: string
end

local record InternalServerException
    message: string
end

local record ThrottlingException
    message: string
end

local record ValidationException
    message: string
end

local record InternalServerException
    message: string
end

local record ResourceNotFoundException
    message: string
end

local record ValidationException
    message: string
end

local record InternalServerException
    message: string
end

local record ResourceNotFoundException
    message: string
end

local record InternalServerException
    message: string
end

local record ThrottlingException
    message: string
end

local record ValidationException
    message: string
end

local record M
    DeregisterSubscriptionProviderInput: DeregisterSubscriptionProviderInput
    DeregisterSubscriptionProviderOutput: DeregisterSubscriptionProviderOutput
    GetRegisteredSubscriptionProviderInput: GetRegisteredSubscriptionProviderInput
    GetRegisteredSubscriptionProviderOutput: GetRegisteredSubscriptionProviderOutput
    GetServiceSettingsInput: GetServiceSettingsInput
    GetServiceSettingsOutput: GetServiceSettingsOutput
    ListLinuxSubscriptionInstancesInput: ListLinuxSubscriptionInstancesInput
    ListLinuxSubscriptionInstancesOutput: ListLinuxSubscriptionInstancesOutput
    ListLinuxSubscriptionsInput: ListLinuxSubscriptionsInput
    ListLinuxSubscriptionsOutput: ListLinuxSubscriptionsOutput
    ListRegisteredSubscriptionProvidersInput: ListRegisteredSubscriptionProvidersInput
    ListRegisteredSubscriptionProvidersOutput: ListRegisteredSubscriptionProvidersOutput
    ListTagsForResourceInput: ListTagsForResourceInput
    ListTagsForResourceOutput: ListTagsForResourceOutput
    RegisterSubscriptionProviderInput: RegisterSubscriptionProviderInput
    RegisterSubscriptionProviderOutput: RegisterSubscriptionProviderOutput
    TagResourceInput: TagResourceInput
    TagResourceOutput: TagResourceOutput
    UntagResourceInput: UntagResourceInput
    UntagResourceOutput: UntagResourceOutput
    UpdateServiceSettingsInput: UpdateServiceSettingsInput
    UpdateServiceSettingsOutput: UpdateServiceSettingsOutput
end

return M
