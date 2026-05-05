local record AssociateAccessPolicyInput
    clusterName: string
    principalArn: string
    policyArn: string
    accessScope: AccessScope
end

local record AssociateAccessPolicyOutput
    clusterName: string
    principalArn: string
    associatedAccessPolicy: AssociatedAccessPolicy
end

local record AssociateEncryptionConfigInput
    clusterName: string
    encryptionConfig: {EncryptionConfig}
    clientRequestToken: string
end

local record AssociateEncryptionConfigOutput
    update: Update
end

local record AssociateIdentityProviderConfigInput
    clusterName: string
    oidc: OidcIdentityProviderConfigRequest
    tags: {string : string}
    clientRequestToken: string
end

local record AssociateIdentityProviderConfigOutput
    update: Update
    tags: {string : string}
end

local record CreateAccessEntryInput
    clusterName: string
    principalArn: string
    kubernetesGroups: {string}
    tags: {string : string}
    clientRequestToken: string
    username: string
    type: string
end

local record CreateAccessEntryOutput
    accessEntry: AccessEntry
end

local record CreateAddonInput
    clusterName: string
    addonName: string
    addonVersion: string
    serviceAccountRoleArn: string
    resolveConflicts: string
    clientRequestToken: string
    tags: {string : string}
    configurationValues: string
    podIdentityAssociations: {AddonPodIdentityAssociations}
    namespaceConfig: AddonNamespaceConfigRequest
end

local record CreateAddonOutput
    addon: Addon
end

local record CreateCapabilityInput
    capabilityName: string
    clusterName: string
    clientRequestToken: string
    type: string
    roleArn: string
    configuration: CapabilityConfigurationRequest
    tags: {string : string}
    deletePropagationPolicy: string
end

local record CreateCapabilityOutput
    capability: Capability
end

local record CreateClusterInput
    name: string
    version: string
    roleArn: string
    resourcesVpcConfig: VpcConfigRequest
    kubernetesNetworkConfig: KubernetesNetworkConfigRequest
    logging: Logging
    clientRequestToken: string
    tags: {string : string}
    encryptionConfig: {EncryptionConfig}
    outpostConfig: OutpostConfigRequest
    accessConfig: CreateAccessConfigRequest
    bootstrapSelfManagedAddons: boolean
    upgradePolicy: UpgradePolicyRequest
    zonalShiftConfig: ZonalShiftConfigRequest
    remoteNetworkConfig: RemoteNetworkConfigRequest
    computeConfig: ComputeConfigRequest
    storageConfig: StorageConfigRequest
    deletionProtection: boolean
    controlPlaneScalingConfig: ControlPlaneScalingConfig
end

local record CreateClusterOutput
    cluster: Cluster
end

local record CreateEksAnywhereSubscriptionInput
    name: string
    term: EksAnywhereSubscriptionTerm
    licenseQuantity: number
    licenseType: string
    autoRenew: boolean
    clientRequestToken: string
    tags: {string : string}
end

local record CreateEksAnywhereSubscriptionOutput
    subscription: EksAnywhereSubscription
end

local record CreateFargateProfileInput
    fargateProfileName: string
    clusterName: string
    podExecutionRoleArn: string
    subnets: {string}
    selectors: {FargateProfileSelector}
    clientRequestToken: string
    tags: {string : string}
end

local record CreateFargateProfileOutput
    fargateProfile: FargateProfile
end

local record CreateNodegroupInput
    clusterName: string
    nodegroupName: string
    scalingConfig: NodegroupScalingConfig
    diskSize: number
    subnets: {string}
    instanceTypes: {string}
    amiType: string
    remoteAccess: RemoteAccessConfig
    nodeRole: string
    labels: {string : string}
    taints: {Taint}
    tags: {string : string}
    clientRequestToken: string
    launchTemplate: LaunchTemplateSpecification
    updateConfig: NodegroupUpdateConfig
    nodeRepairConfig: NodeRepairConfig
    capacityType: string
    version: string
    releaseVersion: string
    warmPoolConfig: WarmPoolConfig
end

local record CreateNodegroupOutput
    nodegroup: Nodegroup
end

local record CreatePodIdentityAssociationInput
    clusterName: string
    namespace: string
    serviceAccount: string
    roleArn: string
    clientRequestToken: string
    tags: {string : string}
    disableSessionTags: boolean
    targetRoleArn: string
    policy: string
end

local record CreatePodIdentityAssociationOutput
    association: PodIdentityAssociation
end

local record DeleteAccessEntryInput
    clusterName: string
    principalArn: string
end

local record DeleteAccessEntryOutput
end

local record DeleteAddonInput
    clusterName: string
    addonName: string
    preserve: boolean
end

local record DeleteAddonOutput
    addon: Addon
end

local record DeleteCapabilityInput
    clusterName: string
    capabilityName: string
end

local record DeleteCapabilityOutput
    capability: Capability
end

local record DeleteClusterInput
    name: string
end

local record DeleteClusterOutput
    cluster: Cluster
end

local record DeleteEksAnywhereSubscriptionInput
    id: string
end

local record DeleteEksAnywhereSubscriptionOutput
    subscription: EksAnywhereSubscription
end

local record DeleteFargateProfileInput
    clusterName: string
    fargateProfileName: string
end

local record DeleteFargateProfileOutput
    fargateProfile: FargateProfile
end

local record DeleteNodegroupInput
    clusterName: string
    nodegroupName: string
end

local record DeleteNodegroupOutput
    nodegroup: Nodegroup
end

local record DeletePodIdentityAssociationInput
    clusterName: string
    associationId: string
end

local record DeletePodIdentityAssociationOutput
    association: PodIdentityAssociation
end

local record DeregisterClusterInput
    name: string
end

local record DeregisterClusterOutput
    cluster: Cluster
end

local record DescribeAccessEntryInput
    clusterName: string
    principalArn: string
end

local record DescribeAccessEntryOutput
    accessEntry: AccessEntry
end

local record DescribeAddonInput
    clusterName: string
    addonName: string
end

local record DescribeAddonOutput
    addon: Addon
end

local record DescribeAddonConfigurationInput
    addonName: string
    addonVersion: string
end

local record DescribeAddonConfigurationOutput
    addonName: string
    addonVersion: string
    configurationSchema: string
    podIdentityConfiguration: {AddonPodIdentityConfiguration}
end

local record DescribeAddonVersionsInput
    kubernetesVersion: string
    maxResults: number
    nextToken: string
    addonName: string
    types: {string}
    publishers: {string}
    owners: {string}
end

local record DescribeAddonVersionsOutput
    addons: {AddonInfo}
    nextToken: string
end

local record DescribeCapabilityInput
    clusterName: string
    capabilityName: string
end

local record DescribeCapabilityOutput
    capability: Capability
end

local record DescribeClusterInput
    name: string
end

local record DescribeClusterOutput
    cluster: Cluster
end

local record DescribeClusterVersionsInput
    clusterType: string
    maxResults: number
    nextToken: string
    defaultOnly: boolean
    includeAll: boolean
    clusterVersions: {string}
    status: string
    versionStatus: string
end

local record DescribeClusterVersionsOutput
    nextToken: string
    clusterVersions: {ClusterVersionInformation}
end

local record DescribeEksAnywhereSubscriptionInput
    id: string
end

local record DescribeEksAnywhereSubscriptionOutput
    subscription: EksAnywhereSubscription
end

local record DescribeFargateProfileInput
    clusterName: string
    fargateProfileName: string
end

local record DescribeFargateProfileOutput
    fargateProfile: FargateProfile
end

local record DescribeIdentityProviderConfigInput
    clusterName: string
    identityProviderConfig: IdentityProviderConfig
end

local record DescribeIdentityProviderConfigOutput
    identityProviderConfig: IdentityProviderConfigResponse
end

local record DescribeInsightInput
    clusterName: string
    id: string
end

local record DescribeInsightOutput
    insight: Insight
end

local record DescribeInsightsRefreshInput
    clusterName: string
end

