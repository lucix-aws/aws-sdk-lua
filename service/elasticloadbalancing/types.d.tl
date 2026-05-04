local record AddTagsInput
    LoadBalancerNames: {string}
    Tags: {Tag}
end

local record AddTagsOutput
end

local record ApplySecurityGroupsToLoadBalancerInput
    LoadBalancerName: string
    SecurityGroups: {string}
end

local record ApplySecurityGroupsToLoadBalancerOutput
    SecurityGroups: {string}
end

local record AttachLoadBalancerToSubnetsInput
    LoadBalancerName: string
    Subnets: {string}
end

local record AttachLoadBalancerToSubnetsOutput
    Subnets: {string}
end

local record ConfigureHealthCheckInput
    LoadBalancerName: string
    HealthCheck: HealthCheck
end

local record ConfigureHealthCheckOutput
    HealthCheck: HealthCheck
end

local record CreateAppCookieStickinessPolicyInput
    LoadBalancerName: string
    PolicyName: string
    CookieName: string
end

local record CreateAppCookieStickinessPolicyOutput
end

local record CreateLBCookieStickinessPolicyInput
    LoadBalancerName: string
    PolicyName: string
    CookieExpirationPeriod: number
end

local record CreateLBCookieStickinessPolicyOutput
end

local record CreateLoadBalancerInput
    LoadBalancerName: string
    Listeners: {Listener}
    AvailabilityZones: {string}
    Subnets: {string}
    SecurityGroups: {string}
    Scheme: string
    Tags: {Tag}
end

local record CreateLoadBalancerOutput
    DNSName: string
end

local record CreateLoadBalancerListenersInput
    LoadBalancerName: string
    Listeners: {Listener}
end

local record CreateLoadBalancerListenersOutput
end

local record CreateLoadBalancerPolicyInput
    LoadBalancerName: string
    PolicyName: string
    PolicyTypeName: string
    PolicyAttributes: {PolicyAttribute}
end

local record CreateLoadBalancerPolicyOutput
end

local record DeleteLoadBalancerInput
    LoadBalancerName: string
end

local record DeleteLoadBalancerOutput
end

local record DeleteLoadBalancerListenersInput
    LoadBalancerName: string
    LoadBalancerPorts: {number}
end

local record DeleteLoadBalancerListenersOutput
end

local record DeleteLoadBalancerPolicyInput
    LoadBalancerName: string
    PolicyName: string
end

local record DeleteLoadBalancerPolicyOutput
end

local record DeregisterInstancesFromLoadBalancerInput
    LoadBalancerName: string
    Instances: {Instance}
end

local record DeregisterInstancesFromLoadBalancerOutput
    Instances: {Instance}
end

local record DescribeAccountLimitsInput
    Marker: string
    PageSize: number
end

local record DescribeAccountLimitsOutput
    Limits: {Limit}
    NextMarker: string
end

local record DescribeInstanceHealthInput
    LoadBalancerName: string
    Instances: {Instance}
end

local record DescribeInstanceHealthOutput
    InstanceStates: {InstanceState}
end

local record DescribeLoadBalancerAttributesInput
    LoadBalancerName: string
end

local record DescribeLoadBalancerAttributesOutput
    LoadBalancerAttributes: LoadBalancerAttributes
end

local record DescribeLoadBalancerPoliciesInput
    LoadBalancerName: string
    PolicyNames: {string}
end

local record DescribeLoadBalancerPoliciesOutput
    PolicyDescriptions: {PolicyDescription}
end

local record DescribeLoadBalancerPolicyTypesInput
    PolicyTypeNames: {string}
end

local record DescribeLoadBalancerPolicyTypesOutput
    PolicyTypeDescriptions: {PolicyTypeDescription}
end

local record DescribeLoadBalancersInput
    LoadBalancerNames: {string}
    Marker: string
    PageSize: number
end

local record DescribeLoadBalancersOutput
    LoadBalancerDescriptions: {LoadBalancerDescription}
    NextMarker: string
