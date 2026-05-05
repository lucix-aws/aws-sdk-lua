local record AcceptCertificateTransferInput
    certificateId: string
    setAsActive: boolean
end

local record AcceptCertificateTransferOutput
end

local record AddThingToBillingGroupInput
    billingGroupName: string
    billingGroupArn: string
    thingName: string
    thingArn: string
end

local record AddThingToBillingGroupOutput
end

local record AddThingToThingGroupInput
    thingGroupName: string
    thingGroupArn: string
    thingName: string
    thingArn: string
    overrideDynamicGroups: boolean
end

local record AddThingToThingGroupOutput
end

local record AssociateSbomWithPackageVersionInput
    packageName: string
    versionName: string
    sbom: Sbom
    clientToken: string
end

local record AssociateSbomWithPackageVersionOutput
    packageName: string
    versionName: string
    sbom: Sbom
    sbomValidationStatus: string
end

local record AssociateTargetsWithJobInput
    targets: {string}
    jobId: string
    comment: string
    namespaceId: string
end

local record AssociateTargetsWithJobOutput
    jobArn: string
    jobId: string
    description: string
end

local record AttachPolicyInput
    policyName: string
    target: string
end

local record AttachPolicyOutput
end

local record AttachPrincipalPolicyInput
    policyName: string
    principal: string
end

local record AttachPrincipalPolicyOutput
end

local record AttachSecurityProfileInput
    securityProfileName: string
    securityProfileTargetArn: string
end

local record AttachSecurityProfileOutput
end

local record AttachThingPrincipalInput
    thingName: string
    principal: string
    thingPrincipalType: string
end

local record AttachThingPrincipalOutput
end

local record CancelAuditMitigationActionsTaskInput
    taskId: string
end

local record CancelAuditMitigationActionsTaskOutput
end

local record CancelAuditTaskInput
    taskId: string
end

local record CancelAuditTaskOutput
end

local record CancelCertificateTransferInput
    certificateId: string
end

local record CancelCertificateTransferOutput
end

local record CancelDetectMitigationActionsTaskInput
    taskId: string
end

local record CancelDetectMitigationActionsTaskOutput
end

local record CancelJobInput
    jobId: string
    reasonCode: string
    comment: string
    force: boolean
end

local record CancelJobOutput
    jobArn: string
    jobId: string
    description: string
end

local record CancelJobExecutionInput
    jobId: string
    thingName: string
    force: boolean
    expectedVersion: number
    statusDetails: {string : string}
end

local record CancelJobExecutionOutput
end

local record ClearDefaultAuthorizerInput
end

local record ClearDefaultAuthorizerOutput
end

local record ConfirmTopicRuleDestinationInput
    confirmationToken: string
end

local record ConfirmTopicRuleDestinationOutput
end

local record CreateAuditSuppressionInput
    checkName: string
    resourceIdentifier: ResourceIdentifier
    expirationDate: number
    suppressIndefinitely: boolean
    description: string
    clientRequestToken: string
end

local record CreateAuditSuppressionOutput
end

local record CreateAuthorizerInput
    authorizerName: string
    authorizerFunctionArn: string
    tokenKeyName: string
    tokenSigningPublicKeys: {string : string}
    status: string
    tags: {Tag}
    signingDisabled: boolean
    enableCachingForHttp: boolean
end

local record CreateAuthorizerOutput
    authorizerName: string
    authorizerArn: string
end

local record CreateBillingGroupInput
    billingGroupName: string
    billingGroupProperties: BillingGroupProperties
    tags: {Tag}
end

local record CreateBillingGroupOutput
    billingGroupName: string
    billingGroupArn: string
    billingGroupId: string
end

local record CreateCertificateFromCsrInput
    certificateSigningRequest: string
    setAsActive: boolean
end

local record CreateCertificateFromCsrOutput
    certificateArn: string
    certificateId: string
    certificatePem: string
end

local record CreateCertificateProviderInput
    certificateProviderName: string
    lambdaFunctionArn: string
    accountDefaultForOperations: {string}
    clientToken: string
    tags: {Tag}
end

local record CreateCertificateProviderOutput
    certificateProviderName: string
    certificateProviderArn: string
end

local record CreateCommandInput
    commandId: string
    namespace: string
    displayName: string
    description: string
    payload: CommandPayload
    payloadTemplate: string
    preprocessor: CommandPreprocessor
    mandatoryParameters: {CommandParameter}
    roleArn: string
    tags: {Tag}
end

local record CreateCommandOutput
    commandId: string
    commandArn: string
end

local record CreateCustomMetricInput
    metricName: string
    displayName: string
    metricType: string
    tags: {Tag}
    clientRequestToken: string
end

local record CreateCustomMetricOutput
    metricName: string
    metricArn: string
end

local record CreateDimensionInput
    name: string
    type: string
    stringValues: {string}
    tags: {Tag}
    clientRequestToken: string
end

local record CreateDimensionOutput
    name: string
    arn: string
end

local record CreateDomainConfigurationInput
    domainConfigurationName: string
    domainName: string
    serverCertificateArns: {string}
    validationCertificateArn: string
    authorizerConfig: AuthorizerConfig
    serviceType: string
    tags: {Tag}
    tlsConfig: TlsConfig
    serverCertificateConfig: ServerCertificateConfig
    authenticationType: string
    applicationProtocol: string
    clientCertificateConfig: ClientCertificateConfig
end

local record CreateDomainConfigurationOutput
    domainConfigurationName: string
    domainConfigurationArn: string
end

local record CreateDynamicThingGroupInput
    thingGroupName: string
    thingGroupProperties: ThingGroupProperties
    indexName: string
    queryString: string
    queryVersion: string
    tags: {Tag}
end

local record CreateDynamicThingGroupOutput
    thingGroupName: string
    thingGroupArn: string
    thingGroupId: string
    indexName: string
    queryString: string
    queryVersion: string
end

local record CreateFleetMetricInput
    metricName: string
    queryString: string
    aggregationType: AggregationType
    period: number
    aggregationField: string
    description: string
    queryVersion: string
    indexName: string
    unit: string
    tags: {Tag}
end

local record CreateFleetMetricOutput
    metricName: string
    metricArn: string
end

local record CreateJobInput
    jobId: string
    targets: {string}
    documentSource: string
    document: string
    description: string
    presignedUrlConfig: PresignedUrlConfig
    targetSelection: string
    jobExecutionsRolloutConfig: JobExecutionsRolloutConfig
    abortConfig: AbortConfig
    timeoutConfig: TimeoutConfig
    tags: {Tag}
    namespaceId: string
    jobTemplateArn: string
    jobExecutionsRetryConfig: JobExecutionsRetryConfig
    documentParameters: {string : string}
    schedulingConfig: SchedulingConfig
    destinationPackageVersions: {string}
end

local record CreateJobOutput
    jobArn: string
    jobId: string
    description: string
end

local record CreateJobTemplateInput
    jobTemplateId: string
    jobArn: string
    documentSource: string
    document: string
    description: string
    presignedUrlConfig: PresignedUrlConfig
    jobExecutionsRolloutConfig: JobExecutionsRolloutConfig
    abortConfig: AbortConfig
    timeoutConfig: TimeoutConfig
    tags: {Tag}
    jobExecutionsRetryConfig: JobExecutionsRetryConfig
    maintenanceWindows: {MaintenanceWindow}
    destinationPackageVersions: {string}
end

local record CreateJobTemplateOutput
    jobTemplateArn: string
    jobTemplateId: string
end

local record CreateKeysAndCertificateInput
    setAsActive: boolean
end

local record CreateKeysAndCertificateOutput
    certificateArn: string
    certificateId: string
    certificatePem: string
    keyPair: KeyPair
end

local record CreateMitigationActionInput
    actionName: string
    roleArn: string
    actionParams: MitigationActionParams
    tags: {Tag}
end

local record CreateMitigationActionOutput
    actionArn: string
    actionId: string
end

local record CreateOTAUpdateInput
    otaUpdateId: string
    description: string
    targets: {string}
    protocols: {string}
    targetSelection: string
    awsJobExecutionsRolloutConfig: AwsJobExecutionsRolloutConfig
    awsJobPresignedUrlConfig: AwsJobPresignedUrlConfig
    awsJobAbortConfig: AwsJobAbortConfig
    awsJobTimeoutConfig: AwsJobTimeoutConfig
    files: {OTAUpdateFile}
    roleArn: string
    additionalParameters: {string : string}
    tags: {Tag}
end

local record CreateOTAUpdateOutput
    otaUpdateId: string
    awsIotJobId: string
    otaUpdateArn: string
    awsIotJobArn: string
    otaUpdateStatus: string
end

local record CreatePackageInput
    packageName: string
    description: string
    tags: {string : string}
    clientToken: string
end

local record CreatePackageOutput
    packageName: string
    packageArn: string
    description: string
end

local record CreatePackageVersionInput
    packageName: string
    versionName: string
    description: string
    attributes: {string : string}
    artifact: PackageVersionArtifact
    recipe: string
    tags: {string : string}
    clientToken: string
end

local record CreatePackageVersionOutput
    packageVersionArn: string
    packageName: string
    versionName: string
    description: string
    attributes: {string : string}
    status: string
    errorReason: string
end

local record CreatePolicyInput
    policyName: string
    policyDocument: string
    tags: {Tag}
end

local record CreatePolicyOutput
    policyName: string
    policyArn: string
    policyDocument: string
    policyVersionId: string
end

local record CreatePolicyVersionInput
    policyName: string
    policyDocument: string
    setAsDefault: boolean
end

local record CreatePolicyVersionOutput
    policyArn: string
    policyDocument: string
    policyVersionId: string
    isDefaultVersion: boolean
end

local record CreateProvisioningClaimInput
    templateName: string
end

local record CreateProvisioningClaimOutput
    certificateId: string
    certificatePem: string
    keyPair: KeyPair
    expiration: number
end

local record CreateProvisioningTemplateInput
    templateName: string
    description: string
    templateBody: string
    enabled: boolean
    provisioningRoleArn: string
    preProvisioningHook: ProvisioningHook
    tags: {Tag}
    type: string
end

local record CreateProvisioningTemplateOutput
    templateArn: string
    templateName: string
    defaultVersionId: number
end

local record CreateProvisioningTemplateVersionInput
    templateName: string
    templateBody: string
    setAsDefault: boolean
end

local record CreateProvisioningTemplateVersionOutput
    templateArn: string
    templateName: string
    versionId: number
    isDefaultVersion: boolean
end

local record CreateRoleAliasInput
    roleAlias: string
    roleArn: string
    credentialDurationSeconds: number
    tags: {Tag}
end

local record CreateRoleAliasOutput
    roleAlias: string
    roleAliasArn: string
end

local record CreateScheduledAuditInput
    frequency: string
    dayOfMonth: string
    dayOfWeek: string
    targetCheckNames: {string}
    scheduledAuditName: string
    tags: {Tag}
end

local record CreateScheduledAuditOutput
    scheduledAuditArn: string
end

local record CreateSecurityProfileInput
    securityProfileName: string
    securityProfileDescription: string
    behaviors: {Behavior}
    alertTargets: {string : AlertTarget}
    additionalMetricsToRetain: {string}
    additionalMetricsToRetainV2: {MetricToRetain}
    tags: {Tag}
    metricsExportConfig: MetricsExportConfig
end

local record CreateSecurityProfileOutput
    securityProfileName: string
    securityProfileArn: string
end

local record CreateStreamInput
    streamId: string
    description: string
    files: {StreamFile}
    roleArn: string
    tags: {Tag}
end

local record CreateStreamOutput
    streamId: string
    streamArn: string
    description: string
    streamVersion: number
end

local record CreateThingInput
    thingName: string
    thingTypeName: string
    attributePayload: AttributePayload
    billingGroupName: string
end

local record CreateThingOutput
    thingName: string
    thingArn: string
    thingId: string
end

local record CreateThingGroupInput
    thingGroupName: string
    parentGroupName: string
    thingGroupProperties: ThingGroupProperties
    tags: {Tag}
end

local record CreateThingGroupOutput
    thingGroupName: string
    thingGroupArn: string
    thingGroupId: string
end

local record CreateThingTypeInput
    thingTypeName: string
    thingTypeProperties: ThingTypeProperties
    tags: {Tag}
end

local record CreateThingTypeOutput
    thingTypeName: string
    thingTypeArn: string
    thingTypeId: string
end

local record CreateTopicRuleInput
    ruleName: string
    topicRulePayload: TopicRulePayload
    tags: string
end

local record CreateTopicRuleOutput
end

local record CreateTopicRuleDestinationInput
    destinationConfiguration: TopicRuleDestinationConfiguration
end

local record CreateTopicRuleDestinationOutput
    topicRuleDestination: TopicRuleDestination
end

local record DeleteAccountAuditConfigurationInput
    deleteScheduledAudits: boolean
end

local record DeleteAccountAuditConfigurationOutput
end

local record DeleteAuditSuppressionInput
    checkName: string
    resourceIdentifier: ResourceIdentifier
end

local record DeleteAuditSuppressionOutput
end

local record DeleteAuthorizerInput
    authorizerName: string
end

local record DeleteAuthorizerOutput
end

local record DeleteBillingGroupInput
    billingGroupName: string
    expectedVersion: number
end

local record DeleteBillingGroupOutput
end

local record DeleteCACertificateInput
    certificateId: string
end

local record DeleteCACertificateOutput
end

local record DeleteCertificateInput
    certificateId: string
    forceDelete: boolean
end

local record DeleteCertificateOutput
end

local record DeleteCertificateProviderInput
    certificateProviderName: string
end

local record DeleteCertificateProviderOutput
end

local record DeleteCommandInput
    commandId: string
end

local record DeleteCommandOutput
    statusCode: number
end

local record DeleteCommandExecutionInput
    executionId: string
    targetArn: string
end

local record DeleteCommandExecutionOutput
end

local record DeleteCustomMetricInput
    metricName: string
end

local record DeleteCustomMetricOutput
end

local record DeleteDimensionInput
    name: string
end

local record DeleteDimensionOutput
end

local record DeleteDomainConfigurationInput
    domainConfigurationName: string
end

local record DeleteDomainConfigurationOutput
end

local record DeleteDynamicThingGroupInput
    thingGroupName: string
    expectedVersion: number
end

local record DeleteDynamicThingGroupOutput
end

local record DeleteFleetMetricInput
    metricName: string
    expectedVersion: number
end

local record DeleteFleetMetricOutput
end

local record DeleteJobInput
    jobId: string
    force: boolean
    namespaceId: string
end

local record DeleteJobOutput
end

local record DeleteJobExecutionInput
    jobId: string
    thingName: string
    executionNumber: number
    force: boolean
    namespaceId: string
end

local record DeleteJobExecutionOutput
end

local record DeleteJobTemplateInput
    jobTemplateId: string
end

local record DeleteJobTemplateOutput
end

local record DeleteMitigationActionInput
    actionName: string
end

local record DeleteMitigationActionOutput
end

local record DeleteOTAUpdateInput
    otaUpdateId: string
    deleteStream: boolean
    forceDeleteAWSJob: boolean
end

local record DeleteOTAUpdateOutput
end

local record DeletePackageInput
    packageName: string
    clientToken: string
end

local record DeletePackageOutput
end

local record DeletePackageVersionInput
    packageName: string
    versionName: string
    clientToken: string
end

local record DeletePackageVersionOutput
end

local record DeletePolicyInput
    policyName: string
end

local record DeletePolicyOutput
end

local record DeletePolicyVersionInput
    policyName: string
    policyVersionId: string
end

local record DeletePolicyVersionOutput
end

local record DeleteProvisioningTemplateInput
    templateName: string
end

local record DeleteProvisioningTemplateOutput
end

local record DeleteProvisioningTemplateVersionInput
    templateName: string
    versionId: number
end

local record DeleteProvisioningTemplateVersionOutput
end

local record DeleteRegistrationCodeInput
end

local record DeleteRegistrationCodeOutput
end

local record DeleteRoleAliasInput
    roleAlias: string
end

local record DeleteRoleAliasOutput
end

local record DeleteScheduledAuditInput
    scheduledAuditName: string
end

local record DeleteScheduledAuditOutput
end

local record DeleteSecurityProfileInput
    securityProfileName: string
    expectedVersion: number
end

local record DeleteSecurityProfileOutput
end

local record DeleteStreamInput
    streamId: string
end

local record DeleteStreamOutput
end

local record DeleteThingInput
    thingName: string
    expectedVersion: number
end

local record DeleteThingOutput
end

local record DeleteThingGroupInput
    thingGroupName: string
    expectedVersion: number
end

local record DeleteThingGroupOutput
end

local record DeleteThingTypeInput
    thingTypeName: string
end

local record DeleteThingTypeOutput
end

local record DeleteTopicRuleInput
    ruleName: string
end

local record DeleteTopicRuleOutput
end

local record DeleteTopicRuleDestinationInput
    arn: string
end

local record DeleteTopicRuleDestinationOutput
end

local record DeleteV2LoggingLevelInput
    targetType: string
    targetName: string
end

local record DeleteV2LoggingLevelOutput
end

local record DeprecateThingTypeInput
    thingTypeName: string
    undoDeprecate: boolean
end

local record DeprecateThingTypeOutput
end

local record DescribeAccountAuditConfigurationInput
end

local record DescribeAccountAuditConfigurationOutput
    roleArn: string
    auditNotificationTargetConfigurations: {string : AuditNotificationTarget}
    auditCheckConfigurations: {string : AuditCheckConfiguration}
end

local record DescribeAuditFindingInput
    findingId: string
end

local record DescribeAuditFindingOutput
    finding: AuditFinding
end

local record DescribeAuditMitigationActionsTaskInput
    taskId: string
end

local record DescribeAuditMitigationActionsTaskOutput
    taskStatus: string
    startTime: number
    endTime: number
    taskStatistics: {string : TaskStatisticsForAuditCheck}
    target: AuditMitigationActionsTaskTarget
    auditCheckToActionsMapping: {string : {string}}
    actionsDefinition: {MitigationAction}
end

local record DescribeAuditSuppressionInput
    checkName: string
    resourceIdentifier: ResourceIdentifier
end

local record DescribeAuditSuppressionOutput
    checkName: string
    resourceIdentifier: ResourceIdentifier
    expirationDate: number
    suppressIndefinitely: boolean
    description: string
end

local record DescribeAuditTaskInput
    taskId: string
end

local record DescribeAuditTaskOutput
    taskStatus: string
    taskType: string
    taskStartTime: number
    taskStatistics: TaskStatistics
    scheduledAuditName: string
    auditDetails: {string : AuditCheckDetails}
end

local record DescribeAuthorizerInput
    authorizerName: string
end

local record DescribeAuthorizerOutput
    authorizerDescription: AuthorizerDescription
end

local record DescribeBillingGroupInput
    billingGroupName: string
end

local record DescribeBillingGroupOutput
    billingGroupName: string
    billingGroupId: string
    billingGroupArn: string
    version: number
    billingGroupProperties: BillingGroupProperties
    billingGroupMetadata: BillingGroupMetadata
end

local record DescribeCACertificateInput
    certificateId: string
end

local record DescribeCACertificateOutput
    certificateDescription: CACertificateDescription
    registrationConfig: RegistrationConfig
end

local record DescribeCertificateInput
    certificateId: string
end

local record DescribeCertificateOutput
    certificateDescription: CertificateDescription
end

local record DescribeCertificateProviderInput
    certificateProviderName: string
end

local record DescribeCertificateProviderOutput
    certificateProviderName: string
    certificateProviderArn: string
    lambdaFunctionArn: string
    accountDefaultForOperations: {string}
    creationDate: number
    lastModifiedDate: number
end

local record DescribeCustomMetricInput
    metricName: string
end

local record DescribeCustomMetricOutput
    metricName: string
    metricArn: string
    metricType: string
    displayName: string
    creationDate: number
    lastModifiedDate: number
end

local record DescribeDefaultAuthorizerInput
end

local record DescribeDefaultAuthorizerOutput
    authorizerDescription: AuthorizerDescription
end

local record DescribeDetectMitigationActionsTaskInput
    taskId: string
end

local record DescribeDetectMitigationActionsTaskOutput
    taskSummary: DetectMitigationActionsTaskSummary
end

local record DescribeDimensionInput
    name: string
end

local record DescribeDimensionOutput
    name: string
    arn: string
    type: string
    stringValues: {string}
    creationDate: number
    lastModifiedDate: number
end

local record DescribeDomainConfigurationInput
    domainConfigurationName: string
end

local record DescribeDomainConfigurationOutput
    domainConfigurationName: string
    domainConfigurationArn: string
    domainName: string
    serverCertificates: {ServerCertificateSummary}
    authorizerConfig: AuthorizerConfig
    domainConfigurationStatus: string
    serviceType: string
    domainType: string
    lastStatusChangeDate: number
    tlsConfig: TlsConfig
    serverCertificateConfig: ServerCertificateConfig
    authenticationType: string
    applicationProtocol: string
    clientCertificateConfig: ClientCertificateConfig
