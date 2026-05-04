local record ActivateKeySigningKeyInput
    HostedZoneId: string
    Name: string
end

local record ActivateKeySigningKeyOutput
    ChangeInfo: ChangeInfo
end

local record AssociateVPCWithHostedZoneInput
    HostedZoneId: string
    VPC: VPC
    Comment: string
end

local record AssociateVPCWithHostedZoneOutput
    ChangeInfo: ChangeInfo
end

local record ChangeCidrCollectionInput
    Id: string
    CollectionVersion: number
    Changes: {CidrCollectionChange}
end

local record ChangeCidrCollectionOutput
    Id: string
end

local record ChangeResourceRecordSetsInput
    HostedZoneId: string
    ChangeBatch: ChangeBatch
end

local record ChangeResourceRecordSetsOutput
    ChangeInfo: ChangeInfo
end

local record ChangeTagsForResourceInput
    ResourceType: string
    ResourceId: string
    AddTags: {Tag}
    RemoveTagKeys: {string}
end

local record ChangeTagsForResourceOutput
end

local record CreateCidrCollectionInput
    Name: string
    CallerReference: string
end

local record CreateCidrCollectionOutput
    Collection: CidrCollection
    Location: string
end

local record CreateHealthCheckInput
    CallerReference: string
    HealthCheckConfig: HealthCheckConfig
end

local record CreateHealthCheckOutput
    HealthCheck: HealthCheck
    Location: string
end

local record CreateHostedZoneInput
    Name: string
    VPC: VPC
    CallerReference: string
    HostedZoneConfig: HostedZoneConfig
    DelegationSetId: string
end

local record CreateHostedZoneOutput
    HostedZone: HostedZone
    ChangeInfo: ChangeInfo
    DelegationSet: DelegationSet
    VPC: VPC
    Location: string
end

local record CreateKeySigningKeyInput
    CallerReference: string
    HostedZoneId: string
    KeyManagementServiceArn: string
    Name: string
    Status: string
end

local record CreateKeySigningKeyOutput
    ChangeInfo: ChangeInfo
    KeySigningKey: KeySigningKey
    Location: string
end

local record CreateQueryLoggingConfigInput
    HostedZoneId: string
    CloudWatchLogsLogGroupArn: string
end

local record CreateQueryLoggingConfigOutput
    QueryLoggingConfig: QueryLoggingConfig
    Location: string
end

local record CreateReusableDelegationSetInput
    CallerReference: string
    HostedZoneId: string
end

local record CreateReusableDelegationSetOutput
    DelegationSet: DelegationSet
    Location: string
end

local record CreateTrafficPolicyInput
    Name: string
    Document: string
    Comment: string
end

local record CreateTrafficPolicyOutput
    TrafficPolicy: TrafficPolicy
    Location: string
end

local record CreateTrafficPolicyInstanceInput
    HostedZoneId: string
    Name: string
    TTL: number
    TrafficPolicyId: string
    TrafficPolicyVersion: number
end

local record CreateTrafficPolicyInstanceOutput
    TrafficPolicyInstance: TrafficPolicyInstance
    Location: string
end

local record CreateTrafficPolicyVersionInput
    Id: string
    Document: string
    Comment: string
end

local record CreateTrafficPolicyVersionOutput
    TrafficPolicy: TrafficPolicy
    Location: string
end

local record CreateVPCAssociationAuthorizationInput
    HostedZoneId: string
    VPC: VPC
end

local record CreateVPCAssociationAuthorizationOutput
    HostedZoneId: string
    VPC: VPC
end

local record DeactivateKeySigningKeyInput
    HostedZoneId: string
    Name: string
end

local record DeactivateKeySigningKeyOutput
    ChangeInfo: ChangeInfo
end

local record DeleteCidrCollectionInput
    Id: string
end

local record DeleteCidrCollectionOutput
end

local record DeleteHealthCheckInput
    HealthCheckId: string
end

local record DeleteHealthCheckOutput
end

local record DeleteHostedZoneInput
    Id: string
end

local record DeleteHostedZoneOutput
    ChangeInfo: ChangeInfo
end

local record DeleteKeySigningKeyInput
    HostedZoneId: string
    Name: string
end

local record DeleteKeySigningKeyOutput
    ChangeInfo: ChangeInfo
end

local record DeleteQueryLoggingConfigInput
    Id: string
end

local record DeleteQueryLoggingConfigOutput
end

local record DeleteReusableDelegationSetInput
    Id: string
end

local record DeleteReusableDelegationSetOutput
end

local record DeleteTrafficPolicyInput
    Id: string
    Version: number
end

local record DeleteTrafficPolicyOutput
end

local record DeleteTrafficPolicyInstanceInput
    Id: string
end

local record DeleteTrafficPolicyInstanceOutput
end

local record DeleteVPCAssociationAuthorizationInput
    HostedZoneId: string
    VPC: VPC
end

local record DeleteVPCAssociationAuthorizationOutput
end

local record DisableHostedZoneDNSSECInput
    HostedZoneId: string
end

local record DisableHostedZoneDNSSECOutput
    ChangeInfo: ChangeInfo
end

local record DisassociateVPCFromHostedZoneInput
    HostedZoneId: string
    VPC: VPC
    Comment: string
end

local record DisassociateVPCFromHostedZoneOutput
    ChangeInfo: ChangeInfo
end

