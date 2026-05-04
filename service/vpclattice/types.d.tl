local record BatchUpdateRuleInput
    serviceIdentifier: string
    listenerIdentifier: string
    rules: {RuleUpdate}
end

local record BatchUpdateRuleOutput
    successful: {RuleUpdateSuccess}
    unsuccessful: {RuleUpdateFailure}
end

local record CreateAccessLogSubscriptionInput
    clientToken: string
    resourceIdentifier: string
    destinationArn: string
    serviceNetworkLogType: string
    tags: {string : string}
end

local record CreateAccessLogSubscriptionOutput
    id: string
    arn: string
    resourceId: string
    resourceArn: string
    serviceNetworkLogType: string
    destinationArn: string
end

local record CreateListenerInput
    serviceIdentifier: string
    name: string
    protocol: string
    port: number
    defaultAction: RuleAction
    clientToken: string
    tags: {string : string}
end

local record CreateListenerOutput
    arn: string
    id: string
    name: string
    protocol: string
    port: number
    serviceArn: string
    serviceId: string
    defaultAction: RuleAction
end

local record CreateResourceConfigurationInput
    name: string
    type: string
    portRanges: {string}
    protocol: string
    resourceGatewayIdentifier: string
    resourceConfigurationGroupIdentifier: string
    resourceConfigurationDefinition: ResourceConfigurationDefinition
    allowAssociationToShareableServiceNetwork: boolean
    customDomainName: string
    groupDomain: string
    domainVerificationIdentifier: string
    clientToken: string
    tags: {string : string}
end

local record CreateResourceConfigurationOutput
    id: string
    name: string
    arn: string
    resourceGatewayId: string
    resourceConfigurationGroupId: string
    type: string
    portRanges: {string}
    protocol: string
    status: string
    resourceConfigurationDefinition: ResourceConfigurationDefinition
    allowAssociationToShareableServiceNetwork: boolean
    createdAt: number
    failureReason: string
    customDomainName: string
    domainVerificationId: string
    groupDomain: string
    domainVerificationArn: string
end

local record CreateResourceGatewayInput
    clientToken: string
    name: string
    vpcIdentifier: string
    subnetIds: {string}
    securityGroupIds: {string}
    ipAddressType: string
    ipv4AddressesPerEni: number
    tags: {string : string}
end

local record CreateResourceGatewayOutput
    name: string
    id: string
    arn: string
    status: string
    vpcIdentifier: string
    subnetIds: {string}
    securityGroupIds: {string}
    ipAddressType: string
    ipv4AddressesPerEni: number
end

local record CreateRuleInput
    serviceIdentifier: string
    listenerIdentifier: string
    name: string
    match: RuleMatch
    priority: number
    action: RuleAction
    clientToken: string
    tags: {string : string}
end

local record CreateRuleOutput
    arn: string
    id: string
    name: string
    match: RuleMatch
    priority: number
    action: RuleAction
end

local record CreateServiceInput
    clientToken: string
    name: string
    tags: {string : string}
    customDomainName: string
    certificateArn: string
    authType: string
end

local record CreateServiceOutput
    id: string
    arn: string
    name: string
    customDomainName: string
    certificateArn: string
    status: string
    authType: string
    dnsEntry: DnsEntry
end

local record CreateServiceNetworkInput
    clientToken: string
    name: string
    authType: string
    tags: {string : string}
    sharingConfig: SharingConfig
end

local record CreateServiceNetworkOutput
    id: string
    name: string
    arn: string
    sharingConfig: SharingConfig
    authType: string
end

local record CreateServiceNetworkResourceAssociationInput
    clientToken: string
    resourceConfigurationIdentifier: string
    serviceNetworkIdentifier: string
    privateDnsEnabled: boolean
    tags: {string : string}
end

local record CreateServiceNetworkResourceAssociationOutput
    id: string
    arn: string
    status: string
    createdBy: string
    privateDnsEnabled: boolean
end

local record CreateServiceNetworkServiceAssociationInput
    clientToken: string
    serviceIdentifier: string
    serviceNetworkIdentifier: string
    tags: {string : string}
end

local record CreateServiceNetworkServiceAssociationOutput
    id: string
    status: string
    arn: string
    createdBy: string
    customDomainName: string
    dnsEntry: DnsEntry
end

local record CreateServiceNetworkVpcAssociationInput
    clientToken: string
    serviceNetworkIdentifier: string
    vpcIdentifier: string
    privateDnsEnabled: boolean
    securityGroupIds: {string}
    tags: {string : string}
    dnsOptions: DnsOptions
end

local record CreateServiceNetworkVpcAssociationOutput
    id: string
    status: string
    arn: string
    createdBy: string
    securityGroupIds: {string}
    privateDnsEnabled: boolean
    dnsOptions: DnsOptions
end

local record CreateTargetGroupInput
    name: string
    type: string
    config: TargetGroupConfig
    clientToken: string
    tags: {string : string}
end

local record CreateTargetGroupOutput
    id: string
    arn: string
    name: string
    type: string
    config: TargetGroupConfig
    status: string
end

local record DeleteAccessLogSubscriptionInput
    accessLogSubscriptionIdentifier: string
end

local record DeleteAccessLogSubscriptionOutput
end

local record DeleteAuthPolicyInput
    resourceIdentifier: string
end

local record DeleteAuthPolicyOutput
end

local record DeleteDomainVerificationInput
    domainVerificationIdentifier: string
end

local record DeleteDomainVerificationOutput
end

local record DeleteListenerInput
    serviceIdentifier: string
    listenerIdentifier: string
end

local record DeleteListenerOutput
end

local record DeleteResourceConfigurationInput
    resourceConfigurationIdentifier: string
end

local record DeleteResourceConfigurationOutput
end

local record DeleteResourceEndpointAssociationInput
    resourceEndpointAssociationIdentifier: string
end

local record DeleteResourceEndpointAssociationOutput
    id: string
    arn: string
    resourceConfigurationId: string
    resourceConfigurationArn: string
    vpcEndpointId: string
end

local record DeleteResourceGatewayInput
    resourceGatewayIdentifier: string
end

local record DeleteResourceGatewayOutput
    id: string
    arn: string
    name: string
    status: string
end

local record DeleteResourcePolicyInput
    resourceArn: string
end

local record DeleteResourcePolicyOutput
end

local record DeleteRuleInput
    serviceIdentifier: string
    listenerIdentifier: string
    ruleIdentifier: string
end

local record DeleteRuleOutput
end

local record DeleteServiceInput
    serviceIdentifier: string
end

local record DeleteServiceOutput
    id: string
    arn: string
    name: string
    status: string
end

local record DeleteServiceNetworkInput
    serviceNetworkIdentifier: string
end

local record DeleteServiceNetworkOutput
end

local record DeleteServiceNetworkResourceAssociationInput
    serviceNetworkResourceAssociationIdentifier: string
end

local record DeleteServiceNetworkResourceAssociationOutput
    id: string
    arn: string
    status: string
end

local record DeleteServiceNetworkServiceAssociationInput
    serviceNetworkServiceAssociationIdentifier: string
end

local record DeleteServiceNetworkServiceAssociationOutput
    id: string
    status: string
    arn: string
end

local record DeleteServiceNetworkVpcAssociationInput
    serviceNetworkVpcAssociationIdentifier: string
end

local record DeleteServiceNetworkVpcAssociationOutput
    id: string
    status: string
    arn: string
end

local record DeleteTargetGroupInput
    targetGroupIdentifier: string
end

local record DeleteTargetGroupOutput
    id: string
    arn: string
    status: string
end

local record DeregisterTargetsInput
    targetGroupIdentifier: string
    targets: {Target}
end

local record DeregisterTargetsOutput
    successful: {Target}
    unsuccessful: {TargetFailure}
end

local record GetAccessLogSubscriptionInput
    accessLogSubscriptionIdentifier: string
end

local record GetAccessLogSubscriptionOutput
    id: string
    arn: string
    resourceId: string
    resourceArn: string
    destinationArn: string
    serviceNetworkLogType: string
    createdAt: number
    lastUpdatedAt: number
end

local record GetAuthPolicyInput
    resourceIdentifier: string
end