end

local record DescribeEncryptionConfigurationInput
end

local record DescribeEncryptionConfigurationOutput
    encryptionType: string
    kmsKeyArn: string
    kmsAccessRoleArn: string
    configurationDetails: ConfigurationDetails
    lastModifiedDate: number
end

local record DescribeEndpointInput
    endpointType: string
end

local record DescribeEndpointOutput
    endpointAddress: string
end

local record DescribeEventConfigurationsInput
end

local record DescribeEventConfigurationsOutput
    eventConfigurations: {string : Configuration}
    creationDate: number
    lastModifiedDate: number
end

local record DescribeFleetMetricInput
    metricName: string
end

local record DescribeFleetMetricOutput
    metricName: string
    queryString: string
    aggregationType: AggregationType
    period: number
    aggregationField: string
    description: string
    queryVersion: string
    indexName: string
    creationDate: number
    lastModifiedDate: number
    unit: string
    version: number
    metricArn: string
end

local record DescribeIndexInput
    indexName: string
end

local record DescribeIndexOutput
    indexName: string
    indexStatus: string
    schema: string
end

local record DescribeJobInput
    jobId: string
    beforeSubstitution: boolean
end

local record DescribeJobOutput
    documentSource: string
    job: Job
end

local record DescribeJobExecutionInput
    jobId: string
    thingName: string
    executionNumber: number
end

local record DescribeJobExecutionOutput
    execution: JobExecution
end

local record DescribeJobTemplateInput
    jobTemplateId: string
end

local record DescribeJobTemplateOutput
    jobTemplateArn: string
    jobTemplateId: string
    description: string
    documentSource: string
    document: string
    createdAt: number
    presignedUrlConfig: PresignedUrlConfig
    jobExecutionsRolloutConfig: JobExecutionsRolloutConfig
    abortConfig: AbortConfig
    timeoutConfig: TimeoutConfig
    jobExecutionsRetryConfig: JobExecutionsRetryConfig
    maintenanceWindows: {MaintenanceWindow}
    destinationPackageVersions: {string}
end

local record DescribeManagedJobTemplateInput
    templateName: string
    templateVersion: string
end

local record DescribeManagedJobTemplateOutput
    templateName: string
    templateArn: string
    description: string
    templateVersion: string
    environments: {string}
    documentParameters: {DocumentParameter}
    document: string
end

local record DescribeMitigationActionInput
    actionName: string
end

local record DescribeMitigationActionOutput
    actionName: string
    actionType: string
    actionArn: string
    actionId: string
    roleArn: string
    actionParams: MitigationActionParams
    creationDate: number
    lastModifiedDate: number
end

local record DescribeProvisioningTemplateInput
    templateName: string
end

local record DescribeProvisioningTemplateOutput
    templateArn: string
    templateName: string
    description: string
    creationDate: number
    lastModifiedDate: number
    defaultVersionId: number
    templateBody: string
    enabled: boolean
    provisioningRoleArn: string
    preProvisioningHook: ProvisioningHook
    type: string
end

local record DescribeProvisioningTemplateVersionInput
    templateName: string
    versionId: number
end

local record DescribeProvisioningTemplateVersionOutput
    versionId: number
    creationDate: number
    templateBody: string
    isDefaultVersion: boolean
end

local record DescribeRoleAliasInput
    roleAlias: string
end

local record DescribeRoleAliasOutput
    roleAliasDescription: RoleAliasDescription
end

local record DescribeScheduledAuditInput
    scheduledAuditName: string
end

local record DescribeScheduledAuditOutput
    frequency: string
    dayOfMonth: string
    dayOfWeek: string
    targetCheckNames: {string}
    scheduledAuditName: string
    scheduledAuditArn: string
end

local record DescribeSecurityProfileInput
    securityProfileName: string
end

local record DescribeSecurityProfileOutput
    securityProfileName: string
    securityProfileArn: string
    securityProfileDescription: string
    behaviors: {Behavior}
    alertTargets: {string : AlertTarget}
    additionalMetricsToRetain: {string}
    additionalMetricsToRetainV2: {MetricToRetain}
    version: number
    creationDate: number
    lastModifiedDate: number
    metricsExportConfig: MetricsExportConfig
end

local record DescribeStreamInput
    streamId: string
end

local record DescribeStreamOutput
    streamInfo: StreamInfo
end

local record DescribeThingInput
    thingName: string
end

local record DescribeThingOutput
    defaultClientId: string
    thingName: string
    thingId: string
    thingArn: string
    thingTypeName: string
    attributes: {string : string}
    version: number
    billingGroupName: string
end

local record DescribeThingGroupInput
    thingGroupName: string
end

local record DescribeThingGroupOutput
    thingGroupName: string
    thingGroupId: string
    thingGroupArn: string
    version: number
    thingGroupProperties: ThingGroupProperties
    thingGroupMetadata: ThingGroupMetadata
    indexName: string
    queryString: string
    queryVersion: string
    status: string
end

local record DescribeThingRegistrationTaskInput
    taskId: string
end

local record DescribeThingRegistrationTaskOutput
    taskId: string
    creationDate: number
    lastModifiedDate: number
    templateBody: string
    inputFileBucket: string
    inputFileKey: string
    roleArn: string
    status: string
    message: string
    successCount: number
    failureCount: number
    percentageProgress: number
end

local record DescribeThingTypeInput
    thingTypeName: string
end

local record DescribeThingTypeOutput
    thingTypeName: string
    thingTypeId: string
    thingTypeArn: string
    thingTypeProperties: ThingTypeProperties
    thingTypeMetadata: ThingTypeMetadata
end

local record DetachPolicyInput
    policyName: string
    target: string
end

local record DetachPolicyOutput
end

local record DetachPrincipalPolicyInput
    policyName: string
    principal: string
end

local record DetachPrincipalPolicyOutput
end

local record DetachSecurityProfileInput
    securityProfileName: string
    securityProfileTargetArn: string
end

local record DetachSecurityProfileOutput
end

local record DetachThingPrincipalInput
    thingName: string
    principal: string
end

local record DetachThingPrincipalOutput
end

local record DisableTopicRuleInput
    ruleName: string
end

local record DisableTopicRuleOutput
end

local record DisassociateSbomFromPackageVersionInput
    packageName: string
    versionName: string
    clientToken: string
end

local record DisassociateSbomFromPackageVersionOutput
end

local record EnableTopicRuleInput
    ruleName: string
end

local record EnableTopicRuleOutput
end

local record GetBehaviorModelTrainingSummariesInput
    securityProfileName: string
    maxResults: number
    nextToken: string
end

local record GetBehaviorModelTrainingSummariesOutput
    summaries: {BehaviorModelTrainingSummary}
    nextToken: string
end

local record GetBucketsAggregationInput
    indexName: string
    queryString: string
    aggregationField: string
    queryVersion: string
    bucketsAggregationType: BucketsAggregationType
end

local record GetBucketsAggregationOutput
    totalCount: number
    buckets: {Bucket}
end

local record GetCardinalityInput
    indexName: string
    queryString: string
    aggregationField: string
    queryVersion: string
end

local record GetCardinalityOutput
    cardinality: number
end

local record GetCommandInput
    commandId: string
end

local record GetCommandOutput
    commandId: string
    commandArn: string
    namespace: string
    displayName: string
    description: string
    mandatoryParameters: {CommandParameter}
    payload: CommandPayload
    payloadTemplate: string
    preprocessor: CommandPreprocessor
    roleArn: string
    createdAt: number
    lastUpdatedAt: number
    deprecated: boolean
    pendingDeletion: boolean
end

local record GetCommandExecutionInput
    executionId: string
    targetArn: string
    includeResult: boolean
end

local record GetCommandExecutionOutput
    executionId: string
    commandArn: string
    targetArn: string
    status: string
    statusReason: StatusReason
    result: {string : CommandExecutionResult}
    parameters: {string : CommandParameterValue}
    executionTimeoutSeconds: number
    createdAt: number
    lastUpdatedAt: number
    startedAt: number
    completedAt: number
    timeToLive: number
end

local record GetEffectivePoliciesInput
    principal: string
    cognitoIdentityPoolId: string
    thingName: string
end

local record GetEffectivePoliciesOutput
    effectivePolicies: {EffectivePolicy}
end

local record GetIndexingConfigurationInput
end

local record GetIndexingConfigurationOutput
    thingIndexingConfiguration: ThingIndexingConfiguration
    thingGroupIndexingConfiguration: ThingGroupIndexingConfiguration
end

local record GetJobDocumentInput
    jobId: string
    beforeSubstitution: boolean
end

local record GetJobDocumentOutput
    document: string
end

local record GetLoggingOptionsInput
end

local record GetLoggingOptionsOutput
    roleArn: string
    logLevel: string
end

local record GetOTAUpdateInput
    otaUpdateId: string
end

local record GetOTAUpdateOutput
    otaUpdateInfo: OTAUpdateInfo
end

local record GetPackageInput
    packageName: string
end

local record GetPackageOutput
    packageName: string
    packageArn: string
    description: string
    defaultVersionName: string
    creationDate: number
    lastModifiedDate: number
end

local record GetPackageConfigurationInput
end

local record GetPackageConfigurationOutput
    versionUpdateByJobsConfig: VersionUpdateByJobsConfig
end

local record GetPackageVersionInput
    packageName: string
    versionName: string
end

local record GetPackageVersionOutput
    packageVersionArn: string
    packageName: string
    versionName: string
    description: string
    attributes: {string : string}
    artifact: PackageVersionArtifact
    status: string
    errorReason: string
    creationDate: number
    lastModifiedDate: number
    sbom: Sbom
    sbomValidationStatus: string
    recipe: string
end

local record GetPercentilesInput
    indexName: string
    queryString: string
    aggregationField: string
    queryVersion: string
    percents: {number}
end

local record GetPercentilesOutput
    percentiles: {PercentPair}
end

local record GetPolicyInput
    policyName: string
end

local record GetPolicyOutput
    policyName: string
    policyArn: string
    policyDocument: string
    defaultVersionId: string
    creationDate: number
    lastModifiedDate: number
    generationId: string
end

local record GetPolicyVersionInput
    policyName: string
    policyVersionId: string
end

local record GetPolicyVersionOutput
    policyArn: string
    policyName: string
    policyDocument: string
    policyVersionId: string
    isDefaultVersion: boolean
    creationDate: number
    lastModifiedDate: number
    generationId: string
end

local record GetRegistrationCodeInput
end

local record GetRegistrationCodeOutput
    registrationCode: string
end

local record GetStatisticsInput
    indexName: string
    queryString: string
    aggregationField: string
    queryVersion: string
end

local record GetStatisticsOutput
    statistics: Statistics
end

local record GetThingConnectivityDataInput
    thingName: string
end

local record GetThingConnectivityDataOutput
    thingName: string
    connected: boolean
    timestamp: number
    disconnectReason: string
end

local record GetTopicRuleInput
    ruleName: string
end

local record GetTopicRuleOutput
    ruleArn: string
    rule: TopicRule
end

local record GetTopicRuleDestinationInput
    arn: string
end

local record GetTopicRuleDestinationOutput
    topicRuleDestination: TopicRuleDestination
end

local record GetV2LoggingOptionsInput
    verbose: boolean
end

local record GetV2LoggingOptionsOutput
    roleArn: string
    defaultLogLevel: string
    disableAllLogs: boolean
    eventConfigurations: {LogEventConfiguration}
end

local record ListActiveViolationsInput
    thingName: string
    securityProfileName: string
    behaviorCriteriaType: string
    listSuppressedAlerts: boolean
    verificationState: string
    nextToken: string
    maxResults: number
end

local record ListActiveViolationsOutput
    activeViolations: {ActiveViolation}
    nextToken: string
end

local record ListAttachedPoliciesInput
    target: string
    recursive: boolean
    marker: string
    pageSize: number
end

local record ListAttachedPoliciesOutput
    policies: {Policy}
    nextMarker: string
end

local record ListAuditFindingsInput
    taskId: string
    checkName: string
    resourceIdentifier: ResourceIdentifier
    maxResults: number
    nextToken: string
    startTime: number
    endTime: number
    listSuppressedFindings: boolean
end

local record ListAuditFindingsOutput
    findings: {AuditFinding}
    nextToken: string
end

local record ListAuditMitigationActionsExecutionsInput
    taskId: string
    actionStatus: string
    findingId: string
    maxResults: number
    nextToken: string
end

local record ListAuditMitigationActionsExecutionsOutput
    actionsExecutions: {AuditMitigationActionExecutionMetadata}
    nextToken: string
end

local record ListAuditMitigationActionsTasksInput
    auditTaskId: string
    findingId: string
    taskStatus: string
    maxResults: number
    nextToken: string
    startTime: number
    endTime: number
end

local record ListAuditMitigationActionsTasksOutput
    tasks: {AuditMitigationActionsTaskMetadata}
    nextToken: string
end

local record ListAuditSuppressionsInput
    checkName: string
    resourceIdentifier: ResourceIdentifier
    ascendingOrder: boolean
    nextToken: string
    maxResults: number
end

local record ListAuditSuppressionsOutput
    suppressions: {AuditSuppression}
    nextToken: string
end

local record ListAuditTasksInput
    startTime: number
    endTime: number
    taskType: string
    taskStatus: string
    nextToken: string
    maxResults: number
end

local record ListAuditTasksOutput
    tasks: {AuditTaskMetadata}
    nextToken: string
end

local record ListAuthorizersInput
    pageSize: number
    marker: string
    ascendingOrder: boolean
    status: string
end

local record ListAuthorizersOutput
    authorizers: {AuthorizerSummary}
    nextMarker: string
end

local record ListBillingGroupsInput
    nextToken: string
    maxResults: number
    namePrefixFilter: string
end

local record ListBillingGroupsOutput
    billingGroups: {GroupNameAndArn}
    nextToken: string
end

local record ListCACertificatesInput
    pageSize: number
    marker: string
    ascendingOrder: boolean
    templateName: string
end

local record ListCACertificatesOutput
    certificates: {CACertificate}
    nextMarker: string
end

local record ListCertificateProvidersInput
    nextToken: string
    ascendingOrder: boolean
end

local record ListCertificateProvidersOutput
    certificateProviders: {CertificateProviderSummary}
    nextToken: string
end

local record ListCertificatesInput
    pageSize: number
    marker: string
    ascendingOrder: boolean
end

local record ListCertificatesOutput
    certificates: {Certificate}
    nextMarker: string
end

local record ListCertificatesByCAInput
    caCertificateId: string
    pageSize: number
    marker: string
    ascendingOrder: boolean
end

local record ListCertificatesByCAOutput
    certificates: {Certificate}
    nextMarker: string
end

local record ListCommandExecutionsInput
    maxResults: number
    nextToken: string
    namespace: string
    status: string
    sortOrder: string
    startedTimeFilter: TimeFilter
    completedTimeFilter: TimeFilter
    targetArn: string
    commandArn: string
end

local record ListCommandExecutionsOutput
    commandExecutions: {CommandExecutionSummary}
    nextToken: string
end

local record ListCommandsInput
    maxResults: number
    nextToken: string
    namespace: string
    commandParameterName: string
    sortOrder: string
end

local record ListCommandsOutput
    commands: {CommandSummary}
    nextToken: string
end

local record ListCustomMetricsInput
    nextToken: string
    maxResults: number
end

local record ListCustomMetricsOutput
    metricNames: {string}
    nextToken: string
end

local record ListDetectMitigationActionsExecutionsInput
    taskId: string
    violationId: string
    thingName: string
    startTime: number
    endTime: number
    maxResults: number
    nextToken: string
end

local record ListDetectMitigationActionsExecutionsOutput
    actionsExecutions: {DetectMitigationActionExecution}
    nextToken: string
end

local record ListDetectMitigationActionsTasksInput
    maxResults: number
    nextToken: string
    startTime: number
    endTime: number
end

local record ListDetectMitigationActionsTasksOutput
    tasks: {DetectMitigationActionsTaskSummary}
    nextToken: string
end

local record ListDimensionsInput
    nextToken: string
    maxResults: number
end

local record ListDimensionsOutput
    dimensionNames: {string}
    nextToken: string
end

local record ListDomainConfigurationsInput
    marker: string
    pageSize: number
    serviceType: string
end

local record ListDomainConfigurationsOutput
    domainConfigurations: {DomainConfigurationSummary}
    nextMarker: string
end

local record ListFleetMetricsInput
    nextToken: string
    maxResults: number
end

local record ListFleetMetricsOutput
    fleetMetrics: {FleetMetricNameAndArn}
    nextToken: string
end

local record ListIndicesInput
    nextToken: string
    maxResults: number
end

local record ListIndicesOutput
    indexNames: {string}
    nextToken: string
end

local record ListJobExecutionsForJobInput
    jobId: string
    status: string
    maxResults: number
    nextToken: string
end

local record ListJobExecutionsForJobOutput
    executionSummaries: {JobExecutionSummaryForJob}
    nextToken: string
end

local record ListJobExecutionsForThingInput
    thingName: string
    status: string
    namespaceId: string
    maxResults: number
    nextToken: string
    jobId: string
end

local record ListJobExecutionsForThingOutput
    executionSummaries: {JobExecutionSummaryForThing}
    nextToken: string
end

local record ListJobsInput
    status: string
    targetSelection: string
    maxResults: number
    nextToken: string
    thingGroupName: string
    thingGroupId: string
    namespaceId: string
end

local record ListJobsOutput
    jobs: {JobSummary}
    nextToken: string
end

local record ListJobTemplatesInput
    maxResults: number
    nextToken: string
end

local record ListJobTemplatesOutput
    jobTemplates: {JobTemplateSummary}
    nextToken: string
end

local record ListManagedJobTemplatesInput
    templateName: string
    maxResults: number
    nextToken: string
end

local record ListManagedJobTemplatesOutput
    managedJobTemplates: {ManagedJobTemplateSummary}
    nextToken: string
end

local record ListMetricValuesInput
    thingName: string
    metricName: string
    dimensionName: string
    dimensionValueOperator: string
    startTime: number
    endTime: number
    maxResults: number
    nextToken: string
end

local record ListMetricValuesOutput
    metricDatumList: {MetricDatum}
    nextToken: string
end

local record ListMitigationActionsInput
    actionType: string
    maxResults: number
    nextToken: string
end

local record ListMitigationActionsOutput
    actionIdentifiers: {MitigationActionIdentifier}
    nextToken: string
end

local record ListOTAUpdatesInput
    maxResults: number
    nextToken: string
    otaUpdateStatus: string
end

local record ListOTAUpdatesOutput
    otaUpdates: {OTAUpdateSummary}
    nextToken: string
end

local record ListOutgoingCertificatesInput
    pageSize: number
    marker: string
    ascendingOrder: boolean
end

local record ListOutgoingCertificatesOutput
    outgoingCertificates: {OutgoingCertificate}
    nextMarker: string
end

local record ListPackagesInput
    maxResults: number
    nextToken: string
end

local record ListPackagesOutput
    packageSummaries: {PackageSummary}
    nextToken: string
end

local record ListPackageVersionsInput
    packageName: string
    status: string
    maxResults: number
    nextToken: string
end

local record ListPackageVersionsOutput
    packageVersionSummaries: {PackageVersionSummary}
    nextToken: string
end

local record ListPoliciesInput
    marker: string
    pageSize: number
    ascendingOrder: boolean
end

local record ListPoliciesOutput
    policies: {Policy}
    nextMarker: string
end

local record ListPolicyPrincipalsInput
    policyName: string
    marker: string
    pageSize: number
    ascendingOrder: boolean
end

local record ListPolicyPrincipalsOutput
    principals: {string}
    nextMarker: string
end

local record ListPolicyVersionsInput
    policyName: string
end

local record ListPolicyVersionsOutput
    policyVersions: {PolicyVersion}
end

local record ListPrincipalPoliciesInput
    principal: string
    marker: string
    pageSize: number
    ascendingOrder: boolean
end

local record ListPrincipalPoliciesOutput
    policies: {Policy}
    nextMarker: string
end

local record ListPrincipalThingsInput
    nextToken: string
    maxResults: number
    principal: string
end

local record ListPrincipalThingsOutput
    things: {string}
    nextToken: string
end

local record ListPrincipalThingsV2Input
    nextToken: string
    maxResults: number
    principal: string
    thingPrincipalType: string
end

local record ListPrincipalThingsV2Output
    principalThingObjects: {PrincipalThingObject}
    nextToken: string
end

local record ListProvisioningTemplatesInput
    maxResults: number
    nextToken: string
end

local record ListProvisioningTemplatesOutput
    templates: {ProvisioningTemplateSummary}
    nextToken: string
end

local record ListProvisioningTemplateVersionsInput
    templateName: string
    maxResults: number
    nextToken: string
end

local record ListProvisioningTemplateVersionsOutput
    versions: {ProvisioningTemplateVersionSummary}
    nextToken: string