local record EnableHostedZoneDNSSECInput
    HostedZoneId: string
end

local record EnableHostedZoneDNSSECOutput
    ChangeInfo: ChangeInfo
end

local record GetAccountLimitInput
    Type: string
end

local record GetAccountLimitOutput
    Limit: AccountLimit
    Count: number
end

local record GetChangeInput
    Id: string
end

local record GetChangeOutput
    ChangeInfo: ChangeInfo
end

local record GetCheckerIpRangesInput
end

local record GetCheckerIpRangesOutput
    CheckerIpRanges: {string}
end

local record GetDNSSECInput
    HostedZoneId: string
end

local record GetDNSSECOutput
    Status: DNSSECStatus
    KeySigningKeys: {KeySigningKey}
end

local record GetGeoLocationInput
    ContinentCode: string
    CountryCode: string
    SubdivisionCode: string
end

local record GetGeoLocationOutput
    GeoLocationDetails: GeoLocationDetails
end

local record GetHealthCheckInput
    HealthCheckId: string
end

local record GetHealthCheckOutput
    HealthCheck: HealthCheck
end

local record GetHealthCheckCountInput
end

local record GetHealthCheckCountOutput
    HealthCheckCount: number
end

local record GetHealthCheckLastFailureReasonInput
    HealthCheckId: string
end

local record GetHealthCheckLastFailureReasonOutput
    HealthCheckObservations: {HealthCheckObservation}
end

local record GetHealthCheckStatusInput
    HealthCheckId: string
end

local record GetHealthCheckStatusOutput
    HealthCheckObservations: {HealthCheckObservation}
end

local record GetHostedZoneInput
    Id: string
end

local record GetHostedZoneOutput
    HostedZone: HostedZone
    DelegationSet: DelegationSet
    VPCs: {VPC}
end

local record GetHostedZoneCountInput
end

local record GetHostedZoneCountOutput
    HostedZoneCount: number
end

local record GetHostedZoneLimitInput
    Type: string
    HostedZoneId: string
end

local record GetHostedZoneLimitOutput
    Limit: HostedZoneLimit
    Count: number
end

local record GetQueryLoggingConfigInput
    Id: string
end

local record GetQueryLoggingConfigOutput
    QueryLoggingConfig: QueryLoggingConfig
end

local record GetReusableDelegationSetInput
    Id: string
end

local record GetReusableDelegationSetOutput
    DelegationSet: DelegationSet
end

local record GetReusableDelegationSetLimitInput
    Type: string
    DelegationSetId: string
end

local record GetReusableDelegationSetLimitOutput
    Limit: ReusableDelegationSetLimit
    Count: number
end

local record GetTrafficPolicyInput
    Id: string
    Version: number
end

local record GetTrafficPolicyOutput
    TrafficPolicy: TrafficPolicy
end

local record GetTrafficPolicyInstanceInput
    Id: string
end

local record GetTrafficPolicyInstanceOutput
    TrafficPolicyInstance: TrafficPolicyInstance
end

local record GetTrafficPolicyInstanceCountInput
end

local record GetTrafficPolicyInstanceCountOutput
    TrafficPolicyInstanceCount: number
end

local record ListCidrBlocksInput
    CollectionId: string
    LocationName: string
    NextToken: string
    MaxResults: number
end

local record ListCidrBlocksOutput
    NextToken: string
    CidrBlocks: {CidrBlockSummary}
end

local record ListCidrCollectionsInput
    NextToken: string
    MaxResults: number
end

local record ListCidrCollectionsOutput
    NextToken: string
    CidrCollections: {CollectionSummary}
end

local record ListCidrLocationsInput
    CollectionId: string
    NextToken: string
    MaxResults: number
end

local record ListCidrLocationsOutput
    NextToken: string
    CidrLocations: {LocationSummary}
end

local record ListGeoLocationsInput
    StartContinentCode: string
    StartCountryCode: string
    StartSubdivisionCode: string
    MaxItems: number
end

local record ListGeoLocationsOutput
    GeoLocationDetailsList: {GeoLocationDetails}
    IsTruncated: boolean
    NextContinentCode: string
    NextCountryCode: string
    NextSubdivisionCode: string
    MaxItems: number
end

local record ListHealthChecksInput
    Marker: string
    MaxItems: number
end

local record ListHealthChecksOutput
    HealthChecks: {HealthCheck}
    Marker: string
    IsTruncated: boolean
    NextMarker: string
    MaxItems: number
end

local record ListHostedZonesInput
    Marker: string
    MaxItems: number
    DelegationSetId: string
    HostedZoneType: string
end

local record ListHostedZonesOutput
    HostedZones: {HostedZone}
    Marker: string
    IsTruncated: boolean
    NextMarker: string
    MaxItems: number
end

local record ListHostedZonesByNameInput
    DNSName: string
    HostedZoneId: string
    MaxItems: number
end

local record ListHostedZonesByNameOutput
    HostedZones: {HostedZone}
    DNSName: string
    HostedZoneId: string
    IsTruncated: boolean
    NextDNSName: string
    NextHostedZoneId: string
    MaxItems: number
end

local record ListHostedZonesByVPCInput
    VPCId: string
    VPCRegion: string
    MaxItems: number
    NextToken: string
end

local record ListHostedZonesByVPCOutput
    HostedZoneSummaries: {HostedZoneSummary}
    MaxItems: number
    NextToken: string
