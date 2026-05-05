local record AddListenerCertificatesInput
    ListenerArn: string
    Certificates: {Certificate}
end

local record AddListenerCertificatesOutput
    Certificates: {Certificate}
end

local record AddTagsInput
    ResourceArns: {string}
    Tags: {Tag}
end

local record AddTagsOutput
end

local record AddTrustStoreRevocationsInput
    TrustStoreArn: string
    RevocationContents: {RevocationContent}
end

local record AddTrustStoreRevocationsOutput
    TrustStoreRevocations: {TrustStoreRevocation}
end

local record CreateListenerInput
    LoadBalancerArn: string
    Protocol: string
    Port: number
    SslPolicy: string
    Certificates: {Certificate}
    DefaultActions: {Action}
    AlpnPolicy: {string}
    Tags: {Tag}
    MutualAuthentication: MutualAuthenticationAttributes
end

local record CreateListenerOutput
    Listeners: {Listener}
end

local record CreateLoadBalancerInput
    Name: string
    Subnets: {string}
    SubnetMappings: {SubnetMapping}
    SecurityGroups: {string}
    Scheme: string
    Tags: {Tag}
    Type: string
    IpAddressType: string
    CustomerOwnedIpv4Pool: string
    EnablePrefixForIpv6SourceNat: string
    IpamPools: IpamPools
end

local record CreateLoadBalancerOutput
    LoadBalancers: {LoadBalancer}
end

local record CreateRuleInput
    ListenerArn: string
    Conditions: {RuleCondition}
    Priority: number
    Actions: {Action}
    Tags: {Tag}
    Transforms: {RuleTransform}
end

local record CreateRuleOutput
    Rules: {Rule}
end

local record CreateTargetGroupInput
    Name: string
    Protocol: string
    ProtocolVersion: string
    Port: number
    VpcId: string
    HealthCheckProtocol: string
    HealthCheckPort: string
    HealthCheckEnabled: boolean
    HealthCheckPath: string
    HealthCheckIntervalSeconds: number
    HealthCheckTimeoutSeconds: number
    HealthyThresholdCount: number
    UnhealthyThresholdCount: number
    Matcher: Matcher
    TargetType: string
    Tags: {Tag}
    IpAddressType: string
    TargetControlPort: number
end

local record CreateTargetGroupOutput
    TargetGroups: {TargetGroup}
end

local record CreateTrustStoreInput
    Name: string
    CaCertificatesBundleS3Bucket: string
    CaCertificatesBundleS3Key: string
    CaCertificatesBundleS3ObjectVersion: string
    Tags: {Tag}
end

local record CreateTrustStoreOutput
    TrustStores: {TrustStore}
end

local record DeleteListenerInput
    ListenerArn: string
end

local record DeleteListenerOutput
end

local record DeleteLoadBalancerInput
    LoadBalancerArn: string
end

local record DeleteLoadBalancerOutput
end

local record DeleteRuleInput
    RuleArn: string
end

local record DeleteRuleOutput
end

local record DeleteSharedTrustStoreAssociationInput
    TrustStoreArn: string
    ResourceArn: string
end

local record DeleteSharedTrustStoreAssociationOutput
end

local record DeleteTargetGroupInput
    TargetGroupArn: string
end

local record DeleteTargetGroupOutput
end

local record DeleteTrustStoreInput
    TrustStoreArn: string
end

local record DeleteTrustStoreOutput
end

local record DeregisterTargetsInput
    TargetGroupArn: string
    Targets: {TargetDescription}
end

local record DeregisterTargetsOutput
end

local record DescribeAccountLimitsInput
    Marker: string
    PageSize: number
end

local record DescribeAccountLimitsOutput
    Limits: {Limit}
    NextMarker: string
end

local record DescribeCapacityReservationInput
    LoadBalancerArn: string
end

local record DescribeCapacityReservationOutput
    LastModifiedTime: number
    DecreaseRequestsRemaining: number
    MinimumLoadBalancerCapacity: MinimumLoadBalancerCapacity
    CapacityReservationState: {ZonalCapacityReservationState}
