local record AssociatePhoneNumbersWithVoiceConnectorInput
    VoiceConnectorId: string
    E164PhoneNumbers: {string}
    ForceAssociate: boolean
end

local record AssociatePhoneNumbersWithVoiceConnectorOutput
    PhoneNumberErrors: {PhoneNumberError}
end

local record AssociatePhoneNumbersWithVoiceConnectorGroupInput
    VoiceConnectorGroupId: string
    E164PhoneNumbers: {string}
    ForceAssociate: boolean
end

local record AssociatePhoneNumbersWithVoiceConnectorGroupOutput
    PhoneNumberErrors: {PhoneNumberError}
end

local record BatchDeletePhoneNumberInput
    PhoneNumberIds: {string}
end

local record BatchDeletePhoneNumberOutput
    PhoneNumberErrors: {PhoneNumberError}
end

local record BatchUpdatePhoneNumberInput
    UpdatePhoneNumberRequestItems: {UpdatePhoneNumberRequestItem}
end

local record BatchUpdatePhoneNumberOutput
    PhoneNumberErrors: {PhoneNumberError}
end

local record CreatePhoneNumberOrderInput
    ProductType: string
    E164PhoneNumbers: {string}
    Name: string
end

local record CreatePhoneNumberOrderOutput
    PhoneNumberOrder: PhoneNumberOrder
end

local record CreateProxySessionInput
    VoiceConnectorId: string
    ParticipantPhoneNumbers: {string}
    Name: string
    ExpiryMinutes: number
    Capabilities: {string}
    NumberSelectionBehavior: string
    GeoMatchLevel: string
    GeoMatchParams: GeoMatchParams
end

local record CreateProxySessionOutput
    ProxySession: ProxySession
end

local record CreateSipMediaApplicationInput
    AwsRegion: string
    Name: string
    Endpoints: {SipMediaApplicationEndpoint}
    Tags: {Tag}
end

local record CreateSipMediaApplicationOutput
    SipMediaApplication: SipMediaApplication
end

local record CreateSipMediaApplicationCallInput
    FromPhoneNumber: string
    ToPhoneNumber: string
    SipMediaApplicationId: string
    SipHeaders: {string : string}
    ArgumentsMap: {string : string}
end

local record CreateSipMediaApplicationCallOutput
    SipMediaApplicationCall: SipMediaApplicationCall
end

local record CreateSipRuleInput
    Name: string
    TriggerType: string
    TriggerValue: string
    Disabled: boolean
    TargetApplications: {SipRuleTargetApplication}
end

local record CreateSipRuleOutput
    SipRule: SipRule
end

local record CreateVoiceConnectorInput
    Name: string
    AwsRegion: string
    RequireEncryption: boolean
    Tags: {Tag}
    IntegrationType: string
    NetworkType: string
end

local record CreateVoiceConnectorOutput
    VoiceConnector: VoiceConnector
end

local record CreateVoiceConnectorGroupInput
    Name: string
    VoiceConnectorItems: {VoiceConnectorItem}
end

local record CreateVoiceConnectorGroupOutput
    VoiceConnectorGroup: VoiceConnectorGroup
end

local record CreateVoiceProfileInput
    SpeakerSearchTaskId: string
end

local record CreateVoiceProfileOutput
    VoiceProfile: VoiceProfile
end

local record CreateVoiceProfileDomainInput
    Name: string
    Description: string
    ServerSideEncryptionConfiguration: ServerSideEncryptionConfiguration
    ClientRequestToken: string
    Tags: {Tag}
end

local record CreateVoiceProfileDomainOutput
    VoiceProfileDomain: VoiceProfileDomain
end

local record DeletePhoneNumberInput
    PhoneNumberId: string
end

local record DeletePhoneNumberOutput
end

local record DeleteProxySessionInput
    VoiceConnectorId: string
    ProxySessionId: string
end

local record DeleteProxySessionOutput
end

local record DeleteSipMediaApplicationInput
    SipMediaApplicationId: string
end

local record DeleteSipMediaApplicationOutput
end

local record DeleteSipRuleInput
    SipRuleId: string
end

local record DeleteSipRuleOutput
end

local record DeleteVoiceConnectorInput
    VoiceConnectorId: string
end

local record DeleteVoiceConnectorOutput
end

local record DeleteVoiceConnectorEmergencyCallingConfigurationInput
    VoiceConnectorId: string
end

local record DeleteVoiceConnectorEmergencyCallingConfigurationOutput
end

local record DeleteVoiceConnectorExternalSystemsConfigurationInput
    VoiceConnectorId: string
end

local record DeleteVoiceConnectorExternalSystemsConfigurationOutput
end

local record DeleteVoiceConnectorGroupInput
    VoiceConnectorGroupId: string
end

local record DeleteVoiceConnectorGroupOutput
end

local record DeleteVoiceConnectorOriginationInput
    VoiceConnectorId: string
end

local record DeleteVoiceConnectorOriginationOutput
end

local record DeleteVoiceConnectorProxyInput
    VoiceConnectorId: string
end

local record DeleteVoiceConnectorProxyOutput
end

local record DeleteVoiceConnectorStreamingConfigurationInput
    VoiceConnectorId: string
end

local record DeleteVoiceConnectorStreamingConfigurationOutput
end

local record DeleteVoiceConnectorTerminationInput
    VoiceConnectorId: string
end

local record DeleteVoiceConnectorTerminationOutput
end

local record DeleteVoiceConnectorTerminationCredentialsInput
    VoiceConnectorId: string
    Usernames: {string}
end

local record DeleteVoiceConnectorTerminationCredentialsOutput
end

local record DeleteVoiceProfileInput
    VoiceProfileId: string
end

local record DeleteVoiceProfileOutput
end

local record DeleteVoiceProfileDomainInput
    VoiceProfileDomainId: string
end

local record DeleteVoiceProfileDomainOutput
end

local record DisassociatePhoneNumbersFromVoiceConnectorInput
    VoiceConnectorId: string
    E164PhoneNumbers: {string}
end

local record DisassociatePhoneNumbersFromVoiceConnectorOutput
    PhoneNumberErrors: {PhoneNumberError}
end

local record DisassociatePhoneNumbersFromVoiceConnectorGroupInput
    VoiceConnectorGroupId: string
    E164PhoneNumbers: {string}
end

local record DisassociatePhoneNumbersFromVoiceConnectorGroupOutput
    PhoneNumberErrors: {PhoneNumberError}
end

local record GetGlobalSettingsInput
end

local record GetGlobalSettingsOutput
    VoiceConnector: VoiceConnectorSettings
end

local record GetPhoneNumberInput
    PhoneNumberId: string
end

local record GetPhoneNumberOutput
    PhoneNumber: PhoneNumber
end

local record GetPhoneNumberOrderInput
    PhoneNumberOrderId: string
end

local record GetPhoneNumberOrderOutput
    PhoneNumberOrder: PhoneNumberOrder
end

local record GetPhoneNumberSettingsInput
end

local record GetPhoneNumberSettingsOutput
    CallingName: string
    CallingNameUpdatedTimestamp: number
end

local record GetProxySessionInput
    VoiceConnectorId: string
    ProxySessionId: string
end

local record GetProxySessionOutput
    ProxySession: ProxySession
end

local record GetSipMediaApplicationInput
    SipMediaApplicationId: string
end

local record GetSipMediaApplicationOutput
    SipMediaApplication: SipMediaApplication
end

local record GetSipMediaApplicationAlexaSkillConfigurationInput
    SipMediaApplicationId: string
end

local record GetSipMediaApplicationAlexaSkillConfigurationOutput
    SipMediaApplicationAlexaSkillConfiguration: SipMediaApplicationAlexaSkillConfiguration
end

local record GetSipMediaApplicationLoggingConfigurationInput
    SipMediaApplicationId: string
end

local record GetSipMediaApplicationLoggingConfigurationOutput
    SipMediaApplicationLoggingConfiguration: SipMediaApplicationLoggingConfiguration
end

local record GetSipRuleInput
    SipRuleId: string
end

local record GetSipRuleOutput
    SipRule: SipRule
end

local record GetSpeakerSearchTaskInput
    VoiceConnectorId: string
    SpeakerSearchTaskId: string
end

local record GetSpeakerSearchTaskOutput
    SpeakerSearchTask: SpeakerSearchTask
end

local record GetVoiceConnectorInput
    VoiceConnectorId: string
end

local record GetVoiceConnectorOutput
    VoiceConnector: VoiceConnector
end

local record GetVoiceConnectorEmergencyCallingConfigurationInput
    VoiceConnectorId: string
end

local record GetVoiceConnectorEmergencyCallingConfigurationOutput
    EmergencyCallingConfiguration: EmergencyCallingConfiguration
end

local record GetVoiceConnectorExternalSystemsConfigurationInput
    VoiceConnectorId: string
end

local record GetVoiceConnectorExternalSystemsConfigurationOutput
    ExternalSystemsConfiguration: ExternalSystemsConfiguration
end

local record GetVoiceConnectorGroupInput
    VoiceConnectorGroupId: string
end

local record GetVoiceConnectorGroupOutput
    VoiceConnectorGroup: VoiceConnectorGroup
end

local record GetVoiceConnectorLoggingConfigurationInput
    VoiceConnectorId: string
end

local record GetVoiceConnectorLoggingConfigurationOutput
    LoggingConfiguration: LoggingConfiguration
end

local record GetVoiceConnectorOriginationInput
    VoiceConnectorId: string
end

local record GetVoiceConnectorOriginationOutput
    Origination: Origination
end

local record GetVoiceConnectorProxyInput
    VoiceConnectorId: string
end

local record GetVoiceConnectorProxyOutput
    Proxy: Proxy
end

local record GetVoiceConnectorStreamingConfigurationInput
    VoiceConnectorId: string
end

local record GetVoiceConnectorStreamingConfigurationOutput
    StreamingConfiguration: StreamingConfiguration
end

local record GetVoiceConnectorTerminationInput
    VoiceConnectorId: string
end

local record GetVoiceConnectorTerminationOutput
    Termination: Termination
end

local record GetVoiceConnectorTerminationHealthInput
    VoiceConnectorId: string
end

local record GetVoiceConnectorTerminationHealthOutput
    TerminationHealth: TerminationHealth
end

local record GetVoiceProfileInput
    VoiceProfileId: string
end

local record GetVoiceProfileOutput
    VoiceProfile: VoiceProfile
end

local record GetVoiceProfileDomainInput
    VoiceProfileDomainId: string
