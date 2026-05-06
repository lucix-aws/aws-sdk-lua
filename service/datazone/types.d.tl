local record AcceptPredictionsInput
    domainIdentifier: string
    identifier: string
    revision: string
    acceptRule: AcceptRule
    acceptChoices: {AcceptChoice}
    clientToken: string
end

local record AcceptPredictionsOutput
    domainId: string
    assetId: string
    revision: string
end

local record AcceptSubscriptionRequestInput
    domainIdentifier: string
    identifier: string
    decisionComment: string
    assetScopes: {AcceptedAssetScope}
    assetPermissions: {AssetPermission}
end

local record AcceptSubscriptionRequestOutput
    id: string
    createdBy: string
    updatedBy: string
    domainId: string
    status: string
    createdAt: number
    updatedAt: number
    requestReason: string
    subscribedPrincipals: {SubscribedPrincipal}
    subscribedListings: {SubscribedListing}
    reviewerId: string
    decisionComment: string
    existingSubscriptionId: string
    metadataForms: {FormOutput}
end

local record AddEntityOwnerInput
    domainIdentifier: string
    entityType: string
    entityIdentifier: string
    owner: OwnerProperties
    clientToken: string
end

local record AddEntityOwnerOutput
end

local record AddPolicyGrantInput
    domainIdentifier: string
    entityType: string
    entityIdentifier: string
    policyType: string
    principal: PolicyGrantPrincipal
    detail: PolicyGrantDetail
    clientToken: string
end

local record AddPolicyGrantOutput
    grantId: string
end

local record AssociateEnvironmentRoleInput
    domainIdentifier: string
    environmentIdentifier: string
    environmentRoleArn: string
end

local record AssociateEnvironmentRoleOutput
end

local record AssociateGovernedTermsInput
    domainIdentifier: string
    entityIdentifier: string
    entityType: string
    governedGlossaryTerms: {string}
end

local record AssociateGovernedTermsOutput
end

local record BatchGetAttributesMetadataInput
    domainIdentifier: string
    entityType: string
    entityIdentifier: string
    entityRevision: string
    attributeIdentifiers: {string}
end

local record BatchGetAttributesMetadataOutput
    attributes: {BatchGetAttributeOutput}
    errors: {AttributeError}
end

local record BatchPutAttributesMetadataInput
    domainIdentifier: string
    entityType: string
    entityIdentifier: string
    clientToken: string
    attributes: {AttributeInput}
end

local record BatchPutAttributesMetadataOutput
    errors: {AttributeError}
    attributes: {BatchPutAttributeOutput}
end

local record CancelMetadataGenerationRunInput
    domainIdentifier: string
    identifier: string
end

local record CancelMetadataGenerationRunOutput
end

local record CancelSubscriptionInput
    domainIdentifier: string
    identifier: string
end

local record CancelSubscriptionOutput
    id: string
    createdBy: string
    updatedBy: string
    domainId: string
    status: string
    createdAt: number
    updatedAt: number
    subscribedPrincipal: SubscribedPrincipal
    subscribedListing: SubscribedListing
    subscriptionRequestId: string
    retainPermissions: boolean
end

local record CreateAccountPoolInput
    domainIdentifier: string
    name: string
    description: string
    resolutionStrategy: string
    accountSource: AccountSource
end

local record CreateAccountPoolOutput
    domainId: string
    name: string
    id: string
    description: string
    resolutionStrategy: string
    accountSource: AccountSource
    createdBy: string
    createdAt: number
    lastUpdatedAt: number
    updatedBy: string
    domainUnitId: string
end

local record CreateAssetInput
    name: string
    domainIdentifier: string
    externalIdentifier: string
    typeIdentifier: string
    typeRevision: string
    description: string
    glossaryTerms: {string}
    formsInput: {FormInput}
    owningProjectIdentifier: string
    predictionConfiguration: PredictionConfiguration
    clientToken: string
end

local record CreateAssetOutput
    id: string
    name: string
    typeIdentifier: string
    typeRevision: string
    externalIdentifier: string
    revision: string
    description: string
    createdAt: number
    createdBy: string
    firstRevisionCreatedAt: number
    firstRevisionCreatedBy: string
    glossaryTerms: {string}
    governedGlossaryTerms: {string}
    owningProjectId: string
    domainId: string
    listing: AssetListingDetails
    formsOutput: {FormOutput}
    readOnlyFormsOutput: {FormOutput}
    latestTimeSeriesDataPointFormsOutput: {TimeSeriesDataPointSummaryFormOutput}
    predictionConfiguration: PredictionConfiguration
end

local record CreateAssetFilterInput
    domainIdentifier: string
    assetIdentifier: string
    name: string
    description: string
    configuration: AssetFilterConfiguration
    clientToken: string
end

local record CreateAssetFilterOutput
    id: string
    domainId: string
    assetId: string
    name: string
    description: string
    status: string
    configuration: AssetFilterConfiguration
    createdAt: number
    errorMessage: string
    effectiveColumnNames: {string}
    effectiveRowFilter: string
end

local record CreateAssetRevisionInput
    name: string
    domainIdentifier: string
    identifier: string
    typeRevision: string
    description: string
    glossaryTerms: {string}
    formsInput: {FormInput}
    predictionConfiguration: PredictionConfiguration
    clientToken: string
end

local record CreateAssetRevisionOutput
    id: string
    name: string
    typeIdentifier: string
    typeRevision: string
    externalIdentifier: string
    revision: string
    description: string
    createdAt: number
    createdBy: string
    firstRevisionCreatedAt: number
    firstRevisionCreatedBy: string
    glossaryTerms: {string}
    governedGlossaryTerms: {string}
    owningProjectId: string
    domainId: string
    listing: AssetListingDetails
    formsOutput: {FormOutput}
    readOnlyFormsOutput: {FormOutput}
    latestTimeSeriesDataPointFormsOutput: {TimeSeriesDataPointSummaryFormOutput}
    predictionConfiguration: PredictionConfiguration
end

local record CreateAssetTypeInput
    domainIdentifier: string
    name: string
    description: string
    formsInput: {string : FormEntryInput}
    owningProjectIdentifier: string
end

local record CreateAssetTypeOutput
    domainId: string
    name: string
    revision: string
    description: string
    formsOutput: {string : FormEntryOutput}
    owningProjectId: string
    originDomainId: string
    originProjectId: string
    createdAt: number
    createdBy: string
    updatedAt: number
    updatedBy: string
end

local record CreateConnectionInput
    awsLocation: AwsLocation
    clientToken: string
    configurations: {Configuration}
    description: string
    domainIdentifier: string
    environmentIdentifier: string
    name: string
    props: ConnectionPropertiesInput
    enableTrustedIdentityPropagation: boolean
    scope: string
end

local record CreateConnectionOutput
    connectionId: string
    configurations: {Configuration}
    description: string
    domainId: string
    domainUnitId: string
    environmentId: string
    name: string
    physicalEndpoints: {PhysicalEndpoint}
    projectId: string
    props: ConnectionPropertiesOutput
    type: string
    scope: string
end

local record CreateDataProductInput
    domainIdentifier: string
    name: string
    owningProjectIdentifier: string
    description: string
    glossaryTerms: {string}
    formsInput: {FormInput}
    items: {DataProductItem}
    clientToken: string
end

local record CreateDataProductOutput
    domainId: string
    id: string
    revision: string
    owningProjectId: string
    name: string
    status: string
    description: string
    glossaryTerms: {string}
    items: {DataProductItem}
    formsOutput: {FormOutput}
    createdAt: number
    createdBy: string
    firstRevisionCreatedAt: number
    firstRevisionCreatedBy: string
end

local record CreateDataProductRevisionInput
    domainIdentifier: string
    identifier: string
    name: string
    description: string
    glossaryTerms: {string}
    items: {DataProductItem}
    formsInput: {FormInput}
    clientToken: string
end

local record CreateDataProductRevisionOutput
    domainId: string
    id: string
    revision: string
    owningProjectId: string
    name: string
    status: string
    description: string
    glossaryTerms: {string}
    items: {DataProductItem}
    formsOutput: {FormOutput}
    createdAt: number
    createdBy: string
    firstRevisionCreatedAt: number
    firstRevisionCreatedBy: string
end

local record CreateDataSourceInput
    name: string
    description: string
    domainIdentifier: string
    projectIdentifier: string
    environmentIdentifier: string
    connectionIdentifier: string
    type: string
    configuration: DataSourceConfigurationInput
    recommendation: RecommendationConfiguration
    enableSetting: string
    schedule: ScheduleConfiguration
    publishOnImport: boolean
    assetFormsInput: {FormInput}
    clientToken: string
end

local record CreateDataSourceOutput
    id: string
    status: string
    type: string
    name: string
    description: string
    domainId: string
    projectId: string
    environmentId: string
    connectionId: string
    configuration: DataSourceConfigurationOutput
    recommendation: RecommendationConfiguration
    enableSetting: string
    publishOnImport: boolean
    assetFormsOutput: {FormOutput}
    schedule: ScheduleConfiguration
    lastRunStatus: string
    lastRunAt: number
    lastRunErrorMessage: DataSourceErrorMessage
    errorMessage: DataSourceErrorMessage
    createdAt: number
    updatedAt: number
end

local record CreateDomainInput
    name: string
    description: string
    singleSignOn: SingleSignOn
    domainExecutionRole: string
    kmsKeyIdentifier: string
    tags: {string : string}
    domainVersion: string
    serviceRole: string
    clientToken: string
end

local record CreateDomainOutput
    id: string
    rootDomainUnitId: string
    name: string
    description: string
    singleSignOn: SingleSignOn
    domainExecutionRole: string
    arn: string
    kmsKeyIdentifier: string
    status: string
    portalUrl: string
    tags: {string : string}
    domainVersion: string
    serviceRole: string
end

local record CreateDomainUnitInput
    domainIdentifier: string
    name: string
    parentDomainUnitIdentifier: string
    description: string
    clientToken: string
end

local record CreateDomainUnitOutput
    id: string
    domainId: string
    name: string
    parentDomainUnitId: string
    description: string
    owners: {DomainUnitOwnerProperties}
    ancestorDomainUnitIds: {string}
    createdAt: number
    createdBy: string
end

local record CreateEnvironmentInput
    projectIdentifier: string
    domainIdentifier: string
    description: string
    name: string
    environmentProfileIdentifier: string
    userParameters: {EnvironmentParameter}
    glossaryTerms: {string}
    environmentAccountIdentifier: string
    environmentAccountRegion: string
    environmentBlueprintIdentifier: string
    deploymentOrder: number
    environmentConfigurationId: string
    environmentConfigurationName: string
end

local record CreateEnvironmentOutput
    projectId: string
    id: string
    domainId: string
    createdBy: string
    createdAt: number
    updatedAt: number
    name: string
    description: string
    environmentProfileId: string
    awsAccountId: string
    awsAccountRegion: string
    provider: string
    provisionedResources: {Resource}
    status: string
    environmentActions: {ConfigurableEnvironmentAction}
    glossaryTerms: {string}
    userParameters: {CustomParameter}
    lastDeployment: Deployment
    provisioningProperties: ProvisioningProperties
    deploymentProperties: DeploymentProperties
    environmentBlueprintId: string
    environmentConfigurationId: string
    environmentConfigurationName: string
end

local record CreateEnvironmentActionInput
    domainIdentifier: string
    environmentIdentifier: string
    name: string
    parameters: ActionParameters
    description: string
end

local record CreateEnvironmentActionOutput
    domainId: string
    environmentId: string
    id: string
    name: string
    parameters: ActionParameters
    description: string
end

local record CreateEnvironmentBlueprintInput
    domainIdentifier: string
    name: string
    description: string
    provisioningProperties: ProvisioningProperties
    userParameters: {CustomParameter}
end

local record CreateEnvironmentBlueprintOutput
    id: string
    name: string
    description: string
    provider: string
    provisioningProperties: ProvisioningProperties
    deploymentProperties: DeploymentProperties
    userParameters: {CustomParameter}
    glossaryTerms: {string}
    createdAt: number
    updatedAt: number
end

local record CreateEnvironmentProfileInput
    domainIdentifier: string
    name: string
    description: string
    environmentBlueprintIdentifier: string
    projectIdentifier: string
    userParameters: {EnvironmentParameter}
    awsAccountId: string
    awsAccountRegion: string
end

local record CreateEnvironmentProfileOutput
    id: string
    domainId: string
    awsAccountId: string
    awsAccountRegion: string
    createdBy: string
    createdAt: number
    updatedAt: number
    name: string
    description: string
    environmentBlueprintId: string
    projectId: string
    userParameters: {CustomParameter}
end

local record CreateFormTypeInput
    domainIdentifier: string
    name: string
    model: Model
    owningProjectIdentifier: string
    status: string
    description: string
end

local record CreateFormTypeOutput
    domainId: string
    name: string
    revision: string
    description: string
    owningProjectId: string
    originDomainId: string
    originProjectId: string
end

local record CreateGlossaryInput
    domainIdentifier: string
    name: string
    owningProjectIdentifier: string
    description: string
    status: string
    usageRestrictions: {string}
    clientToken: string
end

local record CreateGlossaryOutput
    domainId: string
    id: string
    name: string
    owningProjectId: string
    description: string
    status: string
    usageRestrictions: {string}
end

local record CreateGlossaryTermInput
    domainIdentifier: string
    glossaryIdentifier: string
    name: string
    status: string
    shortDescription: string
    longDescription: string
    termRelations: TermRelations
    clientToken: string
end

local record CreateGlossaryTermOutput
    id: string
    domainId: string
    glossaryId: string
    name: string
    status: string
    shortDescription: string
    longDescription: string
    termRelations: TermRelations
    usageRestrictions: {string}
end

local record CreateGroupProfileInput
    domainIdentifier: string
    groupIdentifier: string
    rolePrincipalArn: string
    clientToken: string
end

local record CreateGroupProfileOutput
    domainId: string
    id: string
    status: string
    groupName: string
    rolePrincipalArn: string
    rolePrincipalId: string
end

local record CreateListingChangeSetInput
    domainIdentifier: string
    entityIdentifier: string
    entityType: string
    entityRevision: string
    action: string
    clientToken: string
end

local record CreateListingChangeSetOutput
    listingId: string
    listingRevision: string
    status: string
end

local record CreateProjectInput
    domainIdentifier: string
    name: string
    description: string
    resourceTags: {string : string}
    glossaryTerms: {string}
    domainUnitId: string
    projectProfileId: string
    userParameters: {EnvironmentConfigurationUserParameter}
    projectCategory: string
    projectExecutionRole: string
    membershipAssignments: {ProjectMembershipAssignment}
end

local record CreateProjectOutput
    domainId: string
    id: string
    name: string
    description: string
    projectStatus: string
    failureReasons: {ProjectDeletionError}
    createdBy: string
    createdAt: number
    lastUpdatedAt: number
    resourceTags: {ResourceTag}
    glossaryTerms: {string}
    domainUnitId: string
    projectProfileId: string
    userParameters: {EnvironmentConfigurationUserParameter}
    environmentDeploymentDetails: EnvironmentDeploymentDetails
    projectCategory: string