end

local record DescribeListenerAttributesInput
    ListenerArn: string
end

local record DescribeListenerAttributesOutput
    Attributes: {ListenerAttribute}
end

local record DescribeListenerCertificatesInput
    ListenerArn: string
    Marker: string
    PageSize: number
end

local record DescribeListenerCertificatesOutput
    Certificates: {Certificate}
    NextMarker: string
end

local record DescribeListenersInput
    LoadBalancerArn: string
    ListenerArns: {string}
    Marker: string
    PageSize: number
end

local record DescribeListenersOutput
    Listeners: {Listener}
    NextMarker: string
end

local record DescribeLoadBalancerAttributesInput
    LoadBalancerArn: string
end

local record DescribeLoadBalancerAttributesOutput
    Attributes: {LoadBalancerAttribute}
end

local record DescribeLoadBalancersInput
    LoadBalancerArns: {string}
    Names: {string}
    Marker: string
    PageSize: number
end

local record DescribeLoadBalancersOutput
    LoadBalancers: {LoadBalancer}
    NextMarker: string
end

local record DescribeRulesInput
    ListenerArn: string
    RuleArns: {string}
    Marker: string
    PageSize: number
end

local record DescribeRulesOutput
    Rules: {Rule}
    NextMarker: string
end

local record DescribeSSLPoliciesInput
    Names: {string}
    Marker: string
    PageSize: number
    LoadBalancerType: string
end

local record DescribeSSLPoliciesOutput
    SslPolicies: {SslPolicy}
    NextMarker: string
end

local record DescribeTagsInput
    ResourceArns: {string}
end

local record DescribeTagsOutput
    TagDescriptions: {TagDescription}
end

local record DescribeTargetGroupAttributesInput
    TargetGroupArn: string
end

local record DescribeTargetGroupAttributesOutput
    Attributes: {TargetGroupAttribute}
end

local record DescribeTargetGroupsInput
    LoadBalancerArn: string
    TargetGroupArns: {string}
    Names: {string}
    Marker: string
    PageSize: number
end

local record DescribeTargetGroupsOutput
    TargetGroups: {TargetGroup}
    NextMarker: string
end

local record DescribeTargetHealthInput
    TargetGroupArn: string
    Targets: {TargetDescription}
    Include: {string}
end

local record DescribeTargetHealthOutput
    TargetHealthDescriptions: {TargetHealthDescription}
end

local record DescribeTrustStoreAssociationsInput
    TrustStoreArn: string
    Marker: string
    PageSize: number
end

local record DescribeTrustStoreAssociationsOutput
    TrustStoreAssociations: {TrustStoreAssociation}
    NextMarker: string
end

local record DescribeTrustStoreRevocationsInput
    TrustStoreArn: string
    RevocationIds: {number}
    Marker: string
    PageSize: number
end

local record DescribeTrustStoreRevocationsOutput
    TrustStoreRevocations: {DescribeTrustStoreRevocation}
    NextMarker: string
end

local record DescribeTrustStoresInput
    TrustStoreArns: {string}
    Names: {string}
    Marker: string
    PageSize: number
end

local record DescribeTrustStoresOutput
    TrustStores: {TrustStore}
    NextMarker: string
end

local record GetResourcePolicyInput
    ResourceArn: string
end

local record GetResourcePolicyOutput
    Policy: string
end

local record GetTrustStoreCaCertificatesBundleInput
    TrustStoreArn: string
end

local record GetTrustStoreCaCertificatesBundleOutput
    Location: string
end

local record GetTrustStoreRevocationContentInput
    TrustStoreArn: string
    RevocationId: number
end

local record GetTrustStoreRevocationContentOutput
    Location: string
end

local record ModifyCapacityReservationInput
    LoadBalancerArn: string
    MinimumLoadBalancerCapacity: MinimumLoadBalancerCapacity
    ResetCapacityReservation: boolean
end

