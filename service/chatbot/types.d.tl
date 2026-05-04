local record AssociateToConfigurationInput
    Resource: string
    ChatConfiguration: string
end

local record AssociateToConfigurationOutput
end

local record CreateChimeWebhookConfigurationInput
    WebhookDescription: string
    WebhookUrl: string
    SnsTopicArns: {string}
    IamRoleArn: string
    ConfigurationName: string
    LoggingLevel: string
    Tags: {Tag}
end

local record CreateChimeWebhookConfigurationOutput
    WebhookConfiguration: ChimeWebhookConfiguration
end

local record CreateCustomActionInput
    Definition: CustomActionDefinition
    AliasName: string
    Attachments: {CustomActionAttachment}
    Tags: {Tag}
    ClientToken: string
    ActionName: string
end

local record CreateCustomActionOutput
    CustomActionArn: string
end

local record CreateMicrosoftTeamsChannelConfigurationInput
    ChannelId: string
    ChannelName: string
    TeamId: string
    TeamName: string
    TenantId: string
    SnsTopicArns: {string}
    IamRoleArn: string
    ConfigurationName: string
    LoggingLevel: string
    GuardrailPolicyArns: {string}
    UserAuthorizationRequired: boolean
    Tags: {Tag}
end

local record CreateMicrosoftTeamsChannelConfigurationOutput
    ChannelConfiguration: TeamsChannelConfiguration
end

local record CreateSlackChannelConfigurationInput
    SlackTeamId: string
    SlackChannelId: string
    SlackChannelName: string
    SnsTopicArns: {string}
    IamRoleArn: string
    ConfigurationName: string
    LoggingLevel: string
    GuardrailPolicyArns: {string}
    UserAuthorizationRequired: boolean
    Tags: {Tag}
end

local record CreateSlackChannelConfigurationOutput
    ChannelConfiguration: SlackChannelConfiguration
end

local record DeleteChimeWebhookConfigurationInput
    ChatConfigurationArn: string
end

local record DeleteChimeWebhookConfigurationOutput
end

local record DeleteCustomActionInput
    CustomActionArn: string
end

local record DeleteCustomActionOutput
end

local record DeleteMicrosoftTeamsChannelConfigurationInput
    ChatConfigurationArn: string
end

local record DeleteMicrosoftTeamsChannelConfigurationOutput
end

local record DeleteMicrosoftTeamsConfiguredTeamInput
    TeamId: string
end

local record DeleteMicrosoftTeamsConfiguredTeamOutput
end

local record DeleteMicrosoftTeamsUserIdentityInput
    ChatConfigurationArn: string
    UserId: string
end

local record DeleteMicrosoftTeamsUserIdentityOutput
end

local record DeleteSlackChannelConfigurationInput
    ChatConfigurationArn: string
end

local record DeleteSlackChannelConfigurationOutput
end

local record DeleteSlackUserIdentityInput
    ChatConfigurationArn: string
    SlackTeamId: string
    SlackUserId: string
end

local record DeleteSlackUserIdentityOutput
end

local record DeleteSlackWorkspaceAuthorizationInput
    SlackTeamId: string
end

local record DeleteSlackWorkspaceAuthorizationOutput
end

local record DescribeChimeWebhookConfigurationsInput
    MaxResults: number
    NextToken: string
    ChatConfigurationArn: string
end

local record DescribeChimeWebhookConfigurationsOutput
    NextToken: string
    WebhookConfigurations: {ChimeWebhookConfiguration}
end

local record DescribeSlackChannelConfigurationsInput
    MaxResults: number
    NextToken: string
    ChatConfigurationArn: string
end

local record DescribeSlackChannelConfigurationsOutput
    NextToken: string
    SlackChannelConfigurations: {SlackChannelConfiguration}
end

local record DescribeSlackUserIdentitiesInput
    ChatConfigurationArn: string
    NextToken: string
    MaxResults: number
end

local record DescribeSlackUserIdentitiesOutput
    SlackUserIdentities: {SlackUserIdentity}
    NextToken: string
