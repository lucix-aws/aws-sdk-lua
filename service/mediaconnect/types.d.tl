local record AddBridgeOutputsInput
    BridgeArn: string
    Outputs: {AddBridgeOutputRequest}
end

local record AddBridgeOutputsOutput
    BridgeArn: string
    Outputs: {BridgeOutput}
end

local record AddBridgeSourcesInput
    BridgeArn: string
    Sources: {AddBridgeSourceRequest}
end

local record AddBridgeSourcesOutput
    BridgeArn: string
    Sources: {BridgeSource}
end

local record AddFlowMediaStreamsInput
    FlowArn: string
    MediaStreams: {AddMediaStreamRequest}
end

local record AddFlowMediaStreamsOutput
    FlowArn: string
    MediaStreams: {MediaStream}
end

local record AddFlowOutputsInput
    FlowArn: string
    Outputs: {AddOutputRequest}
end

local record AddFlowOutputsOutput
    FlowArn: string
    Outputs: {Output}
end

local record AddFlowSourcesInput
    FlowArn: string
    Sources: {SetSourceRequest}
end

local record AddFlowSourcesOutput
    FlowArn: string
    Sources: {Source}
end

local record AddFlowVpcInterfacesInput
    FlowArn: string
    VpcInterfaces: {VpcInterfaceRequest}
end

local record AddFlowVpcInterfacesOutput
    FlowArn: string
    VpcInterfaces: {VpcInterface}
end

local record BatchGetRouterInputInput
    Arns: {string}
end

local record BatchGetRouterInputOutput
    RouterInputs: {RouterInput}
    Errors: {BatchGetRouterInputError}
end

local record BatchGetRouterNetworkInterfaceInput
    Arns: {string}
end

local record BatchGetRouterNetworkInterfaceOutput
    RouterNetworkInterfaces: {RouterNetworkInterface}
    Errors: {BatchGetRouterNetworkInterfaceError}
end

local record BatchGetRouterOutputInput
    Arns: {string}
end

local record BatchGetRouterOutputOutput
    RouterOutputs: {RouterOutput}
    Errors: {BatchGetRouterOutputError}
end

local record CreateBridgeInput
    EgressGatewayBridge: AddEgressGatewayBridgeRequest
    IngressGatewayBridge: AddIngressGatewayBridgeRequest
    Name: string
    Outputs: {AddBridgeOutputRequest}
    PlacementArn: string
    SourceFailoverConfig: FailoverConfig
    Sources: {AddBridgeSourceRequest}
end

local record CreateBridgeOutput
    Bridge: Bridge
end

local record CreateFlowInput
    AvailabilityZone: string
    Entitlements: {GrantEntitlementRequest}
    MediaStreams: {AddMediaStreamRequest}
    Name: string
    Outputs: {AddOutputRequest}
    Source: SetSourceRequest
    SourceFailoverConfig: FailoverConfig
    Sources: {SetSourceRequest}
    VpcInterfaces: {VpcInterfaceRequest}
    Maintenance: AddMaintenance
    SourceMonitoringConfig: MonitoringConfig
    FlowSize: string
    NdiConfig: NdiConfig
    EncodingConfig: EncodingConfig
    FlowTags: {string : string}
end

local record CreateFlowOutput
    Flow: Flow
end

local record CreateGatewayInput
    EgressCidrBlocks: {string}
    Name: string
    Networks: {GatewayNetwork}
end

local record CreateGatewayOutput
    Gateway: Gateway
end

local record CreateRouterInputInput
    Name: string
    Configuration: RouterInputConfiguration
    MaximumBitrate: number
    RoutingScope: string
    Tier: string
    RegionName: string
    AvailabilityZone: string
    TransitEncryption: RouterInputTransitEncryption
    MaintenanceConfiguration: MaintenanceConfiguration
    Tags: {string : string}
    ClientToken: string
end

local record CreateRouterInputOutput
    RouterInput: RouterInput
end

local record CreateRouterNetworkInterfaceInput
    Name: string
    Configuration: RouterNetworkInterfaceConfiguration
    RegionName: string
    Tags: {string : string}
    ClientToken: string
end

local record CreateRouterNetworkInterfaceOutput
    RouterNetworkInterface: RouterNetworkInterface
end

local record CreateRouterOutputInput
    Name: string
    Configuration: RouterOutputConfiguration
    MaximumBitrate: number
    RoutingScope: string
    Tier: string
    RegionName: string
    AvailabilityZone: string
    MaintenanceConfiguration: MaintenanceConfiguration
    Tags: {string : string}
    ClientToken: string
end

local record CreateRouterOutputOutput
    RouterOutput: RouterOutput
end

local record DeleteBridgeInput
    BridgeArn: string
end

local record DeleteBridgeOutput
    BridgeArn: string
end

local record DeleteFlowInput
    FlowArn: string
end

local record DeleteFlowOutput
    FlowArn: string
    Status: string