local record ModifyCapacityReservationOutput
    LastModifiedTime: number
    DecreaseRequestsRemaining: number
    MinimumLoadBalancerCapacity: MinimumLoadBalancerCapacity
    CapacityReservationState: {ZonalCapacityReservationState}
end

local record ModifyIpPoolsInput
    LoadBalancerArn: string
    IpamPools: IpamPools
    RemoveIpamPools: {string}
end

local record ModifyIpPoolsOutput
    IpamPools: IpamPools
end

local record ModifyListenerInput
    ListenerArn: string
    Port: number
    Protocol: string
    SslPolicy: string
    Certificates: {Certificate}
    DefaultActions: {Action}
    AlpnPolicy: {string}
    MutualAuthentication: MutualAuthenticationAttributes
end

local record ModifyListenerOutput
    Listeners: {Listener}
end

local record ModifyListenerAttributesInput
    ListenerArn: string
    Attributes: {ListenerAttribute}
end

local record ModifyListenerAttributesOutput
    Attributes: {ListenerAttribute}
end

local record ModifyLoadBalancerAttributesInput
    LoadBalancerArn: string
    Attributes: {LoadBalancerAttribute}
end

local record ModifyLoadBalancerAttributesOutput
    Attributes: {LoadBalancerAttribute}
end

local record ModifyRuleInput
    RuleArn: string
    Conditions: {RuleCondition}
    Actions: {Action}
    Transforms: {RuleTransform}
    ResetTransforms: boolean
end

local record ModifyRuleOutput
    Rules: {Rule}
end

local record ModifyTargetGroupInput
    TargetGroupArn: string
    HealthCheckProtocol: string
    HealthCheckPort: string
    HealthCheckPath: string
    HealthCheckEnabled: boolean
    HealthCheckIntervalSeconds: number
    HealthCheckTimeoutSeconds: number
    HealthyThresholdCount: number
    UnhealthyThresholdCount: number
    Matcher: Matcher
end

local record ModifyTargetGroupOutput
    TargetGroups: {TargetGroup}
end

local record ModifyTargetGroupAttributesInput
    TargetGroupArn: string
    Attributes: {TargetGroupAttribute}
end

local record ModifyTargetGroupAttributesOutput
    Attributes: {TargetGroupAttribute}
end

local record ModifyTrustStoreInput
    TrustStoreArn: string
    CaCertificatesBundleS3Bucket: string
    CaCertificatesBundleS3Key: string
    CaCertificatesBundleS3ObjectVersion: string
end

local record ModifyTrustStoreOutput
    TrustStores: {TrustStore}
end

local record RegisterTargetsInput
    TargetGroupArn: string
    Targets: {TargetDescription}
end

local record RegisterTargetsOutput
end

local record RemoveListenerCertificatesInput
    ListenerArn: string
    Certificates: {Certificate}
end

local record RemoveListenerCertificatesOutput
end

local record RemoveTagsInput
    ResourceArns: {string}
    TagKeys: {string}
end

local record RemoveTagsOutput
end

local record RemoveTrustStoreRevocationsInput
    TrustStoreArn: string
    RevocationIds: {number}
end

local record RemoveTrustStoreRevocationsOutput
end

local record SetIpAddressTypeInput
    LoadBalancerArn: string
    IpAddressType: string
end

local record SetIpAddressTypeOutput
    IpAddressType: string
end

local record SetRulePrioritiesInput
    RulePriorities: {RulePriorityPair}
end

local record SetRulePrioritiesOutput
    Rules: {Rule}
end

local record SetSecurityGroupsInput
    LoadBalancerArn: string
    SecurityGroups: {string}
    EnforceSecurityGroupInboundRulesOnPrivateLinkTraffic: string
end

local record SetSecurityGroupsOutput
    SecurityGroupIds: {string}
    EnforceSecurityGroupInboundRulesOnPrivateLinkTraffic: string
end

