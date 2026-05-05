local record AssociateUserToPermissionGroupInput
    permissionGroupId: string
    userId: string
    clientToken: string
end

local record AssociateUserToPermissionGroupOutput
    statusCode: number
end

local record CreateChangesetInput
    clientToken: string
    datasetId: string
    changeType: string
    sourceParams: {string : string}
    formatParams: {string : string}
end

local record CreateChangesetOutput
    datasetId: string
    changesetId: string
end

local record CreateDatasetInput
    clientToken: string
    datasetTitle: string
    kind: string
    datasetDescription: string
    ownerInfo: DatasetOwnerInfo
    permissionGroupParams: PermissionGroupParams
    alias: string
    schemaDefinition: SchemaUnion
end

local record CreateDatasetOutput
    datasetId: string
end

local record CreateDataViewInput
    clientToken: string
    datasetId: string
    autoUpdate: boolean
    sortColumns: {string}
    partitionColumns: {string}
    asOfTimestamp: number
    destinationTypeParams: DataViewDestinationTypeParams
end

local record CreateDataViewOutput
    datasetId: string
    dataViewId: string
end

local record CreatePermissionGroupInput
    name: string
    description: string
    applicationPermissions: {string}
    clientToken: string
end

local record CreatePermissionGroupOutput
    permissionGroupId: string
end

local record CreateUserInput
    emailAddress: string
    type: string
    firstName: string
    lastName: string
    apiAccess: string
    apiAccessPrincipalArn: string
    clientToken: string
end

local record CreateUserOutput
    userId: string
end

local record DeleteDatasetInput
    clientToken: string
    datasetId: string
end

local record DeleteDatasetOutput
    datasetId: string
end

local record DeletePermissionGroupInput
    permissionGroupId: string
    clientToken: string
end

local record DeletePermissionGroupOutput
    permissionGroupId: string
end

local record DisableUserInput
    userId: string
    clientToken: string
end

local record DisableUserOutput
    userId: string
end

local record DisassociateUserFromPermissionGroupInput
    permissionGroupId: string
    userId: string
    clientToken: string
end

local record DisassociateUserFromPermissionGroupOutput
    statusCode: number
end

local record EnableUserInput
    userId: string
    clientToken: string
end

local record EnableUserOutput
    userId: string
end

local record GetChangesetInput
    datasetId: string
    changesetId: string
end

local record GetChangesetOutput
    changesetId: string
    changesetArn: string
    datasetId: string
    changeType: string
    sourceParams: {string : string}
    formatParams: {string : string}
    createTime: number
    status: string
    errorInfo: ChangesetErrorInfo
    activeUntilTimestamp: number
    activeFromTimestamp: number
    updatesChangesetId: string
    updatedByChangesetId: string
end

local record GetDatasetInput
    datasetId: string
end

local record GetDatasetOutput
    datasetId: string
    datasetArn: string
    datasetTitle: string
    kind: string
    datasetDescription: string
    createTime: number
    lastModifiedTime: number
    schemaDefinition: SchemaUnion
    alias: string
    status: string
end

local record GetDataViewInput
    dataViewId: string
    datasetId: string
end

local record GetDataViewOutput
    autoUpdate: boolean
    partitionColumns: {string}
    datasetId: string
    asOfTimestamp: number
    errorInfo: DataViewErrorInfo
    lastModifiedTime: number
    createTime: number
    sortColumns: {string}
    dataViewId: string
    dataViewArn: string
    destinationTypeParams: DataViewDestinationTypeParams
    status: string
end

local record GetExternalDataViewAccessDetailsInput
    dataViewId: string
    datasetId: string
end

local record GetExternalDataViewAccessDetailsOutput
    credentials: AwsCredentials
    s3Location: S3Location
end

local record GetPermissionGroupInput
    permissionGroupId: string
end

local record GetPermissionGroupOutput
    permissionGroup: PermissionGroup
end

local record GetProgrammaticAccessCredentialsInput
    durationInMinutes: number
    environmentId: string
end

local record GetProgrammaticAccessCredentialsOutput
    credentials: Credentials
    durationInMinutes: number
end