local record DescribeInsightsRefreshOutput
    message: string
    status: string
    startedAt: number
    endedAt: number
end

local record DescribeNodegroupInput
    clusterName: string
    nodegroupName: string
end

local record DescribeNodegroupOutput
    nodegroup: Nodegroup
end

local record DescribePodIdentityAssociationInput
    clusterName: string
    associationId: string
end

local record DescribePodIdentityAssociationOutput
    association: PodIdentityAssociation
end

local record DescribeUpdateInput
    name: string
    updateId: string
    nodegroupName: string
    addonName: string
    capabilityName: string
end

local record DescribeUpdateOutput
    update: Update
end

local record DisassociateAccessPolicyInput
    clusterName: string
    principalArn: string
    policyArn: string
end

local record DisassociateAccessPolicyOutput
end

local record DisassociateIdentityProviderConfigInput
    clusterName: string
    identityProviderConfig: IdentityProviderConfig
    clientRequestToken: string
end

local record DisassociateIdentityProviderConfigOutput
    update: Update
end

local record ListAccessEntriesInput
    clusterName: string
    associatedPolicyArn: string
    maxResults: number
    nextToken: string
end

local record ListAccessEntriesOutput
    accessEntries: {string}
    nextToken: string
end

local record ListAccessPoliciesInput
    maxResults: number
    nextToken: string
end

local record ListAccessPoliciesOutput
    accessPolicies: {AccessPolicy}
    nextToken: string
end

local record ListAddonsInput
    clusterName: string
    maxResults: number
    nextToken: string
end

local record ListAddonsOutput
    addons: {string}
    nextToken: string
end

local record ListAssociatedAccessPoliciesInput
    clusterName: string
    principalArn: string
    maxResults: number
    nextToken: string
end

local record ListAssociatedAccessPoliciesOutput
    clusterName: string
    principalArn: string
    nextToken: string
    associatedAccessPolicies: {AssociatedAccessPolicy}
end

local record ListCapabilitiesInput
    clusterName: string
    nextToken: string
    maxResults: number
end

local record ListCapabilitiesOutput
    capabilities: {CapabilitySummary}
    nextToken: string
end

local record ListClustersInput
    maxResults: number
    nextToken: string
    include: {string}
end

local record ListClustersOutput
    clusters: {string}
    nextToken: string
end

local record ListEksAnywhereSubscriptionsInput
    maxResults: number
    nextToken: string
    includeStatus: {string}
end

local record ListEksAnywhereSubscriptionsOutput
    subscriptions: {EksAnywhereSubscription}
    nextToken: string
end

local record ListFargateProfilesInput
    clusterName: string
    maxResults: number
    nextToken: string
end

local record ListFargateProfilesOutput
    fargateProfileNames: {string}
    nextToken: string
end

local record ListIdentityProviderConfigsInput
    clusterName: string
    maxResults: number
    nextToken: string
end

local record ListIdentityProviderConfigsOutput
    identityProviderConfigs: {IdentityProviderConfig}
    nextToken: string
end

local record ListInsightsInput
    clusterName: string
    filter: InsightsFilter
    maxResults: number
    nextToken: string
end

local record ListInsightsOutput
    insights: {InsightSummary}
    nextToken: string
end

local record ListNodegroupsInput
    clusterName: string
    maxResults: number
    nextToken: string
end

local record ListNodegroupsOutput
    nodegroups: {string}
    nextToken: string
end

local record ListPodIdentityAssociationsInput
    clusterName: string
    namespace: string
    serviceAccount: string
    maxResults: number
    nextToken: string
end

local record ListPodIdentityAssociationsOutput
    associations: {PodIdentityAssociationSummary}
    nextToken: string
end

local record ListTagsForResourceInput
    resourceArn: string
end

local record ListTagsForResourceOutput
    tags: {string : string}
end

local record ListUpdatesInput
    name: string
    nodegroupName: string
    addonName: string
    capabilityName: string
    nextToken: string
    maxResults: number
end

local record ListUpdatesOutput
    updateIds: {string}
    nextToken: string
end

local record RegisterClusterInput
    name: string
    connectorConfig: ConnectorConfigRequest
    clientRequestToken: string
    tags: {string : string}
end

local record RegisterClusterOutput
    cluster: Cluster
end

local record StartInsightsRefreshInput
    clusterName: string
end

local record StartInsightsRefreshOutput
    message: string
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

local record UpdateAccessEntryInput
    clusterName: string
    principalArn: string
    kubernetesGroups: {string}
    clientRequestToken: string
    username: string
end

local record UpdateAccessEntryOutput
    accessEntry: AccessEntry
end

local record UpdateAddonInput
    clusterName: string
    addonName: string
    addonVersion: string
    serviceAccountRoleArn: string
    resolveConflicts: string
    clientRequestToken: string
    configurationValues: string
    podIdentityAssociations: {AddonPodIdentityAssociations}
end

local record UpdateAddonOutput
    update: Update
end

local record UpdateCapabilityInput
    clusterName: string
    capabilityName: string
    roleArn: string
    configuration: UpdateCapabilityConfiguration
    clientRequestToken: string
    deletePropagationPolicy: string
end

local record UpdateCapabilityOutput
    update: Update
end

local record UpdateClusterConfigInput
    name: string
    resourcesVpcConfig: VpcConfigRequest
    logging: Logging
    clientRequestToken: string
    accessConfig: UpdateAccessConfigRequest
    upgradePolicy: UpgradePolicyRequest
    zonalShiftConfig: ZonalShiftConfigRequest
    computeConfig: ComputeConfigRequest
    kubernetesNetworkConfig: KubernetesNetworkConfigRequest
    storageConfig: StorageConfigRequest
    remoteNetworkConfig: RemoteNetworkConfigRequest
    deletionProtection: boolean
    controlPlaneScalingConfig: ControlPlaneScalingConfig
end

local record UpdateClusterConfigOutput
    update: Update
end

local record UpdateClusterVersionInput
    name: string
    version: string
    clientRequestToken: string
    force: boolean
end

local record UpdateClusterVersionOutput
    update: Update
end

local record UpdateEksAnywhereSubscriptionInput
    id: string
    autoRenew: boolean
    clientRequestToken: string
end

local record UpdateEksAnywhereSubscriptionOutput
    subscription: EksAnywhereSubscription
end

local record UpdateNodegroupConfigInput
    clusterName: string
    nodegroupName: string
    labels: UpdateLabelsPayload
    taints: UpdateTaintsPayload
    scalingConfig: NodegroupScalingConfig
    updateConfig: NodegroupUpdateConfig
    nodeRepairConfig: NodeRepairConfig
    warmPoolConfig: WarmPoolConfig
    clientRequestToken: string
end

local record UpdateNodegroupConfigOutput
    update: Update
end

local record UpdateNodegroupVersionInput
    clusterName: string
    nodegroupName: string
    version: string
    releaseVersion: string
    launchTemplate: LaunchTemplateSpecification
    force: boolean
    clientRequestToken: string
end

local record UpdateNodegroupVersionOutput
    update: Update
end

local record UpdatePodIdentityAssociationInput
    clusterName: string
    associationId: string
    roleArn: string
    clientRequestToken: string
    disableSessionTags: boolean
    targetRoleArn: string
    policy: string
end

local record UpdatePodIdentityAssociationOutput
    association: PodIdentityAssociation
end

local record InvalidParameterException
    clusterName: string
    nodegroupName: string
    fargateProfileName: string
    addonName: string
    subscriptionId: string
    message: string
end

local record InvalidRequestException
    clusterName: string
    nodegroupName: string
    addonName: string
    subscriptionId: string
    message: string
end

local record ResourceNotFoundException
    clusterName: string
    nodegroupName: string
    fargateProfileName: string
    addonName: string
    subscriptionId: string
    message: string
end

local record ServerException
    clusterName: string
    nodegroupName: string
    addonName: string
    subscriptionId: string
    message: string
end

local record ClientException
    clusterName: string
    nodegroupName: string
    addonName: string
    subscriptionId: string
    message: string
end

