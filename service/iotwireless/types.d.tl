local record AssociateAwsAccountWithPartnerAccountInput
    Sidewalk: SidewalkAccountInfo
    ClientRequestToken: string
    Tags: {Tag}
end

local record AssociateAwsAccountWithPartnerAccountOutput
    Sidewalk: SidewalkAccountInfo
    Arn: string
end

local record AssociateMulticastGroupWithFuotaTaskInput
    Id: string
    MulticastGroupId: string
end

local record AssociateMulticastGroupWithFuotaTaskOutput
end

local record AssociateWirelessDeviceWithFuotaTaskInput
    Id: string
    WirelessDeviceId: string
end

local record AssociateWirelessDeviceWithFuotaTaskOutput
end

local record AssociateWirelessDeviceWithMulticastGroupInput
    Id: string
    WirelessDeviceId: string
end

local record AssociateWirelessDeviceWithMulticastGroupOutput
end

local record AssociateWirelessDeviceWithThingInput
    Id: string
    ThingArn: string
end

local record AssociateWirelessDeviceWithThingOutput
end

local record AssociateWirelessGatewayWithCertificateInput
    Id: string
    IotCertificateId: string
end

local record AssociateWirelessGatewayWithCertificateOutput
    IotCertificateId: string
end

local record AssociateWirelessGatewayWithThingInput
    Id: string
    ThingArn: string
end

local record AssociateWirelessGatewayWithThingOutput
end

local record CancelMulticastGroupSessionInput
    Id: string
end

local record CancelMulticastGroupSessionOutput
end

local record CreateDestinationInput
    Name: string
    ExpressionType: string
    Expression: string
    Description: string
    RoleArn: string
    Tags: {Tag}
    ClientRequestToken: string
end

local record CreateDestinationOutput
    Arn: string
    Name: string
end

local record CreateDeviceProfileInput
    Name: string
    LoRaWAN: LoRaWANDeviceProfile
    Tags: {Tag}
    ClientRequestToken: string
    Sidewalk: SidewalkCreateDeviceProfile
end

local record CreateDeviceProfileOutput
    Arn: string
    Id: string
end

local record CreateFuotaTaskInput
    Name: string
    Description: string
    ClientRequestToken: string
    LoRaWAN: LoRaWANFuotaTask
    FirmwareUpdateImage: string
    FirmwareUpdateRole: string
    Tags: {Tag}
    RedundancyPercent: number
    FragmentSizeBytes: number
    FragmentIntervalMS: number
    Descriptor: string
end

local record CreateFuotaTaskOutput
    Arn: string
    Id: string
end

local record CreateMulticastGroupInput
    Name: string
    Description: string
    ClientRequestToken: string
    LoRaWAN: LoRaWANMulticast
    Tags: {Tag}
end

local record CreateMulticastGroupOutput
    Arn: string
    Id: string
end

local record CreateNetworkAnalyzerConfigurationInput
    Name: string
    TraceContent: TraceContent
    WirelessDevices: {string}
    WirelessGateways: {string}
    Description: string
    Tags: {Tag}
    ClientRequestToken: string
    MulticastGroups: {string}
end

local record CreateNetworkAnalyzerConfigurationOutput
    Arn: string
    Name: string
end

local record CreateServiceProfileInput
    Name: string
    LoRaWAN: LoRaWANServiceProfile
    Tags: {Tag}
    ClientRequestToken: string
end

local record CreateServiceProfileOutput
    Arn: string
    Id: string
end

local record CreateWirelessDeviceInput
    Type: string
    Name: string
    Description: string
    DestinationName: string
    ClientRequestToken: string
    LoRaWAN: LoRaWANDevice
    Tags: {Tag}
    Positioning: string
    Sidewalk: SidewalkCreateWirelessDevice
end

local record CreateWirelessDeviceOutput
    Arn: string
    Id: string
end

local record CreateWirelessGatewayInput
    Name: string
    Description: string
    LoRaWAN: LoRaWANGateway
    Tags: {Tag}
    ClientRequestToken: string
end

local record CreateWirelessGatewayOutput
    Arn: string
    Id: string
end

local record CreateWirelessGatewayTaskInput
    Id: string
    WirelessGatewayTaskDefinitionId: string
end

local record CreateWirelessGatewayTaskOutput
    WirelessGatewayTaskDefinitionId: string
    Status: string
end

local record CreateWirelessGatewayTaskDefinitionInput
    AutoCreateTasks: boolean
    Name: string
    Update: UpdateWirelessGatewayTaskCreate
    ClientRequestToken: string
    Tags: {Tag}
end

local record CreateWirelessGatewayTaskDefinitionOutput
    Id: string
    Arn: string
end

local record DeleteDestinationInput
    Name: string
end

local record DeleteDestinationOutput
end

local record DeleteDeviceProfileInput
    Id: string
end

local record DeleteDeviceProfileOutput
end

local record DeleteFuotaTaskInput
    Id: string
end

local record DeleteFuotaTaskOutput
end

local record DeleteMulticastGroupInput
    Id: string
end

local record DeleteMulticastGroupOutput
end

local record DeleteNetworkAnalyzerConfigurationInput
    ConfigurationName: string
end

local record DeleteNetworkAnalyzerConfigurationOutput
end

local record DeleteQueuedMessagesInput
    Id: string
    MessageId: string
    WirelessDeviceType: string
end

local record DeleteQueuedMessagesOutput
end

local record DeleteServiceProfileInput
    Id: string
end

local record DeleteServiceProfileOutput
end

local record DeleteWirelessDeviceInput
    Id: string
end

local record DeleteWirelessDeviceOutput
end

local record DeleteWirelessDeviceImportTaskInput
    Id: string
end

local record DeleteWirelessDeviceImportTaskOutput
end

local record DeleteWirelessGatewayInput
    Id: string
end

local record DeleteWirelessGatewayOutput
end

local record DeleteWirelessGatewayTaskInput
    Id: string
end

local record DeleteWirelessGatewayTaskOutput
end

local record DeleteWirelessGatewayTaskDefinitionInput
    Id: string
end

local record DeleteWirelessGatewayTaskDefinitionOutput
end

local record DeregisterWirelessDeviceInput
    Identifier: string
    WirelessDeviceType: string
end

local record DeregisterWirelessDeviceOutput
end

local record DisassociateAwsAccountFromPartnerAccountInput
    PartnerAccountId: string
    PartnerType: string
end

local record DisassociateAwsAccountFromPartnerAccountOutput
end

local record DisassociateMulticastGroupFromFuotaTaskInput
    Id: string
    MulticastGroupId: string
end

local record DisassociateMulticastGroupFromFuotaTaskOutput
end

local record DisassociateWirelessDeviceFromFuotaTaskInput
    Id: string
    WirelessDeviceId: string
end

local record DisassociateWirelessDeviceFromFuotaTaskOutput
end

local record DisassociateWirelessDeviceFromMulticastGroupInput
    Id: string
    WirelessDeviceId: string
end

local record DisassociateWirelessDeviceFromMulticastGroupOutput
end

local record DisassociateWirelessDeviceFromThingInput
    Id: string
end

local record DisassociateWirelessDeviceFromThingOutput
end

local record DisassociateWirelessGatewayFromCertificateInput
    Id: string
end

local record DisassociateWirelessGatewayFromCertificateOutput
end

local record DisassociateWirelessGatewayFromThingInput
    Id: string
end

local record DisassociateWirelessGatewayFromThingOutput
end

local record GetDestinationInput
    Name: string
end

local record GetDestinationOutput
    Arn: string
    Name: string
    Expression: string
    ExpressionType: string
    Description: string
    RoleArn: string
end

local record GetDeviceProfileInput
    Id: string
end

local record GetDeviceProfileOutput
    Arn: string
    Name: string
    Id: string
    LoRaWAN: LoRaWANDeviceProfile
    Sidewalk: SidewalkGetDeviceProfile
end

local record GetEventConfigurationByResourceTypesInput
end

local record GetEventConfigurationByResourceTypesOutput
    DeviceRegistrationState: DeviceRegistrationStateResourceTypeEventConfiguration
    Proximity: ProximityResourceTypeEventConfiguration
    Join: JoinResourceTypeEventConfiguration
    ConnectionStatus: ConnectionStatusResourceTypeEventConfiguration
    MessageDeliveryStatus: MessageDeliveryStatusResourceTypeEventConfiguration
end

local record GetFuotaTaskInput
    Id: string
end

local record GetFuotaTaskOutput
    Arn: string
    Id: string
    Status: string
    Name: string
    Description: string
    LoRaWAN: LoRaWANFuotaTaskGetInfo
    FirmwareUpdateImage: string
    FirmwareUpdateRole: string
    CreatedAt: number
    RedundancyPercent: number
    FragmentSizeBytes: number
    FragmentIntervalMS: number
    Descriptor: string
end

local record GetLogLevelsByResourceTypesInput
end

local record GetLogLevelsByResourceTypesOutput
    DefaultLogLevel: string
    WirelessGatewayLogOptions: {WirelessGatewayLogOption}
    WirelessDeviceLogOptions: {WirelessDeviceLogOption}
    FuotaTaskLogOptions: {FuotaTaskLogOption}
end

local record GetMetricConfigurationInput
end

local record GetMetricConfigurationOutput
    SummaryMetric: SummaryMetricConfiguration
end

local record GetMetricsInput
    SummaryMetricQueries: {SummaryMetricQuery}
end

local record GetMetricsOutput
    SummaryMetricQueryResults: {SummaryMetricQueryResult}
end

local record GetMulticastGroupInput
    Id: string
end

local record GetMulticastGroupOutput
    Arn: string
    Id: string
    Name: string
    Description: string
    Status: string
    LoRaWAN: LoRaWANMulticastGet
    CreatedAt: number
end