end

local record DescribeSlackWorkspacesInput
    MaxResults: number
    NextToken: string
end

local record DescribeSlackWorkspacesOutput
    SlackWorkspaces: {SlackWorkspace}
    NextToken: string
end

local record DisassociateFromConfigurationInput
    Resource: string
    ChatConfiguration: string
end

local record DisassociateFromConfigurationOutput
end

local record GetAccountPreferencesInput
end

local record GetAccountPreferencesOutput
    AccountPreferences: AccountPreferences
end

local record GetCustomActionInput
    CustomActionArn: string
end

local record GetCustomActionOutput
    CustomAction: CustomAction
end

local record GetMicrosoftTeamsChannelConfigurationInput
    ChatConfigurationArn: string
end

local record GetMicrosoftTeamsChannelConfigurationOutput
    ChannelConfiguration: TeamsChannelConfiguration
end

local record ListAssociationsInput
    ChatConfiguration: string
    MaxResults: number
    NextToken: string
end

local record ListAssociationsOutput
    Associations: {AssociationListing}
    NextToken: string
end

local record ListCustomActionsInput
    MaxResults: number
    NextToken: string
end

local record ListCustomActionsOutput
    CustomActions: {string}
    NextToken: string
end

local record ListMicrosoftTeamsChannelConfigurationsInput
    MaxResults: number
    NextToken: string
    TeamId: string
end

local record ListMicrosoftTeamsChannelConfigurationsOutput
    NextToken: string
    TeamChannelConfigurations: {TeamsChannelConfiguration}
end

local record ListMicrosoftTeamsConfiguredTeamsInput
    MaxResults: number
    NextToken: string
end

local record ListMicrosoftTeamsConfiguredTeamsOutput
    ConfiguredTeams: {ConfiguredTeam}
    NextToken: string
end

local record ListMicrosoftTeamsUserIdentitiesInput
    ChatConfigurationArn: string
    NextToken: string
    MaxResults: number
end

local record ListMicrosoftTeamsUserIdentitiesOutput
    TeamsUserIdentities: {TeamsUserIdentity}
    NextToken: string
end

local record ListTagsForResourceInput
    ResourceARN: string
end

local record ListTagsForResourceOutput
    Tags: {Tag}
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

local record UpdateAccountPreferencesInput
    UserAuthorizationRequired: boolean
    TrainingDataCollectionEnabled: boolean
end

local record UpdateAccountPreferencesOutput
    AccountPreferences: AccountPreferences
end

local record UpdateChimeWebhookConfigurationInput
    ChatConfigurationArn: string
    WebhookDescription: string
    WebhookUrl: string
    SnsTopicArns: {string}
    IamRoleArn: string
    LoggingLevel: string
end

local record UpdateChimeWebhookConfigurationOutput
    WebhookConfiguration: ChimeWebhookConfiguration
end

local record UpdateCustomActionInput
    CustomActionArn: string
    Definition: CustomActionDefinition
    AliasName: string
    Attachments: {CustomActionAttachment}
end

local record UpdateCustomActionOutput
    CustomActionArn: string
end

local record UpdateMicrosoftTeamsChannelConfigurationInput
    ChatConfigurationArn: string
    ChannelId: string
    ChannelName: string
    SnsTopicArns: {string}
    IamRoleArn: string
    LoggingLevel: string
    GuardrailPolicyArns: {string}
    UserAuthorizationRequired: boolean
end

local record UpdateMicrosoftTeamsChannelConfigurationOutput
    ChannelConfiguration: TeamsChannelConfiguration
end

local record UpdateSlackChannelConfigurationInput
    ChatConfigurationArn: string
    SlackChannelId: string
    SlackChannelName: string
    SnsTopicArns: {string}
    IamRoleArn: string
    LoggingLevel: string
    GuardrailPolicyArns: {string}
    UserAuthorizationRequired: boolean
end

local record UpdateSlackChannelConfigurationOutput
    ChannelConfiguration: SlackChannelConfiguration
end

local record InternalServiceError
    Message: string
