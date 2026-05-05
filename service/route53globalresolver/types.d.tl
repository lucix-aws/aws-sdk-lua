local record AssociateHostedZoneInput
    hostedZoneId: string
    resourceArn: string
    name: string
end

local record AssociateHostedZoneOutput
    id: string
    resourceArn: string
    hostedZoneId: string
    hostedZoneName: string
    name: string
    createdAt: number
    updatedAt: number
    status: string
end

local record BatchCreateFirewallRuleInput
    firewallRules: {BatchCreateFirewallRuleInputItem}
end

local record BatchCreateFirewallRuleOutput
    failures: {BatchCreateFirewallRuleOutputItem}
    successes: {BatchCreateFirewallRuleOutputItem}
end

local record BatchDeleteFirewallRuleInput
    firewallRules: {BatchDeleteFirewallRuleInputItem}
end

local record BatchDeleteFirewallRuleOutput
    failures: {BatchDeleteFirewallRuleOutputItem}
    successes: {BatchDeleteFirewallRuleOutputItem}
end

local record BatchUpdateFirewallRuleInput
    firewallRules: {BatchUpdateFirewallRuleInputItem}
end

local record BatchUpdateFirewallRuleOutput
    failures: {BatchUpdateFirewallRuleOutputItem}
    successes: {BatchUpdateFirewallRuleOutputItem}
end

local record CreateAccessSourceInput
    cidr: string
    clientToken: string
    ipAddressType: string
    name: string
    dnsViewId: string
    protocol: string
    tags: {string : string}
end

local record CreateAccessSourceOutput
    arn: string
    cidr: string
    createdAt: number
    id: string
    ipAddressType: string
    name: string
    dnsViewId: string
    protocol: string
    status: string
    updatedAt: number
end

local record CreateAccessTokenInput
    clientToken: string
    dnsViewId: string
    expiresAt: number
    name: string
    tags: {string : string}
end

local record CreateAccessTokenOutput
    id: string
    arn: string
    clientToken: string
    createdAt: number
    dnsViewId: string
    expiresAt: number
    name: string
    status: string
    value: string
end

local record CreateDNSViewInput
    globalResolverId: string
    clientToken: string
    name: string
    dnssecValidation: string
    ednsClientSubnet: string
    firewallRulesFailOpen: string
    description: string
    tags: {string : string}
end

local record CreateDNSViewOutput
    id: string
    arn: string
    clientToken: string
    dnssecValidation: string
    ednsClientSubnet: string
    firewallRulesFailOpen: string
    name: string
    description: string
    globalResolverId: string
    createdAt: number
    updatedAt: number
    status: string
end

local record CreateFirewallDomainListInput
    clientToken: string
    globalResolverId: string
    description: string
    name: string
    tags: {string : string}
end

local record CreateFirewallDomainListOutput
    arn: string
    globalResolverId: string
    createdAt: number
    description: string
    domainCount: number
    id: string
    name: string
    status: string
    updatedAt: number
end

local record CreateFirewallRuleInput
    action: string
    blockOverrideDnsType: string
    blockOverrideDomain: string
    blockOverrideTtl: number
    blockResponse: string
    clientToken: string
    confidenceThreshold: string
    description: string
    dnsAdvancedProtection: string
    firewallDomainListId: string
    name: string
    priority: number
    dnsViewId: string
    qType: string
end

local record CreateFirewallRuleOutput
    action: string
    blockOverrideDnsType: string
    blockOverrideDomain: string
    blockOverrideTtl: number
    blockResponse: string
    confidenceThreshold: string
    createdAt: number
    description: string
    dnsAdvancedProtection: string
    firewallDomainListId: string
    id: string
    name: string
    priority: number
    dnsViewId: string
    queryType: string
    status: string
    updatedAt: number
end

local record CreateGlobalResolverInput
    clientToken: string
    description: string
    ipAddressType: string
    name: string
    observabilityRegion: string
    regions: {string}
    tags: {string : string}