end

local record ListRelatedResourcesForAuditFindingInput
    findingId: string
    nextToken: string
    maxResults: number
end

local record ListRelatedResourcesForAuditFindingOutput
    relatedResources: {RelatedResource}
    nextToken: string
end

local record ListRoleAliasesInput
    pageSize: number
    marker: string
    ascendingOrder: boolean
end

local record ListRoleAliasesOutput
    roleAliases: {string}
    nextMarker: string
end

local record ListSbomValidationResultsInput
    packageName: string
    versionName: string
    validationResult: string
    maxResults: number
    nextToken: string
end

local record ListSbomValidationResultsOutput
    validationResultSummaries: {SbomValidationResultSummary}
    nextToken: string
end

local record ListScheduledAuditsInput
    nextToken: string
    maxResults: number
end

local record ListScheduledAuditsOutput
    scheduledAudits: {ScheduledAuditMetadata}
    nextToken: string
end

local record ListSecurityProfilesInput
    nextToken: string
    maxResults: number
    dimensionName: string
    metricName: string
end

local record ListSecurityProfilesOutput
    securityProfileIdentifiers: {SecurityProfileIdentifier}
    nextToken: string
end

local record ListSecurityProfilesForTargetInput
    nextToken: string
    maxResults: number
    recursive: boolean
    securityProfileTargetArn: string
end

local record ListSecurityProfilesForTargetOutput
    securityProfileTargetMappings: {SecurityProfileTargetMapping}
    nextToken: string
end

local record ListStreamsInput
    maxResults: number
    nextToken: string
    ascendingOrder: boolean
end

local record ListStreamsOutput
    streams: {StreamSummary}
    nextToken: string
end

local record ListTagsForResourceInput
    resourceArn: string
    nextToken: string
end

local record ListTagsForResourceOutput
    tags: {Tag}
    nextToken: string
end

local record ListTargetsForPolicyInput
    policyName: string
    marker: string
    pageSize: number
end

local record ListTargetsForPolicyOutput
    targets: {string}
    nextMarker: string
end

local record ListTargetsForSecurityProfileInput
    securityProfileName: string
    nextToken: string
    maxResults: number
end

local record ListTargetsForSecurityProfileOutput
    securityProfileTargets: {SecurityProfileTarget}
    nextToken: string
end

local record ListThingGroupsInput
    nextToken: string
    maxResults: number
    parentGroup: string
    namePrefixFilter: string
    recursive: boolean
end

local record ListThingGroupsOutput
    thingGroups: {GroupNameAndArn}
    nextToken: string
end

local record ListThingGroupsForThingInput
    thingName: string
    nextToken: string
    maxResults: number
end

local record ListThingGroupsForThingOutput
    thingGroups: {GroupNameAndArn}
    nextToken: string
end

local record ListThingPrincipalsInput
    nextToken: string
    maxResults: number
    thingName: string
end

local record ListThingPrincipalsOutput
    principals: {string}
    nextToken: string
end

local record ListThingPrincipalsV2Input
    nextToken: string
    maxResults: number
    thingName: string
    thingPrincipalType: string
end

local record ListThingPrincipalsV2Output
    thingPrincipalObjects: {ThingPrincipalObject}
    nextToken: string
end

local record ListThingRegistrationTaskReportsInput
    taskId: string
    reportType: string
    nextToken: string
    maxResults: number
end

local record ListThingRegistrationTaskReportsOutput
    resourceLinks: {string}
    reportType: string
    nextToken: string
end

local record ListThingRegistrationTasksInput
    nextToken: string
    maxResults: number
    status: string
end

local record ListThingRegistrationTasksOutput
    taskIds: {string}
    nextToken: string
end

local record ListThingsInput
    nextToken: string
    maxResults: number
    attributeName: string
    attributeValue: string
    thingTypeName: string
    usePrefixAttributeValue: boolean
end

local record ListThingsOutput
    things: {ThingAttribute}
    nextToken: string
end

local record ListThingsInBillingGroupInput
    billingGroupName: string
    nextToken: string
    maxResults: number
end

local record ListThingsInBillingGroupOutput
    things: {string}
    nextToken: string
end

local record ListThingsInThingGroupInput
    thingGroupName: string
    recursive: boolean
    nextToken: string
    maxResults: number
end

local record ListThingsInThingGroupOutput
    things: {string}
    nextToken: string
end

local record ListThingTypesInput
    nextToken: string
    maxResults: number
    thingTypeName: string
end

local record ListThingTypesOutput
    thingTypes: {ThingTypeDefinition}
    nextToken: string
end

local record ListTopicRuleDestinationsInput
    maxResults: number
    nextToken: string
end

local record ListTopicRuleDestinationsOutput
    destinationSummaries: {TopicRuleDestinationSummary}
    nextToken: string
end

local record ListTopicRulesInput
    topic: string
    maxResults: number
    nextToken: string
    ruleDisabled: boolean
end

local record ListTopicRulesOutput
    rules: {TopicRuleListItem}
    nextToken: string
end

local record ListV2LoggingLevelsInput
    targetType: string
    nextToken: string
    maxResults: number
end

local record ListV2LoggingLevelsOutput
    logTargetConfigurations: {LogTargetConfiguration}
    nextToken: string
end

local record ListViolationEventsInput
    startTime: number
    endTime: number
    thingName: string
    securityProfileName: string
    behaviorCriteriaType: string
    listSuppressedAlerts: boolean
    verificationState: string
    nextToken: string
    maxResults: number
end

local record ListViolationEventsOutput
    violationEvents: {ViolationEvent}
    nextToken: string
end

local record PutVerificationStateOnViolationInput
    violationId: string
    verificationState: string
    verificationStateDescription: string
end

local record PutVerificationStateOnViolationOutput
end

local record RegisterCACertificateInput
    caCertificate: string
    verificationCertificate: string
    setAsActive: boolean
    allowAutoRegistration: boolean
    registrationConfig: RegistrationConfig
    tags: {Tag}
    certificateMode: string
end

local record RegisterCACertificateOutput
    certificateArn: string
    certificateId: string
end

local record RegisterCertificateInput
    certificatePem: string
    caCertificatePem: string
    setAsActive: boolean
    status: string
end

local record RegisterCertificateOutput
    certificateArn: string
    certificateId: string
end

local record RegisterCertificateWithoutCAInput
    certificatePem: string
    status: string
end

local record RegisterCertificateWithoutCAOutput
    certificateArn: string
    certificateId: string
end

local record RegisterThingInput
    templateBody: string
    parameters: {string : string}
end

local record RegisterThingOutput
    certificatePem: string
    resourceArns: {string : string}
end

local record RejectCertificateTransferInput
    certificateId: string
    rejectReason: string
end

local record RejectCertificateTransferOutput
end

local record RemoveThingFromBillingGroupInput
    billingGroupName: string
    billingGroupArn: string
    thingName: string
    thingArn: string
end

local record RemoveThingFromBillingGroupOutput
end

local record RemoveThingFromThingGroupInput
    thingGroupName: string
    thingGroupArn: string
    thingName: string
    thingArn: string
end

local record RemoveThingFromThingGroupOutput
end

local record ReplaceTopicRuleInput
    ruleName: string
    topicRulePayload: TopicRulePayload
end

local record ReplaceTopicRuleOutput
end

local record SearchIndexInput
    indexName: string
    queryString: string
    nextToken: string
    maxResults: number
    queryVersion: string
end

local record SearchIndexOutput
    nextToken: string
    things: {ThingDocument}
    thingGroups: {ThingGroupDocument}
end

local record SetDefaultAuthorizerInput
    authorizerName: string
end

local record SetDefaultAuthorizerOutput
    authorizerName: string
    authorizerArn: string
end

local record SetDefaultPolicyVersionInput
    policyName: string
    policyVersionId: string
end

local record SetDefaultPolicyVersionOutput
end

local record SetLoggingOptionsInput
    loggingOptionsPayload: LoggingOptionsPayload
end

local record SetLoggingOptionsOutput
end

local record SetV2LoggingLevelInput
    logTarget: LogTarget
    logLevel: string
end

local record SetV2LoggingLevelOutput
end

local record SetV2LoggingOptionsInput
    roleArn: string
    defaultLogLevel: string
    disableAllLogs: boolean
    eventConfigurations: {LogEventConfiguration}
end

local record SetV2LoggingOptionsOutput
end

local record StartAuditMitigationActionsTaskInput
    taskId: string
    target: AuditMitigationActionsTaskTarget
    auditCheckToActionsMapping: {string : {string}}
    clientRequestToken: string
end

local record StartAuditMitigationActionsTaskOutput
    taskId: string
end

local record StartDetectMitigationActionsTaskInput
    taskId: string
    target: DetectMitigationActionsTaskTarget
    actions: {string}
    violationEventOccurrenceRange: ViolationEventOccurrenceRange
    includeOnlyActiveViolations: boolean
    includeSuppressedAlerts: boolean
    clientRequestToken: string
end

local record StartDetectMitigationActionsTaskOutput
    taskId: string
end

local record StartOnDemandAuditTaskInput
    targetCheckNames: {string}
end

local record StartOnDemandAuditTaskOutput
    taskId: string
end

local record StartThingRegistrationTaskInput
    templateBody: string
    inputFileBucket: string
    inputFileKey: string
    roleArn: string
end

local record StartThingRegistrationTaskOutput
    taskId: string
end

local record StopThingRegistrationTaskInput
    taskId: string
end

local record StopThingRegistrationTaskOutput
end

local record TagResourceInput
    resourceArn: string
    tags: {Tag}
end

local record TagResourceOutput
end

local record TestAuthorizationInput
    principal: string
    cognitoIdentityPoolId: string
    authInfos: {AuthInfo}
    clientId: string
    policyNamesToAdd: {string}
    policyNamesToSkip: {string}
end

local record TestAuthorizationOutput
    authResults: {AuthResult}
end

local record TestInvokeAuthorizerInput
    authorizerName: string
    token: string
    tokenSignature: string
    httpContext: HttpContext
    mqttContext: MqttContext
    tlsContext: TlsContext
end

local record TestInvokeAuthorizerOutput
    isAuthenticated: boolean
    principalId: string
    policyDocuments: {string}
    refreshAfterInSeconds: number
    disconnectAfterInSeconds: number
end

local record TransferCertificateInput
    certificateId: string
    targetAwsAccount: string
    transferMessage: string
end

local record TransferCertificateOutput
    transferredCertificateArn: string
end

local record UntagResourceInput
    resourceArn: string
    tagKeys: {string}
end

local record UntagResourceOutput
end

local record UpdateAccountAuditConfigurationInput
    roleArn: string
    auditNotificationTargetConfigurations: {string : AuditNotificationTarget}
    auditCheckConfigurations: {string : AuditCheckConfiguration}
end

local record UpdateAccountAuditConfigurationOutput
end

local record UpdateAuditSuppressionInput
    checkName: string
    resourceIdentifier: ResourceIdentifier
    expirationDate: number
    suppressIndefinitely: boolean
    description: string
end

local record UpdateAuditSuppressionOutput
end

local record UpdateAuthorizerInput
    authorizerName: string
    authorizerFunctionArn: string
    tokenKeyName: string
    tokenSigningPublicKeys: {string : string}
    status: string
    enableCachingForHttp: boolean
end

local record UpdateAuthorizerOutput
    authorizerName: string
    authorizerArn: string
end

local record UpdateBillingGroupInput
    billingGroupName: string
    billingGroupProperties: BillingGroupProperties
    expectedVersion: number
end

local record UpdateBillingGroupOutput
    version: number
end

local record UpdateCACertificateInput
    certificateId: string
    newStatus: string
    newAutoRegistrationStatus: string
    registrationConfig: RegistrationConfig
    removeAutoRegistration: boolean
end

local record UpdateCACertificateOutput
end

local record UpdateCertificateInput
    certificateId: string
    newStatus: string
end

local record UpdateCertificateOutput
end

local record UpdateCertificateProviderInput
    certificateProviderName: string
    lambdaFunctionArn: string
    accountDefaultForOperations: {string}
end

local record UpdateCertificateProviderOutput
    certificateProviderName: string
    certificateProviderArn: string
end

local record UpdateCommandInput
    commandId: string
    displayName: string
    description: string
    deprecated: boolean
end

local record UpdateCommandOutput
    commandId: string
    displayName: string
    description: string
    deprecated: boolean
    lastUpdatedAt: number
end

local record UpdateCustomMetricInput
    metricName: string
    displayName: string
end

local record UpdateCustomMetricOutput
    metricName: string
    metricArn: string
    metricType: string
    displayName: string
    creationDate: number
    lastModifiedDate: number
end

local record UpdateDimensionInput
    name: string
    stringValues: {string}
end

local record UpdateDimensionOutput
    name: string
    arn: string
    type: string
    stringValues: {string}
    creationDate: number
    lastModifiedDate: number
end

local record UpdateDomainConfigurationInput
    domainConfigurationName: string
    authorizerConfig: AuthorizerConfig
    domainConfigurationStatus: string
    removeAuthorizerConfig: boolean
    tlsConfig: TlsConfig
    serverCertificateConfig: ServerCertificateConfig
    authenticationType: string
    applicationProtocol: string
    clientCertificateConfig: ClientCertificateConfig
end

local record UpdateDomainConfigurationOutput
    domainConfigurationName: string
    domainConfigurationArn: string
end

local record UpdateDynamicThingGroupInput
    thingGroupName: string
    thingGroupProperties: ThingGroupProperties
    expectedVersion: number
    indexName: string
    queryString: string
    queryVersion: string
end

local record UpdateDynamicThingGroupOutput
    version: number
end

local record UpdateEncryptionConfigurationInput
    encryptionType: string
    kmsKeyArn: string
    kmsAccessRoleArn: string
end

local record UpdateEncryptionConfigurationOutput
end

local record UpdateEventConfigurationsInput
    eventConfigurations: {string : Configuration}
end

local record UpdateEventConfigurationsOutput
end

local record UpdateFleetMetricInput
    metricName: string
    queryString: string
    aggregationType: AggregationType
    period: number
    aggregationField: string
    description: string
    queryVersion: string
    indexName: string
    unit: string
    expectedVersion: number
end

local record UpdateFleetMetricOutput
end

local record UpdateIndexingConfigurationInput
    thingIndexingConfiguration: ThingIndexingConfiguration
    thingGroupIndexingConfiguration: ThingGroupIndexingConfiguration
end

local record UpdateIndexingConfigurationOutput
end

local record UpdateJobInput
    jobId: string
    description: string
    presignedUrlConfig: PresignedUrlConfig
    jobExecutionsRolloutConfig: JobExecutionsRolloutConfig
    abortConfig: AbortConfig
    timeoutConfig: TimeoutConfig
    namespaceId: string
    jobExecutionsRetryConfig: JobExecutionsRetryConfig
end

local record UpdateJobOutput
end

local record UpdateMitigationActionInput
    actionName: string
    roleArn: string
    actionParams: MitigationActionParams
end

local record UpdateMitigationActionOutput
    actionArn: string
    actionId: string
end

local record UpdatePackageInput
    packageName: string
    description: string
    defaultVersionName: string
    unsetDefaultVersion: boolean
    clientToken: string
end

local record UpdatePackageOutput
end

local record UpdatePackageConfigurationInput
    versionUpdateByJobsConfig: VersionUpdateByJobsConfig
    clientToken: string
end

local record UpdatePackageConfigurationOutput
end

local record UpdatePackageVersionInput
    packageName: string
    versionName: string
    description: string
    attributes: {string : string}
    artifact: PackageVersionArtifact
    action: string
    recipe: string
    clientToken: string
end

local record UpdatePackageVersionOutput
end

local record UpdateProvisioningTemplateInput
    templateName: string
    description: string
    enabled: boolean
    defaultVersionId: number
    provisioningRoleArn: string
    preProvisioningHook: ProvisioningHook
    removePreProvisioningHook: boolean
end

local record UpdateProvisioningTemplateOutput
end

local record UpdateRoleAliasInput
    roleAlias: string
    roleArn: string
    credentialDurationSeconds: number
end

local record UpdateRoleAliasOutput
    roleAlias: string
    roleAliasArn: string
end

local record UpdateScheduledAuditInput
    frequency: string
    dayOfMonth: string
    dayOfWeek: string
    targetCheckNames: {string}
    scheduledAuditName: string
end

local record UpdateScheduledAuditOutput
    scheduledAuditArn: string
end

local record UpdateSecurityProfileInput
    securityProfileName: string
    securityProfileDescription: string
    behaviors: {Behavior}
    alertTargets: {string : AlertTarget}
    additionalMetricsToRetain: {string}
    additionalMetricsToRetainV2: {MetricToRetain}
    deleteBehaviors: boolean
    deleteAlertTargets: boolean
    deleteAdditionalMetricsToRetain: boolean
    expectedVersion: number
    metricsExportConfig: MetricsExportConfig
    deleteMetricsExportConfig: boolean
end

local record UpdateSecurityProfileOutput
    securityProfileName: string
    securityProfileArn: string
    securityProfileDescription: string
    behaviors: {Behavior}
    alertTargets: {string : AlertTarget}
    additionalMetricsToRetain: {string}
    additionalMetricsToRetainV2: {MetricToRetain}
    version: number
    creationDate: number
    lastModifiedDate: number
    metricsExportConfig: MetricsExportConfig
end

local record UpdateStreamInput
    streamId: string
    description: string
    files: {StreamFile}
    roleArn: string
end

local record UpdateStreamOutput
    streamId: string
    streamArn: string
    description: string
    streamVersion: number
end

local record UpdateThingInput
    thingName: string
    thingTypeName: string
    attributePayload: AttributePayload
    expectedVersion: number
    removeThingType: boolean
end

local record UpdateThingOutput
end

local record UpdateThingGroupInput
    thingGroupName: string
    thingGroupProperties: ThingGroupProperties
    expectedVersion: number
end

local record UpdateThingGroupOutput
    version: number
end

local record UpdateThingGroupsForThingInput
    thingName: string
    thingGroupsToAdd: {string}
    thingGroupsToRemove: {string}
    overrideDynamicGroups: boolean
end

local record UpdateThingGroupsForThingOutput
end

local record UpdateThingTypeInput
    thingTypeName: string
    thingTypeProperties: ThingTypeProperties
end

local record UpdateThingTypeOutput
end

local record UpdateTopicRuleDestinationInput
    arn: string
    status: string
end

local record UpdateTopicRuleDestinationOutput
end

local record ValidateSecurityProfileBehaviorsInput
    behaviors: {Behavior}
end

local record ValidateSecurityProfileBehaviorsOutput
    valid: boolean
    validationErrors: {ValidationError}
end

local record InternalFailureException
    message: string
end

local record InvalidRequestException
    message: string
end

local record ResourceNotFoundException
    message: string
end

local record ServiceUnavailableException
    message: string
end

local record ThrottlingException
    message: string
end

local record TransferAlreadyCompletedException
    message: string
end

local record UnauthorizedException
    message: string
end

local record InternalFailureException
    message: string
end

local record InvalidRequestException
    message: string
end

local record ResourceNotFoundException
    message: string
end

local record ThrottlingException
    message: string
end

local record InternalFailureException
    message: string
end

local record InvalidRequestException
    message: string
end

local record ResourceNotFoundException
    message: string
end

local record ThrottlingException
    message: string
end

local record ConflictException
    message: string
    resourceId: string
end

local record InternalServerException
    message: string
end

local record ResourceNotFoundException
    message: string
end

local record ServiceQuotaExceededException
    message: string
end

local record ThrottlingException
    message: string
end

local record ValidationException
    message: string
end

local record InvalidRequestException
    message: string
end

local record LimitExceededException
    message: string
end

local record ResourceNotFoundException
    message: string
end

local record ServiceUnavailableException
    message: string
end

local record ThrottlingException
    message: string
end

local record InternalFailureException
    message: string
end

local record InvalidRequestException
    message: string
end

local record LimitExceededException
    message: string
end

local record ResourceNotFoundException
    message: string
end

local record ServiceUnavailableException
    message: string
end

local record ThrottlingException
    message: string
end

local record UnauthorizedException
    message: string
end

local record InternalFailureException
    message: string
end

local record InvalidRequestException
    message: string
end

local record LimitExceededException
    message: string
end

local record ResourceNotFoundException
    message: string
end

local record ServiceUnavailableException
    message: string
end

local record ThrottlingException
    message: string
end

local record UnauthorizedException
    message: string
end

local record InternalFailureException
    message: string
end

local record InvalidRequestException
    message: string
end

local record LimitExceededException
    message: string
end

local record ResourceNotFoundException
    message: string
end

local record ThrottlingException
    message: string
end

local record VersionConflictException
    message: string
end

local record InternalFailureException
    message: string
end

local record InvalidRequestException
    message: string
end

local record ResourceNotFoundException
    message: string
end

local record ServiceUnavailableException
    message: string
end

local record ThrottlingException
    message: string
