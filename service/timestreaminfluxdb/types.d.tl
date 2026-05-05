local record CreateDbClusterInput
    name: string
    username: string
    password: string
    organization: string
    bucket: string
    port: number
    dbParameterGroupIdentifier: string
    dbInstanceType: string
    dbStorageType: string
    allocatedStorage: number
    networkType: string
    publiclyAccessible: boolean
    vpcSubnetIds: {string}
    vpcSecurityGroupIds: {string}
    deploymentType: string
    failoverMode: string
    logDeliveryConfiguration: LogDeliveryConfiguration
    maintenanceSchedule: MaintenanceSchedule
    tags: {string : string}
end

local record CreateDbClusterOutput
    dbClusterId: string
    dbClusterStatus: string
end

local record CreateDbInstanceInput
    name: string
    username: string
    password: string
    organization: string
    bucket: string
    dbInstanceType: string
    vpcSubnetIds: {string}
    vpcSecurityGroupIds: {string}
    publiclyAccessible: boolean
    dbStorageType: string
    allocatedStorage: number
    dbParameterGroupIdentifier: string
    deploymentType: string
    logDeliveryConfiguration: LogDeliveryConfiguration
    maintenanceSchedule: MaintenanceSchedule
    tags: {string : string}
    port: number
    networkType: string
end

local record CreateDbInstanceOutput
    id: string
    name: string
    arn: string
    status: string
    endpoint: string
    port: number
    networkType: string
    dbInstanceType: string
    dbStorageType: string
    allocatedStorage: number
    deploymentType: string
    vpcSubnetIds: {string}
    publiclyAccessible: boolean
    vpcSecurityGroupIds: {string}
    dbParameterGroupIdentifier: string
    availabilityZone: string
    secondaryAvailabilityZone: string
    logDeliveryConfiguration: LogDeliveryConfiguration
    influxAuthParametersSecretArn: string
    dbClusterId: string
    instanceMode: string
    instanceModes: {string}
    maintenanceSchedule: MaintenanceSchedule
    lastMaintenanceTime: number
    nextMaintenanceTime: number
end

local record CreateDbParameterGroupInput
    name: string
    description: string
    parameters: Parameters
    tags: {string : string}
end

local record CreateDbParameterGroupOutput
    id: string
    name: string
    arn: string
    description: string
    parameters: Parameters
end

local record DeleteDbClusterInput
    dbClusterId: string
end

local record DeleteDbClusterOutput
    dbClusterStatus: string
end

local record DeleteDbInstanceInput
    identifier: string
end

local record DeleteDbInstanceOutput
    id: string
    name: string
    arn: string
    status: string
    endpoint: string
    port: number
    networkType: string
    dbInstanceType: string
    dbStorageType: string
    allocatedStorage: number
    deploymentType: string
    vpcSubnetIds: {string}
    publiclyAccessible: boolean
    vpcSecurityGroupIds: {string}
    dbParameterGroupIdentifier: string
    availabilityZone: string
    secondaryAvailabilityZone: string
    logDeliveryConfiguration: LogDeliveryConfiguration
    influxAuthParametersSecretArn: string
    dbClusterId: string
    instanceMode: string
    instanceModes: {string}
    maintenanceSchedule: MaintenanceSchedule
    lastMaintenanceTime: number
    nextMaintenanceTime: number
end

local record GetDbClusterInput
    dbClusterId: string
end

local record GetDbClusterOutput
    id: string
    name: string
    arn: string
    status: string
    endpoint: string
    readerEndpoint: string
    port: number
    deploymentType: string
    dbInstanceType: string
    networkType: string
    dbStorageType: string
    allocatedStorage: number
    engineType: string
    publiclyAccessible: boolean
    dbParameterGroupIdentifier: string
    logDeliveryConfiguration: LogDeliveryConfiguration
    maintenanceSchedule: MaintenanceSchedule
    lastMaintenanceTime: number
    nextMaintenanceTime: number
    influxAuthParametersSecretArn: string
    vpcSubnetIds: {string}
    vpcSecurityGroupIds: {string}
    failoverMode: string
    clusterConfiguration: ClusterConfiguration
end

local record GetDbInstanceInput
    identifier: string
end

local record GetDbInstanceOutput
    id: string
    name: string
    arn: string
    status: string
    endpoint: string
    port: number
    networkType: string
    dbInstanceType: string
    dbStorageType: string
    allocatedStorage: number
    deploymentType: string
    vpcSubnetIds: {string}
    publiclyAccessible: boolean
    vpcSecurityGroupIds: {string}
    dbParameterGroupIdentifier: string
    availabilityZone: string
    secondaryAvailabilityZone: string
    logDeliveryConfiguration: LogDeliveryConfiguration
    influxAuthParametersSecretArn: string
    dbClusterId: string
    instanceMode: string
    instanceModes: {string}
    maintenanceSchedule: MaintenanceSchedule
    lastMaintenanceTime: number
    nextMaintenanceTime: number