end

local record CreateGlobalResolverOutput
    id: string
    arn: string
    clientToken: string
    createdAt: number
    description: string
    dnsName: string
    ipAddressType: string
    ipv4Addresses: {string}
    ipv6Addresses: {string}
    name: string
    observabilityRegion: string
    regions: {string}
    status: string
    updatedAt: number
end

local record DeleteAccessSourceInput
    accessSourceId: string
end

local record DeleteAccessSourceOutput
    arn: string
    cidr: string
    createdAt: number
    id: string
    ipAddressType: string
    name: string
    dnsViewId: string
    protocol: string
    status: string
    updatedAt: number
end

local record DeleteAccessTokenInput
    accessTokenId: string
end

local record DeleteAccessTokenOutput
    id: string
    status: string
    deletedAt: number
end

local record DeleteDNSViewInput
    dnsViewId: string
end

local record DeleteDNSViewOutput
    id: string
    arn: string
    clientToken: string
    dnssecValidation: string
    ednsClientSubnet: string
    firewallRulesFailOpen: string
    name: string
    description: string
    globalResolverId: string
    createdAt: number
    updatedAt: number
    status: string
end

local record DeleteFirewallDomainListInput
    firewallDomainListId: string
end

local record DeleteFirewallDomainListOutput
    arn: string
    id: string
    name: string
    status: string
end

local record DeleteFirewallRuleInput
    firewallRuleId: string
end

local record DeleteFirewallRuleOutput
    action: string
    blockOverrideDnsType: string
    blockOverrideDomain: string
    blockOverrideTtl: number
    blockResponse: string
    confidenceThreshold: string
    createdAt: number
    description: string
    dnsAdvancedProtection: string
    firewallDomainListId: string
    id: string
    name: string
    priority: number
    dnsViewId: string
    queryType: string
    status: string
    updatedAt: number
end

local record DeleteGlobalResolverInput
    globalResolverId: string
end

local record DeleteGlobalResolverOutput
    id: string
    arn: string
    clientToken: string
    dnsName: string
    observabilityRegion: string
    name: string
    description: string
    regions: {string}
    createdAt: number
    updatedAt: number
    status: string
    ipv4Addresses: {string}
    ipv6Addresses: {string}
    ipAddressType: string
end

local record DisableDNSViewInput
    dnsViewId: string
end

local record DisableDNSViewOutput
    id: string
    arn: string
    clientToken: string
    dnssecValidation: string
    ednsClientSubnet: string
    firewallRulesFailOpen: string
    name: string
    description: string
    globalResolverId: string
    createdAt: number
    updatedAt: number
    status: string
end

local record DisassociateHostedZoneInput
    hostedZoneId: string
    resourceArn: string
end

local record DisassociateHostedZoneOutput
    id: string
    resourceArn: string
    hostedZoneId: string
    hostedZoneName: string
    name: string
    createdAt: number
    updatedAt: number
    status: string
end

local record EnableDNSViewInput
    dnsViewId: string
end

local record EnableDNSViewOutput
    id: string
    arn: string
    clientToken: string
    dnssecValidation: string
    ednsClientSubnet: string
    firewallRulesFailOpen: string
    name: string
    description: string
    globalResolverId: string
    createdAt: number
    updatedAt: number
    status: string
end

local record GetAccessSourceInput
    accessSourceId: string
end

local record GetAccessSourceOutput
    arn: string
    cidr: string
    createdAt: number
    id: string
    ipAddressType: string
    name: string
    dnsViewId: string
    protocol: string
    status: string
    updatedAt: number
end

local record GetAccessTokenInput
    accessTokenId: string
end

local record GetAccessTokenOutput
    id: string
    arn: string
    clientToken: string
    createdAt: number
    dnsViewId: string
    expiresAt: number
    globalResolverId: string
    name: string
    status: string
    updatedAt: number
    value: string