local record GetMulticastGroupSessionInput
    Id: string
end

local record GetMulticastGroupSessionOutput
    LoRaWAN: LoRaWANMulticastSession
end

local record GetNetworkAnalyzerConfigurationInput
    ConfigurationName: string
end

local record GetNetworkAnalyzerConfigurationOutput
    TraceContent: TraceContent
    WirelessDevices: {string}
    WirelessGateways: {string}
    Description: string
    Arn: string
    Name: string
    MulticastGroups: {string}
end

local record GetPartnerAccountInput
    PartnerAccountId: string
    PartnerType: string
end

local record GetPartnerAccountOutput
    Sidewalk: SidewalkAccountInfoWithFingerprint
    AccountLinked: boolean
end

local record GetPositionInput
    ResourceIdentifier: string
    ResourceType: string
end

local record GetPositionOutput
    Position: {number}
    Accuracy: Accuracy
    SolverType: string
    SolverProvider: string
    SolverVersion: string
    Timestamp: string
end

local record GetPositionConfigurationInput
    ResourceIdentifier: string
    ResourceType: string
end

local record GetPositionConfigurationOutput
    Solvers: PositionSolverDetails
    Destination: string
end

local record GetPositionEstimateInput
    WiFiAccessPoints: {WiFiAccessPoint}
    CellTowers: CellTowers
    Ip: Ip
    Gnss: Gnss
    Timestamp: number
    AdvancedConfiguration: AdvancedConfiguration
end

local record GetPositionEstimateOutput
    GeoJsonPayload: string
end

local record GetResourceEventConfigurationInput
    Identifier: string
    IdentifierType: string
    PartnerType: string
end

local record GetResourceEventConfigurationOutput
    DeviceRegistrationState: DeviceRegistrationStateEventConfiguration
    Proximity: ProximityEventConfiguration
    Join: JoinEventConfiguration
    ConnectionStatus: ConnectionStatusEventConfiguration
    MessageDeliveryStatus: MessageDeliveryStatusEventConfiguration
end

local record GetResourceLogLevelInput
    ResourceIdentifier: string
    ResourceType: string
end

local record GetResourceLogLevelOutput
    LogLevel: string
end

local record GetResourcePositionInput
    ResourceIdentifier: string
    ResourceType: string
end

local record GetResourcePositionOutput
    GeoJsonPayload: string
end

local record GetServiceEndpointInput
    ServiceType: string
end

local record GetServiceEndpointOutput
    ServiceType: string
    ServiceEndpoint: string
    ServerTrust: string
end

local record GetServiceProfileInput
    Id: string
end

local record GetServiceProfileOutput
    Arn: string
    Name: string
    Id: string
    LoRaWAN: LoRaWANGetServiceProfileInfo
end

local record GetWirelessDeviceInput
    Identifier: string
    IdentifierType: string
end

local record GetWirelessDeviceOutput
    Type: string
    Name: string
    Description: string
    DestinationName: string
    Id: string
    Arn: string
    ThingName: string
    ThingArn: string
    LoRaWAN: LoRaWANDevice
    Sidewalk: SidewalkDevice
    Positioning: string
end

local record GetWirelessDeviceImportTaskInput
    Id: string
end

local record GetWirelessDeviceImportTaskOutput
    Id: string
    Arn: string
    DestinationName: string
    Positioning: string
    Sidewalk: SidewalkGetStartImportInfo
    CreationTime: number
    Status: string
    StatusReason: string
    InitializedImportedDeviceCount: number
    PendingImportedDeviceCount: number
    OnboardedImportedDeviceCount: number
    FailedImportedDeviceCount: number
end

local record GetWirelessDeviceStatisticsInput
    WirelessDeviceId: string
end

local record GetWirelessDeviceStatisticsOutput
    WirelessDeviceId: string
    LastUplinkReceivedAt: string
    LoRaWAN: LoRaWANDeviceMetadata
    Sidewalk: SidewalkDeviceMetadata
end

local record GetWirelessGatewayInput
    Identifier: string
    IdentifierType: string
end

local record GetWirelessGatewayOutput
    Name: string
    Id: string
    Description: string
    LoRaWAN: LoRaWANGateway
    Arn: string
    ThingName: string
    ThingArn: string
end

local record GetWirelessGatewayCertificateInput
    Id: string
end

local record GetWirelessGatewayCertificateOutput
    IotCertificateId: string
    LoRaWANNetworkServerCertificateId: string
end

local record GetWirelessGatewayFirmwareInformationInput
    Id: string
end

local record GetWirelessGatewayFirmwareInformationOutput
    LoRaWAN: LoRaWANGatewayCurrentVersion
end

local record GetWirelessGatewayStatisticsInput
    WirelessGatewayId: string
end

local record GetWirelessGatewayStatisticsOutput
    WirelessGatewayId: string
    LastUplinkReceivedAt: string
    ConnectionStatus: string
end

local record GetWirelessGatewayTaskInput
    Id: string
end

local record GetWirelessGatewayTaskOutput
    WirelessGatewayId: string
    WirelessGatewayTaskDefinitionId: string
    LastUplinkReceivedAt: string
    TaskCreatedAt: string
    Status: string
end

local record GetWirelessGatewayTaskDefinitionInput
    Id: string
end

local record GetWirelessGatewayTaskDefinitionOutput
    AutoCreateTasks: boolean
    Name: string
    Update: UpdateWirelessGatewayTaskCreate
    Arn: string
end

local record ListDestinationsInput
    MaxResults: number
    NextToken: string
end

local record ListDestinationsOutput
    NextToken: string
    DestinationList: {Destinations}
end

local record ListDeviceProfilesInput
    NextToken: string
    MaxResults: number
    DeviceProfileType: string
end

local record ListDeviceProfilesOutput
    NextToken: string
    DeviceProfileList: {DeviceProfile}
end

local record ListDevicesForWirelessDeviceImportTaskInput
    Id: string
    MaxResults: number
    NextToken: string
    Status: string
end

local record ListDevicesForWirelessDeviceImportTaskOutput
    NextToken: string
    DestinationName: string
    Positioning: string
    Sidewalk: SidewalkListDevicesForImportInfo
    ImportedWirelessDeviceList: {ImportedWirelessDevice}
end

local record ListEventConfigurationsInput
    ResourceType: string
    MaxResults: number
    NextToken: string
end

local record ListEventConfigurationsOutput
    NextToken: string
    EventConfigurationsList: {EventConfigurationItem}
end

local record ListFuotaTasksInput
    NextToken: string
    MaxResults: number
end

local record ListFuotaTasksOutput
    NextToken: string
    FuotaTaskList: {FuotaTask}
end

local record ListMulticastGroupsInput
    NextToken: string
    MaxResults: number
end

local record ListMulticastGroupsOutput
    NextToken: string
    MulticastGroupList: {MulticastGroup}
end

local record ListMulticastGroupsByFuotaTaskInput
    Id: string
    NextToken: string
    MaxResults: number
end

local record ListMulticastGroupsByFuotaTaskOutput
    NextToken: string
    MulticastGroupList: {MulticastGroupByFuotaTask}
end

local record ListNetworkAnalyzerConfigurationsInput
    MaxResults: number
    NextToken: string
end

local record ListNetworkAnalyzerConfigurationsOutput
    NextToken: string
    NetworkAnalyzerConfigurationList: {NetworkAnalyzerConfigurations}
end

local record ListPartnerAccountsInput
    NextToken: string
    MaxResults: number
end

local record ListPartnerAccountsOutput
    NextToken: string
    Sidewalk: {SidewalkAccountInfoWithFingerprint}
end

local record ListPositionConfigurationsInput
    ResourceType: string
    MaxResults: number
    NextToken: string
end

local record ListPositionConfigurationsOutput
    PositionConfigurationList: {PositionConfigurationItem}
    NextToken: string
end

local record ListQueuedMessagesInput
    Id: string
    NextToken: string
    MaxResults: number
    WirelessDeviceType: string
end

local record ListQueuedMessagesOutput
    NextToken: string
    DownlinkQueueMessagesList: {DownlinkQueueMessage}
end

local record ListServiceProfilesInput
    NextToken: string
    MaxResults: number
end

local record ListServiceProfilesOutput
    NextToken: string
    ServiceProfileList: {ServiceProfile}
end

local record ListTagsForResourceInput
    ResourceArn: string
end

local record ListTagsForResourceOutput
    Tags: {Tag}
end

local record ListWirelessDeviceImportTasksInput
    MaxResults: number
    NextToken: string
end

local record ListWirelessDeviceImportTasksOutput
    NextToken: string
    WirelessDeviceImportTaskList: {WirelessDeviceImportTask}
end

local record ListWirelessDevicesInput
    MaxResults: number
    NextToken: string
    DestinationName: string
    DeviceProfileId: string
    ServiceProfileId: string
    WirelessDeviceType: string
    FuotaTaskId: string
    MulticastGroupId: string
end

local record ListWirelessDevicesOutput
    NextToken: string
    WirelessDeviceList: {WirelessDeviceStatistics}
end

local record ListWirelessGatewaysInput
    NextToken: string
    MaxResults: number
end

local record ListWirelessGatewaysOutput
    NextToken: string
    WirelessGatewayList: {WirelessGatewayStatistics}
end

local record ListWirelessGatewayTaskDefinitionsInput
    MaxResults: number
    NextToken: string
    TaskDefinitionType: string
end

local record ListWirelessGatewayTaskDefinitionsOutput
    NextToken: string
    TaskDefinitions: {UpdateWirelessGatewayTaskEntry}
end

local record PutPositionConfigurationInput
    ResourceIdentifier: string
    ResourceType: string
    Solvers: PositionSolverConfigurations
    Destination: string
end

local record PutPositionConfigurationOutput
end

