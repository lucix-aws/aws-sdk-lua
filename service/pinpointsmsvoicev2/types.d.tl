local record AssociateOriginationIdentityInput
    PoolId: string
    OriginationIdentity: string
    IsoCountryCode: string
    ClientToken: string
end

local record AssociateOriginationIdentityOutput
    PoolArn: string
    PoolId: string
    OriginationIdentityArn: string
    OriginationIdentity: string
    IsoCountryCode: string
end

local record AssociateProtectConfigurationInput
    ProtectConfigurationId: string
    ConfigurationSetName: string
end

local record AssociateProtectConfigurationOutput
    ConfigurationSetArn: string
    ConfigurationSetName: string
    ProtectConfigurationArn: string
    ProtectConfigurationId: string
end

local record CarrierLookupInput
    PhoneNumber: string
end

local record CarrierLookupOutput
    E164PhoneNumber: string
    DialingCountryCode: string
    IsoCountryCode: string
    Country: string
    MCC: string
    MNC: string
    Carrier: string
    PhoneNumberType: string
end

local record CreateConfigurationSetInput
    ConfigurationSetName: string
    Tags: {Tag}
    ClientToken: string
end

local record CreateConfigurationSetOutput
    ConfigurationSetArn: string
    ConfigurationSetName: string
    Tags: {Tag}
    CreatedTimestamp: number
end

local record CreateEventDestinationInput
    ConfigurationSetName: string
    EventDestinationName: string
    MatchingEventTypes: {string}
    CloudWatchLogsDestination: CloudWatchLogsDestination
    KinesisFirehoseDestination: KinesisFirehoseDestination
    SnsDestination: SnsDestination
    ClientToken: string
end

local record CreateEventDestinationOutput
    ConfigurationSetArn: string
    ConfigurationSetName: string
    EventDestination: EventDestination
end

local record CreateNotifyConfigurationInput
    DisplayName: string
    UseCase: string
    DefaultTemplateId: string
    PoolId: string
    EnabledCountries: {string}
    EnabledChannels: {string}
    DeletionProtectionEnabled: boolean
    ClientToken: string
    Tags: {Tag}
end

local record CreateNotifyConfigurationOutput
    NotifyConfigurationArn: string
    NotifyConfigurationId: string
    DisplayName: string
    UseCase: string
    DefaultTemplateId: string
    PoolId: string
    EnabledCountries: {string}
    EnabledChannels: {string}
    Tier: string
    TierUpgradeStatus: string
    Status: string
    RejectionReason: string
    DeletionProtectionEnabled: boolean
    Tags: {Tag}
    CreatedTimestamp: number
end

local record CreateOptOutListInput
    OptOutListName: string
    Tags: {Tag}
    ClientToken: string
end

local record CreateOptOutListOutput
    OptOutListArn: string
    OptOutListName: string
    Tags: {Tag}
    CreatedTimestamp: number
end

local record CreatePoolInput
    OriginationIdentity: string
    IsoCountryCode: string
    MessageType: string
    DeletionProtectionEnabled: boolean
    Tags: {Tag}
    ClientToken: string
end

local record CreatePoolOutput
    PoolArn: string
    PoolId: string
    Status: string
    MessageType: string
    TwoWayEnabled: boolean
    TwoWayChannelArn: string
    TwoWayChannelRole: string
    SelfManagedOptOutsEnabled: boolean
    OptOutListName: string
    SharedRoutesEnabled: boolean
    DeletionProtectionEnabled: boolean
    Tags: {Tag}
    CreatedTimestamp: number
end

local record CreateProtectConfigurationInput
    ClientToken: string
    DeletionProtectionEnabled: boolean
    Tags: {Tag}
end

local record CreateProtectConfigurationOutput
    ProtectConfigurationArn: string
    ProtectConfigurationId: string
    CreatedTimestamp: number
    AccountDefault: boolean
    DeletionProtectionEnabled: boolean
    Tags: {Tag}
end

local record CreateRcsAgentInput
    DeletionProtectionEnabled: boolean
    OptOutListName: string
    Tags: {Tag}
    ClientToken: string
end

local record CreateRcsAgentOutput
    RcsAgentArn: string
    RcsAgentId: string
    Status: string
    DeletionProtectionEnabled: boolean
    OptOutListName: string
    CreatedTimestamp: number
    SelfManagedOptOutsEnabled: boolean
    TwoWayChannelArn: string
    TwoWayChannelRole: string
    TwoWayEnabled: boolean
    Tags: {Tag}
end

local record CreateRegistrationInput
    RegistrationType: string
    Tags: {Tag}
    ClientToken: string
end

local record CreateRegistrationOutput
    RegistrationArn: string
    RegistrationId: string
    RegistrationType: string
    RegistrationStatus: string
    CurrentVersionNumber: number
    AdditionalAttributes: {string : string}
    Tags: {Tag}
    CreatedTimestamp: number
end

local record CreateRegistrationAssociationInput
    RegistrationId: string
    ResourceId: string
end

local record CreateRegistrationAssociationOutput
    RegistrationArn: string
    RegistrationId: string
    RegistrationType: string
    ResourceArn: string
    ResourceId: string
    ResourceType: string
    IsoCountryCode: string
    PhoneNumber: string
end

local record CreateRegistrationAttachmentInput
    AttachmentBody: string
    AttachmentUrl: string
    Tags: {Tag}
    ClientToken: string
end

local record CreateRegistrationAttachmentOutput
    RegistrationAttachmentArn: string
    RegistrationAttachmentId: string
    AttachmentStatus: string
    Tags: {Tag}
    CreatedTimestamp: number
end

local record CreateRegistrationVersionInput
    RegistrationId: string
end

local record CreateRegistrationVersionOutput
    RegistrationArn: string
    RegistrationId: string
    VersionNumber: number
    RegistrationVersionStatus: string
    RegistrationVersionStatusHistory: RegistrationVersionStatusHistory
end

local record CreateVerifiedDestinationNumberInput
    DestinationPhoneNumber: string
    RcsAgentId: string
    Tags: {Tag}
    ClientToken: string
end

local record CreateVerifiedDestinationNumberOutput
    VerifiedDestinationNumberArn: string
    VerifiedDestinationNumberId: string
    DestinationPhoneNumber: string
    Status: string
    RcsAgentId: string
    Tags: {Tag}
    CreatedTimestamp: number
end

local record DeleteAccountDefaultProtectConfigurationInput
end

local record DeleteAccountDefaultProtectConfigurationOutput
    DefaultProtectConfigurationArn: string
    DefaultProtectConfigurationId: string
end

local record DeleteConfigurationSetInput
    ConfigurationSetName: string
end

local record DeleteConfigurationSetOutput
    ConfigurationSetArn: string
    ConfigurationSetName: string
    EventDestinations: {EventDestination}
    DefaultMessageType: string
    DefaultSenderId: string
    DefaultMessageFeedbackEnabled: boolean
    CreatedTimestamp: number
end

local record DeleteDefaultMessageTypeInput
    ConfigurationSetName: string
end

local record DeleteDefaultMessageTypeOutput
    ConfigurationSetArn: string
    ConfigurationSetName: string
    MessageType: string
end

local record DeleteDefaultSenderIdInput
    ConfigurationSetName: string
end

local record DeleteDefaultSenderIdOutput
    ConfigurationSetArn: string
    ConfigurationSetName: string
    SenderId: string
end

local record DeleteEventDestinationInput
    ConfigurationSetName: string
    EventDestinationName: string
end

local record DeleteEventDestinationOutput
    ConfigurationSetArn: string
    ConfigurationSetName: string
    EventDestination: EventDestination
end

local record DeleteKeywordInput
    OriginationIdentity: string
    Keyword: string
end

local record DeleteKeywordOutput
    OriginationIdentityArn: string
    OriginationIdentity: string
    Keyword: string
    KeywordMessage: string
    KeywordAction: string
end

local record DeleteMediaMessageSpendLimitOverrideInput
end

local record DeleteMediaMessageSpendLimitOverrideOutput
    MonthlyLimit: number
end

local record DeleteNotifyConfigurationInput
    NotifyConfigurationId: string
end

local record DeleteNotifyConfigurationOutput
    NotifyConfigurationArn: string
    NotifyConfigurationId: string
    DisplayName: string
    UseCase: string
    DefaultTemplateId: string
    PoolId: string
    EnabledCountries: {string}
    EnabledChannels: {string}
    Tier: string
    TierUpgradeStatus: string
    Status: string
    RejectionReason: string
    DeletionProtectionEnabled: boolean
    CreatedTimestamp: number
end

local record DeleteNotifyMessageSpendLimitOverrideInput
end

local record DeleteNotifyMessageSpendLimitOverrideOutput
    MonthlyLimit: number
end

local record DeleteOptedOutNumberInput
    OptOutListName: string
    OptedOutNumber: string
end

local record DeleteOptedOutNumberOutput
    OptOutListArn: string
    OptOutListName: string
    OptedOutNumber: string
    OptedOutTimestamp: number
    EndUserOptedOut: boolean
end

local record DeleteOptOutListInput
    OptOutListName: string
end

local record DeleteOptOutListOutput
    OptOutListArn: string
    OptOutListName: string
    CreatedTimestamp: number
end

local record DeletePoolInput
    PoolId: string
end

local record DeletePoolOutput
    PoolArn: string
    PoolId: string
    Status: string
    MessageType: string
    TwoWayEnabled: boolean
    TwoWayChannelArn: string
    TwoWayChannelRole: string
    SelfManagedOptOutsEnabled: boolean
    OptOutListName: string
    SharedRoutesEnabled: boolean
    CreatedTimestamp: number
end

local record DeleteProtectConfigurationInput
    ProtectConfigurationId: string
end

local record DeleteProtectConfigurationOutput
    ProtectConfigurationArn: string
    ProtectConfigurationId: string
    CreatedTimestamp: number
    AccountDefault: boolean
    DeletionProtectionEnabled: boolean
end

local record DeleteProtectConfigurationRuleSetNumberOverrideInput
    ProtectConfigurationId: string
    DestinationPhoneNumber: string
end

local record DeleteProtectConfigurationRuleSetNumberOverrideOutput
    ProtectConfigurationArn: string
    ProtectConfigurationId: string
    DestinationPhoneNumber: string
    CreatedTimestamp: number
    Action: string
    IsoCountryCode: string
    ExpirationTimestamp: number
end

local record DeleteRcsAgentInput
    RcsAgentId: string
end

local record DeleteRcsAgentOutput
    RcsAgentArn: string
    RcsAgentId: string
    Status: string
    CreatedTimestamp: number
    DeletionProtectionEnabled: boolean
    OptOutListName: string
    SelfManagedOptOutsEnabled: boolean
    TwoWayChannelArn: string
    TwoWayChannelRole: string
    TwoWayEnabled: boolean
end

local record DeleteRegistrationInput
    RegistrationId: string
end

local record DeleteRegistrationOutput
    RegistrationArn: string
    RegistrationId: string
    RegistrationType: string
    RegistrationStatus: string
    CurrentVersionNumber: number
    ApprovedVersionNumber: number
    LatestDeniedVersionNumber: number
    AdditionalAttributes: {string : string}
    CreatedTimestamp: number
end

local record DeleteRegistrationAttachmentInput
    RegistrationAttachmentId: string
end

local record DeleteRegistrationAttachmentOutput
    RegistrationAttachmentArn: string
    RegistrationAttachmentId: string
    AttachmentStatus: string
    AttachmentUploadErrorReason: string
    CreatedTimestamp: number
end

local record DeleteRegistrationFieldValueInput
    RegistrationId: string
    FieldPath: string
end

local record DeleteRegistrationFieldValueOutput
    RegistrationArn: string
    RegistrationId: string
    VersionNumber: number
    FieldPath: string
    SelectChoices: {string}
    TextValue: string
    RegistrationAttachmentId: string
end

local record DeleteResourcePolicyInput
    ResourceArn: string
end

local record DeleteResourcePolicyOutput
    ResourceArn: string
    Policy: string
    CreatedTimestamp: number
end

local record DeleteTextMessageSpendLimitOverrideInput
end

local record DeleteTextMessageSpendLimitOverrideOutput
    MonthlyLimit: number
end

local record DeleteVerifiedDestinationNumberInput
    VerifiedDestinationNumberId: string
