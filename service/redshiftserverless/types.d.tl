local record ConvertRecoveryPointToSnapshotInput
    recoveryPointId: string
    snapshotName: string
    retentionPeriod: number
    tags: {Tag}
end

local record ConvertRecoveryPointToSnapshotOutput
    snapshot: Snapshot
end

local record CreateCustomDomainAssociationInput
    workgroupName: string
    customDomainName: string
    customDomainCertificateArn: string
end

local record CreateCustomDomainAssociationOutput
    customDomainName: string
    workgroupName: string
    customDomainCertificateArn: string
    customDomainCertificateExpiryTime: number
end

local record CreateEndpointAccessInput
    endpointName: string
    subnetIds: {string}
    workgroupName: string
    vpcSecurityGroupIds: {string}
    ownerAccount: string
end

local record CreateEndpointAccessOutput
    endpoint: EndpointAccess
end

local record CreateNamespaceInput
    namespaceName: string
    adminUsername: string
    adminUserPassword: string
    dbName: string
    kmsKeyId: string
    defaultIamRoleArn: string
    iamRoles: {string}
    logExports: {string}
    tags: {Tag}
    manageAdminPassword: boolean
    adminPasswordSecretKmsKeyId: string
    redshiftIdcApplicationArn: string
end

local record CreateNamespaceOutput
    namespace: Namespace
end

local record CreateReservationInput
    capacity: number
    offeringId: string
    clientToken: string
end

local record CreateReservationOutput
    reservation: Reservation
end

local record CreateScheduledActionInput
    scheduledActionName: string
    targetAction: TargetAction
    schedule: Schedule
    roleArn: string
    namespaceName: string
    enabled: boolean
    scheduledActionDescription: string
    startTime: number
    endTime: number
end

local record CreateScheduledActionOutput
    scheduledAction: ScheduledActionResponse
end

local record CreateSnapshotInput
    namespaceName: string
    snapshotName: string
    retentionPeriod: number
    tags: {Tag}
end

local record CreateSnapshotOutput
    snapshot: Snapshot
end

local record CreateSnapshotCopyConfigurationInput
    namespaceName: string
    destinationRegion: string
    snapshotRetentionPeriod: number
    destinationKmsKeyId: string
end

local record CreateSnapshotCopyConfigurationOutput
    snapshotCopyConfiguration: SnapshotCopyConfiguration
end

local record CreateUsageLimitInput
    resourceArn: string
    usageType: string
    amount: number
    period: string
    breachAction: string
end

local record CreateUsageLimitOutput
    usageLimit: UsageLimit
end

local record CreateWorkgroupInput
    workgroupName: string
    namespaceName: string
    baseCapacity: number
    enhancedVpcRouting: boolean
    configParameters: {ConfigParameter}
    securityGroupIds: {string}
    subnetIds: {string}
    publiclyAccessible: boolean
    tags: {Tag}
    port: number
    maxCapacity: number
    pricePerformanceTarget: PerformanceTarget
    ipAddressType: string
    trackName: string
    extraComputeForAutomaticOptimization: boolean
end

local record CreateWorkgroupOutput
    workgroup: Workgroup
end

local record DeleteCustomDomainAssociationInput
    workgroupName: string
    customDomainName: string
end

local record DeleteCustomDomainAssociationOutput
end

local record DeleteEndpointAccessInput
    endpointName: string
end

local record DeleteEndpointAccessOutput
    endpoint: EndpointAccess
end

local record DeleteNamespaceInput
    namespaceName: string
    finalSnapshotName: string
    finalSnapshotRetentionPeriod: number
end

local record DeleteNamespaceOutput
    namespace: Namespace
end

local record DeleteResourcePolicyInput
    resourceArn: string
end

local record DeleteResourcePolicyOutput
end

local record DeleteScheduledActionInput
    scheduledActionName: string
end

local record DeleteScheduledActionOutput
    scheduledAction: ScheduledActionResponse
end

local record DeleteSnapshotInput
    snapshotName: string
end

local record DeleteSnapshotOutput
    snapshot: Snapshot
end

local record DeleteSnapshotCopyConfigurationInput
    snapshotCopyConfigurationId: string
end

local record DeleteSnapshotCopyConfigurationOutput
    snapshotCopyConfiguration: SnapshotCopyConfiguration
end

local record DeleteUsageLimitInput
    usageLimitId: string
end

local record DeleteUsageLimitOutput
    usageLimit: UsageLimit
end

local record DeleteWorkgroupInput
    workgroupName: string
end

local record DeleteWorkgroupOutput
    workgroup: Workgroup
end

local record GetCredentialsInput
    dbName: string
    durationSeconds: number
    workgroupName: string
    customDomainName: string
end

