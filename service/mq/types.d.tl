local record CreateBrokerInput
    AuthenticationStrategy: string
    AutoMinorVersionUpgrade: boolean
    BrokerName: string
    Configuration: ConfigurationId
    CreatorRequestId: string
    DeploymentMode: string
    EncryptionOptions: EncryptionOptions
    EngineType: string
    EngineVersion: string
    HostInstanceType: string
    LdapServerMetadata: LdapServerMetadataInput
    Logs: Logs
    MaintenanceWindowStartTime: WeeklyStartTime
    PubliclyAccessible: boolean
    SecurityGroups: {string}
    StorageType: string
    SubnetIds: {string}
    Tags: {string : string}
    Users: {User}
    DataReplicationMode: string
    DataReplicationPrimaryBrokerArn: string
end

local record CreateBrokerOutput
    BrokerArn: string
    BrokerId: string
end

local record CreateConfigurationInput
    AuthenticationStrategy: string
    EngineType: string
    EngineVersion: string
    Name: string
    Tags: {string : string}
end

local record CreateConfigurationOutput
    Arn: string
    AuthenticationStrategy: string
    Created: number
    Id: string
    LatestRevision: ConfigurationRevision
    Name: string
end

local record CreateTagsInput
    ResourceArn: string
    Tags: {string : string}
end

local record CreateTagsOutput
end

local record CreateUserInput
    BrokerId: string
    ConsoleAccess: boolean
    Groups: {string}
    Password: string
    Username: string
    ReplicationUser: boolean
end

local record CreateUserOutput
end

local record DeleteBrokerInput
    BrokerId: string
end

local record DeleteBrokerOutput
    BrokerId: string
end

local record DeleteConfigurationInput
    ConfigurationId: string
end

local record DeleteConfigurationOutput
    ConfigurationId: string
end

local record DeleteTagsInput
    ResourceArn: string
    TagKeys: {string}
end

local record DeleteTagsOutput
end

local record DeleteUserInput
    BrokerId: string
    Username: string
end

local record DeleteUserOutput
end

local record DescribeBrokerInput
    BrokerId: string
end

local record DescribeBrokerOutput
    ActionsRequired: {ActionRequired}
    AuthenticationStrategy: string
    AutoMinorVersionUpgrade: boolean
    BrokerArn: string
    BrokerId: string
    BrokerInstances: {BrokerInstance}
    BrokerName: string
    BrokerState: string
    Configurations: Configurations
    Created: number
    DeploymentMode: string
    EncryptionOptions: EncryptionOptions
    EngineType: string
    EngineVersion: string
    HostInstanceType: string
    LdapServerMetadata: LdapServerMetadataOutput
    Logs: LogsSummary
    MaintenanceWindowStartTime: WeeklyStartTime
    PendingAuthenticationStrategy: string
    PendingEngineVersion: string
    PendingHostInstanceType: string
    PendingLdapServerMetadata: LdapServerMetadataOutput
    PendingSecurityGroups: {string}
    PubliclyAccessible: boolean
    SecurityGroups: {string}
    StorageType: string
    SubnetIds: {string}
    Tags: {string : string}
    Users: {UserSummary}
    DataReplicationMetadata: DataReplicationMetadataOutput
    DataReplicationMode: string
    PendingDataReplicationMetadata: DataReplicationMetadataOutput
    PendingDataReplicationMode: string
end

local record DescribeBrokerEngineTypesInput
    EngineType: string
    MaxResults: number
    NextToken: string
end

local record DescribeBrokerEngineTypesOutput
    BrokerEngineTypes: {BrokerEngineType}
    MaxResults: number
    NextToken: string
end

local record DescribeBrokerInstanceOptionsInput
    EngineType: string
    HostInstanceType: string
    MaxResults: number
    NextToken: string
    StorageType: string
end

local record DescribeBrokerInstanceOptionsOutput
    BrokerInstanceOptions: {BrokerInstanceOption}
    MaxResults: number
    NextToken: string
end

local record DescribeConfigurationInput
    ConfigurationId: string
end

local record DescribeConfigurationOutput
    Arn: string
    AuthenticationStrategy: string
    Created: number
    Description: string
    EngineType: string
    EngineVersion: string
    Id: string
    LatestRevision: ConfigurationRevision
    Name: string
    Tags: {string : string}
end

local record DescribeConfigurationRevisionInput
    ConfigurationId: string
    ConfigurationRevision: string
end

local record DescribeConfigurationRevisionOutput
    ConfigurationId: string
    Created: number
    Data: string
    Description: string
end

local record DescribeUserInput
    BrokerId: string
    Username: string
end

