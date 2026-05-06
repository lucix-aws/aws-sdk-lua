local record AssociateRoleToGroupInput
    GroupId: string
    RoleArn: string
end

local record AssociateRoleToGroupOutput
    AssociatedAt: string
end

local record AssociateServiceRoleToAccountInput
    RoleArn: string
end

local record AssociateServiceRoleToAccountOutput
    AssociatedAt: string
end

local record CreateConnectorDefinitionInput
    AmznClientToken: string
    InitialVersion: ConnectorDefinitionVersion
    Name: string
    tags: {string : string}
end

local record CreateConnectorDefinitionOutput
    Arn: string
    CreationTimestamp: string
    Id: string
    LastUpdatedTimestamp: string
    LatestVersion: string
    LatestVersionArn: string
    Name: string
end

local record CreateConnectorDefinitionVersionInput
    AmznClientToken: string
    ConnectorDefinitionId: string
    Connectors: {Connector}
end

local record CreateConnectorDefinitionVersionOutput
    Arn: string
    CreationTimestamp: string
    Id: string
    Version: string
end

local record CreateCoreDefinitionInput
    AmznClientToken: string
    InitialVersion: CoreDefinitionVersion
    Name: string
    tags: {string : string}
end

local record CreateCoreDefinitionOutput
    Arn: string
    CreationTimestamp: string
    Id: string
    LastUpdatedTimestamp: string
    LatestVersion: string
    LatestVersionArn: string
    Name: string
end

local record CreateCoreDefinitionVersionInput
    AmznClientToken: string
    CoreDefinitionId: string
    Cores: {Core}
end

local record CreateCoreDefinitionVersionOutput
    Arn: string
    CreationTimestamp: string
    Id: string
    Version: string
end

local record CreateDeploymentInput
    AmznClientToken: string
    DeploymentId: string
    DeploymentType: string
    GroupId: string
    GroupVersionId: string
end

local record CreateDeploymentOutput
    DeploymentArn: string
    DeploymentId: string
end

local record CreateDeviceDefinitionInput
    AmznClientToken: string
    InitialVersion: DeviceDefinitionVersion
    Name: string
    tags: {string : string}
end

local record CreateDeviceDefinitionOutput
    Arn: string
    CreationTimestamp: string
    Id: string
    LastUpdatedTimestamp: string
    LatestVersion: string
    LatestVersionArn: string
    Name: string
end

local record CreateDeviceDefinitionVersionInput
    AmznClientToken: string
    DeviceDefinitionId: string
    Devices: {Device}
end

local record CreateDeviceDefinitionVersionOutput
    Arn: string
    CreationTimestamp: string
    Id: string
    Version: string
end

local record CreateFunctionDefinitionInput
    AmznClientToken: string
    InitialVersion: FunctionDefinitionVersion
    Name: string
    tags: {string : string}
end

local record CreateFunctionDefinitionOutput
    Arn: string
    CreationTimestamp: string
    Id: string
    LastUpdatedTimestamp: string
    LatestVersion: string
    LatestVersionArn: string
    Name: string
end

local record CreateFunctionDefinitionVersionInput
    AmznClientToken: string
    DefaultConfig: FunctionDefaultConfig
    FunctionDefinitionId: string
    Functions: {Function}
end

local record CreateFunctionDefinitionVersionOutput
    Arn: string
    CreationTimestamp: string
    Id: string
    Version: string
end

local record CreateGroupInput
    AmznClientToken: string
    InitialVersion: GroupVersion
    Name: string
    tags: {string : string}
end

local record CreateGroupOutput
    Arn: string
    CreationTimestamp: string
    Id: string
    LastUpdatedTimestamp: string
    LatestVersion: string
    LatestVersionArn: string
    Name: string
end

local record CreateGroupCertificateAuthorityInput
    AmznClientToken: string
    GroupId: string
end

local record CreateGroupCertificateAuthorityOutput
    GroupCertificateAuthorityArn: string
end

local record CreateGroupVersionInput
    AmznClientToken: string
    ConnectorDefinitionVersionArn: string
    CoreDefinitionVersionArn: string
    DeviceDefinitionVersionArn: string
    FunctionDefinitionVersionArn: string
    GroupId: string
    LoggerDefinitionVersionArn: string
    ResourceDefinitionVersionArn: string
    SubscriptionDefinitionVersionArn: string
end

local record CreateGroupVersionOutput
    Arn: string
    CreationTimestamp: string
    Id: string
    Version: string
end

local record CreateLoggerDefinitionInput
    AmznClientToken: string
    InitialVersion: LoggerDefinitionVersion
    Name: string
    tags: {string : string}
end

local record CreateLoggerDefinitionOutput
    Arn: string
    CreationTimestamp: string
    Id: string
    LastUpdatedTimestamp: string
    LatestVersion: string
    LatestVersionArn: string
    Name: string
end

local record CreateLoggerDefinitionVersionInput
    AmznClientToken: string
    LoggerDefinitionId: string
    Loggers: {Logger}
end

local record CreateLoggerDefinitionVersionOutput
    Arn: string
    CreationTimestamp: string
    Id: string
    Version: string
end

local record CreateResourceDefinitionInput
    AmznClientToken: string
    InitialVersion: ResourceDefinitionVersion
    Name: string
    tags: {string : string}
end

local record CreateResourceDefinitionOutput
    Arn: string
    CreationTimestamp: string
    Id: string
    LastUpdatedTimestamp: string
    LatestVersion: string
    LatestVersionArn: string
    Name: string
end

local record CreateResourceDefinitionVersionInput
    AmznClientToken: string
    ResourceDefinitionId: string
    Resources: {Resource}
end

local record CreateResourceDefinitionVersionOutput
    Arn: string
    CreationTimestamp: string
    Id: string
    Version: string
end