end

local record UnauthorizedException
    message: string
end

local record InternalFailureException
    message: string
end

local record InvalidRequestException
    message: string
end

local record ResourceNotFoundException
    message: string
end

local record ThrottlingException
    message: string
end

local record InternalFailureException
    message: string
end

local record InvalidRequestException
    message: string
end

local record ResourceNotFoundException
    message: string
end

local record ThrottlingException
    message: string
end

local record InternalFailureException
    message: string
end

local record InvalidRequestException
    message: string
end

local record ResourceNotFoundException
    message: string
end

local record ServiceUnavailableException
    message: string
end

local record ThrottlingException
    message: string
end

local record TransferAlreadyCompletedException
    message: string
end

local record UnauthorizedException
    message: string
end

local record InternalFailureException
    message: string
end

local record InvalidRequestException
    message: string
end

local record ResourceNotFoundException
    message: string
end

local record ThrottlingException
    message: string
end

local record InvalidRequestException
    message: string
end

local record LimitExceededException
    message: string
end

local record ResourceNotFoundException
    message: string
end

local record ServiceUnavailableException
    message: string
end

local record ThrottlingException
    message: string
end

local record InvalidRequestException
    message: string
end

local record InvalidStateTransitionException
    message: string
end

local record ResourceNotFoundException
    message: string
end

local record ServiceUnavailableException
    message: string
end

local record ThrottlingException
    message: string
end

local record VersionConflictException
    message: string
end

local record InternalFailureException
    message: string
end

local record InvalidRequestException
    message: string
end

local record ResourceNotFoundException
    message: string
end

local record ServiceUnavailableException
    message: string
end

local record ThrottlingException
    message: string
end

local record UnauthorizedException
    message: string
end

local record ConflictingResourceUpdateException
    message: string
end

local record InternalException
    message: string
end

local record InvalidRequestException
    message: string
end

local record ServiceUnavailableException
    message: string
end

local record UnauthorizedException
    message: string
end

local record InternalFailureException
    message: string
end

local record InvalidRequestException
    message: string
end

local record LimitExceededException
    message: string
end

local record ResourceAlreadyExistsException
    message: string
    resourceId: string
    resourceArn: string
end

local record ThrottlingException
    message: string
end

local record InternalFailureException
    message: string
end

local record InvalidRequestException
    message: string
end

local record LimitExceededException
    message: string
end

local record ResourceAlreadyExistsException
    message: string
    resourceId: string
    resourceArn: string
end

local record ServiceUnavailableException
    message: string
end

local record ThrottlingException
    message: string
end

local record UnauthorizedException
    message: string
end

local record InternalFailureException
    message: string
end

local record InvalidRequestException
    message: string
end

local record ResourceAlreadyExistsException
    message: string
    resourceId: string
    resourceArn: string
end

local record ThrottlingException
    message: string
end

local record InternalFailureException
    message: string
end

local record InvalidRequestException
    message: string
end

local record ServiceUnavailableException
    message: string
end

local record ThrottlingException
    message: string
end

local record UnauthorizedException
    message: string
end

local record InternalFailureException
    message: string
end

local record InvalidRequestException
    message: string
end

local record LimitExceededException
    message: string
end

local record ResourceAlreadyExistsException
    message: string
    resourceId: string
    resourceArn: string
end

local record ServiceUnavailableException
    message: string
end

local record ThrottlingException
    message: string
end

local record UnauthorizedException
    message: string
end

local record ConflictException
    message: string
    resourceId: string
end

local record InternalServerException
    message: string
end

local record ServiceQuotaExceededException
    message: string
end

local record ThrottlingException
    message: string
end

local record ValidationException
    message: string
end

local record InternalFailureException
    message: string
end

local record InvalidRequestException
    message: string
end

local record LimitExceededException
    message: string
end

local record ResourceAlreadyExistsException
    message: string
    resourceId: string
    resourceArn: string
end

local record ThrottlingException
    message: string
end

local record InternalFailureException
    message: string
end

local record InvalidRequestException
    message: string
end

local record LimitExceededException
    message: string
end

local record ResourceAlreadyExistsException
    message: string
    resourceId: string
    resourceArn: string
end

local record ThrottlingException
    message: string
end

local record CertificateValidationException
    message: string
end

local record InternalFailureException
    message: string
end

local record InvalidRequestException
    message: string
end

local record LimitExceededException
    message: string
end

local record ResourceAlreadyExistsException
    message: string
    resourceId: string
    resourceArn: string
end

local record ServiceUnavailableException
    message: string
end

local record ThrottlingException
    message: string
end

local record UnauthorizedException
    message: string
end

local record InternalFailureException
    message: string
end

local record InvalidQueryException
    message: string
end

local record InvalidRequestException
    message: string
end

local record LimitExceededException
    message: string
end

local record ResourceAlreadyExistsException
    message: string
    resourceId: string
    resourceArn: string
end

local record ResourceNotFoundException
    message: string
end

local record ThrottlingException
    message: string
end

local record IndexNotReadyException
    message: string
end

local record InternalFailureException
    message: string
end

local record InvalidAggregationException
    message: string
end

local record InvalidQueryException
    message: string
end

local record InvalidRequestException
    message: string
end

local record LimitExceededException
    message: string
end

local record ResourceAlreadyExistsException
    message: string
    resourceId: string
    resourceArn: string
end

local record ResourceNotFoundException
    message: string
end

local record ServiceUnavailableException
    message: string
end

local record ThrottlingException
    message: string
end

local record UnauthorizedException
    message: string
end

local record InvalidRequestException
    message: string
end

local record LimitExceededException
    message: string
end

local record ResourceAlreadyExistsException
    message: string
    resourceId: string
    resourceArn: string
end

local record ResourceNotFoundException
    message: string
end

local record ServiceUnavailableException
    message: string
end

local record ThrottlingException
    message: string
end

local record ConflictException
    message: string
    resourceId: string
end

local record InternalFailureException
    message: string
end

local record InvalidRequestException
    message: string
end

local record LimitExceededException
    message: string
end

local record ResourceNotFoundException
    message: string
end

local record ThrottlingException
    message: string
end

local record InternalFailureException
    message: string
end

local record InvalidRequestException
    message: string
end

local record ServiceUnavailableException
    message: string
end

local record ThrottlingException
    message: string
end

local record UnauthorizedException
    message: string
end

local record InternalFailureException
    message: string
end

local record InvalidRequestException
    message: string
end

local record LimitExceededException
    message: string
end

local record ResourceAlreadyExistsException
    message: string
    resourceId: string
    resourceArn: string
end

local record ThrottlingException
    message: string
end

local record InternalFailureException
    message: string
end

local record InvalidRequestException
    message: string
end

local record LimitExceededException
    message: string
end

local record ResourceAlreadyExistsException
    message: string
    resourceId: string
    resourceArn: string
end

local record ResourceNotFoundException
    message: string
end

local record ServiceUnavailableException
    message: string
end

local record ThrottlingException
    message: string
end

local record UnauthorizedException
    message: string
end

local record ConflictException
    message: string
    resourceId: string
end

local record InternalServerException
    message: string
end

local record ServiceQuotaExceededException
    message: string
end

local record ThrottlingException
    message: string
end

local record ValidationException
    message: string
end

local record ConflictException
    message: string
    resourceId: string
end

local record InternalServerException
    message: string
end

local record ServiceQuotaExceededException
    message: string
end

local record ThrottlingException
    message: string
end

local record ValidationException
    message: string
end

local record InternalFailureException
    message: string
end

local record InvalidRequestException
    message: string
end

local record MalformedPolicyException
    message: string
end

local record ResourceAlreadyExistsException
    message: string
    resourceId: string
    resourceArn: string
end

local record ServiceUnavailableException
    message: string
end

local record ThrottlingException
    message: string
end

local record UnauthorizedException
    message: string
end

local record InternalFailureException
    message: string
end

local record InvalidRequestException
    message: string
end

local record MalformedPolicyException
    message: string
end

local record ResourceNotFoundException
    message: string
end

local record ServiceUnavailableException
    message: string
end

local record ThrottlingException
    message: string
end

local record UnauthorizedException
    message: string
end

local record VersionsLimitExceededException
    message: string
end

local record InternalFailureException
    message: string
end

local record InvalidRequestException
    message: string
end

local record ResourceNotFoundException
    message: string
end

local record ServiceUnavailableException
    message: string
end

local record ThrottlingException
    message: string
end

local record UnauthorizedException
    message: string
end

local record InternalFailureException
    message: string
end

local record InvalidRequestException
    message: string
end

local record LimitExceededException
    message: string
end

local record ResourceAlreadyExistsException
    message: string
    resourceId: string
    resourceArn: string
end

local record ThrottlingException
    message: string
end

local record UnauthorizedException
    message: string
end

local record ConflictingResourceUpdateException
    message: string
end

local record InternalFailureException
    message: string
end

local record InvalidRequestException
    message: string
end

local record ResourceNotFoundException
    message: string
end

local record ThrottlingException
    message: string
end

local record UnauthorizedException
    message: string
end

local record VersionsLimitExceededException
    message: string
end

local record InternalFailureException
    message: string
end

local record InvalidRequestException
    message: string
end

local record LimitExceededException
    message: string
end

local record ResourceAlreadyExistsException
    message: string
    resourceId: string
    resourceArn: string
end

local record ServiceUnavailableException
    message: string
end

local record ThrottlingException
    message: string
end

local record UnauthorizedException
    message: string
end

local record InternalFailureException
    message: string
end

local record InvalidRequestException
    message: string
end

local record LimitExceededException
    message: string
end

local record ResourceAlreadyExistsException
    message: string
    resourceId: string
    resourceArn: string
end

local record ThrottlingException
    message: string
end

local record InternalFailureException
    message: string
end

local record InvalidRequestException
    message: string
end

local record ResourceAlreadyExistsException
    message: string
    resourceId: string
    resourceArn: string
end

local record ThrottlingException
    message: string
end

local record InternalFailureException
    message: string
end

local record InvalidRequestException
    message: string
end

local record LimitExceededException
    message: string
end

local record ResourceAlreadyExistsException
    message: string
    resourceId: string
    resourceArn: string
end

local record ResourceNotFoundException
    message: string
end

local record ServiceUnavailableException
    message: string
end

local record ThrottlingException
    message: string
end

local record UnauthorizedException
    message: string
end

local record InternalFailureException
    message: string
end

local record InvalidRequestException
    message: string
end

local record ResourceAlreadyExistsException
    message: string
    resourceId: string
    resourceArn: string
end

local record ResourceNotFoundException
    message: string
end

local record ServiceUnavailableException
    message: string
end

local record ThrottlingException
    message: string
end

local record UnauthorizedException
    message: string
end

local record InternalFailureException
    message: string
end

local record InvalidRequestException
    message: string
end

local record ResourceAlreadyExistsException
    message: string
    resourceId: string
    resourceArn: string
end

local record ThrottlingException
    message: string
end

local record InternalFailureException
    message: string
end

local record InvalidRequestException
    message: string
end

local record ResourceAlreadyExistsException
    message: string
    resourceId: string
    resourceArn: string
end

local record ServiceUnavailableException
    message: string
end

local record ThrottlingException
    message: string
end

local record UnauthorizedException
    message: string
end

local record ConflictingResourceUpdateException
    message: string
end

local record InternalException
    message: string
end

local record InvalidRequestException
    message: string
end

local record ResourceAlreadyExistsException
    message: string
    resourceId: string
    resourceArn: string
end

local record ServiceUnavailableException
    message: string
end

local record SqlParseException
    message: string
end

local record UnauthorizedException
    message: string
end

local record ConflictingResourceUpdateException
    message: string
end

local record InternalException
    message: string
end

local record InvalidRequestException
    message: string
end

local record ResourceAlreadyExistsException
    message: string
    resourceId: string
    resourceArn: string
end

local record ServiceUnavailableException
    message: string
end

local record UnauthorizedException
    message: string
end

local record InternalFailureException
    message: string
end

local record InvalidRequestException
    message: string
end

local record ResourceNotFoundException
    message: string
end

local record ThrottlingException
    message: string
end

local record InternalFailureException
    message: string
end

local record InvalidRequestException
    message: string
end

local record ThrottlingException
    message: string
end

local record DeleteConflictException
    message: string
end

local record InternalFailureException
    message: string
end

local record InvalidRequestException
    message: string
end

local record ResourceNotFoundException
    message: string
end

local record ServiceUnavailableException
    message: string
end

local record ThrottlingException
    message: string
end

local record UnauthorizedException
    message: string
end

local record InternalFailureException
    message: string
end

local record InvalidRequestException
    message: string
end

local record ThrottlingException
    message: string
end

local record VersionConflictException
    message: string
end

local record CertificateStateException
    message: string
end

local record InternalFailureException
    message: string
end

local record InvalidRequestException
    message: string
end

local record ResourceNotFoundException
    message: string
end

local record ServiceUnavailableException
    message: string
end

local record ThrottlingException
    message: string
end

local record UnauthorizedException
    message: string
end

local record CertificateStateException
    message: string
end

local record DeleteConflictException
    message: string
end

local record InternalFailureException
    message: string
end

local record InvalidRequestException
    message: string
end

local record ResourceNotFoundException
    message: string
end

local record ServiceUnavailableException
    message: string
end

local record ThrottlingException
    message: string
end

local record UnauthorizedException
    message: string
end

local record DeleteConflictException
    message: string
end

local record InternalFailureException
    message: string
end

local record InvalidRequestException
    message: string
end

local record ResourceNotFoundException
    message: string
end

local record ServiceUnavailableException
    message: string
end

local record ThrottlingException
    message: string
end

local record UnauthorizedException
    message: string
end

local record ConflictException
    message: string
    resourceId: string
end

local record InternalServerException
    message: string
end

local record ThrottlingException
    message: string
end

local record ValidationException
    message: string
end

local record ConflictException
    message: string
    resourceId: string
end

local record InternalServerException
    message: string
end

local record ThrottlingException
    message: string
end

local record ValidationException
    message: string
end

local record InternalFailureException
    message: string
end

local record InvalidRequestException
    message: string
end

local record ThrottlingException
    message: string
end

local record InternalFailureException
    message: string
end

local record InvalidRequestException
    message: string
end

local record ThrottlingException
    message: string
end

local record InternalFailureException
    message: string
end

local record InvalidRequestException
    message: string
end

local record ResourceNotFoundException
    message: string
end

local record ServiceUnavailableException
    message: string
end

local record ThrottlingException
    message: string
end

local record UnauthorizedException
    message: string
end

local record InternalFailureException
    message: string
end

local record InvalidRequestException
    message: string
end

local record ThrottlingException
    message: string
end

local record VersionConflictException
    message: string
end

local record InternalFailureException
    message: string
end

local record InvalidRequestException
    message: string
end

local record ServiceUnavailableException
    message: string
end

local record ThrottlingException
    message: string
end

local record UnauthorizedException
    message: string
end

local record VersionConflictException
    message: string
end

local record InvalidRequestException
    message: string
end

local record InvalidStateTransitionException
    message: string
end

local record LimitExceededException
    message: string
end

local record ResourceNotFoundException
    message: string
end

local record ServiceUnavailableException
    message: string
end

local record ThrottlingException
    message: string
end

local record InvalidRequestException
    message: string
end

local record InvalidStateTransitionException
    message: string
end

local record ResourceNotFoundException
    message: string
end

local record ServiceUnavailableException
    message: string
end

local record ThrottlingException
    message: string
end

local record InternalFailureException
    message: string
end

local record InvalidRequestException
    message: string
end

local record ResourceNotFoundException
    message: string
end

local record ThrottlingException
    message: string
end

local record InternalFailureException
    message: string
end

local record InvalidRequestException
    message: string
end

local record ThrottlingException
    message: string
end

local record InternalFailureException
    message: string
end

local record InvalidRequestException
    message: string
end

local record ResourceNotFoundException
    message: string
end

local record ServiceUnavailableException
    message: string
end

local record ThrottlingException
    message: string
end

local record UnauthorizedException
    message: string
end

local record VersionConflictException
    message: string
end

local record InternalServerException
    message: string
end

local record ThrottlingException
    message: string
end

local record ValidationException
    message: string
end

local record InternalServerException
    message: string
end

local record ThrottlingException
    message: string
end

local record ValidationException
    message: string
end

local record DeleteConflictException
    message: string
end

local record InternalFailureException
    message: string
end

local record InvalidRequestException
    message: string
end

local record ResourceNotFoundException
    message: string
end

local record ServiceUnavailableException
    message: string
end

local record ThrottlingException
    message: string
end

local record UnauthorizedException
    message: string
end

local record DeleteConflictException
    message: string
end

local record InternalFailureException
    message: string
end

local record InvalidRequestException
    message: string
end

local record ResourceNotFoundException
    message: string
end

local record ServiceUnavailableException
    message: string
end

local record ThrottlingException
    message: string
end

local record UnauthorizedException
    message: string
end

local record ConflictingResourceUpdateException
    message: string
end

local record DeleteConflictException
    message: string
end

local record InternalFailureException
    message: string
end

local record InvalidRequestException
    message: string
end

local record ResourceNotFoundException
    message: string
end

local record ThrottlingException
    message: string
end

local record UnauthorizedException
    message: string
end

local record ConflictingResourceUpdateException
    message: string
end

local record DeleteConflictException
    message: string
end

local record InternalFailureException
    message: string
end

local record InvalidRequestException
    message: string
end

local record ResourceNotFoundException
    message: string
end

local record ThrottlingException
    message: string
end

local record UnauthorizedException
    message: string
end

local record InternalFailureException
    message: string
end

local record ResourceNotFoundException
    message: string
end

local record ServiceUnavailableException
    message: string
end

local record ThrottlingException
    message: string
end

local record UnauthorizedException
    message: string
end

local record DeleteConflictException
    message: string
end

local record InternalFailureException
    message: string
end

local record InvalidRequestException
    message: string
end

local record ResourceNotFoundException
    message: string
end

local record ServiceUnavailableException
    message: string
end

local record ThrottlingException
    message: string
end

local record UnauthorizedException
    message: string
end

local record InternalFailureException
    message: string
end

local record InvalidRequestException
    message: string
end

local record ResourceNotFoundException
    message: string
end

local record ThrottlingException
    message: string
end

local record InternalFailureException
    message: string
end

local record InvalidRequestException
    message: string
end

local record ThrottlingException
    message: string
end

local record VersionConflictException
    message: string
end

local record DeleteConflictException
    message: string
end

local record InternalFailureException
    message: string
end

local record InvalidRequestException
    message: string
end

local record ResourceNotFoundException
    message: string
end

local record ServiceUnavailableException
    message: string
end

local record ThrottlingException
    message: string
end

local record UnauthorizedException
    message: string
end

local record InternalFailureException
    message: string
end

local record InvalidRequestException
    message: string
end

local record ResourceNotFoundException
    message: string
end

local record ServiceUnavailableException
    message: string
end

local record ThrottlingException
    message: string
end

local record UnauthorizedException
    message: string
end

local record VersionConflictException
    message: string
end

local record InternalFailureException
    message: string
end

local record InvalidRequestException
    message: string
end

local record ThrottlingException
    message: string
end

local record VersionConflictException
    message: string
end

local record InternalFailureException
    message: string
end

local record InvalidRequestException
    message: string
end

local record ResourceNotFoundException
    message: string
end

local record ServiceUnavailableException
    message: string
end

local record ThrottlingException
    message: string
end

local record UnauthorizedException
    message: string
end

local record ConflictingResourceUpdateException
    message: string
end

local record InternalException
    message: string
end

local record InvalidRequestException
    message: string
end

local record ServiceUnavailableException
    message: string
end

local record UnauthorizedException
    message: string
end

local record ConflictingResourceUpdateException
    message: string
end

local record InternalException
    message: string
end

local record InvalidRequestException
    message: string
end

local record ServiceUnavailableException
    message: string
end

local record UnauthorizedException
    message: string
end

local record InternalException
    message: string
end

local record InvalidRequestException
    message: string
end

local record ServiceUnavailableException
    message: string
end

local record InternalFailureException
    message: string
end

local record InvalidRequestException
    message: string
end

local record ResourceNotFoundException
    message: string
end

local record ServiceUnavailableException
    message: string
end

local record ThrottlingException
    message: string
end

local record UnauthorizedException
    message: string
end

local record InternalFailureException
    message: string
end

local record ThrottlingException
    message: string
end

local record InternalFailureException
    message: string
end

local record InvalidRequestException
    message: string
end

local record ResourceNotFoundException
    message: string
end

local record ThrottlingException
    message: string
end

local record InternalFailureException
    message: string
end

local record InvalidRequestException
    message: string
end

local record ResourceNotFoundException
    message: string
end

local record ThrottlingException
    message: string
end

local record InternalFailureException
    message: string
end

local record InvalidRequestException
    message: string
end

local record ResourceNotFoundException
    message: string
end

local record ThrottlingException
    message: string
end