end

local record GetVoiceProfileDomainOutput
    VoiceProfileDomain: VoiceProfileDomain
end

local record GetVoiceToneAnalysisTaskInput
    VoiceConnectorId: string
    VoiceToneAnalysisTaskId: string
    IsCaller: boolean
end

local record GetVoiceToneAnalysisTaskOutput
    VoiceToneAnalysisTask: VoiceToneAnalysisTask
end

local record ListAvailableVoiceConnectorRegionsInput
end

local record ListAvailableVoiceConnectorRegionsOutput
    VoiceConnectorRegions: {string}
end

local record ListPhoneNumberOrdersInput
    NextToken: string
    MaxResults: number
end

local record ListPhoneNumberOrdersOutput
    PhoneNumberOrders: {PhoneNumberOrder}
    NextToken: string
end

local record ListPhoneNumbersInput
    Status: string
    ProductType: string
    FilterName: string
    FilterValue: string
    MaxResults: number
    NextToken: string
end

local record ListPhoneNumbersOutput
    PhoneNumbers: {PhoneNumber}
    NextToken: string
end

local record ListProxySessionsInput
    VoiceConnectorId: string
    Status: string
    NextToken: string
    MaxResults: number
end

local record ListProxySessionsOutput
    ProxySessions: {ProxySession}
    NextToken: string
end

local record ListSipMediaApplicationsInput
    MaxResults: number
    NextToken: string
end

local record ListSipMediaApplicationsOutput
    SipMediaApplications: {SipMediaApplication}
    NextToken: string
end

local record ListSipRulesInput
    SipMediaApplicationId: string
    MaxResults: number
    NextToken: string
end

local record ListSipRulesOutput
    SipRules: {SipRule}
    NextToken: string
end

local record ListSupportedPhoneNumberCountriesInput
    ProductType: string
end

local record ListSupportedPhoneNumberCountriesOutput
    PhoneNumberCountries: {PhoneNumberCountry}
end

local record ListTagsForResourceInput
    ResourceARN: string
end

local record ListTagsForResourceOutput
    Tags: {Tag}
end

local record ListVoiceConnectorGroupsInput
    NextToken: string
    MaxResults: number
end

local record ListVoiceConnectorGroupsOutput
    VoiceConnectorGroups: {VoiceConnectorGroup}
    NextToken: string
end

local record ListVoiceConnectorsInput
    NextToken: string
    MaxResults: number
end

local record ListVoiceConnectorsOutput
    VoiceConnectors: {VoiceConnector}
    NextToken: string
end

local record ListVoiceConnectorTerminationCredentialsInput
    VoiceConnectorId: string
end

local record ListVoiceConnectorTerminationCredentialsOutput
    Usernames: {string}
end

local record ListVoiceProfileDomainsInput
    NextToken: string
    MaxResults: number
end

local record ListVoiceProfileDomainsOutput
    VoiceProfileDomains: {VoiceProfileDomainSummary}
    NextToken: string
end

local record ListVoiceProfilesInput
    VoiceProfileDomainId: string
    NextToken: string
    MaxResults: number
end

local record ListVoiceProfilesOutput
    VoiceProfiles: {VoiceProfileSummary}
    NextToken: string
end

local record PutSipMediaApplicationAlexaSkillConfigurationInput
    SipMediaApplicationId: string
    SipMediaApplicationAlexaSkillConfiguration: SipMediaApplicationAlexaSkillConfiguration
end

local record PutSipMediaApplicationAlexaSkillConfigurationOutput
    SipMediaApplicationAlexaSkillConfiguration: SipMediaApplicationAlexaSkillConfiguration
end

local record PutSipMediaApplicationLoggingConfigurationInput
    SipMediaApplicationId: string
    SipMediaApplicationLoggingConfiguration: SipMediaApplicationLoggingConfiguration
end

local record PutSipMediaApplicationLoggingConfigurationOutput
    SipMediaApplicationLoggingConfiguration: SipMediaApplicationLoggingConfiguration
end

local record PutVoiceConnectorEmergencyCallingConfigurationInput
    VoiceConnectorId: string
    EmergencyCallingConfiguration: EmergencyCallingConfiguration
end

local record PutVoiceConnectorEmergencyCallingConfigurationOutput
    EmergencyCallingConfiguration: EmergencyCallingConfiguration
end

local record PutVoiceConnectorExternalSystemsConfigurationInput
    VoiceConnectorId: string
    SessionBorderControllerTypes: {string}
    ContactCenterSystemTypes: {string}
end

local record PutVoiceConnectorExternalSystemsConfigurationOutput
    ExternalSystemsConfiguration: ExternalSystemsConfiguration
end

local record PutVoiceConnectorLoggingConfigurationInput
    VoiceConnectorId: string
    LoggingConfiguration: LoggingConfiguration
end

local record PutVoiceConnectorLoggingConfigurationOutput
    LoggingConfiguration: LoggingConfiguration
end

local record PutVoiceConnectorOriginationInput
    VoiceConnectorId: string
    Origination: Origination
end

local record PutVoiceConnectorOriginationOutput
    Origination: Origination
end

local record PutVoiceConnectorProxyInput
    VoiceConnectorId: string
    DefaultSessionExpiryMinutes: number
    PhoneNumberPoolCountries: {string}
    FallBackPhoneNumber: string
    Disabled: boolean
end

local record PutVoiceConnectorProxyOutput
    Proxy: Proxy
end

local record PutVoiceConnectorStreamingConfigurationInput
    VoiceConnectorId: string
    StreamingConfiguration: StreamingConfiguration
end

local record PutVoiceConnectorStreamingConfigurationOutput
    StreamingConfiguration: StreamingConfiguration
end

local record PutVoiceConnectorTerminationInput
    VoiceConnectorId: string
    Termination: Termination
end

local record PutVoiceConnectorTerminationOutput
    Termination: Termination
end

local record PutVoiceConnectorTerminationCredentialsInput
    VoiceConnectorId: string
    Credentials: {Credential}
end

local record PutVoiceConnectorTerminationCredentialsOutput
end

local record RestorePhoneNumberInput
    PhoneNumberId: string
end

local record RestorePhoneNumberOutput
    PhoneNumber: PhoneNumber
end

local record SearchAvailablePhoneNumbersInput
    AreaCode: string
    City: string
    Country: string
    State: string
    TollFreePrefix: string
    PhoneNumberType: string
    MaxResults: number
    NextToken: string
end

local record SearchAvailablePhoneNumbersOutput
    E164PhoneNumbers: {string}
    NextToken: string
end

local record StartSpeakerSearchTaskInput
    VoiceConnectorId: string
    TransactionId: string
    VoiceProfileDomainId: string
    ClientRequestToken: string
    CallLeg: string
end

local record StartSpeakerSearchTaskOutput
    SpeakerSearchTask: SpeakerSearchTask
end

local record StartVoiceToneAnalysisTaskInput
    VoiceConnectorId: string
    TransactionId: string
    LanguageCode: string
    ClientRequestToken: string
end

local record StartVoiceToneAnalysisTaskOutput
    VoiceToneAnalysisTask: VoiceToneAnalysisTask
end

local record StopSpeakerSearchTaskInput
    VoiceConnectorId: string
    SpeakerSearchTaskId: string
end

local record StopSpeakerSearchTaskOutput
end

local record StopVoiceToneAnalysisTaskInput
    VoiceConnectorId: string
    VoiceToneAnalysisTaskId: string
end

local record StopVoiceToneAnalysisTaskOutput
end

local record TagResourceInput
    ResourceARN: string
    Tags: {Tag}
end

local record TagResourceOutput
end

local record UntagResourceInput
    ResourceARN: string
    TagKeys: {string}
end

local record UntagResourceOutput
end

local record UpdateGlobalSettingsInput
    VoiceConnector: VoiceConnectorSettings
end

local record UpdateGlobalSettingsOutput
end

local record UpdatePhoneNumberInput
    PhoneNumberId: string
    ProductType: string
    CallingName: string
    Name: string
end

local record UpdatePhoneNumberOutput
    PhoneNumber: PhoneNumber
end

local record UpdatePhoneNumberSettingsInput
    CallingName: string
end

local record UpdatePhoneNumberSettingsOutput
end

local record UpdateProxySessionInput
    VoiceConnectorId: string
    ProxySessionId: string
    Capabilities: {string}
    ExpiryMinutes: number
end

local record UpdateProxySessionOutput
    ProxySession: ProxySession
end

local record UpdateSipMediaApplicationInput
    SipMediaApplicationId: string
    Name: string
    Endpoints: {SipMediaApplicationEndpoint}
end

local record UpdateSipMediaApplicationOutput
    SipMediaApplication: SipMediaApplication
end

local record UpdateSipMediaApplicationCallInput
    SipMediaApplicationId: string
    TransactionId: string
    Arguments: {string : string}
end

local record UpdateSipMediaApplicationCallOutput
    SipMediaApplicationCall: SipMediaApplicationCall
end

local record UpdateSipRuleInput
    SipRuleId: string
    Name: string
    Disabled: boolean
    TargetApplications: {SipRuleTargetApplication}
end

local record UpdateSipRuleOutput
    SipRule: SipRule
end

local record UpdateVoiceConnectorInput
    VoiceConnectorId: string
    Name: string
    RequireEncryption: boolean
end

local record UpdateVoiceConnectorOutput
    VoiceConnector: VoiceConnector
end

local record UpdateVoiceConnectorGroupInput
    VoiceConnectorGroupId: string
    Name: string
    VoiceConnectorItems: {VoiceConnectorItem}
end

local record UpdateVoiceConnectorGroupOutput
    VoiceConnectorGroup: VoiceConnectorGroup
end

local record UpdateVoiceProfileInput
    VoiceProfileId: string
    SpeakerSearchTaskId: string
end

local record UpdateVoiceProfileOutput
    VoiceProfile: VoiceProfile
end

local record UpdateVoiceProfileDomainInput
    VoiceProfileDomainId: string
    Name: string
    Description: string
end

local record UpdateVoiceProfileDomainOutput
    VoiceProfileDomain: VoiceProfileDomain
end

local record ValidateE911AddressInput
    AwsAccountId: string
    StreetNumber: string
    StreetInfo: string
    City: string
    State: string
    Country: string
    PostalCode: string
end

local record ValidateE911AddressOutput
    ValidationResult: number
    AddressExternalId: string
    Address: Address
    CandidateAddressList: {CandidateAddress}
end