local record CreateSoftwareUpdateJobInput
    AmznClientToken: string
    S3UrlSignerRole: string
    SoftwareToUpdate: string
    UpdateAgentLogLevel: string
    UpdateTargets: {string}
    UpdateTargetsArchitecture: string
    UpdateTargetsOperatingSystem: string
end

local record CreateSoftwareUpdateJobOutput
    IotJobArn: string
    IotJobId: string
    PlatformSoftwareVersion: string
end

local record CreateSubscriptionDefinitionInput
    AmznClientToken: string
    InitialVersion: SubscriptionDefinitionVersion
    Name: string
    tags: {string : string}
end

local record CreateSubscriptionDefinitionOutput
    Arn: string
    CreationTimestamp: string
    Id: string
    LastUpdatedTimestamp: string
    LatestVersion: string
    LatestVersionArn: string
    Name: string
end

local record CreateSubscriptionDefinitionVersionInput
    AmznClientToken: string
    SubscriptionDefinitionId: string
    Subscriptions: {Subscription}
end

local record CreateSubscriptionDefinitionVersionOutput
    Arn: string
    CreationTimestamp: string
    Id: string
    Version: string
end

local record DeleteConnectorDefinitionInput
    ConnectorDefinitionId: string
end

local record DeleteConnectorDefinitionOutput
end

local record DeleteCoreDefinitionInput
    CoreDefinitionId: string
end

local record DeleteCoreDefinitionOutput
end

local record DeleteDeviceDefinitionInput
    DeviceDefinitionId: string
end

local record DeleteDeviceDefinitionOutput
end

local record DeleteFunctionDefinitionInput
    FunctionDefinitionId: string
end

local record DeleteFunctionDefinitionOutput
end

local record DeleteGroupInput
    GroupId: string
end

local record DeleteGroupOutput
end

local record DeleteLoggerDefinitionInput
    LoggerDefinitionId: string
end

local record DeleteLoggerDefinitionOutput
end

local record DeleteResourceDefinitionInput
    ResourceDefinitionId: string
end

local record DeleteResourceDefinitionOutput
end

local record DeleteSubscriptionDefinitionInput
    SubscriptionDefinitionId: string
end

local record DeleteSubscriptionDefinitionOutput
end

local record DisassociateRoleFromGroupInput
    GroupId: string
end

local record DisassociateRoleFromGroupOutput
    DisassociatedAt: string
end

local record DisassociateServiceRoleFromAccountInput
end

local record DisassociateServiceRoleFromAccountOutput
    DisassociatedAt: string
end

local record GetAssociatedRoleInput
    GroupId: string
end

local record GetAssociatedRoleOutput
    AssociatedAt: string
    RoleArn: string
end

local record GetBulkDeploymentStatusInput
    BulkDeploymentId: string
end

local record GetBulkDeploymentStatusOutput
    BulkDeploymentMetrics: BulkDeploymentMetrics
    BulkDeploymentStatus: string
    CreatedAt: string
    ErrorDetails: {ErrorDetail}
    ErrorMessage: string
    tags: {string : string}
end

local record GetConnectivityInfoInput
    ThingName: string
end

local record GetConnectivityInfoOutput
    ConnectivityInfo: {ConnectivityInfo}
    Message: string
end

local record GetConnectorDefinitionInput
    ConnectorDefinitionId: string
end

local record GetConnectorDefinitionOutput
    Arn: string
    CreationTimestamp: string
    Id: string
    LastUpdatedTimestamp: string
    LatestVersion: string
    LatestVersionArn: string
    Name: string
    tags: {string : string}
end

local record GetConnectorDefinitionVersionInput
    ConnectorDefinitionId: string
    ConnectorDefinitionVersionId: string
    NextToken: string
end

local record GetConnectorDefinitionVersionOutput
    Arn: string
    CreationTimestamp: string
    Definition: ConnectorDefinitionVersion
    Id: string
    NextToken: string
    Version: string
end

local record GetCoreDefinitionInput
    CoreDefinitionId: string
end

local record GetCoreDefinitionOutput
    Arn: string
    CreationTimestamp: string
    Id: string
    LastUpdatedTimestamp: string
    LatestVersion: string
    LatestVersionArn: string
    Name: string
    tags: {string : string}
end

local record GetCoreDefinitionVersionInput
    CoreDefinitionId: string
    CoreDefinitionVersionId: string
end

local record GetCoreDefinitionVersionOutput
    Arn: string
    CreationTimestamp: string
    Definition: CoreDefinitionVersion
    Id: string
    NextToken: string
    Version: string
end

local record GetDeploymentStatusInput
    DeploymentId: string
    GroupId: string
end

local record GetDeploymentStatusOutput
    DeploymentStatus: string
    DeploymentType: string
    ErrorDetails: {ErrorDetail}
    ErrorMessage: string
    UpdatedAt: string
end

local record GetDeviceDefinitionInput
    DeviceDefinitionId: string
end

local record GetDeviceDefinitionOutput
    Arn: string
    CreationTimestamp: string
    Id: string
    LastUpdatedTimestamp: string
    LatestVersion: string
    LatestVersionArn: string
    Name: string
    tags: {string : string}
end

local record GetDeviceDefinitionVersionInput
    DeviceDefinitionId: string
    DeviceDefinitionVersionId: string
    NextToken: string
end

local record GetDeviceDefinitionVersionOutput
    Arn: string
    CreationTimestamp: string
    Definition: DeviceDefinitionVersion
    Id: string
    NextToken: string
    Version: string
end

local record GetFunctionDefinitionInput
    FunctionDefinitionId: string
end

local record GetFunctionDefinitionOutput
    Arn: string
    CreationTimestamp: string
    Id: string
    LastUpdatedTimestamp: string
    LatestVersion: string
    LatestVersionArn: string
    Name: string
    tags: {string : string}
end

local record GetFunctionDefinitionVersionInput
    FunctionDefinitionId: string
    FunctionDefinitionVersionId: string
    NextToken: string
end

