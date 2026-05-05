local record AllocateStaticIpInput
    staticIpName: string
end

local record AllocateStaticIpOutput
    operations: {Operation}
end

local record AttachCertificateToDistributionInput
    distributionName: string
    certificateName: string
end

local record AttachCertificateToDistributionOutput
    operation: Operation
end

local record AttachDiskInput
    diskName: string
    instanceName: string
    diskPath: string
    autoMounting: boolean
end

local record AttachDiskOutput
    operations: {Operation}
end

local record AttachInstancesToLoadBalancerInput
    loadBalancerName: string
    instanceNames: {string}
end

local record AttachInstancesToLoadBalancerOutput
    operations: {Operation}
end

local record AttachLoadBalancerTlsCertificateInput
    loadBalancerName: string
    certificateName: string
end

local record AttachLoadBalancerTlsCertificateOutput
    operations: {Operation}
end

local record AttachStaticIpInput
    staticIpName: string
    instanceName: string
end

local record AttachStaticIpOutput
    operations: {Operation}
end

local record CloseInstancePublicPortsInput
    portInfo: PortInfo
    instanceName: string
end

local record CloseInstancePublicPortsOutput
    operation: Operation
end

local record CopySnapshotInput
    sourceSnapshotName: string
    sourceResourceName: string
    restoreDate: string
    useLatestRestorableAutoSnapshot: boolean
    targetSnapshotName: string
    sourceRegion: string
end

local record CopySnapshotOutput
    operations: {Operation}
end

local record CreateBucketInput
    bucketName: string
    bundleId: string
    tags: {Tag}
    enableObjectVersioning: boolean
end

local record CreateBucketOutput
    bucket: Bucket
    operations: {Operation}
end

local record CreateBucketAccessKeyInput
    bucketName: string
end

local record CreateBucketAccessKeyOutput
    accessKey: AccessKey
    operations: {Operation}
end

local record CreateCertificateInput
    certificateName: string
    domainName: string
    subjectAlternativeNames: {string}
    tags: {Tag}
end

local record CreateCertificateOutput
    certificate: CertificateSummary
    operations: {Operation}
end

local record CreateCloudFormationStackInput
    instances: {InstanceEntry}
end

local record CreateCloudFormationStackOutput
    operations: {Operation}
end

local record CreateContactMethodInput
    protocol: string
    contactEndpoint: string
    tags: {Tag}
end

local record CreateContactMethodOutput
    operations: {Operation}
end

local record CreateContainerServiceInput
    serviceName: string
    power: string
    scale: number
    tags: {Tag}
    publicDomainNames: {string : {string}}
    deployment: ContainerServiceDeploymentRequest
    privateRegistryAccess: PrivateRegistryAccessRequest
end

local record CreateContainerServiceOutput
    containerService: ContainerService
end

local record CreateContainerServiceDeploymentInput
    serviceName: string
    containers: {string : Container}
    publicEndpoint: EndpointRequest
end

local record CreateContainerServiceDeploymentOutput
    containerService: ContainerService
end

local record CreateContainerServiceRegistryLoginInput
end

local record CreateContainerServiceRegistryLoginOutput
    registryLogin: ContainerServiceRegistryLogin
end

local record CreateDiskInput
    diskName: string
    availabilityZone: string
    sizeInGb: number
    tags: {Tag}
    addOns: {AddOnRequest}
end

local record CreateDiskOutput
    operations: {Operation}
end

local record CreateDiskFromSnapshotInput
    diskName: string
    diskSnapshotName: string
    availabilityZone: string
    sizeInGb: number
    tags: {Tag}
    addOns: {AddOnRequest}
    sourceDiskName: string
    restoreDate: string
    useLatestRestorableAutoSnapshot: boolean
end

local record CreateDiskFromSnapshotOutput
    operations: {Operation}
end

local record CreateDiskSnapshotInput
    diskName: string
    diskSnapshotName: string
    instanceName: string
    tags: {Tag}
end

local record CreateDiskSnapshotOutput
    operations: {Operation}
end

local record CreateDistributionInput
    distributionName: string
    origin: InputOrigin
    defaultCacheBehavior: CacheBehavior
    cacheBehaviorSettings: CacheSettings
    cacheBehaviors: {CacheBehaviorPerPath}
    bundleId: string
    ipAddressType: string
    tags: {Tag}
    certificateName: string
    viewerMinimumTlsProtocolVersion: string
end

local record CreateDistributionOutput
    distribution: LightsailDistribution
    operation: Operation
end

local record CreateDomainInput
    domainName: string
    tags: {Tag}
end

local record CreateDomainOutput
    operation: Operation
end

local record CreateDomainEntryInput
    domainName: string
    domainEntry: DomainEntry
end

local record CreateDomainEntryOutput
    operation: Operation
end

local record CreateGUISessionAccessDetailsInput
    resourceName: string
end

local record CreateGUISessionAccessDetailsOutput
    resourceName: string
    status: string
    percentageComplete: number
    failureReason: string
    sessions: {Session}
end

local record CreateInstancesInput
    instanceNames: {string}
    availabilityZone: string
    customImageName: string
    blueprintId: string
    bundleId: string
    userData: string
    keyPairName: string
    tags: {Tag}
    addOns: {AddOnRequest}
    ipAddressType: string
end

local record CreateInstancesOutput
    operations: {Operation}
end

local record CreateInstancesFromSnapshotInput
    instanceNames: {string}
    attachedDiskMapping: {string : {DiskMap}}
    availabilityZone: string
    instanceSnapshotName: string
    bundleId: string
    userData: string
    keyPairName: string
    tags: {Tag}
    addOns: {AddOnRequest}
    ipAddressType: string
    sourceInstanceName: string
    restoreDate: string
    useLatestRestorableAutoSnapshot: boolean
end

local record CreateInstancesFromSnapshotOutput
    operations: {Operation}
end

local record CreateInstanceSnapshotInput
    instanceSnapshotName: string
    instanceName: string
    tags: {Tag}
end

local record CreateInstanceSnapshotOutput
    operations: {Operation}
end

local record CreateKeyPairInput
    keyPairName: string
    tags: {Tag}
end

local record CreateKeyPairOutput
    keyPair: KeyPair
    publicKeyBase64: string
    privateKeyBase64: string
    operation: Operation
end

local record CreateLoadBalancerInput
    loadBalancerName: string
    instancePort: number
    healthCheckPath: string
    certificateName: string
    certificateDomainName: string
    certificateAlternativeNames: {string}
    tags: {Tag}
    ipAddressType: string
    tlsPolicyName: string
end

local record CreateLoadBalancerOutput
    operations: {Operation}
end

local record CreateLoadBalancerTlsCertificateInput
    loadBalancerName: string
    certificateName: string
    certificateDomainName: string
    certificateAlternativeNames: {string}
    tags: {Tag}
end

local record CreateLoadBalancerTlsCertificateOutput
    operations: {Operation}
end

local record CreateRelationalDatabaseInput
    relationalDatabaseName: string
    availabilityZone: string
    relationalDatabaseBlueprintId: string
    relationalDatabaseBundleId: string
    masterDatabaseName: string
    masterUsername: string
    masterUserPassword: string
    preferredBackupWindow: string
    preferredMaintenanceWindow: string
    publiclyAccessible: boolean
    tags: {Tag}
end

local record CreateRelationalDatabaseOutput
    operations: {Operation}
end

local record CreateRelationalDatabaseFromSnapshotInput
    relationalDatabaseName: string
    availabilityZone: string
    publiclyAccessible: boolean
    relationalDatabaseSnapshotName: string
    relationalDatabaseBundleId: string
    sourceRelationalDatabaseName: string
    restoreTime: number
    useLatestRestorableTime: boolean
    tags: {Tag}
end

local record CreateRelationalDatabaseFromSnapshotOutput
    operations: {Operation}
end

local record CreateRelationalDatabaseSnapshotInput
    relationalDatabaseName: string
    relationalDatabaseSnapshotName: string
    tags: {Tag}
end

local record CreateRelationalDatabaseSnapshotOutput
    operations: {Operation}
end

local record DeleteAlarmInput
    alarmName: string
end

local record DeleteAlarmOutput
    operations: {Operation}
end

local record DeleteAutoSnapshotInput
    resourceName: string
    date: string
end

local record DeleteAutoSnapshotOutput
    operations: {Operation}
end

local record DeleteBucketInput
    bucketName: string
    forceDelete: boolean
end

local record DeleteBucketOutput
    operations: {Operation}
end

local record DeleteBucketAccessKeyInput
    bucketName: string
    accessKeyId: string
end

local record DeleteBucketAccessKeyOutput
    operations: {Operation}
end

local record DeleteCertificateInput
    certificateName: string
end

local record DeleteCertificateOutput
    operations: {Operation}
end

local record DeleteContactMethodInput
    protocol: string
end

local record DeleteContactMethodOutput
    operations: {Operation}
end

local record DeleteContainerImageInput
    serviceName: string
    image: string
end

local record DeleteContainerImageOutput
end

local record DeleteContainerServiceInput
    serviceName: string
end

local record DeleteContainerServiceOutput
end

local record DeleteDiskInput
    diskName: string
    forceDeleteAddOns: boolean
end

local record DeleteDiskOutput
    operations: {Operation}
end

local record DeleteDiskSnapshotInput
    diskSnapshotName: string
end

local record DeleteDiskSnapshotOutput
    operations: {Operation}
end

local record DeleteDistributionInput
    distributionName: string
end

local record DeleteDistributionOutput
    operation: Operation
end

local record DeleteDomainInput
    domainName: string
end

local record DeleteDomainOutput
    operation: Operation
end

local record DeleteDomainEntryInput
    domainName: string
    domainEntry: DomainEntry
end

local record DeleteDomainEntryOutput
    operation: Operation
end

local record DeleteInstanceInput
    instanceName: string
    forceDeleteAddOns: boolean
end

local record DeleteInstanceOutput
    operations: {Operation}
end

local record DeleteInstanceSnapshotInput
    instanceSnapshotName: string
end

local record DeleteInstanceSnapshotOutput
    operations: {Operation}
end

local record DeleteKeyPairInput
    keyPairName: string
    expectedFingerprint: string
end

local record DeleteKeyPairOutput
    operation: Operation
end

local record DeleteKnownHostKeysInput
    instanceName: string
end

local record DeleteKnownHostKeysOutput
    operations: {Operation}
end

local record DeleteLoadBalancerInput
    loadBalancerName: string
end

local record DeleteLoadBalancerOutput
    operations: {Operation}
end

local record DeleteLoadBalancerTlsCertificateInput
    loadBalancerName: string
    certificateName: string
    force: boolean
end

local record DeleteLoadBalancerTlsCertificateOutput
    operations: {Operation}
end

local record DeleteRelationalDatabaseInput
    relationalDatabaseName: string
    skipFinalSnapshot: boolean
    finalRelationalDatabaseSnapshotName: string
end

local record DeleteRelationalDatabaseOutput
    operations: {Operation}
end

local record DeleteRelationalDatabaseSnapshotInput
    relationalDatabaseSnapshotName: string
end

local record DeleteRelationalDatabaseSnapshotOutput
    operations: {Operation}
end

local record DetachCertificateFromDistributionInput
    distributionName: string
end

local record DetachCertificateFromDistributionOutput
    operation: Operation
end

local record DetachDiskInput
    diskName: string
end

local record DetachDiskOutput
    operations: {Operation}
end

local record DetachInstancesFromLoadBalancerInput
    loadBalancerName: string
    instanceNames: {string}
end

local record DetachInstancesFromLoadBalancerOutput
    operations: {Operation}
end

local record DetachStaticIpInput
    staticIpName: string
end

local record DetachStaticIpOutput
    operations: {Operation}
end

local record DisableAddOnInput
    addOnType: string
    resourceName: string
end

local record DisableAddOnOutput
    operations: {Operation}
end

local record DownloadDefaultKeyPairInput
end

local record DownloadDefaultKeyPairOutput
    publicKeyBase64: string
    privateKeyBase64: string
    createdAt: number
end

local record EnableAddOnInput
    resourceName: string
    addOnRequest: AddOnRequest
end

local record EnableAddOnOutput
    operations: {Operation}
end

local record ExportSnapshotInput
    sourceSnapshotName: string
end

local record ExportSnapshotOutput
    operations: {Operation}
end

local record GetActiveNamesInput
    pageToken: string
end

local record GetActiveNamesOutput
    activeNames: {string}
    nextPageToken: string
end

local record GetAlarmsInput
    alarmName: string
    pageToken: string
    monitoredResourceName: string
end

local record GetAlarmsOutput
    alarms: {Alarm}
    nextPageToken: string
end

local record GetAutoSnapshotsInput
    resourceName: string
end

local record GetAutoSnapshotsOutput
    resourceName: string
    resourceType: string
    autoSnapshots: {AutoSnapshotDetails}
end

local record GetBlueprintsInput
    includeInactive: boolean
    pageToken: string
    appCategory: string
end

local record GetBlueprintsOutput
    blueprints: {Blueprint}
    nextPageToken: string
end

local record GetBucketAccessKeysInput
    bucketName: string
end

local record GetBucketAccessKeysOutput
    accessKeys: {AccessKey}
end

local record GetBucketBundlesInput
    includeInactive: boolean
end

local record GetBucketBundlesOutput
    bundles: {BucketBundle}
end

local record GetBucketMetricDataInput
    bucketName: string
    metricName: string
    startTime: number
    endTime: number
    period: number
    statistics: {string}
    unit: string
end

local record GetBucketMetricDataOutput
    metricName: string
    metricData: {MetricDatapoint}
end

local record GetBucketsInput
    bucketName: string
    pageToken: string
    includeConnectedResources: boolean
    includeCors: boolean
end

local record GetBucketsOutput
    buckets: {Bucket}
    nextPageToken: string
    accountLevelBpaSync: AccountLevelBpaSync
end

local record GetBundlesInput
    includeInactive: boolean
    pageToken: string
    appCategory: string
end

local record GetBundlesOutput
    bundles: {Bundle}
    nextPageToken: string
end

local record GetCertificatesInput
    certificateStatuses: {string}
    includeCertificateDetails: boolean
    certificateName: string
    pageToken: string
end

local record GetCertificatesOutput
    certificates: {CertificateSummary}
    nextPageToken: string
end

local record GetCloudFormationStackRecordsInput
    pageToken: string
end

local record GetCloudFormationStackRecordsOutput
    cloudFormationStackRecords: {CloudFormationStackRecord}
    nextPageToken: string
end

local record GetContactMethodsInput
    protocols: {string}
end

local record GetContactMethodsOutput
    contactMethods: {ContactMethod}
end

local record GetContainerAPIMetadataInput
end

local record GetContainerAPIMetadataOutput
    metadata: {{string : string}}
end

local record GetContainerImagesInput
    serviceName: string
end

local record GetContainerImagesOutput
    containerImages: {ContainerImage}
end

local record GetContainerLogInput
    serviceName: string
    containerName: string
    startTime: number
    endTime: number
    filterPattern: string
    pageToken: string
end

local record GetContainerLogOutput
    logEvents: {ContainerServiceLogEvent}
    nextPageToken: string
end

local record GetContainerServiceDeploymentsInput
    serviceName: string
end

local record GetContainerServiceDeploymentsOutput
    deployments: {ContainerServiceDeployment}
end

local record GetContainerServiceMetricDataInput
    serviceName: string
    metricName: string
    startTime: number
    endTime: number
    period: number
    statistics: {string}
end

local record GetContainerServiceMetricDataOutput
    metricName: string
    metricData: {MetricDatapoint}
end

local record GetContainerServicePowersInput
end

local record GetContainerServicePowersOutput
    powers: {ContainerServicePower}
end

local record GetContainerServicesInput
    serviceName: string
end

local record GetContainerServicesOutput
    containerServices: {ContainerService}
end

local record GetCostEstimateInput
    resourceName: string
    startTime: number
    endTime: number
end

local record GetCostEstimateOutput
    resourcesBudgetEstimate: {ResourceBudgetEstimate}
end

local record GetDiskInput
    diskName: string
end

local record GetDiskOutput
    disk: Disk
end

local record GetDisksInput
    pageToken: string
end

local record GetDisksOutput
    disks: {Disk}
    nextPageToken: string
end

local record GetDiskSnapshotInput
    diskSnapshotName: string
end

local record GetDiskSnapshotOutput
    diskSnapshot: DiskSnapshot
end

local record GetDiskSnapshotsInput
    pageToken: string
end

local record GetDiskSnapshotsOutput
    diskSnapshots: {DiskSnapshot}
    nextPageToken: string
end

local record GetDistributionBundlesInput
end

local record GetDistributionBundlesOutput
    bundles: {DistributionBundle}
end

local record GetDistributionLatestCacheResetInput
    distributionName: string
end

local record GetDistributionLatestCacheResetOutput
    status: string
    createTime: number
end

local record GetDistributionMetricDataInput
    distributionName: string
    metricName: string
    startTime: number
    endTime: number
    period: number
    unit: string
    statistics: {string}
end

local record GetDistributionMetricDataOutput
    metricName: string
    metricData: {MetricDatapoint}
end

local record GetDistributionsInput
    distributionName: string
    pageToken: string
end

local record GetDistributionsOutput
    distributions: {LightsailDistribution}
    nextPageToken: string
end

local record GetDomainInput
    domainName: string
end

local record GetDomainOutput
    domain: Domain
end

local record GetDomainsInput
    pageToken: string
end

local record GetDomainsOutput
    domains: {Domain}
    nextPageToken: string
end

local record GetExportSnapshotRecordsInput
    pageToken: string
end

local record GetExportSnapshotRecordsOutput
    exportSnapshotRecords: {ExportSnapshotRecord}
    nextPageToken: string
end

local record GetInstanceInput
    instanceName: string
end

local record GetInstanceOutput
    instance: Instance
end

local record GetInstanceAccessDetailsInput
    instanceName: string
    protocol: string
end

local record GetInstanceAccessDetailsOutput
    accessDetails: InstanceAccessDetails
end

local record GetInstanceMetricDataInput
    instanceName: string
    metricName: string
    period: number
    startTime: number
    endTime: number
    unit: string
    statistics: {string}
end

local record GetInstanceMetricDataOutput
    metricName: string
    metricData: {MetricDatapoint}
end

local record GetInstancePortStatesInput
    instanceName: string
end

local record GetInstancePortStatesOutput
    portStates: {InstancePortState}
end

local record GetInstancesInput
    pageToken: string
end

local record GetInstancesOutput
    instances: {Instance}
    nextPageToken: string
end

local record GetInstanceSnapshotInput
    instanceSnapshotName: string
end

local record GetInstanceSnapshotOutput
    instanceSnapshot: InstanceSnapshot
end

local record GetInstanceSnapshotsInput
    pageToken: string
end

local record GetInstanceSnapshotsOutput
    instanceSnapshots: {InstanceSnapshot}
    nextPageToken: string
end

local record GetInstanceStateInput
    instanceName: string
end

local record GetInstanceStateOutput
    state: InstanceState
end

local record GetKeyPairInput
    keyPairName: string
end

local record GetKeyPairOutput
    keyPair: KeyPair
end

local record GetKeyPairsInput
    pageToken: string
    includeDefaultKeyPair: boolean
end

local record GetKeyPairsOutput
    keyPairs: {KeyPair}
    nextPageToken: string
end

local record GetLoadBalancerInput
    loadBalancerName: string
end

local record GetLoadBalancerOutput
    loadBalancer: LoadBalancer
end

local record GetLoadBalancerMetricDataInput
    loadBalancerName: string
    metricName: string
    period: number
    startTime: number
    endTime: number
    unit: string
    statistics: {string}
end

local record GetLoadBalancerMetricDataOutput
    metricName: string
    metricData: {MetricDatapoint}
end

local record GetLoadBalancersInput
    pageToken: string
end

local record GetLoadBalancersOutput
    loadBalancers: {LoadBalancer}
    nextPageToken: string
end

