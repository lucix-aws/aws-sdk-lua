local record AssociateAliasInput
    TargetDistributionId: string
    Alias: string
end

local record AssociateAliasOutput
end

local record AssociateDistributionTenantWebACLInput
    Id: string
    WebACLArn: string
    IfMatch: string
end

local record AssociateDistributionTenantWebACLOutput
    Id: string
    WebACLArn: string
    ETag: string
end

local record AssociateDistributionWebACLInput
    Id: string
    WebACLArn: string
    IfMatch: string
end

local record AssociateDistributionWebACLOutput
    Id: string
    WebACLArn: string
    ETag: string
end

local record CopyDistributionInput
    PrimaryDistributionId: string
    Staging: boolean
    IfMatch: string
    CallerReference: string
    Enabled: boolean
end

local record CopyDistributionOutput
    Distribution: Distribution
    Location: string
    ETag: string
end

local record CreateAnycastIpListInput
    Name: string
    IpCount: number
    Tags: Tags
    IpAddressType: string
    IpamCidrConfigs: {IpamCidrConfig}
end

local record CreateAnycastIpListOutput
    AnycastIpList: AnycastIpList
    ETag: string
end

local record CreateCachePolicyInput
    CachePolicyConfig: CachePolicyConfig
end

local record CreateCachePolicyOutput
    CachePolicy: CachePolicy
    Location: string
    ETag: string
end

local record CreateCloudFrontOriginAccessIdentityInput
    CloudFrontOriginAccessIdentityConfig: CloudFrontOriginAccessIdentityConfig
end

local record CreateCloudFrontOriginAccessIdentityOutput
    CloudFrontOriginAccessIdentity: CloudFrontOriginAccessIdentity
    Location: string
    ETag: string
end

local record CreateConnectionFunctionInput
    Name: string
    ConnectionFunctionConfig: FunctionConfig
    ConnectionFunctionCode: string
    Tags: Tags
end

local record CreateConnectionFunctionOutput
    ConnectionFunctionSummary: ConnectionFunctionSummary
    Location: string
    ETag: string
end

local record CreateConnectionGroupInput
    Name: string
    Ipv6Enabled: boolean
    Tags: Tags
    AnycastIpListId: string
    Enabled: boolean
end

local record CreateConnectionGroupOutput
    ConnectionGroup: ConnectionGroup
    ETag: string
end

local record CreateContinuousDeploymentPolicyInput
    ContinuousDeploymentPolicyConfig: ContinuousDeploymentPolicyConfig
end

local record CreateContinuousDeploymentPolicyOutput
    ContinuousDeploymentPolicy: ContinuousDeploymentPolicy
    Location: string
    ETag: string
end

local record CreateDistributionInput
    DistributionConfig: DistributionConfig
end

local record CreateDistributionOutput
    Distribution: Distribution
    Location: string
    ETag: string
end

local record CreateDistributionTenantInput
    DistributionId: string
    Name: string
    Domains: {DomainItem}
    Tags: Tags
    Customizations: Customizations
    Parameters: {Parameter}
    ConnectionGroupId: string
    ManagedCertificateRequest: ManagedCertificateRequest
    Enabled: boolean
end

local record CreateDistributionTenantOutput
    DistributionTenant: DistributionTenant
    ETag: string
end

local record CreateDistributionWithTagsInput
    DistributionConfigWithTags: DistributionConfigWithTags
end

local record CreateDistributionWithTagsOutput
    Distribution: Distribution
    Location: string
    ETag: string
end

local record CreateFieldLevelEncryptionConfigInput
    FieldLevelEncryptionConfig: FieldLevelEncryptionConfig
end

local record CreateFieldLevelEncryptionConfigOutput
    FieldLevelEncryption: FieldLevelEncryption
    Location: string
    ETag: string
end

local record CreateFieldLevelEncryptionProfileInput
    FieldLevelEncryptionProfileConfig: FieldLevelEncryptionProfileConfig
end

local record CreateFieldLevelEncryptionProfileOutput
    FieldLevelEncryptionProfile: FieldLevelEncryptionProfile
    Location: string
    ETag: string
end

local record CreateFunctionInput
    Name: string
    FunctionConfig: FunctionConfig
    FunctionCode: string
end

local record CreateFunctionOutput
    FunctionSummary: FunctionSummary
    Location: string
    ETag: string
end

local record CreateInvalidationInput
    DistributionId: string
    InvalidationBatch: InvalidationBatch
end

local record CreateInvalidationOutput
    Location: string
    Invalidation: Invalidation
end

local record CreateInvalidationForDistributionTenantInput
    Id: string
    InvalidationBatch: InvalidationBatch
end

local record CreateInvalidationForDistributionTenantOutput
    Location: string
    Invalidation: Invalidation
end

local record CreateKeyGroupInput
    KeyGroupConfig: KeyGroupConfig
end

local record CreateKeyGroupOutput
    KeyGroup: KeyGroup
    Location: string
    ETag: string
end

local record CreateKeyValueStoreInput
    Name: string
    Comment: string
    ImportSource: ImportSource
end

local record CreateKeyValueStoreOutput
    KeyValueStore: KeyValueStore
    ETag: string
    Location: string
end

local record CreateMonitoringSubscriptionInput
    DistributionId: string
    MonitoringSubscription: MonitoringSubscription
end

local record CreateMonitoringSubscriptionOutput
    MonitoringSubscription: MonitoringSubscription
end

local record CreateOriginAccessControlInput
    OriginAccessControlConfig: OriginAccessControlConfig
end

local record CreateOriginAccessControlOutput
    OriginAccessControl: OriginAccessControl
    Location: string
    ETag: string
end

local record CreateOriginRequestPolicyInput
    OriginRequestPolicyConfig: OriginRequestPolicyConfig
end

local record CreateOriginRequestPolicyOutput
    OriginRequestPolicy: OriginRequestPolicy
    Location: string
    ETag: string
end

local record CreatePublicKeyInput
    PublicKeyConfig: PublicKeyConfig
end

local record CreatePublicKeyOutput
    PublicKey: PublicKey
    Location: string
    ETag: string
end

local record CreateRealtimeLogConfigInput
    EndPoints: {EndPoint}
    Fields: {string}
    Name: string
    SamplingRate: number
end

local record CreateRealtimeLogConfigOutput
    RealtimeLogConfig: RealtimeLogConfig
end

local record CreateResponseHeadersPolicyInput
    ResponseHeadersPolicyConfig: ResponseHeadersPolicyConfig
end

local record CreateResponseHeadersPolicyOutput
    ResponseHeadersPolicy: ResponseHeadersPolicy
    Location: string
    ETag: string
end

local record CreateStreamingDistributionInput
    StreamingDistributionConfig: StreamingDistributionConfig
end

local record CreateStreamingDistributionOutput
    StreamingDistribution: StreamingDistribution
    Location: string
    ETag: string
end

local record CreateStreamingDistributionWithTagsInput
    StreamingDistributionConfigWithTags: StreamingDistributionConfigWithTags
end

local record CreateStreamingDistributionWithTagsOutput
    StreamingDistribution: StreamingDistribution
    Location: string
    ETag: string
end

local record CreateTrustStoreInput
    Name: string
    CaCertificatesBundleSource: CaCertificatesBundleSource
    Tags: Tags
end

local record CreateTrustStoreOutput
    TrustStore: TrustStore
    ETag: string
end

local record CreateVpcOriginInput
    VpcOriginEndpointConfig: VpcOriginEndpointConfig
    Tags: Tags
end

local record CreateVpcOriginOutput
    VpcOrigin: VpcOrigin
    Location: string
    ETag: string
end

local record DeleteAnycastIpListInput
    Id: string
    IfMatch: string
end

local record DeleteAnycastIpListOutput
end

local record DeleteCachePolicyInput
    Id: string
    IfMatch: string
end

local record DeleteCachePolicyOutput
end

local record DeleteCloudFrontOriginAccessIdentityInput
    Id: string
    IfMatch: string
end

local record DeleteCloudFrontOriginAccessIdentityOutput
end

local record DeleteConnectionFunctionInput
    Id: string
    IfMatch: string
end

local record DeleteConnectionFunctionOutput
end

local record DeleteConnectionGroupInput
    Id: string
    IfMatch: string
end

local record DeleteConnectionGroupOutput
end

local record DeleteContinuousDeploymentPolicyInput
    Id: string
    IfMatch: string
end

local record DeleteContinuousDeploymentPolicyOutput
end

local record DeleteDistributionInput
    Id: string
    IfMatch: string
end

local record DeleteDistributionOutput
end

local record DeleteDistributionTenantInput
    Id: string
    IfMatch: string
end

local record DeleteDistributionTenantOutput
end

local record DeleteFieldLevelEncryptionConfigInput
    Id: string
    IfMatch: string
end

local record DeleteFieldLevelEncryptionConfigOutput
end

local record DeleteFieldLevelEncryptionProfileInput
    Id: string
    IfMatch: string
end

local record DeleteFieldLevelEncryptionProfileOutput
end

local record DeleteFunctionInput
    Name: string
    IfMatch: string
end

local record DeleteFunctionOutput
end

local record DeleteKeyGroupInput
    Id: string
    IfMatch: string
end

local record DeleteKeyGroupOutput
end

local record DeleteKeyValueStoreInput
    Name: string
    IfMatch: string
end

local record DeleteKeyValueStoreOutput
end

local record DeleteMonitoringSubscriptionInput
    DistributionId: string
end

local record DeleteMonitoringSubscriptionOutput
end

local record DeleteOriginAccessControlInput
    Id: string
    IfMatch: string
end

local record DeleteOriginAccessControlOutput
end

local record DeleteOriginRequestPolicyInput
    Id: string
    IfMatch: string
end

local record DeleteOriginRequestPolicyOutput
end

local record DeletePublicKeyInput
    Id: string
    IfMatch: string
end

local record DeletePublicKeyOutput
end

local record DeleteRealtimeLogConfigInput
    Name: string
    ARN: string
end

local record DeleteRealtimeLogConfigOutput
end

local record DeleteResourcePolicyInput
    ResourceArn: string
end

local record DeleteResourcePolicyOutput
end

local record DeleteResponseHeadersPolicyInput
    Id: string
    IfMatch: string
end

local record DeleteResponseHeadersPolicyOutput
end

local record DeleteStreamingDistributionInput
    Id: string
    IfMatch: string
end

local record DeleteStreamingDistributionOutput
end

local record DeleteTrustStoreInput
    Id: string
    IfMatch: string
end

local record DeleteTrustStoreOutput
end

local record DeleteVpcOriginInput
    Id: string
    IfMatch: string
end

local record DeleteVpcOriginOutput
    VpcOrigin: VpcOrigin
    ETag: string
end

local record DescribeConnectionFunctionInput
    Identifier: string
    Stage: string
end

local record DescribeConnectionFunctionOutput
    ConnectionFunctionSummary: ConnectionFunctionSummary
    ETag: string
end

local record DescribeFunctionInput
    Name: string
    Stage: string
end

local record DescribeFunctionOutput
    FunctionSummary: FunctionSummary
    ETag: string
end

local record DescribeKeyValueStoreInput
    Name: string
end

local record DescribeKeyValueStoreOutput
    KeyValueStore: KeyValueStore
    ETag: string
end

local record DisassociateDistributionTenantWebACLInput
    Id: string
    IfMatch: string
end

local record DisassociateDistributionTenantWebACLOutput
    Id: string
    ETag: string
end

local record DisassociateDistributionWebACLInput
    Id: string
    IfMatch: string
end

local record DisassociateDistributionWebACLOutput
    Id: string
    ETag: string
end

local record GetAnycastIpListInput
    Id: string
end

local record GetAnycastIpListOutput
    AnycastIpList: AnycastIpList
    ETag: string
end

local record GetCachePolicyInput
    Id: string
end

local record GetCachePolicyOutput
    CachePolicy: CachePolicy
    ETag: string
end

local record GetCachePolicyConfigInput
    Id: string
end

local record GetCachePolicyConfigOutput
    CachePolicyConfig: CachePolicyConfig
    ETag: string
end

local record GetCloudFrontOriginAccessIdentityInput
    Id: string
end

local record GetCloudFrontOriginAccessIdentityOutput
    CloudFrontOriginAccessIdentity: CloudFrontOriginAccessIdentity
    ETag: string
end

local record GetCloudFrontOriginAccessIdentityConfigInput
    Id: string
end

local record GetCloudFrontOriginAccessIdentityConfigOutput
    CloudFrontOriginAccessIdentityConfig: CloudFrontOriginAccessIdentityConfig
    ETag: string
end

local record GetConnectionFunctionInput
    Identifier: string
    Stage: string
end

local record GetConnectionFunctionOutput
    ConnectionFunctionCode: string
    ETag: string
    ContentType: string
end

local record GetConnectionGroupInput
    Identifier: string
end

local record GetConnectionGroupOutput
    ConnectionGroup: ConnectionGroup
    ETag: string
end

local record GetConnectionGroupByRoutingEndpointInput
    RoutingEndpoint: string
end

local record GetConnectionGroupByRoutingEndpointOutput
    ConnectionGroup: ConnectionGroup
    ETag: string
end

local record GetContinuousDeploymentPolicyInput
    Id: string
end

local record GetContinuousDeploymentPolicyOutput
    ContinuousDeploymentPolicy: ContinuousDeploymentPolicy
    ETag: string
end

local record GetContinuousDeploymentPolicyConfigInput
    Id: string
end

local record GetContinuousDeploymentPolicyConfigOutput
    ContinuousDeploymentPolicyConfig: ContinuousDeploymentPolicyConfig
    ETag: string
end

local record GetDistributionInput
    Id: string
end

local record GetDistributionOutput
    Distribution: Distribution
    ETag: string
end

local record GetDistributionConfigInput
    Id: string
end

local record GetDistributionConfigOutput
    DistributionConfig: DistributionConfig
    ETag: string
end

local record GetDistributionTenantInput
    Identifier: string
end

local record GetDistributionTenantOutput
    DistributionTenant: DistributionTenant
    ETag: string
end

local record GetDistributionTenantByDomainInput
    Domain: string
end

local record GetDistributionTenantByDomainOutput
    DistributionTenant: DistributionTenant
    ETag: string
end

local record GetFieldLevelEncryptionInput
    Id: string
end

local record GetFieldLevelEncryptionOutput
    FieldLevelEncryption: FieldLevelEncryption
    ETag: string
end

local record GetFieldLevelEncryptionConfigInput
    Id: string
end

local record GetFieldLevelEncryptionConfigOutput
    FieldLevelEncryptionConfig: FieldLevelEncryptionConfig
    ETag: string
end

local record GetFieldLevelEncryptionProfileInput
    Id: string
end

local record GetFieldLevelEncryptionProfileOutput
    FieldLevelEncryptionProfile: FieldLevelEncryptionProfile
    ETag: string