local record GetFunctionDefinitionVersionOutput
    Arn: string
    CreationTimestamp: string
    Definition: FunctionDefinitionVersion
    Id: string
    NextToken: string
    Version: string
end

local record GetGroupInput
    GroupId: string
end

local record GetGroupOutput
    Arn: string
    CreationTimestamp: string
    Id: string
    LastUpdatedTimestamp: string
    LatestVersion: string
    LatestVersionArn: string
    Name: string
    tags: {string : string}
end

local record GetGroupCertificateAuthorityInput
    CertificateAuthorityId: string
    GroupId: string
end

local record GetGroupCertificateAuthorityOutput
    GroupCertificateAuthorityArn: string
    GroupCertificateAuthorityId: string
    PemEncodedCertificate: string
end

local record GetGroupCertificateConfigurationInput
    GroupId: string
end

local record GetGroupCertificateConfigurationOutput
    CertificateAuthorityExpiryInMilliseconds: string
    CertificateExpiryInMilliseconds: string
    GroupId: string
end

local record GetGroupVersionInput
    GroupId: string
    GroupVersionId: string
end

local record GetGroupVersionOutput
    Arn: string
    CreationTimestamp: string
    Definition: GroupVersion
    Id: string
    Version: string
end

local record GetLoggerDefinitionInput
    LoggerDefinitionId: string
end

local record GetLoggerDefinitionOutput
    Arn: string
    CreationTimestamp: string
    Id: string
    LastUpdatedTimestamp: string
    LatestVersion: string
    LatestVersionArn: string
    Name: string
    tags: {string : string}
end

local record GetLoggerDefinitionVersionInput
    LoggerDefinitionId: string
    LoggerDefinitionVersionId: string
    NextToken: string
end

local record GetLoggerDefinitionVersionOutput
    Arn: string
    CreationTimestamp: string
    Definition: LoggerDefinitionVersion
    Id: string
    Version: string
end

local record GetResourceDefinitionInput
    ResourceDefinitionId: string
end

local record GetResourceDefinitionOutput
    Arn: string
    CreationTimestamp: string
    Id: string
    LastUpdatedTimestamp: string
    LatestVersion: string
    LatestVersionArn: string
    Name: string
    tags: {string : string}
end

local record GetResourceDefinitionVersionInput
    ResourceDefinitionId: string
    ResourceDefinitionVersionId: string
end

local record GetResourceDefinitionVersionOutput
    Arn: string
    CreationTimestamp: string
    Definition: ResourceDefinitionVersion
    Id: string
    Version: string
end

local record GetServiceRoleForAccountInput
end

local record GetServiceRoleForAccountOutput
    AssociatedAt: string
    RoleArn: string
end

local record GetSubscriptionDefinitionInput
    SubscriptionDefinitionId: string
end

local record GetSubscriptionDefinitionOutput
    Arn: string
    CreationTimestamp: string
    Id: string
    LastUpdatedTimestamp: string
    LatestVersion: string
    LatestVersionArn: string
    Name: string
    tags: {string : string}
end

local record GetSubscriptionDefinitionVersionInput
    NextToken: string
    SubscriptionDefinitionId: string
    SubscriptionDefinitionVersionId: string
end

local record GetSubscriptionDefinitionVersionOutput
    Arn: string
    CreationTimestamp: string
    Definition: SubscriptionDefinitionVersion
    Id: string
    NextToken: string
    Version: string
end

local record GetThingRuntimeConfigurationInput
    ThingName: string
end

local record GetThingRuntimeConfigurationOutput
    RuntimeConfiguration: RuntimeConfiguration
end

local record ListBulkDeploymentDetailedReportsInput
    BulkDeploymentId: string
    MaxResults: string
    NextToken: string
end

local record ListBulkDeploymentDetailedReportsOutput
    Deployments: {BulkDeploymentResult}
    NextToken: string
end

local record ListBulkDeploymentsInput
    MaxResults: string
    NextToken: string
end

local record ListBulkDeploymentsOutput
    BulkDeployments: {BulkDeployment}
    NextToken: string
end

local record ListConnectorDefinitionsInput
    MaxResults: string
    NextToken: string
end

local record ListConnectorDefinitionsOutput
    Definitions: {DefinitionInformation}
    NextToken: string
end

local record ListConnectorDefinitionVersionsInput
    ConnectorDefinitionId: string
    MaxResults: string
    NextToken: string
end

local record ListConnectorDefinitionVersionsOutput
    NextToken: string
    Versions: {VersionInformation}
end

local record ListCoreDefinitionsInput
    MaxResults: string
    NextToken: string
end

local record ListCoreDefinitionsOutput
    Definitions: {DefinitionInformation}
    NextToken: string
end

local record ListCoreDefinitionVersionsInput
    CoreDefinitionId: string
    MaxResults: string
    NextToken: string
end

local record ListCoreDefinitionVersionsOutput
    NextToken: string
    Versions: {VersionInformation}
end

local record ListDeploymentsInput
    GroupId: string
    MaxResults: string
    NextToken: string
end

local record ListDeploymentsOutput
    Deployments: {Deployment}
    NextToken: string
end

local record ListDeviceDefinitionsInput
    MaxResults: string
    NextToken: string
end

local record ListDeviceDefinitionsOutput
    Definitions: {DefinitionInformation}
    NextToken: string
end

local record ListDeviceDefinitionVersionsInput
    DeviceDefinitionId: string
    MaxResults: string
    NextToken: string
end

local record ListDeviceDefinitionVersionsOutput
    NextToken: string
    Versions: {VersionInformation}
end

local record ListFunctionDefinitionsInput
    MaxResults: string
    NextToken: string
end

local record ListFunctionDefinitionsOutput
    Definitions: {DefinitionInformation}
    NextToken: string
end

local record ListFunctionDefinitionVersionsInput
    FunctionDefinitionId: string
    MaxResults: string
    NextToken: string
end