local record SetSubnetsInput
    LoadBalancerArn: string
    Subnets: {string}
    SubnetMappings: {SubnetMapping}
    IpAddressType: string
    EnablePrefixForIpv6SourceNat: string
end

local record SetSubnetsOutput
    AvailabilityZones: {AvailabilityZone}
    IpAddressType: string
    EnablePrefixForIpv6SourceNat: string
end

local record CertificateNotFoundException
    Message: string
end

local record ListenerNotFoundException
    Message: string
end

local record TooManyCertificatesException
    Message: string
end

local record DuplicateTagKeysException
    Message: string
end

local record ListenerNotFoundException
    Message: string
end

local record LoadBalancerNotFoundException
    Message: string
end

local record RuleNotFoundException
    Message: string
end

local record TargetGroupNotFoundException
    Message: string
end

local record TooManyTagsException
    Message: string
end

local record TrustStoreNotFoundException
    Message: string
end

local record InvalidRevocationContentException
    Message: string
end

local record RevocationContentNotFoundException
    Message: string
end

local record TooManyTrustStoreRevocationEntriesException
    Message: string
end

local record TrustStoreNotFoundException
    Message: string
end

local record ALPNPolicyNotSupportedException
    Message: string
end

local record CertificateNotFoundException
    Message: string
end

local record DuplicateListenerException
    Message: string
end

local record IncompatibleProtocolsException
    Message: string
end

local record InvalidConfigurationRequestException
    Message: string
end

local record InvalidLoadBalancerActionException
    Message: string
end

local record LoadBalancerNotFoundException
    Message: string
end

local record SSLPolicyNotFoundException
    Message: string
end

local record TargetGroupAssociationLimitException
    Message: string
end

local record TargetGroupNotFoundException
    Message: string
end

local record TooManyActionsException
    Message: string
end

local record TooManyCertificatesException
    Message: string
end

local record TooManyListenersException
    Message: string
end

local record TooManyRegistrationsForTargetIdException
    Message: string
end

local record TooManyTagsException
    Message: string
end

local record TooManyTargetsException
    Message: string
end

local record TooManyUniqueTargetGroupsPerLoadBalancerException
    Message: string
end

local record TrustStoreNotFoundException
    Message: string
end

local record TrustStoreNotReadyException
    Message: string
end

local record UnsupportedProtocolException
    Message: string
end

local record AllocationIdNotFoundException
    Message: string
end

local record AvailabilityZoneNotSupportedException
    Message: string
end

local record DuplicateLoadBalancerNameException
    Message: string
end

local record DuplicateTagKeysException
    Message: string
end

local record InvalidConfigurationRequestException
    Message: string
end

local record InvalidSchemeException
    Message: string
end

local record InvalidSecurityGroupException
    Message: string
end

local record InvalidSubnetException
    Message: string
end

local record OperationNotPermittedException
    Message: string
end

local record ResourceInUseException
    Message: string
end

local record SubnetNotFoundException
    Message: string
end

local record TooManyLoadBalancersException
    Message: string
end

local record TooManyTagsException
    Message: string
end

local record IncompatibleProtocolsException
    Message: string
end

local record InvalidConfigurationRequestException
    Message: string
end

local record InvalidLoadBalancerActionException
    Message: string
end

local record ListenerNotFoundException
    Message: string
end

local record PriorityInUseException
    Message: string
end

local record TargetGroupAssociationLimitException
    Message: string
end

local record TargetGroupNotFoundException
    Message: string
end

local record TooManyActionsException
    Message: string
end

local record TooManyRegistrationsForTargetIdException
    Message: string
end

local record TooManyRulesException
    Message: string
end

local record TooManyTagsException
    Message: string
end

local record TooManyTargetGroupsException
    Message: string
end

local record TooManyTargetsException
    Message: string
end

local record TooManyUniqueTargetGroupsPerLoadBalancerException
    Message: string
end

local record UnsupportedProtocolException
    Message: string
end

local record DuplicateTargetGroupNameException
    Message: string
end

local record InvalidConfigurationRequestException
    Message: string
end

