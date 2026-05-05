local record CreateApplicationInput
    Name: string
    Description: string
    Tags: {string : string}
end

local record CreateApplicationOutput
    Id: string
    Name: string
    Description: string
end

local record CreateConfigurationProfileInput
    ApplicationId: string
    Name: string
    Description: string
    LocationUri: string
    RetrievalRoleArn: string
    Validators: {Validator}
    Tags: {string : string}
    Type: string
    KmsKeyIdentifier: string
end

local record CreateConfigurationProfileOutput
    ApplicationId: string
    Id: string
    Name: string
    Description: string
    LocationUri: string
    RetrievalRoleArn: string
    Validators: {Validator}
    Type: string
    KmsKeyArn: string
    KmsKeyIdentifier: string
end

local record CreateDeploymentStrategyInput
    Name: string
    Description: string
    DeploymentDurationInMinutes: number
    FinalBakeTimeInMinutes: number
    GrowthFactor: number
    GrowthType: string
    ReplicateTo: string
    Tags: {string : string}
end

local record CreateDeploymentStrategyOutput
    Id: string
    Name: string
    Description: string
    DeploymentDurationInMinutes: number
    GrowthType: string
    GrowthFactor: number
    FinalBakeTimeInMinutes: number
    ReplicateTo: string
end

local record CreateEnvironmentInput
    ApplicationId: string
    Name: string
    Description: string
    Monitors: {Monitor}
    Tags: {string : string}
end

local record CreateEnvironmentOutput
    ApplicationId: string
    Id: string
    Name: string
    Description: string
    State: string
    Monitors: {Monitor}
end

local record CreateExtensionInput
    Name: string
    Description: string
    Actions: {string : {Action}}
    Parameters: {string : Parameter}
    Tags: {string : string}
    LatestVersionNumber: number
end

local record CreateExtensionOutput
    Id: string
    Name: string
    VersionNumber: number
    Arn: string
    Description: string
    Actions: {string : {Action}}
    Parameters: {string : Parameter}
end

local record CreateExtensionAssociationInput
    ExtensionIdentifier: string
    ExtensionVersionNumber: number
    ResourceIdentifier: string
    Parameters: {string : string}
    Tags: {string : string}
end

local record CreateExtensionAssociationOutput
    Id: string
    ExtensionArn: string
    ResourceArn: string
    Arn: string
    Parameters: {string : string}
    ExtensionVersionNumber: number
end

local record CreateHostedConfigurationVersionInput
    ApplicationId: string
    ConfigurationProfileId: string
    Description: string
    Content: string
    ContentType: string
    LatestVersionNumber: number
    VersionLabel: string
end

local record CreateHostedConfigurationVersionOutput
    ApplicationId: string
    ConfigurationProfileId: string
    VersionNumber: number
    Description: string
    Content: string
    ContentType: string
    VersionLabel: string
    KmsKeyArn: string
end

local record DeleteApplicationInput
    ApplicationId: string
end

local record DeleteApplicationOutput
end

local record DeleteConfigurationProfileInput
    ApplicationId: string
    ConfigurationProfileId: string
    DeletionProtectionCheck: string
end

local record DeleteConfigurationProfileOutput
end

local record DeleteDeploymentStrategyInput
    DeploymentStrategyId: string
end

local record DeleteDeploymentStrategyOutput
end

local record DeleteEnvironmentInput
    EnvironmentId: string
    ApplicationId: string
    DeletionProtectionCheck: string
end

local record DeleteEnvironmentOutput
end

local record DeleteExtensionInput
    ExtensionIdentifier: string
    VersionNumber: number
end

local record DeleteExtensionOutput
end

local record DeleteExtensionAssociationInput
    ExtensionAssociationId: string
end

local record DeleteExtensionAssociationOutput
end

local record DeleteHostedConfigurationVersionInput
    ApplicationId: string
    ConfigurationProfileId: string
    VersionNumber: number
end

local record DeleteHostedConfigurationVersionOutput
end

local record GetAccountSettingsInput
end

local record GetAccountSettingsOutput
    DeletionProtection: DeletionProtectionSettings
end

local record GetApplicationInput
    ApplicationId: string
end

local record GetApplicationOutput
    Id: string
    Name: string
    Description: string
end

local record GetConfigurationInput
    Application: string
    Environment: string
    Configuration: string
    ClientId: string
    ClientConfigurationVersion: string