local record GetLoadBalancerTlsCertificatesInput
    loadBalancerName: string
end

local record GetLoadBalancerTlsCertificatesOutput
    tlsCertificates: {LoadBalancerTlsCertificate}
end

local record GetLoadBalancerTlsPoliciesInput
    pageToken: string
end

local record GetLoadBalancerTlsPoliciesOutput
    tlsPolicies: {LoadBalancerTlsPolicy}
    nextPageToken: string
end

local record GetOperationInput
    operationId: string
end

local record GetOperationOutput
    operation: Operation
end

local record GetOperationsInput
    pageToken: string
end

local record GetOperationsOutput
    operations: {Operation}
    nextPageToken: string
end

local record GetOperationsForResourceInput
    resourceName: string
    pageToken: string
end

local record GetOperationsForResourceOutput
    operations: {Operation}
    nextPageCount: string
    nextPageToken: string
end

local record GetRegionsInput
    includeAvailabilityZones: boolean
    includeRelationalDatabaseAvailabilityZones: boolean
end

local record GetRegionsOutput
    regions: {Region}
end

local record GetRelationalDatabaseInput
    relationalDatabaseName: string
end

local record GetRelationalDatabaseOutput
    relationalDatabase: RelationalDatabase
end

local record GetRelationalDatabaseBlueprintsInput
    pageToken: string
end

local record GetRelationalDatabaseBlueprintsOutput
    blueprints: {RelationalDatabaseBlueprint}
    nextPageToken: string
end

local record GetRelationalDatabaseBundlesInput
    pageToken: string
    includeInactive: boolean
end

local record GetRelationalDatabaseBundlesOutput
    bundles: {RelationalDatabaseBundle}
    nextPageToken: string
end

local record GetRelationalDatabaseEventsInput
    relationalDatabaseName: string
    durationInMinutes: number
    pageToken: string
end

local record GetRelationalDatabaseEventsOutput
    relationalDatabaseEvents: {RelationalDatabaseEvent}
    nextPageToken: string
end

local record GetRelationalDatabaseLogEventsInput
    relationalDatabaseName: string
    logStreamName: string
    startTime: number
    endTime: number
    startFromHead: boolean
    pageToken: string
end

local record GetRelationalDatabaseLogEventsOutput
    resourceLogEvents: {LogEvent}
    nextBackwardToken: string
    nextForwardToken: string
end

local record GetRelationalDatabaseLogStreamsInput
    relationalDatabaseName: string
end

local record GetRelationalDatabaseLogStreamsOutput
    logStreams: {string}
end

local record GetRelationalDatabaseMasterUserPasswordInput
    relationalDatabaseName: string
    passwordVersion: string
end

local record GetRelationalDatabaseMasterUserPasswordOutput
    masterUserPassword: string
    createdAt: number
end

local record GetRelationalDatabaseMetricDataInput
    relationalDatabaseName: string
    metricName: string
    period: number
    startTime: number
    endTime: number
    unit: string
    statistics: {string}
end

local record GetRelationalDatabaseMetricDataOutput
    metricName: string
    metricData: {MetricDatapoint}
end

local record GetRelationalDatabaseParametersInput
    relationalDatabaseName: string
    pageToken: string
end

local record GetRelationalDatabaseParametersOutput
    parameters: {RelationalDatabaseParameter}
    nextPageToken: string
end

local record GetRelationalDatabasesInput
    pageToken: string
end

local record GetRelationalDatabasesOutput
    relationalDatabases: {RelationalDatabase}
    nextPageToken: string
end

local record GetRelationalDatabaseSnapshotInput
    relationalDatabaseSnapshotName: string
end

local record GetRelationalDatabaseSnapshotOutput
    relationalDatabaseSnapshot: RelationalDatabaseSnapshot
end

local record GetRelationalDatabaseSnapshotsInput
    pageToken: string
end

local record GetRelationalDatabaseSnapshotsOutput
    relationalDatabaseSnapshots: {RelationalDatabaseSnapshot}
    nextPageToken: string
end

local record GetSetupHistoryInput
    resourceName: string
    pageToken: string
end

local record GetSetupHistoryOutput
    setupHistory: {SetupHistory}
    nextPageToken: string
end

local record GetStaticIpInput
    staticIpName: string
end

local record GetStaticIpOutput
    staticIp: StaticIp
end

local record GetStaticIpsInput
    pageToken: string
end

local record GetStaticIpsOutput
    staticIps: {StaticIp}
    nextPageToken: string
end

local record ImportKeyPairInput
    keyPairName: string
    publicKeyBase64: string
end

local record ImportKeyPairOutput
    operation: Operation
end

local record IsVpcPeeredInput
end

local record IsVpcPeeredOutput
    isPeered: boolean
end

local record OpenInstancePublicPortsInput
    portInfo: PortInfo
    instanceName: string
end

local record OpenInstancePublicPortsOutput
    operation: Operation
end

local record PeerVpcInput
end

local record PeerVpcOutput
    operation: Operation
end

local record PutAlarmInput
    alarmName: string
    metricName: string
    monitoredResourceName: string
    comparisonOperator: string
    threshold: number
    evaluationPeriods: number
    datapointsToAlarm: number
    treatMissingData: string
    contactProtocols: {string}
    notificationTriggers: {string}
    notificationEnabled: boolean
    tags: {Tag}
end

local record PutAlarmOutput
    operations: {Operation}
end

local record PutInstancePublicPortsInput
    portInfos: {PortInfo}
    instanceName: string
end

local record PutInstancePublicPortsOutput
    operation: Operation
end

local record RebootInstanceInput
    instanceName: string
end

local record RebootInstanceOutput
    operations: {Operation}
end

local record RebootRelationalDatabaseInput
    relationalDatabaseName: string
end

local record RebootRelationalDatabaseOutput
    operations: {Operation}
end

local record RegisterContainerImageInput
    serviceName: string
    label: string
    digest: string
end

local record RegisterContainerImageOutput
    containerImage: ContainerImage
end

local record ReleaseStaticIpInput
    staticIpName: string
end

local record ReleaseStaticIpOutput
    operations: {Operation}
end

local record ResetDistributionCacheInput
    distributionName: string
end

local record ResetDistributionCacheOutput
    status: string
    createTime: number
    operation: Operation
end

local record SendContactMethodVerificationInput
    protocol: string
end

local record SendContactMethodVerificationOutput
    operations: {Operation}
end

local record SetIpAddressTypeInput
    resourceType: string
    resourceName: string
    ipAddressType: string
    acceptBundleUpdate: boolean
end

local record SetIpAddressTypeOutput
    operations: {Operation}
end

local record SetResourceAccessForBucketInput
    resourceName: string
    bucketName: string
    access: string
end

local record SetResourceAccessForBucketOutput
    operations: {Operation}
end

local record SetupInstanceHttpsInput
    instanceName: string
    emailAddress: string
    domainNames: {string}
    certificateProvider: string
end

local record SetupInstanceHttpsOutput
    operations: {Operation}
end

local record StartGUISessionInput
    resourceName: string
end

local record StartGUISessionOutput
    operations: {Operation}
end

local record StartInstanceInput
    instanceName: string
end

local record StartInstanceOutput
    operations: {Operation}
end

local record StartRelationalDatabaseInput
    relationalDatabaseName: string
end

local record StartRelationalDatabaseOutput
    operations: {Operation}
end

local record StopGUISessionInput
    resourceName: string
end

local record StopGUISessionOutput
    operations: {Operation}
end

local record StopInstanceInput
    instanceName: string
    force: boolean
end

local record StopInstanceOutput
    operations: {Operation}
end

local record StopRelationalDatabaseInput
    relationalDatabaseName: string
    relationalDatabaseSnapshotName: string
end

local record StopRelationalDatabaseOutput
    operations: {Operation}
end

local record TagResourceInput
    resourceName: string
    resourceArn: string
    tags: {Tag}
end

local record TagResourceOutput
    operations: {Operation}
end

local record TestAlarmInput
    alarmName: string
    state: string
end

local record TestAlarmOutput
    operations: {Operation}
end

local record UnpeerVpcInput
end

local record UnpeerVpcOutput
    operation: Operation
end

local record UntagResourceInput
    resourceName: string
    resourceArn: string
    tagKeys: {string}
end

local record UntagResourceOutput
    operations: {Operation}
end

local record UpdateBucketInput
    bucketName: string
    accessRules: AccessRules
    versioning: string
    readonlyAccessAccounts: {string}
    accessLogConfig: BucketAccessLogConfig
    cors: BucketCorsConfig
end

local record UpdateBucketOutput
    bucket: Bucket
    operations: {Operation}
end

local record UpdateBucketBundleInput
    bucketName: string
    bundleId: string
end

local record UpdateBucketBundleOutput
    operations: {Operation}
end

local record UpdateContainerServiceInput
    serviceName: string
    power: string
    scale: number
    isDisabled: boolean
    publicDomainNames: {string : {string}}
    privateRegistryAccess: PrivateRegistryAccessRequest
end

local record UpdateContainerServiceOutput
    containerService: ContainerService
end

local record UpdateDistributionInput
    distributionName: string
    origin: InputOrigin
    defaultCacheBehavior: CacheBehavior
    cacheBehaviorSettings: CacheSettings
    cacheBehaviors: {CacheBehaviorPerPath}
    isEnabled: boolean
    viewerMinimumTlsProtocolVersion: string
    certificateName: string
    useDefaultCertificate: boolean
end

local record UpdateDistributionOutput
    operation: Operation
end

local record UpdateDistributionBundleInput
    distributionName: string
    bundleId: string
end

local record UpdateDistributionBundleOutput
    operation: Operation
end

local record UpdateDomainEntryInput
    domainName: string
    domainEntry: DomainEntry
end

local record UpdateDomainEntryOutput
    operations: {Operation}
end

local record UpdateInstanceMetadataOptionsInput
    instanceName: string
    httpTokens: string
    httpEndpoint: string
    httpPutResponseHopLimit: number
    httpProtocolIpv6: string
end

local record UpdateInstanceMetadataOptionsOutput
    operation: Operation
end

local record UpdateLoadBalancerAttributeInput
    loadBalancerName: string
    attributeName: string
    attributeValue: string
end

local record UpdateLoadBalancerAttributeOutput
    operations: {Operation}
end

local record UpdateRelationalDatabaseInput
    relationalDatabaseName: string
    masterUserPassword: string
    rotateMasterUserPassword: boolean
    preferredBackupWindow: string
    preferredMaintenanceWindow: string
    enableBackupRetention: boolean
    disableBackupRetention: boolean
    publiclyAccessible: boolean
    applyImmediately: boolean
    caCertificateIdentifier: string
    relationalDatabaseBlueprintId: string
end

local record UpdateRelationalDatabaseOutput
    operations: {Operation}
end

local record UpdateRelationalDatabaseParametersInput
    relationalDatabaseName: string
    parameters: {RelationalDatabaseParameter}
end

local record UpdateRelationalDatabaseParametersOutput
    operations: {Operation}
end

local record AccessDeniedException
    code: string
    docs: string
    message: string
    tip: string
end

local record AccountSetupInProgressException
    code: string
    docs: string
    message: string
    tip: string
end

local record InvalidInputException
    code: string
    docs: string
    message: string
    tip: string
end

local record NotFoundException
    code: string
    docs: string
    message: string
    tip: string
end

local record OperationFailureException
    code: string
    docs: string
    message: string
    tip: string
end

local record RegionSetupInProgressException
    code: string
    docs: string
    message: string
    tip: string
end

local record ServiceException
    code: string
    docs: string
    message: string
    tip: string
end

local record UnauthenticatedException
    code: string
    docs: string
    message: string
    tip: string
end

local record AccessDeniedException
    code: string
    docs: string
    message: string
    tip: string
end

local record InvalidInputException
    code: string
    docs: string
    message: string
    tip: string
end

local record NotFoundException
    code: string
    docs: string
    message: string
    tip: string
end

local record OperationFailureException
    code: string
    docs: string
    message: string
    tip: string
end

local record ServiceException
    code: string
    docs: string
    message: string
    tip: string
end

local record UnauthenticatedException
    code: string
    docs: string
    message: string
    tip: string
end

local record AccessDeniedException
    code: string
    docs: string
    message: string
    tip: string
end

local record AccountSetupInProgressException
    code: string
    docs: string
    message: string
    tip: string
end

local record InvalidInputException
    code: string
    docs: string
    message: string
    tip: string
end

local record NotFoundException
    code: string
    docs: string
    message: string
    tip: string
end

local record OperationFailureException
    code: string
    docs: string
    message: string
    tip: string
end

local record RegionSetupInProgressException
    code: string
    docs: string
    message: string
    tip: string
end

local record ServiceException
    code: string
    docs: string
    message: string
    tip: string
end

local record UnauthenticatedException
    code: string
    docs: string
    message: string
    tip: string
end

local record AccessDeniedException
    code: string
    docs: string
    message: string
    tip: string
end

local record AccountSetupInProgressException
    code: string
    docs: string
    message: string
    tip: string
end

local record InvalidInputException
    code: string
    docs: string
    message: string
    tip: string
end

local record NotFoundException
    code: string
    docs: string
    message: string
    tip: string
end

local record OperationFailureException
    code: string
    docs: string
    message: string
    tip: string
end

local record RegionSetupInProgressException
    code: string
    docs: string
    message: string
    tip: string
end

local record ServiceException
    code: string
    docs: string
    message: string
    tip: string
end

local record UnauthenticatedException
    code: string
    docs: string
    message: string
    tip: string
end

local record AccessDeniedException
    code: string
    docs: string
    message: string
    tip: string
end

local record AccountSetupInProgressException
    code: string
    docs: string
    message: string
    tip: string
end

local record InvalidInputException
    code: string
    docs: string
    message: string
    tip: string
end

local record NotFoundException
    code: string
    docs: string
    message: string
    tip: string
end

local record OperationFailureException
    code: string
    docs: string
    message: string
    tip: string
end

local record RegionSetupInProgressException
    code: string
    docs: string
    message: string
    tip: string
end

local record ServiceException
    code: string
    docs: string
    message: string
    tip: string
end

local record UnauthenticatedException
    code: string
    docs: string
    message: string
    tip: string
end

local record AccessDeniedException
    code: string
    docs: string
    message: string
    tip: string
end

local record AccountSetupInProgressException
    code: string
    docs: string
    message: string
    tip: string
end

local record InvalidInputException
    code: string
    docs: string
    message: string
    tip: string
end

local record NotFoundException
    code: string
    docs: string
    message: string
    tip: string
end

local record OperationFailureException
    code: string
    docs: string
    message: string
    tip: string
end

local record RegionSetupInProgressException
    code: string
    docs: string
    message: string
    tip: string
end

local record ServiceException
    code: string
    docs: string
    message: string
    tip: string
end

local record UnauthenticatedException
    code: string
    docs: string
    message: string
    tip: string
end

local record AccessDeniedException
    code: string
    docs: string
    message: string
    tip: string
end

local record AccountSetupInProgressException
    code: string
    docs: string
    message: string
    tip: string
end

local record InvalidInputException
    code: string
    docs: string
    message: string
    tip: string
end

local record NotFoundException
    code: string
    docs: string
    message: string
    tip: string
end

local record OperationFailureException
    code: string
    docs: string
    message: string
    tip: string
end

local record RegionSetupInProgressException
    code: string
    docs: string
    message: string
    tip: string
end

local record ServiceException
    code: string
    docs: string
    message: string
    tip: string
end

local record UnauthenticatedException
    code: string
    docs: string
    message: string
    tip: string
end

local record AccessDeniedException
    code: string
    docs: string
    message: string
    tip: string
end

local record AccountSetupInProgressException
    code: string
    docs: string
    message: string
    tip: string
end

local record InvalidInputException
    code: string
    docs: string
    message: string
    tip: string
end

local record NotFoundException
    code: string
    docs: string
    message: string
    tip: string
end

local record OperationFailureException
    code: string
    docs: string
    message: string
    tip: string
end

local record RegionSetupInProgressException
    code: string
    docs: string
    message: string
    tip: string
end

local record ServiceException
    code: string
    docs: string
    message: string
    tip: string
end

local record UnauthenticatedException
    code: string
    docs: string
    message: string
    tip: string
end

local record AccessDeniedException
    code: string
    docs: string
    message: string
    tip: string
end

local record InvalidInputException
    code: string
    docs: string
    message: string
    tip: string
end

local record RegionSetupInProgressException
    code: string
    docs: string
    message: string
    tip: string
end

local record ServiceException
    code: string
    docs: string
    message: string
    tip: string
end

local record UnauthenticatedException
    code: string
    docs: string
    message: string
    tip: string
end

local record AccessDeniedException
    code: string
    docs: string
    message: string
    tip: string
end

local record InvalidInputException
    code: string
    docs: string
    message: string
    tip: string
end

local record NotFoundException
    code: string
    docs: string
    message: string
    tip: string
end

local record RegionSetupInProgressException
    code: string
    docs: string
    message: string
    tip: string
end

local record ServiceException
    code: string
    docs: string
    message: string
    tip: string
end

local record UnauthenticatedException
    code: string
    docs: string
    message: string
    tip: string
end

local record AccessDeniedException
    code: string
    docs: string
    message: string
    tip: string
end

local record InvalidInputException
    code: string
    docs: string
    message: string
    tip: string
end

local record NotFoundException
    code: string
    docs: string
    message: string
    tip: string
end

local record RegionSetupInProgressException
    code: string
    docs: string
    message: string
    tip: string
end

local record ServiceException
    code: string
    docs: string
    message: string
    tip: string
end

local record UnauthenticatedException
    code: string
    docs: string
    message: string
    tip: string
end

local record AccessDeniedException
    code: string
    docs: string
    message: string
    tip: string
end

local record AccountSetupInProgressException
    code: string
    docs: string
    message: string
    tip: string
end

local record InvalidInputException
    code: string
    docs: string
    message: string
    tip: string
end

local record NotFoundException
    code: string
    docs: string
    message: string
    tip: string
end

local record OperationFailureException
    code: string
    docs: string
    message: string
    tip: string
end

local record RegionSetupInProgressException
    code: string
    docs: string
    message: string
    tip: string
end

local record ServiceException
    code: string
    docs: string
    message: string
    tip: string
end

local record UnauthenticatedException
    code: string
    docs: string
    message: string
    tip: string
end

local record AccessDeniedException
    code: string
    docs: string
    message: string
    tip: string
end

local record InvalidInputException
    code: string
    docs: string
    message: string
    tip: string
end

local record NotFoundException
    code: string
    docs: string
    message: string
    tip: string
end

local record OperationFailureException
    code: string
    docs: string
    message: string
    tip: string
end

local record RegionSetupInProgressException
    code: string
    docs: string
    message: string
    tip: string
end

local record ServiceException
    code: string
    docs: string
    message: string
    tip: string
end

local record UnauthenticatedException
    code: string
    docs: string
    message: string
    tip: string
end

local record AccessDeniedException
    code: string
    docs: string
    message: string
    tip: string
end

local record InvalidInputException
    code: string
    docs: string
    message: string
    tip: string
end

local record NotFoundException
    code: string
    docs: string
    message: string
    tip: string
end

local record RegionSetupInProgressException
    code: string
    docs: string
    message: string
    tip: string
end

local record ServiceException
    code: string
    docs: string
    message: string
    tip: string
end

local record UnauthenticatedException
    code: string
    docs: string
    message: string
    tip: string
end

local record AccessDeniedException
    code: string
    docs: string
    message: string
    tip: string
end

local record InvalidInputException
    code: string
    docs: string
    message: string
    tip: string
end

local record NotFoundException
    code: string
    docs: string
    message: string
    tip: string
end

local record RegionSetupInProgressException
    code: string
    docs: string
    message: string
    tip: string
end

local record ServiceException
    code: string
    docs: string
    message: string
    tip: string
end

local record UnauthenticatedException
    code: string
    docs: string
    message: string
    tip: string
end

