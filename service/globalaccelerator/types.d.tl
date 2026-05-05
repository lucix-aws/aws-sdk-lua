local record AddCustomRoutingEndpointsInput
    EndpointConfigurations: {CustomRoutingEndpointConfiguration}
    EndpointGroupArn: string
end

local record AddCustomRoutingEndpointsOutput
    EndpointDescriptions: {CustomRoutingEndpointDescription}
    EndpointGroupArn: string
end

local record AddEndpointsInput
    EndpointConfigurations: {EndpointConfiguration}
    EndpointGroupArn: string
end

local record AddEndpointsOutput
    EndpointDescriptions: {EndpointDescription}
    EndpointGroupArn: string
end

local record AdvertiseByoipCidrInput
    Cidr: string
end

local record AdvertiseByoipCidrOutput
    ByoipCidr: ByoipCidr
end

local record AllowCustomRoutingTrafficInput
    EndpointGroupArn: string
    EndpointId: string
    DestinationAddresses: {string}
    DestinationPorts: {number}
    AllowAllTrafficToEndpoint: boolean
end

local record AllowCustomRoutingTrafficOutput
end

local record CreateAcceleratorInput
    Name: string
    IpAddressType: string
    IpAddresses: {string}
    Enabled: boolean
    IdempotencyToken: string
    Tags: {Tag}
end

local record CreateAcceleratorOutput
    Accelerator: Accelerator
end

local record CreateCrossAccountAttachmentInput
    Name: string
    Principals: {string}
    Resources: {Resource}
    IdempotencyToken: string
    Tags: {Tag}
end

local record CreateCrossAccountAttachmentOutput
    CrossAccountAttachment: Attachment
end

local record CreateCustomRoutingAcceleratorInput
    Name: string
    IpAddressType: string
    IpAddresses: {string}
    Enabled: boolean
    IdempotencyToken: string
    Tags: {Tag}
end

local record CreateCustomRoutingAcceleratorOutput
    Accelerator: CustomRoutingAccelerator
end

local record CreateCustomRoutingEndpointGroupInput
    ListenerArn: string
    EndpointGroupRegion: string
    DestinationConfigurations: {CustomRoutingDestinationConfiguration}
    IdempotencyToken: string
end

local record CreateCustomRoutingEndpointGroupOutput
    EndpointGroup: CustomRoutingEndpointGroup
end

local record CreateCustomRoutingListenerInput
    AcceleratorArn: string
    PortRanges: {PortRange}
    IdempotencyToken: string
end

local record CreateCustomRoutingListenerOutput
    Listener: CustomRoutingListener
end

local record CreateEndpointGroupInput
    ListenerArn: string
    EndpointGroupRegion: string
    EndpointConfigurations: {EndpointConfiguration}
    TrafficDialPercentage: number
    HealthCheckPort: number
    HealthCheckProtocol: string
    HealthCheckPath: string
    HealthCheckIntervalSeconds: number
    ThresholdCount: number
    IdempotencyToken: string
    PortOverrides: {PortOverride}
end

local record CreateEndpointGroupOutput
    EndpointGroup: EndpointGroup
end

local record CreateListenerInput
    AcceleratorArn: string
    PortRanges: {PortRange}
    Protocol: string
    ClientAffinity: string
    IdempotencyToken: string
end

local record CreateListenerOutput
    Listener: Listener
end

local record DeleteAcceleratorInput
    AcceleratorArn: string
end

local record DeleteAcceleratorOutput
end

local record DeleteCrossAccountAttachmentInput
    AttachmentArn: string
end

local record DeleteCrossAccountAttachmentOutput
end

local record DeleteCustomRoutingAcceleratorInput
    AcceleratorArn: string
end

local record DeleteCustomRoutingAcceleratorOutput
end

local record DeleteCustomRoutingEndpointGroupInput
    EndpointGroupArn: string
end

local record DeleteCustomRoutingEndpointGroupOutput
end

local record DeleteCustomRoutingListenerInput
    ListenerArn: string
end

local record DeleteCustomRoutingListenerOutput
end

local record DeleteEndpointGroupInput
    EndpointGroupArn: string
end

local record DeleteEndpointGroupOutput
end

local record DeleteListenerInput
    ListenerArn: string
end

local record DeleteListenerOutput
end

local record DenyCustomRoutingTrafficInput
    EndpointGroupArn: string
    EndpointId: string
    DestinationAddresses: {string}
    DestinationPorts: {number}
    DenyAllTrafficToEndpoint: boolean