local record InvalidParameterException
    clusterName: string
    nodegroupName: string
    fargateProfileName: string
    addonName: string
    subscriptionId: string
    message: string
end

local record InvalidRequestException
    clusterName: string
    nodegroupName: string
    addonName: string
    subscriptionId: string
    message: string
end

local record ResourceInUseException
    clusterName: string
    nodegroupName: string
    addonName: string
    message: string
end

local record ResourceNotFoundException
    clusterName: string
    nodegroupName: string
    fargateProfileName: string
    addonName: string
    subscriptionId: string
    message: string
end

local record ServerException
    clusterName: string
    nodegroupName: string
    addonName: string
    subscriptionId: string
    message: string
end

local record ThrottlingException
    clusterName: string
    message: string
end

local record ClientException
    clusterName: string
    nodegroupName: string
    addonName: string
    subscriptionId: string
    message: string
end

local record InvalidParameterException
    clusterName: string
    nodegroupName: string
    fargateProfileName: string
    addonName: string
    subscriptionId: string
    message: string
end

local record InvalidRequestException
    clusterName: string
    nodegroupName: string
    addonName: string
    subscriptionId: string
    message: string
end

local record ResourceInUseException
    clusterName: string
    nodegroupName: string
    addonName: string
    message: string
end

local record ResourceNotFoundException
    clusterName: string
    nodegroupName: string
    fargateProfileName: string
    addonName: string
    subscriptionId: string
    message: string
end

local record ServerException
    clusterName: string
    nodegroupName: string
    addonName: string
    subscriptionId: string
    message: string
end

local record ThrottlingException
    clusterName: string
    message: string
end

local record InvalidParameterException
    clusterName: string
    nodegroupName: string
    fargateProfileName: string
    addonName: string
    subscriptionId: string
    message: string
end

local record InvalidRequestException
    clusterName: string
    nodegroupName: string
    addonName: string
    subscriptionId: string
    message: string
end

local record ResourceInUseException
    clusterName: string
    nodegroupName: string
    addonName: string
    message: string
end

local record ResourceLimitExceededException
    clusterName: string
    nodegroupName: string
    subscriptionId: string
    message: string
end

local record ResourceNotFoundException
    clusterName: string
    nodegroupName: string
    fargateProfileName: string
    addonName: string
    subscriptionId: string
    message: string
end

local record ServerException
    clusterName: string
    nodegroupName: string
    addonName: string
    subscriptionId: string
    message: string
end

local record ClientException
    clusterName: string
    nodegroupName: string
    addonName: string
    subscriptionId: string
    message: string
end

local record InvalidParameterException
    clusterName: string
    nodegroupName: string
    fargateProfileName: string
    addonName: string
    subscriptionId: string
    message: string
end

local record InvalidRequestException
    clusterName: string
    nodegroupName: string
    addonName: string
    subscriptionId: string
    message: string
end

local record ResourceInUseException
    clusterName: string
    nodegroupName: string
    addonName: string
    message: string
end

local record ResourceNotFoundException
    clusterName: string
    nodegroupName: string
    fargateProfileName: string
    addonName: string
    subscriptionId: string
    message: string
end

local record ServerException
    clusterName: string
    nodegroupName: string
    addonName: string
    subscriptionId: string
    message: string
end

local record AccessDeniedException
    message: string
end

local record InvalidParameterException
    clusterName: string
    nodegroupName: string
    fargateProfileName: string
    addonName: string
    subscriptionId: string
    message: string
end

local record InvalidRequestException
    clusterName: string
    nodegroupName: string
    addonName: string
    subscriptionId: string
    message: string
end

local record ResourceInUseException
    clusterName: string
    nodegroupName: string
    addonName: string
    message: string
end

local record ResourceLimitExceededException
    clusterName: string
    nodegroupName: string
    subscriptionId: string
    message: string
end

local record ServerException
    clusterName: string
    nodegroupName: string
    addonName: string
    subscriptionId: string
    message: string
end

local record ThrottlingException
    clusterName: string
    message: string
end

local record ClientException
    clusterName: string
    nodegroupName: string
    addonName: string
    subscriptionId: string
    message: string
end

local record InvalidParameterException
    clusterName: string
    nodegroupName: string
    fargateProfileName: string
    addonName: string
    subscriptionId: string
    message: string
end

local record ResourceInUseException
    clusterName: string
    nodegroupName: string
    addonName: string
    message: string
end

local record ResourceLimitExceededException
    clusterName: string
    nodegroupName: string
    subscriptionId: string
    message: string
end

local record ServerException
    clusterName: string
    nodegroupName: string
    addonName: string
    subscriptionId: string
    message: string
end

local record ServiceUnavailableException
    message: string
end

local record UnsupportedAvailabilityZoneException
    message: string
    clusterName: string
    nodegroupName: string
    validZones: {string}
end

local record ClientException
    clusterName: string
    nodegroupName: string
    addonName: string
    subscriptionId: string
    message: string
end

local record InvalidParameterException
    clusterName: string
    nodegroupName: string
    fargateProfileName: string
    addonName: string
    subscriptionId: string
    message: string
end

local record ResourceLimitExceededException
    clusterName: string
    nodegroupName: string
    subscriptionId: string
    message: string
end

local record ServerException
    clusterName: string
    nodegroupName: string
    addonName: string
    subscriptionId: string
    message: string
end

local record ServiceUnavailableException
    message: string
end

local record ClientException
    clusterName: string
    nodegroupName: string
    addonName: string
    subscriptionId: string
    message: string
end

local record InvalidParameterException
    clusterName: string
    nodegroupName: string
    fargateProfileName: string
    addonName: string
    subscriptionId: string
    message: string
end

local record InvalidRequestException
    clusterName: string
    nodegroupName: string
    addonName: string
    subscriptionId: string
    message: string
end

local record ResourceLimitExceededException
    clusterName: string
    nodegroupName: string
    subscriptionId: string
    message: string
end

local record ServerException
    clusterName: string
    nodegroupName: string
    addonName: string
    subscriptionId: string
    message: string
end

local record UnsupportedAvailabilityZoneException
    message: string
    clusterName: string
    nodegroupName: string
    validZones: {string}
end

local record ClientException
    clusterName: string
    nodegroupName: string
    addonName: string
    subscriptionId: string
    message: string
end

local record InvalidParameterException
    clusterName: string
    nodegroupName: string
    fargateProfileName: string
    addonName: string
    subscriptionId: string
    message: string
end

local record InvalidRequestException
    clusterName: string
    nodegroupName: string
    addonName: string
    subscriptionId: string
    message: string
end

local record ResourceInUseException
    clusterName: string
    nodegroupName: string
    addonName: string
    message: string
end

local record ResourceLimitExceededException
    clusterName: string
    nodegroupName: string
    subscriptionId: string
    message: string
end

local record ServerException
    clusterName: string
    nodegroupName: string
    addonName: string
    subscriptionId: string
    message: string
end

local record ServiceUnavailableException
    message: string
end

local record InvalidParameterException
    clusterName: string
    nodegroupName: string
    fargateProfileName: string
    addonName: string
    subscriptionId: string
    message: string
end

local record InvalidRequestException
    clusterName: string
    nodegroupName: string
    addonName: string
    subscriptionId: string
    message: string
end

local record ResourceInUseException
    clusterName: string
    nodegroupName: string
    addonName: string
    message: string
end

local record ResourceLimitExceededException
    clusterName: string
    nodegroupName: string
    subscriptionId: string
    message: string
end

local record ResourceNotFoundException
    clusterName: string
    nodegroupName: string
    fargateProfileName: string
    addonName: string
    subscriptionId: string
    message: string
end

local record ServerException
    clusterName: string
    nodegroupName: string
    addonName: string
    subscriptionId: string
    message: string
end

local record InvalidRequestException
    clusterName: string
    nodegroupName: string
    addonName: string
    subscriptionId: string
    message: string
end

local record ResourceNotFoundException
    clusterName: string
    nodegroupName: string
    fargateProfileName: string
    addonName: string
    subscriptionId: string
    message: string