local record GetAuthPolicyOutput
    policy: string
    state: string
    createdAt: number
    lastUpdatedAt: number
end

local record GetDomainVerificationInput
    domainVerificationIdentifier: string
end

local record GetDomainVerificationOutput
    id: string
    arn: string
    domainName: string
    status: string
    txtMethodConfig: TxtMethodConfig
    createdAt: number
    lastVerifiedTime: number
    tags: {string : string}
end

local record GetListenerInput
    serviceIdentifier: string
    listenerIdentifier: string
end

local record GetListenerOutput
    arn: string
    id: string
    name: string
    protocol: string
    port: number
    serviceArn: string
    serviceId: string
    defaultAction: RuleAction
    createdAt: number
    lastUpdatedAt: number
end

local record GetResourceConfigurationInput
    resourceConfigurationIdentifier: string
end

local record GetResourceConfigurationOutput
    id: string
    name: string
    arn: string
    resourceGatewayId: string
    resourceConfigurationGroupId: string
    type: string
    allowAssociationToShareableServiceNetwork: boolean
    portRanges: {string}
    protocol: string
    customDomainName: string
    status: string
    resourceConfigurationDefinition: ResourceConfigurationDefinition
    createdAt: number
    amazonManaged: boolean
    failureReason: string
    lastUpdatedAt: number
    domainVerificationId: string
    domainVerificationArn: string
    domainVerificationStatus: string
    groupDomain: string
end

local record GetResourceGatewayInput
    resourceGatewayIdentifier: string
end

local record GetResourceGatewayOutput
    name: string
    id: string
    arn: string
    status: string
    vpcId: string
    subnetIds: {string}
    securityGroupIds: {string}
    ipAddressType: string
    ipv4AddressesPerEni: number
    createdAt: number
    lastUpdatedAt: number
end

local record GetResourcePolicyInput
    resourceArn: string
end

local record GetResourcePolicyOutput
    policy: string
end

local record GetRuleInput
    serviceIdentifier: string
    listenerIdentifier: string
    ruleIdentifier: string
end

local record GetRuleOutput
    arn: string
    id: string
    name: string
    isDefault: boolean
    match: RuleMatch
    priority: number
    action: RuleAction
    createdAt: number
    lastUpdatedAt: number
end

local record GetServiceInput
    serviceIdentifier: string
end

local record GetServiceOutput
    id: string
    name: string
    arn: string
    createdAt: number
    lastUpdatedAt: number
    dnsEntry: DnsEntry
    customDomainName: string
    certificateArn: string
    status: string
    authType: string
    failureCode: string
    failureMessage: string
end

local record GetServiceNetworkInput
    serviceNetworkIdentifier: string
end

local record GetServiceNetworkOutput
    id: string
    name: string
    createdAt: number
    lastUpdatedAt: number
    arn: string
    authType: string
    sharingConfig: SharingConfig
    numberOfAssociatedVPCs: number
    numberOfAssociatedServices: number
end

local record GetServiceNetworkResourceAssociationInput
    serviceNetworkResourceAssociationIdentifier: string
end

local record GetServiceNetworkResourceAssociationOutput
    id: string
    arn: string
    status: string
    createdBy: string
    createdAt: number
    resourceConfigurationId: string
    resourceConfigurationArn: string
    resourceConfigurationName: string
    serviceNetworkId: string
    serviceNetworkArn: string
    serviceNetworkName: string
    failureReason: string
    failureCode: string
    lastUpdatedAt: number
    privateDnsEntry: DnsEntry
    privateDnsEnabled: boolean
    dnsEntry: DnsEntry
    isManagedAssociation: boolean
    domainVerificationStatus: string
end

local record GetServiceNetworkServiceAssociationInput
    serviceNetworkServiceAssociationIdentifier: string
end

local record GetServiceNetworkServiceAssociationOutput
    id: string
    status: string
    arn: string
    createdBy: string
    createdAt: number
    serviceId: string
    serviceName: string
    serviceArn: string
    serviceNetworkId: string
    serviceNetworkName: string
    serviceNetworkArn: string
    dnsEntry: DnsEntry
    customDomainName: string
    failureMessage: string
    failureCode: string
end

local record GetServiceNetworkVpcAssociationInput
    serviceNetworkVpcAssociationIdentifier: string
end

local record GetServiceNetworkVpcAssociationOutput
    id: string
    status: string
    arn: string
    createdBy: string
    createdAt: number
    serviceNetworkId: string
    serviceNetworkName: string
    serviceNetworkArn: string
    vpcId: string
    securityGroupIds: {string}
    privateDnsEnabled: boolean
    failureMessage: string
    failureCode: string
    lastUpdatedAt: number
    dnsOptions: DnsOptions
end

local record GetTargetGroupInput
    targetGroupIdentifier: string
end

local record GetTargetGroupOutput
    id: string
    arn: string
    name: string
    type: string
    config: TargetGroupConfig
    createdAt: number
    lastUpdatedAt: number
    status: string
    serviceArns: {string}
    failureMessage: string
    failureCode: string
end

local record ListAccessLogSubscriptionsInput
    resourceIdentifier: string
    maxResults: number
    nextToken: string
end

local record ListAccessLogSubscriptionsOutput
    items: {AccessLogSubscriptionSummary}
    nextToken: string
end

local record ListDomainVerificationsInput
    maxResults: number
    nextToken: string
end

local record ListDomainVerificationsOutput
    items: {DomainVerificationSummary}
    nextToken: string
end

local record ListListenersInput
    serviceIdentifier: string
    maxResults: number
    nextToken: string
end

local record ListListenersOutput
    items: {ListenerSummary}
    nextToken: string
end

local record ListResourceConfigurationsInput
    resourceGatewayIdentifier: string
    resourceConfigurationGroupIdentifier: string
    domainVerificationIdentifier: string
    maxResults: number
    nextToken: string
end

local record ListResourceConfigurationsOutput
    items: {ResourceConfigurationSummary}
    nextToken: string
end

local record ListResourceEndpointAssociationsInput
    resourceConfigurationIdentifier: string
    resourceEndpointAssociationIdentifier: string
    vpcEndpointId: string
    vpcEndpointOwner: string
    maxResults: number
    nextToken: string
end

local record ListResourceEndpointAssociationsOutput
    items: {ResourceEndpointAssociationSummary}
    nextToken: string
end

local record ListResourceGatewaysInput
    maxResults: number
    nextToken: string
end

local record ListResourceGatewaysOutput
    items: {ResourceGatewaySummary}
    nextToken: string
end

local record ListRulesInput
    serviceIdentifier: string
    listenerIdentifier: string
    maxResults: number
    nextToken: string
end

local record ListRulesOutput
    items: {RuleSummary}
    nextToken: string
end

local record ListServiceNetworkResourceAssociationsInput
    serviceNetworkIdentifier: string
    resourceConfigurationIdentifier: string
    maxResults: number
    nextToken: string
    includeChildren: boolean
end

local record ListServiceNetworkResourceAssociationsOutput
    items: {ServiceNetworkResourceAssociationSummary}
    nextToken: string
end

local record ListServiceNetworksInput
    maxResults: number
    nextToken: string
end

local record ListServiceNetworksOutput
    items: {ServiceNetworkSummary}
    nextToken: string
end

local record ListServiceNetworkServiceAssociationsInput
    serviceNetworkIdentifier: string
    serviceIdentifier: string
    maxResults: number
    nextToken: string
end

local record ListServiceNetworkServiceAssociationsOutput
    items: {ServiceNetworkServiceAssociationSummary}
    nextToken: string
end

local record ListServiceNetworkVpcAssociationsInput
    serviceNetworkIdentifier: string
    vpcIdentifier: string
    maxResults: number
    nextToken: string
end

local record ListServiceNetworkVpcAssociationsOutput
    items: {ServiceNetworkVpcAssociationSummary}
    nextToken: string
end

local record ListServiceNetworkVpcEndpointAssociationsInput
    serviceNetworkIdentifier: string
    maxResults: number
    nextToken: string
end

local record ListServiceNetworkVpcEndpointAssociationsOutput
    items: {ServiceNetworkEndpointAssociation}
    nextToken: string
end

local record ListServicesInput
    maxResults: number
    nextToken: string
end

local record ListServicesOutput
    items: {ServiceSummary}
    nextToken: string