end

local record CreateProjectMembershipInput
    domainIdentifier: string
    projectIdentifier: string
    member: Member
    designation: string
end

local record CreateProjectMembershipOutput
end

local record CreateProjectProfileInput
    domainIdentifier: string
    name: string
    description: string
    status: string
    projectResourceTags: {ResourceTagParameter}
    allowCustomProjectResourceTags: boolean
    projectResourceTagsDescription: string
    environmentConfigurations: {EnvironmentConfiguration}
    domainUnitIdentifier: string
end

local record CreateProjectProfileOutput
    domainId: string
    id: string
    name: string
    description: string
    status: string
    projectResourceTags: {ResourceTagParameter}
    allowCustomProjectResourceTags: boolean
    projectResourceTagsDescription: string
    environmentConfigurations: {EnvironmentConfiguration}
    createdBy: string
    createdAt: number
    lastUpdatedAt: number
    domainUnitId: string
end

local record CreateRuleInput
    domainIdentifier: string
    name: string
    target: RuleTarget
    action: string
    scope: RuleScope
    detail: RuleDetail
    description: string
    clientToken: string
end

local record CreateRuleOutput
    identifier: string
    name: string
    ruleType: string
    target: RuleTarget
    action: string
    scope: RuleScope
    detail: RuleDetail
    targetType: string
    description: string
    createdAt: number
    createdBy: string
end

local record CreateSubscriptionGrantInput
    domainIdentifier: string
    environmentIdentifier: string
    subscriptionTargetIdentifier: string
    grantedEntity: GrantedEntityInput
    assetTargetNames: {AssetTargetNameMap}
    clientToken: string
end

local record CreateSubscriptionGrantOutput
    id: string
    createdBy: string
    updatedBy: string
    domainId: string
    createdAt: number
    updatedAt: number
    environmentId: string
    subscriptionTargetId: string
    grantedEntity: GrantedEntity
    status: string
    assets: {SubscribedAsset}
    subscriptionId: string
end

local record CreateSubscriptionRequestInput
    domainIdentifier: string
    subscribedPrincipals: {SubscribedPrincipalInput}
    subscribedListings: {SubscribedListingInput}
    requestReason: string
    clientToken: string
    metadataForms: {FormInput}
    assetPermissions: {AssetPermission}
    assetScopes: {AcceptedAssetScope}
end

local record CreateSubscriptionRequestOutput
    id: string
    createdBy: string
    updatedBy: string
    domainId: string
    status: string
    createdAt: number
    updatedAt: number
    requestReason: string
    subscribedPrincipals: {SubscribedPrincipal}
    subscribedListings: {SubscribedListing}
    reviewerId: string
    decisionComment: string
    existingSubscriptionId: string
    metadataForms: {FormOutput}
end

local record CreateSubscriptionTargetInput
    domainIdentifier: string
    environmentIdentifier: string
    name: string
    type: string
    subscriptionTargetConfig: {SubscriptionTargetForm}
    authorizedPrincipals: {string}
    manageAccessRole: string
    applicableAssetTypes: {string}
    provider: string
    clientToken: string
    subscriptionGrantCreationMode: string
end

local record CreateSubscriptionTargetOutput
    id: string
    authorizedPrincipals: {string}
    domainId: string
    projectId: string
    environmentId: string
    name: string
    type: string
    createdBy: string
    updatedBy: string
    createdAt: number
    updatedAt: number
    manageAccessRole: string
    applicableAssetTypes: {string}
    subscriptionTargetConfig: {SubscriptionTargetForm}
    provider: string
    subscriptionGrantCreationMode: string
end

local record CreateUserProfileInput
    domainIdentifier: string
    userIdentifier: string
    userType: string
    sessionName: string
    clientToken: string
end

local record CreateUserProfileOutput
    domainId: string
    id: string
    type: string
    status: string
    details: UserProfileDetails
end

local record DeleteAccountPoolInput
    domainIdentifier: string
    identifier: string
end

local record DeleteAccountPoolOutput
end

local record DeleteAssetInput
    domainIdentifier: string
    identifier: string
end

local record DeleteAssetOutput
end

local record DeleteAssetFilterInput
    domainIdentifier: string
    assetIdentifier: string
    identifier: string
end

local record DeleteAssetFilterOutput
end

local record DeleteAssetTypeInput
    domainIdentifier: string
    identifier: string
end

local record DeleteAssetTypeOutput
end

local record DeleteConnectionInput
    domainIdentifier: string
    identifier: string
end

local record DeleteConnectionOutput
    status: string
end

local record DeleteDataExportConfigurationInput
    domainIdentifier: string
end

local record DeleteDataExportConfigurationOutput
end

local record DeleteDataProductInput
    domainIdentifier: string
    identifier: string
end

local record DeleteDataProductOutput
end

local record DeleteDataSourceInput
    domainIdentifier: string
    identifier: string
    clientToken: string
    retainPermissionsOnRevokeFailure: boolean
end

local record DeleteDataSourceOutput
    id: string
    status: string
    type: string
    name: string
    description: string
    domainId: string
    projectId: string
    environmentId: string
    connectionId: string
    configuration: DataSourceConfigurationOutput
    enableSetting: string
    publishOnImport: boolean
    assetFormsOutput: {FormOutput}
    schedule: ScheduleConfiguration
    lastRunStatus: string
    lastRunAt: number
    lastRunErrorMessage: DataSourceErrorMessage
    errorMessage: DataSourceErrorMessage
    createdAt: number
    updatedAt: number
    selfGrantStatus: SelfGrantStatusOutput
    retainPermissionsOnRevokeFailure: boolean
end

local record DeleteDomainInput
    identifier: string
    clientToken: string
    skipDeletionCheck: boolean
end

local record DeleteDomainOutput
    status: string
end

local record DeleteDomainUnitInput
    domainIdentifier: string
    identifier: string
end

local record DeleteDomainUnitOutput
end

local record DeleteEnvironmentInput
    domainIdentifier: string
    identifier: string
end

local record DeleteEnvironmentOutput
end

local record DeleteEnvironmentActionInput
    domainIdentifier: string
    environmentIdentifier: string
    identifier: string
end

local record DeleteEnvironmentActionOutput
end

local record DeleteEnvironmentBlueprintInput
    domainIdentifier: string
    identifier: string
end

local record DeleteEnvironmentBlueprintOutput
end

local record DeleteEnvironmentBlueprintConfigurationInput
    domainIdentifier: string
    environmentBlueprintIdentifier: string
end

local record DeleteEnvironmentBlueprintConfigurationOutput
end

local record DeleteEnvironmentProfileInput
    domainIdentifier: string
    identifier: string
end

local record DeleteEnvironmentProfileOutput
end

local record DeleteFormTypeInput
    domainIdentifier: string
    formTypeIdentifier: string
end

local record DeleteFormTypeOutput
end

local record DeleteGlossaryInput
    domainIdentifier: string
    identifier: string
end

local record DeleteGlossaryOutput
end

local record DeleteGlossaryTermInput
    domainIdentifier: string
    identifier: string
end

local record DeleteGlossaryTermOutput
end

local record DeleteListingInput
    domainIdentifier: string
    identifier: string
end

local record DeleteListingOutput
end

local record DeleteProjectInput
    domainIdentifier: string
    identifier: string
    skipDeletionCheck: boolean
end

local record DeleteProjectOutput
end

local record DeleteProjectMembershipInput
    domainIdentifier: string
    projectIdentifier: string
    member: Member
end

local record DeleteProjectMembershipOutput
end

local record DeleteProjectProfileInput
    domainIdentifier: string
    identifier: string
end

local record DeleteProjectProfileOutput
end

local record DeleteRuleInput
    domainIdentifier: string
    identifier: string
end

local record DeleteRuleOutput
end

local record DeleteSubscriptionGrantInput
    domainIdentifier: string
    identifier: string
end

local record DeleteSubscriptionGrantOutput
    id: string
    createdBy: string
    updatedBy: string
    domainId: string
    createdAt: number
    updatedAt: number
    environmentId: string
    subscriptionTargetId: string
    grantedEntity: GrantedEntity
    status: string
    assets: {SubscribedAsset}
    subscriptionId: string
end

local record DeleteSubscriptionRequestInput
    domainIdentifier: string
    identifier: string
end

local record DeleteSubscriptionRequestOutput
end

local record DeleteSubscriptionTargetInput
    domainIdentifier: string
    environmentIdentifier: string
    identifier: string
end

local record DeleteSubscriptionTargetOutput
end

local record DeleteTimeSeriesDataPointsInput
    domainIdentifier: string
    entityIdentifier: string
    entityType: string
    formName: string
    clientToken: string
end

local record DeleteTimeSeriesDataPointsOutput
end

local record DisassociateEnvironmentRoleInput
    domainIdentifier: string
    environmentIdentifier: string
    environmentRoleArn: string
end

local record DisassociateEnvironmentRoleOutput
end

local record DisassociateGovernedTermsInput
    domainIdentifier: string
    entityIdentifier: string
    entityType: string
    governedGlossaryTerms: {string}
end

local record DisassociateGovernedTermsOutput
end

local record GetAccountPoolInput
    domainIdentifier: string
    identifier: string
end

local record GetAccountPoolOutput
    domainId: string
    name: string
    id: string
    description: string
    resolutionStrategy: string
    accountSource: AccountSource
    createdBy: string
    createdAt: number
    lastUpdatedAt: number
    updatedBy: string
    domainUnitId: string
end

local record GetAssetInput
    domainIdentifier: string
    identifier: string
    revision: string
end

local record GetAssetOutput
    id: string
    name: string
    typeIdentifier: string
    typeRevision: string
    externalIdentifier: string
    revision: string
    description: string
    createdAt: number
    createdBy: string
    firstRevisionCreatedAt: number
    firstRevisionCreatedBy: string
    glossaryTerms: {string}
    governedGlossaryTerms: {string}
    owningProjectId: string
    domainId: string
    listing: AssetListingDetails
    formsOutput: {FormOutput}
    readOnlyFormsOutput: {FormOutput}
    latestTimeSeriesDataPointFormsOutput: {TimeSeriesDataPointSummaryFormOutput}
end

local record GetAssetFilterInput
    domainIdentifier: string
    assetIdentifier: string
    identifier: string
end

local record GetAssetFilterOutput
    id: string
    domainId: string
    assetId: string
    name: string
    description: string
    status: string
    configuration: AssetFilterConfiguration
    createdAt: number
    errorMessage: string
    effectiveColumnNames: {string}
    effectiveRowFilter: string
end

local record GetAssetTypeInput
    domainIdentifier: string
    identifier: string
    revision: string
end

local record GetAssetTypeOutput
    domainId: string
    name: string
    revision: string
    description: string
    formsOutput: {string : FormEntryOutput}
    owningProjectId: string
    originDomainId: string
    originProjectId: string
    createdAt: number
    createdBy: string
    updatedAt: number
    updatedBy: string
end

local record GetConnectionInput
    domainIdentifier: string
    identifier: string
    withSecret: boolean
end

local record GetConnectionOutput
    connectionCredentials: ConnectionCredentials
    configurations: {Configuration}
    connectionId: string
    description: string
    domainId: string
    domainUnitId: string
    environmentId: string
    environmentUserRole: string
    name: string
    physicalEndpoints: {PhysicalEndpoint}
    projectId: string
    props: ConnectionPropertiesOutput
    type: string
    scope: string
end

local record GetDataExportConfigurationInput
    domainIdentifier: string
end

local record GetDataExportConfigurationOutput
    isExportEnabled: boolean
    status: string
    encryptionConfiguration: EncryptionConfiguration
    s3TableBucketArn: string
    createdAt: number
    updatedAt: number
end

local record GetDataProductInput
    domainIdentifier: string
    identifier: string
    revision: string
end

local record GetDataProductOutput
    domainId: string
    id: string
    revision: string
    owningProjectId: string
    name: string
    status: string
    description: string
    glossaryTerms: {string}
    items: {DataProductItem}
    formsOutput: {FormOutput}
    createdAt: number
    createdBy: string
    firstRevisionCreatedAt: number
    firstRevisionCreatedBy: string
end

local record GetDataSourceInput
    domainIdentifier: string
    identifier: string
end

local record GetDataSourceOutput
    id: string
    status: string
    type: string
    name: string
    description: string
    domainId: string
    projectId: string
    environmentId: string
    connectionId: string
    configuration: DataSourceConfigurationOutput
    recommendation: RecommendationConfiguration
    enableSetting: string
    publishOnImport: boolean
    assetFormsOutput: {FormOutput}
    schedule: ScheduleConfiguration
    lastRunStatus: string
    lastRunAt: number
    lastRunErrorMessage: DataSourceErrorMessage
    lastRunAssetCount: number
    errorMessage: DataSourceErrorMessage
    createdAt: number
    updatedAt: number
    selfGrantStatus: SelfGrantStatusOutput
end

local record GetDataSourceRunInput
    domainIdentifier: string
    identifier: string
end

local record GetDataSourceRunOutput
    domainId: string
    dataSourceId: string
    id: string
    projectId: string
    status: string
    type: string
    dataSourceConfigurationSnapshot: string
    runStatisticsForAssets: RunStatisticsForAssets
    lineageSummary: DataSourceRunLineageSummary
    errorMessage: DataSourceErrorMessage
    createdAt: number
    updatedAt: number
    startedAt: number
    stoppedAt: number
end

local record GetDomainInput
    identifier: string
end

local record GetDomainOutput
    id: string
    rootDomainUnitId: string
    name: string
    description: string
    singleSignOn: SingleSignOn
    domainExecutionRole: string
    arn: string
    kmsKeyIdentifier: string
    status: string
    portalUrl: string
    createdAt: number
    lastUpdatedAt: number
    tags: {string : string}
    domainVersion: string
    serviceRole: string
end

local record GetDomainUnitInput
    domainIdentifier: string
    identifier: string
end

local record GetDomainUnitOutput
    id: string
    domainId: string
    name: string
    parentDomainUnitId: string
    description: string
    owners: {DomainUnitOwnerProperties}
    createdAt: number
    lastUpdatedAt: number
    createdBy: string
    lastUpdatedBy: string
end

local record GetEnvironmentInput
    domainIdentifier: string
    identifier: string
end

local record GetEnvironmentOutput
    projectId: string
    id: string
    domainId: string
    createdBy: string
    createdAt: number
    updatedAt: number
    name: string
    description: string
    environmentProfileId: string
    awsAccountId: string
    awsAccountRegion: string
    provider: string
    provisionedResources: {Resource}
    status: string
    environmentActions: {ConfigurableEnvironmentAction}
    glossaryTerms: {string}
    userParameters: {CustomParameter}
    lastDeployment: Deployment
    provisioningProperties: ProvisioningProperties
    deploymentProperties: DeploymentProperties
    environmentBlueprintId: string
    environmentConfigurationId: string
    environmentConfigurationName: string
end

local record GetEnvironmentActionInput
    domainIdentifier: string
    environmentIdentifier: string
    identifier: string
end

