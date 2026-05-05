local record DeleteResourcePermissionInput
    ActionType: string
    SourceResourceArn: string
    ResourceArn: string
end

local record DeleteResourcePermissionOutput
    Policy: string
end

local record DeregisterApplicationInput
    ApplicationId: string
end

local record DeregisterApplicationOutput
end

local record GetApplicationInput
    ApplicationId: string
    ApplicationArn: string
    AppRegistryArn: string
end

local record GetApplicationOutput
    Application: Application
    Tags: {string : string}
end

local record GetComponentInput
    ApplicationId: string
    ComponentId: string
end

local record GetComponentOutput
    Component: Component
    Tags: {string : string}
end

local record GetConfigurationCheckOperationInput
    OperationId: string
end

local record GetConfigurationCheckOperationOutput
    ConfigurationCheckOperation: ConfigurationCheckOperation
end

local record GetDatabaseInput
    ApplicationId: string
    ComponentId: string
    DatabaseId: string
    DatabaseArn: string
end

local record GetDatabaseOutput
    Database: Database
    Tags: {string : string}
end

local record GetOperationInput
    OperationId: string
end

local record GetOperationOutput
    Operation: Operation
end

local record GetResourcePermissionInput
    ActionType: string
    ResourceArn: string
end

local record GetResourcePermissionOutput
    Policy: string
end

local record ListApplicationsInput
    NextToken: string
    MaxResults: number
    Filters: {Filter}
end

local record ListApplicationsOutput
    Applications: {ApplicationSummary}
    NextToken: string
end

local record ListComponentsInput
    ApplicationId: string
    NextToken: string
    MaxResults: number
end

local record ListComponentsOutput
    Components: {ComponentSummary}
    NextToken: string
end

local record ListConfigurationCheckDefinitionsInput
    MaxResults: number
    NextToken: string
end

local record ListConfigurationCheckDefinitionsOutput
    ConfigurationChecks: {ConfigurationCheckDefinition}
    NextToken: string
end

local record ListConfigurationCheckOperationsInput
    ApplicationId: string
    ListMode: string
    MaxResults: number
    NextToken: string
    Filters: {Filter}
end

local record ListConfigurationCheckOperationsOutput
    ConfigurationCheckOperations: {ConfigurationCheckOperation}
    NextToken: string
end

local record ListDatabasesInput
    ApplicationId: string
    ComponentId: string
    NextToken: string
    MaxResults: number
end

local record ListDatabasesOutput
    Databases: {DatabaseSummary}
    NextToken: string
end

local record ListOperationEventsInput
    OperationId: string
    MaxResults: number
    NextToken: string
    Filters: {Filter}
end

local record ListOperationEventsOutput
    OperationEvents: {OperationEvent}
    NextToken: string
end

local record ListOperationsInput
    ApplicationId: string
    MaxResults: number
    NextToken: string
    Filters: {Filter}
end

local record ListOperationsOutput
    Operations: {Operation}
    NextToken: string
end

local record ListSubCheckResultsInput
    OperationId: string
    MaxResults: number
    NextToken: string
end

local record ListSubCheckResultsOutput
    SubCheckResults: {SubCheckResult}
    NextToken: string
end

local record ListSubCheckRuleResultsInput
    SubCheckResultId: string
    MaxResults: number
    NextToken: string
end

local record ListSubCheckRuleResultsOutput
    RuleResults: {RuleResult}
    NextToken: string
end

local record ListTagsForResourceInput
    resourceArn: string
end

local record ListTagsForResourceOutput
    tags: {string : string}
end

local record PutResourcePermissionInput
    ActionType: string
    SourceResourceArn: string
    ResourceArn: string
end

local record PutResourcePermissionOutput
    Policy: string
end

local record RegisterApplicationInput
    ApplicationId: string
    ApplicationType: string
    Instances: {string}
    SapInstanceNumber: string
    Sid: string
    Tags: {string : string}
    Credentials: {ApplicationCredential}
    DatabaseArn: string
    ComponentsInfo: {ComponentInfo}
end

local record RegisterApplicationOutput
    Application: Application
    OperationId: string
end

local record StartApplicationInput
    ApplicationId: string