local record AccessDeniedException
    code: string
    docs: string
    message: string
    tip: string
end

local record InvalidInputException
    code: string
    docs: string
    message: string
    tip: string
end

local record NotFoundException
    code: string
    docs: string
    message: string
    tip: string
end

local record RegionSetupInProgressException
    code: string
    docs: string
    message: string
    tip: string
end

local record ServiceException
    code: string
    docs: string
    message: string
    tip: string
end

local record UnauthenticatedException
    code: string
    docs: string
    message: string
    tip: string
end

local record AccessDeniedException
    code: string
    docs: string
    message: string
    tip: string
end

local record AccountSetupInProgressException
    code: string
    docs: string
    message: string
    tip: string
end

local record InvalidInputException
    code: string
    docs: string
    message: string
    tip: string
end

local record NotFoundException
    code: string
    docs: string
    message: string
    tip: string
end

local record OperationFailureException
    code: string
    docs: string
    message: string
    tip: string
end

local record RegionSetupInProgressException
    code: string
    docs: string
    message: string
    tip: string
end

local record ServiceException
    code: string
    docs: string
    message: string
    tip: string
end

local record UnauthenticatedException
    code: string
    docs: string
    message: string
    tip: string
end

local record AccessDeniedException
    code: string
    docs: string
    message: string
    tip: string
end

local record AccountSetupInProgressException
    code: string
    docs: string
    message: string
    tip: string
end

local record InvalidInputException
    code: string
    docs: string
    message: string
    tip: string
end

local record NotFoundException
    code: string
    docs: string
    message: string
    tip: string
end

local record OperationFailureException
    code: string
    docs: string
    message: string
    tip: string
end

local record RegionSetupInProgressException
    code: string
    docs: string
    message: string
    tip: string
end

local record ServiceException
    code: string
    docs: string
    message: string
    tip: string
end

local record UnauthenticatedException
    code: string
    docs: string
    message: string
    tip: string
end

local record AccessDeniedException
    code: string
    docs: string
    message: string
    tip: string
end

local record AccountSetupInProgressException
    code: string
    docs: string
    message: string
    tip: string
end

local record InvalidInputException
    code: string
    docs: string
    message: string
    tip: string
end

local record NotFoundException
    code: string
    docs: string
    message: string
    tip: string
end

local record OperationFailureException
    code: string
    docs: string
    message: string
    tip: string
end

local record RegionSetupInProgressException
    code: string
    docs: string
    message: string
    tip: string
end

local record ServiceException
    code: string
    docs: string
    message: string
    tip: string
end

local record UnauthenticatedException
    code: string
    docs: string
    message: string
    tip: string
end

local record AccessDeniedException
    code: string
    docs: string
    message: string
    tip: string
end

local record InvalidInputException
    code: string
    docs: string
    message: string
    tip: string
end

local record NotFoundException
    code: string
    docs: string
    message: string
    tip: string
end

local record OperationFailureException
    code: string
    docs: string
    message: string
    tip: string
end

local record ServiceException
    code: string
    docs: string
    message: string
    tip: string
end

local record UnauthenticatedException
    code: string
    docs: string
    message: string
    tip: string
end

local record AccessDeniedException
    code: string
    docs: string
    message: string
    tip: string
end

local record AccountSetupInProgressException
    code: string
    docs: string
    message: string
    tip: string
end

local record InvalidInputException
    code: string
    docs: string
    message: string
    tip: string
end

local record NotFoundException
    code: string
    docs: string
    message: string
    tip: string
end

local record OperationFailureException
    code: string
    docs: string
    message: string
    tip: string
end

local record RegionSetupInProgressException
    code: string
    docs: string
    message: string
    tip: string
end

local record ServiceException
    code: string
    docs: string
    message: string
    tip: string
end

local record UnauthenticatedException
    code: string
    docs: string
    message: string
    tip: string
end

local record AccessDeniedException
    code: string
    docs: string
    message: string
    tip: string
end

local record AccountSetupInProgressException
    code: string
    docs: string
    message: string
    tip: string
end

local record InvalidInputException
    code: string
    docs: string
    message: string
    tip: string
end

local record NotFoundException
    code: string
    docs: string
    message: string
    tip: string
end

local record OperationFailureException
    code: string
    docs: string
    message: string
    tip: string
end

local record RegionSetupInProgressException
    code: string
    docs: string
    message: string
    tip: string
end

local record ServiceException
    code: string
    docs: string
    message: string
    tip: string
end

local record UnauthenticatedException
    code: string
    docs: string
    message: string
    tip: string
end

local record AccessDeniedException
    code: string
    docs: string
    message: string
    tip: string
end

local record InvalidInputException
    code: string
    docs: string
    message: string
    tip: string
end

local record NotFoundException
    code: string
    docs: string
    message: string
    tip: string
end

local record RegionSetupInProgressException
    code: string
    docs: string
    message: string
    tip: string
end

local record ServiceException
    code: string
    docs: string
    message: string
    tip: string
end

local record UnauthenticatedException
    code: string
    docs: string
    message: string
    tip: string
end

local record AccessDeniedException
    code: string
    docs: string
    message: string
    tip: string
end

local record AccountSetupInProgressException
    code: string
    docs: string
    message: string
    tip: string
end

local record InvalidInputException
    code: string
    docs: string
    message: string
    tip: string
end

local record NotFoundException
    code: string
    docs: string
    message: string
    tip: string
end

local record OperationFailureException
    code: string
    docs: string
    message: string
    tip: string
end

local record RegionSetupInProgressException
    code: string
    docs: string
    message: string
    tip: string
end

local record ServiceException
    code: string
    docs: string
    message: string
    tip: string
end

local record UnauthenticatedException
    code: string
    docs: string
    message: string
    tip: string
end

local record AccessDeniedException
    code: string
    docs: string
    message: string
    tip: string
end

local record AccountSetupInProgressException
    code: string
    docs: string
    message: string
    tip: string
end

local record InvalidInputException
    code: string
    docs: string
    message: string
    tip: string
end

local record NotFoundException
    code: string
    docs: string
    message: string
    tip: string
end

local record OperationFailureException
    code: string
    docs: string
    message: string
    tip: string
end

local record RegionSetupInProgressException
    code: string
    docs: string
    message: string
    tip: string
end

local record ServiceException
    code: string
    docs: string
    message: string
    tip: string
end

local record UnauthenticatedException
    code: string
    docs: string
    message: string
    tip: string
end

local record AccessDeniedException
    code: string
    docs: string
    message: string
    tip: string
end

local record AccountSetupInProgressException
    code: string
    docs: string
    message: string
    tip: string
end

local record InvalidInputException
    code: string
    docs: string
    message: string
    tip: string
end

local record NotFoundException
    code: string
    docs: string
    message: string
    tip: string
end

local record OperationFailureException
    code: string
    docs: string
    message: string
    tip: string
end

local record RegionSetupInProgressException
    code: string
    docs: string
    message: string
    tip: string
end

local record ServiceException
    code: string
    docs: string
    message: string
    tip: string
end

local record UnauthenticatedException
    code: string
    docs: string
    message: string
    tip: string
end

local record AccessDeniedException
    code: string
    docs: string
    message: string
    tip: string
end

local record AccountSetupInProgressException
    code: string
    docs: string
    message: string
    tip: string
end

local record InvalidInputException
    code: string
    docs: string
    message: string
    tip: string
end

local record NotFoundException
    code: string
    docs: string
    message: string
    tip: string
end

local record OperationFailureException
    code: string
    docs: string
    message: string
    tip: string
end

local record RegionSetupInProgressException
    code: string
    docs: string
    message: string
    tip: string
end

local record ServiceException
    code: string
    docs: string
    message: string
    tip: string
end

local record UnauthenticatedException
    code: string
    docs: string
    message: string
    tip: string
end

local record AccessDeniedException
    code: string
    docs: string
    message: string
    tip: string
end

local record AccountSetupInProgressException
    code: string
    docs: string
    message: string
    tip: string
end

local record InvalidInputException
    code: string
    docs: string
    message: string
    tip: string
end

local record NotFoundException
    code: string
    docs: string
    message: string
    tip: string
end

local record OperationFailureException
    code: string
    docs: string
    message: string
    tip: string
end

local record RegionSetupInProgressException
    code: string
    docs: string
    message: string
    tip: string
end

local record ServiceException
    code: string
    docs: string
    message: string
    tip: string
end

local record UnauthenticatedException
    code: string
    docs: string
    message: string
    tip: string
end

local record AccessDeniedException
    code: string
    docs: string
    message: string
    tip: string
end

local record AccountSetupInProgressException
    code: string
    docs: string
    message: string
    tip: string
end

local record InvalidInputException
    code: string
    docs: string
    message: string
    tip: string
end

local record NotFoundException
    code: string
    docs: string
    message: string
    tip: string
end

local record OperationFailureException
    code: string
    docs: string
    message: string
    tip: string
end

local record RegionSetupInProgressException
    code: string
    docs: string
    message: string
    tip: string
end

local record ServiceException
    code: string
    docs: string
    message: string
    tip: string
end

local record UnauthenticatedException
    code: string
    docs: string
    message: string
    tip: string
end

local record AccessDeniedException
    code: string
    docs: string
    message: string
    tip: string
end

local record AccountSetupInProgressException
    code: string
    docs: string
    message: string
    tip: string
end

local record InvalidInputException
    code: string
    docs: string
    message: string
    tip: string
end

local record NotFoundException
    code: string
    docs: string
    message: string
    tip: string
end

local record OperationFailureException
    code: string
    docs: string
    message: string
    tip: string
end

local record RegionSetupInProgressException
    code: string
    docs: string
    message: string
    tip: string
end

local record ServiceException
    code: string
    docs: string
    message: string
    tip: string
end

local record UnauthenticatedException
    code: string
    docs: string
    message: string
    tip: string
end

local record AccessDeniedException
    code: string
    docs: string
    message: string
    tip: string
end

local record AccountSetupInProgressException
    code: string
    docs: string
    message: string
    tip: string
end

local record InvalidInputException
    code: string
    docs: string
    message: string
    tip: string
end

local record NotFoundException
    code: string
    docs: string
    message: string
    tip: string
end

local record OperationFailureException
    code: string
    docs: string
    message: string
    tip: string
end

local record RegionSetupInProgressException
    code: string
    docs: string
    message: string
    tip: string
end

local record ServiceException
    code: string
    docs: string
    message: string
    tip: string
end

local record UnauthenticatedException
    code: string
    docs: string
    message: string
    tip: string
end

local record AccessDeniedException
    code: string
    docs: string
    message: string
    tip: string
end

local record AccountSetupInProgressException
    code: string
    docs: string
    message: string
    tip: string
end

local record InvalidInputException
    code: string
    docs: string
    message: string
    tip: string
end

local record NotFoundException
    code: string
    docs: string
    message: string
    tip: string
end

local record OperationFailureException
    code: string
    docs: string
    message: string
    tip: string
end

local record RegionSetupInProgressException
    code: string
    docs: string
    message: string
    tip: string
end

local record ServiceException
    code: string
    docs: string
    message: string
    tip: string
end

local record UnauthenticatedException
    code: string
    docs: string
    message: string
    tip: string
end

local record AccessDeniedException
    code: string
    docs: string
    message: string
    tip: string
end

local record InvalidInputException
    code: string
    docs: string
    message: string
    tip: string
end

local record NotFoundException
    code: string
    docs: string
    message: string
    tip: string
end

local record OperationFailureException
    code: string
    docs: string
    message: string
    tip: string
end

local record RegionSetupInProgressException
    code: string
    docs: string
    message: string
    tip: string
end

local record ServiceException
    code: string
    docs: string
    message: string
    tip: string
end

local record UnauthenticatedException
    code: string
    docs: string
    message: string
    tip: string
end

local record AccessDeniedException
    code: string
    docs: string
    message: string
    tip: string
end

local record InvalidInputException
    code: string
    docs: string
    message: string
    tip: string
end

local record NotFoundException
    code: string
    docs: string
    message: string
    tip: string
end

local record OperationFailureException
    code: string
    docs: string
    message: string
    tip: string
end

local record RegionSetupInProgressException
    code: string
    docs: string
    message: string
    tip: string
end

local record ServiceException
    code: string
    docs: string
    message: string
    tip: string
end

local record UnauthenticatedException
    code: string
    docs: string
    message: string
    tip: string
end

local record AccessDeniedException
    code: string
    docs: string
    message: string
    tip: string
end

local record InvalidInputException
    code: string
    docs: string
    message: string
    tip: string
end

local record NotFoundException
    code: string
    docs: string
    message: string
    tip: string
end

local record RegionSetupInProgressException
    code: string
    docs: string
    message: string
    tip: string
end

local record ServiceException
    code: string
    docs: string
    message: string
    tip: string
end

local record UnauthenticatedException
    code: string
    docs: string
    message: string
    tip: string
end

local record AccessDeniedException
    code: string
    docs: string
    message: string
    tip: string
end

local record InvalidInputException
    code: string
    docs: string
    message: string
    tip: string
end

local record NotFoundException
    code: string
    docs: string
    message: string
    tip: string
end

local record RegionSetupInProgressException
    code: string
    docs: string
    message: string
    tip: string
end

local record ServiceException
    code: string
    docs: string
    message: string
    tip: string
end

local record UnauthenticatedException
    code: string
    docs: string
    message: string
    tip: string
end

local record AccessDeniedException
    code: string
    docs: string
    message: string
    tip: string
end

local record InvalidInputException
    code: string
    docs: string
    message: string
    tip: string
end

local record NotFoundException
    code: string
    docs: string
    message: string
    tip: string
end

local record RegionSetupInProgressException
    code: string
    docs: string
    message: string
    tip: string
end

local record ServiceException
    code: string
    docs: string
    message: string
    tip: string
end

local record UnauthenticatedException
    code: string
    docs: string
    message: string
    tip: string
end

local record AccessDeniedException
    code: string
    docs: string
    message: string
    tip: string
end

local record InvalidInputException
    code: string
    docs: string
    message: string
    tip: string
end

local record NotFoundException
    code: string
    docs: string
    message: string
    tip: string
end

local record OperationFailureException
    code: string
    docs: string
    message: string
    tip: string
end

local record RegionSetupInProgressException
    code: string
    docs: string
    message: string
    tip: string
end

local record ServiceException
    code: string
    docs: string
    message: string
    tip: string
end

local record UnauthenticatedException
    code: string
    docs: string
    message: string
    tip: string
end

local record AccessDeniedException
    code: string
    docs: string
    message: string
    tip: string
end

local record InvalidInputException
    code: string
    docs: string
    message: string
    tip: string
end

local record NotFoundException
    code: string
    docs: string
    message: string
    tip: string
end

local record RegionSetupInProgressException
    code: string
    docs: string
    message: string
    tip: string
end

local record ServiceException
    code: string
    docs: string
    message: string
    tip: string
end

local record UnauthenticatedException
    code: string
    docs: string
    message: string
    tip: string
end

local record AccessDeniedException
    code: string
    docs: string
    message: string
    tip: string
end

local record InvalidInputException
    code: string
    docs: string
    message: string
    tip: string
end

local record NotFoundException
    code: string
    docs: string
    message: string
    tip: string
end

local record RegionSetupInProgressException
    code: string
    docs: string
    message: string
    tip: string
end

local record ServiceException
    code: string
    docs: string
    message: string
    tip: string
end

local record UnauthenticatedException
    code: string
    docs: string
    message: string
    tip: string
end

local record AccessDeniedException
    code: string
    docs: string
    message: string
    tip: string
end

local record AccountSetupInProgressException
    code: string
    docs: string
    message: string
    tip: string
end

local record InvalidInputException
    code: string
    docs: string
    message: string
    tip: string
end

local record NotFoundException
    code: string
    docs: string
    message: string
    tip: string
end

local record OperationFailureException
    code: string
    docs: string
    message: string
    tip: string
end

local record RegionSetupInProgressException
    code: string
    docs: string
    message: string
    tip: string
end

local record ServiceException
    code: string
    docs: string
    message: string
    tip: string
end

local record UnauthenticatedException
    code: string
    docs: string
    message: string
    tip: string
end

local record AccessDeniedException
    code: string
    docs: string
    message: string
    tip: string
end

local record AccountSetupInProgressException
    code: string
    docs: string
    message: string
    tip: string
end

local record InvalidInputException
    code: string
    docs: string
    message: string
    tip: string
end

local record NotFoundException
    code: string
    docs: string
    message: string
    tip: string
end

local record OperationFailureException
    code: string
    docs: string
    message: string
    tip: string
end

local record RegionSetupInProgressException
    code: string
    docs: string
    message: string
    tip: string
end

local record ServiceException
    code: string
    docs: string
    message: string
    tip: string
end

local record UnauthenticatedException
    code: string
    docs: string
    message: string
    tip: string
end

local record AccessDeniedException
    code: string
    docs: string
    message: string
    tip: string
end

local record InvalidInputException
    code: string
    docs: string
    message: string
    tip: string
end

local record NotFoundException
    code: string
    docs: string
    message: string
    tip: string
end

local record OperationFailureException
    code: string
    docs: string
    message: string
    tip: string
end

local record ServiceException
    code: string
    docs: string
    message: string
    tip: string
end

local record UnauthenticatedException
    code: string
    docs: string
    message: string
    tip: string
end

local record AccessDeniedException
    code: string
    docs: string
    message: string
    tip: string
end

local record AccountSetupInProgressException
    code: string
    docs: string
    message: string
    tip: string
end

local record InvalidInputException
    code: string
    docs: string
    message: string
    tip: string
end

local record NotFoundException
    code: string
    docs: string
    message: string
    tip: string
end

local record OperationFailureException
    code: string
    docs: string
    message: string
    tip: string
end

local record RegionSetupInProgressException
    code: string
    docs: string
    message: string
    tip: string
end

local record ServiceException
    code: string
    docs: string
    message: string
    tip: string
end

local record UnauthenticatedException
    code: string
    docs: string
    message: string
    tip: string
end

local record AccessDeniedException
    code: string
    docs: string
    message: string
    tip: string
end

local record AccountSetupInProgressException
    code: string
    docs: string
    message: string
    tip: string
end

local record InvalidInputException
    code: string
    docs: string
    message: string
    tip: string
end

local record NotFoundException
    code: string
    docs: string
    message: string
    tip: string
end

local record OperationFailureException
    code: string
    docs: string
    message: string
    tip: string
end

local record RegionSetupInProgressException
    code: string
    docs: string
    message: string
    tip: string
end

local record ServiceException
    code: string
    docs: string
    message: string
    tip: string
end

local record UnauthenticatedException
    code: string
    docs: string
    message: string
    tip: string
end

local record AccessDeniedException
    code: string
    docs: string
    message: string
    tip: string
end

local record AccountSetupInProgressException
    code: string
    docs: string
    message: string
    tip: string
end

local record InvalidInputException
    code: string
    docs: string
    message: string
    tip: string
end

local record NotFoundException
    code: string
    docs: string
    message: string
    tip: string
end

local record OperationFailureException
    code: string
    docs: string
    message: string
    tip: string
end

local record RegionSetupInProgressException
    code: string
    docs: string
    message: string
    tip: string
end

local record ServiceException
    code: string
    docs: string
    message: string
    tip: string
end

local record UnauthenticatedException
    code: string
    docs: string
    message: string
    tip: string
end

local record AccessDeniedException
    code: string
    docs: string
    message: string
    tip: string
end

local record AccountSetupInProgressException
    code: string
    docs: string
    message: string
    tip: string
end

local record InvalidInputException
    code: string
    docs: string
    message: string
    tip: string
end

local record NotFoundException
    code: string
    docs: string
    message: string
    tip: string
end

local record OperationFailureException
    code: string
    docs: string
    message: string
    tip: string
end

local record RegionSetupInProgressException
    code: string
    docs: string
    message: string
    tip: string
end

local record ServiceException
    code: string
    docs: string
    message: string
    tip: string
end