local record AccessDeniedException
    Code: string
    Message: string
end

local record BadRequestException
    Code: string
    Message: string
end

local record ForbiddenException
    Code: string
    Message: string
end

local record NotFoundException
    Code: string
    Message: string
end

local record ServiceFailureException
    Code: string
    Message: string
end

local record ServiceUnavailableException
    Code: string
    Message: string
end

local record ThrottledClientException
    Code: string
    Message: string
end

local record UnauthorizedClientException
    Code: string
    Message: string
end

local record AccessDeniedException
    Code: string
    Message: string
end

local record BadRequestException
    Code: string
    Message: string
end

local record ForbiddenException
    Code: string
    Message: string
end

local record NotFoundException
    Code: string
    Message: string
end

local record ServiceFailureException
    Code: string
    Message: string
end

local record ServiceUnavailableException
    Code: string
    Message: string
end

local record ThrottledClientException
    Code: string
    Message: string
end

local record UnauthorizedClientException
    Code: string
    Message: string
end

local record BadRequestException
    Code: string
    Message: string
end

local record ForbiddenException
    Code: string
    Message: string
end

local record NotFoundException
    Code: string
    Message: string
end

local record ServiceFailureException
    Code: string
    Message: string
end

local record ServiceUnavailableException
    Code: string
    Message: string
end

local record ThrottledClientException
    Code: string
    Message: string
end

local record UnauthorizedClientException
    Code: string
    Message: string
end

local record BadRequestException
    Code: string
    Message: string
end

local record ForbiddenException
    Code: string
    Message: string
end

local record NotFoundException
    Code: string
    Message: string
end

local record ServiceFailureException
    Code: string
    Message: string
end

local record ServiceUnavailableException
    Code: string
    Message: string
end

local record ThrottledClientException
    Code: string
    Message: string
end

local record UnauthorizedClientException
    Code: string
    Message: string
end

local record AccessDeniedException
    Code: string
    Message: string
end

local record BadRequestException
    Code: string
    Message: string
end

local record ForbiddenException
    Code: string
    Message: string
end

local record ResourceLimitExceededException
    Code: string
    Message: string
end

local record ServiceFailureException
    Code: string
    Message: string
end

local record ServiceUnavailableException
    Code: string
    Message: string
end

local record ThrottledClientException
    Code: string
    Message: string
end

local record UnauthorizedClientException
    Code: string
    Message: string
end

local record BadRequestException
    Code: string
    Message: string
end

local record ForbiddenException
    Code: string
    Message: string
end

local record NotFoundException
    Code: string
    Message: string
end

local record ServiceFailureException
    Code: string
    Message: string
end

local record ServiceUnavailableException
    Code: string
    Message: string
end

local record ThrottledClientException
    Code: string
    Message: string
end

local record UnauthorizedClientException
    Code: string
    Message: string
end

local record AccessDeniedException
    Code: string
    Message: string
end

local record BadRequestException
    Code: string
    Message: string
end

local record ConflictException
    Code: string
    Message: string
end

local record ForbiddenException
    Code: string
    Message: string
end

local record ResourceLimitExceededException
    Code: string
    Message: string
end

local record ServiceFailureException
    Code: string
    Message: string
end

local record ServiceUnavailableException
    Code: string
    Message: string
end

local record ThrottledClientException
    Code: string
    Message: string
end

local record UnauthorizedClientException
    Code: string
    Message: string
end

local record AccessDeniedException
    Code: string
    Message: string
end

local record BadRequestException
    Code: string
    Message: string
end

local record ForbiddenException
    Code: string
    Message: string
end

local record ResourceLimitExceededException
    Code: string
    Message: string
end

local record ServiceFailureException
    Code: string
    Message: string
end

local record ServiceUnavailableException
    Code: string
    Message: string
end

local record ThrottledClientException
    Code: string
    Message: string
end

local record UnauthorizedClientException
    Code: string
    Message: string
end

local record AccessDeniedException
    Code: string
    Message: string
end

local record BadRequestException
    Code: string
    Message: string
end

local record ConflictException
    Code: string
    Message: string
end

local record ForbiddenException
    Code: string
    Message: string
end

local record ResourceLimitExceededException
    Code: string
    Message: string
end

local record ServiceFailureException
    Code: string
    Message: string
end

local record ServiceUnavailableException
    Code: string
    Message: string
end

local record ThrottledClientException
    Code: string
    Message: string
end

local record UnauthorizedClientException
    Code: string
    Message: string
end

local record AccessDeniedException
    Code: string
    Message: string
end

local record BadRequestException
    Code: string
    Message: string
end

local record ForbiddenException
    Code: string
    Message: string
end

local record ResourceLimitExceededException
    Code: string
    Message: string
end

local record ServiceFailureException
    Code: string
    Message: string
end

local record ServiceUnavailableException
    Code: string
    Message: string
end

local record ThrottledClientException
    Code: string
    Message: string
end

local record UnauthorizedClientException
    Code: string
    Message: string
end

local record AccessDeniedException
    Code: string
    Message: string
end

local record BadRequestException
    Code: string
    Message: string
end

local record ForbiddenException
    Code: string
    Message: string
end

local record ResourceLimitExceededException
    Code: string
    Message: string
end

local record ServiceFailureException
    Code: string
    Message: string
end

local record ServiceUnavailableException
    Code: string
    Message: string
end

local record ThrottledClientException
    Code: string
    Message: string
end

local record UnauthorizedClientException
    Code: string
    Message: string
end

local record AccessDeniedException
    Code: string
    Message: string
end

local record BadRequestException
    Code: string
    Message: string
end

local record ConflictException
    Code: string
    Message: string
end

local record ForbiddenException
    Code: string
    Message: string
end

local record GoneException
    Code: string
    Message: string
end

local record NotFoundException
    Code: string
    Message: string
end

local record ResourceLimitExceededException
    Code: string
    Message: string
end

local record ServiceFailureException
    Code: string
    Message: string
end

local record ServiceUnavailableException
    Code: string
    Message: string
end

local record ThrottledClientException
    Code: string
    Message: string
end

local record UnauthorizedClientException
    Code: string
    Message: string
end

local record AccessDeniedException
    Code: string
    Message: string
end

local record BadRequestException
    Code: string
    Message: string
end

local record ConflictException
    Code: string
    Message: string
end

local record ForbiddenException
    Code: string
    Message: string
end

local record ResourceLimitExceededException
    Code: string
    Message: string
end

local record ServiceFailureException
    Code: string
    Message: string
end

local record ServiceUnavailableException
    Code: string
    Message: string
end

local record ThrottledClientException
    Code: string
    Message: string
end

local record UnauthorizedClientException
    Code: string
    Message: string
end

local record BadRequestException
    Code: string
    Message: string
end

local record ForbiddenException
    Code: string
    Message: string
end

local record NotFoundException
    Code: string
    Message: string
end

local record ServiceFailureException
    Code: string
    Message: string
end

local record ServiceUnavailableException
    Code: string
    Message: string
end

local record ThrottledClientException
    Code: string
    Message: string
end

local record UnauthorizedClientException
    Code: string
    Message: string
end

local record BadRequestException
    Code: string
    Message: string
end

local record ForbiddenException
    Code: string
    Message: string
end

local record NotFoundException
    Code: string
    Message: string
end

local record ServiceFailureException
    Code: string
    Message: string
end

local record ServiceUnavailableException
    Code: string
    Message: string
end

local record ThrottledClientException
    Code: string
    Message: string
end

local record UnauthorizedClientException
    Code: string
    Message: string
end

local record BadRequestException
    Code: string
    Message: string
end

local record ConflictException
    Code: string
    Message: string
end

local record ForbiddenException
    Code: string
    Message: string
end

local record NotFoundException
    Code: string
    Message: string
end

local record ServiceFailureException
    Code: string
    Message: string
end

local record ServiceUnavailableException
    Code: string
    Message: string
end

local record ThrottledClientException
    Code: string
    Message: string
end

local record UnauthorizedClientException
    Code: string
    Message: string
end

local record BadRequestException
    Code: string
    Message: string
end

local record ConflictException
    Code: string
    Message: string
end

local record ForbiddenException
    Code: string
    Message: string
end

local record NotFoundException
    Code: string
    Message: string
end

local record ServiceFailureException
    Code: string
    Message: string
end

local record ServiceUnavailableException
    Code: string
    Message: string
end

local record ThrottledClientException
    Code: string
    Message: string
end

local record UnauthorizedClientException
    Code: string
    Message: string
end

local record BadRequestException
    Code: string
    Message: string
end

local record ConflictException
    Code: string
    Message: string
end

local record ForbiddenException
    Code: string
    Message: string
end

local record NotFoundException
    Code: string
    Message: string
end

local record ServiceFailureException
    Code: string
    Message: string
end

local record ServiceUnavailableException
    Code: string
    Message: string
end

local record ThrottledClientException
    Code: string
    Message: string
end

local record UnauthorizedClientException
    Code: string
    Message: string
end

local record BadRequestException
    Code: string
    Message: string
end

local record ForbiddenException
    Code: string
    Message: string
end

local record NotFoundException
    Code: string
    Message: string
end

local record ServiceFailureException
    Code: string
    Message: string
end

local record ServiceUnavailableException
    Code: string
    Message: string
end

local record ThrottledClientException
    Code: string
    Message: string
end

local record UnauthorizedClientException
    Code: string
    Message: string
end

local record BadRequestException
    Code: string
    Message: string
end

local record ForbiddenException
    Code: string
    Message: string
end

local record NotFoundException
    Code: string
    Message: string
end

local record ServiceFailureException
    Code: string
    Message: string
end

local record ServiceUnavailableException
    Code: string
    Message: string
end

local record ThrottledClientException
    Code: string
    Message: string
end

local record UnauthorizedClientException
    Code: string
    Message: string
end

local record BadRequestException
    Code: string
    Message: string
end

local record ConflictException
    Code: string
    Message: string
end

local record ForbiddenException
    Code: string
    Message: string
end

local record NotFoundException
    Code: string
    Message: string
end

local record ServiceFailureException
    Code: string
    Message: string
end

local record ServiceUnavailableException
    Code: string
    Message: string
end

local record ThrottledClientException
    Code: string
    Message: string
end

local record UnauthorizedClientException
    Code: string
    Message: string
end

local record BadRequestException
    Code: string
    Message: string
end

local record ForbiddenException
    Code: string
    Message: string
end

local record NotFoundException
    Code: string
    Message: string
end

local record ServiceFailureException
    Code: string
    Message: string