local record GetCredentialsOutput
    dbUser: string
    dbPassword: string
    expiration: number
    nextRefreshTime: number
end

local record GetCustomDomainAssociationInput
    customDomainName: string
    workgroupName: string
end

local record GetCustomDomainAssociationOutput
    customDomainName: string
    workgroupName: string
    customDomainCertificateArn: string
    customDomainCertificateExpiryTime: number
end

local record GetEndpointAccessInput
    endpointName: string
end

local record GetEndpointAccessOutput
    endpoint: EndpointAccess
end

local record GetIdentityCenterAuthTokenInput
    workgroupNames: {string}
end

local record GetIdentityCenterAuthTokenOutput
    token: string
    expirationTime: number
end

local record GetNamespaceInput
    namespaceName: string
end

local record GetNamespaceOutput
    namespace: Namespace
end

local record GetRecoveryPointInput
    recoveryPointId: string
end

local record GetRecoveryPointOutput
    recoveryPoint: RecoveryPoint
end

local record GetReservationInput
    reservationId: string
end

local record GetReservationOutput
    reservation: Reservation
end

local record GetReservationOfferingInput
    offeringId: string
end

local record GetReservationOfferingOutput
    reservationOffering: ReservationOffering
end

local record GetResourcePolicyInput
    resourceArn: string
end

local record GetResourcePolicyOutput
    resourcePolicy: ResourcePolicy
end

local record GetScheduledActionInput
    scheduledActionName: string
end

local record GetScheduledActionOutput
    scheduledAction: ScheduledActionResponse
end

local record GetSnapshotInput
    snapshotName: string
    ownerAccount: string
    snapshotArn: string
end

local record GetSnapshotOutput
    snapshot: Snapshot
end

local record GetTableRestoreStatusInput
    tableRestoreRequestId: string
end

local record GetTableRestoreStatusOutput
    tableRestoreStatus: TableRestoreStatus
end

local record GetTrackInput
    trackName: string
end

local record GetTrackOutput
    track: ServerlessTrack
end

local record GetUsageLimitInput
    usageLimitId: string
end

local record GetUsageLimitOutput
    usageLimit: UsageLimit
end

local record GetWorkgroupInput
    workgroupName: string
end

local record GetWorkgroupOutput
    workgroup: Workgroup
end

local record ListCustomDomainAssociationsInput
    nextToken: string
    maxResults: number
    customDomainName: string
    customDomainCertificateArn: string
end

local record ListCustomDomainAssociationsOutput
    nextToken: string
    associations: {Association}
end

local record ListEndpointAccessInput
    nextToken: string
    maxResults: number
    workgroupName: string
    vpcId: string
    ownerAccount: string
end

local record ListEndpointAccessOutput
    nextToken: string
    endpoints: {EndpointAccess}
end

local record ListManagedWorkgroupsInput
    sourceArn: string
    nextToken: string
    maxResults: number
end

local record ListManagedWorkgroupsOutput
    nextToken: string
    managedWorkgroups: {ManagedWorkgroupListItem}
end

local record ListNamespacesInput
    nextToken: string
    maxResults: number
end

local record ListNamespacesOutput
    nextToken: string
    namespaces: {Namespace}
end

local record ListRecoveryPointsInput
    nextToken: string
    maxResults: number
    startTime: number
    endTime: number
    namespaceName: string
    namespaceArn: string
end

local record ListRecoveryPointsOutput
    recoveryPoints: {RecoveryPoint}
    nextToken: string
end

local record ListReservationOfferingsInput
    nextToken: string
    maxResults: number
end

local record ListReservationOfferingsOutput
    reservationOfferingsList: {ReservationOffering}
    nextToken: string
end

local record ListReservationsInput
    nextToken: string
    maxResults: number
end

local record ListReservationsOutput
    reservationsList: {Reservation}
    nextToken: string
end

local record ListScheduledActionsInput
    nextToken: string
    maxResults: number
    namespaceName: string
end

local record ListScheduledActionsOutput
    nextToken: string
    scheduledActions: {ScheduledActionAssociation}
end

local record ListSnapshotCopyConfigurationsInput
    namespaceName: string
    nextToken: string
    maxResults: number
end

local record ListSnapshotCopyConfigurationsOutput
    nextToken: string
    snapshotCopyConfigurations: {SnapshotCopyConfiguration}
end

local record ListSnapshotsInput
    nextToken: string
    maxResults: number
    namespaceName: string
    namespaceArn: string
    ownerAccount: string
    startTime: number
    endTime: number
end

local record ListSnapshotsOutput
    nextToken: string
    snapshots: {Snapshot}
end

local record ListTableRestoreStatusInput
    nextToken: string
    maxResults: number
    namespaceName: string
    workgroupName: string