local record GetUserInput
    userId: string
end

local record GetUserOutput
    userId: string
    status: string
    firstName: string
    lastName: string
    emailAddress: string
    type: string
    apiAccess: string
    apiAccessPrincipalArn: string
    createTime: number
    lastEnabledTime: number
    lastDisabledTime: number
    lastModifiedTime: number
    lastLoginTime: number
end

local record GetWorkingLocationInput
    locationType: string
end

local record GetWorkingLocationOutput
    s3Uri: string
    s3Path: string
    s3Bucket: string
end

local record ListChangesetsInput
    datasetId: string
    maxResults: number
    nextToken: string
end

local record ListChangesetsOutput
    changesets: {ChangesetSummary}
    nextToken: string
end

local record ListDatasetsInput
    nextToken: string
    maxResults: number
end

local record ListDatasetsOutput
    datasets: {Dataset}
    nextToken: string
end

local record ListDataViewsInput
    datasetId: string
    nextToken: string
    maxResults: number
end

local record ListDataViewsOutput
    nextToken: string
    dataViews: {DataViewSummary}
end

local record ListPermissionGroupsInput
    nextToken: string
    maxResults: number
end

local record ListPermissionGroupsOutput
    permissionGroups: {PermissionGroup}
    nextToken: string
end

local record ListPermissionGroupsByUserInput
    userId: string
    nextToken: string
    maxResults: number
end

local record ListPermissionGroupsByUserOutput
    permissionGroups: {PermissionGroupByUser}
    nextToken: string
end

local record ListUsersInput
    nextToken: string
    maxResults: number
end

local record ListUsersOutput
    users: {User}
    nextToken: string
end

local record ListUsersByPermissionGroupInput
    permissionGroupId: string
    nextToken: string
    maxResults: number
end

local record ListUsersByPermissionGroupOutput
    users: {UserByPermissionGroup}
    nextToken: string
end

local record ResetUserPasswordInput
    userId: string
    clientToken: string
end

local record ResetUserPasswordOutput
    userId: string
    temporaryPassword: string
end

local record UpdateChangesetInput
    clientToken: string
    datasetId: string
    changesetId: string
    sourceParams: {string : string}
    formatParams: {string : string}
end

local record UpdateChangesetOutput
    changesetId: string
    datasetId: string
end

local record UpdateDatasetInput
    clientToken: string
    datasetId: string
    datasetTitle: string
    kind: string
    datasetDescription: string
    alias: string
    schemaDefinition: SchemaUnion
end

local record UpdateDatasetOutput
    datasetId: string
end

local record UpdatePermissionGroupInput
    permissionGroupId: string
    name: string
    description: string
    applicationPermissions: {string}
    clientToken: string
end

local record UpdatePermissionGroupOutput
    permissionGroupId: string
end

local record UpdateUserInput
    userId: string
    type: string
    firstName: string
    lastName: string
    apiAccess: string
    apiAccessPrincipalArn: string
    clientToken: string
end

local record UpdateUserOutput
    userId: string
end

local record AccessDeniedException
    message: string
end

local record ConflictException
    message: string
    reason: string
end

local record InternalServerException
    message: string
end

local record ResourceNotFoundException
    message: string
    reason: string
end

local record ThrottlingException
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
    reason: string
end

local record InternalServerException
    message: string
end

local record LimitExceededException
    message: string
end

local record ResourceNotFoundException
    message: string
    reason: string
end

local record ThrottlingException
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
    reason: string
end

local record InternalServerException
    message: string
end

local record LimitExceededException
    message: string
end

local record ResourceNotFoundException
    message: string
    reason: string
end

local record ThrottlingException
end

local record ValidationException
    message: string
    reason: string
end

local record ConflictException
    message: string
    reason: string
end

local record InternalServerException
    message: string
end

local record LimitExceededException
    message: string
end

local record ResourceNotFoundException
    message: string
    reason: string
end

local record ThrottlingException
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
    reason: string
end

local record InternalServerException
    message: string
end

local record LimitExceededException
    message: string
end

local record ThrottlingException
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
    reason: string
end

local record InternalServerException
    message: string
end