end

local record InvalidRequestException
    message: string
end

local record UnauthorizedException
    message: string
end

local record ConflictException
    message: string
end

local record CreateChimeWebhookConfigurationException
    Message: string
end

local record InvalidParameterException
    message: string
end

local record InvalidRequestException
    message: string
end

local record LimitExceededException
    message: string
end

local record ConflictException
    message: string
end

local record InternalServiceError
    Message: string
end

local record InvalidRequestException
    message: string
end

local record LimitExceededException
    message: string
end

local record UnauthorizedException
    message: string
end

local record ConflictException
    message: string
end

local record CreateTeamsChannelConfigurationException
    Message: string
end

local record InvalidParameterException
    message: string
end

local record InvalidRequestException
    message: string
end

local record LimitExceededException
    message: string
end

local record ConflictException
    message: string
end

local record CreateSlackChannelConfigurationException
    Message: string
end

local record InvalidParameterException
    message: string
end

local record InvalidRequestException
    message: string
end

local record LimitExceededException
    message: string
end

local record DeleteChimeWebhookConfigurationException
    Message: string
end

local record InvalidParameterException
    message: string
end

local record InvalidRequestException
    message: string
end

local record ResourceNotFoundException
    Message: string
end

local record InternalServiceError
    Message: string
end

local record InvalidRequestException
    message: string
end

local record ResourceNotFoundException
    Message: string
end

local record UnauthorizedException
    message: string
end

local record DeleteTeamsChannelConfigurationException
    Message: string
end

local record InvalidParameterException
    message: string
end

local record InvalidRequestException
    message: string
end

local record ResourceNotFoundException
    Message: string
end

local record DeleteTeamsConfiguredTeamException
    Message: string
end

local record InvalidParameterException
    message: string
end

local record DeleteMicrosoftTeamsUserIdentityException
    Message: string
end

local record InvalidParameterException
    message: string
end

local record ResourceNotFoundException
    Message: string
end

local record DeleteSlackChannelConfigurationException
    Message: string
end

local record InvalidParameterException
    message: string
end

local record InvalidRequestException
    message: string
end

local record ResourceNotFoundException
    Message: string
end

local record DeleteSlackUserIdentityException
    Message: string
end

local record InvalidParameterException
    message: string
end

local record ResourceNotFoundException
    Message: string
end

local record DeleteSlackWorkspaceAuthorizationFault
    Message: string
end

local record InvalidParameterException
    message: string
end

local record DescribeChimeWebhookConfigurationsException
    Message: string
end

local record InvalidParameterException
    message: string
end

local record InvalidRequestException
    message: string
end

local record DescribeSlackChannelConfigurationsException
    Message: string
end

local record InvalidParameterException
    message: string
end

local record InvalidRequestException
    message: string
end

local record DescribeSlackUserIdentitiesException
    Message: string
end

local record InvalidParameterException
    message: string
end

local record InvalidRequestException
    message: string
end

local record DescribeSlackWorkspacesException
    Message: string
end

local record InvalidParameterException
    message: string
end

local record InvalidRequestException
    message: string
end

local record InternalServiceError
    Message: string
end

local record InvalidRequestException
    message: string
end

local record UnauthorizedException
    message: string
end

local record GetAccountPreferencesException
    Message: string
end

local record InvalidRequestException
    message: string
end

local record InternalServiceError
    Message: string
end

local record InvalidRequestException
    message: string
end

local record ResourceNotFoundException
    Message: string
end

local record UnauthorizedException
    message: string
end

local record GetTeamsChannelConfigurationException
    Message: string
end

local record InvalidParameterException
    message: string
end

local record InvalidRequestException
    message: string
end

local record InternalServiceError
    Message: string
end

local record InvalidRequestException
    message: string
end

local record UnauthorizedException
    message: string
end

local record InvalidParameterException
    message: string
end

local record InvalidRequestException
    message: string
end

local record ListTeamsChannelConfigurationsException
    Message: string
end

local record InvalidParameterException
    message: string
end