end

local record ListTableRestoreStatusOutput
    nextToken: string
    tableRestoreStatuses: {TableRestoreStatus}
end

local record ListTagsForResourceInput
    resourceArn: string
end

local record ListTagsForResourceOutput
    tags: {Tag}
end

local record ListTracksInput
    nextToken: string
    maxResults: number
end

local record ListTracksOutput
    tracks: {ServerlessTrack}
    nextToken: string
end

local record ListUsageLimitsInput
    resourceArn: string
    usageType: string
    nextToken: string
    maxResults: number
end

local record ListUsageLimitsOutput
    usageLimits: {UsageLimit}
    nextToken: string
end

local record ListWorkgroupsInput
    nextToken: string
    maxResults: number
    ownerAccount: string
end

local record ListWorkgroupsOutput
    nextToken: string
    workgroups: {Workgroup}
end

local record PutResourcePolicyInput
    resourceArn: string
    policy: string
end

local record PutResourcePolicyOutput
    resourcePolicy: ResourcePolicy
end

local record RestoreFromRecoveryPointInput
    recoveryPointId: string
    namespaceName: string
    workgroupName: string
end

local record RestoreFromRecoveryPointOutput
    recoveryPointId: string
    namespace: Namespace
end

local record RestoreFromSnapshotInput
    namespaceName: string
    workgroupName: string
    snapshotName: string
    snapshotArn: string
    ownerAccount: string
    manageAdminPassword: boolean
    adminPasswordSecretKmsKeyId: string
end

local record RestoreFromSnapshotOutput
    snapshotName: string
    ownerAccount: string
    namespace: Namespace
end

local record RestoreTableFromRecoveryPointInput
    namespaceName: string
    workgroupName: string
    recoveryPointId: string
    sourceDatabaseName: string
    sourceSchemaName: string
    sourceTableName: string
    targetDatabaseName: string
    targetSchemaName: string
    newTableName: string
    activateCaseSensitiveIdentifier: boolean
end

local record RestoreTableFromRecoveryPointOutput
    tableRestoreStatus: TableRestoreStatus
end

local record RestoreTableFromSnapshotInput
    namespaceName: string
    workgroupName: string
    snapshotName: string
    sourceDatabaseName: string
    sourceSchemaName: string
    sourceTableName: string
    targetDatabaseName: string
    targetSchemaName: string
    newTableName: string
    activateCaseSensitiveIdentifier: boolean
end

local record RestoreTableFromSnapshotOutput
    tableRestoreStatus: TableRestoreStatus
end

local record TagResourceInput
    resourceArn: string
    tags: {Tag}
end

local record TagResourceOutput
end

local record UntagResourceInput
    resourceArn: string
    tagKeys: {string}
end

local record UntagResourceOutput
end

local record UpdateCustomDomainAssociationInput
    workgroupName: string
    customDomainName: string
    customDomainCertificateArn: string
end

local record UpdateCustomDomainAssociationOutput
    customDomainName: string
    workgroupName: string
    customDomainCertificateArn: string
    customDomainCertificateExpiryTime: number
end

local record UpdateEndpointAccessInput
    endpointName: string
    vpcSecurityGroupIds: {string}
end

local record UpdateEndpointAccessOutput
    endpoint: EndpointAccess
end

local record UpdateLakehouseConfigurationInput
    namespaceName: string
    lakehouseRegistration: string
    catalogName: string
    lakehouseIdcRegistration: string
    lakehouseIdcApplicationArn: string
    dryRun: boolean
end

local record UpdateLakehouseConfigurationOutput
    namespaceName: string
    lakehouseIdcApplicationArn: string
    lakehouseRegistrationStatus: string
    catalogArn: string
end

local record UpdateNamespaceInput
    namespaceName: string
    adminUserPassword: string
    adminUsername: string
    kmsKeyId: string
    defaultIamRoleArn: string
    iamRoles: {string}
    logExports: {string}
    manageAdminPassword: boolean
    adminPasswordSecretKmsKeyId: string
end

local record UpdateNamespaceOutput
    namespace: Namespace
end

local record UpdateScheduledActionInput
    scheduledActionName: string
    targetAction: TargetAction
    schedule: Schedule
    roleArn: string
    enabled: boolean
    scheduledActionDescription: string
    startTime: number
    endTime: number
end

local record UpdateScheduledActionOutput
    scheduledAction: ScheduledActionResponse
end

local record UpdateSnapshotInput
    snapshotName: string
    retentionPeriod: number
end

local record UpdateSnapshotOutput
    snapshot: Snapshot
end

local record UpdateSnapshotCopyConfigurationInput
    snapshotCopyConfigurationId: string
    snapshotRetentionPeriod: number
end