end

local record ServerException
    clusterName: string
    nodegroupName: string
    addonName: string
    subscriptionId: string
    message: string
end

local record ClientException
    clusterName: string
    nodegroupName: string
    addonName: string
    subscriptionId: string
    message: string
end

local record InvalidParameterException
    clusterName: string
    nodegroupName: string
    fargateProfileName: string
    addonName: string
    subscriptionId: string
    message: string
end

local record InvalidRequestException
    clusterName: string
    nodegroupName: string
    addonName: string
    subscriptionId: string
    message: string
end

local record ResourceNotFoundException
    clusterName: string
    nodegroupName: string
    fargateProfileName: string
    addonName: string
    subscriptionId: string
    message: string
end

local record ServerException
    clusterName: string
    nodegroupName: string
    addonName: string
    subscriptionId: string
    message: string
end

local record AccessDeniedException
    message: string
end

local record InvalidParameterException
    clusterName: string
    nodegroupName: string
    fargateProfileName: string
    addonName: string
    subscriptionId: string
    message: string
end

local record ResourceInUseException
    clusterName: string
    nodegroupName: string
    addonName: string
    message: string
end

local record ResourceNotFoundException
    clusterName: string
    nodegroupName: string
    fargateProfileName: string
    addonName: string
    subscriptionId: string
    message: string
end

local record ServerException
    clusterName: string
    nodegroupName: string
    addonName: string
    subscriptionId: string
    message: string
end

local record ClientException
    clusterName: string
    nodegroupName: string
    addonName: string
    subscriptionId: string
    message: string
end

local record InvalidRequestException
    clusterName: string
    nodegroupName: string
    addonName: string
    subscriptionId: string
    message: string
end

local record ResourceInUseException
    clusterName: string
    nodegroupName: string
    addonName: string
    message: string
end

local record ResourceNotFoundException
    clusterName: string
    nodegroupName: string
    fargateProfileName: string
    addonName: string
    subscriptionId: string
    message: string
end

local record ServerException
    clusterName: string
    nodegroupName: string
    addonName: string
    subscriptionId: string
    message: string
end

local record ServiceUnavailableException
    message: string
end

local record ClientException
    clusterName: string
    nodegroupName: string
    addonName: string
    subscriptionId: string
    message: string
end

local record InvalidRequestException
    clusterName: string
    nodegroupName: string
    addonName: string
    subscriptionId: string
    message: string
end

local record ResourceNotFoundException
    clusterName: string
    nodegroupName: string
    fargateProfileName: string
    addonName: string
    subscriptionId: string
    message: string
end

local record ServerException
    clusterName: string
    nodegroupName: string
    addonName: string
    subscriptionId: string
    message: string
end

local record ClientException
    clusterName: string
    nodegroupName: string
    addonName: string
    subscriptionId: string
    message: string
end

local record InvalidParameterException
    clusterName: string
    nodegroupName: string
    fargateProfileName: string
    addonName: string
    subscriptionId: string
    message: string
end

local record ResourceNotFoundException
    clusterName: string
    nodegroupName: string
    fargateProfileName: string
    addonName: string
    subscriptionId: string
    message: string
end

local record ServerException
    clusterName: string
    nodegroupName: string
    addonName: string
    subscriptionId: string
    message: string
end

local record ClientException
    clusterName: string
    nodegroupName: string
    addonName: string
    subscriptionId: string
    message: string
end

local record InvalidParameterException
    clusterName: string
    nodegroupName: string
    fargateProfileName: string
    addonName: string
    subscriptionId: string
    message: string
end

local record ResourceInUseException
    clusterName: string
    nodegroupName: string
    addonName: string
    message: string
end

local record ResourceNotFoundException
    clusterName: string
    nodegroupName: string
    fargateProfileName: string
    addonName: string
    subscriptionId: string
    message: string
end

local record ServerException
    clusterName: string
    nodegroupName: string
    addonName: string
    subscriptionId: string
    message: string
end

local record ServiceUnavailableException
    message: string
end

local record InvalidParameterException
    clusterName: string
    nodegroupName: string
    fargateProfileName: string
    addonName: string
    subscriptionId: string
    message: string
end

local record InvalidRequestException
    clusterName: string
    nodegroupName: string
    addonName: string
    subscriptionId: string
    message: string
end

local record ResourceNotFoundException
    clusterName: string
    nodegroupName: string
    fargateProfileName: string
    addonName: string
    subscriptionId: string
    message: string
end

local record ServerException
    clusterName: string
    nodegroupName: string
    addonName: string
    subscriptionId: string
    message: string
end

local record AccessDeniedException
    message: string
end

local record ClientException
    clusterName: string
    nodegroupName: string
    addonName: string
    subscriptionId: string
    message: string
end

local record ResourceInUseException
    clusterName: string
    nodegroupName: string
    addonName: string
    message: string
end

local record ResourceNotFoundException
    clusterName: string
    nodegroupName: string
    fargateProfileName: string
    addonName: string
    subscriptionId: string
    message: string
end

local record ServerException
    clusterName: string
    nodegroupName: string
    addonName: string
    subscriptionId: string
    message: string
end

local record ServiceUnavailableException
    message: string
end

local record InvalidRequestException
    clusterName: string
    nodegroupName: string
    addonName: string
    subscriptionId: string
    message: string
end

local record ResourceNotFoundException
    clusterName: string
    nodegroupName: string
    fargateProfileName: string
    addonName: string
    subscriptionId: string
    message: string
end

local record ServerException
    clusterName: string
    nodegroupName: string
    addonName: string
    subscriptionId: string
    message: string
end

local record ClientException
    clusterName: string
    nodegroupName: string
    addonName: string
    subscriptionId: string
    message: string
end

local record InvalidParameterException
    clusterName: string
    nodegroupName: string
    fargateProfileName: string
    addonName: string
    subscriptionId: string
    message: string
end

local record InvalidRequestException
    clusterName: string
    nodegroupName: string
    addonName: string
    subscriptionId: string
    message: string
end

local record ResourceNotFoundException
    clusterName: string
    nodegroupName: string
    fargateProfileName: string
    addonName: string
    subscriptionId: string
    message: string
end

local record ServerException
    clusterName: string
    nodegroupName: string
    addonName: string
    subscriptionId: string
    message: string
end

local record InvalidParameterException
    clusterName: string
    nodegroupName: string
    fargateProfileName: string
    addonName: string
    subscriptionId: string
    message: string
end

local record ResourceNotFoundException
    clusterName: string
    nodegroupName: string
    fargateProfileName: string
    addonName: string
    subscriptionId: string
    message: string
end

local record ServerException
    clusterName: string
    nodegroupName: string
    addonName: string
    subscriptionId: string
    message: string
end

local record InvalidParameterException
    clusterName: string
    nodegroupName: string
    fargateProfileName: string
    addonName: string
    subscriptionId: string
    message: string
end

local record ResourceNotFoundException
    clusterName: string
    nodegroupName: string
    fargateProfileName: string
    addonName: string
    subscriptionId: string
    message: string
end

local record ServerException
    clusterName: string
    nodegroupName: string
    addonName: string
    subscriptionId: string
    message: string
end

local record AccessDeniedException
    message: string
end

local record InvalidParameterException
    clusterName: string
    nodegroupName: string
    fargateProfileName: string
    addonName: string
    subscriptionId: string
    message: string
end

local record ResourceNotFoundException
    clusterName: string
    nodegroupName: string
    fargateProfileName: string
    addonName: string
    subscriptionId: string
    message: string
end

local record ServerException
    clusterName: string
    nodegroupName: string
    addonName: string
    subscriptionId: string
    message: string
end

local record ClientException
    clusterName: string
    nodegroupName: string
    addonName: string
    subscriptionId: string
    message: string
end

local record ResourceNotFoundException
    clusterName: string
    nodegroupName: string
    fargateProfileName: string
    addonName: string
    subscriptionId: string
    message: string
end

local record ServerException
    clusterName: string
    nodegroupName: string
    addonName: string
    subscriptionId: string
    message: string