end

local record GetDNSViewInput
    dnsViewId: string
end

local record GetDNSViewOutput
    id: string
    arn: string
    clientToken: string
    dnssecValidation: string
    ednsClientSubnet: string
    firewallRulesFailOpen: string
    name: string
    description: string
    globalResolverId: string
    createdAt: number
    updatedAt: number
    status: string
end

local record GetFirewallDomainListInput
    firewallDomainListId: string
end

local record GetFirewallDomainListOutput
    arn: string
    globalResolverId: string
    clientToken: string
    createdAt: number
    description: string
    domainCount: number
    id: string
    name: string
    status: string
    statusMessage: string
    updatedAt: number
end

local record GetFirewallRuleInput
    firewallRuleId: string
end

local record GetFirewallRuleOutput
    action: string
    blockOverrideDnsType: string
    blockOverrideDomain: string
    blockOverrideTtl: number
    blockResponse: string
    confidenceThreshold: string
    createdAt: number
    description: string
    dnsAdvancedProtection: string
    firewallDomainListId: string
    id: string
    name: string
    priority: number
    dnsViewId: string
    queryType: string
    status: string
    updatedAt: number
end

local record GetGlobalResolverInput
    globalResolverId: string
end

local record GetGlobalResolverOutput
    id: string
    arn: string
    clientToken: string
    dnsName: string
    observabilityRegion: string
    name: string
    description: string
    regions: {string}
    createdAt: number
    updatedAt: number
    status: string
    ipv4Addresses: {string}
    ipv6Addresses: {string}
    ipAddressType: string
end

local record GetHostedZoneAssociationInput
    hostedZoneAssociationId: string
end

local record GetHostedZoneAssociationOutput
    id: string
    resourceArn: string
    hostedZoneId: string
    hostedZoneName: string
    name: string
    createdAt: number
    updatedAt: number
    status: string
end

local record GetManagedFirewallDomainListInput
    managedFirewallDomainListId: string
end

local record GetManagedFirewallDomainListOutput
    description: string
    id: string
    name: string
    managedListType: string
end

local record ImportFirewallDomainsInput
    domainFileUrl: string
    firewallDomainListId: string
    operation: string
end

local record ImportFirewallDomainsOutput
    id: string
    name: string
    status: string
end

local record ListAccessSourcesInput
    maxResults: number
    nextToken: string
    filters: {string : {string}}
end

local record ListAccessSourcesOutput
    nextToken: string
    accessSources: {AccessSourcesItem}
end

local record ListAccessTokensInput
    maxResults: number
    nextToken: string
    dnsViewId: string
    filters: {string : {string}}
end

local record ListAccessTokensOutput
    nextToken: string
    accessTokens: {AccessTokenItem}
end

local record ListDNSViewsInput
    maxResults: number
    nextToken: string
    globalResolverId: string
end

local record ListDNSViewsOutput
    nextToken: string
    dnsViews: {DNSViewSummary}
end

local record ListFirewallDomainListsInput
    maxResults: number
    nextToken: string
    globalResolverId: string
end

local record ListFirewallDomainListsOutput
    nextToken: string
    firewallDomainLists: {FirewallDomainListsItem}
end

local record ListFirewallDomainsInput
    maxResults: number
    nextToken: string
    firewallDomainListId: string
end

local record ListFirewallDomainsOutput
    nextToken: string
    domains: {string}
end

local record ListFirewallRulesInput
    maxResults: number
    nextToken: string
    dnsViewId: string
    filters: {string : {string}}
end

local record ListFirewallRulesOutput
    nextToken: string
    firewallRules: {FirewallRulesItem}
end

local record ListGlobalResolversInput
    maxResults: number
    nextToken: string
end

local record ListGlobalResolversOutput
    nextToken: string
    globalResolvers: {GlobalResolversItem}
end

