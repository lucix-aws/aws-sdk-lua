local M = {}

M.AccessDeniedException = {
    type = "structure",
    id = "AccessDeniedException",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.ApiAccess = {
    ENABLED = "ENABLED",
    DISABLED = "DISABLED",
}

M.ApplicationPermission = {
    CreateDataset = "CreateDataset",
    ManageClusters = "ManageClusters",
    ManageUsersAndGroups = "ManageUsersAndGroups",
    ManageAttributeSets = "ManageAttributeSets",
    ViewAuditData = "ViewAuditData",
    AccessNotebooks = "AccessNotebooks",
    GetTemporaryCredentials = "GetTemporaryCredentials",
}

M.AssociateUserToPermissionGroupInput = {
    type = "structure",
    id = "AssociateUserToPermissionGroupInput",
    members = {
        permissionGroupId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        userId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        clientToken = {
            type = "string",
            traits = {
                idempotency_token = true,
            },
        },
    },
}

M.AssociateUserToPermissionGroupOutput = {
    type = "structure",
    id = "AssociateUserToPermissionGroupOutput",
    members = {
        statusCode = {
            type = "integer",
            traits = {
                default = 0,
                http_response_code = true,
            },
        },
    },
}

M.ConflictException = {
    type = "structure",
    id = "ConflictException",
    error = "client",
    members = {
        message = {
            type = "string",
        },
        reason = {
            type = "string",
        },
    },
}

M.InternalServerException = {
    type = "structure",
    id = "InternalServerException",
    error = "server",
    members = {
        message = {
            type = "string",
        },
    },
}

M.ResourceNotFoundException = {
    type = "structure",
    id = "ResourceNotFoundException",
    error = "client",
    members = {
        message = {
            type = "string",
        },
        reason = {
            type = "string",
        },
    },
}

M.ThrottlingException = {
    type = "structure",
    id = "ThrottlingException",
    error = "client",
}

M.ValidationException = {
    type = "structure",
    id = "ValidationException",
    error = "client",
    members = {
        message = {
            type = "string",
        },
        reason = {
            type = "string",
        },
    },
}

M.AwsCredentials = {
    type = "structure",
    id = "AwsCredentials",
    members = {
        accessKeyId = {
            type = "string",
        },
        secretAccessKey = {
            type = "string",
        },
        sessionToken = {
            type = "string",
        },
        expiration = {
            type = "long",
            traits = {
                default = 0,
            },
        },
    },
}

M.ChangeType = {
    REPLACE = "REPLACE",
    APPEND = "APPEND",
    MODIFY = "MODIFY",
}

M.CreateChangesetInput = {
    type = "structure",
    id = "CreateChangesetInput",
    members = {
        clientToken = {
            type = "string",
            traits = {
                idempotency_token = true,
            },
        },
        datasetId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        changeType = {
            type = "string",
            traits = {
                required = true,
            },
        },
        sourceParams = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
            traits = {
                required = true,
            },
        },
        formatParams = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
            traits = {
                required = true,
            },
        },
    },
}

M.CreateChangesetOutput = {
    type = "structure",
    id = "CreateChangesetOutput",
    members = {
        datasetId = {
            type = "string",
        },
        changesetId = {
            type = "string",
        },
    },
}