end

local record GetFieldLevelEncryptionProfileConfigInput
    Id: string
end

local record GetFieldLevelEncryptionProfileConfigOutput
    FieldLevelEncryptionProfileConfig: FieldLevelEncryptionProfileConfig
    ETag: string
end

local record GetFunctionInput
    Name: string
    Stage: string
end

local record GetFunctionOutput
    FunctionCode: string
    ETag: string
    ContentType: string
end

local record GetInvalidationInput
    DistributionId: string
    Id: string
end

local record GetInvalidationOutput
    Invalidation: Invalidation
end

local record GetInvalidationForDistributionTenantInput
    DistributionTenantId: string
    Id: string
end

local record GetInvalidationForDistributionTenantOutput
    Invalidation: Invalidation
end

local record GetKeyGroupInput
    Id: string
end

local record GetKeyGroupOutput
    KeyGroup: KeyGroup
    ETag: string
end

local record GetKeyGroupConfigInput
    Id: string
end

local record GetKeyGroupConfigOutput
    KeyGroupConfig: KeyGroupConfig
    ETag: string
end

local record GetManagedCertificateDetailsInput
    Identifier: string
end

local record GetManagedCertificateDetailsOutput
    ManagedCertificateDetails: ManagedCertificateDetails
end

local record GetMonitoringSubscriptionInput
    DistributionId: string
end

local record GetMonitoringSubscriptionOutput
    MonitoringSubscription: MonitoringSubscription
end

local record GetOriginAccessControlInput
    Id: string
end

local record GetOriginAccessControlOutput
    OriginAccessControl: OriginAccessControl
    ETag: string
end

local record GetOriginAccessControlConfigInput
    Id: string
end

local record GetOriginAccessControlConfigOutput
    OriginAccessControlConfig: OriginAccessControlConfig
    ETag: string
end

local record GetOriginRequestPolicyInput
    Id: string
end

local record GetOriginRequestPolicyOutput
    OriginRequestPolicy: OriginRequestPolicy
    ETag: string
end

local record GetOriginRequestPolicyConfigInput
    Id: string
end

local record GetOriginRequestPolicyConfigOutput
    OriginRequestPolicyConfig: OriginRequestPolicyConfig
    ETag: string
end

local record GetPublicKeyInput
    Id: string
end

local record GetPublicKeyOutput
    PublicKey: PublicKey
    ETag: string
end

local record GetPublicKeyConfigInput
    Id: string
end

local record GetPublicKeyConfigOutput
    PublicKeyConfig: PublicKeyConfig
    ETag: string
end

local record GetRealtimeLogConfigInput
    Name: string
    ARN: string
end

local record GetRealtimeLogConfigOutput
    RealtimeLogConfig: RealtimeLogConfig
end

local record GetResourcePolicyInput
    ResourceArn: string
end

local record GetResourcePolicyOutput
    ResourceArn: string
    PolicyDocument: string
end

local record GetResponseHeadersPolicyInput
    Id: string
end

local record GetResponseHeadersPolicyOutput
    ResponseHeadersPolicy: ResponseHeadersPolicy
    ETag: string
end

local record GetResponseHeadersPolicyConfigInput
    Id: string
end

local record GetResponseHeadersPolicyConfigOutput
    ResponseHeadersPolicyConfig: ResponseHeadersPolicyConfig
    ETag: string
end

local record GetStreamingDistributionInput
    Id: string
end

local record GetStreamingDistributionOutput
    StreamingDistribution: StreamingDistribution
    ETag: string
end

local record GetStreamingDistributionConfigInput
    Id: string
end

local record GetStreamingDistributionConfigOutput
    StreamingDistributionConfig: StreamingDistributionConfig
    ETag: string
end

local record GetTrustStoreInput
    Identifier: string
end

local record GetTrustStoreOutput
    TrustStore: TrustStore
    ETag: string
end

local record GetVpcOriginInput
    Id: string
end

local record GetVpcOriginOutput
    VpcOrigin: VpcOrigin
    ETag: string
end

local record ListAnycastIpListsInput
    Marker: string
    MaxItems: number
end

local record ListAnycastIpListsOutput
    AnycastIpLists: AnycastIpListCollection
end

local record ListCachePoliciesInput
    Type: string
    Marker: string
    MaxItems: number
end

local record ListCachePoliciesOutput
    CachePolicyList: CachePolicyList
end

local record ListCloudFrontOriginAccessIdentitiesInput
    Marker: string
    MaxItems: number
end

local record ListCloudFrontOriginAccessIdentitiesOutput
    CloudFrontOriginAccessIdentityList: CloudFrontOriginAccessIdentityList
end

local record ListConflictingAliasesInput
    DistributionId: string
    Alias: string
    Marker: string
    MaxItems: number
end

local record ListConflictingAliasesOutput
    ConflictingAliasesList: ConflictingAliasesList
end

local record ListConnectionFunctionsInput
    Marker: string
    MaxItems: number
    Stage: string
end

local record ListConnectionFunctionsOutput
    NextMarker: string
    ConnectionFunctions: {ConnectionFunctionSummary}
end

local record ListConnectionGroupsInput
    AssociationFilter: ConnectionGroupAssociationFilter
    Marker: string
    MaxItems: number
end

local record ListConnectionGroupsOutput
    NextMarker: string
    ConnectionGroups: {ConnectionGroupSummary}
end

local record ListContinuousDeploymentPoliciesInput
    Marker: string
    MaxItems: number
end

local record ListContinuousDeploymentPoliciesOutput
    ContinuousDeploymentPolicyList: ContinuousDeploymentPolicyList
end

local record ListDistributionsInput
    Marker: string
    MaxItems: number
end

local record ListDistributionsOutput
    DistributionList: DistributionList
end

local record ListDistributionsByAnycastIpListIdInput
    Marker: string
    MaxItems: number
    AnycastIpListId: string
end

local record ListDistributionsByAnycastIpListIdOutput
    DistributionList: DistributionList
end

local record ListDistributionsByCachePolicyIdInput
    Marker: string
    MaxItems: number
    CachePolicyId: string
end

local record ListDistributionsByCachePolicyIdOutput
    DistributionIdList: DistributionIdList
end

local record ListDistributionsByConnectionFunctionInput
    Marker: string
    MaxItems: number
    ConnectionFunctionIdentifier: string
end

local record ListDistributionsByConnectionFunctionOutput
    DistributionList: DistributionList
end

local record ListDistributionsByConnectionModeInput
    Marker: string
    MaxItems: number
    ConnectionMode: string
end

local record ListDistributionsByConnectionModeOutput
    DistributionList: DistributionList
end

local record ListDistributionsByKeyGroupInput
    Marker: string
    MaxItems: number
    KeyGroupId: string
end

local record ListDistributionsByKeyGroupOutput
    DistributionIdList: DistributionIdList
end

local record ListDistributionsByOriginRequestPolicyIdInput
    Marker: string
    MaxItems: number
    OriginRequestPolicyId: string
end

local record ListDistributionsByOriginRequestPolicyIdOutput
    DistributionIdList: DistributionIdList
end

local record ListDistributionsByOwnedResourceInput
    ResourceArn: string
    Marker: string
    MaxItems: number
end

local record ListDistributionsByOwnedResourceOutput
    DistributionList: DistributionIdOwnerList
end

local record ListDistributionsByRealtimeLogConfigInput
    Marker: string
    MaxItems: number
    RealtimeLogConfigName: string
    RealtimeLogConfigArn: string
end

local record ListDistributionsByRealtimeLogConfigOutput
    DistributionList: DistributionList
end

local record ListDistributionsByResponseHeadersPolicyIdInput
    Marker: string
    MaxItems: number
    ResponseHeadersPolicyId: string
end

local record ListDistributionsByResponseHeadersPolicyIdOutput
    DistributionIdList: DistributionIdList
end

local record ListDistributionsByTrustStoreInput
    TrustStoreIdentifier: string
    Marker: string
    MaxItems: number
end

local record ListDistributionsByTrustStoreOutput
    DistributionList: DistributionList
end

local record ListDistributionsByVpcOriginIdInput
    Marker: string
    MaxItems: number
    VpcOriginId: string
end

local record ListDistributionsByVpcOriginIdOutput
    DistributionIdList: DistributionIdList
end

local record ListDistributionsByWebACLIdInput
    Marker: string
    MaxItems: number
    WebACLId: string
end

local record ListDistributionsByWebACLIdOutput
    DistributionList: DistributionList
end

local record ListDistributionTenantsInput
    AssociationFilter: DistributionTenantAssociationFilter
    Marker: string
    MaxItems: number
end

local record ListDistributionTenantsOutput
    NextMarker: string
    DistributionTenantList: {DistributionTenantSummary}
end

local record ListDistributionTenantsByCustomizationInput
    WebACLArn: string
    CertificateArn: string
    Marker: string
    MaxItems: number
end

local record ListDistributionTenantsByCustomizationOutput
    NextMarker: string
    DistributionTenantList: {DistributionTenantSummary}
end

local record ListDomainConflictsInput
    Domain: string
    DomainControlValidationResource: DistributionResourceId
    MaxItems: number
    Marker: string
end

local record ListDomainConflictsOutput
    DomainConflicts: {DomainConflict}
    NextMarker: string
end

local record ListFieldLevelEncryptionConfigsInput
    Marker: string
    MaxItems: number
end

local record ListFieldLevelEncryptionConfigsOutput
    FieldLevelEncryptionList: FieldLevelEncryptionList
end

local record ListFieldLevelEncryptionProfilesInput
    Marker: string
    MaxItems: number
end

local record ListFieldLevelEncryptionProfilesOutput
    FieldLevelEncryptionProfileList: FieldLevelEncryptionProfileList
end

local record ListFunctionsInput
    Marker: string
    MaxItems: number
    Stage: string
end

local record ListFunctionsOutput
    FunctionList: FunctionList
end

local record ListInvalidationsInput
    DistributionId: string
    Marker: string
    MaxItems: number
end

local record ListInvalidationsOutput
    InvalidationList: InvalidationList
end

local record ListInvalidationsForDistributionTenantInput
    Id: string
    Marker: string
    MaxItems: number
end

local record ListInvalidationsForDistributionTenantOutput
    InvalidationList: InvalidationList
end

local record ListKeyGroupsInput
    Marker: string
    MaxItems: number
end

local record ListKeyGroupsOutput
    KeyGroupList: KeyGroupList
end

local record ListKeyValueStoresInput
    Marker: string
    MaxItems: number
    Status: string
end

local record ListKeyValueStoresOutput
    KeyValueStoreList: KeyValueStoreList
end

local record ListOriginAccessControlsInput
    Marker: string
    MaxItems: number
end

local record ListOriginAccessControlsOutput
    OriginAccessControlList: OriginAccessControlList
end

local record ListOriginRequestPoliciesInput
    Type: string
    Marker: string
    MaxItems: number
end

local record ListOriginRequestPoliciesOutput
    OriginRequestPolicyList: OriginRequestPolicyList
end

local record ListPublicKeysInput
    Marker: string
    MaxItems: number
end

local record ListPublicKeysOutput
    PublicKeyList: PublicKeyList
end

local record ListRealtimeLogConfigsInput
    MaxItems: number
    Marker: string
end

local record ListRealtimeLogConfigsOutput
    RealtimeLogConfigs: RealtimeLogConfigs
end

local record ListResponseHeadersPoliciesInput
    Type: string
    Marker: string
    MaxItems: number
end

local record ListResponseHeadersPoliciesOutput
    ResponseHeadersPolicyList: ResponseHeadersPolicyList
end

local record ListStreamingDistributionsInput
    Marker: string
    MaxItems: number
end

local record ListStreamingDistributionsOutput
    StreamingDistributionList: StreamingDistributionList
end

local record ListTagsForResourceInput
    Resource: string
end

local record ListTagsForResourceOutput
    Tags: Tags
end

local record ListTrustStoresInput
    Marker: string
    MaxItems: number
end

local record ListTrustStoresOutput
    NextMarker: string
    TrustStoreList: {TrustStoreSummary}
end

local record ListVpcOriginsInput
    Marker: string
    MaxItems: number
end

local record ListVpcOriginsOutput
    VpcOriginList: VpcOriginList
end

local record PublishConnectionFunctionInput
    Id: string
    IfMatch: string
end

local record PublishConnectionFunctionOutput
    ConnectionFunctionSummary: ConnectionFunctionSummary
end

local record PublishFunctionInput
    Name: string
    IfMatch: string
end

local record PublishFunctionOutput
    FunctionSummary: FunctionSummary
end

local record PutResourcePolicyInput
    ResourceArn: string
    PolicyDocument: string
end

local record PutResourcePolicyOutput
    ResourceArn: string
end

local record TagResourceInput
    Resource: string
    Tags: Tags
end

local record TagResourceOutput
end

local record TestConnectionFunctionInput
    Id: string
    IfMatch: string
    Stage: string
    ConnectionObject: string
end

local record TestConnectionFunctionOutput
    ConnectionFunctionTestResult: ConnectionFunctionTestResult
end

local record TestFunctionInput
    Name: string
    IfMatch: string
    Stage: string
    EventObject: string
end

local record TestFunctionOutput
    TestResult: TestResult
end

local record UntagResourceInput
    Resource: string
    TagKeys: TagKeys
end

local record UntagResourceOutput
end

local record UpdateAnycastIpListInput
    Id: string
    IpAddressType: string
    IpamCidrConfigs: {IpamCidrConfig}
    IfMatch: string
end

local record UpdateAnycastIpListOutput
    AnycastIpList: AnycastIpList
    ETag: string
end

local record UpdateCachePolicyInput
    CachePolicyConfig: CachePolicyConfig
    Id: string
    IfMatch: string
end

local record UpdateCachePolicyOutput
    CachePolicy: CachePolicy
    ETag: string
end

local record UpdateCloudFrontOriginAccessIdentityInput
    CloudFrontOriginAccessIdentityConfig: CloudFrontOriginAccessIdentityConfig
    Id: string
    IfMatch: string
end

local record UpdateCloudFrontOriginAccessIdentityOutput
    CloudFrontOriginAccessIdentity: CloudFrontOriginAccessIdentity
    ETag: string
end

local record UpdateConnectionFunctionInput
    Id: string
    IfMatch: string
    ConnectionFunctionConfig: FunctionConfig
    ConnectionFunctionCode: string
end

local record UpdateConnectionFunctionOutput
    ConnectionFunctionSummary: ConnectionFunctionSummary
    ETag: string
end

local record UpdateConnectionGroupInput
    Id: string
    Ipv6Enabled: boolean
    IfMatch: string
    AnycastIpListId: string
    Enabled: boolean
end

local record UpdateConnectionGroupOutput
    ConnectionGroup: ConnectionGroup
    ETag: string
end