local record DescribeUserOutput
    BrokerId: string
    ConsoleAccess: boolean
    Groups: {string}
    Pending: UserPendingChanges
    Username: string
    ReplicationUser: boolean
end

local record ListBrokersInput
    MaxResults: number
    NextToken: string
end

local record ListBrokersOutput
    BrokerSummaries: {BrokerSummary}
    NextToken: string
end

local record ListConfigurationRevisionsInput
    ConfigurationId: string
    MaxResults: number
    NextToken: string
end

local record ListConfigurationRevisionsOutput
    ConfigurationId: string
    MaxResults: number
    NextToken: string
    Revisions: {ConfigurationRevision}
end

local record ListConfigurationsInput
    MaxResults: number
    NextToken: string
end

local record ListConfigurationsOutput
    Configurations: {Configuration}
    MaxResults: number
    NextToken: string
end

local record ListTagsInput
    ResourceArn: string
end

local record ListTagsOutput
    Tags: {string : string}
end

local record ListUsersInput
    BrokerId: string
    MaxResults: number
    NextToken: string
end

local record ListUsersOutput
    BrokerId: string
    MaxResults: number
    NextToken: string
    Users: {UserSummary}
end

local record PromoteInput
    BrokerId: string
    Mode: string
end

local record PromoteOutput
    BrokerId: string
end

local record RebootBrokerInput
    BrokerId: string
end

local record RebootBrokerOutput
end

local record UpdateBrokerInput
    AuthenticationStrategy: string
    AutoMinorVersionUpgrade: boolean
    BrokerId: string
    Configuration: ConfigurationId
    EngineVersion: string
    HostInstanceType: string
    LdapServerMetadata: LdapServerMetadataInput
    Logs: Logs
    MaintenanceWindowStartTime: WeeklyStartTime
    SecurityGroups: {string}
    DataReplicationMode: string
end

local record UpdateBrokerOutput
    AuthenticationStrategy: string
    AutoMinorVersionUpgrade: boolean
    BrokerId: string
    Configuration: ConfigurationId
    EngineVersion: string
    HostInstanceType: string
    LdapServerMetadata: LdapServerMetadataOutput
    Logs: Logs
    MaintenanceWindowStartTime: WeeklyStartTime
    SecurityGroups: {string}
    DataReplicationMetadata: DataReplicationMetadataOutput
    DataReplicationMode: string
    PendingDataReplicationMetadata: DataReplicationMetadataOutput
    PendingDataReplicationMode: string
end

local record UpdateConfigurationInput
    ConfigurationId: string
    Data: string
    Description: string
end

local record UpdateConfigurationOutput
    Arn: string
    Created: number
    Id: string
    LatestRevision: ConfigurationRevision
    Name: string
    Warnings: {SanitizationWarning}
end

local record UpdateUserInput
    BrokerId: string
    ConsoleAccess: boolean
    Groups: {string}
    Password: string
    Username: string
    ReplicationUser: boolean
end

local record UpdateUserOutput
end

local record BadRequestException
    ErrorAttribute: string
    Message: string
end

local record ConflictException
    ErrorAttribute: string
    Message: string
end

local record ForbiddenException
    ErrorAttribute: string
    Message: string
end

local record InternalServerErrorException
    ErrorAttribute: string
    Message: string
end

local record UnauthorizedException
    ErrorAttribute: string
    Message: string
end

local record BadRequestException
    ErrorAttribute: string
    Message: string
end

local record ConflictException
    ErrorAttribute: string
    Message: string
end

local record ForbiddenException
    ErrorAttribute: string
    Message: string
end

local record InternalServerErrorException
    ErrorAttribute: string
    Message: string
end

local record BadRequestException
    ErrorAttribute: string
    Message: string
end

local record ForbiddenException
    ErrorAttribute: string
    Message: string
end

local record InternalServerErrorException
    ErrorAttribute: string
    Message: string
end

local record NotFoundException
    ErrorAttribute: string
    Message: string
end

local record BadRequestException
    ErrorAttribute: string
    Message: string
end

local record ConflictException
    ErrorAttribute: string
    Message: string
end

local record ForbiddenException
    ErrorAttribute: string
    Message: string
end

local record InternalServerErrorException
    ErrorAttribute: string
    Message: string
end

local record NotFoundException
    ErrorAttribute: string
    Message: string
end

local record BadRequestException
    ErrorAttribute: string
    Message: string
end

local record ForbiddenException
    ErrorAttribute: string
    Message: string
end

local record InternalServerErrorException
    ErrorAttribute: string
    Message: string
end

local record NotFoundException
    ErrorAttribute: string
    Message: string
end

local record BadRequestException
    ErrorAttribute: string
    Message: string
end