local record UpdateSnapshotCopyConfigurationOutput
    snapshotCopyConfiguration: SnapshotCopyConfiguration
end

local record UpdateUsageLimitInput
    usageLimitId: string
    amount: number
    breachAction: string
end

local record UpdateUsageLimitOutput
    usageLimit: UsageLimit
end

local record UpdateWorkgroupInput
    workgroupName: string
    baseCapacity: number
    enhancedVpcRouting: boolean
    configParameters: {ConfigParameter}
    publiclyAccessible: boolean
    subnetIds: {string}
    securityGroupIds: {string}
    port: number
    maxCapacity: number
    ipAddressType: string
    pricePerformanceTarget: PerformanceTarget
    trackName: string
    extraComputeForAutomaticOptimization: boolean
end

local record UpdateWorkgroupOutput
    workgroup: Workgroup
end

local record ConflictException
    message: string
end

local record InternalServerException
    message: string
end

local record ResourceNotFoundException
    message: string
    resourceName: string
end

local record ServiceQuotaExceededException
    message: string
end

local record TooManyTagsException
    message: string
    resourceName: string
end

local record ValidationException
    message: string
end

local record AccessDeniedException
    code: string
    message: string
end

local record ConflictException
    message: string
end

local record InternalServerException
    message: string
end

local record ResourceNotFoundException
    message: string
    resourceName: string
end

local record ThrottlingException
    code: string
    message: string
end

local record ValidationException
    message: string
end

local record AccessDeniedException
    code: string
    message: string
end

local record ConflictException
    message: string
end

local record InternalServerException
    message: string
end

local record ResourceNotFoundException
    message: string
    resourceName: string
end

local record ServiceQuotaExceededException
    message: string
end

local record ValidationException
    message: string
end

local record ConflictException
    message: string
end

local record InternalServerException
    message: string
end

local record TooManyTagsException
    message: string
    resourceName: string
end

local record ValidationException
    message: string
end

local record ConflictException
    message: string
end

local record InternalServerException
    message: string
end

local record ResourceNotFoundException
    message: string
    resourceName: string
end

local record ServiceQuotaExceededException
    message: string
end

local record ThrottlingException
    code: string
    message: string
end

local record TooManyTagsException
    message: string
    resourceName: string
end

local record ValidationException
    message: string
end

local record ConflictException
    message: string
end

local record InternalServerException
    message: string
end

local record ResourceNotFoundException
    message: string
    resourceName: string
end

local record ValidationException
    message: string
end

local record ConflictException
    message: string
end

local record InternalServerException
    message: string
end

local record ResourceNotFoundException
    message: string
    resourceName: string
end

local record ServiceQuotaExceededException
    message: string
end

local record TooManyTagsException
    message: string
    resourceName: string
end

local record ValidationException
    message: string
end

local record AccessDeniedException
    code: string
    message: string
end

local record ConflictException
    message: string
end

local record InternalServerException
    message: string
end

local record ResourceNotFoundException
    message: string
    resourceName: string
end

local record ServiceQuotaExceededException
    message: string
end

local record ValidationException
    message: string
end

local record ConflictException
    message: string
end

local record InternalServerException
    message: string
end

local record ResourceNotFoundException
    message: string
    resourceName: string
end

local record ServiceQuotaExceededException
    message: string
end

local record ValidationException
    message: string
end

local record ConflictException
    message: string
end

local record InsufficientCapacityException
    message: string
end

local record InternalServerException
    message: string
end

local record Ipv6CidrBlockNotFoundException
    message: string
end

local record ResourceNotFoundException
    message: string
    resourceName: string
end

local record TooManyTagsException
    message: string
    resourceName: string
end

local record ValidationException
    message: string
end

local record AccessDeniedException
    code: string
    message: string
end

local record ConflictException
    message: string
end

local record InternalServerException
    message: string
end

local record ResourceNotFoundException
    message: string
    resourceName: string
end

local record ThrottlingException
    code: string
    message: string
end

local record ValidationException
    message: string
end

local record ConflictException
    message: string
end

local record InternalServerException
    message: string
end

local record ResourceNotFoundException
    message: string
    resourceName: string
end

local record ValidationException
    message: string
end

local record ConflictException
    message: string
end

local record InternalServerException
    message: string
end

local record ResourceNotFoundException
    message: string
    resourceName: string
end

local record ValidationException
    message: string
end

local record InternalServerException
    message: string
end

local record ResourceNotFoundException
    message: string
    resourceName: string
end

local record ValidationException
    message: string
end

local record InternalServerException
    message: string
end

local record ResourceNotFoundException
    message: string
    resourceName: string
end

local record ValidationException
    message: string
end

local record ConflictException
    message: string
end

local record InternalServerException
    message: string