local record GetEnvironmentActionOutput
    domainId: string
    environmentId: string
    id: string
    name: string
    parameters: ActionParameters
    description: string
end

local record GetEnvironmentBlueprintInput
    domainIdentifier: string
    identifier: string
end

local record GetEnvironmentBlueprintOutput
    id: string
    name: string
    description: string
    provider: string
    provisioningProperties: ProvisioningProperties
    deploymentProperties: DeploymentProperties
    userParameters: {CustomParameter}
    glossaryTerms: {string}
    createdAt: number
    updatedAt: number
end

local record GetEnvironmentBlueprintConfigurationInput
    domainIdentifier: string
    environmentBlueprintIdentifier: string
end

local record GetEnvironmentBlueprintConfigurationOutput
    domainId: string
    environmentBlueprintId: string
    provisioningRoleArn: string
    environmentRolePermissionBoundary: string
    manageAccessRoleArn: string
    enabledRegions: {string}
    regionalParameters: {string : {string : string}}
    createdAt: number
    updatedAt: number
    provisioningConfigurations: {ProvisioningConfiguration}
end

local record GetEnvironmentCredentialsInput
    domainIdentifier: string
    environmentIdentifier: string
end

local record GetEnvironmentCredentialsOutput
    accessKeyId: string
    secretAccessKey: string
    sessionToken: string
    expiration: number
end

local record GetEnvironmentProfileInput
    domainIdentifier: string
    identifier: string
end

local record GetEnvironmentProfileOutput
    id: string
    domainId: string
    awsAccountId: string
    awsAccountRegion: string
    createdBy: string
    createdAt: number
    updatedAt: number
    name: string
    description: string
    environmentBlueprintId: string
    projectId: string
    userParameters: {CustomParameter}
end

local record GetFormTypeInput
    domainIdentifier: string
    formTypeIdentifier: string
    revision: string
end

local record GetFormTypeOutput
    domainId: string
    name: string
    revision: string
    model: Model
    owningProjectId: string
    originDomainId: string
    originProjectId: string
    status: string
    createdAt: number
    createdBy: string
    description: string
    imports: {Import}
end

local record GetGlossaryInput
    domainIdentifier: string
    identifier: string
end

local record GetGlossaryOutput
    domainId: string
    id: string
    owningProjectId: string
    name: string
    description: string
    status: string
    createdAt: number
    createdBy: string
    updatedAt: number
    updatedBy: string
    usageRestrictions: {string}
end

local record GetGlossaryTermInput
    domainIdentifier: string
    identifier: string
end

local record GetGlossaryTermOutput
    domainId: string
    glossaryId: string
    id: string
    name: string
    shortDescription: string
    longDescription: string
    termRelations: TermRelations
    status: string
    createdAt: number
    createdBy: string
    updatedAt: number
    updatedBy: string
    usageRestrictions: {string}
end

local record GetGroupProfileInput
    domainIdentifier: string
    groupIdentifier: string
end

local record GetGroupProfileOutput
    domainId: string
    id: string
    status: string
    groupName: string
    rolePrincipalArn: string
    rolePrincipalId: string
end

local record GetIamPortalLoginUrlInput
    domainIdentifier: string
end

local record GetIamPortalLoginUrlOutput
    authCodeUrl: string
    userProfileId: string
end

local record GetJobRunInput
    domainIdentifier: string
    identifier: string
end

local record GetJobRunOutput
    domainId: string
    id: string
    jobId: string
    jobType: string
    runMode: string
    details: JobRunDetails
    status: string
    error: JobRunError
    createdBy: string
    createdAt: number
    startTime: number
    endTime: number
end

local record GetLineageEventInput
    domainIdentifier: string
    identifier: string
end

local record GetLineageEventOutput
    domainId: string
    id: string
    event: string
    createdBy: string
    processingStatus: string
    eventTime: number
    createdAt: number
end

local record GetLineageNodeInput
    domainIdentifier: string
    identifier: string
    eventTimestamp: number
end

local record GetLineageNodeOutput
    domainId: string
    name: string
    description: string
    createdAt: number
    createdBy: string
    updatedAt: number
    updatedBy: string
    id: string
    typeName: string
    typeRevision: string
    sourceIdentifier: string
    eventTimestamp: number
    formsOutput: {FormOutput}
    upstreamNodes: {LineageNodeReference}
    downstreamNodes: {LineageNodeReference}
end

local record GetListingInput
    domainIdentifier: string
    identifier: string
    listingRevision: string
end

local record GetListingOutput
    domainId: string
    id: string
    listingRevision: string
    createdAt: number
    updatedAt: number
    createdBy: string
    updatedBy: string
    item: ListingItem
    name: string
    description: string
    status: string
end

local record GetMetadataGenerationRunInput
    domainIdentifier: string
    identifier: string
    type: string
end

local record GetMetadataGenerationRunOutput
    domainId: string
    id: string
    target: MetadataGenerationRunTarget
    status: string
    type: string
    types: {string}
    createdAt: number
    createdBy: string
    owningProjectId: string
    typeStats: {MetadataGenerationRunTypeStat}
end

local record GetNotebookRunInput
    domainIdentifier: string
    identifier: string
end

local record GetNotebookRunOutput
    id: string
    domainId: string
    owningProjectId: string
    notebookId: string
    scheduleId: string
    status: string
    cellOrder: {CellInformation}
    metadata: {string : string}
    parameters: {string : string}
    computeConfiguration: ComputeConfig
    networkConfiguration: NetworkConfig
    timeoutConfiguration: TimeoutConfig
    environmentConfiguration: EnvironmentConfig
    storageConfiguration: StorageConfig
    triggerSource: TriggerSource
    error: NotebookRunError
    createdAt: number
    createdBy: string
    updatedAt: number
    updatedBy: string
    startedAt: number
    completedAt: number
end

local record GetProjectInput
    domainIdentifier: string
    identifier: string
end

local record GetProjectOutput
    domainId: string
    id: string
    name: string
    description: string
    projectStatus: string
    failureReasons: {ProjectDeletionError}
    createdBy: string
    createdAt: number
    lastUpdatedAt: number
    resourceTags: {ResourceTag}
    glossaryTerms: {string}
    domainUnitId: string
    projectProfileId: string
    userParameters: {EnvironmentConfigurationUserParameter}
    environmentDeploymentDetails: EnvironmentDeploymentDetails
    projectCategory: string
end

local record GetProjectProfileInput
    domainIdentifier: string
    identifier: string
end

local record GetProjectProfileOutput
    domainId: string
    id: string
    name: string
    description: string
    status: string
    projectResourceTags: {ResourceTagParameter}
    allowCustomProjectResourceTags: boolean
    projectResourceTagsDescription: string
    environmentConfigurations: {EnvironmentConfiguration}
    createdBy: string
    createdAt: number
    lastUpdatedAt: number
    domainUnitId: string
end

local record GetRuleInput
    domainIdentifier: string
    identifier: string
    revision: string
end

local record GetRuleOutput
    identifier: string
    revision: string
    name: string
    ruleType: string
    target: RuleTarget
    action: string
    scope: RuleScope
    detail: RuleDetail
    targetType: string
    description: string
    createdAt: number
    updatedAt: number
    createdBy: string
    lastUpdatedBy: string
end

local record GetSubscriptionInput
    domainIdentifier: string
    identifier: string
end

local record GetSubscriptionOutput
    id: string
    createdBy: string
    updatedBy: string
    domainId: string
    status: string
    createdAt: number
    updatedAt: number
    subscribedPrincipal: SubscribedPrincipal
    subscribedListing: SubscribedListing
    subscriptionRequestId: string
    retainPermissions: boolean
end

local record GetSubscriptionGrantInput
    domainIdentifier: string
    identifier: string
end

local record GetSubscriptionGrantOutput
    id: string
    createdBy: string
    updatedBy: string
    domainId: string
    createdAt: number
    updatedAt: number
    environmentId: string
    subscriptionTargetId: string
    grantedEntity: GrantedEntity
    status: string
    assets: {SubscribedAsset}
    subscriptionId: string
end

local record GetSubscriptionRequestDetailsInput
    domainIdentifier: string
    identifier: string
end

local record GetSubscriptionRequestDetailsOutput
    id: string
    createdBy: string
    updatedBy: string
    domainId: string
    status: string
    createdAt: number
    updatedAt: number
    requestReason: string
    subscribedPrincipals: {SubscribedPrincipal}
    subscribedListings: {SubscribedListing}
    reviewerId: string
    decisionComment: string
    existingSubscriptionId: string
    metadataForms: {FormOutput}
end

local record GetSubscriptionTargetInput
    domainIdentifier: string
    environmentIdentifier: string
    identifier: string
end

local record GetSubscriptionTargetOutput
    id: string
    authorizedPrincipals: {string}
    domainId: string
    projectId: string
    environmentId: string
    name: string
    type: string
    createdBy: string
    updatedBy: string
    createdAt: number
    updatedAt: number
    manageAccessRole: string
    applicableAssetTypes: {string}
    subscriptionTargetConfig: {SubscriptionTargetForm}
    provider: string
    subscriptionGrantCreationMode: string
end

local record GetTimeSeriesDataPointInput
    domainIdentifier: string
    entityIdentifier: string
    entityType: string
    identifier: string
    formName: string
end

local record GetTimeSeriesDataPointOutput
    domainId: string
    entityId: string
    entityType: string
    formName: string
    form: TimeSeriesDataPointFormOutput
end

local record GetUserProfileInput
    domainIdentifier: string
    userIdentifier: string
    type: string
    sessionName: string
end

local record GetUserProfileOutput
    domainId: string
    id: string
    type: string
    status: string
    details: UserProfileDetails
end

local record ListAccountPoolsInput
    domainIdentifier: string
    name: string
    sortBy: string
    sortOrder: string
    nextToken: string
    maxResults: number
end

local record ListAccountPoolsOutput
    items: {AccountPoolSummary}
    nextToken: string
end

local record ListAccountsInAccountPoolInput
    domainIdentifier: string
    identifier: string
    nextToken: string
    maxResults: number
end

local record ListAccountsInAccountPoolOutput
    items: {AccountInfo}
    nextToken: string
end

local record ListAssetFiltersInput
    domainIdentifier: string
    assetIdentifier: string
    status: string
    nextToken: string
    maxResults: number
end

local record ListAssetFiltersOutput
    items: {AssetFilterSummary}
    nextToken: string
end

local record ListAssetRevisionsInput
    domainIdentifier: string
    identifier: string
    nextToken: string
    maxResults: number
end

local record ListAssetRevisionsOutput
    items: {AssetRevision}
    nextToken: string
end

local record ListConnectionsInput
    domainIdentifier: string
    maxResults: number
    nextToken: string
    sortBy: string
    sortOrder: string
    name: string
    environmentIdentifier: string
    projectIdentifier: string
    type: string
    scope: string
end

local record ListConnectionsOutput
    items: {ConnectionSummary}
    nextToken: string
end

local record ListDataProductRevisionsInput
    domainIdentifier: string
    identifier: string
    maxResults: number
    nextToken: string
end

local record ListDataProductRevisionsOutput
    items: {DataProductRevision}
    nextToken: string
end

local record ListDataSourceRunActivitiesInput
    domainIdentifier: string
    identifier: string
    status: string
    nextToken: string
    maxResults: number
end

local record ListDataSourceRunActivitiesOutput
    items: {DataSourceRunActivity}
    nextToken: string
end

local record ListDataSourceRunsInput
    domainIdentifier: string
    dataSourceIdentifier: string
    status: string
    nextToken: string
    maxResults: number
end

local record ListDataSourceRunsOutput
    items: {DataSourceRunSummary}
    nextToken: string
end

local record ListDataSourcesInput
    domainIdentifier: string
    projectIdentifier: string
    environmentIdentifier: string
    connectionIdentifier: string
    type: string
    status: string
    name: string
    nextToken: string
    maxResults: number
end

local record ListDataSourcesOutput
    items: {DataSourceSummary}
    nextToken: string
end

local record ListDomainsInput
    status: string
    maxResults: number
    nextToken: string
end

local record ListDomainsOutput
    items: {DomainSummary}
    nextToken: string
end

local record ListDomainUnitsForParentInput
    domainIdentifier: string
    parentDomainUnitIdentifier: string
    maxResults: number
    nextToken: string
end

local record ListDomainUnitsForParentOutput
    items: {DomainUnitSummary}
    nextToken: string
end

local record ListEntityOwnersInput
    domainIdentifier: string
    entityType: string
    entityIdentifier: string
    maxResults: number
    nextToken: string
end

local record ListEntityOwnersOutput
    owners: {OwnerPropertiesOutput}
    nextToken: string
end

local record ListEnvironmentActionsInput
    domainIdentifier: string
    environmentIdentifier: string
    nextToken: string
    maxResults: number
end

local record ListEnvironmentActionsOutput
    items: {EnvironmentActionSummary}
    nextToken: string
end

local record ListEnvironmentBlueprintConfigurationsInput
    domainIdentifier: string
    maxResults: number
    nextToken: string
end

local record ListEnvironmentBlueprintConfigurationsOutput
    items: {EnvironmentBlueprintConfigurationItem}
    nextToken: string
end

local record ListEnvironmentBlueprintsInput
    domainIdentifier: string
    maxResults: number
    nextToken: string
    name: string
    managed: boolean
end

local record ListEnvironmentBlueprintsOutput
    items: {EnvironmentBlueprintSummary}
    nextToken: string
end

local record ListEnvironmentProfilesInput
    domainIdentifier: string
    awsAccountId: string
    awsAccountRegion: string
    environmentBlueprintIdentifier: string
    projectIdentifier: string
    name: string
    nextToken: string
    maxResults: number
end

local record ListEnvironmentProfilesOutput
    items: {EnvironmentProfileSummary}
    nextToken: string
end

local record ListEnvironmentsInput
    domainIdentifier: string
    awsAccountId: string
    status: string
    awsAccountRegion: string
    projectIdentifier: string
    environmentProfileIdentifier: string
    environmentBlueprintIdentifier: string
    provider: string
    name: string
    maxResults: number
    nextToken: string
end

local record ListEnvironmentsOutput
    items: {EnvironmentSummary}
    nextToken: string
end

local record ListJobRunsInput
    domainIdentifier: string
    jobIdentifier: string
    status: string
    sortOrder: string
    nextToken: string
    maxResults: number
end

local record ListJobRunsOutput
    items: {JobRunSummary}
    nextToken: string
end

local record ListLineageEventsInput
    domainIdentifier: string
    maxResults: number
    timestampAfter: number
    timestampBefore: number
    processingStatus: string
    sortOrder: string
    nextToken: string
end

local record ListLineageEventsOutput
    items: {LineageEventSummary}
    nextToken: string
end

local record ListLineageNodeHistoryInput
    domainIdentifier: string
    maxResults: number
    nextToken: string
    identifier: string
    direction: string
    eventTimestampGTE: number
    eventTimestampLTE: number
    sortOrder: string
end

local record ListLineageNodeHistoryOutput
    nodes: {LineageNodeSummary}
    nextToken: string
end