end

local record DenyCustomRoutingTrafficOutput
end

local record DeprovisionByoipCidrInput
    Cidr: string
end

local record DeprovisionByoipCidrOutput
    ByoipCidr: ByoipCidr
end

local record DescribeAcceleratorInput
    AcceleratorArn: string
end

local record DescribeAcceleratorOutput
    Accelerator: Accelerator
end

local record DescribeAcceleratorAttributesInput
    AcceleratorArn: string
end

local record DescribeAcceleratorAttributesOutput
    AcceleratorAttributes: AcceleratorAttributes
end

local record DescribeCrossAccountAttachmentInput
    AttachmentArn: string
end

local record DescribeCrossAccountAttachmentOutput
    CrossAccountAttachment: Attachment
end

local record DescribeCustomRoutingAcceleratorInput
    AcceleratorArn: string
end

local record DescribeCustomRoutingAcceleratorOutput
    Accelerator: CustomRoutingAccelerator
end

local record DescribeCustomRoutingAcceleratorAttributesInput
    AcceleratorArn: string
end

local record DescribeCustomRoutingAcceleratorAttributesOutput
    AcceleratorAttributes: CustomRoutingAcceleratorAttributes
end

local record DescribeCustomRoutingEndpointGroupInput
    EndpointGroupArn: string
end

local record DescribeCustomRoutingEndpointGroupOutput
    EndpointGroup: CustomRoutingEndpointGroup
end

local record DescribeCustomRoutingListenerInput
    ListenerArn: string
end

local record DescribeCustomRoutingListenerOutput
    Listener: CustomRoutingListener
end

local record DescribeEndpointGroupInput
    EndpointGroupArn: string
end

local record DescribeEndpointGroupOutput
    EndpointGroup: EndpointGroup
end

local record DescribeListenerInput
    ListenerArn: string
end

local record DescribeListenerOutput
    Listener: Listener
end

local record ListAcceleratorsInput
    MaxResults: number
    NextToken: string
end

local record ListAcceleratorsOutput
    Accelerators: {Accelerator}
    NextToken: string
end

local record ListByoipCidrsInput
    MaxResults: number
    NextToken: string
end

local record ListByoipCidrsOutput
    ByoipCidrs: {ByoipCidr}
    NextToken: string
end

local record ListCrossAccountAttachmentsInput
    MaxResults: number
    NextToken: string
end

local record ListCrossAccountAttachmentsOutput
    CrossAccountAttachments: {Attachment}
    NextToken: string
end

local record ListCrossAccountResourceAccountsInput
end

local record ListCrossAccountResourceAccountsOutput
    ResourceOwnerAwsAccountIds: {string}
end

local record ListCrossAccountResourcesInput
    AcceleratorArn: string
    ResourceOwnerAwsAccountId: string
    MaxResults: number
    NextToken: string
end

local record ListCrossAccountResourcesOutput
    CrossAccountResources: {CrossAccountResource}
    NextToken: string
end

local record ListCustomRoutingAcceleratorsInput
    MaxResults: number
    NextToken: string
end

local record ListCustomRoutingAcceleratorsOutput
    Accelerators: {CustomRoutingAccelerator}
    NextToken: string
end

local record ListCustomRoutingEndpointGroupsInput
    ListenerArn: string
    MaxResults: number
    NextToken: string
end

local record ListCustomRoutingEndpointGroupsOutput
    EndpointGroups: {CustomRoutingEndpointGroup}
    NextToken: string
end

local record ListCustomRoutingListenersInput
    AcceleratorArn: string
    MaxResults: number
    NextToken: string
end

local record ListCustomRoutingListenersOutput
    Listeners: {CustomRoutingListener}
    NextToken: string
end

local record ListCustomRoutingPortMappingsInput
    AcceleratorArn: string
    EndpointGroupArn: string
    MaxResults: number
    NextToken: string
end

local record ListCustomRoutingPortMappingsOutput
    PortMappings: {PortMapping}
    NextToken: string
end

local record ListCustomRoutingPortMappingsByDestinationInput
    EndpointId: string
    DestinationAddress: string
    MaxResults: number
    NextToken: string
end

local record ListCustomRoutingPortMappingsByDestinationOutput
    DestinationPortMappings: {DestinationPortMapping}
    NextToken: string
end

local record ListEndpointGroupsInput
    ListenerArn: string
    MaxResults: number
    NextToken: string