end

local record ResourceNotFoundException
    message: string
    resourceName: string
end

local record ValidationException
    message: string
end

local record AccessDeniedException
    code: string
    message: string
end

local record ConflictException
    message: string
end

local record InternalServerException
    message: string
end

local record ResourceNotFoundException
    message: string
    resourceName: string
end

local record ValidationException
    message: string
end

local record ConflictException
    message: string
end

local record InternalServerException
    message: string
end

local record ResourceNotFoundException
    message: string
    resourceName: string
end

local record ValidationException
    message: string
end

local record ConflictException
    message: string
end

local record InternalServerException
    message: string
end

local record ResourceNotFoundException
    message: string
    resourceName: string
end

local record ValidationException
    message: string
end

local record InternalServerException
    message: string
end

local record ResourceNotFoundException
    message: string
    resourceName: string
end

local record ValidationException
    message: string
end

local record AccessDeniedException
    code: string
    message: string
end

local record ConflictException
    message: string
end

local record InternalServerException
    message: string
end

local record ResourceNotFoundException
    message: string
    resourceName: string
end

local record ThrottlingException
    code: string
    message: string
end

local record ValidationException
    message: string
end

local record ConflictException
    message: string
end

local record InternalServerException
    message: string
end

local record ResourceNotFoundException
    message: string
    resourceName: string
end

local record ValidationException
    message: string
end

local record AccessDeniedException
    code: string
    message: string
end

local record ConflictException
    message: string
end

local record DryRunException
    message: string
end

local record InternalServerException
    message: string
end

local record ResourceNotFoundException
    message: string
    resourceName: string
end

local record ThrottlingException
    code: string
    message: string
end

local record ValidationException
    message: string
end

local record InternalServerException
    message: string
end

local record ResourceNotFoundException
    message: string
    resourceName: string
end

local record ValidationException
    message: string
end

local record ConflictException
    message: string
end

local record InternalServerException
    message: string
end

local record ResourceNotFoundException
    message: string
    resourceName: string
end

local record ValidationException
    message: string
end

local record InternalServerException
    message: string
end

local record ResourceNotFoundException
    message: string
    resourceName: string
end

local record ThrottlingException
    code: string
    message: string
end

local record ValidationException
    message: string
end

local record InternalServerException
    message: string
end

local record ResourceNotFoundException
    message: string
    resourceName: string
end

local record ThrottlingException
    code: string
    message: string
end

local record ValidationException
    message: string
end

local record InternalServerException
    message: string
end

local record ResourceNotFoundException
    message: string
    resourceName: string
end

local record ValidationException
    message: string
end

local record InternalServerException
    message: string
end

local record ResourceNotFoundException
    message: string
    resourceName: string
end

local record ValidationException
    message: string
end

local record InternalServerException
    message: string
end

local record ResourceNotFoundException
    message: string
    resourceName: string
end

local record ValidationException
    message: string
end

local record ResourceNotFoundException
    message: string
    resourceName: string
end

local record ValidationException
    message: string
end

local record AccessDeniedException
    code: string
    message: string
end

local record ConflictException
    message: string
end

local record DryRunException
    message: string
end

local record InternalServerException
    message: string
end

local record ResourceNotFoundException
    message: string
    resourceName: string
end

local record ThrottlingException
    code: string
    message: string
end

local record ValidationException
    message: string
end

local record ConflictException
    message: string
end

local record InternalServerException
    message: string
end

local record ResourceNotFoundException
    message: string
    resourceName: string
end

local record ValidationException
    message: string
end

local record InternalServerException
    message: string
end

local record ResourceNotFoundException
    message: string
    resourceName: string
end

local record ValidationException
    message: string
end

local record AccessDeniedException
    code: string
    message: string
end

local record InternalServerException
    message: string
end

local record InvalidPaginationException
    message: string
end

local record ThrottlingException
    code: string
    message: string
end

local record ValidationException
    message: string
end

local record ConflictException
    message: string
end

local record InternalServerException
    message: string
end

local record ResourceNotFoundException
    message: string
    resourceName: string
end

local record ValidationException
    message: string
end

local record AccessDeniedException
    code: string
    message: string
end

local record InternalServerException
    message: string
end

local record InternalServerException
    message: string
end

local record ValidationException
    message: string
end

local record InternalServerException
    message: string
end

local record ValidationException
    message: string
end

local record InternalServerException
    message: string
end

local record ThrottlingException
    code: string
    message: string
end

local record ValidationException
    message: string
end

local record InternalServerException
    message: string
end

local record ThrottlingException
    code: string
    message: string
end

local record ValidationException
    message: string
end

local record InternalServerException
    message: string
end

local record InvalidPaginationException
    message: string
end