end

local record ListQueryLoggingConfigsInput
    HostedZoneId: string
    NextToken: string
    MaxResults: number
end

local record ListQueryLoggingConfigsOutput
    QueryLoggingConfigs: {QueryLoggingConfig}
    NextToken: string
end

local record ListResourceRecordSetsInput
    HostedZoneId: string
    StartRecordName: string
    StartRecordType: string
    StartRecordIdentifier: string
    MaxItems: number
end

local record ListResourceRecordSetsOutput
    ResourceRecordSets: {ResourceRecordSet}
    IsTruncated: boolean
    NextRecordName: string
    NextRecordType: string
    NextRecordIdentifier: string
    MaxItems: number
end

local record ListReusableDelegationSetsInput
    Marker: string
    MaxItems: number
end

local record ListReusableDelegationSetsOutput
    DelegationSets: {DelegationSet}
    Marker: string
    IsTruncated: boolean
    NextMarker: string
    MaxItems: number
end

local record ListTagsForResourceInput
    ResourceType: string
    ResourceId: string
end

local record ListTagsForResourceOutput
    ResourceTagSet: ResourceTagSet
end

local record ListTagsForResourcesInput
    ResourceType: string
    ResourceIds: {string}
end

local record ListTagsForResourcesOutput
    ResourceTagSets: {ResourceTagSet}
end

local record ListTrafficPoliciesInput
    TrafficPolicyIdMarker: string
    MaxItems: number
end

local record ListTrafficPoliciesOutput
    TrafficPolicySummaries: {TrafficPolicySummary}
    IsTruncated: boolean
    TrafficPolicyIdMarker: string
    MaxItems: number
end

local record ListTrafficPolicyInstancesInput
    HostedZoneIdMarker: string
    TrafficPolicyInstanceNameMarker: string
    TrafficPolicyInstanceTypeMarker: string
    MaxItems: number
end

local record ListTrafficPolicyInstancesOutput
    TrafficPolicyInstances: {TrafficPolicyInstance}
    HostedZoneIdMarker: string
    TrafficPolicyInstanceNameMarker: string
    TrafficPolicyInstanceTypeMarker: string
    IsTruncated: boolean
    MaxItems: number
end

local record ListTrafficPolicyInstancesByHostedZoneInput
    HostedZoneId: string
    TrafficPolicyInstanceNameMarker: string
    TrafficPolicyInstanceTypeMarker: string
    MaxItems: number
end

local record ListTrafficPolicyInstancesByHostedZoneOutput
    TrafficPolicyInstances: {TrafficPolicyInstance}
    TrafficPolicyInstanceNameMarker: string
    TrafficPolicyInstanceTypeMarker: string
    IsTruncated: boolean
    MaxItems: number
end

local record ListTrafficPolicyInstancesByPolicyInput
    TrafficPolicyId: string
    TrafficPolicyVersion: number
    HostedZoneIdMarker: string
    TrafficPolicyInstanceNameMarker: string
    TrafficPolicyInstanceTypeMarker: string
    MaxItems: number
end

local record ListTrafficPolicyInstancesByPolicyOutput
    TrafficPolicyInstances: {TrafficPolicyInstance}
    HostedZoneIdMarker: string
    TrafficPolicyInstanceNameMarker: string
    TrafficPolicyInstanceTypeMarker: string
    IsTruncated: boolean
    MaxItems: number
end

local record ListTrafficPolicyVersionsInput
    Id: string
    TrafficPolicyVersionMarker: string
    MaxItems: number
end

local record ListTrafficPolicyVersionsOutput
    TrafficPolicies: {TrafficPolicy}
    IsTruncated: boolean
    TrafficPolicyVersionMarker: string
    MaxItems: number
end

local record ListVPCAssociationAuthorizationsInput
    HostedZoneId: string
    NextToken: string
    MaxResults: number
end

local record ListVPCAssociationAuthorizationsOutput
    HostedZoneId: string
    NextToken: string
    VPCs: {VPC}
end

local record TestDNSAnswerInput
    HostedZoneId: string
    RecordName: string
    RecordType: string
    ResolverIP: string
    EDNS0ClientSubnetIP: string
    EDNS0ClientSubnetMask: string
end

local record TestDNSAnswerOutput
    Nameserver: string
    RecordName: string
    RecordType: string
    RecordData: {string}
    ResponseCode: string
    Protocol: string
end

local record UpdateHealthCheckInput
    HealthCheckId: string
    HealthCheckVersion: number
    IPAddress: string
    Port: number
    ResourcePath: string
    FullyQualifiedDomainName: string
    SearchString: string
    FailureThreshold: number
    Inverted: boolean
    Disabled: boolean
    HealthThreshold: number
    ChildHealthChecks: {string}
    EnableSNI: boolean
    Regions: {string}
    AlarmIdentifier: AlarmIdentifier
    InsufficientDataHealthStatus: string
    ResetElements: {string}
end

local record UpdateHealthCheckOutput
    HealthCheck: HealthCheck
end

local record UpdateHostedZoneCommentInput
    Id: string
    Comment: string
end

local record UpdateHostedZoneCommentOutput
    HostedZone: HostedZone
end

local record UpdateHostedZoneFeaturesInput
    HostedZoneId: string
    EnableAcceleratedRecovery: boolean
end

local record UpdateHostedZoneFeaturesOutput
end