local record ListMetadataGenerationRunsInput
    domainIdentifier: string
    status: string
    type: string
    nextToken: string
    maxResults: number
    targetIdentifier: string
end

local record ListMetadataGenerationRunsOutput
    items: {MetadataGenerationRunItem}
    nextToken: string
end

local record ListNotebookRunsInput
    domainIdentifier: string
    owningProjectIdentifier: string
    notebookIdentifier: string
    status: string
    scheduleIdentifier: string
    maxResults: number
    sortOrder: string
    nextToken: string
end

local record ListNotebookRunsOutput
    items: {NotebookRunSummary}
    nextToken: string
end

local record ListNotificationsInput
    domainIdentifier: string
    type: string
    afterTimestamp: number
    beforeTimestamp: number
    subjects: {string}
    taskStatus: string
    maxResults: number
    nextToken: string
end

local record ListNotificationsOutput
    notifications: {NotificationOutput}
    nextToken: string
end

local record ListPolicyGrantsInput
    domainIdentifier: string
    entityType: string
    entityIdentifier: string
    policyType: string
    maxResults: number
    nextToken: string
end

local record ListPolicyGrantsOutput
    grantList: {PolicyGrantMember}
    nextToken: string
end

local record ListProjectMembershipsInput
    domainIdentifier: string
    projectIdentifier: string
    sortBy: string
    sortOrder: string
    nextToken: string
    maxResults: number
end

local record ListProjectMembershipsOutput
    members: {ProjectMember}
    nextToken: string
end

local record ListProjectProfilesInput
    domainIdentifier: string
    name: string
    sortBy: string
    sortOrder: string
    nextToken: string
    maxResults: number
end

local record ListProjectProfilesOutput
    items: {ProjectProfileSummary}
    nextToken: string
end

local record ListProjectsInput
    domainIdentifier: string
    userIdentifier: string
    groupIdentifier: string
    name: string
    projectCategory: string
    nextToken: string
    maxResults: number
end

local record ListProjectsOutput
    items: {ProjectSummary}
    nextToken: string
end

local record ListRulesInput
    domainIdentifier: string
    targetType: string
    targetIdentifier: string
    ruleType: string
    action: string
    projectIds: {string}
    assetTypes: {string}
    dataProduct: boolean
    includeCascaded: boolean
    maxResults: number
    nextToken: string
end

local record ListRulesOutput
    items: {RuleSummary}
    nextToken: string
end

local record ListSubscriptionGrantsInput
    domainIdentifier: string
    environmentId: string
    subscriptionTargetId: string
    subscribedListingId: string
    subscriptionId: string
    owningProjectId: string
    owningIamPrincipalArn: string
    owningUserId: string
    owningGroupId: string
    sortBy: string
    sortOrder: string
    maxResults: number
    nextToken: string
end

local record ListSubscriptionGrantsOutput
    items: {SubscriptionGrantSummary}
    nextToken: string
end

local record ListSubscriptionRequestsInput
    domainIdentifier: string
    status: string
    subscribedListingId: string
    owningProjectId: string
    owningIamPrincipalArn: string
    approverProjectId: string
    owningUserId: string
    owningGroupId: string
    sortBy: string
    sortOrder: string
    maxResults: number
    nextToken: string
end

local record ListSubscriptionRequestsOutput
    items: {SubscriptionRequestSummary}
    nextToken: string
end

local record ListSubscriptionsInput
    domainIdentifier: string
    subscriptionRequestIdentifier: string
    status: string
    subscribedListingId: string
    owningProjectId: string
    owningIamPrincipalArn: string
    owningUserId: string
    owningGroupId: string
    approverProjectId: string
    sortBy: string
    sortOrder: string
    maxResults: number
    nextToken: string
end

local record ListSubscriptionsOutput
    items: {SubscriptionSummary}
    nextToken: string
end

local record ListSubscriptionTargetsInput
    domainIdentifier: string
    environmentIdentifier: string
    sortBy: string
    sortOrder: string
    maxResults: number
    nextToken: string
end

local record ListSubscriptionTargetsOutput
    items: {SubscriptionTargetSummary}
    nextToken: string
end

local record ListTagsForResourceInput
    resourceArn: string
end

local record ListTagsForResourceOutput
    tags: {string : string}
end

local record ListTimeSeriesDataPointsInput
    domainIdentifier: string
    entityIdentifier: string
    entityType: string
    formName: string
    startedAt: number
    endedAt: number
    nextToken: string
    maxResults: number
end

local record ListTimeSeriesDataPointsOutput
    items: {TimeSeriesDataPointSummaryFormOutput}
    nextToken: string
end

local record PostLineageEventInput
    domainIdentifier: string
    event: string
    clientToken: string
end

local record PostLineageEventOutput
    id: string
    domainId: string
end

local record PostTimeSeriesDataPointsInput
    domainIdentifier: string
    entityIdentifier: string
    entityType: string
    forms: {TimeSeriesDataPointFormInput}
    clientToken: string
end

local record PostTimeSeriesDataPointsOutput
    domainId: string
    entityId: string
    entityType: string
    forms: {TimeSeriesDataPointFormOutput}
end

local record PutDataExportConfigurationInput
    domainIdentifier: string
    enableExport: boolean
    encryptionConfiguration: EncryptionConfiguration
    clientToken: string
end

local record PutDataExportConfigurationOutput
end

local record PutEnvironmentBlueprintConfigurationInput
    domainIdentifier: string
    environmentBlueprintIdentifier: string
    provisioningRoleArn: string
    manageAccessRoleArn: string
    environmentRolePermissionBoundary: string
    enabledRegions: {string}
    regionalParameters: {string : {string : string}}
    globalParameters: {string : string}
    provisioningConfigurations: {ProvisioningConfiguration}
end

local record PutEnvironmentBlueprintConfigurationOutput
    domainId: string
    environmentBlueprintId: string
    provisioningRoleArn: string
    environmentRolePermissionBoundary: string
    manageAccessRoleArn: string
    enabledRegions: {string}
    regionalParameters: {string : {string : string}}
    createdAt: number
    updatedAt: number
    provisioningConfigurations: {ProvisioningConfiguration}
end

local record QueryGraphInput
    domainIdentifier: string
    match: {MatchClause}
    maxResults: number
    nextToken: string
    additionalAttributes: AdditionalAttributes
end

local record QueryGraphOutput
    items: {ResultItem}
    nextToken: string
end

local record RejectPredictionsInput
    domainIdentifier: string
    identifier: string
    revision: string
    rejectRule: RejectRule
    rejectChoices: {RejectChoice}
    clientToken: string
end

local record RejectPredictionsOutput
    domainId: string
    assetId: string
    assetRevision: string
end

local record RejectSubscriptionRequestInput
    domainIdentifier: string
    identifier: string
    decisionComment: string
end

local record RejectSubscriptionRequestOutput
    id: string
    createdBy: string
    updatedBy: string
    domainId: string
    status: string
    createdAt: number
    updatedAt: number
    requestReason: string
    subscribedPrincipals: {SubscribedPrincipal}
    subscribedListings: {SubscribedListing}
    reviewerId: string
    decisionComment: string
    existingSubscriptionId: string
    metadataForms: {FormOutput}
end

local record RemoveEntityOwnerInput
    domainIdentifier: string
    entityType: string
    entityIdentifier: string
    owner: OwnerProperties
    clientToken: string
end

local record RemoveEntityOwnerOutput
end

local record RemovePolicyGrantInput
    domainIdentifier: string
    entityType: string
    entityIdentifier: string
    policyType: string
    principal: PolicyGrantPrincipal
    grantIdentifier: string
    clientToken: string
end

local record RemovePolicyGrantOutput
end

local record RevokeSubscriptionInput
    domainIdentifier: string
    identifier: string
    retainPermissions: boolean
end

local record RevokeSubscriptionOutput
    id: string
    createdBy: string
    updatedBy: string
    domainId: string
    status: string
    createdAt: number
    updatedAt: number
    subscribedPrincipal: SubscribedPrincipal
    subscribedListing: SubscribedListing
    subscriptionRequestId: string
    retainPermissions: boolean
end

local record SearchInput
    domainIdentifier: string
    owningProjectIdentifier: string
    maxResults: number
    nextToken: string
    searchScope: string
    searchText: string
    searchIn: {SearchInItem}
    filters: FilterClause
    sort: SearchSort
    additionalAttributes: {string}
end

local record SearchOutput
    items: {SearchInventoryResultItem}
    nextToken: string
    totalMatchCount: number
end

local record SearchGroupProfilesInput
    domainIdentifier: string
    groupType: string
    searchText: string
    maxResults: number
    nextToken: string
end

local record SearchGroupProfilesOutput
    items: {GroupProfileSummary}
    nextToken: string
end

local record SearchListingsInput
    domainIdentifier: string
    searchText: string
    searchIn: {SearchInItem}
    maxResults: number
    nextToken: string
    filters: FilterClause
    aggregations: {AggregationListItem}
    sort: SearchSort
    additionalAttributes: {string}
end

local record SearchListingsOutput
    items: {SearchResultItem}
    nextToken: string
    totalMatchCount: number
    aggregates: {AggregationOutput}
end

local record SearchTypesInput
    domainIdentifier: string
    maxResults: number
    nextToken: string
    searchScope: string
    searchText: string
    searchIn: {SearchInItem}
    filters: FilterClause
    sort: SearchSort
    managed: boolean
end

local record SearchTypesOutput
    items: {SearchTypesResultItem}
    nextToken: string
    totalMatchCount: number
end

local record SearchUserProfilesInput
    domainIdentifier: string
    userType: string
    searchText: string
    maxResults: number
    nextToken: string
end

local record SearchUserProfilesOutput
    items: {UserProfileSummary}
    nextToken: string
end

local record StartDataSourceRunInput
    domainIdentifier: string
    dataSourceIdentifier: string
    clientToken: string
end

local record StartDataSourceRunOutput
    domainId: string
    dataSourceId: string
    id: string
    projectId: string
    status: string
    type: string
    dataSourceConfigurationSnapshot: string
    runStatisticsForAssets: RunStatisticsForAssets
    errorMessage: DataSourceErrorMessage
    createdAt: number
    updatedAt: number
    startedAt: number
    stoppedAt: number
end

local record StartMetadataGenerationRunInput
    domainIdentifier: string
    type: string
    types: {string}
    target: MetadataGenerationRunTarget
    clientToken: string
    owningProjectIdentifier: string
end

local record StartMetadataGenerationRunOutput
    domainId: string
    id: string
    status: string
    type: string
    types: {string}
    createdAt: number
    createdBy: string
    owningProjectId: string
end

local record StartNotebookRunInput
    domainIdentifier: string
    owningProjectIdentifier: string
    notebookIdentifier: string
    scheduleIdentifier: string
    computeConfiguration: ComputeConfig
    networkConfiguration: NetworkConfig
    timeoutConfiguration: TimeoutConfig
    triggerSource: TriggerSource
    metadata: {string : string}
    parameters: {string : string}
    clientToken: string
end

local record StartNotebookRunOutput
    id: string
    domainId: string
    owningProjectId: string
    notebookId: string
    scheduleId: string
    status: string
    cellOrder: {CellInformation}
    metadata: {string : string}
    parameters: {string : string}
    computeConfiguration: ComputeConfig
    networkConfiguration: NetworkConfig
    timeoutConfiguration: TimeoutConfig
    environmentConfiguration: EnvironmentConfig
    storageConfiguration: StorageConfig
    triggerSource: TriggerSource
    error: NotebookRunError
    createdAt: number
    createdBy: string
    updatedAt: number
    updatedBy: string
    startedAt: number
    completedAt: number
end

local record StopNotebookRunInput
    domainIdentifier: string
    identifier: string
    clientToken: string
end

local record StopNotebookRunOutput
    id: string
    domainId: string
    owningProjectId: string
    status: string
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

local record UpdateAccountPoolInput
    domainIdentifier: string
    identifier: string
    name: string
    description: string
    resolutionStrategy: string
    accountSource: AccountSource
end

local record UpdateAccountPoolOutput
    domainId: string
    name: string
    id: string
    description: string
    resolutionStrategy: string
    accountSource: AccountSource
    createdBy: string
    createdAt: number
    lastUpdatedAt: number
    updatedBy: string
    domainUnitId: string
end

local record UpdateAssetFilterInput
    domainIdentifier: string
    assetIdentifier: string
    identifier: string
    name: string
    description: string
    configuration: AssetFilterConfiguration
end

local record UpdateAssetFilterOutput
    id: string
    domainId: string
    assetId: string
    name: string
    description: string
    status: string
    configuration: AssetFilterConfiguration
    createdAt: number
    errorMessage: string
    effectiveColumnNames: {string}
    effectiveRowFilter: string
end

local record UpdateConnectionInput
    configurations: {Configuration}
    domainIdentifier: string
    identifier: string
    description: string
    awsLocation: AwsLocation
    props: ConnectionPropertiesPatch
end

local record UpdateConnectionOutput
    configurations: {Configuration}
    connectionId: string
    description: string
    domainId: string
    domainUnitId: string
    environmentId: string
    name: string
    physicalEndpoints: {PhysicalEndpoint}
    projectId: string
    props: ConnectionPropertiesOutput
    type: string
    scope: string
end

local record UpdateDataSourceInput
    domainIdentifier: string
    identifier: string
    name: string
    description: string
    enableSetting: string
    publishOnImport: boolean
    assetFormsInput: {FormInput}
    schedule: ScheduleConfiguration
    configuration: DataSourceConfigurationInput
    recommendation: RecommendationConfiguration
    retainPermissionsOnRevokeFailure: boolean
end

local record UpdateDataSourceOutput
    id: string
    status: string
    type: string
    name: string
    description: string
    domainId: string
    projectId: string
    environmentId: string
    connectionId: string
    configuration: DataSourceConfigurationOutput
    recommendation: RecommendationConfiguration
    enableSetting: string
    publishOnImport: boolean
    assetFormsOutput: {FormOutput}
    schedule: ScheduleConfiguration
    lastRunStatus: string
    lastRunAt: number
    lastRunErrorMessage: DataSourceErrorMessage
    errorMessage: DataSourceErrorMessage
    createdAt: number
    updatedAt: number
    selfGrantStatus: SelfGrantStatusOutput
    retainPermissionsOnRevokeFailure: boolean
end

local record UpdateDomainInput
    identifier: string
    description: string
    singleSignOn: SingleSignOn
    domainExecutionRole: string
    serviceRole: string
    name: string
    clientToken: string
end

local record UpdateDomainOutput
    id: string
    rootDomainUnitId: string
    description: string
    singleSignOn: SingleSignOn
    domainExecutionRole: string
    serviceRole: string
    name: string
    lastUpdatedAt: number
end

local record UpdateDomainUnitInput
    domainIdentifier: string
    identifier: string
    description: string
    name: string
end

local record UpdateDomainUnitOutput
    id: string
    domainId: string
    name: string
    owners: {DomainUnitOwnerProperties}
    description: string
    parentDomainUnitId: string
    createdAt: number
    lastUpdatedAt: number
    createdBy: string
    lastUpdatedBy: string
end

