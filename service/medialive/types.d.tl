local record AcceptInputDeviceTransferInput
    InputDeviceId: string
end

local record AcceptInputDeviceTransferOutput
end

local record BatchDeleteInput
    ChannelIds: {string}
    InputIds: {string}
    InputSecurityGroupIds: {string}
    MultiplexIds: {string}
end

local record BatchDeleteOutput
    Failed: {BatchFailedResultModel}
    Successful: {BatchSuccessfulResultModel}
end

local record BatchStartInput
    ChannelIds: {string}
    MultiplexIds: {string}
end

local record BatchStartOutput
    Failed: {BatchFailedResultModel}
    Successful: {BatchSuccessfulResultModel}
end

local record BatchStopInput
    ChannelIds: {string}
    MultiplexIds: {string}
end

local record BatchStopOutput
    Failed: {BatchFailedResultModel}
    Successful: {BatchSuccessfulResultModel}
end

local record BatchUpdateScheduleInput
    ChannelId: string
    Creates: BatchScheduleActionCreateRequest
    Deletes: BatchScheduleActionDeleteRequest
end

local record BatchUpdateScheduleOutput
    Creates: BatchScheduleActionCreateResult
    Deletes: BatchScheduleActionDeleteResult
end

local record CancelInputDeviceTransferInput
    InputDeviceId: string
end

local record CancelInputDeviceTransferOutput
end

local record ClaimDeviceInput
    Id: string
end

local record ClaimDeviceOutput
end

local record CreateChannelInput
    CdiInputSpecification: CdiInputSpecification
    ChannelClass: string
    Destinations: {OutputDestination}
    EncoderSettings: EncoderSettings
    InputAttachments: {InputAttachment}
    InputSpecification: InputSpecification
    LogLevel: string
    Maintenance: MaintenanceCreateSettings
    Name: string
    RequestId: string
    Reserved: string
    RoleArn: string
    Tags: {string : string}
    Vpc: VpcOutputSettings
    AnywhereSettings: AnywhereSettings
    ChannelEngineVersion: ChannelEngineVersionRequest
    DryRun: boolean
    LinkedChannelSettings: LinkedChannelSettings
    ChannelSecurityGroups: {string}
    InferenceSettings: InferenceSettings
end

local record CreateChannelOutput
    Channel: Channel
end

local record CreateChannelPlacementGroupInput
    ClusterId: string
    Name: string
    Nodes: {string}
    RequestId: string
    Tags: {string : string}
end

local record CreateChannelPlacementGroupOutput
    Arn: string
    Channels: {string}
    ClusterId: string
    Id: string
    Name: string
    Nodes: {string}
    State: string
end

local record CreateCloudWatchAlarmTemplateInput
    ComparisonOperator: string
    DatapointsToAlarm: number
    Description: string
    EvaluationPeriods: number
    GroupIdentifier: string
    MetricName: string
    Name: string
    Period: number
    Statistic: string
    Tags: {string : string}
    TargetResourceType: string
    Threshold: number
    TreatMissingData: string
    RequestId: string
end

local record CreateCloudWatchAlarmTemplateOutput
    Arn: string
    ComparisonOperator: string
    CreatedAt: number
    DatapointsToAlarm: number
    Description: string
    EvaluationPeriods: number
    GroupId: string
    Id: string
    MetricName: string
    ModifiedAt: number
    Name: string
    Period: number
    Statistic: string
    Tags: {string : string}
    TargetResourceType: string
    Threshold: number
    TreatMissingData: string
end

local record CreateCloudWatchAlarmTemplateGroupInput
    Description: string
    Name: string
    Tags: {string : string}
    RequestId: string
end

local record CreateCloudWatchAlarmTemplateGroupOutput
    Arn: string
    CreatedAt: number
    Description: string
    Id: string
    ModifiedAt: number
    Name: string
    Tags: {string : string}
end

local record CreateClusterInput
    ClusterType: string
    InstanceRoleArn: string
    Name: string
    NetworkSettings: ClusterNetworkSettingsCreateRequest
    RequestId: string
    Tags: {string : string}
end

local record CreateClusterOutput
    Arn: string
    ChannelIds: {string}
    ClusterType: string
    Id: string
    InstanceRoleArn: string
    Name: string
    NetworkSettings: ClusterNetworkSettings
    State: string
end

local record CreateEventBridgeRuleTemplateInput
    Description: string
    EventTargets: {EventBridgeRuleTemplateTarget}
    EventType: string
    GroupIdentifier: string
    Name: string
    Tags: {string : string}
    RequestId: string
end

local record CreateEventBridgeRuleTemplateOutput
    Arn: string
    CreatedAt: number
    Description: string
    EventTargets: {EventBridgeRuleTemplateTarget}
    EventType: string
    GroupId: string
    Id: string
    ModifiedAt: number
    Name: string
    Tags: {string : string}
end

local record CreateEventBridgeRuleTemplateGroupInput
    Description: string
    Name: string
    Tags: {string : string}
    RequestId: string
end

local record CreateEventBridgeRuleTemplateGroupOutput
    Arn: string
    CreatedAt: number
    Description: string
    Id: string
    ModifiedAt: number
    Name: string
    Tags: {string : string}
end

local record CreateInputInput
    Destinations: {InputDestinationRequest}
    InputDevices: {InputDeviceSettings}
    InputSecurityGroups: {string}
    MediaConnectFlows: {MediaConnectFlowRequest}
    Name: string
    RequestId: string
    RoleArn: string
    Sources: {InputSourceRequest}
    Tags: {string : string}
    Type: string
    Vpc: InputVpcRequest
    SrtSettings: SrtSettingsRequest
    InputNetworkLocation: string
    MulticastSettings: MulticastSettingsCreateRequest
    Smpte2110ReceiverGroupSettings: Smpte2110ReceiverGroupSettings
    SdiSources: {string}
    RouterSettings: RouterSettings
end

local record CreateInputOutput
    Input: Input
end

local record CreateInputSecurityGroupInput
    Tags: {string : string}
    WhitelistRules: {InputWhitelistRuleCidr}
end

local record CreateInputSecurityGroupOutput
    SecurityGroup: InputSecurityGroup
end

local record CreateMultiplexInput
    AvailabilityZones: {string}
    MultiplexSettings: MultiplexSettings
    Name: string
    RequestId: string
    Tags: {string : string}
end

local record CreateMultiplexOutput
    Multiplex: Multiplex
end

local record CreateMultiplexProgramInput
    MultiplexId: string
    MultiplexProgramSettings: MultiplexProgramSettings
    ProgramName: string
    RequestId: string
end

local record CreateMultiplexProgramOutput
    MultiplexProgram: MultiplexProgram
end

local record CreateNetworkInput
    IpPools: {IpPoolCreateRequest}
    Name: string
    RequestId: string
    Routes: {RouteCreateRequest}
    Tags: {string : string}
end

local record CreateNetworkOutput
    Arn: string
    AssociatedClusterIds: {string}
    Id: string
    IpPools: {IpPool}
    Name: string
    Routes: {Route}
    State: string
end

local record CreateNodeInput
    ClusterId: string
    Name: string
    NodeInterfaceMappings: {NodeInterfaceMappingCreateRequest}
    RequestId: string
    Role: string
    Tags: {string : string}
end

local record CreateNodeOutput
    Arn: string
    ChannelPlacementGroups: {string}
    ClusterId: string
    ConnectionState: string
    Id: string
    InstanceArn: string
    Name: string
    NodeInterfaceMappings: {NodeInterfaceMapping}
    Role: string
    State: string
    SdiSourceMappings: {SdiSourceMapping}
end

local record CreateNodeRegistrationScriptInput
    ClusterId: string
    Id: string
    Name: string
    NodeInterfaceMappings: {NodeInterfaceMapping}
    RequestId: string
    Role: string
end

local record CreateNodeRegistrationScriptOutput
    NodeRegistrationScript: string
end

local record CreatePartnerInputInput
    InputId: string
    RequestId: string
    Tags: {string : string}
end

local record CreatePartnerInputOutput
    Input: Input
end

local record CreateSdiSourceInput
    Mode: string
    Name: string
    RequestId: string
    Tags: {string : string}
    Type: string
end

local record CreateSdiSourceOutput
    SdiSource: SdiSource
end

local record CreateSignalMapInput
    CloudWatchAlarmTemplateGroupIdentifiers: {string}
    Description: string
    DiscoveryEntryPointArn: string
    EventBridgeRuleTemplateGroupIdentifiers: {string}
    Name: string
    Tags: {string : string}
    RequestId: string
end

local record CreateSignalMapOutput
    Arn: string
    CloudWatchAlarmTemplateGroupIds: {string}
    CreatedAt: number
    Description: string
    DiscoveryEntryPointArn: string
    ErrorMessage: string
    EventBridgeRuleTemplateGroupIds: {string}
    FailedMediaResourceMap: {string : MediaResource}
    Id: string
    LastDiscoveredAt: number
    LastSuccessfulMonitorDeployment: SuccessfulMonitorDeployment
    MediaResourceMap: {string : MediaResource}
    ModifiedAt: number
    MonitorChangesPendingDeployment: boolean
    MonitorDeployment: MonitorDeployment
    Name: string
    Status: string
    Tags: {string : string}
end

local record CreateTagsInput
    ResourceArn: string
    Tags: {string : string}
end

local record CreateTagsOutput
end

local record DeleteChannelInput
    ChannelId: string
end

local record DeleteChannelOutput
    Arn: string
    CdiInputSpecification: CdiInputSpecification
    ChannelClass: string
    Destinations: {OutputDestination}
    EgressEndpoints: {ChannelEgressEndpoint}
    EncoderSettings: EncoderSettings
    Id: string
    InputAttachments: {InputAttachment}
    InputSpecification: InputSpecification
    LogLevel: string
    Maintenance: MaintenanceStatus
    Name: string
    PipelineDetails: {PipelineDetail}
    PipelinesRunningCount: number
    RoleArn: string
    State: string
    Tags: {string : string}
    Vpc: VpcOutputSettingsDescription
    AnywhereSettings: DescribeAnywhereSettings
    ChannelEngineVersion: ChannelEngineVersionResponse
    LinkedChannelSettings: DescribeLinkedChannelSettings
    ChannelSecurityGroups: {string}
    InferenceSettings: DescribeInferenceSettings
end

local record DeleteChannelPlacementGroupInput
    ChannelPlacementGroupId: string
    ClusterId: string
end

local record DeleteChannelPlacementGroupOutput
    Arn: string
    Channels: {string}
    ClusterId: string
    Id: string
    Name: string
    Nodes: {string}
    State: string
end

local record DeleteCloudWatchAlarmTemplateInput
    Identifier: string
end

local record DeleteCloudWatchAlarmTemplateOutput
end

local record DeleteCloudWatchAlarmTemplateGroupInput
    Identifier: string
end

local record DeleteCloudWatchAlarmTemplateGroupOutput
end

local record DeleteClusterInput
    ClusterId: string
end

local record DeleteClusterOutput
    Arn: string
    ChannelIds: {string}
    ClusterType: string
    Id: string
    InstanceRoleArn: string
    Name: string
    NetworkSettings: ClusterNetworkSettings
    State: string
end

local record DeleteEventBridgeRuleTemplateInput
    Identifier: string
end

local record DeleteEventBridgeRuleTemplateOutput
end

local record DeleteEventBridgeRuleTemplateGroupInput
    Identifier: string
end

local record DeleteEventBridgeRuleTemplateGroupOutput
end

local record DeleteInputInput
    InputId: string
end

local record DeleteInputOutput
end

local record DeleteInputSecurityGroupInput
    InputSecurityGroupId: string
end

local record DeleteInputSecurityGroupOutput
end

local record DeleteMultiplexInput
    MultiplexId: string
end

local record DeleteMultiplexOutput
    Arn: string
    AvailabilityZones: {string}
    Destinations: {MultiplexOutputDestination}
    Id: string
    MultiplexSettings: MultiplexSettings
    Name: string
    PipelinesRunningCount: number
    ProgramCount: number
    State: string
    Tags: {string : string}
end

local record DeleteMultiplexProgramInput
    MultiplexId: string
    ProgramName: string
end

local record DeleteMultiplexProgramOutput
    ChannelId: string
    MultiplexProgramSettings: MultiplexProgramSettings
    PacketIdentifiersMap: MultiplexProgramPacketIdentifiersMap
    PipelineDetails: {MultiplexProgramPipelineDetail}
    ProgramName: string
end

local record DeleteNetworkInput
    NetworkId: string
end

local record DeleteNetworkOutput
    Arn: string
    AssociatedClusterIds: {string}
    Id: string
    IpPools: {IpPool}
    Name: string
    Routes: {Route}
    State: string
end

local record DeleteNodeInput
    ClusterId: string
    NodeId: string
end

local record DeleteNodeOutput
    Arn: string
    ChannelPlacementGroups: {string}
    ClusterId: string
    ConnectionState: string
    Id: string
    InstanceArn: string
    Name: string
    NodeInterfaceMappings: {NodeInterfaceMapping}
    Role: string
    State: string
    SdiSourceMappings: {SdiSourceMapping}
end

local record DeleteReservationInput
    ReservationId: string
end