end

local record ServiceUnavailableException
    message: string
end

local record InvalidParameterException
    clusterName: string
    nodegroupName: string
    fargateProfileName: string
    addonName: string
    subscriptionId: string
    message: string
end

local record InvalidRequestException
    clusterName: string
    nodegroupName: string
    addonName: string
    subscriptionId: string
    message: string
end

local record ServerException
    clusterName: string
    nodegroupName: string
    addonName: string
    subscriptionId: string
    message: string
end

local record ClientException
    clusterName: string
    nodegroupName: string
    addonName: string
    subscriptionId: string
    message: string
end

local record ResourceNotFoundException
    clusterName: string
    nodegroupName: string
    fargateProfileName: string
    addonName: string
    subscriptionId: string
    message: string
end

local record ServerException
    clusterName: string
    nodegroupName: string
    addonName: string
    subscriptionId: string
    message: string
end

local record ServiceUnavailableException
    message: string
end

local record ClientException
    clusterName: string
    nodegroupName: string
    addonName: string
    subscriptionId: string
    message: string
end

local record InvalidParameterException
    clusterName: string
    nodegroupName: string
    fargateProfileName: string
    addonName: string
    subscriptionId: string
    message: string
end

local record ResourceNotFoundException
    clusterName: string
    nodegroupName: string
    fargateProfileName: string
    addonName: string
    subscriptionId: string
    message: string
end

local record ServerException
    clusterName: string
    nodegroupName: string
    addonName: string
    subscriptionId: string
    message: string
end

local record ClientException
    clusterName: string
    nodegroupName: string
    addonName: string
    subscriptionId: string
    message: string
end

local record InvalidParameterException
    clusterName: string
    nodegroupName: string
    fargateProfileName: string
    addonName: string
    subscriptionId: string
    message: string
end

local record ResourceNotFoundException
    clusterName: string
    nodegroupName: string
    fargateProfileName: string
    addonName: string
    subscriptionId: string
    message: string
end

local record ServerException
    clusterName: string
    nodegroupName: string
    addonName: string
    subscriptionId: string
    message: string
end

local record ServiceUnavailableException
    message: string
end

local record InvalidParameterException
    clusterName: string
    nodegroupName: string
    fargateProfileName: string
    addonName: string
    subscriptionId: string
    message: string
end

local record InvalidRequestException
    clusterName: string
    nodegroupName: string
    addonName: string
    subscriptionId: string
    message: string
end

local record ResourceNotFoundException
    clusterName: string
    nodegroupName: string
    fargateProfileName: string
    addonName: string
    subscriptionId: string
    message: string
end

local record ServerException
    clusterName: string
    nodegroupName: string
    addonName: string
    subscriptionId: string
    message: string
end

local record InvalidParameterException
    clusterName: string
    nodegroupName: string
    fargateProfileName: string
    addonName: string
    subscriptionId: string
    message: string
end

local record InvalidRequestException
    clusterName: string
    nodegroupName: string
    addonName: string
    subscriptionId: string
    message: string
end

local record ResourceNotFoundException
    clusterName: string
    nodegroupName: string
    fargateProfileName: string
    addonName: string
    subscriptionId: string
    message: string
end

local record ServerException
    clusterName: string
    nodegroupName: string
    addonName: string
    subscriptionId: string
    message: string
end

local record ClientException
    clusterName: string
    nodegroupName: string
    addonName: string
    subscriptionId: string
    message: string
end

local record InvalidParameterException
    clusterName: string
    nodegroupName: string
    fargateProfileName: string
    addonName: string
    subscriptionId: string
    message: string
end

local record ResourceNotFoundException
    clusterName: string
    nodegroupName: string
    fargateProfileName: string
    addonName: string
    subscriptionId: string
    message: string
end

local record ServerException
    clusterName: string
    nodegroupName: string
    addonName: string
    subscriptionId: string
    message: string
end

local record ServiceUnavailableException
    message: string
end

local record InvalidParameterException
    clusterName: string
    nodegroupName: string
    fargateProfileName: string
    addonName: string
    subscriptionId: string
    message: string
end

local record InvalidRequestException
    clusterName: string
    nodegroupName: string
    addonName: string
    subscriptionId: string
    message: string
end

local record ResourceNotFoundException
    clusterName: string
    nodegroupName: string
    fargateProfileName: string
    addonName: string
    subscriptionId: string
    message: string
end

local record ServerException
    clusterName: string
    nodegroupName: string
    addonName: string
    subscriptionId: string
    message: string
end

local record ClientException
    clusterName: string
    nodegroupName: string
    addonName: string
    subscriptionId: string
    message: string
end

local record InvalidParameterException
    clusterName: string
    nodegroupName: string
    fargateProfileName: string
    addonName: string
    subscriptionId: string
    message: string
end

local record ResourceNotFoundException
    clusterName: string
    nodegroupName: string
    fargateProfileName: string
    addonName: string
    subscriptionId: string
    message: string
end

local record ServerException
    clusterName: string
    nodegroupName: string
    addonName: string
    subscriptionId: string
    message: string
end

local record InvalidRequestException
    clusterName: string
    nodegroupName: string
    addonName: string
    subscriptionId: string
    message: string
end

local record ResourceNotFoundException
    clusterName: string
    nodegroupName: string
    fargateProfileName: string
    addonName: string
    subscriptionId: string
    message: string
end

local record ServerException
    clusterName: string
    nodegroupName: string
    addonName: string
    subscriptionId: string
    message: string
end

local record ClientException
    clusterName: string
    nodegroupName: string
    addonName: string
    subscriptionId: string
    message: string
end

local record InvalidParameterException
    clusterName: string
    nodegroupName: string
    fargateProfileName: string
    addonName: string
    subscriptionId: string
    message: string
end

local record InvalidRequestException
    clusterName: string
    nodegroupName: string
    addonName: string
    subscriptionId: string
    message: string
end

local record ResourceInUseException
    clusterName: string
    nodegroupName: string
    addonName: string
    message: string
end

local record ResourceNotFoundException
    clusterName: string
    nodegroupName: string
    fargateProfileName: string
    addonName: string
    subscriptionId: string
    message: string
end

local record ServerException
    clusterName: string
    nodegroupName: string
    addonName: string
    subscriptionId: string
    message: string
end

local record ThrottlingException
    clusterName: string
    message: string
end

local record InvalidParameterException
    clusterName: string
    nodegroupName: string
    fargateProfileName: string
    addonName: string
    subscriptionId: string
    message: string
end

local record InvalidRequestException
    clusterName: string
    nodegroupName: string
    addonName: string
    subscriptionId: string
    message: string
end

local record ResourceNotFoundException
    clusterName: string
    nodegroupName: string
    fargateProfileName: string
    addonName: string
    subscriptionId: string
    message: string
end

local record ServerException
    clusterName: string
    nodegroupName: string
    addonName: string
    subscriptionId: string
    message: string
end

local record ServerException
    clusterName: string
    nodegroupName: string
    addonName: string
    subscriptionId: string
    message: string
end

local record ClientException
    clusterName: string
    nodegroupName: string
    addonName: string
    subscriptionId: string
    message: string
end

local record InvalidParameterException
    clusterName: string
    nodegroupName: string
    fargateProfileName: string
    addonName: string
    subscriptionId: string
    message: string
end

local record InvalidRequestException
    clusterName: string
    nodegroupName: string
    addonName: string
    subscriptionId: string
    message: string
end

local record ResourceNotFoundException
    clusterName: string
    nodegroupName: string
    fargateProfileName: string
    addonName: string
    subscriptionId: string
    message: string
end

local record ServerException
    clusterName: string
    nodegroupName: string
    addonName: string
    subscriptionId: string
    message: string
end

local record InvalidRequestException
    clusterName: string
    nodegroupName: string
    addonName: string
    subscriptionId: string
    message: string
end

local record ResourceNotFoundException
    clusterName: string
    nodegroupName: string
    fargateProfileName: string
    addonName: string
    subscriptionId: string
    message: string