end

local record DeleteVerifiedDestinationNumberOutput
    VerifiedDestinationNumberArn: string
    VerifiedDestinationNumberId: string
    DestinationPhoneNumber: string
    CreatedTimestamp: number
end

local record DeleteVoiceMessageSpendLimitOverrideInput
end

local record DeleteVoiceMessageSpendLimitOverrideOutput
    MonthlyLimit: number
end

local record DescribeAccountAttributesInput
    NextToken: string
    MaxResults: number
end

local record DescribeAccountAttributesOutput
    AccountAttributes: {AccountAttribute}
    NextToken: string
end

local record DescribeAccountLimitsInput
    NextToken: string
    MaxResults: number
end

local record DescribeAccountLimitsOutput
    AccountLimits: {AccountLimit}
    NextToken: string
end

local record DescribeConfigurationSetsInput
    ConfigurationSetNames: {string}
    Filters: {ConfigurationSetFilter}
    NextToken: string
    MaxResults: number
end

local record DescribeConfigurationSetsOutput
    ConfigurationSets: {ConfigurationSetInformation}
    NextToken: string
end

local record DescribeKeywordsInput
    OriginationIdentity: string
    Keywords: {string}
    Filters: {KeywordFilter}
    NextToken: string
    MaxResults: number
end

local record DescribeKeywordsOutput
    OriginationIdentityArn: string
    OriginationIdentity: string
    Keywords: {KeywordInformation}
    NextToken: string
end

local record DescribeNotifyConfigurationsInput
    NotifyConfigurationIds: {string}
    Filters: {NotifyConfigurationFilter}
    NextToken: string
    MaxResults: number
end

local record DescribeNotifyConfigurationsOutput
    NotifyConfigurations: {NotifyConfigurationInformation}
    NextToken: string
end

local record DescribeNotifyTemplatesInput
    TemplateIds: {string}
    Filters: {NotifyTemplateFilter}
    NextToken: string
    MaxResults: number
end

local record DescribeNotifyTemplatesOutput
    NotifyTemplates: {NotifyTemplateInformation}
    NextToken: string
end

local record DescribeOptedOutNumbersInput
    OptOutListName: string
    OptedOutNumbers: {string}
    Filters: {OptedOutFilter}
    NextToken: string
    MaxResults: number
end

local record DescribeOptedOutNumbersOutput
    OptOutListArn: string
    OptOutListName: string
    OptedOutNumbers: {OptedOutNumberInformation}
    NextToken: string
end

local record DescribeOptOutListsInput
    OptOutListNames: {string}
    NextToken: string
    MaxResults: number
    Owner: string
end

local record DescribeOptOutListsOutput
    OptOutLists: {OptOutListInformation}
    NextToken: string
end

local record DescribePhoneNumbersInput
    PhoneNumberIds: {string}
    Filters: {PhoneNumberFilter}
    NextToken: string
    MaxResults: number
    Owner: string
end

local record DescribePhoneNumbersOutput
    PhoneNumbers: {PhoneNumberInformation}
    NextToken: string
end

local record DescribePoolsInput
    PoolIds: {string}
    Filters: {PoolFilter}
    NextToken: string
    MaxResults: number
    Owner: string
end

local record DescribePoolsOutput
    Pools: {PoolInformation}
    NextToken: string
end

local record DescribeProtectConfigurationsInput
    ProtectConfigurationIds: {string}
    Filters: {ProtectConfigurationFilter}
    NextToken: string
    MaxResults: number
end

local record DescribeProtectConfigurationsOutput
    ProtectConfigurations: {ProtectConfigurationInformation}
    NextToken: string
end

local record DescribeRcsAgentCountryLaunchStatusInput
    RcsAgentId: string
    IsoCountryCodes: {string}
    Filters: {CountryLaunchStatusFilter}
    MaxResults: number
    NextToken: string
end

local record DescribeRcsAgentCountryLaunchStatusOutput
    RcsAgentId: string
    RcsAgentArn: string
    CountryLaunchStatus: {CountryLaunchStatusInformation}
    NextToken: string
end

local record DescribeRcsAgentsInput
    RcsAgentIds: {string}
    Owner: string
    Filters: {RcsAgentFilter}
    NextToken: string
    MaxResults: number
end

local record DescribeRcsAgentsOutput
    RcsAgents: {RcsAgentInformation}
    NextToken: string
end

local record DescribeRegistrationAttachmentsInput
    RegistrationAttachmentIds: {string}
    Filters: {RegistrationAttachmentFilter}
    NextToken: string
    MaxResults: number
end

local record DescribeRegistrationAttachmentsOutput
    RegistrationAttachments: {RegistrationAttachmentsInformation}
    NextToken: string
end

local record DescribeRegistrationFieldDefinitionsInput
    RegistrationType: string
    SectionPath: string
    FieldPaths: {string}
    NextToken: string
    MaxResults: number
end

local record DescribeRegistrationFieldDefinitionsOutput
    RegistrationType: string
    RegistrationFieldDefinitions: {RegistrationFieldDefinition}
    NextToken: string
end

local record DescribeRegistrationFieldValuesInput
    RegistrationId: string
    VersionNumber: number
    SectionPath: string
    FieldPaths: {string}
    NextToken: string
    MaxResults: number
end

local record DescribeRegistrationFieldValuesOutput
    RegistrationArn: string
    RegistrationId: string
    VersionNumber: number
    RegistrationFieldValues: {RegistrationFieldValueInformation}
    NextToken: string
end

local record DescribeRegistrationsInput
    RegistrationIds: {string}
    Filters: {RegistrationFilter}
    NextToken: string
    MaxResults: number
end

local record DescribeRegistrationsOutput
    Registrations: {RegistrationInformation}
    NextToken: string
end

local record DescribeRegistrationSectionDefinitionsInput
    RegistrationType: string
    SectionPaths: {string}
    NextToken: string
    MaxResults: number
end

local record DescribeRegistrationSectionDefinitionsOutput
    RegistrationType: string
    RegistrationSectionDefinitions: {RegistrationSectionDefinition}
    NextToken: string
end

local record DescribeRegistrationTypeDefinitionsInput
    RegistrationTypes: {string}
    Filters: {RegistrationTypeFilter}
    NextToken: string
    MaxResults: number
end

local record DescribeRegistrationTypeDefinitionsOutput
    RegistrationTypeDefinitions: {RegistrationTypeDefinition}
    NextToken: string
end

local record DescribeRegistrationVersionsInput
    RegistrationId: string
    VersionNumbers: {number}
    Filters: {RegistrationVersionFilter}
    NextToken: string
    MaxResults: number
end

local record DescribeRegistrationVersionsOutput
    RegistrationArn: string
    RegistrationId: string
    RegistrationVersions: {RegistrationVersionInformation}
    NextToken: string
end

local record DescribeSenderIdsInput
    SenderIds: {SenderIdAndCountry}
    Filters: {SenderIdFilter}
    NextToken: string
    MaxResults: number
    Owner: string
end

local record DescribeSenderIdsOutput
    SenderIds: {SenderIdInformation}
    NextToken: string
end

local record DescribeSpendLimitsInput
    NextToken: string
    MaxResults: number
end

local record DescribeSpendLimitsOutput
    SpendLimits: {SpendLimit}
    NextToken: string
end

local record DescribeVerifiedDestinationNumbersInput
    VerifiedDestinationNumberIds: {string}
    DestinationPhoneNumbers: {string}
    Filters: {VerifiedDestinationNumberFilter}
    NextToken: string
    MaxResults: number
end

local record DescribeVerifiedDestinationNumbersOutput
    VerifiedDestinationNumbers: {VerifiedDestinationNumberInformation}
    NextToken: string
end

local record DisassociateOriginationIdentityInput
    PoolId: string
    OriginationIdentity: string
    IsoCountryCode: string
    ClientToken: string
end

local record DisassociateOriginationIdentityOutput
    PoolArn: string
    PoolId: string
    OriginationIdentityArn: string
    OriginationIdentity: string
    IsoCountryCode: string
end

local record DisassociateProtectConfigurationInput
    ProtectConfigurationId: string
    ConfigurationSetName: string
end

local record DisassociateProtectConfigurationOutput
    ConfigurationSetArn: string
    ConfigurationSetName: string
    ProtectConfigurationArn: string
    ProtectConfigurationId: string
end

local record DiscardRegistrationVersionInput
    RegistrationId: string
end

local record DiscardRegistrationVersionOutput
    RegistrationArn: string
    RegistrationId: string
    VersionNumber: number
    RegistrationVersionStatus: string
    RegistrationVersionStatusHistory: RegistrationVersionStatusHistory
end

local record GetProtectConfigurationCountryRuleSetInput
    ProtectConfigurationId: string
    NumberCapability: string
end

local record GetProtectConfigurationCountryRuleSetOutput
    ProtectConfigurationArn: string
    ProtectConfigurationId: string
    NumberCapability: string
    CountryRuleSet: {string : ProtectConfigurationCountryRuleSetInformation}
end

local record GetResourcePolicyInput
    ResourceArn: string
end

local record GetResourcePolicyOutput
    ResourceArn: string
    Policy: string
    CreatedTimestamp: number
end

local record ListNotifyCountriesInput
    Channels: {string}
    UseCases: {string}
    Tier: string
    NextToken: string
    MaxResults: number
end

local record ListNotifyCountriesOutput
    NotifyCountries: {NotifyCountryInformation}
    NextToken: string
end

local record ListPoolOriginationIdentitiesInput
    PoolId: string
    Filters: {PoolOriginationIdentitiesFilter}
    NextToken: string
    MaxResults: number
end

local record ListPoolOriginationIdentitiesOutput
    PoolArn: string
    PoolId: string
    OriginationIdentities: {OriginationIdentityMetadata}
    NextToken: string
end

local record ListProtectConfigurationRuleSetNumberOverridesInput
    ProtectConfigurationId: string
    Filters: {ProtectConfigurationRuleSetNumberOverrideFilterItem}
    NextToken: string
    MaxResults: number
end

local record ListProtectConfigurationRuleSetNumberOverridesOutput
    ProtectConfigurationArn: string
    ProtectConfigurationId: string
    RuleSetNumberOverrides: {ProtectConfigurationRuleSetNumberOverride}
    NextToken: string
end

local record ListRegistrationAssociationsInput
    RegistrationId: string
    Filters: {RegistrationAssociationFilter}
    NextToken: string
    MaxResults: number
end

local record ListRegistrationAssociationsOutput
    RegistrationArn: string
    RegistrationId: string
    RegistrationType: string
    RegistrationAssociations: {RegistrationAssociationMetadata}
    NextToken: string
end

local record ListTagsForResourceInput
    ResourceArn: string
end

local record ListTagsForResourceOutput
    ResourceArn: string
    Tags: {Tag}
end

local record PutKeywordInput
    OriginationIdentity: string
    Keyword: string
    KeywordMessage: string
    KeywordAction: string
end

local record PutKeywordOutput
    OriginationIdentityArn: string
    OriginationIdentity: string
    Keyword: string
    KeywordMessage: string
    KeywordAction: string
end

local record PutMessageFeedbackInput
    MessageId: string
    MessageFeedbackStatus: string
end

local record PutMessageFeedbackOutput
    MessageId: string
    MessageFeedbackStatus: string
end

local record PutOptedOutNumberInput
    OptOutListName: string
    OptedOutNumber: string
end

local record PutOptedOutNumberOutput
    OptOutListArn: string
    OptOutListName: string
    OptedOutNumber: string
    OptedOutTimestamp: number
    EndUserOptedOut: boolean
end

local record PutProtectConfigurationRuleSetNumberOverrideInput
    ClientToken: string
    ProtectConfigurationId: string
    DestinationPhoneNumber: string
    Action: string
    ExpirationTimestamp: number
end

local record PutProtectConfigurationRuleSetNumberOverrideOutput
    ProtectConfigurationArn: string
    ProtectConfigurationId: string
    DestinationPhoneNumber: string
    CreatedTimestamp: number
    Action: string
    IsoCountryCode: string
    ExpirationTimestamp: number
end

local record PutRegistrationFieldValueInput
    RegistrationId: string
    FieldPath: string
    SelectChoices: {string}
    TextValue: string
    RegistrationAttachmentId: string