local record InternalFailureException
    message: string
end

local record InvalidRequestException
    message: string
end

local record ResourceNotFoundException
    message: string
end

local record ThrottlingException
    message: string
end

local record InternalFailureException
    message: string
end

local record InvalidRequestException
    message: string
end

local record ResourceNotFoundException
    message: string
end

local record ServiceUnavailableException
    message: string
end

local record ThrottlingException
    message: string
end

local record UnauthorizedException
    message: string
end

local record InternalFailureException
    message: string
end

local record InvalidRequestException
    message: string
end

local record ResourceNotFoundException
    message: string
end

local record ThrottlingException
    message: string
end

local record InternalFailureException
    message: string
end

local record InvalidRequestException
    message: string
end

local record ResourceNotFoundException
    message: string
end

local record ServiceUnavailableException
    message: string
end

local record ThrottlingException
    message: string
end

local record UnauthorizedException
    message: string
end

local record InternalFailureException
    message: string
end

local record InvalidRequestException
    message: string
end

local record ResourceNotFoundException
    message: string
end

local record ServiceUnavailableException
    message: string
end

local record ThrottlingException
    message: string
end

local record UnauthorizedException
    message: string
end

local record InternalFailureException
    message: string
end

local record InvalidRequestException
    message: string
end

local record ResourceNotFoundException
    message: string
end

local record ServiceUnavailableException
    message: string
end

local record ThrottlingException
    message: string
end

local record UnauthorizedException
    message: string
end

local record InternalFailureException
    message: string
end

local record InvalidRequestException
    message: string
end

local record ResourceNotFoundException
    message: string
end

local record ThrottlingException
    message: string
end

local record InternalFailureException
    message: string
end

local record InvalidRequestException
    message: string
end

local record ResourceNotFoundException
    message: string
end

local record ServiceUnavailableException
    message: string
end

local record ThrottlingException
    message: string
end

local record UnauthorizedException
    message: string
end

local record InternalFailureException
    message: string
end

local record InvalidRequestException
    message: string
end

local record ResourceNotFoundException
    message: string
end

local record ThrottlingException
    message: string
end

local record InternalFailureException
    message: string
end

local record InvalidRequestException
    message: string
end

local record ResourceNotFoundException
    message: string
end

local record ThrottlingException
    message: string
end

local record InternalFailureException
    message: string
end

local record InvalidRequestException
    message: string
end

local record ResourceNotFoundException
    message: string
end

local record ServiceUnavailableException
    message: string
end

local record ThrottlingException
    message: string
end

local record UnauthorizedException
    message: string
end

local record InternalFailureException
    message: string
end

local record InvalidRequestException
    message: string
end

local record ServiceUnavailableException
    message: string
end

local record ThrottlingException
    message: string
end

local record UnauthorizedException
    message: string
end

local record InternalFailureException
    message: string
end

local record InvalidRequestException
    message: string
end

local record ThrottlingException
    message: string
end

local record UnauthorizedException
    message: string
end

local record InternalFailureException
    message: string
end

local record ThrottlingException
    message: string
end

local record InternalFailureException
    message: string
end

local record InvalidRequestException
    message: string
end

local record ResourceNotFoundException
    message: string
end

local record ServiceUnavailableException
    message: string
end

local record ThrottlingException
    message: string
end

local record UnauthorizedException
    message: string
end

local record InternalFailureException
    message: string
end

local record InvalidRequestException
    message: string
end

local record ResourceNotFoundException
    message: string
end

local record ServiceUnavailableException
    message: string
end

local record ThrottlingException
    message: string
end

local record UnauthorizedException
    message: string
end

local record InvalidRequestException
    message: string
end

local record ResourceNotFoundException
    message: string
end

local record ServiceUnavailableException
    message: string
end

local record ThrottlingException
    message: string
end

local record InvalidRequestException
    message: string
end

local record ResourceNotFoundException
    message: string
end

local record ServiceUnavailableException
    message: string
end

local record ThrottlingException
    message: string
end

local record InternalFailureException
    message: string
end

local record InvalidRequestException
    message: string
end

local record ResourceNotFoundException
    message: string
end

local record ThrottlingException
    message: string
end

local record InternalServerException
    message: string
end

local record InvalidRequestException
    message: string
end

local record ResourceNotFoundException
    message: string
end

local record ThrottlingException
    message: string
end

local record InternalFailureException
    message: string
end

local record InvalidRequestException
    message: string
end

local record ResourceNotFoundException
    message: string
end

local record ThrottlingException
    message: string
end

local record InternalFailureException
    message: string
end

local record InvalidRequestException
    message: string
end

local record ResourceNotFoundException
    message: string
end

local record ThrottlingException
    message: string
end

local record UnauthorizedException
    message: string
end

local record InternalFailureException
    message: string
end

local record InvalidRequestException
    message: string
end

local record ResourceNotFoundException
    message: string
end

local record ThrottlingException
    message: string
end

local record UnauthorizedException
    message: string
end

local record InternalFailureException
    message: string
end

local record InvalidRequestException
    message: string
end

local record ResourceNotFoundException
    message: string
end

local record ServiceUnavailableException
    message: string
end

local record ThrottlingException
    message: string
end

local record UnauthorizedException
    message: string
end

local record InternalFailureException
    message: string
end

local record InvalidRequestException
    message: string
end

local record ResourceNotFoundException
    message: string
end

local record ThrottlingException
    message: string
end

local record InternalFailureException
    message: string
end

local record InvalidRequestException
    message: string
end

local record ResourceNotFoundException
    message: string
end

local record ThrottlingException
    message: string
end

local record InternalFailureException
    message: string
end

local record InvalidRequestException
    message: string
end

local record ResourceNotFoundException
    message: string
end

local record ServiceUnavailableException
    message: string
end

local record ThrottlingException
    message: string
end

local record UnauthorizedException
    message: string
end

local record InternalFailureException
    message: string
end

local record InvalidRequestException
    message: string
end

local record ResourceNotFoundException
    message: string
end

local record ServiceUnavailableException
    message: string
end

local record ThrottlingException
    message: string
end

local record UnauthorizedException
    message: string
end

local record InternalFailureException
    message: string
end

local record InvalidRequestException
    message: string
end

local record ResourceNotFoundException
    message: string
end

local record ThrottlingException
    message: string
end

local record InternalFailureException
    message: string
end

local record InvalidRequestException
    message: string
end

local record ResourceNotFoundException
    message: string
end

local record ThrottlingException
    message: string
end

local record UnauthorizedException
    message: string
end

local record InternalFailureException
    message: string
end

local record InvalidRequestException
    message: string
end

local record ResourceNotFoundException
    message: string
end

local record ServiceUnavailableException
    message: string
end

local record ThrottlingException
    message: string
end

local record UnauthorizedException
    message: string
end

local record InternalFailureException
    message: string
end

local record InvalidRequestException
    message: string
end

local record LimitExceededException
    message: string
end

local record ServiceUnavailableException
    message: string
end

local record ThrottlingException
    message: string
end

local record UnauthorizedException
    message: string
end

local record InternalFailureException
    message: string
end

local record InvalidRequestException
    message: string
end

local record ResourceNotFoundException
    message: string
end

local record ServiceUnavailableException
    message: string
end

local record ThrottlingException
    message: string
end

local record UnauthorizedException
    message: string
end

local record InternalFailureException
    message: string
end

local record InvalidRequestException
    message: string
end

local record ResourceNotFoundException
    message: string
end

local record ThrottlingException
    message: string
end

local record InternalFailureException
    message: string
end

local record InvalidRequestException
    message: string
end

local record ResourceNotFoundException
    message: string
end

local record ServiceUnavailableException
    message: string
end

local record ThrottlingException
    message: string
end

local record UnauthorizedException
    message: string
end

local record ConflictingResourceUpdateException
    message: string
end

local record InternalException
    message: string
end

local record InvalidRequestException
    message: string
end

local record ServiceUnavailableException
    message: string
end

local record UnauthorizedException
    message: string
end

local record ConflictException
    message: string
    resourceId: string
end

local record InternalServerException
    message: string
end

local record ResourceNotFoundException
    message: string
end

local record ThrottlingException
    message: string
end

local record ValidationException
    message: string
end

local record ConflictingResourceUpdateException
    message: string
end

local record InternalException
    message: string
end

local record InvalidRequestException
    message: string
end

local record ServiceUnavailableException
    message: string
end

local record UnauthorizedException
    message: string
end

local record InternalFailureException
    message: string
end

local record InvalidRequestException
    message: string
end

local record ResourceNotFoundException
    message: string
end

local record ThrottlingException
    message: string
end

local record IndexNotReadyException
    message: string
end

local record InternalFailureException
    message: string
end

local record InvalidAggregationException
    message: string
end

local record InvalidQueryException
    message: string
end

local record InvalidRequestException
    message: string
end

local record ResourceNotFoundException
    message: string
end

local record ServiceUnavailableException
    message: string
end

local record ThrottlingException
    message: string
end

local record UnauthorizedException
    message: string
end

local record IndexNotReadyException
    message: string
end

local record InternalFailureException
    message: string
end

local record InvalidAggregationException
    message: string
end

local record InvalidQueryException
    message: string
end

local record InvalidRequestException
    message: string
end

local record ResourceNotFoundException
    message: string
end

local record ServiceUnavailableException
    message: string
end

local record ThrottlingException
    message: string
end

local record UnauthorizedException
    message: string
end

local record InternalServerException
    message: string
end

local record ResourceNotFoundException
    message: string
end

local record ThrottlingException
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
end

local record ThrottlingException
    message: string
end

local record ValidationException
    message: string
end

local record InternalFailureException
    message: string
end

local record InvalidRequestException
    message: string
end

local record LimitExceededException
    message: string
end

local record ResourceNotFoundException
    message: string
end

local record ServiceUnavailableException
    message: string
end

local record ThrottlingException
    message: string
end

local record UnauthorizedException
    message: string
end

local record InternalFailureException
    message: string
end

local record InvalidRequestException
    message: string
end

local record ServiceUnavailableException
    message: string
end

local record ThrottlingException
    message: string
end

local record UnauthorizedException
    message: string
end

local record InvalidRequestException
    message: string
end

local record ResourceNotFoundException
    message: string
end

local record ServiceUnavailableException
    message: string
end

local record ThrottlingException
    message: string
end

local record InternalException
    message: string
end

local record InvalidRequestException
    message: string
end

local record ServiceUnavailableException
    message: string
end

local record InternalFailureException
    message: string
end

local record InvalidRequestException
    message: string
end

local record ResourceNotFoundException
    message: string
end

local record ServiceUnavailableException
    message: string
end

local record ThrottlingException
    message: string
end

local record UnauthorizedException
    message: string
end

local record InternalServerException
    message: string
end

local record ResourceNotFoundException
    message: string
end

local record ThrottlingException
    message: string
end

local record ValidationException
    message: string
end

local record InternalServerException
    message: string
end

local record ThrottlingException
    message: string
end

local record InternalServerException
    message: string
end

local record ResourceNotFoundException
    message: string
end

local record ThrottlingException
    message: string
end

local record ValidationException
    message: string
end

local record IndexNotReadyException
    message: string
end

local record InternalFailureException
    message: string
end

local record InvalidAggregationException
    message: string
end

local record InvalidQueryException
    message: string
end

local record InvalidRequestException
    message: string
end

local record ResourceNotFoundException
    message: string
end

local record ServiceUnavailableException
    message: string
end

local record ThrottlingException
    message: string
end

local record UnauthorizedException
    message: string
end

local record InternalFailureException
    message: string
end

local record InvalidRequestException
    message: string
end

local record ResourceNotFoundException
    message: string
end

local record ServiceUnavailableException
    message: string
end

local record ThrottlingException
    message: string
end

local record UnauthorizedException
    message: string
end

local record InternalFailureException
    message: string
end

local record InvalidRequestException
    message: string
end

local record ResourceNotFoundException
    message: string
end

local record ServiceUnavailableException
    message: string
end

local record ThrottlingException
    message: string
end

local record UnauthorizedException
    message: string
end

local record InternalFailureException
    message: string
end

local record InvalidRequestException
    message: string
end

local record ServiceUnavailableException
    message: string
end

local record ThrottlingException
    message: string
end

local record UnauthorizedException
    message: string
end

local record IndexNotReadyException
    message: string
end

local record InternalFailureException
    message: string
end

local record InvalidAggregationException
    message: string
end

local record InvalidQueryException
    message: string
end

local record InvalidRequestException
    message: string
end

local record ResourceNotFoundException
    message: string
end

local record ServiceUnavailableException
    message: string
end

local record ThrottlingException
    message: string
end

local record UnauthorizedException
    message: string
end

local record IndexNotReadyException
    message: string
end

local record InternalFailureException
    message: string
end

local record InvalidRequestException
    message: string
end

local record ResourceNotFoundException
    message: string
end

local record ServiceUnavailableException
    message: string
end

local record ThrottlingException
    message: string
end

local record UnauthorizedException
    message: string
end

local record InternalException
    message: string
end

local record InvalidRequestException
    message: string
end

local record ServiceUnavailableException
    message: string
end

local record UnauthorizedException
    message: string
end

local record InternalException
    message: string
end

local record InvalidRequestException
    message: string
end

local record ServiceUnavailableException
    message: string
end

local record UnauthorizedException
    message: string
end

local record InternalException
    message: string
end

local record NotConfiguredException
    message: string
end

local record ServiceUnavailableException
    message: string
end

local record InternalFailureException
    message: string
end

local record InvalidRequestException
    message: string
end

local record ResourceNotFoundException
    message: string
end

local record ThrottlingException
    message: string
end

local record InternalFailureException
    message: string
end

local record InvalidRequestException
    message: string
end

local record LimitExceededException
    message: string
end

local record ResourceNotFoundException
    message: string
end

local record ServiceUnavailableException
    message: string
end

local record ThrottlingException
    message: string
end

local record UnauthorizedException
    message: string
end

local record InternalFailureException
    message: string
end

local record InvalidRequestException
    message: string
end

local record ThrottlingException
    message: string
end

local record InternalFailureException
    message: string
end

local record InvalidRequestException
    message: string
end

local record ThrottlingException
    message: string
end

local record InternalFailureException
    message: string
end

local record InvalidRequestException
    message: string
end

local record ThrottlingException
    message: string
end

local record InternalFailureException
    message: string
end

local record InvalidRequestException
    message: string
end

local record ThrottlingException
    message: string
end

local record InternalFailureException
    message: string
end

local record InvalidRequestException
    message: string
end

local record ThrottlingException
    message: string
end

local record InternalFailureException
    message: string
end

local record InvalidRequestException
    message: string
end

local record ServiceUnavailableException
    message: string
end

local record ThrottlingException
    message: string
end

local record UnauthorizedException
    message: string
end

local record InternalFailureException
    message: string
end

local record InvalidRequestException
    message: string
end

local record ResourceNotFoundException
    message: string
end

local record ThrottlingException
    message: string
end

local record InternalFailureException
    message: string
end

local record InvalidRequestException
    message: string
end

local record ServiceUnavailableException
    message: string
end

local record ThrottlingException
    message: string
end

local record UnauthorizedException
    message: string
end

local record InternalFailureException
    message: string
end

local record InvalidRequestException
    message: string
end

local record ServiceUnavailableException
    message: string
end

local record ThrottlingException
    message: string
end

local record UnauthorizedException
    message: string
end

local record InternalFailureException
    message: string
end

local record InvalidRequestException
    message: string
end

local record ServiceUnavailableException
    message: string
end

local record ThrottlingException
    message: string
end

local record UnauthorizedException
    message: string
end

local record InternalFailureException
    message: string
end

local record InvalidRequestException
    message: string
end

local record ServiceUnavailableException
    message: string
end

local record ThrottlingException
    message: string
end

local record UnauthorizedException
    message: string
end

local record InternalServerException
    message: string
end

local record ResourceNotFoundException
    message: string
end

local record ThrottlingException
    message: string
end

local record ValidationException
    message: string
end

local record InternalServerException
    message: string
end

local record ThrottlingException
    message: string
end

local record ValidationException
    message: string
end

local record InternalFailureException
    message: string
end

local record InvalidRequestException
    message: string
end

local record ThrottlingException
    message: string
end

local record InternalFailureException
    message: string
end

local record InvalidRequestException
    message: string
end

local record ThrottlingException
    message: string
end

local record InternalFailureException
    message: string
end

local record InvalidRequestException
    message: string
end

local record ThrottlingException
    message: string
end

local record InternalFailureException
    message: string
end

local record InvalidRequestException
    message: string
end

local record ThrottlingException
    message: string
end

local record InternalFailureException
    message: string
end

local record InvalidRequestException
    message: string
end

local record ServiceUnavailableException
    message: string
end

local record ThrottlingException
    message: string
end

local record UnauthorizedException
    message: string
end

local record InternalFailureException
    message: string
end

local record InvalidRequestException
    message: string
end

local record ServiceUnavailableException
    message: string
end

local record ThrottlingException
    message: string
end

local record UnauthorizedException
    message: string
end

local record InternalFailureException
    message: string
end

local record InvalidRequestException
    message: string
end

local record ServiceUnavailableException
    message: string
end

local record ThrottlingException
    message: string
end

local record UnauthorizedException
    message: string
end

local record InvalidRequestException
    message: string
end

local record ResourceNotFoundException
    message: string
end

local record ServiceUnavailableException
    message: string
end

local record ThrottlingException
    message: string
end

local record InvalidRequestException
    message: string
end

local record ResourceNotFoundException
    message: string
end

local record ServiceUnavailableException
    message: string
end

local record ThrottlingException
    message: string
end

local record InvalidRequestException
    message: string
end

local record ResourceNotFoundException
    message: string
end

local record ServiceUnavailableException
    message: string
end

local record ThrottlingException
    message: string
end

local record InternalFailureException
    message: string
end

local record InvalidRequestException
    message: string
end

local record ThrottlingException
    message: string
end

local record InternalServerException
    message: string
end

local record InvalidRequestException
    message: string
end

local record ResourceNotFoundException
    message: string
end

local record ThrottlingException
    message: string
end

local record InternalFailureException
    message: string
end

local record InvalidRequestException
    message: string
end

local record ResourceNotFoundException
    message: string
end

local record ThrottlingException
    message: string
end

local record InternalFailureException
    message: string
end

local record InvalidRequestException
    message: string
end

local record ThrottlingException
    message: string
end

local record InternalFailureException
    message: string
end

local record InvalidRequestException
    message: string
end

local record ServiceUnavailableException
    message: string
end

local record ThrottlingException
    message: string
end

local record UnauthorizedException
    message: string
end

local record InternalFailureException
    message: string
end

local record InvalidRequestException
    message: string
end

local record ServiceUnavailableException
    message: string
end

local record ThrottlingException
    message: string
end

local record UnauthorizedException
    message: string
end

local record InternalServerException
    message: string
end

local record ThrottlingException
    message: string
end

local record ValidationException
    message: string
end

local record InternalServerException
    message: string
end

local record ThrottlingException
    message: string
end

local record ValidationException
    message: string
end

local record InternalFailureException
    message: string
end

local record InvalidRequestException
    message: string
end

local record ServiceUnavailableException
    message: string
end

local record ThrottlingException
    message: string
end

local record UnauthorizedException
    message: string
end

local record InternalFailureException
    message: string
end

local record InvalidRequestException
    message: string
end

local record ResourceNotFoundException
    message: string
end

local record ServiceUnavailableException
    message: string
end

local record ThrottlingException
    message: string
end

local record UnauthorizedException
    message: string
end

local record InternalFailureException
    message: string
end

local record InvalidRequestException
    message: string
end

local record ResourceNotFoundException
    message: string
end

local record ServiceUnavailableException
    message: string
end

local record ThrottlingException
    message: string
end

local record UnauthorizedException
    message: string
end

local record InternalFailureException
    message: string
end

local record InvalidRequestException
    message: string
end

local record ResourceNotFoundException
    message: string
end

local record ServiceUnavailableException
    message: string
end

local record ThrottlingException
    message: string
end

local record UnauthorizedException
    message: string
end

local record InternalFailureException
    message: string
end

local record InvalidRequestException
    message: string
end

local record ResourceNotFoundException
    message: string
end

local record ServiceUnavailableException
    message: string
end

local record ThrottlingException
    message: string
end

local record UnauthorizedException
    message: string
end

local record InternalFailureException
    message: string
end

local record InvalidRequestException
    message: string
end

local record ResourceNotFoundException
    message: string
end

local record ServiceUnavailableException
    message: string
end

local record ThrottlingException
    message: string
end

local record UnauthorizedException
    message: string
end

local record InternalFailureException
    message: string
end

local record InvalidRequestException
    message: string
end

local record ThrottlingException
    message: string
end

local record UnauthorizedException
    message: string
end

local record InternalFailureException
    message: string
end

local record InvalidRequestException
    message: string
end

local record ResourceNotFoundException
    message: string
end