end

local record ServiceUnavailableException
    Code: string
    Message: string
end

local record ThrottledClientException
    Code: string
    Message: string
end

local record UnauthorizedClientException
    Code: string
    Message: string
end

local record BadRequestException
    Code: string
    Message: string
end

local record ForbiddenException
    Code: string
    Message: string
end

local record NotFoundException
    Code: string
    Message: string
end

local record ServiceFailureException
    Code: string
    Message: string
end

local record ServiceUnavailableException
    Code: string
    Message: string
end

local record ThrottledClientException
    Code: string
    Message: string
end

local record UnauthorizedClientException
    Code: string
    Message: string
end

local record BadRequestException
    Code: string
    Message: string
end

local record ForbiddenException
    Code: string
    Message: string
end

local record NotFoundException
    Code: string
    Message: string
end

local record ServiceFailureException
    Code: string
    Message: string
end

local record ServiceUnavailableException
    Code: string
    Message: string
end

local record ThrottledClientException
    Code: string
    Message: string
end

local record UnauthorizedClientException
    Code: string
    Message: string
end

local record BadRequestException
    Code: string
    Message: string
end

local record ForbiddenException
    Code: string
    Message: string
end

local record NotFoundException
    Code: string
    Message: string
end

local record ServiceFailureException
    Code: string
    Message: string
end

local record ServiceUnavailableException
    Code: string
    Message: string
end

local record ThrottledClientException
    Code: string
    Message: string
end

local record UnauthorizedClientException
    Code: string
    Message: string
end

local record BadRequestException
    Code: string
    Message: string
end

local record ForbiddenException
    Code: string
    Message: string
end

local record NotFoundException
    Code: string
    Message: string
end

local record ServiceFailureException
    Code: string
    Message: string
end

local record ServiceUnavailableException
    Code: string
    Message: string
end

local record ThrottledClientException
    Code: string
    Message: string
end

local record UnauthorizedClientException
    Code: string
    Message: string
end

local record AccessDeniedException
    Code: string
    Message: string
end

local record BadRequestException
    Code: string
    Message: string
end

local record ConflictException
    Code: string
    Message: string
end

local record ForbiddenException
    Code: string
    Message: string
end

local record NotFoundException
    Code: string
    Message: string
end

local record ServiceFailureException
    Code: string
    Message: string
end

local record ServiceUnavailableException
    Code: string
    Message: string
end

local record ThrottledClientException
    Code: string
    Message: string
end

local record UnauthorizedClientException
    Code: string
    Message: string
end

local record AccessDeniedException
    Code: string
    Message: string
end

local record BadRequestException
    Code: string
    Message: string
end

local record ConflictException
    Code: string
    Message: string
end

local record ForbiddenException
    Code: string
    Message: string
end

local record NotFoundException
    Code: string
    Message: string
end

local record ServiceFailureException
    Code: string
    Message: string
end

local record ServiceUnavailableException
    Code: string
    Message: string
end

local record ThrottledClientException
    Code: string
    Message: string
end

local record UnauthorizedClientException
    Code: string
    Message: string
end

local record BadRequestException
    Code: string
    Message: string
end

local record ForbiddenException
    Code: string
    Message: string
end

local record NotFoundException
    Code: string
    Message: string
end

local record ServiceFailureException
    Code: string
    Message: string
end

local record ServiceUnavailableException
    Code: string
    Message: string
end

local record ThrottledClientException
    Code: string
    Message: string
end

local record UnauthorizedClientException
    Code: string
    Message: string
end

local record BadRequestException
    Code: string
    Message: string
end

local record ForbiddenException
    Code: string
    Message: string
end

local record NotFoundException
    Code: string
    Message: string
end

local record ServiceFailureException
    Code: string
    Message: string
end

local record ServiceUnavailableException
    Code: string
    Message: string
end

local record ThrottledClientException
    Code: string
    Message: string
end

local record UnauthorizedClientException
    Code: string
    Message: string
end

local record BadRequestException
    Code: string
    Message: string
end

local record ForbiddenException
    Code: string
    Message: string
end

local record ServiceFailureException
    Code: string
    Message: string
end

local record ServiceUnavailableException
    Code: string
    Message: string
end

local record ThrottledClientException
    Code: string
    Message: string
end

local record UnauthorizedClientException
    Code: string
    Message: string
end

local record BadRequestException
    Code: string
    Message: string
end

local record ForbiddenException
    Code: string
    Message: string
end

local record NotFoundException
    Code: string
    Message: string
end

local record ServiceFailureException
    Code: string
    Message: string
end

local record ServiceUnavailableException
    Code: string
    Message: string
end

local record ThrottledClientException
    Code: string
    Message: string
end

local record UnauthorizedClientException
    Code: string
    Message: string
end

local record BadRequestException
    Code: string
    Message: string
end

local record ForbiddenException
    Code: string
    Message: string
end

local record NotFoundException
    Code: string
    Message: string
end

local record ServiceFailureException
    Code: string
    Message: string
end

local record ServiceUnavailableException
    Code: string
    Message: string
end

local record ThrottledClientException
    Code: string
    Message: string
end

local record UnauthorizedClientException
    Code: string
    Message: string
end

local record BadRequestException
    Code: string
    Message: string
end

local record ForbiddenException
    Code: string
    Message: string
end

local record ServiceFailureException
    Code: string
    Message: string
end

local record ServiceUnavailableException
    Code: string
    Message: string
end

local record ThrottledClientException
    Code: string
    Message: string
end

local record UnauthorizedClientException
    Code: string
    Message: string
end

local record BadRequestException
    Code: string
    Message: string
end

local record ForbiddenException
    Code: string
    Message: string
end

local record NotFoundException
    Code: string
    Message: string
end

local record ServiceFailureException
    Code: string
    Message: string
end

local record ServiceUnavailableException
    Code: string
    Message: string
end

local record ThrottledClientException
    Code: string
    Message: string
end

local record UnauthorizedClientException
    Code: string
    Message: string
end

local record BadRequestException
    Code: string
    Message: string
end

local record ForbiddenException
    Code: string
    Message: string
end

local record NotFoundException
    Code: string
    Message: string
end

local record ServiceFailureException
    Code: string
    Message: string
end

local record ServiceUnavailableException
    Code: string
    Message: string
end

local record ThrottledClientException
    Code: string
    Message: string
end

local record UnauthorizedClientException
    Code: string
    Message: string
end

local record BadRequestException
    Code: string
    Message: string
end

local record ForbiddenException
    Code: string
    Message: string
end

local record NotFoundException
    Code: string
    Message: string
end

local record ServiceFailureException
    Code: string
    Message: string
end

local record ServiceUnavailableException
    Code: string
    Message: string
end

local record ThrottledClientException
    Code: string
    Message: string
end

local record UnauthorizedClientException
    Code: string
    Message: string
end

local record BadRequestException
    Code: string
    Message: string
end

local record ForbiddenException
    Code: string
    Message: string
end

local record NotFoundException
    Code: string
    Message: string
end

local record ServiceFailureException
    Code: string
    Message: string
end

local record ServiceUnavailableException
    Code: string
    Message: string
end

local record ThrottledClientException
    Code: string
    Message: string
end

local record UnauthorizedClientException
    Code: string
    Message: string
end

local record BadRequestException
    Code: string
    Message: string
end

local record ForbiddenException
    Code: string
    Message: string
end

local record NotFoundException
    Code: string
    Message: string
end

local record ServiceFailureException
    Code: string
    Message: string
end

local record ServiceUnavailableException
    Code: string
    Message: string
end

local record ThrottledClientException
    Code: string
    Message: string
end

local record UnauthorizedClientException
    Code: string
    Message: string
end

local record AccessDeniedException
    Code: string
    Message: string
end

local record BadRequestException
    Code: string
    Message: string
end

local record ConflictException
    Code: string
    Message: string
end

local record ForbiddenException
    Code: string
    Message: string
end

local record NotFoundException
    Code: string
    Message: string
end

local record ServiceFailureException
    Code: string
    Message: string
end

local record ServiceUnavailableException
    Code: string
    Message: string
end

local record ThrottledClientException
    Code: string
    Message: string
end

local record UnauthorizedClientException
    Code: string
    Message: string
end

local record BadRequestException
    Code: string
    Message: string
end

local record ForbiddenException
    Code: string
    Message: string
end

local record NotFoundException
    Code: string
    Message: string
end

local record ServiceFailureException
    Code: string
    Message: string
end

local record ServiceUnavailableException
    Code: string
    Message: string
end

local record ThrottledClientException
    Code: string
    Message: string
end

local record UnauthorizedClientException
    Code: string
    Message: string
end

local record BadRequestException
    Code: string
    Message: string
end

local record ForbiddenException
    Code: string
    Message: string
end

local record NotFoundException
    Code: string
    Message: string
end

local record ServiceFailureException
    Code: string
    Message: string
end

local record ServiceUnavailableException
    Code: string
    Message: string
end

local record ThrottledClientException
    Code: string
    Message: string
end

local record UnauthorizedClientException
    Code: string
    Message: string
end

local record BadRequestException
    Code: string
    Message: string
end

local record ForbiddenException
    Code: string
    Message: string
end

local record NotFoundException
    Code: string
    Message: string
end

local record ServiceFailureException
    Code: string
    Message: string
end

local record ServiceUnavailableException
    Code: string
    Message: string
end

local record ThrottledClientException
    Code: string
    Message: string
end

local record UnauthorizedClientException
    Code: string
    Message: string
end

local record BadRequestException
    Code: string
    Message: string
end

local record ForbiddenException
    Code: string
    Message: string
end

local record NotFoundException
    Code: string
    Message: string
end

local record ServiceFailureException
    Code: string
    Message: string
end

local record ServiceUnavailableException
    Code: string
    Message: string
end

local record ThrottledClientException
    Code: string
    Message: string
end

local record UnauthorizedClientException
    Code: string
    Message: string
end

local record BadRequestException
    Code: string
    Message: string
end

local record ForbiddenException
    Code: string
    Message: string
end

local record NotFoundException
    Code: string
    Message: string
end

local record ServiceFailureException
    Code: string
    Message: string
end

local record ServiceUnavailableException
    Code: string
    Message: string
end

local record ThrottledClientException
    Code: string
    Message: string
end

local record UnauthorizedClientException
    Code: string
    Message: string
end

local record BadRequestException
    Code: string
    Message: string
end

local record ForbiddenException
    Code: string
    Message: string
end