end

local record GetDbParameterGroupInput
    identifier: string
end

local record GetDbParameterGroupOutput
    id: string
    name: string
    arn: string
    description: string
    parameters: Parameters
end

local record ListDbClustersInput
    nextToken: string
    maxResults: number
end

local record ListDbClustersOutput
    items: {DbClusterSummary}
    nextToken: string
end

local record ListDbInstancesInput
    nextToken: string
    maxResults: number
end

local record ListDbInstancesOutput
    items: {DbInstanceSummary}
    nextToken: string
end

local record ListDbInstancesForClusterInput
    dbClusterId: string
    nextToken: string
    maxResults: number
end

local record ListDbInstancesForClusterOutput
    items: {DbInstanceForClusterSummary}
    nextToken: string
end

local record ListDbParameterGroupsInput
    nextToken: string
    maxResults: number
end

local record ListDbParameterGroupsOutput
    items: {DbParameterGroupSummary}
    nextToken: string
end

local record ListTagsForResourceInput
    resourceArn: string
end

local record ListTagsForResourceOutput
    tags: {string : string}
end

local record RebootDbClusterInput
    dbClusterId: string
    instanceIds: {string}
end

local record RebootDbClusterOutput
    dbClusterStatus: string
end

local record RebootDbInstanceInput
    identifier: string
end

local record RebootDbInstanceOutput
    id: string
    name: string
    arn: string
    status: string
    endpoint: string
    port: number
    networkType: string
    dbInstanceType: string
    dbStorageType: string
    allocatedStorage: number
    deploymentType: string
    vpcSubnetIds: {string}
    publiclyAccessible: boolean
    vpcSecurityGroupIds: {string}
    dbParameterGroupIdentifier: string
    availabilityZone: string
    secondaryAvailabilityZone: string
    logDeliveryConfiguration: LogDeliveryConfiguration
    influxAuthParametersSecretArn: string
    dbClusterId: string
    instanceMode: string
    instanceModes: {string}
    maintenanceSchedule: MaintenanceSchedule
    lastMaintenanceTime: number
    nextMaintenanceTime: number
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

local record UpdateDbClusterInput
    dbClusterId: string
    logDeliveryConfiguration: LogDeliveryConfiguration
    dbParameterGroupIdentifier: string
    port: number
    dbInstanceType: string
    failoverMode: string
    maintenanceSchedule: MaintenanceSchedule
end

local record UpdateDbClusterOutput
    dbClusterStatus: string
end

local record UpdateDbInstanceInput
    identifier: string
    logDeliveryConfiguration: LogDeliveryConfiguration
    dbParameterGroupIdentifier: string
    port: number
    dbInstanceType: string
    deploymentType: string
    dbStorageType: string
    allocatedStorage: number
    maintenanceSchedule: MaintenanceSchedule
end

local record UpdateDbInstanceOutput
    id: string
    name: string
    arn: string
    status: string
    endpoint: string
    port: number
    networkType: string
    dbInstanceType: string
    dbStorageType: string
    allocatedStorage: number
    deploymentType: string
    vpcSubnetIds: {string}
    publiclyAccessible: boolean
    vpcSecurityGroupIds: {string}
    dbParameterGroupIdentifier: string
    availabilityZone: string
    secondaryAvailabilityZone: string
    logDeliveryConfiguration: LogDeliveryConfiguration
    influxAuthParametersSecretArn: string
    dbClusterId: string
    instanceMode: string
    instanceModes: {string}
    maintenanceSchedule: MaintenanceSchedule
    lastMaintenanceTime: number
    nextMaintenanceTime: number
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
end

local record ResourceNotFoundException
    message: string
    resourceId: string
    resourceType: string
end

local record ServiceQuotaExceededException
    message: string
end

local record ThrottlingException
    message: string
    retryAfterSeconds: number
end

local record ValidationException
    message: string
    reason: string
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
end

local record ResourceNotFoundException
    message: string
    resourceId: string
    resourceType: string
end

local record ServiceQuotaExceededException
    message: string
end

local record ThrottlingException
    message: string
    retryAfterSeconds: number
end

local record ValidationException
    message: string
    reason: string
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
end

local record ResourceNotFoundException
    message: string
    resourceId: string
    resourceType: string
end

local record ServiceQuotaExceededException
    message: string
end

local record ThrottlingException
    message: string
    retryAfterSeconds: number
end

local record ValidationException
    message: string
    reason: string
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
end

local record AccessDeniedException
    message: string
end

local record InternalServerException
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
end

local record AccessDeniedException
    message: string
end

local record InternalServerException
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
end

local record AccessDeniedException
    message: string
end

local record InternalServerException
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
end