end

local record ListEndpointGroupsOutput
    EndpointGroups: {EndpointGroup}
    NextToken: string
end

local record ListListenersInput
    AcceleratorArn: string
    MaxResults: number
    NextToken: string
end

local record ListListenersOutput
    Listeners: {Listener}
    NextToken: string
end

local record ListTagsForResourceInput
    ResourceArn: string
end

local record ListTagsForResourceOutput
    Tags: {Tag}
end

local record ProvisionByoipCidrInput
    Cidr: string
    CidrAuthorizationContext: CidrAuthorizationContext
end

local record ProvisionByoipCidrOutput
    ByoipCidr: ByoipCidr
end

local record RemoveCustomRoutingEndpointsInput
    EndpointIds: {string}
    EndpointGroupArn: string
end

local record RemoveCustomRoutingEndpointsOutput
end

local record RemoveEndpointsInput
    EndpointIdentifiers: {EndpointIdentifier}
    EndpointGroupArn: string
end

local record RemoveEndpointsOutput
end

local record TagResourceInput
    ResourceArn: string
    Tags: {Tag}
end

local record TagResourceOutput
end

local record UntagResourceInput
    ResourceArn: string
    TagKeys: {string}
end

local record UntagResourceOutput
end

local record UpdateAcceleratorInput
    AcceleratorArn: string
    Name: string
    IpAddressType: string
    IpAddresses: {string}
    Enabled: boolean
end

local record UpdateAcceleratorOutput
    Accelerator: Accelerator
end

local record UpdateAcceleratorAttributesInput
    AcceleratorArn: string
    FlowLogsEnabled: boolean
    FlowLogsS3Bucket: string
    FlowLogsS3Prefix: string
end

local record UpdateAcceleratorAttributesOutput
    AcceleratorAttributes: AcceleratorAttributes
end

local record UpdateCrossAccountAttachmentInput
    AttachmentArn: string
    Name: string
    AddPrincipals: {string}
    RemovePrincipals: {string}
    AddResources: {Resource}
    RemoveResources: {Resource}
end

local record UpdateCrossAccountAttachmentOutput
    CrossAccountAttachment: Attachment
end

local record UpdateCustomRoutingAcceleratorInput
    AcceleratorArn: string
    Name: string
    IpAddressType: string
    IpAddresses: {string}
    Enabled: boolean
end

local record UpdateCustomRoutingAcceleratorOutput
    Accelerator: CustomRoutingAccelerator
end

local record UpdateCustomRoutingAcceleratorAttributesInput
    AcceleratorArn: string
    FlowLogsEnabled: boolean
    FlowLogsS3Bucket: string
    FlowLogsS3Prefix: string
end

local record UpdateCustomRoutingAcceleratorAttributesOutput
    AcceleratorAttributes: CustomRoutingAcceleratorAttributes
end

local record UpdateCustomRoutingListenerInput
    ListenerArn: string
    PortRanges: {PortRange}
end

local record UpdateCustomRoutingListenerOutput
    Listener: CustomRoutingListener
end

local record UpdateEndpointGroupInput
    EndpointGroupArn: string
    EndpointConfigurations: {EndpointConfiguration}
    TrafficDialPercentage: number
    HealthCheckPort: number
    HealthCheckProtocol: string
    HealthCheckPath: string
    HealthCheckIntervalSeconds: number
    ThresholdCount: number
    PortOverrides: {PortOverride}
end

local record UpdateEndpointGroupOutput
    EndpointGroup: EndpointGroup
end

local record UpdateListenerInput
    ListenerArn: string
    PortRanges: {PortRange}
    Protocol: string
    ClientAffinity: string
end

local record UpdateListenerOutput
    Listener: Listener
end

local record WithdrawByoipCidrInput
    Cidr: string
end

local record WithdrawByoipCidrOutput
    ByoipCidr: ByoipCidr
end

local record AccessDeniedException
    Message: string
end

local record ConflictException
    Message: string
end

local record EndpointAlreadyExistsException
    Message: string
end

local record EndpointGroupNotFoundException
    Message: string
end

local record InternalServiceErrorException
    Message: string
end

local record InvalidArgumentException
    Message: string
end

local record LimitExceededException
    Message: string
end

local record AccessDeniedException
    Message: string
end

local record EndpointGroupNotFoundException
    Message: string
end

local record InternalServiceErrorException
    Message: string
end

local record InvalidArgumentException
    Message: string