local record UnauthenticatedException
    code: string
    docs: string
    message: string
    tip: string
end

local record AccessDeniedException
    code: string
    docs: string
    message: string
    tip: string
end

local record AccountSetupInProgressException
    code: string
    docs: string
    message: string
    tip: string
end

local record InvalidInputException
    code: string
    docs: string
    message: string
    tip: string
end

local record NotFoundException
    code: string
    docs: string
    message: string
    tip: string
end

local record OperationFailureException
    code: string
    docs: string
    message: string
    tip: string
end

local record RegionSetupInProgressException
    code: string
    docs: string
    message: string
    tip: string
end

local record ServiceException
    code: string
    docs: string
    message: string
    tip: string
end

local record UnauthenticatedException
    code: string
    docs: string
    message: string
    tip: string
end

local record AccessDeniedException
    code: string
    docs: string
    message: string
    tip: string
end

local record AccountSetupInProgressException
    code: string
    docs: string
    message: string
    tip: string
end

local record InvalidInputException
    code: string
    docs: string
    message: string
    tip: string
end

local record NotFoundException
    code: string
    docs: string
    message: string
    tip: string
end

local record OperationFailureException
    code: string
    docs: string
    message: string
    tip: string
end

local record RegionSetupInProgressException
    code: string
    docs: string
    message: string
    tip: string
end

local record ServiceException
    code: string
    docs: string
    message: string
    tip: string
end

local record UnauthenticatedException
    code: string
    docs: string
    message: string
    tip: string
end

local record AccessDeniedException
    code: string
    docs: string
    message: string
    tip: string
end

local record AccountSetupInProgressException
    code: string
    docs: string
    message: string
    tip: string
end

local record InvalidInputException
    code: string
    docs: string
    message: string
    tip: string
end

local record NotFoundException
    code: string
    docs: string
    message: string
    tip: string
end

local record OperationFailureException
    code: string
    docs: string
    message: string
    tip: string
end

local record RegionSetupInProgressException
    code: string
    docs: string
    message: string
    tip: string
end

local record ServiceException
    code: string
    docs: string
    message: string
    tip: string
end

local record UnauthenticatedException
    code: string
    docs: string
    message: string
    tip: string
end

local record AccessDeniedException
    code: string
    docs: string
    message: string
    tip: string
end

local record AccountSetupInProgressException
    code: string
    docs: string
    message: string
    tip: string
end

local record InvalidInputException
    code: string
    docs: string
    message: string
    tip: string
end

local record NotFoundException
    code: string
    docs: string
    message: string
    tip: string
end

local record OperationFailureException
    code: string
    docs: string
    message: string
    tip: string
end

local record RegionSetupInProgressException
    code: string
    docs: string
    message: string
    tip: string
end

local record ServiceException
    code: string
    docs: string
    message: string
    tip: string
end

local record UnauthenticatedException
    code: string
    docs: string
    message: string
    tip: string
end

local record AccessDeniedException
    code: string
    docs: string
    message: string
    tip: string
end

local record AccountSetupInProgressException
    code: string
    docs: string
    message: string
    tip: string
end

local record InvalidInputException
    code: string
    docs: string
    message: string
    tip: string
end

local record NotFoundException
    code: string
    docs: string
    message: string
    tip: string
end

local record OperationFailureException
    code: string
    docs: string
    message: string
    tip: string
end

local record RegionSetupInProgressException
    code: string
    docs: string
    message: string
    tip: string
end

local record ServiceException
    code: string
    docs: string
    message: string
    tip: string
end

local record UnauthenticatedException
    code: string
    docs: string
    message: string
    tip: string
end

local record AccessDeniedException
    code: string
    docs: string
    message: string
    tip: string
end

local record AccountSetupInProgressException
    code: string
    docs: string
    message: string
    tip: string
end

local record InvalidInputException
    code: string
    docs: string
    message: string
    tip: string
end

local record NotFoundException
    code: string
    docs: string
    message: string
    tip: string
end

local record OperationFailureException
    code: string
    docs: string
    message: string
    tip: string
end

local record RegionSetupInProgressException
    code: string
    docs: string
    message: string
    tip: string
end

local record ServiceException
    code: string
    docs: string
    message: string
    tip: string
end

local record UnauthenticatedException
    code: string
    docs: string
    message: string
    tip: string
end

local record AccessDeniedException
    code: string
    docs: string
    message: string
    tip: string
end

local record InvalidInputException
    code: string
    docs: string
    message: string
    tip: string
end

local record NotFoundException
    code: string
    docs: string
    message: string
    tip: string
end

local record OperationFailureException
    code: string
    docs: string
    message: string
    tip: string
end

local record ServiceException
    code: string
    docs: string
    message: string
    tip: string
end

local record UnauthenticatedException
    code: string
    docs: string
    message: string
    tip: string
end

local record AccessDeniedException
    code: string
    docs: string
    message: string
    tip: string
end

local record AccountSetupInProgressException
    code: string
    docs: string
    message: string
    tip: string
end

local record InvalidInputException
    code: string
    docs: string
    message: string
    tip: string
end

local record NotFoundException
    code: string
    docs: string
    message: string
    tip: string
end

local record OperationFailureException
    code: string
    docs: string
    message: string
    tip: string
end

local record RegionSetupInProgressException
    code: string
    docs: string
    message: string
    tip: string
end

local record ServiceException
    code: string
    docs: string
    message: string
    tip: string
end

local record UnauthenticatedException
    code: string
    docs: string
    message: string
    tip: string
end

local record AccessDeniedException
    code: string
    docs: string
    message: string
    tip: string
end

local record AccountSetupInProgressException
    code: string
    docs: string
    message: string
    tip: string
end

local record InvalidInputException
    code: string
    docs: string
    message: string
    tip: string
end

local record NotFoundException
    code: string
    docs: string
    message: string
    tip: string
end

local record OperationFailureException
    code: string
    docs: string
    message: string
    tip: string
end

local record RegionSetupInProgressException
    code: string
    docs: string
    message: string
    tip: string
end

local record ServiceException
    code: string
    docs: string
    message: string
    tip: string
end

local record UnauthenticatedException
    code: string
    docs: string
    message: string
    tip: string
end

local record AccessDeniedException
    code: string
    docs: string
    message: string
    tip: string
end

local record AccountSetupInProgressException
    code: string
    docs: string
    message: string
    tip: string
end

local record InvalidInputException
    code: string
    docs: string
    message: string
    tip: string
end

local record NotFoundException
    code: string
    docs: string
    message: string
    tip: string
end

local record OperationFailureException
    code: string
    docs: string
    message: string
    tip: string
end

local record RegionSetupInProgressException
    code: string
    docs: string
    message: string
    tip: string
end

local record ServiceException
    code: string
    docs: string
    message: string
    tip: string
end

local record UnauthenticatedException
    code: string
    docs: string
    message: string
    tip: string
end

local record AccessDeniedException
    code: string
    docs: string
    message: string
    tip: string
end

local record InvalidInputException
    code: string
    docs: string
    message: string
    tip: string
end

local record NotFoundException
    code: string
    docs: string
    message: string
    tip: string
end

local record OperationFailureException
    code: string
    docs: string
    message: string
    tip: string
end

local record RegionSetupInProgressException
    code: string
    docs: string
    message: string
    tip: string
end

local record ServiceException
    code: string
    docs: string
    message: string
    tip: string
end

local record UnauthenticatedException
    code: string
    docs: string
    message: string
    tip: string
end

local record AccessDeniedException
    code: string
    docs: string
    message: string
    tip: string
end

local record AccountSetupInProgressException
    code: string
    docs: string
    message: string
    tip: string
end

local record InvalidInputException
    code: string
    docs: string
    message: string
    tip: string
end

local record NotFoundException
    code: string
    docs: string
    message: string
    tip: string
end

local record OperationFailureException
    code: string
    docs: string
    message: string
    tip: string
end

local record RegionSetupInProgressException
    code: string
    docs: string
    message: string
    tip: string
end

local record ServiceException
    code: string
    docs: string
    message: string
    tip: string
end

local record UnauthenticatedException
    code: string
    docs: string
    message: string
    tip: string
end

local record AccessDeniedException
    code: string
    docs: string
    message: string
    tip: string
end

local record InvalidInputException
    code: string
    docs: string
    message: string
    tip: string
end

local record NotFoundException
    code: string
    docs: string
    message: string
    tip: string
end

local record OperationFailureException
    code: string
    docs: string
    message: string
    tip: string
end

local record RegionSetupInProgressException
    code: string
    docs: string
    message: string
    tip: string
end

local record ServiceException
    code: string
    docs: string
    message: string
    tip: string
end

local record UnauthenticatedException
    code: string
    docs: string
    message: string
    tip: string
end

local record AccessDeniedException
    code: string
    docs: string
    message: string
    tip: string
end

local record AccountSetupInProgressException
    code: string
    docs: string
    message: string
    tip: string
end

local record InvalidInputException
    code: string
    docs: string
    message: string
    tip: string
end

local record NotFoundException
    code: string
    docs: string
    message: string
    tip: string
end

local record OperationFailureException
    code: string
    docs: string
    message: string
    tip: string
end

local record RegionSetupInProgressException
    code: string
    docs: string
    message: string
    tip: string
end

local record ServiceException
    code: string
    docs: string
    message: string
    tip: string
end

local record UnauthenticatedException
    code: string
    docs: string
    message: string
    tip: string
end

local record AccessDeniedException
    code: string
    docs: string
    message: string
    tip: string
end

local record AccountSetupInProgressException
    code: string
    docs: string
    message: string
    tip: string
end

local record InvalidInputException
    code: string
    docs: string
    message: string
    tip: string
end

local record NotFoundException
    code: string
    docs: string
    message: string
    tip: string
end

local record OperationFailureException
    code: string
    docs: string
    message: string
    tip: string
end

local record RegionSetupInProgressException
    code: string
    docs: string
    message: string
    tip: string
end

local record ServiceException
    code: string
    docs: string
    message: string
    tip: string
end

local record UnauthenticatedException
    code: string
    docs: string
    message: string
    tip: string
end

local record AccessDeniedException
    code: string
    docs: string
    message: string
    tip: string
end

local record InvalidInputException
    code: string
    docs: string
    message: string
    tip: string
end

local record NotFoundException
    code: string
    docs: string
    message: string
    tip: string
end

local record OperationFailureException
    code: string
    docs: string
    message: string
    tip: string
end

local record RegionSetupInProgressException
    code: string
    docs: string
    message: string
    tip: string
end

local record ServiceException
    code: string
    docs: string
    message: string
    tip: string
end

local record UnauthenticatedException
    code: string
    docs: string
    message: string
    tip: string
end

local record AccessDeniedException
    code: string
    docs: string
    message: string
    tip: string
end

local record InvalidInputException
    code: string
    docs: string
    message: string
    tip: string
end

local record NotFoundException
    code: string
    docs: string
    message: string
    tip: string
end

local record OperationFailureException
    code: string
    docs: string
    message: string
    tip: string
end

local record RegionSetupInProgressException
    code: string
    docs: string
    message: string
    tip: string
end

local record ServiceException
    code: string
    docs: string
    message: string
    tip: string
end

local record UnauthenticatedException
    code: string
    docs: string
    message: string
    tip: string
end

local record AccessDeniedException
    code: string
    docs: string
    message: string
    tip: string
end

local record AccountSetupInProgressException
    code: string
    docs: string
    message: string
    tip: string
end

local record InvalidInputException
    code: string
    docs: string
    message: string
    tip: string
end

local record NotFoundException
    code: string
    docs: string
    message: string
    tip: string
end

local record OperationFailureException
    code: string
    docs: string
    message: string
    tip: string
end

local record RegionSetupInProgressException
    code: string
    docs: string
    message: string
    tip: string
end

local record ServiceException
    code: string
    docs: string
    message: string
    tip: string
end

local record UnauthenticatedException
    code: string
    docs: string
    message: string
    tip: string
end

local record AccessDeniedException
    code: string
    docs: string
    message: string
    tip: string
end

local record InvalidInputException
    code: string
    docs: string
    message: string
    tip: string
end

local record NotFoundException
    code: string
    docs: string
    message: string
    tip: string
end

local record RegionSetupInProgressException
    code: string
    docs: string
    message: string
    tip: string
end

local record ServiceException
    code: string
    docs: string
    message: string
    tip: string
end

local record UnauthenticatedException
    code: string
    docs: string
    message: string
    tip: string
end

local record AccessDeniedException
    code: string
    docs: string
    message: string
    tip: string
end

local record InvalidInputException
    code: string
    docs: string
    message: string
    tip: string
end

local record RegionSetupInProgressException
    code: string
    docs: string
    message: string
    tip: string
end

local record ServiceException
    code: string
    docs: string
    message: string
    tip: string
end

local record UnauthenticatedException
    code: string
    docs: string
    message: string
    tip: string
end

local record AccessDeniedException
    code: string
    docs: string
    message: string
    tip: string
end

local record InvalidInputException
    code: string
    docs: string
    message: string
    tip: string
end

local record NotFoundException
    code: string
    docs: string
    message: string
    tip: string
end

local record RegionSetupInProgressException
    code: string
    docs: string
    message: string
    tip: string
end

local record ServiceException
    code: string
    docs: string
    message: string
    tip: string
end

local record UnauthenticatedException
    code: string
    docs: string
    message: string
    tip: string
end

local record AccessDeniedException
    code: string
    docs: string
    message: string
    tip: string
end

local record InvalidInputException
    code: string
    docs: string
    message: string
    tip: string
end

local record NotFoundException
    code: string
    docs: string
    message: string
    tip: string
end

local record RegionSetupInProgressException
    code: string
    docs: string
    message: string
    tip: string
end

local record ServiceException
    code: string
    docs: string
    message: string
    tip: string
end

local record UnauthenticatedException
    code: string
    docs: string
    message: string
    tip: string
end

local record AccessDeniedException
    code: string
    docs: string
    message: string
    tip: string
end

local record AccountSetupInProgressException
    code: string
    docs: string
    message: string
    tip: string
end

local record InvalidInputException
    code: string
    docs: string
    message: string
    tip: string
end

local record NotFoundException
    code: string
    docs: string
    message: string
    tip: string
end

local record OperationFailureException
    code: string
    docs: string
    message: string
    tip: string
end

local record RegionSetupInProgressException
    code: string
    docs: string
    message: string
    tip: string
end

local record ServiceException
    code: string
    docs: string
    message: string
    tip: string
end

local record UnauthenticatedException
    code: string
    docs: string
    message: string
    tip: string
end

local record AccessDeniedException
    code: string
    docs: string
    message: string
    tip: string
end

local record InvalidInputException
    code: string
    docs: string
    message: string
    tip: string
end

local record NotFoundException
    code: string
    docs: string
    message: string
    tip: string
end

local record RegionSetupInProgressException
    code: string
    docs: string
    message: string
    tip: string
end

local record ServiceException
    code: string
    docs: string
    message: string
    tip: string
end

local record UnauthenticatedException
    code: string
    docs: string
    message: string
    tip: string
end

local record AccessDeniedException
    code: string
    docs: string
    message: string
    tip: string
end

local record AccountSetupInProgressException
    code: string
    docs: string
    message: string
    tip: string
end

local record InvalidInputException
    code: string
    docs: string
    message: string
    tip: string
end

local record NotFoundException
    code: string
    docs: string
    message: string
    tip: string
end

local record OperationFailureException
    code: string
    docs: string
    message: string
    tip: string
end

local record RegionSetupInProgressException
    code: string
    docs: string
    message: string
    tip: string
end

local record ServiceException
    code: string
    docs: string
    message: string
    tip: string
end

local record UnauthenticatedException
    code: string
    docs: string
    message: string
    tip: string
end

local record AccessDeniedException
    code: string
    docs: string
    message: string
    tip: string
end

local record InvalidInputException
    code: string
    docs: string
    message: string
    tip: string
end

local record NotFoundException
    code: string
    docs: string
    message: string
    tip: string
end

local record OperationFailureException
    code: string
    docs: string
    message: string
    tip: string
end

local record RegionSetupInProgressException
    code: string
    docs: string
    message: string
    tip: string
end

local record ServiceException
    code: string
    docs: string
    message: string
    tip: string
end

local record UnauthenticatedException
    code: string
    docs: string
    message: string
    tip: string
end

local record AccessDeniedException
    code: string
    docs: string
    message: string
    tip: string
end

local record RegionSetupInProgressException
    code: string
    docs: string
    message: string
    tip: string
end

local record ServiceException
    code: string
    docs: string
    message: string
    tip: string
end

local record UnauthenticatedException
    code: string
    docs: string
    message: string
    tip: string
end

local record AccessDeniedException
    code: string
    docs: string
    message: string
    tip: string
end

local record InvalidInputException
    code: string
    docs: string
    message: string
    tip: string
end

local record NotFoundException
    code: string
    docs: string
    message: string
    tip: string
end

local record RegionSetupInProgressException
    code: string
    docs: string
    message: string
    tip: string
end

local record ServiceException
    code: string
    docs: string
    message: string
    tip: string
end

local record UnauthenticatedException
    code: string
    docs: string
    message: string
    tip: string
end

local record AccessDeniedException
    code: string
    docs: string
    message: string
    tip: string
end

local record InvalidInputException
    code: string
    docs: string
    message: string
    tip: string
end

local record NotFoundException
    code: string
    docs: string
    message: string
    tip: string
end

local record RegionSetupInProgressException
    code: string
    docs: string
    message: string
    tip: string
end

local record ServiceException
    code: string
    docs: string
    message: string
    tip: string
end

local record UnauthenticatedException
    code: string
    docs: string
    message: string
    tip: string
end

local record AccessDeniedException
    code: string
    docs: string
    message: string
    tip: string
end

local record InvalidInputException
    code: string
    docs: string
    message: string
    tip: string
end

local record NotFoundException
    code: string
    docs: string
    message: string
    tip: string
end

local record RegionSetupInProgressException
    code: string
    docs: string
    message: string
    tip: string
end

local record ServiceException
    code: string
    docs: string
    message: string
    tip: string
end

local record UnauthenticatedException
    code: string
    docs: string
    message: string
    tip: string
end

local record AccessDeniedException
    code: string
    docs: string
    message: string
    tip: string
end

local record InvalidInputException
    code: string
    docs: string
    message: string
    tip: string
end

local record NotFoundException
    code: string
    docs: string
    message: string
    tip: string
end

local record RegionSetupInProgressException
    code: string
    docs: string
    message: string
    tip: string
end

local record ServiceException
    code: string
    docs: string
    message: string
    tip: string
end

local record UnauthenticatedException
    code: string
    docs: string
    message: string
    tip: string
end

local record AccessDeniedException
    code: string
    docs: string
    message: string
    tip: string
end

local record InvalidInputException
    code: string
    docs: string
    message: string
    tip: string
end

local record NotFoundException
    code: string
    docs: string
    message: string
    tip: string
end

local record RegionSetupInProgressException
    code: string
    docs: string
    message: string
    tip: string
end

local record ServiceException
    code: string
    docs: string
    message: string
    tip: string
end

local record UnauthenticatedException
    code: string
    docs: string
    message: string
    tip: string
end

local record AccessDeniedException
    code: string
    docs: string
    message: string
    tip: string
end

local record InvalidInputException
    code: string
    docs: string
    message: string
    tip: string
end

local record NotFoundException
    code: string
    docs: string
    message: string
    tip: string
end

local record RegionSetupInProgressException
    code: string
    docs: string
    message: string
    tip: string
end

local record ServiceException
    code: string
    docs: string
    message: string
    tip: string
end

local record UnauthenticatedException
    code: string
    docs: string
    message: string
    tip: string
end

local record AccessDeniedException
    code: string
    docs: string
    message: string
    tip: string
end

local record InvalidInputException
    code: string
    docs: string
    message: string
    tip: string
end

local record NotFoundException
    code: string
    docs: string
    message: string
    tip: string
end