local record ListHostedZoneAssociationsInput
    maxResults: number
    nextToken: string
    resourceArn: string
end

local record ListHostedZoneAssociationsOutput
    nextToken: string
    hostedZoneAssociations: {HostedZoneAssociationSummary}
end

local record ListManagedFirewallDomainListsInput
    maxResults: number
    nextToken: string
    managedFirewallDomainListType: string
end

local record ListManagedFirewallDomainListsOutput
    nextToken: string
    managedFirewallDomainLists: {ManagedFirewallDomainListsItem}
end

local record ListTagsForResourceInput
    resourceArn: string
end

local record ListTagsForResourceOutput
    tags: {string : string}
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

local record UpdateAccessSourceInput
    accessSourceId: string
    cidr: string
    ipAddressType: string
    name: string
    protocol: string
end

local record UpdateAccessSourceOutput
    arn: string
    cidr: string
    createdAt: number
    id: string
    ipAddressType: string
    name: string
    dnsViewId: string
    protocol: string
    status: string
    updatedAt: number
end

local record UpdateAccessTokenInput
    accessTokenId: string
    name: string
end

local record UpdateAccessTokenOutput
    id: string
    name: string
end

local record UpdateDNSViewInput
    dnsViewId: string
    name: string
    description: string
    dnssecValidation: string
    ednsClientSubnet: string
    firewallRulesFailOpen: string
end

local record UpdateDNSViewOutput
    id: string
    arn: string
    clientToken: string
    dnssecValidation: string
    ednsClientSubnet: string
    firewallRulesFailOpen: string
    name: string
    description: string
    globalResolverId: string
    createdAt: number
    updatedAt: number
    status: string
end

local record UpdateFirewallDomainsInput
    domains: {string}
    firewallDomainListId: string
    operation: string
end

local record UpdateFirewallDomainsOutput
    id: string
    name: string
    status: string
end

local record UpdateFirewallRuleInput
    action: string
    blockOverrideDnsType: string
    blockOverrideDomain: string
    blockOverrideTtl: number
    blockResponse: string
    clientToken: string
    confidenceThreshold: string
    description: string
    dnsAdvancedProtection: string
    firewallRuleId: string
    name: string
    priority: number
end

local record UpdateFirewallRuleOutput
    action: string
    blockOverrideDnsType: string
    blockOverrideDomain: string
    blockOverrideTtl: number
    blockResponse: string
    confidenceThreshold: string
    createdAt: number
    description: string
    dnsAdvancedProtection: string
    firewallDomainListId: string
    id: string
    name: string
    priority: number
    dnsViewId: string
    queryType: string
    status: string
    updatedAt: number
end

local record UpdateGlobalResolverInput
    globalResolverId: string
    name: string
    observabilityRegion: string
    description: string
    ipAddressType: string
    regions: {string}
end

local record UpdateGlobalResolverOutput
    id: string
    arn: string
    clientToken: string
    dnsName: string
    observabilityRegion: string
    name: string
    description: string
    regions: {string}
    createdAt: number
    updatedAt: number
    status: string
    ipv4Addresses: {string}
    ipv6Addresses: {string}
    ipAddressType: string
end

local record UpdateHostedZoneAssociationInput
    hostedZoneAssociationId: string
    name: string
end

local record UpdateHostedZoneAssociationOutput
    id: string
    resourceArn: string
    hostedZoneId: string
    hostedZoneName: string
    name: string
    createdAt: number
    updatedAt: number
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

local record ResourceNotFoundException
    message: string
    resourceId: string
    resourceType: string
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

local record ValidationException
    message: string
    reason: string
    fieldList: {ValidationExceptionField}
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

local type ProfileResourceStatus = "CREATING" | "OPERATIONAL" | "UPDATING" | "ENABLING" | "DISABLING" | "DISABLED" | "DELETING"

local type BlockOverrideDnsQueryType = "CNAME"

local type GlobalResolverIpAddressType = "IPV4" | "DUAL_STACK"