local record PutResourceLogLevelInput
    ResourceIdentifier: string
    ResourceType: string
    LogLevel: string
end

local record PutResourceLogLevelOutput
end

local record ResetAllResourceLogLevelsInput
end

local record ResetAllResourceLogLevelsOutput
end

local record ResetResourceLogLevelInput
    ResourceIdentifier: string
    ResourceType: string
end

local record ResetResourceLogLevelOutput
end

local record SendDataToMulticastGroupInput
    Id: string
    PayloadData: string
    WirelessMetadata: MulticastWirelessMetadata
end

local record SendDataToMulticastGroupOutput
    MessageId: string
end

local record SendDataToWirelessDeviceInput
    Id: string
    TransmitMode: number
    PayloadData: string
    WirelessMetadata: WirelessMetadata
end

local record SendDataToWirelessDeviceOutput
    MessageId: string
end

local record StartBulkAssociateWirelessDeviceWithMulticastGroupInput
    Id: string
    QueryString: string
    Tags: {Tag}
end

local record StartBulkAssociateWirelessDeviceWithMulticastGroupOutput
end

local record StartBulkDisassociateWirelessDeviceFromMulticastGroupInput
    Id: string
    QueryString: string
    Tags: {Tag}
end

local record StartBulkDisassociateWirelessDeviceFromMulticastGroupOutput
end

local record StartFuotaTaskInput
    Id: string
    LoRaWAN: LoRaWANStartFuotaTask
end

local record StartFuotaTaskOutput
end

local record StartMulticastGroupSessionInput
    Id: string
    LoRaWAN: LoRaWANMulticastSession
end

local record StartMulticastGroupSessionOutput
end

local record StartSingleWirelessDeviceImportTaskInput
    DestinationName: string
    ClientRequestToken: string
    DeviceName: string
    Tags: {Tag}
    Positioning: string
    Sidewalk: SidewalkSingleStartImportInfo
end

local record StartSingleWirelessDeviceImportTaskOutput
    Id: string
    Arn: string
end

local record StartWirelessDeviceImportTaskInput
    DestinationName: string
    ClientRequestToken: string
    Tags: {Tag}
    Positioning: string
    Sidewalk: SidewalkStartImportInfo
end

local record StartWirelessDeviceImportTaskOutput
    Id: string
    Arn: string
end

local record TagResourceInput
    ResourceArn: string
    Tags: {Tag}
end

local record TagResourceOutput
end

local record TestWirelessDeviceInput
    Id: string
end

local record TestWirelessDeviceOutput
    Result: string
end

local record UntagResourceInput
    ResourceArn: string
    TagKeys: {string}
end

local record UntagResourceOutput
end

local record UpdateDestinationInput
    Name: string
    ExpressionType: string
    Expression: string
    Description: string
    RoleArn: string
end

local record UpdateDestinationOutput
end

local record UpdateEventConfigurationByResourceTypesInput
    DeviceRegistrationState: DeviceRegistrationStateResourceTypeEventConfiguration
    Proximity: ProximityResourceTypeEventConfiguration
    Join: JoinResourceTypeEventConfiguration
    ConnectionStatus: ConnectionStatusResourceTypeEventConfiguration
    MessageDeliveryStatus: MessageDeliveryStatusResourceTypeEventConfiguration
end

local record UpdateEventConfigurationByResourceTypesOutput
end

local record UpdateFuotaTaskInput
    Id: string
    Name: string
    Description: string
    LoRaWAN: LoRaWANFuotaTask
    FirmwareUpdateImage: string
    FirmwareUpdateRole: string
    RedundancyPercent: number
    FragmentSizeBytes: number
    FragmentIntervalMS: number
    Descriptor: string
end

local record UpdateFuotaTaskOutput
end

local record UpdateLogLevelsByResourceTypesInput
    DefaultLogLevel: string
    FuotaTaskLogOptions: {FuotaTaskLogOption}
    WirelessDeviceLogOptions: {WirelessDeviceLogOption}
    WirelessGatewayLogOptions: {WirelessGatewayLogOption}
end

local record UpdateLogLevelsByResourceTypesOutput
end

local record UpdateMetricConfigurationInput
    SummaryMetric: SummaryMetricConfiguration
end

local record UpdateMetricConfigurationOutput
end

local record UpdateMulticastGroupInput
    Id: string
    Name: string
    Description: string
    LoRaWAN: LoRaWANMulticast
end

local record UpdateMulticastGroupOutput
end

local record UpdateNetworkAnalyzerConfigurationInput
    ConfigurationName: string
    TraceContent: TraceContent
    WirelessDevicesToAdd: {string}
    WirelessDevicesToRemove: {string}
    WirelessGatewaysToAdd: {string}
    WirelessGatewaysToRemove: {string}
    Description: string
    MulticastGroupsToAdd: {string}
    MulticastGroupsToRemove: {string}
end

local record UpdateNetworkAnalyzerConfigurationOutput
end

local record UpdatePartnerAccountInput
    Sidewalk: SidewalkUpdateAccount
    PartnerAccountId: string
    PartnerType: string
end

local record UpdatePartnerAccountOutput
end

local record UpdatePositionInput
    ResourceIdentifier: string
    ResourceType: string
    Position: {number}
end

local record UpdatePositionOutput
end

local record UpdateResourceEventConfigurationInput
    Identifier: string
    IdentifierType: string
    PartnerType: string
    DeviceRegistrationState: DeviceRegistrationStateEventConfiguration
    Proximity: ProximityEventConfiguration
    Join: JoinEventConfiguration
    ConnectionStatus: ConnectionStatusEventConfiguration
    MessageDeliveryStatus: MessageDeliveryStatusEventConfiguration
end

local record UpdateResourceEventConfigurationOutput
end

local record UpdateResourcePositionInput
    ResourceIdentifier: string
    ResourceType: string
    GeoJsonPayload: string
end

local record UpdateResourcePositionOutput
end

local record UpdateWirelessDeviceInput
    Id: string
    DestinationName: string
    Name: string
    Description: string
    LoRaWAN: LoRaWANUpdateDevice
    Positioning: string
    Sidewalk: SidewalkUpdateWirelessDevice
end

local record UpdateWirelessDeviceOutput
end

local record UpdateWirelessDeviceImportTaskInput
    Id: string
    Sidewalk: SidewalkUpdateImportInfo
end

local record UpdateWirelessDeviceImportTaskOutput
end

local record UpdateWirelessGatewayInput
    Id: string
    Name: string
    Description: string
    JoinEuiFilters: {{string}}
    NetIdFilters: {string}
    MaxEirp: number
end

local record UpdateWirelessGatewayOutput
end

local record AccessDeniedException
    Message: string
end

local record ConflictException
    Message: string
    ResourceId: string
    ResourceType: string
end

local record InternalServerException
    Message: string
end

local record ResourceNotFoundException
    Message: string
    ResourceId: string
    ResourceType: string
end

local record ThrottlingException
    Message: string
end

local record ValidationException
    Message: string
end

local record AccessDeniedException
    Message: string
end

local record ConflictException
    Message: string
    ResourceId: string
    ResourceType: string
end

local record InternalServerException
    Message: string
end

local record ResourceNotFoundException
    Message: string
    ResourceId: string
    ResourceType: string
end

local record ThrottlingException
    Message: string
end

local record ValidationException
    Message: string
end

local record AccessDeniedException
    Message: string
end

local record ConflictException
    Message: string
    ResourceId: string
    ResourceType: string
end

local record InternalServerException
    Message: string
end

local record ResourceNotFoundException
    Message: string
    ResourceId: string
    ResourceType: string
end

local record ThrottlingException
    Message: string
end

local record ValidationException
    Message: string
end

local record AccessDeniedException
    Message: string
end

local record ConflictException
    Message: string
    ResourceId: string
    ResourceType: string
end

local record InternalServerException
    Message: string
end

local record ResourceNotFoundException
    Message: string
    ResourceId: string
    ResourceType: string
end

local record ThrottlingException
    Message: string
end

local record ValidationException
    Message: string
end

local record AccessDeniedException
    Message: string
end

local record ConflictException
    Message: string
    ResourceId: string
    ResourceType: string
end

local record InternalServerException
    Message: string
end

local record ResourceNotFoundException
    Message: string
    ResourceId: string
    ResourceType: string
end

local record ThrottlingException
    Message: string
end

local record ValidationException
    Message: string
end

local record AccessDeniedException
    Message: string
end

local record ConflictException
    Message: string
    ResourceId: string
    ResourceType: string
end

local record InternalServerException
    Message: string
end

local record ResourceNotFoundException
    Message: string
    ResourceId: string
    ResourceType: string
end

local record ThrottlingException
    Message: string
end

local record ValidationException
    Message: string
end

local record AccessDeniedException
    Message: string
end

local record ConflictException
    Message: string
    ResourceId: string
    ResourceType: string
end

local record InternalServerException
    Message: string
end

local record ResourceNotFoundException
    Message: string
    ResourceId: string
    ResourceType: string
end

local record ThrottlingException
    Message: string
end

local record ValidationException
    Message: string
end

local record AccessDeniedException
    Message: string
end

local record ConflictException
    Message: string
    ResourceId: string
    ResourceType: string
end

local record InternalServerException
    Message: string
end

local record ResourceNotFoundException
    Message: string
    ResourceId: string
    ResourceType: string
end

local record ThrottlingException
    Message: string
end

local record ValidationException
    Message: string
end

local record AccessDeniedException
    Message: string
end

local record ConflictException
    Message: string
    ResourceId: string
    ResourceType: string
end

local record InternalServerException
    Message: string
end

local record ResourceNotFoundException
    Message: string
    ResourceId: string
    ResourceType: string
end

local record ThrottlingException
    Message: string
end

local record ValidationException
    Message: string
end

local record AccessDeniedException
    Message: string