end

local record LimitExceededException
    Message: string
end

local record TransactionInProgressException
    Message: string
end

local record AccessDeniedException
    Message: string
end

local record ByoipCidrNotFoundException
    Message: string
end

local record IncorrectCidrStateException
    Message: string
end

local record InternalServiceErrorException
    Message: string
end

local record InvalidArgumentException
    Message: string
end

local record EndpointGroupNotFoundException
    Message: string
end

local record InternalServiceErrorException
    Message: string
end

local record InvalidArgumentException
    Message: string
end

local record AccessDeniedException
    Message: string
end

local record InternalServiceErrorException
    Message: string
end

local record InvalidArgumentException
    Message: string
end

local record LimitExceededException
    Message: string
end

local record TransactionInProgressException
    Message: string
end

local record AccessDeniedException
    Message: string
end

local record InternalServiceErrorException
    Message: string
end

local record InvalidArgumentException
    Message: string
end

local record LimitExceededException
    Message: string
end

local record TransactionInProgressException
    Message: string
end

local record AccessDeniedException
    Message: string
end

local record InternalServiceErrorException
    Message: string
end

local record InvalidArgumentException
    Message: string
end

local record LimitExceededException
    Message: string
end

local record TransactionInProgressException
    Message: string
end

local record AcceleratorNotFoundException
    Message: string
end

local record AccessDeniedException
    Message: string
end

local record EndpointGroupAlreadyExistsException
    Message: string
end

local record InternalServiceErrorException
    Message: string
end

local record InvalidArgumentException
    Message: string
end

local record InvalidPortRangeException
    Message: string
end

local record LimitExceededException
    Message: string
end

local record ListenerNotFoundException
    Message: string
end

local record AcceleratorNotFoundException
    Message: string
end

local record InternalServiceErrorException
    Message: string
end

local record InvalidArgumentException
    Message: string
end

local record InvalidPortRangeException
    Message: string
end

local record LimitExceededException
    Message: string
end

local record AcceleratorNotFoundException
    Message: string
end

local record AccessDeniedException
    Message: string
end

local record EndpointGroupAlreadyExistsException
    Message: string
end

local record InternalServiceErrorException
    Message: string
end

local record InvalidArgumentException
    Message: string
end

local record LimitExceededException
    Message: string
end

local record ListenerNotFoundException
    Message: string
end

local record AcceleratorNotFoundException
    Message: string
end

local record InternalServiceErrorException
    Message: string
end

local record InvalidArgumentException
    Message: string
end

local record InvalidPortRangeException
    Message: string
end

local record LimitExceededException
    Message: string
end

local record AcceleratorNotDisabledException
    Message: string
end

local record AcceleratorNotFoundException
    Message: string
end

local record AssociatedListenerFoundException
    Message: string
end

local record InternalServiceErrorException
    Message: string
end

local record InvalidArgumentException
    Message: string
end

local record TransactionInProgressException
    Message: string
end

local record AccessDeniedException
    Message: string
end

local record AttachmentNotFoundException
    Message: string
end

local record InternalServiceErrorException
    Message: string
end

local record InvalidArgumentException
    Message: string
end

local record TransactionInProgressException
    Message: string
end

local record AcceleratorNotDisabledException
    Message: string
end

local record AcceleratorNotFoundException
    Message: string
end

local record AssociatedListenerFoundException
    Message: string
end

local record InternalServiceErrorException
    Message: string
end

local record InvalidArgumentException
    Message: string
end

local record TransactionInProgressException
    Message: string
end

local record EndpointGroupNotFoundException
    Message: string
end

local record InternalServiceErrorException
    Message: string
end

local record InvalidArgumentException
    Message: string
end

local record AssociatedEndpointGroupFoundException
    Message: string
end

local record InternalServiceErrorException
    Message: string
end

local record InvalidArgumentException
    Message: string
end

local record ListenerNotFoundException
    Message: string
end

local record EndpointGroupNotFoundException
    Message: string
end

local record InternalServiceErrorException
    Message: string
end

local record InvalidArgumentException
    Message: string
end

local record AssociatedEndpointGroupFoundException
    Message: string
end

local record InternalServiceErrorException
    Message: string
end

local record InvalidArgumentException
    Message: string
end

local record ListenerNotFoundException
    Message: string
end

local record EndpointGroupNotFoundException
    Message: string
end

local record InternalServiceErrorException
    Message: string
end

local record InvalidArgumentException
    Message: string