local record LimitExceededException
    message: string
end

local record ThrottlingException
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
    reason: string
end

local record InternalServerException
    message: string
end

local record LimitExceededException
    message: string
end

local record ResourceNotFoundException
    message: string
    reason: string
end

local record ThrottlingException
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
    reason: string
end

local record InternalServerException
    message: string
end

local record LimitExceededException
    message: string
end

local record ResourceNotFoundException
    message: string
    reason: string
end

local record ThrottlingException
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
    reason: string
end

local record InternalServerException
    message: string
end

local record ResourceNotFoundException
    message: string
    reason: string
end

local record ThrottlingException
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
    reason: string
end

local record InternalServerException
    message: string
end

local record ResourceNotFoundException
    message: string
    reason: string
end

local record ThrottlingException
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
    reason: string
end

local record InternalServerException
    message: string
end

local record LimitExceededException
    message: string
end

local record ResourceNotFoundException
    message: string
    reason: string
end

local record ThrottlingException
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
    reason: string
end

local record InternalServerException
    message: string
end

local record ResourceNotFoundException
    message: string
    reason: string
end

local record ThrottlingException
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
    reason: string
end

local record InternalServerException
    message: string
end

local record ResourceNotFoundException
    message: string
    reason: string
end

local record ThrottlingException
end

local record ValidationException
    message: string
    reason: string
end

local record ConflictException
    message: string
    reason: string
end

local record InternalServerException
    message: string
end

local record ResourceNotFoundException
    message: string
    reason: string
end

local record ThrottlingException
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
    reason: string
end

local record ThrottlingException
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
    reason: string
end

local record ThrottlingException
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

local record ThrottlingException
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
    reason: string
end

local record ThrottlingException
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

local record ThrottlingException
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
    reason: string
end

local record InternalServerException
    message: string
end

local record ResourceNotFoundException
    message: string
    reason: string
end

local record ThrottlingException
end

local record ValidationException
    message: string
    reason: string
end

local record ConflictException
    message: string
    reason: string
end

local record InternalServerException
    message: string
end

local record ResourceNotFoundException
    message: string
    reason: string
end

local record ThrottlingException
end

local record ValidationException
    message: string
    reason: string
end

local record ConflictException
    message: string
    reason: string
end

local record InternalServerException
    message: string
end

local record ResourceNotFoundException
    message: string
    reason: string
end

local record ThrottlingException
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

local record ThrottlingException
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
    reason: string
end

local record ThrottlingException
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

local record ThrottlingException
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
    reason: string
end

local record ThrottlingException
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
    reason: string
end

local record InternalServerException
    message: string
end

local record ResourceNotFoundException
    message: string
    reason: string
end

local record ThrottlingException
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
    reason: string
end

local record InternalServerException
    message: string
end

local record ResourceNotFoundException
    message: string
    reason: string
end

local record ThrottlingException
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
    reason: string
end

local record InternalServerException
    message: string
end

local record ResourceNotFoundException
    message: string
    reason: string
end

local record ThrottlingException
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
    reason: string
end

local record InternalServerException
    message: string
end

local record ResourceNotFoundException
    message: string
    reason: string
end

local record ThrottlingException
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
    reason: string
end

local record InternalServerException
    message: string
end

local record ResourceNotFoundException
    message: string
    reason: string
end

local record ThrottlingException
end

local record ValidationException
    message: string
    reason: string
end

local type IngestionStatus = "PENDING" | "FAILED" | "SUCCESS" | "RUNNING" | "STOP_REQUESTED"

local type DatasetStatus = "PENDING" | "FAILED" | "SUCCESS" | "RUNNING"

local type ChangeType = "REPLACE" | "APPEND" | "MODIFY"

local type UserStatus = "CREATING" | "ENABLED" | "DISABLED"

local type DatasetKind = "TABULAR" | "NON_TABULAR"

local type locationType = "INGESTION" | "SAGEMAKER"

local type DataViewStatus = "RUNNING" | "STARTING" | "FAILED" | "CANCELLED" | "TIMEOUT" | "SUCCESS" | "PENDING" | "FAILED_CLEANUP_FAILED"