local record UpdateContinuousDeploymentPolicyInput
    ContinuousDeploymentPolicyConfig: ContinuousDeploymentPolicyConfig
    Id: string
    IfMatch: string
end

local record UpdateContinuousDeploymentPolicyOutput
    ContinuousDeploymentPolicy: ContinuousDeploymentPolicy
    ETag: string
end

local record UpdateDistributionInput
    DistributionConfig: DistributionConfig
    Id: string
    IfMatch: string
end

local record UpdateDistributionOutput
    Distribution: Distribution
    ETag: string
end

local record UpdateDistributionTenantInput
    Id: string
    DistributionId: string
    Domains: {DomainItem}
    Customizations: Customizations
    Parameters: {Parameter}
    ConnectionGroupId: string
    IfMatch: string
    ManagedCertificateRequest: ManagedCertificateRequest
    Enabled: boolean
end

local record UpdateDistributionTenantOutput
    DistributionTenant: DistributionTenant
    ETag: string
end

local record UpdateDistributionWithStagingConfigInput
    Id: string
    StagingDistributionId: string
    IfMatch: string
end

local record UpdateDistributionWithStagingConfigOutput
    Distribution: Distribution
    ETag: string
end

local record UpdateDomainAssociationInput
    Domain: string
    TargetResource: DistributionResourceId
    IfMatch: string
end

local record UpdateDomainAssociationOutput
    Domain: string
    ResourceId: string
    ETag: string
end

local record UpdateFieldLevelEncryptionConfigInput
    FieldLevelEncryptionConfig: FieldLevelEncryptionConfig
    Id: string
    IfMatch: string
end

local record UpdateFieldLevelEncryptionConfigOutput
    FieldLevelEncryption: FieldLevelEncryption
    ETag: string
end

local record UpdateFieldLevelEncryptionProfileInput
    FieldLevelEncryptionProfileConfig: FieldLevelEncryptionProfileConfig
    Id: string
    IfMatch: string
end

local record UpdateFieldLevelEncryptionProfileOutput
    FieldLevelEncryptionProfile: FieldLevelEncryptionProfile
    ETag: string
end

local record UpdateFunctionInput
    Name: string
    IfMatch: string
    FunctionConfig: FunctionConfig
    FunctionCode: string
end

local record UpdateFunctionOutput
    FunctionSummary: FunctionSummary
    ETag: string
end

local record UpdateKeyGroupInput
    KeyGroupConfig: KeyGroupConfig
    Id: string
    IfMatch: string
end

local record UpdateKeyGroupOutput
    KeyGroup: KeyGroup
    ETag: string
end

local record UpdateKeyValueStoreInput
    Name: string
    Comment: string
    IfMatch: string
end

local record UpdateKeyValueStoreOutput
    KeyValueStore: KeyValueStore
    ETag: string
end

local record UpdateOriginAccessControlInput
    OriginAccessControlConfig: OriginAccessControlConfig
    Id: string
    IfMatch: string
end

local record UpdateOriginAccessControlOutput
    OriginAccessControl: OriginAccessControl
    ETag: string
end

local record UpdateOriginRequestPolicyInput
    OriginRequestPolicyConfig: OriginRequestPolicyConfig
    Id: string
    IfMatch: string
end

local record UpdateOriginRequestPolicyOutput
    OriginRequestPolicy: OriginRequestPolicy
    ETag: string
end

local record UpdatePublicKeyInput
    PublicKeyConfig: PublicKeyConfig
    Id: string
    IfMatch: string
end

local record UpdatePublicKeyOutput
    PublicKey: PublicKey
    ETag: string
end

local record UpdateRealtimeLogConfigInput
    EndPoints: {EndPoint}
    Fields: {string}
    Name: string
    ARN: string
    SamplingRate: number
end

local record UpdateRealtimeLogConfigOutput
    RealtimeLogConfig: RealtimeLogConfig
end

local record UpdateResponseHeadersPolicyInput
    ResponseHeadersPolicyConfig: ResponseHeadersPolicyConfig
    Id: string
    IfMatch: string
end

local record UpdateResponseHeadersPolicyOutput
    ResponseHeadersPolicy: ResponseHeadersPolicy
    ETag: string
end

local record UpdateStreamingDistributionInput
    StreamingDistributionConfig: StreamingDistributionConfig
    Id: string
    IfMatch: string
end

local record UpdateStreamingDistributionOutput
    StreamingDistribution: StreamingDistribution
    ETag: string
end

local record UpdateTrustStoreInput
    Id: string
    CaCertificatesBundleSource: CaCertificatesBundleSource
    IfMatch: string
end

local record UpdateTrustStoreOutput
    TrustStore: TrustStore
    ETag: string
end

local record UpdateVpcOriginInput
    VpcOriginEndpointConfig: VpcOriginEndpointConfig
    Id: string
    IfMatch: string
end

local record UpdateVpcOriginOutput
    VpcOrigin: VpcOrigin
    ETag: string
end

local record VerifyDnsConfigurationInput
    Domain: string
    Identifier: string
end

local record VerifyDnsConfigurationOutput
    DnsConfigurationList: {DnsConfiguration}
end

local record AccessDenied
    Message: string
end

local record IllegalUpdate
    Message: string
end

local record InvalidArgument
    Message: string
end

local record NoSuchDistribution
    Message: string
end

local record TooManyDistributionCNAMEs
    Message: string
end

local record AccessDenied
    Message: string
end

local record EntityLimitExceeded
    Message: string
end

local record EntityNotFound
    Message: string
end

local record InvalidArgument
    Message: string
end

local record InvalidIfMatchVersion
    Message: string
end

local record PreconditionFailed
    Message: string
end

local record AccessDenied
    Message: string
end

local record EntityLimitExceeded
    Message: string
end

local record EntityNotFound
    Message: string
end

local record InvalidArgument
    Message: string
end

local record InvalidIfMatchVersion
    Message: string
end

local record PreconditionFailed
    Message: string
end

local record AccessDenied
    Message: string
end

local record CNAMEAlreadyExists
    Message: string
end

local record DistributionAlreadyExists
    Message: string
end

local record IllegalFieldLevelEncryptionConfigAssociationWithCacheBehavior
    Message: string
end

local record InconsistentQuantities
    Message: string
end

local record InvalidArgument
    Message: string
end

local record InvalidDefaultRootObject
    Message: string
end

local record InvalidErrorCode
    Message: string
end

local record InvalidForwardCookies
    Message: string
end

local record InvalidFunctionAssociation
    Message: string
end

local record InvalidGeoRestrictionParameter
    Message: string
end

local record InvalidHeadersForS3Origin
    Message: string
end

local record InvalidIfMatchVersion
    Message: string
end

local record InvalidLambdaFunctionAssociation
    Message: string
end

local record InvalidLocationCode
    Message: string
end

local record InvalidMinimumProtocolVersion
    Message: string
end

local record InvalidOrigin
    Message: string
end

local record InvalidOriginAccessControl
    Message: string
end

local record InvalidOriginAccessIdentity
    Message: string
end

local record InvalidOriginKeepaliveTimeout
    Message: string
end

local record InvalidOriginReadTimeout
    Message: string
end

local record InvalidProtocolSettings
    Message: string
end

local record InvalidQueryStringParameters
    Message: string
end

local record InvalidRelativePath
    Message: string
end

local record InvalidRequiredProtocol
    Message: string
end

local record InvalidResponseCode
    Message: string
end

local record InvalidTTLOrder
    Message: string
end

local record InvalidViewerCertificate
    Message: string
end

local record InvalidWebACLId
    Message: string
end

local record MissingBody
    Message: string
end

local record NoSuchCachePolicy
    Message: string
end

local record NoSuchDistribution
    Message: string
end

local record NoSuchFieldLevelEncryptionConfig
    Message: string
end

local record NoSuchOrigin
    Message: string
end

local record NoSuchOriginRequestPolicy
    Message: string
end

local record NoSuchRealtimeLogConfig
    Message: string
end

local record NoSuchResponseHeadersPolicy
    Message: string
end

local record PreconditionFailed
    Message: string
end

local record RealtimeLogConfigOwnerMismatch
    Message: string
end

local record TooManyCacheBehaviors
    Message: string
end

local record TooManyCertificates
    Message: string
end

local record TooManyCookieNamesInWhiteList
    Message: string
end

local record TooManyDistributionCNAMEs
    Message: string
end

local record TooManyDistributions
    Message: string
end

local record TooManyDistributionsAssociatedToCachePolicy
    Message: string
end

local record TooManyDistributionsAssociatedToFieldLevelEncryptionConfig
    Message: string
end

local record TooManyDistributionsAssociatedToKeyGroup
    Message: string
end

local record TooManyDistributionsAssociatedToOriginAccessControl
    Message: string
end

local record TooManyDistributionsAssociatedToOriginRequestPolicy
    Message: string
end

local record TooManyDistributionsAssociatedToResponseHeadersPolicy
    Message: string
end

local record TooManyDistributionsWithFunctionAssociations
    Message: string
end

local record TooManyDistributionsWithLambdaAssociations
    Message: string
end

local record TooManyDistributionsWithSingleFunctionARN
    Message: string
end

local record TooManyFunctionAssociations
    Message: string
end

local record TooManyHeadersInForwardedValues
    Message: string
end

local record TooManyKeyGroupsAssociatedToDistribution
    Message: string
end

local record TooManyLambdaFunctionAssociations
    Message: string
end

local record TooManyOriginCustomHeaders
    Message: string
end

local record TooManyOriginGroupsPerDistribution
    Message: string
end

local record TooManyOrigins
    Message: string
end

local record TooManyQueryStringParameters
    Message: string
end

local record TooManyTrustedSigners
    Message: string
end

local record TrustedKeyGroupDoesNotExist
    Message: string
end

local record TrustedSignerDoesNotExist
    Message: string
end

local record AccessDenied
    Message: string
end

local record EntityAlreadyExists
    Message: string
end

local record EntityLimitExceeded
    Message: string
end

local record InvalidArgument
    Message: string
end

local record InvalidTagging
    Message: string
end

local record UnsupportedOperation
    Message: string
end

local record AccessDenied
    Message: string
end

local record CachePolicyAlreadyExists
    Message: string
end

local record InconsistentQuantities
    Message: string
end

local record InvalidArgument
    Message: string
end

local record TooManyCachePolicies
    Message: string
end

local record TooManyCookiesInCachePolicy
    Message: string
end

local record TooManyHeadersInCachePolicy
    Message: string
end

local record TooManyQueryStringsInCachePolicy
    Message: string
end

local record CloudFrontOriginAccessIdentityAlreadyExists
    Message: string
end

local record InconsistentQuantities
    Message: string
end

local record InvalidArgument
    Message: string
end

local record MissingBody
    Message: string
end

local record TooManyCloudFrontOriginAccessIdentities
    Message: string
end

local record AccessDenied
    Message: string
end

local record EntityAlreadyExists
    Message: string
end

local record EntityLimitExceeded
    Message: string
end

local record EntitySizeLimitExceeded
    Message: string
end

local record InvalidArgument
    Message: string
end

local record InvalidTagging
    Message: string
end

local record UnsupportedOperation
    Message: string
end

local record AccessDenied
    Message: string
end

local record EntityAlreadyExists
    Message: string
end

local record EntityLimitExceeded
    Message: string
end

local record EntityNotFound
    Message: string
end

local record InvalidArgument
    Message: string
end

local record InvalidTagging
    Message: string
end

local record AccessDenied
    Message: string
end

local record ContinuousDeploymentPolicyAlreadyExists
    Message: string
end

local record InconsistentQuantities
    Message: string
end

local record InvalidArgument
    Message: string
end

local record StagingDistributionInUse
    Message: string
end

local record TooManyContinuousDeploymentPolicies
    Message: string
end

local record AccessDenied
    Message: string
end

local record CNAMEAlreadyExists
    Message: string
end

local record ContinuousDeploymentPolicyInUse
    Message: string
end

local record DistributionAlreadyExists
    Message: string
end

local record EntityLimitExceeded
    Message: string
end

local record EntityNotFound
    Message: string
end

local record IllegalFieldLevelEncryptionConfigAssociationWithCacheBehavior
    Message: string
end

local record IllegalOriginAccessConfiguration
    Message: string
end

local record InconsistentQuantities
    Message: string
end

local record InvalidArgument
    Message: string
end

local record InvalidDefaultRootObject
    Message: string
end

local record InvalidDomainNameForOriginAccessControl
    Message: string
end

local record InvalidErrorCode
    Message: string
end

local record InvalidForwardCookies
    Message: string
end

local record InvalidFunctionAssociation
    Message: string
end

local record InvalidGeoRestrictionParameter
    Message: string
end

local record InvalidHeadersForS3Origin
    Message: string
end

local record InvalidLambdaFunctionAssociation
    Message: string
end

local record InvalidLocationCode
    Message: string
end

local record InvalidMinimumProtocolVersion
    Message: string
end

local record InvalidOrigin
    Message: string
end

local record InvalidOriginAccessControl
    Message: string
end

local record InvalidOriginAccessIdentity
    Message: string
end

local record InvalidOriginKeepaliveTimeout
    Message: string
end

local record InvalidOriginReadTimeout
    Message: string
end

local record InvalidProtocolSettings
    Message: string
end

local record InvalidQueryStringParameters
    Message: string
end

local record InvalidRelativePath
    Message: string
end

local record InvalidRequiredProtocol
    Message: string
end

local record InvalidResponseCode
    Message: string
end

local record InvalidTTLOrder
    Message: string
end

local record InvalidViewerCertificate
    Message: string
end

local record InvalidWebACLId
    Message: string
end

local record MissingBody
    Message: string
end

local record NoSuchCachePolicy
    Message: string
end

local record NoSuchContinuousDeploymentPolicy
    Message: string
end

local record NoSuchFieldLevelEncryptionConfig
    Message: string
end

local record NoSuchOrigin
    Message: string
end

local record NoSuchOriginRequestPolicy
    Message: string
end

local record NoSuchRealtimeLogConfig
    Message: string
end

local record NoSuchResponseHeadersPolicy
    Message: string
end

local record RealtimeLogConfigOwnerMismatch
    Message: string
end

local record TooManyCacheBehaviors
    Message: string
end

local record TooManyCertificates
    Message: string
end

local record TooManyCookieNamesInWhiteList
    Message: string
end

local record TooManyDistributionCNAMEs
    Message: string
end

local record TooManyDistributions
    Message: string
end

local record TooManyDistributionsAssociatedToCachePolicy
    Message: string
end

local record TooManyDistributionsAssociatedToFieldLevelEncryptionConfig
    Message: string
end

local record TooManyDistributionsAssociatedToKeyGroup
    Message: string
end

local record TooManyDistributionsAssociatedToOriginAccessControl
    Message: string
end

local record TooManyDistributionsAssociatedToOriginRequestPolicy
    Message: string