end

local record AccessDeniedException
    Message: string
end

local record ByoipCidrNotFoundException
    Message: string
end

local record IncorrectCidrStateException
    Message: string
end

local record InternalServiceErrorException
    Message: string
end

local record InvalidArgumentException
    Message: string
end

local record AcceleratorNotFoundException
    Message: string
end

local record InternalServiceErrorException
    Message: string
end

local record InvalidArgumentException
    Message: string
end

local record AcceleratorNotFoundException
    Message: string
end

local record InternalServiceErrorException
    Message: string
end

local record InvalidArgumentException
    Message: string
end

local record AccessDeniedException
    Message: string
end

local record AttachmentNotFoundException
    Message: string
end

local record InternalServiceErrorException
    Message: string
end

local record InvalidArgumentException
    Message: string
end

local record AcceleratorNotFoundException
    Message: string
end

local record InternalServiceErrorException
    Message: string
end

local record InvalidArgumentException
    Message: string
end

local record AcceleratorNotFoundException
    Message: string
end

local record InternalServiceErrorException
    Message: string
end

local record InvalidArgumentException
    Message: string
end

local record EndpointGroupNotFoundException
    Message: string
end

local record InternalServiceErrorException
    Message: string
end

local record InvalidArgumentException
    Message: string
end

local record InternalServiceErrorException
    Message: string
end

local record InvalidArgumentException
    Message: string
end

local record ListenerNotFoundException
    Message: string
end

local record EndpointGroupNotFoundException
    Message: string
end

local record InternalServiceErrorException
    Message: string
end

local record InvalidArgumentException
    Message: string
end

local record InternalServiceErrorException
    Message: string
end

local record InvalidArgumentException
    Message: string
end

local record ListenerNotFoundException
    Message: string
end

local record InternalServiceErrorException
    Message: string
end

local record InvalidArgumentException
    Message: string
end

local record InvalidNextTokenException
    Message: string
end

local record AccessDeniedException
    Message: string
end

local record InternalServiceErrorException
    Message: string
end

local record InvalidArgumentException
    Message: string
end

local record InvalidNextTokenException
    Message: string
end

local record AccessDeniedException
    Message: string
end

local record InternalServiceErrorException
    Message: string
end

local record InvalidArgumentException
    Message: string
end

local record InvalidNextTokenException
    Message: string
end

local record AccessDeniedException
    Message: string
end

local record InternalServiceErrorException
    Message: string
end

local record AcceleratorNotFoundException
    Message: string
end

local record AccessDeniedException
    Message: string
end

local record InternalServiceErrorException
    Message: string
end

local record InvalidArgumentException
    Message: string
end

local record InvalidNextTokenException
    Message: string
end

local record InternalServiceErrorException
    Message: string
end

local record InvalidArgumentException
    Message: string
end

local record InvalidNextTokenException
    Message: string
end

local record InternalServiceErrorException
    Message: string
end

local record InvalidArgumentException
    Message: string
end

local record InvalidNextTokenException
    Message: string
end

local record ListenerNotFoundException
    Message: string
end

local record AcceleratorNotFoundException
    Message: string
end

local record InternalServiceErrorException
    Message: string
end

local record InvalidArgumentException
    Message: string
end

local record InvalidNextTokenException
    Message: string
end

local record AcceleratorNotFoundException
    Message: string
end

local record EndpointGroupNotFoundException
    Message: string
end

local record InternalServiceErrorException
    Message: string
end

local record InvalidArgumentException
    Message: string
end

local record InvalidNextTokenException
    Message: string
end

local record EndpointNotFoundException
    Message: string
end

local record InternalServiceErrorException
    Message: string
end

local record InvalidArgumentException
    Message: string
end

local record InvalidNextTokenException
    Message: string
end

local record InternalServiceErrorException
    Message: string
end

local record InvalidArgumentException
    Message: string
end

local record InvalidNextTokenException
    Message: string
end

local record ListenerNotFoundException
    Message: string
end

local record AcceleratorNotFoundException
    Message: string
end

local record InternalServiceErrorException
    Message: string
end

local record InvalidArgumentException
    Message: string
end

local record InvalidNextTokenException
    Message: string
end

local record AcceleratorNotFoundException
    Message: string
end

local record AttachmentNotFoundException
    Message: string
end

local record EndpointGroupNotFoundException
    Message: string
end

local record InternalServiceErrorException
    Message: string
end