local record ResourceNotFoundException
    message: string
    resourceName: string
end

local record ValidationException
    message: string
end

local record ConflictException
    message: string
end

local record InternalServerException
    message: string
end

local record InvalidPaginationException
    message: string
end

local record ResourceNotFoundException
    message: string
    resourceName: string
end

local record ValidationException
    message: string
end

local record InternalServerException
    message: string
end

local record ResourceNotFoundException
    message: string
    resourceName: string
end

local record ValidationException
    message: string
end

local record InvalidPaginationException
    message: string
end

local record ResourceNotFoundException
    message: string
    resourceName: string
end

local record ValidationException
    message: string
end

local record InternalServerException
    message: string
end

local record ResourceNotFoundException
    message: string
    resourceName: string
end

local record ThrottlingException
    code: string
    message: string
end

local record ValidationException
    message: string
end

local record AccessDeniedException
    code: string
    message: string
end

local record InternalServerException
    message: string
end

local record InvalidPaginationException
    message: string
end

local record ThrottlingException
    code: string
    message: string
end

local record ValidationException
    message: string
end

local record ConflictException
    message: string
end

local record InternalServerException
    message: string
end

local record InvalidPaginationException
    message: string
end

local record ResourceNotFoundException
    message: string
    resourceName: string
end

local record ValidationException
    message: string
end

local record InternalServerException
    message: string
end

local record ValidationException
    message: string
end

local record ConflictException
    message: string
end

local record InternalServerException
    message: string
end

local record ResourceNotFoundException
    message: string
    resourceName: string
end

local record ServiceQuotaExceededException
    message: string
end

local record ValidationException
    message: string
end

local record ConflictException
    message: string
end

local record InternalServerException
    message: string
end

local record ResourceNotFoundException
    message: string
    resourceName: string
end

local record ValidationException
    message: string
end

local record ConflictException
    message: string
end

local record InternalServerException
    message: string
end

local record ResourceNotFoundException
    message: string
    resourceName: string
end

local record ServiceQuotaExceededException
    message: string
end

local record ValidationException
    message: string
end

local record ConflictException
    message: string
end

local record InternalServerException
    message: string
end

local record ResourceNotFoundException
    message: string
    resourceName: string
end

local record ValidationException
    message: string
end

local record ConflictException
    message: string
end

local record InternalServerException
    message: string
end

local record ResourceNotFoundException
    message: string
    resourceName: string
end

local record ValidationException
    message: string
end

local record InternalServerException
    message: string
end

local record ResourceNotFoundException
    message: string
    resourceName: string
end

local record ThrottlingException
    code: string
    message: string
end

local record TooManyTagsException
    message: string
    resourceName: string
end

local record ValidationException
    message: string
end

local record InternalServerException
    message: string
end

local record ResourceNotFoundException
    message: string
    resourceName: string
end

local record ThrottlingException
    code: string
    message: string
end

local record ValidationException
    message: string
end

local record AccessDeniedException
    code: string
    message: string
end

local record ConflictException
    message: string
end

local record InternalServerException
    message: string
end

local record ResourceNotFoundException
    message: string
    resourceName: string
end

local record ThrottlingException
    code: string
    message: string
end

local record ValidationException
    message: string
end

local record AccessDeniedException
    code: string
    message: string
end

local record ConflictException
    message: string
end

local record InternalServerException
    message: string
end

local record ResourceNotFoundException
    message: string
    resourceName: string
end

local record ValidationException
    message: string
end

local record ConflictException
    message: string
end

local record DryRunException
    message: string
end

local record InternalServerException
    message: string
end

local record ResourceNotFoundException
    message: string
    resourceName: string
end

local record ValidationException
    message: string
end

local record ConflictException
    message: string
end

local record InternalServerException
    message: string
end

local record ResourceNotFoundException
    message: string
    resourceName: string
end

local record ValidationException
    message: string
end

local record ConflictException
    message: string
end

local record InternalServerException
    message: string
end

local record ResourceNotFoundException
    message: string
    resourceName: string
end

local record ValidationException
    message: string
end

local record ConflictException
    message: string
end

local record InternalServerException
    message: string
end

local record ResourceNotFoundException
    message: string
    resourceName: string
end

local record ValidationException
    message: string
end

local record AccessDeniedException
    code: string
    message: string
end

local record ConflictException
    message: string
end

local record InternalServerException
    message: string
end

local record ResourceNotFoundException
    message: string
    resourceName: string
end

local record ValidationException
    message: string
end

local record ConflictException
    message: string
end

local record InternalServerException
    message: string
end

local record ResourceNotFoundException
    message: string
    resourceName: string
end

local record ValidationException
    message: string
end

local record ConflictException
    message: string
end

local record InsufficientCapacityException
    message: string