end

local record PutRegistrationFieldValueOutput
    RegistrationArn: string
    RegistrationId: string
    VersionNumber: number
    FieldPath: string
    SelectChoices: {string}
    TextValue: string
    RegistrationAttachmentId: string
end

local record PutResourcePolicyInput
    ResourceArn: string
    Policy: string
end

local record PutResourcePolicyOutput
    ResourceArn: string
    Policy: string
    CreatedTimestamp: number
end

local record ReleasePhoneNumberInput
    PhoneNumberId: string
end

local record ReleasePhoneNumberOutput
    PhoneNumberArn: string
    PhoneNumberId: string
    PhoneNumber: string
    Status: string
    IsoCountryCode: string
    MessageType: string
    NumberCapabilities: {string}
    NumberType: string
    MonthlyLeasingPrice: string
    TwoWayEnabled: boolean
    TwoWayChannelArn: string
    TwoWayChannelRole: string
    SelfManagedOptOutsEnabled: boolean
    OptOutListName: string
    RegistrationId: string
    CreatedTimestamp: number
end

local record ReleaseSenderIdInput
    SenderId: string
    IsoCountryCode: string
end

local record ReleaseSenderIdOutput
    SenderIdArn: string
    SenderId: string
    IsoCountryCode: string
    MessageTypes: {string}
    MonthlyLeasingPrice: string
    Registered: boolean
    RegistrationId: string
end

local record RequestPhoneNumberInput
    IsoCountryCode: string
    MessageType: string
    NumberCapabilities: {string}
    NumberType: string
    OptOutListName: string
    PoolId: string
    RegistrationId: string
    InternationalSendingEnabled: boolean
    DeletionProtectionEnabled: boolean
    Tags: {Tag}
    ClientToken: string
end

local record RequestPhoneNumberOutput
    PhoneNumberArn: string
    PhoneNumberId: string
    PhoneNumber: string
    Status: string
    IsoCountryCode: string
    MessageType: string
    NumberCapabilities: {string}
    NumberType: string
    MonthlyLeasingPrice: string
    TwoWayEnabled: boolean
    TwoWayChannelArn: string
    TwoWayChannelRole: string
    SelfManagedOptOutsEnabled: boolean
    OptOutListName: string
    InternationalSendingEnabled: boolean
    DeletionProtectionEnabled: boolean
    PoolId: string
    RegistrationId: string
    Tags: {Tag}
    CreatedTimestamp: number
end

local record RequestSenderIdInput
    SenderId: string
    IsoCountryCode: string
    MessageTypes: {string}
    DeletionProtectionEnabled: boolean
    Tags: {Tag}
    ClientToken: string
end

local record RequestSenderIdOutput
    SenderIdArn: string
    SenderId: string
    IsoCountryCode: string
    MessageTypes: {string}
    MonthlyLeasingPrice: string
    DeletionProtectionEnabled: boolean
    Registered: boolean
    Tags: {Tag}
end

local record SendDestinationNumberVerificationCodeInput
    VerifiedDestinationNumberId: string
    VerificationChannel: string
    LanguageCode: string
    OriginationIdentity: string
    ConfigurationSetName: string
    Context: {string : string}
    DestinationCountryParameters: {string : string}
end

local record SendDestinationNumberVerificationCodeOutput
    MessageId: string
end

local record SendMediaMessageInput
    DestinationPhoneNumber: string
    OriginationIdentity: string
    MessageBody: string
    MediaUrls: {string}
    ConfigurationSetName: string
    MaxPrice: string
    TimeToLive: number
    Context: {string : string}
    DryRun: boolean
    ProtectConfigurationId: string
    MessageFeedbackEnabled: boolean
end

local record SendMediaMessageOutput
    MessageId: string
end

local record SendNotifyTextMessageInput
    NotifyConfigurationId: string
    DestinationPhoneNumber: string
    TemplateId: string
    TemplateVariables: {string : string}
    TimeToLive: number
    Context: {string : string}
    ConfigurationSetName: string
    DryRun: boolean
    MessageFeedbackEnabled: boolean
end

local record SendNotifyTextMessageOutput
    MessageId: string
    TemplateId: string
    ResolvedMessageBody: string
end

local record SendNotifyVoiceMessageInput
    NotifyConfigurationId: string
    DestinationPhoneNumber: string
    TemplateId: string
    TemplateVariables: {string : string}
    VoiceId: string
    TimeToLive: number
    Context: {string : string}
    ConfigurationSetName: string
    DryRun: boolean
    MessageFeedbackEnabled: boolean
end

local record SendNotifyVoiceMessageOutput
    MessageId: string
    TemplateId: string
    ResolvedMessageBody: string
end

local record SendTextMessageInput
    DestinationPhoneNumber: string
    OriginationIdentity: string
    MessageBody: string
    MessageType: string
    Keyword: string
    ConfigurationSetName: string
    MaxPrice: string
    TimeToLive: number
    Context: {string : string}
    DestinationCountryParameters: {string : string}
    DryRun: boolean
    ProtectConfigurationId: string
    MessageFeedbackEnabled: boolean
end

local record SendTextMessageOutput
    MessageId: string
end

local record SendVoiceMessageInput
    DestinationPhoneNumber: string
    OriginationIdentity: string
    MessageBody: string
    MessageBodyTextType: string
    VoiceId: string
    ConfigurationSetName: string
    MaxPricePerMinute: string
    TimeToLive: number
    Context: {string : string}
    DryRun: boolean
    ProtectConfigurationId: string
    MessageFeedbackEnabled: boolean
end

local record SendVoiceMessageOutput
    MessageId: string
end

local record SetAccountDefaultProtectConfigurationInput
    ProtectConfigurationId: string
end

local record SetAccountDefaultProtectConfigurationOutput
    DefaultProtectConfigurationArn: string
    DefaultProtectConfigurationId: string
end

local record SetDefaultMessageFeedbackEnabledInput
    ConfigurationSetName: string
    MessageFeedbackEnabled: boolean
end

local record SetDefaultMessageFeedbackEnabledOutput
    ConfigurationSetArn: string
    ConfigurationSetName: string
    MessageFeedbackEnabled: boolean
end

local record SetDefaultMessageTypeInput
    ConfigurationSetName: string
    MessageType: string
end

local record SetDefaultMessageTypeOutput
    ConfigurationSetArn: string
    ConfigurationSetName: string
    MessageType: string
end

local record SetDefaultSenderIdInput
    ConfigurationSetName: string
    SenderId: string
end

local record SetDefaultSenderIdOutput
    ConfigurationSetArn: string
    ConfigurationSetName: string
    SenderId: string
end

local record SetMediaMessageSpendLimitOverrideInput
    MonthlyLimit: number
end

local record SetMediaMessageSpendLimitOverrideOutput
    MonthlyLimit: number
end

local record SetNotifyMessageSpendLimitOverrideInput
    MonthlyLimit: number
end

local record SetNotifyMessageSpendLimitOverrideOutput
    MonthlyLimit: number
end

local record SetTextMessageSpendLimitOverrideInput
    MonthlyLimit: number
end

local record SetTextMessageSpendLimitOverrideOutput
    MonthlyLimit: number
end

local record SetVoiceMessageSpendLimitOverrideInput
    MonthlyLimit: number
end

local record SetVoiceMessageSpendLimitOverrideOutput
    MonthlyLimit: number
end

local record SubmitRegistrationVersionInput
    RegistrationId: string
    AwsReview: boolean
end

local record SubmitRegistrationVersionOutput
    RegistrationArn: string
    RegistrationId: string
    VersionNumber: number
    RegistrationVersionStatus: string
    RegistrationVersionStatusHistory: RegistrationVersionStatusHistory
    AwsReview: boolean
end

local record TagResourceInput
    ResourceArn: string
    Tags: {Tag}
end

local record TagResourceOutput
end

local record UntagResourceInput
    ResourceArn: string
    TagKeys: {string}
end

local record UntagResourceOutput
end

local record UpdateEventDestinationInput
    ConfigurationSetName: string
    EventDestinationName: string
    Enabled: boolean
    MatchingEventTypes: {string}
    CloudWatchLogsDestination: CloudWatchLogsDestination
    KinesisFirehoseDestination: KinesisFirehoseDestination
    SnsDestination: SnsDestination
end

local record UpdateEventDestinationOutput
    ConfigurationSetArn: string
    ConfigurationSetName: string
    EventDestination: EventDestination
end

local record UpdateNotifyConfigurationInput
    NotifyConfigurationId: string
    DefaultTemplateId: string
    PoolId: string
    EnabledCountries: {string}
    EnabledChannels: {string}
    DeletionProtectionEnabled: boolean
end

local record UpdateNotifyConfigurationOutput
    NotifyConfigurationArn: string
    NotifyConfigurationId: string
    DisplayName: string
    UseCase: string
    DefaultTemplateId: string
    PoolId: string
    EnabledCountries: {string}
    EnabledChannels: {string}
    Tier: string
    TierUpgradeStatus: string
    Status: string
    RejectionReason: string
    DeletionProtectionEnabled: boolean
    CreatedTimestamp: number
end

local record UpdatePhoneNumberInput
    PhoneNumberId: string
    TwoWayEnabled: boolean
    TwoWayChannelArn: string
    TwoWayChannelRole: string
    SelfManagedOptOutsEnabled: boolean
    OptOutListName: string
    InternationalSendingEnabled: boolean
    DeletionProtectionEnabled: boolean
end

local record UpdatePhoneNumberOutput
    PhoneNumberArn: string
    PhoneNumberId: string
    PhoneNumber: string
    Status: string
    IsoCountryCode: string
    MessageType: string
    NumberCapabilities: {string}
    NumberType: string
    MonthlyLeasingPrice: string
    TwoWayEnabled: boolean
    TwoWayChannelArn: string
    TwoWayChannelRole: string
    SelfManagedOptOutsEnabled: boolean
    OptOutListName: string
    InternationalSendingEnabled: boolean
    DeletionProtectionEnabled: boolean
    RegistrationId: string
    CreatedTimestamp: number
end

local record UpdatePoolInput
    PoolId: string
    TwoWayEnabled: boolean
    TwoWayChannelArn: string
    TwoWayChannelRole: string
    SelfManagedOptOutsEnabled: boolean
    OptOutListName: string
    SharedRoutesEnabled: boolean
    DeletionProtectionEnabled: boolean
end

local record UpdatePoolOutput
    PoolArn: string
    PoolId: string
    Status: string
    MessageType: string
    TwoWayEnabled: boolean
    TwoWayChannelArn: string
    TwoWayChannelRole: string
    SelfManagedOptOutsEnabled: boolean
    OptOutListName: string
    SharedRoutesEnabled: boolean
    DeletionProtectionEnabled: boolean
    CreatedTimestamp: number
end

local record UpdateProtectConfigurationInput
    ProtectConfigurationId: string
    DeletionProtectionEnabled: boolean
end

local record UpdateProtectConfigurationOutput
    ProtectConfigurationArn: string
    ProtectConfigurationId: string
    CreatedTimestamp: number
    AccountDefault: boolean
    DeletionProtectionEnabled: boolean
end

local record UpdateProtectConfigurationCountryRuleSetInput
    ProtectConfigurationId: string
    NumberCapability: string
    CountryRuleSetUpdates: {string : ProtectConfigurationCountryRuleSetInformation}
end

local record UpdateProtectConfigurationCountryRuleSetOutput
    ProtectConfigurationArn: string
    ProtectConfigurationId: string
    NumberCapability: string
    CountryRuleSet: {string : ProtectConfigurationCountryRuleSetInformation}
end

local record UpdateRcsAgentInput
    RcsAgentId: string
    DeletionProtectionEnabled: boolean
    OptOutListName: string
    SelfManagedOptOutsEnabled: boolean
    TwoWayChannelArn: string
    TwoWayChannelRole: string
    TwoWayEnabled: boolean
end

local record UpdateRcsAgentOutput
    RcsAgentArn: string
    RcsAgentId: string
    Status: string
    CreatedTimestamp: number
    DeletionProtectionEnabled: boolean
    OptOutListName: string
    SelfManagedOptOutsEnabled: boolean
    TwoWayChannelArn: string
    TwoWayChannelRole: string
    TwoWayEnabled: boolean
