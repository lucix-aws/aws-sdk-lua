local record AcceptMatchInput
    TicketId: string
    PlayerIds: {string}
    AcceptanceType: string
end

local record AcceptMatchOutput
end

local record ClaimGameServerInput
    GameServerGroupName: string
    GameServerId: string
    GameServerData: string
    FilterOption: ClaimFilterOption
end

local record ClaimGameServerOutput
    GameServer: GameServer
end

local record CreateAliasInput
    Name: string
    Description: string
    RoutingStrategy: RoutingStrategy
    Tags: {Tag}
end

local record CreateAliasOutput
    Alias: Alias
end

local record CreateBuildInput
    Name: string
    Version: string
    StorageLocation: S3Location
    OperatingSystem: string
    Tags: {Tag}
    ServerSdkVersion: string
end

local record CreateBuildOutput
    Build: Build
    UploadCredentials: AwsCredentials
    StorageLocation: S3Location
end

local record CreateContainerFleetInput
    FleetRoleArn: string
    Description: string
    GameServerContainerGroupDefinitionName: string
    PerInstanceContainerGroupDefinitionName: string
    InstanceConnectionPortRange: ConnectionPortRange
    InstanceInboundPermissions: {IpPermission}
    GameServerContainerGroupsPerInstance: number
    InstanceType: string
    BillingType: string
    Locations: {LocationConfiguration}
    MetricGroups: {string}
    NewGameSessionProtectionPolicy: string
    GameSessionCreationLimitPolicy: GameSessionCreationLimitPolicy
    LogConfiguration: LogConfiguration
    Tags: {Tag}
    PlayerGatewayMode: string
end

local record CreateContainerFleetOutput
    ContainerFleet: ContainerFleet
end

local record CreateContainerGroupDefinitionInput
    Name: string
    ContainerGroupType: string
    TotalMemoryLimitMebibytes: number
    TotalVcpuLimit: number
    GameServerContainerDefinition: GameServerContainerDefinitionInput
    SupportContainerDefinitions: {SupportContainerDefinitionInput}
    OperatingSystem: string
    VersionDescription: string
    Tags: {Tag}
end

local record CreateContainerGroupDefinitionOutput
    ContainerGroupDefinition: ContainerGroupDefinition
end

local record CreateFleetInput
    Name: string
    Description: string
    BuildId: string
    ScriptId: string
    ServerLaunchPath: string
    ServerLaunchParameters: string
    LogPaths: {string}
    EC2InstanceType: string
    EC2InboundPermissions: {IpPermission}
    NewGameSessionProtectionPolicy: string
    RuntimeConfiguration: RuntimeConfiguration
    ResourceCreationLimitPolicy: ResourceCreationLimitPolicy
    MetricGroups: {string}
    PeerVpcAwsAccountId: string
    PeerVpcId: string
    FleetType: string
    InstanceRoleArn: string
    CertificateConfiguration: CertificateConfiguration
    Locations: {LocationConfiguration}
    Tags: {Tag}
    ComputeType: string
    AnywhereConfiguration: AnywhereConfiguration
    InstanceRoleCredentialsProvider: string
    PlayerGatewayMode: string
    PlayerGatewayConfiguration: PlayerGatewayConfiguration
end

local record CreateFleetOutput
    FleetAttributes: FleetAttributes
    LocationStates: {LocationState}
end

local record CreateFleetLocationsInput
    FleetId: string
    Locations: {LocationConfiguration}
end

local record CreateFleetLocationsOutput
    FleetId: string
    FleetArn: string
    LocationStates: {LocationState}
end

local record CreateGameServerGroupInput
    GameServerGroupName: string
    RoleArn: string
    MinSize: number
    MaxSize: number
    LaunchTemplate: LaunchTemplateSpecification
    InstanceDefinitions: {InstanceDefinition}
    AutoScalingPolicy: GameServerGroupAutoScalingPolicy
    BalancingStrategy: string
    GameServerProtectionPolicy: string
    VpcSubnets: {string}
    Tags: {Tag}
end

local record CreateGameServerGroupOutput
    GameServerGroup: GameServerGroup
end

local record CreateGameSessionInput
    FleetId: string
    AliasId: string
    MaximumPlayerSessionCount: number
    Name: string
    GameProperties: {GameProperty}
    CreatorId: string
    GameSessionId: string
    IdempotencyToken: string
    GameSessionData: string
    Location: string
end

local record CreateGameSessionOutput
    GameSession: GameSession
end

local record CreateGameSessionQueueInput
    Name: string
    TimeoutInSeconds: number
    PlayerLatencyPolicies: {PlayerLatencyPolicy}
    Destinations: {GameSessionQueueDestination}
    FilterConfiguration: FilterConfiguration
    PriorityConfiguration: PriorityConfiguration
    CustomEventData: string
    NotificationTarget: string
    Tags: {Tag}
end

local record CreateGameSessionQueueOutput
    GameSessionQueue: GameSessionQueue
end

local record CreateLocationInput
    LocationName: string
    Tags: {Tag}
end

local record CreateLocationOutput
    Location: LocationModel
end

local record CreateMatchmakingConfigurationInput
    Name: string
    Description: string
    GameSessionQueueArns: {string}
    RequestTimeoutSeconds: number
    AcceptanceTimeoutSeconds: number
    AcceptanceRequired: boolean
    RuleSetName: string
    NotificationTarget: string
    AdditionalPlayerCount: number
    CustomEventData: string
    GameProperties: {GameProperty}
    GameSessionData: string
    BackfillMode: string
    FlexMatchMode: string
    Tags: {Tag}
end

local record CreateMatchmakingConfigurationOutput
    Configuration: MatchmakingConfiguration
end

local record CreateMatchmakingRuleSetInput
    Name: string
    RuleSetBody: string
    Tags: {Tag}
end

local record CreateMatchmakingRuleSetOutput
    RuleSet: MatchmakingRuleSet
end

local record CreatePlayerSessionInput
    GameSessionId: string
    PlayerId: string
    PlayerData: string
end

local record CreatePlayerSessionOutput
    PlayerSession: PlayerSession
end

local record CreatePlayerSessionsInput
    GameSessionId: string
    PlayerIds: {string}
    PlayerDataMap: {string : string}
end

local record CreatePlayerSessionsOutput
    PlayerSessions: {PlayerSession}
end

local record CreateScriptInput
    Name: string
    Version: string
    StorageLocation: S3Location
    ZipFile: string
    Tags: {Tag}
    NodeJsVersion: string
end

local record CreateScriptOutput
    Script: Script
end

local record CreateVpcPeeringAuthorizationInput
    GameLiftAwsAccountId: string
    PeerVpcId: string
end

local record CreateVpcPeeringAuthorizationOutput
    VpcPeeringAuthorization: VpcPeeringAuthorization
end

local record CreateVpcPeeringConnectionInput
    FleetId: string
    PeerVpcAwsAccountId: string
    PeerVpcId: string
end

local record CreateVpcPeeringConnectionOutput
end

local record DeleteAliasInput
    AliasId: string
end

local record DeleteAliasOutput
end

local record DeleteBuildInput
    BuildId: string
end

local record DeleteBuildOutput
end

local record DeleteContainerFleetInput
    FleetId: string
end

local record DeleteContainerFleetOutput
end

local record DeleteContainerGroupDefinitionInput
    Name: string
    VersionNumber: number
    VersionCountToRetain: number
end

local record DeleteContainerGroupDefinitionOutput
end

local record DeleteFleetInput
    FleetId: string
end

local record DeleteFleetOutput
end

local record DeleteFleetLocationsInput
    FleetId: string
    Locations: {string}
end

local record DeleteFleetLocationsOutput
    FleetId: string
    FleetArn: string
    LocationStates: {LocationState}
end

local record DeleteGameServerGroupInput
    GameServerGroupName: string
    DeleteOption: string
end

local record DeleteGameServerGroupOutput
    GameServerGroup: GameServerGroup
end

local record DeleteGameSessionQueueInput
    Name: string
end

local record DeleteGameSessionQueueOutput
end

local record DeleteLocationInput
    LocationName: string
end

local record DeleteLocationOutput
end

local record DeleteMatchmakingConfigurationInput
    Name: string
end

local record DeleteMatchmakingConfigurationOutput
end

local record DeleteMatchmakingRuleSetInput
    Name: string
end

local record DeleteMatchmakingRuleSetOutput
end

local record DeleteScalingPolicyInput
    Name: string
    FleetId: string
end

local record DeleteScalingPolicyOutput
end

local record DeleteScriptInput
    ScriptId: string
end

local record DeleteScriptOutput
end

local record DeleteVpcPeeringAuthorizationInput
    GameLiftAwsAccountId: string
    PeerVpcId: string
end

local record DeleteVpcPeeringAuthorizationOutput
end

local record DeleteVpcPeeringConnectionInput
    FleetId: string
    VpcPeeringConnectionId: string
end

local record DeleteVpcPeeringConnectionOutput
end

local record DeregisterComputeInput
    FleetId: string
    ComputeName: string
end

local record DeregisterComputeOutput
end

local record DeregisterGameServerInput
    GameServerGroupName: string
    GameServerId: string
end

local record DeregisterGameServerOutput
end

local record DescribeAliasInput
    AliasId: string
end

local record DescribeAliasOutput
    Alias: Alias
end

local record DescribeBuildInput
    BuildId: string
end

local record DescribeBuildOutput
    Build: Build
end

local record DescribeComputeInput
    FleetId: string
    ComputeName: string
end

local record DescribeComputeOutput
    Compute: Compute
end

local record DescribeContainerFleetInput
    FleetId: string
end

local record DescribeContainerFleetOutput
    ContainerFleet: ContainerFleet
end

local record DescribeContainerGroupDefinitionInput
    Name: string
    VersionNumber: number
end

local record DescribeContainerGroupDefinitionOutput
    ContainerGroupDefinition: ContainerGroupDefinition
end

local record DescribeContainerGroupPortMappingsInput
    FleetId: string
    ContainerGroupType: string
    ComputeName: string
    InstanceId: string
    ContainerName: string
end

local record DescribeContainerGroupPortMappingsOutput
    FleetId: string
    Location: string
    ContainerGroupDefinitionArn: string
    ContainerGroupType: string
    ComputeName: string
    InstanceId: string
    ContainerGroupPortMappings: {ContainerGroupPortMapping}
end

local record DescribeEC2InstanceLimitsInput
    EC2InstanceType: string
    Location: string
end

local record DescribeEC2InstanceLimitsOutput
    EC2InstanceLimits: {EC2InstanceLimit}
end

local record DescribeFleetAttributesInput
    FleetIds: {string}
    Limit: number
    NextToken: string
end

local record DescribeFleetAttributesOutput
    FleetAttributes: {FleetAttributes}
    NextToken: string
end

local record DescribeFleetCapacityInput
    FleetIds: {string}
    Limit: number
    NextToken: string
end

local record DescribeFleetCapacityOutput
    FleetCapacity: {FleetCapacity}
    NextToken: string
end

local record DescribeFleetDeploymentInput
    FleetId: string
    DeploymentId: string
end

local record DescribeFleetDeploymentOutput
    FleetDeployment: FleetDeployment
    LocationalDeployments: {string : LocationalDeployment}
end

local record DescribeFleetEventsInput
    FleetId: string
    StartTime: number
    EndTime: number
    Limit: number
    NextToken: string