local record DeleteReservationOutput
    Arn: string
    Count: number
    CurrencyCode: string
    Duration: number
    DurationUnits: string
    End: string
    FixedPrice: number
    Name: string
    OfferingDescription: string
    OfferingId: string
    OfferingType: string
    Region: string
    RenewalSettings: RenewalSettings
    ReservationId: string
    ResourceSpecification: ReservationResourceSpecification
    Start: string
    State: string
    Tags: {string : string}
    UsagePrice: number
end

local record DeleteScheduleInput
    ChannelId: string
end

local record DeleteScheduleOutput
end

local record DeleteSdiSourceInput
    SdiSourceId: string
end

local record DeleteSdiSourceOutput
    SdiSource: SdiSource
end

local record DeleteSignalMapInput
    Identifier: string
end

local record DeleteSignalMapOutput
end

local record DeleteTagsInput
    ResourceArn: string
    TagKeys: {string}
end

local record DeleteTagsOutput
end

local record DescribeAccountConfigurationInput
end

local record DescribeAccountConfigurationOutput
    AccountConfiguration: AccountConfiguration
end

local record DescribeChannelInput
    ChannelId: string
end

local record DescribeChannelOutput
    Arn: string
    CdiInputSpecification: CdiInputSpecification
    ChannelClass: string
    Destinations: {OutputDestination}
    EgressEndpoints: {ChannelEgressEndpoint}
    EncoderSettings: EncoderSettings
    Id: string
    InputAttachments: {InputAttachment}
    InputSpecification: InputSpecification
    LogLevel: string
    Maintenance: MaintenanceStatus
    Name: string
    PipelineDetails: {PipelineDetail}
    PipelinesRunningCount: number
    RoleArn: string
    State: string
    Tags: {string : string}
    Vpc: VpcOutputSettingsDescription
    AnywhereSettings: DescribeAnywhereSettings
    ChannelEngineVersion: ChannelEngineVersionResponse
    LinkedChannelSettings: DescribeLinkedChannelSettings
    ChannelSecurityGroups: {string}
    InferenceSettings: DescribeInferenceSettings
end

local record DescribeChannelPlacementGroupInput
    ChannelPlacementGroupId: string
    ClusterId: string
end

local record DescribeChannelPlacementGroupOutput
    Arn: string
    Channels: {string}
    ClusterId: string
    Id: string
    Name: string
    Nodes: {string}
    State: string
end

local record DescribeClusterInput
    ClusterId: string
end

local record DescribeClusterOutput
    Arn: string
    ChannelIds: {string}
    ClusterType: string
    Id: string
    InstanceRoleArn: string
    Name: string
    NetworkSettings: ClusterNetworkSettings
    State: string
end

local record DescribeInputInput
    InputId: string
end

local record DescribeInputOutput
    Arn: string
    AttachedChannels: {string}
    Destinations: {InputDestination}
    Id: string
    InputClass: string
    InputDevices: {InputDeviceSettings}
    InputPartnerIds: {string}
    InputSourceType: string
    MediaConnectFlows: {MediaConnectFlow}
    Name: string
    RoleArn: string
    SecurityGroups: {string}
    Sources: {InputSource}
    State: string
    Tags: {string : string}
    Type: string
    SrtSettings: SrtSettings
    InputNetworkLocation: string
    MulticastSettings: MulticastSettings
    Smpte2110ReceiverGroupSettings: Smpte2110ReceiverGroupSettings
    SdiSources: {string}
    RouterSettings: RouterInputSettings
end

local record DescribeInputDeviceInput
    InputDeviceId: string
end

local record DescribeInputDeviceOutput
    Arn: string
    ConnectionState: string
    DeviceSettingsSyncState: string
    DeviceUpdateStatus: string
    HdDeviceSettings: InputDeviceHdSettings
    Id: string
    MacAddress: string
    Name: string
    NetworkSettings: InputDeviceNetworkSettings
    SerialNumber: string
    Type: string
    UhdDeviceSettings: InputDeviceUhdSettings
    Tags: {string : string}
    AvailabilityZone: string
    MedialiveInputArns: {string}
    OutputType: string
end

local record DescribeInputDeviceThumbnailInput
    InputDeviceId: string
    Accept: string
end

local record DescribeInputDeviceThumbnailOutput
    Body: string
    ContentType: string
    ContentLength: number
    ETag: string
    LastModified: number
end

local record DescribeInputSecurityGroupInput
    InputSecurityGroupId: string
end

local record DescribeInputSecurityGroupOutput
    Arn: string
    Id: string
    Inputs: {string}
    State: string
    Tags: {string : string}
    WhitelistRules: {InputWhitelistRule}
    Channels: {string}
end

local record DescribeMultiplexInput
    MultiplexId: string
end

local record DescribeMultiplexOutput
    Arn: string
    AvailabilityZones: {string}
    Destinations: {MultiplexOutputDestination}
    Id: string
    MultiplexSettings: MultiplexSettings
    Name: string
    PipelinesRunningCount: number
    ProgramCount: number
    State: string
    Tags: {string : string}
end

local record DescribeMultiplexProgramInput
    MultiplexId: string
    ProgramName: string
end

local record DescribeMultiplexProgramOutput
    ChannelId: string
    MultiplexProgramSettings: MultiplexProgramSettings
    PacketIdentifiersMap: MultiplexProgramPacketIdentifiersMap
    PipelineDetails: {MultiplexProgramPipelineDetail}
    ProgramName: string
end

local record DescribeNetworkInput
    NetworkId: string
end

local record DescribeNetworkOutput
    Arn: string
    AssociatedClusterIds: {string}
    Id: string
    IpPools: {IpPool}
    Name: string
    Routes: {Route}
    State: string
end

local record DescribeNodeInput
    ClusterId: string
    NodeId: string
end

local record DescribeNodeOutput
    Arn: string
    ChannelPlacementGroups: {string}
    ClusterId: string
    ConnectionState: string
    Id: string
    InstanceArn: string
    Name: string
    NodeInterfaceMappings: {NodeInterfaceMapping}
    Role: string
    State: string
    SdiSourceMappings: {SdiSourceMapping}
end

local record DescribeOfferingInput
    OfferingId: string
end

local record DescribeOfferingOutput
    Arn: string
    CurrencyCode: string
    Duration: number
    DurationUnits: string
    FixedPrice: number
    OfferingDescription: string
    OfferingId: string
    OfferingType: string
    Region: string
    ResourceSpecification: ReservationResourceSpecification
    UsagePrice: number
end

local record DescribeReservationInput
    ReservationId: string
end

local record DescribeReservationOutput
    Arn: string
    Count: number
    CurrencyCode: string
    Duration: number
    DurationUnits: string
    End: string
    FixedPrice: number
    Name: string
    OfferingDescription: string
    OfferingId: string
    OfferingType: string
    Region: string
    RenewalSettings: RenewalSettings
    ReservationId: string
    ResourceSpecification: ReservationResourceSpecification
    Start: string
    State: string
    Tags: {string : string}
    UsagePrice: number
end

local record DescribeScheduleInput
    ChannelId: string
    MaxResults: number
    NextToken: string
end

local record DescribeScheduleOutput
    NextToken: string
    ScheduleActions: {ScheduleAction}
end

local record DescribeSdiSourceInput
    SdiSourceId: string
end

local record DescribeSdiSourceOutput
    SdiSource: SdiSource
end

local record DescribeThumbnailsInput
    ChannelId: string
    PipelineId: string
    ThumbnailType: string
end

local record DescribeThumbnailsOutput
    ThumbnailDetails: {ThumbnailDetail}
end

local record GetCloudWatchAlarmTemplateInput
    Identifier: string
end

local record GetCloudWatchAlarmTemplateOutput
    Arn: string
    ComparisonOperator: string
    CreatedAt: number
    DatapointsToAlarm: number
    Description: string
    EvaluationPeriods: number
    GroupId: string
    Id: string
    MetricName: string
    ModifiedAt: number
    Name: string
    Period: number
    Statistic: string
    Tags: {string : string}
    TargetResourceType: string
    Threshold: number
    TreatMissingData: string
end

local record GetCloudWatchAlarmTemplateGroupInput
    Identifier: string
end

local record GetCloudWatchAlarmTemplateGroupOutput
    Arn: string
    CreatedAt: number
    Description: string
    Id: string
    ModifiedAt: number
    Name: string
    Tags: {string : string}
end

local record GetEventBridgeRuleTemplateInput
    Identifier: string
end

local record GetEventBridgeRuleTemplateOutput
    Arn: string
    CreatedAt: number
    Description: string
    EventTargets: {EventBridgeRuleTemplateTarget}
    EventType: string
    GroupId: string
    Id: string
    ModifiedAt: number
    Name: string
    Tags: {string : string}
end

local record GetEventBridgeRuleTemplateGroupInput
    Identifier: string
end

local record GetEventBridgeRuleTemplateGroupOutput
    Arn: string
    CreatedAt: number
    Description: string
    Id: string
    ModifiedAt: number
    Name: string
    Tags: {string : string}
end

local record GetSignalMapInput
    Identifier: string
end

local record GetSignalMapOutput
    Arn: string
    CloudWatchAlarmTemplateGroupIds: {string}
    CreatedAt: number
    Description: string
    DiscoveryEntryPointArn: string
    ErrorMessage: string
    EventBridgeRuleTemplateGroupIds: {string}
    FailedMediaResourceMap: {string : MediaResource}
    Id: string
    LastDiscoveredAt: number
    LastSuccessfulMonitorDeployment: SuccessfulMonitorDeployment
    MediaResourceMap: {string : MediaResource}
    ModifiedAt: number
    MonitorChangesPendingDeployment: boolean
    MonitorDeployment: MonitorDeployment
    Name: string
    Status: string
    Tags: {string : string}
end

local record ListAlertsInput
    ChannelId: string
    MaxResults: number
    NextToken: string
    StateFilter: string
end

local record ListAlertsOutput
    Alerts: {ChannelAlert}
    NextToken: string
end

local record ListChannelPlacementGroupsInput
    ClusterId: string
    MaxResults: number
    NextToken: string
end

local record ListChannelPlacementGroupsOutput
    ChannelPlacementGroups: {DescribeChannelPlacementGroupSummary}
    NextToken: string
end

local record ListChannelsInput
    MaxResults: number
    NextToken: string
end

local record ListChannelsOutput
    Channels: {ChannelSummary}
    NextToken: string
end

local record ListCloudWatchAlarmTemplateGroupsInput
    MaxResults: number
    NextToken: string
    Scope: string
    SignalMapIdentifier: string
end

local record ListCloudWatchAlarmTemplateGroupsOutput
    CloudWatchAlarmTemplateGroups: {CloudWatchAlarmTemplateGroupSummary}
    NextToken: string
end

local record ListCloudWatchAlarmTemplatesInput
    GroupIdentifier: string
    MaxResults: number
    NextToken: string
    Scope: string
    SignalMapIdentifier: string
end

local record ListCloudWatchAlarmTemplatesOutput
    CloudWatchAlarmTemplates: {CloudWatchAlarmTemplateSummary}
    NextToken: string
end

local record ListClusterAlertsInput
    ClusterId: string
    MaxResults: number
    NextToken: string
    StateFilter: string
end

local record ListClusterAlertsOutput
    Alerts: {ClusterAlert}
    NextToken: string
end

local record ListClustersInput
    MaxResults: number
    NextToken: string
end

local record ListClustersOutput
    Clusters: {DescribeClusterSummary}
    NextToken: string
end

local record ListEventBridgeRuleTemplateGroupsInput
    MaxResults: number
    NextToken: string
    SignalMapIdentifier: string
end

local record ListEventBridgeRuleTemplateGroupsOutput
    EventBridgeRuleTemplateGroups: {EventBridgeRuleTemplateGroupSummary}
    NextToken: string
end

local record ListEventBridgeRuleTemplatesInput
    GroupIdentifier: string
    MaxResults: number
    NextToken: string
    SignalMapIdentifier: string
end

local record ListEventBridgeRuleTemplatesOutput
    EventBridgeRuleTemplates: {EventBridgeRuleTemplateSummary}
    NextToken: string
end

local record ListInputDevicesInput
    MaxResults: number
    NextToken: string
end

local record ListInputDevicesOutput
    InputDevices: {InputDeviceSummary}
    NextToken: string
end

local record ListInputDeviceTransfersInput
    MaxResults: number
    NextToken: string
    TransferType: string
end

local record ListInputDeviceTransfersOutput
    InputDeviceTransfers: {TransferringInputDeviceSummary}
    NextToken: string
end

local record ListInputsInput
    MaxResults: number
    NextToken: string
end

local record ListInputsOutput
    Inputs: {Input}
    NextToken: string
end

local record ListInputSecurityGroupsInput
    MaxResults: number
    NextToken: string
end

local record ListInputSecurityGroupsOutput
    InputSecurityGroups: {InputSecurityGroup}
    NextToken: string
end

local record ListMultiplexAlertsInput
    MaxResults: number
    MultiplexId: string
    NextToken: string
    StateFilter: string
end

local record ListMultiplexAlertsOutput
    Alerts: {MultiplexAlert}
    NextToken: string
end

local record ListMultiplexesInput
    MaxResults: number
    NextToken: string
end

local record ListMultiplexesOutput
    Multiplexes: {MultiplexSummary}
    NextToken: string
end

local record ListMultiplexProgramsInput
    MaxResults: number
    MultiplexId: string
    NextToken: string
end