local record ListFunctionDefinitionVersionsOutput
    NextToken: string
    Versions: {VersionInformation}
end

local record ListGroupCertificateAuthoritiesInput
    GroupId: string
end

local record ListGroupCertificateAuthoritiesOutput
    GroupCertificateAuthorities: {GroupCertificateAuthorityProperties}
end

local record ListGroupsInput
    MaxResults: string
    NextToken: string
end

local record ListGroupsOutput
    Groups: {GroupInformation}
    NextToken: string
end

local record ListGroupVersionsInput
    GroupId: string
    MaxResults: string
    NextToken: string
end

local record ListGroupVersionsOutput
    NextToken: string
    Versions: {VersionInformation}
end

local record ListLoggerDefinitionsInput
    MaxResults: string
    NextToken: string
end

local record ListLoggerDefinitionsOutput
    Definitions: {DefinitionInformation}
    NextToken: string
end

local record ListLoggerDefinitionVersionsInput
    LoggerDefinitionId: string
    MaxResults: string
    NextToken: string
end

local record ListLoggerDefinitionVersionsOutput
    NextToken: string
    Versions: {VersionInformation}
end

local record ListResourceDefinitionsInput
    MaxResults: string
    NextToken: string
end

local record ListResourceDefinitionsOutput
    Definitions: {DefinitionInformation}
    NextToken: string
end

local record ListResourceDefinitionVersionsInput
    MaxResults: string
    NextToken: string
    ResourceDefinitionId: string
end

local record ListResourceDefinitionVersionsOutput
    NextToken: string
    Versions: {VersionInformation}
end

local record ListSubscriptionDefinitionsInput
    MaxResults: string
    NextToken: string
end

local record ListSubscriptionDefinitionsOutput
    Definitions: {DefinitionInformation}
    NextToken: string
end

local record ListSubscriptionDefinitionVersionsInput
    MaxResults: string
    NextToken: string
    SubscriptionDefinitionId: string
end

local record ListSubscriptionDefinitionVersionsOutput
    NextToken: string
    Versions: {VersionInformation}
end

local record ListTagsForResourceInput
    ResourceArn: string
end

local record ListTagsForResourceOutput
    tags: {string : string}
end

local record ResetDeploymentsInput
    AmznClientToken: string
    Force: boolean
    GroupId: string
end

local record ResetDeploymentsOutput
    DeploymentArn: string
    DeploymentId: string
end

local record StartBulkDeploymentInput
    AmznClientToken: string
    ExecutionRoleArn: string
    InputFileUri: string
    tags: {string : string}
end

local record StartBulkDeploymentOutput
    BulkDeploymentArn: string
    BulkDeploymentId: string
end

local record StopBulkDeploymentInput
    BulkDeploymentId: string
end

local record StopBulkDeploymentOutput
end

local record TagResourceInput
    ResourceArn: string
    tags: {string : string}
end

local record TagResourceOutput
end

local record UntagResourceInput
    ResourceArn: string
    TagKeys: {string}
end

local record UntagResourceOutput
end

local record UpdateConnectivityInfoInput
    ConnectivityInfo: {ConnectivityInfo}
    ThingName: string
end

local record UpdateConnectivityInfoOutput
    Message: string
    Version: string
end

local record UpdateConnectorDefinitionInput
    ConnectorDefinitionId: string
    Name: string
end

local record UpdateConnectorDefinitionOutput
end

local record UpdateCoreDefinitionInput
    CoreDefinitionId: string
    Name: string
end

local record UpdateCoreDefinitionOutput
end

local record UpdateDeviceDefinitionInput
    DeviceDefinitionId: string
    Name: string
end

local record UpdateDeviceDefinitionOutput
end

local record UpdateFunctionDefinitionInput
    FunctionDefinitionId: string
    Name: string
end

local record UpdateFunctionDefinitionOutput
end

local record UpdateGroupInput
    GroupId: string
    Name: string
end

local record UpdateGroupOutput
end

local record UpdateGroupCertificateConfigurationInput
    CertificateExpiryInMilliseconds: string
    GroupId: string
end

local record UpdateGroupCertificateConfigurationOutput
    CertificateAuthorityExpiryInMilliseconds: string
    CertificateExpiryInMilliseconds: string
    GroupId: string
end

local record UpdateLoggerDefinitionInput
    LoggerDefinitionId: string
    Name: string
end

local record UpdateLoggerDefinitionOutput
end

local record UpdateResourceDefinitionInput
    Name: string
    ResourceDefinitionId: string
end

local record UpdateResourceDefinitionOutput
end

local record UpdateSubscriptionDefinitionInput
    Name: string
    SubscriptionDefinitionId: string
end

local record UpdateSubscriptionDefinitionOutput
end

local record UpdateThingRuntimeConfigurationInput
    TelemetryConfiguration: TelemetryConfigurationUpdate
    ThingName: string
end

local record UpdateThingRuntimeConfigurationOutput
end

local record BadRequestException
    ErrorDetails: {ErrorDetail}
    Message: string
end

local record InternalServerErrorException
    ErrorDetails: {ErrorDetail}
    Message: string
end

local record BadRequestException
    ErrorDetails: {ErrorDetail}
    Message: string
end

local record InternalServerErrorException
    ErrorDetails: {ErrorDetail}
    Message: string
end

local record BadRequestException
    ErrorDetails: {ErrorDetail}
    Message: string
end

local record BadRequestException
    ErrorDetails: {ErrorDetail}
    Message: string
end

local record BadRequestException
    ErrorDetails: {ErrorDetail}
    Message: string
end

local record BadRequestException
    ErrorDetails: {ErrorDetail}
    Message: string
end

local record BadRequestException
    ErrorDetails: {ErrorDetail}
    Message: string
end

local record BadRequestException
    ErrorDetails: {ErrorDetail}
    Message: string
end

local record BadRequestException
    ErrorDetails: {ErrorDetail}
    Message: string
end