local record UpdateTrafficPolicyCommentInput
    Id: string
    Version: number
    Comment: string
end

local record UpdateTrafficPolicyCommentOutput
    TrafficPolicy: TrafficPolicy
end

local record UpdateTrafficPolicyInstanceInput
    Id: string
    TTL: number
    TrafficPolicyId: string
    TrafficPolicyVersion: number
end

local record UpdateTrafficPolicyInstanceOutput
    TrafficPolicyInstance: TrafficPolicyInstance
end

local record ConcurrentModification
    message: string
end

local record InvalidInput
    message: string
end

local record InvalidKeySigningKeyStatus
    message: string
end

local record InvalidKMSArn
    message: string
end

local record InvalidSigningStatus
    message: string
end

local record NoSuchKeySigningKey
    message: string
end

local record ConflictingDomainExists
    message: string
end

local record InvalidInput
    message: string
end

local record InvalidVPCId
    message: string
end

local record LimitsExceeded
    message: string
end

local record NoSuchHostedZone
    message: string
end

local record NotAuthorizedException
    message: string
end

local record PriorRequestNotComplete
    message: string
end

local record PublicZoneVPCAssociation
    message: string
end

local record CidrBlockInUseException
    Message: string
end

local record CidrCollectionVersionMismatchException
    Message: string
end

local record ConcurrentModification
    message: string
end

local record InvalidInput
    message: string
end

local record LimitsExceeded
    message: string
end

local record NoSuchCidrCollectionException
    Message: string
end

local record InvalidChangeBatch
    messages: {string}
    message: string
end

local record InvalidInput
    message: string
end

local record NoSuchHealthCheck
    message: string
end

local record NoSuchHostedZone
    message: string
end

local record PriorRequestNotComplete
    message: string
end

local record InvalidInput
    message: string
end

local record NoSuchHealthCheck
    message: string
end

local record NoSuchHostedZone
    message: string
end

local record PriorRequestNotComplete
    message: string
end

local record ThrottlingException
    message: string
end

local record CidrCollectionAlreadyExistsException
    Message: string
end

local record ConcurrentModification
    message: string
end

local record InvalidInput
    message: string
end

local record LimitsExceeded
    message: string
end

local record HealthCheckAlreadyExists
    message: string
end

local record InvalidInput
    message: string
end

local record TooManyHealthChecks
    message: string
end

local record ConflictingDomainExists
    message: string
end

local record DelegationSetNotAvailable
    message: string
end

local record DelegationSetNotReusable
    message: string
end

local record HostedZoneAlreadyExists
    message: string
end

local record InvalidDomainName
    message: string
end

local record InvalidInput
    message: string
end

local record InvalidVPCId
    message: string
end

local record NoSuchDelegationSet
    message: string
end

local record TooManyHostedZones
    message: string
end

local record ConcurrentModification
    message: string
end

local record InvalidArgument
    message: string
end

local record InvalidInput
    message: string
end

local record InvalidKeySigningKeyName
    message: string
end

local record InvalidKeySigningKeyStatus
    message: string
end

local record InvalidKMSArn
    message: string
end

local record InvalidSigningStatus
    message: string
end

local record KeySigningKeyAlreadyExists
    message: string
end

local record NoSuchHostedZone
    message: string
end

local record TooManyKeySigningKeys
    message: string
end

local record ConcurrentModification
    message: string
end

local record InsufficientCloudWatchLogsResourcePolicy
    message: string
end

local record InvalidInput
    message: string
end

local record NoSuchCloudWatchLogsLogGroup
    message: string
end

local record NoSuchHostedZone
    message: string
end

local record QueryLoggingConfigAlreadyExists
    message: string
end

local record DelegationSetAlreadyCreated
    message: string
end

local record DelegationSetAlreadyReusable
    message: string
end

local record DelegationSetNotAvailable
    message: string
end

local record HostedZoneNotFound
    message: string
end

local record InvalidArgument
    message: string
end

local record InvalidInput
    message: string
end

local record LimitsExceeded
    message: string
end

local record InvalidInput
    message: string
end

local record InvalidTrafficPolicyDocument
    message: string
end

local record TooManyTrafficPolicies
    message: string
end

local record TrafficPolicyAlreadyExists
    message: string
end

local record InvalidInput
    message: string
end

local record NoSuchHostedZone
    message: string
end

local record NoSuchTrafficPolicy
    message: string
end

local record TooManyTrafficPolicyInstances
    message: string
end

local record TrafficPolicyInstanceAlreadyExists
    message: string
end

local record ConcurrentModification
    message: string
end

local record InvalidInput
    message: string
end

local record InvalidTrafficPolicyDocument
    message: string
end

local record NoSuchTrafficPolicy
    message: string
end

local record TooManyTrafficPolicyVersionsForCurrentPolicy
    message: string
end

local record ConcurrentModification
    message: string
end

local record InvalidInput
    message: string
end

local record InvalidVPCId
    message: string
end

local record NoSuchHostedZone
    message: string
end

local record TooManyVPCAssociationAuthorizations
    message: string
end

local record ConcurrentModification
    message: string
end

local record InvalidInput
    message: string
end

local record InvalidKeySigningKeyStatus
    message: string
end

local record InvalidSigningStatus
    message: string
end

local record KeySigningKeyInParentDSRecord
    message: string
end