end

local record ConflictException
    Message: string
    ResourceId: string
    ResourceType: string
end

local record InternalServerException
    Message: string
end

local record ThrottlingException
    Message: string
end

local record ValidationException
    Message: string
end

local record AccessDeniedException
    Message: string
end

local record ConflictException
    Message: string
    ResourceId: string
    ResourceType: string
end

local record InternalServerException
    Message: string
end

local record ResourceNotFoundException
    Message: string
    ResourceId: string
    ResourceType: string
end

local record ThrottlingException
    Message: string
end

local record ValidationException
    Message: string
end

local record AccessDeniedException
    Message: string
end

local record ConflictException
    Message: string
    ResourceId: string
    ResourceType: string
end

local record InternalServerException
    Message: string
end

local record ResourceNotFoundException
    Message: string
    ResourceId: string
    ResourceType: string
end

local record ThrottlingException
    Message: string
end

local record ValidationException
    Message: string
end

local record AccessDeniedException
    Message: string
end

local record ConflictException
    Message: string
    ResourceId: string
    ResourceType: string
end

local record InternalServerException
    Message: string
end

local record ResourceNotFoundException
    Message: string
    ResourceId: string
    ResourceType: string
end

local record ThrottlingException
    Message: string
end

local record ValidationException
    Message: string
end

local record AccessDeniedException
    Message: string
end

local record ConflictException
    Message: string
    ResourceId: string
    ResourceType: string
end

local record InternalServerException
    Message: string
end

local record ThrottlingException
    Message: string
end

local record ValidationException
    Message: string
end

local record AccessDeniedException
    Message: string
end

local record ConflictException
    Message: string
    ResourceId: string
    ResourceType: string
end

local record InternalServerException
    Message: string
end

local record ResourceNotFoundException
    Message: string
    ResourceId: string
    ResourceType: string
end

local record ThrottlingException
    Message: string
end

local record ValidationException
    Message: string
end

local record AccessDeniedException
    Message: string
end

local record ConflictException
    Message: string
    ResourceId: string
    ResourceType: string
end

local record InternalServerException
    Message: string
end

local record ThrottlingException
    Message: string
end

local record ValidationException
    Message: string
end

local record AccessDeniedException
    Message: string
end

local record ConflictException
    Message: string
    ResourceId: string
    ResourceType: string
end

local record InternalServerException
    Message: string
end

local record ResourceNotFoundException
    Message: string
    ResourceId: string
    ResourceType: string
end

local record ThrottlingException
    Message: string
end

local record ValidationException
    Message: string
end

local record AccessDeniedException
    Message: string
end

local record ConflictException
    Message: string
    ResourceId: string
    ResourceType: string
end

local record InternalServerException
    Message: string
end

local record ResourceNotFoundException
    Message: string
    ResourceId: string
    ResourceType: string
end

local record ThrottlingException
    Message: string
end

local record ValidationException
    Message: string
end

local record AccessDeniedException
    Message: string
end

local record ConflictException
    Message: string
    ResourceId: string
    ResourceType: string
end

local record InternalServerException
    Message: string
end

local record ResourceNotFoundException
    Message: string
    ResourceId: string
    ResourceType: string
end

local record ThrottlingException
    Message: string
end

local record ValidationException
    Message: string
end

local record AccessDeniedException
    Message: string
end

local record ConflictException
    Message: string
    ResourceId: string
    ResourceType: string
end

local record InternalServerException
    Message: string
end

local record ResourceNotFoundException
    Message: string
    ResourceId: string
    ResourceType: string
end

local record ThrottlingException
    Message: string
end

local record ValidationException
    Message: string
end

local record AccessDeniedException
    Message: string
end

local record InternalServerException
    Message: string
end

local record ResourceNotFoundException
    Message: string
    ResourceId: string
    ResourceType: string
end

local record ThrottlingException
    Message: string
end

local record ValidationException
    Message: string
end

local record AccessDeniedException
    Message: string
end

local record ConflictException
    Message: string
    ResourceId: string
    ResourceType: string
end

local record InternalServerException
    Message: string
end

local record ResourceNotFoundException
    Message: string
    ResourceId: string
    ResourceType: string
end

local record ThrottlingException
    Message: string
end

local record ValidationException
    Message: string
end

local record AccessDeniedException
    Message: string
end

local record ConflictException
    Message: string
    ResourceId: string
    ResourceType: string
end

local record InternalServerException
    Message: string
end

local record ResourceNotFoundException
    Message: string
    ResourceId: string
    ResourceType: string
end

local record ThrottlingException
    Message: string
end

local record ValidationException
    Message: string
end

local record AccessDeniedException
    Message: string
end

local record InternalServerException
    Message: string
end

local record ResourceNotFoundException
    Message: string
    ResourceId: string
    ResourceType: string
end

local record ThrottlingException
    Message: string
end

local record ValidationException
    Message: string
end

local record AccessDeniedException
    Message: string
end

local record ConflictException
    Message: string
    ResourceId: string
    ResourceType: string
end

local record InternalServerException
    Message: string
end

local record ResourceNotFoundException
    Message: string
    ResourceId: string
    ResourceType: string
end

local record ThrottlingException
    Message: string
end

local record ValidationException
    Message: string
end

local record AccessDeniedException
    Message: string
end

local record InternalServerException
    Message: string
end

local record ResourceNotFoundException
    Message: string
    ResourceId: string
    ResourceType: string
end

local record ThrottlingException
    Message: string
end

local record ValidationException
    Message: string
end

local record AccessDeniedException
    Message: string
end

local record ConflictException
    Message: string
    ResourceId: string
    ResourceType: string
end

local record InternalServerException
    Message: string
end

local record ResourceNotFoundException
    Message: string
    ResourceId: string
    ResourceType: string
end

local record ThrottlingException
    Message: string
end

local record ValidationException
    Message: string
end

local record AccessDeniedException
    Message: string
end

local record InternalServerException
    Message: string
end

local record ResourceNotFoundException
    Message: string
    ResourceId: string
    ResourceType: string
end

local record ThrottlingException
    Message: string
end

local record ValidationException
    Message: string
end

local record AccessDeniedException
    Message: string
end

local record InternalServerException
    Message: string
end

local record ResourceNotFoundException
    Message: string
    ResourceId: string
    ResourceType: string
end

local record ThrottlingException
    Message: string
end

local record ValidationException
    Message: string
end

local record AccessDeniedException
    Message: string
end

local record InternalServerException
    Message: string
end

local record ResourceNotFoundException
    Message: string
    ResourceId: string
    ResourceType: string
end

local record ThrottlingException
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
    ResourceId: string
    ResourceType: string
end

local record ThrottlingException
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
    ResourceId: string
    ResourceType: string
end

local record ThrottlingException
    Message: string
end

local record ValidationException
    Message: string
end

local record AccessDeniedException
    Message: string
end

local record ConflictException
    Message: string
    ResourceId: string
    ResourceType: string
end

local record InternalServerException
    Message: string
end

local record ResourceNotFoundException
    Message: string
    ResourceId: string
    ResourceType: string
end

local record ValidationException
    Message: string
end

local record AccessDeniedException
    Message: string
end

local record ConflictException
    Message: string
    ResourceId: string
    ResourceType: string
end

local record InternalServerException
    Message: string
end

local record ResourceNotFoundException
    Message: string
    ResourceId: string
    ResourceType: string
end

local record ThrottlingException
    Message: string
end

local record ValidationException
    Message: string
end

local record AccessDeniedException
    Message: string
end

local record InternalServerException
    Message: string
end

local record ResourceNotFoundException
    Message: string
    ResourceId: string
    ResourceType: string
end

local record ThrottlingException
    Message: string
end

local record ValidationException
    Message: string
end

local record AccessDeniedException
    Message: string
end

local record ConflictException
    Message: string
    ResourceId: string
    ResourceType: string
end

local record InternalServerException
    Message: string
end

local record ResourceNotFoundException
    Message: string
    ResourceId: string
    ResourceType: string
end

local record ThrottlingException
    Message: string
end

local record ValidationException
    Message: string
end

local record AccessDeniedException
    Message: string
end

local record InternalServerException
    Message: string
end

local record ResourceNotFoundException
    Message: string
    ResourceId: string
    ResourceType: string
end

local record ThrottlingException
    Message: string
end

local record ValidationException
    Message: string
end

local record AccessDeniedException
    Message: string
end

local record ConflictException
    Message: string
    ResourceId: string
    ResourceType: string
end

local record InternalServerException
    Message: string
end

local record ResourceNotFoundException
    Message: string
    ResourceId: string
    ResourceType: string
end

local record ThrottlingException
    Message: string
end

local record ValidationException
    Message: string
end

local record AccessDeniedException
    Message: string
end

local record InternalServerException
    Message: string
end

local record ResourceNotFoundException
    Message: string
    ResourceId: string
    ResourceType: string
end

local record ThrottlingException
    Message: string
end

local record ValidationException
    Message: string
end

local record AccessDeniedException
    Message: string
end

local record InternalServerException
    Message: string
end

local record ResourceNotFoundException
    Message: string
    ResourceId: string
    ResourceType: string
end

local record ThrottlingException
    Message: string
end

local record ValidationException
    Message: string
end

local record AccessDeniedException
    Message: string
end

local record InternalServerException
    Message: string
end

local record ThrottlingException
    Message: string
end

local record AccessDeniedException
    Message: string
end

local record InternalServerException
    Message: string
end

local record ResourceNotFoundException
    Message: string
    ResourceId: string
    ResourceType: string
end

local record ThrottlingException
    Message: string
end

local record ValidationException
    Message: string
end

local record AccessDeniedException
    Message: string
end

local record InternalServerException
    Message: string
end

local record ResourceNotFoundException
    Message: string
    ResourceId: string
    ResourceType: string