end

local record UpdateSenderIdInput
    SenderId: string
    IsoCountryCode: string
    DeletionProtectionEnabled: boolean
end

local record UpdateSenderIdOutput
    SenderIdArn: string
    SenderId: string
    IsoCountryCode: string
    MessageTypes: {string}
    MonthlyLeasingPrice: string
    DeletionProtectionEnabled: boolean
    Registered: boolean
    RegistrationId: string
end

local record VerifyDestinationNumberInput
    VerifiedDestinationNumberId: string
    VerificationCode: string
end

local record VerifyDestinationNumberOutput
    VerifiedDestinationNumberArn: string
    VerifiedDestinationNumberId: string
    DestinationPhoneNumber: string
    Status: string
    CreatedTimestamp: number
end

local record AccessDeniedException
    Message: string
    Reason: string
end

local record ConflictException
    Message: string
    Reason: string
    ResourceType: string
    ResourceId: string
end

local record InternalServerException
    Message: string
    RequestId: string
end

local record ResourceNotFoundException
    Message: string
    ResourceType: string
    ResourceId: string
end

local record ServiceQuotaExceededException
    Message: string
    Reason: string
end

local record ThrottlingException
    Message: string
end

local record ValidationException
    Message: string
    Reason: string
    Fields: {ValidationExceptionField}
end

local record AccessDeniedException
    Message: string
    Reason: string
end

local record ConflictException
    Message: string
    Reason: string
    ResourceType: string
    ResourceId: string
end

local record InternalServerException
    Message: string
    RequestId: string
end

local record ResourceNotFoundException
    Message: string
    ResourceType: string
    ResourceId: string
end

local record ThrottlingException
    Message: string
end

local record ValidationException
    Message: string
    Reason: string
    Fields: {ValidationExceptionField}
end

local record AccessDeniedException
    Message: string
    Reason: string
end

local record InternalServerException
    Message: string
    RequestId: string
end

local record ServiceQuotaExceededException
    Message: string
    Reason: string
end

local record ThrottlingException
    Message: string
end

local record ValidationException
    Message: string
    Reason: string
    Fields: {ValidationExceptionField}
end

local record AccessDeniedException
    Message: string
    Reason: string
end

local record ConflictException
    Message: string
    Reason: string
    ResourceType: string
    ResourceId: string
end

local record InternalServerException
    Message: string
    RequestId: string
end

local record ServiceQuotaExceededException
    Message: string
    Reason: string
end

local record ThrottlingException
    Message: string
end

local record ValidationException
    Message: string
    Reason: string
    Fields: {ValidationExceptionField}
end

local record AccessDeniedException
    Message: string
    Reason: string
end

local record ConflictException
    Message: string
    Reason: string
    ResourceType: string
    ResourceId: string
end

local record InternalServerException
    Message: string
    RequestId: string
end

local record ResourceNotFoundException
    Message: string
    ResourceType: string
    ResourceId: string
end

local record ServiceQuotaExceededException
    Message: string
    Reason: string
end

local record ThrottlingException
    Message: string
end

local record ValidationException
    Message: string
    Reason: string
    Fields: {ValidationExceptionField}
end

local record AccessDeniedException
    Message: string
    Reason: string
end

local record ConflictException
    Message: string
    Reason: string
    ResourceType: string
    ResourceId: string
end

local record InternalServerException
    Message: string
    RequestId: string
end

local record ResourceNotFoundException
    Message: string
    ResourceType: string
    ResourceId: string
end

local record ServiceQuotaExceededException
    Message: string
    Reason: string
end

local record ThrottlingException
    Message: string
end

local record ValidationException
    Message: string
    Reason: string
    Fields: {ValidationExceptionField}
end

local record AccessDeniedException
    Message: string
    Reason: string
end

local record ConflictException
    Message: string
    Reason: string
    ResourceType: string
    ResourceId: string
end

local record InternalServerException
    Message: string
    RequestId: string
end

local record ServiceQuotaExceededException
    Message: string
    Reason: string
end

local record ThrottlingException
    Message: string
end

local record ValidationException
    Message: string
    Reason: string
    Fields: {ValidationExceptionField}
end

local record AccessDeniedException
    Message: string
    Reason: string
end

local record ConflictException
    Message: string
    Reason: string
    ResourceType: string
    ResourceId: string
end

local record InternalServerException
    Message: string
    RequestId: string
end

local record ResourceNotFoundException
    Message: string
    ResourceType: string
    ResourceId: string
end

local record ServiceQuotaExceededException
    Message: string
    Reason: string
end

local record ThrottlingException
    Message: string
end

local record ValidationException
    Message: string
    Reason: string
    Fields: {ValidationExceptionField}
end

local record AccessDeniedException
    Message: string
    Reason: string
end

local record ConflictException
    Message: string
    Reason: string
    ResourceType: string
    ResourceId: string
end

local record InternalServerException
    Message: string
    RequestId: string
end

local record ServiceQuotaExceededException
    Message: string
    Reason: string
end

local record ThrottlingException
    Message: string
end

local record ValidationException
    Message: string
    Reason: string
    Fields: {ValidationExceptionField}
end

local record AccessDeniedException
    Message: string
    Reason: string
end

local record ConflictException
    Message: string
    Reason: string
    ResourceType: string
    ResourceId: string
end

local record InternalServerException
    Message: string
    RequestId: string
end

local record ResourceNotFoundException
    Message: string
    ResourceType: string
    ResourceId: string
end

local record ServiceQuotaExceededException
    Message: string
    Reason: string
end

local record ThrottlingException
    Message: string
end

local record ValidationException
    Message: string
    Reason: string
    Fields: {ValidationExceptionField}
end

local record AccessDeniedException
    Message: string
    Reason: string
end

local record ConflictException
    Message: string
    Reason: string
    ResourceType: string
    ResourceId: string
end

local record InternalServerException
    Message: string
    RequestId: string
end

local record ServiceQuotaExceededException
    Message: string
    Reason: string
end

local record ThrottlingException
    Message: string
end

local record ValidationException
    Message: string
    Reason: string
    Fields: {ValidationExceptionField}
end

local record AccessDeniedException
    Message: string
    Reason: string
end

local record ConflictException
    Message: string
    Reason: string
    ResourceType: string
    ResourceId: string
end

local record InternalServerException
    Message: string
    RequestId: string
end

local record ResourceNotFoundException
    Message: string
    ResourceType: string
    ResourceId: string
end

local record ServiceQuotaExceededException
    Message: string
    Reason: string
end

local record ThrottlingException
    Message: string
end

local record ValidationException
    Message: string
    Reason: string
    Fields: {ValidationExceptionField}
end

local record AccessDeniedException
    Message: string
    Reason: string
end

local record ConflictException
    Message: string
    Reason: string
    ResourceType: string
    ResourceId: string
end

local record InternalServerException
    Message: string
    RequestId: string
end

local record ServiceQuotaExceededException
    Message: string
    Reason: string
end

local record ThrottlingException
    Message: string
end

local record ValidationException
    Message: string
    Reason: string
    Fields: {ValidationExceptionField}
end

local record AccessDeniedException
    Message: string
    Reason: string
end

local record ConflictException
    Message: string
    Reason: string
    ResourceType: string
    ResourceId: string
end

local record InternalServerException
    Message: string
    RequestId: string
end

local record ResourceNotFoundException
    Message: string
    ResourceType: string
    ResourceId: string
end

local record ServiceQuotaExceededException
    Message: string
    Reason: string
end

local record ThrottlingException
    Message: string
end

local record ValidationException
    Message: string
    Reason: string
    Fields: {ValidationExceptionField}
end

local record AccessDeniedException
    Message: string
    Reason: string
end

local record ConflictException
    Message: string
    Reason: string
    ResourceType: string
    ResourceId: string
end

local record InternalServerException
    Message: string
    RequestId: string
end

local record ResourceNotFoundException
    Message: string
    ResourceType: string
    ResourceId: string
end

local record ServiceQuotaExceededException
    Message: string
    Reason: string
end

local record ThrottlingException
    Message: string
end

local record ValidationException
    Message: string
    Reason: string
    Fields: {ValidationExceptionField}
end

local record AccessDeniedException
    Message: string
    Reason: string
end

local record InternalServerException
    Message: string
    RequestId: string
end

local record ResourceNotFoundException
    Message: string
    ResourceType: string
    ResourceId: string
end

local record ThrottlingException
    Message: string
end

local record ValidationException
    Message: string
    Reason: string
    Fields: {ValidationExceptionField}
end

local record AccessDeniedException
    Message: string
    Reason: string
end

local record InternalServerException
    Message: string
    RequestId: string
end

local record ResourceNotFoundException
    Message: string
    ResourceType: string
    ResourceId: string
end

local record ThrottlingException
    Message: string
end

local record ValidationException
    Message: string
    Reason: string
    Fields: {ValidationExceptionField}
end

local record AccessDeniedException
    Message: string
    Reason: string
end

local record InternalServerException
    Message: string
    RequestId: string
end

local record ResourceNotFoundException
    Message: string
    ResourceType: string
    ResourceId: string
end

local record ThrottlingException
    Message: string
end

local record ValidationException
    Message: string
    Reason: string
    Fields: {ValidationExceptionField}
end

local record AccessDeniedException
    Message: string
    Reason: string
end

local record InternalServerException
    Message: string
    RequestId: string
end

local record ResourceNotFoundException
    Message: string
    ResourceType: string
    ResourceId: string
end

local record ThrottlingException
    Message: string
end

local record ValidationException
    Message: string
    Reason: string
    Fields: {ValidationExceptionField}
end

local record AccessDeniedException
    Message: string
    Reason: string
end

local record InternalServerException
    Message: string
    RequestId: string
end

local record ResourceNotFoundException
    Message: string
    ResourceType: string
    ResourceId: string
end

local record ThrottlingException
    Message: string
end

local record ValidationException
    Message: string
    Reason: string
    Fields: {ValidationExceptionField}
end

local record AccessDeniedException
    Message: string
    Reason: string
end

local record ConflictException
    Message: string
    Reason: string
    ResourceType: string
    ResourceId: string
end

local record InternalServerException
    Message: string
    RequestId: string
end

local record ResourceNotFoundException
    Message: string
    ResourceType: string
    ResourceId: string
end

local record ThrottlingException
    Message: string
end

local record ValidationException
    Message: string
    Reason: string
    Fields: {ValidationExceptionField}
end

local record AccessDeniedException
    Message: string
    Reason: string
end

local record InternalServerException
    Message: string
    RequestId: string
end

local record ThrottlingException
    Message: string
end

local record ValidationException
    Message: string
    Reason: string
    Fields: {ValidationExceptionField}
end

local record AccessDeniedException
    Message: string
    Reason: string
end

local record ConflictException
    Message: string
    Reason: string
    ResourceType: string
    ResourceId: string
end

local record InternalServerException
    Message: string
    RequestId: string
end

local record ResourceNotFoundException
    Message: string
    ResourceType: string
    ResourceId: string
end

local record ThrottlingException
    Message: string
end

local record ValidationException
    Message: string
    Reason: string
    Fields: {ValidationExceptionField}
end

local record AccessDeniedException
    Message: string
    Reason: string
end

local record InternalServerException
    Message: string
    RequestId: string
end

local record ThrottlingException
    Message: string
end

local record ValidationException
    Message: string
    Reason: string
    Fields: {ValidationExceptionField}
end

local record AccessDeniedException
    Message: string
    Reason: string
end

local record ConflictException
    Message: string
    Reason: string
    ResourceType: string
    ResourceId: string
end

local record InternalServerException
    Message: string
    RequestId: string
end

local record ResourceNotFoundException
    Message: string
    ResourceType: string
    ResourceId: string
end

local record ThrottlingException
    Message: string
end

local record ValidationException
    Message: string
    Reason: string
    Fields: {ValidationExceptionField}
end

local record AccessDeniedException
    Message: string
    Reason: string
end

local record ConflictException
    Message: string
    Reason: string
    ResourceType: string
    ResourceId: string
end

local record InternalServerException
    Message: string
    RequestId: string
end

local record ResourceNotFoundException
    Message: string
    ResourceType: string
    ResourceId: string
end

local record ThrottlingException
    Message: string
end