local record UpdateEnvironmentInput
    domainIdentifier: string
    identifier: string
    name: string
    description: string
    glossaryTerms: {string}
    blueprintVersion: string
    userParameters: {EnvironmentParameter}
    environmentConfigurationName: string
end

local record UpdateEnvironmentOutput
    projectId: string
    id: string
    domainId: string
    createdBy: string
    createdAt: number
    updatedAt: number
    name: string
    description: string
    environmentProfileId: string
    awsAccountId: string
    awsAccountRegion: string
    provider: string
    provisionedResources: {Resource}
    status: string
    environmentActions: {ConfigurableEnvironmentAction}
    glossaryTerms: {string}
    userParameters: {CustomParameter}
    lastDeployment: Deployment
    provisioningProperties: ProvisioningProperties
    deploymentProperties: DeploymentProperties
    environmentBlueprintId: string
    environmentConfigurationId: string
    environmentConfigurationName: string
end

local record UpdateEnvironmentActionInput
    domainIdentifier: string
    environmentIdentifier: string
    identifier: string
    parameters: ActionParameters
    name: string
    description: string
end

local record UpdateEnvironmentActionOutput
    domainId: string
    environmentId: string
    id: string
    name: string
    parameters: ActionParameters
    description: string
end

local record UpdateEnvironmentBlueprintInput
    domainIdentifier: string
    identifier: string
    description: string
    provisioningProperties: ProvisioningProperties
    userParameters: {CustomParameter}
end

local record UpdateEnvironmentBlueprintOutput
    id: string
    name: string
    description: string
    provider: string
    provisioningProperties: ProvisioningProperties
    deploymentProperties: DeploymentProperties
    userParameters: {CustomParameter}
    glossaryTerms: {string}
    createdAt: number
    updatedAt: number
end

local record UpdateEnvironmentProfileInput
    domainIdentifier: string
    identifier: string
    name: string
    description: string
    userParameters: {EnvironmentParameter}
    awsAccountId: string
    awsAccountRegion: string
end

local record UpdateEnvironmentProfileOutput
    id: string
    domainId: string
    awsAccountId: string
    awsAccountRegion: string
    createdBy: string
    createdAt: number
    updatedAt: number
    name: string
    description: string
    environmentBlueprintId: string
    projectId: string
    userParameters: {CustomParameter}
end

local record UpdateGlossaryInput
    domainIdentifier: string
    identifier: string
    name: string
    description: string
    status: string
    clientToken: string
end

local record UpdateGlossaryOutput
    domainId: string
    id: string
    name: string
    owningProjectId: string
    description: string
    status: string
    usageRestrictions: {string}
end

local record UpdateGlossaryTermInput
    domainIdentifier: string
    glossaryIdentifier: string
    identifier: string
    name: string
    shortDescription: string
    longDescription: string
    termRelations: TermRelations
    status: string
end

local record UpdateGlossaryTermOutput
    id: string
    domainId: string
    glossaryId: string
    name: string
    status: string
    shortDescription: string
    longDescription: string
    termRelations: TermRelations
    usageRestrictions: {string}
end

local record UpdateGroupProfileInput
    domainIdentifier: string
    groupIdentifier: string
    status: string
end

local record UpdateGroupProfileOutput
    domainId: string
    id: string
    status: string
    groupName: string
    rolePrincipalArn: string
    rolePrincipalId: string
end

local record UpdateProjectInput
    domainIdentifier: string
    identifier: string
    name: string
    description: string
    resourceTags: {string : string}
    glossaryTerms: {string}
    domainUnitId: string
    environmentDeploymentDetails: EnvironmentDeploymentDetails
    userParameters: {EnvironmentConfigurationUserParameter}
    projectProfileVersion: string
end

local record UpdateProjectOutput
    domainId: string
    id: string
    name: string
    description: string
    projectStatus: string
    failureReasons: {ProjectDeletionError}
    createdBy: string
    createdAt: number
    lastUpdatedAt: number
    resourceTags: {ResourceTag}
    glossaryTerms: {string}
    domainUnitId: string
    projectProfileId: string
    userParameters: {EnvironmentConfigurationUserParameter}
    environmentDeploymentDetails: EnvironmentDeploymentDetails
    projectCategory: string
end

local record UpdateProjectProfileInput
    domainIdentifier: string
    identifier: string
    name: string
    description: string
    status: string
    projectResourceTags: {ResourceTagParameter}
    allowCustomProjectResourceTags: boolean
    projectResourceTagsDescription: string
    environmentConfigurations: {EnvironmentConfiguration}
    domainUnitIdentifier: string
end

local record UpdateProjectProfileOutput
    domainId: string
    id: string
    name: string
    description: string
    status: string
    projectResourceTags: {ResourceTagParameter}
    allowCustomProjectResourceTags: boolean
    projectResourceTagsDescription: string
    environmentConfigurations: {EnvironmentConfiguration}
    createdBy: string
    createdAt: number
    lastUpdatedAt: number
    domainUnitId: string
end

local record UpdateRootDomainUnitOwnerInput
    domainIdentifier: string
    currentOwner: string
    newOwner: string
    clientToken: string
end

local record UpdateRootDomainUnitOwnerOutput
end

local record UpdateRuleInput
    domainIdentifier: string
    identifier: string
    name: string
    description: string
    scope: RuleScope
    detail: RuleDetail
    includeChildDomainUnits: boolean
end

local record UpdateRuleOutput
    identifier: string
    revision: string
    name: string
    ruleType: string
    target: RuleTarget
    action: string
    scope: RuleScope
    detail: RuleDetail
    description: string
    createdAt: number
    updatedAt: number
    createdBy: string
    lastUpdatedBy: string
end

local record UpdateSubscriptionGrantStatusInput
    domainIdentifier: string
    identifier: string
    assetIdentifier: string
    status: string
    failureCause: FailureCause
    targetName: string
end

local record UpdateSubscriptionGrantStatusOutput
    id: string
    createdBy: string
    updatedBy: string
    domainId: string
    createdAt: number
    updatedAt: number
    environmentId: string
    subscriptionTargetId: string
    grantedEntity: GrantedEntity
    status: string
    assets: {SubscribedAsset}
    subscriptionId: string
end

local record UpdateSubscriptionRequestInput
    domainIdentifier: string
    identifier: string
    requestReason: string
end

local record UpdateSubscriptionRequestOutput
    id: string
    createdBy: string
    updatedBy: string
    domainId: string
    status: string
    createdAt: number
    updatedAt: number
    requestReason: string
    subscribedPrincipals: {SubscribedPrincipal}
    subscribedListings: {SubscribedListing}
    reviewerId: string
    decisionComment: string
    existingSubscriptionId: string
    metadataForms: {FormOutput}
end

local record UpdateSubscriptionTargetInput
    domainIdentifier: string
    environmentIdentifier: string
    identifier: string
    name: string
    authorizedPrincipals: {string}
    applicableAssetTypes: {string}
    subscriptionTargetConfig: {SubscriptionTargetForm}
    manageAccessRole: string
    provider: string
    subscriptionGrantCreationMode: string
end

local record UpdateSubscriptionTargetOutput
    id: string
    authorizedPrincipals: {string}
    domainId: string
    projectId: string
    environmentId: string
    name: string
    type: string
    createdBy: string
    updatedBy: string
    createdAt: number
    updatedAt: number
    manageAccessRole: string
    applicableAssetTypes: {string}
    subscriptionTargetConfig: {SubscriptionTargetForm}
    provider: string
    subscriptionGrantCreationMode: string
end

local record UpdateUserProfileInput
    domainIdentifier: string
    userIdentifier: string
    type: string
    status: string
    sessionName: string
end

local record UpdateUserProfileOutput
    domainId: string
    id: string
    type: string
    status: string
    details: UserProfileDetails
end

local record AccessDeniedException
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
end

local record ThrottlingException
    message: string
end

local record ValidationException
    message: string
end

local record UnauthorizedException
    message: string
end

local record AccessDeniedException
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

local record UnauthorizedException
    message: string
end

local record AccessDeniedException
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

local record UnauthorizedException
    message: string
end

local record AccessDeniedException
    message: string
end

local record ConflictException
    message: string
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

local record UnauthorizedException
    message: string
end

local record AccessDeniedException
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
end

local record ThrottlingException
    message: string
end

local record ValidationException
    message: string
end

local record UnauthorizedException
    message: string
end

local record AccessDeniedException
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
end

local record ThrottlingException
    message: string
end

local record ValidationException
    message: string
end

local record UnauthorizedException
    message: string
end

local record AccessDeniedException
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

local record UnauthorizedException
    message: string
end

local record AccessDeniedException
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
end

local record ThrottlingException
    message: string
end

local record ValidationException
    message: string
end

local record UnauthorizedException
    message: string
end

local record AccessDeniedException
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
end

local record ThrottlingException
    message: string
end

local record ValidationException
    message: string
end

local record UnauthorizedException
    message: string
end

local record AccessDeniedException
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
end

local record ThrottlingException
    message: string
end

local record ValidationException
    message: string
end

local record UnauthorizedException
    message: string
end

local record AccessDeniedException
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

local record UnauthorizedException
    message: string
end

local record AccessDeniedException
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

local record UnauthorizedException
    message: string
end

local record AccessDeniedException
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

local record UnauthorizedException
    message: string
end

local record AccessDeniedException
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
end

local record ThrottlingException
    message: string
end

local record ValidationException
    message: string
end

local record UnauthorizedException
    message: string
end

local record AccessDeniedException
    message: string
end

local record ConflictException
    message: string
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

local record UnauthorizedException
    message: string
end

local record AccessDeniedException
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

local record UnauthorizedException
    message: string
end

local record AccessDeniedException
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

local record UnauthorizedException
    message: string
end

local record AccessDeniedException
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
end

local record ThrottlingException
    message: string
end

local record ValidationException
    message: string
end

local record UnauthorizedException
    message: string
end

local record AccessDeniedException
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

local record UnauthorizedException
    message: string
end

local record AccessDeniedException
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

local record UnauthorizedException
    message: string
end

local record AccessDeniedException
    message: string
end

local record ConflictException
    message: string
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

local record UnauthorizedException
    message: string
end

local record AccessDeniedException
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
end

local record ThrottlingException
    message: string
end

local record ValidationException
    message: string
end

local record UnauthorizedException
    message: string
end

local record AccessDeniedException
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
end

local record ThrottlingException
    message: string
end

local record ValidationException
    message: string
end

local record UnauthorizedException
    message: string
end

local record AccessDeniedException
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

local record UnauthorizedException
    message: string
end

local record AccessDeniedException
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

local record UnauthorizedException
    message: string
end

local record AccessDeniedException
    message: string
end

local record ConflictException
    message: string
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

local record UnauthorizedException
    message: string
end

local record AccessDeniedException
    message: string
end

local record ConflictException
    message: string
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

local record UnauthorizedException
    message: string
end

local record AccessDeniedException
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

local record UnauthorizedException
    message: string
end

local record AccessDeniedException
    message: string
end

local record InternalServerException
    message: string
end

local record ResourceNotFoundException
    message: string
end

local record ValidationException
    message: string
end

local record ThrottlingException
    message: string
end

local record UnauthorizedException
    message: string
end

local record AccessDeniedException
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

local record UnauthorizedException
    message: string
end

local record AccessDeniedException
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

local record UnauthorizedException
    message: string
end

local record AccessDeniedException
    message: string
end

local record InternalServerException
    message: string
end

local record ResourceNotFoundException
    message: string
end

local record ValidationException
    message: string
end

local record ThrottlingException
    message: string
end

local record UnauthorizedException
    message: string
end

local record AccessDeniedException
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

local record UnauthorizedException
    message: string
end

local record AccessDeniedException
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

local record UnauthorizedException
    message: string
end

local record AccessDeniedException
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
end

local record ThrottlingException
    message: string
end

local record ValidationException
    message: string
end

local record UnauthorizedException
    message: string
end

local record AccessDeniedException
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

local record UnauthorizedException
    message: string
end

local record AccessDeniedException
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
end

local record ThrottlingException
    message: string
end

local record ValidationException
    message: string
end

local record UnauthorizedException
    message: string
end

local record AccessDeniedException
    message: string
end

local record InternalServerException
    message: string
end

local record ResourceNotFoundException
    message: string
end

local record ValidationException
    message: string
end

local record ThrottlingException
    message: string
end

local record UnauthorizedException
    message: string
end

local record AccessDeniedException
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

local record UnauthorizedException
    message: string
end

local record AccessDeniedException
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
end

local record ThrottlingException
    message: string
end

local record ValidationException
    message: string
end

local record UnauthorizedException
    message: string
end

local record AccessDeniedException
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
end

local record ThrottlingException
    message: string
end

local record ValidationException
    message: string
end

local record UnauthorizedException
    message: string
end

local record AccessDeniedException
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
end

local record ThrottlingException
    message: string
end

local record ValidationException
    message: string
end

local record UnauthorizedException
    message: string
end

local record AccessDeniedException
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

local record UnauthorizedException
    message: string
end

local record AccessDeniedException
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
end

local record ThrottlingException
    message: string
end

local record ValidationException
    message: string
end

local record UnauthorizedException
    message: string
end

local record AccessDeniedException
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
end

local record ThrottlingException
    message: string
end

local record ValidationException
    message: string
end

local record UnauthorizedException
    message: string
end

local record AccessDeniedException
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

local record UnauthorizedException
    message: string
end

local record AccessDeniedException
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
end

local record ThrottlingException
    message: string
end

local record ValidationException
    message: string
end

local record UnauthorizedException
    message: string
end

local record AccessDeniedException
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
end

local record ThrottlingException
    message: string
end

local record ValidationException
    message: string
end

local record UnauthorizedException
    message: string
end

local record AccessDeniedException
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

local record UnauthorizedException
    message: string
end

local record AccessDeniedException
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
end

local record ThrottlingException
    message: string
end

local record ValidationException
    message: string
end

local record UnauthorizedException
    message: string
end

local record AccessDeniedException
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
end

local record ThrottlingException
    message: string
end

local record ValidationException
    message: string
end

local record UnauthorizedException
    message: string
end

local record AccessDeniedException
    message: string
end

local record InternalServerException
    message: string
end

local record ValidationException
    message: string
end

local record ThrottlingException
    message: string
end

local record UnauthorizedException
    message: string
end

local record AccessDeniedException
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

local record UnauthorizedException
    message: string
end

local record AccessDeniedException
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
end

local record ThrottlingException
    message: string
end

local record ValidationException
    message: string
end

local record UnauthorizedException
    message: string
end

local record AccessDeniedException
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
end

local record ThrottlingException
    message: string
end

local record ValidationException
    message: string
end

local record UnauthorizedException
    message: string
end

local record AccessDeniedException
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
end

local record ThrottlingException
    message: string
end

local record ValidationException
    message: string
end

local record UnauthorizedException
    message: string
end

local record AccessDeniedException
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
end

local record ThrottlingException
    message: string
end

local record ValidationException
    message: string
end

local record UnauthorizedException
    message: string
end

local record AccessDeniedException
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

local record UnauthorizedException
    message: string
end