local record NotFoundException
    Code: string
    Message: string
end

local record ServiceFailureException
    Code: string
    Message: string
end

local record ServiceUnavailableException
    Code: string
    Message: string
end

local record ThrottledClientException
    Code: string
    Message: string
end

local record UnauthorizedClientException
    Code: string
    Message: string
end

local record BadRequestException
    Code: string
    Message: string
end

local record ForbiddenException
    Code: string
    Message: string
end

local record NotFoundException
    Code: string
    Message: string
end

local record ServiceFailureException
    Code: string
    Message: string
end

local record ServiceUnavailableException
    Code: string
    Message: string
end

local record ThrottledClientException
    Code: string
    Message: string
end

local record UnauthorizedClientException
    Code: string
    Message: string
end

local record BadRequestException
    Code: string
    Message: string
end

local record ForbiddenException
    Code: string
    Message: string
end

local record NotFoundException
    Code: string
    Message: string
end

local record ServiceFailureException
    Code: string
    Message: string
end

local record ServiceUnavailableException
    Code: string
    Message: string
end

local record ThrottledClientException
    Code: string
    Message: string
end

local record UnauthorizedClientException
    Code: string
    Message: string
end

local record BadRequestException
    Code: string
    Message: string
end

local record ForbiddenException
    Code: string
    Message: string
end

local record NotFoundException
    Code: string
    Message: string
end

local record ServiceFailureException
    Code: string
    Message: string
end

local record ServiceUnavailableException
    Code: string
    Message: string
end

local record ThrottledClientException
    Code: string
    Message: string
end

local record UnauthorizedClientException
    Code: string
    Message: string
end

local record BadRequestException
    Code: string
    Message: string
end

local record ForbiddenException
    Code: string
    Message: string
end

local record NotFoundException
    Code: string
    Message: string
end

local record ServiceFailureException
    Code: string
    Message: string
end

local record ServiceUnavailableException
    Code: string
    Message: string
end

local record ThrottledClientException
    Code: string
    Message: string
end

local record UnauthorizedClientException
    Code: string
    Message: string
end

local record AccessDeniedException
    Code: string
    Message: string
end

local record BadRequestException
    Code: string
    Message: string
end

local record ForbiddenException
    Code: string
    Message: string
end

local record NotFoundException
    Code: string
    Message: string
end

local record ServiceFailureException
    Code: string
    Message: string
end

local record ServiceUnavailableException
    Code: string
    Message: string
end

local record ThrottledClientException
    Code: string
    Message: string
end

local record UnauthorizedClientException
    Code: string
    Message: string
end

local record AccessDeniedException
    Code: string
    Message: string
end

local record BadRequestException
    Code: string
    Message: string
end

local record ForbiddenException
    Code: string
    Message: string
end

local record NotFoundException
    Code: string
    Message: string
end

local record ServiceFailureException
    Code: string
    Message: string
end

local record ServiceUnavailableException
    Code: string
    Message: string
end

local record ThrottledClientException
    Code: string
    Message: string
end

local record UnauthorizedClientException
    Code: string
    Message: string
end

local record AccessDeniedException
    Code: string
    Message: string
end

local record BadRequestException
    Code: string
    Message: string
end

local record ConflictException
    Code: string
    Message: string
end

local record ForbiddenException
    Code: string
    Message: string
end

local record NotFoundException
    Code: string
    Message: string
end

local record ServiceFailureException
    Code: string
    Message: string
end

local record ServiceUnavailableException
    Code: string
    Message: string
end

local record ThrottledClientException
    Code: string
    Message: string
end

local record UnauthorizedClientException
    Code: string
    Message: string
end

local record BadRequestException
    Code: string
    Message: string
end

local record ForbiddenException
    Code: string
    Message: string
end

local record ServiceFailureException
    Code: string
    Message: string
end

local record ServiceUnavailableException
    Code: string
    Message: string
end

local record ThrottledClientException
    Code: string
    Message: string
end

local record UnauthorizedClientException
    Code: string
    Message: string
end

local record BadRequestException
    Code: string
    Message: string
end

local record ForbiddenException
    Code: string
    Message: string
end

local record ServiceFailureException
    Code: string
    Message: string
end

local record ServiceUnavailableException
    Code: string
    Message: string
end

local record ThrottledClientException
    Code: string
    Message: string
end

local record UnauthorizedClientException
    Code: string
    Message: string
end

local record BadRequestException
    Code: string
    Message: string
end

local record ForbiddenException
    Code: string
    Message: string
end

local record NotFoundException
    Code: string
    Message: string
end

local record ServiceFailureException
    Code: string
    Message: string
end

local record ServiceUnavailableException
    Code: string
    Message: string
end

local record ThrottledClientException
    Code: string
    Message: string
end

local record UnauthorizedClientException
    Code: string
    Message: string
end

local record BadRequestException
    Code: string
    Message: string
end

local record ForbiddenException
    Code: string
    Message: string
end

local record NotFoundException
    Code: string
    Message: string
end

local record ServiceFailureException
    Code: string
    Message: string
end

local record ServiceUnavailableException
    Code: string
    Message: string
end

local record ThrottledClientException
    Code: string
    Message: string
end

local record UnauthorizedClientException
    Code: string
    Message: string
end

local record BadRequestException
    Code: string
    Message: string
end

local record ForbiddenException
    Code: string
    Message: string
end

local record ServiceFailureException
    Code: string
    Message: string
end

local record ServiceUnavailableException
    Code: string
    Message: string
end

local record ThrottledClientException
    Code: string
    Message: string
end

local record UnauthorizedClientException
    Code: string
    Message: string
end

local record BadRequestException
    Code: string
    Message: string
end

local record ForbiddenException
    Code: string
    Message: string
end

local record ServiceFailureException
    Code: string
    Message: string
end

local record ServiceUnavailableException
    Code: string
    Message: string
end

local record ThrottledClientException
    Code: string
    Message: string
end

local record UnauthorizedClientException
    Code: string
    Message: string
end

local record AccessDeniedException
    Code: string
    Message: string
end

local record BadRequestException
    Code: string
    Message: string
end

local record ForbiddenException
    Code: string
    Message: string
end

local record ServiceFailureException
    Code: string
    Message: string
end

local record ServiceUnavailableException
    Code: string
    Message: string
end

local record ThrottledClientException
    Code: string
    Message: string
end

local record UnauthorizedClientException
    Code: string
    Message: string
end

local record BadRequestException
    Code: string
    Message: string
end

local record ForbiddenException
    Code: string
    Message: string
end

local record NotFoundException
    Code: string
    Message: string
end

local record ServiceFailureException
    Code: string
    Message: string
end

local record ServiceUnavailableException
    Code: string
    Message: string
end

local record UnauthorizedClientException
    Code: string
    Message: string
end

local record BadRequestException
    Code: string
    Message: string
end

local record ForbiddenException
    Code: string
    Message: string
end

local record ServiceFailureException
    Code: string
    Message: string
end

local record ServiceUnavailableException
    Code: string
    Message: string
end

local record ThrottledClientException
    Code: string
    Message: string
end

local record UnauthorizedClientException
    Code: string
    Message: string
end

local record BadRequestException
    Code: string
    Message: string
end

local record ForbiddenException
    Code: string
    Message: string
end

local record ServiceFailureException
    Code: string
    Message: string
end

local record ServiceUnavailableException
    Code: string
    Message: string
end

local record ThrottledClientException
    Code: string
    Message: string
end

local record UnauthorizedClientException
    Code: string
    Message: string
end

local record BadRequestException
    Code: string
    Message: string
end

local record ForbiddenException
    Code: string
    Message: string
end

local record NotFoundException
    Code: string
    Message: string
end

local record ServiceFailureException
    Code: string
    Message: string
end

local record ServiceUnavailableException
    Code: string
    Message: string
end

local record ThrottledClientException
    Code: string
    Message: string
end

local record UnauthorizedClientException
    Code: string
    Message: string
end

local record BadRequestException
    Code: string
    Message: string
end

local record ForbiddenException
    Code: string
    Message: string
end

local record NotFoundException
    Code: string
    Message: string
end

local record ServiceFailureException
    Code: string
    Message: string
end

local record ServiceUnavailableException
    Code: string
    Message: string
end

local record ThrottledClientException
    Code: string
    Message: string
end

local record UnauthorizedClientException
    Code: string
    Message: string
end

local record BadRequestException
    Code: string
    Message: string
end

local record ForbiddenException
    Code: string
    Message: string
end

local record NotFoundException
    Code: string
    Message: string
end

local record ServiceFailureException
    Code: string
    Message: string
end

local record ServiceUnavailableException
    Code: string
    Message: string
end

local record ThrottledClientException
    Code: string
    Message: string
end

local record UnauthorizedClientException
    Code: string
    Message: string
end

local record BadRequestException
    Code: string
    Message: string
end

local record ForbiddenException
    Code: string
    Message: string
end

local record NotFoundException
    Code: string
    Message: string
end

local record ServiceFailureException
    Code: string
    Message: string
end

local record ServiceUnavailableException
    Code: string
    Message: string
end

local record ThrottledClientException
    Code: string
    Message: string
end

local record UnauthorizedClientException
    Code: string
    Message: string
end

local record BadRequestException
    Code: string
    Message: string
end

local record ForbiddenException
    Code: string
    Message: string
end

local record NotFoundException
    Code: string
    Message: string
end

local record ServiceFailureException
    Code: string
    Message: string
end

local record ServiceUnavailableException
    Code: string
    Message: string
end

local record ThrottledClientException
    Code: string
    Message: string
end

local record UnauthorizedClientException
    Code: string
    Message: string
end

local record BadRequestException
    Code: string
    Message: string
end

local record ForbiddenException
    Code: string
    Message: string
end

local record NotFoundException
    Code: string
    Message: string
end

local record ServiceFailureException
    Code: string
    Message: string
end

local record ServiceUnavailableException
    Code: string
    Message: string
end

local record ThrottledClientException
    Code: string
    Message: string
end

local record UnauthorizedClientException
    Code: string
    Message: string
end

local record BadRequestException
    Code: string
    Message: string
end

local record ConflictException
    Code: string
    Message: string
end

local record ForbiddenException
    Code: string
    Message: string
end

local record NotFoundException
    Code: string
    Message: string
end

local record ServiceFailureException
    Code: string
    Message: string
end

local record ServiceUnavailableException
    Code: string
    Message: string
end

local record ThrottledClientException
    Code: string
    Message: string
end