end

local record DeleteGatewayInput
    GatewayArn: string
end

local record DeleteGatewayOutput
    GatewayArn: string
end

local record DeleteRouterInputInput
    Arn: string
end

local record DeleteRouterInputOutput
    Arn: string
    Name: string
    State: string
end

local record DeleteRouterNetworkInterfaceInput
    Arn: string
end

local record DeleteRouterNetworkInterfaceOutput
    Arn: string
    Name: string
    State: string
end

local record DeleteRouterOutputInput
    Arn: string
end

local record DeleteRouterOutputOutput
    Arn: string
    Name: string
    State: string
end

local record DeregisterGatewayInstanceInput
    Force: boolean
    GatewayInstanceArn: string
end

local record DeregisterGatewayInstanceOutput
    GatewayInstanceArn: string
    InstanceState: string
end

local record DescribeBridgeInput
    BridgeArn: string
end

local record DescribeBridgeOutput
    Bridge: Bridge
end

local record DescribeFlowInput
    FlowArn: string
end

local record DescribeFlowOutput
    Flow: Flow
    Messages: Messages
end

local record DescribeFlowSourceMetadataInput
    FlowArn: string
end

local record DescribeFlowSourceMetadataOutput
    FlowArn: string
    Messages: {MessageDetail}
    Timestamp: number
    TransportMediaInfo: TransportMediaInfo
    NdiInfo: NdiSourceMetadataInfo
end

local record DescribeFlowSourceThumbnailInput
    FlowArn: string
end

local record DescribeFlowSourceThumbnailOutput
    ThumbnailDetails: ThumbnailDetails
end

local record DescribeGatewayInput
    GatewayArn: string
end

local record DescribeGatewayOutput
    Gateway: Gateway
end

local record DescribeGatewayInstanceInput
    GatewayInstanceArn: string
end

local record DescribeGatewayInstanceOutput
    GatewayInstance: GatewayInstance
end

local record DescribeOfferingInput
    OfferingArn: string
end

local record DescribeOfferingOutput
    Offering: Offering
end

local record DescribeReservationInput
    ReservationArn: string
end

local record DescribeReservationOutput
    Reservation: Reservation
end

local record GetRouterInputInput
    Arn: string
end

local record GetRouterInputOutput
    RouterInput: RouterInput
end

local record GetRouterInputSourceMetadataInput
    Arn: string
end

local record GetRouterInputSourceMetadataOutput
    Arn: string
    Name: string
    SourceMetadataDetails: RouterInputSourceMetadataDetails
end

local record GetRouterInputThumbnailInput
    Arn: string
end

local record GetRouterInputThumbnailOutput
    Arn: string
    Name: string
    ThumbnailDetails: RouterInputThumbnailDetails
end

local record GetRouterNetworkInterfaceInput
    Arn: string
end

local record GetRouterNetworkInterfaceOutput
    RouterNetworkInterface: RouterNetworkInterface
end

local record GetRouterOutputInput
    Arn: string
end

local record GetRouterOutputOutput
    RouterOutput: RouterOutput
end

local record GrantFlowEntitlementsInput
    Entitlements: {GrantEntitlementRequest}
    FlowArn: string
end

local record GrantFlowEntitlementsOutput
    Entitlements: {Entitlement}
    FlowArn: string
end

local record ListBridgesInput
    FilterArn: string
    MaxResults: number
    NextToken: string
end

local record ListBridgesOutput
    Bridges: {ListedBridge}
    NextToken: string
end

local record ListEntitlementsInput
    MaxResults: number
    NextToken: string
end

local record ListEntitlementsOutput
    Entitlements: {ListedEntitlement}
    NextToken: string
end

local record ListFlowsInput
    MaxResults: number
    NextToken: string
end

local record ListFlowsOutput
    Flows: {ListedFlow}
    NextToken: string
end

local record ListGatewayInstancesInput
    FilterArn: string
    MaxResults: number
    NextToken: string
end

local record ListGatewayInstancesOutput
    Instances: {ListedGatewayInstance}
    NextToken: string
end

local record ListGatewaysInput
    MaxResults: number
    NextToken: string
end

local record ListGatewaysOutput
    Gateways: {ListedGateway}
    NextToken: string
end

local record ListOfferingsInput
    MaxResults: number
    NextToken: string
end

local record ListOfferingsOutput
    NextToken: string
    Offerings: {Offering}
end

local record ListReservationsInput
    MaxResults: number
    NextToken: string
end

local record ListReservationsOutput
    NextToken: string
    Reservations: {Reservation}
end

local record ListRouterInputsInput
    MaxResults: number
    NextToken: string
    Filters: {RouterInputFilter}
end

local record ListRouterInputsOutput
    RouterInputs: {ListedRouterInput}
    NextToken: string
end

local record ListRouterNetworkInterfacesInput
    MaxResults: number
    NextToken: string
    Filters: {RouterNetworkInterfaceFilter}