local record AccessDeniedException
    message: string
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

local record UnauthorizedException
    message: string
end

local record AccessDeniedException
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

local record UnauthorizedException
    message: string
end

local record AccessDeniedException
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
end

local record ThrottlingException
    message: string
end

local record ValidationException
    message: string
end

local record UnauthorizedException
    message: string
end

local record AccessDeniedException
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
end

local record ThrottlingException
    message: string
end

local record ValidationException
    message: string
end

local record UnauthorizedException
    message: string
end

local record AccessDeniedException
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
end

local record ThrottlingException
    message: string
end

local record ValidationException
    message: string
end

local record UnauthorizedException
    message: string
end

local record AccessDeniedException
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
end

local record ThrottlingException
    message: string
end

local record ValidationException
    message: string
end

local record UnauthorizedException
    message: string
end

local record AccessDeniedException
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

local record UnauthorizedException
    message: string
end

local record AccessDeniedException
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
end

local record ThrottlingException
    message: string
end

local record ValidationException
    message: string
end

local record UnauthorizedException
    message: string
end

local record AccessDeniedException
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
end

local record ThrottlingException
    message: string
end

local record ValidationException
    message: string
end

local record UnauthorizedException
    message: string
end

local record AccessDeniedException
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

local record UnauthorizedException
    message: string
end

local record AccessDeniedException
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

local record UnauthorizedException
    message: string
end

local record AccessDeniedException
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

local record UnauthorizedException
    message: string
end

local record AccessDeniedException
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

local record UnauthorizedException
    message: string
end

local record AccessDeniedException
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

local record UnauthorizedException
    message: string
end

local record AccessDeniedException
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

local record UnauthorizedException
    message: string
end

local record AccessDeniedException
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

local record UnauthorizedException
    message: string
end

local record AccessDeniedException
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

local record UnauthorizedException
    message: string
end

local record AccessDeniedException
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

local record UnauthorizedException
    message: string
end

local record AccessDeniedException
    message: string
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

local record UnauthorizedException
    message: string
end

local record AccessDeniedException
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

local record UnauthorizedException
    message: string
end

local record AccessDeniedException
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

local record UnauthorizedException
    message: string
end

local record AccessDeniedException
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

local record UnauthorizedException
    message: string
end

local record AccessDeniedException
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

local record UnauthorizedException
    message: string
end

local record AccessDeniedException
    message: string
end

local record InternalServerException
    message: string
end

local record ResourceNotFoundException
    message: string
end

local record ValidationException
    message: string
end

local record ThrottlingException
    message: string
end

local record UnauthorizedException
    message: string
end

local record AccessDeniedException
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

local record UnauthorizedException
    message: string
end

local record AccessDeniedException
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

local record UnauthorizedException
    message: string
end

local record AccessDeniedException
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

local record UnauthorizedException
    message: string
end

local record AccessDeniedException
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

local record UnauthorizedException
    message: string
end

local record AccessDeniedException
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

local record UnauthorizedException
    message: string
end

local record AccessDeniedException
    message: string
end

local record InternalServerException
    message: string
end

local record ResourceNotFoundException
    message: string
end

local record ValidationException
    message: string
end

local record ThrottlingException
    message: string
end

local record UnauthorizedException
    message: string
end

local record AccessDeniedException
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
end

local record ThrottlingException
    message: string
end

local record ValidationException
    message: string
end

local record UnauthorizedException
    message: string
end

local record AccessDeniedException
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

local record UnauthorizedException
    message: string
end

local record AccessDeniedException
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

local record UnauthorizedException
    message: string
end

local record AccessDeniedException
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

local record UnauthorizedException
    message: string
end

local record AccessDeniedException
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

local record UnauthorizedException
    message: string
end

local record AccessDeniedException
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

local record UnauthorizedException
    message: string
end

local record AccessDeniedException
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

local record UnauthorizedException
    message: string
end

local record AccessDeniedException
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

local record UnauthorizedException
    message: string
end

local record AccessDeniedException
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

local record UnauthorizedException
    message: string
end

local record AccessDeniedException
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

local record UnauthorizedException
    message: string
end

local record AccessDeniedException
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

local record UnauthorizedException
    message: string
end

local record AccessDeniedException
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

local record UnauthorizedException
    message: string
end

local record AccessDeniedException
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

local record UnauthorizedException
    message: string
end

local record AccessDeniedException
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

local record UnauthorizedException
    message: string
end

local record AccessDeniedException
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

local record UnauthorizedException
    message: string
end

local record AccessDeniedException
    message: string
end

local record InternalServerException
    message: string
end

local record ResourceNotFoundException
    message: string
end

local record ValidationException
    message: string
end

local record ThrottlingException
    message: string
end

local record UnauthorizedException
    message: string
end

local record AccessDeniedException
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

local record UnauthorizedException
    message: string
end

local record AccessDeniedException
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

local record UnauthorizedException
    message: string
end

local record AccessDeniedException
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

local record UnauthorizedException
    message: string
end

local record AccessDeniedException
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

local record UnauthorizedException
    message: string
end

local record AccessDeniedException
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

local record UnauthorizedException
    message: string
end

local record AccessDeniedException
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

local record UnauthorizedException
    message: string
end

local record AccessDeniedException
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

local record UnauthorizedException
    message: string
end

local record AccessDeniedException
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

local record UnauthorizedException
    message: string
end

local record AccessDeniedException
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

local record UnauthorizedException
    message: string
end

local record AccessDeniedException
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

local record UnauthorizedException
    message: string
end

local record AccessDeniedException
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

local record UnauthorizedException
    message: string
end

local record AccessDeniedException
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

local record UnauthorizedException
    message: string
end

local record AccessDeniedException
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

local record UnauthorizedException
    message: string
end

local record AccessDeniedException
    message: string
end

local record InternalServerException
    message: string
end

local record ResourceNotFoundException
    message: string
end

local record ValidationException
    message: string
end

local record ThrottlingException
    message: string
end

local record UnauthorizedException
    message: string
end

local record AccessDeniedException
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

local record UnauthorizedException
    message: string
end

local record AccessDeniedException
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

local record UnauthorizedException
    message: string
end

local record AccessDeniedException
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

local record UnauthorizedException
    message: string
end

local record AccessDeniedException
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

local record UnauthorizedException
    message: string
end

local record AccessDeniedException
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

local record UnauthorizedException
    message: string
end

local record AccessDeniedException
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

local record UnauthorizedException
    message: string
end

local record AccessDeniedException
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

local record UnauthorizedException
    message: string
end

local record AccessDeniedException
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

local record UnauthorizedException
    message: string
end

local record AccessDeniedException
    message: string
end

local record InternalServerException
    message: string
end

local record ResourceNotFoundException
    message: string
end

local record ValidationException
    message: string
end

local record ThrottlingException
    message: string
end

local record UnauthorizedException
    message: string
end

local record AccessDeniedException
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

local record UnauthorizedException
    message: string
end

local record AccessDeniedException
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

local record UnauthorizedException
    message: string
end

local record AccessDeniedException
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

local record UnauthorizedException
    message: string
end

local record AccessDeniedException
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

local record UnauthorizedException
    message: string
end

local record AccessDeniedException
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

local record UnauthorizedException
    message: string
end

local record AccessDeniedException
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

local record UnauthorizedException
    message: string
end

local record AccessDeniedException
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

local record UnauthorizedException
    message: string
end

local record AccessDeniedException
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

local record UnauthorizedException
    message: string
end

local record AccessDeniedException
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

local record UnauthorizedException
    message: string
end

local record InternalServerException
    message: string
end

local record ResourceNotFoundException
    message: string
end

local record ValidationException
    message: string
end

local record AccessDeniedException
    message: string
end

local record ThrottlingException
    message: string
end

local record UnauthorizedException
    message: string
end

local record AccessDeniedException
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

local record UnauthorizedException
    message: string
end

local record AccessDeniedException
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

local record UnauthorizedException
    message: string
end

local record AccessDeniedException
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

local record UnauthorizedException
    message: string
end

local record AccessDeniedException
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

local record UnauthorizedException
    message: string
end

local record AccessDeniedException
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
end

local record ValidationException
    message: string
end

local record ThrottlingException
    message: string
end

local record UnauthorizedException
    message: string
end

local record AccessDeniedException
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

local record UnauthorizedException
    message: string
end

local record AccessDeniedException
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
end

local record ThrottlingException
    message: string
end

local record ValidationException
    message: string
end

local record UnauthorizedException
    message: string
end

local record AccessDeniedException
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
end

local record ThrottlingException
    message: string
end

local record ValidationException
    message: string
end

local record UnauthorizedException
    message: string
end

local record AccessDeniedException
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

local record UnauthorizedException
    message: string
end

local record AccessDeniedException
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

local record UnauthorizedException
    message: string
end

local record AccessDeniedException
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
end

local record ThrottlingException
    message: string
end

local record ValidationException
    message: string
end

local record UnauthorizedException
    message: string
end

local record AccessDeniedException
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

local record UnauthorizedException
    message: string
end

local record AccessDeniedException
    message: string
end

local record InternalServerException
    message: string
end

local record ResourceNotFoundException
    message: string
end

local record ValidationException
    message: string
end

local record ThrottlingException
    message: string
end

local record UnauthorizedException
    message: string
end

local record AccessDeniedException
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

local record UnauthorizedException
    message: string
end

local record AccessDeniedException
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

local record UnauthorizedException
    message: string
end

local record AccessDeniedException
    message: string
end

local record InternalServerException
    message: string
end

local record ResourceNotFoundException
    message: string
end

local record ValidationException
    message: string
end

local record ThrottlingException
    message: string
end

local record UnauthorizedException
    message: string
end

local record AccessDeniedException
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

local record UnauthorizedException
    message: string
end

local record AccessDeniedException
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

local record UnauthorizedException
    message: string
end

local record AccessDeniedException
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

local record UnauthorizedException
    message: string
end

local record AccessDeniedException
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
end

local record ThrottlingException
    message: string
end

local record ValidationException
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

local record ValidationException
    message: string
end

local record AccessDeniedException
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

local record AccessDeniedException
    message: string
end

local record ThrottlingException
    message: string
end

local record UnauthorizedException
    message: string
end

local record AccessDeniedException
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

local record UnauthorizedException
    message: string
end

local record AccessDeniedException
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
end

local record ThrottlingException
    message: string
end

local record ValidationException
    message: string
end

local record UnauthorizedException
    message: string
end

local record AccessDeniedException
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

local record UnauthorizedException
    message: string
end

local record AccessDeniedException
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

local record UnauthorizedException
    message: string
end

local record AccessDeniedException
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

local record UnauthorizedException
    message: string
end

local record AccessDeniedException
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
end

local record ThrottlingException
    message: string
end

local record ValidationException
    message: string
end

local record UnauthorizedException
    message: string
end

local record AccessDeniedException
    message: string
end

local record ConflictException
    message: string
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

local record UnauthorizedException
    message: string
end

local record AccessDeniedException
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
end

local record ThrottlingException
    message: string
end

local record ValidationException
    message: string
end

local record UnauthorizedException
    message: string
end

local record AccessDeniedException
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

local record UnauthorizedException
    message: string
end

local record AccessDeniedException
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

local record UnauthorizedException
    message: string
end

local record AccessDeniedException
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
end

local record ThrottlingException
    message: string
end

local record ValidationException
    message: string
end

local record UnauthorizedException
    message: string
end

local record AccessDeniedException
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
end

local record ThrottlingException
    message: string
end

local record ValidationException
    message: string
end

local record UnauthorizedException
    message: string
end

local record AccessDeniedException
    message: string
end

local record InternalServerException
    message: string
end

local record ResourceNotFoundException
    message: string
end

local record ValidationException
    message: string
end

local record ThrottlingException
    message: string
end

local record UnauthorizedException
    message: string
end

local record AccessDeniedException
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

local record UnauthorizedException
    message: string
end

local record AccessDeniedException
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

local record UnauthorizedException
    message: string
end

local record AccessDeniedException
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
end

local record ThrottlingException
    message: string
end

local record ValidationException
    message: string
end

local record UnauthorizedException
    message: string
end

local record AccessDeniedException
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

local record UnauthorizedException
    message: string
end

local record AccessDeniedException
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
end

local record ThrottlingException
    message: string
end

local record ValidationException
    message: string
end

local record UnauthorizedException
    message: string
end

local record AccessDeniedException
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
end

local record ThrottlingException
    message: string
end

local record ValidationException
    message: string
end

local record UnauthorizedException
    message: string
end

local record AccessDeniedException
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
end

local record ThrottlingException
    message: string
end

local record ValidationException
    message: string
end

local record UnauthorizedException
    message: string
end

local record AccessDeniedException
    message: string
end

local record InternalServerException
    message: string
end

local record ResourceNotFoundException
    message: string
end

local record ValidationException
    message: string
end

local record ThrottlingException
    message: string
end

local record UnauthorizedException
    message: string
end

local type UserProfileType = "IAM" | "SSO"

local type NotificationType = "TASK" | "EVENT"

local type JobType = "LINEAGE"

local type AttributeEntityType = "ASSET" | "LISTING"

local type TaskStatus = "ACTIVE" | "INACTIVE"

local type GovernedEntityType = "ASSET"

local type DataSourceRunStatus = "REQUESTED" | "RUNNING" | "FAILED" | "PARTIALLY_SUCCEEDED" | "SUCCESS"

local type EnvironmentStatus = "ACTIVE" | "CREATING" | "UPDATING" | "DELETING" | "CREATE_FAILED" | "UPDATE_FAILED" | "DELETE_FAILED" | "VALIDATION_FAILED" | "SUSPENDED" | "DISABLED" | "EXPIRED" | "DELETED" | "INACCESSIBLE"

local type MetadataGenerationRunType = "BUSINESS_DESCRIPTIONS" | "BUSINESS_NAMES" | "BUSINESS_GLOSSARY_ASSOCIATIONS"

local type ProjectStatus = "ACTIVE" | "DELETING" | "DELETE_FAILED" | "UPDATING" | "UPDATE_FAILED" | "MOVING"

local type GroupSearchType = "SSO_GROUP" | "DATAZONE_SSO_GROUP" | "IAM_ROLE_SESSION_GROUP"

local type ConfigurationStatus = "COMPLETED" | "FAILED"

local type EdgeDirection = "UPSTREAM" | "DOWNSTREAM"

local type MetadataGenerationRunStatus = "SUBMITTED" | "IN_PROGRESS" | "CANCELED" | "SUCCEEDED" | "FAILED" | "PARTIALLY_SUCCEEDED"

local type RuleTargetType = "DOMAIN_UNIT"

local type NotebookRunStatus = "QUEUED" | "STARTING" | "RUNNING" | "STOPPING" | "STOPPED" | "SUCCEEDED" | "FAILED"

local type SortFieldProject = "NAME"

local type SortFieldAccountPool = "NAME"

local type SubscriptionGrantCreationMode = "AUTOMATIC" | "MANUAL"