end

local record GetConfigurationOutput
    Content: string
    ConfigurationVersion: string
    ContentType: string
end

local record GetConfigurationProfileInput
    ApplicationId: string
    ConfigurationProfileId: string
end

local record GetConfigurationProfileOutput
    ApplicationId: string
    Id: string
    Name: string
    Description: string
    LocationUri: string
    RetrievalRoleArn: string
    Validators: {Validator}
    Type: string
    KmsKeyArn: string
    KmsKeyIdentifier: string
end

local record GetDeploymentInput
    ApplicationId: string
    EnvironmentId: string
    DeploymentNumber: number
end

local record GetDeploymentOutput
    ApplicationId: string
    EnvironmentId: string
    DeploymentStrategyId: string
    ConfigurationProfileId: string
    DeploymentNumber: number
    ConfigurationName: string
    ConfigurationLocationUri: string
    ConfigurationVersion: string
    Description: string
    DeploymentDurationInMinutes: number
    GrowthType: string
    GrowthFactor: number
    FinalBakeTimeInMinutes: number
    State: string
    EventLog: {DeploymentEvent}
    PercentageComplete: number
    StartedAt: number
    CompletedAt: number
    AppliedExtensions: {AppliedExtension}
    KmsKeyArn: string
    KmsKeyIdentifier: string
    VersionLabel: string
end

local record GetDeploymentStrategyInput
    DeploymentStrategyId: string
end

local record GetDeploymentStrategyOutput
    Id: string
    Name: string
    Description: string
    DeploymentDurationInMinutes: number
    GrowthType: string
    GrowthFactor: number
    FinalBakeTimeInMinutes: number
    ReplicateTo: string
end

local record GetEnvironmentInput
    ApplicationId: string
    EnvironmentId: string
end

local record GetEnvironmentOutput
    ApplicationId: string
    Id: string
    Name: string
    Description: string
    State: string
    Monitors: {Monitor}
end

local record GetExtensionInput
    ExtensionIdentifier: string
    VersionNumber: number
end

local record GetExtensionOutput
    Id: string
    Name: string
    VersionNumber: number
    Arn: string
    Description: string
    Actions: {string : {Action}}
    Parameters: {string : Parameter}
end

local record GetExtensionAssociationInput
    ExtensionAssociationId: string
end

local record GetExtensionAssociationOutput
    Id: string
    ExtensionArn: string
    ResourceArn: string
    Arn: string
    Parameters: {string : string}
    ExtensionVersionNumber: number
end

local record GetHostedConfigurationVersionInput
    ApplicationId: string
    ConfigurationProfileId: string
    VersionNumber: number
end

local record GetHostedConfigurationVersionOutput
    ApplicationId: string
    ConfigurationProfileId: string
    VersionNumber: number
    Description: string
    Content: string
    ContentType: string
    VersionLabel: string
    KmsKeyArn: string
end

local record ListApplicationsInput
    MaxResults: number
    NextToken: string
end

local record ListApplicationsOutput
    Items: {Application}
    NextToken: string
end

local record ListConfigurationProfilesInput
    ApplicationId: string
    MaxResults: number
    NextToken: string
    Type: string
end

local record ListConfigurationProfilesOutput
    Items: {ConfigurationProfileSummary}
    NextToken: string
end

local record ListDeploymentsInput
    ApplicationId: string
    EnvironmentId: string
    MaxResults: number
    NextToken: string
end

local record ListDeploymentsOutput
    Items: {DeploymentSummary}
    NextToken: string
end

local record ListDeploymentStrategiesInput
    MaxResults: number
    NextToken: string
end

local record ListDeploymentStrategiesOutput
    Items: {DeploymentStrategy}
    NextToken: string
end

local record ListEnvironmentsInput
    ApplicationId: string
    MaxResults: number
    NextToken: string
end

local record ListEnvironmentsOutput
    Items: {Environment}
    NextToken: string
end

local record ListExtensionAssociationsInput
    ResourceIdentifier: string
    ExtensionIdentifier: string
    ExtensionVersionNumber: number
    MaxResults: number
    NextToken: string
end

local record ListExtensionAssociationsOutput
    Items: {ExtensionAssociationSummary}
    NextToken: string
end

local record ListExtensionsInput
    MaxResults: number
    NextToken: string
    Name: string