end

local record ListTagsForResourceInput
    resourceArn: string
end

local record ListTagsForResourceOutput
    tags: {string : string}
end

local record ListTargetGroupsInput
    maxResults: number
    nextToken: string
    vpcIdentifier: string
    targetGroupType: string
end

local record ListTargetGroupsOutput
    items: {TargetGroupSummary}
    nextToken: string
end

local record ListTargetsInput
    targetGroupIdentifier: string
    maxResults: number
    nextToken: string
    targets: {Target}
end

local record ListTargetsOutput
    items: {TargetSummary}
    nextToken: string
end

local record PutAuthPolicyInput
    resourceIdentifier: string
    policy: string
end

local record PutAuthPolicyOutput
    policy: string
    state: string
end

local record PutResourcePolicyInput
    resourceArn: string
    policy: string
end

local record PutResourcePolicyOutput
end

local record RegisterTargetsInput
    targetGroupIdentifier: string
    targets: {Target}
end

local record RegisterTargetsOutput
    successful: {Target}
    unsuccessful: {TargetFailure}
end

local record StartDomainVerificationInput
    clientToken: string
    domainName: string
    tags: {string : string}
end

local record StartDomainVerificationOutput
    id: string
    arn: string
    domainName: string
    status: string
    txtMethodConfig: TxtMethodConfig
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

local record UpdateAccessLogSubscriptionInput
    accessLogSubscriptionIdentifier: string
    destinationArn: string
end

local record UpdateAccessLogSubscriptionOutput
    id: string
    arn: string
    resourceId: string
    resourceArn: string
    destinationArn: string
end

local record UpdateListenerInput
    serviceIdentifier: string
    listenerIdentifier: string
    defaultAction: RuleAction
end

local record UpdateListenerOutput
    arn: string
    id: string
    name: string
    protocol: string
    port: number
    serviceArn: string
    serviceId: string
    defaultAction: RuleAction
end

local record UpdateResourceConfigurationInput
    resourceConfigurationIdentifier: string
    resourceConfigurationDefinition: ResourceConfigurationDefinition
    allowAssociationToShareableServiceNetwork: boolean
    portRanges: {string}
end

local record UpdateResourceConfigurationOutput
    id: string
    name: string
    arn: string
    resourceGatewayId: string
    resourceConfigurationGroupId: string
    type: string
    portRanges: {string}
    allowAssociationToShareableServiceNetwork: boolean
    protocol: string
    status: string
    resourceConfigurationDefinition: ResourceConfigurationDefinition
end

local record UpdateResourceGatewayInput
    resourceGatewayIdentifier: string
    securityGroupIds: {string}
end

local record UpdateResourceGatewayOutput
    name: string
    id: string
    arn: string
    status: string
    vpcId: string
    subnetIds: {string}
    securityGroupIds: {string}
    ipAddressType: string
end

local record UpdateRuleInput
    serviceIdentifier: string
    listenerIdentifier: string
    ruleIdentifier: string
    match: RuleMatch
    priority: number
    action: RuleAction
end

local record UpdateRuleOutput
    arn: string
    id: string
    name: string
    isDefault: boolean
    match: RuleMatch
    priority: number
    action: RuleAction
end

local record UpdateServiceInput
    serviceIdentifier: string
    certificateArn: string
    authType: string
end

local record UpdateServiceOutput
    id: string
    arn: string
    name: string
    customDomainName: string
    certificateArn: string
    authType: string
end

local record UpdateServiceNetworkInput
    serviceNetworkIdentifier: string
    authType: string
end

local record UpdateServiceNetworkOutput
    id: string
    name: string
    arn: string
    authType: string
end

local record UpdateServiceNetworkVpcAssociationInput
    serviceNetworkVpcAssociationIdentifier: string
    securityGroupIds: {string}
end

local record UpdateServiceNetworkVpcAssociationOutput
    id: string
    arn: string
    status: string
    createdBy: string
    securityGroupIds: {string}
end

local record UpdateTargetGroupInput
    targetGroupIdentifier: string
    healthCheck: HealthCheckConfig
end

local record UpdateTargetGroupOutput
    id: string
    arn: string
    name: string
    type: string
    config: TargetGroupConfig
    status: string
end

local record AccessDeniedException
    message: string
end

local record ConflictException
    message: string
    resourceId: string
    resourceType: string
end

local record InternalServerException
    message: string
    retryAfterSeconds: number
end

local record ResourceNotFoundException
    message: string
    resourceId: string
    resourceType: string
end

local record ThrottlingException
    message: string
    serviceCode: string
    quotaCode: string
    retryAfterSeconds: number
end

local record ValidationException
    message: string
    reason: string
    fieldList: {ValidationExceptionField}
end

local record AccessDeniedException
    message: string
end

local record ConflictException
    message: string
    resourceId: string
    resourceType: string
end

local record InternalServerException
    message: string
    retryAfterSeconds: number
end

local record ResourceNotFoundException
    message: string
    resourceId: string
    resourceType: string
end

local record ThrottlingException
    message: string
    serviceCode: string
    quotaCode: string
    retryAfterSeconds: number
end

local record ValidationException
    message: string
    reason: string
    fieldList: {ValidationExceptionField}
end

local record AccessDeniedException
    message: string
end

local record ConflictException
    message: string
    resourceId: string
    resourceType: string
end

local record InternalServerException
    message: string
    retryAfterSeconds: number
end

local record ResourceNotFoundException
    message: string
    resourceId: string
    resourceType: string
end

local record ServiceQuotaExceededException
    message: string
    resourceId: string
    resourceType: string
    serviceCode: string
    quotaCode: string
end

local record ThrottlingException
    message: string
    serviceCode: string
    quotaCode: string
    retryAfterSeconds: number
end

local record ValidationException
    message: string
    reason: string
    fieldList: {ValidationExceptionField}
end

local record AccessDeniedException
    message: string
end

local record ConflictException
    message: string
    resourceId: string
    resourceType: string
end

local record InternalServerException
    message: string
    retryAfterSeconds: number
end

local record ResourceNotFoundException
    message: string
    resourceId: string
    resourceType: string
end

local record ServiceQuotaExceededException
    message: string
    resourceId: string
    resourceType: string
    serviceCode: string
    quotaCode: string
end

local record ThrottlingException
    message: string
    serviceCode: string
    quotaCode: string
    retryAfterSeconds: number
end

local record ValidationException
    message: string
    reason: string
    fieldList: {ValidationExceptionField}
end

local record AccessDeniedException
    message: string
end

local record ConflictException
    message: string
    resourceId: string
    resourceType: string
end

local record InternalServerException
    message: string
    retryAfterSeconds: number
end

local record ResourceNotFoundException
    message: string
    resourceId: string
    resourceType: string
end

local record ServiceQuotaExceededException
    message: string
    resourceId: string
    resourceType: string
    serviceCode: string
    quotaCode: string
end

local record ThrottlingException
    message: string
    serviceCode: string
    quotaCode: string
    retryAfterSeconds: number
end

local record ValidationException
    message: string
    reason: string
    fieldList: {ValidationExceptionField}
end

local record AccessDeniedException
    message: string
end

local record ConflictException
    message: string
    resourceId: string
    resourceType: string
end

local record InternalServerException
    message: string
    retryAfterSeconds: number
end

local record ResourceNotFoundException
    message: string
    resourceId: string
    resourceType: string
end

local record ServiceQuotaExceededException
    message: string
    resourceId: string
    resourceType: string
    serviceCode: string
    quotaCode: string
end

local record ThrottlingException
    message: string
    serviceCode: string
    quotaCode: string
    retryAfterSeconds: number
end

local record ValidationException
    message: string
    reason: string
    fieldList: {ValidationExceptionField}
end

local record AccessDeniedException
    message: string
end

local record ConflictException
    message: string
    resourceId: string
    resourceType: string
end

local record InternalServerException
    message: string
    retryAfterSeconds: number
end

local record ResourceNotFoundException
    message: string
    resourceId: string
    resourceType: string
end

local record ServiceQuotaExceededException
    message: string
    resourceId: string
    resourceType: string
    serviceCode: string
    quotaCode: string
end