end

local record DescribeTagsInput
    LoadBalancerNames: {string}
end

local record DescribeTagsOutput
    TagDescriptions: {TagDescription}
end

local record DetachLoadBalancerFromSubnetsInput
    LoadBalancerName: string
    Subnets: {string}
end

local record DetachLoadBalancerFromSubnetsOutput
    Subnets: {string}
end

local record DisableAvailabilityZonesForLoadBalancerInput
    LoadBalancerName: string
    AvailabilityZones: {string}
end

local record DisableAvailabilityZonesForLoadBalancerOutput
    AvailabilityZones: {string}
end

local record EnableAvailabilityZonesForLoadBalancerInput
    LoadBalancerName: string
    AvailabilityZones: {string}
end

local record EnableAvailabilityZonesForLoadBalancerOutput
    AvailabilityZones: {string}
end

local record ModifyLoadBalancerAttributesInput
    LoadBalancerName: string
    LoadBalancerAttributes: LoadBalancerAttributes
end

local record ModifyLoadBalancerAttributesOutput
    LoadBalancerName: string
    LoadBalancerAttributes: LoadBalancerAttributes
end

local record RegisterInstancesWithLoadBalancerInput
    LoadBalancerName: string
    Instances: {Instance}
end

local record RegisterInstancesWithLoadBalancerOutput
    Instances: {Instance}
end

local record RemoveTagsInput
    LoadBalancerNames: {string}
    Tags: {TagKeyOnly}
end

local record RemoveTagsOutput
end

local record SetLoadBalancerListenerSSLCertificateInput
    LoadBalancerName: string
    LoadBalancerPort: number
    SSLCertificateId: string
end

local record SetLoadBalancerListenerSSLCertificateOutput
end

local record SetLoadBalancerPoliciesForBackendServerInput
    LoadBalancerName: string
    InstancePort: number
    PolicyNames: {string}
end

local record SetLoadBalancerPoliciesForBackendServerOutput
end

local record SetLoadBalancerPoliciesOfListenerInput
    LoadBalancerName: string
    LoadBalancerPort: number
    PolicyNames: {string}
end

local record SetLoadBalancerPoliciesOfListenerOutput
end

local record AccessPointNotFoundException
    Message: string
end

local record DuplicateTagKeysException
    Message: string
end

local record TooManyTagsException
    Message: string
end

local record AccessPointNotFoundException
    Message: string
end

local record InvalidConfigurationRequestException
    Message: string
end

local record InvalidSecurityGroupException
    Message: string
end

local record AccessPointNotFoundException
    Message: string
end

local record InvalidConfigurationRequestException
    Message: string
end

local record InvalidSubnetException
    Message: string
end

local record SubnetNotFoundException
    Message: string
end

local record AccessPointNotFoundException
    Message: string
end

local record AccessPointNotFoundException
    Message: string
end

local record DuplicatePolicyNameException
    Message: string
end

local record InvalidConfigurationRequestException
    Message: string
end

local record TooManyPoliciesException
    Message: string
end

local record AccessPointNotFoundException
    Message: string
end

local record DuplicatePolicyNameException
    Message: string
end

local record InvalidConfigurationRequestException
    Message: string
end

local record TooManyPoliciesException
    Message: string
end

local record CertificateNotFoundException
    Message: string
end

local record DuplicateAccessPointNameException
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

local record SubnetNotFoundException
    Message: string
end

local record TooManyAccessPointsException
    Message: string
end

local record TooManyTagsException
    Message: string
end

local record UnsupportedProtocolException
    Message: string
end

local record AccessPointNotFoundException
    Message: string
end

local record CertificateNotFoundException
    Message: string
end

local record DuplicateListenerException
    Message: string
end

local record InvalidConfigurationRequestException
    Message: string
end

local record UnsupportedProtocolException
    Message: string
end

local record AccessPointNotFoundException
    Message: string