end

local record ListExtensionsOutput
    Items: {ExtensionSummary}
    NextToken: string
end

local record ListHostedConfigurationVersionsInput
    ApplicationId: string
    ConfigurationProfileId: string
    MaxResults: number
    NextToken: string
    VersionLabel: string
end

local record ListHostedConfigurationVersionsOutput
    Items: {HostedConfigurationVersionSummary}
    NextToken: string
end

local record ListTagsForResourceInput
    ResourceArn: string
end

local record ListTagsForResourceOutput
    Tags: {string : string}
end

local record StartDeploymentInput
    ApplicationId: string
    EnvironmentId: string
    DeploymentStrategyId: string
    ConfigurationProfileId: string
    ConfigurationVersion: string
    Description: string
    Tags: {string : string}
    KmsKeyIdentifier: string
    DynamicExtensionParameters: {string : string}
end

local record StartDeploymentOutput
    ApplicationId: string
    EnvironmentId: string
    DeploymentStrategyId: string
    ConfigurationProfileId: string
    DeploymentNumber: number
    ConfigurationName: string
    ConfigurationLocationUri: string
    ConfigurationVersion: string
    Description: string
    DeploymentDurationInMinutes: number
    GrowthType: string
    GrowthFactor: number
    FinalBakeTimeInMinutes: number
    State: string
    EventLog: {DeploymentEvent}
    PercentageComplete: number
    StartedAt: number
    CompletedAt: number
    AppliedExtensions: {AppliedExtension}
    KmsKeyArn: string
    KmsKeyIdentifier: string
    VersionLabel: string
end

local record StopDeploymentInput
    ApplicationId: string
    EnvironmentId: string
    DeploymentNumber: number
    AllowRevert: boolean
end

local record StopDeploymentOutput
    ApplicationId: string
    EnvironmentId: string
    DeploymentStrategyId: string
    ConfigurationProfileId: string
    DeploymentNumber: number
    ConfigurationName: string
    ConfigurationLocationUri: string
    ConfigurationVersion: string
    Description: string
    DeploymentDurationInMinutes: number
    GrowthType: string
    GrowthFactor: number
    FinalBakeTimeInMinutes: number
    State: string
    EventLog: {DeploymentEvent}
    PercentageComplete: number
    StartedAt: number
    CompletedAt: number
    AppliedExtensions: {AppliedExtension}
    KmsKeyArn: string
    KmsKeyIdentifier: string
    VersionLabel: string
end

local record TagResourceInput
    ResourceArn: string
    Tags: {string : string}
end

local record TagResourceOutput
end

local record UntagResourceInput
    ResourceArn: string
    TagKeys: {string}
end

local record UntagResourceOutput
end

local record UpdateAccountSettingsInput
    DeletionProtection: DeletionProtectionSettings
end

local record UpdateAccountSettingsOutput
    DeletionProtection: DeletionProtectionSettings
end

local record UpdateApplicationInput
    ApplicationId: string
    Name: string
    Description: string
end

local record UpdateApplicationOutput
    Id: string
    Name: string
    Description: string
end

local record UpdateConfigurationProfileInput
    ApplicationId: string
    ConfigurationProfileId: string
    Name: string
    Description: string
    RetrievalRoleArn: string
    Validators: {Validator}
    KmsKeyIdentifier: string
end

local record UpdateConfigurationProfileOutput
    ApplicationId: string
    Id: string
    Name: string
    Description: string
    LocationUri: string
    RetrievalRoleArn: string
    Validators: {Validator}
    Type: string
    KmsKeyArn: string
    KmsKeyIdentifier: string
end

local record UpdateDeploymentStrategyInput
    DeploymentStrategyId: string
    Description: string
    DeploymentDurationInMinutes: number
    FinalBakeTimeInMinutes: number
    GrowthFactor: number
    GrowthType: string
end

local record UpdateDeploymentStrategyOutput
    Id: string
    Name: string
    Description: string
    DeploymentDurationInMinutes: number
    GrowthType: string
    GrowthFactor: number
    FinalBakeTimeInMinutes: number
    ReplicateTo: string
end

local record UpdateEnvironmentInput
    ApplicationId: string
    EnvironmentId: string
    Name: string
    Description: string
    Monitors: {Monitor}
end

local record UpdateEnvironmentOutput
    ApplicationId: string
    Id: string
    Name: string
    Description: string
    State: string
    Monitors: {Monitor}