local record BadRequestException
    ErrorDetails: {ErrorDetail}
    Message: string
end

local record BadRequestException
    ErrorDetails: {ErrorDetail}
    Message: string
end

local record BadRequestException
    ErrorDetails: {ErrorDetail}
    Message: string
end

local record BadRequestException
    ErrorDetails: {ErrorDetail}
    Message: string
end

local record InternalServerErrorException
    ErrorDetails: {ErrorDetail}
    Message: string
end

local record BadRequestException
    ErrorDetails: {ErrorDetail}
    Message: string
end

local record BadRequestException
    ErrorDetails: {ErrorDetail}
    Message: string
end

local record BadRequestException
    ErrorDetails: {ErrorDetail}
    Message: string
end

local record BadRequestException
    ErrorDetails: {ErrorDetail}
    Message: string
end

local record BadRequestException
    ErrorDetails: {ErrorDetail}
    Message: string
end

local record BadRequestException
    ErrorDetails: {ErrorDetail}
    Message: string
end

local record InternalServerErrorException
    ErrorDetails: {ErrorDetail}
    Message: string
end

local record BadRequestException
    ErrorDetails: {ErrorDetail}
    Message: string
end

local record BadRequestException
    ErrorDetails: {ErrorDetail}
    Message: string
end

local record BadRequestException
    ErrorDetails: {ErrorDetail}
    Message: string
end

local record BadRequestException
    ErrorDetails: {ErrorDetail}
    Message: string
end

local record BadRequestException
    ErrorDetails: {ErrorDetail}
    Message: string
end

local record BadRequestException
    ErrorDetails: {ErrorDetail}
    Message: string
end

local record BadRequestException
    ErrorDetails: {ErrorDetail}
    Message: string
end

local record BadRequestException
    ErrorDetails: {ErrorDetail}
    Message: string
end

local record BadRequestException
    ErrorDetails: {ErrorDetail}
    Message: string
end

local record BadRequestException
    ErrorDetails: {ErrorDetail}
    Message: string
end

local record BadRequestException
    ErrorDetails: {ErrorDetail}
    Message: string
end

local record InternalServerErrorException
    ErrorDetails: {ErrorDetail}
    Message: string
end

local record InternalServerErrorException
    ErrorDetails: {ErrorDetail}
    Message: string
end

local record BadRequestException
    ErrorDetails: {ErrorDetail}
    Message: string
end

local record InternalServerErrorException
    ErrorDetails: {ErrorDetail}
    Message: string
end

local record BadRequestException
    ErrorDetails: {ErrorDetail}
    Message: string
end

local record BadRequestException
    ErrorDetails: {ErrorDetail}
    Message: string
end

local record InternalServerErrorException
    ErrorDetails: {ErrorDetail}
    Message: string
end

local record BadRequestException
    ErrorDetails: {ErrorDetail}
    Message: string
end

local record BadRequestException
    ErrorDetails: {ErrorDetail}
    Message: string
end

local record BadRequestException
    ErrorDetails: {ErrorDetail}
    Message: string
end

local record BadRequestException
    ErrorDetails: {ErrorDetail}
    Message: string
end

local record BadRequestException
    ErrorDetails: {ErrorDetail}
    Message: string
end

local record BadRequestException
    ErrorDetails: {ErrorDetail}
    Message: string
end

local record BadRequestException
    ErrorDetails: {ErrorDetail}
    Message: string
end

local record BadRequestException
    ErrorDetails: {ErrorDetail}
    Message: string
end

local record BadRequestException
    ErrorDetails: {ErrorDetail}
    Message: string
end

local record BadRequestException
    ErrorDetails: {ErrorDetail}
    Message: string
end

local record BadRequestException
    ErrorDetails: {ErrorDetail}
    Message: string
end

local record InternalServerErrorException
    ErrorDetails: {ErrorDetail}
    Message: string
end

local record BadRequestException
    ErrorDetails: {ErrorDetail}
    Message: string
end

local record InternalServerErrorException
    ErrorDetails: {ErrorDetail}
    Message: string
end

local record BadRequestException
    ErrorDetails: {ErrorDetail}
    Message: string
end

local record BadRequestException
    ErrorDetails: {ErrorDetail}
    Message: string
end

local record BadRequestException
    ErrorDetails: {ErrorDetail}
    Message: string
end

local record BadRequestException
    ErrorDetails: {ErrorDetail}
    Message: string
end

local record BadRequestException
    ErrorDetails: {ErrorDetail}
    Message: string
end

local record InternalServerErrorException
    ErrorDetails: {ErrorDetail}
    Message: string
end

local record BadRequestException
    ErrorDetails: {ErrorDetail}
    Message: string
end

local record BadRequestException
    ErrorDetails: {ErrorDetail}
    Message: string
end

local record BadRequestException
    ErrorDetails: {ErrorDetail}
    Message: string
end

local record InternalServerErrorException
    ErrorDetails: {ErrorDetail}
    Message: string
end

local record BadRequestException
    ErrorDetails: {ErrorDetail}
    Message: string
end

local record BadRequestException
    ErrorDetails: {ErrorDetail}
    Message: string
end

local record BadRequestException
    ErrorDetails: {ErrorDetail}
    Message: string
end

local record BadRequestException
    ErrorDetails: {ErrorDetail}
    Message: string
end

local record BadRequestException
    ErrorDetails: {ErrorDetail}
    Message: string
end

local record BadRequestException
    ErrorDetails: {ErrorDetail}
    Message: string
end

local record BadRequestException
    ErrorDetails: {ErrorDetail}
    Message: string
end

local record BadRequestException
    ErrorDetails: {ErrorDetail}
    Message: string
end

local record InternalServerErrorException
    ErrorDetails: {ErrorDetail}
    Message: string
end

local record BadRequestException
    ErrorDetails: {ErrorDetail}
    Message: string
end

local record BadRequestException
    ErrorDetails: {ErrorDetail}
    Message: string