local record ConflictException
    ErrorAttribute: string
    Message: string
end

local record ForbiddenException
    ErrorAttribute: string
    Message: string
end

local record InternalServerErrorException
    ErrorAttribute: string
    Message: string
end

local record NotFoundException
    ErrorAttribute: string
    Message: string
end

local record BadRequestException
    ErrorAttribute: string
    Message: string
end

local record ForbiddenException
    ErrorAttribute: string
    Message: string
end

local record InternalServerErrorException
    ErrorAttribute: string
    Message: string
end

local record NotFoundException
    ErrorAttribute: string
    Message: string
end

local record BadRequestException
    ErrorAttribute: string
    Message: string
end

local record ForbiddenException
    ErrorAttribute: string
    Message: string
end

local record InternalServerErrorException
    ErrorAttribute: string
    Message: string
end

local record NotFoundException
    ErrorAttribute: string
    Message: string
end

local record BadRequestException
    ErrorAttribute: string
    Message: string
end

local record ForbiddenException
    ErrorAttribute: string
    Message: string
end

local record InternalServerErrorException
    ErrorAttribute: string
    Message: string
end

local record NotFoundException
    ErrorAttribute: string
    Message: string
end

local record BadRequestException
    ErrorAttribute: string
    Message: string
end

local record ForbiddenException
    ErrorAttribute: string
    Message: string
end

local record InternalServerErrorException
    ErrorAttribute: string
    Message: string
end

local record BadRequestException
    ErrorAttribute: string
    Message: string
end

local record ForbiddenException
    ErrorAttribute: string
    Message: string
end

local record InternalServerErrorException
    ErrorAttribute: string
    Message: string
end

local record BadRequestException
    ErrorAttribute: string
    Message: string
end

local record ForbiddenException
    ErrorAttribute: string
    Message: string
end

local record InternalServerErrorException
    ErrorAttribute: string
    Message: string
end

local record NotFoundException
    ErrorAttribute: string
    Message: string
end

local record BadRequestException
    ErrorAttribute: string
    Message: string
end

local record ForbiddenException
    ErrorAttribute: string
    Message: string
end

local record InternalServerErrorException
    ErrorAttribute: string
    Message: string
end

local record NotFoundException
    ErrorAttribute: string
    Message: string
end

local record BadRequestException
    ErrorAttribute: string
    Message: string
end

local record ForbiddenException
    ErrorAttribute: string
    Message: string
end

local record InternalServerErrorException
    ErrorAttribute: string
    Message: string
end

local record NotFoundException
    ErrorAttribute: string
    Message: string
end

local record BadRequestException
    ErrorAttribute: string
    Message: string
end

local record ForbiddenException
    ErrorAttribute: string
    Message: string
end

local record InternalServerErrorException
    ErrorAttribute: string
    Message: string
end

local record BadRequestException
    ErrorAttribute: string
    Message: string
end

local record ForbiddenException
    ErrorAttribute: string
    Message: string
end

local record InternalServerErrorException
    ErrorAttribute: string
    Message: string
end

local record NotFoundException
    ErrorAttribute: string
    Message: string
end

local record BadRequestException
    ErrorAttribute: string
    Message: string
end

local record ForbiddenException
    ErrorAttribute: string
    Message: string
end

local record InternalServerErrorException
    ErrorAttribute: string
    Message: string
end

local record BadRequestException
    ErrorAttribute: string
    Message: string
end

local record ForbiddenException
    ErrorAttribute: string
    Message: string
end

local record InternalServerErrorException
    ErrorAttribute: string
    Message: string
end

local record NotFoundException
    ErrorAttribute: string
    Message: string
end

local record BadRequestException
    ErrorAttribute: string
    Message: string
end

local record ForbiddenException
    ErrorAttribute: string
    Message: string
end

local record InternalServerErrorException
    ErrorAttribute: string
    Message: string
end

local record NotFoundException
    ErrorAttribute: string
    Message: string
end

local record BadRequestException
    ErrorAttribute: string
    Message: string
end

local record ForbiddenException
    ErrorAttribute: string
    Message: string
end

local record InternalServerErrorException
    ErrorAttribute: string
    Message: string
end

local record NotFoundException
    ErrorAttribute: string
    Message: string
end

local record BadRequestException
    ErrorAttribute: string
    Message: string
end

local record ForbiddenException
    ErrorAttribute: string
    Message: string
end

local record InternalServerErrorException
    ErrorAttribute: string
    Message: string
end

local record NotFoundException
    ErrorAttribute: string
    Message: string
end

local record BadRequestException
    ErrorAttribute: string
    Message: string
end

local record ConflictException
    ErrorAttribute: string
    Message: string
end