end

local record UpdateExtensionInput
    ExtensionIdentifier: string
    Description: string
    Actions: {string : {Action}}
    Parameters: {string : Parameter}
    VersionNumber: number
end

local record UpdateExtensionOutput
    Id: string
    Name: string
    VersionNumber: number
    Arn: string
    Description: string
    Actions: {string : {Action}}
    Parameters: {string : Parameter}
end

local record UpdateExtensionAssociationInput
    ExtensionAssociationId: string
    Parameters: {string : string}
end

local record UpdateExtensionAssociationOutput
    Id: string
    ExtensionArn: string
    ResourceArn: string
    Arn: string
    Parameters: {string : string}
    ExtensionVersionNumber: number
end

local record ValidateConfigurationInput
    ApplicationId: string
    ConfigurationProfileId: string
    ConfigurationVersion: string
end

local record ValidateConfigurationOutput
end

local record BadRequestException
    Message: string
    Reason: string
    Details: BadRequestDetails
end

local record InternalServerException
    Message: string
end

local record ServiceQuotaExceededException
    Message: string
end

local record BadRequestException
    Message: string
    Reason: string
    Details: BadRequestDetails
end

local record InternalServerException
    Message: string
end

local record ResourceNotFoundException
    Message: string
    ResourceName: string
end

local record ServiceQuotaExceededException
    Message: string
end

local record BadRequestException
    Message: string
    Reason: string
    Details: BadRequestDetails
end

local record InternalServerException
    Message: string
end

local record ServiceQuotaExceededException
    Message: string
end

local record BadRequestException
    Message: string
    Reason: string
    Details: BadRequestDetails
end

local record InternalServerException
    Message: string
end

local record ResourceNotFoundException
    Message: string
    ResourceName: string
end

local record ServiceQuotaExceededException
    Message: string
end

local record BadRequestException
    Message: string
    Reason: string
    Details: BadRequestDetails
end

local record ConflictException
    Message: string
end

local record InternalServerException
    Message: string
end

local record ServiceQuotaExceededException
    Message: string
end

local record BadRequestException
    Message: string
    Reason: string
    Details: BadRequestDetails
end

local record InternalServerException
    Message: string
end

local record ResourceNotFoundException
    Message: string
    ResourceName: string
end

local record ServiceQuotaExceededException
    Message: string
end

local record BadRequestException
    Message: string
    Reason: string
    Details: BadRequestDetails
end

local record ConflictException
    Message: string
end

local record InternalServerException
    Message: string
end

local record PayloadTooLargeException
    Message: string
    Measure: string
    Limit: number
    Size: number
end

local record ResourceNotFoundException
    Message: string
    ResourceName: string
end

local record ServiceQuotaExceededException
    Message: string
end

local record BadRequestException
    Message: string
    Reason: string
    Details: BadRequestDetails
end

local record InternalServerException
    Message: string
end

local record ResourceNotFoundException
    Message: string
    ResourceName: string
end

local record BadRequestException
    Message: string
    Reason: string
    Details: BadRequestDetails
end

local record ConflictException
    Message: string
end

local record InternalServerException
    Message: string
end

local record ResourceNotFoundException
    Message: string
    ResourceName: string
end

local record BadRequestException
    Message: string
    Reason: string
    Details: BadRequestDetails
end

local record InternalServerException
    Message: string
end

local record ResourceNotFoundException
    Message: string
    ResourceName: string
end

local record BadRequestException
    Message: string
    Reason: string
    Details: BadRequestDetails
end

local record ConflictException
    Message: string
end

local record InternalServerException
    Message: string
end

local record ResourceNotFoundException
    Message: string
    ResourceName: string
end

local record BadRequestException
    Message: string
    Reason: string
    Details: BadRequestDetails
end

local record InternalServerException
    Message: string
end

local record ResourceNotFoundException
    Message: string
    ResourceName: string
end

local record BadRequestException
    Message: string
    Reason: string
    Details: BadRequestDetails
end

local record InternalServerException
    Message: string
end

local record ResourceNotFoundException
    Message: string
    ResourceName: string
end

local record BadRequestException
    Message: string
    Reason: string
    Details: BadRequestDetails
end

local record InternalServerException
    Message: string
end

local record ResourceNotFoundException
    Message: string
    ResourceName: string