local record UnauthorizedClientException
    Code: string
    Message: string
end

local record BadRequestException
    Code: string
    Message: string
end

local record ForbiddenException
    Code: string
    Message: string
end

local record NotFoundException
    Code: string
    Message: string
end

local record ServiceFailureException
    Code: string
    Message: string
end

local record ServiceUnavailableException
    Code: string
    Message: string
end

local record ThrottledClientException
    Code: string
    Message: string
end

local record UnauthorizedClientException
    Code: string
    Message: string
end

local record BadRequestException
    Code: string
    Message: string
end

local record ForbiddenException
    Code: string
    Message: string
end

local record NotFoundException
    Code: string
    Message: string
end

local record ServiceFailureException
    Code: string
    Message: string
end

local record ServiceUnavailableException
    Code: string
    Message: string
end

local record ThrottledClientException
    Code: string
    Message: string
end

local record UnauthorizedClientException
    Code: string
    Message: string
end

local record AccessDeniedException
    Code: string
    Message: string
end

local record BadRequestException
    Code: string
    Message: string
end

local record ForbiddenException
    Code: string
    Message: string
end

local record NotFoundException
    Code: string
    Message: string
end

local record ServiceFailureException
    Code: string
    Message: string
end

local record ServiceUnavailableException
    Code: string
    Message: string
end

local record ThrottledClientException
    Code: string
    Message: string
end

local record UnauthorizedClientException
    Code: string
    Message: string
end

local record BadRequestException
    Code: string
    Message: string
end

local record ForbiddenException
    Code: string
    Message: string
end

local record NotFoundException
    Code: string
    Message: string
end

local record ServiceFailureException
    Code: string
    Message: string
end

local record ServiceUnavailableException
    Code: string
    Message: string
end

local record ThrottledClientException
    Code: string
    Message: string
end

local record UnauthorizedClientException
    Code: string
    Message: string
end

local record AccessDeniedException
    Code: string
    Message: string
end

local record BadRequestException
    Code: string
    Message: string
end

local record ForbiddenException
    Code: string
    Message: string
end

local record NotFoundException
    Code: string
    Message: string
end

local record ServiceFailureException
    Code: string
    Message: string
end

local record ServiceUnavailableException
    Code: string
    Message: string
end

local record ThrottledClientException
    Code: string
    Message: string
end

local record UnauthorizedClientException
    Code: string
    Message: string
end

local record BadRequestException
    Code: string
    Message: string
end

local record ForbiddenException
    Code: string
    Message: string
end

local record NotFoundException
    Code: string
    Message: string
end

local record ServiceFailureException
    Code: string
    Message: string
end

local record ServiceUnavailableException
    Code: string
    Message: string
end

local record ThrottledClientException
    Code: string
    Message: string
end

local record UnauthorizedClientException
    Code: string
    Message: string
end

local record BadRequestException
    Code: string
    Message: string
end

local record ForbiddenException
    Code: string
    Message: string
end

local record NotFoundException
    Code: string
    Message: string
end

local record ResourceLimitExceededException
    Code: string
    Message: string
end

local record ServiceFailureException
    Code: string
    Message: string
end

local record ServiceUnavailableException
    Code: string
    Message: string
end

local record ThrottledClientException
    Code: string
    Message: string
end

local record UnauthorizedClientException
    Code: string
    Message: string
end

local record AccessDeniedException
    Code: string
    Message: string
end

local record BadRequestException
    Code: string
    Message: string
end

local record ForbiddenException
    Code: string
    Message: string
end

local record ServiceFailureException
    Code: string
    Message: string
end

local record ServiceUnavailableException
    Code: string
    Message: string
end

local record ThrottledClientException
    Code: string
    Message: string
end

local record UnauthorizedClientException
    Code: string
    Message: string
end

local record AccessDeniedException
    Code: string
    Message: string
end

local record BadRequestException
    Code: string
    Message: string
end

local record ConflictException
    Code: string
    Message: string
end

local record ForbiddenException
    Code: string
    Message: string
end

local record GoneException
    Code: string
    Message: string
end

local record NotFoundException
    Code: string
    Message: string
end

local record ResourceLimitExceededException
    Code: string
    Message: string
end

local record ServiceFailureException
    Code: string
    Message: string
end

local record ServiceUnavailableException
    Code: string
    Message: string
end

local record ThrottledClientException
    Code: string
    Message: string
end

local record UnauthorizedClientException
    Code: string
    Message: string
end

local record UnprocessableEntityException
    Code: string
    Message: string
end

local record AccessDeniedException
    Code: string
    Message: string
end

local record BadRequestException
    Code: string
    Message: string
end

local record ConflictException
    Code: string
    Message: string
end

local record ForbiddenException
    Code: string
    Message: string
end

local record GoneException
    Code: string
    Message: string
end

local record NotFoundException
    Code: string
    Message: string
end

local record ResourceLimitExceededException
    Code: string
    Message: string
end

local record ServiceFailureException
    Code: string
    Message: string
end

local record ServiceUnavailableException
    Code: string
    Message: string
end

local record ThrottledClientException
    Code: string
    Message: string
end

local record UnauthorizedClientException
    Code: string
    Message: string
end

local record UnprocessableEntityException
    Code: string
    Message: string
end

local record AccessDeniedException
    Code: string
    Message: string
end

local record BadRequestException
    Code: string
    Message: string
end

local record ConflictException
    Code: string
    Message: string
end

local record ForbiddenException
    Code: string
    Message: string
end

local record NotFoundException
    Code: string
    Message: string
end

local record ServiceFailureException
    Code: string
    Message: string
end

local record ServiceUnavailableException
    Code: string
    Message: string
end

local record ThrottledClientException
    Code: string
    Message: string
end

local record UnauthorizedClientException
    Code: string
    Message: string
end

local record UnprocessableEntityException
    Code: string
    Message: string
end

local record AccessDeniedException
    Code: string
    Message: string
end

local record BadRequestException
    Code: string
    Message: string
end

local record ConflictException
    Code: string
    Message: string
end

local record ForbiddenException
    Code: string
    Message: string
end

local record NotFoundException
    Code: string
    Message: string
end

local record ServiceFailureException
    Code: string
    Message: string
end

local record ServiceUnavailableException
    Code: string
    Message: string
end

local record ThrottledClientException
    Code: string
    Message: string
end

local record UnauthorizedClientException
    Code: string
    Message: string
end

local record UnprocessableEntityException
    Code: string
    Message: string
end

local record BadRequestException
    Code: string
    Message: string
end

local record ForbiddenException
    Code: string
    Message: string
end

local record NotFoundException
    Code: string
    Message: string
end

local record ResourceLimitExceededException
    Code: string
    Message: string
end

local record ServiceFailureException
    Code: string
    Message: string
end

local record ServiceUnavailableException
    Code: string
    Message: string
end

local record UnauthorizedClientException
    Code: string
    Message: string
end

local record BadRequestException
    Code: string
    Message: string
end

local record ForbiddenException
    Code: string
    Message: string
end

local record NotFoundException
    Code: string
    Message: string
end

local record ServiceFailureException
    Code: string
    Message: string
end

local record ServiceUnavailableException
    Code: string
    Message: string
end

local record UnauthorizedClientException
    Code: string
    Message: string
end

local record BadRequestException
    Code: string
    Message: string
end

local record ForbiddenException
    Code: string
    Message: string
end

local record ServiceFailureException
    Code: string
    Message: string
end

local record ServiceUnavailableException
    Code: string
    Message: string
end

local record ThrottledClientException
    Code: string
    Message: string
end

local record UnauthorizedClientException
    Code: string
    Message: string
end

local record BadRequestException
    Code: string
    Message: string
end

local record ConflictException
    Code: string
    Message: string
end

local record ForbiddenException
    Code: string
    Message: string
end

local record NotFoundException
    Code: string
    Message: string
end

local record ServiceFailureException
    Code: string
    Message: string
end

local record ServiceUnavailableException
    Code: string
    Message: string
end

local record ThrottledClientException
    Code: string
    Message: string
end

local record UnauthorizedClientException
    Code: string
    Message: string
end

local record BadRequestException
    Code: string
    Message: string
end

local record ForbiddenException
    Code: string
    Message: string
end

local record ServiceFailureException
    Code: string
    Message: string
end

local record ServiceUnavailableException
    Code: string
    Message: string
end

local record ThrottledClientException
    Code: string
    Message: string
end

local record UnauthorizedClientException
    Code: string
    Message: string
end

local record BadRequestException
    Code: string
    Message: string
end

local record ForbiddenException
    Code: string
    Message: string
end

local record NotFoundException
    Code: string
    Message: string
end

local record ServiceFailureException
    Code: string
    Message: string
end

local record ServiceUnavailableException
    Code: string
    Message: string
end

local record ThrottledClientException
    Code: string
    Message: string
end

local record UnauthorizedClientException
    Code: string
    Message: string
end

local record BadRequestException
    Code: string
    Message: string
end

local record ConflictException
    Code: string
    Message: string
end

local record ForbiddenException
    Code: string
    Message: string
end

local record NotFoundException
    Code: string
    Message: string
end

local record ServiceFailureException
    Code: string
    Message: string
end

local record ServiceUnavailableException
    Code: string
    Message: string
end

local record ThrottledClientException
    Code: string
    Message: string
end

local record UnauthorizedClientException
    Code: string
    Message: string
end

local record BadRequestException
    Code: string
    Message: string
end

local record ForbiddenException
    Code: string
    Message: string
end

local record NotFoundException
    Code: string
    Message: string
end

local record ResourceLimitExceededException
    Code: string
    Message: string
end

local record ServiceFailureException
    Code: string
    Message: string
end

local record ServiceUnavailableException
    Code: string
    Message: string
end

local record ThrottledClientException
    Code: string
    Message: string
end

local record UnauthorizedClientException
    Code: string
    Message: string
end

local record BadRequestException
    Code: string
    Message: string
end

local record ConflictException
    Code: string
    Message: string
end

local record ForbiddenException
    Code: string
    Message: string
end

local record NotFoundException
    Code: string
    Message: string
end

local record ResourceLimitExceededException
    Code: string
    Message: string
end

local record ServiceFailureException
    Code: string
    Message: string
end

local record ServiceUnavailableException
    Code: string
    Message: string
end

local record ThrottledClientException
    Code: string
    Message: string
end

local record UnauthorizedClientException
    Code: string
    Message: string
end

local record BadRequestException
    Code: string
    Message: string
end

local record ForbiddenException
    Code: string
    Message: string