end

local record DescribeFleetEventsOutput
    Events: {Event}
    NextToken: string
end

local record DescribeFleetLocationAttributesInput
    FleetId: string
    Locations: {string}
    Limit: number
    NextToken: string
end

local record DescribeFleetLocationAttributesOutput
    FleetId: string
    FleetArn: string
    LocationAttributes: {LocationAttributes}
    NextToken: string
end

local record DescribeFleetLocationCapacityInput
    FleetId: string
    Location: string
end

local record DescribeFleetLocationCapacityOutput
    FleetCapacity: FleetCapacity
end

local record DescribeFleetLocationUtilizationInput
    FleetId: string
    Location: string
end

local record DescribeFleetLocationUtilizationOutput
    FleetUtilization: FleetUtilization
end

local record DescribeFleetPortSettingsInput
    FleetId: string
    Location: string
end

local record DescribeFleetPortSettingsOutput
    FleetId: string
    FleetArn: string
    InboundPermissions: {IpPermission}
    UpdateStatus: string
    Location: string
end

local record DescribeFleetUtilizationInput
    FleetIds: {string}
    Limit: number
    NextToken: string
end

local record DescribeFleetUtilizationOutput
    FleetUtilization: {FleetUtilization}
    NextToken: string
end

local record DescribeGameServerInput
    GameServerGroupName: string
    GameServerId: string
end

local record DescribeGameServerOutput
    GameServer: GameServer
end

local record DescribeGameServerGroupInput
    GameServerGroupName: string
end

local record DescribeGameServerGroupOutput
    GameServerGroup: GameServerGroup
end

local record DescribeGameServerInstancesInput
    GameServerGroupName: string
    InstanceIds: {string}
    Limit: number
    NextToken: string
end

local record DescribeGameServerInstancesOutput
    GameServerInstances: {GameServerInstance}
    NextToken: string
end

local record DescribeGameSessionDetailsInput
    FleetId: string
    GameSessionId: string
    AliasId: string
    Location: string
    StatusFilter: string
    Limit: number
    NextToken: string
end

local record DescribeGameSessionDetailsOutput
    GameSessionDetails: {GameSessionDetail}
    NextToken: string
end

local record DescribeGameSessionPlacementInput
    PlacementId: string
end

local record DescribeGameSessionPlacementOutput
    GameSessionPlacement: GameSessionPlacement
end

local record DescribeGameSessionQueuesInput
    Names: {string}
    Limit: number
    NextToken: string
end

local record DescribeGameSessionQueuesOutput
    GameSessionQueues: {GameSessionQueue}
    NextToken: string
end

local record DescribeGameSessionsInput
    FleetId: string
    GameSessionId: string
    AliasId: string
    Location: string
    StatusFilter: string
    Limit: number
    NextToken: string
end

local record DescribeGameSessionsOutput
    GameSessions: {GameSession}
    NextToken: string
end

local record DescribeInstancesInput
    FleetId: string
    InstanceId: string
    Limit: number
    NextToken: string
    Location: string
end

local record DescribeInstancesOutput
    Instances: {Instance}
    NextToken: string
end

local record DescribeMatchmakingInput
    TicketIds: {string}
end

local record DescribeMatchmakingOutput
    TicketList: {MatchmakingTicket}
end

local record DescribeMatchmakingConfigurationsInput
    Names: {string}
    RuleSetName: string
    Limit: number
    NextToken: string
end

local record DescribeMatchmakingConfigurationsOutput
    Configurations: {MatchmakingConfiguration}
    NextToken: string
end

local record DescribeMatchmakingRuleSetsInput
    Names: {string}
    Limit: number
    NextToken: string
end

local record DescribeMatchmakingRuleSetsOutput
    RuleSets: {MatchmakingRuleSet}
    NextToken: string
end

local record DescribePlayerSessionsInput
    GameSessionId: string
    PlayerId: string
    PlayerSessionId: string
    PlayerSessionStatusFilter: string
    Limit: number
    NextToken: string
end

local record DescribePlayerSessionsOutput
    PlayerSessions: {PlayerSession}
    NextToken: string
end

local record DescribeRuntimeConfigurationInput
    FleetId: string
end

local record DescribeRuntimeConfigurationOutput
    RuntimeConfiguration: RuntimeConfiguration
end

local record DescribeScalingPoliciesInput
    FleetId: string
    StatusFilter: string
    Limit: number
    NextToken: string
    Location: string
end

local record DescribeScalingPoliciesOutput
    ScalingPolicies: {ScalingPolicy}
    NextToken: string
end

local record DescribeScriptInput
    ScriptId: string
end

local record DescribeScriptOutput
    Script: Script
end

local record DescribeVpcPeeringAuthorizationsInput
end

local record DescribeVpcPeeringAuthorizationsOutput
    VpcPeeringAuthorizations: {VpcPeeringAuthorization}
end

local record DescribeVpcPeeringConnectionsInput
    FleetId: string
end

local record DescribeVpcPeeringConnectionsOutput
    VpcPeeringConnections: {VpcPeeringConnection}
end

local record GetComputeAccessInput
    FleetId: string
    ComputeName: string
end

local record GetComputeAccessOutput
    FleetId: string
    FleetArn: string
    ComputeName: string
    ComputeArn: string
    Credentials: AwsCredentials
    Target: string
    ContainerIdentifiers: {ContainerIdentifier}
end

local record GetComputeAuthTokenInput
    FleetId: string
    ComputeName: string
end

local record GetComputeAuthTokenOutput
    FleetId: string
    FleetArn: string
    ComputeName: string
    ComputeArn: string
    AuthToken: string
    ExpirationTimestamp: number
end

local record GetGameSessionLogUrlInput
    GameSessionId: string
end

local record GetGameSessionLogUrlOutput
    PreSignedUrl: string
end

local record GetInstanceAccessInput
    FleetId: string
    InstanceId: string
end

local record GetInstanceAccessOutput
    InstanceAccess: InstanceAccess
end

local record GetPlayerConnectionDetailsInput
    GameSessionId: string
    PlayerIds: {string}
end

local record GetPlayerConnectionDetailsOutput
    GameSessionId: string
    PlayerConnectionDetails: {PlayerConnectionDetail}
end

local record ListAliasesInput
    RoutingStrategyType: string
    Name: string
    Limit: number
    NextToken: string
end

local record ListAliasesOutput
    Aliases: {Alias}
    NextToken: string
end

local record ListBuildsInput
    Status: string
    Limit: number
    NextToken: string
end

local record ListBuildsOutput
    Builds: {Build}
    NextToken: string
end

local record ListComputeInput
    FleetId: string
    Location: string
    ContainerGroupDefinitionName: string
    ComputeStatus: string
    Limit: number
    NextToken: string
end

local record ListComputeOutput
    ComputeList: {Compute}
    NextToken: string
end

local record ListContainerFleetsInput
    ContainerGroupDefinitionName: string
    Limit: number
    NextToken: string
end

local record ListContainerFleetsOutput
    ContainerFleets: {ContainerFleet}
    NextToken: string
end

local record ListContainerGroupDefinitionsInput
    ContainerGroupType: string
    Limit: number
    NextToken: string
end

local record ListContainerGroupDefinitionsOutput
    ContainerGroupDefinitions: {ContainerGroupDefinition}
    NextToken: string
end

local record ListContainerGroupDefinitionVersionsInput
    Name: string
    Limit: number
    NextToken: string
end

local record ListContainerGroupDefinitionVersionsOutput
    ContainerGroupDefinitions: {ContainerGroupDefinition}
    NextToken: string
end

local record ListFleetDeploymentsInput
    FleetId: string
    Limit: number
    NextToken: string
end

local record ListFleetDeploymentsOutput
    FleetDeployments: {FleetDeployment}
    NextToken: string
end

local record ListFleetsInput
    BuildId: string
    ScriptId: string
    Limit: number
    NextToken: string
end

local record ListFleetsOutput
    FleetIds: {string}
    NextToken: string
end

local record ListGameServerGroupsInput
    Limit: number
    NextToken: string
end

local record ListGameServerGroupsOutput
    GameServerGroups: {GameServerGroup}
    NextToken: string
end

local record ListGameServersInput
    GameServerGroupName: string
    SortOrder: string
    Limit: number
    NextToken: string
end

local record ListGameServersOutput
    GameServers: {GameServer}
    NextToken: string
end

local record ListLocationsInput
    Filters: {string}
    Limit: number
    NextToken: string
end

local record ListLocationsOutput
    Locations: {LocationModel}
    NextToken: string
end

local record ListScriptsInput
    Limit: number
    NextToken: string
end

local record ListScriptsOutput
    Scripts: {Script}
    NextToken: string
end

local record ListTagsForResourceInput
    ResourceARN: string
end

local record ListTagsForResourceOutput
    Tags: {Tag}
end

local record PutScalingPolicyInput
    Name: string
    FleetId: string
    ScalingAdjustment: number
    ScalingAdjustmentType: string
    Threshold: number
    ComparisonOperator: string
    EvaluationPeriods: number
    MetricName: string
    PolicyType: string
    TargetConfiguration: TargetConfiguration
end

local record PutScalingPolicyOutput
    Name: string
end

local record RegisterComputeInput
    FleetId: string
    ComputeName: string
    CertificatePath: string
    DnsName: string
    IpAddress: string
    Location: string
end

local record RegisterComputeOutput
    Compute: Compute
end

local record RegisterGameServerInput
    GameServerGroupName: string
    GameServerId: string
    InstanceId: string
    ConnectionInfo: string
    GameServerData: string
end

local record RegisterGameServerOutput
    GameServer: GameServer
end

local record RequestUploadCredentialsInput
    BuildId: string
end

local record RequestUploadCredentialsOutput
    UploadCredentials: AwsCredentials
    StorageLocation: S3Location
end

local record ResolveAliasInput
    AliasId: string
end

local record ResolveAliasOutput
    FleetId: string
    FleetArn: string
end

local record ResumeGameServerGroupInput
    GameServerGroupName: string
    ResumeActions: {string}
end

local record ResumeGameServerGroupOutput
    GameServerGroup: GameServerGroup
end

local record SearchGameSessionsInput
    FleetId: string
    AliasId: string
    Location: string
    FilterExpression: string
    SortExpression: string
    Limit: number
    NextToken: string
end

local record SearchGameSessionsOutput
    GameSessions: {GameSession}
    NextToken: string
end

local record StartFleetActionsInput
    FleetId: string
    Actions: {string}
    Location: string
end

local record StartFleetActionsOutput
    FleetId: string
    FleetArn: string
end

local record StartGameSessionPlacementInput
    PlacementId: string
    GameSessionQueueName: string
    GameProperties: {GameProperty}
    MaximumPlayerSessionCount: number
    GameSessionName: string
    PlayerLatencies: {PlayerLatency}
    DesiredPlayerSessions: {DesiredPlayerSession}
    GameSessionData: string
    PriorityConfigurationOverride: PriorityConfigurationOverride
end

local record StartGameSessionPlacementOutput
    GameSessionPlacement: GameSessionPlacement
end

local record StartMatchBackfillInput
    TicketId: string
    ConfigurationName: string
    GameSessionArn: string
    Players: {Player}
end

local record StartMatchBackfillOutput
    MatchmakingTicket: MatchmakingTicket