end

local record BadRequestException
    Message: string
    Reason: string
    Details: BadRequestDetails
end

local record InternalServerException
    Message: string
end

local record BadRequestException
    Message: string
    Reason: string
    Details: BadRequestDetails
end

local record InternalServerException
    Message: string
end

local record ResourceNotFoundException
    Message: string
    ResourceName: string
end

local record BadRequestException
    Message: string
    Reason: string
    Details: BadRequestDetails
end

local record InternalServerException
    Message: string
end

local record ResourceNotFoundException
    Message: string
    ResourceName: string
end

local record BadRequestException
    Message: string
    Reason: string
    Details: BadRequestDetails
end

local record InternalServerException
    Message: string
end

local record ResourceNotFoundException
    Message: string
    ResourceName: string
end

local record BadRequestException
    Message: string
    Reason: string
    Details: BadRequestDetails
end

local record InternalServerException
    Message: string
end

local record ResourceNotFoundException
    Message: string
    ResourceName: string
end

local record BadRequestException
    Message: string
    Reason: string
    Details: BadRequestDetails
end

local record InternalServerException
    Message: string
end

local record ResourceNotFoundException
    Message: string
    ResourceName: string
end

local record BadRequestException
    Message: string
    Reason: string
    Details: BadRequestDetails
end

local record InternalServerException
    Message: string
end

local record ResourceNotFoundException
    Message: string
    ResourceName: string
end

local record BadRequestException
    Message: string
    Reason: string
    Details: BadRequestDetails
end

local record InternalServerException
    Message: string
end

local record ResourceNotFoundException
    Message: string
    ResourceName: string
end

local record BadRequestException
    Message: string
    Reason: string
    Details: BadRequestDetails
end

local record InternalServerException
    Message: string
end

local record ResourceNotFoundException
    Message: string
    ResourceName: string
end

local record BadRequestException
    Message: string
    Reason: string
    Details: BadRequestDetails
end

local record InternalServerException
    Message: string
end

local record ResourceNotFoundException
    Message: string
    ResourceName: string
end

local record BadRequestException
    Message: string
    Reason: string
    Details: BadRequestDetails
end

local record InternalServerException
    Message: string
end

local record BadRequestException
    Message: string
    Reason: string
    Details: BadRequestDetails
end

local record InternalServerException
    Message: string
end

local record ResourceNotFoundException
    Message: string
    ResourceName: string
end

local record BadRequestException
    Message: string
    Reason: string
    Details: BadRequestDetails
end

local record InternalServerException
    Message: string
end

local record ResourceNotFoundException
    Message: string
    ResourceName: string
end

local record BadRequestException
    Message: string
    Reason: string
    Details: BadRequestDetails
end

local record InternalServerException
    Message: string
end

local record BadRequestException
    Message: string
    Reason: string
    Details: BadRequestDetails
end

local record InternalServerException
    Message: string
end

local record ResourceNotFoundException
    Message: string
    ResourceName: string
end

local record BadRequestException
    Message: string
    Reason: string
    Details: BadRequestDetails
end

local record InternalServerException
    Message: string
end

local record BadRequestException
    Message: string
    Reason: string
    Details: BadRequestDetails
end

local record InternalServerException
    Message: string
end

local record BadRequestException
    Message: string
    Reason: string
    Details: BadRequestDetails
end

local record InternalServerException
    Message: string
end

local record ResourceNotFoundException
    Message: string
    ResourceName: string
end

local record BadRequestException
    Message: string
    Reason: string
    Details: BadRequestDetails
end

local record InternalServerException
    Message: string
end

local record ResourceNotFoundException
    Message: string
    ResourceName: string
end

local record BadRequestException
    Message: string
    Reason: string
    Details: BadRequestDetails
end

local record ConflictException
    Message: string
end

local record InternalServerException
    Message: string
end

local record ResourceNotFoundException
    Message: string
    ResourceName: string
end

local record BadRequestException
    Message: string
    Reason: string
    Details: BadRequestDetails
end

local record InternalServerException
    Message: string
end

local record ResourceNotFoundException
    Message: string
    ResourceName: string
end

local record BadRequestException
    Message: string
    Reason: string
    Details: BadRequestDetails
end

local record InternalServerException
    Message: string
end

local record ResourceNotFoundException
    Message: string
    ResourceName: string
end

