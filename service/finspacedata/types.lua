local M = {}

M.AccessDeniedException = {
    type = "structure",
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
    error = "server",
    members = {
        message = {
            type = "string",
        },
    },
}

M.ResourceNotFoundException = {
    type = "structure",
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
    error = "client",
}

M.ValidationException = {
    type = "structure",
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
    members = {
        permission = {
            type = "string",
        },
    },
}

M.PermissionGroupParams = {
    type = "structure",
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
    members = {
        tabularSchemaConfig = M.SchemaDefinition,
    },
}

M.CreateDatasetInput = {
    type = "structure",
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
    members = {
        userId = {
            type = "string",
        },
    },
}

M.DeleteDatasetInput = {
    type = "structure",
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
    members = {
        datasetId = {
            type = "string",
        },
    },
}

M.DeletePermissionGroupInput = {
    type = "structure",
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
    members = {
        permissionGroupId = {
            type = "string",
        },
    },
}

M.DisableUserInput = {
    type = "structure",
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
    members = {
        userId = {
            type = "string",
        },
    },
}

M.DisassociateUserFromPermissionGroupInput = {
    type = "structure",
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
    members = {
        userId = {
            type = "string",
        },
    },
}

M.GetChangesetInput = {
    type = "structure",
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
    members = {
        credentials = M.AwsCredentials,
        s3Location = M.S3Location,
    },
}

M.GetPermissionGroupInput = {
    type = "structure",
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
    members = {
        permissionGroup = M.PermissionGroup,
    },
}

M.GetProgrammaticAccessCredentialsInput = {
    type = "structure",
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
    members = {
        credentials = M.Credentials,
        durationInMinutes = {
            type = "long",
        },
    },
}

M.GetUserInput = {
    type = "structure",
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
    members = {
        locationType = {
            type = "string",
        },
    },
}

M.GetWorkingLocationOutput = {
    type = "structure",
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
    members = {
        datasetId = {
            type = "string",
        },
    },
}

M.UpdatePermissionGroupInput = {
    type = "structure",
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
    members = {
        permissionGroupId = {
            type = "string",
        },
    },
}

M.UpdateUserInput = {
    type = "structure",
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
    members = {
        userId = {
            type = "string",
        },
    },
}

return M