local record ThrottlingException
    message: string
    serviceCode: string
    quotaCode: string
    retryAfterSeconds: number
end

local record ValidationException
    message: string
    reason: string
    fieldList: {ValidationExceptionField}
end

local record AccessDeniedException
    message: string
end

local record ConflictException
    message: string
    resourceId: string
    resourceType: string
end

local record InternalServerException
    message: string
    retryAfterSeconds: number
end

local record ResourceNotFoundException
    message: string
    resourceId: string
    resourceType: string
end

local record ServiceQuotaExceededException
    message: string
    resourceId: string
    resourceType: string
    serviceCode: string
    quotaCode: string
end

local record ThrottlingException
    message: string
    serviceCode: string
    quotaCode: string
    retryAfterSeconds: number
end

local record ValidationException
    message: string
    reason: string
    fieldList: {ValidationExceptionField}
end

local record AccessDeniedException
    message: string
end

local record ConflictException
    message: string
    resourceId: string
    resourceType: string
end

local record InternalServerException
    message: string
    retryAfterSeconds: number
end

local record ResourceNotFoundException
    message: string
    resourceId: string
    resourceType: string
end

local record ServiceQuotaExceededException
    message: string
    resourceId: string
    resourceType: string
    serviceCode: string
    quotaCode: string
end

local record ThrottlingException
    message: string
    serviceCode: string
    quotaCode: string
    retryAfterSeconds: number
end

local record ValidationException
    message: string
    reason: string
    fieldList: {ValidationExceptionField}
end

local record AccessDeniedException
    message: string
end

local record ConflictException
    message: string
    resourceId: string
    resourceType: string
end

local record InternalServerException
    message: string
    retryAfterSeconds: number
end

local record ResourceNotFoundException
    message: string
    resourceId: string
    resourceType: string
end

local record ServiceQuotaExceededException
    message: string
    resourceId: string
    resourceType: string
    serviceCode: string
    quotaCode: string
end

local record ThrottlingException
    message: string
    serviceCode: string
    quotaCode: string
    retryAfterSeconds: number
end

local record ValidationException
    message: string
    reason: string
    fieldList: {ValidationExceptionField}
end

local record AccessDeniedException
    message: string
end

local record ConflictException
    message: string
    resourceId: string
    resourceType: string
end

local record InternalServerException
    message: string
    retryAfterSeconds: number
end

local record ResourceNotFoundException
    message: string
    resourceId: string
    resourceType: string
end

local record ServiceQuotaExceededException
    message: string
    resourceId: string
    resourceType: string
    serviceCode: string
    quotaCode: string
end

local record ThrottlingException
    message: string
    serviceCode: string
    quotaCode: string
    retryAfterSeconds: number
end

local record ValidationException
    message: string
    reason: string
    fieldList: {ValidationExceptionField}
end

local record AccessDeniedException
    message: string
end

local record ConflictException
    message: string
    resourceId: string
    resourceType: string
end

local record InternalServerException
    message: string
    retryAfterSeconds: number
end

local record ResourceNotFoundException
    message: string
    resourceId: string
    resourceType: string
end

local record ServiceQuotaExceededException
    message: string
    resourceId: string
    resourceType: string
    serviceCode: string
    quotaCode: string
end

local record ThrottlingException
    message: string
    serviceCode: string
    quotaCode: string
    retryAfterSeconds: number
end

local record ValidationException
    message: string
    reason: string
    fieldList: {ValidationExceptionField}
end

local record AccessDeniedException
    message: string
end

local record InternalServerException
    message: string
    retryAfterSeconds: number
end

local record ResourceNotFoundException
    message: string
    resourceId: string
    resourceType: string
end

local record ThrottlingException
    message: string
    serviceCode: string
    quotaCode: string
    retryAfterSeconds: number
end

local record ValidationException
    message: string
    reason: string
    fieldList: {ValidationExceptionField}
end

local record AccessDeniedException
    message: string
end

local record InternalServerException
    message: string
    retryAfterSeconds: number
end

local record ResourceNotFoundException
    message: string
    resourceId: string
    resourceType: string
end

local record ThrottlingException
    message: string
    serviceCode: string
    quotaCode: string
    retryAfterSeconds: number
end

local record ValidationException
    message: string
    reason: string
    fieldList: {ValidationExceptionField}
end

local record AccessDeniedException
    message: string
end

local record InternalServerException
    message: string
    retryAfterSeconds: number
end

local record ResourceNotFoundException
    message: string
    resourceId: string
    resourceType: string
end

local record ThrottlingException
    message: string
    serviceCode: string
    quotaCode: string
    retryAfterSeconds: number
end

local record ValidationException
    message: string
    reason: string
    fieldList: {ValidationExceptionField}
end

local record AccessDeniedException
    message: string
end

local record ConflictException
    message: string
    resourceId: string
    resourceType: string
end

local record InternalServerException
    message: string
    retryAfterSeconds: number
end

local record ResourceNotFoundException
    message: string
    resourceId: string
    resourceType: string
end

local record ThrottlingException
    message: string
    serviceCode: string
    quotaCode: string
    retryAfterSeconds: number
end

local record ValidationException
    message: string
    reason: string
    fieldList: {ValidationExceptionField}
end

local record AccessDeniedException
    message: string
end

local record ConflictException
    message: string
    resourceId: string
    resourceType: string
end

local record InternalServerException
    message: string
    retryAfterSeconds: number
end

local record ResourceNotFoundException
    message: string
    resourceId: string
    resourceType: string
end

local record ThrottlingException
    message: string
    serviceCode: string
    quotaCode: string
    retryAfterSeconds: number
end

local record ValidationException
    message: string
    reason: string
    fieldList: {ValidationExceptionField}
end

local record AccessDeniedException
    message: string
end

local record InternalServerException
    message: string
    retryAfterSeconds: number
end

local record ResourceNotFoundException
    message: string
    resourceId: string
    resourceType: string
end

local record ThrottlingException
    message: string
    serviceCode: string
    quotaCode: string
    retryAfterSeconds: number
end

local record ValidationException
    message: string
    reason: string
    fieldList: {ValidationExceptionField}
end

local record AccessDeniedException
    message: string
end

local record ConflictException
    message: string
    resourceId: string
    resourceType: string
end

local record InternalServerException
    message: string
    retryAfterSeconds: number
end

local record ResourceNotFoundException
    message: string
    resourceId: string
    resourceType: string
end

local record ThrottlingException
    message: string
    serviceCode: string
    quotaCode: string
    retryAfterSeconds: number
end

local record ValidationException
    message: string
    reason: string
    fieldList: {ValidationExceptionField}
end

local record AccessDeniedException
    message: string
end

local record InternalServerException
    message: string
    retryAfterSeconds: number
end

local record ResourceNotFoundException
    message: string
    resourceId: string
    resourceType: string
end

local record ThrottlingException
    message: string
    serviceCode: string
    quotaCode: string
    retryAfterSeconds: number
end

local record ValidationException
    message: string
    reason: string
    fieldList: {ValidationExceptionField}
end

local record AccessDeniedException
    message: string
end

local record ConflictException
    message: string
    resourceId: string
    resourceType: string
end

local record InternalServerException
    message: string
    retryAfterSeconds: number
end

local record ResourceNotFoundException
    message: string
    resourceId: string
    resourceType: string
end

local record ThrottlingException
    message: string
    serviceCode: string
    quotaCode: string
    retryAfterSeconds: number
end

local record ValidationException
    message: string
    reason: string
    fieldList: {ValidationExceptionField}
end

local record AccessDeniedException
    message: string
end

local record ConflictException
    message: string
    resourceId: string
    resourceType: string
end

local record InternalServerException
    message: string
    retryAfterSeconds: number
end

local record ResourceNotFoundException
    message: string
    resourceId: string
    resourceType: string
end

local record ThrottlingException
    message: string
    serviceCode: string
    quotaCode: string
    retryAfterSeconds: number
end

local record ValidationException
    message: string
    reason: string
    fieldList: {ValidationExceptionField}
end

local record AccessDeniedException
    message: string
end

local record ConflictException
    message: string
    resourceId: string
    resourceType: string
end

local record InternalServerException
    message: string
    retryAfterSeconds: number
end

local record ResourceNotFoundException
    message: string
    resourceId: string
    resourceType: string
