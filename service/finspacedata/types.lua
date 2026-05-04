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
        },
    },
}

M.AssociateUserToPermissionGroupOutput = {
    type = "structure",
    members = {
        statusCode = {
            type = "number",
            traits = {
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
            type = "number",
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
            key_type = "string",
            value_type = "string",
            traits = {
                required = true,
            },
        },
        formatParams = {
            type = "map",
            key_type = "string",
            value_type = "string",
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
            member_type = "structure",
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
            member_type = "structure",
        },
        primaryKeyColumns = {
            type = "list",
            member_type = "string",
        },
    },
}

M.SchemaUnion = {
    type = "structure",
    members = {
        tabularSchemaConfig = {
            type = "structure",
        },
    },
}

M.CreateDatasetInput = {
    type = "structure",
    members = {
        clientToken = {
            type = "string",
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
        ownerInfo = {
            type = "structure",
        },
        permissionGroupParams = {
            type = "structure",
            traits = {
                required = true,
            },
        },
        alias = {
            type = "string",
        },
        schemaDefinition = {
            type = "structure",
        },
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
            key_type = "string",
            value_type = "string",
        },
    },
}

M.CreateDataViewInput = {
    type = "structure",
    members = {
        clientToken = {
            type = "string",
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
        },
        sortColumns = {
            type = "list",
            member_type = "string",
        },
        partitionColumns = {
            type = "list",
            member_type = "string",
        },
        asOfTimestamp = {
            type = "number",
        },
        destinationTypeParams = {
            type = "structure",
            traits = {
                required = true,
            },
        },
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
            member_type = "string",
            traits = {
                required = true,
            },
        },
        clientToken = {
            type = "string",
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
            },
        },
    },
}

M.DisassociateUserFromPermissionGroupOutput = {
    type = "structure",
    members = {
        statusCode = {
            type = "number",
            traits = {
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
            key_type = "string",
            value_type = "string",
        },
        formatParams = {
            type = "map",
            key_type = "string",
            value_type = "string",
        },
        createTime = {
            type = "number",
        },
        status = {
            type = "string",
        },
        errorInfo = {
            type = "structure",
        },
        activeUntilTimestamp = {
            type = "number",
        },
        activeFromTimestamp = {
            type = "number",
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
            type = "number",
        },
        lastModifiedTime = {
            type = "number",
        },
        schemaDefinition = {
            type = "structure",
        },
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
        },
        partitionColumns = {
            type = "list",
            member_type = "string",
        },
        datasetId = {
            type = "string",
        },
        asOfTimestamp = {
            type = "number",
        },
        errorInfo = {
            type = "structure",
        },
        lastModifiedTime = {
            type = "number",
        },
        createTime = {
            type = "number",
        },
        sortColumns = {
            type = "list",
            member_type = "string",
        },
        dataViewId = {
            type = "string",
        },
        dataViewArn = {
            type = "string",
        },
        destinationTypeParams = {
            type = "structure",
        },
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
        credentials = {
            type = "structure",
        },
        s3Location = {
            type = "structure",
        },
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
            member_type = "string",
        },
        createTime = {
            type = "number",
        },
        lastModifiedTime = {
            type = "number",
        },
        membershipStatus = {
            type = "string",
        },
    },
}

M.GetPermissionGroupOutput = {
    type = "structure",
    members = {
        permissionGroup = {
            type = "structure",
        },
    },
}

M.GetProgrammaticAccessCredentialsInput = {
    type = "structure",
    members = {
        durationInMinutes = {
            type = "number",
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
        credentials = {
            type = "structure",
        },
        durationInMinutes = {
            type = "number",
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
            type = "number",
        },
        lastEnabledTime = {
            type = "number",
        },
        lastDisabledTime = {
            type = "number",
        },
        lastModifiedTime = {
            type = "number",
        },
        lastLoginTime = {
            type = "number",
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
            type = "number",
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
            key_type = "string",
            value_type = "string",
        },
        formatParams = {
            type = "map",
            key_type = "string",
            value_type = "string",
        },
        createTime = {
            type = "number",
        },
        status = {
            type = "string",
        },
        errorInfo = {
            type = "structure",
        },
        activeUntilTimestamp = {
            type = "number",
        },
        activeFromTimestamp = {
            type = "number",
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
            member_type = "structure",
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
            type = "number",
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
        ownerInfo = {
            type = "structure",
        },
        createTime = {
            type = "number",
        },
        lastModifiedTime = {
            type = "number",
        },
        schemaDefinition = {
            type = "structure",
        },
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
            member_type = "structure",
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
            type = "number",
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
            type = "number",
        },
        partitionColumns = {
            type = "list",
            member_type = "string",
        },
        sortColumns = {
            type = "list",
            member_type = "string",
        },
        status = {
            type = "string",
        },
        errorInfo = {
            type = "structure",
        },
        destinationTypeProperties = {
            type = "structure",
        },
        autoUpdate = {
            type = "boolean",
        },
        createTime = {
            type = "number",
        },
        lastModifiedTime = {
            type = "number",
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
            member_type = "structure",
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
            type = "number",
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
            member_type = "structure",
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
            type = "number",
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
            member_type = "structure",
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
            type = "number",
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
            type = "number",
        },
        lastEnabledTime = {
            type = "number",
        },
        lastDisabledTime = {
            type = "number",
        },
        lastModifiedTime = {
            type = "number",
        },
        lastLoginTime = {
            type = "number",
        },
    },
}

M.ListUsersOutput = {
    type = "structure",
    members = {
        users = {
            type = "list",
            member_type = "structure",
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
            type = "number",
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
            member_type = "structure",
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
            key_type = "string",
            value_type = "string",
            traits = {
                required = true,
            },
        },
        formatParams = {
            type = "map",
            key_type = "string",
            value_type = "string",
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
        schemaDefinition = {
            type = "structure",
        },
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
            member_type = "string",
        },
        clientToken = {
            type = "string",
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