end

local record TooManyDistributionsAssociatedToResponseHeadersPolicy
    Message: string
end

local record TooManyDistributionsWithFunctionAssociations
    Message: string
end

local record TooManyDistributionsWithLambdaAssociations
    Message: string
end

local record TooManyDistributionsWithSingleFunctionARN
    Message: string
end

local record TooManyFunctionAssociations
    Message: string
end

local record TooManyHeadersInForwardedValues
    Message: string
end

local record TooManyKeyGroupsAssociatedToDistribution
    Message: string
end

local record TooManyLambdaFunctionAssociations
    Message: string
end

local record TooManyOriginCustomHeaders
    Message: string
end

local record TooManyOriginGroupsPerDistribution
    Message: string
end

local record TooManyOrigins
    Message: string
end

local record TooManyQueryStringParameters
    Message: string
end

local record TooManyTrustedSigners
    Message: string
end

local record TrustedKeyGroupDoesNotExist
    Message: string
end

local record TrustedSignerDoesNotExist
    Message: string
end

local record AccessDenied
    Message: string
end

local record CNAMEAlreadyExists
    Message: string
end

local record EntityAlreadyExists
    Message: string
end

local record EntityLimitExceeded
    Message: string
end

local record EntityNotFound
    Message: string
end

local record InvalidArgument
    Message: string
end

local record InvalidAssociation
    Message: string
end

local record InvalidTagging
    Message: string
end

local record AccessDenied
    Message: string
end

local record CNAMEAlreadyExists
    Message: string
end

local record ContinuousDeploymentPolicyInUse
    Message: string
end

local record DistributionAlreadyExists
    Message: string
end

local record EntityNotFound
    Message: string
end

local record IllegalFieldLevelEncryptionConfigAssociationWithCacheBehavior
    Message: string
end

local record IllegalOriginAccessConfiguration
    Message: string
end

local record InconsistentQuantities
    Message: string
end

local record InvalidArgument
    Message: string
end

local record InvalidDefaultRootObject
    Message: string
end

local record InvalidDomainNameForOriginAccessControl
    Message: string
end

local record InvalidErrorCode
    Message: string
end

local record InvalidForwardCookies
    Message: string
end

local record InvalidFunctionAssociation
    Message: string
end

local record InvalidGeoRestrictionParameter
    Message: string
end

local record InvalidHeadersForS3Origin
    Message: string
end

local record InvalidLambdaFunctionAssociation
    Message: string
end

local record InvalidLocationCode
    Message: string
end

local record InvalidMinimumProtocolVersion
    Message: string
end

local record InvalidOrigin
    Message: string
end

local record InvalidOriginAccessControl
    Message: string
end

local record InvalidOriginAccessIdentity
    Message: string
end

local record InvalidOriginKeepaliveTimeout
    Message: string
end

local record InvalidOriginReadTimeout
    Message: string
end

local record InvalidProtocolSettings
    Message: string
end

local record InvalidQueryStringParameters
    Message: string
end

local record InvalidRelativePath
    Message: string
end

local record InvalidRequiredProtocol
    Message: string
end

local record InvalidResponseCode
    Message: string
end

local record InvalidTagging
    Message: string
end

local record InvalidTTLOrder
    Message: string
end

local record InvalidViewerCertificate
    Message: string
end

local record InvalidWebACLId
    Message: string
end

local record MissingBody
    Message: string
end

local record NoSuchCachePolicy
    Message: string
end

local record NoSuchContinuousDeploymentPolicy
    Message: string
end

local record NoSuchFieldLevelEncryptionConfig
    Message: string
end

local record NoSuchOrigin
    Message: string
end

local record NoSuchOriginRequestPolicy
    Message: string
end

local record NoSuchRealtimeLogConfig
    Message: string
end

local record NoSuchResponseHeadersPolicy
    Message: string
end

local record RealtimeLogConfigOwnerMismatch
    Message: string
end

local record TooManyCacheBehaviors
    Message: string
end

local record TooManyCertificates
    Message: string
end

local record TooManyCookieNamesInWhiteList
    Message: string
end

local record TooManyDistributionCNAMEs
    Message: string
end

local record TooManyDistributions
    Message: string
end

local record TooManyDistributionsAssociatedToCachePolicy
    Message: string
end

local record TooManyDistributionsAssociatedToFieldLevelEncryptionConfig
    Message: string
end

local record TooManyDistributionsAssociatedToKeyGroup
    Message: string
end

local record TooManyDistributionsAssociatedToOriginAccessControl
    Message: string
end

local record TooManyDistributionsAssociatedToOriginRequestPolicy
    Message: string
end

local record TooManyDistributionsAssociatedToResponseHeadersPolicy
    Message: string
end

local record TooManyDistributionsWithFunctionAssociations
    Message: string
end

local record TooManyDistributionsWithLambdaAssociations
    Message: string
end

local record TooManyDistributionsWithSingleFunctionARN
    Message: string
end

local record TooManyFunctionAssociations
    Message: string
end

local record TooManyHeadersInForwardedValues
    Message: string
end

local record TooManyKeyGroupsAssociatedToDistribution
    Message: string
end

local record TooManyLambdaFunctionAssociations
    Message: string
end

local record TooManyOriginCustomHeaders
    Message: string
end

local record TooManyOriginGroupsPerDistribution
    Message: string
end

local record TooManyOrigins
    Message: string
end

local record TooManyQueryStringParameters
    Message: string
end

local record TooManyTrustedSigners
    Message: string
end

local record TrustedKeyGroupDoesNotExist
    Message: string
end

local record TrustedSignerDoesNotExist
    Message: string
end

local record FieldLevelEncryptionConfigAlreadyExists
    Message: string
end

local record InconsistentQuantities
    Message: string
end

local record InvalidArgument
    Message: string
end

local record NoSuchFieldLevelEncryptionProfile
    Message: string
end

local record QueryArgProfileEmpty
    Message: string
end

local record TooManyFieldLevelEncryptionConfigs
    Message: string
end

local record TooManyFieldLevelEncryptionContentTypeProfiles
    Message: string
end

local record TooManyFieldLevelEncryptionQueryArgProfiles
    Message: string
end

local record FieldLevelEncryptionProfileAlreadyExists
    Message: string
end

local record FieldLevelEncryptionProfileSizeExceeded
    Message: string
end

local record InconsistentQuantities
    Message: string
end

local record InvalidArgument
    Message: string
end

local record NoSuchPublicKey
    Message: string
end

local record TooManyFieldLevelEncryptionEncryptionEntities
    Message: string
end

local record TooManyFieldLevelEncryptionFieldPatterns
    Message: string
end

local record TooManyFieldLevelEncryptionProfiles
    Message: string
end

local record FunctionAlreadyExists
    Message: string
end

local record FunctionSizeLimitExceeded
    Message: string
end

local record InvalidArgument
    Message: string
end

local record TooManyFunctions
    Message: string
end

local record UnsupportedOperation
    Message: string
end

local record AccessDenied
    Message: string
end

local record BatchTooLarge
    Message: string
end

local record InconsistentQuantities
    Message: string
end

local record InvalidArgument
    Message: string
end

local record MissingBody
    Message: string
end

local record NoSuchDistribution
    Message: string
end

local record TooManyInvalidationsInProgress
    Message: string
end

local record AccessDenied
    Message: string
end

local record BatchTooLarge
    Message: string
end

local record EntityNotFound
    Message: string
end

local record InconsistentQuantities
    Message: string
end

local record InvalidArgument
    Message: string
end

local record MissingBody
    Message: string
end

local record TooManyInvalidationsInProgress
    Message: string
end

local record InvalidArgument
    Message: string
end

local record KeyGroupAlreadyExists
    Message: string
end

local record TooManyKeyGroups
    Message: string
end

local record TooManyPublicKeysInKeyGroup
    Message: string
end

local record AccessDenied
    Message: string
end

local record EntityAlreadyExists
    Message: string
end

local record EntityLimitExceeded
    Message: string
end

local record EntitySizeLimitExceeded
    Message: string
end

local record InvalidArgument
    Message: string
end

local record UnsupportedOperation
    Message: string
end

local record AccessDenied
    Message: string
end

local record MonitoringSubscriptionAlreadyExists
    Message: string
end

local record NoSuchDistribution
    Message: string
end

local record UnsupportedOperation
    Message: string
end

local record InvalidArgument
    Message: string
end

local record OriginAccessControlAlreadyExists
    Message: string
end

local record TooManyOriginAccessControls
    Message: string
end

local record AccessDenied
    Message: string
end

local record InconsistentQuantities
    Message: string
end

local record InvalidArgument
    Message: string
end

local record OriginRequestPolicyAlreadyExists
    Message: string
end

local record TooManyCookiesInOriginRequestPolicy
    Message: string
end

local record TooManyHeadersInOriginRequestPolicy
    Message: string
end

local record TooManyOriginRequestPolicies
    Message: string
end

local record TooManyQueryStringsInOriginRequestPolicy
    Message: string
end

local record InvalidArgument
    Message: string
end

local record PublicKeyAlreadyExists
    Message: string
end

local record TooManyPublicKeys
    Message: string
end

local record AccessDenied
    Message: string
end

local record InvalidArgument
    Message: string
end

local record RealtimeLogConfigAlreadyExists
    Message: string
end

local record TooManyRealtimeLogConfigs
    Message: string
end

local record AccessDenied
    Message: string
end

local record InconsistentQuantities
    Message: string
end

local record InvalidArgument
    Message: string
end

local record ResponseHeadersPolicyAlreadyExists
    Message: string
end

local record TooLongCSPInResponseHeadersPolicy
    Message: string
end

local record TooManyCustomHeadersInResponseHeadersPolicy
    Message: string
end

local record TooManyRemoveHeadersInResponseHeadersPolicy
    Message: string
end

local record TooManyResponseHeadersPolicies
    Message: string
end

local record AccessDenied
    Message: string
end

local record CNAMEAlreadyExists
    Message: string
end

local record InconsistentQuantities
    Message: string
end

local record InvalidArgument
    Message: string
end

local record InvalidOrigin
    Message: string
end

local record InvalidOriginAccessControl
    Message: string
end

local record InvalidOriginAccessIdentity
    Message: string
end

local record MissingBody
    Message: string
end

local record StreamingDistributionAlreadyExists
    Message: string
end

local record TooManyStreamingDistributionCNAMEs
    Message: string
end

local record TooManyStreamingDistributions
    Message: string
end

local record TooManyTrustedSigners
    Message: string
end

local record TrustedSignerDoesNotExist
    Message: string
end

local record AccessDenied
    Message: string
end

local record CNAMEAlreadyExists
    Message: string
end

local record InconsistentQuantities
    Message: string
end

local record InvalidArgument
    Message: string
end

local record InvalidOrigin
    Message: string
end

local record InvalidOriginAccessControl
    Message: string
end

local record InvalidOriginAccessIdentity
    Message: string
end

local record InvalidTagging
    Message: string
end

local record MissingBody
    Message: string
end

local record StreamingDistributionAlreadyExists
    Message: string
end

local record TooManyStreamingDistributionCNAMEs
    Message: string
end

local record TooManyStreamingDistributions
    Message: string
end

local record TooManyTrustedSigners
    Message: string
end

local record TrustedSignerDoesNotExist
    Message: string
end

local record AccessDenied
    Message: string
end

local record EntityAlreadyExists
    Message: string
end

local record EntityLimitExceeded
    Message: string
end

local record EntityNotFound
    Message: string
end

local record InvalidArgument
    Message: string
end

local record InvalidTagging
    Message: string
end

local record AccessDenied
    Message: string
end

local record EntityAlreadyExists
    Message: string
end

local record EntityLimitExceeded
    Message: string
end

local record InconsistentQuantities
    Message: string
end

local record InvalidArgument
    Message: string
end

local record InvalidTagging
    Message: string
end

local record UnsupportedOperation
    Message: string
end

local record AccessDenied
    Message: string
end

local record CannotDeleteEntityWhileInUse
    Message: string
end

local record EntityNotFound
    Message: string
end

local record IllegalDelete
    Message: string
end

local record InvalidArgument
    Message: string
end

local record InvalidIfMatchVersion
    Message: string
end

local record PreconditionFailed
    Message: string
end

local record UnsupportedOperation
    Message: string
end

local record AccessDenied
    Message: string
end

local record CachePolicyInUse
    Message: string
end

local record IllegalDelete
    Message: string
end

local record InvalidIfMatchVersion
    Message: string
end

local record NoSuchCachePolicy
    Message: string
end

local record PreconditionFailed
    Message: string
end

local record AccessDenied
    Message: string
end

local record CloudFrontOriginAccessIdentityInUse
    Message: string
end

local record InvalidIfMatchVersion
    Message: string
end

local record NoSuchCloudFrontOriginAccessIdentity
    Message: string
end

local record PreconditionFailed
    Message: string
end

local record AccessDenied
    Message: string
end

local record CannotDeleteEntityWhileInUse
    Message: string
end

local record EntityNotFound
    Message: string
end

local record InvalidArgument
    Message: string
end

local record InvalidIfMatchVersion
    Message: string
end

local record PreconditionFailed
    Message: string
end

local record UnsupportedOperation
    Message: string
end

local record AccessDenied
    Message: string
end

local record CannotDeleteEntityWhileInUse
    Message: string
end

local record EntityNotFound
    Message: string
end

local record InvalidIfMatchVersion
    Message: string
end

local record PreconditionFailed
    Message: string
end

local record ResourceNotDisabled
    Message: string
end

local record AccessDenied
    Message: string
end

local record ContinuousDeploymentPolicyInUse
    Message: string
end

local record InvalidArgument
    Message: string
end

local record InvalidIfMatchVersion
    Message: string
end

local record NoSuchContinuousDeploymentPolicy
    Message: string
end

local record PreconditionFailed
    Message: string
end

local record AccessDenied
    Message: string
end

local record DistributionNotDisabled
    Message: string
end

local record InvalidIfMatchVersion
    Message: string
end

local record NoSuchDistribution
    Message: string
end

local record PreconditionFailed
    Message: string
end

local record ResourceInUse
    Message: string
end

local record AccessDenied
    Message: string
end

local record EntityNotFound
    Message: string
end

local record InvalidIfMatchVersion
    Message: string
end

local record PreconditionFailed
    Message: string
end

local record ResourceNotDisabled
    Message: string
end

local record AccessDenied
    Message: string
end

local record FieldLevelEncryptionConfigInUse
    Message: string
end

local record InvalidIfMatchVersion
    Message: string
end

local record NoSuchFieldLevelEncryptionConfig
    Message: string
end

local record PreconditionFailed
    Message: string
end

local record AccessDenied
    Message: string
end

local record FieldLevelEncryptionProfileInUse
    Message: string
end

local record InvalidIfMatchVersion
    Message: string