end

local record ListRouterNetworkInterfacesOutput
    RouterNetworkInterfaces: {ListedRouterNetworkInterface}
    NextToken: string
end

local record ListRouterOutputsInput
    MaxResults: number
    NextToken: string
    Filters: {RouterOutputFilter}
end

local record ListRouterOutputsOutput
    RouterOutputs: {ListedRouterOutput}
    NextToken: string
end

local record ListTagsForGlobalResourceInput
    ResourceArn: string
end

local record ListTagsForGlobalResourceOutput
    Tags: {string : string}
end

local record ListTagsForResourceInput
    ResourceArn: string
end

local record ListTagsForResourceOutput
    Tags: {string : string}
end

local record PurchaseOfferingInput
    OfferingArn: string
    ReservationName: string
    Start: string
end

local record PurchaseOfferingOutput
    Reservation: Reservation
end

local record RemoveBridgeOutputInput
    BridgeArn: string
    OutputName: string
end

local record RemoveBridgeOutputOutput
    BridgeArn: string
    OutputName: string
end

local record RemoveBridgeSourceInput
    BridgeArn: string
    SourceName: string
end

local record RemoveBridgeSourceOutput
    BridgeArn: string
    SourceName: string
end

local record RemoveFlowMediaStreamInput
    FlowArn: string
    MediaStreamName: string
end

local record RemoveFlowMediaStreamOutput
    FlowArn: string
    MediaStreamName: string
end

local record RemoveFlowOutputInput
    FlowArn: string
    OutputArn: string
end

local record RemoveFlowOutputOutput
    FlowArn: string
    OutputArn: string
end

local record RemoveFlowSourceInput
    FlowArn: string
    SourceArn: string
end

local record RemoveFlowSourceOutput
    FlowArn: string
    SourceArn: string
end

local record RemoveFlowVpcInterfaceInput
    FlowArn: string
    VpcInterfaceName: string
end

local record RemoveFlowVpcInterfaceOutput
    FlowArn: string
    NonDeletedNetworkInterfaceIds: {string}
    VpcInterfaceName: string
end

local record RestartRouterInputInput
    Arn: string
end

local record RestartRouterInputOutput
    Arn: string
    Name: string
    State: string
end

local record RestartRouterOutputInput
    Arn: string
end

local record RestartRouterOutputOutput
    Arn: string
    Name: string
    State: string
end

local record RevokeFlowEntitlementInput
    EntitlementArn: string
    FlowArn: string
end

local record RevokeFlowEntitlementOutput
    EntitlementArn: string
    FlowArn: string
end

local record StartFlowInput
    FlowArn: string
end

local record StartFlowOutput
    FlowArn: string
    Status: string
end

local record StartRouterInputInput
    Arn: string
end

local record StartRouterInputOutput
    Arn: string
    Name: string
    State: string
    MaintenanceScheduleType: string
    MaintenanceSchedule: MaintenanceSchedule
end

local record StartRouterOutputInput
    Arn: string
end

local record StartRouterOutputOutput
    Arn: string
    Name: string
    State: string
    MaintenanceScheduleType: string
    MaintenanceSchedule: MaintenanceSchedule
end

local record StopFlowInput
    FlowArn: string
end

local record StopFlowOutput
    FlowArn: string
    Status: string
end

local record StopRouterInputInput
    Arn: string
end

local record StopRouterInputOutput
    Arn: string
    Name: string
    State: string
end

local record StopRouterOutputInput
    Arn: string
end

local record StopRouterOutputOutput
    Arn: string
    Name: string
    State: string
end

local record TagGlobalResourceInput
    ResourceArn: string
    Tags: {string : string}
end

local record TagGlobalResourceOutput
end

local record TagResourceInput
    ResourceArn: string
    Tags: {string : string}
end

local record TagResourceOutput
end

local record TakeRouterInputInput
    RouterOutputArn: string
    RouterInputArn: string
end

local record TakeRouterInputOutput
    RoutedState: string
    RouterOutputArn: string
    RouterOutputName: string
    RouterInputArn: string
    RouterInputName: string
end

local record UntagGlobalResourceInput
    ResourceArn: string
    TagKeys: {string}
end

local record UntagGlobalResourceOutput
end

local record UntagResourceInput
    ResourceArn: string
    TagKeys: {string}
end

local record UntagResourceOutput
end

local record UpdateBridgeInput
    BridgeArn: string
    EgressGatewayBridge: UpdateEgressGatewayBridgeRequest
    IngressGatewayBridge: UpdateIngressGatewayBridgeRequest
    SourceFailoverConfig: UpdateFailoverConfig
end

local record UpdateBridgeOperationOutput
    Bridge: Bridge
end

local record UpdateBridgeOutputInput
    BridgeArn: string
    NetworkOutput: UpdateBridgeNetworkOutputRequest
    OutputName: string
end