local record ListMultiplexProgramsOutput
    MultiplexPrograms: {MultiplexProgramSummary}
    NextToken: string
end

local record ListNetworksInput
    MaxResults: number
    NextToken: string
end

local record ListNetworksOutput
    Networks: {DescribeNetworkSummary}
    NextToken: string
end

local record ListNodesInput
    ClusterId: string
    MaxResults: number
    NextToken: string
end

local record ListNodesOutput
    NextToken: string
    Nodes: {DescribeNodeSummary}
end

local record ListOfferingsInput
    ChannelClass: string
    ChannelConfiguration: string
    Codec: string
    Duration: string
    MaxResults: number
    MaximumBitrate: string
    MaximumFramerate: string
    NextToken: string
    Resolution: string
    ResourceType: string
    SpecialFeature: string
    VideoQuality: string
end

local record ListOfferingsOutput
    NextToken: string
    Offerings: {Offering}
end

local record ListReservationsInput
    ChannelClass: string
    Codec: string
    MaxResults: number
    MaximumBitrate: string
    MaximumFramerate: string
    NextToken: string
    Resolution: string
    ResourceType: string
    SpecialFeature: string
    VideoQuality: string
end

local record ListReservationsOutput
    NextToken: string
    Reservations: {Reservation}
end

local record ListSdiSourcesInput
    MaxResults: number
    NextToken: string
end

local record ListSdiSourcesOutput
    NextToken: string
    SdiSources: {SdiSourceSummary}
end

local record ListSignalMapsInput
    CloudWatchAlarmTemplateGroupIdentifier: string
    EventBridgeRuleTemplateGroupIdentifier: string
    MaxResults: number
    NextToken: string
end

local record ListSignalMapsOutput
    NextToken: string
    SignalMaps: {SignalMapSummary}
end

local record ListTagsForResourceInput
    ResourceArn: string
end

local record ListTagsForResourceOutput
    Tags: {string : string}
end

local record ListVersionsInput
end

local record ListVersionsOutput
    Versions: {ChannelEngineVersionResponse}
end

local record PurchaseOfferingInput
    Count: number
    Name: string
    OfferingId: string
    RenewalSettings: RenewalSettings
    RequestId: string
    Start: string
    Tags: {string : string}
end

local record PurchaseOfferingOutput
    Reservation: Reservation
end

local record RebootInputDeviceInput
    Force: string
    InputDeviceId: string
end

local record RebootInputDeviceOutput
end

local record RejectInputDeviceTransferInput
    InputDeviceId: string
end

local record RejectInputDeviceTransferOutput
end

local record RestartChannelPipelinesInput
    ChannelId: string
    PipelineIds: {string}
end

local record RestartChannelPipelinesOutput
    Arn: string
    CdiInputSpecification: CdiInputSpecification
    ChannelClass: string
    Destinations: {OutputDestination}
    EgressEndpoints: {ChannelEgressEndpoint}
    EncoderSettings: EncoderSettings
    Id: string
    InputAttachments: {InputAttachment}
    InputSpecification: InputSpecification
    LogLevel: string
    Maintenance: MaintenanceStatus
    MaintenanceStatus: string
    Name: string
    PipelineDetails: {PipelineDetail}
    PipelinesRunningCount: number
    RoleArn: string
    State: string
    Tags: {string : string}
    Vpc: VpcOutputSettingsDescription
    AnywhereSettings: DescribeAnywhereSettings
    ChannelEngineVersion: ChannelEngineVersionResponse
    LinkedChannelSettings: DescribeLinkedChannelSettings
    ChannelSecurityGroups: {string}
    InferenceSettings: DescribeInferenceSettings
end

local record StartChannelInput
    ChannelId: string
end

local record StartChannelOutput
    Arn: string
    CdiInputSpecification: CdiInputSpecification
    ChannelClass: string
    Destinations: {OutputDestination}
    EgressEndpoints: {ChannelEgressEndpoint}
    EncoderSettings: EncoderSettings
    Id: string
    InputAttachments: {InputAttachment}
    InputSpecification: InputSpecification
    LogLevel: string
    Maintenance: MaintenanceStatus
    Name: string
    PipelineDetails: {PipelineDetail}
    PipelinesRunningCount: number
    RoleArn: string
    State: string
    Tags: {string : string}
    Vpc: VpcOutputSettingsDescription
    AnywhereSettings: DescribeAnywhereSettings
    ChannelEngineVersion: ChannelEngineVersionResponse
    LinkedChannelSettings: DescribeLinkedChannelSettings
    ChannelSecurityGroups: {string}
    InferenceSettings: DescribeInferenceSettings
end

local record StartDeleteMonitorDeploymentInput
    Identifier: string
end

local record StartDeleteMonitorDeploymentOutput
    Arn: string
    CloudWatchAlarmTemplateGroupIds: {string}
    CreatedAt: number
    Description: string
    DiscoveryEntryPointArn: string
    ErrorMessage: string
    EventBridgeRuleTemplateGroupIds: {string}
    FailedMediaResourceMap: {string : MediaResource}
    Id: string
    LastDiscoveredAt: number
    LastSuccessfulMonitorDeployment: SuccessfulMonitorDeployment
    MediaResourceMap: {string : MediaResource}
    ModifiedAt: number
    MonitorChangesPendingDeployment: boolean
    MonitorDeployment: MonitorDeployment
    Name: string
    Status: string
    Tags: {string : string}
end

local record StartInputDeviceInput
    InputDeviceId: string
end

local record StartInputDeviceOutput
end

local record StartInputDeviceMaintenanceWindowInput
    InputDeviceId: string
end

local record StartInputDeviceMaintenanceWindowOutput
end

local record StartMonitorDeploymentInput
    DryRun: boolean
    Identifier: string
end

local record StartMonitorDeploymentOutput
    Arn: string
    CloudWatchAlarmTemplateGroupIds: {string}
    CreatedAt: number
    Description: string
    DiscoveryEntryPointArn: string
    ErrorMessage: string
    EventBridgeRuleTemplateGroupIds: {string}
    FailedMediaResourceMap: {string : MediaResource}
    Id: string
    LastDiscoveredAt: number
    LastSuccessfulMonitorDeployment: SuccessfulMonitorDeployment
    MediaResourceMap: {string : MediaResource}
    ModifiedAt: number
    MonitorChangesPendingDeployment: boolean
    MonitorDeployment: MonitorDeployment
    Name: string
    Status: string
    Tags: {string : string}
end

local record StartMultiplexInput
    MultiplexId: string
end

local record StartMultiplexOutput
    Arn: string
    AvailabilityZones: {string}
    Destinations: {MultiplexOutputDestination}
    Id: string
    MultiplexSettings: MultiplexSettings
    Name: string
    PipelinesRunningCount: number
    ProgramCount: number
    State: string
    Tags: {string : string}
end

local record StartUpdateSignalMapInput
    CloudWatchAlarmTemplateGroupIdentifiers: {string}
    Description: string
    DiscoveryEntryPointArn: string
    EventBridgeRuleTemplateGroupIdentifiers: {string}
    ForceRediscovery: boolean
    Identifier: string
    Name: string
end

local record StartUpdateSignalMapOutput
    Arn: string
    CloudWatchAlarmTemplateGroupIds: {string}
    CreatedAt: number
    Description: string
    DiscoveryEntryPointArn: string
    ErrorMessage: string
    EventBridgeRuleTemplateGroupIds: {string}
    FailedMediaResourceMap: {string : MediaResource}
    Id: string
    LastDiscoveredAt: number
    LastSuccessfulMonitorDeployment: SuccessfulMonitorDeployment
    MediaResourceMap: {string : MediaResource}
    ModifiedAt: number
    MonitorChangesPendingDeployment: boolean
    MonitorDeployment: MonitorDeployment
    Name: string
    Status: string
    Tags: {string : string}
end

local record StopChannelInput
    ChannelId: string
end

local record StopChannelOutput
    Arn: string
    CdiInputSpecification: CdiInputSpecification
    ChannelClass: string
    Destinations: {OutputDestination}
    EgressEndpoints: {ChannelEgressEndpoint}
    EncoderSettings: EncoderSettings
    Id: string
    InputAttachments: {InputAttachment}
    InputSpecification: InputSpecification
    LogLevel: string
    Maintenance: MaintenanceStatus
    Name: string
    PipelineDetails: {PipelineDetail}
    PipelinesRunningCount: number
    RoleArn: string
    State: string
    Tags: {string : string}
    Vpc: VpcOutputSettingsDescription
    AnywhereSettings: DescribeAnywhereSettings
    ChannelEngineVersion: ChannelEngineVersionResponse
    LinkedChannelSettings: DescribeLinkedChannelSettings
    ChannelSecurityGroups: {string}
    InferenceSettings: DescribeInferenceSettings
end

local record StopInputDeviceInput
    InputDeviceId: string
end

local record StopInputDeviceOutput
end

local record StopMultiplexInput
    MultiplexId: string
end

local record StopMultiplexOutput
    Arn: string
    AvailabilityZones: {string}
    Destinations: {MultiplexOutputDestination}
    Id: string
    MultiplexSettings: MultiplexSettings
    Name: string
    PipelinesRunningCount: number
    ProgramCount: number
    State: string
    Tags: {string : string}
end

local record TransferInputDeviceInput
    InputDeviceId: string
    TargetCustomerId: string
    TargetRegion: string
    TransferMessage: string
end

local record TransferInputDeviceOutput
end

local record UpdateAccountConfigurationInput
    AccountConfiguration: AccountConfiguration
end

local record UpdateAccountConfigurationOutput
    AccountConfiguration: AccountConfiguration
end

local record UpdateChannelInput
    CdiInputSpecification: CdiInputSpecification
    ChannelId: string
    Destinations: {OutputDestination}
    EncoderSettings: EncoderSettings
    InputAttachments: {InputAttachment}
    InputSpecification: InputSpecification
    LogLevel: string
    Maintenance: MaintenanceUpdateSettings
    Name: string
    RoleArn: string
    ChannelEngineVersion: ChannelEngineVersionRequest
    DryRun: boolean
    AnywhereSettings: AnywhereSettings
    LinkedChannelSettings: LinkedChannelSettings
    ChannelSecurityGroups: {string}
    InferenceSettings: InferenceSettings
    SpecialRouterSettings: SpecialRouterSettings
end

local record UpdateChannelOutput
    Channel: Channel
end

local record UpdateChannelClassInput
    ChannelClass: string
    ChannelId: string
    Destinations: {OutputDestination}
end

local record UpdateChannelClassOutput
    Channel: Channel
end

local record UpdateChannelPlacementGroupInput
    ChannelPlacementGroupId: string
    ClusterId: string
    Name: string
    Nodes: {string}
end

local record UpdateChannelPlacementGroupOutput
    Arn: string
    Channels: {string}
    ClusterId: string
    Id: string
    Name: string
    Nodes: {string}
    State: string
end

local record UpdateCloudWatchAlarmTemplateInput
    ComparisonOperator: string
    DatapointsToAlarm: number
    Description: string
    EvaluationPeriods: number
    GroupIdentifier: string
    Identifier: string
    MetricName: string
    Name: string
    Period: number
    Statistic: string
    TargetResourceType: string
    Threshold: number
    TreatMissingData: string
end

local record UpdateCloudWatchAlarmTemplateOutput
    Arn: string
    ComparisonOperator: string
    CreatedAt: number
    DatapointsToAlarm: number
    Description: string
    EvaluationPeriods: number
    GroupId: string
    Id: string
    MetricName: string
    ModifiedAt: number
    Name: string
    Period: number
    Statistic: string
    Tags: {string : string}
    TargetResourceType: string
    Threshold: number
    TreatMissingData: string
end

local record UpdateCloudWatchAlarmTemplateGroupInput
    Description: string
    Identifier: string
end

local record UpdateCloudWatchAlarmTemplateGroupOutput
    Arn: string
    CreatedAt: number
    Description: string
    Id: string
    ModifiedAt: number
    Name: string
    Tags: {string : string}
end

local record UpdateClusterInput
    ClusterId: string
    Name: string
    NetworkSettings: ClusterNetworkSettingsUpdateRequest
end

local record UpdateClusterOutput
    Arn: string
    ChannelIds: {string}
    ClusterType: string
    Id: string
    Name: string
    NetworkSettings: ClusterNetworkSettings
    State: string
end

local record UpdateEventBridgeRuleTemplateInput
    Description: string
    EventTargets: {EventBridgeRuleTemplateTarget}
    EventType: string
    GroupIdentifier: string
    Identifier: string
    Name: string
end

local record UpdateEventBridgeRuleTemplateOutput
    Arn: string
    CreatedAt: number
    Description: string
    EventTargets: {EventBridgeRuleTemplateTarget}
    EventType: string
    GroupId: string
    Id: string
    ModifiedAt: number
    Name: string
    Tags: {string : string}
end

local record UpdateEventBridgeRuleTemplateGroupInput
    Description: string
    Identifier: string
end

local record UpdateEventBridgeRuleTemplateGroupOutput
    Arn: string
    CreatedAt: number
    Description: string
    Id: string
    ModifiedAt: number
    Name: string
    Tags: {string : string}
end