local record ValidationException
    Message: string
    Reason: string
    Fields: {ValidationExceptionField}
end

local record AccessDeniedException
    Message: string
    Reason: string
end

local record ConflictException
    Message: string
    Reason: string
    ResourceType: string
    ResourceId: string
end

local record InternalServerException
    Message: string
    RequestId: string
end

local record ResourceNotFoundException
    Message: string
    ResourceType: string
    ResourceId: string
end

local record ThrottlingException
    Message: string
end

local record ValidationException
    Message: string
    Reason: string
    Fields: {ValidationExceptionField}
end

local record AccessDeniedException
    Message: string
    Reason: string
end

local record ConflictException
    Message: string
    Reason: string
    ResourceType: string
    ResourceId: string
end

local record InternalServerException
    Message: string
    RequestId: string
end

local record ResourceNotFoundException
    Message: string
    ResourceType: string
    ResourceId: string
end

local record ThrottlingException
    Message: string
end

local record ValidationException
    Message: string
    Reason: string
    Fields: {ValidationExceptionField}
end

local record AccessDeniedException
    Message: string
    Reason: string
end

local record InternalServerException
    Message: string
    RequestId: string
end

local record ResourceNotFoundException
    Message: string
    ResourceType: string
    ResourceId: string
end

local record ThrottlingException
    Message: string
end

local record ValidationException
    Message: string
    Reason: string
    Fields: {ValidationExceptionField}
end

local record AccessDeniedException
    Message: string
    Reason: string
end

local record ConflictException
    Message: string
    Reason: string
    ResourceType: string
    ResourceId: string
end

local record InternalServerException
    Message: string
    RequestId: string
end

local record ResourceNotFoundException
    Message: string
    ResourceType: string
    ResourceId: string
end

local record ThrottlingException
    Message: string
end

local record ValidationException
    Message: string
    Reason: string
    Fields: {ValidationExceptionField}
end

local record AccessDeniedException
    Message: string
    Reason: string
end

local record ConflictException
    Message: string
    Reason: string
    ResourceType: string
    ResourceId: string
end

local record InternalServerException
    Message: string
    RequestId: string
end

local record ResourceNotFoundException
    Message: string
    ResourceType: string
    ResourceId: string
end

local record ThrottlingException
    Message: string
end

local record ValidationException
    Message: string
    Reason: string
    Fields: {ValidationExceptionField}
end

local record AccessDeniedException
    Message: string
    Reason: string
end

local record ConflictException
    Message: string
    Reason: string
    ResourceType: string
    ResourceId: string
end

local record InternalServerException
    Message: string
    RequestId: string
end

local record ResourceNotFoundException
    Message: string
    ResourceType: string
    ResourceId: string
end

local record ThrottlingException
    Message: string
end

local record ValidationException
    Message: string
    Reason: string
    Fields: {ValidationExceptionField}
end

local record AccessDeniedException
    Message: string
    Reason: string
end

local record ConflictException
    Message: string
    Reason: string
    ResourceType: string
    ResourceId: string
end

local record InternalServerException
    Message: string
    RequestId: string
end

local record ResourceNotFoundException
    Message: string
    ResourceType: string
    ResourceId: string
end

local record ThrottlingException
    Message: string
end

local record ValidationException
    Message: string
    Reason: string
    Fields: {ValidationExceptionField}
end

local record AccessDeniedException
    Message: string
    Reason: string
end

local record InternalServerException
    Message: string
    RequestId: string
end

local record ResourceNotFoundException
    Message: string
    ResourceType: string
    ResourceId: string
end

local record ThrottlingException
    Message: string
end

local record ValidationException
    Message: string
    Reason: string
    Fields: {ValidationExceptionField}
end

local record AccessDeniedException
    Message: string
    Reason: string
end

local record InternalServerException
    Message: string
    RequestId: string
end

local record ThrottlingException
    Message: string
end

local record ValidationException
    Message: string
    Reason: string
    Fields: {ValidationExceptionField}
end

local record AccessDeniedException
    Message: string
    Reason: string
end

local record ConflictException
    Message: string
    Reason: string
    ResourceType: string
    ResourceId: string
end

local record InternalServerException
    Message: string
    RequestId: string
end

local record ResourceNotFoundException
    Message: string
    ResourceType: string
    ResourceId: string
end

local record ThrottlingException
    Message: string
end

local record ValidationException
    Message: string
    Reason: string
    Fields: {ValidationExceptionField}
end

local record AccessDeniedException
    Message: string
    Reason: string
end

local record InternalServerException
    Message: string
    RequestId: string
end

local record ThrottlingException
    Message: string
end

local record ValidationException
    Message: string
    Reason: string
    Fields: {ValidationExceptionField}
end

local record AccessDeniedException
    Message: string
    Reason: string
end

local record InternalServerException
    Message: string
    RequestId: string
end

local record ThrottlingException
    Message: string
end

local record ValidationException
    Message: string
    Reason: string
    Fields: {ValidationExceptionField}
end

local record AccessDeniedException
    Message: string
    Reason: string
end

local record InternalServerException
    Message: string
    RequestId: string
end

local record ThrottlingException
    Message: string
end

local record ValidationException
    Message: string
    Reason: string
    Fields: {ValidationExceptionField}
end

local record AccessDeniedException
    Message: string
    Reason: string
end

local record InternalServerException
    Message: string
    RequestId: string
end

local record ResourceNotFoundException
    Message: string
    ResourceType: string
    ResourceId: string
end

local record ThrottlingException
    Message: string
end

local record ValidationException
    Message: string
    Reason: string
    Fields: {ValidationExceptionField}
end

local record AccessDeniedException
    Message: string
    Reason: string
end

local record InternalServerException
    Message: string
    RequestId: string
end

local record ResourceNotFoundException
    Message: string
    ResourceType: string
    ResourceId: string
end

local record ThrottlingException
    Message: string
end

local record ValidationException
    Message: string
    Reason: string
    Fields: {ValidationExceptionField}
end

local record AccessDeniedException
    Message: string
    Reason: string
end

local record InternalServerException
    Message: string
    RequestId: string
end

local record ResourceNotFoundException
    Message: string
    ResourceType: string
    ResourceId: string
end

local record ThrottlingException
    Message: string
end

local record ValidationException
    Message: string
    Reason: string
    Fields: {ValidationExceptionField}
end

local record AccessDeniedException
    Message: string
    Reason: string
end

local record InternalServerException
    Message: string
    RequestId: string
end

local record ResourceNotFoundException
    Message: string
    ResourceType: string
    ResourceId: string
end

local record ThrottlingException
    Message: string
end

local record ValidationException
    Message: string
    Reason: string
    Fields: {ValidationExceptionField}
end

local record AccessDeniedException
    Message: string
    Reason: string
end

local record InternalServerException
    Message: string
    RequestId: string
end

local record ResourceNotFoundException
    Message: string
    ResourceType: string
    ResourceId: string
end

local record ThrottlingException
    Message: string
end

local record ValidationException
    Message: string
    Reason: string
    Fields: {ValidationExceptionField}
end

local record AccessDeniedException
    Message: string
    Reason: string
end

local record InternalServerException
    Message: string
    RequestId: string
end

local record ResourceNotFoundException
    Message: string
    ResourceType: string
    ResourceId: string
end

local record ThrottlingException
    Message: string
end

local record ValidationException
    Message: string
    Reason: string
    Fields: {ValidationExceptionField}
end

local record AccessDeniedException
    Message: string
    Reason: string
end

local record InternalServerException
    Message: string
    RequestId: string
end

local record ResourceNotFoundException
    Message: string
    ResourceType: string
    ResourceId: string
end

local record ThrottlingException
    Message: string
end

local record ValidationException
    Message: string
    Reason: string
    Fields: {ValidationExceptionField}
end

local record AccessDeniedException
    Message: string
    Reason: string
end

local record InternalServerException
    Message: string
    RequestId: string
end

local record ResourceNotFoundException
    Message: string
    ResourceType: string
    ResourceId: string
end

local record ThrottlingException
    Message: string
end

local record ValidationException
    Message: string
    Reason: string
    Fields: {ValidationExceptionField}
end

local record AccessDeniedException
    Message: string
    Reason: string
end

local record InternalServerException
    Message: string
    RequestId: string
end

local record ResourceNotFoundException
    Message: string
    ResourceType: string
    ResourceId: string
end

local record ThrottlingException
    Message: string
end

local record ValidationException
    Message: string
    Reason: string
    Fields: {ValidationExceptionField}
end

local record AccessDeniedException
    Message: string
    Reason: string
end

local record InternalServerException
    Message: string
    RequestId: string
end

local record ResourceNotFoundException
    Message: string
    ResourceType: string
    ResourceId: string
end

local record ThrottlingException
    Message: string
end

local record ValidationException
    Message: string
    Reason: string
    Fields: {ValidationExceptionField}
end

local record AccessDeniedException
    Message: string
    Reason: string
end

local record InternalServerException
    Message: string
    RequestId: string
end

local record ResourceNotFoundException
    Message: string
    ResourceType: string
    ResourceId: string
end

local record ThrottlingException
    Message: string
end

local record ValidationException
    Message: string
    Reason: string
    Fields: {ValidationExceptionField}
end

local record AccessDeniedException
    Message: string
    Reason: string
end

local record InternalServerException
    Message: string
    RequestId: string
end

local record ResourceNotFoundException
    Message: string
    ResourceType: string
    ResourceId: string
end

local record ThrottlingException
    Message: string
end

local record ValidationException
    Message: string
    Reason: string
    Fields: {ValidationExceptionField}
end

local record AccessDeniedException
    Message: string
    Reason: string
end

local record InternalServerException
    Message: string
    RequestId: string
end

local record ThrottlingException
    Message: string
end

local record ValidationException
    Message: string
    Reason: string
    Fields: {ValidationExceptionField}
end

local record AccessDeniedException
    Message: string
    Reason: string
end

local record InternalServerException
    Message: string
    RequestId: string
end

local record ResourceNotFoundException
    Message: string
    ResourceType: string
    ResourceId: string
end

local record ThrottlingException
    Message: string
end

local record ValidationException
    Message: string
    Reason: string
    Fields: {ValidationExceptionField}
end

local record AccessDeniedException
    Message: string
    Reason: string
end

local record InternalServerException
    Message: string
    RequestId: string
end

local record ResourceNotFoundException
    Message: string
    ResourceType: string
    ResourceId: string
end

local record ThrottlingException
    Message: string
end

local record ValidationException
    Message: string
    Reason: string
    Fields: {ValidationExceptionField}
end

local record AccessDeniedException
    Message: string
    Reason: string
end

local record InternalServerException
    Message: string
    RequestId: string
end

local record ThrottlingException
    Message: string
end

local record ValidationException
    Message: string
    Reason: string
    Fields: {ValidationExceptionField}
end

local record AccessDeniedException
    Message: string
    Reason: string
end

local record InternalServerException
    Message: string
    RequestId: string
end

local record ThrottlingException
    Message: string
end

local record ValidationException
    Message: string
    Reason: string
    Fields: {ValidationExceptionField}
end

local record AccessDeniedException
    Message: string
    Reason: string
end

local record InternalServerException
    Message: string
    RequestId: string
end

local record ResourceNotFoundException
    Message: string
    ResourceType: string
    ResourceId: string
end

local record ThrottlingException
    Message: string
end

local record ValidationException
    Message: string
    Reason: string
    Fields: {ValidationExceptionField}
end

local record AccessDeniedException
    Message: string
    Reason: string
end

local record InternalServerException
    Message: string
    RequestId: string
end

local record ResourceNotFoundException
    Message: string
    ResourceType: string
    ResourceId: string
end

local record ThrottlingException
    Message: string
end

local record ValidationException
    Message: string
    Reason: string
    Fields: {ValidationExceptionField}
end

local record AccessDeniedException
    Message: string
    Reason: string
end

local record InternalServerException
    Message: string
    RequestId: string
end

local record ThrottlingException
    Message: string
end

local record ValidationException
    Message: string
    Reason: string
    Fields: {ValidationExceptionField}
end

local record AccessDeniedException
    Message: string
    Reason: string
end

local record InternalServerException
    Message: string
    RequestId: string
end

local record ResourceNotFoundException
    Message: string
    ResourceType: string
    ResourceId: string