local record UpdateBridgeOutputOutput
    BridgeArn: string
    Output: BridgeOutput
end

local record UpdateBridgeSourceInput
    BridgeArn: string
    FlowSource: UpdateBridgeFlowSourceRequest
    NetworkSource: UpdateBridgeNetworkSourceRequest
    SourceName: string
end

local record UpdateBridgeSourceOutput
    BridgeArn: string
    Source: BridgeSource
end

local record UpdateBridgeStateInput
    BridgeArn: string
    DesiredState: string
end

local record UpdateBridgeStateOutput
    BridgeArn: string
    DesiredState: string
end

local record UpdateFlowInput
    FlowArn: string
    SourceFailoverConfig: UpdateFailoverConfig
    Maintenance: UpdateMaintenance
    SourceMonitoringConfig: MonitoringConfig
    NdiConfig: NdiConfig
    FlowSize: string
    EncodingConfig: EncodingConfig
end

local record UpdateFlowOperationOutput
    Flow: Flow
end

local record UpdateFlowEntitlementInput
    Description: string
    Encryption: UpdateEncryption
    EntitlementArn: string
    EntitlementStatus: string
    FlowArn: string
    Subscribers: {string}
end

local record UpdateFlowEntitlementOutput
    Entitlement: Entitlement
    FlowArn: string
end

local record UpdateFlowMediaStreamInput
    Attributes: MediaStreamAttributesRequest
    ClockRate: number
    Description: string
    FlowArn: string
    MediaStreamName: string
    MediaStreamType: string
    VideoFormat: string
end

local record UpdateFlowMediaStreamOutput
    FlowArn: string
    MediaStream: MediaStream
end

local record UpdateFlowOutputInput
    CidrAllowList: {string}
    Description: string
    Destination: string
    Encryption: UpdateEncryption
    FlowArn: string
    MaxLatency: number
    MediaStreamOutputConfigurations: {MediaStreamOutputConfigurationRequest}
    MinLatency: number
    OutputArn: string
    Port: number
    Protocol: string
    RemoteId: string
    SenderControlPort: number
    SenderIpAddress: string
    SmoothingLatency: number
    StreamId: string
    VpcInterfaceAttachment: VpcInterfaceAttachment
    OutputStatus: string
    NdiProgramName: string
    NdiSpeedHqQuality: number
    RouterIntegrationState: string
    RouterIntegrationTransitEncryption: FlowTransitEncryption
end

local record UpdateFlowOutputOutput
    FlowArn: string
    Output: Output
end

local record UpdateFlowSourceInput
    Decryption: UpdateEncryption
    Description: string
    EntitlementArn: string
    FlowArn: string
    IngestPort: number
    MaxBitrate: number
    MaxLatency: number
    MaxSyncBuffer: number
    MediaStreamSourceConfigurations: {MediaStreamSourceConfigurationRequest}
    MinLatency: number
    Protocol: string
    SenderControlPort: number
    SenderIpAddress: string
    SourceArn: string
    SourceListenerAddress: string
    SourceListenerPort: number
    StreamId: string
    VpcInterfaceName: string
    WhitelistCidr: string
    GatewayBridgeSource: UpdateGatewayBridgeSourceRequest
    NdiSourceSettings: NdiSourceSettings
    RouterIntegrationState: string
    RouterIntegrationTransitDecryption: FlowTransitEncryption
end

local record UpdateFlowSourceOutput
    FlowArn: string
    Source: Source
end

local record UpdateGatewayInstanceInput
    BridgePlacement: string
    GatewayInstanceArn: string
end

local record UpdateGatewayInstanceOutput
    BridgePlacement: string
    GatewayInstanceArn: string
end

local record UpdateRouterInputInput
    Arn: string
    Name: string
    Configuration: RouterInputConfiguration
    MaximumBitrate: number
    RoutingScope: string
    Tier: string
    TransitEncryption: RouterInputTransitEncryption
    MaintenanceConfiguration: MaintenanceConfiguration
end

local record UpdateRouterInputOutput
    RouterInput: RouterInput
end

local record UpdateRouterNetworkInterfaceInput
    Arn: string
    Name: string
    Configuration: RouterNetworkInterfaceConfiguration
end

local record UpdateRouterNetworkInterfaceOutput
    RouterNetworkInterface: RouterNetworkInterface
end

local record UpdateRouterOutputInput
    Arn: string
    Name: string
    Configuration: RouterOutputConfiguration
    MaximumBitrate: number
    RoutingScope: string
    Tier: string
    MaintenanceConfiguration: MaintenanceConfiguration
end

local record UpdateRouterOutputOutput
    RouterOutput: RouterOutput
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

local record ServiceUnavailableException
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

local record ServiceUnavailableException
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

local record ServiceUnavailableException
    Message: string
end

local record TooManyRequestsException
    Message: string
end

local record AddFlowOutputs420Exception
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

local record ServiceUnavailableException
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

local record ServiceUnavailableException
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