local record UpdateInputInput
    Destinations: {InputDestinationRequest}
    InputDevices: {InputDeviceRequest}
    InputId: string
    InputSecurityGroups: {string}
    MediaConnectFlows: {MediaConnectFlowRequest}
    Name: string
    RoleArn: string
    Sources: {InputSourceRequest}
    SrtSettings: SrtSettingsRequest
    MulticastSettings: MulticastSettingsUpdateRequest
    Smpte2110ReceiverGroupSettings: Smpte2110ReceiverGroupSettings
    SdiSources: {string}
    SpecialRouterSettings: SpecialRouterSettings
end

local record UpdateInputOutput
    Input: Input
end

local record UpdateInputDeviceInput
    HdDeviceSettings: InputDeviceConfigurableSettings
    InputDeviceId: string
    Name: string
    UhdDeviceSettings: InputDeviceConfigurableSettings
    AvailabilityZone: string
end

local record UpdateInputDeviceOutput
    Arn: string
    ConnectionState: string
    DeviceSettingsSyncState: string
    DeviceUpdateStatus: string
    HdDeviceSettings: InputDeviceHdSettings
    Id: string
    MacAddress: string
    Name: string
    NetworkSettings: InputDeviceNetworkSettings
    SerialNumber: string
    Type: string
    UhdDeviceSettings: InputDeviceUhdSettings
    Tags: {string : string}
    AvailabilityZone: string
    MedialiveInputArns: {string}
    OutputType: string
end

local record UpdateInputSecurityGroupInput
    InputSecurityGroupId: string
    Tags: {string : string}
    WhitelistRules: {InputWhitelistRuleCidr}
end

local record UpdateInputSecurityGroupOutput
    SecurityGroup: InputSecurityGroup
end

local record UpdateMultiplexInput
    MultiplexId: string
    MultiplexSettings: MultiplexSettings
    Name: string
    PacketIdentifiersMapping: {string : MultiplexProgramPacketIdentifiersMap}
end

local record UpdateMultiplexOutput
    Multiplex: Multiplex
end

local record UpdateMultiplexProgramInput
    MultiplexId: string
    MultiplexProgramSettings: MultiplexProgramSettings
    ProgramName: string
end

local record UpdateMultiplexProgramOutput
    MultiplexProgram: MultiplexProgram
end

local record UpdateNetworkInput
    IpPools: {IpPoolUpdateRequest}
    Name: string
    NetworkId: string
    Routes: {RouteUpdateRequest}
end

local record UpdateNetworkOutput
    Arn: string
    AssociatedClusterIds: {string}
    Id: string
    IpPools: {IpPool}
    Name: string
    Routes: {Route}
    State: string
end

local record UpdateNodeInput
    ClusterId: string
    Name: string
    NodeId: string
    Role: string
    SdiSourceMappings: {SdiSourceMappingUpdateRequest}
end

local record UpdateNodeOutput
    Arn: string
    ChannelPlacementGroups: {string}
    ClusterId: string
    ConnectionState: string
    Id: string
    InstanceArn: string
    Name: string
    NodeInterfaceMappings: {NodeInterfaceMapping}
    Role: string
    State: string
    SdiSourceMappings: {SdiSourceMapping}
end

local record UpdateNodeStateInput
    ClusterId: string
    NodeId: string
    State: string
end

local record UpdateNodeStateOutput
    Arn: string
    ChannelPlacementGroups: {string}
    ClusterId: string
    ConnectionState: string
    Id: string
    InstanceArn: string
    Name: string
    NodeInterfaceMappings: {NodeInterfaceMapping}
    Role: string
    State: string
    SdiSourceMappings: {SdiSourceMapping}
end

local record UpdateReservationInput
    Name: string
    RenewalSettings: RenewalSettings
    ReservationId: string
end

local record UpdateReservationOutput
    Reservation: Reservation
end

local record UpdateSdiSourceInput
    Mode: string
    Name: string
    SdiSourceId: string
    Type: string
end

local record UpdateSdiSourceOutput
    SdiSource: SdiSource
end

local record BadGatewayException
    Message: string
end

local record BadRequestException
    Message: string
end

local record ConflictException
    Message: string
end

local record ForbiddenException
    Message: string
end

local record GatewayTimeoutException
    Message: string
end

local record InternalServerErrorException
    Message: string
end

local record NotFoundException
    Message: string
end

local record TooManyRequestsException
    Message: string
end

local record UnprocessableEntityException
    Message: string
    ValidationErrors: {ValidationError}
end

local record BadGatewayException
    Message: string
end

local record BadRequestException
    Message: string
end

local record ConflictException
    Message: string
end

local record ForbiddenException
    Message: string
end

local record GatewayTimeoutException
    Message: string
end

local record InternalServerErrorException
    Message: string
end

local record NotFoundException
    Message: string
end

local record TooManyRequestsException
    Message: string
end

local record BadGatewayException
    Message: string
end

local record BadRequestException
    Message: string
end

local record ConflictException
    Message: string
end

local record ForbiddenException
    Message: string
end

local record GatewayTimeoutException
    Message: string
end

local record InternalServerErrorException
    Message: string
end

local record NotFoundException
    Message: string
end

local record TooManyRequestsException
    Message: string
end

local record BadGatewayException
    Message: string
end

local record BadRequestException
    Message: string
end

local record ConflictException
    Message: string
end

local record ForbiddenException
    Message: string
end

local record GatewayTimeoutException
    Message: string
end

local record InternalServerErrorException
    Message: string
end

local record NotFoundException
    Message: string
end

local record TooManyRequestsException
    Message: string
end

local record BadGatewayException
    Message: string
end

local record BadRequestException
    Message: string
end

local record ForbiddenException
    Message: string
end

local record GatewayTimeoutException
    Message: string
end

local record InternalServerErrorException
    Message: string
end

local record NotFoundException
    Message: string
end

local record TooManyRequestsException
    Message: string
end

local record UnprocessableEntityException
    Message: string
    ValidationErrors: {ValidationError}
end

local record BadGatewayException
    Message: string
end

local record BadRequestException
    Message: string
end

local record ConflictException
    Message: string
end

local record ForbiddenException
    Message: string
end

local record GatewayTimeoutException
    Message: string
end

local record InternalServerErrorException
    Message: string
end

local record NotFoundException
    Message: string
end

local record TooManyRequestsException
    Message: string
end

local record UnprocessableEntityException
    Message: string
    ValidationErrors: {ValidationError}
end

local record BadGatewayException
    Message: string
end

local record BadRequestException
    Message: string
end

local record ForbiddenException
    Message: string
end

local record GatewayTimeoutException
    Message: string
end

local record InternalServerErrorException
    Message: string
end

local record NotFoundException
    Message: string
end

local record TooManyRequestsException
    Message: string
end

local record UnprocessableEntityException
    Message: string
    ValidationErrors: {ValidationError}
end

local record BadGatewayException
    Message: string
end

local record BadRequestException
    Message: string
end

local record ConflictException
    Message: string
end

local record ForbiddenException
    Message: string
end

local record GatewayTimeoutException
    Message: string
end

local record InternalServerErrorException
    Message: string
end

local record TooManyRequestsException
    Message: string
end

local record UnprocessableEntityException
    Message: string
    ValidationErrors: {ValidationError}
end

local record BadGatewayException
    Message: string
end

local record BadRequestException
    Message: string
end

local record ForbiddenException
    Message: string
end

local record GatewayTimeoutException
    Message: string
end

local record InternalServerErrorException
    Message: string
end

local record TooManyRequestsException
    Message: string
end

local record UnprocessableEntityException
    Message: string
    ValidationErrors: {ValidationError}
end

local record BadRequestException
    Message: string
end

local record ConflictException
    Message: string
end

local record ForbiddenException
    Message: string
end

local record InternalServerErrorException
    Message: string
end

local record NotFoundException
    Message: string
end

local record TooManyRequestsException
    Message: string
end

local record BadRequestException
    Message: string
end

local record ConflictException
    Message: string
end

local record ForbiddenException
    Message: string
end

local record InternalServerErrorException
    Message: string
end

local record NotFoundException
    Message: string
end

local record TooManyRequestsException
    Message: string
end

local record BadGatewayException
    Message: string
end

local record BadRequestException
    Message: string
end

local record ConflictException
    Message: string
end

local record ForbiddenException
    Message: string
end

local record GatewayTimeoutException
    Message: string
end

local record InternalServerErrorException
    Message: string
end

local record TooManyRequestsException
    Message: string
end

local record BadRequestException
    Message: string
end

local record ConflictException
    Message: string
end

local record ForbiddenException
    Message: string
end

local record InternalServerErrorException
    Message: string
end

local record NotFoundException
    Message: string
end

local record TooManyRequestsException
    Message: string
end

local record BadRequestException
    Message: string
end

local record ConflictException
    Message: string
end

local record ForbiddenException
    Message: string
end

local record InternalServerErrorException
    Message: string
end

local record NotFoundException
    Message: string
end

local record TooManyRequestsException
    Message: string
end

local record BadGatewayException
    Message: string
end

local record BadRequestException
    Message: string
end

local record ForbiddenException
    Message: string
end

local record GatewayTimeoutException
    Message: string
end

local record InternalServerErrorException
    Message: string
end

local record TooManyRequestsException
    Message: string
end

local record BadGatewayException
    Message: string
end

local record BadRequestException
    Message: string
end

local record ForbiddenException
    Message: string
end

local record GatewayTimeoutException
    Message: string
end

local record InternalServerErrorException
    Message: string
end

local record TooManyRequestsException
    Message: string
end

local record BadGatewayException
    Message: string
end

local record BadRequestException
    Message: string
end

local record ConflictException
    Message: string
end

local record ForbiddenException
    Message: string
end

local record GatewayTimeoutException
    Message: string
end

local record InternalServerErrorException
    Message: string
end

local record TooManyRequestsException
    Message: string
end

local record UnprocessableEntityException
    Message: string
    ValidationErrors: {ValidationError}
end

local record BadGatewayException
    Message: string
end

local record BadRequestException
    Message: string
end

local record ConflictException
    Message: string
end

local record ForbiddenException
    Message: string
end

local record GatewayTimeoutException
    Message: string
end

local record InternalServerErrorException
    Message: string
end

local record TooManyRequestsException
    Message: string
end

local record UnprocessableEntityException
    Message: string
    ValidationErrors: {ValidationError}
end

local record BadGatewayException
    Message: string
end

local record BadRequestException
    Message: string
end

local record ConflictException
    Message: string
end

local record ForbiddenException
    Message: string
end

local record GatewayTimeoutException
    Message: string
end

local record InternalServerErrorException
    Message: string
end

local record TooManyRequestsException
    Message: string
end

local record BadGatewayException
    Message: string
end

local record BadRequestException
    Message: string
end

local record ForbiddenException
    Message: string
end

local record GatewayTimeoutException
    Message: string
end

local record InternalServerErrorException
    Message: string
end

local record TooManyRequestsException
    Message: string
end

local record UnprocessableEntityException
    Message: string
    ValidationErrors: {ValidationError}
end

local record BadGatewayException
    Message: string
end

local record BadRequestException
    Message: string
end

local record ConflictException
    Message: string
end

local record ForbiddenException
    Message: string
end

local record GatewayTimeoutException
    Message: string
end

local record InternalServerErrorException
    Message: string
end

local record TooManyRequestsException
    Message: string
end

local record BadGatewayException
    Message: string
end

local record BadRequestException
    Message: string
end

local record ForbiddenException
    Message: string
end

local record GatewayTimeoutException
    Message: string
end

local record InternalServerErrorException
    Message: string
end

local record TooManyRequestsException
    Message: string
end

local record BadGatewayException
    Message: string
end

local record BadRequestException
    Message: string
end

local record ConflictException
    Message: string
end

local record ForbiddenException
    Message: string
end

local record GatewayTimeoutException
    Message: string
end

local record InternalServerErrorException
    Message: string
end

local record TooManyRequestsException
    Message: string
end

local record BadRequestException
    Message: string
end

local record ConflictException
    Message: string
end

local record ForbiddenException
    Message: string
end

local record InternalServerErrorException
    Message: string
end

local record NotFoundException
    Message: string
end

local record TooManyRequestsException
    Message: string
end

local record BadRequestException
    Message: string
end

local record ForbiddenException
    Message: string
end

local record InternalServerErrorException
    Message: string
end

local record NotFoundException
    Message: string
end

local record BadGatewayException
    Message: string
end

local record BadRequestException
    Message: string
end

local record ConflictException
    Message: string
end

local record ForbiddenException
    Message: string
end

local record GatewayTimeoutException
    Message: string
end

local record InternalServerErrorException
    Message: string
end

local record NotFoundException
    Message: string
end

local record TooManyRequestsException
    Message: string
end

local record BadGatewayException
    Message: string
end

local record BadRequestException
    Message: string
end

local record ConflictException
    Message: string
end

local record ForbiddenException
    Message: string
end

local record GatewayTimeoutException
    Message: string
end

local record InternalServerErrorException
    Message: string
end

local record NotFoundException
    Message: string
end

local record TooManyRequestsException
    Message: string
end

local record BadRequestException
    Message: string
end

local record ConflictException
    Message: string
end

local record ForbiddenException
    Message: string
end

local record InternalServerErrorException
    Message: string
end

local record NotFoundException
    Message: string
end

local record TooManyRequestsException
    Message: string
end

local record BadRequestException
    Message: string
end

local record ConflictException
    Message: string
end

local record ForbiddenException
    Message: string
end

local record InternalServerErrorException
    Message: string
end