end

local record NoSuchFieldLevelEncryptionProfile
    Message: string
end

local record PreconditionFailed
    Message: string
end

local record FunctionInUse
    Message: string
end

local record InvalidIfMatchVersion
    Message: string
end

local record NoSuchFunctionExists
    Message: string
end

local record PreconditionFailed
    Message: string
end

local record UnsupportedOperation
    Message: string
end

local record InvalidIfMatchVersion
    Message: string
end

local record NoSuchResource
    Message: string
end

local record PreconditionFailed
    Message: string
end

local record ResourceInUse
    Message: string
end

local record AccessDenied
    Message: string
end

local record CannotDeleteEntityWhileInUse
    Message: string
end

local record EntityNotFound
    Message: string
end

local record InvalidIfMatchVersion
    Message: string
end

local record PreconditionFailed
    Message: string
end

local record UnsupportedOperation
    Message: string
end

local record AccessDenied
    Message: string
end

local record NoSuchDistribution
    Message: string
end

local record NoSuchMonitoringSubscription
    Message: string
end

local record UnsupportedOperation
    Message: string
end

local record AccessDenied
    Message: string
end

local record InvalidIfMatchVersion
    Message: string
end

local record NoSuchOriginAccessControl
    Message: string
end

local record OriginAccessControlInUse
    Message: string
end

local record PreconditionFailed
    Message: string
end

local record AccessDenied
    Message: string
end

local record IllegalDelete
    Message: string
end

local record InvalidIfMatchVersion
    Message: string
end

local record NoSuchOriginRequestPolicy
    Message: string
end

local record OriginRequestPolicyInUse
    Message: string
end

local record PreconditionFailed
    Message: string
end

local record AccessDenied
    Message: string
end

local record InvalidIfMatchVersion
    Message: string
end

local record NoSuchPublicKey
    Message: string
end

local record PreconditionFailed
    Message: string
end

local record PublicKeyInUse
    Message: string
end

local record AccessDenied
    Message: string
end

local record InvalidArgument
    Message: string
end

local record NoSuchRealtimeLogConfig
    Message: string
end

local record RealtimeLogConfigInUse
    Message: string
end

local record AccessDenied
    Message: string
end

local record EntityNotFound
    Message: string
end

local record IllegalDelete
    Message: string
end

local record InvalidArgument
    Message: string
end

local record PreconditionFailed
    Message: string
end

local record UnsupportedOperation
    Message: string
end

local record AccessDenied
    Message: string
end

local record IllegalDelete
    Message: string
end

local record InvalidIfMatchVersion
    Message: string
end

local record NoSuchResponseHeadersPolicy
    Message: string
end

local record PreconditionFailed
    Message: string
end

local record ResponseHeadersPolicyInUse
    Message: string
end

local record AccessDenied
    Message: string
end

local record InvalidIfMatchVersion
    Message: string
end

local record NoSuchStreamingDistribution
    Message: string
end

local record PreconditionFailed
    Message: string
end

local record StreamingDistributionNotDisabled
    Message: string
end

local record AccessDenied
    Message: string
end

local record CannotDeleteEntityWhileInUse
    Message: string
end

local record EntityNotFound
    Message: string
end

local record InvalidArgument
    Message: string
end

local record InvalidIfMatchVersion
    Message: string
end

local record PreconditionFailed
    Message: string
end

local record AccessDenied
    Message: string
end

local record CannotDeleteEntityWhileInUse
    Message: string
end

local record EntityNotFound
    Message: string
end

local record IllegalDelete
    Message: string
end

local record InvalidArgument
    Message: string
end

local record InvalidIfMatchVersion
    Message: string
end

local record PreconditionFailed
    Message: string
end

local record UnsupportedOperation
    Message: string
end

local record AccessDenied
    Message: string
end

local record EntityNotFound
    Message: string
end

local record InvalidArgument
    Message: string
end

local record UnsupportedOperation
    Message: string
end

local record NoSuchFunctionExists
    Message: string
end

local record UnsupportedOperation
    Message: string
end

local record AccessDenied
    Message: string
end

local record EntityNotFound
    Message: string
end

local record InvalidArgument
    Message: string
end

local record UnsupportedOperation
    Message: string
end

local record AccessDenied
    Message: string
end

local record EntityNotFound
    Message: string
end

local record InvalidArgument
    Message: string
end

local record InvalidIfMatchVersion
    Message: string
end

local record PreconditionFailed
    Message: string
end

local record AccessDenied
    Message: string
end

local record EntityNotFound
    Message: string
end

local record InvalidArgument
    Message: string
end

local record InvalidIfMatchVersion
    Message: string
end

local record PreconditionFailed
    Message: string
end

local record AccessDenied
    Message: string
end

local record EntityNotFound
    Message: string
end

local record InvalidArgument
    Message: string
end

local record UnsupportedOperation
    Message: string
end

local record AccessDenied
    Message: string
end

local record NoSuchCachePolicy
    Message: string
end

local record AccessDenied
    Message: string
end

local record NoSuchCachePolicy
    Message: string
end

local record AccessDenied
    Message: string
end

local record NoSuchCloudFrontOriginAccessIdentity
    Message: string
end

local record AccessDenied
    Message: string
end

local record NoSuchCloudFrontOriginAccessIdentity
    Message: string
end

local record AccessDenied
    Message: string
end

local record EntityNotFound
    Message: string
end

local record UnsupportedOperation
    Message: string
end

local record AccessDenied
    Message: string
end

local record EntityNotFound
    Message: string
end

local record AccessDenied
    Message: string
end

local record EntityNotFound
    Message: string
end

local record AccessDenied
    Message: string
end

local record NoSuchContinuousDeploymentPolicy
    Message: string
end

local record AccessDenied
    Message: string
end

local record NoSuchContinuousDeploymentPolicy
    Message: string
end

local record AccessDenied
    Message: string
end

local record NoSuchDistribution
    Message: string
end

local record AccessDenied
    Message: string
end

local record NoSuchDistribution
    Message: string
end

local record AccessDenied
    Message: string
end

local record EntityNotFound
    Message: string
end

local record AccessDenied
    Message: string
end

local record EntityNotFound
    Message: string
end

local record AccessDenied
    Message: string
end

local record NoSuchFieldLevelEncryptionConfig
    Message: string
end

local record AccessDenied
    Message: string
end

local record NoSuchFieldLevelEncryptionConfig
    Message: string
end

local record AccessDenied
    Message: string
end

local record NoSuchFieldLevelEncryptionProfile
    Message: string
end

local record AccessDenied
    Message: string
end

local record NoSuchFieldLevelEncryptionProfile
    Message: string
end

local record NoSuchFunctionExists
    Message: string
end

local record UnsupportedOperation
    Message: string
end

local record AccessDenied
    Message: string
end

local record NoSuchDistribution
    Message: string
end

local record NoSuchInvalidation
    Message: string
end

local record AccessDenied
    Message: string
end

local record EntityNotFound
    Message: string
end

local record NoSuchInvalidation
    Message: string
end

local record NoSuchResource
    Message: string
end

local record NoSuchResource
    Message: string
end

local record AccessDenied
    Message: string
end

local record EntityNotFound
    Message: string
end

local record AccessDenied
    Message: string
end

local record NoSuchDistribution
    Message: string
end

local record NoSuchMonitoringSubscription
    Message: string
end

local record UnsupportedOperation
    Message: string
end

local record AccessDenied
    Message: string
end

local record NoSuchOriginAccessControl
    Message: string
end

local record AccessDenied
    Message: string
end

local record NoSuchOriginAccessControl
    Message: string
end

local record AccessDenied
    Message: string
end

local record NoSuchOriginRequestPolicy
    Message: string
end

local record AccessDenied
    Message: string
end

local record NoSuchOriginRequestPolicy
    Message: string
end

local record AccessDenied
    Message: string
end

local record NoSuchPublicKey
    Message: string
end

local record AccessDenied
    Message: string
end

local record NoSuchPublicKey
    Message: string
end

local record AccessDenied
    Message: string
end

local record InvalidArgument
    Message: string
end

local record NoSuchRealtimeLogConfig
    Message: string
end

local record AccessDenied
    Message: string
end

local record EntityNotFound
    Message: string
end

local record InvalidArgument
    Message: string
end

local record UnsupportedOperation
    Message: string
end

local record AccessDenied
    Message: string
end

local record NoSuchResponseHeadersPolicy
    Message: string
end

local record AccessDenied
    Message: string
end

local record NoSuchResponseHeadersPolicy
    Message: string
end

local record AccessDenied
    Message: string
end

local record NoSuchStreamingDistribution
    Message: string
end

local record AccessDenied
    Message: string
end

local record NoSuchStreamingDistribution
    Message: string
end

local record AccessDenied
    Message: string
end

local record EntityNotFound
    Message: string
end

local record InvalidArgument
    Message: string
end

local record AccessDenied
    Message: string
end

local record EntityNotFound
    Message: string
end

local record InvalidArgument
    Message: string
end

local record UnsupportedOperation
    Message: string
end

local record AccessDenied
    Message: string
end

local record EntityNotFound
    Message: string
end

local record InvalidArgument
    Message: string
end

local record UnsupportedOperation
    Message: string
end

local record AccessDenied
    Message: string
end

local record InvalidArgument
    Message: string
end

local record NoSuchCachePolicy
    Message: string
end

local record InvalidArgument
    Message: string
end

local record InvalidArgument
    Message: string
end

local record NoSuchDistribution
    Message: string
end

local record AccessDenied
    Message: string
end

local record InvalidArgument
    Message: string
end

local record UnsupportedOperation
    Message: string
end

local record AccessDenied
    Message: string
end

local record EntityNotFound
    Message: string
end

local record InvalidArgument
    Message: string
end

local record AccessDenied
    Message: string
end

local record InvalidArgument
    Message: string
end

local record NoSuchContinuousDeploymentPolicy
    Message: string
end

local record InvalidArgument
    Message: string
end

local record AccessDenied
    Message: string
end

local record EntityNotFound
    Message: string
end

local record InvalidArgument
    Message: string
end

local record UnsupportedOperation
    Message: string
end

local record AccessDenied
    Message: string
end

local record InvalidArgument
    Message: string
end

local record NoSuchCachePolicy
    Message: string
end

local record AccessDenied
    Message: string
end

local record EntityNotFound
    Message: string
end

local record InvalidArgument
    Message: string
end

local record AccessDenied
    Message: string
end

local record InvalidArgument
    Message: string
end

local record InvalidArgument
    Message: string
end

local record NoSuchResource
    Message: string
end

local record AccessDenied
    Message: string
end

local record InvalidArgument
    Message: string
end

local record NoSuchOriginRequestPolicy
    Message: string
end

local record AccessDenied
    Message: string
end

local record EntityNotFound
    Message: string
end

local record InvalidArgument
    Message: string
end

local record UnsupportedOperation
    Message: string
end

local record InvalidArgument
    Message: string
end

local record AccessDenied
    Message: string
end

local record InvalidArgument
    Message: string
end

local record NoSuchResponseHeadersPolicy
    Message: string
end

local record AccessDenied
    Message: string
end

local record EntityNotFound
    Message: string
end

local record InvalidArgument
    Message: string
end

local record AccessDenied
    Message: string
end

local record EntityNotFound
    Message: string
end

local record InvalidArgument
    Message: string
end

local record UnsupportedOperation
    Message: string
end

local record InvalidArgument
    Message: string
end

local record InvalidWebACLId
    Message: string
end

local record AccessDenied
    Message: string
end

local record EntityNotFound
    Message: string
end

local record InvalidArgument
    Message: string
end

local record AccessDenied
    Message: string
end

local record EntityNotFound
    Message: string
end

local record InvalidArgument
    Message: string
end

local record AccessDenied
    Message: string
end

local record EntityNotFound
    Message: string
end

local record InvalidArgument
    Message: string
end

local record InvalidArgument
    Message: string
end

local record InvalidArgument
    Message: string
end

local record InvalidArgument
    Message: string
end

local record UnsupportedOperation
    Message: string
end

local record AccessDenied
    Message: string
end

local record InvalidArgument
    Message: string
end

local record NoSuchDistribution
    Message: string
end

local record AccessDenied
    Message: string
end

local record EntityNotFound
    Message: string
end

local record InvalidArgument
    Message: string
end

local record InvalidArgument
    Message: string
end

local record AccessDenied
    Message: string
end

local record InvalidArgument
    Message: string
end

local record UnsupportedOperation
    Message: string
end

local record InvalidArgument
    Message: string
end

local record AccessDenied
    Message: string
end

local record InvalidArgument
    Message: string
end

local record NoSuchOriginRequestPolicy
    Message: string
end

local record InvalidArgument
    Message: string
end

local record AccessDenied
    Message: string
end

local record InvalidArgument
    Message: string
end

local record NoSuchRealtimeLogConfig
    Message: string
end

local record AccessDenied
    Message: string
end

local record InvalidArgument
    Message: string
end

local record NoSuchResponseHeadersPolicy
    Message: string
end

local record InvalidArgument
    Message: string
end

local record AccessDenied
    Message: string
end

local record InvalidArgument
    Message: string
end

local record InvalidTagging
    Message: string
end

local record NoSuchResource
    Message: string
end

local record AccessDenied
    Message: string
end

local record EntityNotFound
    Message: string
end

local record InvalidArgument
    Message: string
end

local record AccessDenied
    Message: string
end

local record EntityNotFound
    Message: string
end

local record InvalidArgument
    Message: string
end

local record UnsupportedOperation
    Message: string
end

local record AccessDenied
    Message: string
end

local record EntityNotFound
    Message: string
end

local record InvalidArgument
    Message: string
end

local record InvalidIfMatchVersion
    Message: string
end

local record PreconditionFailed
    Message: string
end

local record UnsupportedOperation
    Message: string
end

local record InvalidArgument
    Message: string
end

local record InvalidIfMatchVersion
    Message: string
end

local record NoSuchFunctionExists
    Message: string
end

local record PreconditionFailed
    Message: string
end

local record UnsupportedOperation
    Message: string
end

local record AccessDenied
    Message: string
end

local record EntityNotFound
    Message: string
end

local record IllegalUpdate
    Message: string
end

local record InvalidArgument
    Message: string
end

local record PreconditionFailed
    Message: string
end

local record UnsupportedOperation
    Message: string
end

local record AccessDenied
    Message: string
end

local record InvalidArgument
    Message: string
end

local record InvalidTagging
    Message: string
end

local record NoSuchResource
    Message: string
end

local record EntityNotFound
    Message: string
end

local record InvalidArgument
    Message: string
end

local record InvalidIfMatchVersion
    Message: string
end

local record PreconditionFailed
    Message: string
end

local record TestFunctionFailed
    Message: string
end

local record UnsupportedOperation
    Message: string
end

local record InvalidArgument
    Message: string