end

local record ThrottlingException
    message: string
    serviceCode: string
    quotaCode: string
    retryAfterSeconds: number
end

local record ValidationException
    message: string
    reason: string
    fieldList: {ValidationExceptionField}
end

local record AccessDeniedException
    message: string
end

local record ConflictException
    message: string
    resourceId: string
    resourceType: string
end

local record InternalServerException
    message: string
    retryAfterSeconds: number
end

local record ResourceNotFoundException
    message: string
    resourceId: string
    resourceType: string
end

local record ThrottlingException
    message: string
    serviceCode: string
    quotaCode: string
    retryAfterSeconds: number
end

local record ValidationException
    message: string
    reason: string
    fieldList: {ValidationExceptionField}
end

local record AccessDeniedException
    message: string
end

local record ConflictException
    message: string
    resourceId: string
    resourceType: string
end

local record InternalServerException
    message: string
    retryAfterSeconds: number
end

local record ResourceNotFoundException
    message: string
    resourceId: string
    resourceType: string
end

local record ThrottlingException
    message: string
    serviceCode: string
    quotaCode: string
    retryAfterSeconds: number
end

local record ValidationException
    message: string
    reason: string
    fieldList: {ValidationExceptionField}
end

local record AccessDeniedException
    message: string
end

local record ConflictException
    message: string
    resourceId: string
    resourceType: string
end

local record InternalServerException
    message: string
    retryAfterSeconds: number
end

local record ResourceNotFoundException
    message: string
    resourceId: string
    resourceType: string
end

local record ThrottlingException
    message: string
    serviceCode: string
    quotaCode: string
    retryAfterSeconds: number
end

local record ValidationException
    message: string
    reason: string
    fieldList: {ValidationExceptionField}
end

local record ConflictException
    message: string
    resourceId: string
    resourceType: string
end

local record InternalServerException
    message: string
    retryAfterSeconds: number
end

local record ResourceNotFoundException
    message: string
    resourceId: string
    resourceType: string
end

local record ThrottlingException
    message: string
    serviceCode: string
    quotaCode: string
    retryAfterSeconds: number
end

local record ValidationException
    message: string
    reason: string
    fieldList: {ValidationExceptionField}
end

local record AccessDeniedException
    message: string
end

local record ConflictException
    message: string
    resourceId: string
    resourceType: string
end

local record InternalServerException
    message: string
    retryAfterSeconds: number
end

local record ResourceNotFoundException
    message: string
    resourceId: string
    resourceType: string
end

local record ThrottlingException
    message: string
    serviceCode: string
    quotaCode: string
    retryAfterSeconds: number
end

local record ValidationException
    message: string
    reason: string
    fieldList: {ValidationExceptionField}
end

local record AccessDeniedException
    message: string
end

local record InternalServerException
    message: string
    retryAfterSeconds: number
end

local record ResourceNotFoundException
    message: string
    resourceId: string
    resourceType: string
end

local record ThrottlingException
    message: string
    serviceCode: string
    quotaCode: string
    retryAfterSeconds: number
end

local record ValidationException
    message: string
    reason: string
    fieldList: {ValidationExceptionField}
end

local record AccessDeniedException
    message: string
end

local record InternalServerException
    message: string
    retryAfterSeconds: number
end

local record ResourceNotFoundException
    message: string
    resourceId: string
    resourceType: string
end

local record ThrottlingException
    message: string
    serviceCode: string
    quotaCode: string
    retryAfterSeconds: number
end

local record ValidationException
    message: string
    reason: string
    fieldList: {ValidationExceptionField}
end

local record AccessDeniedException
    message: string
end

local record InternalServerException
    message: string
    retryAfterSeconds: number
end

local record ResourceNotFoundException
    message: string
    resourceId: string
    resourceType: string
end

local record ThrottlingException
    message: string
    serviceCode: string
    quotaCode: string
    retryAfterSeconds: number
end

local record ValidationException
    message: string
    reason: string
    fieldList: {ValidationExceptionField}
end

local record AccessDeniedException
    message: string
end

local record InternalServerException
    message: string
    retryAfterSeconds: number
end

local record ResourceNotFoundException
    message: string
    resourceId: string
    resourceType: string
end

local record ThrottlingException
    message: string
    serviceCode: string
    quotaCode: string
    retryAfterSeconds: number
end

local record ValidationException
    message: string
    reason: string
    fieldList: {ValidationExceptionField}
end

local record AccessDeniedException
    message: string
end

local record InternalServerException
    message: string
    retryAfterSeconds: number
end

local record ResourceNotFoundException
    message: string
    resourceId: string
    resourceType: string
end

local record ThrottlingException
    message: string
    serviceCode: string
    quotaCode: string
    retryAfterSeconds: number
end

local record ValidationException
    message: string
    reason: string
    fieldList: {ValidationExceptionField}
end

local record AccessDeniedException
    message: string
end

local record InternalServerException
    message: string
    retryAfterSeconds: number
end

local record ResourceNotFoundException
    message: string
    resourceId: string
    resourceType: string
end

local record ThrottlingException
    message: string
    serviceCode: string
    quotaCode: string
    retryAfterSeconds: number
end

local record ValidationException
    message: string
    reason: string
    fieldList: {ValidationExceptionField}
end

local record AccessDeniedException
    message: string
end

local record InternalServerException
    message: string
    retryAfterSeconds: number
end

local record ResourceNotFoundException
    message: string
    resourceId: string
    resourceType: string
end

local record ThrottlingException
    message: string
    serviceCode: string
    quotaCode: string
    retryAfterSeconds: number
end

local record ValidationException
    message: string
    reason: string
    fieldList: {ValidationExceptionField}
end

local record AccessDeniedException
    message: string
end

local record InternalServerException
    message: string
    retryAfterSeconds: number
end

local record ResourceNotFoundException
    message: string
    resourceId: string
    resourceType: string
end

local record ThrottlingException
    message: string
    serviceCode: string
    quotaCode: string
    retryAfterSeconds: number
end

local record ValidationException
    message: string
    reason: string
    fieldList: {ValidationExceptionField}
end

local record AccessDeniedException
    message: string
end

local record InternalServerException
    message: string
    retryAfterSeconds: number
end

local record ResourceNotFoundException
    message: string
    resourceId: string
    resourceType: string
end

local record ThrottlingException
    message: string
    serviceCode: string
    quotaCode: string
    retryAfterSeconds: number
end

local record ValidationException
    message: string
    reason: string
    fieldList: {ValidationExceptionField}
end

local record AccessDeniedException
    message: string
end

local record InternalServerException
    message: string
    retryAfterSeconds: number
end

local record ResourceNotFoundException
    message: string
    resourceId: string
    resourceType: string
end

local record ThrottlingException
    message: string
    serviceCode: string
    quotaCode: string
    retryAfterSeconds: number
end

local record ValidationException
    message: string
    reason: string
    fieldList: {ValidationExceptionField}
end

local record AccessDeniedException
    message: string
end

local record InternalServerException
    message: string
    retryAfterSeconds: number
end

local record ResourceNotFoundException
    message: string
    resourceId: string
    resourceType: string
end

local record ThrottlingException
    message: string
    serviceCode: string
    quotaCode: string
    retryAfterSeconds: number
end

local record ValidationException
    message: string
    reason: string
    fieldList: {ValidationExceptionField}
end

local record AccessDeniedException
    message: string
end

local record InternalServerException
    message: string
    retryAfterSeconds: number
end

local record ResourceNotFoundException
    message: string
    resourceId: string
    resourceType: string
end

local record ThrottlingException
    message: string
    serviceCode: string
    quotaCode: string
    retryAfterSeconds: number
end

local record ValidationException
    message: string
    reason: string
    fieldList: {ValidationExceptionField}
end

local record AccessDeniedException
    message: string
end

local record InternalServerException
    message: string
    retryAfterSeconds: number
end

local record ResourceNotFoundException
    message: string
    resourceId: string
    resourceType: string
end

local record ThrottlingException
    message: string
    serviceCode: string
    quotaCode: string
    retryAfterSeconds: number
end

local record ValidationException
    message: string
    reason: string
    fieldList: {ValidationExceptionField}
end

local record AccessDeniedException
    message: string