local record KeySigningKeyInUse
    message: string
end

local record NoSuchKeySigningKey
    message: string
end

local record CidrCollectionInUseException
    Message: string
end

local record ConcurrentModification
    message: string
end

local record InvalidInput
    message: string
end

local record NoSuchCidrCollectionException
    Message: string
end

local record HealthCheckInUse
    message: string
end

local record InvalidInput
    message: string
end

local record NoSuchHealthCheck
    message: string
end

local record HostedZoneNotEmpty
    message: string
end

local record InvalidDomainName
    message: string
end

local record InvalidInput
    message: string
end

local record NoSuchHostedZone
    message: string
end

local record PriorRequestNotComplete
    message: string
end

local record ConcurrentModification
    message: string
end

local record InvalidInput
    message: string
end

local record InvalidKeySigningKeyStatus
    message: string
end

local record InvalidKMSArn
    message: string
end

local record InvalidSigningStatus
    message: string
end

local record NoSuchKeySigningKey
    message: string
end

local record ConcurrentModification
    message: string
end

local record InvalidInput
    message: string
end

local record NoSuchQueryLoggingConfig
    message: string
end

local record DelegationSetInUse
    message: string
end

local record DelegationSetNotReusable
    message: string
end

local record InvalidInput
    message: string
end

local record NoSuchDelegationSet
    message: string
end

local record ConcurrentModification
    message: string
end

local record InvalidInput
    message: string
end

local record NoSuchTrafficPolicy
    message: string
end

local record TrafficPolicyInUse
    message: string
end

local record InvalidInput
    message: string
end

local record NoSuchTrafficPolicyInstance
    message: string
end

local record PriorRequestNotComplete
    message: string
end

local record ConcurrentModification
    message: string
end

local record InvalidInput
    message: string
end

local record InvalidVPCId
    message: string
end

local record NoSuchHostedZone
    message: string
end

local record VPCAssociationAuthorizationNotFound
    message: string
end

local record ConcurrentModification
    message: string
end

local record DNSSECNotFound
    message: string
end

local record InvalidArgument
    message: string
end

local record InvalidInput
    message: string
end

local record InvalidKeySigningKeyStatus
    message: string
end

local record InvalidKMSArn
    message: string
end

local record KeySigningKeyInParentDSRecord
    message: string
end

local record NoSuchHostedZone
    message: string
end

local record InvalidInput
    message: string
end

local record InvalidVPCId
    message: string
end

local record LastVPCAssociation
    message: string
end

local record NoSuchHostedZone
    message: string
end

local record VPCAssociationNotFound
    message: string
end

local record ConcurrentModification
    message: string
end

local record DNSSECNotFound
    message: string
end

local record HostedZonePartiallyDelegated
    message: string
end

local record InvalidArgument
    message: string
end

local record InvalidInput
    message: string
end

local record InvalidKeySigningKeyStatus
    message: string
end

local record InvalidKMSArn
    message: string
end

local record KeySigningKeyWithActiveStatusNotFound
    message: string
end

local record NoSuchHostedZone
    message: string
end

local record InvalidInput
    message: string
end

local record InvalidInput
    message: string
end

local record NoSuchChange
    message: string
end

local record InvalidArgument
    message: string
end

local record InvalidInput
    message: string
end

local record NoSuchHostedZone
    message: string
end

local record InvalidInput
    message: string
end

local record NoSuchGeoLocation
    message: string
end

local record IncompatibleVersion
    message: string
end

local record InvalidInput
    message: string
end

local record NoSuchHealthCheck
    message: string
end

local record InvalidInput
    message: string
end

local record NoSuchHealthCheck
    message: string
end

local record InvalidInput
    message: string
end

local record NoSuchHealthCheck
    message: string
end

local record InvalidInput
    message: string
end

local record NoSuchHostedZone
    message: string
end

local record InvalidInput
    message: string
end

local record HostedZoneNotPrivate
    message: string
end

local record InvalidInput
    message: string
end

local record NoSuchHostedZone
    message: string
end

local record InvalidInput
    message: string
end

local record NoSuchQueryLoggingConfig
    message: string
end

local record DelegationSetNotReusable
    message: string
end

local record InvalidInput
    message: string
end

local record NoSuchDelegationSet
    message: string
end

local record InvalidInput
    message: string
end

local record NoSuchDelegationSet
    message: string
end

local record InvalidInput
    message: string
end

local record NoSuchTrafficPolicy
    message: string
end

local record InvalidInput
    message: string
end

local record NoSuchTrafficPolicyInstance
    message: string
end

local record InvalidInput
    message: string
end

local record NoSuchCidrCollectionException
    Message: string
end

local record NoSuchCidrLocationException
    Message: string
end

local record InvalidInput
    message: string
end

local record InvalidInput
    message: string
end

local record NoSuchCidrCollectionException
    Message: string
end

local record InvalidInput
    message: string
end

local record IncompatibleVersion
    message: string
end

local record InvalidInput
    message: string
end

local record DelegationSetNotReusable
    message: string
end

local record InvalidInput
    message: string
end

local record NoSuchDelegationSet
    message: string
end

local record InvalidDomainName
    message: string
end

local record InvalidInput
    message: string
end

local record InvalidInput
    message: string
end

local record InvalidPaginationToken
    message: string
end

local record InvalidInput
    message: string
end

local record InvalidPaginationToken
    message: string