end

local record StartMatchmakingInput
    TicketId: string
    ConfigurationName: string
    Players: {Player}
end

local record StartMatchmakingOutput
    MatchmakingTicket: MatchmakingTicket
end

local record StopFleetActionsInput
    FleetId: string
    Actions: {string}
    Location: string
end

local record StopFleetActionsOutput
    FleetId: string
    FleetArn: string
end

local record StopGameSessionPlacementInput
    PlacementId: string
end

local record StopGameSessionPlacementOutput
    GameSessionPlacement: GameSessionPlacement
end

local record StopMatchmakingInput
    TicketId: string
end

local record StopMatchmakingOutput
end

local record SuspendGameServerGroupInput
    GameServerGroupName: string
    SuspendActions: {string}
end

local record SuspendGameServerGroupOutput
    GameServerGroup: GameServerGroup
end

local record TagResourceInput
    ResourceARN: string
    Tags: {Tag}
end

local record TagResourceOutput
end

local record TerminateGameSessionInput
    GameSessionId: string
    TerminationMode: string
end

local record TerminateGameSessionOutput
    GameSession: GameSession
end

local record UntagResourceInput
    ResourceARN: string
    TagKeys: {string}
end

local record UntagResourceOutput
end

local record UpdateAliasInput
    AliasId: string
    Name: string
    Description: string
    RoutingStrategy: RoutingStrategy
end

local record UpdateAliasOutput
    Alias: Alias
end

local record UpdateBuildInput
    BuildId: string
    Name: string
    Version: string
end

local record UpdateBuildOutput
    Build: Build
end

local record UpdateContainerFleetInput
    FleetId: string
    GameServerContainerGroupDefinitionName: string
    PerInstanceContainerGroupDefinitionName: string
    GameServerContainerGroupsPerInstance: number
    InstanceConnectionPortRange: ConnectionPortRange
    InstanceInboundPermissionAuthorizations: {IpPermission}
    InstanceInboundPermissionRevocations: {IpPermission}
    DeploymentConfiguration: DeploymentConfiguration
    Description: string
    MetricGroups: {string}
    NewGameSessionProtectionPolicy: string
    GameSessionCreationLimitPolicy: GameSessionCreationLimitPolicy
    LogConfiguration: LogConfiguration
    RemoveAttributes: {string}
end

local record UpdateContainerFleetOutput
    ContainerFleet: ContainerFleet
end

local record UpdateContainerGroupDefinitionInput
    Name: string
    GameServerContainerDefinition: GameServerContainerDefinitionInput
    SupportContainerDefinitions: {SupportContainerDefinitionInput}
    TotalMemoryLimitMebibytes: number
    TotalVcpuLimit: number
    VersionDescription: string
    SourceVersionNumber: number
    OperatingSystem: string
end

local record UpdateContainerGroupDefinitionOutput
    ContainerGroupDefinition: ContainerGroupDefinition
end

local record UpdateFleetAttributesInput
    FleetId: string
    Name: string
    Description: string
    NewGameSessionProtectionPolicy: string
    ResourceCreationLimitPolicy: ResourceCreationLimitPolicy
    MetricGroups: {string}
    AnywhereConfiguration: AnywhereConfiguration
end

local record UpdateFleetAttributesOutput
    FleetId: string
    FleetArn: string
end

local record UpdateFleetCapacityInput
    FleetId: string
    DesiredInstances: number
    MinSize: number
    MaxSize: number
    Location: string
    ManagedCapacityConfiguration: ManagedCapacityConfiguration
end

local record UpdateFleetCapacityOutput
    FleetId: string
    FleetArn: string
    Location: string
    ManagedCapacityConfiguration: ManagedCapacityConfiguration
end

local record UpdateFleetPortSettingsInput
    FleetId: string
    InboundPermissionAuthorizations: {IpPermission}
    InboundPermissionRevocations: {IpPermission}
end

local record UpdateFleetPortSettingsOutput
    FleetId: string
    FleetArn: string
end

local record UpdateGameServerInput
    GameServerGroupName: string
    GameServerId: string
    GameServerData: string
    UtilizationStatus: string
    HealthCheck: string
end

local record UpdateGameServerOutput
    GameServer: GameServer
end

local record UpdateGameServerGroupInput
    GameServerGroupName: string
    RoleArn: string
    InstanceDefinitions: {InstanceDefinition}
    GameServerProtectionPolicy: string
    BalancingStrategy: string
end

local record UpdateGameServerGroupOutput
    GameServerGroup: GameServerGroup
end

local record UpdateGameSessionInput
    GameSessionId: string
    MaximumPlayerSessionCount: number
    Name: string
    PlayerSessionCreationPolicy: string
    ProtectionPolicy: string
    GameProperties: {GameProperty}
end

local record UpdateGameSessionOutput
    GameSession: GameSession
end

local record UpdateGameSessionQueueInput
    Name: string
    TimeoutInSeconds: number
    PlayerLatencyPolicies: {PlayerLatencyPolicy}
    Destinations: {GameSessionQueueDestination}
    FilterConfiguration: FilterConfiguration
    PriorityConfiguration: PriorityConfiguration
    CustomEventData: string
    NotificationTarget: string
end

local record UpdateGameSessionQueueOutput
    GameSessionQueue: GameSessionQueue
end

local record UpdateMatchmakingConfigurationInput
    Name: string
    Description: string
    GameSessionQueueArns: {string}
    RequestTimeoutSeconds: number
    AcceptanceTimeoutSeconds: number
    AcceptanceRequired: boolean
    RuleSetName: string
    NotificationTarget: string
    AdditionalPlayerCount: number
    CustomEventData: string
    GameProperties: {GameProperty}
    GameSessionData: string
    BackfillMode: string
    FlexMatchMode: string
end

local record UpdateMatchmakingConfigurationOutput
    Configuration: MatchmakingConfiguration
end

local record UpdateRuntimeConfigurationInput
    FleetId: string
    RuntimeConfiguration: RuntimeConfiguration
end

local record UpdateRuntimeConfigurationOutput
    RuntimeConfiguration: RuntimeConfiguration
end

local record UpdateScriptInput
    ScriptId: string
    Name: string
    Version: string
    StorageLocation: S3Location
    ZipFile: string
end

local record UpdateScriptOutput
    Script: Script
end

local record ValidateMatchmakingRuleSetInput
    RuleSetBody: string
end

local record ValidateMatchmakingRuleSetOutput
    Valid: boolean
end

local record InternalServiceException
    Message: string
end

local record InvalidRequestException
    Message: string
end

local record NotFoundException
    Message: string
end

local record UnsupportedRegionException
    Message: string
end

local record ConflictException
    Message: string
end

local record InternalServiceException
    Message: string
end

local record InvalidRequestException
    Message: string
end

local record NotFoundException
    Message: string
end

local record OutOfCapacityException
    Message: string
end

local record UnauthorizedException
    Message: string
end

local record ConflictException
    Message: string
end

local record InternalServiceException
    Message: string
end

local record InvalidRequestException
    Message: string
end

local record LimitExceededException
    Message: string
end

local record TaggingFailedException
    Message: string
end

local record UnauthorizedException
    Message: string
end

local record ConflictException
    Message: string
end

local record InternalServiceException
    Message: string
end

local record InvalidRequestException
    Message: string
end

local record TaggingFailedException
    Message: string
end

local record UnauthorizedException
    Message: string
end

local record ConflictException
    Message: string
end

local record InternalServiceException
    Message: string
end

local record InvalidRequestException
    Message: string
end

local record LimitExceededException
    Message: string
end

local record TaggingFailedException
    Message: string
end

local record UnauthorizedException
    Message: string
end

local record UnsupportedRegionException
    Message: string
end

local record ConflictException
    Message: string
end

local record InternalServiceException
    Message: string
end

local record InvalidRequestException
    Message: string
end

local record LimitExceededException
    Message: string
end

local record TaggingFailedException
    Message: string
end

local record UnauthorizedException
    Message: string
end

local record UnsupportedRegionException
    Message: string
end

local record ConflictException
    Message: string
end

local record InternalServiceException
    Message: string
end

local record InvalidRequestException
    Message: string
end

local record LimitExceededException
    Message: string
end

local record NotFoundException
    Message: string
end

local record NotReadyException
    Message: string
end

local record TaggingFailedException
    Message: string
end

local record UnauthorizedException
    Message: string
end

local record UnsupportedRegionException
    Message: string
end

local record ConflictException
    Message: string
end

local record InternalServiceException
    Message: string
end

local record InvalidFleetStatusException
    Message: string
end

local record InvalidRequestException
    Message: string
end

local record LimitExceededException
    Message: string
end

local record NotFoundException
    Message: string
end

local record NotReadyException
    Message: string
end

local record UnauthorizedException
    Message: string
end

local record UnsupportedRegionException
    Message: string
end

local record ConflictException
    Message: string
end

local record InternalServiceException
    Message: string
end

local record InvalidRequestException
    Message: string
end

local record LimitExceededException
    Message: string
end

local record UnauthorizedException
    Message: string
end

local record ConflictException
    Message: string
end

local record FleetCapacityExceededException
    Message: string
end

local record IdempotentParameterMismatchException
    Message: string
end

local record InternalServiceException
    Message: string
end

local record InvalidFleetStatusException
    Message: string
end

local record InvalidRequestException
    Message: string
end

local record LimitExceededException
    Message: string
end

local record NotFoundException
    Message: string
end

local record TerminalRoutingStrategyException
    Message: string
end

local record UnauthorizedException
    Message: string
end

local record UnsupportedRegionException
    Message: string
end

local record InternalServiceException
    Message: string
end

local record InvalidRequestException
    Message: string
end

local record LimitExceededException
    Message: string
end

local record NotFoundException
    Message: string
end

local record TaggingFailedException
    Message: string
end

local record UnauthorizedException
    Message: string
end

local record ConflictException
    Message: string
end

local record InternalServiceException
    Message: string
end

local record InvalidRequestException
    Message: string
end

local record LimitExceededException
    Message: string
end

local record TaggingFailedException
    Message: string
end

local record UnauthorizedException
    Message: string
end

local record InternalServiceException
    Message: string
end

local record InvalidRequestException
    Message: string
end

local record LimitExceededException
    Message: string
end

local record NotFoundException
    Message: string
end

local record TaggingFailedException
    Message: string
end

local record UnsupportedRegionException
    Message: string
end

local record InternalServiceException
    Message: string
end

local record InvalidRequestException
    Message: string
end

local record LimitExceededException
    Message: string
end

local record TaggingFailedException
    Message: string
end

local record UnsupportedRegionException
    Message: string
end

local record GameSessionFullException
    Message: string
end

local record InternalServiceException
    Message: string
end

local record InvalidGameSessionStatusException
    Message: string
end

local record InvalidRequestException
    Message: string
end

local record NotFoundException
    Message: string
end

local record TerminalRoutingStrategyException
    Message: string
end

local record UnauthorizedException
    Message: string
end

local record GameSessionFullException
    Message: string
end

local record InternalServiceException
    Message: string
end

local record InvalidGameSessionStatusException
    Message: string
end

local record InvalidRequestException
    Message: string
end

local record NotFoundException
    Message: string
end

local record TerminalRoutingStrategyException
    Message: string
end

local record UnauthorizedException
    Message: string