end

local record InternalServerException
    message: string
    retryAfterSeconds: number
end

local record ResourceNotFoundException
    message: string
    resourceId: string
    resourceType: string
end

local record ThrottlingException
    message: string
    serviceCode: string
    quotaCode: string
    retryAfterSeconds: number
end

local record ValidationException
    message: string
    reason: string
    fieldList: {ValidationExceptionField}
end

local record AccessDeniedException
    message: string
end

local record InternalServerException
    message: string
    retryAfterSeconds: number
end

local record ThrottlingException
    message: string
    serviceCode: string
    quotaCode: string
    retryAfterSeconds: number
end

local record ValidationException
    message: string
    reason: string
    fieldList: {ValidationExceptionField}
end

local record AccessDeniedException
    message: string
end

local record InternalServerException
    message: string
    retryAfterSeconds: number
end

local record ResourceNotFoundException
    message: string
    resourceId: string
    resourceType: string
end

local record ThrottlingException
    message: string
    serviceCode: string
    quotaCode: string
    retryAfterSeconds: number
end

local record ValidationException
    message: string
    reason: string
    fieldList: {ValidationExceptionField}
end

local record AccessDeniedException
    message: string
end

local record InternalServerException
    message: string
    retryAfterSeconds: number
end

local record ResourceNotFoundException
    message: string
    resourceId: string
    resourceType: string
end

local record ThrottlingException
    message: string
    serviceCode: string
    quotaCode: string
    retryAfterSeconds: number
end

local record ValidationException
    message: string
    reason: string
    fieldList: {ValidationExceptionField}
end

local record AccessDeniedException
    message: string
end

local record InternalServerException
    message: string
    retryAfterSeconds: number
end

local record ThrottlingException
    message: string
    serviceCode: string
    quotaCode: string
    retryAfterSeconds: number
end

local record ValidationException
    message: string
    reason: string
    fieldList: {ValidationExceptionField}
end

local record AccessDeniedException
    message: string
end

local record InternalServerException
    message: string
    retryAfterSeconds: number
end

local record ThrottlingException
    message: string
    serviceCode: string
    quotaCode: string
    retryAfterSeconds: number
end

local record ValidationException
    message: string
    reason: string
    fieldList: {ValidationExceptionField}
end

local record AccessDeniedException
    message: string
end

local record InternalServerException
    message: string
    retryAfterSeconds: number
end

local record ThrottlingException
    message: string
    serviceCode: string
    quotaCode: string
    retryAfterSeconds: number
end

local record ValidationException
    message: string
    reason: string
    fieldList: {ValidationExceptionField}
end

local record AccessDeniedException
    message: string
end

local record InternalServerException
    message: string
    retryAfterSeconds: number
end

local record ResourceNotFoundException
    message: string
    resourceId: string
    resourceType: string
end

local record ThrottlingException
    message: string
    serviceCode: string
    quotaCode: string
    retryAfterSeconds: number
end

local record ValidationException
    message: string
    reason: string
    fieldList: {ValidationExceptionField}
end

local record AccessDeniedException
    message: string
end

local record InternalServerException
    message: string
    retryAfterSeconds: number
end

local record ThrottlingException
    message: string
    serviceCode: string
    quotaCode: string
    retryAfterSeconds: number
end

local record ValidationException
    message: string
    reason: string
    fieldList: {ValidationExceptionField}
end

local record AccessDeniedException
    message: string
end

local record InternalServerException
    message: string
    retryAfterSeconds: number
end

local record ThrottlingException
    message: string
    serviceCode: string
    quotaCode: string
    retryAfterSeconds: number
end

local record ValidationException
    message: string
    reason: string
    fieldList: {ValidationExceptionField}
end

local record AccessDeniedException
    message: string
end

local record InternalServerException
    message: string
    retryAfterSeconds: number
end

local record ThrottlingException
    message: string
    serviceCode: string
    quotaCode: string
    retryAfterSeconds: number
end

local record ValidationException
    message: string
    reason: string
    fieldList: {ValidationExceptionField}
end

local record AccessDeniedException
    message: string
end

local record InternalServerException
    message: string
    retryAfterSeconds: number
end

local record ThrottlingException
    message: string
    serviceCode: string
    quotaCode: string
    retryAfterSeconds: number
end

local record ValidationException
    message: string
    reason: string
    fieldList: {ValidationExceptionField}
end

local record AccessDeniedException
    message: string
end

local record InternalServerException
    message: string
    retryAfterSeconds: number
end

local record ThrottlingException
    message: string
    serviceCode: string
    quotaCode: string
    retryAfterSeconds: number
end

local record ValidationException
    message: string
    reason: string
    fieldList: {ValidationExceptionField}
end

local record AccessDeniedException
    message: string
end

local record InternalServerException
    message: string
    retryAfterSeconds: number
end

local record ThrottlingException
    message: string
    serviceCode: string
    quotaCode: string
    retryAfterSeconds: number
end

local record ValidationException
    message: string
    reason: string
    fieldList: {ValidationExceptionField}
end

local record AccessDeniedException
    message: string
end

local record InternalServerException
    message: string
    retryAfterSeconds: number
end

local record ResourceNotFoundException
    message: string
    resourceId: string
    resourceType: string
end

local record ValidationException
    message: string
    reason: string
    fieldList: {ValidationExceptionField}
end

local record AccessDeniedException
    message: string
end

local record InternalServerException
    message: string
    retryAfterSeconds: number
end

local record ThrottlingException
    message: string
    serviceCode: string
    quotaCode: string
    retryAfterSeconds: number
end

local record ValidationException
    message: string
    reason: string
    fieldList: {ValidationExceptionField}
end

local record AccessDeniedException
    message: string
end

local record InternalServerException
    message: string
    retryAfterSeconds: number
end

local record ResourceNotFoundException
    message: string
    resourceId: string
    resourceType: string
end

local record ThrottlingException
    message: string
    serviceCode: string
    quotaCode: string
    retryAfterSeconds: number
end

local record ValidationException
    message: string
    reason: string
    fieldList: {ValidationExceptionField}
end

local record AccessDeniedException
    message: string
end

local record InternalServerException
    message: string
    retryAfterSeconds: number
end

local record ResourceNotFoundException
    message: string
    resourceId: string
    resourceType: string
end

local record ThrottlingException
    message: string
    serviceCode: string
    quotaCode: string
    retryAfterSeconds: number
end

local record ValidationException
    message: string
    reason: string
    fieldList: {ValidationExceptionField}
end

local record AccessDeniedException
    message: string
end

local record InternalServerException
    message: string
    retryAfterSeconds: number
end

local record ResourceNotFoundException
    message: string
    resourceId: string
    resourceType: string
end

local record ThrottlingException
    message: string
    serviceCode: string
    quotaCode: string
    retryAfterSeconds: number
end

local record ValidationException
    message: string
    reason: string
    fieldList: {ValidationExceptionField}
end

local record AccessDeniedException
    message: string
end

local record ConflictException
    message: string
    resourceId: string
    resourceType: string
end

local record InternalServerException
    message: string
    retryAfterSeconds: number
end

local record ResourceNotFoundException
    message: string
    resourceId: string
    resourceType: string
end

local record ServiceQuotaExceededException
    message: string
    resourceId: string
    resourceType: string
    serviceCode: string
    quotaCode: string
end

local record ThrottlingException
    message: string
    serviceCode: string
    quotaCode: string
    retryAfterSeconds: number
end

local record ValidationException
    message: string
    reason: string
    fieldList: {ValidationExceptionField}
end

local record AccessDeniedException
    message: string
end

local record ConflictException
    message: string
    resourceId: string
    resourceType: string
end

local record InternalServerException
    message: string
    retryAfterSeconds: number
end

local record ServiceQuotaExceededException
    message: string
    resourceId: string
    resourceType: string
    serviceCode: string
    quotaCode: string
end

local record ThrottlingException
    message: string
    serviceCode: string
    quotaCode: string
    retryAfterSeconds: number
end

local record ValidationException
    message: string
    reason: string
    fieldList: {ValidationExceptionField}
end

local record AccessDeniedException
    message: string
end

local record InternalServerException
    message: string
    retryAfterSeconds: number
end