local record TooManyTagsException
    Message: string
end

local record TooManyTargetGroupsException
    Message: string
end

local record CaCertificatesBundleNotFoundException
    Message: string
end

local record DuplicateTagKeysException
    Message: string
end

local record DuplicateTrustStoreNameException
    Message: string
end

local record InvalidCaCertificatesBundleException
    Message: string
end

local record TooManyTagsException
    Message: string
end

local record TooManyTrustStoresException
    Message: string
end

local record ListenerNotFoundException
    Message: string
end

local record ResourceInUseException
    Message: string
end

local record LoadBalancerNotFoundException
    Message: string
end

local record OperationNotPermittedException
    Message: string
end

local record ResourceInUseException
    Message: string
end

local record OperationNotPermittedException
    Message: string
end

local record RuleNotFoundException
    Message: string
end

local record DeleteAssociationSameAccountException
    Message: string
end

local record TrustStoreAssociationNotFoundException
    Message: string
end

local record TrustStoreNotFoundException
    Message: string
end

local record ResourceInUseException
    Message: string
end

local record TrustStoreInUseException
    Message: string
end

local record TrustStoreNotFoundException
    Message: string
end

local record InvalidTargetException
    Message: string
end

local record TargetGroupNotFoundException
    Message: string
end

local record LoadBalancerNotFoundException
    Message: string
end

local record ListenerNotFoundException
    Message: string
end

local record ListenerNotFoundException
    Message: string
end

local record ListenerNotFoundException
    Message: string
end

local record LoadBalancerNotFoundException
    Message: string
end

local record UnsupportedProtocolException
    Message: string
end

local record LoadBalancerNotFoundException
    Message: string
end

local record LoadBalancerNotFoundException
    Message: string
end

local record ListenerNotFoundException
    Message: string
end

local record RuleNotFoundException
    Message: string
end

local record UnsupportedProtocolException
    Message: string
end

local record SSLPolicyNotFoundException
    Message: string
end

local record ListenerNotFoundException
    Message: string
end

local record LoadBalancerNotFoundException
    Message: string
end

local record RuleNotFoundException
    Message: string
end

local record TargetGroupNotFoundException
    Message: string
end

local record TrustStoreNotFoundException
    Message: string
end

local record TargetGroupNotFoundException
    Message: string
end

local record LoadBalancerNotFoundException
    Message: string
end

local record TargetGroupNotFoundException
    Message: string
end

local record HealthUnavailableException
    Message: string
end

local record InvalidTargetException
    Message: string
end

local record TargetGroupNotFoundException
    Message: string
end

local record TrustStoreNotFoundException
    Message: string
end

local record RevocationIdNotFoundException
    Message: string
end

local record TrustStoreNotFoundException
    Message: string
end

local record TrustStoreNotFoundException
    Message: string
end

local record ResourceNotFoundException
    Message: string
end

local record TrustStoreNotFoundException
    Message: string
end

local record RevocationIdNotFoundException
    Message: string
end

local record TrustStoreNotFoundException
    Message: string
end

local record CapacityDecreaseRequestsLimitExceededException
    Message: string
end

local record CapacityReservationPendingException
    Message: string
end

local record CapacityUnitsLimitExceededException
    Message: string
end

local record InsufficientCapacityException
    Message: string
end

local record InvalidConfigurationRequestException
    Message: string
end

local record LoadBalancerNotFoundException
    Message: string
end

local record OperationNotPermittedException
    Message: string
end

local record PriorRequestNotCompleteException
    Message: string
end

local record LoadBalancerNotFoundException
    Message: string
end

local record ALPNPolicyNotSupportedException
    Message: string
end

local record CertificateNotFoundException
    Message: string
end

local record DuplicateListenerException
    Message: string
end

local record IncompatibleProtocolsException
    Message: string
end

local record InvalidConfigurationRequestException
    Message: string
end

local record InvalidLoadBalancerActionException
    Message: string
end

local record ListenerNotFoundException
    Message: string
end