local record ThrottlingException
    message: string
end

local record UnauthorizedException
    message: string
end

local record InternalFailureException
    message: string
end

local record InvalidRequestException
    message: string
end

local record ResourceNotFoundException
    message: string
end

local record ThrottlingException
    message: string
end

local record InternalFailureException
    message: string
end

local record InvalidRequestException
    message: string
end

local record ServiceUnavailableException
    message: string
end

local record ThrottlingException
    message: string
end

local record UnauthorizedException
    message: string
end

local record InternalServerException
    message: string
end

local record ResourceNotFoundException
    message: string
end

local record ThrottlingException
    message: string
end

local record ValidationException
    message: string
end

local record InternalFailureException
    message: string
end

local record InvalidRequestException
    message: string
end

local record ThrottlingException
    message: string
end

local record InternalFailureException
    message: string
end

local record InvalidRequestException
    message: string
end

local record ResourceNotFoundException
    message: string
end

local record ThrottlingException
    message: string
end

local record InternalFailureException
    message: string
end

local record InvalidRequestException
    message: string
end

local record ResourceNotFoundException
    message: string
end

local record ThrottlingException
    message: string
end

local record InternalFailureException
    message: string
end

local record InvalidRequestException
    message: string
end

local record ServiceUnavailableException
    message: string
end

local record ThrottlingException
    message: string
end

local record UnauthorizedException
    message: string
end

local record InternalFailureException
    message: string
end

local record InvalidRequestException
    message: string
end

local record ResourceNotFoundException
    message: string
end

local record ThrottlingException
    message: string
end

local record InternalFailureException
    message: string
end

local record InvalidRequestException
    message: string
end

local record LimitExceededException
    message: string
end

local record ResourceNotFoundException
    message: string
end

local record ServiceUnavailableException
    message: string
end

local record ThrottlingException
    message: string
end

local record UnauthorizedException
    message: string
end

local record InternalFailureException
    message: string
end

local record InvalidRequestException
    message: string
end

local record ResourceNotFoundException
    message: string
end

local record ThrottlingException
    message: string
end

local record InternalFailureException
    message: string
end

local record InvalidRequestException
    message: string
end

local record ResourceNotFoundException
    message: string
end

local record ThrottlingException
    message: string
end

local record InternalFailureException
    message: string
end

local record InvalidRequestException
    message: string
end

local record ResourceNotFoundException
    message: string
end

local record ThrottlingException
    message: string
end

local record InternalFailureException
    message: string
end

local record InvalidRequestException
    message: string
end

local record ResourceNotFoundException
    message: string
end

local record ServiceUnavailableException
    message: string
end

local record ThrottlingException
    message: string
end

local record UnauthorizedException
    message: string
end

local record InternalFailureException
    message: string
end

local record InvalidRequestException
    message: string
end

local record ResourceNotFoundException
    message: string
end

local record ServiceUnavailableException
    message: string
end

local record ThrottlingException
    message: string
end

local record UnauthorizedException
    message: string
end

local record InternalFailureException
    message: string
end

local record InvalidRequestException
    message: string
end

local record ThrottlingException
    message: string
end

local record UnauthorizedException
    message: string
end

local record InternalFailureException
    message: string
end

local record InvalidRequestException
    message: string
end

local record ThrottlingException
    message: string
end

local record UnauthorizedException
    message: string
end

local record InternalFailureException
    message: string
end

local record InvalidRequestException
    message: string
end

local record ServiceUnavailableException
    message: string
end

local record ThrottlingException
    message: string
end

local record UnauthorizedException
    message: string
end

local record InternalFailureException
    message: string
end

local record InvalidRequestException
    message: string
end

local record ResourceNotFoundException
    message: string
end

local record ThrottlingException
    message: string
end

local record InternalFailureException
    message: string
end

local record InvalidRequestException
    message: string
end

local record ResourceNotFoundException
    message: string
end

local record ThrottlingException
    message: string
end

local record InternalFailureException
    message: string
end

local record InvalidRequestException
    message: string
end

local record ServiceUnavailableException
    message: string
end

local record ThrottlingException
    message: string
end

local record UnauthorizedException
    message: string
end

local record InternalException
    message: string
end

local record InvalidRequestException
    message: string
end

local record ServiceUnavailableException
    message: string
end

local record UnauthorizedException
    message: string
end

local record InternalException
    message: string
end

local record InvalidRequestException
    message: string
end

local record ServiceUnavailableException
    message: string
end

local record UnauthorizedException
    message: string
end

local record InternalException
    message: string
end

local record InvalidRequestException
    message: string
end

local record NotConfiguredException
    message: string
end

local record ServiceUnavailableException
    message: string
end

local record InternalFailureException
    message: string
end

local record InvalidRequestException
    message: string
end

local record ThrottlingException
    message: string
end

local record InternalFailureException
    message: string
end

local record InvalidRequestException
    message: string
end

local record ThrottlingException
    message: string
end

local record CertificateValidationException
    message: string
end

local record InternalFailureException
    message: string
end

local record InvalidRequestException
    message: string
end

local record LimitExceededException
    message: string
end

local record RegistrationCodeValidationException
    message: string
end

local record ResourceAlreadyExistsException
    message: string
    resourceId: string
    resourceArn: string
end

local record ResourceNotFoundException
    message: string
end

local record ServiceUnavailableException
    message: string
end

local record ThrottlingException
    message: string
end

local record UnauthorizedException
    message: string
end

local record CertificateConflictException
    message: string
end

local record CertificateStateException
    message: string
end

local record CertificateValidationException
    message: string
end

local record InternalFailureException
    message: string
end

local record InvalidRequestException
    message: string
end

local record ResourceAlreadyExistsException
    message: string
    resourceId: string
    resourceArn: string
end

local record ServiceUnavailableException
    message: string
end

local record ThrottlingException
    message: string
end

local record UnauthorizedException
    message: string
end

local record CertificateStateException
    message: string
end

local record CertificateValidationException
    message: string
end

local record InternalFailureException
    message: string
end

local record InvalidRequestException
    message: string
end

local record ResourceAlreadyExistsException
    message: string
    resourceId: string
    resourceArn: string
end

local record ServiceUnavailableException
    message: string
end

local record ThrottlingException
    message: string
end

local record UnauthorizedException
    message: string
end

local record ConflictingResourceUpdateException
    message: string
end

local record InternalFailureException
    message: string
end

local record InvalidRequestException
    message: string
end

local record ResourceRegistrationFailureException
    message: string
end

local record ServiceUnavailableException
    message: string
end

local record ThrottlingException
    message: string
end

local record UnauthorizedException
    message: string
end

local record InternalFailureException
    message: string
end

local record InvalidRequestException
    message: string
end

local record ResourceNotFoundException
    message: string
end

local record ServiceUnavailableException
    message: string
end

local record ThrottlingException
    message: string
end

local record TransferAlreadyCompletedException
    message: string
end

local record UnauthorizedException
    message: string
end

local record InternalFailureException
    message: string
end

local record InvalidRequestException
    message: string
end

local record ResourceNotFoundException
    message: string
end

local record ThrottlingException
    message: string
end

local record InternalFailureException
    message: string
end

local record InvalidRequestException
    message: string
end

local record ResourceNotFoundException
    message: string
end

local record ThrottlingException
    message: string
end

local record ConflictingResourceUpdateException
    message: string
end

local record InternalException
    message: string
end

local record InvalidRequestException
    message: string
end

local record ServiceUnavailableException
    message: string
end

local record SqlParseException
    message: string
end

local record UnauthorizedException
    message: string
end

local record IndexNotReadyException
    message: string
end

local record InternalFailureException
    message: string
end

local record InvalidQueryException
    message: string
end

local record InvalidRequestException
    message: string
end

local record ResourceNotFoundException
    message: string
end

local record ServiceUnavailableException
    message: string
end

local record ThrottlingException
    message: string
end

local record UnauthorizedException
    message: string
end

local record InternalFailureException
    message: string
end

local record InvalidRequestException
    message: string
end

local record ResourceAlreadyExistsException
    message: string
    resourceId: string
    resourceArn: string
end

local record ResourceNotFoundException
    message: string
end

local record ServiceUnavailableException
    message: string
end

local record ThrottlingException
    message: string
end

local record UnauthorizedException
    message: string
end

local record InternalFailureException
    message: string
end

local record InvalidRequestException
    message: string
end

local record ResourceNotFoundException
    message: string
end

local record ServiceUnavailableException
    message: string
end

local record ThrottlingException
    message: string
end

local record UnauthorizedException
    message: string
end

local record InternalException
    message: string
end

local record InvalidRequestException
    message: string
end

local record ServiceUnavailableException
    message: string
end

local record InternalException
    message: string
end

local record InvalidRequestException
    message: string
end

local record LimitExceededException
    message: string
end

local record NotConfiguredException
    message: string
end

local record ServiceUnavailableException
    message: string
end

local record InternalException
    message: string
end

local record InvalidRequestException
    message: string
end

local record ServiceUnavailableException
    message: string
end

local record InternalFailureException
    message: string
end

local record InvalidRequestException
    message: string
end

local record LimitExceededException
    message: string
end

local record TaskAlreadyExistsException
    message: string
end

local record ThrottlingException
    message: string
end

local record InternalFailureException
    message: string
end

local record InvalidRequestException
    message: string
end

local record LimitExceededException
    message: string
end

local record TaskAlreadyExistsException
    message: string
end

local record ThrottlingException
    message: string
end

local record InternalFailureException
    message: string
end

local record InvalidRequestException
    message: string
end

local record LimitExceededException
    message: string
end

local record ThrottlingException
    message: string
end

local record InternalFailureException
    message: string
end

local record InvalidRequestException
    message: string
end

local record ThrottlingException
    message: string
end

local record UnauthorizedException
    message: string
end

local record InternalFailureException
    message: string
end

local record InvalidRequestException
    message: string
end

local record ResourceNotFoundException
    message: string
end

local record ThrottlingException
    message: string
end

local record UnauthorizedException
    message: string
end

local record InternalFailureException
    message: string
end

local record InvalidRequestException
    message: string
end

local record LimitExceededException
    message: string
end

local record ResourceNotFoundException
    message: string
end

local record ThrottlingException
    message: string
end

local record InternalFailureException
    message: string
end

local record InvalidRequestException
    message: string
end

local record LimitExceededException
    message: string
end

local record ResourceNotFoundException
    message: string
end

local record ServiceUnavailableException
    message: string
end

local record ThrottlingException
    message: string
end

local record UnauthorizedException
    message: string
end

local record InternalFailureException
    message: string
end

local record InvalidRequestException
    message: string
end

local record InvalidResponseException
    message: string
end

local record ResourceNotFoundException
    message: string
end

local record ServiceUnavailableException
    message: string
end

local record ThrottlingException
    message: string
end

local record UnauthorizedException
    message: string
end

local record CertificateStateException
    message: string
end

local record InternalFailureException
    message: string
end

local record InvalidRequestException
    message: string
end

local record ResourceNotFoundException
    message: string
end

local record ServiceUnavailableException
    message: string
end

local record ThrottlingException
    message: string
end

local record TransferConflictException
    message: string
end

local record UnauthorizedException
    message: string
end

local record InternalFailureException
    message: string
end

local record InvalidRequestException
    message: string
end

local record ResourceNotFoundException
    message: string
end

local record ThrottlingException
    message: string
end

local record InternalFailureException
    message: string
end

local record InvalidRequestException
    message: string
end

local record ThrottlingException
    message: string
end

local record InternalFailureException
    message: string
end

local record InvalidRequestException
    message: string
end

local record ResourceNotFoundException
    message: string
end

local record ThrottlingException
    message: string
end

local record InternalFailureException
    message: string
end

local record InvalidRequestException
    message: string
end

local record LimitExceededException
    message: string
end

local record ResourceNotFoundException
    message: string
end

local record ServiceUnavailableException
    message: string
end

local record ThrottlingException
    message: string
end

local record UnauthorizedException
    message: string
end

local record InternalFailureException
    message: string
end

local record InvalidRequestException
    message: string
end

local record ResourceNotFoundException
    message: string
end

local record ThrottlingException
    message: string
end

local record VersionConflictException
    message: string
end

local record InternalFailureException
    message: string
end

local record InvalidRequestException
    message: string
end

local record ResourceNotFoundException
    message: string
end

local record ServiceUnavailableException
    message: string
end

local record ThrottlingException
    message: string
end

local record UnauthorizedException
    message: string
end

local record CertificateStateException
    message: string
end

local record InternalFailureException
    message: string
end

local record InvalidRequestException
    message: string
end

local record ResourceNotFoundException
    message: string
end

local record ServiceUnavailableException
    message: string
end

local record ThrottlingException
    message: string
end

local record UnauthorizedException
    message: string
end

local record InternalFailureException
    message: string
end

local record InvalidRequestException
    message: string
end

local record ResourceNotFoundException
    message: string
end

local record ServiceUnavailableException
    message: string
end

local record ThrottlingException
    message: string
end

local record UnauthorizedException
    message: string
end

local record ConflictException
    message: string
    resourceId: string
end

local record InternalServerException
    message: string
end

local record ResourceNotFoundException
    message: string
end

local record ThrottlingException
    message: string
end

local record ValidationException
    message: string
end

local record InternalFailureException
    message: string
end

local record InvalidRequestException
    message: string
end

local record ResourceNotFoundException
    message: string
end

local record ThrottlingException
    message: string
end

local record InternalFailureException
    message: string
end

local record InvalidRequestException
    message: string
end

local record ResourceNotFoundException
    message: string
end

local record ThrottlingException
    message: string
end

local record CertificateValidationException
    message: string
end

local record InternalFailureException
    message: string
end

local record InvalidRequestException
    message: string
end

local record ResourceNotFoundException
    message: string
end

local record ServiceUnavailableException
    message: string
end

local record ThrottlingException
    message: string
end

local record UnauthorizedException
    message: string
end

local record InternalFailureException
    message: string
end

local record InvalidQueryException
    message: string
end

local record InvalidRequestException
    message: string
end

local record ResourceNotFoundException
    message: string
end

local record ThrottlingException
    message: string
end

local record VersionConflictException
    message: string
end

local record InternalFailureException
    message: string
end

local record InvalidRequestException
    message: string
end

local record ServiceUnavailableException
    message: string
end

local record ThrottlingException
    message: string
end

local record UnauthorizedException
    message: string
end

local record InternalFailureException
    message: string
end

local record InvalidRequestException
    message: string
end

local record ThrottlingException
    message: string
end

local record IndexNotReadyException
    message: string
end

local record InternalFailureException
    message: string
end

local record InvalidAggregationException
    message: string
end

local record InvalidQueryException
    message: string
end

local record InvalidRequestException
    message: string
end

local record ResourceNotFoundException
    message: string
end

local record ServiceUnavailableException
    message: string
end

local record ThrottlingException
    message: string
end

local record UnauthorizedException
    message: string
end

local record VersionConflictException
    message: string
end

local record InternalFailureException
    message: string
end

local record InvalidRequestException
    message: string
end

local record ServiceUnavailableException
    message: string
end

local record ThrottlingException
    message: string
end

local record UnauthorizedException
    message: string
end

local record InvalidRequestException
    message: string
end

local record ResourceNotFoundException
    message: string
end

local record ServiceUnavailableException
    message: string
end

local record ThrottlingException
    message: string
end

local record InternalFailureException
    message: string
end

local record InvalidRequestException
    message: string
end

local record ResourceNotFoundException
    message: string
end

local record ThrottlingException
    message: string
end

local record ConflictException
    message: string
    resourceId: string
end

local record InternalServerException
    message: string
end

local record ResourceNotFoundException
    message: string
end

local record ThrottlingException
    message: string
end

local record ValidationException
    message: string
end

local record ConflictException
    message: string
    resourceId: string
end

local record InternalServerException
    message: string
end

local record ThrottlingException
    message: string
end

local record ValidationException
    message: string
end

local record ConflictException
    message: string
    resourceId: string
end

local record InternalServerException
    message: string
end

local record ResourceNotFoundException
    message: string
end

local record ThrottlingException
    message: string
end

local record ValidationException
    message: string
end

local record ConflictingResourceUpdateException
    message: string
end

local record InternalFailureException
    message: string
end

local record InvalidRequestException
    message: string
end

local record ResourceNotFoundException
    message: string
end

local record UnauthorizedException
    message: string
end

local record InternalFailureException
    message: string
end

local record InvalidRequestException
    message: string
end

local record ResourceNotFoundException
    message: string
end

local record ServiceUnavailableException
    message: string
end

local record ThrottlingException
    message: string
end

local record UnauthorizedException
    message: string
end

local record InternalFailureException
    message: string
end

local record InvalidRequestException
    message: string
end

local record ResourceNotFoundException
    message: string
end

local record ThrottlingException
    message: string
end

local record InternalFailureException
    message: string
end

local record InvalidRequestException
    message: string
end

local record ResourceNotFoundException
    message: string
end

local record ThrottlingException
    message: string
end

local record VersionConflictException
    message: string
end

local record InternalFailureException
    message: string
end

local record InvalidRequestException
    message: string
end

local record LimitExceededException
    message: string
end

local record ResourceNotFoundException
    message: string
end

local record ServiceUnavailableException
    message: string
end

local record ThrottlingException
    message: string
end

local record UnauthorizedException
    message: string
end

local record InternalFailureException
    message: string
end

local record InvalidRequestException
    message: string
end

local record ResourceNotFoundException
    message: string
end

local record ServiceUnavailableException
    message: string
end

local record ThrottlingException
    message: string
end

local record UnauthorizedException
    message: string
end

local record VersionConflictException
    message: string
end

local record InternalFailureException
    message: string
end

local record InvalidRequestException
    message: string
end

local record ResourceNotFoundException
    message: string
end

local record ThrottlingException
    message: string
end

local record VersionConflictException
    message: string
end

local record InternalFailureException
    message: string
end

local record InvalidRequestException
    message: string
end

local record ResourceNotFoundException
    message: string
end

local record ThrottlingException
    message: string
end

local record InternalFailureException
    message: string
end

local record InvalidRequestException
    message: string
end

local record ResourceNotFoundException
    message: string
end

local record ServiceUnavailableException
    message: string
end

local record ThrottlingException
    message: string
end

local record UnauthorizedException
    message: string
end

local record ConflictingResourceUpdateException
    message: string
end

local record InternalException
    message: string
end

local record InvalidRequestException
    message: string
end

local record ServiceUnavailableException
    message: string
end

local record UnauthorizedException
    message: string
end

local record InternalFailureException
    message: string
end

local record InvalidRequestException
    message: string
end

local record ThrottlingException
    message: string
end

local type VerificationState = "FALSE_POSITIVE" | "BENIGN_POSITIVE" | "TRUE_POSITIVE" | "UNKNOWN"

local type JobExecutionStatus = "QUEUED" | "IN_PROGRESS" | "SUCCEEDED" | "FAILED" | "TIMED_OUT" | "REJECTED" | "REMOVED" | "CANCELED"

local type AuthorizerStatus = "ACTIVE" | "INACTIVE"

local type EncryptionType = "CUSTOMER_MANAGED_KMS_KEY" | "AWS_OWNED_KMS_KEY"

local type ThingPrincipalType = "EXCLUSIVE_THING" | "NON_EXCLUSIVE_THING"

local type JobStatus = "IN_PROGRESS" | "CANCELED" | "COMPLETED" | "DELETION_IN_PROGRESS" | "SCHEDULED"

local type ServiceType = "DATA" | "CREDENTIAL_PROVIDER" | "JOBS"

local type CustomMetricType = "string-list" | "ip-address-list" | "number-list" | "number"

local type LogLevel = "DEBUG" | "INFO" | "ERROR" | "WARN" | "DISABLED"

local type MitigationActionType = "UPDATE_DEVICE_CERTIFICATE" | "UPDATE_CA_CERTIFICATE" | "ADD_THINGS_TO_THING_GROUP" | "REPLACE_DEFAULT_POLICY_VERSION" | "ENABLE_IOT_LOGGING" | "PUBLISH_FINDING_TO_SNS"

local type AuditTaskType = "ON_DEMAND_AUDIT_TASK" | "SCHEDULED_AUDIT_TASK"

local type CommandNamespace = "AWS-IoT" | "AWS-IoT-FleetWise"

local type FleetMetricUnit = "Seconds" | "Microseconds" | "Milliseconds" | "Bytes" | "Kilobytes" | "Megabytes" | "Gigabytes" | "Terabytes" | "Bits" | "Kilobits" | "Megabits" | "Gigabits" | "Terabits" | "Percent" | "Count" | "Bytes/Second" | "Kilobytes/Second" | "Megabytes/Second" | "Gigabytes/Second" | "Terabytes/Second" | "Bits/Second" | "Kilobits/Second" | "Megabits/Second" | "Gigabits/Second" | "Terabits/Second" | "Count/Second" | "None"

local type AutoRegistrationStatus = "ENABLE" | "DISABLE"