local record RegionSetupInProgressException
    code: string
    docs: string
    message: string
    tip: string
end

local record ServiceException
    code: string
    docs: string
    message: string
    tip: string
end

local record UnauthenticatedException
    code: string
    docs: string
    message: string
    tip: string
end

local record AccessDeniedException
    code: string
    docs: string
    message: string
    tip: string
end

local record AccountSetupInProgressException
    code: string
    docs: string
    message: string
    tip: string
end

local record InvalidInputException
    code: string
    docs: string
    message: string
    tip: string
end

local record NotFoundException
    code: string
    docs: string
    message: string
    tip: string
end

local record OperationFailureException
    code: string
    docs: string
    message: string
    tip: string
end

local record RegionSetupInProgressException
    code: string
    docs: string
    message: string
    tip: string
end

local record ServiceException
    code: string
    docs: string
    message: string
    tip: string
end

local record UnauthenticatedException
    code: string
    docs: string
    message: string
    tip: string
end

local record AccessDeniedException
    code: string
    docs: string
    message: string
    tip: string
end

local record AccountSetupInProgressException
    code: string
    docs: string
    message: string
    tip: string
end

local record InvalidInputException
    code: string
    docs: string
    message: string
    tip: string
end

local record NotFoundException
    code: string
    docs: string
    message: string
    tip: string
end

local record OperationFailureException
    code: string
    docs: string
    message: string
    tip: string
end

local record RegionSetupInProgressException
    code: string
    docs: string
    message: string
    tip: string
end

local record ServiceException
    code: string
    docs: string
    message: string
    tip: string
end

local record UnauthenticatedException
    code: string
    docs: string
    message: string
    tip: string
end

local record AccessDeniedException
    code: string
    docs: string
    message: string
    tip: string
end

local record AccountSetupInProgressException
    code: string
    docs: string
    message: string
    tip: string
end

local record InvalidInputException
    code: string
    docs: string
    message: string
    tip: string
end

local record NotFoundException
    code: string
    docs: string
    message: string
    tip: string
end

local record OperationFailureException
    code: string
    docs: string
    message: string
    tip: string
end

local record RegionSetupInProgressException
    code: string
    docs: string
    message: string
    tip: string
end

local record ServiceException
    code: string
    docs: string
    message: string
    tip: string
end

local record UnauthenticatedException
    code: string
    docs: string
    message: string
    tip: string
end

local record AccessDeniedException
    code: string
    docs: string
    message: string
    tip: string
end

local record AccountSetupInProgressException
    code: string
    docs: string
    message: string
    tip: string
end

local record InvalidInputException
    code: string
    docs: string
    message: string
    tip: string
end

local record NotFoundException
    code: string
    docs: string
    message: string
    tip: string
end

local record OperationFailureException
    code: string
    docs: string
    message: string
    tip: string
end

local record RegionSetupInProgressException
    code: string
    docs: string
    message: string
    tip: string
end

local record ServiceException
    code: string
    docs: string
    message: string
    tip: string
end

local record UnauthenticatedException
    code: string
    docs: string
    message: string
    tip: string
end

local record AccessDeniedException
    code: string
    docs: string
    message: string
    tip: string
end

local record InvalidInputException
    code: string
    docs: string
    message: string
    tip: string
end

local record NotFoundException
    code: string
    docs: string
    message: string
    tip: string
end

local record OperationFailureException
    code: string
    docs: string
    message: string
    tip: string
end

local record ServiceException
    code: string
    docs: string
    message: string
    tip: string
end

local record UnauthenticatedException
    code: string
    docs: string
    message: string
    tip: string
end

local record AccessDeniedException
    code: string
    docs: string
    message: string
    tip: string
end

local record InvalidInputException
    code: string
    docs: string
    message: string
    tip: string
end

local record NotFoundException
    code: string
    docs: string
    message: string
    tip: string
end

local record OperationFailureException
    code: string
    docs: string
    message: string
    tip: string
end

local record ServiceException
    code: string
    docs: string
    message: string
    tip: string
end

local record UnauthenticatedException
    code: string
    docs: string
    message: string
    tip: string
end

local record AccessDeniedException
    code: string
    docs: string
    message: string
    tip: string
end

local record InvalidInputException
    code: string
    docs: string
    message: string
    tip: string
end

local record NotFoundException
    code: string
    docs: string
    message: string
    tip: string
end

local record OperationFailureException
    code: string
    docs: string
    message: string
    tip: string
end

local record ServiceException
    code: string
    docs: string
    message: string
    tip: string
end

local record UnauthenticatedException
    code: string
    docs: string
    message: string
    tip: string
end

local record AccessDeniedException
    code: string
    docs: string
    message: string
    tip: string
end

local record InvalidInputException
    code: string
    docs: string
    message: string
    tip: string
end

local record NotFoundException
    code: string
    docs: string
    message: string
    tip: string
end

local record OperationFailureException
    code: string
    docs: string
    message: string
    tip: string
end

local record ServiceException
    code: string
    docs: string
    message: string
    tip: string
end

local record UnauthenticatedException
    code: string
    docs: string
    message: string
    tip: string
end

local record AccessDeniedException
    code: string
    docs: string
    message: string
    tip: string
end

local record AccountSetupInProgressException
    code: string
    docs: string
    message: string
    tip: string
end

local record InvalidInputException
    code: string
    docs: string
    message: string
    tip: string
end

local record NotFoundException
    code: string
    docs: string
    message: string
    tip: string
end

local record OperationFailureException
    code: string
    docs: string
    message: string
    tip: string
end

local record RegionSetupInProgressException
    code: string
    docs: string
    message: string
    tip: string
end

local record ServiceException
    code: string
    docs: string
    message: string
    tip: string
end

local record UnauthenticatedException
    code: string
    docs: string
    message: string
    tip: string
end

local record AccessDeniedException
    code: string
    docs: string
    message: string
    tip: string
end

local record AccountSetupInProgressException
    code: string
    docs: string
    message: string
    tip: string
end

local record InvalidInputException
    code: string
    docs: string
    message: string
    tip: string
end

local record NotFoundException
    code: string
    docs: string
    message: string
    tip: string
end

local record OperationFailureException
    code: string
    docs: string
    message: string
    tip: string
end

local record RegionSetupInProgressException
    code: string
    docs: string
    message: string
    tip: string
end

local record ServiceException
    code: string
    docs: string
    message: string
    tip: string
end

local record UnauthenticatedException
    code: string
    docs: string
    message: string
    tip: string
end

local record AccessDeniedException
    code: string
    docs: string
    message: string
    tip: string
end

local record AccountSetupInProgressException
    code: string
    docs: string
    message: string
    tip: string
end

local record InvalidInputException
    code: string
    docs: string
    message: string
    tip: string
end

local record NotFoundException
    code: string
    docs: string
    message: string
    tip: string
end

local record OperationFailureException
    code: string
    docs: string
    message: string
    tip: string
end

local record RegionSetupInProgressException
    code: string
    docs: string
    message: string
    tip: string
end

local record ServiceException
    code: string
    docs: string
    message: string
    tip: string
end

local record UnauthenticatedException
    code: string
    docs: string
    message: string
    tip: string
end

local record AccessDeniedException
    code: string
    docs: string
    message: string
    tip: string
end

local record AccountSetupInProgressException
    code: string
    docs: string
    message: string
    tip: string
end

local record InvalidInputException
    code: string
    docs: string
    message: string
    tip: string
end

local record NotFoundException
    code: string
    docs: string
    message: string
    tip: string
end

local record OperationFailureException
    code: string
    docs: string
    message: string
    tip: string
end

local record RegionSetupInProgressException
    code: string
    docs: string
    message: string
    tip: string
end

local record ServiceException
    code: string
    docs: string
    message: string
    tip: string
end

local record UnauthenticatedException
    code: string
    docs: string
    message: string
    tip: string
end

local record AccessDeniedException
    code: string
    docs: string
    message: string
    tip: string
end

local record AccountSetupInProgressException
    code: string
    docs: string
    message: string
    tip: string
end

local record InvalidInputException
    code: string
    docs: string
    message: string
    tip: string
end

local record NotFoundException
    code: string
    docs: string
    message: string
    tip: string
end

local record OperationFailureException
    code: string
    docs: string
    message: string
    tip: string
end

local record RegionSetupInProgressException
    code: string
    docs: string
    message: string
    tip: string
end

local record ServiceException
    code: string
    docs: string
    message: string
    tip: string
end

local record UnauthenticatedException
    code: string
    docs: string
    message: string
    tip: string
end

local record AccessDeniedException
    code: string
    docs: string
    message: string
    tip: string
end

local record AccountSetupInProgressException
    code: string
    docs: string
    message: string
    tip: string
end

local record InvalidInputException
    code: string
    docs: string
    message: string
    tip: string
end

local record NotFoundException
    code: string
    docs: string
    message: string
    tip: string
end

local record OperationFailureException
    code: string
    docs: string
    message: string
    tip: string
end

local record RegionSetupInProgressException
    code: string
    docs: string
    message: string
    tip: string
end

local record ServiceException
    code: string
    docs: string
    message: string
    tip: string
end

local record UnauthenticatedException
    code: string
    docs: string
    message: string
    tip: string
end

local record AccessDeniedException
    code: string
    docs: string
    message: string
    tip: string
end

local record AccountSetupInProgressException
    code: string
    docs: string
    message: string
    tip: string
end

local record InvalidInputException
    code: string
    docs: string
    message: string
    tip: string
end

local record NotFoundException
    code: string
    docs: string
    message: string
    tip: string
end

local record OperationFailureException
    code: string
    docs: string
    message: string
    tip: string
end

local record RegionSetupInProgressException
    code: string
    docs: string
    message: string
    tip: string
end

local record ServiceException
    code: string
    docs: string
    message: string
    tip: string
end

local record UnauthenticatedException
    code: string
    docs: string
    message: string
    tip: string
end

local record AccessDeniedException
    code: string
    docs: string
    message: string
    tip: string
end

local record AccountSetupInProgressException
    code: string
    docs: string
    message: string
    tip: string
end

local record InvalidInputException
    code: string
    docs: string
    message: string
    tip: string
end

local record NotFoundException
    code: string
    docs: string
    message: string
    tip: string
end

local record OperationFailureException
    code: string
    docs: string
    message: string
    tip: string
end

local record RegionSetupInProgressException
    code: string
    docs: string
    message: string
    tip: string
end

local record ServiceException
    code: string
    docs: string
    message: string
    tip: string
end

local record UnauthenticatedException
    code: string
    docs: string
    message: string
    tip: string
end

local record AccessDeniedException
    code: string
    docs: string
    message: string
    tip: string
end

local record AccountSetupInProgressException
    code: string
    docs: string
    message: string
    tip: string
end

local record InvalidInputException
    code: string
    docs: string
    message: string
    tip: string
end

local record NotFoundException
    code: string
    docs: string
    message: string
    tip: string
end

local record OperationFailureException
    code: string
    docs: string
    message: string
    tip: string
end

local record RegionSetupInProgressException
    code: string
    docs: string
    message: string
    tip: string
end

local record ServiceException
    code: string
    docs: string
    message: string
    tip: string
end

local record UnauthenticatedException
    code: string
    docs: string
    message: string
    tip: string
end

local record AccessDeniedException
    code: string
    docs: string
    message: string
    tip: string
end

local record AccountSetupInProgressException
    code: string
    docs: string
    message: string
    tip: string
end

local record InvalidInputException
    code: string
    docs: string
    message: string
    tip: string
end

local record NotFoundException
    code: string
    docs: string
    message: string
    tip: string
end

local record OperationFailureException
    code: string
    docs: string
    message: string
    tip: string
end

local record RegionSetupInProgressException
    code: string
    docs: string
    message: string
    tip: string
end

local record ServiceException
    code: string
    docs: string
    message: string
    tip: string
end

local record UnauthenticatedException
    code: string
    docs: string
    message: string
    tip: string
end

local record AccessDeniedException
    code: string
    docs: string
    message: string
    tip: string
end

local record AccountSetupInProgressException
    code: string
    docs: string
    message: string
    tip: string
end

local record InvalidInputException
    code: string
    docs: string
    message: string
    tip: string
end

local record NotFoundException
    code: string
    docs: string
    message: string
    tip: string
end

local record OperationFailureException
    code: string
    docs: string
    message: string
    tip: string
end

local record RegionSetupInProgressException
    code: string
    docs: string
    message: string
    tip: string
end

local record ServiceException
    code: string
    docs: string
    message: string
    tip: string
end

local record UnauthenticatedException
    code: string
    docs: string
    message: string
    tip: string
end

local record AccessDeniedException
    code: string
    docs: string
    message: string
    tip: string
end

local record AccountSetupInProgressException
    code: string
    docs: string
    message: string
    tip: string
end

local record InvalidInputException
    code: string
    docs: string
    message: string
    tip: string
end

local record NotFoundException
    code: string
    docs: string
    message: string
    tip: string
end

local record OperationFailureException
    code: string
    docs: string
    message: string
    tip: string
end

local record RegionSetupInProgressException
    code: string
    docs: string
    message: string
    tip: string
end

local record ServiceException
    code: string
    docs: string
    message: string
    tip: string
end

local record UnauthenticatedException
    code: string
    docs: string
    message: string
    tip: string
end

local record AccessDeniedException
    code: string
    docs: string
    message: string
    tip: string
end

local record AccountSetupInProgressException
    code: string
    docs: string
    message: string
    tip: string
end

local record InvalidInputException
    code: string
    docs: string
    message: string
    tip: string
end

local record NotFoundException
    code: string
    docs: string
    message: string
    tip: string
end

local record OperationFailureException
    code: string
    docs: string
    message: string
    tip: string
end

local record RegionSetupInProgressException
    code: string
    docs: string
    message: string
    tip: string
end

local record ServiceException
    code: string
    docs: string
    message: string
    tip: string
end

local record UnauthenticatedException
    code: string
    docs: string
    message: string
    tip: string
end

local record AccessDeniedException
    code: string
    docs: string
    message: string
    tip: string
end

local record AccountSetupInProgressException
    code: string
    docs: string
    message: string
    tip: string
end

local record InvalidInputException
    code: string
    docs: string
    message: string
    tip: string
end

local record NotFoundException
    code: string
    docs: string
    message: string
    tip: string
end

local record OperationFailureException
    code: string
    docs: string
    message: string
    tip: string
end

local record RegionSetupInProgressException
    code: string
    docs: string
    message: string
    tip: string
end

local record ServiceException
    code: string
    docs: string
    message: string
    tip: string
end

local record UnauthenticatedException
    code: string
    docs: string
    message: string
    tip: string
end

local record AccessDeniedException
    code: string
    docs: string
    message: string
    tip: string
end

local record AccountSetupInProgressException
    code: string
    docs: string
    message: string
    tip: string
end

local record InvalidInputException
    code: string
    docs: string
    message: string
    tip: string
end

local record NotFoundException
    code: string
    docs: string
    message: string
    tip: string
end

local record OperationFailureException
    code: string
    docs: string
    message: string
    tip: string
end

local record RegionSetupInProgressException
    code: string
    docs: string
    message: string
    tip: string
end

local record ServiceException
    code: string
    docs: string
    message: string
    tip: string
end

local record UnauthenticatedException
    code: string
    docs: string
    message: string
    tip: string
end

local record AccessDeniedException
    code: string
    docs: string
    message: string
    tip: string
end

local record AccountSetupInProgressException
    code: string
    docs: string
    message: string
    tip: string
end

local record InvalidInputException
    code: string
    docs: string
    message: string
    tip: string
end

local record NotFoundException
    code: string
    docs: string
    message: string
    tip: string
end

local record OperationFailureException
    code: string
    docs: string
    message: string
    tip: string
end

local record RegionSetupInProgressException
    code: string
    docs: string
    message: string
    tip: string
end

local record ServiceException
    code: string
    docs: string
    message: string
    tip: string
end

local record UnauthenticatedException
    code: string
    docs: string
    message: string
    tip: string
end

local record AccessDeniedException
    code: string
    docs: string
    message: string
    tip: string
end

local record AccountSetupInProgressException
    code: string
    docs: string
    message: string
    tip: string
end

local record InvalidInputException
    code: string
    docs: string
    message: string
    tip: string
end

local record NotFoundException
    code: string
    docs: string
    message: string
    tip: string
end

local record OperationFailureException
    code: string
    docs: string
    message: string
    tip: string
end

local record RegionSetupInProgressException
    code: string
    docs: string
    message: string
    tip: string
end

local record ServiceException
    code: string
    docs: string
    message: string
    tip: string
end

local record UnauthenticatedException
    code: string
    docs: string
    message: string
    tip: string
end

local record AccessDeniedException
    code: string
    docs: string
    message: string
    tip: string
end

local record AccountSetupInProgressException
    code: string
    docs: string
    message: string
    tip: string
end

local record InvalidInputException
    code: string
    docs: string
    message: string
    tip: string
end

local record RegionSetupInProgressException
    code: string
    docs: string
    message: string
    tip: string
end

local record ServiceException
    code: string
    docs: string
    message: string
    tip: string
end

local record UnauthenticatedException
    code: string
    docs: string
    message: string
    tip: string
end

local record AccessDeniedException
    code: string
    docs: string
    message: string
    tip: string
end

local record AccountSetupInProgressException
    code: string
    docs: string
    message: string
    tip: string
end

local record InvalidInputException
    code: string
    docs: string
    message: string
    tip: string
end

local record NotFoundException
    code: string
    docs: string
    message: string
    tip: string
end

local record OperationFailureException
    code: string
    docs: string
    message: string
    tip: string
end

local record RegionSetupInProgressException
    code: string
    docs: string
    message: string
    tip: string
end

local record ServiceException
    code: string
    docs: string
    message: string
    tip: string
end

local record UnauthenticatedException
    code: string
    docs: string
    message: string
    tip: string
end

local record AccessDeniedException
    code: string
    docs: string
    message: string
    tip: string
end

local record AccountSetupInProgressException
    code: string
    docs: string
    message: string
    tip: string
end

local record InvalidInputException
    code: string
    docs: string
    message: string
    tip: string
end

local record NotFoundException
    code: string
    docs: string
    message: string
    tip: string
end

local record OperationFailureException
    code: string
    docs: string
    message: string
    tip: string
end

local record RegionSetupInProgressException
    code: string
    docs: string
    message: string
    tip: string
end

local record ServiceException
    code: string
    docs: string
    message: string
    tip: string
end

local record UnauthenticatedException
    code: string
    docs: string
    message: string
    tip: string
end

local record AccessDeniedException
    code: string
    docs: string
    message: string
    tip: string
end

local record AccountSetupInProgressException
    code: string
    docs: string
    message: string
    tip: string
end

local record InvalidInputException
    code: string
    docs: string
    message: string
    tip: string
end

local record NotFoundException
    code: string
    docs: string
    message: string
    tip: string
end

local record OperationFailureException
    code: string
    docs: string
    message: string
    tip: string
end

local record RegionSetupInProgressException
    code: string
    docs: string
    message: string
    tip: string
end

local record ServiceException
    code: string
    docs: string
    message: string
    tip: string
end

local record UnauthenticatedException
    code: string
    docs: string
    message: string
    tip: string
end

local record AccessDeniedException
    code: string
    docs: string
    message: string
    tip: string
end

local record AccountSetupInProgressException
    code: string
    docs: string
    message: string
    tip: string
end

local record InvalidInputException
    code: string
    docs: string
    message: string
    tip: string
end

local record NotFoundException
    code: string
    docs: string
    message: string
    tip: string
end

local record OperationFailureException
    code: string
    docs: string
    message: string
    tip: string
end

local record RegionSetupInProgressException
    code: string
    docs: string
    message: string
    tip: string
end

local record ServiceException
    code: string
    docs: string
    message: string
    tip: string
end

local record UnauthenticatedException
    code: string
    docs: string
    message: string
    tip: string
end

local record AccessDeniedException
    code: string
    docs: string
    message: string
    tip: string
end