local record SSLPolicyNotFoundException
    Message: string
end

local record TargetGroupAssociationLimitException
    Message: string
end

local record TargetGroupNotFoundException
    Message: string
end

local record TooManyActionsException
    Message: string
end

local record TooManyCertificatesException
    Message: string
end

local record TooManyListenersException
    Message: string
end

local record TooManyRegistrationsForTargetIdException
    Message: string
end

local record TooManyTargetsException
    Message: string
end

local record TooManyUniqueTargetGroupsPerLoadBalancerException
    Message: string
end

local record TrustStoreNotFoundException
    Message: string
end

local record TrustStoreNotReadyException
    Message: string
end

local record UnsupportedProtocolException
    Message: string
end

local record InvalidConfigurationRequestException
    Message: string
end

local record ListenerNotFoundException
    Message: string
end

local record InvalidConfigurationRequestException
    Message: string
end

local record LoadBalancerNotFoundException
    Message: string
end

local record IncompatibleProtocolsException
    Message: string
end

local record InvalidLoadBalancerActionException
    Message: string
end

local record OperationNotPermittedException
    Message: string
end

local record RuleNotFoundException
    Message: string
end

local record TargetGroupAssociationLimitException
    Message: string
end

local record TargetGroupNotFoundException
    Message: string
end

local record TooManyActionsException
    Message: string
end

local record TooManyRegistrationsForTargetIdException
    Message: string
end

local record TooManyTargetsException
    Message: string
end

local record TooManyUniqueTargetGroupsPerLoadBalancerException
    Message: string
end

local record UnsupportedProtocolException
    Message: string
end

local record InvalidConfigurationRequestException
    Message: string
end

local record TargetGroupNotFoundException
    Message: string
end

local record InvalidConfigurationRequestException
    Message: string
end

local record TargetGroupNotFoundException
    Message: string
end

local record CaCertificatesBundleNotFoundException
    Message: string
end

local record InvalidCaCertificatesBundleException
    Message: string
end

local record TrustStoreNotFoundException
    Message: string
end

local record InvalidTargetException
    Message: string
end

local record TargetGroupNotFoundException
    Message: string
end

local record TooManyRegistrationsForTargetIdException
    Message: string
end

local record TooManyTargetsException
    Message: string
end

local record ListenerNotFoundException
    Message: string
end

local record OperationNotPermittedException
    Message: string
end

local record ListenerNotFoundException
    Message: string
end

local record LoadBalancerNotFoundException
    Message: string
end

local record RuleNotFoundException
    Message: string
end

local record TargetGroupNotFoundException
    Message: string
end

local record TooManyTagsException
    Message: string
end

local record TrustStoreNotFoundException
    Message: string
end

local record RevocationIdNotFoundException
    Message: string
end

local record TrustStoreNotFoundException
    Message: string
end

local record InvalidConfigurationRequestException
    Message: string
end

local record InvalidSubnetException
    Message: string
end

local record LoadBalancerNotFoundException
    Message: string
end

local record OperationNotPermittedException
    Message: string
end

local record PriorityInUseException
    Message: string
end

local record RuleNotFoundException
    Message: string
end

local record InvalidConfigurationRequestException
    Message: string
end

local record InvalidSecurityGroupException
    Message: string
end

local record LoadBalancerNotFoundException
    Message: string
end

local record AllocationIdNotFoundException
    Message: string
end

local record AvailabilityZoneNotSupportedException
    Message: string
end

local record CapacityReservationPendingException
    Message: string
end

local record InvalidConfigurationRequestException
    Message: string
end

local record InvalidSubnetException
    Message: string
end

local record LoadBalancerNotFoundException
    Message: string
end

local record SubnetNotFoundException
    Message: string
end

local type IpAddressType = "ipv4" | "dualstack" | "dualstack-without-public-ipv4"

local type EnablePrefixForIpv6SourceNatEnum = "on" | "off"

local type ProtocolEnum = "HTTP" | "HTTPS" | "TCP" | "TLS" | "UDP" | "TCP_UDP" | "GENEVE" | "QUIC" | "TCP_QUIC"

