local record AssociateEipToVlanInput
    clientToken: string
    environmentId: string
    vlanName: string
    allocationId: string
end

local record AssociateEipToVlanOutput
    vlan: Vlan
end

local record CreateEntitlementInput
    clientToken: string
    environmentId: string
    connectorId: string
    entitlementType: string
    vmIds: {string}
end

local record CreateEntitlementOutput
    entitlements: {VmEntitlement}
end

local record CreateEnvironmentInput
    clientToken: string
    environmentName: string
    kmsKeyId: string
    tags: {string : string}
    serviceAccessSecurityGroups: ServiceAccessSecurityGroups
    vpcId: string
    serviceAccessSubnetId: string
    vcfVersion: string
    termsAccepted: boolean
    licenseInfo: {LicenseInfo}
    initialVlans: InitialVlans
    hosts: {HostInfoForCreate}
    connectivityInfo: ConnectivityInfo
    vcfHostnames: VcfHostnames
    siteId: string
end

local record CreateEnvironmentOutput
    environment: Environment
end

local record CreateEnvironmentConnectorInput
    clientToken: string
    environmentId: string
    type: string
    applianceFqdn: string
    secretIdentifier: string
end

local record CreateEnvironmentConnectorOutput
    connector: Connector
end

local record CreateEnvironmentHostInput
    clientToken: string
    environmentId: string
    host: HostInfoForCreate
    esxVersion: string
end

local record CreateEnvironmentHostOutput
    environmentSummary: EnvironmentSummary
    host: Host
end

local record DeleteEntitlementInput
    clientToken: string
    environmentId: string
    connectorId: string
    entitlementType: string
    vmIds: {string}
end

local record DeleteEntitlementOutput
    entitlements: {VmEntitlement}
end

local record DeleteEnvironmentInput
    clientToken: string
    environmentId: string
end

local record DeleteEnvironmentOutput
    environment: Environment
end

local record DeleteEnvironmentConnectorInput
    clientToken: string
    environmentId: string
    connectorId: string
end

local record DeleteEnvironmentConnectorOutput
    connector: Connector
    environmentSummary: EnvironmentSummary
end

local record DeleteEnvironmentHostInput
    clientToken: string
    environmentId: string
    hostName: string
end

local record DeleteEnvironmentHostOutput
    environmentSummary: EnvironmentSummary
    host: Host
end

local record DisassociateEipFromVlanInput
    clientToken: string
    environmentId: string
    vlanName: string
    associationId: string
end

local record DisassociateEipFromVlanOutput
    vlan: Vlan
end

local record GetEnvironmentInput
    environmentId: string
end

local record GetEnvironmentOutput
    environment: Environment
end

local record GetVersionsInput
end

local record GetVersionsOutput
    vcfVersions: {VcfVersionInfo}
    instanceTypeEsxVersions: {InstanceTypeEsxVersionsInfo}
end

local record ListEnvironmentConnectorsInput
    nextToken: string
    maxResults: number
    environmentId: string
end

local record ListEnvironmentConnectorsOutput
    nextToken: string
    connectors: {Connector}
end

local record ListEnvironmentHostsInput
    nextToken: string
    maxResults: number
    environmentId: string
end

local record ListEnvironmentHostsOutput
    nextToken: string
    environmentHosts: {Host}
end

local record ListEnvironmentsInput
    nextToken: string
    maxResults: number
    state: {string}
end

local record ListEnvironmentsOutput
    nextToken: string
    environmentSummaries: {EnvironmentSummary}
end

local record ListEnvironmentVlansInput
    nextToken: string
    maxResults: number
    environmentId: string
end

local record ListEnvironmentVlansOutput
    nextToken: string
    environmentVlans: {Vlan}
end

local record ListTagsForResourceInput
    resourceArn: string
end

local record ListTagsForResourceOutput
    tags: {string : string}
end

local record ListVmEntitlementsInput
    nextToken: string
    maxResults: number
    environmentId: string
    connectorId: string
    entitlementType: string
end

local record ListVmEntitlementsOutput
    nextToken: string
    entitlements: {VmEntitlement}
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

local record UpdateEnvironmentConnectorInput
    clientToken: string
    environmentId: string
    connectorId: string
    applianceFqdn: string
    secretIdentifier: string
end

local record UpdateEnvironmentConnectorOutput
    connector: Connector
end

local record ResourceNotFoundException
    message: string
    resourceId: string
    resourceType: string
end