local record InvalidRequestException
    message: string
end

local record ListMicrosoftTeamsConfiguredTeamsException
    Message: string
end

local record InvalidParameterException
    message: string
end

local record InvalidRequestException
    message: string
end

local record ListMicrosoftTeamsUserIdentitiesException
    Message: string
end

local record InternalServiceError
    Message: string
end

local record ResourceNotFoundException
    Message: string
end

local record ServiceUnavailableException
    message: string
end

local record InternalServiceError
    Message: string
end

local record ResourceNotFoundException
    Message: string
end

local record ServiceUnavailableException
    message: string
end

local record TooManyTagsException
    message: string
end

local record InternalServiceError
    Message: string
end

local record ResourceNotFoundException
    Message: string
end

local record ServiceUnavailableException
    message: string
end

local record InvalidParameterException
    message: string
end

local record InvalidRequestException
    message: string
end

local record UpdateAccountPreferencesException
    Message: string
end

local record InvalidParameterException
    message: string
end

local record InvalidRequestException
    message: string
end

local record ResourceNotFoundException
    Message: string
end

local record UpdateChimeWebhookConfigurationException
    Message: string
end

local record InternalServiceError
    Message: string
end

local record InvalidRequestException
    message: string
end

local record ResourceNotFoundException
    Message: string
end

local record UnauthorizedException
    message: string
end

local record InvalidParameterException
    message: string
end

local record InvalidRequestException
    message: string
end

local record ResourceNotFoundException
    Message: string
end

local record UpdateTeamsChannelConfigurationException
    Message: string
end

local record InvalidParameterException
    message: string
end

local record InvalidRequestException
    message: string
end

local record ResourceNotFoundException
    Message: string
end

local record UpdateSlackChannelConfigurationException
    Message: string
end

