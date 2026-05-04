local record CreateSlackChannelConfigurationInput
    teamId: string
    channelId: string
    channelName: string
    notifyOnCreateOrReopenCase: boolean
    notifyOnAddCorrespondenceToCase: boolean
    notifyOnResolveCase: boolean
    notifyOnCaseSeverity: string
    channelRoleArn: string
end

local record CreateSlackChannelConfigurationOutput
end

local record DeleteAccountAliasInput
end

local record DeleteAccountAliasOutput
end

local record DeleteSlackChannelConfigurationInput
    teamId: string
    channelId: string
end

local record DeleteSlackChannelConfigurationOutput
end

local record DeleteSlackWorkspaceConfigurationInput
    teamId: string
end

local record DeleteSlackWorkspaceConfigurationOutput
end

local record GetAccountAliasInput
end

local record GetAccountAliasOutput
    accountAlias: string
end

local record ListSlackChannelConfigurationsInput
    nextToken: string
end

local record ListSlackChannelConfigurationsOutput
    nextToken: string
    slackChannelConfigurations: {SlackChannelConfiguration}
end

local record ListSlackWorkspaceConfigurationsInput
    nextToken: string
end

local record ListSlackWorkspaceConfigurationsOutput
    nextToken: string
    slackWorkspaceConfigurations: {SlackWorkspaceConfiguration}
end

local record PutAccountAliasInput
    accountAlias: string
end

local record PutAccountAliasOutput
end

local record RegisterSlackWorkspaceForOrganizationInput
    teamId: string
end

local record RegisterSlackWorkspaceForOrganizationOutput
    teamId: string
    teamName: string
    accountType: string
end

local record UpdateSlackChannelConfigurationInput
    teamId: string
    channelId: string
    channelName: string
    notifyOnCreateOrReopenCase: boolean
    notifyOnAddCorrespondenceToCase: boolean
    notifyOnResolveCase: boolean
    notifyOnCaseSeverity: string
    channelRoleArn: string
end

local record UpdateSlackChannelConfigurationOutput
    teamId: string
    channelId: string
    channelName: string
    notifyOnCreateOrReopenCase: boolean
    notifyOnAddCorrespondenceToCase: boolean
    notifyOnResolveCase: boolean
    notifyOnCaseSeverity: string
    channelRoleArn: string
end

local record AccessDeniedException
    message: string
end

local record ConflictException
    message: string
end

local record InternalServerException
    message: string
end

local record ServiceQuotaExceededException
    message: string
end

local record ValidationException
    message: string
end

local record AccessDeniedException
    message: string
end

local record InternalServerException
    message: string
end

local record ResourceNotFoundException
    message: string
end

local record AccessDeniedException
    message: string
end

local record ConflictException
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

local record AccessDeniedException
    message: string
end

local record ConflictException
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

local record AccessDeniedException
    message: string
end

local record InternalServerException
    message: string
end

local record AccessDeniedException
    message: string
end

local record InternalServerException
    message: string
end

local record AccessDeniedException
    message: string
end

local record InternalServerException
    message: string
end

local record ValidationException
    message: string
end

local record AccessDeniedException
    message: string
end

local record ConflictException
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

local record AccessDeniedException
    message: string
end

local record ConflictException
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

local record M
    CreateSlackChannelConfigurationInput: CreateSlackChannelConfigurationInput
    CreateSlackChannelConfigurationOutput: CreateSlackChannelConfigurationOutput
    DeleteAccountAliasInput: DeleteAccountAliasInput
    DeleteAccountAliasOutput: DeleteAccountAliasOutput
    DeleteSlackChannelConfigurationInput: DeleteSlackChannelConfigurationInput
    DeleteSlackChannelConfigurationOutput: DeleteSlackChannelConfigurationOutput
    DeleteSlackWorkspaceConfigurationInput: DeleteSlackWorkspaceConfigurationInput
    DeleteSlackWorkspaceConfigurationOutput: DeleteSlackWorkspaceConfigurationOutput
    GetAccountAliasInput: GetAccountAliasInput
    GetAccountAliasOutput: GetAccountAliasOutput
    ListSlackChannelConfigurationsInput: ListSlackChannelConfigurationsInput
    ListSlackChannelConfigurationsOutput: ListSlackChannelConfigurationsOutput
    ListSlackWorkspaceConfigurationsInput: ListSlackWorkspaceConfigurationsInput
    ListSlackWorkspaceConfigurationsOutput: ListSlackWorkspaceConfigurationsOutput
    PutAccountAliasInput: PutAccountAliasInput
    PutAccountAliasOutput: PutAccountAliasOutput
    RegisterSlackWorkspaceForOrganizationInput: RegisterSlackWorkspaceForOrganizationInput
    RegisterSlackWorkspaceForOrganizationOutput: RegisterSlackWorkspaceForOrganizationOutput
    UpdateSlackChannelConfigurationInput: UpdateSlackChannelConfigurationInput
    UpdateSlackChannelConfigurationOutput: UpdateSlackChannelConfigurationOutput
end

return M