local record ThrottlingException
    message: string
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

local record ThrottlingException
    message: string
    retryAfterSeconds: number
end

local record ValidationException
    message: string
    reason: string
    fieldList: {ValidationExceptionField}
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

local record ThrottlingException
    message: string
    retryAfterSeconds: number
end

local record ValidationException
    message: string
    reason: string
    fieldList: {ValidationExceptionField}
end

local record ThrottlingException
    message: string
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

local record ThrottlingException
    message: string
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

local record ThrottlingException
    message: string
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

local record ThrottlingException
    message: string
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

local record ValidationException
    message: string
    reason: string
    fieldList: {ValidationExceptionField}
end

local record InternalServerException
    message: string
end

local record ThrottlingException
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

local record ServiceQuotaExceededException
    message: string
end

local record TagPolicyException
    message: string
end

local record TooManyTagsException
    message: string
end

local record ResourceNotFoundException
    message: string
    resourceId: string
    resourceType: string
end

local record TagPolicyException
    message: string
end

local record ResourceNotFoundException
    message: string
    resourceId: string
    resourceType: string
end

local record ThrottlingException
    message: string
    retryAfterSeconds: number
end

local record ValidationException
    message: string
    reason: string
    fieldList: {ValidationExceptionField}
end

local type VcfVersion = "VCF-5.2.1" | "VCF-5.2.2"

local type EntitlementType = "WINDOWS_SERVER"

local type ConnectorType = "VCENTER"

local record M
    AssociateEipToVlanInput: AssociateEipToVlanInput
    AssociateEipToVlanOutput: AssociateEipToVlanOutput
    CreateEntitlementInput: CreateEntitlementInput
    CreateEntitlementOutput: CreateEntitlementOutput
    CreateEnvironmentInput: CreateEnvironmentInput
    CreateEnvironmentOutput: CreateEnvironmentOutput
    CreateEnvironmentConnectorInput: CreateEnvironmentConnectorInput
    CreateEnvironmentConnectorOutput: CreateEnvironmentConnectorOutput
    CreateEnvironmentHostInput: CreateEnvironmentHostInput
    CreateEnvironmentHostOutput: CreateEnvironmentHostOutput
    DeleteEntitlementInput: DeleteEntitlementInput
    DeleteEntitlementOutput: DeleteEntitlementOutput
    DeleteEnvironmentInput: DeleteEnvironmentInput
    DeleteEnvironmentOutput: DeleteEnvironmentOutput
    DeleteEnvironmentConnectorInput: DeleteEnvironmentConnectorInput
    DeleteEnvironmentConnectorOutput: DeleteEnvironmentConnectorOutput
    DeleteEnvironmentHostInput: DeleteEnvironmentHostInput
    DeleteEnvironmentHostOutput: DeleteEnvironmentHostOutput
    DisassociateEipFromVlanInput: DisassociateEipFromVlanInput
    DisassociateEipFromVlanOutput: DisassociateEipFromVlanOutput
    GetEnvironmentInput: GetEnvironmentInput
    GetEnvironmentOutput: GetEnvironmentOutput
    GetVersionsInput: GetVersionsInput
    GetVersionsOutput: GetVersionsOutput
    ListEnvironmentConnectorsInput: ListEnvironmentConnectorsInput
    ListEnvironmentConnectorsOutput: ListEnvironmentConnectorsOutput
    ListEnvironmentHostsInput: ListEnvironmentHostsInput
    ListEnvironmentHostsOutput: ListEnvironmentHostsOutput
    ListEnvironmentsInput: ListEnvironmentsInput
    ListEnvironmentsOutput: ListEnvironmentsOutput
    ListEnvironmentVlansInput: ListEnvironmentVlansInput
    ListEnvironmentVlansOutput: ListEnvironmentVlansOutput
    ListTagsForResourceInput: ListTagsForResourceInput
    ListTagsForResourceOutput: ListTagsForResourceOutput
    ListVmEntitlementsInput: ListVmEntitlementsInput
    ListVmEntitlementsOutput: ListVmEntitlementsOutput
    TagResourceInput: TagResourceInput
    TagResourceOutput: TagResourceOutput
    UntagResourceInput: UntagResourceInput
    UntagResourceOutput: UntagResourceOutput
    UpdateEnvironmentConnectorInput: UpdateEnvironmentConnectorInput
    UpdateEnvironmentConnectorOutput: UpdateEnvironmentConnectorOutput
end

return M