local record ResourceNotFoundException
    message: string
    resourceId: string
    resourceType: string
end

local record ThrottlingException
    message: string
    serviceCode: string
    quotaCode: string
    retryAfterSeconds: number
end

local record ValidationException
    message: string
    reason: string
    fieldList: {ValidationExceptionField}
end

local record AccessDeniedException
    message: string
end

local record InternalServerException
    message: string
    retryAfterSeconds: number
end

local record ResourceNotFoundException
    message: string
    resourceId: string
    resourceType: string
end

local record ValidationException
    message: string
    reason: string
    fieldList: {ValidationExceptionField}
end

local record AccessDeniedException
    message: string
end

local record ConflictException
    message: string
    resourceId: string
    resourceType: string
end

local record InternalServerException
    message: string
    retryAfterSeconds: number
end

local record ResourceNotFoundException
    message: string
    resourceId: string
    resourceType: string
end

local record ThrottlingException
    message: string
    serviceCode: string
    quotaCode: string
    retryAfterSeconds: number
end

local record ValidationException
    message: string
    reason: string
    fieldList: {ValidationExceptionField}
end

local record AccessDeniedException
    message: string
end

local record ConflictException
    message: string
    resourceId: string
    resourceType: string
end

local record InternalServerException
    message: string
    retryAfterSeconds: number
end

local record ResourceNotFoundException
    message: string
    resourceId: string
    resourceType: string
end

local record ServiceQuotaExceededException
    message: string
    resourceId: string
    resourceType: string
    serviceCode: string
    quotaCode: string
end

local record ThrottlingException
    message: string
    serviceCode: string
    quotaCode: string
    retryAfterSeconds: number
end

local record ValidationException
    message: string
    reason: string
    fieldList: {ValidationExceptionField}
end

local record AccessDeniedException
    message: string
end

local record InternalServerException
    message: string
    retryAfterSeconds: number
end

local record ResourceNotFoundException
    message: string
    resourceId: string
    resourceType: string
end

local record ServiceQuotaExceededException
    message: string
    resourceId: string
    resourceType: string
    serviceCode: string
    quotaCode: string
end

local record ThrottlingException
    message: string
    serviceCode: string
    quotaCode: string
    retryAfterSeconds: number
end

local record ValidationException
    message: string
    reason: string
    fieldList: {ValidationExceptionField}
end

local record AccessDeniedException
    message: string
end

local record ConflictException
    message: string
    resourceId: string
    resourceType: string
end

local record InternalServerException
    message: string
    retryAfterSeconds: number
end

local record ResourceNotFoundException
    message: string
    resourceId: string
    resourceType: string
end

local record ThrottlingException
    message: string
    serviceCode: string
    quotaCode: string
    retryAfterSeconds: number
end

local record ValidationException
    message: string
    reason: string
    fieldList: {ValidationExceptionField}
end

local record AccessDeniedException
    message: string
end

local record ConflictException
    message: string
    resourceId: string
    resourceType: string
end

local record InternalServerException
    message: string
    retryAfterSeconds: number
end

local record ResourceNotFoundException
    message: string
    resourceId: string
    resourceType: string
end

local record ServiceQuotaExceededException
    message: string
    resourceId: string
    resourceType: string
    serviceCode: string
    quotaCode: string
end

local record ThrottlingException
    message: string
    serviceCode: string
    quotaCode: string
    retryAfterSeconds: number
end

local record ValidationException
    message: string
    reason: string
    fieldList: {ValidationExceptionField}
end

local record AccessDeniedException
    message: string
end

local record ConflictException
    message: string
    resourceId: string
    resourceType: string
end

local record InternalServerException
    message: string
    retryAfterSeconds: number
end

local record ResourceNotFoundException
    message: string
    resourceId: string
    resourceType: string
end

local record ServiceQuotaExceededException
    message: string
    resourceId: string
    resourceType: string
    serviceCode: string
    quotaCode: string
end

local record ThrottlingException
    message: string
    serviceCode: string
    quotaCode: string
    retryAfterSeconds: number
end

local record ValidationException
    message: string
    reason: string
    fieldList: {ValidationExceptionField}
end

local record AccessDeniedException
    message: string
end

local record ConflictException
    message: string
    resourceId: string
    resourceType: string
end

local record InternalServerException
    message: string
    retryAfterSeconds: number
end

local record ResourceNotFoundException
    message: string
    resourceId: string
    resourceType: string
end

local record ThrottlingException
    message: string
    serviceCode: string
    quotaCode: string
    retryAfterSeconds: number
end

local record ValidationException
    message: string
    reason: string
    fieldList: {ValidationExceptionField}
end

local record AccessDeniedException
    message: string
end

local record ConflictException
    message: string
    resourceId: string
    resourceType: string
end

local record InternalServerException
    message: string
    retryAfterSeconds: number
end

local record ResourceNotFoundException
    message: string
    resourceId: string
    resourceType: string
end

local record ThrottlingException
    message: string
    serviceCode: string
    quotaCode: string
    retryAfterSeconds: number
end

local record ValidationException
    message: string
    reason: string
    fieldList: {ValidationExceptionField}
end

local record AccessDeniedException
    message: string
end

local record ConflictException
    message: string
    resourceId: string
    resourceType: string
end

local record InternalServerException
    message: string
    retryAfterSeconds: number
end

local record ResourceNotFoundException
    message: string
    resourceId: string
    resourceType: string
end

local record ServiceQuotaExceededException
    message: string
    resourceId: string
    resourceType: string
    serviceCode: string
    quotaCode: string
end

local record ThrottlingException
    message: string
    serviceCode: string
    quotaCode: string
    retryAfterSeconds: number
end

local record ValidationException
    message: string
    reason: string
    fieldList: {ValidationExceptionField}
end