local type TargetGroupIpAddressTypeEnum = "ipv4" | "ipv6"

local type TargetTypeEnum = "instance" | "ip" | "lambda" | "alb"

local type LoadBalancerTypeEnum = "application" | "network" | "gateway"

local type EnforceSecurityGroupInboundRulesOnPrivateLinkTrafficEnum = "on" | "off"

local type LoadBalancerSchemeEnum = "internet-facing" | "internal"

local record M
    AddListenerCertificatesInput: AddListenerCertificatesInput
    AddListenerCertificatesOutput: AddListenerCertificatesOutput
    AddTagsInput: AddTagsInput
    AddTagsOutput: AddTagsOutput
    AddTrustStoreRevocationsInput: AddTrustStoreRevocationsInput
    AddTrustStoreRevocationsOutput: AddTrustStoreRevocationsOutput
    CreateListenerInput: CreateListenerInput
    CreateListenerOutput: CreateListenerOutput
    CreateLoadBalancerInput: CreateLoadBalancerInput
    CreateLoadBalancerOutput: CreateLoadBalancerOutput
    CreateRuleInput: CreateRuleInput
    CreateRuleOutput: CreateRuleOutput
    CreateTargetGroupInput: CreateTargetGroupInput
    CreateTargetGroupOutput: CreateTargetGroupOutput
    CreateTrustStoreInput: CreateTrustStoreInput
    CreateTrustStoreOutput: CreateTrustStoreOutput
    DeleteListenerInput: DeleteListenerInput
    DeleteListenerOutput: DeleteListenerOutput
    DeleteLoadBalancerInput: DeleteLoadBalancerInput
    DeleteLoadBalancerOutput: DeleteLoadBalancerOutput
    DeleteRuleInput: DeleteRuleInput
    DeleteRuleOutput: DeleteRuleOutput
    DeleteSharedTrustStoreAssociationInput: DeleteSharedTrustStoreAssociationInput
    DeleteSharedTrustStoreAssociationOutput: DeleteSharedTrustStoreAssociationOutput
    DeleteTargetGroupInput: DeleteTargetGroupInput
    DeleteTargetGroupOutput: DeleteTargetGroupOutput
    DeleteTrustStoreInput: DeleteTrustStoreInput
    DeleteTrustStoreOutput: DeleteTrustStoreOutput
    DeregisterTargetsInput: DeregisterTargetsInput
    DeregisterTargetsOutput: DeregisterTargetsOutput
    DescribeAccountLimitsInput: DescribeAccountLimitsInput
    DescribeAccountLimitsOutput: DescribeAccountLimitsOutput
    DescribeCapacityReservationInput: DescribeCapacityReservationInput
    DescribeCapacityReservationOutput: DescribeCapacityReservationOutput
    DescribeListenerAttributesInput: DescribeListenerAttributesInput
    DescribeListenerAttributesOutput: DescribeListenerAttributesOutput
    DescribeListenerCertificatesInput: DescribeListenerCertificatesInput
    DescribeListenerCertificatesOutput: DescribeListenerCertificatesOutput
    DescribeListenersInput: DescribeListenersInput
    DescribeListenersOutput: DescribeListenersOutput
    DescribeLoadBalancerAttributesInput: DescribeLoadBalancerAttributesInput
    DescribeLoadBalancerAttributesOutput: DescribeLoadBalancerAttributesOutput
    DescribeLoadBalancersInput: DescribeLoadBalancersInput
    DescribeLoadBalancersOutput: DescribeLoadBalancersOutput
    DescribeRulesInput: DescribeRulesInput
    DescribeRulesOutput: DescribeRulesOutput
    DescribeSSLPoliciesInput: DescribeSSLPoliciesInput
    DescribeSSLPoliciesOutput: DescribeSSLPoliciesOutput
    DescribeTagsInput: DescribeTagsInput
    DescribeTagsOutput: DescribeTagsOutput
    DescribeTargetGroupAttributesInput: DescribeTargetGroupAttributesInput
    DescribeTargetGroupAttributesOutput: DescribeTargetGroupAttributesOutput
    DescribeTargetGroupsInput: DescribeTargetGroupsInput
    DescribeTargetGroupsOutput: DescribeTargetGroupsOutput
    DescribeTargetHealthInput: DescribeTargetHealthInput
    DescribeTargetHealthOutput: DescribeTargetHealthOutput
    DescribeTrustStoreAssociationsInput: DescribeTrustStoreAssociationsInput
    DescribeTrustStoreAssociationsOutput: DescribeTrustStoreAssociationsOutput
    DescribeTrustStoreRevocationsInput: DescribeTrustStoreRevocationsInput
    DescribeTrustStoreRevocationsOutput: DescribeTrustStoreRevocationsOutput
    DescribeTrustStoresInput: DescribeTrustStoresInput
    DescribeTrustStoresOutput: DescribeTrustStoresOutput
    GetResourcePolicyInput: GetResourcePolicyInput
    GetResourcePolicyOutput: GetResourcePolicyOutput
    GetTrustStoreCaCertificatesBundleInput: GetTrustStoreCaCertificatesBundleInput
    GetTrustStoreCaCertificatesBundleOutput: GetTrustStoreCaCertificatesBundleOutput
    GetTrustStoreRevocationContentInput: GetTrustStoreRevocationContentInput
    GetTrustStoreRevocationContentOutput: GetTrustStoreRevocationContentOutput
    ModifyCapacityReservationInput: ModifyCapacityReservationInput
    ModifyCapacityReservationOutput: ModifyCapacityReservationOutput
    ModifyIpPoolsInput: ModifyIpPoolsInput
    ModifyIpPoolsOutput: ModifyIpPoolsOutput
    ModifyListenerInput: ModifyListenerInput
    ModifyListenerOutput: ModifyListenerOutput
    ModifyListenerAttributesInput: ModifyListenerAttributesInput
    ModifyListenerAttributesOutput: ModifyListenerAttributesOutput
    ModifyLoadBalancerAttributesInput: ModifyLoadBalancerAttributesInput
    ModifyLoadBalancerAttributesOutput: ModifyLoadBalancerAttributesOutput
    ModifyRuleInput: ModifyRuleInput
    ModifyRuleOutput: ModifyRuleOutput
    ModifyTargetGroupInput: ModifyTargetGroupInput
    ModifyTargetGroupOutput: ModifyTargetGroupOutput
    ModifyTargetGroupAttributesInput: ModifyTargetGroupAttributesInput
    ModifyTargetGroupAttributesOutput: ModifyTargetGroupAttributesOutput
    ModifyTrustStoreInput: ModifyTrustStoreInput
    ModifyTrustStoreOutput: ModifyTrustStoreOutput
    RegisterTargetsInput: RegisterTargetsInput
    RegisterTargetsOutput: RegisterTargetsOutput
    RemoveListenerCertificatesInput: RemoveListenerCertificatesInput
    RemoveListenerCertificatesOutput: RemoveListenerCertificatesOutput
    RemoveTagsInput: RemoveTagsInput
    RemoveTagsOutput: RemoveTagsOutput
    RemoveTrustStoreRevocationsInput: RemoveTrustStoreRevocationsInput
    RemoveTrustStoreRevocationsOutput: RemoveTrustStoreRevocationsOutput
    SetIpAddressTypeInput: SetIpAddressTypeInput
    SetIpAddressTypeOutput: SetIpAddressTypeOutput
    SetRulePrioritiesInput: SetRulePrioritiesInput
    SetRulePrioritiesOutput: SetRulePrioritiesOutput
    SetSecurityGroupsInput: SetSecurityGroupsInput
    SetSecurityGroupsOutput: SetSecurityGroupsOutput
    SetSubnetsInput: SetSubnetsInput
    SetSubnetsOutput: SetSubnetsOutput
end

return M