local record NotFoundException
    Message: string
end

local record TooManyRequestsException
    Message: string
end

local record BadGatewayException
    Message: string
end

local record BadRequestException
    Message: string
end

local record ConflictException
    Message: string
end

local record ForbiddenException
    Message: string
end

local record GatewayTimeoutException
    Message: string
end

local record InternalServerErrorException
    Message: string
end

local record NotFoundException
    Message: string
end

local record TooManyRequestsException
    Message: string
end

local record BadRequestException
    Message: string
end

local record ConflictException
    Message: string
end

local record ForbiddenException
    Message: string
end

local record InternalServerErrorException
    Message: string
end

local record NotFoundException
    Message: string
end

local record TooManyRequestsException
    Message: string
end

local record BadRequestException
    Message: string
end

local record ConflictException
    Message: string
end

local record ForbiddenException
    Message: string
end

local record InternalServerErrorException
    Message: string
end

local record NotFoundException
    Message: string
end

local record TooManyRequestsException
    Message: string
end

local record BadGatewayException
    Message: string
end

local record BadRequestException
    Message: string
end

local record ConflictException
    Message: string
end

local record ForbiddenException
    Message: string
end

local record GatewayTimeoutException
    Message: string
end

local record InternalServerErrorException
    Message: string
end

local record NotFoundException
    Message: string
end

local record TooManyRequestsException
    Message: string
end

local record BadGatewayException
    Message: string
end

local record BadRequestException
    Message: string
end

local record ForbiddenException
    Message: string
end

local record GatewayTimeoutException
    Message: string
end

local record InternalServerErrorException
    Message: string
end

local record NotFoundException
    Message: string
end

local record TooManyRequestsException
    Message: string
end

local record BadGatewayException
    Message: string
end

local record BadRequestException
    Message: string
end

local record ConflictException
    Message: string
end

local record ForbiddenException
    Message: string
end

local record GatewayTimeoutException
    Message: string
end

local record InternalServerErrorException
    Message: string
end

local record NotFoundException
    Message: string
end

local record TooManyRequestsException
    Message: string
end

local record BadGatewayException
    Message: string
end

local record BadRequestException
    Message: string
end

local record ConflictException
    Message: string
end

local record ForbiddenException
    Message: string
end

local record GatewayTimeoutException
    Message: string
end

local record InternalServerErrorException
    Message: string
end

local record NotFoundException
    Message: string
end

local record TooManyRequestsException
    Message: string
end

local record BadGatewayException
    Message: string
end

local record BadRequestException
    Message: string
end

local record ConflictException
    Message: string
end

local record ForbiddenException
    Message: string
end

local record GatewayTimeoutException
    Message: string
end

local record InternalServerErrorException
    Message: string
end

local record NotFoundException
    Message: string
end

local record TooManyRequestsException
    Message: string
end

local record BadGatewayException
    Message: string
end

local record BadRequestException
    Message: string
end

local record ConflictException
    Message: string
end

local record ForbiddenException
    Message: string
end

local record GatewayTimeoutException
    Message: string
end

local record InternalServerErrorException
    Message: string
end

local record NotFoundException
    Message: string
end

local record TooManyRequestsException
    Message: string
end

local record BadGatewayException
    Message: string
end

local record BadRequestException
    Message: string
end

local record ConflictException
    Message: string
end

local record ForbiddenException
    Message: string
end

local record GatewayTimeoutException
    Message: string
end

local record InternalServerErrorException
    Message: string
end

local record NotFoundException
    Message: string
end

local record TooManyRequestsException
    Message: string
end

local record BadGatewayException
    Message: string
end

local record BadRequestException
    Message: string
end

local record ForbiddenException
    Message: string
end

local record GatewayTimeoutException
    Message: string
end

local record InternalServerErrorException
    Message: string
end

local record NotFoundException
    Message: string
end

local record TooManyRequestsException
    Message: string
end

local record BadGatewayException
    Message: string
end

local record BadRequestException
    Message: string
end

local record ConflictException
    Message: string
end

local record ForbiddenException
    Message: string
end

local record GatewayTimeoutException
    Message: string
end

local record InternalServerErrorException
    Message: string
end

local record NotFoundException
    Message: string
end

local record TooManyRequestsException
    Message: string
end

local record BadRequestException
    Message: string
end

local record ConflictException
    Message: string
end

local record ForbiddenException
    Message: string
end

local record InternalServerErrorException
    Message: string
end

local record NotFoundException
    Message: string
end

local record TooManyRequestsException
    Message: string
end

local record BadRequestException
    Message: string
end

local record ForbiddenException
    Message: string
end

local record InternalServerErrorException
    Message: string
end

local record NotFoundException
    Message: string
end

local record BadGatewayException
    Message: string
end

local record BadRequestException
    Message: string
end

local record ForbiddenException
    Message: string
end

local record GatewayTimeoutException
    Message: string
end

local record InternalServerErrorException
    Message: string
end

local record TooManyRequestsException
    Message: string
end

local record BadGatewayException
    Message: string
end

local record BadRequestException
    Message: string
end

local record ForbiddenException
    Message: string
end

local record GatewayTimeoutException
    Message: string
end

local record InternalServerErrorException
    Message: string
end

local record NotFoundException
    Message: string
end

local record TooManyRequestsException
    Message: string
end

local record BadGatewayException
    Message: string
end

local record BadRequestException
    Message: string
end

local record ForbiddenException
    Message: string
end

local record GatewayTimeoutException
    Message: string
end

local record InternalServerErrorException
    Message: string
end

local record NotFoundException
    Message: string
end

local record TooManyRequestsException
    Message: string
end

local record BadGatewayException
    Message: string
end

local record BadRequestException
    Message: string
end

local record ForbiddenException
    Message: string
end

local record GatewayTimeoutException
    Message: string
end

local record InternalServerErrorException
    Message: string
end

local record NotFoundException
    Message: string
end

local record TooManyRequestsException
    Message: string
end

local record BadGatewayException
    Message: string
end

local record BadRequestException
    Message: string
end

local record ForbiddenException
    Message: string
end

local record GatewayTimeoutException
    Message: string
end

local record InternalServerErrorException
    Message: string
end

local record NotFoundException
    Message: string
end

local record TooManyRequestsException
    Message: string
end

local record BadGatewayException
    Message: string
end

local record BadRequestException
    Message: string
end

local record ForbiddenException
    Message: string
end

local record GatewayTimeoutException
    Message: string
end

local record InternalServerErrorException
    Message: string
end

local record NotFoundException
    Message: string
end

local record TooManyRequestsException
    Message: string
end

local record BadGatewayException
    Message: string
end

local record BadRequestException
    Message: string
end

local record ForbiddenException
    Message: string
end

local record GatewayTimeoutException
    Message: string
end

local record InternalServerErrorException
    Message: string
end

local record NotFoundException
    Message: string
end

local record TooManyRequestsException
    Message: string
end

local record BadGatewayException
    Message: string
end

local record BadRequestException
    Message: string
end

local record ForbiddenException
    Message: string
end

local record GatewayTimeoutException
    Message: string
end

local record InternalServerErrorException
    Message: string
end

local record NotFoundException
    Message: string
end

local record TooManyRequestsException
    Message: string
end

local record BadGatewayException
    Message: string
end

local record BadRequestException
    Message: string
end

local record ForbiddenException
    Message: string
end

local record GatewayTimeoutException
    Message: string
end

local record InternalServerErrorException
    Message: string
end

local record NotFoundException
    Message: string
end

local record TooManyRequestsException
    Message: string
end

local record BadGatewayException
    Message: string
end

local record BadRequestException
    Message: string
end

local record ForbiddenException
    Message: string
end

local record GatewayTimeoutException
    Message: string
end

local record InternalServerErrorException
    Message: string
end

local record NotFoundException
    Message: string
end

local record TooManyRequestsException
    Message: string
end

local record BadGatewayException
    Message: string
end

local record BadRequestException
    Message: string
end

local record ForbiddenException
    Message: string
end

local record GatewayTimeoutException
    Message: string
end

local record InternalServerErrorException
    Message: string
end

local record NotFoundException
    Message: string
end

local record TooManyRequestsException
    Message: string
end

local record BadGatewayException
    Message: string
end

local record BadRequestException
    Message: string
end

local record ForbiddenException
    Message: string
end

local record GatewayTimeoutException
    Message: string
end

local record InternalServerErrorException
    Message: string
end

local record NotFoundException
    Message: string
end

local record TooManyRequestsException
    Message: string
end

local record BadGatewayException
    Message: string
end

local record BadRequestException
    Message: string
end

local record ForbiddenException
    Message: string
end

local record GatewayTimeoutException
    Message: string
end

local record InternalServerErrorException
    Message: string
end

local record NotFoundException
    Message: string
end

local record TooManyRequestsException
    Message: string
end

local record BadGatewayException
    Message: string
end

local record BadRequestException
    Message: string
end

local record ForbiddenException
    Message: string
end

local record GatewayTimeoutException
    Message: string
end

local record InternalServerErrorException
    Message: string
end

local record NotFoundException
    Message: string
end

local record TooManyRequestsException
    Message: string
end

local record BadGatewayException
    Message: string
end

local record BadRequestException
    Message: string
end

local record ForbiddenException
    Message: string
end

local record GatewayTimeoutException
    Message: string
end

local record InternalServerErrorException
    Message: string
end

local record NotFoundException
    Message: string
end

local record TooManyRequestsException
    Message: string
end

local record BadGatewayException
    Message: string
end

local record BadRequestException
    Message: string
end

local record ForbiddenException
    Message: string
end

local record GatewayTimeoutException
    Message: string
end

local record InternalServerErrorException
    Message: string
end

local record NotFoundException
    Message: string
end

local record TooManyRequestsException
    Message: string
end

local record BadGatewayException
    Message: string
end

local record BadRequestException
    Message: string
end

local record ConflictException
    Message: string
end

local record ForbiddenException
    Message: string
end

local record GatewayTimeoutException
    Message: string
end

local record InternalServerErrorException
    Message: string
end

local record NotFoundException
    Message: string
end

local record TooManyRequestsException
    Message: string
end

local record BadRequestException
    Message: string
end

local record ForbiddenException
    Message: string
end

local record InternalServerErrorException
    Message: string
end

local record NotFoundException
    Message: string
end

local record TooManyRequestsException
    Message: string
end

local record BadRequestException
    Message: string
end

local record ForbiddenException
    Message: string
end

local record InternalServerErrorException
    Message: string
end

local record NotFoundException
    Message: string
end

local record TooManyRequestsException
    Message: string
end

local record BadRequestException
    Message: string
end

local record ForbiddenException
    Message: string
end

local record InternalServerErrorException
    Message: string
end

local record NotFoundException
    Message: string
end

local record TooManyRequestsException
    Message: string
end

local record BadRequestException
    Message: string
end

local record ForbiddenException
    Message: string
end

local record InternalServerErrorException
    Message: string
end

local record NotFoundException
    Message: string
end

local record TooManyRequestsException
    Message: string
end

local record BadRequestException
    Message: string
end

local record ForbiddenException
    Message: string
end

local record InternalServerErrorException
    Message: string
end

local record NotFoundException
    Message: string
end

local record TooManyRequestsException
    Message: string
end

local record BadGatewayException
    Message: string
end

local record BadRequestException
    Message: string
end

local record ForbiddenException
    Message: string
end

local record GatewayTimeoutException
    Message: string
end

local record InternalServerErrorException
    Message: string
end

local record NotFoundException
    Message: string
end

local record TooManyRequestsException
    Message: string
end

local record BadGatewayException
    Message: string
end

local record BadRequestException
    Message: string
end

local record ForbiddenException
    Message: string
end

local record GatewayTimeoutException
    Message: string
end

local record InternalServerErrorException
    Message: string
end

local record TooManyRequestsException
    Message: string
end

local record BadGatewayException
    Message: string
end

local record BadRequestException
    Message: string
end

local record ForbiddenException
    Message: string
end

local record GatewayTimeoutException
    Message: string
end

local record InternalServerErrorException
    Message: string
end

local record TooManyRequestsException
    Message: string
end

local record BadRequestException
    Message: string
end

local record ForbiddenException
    Message: string
end

local record InternalServerErrorException
    Message: string
end

local record NotFoundException
    Message: string
end

local record TooManyRequestsException
    Message: string
end

local record BadRequestException
    Message: string
end

local record ForbiddenException
    Message: string
end

local record InternalServerErrorException
    Message: string
end

local record NotFoundException
    Message: string
end

local record TooManyRequestsException
    Message: string
end

local record BadGatewayException
    Message: string
end

local record BadRequestException
    Message: string
end

local record ForbiddenException
    Message: string
end

local record GatewayTimeoutException
    Message: string
end

local record InternalServerErrorException
    Message: string
end

local record NotFoundException
    Message: string
end

local record TooManyRequestsException
    Message: string
end

local record BadGatewayException
    Message: string
end

local record BadRequestException
    Message: string
end

local record ForbiddenException
    Message: string
end

local record GatewayTimeoutException
    Message: string
end

local record InternalServerErrorException
    Message: string
end

local record TooManyRequestsException
    Message: string
end

local record BadRequestException
    Message: string
end

local record ForbiddenException
    Message: string
end

local record InternalServerErrorException
    Message: string
end

local record NotFoundException
    Message: string
end

local record TooManyRequestsException
    Message: string