end

local record ServerException
    clusterName: string
    nodegroupName: string
    addonName: string
    subscriptionId: string
    message: string
end

local record InvalidParameterException
    clusterName: string
    nodegroupName: string
    fargateProfileName: string
    addonName: string
    subscriptionId: string
    message: string
end

local record ServerException
    clusterName: string
    nodegroupName: string
    addonName: string
    subscriptionId: string
    message: string
end

local record ClientException
    clusterName: string
    nodegroupName: string
    addonName: string
    subscriptionId: string
    message: string
end

local record InvalidParameterException
    clusterName: string
    nodegroupName: string
    fargateProfileName: string
    addonName: string
    subscriptionId: string
    message: string
end

local record ServerException
    clusterName: string
    nodegroupName: string
    addonName: string
    subscriptionId: string
    message: string
end

local record ServiceUnavailableException
    message: string
end

local record ClientException
    clusterName: string
    nodegroupName: string
    addonName: string
    subscriptionId: string
    message: string
end

local record InvalidParameterException
    clusterName: string
    nodegroupName: string
    fargateProfileName: string
    addonName: string
    subscriptionId: string
    message: string
end

local record ServerException
    clusterName: string
    nodegroupName: string
    addonName: string
    subscriptionId: string
    message: string
end

local record ServiceUnavailableException
    message: string
end

local record ClientException
    clusterName: string
    nodegroupName: string
    addonName: string
    subscriptionId: string
    message: string
end

local record InvalidParameterException
    clusterName: string
    nodegroupName: string
    fargateProfileName: string
    addonName: string
    subscriptionId: string
    message: string
end

local record ResourceNotFoundException
    clusterName: string
    nodegroupName: string
    fargateProfileName: string
    addonName: string
    subscriptionId: string
    message: string
end

local record ServerException
    clusterName: string
    nodegroupName: string
    addonName: string
    subscriptionId: string
    message: string
end

local record ClientException
    clusterName: string
    nodegroupName: string
    addonName: string
    subscriptionId: string
    message: string
end

local record InvalidParameterException
    clusterName: string
    nodegroupName: string
    fargateProfileName: string
    addonName: string
    subscriptionId: string
    message: string
end

local record ResourceNotFoundException
    clusterName: string
    nodegroupName: string
    fargateProfileName: string
    addonName: string
    subscriptionId: string
    message: string
end

local record ServerException
    clusterName: string
    nodegroupName: string
    addonName: string
    subscriptionId: string
    message: string
end

local record ServiceUnavailableException
    message: string
end

local record InvalidParameterException
    clusterName: string
    nodegroupName: string
    fargateProfileName: string
    addonName: string
    subscriptionId: string
    message: string
end

local record InvalidRequestException
    clusterName: string
    nodegroupName: string
    addonName: string
    subscriptionId: string
    message: string
end

local record ResourceNotFoundException
    clusterName: string
    nodegroupName: string
    fargateProfileName: string
    addonName: string
    subscriptionId: string
    message: string
end

local record ServerException
    clusterName: string
    nodegroupName: string
    addonName: string
    subscriptionId: string
    message: string
end

local record ClientException
    clusterName: string
    nodegroupName: string
    addonName: string
    subscriptionId: string
    message: string
end

local record InvalidParameterException
    clusterName: string
    nodegroupName: string
    fargateProfileName: string
    addonName: string
    subscriptionId: string
    message: string
end

local record ResourceNotFoundException
    clusterName: string
    nodegroupName: string
    fargateProfileName: string
    addonName: string
    subscriptionId: string
    message: string
end

local record ServerException
    clusterName: string
    nodegroupName: string
    addonName: string
    subscriptionId: string
    message: string
end

local record ServiceUnavailableException
    message: string
end

local record InvalidParameterException
    clusterName: string
    nodegroupName: string
    fargateProfileName: string
    addonName: string
    subscriptionId: string
    message: string
end

local record InvalidRequestException
    clusterName: string
    nodegroupName: string
    addonName: string
    subscriptionId: string
    message: string
end

local record ResourceNotFoundException
    clusterName: string
    nodegroupName: string
    fargateProfileName: string
    addonName: string
    subscriptionId: string
    message: string
end

local record ServerException
    clusterName: string
    nodegroupName: string
    addonName: string
    subscriptionId: string
    message: string
end

local record BadRequestException
    message: string
end

local record NotFoundException
    message: string
end

local record ClientException
    clusterName: string
    nodegroupName: string
    addonName: string
    subscriptionId: string
    message: string
end

local record InvalidParameterException
    clusterName: string
    nodegroupName: string
    fargateProfileName: string
    addonName: string
    subscriptionId: string
    message: string
end

local record ResourceNotFoundException
    clusterName: string
    nodegroupName: string
    fargateProfileName: string
    addonName: string
    subscriptionId: string
    message: string
end

local record ServerException
    clusterName: string
    nodegroupName: string
    addonName: string
    subscriptionId: string
    message: string
end

local record AccessDeniedException
    message: string
end

local record ClientException
    clusterName: string
    nodegroupName: string
    addonName: string
    subscriptionId: string
    message: string
end

local record InvalidParameterException
    clusterName: string
    nodegroupName: string
    fargateProfileName: string
    addonName: string
    subscriptionId: string
    message: string
end

local record ResourceInUseException
    clusterName: string
    nodegroupName: string
    addonName: string
    message: string
end

local record ResourceLimitExceededException
    clusterName: string
    nodegroupName: string
    subscriptionId: string
    message: string
end

local record ResourcePropagationDelayException
    message: string
end

local record ServerException
    clusterName: string
    nodegroupName: string
    addonName: string
    subscriptionId: string
    message: string
end

local record ServiceUnavailableException
    message: string
end

local record InvalidParameterException
    clusterName: string
    nodegroupName: string
    fargateProfileName: string
    addonName: string
    subscriptionId: string
    message: string
end

local record InvalidRequestException
    clusterName: string
    nodegroupName: string
    addonName: string
    subscriptionId: string
    message: string
end

local record ResourceNotFoundException
    clusterName: string
    nodegroupName: string
    fargateProfileName: string
    addonName: string
    subscriptionId: string
    message: string
end

local record ServerException
    clusterName: string
    nodegroupName: string
    addonName: string
    subscriptionId: string
    message: string
end

local record BadRequestException
    message: string
end

local record NotFoundException
    message: string
end

local record BadRequestException
    message: string
end

local record NotFoundException
    message: string
end

local record InvalidParameterException
    clusterName: string
    nodegroupName: string
    fargateProfileName: string
    addonName: string
    subscriptionId: string
    message: string
end

local record InvalidRequestException
    clusterName: string
    nodegroupName: string
    addonName: string
    subscriptionId: string
    message: string
end

local record ResourceNotFoundException
    clusterName: string
    nodegroupName: string
    fargateProfileName: string
    addonName: string
    subscriptionId: string
    message: string
end

local record ServerException
    clusterName: string
    nodegroupName: string
    addonName: string
    subscriptionId: string
    message: string
end

local record ClientException
    clusterName: string
    nodegroupName: string
    addonName: string
    subscriptionId: string
    message: string
end

local record InvalidParameterException
    clusterName: string
    nodegroupName: string
    fargateProfileName: string
    addonName: string
    subscriptionId: string
    message: string
end

local record InvalidRequestException
    clusterName: string
    nodegroupName: string
    addonName: string
    subscriptionId: string
    message: string
end

local record ResourceInUseException
    clusterName: string
    nodegroupName: string
    addonName: string
    message: string
end

local record ResourceNotFoundException
    clusterName: string
    nodegroupName: string
    fargateProfileName: string
    addonName: string
    subscriptionId: string
    message: string
end

local record ServerException
    clusterName: string
    nodegroupName: string
    addonName: string
    subscriptionId: string
    message: string
end

local record AccessDeniedException
    message: string
end

local record InvalidParameterException
    clusterName: string
    nodegroupName: string
    fargateProfileName: string
    addonName: string
    subscriptionId: string
    message: string