M.LimitExceededException = {
    type = "structure",
    id = "LimitExceededException",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.DatasetKind = {
    TABULAR = "TABULAR",
    NON_TABULAR = "NON_TABULAR",
}

M.DatasetOwnerInfo = {
    type = "structure",
    id = "DatasetOwnerInfo",
    members = {
        name = {
            type = "string",
        },
        phoneNumber = {
            type = "string",
        },
        email = {
            type = "string",
        },
    },
}

M.ResourcePermission = {
    type = "structure",
    id = "ResourcePermission",
    members = {
        permission = {
            type = "string",
        },
    },
}

M.PermissionGroupParams = {
    type = "structure",
    id = "PermissionGroupParams",
    members = {
        permissionGroupId = {
            type = "string",
        },
        datasetPermissions = {
            type = "list",
            member = M.ResourcePermission,
        },
    },
}

M.ColumnDataType = {
    STRING = "STRING",
    CHAR = "CHAR",
    INTEGER = "INTEGER",
    TINYINT = "TINYINT",
    SMALLINT = "SMALLINT",
    BIGINT = "BIGINT",
    FLOAT = "FLOAT",
    DOUBLE = "DOUBLE",
    DATE = "DATE",
    DATETIME = "DATETIME",
    BOOLEAN = "BOOLEAN",
    BINARY = "BINARY",
}

M.ColumnDefinition = {
    type = "structure",
    id = "ColumnDefinition",
    members = {
        dataType = {
            type = "string",
        },
        columnName = {
            type = "string",
        },
        columnDescription = {
            type = "string",
        },
    },
}

M.SchemaDefinition = {
    type = "structure",
    id = "SchemaDefinition",
    members = {
        columns = {
            type = "list",
            member = M.ColumnDefinition,
        },
        primaryKeyColumns = {
            type = "list",
            member = { type = "string" },
        },
    },
}

M.SchemaUnion = {
    type = "structure",
    id = "SchemaUnion",
    members = {
        tabularSchemaConfig = M.SchemaDefinition,
    },
}

M.CreateDatasetInput = {
    type = "structure",
    id = "CreateDatasetInput",
    members = {
        clientToken = {
            type = "string",
            traits = {
                idempotency_token = true,
            },
        },
        datasetTitle = {
            type = "string",
            traits = {
                required = true,
            },
        },
        kind = {
            type = "string",
            traits = {
                required = true,
            },
        },
        datasetDescription = {
            type = "string",
        },
        ownerInfo = M.DatasetOwnerInfo,
        permissionGroupParams = setmetatable({ traits = {
            required = true,
        } }, { __index = M.PermissionGroupParams }),
        alias = {
            type = "string",
        },
        schemaDefinition = M.SchemaUnion,
    },
}

M.CreateDatasetOutput = {
    type = "structure",
    id = "CreateDatasetOutput",
    members = {
        datasetId = {
            type = "string",
        },
    },
}

M.ExportFileFormat = {
    PARQUET = "PARQUET",
    DELIMITED_TEXT = "DELIMITED_TEXT",
}

M.DataViewDestinationTypeParams = {
    type = "structure",
    id = "DataViewDestinationTypeParams",
    members = {
        destinationType = {
            type = "string",
            traits = {
                required = true,
            },
        },
        s3DestinationExportFileFormat = {
            type = "string",
        },
        s3DestinationExportFileFormatOptions = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
    },
}

M.CreateDataViewInput = {
    type = "structure",
    id = "CreateDataViewInput",
    members = {
        clientToken = {
            type = "string",
            traits = {
                idempotency_token = true,
            },
        },
        datasetId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        autoUpdate = {
            type = "boolean",
            traits = {
                default = false,
            },
        },
        sortColumns = {
            type = "list",
            member = { type = "string" },
        },
        partitionColumns = {
            type = "list",
            member = { type = "string" },
        },
        asOfTimestamp = {
            type = "long",
            traits = {
                default = nil,
            },
        },
        destinationTypeParams = setmetatable({ traits = {
            required = true,
        } }, { __index = M.DataViewDestinationTypeParams }),
    },
}

M.CreateDataViewOutput = {
    type = "structure",
    id = "CreateDataViewOutput",
    members = {
        datasetId = {
            type = "string",
        },
        dataViewId = {
            type = "string",
        },
    },
}

M.CreatePermissionGroupInput = {
    type = "structure",
    id = "CreatePermissionGroupInput",
    members = {
        name = {
            type = "string",
            traits = {
                required = true,
            },
        },
        description = {
            type = "string",
        },
        applicationPermissions = {
            type = "list",
            member = { type = "string" },
            traits = {
                required = true,
            },
        },
        clientToken = {
            type = "string",
            traits = {
                idempotency_token = true,
            },
        },
    },
}

M.CreatePermissionGroupOutput = {
    type = "structure",
    id = "CreatePermissionGroupOutput",
    members = {
        permissionGroupId = {
            type = "string",
        },
    },
}

M.UserType = {
    SUPER_USER = "SUPER_USER",
    APP_USER = "APP_USER",
}

M.CreateUserInput = {
    type = "structure",
    id = "CreateUserInput",
    members = {
        emailAddress = {
            type = "string",
            traits = {
                required = true,
            },
        },
        type = {
            type = "string",
            traits = {
                required = true,
            },
        },
        firstName = {
            type = "string",
        },
        lastName = {
            type = "string",
        },
        apiAccess = {
            type = "string",
        },
        apiAccessPrincipalArn = {
            type = "string",
        },
        clientToken = {
            type = "string",
            traits = {
                idempotency_token = true,
            },
        },
    },
}

M.CreateUserOutput = {
    type = "structure",
    id = "CreateUserOutput",
    members = {
        userId = {
            type = "string",
        },
    },
}

M.DeleteDatasetInput = {
    type = "structure",
    id = "DeleteDatasetInput",
    members = {
        clientToken = {
            type = "string",
            traits = {
                http_query = "clientToken",
                idempotency_token = true,
            },
        },
        datasetId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.DeleteDatasetOutput = {
    type = "structure",
    id = "DeleteDatasetOutput",
    members = {
        datasetId = {
            type = "string",
        },
    },
}

M.DeletePermissionGroupInput = {
    type = "structure",
    id = "DeletePermissionGroupInput",
    members = {
        permissionGroupId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        clientToken = {
            type = "string",
            traits = {
                http_query = "clientToken",
                idempotency_token = true,
            },
        },
    },
}

M.DeletePermissionGroupOutput = {
    type = "structure",
    id = "DeletePermissionGroupOutput",
    members = {
        permissionGroupId = {
            type = "string",
        },
    },
}

M.DisableUserInput = {
    type = "structure",
    id = "DisableUserInput",
    members = {
        userId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        clientToken = {
            type = "string",
            traits = {
                idempotency_token = true,
            },
        },
    },
}

M.DisableUserOutput = {
    type = "structure",
    id = "DisableUserOutput",
    members = {
        userId = {
            type = "string",
        },
    },
}

M.DisassociateUserFromPermissionGroupInput = {
    type = "structure",
    id = "DisassociateUserFromPermissionGroupInput",
    members = {
        permissionGroupId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        userId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        clientToken = {
            type = "string",
            traits = {
                http_query = "clientToken",
                idempotency_token = true,
            },
        },
    },
}

M.DisassociateUserFromPermissionGroupOutput = {
    type = "structure",
    id = "DisassociateUserFromPermissionGroupOutput",
    members = {
        statusCode = {
            type = "integer",
            traits = {
                default = 0,
                http_response_code = true,
            },
        },
    },
}

M.EnableUserInput = {
    type = "structure",
    id = "EnableUserInput",
    members = {
        userId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        clientToken = {
            type = "string",
            traits = {
                idempotency_token = true,
            },
        },
    },
}

M.EnableUserOutput = {
    type = "structure",
    id = "EnableUserOutput",
    members = {
        userId = {
            type = "string",
        },
    },
}

M.GetChangesetInput = {
    type = "structure",
    id = "GetChangesetInput",
    members = {
        datasetId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        changesetId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.ErrorCategory = {
    VALIDATION = "VALIDATION",
    SERVICE_QUOTA_EXCEEDED = "SERVICE_QUOTA_EXCEEDED",
    ACCESS_DENIED = "ACCESS_DENIED",
    RESOURCE_NOT_FOUND = "RESOURCE_NOT_FOUND",
    THROTTLING = "THROTTLING",
    INTERNAL_SERVICE_EXCEPTION = "INTERNAL_SERVICE_EXCEPTION",
    CANCELLED = "CANCELLED",
    USER_RECOVERABLE = "USER_RECOVERABLE",
}

M.ChangesetErrorInfo = {
    type = "structure",
    id = "ChangesetErrorInfo",
    members = {
        errorMessage = {
            type = "string",
        },
        errorCategory = {
            type = "string",
        },
    },
}

M.IngestionStatus = {
    PENDING = "PENDING",
    FAILED = "FAILED",
    SUCCESS = "SUCCESS",
    RUNNING = "RUNNING",
    STOP_REQUESTED = "STOP_REQUESTED",
}

M.GetChangesetOutput = {
    type = "structure",
    id = "GetChangesetOutput",
    members = {
        changesetId = {
            type = "string",
        },
        changesetArn = {
            type = "string",
        },
        datasetId = {
            type = "string",
        },
        changeType = {
            type = "string",
        },
        sourceParams = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
        formatParams = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
        createTime = {
            type = "long",
            traits = {
                default = 0,
            },
        },
        status = {
            type = "string",
        },
        errorInfo = M.ChangesetErrorInfo,
        activeUntilTimestamp = {
            type = "long",
            traits = {
                default = nil,
            },
        },
        activeFromTimestamp = {
            type = "long",
            traits = {
                default = nil,
            },
        },
        updatesChangesetId = {
            type = "string",
        },
        updatedByChangesetId = {
            type = "string",
        },
    },
}

M.GetDatasetInput = {
    type = "structure",
    id = "GetDatasetInput",
    members = {
        datasetId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.DatasetStatus = {
    PENDING = "PENDING",
    FAILED = "FAILED",
    SUCCESS = "SUCCESS",
    RUNNING = "RUNNING",
}

M.GetDatasetOutput = {
    type = "structure",
    id = "GetDatasetOutput",
    members = {
        datasetId = {
            type = "string",
        },
        datasetArn = {
            type = "string",
        },
        datasetTitle = {
            type = "string",
        },
        kind = {
            type = "string",
        },
        datasetDescription = {
            type = "string",
        },
        createTime = {
            type = "long",
            traits = {
                default = 0,
            },
        },
        lastModifiedTime = {
            type = "long",
            traits = {
                default = 0,
            },
        },
        schemaDefinition = M.SchemaUnion,
        alias = {
            type = "string",
        },
        status = {
            type = "string",
        },
    },
}

M.GetDataViewInput = {
    type = "structure",
    id = "GetDataViewInput",
    members = {
        dataViewId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        datasetId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.DataViewErrorInfo = {
    type = "structure",
    id = "DataViewErrorInfo",
    members = {
        errorMessage = {
            type = "string",
        },
        errorCategory = {
            type = "string",
        },
    },
}

M.DataViewStatus = {
    RUNNING = "RUNNING",
    STARTING = "STARTING",
    FAILED = "FAILED",
    CANCELLED = "CANCELLED",
    TIMEOUT = "TIMEOUT",
    SUCCESS = "SUCCESS",
    PENDING = "PENDING",
    FAILED_CLEANUP_FAILED = "FAILED_CLEANUP_FAILED",
}

M.GetDataViewOutput = {
    type = "structure",
    id = "GetDataViewOutput",
    members = {
        autoUpdate = {
            type = "boolean",
            traits = {
                default = false,
            },
        },
        partitionColumns = {
            type = "list",
            member = { type = "string" },
        },
        datasetId = {
            type = "string",
        },
        asOfTimestamp = {
            type = "long",
            traits = {
                default = nil,
            },
        },
        errorInfo = M.DataViewErrorInfo,
        lastModifiedTime = {
            type = "long",
            traits = {
                default = 0,
            },
        },
        createTime = {
            type = "long",
            traits = {
                default = 0,
            },
        },
        sortColumns = {
            type = "list",
            member = { type = "string" },
        },
        dataViewId = {
            type = "string",
        },
        dataViewArn = {
            type = "string",
        },
        destinationTypeParams = M.DataViewDestinationTypeParams,
        status = {
            type = "string",
        },
    },
}

M.GetExternalDataViewAccessDetailsInput = {
    type = "structure",
    id = "GetExternalDataViewAccessDetailsInput",
    members = {
        dataViewId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        datasetId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.S3Location = {
    type = "structure",
    id = "S3Location",
    members = {
        bucket = {
            type = "string",
            traits = {
                required = true,
            },
        },
        key = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.GetExternalDataViewAccessDetailsOutput = {
    type = "structure",
    id = "GetExternalDataViewAccessDetailsOutput",
    members = {
        credentials = M.AwsCredentials,
        s3Location = M.S3Location,
    },
}

M.GetPermissionGroupInput = {
    type = "structure",
    id = "GetPermissionGroupInput",
    members = {
        permissionGroupId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.PermissionGroupMembershipStatus = {
    ADDITION_IN_PROGRESS = "ADDITION_IN_PROGRESS",
    ADDITION_SUCCESS = "ADDITION_SUCCESS",
    REMOVAL_IN_PROGRESS = "REMOVAL_IN_PROGRESS",
}

M.PermissionGroup = {
    type = "structure",
    id = "PermissionGroup",
    members = {
        permissionGroupId = {
            type = "string",
        },
        name = {
            type = "string",
        },
        description = {
            type = "string",
        },
        applicationPermissions = {
            type = "list",
            member = { type = "string" },
        },
        createTime = {
            type = "long",
            traits = {
                default = 0,
            },
        },
        lastModifiedTime = {
            type = "long",
            traits = {
                default = 0,
            },
        },
        membershipStatus = {
            type = "string",
        },
    },
}

M.GetPermissionGroupOutput = {
    type = "structure",
    id = "GetPermissionGroupOutput",
    members = {
        permissionGroup = M.PermissionGroup,
    },
}

M.GetProgrammaticAccessCredentialsInput = {
    type = "structure",
    id = "GetProgrammaticAccessCredentialsInput",
    members = {
        durationInMinutes = {
            type = "long",
            traits = {
                http_query = "durationInMinutes",
            },
        },
        environmentId = {
            type = "string",
            traits = {
                http_query = "environmentId",
                required = true,
            },
        },
    },
}

M.Credentials = {
    type = "structure",
    id = "Credentials",
    members = {
        accessKeyId = {
            type = "string",
        },
        secretAccessKey = {
            type = "string",
        },
        sessionToken = {
            type = "string",
        },
    },
}

M.GetProgrammaticAccessCredentialsOutput = {
    type = "structure",
    id = "GetProgrammaticAccessCredentialsOutput",
    members = {
        credentials = M.Credentials,
        durationInMinutes = {
            type = "long",
        },
    },
}

M.GetUserInput = {
    type = "structure",
    id = "GetUserInput",
    members = {
        userId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.UserStatus = {
    CREATING = "CREATING",
    ENABLED = "ENABLED",
    DISABLED = "DISABLED",
}

M.GetUserOutput = {
    type = "structure",
    id = "GetUserOutput",
    members = {
        userId = {
            type = "string",
        },
        status = {
            type = "string",
        },
        firstName = {
            type = "string",
        },
        lastName = {
            type = "string",
        },
        emailAddress = {
            type = "string",
        },
        type = {
            type = "string",
        },
        apiAccess = {
            type = "string",
        },
        apiAccessPrincipalArn = {
            type = "string",
        },
        createTime = {
            type = "long",
            traits = {
                default = 0,
            },
        },
        lastEnabledTime = {
            type = "long",
            traits = {
                default = 0,
            },
        },
        lastDisabledTime = {
            type = "long",
            traits = {
                default = 0,
            },
        },
        lastModifiedTime = {
            type = "long",
            traits = {
                default = 0,
            },
        },
        lastLoginTime = {
            type = "long",
            traits = {
                default = 0,
            },
        },
    },
}

M.locationType = {
    INGESTION = "INGESTION",
    SAGEMAKER = "SAGEMAKER",
}

M.GetWorkingLocationInput = {
    type = "structure",
    id = "GetWorkingLocationInput",
    members = {
        locationType = {
            type = "string",
        },
    },
}

M.GetWorkingLocationOutput = {
    type = "structure",
    id = "GetWorkingLocationOutput",
    members = {
        s3Uri = {
            type = "string",
        },
        s3Path = {
            type = "string",
        },
        s3Bucket = {
            type = "string",
        },
    },
}

M.ListChangesetsInput = {
    type = "structure",
    id = "ListChangesetsInput",
    members = {
        datasetId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        maxResults = {
            type = "integer",
            traits = {
                http_query = "maxResults",
            },
        },
        nextToken = {
            type = "string",
            traits = {
                http_query = "nextToken",
            },
        },
    },
}

M.ChangesetSummary = {
    type = "structure",
    id = "ChangesetSummary",
    members = {
        changesetId = {
            type = "string",
        },
        changesetArn = {
            type = "string",
        },
        datasetId = {
            type = "string",
        },
        changeType = {
            type = "string",
        },
        sourceParams = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
        formatParams = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
        createTime = {
            type = "long",
            traits = {
                default = 0,
            },
        },
        status = {
            type = "string",
        },
        errorInfo = M.ChangesetErrorInfo,
        activeUntilTimestamp = {
            type = "long",
            traits = {
                default = nil,
            },
        },
        activeFromTimestamp = {
            type = "long",
            traits = {
                default = nil,
            },
        },
        updatesChangesetId = {
            type = "string",
        },
        updatedByChangesetId = {
            type = "string",
        },
    },
}

M.ListChangesetsOutput = {
    type = "structure",
    id = "ListChangesetsOutput",
    members = {
        changesets = {
            type = "list",
            member = M.ChangesetSummary,
        },
        nextToken = {
            type = "string",
        },
    },
}

M.ListDatasetsInput = {
    type = "structure",
    id = "ListDatasetsInput",
    members = {
        nextToken = {
            type = "string",
            traits = {
                http_query = "nextToken",
            },
        },
        maxResults = {
            type = "integer",
            traits = {
                http_query = "maxResults",
            },
        },
    },
}

M.Dataset = {
    type = "structure",
    id = "Dataset",
    members = {
        datasetId = {
            type = "string",
        },
        datasetArn = {
            type = "string",
        },
        datasetTitle = {
            type = "string",
        },
        kind = {
            type = "string",
        },
        datasetDescription = {
            type = "string",
        },
        ownerInfo = M.DatasetOwnerInfo,
        createTime = {
            type = "long",
            traits = {
                default = 0,
            },
        },
        lastModifiedTime = {
            type = "long",
            traits = {
                default = 0,
            },
        },
        schemaDefinition = M.SchemaUnion,
        alias = {
            type = "string",
        },
    },
}

M.ListDatasetsOutput = {
    type = "structure",
    id = "ListDatasetsOutput",
    members = {
        datasets = {
            type = "list",
            member = M.Dataset,
        },
        nextToken = {
            type = "string",
        },
    },
}

M.ListDataViewsInput = {
    type = "structure",
    id = "ListDataViewsInput",
    members = {
        datasetId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        nextToken = {
            type = "string",
            traits = {
                http_query = "nextToken",
            },
        },
        maxResults = {
            type = "integer",
            traits = {
                http_query = "maxResults",
            },
        },
    },
}

M.DataViewSummary = {
    type = "structure",
    id = "DataViewSummary",
    members = {
        dataViewId = {
            type = "string",
        },
        dataViewArn = {
            type = "string",
        },
        datasetId = {
            type = "string",
        },
        asOfTimestamp = {
            type = "long",
            traits = {
                default = nil,
            },
        },
        partitionColumns = {
            type = "list",
            member = { type = "string" },
        },
        sortColumns = {
            type = "list",
            member = { type = "string" },
        },
        status = {
            type = "string",
        },
        errorInfo = M.DataViewErrorInfo,
        destinationTypeProperties = M.DataViewDestinationTypeParams,
        autoUpdate = {
            type = "boolean",
            traits = {
                default = false,
            },
        },
        createTime = {
            type = "long",
            traits = {
                default = 0,
            },
        },
        lastModifiedTime = {
            type = "long",
            traits = {
                default = 0,
            },
        },
    },
}

M.ListDataViewsOutput = {
    type = "structure",
    id = "ListDataViewsOutput",
    members = {
        nextToken = {
            type = "string",
        },
        dataViews = {
            type = "list",
            member = M.DataViewSummary,
        },
    },
}

M.ListPermissionGroupsInput = {
    type = "structure",
    id = "ListPermissionGroupsInput",
    members = {
        nextToken = {
            type = "string",
            traits = {
                http_query = "nextToken",
            },
        },
        maxResults = {
            type = "integer",
            traits = {
                http_query = "maxResults",
                required = true,
            },
        },
    },
}

M.ListPermissionGroupsOutput = {
    type = "structure",
    id = "ListPermissionGroupsOutput",
    members = {
        permissionGroups = {
            type = "list",
            member = M.PermissionGroup,
        },
        nextToken = {
            type = "string",
        },
    },
}

M.ListPermissionGroupsByUserInput = {
    type = "structure",
    id = "ListPermissionGroupsByUserInput",
    members = {
        userId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        nextToken = {
            type = "string",
            traits = {
                http_query = "nextToken",
            },
        },
        maxResults = {
            type = "integer",
            traits = {
                http_query = "maxResults",
                required = true,
            },
        },
    },
}

M.PermissionGroupByUser = {
    type = "structure",
    id = "PermissionGroupByUser",
    members = {
        permissionGroupId = {
            type = "string",
        },
        name = {
            type = "string",
        },
        membershipStatus = {
            type = "string",
        },
    },
}

M.ListPermissionGroupsByUserOutput = {
    type = "structure",
    id = "ListPermissionGroupsByUserOutput",
    members = {
        permissionGroups = {
            type = "list",
            member = M.PermissionGroupByUser,
        },
        nextToken = {
            type = "string",
        },
    },
}

M.ListUsersInput = {
    type = "structure",
    id = "ListUsersInput",
    members = {
        nextToken = {
            type = "string",
            traits = {
                http_query = "nextToken",
            },
        },
        maxResults = {
            type = "integer",
            traits = {
                http_query = "maxResults",
                required = true,
            },
        },
    },
}

M.User = {
    type = "structure",
    id = "User",
    members = {
        userId = {
            type = "string",
        },
        status = {
            type = "string",
        },
        firstName = {
            type = "string",
        },
        lastName = {
            type = "string",
        },
        emailAddress = {
            type = "string",
        },
        type = {
            type = "string",
        },
        apiAccess = {
            type = "string",
        },
        apiAccessPrincipalArn = {
            type = "string",
        },
        createTime = {
            type = "long",
            traits = {
                default = 0,
            },
        },
        lastEnabledTime = {
            type = "long",
            traits = {
                default = 0,
            },
        },
        lastDisabledTime = {
            type = "long",
            traits = {
                default = 0,
            },
        },
        lastModifiedTime = {
            type = "long",
            traits = {
                default = 0,
            },
        },
        lastLoginTime = {
            type = "long",
            traits = {
                default = 0,
            },
        },
    },
}

M.ListUsersOutput = {
    type = "structure",
    id = "ListUsersOutput",
    members = {
        users = {
            type = "list",
            member = M.User,
        },
        nextToken = {
            type = "string",
        },
    },
}

M.ListUsersByPermissionGroupInput = {
    type = "structure",
    id = "ListUsersByPermissionGroupInput",
    members = {
        permissionGroupId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        nextToken = {
            type = "string",
            traits = {
                http_query = "nextToken",
            },
        },
        maxResults = {
            type = "integer",
            traits = {
                http_query = "maxResults",
                required = true,
            },
        },
    },
}

M.UserByPermissionGroup = {
    type = "structure",
    id = "UserByPermissionGroup",
    members = {
        userId = {
            type = "string",
        },
        status = {
            type = "string",
        },
        firstName = {
            type = "string",
        },
        lastName = {
            type = "string",
        },
        emailAddress = {
            type = "string",
        },
        type = {
            type = "string",
        },
        apiAccess = {
            type = "string",
        },
        apiAccessPrincipalArn = {
            type = "string",
        },
        membershipStatus = {
            type = "string",
        },
    },
}

M.ListUsersByPermissionGroupOutput = {
    type = "structure",
    id = "ListUsersByPermissionGroupOutput",
    members = {
        users = {
            type = "list",
            member = M.UserByPermissionGroup,
        },
        nextToken = {
            type = "string",
        },
    },
}

M.ResetUserPasswordInput = {
    type = "structure",
    id = "ResetUserPasswordInput",
    members = {
        userId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        clientToken = {
            type = "string",
            traits = {
                idempotency_token = true,
            },
        },
    },
}

M.ResetUserPasswordOutput = {
    type = "structure",
    id = "ResetUserPasswordOutput",
    members = {
        userId = {
            type = "string",
        },
        temporaryPassword = {
            type = "string",
        },
    },
}

M.UpdateChangesetInput = {
    type = "structure",
    id = "UpdateChangesetInput",
    members = {
        clientToken = {
            type = "string",
            traits = {
                idempotency_token = true,
            },
        },
        datasetId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        changesetId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        sourceParams = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
            traits = {
                required = true,
            },
        },
        formatParams = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
            traits = {
                required = true,
            },
        },
    },
}

M.UpdateChangesetOutput = {
    type = "structure",
    id = "UpdateChangesetOutput",
    members = {
        changesetId = {
            type = "string",
        },
        datasetId = {
            type = "string",
        },
    },
}

M.UpdateDatasetInput = {
    type = "structure",
    id = "UpdateDatasetInput",
    members = {
        clientToken = {
            type = "string",
            traits = {
                idempotency_token = true,
            },
        },
        datasetId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        datasetTitle = {
            type = "string",
            traits = {
                required = true,
            },
        },
        kind = {
            type = "string",
            traits = {
                required = true,
            },
        },
        datasetDescription = {
            type = "string",
        },
        alias = {
            type = "string",
        },
        schemaDefinition = M.SchemaUnion,
    },
}

M.UpdateDatasetOutput = {
    type = "structure",
    id = "UpdateDatasetOutput",
    members = {
        datasetId = {
            type = "string",
        },
    },
}

M.UpdatePermissionGroupInput = {
    type = "structure",
    id = "UpdatePermissionGroupInput",
    members = {
        permissionGroupId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        name = {
            type = "string",
        },
        description = {
            type = "string",
        },
        applicationPermissions = {
            type = "list",
            member = { type = "string" },
        },
        clientToken = {
            type = "string",
            traits = {
                idempotency_token = true,
            },
        },
    },
}

M.UpdatePermissionGroupOutput = {
    type = "structure",
    id = "UpdatePermissionGroupOutput",
    members = {
        permissionGroupId = {
            type = "string",
        },
    },
}

M.UpdateUserInput = {
    type = "structure",
    id = "UpdateUserInput",
    members = {
        userId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        type = {
            type = "string",
        },
        firstName = {
            type = "string",
        },
        lastName = {
            type = "string",
        },
        apiAccess = {
            type = "string",
        },
        apiAccessPrincipalArn = {
            type = "string",
        },
        clientToken = {
            type = "string",
            traits = {
                idempotency_token = true,
            },
        },
    },
}

M.UpdateUserOutput = {
    type = "structure",
    id = "UpdateUserOutput",
    members = {
        userId = {
            type = "string",
        },
    },
}

return M