end

local record BadRequestException
    Message: string
end

local record ForbiddenException
    Message: string
end

local record InternalServerErrorException
    Message: string
end

local record NotFoundException
    Message: string
end

local record TooManyRequestsException
    Message: string
end

local record BadGatewayException
    Message: string
end

local record BadRequestException
    Message: string
end

local record ForbiddenException
    Message: string
end

local record GatewayTimeoutException
    Message: string
end

local record InternalServerErrorException
    Message: string
end

local record TooManyRequestsException
    Message: string
end

local record BadGatewayException
    Message: string
end

local record BadRequestException
    Message: string
end

local record ForbiddenException
    Message: string
end

local record GatewayTimeoutException
    Message: string
end

local record InternalServerErrorException
    Message: string
end

local record TooManyRequestsException
    Message: string
end

local record UnprocessableEntityException
    Message: string
    ValidationErrors: {ValidationError}
end

local record BadGatewayException
    Message: string
end

local record BadRequestException
    Message: string
end

local record ForbiddenException
    Message: string
end

local record GatewayTimeoutException
    Message: string
end

local record InternalServerErrorException
    Message: string
end

local record TooManyRequestsException
    Message: string
end

local record BadGatewayException
    Message: string
end

local record BadRequestException
    Message: string
end

local record ForbiddenException
    Message: string
end

local record GatewayTimeoutException
    Message: string
end

local record InternalServerErrorException
    Message: string
end

local record TooManyRequestsException
    Message: string
end

local record BadGatewayException
    Message: string
end

local record BadRequestException
    Message: string
end

local record ForbiddenException
    Message: string
end

local record GatewayTimeoutException
    Message: string
end

local record InternalServerErrorException
    Message: string
end

local record NotFoundException
    Message: string
end

local record TooManyRequestsException
    Message: string
end

local record BadGatewayException
    Message: string
end

local record BadRequestException
    Message: string
end

local record ForbiddenException
    Message: string
end

local record GatewayTimeoutException
    Message: string
end

local record InternalServerErrorException
    Message: string
end

local record TooManyRequestsException
    Message: string
end

local record BadGatewayException
    Message: string
end

local record BadRequestException
    Message: string
end

local record ForbiddenException
    Message: string
end

local record GatewayTimeoutException
    Message: string
end

local record InternalServerErrorException
    Message: string
end

local record NotFoundException
    Message: string
end

local record TooManyRequestsException
    Message: string
end

local record BadGatewayException
    Message: string
end

local record BadRequestException
    Message: string
end

local record ForbiddenException
    Message: string
end

local record GatewayTimeoutException
    Message: string
end

local record InternalServerErrorException
    Message: string
end

local record TooManyRequestsException
    Message: string
end

local record BadGatewayException
    Message: string
end

local record BadRequestException
    Message: string
end

local record ForbiddenException
    Message: string
end

local record GatewayTimeoutException
    Message: string
end

local record InternalServerErrorException
    Message: string
end

local record TooManyRequestsException
    Message: string
end

local record BadGatewayException
    Message: string
end

local record BadRequestException
    Message: string
end

local record ForbiddenException
    Message: string
end

local record GatewayTimeoutException
    Message: string
end

local record InternalServerErrorException
    Message: string
end

local record TooManyRequestsException
    Message: string
end

local record BadGatewayException
    Message: string
end

local record BadRequestException
    Message: string
end

local record ForbiddenException
    Message: string
end

local record GatewayTimeoutException
    Message: string
end

local record InternalServerErrorException
    Message: string
end

local record TooManyRequestsException
    Message: string
end

local record BadGatewayException
    Message: string
end

local record BadRequestException
    Message: string
end

local record ForbiddenException
    Message: string
end

local record GatewayTimeoutException
    Message: string
end

local record InternalServerErrorException
    Message: string
end

local record TooManyRequestsException
    Message: string
end

local record BadRequestException
    Message: string
end

local record ForbiddenException
    Message: string
end

local record InternalServerErrorException
    Message: string
end

local record NotFoundException
    Message: string
end

local record TooManyRequestsException
    Message: string
end

local record BadRequestException
    Message: string
end

local record ForbiddenException
    Message: string
end

local record InternalServerErrorException
    Message: string
end

local record NotFoundException
    Message: string
end

local record BadGatewayException
    Message: string
end

local record BadRequestException
    Message: string
end

local record ConflictException
    Message: string
end

local record ForbiddenException
    Message: string
end

local record GatewayTimeoutException
    Message: string
end

local record InternalServerErrorException
    Message: string
end

local record NotFoundException
    Message: string
end

local record TooManyRequestsException
    Message: string
end

local record BadGatewayException
    Message: string
end

local record BadRequestException
    Message: string
end

local record ConflictException
    Message: string
end

local record ForbiddenException
    Message: string
end

local record GatewayTimeoutException
    Message: string
end

local record InternalServerErrorException
    Message: string
end

local record NotFoundException
    Message: string
end

local record TooManyRequestsException
    Message: string
end

local record BadGatewayException
    Message: string
end

local record BadRequestException
    Message: string
end

local record ForbiddenException
    Message: string
end

local record GatewayTimeoutException
    Message: string
end

local record InternalServerErrorException
    Message: string
end

local record NotFoundException
    Message: string
end

local record TooManyRequestsException
    Message: string
end

local record UnprocessableEntityException
    Message: string
    ValidationErrors: {ValidationError}
end

local record BadGatewayException
    Message: string
end

local record BadRequestException
    Message: string
end

local record ConflictException
    Message: string
end

local record ForbiddenException
    Message: string
end

local record GatewayTimeoutException
    Message: string
end

local record InternalServerErrorException
    Message: string
end

local record NotFoundException
    Message: string
end

local record TooManyRequestsException
    Message: string
end

local record UnprocessableEntityException
    Message: string
    ValidationErrors: {ValidationError}
end

local record BadGatewayException
    Message: string
end

local record BadRequestException
    Message: string
end

local record ConflictException
    Message: string
end

local record ForbiddenException
    Message: string
end

local record GatewayTimeoutException
    Message: string
end

local record InternalServerErrorException
    Message: string
end

local record NotFoundException
    Message: string
end

local record TooManyRequestsException
    Message: string
end

local record BadGatewayException
    Message: string
end

local record BadRequestException
    Message: string
end

local record ConflictException
    Message: string
end

local record ForbiddenException
    Message: string
end

local record GatewayTimeoutException
    Message: string
end

local record InternalServerErrorException
    Message: string
end

local record NotFoundException
    Message: string
end

local record TooManyRequestsException
    Message: string
end

local record BadRequestException
    Message: string
end

local record ConflictException
    Message: string
end

local record ForbiddenException
    Message: string
end

local record InternalServerErrorException
    Message: string
end

local record NotFoundException
    Message: string
end

local record TooManyRequestsException
    Message: string
end

local record BadGatewayException
    Message: string
end

local record BadRequestException
    Message: string
end

local record ForbiddenException
    Message: string
end

local record GatewayTimeoutException
    Message: string
end

local record InternalServerErrorException
    Message: string
end

local record NotFoundException
    Message: string
end

local record TooManyRequestsException
    Message: string
end

local record UnprocessableEntityException
    Message: string
    ValidationErrors: {ValidationError}
end

local record BadGatewayException
    Message: string
end

local record BadRequestException
    Message: string
end

local record ForbiddenException
    Message: string
end

local record GatewayTimeoutException
    Message: string
end

local record InternalServerErrorException
    Message: string
end

local record NotFoundException
    Message: string
end

local record TooManyRequestsException
    Message: string
end

local record UnprocessableEntityException
    Message: string
    ValidationErrors: {ValidationError}
end

local record BadRequestException
    Message: string
end

local record ConflictException
    Message: string
end

local record ForbiddenException
    Message: string
end

local record InternalServerErrorException
    Message: string
end

local record NotFoundException
    Message: string
end

local record TooManyRequestsException
    Message: string
end

local record BadGatewayException
    Message: string
end

local record BadRequestException
    Message: string
end

local record ConflictException
    Message: string
end

local record ForbiddenException
    Message: string
end

local record GatewayTimeoutException
    Message: string
end

local record InternalServerErrorException
    Message: string
end

local record NotFoundException
    Message: string
end

local record TooManyRequestsException
    Message: string
end

local record BadRequestException
    Message: string
end

local record ConflictException
    Message: string
end

local record ForbiddenException
    Message: string
end

local record InternalServerErrorException
    Message: string
end

local record NotFoundException
    Message: string
end

local record TooManyRequestsException
    Message: string
end

local record BadGatewayException
    Message: string
end

local record BadRequestException
    Message: string
end

local record ConflictException
    Message: string
end

local record ForbiddenException
    Message: string
end

local record GatewayTimeoutException
    Message: string
end

local record InternalServerErrorException
    Message: string
end

local record NotFoundException
    Message: string
end

local record TooManyRequestsException
    Message: string
end

local record BadGatewayException
    Message: string
end

local record BadRequestException
    Message: string
end

local record ForbiddenException
    Message: string
end

local record GatewayTimeoutException
    Message: string
end

local record InternalServerErrorException
    Message: string
end

local record NotFoundException
    Message: string
end

local record TooManyRequestsException
    Message: string
end

local record UnprocessableEntityException
    Message: string
    ValidationErrors: {ValidationError}
end

local record BadGatewayException
    Message: string
end

local record BadRequestException
    Message: string
end

local record ConflictException
    Message: string
end

local record ForbiddenException
    Message: string
end

local record GatewayTimeoutException
    Message: string
end

local record InternalServerErrorException
    Message: string
end

local record NotFoundException
    Message: string
end

local record TooManyRequestsException
    Message: string
end

local record BadGatewayException
    Message: string
end

local record BadRequestException
    Message: string
end

local record ConflictException
    Message: string
end

local record ForbiddenException
    Message: string
end

local record GatewayTimeoutException
    Message: string
end

local record InternalServerErrorException
    Message: string
end

local record NotFoundException
    Message: string
end

local record TooManyRequestsException
    Message: string
end

local record UnprocessableEntityException
    Message: string
    ValidationErrors: {ValidationError}
end

local record BadGatewayException
    Message: string
end

local record BadRequestException
    Message: string
end

local record ForbiddenException
    Message: string
end

local record GatewayTimeoutException
    Message: string
end

local record InternalServerErrorException
    Message: string
end

local record TooManyRequestsException
    Message: string
end

local record UnprocessableEntityException
    Message: string
    ValidationErrors: {ValidationError}
end

local record BadGatewayException
    Message: string
end

local record BadRequestException
    Message: string
end

local record ConflictException
    Message: string
end

local record ForbiddenException
    Message: string
end

local record GatewayTimeoutException
    Message: string
end

local record InternalServerErrorException
    Message: string
end

local record UnprocessableEntityException
    Message: string
    ValidationErrors: {ValidationError}
end

local record BadGatewayException
    Message: string
end

local record BadRequestException
    Message: string
end

local record ConflictException
    Message: string
end

local record ForbiddenException
    Message: string
end

local record GatewayTimeoutException
    Message: string
end

local record InternalServerErrorException
    Message: string
end

local record NotFoundException
    Message: string
end

local record TooManyRequestsException
    Message: string
end

local record UnprocessableEntityException
    Message: string
    ValidationErrors: {ValidationError}
end

local record BadGatewayException
    Message: string
end

local record BadRequestException
    Message: string
end

local record ConflictException
    Message: string
end

local record ForbiddenException
    Message: string
end

local record GatewayTimeoutException
    Message: string
end

local record InternalServerErrorException
    Message: string
end

local record TooManyRequestsException
    Message: string
end

local record UnprocessableEntityException
    Message: string
    ValidationErrors: {ValidationError}
end

local record BadRequestException
    Message: string
end

local record ConflictException
    Message: string
end

local record ForbiddenException
    Message: string
end

local record InternalServerErrorException
    Message: string
end

local record NotFoundException
    Message: string
end

local record TooManyRequestsException
    Message: string
end

local record BadRequestException
    Message: string
end

local record ConflictException
    Message: string
end

local record ForbiddenException
    Message: string
end

local record InternalServerErrorException
    Message: string
end

local record NotFoundException
    Message: string
end

local record TooManyRequestsException
    Message: string
end

local record BadGatewayException
    Message: string
end

local record BadRequestException
    Message: string
end

local record ConflictException
    Message: string
end

local record ForbiddenException
    Message: string
end

local record GatewayTimeoutException
    Message: string
end

local record InternalServerErrorException
    Message: string
end

local record TooManyRequestsException
    Message: string
end

local record BadRequestException
    Message: string
end

local record ConflictException
    Message: string
end

local record ForbiddenException
    Message: string
end

local record InternalServerErrorException
    Message: string
end

local record NotFoundException
    Message: string
end

local record TooManyRequestsException
    Message: string
end

local record BadRequestException
    Message: string
end

local record ConflictException
    Message: string
end

local record ForbiddenException
    Message: string
end

local record InternalServerErrorException
    Message: string
end

local record NotFoundException
    Message: string
end

local record TooManyRequestsException
    Message: string
end

local record BadGatewayException
    Message: string
end

local record BadRequestException
    Message: string
end

local record ConflictException
    Message: string
end

local record ForbiddenException
    Message: string
end

local record GatewayTimeoutException
    Message: string
end

local record InternalServerErrorException
    Message: string