end

local record StartApplicationOutput
    OperationId: string
end

local record StartApplicationRefreshInput
    ApplicationId: string
end

local record StartApplicationRefreshOutput
    OperationId: string
end

local record StartConfigurationChecksInput
    ApplicationId: string
    ConfigurationCheckIds: {string}
end

local record StartConfigurationChecksOutput
    ConfigurationCheckOperations: {ConfigurationCheckOperation}
end

local record StopApplicationInput
    ApplicationId: string
    StopConnectedEntity: string
    IncludeEc2InstanceShutdown: boolean
end

local record StopApplicationOutput
    OperationId: string
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

local record UpdateApplicationSettingsInput
    ApplicationId: string
    CredentialsToAddOrUpdate: {ApplicationCredential}
    CredentialsToRemove: {ApplicationCredential}
    Backint: BackintConfig
    DatabaseArn: string
end

local record UpdateApplicationSettingsOutput
    Message: string
    OperationIds: {string}
end

local record InternalServerException
    Message: string
end

local record ResourceNotFoundException
    Message: string
end

local record ValidationException
    Message: string
end

local record InternalServerException
    Message: string
end

local record UnauthorizedException
    Message: string
end

local record ValidationException
    Message: string
end

local record InternalServerException
    Message: string
end

local record ValidationException
    Message: string
end

local record InternalServerException
    Message: string
end

local record UnauthorizedException
    Message: string
end

local record ValidationException
    Message: string
end

local record InternalServerException
    Message: string
end

local record ValidationException
    Message: string
end

local record InternalServerException
    Message: string
end

local record ValidationException
    Message: string
end

local record InternalServerException
    Message: string
end

local record ValidationException
    Message: string
end

local record InternalServerException
    Message: string
end

local record ResourceNotFoundException
    Message: string
end

local record ValidationException
    Message: string
end

local record InternalServerException
    Message: string
end

local record ResourceNotFoundException
    Message: string
end

local record ValidationException
    Message: string
end

local record InternalServerException
    Message: string
end

local record ResourceNotFoundException
    Message: string
end

local record UnauthorizedException
    Message: string
end

local record ValidationException
    Message: string
end

local record InternalServerException
    Message: string
end

local record ValidationException
    Message: string
end

local record InternalServerException
    Message: string
end

local record ResourceNotFoundException
    Message: string
end

local record ValidationException
    Message: string
end

local record InternalServerException
    Message: string
end

local record ResourceNotFoundException
    Message: string
end

local record ValidationException
    Message: string
end

local record InternalServerException
    Message: string
end

local record ValidationException
    Message: string
end

local record InternalServerException
    Message: string
end

local record ValidationException
    Message: string
end

local record InternalServerException
    Message: string
end

local record ValidationException
    Message: string
end

local record InternalServerException
    Message: string
end

local record ValidationException
    Message: string
end

local record ConflictException
    Message: string
end

local record ResourceNotFoundException
    Message: string
end

local record ValidationException
    Message: string
end

local record InternalServerException
    Message: string
end

local record ResourceNotFoundException
    Message: string
end

local record ValidationException
    Message: string
end

local record ConflictException
    Message: string
end

local record InternalServerException
    Message: string
end

local record ResourceNotFoundException
    Message: string
end

local record ValidationException
    Message: string
end

local record ConflictException
    Message: string
end

local record InternalServerException
    Message: string
end

local record ResourceNotFoundException
    Message: string
end

local record ValidationException
    Message: string
end

local record ConflictException
    Message: string
end

local record InternalServerException
    Message: string
end

local record ResourceNotFoundException
    Message: string
end

local record UnauthorizedException
    Message: string
end

local record ValidationException
    Message: string
end

local record ConflictException
    Message: string
end

local record InternalServerException
    Message: string
end

local record ResourceNotFoundException
    Message: string
end

local record ValidationException
    Message: string
end

local record ConflictException
    Message: string
end

local record InternalServerException
    Message: string
end

local record ResourceNotFoundException
    Message: string
end

local record ValidationException
    Message: string
end

local record ConflictException
    Message: string
end

local record ResourceNotFoundException
    Message: string