local type ApiAccess = "ENABLED" | "DISABLED"

local type UserType = "SUPER_USER" | "APP_USER"

local record M
    AssociateUserToPermissionGroupInput: AssociateUserToPermissionGroupInput
    AssociateUserToPermissionGroupOutput: AssociateUserToPermissionGroupOutput
    CreateChangesetInput: CreateChangesetInput
    CreateChangesetOutput: CreateChangesetOutput
    CreateDatasetInput: CreateDatasetInput
    CreateDatasetOutput: CreateDatasetOutput
    CreateDataViewInput: CreateDataViewInput
    CreateDataViewOutput: CreateDataViewOutput
    CreatePermissionGroupInput: CreatePermissionGroupInput
    CreatePermissionGroupOutput: CreatePermissionGroupOutput
    CreateUserInput: CreateUserInput
    CreateUserOutput: CreateUserOutput
    DeleteDatasetInput: DeleteDatasetInput
    DeleteDatasetOutput: DeleteDatasetOutput
    DeletePermissionGroupInput: DeletePermissionGroupInput
    DeletePermissionGroupOutput: DeletePermissionGroupOutput
    DisableUserInput: DisableUserInput
    DisableUserOutput: DisableUserOutput
    DisassociateUserFromPermissionGroupInput: DisassociateUserFromPermissionGroupInput
    DisassociateUserFromPermissionGroupOutput: DisassociateUserFromPermissionGroupOutput
    EnableUserInput: EnableUserInput
    EnableUserOutput: EnableUserOutput
    GetChangesetInput: GetChangesetInput
    GetChangesetOutput: GetChangesetOutput
    GetDatasetInput: GetDatasetInput
    GetDatasetOutput: GetDatasetOutput
    GetDataViewInput: GetDataViewInput
    GetDataViewOutput: GetDataViewOutput
    GetExternalDataViewAccessDetailsInput: GetExternalDataViewAccessDetailsInput
    GetExternalDataViewAccessDetailsOutput: GetExternalDataViewAccessDetailsOutput
    GetPermissionGroupInput: GetPermissionGroupInput
    GetPermissionGroupOutput: GetPermissionGroupOutput
    GetProgrammaticAccessCredentialsInput: GetProgrammaticAccessCredentialsInput
    GetProgrammaticAccessCredentialsOutput: GetProgrammaticAccessCredentialsOutput
    GetUserInput: GetUserInput
    GetUserOutput: GetUserOutput
    GetWorkingLocationInput: GetWorkingLocationInput
    GetWorkingLocationOutput: GetWorkingLocationOutput
    ListChangesetsInput: ListChangesetsInput
    ListChangesetsOutput: ListChangesetsOutput
    ListDatasetsInput: ListDatasetsInput
    ListDatasetsOutput: ListDatasetsOutput
    ListDataViewsInput: ListDataViewsInput
    ListDataViewsOutput: ListDataViewsOutput
    ListPermissionGroupsInput: ListPermissionGroupsInput
    ListPermissionGroupsOutput: ListPermissionGroupsOutput
    ListPermissionGroupsByUserInput: ListPermissionGroupsByUserInput
    ListPermissionGroupsByUserOutput: ListPermissionGroupsByUserOutput
    ListUsersInput: ListUsersInput
    ListUsersOutput: ListUsersOutput
    ListUsersByPermissionGroupInput: ListUsersByPermissionGroupInput
    ListUsersByPermissionGroupOutput: ListUsersByPermissionGroupOutput
    ResetUserPasswordInput: ResetUserPasswordInput
    ResetUserPasswordOutput: ResetUserPasswordOutput
    UpdateChangesetInput: UpdateChangesetInput
    UpdateChangesetOutput: UpdateChangesetOutput
    UpdateDatasetInput: UpdateDatasetInput
    UpdateDatasetOutput: UpdateDatasetOutput
    UpdatePermissionGroupInput: UpdatePermissionGroupInput
    UpdatePermissionGroupOutput: UpdatePermissionGroupOutput
    UpdateUserInput: UpdateUserInput
    UpdateUserOutput: UpdateUserOutput
end

return M