local record AccessDeniedException
    message: string
end

local record InternalServerException
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
end

local record AccessDeniedException
    message: string
end

local record InternalServerException
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
end

local record AccessDeniedException
    message: string
end

local record InternalServerException
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
end

local record AccessDeniedException
    message: string
end

local record InternalServerException
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
end

local record ResourceNotFoundException
    message: string
    resourceId: string
    resourceType: string
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
end

local record ResourceNotFoundException
    message: string
    resourceId: string
    resourceType: string
end

local record ServiceQuotaExceededException
    message: string
end

local record ResourceNotFoundException
    message: string
    resourceId: string
    resourceType: string
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
end

local type DbInstanceType = "db.influx.medium" | "db.influx.large" | "db.influx.xlarge" | "db.influx.2xlarge" | "db.influx.4xlarge" | "db.influx.8xlarge" | "db.influx.12xlarge" | "db.influx.16xlarge" | "db.influx.24xlarge"

local type ClusterStatus = "CREATING" | "UPDATING" | "DELETING" | "AVAILABLE" | "FAILED" | "DELETED" | "MAINTENANCE" | "UPDATING_INSTANCE_TYPE" | "REBOOTING" | "REBOOT_FAILED" | "PARTIALLY_AVAILABLE"

local type NetworkType = "IPV4" | "DUAL"

local type Status = "CREATING" | "AVAILABLE" | "DELETING" | "MODIFYING" | "UPDATING" | "DELETED" | "FAILED" | "UPDATING_DEPLOYMENT_TYPE" | "UPDATING_INSTANCE_TYPE" | "MAINTENANCE" | "REBOOTING" | "REBOOT_FAILED"

local type ClusterDeploymentType = "MULTI_NODE_READ_REPLICAS"

local type FailoverMode = "AUTOMATIC" | "NO_FAILOVER"

local type EngineType = "INFLUXDB_V2" | "INFLUXDB_V3_CORE" | "INFLUXDB_V3_ENTERPRISE"

local type InstanceMode = "PRIMARY" | "STANDBY" | "REPLICA" | "INGEST" | "QUERY" | "COMPACT" | "PROCESS"

local type DbStorageType = "InfluxIOIncludedT1" | "InfluxIOIncludedT2" | "InfluxIOIncludedT3"

local type DeploymentType = "SINGLE_AZ" | "WITH_MULTIAZ_STANDBY"

local record M
    CreateDbClusterInput: CreateDbClusterInput
    CreateDbClusterOutput: CreateDbClusterOutput
    CreateDbInstanceInput: CreateDbInstanceInput
    CreateDbInstanceOutput: CreateDbInstanceOutput
    CreateDbParameterGroupInput: CreateDbParameterGroupInput
    CreateDbParameterGroupOutput: CreateDbParameterGroupOutput
    DeleteDbClusterInput: DeleteDbClusterInput
    DeleteDbClusterOutput: DeleteDbClusterOutput
    DeleteDbInstanceInput: DeleteDbInstanceInput
    DeleteDbInstanceOutput: DeleteDbInstanceOutput
    GetDbClusterInput: GetDbClusterInput
    GetDbClusterOutput: GetDbClusterOutput
    GetDbInstanceInput: GetDbInstanceInput
    GetDbInstanceOutput: GetDbInstanceOutput
    GetDbParameterGroupInput: GetDbParameterGroupInput
    GetDbParameterGroupOutput: GetDbParameterGroupOutput
    ListDbClustersInput: ListDbClustersInput
    ListDbClustersOutput: ListDbClustersOutput
    ListDbInstancesInput: ListDbInstancesInput
    ListDbInstancesOutput: ListDbInstancesOutput
    ListDbInstancesForClusterInput: ListDbInstancesForClusterInput
    ListDbInstancesForClusterOutput: ListDbInstancesForClusterOutput
    ListDbParameterGroupsInput: ListDbParameterGroupsInput
    ListDbParameterGroupsOutput: ListDbParameterGroupsOutput
    ListTagsForResourceInput: ListTagsForResourceInput
    ListTagsForResourceOutput: ListTagsForResourceOutput
    RebootDbClusterInput: RebootDbClusterInput
    RebootDbClusterOutput: RebootDbClusterOutput
    RebootDbInstanceInput: RebootDbInstanceInput
    RebootDbInstanceOutput: RebootDbInstanceOutput
    TagResourceInput: TagResourceInput
    TagResourceOutput: TagResourceOutput
    UntagResourceInput: UntagResourceInput
    UntagResourceOutput: UntagResourceOutput
    UpdateDbClusterInput: UpdateDbClusterInput
    UpdateDbClusterOutput: UpdateDbClusterOutput
    UpdateDbInstanceInput: UpdateDbInstanceInput
    UpdateDbInstanceOutput: UpdateDbInstanceOutput
end

return M