end

local record NotFoundException
    Message: string
end

local record BadGatewayException
    Message: string
end

local record BadRequestException
    Message: string
end

local record ForbiddenException
    Message: string
end

local record GatewayTimeoutException
    Message: string
end

local record InternalServerErrorException
    Message: string
end

local record NotFoundException
    Message: string
end

local record TooManyRequestsException
    Message: string
end

local record UnprocessableEntityException
    Message: string
    ValidationErrors: {ValidationError}
end

local record BadGatewayException
    Message: string
end

local record BadRequestException
    Message: string
end

local record ConflictException
    Message: string
end

local record ForbiddenException
    Message: string
end

local record GatewayTimeoutException
    Message: string
end

local record InternalServerErrorException
    Message: string
end

local record NotFoundException
    Message: string
end

local record BadGatewayException
    Message: string
end

local record BadRequestException
    Message: string
end

local record ConflictException
    Message: string
end

local record ForbiddenException
    Message: string
end

local record GatewayTimeoutException
    Message: string
end

local record InternalServerErrorException
    Message: string
end

local record NotFoundException
    Message: string
end

local record UnprocessableEntityException
    Message: string
    ValidationErrors: {ValidationError}
end

local record BadGatewayException
    Message: string
end

local record BadRequestException
    Message: string
end

local record ConflictException
    Message: string
end

local record ForbiddenException
    Message: string
end

local record GatewayTimeoutException
    Message: string
end

local record InternalServerErrorException
    Message: string
end

local record NotFoundException
    Message: string
end

local record UnprocessableEntityException
    Message: string
    ValidationErrors: {ValidationError}
end

local record BadGatewayException
    Message: string
end

local record BadRequestException
    Message: string
end

local record ConflictException
    Message: string
end

local record ForbiddenException
    Message: string
end

local record GatewayTimeoutException
    Message: string
end

local record InternalServerErrorException
    Message: string
end

local record TooManyRequestsException
    Message: string
end

local record BadGatewayException
    Message: string
end

local record BadRequestException
    Message: string
end

local record ConflictException
    Message: string
end

local record ForbiddenException
    Message: string
end

local record GatewayTimeoutException
    Message: string
end

local record InternalServerErrorException
    Message: string
end

local record TooManyRequestsException
    Message: string
end

local record BadGatewayException
    Message: string
end

local record BadRequestException
    Message: string
end

local record ConflictException
    Message: string
end

local record ForbiddenException
    Message: string
end

local record GatewayTimeoutException
    Message: string
end

local record InternalServerErrorException
    Message: string
end

local record TooManyRequestsException
    Message: string
end

local record UnprocessableEntityException
    Message: string
    ValidationErrors: {ValidationError}
end

local record BadGatewayException
    Message: string
end

local record BadRequestException
    Message: string
end

local record ConflictException
    Message: string
end

local record ForbiddenException
    Message: string
end

local record GatewayTimeoutException
    Message: string
end

local record InternalServerErrorException
    Message: string
end

local record NotFoundException
    Message: string
end

local record TooManyRequestsException
    Message: string
end

local record BadGatewayException
    Message: string
end

local record BadRequestException
    Message: string
end

local record ConflictException
    Message: string
end

local record ForbiddenException
    Message: string
end

local record GatewayTimeoutException
    Message: string
end

local record InternalServerErrorException
    Message: string
end

local record TooManyRequestsException
    Message: string
end

local type NodeRole = "BACKUP" | "ACTIVE"

local type ChannelClass = "STANDARD" | "SINGLE_PIPELINE"

local type NetworkState = "CREATING" | "CREATE_FAILED" | "ACTIVE" | "DELETING" | "IDLE" | "IN_USE" | "UPDATING" | "DELETE_FAILED" | "DELETED"

local type InputState = "CREATING" | "DETACHED" | "ATTACHED" | "DELETING" | "DELETED"

local type InputDeviceType = "HD" | "UHD"

local type NodeConnectionState = "CONNECTED" | "DISCONNECTED"

local type AcceptHeader = "image/jpeg"

local type OfferingType = "NO_UPFRONT"

local type ClusterType = "ON_PREMISES"

local type CloudWatchAlarmTemplateStatistic = "SampleCount" | "Average" | "Sum" | "Minimum" | "Maximum"

local type SdiSourceMode = "QUADRANT" | "INTERLEAVE"

local type DeviceUpdateStatus = "UP_TO_DATE" | "NOT_UP_TO_DATE" | "UPDATING"

local type UpdateNodeStateShape = "ACTIVE" | "DRAINING"

local type SignalMapStatus = "CREATE_IN_PROGRESS" | "CREATE_COMPLETE" | "CREATE_FAILED" | "UPDATE_IN_PROGRESS" | "UPDATE_COMPLETE" | "UPDATE_REVERTED" | "UPDATE_FAILED" | "READY" | "NOT_READY"

local type InputSourceType = "STATIC" | "DYNAMIC"

local type ChannelPlacementGroupState = "UNASSIGNED" | "ASSIGNING" | "ASSIGNED" | "DELETING" | "DELETE_FAILED" | "DELETED" | "UNASSIGNING"

local type MultiplexState = "CREATING" | "CREATE_FAILED" | "IDLE" | "STARTING" | "RUNNING" | "RECOVERING" | "STOPPING" | "DELETING" | "DELETED"

local type DeviceSettingsSyncState = "SYNCED" | "SYNCING"

local type OfferingDurationUnits = "MONTHS"

local type InputClass = "STANDARD" | "SINGLE_PIPELINE"

local type ChannelState = "CREATING" | "CREATE_FAILED" | "IDLE" | "STARTING" | "RUNNING" | "RECOVERING" | "STOPPING" | "DELETING" | "DELETED" | "UPDATING" | "UPDATE_FAILED"

local type InputSecurityGroupState = "IDLE" | "IN_USE" | "UPDATING" | "DELETED"

local type InputDeviceConnectionState = "DISCONNECTED" | "CONNECTED"

local type ContentType = "image/jpeg"

local type EventBridgeRuleTemplateEventType = "MEDIALIVE_MULTIPLEX_ALERT" | "MEDIALIVE_MULTIPLEX_STATE_CHANGE" | "MEDIALIVE_CHANNEL_ALERT" | "MEDIALIVE_CHANNEL_INPUT_CHANGE" | "MEDIALIVE_CHANNEL_STATE_CHANGE" | "MEDIAPACKAGE_INPUT_NOTIFICATION" | "MEDIAPACKAGE_KEY_PROVIDER_NOTIFICATION" | "MEDIAPACKAGE_HARVEST_JOB_NOTIFICATION" | "SIGNAL_MAP_ACTIVE_ALARM" | "MEDIACONNECT_ALERT" | "MEDIACONNECT_SOURCE_HEALTH" | "MEDIACONNECT_OUTPUT_HEALTH" | "MEDIACONNECT_FLOW_STATUS_CHANGE"

local type SdiSourceType = "SINGLE" | "QUAD"

local type InputNetworkLocation = "AWS" | "ON_PREMISES"

local type CloudWatchAlarmTemplateTargetResourceType = "CLOUDFRONT_DISTRIBUTION" | "MEDIALIVE_MULTIPLEX" | "MEDIALIVE_CHANNEL" | "MEDIALIVE_INPUT_DEVICE" | "MEDIAPACKAGE_CHANNEL" | "MEDIAPACKAGE_ORIGIN_ENDPOINT" | "MEDIACONNECT_FLOW" | "S3_BUCKET" | "MEDIATAILOR_PLAYBACK_CONFIGURATION"

local type CloudWatchAlarmTemplateTreatMissingData = "notBreaching" | "breaching" | "ignore" | "missing"

local type NodeState = "CREATED" | "REGISTERING" | "READY_TO_ACTIVATE" | "REGISTRATION_FAILED" | "ACTIVATION_FAILED" | "ACTIVE" | "READY" | "IN_USE" | "DEREGISTERING" | "DRAINING" | "DEREGISTRATION_FAILED" | "DEREGISTERED"

local type InputDeviceOutputType = "NONE" | "MEDIALIVE_INPUT" | "MEDIACONNECT_FLOW"

local type RebootInputDeviceForce = "NO" | "YES"

local type ClusterState = "CREATING" | "CREATE_FAILED" | "ACTIVE" | "DELETING" | "DELETE_FAILED" | "DELETED"

local type LogLevel = "ERROR" | "WARNING" | "INFO" | "DEBUG" | "DISABLED"

local type InputType = "UDP_PUSH" | "RTP_PUSH" | "RTMP_PUSH" | "RTMP_PULL" | "URL_PULL" | "MP4_FILE" | "MEDIACONNECT" | "INPUT_DEVICE" | "AWS_CDI" | "TS_FILE" | "SRT_CALLER" | "MULTICAST" | "SMPTE_2110_RECEIVER_GROUP" | "SDI" | "MEDIACONNECT_ROUTER" | "SRT_LISTENER"

local type ReservationState = "ACTIVE" | "EXPIRED" | "CANCELED" | "DELETED"

local type CloudWatchAlarmTemplateComparisonOperator = "GreaterThanOrEqualToThreshold" | "GreaterThanThreshold" | "LessThanThreshold" | "LessThanOrEqualToThreshold"