end

local record ThrottlingException
    Message: string
end

local record ValidationException
    Message: string
    Reason: string
    Fields: {ValidationExceptionField}
end

local record AccessDeniedException
    Message: string
    Reason: string
end

local record ConflictException
    Message: string
    Reason: string
    ResourceType: string
    ResourceId: string
end

local record InternalServerException
    Message: string
    RequestId: string
end

local record ResourceNotFoundException
    Message: string
    ResourceType: string
    ResourceId: string
end

local record ThrottlingException
    Message: string
end

local record ValidationException
    Message: string
    Reason: string
    Fields: {ValidationExceptionField}
end

local record AccessDeniedException
    Message: string
    Reason: string
end

local record ConflictException
    Message: string
    Reason: string
    ResourceType: string
    ResourceId: string
end

local record InternalServerException
    Message: string
    RequestId: string
end

local record ResourceNotFoundException
    Message: string
    ResourceType: string
    ResourceId: string
end

local record ThrottlingException
    Message: string
end

local record ValidationException
    Message: string
    Reason: string
    Fields: {ValidationExceptionField}
end

local record AccessDeniedException
    Message: string
    Reason: string
end

local record ConflictException
    Message: string
    Reason: string
    ResourceType: string
    ResourceId: string
end

local record InternalServerException
    Message: string
    RequestId: string
end

local record ResourceNotFoundException
    Message: string
    ResourceType: string
    ResourceId: string
end

local record ThrottlingException
    Message: string
end

local record ValidationException
    Message: string
    Reason: string
    Fields: {ValidationExceptionField}
end

local record AccessDeniedException
    Message: string
    Reason: string
end

local record InternalServerException
    Message: string
    RequestId: string
end

local record ResourceNotFoundException
    Message: string
    ResourceType: string
    ResourceId: string
end

local record ThrottlingException
    Message: string
end

local record ValidationException
    Message: string
    Reason: string
    Fields: {ValidationExceptionField}
end

local record AccessDeniedException
    Message: string
    Reason: string
end

local record InternalServerException
    Message: string
    RequestId: string
end

local record ResourceNotFoundException
    Message: string
    ResourceType: string
    ResourceId: string
end

local record ThrottlingException
    Message: string
end

local record ValidationException
    Message: string
    Reason: string
    Fields: {ValidationExceptionField}
end

local record AccessDeniedException
    Message: string
    Reason: string
end

local record InternalServerException
    Message: string
    RequestId: string
end

local record ThrottlingException
    Message: string
end

local record ValidationException
    Message: string
    Reason: string
    Fields: {ValidationExceptionField}
end

local record AccessDeniedException
    Message: string
    Reason: string
end

local record InternalServerException
    Message: string
    RequestId: string
end

local record ResourceNotFoundException
    Message: string
    ResourceType: string
    ResourceId: string
end

local record ThrottlingException
    Message: string
end

local record ValidationException
    Message: string
    Reason: string
    Fields: {ValidationExceptionField}
end

local record AccessDeniedException
    Message: string
    Reason: string
end

local record InternalServerException
    Message: string
    RequestId: string
end

local record ResourceNotFoundException
    Message: string
    ResourceType: string
    ResourceId: string
end

local record ThrottlingException
    Message: string
end

local record ValidationException
    Message: string
    Reason: string
    Fields: {ValidationExceptionField}
end

local record AccessDeniedException
    Message: string
    Reason: string
end

local record InternalServerException
    Message: string
    RequestId: string
end

local record ResourceNotFoundException
    Message: string
    ResourceType: string
    ResourceId: string
end

local record ThrottlingException
    Message: string
end

local record ValidationException
    Message: string
    Reason: string
    Fields: {ValidationExceptionField}
end

local record AccessDeniedException
    Message: string
    Reason: string
end

local record InternalServerException
    Message: string
    RequestId: string
end

local record ResourceNotFoundException
    Message: string
    ResourceType: string
    ResourceId: string
end

local record ThrottlingException
    Message: string
end

local record ValidationException
    Message: string
    Reason: string
    Fields: {ValidationExceptionField}
end

local record AccessDeniedException
    Message: string
    Reason: string
end

local record ConflictException
    Message: string
    Reason: string
    ResourceType: string
    ResourceId: string
end

local record InternalServerException
    Message: string
    RequestId: string
end

local record ResourceNotFoundException
    Message: string
    ResourceType: string
    ResourceId: string
end

local record ServiceQuotaExceededException
    Message: string
    Reason: string
end

local record ThrottlingException
    Message: string
end

local record ValidationException
    Message: string
    Reason: string
    Fields: {ValidationExceptionField}
end

local record AccessDeniedException
    Message: string
    Reason: string
end

local record InternalServerException
    Message: string
    RequestId: string
end

local record ResourceNotFoundException
    Message: string
    ResourceType: string
    ResourceId: string
end

local record ThrottlingException
    Message: string
end

local record ValidationException
    Message: string
    Reason: string
    Fields: {ValidationExceptionField}
end

local record AccessDeniedException
    Message: string
    Reason: string
end

local record InternalServerException
    Message: string
    RequestId: string
end

local record ResourceNotFoundException
    Message: string
    ResourceType: string
    ResourceId: string
end

local record ThrottlingException
    Message: string
end

local record ValidationException
    Message: string
    Reason: string
    Fields: {ValidationExceptionField}
end

local record AccessDeniedException
    Message: string
    Reason: string
end

local record ConflictException
    Message: string
    Reason: string
    ResourceType: string
    ResourceId: string
end

local record InternalServerException
    Message: string
    RequestId: string
end

local record ResourceNotFoundException
    Message: string
    ResourceType: string
    ResourceId: string
end

local record ServiceQuotaExceededException
    Message: string
    Reason: string
end

local record ThrottlingException
    Message: string
end

local record ValidationException
    Message: string
    Reason: string
    Fields: {ValidationExceptionField}
end

local record AccessDeniedException
    Message: string
    Reason: string
end

local record ConflictException
    Message: string
    Reason: string
    ResourceType: string
    ResourceId: string
end

local record InternalServerException
    Message: string
    RequestId: string
end

local record ResourceNotFoundException
    Message: string
    ResourceType: string
    ResourceId: string
end

local record ThrottlingException
    Message: string
end

local record ValidationException
    Message: string
    Reason: string
    Fields: {ValidationExceptionField}
end

local record AccessDeniedException
    Message: string
    Reason: string
end

local record InternalServerException
    Message: string
    RequestId: string
end

local record ResourceNotFoundException
    Message: string
    ResourceType: string
    ResourceId: string
end

local record ThrottlingException
    Message: string
end

local record ValidationException
    Message: string
    Reason: string
    Fields: {ValidationExceptionField}
end

local record AccessDeniedException
    Message: string
    Reason: string
end

local record ConflictException
    Message: string
    Reason: string
    ResourceType: string
    ResourceId: string
end

local record InternalServerException
    Message: string
    RequestId: string
end

local record ResourceNotFoundException
    Message: string
    ResourceType: string
    ResourceId: string
end

local record ThrottlingException
    Message: string
end

local record ValidationException
    Message: string
    Reason: string
    Fields: {ValidationExceptionField}
end

local record AccessDeniedException
    Message: string
    Reason: string
end

local record ConflictException
    Message: string
    Reason: string
    ResourceType: string
    ResourceId: string
end

local record InternalServerException
    Message: string
    RequestId: string
end

local record ResourceNotFoundException
    Message: string
    ResourceType: string
    ResourceId: string
end

local record ThrottlingException
    Message: string
end

local record ValidationException
    Message: string
    Reason: string
    Fields: {ValidationExceptionField}
end

local record AccessDeniedException
    Message: string
    Reason: string
end

local record ConflictException
    Message: string
    Reason: string
    ResourceType: string
    ResourceId: string
end

local record InternalServerException
    Message: string
    RequestId: string
end

local record ResourceNotFoundException
    Message: string
    ResourceType: string
    ResourceId: string
end

local record ServiceQuotaExceededException
    Message: string
    Reason: string
end

local record ThrottlingException
    Message: string
end

local record ValidationException
    Message: string
    Reason: string
    Fields: {ValidationExceptionField}
end

local record AccessDeniedException
    Message: string
    Reason: string
end

local record ConflictException
    Message: string
    Reason: string
    ResourceType: string
    ResourceId: string
end

local record InternalServerException
    Message: string
    RequestId: string
end

local record ServiceQuotaExceededException
    Message: string
    Reason: string
end

local record ThrottlingException
    Message: string
end

local record ValidationException
    Message: string
    Reason: string
    Fields: {ValidationExceptionField}
end

local record AccessDeniedException
    Message: string
    Reason: string
end

local record ConflictException
    Message: string
    Reason: string
    ResourceType: string
    ResourceId: string
end

local record InternalServerException
    Message: string
    RequestId: string
end

local record ResourceNotFoundException
    Message: string
    ResourceType: string
    ResourceId: string
end

local record ServiceQuotaExceededException
    Message: string
    Reason: string
end

local record ThrottlingException
    Message: string
end

local record ValidationException
    Message: string
    Reason: string
    Fields: {ValidationExceptionField}
end

local record AccessDeniedException
    Message: string
    Reason: string
end

local record ConflictException
    Message: string
    Reason: string
    ResourceType: string
    ResourceId: string
end

local record InternalServerException
    Message: string
    RequestId: string
end

local record ResourceNotFoundException
    Message: string
    ResourceType: string
    ResourceId: string
end

local record ServiceQuotaExceededException
    Message: string
    Reason: string
end

local record ThrottlingException
    Message: string
end

local record ValidationException
    Message: string
    Reason: string
    Fields: {ValidationExceptionField}
end

local record AccessDeniedException
    Message: string
    Reason: string
end

local record ConflictException
    Message: string
    Reason: string
    ResourceType: string
    ResourceId: string
end

local record InternalServerException
    Message: string
    RequestId: string
end

local record ResourceNotFoundException
    Message: string
    ResourceType: string
    ResourceId: string
end

local record ServiceQuotaExceededException
    Message: string
    Reason: string
end

local record ThrottlingException
    Message: string
end

local record ValidationException
    Message: string
    Reason: string
    Fields: {ValidationExceptionField}
end

local record AccessDeniedException
    Message: string
    Reason: string
end

local record ConflictException
    Message: string
    Reason: string
    ResourceType: string
    ResourceId: string
end

local record InternalServerException
    Message: string
    RequestId: string
end

local record ResourceNotFoundException
    Message: string
    ResourceType: string
    ResourceId: string
end

local record ServiceQuotaExceededException
    Message: string
    Reason: string
end

local record ThrottlingException
    Message: string
end

local record ValidationException
    Message: string
    Reason: string
    Fields: {ValidationExceptionField}
end

local record AccessDeniedException
    Message: string
    Reason: string
end

local record ConflictException
    Message: string
    Reason: string
    ResourceType: string
    ResourceId: string
end

local record InternalServerException
    Message: string
    RequestId: string
end

local record ResourceNotFoundException
    Message: string
    ResourceType: string
    ResourceId: string
end

local record ServiceQuotaExceededException
    Message: string
    Reason: string
end

local record ThrottlingException
    Message: string
end

local record ValidationException
    Message: string
    Reason: string
    Fields: {ValidationExceptionField}
end

local record AccessDeniedException
    Message: string
    Reason: string
end

local record ConflictException
    Message: string
    Reason: string
    ResourceType: string
    ResourceId: string
end

local record InternalServerException
    Message: string
    RequestId: string
end

local record ResourceNotFoundException
    Message: string
    ResourceType: string
    ResourceId: string
end

local record ServiceQuotaExceededException
    Message: string
    Reason: string
end

local record ThrottlingException
    Message: string
end

local record ValidationException
    Message: string
    Reason: string
    Fields: {ValidationExceptionField}
end

local record AccessDeniedException
    Message: string
    Reason: string
end

local record InternalServerException
    Message: string
    RequestId: string
end

local record ResourceNotFoundException
    Message: string
    ResourceType: string
    ResourceId: string
end

local record ThrottlingException
    Message: string
end

local record ValidationException
    Message: string
    Reason: string
    Fields: {ValidationExceptionField}
end

local record AccessDeniedException
    Message: string
    Reason: string
end