end

local record DuplicatePolicyNameException
    Message: string
end

local record InvalidConfigurationRequestException
    Message: string
end

local record PolicyTypeNotFoundException
    Message: string
end

local record TooManyPoliciesException
    Message: string
end

local record AccessPointNotFoundException
    Message: string
end

local record AccessPointNotFoundException
    Message: string
end

local record InvalidConfigurationRequestException
    Message: string
end

local record AccessPointNotFoundException
    Message: string
end

local record InvalidEndPointException
    Message: string
end

local record AccessPointNotFoundException
    Message: string
end

local record InvalidEndPointException
    Message: string
end

local record AccessPointNotFoundException
    Message: string
end

local record LoadBalancerAttributeNotFoundException
    Message: string
end

local record AccessPointNotFoundException
    Message: string
end

local record PolicyNotFoundException
    Message: string
end

local record PolicyTypeNotFoundException
    Message: string
end

local record AccessPointNotFoundException
    Message: string
end

local record DependencyThrottleException
    Message: string
end

local record AccessPointNotFoundException
    Message: string
end

local record AccessPointNotFoundException
    Message: string
end

local record InvalidConfigurationRequestException
    Message: string
end

local record AccessPointNotFoundException
    Message: string
end

local record InvalidConfigurationRequestException
    Message: string
end

local record AccessPointNotFoundException
    Message: string
end

local record AccessPointNotFoundException
    Message: string
end

local record InvalidConfigurationRequestException
    Message: string
end

local record LoadBalancerAttributeNotFoundException
    Message: string
end

local record AccessPointNotFoundException
    Message: string
end

local record InvalidEndPointException
    Message: string
end

local record AccessPointNotFoundException
    Message: string
end

local record AccessPointNotFoundException
    Message: string
end

local record CertificateNotFoundException
    Message: string
end

local record InvalidConfigurationRequestException
    Message: string
end

local record ListenerNotFoundException
    Message: string
end

local record UnsupportedProtocolException
    Message: string
end

local record AccessPointNotFoundException
    Message: string
end

local record InvalidConfigurationRequestException
    Message: string
end

local record PolicyNotFoundException
    Message: string
end

local record AccessPointNotFoundException
    Message: string
end

local record InvalidConfigurationRequestException
    Message: string
end

local record ListenerNotFoundException
    Message: string
end

local record PolicyNotFoundException
    Message: string
end