local record BadRequestException
    Message: string
    Reason: string
    Details: BadRequestDetails
end

local record InternalServerException
    Message: string
end

local record ResourceNotFoundException
    Message: string
    ResourceName: string
end

local record BadRequestException
    Message: string
    Reason: string
    Details: BadRequestDetails
end

local record InternalServerException
    Message: string
end

local record BadRequestException
    Message: string
    Reason: string
    Details: BadRequestDetails
end

local record InternalServerException
    Message: string
end

local record ResourceNotFoundException
    Message: string
    ResourceName: string
end

local record BadRequestException
    Message: string
    Reason: string
    Details: BadRequestDetails
end

local record InternalServerException
    Message: string
end

local record ResourceNotFoundException
    Message: string
    ResourceName: string
end

local record BadRequestException
    Message: string
    Reason: string
    Details: BadRequestDetails
end

local record InternalServerException
    Message: string
end

local record ResourceNotFoundException
    Message: string
    ResourceName: string
end

local record BadRequestException
    Message: string
    Reason: string
    Details: BadRequestDetails
end

local record InternalServerException
    Message: string
end

local record ResourceNotFoundException
    Message: string
    ResourceName: string
end

local record BadRequestException
    Message: string
    Reason: string
    Details: BadRequestDetails
end

local record ConflictException
    Message: string
end

local record InternalServerException
    Message: string
end

local record ResourceNotFoundException
    Message: string
    ResourceName: string
end

local record BadRequestException
    Message: string
    Reason: string
    Details: BadRequestDetails
end

local record InternalServerException
    Message: string
end

local record ResourceNotFoundException
    Message: string
    ResourceName: string
end

local record BadRequestException
    Message: string
    Reason: string
    Details: BadRequestDetails
end

local record InternalServerException
    Message: string
end

local record ResourceNotFoundException
    Message: string
    ResourceName: string
end

local type DeletionProtectionCheck = "ACCOUNT_DEFAULT" | "APPLY" | "BYPASS"

local type GrowthType = "LINEAR" | "EXPONENTIAL"

local type ReplicateTo = "NONE" | "SSM_DOCUMENT"

local type DeploymentState = "BAKING" | "VALIDATING" | "DEPLOYING" | "COMPLETE" | "ROLLING_BACK" | "ROLLED_BACK" | "REVERTED"

local type EnvironmentState = "READY_FOR_DEPLOYMENT" | "DEPLOYING" | "ROLLING_BACK" | "ROLLED_BACK" | "REVERTED"