end

local record ResourceInUseException
    clusterName: string
    nodegroupName: string
    addonName: string
    message: string
end

local record ResourceNotFoundException
    clusterName: string
    nodegroupName: string
    fargateProfileName: string
    addonName: string
    subscriptionId: string
    message: string
end

local record ServerException
    clusterName: string
    nodegroupName: string
    addonName: string
    subscriptionId: string
    message: string
end

local record ClientException
    clusterName: string
    nodegroupName: string
    addonName: string
    subscriptionId: string
    message: string
end

local record InvalidParameterException
    clusterName: string
    nodegroupName: string
    fargateProfileName: string
    addonName: string
    subscriptionId: string
    message: string
end

local record InvalidRequestException
    clusterName: string
    nodegroupName: string
    addonName: string
    subscriptionId: string
    message: string
end

local record ResourceInUseException
    clusterName: string
    nodegroupName: string
    addonName: string
    message: string
end

local record ResourceNotFoundException
    clusterName: string
    nodegroupName: string
    fargateProfileName: string
    addonName: string
    subscriptionId: string
    message: string
end

local record ServerException
    clusterName: string
    nodegroupName: string
    addonName: string
    subscriptionId: string
    message: string
end

local record ThrottlingException
    clusterName: string
    message: string
end

local record ClientException
    clusterName: string
    nodegroupName: string
    addonName: string
    subscriptionId: string
    message: string
end

local record InvalidParameterException
    clusterName: string
    nodegroupName: string
    fargateProfileName: string
    addonName: string
    subscriptionId: string
    message: string
end

local record InvalidRequestException
    clusterName: string
    nodegroupName: string
    addonName: string
    subscriptionId: string
    message: string
end

local record InvalidStateException
    clusterName: string
    message: string
end

local record ResourceInUseException
    clusterName: string
    nodegroupName: string
    addonName: string
    message: string
end

local record ResourceNotFoundException
    clusterName: string
    nodegroupName: string
    fargateProfileName: string
    addonName: string
    subscriptionId: string
    message: string
end

local record ServerException
    clusterName: string
    nodegroupName: string
    addonName: string
    subscriptionId: string
    message: string
end

local record ThrottlingException
    clusterName: string
    message: string
end

local record ClientException
    clusterName: string
    nodegroupName: string
    addonName: string
    subscriptionId: string
    message: string
end

local record InvalidParameterException
    clusterName: string
    nodegroupName: string
    fargateProfileName: string
    addonName: string
    subscriptionId: string
    message: string
end

local record InvalidRequestException
    clusterName: string
    nodegroupName: string
    addonName: string
    subscriptionId: string
    message: string
end

local record ResourceNotFoundException
    clusterName: string
    nodegroupName: string
    fargateProfileName: string
    addonName: string
    subscriptionId: string
    message: string
end

local record ServerException
    clusterName: string
    nodegroupName: string
    addonName: string
    subscriptionId: string
    message: string
end

local record ClientException
    clusterName: string
    nodegroupName: string
    addonName: string
    subscriptionId: string
    message: string
end

local record InvalidParameterException
    clusterName: string
    nodegroupName: string
    fargateProfileName: string
    addonName: string
    subscriptionId: string
    message: string
end

local record InvalidRequestException
    clusterName: string
    nodegroupName: string
    addonName: string
    subscriptionId: string
    message: string
end

local record ResourceInUseException
    clusterName: string
    nodegroupName: string
    addonName: string
    message: string
end

local record ResourceNotFoundException
    clusterName: string
    nodegroupName: string
    fargateProfileName: string
    addonName: string
    subscriptionId: string
    message: string
end

local record ServerException
    clusterName: string
    nodegroupName: string
    addonName: string
    subscriptionId: string
    message: string
end

local record ClientException
    clusterName: string
    nodegroupName: string
    addonName: string
    subscriptionId: string
    message: string
end

local record InvalidParameterException
    clusterName: string
    nodegroupName: string
    fargateProfileName: string
    addonName: string
    subscriptionId: string
    message: string
end

local record InvalidRequestException
    clusterName: string
    nodegroupName: string
    addonName: string
    subscriptionId: string
    message: string
end

local record ResourceInUseException
    clusterName: string
    nodegroupName: string
    addonName: string
    message: string
end

local record ResourceNotFoundException
    clusterName: string
    nodegroupName: string
    fargateProfileName: string
    addonName: string
    subscriptionId: string
    message: string
end

local record ServerException
    clusterName: string
    nodegroupName: string
    addonName: string
    subscriptionId: string
    message: string
end

local record InvalidParameterException
    clusterName: string
    nodegroupName: string
    fargateProfileName: string
    addonName: string
    subscriptionId: string
    message: string
end

local record InvalidRequestException
    clusterName: string
    nodegroupName: string
    addonName: string
    subscriptionId: string
    message: string
end

local record ResourceNotFoundException
    clusterName: string
    nodegroupName: string
    fargateProfileName: string
    addonName: string
    subscriptionId: string
    message: string
end

local record ServerException
    clusterName: string
    nodegroupName: string
    addonName: string
    subscriptionId: string
    message: string
end

local type CapabilityDeletePropagationPolicy = "RETAIN"

local type EksAnywhereSubscriptionLicenseType = "Cluster"

local type VersionStatus = "UNSUPPORTED" | "STANDARD_SUPPORT" | "EXTENDED_SUPPORT"

local type CapacityTypes = "ON_DEMAND" | "SPOT" | "CAPACITY_BLOCK"

local type AMITypes = "AL2_x86_64" | "AL2_x86_64_GPU" | "AL2_ARM_64" | "CUSTOM" | "BOTTLEROCKET_ARM_64" | "BOTTLEROCKET_x86_64" | "BOTTLEROCKET_ARM_64_FIPS" | "BOTTLEROCKET_x86_64_FIPS" | "BOTTLEROCKET_ARM_64_NVIDIA" | "BOTTLEROCKET_x86_64_NVIDIA" | "BOTTLEROCKET_ARM_64_NVIDIA_FIPS" | "BOTTLEROCKET_x86_64_NVIDIA_FIPS" | "WINDOWS_CORE_2019_x86_64" | "WINDOWS_FULL_2019_x86_64" | "WINDOWS_CORE_2022_x86_64" | "WINDOWS_FULL_2022_x86_64" | "WINDOWS_CORE_2025_x86_64" | "WINDOWS_FULL_2025_x86_64" | "AL2023_x86_64_STANDARD" | "AL2023_ARM_64_STANDARD" | "AL2023_x86_64_NEURON" | "AL2023_x86_64_NVIDIA" | "AL2023_ARM_64_NVIDIA"

local type ResolveConflicts = "OVERWRITE" | "NONE" | "PRESERVE"

local type InsightsRefreshStatus = "IN_PROGRESS" | "FAILED" | "COMPLETED"

local type ClusterVersionStatus = "unsupported" | "standard-support" | "extended-support"

local type CapabilityType = "ACK" | "KRO" | "ARGOCD"