end

local record NotFoundException
    Code: string
    Message: string
end

local record ServiceFailureException
    Code: string
    Message: string
end

local record ServiceUnavailableException
    Code: string
    Message: string
end

local record ThrottledClientException
    Code: string
    Message: string
end

local record UnauthorizedClientException
    Code: string
    Message: string
end

local record BadRequestException
    Code: string
    Message: string
end

local record ConflictException
    Code: string
    Message: string
end

local record ForbiddenException
    Code: string
    Message: string
end

local record NotFoundException
    Code: string
    Message: string
end

local record ServiceFailureException
    Code: string
    Message: string
end

local record ServiceUnavailableException
    Code: string
    Message: string
end

local record ThrottledClientException
    Code: string
    Message: string
end

local record UnauthorizedClientException
    Code: string
    Message: string
end

local record AccessDeniedException
    Code: string
    Message: string
end

local record BadRequestException
    Code: string
    Message: string
end

local record ConflictException
    Code: string
    Message: string
end

local record ForbiddenException
    Code: string
    Message: string
end

local record GoneException
    Code: string
    Message: string
end

local record NotFoundException
    Code: string
    Message: string
end

local record ServiceFailureException
    Code: string
    Message: string
end

local record ServiceUnavailableException
    Code: string
    Message: string
end

local record ThrottledClientException
    Code: string
    Message: string
end

local record UnauthorizedClientException
    Code: string
    Message: string
end

local record AccessDeniedException
    Code: string
    Message: string
end

local record BadRequestException
    Code: string
    Message: string
end

local record ForbiddenException
    Code: string
    Message: string
end

local record NotFoundException
    Code: string
    Message: string
end

local record ServiceFailureException
    Code: string
    Message: string
end

local record ServiceUnavailableException
    Code: string
    Message: string
end

local record ThrottledClientException
    Code: string
    Message: string
end

local record UnauthorizedClientException
    Code: string
    Message: string
end

local record AccessDeniedException
    Code: string
    Message: string
end

local record BadRequestException
    Code: string
    Message: string
end

local record ForbiddenException
    Code: string
    Message: string
end

local record NotFoundException
    Code: string
    Message: string
end

local record ServiceFailureException
    Code: string
    Message: string
end

local record ServiceUnavailableException
    Code: string
    Message: string
end

local record ThrottledClientException
    Code: string
    Message: string
end

local record UnauthorizedClientException
    Code: string
    Message: string
end

local type PhoneNumberProductType = "VoiceConnector" | "SipMediaApplicationDialIn"

local type SipRuleTriggerType = "ToPhoneNumber" | "RequestUriHostname"

local type NumberSelectionBehavior = "PreferSticky" | "AvoidSticky"

local type LanguageCode = "en-US"

local type CallLegType = "Caller" | "Callee"

local type ProxySessionStatus = "Open" | "InProgress" | "Closed"

local type VoiceConnectorIntegrationType = "CONNECT_CALL_TRANSFER_CONNECTOR" | "CONNECT_ANALYTICS_CONNECTOR"

local type PhoneNumberType = "Local" | "TollFree"

local type VoiceConnectorAwsRegion = "us-east-1" | "us-west-2" | "ca-central-1" | "eu-central-1" | "eu-west-1" | "eu-west-2" | "ap-northeast-2" | "ap-northeast-1" | "ap-southeast-1" | "ap-southeast-2"

local type NetworkType = "IPV4_ONLY" | "DUAL_STACK"

local type PhoneNumberAssociationName = "VoiceConnectorId" | "VoiceConnectorGroupId" | "SipRuleId"

local type GeoMatchLevel = "Country" | "AreaCode"