local record AccountSetupInProgressException
    code: string
    docs: string
    message: string
    tip: string
end

local record InvalidInputException
    code: string
    docs: string
    message: string
    tip: string
end

local record NotFoundException
    code: string
    docs: string
    message: string
    tip: string
end

local record OperationFailureException
    code: string
    docs: string
    message: string
    tip: string
end

local record RegionSetupInProgressException
    code: string
    docs: string
    message: string
    tip: string
end

local record ServiceException
    code: string
    docs: string
    message: string
    tip: string
end

local record UnauthenticatedException
    code: string
    docs: string
    message: string
    tip: string
end

local record AccessDeniedException
    code: string
    docs: string
    message: string
    tip: string
end

local record AccountSetupInProgressException
    code: string
    docs: string
    message: string
    tip: string
end

local record InvalidInputException
    code: string
    docs: string
    message: string
    tip: string
end

local record NotFoundException
    code: string
    docs: string
    message: string
    tip: string
end

local record OperationFailureException
    code: string
    docs: string
    message: string
    tip: string
end

local record RegionSetupInProgressException
    code: string
    docs: string
    message: string
    tip: string
end

local record ServiceException
    code: string
    docs: string
    message: string
    tip: string
end

local record UnauthenticatedException
    code: string
    docs: string
    message: string
    tip: string
end

local record AccessDeniedException
    code: string
    docs: string
    message: string
    tip: string
end

local record AccountSetupInProgressException
    code: string
    docs: string
    message: string
    tip: string
end

local record InvalidInputException
    code: string
    docs: string
    message: string
    tip: string
end

local record NotFoundException
    code: string
    docs: string
    message: string
    tip: string
end

local record OperationFailureException
    code: string
    docs: string
    message: string
    tip: string
end

local record RegionSetupInProgressException
    code: string
    docs: string
    message: string
    tip: string
end

local record ServiceException
    code: string
    docs: string
    message: string
    tip: string
end

local record UnauthenticatedException
    code: string
    docs: string
    message: string
    tip: string
end

local record AccessDeniedException
    code: string
    docs: string
    message: string
    tip: string
end

local record AccountSetupInProgressException
    code: string
    docs: string
    message: string
    tip: string
end

local record InvalidInputException
    code: string
    docs: string
    message: string
    tip: string
end

local record NotFoundException
    code: string
    docs: string
    message: string
    tip: string
end

local record OperationFailureException
    code: string
    docs: string
    message: string
    tip: string
end

local record RegionSetupInProgressException
    code: string
    docs: string
    message: string
    tip: string
end

local record ServiceException
    code: string
    docs: string
    message: string
    tip: string
end

local record UnauthenticatedException
    code: string
    docs: string
    message: string
    tip: string
end

local record AccessDeniedException
    code: string
    docs: string
    message: string
    tip: string
end

local record AccountSetupInProgressException
    code: string
    docs: string
    message: string
    tip: string
end

local record InvalidInputException
    code: string
    docs: string
    message: string
    tip: string
end

local record NotFoundException
    code: string
    docs: string
    message: string
    tip: string
end

local record OperationFailureException
    code: string
    docs: string
    message: string
    tip: string
end

local record RegionSetupInProgressException
    code: string
    docs: string
    message: string
    tip: string
end

local record ServiceException
    code: string
    docs: string
    message: string
    tip: string
end

local record UnauthenticatedException
    code: string
    docs: string
    message: string
    tip: string
end

local record AccessDeniedException
    code: string
    docs: string
    message: string
    tip: string
end

local record AccountSetupInProgressException
    code: string
    docs: string
    message: string
    tip: string
end

local record InvalidInputException
    code: string
    docs: string
    message: string
    tip: string
end

local record NotFoundException
    code: string
    docs: string
    message: string
    tip: string
end

local record OperationFailureException
    code: string
    docs: string
    message: string
    tip: string
end

local record RegionSetupInProgressException
    code: string
    docs: string
    message: string
    tip: string
end

local record ServiceException
    code: string
    docs: string
    message: string
    tip: string
end

local record UnauthenticatedException
    code: string
    docs: string
    message: string
    tip: string
end

local record AccessDeniedException
    code: string
    docs: string
    message: string
    tip: string
end

local record AccountSetupInProgressException
    code: string
    docs: string
    message: string
    tip: string
end

local record InvalidInputException
    code: string
    docs: string
    message: string
    tip: string
end

local record NotFoundException
    code: string
    docs: string
    message: string
    tip: string
end

local record OperationFailureException
    code: string
    docs: string
    message: string
    tip: string
end

local record RegionSetupInProgressException
    code: string
    docs: string
    message: string
    tip: string
end

local record ServiceException
    code: string
    docs: string
    message: string
    tip: string
end

local record UnauthenticatedException
    code: string
    docs: string
    message: string
    tip: string
end

local record AccessDeniedException
    code: string
    docs: string
    message: string
    tip: string
end

local record AccountSetupInProgressException
    code: string
    docs: string
    message: string
    tip: string
end

local record InvalidInputException
    code: string
    docs: string
    message: string
    tip: string
end

local record NotFoundException
    code: string
    docs: string
    message: string
    tip: string
end

local record OperationFailureException
    code: string
    docs: string
    message: string
    tip: string
end

local record RegionSetupInProgressException
    code: string
    docs: string
    message: string
    tip: string
end

local record ServiceException
    code: string
    docs: string
    message: string
    tip: string
end

local record UnauthenticatedException
    code: string
    docs: string
    message: string
    tip: string
end

local record AccessDeniedException
    code: string
    docs: string
    message: string
    tip: string
end

local record AccountSetupInProgressException
    code: string
    docs: string
    message: string
    tip: string
end

local record InvalidInputException
    code: string
    docs: string
    message: string
    tip: string
end

local record NotFoundException
    code: string
    docs: string
    message: string
    tip: string
end

local record OperationFailureException
    code: string
    docs: string
    message: string
    tip: string
end

local record RegionSetupInProgressException
    code: string
    docs: string
    message: string
    tip: string
end

local record ServiceException
    code: string
    docs: string
    message: string
    tip: string
end

local record UnauthenticatedException
    code: string
    docs: string
    message: string
    tip: string
end

local record AccessDeniedException
    code: string
    docs: string
    message: string
    tip: string
end

local record AccountSetupInProgressException
    code: string
    docs: string
    message: string
    tip: string
end

local record InvalidInputException
    code: string
    docs: string
    message: string
    tip: string
end

local record NotFoundException
    code: string
    docs: string
    message: string
    tip: string
end

local record OperationFailureException
    code: string
    docs: string
    message: string
    tip: string
end

local record RegionSetupInProgressException
    code: string
    docs: string
    message: string
    tip: string
end

local record ServiceException
    code: string
    docs: string
    message: string
    tip: string
end

local record UnauthenticatedException
    code: string
    docs: string
    message: string
    tip: string
end

local record AccessDeniedException
    code: string
    docs: string
    message: string
    tip: string
end

local record AccountSetupInProgressException
    code: string
    docs: string
    message: string
    tip: string
end

local record InvalidInputException
    code: string
    docs: string
    message: string
    tip: string
end

local record NotFoundException
    code: string
    docs: string
    message: string
    tip: string
end

local record OperationFailureException
    code: string
    docs: string
    message: string
    tip: string
end

local record RegionSetupInProgressException
    code: string
    docs: string
    message: string
    tip: string
end

local record ServiceException
    code: string
    docs: string
    message: string
    tip: string
end

local record UnauthenticatedException
    code: string
    docs: string
    message: string
    tip: string
end

local record AccessDeniedException
    code: string
    docs: string
    message: string
    tip: string
end

local record AccountSetupInProgressException
    code: string
    docs: string
    message: string
    tip: string
end

local record InvalidInputException
    code: string
    docs: string
    message: string
    tip: string
end

local record NotFoundException
    code: string
    docs: string
    message: string
    tip: string
end

local record OperationFailureException
    code: string
    docs: string
    message: string
    tip: string
end

local record RegionSetupInProgressException
    code: string
    docs: string
    message: string
    tip: string
end

local record ServiceException
    code: string
    docs: string
    message: string
    tip: string
end

local record UnauthenticatedException
    code: string
    docs: string
    message: string
    tip: string
end

local record AccessDeniedException
    code: string
    docs: string
    message: string
    tip: string
end

local record InvalidInputException
    code: string
    docs: string
    message: string
    tip: string
end

local record NotFoundException
    code: string
    docs: string
    message: string
    tip: string
end

local record RegionSetupInProgressException
    code: string
    docs: string
    message: string
    tip: string
end

local record ServiceException
    code: string
    docs: string
    message: string
    tip: string
end

local record UnauthenticatedException
    code: string
    docs: string
    message: string
    tip: string
end

local record AccessDeniedException
    code: string
    docs: string
    message: string
    tip: string
end

local record AccountSetupInProgressException
    code: string
    docs: string
    message: string
    tip: string
end

local record InvalidInputException
    code: string
    docs: string
    message: string
    tip: string
end

local record NotFoundException
    code: string
    docs: string
    message: string
    tip: string
end

local record OperationFailureException
    code: string
    docs: string
    message: string
    tip: string
end

local record RegionSetupInProgressException
    code: string
    docs: string
    message: string
    tip: string
end

local record ServiceException
    code: string
    docs: string
    message: string
    tip: string
end

local record UnauthenticatedException
    code: string
    docs: string
    message: string
    tip: string
end

local record AccessDeniedException
    code: string
    docs: string
    message: string
    tip: string
end

local record AccountSetupInProgressException
    code: string
    docs: string
    message: string
    tip: string
end

local record InvalidInputException
    code: string
    docs: string
    message: string
    tip: string
end

local record NotFoundException
    code: string
    docs: string
    message: string
    tip: string
end

local record OperationFailureException
    code: string
    docs: string
    message: string
    tip: string
end

local record RegionSetupInProgressException
    code: string
    docs: string
    message: string
    tip: string
end

local record ServiceException
    code: string
    docs: string
    message: string
    tip: string
end

local record UnauthenticatedException
    code: string
    docs: string
    message: string
    tip: string
end

local record AccessDeniedException
    code: string
    docs: string
    message: string
    tip: string
end

local record AccountSetupInProgressException
    code: string
    docs: string
    message: string
    tip: string
end

local record InvalidInputException
    code: string
    docs: string
    message: string
    tip: string
end

local record NotFoundException
    code: string
    docs: string
    message: string
    tip: string
end

local record OperationFailureException
    code: string
    docs: string
    message: string
    tip: string
end

local record RegionSetupInProgressException
    code: string
    docs: string
    message: string
    tip: string
end

local record ServiceException
    code: string
    docs: string
    message: string
    tip: string
end

local record UnauthenticatedException
    code: string
    docs: string
    message: string
    tip: string
end

local record AccessDeniedException
    code: string
    docs: string
    message: string
    tip: string
end

local record AccountSetupInProgressException
    code: string
    docs: string
    message: string
    tip: string
end

local record InvalidInputException
    code: string
    docs: string
    message: string
    tip: string
end

local record NotFoundException
    code: string
    docs: string
    message: string
    tip: string
end

local record OperationFailureException
    code: string
    docs: string
    message: string
    tip: string
end

local record RegionSetupInProgressException
    code: string
    docs: string
    message: string
    tip: string
end

local record ServiceException
    code: string
    docs: string
    message: string
    tip: string
end

local record UnauthenticatedException
    code: string
    docs: string
    message: string
    tip: string
end

local record AccessDeniedException
    code: string
    docs: string
    message: string
    tip: string
end

local record AccountSetupInProgressException
    code: string
    docs: string
    message: string
    tip: string
end

local record InvalidInputException
    code: string
    docs: string
    message: string
    tip: string
end

local record NotFoundException
    code: string
    docs: string
    message: string
    tip: string
end

local record OperationFailureException
    code: string
    docs: string
    message: string
    tip: string
end

local record RegionSetupInProgressException
    code: string
    docs: string
    message: string
    tip: string
end

local record ServiceException
    code: string
    docs: string
    message: string
    tip: string
end

local record UnauthenticatedException
    code: string
    docs: string
    message: string
    tip: string
end

local record AccessDeniedException
    code: string
    docs: string
    message: string
    tip: string
end

local record AccountSetupInProgressException
    code: string
    docs: string
    message: string
    tip: string
end

local record InvalidInputException
    code: string
    docs: string
    message: string
    tip: string
end

local record NotFoundException
    code: string
    docs: string
    message: string
    tip: string
end

local record OperationFailureException
    code: string
    docs: string
    message: string
    tip: string
end

local record RegionSetupInProgressException
    code: string
    docs: string
    message: string
    tip: string
end

local record ServiceException
    code: string
    docs: string
    message: string
    tip: string
end

local record UnauthenticatedException
    code: string
    docs: string
    message: string
    tip: string
end

local record AccessDeniedException
    code: string
    docs: string
    message: string
    tip: string
end

local record InvalidInputException
    code: string
    docs: string
    message: string
    tip: string
end

local record NotFoundException
    code: string
    docs: string
    message: string
    tip: string
end

local record OperationFailureException
    code: string
    docs: string
    message: string
    tip: string
end

local record RegionSetupInProgressException
    code: string
    docs: string
    message: string
    tip: string
end

local record ServiceException
    code: string
    docs: string
    message: string
    tip: string
end

local record UnauthenticatedException
    code: string
    docs: string
    message: string
    tip: string
end

local record AccessDeniedException
    code: string
    docs: string
    message: string
    tip: string
end

local record AccountSetupInProgressException
    code: string
    docs: string
    message: string
    tip: string
end

local record InvalidInputException
    code: string
    docs: string
    message: string
    tip: string
end

local record NotFoundException
    code: string
    docs: string
    message: string
    tip: string
end

local record OperationFailureException
    code: string
    docs: string
    message: string
    tip: string
end

local record RegionSetupInProgressException
    code: string
    docs: string
    message: string
    tip: string
end

local record ServiceException
    code: string
    docs: string
    message: string
    tip: string
end

local record UnauthenticatedException
    code: string
    docs: string
    message: string
    tip: string
end

local record AccessDeniedException
    code: string
    docs: string
    message: string
    tip: string
end

local record AccountSetupInProgressException
    code: string
    docs: string
    message: string
    tip: string
end

local record InvalidInputException
    code: string
    docs: string
    message: string
    tip: string
end

local record NotFoundException
    code: string
    docs: string
    message: string
    tip: string
end

local record OperationFailureException
    code: string
    docs: string
    message: string
    tip: string
end

local record RegionSetupInProgressException
    code: string
    docs: string
    message: string
    tip: string
end

local record ServiceException
    code: string
    docs: string
    message: string
    tip: string
end

local record UnauthenticatedException
    code: string
    docs: string
    message: string
    tip: string
end

local record AccessDeniedException
    code: string
    docs: string
    message: string
    tip: string
end

local record AccountSetupInProgressException
    code: string
    docs: string
    message: string
    tip: string
end

local record InvalidInputException
    code: string
    docs: string
    message: string
    tip: string
end

local record NotFoundException
    code: string
    docs: string
    message: string
    tip: string
end

local record OperationFailureException
    code: string
    docs: string
    message: string
    tip: string
end

local record RegionSetupInProgressException
    code: string
    docs: string
    message: string
    tip: string
end

local record ServiceException
    code: string
    docs: string
    message: string
    tip: string
end

local record UnauthenticatedException
    code: string
    docs: string
    message: string
    tip: string
end

local record AccessDeniedException
    code: string
    docs: string
    message: string
    tip: string
end

local record InvalidInputException
    code: string
    docs: string
    message: string
    tip: string
end

local record NotFoundException
    code: string
    docs: string
    message: string
    tip: string
end

local record RegionSetupInProgressException
    code: string
    docs: string
    message: string
    tip: string
end

local record ServiceException
    code: string
    docs: string
    message: string
    tip: string
end

local record UnauthenticatedException
    code: string
    docs: string
    message: string
    tip: string
end

local record AccessDeniedException
    code: string
    docs: string
    message: string
    tip: string
end

local record AccountSetupInProgressException
    code: string
    docs: string
    message: string
    tip: string
end

local record InvalidInputException
    code: string
    docs: string
    message: string
    tip: string
end

local record NotFoundException
    code: string
    docs: string
    message: string
    tip: string
end

local record OperationFailureException
    code: string
    docs: string
    message: string
    tip: string
end

local record RegionSetupInProgressException
    code: string
    docs: string
    message: string
    tip: string
end

local record ServiceException
    code: string
    docs: string
    message: string
    tip: string
end

local record UnauthenticatedException
    code: string
    docs: string
    message: string
    tip: string
end

local record AccessDeniedException
    code: string
    docs: string
    message: string
    tip: string
end

local record InvalidInputException
    code: string
    docs: string
    message: string
    tip: string
end

local record NotFoundException
    code: string
    docs: string
    message: string
    tip: string
end

local record OperationFailureException
    code: string
    docs: string
    message: string
    tip: string
end

local record ServiceException
    code: string
    docs: string
    message: string
    tip: string
end

local record UnauthenticatedException
    code: string
    docs: string
    message: string
    tip: string
end

local record AccessDeniedException
    code: string
    docs: string
    message: string
    tip: string
end

local record InvalidInputException
    code: string
    docs: string
    message: string
    tip: string
end

local record NotFoundException
    code: string
    docs: string
    message: string
    tip: string
end

local record OperationFailureException
    code: string
    docs: string
    message: string
    tip: string
end

local record RegionSetupInProgressException
    code: string
    docs: string
    message: string
    tip: string
end

local record ServiceException
    code: string
    docs: string
    message: string
    tip: string
end

local record UnauthenticatedException
    code: string
    docs: string
    message: string
    tip: string
end

local record AccessDeniedException
    code: string
    docs: string
    message: string
    tip: string
end

local record AccountSetupInProgressException
    code: string
    docs: string
    message: string
    tip: string
end

local record InvalidInputException
    code: string
    docs: string
    message: string
    tip: string
end

local record NotFoundException
    code: string
    docs: string
    message: string
    tip: string
end

local record OperationFailureException
    code: string
    docs: string
    message: string
    tip: string
end

local record RegionSetupInProgressException
    code: string
    docs: string
    message: string
    tip: string
end

local record ServiceException
    code: string
    docs: string
    message: string
    tip: string
end

local record UnauthenticatedException
    code: string
    docs: string
    message: string
    tip: string
end

local record AccessDeniedException
    code: string
    docs: string
    message: string
    tip: string
end

local record InvalidInputException
    code: string
    docs: string
    message: string
    tip: string
end

local record NotFoundException
    code: string
    docs: string
    message: string
    tip: string
end

local record RegionSetupInProgressException
    code: string
    docs: string
    message: string
    tip: string
end

local record ServiceException
    code: string
    docs: string
    message: string
    tip: string
end

local record UnauthenticatedException
    code: string
    docs: string
    message: string
    tip: string
end

local record AccessDeniedException
    code: string
    docs: string
    message: string
    tip: string
end

local record InvalidInputException
    code: string
    docs: string
    message: string
    tip: string
end

local record NotFoundException
    code: string
    docs: string
    message: string
    tip: string
end

local record RegionSetupInProgressException
    code: string
    docs: string
    message: string
    tip: string
end

local record ServiceException
    code: string
    docs: string
    message: string
    tip: string
end

local record UnauthenticatedException
    code: string
    docs: string
    message: string
    tip: string
end

local record AccessDeniedException
    code: string
    docs: string
    message: string
    tip: string
end

local record InvalidInputException
    code: string
    docs: string
    message: string
    tip: string
end

local record NotFoundException
    code: string
    docs: string
    message: string
    tip: string
end

local record RegionSetupInProgressException
    code: string
    docs: string
    message: string
    tip: string
end

local record ServiceException
    code: string
    docs: string
    message: string
    tip: string
end

local record UnauthenticatedException
    code: string
    docs: string
    message: string
    tip: string
end

local record AccessDeniedException
    code: string
    docs: string
    message: string
    tip: string