local record M
    AssociateAccessPolicyInput: AssociateAccessPolicyInput
    AssociateAccessPolicyOutput: AssociateAccessPolicyOutput
    AssociateEncryptionConfigInput: AssociateEncryptionConfigInput
    AssociateEncryptionConfigOutput: AssociateEncryptionConfigOutput
    AssociateIdentityProviderConfigInput: AssociateIdentityProviderConfigInput
    AssociateIdentityProviderConfigOutput: AssociateIdentityProviderConfigOutput
    CreateAccessEntryInput: CreateAccessEntryInput
    CreateAccessEntryOutput: CreateAccessEntryOutput
    CreateAddonInput: CreateAddonInput
    CreateAddonOutput: CreateAddonOutput
    CreateCapabilityInput: CreateCapabilityInput
    CreateCapabilityOutput: CreateCapabilityOutput
    CreateClusterInput: CreateClusterInput
    CreateClusterOutput: CreateClusterOutput
    CreateEksAnywhereSubscriptionInput: CreateEksAnywhereSubscriptionInput
    CreateEksAnywhereSubscriptionOutput: CreateEksAnywhereSubscriptionOutput
    CreateFargateProfileInput: CreateFargateProfileInput
    CreateFargateProfileOutput: CreateFargateProfileOutput
    CreateNodegroupInput: CreateNodegroupInput
    CreateNodegroupOutput: CreateNodegroupOutput
    CreatePodIdentityAssociationInput: CreatePodIdentityAssociationInput
    CreatePodIdentityAssociationOutput: CreatePodIdentityAssociationOutput
    DeleteAccessEntryInput: DeleteAccessEntryInput
    DeleteAccessEntryOutput: DeleteAccessEntryOutput
    DeleteAddonInput: DeleteAddonInput
    DeleteAddonOutput: DeleteAddonOutput
    DeleteCapabilityInput: DeleteCapabilityInput
    DeleteCapabilityOutput: DeleteCapabilityOutput
    DeleteClusterInput: DeleteClusterInput
    DeleteClusterOutput: DeleteClusterOutput
    DeleteEksAnywhereSubscriptionInput: DeleteEksAnywhereSubscriptionInput
    DeleteEksAnywhereSubscriptionOutput: DeleteEksAnywhereSubscriptionOutput
    DeleteFargateProfileInput: DeleteFargateProfileInput
    DeleteFargateProfileOutput: DeleteFargateProfileOutput
    DeleteNodegroupInput: DeleteNodegroupInput
    DeleteNodegroupOutput: DeleteNodegroupOutput
    DeletePodIdentityAssociationInput: DeletePodIdentityAssociationInput
    DeletePodIdentityAssociationOutput: DeletePodIdentityAssociationOutput
    DeregisterClusterInput: DeregisterClusterInput
    DeregisterClusterOutput: DeregisterClusterOutput
    DescribeAccessEntryInput: DescribeAccessEntryInput
    DescribeAccessEntryOutput: DescribeAccessEntryOutput
    DescribeAddonInput: DescribeAddonInput
    DescribeAddonOutput: DescribeAddonOutput
    DescribeAddonConfigurationInput: DescribeAddonConfigurationInput
    DescribeAddonConfigurationOutput: DescribeAddonConfigurationOutput
    DescribeAddonVersionsInput: DescribeAddonVersionsInput
    DescribeAddonVersionsOutput: DescribeAddonVersionsOutput
    DescribeCapabilityInput: DescribeCapabilityInput
    DescribeCapabilityOutput: DescribeCapabilityOutput
    DescribeClusterInput: DescribeClusterInput
    DescribeClusterOutput: DescribeClusterOutput
    DescribeClusterVersionsInput: DescribeClusterVersionsInput
    DescribeClusterVersionsOutput: DescribeClusterVersionsOutput
    DescribeEksAnywhereSubscriptionInput: DescribeEksAnywhereSubscriptionInput
    DescribeEksAnywhereSubscriptionOutput: DescribeEksAnywhereSubscriptionOutput
    DescribeFargateProfileInput: DescribeFargateProfileInput
    DescribeFargateProfileOutput: DescribeFargateProfileOutput
    DescribeIdentityProviderConfigInput: DescribeIdentityProviderConfigInput
    DescribeIdentityProviderConfigOutput: DescribeIdentityProviderConfigOutput
    DescribeInsightInput: DescribeInsightInput
    DescribeInsightOutput: DescribeInsightOutput
    DescribeInsightsRefreshInput: DescribeInsightsRefreshInput
    DescribeInsightsRefreshOutput: DescribeInsightsRefreshOutput
    DescribeNodegroupInput: DescribeNodegroupInput
    DescribeNodegroupOutput: DescribeNodegroupOutput
    DescribePodIdentityAssociationInput: DescribePodIdentityAssociationInput
    DescribePodIdentityAssociationOutput: DescribePodIdentityAssociationOutput
    DescribeUpdateInput: DescribeUpdateInput
    DescribeUpdateOutput: DescribeUpdateOutput
    DisassociateAccessPolicyInput: DisassociateAccessPolicyInput
    DisassociateAccessPolicyOutput: DisassociateAccessPolicyOutput
    DisassociateIdentityProviderConfigInput: DisassociateIdentityProviderConfigInput
    DisassociateIdentityProviderConfigOutput: DisassociateIdentityProviderConfigOutput
    ListAccessEntriesInput: ListAccessEntriesInput
    ListAccessEntriesOutput: ListAccessEntriesOutput
    ListAccessPoliciesInput: ListAccessPoliciesInput
    ListAccessPoliciesOutput: ListAccessPoliciesOutput
    ListAddonsInput: ListAddonsInput
    ListAddonsOutput: ListAddonsOutput
    ListAssociatedAccessPoliciesInput: ListAssociatedAccessPoliciesInput
    ListAssociatedAccessPoliciesOutput: ListAssociatedAccessPoliciesOutput
    ListCapabilitiesInput: ListCapabilitiesInput
    ListCapabilitiesOutput: ListCapabilitiesOutput
    ListClustersInput: ListClustersInput
    ListClustersOutput: ListClustersOutput
    ListEksAnywhereSubscriptionsInput: ListEksAnywhereSubscriptionsInput
    ListEksAnywhereSubscriptionsOutput: ListEksAnywhereSubscriptionsOutput
    ListFargateProfilesInput: ListFargateProfilesInput
    ListFargateProfilesOutput: ListFargateProfilesOutput
    ListIdentityProviderConfigsInput: ListIdentityProviderConfigsInput
    ListIdentityProviderConfigsOutput: ListIdentityProviderConfigsOutput
    ListInsightsInput: ListInsightsInput
    ListInsightsOutput: ListInsightsOutput
    ListNodegroupsInput: ListNodegroupsInput
    ListNodegroupsOutput: ListNodegroupsOutput
    ListPodIdentityAssociationsInput: ListPodIdentityAssociationsInput
    ListPodIdentityAssociationsOutput: ListPodIdentityAssociationsOutput
    ListTagsForResourceInput: ListTagsForResourceInput
    ListTagsForResourceOutput: ListTagsForResourceOutput
    ListUpdatesInput: ListUpdatesInput
    ListUpdatesOutput: ListUpdatesOutput
    RegisterClusterInput: RegisterClusterInput
    RegisterClusterOutput: RegisterClusterOutput
    StartInsightsRefreshInput: StartInsightsRefreshInput
    StartInsightsRefreshOutput: StartInsightsRefreshOutput
    TagResourceInput: TagResourceInput
    TagResourceOutput: TagResourceOutput
    UntagResourceInput: UntagResourceInput
    UntagResourceOutput: UntagResourceOutput
    UpdateAccessEntryInput: UpdateAccessEntryInput
    UpdateAccessEntryOutput: UpdateAccessEntryOutput
    UpdateAddonInput: UpdateAddonInput
    UpdateAddonOutput: UpdateAddonOutput
    UpdateCapabilityInput: UpdateCapabilityInput
    UpdateCapabilityOutput: UpdateCapabilityOutput
    UpdateClusterConfigInput: UpdateClusterConfigInput
    UpdateClusterConfigOutput: UpdateClusterConfigOutput
    UpdateClusterVersionInput: UpdateClusterVersionInput
    UpdateClusterVersionOutput: UpdateClusterVersionOutput
    UpdateEksAnywhereSubscriptionInput: UpdateEksAnywhereSubscriptionInput
    UpdateEksAnywhereSubscriptionOutput: UpdateEksAnywhereSubscriptionOutput
    UpdateNodegroupConfigInput: UpdateNodegroupConfigInput
    UpdateNodegroupConfigOutput: UpdateNodegroupConfigOutput
    UpdateNodegroupVersionInput: UpdateNodegroupVersionInput
    UpdateNodegroupVersionOutput: UpdateNodegroupVersionOutput
    UpdatePodIdentityAssociationInput: UpdatePodIdentityAssociationInput
    UpdatePodIdentityAssociationOutput: UpdatePodIdentityAssociationOutput
end

return M
