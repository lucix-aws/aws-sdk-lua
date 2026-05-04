local M = {}

M.AccessDeniedException = {
    type = "structure",
    id = "AccessDeniedException",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.LFTagPair = {
    type = "structure",
    id = "LFTagPair",
    members = {
        CatalogId = {
            type = "string",
        },
        TagKey = {
            type = "string",
            traits = {
                required = true,
            },
        },
        TagValues = {
            type = "list",
            member = { type = "string" },
            traits = {
                required = true,
            },
        },
    },
}

M.CatalogResource = {
    type = "structure",
    id = "CatalogResource",
    members = {
        Id = {
            type = "string",
        },
    },
}

M.DatabaseResource = {
    type = "structure",
    id = "DatabaseResource",
    members = {
        CatalogId = {
            type = "string",
        },
        Name = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.DataCellsFilterResource = {
    type = "structure",
    id = "DataCellsFilterResource",
    members = {
        TableCatalogId = {
            type = "string",
        },
        DatabaseName = {
            type = "string",
        },
        TableName = {
            type = "string",
        },
        Name = {
            type = "string",
        },
    },
}

M.DataLocationResource = {
    type = "structure",
    id = "DataLocationResource",
    members = {
        CatalogId = {
            type = "string",
        },
        ResourceArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.LFTagKeyResource = {
    type = "structure",
    id = "LFTagKeyResource",
    members = {
        CatalogId = {
            type = "string",
        },
        TagKey = {
            type = "string",
            traits = {
                required = true,
            },
        },
        TagValues = {
            type = "list",
            member = { type = "string" },
            traits = {
                required = true,
            },
        },
    },
}

M.LFTagExpressionResource = {
    type = "structure",
    id = "LFTagExpressionResource",
    members = {
        CatalogId = {
            type = "string",
        },
        Name = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.LFTag = {
    type = "structure",
    id = "LFTag",
    members = {
        TagKey = {
            type = "string",
            traits = {
                required = true,
            },
        },
        TagValues = {
            type = "list",
            member = { type = "string" },
            traits = {
                required = true,
            },
        },
    },
}

M.ResourceType = {
    DATABASE = "DATABASE",
    TABLE = "TABLE",
}

M.LFTagPolicyResource = {
    type = "structure",
    id = "LFTagPolicyResource",
    members = {
        CatalogId = {
            type = "string",
        },
        ResourceType = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Expression = {
            type = "list",
            member = M.LFTag,
            traits = {
                default = {},
            },
        },
        ExpressionName = {
            type = "string",
        },
    },
}

M.TableWildcard = {
    type = "structure",
    id = "TableWildcard",
}

M.TableResource = {
    type = "structure",
    id = "TableResource",
    members = {
        CatalogId = {
            type = "string",
        },
        DatabaseName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Name = {
            type = "string",
        },
        TableWildcard = M.TableWildcard,
    },
}

M.ColumnWildcard = {
    type = "structure",
    id = "ColumnWildcard",
    members = {
        ExcludedColumnNames = {
            type = "list",
            member = { type = "string" },
        },
    },
}

M.TableWithColumnsResource = {
    type = "structure",
    id = "TableWithColumnsResource",
    members = {
        CatalogId = {
            type = "string",
        },
        DatabaseName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Name = {
            type = "string",
            traits = {
                required = true,
            },
        },
        ColumnNames = {
            type = "list",
            member = { type = "string" },
        },
        ColumnWildcard = M.ColumnWildcard,
    },
}

M.Resource = {
    type = "structure",
    id = "Resource",
    members = {
        Catalog = M.CatalogResource,
        Database = M.DatabaseResource,
        Table = M.TableResource,
        TableWithColumns = M.TableWithColumnsResource,
        DataLocation = M.DataLocationResource,
        DataCellsFilter = M.DataCellsFilterResource,
        LFTag = M.LFTagKeyResource,
        LFTagPolicy = M.LFTagPolicyResource,
        LFTagExpression = M.LFTagExpressionResource,
    },
}

M.AddLFTagsToResourceInput = {
    type = "structure",
    id = "AddLFTagsToResourceInput",
    members = {
        CatalogId = {
            type = "string",
        },
        Resource = setmetatable({ traits = {
            required = true,
        } }, { __index = M.Resource }),
        LFTags = {
            type = "list",
            member = M.LFTagPair,
            traits = {
                required = true,
            },
        },
    },
}

M.ErrorDetail = {
    type = "structure",
    id = "ErrorDetail",
    members = {
        ErrorCode = {
            type = "string",
        },
        ErrorMessage = {
            type = "string",
        },
    },
}

M.LFTagError = {
    type = "structure",
    id = "LFTagError",
    members = {
        LFTag = M.LFTagPair,
        Error = M.ErrorDetail,
    },
}

M.AddLFTagsToResourceOutput = {
    type = "structure",
    id = "AddLFTagsToResourceOutput",
    members = {
        Failures = {
            type = "list",
            member = M.LFTagError,
        },
    },
}

M.ConcurrentModificationException = {
    type = "structure",
    id = "ConcurrentModificationException",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.EntityNotFoundException = {
    type = "structure",
    id = "EntityNotFoundException",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.InternalServiceException = {
    type = "structure",
    id = "InternalServiceException",
    error = "server",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.InvalidInputException = {
    type = "structure",
    id = "InvalidInputException",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.OperationTimeoutException = {
    type = "structure",
    id = "OperationTimeoutException",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.AddObjectInput = {
    type = "structure",
    id = "AddObjectInput",
    members = {
        Uri = {
            type = "string",
            traits = {
                required = true,
            },
        },
        ETag = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Size = {
            type = "long",
            traits = {
                default = 0,
                required = true,
            },
        },
        PartitionValues = {
            type = "list",
            member = { type = "string" },
        },
    },
}

M.AllRowsWildcard = {
    type = "structure",
    id = "AllRowsWildcard",
}

M.AlreadyExistsException = {
    type = "structure",
    id = "AlreadyExistsException",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.ApplicationStatus = {
    ENABLED = "ENABLED",
    DISABLED = "DISABLED",
}

M.AssumeDecoratedRoleWithSAMLInput = {
    type = "structure",
    id = "AssumeDecoratedRoleWithSAMLInput",
    members = {
        SAMLAssertion = {
            type = "string",
            traits = {
                required = true,
            },
        },
        RoleArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        PrincipalArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        DurationSeconds = {
            type = "integer",
        },
    },
}

M.AssumeDecoratedRoleWithSAMLOutput = {
    type = "structure",
    id = "AssumeDecoratedRoleWithSAMLOutput",
    members = {
        AccessKeyId = {
            type = "string",
        },
        SecretAccessKey = {
            type = "string",
        },
        SessionToken = {
            type = "string",
        },
        Expiration = {
            type = "timestamp",
        },
    },
}

M.AuditContext = {
    type = "structure",
    id = "AuditContext",
    members = {
        AdditionalAuditContext = {
            type = "string",
        },
    },
}

M.Condition = {
    type = "structure",
    id = "Condition",
    members = {
        Expression = {
            type = "string",
        },
    },
}

M.Permission = {
    ALL = "ALL",
    SELECT = "SELECT",
    ALTER = "ALTER",
    DROP = "DROP",
    DELETE = "DELETE",
    INSERT = "INSERT",
    DESCRIBE = "DESCRIBE",
    CREATE_DATABASE = "CREATE_DATABASE",
    CREATE_TABLE = "CREATE_TABLE",
    DATA_LOCATION_ACCESS = "DATA_LOCATION_ACCESS",
    CREATE_LF_TAG = "CREATE_LF_TAG",
    ASSOCIATE = "ASSOCIATE",
    GRANT_WITH_LF_TAG_EXPRESSION = "GRANT_WITH_LF_TAG_EXPRESSION",
    CREATE_LF_TAG_EXPRESSION = "CREATE_LF_TAG_EXPRESSION",
    CREATE_CATALOG = "CREATE_CATALOG",
    SUPER_USER = "SUPER_USER",
}

M.DataLakePrincipal = {
    type = "structure",
    id = "DataLakePrincipal",
    members = {
        DataLakePrincipalIdentifier = {
            type = "string",
        },
    },
}

M.BatchPermissionsRequestEntry = {
    type = "structure",
    id = "BatchPermissionsRequestEntry",
    members = {
        Id = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Principal = M.DataLakePrincipal,
        Resource = M.Resource,
        Permissions = {
            type = "list",
            member = { type = "string" },
        },
        Condition = M.Condition,
        PermissionsWithGrantOption = {
            type = "list",
            member = { type = "string" },
        },
    },
}

M.BatchGrantPermissionsInput = {
    type = "structure",
    id = "BatchGrantPermissionsInput",
    members = {
        CatalogId = {
            type = "string",
        },
        Entries = {
            type = "list",
            member = M.BatchPermissionsRequestEntry,
            traits = {
                required = true,
            },
        },
    },
}

M.BatchPermissionsFailureEntry = {
    type = "structure",
    id = "BatchPermissionsFailureEntry",
    members = {
        RequestEntry = M.BatchPermissionsRequestEntry,
        Error = M.ErrorDetail,
    },
}

M.BatchGrantPermissionsOutput = {
    type = "structure",
    id = "BatchGrantPermissionsOutput",
    members = {
        Failures = {
            type = "list",
            member = M.BatchPermissionsFailureEntry,
        },
    },
}

M.BatchRevokePermissionsInput = {
    type = "structure",
    id = "BatchRevokePermissionsInput",
    members = {
        CatalogId = {
            type = "string",
        },
        Entries = {
            type = "list",
            member = M.BatchPermissionsRequestEntry,
            traits = {
                required = true,
            },
        },
    },
}

M.BatchRevokePermissionsOutput = {
    type = "structure",
    id = "BatchRevokePermissionsOutput",
    members = {
        Failures = {
            type = "list",
            member = M.BatchPermissionsFailureEntry,
        },
    },
}

M.CancelTransactionInput = {
    type = "structure",
    id = "CancelTransactionInput",
    members = {
        TransactionId = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.CancelTransactionOutput = {
    type = "structure",
    id = "CancelTransactionOutput",
}

M.TransactionCommitInProgressException = {
    type = "structure",
    id = "TransactionCommitInProgressException",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.TransactionCommittedException = {
    type = "structure",
    id = "TransactionCommittedException",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.CommitTransactionInput = {
    type = "structure",
    id = "CommitTransactionInput",
    members = {
        TransactionId = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.TransactionStatus = {
    ACTIVE = "ACTIVE",
    COMMITTED = "COMMITTED",
    ABORTED = "ABORTED",
    COMMIT_IN_PROGRESS = "COMMIT_IN_PROGRESS",
}

M.CommitTransactionOutput = {
    type = "structure",
    id = "CommitTransactionOutput",
    members = {
        TransactionStatus = {
            type = "string",
        },
    },
}

M.TransactionCanceledException = {
    type = "structure",
    id = "TransactionCanceledException",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.RowFilter = {
    type = "structure",
    id = "RowFilter",
    members = {
        FilterExpression = {
            type = "string",
        },
        AllRowsWildcard = M.AllRowsWildcard,
    },
}

M.DataCellsFilter = {
    type = "structure",
    id = "DataCellsFilter",
    members = {
        TableCatalogId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        DatabaseName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        TableName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Name = {
            type = "string",
            traits = {
                required = true,
            },
        },
        RowFilter = M.RowFilter,
        ColumnNames = {
            type = "list",
            member = { type = "string" },
        },
        ColumnWildcard = M.ColumnWildcard,
        VersionId = {
            type = "string",
        },
    },
}

M.CreateDataCellsFilterInput = {
    type = "structure",
    id = "CreateDataCellsFilterInput",
    members = {
        TableData = setmetatable({ traits = {
            required = true,
        } }, { __index = M.DataCellsFilter }),
    },
}

M.CreateDataCellsFilterOutput = {
    type = "structure",
    id = "CreateDataCellsFilterOutput",
}

M.ResourceNumberLimitExceededException = {
    type = "structure",
    id = "ResourceNumberLimitExceededException",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.EnableStatus = {
    ENABLED = "ENABLED",
    DISABLED = "DISABLED",
}

M.ExternalFilteringConfiguration = {
    type = "structure",
    id = "ExternalFilteringConfiguration",
    members = {
        Status = {
            type = "string",
            traits = {
                required = true,
            },
        },
        AuthorizedTargets = {
            type = "list",
            member = { type = "string" },
            traits = {
                required = true,
            },
        },
    },
}

M.ServiceAuthorization = {
    ENABLED = "ENABLED",
    DISABLED = "DISABLED",
}

M.RedshiftConnect = {
    type = "structure",
    id = "RedshiftConnect",
    members = {
        Authorization = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.RedshiftScopeUnion = {
    type = "union",
    id = "RedshiftScopeUnion",
    members = {
        RedshiftConnect = M.RedshiftConnect,
    },
}

M.ServiceIntegrationUnion = {
    type = "union",
    id = "ServiceIntegrationUnion",
    members = {
        Redshift = {
            type = "list",
            member = M.RedshiftScopeUnion,
        },
    },
}

M.CreateLakeFormationIdentityCenterConfigurationInput = {
    type = "structure",
    id = "CreateLakeFormationIdentityCenterConfigurationInput",
    members = {
        CatalogId = {
            type = "string",
        },
        InstanceArn = {
            type = "string",
        },
        ExternalFiltering = M.ExternalFilteringConfiguration,
        ShareRecipients = {
            type = "list",
            member = M.DataLakePrincipal,
        },
        ServiceIntegrations = {
            type = "list",
            member = M.ServiceIntegrationUnion,
        },
    },
}

M.CreateLakeFormationIdentityCenterConfigurationOutput = {
    type = "structure",
    id = "CreateLakeFormationIdentityCenterConfigurationOutput",
    members = {
        ApplicationArn = {
            type = "string",
        },
    },
}

M.CreateLakeFormationOptInInput = {
    type = "structure",
    id = "CreateLakeFormationOptInInput",
    members = {
        Principal = setmetatable({ traits = {
            required = true,
        } }, { __index = M.DataLakePrincipal }),
        Resource = setmetatable({ traits = {
            required = true,
        } }, { __index = M.Resource }),
        Condition = M.Condition,
    },
}

M.CreateLakeFormationOptInOutput = {
    type = "structure",
    id = "CreateLakeFormationOptInOutput",
}

M.CreateLFTagInput = {
    type = "structure",
    id = "CreateLFTagInput",
    members = {
        CatalogId = {
            type = "string",
        },
        TagKey = {
            type = "string",
            traits = {
                required = true,
            },
        },
        TagValues = {
            type = "list",
            member = { type = "string" },
            traits = {
                required = true,
            },
        },
    },
}

M.CreateLFTagOutput = {
    type = "structure",
    id = "CreateLFTagOutput",
}

M.CreateLFTagExpressionInput = {
    type = "structure",
    id = "CreateLFTagExpressionInput",
    members = {
        Name = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Description = {
            type = "string",
        },
        CatalogId = {
            type = "string",
        },
        Expression = {
            type = "list",
            member = M.LFTag,
            traits = {
                required = true,
            },
        },
    },
}

M.CreateLFTagExpressionOutput = {
    type = "structure",
    id = "CreateLFTagExpressionOutput",
}

M.DeleteDataCellsFilterInput = {
    type = "structure",
    id = "DeleteDataCellsFilterInput",
    members = {
        TableCatalogId = {
            type = "string",
        },
        DatabaseName = {
            type = "string",
        },
        TableName = {
            type = "string",
        },
        Name = {
            type = "string",
        },
    },
}

M.DeleteDataCellsFilterOutput = {
    type = "structure",
    id = "DeleteDataCellsFilterOutput",
}

M.DeleteLakeFormationIdentityCenterConfigurationInput = {
    type = "structure",
    id = "DeleteLakeFormationIdentityCenterConfigurationInput",
    members = {
        CatalogId = {
            type = "string",
        },
    },
}

M.DeleteLakeFormationIdentityCenterConfigurationOutput = {
    type = "structure",
    id = "DeleteLakeFormationIdentityCenterConfigurationOutput",
}

M.DeleteLakeFormationOptInInput = {
    type = "structure",
    id = "DeleteLakeFormationOptInInput",
    members = {
        Principal = setmetatable({ traits = {
            required = true,
        } }, { __index = M.DataLakePrincipal }),
        Resource = setmetatable({ traits = {
            required = true,
        } }, { __index = M.Resource }),
        Condition = M.Condition,
    },
}

M.DeleteLakeFormationOptInOutput = {
    type = "structure",
    id = "DeleteLakeFormationOptInOutput",
}

M.DeleteLFTagInput = {
    type = "structure",
    id = "DeleteLFTagInput",
    members = {
        CatalogId = {
            type = "string",
        },
        TagKey = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.DeleteLFTagOutput = {
    type = "structure",
    id = "DeleteLFTagOutput",
}

M.DeleteLFTagExpressionInput = {
    type = "structure",
    id = "DeleteLFTagExpressionInput",
    members = {
        Name = {
            type = "string",
            traits = {
                required = true,
            },
        },
        CatalogId = {
            type = "string",
        },
    },
}

M.DeleteLFTagExpressionOutput = {
    type = "structure",
    id = "DeleteLFTagExpressionOutput",
}

M.VirtualObject = {
    type = "structure",
    id = "VirtualObject",
    members = {
        Uri = {
            type = "string",
            traits = {
                required = true,
            },
        },
        ETag = {
            type = "string",
        },
    },
}

M.DeleteObjectsOnCancelInput = {
    type = "structure",
    id = "DeleteObjectsOnCancelInput",
    members = {
        CatalogId = {
            type = "string",
        },
        DatabaseName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        TableName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        TransactionId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Objects = {
            type = "list",
            member = M.VirtualObject,
            traits = {
                required = true,
            },
        },
    },
}

M.DeleteObjectsOnCancelOutput = {
    type = "structure",
    id = "DeleteObjectsOnCancelOutput",
}

M.ResourceNotReadyException = {
    type = "structure",
    id = "ResourceNotReadyException",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.DeregisterResourceInput = {
    type = "structure",
    id = "DeregisterResourceInput",
    members = {
        ResourceArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.DeregisterResourceOutput = {
    type = "structure",
    id = "DeregisterResourceOutput",
}

M.DescribeLakeFormationIdentityCenterConfigurationInput = {
    type = "structure",
    id = "DescribeLakeFormationIdentityCenterConfigurationInput",
    members = {
        CatalogId = {
            type = "string",
        },
    },
}

M.DescribeLakeFormationIdentityCenterConfigurationOutput = {
    type = "structure",
    id = "DescribeLakeFormationIdentityCenterConfigurationOutput",
    members = {
        CatalogId = {
            type = "string",
        },
        InstanceArn = {
            type = "string",
        },
        ApplicationArn = {
            type = "string",
        },
        ExternalFiltering = M.ExternalFilteringConfiguration,
        ShareRecipients = {
            type = "list",
            member = M.DataLakePrincipal,
        },
        ServiceIntegrations = {
            type = "list",
            member = M.ServiceIntegrationUnion,
        },
        ResourceShare = {
            type = "string",
        },
    },
}

M.DescribeResourceInput = {
    type = "structure",
    id = "DescribeResourceInput",
    members = {
        ResourceArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.VerificationStatus = {
    VERIFIED = "VERIFIED",
    VERIFICATION_FAILED = "VERIFICATION_FAILED",
    NOT_VERIFIED = "NOT_VERIFIED",
}

M.ResourceInfo = {
    type = "structure",
    id = "ResourceInfo",
    members = {
        ResourceArn = {
            type = "string",
        },
        RoleArn = {
            type = "string",
        },
        LastModified = {
            type = "timestamp",
        },
        WithFederation = {
            type = "boolean",
        },
        HybridAccessEnabled = {
            type = "boolean",
        },
        WithPrivilegedAccess = {
            type = "boolean",
        },
        VerificationStatus = {
            type = "string",
        },
        ExpectedResourceOwnerAccount = {
            type = "string",
        },
    },
}

M.DescribeResourceOutput = {
    type = "structure",
    id = "DescribeResourceOutput",
    members = {
        ResourceInfo = M.ResourceInfo,
    },
}

M.DescribeTransactionInput = {
    type = "structure",
    id = "DescribeTransactionInput",
    members = {
        TransactionId = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.TransactionDescription = {
    type = "structure",
    id = "TransactionDescription",
    members = {
        TransactionId = {
            type = "string",
        },
        TransactionStatus = {
            type = "string",
        },
        TransactionStartTime = {
            type = "timestamp",
        },
        TransactionEndTime = {
            type = "timestamp",
        },
    },
}

M.DescribeTransactionOutput = {
    type = "structure",
    id = "DescribeTransactionOutput",
    members = {
        TransactionDescription = M.TransactionDescription,
    },
}

M.ExtendTransactionInput = {
    type = "structure",
    id = "ExtendTransactionInput",
    members = {
        TransactionId = {
            type = "string",
        },
    },
}

M.ExtendTransactionOutput = {
    type = "structure",
    id = "ExtendTransactionOutput",
}

M.GetDataCellsFilterInput = {
    type = "structure",
    id = "GetDataCellsFilterInput",
    members = {
        TableCatalogId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        DatabaseName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        TableName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Name = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.GetDataCellsFilterOutput = {
    type = "structure",
    id = "GetDataCellsFilterOutput",
    members = {
        DataCellsFilter = M.DataCellsFilter,
    },
}

M.GetDataLakePrincipalInput = {
    type = "structure",
    id = "GetDataLakePrincipalInput",
}

M.GetDataLakePrincipalOutput = {
    type = "structure",
    id = "GetDataLakePrincipalOutput",
    members = {
        Identity = {
            type = "string",
        },
    },
}

M.GetDataLakeSettingsInput = {
    type = "structure",
    id = "GetDataLakeSettingsInput",
    members = {
        CatalogId = {
            type = "string",
        },
    },
}

M.PrincipalPermissions = {
    type = "structure",
    id = "PrincipalPermissions",
    members = {
        Principal = M.DataLakePrincipal,
        Permissions = {
            type = "list",
            member = { type = "string" },
        },
    },
}

M.DataLakeSettings = {
    type = "structure",
    id = "DataLakeSettings",
    members = {
        DataLakeAdmins = {
            type = "list",
            member = M.DataLakePrincipal,
        },
        ReadOnlyAdmins = {
            type = "list",
            member = M.DataLakePrincipal,
        },
        CreateDatabaseDefaultPermissions = {
            type = "list",
            member = M.PrincipalPermissions,
        },
        CreateTableDefaultPermissions = {
            type = "list",
            member = M.PrincipalPermissions,
        },
        Parameters = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
        TrustedResourceOwners = {
            type = "list",
            member = { type = "string" },
        },
        AllowExternalDataFiltering = {
            type = "boolean",
        },
        AllowFullTableExternalDataAccess = {
            type = "boolean",
        },
        ExternalDataFilteringAllowList = {
            type = "list",
            member = M.DataLakePrincipal,
        },
        AuthorizedSessionTagValueList = {
            type = "list",
            member = { type = "string" },
        },
    },
}

M.GetDataLakeSettingsOutput = {
    type = "structure",
    id = "GetDataLakeSettingsOutput",
    members = {
        DataLakeSettings = M.DataLakeSettings,
    },
}

M.GetEffectivePermissionsForPathInput = {
    type = "structure",
    id = "GetEffectivePermissionsForPathInput",
    members = {
        CatalogId = {
            type = "string",
        },
        ResourceArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        NextToken = {
            type = "string",
        },
        MaxResults = {
            type = "integer",
        },
    },
}

M.DetailsMap = {
    type = "structure",
    id = "DetailsMap",
    members = {
        ResourceShare = {
            type = "list",
            member = { type = "string" },
        },
    },
}

M.PrincipalResourcePermissions = {
    type = "structure",
    id = "PrincipalResourcePermissions",
    members = {
        Principal = M.DataLakePrincipal,
        Resource = M.Resource,
        Condition = M.Condition,
        Permissions = {
            type = "list",
            member = { type = "string" },
        },
        PermissionsWithGrantOption = {
            type = "list",
            member = { type = "string" },
        },
        AdditionalDetails = M.DetailsMap,
        LastUpdated = {
            type = "timestamp",
        },
        LastUpdatedBy = {
            type = "string",
        },
    },
}

M.GetEffectivePermissionsForPathOutput = {
    type = "structure",
    id = "GetEffectivePermissionsForPathOutput",
    members = {
        Permissions = {
            type = "list",
            member = M.PrincipalResourcePermissions,
        },
        NextToken = {
            type = "string",
        },
    },
}

M.GetLFTagInput = {
    type = "structure",
    id = "GetLFTagInput",
    members = {
        CatalogId = {
            type = "string",
        },
        TagKey = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.GetLFTagOutput = {
    type = "structure",
    id = "GetLFTagOutput",
    members = {
        CatalogId = {
            type = "string",
        },
        TagKey = {
            type = "string",
        },
        TagValues = {
            type = "list",
            member = { type = "string" },
        },
    },
}

M.GetLFTagExpressionInput = {
    type = "structure",
    id = "GetLFTagExpressionInput",
    members = {
        Name = {
            type = "string",
            traits = {
                required = true,
            },
        },
        CatalogId = {
            type = "string",
        },
    },
}

M.GetLFTagExpressionOutput = {
    type = "structure",
    id = "GetLFTagExpressionOutput",
    members = {
        Name = {
            type = "string",
        },
        Description = {
            type = "string",
        },
        CatalogId = {
            type = "string",
        },
        Expression = {
            type = "list",
            member = M.LFTag,
        },
    },
}

M.GetQueryStateInput = {
    type = "structure",
    id = "GetQueryStateInput",
    members = {
        QueryId = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.QueryStateString = {
    PENDING = "PENDING",
    WORKUNITS_AVAILABLE = "WORKUNITS_AVAILABLE",
    ERROR = "ERROR",
    FINISHED = "FINISHED",
    EXPIRED = "EXPIRED",
}

M.GetQueryStateOutput = {
    type = "structure",
    id = "GetQueryStateOutput",
    members = {
        Error = {
            type = "string",
        },
        State = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.ExpiredException = {
    type = "structure",
    id = "ExpiredException",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.GetQueryStatisticsInput = {
    type = "structure",
    id = "GetQueryStatisticsInput",
    members = {
        QueryId = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.ExecutionStatistics = {
    type = "structure",
    id = "ExecutionStatistics",
    members = {
        AverageExecutionTimeMillis = {
            type = "long",
            traits = {
                default = 0,
            },
        },
        DataScannedBytes = {
            type = "long",
            traits = {
                default = 0,
            },
        },
        WorkUnitsExecutedCount = {
            type = "long",
            traits = {
                default = 0,
            },
        },
    },
}

M.PlanningStatistics = {
    type = "structure",
    id = "PlanningStatistics",
    members = {
        EstimatedDataToScanBytes = {
            type = "long",
            traits = {
                default = 0,
            },
        },
        PlanningTimeMillis = {
            type = "long",
            traits = {
                default = 0,
            },
        },
        QueueTimeMillis = {
            type = "long",
            traits = {
                default = 0,
            },
        },
        WorkUnitsGeneratedCount = {
            type = "long",
            traits = {
                default = 0,
            },
        },
    },
}

M.GetQueryStatisticsOutput = {
    type = "structure",
    id = "GetQueryStatisticsOutput",
    members = {
        ExecutionStatistics = M.ExecutionStatistics,
        PlanningStatistics = M.PlanningStatistics,
        QuerySubmissionTime = {
            type = "timestamp",
            traits = {
                timestamp_format = "date-time",
            },
        },
    },
}

M.StatisticsNotReadyYetException = {
    type = "structure",
    id = "StatisticsNotReadyYetException",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.ThrottledException = {
    type = "structure",
    id = "ThrottledException",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.GetResourceLFTagsInput = {
    type = "structure",
    id = "GetResourceLFTagsInput",
    members = {
        CatalogId = {
            type = "string",
        },
        Resource = setmetatable({ traits = {
            required = true,
        } }, { __index = M.Resource }),
        ShowAssignedLFTags = {
            type = "boolean",
        },
    },
}

M.ColumnLFTag = {
    type = "structure",
    id = "ColumnLFTag",
    members = {
        Name = {
            type = "string",
        },
        LFTags = {
            type = "list",
            member = M.LFTagPair,
        },
    },
}

M.GetResourceLFTagsOutput = {
    type = "structure",
    id = "GetResourceLFTagsOutput",
    members = {
        LFTagOnDatabase = {
            type = "list",
            member = M.LFTagPair,
        },
        LFTagsOnTable = {
            type = "list",
            member = M.LFTagPair,
        },
        LFTagsOnColumns = {
            type = "list",
            member = M.ColumnLFTag,
        },
    },
}

M.GlueEncryptionException = {
    type = "structure",
    id = "GlueEncryptionException",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.GetTableObjectsInput = {
    type = "structure",
    id = "GetTableObjectsInput",
    members = {
        CatalogId = {
            type = "string",
        },
        DatabaseName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        TableName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        TransactionId = {
            type = "string",
        },
        QueryAsOfTime = {
            type = "timestamp",
        },
        PartitionPredicate = {
            type = "string",
        },
        MaxResults = {
            type = "integer",
        },
        NextToken = {
            type = "string",
        },
    },
}

M.TableObject = {
    type = "structure",
    id = "TableObject",
    members = {
        Uri = {
            type = "string",
        },
        ETag = {
            type = "string",
        },
        Size = {
            type = "long",
            traits = {
                default = 0,
            },
        },
    },
}

M.PartitionObjects = {
    type = "structure",
    id = "PartitionObjects",
    members = {
        PartitionValues = {
            type = "list",
            member = { type = "string" },
        },
        Objects = {
            type = "list",
            member = M.TableObject,
        },
    },
}

M.GetTableObjectsOutput = {
    type = "structure",
    id = "GetTableObjectsOutput",
    members = {
        Objects = {
            type = "list",
            member = M.PartitionObjects,
        },
        NextToken = {
            type = "string",
        },
    },
}

M.ConflictException = {
    type = "structure",
    id = "ConflictException",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.CredentialsScope = {
    READ = "READ",
    READWRITE = "READWRITE",
}

M.GetTemporaryDataLocationCredentialsInput = {
    type = "structure",
    id = "GetTemporaryDataLocationCredentialsInput",
    members = {
        DurationSeconds = {
            type = "integer",
        },
        AuditContext = M.AuditContext,
        DataLocations = {
            type = "list",
            member = { type = "string" },
        },
        CredentialsScope = {
            type = "string",
        },
    },
}

M.TemporaryCredentials = {
    type = "structure",
    id = "TemporaryCredentials",
    members = {
        AccessKeyId = {
            type = "string",
        },
        SecretAccessKey = {
            type = "string",
        },
        SessionToken = {
            type = "string",
        },
        Expiration = {
            type = "timestamp",
        },
    },
}

M.GetTemporaryDataLocationCredentialsOutput = {
    type = "structure",
    id = "GetTemporaryDataLocationCredentialsOutput",
    members = {
        Credentials = M.TemporaryCredentials,
        AccessibleDataLocations = {
            type = "list",
            member = { type = "string" },
        },
        CredentialsScope = {
            type = "string",
        },
    },
}

M.PartitionValueList = {
    type = "structure",
    id = "PartitionValueList",
    members = {
        Values = {
            type = "list",
            member = { type = "string" },
            traits = {
                required = true,
            },
        },
    },
}

M.PermissionType = {
    COLUMN_PERMISSION = "COLUMN_PERMISSION",
    CELL_FILTER_PERMISSION = "CELL_FILTER_PERMISSION",
    NESTED_PERMISSION = "NESTED_PERMISSION",
    NESTED_CELL_PERMISSION = "NESTED_CELL_PERMISSION",
}

M.GetTemporaryGluePartitionCredentialsInput = {
    type = "structure",
    id = "GetTemporaryGluePartitionCredentialsInput",
    members = {
        TableArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Partition = setmetatable({ traits = {
            required = true,
        } }, { __index = M.PartitionValueList }),
        Permissions = {
            type = "list",
            member = { type = "string" },
        },
        DurationSeconds = {
            type = "integer",
        },
        AuditContext = M.AuditContext,
        SupportedPermissionTypes = {
            type = "list",
            member = { type = "string" },
        },
    },
}

M.GetTemporaryGluePartitionCredentialsOutput = {
    type = "structure",
    id = "GetTemporaryGluePartitionCredentialsOutput",
    members = {
        AccessKeyId = {
            type = "string",
        },
        SecretAccessKey = {
            type = "string",
        },
        SessionToken = {
            type = "string",
        },
        Expiration = {
            type = "timestamp",
        },
    },
}

M.PermissionTypeMismatchException = {
    type = "structure",
    id = "PermissionTypeMismatchException",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.QuerySessionContext = {
    type = "structure",
    id = "QuerySessionContext",
    members = {
        QueryId = {
            type = "string",
        },
        QueryStartTime = {
            type = "timestamp",
        },
        ClusterId = {
            type = "string",
        },
        QueryAuthorizationId = {
            type = "string",
        },
        AdditionalContext = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
    },
}

M.GetTemporaryGlueTableCredentialsInput = {
    type = "structure",
    id = "GetTemporaryGlueTableCredentialsInput",
    members = {
        TableArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Permissions = {
            type = "list",
            member = { type = "string" },
        },
        DurationSeconds = {
            type = "integer",
        },
        AuditContext = M.AuditContext,
        SupportedPermissionTypes = {
            type = "list",
            member = { type = "string" },
        },
        S3Path = {
            type = "string",
        },
        QuerySessionContext = M.QuerySessionContext,
    },
}

M.GetTemporaryGlueTableCredentialsOutput = {
    type = "structure",
    id = "GetTemporaryGlueTableCredentialsOutput",
    members = {
        AccessKeyId = {
            type = "string",
        },
        SecretAccessKey = {
            type = "string",
        },
        SessionToken = {
            type = "string",
        },
        Expiration = {
            type = "timestamp",
        },
        VendedS3Path = {
            type = "list",
            member = { type = "string" },
        },
    },
}

M.GetWorkUnitResultsInput = {
    type = "structure",
    id = "GetWorkUnitResultsInput",
    members = {
        QueryId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        WorkUnitId = {
            type = "long",
            traits = {
                default = 0,
                required = true,
            },
        },
        WorkUnitToken = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.GetWorkUnitResultsOutput = {
    type = "structure",
    id = "GetWorkUnitResultsOutput",
    members = {
        ResultStream = {
            type = "blob",
            traits = {
                default = "",
                http_payload = true,
            },
        },
    },
}

M.GetWorkUnitsInput = {
    type = "structure",
    id = "GetWorkUnitsInput",
    members = {
        NextToken = {
            type = "string",
        },
        PageSize = {
            type = "integer",
        },
        QueryId = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.WorkUnitRange = {
    type = "structure",
    id = "WorkUnitRange",
    members = {
        WorkUnitIdMax = {
            type = "long",
            traits = {
                default = 0,
                required = true,
            },
        },
        WorkUnitIdMin = {
            type = "long",
            traits = {
                default = 0,
                required = true,
            },
        },
        WorkUnitToken = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.GetWorkUnitsOutput = {
    type = "structure",
    id = "GetWorkUnitsOutput",
    members = {
        NextToken = {
            type = "string",
        },
        QueryId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        WorkUnitRanges = {
            type = "list",
            member = M.WorkUnitRange,
            traits = {
                required = true,
            },
        },
    },
}

M.WorkUnitsNotReadyYetException = {
    type = "structure",
    id = "WorkUnitsNotReadyYetException",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.GrantPermissionsInput = {
    type = "structure",
    id = "GrantPermissionsInput",
    members = {
        CatalogId = {
            type = "string",
        },
        Principal = setmetatable({ traits = {
            required = true,
        } }, { __index = M.DataLakePrincipal }),
        Resource = setmetatable({ traits = {
            required = true,
        } }, { __index = M.Resource }),
        Permissions = {
            type = "list",
            member = { type = "string" },
            traits = {
                required = true,
            },
        },
        Condition = M.Condition,
        PermissionsWithGrantOption = {
            type = "list",
            member = { type = "string" },
        },
    },
}

M.GrantPermissionsOutput = {
    type = "structure",
    id = "GrantPermissionsOutput",
}

M.ListDataCellsFilterInput = {
    type = "structure",
    id = "ListDataCellsFilterInput",
    members = {
        Table = M.TableResource,
        NextToken = {
            type = "string",
        },
        MaxResults = {
            type = "integer",
        },
    },
}

M.ListDataCellsFilterOutput = {
    type = "structure",
    id = "ListDataCellsFilterOutput",
    members = {
        DataCellsFilters = {
            type = "list",
            member = M.DataCellsFilter,
        },
        NextToken = {
            type = "string",
        },
    },
}

M.ListLakeFormationOptInsInput = {
    type = "structure",
    id = "ListLakeFormationOptInsInput",
    members = {
        Principal = M.DataLakePrincipal,
        Resource = M.Resource,
        MaxResults = {
            type = "integer",
        },
        NextToken = {
            type = "string",
        },
    },
}

M.LakeFormationOptInsInfo = {
    type = "structure",
    id = "LakeFormationOptInsInfo",
    members = {
        Resource = M.Resource,
        Principal = M.DataLakePrincipal,
        Condition = M.Condition,
        LastModified = {
            type = "timestamp",
        },
        LastUpdatedBy = {
            type = "string",
        },
    },
}

M.ListLakeFormationOptInsOutput = {
    type = "structure",
    id = "ListLakeFormationOptInsOutput",
    members = {
        LakeFormationOptInsInfoList = {
            type = "list",
            member = M.LakeFormationOptInsInfo,
        },
        NextToken = {
            type = "string",
        },
    },
}

M.ListLFTagExpressionsInput = {
    type = "structure",
    id = "ListLFTagExpressionsInput",
    members = {
        CatalogId = {
            type = "string",
        },
        MaxResults = {
            type = "integer",
        },
        NextToken = {
            type = "string",
        },
    },
}

M.LFTagExpression = {
    type = "structure",
    id = "LFTagExpression",
    members = {
        Name = {
            type = "string",
        },
        Description = {
            type = "string",
        },
        CatalogId = {
            type = "string",
        },
        Expression = {
            type = "list",
            member = M.LFTag,
        },
    },
}

M.ListLFTagExpressionsOutput = {
    type = "structure",
    id = "ListLFTagExpressionsOutput",
    members = {
        LFTagExpressions = {
            type = "list",
            member = M.LFTagExpression,
        },
        NextToken = {
            type = "string",
        },
    },
}

M.ResourceShareType = {
    FOREIGN = "FOREIGN",
    ALL = "ALL",
}

M.ListLFTagsInput = {
    type = "structure",
    id = "ListLFTagsInput",
    members = {
        CatalogId = {
            type = "string",
        },
        ResourceShareType = {
            type = "string",
        },
        MaxResults = {
            type = "integer",
        },
        NextToken = {
            type = "string",
        },
    },
}

M.ListLFTagsOutput = {
    type = "structure",
    id = "ListLFTagsOutput",
    members = {
        LFTags = {
            type = "list",
            member = M.LFTagPair,
        },
        NextToken = {
            type = "string",
        },
    },
}

M.DataLakeResourceType = {
    CATALOG = "CATALOG",
    DATABASE = "DATABASE",
    TABLE = "TABLE",
    DATA_LOCATION = "DATA_LOCATION",
    LF_TAG = "LF_TAG",
    LF_TAG_POLICY = "LF_TAG_POLICY",
    LF_TAG_POLICY_DATABASE = "LF_TAG_POLICY_DATABASE",
    LF_TAG_POLICY_TABLE = "LF_TAG_POLICY_TABLE",
    LF_NAMED_TAG_EXPRESSION = "LF_NAMED_TAG_EXPRESSION",
}

M.ListPermissionsInput = {
    type = "structure",
    id = "ListPermissionsInput",
    members = {
        CatalogId = {
            type = "string",
        },
        Principal = M.DataLakePrincipal,
        ResourceType = {
            type = "string",
        },
        Resource = M.Resource,
        NextToken = {
            type = "string",
        },
        MaxResults = {
            type = "integer",
        },
        IncludeRelated = {
            type = "string",
        },
    },
}

M.ListPermissionsOutput = {
    type = "structure",
    id = "ListPermissionsOutput",
    members = {
        PrincipalResourcePermissions = {
            type = "list",
            member = M.PrincipalResourcePermissions,
        },
        NextToken = {
            type = "string",
        },
    },
}

M.ComparisonOperator = {
    EQ = "EQ",
    NE = "NE",
    LE = "LE",
    LT = "LT",
    GE = "GE",
    GT = "GT",
    CONTAINS = "CONTAINS",
    NOT_CONTAINS = "NOT_CONTAINS",
    BEGINS_WITH = "BEGINS_WITH",
    IN = "IN",
    BETWEEN = "BETWEEN",
}

M.FieldNameString = {
    RESOURCE_ARN = "RESOURCE_ARN",
    ROLE_ARN = "ROLE_ARN",
    LAST_MODIFIED = "LAST_MODIFIED",
}

M.FilterCondition = {
    type = "structure",
    id = "FilterCondition",
    members = {
        Field = {
            type = "string",
        },
        ComparisonOperator = {
            type = "string",
        },
        StringValueList = {
            type = "list",
            member = { type = "string" },
        },
    },
}

M.ListResourcesInput = {
    type = "structure",
    id = "ListResourcesInput",
    members = {
        FilterConditionList = {
            type = "list",
            member = M.FilterCondition,
        },
        MaxResults = {
            type = "integer",
        },
        NextToken = {
            type = "string",
        },
    },
}

M.ListResourcesOutput = {
    type = "structure",
    id = "ListResourcesOutput",
    members = {
        ResourceInfoList = {
            type = "list",
            member = M.ResourceInfo,
        },
        NextToken = {
            type = "string",
        },
    },
}

M.OptimizerType = {
    COMPACTION = "COMPACTION",
    GARBAGE_COLLECTION = "GARBAGE_COLLECTION",
    GENERIC = "ALL",
}

M.ListTableStorageOptimizersInput = {
    type = "structure",
    id = "ListTableStorageOptimizersInput",
    members = {
        CatalogId = {
            type = "string",
        },
        DatabaseName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        TableName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        StorageOptimizerType = {
            type = "string",
        },
        MaxResults = {
            type = "integer",
        },
        NextToken = {
            type = "string",
        },
    },
}

M.StorageOptimizer = {
    type = "structure",
    id = "StorageOptimizer",
    members = {
        StorageOptimizerType = {
            type = "string",
        },
        Config = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
        ErrorMessage = {
            type = "string",
        },
        Warnings = {
            type = "string",
        },
        LastRunDetails = {
            type = "string",
        },
    },
}

M.ListTableStorageOptimizersOutput = {
    type = "structure",
    id = "ListTableStorageOptimizersOutput",
    members = {
        StorageOptimizerList = {
            type = "list",
            member = M.StorageOptimizer,
        },
        NextToken = {
            type = "string",
        },
    },
}

M.TransactionStatusFilter = {
    ALL = "ALL",
    COMPLETED = "COMPLETED",
    ACTIVE = "ACTIVE",
    COMMITTED = "COMMITTED",
    ABORTED = "ABORTED",
}

M.ListTransactionsInput = {
    type = "structure",
    id = "ListTransactionsInput",
    members = {
        CatalogId = {
            type = "string",
        },
        StatusFilter = {
            type = "string",
        },
        MaxResults = {
            type = "integer",
        },
        NextToken = {
            type = "string",
        },
    },
}

M.ListTransactionsOutput = {
    type = "structure",
    id = "ListTransactionsOutput",
    members = {
        Transactions = {
            type = "list",
            member = M.TransactionDescription,
        },
        NextToken = {
            type = "string",
        },
    },
}

M.PutDataLakeSettingsInput = {
    type = "structure",
    id = "PutDataLakeSettingsInput",
    members = {
        CatalogId = {
            type = "string",
        },
        DataLakeSettings = setmetatable({ traits = {
            required = true,
        } }, { __index = M.DataLakeSettings }),
    },
}

M.PutDataLakeSettingsOutput = {
    type = "structure",
    id = "PutDataLakeSettingsOutput",
}

M.RegisterResourceInput = {
    type = "structure",
    id = "RegisterResourceInput",
    members = {
        ResourceArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        UseServiceLinkedRole = {
            type = "boolean",
        },
        RoleArn = {
            type = "string",
        },
        WithFederation = {
            type = "boolean",
        },
        HybridAccessEnabled = {
            type = "boolean",
        },
        WithPrivilegedAccess = {
            type = "boolean",
            traits = {
                default = false,
            },
        },
        ExpectedResourceOwnerAccount = {
            type = "string",
        },
    },
}

M.RegisterResourceOutput = {
    type = "structure",
    id = "RegisterResourceOutput",
}

M.RemoveLFTagsFromResourceInput = {
    type = "structure",
    id = "RemoveLFTagsFromResourceInput",
    members = {
        CatalogId = {
            type = "string",
        },
        Resource = setmetatable({ traits = {
            required = true,
        } }, { __index = M.Resource }),
        LFTags = {
            type = "list",
            member = M.LFTagPair,
            traits = {
                required = true,
            },
        },
    },
}

M.RemoveLFTagsFromResourceOutput = {
    type = "structure",
    id = "RemoveLFTagsFromResourceOutput",
    members = {
        Failures = {
            type = "list",
            member = M.LFTagError,
        },
    },
}

M.RevokePermissionsInput = {
    type = "structure",
    id = "RevokePermissionsInput",
    members = {
        CatalogId = {
            type = "string",
        },
        Principal = setmetatable({ traits = {
            required = true,
        } }, { __index = M.DataLakePrincipal }),
        Resource = setmetatable({ traits = {
            required = true,
        } }, { __index = M.Resource }),
        Permissions = {
            type = "list",
            member = { type = "string" },
            traits = {
                required = true,
            },
        },
        Condition = M.Condition,
        PermissionsWithGrantOption = {
            type = "list",
            member = { type = "string" },
        },
    },
}

M.RevokePermissionsOutput = {
    type = "structure",
    id = "RevokePermissionsOutput",
}

M.SearchDatabasesByLFTagsInput = {
    type = "structure",
    id = "SearchDatabasesByLFTagsInput",
    members = {
        NextToken = {
            type = "string",
        },
        MaxResults = {
            type = "integer",
        },
        CatalogId = {
            type = "string",
        },
        Expression = {
            type = "list",
            member = M.LFTag,
            traits = {
                required = true,
            },
        },
    },
}

M.TaggedDatabase = {
    type = "structure",
    id = "TaggedDatabase",
    members = {
        Database = M.DatabaseResource,
        LFTags = {
            type = "list",
            member = M.LFTagPair,
        },
    },
}

M.SearchDatabasesByLFTagsOutput = {
    type = "structure",
    id = "SearchDatabasesByLFTagsOutput",
    members = {
        NextToken = {
            type = "string",
        },
        DatabaseList = {
            type = "list",
            member = M.TaggedDatabase,
        },
    },
}

M.SearchTablesByLFTagsInput = {
    type = "structure",
    id = "SearchTablesByLFTagsInput",
    members = {
        NextToken = {
            type = "string",
        },
        MaxResults = {
            type = "integer",
        },
        CatalogId = {
            type = "string",
        },
        Expression = {
            type = "list",
            member = M.LFTag,
            traits = {
                required = true,
            },
        },
    },
}

M.TaggedTable = {
    type = "structure",
    id = "TaggedTable",
    members = {
        Table = M.TableResource,
        LFTagOnDatabase = {
            type = "list",
            member = M.LFTagPair,
        },
        LFTagsOnTable = {
            type = "list",
            member = M.LFTagPair,
        },
        LFTagsOnColumns = {
            type = "list",
            member = M.ColumnLFTag,
        },
    },
}

M.SearchTablesByLFTagsOutput = {
    type = "structure",
    id = "SearchTablesByLFTagsOutput",
    members = {
        NextToken = {
            type = "string",
        },
        TableList = {
            type = "list",
            member = M.TaggedTable,
        },
    },
}

M.QueryPlanningContext = {
    type = "structure",
    id = "QueryPlanningContext",
    members = {
        CatalogId = {
            type = "string",
        },
        DatabaseName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        QueryAsOfTime = {
            type = "timestamp",
        },
        QueryParameters = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
        TransactionId = {
            type = "string",
        },
    },
}

M.StartQueryPlanningInput = {
    type = "structure",
    id = "StartQueryPlanningInput",
    members = {
        QueryPlanningContext = setmetatable({ traits = {
            required = true,
        } }, { __index = M.QueryPlanningContext }),
        QueryString = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.StartQueryPlanningOutput = {
    type = "structure",
    id = "StartQueryPlanningOutput",
    members = {
        QueryId = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.TransactionType = {
    READ_AND_WRITE = "READ_AND_WRITE",
    READ_ONLY = "READ_ONLY",
}

M.StartTransactionInput = {
    type = "structure",
    id = "StartTransactionInput",
    members = {
        TransactionType = {
            type = "string",
        },
    },
}

M.StartTransactionOutput = {
    type = "structure",
    id = "StartTransactionOutput",
    members = {
        TransactionId = {
            type = "string",
        },
    },
}

M.UpdateDataCellsFilterInput = {
    type = "structure",
    id = "UpdateDataCellsFilterInput",
    members = {
        TableData = setmetatable({ traits = {
            required = true,
        } }, { __index = M.DataCellsFilter }),
    },
}

M.UpdateDataCellsFilterOutput = {
    type = "structure",
    id = "UpdateDataCellsFilterOutput",
}

M.UpdateLakeFormationIdentityCenterConfigurationInput = {
    type = "structure",
    id = "UpdateLakeFormationIdentityCenterConfigurationInput",
    members = {
        CatalogId = {
            type = "string",
        },
        ShareRecipients = {
            type = "list",
            member = M.DataLakePrincipal,
        },
        ServiceIntegrations = {
            type = "list",
            member = M.ServiceIntegrationUnion,
        },
        ApplicationStatus = {
            type = "string",
        },
        ExternalFiltering = M.ExternalFilteringConfiguration,
    },
}

M.UpdateLakeFormationIdentityCenterConfigurationOutput = {
    type = "structure",
    id = "UpdateLakeFormationIdentityCenterConfigurationOutput",
}

M.UpdateLFTagInput = {
    type = "structure",
    id = "UpdateLFTagInput",
    members = {
        CatalogId = {
            type = "string",
        },
        TagKey = {
            type = "string",
            traits = {
                required = true,
            },
        },
        TagValuesToDelete = {
            type = "list",
            member = { type = "string" },
        },
        TagValuesToAdd = {
            type = "list",
            member = { type = "string" },
        },
    },
}

M.UpdateLFTagOutput = {
    type = "structure",
    id = "UpdateLFTagOutput",
}

M.UpdateLFTagExpressionInput = {
    type = "structure",
    id = "UpdateLFTagExpressionInput",
    members = {
        Name = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Description = {
            type = "string",
        },
        CatalogId = {
            type = "string",
        },
        Expression = {
            type = "list",
            member = M.LFTag,
            traits = {
                required = true,
            },
        },
    },
}

M.UpdateLFTagExpressionOutput = {
    type = "structure",
    id = "UpdateLFTagExpressionOutput",
}

M.UpdateResourceInput = {
    type = "structure",
    id = "UpdateResourceInput",
    members = {
        RoleArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        ResourceArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        WithFederation = {
            type = "boolean",
        },
        HybridAccessEnabled = {
            type = "boolean",
        },
        ExpectedResourceOwnerAccount = {
            type = "string",
        },
    },
}

M.UpdateResourceOutput = {
    type = "structure",
    id = "UpdateResourceOutput",
}

M.DeleteObjectInput = {
    type = "structure",
    id = "DeleteObjectInput",
    members = {
        Uri = {
            type = "string",
            traits = {
                required = true,
            },
        },
        ETag = {
            type = "string",
        },
        PartitionValues = {
            type = "list",
            member = { type = "string" },
        },
    },
}

M.WriteOperation = {
    type = "structure",
    id = "WriteOperation",
    members = {
        AddObject = M.AddObjectInput,
        DeleteObject = M.DeleteObjectInput,
    },
}

M.UpdateTableObjectsInput = {
    type = "structure",
    id = "UpdateTableObjectsInput",
    members = {
        CatalogId = {
            type = "string",
        },
        DatabaseName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        TableName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        TransactionId = {
            type = "string",
        },
        WriteOperations = {
            type = "list",
            member = M.WriteOperation,
            traits = {
                required = true,
            },
        },
    },
}

M.UpdateTableObjectsOutput = {
    type = "structure",
    id = "UpdateTableObjectsOutput",
}

M.UpdateTableStorageOptimizerInput = {
    type = "structure",
    id = "UpdateTableStorageOptimizerInput",
    members = {
        CatalogId = {
            type = "string",
        },
        DatabaseName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        TableName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        StorageOptimizerConfig = {
            type = "map",
            key = { type = "string" },
            value = { type = "map" },
            traits = {
                required = true,
            },
        },
    },
}

M.UpdateTableStorageOptimizerOutput = {
    type = "structure",
    id = "UpdateTableStorageOptimizerOutput",
    members = {
        Result = {
            type = "string",
        },
    },
}

return M