end

local record BadRequestException
    ErrorDetails: {ErrorDetail}
    Message: string
end

local record BadRequestException
    ErrorDetails: {ErrorDetail}
    Message: string
end

local record BadRequestException
    ErrorDetails: {ErrorDetail}
    Message: string
end

local record BadRequestException
    ErrorDetails: {ErrorDetail}
    Message: string
end

local record BadRequestException
    ErrorDetails: {ErrorDetail}
    Message: string
end

local record BadRequestException
    ErrorDetails: {ErrorDetail}
    Message: string
end

local record BadRequestException
    ErrorDetails: {ErrorDetail}
    Message: string
end

local record BadRequestException
    ErrorDetails: {ErrorDetail}
    Message: string
end

local record BadRequestException
    ErrorDetails: {ErrorDetail}
    Message: string
end

local record InternalServerErrorException
    ErrorDetails: {ErrorDetail}
    Message: string
end

local record BadRequestException
    ErrorDetails: {ErrorDetail}
    Message: string
end

local record BadRequestException
    ErrorDetails: {ErrorDetail}
    Message: string
end

local record BadRequestException
    ErrorDetails: {ErrorDetail}
    Message: string
end

local record BadRequestException
    ErrorDetails: {ErrorDetail}
    Message: string
end

local record BadRequestException
    ErrorDetails: {ErrorDetail}
    Message: string
end

local record BadRequestException
    ErrorDetails: {ErrorDetail}
    Message: string
end

local record InternalServerErrorException
    ErrorDetails: {ErrorDetail}
    Message: string
end

local record BadRequestException
    ErrorDetails: {ErrorDetail}
    Message: string
end

local record BadRequestException
    ErrorDetails: {ErrorDetail}
    Message: string
end

local record BadRequestException
    ErrorDetails: {ErrorDetail}
    Message: string
end

local record BadRequestException
    ErrorDetails: {ErrorDetail}
    Message: string
end

local record InternalServerErrorException
    ErrorDetails: {ErrorDetail}
    Message: string
end

local type SoftwareToUpdate = "core" | "ota_agent"

local type UpdateTargetsArchitecture = "armv6l" | "armv7l" | "x86_64" | "aarch64"

local type UpdateAgentLogLevel = "NONE" | "TRACE" | "DEBUG" | "VERBOSE" | "INFO" | "WARN" | "ERROR" | "FATAL"

local type UpdateTargetsOperatingSystem = "ubuntu" | "raspbian" | "amazon_linux" | "openwrt"

local type BulkDeploymentStatus = "Initializing" | "Running" | "Completed" | "Stopping" | "Stopped" | "Failed"

local type DeploymentType = "NewDeployment" | "Redeployment" | "ResetDeployment" | "ForceResetDeployment"