local record M
    AssociateToConfigurationInput: AssociateToConfigurationInput
    AssociateToConfigurationOutput: AssociateToConfigurationOutput
    CreateChimeWebhookConfigurationInput: CreateChimeWebhookConfigurationInput
    CreateChimeWebhookConfigurationOutput: CreateChimeWebhookConfigurationOutput
    CreateCustomActionInput: CreateCustomActionInput
    CreateCustomActionOutput: CreateCustomActionOutput
    CreateMicrosoftTeamsChannelConfigurationInput: CreateMicrosoftTeamsChannelConfigurationInput
    CreateMicrosoftTeamsChannelConfigurationOutput: CreateMicrosoftTeamsChannelConfigurationOutput
    CreateSlackChannelConfigurationInput: CreateSlackChannelConfigurationInput
    CreateSlackChannelConfigurationOutput: CreateSlackChannelConfigurationOutput
    DeleteChimeWebhookConfigurationInput: DeleteChimeWebhookConfigurationInput
    DeleteChimeWebhookConfigurationOutput: DeleteChimeWebhookConfigurationOutput
    DeleteCustomActionInput: DeleteCustomActionInput
    DeleteCustomActionOutput: DeleteCustomActionOutput
    DeleteMicrosoftTeamsChannelConfigurationInput: DeleteMicrosoftTeamsChannelConfigurationInput
    DeleteMicrosoftTeamsChannelConfigurationOutput: DeleteMicrosoftTeamsChannelConfigurationOutput
    DeleteMicrosoftTeamsConfiguredTeamInput: DeleteMicrosoftTeamsConfiguredTeamInput
    DeleteMicrosoftTeamsConfiguredTeamOutput: DeleteMicrosoftTeamsConfiguredTeamOutput
    DeleteMicrosoftTeamsUserIdentityInput: DeleteMicrosoftTeamsUserIdentityInput
    DeleteMicrosoftTeamsUserIdentityOutput: DeleteMicrosoftTeamsUserIdentityOutput
    DeleteSlackChannelConfigurationInput: DeleteSlackChannelConfigurationInput
    DeleteSlackChannelConfigurationOutput: DeleteSlackChannelConfigurationOutput
    DeleteSlackUserIdentityInput: DeleteSlackUserIdentityInput
    DeleteSlackUserIdentityOutput: DeleteSlackUserIdentityOutput
    DeleteSlackWorkspaceAuthorizationInput: DeleteSlackWorkspaceAuthorizationInput
    DeleteSlackWorkspaceAuthorizationOutput: DeleteSlackWorkspaceAuthorizationOutput
    DescribeChimeWebhookConfigurationsInput: DescribeChimeWebhookConfigurationsInput
    DescribeChimeWebhookConfigurationsOutput: DescribeChimeWebhookConfigurationsOutput
    DescribeSlackChannelConfigurationsInput: DescribeSlackChannelConfigurationsInput
    DescribeSlackChannelConfigurationsOutput: DescribeSlackChannelConfigurationsOutput
    DescribeSlackUserIdentitiesInput: DescribeSlackUserIdentitiesInput
    DescribeSlackUserIdentitiesOutput: DescribeSlackUserIdentitiesOutput
    DescribeSlackWorkspacesInput: DescribeSlackWorkspacesInput
    DescribeSlackWorkspacesOutput: DescribeSlackWorkspacesOutput
    DisassociateFromConfigurationInput: DisassociateFromConfigurationInput
    DisassociateFromConfigurationOutput: DisassociateFromConfigurationOutput
    GetAccountPreferencesInput: GetAccountPreferencesInput
    GetAccountPreferencesOutput: GetAccountPreferencesOutput
    GetCustomActionInput: GetCustomActionInput
    GetCustomActionOutput: GetCustomActionOutput
    GetMicrosoftTeamsChannelConfigurationInput: GetMicrosoftTeamsChannelConfigurationInput
    GetMicrosoftTeamsChannelConfigurationOutput: GetMicrosoftTeamsChannelConfigurationOutput
    ListAssociationsInput: ListAssociationsInput
    ListAssociationsOutput: ListAssociationsOutput
    ListCustomActionsInput: ListCustomActionsInput
    ListCustomActionsOutput: ListCustomActionsOutput
    ListMicrosoftTeamsChannelConfigurationsInput: ListMicrosoftTeamsChannelConfigurationsInput
    ListMicrosoftTeamsChannelConfigurationsOutput: ListMicrosoftTeamsChannelConfigurationsOutput
    ListMicrosoftTeamsConfiguredTeamsInput: ListMicrosoftTeamsConfiguredTeamsInput
    ListMicrosoftTeamsConfiguredTeamsOutput: ListMicrosoftTeamsConfiguredTeamsOutput
    ListMicrosoftTeamsUserIdentitiesInput: ListMicrosoftTeamsUserIdentitiesInput
    ListMicrosoftTeamsUserIdentitiesOutput: ListMicrosoftTeamsUserIdentitiesOutput
    ListTagsForResourceInput: ListTagsForResourceInput
    ListTagsForResourceOutput: ListTagsForResourceOutput
    TagResourceInput: TagResourceInput
    TagResourceOutput: TagResourceOutput
    UntagResourceInput: UntagResourceInput
    UntagResourceOutput: UntagResourceOutput
    UpdateAccountPreferencesInput: UpdateAccountPreferencesInput
    UpdateAccountPreferencesOutput: UpdateAccountPreferencesOutput
    UpdateChimeWebhookConfigurationInput: UpdateChimeWebhookConfigurationInput
    UpdateChimeWebhookConfigurationOutput: UpdateChimeWebhookConfigurationOutput
    UpdateCustomActionInput: UpdateCustomActionInput
    UpdateCustomActionOutput: UpdateCustomActionOutput
    UpdateMicrosoftTeamsChannelConfigurationInput: UpdateMicrosoftTeamsChannelConfigurationInput
    UpdateMicrosoftTeamsChannelConfigurationOutput: UpdateMicrosoftTeamsChannelConfigurationOutput
    UpdateSlackChannelConfigurationInput: UpdateSlackChannelConfigurationInput
    UpdateSlackChannelConfigurationOutput: UpdateSlackChannelConfigurationOutput
end

return M