end

local record ThrottlingException
    Message: string
end

local record ValidationException
    Message: string
end

local record AccessDeniedException
    Message: string
end

local record ConflictException
    Message: string
    ResourceId: string
    ResourceType: string
end

local record InternalServerException
    Message: string
end

local record ResourceNotFoundException
    Message: string
    ResourceId: string
    ResourceType: string
end

local record ThrottlingException
    Message: string
end

local record ValidationException
    Message: string
end

local record AccessDeniedException
    Message: string
end

local record ConflictException
    Message: string
    ResourceId: string
    ResourceType: string
end

local record InternalServerException
    Message: string
end

local record ResourceNotFoundException
    Message: string
    ResourceId: string
    ResourceType: string
end

local record ThrottlingException
    Message: string
end

local record ValidationException
    Message: string
end

local record AccessDeniedException
    Message: string
end

local record InternalServerException
    Message: string
end

local record ResourceNotFoundException
    Message: string
    ResourceId: string
    ResourceType: string
end

local record ThrottlingException
    Message: string
end

local record ValidationException
    Message: string
end

local record AccessDeniedException
    Message: string
end

local record InternalServerException
    Message: string
end

local record ResourceNotFoundException
    Message: string
    ResourceId: string
    ResourceType: string
end

local record ThrottlingException
    Message: string
end

local record ValidationException
    Message: string
end

local record AccessDeniedException
    Message: string
end

local record InternalServerException
    Message: string
end

local record ResourceNotFoundException
    Message: string
    ResourceId: string
    ResourceType: string
end

local record ThrottlingException
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
    ResourceId: string
    ResourceType: string
end

local record ThrottlingException
    Message: string
end

local record ValidationException
    Message: string
end

local record AccessDeniedException
    Message: string
end

local record InternalServerException
    Message: string
end

local record ResourceNotFoundException
    Message: string
    ResourceId: string
    ResourceType: string
end

local record ThrottlingException
    Message: string
end

local record ValidationException
    Message: string
end

local record AccessDeniedException
    Message: string
end

local record InternalServerException
    Message: string
end

local record ResourceNotFoundException
    Message: string
    ResourceId: string
    ResourceType: string
end

local record ThrottlingException
    Message: string
end

local record ValidationException
    Message: string
end

local record AccessDeniedException
    Message: string
end

local record InternalServerException
    Message: string
end

local record ResourceNotFoundException
    Message: string
    ResourceId: string
    ResourceType: string
end

local record ThrottlingException
    Message: string
end

local record ValidationException
    Message: string
end

local record AccessDeniedException
    Message: string
end

local record InternalServerException
    Message: string
end

local record ResourceNotFoundException
    Message: string
    ResourceId: string
    ResourceType: string
end

local record ThrottlingException
    Message: string
end

local record ValidationException
    Message: string
end

local record AccessDeniedException
    Message: string
end

local record InternalServerException
    Message: string
end

local record ResourceNotFoundException
    Message: string
    ResourceId: string
    ResourceType: string
end

local record ThrottlingException
    Message: string
end

local record ValidationException
    Message: string
end

local record AccessDeniedException
    Message: string
end

local record InternalServerException
    Message: string
end

local record ResourceNotFoundException
    Message: string
    ResourceId: string
    ResourceType: string
end

local record ThrottlingException
    Message: string
end

local record ValidationException
    Message: string
end

local record AccessDeniedException
    Message: string
end

local record InternalServerException
    Message: string
end

local record ThrottlingException
    Message: string
end

local record ValidationException
    Message: string
end

local record AccessDeniedException
    Message: string
end

local record InternalServerException
    Message: string
end

local record ResourceNotFoundException
    Message: string
    ResourceId: string
    ResourceType: string
end

local record ThrottlingException
    Message: string
end

local record ValidationException
    Message: string
end

local record AccessDeniedException
    Message: string
end

local record InternalServerException
    Message: string
end

local record ResourceNotFoundException
    Message: string
    ResourceId: string
    ResourceType: string
end

local record ThrottlingException
    Message: string
end

local record ValidationException
    Message: string
end

local record AccessDeniedException
    Message: string
end

local record ConflictException
    Message: string
    ResourceId: string
    ResourceType: string
end

local record InternalServerException
    Message: string
end

local record ResourceNotFoundException
    Message: string
    ResourceId: string
    ResourceType: string
end

local record ThrottlingException
    Message: string
end

local record ValidationException
    Message: string
end

local record AccessDeniedException
    Message: string
end

local record InternalServerException
    Message: string
end

local record ResourceNotFoundException
    Message: string
    ResourceId: string
    ResourceType: string
end

local record ThrottlingException
    Message: string
end

local record ValidationException
    Message: string
end

local record AccessDeniedException
    Message: string
end

local record InternalServerException
    Message: string
end

local record ResourceNotFoundException
    Message: string
    ResourceId: string
    ResourceType: string
end

local record ThrottlingException
    Message: string
end

local record ValidationException
    Message: string
end

local record AccessDeniedException
    Message: string
end

local record InternalServerException
    Message: string
end

local record ResourceNotFoundException
    Message: string
    ResourceId: string
    ResourceType: string
end

local record ThrottlingException
    Message: string
end

local record ValidationException
    Message: string
end

local record AccessDeniedException
    Message: string
end

local record InternalServerException
    Message: string
end

local record ResourceNotFoundException
    Message: string
    ResourceId: string
    ResourceType: string
end

local record ThrottlingException
    Message: string
end

local record ValidationException
    Message: string
end

local record AccessDeniedException
    Message: string
end

local record InternalServerException
    Message: string
end

local record ResourceNotFoundException
    Message: string
    ResourceId: string
    ResourceType: string
end

local record ThrottlingException
    Message: string
end

local record ValidationException
    Message: string
end

local record AccessDeniedException
    Message: string
end

local record InternalServerException
    Message: string
end

local record ResourceNotFoundException
    Message: string
    ResourceId: string
    ResourceType: string
end

local record ThrottlingException
    Message: string
end

local record ValidationException
    Message: string
end

local record AccessDeniedException
    Message: string
end

local record InternalServerException
    Message: string
end

local record ResourceNotFoundException
    Message: string
    ResourceId: string
    ResourceType: string
end

local record ThrottlingException
    Message: string
end

local record ValidationException
    Message: string
end

local record AccessDeniedException
    Message: string
end

local record InternalServerException
    Message: string
end

local record ThrottlingException
    Message: string
end

local record ValidationException
    Message: string
end

local record AccessDeniedException
    Message: string
end

local record InternalServerException
    Message: string
end

local record ThrottlingException
    Message: string
end

local record ValidationException
    Message: string
end

local record AccessDeniedException
    Message: string
end

local record ConflictException
    Message: string
    ResourceId: string
    ResourceType: string
end

local record InternalServerException
    Message: string
end

local record ResourceNotFoundException
    Message: string
    ResourceId: string
    ResourceType: string
end

local record ThrottlingException
    Message: string
end

local record ValidationException
    Message: string
end

local record AccessDeniedException
    Message: string
end

local record InternalServerException
    Message: string
end

local record ThrottlingException
    Message: string
end

local record ValidationException
    Message: string
end

local record AccessDeniedException
    Message: string
end

local record InternalServerException
    Message: string
end

local record ThrottlingException
    Message: string
end

local record ValidationException
    Message: string
end

local record AccessDeniedException
    Message: string
end

local record InternalServerException
    Message: string
end

local record ThrottlingException
    Message: string
end

local record ValidationException
    Message: string
end

local record AccessDeniedException
    Message: string
end

local record InternalServerException
    Message: string
end

local record ResourceNotFoundException
    Message: string
    ResourceId: string
    ResourceType: string
end

local record ThrottlingException
    Message: string
end

local record ValidationException
    Message: string
end

local record AccessDeniedException
    Message: string
end

local record InternalServerException
    Message: string
end

local record ThrottlingException
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
    ResourceId: string
    ResourceType: string
end

local record ThrottlingException
    Message: string
end

local record ValidationException
    Message: string
end

local record AccessDeniedException
    Message: string
end

local record InternalServerException
    Message: string
end

local record ThrottlingException
    Message: string
end

local record ValidationException
    Message: string
end

local record AccessDeniedException
    Message: string
end

local record InternalServerException
    Message: string
end

local record ResourceNotFoundException
    Message: string
    ResourceId: string
    ResourceType: string
end

local record ThrottlingException
    Message: string
end

local record ValidationException
    Message: string
end

local record AccessDeniedException
    Message: string
end

local record InternalServerException
    Message: string
end

local record ThrottlingException
    Message: string
end

local record ValidationException
    Message: string
end

local record ConflictException
    Message: string
    ResourceId: string
    ResourceType: string
end

local record InternalServerException
    Message: string
end

local record ResourceNotFoundException
    Message: string
    ResourceId: string
    ResourceType: string
end

local record ThrottlingException
    Message: string
end

local record ValidationException
    Message: string
end

local record AccessDeniedException
    Message: string
end

local record ConflictException
    Message: string
    ResourceId: string
    ResourceType: string
end

local record InternalServerException
    Message: string
end

local record ResourceNotFoundException
    Message: string
    ResourceId: string
    ResourceType: string
end

local record ThrottlingException
    Message: string
end

local record ValidationException
    Message: string
end

local record AccessDeniedException
    Message: string
end

local record InternalServerException
    Message: string
end

local record ThrottlingException
    Message: string
end

local record ValidationException
    Message: string
end

local record AccessDeniedException
    Message: string
end

local record InternalServerException
    Message: string
end

local record ThrottlingException
    Message: string
end

local record ValidationException
    Message: string
end

local record AccessDeniedException
    Message: string
end

local record InternalServerException
    Message: string
end

local record ThrottlingException
    Message: string
end