local record ForbiddenException
    ErrorAttribute: string
    Message: string
end

local record InternalServerErrorException
    ErrorAttribute: string
    Message: string
end

local record NotFoundException
    ErrorAttribute: string
    Message: string
end

local record BadRequestException
    ErrorAttribute: string
    Message: string
end

local record ConflictException
    ErrorAttribute: string
    Message: string
end

local record ForbiddenException
    ErrorAttribute: string
    Message: string
end

local record InternalServerErrorException
    ErrorAttribute: string
    Message: string
end

local record NotFoundException
    ErrorAttribute: string
    Message: string
end

local record BadRequestException
    ErrorAttribute: string
    Message: string
end

local record ConflictException
    ErrorAttribute: string
    Message: string
end

local record ForbiddenException
    ErrorAttribute: string
    Message: string
end

local record InternalServerErrorException
    ErrorAttribute: string
    Message: string
end

local record NotFoundException
    ErrorAttribute: string
    Message: string
end

local type DataReplicationMode = "NONE" | "CRDR"

local type DeploymentMode = "SINGLE_INSTANCE" | "ACTIVE_STANDBY_MULTI_AZ" | "CLUSTER_MULTI_AZ"

local type EngineType = "ACTIVEMQ" | "RABBITMQ"

local type AuthenticationStrategy = "SIMPLE" | "LDAP" | "CONFIG_MANAGED"

local type BrokerState = "CREATION_IN_PROGRESS" | "CREATION_FAILED" | "DELETION_IN_PROGRESS" | "RUNNING" | "REBOOT_IN_PROGRESS" | "CRITICAL_ACTION_REQUIRED" | "REPLICA"

local type PromoteMode = "SWITCHOVER" | "FAILOVER"

local type BrokerStorageType = "EBS" | "EFS"

local record M
    CreateBrokerInput: CreateBrokerInput
    CreateBrokerOutput: CreateBrokerOutput
    CreateConfigurationInput: CreateConfigurationInput
    CreateConfigurationOutput: CreateConfigurationOutput
    CreateTagsInput: CreateTagsInput
    CreateTagsOutput: CreateTagsOutput
    CreateUserInput: CreateUserInput
    CreateUserOutput: CreateUserOutput
    DeleteBrokerInput: DeleteBrokerInput
    DeleteBrokerOutput: DeleteBrokerOutput
    DeleteConfigurationInput: DeleteConfigurationInput
    DeleteConfigurationOutput: DeleteConfigurationOutput
    DeleteTagsInput: DeleteTagsInput
    DeleteTagsOutput: DeleteTagsOutput
    DeleteUserInput: DeleteUserInput
    DeleteUserOutput: DeleteUserOutput
    DescribeBrokerInput: DescribeBrokerInput
    DescribeBrokerOutput: DescribeBrokerOutput
    DescribeBrokerEngineTypesInput: DescribeBrokerEngineTypesInput
    DescribeBrokerEngineTypesOutput: DescribeBrokerEngineTypesOutput
    DescribeBrokerInstanceOptionsInput: DescribeBrokerInstanceOptionsInput
    DescribeBrokerInstanceOptionsOutput: DescribeBrokerInstanceOptionsOutput
    DescribeConfigurationInput: DescribeConfigurationInput
    DescribeConfigurationOutput: DescribeConfigurationOutput
    DescribeConfigurationRevisionInput: DescribeConfigurationRevisionInput
    DescribeConfigurationRevisionOutput: DescribeConfigurationRevisionOutput
    DescribeUserInput: DescribeUserInput
    DescribeUserOutput: DescribeUserOutput
    ListBrokersInput: ListBrokersInput
    ListBrokersOutput: ListBrokersOutput
    ListConfigurationRevisionsInput: ListConfigurationRevisionsInput
    ListConfigurationRevisionsOutput: ListConfigurationRevisionsOutput
    ListConfigurationsInput: ListConfigurationsInput
    ListConfigurationsOutput: ListConfigurationsOutput
    ListTagsInput: ListTagsInput
    ListTagsOutput: ListTagsOutput
    ListUsersInput: ListUsersInput
    ListUsersOutput: ListUsersOutput
    PromoteInput: PromoteInput
    PromoteOutput: PromoteOutput
    RebootBrokerInput: RebootBrokerInput
    RebootBrokerOutput: RebootBrokerOutput
    UpdateBrokerInput: UpdateBrokerInput
    UpdateBrokerOutput: UpdateBrokerOutput
    UpdateConfigurationInput: UpdateConfigurationInput
    UpdateConfigurationOutput: UpdateConfigurationOutput
    UpdateUserInput: UpdateUserInput
    UpdateUserOutput: UpdateUserOutput
end

return M