end

local record ConflictException
    Message: string
end

local record InternalServiceException
    Message: string
end

local record InvalidRequestException
    Message: string
end

local record TaggingFailedException
    Message: string
end

local record UnauthorizedException
    Message: string
end

local record InternalServiceException
    Message: string
end

local record InvalidRequestException
    Message: string
end

local record NotFoundException
    Message: string
end

local record UnauthorizedException
    Message: string
end

local record InternalServiceException
    Message: string
end

local record InvalidRequestException
    Message: string
end

local record NotFoundException
    Message: string
end

local record UnauthorizedException
    Message: string
end

local record InternalServiceException
    Message: string
end

local record InvalidRequestException
    Message: string
end

local record NotFoundException
    Message: string
end

local record TaggingFailedException
    Message: string
end

local record UnauthorizedException
    Message: string
end

local record InternalServiceException
    Message: string
end

local record InvalidRequestException
    Message: string
end

local record NotFoundException
    Message: string
end

local record TaggingFailedException
    Message: string
end

local record UnauthorizedException
    Message: string
end

local record InternalServiceException
    Message: string
end

local record InvalidRequestException
    Message: string
end

local record NotFoundException
    Message: string
end

local record TaggingFailedException
    Message: string
end

local record UnauthorizedException
    Message: string
end

local record UnsupportedRegionException
    Message: string
end

local record InternalServiceException
    Message: string
end

local record InvalidRequestException
    Message: string
end

local record NotFoundException
    Message: string
end

local record TaggingFailedException
    Message: string
end

local record UnauthorizedException
    Message: string
end

local record UnsupportedRegionException
    Message: string
end

local record InternalServiceException
    Message: string
end

local record InvalidFleetStatusException
    Message: string
end

local record InvalidRequestException
    Message: string
end

local record NotFoundException
    Message: string
end

local record TaggingFailedException
    Message: string
end

local record UnauthorizedException
    Message: string
end

local record InternalServiceException
    Message: string
end

local record InvalidRequestException
    Message: string
end

local record NotFoundException
    Message: string
end

local record UnauthorizedException
    Message: string
end

local record UnsupportedRegionException
    Message: string
end

local record InternalServiceException
    Message: string
end

local record InvalidRequestException
    Message: string
end

local record NotFoundException
    Message: string
end

local record UnauthorizedException
    Message: string
end

local record InternalServiceException
    Message: string
end

local record InvalidRequestException
    Message: string
end

local record NotFoundException
    Message: string
end

local record TaggingFailedException
    Message: string
end

local record UnauthorizedException
    Message: string
end

local record InternalServiceException
    Message: string
end

local record InvalidRequestException
    Message: string
end

local record NotFoundException
    Message: string
end

local record UnauthorizedException
    Message: string
end

local record InternalServiceException
    Message: string
end

local record InvalidRequestException
    Message: string
end

local record NotFoundException
    Message: string
end

local record TaggingFailedException
    Message: string
end

local record UnsupportedRegionException
    Message: string
end

local record InternalServiceException
    Message: string
end

local record InvalidRequestException
    Message: string
end

local record NotFoundException
    Message: string
end

local record TaggingFailedException
    Message: string
end

local record UnsupportedRegionException
    Message: string
end

local record InternalServiceException
    Message: string
end

local record InvalidRequestException
    Message: string
end

local record NotFoundException
    Message: string
end

local record UnauthorizedException
    Message: string
end

local record UnsupportedRegionException
    Message: string
end

local record InternalServiceException
    Message: string
end

local record InvalidRequestException
    Message: string
end

local record NotFoundException
    Message: string
end

local record TaggingFailedException
    Message: string
end

local record UnauthorizedException
    Message: string
end

local record InternalServiceException
    Message: string
end

local record InvalidRequestException
    Message: string
end

local record NotFoundException
    Message: string
end

local record UnauthorizedException
    Message: string
end

local record InternalServiceException
    Message: string
end

local record InvalidRequestException
    Message: string
end

local record NotFoundException
    Message: string
end

local record UnauthorizedException
    Message: string
end

local record InternalServiceException
    Message: string
end

local record InvalidRequestException
    Message: string
end

local record NotFoundException
    Message: string
end

local record UnauthorizedException
    Message: string
end

local record InternalServiceException
    Message: string
end

local record InvalidRequestException
    Message: string
end

local record NotFoundException
    Message: string
end

local record UnauthorizedException
    Message: string
end

local record InternalServiceException
    Message: string
end

local record InvalidRequestException
    Message: string
end

local record NotFoundException
    Message: string
end

local record UnauthorizedException
    Message: string
end

local record InternalServiceException
    Message: string
end

local record InvalidRequestException
    Message: string
end

local record NotFoundException
    Message: string
end

local record UnauthorizedException
    Message: string
end

local record InternalServiceException
    Message: string
end

local record InvalidRequestException
    Message: string
end

local record NotFoundException
    Message: string
end

local record UnauthorizedException
    Message: string
end

local record UnsupportedRegionException
    Message: string
end

local record InternalServiceException
    Message: string
end

local record InvalidRequestException
    Message: string
end

local record NotFoundException
    Message: string
end

local record UnauthorizedException
    Message: string
end

local record UnsupportedRegionException
    Message: string
end

local record InternalServiceException
    Message: string
end

local record InvalidRequestException
    Message: string
end

local record NotFoundException
    Message: string
end

local record UnauthorizedException
    Message: string
end

local record UnsupportedRegionException
    Message: string
end

local record InternalServiceException
    Message: string
end

local record InvalidRequestException
    Message: string
end

local record LimitExceededException
    Message: string
end

local record NotFoundException
    Message: string
end

local record UnauthorizedException
    Message: string
end

local record UnsupportedRegionException
    Message: string
end

local record InternalServiceException
    Message: string
end

local record InvalidRequestException
    Message: string
end

local record UnauthorizedException
    Message: string
end

local record UnsupportedRegionException
    Message: string
end

local record InternalServiceException
    Message: string
end

local record InvalidRequestException
    Message: string
end

local record NotFoundException
    Message: string
end

local record UnauthorizedException
    Message: string
end

local record InternalServiceException
    Message: string
end

local record InvalidRequestException
    Message: string
end

local record NotFoundException
    Message: string
end

local record UnauthorizedException
    Message: string
end

local record UnsupportedRegionException
    Message: string
end

local record InternalServiceException
    Message: string
end

local record InvalidRequestException
    Message: string
end

local record NotFoundException
    Message: string
end

local record UnauthorizedException
    Message: string
end

local record UnsupportedRegionException
    Message: string
end

local record InternalServiceException
    Message: string
end

local record InvalidRequestException
    Message: string
end

local record NotFoundException
    Message: string
end

local record UnauthorizedException
    Message: string
end

local record UnsupportedRegionException
    Message: string
end

local record InternalServiceException
    Message: string
end

local record InvalidRequestException
    Message: string
end

local record NotFoundException
    Message: string
end

local record UnauthorizedException
    Message: string
end

local record UnsupportedRegionException
    Message: string
end

local record InternalServiceException
    Message: string
end

local record InvalidRequestException
    Message: string
end

local record NotFoundException
    Message: string
end

local record UnauthorizedException
    Message: string
end

local record UnsupportedRegionException
    Message: string
end

local record InternalServiceException
    Message: string
end

local record InvalidRequestException
    Message: string
end

local record NotFoundException
    Message: string
end

local record UnauthorizedException
    Message: string
end

local record UnsupportedRegionException
    Message: string
end

local record InternalServiceException
    Message: string
end

local record InvalidRequestException
    Message: string
end

local record NotFoundException
    Message: string
end

local record UnauthorizedException
    Message: string
end

local record UnsupportedRegionException
    Message: string
end

local record InternalServiceException
    Message: string
end

local record InvalidRequestException
    Message: string
end

local record NotFoundException
    Message: string
end

local record UnauthorizedException
    Message: string
end

local record InternalServiceException
    Message: string
end

local record InvalidRequestException
    Message: string
end

local record NotFoundException
    Message: string
end

local record UnauthorizedException
    Message: string
end

local record InternalServiceException
    Message: string
end

local record InvalidRequestException
    Message: string
end

local record NotFoundException
    Message: string
end

local record UnauthorizedException
    Message: string
end

local record InternalServiceException
    Message: string
end

local record InvalidRequestException
    Message: string
end

local record NotFoundException
    Message: string
end

local record UnauthorizedException
    Message: string
end

local record InternalServiceException
    Message: string
end

local record InvalidRequestException
    Message: string
end

local record NotFoundException
    Message: string
end

local record TerminalRoutingStrategyException
    Message: string
end

local record UnauthorizedException
    Message: string
end

local record UnsupportedRegionException
    Message: string
end

local record InternalServiceException
    Message: string
end

local record InvalidRequestException
    Message: string
end

local record NotFoundException
    Message: string
end

local record UnauthorizedException
    Message: string
end

local record InternalServiceException
    Message: string
end

local record InvalidRequestException
    Message: string
end

local record NotFoundException
    Message: string
end

local record UnauthorizedException
    Message: string
end

local record InternalServiceException
    Message: string
end

local record InvalidRequestException
    Message: string
end

local record NotFoundException
    Message: string
end

local record TerminalRoutingStrategyException
    Message: string
end

local record UnauthorizedException
    Message: string
end

local record UnsupportedRegionException
    Message: string
end

local record InternalServiceException
    Message: string
end

local record InvalidRequestException
    Message: string
end

local record NotFoundException
    Message: string
end

local record UnauthorizedException
    Message: string
end

local record UnsupportedRegionException
    Message: string
end

local record InternalServiceException
    Message: string
end

local record InvalidRequestException
    Message: string
end

local record UnsupportedRegionException
    Message: string
end

local record InternalServiceException
    Message: string
end

local record InvalidRequestException
    Message: string
end

local record UnsupportedRegionException
    Message: string
end

local record InternalServiceException
    Message: string
end

local record InvalidRequestException
    Message: string
end

local record NotFoundException
    Message: string
end

local record UnsupportedRegionException
    Message: string
end

local record InternalServiceException
    Message: string
end

local record InvalidRequestException
    Message: string
end

local record NotFoundException
    Message: string
end

local record UnauthorizedException
    Message: string
end

local record InternalServiceException
    Message: string
end

local record InvalidRequestException
    Message: string
end

local record NotFoundException
    Message: string
end

local record UnauthorizedException
    Message: string
end

local record InternalServiceException
    Message: string
end

local record InvalidRequestException
    Message: string
end

local record NotFoundException
    Message: string
end

local record UnauthorizedException
    Message: string
end

local record UnsupportedRegionException
    Message: string
end

local record InternalServiceException
    Message: string
end

local record InvalidRequestException
    Message: string
end

local record NotFoundException
    Message: string
end

local record UnauthorizedException
    Message: string
end

local record InternalServiceException
    Message: string
end

local record InvalidRequestException
    Message: string
end

local record UnauthorizedException
    Message: string
end

local record InternalServiceException
    Message: string
end

local record InvalidRequestException
    Message: string
end

local record NotFoundException
    Message: string
end

local record UnauthorizedException
    Message: string
end

local record InternalServiceException
    Message: string
end

local record InvalidRequestException
    Message: string
end

local record NotFoundException
    Message: string
end

local record UnauthorizedException
    Message: string