local record M
    BatchUpdateRuleInput: BatchUpdateRuleInput
    BatchUpdateRuleOutput: BatchUpdateRuleOutput
    CreateAccessLogSubscriptionInput: CreateAccessLogSubscriptionInput
    CreateAccessLogSubscriptionOutput: CreateAccessLogSubscriptionOutput
    CreateListenerInput: CreateListenerInput
    CreateListenerOutput: CreateListenerOutput
    CreateResourceConfigurationInput: CreateResourceConfigurationInput
    CreateResourceConfigurationOutput: CreateResourceConfigurationOutput
    CreateResourceGatewayInput: CreateResourceGatewayInput
    CreateResourceGatewayOutput: CreateResourceGatewayOutput
    CreateRuleInput: CreateRuleInput
    CreateRuleOutput: CreateRuleOutput
    CreateServiceInput: CreateServiceInput
    CreateServiceOutput: CreateServiceOutput
    CreateServiceNetworkInput: CreateServiceNetworkInput
    CreateServiceNetworkOutput: CreateServiceNetworkOutput
    CreateServiceNetworkResourceAssociationInput: CreateServiceNetworkResourceAssociationInput
    CreateServiceNetworkResourceAssociationOutput: CreateServiceNetworkResourceAssociationOutput
    CreateServiceNetworkServiceAssociationInput: CreateServiceNetworkServiceAssociationInput
    CreateServiceNetworkServiceAssociationOutput: CreateServiceNetworkServiceAssociationOutput
    CreateServiceNetworkVpcAssociationInput: CreateServiceNetworkVpcAssociationInput
    CreateServiceNetworkVpcAssociationOutput: CreateServiceNetworkVpcAssociationOutput
    CreateTargetGroupInput: CreateTargetGroupInput
    CreateTargetGroupOutput: CreateTargetGroupOutput
    DeleteAccessLogSubscriptionInput: DeleteAccessLogSubscriptionInput
    DeleteAccessLogSubscriptionOutput: DeleteAccessLogSubscriptionOutput
    DeleteAuthPolicyInput: DeleteAuthPolicyInput
    DeleteAuthPolicyOutput: DeleteAuthPolicyOutput
    DeleteDomainVerificationInput: DeleteDomainVerificationInput
    DeleteDomainVerificationOutput: DeleteDomainVerificationOutput
    DeleteListenerInput: DeleteListenerInput
    DeleteListenerOutput: DeleteListenerOutput
    DeleteResourceConfigurationInput: DeleteResourceConfigurationInput
    DeleteResourceConfigurationOutput: DeleteResourceConfigurationOutput
    DeleteResourceEndpointAssociationInput: DeleteResourceEndpointAssociationInput
    DeleteResourceEndpointAssociationOutput: DeleteResourceEndpointAssociationOutput
    DeleteResourceGatewayInput: DeleteResourceGatewayInput
    DeleteResourceGatewayOutput: DeleteResourceGatewayOutput
    DeleteResourcePolicyInput: DeleteResourcePolicyInput
    DeleteResourcePolicyOutput: DeleteResourcePolicyOutput
    DeleteRuleInput: DeleteRuleInput
    DeleteRuleOutput: DeleteRuleOutput
    DeleteServiceInput: DeleteServiceInput
    DeleteServiceOutput: DeleteServiceOutput
    DeleteServiceNetworkInput: DeleteServiceNetworkInput
    DeleteServiceNetworkOutput: DeleteServiceNetworkOutput
    DeleteServiceNetworkResourceAssociationInput: DeleteServiceNetworkResourceAssociationInput
    DeleteServiceNetworkResourceAssociationOutput: DeleteServiceNetworkResourceAssociationOutput
    DeleteServiceNetworkServiceAssociationInput: DeleteServiceNetworkServiceAssociationInput
    DeleteServiceNetworkServiceAssociationOutput: DeleteServiceNetworkServiceAssociationOutput
    DeleteServiceNetworkVpcAssociationInput: DeleteServiceNetworkVpcAssociationInput
    DeleteServiceNetworkVpcAssociationOutput: DeleteServiceNetworkVpcAssociationOutput
    DeleteTargetGroupInput: DeleteTargetGroupInput
    DeleteTargetGroupOutput: DeleteTargetGroupOutput
    DeregisterTargetsInput: DeregisterTargetsInput
    DeregisterTargetsOutput: DeregisterTargetsOutput
    GetAccessLogSubscriptionInput: GetAccessLogSubscriptionInput
    GetAccessLogSubscriptionOutput: GetAccessLogSubscriptionOutput
    GetAuthPolicyInput: GetAuthPolicyInput
    GetAuthPolicyOutput: GetAuthPolicyOutput
    GetDomainVerificationInput: GetDomainVerificationInput
    GetDomainVerificationOutput: GetDomainVerificationOutput
    GetListenerInput: GetListenerInput
    GetListenerOutput: GetListenerOutput
    GetResourceConfigurationInput: GetResourceConfigurationInput
    GetResourceConfigurationOutput: GetResourceConfigurationOutput
    GetResourceGatewayInput: GetResourceGatewayInput
    GetResourceGatewayOutput: GetResourceGatewayOutput
    GetResourcePolicyInput: GetResourcePolicyInput
    GetResourcePolicyOutput: GetResourcePolicyOutput
    GetRuleInput: GetRuleInput
    GetRuleOutput: GetRuleOutput
    GetServiceInput: GetServiceInput
    GetServiceOutput: GetServiceOutput
    GetServiceNetworkInput: GetServiceNetworkInput
    GetServiceNetworkOutput: GetServiceNetworkOutput
    GetServiceNetworkResourceAssociationInput: GetServiceNetworkResourceAssociationInput
    GetServiceNetworkResourceAssociationOutput: GetServiceNetworkResourceAssociationOutput
    GetServiceNetworkServiceAssociationInput: GetServiceNetworkServiceAssociationInput
    GetServiceNetworkServiceAssociationOutput: GetServiceNetworkServiceAssociationOutput
    GetServiceNetworkVpcAssociationInput: GetServiceNetworkVpcAssociationInput
    GetServiceNetworkVpcAssociationOutput: GetServiceNetworkVpcAssociationOutput
    GetTargetGroupInput: GetTargetGroupInput
    GetTargetGroupOutput: GetTargetGroupOutput
    ListAccessLogSubscriptionsInput: ListAccessLogSubscriptionsInput
    ListAccessLogSubscriptionsOutput: ListAccessLogSubscriptionsOutput
    ListDomainVerificationsInput: ListDomainVerificationsInput
    ListDomainVerificationsOutput: ListDomainVerificationsOutput
    ListListenersInput: ListListenersInput
    ListListenersOutput: ListListenersOutput
    ListResourceConfigurationsInput: ListResourceConfigurationsInput
    ListResourceConfigurationsOutput: ListResourceConfigurationsOutput
    ListResourceEndpointAssociationsInput: ListResourceEndpointAssociationsInput
    ListResourceEndpointAssociationsOutput: ListResourceEndpointAssociationsOutput
    ListResourceGatewaysInput: ListResourceGatewaysInput
    ListResourceGatewaysOutput: ListResourceGatewaysOutput
    ListRulesInput: ListRulesInput
    ListRulesOutput: ListRulesOutput
    ListServiceNetworkResourceAssociationsInput: ListServiceNetworkResourceAssociationsInput
    ListServiceNetworkResourceAssociationsOutput: ListServiceNetworkResourceAssociationsOutput
    ListServiceNetworksInput: ListServiceNetworksInput
    ListServiceNetworksOutput: ListServiceNetworksOutput
    ListServiceNetworkServiceAssociationsInput: ListServiceNetworkServiceAssociationsInput
    ListServiceNetworkServiceAssociationsOutput: ListServiceNetworkServiceAssociationsOutput
    ListServiceNetworkVpcAssociationsInput: ListServiceNetworkVpcAssociationsInput
    ListServiceNetworkVpcAssociationsOutput: ListServiceNetworkVpcAssociationsOutput
    ListServiceNetworkVpcEndpointAssociationsInput: ListServiceNetworkVpcEndpointAssociationsInput
    ListServiceNetworkVpcEndpointAssociationsOutput: ListServiceNetworkVpcEndpointAssociationsOutput
    ListServicesInput: ListServicesInput
    ListServicesOutput: ListServicesOutput
    ListTagsForResourceInput: ListTagsForResourceInput
    ListTagsForResourceOutput: ListTagsForResourceOutput
    ListTargetGroupsInput: ListTargetGroupsInput
    ListTargetGroupsOutput: ListTargetGroupsOutput
    ListTargetsInput: ListTargetsInput
    ListTargetsOutput: ListTargetsOutput
    PutAuthPolicyInput: PutAuthPolicyInput
    PutAuthPolicyOutput: PutAuthPolicyOutput
    PutResourcePolicyInput: PutResourcePolicyInput
    PutResourcePolicyOutput: PutResourcePolicyOutput
    RegisterTargetsInput: RegisterTargetsInput
    RegisterTargetsOutput: RegisterTargetsOutput
    StartDomainVerificationInput: StartDomainVerificationInput
    StartDomainVerificationOutput: StartDomainVerificationOutput
    TagResourceInput: TagResourceInput
    TagResourceOutput: TagResourceOutput
    UntagResourceInput: UntagResourceInput
    UntagResourceOutput: UntagResourceOutput
    UpdateAccessLogSubscriptionInput: UpdateAccessLogSubscriptionInput
    UpdateAccessLogSubscriptionOutput: UpdateAccessLogSubscriptionOutput
    UpdateListenerInput: UpdateListenerInput
    UpdateListenerOutput: UpdateListenerOutput
    UpdateResourceConfigurationInput: UpdateResourceConfigurationInput
    UpdateResourceConfigurationOutput: UpdateResourceConfigurationOutput
    UpdateResourceGatewayInput: UpdateResourceGatewayInput
    UpdateResourceGatewayOutput: UpdateResourceGatewayOutput
    UpdateRuleInput: UpdateRuleInput
    UpdateRuleOutput: UpdateRuleOutput
    UpdateServiceInput: UpdateServiceInput
    UpdateServiceOutput: UpdateServiceOutput
    UpdateServiceNetworkInput: UpdateServiceNetworkInput
    UpdateServiceNetworkOutput: UpdateServiceNetworkOutput
    UpdateServiceNetworkVpcAssociationInput: UpdateServiceNetworkVpcAssociationInput
    UpdateServiceNetworkVpcAssociationOutput: UpdateServiceNetworkVpcAssociationOutput
    UpdateTargetGroupInput: UpdateTargetGroupInput
    UpdateTargetGroupOutput: UpdateTargetGroupOutput
end

return M