local record M
    AssociatePhoneNumbersWithVoiceConnectorInput: AssociatePhoneNumbersWithVoiceConnectorInput
    AssociatePhoneNumbersWithVoiceConnectorOutput: AssociatePhoneNumbersWithVoiceConnectorOutput
    AssociatePhoneNumbersWithVoiceConnectorGroupInput: AssociatePhoneNumbersWithVoiceConnectorGroupInput
    AssociatePhoneNumbersWithVoiceConnectorGroupOutput: AssociatePhoneNumbersWithVoiceConnectorGroupOutput
    BatchDeletePhoneNumberInput: BatchDeletePhoneNumberInput
    BatchDeletePhoneNumberOutput: BatchDeletePhoneNumberOutput
    BatchUpdatePhoneNumberInput: BatchUpdatePhoneNumberInput
    BatchUpdatePhoneNumberOutput: BatchUpdatePhoneNumberOutput
    CreatePhoneNumberOrderInput: CreatePhoneNumberOrderInput
    CreatePhoneNumberOrderOutput: CreatePhoneNumberOrderOutput
    CreateProxySessionInput: CreateProxySessionInput
    CreateProxySessionOutput: CreateProxySessionOutput
    CreateSipMediaApplicationInput: CreateSipMediaApplicationInput
    CreateSipMediaApplicationOutput: CreateSipMediaApplicationOutput
    CreateSipMediaApplicationCallInput: CreateSipMediaApplicationCallInput
    CreateSipMediaApplicationCallOutput: CreateSipMediaApplicationCallOutput
    CreateSipRuleInput: CreateSipRuleInput
    CreateSipRuleOutput: CreateSipRuleOutput
    CreateVoiceConnectorInput: CreateVoiceConnectorInput
    CreateVoiceConnectorOutput: CreateVoiceConnectorOutput
    CreateVoiceConnectorGroupInput: CreateVoiceConnectorGroupInput
    CreateVoiceConnectorGroupOutput: CreateVoiceConnectorGroupOutput
    CreateVoiceProfileInput: CreateVoiceProfileInput
    CreateVoiceProfileOutput: CreateVoiceProfileOutput
    CreateVoiceProfileDomainInput: CreateVoiceProfileDomainInput
    CreateVoiceProfileDomainOutput: CreateVoiceProfileDomainOutput
    DeletePhoneNumberInput: DeletePhoneNumberInput
    DeletePhoneNumberOutput: DeletePhoneNumberOutput
    DeleteProxySessionInput: DeleteProxySessionInput
    DeleteProxySessionOutput: DeleteProxySessionOutput
    DeleteSipMediaApplicationInput: DeleteSipMediaApplicationInput
    DeleteSipMediaApplicationOutput: DeleteSipMediaApplicationOutput
    DeleteSipRuleInput: DeleteSipRuleInput
    DeleteSipRuleOutput: DeleteSipRuleOutput
    DeleteVoiceConnectorInput: DeleteVoiceConnectorInput
    DeleteVoiceConnectorOutput: DeleteVoiceConnectorOutput
    DeleteVoiceConnectorEmergencyCallingConfigurationInput: DeleteVoiceConnectorEmergencyCallingConfigurationInput
    DeleteVoiceConnectorEmergencyCallingConfigurationOutput: DeleteVoiceConnectorEmergencyCallingConfigurationOutput
    DeleteVoiceConnectorExternalSystemsConfigurationInput: DeleteVoiceConnectorExternalSystemsConfigurationInput
    DeleteVoiceConnectorExternalSystemsConfigurationOutput: DeleteVoiceConnectorExternalSystemsConfigurationOutput
    DeleteVoiceConnectorGroupInput: DeleteVoiceConnectorGroupInput
    DeleteVoiceConnectorGroupOutput: DeleteVoiceConnectorGroupOutput
    DeleteVoiceConnectorOriginationInput: DeleteVoiceConnectorOriginationInput
    DeleteVoiceConnectorOriginationOutput: DeleteVoiceConnectorOriginationOutput
    DeleteVoiceConnectorProxyInput: DeleteVoiceConnectorProxyInput
    DeleteVoiceConnectorProxyOutput: DeleteVoiceConnectorProxyOutput
    DeleteVoiceConnectorStreamingConfigurationInput: DeleteVoiceConnectorStreamingConfigurationInput
    DeleteVoiceConnectorStreamingConfigurationOutput: DeleteVoiceConnectorStreamingConfigurationOutput
    DeleteVoiceConnectorTerminationInput: DeleteVoiceConnectorTerminationInput
    DeleteVoiceConnectorTerminationOutput: DeleteVoiceConnectorTerminationOutput
    DeleteVoiceConnectorTerminationCredentialsInput: DeleteVoiceConnectorTerminationCredentialsInput
    DeleteVoiceConnectorTerminationCredentialsOutput: DeleteVoiceConnectorTerminationCredentialsOutput
    DeleteVoiceProfileInput: DeleteVoiceProfileInput
    DeleteVoiceProfileOutput: DeleteVoiceProfileOutput
    DeleteVoiceProfileDomainInput: DeleteVoiceProfileDomainInput
    DeleteVoiceProfileDomainOutput: DeleteVoiceProfileDomainOutput
    DisassociatePhoneNumbersFromVoiceConnectorInput: DisassociatePhoneNumbersFromVoiceConnectorInput
    DisassociatePhoneNumbersFromVoiceConnectorOutput: DisassociatePhoneNumbersFromVoiceConnectorOutput
    DisassociatePhoneNumbersFromVoiceConnectorGroupInput: DisassociatePhoneNumbersFromVoiceConnectorGroupInput
    DisassociatePhoneNumbersFromVoiceConnectorGroupOutput: DisassociatePhoneNumbersFromVoiceConnectorGroupOutput
    GetGlobalSettingsInput: GetGlobalSettingsInput
    GetGlobalSettingsOutput: GetGlobalSettingsOutput
    GetPhoneNumberInput: GetPhoneNumberInput
    GetPhoneNumberOutput: GetPhoneNumberOutput
    GetPhoneNumberOrderInput: GetPhoneNumberOrderInput
    GetPhoneNumberOrderOutput: GetPhoneNumberOrderOutput
    GetPhoneNumberSettingsInput: GetPhoneNumberSettingsInput
    GetPhoneNumberSettingsOutput: GetPhoneNumberSettingsOutput
    GetProxySessionInput: GetProxySessionInput
    GetProxySessionOutput: GetProxySessionOutput
    GetSipMediaApplicationInput: GetSipMediaApplicationInput
    GetSipMediaApplicationOutput: GetSipMediaApplicationOutput
    GetSipMediaApplicationAlexaSkillConfigurationInput: GetSipMediaApplicationAlexaSkillConfigurationInput
    GetSipMediaApplicationAlexaSkillConfigurationOutput: GetSipMediaApplicationAlexaSkillConfigurationOutput
    GetSipMediaApplicationLoggingConfigurationInput: GetSipMediaApplicationLoggingConfigurationInput
    GetSipMediaApplicationLoggingConfigurationOutput: GetSipMediaApplicationLoggingConfigurationOutput
    GetSipRuleInput: GetSipRuleInput
    GetSipRuleOutput: GetSipRuleOutput
    GetSpeakerSearchTaskInput: GetSpeakerSearchTaskInput
    GetSpeakerSearchTaskOutput: GetSpeakerSearchTaskOutput
    GetVoiceConnectorInput: GetVoiceConnectorInput
    GetVoiceConnectorOutput: GetVoiceConnectorOutput
    GetVoiceConnectorEmergencyCallingConfigurationInput: GetVoiceConnectorEmergencyCallingConfigurationInput
    GetVoiceConnectorEmergencyCallingConfigurationOutput: GetVoiceConnectorEmergencyCallingConfigurationOutput
    GetVoiceConnectorExternalSystemsConfigurationInput: GetVoiceConnectorExternalSystemsConfigurationInput
    GetVoiceConnectorExternalSystemsConfigurationOutput: GetVoiceConnectorExternalSystemsConfigurationOutput
    GetVoiceConnectorGroupInput: GetVoiceConnectorGroupInput
    GetVoiceConnectorGroupOutput: GetVoiceConnectorGroupOutput
    GetVoiceConnectorLoggingConfigurationInput: GetVoiceConnectorLoggingConfigurationInput
    GetVoiceConnectorLoggingConfigurationOutput: GetVoiceConnectorLoggingConfigurationOutput
    GetVoiceConnectorOriginationInput: GetVoiceConnectorOriginationInput
    GetVoiceConnectorOriginationOutput: GetVoiceConnectorOriginationOutput
    GetVoiceConnectorProxyInput: GetVoiceConnectorProxyInput
    GetVoiceConnectorProxyOutput: GetVoiceConnectorProxyOutput
    GetVoiceConnectorStreamingConfigurationInput: GetVoiceConnectorStreamingConfigurationInput
    GetVoiceConnectorStreamingConfigurationOutput: GetVoiceConnectorStreamingConfigurationOutput
    GetVoiceConnectorTerminationInput: GetVoiceConnectorTerminationInput
    GetVoiceConnectorTerminationOutput: GetVoiceConnectorTerminationOutput
    GetVoiceConnectorTerminationHealthInput: GetVoiceConnectorTerminationHealthInput
    GetVoiceConnectorTerminationHealthOutput: GetVoiceConnectorTerminationHealthOutput
    GetVoiceProfileInput: GetVoiceProfileInput
    GetVoiceProfileOutput: GetVoiceProfileOutput
    GetVoiceProfileDomainInput: GetVoiceProfileDomainInput
    GetVoiceProfileDomainOutput: GetVoiceProfileDomainOutput
    GetVoiceToneAnalysisTaskInput: GetVoiceToneAnalysisTaskInput
    GetVoiceToneAnalysisTaskOutput: GetVoiceToneAnalysisTaskOutput
    ListAvailableVoiceConnectorRegionsInput: ListAvailableVoiceConnectorRegionsInput
    ListAvailableVoiceConnectorRegionsOutput: ListAvailableVoiceConnectorRegionsOutput
    ListPhoneNumberOrdersInput: ListPhoneNumberOrdersInput
    ListPhoneNumberOrdersOutput: ListPhoneNumberOrdersOutput
    ListPhoneNumbersInput: ListPhoneNumbersInput
    ListPhoneNumbersOutput: ListPhoneNumbersOutput
    ListProxySessionsInput: ListProxySessionsInput
    ListProxySessionsOutput: ListProxySessionsOutput
    ListSipMediaApplicationsInput: ListSipMediaApplicationsInput
    ListSipMediaApplicationsOutput: ListSipMediaApplicationsOutput
    ListSipRulesInput: ListSipRulesInput
    ListSipRulesOutput: ListSipRulesOutput
    ListSupportedPhoneNumberCountriesInput: ListSupportedPhoneNumberCountriesInput
    ListSupportedPhoneNumberCountriesOutput: ListSupportedPhoneNumberCountriesOutput
    ListTagsForResourceInput: ListTagsForResourceInput
    ListTagsForResourceOutput: ListTagsForResourceOutput
    ListVoiceConnectorGroupsInput: ListVoiceConnectorGroupsInput
    ListVoiceConnectorGroupsOutput: ListVoiceConnectorGroupsOutput
    ListVoiceConnectorsInput: ListVoiceConnectorsInput
    ListVoiceConnectorsOutput: ListVoiceConnectorsOutput
    ListVoiceConnectorTerminationCredentialsInput: ListVoiceConnectorTerminationCredentialsInput
    ListVoiceConnectorTerminationCredentialsOutput: ListVoiceConnectorTerminationCredentialsOutput
    ListVoiceProfileDomainsInput: ListVoiceProfileDomainsInput
    ListVoiceProfileDomainsOutput: ListVoiceProfileDomainsOutput
    ListVoiceProfilesInput: ListVoiceProfilesInput
    ListVoiceProfilesOutput: ListVoiceProfilesOutput
    PutSipMediaApplicationAlexaSkillConfigurationInput: PutSipMediaApplicationAlexaSkillConfigurationInput
    PutSipMediaApplicationAlexaSkillConfigurationOutput: PutSipMediaApplicationAlexaSkillConfigurationOutput
    PutSipMediaApplicationLoggingConfigurationInput: PutSipMediaApplicationLoggingConfigurationInput
    PutSipMediaApplicationLoggingConfigurationOutput: PutSipMediaApplicationLoggingConfigurationOutput
    PutVoiceConnectorEmergencyCallingConfigurationInput: PutVoiceConnectorEmergencyCallingConfigurationInput
    PutVoiceConnectorEmergencyCallingConfigurationOutput: PutVoiceConnectorEmergencyCallingConfigurationOutput
    PutVoiceConnectorExternalSystemsConfigurationInput: PutVoiceConnectorExternalSystemsConfigurationInput
    PutVoiceConnectorExternalSystemsConfigurationOutput: PutVoiceConnectorExternalSystemsConfigurationOutput
    PutVoiceConnectorLoggingConfigurationInput: PutVoiceConnectorLoggingConfigurationInput
    PutVoiceConnectorLoggingConfigurationOutput: PutVoiceConnectorLoggingConfigurationOutput
    PutVoiceConnectorOriginationInput: PutVoiceConnectorOriginationInput
    PutVoiceConnectorOriginationOutput: PutVoiceConnectorOriginationOutput
    PutVoiceConnectorProxyInput: PutVoiceConnectorProxyInput
    PutVoiceConnectorProxyOutput: PutVoiceConnectorProxyOutput
    PutVoiceConnectorStreamingConfigurationInput: PutVoiceConnectorStreamingConfigurationInput
    PutVoiceConnectorStreamingConfigurationOutput: PutVoiceConnectorStreamingConfigurationOutput
    PutVoiceConnectorTerminationInput: PutVoiceConnectorTerminationInput
    PutVoiceConnectorTerminationOutput: PutVoiceConnectorTerminationOutput
    PutVoiceConnectorTerminationCredentialsInput: PutVoiceConnectorTerminationCredentialsInput
    PutVoiceConnectorTerminationCredentialsOutput: PutVoiceConnectorTerminationCredentialsOutput
    RestorePhoneNumberInput: RestorePhoneNumberInput
    RestorePhoneNumberOutput: RestorePhoneNumberOutput
    SearchAvailablePhoneNumbersInput: SearchAvailablePhoneNumbersInput
    SearchAvailablePhoneNumbersOutput: SearchAvailablePhoneNumbersOutput
    StartSpeakerSearchTaskInput: StartSpeakerSearchTaskInput
    StartSpeakerSearchTaskOutput: StartSpeakerSearchTaskOutput
    StartVoiceToneAnalysisTaskInput: StartVoiceToneAnalysisTaskInput
    StartVoiceToneAnalysisTaskOutput: StartVoiceToneAnalysisTaskOutput
    StopSpeakerSearchTaskInput: StopSpeakerSearchTaskInput
    StopSpeakerSearchTaskOutput: StopSpeakerSearchTaskOutput
    StopVoiceToneAnalysisTaskInput: StopVoiceToneAnalysisTaskInput
    StopVoiceToneAnalysisTaskOutput: StopVoiceToneAnalysisTaskOutput
    TagResourceInput: TagResourceInput
    TagResourceOutput: TagResourceOutput
    UntagResourceInput: UntagResourceInput
    UntagResourceOutput: UntagResourceOutput
    UpdateGlobalSettingsInput: UpdateGlobalSettingsInput
    UpdateGlobalSettingsOutput: UpdateGlobalSettingsOutput
    UpdatePhoneNumberInput: UpdatePhoneNumberInput
    UpdatePhoneNumberOutput: UpdatePhoneNumberOutput
    UpdatePhoneNumberSettingsInput: UpdatePhoneNumberSettingsInput
    UpdatePhoneNumberSettingsOutput: UpdatePhoneNumberSettingsOutput
    UpdateProxySessionInput: UpdateProxySessionInput
    UpdateProxySessionOutput: UpdateProxySessionOutput
    UpdateSipMediaApplicationInput: UpdateSipMediaApplicationInput
    UpdateSipMediaApplicationOutput: UpdateSipMediaApplicationOutput
    UpdateSipMediaApplicationCallInput: UpdateSipMediaApplicationCallInput
    UpdateSipMediaApplicationCallOutput: UpdateSipMediaApplicationCallOutput
    UpdateSipRuleInput: UpdateSipRuleInput
    UpdateSipRuleOutput: UpdateSipRuleOutput
    UpdateVoiceConnectorInput: UpdateVoiceConnectorInput
    UpdateVoiceConnectorOutput: UpdateVoiceConnectorOutput
    UpdateVoiceConnectorGroupInput: UpdateVoiceConnectorGroupInput
    UpdateVoiceConnectorGroupOutput: UpdateVoiceConnectorGroupOutput
    UpdateVoiceProfileInput: UpdateVoiceProfileInput
    UpdateVoiceProfileOutput: UpdateVoiceProfileOutput
    UpdateVoiceProfileDomainInput: UpdateVoiceProfileDomainInput
    UpdateVoiceProfileDomainOutput: UpdateVoiceProfileDomainOutput
    ValidateE911AddressInput: ValidateE911AddressInput
    ValidateE911AddressOutput: ValidateE911AddressOutput
end

return M