end

local record UnsupportedRegionException
    Message: string
end

local record InternalServiceException
    Message: string
end

local record InvalidRequestException
    Message: string
end

local record NotFoundException
    Message: string
end

local record UnauthorizedException
    Message: string
end

local record UnsupportedRegionException
    Message: string
end

local record InternalServiceException
    Message: string
end

local record InvalidRequestException
    Message: string
end

local record NotFoundException
    Message: string
end

local record UnauthorizedException
    Message: string
end

local record InternalServiceException
    Message: string
end

local record InvalidRequestException
    Message: string
end

local record NotFoundException
    Message: string
end

local record UnauthorizedException
    Message: string
end

local record InternalServiceException
    Message: string
end

local record InvalidGameSessionStatusException
    Message: string
end

local record InvalidRequestException
    Message: string
end

local record LimitExceededException
    Message: string
end

local record NotFoundException
    Message: string
end

local record UnauthorizedException
    Message: string
end

local record UnsupportedRegionException
    Message: string
end

local record InternalServiceException
    Message: string
end

local record InvalidRequestException
    Message: string
end

local record UnauthorizedException
    Message: string
end

local record InternalServiceException
    Message: string
end

local record InvalidRequestException
    Message: string
end

local record UnauthorizedException
    Message: string
end

local record InternalServiceException
    Message: string
end

local record InvalidRequestException
    Message: string
end

local record UnauthorizedException
    Message: string
end

local record UnsupportedRegionException
    Message: string
end

local record InternalServiceException
    Message: string
end

local record InvalidRequestException
    Message: string
end

local record UnauthorizedException
    Message: string
end

local record UnsupportedRegionException
    Message: string
end

local record InternalServiceException
    Message: string
end

local record InvalidRequestException
    Message: string
end

local record UnauthorizedException
    Message: string
end

local record UnsupportedRegionException
    Message: string
end

local record InternalServiceException
    Message: string
end

local record InvalidRequestException
    Message: string
end

local record NotFoundException
    Message: string
end

local record UnauthorizedException
    Message: string
end

local record UnsupportedRegionException
    Message: string
end

local record InternalServiceException
    Message: string
end

local record InvalidRequestException
    Message: string
end

local record NotFoundException
    Message: string
end

local record UnauthorizedException
    Message: string
end

local record UnsupportedRegionException
    Message: string
end

local record InternalServiceException
    Message: string
end

local record InvalidRequestException
    Message: string
end

local record NotFoundException
    Message: string
end

local record UnauthorizedException
    Message: string
end

local record InternalServiceException
    Message: string
end

local record InvalidRequestException
    Message: string
end

local record UnauthorizedException
    Message: string
end

local record InternalServiceException
    Message: string
end

local record InvalidRequestException
    Message: string
end

local record UnauthorizedException
    Message: string
end

local record InternalServiceException
    Message: string
end

local record InvalidRequestException
    Message: string
end

local record UnauthorizedException
    Message: string
end

local record InternalServiceException
    Message: string
end

local record InvalidRequestException
    Message: string
end

local record UnauthorizedException
    Message: string
end

local record InternalServiceException
    Message: string
end

local record InvalidRequestException
    Message: string
end

local record NotFoundException
    Message: string
end

local record TaggingFailedException
    Message: string
end

local record UnsupportedRegionException
    Message: string
end

local record InternalServiceException
    Message: string
end

local record InvalidRequestException
    Message: string
end

local record NotFoundException
    Message: string
end

local record UnauthorizedException
    Message: string
end

local record UnsupportedRegionException
    Message: string
end

local record ConflictException
    Message: string
end

local record InternalServiceException
    Message: string
end

local record InvalidRequestException
    Message: string
end

local record LimitExceededException
    Message: string
end

local record NotReadyException
    Message: string
end

local record UnauthorizedException
    Message: string
end

local record ConflictException
    Message: string
end

local record InternalServiceException
    Message: string
end

local record InvalidRequestException
    Message: string
end

local record LimitExceededException
    Message: string
end

local record UnauthorizedException
    Message: string
end

local record InternalServiceException
    Message: string
end

local record InvalidRequestException
    Message: string
end

local record NotFoundException
    Message: string
end

local record UnauthorizedException
    Message: string
end

local record InternalServiceException
    Message: string
end

local record InvalidRequestException
    Message: string
end

local record NotFoundException
    Message: string
end

local record TerminalRoutingStrategyException
    Message: string
end

local record UnauthorizedException
    Message: string
end

local record InternalServiceException
    Message: string
end

local record InvalidRequestException
    Message: string
end

local record NotFoundException
    Message: string
end

local record UnauthorizedException
    Message: string
end

local record InternalServiceException
    Message: string
end

local record InvalidRequestException
    Message: string
end

local record NotFoundException
    Message: string
end

local record TerminalRoutingStrategyException
    Message: string
end

local record UnauthorizedException
    Message: string
end

local record UnsupportedRegionException
    Message: string
end

local record InternalServiceException
    Message: string
end

local record InvalidRequestException
    Message: string
end

local record NotFoundException
    Message: string
end

local record UnauthorizedException
    Message: string
end

local record UnsupportedRegionException
    Message: string
end

local record InternalServiceException
    Message: string
end

local record InvalidRequestException
    Message: string
end

local record NotFoundException
    Message: string
end

local record UnauthorizedException
    Message: string
end

local record UnsupportedRegionException
    Message: string
end

local record InternalServiceException
    Message: string
end

local record InvalidRequestException
    Message: string
end

local record NotFoundException
    Message: string
end

local record UnsupportedRegionException
    Message: string
end

local record InternalServiceException
    Message: string
end

local record InvalidRequestException
    Message: string
end

local record NotFoundException
    Message: string
end

local record UnsupportedRegionException
    Message: string
end

local record InternalServiceException
    Message: string
end

local record InvalidRequestException
    Message: string
end

local record NotFoundException
    Message: string
end

local record UnauthorizedException
    Message: string
end

local record UnsupportedRegionException
    Message: string
end

local record InternalServiceException
    Message: string
end

local record InvalidRequestException
    Message: string
end

local record NotFoundException
    Message: string
end

local record UnauthorizedException
    Message: string
end

local record InternalServiceException
    Message: string
end

local record InvalidRequestException
    Message: string
end

local record NotFoundException
    Message: string
end

local record UnsupportedRegionException
    Message: string
end

local record InternalServiceException
    Message: string
end

local record InvalidRequestException
    Message: string
end

local record NotFoundException
    Message: string
end

local record UnauthorizedException
    Message: string
end

local record InternalServiceException
    Message: string
end

local record InvalidRequestException
    Message: string
end

local record NotFoundException
    Message: string
end

local record TaggingFailedException
    Message: string
end

local record UnsupportedRegionException
    Message: string
end

local record InternalServiceException
    Message: string
end

local record InvalidGameSessionStatusException
    Message: string
end

local record InvalidRequestException
    Message: string
end

local record NotFoundException
    Message: string
end

local record NotReadyException
    Message: string
end

local record UnauthorizedException
    Message: string
end

local record InternalServiceException
    Message: string
end

local record InvalidRequestException
    Message: string
end

local record NotFoundException
    Message: string
end

local record TaggingFailedException
    Message: string
end

local record UnsupportedRegionException
    Message: string
end

local record InternalServiceException
    Message: string
end

local record InvalidRequestException
    Message: string
end

local record NotFoundException
    Message: string
end

local record UnauthorizedException
    Message: string
end

local record InternalServiceException
    Message: string
end

local record InvalidRequestException
    Message: string
end

local record NotFoundException
    Message: string
end

local record UnauthorizedException
    Message: string
end

local record InternalServiceException
    Message: string
end

local record InvalidRequestException
    Message: string
end

local record LimitExceededException
    Message: string
end

local record NotFoundException
    Message: string
end

local record NotReadyException
    Message: string
end

local record UnauthorizedException
    Message: string
end

local record UnsupportedRegionException
    Message: string
end

local record InternalServiceException
    Message: string
end

local record InvalidRequestException
    Message: string
end

local record LimitExceededException
    Message: string
end

local record NotFoundException
    Message: string
end

local record UnauthorizedException
    Message: string
end

local record UnsupportedRegionException
    Message: string
end

local record ConflictException
    Message: string
end

local record InternalServiceException
    Message: string
end

local record InvalidFleetStatusException
    Message: string
end

local record InvalidRequestException
    Message: string
end

local record LimitExceededException
    Message: string
end

local record NotFoundException
    Message: string
end

local record UnauthorizedException
    Message: string
end

local record ConflictException
    Message: string
end

local record InternalServiceException
    Message: string
end

local record InvalidFleetStatusException
    Message: string
end

local record InvalidRequestException
    Message: string
end

local record LimitExceededException
    Message: string
end

local record NotFoundException
    Message: string
end

local record UnauthorizedException
    Message: string
end

local record UnsupportedRegionException
    Message: string
end

local record ConflictException
    Message: string
end

local record InternalServiceException
    Message: string
end

local record InvalidFleetStatusException
    Message: string
end

local record InvalidRequestException
    Message: string
end

local record LimitExceededException
    Message: string
end

local record NotFoundException
    Message: string
end

local record UnauthorizedException
    Message: string
end

local record InternalServiceException
    Message: string
end

local record InvalidRequestException
    Message: string
end

local record NotFoundException
    Message: string
end

local record UnauthorizedException
    Message: string
end

local record InternalServiceException
    Message: string
end

local record InvalidRequestException
    Message: string
end

local record NotFoundException
    Message: string
end

local record UnauthorizedException
    Message: string
end

local record ConflictException
    Message: string
end

local record InternalServiceException
    Message: string
end

local record InvalidGameSessionStatusException
    Message: string
end

local record InvalidRequestException
    Message: string
end

local record NotFoundException
    Message: string
end

local record NotReadyException
    Message: string
end

local record UnauthorizedException
    Message: string
end

local record InternalServiceException
    Message: string
end

local record InvalidRequestException
    Message: string
end

local record NotFoundException
    Message: string
end

local record UnauthorizedException
    Message: string
end

local record InternalServiceException
    Message: string
end

local record InvalidRequestException
    Message: string
end

local record NotFoundException
    Message: string
end

local record UnsupportedRegionException
    Message: string
end

local record InternalServiceException
    Message: string
end

local record InvalidFleetStatusException
    Message: string
end

local record InvalidRequestException
    Message: string
end

local record LimitExceededException
    Message: string
end

local record NotFoundException
    Message: string
end

local record UnauthorizedException
    Message: string
end

local record InternalServiceException
    Message: string
end

local record InvalidRequestException
    Message: string
end

local record NotFoundException
    Message: string
end

local record UnauthorizedException
    Message: string
end

local record InternalServiceException
    Message: string
end

local record InvalidRequestException
    Message: string
end

local record UnsupportedRegionException
    Message: string
end

local type ProtectionPolicy = "NoProtection" | "FullProtection"

local type AcceptanceType = "ACCEPT" | "REJECT"

local type GameServerUtilizationStatus = "AVAILABLE" | "UTILIZED"

local type ContainerFleetBillingType = "ON_DEMAND" | "SPOT"

local type TerminationMode = "TRIGGER_ON_PROCESS_TERMINATE" | "FORCE_TERMINATE"