end

local record NoSuchHostedZone
    message: string
end

local record InvalidInput
    message: string
end

local record NoSuchHostedZone
    message: string
end

local record InvalidInput
    message: string
end

local record InvalidInput
    message: string
end

local record NoSuchHealthCheck
    message: string
end

local record NoSuchHostedZone
    message: string
end

local record PriorRequestNotComplete
    message: string
end

local record ThrottlingException
    message: string
end

local record InvalidInput
    message: string
end

local record NoSuchHealthCheck
    message: string
end

local record NoSuchHostedZone
    message: string
end

local record PriorRequestNotComplete
    message: string
end

local record ThrottlingException
    message: string
end

local record InvalidInput
    message: string
end

local record InvalidInput
    message: string
end

local record NoSuchTrafficPolicyInstance
    message: string
end

local record InvalidInput
    message: string
end

local record NoSuchHostedZone
    message: string
end

local record NoSuchTrafficPolicyInstance
    message: string
end

local record InvalidInput
    message: string
end

local record NoSuchTrafficPolicy
    message: string
end

local record NoSuchTrafficPolicyInstance
    message: string
end

local record InvalidInput
    message: string
end

local record NoSuchTrafficPolicy
    message: string
end

local record InvalidInput
    message: string
end

local record InvalidPaginationToken
    message: string
end

local record NoSuchHostedZone
    message: string
end

local record InvalidInput
    message: string
end

local record NoSuchHostedZone
    message: string
end

local record HealthCheckVersionMismatch
    message: string
end

local record InvalidInput
    message: string
end

local record NoSuchHealthCheck
    message: string
end

local record InvalidInput
    message: string
end

local record NoSuchHostedZone
    message: string
end

local record PriorRequestNotComplete
    message: string
end

local record InvalidInput
    message: string
end

local record LimitsExceeded
    message: string
end

local record NoSuchHostedZone
    message: string
end

local record PriorRequestNotComplete
    message: string
end

local record ConcurrentModification
    message: string
end

local record InvalidInput
    message: string
end

local record NoSuchTrafficPolicy
    message: string
end

local record ConflictingTypes
    message: string
end

local record InvalidInput
    message: string
end

local record NoSuchTrafficPolicy
    message: string
end

local record NoSuchTrafficPolicyInstance
    message: string
end

local record PriorRequestNotComplete
    message: string
end

local type AccountLimitType = "MAX_HEALTH_CHECKS_BY_OWNER" | "MAX_HOSTED_ZONES_BY_OWNER" | "MAX_TRAFFIC_POLICY_INSTANCES_BY_OWNER" | "MAX_REUSABLE_DELEGATION_SETS_BY_OWNER" | "MAX_TRAFFIC_POLICIES_BY_OWNER"

local type ReusableDelegationSetLimitType = "MAX_ZONES_BY_REUSABLE_DELEGATION_SET"

local type TagResourceType = "healthcheck" | "hostedzone"

local type InsufficientDataHealthStatus = "Healthy" | "Unhealthy" | "LastKnownStatus"

local type VPCRegion = "us-east-1" | "us-east-2" | "us-west-1" | "us-west-2" | "eu-west-1" | "eu-west-2" | "eu-west-3" | "eu-central-1" | "eu-central-2" | "ap-east-1" | "me-south-1" | "us-gov-west-1" | "us-gov-east-1" | "us-iso-east-1" | "us-iso-west-1" | "us-isob-east-1" | "me-central-1" | "ap-southeast-1" | "ap-southeast-2" | "ap-southeast-3" | "ap-south-1" | "ap-south-2" | "ap-northeast-1" | "ap-northeast-2" | "ap-northeast-3" | "eu-north-1" | "sa-east-1" | "ca-central-1" | "cn-north-1" | "cn-northwest-1" | "af-south-1" | "eu-south-1" | "eu-south-2" | "ap-southeast-4" | "il-central-1" | "ca-west-1" | "ap-southeast-5" | "mx-central-1" | "us-isof-south-1" | "us-isof-east-1" | "ap-southeast-7" | "ap-east-2" | "eu-isoe-west-1" | "ap-southeast-6" | "us-isob-west-1" | "eusc-de-east-1"

local type HostedZoneType = "PrivateHostedZone"

local type HostedZoneLimitType = "MAX_RRSETS_BY_ZONE" | "MAX_VPCS_ASSOCIATED_BY_ZONE"

local type RRType = "SOA" | "A" | "TXT" | "NS" | "CNAME" | "MX" | "NAPTR" | "PTR" | "SRV" | "SPF" | "AAAA" | "CAA" | "DS" | "TLSA" | "SSHFP" | "SVCB" | "HTTPS"

