local id = require("smithy.shape_id")
local schema = require("smithy.schema")
local prelude = require("smithy.prelude")
local traits = require("smithy.traits")

local _N = "com.amazonaws.finspacedata"

local M = {}

M.AccessDeniedException = schema.new({
    id = id.from(_N, "AccessDeniedException"),
    type = "structure",
    traits = {
        [traits.ERROR] = { value = "client" },
    },
    members = {
        message = schema.new({
            id = id.from(_N, "AccessDeniedException", "message"),
            type = "string",
            name = "message",
            target_id = prelude.String.id,
        }),
    },
})

M.AssociateUserToPermissionGroupInput = schema.new({
    id = id.from(_N, "AssociateUserToPermissionGroupRequest"),
    type = "structure",
    members = {
        permissionGroupId = schema.new({
            id = id.from(_N, "AssociateUserToPermissionGroupInput", "permissionGroupId"),
            type = "string",
            name = "permissionGroupId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
        userId = schema.new({
            id = id.from(_N, "AssociateUserToPermissionGroupInput", "userId"),
            type = "string",
            name = "userId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
        clientToken = schema.new({
            id = id.from(_N, "AssociateUserToPermissionGroupInput", "clientToken"),
            type = "string",
            name = "clientToken",
            target_id = prelude.String.id,
            traits = {
                [traits.IDEMPOTENCY_TOKEN] = {},
            },
        }),
    },
})

M.AssociateUserToPermissionGroupOutput = schema.new({
    id = id.from(_N, "AssociateUserToPermissionGroupResponse"),
    type = "structure",
    members = {
        statusCode = schema.new({
            id = id.from(_N, "AssociateUserToPermissionGroupOutput", "statusCode"),
            type = "integer",
            name = "statusCode",
            target_id = prelude.Integer.id,
            traits = {
                [traits.DEFAULT] = { value = 0 },
                [traits.HTTP_RESPONSE_CODE] = {},
            },
        }),
    },
})

M.ConflictException = schema.new({
    id = id.from(_N, "ConflictException"),
    type = "structure",
    traits = {
        [traits.ERROR] = { value = "client" },
    },
    members = {
        message = schema.new({
            id = id.from(_N, "ConflictException", "message"),
            type = "string",
            name = "message",
            target_id = prelude.String.id,
        }),
        reason = schema.new({
            id = id.from(_N, "ConflictException", "reason"),
            type = "string",
            name = "reason",
            target_id = prelude.String.id,
        }),
    },
})

M.InternalServerException = schema.new({
    id = id.from(_N, "InternalServerException"),
    type = "structure",
    traits = {
        [traits.ERROR] = { value = "server" },
    },
    members = {
        message = schema.new({
            id = id.from(_N, "InternalServerException", "message"),
            type = "string",
            name = "message",
            target_id = prelude.String.id,
        }),
    },
})

M.ResourceNotFoundException = schema.new({
    id = id.from(_N, "ResourceNotFoundException"),
    type = "structure",
    traits = {
        [traits.ERROR] = { value = "client" },
    },
    members = {
        message = schema.new({
            id = id.from(_N, "ResourceNotFoundException", "message"),
            type = "string",
            name = "message",
            target_id = prelude.String.id,
        }),
        reason = schema.new({
            id = id.from(_N, "ResourceNotFoundException", "reason"),
            type = "string",
            name = "reason",
            target_id = prelude.String.id,
        }),
    },
})

M.ThrottlingException = schema.new({
    id = id.from(_N, "ThrottlingException"),
    type = "structure",
    traits = {
        [traits.ERROR] = { value = "client" },
    },
})

M.ValidationException = schema.new({
    id = id.from(_N, "ValidationException"),
    type = "structure",
    traits = {
        [traits.ERROR] = { value = "client" },
    },
    members = {
        message = schema.new({
            id = id.from(_N, "ValidationException", "message"),
            type = "string",
            name = "message",
            target_id = prelude.String.id,
        }),
        reason = schema.new({
            id = id.from(_N, "ValidationException", "reason"),
            type = "string",
            name = "reason",
            target_id = prelude.String.id,
        }),
    },
})

M.AwsCredentials = schema.new({
    id = id.from(_N, "AwsCredentials"),
    type = "structure",
    members = {
        accessKeyId = schema.new({
            id = id.from(_N, "AwsCredentials", "accessKeyId"),
            type = "string",
            name = "accessKeyId",
            target_id = prelude.String.id,
        }),
        secretAccessKey = schema.new({
            id = id.from(_N, "AwsCredentials", "secretAccessKey"),
            type = "string",
            name = "secretAccessKey",
            target_id = prelude.String.id,
        }),
        sessionToken = schema.new({
            id = id.from(_N, "AwsCredentials", "sessionToken"),
            type = "string",
            name = "sessionToken",
            target_id = prelude.String.id,
        }),
        expiration = schema.new({
            id = id.from(_N, "AwsCredentials", "expiration"),
            type = "long",
            name = "expiration",
            target_id = prelude.Long.id,
            traits = {
                [traits.DEFAULT] = { value = 0 },
            },
        }),
    },
})

M.CreateChangesetInput = schema.new({
    id = id.from(_N, "CreateChangesetRequest"),
    type = "structure",
    members = {
        clientToken = schema.new({
            id = id.from(_N, "CreateChangesetInput", "clientToken"),
            type = "string",
            name = "clientToken",
            target_id = prelude.String.id,
            traits = {
                [traits.IDEMPOTENCY_TOKEN] = {},
            },
        }),
        datasetId = schema.new({
            id = id.from(_N, "CreateChangesetInput", "datasetId"),
            type = "string",
            name = "datasetId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
        changeType = schema.new({
            id = id.from(_N, "CreateChangesetInput", "changeType"),
            type = "string",
            name = "changeType",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        sourceParams = schema.new({
            id = id.from(_N, "CreateChangesetInput", "sourceParams"),
            type = "map",
            name = "sourceParams",
            target_id = prelude.Document.id,
            map_key = prelude.String,
            map_value = prelude.String,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        formatParams = schema.new({
            id = id.from(_N, "CreateChangesetInput", "formatParams"),
            type = "map",
            name = "formatParams",
            target_id = prelude.Document.id,
            map_key = prelude.String,
            map_value = prelude.String,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.CreateChangesetOutput = schema.new({
    id = id.from(_N, "CreateChangesetResponse"),
    type = "structure",
    members = {
        datasetId = schema.new({
            id = id.from(_N, "CreateChangesetOutput", "datasetId"),
            type = "string",
            name = "datasetId",
            target_id = prelude.String.id,
        }),
        changesetId = schema.new({
            id = id.from(_N, "CreateChangesetOutput", "changesetId"),
            type = "string",
            name = "changesetId",
            target_id = prelude.String.id,
        }),
    },
})

M.LimitExceededException = schema.new({
    id = id.from(_N, "LimitExceededException"),
    type = "structure",
    traits = {
        [traits.ERROR] = { value = "client" },
    },
    members = {
        message = schema.new({
            id = id.from(_N, "LimitExceededException", "message"),
            type = "string",
            name = "message",
            target_id = prelude.String.id,
        }),
    },
})

M.DatasetOwnerInfo = schema.new({
    id = id.from(_N, "DatasetOwnerInfo"),
    type = "structure",
    members = {
        name = schema.new({
            id = id.from(_N, "DatasetOwnerInfo", "name"),
            type = "string",
            name = "name",
            target_id = prelude.String.id,
        }),
        phoneNumber = schema.new({
            id = id.from(_N, "DatasetOwnerInfo", "phoneNumber"),
            type = "string",
            name = "phoneNumber",
            target_id = prelude.String.id,
        }),
        email = schema.new({
            id = id.from(_N, "DatasetOwnerInfo", "email"),
            type = "string",
            name = "email",
            target_id = prelude.String.id,
        }),
    },
})

M.ResourcePermission = schema.new({
    id = id.from(_N, "ResourcePermission"),
    type = "structure",
    members = {
        permission = schema.new({
            id = id.from(_N, "ResourcePermission", "permission"),
            type = "string",
            name = "permission",
            target_id = prelude.String.id,
        }),
    },
})

M.PermissionGroupParams = schema.new({
    id = id.from(_N, "PermissionGroupParams"),
    type = "structure",
    members = {
        permissionGroupId = schema.new({
            id = id.from(_N, "PermissionGroupParams", "permissionGroupId"),
            type = "string",
            name = "permissionGroupId",
            target_id = prelude.String.id,
        }),
        datasetPermissions = schema.new({
            id = id.from(_N, "PermissionGroupParams", "datasetPermissions"),
            type = "list",
            name = "datasetPermissions",
            target_id = prelude.Document.id,
            list_member = M.ResourcePermission,
        }),
    },
})

M.ColumnDefinition = schema.new({
    id = id.from(_N, "ColumnDefinition"),
    type = "structure",
    members = {
        dataType = schema.new({
            id = id.from(_N, "ColumnDefinition", "dataType"),
            type = "string",
            name = "dataType",
            target_id = prelude.String.id,
        }),
        columnName = schema.new({
            id = id.from(_N, "ColumnDefinition", "columnName"),
            type = "string",
            name = "columnName",
            target_id = prelude.String.id,
        }),
        columnDescription = schema.new({
            id = id.from(_N, "ColumnDefinition", "columnDescription"),
            type = "string",
            name = "columnDescription",
            target_id = prelude.String.id,
        }),
    },
})

M.SchemaDefinition = schema.new({
    id = id.from(_N, "SchemaDefinition"),
    type = "structure",
    members = {
        columns = schema.new({
            id = id.from(_N, "SchemaDefinition", "columns"),
            type = "list",
            name = "columns",
            target_id = prelude.Document.id,
            list_member = M.ColumnDefinition,
        }),
        primaryKeyColumns = schema.new({
            id = id.from(_N, "SchemaDefinition", "primaryKeyColumns"),
            type = "list",
            name = "primaryKeyColumns",
            target_id = prelude.Document.id,
            list_member = prelude.String,
        }),
    },
})

M.SchemaUnion = schema.new({
    id = id.from(_N, "SchemaUnion"),
    type = "structure",
    members = {
        tabularSchemaConfig = schema.new({
            id = id.from(_N, "SchemaUnion", "tabularSchemaConfig"),
            type = "structure",
            name = "tabularSchemaConfig",
            target_id = id.from(_N, "SchemaDefinition"),
            target = M.SchemaDefinition,
        }),
    },
})

M.CreateDatasetInput = schema.new({
    id = id.from(_N, "CreateDatasetRequest"),
    type = "structure",
    members = {
        clientToken = schema.new({
            id = id.from(_N, "CreateDatasetInput", "clientToken"),
            type = "string",
            name = "clientToken",
            target_id = prelude.String.id,
            traits = {
                [traits.IDEMPOTENCY_TOKEN] = {},
            },
        }),
        datasetTitle = schema.new({
            id = id.from(_N, "CreateDatasetInput", "datasetTitle"),
            type = "string",
            name = "datasetTitle",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        kind = schema.new({
            id = id.from(_N, "CreateDatasetInput", "kind"),
            type = "string",
            name = "kind",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        datasetDescription = schema.new({
            id = id.from(_N, "CreateDatasetInput", "datasetDescription"),
            type = "string",
            name = "datasetDescription",
            target_id = prelude.String.id,
        }),
        ownerInfo = schema.new({
            id = id.from(_N, "CreateDatasetInput", "ownerInfo"),
            type = "structure",
            name = "ownerInfo",
            target_id = id.from(_N, "DatasetOwnerInfo"),
            target = M.DatasetOwnerInfo,
        }),
        permissionGroupParams = schema.new({
            id = id.from(_N, "CreateDatasetInput", "permissionGroupParams"),
            type = "structure",
            name = "permissionGroupParams",
            target_id = id.from(_N, "PermissionGroupParams"),
            target = M.PermissionGroupParams,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        alias = schema.new({
            id = id.from(_N, "CreateDatasetInput", "alias"),
            type = "string",
            name = "alias",
            target_id = prelude.String.id,
        }),
        schemaDefinition = schema.new({
            id = id.from(_N, "CreateDatasetInput", "schemaDefinition"),
            type = "structure",
            name = "schemaDefinition",
            target_id = id.from(_N, "SchemaUnion"),
            target = M.SchemaUnion,
        }),
    },
})

M.CreateDatasetOutput = schema.new({
    id = id.from(_N, "CreateDatasetResponse"),
    type = "structure",
    members = {
        datasetId = schema.new({
            id = id.from(_N, "CreateDatasetOutput", "datasetId"),
            type = "string",
            name = "datasetId",
            target_id = prelude.String.id,
        }),
    },
})

M.DataViewDestinationTypeParams = schema.new({
    id = id.from(_N, "DataViewDestinationTypeParams"),
    type = "structure",
    members = {
        destinationType = schema.new({
            id = id.from(_N, "DataViewDestinationTypeParams", "destinationType"),
            type = "string",
            name = "destinationType",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        s3DestinationExportFileFormat = schema.new({
            id = id.from(_N, "DataViewDestinationTypeParams", "s3DestinationExportFileFormat"),
            type = "string",
            name = "s3DestinationExportFileFormat",
            target_id = prelude.String.id,
        }),
        s3DestinationExportFileFormatOptions = schema.new({
            id = id.from(_N, "DataViewDestinationTypeParams", "s3DestinationExportFileFormatOptions"),
            type = "map",
            name = "s3DestinationExportFileFormatOptions",
            target_id = prelude.Document.id,
            map_key = prelude.String,
            map_value = prelude.String,
        }),
    },
})

M.CreateDataViewInput = schema.new({
    id = id.from(_N, "CreateDataViewRequest"),
    type = "structure",
    members = {
        clientToken = schema.new({
            id = id.from(_N, "CreateDataViewInput", "clientToken"),
            type = "string",
            name = "clientToken",
            target_id = prelude.String.id,
            traits = {
                [traits.IDEMPOTENCY_TOKEN] = {},
            },
        }),
        datasetId = schema.new({
            id = id.from(_N, "CreateDataViewInput", "datasetId"),
            type = "string",
            name = "datasetId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
        autoUpdate = schema.new({
            id = id.from(_N, "CreateDataViewInput", "autoUpdate"),
            type = "boolean",
            name = "autoUpdate",
            target_id = prelude.Boolean.id,
            traits = {
                [traits.DEFAULT] = { value = false },
            },
        }),
        sortColumns = schema.new({
            id = id.from(_N, "CreateDataViewInput", "sortColumns"),
            type = "list",
            name = "sortColumns",
            target_id = prelude.Document.id,
            list_member = prelude.String,
        }),
        partitionColumns = schema.new({
            id = id.from(_N, "CreateDataViewInput", "partitionColumns"),
            type = "list",
            name = "partitionColumns",
            target_id = prelude.Document.id,
            list_member = prelude.String,
        }),
        asOfTimestamp = schema.new({
            id = id.from(_N, "CreateDataViewInput", "asOfTimestamp"),
            type = "long",
            name = "asOfTimestamp",
            target_id = prelude.Long.id,
            traits = {
                [traits.DEFAULT] = { value = nil },
            },
        }),
        destinationTypeParams = schema.new({
            id = id.from(_N, "CreateDataViewInput", "destinationTypeParams"),
            type = "structure",
            name = "destinationTypeParams",
            target_id = id.from(_N, "DataViewDestinationTypeParams"),
            target = M.DataViewDestinationTypeParams,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.CreateDataViewOutput = schema.new({
    id = id.from(_N, "CreateDataViewResponse"),
    type = "structure",
    members = {
        datasetId = schema.new({
            id = id.from(_N, "CreateDataViewOutput", "datasetId"),
            type = "string",
            name = "datasetId",
            target_id = prelude.String.id,
        }),
        dataViewId = schema.new({
            id = id.from(_N, "CreateDataViewOutput", "dataViewId"),
            type = "string",
            name = "dataViewId",
            target_id = prelude.String.id,
        }),
    },
})

M.CreatePermissionGroupInput = schema.new({
    id = id.from(_N, "CreatePermissionGroupRequest"),
    type = "structure",
    members = {
        name = schema.new({
            id = id.from(_N, "CreatePermissionGroupInput", "name"),
            type = "string",
            name = "name",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        description = schema.new({
            id = id.from(_N, "CreatePermissionGroupInput", "description"),
            type = "string",
            name = "description",
            target_id = prelude.String.id,
        }),
        applicationPermissions = schema.new({
            id = id.from(_N, "CreatePermissionGroupInput", "applicationPermissions"),
            type = "list",
            name = "applicationPermissions",
            target_id = prelude.Document.id,
            list_member = prelude.String,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        clientToken = schema.new({
            id = id.from(_N, "CreatePermissionGroupInput", "clientToken"),
            type = "string",
            name = "clientToken",
            target_id = prelude.String.id,
            traits = {
                [traits.IDEMPOTENCY_TOKEN] = {},
            },
        }),
    },
})

M.CreatePermissionGroupOutput = schema.new({
    id = id.from(_N, "CreatePermissionGroupResponse"),
    type = "structure",
    members = {
        permissionGroupId = schema.new({
            id = id.from(_N, "CreatePermissionGroupOutput", "permissionGroupId"),
            type = "string",
            name = "permissionGroupId",
            target_id = prelude.String.id,
        }),
    },
})

M.CreateUserInput = schema.new({
    id = id.from(_N, "CreateUserRequest"),
    type = "structure",
    members = {
        emailAddress = schema.new({
            id = id.from(_N, "CreateUserInput", "emailAddress"),
            type = "string",
            name = "emailAddress",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        type = schema.new({
            id = id.from(_N, "CreateUserInput", "type"),
            type = "string",
            name = "type",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        firstName = schema.new({
            id = id.from(_N, "CreateUserInput", "firstName"),
            type = "string",
            name = "firstName",
            target_id = prelude.String.id,
        }),
        lastName = schema.new({
            id = id.from(_N, "CreateUserInput", "lastName"),
            type = "string",
            name = "lastName",
            target_id = prelude.String.id,
        }),
        apiAccess = schema.new({
            id = id.from(_N, "CreateUserInput", "apiAccess"),
            type = "string",
            name = "apiAccess",
            target_id = prelude.String.id,
        }),
        apiAccessPrincipalArn = schema.new({
            id = id.from(_N, "CreateUserInput", "apiAccessPrincipalArn"),
            type = "string",
            name = "apiAccessPrincipalArn",
            target_id = prelude.String.id,
        }),
        clientToken = schema.new({
            id = id.from(_N, "CreateUserInput", "clientToken"),
            type = "string",
            name = "clientToken",
            target_id = prelude.String.id,
            traits = {
                [traits.IDEMPOTENCY_TOKEN] = {},
            },
        }),
    },
})

M.CreateUserOutput = schema.new({
    id = id.from(_N, "CreateUserResponse"),
    type = "structure",
    members = {
        userId = schema.new({
            id = id.from(_N, "CreateUserOutput", "userId"),
            type = "string",
            name = "userId",
            target_id = prelude.String.id,
        }),
    },
})

M.DeleteDatasetInput = schema.new({
    id = id.from(_N, "DeleteDatasetRequest"),
    type = "structure",
    members = {
        clientToken = schema.new({
            id = id.from(_N, "DeleteDatasetInput", "clientToken"),
            type = "string",
            name = "clientToken",
            target_id = prelude.String.id,
            traits = {
                [traits.HTTP_QUERY] = { name = "clientToken" },
                [traits.IDEMPOTENCY_TOKEN] = {},
            },
        }),
        datasetId = schema.new({
            id = id.from(_N, "DeleteDatasetInput", "datasetId"),
            type = "string",
            name = "datasetId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
    },
})

M.DeleteDatasetOutput = schema.new({
    id = id.from(_N, "DeleteDatasetResponse"),
    type = "structure",
    members = {
        datasetId = schema.new({
            id = id.from(_N, "DeleteDatasetOutput", "datasetId"),
            type = "string",
            name = "datasetId",
            target_id = prelude.String.id,
        }),
    },
})

M.DeletePermissionGroupInput = schema.new({
    id = id.from(_N, "DeletePermissionGroupRequest"),
    type = "structure",
    members = {
        permissionGroupId = schema.new({
            id = id.from(_N, "DeletePermissionGroupInput", "permissionGroupId"),
            type = "string",
            name = "permissionGroupId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
        clientToken = schema.new({
            id = id.from(_N, "DeletePermissionGroupInput", "clientToken"),
            type = "string",
            name = "clientToken",
            target_id = prelude.String.id,
            traits = {
                [traits.HTTP_QUERY] = { name = "clientToken" },
                [traits.IDEMPOTENCY_TOKEN] = {},
            },
        }),
    },
})

M.DeletePermissionGroupOutput = schema.new({
    id = id.from(_N, "DeletePermissionGroupResponse"),
    type = "structure",
    members = {
        permissionGroupId = schema.new({
            id = id.from(_N, "DeletePermissionGroupOutput", "permissionGroupId"),
            type = "string",
            name = "permissionGroupId",
            target_id = prelude.String.id,
        }),
    },
})

M.DisableUserInput = schema.new({
    id = id.from(_N, "DisableUserRequest"),
    type = "structure",
    members = {
        userId = schema.new({
            id = id.from(_N, "DisableUserInput", "userId"),
            type = "string",
            name = "userId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
        clientToken = schema.new({
            id = id.from(_N, "DisableUserInput", "clientToken"),
            type = "string",
            name = "clientToken",
            target_id = prelude.String.id,
            traits = {
                [traits.IDEMPOTENCY_TOKEN] = {},
            },
        }),
    },
})

M.DisableUserOutput = schema.new({
    id = id.from(_N, "DisableUserResponse"),
    type = "structure",
    members = {
        userId = schema.new({
            id = id.from(_N, "DisableUserOutput", "userId"),
            type = "string",
            name = "userId",
            target_id = prelude.String.id,
        }),
    },
})

M.DisassociateUserFromPermissionGroupInput = schema.new({
    id = id.from(_N, "DisassociateUserFromPermissionGroupRequest"),
    type = "structure",
    members = {
        permissionGroupId = schema.new({
            id = id.from(_N, "DisassociateUserFromPermissionGroupInput", "permissionGroupId"),
            type = "string",
            name = "permissionGroupId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
        userId = schema.new({
            id = id.from(_N, "DisassociateUserFromPermissionGroupInput", "userId"),
            type = "string",
            name = "userId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
        clientToken = schema.new({
            id = id.from(_N, "DisassociateUserFromPermissionGroupInput", "clientToken"),
            type = "string",
            name = "clientToken",
            target_id = prelude.String.id,
            traits = {
                [traits.HTTP_QUERY] = { name = "clientToken" },
                [traits.IDEMPOTENCY_TOKEN] = {},
            },
        }),
    },
})

M.DisassociateUserFromPermissionGroupOutput = schema.new({
    id = id.from(_N, "DisassociateUserFromPermissionGroupResponse"),
    type = "structure",
    members = {
        statusCode = schema.new({
            id = id.from(_N, "DisassociateUserFromPermissionGroupOutput", "statusCode"),
            type = "integer",
            name = "statusCode",
            target_id = prelude.Integer.id,
            traits = {
                [traits.DEFAULT] = { value = 0 },
                [traits.HTTP_RESPONSE_CODE] = {},
            },
        }),
    },
})

M.EnableUserInput = schema.new({
    id = id.from(_N, "EnableUserRequest"),
    type = "structure",
    members = {
        userId = schema.new({
            id = id.from(_N, "EnableUserInput", "userId"),
            type = "string",
            name = "userId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
        clientToken = schema.new({
            id = id.from(_N, "EnableUserInput", "clientToken"),
            type = "string",
            name = "clientToken",
            target_id = prelude.String.id,
            traits = {
                [traits.IDEMPOTENCY_TOKEN] = {},
            },
        }),
    },
})

M.EnableUserOutput = schema.new({
    id = id.from(_N, "EnableUserResponse"),
    type = "structure",
    members = {
        userId = schema.new({
            id = id.from(_N, "EnableUserOutput", "userId"),
            type = "string",
            name = "userId",
            target_id = prelude.String.id,
        }),
    },
})

M.GetChangesetInput = schema.new({
    id = id.from(_N, "GetChangesetRequest"),
    type = "structure",
    members = {
        datasetId = schema.new({
            id = id.from(_N, "GetChangesetInput", "datasetId"),
            type = "string",
            name = "datasetId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
        changesetId = schema.new({
            id = id.from(_N, "GetChangesetInput", "changesetId"),
            type = "string",
            name = "changesetId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
    },
})

M.ChangesetErrorInfo = schema.new({
    id = id.from(_N, "ChangesetErrorInfo"),
    type = "structure",
    members = {
        errorMessage = schema.new({
            id = id.from(_N, "ChangesetErrorInfo", "errorMessage"),
            type = "string",
            name = "errorMessage",
            target_id = prelude.String.id,
        }),
        errorCategory = schema.new({
            id = id.from(_N, "ChangesetErrorInfo", "errorCategory"),
            type = "string",
            name = "errorCategory",
            target_id = prelude.String.id,
        }),
    },
})

M.GetChangesetOutput = schema.new({
    id = id.from(_N, "GetChangesetResponse"),
    type = "structure",
    members = {
        changesetId = schema.new({
            id = id.from(_N, "GetChangesetOutput", "changesetId"),
            type = "string",
            name = "changesetId",
            target_id = prelude.String.id,
        }),
        changesetArn = schema.new({
            id = id.from(_N, "GetChangesetOutput", "changesetArn"),
            type = "string",
            name = "changesetArn",
            target_id = prelude.String.id,
        }),
        datasetId = schema.new({
            id = id.from(_N, "GetChangesetOutput", "datasetId"),
            type = "string",
            name = "datasetId",
            target_id = prelude.String.id,
        }),
        changeType = schema.new({
            id = id.from(_N, "GetChangesetOutput", "changeType"),
            type = "string",
            name = "changeType",
            target_id = prelude.String.id,
        }),
        sourceParams = schema.new({
            id = id.from(_N, "GetChangesetOutput", "sourceParams"),
            type = "map",
            name = "sourceParams",
            target_id = prelude.Document.id,
            map_key = prelude.String,
            map_value = prelude.String,
        }),
        formatParams = schema.new({
            id = id.from(_N, "GetChangesetOutput", "formatParams"),
            type = "map",
            name = "formatParams",
            target_id = prelude.Document.id,
            map_key = prelude.String,
            map_value = prelude.String,
        }),
        createTime = schema.new({
            id = id.from(_N, "GetChangesetOutput", "createTime"),
            type = "long",
            name = "createTime",
            target_id = prelude.Long.id,
            traits = {
                [traits.DEFAULT] = { value = 0 },
            },
        }),
        status = schema.new({
            id = id.from(_N, "GetChangesetOutput", "status"),
            type = "string",
            name = "status",
            target_id = prelude.String.id,
        }),
        errorInfo = schema.new({
            id = id.from(_N, "GetChangesetOutput", "errorInfo"),
            type = "structure",
            name = "errorInfo",
            target_id = id.from(_N, "ChangesetErrorInfo"),
            target = M.ChangesetErrorInfo,
        }),
        activeUntilTimestamp = schema.new({
            id = id.from(_N, "GetChangesetOutput", "activeUntilTimestamp"),
            type = "long",
            name = "activeUntilTimestamp",
            target_id = prelude.Long.id,
            traits = {
                [traits.DEFAULT] = { value = nil },
            },
        }),
        activeFromTimestamp = schema.new({
            id = id.from(_N, "GetChangesetOutput", "activeFromTimestamp"),
            type = "long",
            name = "activeFromTimestamp",
            target_id = prelude.Long.id,
            traits = {
                [traits.DEFAULT] = { value = nil },
            },
        }),
        updatesChangesetId = schema.new({
            id = id.from(_N, "GetChangesetOutput", "updatesChangesetId"),
            type = "string",
            name = "updatesChangesetId",
            target_id = prelude.String.id,
        }),
        updatedByChangesetId = schema.new({
            id = id.from(_N, "GetChangesetOutput", "updatedByChangesetId"),
            type = "string",
            name = "updatedByChangesetId",
            target_id = prelude.String.id,
        }),
    },
})

M.GetDatasetInput = schema.new({
    id = id.from(_N, "GetDatasetRequest"),
    type = "structure",
    members = {
        datasetId = schema.new({
            id = id.from(_N, "GetDatasetInput", "datasetId"),
            type = "string",
            name = "datasetId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
    },
})

M.GetDatasetOutput = schema.new({
    id = id.from(_N, "GetDatasetResponse"),
    type = "structure",
    members = {
        datasetId = schema.new({
            id = id.from(_N, "GetDatasetOutput", "datasetId"),
            type = "string",
            name = "datasetId",
            target_id = prelude.String.id,
        }),
        datasetArn = schema.new({
            id = id.from(_N, "GetDatasetOutput", "datasetArn"),
            type = "string",
            name = "datasetArn",
            target_id = prelude.String.id,
        }),
        datasetTitle = schema.new({
            id = id.from(_N, "GetDatasetOutput", "datasetTitle"),
            type = "string",
            name = "datasetTitle",
            target_id = prelude.String.id,
        }),
        kind = schema.new({
            id = id.from(_N, "GetDatasetOutput", "kind"),
            type = "string",
            name = "kind",
            target_id = prelude.String.id,
        }),
        datasetDescription = schema.new({
            id = id.from(_N, "GetDatasetOutput", "datasetDescription"),
            type = "string",
            name = "datasetDescription",
            target_id = prelude.String.id,
        }),
        createTime = schema.new({
            id = id.from(_N, "GetDatasetOutput", "createTime"),
            type = "long",
            name = "createTime",
            target_id = prelude.Long.id,
            traits = {
                [traits.DEFAULT] = { value = 0 },
            },
        }),
        lastModifiedTime = schema.new({
            id = id.from(_N, "GetDatasetOutput", "lastModifiedTime"),
            type = "long",
            name = "lastModifiedTime",
            target_id = prelude.Long.id,
            traits = {
                [traits.DEFAULT] = { value = 0 },
            },
        }),
        schemaDefinition = schema.new({
            id = id.from(_N, "GetDatasetOutput", "schemaDefinition"),
            type = "structure",
            name = "schemaDefinition",
            target_id = id.from(_N, "SchemaUnion"),
            target = M.SchemaUnion,
        }),
        alias = schema.new({
            id = id.from(_N, "GetDatasetOutput", "alias"),
            type = "string",
            name = "alias",
            target_id = prelude.String.id,
        }),
        status = schema.new({
            id = id.from(_N, "GetDatasetOutput", "status"),
            type = "string",
            name = "status",
            target_id = prelude.String.id,
        }),
    },
})

M.GetDataViewInput = schema.new({
    id = id.from(_N, "GetDataViewRequest"),
    type = "structure",
    members = {
        dataViewId = schema.new({
            id = id.from(_N, "GetDataViewInput", "dataViewId"),
            type = "string",
            name = "dataViewId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
        datasetId = schema.new({
            id = id.from(_N, "GetDataViewInput", "datasetId"),
            type = "string",
            name = "datasetId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
    },
})

M.DataViewErrorInfo = schema.new({
    id = id.from(_N, "DataViewErrorInfo"),
    type = "structure",
    members = {
        errorMessage = schema.new({
            id = id.from(_N, "DataViewErrorInfo", "errorMessage"),
            type = "string",
            name = "errorMessage",
            target_id = prelude.String.id,
        }),
        errorCategory = schema.new({
            id = id.from(_N, "DataViewErrorInfo", "errorCategory"),
            type = "string",
            name = "errorCategory",
            target_id = prelude.String.id,
        }),
    },
})

M.GetDataViewOutput = schema.new({
    id = id.from(_N, "GetDataViewResponse"),
    type = "structure",
    members = {
        autoUpdate = schema.new({
            id = id.from(_N, "GetDataViewOutput", "autoUpdate"),
            type = "boolean",
            name = "autoUpdate",
            target_id = prelude.Boolean.id,
            traits = {
                [traits.DEFAULT] = { value = false },
            },
        }),
        partitionColumns = schema.new({
            id = id.from(_N, "GetDataViewOutput", "partitionColumns"),
            type = "list",
            name = "partitionColumns",
            target_id = prelude.Document.id,
            list_member = prelude.String,
        }),
        datasetId = schema.new({
            id = id.from(_N, "GetDataViewOutput", "datasetId"),
            type = "string",
            name = "datasetId",
            target_id = prelude.String.id,
        }),
        asOfTimestamp = schema.new({
            id = id.from(_N, "GetDataViewOutput", "asOfTimestamp"),
            type = "long",
            name = "asOfTimestamp",
            target_id = prelude.Long.id,
            traits = {
                [traits.DEFAULT] = { value = nil },
            },
        }),
        errorInfo = schema.new({
            id = id.from(_N, "GetDataViewOutput", "errorInfo"),
            type = "structure",
            name = "errorInfo",
            target_id = id.from(_N, "DataViewErrorInfo"),
            target = M.DataViewErrorInfo,
        }),
        lastModifiedTime = schema.new({
            id = id.from(_N, "GetDataViewOutput", "lastModifiedTime"),
            type = "long",
            name = "lastModifiedTime",
            target_id = prelude.Long.id,
            traits = {
                [traits.DEFAULT] = { value = 0 },
            },
        }),
        createTime = schema.new({
            id = id.from(_N, "GetDataViewOutput", "createTime"),
            type = "long",
            name = "createTime",
            target_id = prelude.Long.id,
            traits = {
                [traits.DEFAULT] = { value = 0 },
            },
        }),
        sortColumns = schema.new({
            id = id.from(_N, "GetDataViewOutput", "sortColumns"),
            type = "list",
            name = "sortColumns",
            target_id = prelude.Document.id,
            list_member = prelude.String,
        }),
        dataViewId = schema.new({
            id = id.from(_N, "GetDataViewOutput", "dataViewId"),
            type = "string",
            name = "dataViewId",
            target_id = prelude.String.id,
        }),
        dataViewArn = schema.new({
            id = id.from(_N, "GetDataViewOutput", "dataViewArn"),
            type = "string",
            name = "dataViewArn",
            target_id = prelude.String.id,
        }),
        destinationTypeParams = schema.new({
            id = id.from(_N, "GetDataViewOutput", "destinationTypeParams"),
            type = "structure",
            name = "destinationTypeParams",
            target_id = id.from(_N, "DataViewDestinationTypeParams"),
            target = M.DataViewDestinationTypeParams,
        }),
        status = schema.new({
            id = id.from(_N, "GetDataViewOutput", "status"),
            type = "string",
            name = "status",
            target_id = prelude.String.id,
        }),
    },
})

M.GetExternalDataViewAccessDetailsInput = schema.new({
    id = id.from(_N, "GetExternalDataViewAccessDetailsRequest"),
    type = "structure",
    members = {
        dataViewId = schema.new({
            id = id.from(_N, "GetExternalDataViewAccessDetailsInput", "dataViewId"),
            type = "string",
            name = "dataViewId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
        datasetId = schema.new({
            id = id.from(_N, "GetExternalDataViewAccessDetailsInput", "datasetId"),
            type = "string",
            name = "datasetId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
    },
})

M.S3Location = schema.new({
    id = id.from(_N, "S3Location"),
    type = "structure",
    members = {
        bucket = schema.new({
            id = id.from(_N, "S3Location", "bucket"),
            type = "string",
            name = "bucket",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        key = schema.new({
            id = id.from(_N, "S3Location", "key"),
            type = "string",
            name = "key",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.GetExternalDataViewAccessDetailsOutput = schema.new({
    id = id.from(_N, "GetExternalDataViewAccessDetailsResponse"),
    type = "structure",
    members = {
        credentials = schema.new({
            id = id.from(_N, "GetExternalDataViewAccessDetailsOutput", "credentials"),
            type = "structure",
            name = "credentials",
            target_id = id.from(_N, "AwsCredentials"),
            target = M.AwsCredentials,
        }),
        s3Location = schema.new({
            id = id.from(_N, "GetExternalDataViewAccessDetailsOutput", "s3Location"),
            type = "structure",
            name = "s3Location",
            target_id = id.from(_N, "S3Location"),
            target = M.S3Location,
        }),
    },
})

M.GetPermissionGroupInput = schema.new({
    id = id.from(_N, "GetPermissionGroupRequest"),
    type = "structure",
    members = {
        permissionGroupId = schema.new({
            id = id.from(_N, "GetPermissionGroupInput", "permissionGroupId"),
            type = "string",
            name = "permissionGroupId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
    },
})

M.PermissionGroup = schema.new({
    id = id.from(_N, "PermissionGroup"),
    type = "structure",
    members = {
        permissionGroupId = schema.new({
            id = id.from(_N, "PermissionGroup", "permissionGroupId"),
            type = "string",
            name = "permissionGroupId",
            target_id = prelude.String.id,
        }),
        name = schema.new({
            id = id.from(_N, "PermissionGroup", "name"),
            type = "string",
            name = "name",
            target_id = prelude.String.id,
        }),
        description = schema.new({
            id = id.from(_N, "PermissionGroup", "description"),
            type = "string",
            name = "description",
            target_id = prelude.String.id,
        }),
        applicationPermissions = schema.new({
            id = id.from(_N, "PermissionGroup", "applicationPermissions"),
            type = "list",
            name = "applicationPermissions",
            target_id = prelude.Document.id,
            list_member = prelude.String,
        }),
        createTime = schema.new({
            id = id.from(_N, "PermissionGroup", "createTime"),
            type = "long",
            name = "createTime",
            target_id = prelude.Long.id,
            traits = {
                [traits.DEFAULT] = { value = 0 },
            },
        }),
        lastModifiedTime = schema.new({
            id = id.from(_N, "PermissionGroup", "lastModifiedTime"),
            type = "long",
            name = "lastModifiedTime",
            target_id = prelude.Long.id,
            traits = {
                [traits.DEFAULT] = { value = 0 },
            },
        }),
        membershipStatus = schema.new({
            id = id.from(_N, "PermissionGroup", "membershipStatus"),
            type = "string",
            name = "membershipStatus",
            target_id = prelude.String.id,
        }),
    },
})

M.GetPermissionGroupOutput = schema.new({
    id = id.from(_N, "GetPermissionGroupResponse"),
    type = "structure",
    members = {
        permissionGroup = schema.new({
            id = id.from(_N, "GetPermissionGroupOutput", "permissionGroup"),
            type = "structure",
            name = "permissionGroup",
            target_id = id.from(_N, "PermissionGroup"),
            target = M.PermissionGroup,
        }),
    },
})

M.GetProgrammaticAccessCredentialsInput = schema.new({
    id = id.from(_N, "GetProgrammaticAccessCredentialsRequest"),
    type = "structure",
    members = {
        durationInMinutes = schema.new({
            id = id.from(_N, "GetProgrammaticAccessCredentialsInput", "durationInMinutes"),
            type = "long",
            name = "durationInMinutes",
            target_id = prelude.Long.id,
            traits = {
                [traits.HTTP_QUERY] = { name = "durationInMinutes" },
            },
        }),
        environmentId = schema.new({
            id = id.from(_N, "GetProgrammaticAccessCredentialsInput", "environmentId"),
            type = "string",
            name = "environmentId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_QUERY] = { name = "environmentId" },
            },
        }),
    },
})

M.Credentials = schema.new({
    id = id.from(_N, "Credentials"),
    type = "structure",
    members = {
        accessKeyId = schema.new({
            id = id.from(_N, "Credentials", "accessKeyId"),
            type = "string",
            name = "accessKeyId",
            target_id = prelude.String.id,
        }),
        secretAccessKey = schema.new({
            id = id.from(_N, "Credentials", "secretAccessKey"),
            type = "string",
            name = "secretAccessKey",
            target_id = prelude.String.id,
        }),
        sessionToken = schema.new({
            id = id.from(_N, "Credentials", "sessionToken"),
            type = "string",
            name = "sessionToken",
            target_id = prelude.String.id,
        }),
    },
})

M.GetProgrammaticAccessCredentialsOutput = schema.new({
    id = id.from(_N, "GetProgrammaticAccessCredentialsResponse"),
    type = "structure",
    members = {
        credentials = schema.new({
            id = id.from(_N, "GetProgrammaticAccessCredentialsOutput", "credentials"),
            type = "structure",
            name = "credentials",
            target_id = id.from(_N, "Credentials"),
            target = M.Credentials,
        }),
        durationInMinutes = schema.new({
            id = id.from(_N, "GetProgrammaticAccessCredentialsOutput", "durationInMinutes"),
            type = "long",
            name = "durationInMinutes",
            target_id = prelude.Long.id,
        }),
    },
})

M.GetUserInput = schema.new({
    id = id.from(_N, "GetUserRequest"),
    type = "structure",
    members = {
        userId = schema.new({
            id = id.from(_N, "GetUserInput", "userId"),
            type = "string",
            name = "userId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
    },
})

M.GetUserOutput = schema.new({
    id = id.from(_N, "GetUserResponse"),
    type = "structure",
    members = {
        userId = schema.new({
            id = id.from(_N, "GetUserOutput", "userId"),
            type = "string",
            name = "userId",
            target_id = prelude.String.id,
        }),
        status = schema.new({
            id = id.from(_N, "GetUserOutput", "status"),
            type = "string",
            name = "status",
            target_id = prelude.String.id,
        }),
        firstName = schema.new({
            id = id.from(_N, "GetUserOutput", "firstName"),
            type = "string",
            name = "firstName",
            target_id = prelude.String.id,
        }),
        lastName = schema.new({
            id = id.from(_N, "GetUserOutput", "lastName"),
            type = "string",
            name = "lastName",
            target_id = prelude.String.id,
        }),
        emailAddress = schema.new({
            id = id.from(_N, "GetUserOutput", "emailAddress"),
            type = "string",
            name = "emailAddress",
            target_id = prelude.String.id,
        }),
        type = schema.new({
            id = id.from(_N, "GetUserOutput", "type"),
            type = "string",
            name = "type",
            target_id = prelude.String.id,
        }),
        apiAccess = schema.new({
            id = id.from(_N, "GetUserOutput", "apiAccess"),
            type = "string",
            name = "apiAccess",
            target_id = prelude.String.id,
        }),
        apiAccessPrincipalArn = schema.new({
            id = id.from(_N, "GetUserOutput", "apiAccessPrincipalArn"),
            type = "string",
            name = "apiAccessPrincipalArn",
            target_id = prelude.String.id,
        }),
        createTime = schema.new({
            id = id.from(_N, "GetUserOutput", "createTime"),
            type = "long",
            name = "createTime",
            target_id = prelude.Long.id,
            traits = {
                [traits.DEFAULT] = { value = 0 },
            },
        }),
        lastEnabledTime = schema.new({
            id = id.from(_N, "GetUserOutput", "lastEnabledTime"),
            type = "long",
            name = "lastEnabledTime",
            target_id = prelude.Long.id,
            traits = {
                [traits.DEFAULT] = { value = 0 },
            },
        }),
        lastDisabledTime = schema.new({
            id = id.from(_N, "GetUserOutput", "lastDisabledTime"),
            type = "long",
            name = "lastDisabledTime",
            target_id = prelude.Long.id,
            traits = {
                [traits.DEFAULT] = { value = 0 },
            },
        }),
        lastModifiedTime = schema.new({
            id = id.from(_N, "GetUserOutput", "lastModifiedTime"),
            type = "long",
            name = "lastModifiedTime",
            target_id = prelude.Long.id,
            traits = {
                [traits.DEFAULT] = { value = 0 },
            },
        }),
        lastLoginTime = schema.new({
            id = id.from(_N, "GetUserOutput", "lastLoginTime"),
            type = "long",
            name = "lastLoginTime",
            target_id = prelude.Long.id,
            traits = {
                [traits.DEFAULT] = { value = 0 },
            },
        }),
    },
})

M.GetWorkingLocationInput = schema.new({
    id = id.from(_N, "GetWorkingLocationRequest"),
    type = "structure",
    members = {
        locationType = schema.new({
            id = id.from(_N, "GetWorkingLocationInput", "locationType"),
            type = "string",
            name = "locationType",
            target_id = prelude.String.id,
        }),
    },
})

M.GetWorkingLocationOutput = schema.new({
    id = id.from(_N, "GetWorkingLocationResponse"),
    type = "structure",
    members = {
        s3Uri = schema.new({
            id = id.from(_N, "GetWorkingLocationOutput", "s3Uri"),
            type = "string",
            name = "s3Uri",
            target_id = prelude.String.id,
        }),
        s3Path = schema.new({
            id = id.from(_N, "GetWorkingLocationOutput", "s3Path"),
            type = "string",
            name = "s3Path",
            target_id = prelude.String.id,
        }),
        s3Bucket = schema.new({
            id = id.from(_N, "GetWorkingLocationOutput", "s3Bucket"),
            type = "string",
            name = "s3Bucket",
            target_id = prelude.String.id,
        }),
    },
})

M.ListChangesetsInput = schema.new({
    id = id.from(_N, "ListChangesetsRequest"),
    type = "structure",
    members = {
        datasetId = schema.new({
            id = id.from(_N, "ListChangesetsInput", "datasetId"),
            type = "string",
            name = "datasetId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
        maxResults = schema.new({
            id = id.from(_N, "ListChangesetsInput", "maxResults"),
            type = "integer",
            name = "maxResults",
            target_id = prelude.Integer.id,
            traits = {
                [traits.HTTP_QUERY] = { name = "maxResults" },
            },
        }),
        nextToken = schema.new({
            id = id.from(_N, "ListChangesetsInput", "nextToken"),
            type = "string",
            name = "nextToken",
            target_id = prelude.String.id,
            traits = {
                [traits.HTTP_QUERY] = { name = "nextToken" },
            },
        }),
    },
})

M.ChangesetSummary = schema.new({
    id = id.from(_N, "ChangesetSummary"),
    type = "structure",
    members = {
        changesetId = schema.new({
            id = id.from(_N, "ChangesetSummary", "changesetId"),
            type = "string",
            name = "changesetId",
            target_id = prelude.String.id,
        }),
        changesetArn = schema.new({
            id = id.from(_N, "ChangesetSummary", "changesetArn"),
            type = "string",
            name = "changesetArn",
            target_id = prelude.String.id,
        }),
        datasetId = schema.new({
            id = id.from(_N, "ChangesetSummary", "datasetId"),
            type = "string",
            name = "datasetId",
            target_id = prelude.String.id,
        }),
        changeType = schema.new({
            id = id.from(_N, "ChangesetSummary", "changeType"),
            type = "string",
            name = "changeType",
            target_id = prelude.String.id,
        }),
        sourceParams = schema.new({
            id = id.from(_N, "ChangesetSummary", "sourceParams"),
            type = "map",
            name = "sourceParams",
            target_id = prelude.Document.id,
            map_key = prelude.String,
            map_value = prelude.String,
        }),
        formatParams = schema.new({
            id = id.from(_N, "ChangesetSummary", "formatParams"),
            type = "map",
            name = "formatParams",
            target_id = prelude.Document.id,
            map_key = prelude.String,
            map_value = prelude.String,
        }),
        createTime = schema.new({
            id = id.from(_N, "ChangesetSummary", "createTime"),
            type = "long",
            name = "createTime",
            target_id = prelude.Long.id,
            traits = {
                [traits.DEFAULT] = { value = 0 },
            },
        }),
        status = schema.new({
            id = id.from(_N, "ChangesetSummary", "status"),
            type = "string",
            name = "status",
            target_id = prelude.String.id,
        }),
        errorInfo = schema.new({
            id = id.from(_N, "ChangesetSummary", "errorInfo"),
            type = "structure",
            name = "errorInfo",
            target_id = id.from(_N, "ChangesetErrorInfo"),
            target = M.ChangesetErrorInfo,
        }),
        activeUntilTimestamp = schema.new({
            id = id.from(_N, "ChangesetSummary", "activeUntilTimestamp"),
            type = "long",
            name = "activeUntilTimestamp",
            target_id = prelude.Long.id,
            traits = {
                [traits.DEFAULT] = { value = nil },
            },
        }),
        activeFromTimestamp = schema.new({
            id = id.from(_N, "ChangesetSummary", "activeFromTimestamp"),
            type = "long",
            name = "activeFromTimestamp",
            target_id = prelude.Long.id,
            traits = {
                [traits.DEFAULT] = { value = nil },
            },
        }),
        updatesChangesetId = schema.new({
            id = id.from(_N, "ChangesetSummary", "updatesChangesetId"),
            type = "string",
            name = "updatesChangesetId",
            target_id = prelude.String.id,
        }),
        updatedByChangesetId = schema.new({
            id = id.from(_N, "ChangesetSummary", "updatedByChangesetId"),
            type = "string",
            name = "updatedByChangesetId",
            target_id = prelude.String.id,
        }),
    },
})

M.ListChangesetsOutput = schema.new({
    id = id.from(_N, "ListChangesetsResponse"),
    type = "structure",
    members = {
        changesets = schema.new({
            id = id.from(_N, "ListChangesetsOutput", "changesets"),
            type = "list",
            name = "changesets",
            target_id = prelude.Document.id,
            list_member = M.ChangesetSummary,
        }),
        nextToken = schema.new({
            id = id.from(_N, "ListChangesetsOutput", "nextToken"),
            type = "string",
            name = "nextToken",
            target_id = prelude.String.id,
        }),
    },
})

M.ListDatasetsInput = schema.new({
    id = id.from(_N, "ListDatasetsRequest"),
    type = "structure",
    members = {
        nextToken = schema.new({
            id = id.from(_N, "ListDatasetsInput", "nextToken"),
            type = "string",
            name = "nextToken",
            target_id = prelude.String.id,
            traits = {
                [traits.HTTP_QUERY] = { name = "nextToken" },
            },
        }),
        maxResults = schema.new({
            id = id.from(_N, "ListDatasetsInput", "maxResults"),
            type = "integer",
            name = "maxResults",
            target_id = prelude.Integer.id,
            traits = {
                [traits.HTTP_QUERY] = { name = "maxResults" },
            },
        }),
    },
})

M.Dataset = schema.new({
    id = id.from(_N, "Dataset"),
    type = "structure",
    members = {
        datasetId = schema.new({
            id = id.from(_N, "Dataset", "datasetId"),
            type = "string",
            name = "datasetId",
            target_id = prelude.String.id,
        }),
        datasetArn = schema.new({
            id = id.from(_N, "Dataset", "datasetArn"),
            type = "string",
            name = "datasetArn",
            target_id = prelude.String.id,
        }),
        datasetTitle = schema.new({
            id = id.from(_N, "Dataset", "datasetTitle"),
            type = "string",
            name = "datasetTitle",
            target_id = prelude.String.id,
        }),
        kind = schema.new({
            id = id.from(_N, "Dataset", "kind"),
            type = "string",
            name = "kind",
            target_id = prelude.String.id,
        }),
        datasetDescription = schema.new({
            id = id.from(_N, "Dataset", "datasetDescription"),
            type = "string",
            name = "datasetDescription",
            target_id = prelude.String.id,
        }),
        ownerInfo = schema.new({
            id = id.from(_N, "Dataset", "ownerInfo"),
            type = "structure",
            name = "ownerInfo",
            target_id = id.from(_N, "DatasetOwnerInfo"),
            target = M.DatasetOwnerInfo,
        }),
        createTime = schema.new({
            id = id.from(_N, "Dataset", "createTime"),
            type = "long",
            name = "createTime",
            target_id = prelude.Long.id,
            traits = {
                [traits.DEFAULT] = { value = 0 },
            },
        }),
        lastModifiedTime = schema.new({
            id = id.from(_N, "Dataset", "lastModifiedTime"),
            type = "long",
            name = "lastModifiedTime",
            target_id = prelude.Long.id,
            traits = {
                [traits.DEFAULT] = { value = 0 },
            },
        }),
        schemaDefinition = schema.new({
            id = id.from(_N, "Dataset", "schemaDefinition"),
            type = "structure",
            name = "schemaDefinition",
            target_id = id.from(_N, "SchemaUnion"),
            target = M.SchemaUnion,
        }),
        alias = schema.new({
            id = id.from(_N, "Dataset", "alias"),
            type = "string",
            name = "alias",
            target_id = prelude.String.id,
        }),
    },
})

M.ListDatasetsOutput = schema.new({
    id = id.from(_N, "ListDatasetsResponse"),
    type = "structure",
    members = {
        datasets = schema.new({
            id = id.from(_N, "ListDatasetsOutput", "datasets"),
            type = "list",
            name = "datasets",
            target_id = prelude.Document.id,
            list_member = M.Dataset,
        }),
        nextToken = schema.new({
            id = id.from(_N, "ListDatasetsOutput", "nextToken"),
            type = "string",
            name = "nextToken",
            target_id = prelude.String.id,
        }),
    },
})

M.ListDataViewsInput = schema.new({
    id = id.from(_N, "ListDataViewsRequest"),
    type = "structure",
    members = {
        datasetId = schema.new({
            id = id.from(_N, "ListDataViewsInput", "datasetId"),
            type = "string",
            name = "datasetId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
        nextToken = schema.new({
            id = id.from(_N, "ListDataViewsInput", "nextToken"),
            type = "string",
            name = "nextToken",
            target_id = prelude.String.id,
            traits = {
                [traits.HTTP_QUERY] = { name = "nextToken" },
            },
        }),
        maxResults = schema.new({
            id = id.from(_N, "ListDataViewsInput", "maxResults"),
            type = "integer",
            name = "maxResults",
            target_id = prelude.Integer.id,
            traits = {
                [traits.HTTP_QUERY] = { name = "maxResults" },
            },
        }),
    },
})

M.DataViewSummary = schema.new({
    id = id.from(_N, "DataViewSummary"),
    type = "structure",
    members = {
        dataViewId = schema.new({
            id = id.from(_N, "DataViewSummary", "dataViewId"),
            type = "string",
            name = "dataViewId",
            target_id = prelude.String.id,
        }),
        dataViewArn = schema.new({
            id = id.from(_N, "DataViewSummary", "dataViewArn"),
            type = "string",
            name = "dataViewArn",
            target_id = prelude.String.id,
        }),
        datasetId = schema.new({
            id = id.from(_N, "DataViewSummary", "datasetId"),
            type = "string",
            name = "datasetId",
            target_id = prelude.String.id,
        }),
        asOfTimestamp = schema.new({
            id = id.from(_N, "DataViewSummary", "asOfTimestamp"),
            type = "long",
            name = "asOfTimestamp",
            target_id = prelude.Long.id,
            traits = {
                [traits.DEFAULT] = { value = nil },
            },
        }),
        partitionColumns = schema.new({
            id = id.from(_N, "DataViewSummary", "partitionColumns"),
            type = "list",
            name = "partitionColumns",
            target_id = prelude.Document.id,
            list_member = prelude.String,
        }),
        sortColumns = schema.new({
            id = id.from(_N, "DataViewSummary", "sortColumns"),
            type = "list",
            name = "sortColumns",
            target_id = prelude.Document.id,
            list_member = prelude.String,
        }),
        status = schema.new({
            id = id.from(_N, "DataViewSummary", "status"),
            type = "string",
            name = "status",
            target_id = prelude.String.id,
        }),
        errorInfo = schema.new({
            id = id.from(_N, "DataViewSummary", "errorInfo"),
            type = "structure",
            name = "errorInfo",
            target_id = id.from(_N, "DataViewErrorInfo"),
            target = M.DataViewErrorInfo,
        }),
        destinationTypeProperties = schema.new({
            id = id.from(_N, "DataViewSummary", "destinationTypeProperties"),
            type = "structure",
            name = "destinationTypeProperties",
            target_id = id.from(_N, "DataViewDestinationTypeParams"),
            target = M.DataViewDestinationTypeParams,
        }),
        autoUpdate = schema.new({
            id = id.from(_N, "DataViewSummary", "autoUpdate"),
            type = "boolean",
            name = "autoUpdate",
            target_id = prelude.Boolean.id,
            traits = {
                [traits.DEFAULT] = { value = false },
            },
        }),
        createTime = schema.new({
            id = id.from(_N, "DataViewSummary", "createTime"),
            type = "long",
            name = "createTime",
            target_id = prelude.Long.id,
            traits = {
                [traits.DEFAULT] = { value = 0 },
            },
        }),
        lastModifiedTime = schema.new({
            id = id.from(_N, "DataViewSummary", "lastModifiedTime"),
            type = "long",
            name = "lastModifiedTime",
            target_id = prelude.Long.id,
            traits = {
                [traits.DEFAULT] = { value = 0 },
            },
        }),
    },
})

M.ListDataViewsOutput = schema.new({
    id = id.from(_N, "ListDataViewsResponse"),
    type = "structure",
    members = {
        nextToken = schema.new({
            id = id.from(_N, "ListDataViewsOutput", "nextToken"),
            type = "string",
            name = "nextToken",
            target_id = prelude.String.id,
        }),
        dataViews = schema.new({
            id = id.from(_N, "ListDataViewsOutput", "dataViews"),
            type = "list",
            name = "dataViews",
            target_id = prelude.Document.id,
            list_member = M.DataViewSummary,
        }),
    },
})

M.ListPermissionGroupsInput = schema.new({
    id = id.from(_N, "ListPermissionGroupsRequest"),
    type = "structure",
    members = {
        nextToken = schema.new({
            id = id.from(_N, "ListPermissionGroupsInput", "nextToken"),
            type = "string",
            name = "nextToken",
            target_id = prelude.String.id,
            traits = {
                [traits.HTTP_QUERY] = { name = "nextToken" },
            },
        }),
        maxResults = schema.new({
            id = id.from(_N, "ListPermissionGroupsInput", "maxResults"),
            type = "integer",
            name = "maxResults",
            target_id = prelude.Integer.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_QUERY] = { name = "maxResults" },
            },
        }),
    },
})

M.ListPermissionGroupsOutput = schema.new({
    id = id.from(_N, "ListPermissionGroupsResponse"),
    type = "structure",
    members = {
        permissionGroups = schema.new({
            id = id.from(_N, "ListPermissionGroupsOutput", "permissionGroups"),
            type = "list",
            name = "permissionGroups",
            target_id = prelude.Document.id,
            list_member = M.PermissionGroup,
        }),
        nextToken = schema.new({
            id = id.from(_N, "ListPermissionGroupsOutput", "nextToken"),
            type = "string",
            name = "nextToken",
            target_id = prelude.String.id,
        }),
    },
})

M.ListPermissionGroupsByUserInput = schema.new({
    id = id.from(_N, "ListPermissionGroupsByUserRequest"),
    type = "structure",
    members = {
        userId = schema.new({
            id = id.from(_N, "ListPermissionGroupsByUserInput", "userId"),
            type = "string",
            name = "userId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
        nextToken = schema.new({
            id = id.from(_N, "ListPermissionGroupsByUserInput", "nextToken"),
            type = "string",
            name = "nextToken",
            target_id = prelude.String.id,
            traits = {
                [traits.HTTP_QUERY] = { name = "nextToken" },
            },
        }),
        maxResults = schema.new({
            id = id.from(_N, "ListPermissionGroupsByUserInput", "maxResults"),
            type = "integer",
            name = "maxResults",
            target_id = prelude.Integer.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_QUERY] = { name = "maxResults" },
            },
        }),
    },
})

M.PermissionGroupByUser = schema.new({
    id = id.from(_N, "PermissionGroupByUser"),
    type = "structure",
    members = {
        permissionGroupId = schema.new({
            id = id.from(_N, "PermissionGroupByUser", "permissionGroupId"),
            type = "string",
            name = "permissionGroupId",
            target_id = prelude.String.id,
        }),
        name = schema.new({
            id = id.from(_N, "PermissionGroupByUser", "name"),
            type = "string",
            name = "name",
            target_id = prelude.String.id,
        }),
        membershipStatus = schema.new({
            id = id.from(_N, "PermissionGroupByUser", "membershipStatus"),
            type = "string",
            name = "membershipStatus",
            target_id = prelude.String.id,
        }),
    },
})

M.ListPermissionGroupsByUserOutput = schema.new({
    id = id.from(_N, "ListPermissionGroupsByUserResponse"),
    type = "structure",
    members = {
        permissionGroups = schema.new({
            id = id.from(_N, "ListPermissionGroupsByUserOutput", "permissionGroups"),
            type = "list",
            name = "permissionGroups",
            target_id = prelude.Document.id,
            list_member = M.PermissionGroupByUser,
        }),
        nextToken = schema.new({
            id = id.from(_N, "ListPermissionGroupsByUserOutput", "nextToken"),
            type = "string",
            name = "nextToken",
            target_id = prelude.String.id,
        }),
    },
})

M.ListUsersInput = schema.new({
    id = id.from(_N, "ListUsersRequest"),
    type = "structure",
    members = {
        nextToken = schema.new({
            id = id.from(_N, "ListUsersInput", "nextToken"),
            type = "string",
            name = "nextToken",
            target_id = prelude.String.id,
            traits = {
                [traits.HTTP_QUERY] = { name = "nextToken" },
            },
        }),
        maxResults = schema.new({
            id = id.from(_N, "ListUsersInput", "maxResults"),
            type = "integer",
            name = "maxResults",
            target_id = prelude.Integer.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_QUERY] = { name = "maxResults" },
            },
        }),
    },
})

M.User = schema.new({
    id = id.from(_N, "User"),
    type = "structure",
    members = {
        userId = schema.new({
            id = id.from(_N, "User", "userId"),
            type = "string",
            name = "userId",
            target_id = prelude.String.id,
        }),
        status = schema.new({
            id = id.from(_N, "User", "status"),
            type = "string",
            name = "status",
            target_id = prelude.String.id,
        }),
        firstName = schema.new({
            id = id.from(_N, "User", "firstName"),
            type = "string",
            name = "firstName",
            target_id = prelude.String.id,
        }),
        lastName = schema.new({
            id = id.from(_N, "User", "lastName"),
            type = "string",
            name = "lastName",
            target_id = prelude.String.id,
        }),
        emailAddress = schema.new({
            id = id.from(_N, "User", "emailAddress"),
            type = "string",
            name = "emailAddress",
            target_id = prelude.String.id,
        }),
        type = schema.new({
            id = id.from(_N, "User", "type"),
            type = "string",
            name = "type",
            target_id = prelude.String.id,
        }),
        apiAccess = schema.new({
            id = id.from(_N, "User", "apiAccess"),
            type = "string",
            name = "apiAccess",
            target_id = prelude.String.id,
        }),
        apiAccessPrincipalArn = schema.new({
            id = id.from(_N, "User", "apiAccessPrincipalArn"),
            type = "string",
            name = "apiAccessPrincipalArn",
            target_id = prelude.String.id,
        }),
        createTime = schema.new({
            id = id.from(_N, "User", "createTime"),
            type = "long",
            name = "createTime",
            target_id = prelude.Long.id,
            traits = {
                [traits.DEFAULT] = { value = 0 },
            },
        }),
        lastEnabledTime = schema.new({
            id = id.from(_N, "User", "lastEnabledTime"),
            type = "long",
            name = "lastEnabledTime",
            target_id = prelude.Long.id,
            traits = {
                [traits.DEFAULT] = { value = 0 },
            },
        }),
        lastDisabledTime = schema.new({
            id = id.from(_N, "User", "lastDisabledTime"),
            type = "long",
            name = "lastDisabledTime",
            target_id = prelude.Long.id,
            traits = {
                [traits.DEFAULT] = { value = 0 },
            },
        }),
        lastModifiedTime = schema.new({
            id = id.from(_N, "User", "lastModifiedTime"),
            type = "long",
            name = "lastModifiedTime",
            target_id = prelude.Long.id,
            traits = {
                [traits.DEFAULT] = { value = 0 },
            },
        }),
        lastLoginTime = schema.new({
            id = id.from(_N, "User", "lastLoginTime"),
            type = "long",
            name = "lastLoginTime",
            target_id = prelude.Long.id,
            traits = {
                [traits.DEFAULT] = { value = 0 },
            },
        }),
    },
})

M.ListUsersOutput = schema.new({
    id = id.from(_N, "ListUsersResponse"),
    type = "structure",
    members = {
        users = schema.new({
            id = id.from(_N, "ListUsersOutput", "users"),
            type = "list",
            name = "users",
            target_id = prelude.Document.id,
            list_member = M.User,
        }),
        nextToken = schema.new({
            id = id.from(_N, "ListUsersOutput", "nextToken"),
            type = "string",
            name = "nextToken",
            target_id = prelude.String.id,
        }),
    },
})

M.ListUsersByPermissionGroupInput = schema.new({
    id = id.from(_N, "ListUsersByPermissionGroupRequest"),
    type = "structure",
    members = {
        permissionGroupId = schema.new({
            id = id.from(_N, "ListUsersByPermissionGroupInput", "permissionGroupId"),
            type = "string",
            name = "permissionGroupId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
        nextToken = schema.new({
            id = id.from(_N, "ListUsersByPermissionGroupInput", "nextToken"),
            type = "string",
            name = "nextToken",
            target_id = prelude.String.id,
            traits = {
                [traits.HTTP_QUERY] = { name = "nextToken" },
            },
        }),
        maxResults = schema.new({
            id = id.from(_N, "ListUsersByPermissionGroupInput", "maxResults"),
            type = "integer",
            name = "maxResults",
            target_id = prelude.Integer.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_QUERY] = { name = "maxResults" },
            },
        }),
    },
})

M.UserByPermissionGroup = schema.new({
    id = id.from(_N, "UserByPermissionGroup"),
    type = "structure",
    members = {
        userId = schema.new({
            id = id.from(_N, "UserByPermissionGroup", "userId"),
            type = "string",
            name = "userId",
            target_id = prelude.String.id,
        }),
        status = schema.new({
            id = id.from(_N, "UserByPermissionGroup", "status"),
            type = "string",
            name = "status",
            target_id = prelude.String.id,
        }),
        firstName = schema.new({
            id = id.from(_N, "UserByPermissionGroup", "firstName"),
            type = "string",
            name = "firstName",
            target_id = prelude.String.id,
        }),
        lastName = schema.new({
            id = id.from(_N, "UserByPermissionGroup", "lastName"),
            type = "string",
            name = "lastName",
            target_id = prelude.String.id,
        }),
        emailAddress = schema.new({
            id = id.from(_N, "UserByPermissionGroup", "emailAddress"),
            type = "string",
            name = "emailAddress",
            target_id = prelude.String.id,
        }),
        type = schema.new({
            id = id.from(_N, "UserByPermissionGroup", "type"),
            type = "string",
            name = "type",
            target_id = prelude.String.id,
        }),
        apiAccess = schema.new({
            id = id.from(_N, "UserByPermissionGroup", "apiAccess"),
            type = "string",
            name = "apiAccess",
            target_id = prelude.String.id,
        }),
        apiAccessPrincipalArn = schema.new({
            id = id.from(_N, "UserByPermissionGroup", "apiAccessPrincipalArn"),
            type = "string",
            name = "apiAccessPrincipalArn",
            target_id = prelude.String.id,
        }),
        membershipStatus = schema.new({
            id = id.from(_N, "UserByPermissionGroup", "membershipStatus"),
            type = "string",
            name = "membershipStatus",
            target_id = prelude.String.id,
        }),
    },
})

M.ListUsersByPermissionGroupOutput = schema.new({
    id = id.from(_N, "ListUsersByPermissionGroupResponse"),
    type = "structure",
    members = {
        users = schema.new({
            id = id.from(_N, "ListUsersByPermissionGroupOutput", "users"),
            type = "list",
            name = "users",
            target_id = prelude.Document.id,
            list_member = M.UserByPermissionGroup,
        }),
        nextToken = schema.new({
            id = id.from(_N, "ListUsersByPermissionGroupOutput", "nextToken"),
            type = "string",
            name = "nextToken",
            target_id = prelude.String.id,
        }),
    },
})

M.ResetUserPasswordInput = schema.new({
    id = id.from(_N, "ResetUserPasswordRequest"),
    type = "structure",
    members = {
        userId = schema.new({
            id = id.from(_N, "ResetUserPasswordInput", "userId"),
            type = "string",
            name = "userId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
        clientToken = schema.new({
            id = id.from(_N, "ResetUserPasswordInput", "clientToken"),
            type = "string",
            name = "clientToken",
            target_id = prelude.String.id,
            traits = {
                [traits.IDEMPOTENCY_TOKEN] = {},
            },
        }),
    },
})

M.ResetUserPasswordOutput = schema.new({
    id = id.from(_N, "ResetUserPasswordResponse"),
    type = "structure",
    members = {
        userId = schema.new({
            id = id.from(_N, "ResetUserPasswordOutput", "userId"),
            type = "string",
            name = "userId",
            target_id = prelude.String.id,
        }),
        temporaryPassword = schema.new({
            id = id.from(_N, "ResetUserPasswordOutput", "temporaryPassword"),
            type = "string",
            name = "temporaryPassword",
            target_id = prelude.String.id,
        }),
    },
})

M.UpdateChangesetInput = schema.new({
    id = id.from(_N, "UpdateChangesetRequest"),
    type = "structure",
    members = {
        clientToken = schema.new({
            id = id.from(_N, "UpdateChangesetInput", "clientToken"),
            type = "string",
            name = "clientToken",
            target_id = prelude.String.id,
            traits = {
                [traits.IDEMPOTENCY_TOKEN] = {},
            },
        }),
        datasetId = schema.new({
            id = id.from(_N, "UpdateChangesetInput", "datasetId"),
            type = "string",
            name = "datasetId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
        changesetId = schema.new({
            id = id.from(_N, "UpdateChangesetInput", "changesetId"),
            type = "string",
            name = "changesetId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
        sourceParams = schema.new({
            id = id.from(_N, "UpdateChangesetInput", "sourceParams"),
            type = "map",
            name = "sourceParams",
            target_id = prelude.Document.id,
            map_key = prelude.String,
            map_value = prelude.String,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        formatParams = schema.new({
            id = id.from(_N, "UpdateChangesetInput", "formatParams"),
            type = "map",
            name = "formatParams",
            target_id = prelude.Document.id,
            map_key = prelude.String,
            map_value = prelude.String,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.UpdateChangesetOutput = schema.new({
    id = id.from(_N, "UpdateChangesetResponse"),
    type = "structure",
    members = {
        changesetId = schema.new({
            id = id.from(_N, "UpdateChangesetOutput", "changesetId"),
            type = "string",
            name = "changesetId",
            target_id = prelude.String.id,
        }),
        datasetId = schema.new({
            id = id.from(_N, "UpdateChangesetOutput", "datasetId"),
            type = "string",
            name = "datasetId",
            target_id = prelude.String.id,
        }),
    },
})

M.UpdateDatasetInput = schema.new({
    id = id.from(_N, "UpdateDatasetRequest"),
    type = "structure",
    members = {
        clientToken = schema.new({
            id = id.from(_N, "UpdateDatasetInput", "clientToken"),
            type = "string",
            name = "clientToken",
            target_id = prelude.String.id,
            traits = {
                [traits.IDEMPOTENCY_TOKEN] = {},
            },
        }),
        datasetId = schema.new({
            id = id.from(_N, "UpdateDatasetInput", "datasetId"),
            type = "string",
            name = "datasetId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
        datasetTitle = schema.new({
            id = id.from(_N, "UpdateDatasetInput", "datasetTitle"),
            type = "string",
            name = "datasetTitle",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        kind = schema.new({
            id = id.from(_N, "UpdateDatasetInput", "kind"),
            type = "string",
            name = "kind",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        datasetDescription = schema.new({
            id = id.from(_N, "UpdateDatasetInput", "datasetDescription"),
            type = "string",
            name = "datasetDescription",
            target_id = prelude.String.id,
        }),
        alias = schema.new({
            id = id.from(_N, "UpdateDatasetInput", "alias"),
            type = "string",
            name = "alias",
            target_id = prelude.String.id,
        }),
        schemaDefinition = schema.new({
            id = id.from(_N, "UpdateDatasetInput", "schemaDefinition"),
            type = "structure",
            name = "schemaDefinition",
            target_id = id.from(_N, "SchemaUnion"),
            target = M.SchemaUnion,
        }),
    },
})

M.UpdateDatasetOutput = schema.new({
    id = id.from(_N, "UpdateDatasetResponse"),
    type = "structure",
    members = {
        datasetId = schema.new({
            id = id.from(_N, "UpdateDatasetOutput", "datasetId"),
            type = "string",
            name = "datasetId",
            target_id = prelude.String.id,
        }),
    },
})

M.UpdatePermissionGroupInput = schema.new({
    id = id.from(_N, "UpdatePermissionGroupRequest"),
    type = "structure",
    members = {
        permissionGroupId = schema.new({
            id = id.from(_N, "UpdatePermissionGroupInput", "permissionGroupId"),
            type = "string",
            name = "permissionGroupId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
        name = schema.new({
            id = id.from(_N, "UpdatePermissionGroupInput", "name"),
            type = "string",
            name = "name",
            target_id = prelude.String.id,
        }),
        description = schema.new({
            id = id.from(_N, "UpdatePermissionGroupInput", "description"),
            type = "string",
            name = "description",
            target_id = prelude.String.id,
        }),
        applicationPermissions = schema.new({
            id = id.from(_N, "UpdatePermissionGroupInput", "applicationPermissions"),
            type = "list",
            name = "applicationPermissions",
            target_id = prelude.Document.id,
            list_member = prelude.String,
        }),
        clientToken = schema.new({
            id = id.from(_N, "UpdatePermissionGroupInput", "clientToken"),
            type = "string",
            name = "clientToken",
            target_id = prelude.String.id,
            traits = {
                [traits.IDEMPOTENCY_TOKEN] = {},
            },
        }),
    },
})

M.UpdatePermissionGroupOutput = schema.new({
    id = id.from(_N, "UpdatePermissionGroupResponse"),
    type = "structure",
    members = {
        permissionGroupId = schema.new({
            id = id.from(_N, "UpdatePermissionGroupOutput", "permissionGroupId"),
            type = "string",
            name = "permissionGroupId",
            target_id = prelude.String.id,
        }),
    },
})

M.UpdateUserInput = schema.new({
    id = id.from(_N, "UpdateUserRequest"),
    type = "structure",
    members = {
        userId = schema.new({
            id = id.from(_N, "UpdateUserInput", "userId"),
            type = "string",
            name = "userId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
        type = schema.new({
            id = id.from(_N, "UpdateUserInput", "type"),
            type = "string",
            name = "type",
            target_id = prelude.String.id,
        }),
        firstName = schema.new({
            id = id.from(_N, "UpdateUserInput", "firstName"),
            type = "string",
            name = "firstName",
            target_id = prelude.String.id,
        }),
        lastName = schema.new({
            id = id.from(_N, "UpdateUserInput", "lastName"),
            type = "string",
            name = "lastName",
            target_id = prelude.String.id,
        }),
        apiAccess = schema.new({
            id = id.from(_N, "UpdateUserInput", "apiAccess"),
            type = "string",
            name = "apiAccess",
            target_id = prelude.String.id,
        }),
        apiAccessPrincipalArn = schema.new({
            id = id.from(_N, "UpdateUserInput", "apiAccessPrincipalArn"),
            type = "string",
            name = "apiAccessPrincipalArn",
            target_id = prelude.String.id,
        }),
        clientToken = schema.new({
            id = id.from(_N, "UpdateUserInput", "clientToken"),
            type = "string",
            name = "clientToken",
            target_id = prelude.String.id,
            traits = {
                [traits.IDEMPOTENCY_TOKEN] = {},
            },
        }),
    },
})

M.UpdateUserOutput = schema.new({
    id = id.from(_N, "UpdateUserResponse"),
    type = "structure",
    members = {
        userId = schema.new({
            id = id.from(_N, "UpdateUserOutput", "userId"),
            type = "string",
            name = "userId",
            target_id = prelude.String.id,
        }),
    },
})

-- Fix forward references for recursive schemas
for _, s in pairs(M) do
    if type(s) == "table" and (s.type == "structure" or s.type == "union") then
        local members = rawget(s, "_members")
        if members then
            for _, ms in pairs(members) do
                if (ms.type == "structure" or ms.type == "union") and not rawget(ms, "_target") and ms.target_id then
                    rawset(ms, "_target", M[ms.target_id.name])
                end
            end
        end
    end
end

return M