local type ConnectionType = "ATHENA" | "BIGQUERY" | "DATABRICKS" | "DOCUMENTDB" | "DYNAMODB" | "HYPERPOD" | "IAM" | "MYSQL" | "OPENSEARCH" | "ORACLE" | "POSTGRESQL" | "REDSHIFT" | "S3" | "SAPHANA" | "SNOWFLAKE" | "SPARK" | "SQLSERVER" | "TERADATA" | "VERTICA" | "WORKFLOWS_MWAA" | "AMAZON_Q" | "MLFLOW"

local type Status = "ENABLED" | "DISABLED"

local type ChangeAction = "PUBLISH" | "UNPUBLISH"

local type UserType = "IAM_USER" | "IAM_ROLE" | "SSO_USER" | "IAM_ROLE_SESSION"

local type SubscriptionStatus = "APPROVED" | "REVOKED" | "CANCELLED"

local type ManagedPolicyType = "CREATE_DOMAIN_UNIT" | "OVERRIDE_DOMAIN_UNIT_OWNERS" | "ADD_TO_PROJECT_MEMBER_POOL" | "OVERRIDE_PROJECT_OWNERS" | "CREATE_GLOSSARY" | "CREATE_FORM_TYPE" | "CREATE_ASSET_TYPE" | "CREATE_PROJECT" | "CREATE_ENVIRONMENT_PROFILE" | "DELEGATE_CREATE_ENVIRONMENT_PROFILE" | "CREATE_ENVIRONMENT" | "CREATE_ENVIRONMENT_FROM_BLUEPRINT" | "CREATE_PROJECT_FROM_PROJECT_PROFILE" | "USE_ASSET_TYPE"

local type SubscriptionRequestStatus = "PENDING" | "ACCEPTED" | "REJECTED"

local type FormTypeStatus = "ENABLED" | "DISABLED"

local type SortOrder = "ASCENDING" | "DESCENDING"

local type GroupProfileStatus = "ASSIGNED" | "NOT_ASSIGNED"

local type DataSourceRunType = "PRIORITIZED" | "SCHEDULED"

local type UserProfileStatus = "ASSIGNED" | "NOT_ASSIGNED" | "ACTIVATED" | "DEACTIVATED"

local type SubscriptionGrantOverallStatus = "PENDING" | "IN_PROGRESS" | "GRANT_FAILED" | "REVOKE_FAILED" | "GRANT_AND_REVOKE_FAILED" | "COMPLETED" | "INACCESSIBLE"

local type EnableSetting = "ENABLED" | "DISABLED"

local type RuleType = "METADATA_FORM_ENFORCEMENT" | "GLOSSARY_TERM_ENFORCEMENT"

local type DataProductStatus = "CREATED" | "CREATING" | "CREATE_FAILED"

local type UserDesignation = "PROJECT_OWNER" | "PROJECT_CONTRIBUTOR" | "PROJECT_CATALOG_VIEWER" | "PROJECT_CATALOG_CONSUMER" | "PROJECT_CATALOG_STEWARD"

local type DomainStatus = "CREATING" | "AVAILABLE" | "CREATION_FAILED" | "DELETING" | "DELETED" | "DELETION_FAILED"

local type SortFieldConnection = "NAME"

local type UserSearchType = "SSO_USER" | "DATAZONE_USER" | "DATAZONE_SSO_USER" | "DATAZONE_IAM_USER"

local type GlossaryStatus = "DISABLED" | "ENABLED"

local type ConnectionScope = "DOMAIN" | "PROJECT"

local type TargetEntityType = "DOMAIN_UNIT" | "ENVIRONMENT_BLUEPRINT_CONFIGURATION" | "ENVIRONMENT_PROFILE" | "ASSET_TYPE"

local type JobRunMode = "SCHEDULED" | "ON_DEMAND"

local type GlossaryTermStatus = "ENABLED" | "DISABLED"

local type DataAssetActivityStatus = "FAILED" | "PUBLISHING_FAILED" | "SUCCEEDED_CREATED" | "SUCCEEDED_UPDATED" | "SKIPPED_ALREADY_IMPORTED" | "SKIPPED_ARCHIVED" | "SKIPPED_NO_ACCESS" | "UNCHANGED"

local type InventorySearchScope = "ASSET" | "GLOSSARY" | "GLOSSARY_TERM" | "DATA_PRODUCT"

local type EntityType = "ASSET" | "DATA_PRODUCT"

local type DomainVersion = "V1" | "V2"

local type ResolutionStrategy = "MANUAL"

local type DataSourceStatus = "CREATING" | "FAILED_CREATION" | "READY" | "UPDATING" | "FAILED_UPDATE" | "RUNNING" | "DELETING" | "FAILED_DELETION"

local type ListingStatus = "CREATING" | "ACTIVE" | "INACTIVE"

local type JobRunStatus = "SCHEDULED" | "IN_PROGRESS" | "SUCCESS" | "PARTIALLY_SUCCEEDED" | "FAILED" | "ABORTED" | "TIMED_OUT" | "CANCELED"

local type SortKey = "CREATED_AT" | "UPDATED_AT"

local type LineageEventProcessingStatus = "REQUESTED" | "PROCESSING" | "SUCCESS" | "FAILED"

local type TypesSearchScope = "ASSET_TYPE" | "FORM_TYPE" | "LINEAGE_NODE_TYPE"

local type TimeSeriesEntityType = "ASSET" | "LISTING"

local type DataZoneEntityType = "DOMAIN_UNIT"

local type SubscriptionGrantStatus = "GRANT_PENDING" | "REVOKE_PENDING" | "GRANT_IN_PROGRESS" | "REVOKE_IN_PROGRESS" | "GRANTED" | "REVOKED" | "GRANT_FAILED" | "REVOKE_FAILED"

local type RuleAction = "CREATE_LISTING_CHANGE_SET" | "CREATE_SUBSCRIPTION_REQUEST"

local type FilterStatus = "VALID" | "INVALID"