local type OperatingSystem = "WINDOWS_2012" | "AMAZON_LINUX" | "AMAZON_LINUX_2" | "WINDOWS_2016" | "AMAZON_LINUX_2023" | "WINDOWS_2022"

local type SortOrder = "ASCENDING" | "DESCENDING"

local type FleetType = "ON_DEMAND" | "SPOT"

local type ScalingStatusType = "ACTIVE" | "UPDATE_REQUESTED" | "UPDATING" | "DELETE_REQUESTED" | "DELETING" | "DELETED" | "ERROR"

local type PlayerGatewayMode = "DISABLED" | "ENABLED" | "REQUIRED"

local type BackfillMode = "AUTOMATIC" | "MANUAL"

local type FlexMatchMode = "STANDALONE" | "WITH_QUEUE"

local type BuildStatus = "INITIALIZED" | "READY" | "FAILED"

local type GameServerHealthCheck = "HEALTHY"

local type RoutingStrategyType = "SIMPLE" | "TERMINAL"

local type PolicyType = "RuleBased" | "TargetBased"

local type ContainerGroupType = "GAME_SERVER" | "PER_INSTANCE"

local type ComputeType = "EC2" | "ANYWHERE"

local type InstanceRoleCredentialsProvider = "SHARED_CREDENTIAL_FILE"

local type ScalingAdjustmentType = "ChangeInCapacity" | "ExactCapacity" | "PercentChangeInCapacity"

local type ComparisonOperatorType = "GreaterThanOrEqualToThreshold" | "GreaterThanThreshold" | "LessThanThreshold" | "LessThanOrEqualToThreshold"

local type LocationUpdateStatus = "PENDING_UPDATE"

local type MetricName = "ActivatingGameSessions" | "ActiveGameSessions" | "ActiveInstances" | "AvailableGameSessions" | "AvailablePlayerSessions" | "CurrentPlayerSessions" | "IdleInstances" | "PercentAvailableGameSessions" | "PercentIdleInstances" | "QueueDepth" | "WaitTime" | "ConcurrentActivatableGameSessions"

local type ContainerOperatingSystem = "AMAZON_LINUX_2023"

local type GameServerGroupDeleteOption = "SAFE_DELETE" | "FORCE_DELETE" | "RETAIN"

local type GameServerProtectionPolicy = "NO_PROTECTION" | "FULL_PROTECTION"

local type ListComputeInputStatus = "ACTIVE" | "IMPAIRED"

local type EC2InstanceType = "t2.micro" | "t2.small" | "t2.medium" | "t2.large" | "c3.large" | "c3.xlarge" | "c3.2xlarge" | "c3.4xlarge" | "c3.8xlarge" | "c4.large" | "c4.xlarge" | "c4.2xlarge" | "c4.4xlarge" | "c4.8xlarge" | "c5.large" | "c5.xlarge" | "c5.2xlarge" | "c5.4xlarge" | "c5.9xlarge" | "c5.12xlarge" | "c5.18xlarge" | "c5.24xlarge" | "c5a.large" | "c5a.xlarge" | "c5a.2xlarge" | "c5a.4xlarge" | "c5a.8xlarge" | "c5a.12xlarge" | "c5a.16xlarge" | "c5a.24xlarge" | "r3.large" | "r3.xlarge" | "r3.2xlarge" | "r3.4xlarge" | "r3.8xlarge" | "r4.large" | "r4.xlarge" | "r4.2xlarge" | "r4.4xlarge" | "r4.8xlarge" | "r4.16xlarge" | "r5.large" | "r5.xlarge" | "r5.2xlarge" | "r5.4xlarge" | "r5.8xlarge" | "r5.12xlarge" | "r5.16xlarge" | "r5.24xlarge" | "r5a.large" | "r5a.xlarge" | "r5a.2xlarge" | "r5a.4xlarge" | "r5a.8xlarge" | "r5a.12xlarge" | "r5a.16xlarge" | "r5a.24xlarge" | "m3.medium" | "m3.large" | "m3.xlarge" | "m3.2xlarge" | "m4.large" | "m4.xlarge" | "m4.2xlarge" | "m4.4xlarge" | "m4.10xlarge" | "m5.large" | "m5.xlarge" | "m5.2xlarge" | "m5.4xlarge" | "m5.8xlarge" | "m5.12xlarge" | "m5.16xlarge" | "m5.24xlarge" | "m5a.large" | "m5a.xlarge" | "m5a.2xlarge" | "m5a.4xlarge" | "m5a.8xlarge" | "m5a.12xlarge" | "m5a.16xlarge" | "m5a.24xlarge" | "c5d.large" | "c5d.xlarge" | "c5d.2xlarge" | "c5d.4xlarge" | "c5d.9xlarge" | "c5d.12xlarge" | "c5d.18xlarge" | "c5d.24xlarge" | "c6a.large" | "c6a.xlarge" | "c6a.2xlarge" | "c6a.4xlarge" | "c6a.8xlarge" | "c6a.12xlarge" | "c6a.16xlarge" | "c6a.24xlarge" | "c6i.large" | "c6i.xlarge" | "c6i.2xlarge" | "c6i.4xlarge" | "c6i.8xlarge" | "c6i.12xlarge" | "c6i.16xlarge" | "c6i.24xlarge" | "r5d.large" | "r5d.xlarge" | "r5d.2xlarge" | "r5d.4xlarge" | "r5d.8xlarge" | "r5d.12xlarge" | "r5d.16xlarge" | "r5d.24xlarge" | "m6g.medium" | "m6g.large" | "m6g.xlarge" | "m6g.2xlarge" | "m6g.4xlarge" | "m6g.8xlarge" | "m6g.12xlarge" | "m6g.16xlarge" | "c6g.medium" | "c6g.large" | "c6g.xlarge" | "c6g.2xlarge" | "c6g.4xlarge" | "c6g.8xlarge" | "c6g.12xlarge" | "c6g.16xlarge" | "r6g.medium" | "r6g.large" | "r6g.xlarge" | "r6g.2xlarge" | "r6g.4xlarge" | "r6g.8xlarge" | "r6g.12xlarge" | "r6g.16xlarge" | "c6gn.medium" | "c6gn.large" | "c6gn.xlarge" | "c6gn.2xlarge" | "c6gn.4xlarge" | "c6gn.8xlarge" | "c6gn.12xlarge" | "c6gn.16xlarge" | "c7g.medium" | "c7g.large" | "c7g.xlarge" | "c7g.2xlarge" | "c7g.4xlarge" | "c7g.8xlarge" | "c7g.12xlarge" | "c7g.16xlarge" | "r7g.medium" | "r7g.large" | "r7g.xlarge" | "r7g.2xlarge" | "r7g.4xlarge" | "r7g.8xlarge" | "r7g.12xlarge" | "r7g.16xlarge" | "m7g.medium" | "m7g.large" | "m7g.xlarge" | "m7g.2xlarge" | "m7g.4xlarge" | "m7g.8xlarge" | "m7g.12xlarge" | "m7g.16xlarge" | "g5g.xlarge" | "g5g.2xlarge" | "g5g.4xlarge" | "g5g.8xlarge" | "g5g.16xlarge" | "r6i.large" | "r6i.xlarge" | "r6i.2xlarge" | "r6i.4xlarge" | "r6i.8xlarge" | "r6i.12xlarge" | "r6i.16xlarge" | "c6gd.medium" | "c6gd.large" | "c6gd.xlarge" | "c6gd.2xlarge" | "c6gd.4xlarge" | "c6gd.8xlarge" | "c6gd.12xlarge" | "c6gd.16xlarge" | "c6in.large" | "c6in.xlarge" | "c6in.2xlarge" | "c6in.4xlarge" | "c6in.8xlarge" | "c6in.12xlarge" | "c6in.16xlarge" | "c7a.medium" | "c7a.large" | "c7a.xlarge" | "c7a.2xlarge" | "c7a.4xlarge" | "c7a.8xlarge" | "c7a.12xlarge" | "c7a.16xlarge" | "c7gd.medium" | "c7gd.large" | "c7gd.xlarge" | "c7gd.2xlarge" | "c7gd.4xlarge" | "c7gd.8xlarge" | "c7gd.12xlarge" | "c7gd.16xlarge" | "c7gn.medium" | "c7gn.large" | "c7gn.xlarge" | "c7gn.2xlarge" | "c7gn.4xlarge" | "c7gn.8xlarge" | "c7gn.12xlarge" | "c7gn.16xlarge" | "c7i.large" | "c7i.xlarge" | "c7i.2xlarge" | "c7i.4xlarge" | "c7i.8xlarge" | "c7i.12xlarge" | "c7i.16xlarge" | "m6a.large" | "m6a.xlarge" | "m6a.2xlarge" | "m6a.4xlarge" | "m6a.8xlarge" | "m6a.12xlarge" | "m6a.16xlarge" | "m6gd.medium" | "m6gd.large" | "m6gd.xlarge" | "m6gd.2xlarge" | "m6gd.4xlarge" | "m6gd.8xlarge" | "m6gd.12xlarge" | "m6gd.16xlarge" | "m6i.large" | "m6i.xlarge" | "m6i.2xlarge" | "m6i.4xlarge" | "m6i.8xlarge" | "m6i.12xlarge" | "m6i.16xlarge" | "m7a.medium" | "m7a.large" | "m7a.xlarge" | "m7a.2xlarge" | "m7a.4xlarge" | "m7a.8xlarge" | "m7a.12xlarge" | "m7a.16xlarge" | "m7gd.medium" | "m7gd.large" | "m7gd.xlarge" | "m7gd.2xlarge" | "m7gd.4xlarge" | "m7gd.8xlarge" | "m7gd.12xlarge" | "m7gd.16xlarge" | "m7i.large" | "m7i.xlarge" | "m7i.2xlarge" | "m7i.4xlarge" | "m7i.8xlarge" | "m7i.12xlarge" | "m7i.16xlarge" | "r6gd.medium" | "r6gd.large" | "r6gd.xlarge" | "r6gd.2xlarge" | "r6gd.4xlarge" | "r6gd.8xlarge" | "r6gd.12xlarge" | "r6gd.16xlarge" | "r7a.medium" | "r7a.large" | "r7a.xlarge" | "r7a.2xlarge" | "r7a.4xlarge" | "r7a.8xlarge" | "r7a.12xlarge" | "r7a.16xlarge" | "r7gd.medium" | "r7gd.large" | "r7gd.xlarge" | "r7gd.2xlarge" | "r7gd.4xlarge" | "r7gd.8xlarge" | "r7gd.12xlarge" | "r7gd.16xlarge" | "r7i.large" | "r7i.xlarge" | "r7i.2xlarge" | "r7i.4xlarge" | "r7i.8xlarge" | "r7i.12xlarge" | "r7i.16xlarge" | "r7i.24xlarge" | "r7i.48xlarge" | "c5ad.large" | "c5ad.xlarge" | "c5ad.2xlarge" | "c5ad.4xlarge" | "c5ad.8xlarge" | "c5ad.12xlarge" | "c5ad.16xlarge" | "c5ad.24xlarge" | "c5n.large" | "c5n.xlarge" | "c5n.2xlarge" | "c5n.4xlarge" | "c5n.9xlarge" | "c5n.18xlarge" | "r5ad.large" | "r5ad.xlarge" | "r5ad.2xlarge" | "r5ad.4xlarge" | "r5ad.8xlarge" | "r5ad.12xlarge" | "r5ad.16xlarge" | "r5ad.24xlarge" | "c6id.large" | "c6id.xlarge" | "c6id.2xlarge" | "c6id.4xlarge" | "c6id.8xlarge" | "c6id.12xlarge" | "c6id.16xlarge" | "c6id.24xlarge" | "c6id.32xlarge" | "c8g.medium" | "c8g.large" | "c8g.xlarge" | "c8g.2xlarge" | "c8g.4xlarge" | "c8g.8xlarge" | "c8g.12xlarge" | "c8g.16xlarge" | "c8g.24xlarge" | "c8g.48xlarge" | "m5ad.large" | "m5ad.xlarge" | "m5ad.2xlarge" | "m5ad.4xlarge" | "m5ad.8xlarge" | "m5ad.12xlarge" | "m5ad.16xlarge" | "m5ad.24xlarge" | "m5d.large" | "m5d.xlarge" | "m5d.2xlarge" | "m5d.4xlarge" | "m5d.8xlarge" | "m5d.12xlarge" | "m5d.16xlarge" | "m5d.24xlarge" | "m5dn.large" | "m5dn.xlarge" | "m5dn.2xlarge" | "m5dn.4xlarge" | "m5dn.8xlarge" | "m5dn.12xlarge" | "m5dn.16xlarge" | "m5dn.24xlarge" | "m5n.large" | "m5n.xlarge" | "m5n.2xlarge" | "m5n.4xlarge" | "m5n.8xlarge" | "m5n.12xlarge" | "m5n.16xlarge" | "m5n.24xlarge" | "m6id.large" | "m6id.xlarge" | "m6id.2xlarge" | "m6id.4xlarge" | "m6id.8xlarge" | "m6id.12xlarge" | "m6id.16xlarge" | "m6id.24xlarge" | "m6id.32xlarge" | "m6idn.large" | "m6idn.xlarge" | "m6idn.2xlarge" | "m6idn.4xlarge" | "m6idn.8xlarge" | "m6idn.12xlarge" | "m6idn.16xlarge" | "m6idn.24xlarge" | "m6idn.32xlarge" | "m6in.large" | "m6in.xlarge" | "m6in.2xlarge" | "m6in.4xlarge" | "m6in.8xlarge" | "m6in.12xlarge" | "m6in.16xlarge" | "m6in.24xlarge" | "m6in.32xlarge" | "m8g.medium" | "m8g.large" | "m8g.xlarge" | "m8g.2xlarge" | "m8g.4xlarge" | "m8g.8xlarge" | "m8g.12xlarge" | "m8g.16xlarge" | "m8g.24xlarge" | "m8g.48xlarge" | "r5dn.large" | "r5dn.xlarge" | "r5dn.2xlarge" | "r5dn.4xlarge" | "r5dn.8xlarge" | "r5dn.12xlarge" | "r5dn.16xlarge" | "r5dn.24xlarge" | "r5n.large" | "r5n.xlarge" | "r5n.2xlarge" | "r5n.4xlarge" | "r5n.8xlarge" | "r5n.12xlarge" | "r5n.16xlarge" | "r5n.24xlarge" | "r6a.large" | "r6a.xlarge" | "r6a.2xlarge" | "r6a.4xlarge" | "r6a.8xlarge" | "r6a.12xlarge" | "r6a.16xlarge" | "r6a.24xlarge" | "r6a.32xlarge" | "r6a.48xlarge" | "r6id.large" | "r6id.xlarge" | "r6id.2xlarge" | "r6id.4xlarge" | "r6id.8xlarge" | "r6id.12xlarge" | "r6id.16xlarge" | "r6id.24xlarge" | "r6id.32xlarge" | "r6idn.large" | "r6idn.xlarge" | "r6idn.2xlarge" | "r6idn.4xlarge" | "r6idn.8xlarge" | "r6idn.12xlarge" | "r6idn.16xlarge" | "r6idn.24xlarge" | "r6idn.32xlarge" | "r6in.large" | "r6in.xlarge" | "r6in.2xlarge" | "r6in.4xlarge" | "r6in.8xlarge" | "r6in.12xlarge" | "r6in.16xlarge" | "r6in.24xlarge" | "r6in.32xlarge" | "r8g.medium" | "r8g.large" | "r8g.xlarge" | "r8g.2xlarge" | "r8g.4xlarge" | "r8g.8xlarge" | "r8g.12xlarge" | "r8g.16xlarge" | "r8g.24xlarge" | "r8g.48xlarge" | "m4.16xlarge" | "c6a.32xlarge" | "c6a.48xlarge" | "c6i.32xlarge" | "r6i.24xlarge" | "r6i.32xlarge" | "c6in.24xlarge" | "c6in.32xlarge" | "c7a.24xlarge" | "c7a.32xlarge" | "c7a.48xlarge" | "c7i.24xlarge" | "c7i.48xlarge" | "m6a.24xlarge" | "m6a.32xlarge" | "m6a.48xlarge" | "m6i.24xlarge" | "m6i.32xlarge" | "m7a.24xlarge" | "m7a.32xlarge" | "m7a.48xlarge" | "m7i.24xlarge" | "m7i.48xlarge" | "r7a.24xlarge" | "r7a.32xlarge" | "r7a.48xlarge"