local record ServiceUnavailableException
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

local record InternalServerErrorException
    Message: string
end

local record ServiceUnavailableException
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

local record InternalServerErrorException
    Message: string
end

local record ServiceUnavailableException
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

local record InternalServerErrorException
    Message: string
end

local record ServiceUnavailableException
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

local record CreateBridge420Exception
    Message: string
end

local record ForbiddenException
    Message: string
end

local record InternalServerErrorException
    Message: string
end

local record ServiceUnavailableException
    Message: string
end

local record TooManyRequestsException
    Message: string
end

local record BadRequestException
    Message: string
end

local record CreateFlow420Exception
    Message: string
end

local record ForbiddenException
    Message: string
end

local record InternalServerErrorException
    Message: string
end

local record ServiceUnavailableException
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

local record CreateGateway420Exception
    Message: string
end

local record ForbiddenException
    Message: string
end

local record InternalServerErrorException
    Message: string
end

local record ServiceUnavailableException
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

local record RouterInputServiceQuotaExceededException
    Message: string
end

local record ServiceUnavailableException
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

local record RouterNetworkInterfaceServiceQuotaExceededException
    Message: string
end

local record ServiceUnavailableException
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

local record RouterOutputServiceQuotaExceededException
    Message: string
end

local record ServiceUnavailableException
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

local record ServiceUnavailableException
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

local record ServiceUnavailableException
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

local record ServiceUnavailableException
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

local record ServiceUnavailableException
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

local record ServiceUnavailableException
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

local record ServiceUnavailableException
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

local record ServiceUnavailableException
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

local record ServiceUnavailableException
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

local record ServiceUnavailableException
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

local record ServiceUnavailableException
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

local record ServiceUnavailableException
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

local record ServiceUnavailableException
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

local record ServiceUnavailableException
    Message: string
end

local record TooManyRequestsException
    Message: string
end

local record BadRequestException
    Message: string
end

local record InternalServerErrorException
    Message: string
end

local record NotFoundException
    Message: string
end

local record ServiceUnavailableException
    Message: string
end

local record TooManyRequestsException
    Message: string
end

local record BadRequestException
    Message: string
end

local record InternalServerErrorException
    Message: string
end

local record NotFoundException
    Message: string
end

local record ServiceUnavailableException
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

local record ServiceUnavailableException
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

local record ServiceUnavailableException
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

local record ServiceUnavailableException
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

local record ServiceUnavailableException
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

local record ServiceUnavailableException
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

local record GrantFlowEntitlements420Exception
    Message: string
end

local record InternalServerErrorException
    Message: string
end

local record NotFoundException
    Message: string
end

local record ServiceUnavailableException
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

local record InternalServerErrorException
    Message: string
end

local record ServiceUnavailableException
    Message: string
end

local record TooManyRequestsException
    Message: string
end

local record BadRequestException
    Message: string
end

local record InternalServerErrorException
    Message: string
end

local record ServiceUnavailableException
    Message: string
end

local record TooManyRequestsException
    Message: string
end

local record BadRequestException
    Message: string
end

local record InternalServerErrorException
    Message: string
end

local record ServiceUnavailableException
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

local record InternalServerErrorException
    Message: string
end

local record ServiceUnavailableException
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

local record InternalServerErrorException
    Message: string
end

local record ServiceUnavailableException
    Message: string
end

local record TooManyRequestsException
    Message: string
end

local record BadRequestException
    Message: string
end

local record InternalServerErrorException
    Message: string
end

local record ServiceUnavailableException
    Message: string
end

local record TooManyRequestsException
    Message: string
end

local record BadRequestException
    Message: string
end

local record InternalServerErrorException
    Message: string
end

local record ServiceUnavailableException
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

local record InternalServerErrorException
    Message: string
end

local record ServiceUnavailableException
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

local record InternalServerErrorException
    Message: string
end

local record ServiceUnavailableException
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

local record InternalServerErrorException
    Message: string
end

local record ServiceUnavailableException
    Message: string
end

local record TooManyRequestsException
    Message: string
end

local record BadRequestException
    Message: string
end

local record InternalServerErrorException
    Message: string
end

local record NotFoundException
    Message: string
end

local record BadRequestException
    Message: string
end

local record InternalServerErrorException
    Message: string
end

local record NotFoundException
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

local record ServiceUnavailableException
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

local record ServiceUnavailableException
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

local record ServiceUnavailableException
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

local record ServiceUnavailableException
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

local record ServiceUnavailableException
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

local record ServiceUnavailableException
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

local record ServiceUnavailableException
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

local record ServiceUnavailableException
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

local record ServiceUnavailableException
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

local record ServiceUnavailableException
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

local record ServiceUnavailableException
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

local record ServiceUnavailableException
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

local record ServiceUnavailableException
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

local record ServiceUnavailableException
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

local record ServiceUnavailableException
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

local record ServiceUnavailableException
    Message: string
end