end

local record InvalidIfMatchVersion
    Message: string
end

local record NoSuchFunctionExists
    Message: string
end

local record TestFunctionFailed
    Message: string
end

local record UnsupportedOperation
    Message: string
end

local record AccessDenied
    Message: string
end

local record InvalidArgument
    Message: string
end

local record InvalidTagging
    Message: string
end

local record NoSuchResource
    Message: string
end

local record AccessDenied
    Message: string
end

local record EntityNotFound
    Message: string
end

local record InvalidArgument
    Message: string
end

local record InvalidIfMatchVersion
    Message: string
end

local record PreconditionFailed
    Message: string
end

local record UnsupportedOperation
    Message: string
end

local record AccessDenied
    Message: string
end

local record CachePolicyAlreadyExists
    Message: string
end

local record IllegalUpdate
    Message: string
end

local record InconsistentQuantities
    Message: string
end

local record InvalidArgument
    Message: string
end

local record InvalidIfMatchVersion
    Message: string
end

local record NoSuchCachePolicy
    Message: string
end

local record PreconditionFailed
    Message: string
end

local record TooManyCookiesInCachePolicy
    Message: string
end

local record TooManyHeadersInCachePolicy
    Message: string
end

local record TooManyQueryStringsInCachePolicy
    Message: string
end

local record AccessDenied
    Message: string
end

local record IllegalUpdate
    Message: string
end

local record InconsistentQuantities
    Message: string
end

local record InvalidArgument
    Message: string
end

local record InvalidIfMatchVersion
    Message: string
end

local record MissingBody
    Message: string
end

local record NoSuchCloudFrontOriginAccessIdentity
    Message: string
end

local record PreconditionFailed
    Message: string
end

local record AccessDenied
    Message: string
end

local record EntityNotFound
    Message: string
end

local record EntitySizeLimitExceeded
    Message: string
end

local record InvalidArgument
    Message: string
end

local record InvalidIfMatchVersion
    Message: string
end

local record PreconditionFailed
    Message: string
end

local record UnsupportedOperation
    Message: string
end

local record AccessDenied
    Message: string
end

local record EntityAlreadyExists
    Message: string
end

local record EntityLimitExceeded
    Message: string
end

local record EntityNotFound
    Message: string
end

local record InvalidArgument
    Message: string
end

local record InvalidIfMatchVersion
    Message: string
end

local record PreconditionFailed
    Message: string
end

local record ResourceInUse
    Message: string
end

local record AccessDenied
    Message: string
end

local record InconsistentQuantities
    Message: string
end

local record InvalidArgument
    Message: string
end

local record InvalidIfMatchVersion
    Message: string
end

local record NoSuchContinuousDeploymentPolicy
    Message: string
end

local record PreconditionFailed
    Message: string
end

local record StagingDistributionInUse
    Message: string
end

local record AccessDenied
    Message: string
end

local record CNAMEAlreadyExists
    Message: string
end

local record ContinuousDeploymentPolicyInUse
    Message: string
end

local record EntityNotFound
    Message: string
end

local record IllegalFieldLevelEncryptionConfigAssociationWithCacheBehavior
    Message: string
end

local record IllegalOriginAccessConfiguration
    Message: string
end

local record IllegalUpdate
    Message: string
end

local record InconsistentQuantities
    Message: string
end

local record InvalidArgument
    Message: string
end

local record InvalidDefaultRootObject
    Message: string
end

local record InvalidDomainNameForOriginAccessControl
    Message: string
end

local record InvalidErrorCode
    Message: string
end

local record InvalidForwardCookies
    Message: string
end

local record InvalidFunctionAssociation
    Message: string
end

local record InvalidGeoRestrictionParameter
    Message: string
end

local record InvalidHeadersForS3Origin
    Message: string
end

local record InvalidIfMatchVersion
    Message: string
end

local record InvalidLambdaFunctionAssociation
    Message: string
end

local record InvalidLocationCode
    Message: string
end

local record InvalidMinimumProtocolVersion
    Message: string
end

local record InvalidOriginAccessControl
    Message: string
end

local record InvalidOriginAccessIdentity
    Message: string
end

local record InvalidOriginKeepaliveTimeout
    Message: string
end

local record InvalidOriginReadTimeout
    Message: string
end

local record InvalidQueryStringParameters
    Message: string
end

local record InvalidRelativePath
    Message: string
end

local record InvalidRequiredProtocol
    Message: string
end

local record InvalidResponseCode
    Message: string
end

local record InvalidTTLOrder
    Message: string
end

local record InvalidViewerCertificate
    Message: string
end

local record InvalidWebACLId
    Message: string
end

local record MissingBody
    Message: string
end

local record NoSuchCachePolicy
    Message: string
end

local record NoSuchContinuousDeploymentPolicy
    Message: string
end

local record NoSuchDistribution
    Message: string
end

local record NoSuchFieldLevelEncryptionConfig
    Message: string
end

local record NoSuchOrigin
    Message: string
end

local record NoSuchOriginRequestPolicy
    Message: string
end

local record NoSuchRealtimeLogConfig
    Message: string
end

local record NoSuchResponseHeadersPolicy
    Message: string
end

local record PreconditionFailed
    Message: string
end

local record RealtimeLogConfigOwnerMismatch
    Message: string
end

local record StagingDistributionInUse
    Message: string
end

local record TooManyCacheBehaviors
    Message: string
end

local record TooManyCertificates
    Message: string
end

local record TooManyCookieNamesInWhiteList
    Message: string
end

local record TooManyDistributionCNAMEs
    Message: string
end

local record TooManyDistributionsAssociatedToCachePolicy
    Message: string
end

local record TooManyDistributionsAssociatedToFieldLevelEncryptionConfig
    Message: string
end

local record TooManyDistributionsAssociatedToKeyGroup
    Message: string
end

local record TooManyDistributionsAssociatedToOriginAccessControl
    Message: string
end

local record TooManyDistributionsAssociatedToOriginRequestPolicy
    Message: string
end

local record TooManyDistributionsAssociatedToResponseHeadersPolicy
    Message: string
end

local record TooManyDistributionsWithFunctionAssociations
    Message: string
end

local record TooManyDistributionsWithLambdaAssociations
    Message: string
end

local record TooManyDistributionsWithSingleFunctionARN
    Message: string
end

local record TooManyFunctionAssociations
    Message: string
end

local record TooManyHeadersInForwardedValues
    Message: string
end

local record TooManyKeyGroupsAssociatedToDistribution
    Message: string
end

local record TooManyLambdaFunctionAssociations
    Message: string
end

local record TooManyOriginCustomHeaders
    Message: string
end

local record TooManyOriginGroupsPerDistribution
    Message: string
end

local record TooManyOrigins
    Message: string
end

local record TooManyQueryStringParameters
    Message: string
end

local record TooManyTrustedSigners
    Message: string
end

local record TrustedKeyGroupDoesNotExist
    Message: string
end

local record TrustedSignerDoesNotExist
    Message: string
end

local record AccessDenied
    Message: string
end

local record CNAMEAlreadyExists
    Message: string
end

local record EntityAlreadyExists
    Message: string
end

local record EntityLimitExceeded
    Message: string
end

local record EntityNotFound
    Message: string
end

local record InvalidArgument
    Message: string
end

local record InvalidAssociation
    Message: string
end

local record InvalidIfMatchVersion
    Message: string
end

local record PreconditionFailed
    Message: string
end

local record AccessDenied
    Message: string
end

local record CNAMEAlreadyExists
    Message: string
end

local record EntityLimitExceeded
    Message: string
end

local record EntityNotFound
    Message: string
end

local record IllegalFieldLevelEncryptionConfigAssociationWithCacheBehavior
    Message: string
end

local record IllegalUpdate
    Message: string
end

local record InconsistentQuantities
    Message: string
end

local record InvalidArgument
    Message: string
end

local record InvalidDefaultRootObject
    Message: string
end

local record InvalidErrorCode
    Message: string
end

local record InvalidForwardCookies
    Message: string
end

local record InvalidFunctionAssociation
    Message: string
end

local record InvalidGeoRestrictionParameter
    Message: string
end

local record InvalidHeadersForS3Origin
    Message: string
end

local record InvalidIfMatchVersion
    Message: string
end

local record InvalidLambdaFunctionAssociation
    Message: string
end

local record InvalidLocationCode
    Message: string
end

local record InvalidMinimumProtocolVersion
    Message: string
end

local record InvalidOriginAccessControl
    Message: string
end

local record InvalidOriginAccessIdentity
    Message: string
end

local record InvalidOriginKeepaliveTimeout
    Message: string
end

local record InvalidOriginReadTimeout
    Message: string
end

local record InvalidQueryStringParameters
    Message: string
end

local record InvalidRelativePath
    Message: string
end

local record InvalidRequiredProtocol
    Message: string
end

local record InvalidResponseCode
    Message: string
end

local record InvalidTTLOrder
    Message: string
end

local record InvalidViewerCertificate
    Message: string
end

local record InvalidWebACLId
    Message: string
end

local record MissingBody
    Message: string
end

local record NoSuchCachePolicy
    Message: string
end

local record NoSuchDistribution
    Message: string
end

local record NoSuchFieldLevelEncryptionConfig
    Message: string
end

local record NoSuchOrigin
    Message: string
end

local record NoSuchOriginRequestPolicy
    Message: string
end

local record NoSuchRealtimeLogConfig
    Message: string
end

local record NoSuchResponseHeadersPolicy
    Message: string
end

local record PreconditionFailed
    Message: string
end

local record RealtimeLogConfigOwnerMismatch
    Message: string
end

local record TooManyCacheBehaviors
    Message: string
end

local record TooManyCertificates
    Message: string
end

local record TooManyCookieNamesInWhiteList
    Message: string
end

local record TooManyDistributionCNAMEs
    Message: string
end

local record TooManyDistributionsAssociatedToCachePolicy
    Message: string
end

local record TooManyDistributionsAssociatedToFieldLevelEncryptionConfig
    Message: string
end

local record TooManyDistributionsAssociatedToKeyGroup
    Message: string
end

local record TooManyDistributionsAssociatedToOriginAccessControl
    Message: string
end

local record TooManyDistributionsAssociatedToOriginRequestPolicy
    Message: string
end

local record TooManyDistributionsAssociatedToResponseHeadersPolicy
    Message: string
end

local record TooManyDistributionsWithFunctionAssociations
    Message: string
end

local record TooManyDistributionsWithLambdaAssociations
    Message: string
end

local record TooManyDistributionsWithSingleFunctionARN
    Message: string
end

local record TooManyFunctionAssociations
    Message: string
end

local record TooManyHeadersInForwardedValues
    Message: string
end

local record TooManyKeyGroupsAssociatedToDistribution
    Message: string
end

local record TooManyLambdaFunctionAssociations
    Message: string
end

local record TooManyOriginCustomHeaders
    Message: string
end

local record TooManyOriginGroupsPerDistribution
    Message: string
end

local record TooManyOrigins
    Message: string
end

local record TooManyQueryStringParameters
    Message: string
end

local record TooManyTrustedSigners
    Message: string
end

local record TrustedKeyGroupDoesNotExist
    Message: string
end

local record TrustedSignerDoesNotExist
    Message: string
end

local record AccessDenied
    Message: string
end

local record EntityNotFound
    Message: string
end

local record IllegalUpdate
    Message: string
end

local record InvalidArgument
    Message: string
end

local record InvalidIfMatchVersion
    Message: string
end

local record PreconditionFailed
    Message: string
end

local record AccessDenied
    Message: string
end

local record IllegalUpdate
    Message: string
end

local record InconsistentQuantities
    Message: string
end

local record InvalidArgument
    Message: string
end

local record InvalidIfMatchVersion
    Message: string
end

local record NoSuchFieldLevelEncryptionConfig
    Message: string
end

local record NoSuchFieldLevelEncryptionProfile
    Message: string
end

local record PreconditionFailed
    Message: string
end

local record QueryArgProfileEmpty
    Message: string
end

local record TooManyFieldLevelEncryptionContentTypeProfiles
    Message: string
end

local record TooManyFieldLevelEncryptionQueryArgProfiles
    Message: string
end

local record AccessDenied
    Message: string
end

local record FieldLevelEncryptionProfileAlreadyExists
    Message: string
end

local record FieldLevelEncryptionProfileSizeExceeded
    Message: string
end

local record IllegalUpdate
    Message: string
end

local record InconsistentQuantities
    Message: string
end

local record InvalidArgument
    Message: string
end

local record InvalidIfMatchVersion
    Message: string
end

local record NoSuchFieldLevelEncryptionProfile
    Message: string
end

local record NoSuchPublicKey
    Message: string
end

local record PreconditionFailed
    Message: string
end

local record TooManyFieldLevelEncryptionEncryptionEntities
    Message: string
end

local record TooManyFieldLevelEncryptionFieldPatterns
    Message: string
end

local record FunctionSizeLimitExceeded
    Message: string
end

local record InvalidArgument
    Message: string
end

local record InvalidIfMatchVersion
    Message: string
end

local record NoSuchFunctionExists
    Message: string
end

local record PreconditionFailed
    Message: string
end

local record UnsupportedOperation
    Message: string
end

local record InvalidArgument
    Message: string
end

local record InvalidIfMatchVersion
    Message: string
end

local record KeyGroupAlreadyExists
    Message: string
end

local record NoSuchResource
    Message: string
end

local record PreconditionFailed
    Message: string
end

local record TooManyPublicKeysInKeyGroup
    Message: string
end

local record AccessDenied
    Message: string
end

local record EntityNotFound
    Message: string
end

local record InvalidArgument
    Message: string
end

local record InvalidIfMatchVersion
    Message: string
end

local record PreconditionFailed
    Message: string
end

local record UnsupportedOperation
    Message: string
end

local record AccessDenied
    Message: string
end

local record IllegalUpdate
    Message: string
end

local record InvalidArgument
    Message: string
end

local record InvalidIfMatchVersion
    Message: string
end

local record NoSuchOriginAccessControl
    Message: string
end

local record OriginAccessControlAlreadyExists
    Message: string
end

local record PreconditionFailed
    Message: string
end

local record AccessDenied
    Message: string
end

local record IllegalUpdate
    Message: string
end

local record InconsistentQuantities
    Message: string
end

local record InvalidArgument
    Message: string
end

local record InvalidIfMatchVersion
    Message: string
end

local record NoSuchOriginRequestPolicy
    Message: string
end

local record OriginRequestPolicyAlreadyExists
    Message: string
end

local record PreconditionFailed
    Message: string
end

local record TooManyCookiesInOriginRequestPolicy
    Message: string
end

local record TooManyHeadersInOriginRequestPolicy
    Message: string
end

local record TooManyQueryStringsInOriginRequestPolicy
    Message: string
end

local record AccessDenied
    Message: string
end