local type DimensionValueOperator = "IN" | "NOT_IN"

local type DimensionType = "TOPIC_FILTER"

local type BehaviorCriteriaType = "STATIC" | "STATISTICAL" | "MACHINE_LEARNING"

local type AuditTaskStatus = "IN_PROGRESS" | "COMPLETED" | "FAILED" | "CANCELED"

local type AuditMitigationActionsExecutionStatus = "IN_PROGRESS" | "COMPLETED" | "FAILED" | "CANCELED" | "SKIPPED" | "PENDING"

local type SbomValidationResult = "FAILED" | "SUCCEEDED"

local type DisconnectReasonValue = "AUTH_ERROR" | "CLIENT_INITIATED_DISCONNECT" | "CLIENT_ERROR" | "CONNECTION_LOST" | "DUPLICATE_CLIENTID" | "FORBIDDEN_ACCESS" | "MQTT_KEEP_ALIVE_TIMEOUT" | "SERVER_ERROR" | "SERVER_INITIATED_DISCONNECT" | "THROTTLED" | "WEBSOCKET_TTL_EXPIRATION" | "CUSTOMAUTH_TTL_EXPIRATION" | "UNKNOWN" | "NONE"

local type CACertificateStatus = "ACTIVE" | "INACTIVE"

local type AuthenticationType = "CUSTOM_AUTH_X509" | "CUSTOM_AUTH" | "AWS_X509" | "AWS_SIGV4" | "DEFAULT"

local type IndexStatus = "ACTIVE" | "BUILDING" | "REBUILDING"

local type LogTargetType = "DEFAULT" | "THING_GROUP" | "CLIENT_ID" | "SOURCE_IP" | "PRINCIPAL_ID"

local type DomainConfigurationStatus = "ENABLED" | "DISABLED"

local type SortOrder = "ASCENDING" | "DESCENDING"

local type CertificateMode = "DEFAULT" | "SNI_ONLY"

local type AuditMitigationActionsTaskStatus = "IN_PROGRESS" | "COMPLETED" | "FAILED" | "CANCELED"

local type Status = "InProgress" | "Completed" | "Failed" | "Cancelled" | "Cancelling"

local type DynamicGroupStatus = "ACTIVE" | "BUILDING" | "REBUILDING"

local type ReportType = "ERRORS" | "RESULTS"

local type TargetSelection = "CONTINUOUS" | "SNAPSHOT"

local type ApplicationProtocol = "SECURE_MQTT" | "MQTT_WSS" | "HTTPS" | "DEFAULT"

local type CertificateStatus = "ACTIVE" | "INACTIVE" | "REVOKED" | "PENDING_TRANSFER" | "REGISTER_INACTIVE" | "PENDING_ACTIVATION"

local type AuditFrequency = "DAILY" | "WEEKLY" | "BIWEEKLY" | "MONTHLY"

local type SbomValidationStatus = "IN_PROGRESS" | "FAILED" | "SUCCEEDED"

local type PackageVersionStatus = "DRAFT" | "PUBLISHED" | "DEPRECATED"

local type PackageVersionAction = "PUBLISH" | "DEPRECATE"

local type DomainType = "ENDPOINT" | "AWS_MANAGED" | "CUSTOMER_MANAGED"

local type CommandExecutionStatus = "CREATED" | "IN_PROGRESS" | "SUCCEEDED" | "FAILED" | "REJECTED" | "TIMED_OUT"

local type OTAUpdateStatus = "CREATE_PENDING" | "CREATE_IN_PROGRESS" | "CREATE_COMPLETE" | "CREATE_FAILED" | "DELETE_IN_PROGRESS" | "DELETE_FAILED"

local type TemplateType = "FLEET_PROVISIONING" | "JITP"

local type DayOfWeek = "SUN" | "MON" | "TUE" | "WED" | "THU" | "FRI" | "SAT"

local type TopicRuleDestinationStatus = "ENABLED" | "IN_PROGRESS" | "DISABLED" | "ERROR" | "DELETING"