local record TooManyRequestsException
    Message: string
end

local record BadRequestException
    Message: string
end

local record InternalServerErrorException
    Message: string
end

local record NotFoundException
    Message: string
end

local record BadRequestException
    Message: string
end

local record InternalServerErrorException
    Message: string
end

local record NotFoundException
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

local record ServiceUnavailableException
    Message: string
end

local record TooManyRequestsException
    Message: string
end

local record BadRequestException
    Message: string
end

local record InternalServerErrorException
    Message: string
end

local record NotFoundException
    Message: string
end

local record BadRequestException
    Message: string
end

local record InternalServerErrorException
    Message: string
end

local record NotFoundException
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

local record ServiceUnavailableException
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

local record ServiceUnavailableException
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

local record ServiceUnavailableException
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

local record ServiceUnavailableException
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

local record ServiceUnavailableException
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

local record ServiceUnavailableException
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

local record ServiceUnavailableException
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

local record ServiceUnavailableException
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

local record ServiceUnavailableException
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

local record ServiceUnavailableException
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

local record ServiceUnavailableException
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

local record ServiceUnavailableException
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

local record ServiceUnavailableException
    Message: string
end

local record TooManyRequestsException
    Message: string
end

local type RouterInputState = "CREATING" | "STANDBY" | "STARTING" | "ACTIVE" | "STOPPING" | "DELETING" | "UPDATING" | "ERROR" | "RECOVERING" | "MIGRATING"

local type RouterOutputTier = "OUTPUT_100" | "OUTPUT_50" | "OUTPUT_20"

local type RouterInputTier = "INPUT_100" | "INPUT_50" | "INPUT_20"

local type Protocol = "zixi-push" | "rtp-fec" | "rtp" | "zixi-pull" | "rist" | "st2110-jpegxs" | "cdi" | "srt-listener" | "srt-caller" | "fujitsu-qos" | "udp" | "ndi-speed-hq"

local type BridgePlacement = "AVAILABLE" | "LOCKED"

local type RouterNetworkInterfaceState = "CREATING" | "ACTIVE" | "UPDATING" | "DELETING" | "ERROR" | "RECOVERING"

local type InstanceState = "REGISTERING" | "ACTIVE" | "DEREGISTERING" | "DEREGISTERED" | "REGISTRATION_ERROR" | "DEREGISTRATION_ERROR"

local type Status = "STANDBY" | "ACTIVE" | "UPDATING" | "DELETING" | "STARTING" | "STOPPING" | "ERROR"

local type MaintenanceScheduleType = "WINDOW"

local type OutputStatus = "ENABLED" | "DISABLED"

local type State = "ENABLED" | "DISABLED"

local type RoutingScope = "REGIONAL" | "GLOBAL"

local type RouterOutputRoutedState = "ROUTED" | "ROUTING" | "UNROUTED"

local type EntitlementStatus = "ENABLED" | "DISABLED"

local type RouterOutputState = "CREATING" | "STANDBY" | "STARTING" | "ACTIVE" | "STOPPING" | "DELETING" | "UPDATING" | "ERROR" | "RECOVERING" | "MIGRATING"

local type DesiredState = "ACTIVE" | "STANDBY" | "DELETED"

local type FlowSize = "MEDIUM" | "LARGE" | "LARGE_4X"

local type MediaStreamType = "video" | "audio" | "ancillary-data"