local record M
    AddTagsInput: AddTagsInput
    AddTagsOutput: AddTagsOutput
    ApplySecurityGroupsToLoadBalancerInput: ApplySecurityGroupsToLoadBalancerInput
    ApplySecurityGroupsToLoadBalancerOutput: ApplySecurityGroupsToLoadBalancerOutput
    AttachLoadBalancerToSubnetsInput: AttachLoadBalancerToSubnetsInput
    AttachLoadBalancerToSubnetsOutput: AttachLoadBalancerToSubnetsOutput
    ConfigureHealthCheckInput: ConfigureHealthCheckInput
    ConfigureHealthCheckOutput: ConfigureHealthCheckOutput
    CreateAppCookieStickinessPolicyInput: CreateAppCookieStickinessPolicyInput
    CreateAppCookieStickinessPolicyOutput: CreateAppCookieStickinessPolicyOutput
    CreateLBCookieStickinessPolicyInput: CreateLBCookieStickinessPolicyInput
    CreateLBCookieStickinessPolicyOutput: CreateLBCookieStickinessPolicyOutput
    CreateLoadBalancerInput: CreateLoadBalancerInput
    CreateLoadBalancerOutput: CreateLoadBalancerOutput
    CreateLoadBalancerListenersInput: CreateLoadBalancerListenersInput
    CreateLoadBalancerListenersOutput: CreateLoadBalancerListenersOutput
    CreateLoadBalancerPolicyInput: CreateLoadBalancerPolicyInput
    CreateLoadBalancerPolicyOutput: CreateLoadBalancerPolicyOutput
    DeleteLoadBalancerInput: DeleteLoadBalancerInput
    DeleteLoadBalancerOutput: DeleteLoadBalancerOutput
    DeleteLoadBalancerListenersInput: DeleteLoadBalancerListenersInput
    DeleteLoadBalancerListenersOutput: DeleteLoadBalancerListenersOutput
    DeleteLoadBalancerPolicyInput: DeleteLoadBalancerPolicyInput
    DeleteLoadBalancerPolicyOutput: DeleteLoadBalancerPolicyOutput
    DeregisterInstancesFromLoadBalancerInput: DeregisterInstancesFromLoadBalancerInput
    DeregisterInstancesFromLoadBalancerOutput: DeregisterInstancesFromLoadBalancerOutput
    DescribeAccountLimitsInput: DescribeAccountLimitsInput
    DescribeAccountLimitsOutput: DescribeAccountLimitsOutput
    DescribeInstanceHealthInput: DescribeInstanceHealthInput
    DescribeInstanceHealthOutput: DescribeInstanceHealthOutput
    DescribeLoadBalancerAttributesInput: DescribeLoadBalancerAttributesInput
    DescribeLoadBalancerAttributesOutput: DescribeLoadBalancerAttributesOutput
    DescribeLoadBalancerPoliciesInput: DescribeLoadBalancerPoliciesInput
    DescribeLoadBalancerPoliciesOutput: DescribeLoadBalancerPoliciesOutput
    DescribeLoadBalancerPolicyTypesInput: DescribeLoadBalancerPolicyTypesInput
    DescribeLoadBalancerPolicyTypesOutput: DescribeLoadBalancerPolicyTypesOutput
    DescribeLoadBalancersInput: DescribeLoadBalancersInput
    DescribeLoadBalancersOutput: DescribeLoadBalancersOutput
    DescribeTagsInput: DescribeTagsInput
    DescribeTagsOutput: DescribeTagsOutput
    DetachLoadBalancerFromSubnetsInput: DetachLoadBalancerFromSubnetsInput
    DetachLoadBalancerFromSubnetsOutput: DetachLoadBalancerFromSubnetsOutput
    DisableAvailabilityZonesForLoadBalancerInput: DisableAvailabilityZonesForLoadBalancerInput
    DisableAvailabilityZonesForLoadBalancerOutput: DisableAvailabilityZonesForLoadBalancerOutput
    EnableAvailabilityZonesForLoadBalancerInput: EnableAvailabilityZonesForLoadBalancerInput
    EnableAvailabilityZonesForLoadBalancerOutput: EnableAvailabilityZonesForLoadBalancerOutput
    ModifyLoadBalancerAttributesInput: ModifyLoadBalancerAttributesInput
    ModifyLoadBalancerAttributesOutput: ModifyLoadBalancerAttributesOutput
    RegisterInstancesWithLoadBalancerInput: RegisterInstancesWithLoadBalancerInput
    RegisterInstancesWithLoadBalancerOutput: RegisterInstancesWithLoadBalancerOutput
    RemoveTagsInput: RemoveTagsInput
    RemoveTagsOutput: RemoveTagsOutput
    SetLoadBalancerListenerSSLCertificateInput: SetLoadBalancerListenerSSLCertificateInput
    SetLoadBalancerListenerSSLCertificateOutput: SetLoadBalancerListenerSSLCertificateOutput
    SetLoadBalancerPoliciesForBackendServerInput: SetLoadBalancerPoliciesForBackendServerInput
    SetLoadBalancerPoliciesForBackendServerOutput: SetLoadBalancerPoliciesForBackendServerOutput
    SetLoadBalancerPoliciesOfListenerInput: SetLoadBalancerPoliciesOfListenerInput
    SetLoadBalancerPoliciesOfListenerOutput: SetLoadBalancerPoliciesOfListenerOutput
end

return M