local record M
    CreateApplicationInput: CreateApplicationInput
    CreateApplicationOutput: CreateApplicationOutput
    CreateConfigurationProfileInput: CreateConfigurationProfileInput
    CreateConfigurationProfileOutput: CreateConfigurationProfileOutput
    CreateDeploymentStrategyInput: CreateDeploymentStrategyInput
    CreateDeploymentStrategyOutput: CreateDeploymentStrategyOutput
    CreateEnvironmentInput: CreateEnvironmentInput
    CreateEnvironmentOutput: CreateEnvironmentOutput
    CreateExtensionInput: CreateExtensionInput
    CreateExtensionOutput: CreateExtensionOutput
    CreateExtensionAssociationInput: CreateExtensionAssociationInput
    CreateExtensionAssociationOutput: CreateExtensionAssociationOutput
    CreateHostedConfigurationVersionInput: CreateHostedConfigurationVersionInput
    CreateHostedConfigurationVersionOutput: CreateHostedConfigurationVersionOutput
    DeleteApplicationInput: DeleteApplicationInput
    DeleteApplicationOutput: DeleteApplicationOutput
    DeleteConfigurationProfileInput: DeleteConfigurationProfileInput
    DeleteConfigurationProfileOutput: DeleteConfigurationProfileOutput
    DeleteDeploymentStrategyInput: DeleteDeploymentStrategyInput
    DeleteDeploymentStrategyOutput: DeleteDeploymentStrategyOutput
    DeleteEnvironmentInput: DeleteEnvironmentInput
    DeleteEnvironmentOutput: DeleteEnvironmentOutput
    DeleteExtensionInput: DeleteExtensionInput
    DeleteExtensionOutput: DeleteExtensionOutput
    DeleteExtensionAssociationInput: DeleteExtensionAssociationInput
    DeleteExtensionAssociationOutput: DeleteExtensionAssociationOutput
    DeleteHostedConfigurationVersionInput: DeleteHostedConfigurationVersionInput
    DeleteHostedConfigurationVersionOutput: DeleteHostedConfigurationVersionOutput
    GetAccountSettingsInput: GetAccountSettingsInput
    GetAccountSettingsOutput: GetAccountSettingsOutput
    GetApplicationInput: GetApplicationInput
    GetApplicationOutput: GetApplicationOutput
    GetConfigurationInput: GetConfigurationInput
    GetConfigurationOutput: GetConfigurationOutput
    GetConfigurationProfileInput: GetConfigurationProfileInput
    GetConfigurationProfileOutput: GetConfigurationProfileOutput
    GetDeploymentInput: GetDeploymentInput
    GetDeploymentOutput: GetDeploymentOutput
    GetDeploymentStrategyInput: GetDeploymentStrategyInput
    GetDeploymentStrategyOutput: GetDeploymentStrategyOutput
    GetEnvironmentInput: GetEnvironmentInput
    GetEnvironmentOutput: GetEnvironmentOutput
    GetExtensionInput: GetExtensionInput
    GetExtensionOutput: GetExtensionOutput
    GetExtensionAssociationInput: GetExtensionAssociationInput
    GetExtensionAssociationOutput: GetExtensionAssociationOutput
    GetHostedConfigurationVersionInput: GetHostedConfigurationVersionInput
    GetHostedConfigurationVersionOutput: GetHostedConfigurationVersionOutput
    ListApplicationsInput: ListApplicationsInput
    ListApplicationsOutput: ListApplicationsOutput
    ListConfigurationProfilesInput: ListConfigurationProfilesInput
    ListConfigurationProfilesOutput: ListConfigurationProfilesOutput
    ListDeploymentsInput: ListDeploymentsInput
    ListDeploymentsOutput: ListDeploymentsOutput
    ListDeploymentStrategiesInput: ListDeploymentStrategiesInput
    ListDeploymentStrategiesOutput: ListDeploymentStrategiesOutput
    ListEnvironmentsInput: ListEnvironmentsInput
    ListEnvironmentsOutput: ListEnvironmentsOutput
    ListExtensionAssociationsInput: ListExtensionAssociationsInput
    ListExtensionAssociationsOutput: ListExtensionAssociationsOutput
    ListExtensionsInput: ListExtensionsInput
    ListExtensionsOutput: ListExtensionsOutput
    ListHostedConfigurationVersionsInput: ListHostedConfigurationVersionsInput
    ListHostedConfigurationVersionsOutput: ListHostedConfigurationVersionsOutput
    ListTagsForResourceInput: ListTagsForResourceInput
    ListTagsForResourceOutput: ListTagsForResourceOutput
    StartDeploymentInput: StartDeploymentInput
    StartDeploymentOutput: StartDeploymentOutput
    StopDeploymentInput: StopDeploymentInput
    StopDeploymentOutput: StopDeploymentOutput
    TagResourceInput: TagResourceInput
    TagResourceOutput: TagResourceOutput
    UntagResourceInput: UntagResourceInput
    UntagResourceOutput: UntagResourceOutput
    UpdateAccountSettingsInput: UpdateAccountSettingsInput
    UpdateAccountSettingsOutput: UpdateAccountSettingsOutput
    UpdateApplicationInput: UpdateApplicationInput
    UpdateApplicationOutput: UpdateApplicationOutput
    UpdateConfigurationProfileInput: UpdateConfigurationProfileInput
    UpdateConfigurationProfileOutput: UpdateConfigurationProfileOutput
    UpdateDeploymentStrategyInput: UpdateDeploymentStrategyInput
    UpdateDeploymentStrategyOutput: UpdateDeploymentStrategyOutput
    UpdateEnvironmentInput: UpdateEnvironmentInput
    UpdateEnvironmentOutput: UpdateEnvironmentOutput
    UpdateExtensionInput: UpdateExtensionInput
    UpdateExtensionOutput: UpdateExtensionOutput
    UpdateExtensionAssociationInput: UpdateExtensionAssociationInput
    UpdateExtensionAssociationOutput: UpdateExtensionAssociationOutput
    ValidateConfigurationInput: ValidateConfigurationInput
    ValidateConfigurationOutput: ValidateConfigurationOutput
end

return M