local type PlayerSessionCreationPolicy = "ACCEPT_ALL" | "DENY_ALL"

local type BalancingStrategy = "SPOT_ONLY" | "SPOT_PREFERRED" | "ON_DEMAND_ONLY"

local record M
    AcceptMatchInput: AcceptMatchInput
    AcceptMatchOutput: AcceptMatchOutput
    ClaimGameServerInput: ClaimGameServerInput
    ClaimGameServerOutput: ClaimGameServerOutput
    CreateAliasInput: CreateAliasInput
    CreateAliasOutput: CreateAliasOutput
    CreateBuildInput: CreateBuildInput
    CreateBuildOutput: CreateBuildOutput
    CreateContainerFleetInput: CreateContainerFleetInput
    CreateContainerFleetOutput: CreateContainerFleetOutput
    CreateContainerGroupDefinitionInput: CreateContainerGroupDefinitionInput
    CreateContainerGroupDefinitionOutput: CreateContainerGroupDefinitionOutput
    CreateFleetInput: CreateFleetInput
    CreateFleetOutput: CreateFleetOutput
    CreateFleetLocationsInput: CreateFleetLocationsInput
    CreateFleetLocationsOutput: CreateFleetLocationsOutput
    CreateGameServerGroupInput: CreateGameServerGroupInput
    CreateGameServerGroupOutput: CreateGameServerGroupOutput
    CreateGameSessionInput: CreateGameSessionInput
    CreateGameSessionOutput: CreateGameSessionOutput
    CreateGameSessionQueueInput: CreateGameSessionQueueInput
    CreateGameSessionQueueOutput: CreateGameSessionQueueOutput
    CreateLocationInput: CreateLocationInput
    CreateLocationOutput: CreateLocationOutput
    CreateMatchmakingConfigurationInput: CreateMatchmakingConfigurationInput
    CreateMatchmakingConfigurationOutput: CreateMatchmakingConfigurationOutput
    CreateMatchmakingRuleSetInput: CreateMatchmakingRuleSetInput
    CreateMatchmakingRuleSetOutput: CreateMatchmakingRuleSetOutput
    CreatePlayerSessionInput: CreatePlayerSessionInput
    CreatePlayerSessionOutput: CreatePlayerSessionOutput
    CreatePlayerSessionsInput: CreatePlayerSessionsInput
    CreatePlayerSessionsOutput: CreatePlayerSessionsOutput
    CreateScriptInput: CreateScriptInput
    CreateScriptOutput: CreateScriptOutput
    CreateVpcPeeringAuthorizationInput: CreateVpcPeeringAuthorizationInput
    CreateVpcPeeringAuthorizationOutput: CreateVpcPeeringAuthorizationOutput
    CreateVpcPeeringConnectionInput: CreateVpcPeeringConnectionInput
    CreateVpcPeeringConnectionOutput: CreateVpcPeeringConnectionOutput
    DeleteAliasInput: DeleteAliasInput
    DeleteAliasOutput: DeleteAliasOutput
    DeleteBuildInput: DeleteBuildInput
    DeleteBuildOutput: DeleteBuildOutput
    DeleteContainerFleetInput: DeleteContainerFleetInput
    DeleteContainerFleetOutput: DeleteContainerFleetOutput
    DeleteContainerGroupDefinitionInput: DeleteContainerGroupDefinitionInput
    DeleteContainerGroupDefinitionOutput: DeleteContainerGroupDefinitionOutput
    DeleteFleetInput: DeleteFleetInput
    DeleteFleetOutput: DeleteFleetOutput
    DeleteFleetLocationsInput: DeleteFleetLocationsInput
    DeleteFleetLocationsOutput: DeleteFleetLocationsOutput
    DeleteGameServerGroupInput: DeleteGameServerGroupInput
    DeleteGameServerGroupOutput: DeleteGameServerGroupOutput
    DeleteGameSessionQueueInput: DeleteGameSessionQueueInput
    DeleteGameSessionQueueOutput: DeleteGameSessionQueueOutput
    DeleteLocationInput: DeleteLocationInput
    DeleteLocationOutput: DeleteLocationOutput
    DeleteMatchmakingConfigurationInput: DeleteMatchmakingConfigurationInput
    DeleteMatchmakingConfigurationOutput: DeleteMatchmakingConfigurationOutput
    DeleteMatchmakingRuleSetInput: DeleteMatchmakingRuleSetInput
    DeleteMatchmakingRuleSetOutput: DeleteMatchmakingRuleSetOutput
    DeleteScalingPolicyInput: DeleteScalingPolicyInput
    DeleteScalingPolicyOutput: DeleteScalingPolicyOutput
    DeleteScriptInput: DeleteScriptInput
    DeleteScriptOutput: DeleteScriptOutput
    DeleteVpcPeeringAuthorizationInput: DeleteVpcPeeringAuthorizationInput
    DeleteVpcPeeringAuthorizationOutput: DeleteVpcPeeringAuthorizationOutput
    DeleteVpcPeeringConnectionInput: DeleteVpcPeeringConnectionInput
    DeleteVpcPeeringConnectionOutput: DeleteVpcPeeringConnectionOutput
    DeregisterComputeInput: DeregisterComputeInput
    DeregisterComputeOutput: DeregisterComputeOutput
    DeregisterGameServerInput: DeregisterGameServerInput
    DeregisterGameServerOutput: DeregisterGameServerOutput
    DescribeAliasInput: DescribeAliasInput
    DescribeAliasOutput: DescribeAliasOutput
    DescribeBuildInput: DescribeBuildInput
    DescribeBuildOutput: DescribeBuildOutput
    DescribeComputeInput: DescribeComputeInput
    DescribeComputeOutput: DescribeComputeOutput
    DescribeContainerFleetInput: DescribeContainerFleetInput
    DescribeContainerFleetOutput: DescribeContainerFleetOutput
    DescribeContainerGroupDefinitionInput: DescribeContainerGroupDefinitionInput
    DescribeContainerGroupDefinitionOutput: DescribeContainerGroupDefinitionOutput
    DescribeContainerGroupPortMappingsInput: DescribeContainerGroupPortMappingsInput
    DescribeContainerGroupPortMappingsOutput: DescribeContainerGroupPortMappingsOutput
    DescribeEC2InstanceLimitsInput: DescribeEC2InstanceLimitsInput
    DescribeEC2InstanceLimitsOutput: DescribeEC2InstanceLimitsOutput
    DescribeFleetAttributesInput: DescribeFleetAttributesInput
    DescribeFleetAttributesOutput: DescribeFleetAttributesOutput
    DescribeFleetCapacityInput: DescribeFleetCapacityInput
    DescribeFleetCapacityOutput: DescribeFleetCapacityOutput
    DescribeFleetDeploymentInput: DescribeFleetDeploymentInput
    DescribeFleetDeploymentOutput: DescribeFleetDeploymentOutput
    DescribeFleetEventsInput: DescribeFleetEventsInput
    DescribeFleetEventsOutput: DescribeFleetEventsOutput
    DescribeFleetLocationAttributesInput: DescribeFleetLocationAttributesInput
    DescribeFleetLocationAttributesOutput: DescribeFleetLocationAttributesOutput
    DescribeFleetLocationCapacityInput: DescribeFleetLocationCapacityInput
    DescribeFleetLocationCapacityOutput: DescribeFleetLocationCapacityOutput
    DescribeFleetLocationUtilizationInput: DescribeFleetLocationUtilizationInput
    DescribeFleetLocationUtilizationOutput: DescribeFleetLocationUtilizationOutput
    DescribeFleetPortSettingsInput: DescribeFleetPortSettingsInput
    DescribeFleetPortSettingsOutput: DescribeFleetPortSettingsOutput
    DescribeFleetUtilizationInput: DescribeFleetUtilizationInput
    DescribeFleetUtilizationOutput: DescribeFleetUtilizationOutput
    DescribeGameServerInput: DescribeGameServerInput
    DescribeGameServerOutput: DescribeGameServerOutput
    DescribeGameServerGroupInput: DescribeGameServerGroupInput
    DescribeGameServerGroupOutput: DescribeGameServerGroupOutput
    DescribeGameServerInstancesInput: DescribeGameServerInstancesInput
    DescribeGameServerInstancesOutput: DescribeGameServerInstancesOutput
    DescribeGameSessionDetailsInput: DescribeGameSessionDetailsInput
    DescribeGameSessionDetailsOutput: DescribeGameSessionDetailsOutput
    DescribeGameSessionPlacementInput: DescribeGameSessionPlacementInput
    DescribeGameSessionPlacementOutput: DescribeGameSessionPlacementOutput
    DescribeGameSessionQueuesInput: DescribeGameSessionQueuesInput
    DescribeGameSessionQueuesOutput: DescribeGameSessionQueuesOutput
    DescribeGameSessionsInput: DescribeGameSessionsInput
    DescribeGameSessionsOutput: DescribeGameSessionsOutput
    DescribeInstancesInput: DescribeInstancesInput
    DescribeInstancesOutput: DescribeInstancesOutput
    DescribeMatchmakingInput: DescribeMatchmakingInput
    DescribeMatchmakingOutput: DescribeMatchmakingOutput
    DescribeMatchmakingConfigurationsInput: DescribeMatchmakingConfigurationsInput
    DescribeMatchmakingConfigurationsOutput: DescribeMatchmakingConfigurationsOutput
    DescribeMatchmakingRuleSetsInput: DescribeMatchmakingRuleSetsInput
    DescribeMatchmakingRuleSetsOutput: DescribeMatchmakingRuleSetsOutput
    DescribePlayerSessionsInput: DescribePlayerSessionsInput
    DescribePlayerSessionsOutput: DescribePlayerSessionsOutput
    DescribeRuntimeConfigurationInput: DescribeRuntimeConfigurationInput
    DescribeRuntimeConfigurationOutput: DescribeRuntimeConfigurationOutput
    DescribeScalingPoliciesInput: DescribeScalingPoliciesInput
    DescribeScalingPoliciesOutput: DescribeScalingPoliciesOutput
    DescribeScriptInput: DescribeScriptInput
    DescribeScriptOutput: DescribeScriptOutput
    DescribeVpcPeeringAuthorizationsInput: DescribeVpcPeeringAuthorizationsInput
    DescribeVpcPeeringAuthorizationsOutput: DescribeVpcPeeringAuthorizationsOutput
    DescribeVpcPeeringConnectionsInput: DescribeVpcPeeringConnectionsInput
    DescribeVpcPeeringConnectionsOutput: DescribeVpcPeeringConnectionsOutput
    GetComputeAccessInput: GetComputeAccessInput
    GetComputeAccessOutput: GetComputeAccessOutput
    GetComputeAuthTokenInput: GetComputeAuthTokenInput
    GetComputeAuthTokenOutput: GetComputeAuthTokenOutput
    GetGameSessionLogUrlInput: GetGameSessionLogUrlInput
    GetGameSessionLogUrlOutput: GetGameSessionLogUrlOutput
    GetInstanceAccessInput: GetInstanceAccessInput
    GetInstanceAccessOutput: GetInstanceAccessOutput
    GetPlayerConnectionDetailsInput: GetPlayerConnectionDetailsInput
    GetPlayerConnectionDetailsOutput: GetPlayerConnectionDetailsOutput
    ListAliasesInput: ListAliasesInput
    ListAliasesOutput: ListAliasesOutput
    ListBuildsInput: ListBuildsInput
    ListBuildsOutput: ListBuildsOutput
    ListComputeInput: ListComputeInput
    ListComputeOutput: ListComputeOutput
    ListContainerFleetsInput: ListContainerFleetsInput
    ListContainerFleetsOutput: ListContainerFleetsOutput
    ListContainerGroupDefinitionsInput: ListContainerGroupDefinitionsInput
    ListContainerGroupDefinitionsOutput: ListContainerGroupDefinitionsOutput
    ListContainerGroupDefinitionVersionsInput: ListContainerGroupDefinitionVersionsInput
    ListContainerGroupDefinitionVersionsOutput: ListContainerGroupDefinitionVersionsOutput
    ListFleetDeploymentsInput: ListFleetDeploymentsInput
    ListFleetDeploymentsOutput: ListFleetDeploymentsOutput
    ListFleetsInput: ListFleetsInput
    ListFleetsOutput: ListFleetsOutput
    ListGameServerGroupsInput: ListGameServerGroupsInput
    ListGameServerGroupsOutput: ListGameServerGroupsOutput
    ListGameServersInput: ListGameServersInput
    ListGameServersOutput: ListGameServersOutput
    ListLocationsInput: ListLocationsInput
    ListLocationsOutput: ListLocationsOutput
    ListScriptsInput: ListScriptsInput
    ListScriptsOutput: ListScriptsOutput
    ListTagsForResourceInput: ListTagsForResourceInput
    ListTagsForResourceOutput: ListTagsForResourceOutput
    PutScalingPolicyInput: PutScalingPolicyInput
    PutScalingPolicyOutput: PutScalingPolicyOutput
    RegisterComputeInput: RegisterComputeInput
    RegisterComputeOutput: RegisterComputeOutput
    RegisterGameServerInput: RegisterGameServerInput
    RegisterGameServerOutput: RegisterGameServerOutput
    RequestUploadCredentialsInput: RequestUploadCredentialsInput
    RequestUploadCredentialsOutput: RequestUploadCredentialsOutput
    ResolveAliasInput: ResolveAliasInput
    ResolveAliasOutput: ResolveAliasOutput
    ResumeGameServerGroupInput: ResumeGameServerGroupInput
    ResumeGameServerGroupOutput: ResumeGameServerGroupOutput
    SearchGameSessionsInput: SearchGameSessionsInput
    SearchGameSessionsOutput: SearchGameSessionsOutput
    StartFleetActionsInput: StartFleetActionsInput
    StartFleetActionsOutput: StartFleetActionsOutput
    StartGameSessionPlacementInput: StartGameSessionPlacementInput
    StartGameSessionPlacementOutput: StartGameSessionPlacementOutput
    StartMatchBackfillInput: StartMatchBackfillInput
    StartMatchBackfillOutput: StartMatchBackfillOutput
    StartMatchmakingInput: StartMatchmakingInput
    StartMatchmakingOutput: StartMatchmakingOutput
    StopFleetActionsInput: StopFleetActionsInput
    StopFleetActionsOutput: StopFleetActionsOutput
    StopGameSessionPlacementInput: StopGameSessionPlacementInput
    StopGameSessionPlacementOutput: StopGameSessionPlacementOutput
    StopMatchmakingInput: StopMatchmakingInput
    StopMatchmakingOutput: StopMatchmakingOutput
    SuspendGameServerGroupInput: SuspendGameServerGroupInput
    SuspendGameServerGroupOutput: SuspendGameServerGroupOutput
    TagResourceInput: TagResourceInput
    TagResourceOutput: TagResourceOutput
    TerminateGameSessionInput: TerminateGameSessionInput
    TerminateGameSessionOutput: TerminateGameSessionOutput
    UntagResourceInput: UntagResourceInput
    UntagResourceOutput: UntagResourceOutput
    UpdateAliasInput: UpdateAliasInput
    UpdateAliasOutput: UpdateAliasOutput
    UpdateBuildInput: UpdateBuildInput
    UpdateBuildOutput: UpdateBuildOutput
    UpdateContainerFleetInput: UpdateContainerFleetInput
    UpdateContainerFleetOutput: UpdateContainerFleetOutput
    UpdateContainerGroupDefinitionInput: UpdateContainerGroupDefinitionInput
    UpdateContainerGroupDefinitionOutput: UpdateContainerGroupDefinitionOutput
    UpdateFleetAttributesInput: UpdateFleetAttributesInput
    UpdateFleetAttributesOutput: UpdateFleetAttributesOutput
    UpdateFleetCapacityInput: UpdateFleetCapacityInput
    UpdateFleetCapacityOutput: UpdateFleetCapacityOutput
    UpdateFleetPortSettingsInput: UpdateFleetPortSettingsInput
    UpdateFleetPortSettingsOutput: UpdateFleetPortSettingsOutput
    UpdateGameServerInput: UpdateGameServerInput
    UpdateGameServerOutput: UpdateGameServerOutput
    UpdateGameServerGroupInput: UpdateGameServerGroupInput
    UpdateGameServerGroupOutput: UpdateGameServerGroupOutput
    UpdateGameSessionInput: UpdateGameSessionInput
    UpdateGameSessionOutput: UpdateGameSessionOutput
    UpdateGameSessionQueueInput: UpdateGameSessionQueueInput
    UpdateGameSessionQueueOutput: UpdateGameSessionQueueOutput
    UpdateMatchmakingConfigurationInput: UpdateMatchmakingConfigurationInput
    UpdateMatchmakingConfigurationOutput: UpdateMatchmakingConfigurationOutput
    UpdateRuntimeConfigurationInput: UpdateRuntimeConfigurationInput
    UpdateRuntimeConfigurationOutput: UpdateRuntimeConfigurationOutput
    UpdateScriptInput: UpdateScriptInput
    UpdateScriptOutput: UpdateScriptOutput
    ValidateMatchmakingRuleSetInput: ValidateMatchmakingRuleSetInput
    ValidateMatchmakingRuleSetOutput: ValidateMatchmakingRuleSetOutput
end

return M