local record CannotChangeImmutablePublicKeyFields
    Message: string
end

local record IllegalUpdate
    Message: string
end

local record InvalidArgument
    Message: string
end

local record InvalidIfMatchVersion
    Message: string
end

local record NoSuchPublicKey
    Message: string
end

local record PreconditionFailed
    Message: string
end

local record AccessDenied
    Message: string
end

local record InvalidArgument
    Message: string
end

local record NoSuchRealtimeLogConfig
    Message: string
end

local record AccessDenied
    Message: string
end

local record IllegalUpdate
    Message: string
end

local record InconsistentQuantities
    Message: string
end

local record InvalidArgument
    Message: string
end

local record InvalidIfMatchVersion
    Message: string
end

local record NoSuchResponseHeadersPolicy
    Message: string
end

local record PreconditionFailed
    Message: string
end

local record ResponseHeadersPolicyAlreadyExists
    Message: string
end

local record TooLongCSPInResponseHeadersPolicy
    Message: string
end

local record TooManyCustomHeadersInResponseHeadersPolicy
    Message: string
end

local record TooManyRemoveHeadersInResponseHeadersPolicy
    Message: string
end

local record AccessDenied
    Message: string
end

local record CNAMEAlreadyExists
    Message: string
end

local record IllegalUpdate
    Message: string
end

local record InconsistentQuantities
    Message: string
end

local record InvalidArgument
    Message: string
end

local record InvalidIfMatchVersion
    Message: string
end

local record InvalidOriginAccessControl
    Message: string
end

local record InvalidOriginAccessIdentity
    Message: string
end

local record MissingBody
    Message: string
end

local record NoSuchStreamingDistribution
    Message: string
end

local record PreconditionFailed
    Message: string
end

local record TooManyStreamingDistributionCNAMEs
    Message: string
end

local record TooManyTrustedSigners
    Message: string
end

local record TrustedSignerDoesNotExist
    Message: string
end

local record AccessDenied
    Message: string
end

local record EntityNotFound
    Message: string
end

local record InvalidArgument
    Message: string
end

local record InvalidIfMatchVersion
    Message: string
end

local record PreconditionFailed
    Message: string
end

local record AccessDenied
    Message: string
end

local record CannotUpdateEntityWhileInUse
    Message: string
end

local record EntityAlreadyExists
    Message: string
end

local record EntityLimitExceeded
    Message: string
end

local record EntityNotFound
    Message: string
end

local record IllegalUpdate
    Message: string
end

local record InconsistentQuantities
    Message: string
end

local record InvalidArgument
    Message: string
end

local record InvalidIfMatchVersion
    Message: string
end

local record PreconditionFailed
    Message: string
end

local record UnsupportedOperation
    Message: string
end

local record AccessDenied
    Message: string
end

local record EntityNotFound
    Message: string
end

local record InvalidArgument
    Message: string
end

local type FunctionStage = "DEVELOPMENT" | "LIVE"

local type ConnectionMode = "direct" | "tenant-only"

local type OriginRequestPolicyType = "managed" | "custom"

local type CachePolicyType = "managed" | "custom"

local type ResponseHeadersPolicyType = "managed" | "custom"

local type IpAddressType = "ipv4" | "ipv6" | "dualstack"