local record M
    AcceptPredictionsInput: AcceptPredictionsInput
    AcceptPredictionsOutput: AcceptPredictionsOutput
    AcceptSubscriptionRequestInput: AcceptSubscriptionRequestInput
    AcceptSubscriptionRequestOutput: AcceptSubscriptionRequestOutput
    AddEntityOwnerInput: AddEntityOwnerInput
    AddEntityOwnerOutput: AddEntityOwnerOutput
    AddPolicyGrantInput: AddPolicyGrantInput
    AddPolicyGrantOutput: AddPolicyGrantOutput
    AssociateEnvironmentRoleInput: AssociateEnvironmentRoleInput
    AssociateEnvironmentRoleOutput: AssociateEnvironmentRoleOutput
    AssociateGovernedTermsInput: AssociateGovernedTermsInput
    AssociateGovernedTermsOutput: AssociateGovernedTermsOutput
    BatchGetAttributesMetadataInput: BatchGetAttributesMetadataInput
    BatchGetAttributesMetadataOutput: BatchGetAttributesMetadataOutput
    BatchPutAttributesMetadataInput: BatchPutAttributesMetadataInput
    BatchPutAttributesMetadataOutput: BatchPutAttributesMetadataOutput
    CancelMetadataGenerationRunInput: CancelMetadataGenerationRunInput
    CancelMetadataGenerationRunOutput: CancelMetadataGenerationRunOutput
    CancelSubscriptionInput: CancelSubscriptionInput
    CancelSubscriptionOutput: CancelSubscriptionOutput
    CreateAccountPoolInput: CreateAccountPoolInput
    CreateAccountPoolOutput: CreateAccountPoolOutput
    CreateAssetInput: CreateAssetInput
    CreateAssetOutput: CreateAssetOutput
    CreateAssetFilterInput: CreateAssetFilterInput
    CreateAssetFilterOutput: CreateAssetFilterOutput
    CreateAssetRevisionInput: CreateAssetRevisionInput
    CreateAssetRevisionOutput: CreateAssetRevisionOutput
    CreateAssetTypeInput: CreateAssetTypeInput
    CreateAssetTypeOutput: CreateAssetTypeOutput
    CreateConnectionInput: CreateConnectionInput
    CreateConnectionOutput: CreateConnectionOutput
    CreateDataProductInput: CreateDataProductInput
    CreateDataProductOutput: CreateDataProductOutput
    CreateDataProductRevisionInput: CreateDataProductRevisionInput
    CreateDataProductRevisionOutput: CreateDataProductRevisionOutput
    CreateDataSourceInput: CreateDataSourceInput
    CreateDataSourceOutput: CreateDataSourceOutput
    CreateDomainInput: CreateDomainInput
    CreateDomainOutput: CreateDomainOutput
    CreateDomainUnitInput: CreateDomainUnitInput
    CreateDomainUnitOutput: CreateDomainUnitOutput
    CreateEnvironmentInput: CreateEnvironmentInput
    CreateEnvironmentOutput: CreateEnvironmentOutput
    CreateEnvironmentActionInput: CreateEnvironmentActionInput
    CreateEnvironmentActionOutput: CreateEnvironmentActionOutput
    CreateEnvironmentBlueprintInput: CreateEnvironmentBlueprintInput
    CreateEnvironmentBlueprintOutput: CreateEnvironmentBlueprintOutput
    CreateEnvironmentProfileInput: CreateEnvironmentProfileInput
    CreateEnvironmentProfileOutput: CreateEnvironmentProfileOutput
    CreateFormTypeInput: CreateFormTypeInput
    CreateFormTypeOutput: CreateFormTypeOutput
    CreateGlossaryInput: CreateGlossaryInput
    CreateGlossaryOutput: CreateGlossaryOutput
    CreateGlossaryTermInput: CreateGlossaryTermInput
    CreateGlossaryTermOutput: CreateGlossaryTermOutput
    CreateGroupProfileInput: CreateGroupProfileInput
    CreateGroupProfileOutput: CreateGroupProfileOutput
    CreateListingChangeSetInput: CreateListingChangeSetInput
    CreateListingChangeSetOutput: CreateListingChangeSetOutput
    CreateProjectInput: CreateProjectInput
    CreateProjectOutput: CreateProjectOutput
    CreateProjectMembershipInput: CreateProjectMembershipInput
    CreateProjectMembershipOutput: CreateProjectMembershipOutput
    CreateProjectProfileInput: CreateProjectProfileInput
    CreateProjectProfileOutput: CreateProjectProfileOutput
    CreateRuleInput: CreateRuleInput
    CreateRuleOutput: CreateRuleOutput
    CreateSubscriptionGrantInput: CreateSubscriptionGrantInput
    CreateSubscriptionGrantOutput: CreateSubscriptionGrantOutput
    CreateSubscriptionRequestInput: CreateSubscriptionRequestInput
    CreateSubscriptionRequestOutput: CreateSubscriptionRequestOutput
    CreateSubscriptionTargetInput: CreateSubscriptionTargetInput
    CreateSubscriptionTargetOutput: CreateSubscriptionTargetOutput
    CreateUserProfileInput: CreateUserProfileInput
    CreateUserProfileOutput: CreateUserProfileOutput
    DeleteAccountPoolInput: DeleteAccountPoolInput
    DeleteAccountPoolOutput: DeleteAccountPoolOutput
    DeleteAssetInput: DeleteAssetInput
    DeleteAssetOutput: DeleteAssetOutput
    DeleteAssetFilterInput: DeleteAssetFilterInput
    DeleteAssetFilterOutput: DeleteAssetFilterOutput
    DeleteAssetTypeInput: DeleteAssetTypeInput
    DeleteAssetTypeOutput: DeleteAssetTypeOutput
    DeleteConnectionInput: DeleteConnectionInput
    DeleteConnectionOutput: DeleteConnectionOutput
    DeleteDataExportConfigurationInput: DeleteDataExportConfigurationInput
    DeleteDataExportConfigurationOutput: DeleteDataExportConfigurationOutput
    DeleteDataProductInput: DeleteDataProductInput
    DeleteDataProductOutput: DeleteDataProductOutput
    DeleteDataSourceInput: DeleteDataSourceInput
    DeleteDataSourceOutput: DeleteDataSourceOutput
    DeleteDomainInput: DeleteDomainInput
    DeleteDomainOutput: DeleteDomainOutput
    DeleteDomainUnitInput: DeleteDomainUnitInput
    DeleteDomainUnitOutput: DeleteDomainUnitOutput
    DeleteEnvironmentInput: DeleteEnvironmentInput
    DeleteEnvironmentOutput: DeleteEnvironmentOutput
    DeleteEnvironmentActionInput: DeleteEnvironmentActionInput
    DeleteEnvironmentActionOutput: DeleteEnvironmentActionOutput
    DeleteEnvironmentBlueprintInput: DeleteEnvironmentBlueprintInput
    DeleteEnvironmentBlueprintOutput: DeleteEnvironmentBlueprintOutput
    DeleteEnvironmentBlueprintConfigurationInput: DeleteEnvironmentBlueprintConfigurationInput
    DeleteEnvironmentBlueprintConfigurationOutput: DeleteEnvironmentBlueprintConfigurationOutput
    DeleteEnvironmentProfileInput: DeleteEnvironmentProfileInput
    DeleteEnvironmentProfileOutput: DeleteEnvironmentProfileOutput
    DeleteFormTypeInput: DeleteFormTypeInput
    DeleteFormTypeOutput: DeleteFormTypeOutput
    DeleteGlossaryInput: DeleteGlossaryInput
    DeleteGlossaryOutput: DeleteGlossaryOutput
    DeleteGlossaryTermInput: DeleteGlossaryTermInput
    DeleteGlossaryTermOutput: DeleteGlossaryTermOutput
    DeleteListingInput: DeleteListingInput
    DeleteListingOutput: DeleteListingOutput
    DeleteProjectInput: DeleteProjectInput
    DeleteProjectOutput: DeleteProjectOutput
    DeleteProjectMembershipInput: DeleteProjectMembershipInput
    DeleteProjectMembershipOutput: DeleteProjectMembershipOutput
    DeleteProjectProfileInput: DeleteProjectProfileInput
    DeleteProjectProfileOutput: DeleteProjectProfileOutput
    DeleteRuleInput: DeleteRuleInput
    DeleteRuleOutput: DeleteRuleOutput
    DeleteSubscriptionGrantInput: DeleteSubscriptionGrantInput
    DeleteSubscriptionGrantOutput: DeleteSubscriptionGrantOutput
    DeleteSubscriptionRequestInput: DeleteSubscriptionRequestInput
    DeleteSubscriptionRequestOutput: DeleteSubscriptionRequestOutput
    DeleteSubscriptionTargetInput: DeleteSubscriptionTargetInput
    DeleteSubscriptionTargetOutput: DeleteSubscriptionTargetOutput
    DeleteTimeSeriesDataPointsInput: DeleteTimeSeriesDataPointsInput
    DeleteTimeSeriesDataPointsOutput: DeleteTimeSeriesDataPointsOutput
    DisassociateEnvironmentRoleInput: DisassociateEnvironmentRoleInput
    DisassociateEnvironmentRoleOutput: DisassociateEnvironmentRoleOutput
    DisassociateGovernedTermsInput: DisassociateGovernedTermsInput
    DisassociateGovernedTermsOutput: DisassociateGovernedTermsOutput
    GetAccountPoolInput: GetAccountPoolInput
    GetAccountPoolOutput: GetAccountPoolOutput
    GetAssetInput: GetAssetInput
    GetAssetOutput: GetAssetOutput
    GetAssetFilterInput: GetAssetFilterInput
    GetAssetFilterOutput: GetAssetFilterOutput
    GetAssetTypeInput: GetAssetTypeInput
    GetAssetTypeOutput: GetAssetTypeOutput
    GetConnectionInput: GetConnectionInput
    GetConnectionOutput: GetConnectionOutput
    GetDataExportConfigurationInput: GetDataExportConfigurationInput
    GetDataExportConfigurationOutput: GetDataExportConfigurationOutput
    GetDataProductInput: GetDataProductInput
    GetDataProductOutput: GetDataProductOutput
    GetDataSourceInput: GetDataSourceInput
    GetDataSourceOutput: GetDataSourceOutput
    GetDataSourceRunInput: GetDataSourceRunInput
    GetDataSourceRunOutput: GetDataSourceRunOutput
    GetDomainInput: GetDomainInput
    GetDomainOutput: GetDomainOutput
    GetDomainUnitInput: GetDomainUnitInput
    GetDomainUnitOutput: GetDomainUnitOutput
    GetEnvironmentInput: GetEnvironmentInput
    GetEnvironmentOutput: GetEnvironmentOutput
    GetEnvironmentActionInput: GetEnvironmentActionInput
    GetEnvironmentActionOutput: GetEnvironmentActionOutput
    GetEnvironmentBlueprintInput: GetEnvironmentBlueprintInput
    GetEnvironmentBlueprintOutput: GetEnvironmentBlueprintOutput
    GetEnvironmentBlueprintConfigurationInput: GetEnvironmentBlueprintConfigurationInput
    GetEnvironmentBlueprintConfigurationOutput: GetEnvironmentBlueprintConfigurationOutput
    GetEnvironmentCredentialsInput: GetEnvironmentCredentialsInput
    GetEnvironmentCredentialsOutput: GetEnvironmentCredentialsOutput
    GetEnvironmentProfileInput: GetEnvironmentProfileInput
    GetEnvironmentProfileOutput: GetEnvironmentProfileOutput
    GetFormTypeInput: GetFormTypeInput
    GetFormTypeOutput: GetFormTypeOutput
    GetGlossaryInput: GetGlossaryInput
    GetGlossaryOutput: GetGlossaryOutput
    GetGlossaryTermInput: GetGlossaryTermInput
    GetGlossaryTermOutput: GetGlossaryTermOutput
    GetGroupProfileInput: GetGroupProfileInput
    GetGroupProfileOutput: GetGroupProfileOutput
    GetIamPortalLoginUrlInput: GetIamPortalLoginUrlInput
    GetIamPortalLoginUrlOutput: GetIamPortalLoginUrlOutput
    GetJobRunInput: GetJobRunInput
    GetJobRunOutput: GetJobRunOutput
    GetLineageEventInput: GetLineageEventInput
    GetLineageEventOutput: GetLineageEventOutput
    GetLineageNodeInput: GetLineageNodeInput
    GetLineageNodeOutput: GetLineageNodeOutput
    GetListingInput: GetListingInput
    GetListingOutput: GetListingOutput
    GetMetadataGenerationRunInput: GetMetadataGenerationRunInput
    GetMetadataGenerationRunOutput: GetMetadataGenerationRunOutput
    GetNotebookRunInput: GetNotebookRunInput
    GetNotebookRunOutput: GetNotebookRunOutput
    GetProjectInput: GetProjectInput
    GetProjectOutput: GetProjectOutput
    GetProjectProfileInput: GetProjectProfileInput
    GetProjectProfileOutput: GetProjectProfileOutput
    GetRuleInput: GetRuleInput
    GetRuleOutput: GetRuleOutput
    GetSubscriptionInput: GetSubscriptionInput
    GetSubscriptionOutput: GetSubscriptionOutput
    GetSubscriptionGrantInput: GetSubscriptionGrantInput
    GetSubscriptionGrantOutput: GetSubscriptionGrantOutput
    GetSubscriptionRequestDetailsInput: GetSubscriptionRequestDetailsInput
    GetSubscriptionRequestDetailsOutput: GetSubscriptionRequestDetailsOutput
    GetSubscriptionTargetInput: GetSubscriptionTargetInput
    GetSubscriptionTargetOutput: GetSubscriptionTargetOutput
    GetTimeSeriesDataPointInput: GetTimeSeriesDataPointInput
    GetTimeSeriesDataPointOutput: GetTimeSeriesDataPointOutput
    GetUserProfileInput: GetUserProfileInput
    GetUserProfileOutput: GetUserProfileOutput
    ListAccountPoolsInput: ListAccountPoolsInput
    ListAccountPoolsOutput: ListAccountPoolsOutput
    ListAccountsInAccountPoolInput: ListAccountsInAccountPoolInput
    ListAccountsInAccountPoolOutput: ListAccountsInAccountPoolOutput
    ListAssetFiltersInput: ListAssetFiltersInput
    ListAssetFiltersOutput: ListAssetFiltersOutput
    ListAssetRevisionsInput: ListAssetRevisionsInput
    ListAssetRevisionsOutput: ListAssetRevisionsOutput
    ListConnectionsInput: ListConnectionsInput
    ListConnectionsOutput: ListConnectionsOutput
    ListDataProductRevisionsInput: ListDataProductRevisionsInput
    ListDataProductRevisionsOutput: ListDataProductRevisionsOutput
    ListDataSourceRunActivitiesInput: ListDataSourceRunActivitiesInput
    ListDataSourceRunActivitiesOutput: ListDataSourceRunActivitiesOutput
    ListDataSourceRunsInput: ListDataSourceRunsInput
    ListDataSourceRunsOutput: ListDataSourceRunsOutput
    ListDataSourcesInput: ListDataSourcesInput
    ListDataSourcesOutput: ListDataSourcesOutput
    ListDomainsInput: ListDomainsInput
    ListDomainsOutput: ListDomainsOutput
    ListDomainUnitsForParentInput: ListDomainUnitsForParentInput
    ListDomainUnitsForParentOutput: ListDomainUnitsForParentOutput
    ListEntityOwnersInput: ListEntityOwnersInput
    ListEntityOwnersOutput: ListEntityOwnersOutput
    ListEnvironmentActionsInput: ListEnvironmentActionsInput
    ListEnvironmentActionsOutput: ListEnvironmentActionsOutput
    ListEnvironmentBlueprintConfigurationsInput: ListEnvironmentBlueprintConfigurationsInput
    ListEnvironmentBlueprintConfigurationsOutput: ListEnvironmentBlueprintConfigurationsOutput
    ListEnvironmentBlueprintsInput: ListEnvironmentBlueprintsInput
    ListEnvironmentBlueprintsOutput: ListEnvironmentBlueprintsOutput
    ListEnvironmentProfilesInput: ListEnvironmentProfilesInput
    ListEnvironmentProfilesOutput: ListEnvironmentProfilesOutput
    ListEnvironmentsInput: ListEnvironmentsInput
    ListEnvironmentsOutput: ListEnvironmentsOutput
    ListJobRunsInput: ListJobRunsInput
    ListJobRunsOutput: ListJobRunsOutput
    ListLineageEventsInput: ListLineageEventsInput
    ListLineageEventsOutput: ListLineageEventsOutput
    ListLineageNodeHistoryInput: ListLineageNodeHistoryInput
    ListLineageNodeHistoryOutput: ListLineageNodeHistoryOutput
    ListMetadataGenerationRunsInput: ListMetadataGenerationRunsInput
    ListMetadataGenerationRunsOutput: ListMetadataGenerationRunsOutput
    ListNotebookRunsInput: ListNotebookRunsInput
    ListNotebookRunsOutput: ListNotebookRunsOutput
    ListNotificationsInput: ListNotificationsInput
    ListNotificationsOutput: ListNotificationsOutput
    ListPolicyGrantsInput: ListPolicyGrantsInput
    ListPolicyGrantsOutput: ListPolicyGrantsOutput
    ListProjectMembershipsInput: ListProjectMembershipsInput
    ListProjectMembershipsOutput: ListProjectMembershipsOutput
    ListProjectProfilesInput: ListProjectProfilesInput
    ListProjectProfilesOutput: ListProjectProfilesOutput
    ListProjectsInput: ListProjectsInput
    ListProjectsOutput: ListProjectsOutput
    ListRulesInput: ListRulesInput
    ListRulesOutput: ListRulesOutput
    ListSubscriptionGrantsInput: ListSubscriptionGrantsInput
    ListSubscriptionGrantsOutput: ListSubscriptionGrantsOutput
    ListSubscriptionRequestsInput: ListSubscriptionRequestsInput
    ListSubscriptionRequestsOutput: ListSubscriptionRequestsOutput
    ListSubscriptionsInput: ListSubscriptionsInput
    ListSubscriptionsOutput: ListSubscriptionsOutput
    ListSubscriptionTargetsInput: ListSubscriptionTargetsInput
    ListSubscriptionTargetsOutput: ListSubscriptionTargetsOutput
    ListTagsForResourceInput: ListTagsForResourceInput
    ListTagsForResourceOutput: ListTagsForResourceOutput
    ListTimeSeriesDataPointsInput: ListTimeSeriesDataPointsInput
    ListTimeSeriesDataPointsOutput: ListTimeSeriesDataPointsOutput
    PostLineageEventInput: PostLineageEventInput
    PostLineageEventOutput: PostLineageEventOutput
    PostTimeSeriesDataPointsInput: PostTimeSeriesDataPointsInput
    PostTimeSeriesDataPointsOutput: PostTimeSeriesDataPointsOutput
    PutDataExportConfigurationInput: PutDataExportConfigurationInput
    PutDataExportConfigurationOutput: PutDataExportConfigurationOutput
    PutEnvironmentBlueprintConfigurationInput: PutEnvironmentBlueprintConfigurationInput
    PutEnvironmentBlueprintConfigurationOutput: PutEnvironmentBlueprintConfigurationOutput
    QueryGraphInput: QueryGraphInput
    QueryGraphOutput: QueryGraphOutput
    RejectPredictionsInput: RejectPredictionsInput
    RejectPredictionsOutput: RejectPredictionsOutput
    RejectSubscriptionRequestInput: RejectSubscriptionRequestInput
    RejectSubscriptionRequestOutput: RejectSubscriptionRequestOutput
    RemoveEntityOwnerInput: RemoveEntityOwnerInput
    RemoveEntityOwnerOutput: RemoveEntityOwnerOutput
    RemovePolicyGrantInput: RemovePolicyGrantInput
    RemovePolicyGrantOutput: RemovePolicyGrantOutput
    RevokeSubscriptionInput: RevokeSubscriptionInput
    RevokeSubscriptionOutput: RevokeSubscriptionOutput
    SearchInput: SearchInput
    SearchOutput: SearchOutput
    SearchGroupProfilesInput: SearchGroupProfilesInput
    SearchGroupProfilesOutput: SearchGroupProfilesOutput
    SearchListingsInput: SearchListingsInput
    SearchListingsOutput: SearchListingsOutput
    SearchTypesInput: SearchTypesInput
    SearchTypesOutput: SearchTypesOutput
    SearchUserProfilesInput: SearchUserProfilesInput
    SearchUserProfilesOutput: SearchUserProfilesOutput
    StartDataSourceRunInput: StartDataSourceRunInput
    StartDataSourceRunOutput: StartDataSourceRunOutput
    StartMetadataGenerationRunInput: StartMetadataGenerationRunInput
    StartMetadataGenerationRunOutput: StartMetadataGenerationRunOutput
    StartNotebookRunInput: StartNotebookRunInput
    StartNotebookRunOutput: StartNotebookRunOutput
    StopNotebookRunInput: StopNotebookRunInput
    StopNotebookRunOutput: StopNotebookRunOutput
    TagResourceInput: TagResourceInput
    TagResourceOutput: TagResourceOutput
    UntagResourceInput: UntagResourceInput
    UntagResourceOutput: UntagResourceOutput
    UpdateAccountPoolInput: UpdateAccountPoolInput
    UpdateAccountPoolOutput: UpdateAccountPoolOutput
    UpdateAssetFilterInput: UpdateAssetFilterInput
    UpdateAssetFilterOutput: UpdateAssetFilterOutput
    UpdateConnectionInput: UpdateConnectionInput
    UpdateConnectionOutput: UpdateConnectionOutput
    UpdateDataSourceInput: UpdateDataSourceInput
    UpdateDataSourceOutput: UpdateDataSourceOutput
    UpdateDomainInput: UpdateDomainInput
    UpdateDomainOutput: UpdateDomainOutput
    UpdateDomainUnitInput: UpdateDomainUnitInput
    UpdateDomainUnitOutput: UpdateDomainUnitOutput
    UpdateEnvironmentInput: UpdateEnvironmentInput
    UpdateEnvironmentOutput: UpdateEnvironmentOutput
    UpdateEnvironmentActionInput: UpdateEnvironmentActionInput
    UpdateEnvironmentActionOutput: UpdateEnvironmentActionOutput
    UpdateEnvironmentBlueprintInput: UpdateEnvironmentBlueprintInput
    UpdateEnvironmentBlueprintOutput: UpdateEnvironmentBlueprintOutput
    UpdateEnvironmentProfileInput: UpdateEnvironmentProfileInput
    UpdateEnvironmentProfileOutput: UpdateEnvironmentProfileOutput
    UpdateGlossaryInput: UpdateGlossaryInput
    UpdateGlossaryOutput: UpdateGlossaryOutput
    UpdateGlossaryTermInput: UpdateGlossaryTermInput
    UpdateGlossaryTermOutput: UpdateGlossaryTermOutput
    UpdateGroupProfileInput: UpdateGroupProfileInput
    UpdateGroupProfileOutput: UpdateGroupProfileOutput
    UpdateProjectInput: UpdateProjectInput
    UpdateProjectOutput: UpdateProjectOutput
    UpdateProjectProfileInput: UpdateProjectProfileInput
    UpdateProjectProfileOutput: UpdateProjectProfileOutput
    UpdateRootDomainUnitOwnerInput: UpdateRootDomainUnitOwnerInput
    UpdateRootDomainUnitOwnerOutput: UpdateRootDomainUnitOwnerOutput
    UpdateRuleInput: UpdateRuleInput
    UpdateRuleOutput: UpdateRuleOutput
    UpdateSubscriptionGrantStatusInput: UpdateSubscriptionGrantStatusInput
    UpdateSubscriptionGrantStatusOutput: UpdateSubscriptionGrantStatusOutput
    UpdateSubscriptionRequestInput: UpdateSubscriptionRequestInput
    UpdateSubscriptionRequestOutput: UpdateSubscriptionRequestOutput
    UpdateSubscriptionTargetInput: UpdateSubscriptionTargetInput
    UpdateSubscriptionTargetOutput: UpdateSubscriptionTargetOutput
    UpdateUserProfileInput: UpdateUserProfileInput
    UpdateUserProfileOutput: UpdateUserProfileOutput
end

return M