local record InternalServerException
    Message: string
    RequestId: string
end

local record ResourceNotFoundException
    Message: string
    ResourceType: string
    ResourceId: string
end

local record ThrottlingException
    Message: string
end

local record ValidationException
    Message: string
    Reason: string
    Fields: {ValidationExceptionField}
end

local record AccessDeniedException
    Message: string
    Reason: string
end

local record InternalServerException
    Message: string
    RequestId: string
end

local record ResourceNotFoundException
    Message: string
    ResourceType: string
    ResourceId: string
end

local record ThrottlingException
    Message: string
end

local record ValidationException
    Message: string
    Reason: string
    Fields: {ValidationExceptionField}
end

local record AccessDeniedException
    Message: string
    Reason: string
end

local record InternalServerException
    Message: string
    RequestId: string
end

local record ResourceNotFoundException
    Message: string
    ResourceType: string
    ResourceId: string
end

local record ThrottlingException
    Message: string
end

local record ValidationException
    Message: string
    Reason: string
    Fields: {ValidationExceptionField}
end

local record AccessDeniedException
    Message: string
    Reason: string
end

local record InternalServerException
    Message: string
    RequestId: string
end

local record ThrottlingException
    Message: string
end

local record ValidationException
    Message: string
    Reason: string
    Fields: {ValidationExceptionField}
end

local record AccessDeniedException
    Message: string
    Reason: string
end

local record InternalServerException
    Message: string
    RequestId: string
end

local record ThrottlingException
    Message: string
end

local record ValidationException
    Message: string
    Reason: string
    Fields: {ValidationExceptionField}
end

local record AccessDeniedException
    Message: string
    Reason: string
end

local record InternalServerException
    Message: string
    RequestId: string
end

local record ThrottlingException
    Message: string
end

local record ValidationException
    Message: string
    Reason: string
    Fields: {ValidationExceptionField}
end

local record AccessDeniedException
    Message: string
    Reason: string
end

local record InternalServerException
    Message: string
    RequestId: string
end

local record ThrottlingException
    Message: string
end

local record ValidationException
    Message: string
    Reason: string
    Fields: {ValidationExceptionField}
end

local record AccessDeniedException
    Message: string
    Reason: string
end

local record ConflictException
    Message: string
    Reason: string
    ResourceType: string
    ResourceId: string
end

local record InternalServerException
    Message: string
    RequestId: string
end

local record ResourceNotFoundException
    Message: string
    ResourceType: string
    ResourceId: string
end

local record ThrottlingException
    Message: string
end

local record ValidationException
    Message: string
    Reason: string
    Fields: {ValidationExceptionField}
end

local record AccessDeniedException
    Message: string
    Reason: string
end

local record InternalServerException
    Message: string
    RequestId: string
end

local record ResourceNotFoundException
    Message: string
    ResourceType: string
    ResourceId: string
end

local record ServiceQuotaExceededException
    Message: string
    Reason: string
end

local record ThrottlingException
    Message: string
end

local record ValidationException
    Message: string
    Reason: string
    Fields: {ValidationExceptionField}
end

local record AccessDeniedException
    Message: string
    Reason: string
end

local record InternalServerException
    Message: string
    RequestId: string
end

local record ResourceNotFoundException
    Message: string
    ResourceType: string
    ResourceId: string
end

local record ThrottlingException
    Message: string
end

local record ValidationException
    Message: string
    Reason: string
    Fields: {ValidationExceptionField}
end

local record AccessDeniedException
    Message: string
    Reason: string
end

local record ConflictException
    Message: string
    Reason: string
    ResourceType: string
    ResourceId: string
end

local record InternalServerException
    Message: string
    RequestId: string
end

local record ResourceNotFoundException
    Message: string
    ResourceType: string
    ResourceId: string
end

local record ThrottlingException
    Message: string
end

local record ValidationException
    Message: string
    Reason: string
    Fields: {ValidationExceptionField}
end

local record AccessDeniedException
    Message: string
    Reason: string
end

local record ConflictException
    Message: string
    Reason: string
    ResourceType: string
    ResourceId: string
end

local record InternalServerException
    Message: string
    RequestId: string
end

local record ResourceNotFoundException
    Message: string
    ResourceType: string
    ResourceId: string
end

local record ThrottlingException
    Message: string
end

local record ValidationException
    Message: string
    Reason: string
    Fields: {ValidationExceptionField}
end

local record AccessDeniedException
    Message: string
    Reason: string
end

local record ConflictException
    Message: string
    Reason: string
    ResourceType: string
    ResourceId: string
end

local record InternalServerException
    Message: string
    RequestId: string
end

local record ResourceNotFoundException
    Message: string
    ResourceType: string
    ResourceId: string
end

local record ThrottlingException
    Message: string
end

local record ValidationException
    Message: string
    Reason: string
    Fields: {ValidationExceptionField}
end

local record AccessDeniedException
    Message: string
    Reason: string
end

local record ConflictException
    Message: string
    Reason: string
    ResourceType: string
    ResourceId: string
end

local record InternalServerException
    Message: string
    RequestId: string
end

local record ResourceNotFoundException
    Message: string
    ResourceType: string
    ResourceId: string
end

local record ThrottlingException
    Message: string
end

local record ValidationException
    Message: string
    Reason: string
    Fields: {ValidationExceptionField}
end

local record AccessDeniedException
    Message: string
    Reason: string
end

local record InternalServerException
    Message: string
    RequestId: string
end

local record ResourceNotFoundException
    Message: string
    ResourceType: string
    ResourceId: string
end

local record ThrottlingException
    Message: string
end

local record ValidationException
    Message: string
    Reason: string
    Fields: {ValidationExceptionField}
end

local record AccessDeniedException
    Message: string
    Reason: string
end

local record InternalServerException
    Message: string
    RequestId: string
end

local record ResourceNotFoundException
    Message: string
    ResourceType: string
    ResourceId: string
end

local record ThrottlingException
    Message: string
end

local record ValidationException
    Message: string
    Reason: string
    Fields: {ValidationExceptionField}
end

local record AccessDeniedException
    Message: string
    Reason: string
end

local record ConflictException
    Message: string
    Reason: string
    ResourceType: string
    ResourceId: string
end

local record InternalServerException
    Message: string
    RequestId: string
end

local record ResourceNotFoundException
    Message: string
    ResourceType: string
    ResourceId: string
end

local record ThrottlingException
    Message: string
end

local record ValidationException
    Message: string
    Reason: string
    Fields: {ValidationExceptionField}
end

local record AccessDeniedException
    Message: string
    Reason: string
end

local record InternalServerException
    Message: string
    RequestId: string
end

local record ResourceNotFoundException
    Message: string
    ResourceType: string
    ResourceId: string
end

local record ThrottlingException
    Message: string
end

local record ValidationException
    Message: string
    Reason: string
    Fields: {ValidationExceptionField}
end

local record AccessDeniedException
    Message: string
    Reason: string
end

local record ConflictException
    Message: string
    Reason: string
    ResourceType: string
    ResourceId: string
end

local record InternalServerException
    Message: string
    RequestId: string
end

local record ResourceNotFoundException
    Message: string
    ResourceType: string
    ResourceId: string
end

local record ThrottlingException
    Message: string
end

local record ValidationException
    Message: string
    Reason: string
    Fields: {ValidationExceptionField}
end