end

local record ValidationException
    Message: string
end

local record ConflictException
    Message: string
end

local record ResourceNotFoundException
    Message: string
end

local record ValidationException
    Message: string
end

local record ConflictException
    Message: string
end

local record InternalServerException
    Message: string
end

local record ResourceNotFoundException
    Message: string
end

local record UnauthorizedException
    Message: string
end

local record ValidationException
    Message: string
end

local type ConnectedEntityType = "DBMS"

local type PermissionActionType = "RESTORE"

local type ConfigurationCheckOperationListingMode = "ALL_OPERATIONS" | "LATEST_PER_CHECK"

local type ApplicationType = "HANA" | "SAP_ABAP"

local record M
    DeleteResourcePermissionInput: DeleteResourcePermissionInput
    DeleteResourcePermissionOutput: DeleteResourcePermissionOutput
    DeregisterApplicationInput: DeregisterApplicationInput
    DeregisterApplicationOutput: DeregisterApplicationOutput
    GetApplicationInput: GetApplicationInput
    GetApplicationOutput: GetApplicationOutput
    GetComponentInput: GetComponentInput
    GetComponentOutput: GetComponentOutput
    GetConfigurationCheckOperationInput: GetConfigurationCheckOperationInput
    GetConfigurationCheckOperationOutput: GetConfigurationCheckOperationOutput
    GetDatabaseInput: GetDatabaseInput
    GetDatabaseOutput: GetDatabaseOutput
    GetOperationInput: GetOperationInput
    GetOperationOutput: GetOperationOutput
    GetResourcePermissionInput: GetResourcePermissionInput
    GetResourcePermissionOutput: GetResourcePermissionOutput
    ListApplicationsInput: ListApplicationsInput
    ListApplicationsOutput: ListApplicationsOutput
    ListComponentsInput: ListComponentsInput
    ListComponentsOutput: ListComponentsOutput
    ListConfigurationCheckDefinitionsInput: ListConfigurationCheckDefinitionsInput
    ListConfigurationCheckDefinitionsOutput: ListConfigurationCheckDefinitionsOutput
    ListConfigurationCheckOperationsInput: ListConfigurationCheckOperationsInput
    ListConfigurationCheckOperationsOutput: ListConfigurationCheckOperationsOutput
    ListDatabasesInput: ListDatabasesInput
    ListDatabasesOutput: ListDatabasesOutput
    ListOperationEventsInput: ListOperationEventsInput
    ListOperationEventsOutput: ListOperationEventsOutput
    ListOperationsInput: ListOperationsInput
    ListOperationsOutput: ListOperationsOutput
    ListSubCheckResultsInput: ListSubCheckResultsInput
    ListSubCheckResultsOutput: ListSubCheckResultsOutput
    ListSubCheckRuleResultsInput: ListSubCheckRuleResultsInput
    ListSubCheckRuleResultsOutput: ListSubCheckRuleResultsOutput
    ListTagsForResourceInput: ListTagsForResourceInput
    ListTagsForResourceOutput: ListTagsForResourceOutput
    PutResourcePermissionInput: PutResourcePermissionInput
    PutResourcePermissionOutput: PutResourcePermissionOutput
    RegisterApplicationInput: RegisterApplicationInput
    RegisterApplicationOutput: RegisterApplicationOutput
    StartApplicationInput: StartApplicationInput
    StartApplicationOutput: StartApplicationOutput
    StartApplicationRefreshInput: StartApplicationRefreshInput
    StartApplicationRefreshOutput: StartApplicationRefreshOutput
    StartConfigurationChecksInput: StartConfigurationChecksInput
    StartConfigurationChecksOutput: StartConfigurationChecksOutput
    StopApplicationInput: StopApplicationInput
    StopApplicationOutput: StopApplicationOutput
    TagResourceInput: TagResourceInput
    TagResourceOutput: TagResourceOutput
    UntagResourceInput: UntagResourceInput
    UntagResourceOutput: UntagResourceOutput
    UpdateApplicationSettingsInput: UpdateApplicationSettingsInput
    UpdateApplicationSettingsOutput: UpdateApplicationSettingsOutput
end

return M