end

local record InternalServerException
    message: string
end

local record Ipv6CidrBlockNotFoundException
    message: string
end

local record ResourceNotFoundException
    message: string
    resourceName: string
end

local record ValidationException
    message: string
end

local record M
    ConvertRecoveryPointToSnapshotInput: ConvertRecoveryPointToSnapshotInput
    ConvertRecoveryPointToSnapshotOutput: ConvertRecoveryPointToSnapshotOutput
    CreateCustomDomainAssociationInput: CreateCustomDomainAssociationInput
    CreateCustomDomainAssociationOutput: CreateCustomDomainAssociationOutput
    CreateEndpointAccessInput: CreateEndpointAccessInput
    CreateEndpointAccessOutput: CreateEndpointAccessOutput
    CreateNamespaceInput: CreateNamespaceInput
    CreateNamespaceOutput: CreateNamespaceOutput
    CreateReservationInput: CreateReservationInput
    CreateReservationOutput: CreateReservationOutput
    CreateScheduledActionInput: CreateScheduledActionInput
    CreateScheduledActionOutput: CreateScheduledActionOutput
    CreateSnapshotInput: CreateSnapshotInput
    CreateSnapshotOutput: CreateSnapshotOutput
    CreateSnapshotCopyConfigurationInput: CreateSnapshotCopyConfigurationInput
    CreateSnapshotCopyConfigurationOutput: CreateSnapshotCopyConfigurationOutput
    CreateUsageLimitInput: CreateUsageLimitInput
    CreateUsageLimitOutput: CreateUsageLimitOutput
    CreateWorkgroupInput: CreateWorkgroupInput
    CreateWorkgroupOutput: CreateWorkgroupOutput
    DeleteCustomDomainAssociationInput: DeleteCustomDomainAssociationInput
    DeleteCustomDomainAssociationOutput: DeleteCustomDomainAssociationOutput
    DeleteEndpointAccessInput: DeleteEndpointAccessInput
    DeleteEndpointAccessOutput: DeleteEndpointAccessOutput
    DeleteNamespaceInput: DeleteNamespaceInput
    DeleteNamespaceOutput: DeleteNamespaceOutput
    DeleteResourcePolicyInput: DeleteResourcePolicyInput
    DeleteResourcePolicyOutput: DeleteResourcePolicyOutput
    DeleteScheduledActionInput: DeleteScheduledActionInput
    DeleteScheduledActionOutput: DeleteScheduledActionOutput
    DeleteSnapshotInput: DeleteSnapshotInput
    DeleteSnapshotOutput: DeleteSnapshotOutput
    DeleteSnapshotCopyConfigurationInput: DeleteSnapshotCopyConfigurationInput
    DeleteSnapshotCopyConfigurationOutput: DeleteSnapshotCopyConfigurationOutput
    DeleteUsageLimitInput: DeleteUsageLimitInput
    DeleteUsageLimitOutput: DeleteUsageLimitOutput
    DeleteWorkgroupInput: DeleteWorkgroupInput
    DeleteWorkgroupOutput: DeleteWorkgroupOutput
    GetCredentialsInput: GetCredentialsInput
    GetCredentialsOutput: GetCredentialsOutput
    GetCustomDomainAssociationInput: GetCustomDomainAssociationInput
    GetCustomDomainAssociationOutput: GetCustomDomainAssociationOutput
    GetEndpointAccessInput: GetEndpointAccessInput
    GetEndpointAccessOutput: GetEndpointAccessOutput
    GetIdentityCenterAuthTokenInput: GetIdentityCenterAuthTokenInput
    GetIdentityCenterAuthTokenOutput: GetIdentityCenterAuthTokenOutput
    GetNamespaceInput: GetNamespaceInput
    GetNamespaceOutput: GetNamespaceOutput
    GetRecoveryPointInput: GetRecoveryPointInput
    GetRecoveryPointOutput: GetRecoveryPointOutput
    GetReservationInput: GetReservationInput
    GetReservationOutput: GetReservationOutput
    GetReservationOfferingInput: GetReservationOfferingInput
    GetReservationOfferingOutput: GetReservationOfferingOutput
    GetResourcePolicyInput: GetResourcePolicyInput
    GetResourcePolicyOutput: GetResourcePolicyOutput
    GetScheduledActionInput: GetScheduledActionInput
    GetScheduledActionOutput: GetScheduledActionOutput
    GetSnapshotInput: GetSnapshotInput
    GetSnapshotOutput: GetSnapshotOutput
    GetTableRestoreStatusInput: GetTableRestoreStatusInput
    GetTableRestoreStatusOutput: GetTableRestoreStatusOutput
    GetTrackInput: GetTrackInput
    GetTrackOutput: GetTrackOutput
    GetUsageLimitInput: GetUsageLimitInput
    GetUsageLimitOutput: GetUsageLimitOutput
    GetWorkgroupInput: GetWorkgroupInput
    GetWorkgroupOutput: GetWorkgroupOutput
    ListCustomDomainAssociationsInput: ListCustomDomainAssociationsInput
    ListCustomDomainAssociationsOutput: ListCustomDomainAssociationsOutput
    ListEndpointAccessInput: ListEndpointAccessInput
    ListEndpointAccessOutput: ListEndpointAccessOutput
    ListManagedWorkgroupsInput: ListManagedWorkgroupsInput
    ListManagedWorkgroupsOutput: ListManagedWorkgroupsOutput
    ListNamespacesInput: ListNamespacesInput
    ListNamespacesOutput: ListNamespacesOutput
    ListRecoveryPointsInput: ListRecoveryPointsInput
    ListRecoveryPointsOutput: ListRecoveryPointsOutput
    ListReservationOfferingsInput: ListReservationOfferingsInput
    ListReservationOfferingsOutput: ListReservationOfferingsOutput
    ListReservationsInput: ListReservationsInput
    ListReservationsOutput: ListReservationsOutput
    ListScheduledActionsInput: ListScheduledActionsInput
    ListScheduledActionsOutput: ListScheduledActionsOutput
    ListSnapshotCopyConfigurationsInput: ListSnapshotCopyConfigurationsInput
    ListSnapshotCopyConfigurationsOutput: ListSnapshotCopyConfigurationsOutput
    ListSnapshotsInput: ListSnapshotsInput
    ListSnapshotsOutput: ListSnapshotsOutput
    ListTableRestoreStatusInput: ListTableRestoreStatusInput
    ListTableRestoreStatusOutput: ListTableRestoreStatusOutput
    ListTagsForResourceInput: ListTagsForResourceInput
    ListTagsForResourceOutput: ListTagsForResourceOutput
    ListTracksInput: ListTracksInput
    ListTracksOutput: ListTracksOutput
    ListUsageLimitsInput: ListUsageLimitsInput
    ListUsageLimitsOutput: ListUsageLimitsOutput
    ListWorkgroupsInput: ListWorkgroupsInput
    ListWorkgroupsOutput: ListWorkgroupsOutput
    PutResourcePolicyInput: PutResourcePolicyInput
    PutResourcePolicyOutput: PutResourcePolicyOutput
    RestoreFromRecoveryPointInput: RestoreFromRecoveryPointInput
    RestoreFromRecoveryPointOutput: RestoreFromRecoveryPointOutput
    RestoreFromSnapshotInput: RestoreFromSnapshotInput
    RestoreFromSnapshotOutput: RestoreFromSnapshotOutput
    RestoreTableFromRecoveryPointInput: RestoreTableFromRecoveryPointInput
    RestoreTableFromRecoveryPointOutput: RestoreTableFromRecoveryPointOutput
    RestoreTableFromSnapshotInput: RestoreTableFromSnapshotInput
    RestoreTableFromSnapshotOutput: RestoreTableFromSnapshotOutput
    TagResourceInput: TagResourceInput
    TagResourceOutput: TagResourceOutput
    UntagResourceInput: UntagResourceInput
    UntagResourceOutput: UntagResourceOutput
    UpdateCustomDomainAssociationInput: UpdateCustomDomainAssociationInput
    UpdateCustomDomainAssociationOutput: UpdateCustomDomainAssociationOutput
    UpdateEndpointAccessInput: UpdateEndpointAccessInput
    UpdateEndpointAccessOutput: UpdateEndpointAccessOutput
    UpdateLakehouseConfigurationInput: UpdateLakehouseConfigurationInput
    UpdateLakehouseConfigurationOutput: UpdateLakehouseConfigurationOutput
    UpdateNamespaceInput: UpdateNamespaceInput
    UpdateNamespaceOutput: UpdateNamespaceOutput
    UpdateScheduledActionInput: UpdateScheduledActionInput
    UpdateScheduledActionOutput: UpdateScheduledActionOutput
    UpdateSnapshotInput: UpdateSnapshotInput
    UpdateSnapshotOutput: UpdateSnapshotOutput
    UpdateSnapshotCopyConfigurationInput: UpdateSnapshotCopyConfigurationInput
    UpdateSnapshotCopyConfigurationOutput: UpdateSnapshotCopyConfigurationOutput
    UpdateUsageLimitInput: UpdateUsageLimitInput
    UpdateUsageLimitOutput: UpdateUsageLimitOutput
    UpdateWorkgroupInput: UpdateWorkgroupInput
    UpdateWorkgroupOutput: UpdateWorkgroupOutput
end

return M