local record M
    AssociateOriginationIdentityInput: AssociateOriginationIdentityInput
    AssociateOriginationIdentityOutput: AssociateOriginationIdentityOutput
    AssociateProtectConfigurationInput: AssociateProtectConfigurationInput
    AssociateProtectConfigurationOutput: AssociateProtectConfigurationOutput
    CarrierLookupInput: CarrierLookupInput
    CarrierLookupOutput: CarrierLookupOutput
    CreateConfigurationSetInput: CreateConfigurationSetInput
    CreateConfigurationSetOutput: CreateConfigurationSetOutput
    CreateEventDestinationInput: CreateEventDestinationInput
    CreateEventDestinationOutput: CreateEventDestinationOutput
    CreateNotifyConfigurationInput: CreateNotifyConfigurationInput
    CreateNotifyConfigurationOutput: CreateNotifyConfigurationOutput
    CreateOptOutListInput: CreateOptOutListInput
    CreateOptOutListOutput: CreateOptOutListOutput
    CreatePoolInput: CreatePoolInput
    CreatePoolOutput: CreatePoolOutput
    CreateProtectConfigurationInput: CreateProtectConfigurationInput
    CreateProtectConfigurationOutput: CreateProtectConfigurationOutput
    CreateRcsAgentInput: CreateRcsAgentInput
    CreateRcsAgentOutput: CreateRcsAgentOutput
    CreateRegistrationInput: CreateRegistrationInput
    CreateRegistrationOutput: CreateRegistrationOutput
    CreateRegistrationAssociationInput: CreateRegistrationAssociationInput
    CreateRegistrationAssociationOutput: CreateRegistrationAssociationOutput
    CreateRegistrationAttachmentInput: CreateRegistrationAttachmentInput
    CreateRegistrationAttachmentOutput: CreateRegistrationAttachmentOutput
    CreateRegistrationVersionInput: CreateRegistrationVersionInput
    CreateRegistrationVersionOutput: CreateRegistrationVersionOutput
    CreateVerifiedDestinationNumberInput: CreateVerifiedDestinationNumberInput
    CreateVerifiedDestinationNumberOutput: CreateVerifiedDestinationNumberOutput
    DeleteAccountDefaultProtectConfigurationInput: DeleteAccountDefaultProtectConfigurationInput
    DeleteAccountDefaultProtectConfigurationOutput: DeleteAccountDefaultProtectConfigurationOutput
    DeleteConfigurationSetInput: DeleteConfigurationSetInput
    DeleteConfigurationSetOutput: DeleteConfigurationSetOutput
    DeleteDefaultMessageTypeInput: DeleteDefaultMessageTypeInput
    DeleteDefaultMessageTypeOutput: DeleteDefaultMessageTypeOutput
    DeleteDefaultSenderIdInput: DeleteDefaultSenderIdInput
    DeleteDefaultSenderIdOutput: DeleteDefaultSenderIdOutput
    DeleteEventDestinationInput: DeleteEventDestinationInput
    DeleteEventDestinationOutput: DeleteEventDestinationOutput
    DeleteKeywordInput: DeleteKeywordInput
    DeleteKeywordOutput: DeleteKeywordOutput
    DeleteMediaMessageSpendLimitOverrideInput: DeleteMediaMessageSpendLimitOverrideInput
    DeleteMediaMessageSpendLimitOverrideOutput: DeleteMediaMessageSpendLimitOverrideOutput
    DeleteNotifyConfigurationInput: DeleteNotifyConfigurationInput
    DeleteNotifyConfigurationOutput: DeleteNotifyConfigurationOutput
    DeleteNotifyMessageSpendLimitOverrideInput: DeleteNotifyMessageSpendLimitOverrideInput
    DeleteNotifyMessageSpendLimitOverrideOutput: DeleteNotifyMessageSpendLimitOverrideOutput
    DeleteOptedOutNumberInput: DeleteOptedOutNumberInput
    DeleteOptedOutNumberOutput: DeleteOptedOutNumberOutput
    DeleteOptOutListInput: DeleteOptOutListInput
    DeleteOptOutListOutput: DeleteOptOutListOutput
    DeletePoolInput: DeletePoolInput
    DeletePoolOutput: DeletePoolOutput
    DeleteProtectConfigurationInput: DeleteProtectConfigurationInput
    DeleteProtectConfigurationOutput: DeleteProtectConfigurationOutput
    DeleteProtectConfigurationRuleSetNumberOverrideInput: DeleteProtectConfigurationRuleSetNumberOverrideInput
    DeleteProtectConfigurationRuleSetNumberOverrideOutput: DeleteProtectConfigurationRuleSetNumberOverrideOutput
    DeleteRcsAgentInput: DeleteRcsAgentInput
    DeleteRcsAgentOutput: DeleteRcsAgentOutput
    DeleteRegistrationInput: DeleteRegistrationInput
    DeleteRegistrationOutput: DeleteRegistrationOutput
    DeleteRegistrationAttachmentInput: DeleteRegistrationAttachmentInput
    DeleteRegistrationAttachmentOutput: DeleteRegistrationAttachmentOutput
    DeleteRegistrationFieldValueInput: DeleteRegistrationFieldValueInput
    DeleteRegistrationFieldValueOutput: DeleteRegistrationFieldValueOutput
    DeleteResourcePolicyInput: DeleteResourcePolicyInput
    DeleteResourcePolicyOutput: DeleteResourcePolicyOutput
    DeleteTextMessageSpendLimitOverrideInput: DeleteTextMessageSpendLimitOverrideInput
    DeleteTextMessageSpendLimitOverrideOutput: DeleteTextMessageSpendLimitOverrideOutput
    DeleteVerifiedDestinationNumberInput: DeleteVerifiedDestinationNumberInput
    DeleteVerifiedDestinationNumberOutput: DeleteVerifiedDestinationNumberOutput
    DeleteVoiceMessageSpendLimitOverrideInput: DeleteVoiceMessageSpendLimitOverrideInput
    DeleteVoiceMessageSpendLimitOverrideOutput: DeleteVoiceMessageSpendLimitOverrideOutput
    DescribeAccountAttributesInput: DescribeAccountAttributesInput
    DescribeAccountAttributesOutput: DescribeAccountAttributesOutput
    DescribeAccountLimitsInput: DescribeAccountLimitsInput
    DescribeAccountLimitsOutput: DescribeAccountLimitsOutput
    DescribeConfigurationSetsInput: DescribeConfigurationSetsInput
    DescribeConfigurationSetsOutput: DescribeConfigurationSetsOutput
    DescribeKeywordsInput: DescribeKeywordsInput
    DescribeKeywordsOutput: DescribeKeywordsOutput
    DescribeNotifyConfigurationsInput: DescribeNotifyConfigurationsInput
    DescribeNotifyConfigurationsOutput: DescribeNotifyConfigurationsOutput
    DescribeNotifyTemplatesInput: DescribeNotifyTemplatesInput
    DescribeNotifyTemplatesOutput: DescribeNotifyTemplatesOutput
    DescribeOptedOutNumbersInput: DescribeOptedOutNumbersInput
    DescribeOptedOutNumbersOutput: DescribeOptedOutNumbersOutput
    DescribeOptOutListsInput: DescribeOptOutListsInput
    DescribeOptOutListsOutput: DescribeOptOutListsOutput
    DescribePhoneNumbersInput: DescribePhoneNumbersInput
    DescribePhoneNumbersOutput: DescribePhoneNumbersOutput
    DescribePoolsInput: DescribePoolsInput
    DescribePoolsOutput: DescribePoolsOutput
    DescribeProtectConfigurationsInput: DescribeProtectConfigurationsInput
    DescribeProtectConfigurationsOutput: DescribeProtectConfigurationsOutput
    DescribeRcsAgentCountryLaunchStatusInput: DescribeRcsAgentCountryLaunchStatusInput
    DescribeRcsAgentCountryLaunchStatusOutput: DescribeRcsAgentCountryLaunchStatusOutput
    DescribeRcsAgentsInput: DescribeRcsAgentsInput
    DescribeRcsAgentsOutput: DescribeRcsAgentsOutput
    DescribeRegistrationAttachmentsInput: DescribeRegistrationAttachmentsInput
    DescribeRegistrationAttachmentsOutput: DescribeRegistrationAttachmentsOutput
    DescribeRegistrationFieldDefinitionsInput: DescribeRegistrationFieldDefinitionsInput
    DescribeRegistrationFieldDefinitionsOutput: DescribeRegistrationFieldDefinitionsOutput
    DescribeRegistrationFieldValuesInput: DescribeRegistrationFieldValuesInput
    DescribeRegistrationFieldValuesOutput: DescribeRegistrationFieldValuesOutput
    DescribeRegistrationsInput: DescribeRegistrationsInput
    DescribeRegistrationsOutput: DescribeRegistrationsOutput
    DescribeRegistrationSectionDefinitionsInput: DescribeRegistrationSectionDefinitionsInput
    DescribeRegistrationSectionDefinitionsOutput: DescribeRegistrationSectionDefinitionsOutput
    DescribeRegistrationTypeDefinitionsInput: DescribeRegistrationTypeDefinitionsInput
    DescribeRegistrationTypeDefinitionsOutput: DescribeRegistrationTypeDefinitionsOutput
    DescribeRegistrationVersionsInput: DescribeRegistrationVersionsInput
    DescribeRegistrationVersionsOutput: DescribeRegistrationVersionsOutput
    DescribeSenderIdsInput: DescribeSenderIdsInput
    DescribeSenderIdsOutput: DescribeSenderIdsOutput
    DescribeSpendLimitsInput: DescribeSpendLimitsInput
    DescribeSpendLimitsOutput: DescribeSpendLimitsOutput
    DescribeVerifiedDestinationNumbersInput: DescribeVerifiedDestinationNumbersInput
    DescribeVerifiedDestinationNumbersOutput: DescribeVerifiedDestinationNumbersOutput
    DisassociateOriginationIdentityInput: DisassociateOriginationIdentityInput
    DisassociateOriginationIdentityOutput: DisassociateOriginationIdentityOutput
    DisassociateProtectConfigurationInput: DisassociateProtectConfigurationInput
    DisassociateProtectConfigurationOutput: DisassociateProtectConfigurationOutput
    DiscardRegistrationVersionInput: DiscardRegistrationVersionInput
    DiscardRegistrationVersionOutput: DiscardRegistrationVersionOutput
    GetProtectConfigurationCountryRuleSetInput: GetProtectConfigurationCountryRuleSetInput
    GetProtectConfigurationCountryRuleSetOutput: GetProtectConfigurationCountryRuleSetOutput
    GetResourcePolicyInput: GetResourcePolicyInput
    GetResourcePolicyOutput: GetResourcePolicyOutput
    ListNotifyCountriesInput: ListNotifyCountriesInput
    ListNotifyCountriesOutput: ListNotifyCountriesOutput
    ListPoolOriginationIdentitiesInput: ListPoolOriginationIdentitiesInput
    ListPoolOriginationIdentitiesOutput: ListPoolOriginationIdentitiesOutput
    ListProtectConfigurationRuleSetNumberOverridesInput: ListProtectConfigurationRuleSetNumberOverridesInput
    ListProtectConfigurationRuleSetNumberOverridesOutput: ListProtectConfigurationRuleSetNumberOverridesOutput
    ListRegistrationAssociationsInput: ListRegistrationAssociationsInput
    ListRegistrationAssociationsOutput: ListRegistrationAssociationsOutput
    ListTagsForResourceInput: ListTagsForResourceInput
    ListTagsForResourceOutput: ListTagsForResourceOutput
    PutKeywordInput: PutKeywordInput
    PutKeywordOutput: PutKeywordOutput
    PutMessageFeedbackInput: PutMessageFeedbackInput
    PutMessageFeedbackOutput: PutMessageFeedbackOutput
    PutOptedOutNumberInput: PutOptedOutNumberInput
    PutOptedOutNumberOutput: PutOptedOutNumberOutput
    PutProtectConfigurationRuleSetNumberOverrideInput: PutProtectConfigurationRuleSetNumberOverrideInput
    PutProtectConfigurationRuleSetNumberOverrideOutput: PutProtectConfigurationRuleSetNumberOverrideOutput
    PutRegistrationFieldValueInput: PutRegistrationFieldValueInput
    PutRegistrationFieldValueOutput: PutRegistrationFieldValueOutput
    PutResourcePolicyInput: PutResourcePolicyInput
    PutResourcePolicyOutput: PutResourcePolicyOutput
    ReleasePhoneNumberInput: ReleasePhoneNumberInput
    ReleasePhoneNumberOutput: ReleasePhoneNumberOutput
    ReleaseSenderIdInput: ReleaseSenderIdInput
    ReleaseSenderIdOutput: ReleaseSenderIdOutput
    RequestPhoneNumberInput: RequestPhoneNumberInput
    RequestPhoneNumberOutput: RequestPhoneNumberOutput
    RequestSenderIdInput: RequestSenderIdInput
    RequestSenderIdOutput: RequestSenderIdOutput
    SendDestinationNumberVerificationCodeInput: SendDestinationNumberVerificationCodeInput
    SendDestinationNumberVerificationCodeOutput: SendDestinationNumberVerificationCodeOutput
    SendMediaMessageInput: SendMediaMessageInput
    SendMediaMessageOutput: SendMediaMessageOutput
    SendNotifyTextMessageInput: SendNotifyTextMessageInput
    SendNotifyTextMessageOutput: SendNotifyTextMessageOutput
    SendNotifyVoiceMessageInput: SendNotifyVoiceMessageInput
    SendNotifyVoiceMessageOutput: SendNotifyVoiceMessageOutput
    SendTextMessageInput: SendTextMessageInput
    SendTextMessageOutput: SendTextMessageOutput
    SendVoiceMessageInput: SendVoiceMessageInput
    SendVoiceMessageOutput: SendVoiceMessageOutput
    SetAccountDefaultProtectConfigurationInput: SetAccountDefaultProtectConfigurationInput
    SetAccountDefaultProtectConfigurationOutput: SetAccountDefaultProtectConfigurationOutput
    SetDefaultMessageFeedbackEnabledInput: SetDefaultMessageFeedbackEnabledInput
    SetDefaultMessageFeedbackEnabledOutput: SetDefaultMessageFeedbackEnabledOutput
    SetDefaultMessageTypeInput: SetDefaultMessageTypeInput
    SetDefaultMessageTypeOutput: SetDefaultMessageTypeOutput
    SetDefaultSenderIdInput: SetDefaultSenderIdInput
    SetDefaultSenderIdOutput: SetDefaultSenderIdOutput
    SetMediaMessageSpendLimitOverrideInput: SetMediaMessageSpendLimitOverrideInput
    SetMediaMessageSpendLimitOverrideOutput: SetMediaMessageSpendLimitOverrideOutput
    SetNotifyMessageSpendLimitOverrideInput: SetNotifyMessageSpendLimitOverrideInput
    SetNotifyMessageSpendLimitOverrideOutput: SetNotifyMessageSpendLimitOverrideOutput
    SetTextMessageSpendLimitOverrideInput: SetTextMessageSpendLimitOverrideInput
    SetTextMessageSpendLimitOverrideOutput: SetTextMessageSpendLimitOverrideOutput
    SetVoiceMessageSpendLimitOverrideInput: SetVoiceMessageSpendLimitOverrideInput
    SetVoiceMessageSpendLimitOverrideOutput: SetVoiceMessageSpendLimitOverrideOutput
    SubmitRegistrationVersionInput: SubmitRegistrationVersionInput
    SubmitRegistrationVersionOutput: SubmitRegistrationVersionOutput
    TagResourceInput: TagResourceInput
    TagResourceOutput: TagResourceOutput
    UntagResourceInput: UntagResourceInput
    UntagResourceOutput: UntagResourceOutput
    UpdateEventDestinationInput: UpdateEventDestinationInput
    UpdateEventDestinationOutput: UpdateEventDestinationOutput
    UpdateNotifyConfigurationInput: UpdateNotifyConfigurationInput
    UpdateNotifyConfigurationOutput: UpdateNotifyConfigurationOutput
    UpdatePhoneNumberInput: UpdatePhoneNumberInput
    UpdatePhoneNumberOutput: UpdatePhoneNumberOutput
    UpdatePoolInput: UpdatePoolInput
    UpdatePoolOutput: UpdatePoolOutput
    UpdateProtectConfigurationInput: UpdateProtectConfigurationInput
    UpdateProtectConfigurationOutput: UpdateProtectConfigurationOutput
    UpdateProtectConfigurationCountryRuleSetInput: UpdateProtectConfigurationCountryRuleSetInput
    UpdateProtectConfigurationCountryRuleSetOutput: UpdateProtectConfigurationCountryRuleSetOutput
    UpdateRcsAgentInput: UpdateRcsAgentInput
    UpdateRcsAgentOutput: UpdateRcsAgentOutput
    UpdateSenderIdInput: UpdateSenderIdInput
    UpdateSenderIdOutput: UpdateSenderIdOutput
    VerifyDestinationNumberInput: VerifyDestinationNumberInput
    VerifyDestinationNumberOutput: VerifyDestinationNumberOutput
end

return M