local record M
    AssociateAliasInput: AssociateAliasInput
    AssociateAliasOutput: AssociateAliasOutput
    AssociateDistributionTenantWebACLInput: AssociateDistributionTenantWebACLInput
    AssociateDistributionTenantWebACLOutput: AssociateDistributionTenantWebACLOutput
    AssociateDistributionWebACLInput: AssociateDistributionWebACLInput
    AssociateDistributionWebACLOutput: AssociateDistributionWebACLOutput
    CopyDistributionInput: CopyDistributionInput
    CopyDistributionOutput: CopyDistributionOutput
    CreateAnycastIpListInput: CreateAnycastIpListInput
    CreateAnycastIpListOutput: CreateAnycastIpListOutput
    CreateCachePolicyInput: CreateCachePolicyInput
    CreateCachePolicyOutput: CreateCachePolicyOutput
    CreateCloudFrontOriginAccessIdentityInput: CreateCloudFrontOriginAccessIdentityInput
    CreateCloudFrontOriginAccessIdentityOutput: CreateCloudFrontOriginAccessIdentityOutput
    CreateConnectionFunctionInput: CreateConnectionFunctionInput
    CreateConnectionFunctionOutput: CreateConnectionFunctionOutput
    CreateConnectionGroupInput: CreateConnectionGroupInput
    CreateConnectionGroupOutput: CreateConnectionGroupOutput
    CreateContinuousDeploymentPolicyInput: CreateContinuousDeploymentPolicyInput
    CreateContinuousDeploymentPolicyOutput: CreateContinuousDeploymentPolicyOutput
    CreateDistributionInput: CreateDistributionInput
    CreateDistributionOutput: CreateDistributionOutput
    CreateDistributionTenantInput: CreateDistributionTenantInput
    CreateDistributionTenantOutput: CreateDistributionTenantOutput
    CreateDistributionWithTagsInput: CreateDistributionWithTagsInput
    CreateDistributionWithTagsOutput: CreateDistributionWithTagsOutput
    CreateFieldLevelEncryptionConfigInput: CreateFieldLevelEncryptionConfigInput
    CreateFieldLevelEncryptionConfigOutput: CreateFieldLevelEncryptionConfigOutput
    CreateFieldLevelEncryptionProfileInput: CreateFieldLevelEncryptionProfileInput
    CreateFieldLevelEncryptionProfileOutput: CreateFieldLevelEncryptionProfileOutput
    CreateFunctionInput: CreateFunctionInput
    CreateFunctionOutput: CreateFunctionOutput
    CreateInvalidationInput: CreateInvalidationInput
    CreateInvalidationOutput: CreateInvalidationOutput
    CreateInvalidationForDistributionTenantInput: CreateInvalidationForDistributionTenantInput
    CreateInvalidationForDistributionTenantOutput: CreateInvalidationForDistributionTenantOutput
    CreateKeyGroupInput: CreateKeyGroupInput
    CreateKeyGroupOutput: CreateKeyGroupOutput
    CreateKeyValueStoreInput: CreateKeyValueStoreInput
    CreateKeyValueStoreOutput: CreateKeyValueStoreOutput
    CreateMonitoringSubscriptionInput: CreateMonitoringSubscriptionInput
    CreateMonitoringSubscriptionOutput: CreateMonitoringSubscriptionOutput
    CreateOriginAccessControlInput: CreateOriginAccessControlInput
    CreateOriginAccessControlOutput: CreateOriginAccessControlOutput
    CreateOriginRequestPolicyInput: CreateOriginRequestPolicyInput
    CreateOriginRequestPolicyOutput: CreateOriginRequestPolicyOutput
    CreatePublicKeyInput: CreatePublicKeyInput
    CreatePublicKeyOutput: CreatePublicKeyOutput
    CreateRealtimeLogConfigInput: CreateRealtimeLogConfigInput
    CreateRealtimeLogConfigOutput: CreateRealtimeLogConfigOutput
    CreateResponseHeadersPolicyInput: CreateResponseHeadersPolicyInput
    CreateResponseHeadersPolicyOutput: CreateResponseHeadersPolicyOutput
    CreateStreamingDistributionInput: CreateStreamingDistributionInput
    CreateStreamingDistributionOutput: CreateStreamingDistributionOutput
    CreateStreamingDistributionWithTagsInput: CreateStreamingDistributionWithTagsInput
    CreateStreamingDistributionWithTagsOutput: CreateStreamingDistributionWithTagsOutput
    CreateTrustStoreInput: CreateTrustStoreInput
    CreateTrustStoreOutput: CreateTrustStoreOutput
    CreateVpcOriginInput: CreateVpcOriginInput
    CreateVpcOriginOutput: CreateVpcOriginOutput
    DeleteAnycastIpListInput: DeleteAnycastIpListInput
    DeleteAnycastIpListOutput: DeleteAnycastIpListOutput
    DeleteCachePolicyInput: DeleteCachePolicyInput
    DeleteCachePolicyOutput: DeleteCachePolicyOutput
    DeleteCloudFrontOriginAccessIdentityInput: DeleteCloudFrontOriginAccessIdentityInput
    DeleteCloudFrontOriginAccessIdentityOutput: DeleteCloudFrontOriginAccessIdentityOutput
    DeleteConnectionFunctionInput: DeleteConnectionFunctionInput
    DeleteConnectionFunctionOutput: DeleteConnectionFunctionOutput
    DeleteConnectionGroupInput: DeleteConnectionGroupInput
    DeleteConnectionGroupOutput: DeleteConnectionGroupOutput
    DeleteContinuousDeploymentPolicyInput: DeleteContinuousDeploymentPolicyInput
    DeleteContinuousDeploymentPolicyOutput: DeleteContinuousDeploymentPolicyOutput
    DeleteDistributionInput: DeleteDistributionInput
    DeleteDistributionOutput: DeleteDistributionOutput
    DeleteDistributionTenantInput: DeleteDistributionTenantInput
    DeleteDistributionTenantOutput: DeleteDistributionTenantOutput
    DeleteFieldLevelEncryptionConfigInput: DeleteFieldLevelEncryptionConfigInput
    DeleteFieldLevelEncryptionConfigOutput: DeleteFieldLevelEncryptionConfigOutput
    DeleteFieldLevelEncryptionProfileInput: DeleteFieldLevelEncryptionProfileInput
    DeleteFieldLevelEncryptionProfileOutput: DeleteFieldLevelEncryptionProfileOutput
    DeleteFunctionInput: DeleteFunctionInput
    DeleteFunctionOutput: DeleteFunctionOutput
    DeleteKeyGroupInput: DeleteKeyGroupInput
    DeleteKeyGroupOutput: DeleteKeyGroupOutput
    DeleteKeyValueStoreInput: DeleteKeyValueStoreInput
    DeleteKeyValueStoreOutput: DeleteKeyValueStoreOutput
    DeleteMonitoringSubscriptionInput: DeleteMonitoringSubscriptionInput
    DeleteMonitoringSubscriptionOutput: DeleteMonitoringSubscriptionOutput
    DeleteOriginAccessControlInput: DeleteOriginAccessControlInput
    DeleteOriginAccessControlOutput: DeleteOriginAccessControlOutput
    DeleteOriginRequestPolicyInput: DeleteOriginRequestPolicyInput
    DeleteOriginRequestPolicyOutput: DeleteOriginRequestPolicyOutput
    DeletePublicKeyInput: DeletePublicKeyInput
    DeletePublicKeyOutput: DeletePublicKeyOutput
    DeleteRealtimeLogConfigInput: DeleteRealtimeLogConfigInput
    DeleteRealtimeLogConfigOutput: DeleteRealtimeLogConfigOutput
    DeleteResourcePolicyInput: DeleteResourcePolicyInput
    DeleteResourcePolicyOutput: DeleteResourcePolicyOutput
    DeleteResponseHeadersPolicyInput: DeleteResponseHeadersPolicyInput
    DeleteResponseHeadersPolicyOutput: DeleteResponseHeadersPolicyOutput
    DeleteStreamingDistributionInput: DeleteStreamingDistributionInput
    DeleteStreamingDistributionOutput: DeleteStreamingDistributionOutput
    DeleteTrustStoreInput: DeleteTrustStoreInput
    DeleteTrustStoreOutput: DeleteTrustStoreOutput
    DeleteVpcOriginInput: DeleteVpcOriginInput
    DeleteVpcOriginOutput: DeleteVpcOriginOutput
    DescribeConnectionFunctionInput: DescribeConnectionFunctionInput
    DescribeConnectionFunctionOutput: DescribeConnectionFunctionOutput
    DescribeFunctionInput: DescribeFunctionInput
    DescribeFunctionOutput: DescribeFunctionOutput
    DescribeKeyValueStoreInput: DescribeKeyValueStoreInput
    DescribeKeyValueStoreOutput: DescribeKeyValueStoreOutput
    DisassociateDistributionTenantWebACLInput: DisassociateDistributionTenantWebACLInput
    DisassociateDistributionTenantWebACLOutput: DisassociateDistributionTenantWebACLOutput
    DisassociateDistributionWebACLInput: DisassociateDistributionWebACLInput
    DisassociateDistributionWebACLOutput: DisassociateDistributionWebACLOutput
    GetAnycastIpListInput: GetAnycastIpListInput
    GetAnycastIpListOutput: GetAnycastIpListOutput
    GetCachePolicyInput: GetCachePolicyInput
    GetCachePolicyOutput: GetCachePolicyOutput
    GetCachePolicyConfigInput: GetCachePolicyConfigInput
    GetCachePolicyConfigOutput: GetCachePolicyConfigOutput
    GetCloudFrontOriginAccessIdentityInput: GetCloudFrontOriginAccessIdentityInput
    GetCloudFrontOriginAccessIdentityOutput: GetCloudFrontOriginAccessIdentityOutput
    GetCloudFrontOriginAccessIdentityConfigInput: GetCloudFrontOriginAccessIdentityConfigInput
    GetCloudFrontOriginAccessIdentityConfigOutput: GetCloudFrontOriginAccessIdentityConfigOutput
    GetConnectionFunctionInput: GetConnectionFunctionInput
    GetConnectionFunctionOutput: GetConnectionFunctionOutput
    GetConnectionGroupInput: GetConnectionGroupInput
    GetConnectionGroupOutput: GetConnectionGroupOutput
    GetConnectionGroupByRoutingEndpointInput: GetConnectionGroupByRoutingEndpointInput
    GetConnectionGroupByRoutingEndpointOutput: GetConnectionGroupByRoutingEndpointOutput
    GetContinuousDeploymentPolicyInput: GetContinuousDeploymentPolicyInput
    GetContinuousDeploymentPolicyOutput: GetContinuousDeploymentPolicyOutput
    GetContinuousDeploymentPolicyConfigInput: GetContinuousDeploymentPolicyConfigInput
    GetContinuousDeploymentPolicyConfigOutput: GetContinuousDeploymentPolicyConfigOutput
    GetDistributionInput: GetDistributionInput
    GetDistributionOutput: GetDistributionOutput
    GetDistributionConfigInput: GetDistributionConfigInput
    GetDistributionConfigOutput: GetDistributionConfigOutput
    GetDistributionTenantInput: GetDistributionTenantInput
    GetDistributionTenantOutput: GetDistributionTenantOutput
    GetDistributionTenantByDomainInput: GetDistributionTenantByDomainInput
    GetDistributionTenantByDomainOutput: GetDistributionTenantByDomainOutput
    GetFieldLevelEncryptionInput: GetFieldLevelEncryptionInput
    GetFieldLevelEncryptionOutput: GetFieldLevelEncryptionOutput
    GetFieldLevelEncryptionConfigInput: GetFieldLevelEncryptionConfigInput
    GetFieldLevelEncryptionConfigOutput: GetFieldLevelEncryptionConfigOutput
    GetFieldLevelEncryptionProfileInput: GetFieldLevelEncryptionProfileInput
    GetFieldLevelEncryptionProfileOutput: GetFieldLevelEncryptionProfileOutput
    GetFieldLevelEncryptionProfileConfigInput: GetFieldLevelEncryptionProfileConfigInput
    GetFieldLevelEncryptionProfileConfigOutput: GetFieldLevelEncryptionProfileConfigOutput
    GetFunctionInput: GetFunctionInput
    GetFunctionOutput: GetFunctionOutput
    GetInvalidationInput: GetInvalidationInput
    GetInvalidationOutput: GetInvalidationOutput
    GetInvalidationForDistributionTenantInput: GetInvalidationForDistributionTenantInput
    GetInvalidationForDistributionTenantOutput: GetInvalidationForDistributionTenantOutput
    GetKeyGroupInput: GetKeyGroupInput
    GetKeyGroupOutput: GetKeyGroupOutput
    GetKeyGroupConfigInput: GetKeyGroupConfigInput
    GetKeyGroupConfigOutput: GetKeyGroupConfigOutput
    GetManagedCertificateDetailsInput: GetManagedCertificateDetailsInput
    GetManagedCertificateDetailsOutput: GetManagedCertificateDetailsOutput
    GetMonitoringSubscriptionInput: GetMonitoringSubscriptionInput
    GetMonitoringSubscriptionOutput: GetMonitoringSubscriptionOutput
    GetOriginAccessControlInput: GetOriginAccessControlInput
    GetOriginAccessControlOutput: GetOriginAccessControlOutput
    GetOriginAccessControlConfigInput: GetOriginAccessControlConfigInput
    GetOriginAccessControlConfigOutput: GetOriginAccessControlConfigOutput
    GetOriginRequestPolicyInput: GetOriginRequestPolicyInput
    GetOriginRequestPolicyOutput: GetOriginRequestPolicyOutput
    GetOriginRequestPolicyConfigInput: GetOriginRequestPolicyConfigInput
    GetOriginRequestPolicyConfigOutput: GetOriginRequestPolicyConfigOutput
    GetPublicKeyInput: GetPublicKeyInput
    GetPublicKeyOutput: GetPublicKeyOutput
    GetPublicKeyConfigInput: GetPublicKeyConfigInput
    GetPublicKeyConfigOutput: GetPublicKeyConfigOutput
    GetRealtimeLogConfigInput: GetRealtimeLogConfigInput
    GetRealtimeLogConfigOutput: GetRealtimeLogConfigOutput
    GetResourcePolicyInput: GetResourcePolicyInput
    GetResourcePolicyOutput: GetResourcePolicyOutput
    GetResponseHeadersPolicyInput: GetResponseHeadersPolicyInput
    GetResponseHeadersPolicyOutput: GetResponseHeadersPolicyOutput
    GetResponseHeadersPolicyConfigInput: GetResponseHeadersPolicyConfigInput
    GetResponseHeadersPolicyConfigOutput: GetResponseHeadersPolicyConfigOutput
    GetStreamingDistributionInput: GetStreamingDistributionInput
    GetStreamingDistributionOutput: GetStreamingDistributionOutput
    GetStreamingDistributionConfigInput: GetStreamingDistributionConfigInput
    GetStreamingDistributionConfigOutput: GetStreamingDistributionConfigOutput
    GetTrustStoreInput: GetTrustStoreInput
    GetTrustStoreOutput: GetTrustStoreOutput
    GetVpcOriginInput: GetVpcOriginInput
    GetVpcOriginOutput: GetVpcOriginOutput
    ListAnycastIpListsInput: ListAnycastIpListsInput
    ListAnycastIpListsOutput: ListAnycastIpListsOutput
    ListCachePoliciesInput: ListCachePoliciesInput
    ListCachePoliciesOutput: ListCachePoliciesOutput
    ListCloudFrontOriginAccessIdentitiesInput: ListCloudFrontOriginAccessIdentitiesInput
    ListCloudFrontOriginAccessIdentitiesOutput: ListCloudFrontOriginAccessIdentitiesOutput
    ListConflictingAliasesInput: ListConflictingAliasesInput
    ListConflictingAliasesOutput: ListConflictingAliasesOutput
    ListConnectionFunctionsInput: ListConnectionFunctionsInput
    ListConnectionFunctionsOutput: ListConnectionFunctionsOutput
    ListConnectionGroupsInput: ListConnectionGroupsInput
    ListConnectionGroupsOutput: ListConnectionGroupsOutput
    ListContinuousDeploymentPoliciesInput: ListContinuousDeploymentPoliciesInput
    ListContinuousDeploymentPoliciesOutput: ListContinuousDeploymentPoliciesOutput
    ListDistributionsInput: ListDistributionsInput
    ListDistributionsOutput: ListDistributionsOutput
    ListDistributionsByAnycastIpListIdInput: ListDistributionsByAnycastIpListIdInput
    ListDistributionsByAnycastIpListIdOutput: ListDistributionsByAnycastIpListIdOutput
    ListDistributionsByCachePolicyIdInput: ListDistributionsByCachePolicyIdInput
    ListDistributionsByCachePolicyIdOutput: ListDistributionsByCachePolicyIdOutput
    ListDistributionsByConnectionFunctionInput: ListDistributionsByConnectionFunctionInput
    ListDistributionsByConnectionFunctionOutput: ListDistributionsByConnectionFunctionOutput
    ListDistributionsByConnectionModeInput: ListDistributionsByConnectionModeInput
    ListDistributionsByConnectionModeOutput: ListDistributionsByConnectionModeOutput
    ListDistributionsByKeyGroupInput: ListDistributionsByKeyGroupInput
    ListDistributionsByKeyGroupOutput: ListDistributionsByKeyGroupOutput
    ListDistributionsByOriginRequestPolicyIdInput: ListDistributionsByOriginRequestPolicyIdInput
    ListDistributionsByOriginRequestPolicyIdOutput: ListDistributionsByOriginRequestPolicyIdOutput
    ListDistributionsByOwnedResourceInput: ListDistributionsByOwnedResourceInput
    ListDistributionsByOwnedResourceOutput: ListDistributionsByOwnedResourceOutput
    ListDistributionsByRealtimeLogConfigInput: ListDistributionsByRealtimeLogConfigInput
    ListDistributionsByRealtimeLogConfigOutput: ListDistributionsByRealtimeLogConfigOutput
    ListDistributionsByResponseHeadersPolicyIdInput: ListDistributionsByResponseHeadersPolicyIdInput
    ListDistributionsByResponseHeadersPolicyIdOutput: ListDistributionsByResponseHeadersPolicyIdOutput
    ListDistributionsByTrustStoreInput: ListDistributionsByTrustStoreInput
    ListDistributionsByTrustStoreOutput: ListDistributionsByTrustStoreOutput
    ListDistributionsByVpcOriginIdInput: ListDistributionsByVpcOriginIdInput
    ListDistributionsByVpcOriginIdOutput: ListDistributionsByVpcOriginIdOutput
    ListDistributionsByWebACLIdInput: ListDistributionsByWebACLIdInput
    ListDistributionsByWebACLIdOutput: ListDistributionsByWebACLIdOutput
    ListDistributionTenantsInput: ListDistributionTenantsInput
    ListDistributionTenantsOutput: ListDistributionTenantsOutput
    ListDistributionTenantsByCustomizationInput: ListDistributionTenantsByCustomizationInput
    ListDistributionTenantsByCustomizationOutput: ListDistributionTenantsByCustomizationOutput
    ListDomainConflictsInput: ListDomainConflictsInput
    ListDomainConflictsOutput: ListDomainConflictsOutput
    ListFieldLevelEncryptionConfigsInput: ListFieldLevelEncryptionConfigsInput
    ListFieldLevelEncryptionConfigsOutput: ListFieldLevelEncryptionConfigsOutput
    ListFieldLevelEncryptionProfilesInput: ListFieldLevelEncryptionProfilesInput
    ListFieldLevelEncryptionProfilesOutput: ListFieldLevelEncryptionProfilesOutput
    ListFunctionsInput: ListFunctionsInput
    ListFunctionsOutput: ListFunctionsOutput
    ListInvalidationsInput: ListInvalidationsInput
    ListInvalidationsOutput: ListInvalidationsOutput
    ListInvalidationsForDistributionTenantInput: ListInvalidationsForDistributionTenantInput
    ListInvalidationsForDistributionTenantOutput: ListInvalidationsForDistributionTenantOutput
    ListKeyGroupsInput: ListKeyGroupsInput
    ListKeyGroupsOutput: ListKeyGroupsOutput
    ListKeyValueStoresInput: ListKeyValueStoresInput
    ListKeyValueStoresOutput: ListKeyValueStoresOutput
    ListOriginAccessControlsInput: ListOriginAccessControlsInput
    ListOriginAccessControlsOutput: ListOriginAccessControlsOutput
    ListOriginRequestPoliciesInput: ListOriginRequestPoliciesInput
    ListOriginRequestPoliciesOutput: ListOriginRequestPoliciesOutput
    ListPublicKeysInput: ListPublicKeysInput
    ListPublicKeysOutput: ListPublicKeysOutput
    ListRealtimeLogConfigsInput: ListRealtimeLogConfigsInput
    ListRealtimeLogConfigsOutput: ListRealtimeLogConfigsOutput
    ListResponseHeadersPoliciesInput: ListResponseHeadersPoliciesInput
    ListResponseHeadersPoliciesOutput: ListResponseHeadersPoliciesOutput
    ListStreamingDistributionsInput: ListStreamingDistributionsInput
    ListStreamingDistributionsOutput: ListStreamingDistributionsOutput
    ListTagsForResourceInput: ListTagsForResourceInput
    ListTagsForResourceOutput: ListTagsForResourceOutput
    ListTrustStoresInput: ListTrustStoresInput
    ListTrustStoresOutput: ListTrustStoresOutput
    ListVpcOriginsInput: ListVpcOriginsInput
    ListVpcOriginsOutput: ListVpcOriginsOutput
    PublishConnectionFunctionInput: PublishConnectionFunctionInput
    PublishConnectionFunctionOutput: PublishConnectionFunctionOutput
    PublishFunctionInput: PublishFunctionInput
    PublishFunctionOutput: PublishFunctionOutput
    PutResourcePolicyInput: PutResourcePolicyInput
    PutResourcePolicyOutput: PutResourcePolicyOutput
    TagResourceInput: TagResourceInput
    TagResourceOutput: TagResourceOutput
    TestConnectionFunctionInput: TestConnectionFunctionInput
    TestConnectionFunctionOutput: TestConnectionFunctionOutput
    TestFunctionInput: TestFunctionInput
    TestFunctionOutput: TestFunctionOutput
    UntagResourceInput: UntagResourceInput
    UntagResourceOutput: UntagResourceOutput
    UpdateAnycastIpListInput: UpdateAnycastIpListInput
    UpdateAnycastIpListOutput: UpdateAnycastIpListOutput
    UpdateCachePolicyInput: UpdateCachePolicyInput
    UpdateCachePolicyOutput: UpdateCachePolicyOutput
    UpdateCloudFrontOriginAccessIdentityInput: UpdateCloudFrontOriginAccessIdentityInput
    UpdateCloudFrontOriginAccessIdentityOutput: UpdateCloudFrontOriginAccessIdentityOutput
    UpdateConnectionFunctionInput: UpdateConnectionFunctionInput
    UpdateConnectionFunctionOutput: UpdateConnectionFunctionOutput
    UpdateConnectionGroupInput: UpdateConnectionGroupInput
    UpdateConnectionGroupOutput: UpdateConnectionGroupOutput
    UpdateContinuousDeploymentPolicyInput: UpdateContinuousDeploymentPolicyInput
    UpdateContinuousDeploymentPolicyOutput: UpdateContinuousDeploymentPolicyOutput
    UpdateDistributionInput: UpdateDistributionInput
    UpdateDistributionOutput: UpdateDistributionOutput
    UpdateDistributionTenantInput: UpdateDistributionTenantInput
    UpdateDistributionTenantOutput: UpdateDistributionTenantOutput
    UpdateDistributionWithStagingConfigInput: UpdateDistributionWithStagingConfigInput
    UpdateDistributionWithStagingConfigOutput: UpdateDistributionWithStagingConfigOutput
    UpdateDomainAssociationInput: UpdateDomainAssociationInput
    UpdateDomainAssociationOutput: UpdateDomainAssociationOutput
    UpdateFieldLevelEncryptionConfigInput: UpdateFieldLevelEncryptionConfigInput
    UpdateFieldLevelEncryptionConfigOutput: UpdateFieldLevelEncryptionConfigOutput
    UpdateFieldLevelEncryptionProfileInput: UpdateFieldLevelEncryptionProfileInput
    UpdateFieldLevelEncryptionProfileOutput: UpdateFieldLevelEncryptionProfileOutput
    UpdateFunctionInput: UpdateFunctionInput
    UpdateFunctionOutput: UpdateFunctionOutput
    UpdateKeyGroupInput: UpdateKeyGroupInput
    UpdateKeyGroupOutput: UpdateKeyGroupOutput
    UpdateKeyValueStoreInput: UpdateKeyValueStoreInput
    UpdateKeyValueStoreOutput: UpdateKeyValueStoreOutput
    UpdateOriginAccessControlInput: UpdateOriginAccessControlInput
    UpdateOriginAccessControlOutput: UpdateOriginAccessControlOutput
    UpdateOriginRequestPolicyInput: UpdateOriginRequestPolicyInput
    UpdateOriginRequestPolicyOutput: UpdateOriginRequestPolicyOutput
    UpdatePublicKeyInput: UpdatePublicKeyInput
    UpdatePublicKeyOutput: UpdatePublicKeyOutput
    UpdateRealtimeLogConfigInput: UpdateRealtimeLogConfigInput
    UpdateRealtimeLogConfigOutput: UpdateRealtimeLogConfigOutput
    UpdateResponseHeadersPolicyInput: UpdateResponseHeadersPolicyInput
    UpdateResponseHeadersPolicyOutput: UpdateResponseHeadersPolicyOutput
    UpdateStreamingDistributionInput: UpdateStreamingDistributionInput
    UpdateStreamingDistributionOutput: UpdateStreamingDistributionOutput
    UpdateTrustStoreInput: UpdateTrustStoreInput
    UpdateTrustStoreOutput: UpdateTrustStoreOutput
    UpdateVpcOriginInput: UpdateVpcOriginInput
    UpdateVpcOriginOutput: UpdateVpcOriginOutput
    VerifyDnsConfigurationInput: VerifyDnsConfigurationInput
    VerifyDnsConfigurationOutput: VerifyDnsConfigurationOutput
end

return M