local type ConfidenceThreshold = "LOW" | "MEDIUM" | "HIGH"

local type EdnsClientSubnetType = "ENABLED" | "DISABLED"

local type DnsAdvancedProtection = "DGA" | "DNS_TUNNELING" | "DICTIONARY_DGA"

local type HostedZoneAssociationStatus = "CREATING" | "OPERATIONAL" | "DELETING"

local type FirewallRuleAction = "ALLOW" | "ALERT" | "BLOCK"

local type FirewallRulesFailOpenType = "ENABLED" | "DISABLED"

local type DnsSecValidationType = "ENABLED" | "DISABLED"

local type DnsProtocol = "DO53" | "DOH" | "DOT"

local type FirewallBlockResponse = "NODATA" | "NXDOMAIN" | "OVERRIDE"

local type TokenStatus = "CREATING" | "OPERATIONAL" | "DELETING"

local type IpAddressType = "IPV4" | "IPV6"

local type CRResourceStatus = "CREATING" | "OPERATIONAL" | "UPDATING" | "DELETING"

local record M
    AssociateHostedZoneInput: AssociateHostedZoneInput
    AssociateHostedZoneOutput: AssociateHostedZoneOutput
    BatchCreateFirewallRuleInput: BatchCreateFirewallRuleInput
    BatchCreateFirewallRuleOutput: BatchCreateFirewallRuleOutput
    BatchDeleteFirewallRuleInput: BatchDeleteFirewallRuleInput
    BatchDeleteFirewallRuleOutput: BatchDeleteFirewallRuleOutput
    BatchUpdateFirewallRuleInput: BatchUpdateFirewallRuleInput
    BatchUpdateFirewallRuleOutput: BatchUpdateFirewallRuleOutput
    CreateAccessSourceInput: CreateAccessSourceInput
    CreateAccessSourceOutput: CreateAccessSourceOutput
    CreateAccessTokenInput: CreateAccessTokenInput
    CreateAccessTokenOutput: CreateAccessTokenOutput
    CreateDNSViewInput: CreateDNSViewInput
    CreateDNSViewOutput: CreateDNSViewOutput
    CreateFirewallDomainListInput: CreateFirewallDomainListInput
    CreateFirewallDomainListOutput: CreateFirewallDomainListOutput
    CreateFirewallRuleInput: CreateFirewallRuleInput
    CreateFirewallRuleOutput: CreateFirewallRuleOutput
    CreateGlobalResolverInput: CreateGlobalResolverInput
    CreateGlobalResolverOutput: CreateGlobalResolverOutput
    DeleteAccessSourceInput: DeleteAccessSourceInput
    DeleteAccessSourceOutput: DeleteAccessSourceOutput
    DeleteAccessTokenInput: DeleteAccessTokenInput
    DeleteAccessTokenOutput: DeleteAccessTokenOutput
    DeleteDNSViewInput: DeleteDNSViewInput
    DeleteDNSViewOutput: DeleteDNSViewOutput
    DeleteFirewallDomainListInput: DeleteFirewallDomainListInput
    DeleteFirewallDomainListOutput: DeleteFirewallDomainListOutput
    DeleteFirewallRuleInput: DeleteFirewallRuleInput
    DeleteFirewallRuleOutput: DeleteFirewallRuleOutput
    DeleteGlobalResolverInput: DeleteGlobalResolverInput
    DeleteGlobalResolverOutput: DeleteGlobalResolverOutput
    DisableDNSViewInput: DisableDNSViewInput
    DisableDNSViewOutput: DisableDNSViewOutput
    DisassociateHostedZoneInput: DisassociateHostedZoneInput
    DisassociateHostedZoneOutput: DisassociateHostedZoneOutput
    EnableDNSViewInput: EnableDNSViewInput
    EnableDNSViewOutput: EnableDNSViewOutput
    GetAccessSourceInput: GetAccessSourceInput
    GetAccessSourceOutput: GetAccessSourceOutput
    GetAccessTokenInput: GetAccessTokenInput
    GetAccessTokenOutput: GetAccessTokenOutput
    GetDNSViewInput: GetDNSViewInput
    GetDNSViewOutput: GetDNSViewOutput
    GetFirewallDomainListInput: GetFirewallDomainListInput
    GetFirewallDomainListOutput: GetFirewallDomainListOutput
    GetFirewallRuleInput: GetFirewallRuleInput
    GetFirewallRuleOutput: GetFirewallRuleOutput
    GetGlobalResolverInput: GetGlobalResolverInput
    GetGlobalResolverOutput: GetGlobalResolverOutput
    GetHostedZoneAssociationInput: GetHostedZoneAssociationInput
    GetHostedZoneAssociationOutput: GetHostedZoneAssociationOutput
    GetManagedFirewallDomainListInput: GetManagedFirewallDomainListInput
    GetManagedFirewallDomainListOutput: GetManagedFirewallDomainListOutput
    ImportFirewallDomainsInput: ImportFirewallDomainsInput
    ImportFirewallDomainsOutput: ImportFirewallDomainsOutput
    ListAccessSourcesInput: ListAccessSourcesInput
    ListAccessSourcesOutput: ListAccessSourcesOutput
    ListAccessTokensInput: ListAccessTokensInput
    ListAccessTokensOutput: ListAccessTokensOutput
    ListDNSViewsInput: ListDNSViewsInput
    ListDNSViewsOutput: ListDNSViewsOutput
    ListFirewallDomainListsInput: ListFirewallDomainListsInput
    ListFirewallDomainListsOutput: ListFirewallDomainListsOutput
    ListFirewallDomainsInput: ListFirewallDomainsInput
    ListFirewallDomainsOutput: ListFirewallDomainsOutput
    ListFirewallRulesInput: ListFirewallRulesInput
    ListFirewallRulesOutput: ListFirewallRulesOutput
    ListGlobalResolversInput: ListGlobalResolversInput
    ListGlobalResolversOutput: ListGlobalResolversOutput
    ListHostedZoneAssociationsInput: ListHostedZoneAssociationsInput
    ListHostedZoneAssociationsOutput: ListHostedZoneAssociationsOutput
    ListManagedFirewallDomainListsInput: ListManagedFirewallDomainListsInput
    ListManagedFirewallDomainListsOutput: ListManagedFirewallDomainListsOutput
    ListTagsForResourceInput: ListTagsForResourceInput
    ListTagsForResourceOutput: ListTagsForResourceOutput
    TagResourceInput: TagResourceInput
    TagResourceOutput: TagResourceOutput
    UntagResourceInput: UntagResourceInput
    UntagResourceOutput: UntagResourceOutput
    UpdateAccessSourceInput: UpdateAccessSourceInput
    UpdateAccessSourceOutput: UpdateAccessSourceOutput
    UpdateAccessTokenInput: UpdateAccessTokenInput
    UpdateAccessTokenOutput: UpdateAccessTokenOutput
    UpdateDNSViewInput: UpdateDNSViewInput
    UpdateDNSViewOutput: UpdateDNSViewOutput
    UpdateFirewallDomainsInput: UpdateFirewallDomainsInput
    UpdateFirewallDomainsOutput: UpdateFirewallDomainsOutput
    UpdateFirewallRuleInput: UpdateFirewallRuleInput
    UpdateFirewallRuleOutput: UpdateFirewallRuleOutput
    UpdateGlobalResolverInput: UpdateGlobalResolverInput
    UpdateGlobalResolverOutput: UpdateGlobalResolverOutput
    UpdateHostedZoneAssociationInput: UpdateHostedZoneAssociationInput
    UpdateHostedZoneAssociationOutput: UpdateHostedZoneAssociationOutput
end

return M