end

local record AccountSetupInProgressException
    code: string
    docs: string
    message: string
    tip: string
end

local record InvalidInputException
    code: string
    docs: string
    message: string
    tip: string
end

local record NotFoundException
    code: string
    docs: string
    message: string
    tip: string
end

local record OperationFailureException
    code: string
    docs: string
    message: string
    tip: string
end

local record RegionSetupInProgressException
    code: string
    docs: string
    message: string
    tip: string
end

local record ServiceException
    code: string
    docs: string
    message: string
    tip: string
end

local record UnauthenticatedException
    code: string
    docs: string
    message: string
    tip: string
end

local record AccessDeniedException
    code: string
    docs: string
    message: string
    tip: string
end

local record AccountSetupInProgressException
    code: string
    docs: string
    message: string
    tip: string
end

local record InvalidInputException
    code: string
    docs: string
    message: string
    tip: string
end

local record NotFoundException
    code: string
    docs: string
    message: string
    tip: string
end

local record OperationFailureException
    code: string
    docs: string
    message: string
    tip: string
end

local record RegionSetupInProgressException
    code: string
    docs: string
    message: string
    tip: string
end

local record ServiceException
    code: string
    docs: string
    message: string
    tip: string
end

local record UnauthenticatedException
    code: string
    docs: string
    message: string
    tip: string
end

local record AccessDeniedException
    code: string
    docs: string
    message: string
    tip: string
end

local record InvalidInputException
    code: string
    docs: string
    message: string
    tip: string
end

local record NotFoundException
    code: string
    docs: string
    message: string
    tip: string
end

local record RegionSetupInProgressException
    code: string
    docs: string
    message: string
    tip: string
end

local record ServiceException
    code: string
    docs: string
    message: string
    tip: string
end

local record UnauthenticatedException
    code: string
    docs: string
    message: string
    tip: string
end

local record AccessDeniedException
    code: string
    docs: string
    message: string
    tip: string
end

local record AccountSetupInProgressException
    code: string
    docs: string
    message: string
    tip: string
end

local record InvalidInputException
    code: string
    docs: string
    message: string
    tip: string
end

local record NotFoundException
    code: string
    docs: string
    message: string
    tip: string
end

local record OperationFailureException
    code: string
    docs: string
    message: string
    tip: string
end

local record RegionSetupInProgressException
    code: string
    docs: string
    message: string
    tip: string
end

local record ServiceException
    code: string
    docs: string
    message: string
    tip: string
end

local record UnauthenticatedException
    code: string
    docs: string
    message: string
    tip: string
end

local record AccessDeniedException
    code: string
    docs: string
    message: string
    tip: string
end

local record AccountSetupInProgressException
    code: string
    docs: string
    message: string
    tip: string
end

local record InvalidInputException
    code: string
    docs: string
    message: string
    tip: string
end

local record NotFoundException
    code: string
    docs: string
    message: string
    tip: string
end

local record OperationFailureException
    code: string
    docs: string
    message: string
    tip: string
end

local record RegionSetupInProgressException
    code: string
    docs: string
    message: string
    tip: string
end

local record ServiceException
    code: string
    docs: string
    message: string
    tip: string
end

local record UnauthenticatedException
    code: string
    docs: string
    message: string
    tip: string
end

local record AccessDeniedException
    code: string
    docs: string
    message: string
    tip: string
end

local record AccountSetupInProgressException
    code: string
    docs: string
    message: string
    tip: string
end

local record InvalidInputException
    code: string
    docs: string
    message: string
    tip: string
end

local record NotFoundException
    code: string
    docs: string
    message: string
    tip: string
end

local record OperationFailureException
    code: string
    docs: string
    message: string
    tip: string
end

local record RegionSetupInProgressException
    code: string
    docs: string
    message: string
    tip: string
end

local record ServiceException
    code: string
    docs: string
    message: string
    tip: string
end

local record UnauthenticatedException
    code: string
    docs: string
    message: string
    tip: string
end

local record AccessDeniedException
    code: string
    docs: string
    message: string
    tip: string
end

local record InvalidInputException
    code: string
    docs: string
    message: string
    tip: string
end

local record NotFoundException
    code: string
    docs: string
    message: string
    tip: string
end

local record OperationFailureException
    code: string
    docs: string
    message: string
    tip: string
end

local record RegionSetupInProgressException
    code: string
    docs: string
    message: string
    tip: string
end

local record ServiceException
    code: string
    docs: string
    message: string
    tip: string
end

local record UnauthenticatedException
    code: string
    docs: string
    message: string
    tip: string
end

local record AccessDeniedException
    code: string
    docs: string
    message: string
    tip: string
end

local record AccountSetupInProgressException
    code: string
    docs: string
    message: string
    tip: string
end

local record InvalidInputException
    code: string
    docs: string
    message: string
    tip: string
end

local record NotFoundException
    code: string
    docs: string
    message: string
    tip: string
end

local record OperationFailureException
    code: string
    docs: string
    message: string
    tip: string
end

local record RegionSetupInProgressException
    code: string
    docs: string
    message: string
    tip: string
end

local record ServiceException
    code: string
    docs: string
    message: string
    tip: string
end

local record UnauthenticatedException
    code: string
    docs: string
    message: string
    tip: string
end

local record AccessDeniedException
    code: string
    docs: string
    message: string
    tip: string
end

local record AccountSetupInProgressException
    code: string
    docs: string
    message: string
    tip: string
end

local record InvalidInputException
    code: string
    docs: string
    message: string
    tip: string
end

local record NotFoundException
    code: string
    docs: string
    message: string
    tip: string
end

local record OperationFailureException
    code: string
    docs: string
    message: string
    tip: string
end

local record RegionSetupInProgressException
    code: string
    docs: string
    message: string
    tip: string
end

local record ServiceException
    code: string
    docs: string
    message: string
    tip: string
end

local record UnauthenticatedException
    code: string
    docs: string
    message: string
    tip: string
end

local record AccessDeniedException
    code: string
    docs: string
    message: string
    tip: string
end

local record InvalidInputException
    code: string
    docs: string
    message: string
    tip: string
end

local record NotFoundException
    code: string
    docs: string
    message: string
    tip: string
end

local record RegionSetupInProgressException
    code: string
    docs: string
    message: string
    tip: string
end

local record ServiceException
    code: string
    docs: string
    message: string
    tip: string
end

local record UnauthenticatedException
    code: string
    docs: string
    message: string
    tip: string
end

local record AccessDeniedException
    code: string
    docs: string
    message: string
    tip: string
end

local record InvalidInputException
    code: string
    docs: string
    message: string
    tip: string
end

local record NotFoundException
    code: string
    docs: string
    message: string
    tip: string
end

local record RegionSetupInProgressException
    code: string
    docs: string
    message: string
    tip: string
end

local record ServiceException
    code: string
    docs: string
    message: string
    tip: string
end

local record UnauthenticatedException
    code: string
    docs: string
    message: string
    tip: string
end

local record AccessDeniedException
    code: string
    docs: string
    message: string
    tip: string
end

local record InvalidInputException
    code: string
    docs: string
    message: string
    tip: string
end

local record NotFoundException
    code: string
    docs: string
    message: string
    tip: string
end

local record RegionSetupInProgressException
    code: string
    docs: string
    message: string
    tip: string
end

local record ServiceException
    code: string
    docs: string
    message: string
    tip: string
end

local record UnauthenticatedException
    code: string
    docs: string
    message: string
    tip: string
end

local record AccessDeniedException
    code: string
    docs: string
    message: string
    tip: string
end

local record InvalidInputException
    code: string
    docs: string
    message: string
    tip: string
end

local record NotFoundException
    code: string
    docs: string
    message: string
    tip: string
end

local record OperationFailureException
    code: string
    docs: string
    message: string
    tip: string
end

local record ServiceException
    code: string
    docs: string
    message: string
    tip: string
end

local record UnauthenticatedException
    code: string
    docs: string
    message: string
    tip: string
end

local record AccessDeniedException
    code: string
    docs: string
    message: string
    tip: string
end

local record InvalidInputException
    code: string
    docs: string
    message: string
    tip: string
end

local record NotFoundException
    code: string
    docs: string
    message: string
    tip: string
end

local record OperationFailureException
    code: string
    docs: string
    message: string
    tip: string
end

local record ServiceException
    code: string
    docs: string
    message: string
    tip: string
end

local record UnauthenticatedException
    code: string
    docs: string
    message: string
    tip: string
end

local record AccessDeniedException
    code: string
    docs: string
    message: string
    tip: string
end

local record AccountSetupInProgressException
    code: string
    docs: string
    message: string
    tip: string
end

local record InvalidInputException
    code: string
    docs: string
    message: string
    tip: string
end

local record NotFoundException
    code: string
    docs: string
    message: string
    tip: string
end

local record OperationFailureException
    code: string
    docs: string
    message: string
    tip: string
end

local record RegionSetupInProgressException
    code: string
    docs: string
    message: string
    tip: string
end

local record ServiceException
    code: string
    docs: string
    message: string
    tip: string
end

local record UnauthenticatedException
    code: string
    docs: string
    message: string
    tip: string
end

local record AccessDeniedException
    code: string
    docs: string
    message: string
    tip: string
end

local record AccountSetupInProgressException
    code: string
    docs: string
    message: string
    tip: string
end

local record InvalidInputException
    code: string
    docs: string
    message: string
    tip: string
end

local record NotFoundException
    code: string
    docs: string
    message: string
    tip: string
end

local record OperationFailureException
    code: string
    docs: string
    message: string
    tip: string
end

local record RegionSetupInProgressException
    code: string
    docs: string
    message: string
    tip: string
end

local record ServiceException
    code: string
    docs: string
    message: string
    tip: string
end

local record UnauthenticatedException
    code: string
    docs: string
    message: string
    tip: string
end

local record AccessDeniedException
    code: string
    docs: string
    message: string
    tip: string
end

local record AccountSetupInProgressException
    code: string
    docs: string
    message: string
    tip: string
end

local record InvalidInputException
    code: string
    docs: string
    message: string
    tip: string
end

local record NotFoundException
    code: string
    docs: string
    message: string
    tip: string
end

local record OperationFailureException
    code: string
    docs: string
    message: string
    tip: string
end

local record RegionSetupInProgressException
    code: string
    docs: string
    message: string
    tip: string
end

local record ServiceException
    code: string
    docs: string
    message: string
    tip: string
end

local record UnauthenticatedException
    code: string
    docs: string
    message: string
    tip: string
end

local record AccessDeniedException
    code: string
    docs: string
    message: string
    tip: string
end

local record AccountSetupInProgressException
    code: string
    docs: string
    message: string
    tip: string
end

local record InvalidInputException
    code: string
    docs: string
    message: string
    tip: string
end

local record NotFoundException
    code: string
    docs: string
    message: string
    tip: string
end

local record OperationFailureException
    code: string
    docs: string
    message: string
    tip: string
end

local record RegionSetupInProgressException
    code: string
    docs: string
    message: string
    tip: string
end

local record ServiceException
    code: string
    docs: string
    message: string
    tip: string
end

local record UnauthenticatedException
    code: string
    docs: string
    message: string
    tip: string
end

local record AccessDeniedException
    code: string
    docs: string
    message: string
    tip: string
end

local record AccountSetupInProgressException
    code: string
    docs: string
    message: string
    tip: string
end

local record InvalidInputException
    code: string
    docs: string
    message: string
    tip: string
end

local record NotFoundException
    code: string
    docs: string
    message: string
    tip: string
end

local record OperationFailureException
    code: string
    docs: string
    message: string
    tip: string
end

local record RegionSetupInProgressException
    code: string
    docs: string
    message: string
    tip: string
end

local record ServiceException
    code: string
    docs: string
    message: string
    tip: string
end

local record UnauthenticatedException
    code: string
    docs: string
    message: string
    tip: string
end

local type CertificateProvider = "LetsEncrypt"

local type ViewerMinimumTlsProtocolVersionEnum = "TLSv1.1_2016" | "TLSv1.2_2018" | "TLSv1.2_2019" | "TLSv1.2_2021"

local type LoadBalancerAttributeName = "HealthCheckPath" | "SessionStickinessEnabled" | "SessionStickiness_LB_CookieDurationSeconds" | "HttpsRedirectionEnabled" | "TlsPolicyName"

local type LoadBalancerMetricName = "ClientTLSNegotiationErrorCount" | "HealthyHostCount" | "UnhealthyHostCount" | "HTTPCode_LB_4XX_Count" | "HTTPCode_LB_5XX_Count" | "HTTPCode_Instance_2XX_Count" | "HTTPCode_Instance_3XX_Count" | "HTTPCode_Instance_4XX_Count" | "HTTPCode_Instance_5XX_Count" | "InstanceResponseTime" | "RejectedConnectionCount" | "RequestCount"

local type ComparisonOperator = "GreaterThanOrEqualToThreshold" | "GreaterThanThreshold" | "LessThanThreshold" | "LessThanOrEqualToThreshold"

local type AlarmState = "OK" | "ALARM" | "INSUFFICIENT_DATA"

local type DistributionMetricName = "Requests" | "BytesDownloaded" | "BytesUploaded" | "TotalErrorRate" | "Http4xxErrorRate" | "Http5xxErrorRate"

local type InstanceMetricName = "CPUUtilization" | "NetworkIn" | "NetworkOut" | "StatusCheckFailed" | "StatusCheckFailed_Instance" | "StatusCheckFailed_System" | "BurstCapacityTime" | "BurstCapacityPercentage" | "MetadataNoToken"

local type HttpTokens = "optional" | "required"

local type RelationalDatabaseMetricName = "CPUUtilization" | "DatabaseConnections" | "DiskQueueDepth" | "FreeStorageSpace" | "NetworkReceiveThroughput" | "NetworkTransmitThroughput"

local type RegionName = "us-east-1" | "us-east-2" | "us-west-1" | "us-west-2" | "eu-west-1" | "eu-west-2" | "eu-west-3" | "eu-central-1" | "eu-north-1" | "ca-central-1" | "ap-south-1" | "ap-southeast-1" | "ap-southeast-2" | "ap-northeast-1" | "ap-northeast-2" | "ap-southeast-3" | "ap-southeast-5"

local type ContactMethodVerificationProtocol = "Email"

local type HttpEndpoint = "disabled" | "enabled"

local type Status = "startExpired" | "notStarted" | "started" | "starting" | "stopped" | "stopping" | "settingUpInstance" | "failedInstanceCreation" | "failedStartingGUISession" | "failedStoppingGUISession"

local type ContainerServicePowerName = "nano" | "micro" | "small" | "medium" | "large" | "xlarge"

local type InstanceAccessProtocol = "ssh" | "rdp"

local type MetricName = "CPUUtilization" | "NetworkIn" | "NetworkOut" | "StatusCheckFailed" | "StatusCheckFailed_Instance" | "StatusCheckFailed_System" | "ClientTLSNegotiationErrorCount" | "HealthyHostCount" | "UnhealthyHostCount" | "HTTPCode_LB_4XX_Count" | "HTTPCode_LB_5XX_Count" | "HTTPCode_Instance_2XX_Count" | "HTTPCode_Instance_3XX_Count" | "HTTPCode_Instance_4XX_Count" | "HTTPCode_Instance_5XX_Count" | "InstanceResponseTime" | "RejectedConnectionCount" | "RequestCount" | "DatabaseConnections" | "DiskQueueDepth" | "FreeStorageSpace" | "NetworkReceiveThroughput" | "NetworkTransmitThroughput" | "BurstCapacityTime" | "BurstCapacityPercentage"

local type BucketMetricName = "BucketSizeBytes" | "NumberOfObjects"

local type TreatMissingData = "breaching" | "notBreaching" | "ignore" | "missing"

local type HttpProtocolIpv6 = "disabled" | "enabled"

local type IpAddressType = "dualstack" | "ipv4" | "ipv6"

local type MetricUnit = "Seconds" | "Microseconds" | "Milliseconds" | "Bytes" | "Kilobytes" | "Megabytes" | "Gigabytes" | "Terabytes" | "Bits" | "Kilobits" | "Megabits" | "Gigabits" | "Terabits" | "Percent" | "Count" | "Bytes/Second" | "Kilobytes/Second" | "Megabytes/Second" | "Gigabytes/Second" | "Terabytes/Second" | "Bits/Second" | "Kilobits/Second" | "Megabits/Second" | "Gigabits/Second" | "Terabits/Second" | "Count/Second" | "None"

local type ResourceBucketAccess = "allow" | "deny"

local type RelationalDatabasePasswordVersion = "CURRENT" | "PREVIOUS" | "PENDING"

local type ContactProtocol = "Email" | "SMS"

local type AddOnType = "AutoSnapshot" | "StopInstanceOnIdle"

local type ContainerServiceMetricName = "CPUUtilization" | "MemoryUtilization"

local type ResourceType = "ContainerService" | "Instance" | "StaticIp" | "KeyPair" | "InstanceSnapshot" | "Domain" | "PeeredVpc" | "LoadBalancer" | "LoadBalancerTlsCertificate" | "Disk" | "DiskSnapshot" | "RelationalDatabase" | "RelationalDatabaseSnapshot" | "ExportSnapshotRecord" | "CloudFormationStackRecord" | "Alarm" | "ContactMethod" | "Distribution" | "Certificate" | "Bucket"

local type AppCategory = "LfR"