local record M
    AcceptCertificateTransferInput: AcceptCertificateTransferInput
    AcceptCertificateTransferOutput: AcceptCertificateTransferOutput
    AddThingToBillingGroupInput: AddThingToBillingGroupInput
    AddThingToBillingGroupOutput: AddThingToBillingGroupOutput
    AddThingToThingGroupInput: AddThingToThingGroupInput
    AddThingToThingGroupOutput: AddThingToThingGroupOutput
    AssociateSbomWithPackageVersionInput: AssociateSbomWithPackageVersionInput
    AssociateSbomWithPackageVersionOutput: AssociateSbomWithPackageVersionOutput
    AssociateTargetsWithJobInput: AssociateTargetsWithJobInput
    AssociateTargetsWithJobOutput: AssociateTargetsWithJobOutput
    AttachPolicyInput: AttachPolicyInput
    AttachPolicyOutput: AttachPolicyOutput
    AttachPrincipalPolicyInput: AttachPrincipalPolicyInput
    AttachPrincipalPolicyOutput: AttachPrincipalPolicyOutput
    AttachSecurityProfileInput: AttachSecurityProfileInput
    AttachSecurityProfileOutput: AttachSecurityProfileOutput
    AttachThingPrincipalInput: AttachThingPrincipalInput
    AttachThingPrincipalOutput: AttachThingPrincipalOutput
    CancelAuditMitigationActionsTaskInput: CancelAuditMitigationActionsTaskInput
    CancelAuditMitigationActionsTaskOutput: CancelAuditMitigationActionsTaskOutput
    CancelAuditTaskInput: CancelAuditTaskInput
    CancelAuditTaskOutput: CancelAuditTaskOutput
    CancelCertificateTransferInput: CancelCertificateTransferInput
    CancelCertificateTransferOutput: CancelCertificateTransferOutput
    CancelDetectMitigationActionsTaskInput: CancelDetectMitigationActionsTaskInput
    CancelDetectMitigationActionsTaskOutput: CancelDetectMitigationActionsTaskOutput
    CancelJobInput: CancelJobInput
    CancelJobOutput: CancelJobOutput
    CancelJobExecutionInput: CancelJobExecutionInput
    CancelJobExecutionOutput: CancelJobExecutionOutput
    ClearDefaultAuthorizerInput: ClearDefaultAuthorizerInput
    ClearDefaultAuthorizerOutput: ClearDefaultAuthorizerOutput
    ConfirmTopicRuleDestinationInput: ConfirmTopicRuleDestinationInput
    ConfirmTopicRuleDestinationOutput: ConfirmTopicRuleDestinationOutput
    CreateAuditSuppressionInput: CreateAuditSuppressionInput
    CreateAuditSuppressionOutput: CreateAuditSuppressionOutput
    CreateAuthorizerInput: CreateAuthorizerInput
    CreateAuthorizerOutput: CreateAuthorizerOutput
    CreateBillingGroupInput: CreateBillingGroupInput
    CreateBillingGroupOutput: CreateBillingGroupOutput
    CreateCertificateFromCsrInput: CreateCertificateFromCsrInput
    CreateCertificateFromCsrOutput: CreateCertificateFromCsrOutput
    CreateCertificateProviderInput: CreateCertificateProviderInput
    CreateCertificateProviderOutput: CreateCertificateProviderOutput
    CreateCommandInput: CreateCommandInput
    CreateCommandOutput: CreateCommandOutput
    CreateCustomMetricInput: CreateCustomMetricInput
    CreateCustomMetricOutput: CreateCustomMetricOutput
    CreateDimensionInput: CreateDimensionInput
    CreateDimensionOutput: CreateDimensionOutput
    CreateDomainConfigurationInput: CreateDomainConfigurationInput
    CreateDomainConfigurationOutput: CreateDomainConfigurationOutput
    CreateDynamicThingGroupInput: CreateDynamicThingGroupInput
    CreateDynamicThingGroupOutput: CreateDynamicThingGroupOutput
    CreateFleetMetricInput: CreateFleetMetricInput
    CreateFleetMetricOutput: CreateFleetMetricOutput
    CreateJobInput: CreateJobInput
    CreateJobOutput: CreateJobOutput
    CreateJobTemplateInput: CreateJobTemplateInput
    CreateJobTemplateOutput: CreateJobTemplateOutput
    CreateKeysAndCertificateInput: CreateKeysAndCertificateInput
    CreateKeysAndCertificateOutput: CreateKeysAndCertificateOutput
    CreateMitigationActionInput: CreateMitigationActionInput
    CreateMitigationActionOutput: CreateMitigationActionOutput
    CreateOTAUpdateInput: CreateOTAUpdateInput
    CreateOTAUpdateOutput: CreateOTAUpdateOutput
    CreatePackageInput: CreatePackageInput
    CreatePackageOutput: CreatePackageOutput
    CreatePackageVersionInput: CreatePackageVersionInput
    CreatePackageVersionOutput: CreatePackageVersionOutput
    CreatePolicyInput: CreatePolicyInput
    CreatePolicyOutput: CreatePolicyOutput
    CreatePolicyVersionInput: CreatePolicyVersionInput
    CreatePolicyVersionOutput: CreatePolicyVersionOutput
    CreateProvisioningClaimInput: CreateProvisioningClaimInput
    CreateProvisioningClaimOutput: CreateProvisioningClaimOutput
    CreateProvisioningTemplateInput: CreateProvisioningTemplateInput
    CreateProvisioningTemplateOutput: CreateProvisioningTemplateOutput
    CreateProvisioningTemplateVersionInput: CreateProvisioningTemplateVersionInput
    CreateProvisioningTemplateVersionOutput: CreateProvisioningTemplateVersionOutput
    CreateRoleAliasInput: CreateRoleAliasInput
    CreateRoleAliasOutput: CreateRoleAliasOutput
    CreateScheduledAuditInput: CreateScheduledAuditInput
    CreateScheduledAuditOutput: CreateScheduledAuditOutput
    CreateSecurityProfileInput: CreateSecurityProfileInput
    CreateSecurityProfileOutput: CreateSecurityProfileOutput
    CreateStreamInput: CreateStreamInput
    CreateStreamOutput: CreateStreamOutput
    CreateThingInput: CreateThingInput
    CreateThingOutput: CreateThingOutput
    CreateThingGroupInput: CreateThingGroupInput
    CreateThingGroupOutput: CreateThingGroupOutput
    CreateThingTypeInput: CreateThingTypeInput
    CreateThingTypeOutput: CreateThingTypeOutput
    CreateTopicRuleInput: CreateTopicRuleInput
    CreateTopicRuleOutput: CreateTopicRuleOutput
    CreateTopicRuleDestinationInput: CreateTopicRuleDestinationInput
    CreateTopicRuleDestinationOutput: CreateTopicRuleDestinationOutput
    DeleteAccountAuditConfigurationInput: DeleteAccountAuditConfigurationInput
    DeleteAccountAuditConfigurationOutput: DeleteAccountAuditConfigurationOutput
    DeleteAuditSuppressionInput: DeleteAuditSuppressionInput
    DeleteAuditSuppressionOutput: DeleteAuditSuppressionOutput
    DeleteAuthorizerInput: DeleteAuthorizerInput
    DeleteAuthorizerOutput: DeleteAuthorizerOutput
    DeleteBillingGroupInput: DeleteBillingGroupInput
    DeleteBillingGroupOutput: DeleteBillingGroupOutput
    DeleteCACertificateInput: DeleteCACertificateInput
    DeleteCACertificateOutput: DeleteCACertificateOutput
    DeleteCertificateInput: DeleteCertificateInput
    DeleteCertificateOutput: DeleteCertificateOutput
    DeleteCertificateProviderInput: DeleteCertificateProviderInput
    DeleteCertificateProviderOutput: DeleteCertificateProviderOutput
    DeleteCommandInput: DeleteCommandInput
    DeleteCommandOutput: DeleteCommandOutput
    DeleteCommandExecutionInput: DeleteCommandExecutionInput
    DeleteCommandExecutionOutput: DeleteCommandExecutionOutput
    DeleteCustomMetricInput: DeleteCustomMetricInput
    DeleteCustomMetricOutput: DeleteCustomMetricOutput
    DeleteDimensionInput: DeleteDimensionInput
    DeleteDimensionOutput: DeleteDimensionOutput
    DeleteDomainConfigurationInput: DeleteDomainConfigurationInput
    DeleteDomainConfigurationOutput: DeleteDomainConfigurationOutput
    DeleteDynamicThingGroupInput: DeleteDynamicThingGroupInput
    DeleteDynamicThingGroupOutput: DeleteDynamicThingGroupOutput
    DeleteFleetMetricInput: DeleteFleetMetricInput
    DeleteFleetMetricOutput: DeleteFleetMetricOutput
    DeleteJobInput: DeleteJobInput
    DeleteJobOutput: DeleteJobOutput
    DeleteJobExecutionInput: DeleteJobExecutionInput
    DeleteJobExecutionOutput: DeleteJobExecutionOutput
    DeleteJobTemplateInput: DeleteJobTemplateInput
    DeleteJobTemplateOutput: DeleteJobTemplateOutput
    DeleteMitigationActionInput: DeleteMitigationActionInput
    DeleteMitigationActionOutput: DeleteMitigationActionOutput
    DeleteOTAUpdateInput: DeleteOTAUpdateInput
    DeleteOTAUpdateOutput: DeleteOTAUpdateOutput
    DeletePackageInput: DeletePackageInput
    DeletePackageOutput: DeletePackageOutput
    DeletePackageVersionInput: DeletePackageVersionInput
    DeletePackageVersionOutput: DeletePackageVersionOutput
    DeletePolicyInput: DeletePolicyInput
    DeletePolicyOutput: DeletePolicyOutput
    DeletePolicyVersionInput: DeletePolicyVersionInput
    DeletePolicyVersionOutput: DeletePolicyVersionOutput
    DeleteProvisioningTemplateInput: DeleteProvisioningTemplateInput
    DeleteProvisioningTemplateOutput: DeleteProvisioningTemplateOutput
    DeleteProvisioningTemplateVersionInput: DeleteProvisioningTemplateVersionInput
    DeleteProvisioningTemplateVersionOutput: DeleteProvisioningTemplateVersionOutput
    DeleteRegistrationCodeInput: DeleteRegistrationCodeInput
    DeleteRegistrationCodeOutput: DeleteRegistrationCodeOutput
    DeleteRoleAliasInput: DeleteRoleAliasInput
    DeleteRoleAliasOutput: DeleteRoleAliasOutput
    DeleteScheduledAuditInput: DeleteScheduledAuditInput
    DeleteScheduledAuditOutput: DeleteScheduledAuditOutput
    DeleteSecurityProfileInput: DeleteSecurityProfileInput
    DeleteSecurityProfileOutput: DeleteSecurityProfileOutput
    DeleteStreamInput: DeleteStreamInput
    DeleteStreamOutput: DeleteStreamOutput
    DeleteThingInput: DeleteThingInput
    DeleteThingOutput: DeleteThingOutput
    DeleteThingGroupInput: DeleteThingGroupInput
    DeleteThingGroupOutput: DeleteThingGroupOutput
    DeleteThingTypeInput: DeleteThingTypeInput
    DeleteThingTypeOutput: DeleteThingTypeOutput
    DeleteTopicRuleInput: DeleteTopicRuleInput
    DeleteTopicRuleOutput: DeleteTopicRuleOutput
    DeleteTopicRuleDestinationInput: DeleteTopicRuleDestinationInput
    DeleteTopicRuleDestinationOutput: DeleteTopicRuleDestinationOutput
    DeleteV2LoggingLevelInput: DeleteV2LoggingLevelInput
    DeleteV2LoggingLevelOutput: DeleteV2LoggingLevelOutput
    DeprecateThingTypeInput: DeprecateThingTypeInput
    DeprecateThingTypeOutput: DeprecateThingTypeOutput
    DescribeAccountAuditConfigurationInput: DescribeAccountAuditConfigurationInput
    DescribeAccountAuditConfigurationOutput: DescribeAccountAuditConfigurationOutput
    DescribeAuditFindingInput: DescribeAuditFindingInput
    DescribeAuditFindingOutput: DescribeAuditFindingOutput
    DescribeAuditMitigationActionsTaskInput: DescribeAuditMitigationActionsTaskInput
    DescribeAuditMitigationActionsTaskOutput: DescribeAuditMitigationActionsTaskOutput
    DescribeAuditSuppressionInput: DescribeAuditSuppressionInput
    DescribeAuditSuppressionOutput: DescribeAuditSuppressionOutput
    DescribeAuditTaskInput: DescribeAuditTaskInput
    DescribeAuditTaskOutput: DescribeAuditTaskOutput
    DescribeAuthorizerInput: DescribeAuthorizerInput
    DescribeAuthorizerOutput: DescribeAuthorizerOutput
    DescribeBillingGroupInput: DescribeBillingGroupInput
    DescribeBillingGroupOutput: DescribeBillingGroupOutput
    DescribeCACertificateInput: DescribeCACertificateInput
    DescribeCACertificateOutput: DescribeCACertificateOutput
    DescribeCertificateInput: DescribeCertificateInput
    DescribeCertificateOutput: DescribeCertificateOutput
    DescribeCertificateProviderInput: DescribeCertificateProviderInput
    DescribeCertificateProviderOutput: DescribeCertificateProviderOutput
    DescribeCustomMetricInput: DescribeCustomMetricInput
    DescribeCustomMetricOutput: DescribeCustomMetricOutput
    DescribeDefaultAuthorizerInput: DescribeDefaultAuthorizerInput
    DescribeDefaultAuthorizerOutput: DescribeDefaultAuthorizerOutput
    DescribeDetectMitigationActionsTaskInput: DescribeDetectMitigationActionsTaskInput
    DescribeDetectMitigationActionsTaskOutput: DescribeDetectMitigationActionsTaskOutput
    DescribeDimensionInput: DescribeDimensionInput
    DescribeDimensionOutput: DescribeDimensionOutput
    DescribeDomainConfigurationInput: DescribeDomainConfigurationInput
    DescribeDomainConfigurationOutput: DescribeDomainConfigurationOutput
    DescribeEncryptionConfigurationInput: DescribeEncryptionConfigurationInput
    DescribeEncryptionConfigurationOutput: DescribeEncryptionConfigurationOutput
    DescribeEndpointInput: DescribeEndpointInput
    DescribeEndpointOutput: DescribeEndpointOutput
    DescribeEventConfigurationsInput: DescribeEventConfigurationsInput
    DescribeEventConfigurationsOutput: DescribeEventConfigurationsOutput
    DescribeFleetMetricInput: DescribeFleetMetricInput
    DescribeFleetMetricOutput: DescribeFleetMetricOutput
    DescribeIndexInput: DescribeIndexInput
    DescribeIndexOutput: DescribeIndexOutput
    DescribeJobInput: DescribeJobInput
    DescribeJobOutput: DescribeJobOutput
    DescribeJobExecutionInput: DescribeJobExecutionInput
    DescribeJobExecutionOutput: DescribeJobExecutionOutput
    DescribeJobTemplateInput: DescribeJobTemplateInput
    DescribeJobTemplateOutput: DescribeJobTemplateOutput
    DescribeManagedJobTemplateInput: DescribeManagedJobTemplateInput
    DescribeManagedJobTemplateOutput: DescribeManagedJobTemplateOutput
    DescribeMitigationActionInput: DescribeMitigationActionInput
    DescribeMitigationActionOutput: DescribeMitigationActionOutput
    DescribeProvisioningTemplateInput: DescribeProvisioningTemplateInput
    DescribeProvisioningTemplateOutput: DescribeProvisioningTemplateOutput
    DescribeProvisioningTemplateVersionInput: DescribeProvisioningTemplateVersionInput
    DescribeProvisioningTemplateVersionOutput: DescribeProvisioningTemplateVersionOutput
    DescribeRoleAliasInput: DescribeRoleAliasInput
    DescribeRoleAliasOutput: DescribeRoleAliasOutput
    DescribeScheduledAuditInput: DescribeScheduledAuditInput
    DescribeScheduledAuditOutput: DescribeScheduledAuditOutput
    DescribeSecurityProfileInput: DescribeSecurityProfileInput
    DescribeSecurityProfileOutput: DescribeSecurityProfileOutput
    DescribeStreamInput: DescribeStreamInput
    DescribeStreamOutput: DescribeStreamOutput
    DescribeThingInput: DescribeThingInput
    DescribeThingOutput: DescribeThingOutput
    DescribeThingGroupInput: DescribeThingGroupInput
    DescribeThingGroupOutput: DescribeThingGroupOutput
    DescribeThingRegistrationTaskInput: DescribeThingRegistrationTaskInput
    DescribeThingRegistrationTaskOutput: DescribeThingRegistrationTaskOutput
    DescribeThingTypeInput: DescribeThingTypeInput
    DescribeThingTypeOutput: DescribeThingTypeOutput
    DetachPolicyInput: DetachPolicyInput
    DetachPolicyOutput: DetachPolicyOutput
    DetachPrincipalPolicyInput: DetachPrincipalPolicyInput
    DetachPrincipalPolicyOutput: DetachPrincipalPolicyOutput
    DetachSecurityProfileInput: DetachSecurityProfileInput
    DetachSecurityProfileOutput: DetachSecurityProfileOutput
    DetachThingPrincipalInput: DetachThingPrincipalInput
    DetachThingPrincipalOutput: DetachThingPrincipalOutput
    DisableTopicRuleInput: DisableTopicRuleInput
    DisableTopicRuleOutput: DisableTopicRuleOutput
    DisassociateSbomFromPackageVersionInput: DisassociateSbomFromPackageVersionInput
    DisassociateSbomFromPackageVersionOutput: DisassociateSbomFromPackageVersionOutput
    EnableTopicRuleInput: EnableTopicRuleInput
    EnableTopicRuleOutput: EnableTopicRuleOutput
    GetBehaviorModelTrainingSummariesInput: GetBehaviorModelTrainingSummariesInput
    GetBehaviorModelTrainingSummariesOutput: GetBehaviorModelTrainingSummariesOutput
    GetBucketsAggregationInput: GetBucketsAggregationInput
    GetBucketsAggregationOutput: GetBucketsAggregationOutput
    GetCardinalityInput: GetCardinalityInput
    GetCardinalityOutput: GetCardinalityOutput
    GetCommandInput: GetCommandInput
    GetCommandOutput: GetCommandOutput
    GetCommandExecutionInput: GetCommandExecutionInput
    GetCommandExecutionOutput: GetCommandExecutionOutput
    GetEffectivePoliciesInput: GetEffectivePoliciesInput
    GetEffectivePoliciesOutput: GetEffectivePoliciesOutput
    GetIndexingConfigurationInput: GetIndexingConfigurationInput
    GetIndexingConfigurationOutput: GetIndexingConfigurationOutput
    GetJobDocumentInput: GetJobDocumentInput
    GetJobDocumentOutput: GetJobDocumentOutput
    GetLoggingOptionsInput: GetLoggingOptionsInput
    GetLoggingOptionsOutput: GetLoggingOptionsOutput
    GetOTAUpdateInput: GetOTAUpdateInput
    GetOTAUpdateOutput: GetOTAUpdateOutput
    GetPackageInput: GetPackageInput
    GetPackageOutput: GetPackageOutput
    GetPackageConfigurationInput: GetPackageConfigurationInput
    GetPackageConfigurationOutput: GetPackageConfigurationOutput
    GetPackageVersionInput: GetPackageVersionInput
    GetPackageVersionOutput: GetPackageVersionOutput
    GetPercentilesInput: GetPercentilesInput
    GetPercentilesOutput: GetPercentilesOutput
    GetPolicyInput: GetPolicyInput
    GetPolicyOutput: GetPolicyOutput
    GetPolicyVersionInput: GetPolicyVersionInput
    GetPolicyVersionOutput: GetPolicyVersionOutput
    GetRegistrationCodeInput: GetRegistrationCodeInput
    GetRegistrationCodeOutput: GetRegistrationCodeOutput
    GetStatisticsInput: GetStatisticsInput
    GetStatisticsOutput: GetStatisticsOutput
    GetThingConnectivityDataInput: GetThingConnectivityDataInput
    GetThingConnectivityDataOutput: GetThingConnectivityDataOutput
    GetTopicRuleInput: GetTopicRuleInput
    GetTopicRuleOutput: GetTopicRuleOutput
    GetTopicRuleDestinationInput: GetTopicRuleDestinationInput
    GetTopicRuleDestinationOutput: GetTopicRuleDestinationOutput
    GetV2LoggingOptionsInput: GetV2LoggingOptionsInput
    GetV2LoggingOptionsOutput: GetV2LoggingOptionsOutput
    ListActiveViolationsInput: ListActiveViolationsInput
    ListActiveViolationsOutput: ListActiveViolationsOutput
    ListAttachedPoliciesInput: ListAttachedPoliciesInput
    ListAttachedPoliciesOutput: ListAttachedPoliciesOutput
    ListAuditFindingsInput: ListAuditFindingsInput
    ListAuditFindingsOutput: ListAuditFindingsOutput
    ListAuditMitigationActionsExecutionsInput: ListAuditMitigationActionsExecutionsInput
    ListAuditMitigationActionsExecutionsOutput: ListAuditMitigationActionsExecutionsOutput
    ListAuditMitigationActionsTasksInput: ListAuditMitigationActionsTasksInput
    ListAuditMitigationActionsTasksOutput: ListAuditMitigationActionsTasksOutput
    ListAuditSuppressionsInput: ListAuditSuppressionsInput
    ListAuditSuppressionsOutput: ListAuditSuppressionsOutput
    ListAuditTasksInput: ListAuditTasksInput
    ListAuditTasksOutput: ListAuditTasksOutput
    ListAuthorizersInput: ListAuthorizersInput
    ListAuthorizersOutput: ListAuthorizersOutput
    ListBillingGroupsInput: ListBillingGroupsInput
    ListBillingGroupsOutput: ListBillingGroupsOutput
    ListCACertificatesInput: ListCACertificatesInput
    ListCACertificatesOutput: ListCACertificatesOutput
    ListCertificateProvidersInput: ListCertificateProvidersInput
    ListCertificateProvidersOutput: ListCertificateProvidersOutput
    ListCertificatesInput: ListCertificatesInput
    ListCertificatesOutput: ListCertificatesOutput
    ListCertificatesByCAInput: ListCertificatesByCAInput
    ListCertificatesByCAOutput: ListCertificatesByCAOutput
    ListCommandExecutionsInput: ListCommandExecutionsInput
    ListCommandExecutionsOutput: ListCommandExecutionsOutput
    ListCommandsInput: ListCommandsInput
    ListCommandsOutput: ListCommandsOutput
    ListCustomMetricsInput: ListCustomMetricsInput
    ListCustomMetricsOutput: ListCustomMetricsOutput
    ListDetectMitigationActionsExecutionsInput: ListDetectMitigationActionsExecutionsInput
    ListDetectMitigationActionsExecutionsOutput: ListDetectMitigationActionsExecutionsOutput
    ListDetectMitigationActionsTasksInput: ListDetectMitigationActionsTasksInput
    ListDetectMitigationActionsTasksOutput: ListDetectMitigationActionsTasksOutput
    ListDimensionsInput: ListDimensionsInput
    ListDimensionsOutput: ListDimensionsOutput
    ListDomainConfigurationsInput: ListDomainConfigurationsInput
    ListDomainConfigurationsOutput: ListDomainConfigurationsOutput
    ListFleetMetricsInput: ListFleetMetricsInput
    ListFleetMetricsOutput: ListFleetMetricsOutput
    ListIndicesInput: ListIndicesInput
    ListIndicesOutput: ListIndicesOutput
    ListJobExecutionsForJobInput: ListJobExecutionsForJobInput
    ListJobExecutionsForJobOutput: ListJobExecutionsForJobOutput
    ListJobExecutionsForThingInput: ListJobExecutionsForThingInput
    ListJobExecutionsForThingOutput: ListJobExecutionsForThingOutput
    ListJobsInput: ListJobsInput
    ListJobsOutput: ListJobsOutput
    ListJobTemplatesInput: ListJobTemplatesInput
    ListJobTemplatesOutput: ListJobTemplatesOutput
    ListManagedJobTemplatesInput: ListManagedJobTemplatesInput
    ListManagedJobTemplatesOutput: ListManagedJobTemplatesOutput
    ListMetricValuesInput: ListMetricValuesInput
    ListMetricValuesOutput: ListMetricValuesOutput
    ListMitigationActionsInput: ListMitigationActionsInput
    ListMitigationActionsOutput: ListMitigationActionsOutput
    ListOTAUpdatesInput: ListOTAUpdatesInput
    ListOTAUpdatesOutput: ListOTAUpdatesOutput
    ListOutgoingCertificatesInput: ListOutgoingCertificatesInput
    ListOutgoingCertificatesOutput: ListOutgoingCertificatesOutput
    ListPackagesInput: ListPackagesInput
    ListPackagesOutput: ListPackagesOutput
    ListPackageVersionsInput: ListPackageVersionsInput
    ListPackageVersionsOutput: ListPackageVersionsOutput
    ListPoliciesInput: ListPoliciesInput
    ListPoliciesOutput: ListPoliciesOutput
    ListPolicyPrincipalsInput: ListPolicyPrincipalsInput
    ListPolicyPrincipalsOutput: ListPolicyPrincipalsOutput
    ListPolicyVersionsInput: ListPolicyVersionsInput
    ListPolicyVersionsOutput: ListPolicyVersionsOutput
    ListPrincipalPoliciesInput: ListPrincipalPoliciesInput
    ListPrincipalPoliciesOutput: ListPrincipalPoliciesOutput
    ListPrincipalThingsInput: ListPrincipalThingsInput
    ListPrincipalThingsOutput: ListPrincipalThingsOutput
    ListPrincipalThingsV2Input: ListPrincipalThingsV2Input
    ListPrincipalThingsV2Output: ListPrincipalThingsV2Output
    ListProvisioningTemplatesInput: ListProvisioningTemplatesInput
    ListProvisioningTemplatesOutput: ListProvisioningTemplatesOutput
    ListProvisioningTemplateVersionsInput: ListProvisioningTemplateVersionsInput
    ListProvisioningTemplateVersionsOutput: ListProvisioningTemplateVersionsOutput
    ListRelatedResourcesForAuditFindingInput: ListRelatedResourcesForAuditFindingInput
    ListRelatedResourcesForAuditFindingOutput: ListRelatedResourcesForAuditFindingOutput
    ListRoleAliasesInput: ListRoleAliasesInput
    ListRoleAliasesOutput: ListRoleAliasesOutput
    ListSbomValidationResultsInput: ListSbomValidationResultsInput
    ListSbomValidationResultsOutput: ListSbomValidationResultsOutput
    ListScheduledAuditsInput: ListScheduledAuditsInput
    ListScheduledAuditsOutput: ListScheduledAuditsOutput
    ListSecurityProfilesInput: ListSecurityProfilesInput
    ListSecurityProfilesOutput: ListSecurityProfilesOutput
    ListSecurityProfilesForTargetInput: ListSecurityProfilesForTargetInput
    ListSecurityProfilesForTargetOutput: ListSecurityProfilesForTargetOutput
    ListStreamsInput: ListStreamsInput
    ListStreamsOutput: ListStreamsOutput
    ListTagsForResourceInput: ListTagsForResourceInput
    ListTagsForResourceOutput: ListTagsForResourceOutput
    ListTargetsForPolicyInput: ListTargetsForPolicyInput
    ListTargetsForPolicyOutput: ListTargetsForPolicyOutput
    ListTargetsForSecurityProfileInput: ListTargetsForSecurityProfileInput
    ListTargetsForSecurityProfileOutput: ListTargetsForSecurityProfileOutput
    ListThingGroupsInput: ListThingGroupsInput
    ListThingGroupsOutput: ListThingGroupsOutput
    ListThingGroupsForThingInput: ListThingGroupsForThingInput
    ListThingGroupsForThingOutput: ListThingGroupsForThingOutput
    ListThingPrincipalsInput: ListThingPrincipalsInput
    ListThingPrincipalsOutput: ListThingPrincipalsOutput
    ListThingPrincipalsV2Input: ListThingPrincipalsV2Input
    ListThingPrincipalsV2Output: ListThingPrincipalsV2Output
    ListThingRegistrationTaskReportsInput: ListThingRegistrationTaskReportsInput
    ListThingRegistrationTaskReportsOutput: ListThingRegistrationTaskReportsOutput
    ListThingRegistrationTasksInput: ListThingRegistrationTasksInput
    ListThingRegistrationTasksOutput: ListThingRegistrationTasksOutput
    ListThingsInput: ListThingsInput
    ListThingsOutput: ListThingsOutput
    ListThingsInBillingGroupInput: ListThingsInBillingGroupInput
    ListThingsInBillingGroupOutput: ListThingsInBillingGroupOutput
    ListThingsInThingGroupInput: ListThingsInThingGroupInput
    ListThingsInThingGroupOutput: ListThingsInThingGroupOutput
    ListThingTypesInput: ListThingTypesInput
    ListThingTypesOutput: ListThingTypesOutput
    ListTopicRuleDestinationsInput: ListTopicRuleDestinationsInput
    ListTopicRuleDestinationsOutput: ListTopicRuleDestinationsOutput
    ListTopicRulesInput: ListTopicRulesInput
    ListTopicRulesOutput: ListTopicRulesOutput
    ListV2LoggingLevelsInput: ListV2LoggingLevelsInput
    ListV2LoggingLevelsOutput: ListV2LoggingLevelsOutput
    ListViolationEventsInput: ListViolationEventsInput
    ListViolationEventsOutput: ListViolationEventsOutput
    PutVerificationStateOnViolationInput: PutVerificationStateOnViolationInput
    PutVerificationStateOnViolationOutput: PutVerificationStateOnViolationOutput
    RegisterCACertificateInput: RegisterCACertificateInput
    RegisterCACertificateOutput: RegisterCACertificateOutput
    RegisterCertificateInput: RegisterCertificateInput
    RegisterCertificateOutput: RegisterCertificateOutput
    RegisterCertificateWithoutCAInput: RegisterCertificateWithoutCAInput
    RegisterCertificateWithoutCAOutput: RegisterCertificateWithoutCAOutput
    RegisterThingInput: RegisterThingInput
    RegisterThingOutput: RegisterThingOutput
    RejectCertificateTransferInput: RejectCertificateTransferInput
    RejectCertificateTransferOutput: RejectCertificateTransferOutput
    RemoveThingFromBillingGroupInput: RemoveThingFromBillingGroupInput
    RemoveThingFromBillingGroupOutput: RemoveThingFromBillingGroupOutput
    RemoveThingFromThingGroupInput: RemoveThingFromThingGroupInput
    RemoveThingFromThingGroupOutput: RemoveThingFromThingGroupOutput
    ReplaceTopicRuleInput: ReplaceTopicRuleInput
    ReplaceTopicRuleOutput: ReplaceTopicRuleOutput
    SearchIndexInput: SearchIndexInput
    SearchIndexOutput: SearchIndexOutput
    SetDefaultAuthorizerInput: SetDefaultAuthorizerInput
    SetDefaultAuthorizerOutput: SetDefaultAuthorizerOutput
    SetDefaultPolicyVersionInput: SetDefaultPolicyVersionInput
    SetDefaultPolicyVersionOutput: SetDefaultPolicyVersionOutput
    SetLoggingOptionsInput: SetLoggingOptionsInput
    SetLoggingOptionsOutput: SetLoggingOptionsOutput
    SetV2LoggingLevelInput: SetV2LoggingLevelInput
    SetV2LoggingLevelOutput: SetV2LoggingLevelOutput
    SetV2LoggingOptionsInput: SetV2LoggingOptionsInput
    SetV2LoggingOptionsOutput: SetV2LoggingOptionsOutput
    StartAuditMitigationActionsTaskInput: StartAuditMitigationActionsTaskInput
    StartAuditMitigationActionsTaskOutput: StartAuditMitigationActionsTaskOutput
    StartDetectMitigationActionsTaskInput: StartDetectMitigationActionsTaskInput
    StartDetectMitigationActionsTaskOutput: StartDetectMitigationActionsTaskOutput
    StartOnDemandAuditTaskInput: StartOnDemandAuditTaskInput
    StartOnDemandAuditTaskOutput: StartOnDemandAuditTaskOutput
    StartThingRegistrationTaskInput: StartThingRegistrationTaskInput
    StartThingRegistrationTaskOutput: StartThingRegistrationTaskOutput
    StopThingRegistrationTaskInput: StopThingRegistrationTaskInput
    StopThingRegistrationTaskOutput: StopThingRegistrationTaskOutput
    TagResourceInput: TagResourceInput
    TagResourceOutput: TagResourceOutput
    TestAuthorizationInput: TestAuthorizationInput
    TestAuthorizationOutput: TestAuthorizationOutput
    TestInvokeAuthorizerInput: TestInvokeAuthorizerInput
    TestInvokeAuthorizerOutput: TestInvokeAuthorizerOutput
    TransferCertificateInput: TransferCertificateInput
    TransferCertificateOutput: TransferCertificateOutput
    UntagResourceInput: UntagResourceInput
    UntagResourceOutput: UntagResourceOutput
    UpdateAccountAuditConfigurationInput: UpdateAccountAuditConfigurationInput
    UpdateAccountAuditConfigurationOutput: UpdateAccountAuditConfigurationOutput
    UpdateAuditSuppressionInput: UpdateAuditSuppressionInput
    UpdateAuditSuppressionOutput: UpdateAuditSuppressionOutput
    UpdateAuthorizerInput: UpdateAuthorizerInput
    UpdateAuthorizerOutput: UpdateAuthorizerOutput
    UpdateBillingGroupInput: UpdateBillingGroupInput
    UpdateBillingGroupOutput: UpdateBillingGroupOutput
    UpdateCACertificateInput: UpdateCACertificateInput
    UpdateCACertificateOutput: UpdateCACertificateOutput
    UpdateCertificateInput: UpdateCertificateInput
    UpdateCertificateOutput: UpdateCertificateOutput
    UpdateCertificateProviderInput: UpdateCertificateProviderInput
    UpdateCertificateProviderOutput: UpdateCertificateProviderOutput
    UpdateCommandInput: UpdateCommandInput
    UpdateCommandOutput: UpdateCommandOutput
    UpdateCustomMetricInput: UpdateCustomMetricInput
    UpdateCustomMetricOutput: UpdateCustomMetricOutput
    UpdateDimensionInput: UpdateDimensionInput
    UpdateDimensionOutput: UpdateDimensionOutput
    UpdateDomainConfigurationInput: UpdateDomainConfigurationInput
    UpdateDomainConfigurationOutput: UpdateDomainConfigurationOutput
    UpdateDynamicThingGroupInput: UpdateDynamicThingGroupInput
    UpdateDynamicThingGroupOutput: UpdateDynamicThingGroupOutput
    UpdateEncryptionConfigurationInput: UpdateEncryptionConfigurationInput
    UpdateEncryptionConfigurationOutput: UpdateEncryptionConfigurationOutput
    UpdateEventConfigurationsInput: UpdateEventConfigurationsInput
    UpdateEventConfigurationsOutput: UpdateEventConfigurationsOutput
    UpdateFleetMetricInput: UpdateFleetMetricInput
    UpdateFleetMetricOutput: UpdateFleetMetricOutput
    UpdateIndexingConfigurationInput: UpdateIndexingConfigurationInput
    UpdateIndexingConfigurationOutput: UpdateIndexingConfigurationOutput
    UpdateJobInput: UpdateJobInput
    UpdateJobOutput: UpdateJobOutput
    UpdateMitigationActionInput: UpdateMitigationActionInput
    UpdateMitigationActionOutput: UpdateMitigationActionOutput
    UpdatePackageInput: UpdatePackageInput
    UpdatePackageOutput: UpdatePackageOutput
    UpdatePackageConfigurationInput: UpdatePackageConfigurationInput
    UpdatePackageConfigurationOutput: UpdatePackageConfigurationOutput
    UpdatePackageVersionInput: UpdatePackageVersionInput
    UpdatePackageVersionOutput: UpdatePackageVersionOutput
    UpdateProvisioningTemplateInput: UpdateProvisioningTemplateInput
    UpdateProvisioningTemplateOutput: UpdateProvisioningTemplateOutput
    UpdateRoleAliasInput: UpdateRoleAliasInput
    UpdateRoleAliasOutput: UpdateRoleAliasOutput
    UpdateScheduledAuditInput: UpdateScheduledAuditInput
    UpdateScheduledAuditOutput: UpdateScheduledAuditOutput
    UpdateSecurityProfileInput: UpdateSecurityProfileInput
    UpdateSecurityProfileOutput: UpdateSecurityProfileOutput
    UpdateStreamInput: UpdateStreamInput
    UpdateStreamOutput: UpdateStreamOutput
    UpdateThingInput: UpdateThingInput
    UpdateThingOutput: UpdateThingOutput
    UpdateThingGroupInput: UpdateThingGroupInput
    UpdateThingGroupOutput: UpdateThingGroupOutput
    UpdateThingGroupsForThingInput: UpdateThingGroupsForThingInput
    UpdateThingGroupsForThingOutput: UpdateThingGroupsForThingOutput
    UpdateThingTypeInput: UpdateThingTypeInput
    UpdateThingTypeOutput: UpdateThingTypeOutput
    UpdateTopicRuleDestinationInput: UpdateTopicRuleDestinationInput
    UpdateTopicRuleDestinationOutput: UpdateTopicRuleDestinationOutput
    ValidateSecurityProfileBehaviorsInput: ValidateSecurityProfileBehaviorsInput
    ValidateSecurityProfileBehaviorsOutput: ValidateSecurityProfileBehaviorsOutput
end

return M