local record M
    AddBridgeOutputsInput: AddBridgeOutputsInput
    AddBridgeOutputsOutput: AddBridgeOutputsOutput
    AddBridgeSourcesInput: AddBridgeSourcesInput
    AddBridgeSourcesOutput: AddBridgeSourcesOutput
    AddFlowMediaStreamsInput: AddFlowMediaStreamsInput
    AddFlowMediaStreamsOutput: AddFlowMediaStreamsOutput
    AddFlowOutputsInput: AddFlowOutputsInput
    AddFlowOutputsOutput: AddFlowOutputsOutput
    AddFlowSourcesInput: AddFlowSourcesInput
    AddFlowSourcesOutput: AddFlowSourcesOutput
    AddFlowVpcInterfacesInput: AddFlowVpcInterfacesInput
    AddFlowVpcInterfacesOutput: AddFlowVpcInterfacesOutput
    BatchGetRouterInputInput: BatchGetRouterInputInput
    BatchGetRouterInputOutput: BatchGetRouterInputOutput
    BatchGetRouterNetworkInterfaceInput: BatchGetRouterNetworkInterfaceInput
    BatchGetRouterNetworkInterfaceOutput: BatchGetRouterNetworkInterfaceOutput
    BatchGetRouterOutputInput: BatchGetRouterOutputInput
    BatchGetRouterOutputOutput: BatchGetRouterOutputOutput
    CreateBridgeInput: CreateBridgeInput
    CreateBridgeOutput: CreateBridgeOutput
    CreateFlowInput: CreateFlowInput
    CreateFlowOutput: CreateFlowOutput
    CreateGatewayInput: CreateGatewayInput
    CreateGatewayOutput: CreateGatewayOutput
    CreateRouterInputInput: CreateRouterInputInput
    CreateRouterInputOutput: CreateRouterInputOutput
    CreateRouterNetworkInterfaceInput: CreateRouterNetworkInterfaceInput
    CreateRouterNetworkInterfaceOutput: CreateRouterNetworkInterfaceOutput
    CreateRouterOutputInput: CreateRouterOutputInput
    CreateRouterOutputOutput: CreateRouterOutputOutput
    DeleteBridgeInput: DeleteBridgeInput
    DeleteBridgeOutput: DeleteBridgeOutput
    DeleteFlowInput: DeleteFlowInput
    DeleteFlowOutput: DeleteFlowOutput
    DeleteGatewayInput: DeleteGatewayInput
    DeleteGatewayOutput: DeleteGatewayOutput
    DeleteRouterInputInput: DeleteRouterInputInput
    DeleteRouterInputOutput: DeleteRouterInputOutput
    DeleteRouterNetworkInterfaceInput: DeleteRouterNetworkInterfaceInput
    DeleteRouterNetworkInterfaceOutput: DeleteRouterNetworkInterfaceOutput
    DeleteRouterOutputInput: DeleteRouterOutputInput
    DeleteRouterOutputOutput: DeleteRouterOutputOutput
    DeregisterGatewayInstanceInput: DeregisterGatewayInstanceInput
    DeregisterGatewayInstanceOutput: DeregisterGatewayInstanceOutput
    DescribeBridgeInput: DescribeBridgeInput
    DescribeBridgeOutput: DescribeBridgeOutput
    DescribeFlowInput: DescribeFlowInput
    DescribeFlowOutput: DescribeFlowOutput
    DescribeFlowSourceMetadataInput: DescribeFlowSourceMetadataInput
    DescribeFlowSourceMetadataOutput: DescribeFlowSourceMetadataOutput
    DescribeFlowSourceThumbnailInput: DescribeFlowSourceThumbnailInput
    DescribeFlowSourceThumbnailOutput: DescribeFlowSourceThumbnailOutput
    DescribeGatewayInput: DescribeGatewayInput
    DescribeGatewayOutput: DescribeGatewayOutput
    DescribeGatewayInstanceInput: DescribeGatewayInstanceInput
    DescribeGatewayInstanceOutput: DescribeGatewayInstanceOutput
    DescribeOfferingInput: DescribeOfferingInput
    DescribeOfferingOutput: DescribeOfferingOutput
    DescribeReservationInput: DescribeReservationInput
    DescribeReservationOutput: DescribeReservationOutput
    GetRouterInputInput: GetRouterInputInput
    GetRouterInputOutput: GetRouterInputOutput
    GetRouterInputSourceMetadataInput: GetRouterInputSourceMetadataInput
    GetRouterInputSourceMetadataOutput: GetRouterInputSourceMetadataOutput
    GetRouterInputThumbnailInput: GetRouterInputThumbnailInput
    GetRouterInputThumbnailOutput: GetRouterInputThumbnailOutput
    GetRouterNetworkInterfaceInput: GetRouterNetworkInterfaceInput
    GetRouterNetworkInterfaceOutput: GetRouterNetworkInterfaceOutput
    GetRouterOutputInput: GetRouterOutputInput
    GetRouterOutputOutput: GetRouterOutputOutput
    GrantFlowEntitlementsInput: GrantFlowEntitlementsInput
    GrantFlowEntitlementsOutput: GrantFlowEntitlementsOutput
    ListBridgesInput: ListBridgesInput
    ListBridgesOutput: ListBridgesOutput
    ListEntitlementsInput: ListEntitlementsInput
    ListEntitlementsOutput: ListEntitlementsOutput
    ListFlowsInput: ListFlowsInput
    ListFlowsOutput: ListFlowsOutput
    ListGatewayInstancesInput: ListGatewayInstancesInput
    ListGatewayInstancesOutput: ListGatewayInstancesOutput
    ListGatewaysInput: ListGatewaysInput
    ListGatewaysOutput: ListGatewaysOutput
    ListOfferingsInput: ListOfferingsInput
    ListOfferingsOutput: ListOfferingsOutput
    ListReservationsInput: ListReservationsInput
    ListReservationsOutput: ListReservationsOutput
    ListRouterInputsInput: ListRouterInputsInput
    ListRouterInputsOutput: ListRouterInputsOutput
    ListRouterNetworkInterfacesInput: ListRouterNetworkInterfacesInput
    ListRouterNetworkInterfacesOutput: ListRouterNetworkInterfacesOutput
    ListRouterOutputsInput: ListRouterOutputsInput
    ListRouterOutputsOutput: ListRouterOutputsOutput
    ListTagsForGlobalResourceInput: ListTagsForGlobalResourceInput
    ListTagsForGlobalResourceOutput: ListTagsForGlobalResourceOutput
    ListTagsForResourceInput: ListTagsForResourceInput
    ListTagsForResourceOutput: ListTagsForResourceOutput
    PurchaseOfferingInput: PurchaseOfferingInput
    PurchaseOfferingOutput: PurchaseOfferingOutput
    RemoveBridgeOutputInput: RemoveBridgeOutputInput
    RemoveBridgeOutputOutput: RemoveBridgeOutputOutput
    RemoveBridgeSourceInput: RemoveBridgeSourceInput
    RemoveBridgeSourceOutput: RemoveBridgeSourceOutput
    RemoveFlowMediaStreamInput: RemoveFlowMediaStreamInput
    RemoveFlowMediaStreamOutput: RemoveFlowMediaStreamOutput
    RemoveFlowOutputInput: RemoveFlowOutputInput
    RemoveFlowOutputOutput: RemoveFlowOutputOutput
    RemoveFlowSourceInput: RemoveFlowSourceInput
    RemoveFlowSourceOutput: RemoveFlowSourceOutput
    RemoveFlowVpcInterfaceInput: RemoveFlowVpcInterfaceInput
    RemoveFlowVpcInterfaceOutput: RemoveFlowVpcInterfaceOutput
    RestartRouterInputInput: RestartRouterInputInput
    RestartRouterInputOutput: RestartRouterInputOutput
    RestartRouterOutputInput: RestartRouterOutputInput
    RestartRouterOutputOutput: RestartRouterOutputOutput
    RevokeFlowEntitlementInput: RevokeFlowEntitlementInput
    RevokeFlowEntitlementOutput: RevokeFlowEntitlementOutput
    StartFlowInput: StartFlowInput
    StartFlowOutput: StartFlowOutput
    StartRouterInputInput: StartRouterInputInput
    StartRouterInputOutput: StartRouterInputOutput
    StartRouterOutputInput: StartRouterOutputInput
    StartRouterOutputOutput: StartRouterOutputOutput
    StopFlowInput: StopFlowInput
    StopFlowOutput: StopFlowOutput
    StopRouterInputInput: StopRouterInputInput
    StopRouterInputOutput: StopRouterInputOutput
    StopRouterOutputInput: StopRouterOutputInput
    StopRouterOutputOutput: StopRouterOutputOutput
    TagGlobalResourceInput: TagGlobalResourceInput
    TagGlobalResourceOutput: TagGlobalResourceOutput
    TagResourceInput: TagResourceInput
    TagResourceOutput: TagResourceOutput
    TakeRouterInputInput: TakeRouterInputInput
    TakeRouterInputOutput: TakeRouterInputOutput
    UntagGlobalResourceInput: UntagGlobalResourceInput
    UntagGlobalResourceOutput: UntagGlobalResourceOutput
    UntagResourceInput: UntagResourceInput
    UntagResourceOutput: UntagResourceOutput
    UpdateBridgeInput: UpdateBridgeInput
    UpdateBridgeOperationOutput: UpdateBridgeOperationOutput
    UpdateBridgeOutputInput: UpdateBridgeOutputInput
    UpdateBridgeOutputOutput: UpdateBridgeOutputOutput
    UpdateBridgeSourceInput: UpdateBridgeSourceInput
    UpdateBridgeSourceOutput: UpdateBridgeSourceOutput
    UpdateBridgeStateInput: UpdateBridgeStateInput
    UpdateBridgeStateOutput: UpdateBridgeStateOutput
    UpdateFlowInput: UpdateFlowInput
    UpdateFlowOperationOutput: UpdateFlowOperationOutput
    UpdateFlowEntitlementInput: UpdateFlowEntitlementInput
    UpdateFlowEntitlementOutput: UpdateFlowEntitlementOutput
    UpdateFlowMediaStreamInput: UpdateFlowMediaStreamInput
    UpdateFlowMediaStreamOutput: UpdateFlowMediaStreamOutput
    UpdateFlowOutputInput: UpdateFlowOutputInput
    UpdateFlowOutputOutput: UpdateFlowOutputOutput
    UpdateFlowSourceInput: UpdateFlowSourceInput
    UpdateFlowSourceOutput: UpdateFlowSourceOutput
    UpdateGatewayInstanceInput: UpdateGatewayInstanceInput
    UpdateGatewayInstanceOutput: UpdateGatewayInstanceOutput
    UpdateRouterInputInput: UpdateRouterInputInput
    UpdateRouterInputOutput: UpdateRouterInputOutput
    UpdateRouterNetworkInterfaceInput: UpdateRouterNetworkInterfaceInput
    UpdateRouterNetworkInterfaceOutput: UpdateRouterNetworkInterfaceOutput
    UpdateRouterOutputInput: UpdateRouterOutputInput
    UpdateRouterOutputOutput: UpdateRouterOutputOutput
end

return M