local record M
    AllocateStaticIpInput: AllocateStaticIpInput
    AllocateStaticIpOutput: AllocateStaticIpOutput
    AttachCertificateToDistributionInput: AttachCertificateToDistributionInput
    AttachCertificateToDistributionOutput: AttachCertificateToDistributionOutput
    AttachDiskInput: AttachDiskInput
    AttachDiskOutput: AttachDiskOutput
    AttachInstancesToLoadBalancerInput: AttachInstancesToLoadBalancerInput
    AttachInstancesToLoadBalancerOutput: AttachInstancesToLoadBalancerOutput
    AttachLoadBalancerTlsCertificateInput: AttachLoadBalancerTlsCertificateInput
    AttachLoadBalancerTlsCertificateOutput: AttachLoadBalancerTlsCertificateOutput
    AttachStaticIpInput: AttachStaticIpInput
    AttachStaticIpOutput: AttachStaticIpOutput
    CloseInstancePublicPortsInput: CloseInstancePublicPortsInput
    CloseInstancePublicPortsOutput: CloseInstancePublicPortsOutput
    CopySnapshotInput: CopySnapshotInput
    CopySnapshotOutput: CopySnapshotOutput
    CreateBucketInput: CreateBucketInput
    CreateBucketOutput: CreateBucketOutput
    CreateBucketAccessKeyInput: CreateBucketAccessKeyInput
    CreateBucketAccessKeyOutput: CreateBucketAccessKeyOutput
    CreateCertificateInput: CreateCertificateInput
    CreateCertificateOutput: CreateCertificateOutput
    CreateCloudFormationStackInput: CreateCloudFormationStackInput
    CreateCloudFormationStackOutput: CreateCloudFormationStackOutput
    CreateContactMethodInput: CreateContactMethodInput
    CreateContactMethodOutput: CreateContactMethodOutput
    CreateContainerServiceInput: CreateContainerServiceInput
    CreateContainerServiceOutput: CreateContainerServiceOutput
    CreateContainerServiceDeploymentInput: CreateContainerServiceDeploymentInput
    CreateContainerServiceDeploymentOutput: CreateContainerServiceDeploymentOutput
    CreateContainerServiceRegistryLoginInput: CreateContainerServiceRegistryLoginInput
    CreateContainerServiceRegistryLoginOutput: CreateContainerServiceRegistryLoginOutput
    CreateDiskInput: CreateDiskInput
    CreateDiskOutput: CreateDiskOutput
    CreateDiskFromSnapshotInput: CreateDiskFromSnapshotInput
    CreateDiskFromSnapshotOutput: CreateDiskFromSnapshotOutput
    CreateDiskSnapshotInput: CreateDiskSnapshotInput
    CreateDiskSnapshotOutput: CreateDiskSnapshotOutput
    CreateDistributionInput: CreateDistributionInput
    CreateDistributionOutput: CreateDistributionOutput
    CreateDomainInput: CreateDomainInput
    CreateDomainOutput: CreateDomainOutput
    CreateDomainEntryInput: CreateDomainEntryInput
    CreateDomainEntryOutput: CreateDomainEntryOutput
    CreateGUISessionAccessDetailsInput: CreateGUISessionAccessDetailsInput
    CreateGUISessionAccessDetailsOutput: CreateGUISessionAccessDetailsOutput
    CreateInstancesInput: CreateInstancesInput
    CreateInstancesOutput: CreateInstancesOutput
    CreateInstancesFromSnapshotInput: CreateInstancesFromSnapshotInput
    CreateInstancesFromSnapshotOutput: CreateInstancesFromSnapshotOutput
    CreateInstanceSnapshotInput: CreateInstanceSnapshotInput
    CreateInstanceSnapshotOutput: CreateInstanceSnapshotOutput
    CreateKeyPairInput: CreateKeyPairInput
    CreateKeyPairOutput: CreateKeyPairOutput
    CreateLoadBalancerInput: CreateLoadBalancerInput
    CreateLoadBalancerOutput: CreateLoadBalancerOutput
    CreateLoadBalancerTlsCertificateInput: CreateLoadBalancerTlsCertificateInput
    CreateLoadBalancerTlsCertificateOutput: CreateLoadBalancerTlsCertificateOutput
    CreateRelationalDatabaseInput: CreateRelationalDatabaseInput
    CreateRelationalDatabaseOutput: CreateRelationalDatabaseOutput
    CreateRelationalDatabaseFromSnapshotInput: CreateRelationalDatabaseFromSnapshotInput
    CreateRelationalDatabaseFromSnapshotOutput: CreateRelationalDatabaseFromSnapshotOutput
    CreateRelationalDatabaseSnapshotInput: CreateRelationalDatabaseSnapshotInput
    CreateRelationalDatabaseSnapshotOutput: CreateRelationalDatabaseSnapshotOutput
    DeleteAlarmInput: DeleteAlarmInput
    DeleteAlarmOutput: DeleteAlarmOutput
    DeleteAutoSnapshotInput: DeleteAutoSnapshotInput
    DeleteAutoSnapshotOutput: DeleteAutoSnapshotOutput
    DeleteBucketInput: DeleteBucketInput
    DeleteBucketOutput: DeleteBucketOutput
    DeleteBucketAccessKeyInput: DeleteBucketAccessKeyInput
    DeleteBucketAccessKeyOutput: DeleteBucketAccessKeyOutput
    DeleteCertificateInput: DeleteCertificateInput
    DeleteCertificateOutput: DeleteCertificateOutput
    DeleteContactMethodInput: DeleteContactMethodInput
    DeleteContactMethodOutput: DeleteContactMethodOutput
    DeleteContainerImageInput: DeleteContainerImageInput
    DeleteContainerImageOutput: DeleteContainerImageOutput
    DeleteContainerServiceInput: DeleteContainerServiceInput
    DeleteContainerServiceOutput: DeleteContainerServiceOutput
    DeleteDiskInput: DeleteDiskInput
    DeleteDiskOutput: DeleteDiskOutput
    DeleteDiskSnapshotInput: DeleteDiskSnapshotInput
    DeleteDiskSnapshotOutput: DeleteDiskSnapshotOutput
    DeleteDistributionInput: DeleteDistributionInput
    DeleteDistributionOutput: DeleteDistributionOutput
    DeleteDomainInput: DeleteDomainInput
    DeleteDomainOutput: DeleteDomainOutput
    DeleteDomainEntryInput: DeleteDomainEntryInput
    DeleteDomainEntryOutput: DeleteDomainEntryOutput
    DeleteInstanceInput: DeleteInstanceInput
    DeleteInstanceOutput: DeleteInstanceOutput
    DeleteInstanceSnapshotInput: DeleteInstanceSnapshotInput
    DeleteInstanceSnapshotOutput: DeleteInstanceSnapshotOutput
    DeleteKeyPairInput: DeleteKeyPairInput
    DeleteKeyPairOutput: DeleteKeyPairOutput
    DeleteKnownHostKeysInput: DeleteKnownHostKeysInput
    DeleteKnownHostKeysOutput: DeleteKnownHostKeysOutput
    DeleteLoadBalancerInput: DeleteLoadBalancerInput
    DeleteLoadBalancerOutput: DeleteLoadBalancerOutput
    DeleteLoadBalancerTlsCertificateInput: DeleteLoadBalancerTlsCertificateInput
    DeleteLoadBalancerTlsCertificateOutput: DeleteLoadBalancerTlsCertificateOutput
    DeleteRelationalDatabaseInput: DeleteRelationalDatabaseInput
    DeleteRelationalDatabaseOutput: DeleteRelationalDatabaseOutput
    DeleteRelationalDatabaseSnapshotInput: DeleteRelationalDatabaseSnapshotInput
    DeleteRelationalDatabaseSnapshotOutput: DeleteRelationalDatabaseSnapshotOutput
    DetachCertificateFromDistributionInput: DetachCertificateFromDistributionInput
    DetachCertificateFromDistributionOutput: DetachCertificateFromDistributionOutput
    DetachDiskInput: DetachDiskInput
    DetachDiskOutput: DetachDiskOutput
    DetachInstancesFromLoadBalancerInput: DetachInstancesFromLoadBalancerInput
    DetachInstancesFromLoadBalancerOutput: DetachInstancesFromLoadBalancerOutput
    DetachStaticIpInput: DetachStaticIpInput
    DetachStaticIpOutput: DetachStaticIpOutput
    DisableAddOnInput: DisableAddOnInput
    DisableAddOnOutput: DisableAddOnOutput
    DownloadDefaultKeyPairInput: DownloadDefaultKeyPairInput
    DownloadDefaultKeyPairOutput: DownloadDefaultKeyPairOutput
    EnableAddOnInput: EnableAddOnInput
    EnableAddOnOutput: EnableAddOnOutput
    ExportSnapshotInput: ExportSnapshotInput
    ExportSnapshotOutput: ExportSnapshotOutput
    GetActiveNamesInput: GetActiveNamesInput
    GetActiveNamesOutput: GetActiveNamesOutput
    GetAlarmsInput: GetAlarmsInput
    GetAlarmsOutput: GetAlarmsOutput
    GetAutoSnapshotsInput: GetAutoSnapshotsInput
    GetAutoSnapshotsOutput: GetAutoSnapshotsOutput
    GetBlueprintsInput: GetBlueprintsInput
    GetBlueprintsOutput: GetBlueprintsOutput
    GetBucketAccessKeysInput: GetBucketAccessKeysInput
    GetBucketAccessKeysOutput: GetBucketAccessKeysOutput
    GetBucketBundlesInput: GetBucketBundlesInput
    GetBucketBundlesOutput: GetBucketBundlesOutput
    GetBucketMetricDataInput: GetBucketMetricDataInput
    GetBucketMetricDataOutput: GetBucketMetricDataOutput
    GetBucketsInput: GetBucketsInput
    GetBucketsOutput: GetBucketsOutput
    GetBundlesInput: GetBundlesInput
    GetBundlesOutput: GetBundlesOutput
    GetCertificatesInput: GetCertificatesInput
    GetCertificatesOutput: GetCertificatesOutput
    GetCloudFormationStackRecordsInput: GetCloudFormationStackRecordsInput
    GetCloudFormationStackRecordsOutput: GetCloudFormationStackRecordsOutput
    GetContactMethodsInput: GetContactMethodsInput
    GetContactMethodsOutput: GetContactMethodsOutput
    GetContainerAPIMetadataInput: GetContainerAPIMetadataInput
    GetContainerAPIMetadataOutput: GetContainerAPIMetadataOutput
    GetContainerImagesInput: GetContainerImagesInput
    GetContainerImagesOutput: GetContainerImagesOutput
    GetContainerLogInput: GetContainerLogInput
    GetContainerLogOutput: GetContainerLogOutput
    GetContainerServiceDeploymentsInput: GetContainerServiceDeploymentsInput
    GetContainerServiceDeploymentsOutput: GetContainerServiceDeploymentsOutput
    GetContainerServiceMetricDataInput: GetContainerServiceMetricDataInput
    GetContainerServiceMetricDataOutput: GetContainerServiceMetricDataOutput
    GetContainerServicePowersInput: GetContainerServicePowersInput
    GetContainerServicePowersOutput: GetContainerServicePowersOutput
    GetContainerServicesInput: GetContainerServicesInput
    GetContainerServicesOutput: GetContainerServicesOutput
    GetCostEstimateInput: GetCostEstimateInput
    GetCostEstimateOutput: GetCostEstimateOutput
    GetDiskInput: GetDiskInput
    GetDiskOutput: GetDiskOutput
    GetDisksInput: GetDisksInput
    GetDisksOutput: GetDisksOutput
    GetDiskSnapshotInput: GetDiskSnapshotInput
    GetDiskSnapshotOutput: GetDiskSnapshotOutput
    GetDiskSnapshotsInput: GetDiskSnapshotsInput
    GetDiskSnapshotsOutput: GetDiskSnapshotsOutput
    GetDistributionBundlesInput: GetDistributionBundlesInput
    GetDistributionBundlesOutput: GetDistributionBundlesOutput
    GetDistributionLatestCacheResetInput: GetDistributionLatestCacheResetInput
    GetDistributionLatestCacheResetOutput: GetDistributionLatestCacheResetOutput
    GetDistributionMetricDataInput: GetDistributionMetricDataInput
    GetDistributionMetricDataOutput: GetDistributionMetricDataOutput
    GetDistributionsInput: GetDistributionsInput
    GetDistributionsOutput: GetDistributionsOutput
    GetDomainInput: GetDomainInput
    GetDomainOutput: GetDomainOutput
    GetDomainsInput: GetDomainsInput
    GetDomainsOutput: GetDomainsOutput
    GetExportSnapshotRecordsInput: GetExportSnapshotRecordsInput
    GetExportSnapshotRecordsOutput: GetExportSnapshotRecordsOutput
    GetInstanceInput: GetInstanceInput
    GetInstanceOutput: GetInstanceOutput
    GetInstanceAccessDetailsInput: GetInstanceAccessDetailsInput
    GetInstanceAccessDetailsOutput: GetInstanceAccessDetailsOutput
    GetInstanceMetricDataInput: GetInstanceMetricDataInput
    GetInstanceMetricDataOutput: GetInstanceMetricDataOutput
    GetInstancePortStatesInput: GetInstancePortStatesInput
    GetInstancePortStatesOutput: GetInstancePortStatesOutput
    GetInstancesInput: GetInstancesInput
    GetInstancesOutput: GetInstancesOutput
    GetInstanceSnapshotInput: GetInstanceSnapshotInput
    GetInstanceSnapshotOutput: GetInstanceSnapshotOutput
    GetInstanceSnapshotsInput: GetInstanceSnapshotsInput
    GetInstanceSnapshotsOutput: GetInstanceSnapshotsOutput
    GetInstanceStateInput: GetInstanceStateInput
    GetInstanceStateOutput: GetInstanceStateOutput
    GetKeyPairInput: GetKeyPairInput
    GetKeyPairOutput: GetKeyPairOutput
    GetKeyPairsInput: GetKeyPairsInput
    GetKeyPairsOutput: GetKeyPairsOutput
    GetLoadBalancerInput: GetLoadBalancerInput
    GetLoadBalancerOutput: GetLoadBalancerOutput
    GetLoadBalancerMetricDataInput: GetLoadBalancerMetricDataInput
    GetLoadBalancerMetricDataOutput: GetLoadBalancerMetricDataOutput
    GetLoadBalancersInput: GetLoadBalancersInput
    GetLoadBalancersOutput: GetLoadBalancersOutput
    GetLoadBalancerTlsCertificatesInput: GetLoadBalancerTlsCertificatesInput
    GetLoadBalancerTlsCertificatesOutput: GetLoadBalancerTlsCertificatesOutput
    GetLoadBalancerTlsPoliciesInput: GetLoadBalancerTlsPoliciesInput
    GetLoadBalancerTlsPoliciesOutput: GetLoadBalancerTlsPoliciesOutput
    GetOperationInput: GetOperationInput
    GetOperationOutput: GetOperationOutput
    GetOperationsInput: GetOperationsInput
    GetOperationsOutput: GetOperationsOutput
    GetOperationsForResourceInput: GetOperationsForResourceInput
    GetOperationsForResourceOutput: GetOperationsForResourceOutput
    GetRegionsInput: GetRegionsInput
    GetRegionsOutput: GetRegionsOutput
    GetRelationalDatabaseInput: GetRelationalDatabaseInput
    GetRelationalDatabaseOutput: GetRelationalDatabaseOutput
    GetRelationalDatabaseBlueprintsInput: GetRelationalDatabaseBlueprintsInput
    GetRelationalDatabaseBlueprintsOutput: GetRelationalDatabaseBlueprintsOutput
    GetRelationalDatabaseBundlesInput: GetRelationalDatabaseBundlesInput
    GetRelationalDatabaseBundlesOutput: GetRelationalDatabaseBundlesOutput
    GetRelationalDatabaseEventsInput: GetRelationalDatabaseEventsInput
    GetRelationalDatabaseEventsOutput: GetRelationalDatabaseEventsOutput
    GetRelationalDatabaseLogEventsInput: GetRelationalDatabaseLogEventsInput
    GetRelationalDatabaseLogEventsOutput: GetRelationalDatabaseLogEventsOutput
    GetRelationalDatabaseLogStreamsInput: GetRelationalDatabaseLogStreamsInput
    GetRelationalDatabaseLogStreamsOutput: GetRelationalDatabaseLogStreamsOutput
    GetRelationalDatabaseMasterUserPasswordInput: GetRelationalDatabaseMasterUserPasswordInput
    GetRelationalDatabaseMasterUserPasswordOutput: GetRelationalDatabaseMasterUserPasswordOutput
    GetRelationalDatabaseMetricDataInput: GetRelationalDatabaseMetricDataInput
    GetRelationalDatabaseMetricDataOutput: GetRelationalDatabaseMetricDataOutput
    GetRelationalDatabaseParametersInput: GetRelationalDatabaseParametersInput
    GetRelationalDatabaseParametersOutput: GetRelationalDatabaseParametersOutput
    GetRelationalDatabasesInput: GetRelationalDatabasesInput
    GetRelationalDatabasesOutput: GetRelationalDatabasesOutput
    GetRelationalDatabaseSnapshotInput: GetRelationalDatabaseSnapshotInput
    GetRelationalDatabaseSnapshotOutput: GetRelationalDatabaseSnapshotOutput
    GetRelationalDatabaseSnapshotsInput: GetRelationalDatabaseSnapshotsInput
    GetRelationalDatabaseSnapshotsOutput: GetRelationalDatabaseSnapshotsOutput
    GetSetupHistoryInput: GetSetupHistoryInput
    GetSetupHistoryOutput: GetSetupHistoryOutput
    GetStaticIpInput: GetStaticIpInput
    GetStaticIpOutput: GetStaticIpOutput
    GetStaticIpsInput: GetStaticIpsInput
    GetStaticIpsOutput: GetStaticIpsOutput
    ImportKeyPairInput: ImportKeyPairInput
    ImportKeyPairOutput: ImportKeyPairOutput
    IsVpcPeeredInput: IsVpcPeeredInput
    IsVpcPeeredOutput: IsVpcPeeredOutput
    OpenInstancePublicPortsInput: OpenInstancePublicPortsInput
    OpenInstancePublicPortsOutput: OpenInstancePublicPortsOutput
    PeerVpcInput: PeerVpcInput
    PeerVpcOutput: PeerVpcOutput
    PutAlarmInput: PutAlarmInput
    PutAlarmOutput: PutAlarmOutput
    PutInstancePublicPortsInput: PutInstancePublicPortsInput
    PutInstancePublicPortsOutput: PutInstancePublicPortsOutput
    RebootInstanceInput: RebootInstanceInput
    RebootInstanceOutput: RebootInstanceOutput
    RebootRelationalDatabaseInput: RebootRelationalDatabaseInput
    RebootRelationalDatabaseOutput: RebootRelationalDatabaseOutput
    RegisterContainerImageInput: RegisterContainerImageInput
    RegisterContainerImageOutput: RegisterContainerImageOutput
    ReleaseStaticIpInput: ReleaseStaticIpInput
    ReleaseStaticIpOutput: ReleaseStaticIpOutput
    ResetDistributionCacheInput: ResetDistributionCacheInput
    ResetDistributionCacheOutput: ResetDistributionCacheOutput
    SendContactMethodVerificationInput: SendContactMethodVerificationInput
    SendContactMethodVerificationOutput: SendContactMethodVerificationOutput
    SetIpAddressTypeInput: SetIpAddressTypeInput
    SetIpAddressTypeOutput: SetIpAddressTypeOutput
    SetResourceAccessForBucketInput: SetResourceAccessForBucketInput
    SetResourceAccessForBucketOutput: SetResourceAccessForBucketOutput
    SetupInstanceHttpsInput: SetupInstanceHttpsInput
    SetupInstanceHttpsOutput: SetupInstanceHttpsOutput
    StartGUISessionInput: StartGUISessionInput
    StartGUISessionOutput: StartGUISessionOutput
    StartInstanceInput: StartInstanceInput
    StartInstanceOutput: StartInstanceOutput
    StartRelationalDatabaseInput: StartRelationalDatabaseInput
    StartRelationalDatabaseOutput: StartRelationalDatabaseOutput
    StopGUISessionInput: StopGUISessionInput
    StopGUISessionOutput: StopGUISessionOutput
    StopInstanceInput: StopInstanceInput
    StopInstanceOutput: StopInstanceOutput
    StopRelationalDatabaseInput: StopRelationalDatabaseInput
    StopRelationalDatabaseOutput: StopRelationalDatabaseOutput
    TagResourceInput: TagResourceInput
    TagResourceOutput: TagResourceOutput
    TestAlarmInput: TestAlarmInput
    TestAlarmOutput: TestAlarmOutput
    UnpeerVpcInput: UnpeerVpcInput
    UnpeerVpcOutput: UnpeerVpcOutput
    UntagResourceInput: UntagResourceInput
    UntagResourceOutput: UntagResourceOutput
    UpdateBucketInput: UpdateBucketInput
    UpdateBucketOutput: UpdateBucketOutput
    UpdateBucketBundleInput: UpdateBucketBundleInput
    UpdateBucketBundleOutput: UpdateBucketBundleOutput
    UpdateContainerServiceInput: UpdateContainerServiceInput
    UpdateContainerServiceOutput: UpdateContainerServiceOutput
    UpdateDistributionInput: UpdateDistributionInput
    UpdateDistributionOutput: UpdateDistributionOutput
    UpdateDistributionBundleInput: UpdateDistributionBundleInput
    UpdateDistributionBundleOutput: UpdateDistributionBundleOutput
    UpdateDomainEntryInput: UpdateDomainEntryInput
    UpdateDomainEntryOutput: UpdateDomainEntryOutput
    UpdateInstanceMetadataOptionsInput: UpdateInstanceMetadataOptionsInput
    UpdateInstanceMetadataOptionsOutput: UpdateInstanceMetadataOptionsOutput
    UpdateLoadBalancerAttributeInput: UpdateLoadBalancerAttributeInput
    UpdateLoadBalancerAttributeOutput: UpdateLoadBalancerAttributeOutput
    UpdateRelationalDatabaseInput: UpdateRelationalDatabaseInput
    UpdateRelationalDatabaseOutput: UpdateRelationalDatabaseOutput
    UpdateRelationalDatabaseParametersInput: UpdateRelationalDatabaseParametersInput
    UpdateRelationalDatabaseParametersOutput: UpdateRelationalDatabaseParametersOutput
end

return M