local record InvalidArgumentException
    Message: string
end

local record ListenerNotFoundException
    Message: string
end

local record AccessDeniedException
    Message: string
end

local record IncorrectCidrStateException
    Message: string
end

local record InternalServiceErrorException
    Message: string
end

local record InvalidArgumentException
    Message: string
end

local record LimitExceededException
    Message: string
end

local record AccessDeniedException
    Message: string
end

local record ConflictException
    Message: string
end

local record EndpointGroupNotFoundException
    Message: string
end

local record EndpointNotFoundException
    Message: string
end

local record InternalServiceErrorException
    Message: string
end

local record InvalidArgumentException
    Message: string
end

local record AccessDeniedException
    Message: string
end

local record EndpointGroupNotFoundException
    Message: string
end

local record InternalServiceErrorException
    Message: string
end

local record InvalidArgumentException
    Message: string
end

local record TransactionInProgressException
    Message: string
end

local record AcceleratorNotFoundException
    Message: string
end

local record InternalServiceErrorException
    Message: string
end

local record InvalidArgumentException
    Message: string
end

local record AcceleratorNotFoundException
    Message: string
end

local record InternalServiceErrorException
    Message: string
end

local record InvalidArgumentException
    Message: string
end

local record AcceleratorNotFoundException
    Message: string
end

local record AccessDeniedException
    Message: string
end

local record ConflictException
    Message: string
end

local record InternalServiceErrorException
    Message: string
end

local record InvalidArgumentException
    Message: string
end

local record TransactionInProgressException
    Message: string
end

local record AcceleratorNotFoundException
    Message: string
end

local record AccessDeniedException
    Message: string
end

local record InternalServiceErrorException
    Message: string
end

local record InvalidArgumentException
    Message: string
end

local record TransactionInProgressException
    Message: string
end

local record AccessDeniedException
    Message: string
end

local record AttachmentNotFoundException
    Message: string
end

local record InternalServiceErrorException
    Message: string
end

local record InvalidArgumentException
    Message: string
end

local record LimitExceededException
    Message: string
end

local record TransactionInProgressException
    Message: string
end

local record AcceleratorNotFoundException
    Message: string
end

local record ConflictException
    Message: string
end

local record InternalServiceErrorException
    Message: string
end

local record InvalidArgumentException
    Message: string
end

local record TransactionInProgressException
    Message: string
end

local record AcceleratorNotFoundException
    Message: string
end

local record AccessDeniedException
    Message: string
end

local record InternalServiceErrorException
    Message: string
end

local record InvalidArgumentException
    Message: string
end

local record TransactionInProgressException
    Message: string
end

local record InternalServiceErrorException
    Message: string
end

local record InvalidArgumentException
    Message: string
end

local record InvalidPortRangeException
    Message: string
end

local record LimitExceededException
    Message: string
end

local record ListenerNotFoundException
    Message: string
end

local record AccessDeniedException
    Message: string
end

local record EndpointGroupNotFoundException
    Message: string
end

local record InternalServiceErrorException
    Message: string
end

local record InvalidArgumentException
    Message: string
end

local record LimitExceededException
    Message: string
end

local record InternalServiceErrorException
    Message: string
end

local record InvalidArgumentException
    Message: string
end

local record InvalidPortRangeException
    Message: string
end

local record LimitExceededException
    Message: string
end

local record ListenerNotFoundException
    Message: string
end

local record AccessDeniedException
    Message: string
end

local record ByoipCidrNotFoundException
    Message: string
end

local record IncorrectCidrStateException
    Message: string
end

local record InternalServiceErrorException
    Message: string
end

local record InvalidArgumentException
    Message: string
end

local type HealthCheckProtocol = "TCP" | "HTTP" | "HTTPS"

local type Protocol = "TCP" | "UDP"

local type ClientAffinity = "NONE" | "SOURCE_IP"

local type IpAddressType = "IPV4" | "DUAL_STACK"