local record M
    ActivateKeySigningKeyInput: ActivateKeySigningKeyInput
    ActivateKeySigningKeyOutput: ActivateKeySigningKeyOutput
    AssociateVPCWithHostedZoneInput: AssociateVPCWithHostedZoneInput
    AssociateVPCWithHostedZoneOutput: AssociateVPCWithHostedZoneOutput
    ChangeCidrCollectionInput: ChangeCidrCollectionInput
    ChangeCidrCollectionOutput: ChangeCidrCollectionOutput
    ChangeResourceRecordSetsInput: ChangeResourceRecordSetsInput
    ChangeResourceRecordSetsOutput: ChangeResourceRecordSetsOutput
    ChangeTagsForResourceInput: ChangeTagsForResourceInput
    ChangeTagsForResourceOutput: ChangeTagsForResourceOutput
    CreateCidrCollectionInput: CreateCidrCollectionInput
    CreateCidrCollectionOutput: CreateCidrCollectionOutput
    CreateHealthCheckInput: CreateHealthCheckInput
    CreateHealthCheckOutput: CreateHealthCheckOutput
    CreateHostedZoneInput: CreateHostedZoneInput
    CreateHostedZoneOutput: CreateHostedZoneOutput
    CreateKeySigningKeyInput: CreateKeySigningKeyInput
    CreateKeySigningKeyOutput: CreateKeySigningKeyOutput
    CreateQueryLoggingConfigInput: CreateQueryLoggingConfigInput
    CreateQueryLoggingConfigOutput: CreateQueryLoggingConfigOutput
    CreateReusableDelegationSetInput: CreateReusableDelegationSetInput
    CreateReusableDelegationSetOutput: CreateReusableDelegationSetOutput
    CreateTrafficPolicyInput: CreateTrafficPolicyInput
    CreateTrafficPolicyOutput: CreateTrafficPolicyOutput
    CreateTrafficPolicyInstanceInput: CreateTrafficPolicyInstanceInput
    CreateTrafficPolicyInstanceOutput: CreateTrafficPolicyInstanceOutput
    CreateTrafficPolicyVersionInput: CreateTrafficPolicyVersionInput
    CreateTrafficPolicyVersionOutput: CreateTrafficPolicyVersionOutput
    CreateVPCAssociationAuthorizationInput: CreateVPCAssociationAuthorizationInput
    CreateVPCAssociationAuthorizationOutput: CreateVPCAssociationAuthorizationOutput
    DeactivateKeySigningKeyInput: DeactivateKeySigningKeyInput
    DeactivateKeySigningKeyOutput: DeactivateKeySigningKeyOutput
    DeleteCidrCollectionInput: DeleteCidrCollectionInput
    DeleteCidrCollectionOutput: DeleteCidrCollectionOutput
    DeleteHealthCheckInput: DeleteHealthCheckInput
    DeleteHealthCheckOutput: DeleteHealthCheckOutput
    DeleteHostedZoneInput: DeleteHostedZoneInput
    DeleteHostedZoneOutput: DeleteHostedZoneOutput
    DeleteKeySigningKeyInput: DeleteKeySigningKeyInput
    DeleteKeySigningKeyOutput: DeleteKeySigningKeyOutput
    DeleteQueryLoggingConfigInput: DeleteQueryLoggingConfigInput
    DeleteQueryLoggingConfigOutput: DeleteQueryLoggingConfigOutput
    DeleteReusableDelegationSetInput: DeleteReusableDelegationSetInput
    DeleteReusableDelegationSetOutput: DeleteReusableDelegationSetOutput
    DeleteTrafficPolicyInput: DeleteTrafficPolicyInput
    DeleteTrafficPolicyOutput: DeleteTrafficPolicyOutput
    DeleteTrafficPolicyInstanceInput: DeleteTrafficPolicyInstanceInput
    DeleteTrafficPolicyInstanceOutput: DeleteTrafficPolicyInstanceOutput
    DeleteVPCAssociationAuthorizationInput: DeleteVPCAssociationAuthorizationInput
    DeleteVPCAssociationAuthorizationOutput: DeleteVPCAssociationAuthorizationOutput
    DisableHostedZoneDNSSECInput: DisableHostedZoneDNSSECInput
    DisableHostedZoneDNSSECOutput: DisableHostedZoneDNSSECOutput
    DisassociateVPCFromHostedZoneInput: DisassociateVPCFromHostedZoneInput
    DisassociateVPCFromHostedZoneOutput: DisassociateVPCFromHostedZoneOutput
    EnableHostedZoneDNSSECInput: EnableHostedZoneDNSSECInput
    EnableHostedZoneDNSSECOutput: EnableHostedZoneDNSSECOutput
    GetAccountLimitInput: GetAccountLimitInput
    GetAccountLimitOutput: GetAccountLimitOutput
    GetChangeInput: GetChangeInput
    GetChangeOutput: GetChangeOutput
    GetCheckerIpRangesInput: GetCheckerIpRangesInput
    GetCheckerIpRangesOutput: GetCheckerIpRangesOutput
    GetDNSSECInput: GetDNSSECInput
    GetDNSSECOutput: GetDNSSECOutput
    GetGeoLocationInput: GetGeoLocationInput
    GetGeoLocationOutput: GetGeoLocationOutput
    GetHealthCheckInput: GetHealthCheckInput
    GetHealthCheckOutput: GetHealthCheckOutput
    GetHealthCheckCountInput: GetHealthCheckCountInput
    GetHealthCheckCountOutput: GetHealthCheckCountOutput
    GetHealthCheckLastFailureReasonInput: GetHealthCheckLastFailureReasonInput
    GetHealthCheckLastFailureReasonOutput: GetHealthCheckLastFailureReasonOutput
    GetHealthCheckStatusInput: GetHealthCheckStatusInput
    GetHealthCheckStatusOutput: GetHealthCheckStatusOutput
    GetHostedZoneInput: GetHostedZoneInput
    GetHostedZoneOutput: GetHostedZoneOutput
    GetHostedZoneCountInput: GetHostedZoneCountInput
    GetHostedZoneCountOutput: GetHostedZoneCountOutput
    GetHostedZoneLimitInput: GetHostedZoneLimitInput
    GetHostedZoneLimitOutput: GetHostedZoneLimitOutput
    GetQueryLoggingConfigInput: GetQueryLoggingConfigInput
    GetQueryLoggingConfigOutput: GetQueryLoggingConfigOutput
    GetReusableDelegationSetInput: GetReusableDelegationSetInput
    GetReusableDelegationSetOutput: GetReusableDelegationSetOutput
    GetReusableDelegationSetLimitInput: GetReusableDelegationSetLimitInput
    GetReusableDelegationSetLimitOutput: GetReusableDelegationSetLimitOutput
    GetTrafficPolicyInput: GetTrafficPolicyInput
    GetTrafficPolicyOutput: GetTrafficPolicyOutput
    GetTrafficPolicyInstanceInput: GetTrafficPolicyInstanceInput
    GetTrafficPolicyInstanceOutput: GetTrafficPolicyInstanceOutput
    GetTrafficPolicyInstanceCountInput: GetTrafficPolicyInstanceCountInput
    GetTrafficPolicyInstanceCountOutput: GetTrafficPolicyInstanceCountOutput
    ListCidrBlocksInput: ListCidrBlocksInput
    ListCidrBlocksOutput: ListCidrBlocksOutput
    ListCidrCollectionsInput: ListCidrCollectionsInput
    ListCidrCollectionsOutput: ListCidrCollectionsOutput
    ListCidrLocationsInput: ListCidrLocationsInput
    ListCidrLocationsOutput: ListCidrLocationsOutput
    ListGeoLocationsInput: ListGeoLocationsInput
    ListGeoLocationsOutput: ListGeoLocationsOutput
    ListHealthChecksInput: ListHealthChecksInput
    ListHealthChecksOutput: ListHealthChecksOutput
    ListHostedZonesInput: ListHostedZonesInput
    ListHostedZonesOutput: ListHostedZonesOutput
    ListHostedZonesByNameInput: ListHostedZonesByNameInput
    ListHostedZonesByNameOutput: ListHostedZonesByNameOutput
    ListHostedZonesByVPCInput: ListHostedZonesByVPCInput
    ListHostedZonesByVPCOutput: ListHostedZonesByVPCOutput
    ListQueryLoggingConfigsInput: ListQueryLoggingConfigsInput
    ListQueryLoggingConfigsOutput: ListQueryLoggingConfigsOutput
    ListResourceRecordSetsInput: ListResourceRecordSetsInput
    ListResourceRecordSetsOutput: ListResourceRecordSetsOutput
    ListReusableDelegationSetsInput: ListReusableDelegationSetsInput
    ListReusableDelegationSetsOutput: ListReusableDelegationSetsOutput
    ListTagsForResourceInput: ListTagsForResourceInput
    ListTagsForResourceOutput: ListTagsForResourceOutput
    ListTagsForResourcesInput: ListTagsForResourcesInput
    ListTagsForResourcesOutput: ListTagsForResourcesOutput
    ListTrafficPoliciesInput: ListTrafficPoliciesInput
    ListTrafficPoliciesOutput: ListTrafficPoliciesOutput
    ListTrafficPolicyInstancesInput: ListTrafficPolicyInstancesInput
    ListTrafficPolicyInstancesOutput: ListTrafficPolicyInstancesOutput
    ListTrafficPolicyInstancesByHostedZoneInput: ListTrafficPolicyInstancesByHostedZoneInput
    ListTrafficPolicyInstancesByHostedZoneOutput: ListTrafficPolicyInstancesByHostedZoneOutput
    ListTrafficPolicyInstancesByPolicyInput: ListTrafficPolicyInstancesByPolicyInput
    ListTrafficPolicyInstancesByPolicyOutput: ListTrafficPolicyInstancesByPolicyOutput
    ListTrafficPolicyVersionsInput: ListTrafficPolicyVersionsInput
    ListTrafficPolicyVersionsOutput: ListTrafficPolicyVersionsOutput
    ListVPCAssociationAuthorizationsInput: ListVPCAssociationAuthorizationsInput
    ListVPCAssociationAuthorizationsOutput: ListVPCAssociationAuthorizationsOutput
    TestDNSAnswerInput: TestDNSAnswerInput
    TestDNSAnswerOutput: TestDNSAnswerOutput
    UpdateHealthCheckInput: UpdateHealthCheckInput
    UpdateHealthCheckOutput: UpdateHealthCheckOutput
    UpdateHostedZoneCommentInput: UpdateHostedZoneCommentInput
    UpdateHostedZoneCommentOutput: UpdateHostedZoneCommentOutput
    UpdateHostedZoneFeaturesInput: UpdateHostedZoneFeaturesInput
    UpdateHostedZoneFeaturesOutput: UpdateHostedZoneFeaturesOutput
    UpdateTrafficPolicyCommentInput: UpdateTrafficPolicyCommentInput
    UpdateTrafficPolicyCommentOutput: UpdateTrafficPolicyCommentOutput
    UpdateTrafficPolicyInstanceInput: UpdateTrafficPolicyInstanceInput
    UpdateTrafficPolicyInstanceOutput: UpdateTrafficPolicyInstanceOutput
end

return M