local record ValidationException
    Message: string
end

local record AccessDeniedException
    Message: string
end

local record InternalServerException
    Message: string
end

local record ResourceNotFoundException
    Message: string
    ResourceId: string
    ResourceType: string
end

local record ThrottlingException
    Message: string
end

local record ValidationException
    Message: string
end

local record AccessDeniedException
    Message: string
end

local record InternalServerException
    Message: string
end

local record ResourceNotFoundException
    Message: string
    ResourceId: string
    ResourceType: string
end

local record ThrottlingException
    Message: string
end

local record ValidationException
    Message: string
end

local record AccessDeniedException
    Message: string
end

local record InternalServerException
    Message: string
end

local record ResourceNotFoundException
    Message: string
    ResourceId: string
    ResourceType: string
end

local record ThrottlingException
    Message: string
end

local record ValidationException
    Message: string
end

local record AccessDeniedException
    Message: string
end

local record InternalServerException
    Message: string
end

local record ResourceNotFoundException
    Message: string
    ResourceId: string
    ResourceType: string
end

local record ThrottlingException
    Message: string
end

local record ValidationException
    Message: string
end

local record AccessDeniedException
    Message: string
end

local record ConflictException
    Message: string
    ResourceId: string
    ResourceType: string
end

local record InternalServerException
    Message: string
end

local record ResourceNotFoundException
    Message: string
    ResourceId: string
    ResourceType: string
end

local record ThrottlingException
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
    ResourceId: string
    ResourceType: string
end

local record ThrottlingException
    Message: string
end

local record ValidationException
    Message: string
end

local record AccessDeniedException
    Message: string
end

local record InternalServerException
    Message: string
end

local record ResourceNotFoundException
    Message: string
    ResourceId: string
    ResourceType: string
end

local record ThrottlingException
    Message: string
end

local record ValidationException
    Message: string
end

local record AccessDeniedException
    Message: string
end

local record InternalServerException
    Message: string
end

local record ResourceNotFoundException
    Message: string
    ResourceId: string
    ResourceType: string
end

local record ThrottlingException
    Message: string
end

local record ValidationException
    Message: string
end

local record AccessDeniedException
    Message: string
end

local record ConflictException
    Message: string
    ResourceId: string
    ResourceType: string
end

local record InternalServerException
    Message: string
end

local record ResourceNotFoundException
    Message: string
    ResourceId: string
    ResourceType: string
end

local record ThrottlingException
    Message: string
end

local record ValidationException
    Message: string
end

local record AccessDeniedException
    Message: string
end

local record ConflictException
    Message: string
    ResourceId: string
    ResourceType: string
end

local record InternalServerException
    Message: string
end

local record ResourceNotFoundException
    Message: string
    ResourceId: string
    ResourceType: string
end

local record ThrottlingException
    Message: string
end

local record ValidationException
    Message: string
end

local record AccessDeniedException
    Message: string
end

local record ConflictException
    Message: string
    ResourceId: string
    ResourceType: string
end

local record InternalServerException
    Message: string
end

local record ResourceNotFoundException
    Message: string
    ResourceId: string
    ResourceType: string
end

local record ThrottlingException
    Message: string
end

local record ValidationException
    Message: string
end

local record AccessDeniedException
    Message: string
end

local record ConflictException
    Message: string
    ResourceId: string
    ResourceType: string
end

local record InternalServerException
    Message: string
end

local record ResourceNotFoundException
    Message: string
    ResourceId: string
    ResourceType: string
end

local record ThrottlingException
    Message: string
end

local record ValidationException
    Message: string
end

local record ConflictException
    Message: string
    ResourceId: string
    ResourceType: string
end

local record InternalServerException
    Message: string
end

local record ResourceNotFoundException
    Message: string
    ResourceId: string
    ResourceType: string
end

local record ThrottlingException
    Message: string
end

local record TooManyTagsException
    Message: string
    ResourceName: string
end

local record ValidationException
    Message: string
end

local record InternalServerException
    Message: string
end

local record ResourceNotFoundException
    Message: string
    ResourceId: string
    ResourceType: string
end

local record ThrottlingException
    Message: string
end

local record ValidationException
    Message: string
end

local record ConflictException
    Message: string
    ResourceId: string
    ResourceType: string
end

local record InternalServerException
    Message: string
end

local record ResourceNotFoundException
    Message: string
    ResourceId: string
    ResourceType: string
end

local record ThrottlingException
    Message: string
end

local record ValidationException
    Message: string
end

local record AccessDeniedException
    Message: string
end

local record InternalServerException
    Message: string
end

local record ResourceNotFoundException
    Message: string
    ResourceId: string
    ResourceType: string
end

local record ThrottlingException
    Message: string
end

local record ValidationException
    Message: string
end

local record AccessDeniedException
    Message: string
end

local record InternalServerException
    Message: string
end

local record ThrottlingException
    Message: string
end

local record ValidationException
    Message: string
end

local record AccessDeniedException
    Message: string
end

local record ConflictException
    Message: string
    ResourceId: string
    ResourceType: string
end

local record InternalServerException
    Message: string
end

local record ResourceNotFoundException
    Message: string
    ResourceId: string
    ResourceType: string
end

local record ThrottlingException
    Message: string
end

local record ValidationException
    Message: string
end

local record AccessDeniedException
    Message: string
end

local record ConflictException
    Message: string
    ResourceId: string
    ResourceType: string
end

local record InternalServerException
    Message: string
end

local record ResourceNotFoundException
    Message: string
    ResourceId: string
    ResourceType: string
end

local record ThrottlingException
    Message: string
end

local record ValidationException
    Message: string
end

local record AccessDeniedException
    Message: string
end

local record ConflictException
    Message: string
    ResourceId: string
    ResourceType: string
end

local record InternalServerException
    Message: string
end

local record ResourceNotFoundException
    Message: string
    ResourceId: string
    ResourceType: string
end

local record ThrottlingException
    Message: string
end

local record ValidationException
    Message: string
end

local record AccessDeniedException
    Message: string
end

local record ConflictException
    Message: string
    ResourceId: string
    ResourceType: string
end

local record InternalServerException
    Message: string
end

local record ResourceNotFoundException
    Message: string
    ResourceId: string
    ResourceType: string
end

local record ThrottlingException
    Message: string
end

local record ValidationException
    Message: string
end

local record AccessDeniedException
    Message: string
end

local record InternalServerException
    Message: string
end

local record ResourceNotFoundException
    Message: string
    ResourceId: string
    ResourceType: string
end

local record ThrottlingException
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
    ResourceId: string
    ResourceType: string
end

local record ThrottlingException
    Message: string
end

local record ValidationException
    Message: string
end

local record AccessDeniedException
    Message: string
end

local record InternalServerException
    Message: string
end

local record ResourceNotFoundException
    Message: string
    ResourceId: string
    ResourceType: string
end

local record ThrottlingException
    Message: string
end

local record ValidationException
    Message: string
end

local record AccessDeniedException
    Message: string
end

local record ConflictException
    Message: string
    ResourceId: string
    ResourceType: string
end

local record InternalServerException
    Message: string
end

local record ResourceNotFoundException
    Message: string
    ResourceId: string
    ResourceType: string
end

local record ThrottlingException
    Message: string
end

local record ValidationException
    Message: string
end

local record AccessDeniedException
    Message: string
end

local record InternalServerException
    Message: string
end

local record ResourceNotFoundException
    Message: string
    ResourceId: string
    ResourceType: string
end

local record ThrottlingException
    Message: string
end

local record ValidationException
    Message: string
end

local record AccessDeniedException
    Message: string
end

local record InternalServerException
    Message: string
end

local record ResourceNotFoundException
    Message: string
    ResourceId: string
    ResourceType: string
end

local record ThrottlingException
    Message: string
end

local record ValidationException
    Message: string
end

local record AccessDeniedException
    Message: string
end

local record ConflictException
    Message: string
    ResourceId: string
    ResourceType: string
end

local record InternalServerException
    Message: string
end

local record ResourceNotFoundException
    Message: string
    ResourceId: string
    ResourceType: string
end

local record ThrottlingException
    Message: string
end

local record ValidationException
    Message: string
end

local record AccessDeniedException
    Message: string
end

local record InternalServerException
    Message: string
end

local record ResourceNotFoundException
    Message: string
    ResourceId: string
    ResourceType: string
end

local record ThrottlingException
    Message: string
end

local record ValidationException
    Message: string
end

local type WirelessGatewayTaskStatus = "PENDING" | "IN_PROGRESS" | "FIRST_RETRY" | "SECOND_RETRY" | "COMPLETED" | "FAILED"

local type WirelessGatewayIdType = "GatewayEui" | "WirelessGatewayId" | "ThingName"

local type EventNotificationPartnerType = "Sidewalk"

local type LogLevel = "INFO" | "ERROR" | "DISABLED"

local type ImportTaskStatus = "INITIALIZING" | "INITIALIZED" | "PENDING" | "COMPLETE" | "FAILED" | "DELETING"

local type PositionResourceType = "WirelessDevice" | "WirelessGateway"

local type OnboardStatus = "INITIALIZED" | "PENDING" | "ONBOARDED" | "FAILED"

local type FuotaTaskStatus = "Pending" | "FuotaSession_Waiting" | "In_FuotaSession" | "FuotaDone" | "Delete_Waiting"

local type DeviceProfileType = "Sidewalk" | "LoRaWAN"

local type WirelessDeviceType = "Sidewalk" | "LoRaWAN"

local type EventNotificationResourceType = "SidewalkAccount" | "WirelessDevice" | "WirelessGateway"

local type IdentifierType = "PartnerAccountId" | "DevEui" | "GatewayEui" | "WirelessDeviceId" | "WirelessGatewayId"