local record M
    AddCustomRoutingEndpointsInput: AddCustomRoutingEndpointsInput
    AddCustomRoutingEndpointsOutput: AddCustomRoutingEndpointsOutput
    AddEndpointsInput: AddEndpointsInput
    AddEndpointsOutput: AddEndpointsOutput
    AdvertiseByoipCidrInput: AdvertiseByoipCidrInput
    AdvertiseByoipCidrOutput: AdvertiseByoipCidrOutput
    AllowCustomRoutingTrafficInput: AllowCustomRoutingTrafficInput
    AllowCustomRoutingTrafficOutput: AllowCustomRoutingTrafficOutput
    CreateAcceleratorInput: CreateAcceleratorInput
    CreateAcceleratorOutput: CreateAcceleratorOutput
    CreateCrossAccountAttachmentInput: CreateCrossAccountAttachmentInput
    CreateCrossAccountAttachmentOutput: CreateCrossAccountAttachmentOutput
    CreateCustomRoutingAcceleratorInput: CreateCustomRoutingAcceleratorInput
    CreateCustomRoutingAcceleratorOutput: CreateCustomRoutingAcceleratorOutput
    CreateCustomRoutingEndpointGroupInput: CreateCustomRoutingEndpointGroupInput
    CreateCustomRoutingEndpointGroupOutput: CreateCustomRoutingEndpointGroupOutput
    CreateCustomRoutingListenerInput: CreateCustomRoutingListenerInput
    CreateCustomRoutingListenerOutput: CreateCustomRoutingListenerOutput
    CreateEndpointGroupInput: CreateEndpointGroupInput
    CreateEndpointGroupOutput: CreateEndpointGroupOutput
    CreateListenerInput: CreateListenerInput
    CreateListenerOutput: CreateListenerOutput
    DeleteAcceleratorInput: DeleteAcceleratorInput
    DeleteAcceleratorOutput: DeleteAcceleratorOutput
    DeleteCrossAccountAttachmentInput: DeleteCrossAccountAttachmentInput
    DeleteCrossAccountAttachmentOutput: DeleteCrossAccountAttachmentOutput
    DeleteCustomRoutingAcceleratorInput: DeleteCustomRoutingAcceleratorInput
    DeleteCustomRoutingAcceleratorOutput: DeleteCustomRoutingAcceleratorOutput
    DeleteCustomRoutingEndpointGroupInput: DeleteCustomRoutingEndpointGroupInput
    DeleteCustomRoutingEndpointGroupOutput: DeleteCustomRoutingEndpointGroupOutput
    DeleteCustomRoutingListenerInput: DeleteCustomRoutingListenerInput
    DeleteCustomRoutingListenerOutput: DeleteCustomRoutingListenerOutput
    DeleteEndpointGroupInput: DeleteEndpointGroupInput
    DeleteEndpointGroupOutput: DeleteEndpointGroupOutput
    DeleteListenerInput: DeleteListenerInput
    DeleteListenerOutput: DeleteListenerOutput
    DenyCustomRoutingTrafficInput: DenyCustomRoutingTrafficInput
    DenyCustomRoutingTrafficOutput: DenyCustomRoutingTrafficOutput
    DeprovisionByoipCidrInput: DeprovisionByoipCidrInput
    DeprovisionByoipCidrOutput: DeprovisionByoipCidrOutput
    DescribeAcceleratorInput: DescribeAcceleratorInput
    DescribeAcceleratorOutput: DescribeAcceleratorOutput
    DescribeAcceleratorAttributesInput: DescribeAcceleratorAttributesInput
    DescribeAcceleratorAttributesOutput: DescribeAcceleratorAttributesOutput
    DescribeCrossAccountAttachmentInput: DescribeCrossAccountAttachmentInput
    DescribeCrossAccountAttachmentOutput: DescribeCrossAccountAttachmentOutput
    DescribeCustomRoutingAcceleratorInput: DescribeCustomRoutingAcceleratorInput
    DescribeCustomRoutingAcceleratorOutput: DescribeCustomRoutingAcceleratorOutput
    DescribeCustomRoutingAcceleratorAttributesInput: DescribeCustomRoutingAcceleratorAttributesInput
    DescribeCustomRoutingAcceleratorAttributesOutput: DescribeCustomRoutingAcceleratorAttributesOutput
    DescribeCustomRoutingEndpointGroupInput: DescribeCustomRoutingEndpointGroupInput
    DescribeCustomRoutingEndpointGroupOutput: DescribeCustomRoutingEndpointGroupOutput
    DescribeCustomRoutingListenerInput: DescribeCustomRoutingListenerInput
    DescribeCustomRoutingListenerOutput: DescribeCustomRoutingListenerOutput
    DescribeEndpointGroupInput: DescribeEndpointGroupInput
    DescribeEndpointGroupOutput: DescribeEndpointGroupOutput
    DescribeListenerInput: DescribeListenerInput
    DescribeListenerOutput: DescribeListenerOutput
    ListAcceleratorsInput: ListAcceleratorsInput
    ListAcceleratorsOutput: ListAcceleratorsOutput
    ListByoipCidrsInput: ListByoipCidrsInput
    ListByoipCidrsOutput: ListByoipCidrsOutput
    ListCrossAccountAttachmentsInput: ListCrossAccountAttachmentsInput
    ListCrossAccountAttachmentsOutput: ListCrossAccountAttachmentsOutput
    ListCrossAccountResourceAccountsInput: ListCrossAccountResourceAccountsInput
    ListCrossAccountResourceAccountsOutput: ListCrossAccountResourceAccountsOutput
    ListCrossAccountResourcesInput: ListCrossAccountResourcesInput
    ListCrossAccountResourcesOutput: ListCrossAccountResourcesOutput
    ListCustomRoutingAcceleratorsInput: ListCustomRoutingAcceleratorsInput
    ListCustomRoutingAcceleratorsOutput: ListCustomRoutingAcceleratorsOutput
    ListCustomRoutingEndpointGroupsInput: ListCustomRoutingEndpointGroupsInput
    ListCustomRoutingEndpointGroupsOutput: ListCustomRoutingEndpointGroupsOutput
    ListCustomRoutingListenersInput: ListCustomRoutingListenersInput
    ListCustomRoutingListenersOutput: ListCustomRoutingListenersOutput
    ListCustomRoutingPortMappingsInput: ListCustomRoutingPortMappingsInput
    ListCustomRoutingPortMappingsOutput: ListCustomRoutingPortMappingsOutput
    ListCustomRoutingPortMappingsByDestinationInput: ListCustomRoutingPortMappingsByDestinationInput
    ListCustomRoutingPortMappingsByDestinationOutput: ListCustomRoutingPortMappingsByDestinationOutput
    ListEndpointGroupsInput: ListEndpointGroupsInput
    ListEndpointGroupsOutput: ListEndpointGroupsOutput
    ListListenersInput: ListListenersInput
    ListListenersOutput: ListListenersOutput
    ListTagsForResourceInput: ListTagsForResourceInput
    ListTagsForResourceOutput: ListTagsForResourceOutput
    ProvisionByoipCidrInput: ProvisionByoipCidrInput
    ProvisionByoipCidrOutput: ProvisionByoipCidrOutput
    RemoveCustomRoutingEndpointsInput: RemoveCustomRoutingEndpointsInput
    RemoveCustomRoutingEndpointsOutput: RemoveCustomRoutingEndpointsOutput
    RemoveEndpointsInput: RemoveEndpointsInput
    RemoveEndpointsOutput: RemoveEndpointsOutput
    TagResourceInput: TagResourceInput
    TagResourceOutput: TagResourceOutput
    UntagResourceInput: UntagResourceInput
    UntagResourceOutput: UntagResourceOutput
    UpdateAcceleratorInput: UpdateAcceleratorInput
    UpdateAcceleratorOutput: UpdateAcceleratorOutput
    UpdateAcceleratorAttributesInput: UpdateAcceleratorAttributesInput
    UpdateAcceleratorAttributesOutput: UpdateAcceleratorAttributesOutput
    UpdateCrossAccountAttachmentInput: UpdateCrossAccountAttachmentInput
    UpdateCrossAccountAttachmentOutput: UpdateCrossAccountAttachmentOutput
    UpdateCustomRoutingAcceleratorInput: UpdateCustomRoutingAcceleratorInput
    UpdateCustomRoutingAcceleratorOutput: UpdateCustomRoutingAcceleratorOutput
    UpdateCustomRoutingAcceleratorAttributesInput: UpdateCustomRoutingAcceleratorAttributesInput
    UpdateCustomRoutingAcceleratorAttributesOutput: UpdateCustomRoutingAcceleratorAttributesOutput
    UpdateCustomRoutingListenerInput: UpdateCustomRoutingListenerInput
    UpdateCustomRoutingListenerOutput: UpdateCustomRoutingListenerOutput
    UpdateEndpointGroupInput: UpdateEndpointGroupInput
    UpdateEndpointGroupOutput: UpdateEndpointGroupOutput
    UpdateListenerInput: UpdateListenerInput
    UpdateListenerOutput: UpdateListenerOutput
    WithdrawByoipCidrInput: WithdrawByoipCidrInput
    WithdrawByoipCidrOutput: WithdrawByoipCidrOutput
end

return M