local record M
    AcceptInputDeviceTransferInput: AcceptInputDeviceTransferInput
    AcceptInputDeviceTransferOutput: AcceptInputDeviceTransferOutput
    BatchDeleteInput: BatchDeleteInput
    BatchDeleteOutput: BatchDeleteOutput
    BatchStartInput: BatchStartInput
    BatchStartOutput: BatchStartOutput
    BatchStopInput: BatchStopInput
    BatchStopOutput: BatchStopOutput
    BatchUpdateScheduleInput: BatchUpdateScheduleInput
    BatchUpdateScheduleOutput: BatchUpdateScheduleOutput
    CancelInputDeviceTransferInput: CancelInputDeviceTransferInput
    CancelInputDeviceTransferOutput: CancelInputDeviceTransferOutput
    ClaimDeviceInput: ClaimDeviceInput
    ClaimDeviceOutput: ClaimDeviceOutput
    CreateChannelInput: CreateChannelInput
    CreateChannelOutput: CreateChannelOutput
    CreateChannelPlacementGroupInput: CreateChannelPlacementGroupInput
    CreateChannelPlacementGroupOutput: CreateChannelPlacementGroupOutput
    CreateCloudWatchAlarmTemplateInput: CreateCloudWatchAlarmTemplateInput
    CreateCloudWatchAlarmTemplateOutput: CreateCloudWatchAlarmTemplateOutput
    CreateCloudWatchAlarmTemplateGroupInput: CreateCloudWatchAlarmTemplateGroupInput
    CreateCloudWatchAlarmTemplateGroupOutput: CreateCloudWatchAlarmTemplateGroupOutput
    CreateClusterInput: CreateClusterInput
    CreateClusterOutput: CreateClusterOutput
    CreateEventBridgeRuleTemplateInput: CreateEventBridgeRuleTemplateInput
    CreateEventBridgeRuleTemplateOutput: CreateEventBridgeRuleTemplateOutput
    CreateEventBridgeRuleTemplateGroupInput: CreateEventBridgeRuleTemplateGroupInput
    CreateEventBridgeRuleTemplateGroupOutput: CreateEventBridgeRuleTemplateGroupOutput
    CreateInputInput: CreateInputInput
    CreateInputOutput: CreateInputOutput
    CreateInputSecurityGroupInput: CreateInputSecurityGroupInput
    CreateInputSecurityGroupOutput: CreateInputSecurityGroupOutput
    CreateMultiplexInput: CreateMultiplexInput
    CreateMultiplexOutput: CreateMultiplexOutput
    CreateMultiplexProgramInput: CreateMultiplexProgramInput
    CreateMultiplexProgramOutput: CreateMultiplexProgramOutput
    CreateNetworkInput: CreateNetworkInput
    CreateNetworkOutput: CreateNetworkOutput
    CreateNodeInput: CreateNodeInput
    CreateNodeOutput: CreateNodeOutput
    CreateNodeRegistrationScriptInput: CreateNodeRegistrationScriptInput
    CreateNodeRegistrationScriptOutput: CreateNodeRegistrationScriptOutput
    CreatePartnerInputInput: CreatePartnerInputInput
    CreatePartnerInputOutput: CreatePartnerInputOutput
    CreateSdiSourceInput: CreateSdiSourceInput
    CreateSdiSourceOutput: CreateSdiSourceOutput
    CreateSignalMapInput: CreateSignalMapInput
    CreateSignalMapOutput: CreateSignalMapOutput
    CreateTagsInput: CreateTagsInput
    CreateTagsOutput: CreateTagsOutput
    DeleteChannelInput: DeleteChannelInput
    DeleteChannelOutput: DeleteChannelOutput
    DeleteChannelPlacementGroupInput: DeleteChannelPlacementGroupInput
    DeleteChannelPlacementGroupOutput: DeleteChannelPlacementGroupOutput
    DeleteCloudWatchAlarmTemplateInput: DeleteCloudWatchAlarmTemplateInput
    DeleteCloudWatchAlarmTemplateOutput: DeleteCloudWatchAlarmTemplateOutput
    DeleteCloudWatchAlarmTemplateGroupInput: DeleteCloudWatchAlarmTemplateGroupInput
    DeleteCloudWatchAlarmTemplateGroupOutput: DeleteCloudWatchAlarmTemplateGroupOutput
    DeleteClusterInput: DeleteClusterInput
    DeleteClusterOutput: DeleteClusterOutput
    DeleteEventBridgeRuleTemplateInput: DeleteEventBridgeRuleTemplateInput
    DeleteEventBridgeRuleTemplateOutput: DeleteEventBridgeRuleTemplateOutput
    DeleteEventBridgeRuleTemplateGroupInput: DeleteEventBridgeRuleTemplateGroupInput
    DeleteEventBridgeRuleTemplateGroupOutput: DeleteEventBridgeRuleTemplateGroupOutput
    DeleteInputInput: DeleteInputInput
    DeleteInputOutput: DeleteInputOutput
    DeleteInputSecurityGroupInput: DeleteInputSecurityGroupInput
    DeleteInputSecurityGroupOutput: DeleteInputSecurityGroupOutput
    DeleteMultiplexInput: DeleteMultiplexInput
    DeleteMultiplexOutput: DeleteMultiplexOutput
    DeleteMultiplexProgramInput: DeleteMultiplexProgramInput
    DeleteMultiplexProgramOutput: DeleteMultiplexProgramOutput
    DeleteNetworkInput: DeleteNetworkInput
    DeleteNetworkOutput: DeleteNetworkOutput
    DeleteNodeInput: DeleteNodeInput
    DeleteNodeOutput: DeleteNodeOutput
    DeleteReservationInput: DeleteReservationInput
    DeleteReservationOutput: DeleteReservationOutput
    DeleteScheduleInput: DeleteScheduleInput
    DeleteScheduleOutput: DeleteScheduleOutput
    DeleteSdiSourceInput: DeleteSdiSourceInput
    DeleteSdiSourceOutput: DeleteSdiSourceOutput
    DeleteSignalMapInput: DeleteSignalMapInput
    DeleteSignalMapOutput: DeleteSignalMapOutput
    DeleteTagsInput: DeleteTagsInput
    DeleteTagsOutput: DeleteTagsOutput
    DescribeAccountConfigurationInput: DescribeAccountConfigurationInput
    DescribeAccountConfigurationOutput: DescribeAccountConfigurationOutput
    DescribeChannelInput: DescribeChannelInput
    DescribeChannelOutput: DescribeChannelOutput
    DescribeChannelPlacementGroupInput: DescribeChannelPlacementGroupInput
    DescribeChannelPlacementGroupOutput: DescribeChannelPlacementGroupOutput
    DescribeClusterInput: DescribeClusterInput
    DescribeClusterOutput: DescribeClusterOutput
    DescribeInputInput: DescribeInputInput
    DescribeInputOutput: DescribeInputOutput
    DescribeInputDeviceInput: DescribeInputDeviceInput
    DescribeInputDeviceOutput: DescribeInputDeviceOutput
    DescribeInputDeviceThumbnailInput: DescribeInputDeviceThumbnailInput
    DescribeInputDeviceThumbnailOutput: DescribeInputDeviceThumbnailOutput
    DescribeInputSecurityGroupInput: DescribeInputSecurityGroupInput
    DescribeInputSecurityGroupOutput: DescribeInputSecurityGroupOutput
    DescribeMultiplexInput: DescribeMultiplexInput
    DescribeMultiplexOutput: DescribeMultiplexOutput
    DescribeMultiplexProgramInput: DescribeMultiplexProgramInput
    DescribeMultiplexProgramOutput: DescribeMultiplexProgramOutput
    DescribeNetworkInput: DescribeNetworkInput
    DescribeNetworkOutput: DescribeNetworkOutput
    DescribeNodeInput: DescribeNodeInput
    DescribeNodeOutput: DescribeNodeOutput
    DescribeOfferingInput: DescribeOfferingInput
    DescribeOfferingOutput: DescribeOfferingOutput
    DescribeReservationInput: DescribeReservationInput
    DescribeReservationOutput: DescribeReservationOutput
    DescribeScheduleInput: DescribeScheduleInput
    DescribeScheduleOutput: DescribeScheduleOutput
    DescribeSdiSourceInput: DescribeSdiSourceInput
    DescribeSdiSourceOutput: DescribeSdiSourceOutput
    DescribeThumbnailsInput: DescribeThumbnailsInput
    DescribeThumbnailsOutput: DescribeThumbnailsOutput
    GetCloudWatchAlarmTemplateInput: GetCloudWatchAlarmTemplateInput
    GetCloudWatchAlarmTemplateOutput: GetCloudWatchAlarmTemplateOutput
    GetCloudWatchAlarmTemplateGroupInput: GetCloudWatchAlarmTemplateGroupInput
    GetCloudWatchAlarmTemplateGroupOutput: GetCloudWatchAlarmTemplateGroupOutput
    GetEventBridgeRuleTemplateInput: GetEventBridgeRuleTemplateInput
    GetEventBridgeRuleTemplateOutput: GetEventBridgeRuleTemplateOutput
    GetEventBridgeRuleTemplateGroupInput: GetEventBridgeRuleTemplateGroupInput
    GetEventBridgeRuleTemplateGroupOutput: GetEventBridgeRuleTemplateGroupOutput
    GetSignalMapInput: GetSignalMapInput
    GetSignalMapOutput: GetSignalMapOutput
    ListAlertsInput: ListAlertsInput
    ListAlertsOutput: ListAlertsOutput
    ListChannelPlacementGroupsInput: ListChannelPlacementGroupsInput
    ListChannelPlacementGroupsOutput: ListChannelPlacementGroupsOutput
    ListChannelsInput: ListChannelsInput
    ListChannelsOutput: ListChannelsOutput
    ListCloudWatchAlarmTemplateGroupsInput: ListCloudWatchAlarmTemplateGroupsInput
    ListCloudWatchAlarmTemplateGroupsOutput: ListCloudWatchAlarmTemplateGroupsOutput
    ListCloudWatchAlarmTemplatesInput: ListCloudWatchAlarmTemplatesInput
    ListCloudWatchAlarmTemplatesOutput: ListCloudWatchAlarmTemplatesOutput
    ListClusterAlertsInput: ListClusterAlertsInput
    ListClusterAlertsOutput: ListClusterAlertsOutput
    ListClustersInput: ListClustersInput
    ListClustersOutput: ListClustersOutput
    ListEventBridgeRuleTemplateGroupsInput: ListEventBridgeRuleTemplateGroupsInput
    ListEventBridgeRuleTemplateGroupsOutput: ListEventBridgeRuleTemplateGroupsOutput
    ListEventBridgeRuleTemplatesInput: ListEventBridgeRuleTemplatesInput
    ListEventBridgeRuleTemplatesOutput: ListEventBridgeRuleTemplatesOutput
    ListInputDevicesInput: ListInputDevicesInput
    ListInputDevicesOutput: ListInputDevicesOutput
    ListInputDeviceTransfersInput: ListInputDeviceTransfersInput
    ListInputDeviceTransfersOutput: ListInputDeviceTransfersOutput
    ListInputsInput: ListInputsInput
    ListInputsOutput: ListInputsOutput
    ListInputSecurityGroupsInput: ListInputSecurityGroupsInput
    ListInputSecurityGroupsOutput: ListInputSecurityGroupsOutput
    ListMultiplexAlertsInput: ListMultiplexAlertsInput
    ListMultiplexAlertsOutput: ListMultiplexAlertsOutput
    ListMultiplexesInput: ListMultiplexesInput
    ListMultiplexesOutput: ListMultiplexesOutput
    ListMultiplexProgramsInput: ListMultiplexProgramsInput
    ListMultiplexProgramsOutput: ListMultiplexProgramsOutput
    ListNetworksInput: ListNetworksInput
    ListNetworksOutput: ListNetworksOutput
    ListNodesInput: ListNodesInput
    ListNodesOutput: ListNodesOutput
    ListOfferingsInput: ListOfferingsInput
    ListOfferingsOutput: ListOfferingsOutput
    ListReservationsInput: ListReservationsInput
    ListReservationsOutput: ListReservationsOutput
    ListSdiSourcesInput: ListSdiSourcesInput
    ListSdiSourcesOutput: ListSdiSourcesOutput
    ListSignalMapsInput: ListSignalMapsInput
    ListSignalMapsOutput: ListSignalMapsOutput
    ListTagsForResourceInput: ListTagsForResourceInput
    ListTagsForResourceOutput: ListTagsForResourceOutput
    ListVersionsInput: ListVersionsInput
    ListVersionsOutput: ListVersionsOutput
    PurchaseOfferingInput: PurchaseOfferingInput
    PurchaseOfferingOutput: PurchaseOfferingOutput
    RebootInputDeviceInput: RebootInputDeviceInput
    RebootInputDeviceOutput: RebootInputDeviceOutput
    RejectInputDeviceTransferInput: RejectInputDeviceTransferInput
    RejectInputDeviceTransferOutput: RejectInputDeviceTransferOutput
    RestartChannelPipelinesInput: RestartChannelPipelinesInput
    RestartChannelPipelinesOutput: RestartChannelPipelinesOutput
    StartChannelInput: StartChannelInput
    StartChannelOutput: StartChannelOutput
    StartDeleteMonitorDeploymentInput: StartDeleteMonitorDeploymentInput
    StartDeleteMonitorDeploymentOutput: StartDeleteMonitorDeploymentOutput
    StartInputDeviceInput: StartInputDeviceInput
    StartInputDeviceOutput: StartInputDeviceOutput
    StartInputDeviceMaintenanceWindowInput: StartInputDeviceMaintenanceWindowInput
    StartInputDeviceMaintenanceWindowOutput: StartInputDeviceMaintenanceWindowOutput
    StartMonitorDeploymentInput: StartMonitorDeploymentInput
    StartMonitorDeploymentOutput: StartMonitorDeploymentOutput
    StartMultiplexInput: StartMultiplexInput
    StartMultiplexOutput: StartMultiplexOutput
    StartUpdateSignalMapInput: StartUpdateSignalMapInput
    StartUpdateSignalMapOutput: StartUpdateSignalMapOutput
    StopChannelInput: StopChannelInput
    StopChannelOutput: StopChannelOutput
    StopInputDeviceInput: StopInputDeviceInput
    StopInputDeviceOutput: StopInputDeviceOutput
    StopMultiplexInput: StopMultiplexInput
    StopMultiplexOutput: StopMultiplexOutput
    TransferInputDeviceInput: TransferInputDeviceInput
    TransferInputDeviceOutput: TransferInputDeviceOutput
    UpdateAccountConfigurationInput: UpdateAccountConfigurationInput
    UpdateAccountConfigurationOutput: UpdateAccountConfigurationOutput
    UpdateChannelInput: UpdateChannelInput
    UpdateChannelOutput: UpdateChannelOutput
    UpdateChannelClassInput: UpdateChannelClassInput
    UpdateChannelClassOutput: UpdateChannelClassOutput
    UpdateChannelPlacementGroupInput: UpdateChannelPlacementGroupInput
    UpdateChannelPlacementGroupOutput: UpdateChannelPlacementGroupOutput
    UpdateCloudWatchAlarmTemplateInput: UpdateCloudWatchAlarmTemplateInput
    UpdateCloudWatchAlarmTemplateOutput: UpdateCloudWatchAlarmTemplateOutput
    UpdateCloudWatchAlarmTemplateGroupInput: UpdateCloudWatchAlarmTemplateGroupInput
    UpdateCloudWatchAlarmTemplateGroupOutput: UpdateCloudWatchAlarmTemplateGroupOutput
    UpdateClusterInput: UpdateClusterInput
    UpdateClusterOutput: UpdateClusterOutput
    UpdateEventBridgeRuleTemplateInput: UpdateEventBridgeRuleTemplateInput
    UpdateEventBridgeRuleTemplateOutput: UpdateEventBridgeRuleTemplateOutput
    UpdateEventBridgeRuleTemplateGroupInput: UpdateEventBridgeRuleTemplateGroupInput
    UpdateEventBridgeRuleTemplateGroupOutput: UpdateEventBridgeRuleTemplateGroupOutput
    UpdateInputInput: UpdateInputInput
    UpdateInputOutput: UpdateInputOutput
    UpdateInputDeviceInput: UpdateInputDeviceInput
    UpdateInputDeviceOutput: UpdateInputDeviceOutput
    UpdateInputSecurityGroupInput: UpdateInputSecurityGroupInput
    UpdateInputSecurityGroupOutput: UpdateInputSecurityGroupOutput
    UpdateMultiplexInput: UpdateMultiplexInput
    UpdateMultiplexOutput: UpdateMultiplexOutput
    UpdateMultiplexProgramInput: UpdateMultiplexProgramInput
    UpdateMultiplexProgramOutput: UpdateMultiplexProgramOutput
    UpdateNetworkInput: UpdateNetworkInput
    UpdateNetworkOutput: UpdateNetworkOutput
    UpdateNodeInput: UpdateNodeInput
    UpdateNodeOutput: UpdateNodeOutput
    UpdateNodeStateInput: UpdateNodeStateInput
    UpdateNodeStateOutput: UpdateNodeStateOutput
    UpdateReservationInput: UpdateReservationInput
    UpdateReservationOutput: UpdateReservationOutput
    UpdateSdiSourceInput: UpdateSdiSourceInput
    UpdateSdiSourceOutput: UpdateSdiSourceOutput
end

return M