local type WirelessDeviceIdType = "WirelessDeviceId" | "DevEui" | "ThingName" | "SidewalkManufacturingSn"

local type PositionSolverProvider = "Semtech"

local type WirelessGatewayServiceType = "CUPS" | "LNS"

local type PositionSolverType = "GNSS"

local type PartnerType = "Sidewalk"

local type PositioningConfigStatus = "Enabled" | "Disabled"

local type WirelessGatewayTaskDefinitionType = "UPDATE"

local type ExpressionType = "RuleName" | "MqttTopic"

local type ConnectionStatus = "Connected" | "Disconnected"

local record M
    AssociateAwsAccountWithPartnerAccountInput: AssociateAwsAccountWithPartnerAccountInput
    AssociateAwsAccountWithPartnerAccountOutput: AssociateAwsAccountWithPartnerAccountOutput
    AssociateMulticastGroupWithFuotaTaskInput: AssociateMulticastGroupWithFuotaTaskInput
    AssociateMulticastGroupWithFuotaTaskOutput: AssociateMulticastGroupWithFuotaTaskOutput
    AssociateWirelessDeviceWithFuotaTaskInput: AssociateWirelessDeviceWithFuotaTaskInput
    AssociateWirelessDeviceWithFuotaTaskOutput: AssociateWirelessDeviceWithFuotaTaskOutput
    AssociateWirelessDeviceWithMulticastGroupInput: AssociateWirelessDeviceWithMulticastGroupInput
    AssociateWirelessDeviceWithMulticastGroupOutput: AssociateWirelessDeviceWithMulticastGroupOutput
    AssociateWirelessDeviceWithThingInput: AssociateWirelessDeviceWithThingInput
    AssociateWirelessDeviceWithThingOutput: AssociateWirelessDeviceWithThingOutput
    AssociateWirelessGatewayWithCertificateInput: AssociateWirelessGatewayWithCertificateInput
    AssociateWirelessGatewayWithCertificateOutput: AssociateWirelessGatewayWithCertificateOutput
    AssociateWirelessGatewayWithThingInput: AssociateWirelessGatewayWithThingInput
    AssociateWirelessGatewayWithThingOutput: AssociateWirelessGatewayWithThingOutput
    CancelMulticastGroupSessionInput: CancelMulticastGroupSessionInput
    CancelMulticastGroupSessionOutput: CancelMulticastGroupSessionOutput
    CreateDestinationInput: CreateDestinationInput
    CreateDestinationOutput: CreateDestinationOutput
    CreateDeviceProfileInput: CreateDeviceProfileInput
    CreateDeviceProfileOutput: CreateDeviceProfileOutput
    CreateFuotaTaskInput: CreateFuotaTaskInput
    CreateFuotaTaskOutput: CreateFuotaTaskOutput
    CreateMulticastGroupInput: CreateMulticastGroupInput
    CreateMulticastGroupOutput: CreateMulticastGroupOutput
    CreateNetworkAnalyzerConfigurationInput: CreateNetworkAnalyzerConfigurationInput
    CreateNetworkAnalyzerConfigurationOutput: CreateNetworkAnalyzerConfigurationOutput
    CreateServiceProfileInput: CreateServiceProfileInput
    CreateServiceProfileOutput: CreateServiceProfileOutput
    CreateWirelessDeviceInput: CreateWirelessDeviceInput
    CreateWirelessDeviceOutput: CreateWirelessDeviceOutput
    CreateWirelessGatewayInput: CreateWirelessGatewayInput
    CreateWirelessGatewayOutput: CreateWirelessGatewayOutput
    CreateWirelessGatewayTaskInput: CreateWirelessGatewayTaskInput
    CreateWirelessGatewayTaskOutput: CreateWirelessGatewayTaskOutput
    CreateWirelessGatewayTaskDefinitionInput: CreateWirelessGatewayTaskDefinitionInput
    CreateWirelessGatewayTaskDefinitionOutput: CreateWirelessGatewayTaskDefinitionOutput
    DeleteDestinationInput: DeleteDestinationInput
    DeleteDestinationOutput: DeleteDestinationOutput
    DeleteDeviceProfileInput: DeleteDeviceProfileInput
    DeleteDeviceProfileOutput: DeleteDeviceProfileOutput
    DeleteFuotaTaskInput: DeleteFuotaTaskInput
    DeleteFuotaTaskOutput: DeleteFuotaTaskOutput
    DeleteMulticastGroupInput: DeleteMulticastGroupInput
    DeleteMulticastGroupOutput: DeleteMulticastGroupOutput
    DeleteNetworkAnalyzerConfigurationInput: DeleteNetworkAnalyzerConfigurationInput
    DeleteNetworkAnalyzerConfigurationOutput: DeleteNetworkAnalyzerConfigurationOutput
    DeleteQueuedMessagesInput: DeleteQueuedMessagesInput
    DeleteQueuedMessagesOutput: DeleteQueuedMessagesOutput
    DeleteServiceProfileInput: DeleteServiceProfileInput
    DeleteServiceProfileOutput: DeleteServiceProfileOutput
    DeleteWirelessDeviceInput: DeleteWirelessDeviceInput
    DeleteWirelessDeviceOutput: DeleteWirelessDeviceOutput
    DeleteWirelessDeviceImportTaskInput: DeleteWirelessDeviceImportTaskInput
    DeleteWirelessDeviceImportTaskOutput: DeleteWirelessDeviceImportTaskOutput
    DeleteWirelessGatewayInput: DeleteWirelessGatewayInput
    DeleteWirelessGatewayOutput: DeleteWirelessGatewayOutput
    DeleteWirelessGatewayTaskInput: DeleteWirelessGatewayTaskInput
    DeleteWirelessGatewayTaskOutput: DeleteWirelessGatewayTaskOutput
    DeleteWirelessGatewayTaskDefinitionInput: DeleteWirelessGatewayTaskDefinitionInput
    DeleteWirelessGatewayTaskDefinitionOutput: DeleteWirelessGatewayTaskDefinitionOutput
    DeregisterWirelessDeviceInput: DeregisterWirelessDeviceInput
    DeregisterWirelessDeviceOutput: DeregisterWirelessDeviceOutput
    DisassociateAwsAccountFromPartnerAccountInput: DisassociateAwsAccountFromPartnerAccountInput
    DisassociateAwsAccountFromPartnerAccountOutput: DisassociateAwsAccountFromPartnerAccountOutput
    DisassociateMulticastGroupFromFuotaTaskInput: DisassociateMulticastGroupFromFuotaTaskInput
    DisassociateMulticastGroupFromFuotaTaskOutput: DisassociateMulticastGroupFromFuotaTaskOutput
    DisassociateWirelessDeviceFromFuotaTaskInput: DisassociateWirelessDeviceFromFuotaTaskInput
    DisassociateWirelessDeviceFromFuotaTaskOutput: DisassociateWirelessDeviceFromFuotaTaskOutput
    DisassociateWirelessDeviceFromMulticastGroupInput: DisassociateWirelessDeviceFromMulticastGroupInput
    DisassociateWirelessDeviceFromMulticastGroupOutput: DisassociateWirelessDeviceFromMulticastGroupOutput
    DisassociateWirelessDeviceFromThingInput: DisassociateWirelessDeviceFromThingInput
    DisassociateWirelessDeviceFromThingOutput: DisassociateWirelessDeviceFromThingOutput
    DisassociateWirelessGatewayFromCertificateInput: DisassociateWirelessGatewayFromCertificateInput
    DisassociateWirelessGatewayFromCertificateOutput: DisassociateWirelessGatewayFromCertificateOutput
    DisassociateWirelessGatewayFromThingInput: DisassociateWirelessGatewayFromThingInput
    DisassociateWirelessGatewayFromThingOutput: DisassociateWirelessGatewayFromThingOutput
    GetDestinationInput: GetDestinationInput
    GetDestinationOutput: GetDestinationOutput
    GetDeviceProfileInput: GetDeviceProfileInput
    GetDeviceProfileOutput: GetDeviceProfileOutput
    GetEventConfigurationByResourceTypesInput: GetEventConfigurationByResourceTypesInput
    GetEventConfigurationByResourceTypesOutput: GetEventConfigurationByResourceTypesOutput
    GetFuotaTaskInput: GetFuotaTaskInput
    GetFuotaTaskOutput: GetFuotaTaskOutput
    GetLogLevelsByResourceTypesInput: GetLogLevelsByResourceTypesInput
    GetLogLevelsByResourceTypesOutput: GetLogLevelsByResourceTypesOutput
    GetMetricConfigurationInput: GetMetricConfigurationInput
    GetMetricConfigurationOutput: GetMetricConfigurationOutput
    GetMetricsInput: GetMetricsInput
    GetMetricsOutput: GetMetricsOutput
    GetMulticastGroupInput: GetMulticastGroupInput
    GetMulticastGroupOutput: GetMulticastGroupOutput
    GetMulticastGroupSessionInput: GetMulticastGroupSessionInput
    GetMulticastGroupSessionOutput: GetMulticastGroupSessionOutput
    GetNetworkAnalyzerConfigurationInput: GetNetworkAnalyzerConfigurationInput
    GetNetworkAnalyzerConfigurationOutput: GetNetworkAnalyzerConfigurationOutput
    GetPartnerAccountInput: GetPartnerAccountInput
    GetPartnerAccountOutput: GetPartnerAccountOutput
    GetPositionInput: GetPositionInput
    GetPositionOutput: GetPositionOutput
    GetPositionConfigurationInput: GetPositionConfigurationInput
    GetPositionConfigurationOutput: GetPositionConfigurationOutput
    GetPositionEstimateInput: GetPositionEstimateInput
    GetPositionEstimateOutput: GetPositionEstimateOutput
    GetResourceEventConfigurationInput: GetResourceEventConfigurationInput
    GetResourceEventConfigurationOutput: GetResourceEventConfigurationOutput
    GetResourceLogLevelInput: GetResourceLogLevelInput
    GetResourceLogLevelOutput: GetResourceLogLevelOutput
    GetResourcePositionInput: GetResourcePositionInput
    GetResourcePositionOutput: GetResourcePositionOutput
    GetServiceEndpointInput: GetServiceEndpointInput
    GetServiceEndpointOutput: GetServiceEndpointOutput
    GetServiceProfileInput: GetServiceProfileInput
    GetServiceProfileOutput: GetServiceProfileOutput
    GetWirelessDeviceInput: GetWirelessDeviceInput
    GetWirelessDeviceOutput: GetWirelessDeviceOutput
    GetWirelessDeviceImportTaskInput: GetWirelessDeviceImportTaskInput
    GetWirelessDeviceImportTaskOutput: GetWirelessDeviceImportTaskOutput
    GetWirelessDeviceStatisticsInput: GetWirelessDeviceStatisticsInput
    GetWirelessDeviceStatisticsOutput: GetWirelessDeviceStatisticsOutput
    GetWirelessGatewayInput: GetWirelessGatewayInput
    GetWirelessGatewayOutput: GetWirelessGatewayOutput
    GetWirelessGatewayCertificateInput: GetWirelessGatewayCertificateInput
    GetWirelessGatewayCertificateOutput: GetWirelessGatewayCertificateOutput
    GetWirelessGatewayFirmwareInformationInput: GetWirelessGatewayFirmwareInformationInput
    GetWirelessGatewayFirmwareInformationOutput: GetWirelessGatewayFirmwareInformationOutput
    GetWirelessGatewayStatisticsInput: GetWirelessGatewayStatisticsInput
    GetWirelessGatewayStatisticsOutput: GetWirelessGatewayStatisticsOutput
    GetWirelessGatewayTaskInput: GetWirelessGatewayTaskInput
    GetWirelessGatewayTaskOutput: GetWirelessGatewayTaskOutput
    GetWirelessGatewayTaskDefinitionInput: GetWirelessGatewayTaskDefinitionInput
    GetWirelessGatewayTaskDefinitionOutput: GetWirelessGatewayTaskDefinitionOutput
    ListDestinationsInput: ListDestinationsInput
    ListDestinationsOutput: ListDestinationsOutput
    ListDeviceProfilesInput: ListDeviceProfilesInput
    ListDeviceProfilesOutput: ListDeviceProfilesOutput
    ListDevicesForWirelessDeviceImportTaskInput: ListDevicesForWirelessDeviceImportTaskInput
    ListDevicesForWirelessDeviceImportTaskOutput: ListDevicesForWirelessDeviceImportTaskOutput
    ListEventConfigurationsInput: ListEventConfigurationsInput
    ListEventConfigurationsOutput: ListEventConfigurationsOutput
    ListFuotaTasksInput: ListFuotaTasksInput
    ListFuotaTasksOutput: ListFuotaTasksOutput
    ListMulticastGroupsInput: ListMulticastGroupsInput
    ListMulticastGroupsOutput: ListMulticastGroupsOutput
    ListMulticastGroupsByFuotaTaskInput: ListMulticastGroupsByFuotaTaskInput
    ListMulticastGroupsByFuotaTaskOutput: ListMulticastGroupsByFuotaTaskOutput
    ListNetworkAnalyzerConfigurationsInput: ListNetworkAnalyzerConfigurationsInput
    ListNetworkAnalyzerConfigurationsOutput: ListNetworkAnalyzerConfigurationsOutput
    ListPartnerAccountsInput: ListPartnerAccountsInput
    ListPartnerAccountsOutput: ListPartnerAccountsOutput
    ListPositionConfigurationsInput: ListPositionConfigurationsInput
    ListPositionConfigurationsOutput: ListPositionConfigurationsOutput
    ListQueuedMessagesInput: ListQueuedMessagesInput
    ListQueuedMessagesOutput: ListQueuedMessagesOutput
    ListServiceProfilesInput: ListServiceProfilesInput
    ListServiceProfilesOutput: ListServiceProfilesOutput
    ListTagsForResourceInput: ListTagsForResourceInput
    ListTagsForResourceOutput: ListTagsForResourceOutput
    ListWirelessDeviceImportTasksInput: ListWirelessDeviceImportTasksInput
    ListWirelessDeviceImportTasksOutput: ListWirelessDeviceImportTasksOutput
    ListWirelessDevicesInput: ListWirelessDevicesInput
    ListWirelessDevicesOutput: ListWirelessDevicesOutput
    ListWirelessGatewaysInput: ListWirelessGatewaysInput
    ListWirelessGatewaysOutput: ListWirelessGatewaysOutput
    ListWirelessGatewayTaskDefinitionsInput: ListWirelessGatewayTaskDefinitionsInput
    ListWirelessGatewayTaskDefinitionsOutput: ListWirelessGatewayTaskDefinitionsOutput
    PutPositionConfigurationInput: PutPositionConfigurationInput
    PutPositionConfigurationOutput: PutPositionConfigurationOutput
    PutResourceLogLevelInput: PutResourceLogLevelInput
    PutResourceLogLevelOutput: PutResourceLogLevelOutput
    ResetAllResourceLogLevelsInput: ResetAllResourceLogLevelsInput
    ResetAllResourceLogLevelsOutput: ResetAllResourceLogLevelsOutput
    ResetResourceLogLevelInput: ResetResourceLogLevelInput
    ResetResourceLogLevelOutput: ResetResourceLogLevelOutput
    SendDataToMulticastGroupInput: SendDataToMulticastGroupInput
    SendDataToMulticastGroupOutput: SendDataToMulticastGroupOutput
    SendDataToWirelessDeviceInput: SendDataToWirelessDeviceInput
    SendDataToWirelessDeviceOutput: SendDataToWirelessDeviceOutput
    StartBulkAssociateWirelessDeviceWithMulticastGroupInput: StartBulkAssociateWirelessDeviceWithMulticastGroupInput
    StartBulkAssociateWirelessDeviceWithMulticastGroupOutput: StartBulkAssociateWirelessDeviceWithMulticastGroupOutput
    StartBulkDisassociateWirelessDeviceFromMulticastGroupInput: StartBulkDisassociateWirelessDeviceFromMulticastGroupInput
    StartBulkDisassociateWirelessDeviceFromMulticastGroupOutput: StartBulkDisassociateWirelessDeviceFromMulticastGroupOutput
    StartFuotaTaskInput: StartFuotaTaskInput
    StartFuotaTaskOutput: StartFuotaTaskOutput
    StartMulticastGroupSessionInput: StartMulticastGroupSessionInput
    StartMulticastGroupSessionOutput: StartMulticastGroupSessionOutput
    StartSingleWirelessDeviceImportTaskInput: StartSingleWirelessDeviceImportTaskInput
    StartSingleWirelessDeviceImportTaskOutput: StartSingleWirelessDeviceImportTaskOutput
    StartWirelessDeviceImportTaskInput: StartWirelessDeviceImportTaskInput
    StartWirelessDeviceImportTaskOutput: StartWirelessDeviceImportTaskOutput
    TagResourceInput: TagResourceInput
    TagResourceOutput: TagResourceOutput
    TestWirelessDeviceInput: TestWirelessDeviceInput
    TestWirelessDeviceOutput: TestWirelessDeviceOutput
    UntagResourceInput: UntagResourceInput
    UntagResourceOutput: UntagResourceOutput
    UpdateDestinationInput: UpdateDestinationInput
    UpdateDestinationOutput: UpdateDestinationOutput
    UpdateEventConfigurationByResourceTypesInput: UpdateEventConfigurationByResourceTypesInput
    UpdateEventConfigurationByResourceTypesOutput: UpdateEventConfigurationByResourceTypesOutput
    UpdateFuotaTaskInput: UpdateFuotaTaskInput
    UpdateFuotaTaskOutput: UpdateFuotaTaskOutput
    UpdateLogLevelsByResourceTypesInput: UpdateLogLevelsByResourceTypesInput
    UpdateLogLevelsByResourceTypesOutput: UpdateLogLevelsByResourceTypesOutput
    UpdateMetricConfigurationInput: UpdateMetricConfigurationInput
    UpdateMetricConfigurationOutput: UpdateMetricConfigurationOutput
    UpdateMulticastGroupInput: UpdateMulticastGroupInput
    UpdateMulticastGroupOutput: UpdateMulticastGroupOutput
    UpdateNetworkAnalyzerConfigurationInput: UpdateNetworkAnalyzerConfigurationInput
    UpdateNetworkAnalyzerConfigurationOutput: UpdateNetworkAnalyzerConfigurationOutput
    UpdatePartnerAccountInput: UpdatePartnerAccountInput
    UpdatePartnerAccountOutput: UpdatePartnerAccountOutput
    UpdatePositionInput: UpdatePositionInput
    UpdatePositionOutput: UpdatePositionOutput
    UpdateResourceEventConfigurationInput: UpdateResourceEventConfigurationInput
    UpdateResourceEventConfigurationOutput: UpdateResourceEventConfigurationOutput
    UpdateResourcePositionInput: UpdateResourcePositionInput
    UpdateResourcePositionOutput: UpdateResourcePositionOutput
    UpdateWirelessDeviceInput: UpdateWirelessDeviceInput
    UpdateWirelessDeviceOutput: UpdateWirelessDeviceOutput
    UpdateWirelessDeviceImportTaskInput: UpdateWirelessDeviceImportTaskInput
    UpdateWirelessDeviceImportTaskOutput: UpdateWirelessDeviceImportTaskOutput
    UpdateWirelessGatewayInput: UpdateWirelessGatewayInput
    UpdateWirelessGatewayOutput: UpdateWirelessGatewayOutput
end

return M