local record M
    AssociateRoleToGroupInput: AssociateRoleToGroupInput
    AssociateRoleToGroupOutput: AssociateRoleToGroupOutput
    AssociateServiceRoleToAccountInput: AssociateServiceRoleToAccountInput
    AssociateServiceRoleToAccountOutput: AssociateServiceRoleToAccountOutput
    CreateConnectorDefinitionInput: CreateConnectorDefinitionInput
    CreateConnectorDefinitionOutput: CreateConnectorDefinitionOutput
    CreateConnectorDefinitionVersionInput: CreateConnectorDefinitionVersionInput
    CreateConnectorDefinitionVersionOutput: CreateConnectorDefinitionVersionOutput
    CreateCoreDefinitionInput: CreateCoreDefinitionInput
    CreateCoreDefinitionOutput: CreateCoreDefinitionOutput
    CreateCoreDefinitionVersionInput: CreateCoreDefinitionVersionInput
    CreateCoreDefinitionVersionOutput: CreateCoreDefinitionVersionOutput
    CreateDeploymentInput: CreateDeploymentInput
    CreateDeploymentOutput: CreateDeploymentOutput
    CreateDeviceDefinitionInput: CreateDeviceDefinitionInput
    CreateDeviceDefinitionOutput: CreateDeviceDefinitionOutput
    CreateDeviceDefinitionVersionInput: CreateDeviceDefinitionVersionInput
    CreateDeviceDefinitionVersionOutput: CreateDeviceDefinitionVersionOutput
    CreateFunctionDefinitionInput: CreateFunctionDefinitionInput
    CreateFunctionDefinitionOutput: CreateFunctionDefinitionOutput
    CreateFunctionDefinitionVersionInput: CreateFunctionDefinitionVersionInput
    CreateFunctionDefinitionVersionOutput: CreateFunctionDefinitionVersionOutput
    CreateGroupInput: CreateGroupInput
    CreateGroupOutput: CreateGroupOutput
    CreateGroupCertificateAuthorityInput: CreateGroupCertificateAuthorityInput
    CreateGroupCertificateAuthorityOutput: CreateGroupCertificateAuthorityOutput
    CreateGroupVersionInput: CreateGroupVersionInput
    CreateGroupVersionOutput: CreateGroupVersionOutput
    CreateLoggerDefinitionInput: CreateLoggerDefinitionInput
    CreateLoggerDefinitionOutput: CreateLoggerDefinitionOutput
    CreateLoggerDefinitionVersionInput: CreateLoggerDefinitionVersionInput
    CreateLoggerDefinitionVersionOutput: CreateLoggerDefinitionVersionOutput
    CreateResourceDefinitionInput: CreateResourceDefinitionInput
    CreateResourceDefinitionOutput: CreateResourceDefinitionOutput
    CreateResourceDefinitionVersionInput: CreateResourceDefinitionVersionInput
    CreateResourceDefinitionVersionOutput: CreateResourceDefinitionVersionOutput
    CreateSoftwareUpdateJobInput: CreateSoftwareUpdateJobInput
    CreateSoftwareUpdateJobOutput: CreateSoftwareUpdateJobOutput
    CreateSubscriptionDefinitionInput: CreateSubscriptionDefinitionInput
    CreateSubscriptionDefinitionOutput: CreateSubscriptionDefinitionOutput
    CreateSubscriptionDefinitionVersionInput: CreateSubscriptionDefinitionVersionInput
    CreateSubscriptionDefinitionVersionOutput: CreateSubscriptionDefinitionVersionOutput
    DeleteConnectorDefinitionInput: DeleteConnectorDefinitionInput
    DeleteConnectorDefinitionOutput: DeleteConnectorDefinitionOutput
    DeleteCoreDefinitionInput: DeleteCoreDefinitionInput
    DeleteCoreDefinitionOutput: DeleteCoreDefinitionOutput
    DeleteDeviceDefinitionInput: DeleteDeviceDefinitionInput
    DeleteDeviceDefinitionOutput: DeleteDeviceDefinitionOutput
    DeleteFunctionDefinitionInput: DeleteFunctionDefinitionInput
    DeleteFunctionDefinitionOutput: DeleteFunctionDefinitionOutput
    DeleteGroupInput: DeleteGroupInput
    DeleteGroupOutput: DeleteGroupOutput
    DeleteLoggerDefinitionInput: DeleteLoggerDefinitionInput
    DeleteLoggerDefinitionOutput: DeleteLoggerDefinitionOutput
    DeleteResourceDefinitionInput: DeleteResourceDefinitionInput
    DeleteResourceDefinitionOutput: DeleteResourceDefinitionOutput
    DeleteSubscriptionDefinitionInput: DeleteSubscriptionDefinitionInput
    DeleteSubscriptionDefinitionOutput: DeleteSubscriptionDefinitionOutput
    DisassociateRoleFromGroupInput: DisassociateRoleFromGroupInput
    DisassociateRoleFromGroupOutput: DisassociateRoleFromGroupOutput
    DisassociateServiceRoleFromAccountInput: DisassociateServiceRoleFromAccountInput
    DisassociateServiceRoleFromAccountOutput: DisassociateServiceRoleFromAccountOutput
    GetAssociatedRoleInput: GetAssociatedRoleInput
    GetAssociatedRoleOutput: GetAssociatedRoleOutput
    GetBulkDeploymentStatusInput: GetBulkDeploymentStatusInput
    GetBulkDeploymentStatusOutput: GetBulkDeploymentStatusOutput
    GetConnectivityInfoInput: GetConnectivityInfoInput
    GetConnectivityInfoOutput: GetConnectivityInfoOutput
    GetConnectorDefinitionInput: GetConnectorDefinitionInput
    GetConnectorDefinitionOutput: GetConnectorDefinitionOutput
    GetConnectorDefinitionVersionInput: GetConnectorDefinitionVersionInput
    GetConnectorDefinitionVersionOutput: GetConnectorDefinitionVersionOutput
    GetCoreDefinitionInput: GetCoreDefinitionInput
    GetCoreDefinitionOutput: GetCoreDefinitionOutput
    GetCoreDefinitionVersionInput: GetCoreDefinitionVersionInput
    GetCoreDefinitionVersionOutput: GetCoreDefinitionVersionOutput
    GetDeploymentStatusInput: GetDeploymentStatusInput
    GetDeploymentStatusOutput: GetDeploymentStatusOutput
    GetDeviceDefinitionInput: GetDeviceDefinitionInput
    GetDeviceDefinitionOutput: GetDeviceDefinitionOutput
    GetDeviceDefinitionVersionInput: GetDeviceDefinitionVersionInput
    GetDeviceDefinitionVersionOutput: GetDeviceDefinitionVersionOutput
    GetFunctionDefinitionInput: GetFunctionDefinitionInput
    GetFunctionDefinitionOutput: GetFunctionDefinitionOutput
    GetFunctionDefinitionVersionInput: GetFunctionDefinitionVersionInput
    GetFunctionDefinitionVersionOutput: GetFunctionDefinitionVersionOutput
    GetGroupInput: GetGroupInput
    GetGroupOutput: GetGroupOutput
    GetGroupCertificateAuthorityInput: GetGroupCertificateAuthorityInput
    GetGroupCertificateAuthorityOutput: GetGroupCertificateAuthorityOutput
    GetGroupCertificateConfigurationInput: GetGroupCertificateConfigurationInput
    GetGroupCertificateConfigurationOutput: GetGroupCertificateConfigurationOutput
    GetGroupVersionInput: GetGroupVersionInput
    GetGroupVersionOutput: GetGroupVersionOutput
    GetLoggerDefinitionInput: GetLoggerDefinitionInput
    GetLoggerDefinitionOutput: GetLoggerDefinitionOutput
    GetLoggerDefinitionVersionInput: GetLoggerDefinitionVersionInput
    GetLoggerDefinitionVersionOutput: GetLoggerDefinitionVersionOutput
    GetResourceDefinitionInput: GetResourceDefinitionInput
    GetResourceDefinitionOutput: GetResourceDefinitionOutput
    GetResourceDefinitionVersionInput: GetResourceDefinitionVersionInput
    GetResourceDefinitionVersionOutput: GetResourceDefinitionVersionOutput
    GetServiceRoleForAccountInput: GetServiceRoleForAccountInput
    GetServiceRoleForAccountOutput: GetServiceRoleForAccountOutput
    GetSubscriptionDefinitionInput: GetSubscriptionDefinitionInput
    GetSubscriptionDefinitionOutput: GetSubscriptionDefinitionOutput
    GetSubscriptionDefinitionVersionInput: GetSubscriptionDefinitionVersionInput
    GetSubscriptionDefinitionVersionOutput: GetSubscriptionDefinitionVersionOutput
    GetThingRuntimeConfigurationInput: GetThingRuntimeConfigurationInput
    GetThingRuntimeConfigurationOutput: GetThingRuntimeConfigurationOutput
    ListBulkDeploymentDetailedReportsInput: ListBulkDeploymentDetailedReportsInput
    ListBulkDeploymentDetailedReportsOutput: ListBulkDeploymentDetailedReportsOutput
    ListBulkDeploymentsInput: ListBulkDeploymentsInput
    ListBulkDeploymentsOutput: ListBulkDeploymentsOutput
    ListConnectorDefinitionsInput: ListConnectorDefinitionsInput
    ListConnectorDefinitionsOutput: ListConnectorDefinitionsOutput
    ListConnectorDefinitionVersionsInput: ListConnectorDefinitionVersionsInput
    ListConnectorDefinitionVersionsOutput: ListConnectorDefinitionVersionsOutput
    ListCoreDefinitionsInput: ListCoreDefinitionsInput
    ListCoreDefinitionsOutput: ListCoreDefinitionsOutput
    ListCoreDefinitionVersionsInput: ListCoreDefinitionVersionsInput
    ListCoreDefinitionVersionsOutput: ListCoreDefinitionVersionsOutput
    ListDeploymentsInput: ListDeploymentsInput
    ListDeploymentsOutput: ListDeploymentsOutput
    ListDeviceDefinitionsInput: ListDeviceDefinitionsInput
    ListDeviceDefinitionsOutput: ListDeviceDefinitionsOutput
    ListDeviceDefinitionVersionsInput: ListDeviceDefinitionVersionsInput
    ListDeviceDefinitionVersionsOutput: ListDeviceDefinitionVersionsOutput
    ListFunctionDefinitionsInput: ListFunctionDefinitionsInput
    ListFunctionDefinitionsOutput: ListFunctionDefinitionsOutput
    ListFunctionDefinitionVersionsInput: ListFunctionDefinitionVersionsInput
    ListFunctionDefinitionVersionsOutput: ListFunctionDefinitionVersionsOutput
    ListGroupCertificateAuthoritiesInput: ListGroupCertificateAuthoritiesInput
    ListGroupCertificateAuthoritiesOutput: ListGroupCertificateAuthoritiesOutput
    ListGroupsInput: ListGroupsInput
    ListGroupsOutput: ListGroupsOutput
    ListGroupVersionsInput: ListGroupVersionsInput
    ListGroupVersionsOutput: ListGroupVersionsOutput
    ListLoggerDefinitionsInput: ListLoggerDefinitionsInput
    ListLoggerDefinitionsOutput: ListLoggerDefinitionsOutput
    ListLoggerDefinitionVersionsInput: ListLoggerDefinitionVersionsInput
    ListLoggerDefinitionVersionsOutput: ListLoggerDefinitionVersionsOutput
    ListResourceDefinitionsInput: ListResourceDefinitionsInput
    ListResourceDefinitionsOutput: ListResourceDefinitionsOutput
    ListResourceDefinitionVersionsInput: ListResourceDefinitionVersionsInput
    ListResourceDefinitionVersionsOutput: ListResourceDefinitionVersionsOutput
    ListSubscriptionDefinitionsInput: ListSubscriptionDefinitionsInput
    ListSubscriptionDefinitionsOutput: ListSubscriptionDefinitionsOutput
    ListSubscriptionDefinitionVersionsInput: ListSubscriptionDefinitionVersionsInput
    ListSubscriptionDefinitionVersionsOutput: ListSubscriptionDefinitionVersionsOutput
    ListTagsForResourceInput: ListTagsForResourceInput
    ListTagsForResourceOutput: ListTagsForResourceOutput
    ResetDeploymentsInput: ResetDeploymentsInput
    ResetDeploymentsOutput: ResetDeploymentsOutput
    StartBulkDeploymentInput: StartBulkDeploymentInput
    StartBulkDeploymentOutput: StartBulkDeploymentOutput
    StopBulkDeploymentInput: StopBulkDeploymentInput
    StopBulkDeploymentOutput: StopBulkDeploymentOutput
    TagResourceInput: TagResourceInput
    TagResourceOutput: TagResourceOutput
    UntagResourceInput: UntagResourceInput
    UntagResourceOutput: UntagResourceOutput
    UpdateConnectivityInfoInput: UpdateConnectivityInfoInput
    UpdateConnectivityInfoOutput: UpdateConnectivityInfoOutput
    UpdateConnectorDefinitionInput: UpdateConnectorDefinitionInput
    UpdateConnectorDefinitionOutput: UpdateConnectorDefinitionOutput
    UpdateCoreDefinitionInput: UpdateCoreDefinitionInput
    UpdateCoreDefinitionOutput: UpdateCoreDefinitionOutput
    UpdateDeviceDefinitionInput: UpdateDeviceDefinitionInput
    UpdateDeviceDefinitionOutput: UpdateDeviceDefinitionOutput
    UpdateFunctionDefinitionInput: UpdateFunctionDefinitionInput
    UpdateFunctionDefinitionOutput: UpdateFunctionDefinitionOutput
    UpdateGroupInput: UpdateGroupInput
    UpdateGroupOutput: UpdateGroupOutput
    UpdateGroupCertificateConfigurationInput: UpdateGroupCertificateConfigurationInput
    UpdateGroupCertificateConfigurationOutput: UpdateGroupCertificateConfigurationOutput
    UpdateLoggerDefinitionInput: UpdateLoggerDefinitionInput
    UpdateLoggerDefinitionOutput: UpdateLoggerDefinitionOutput
    UpdateResourceDefinitionInput: UpdateResourceDefinitionInput
    UpdateResourceDefinitionOutput: UpdateResourceDefinitionOutput
    UpdateSubscriptionDefinitionInput: UpdateSubscriptionDefinitionInput
    UpdateSubscriptionDefinitionOutput: UpdateSubscriptionDefinitionOutput
    UpdateThingRuntimeConfigurationInput: UpdateThingRuntimeConfigurationInput
    UpdateThingRuntimeConfigurationOutput: UpdateThingRuntimeConfigurationOutput
end

return M
