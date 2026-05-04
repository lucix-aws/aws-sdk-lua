local M = {}

M.AccessDeniedException = {
    type = "structure",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.LFTagPair = {
    type = "structure",
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
    members = {
        Id = {
            type = "string",
        },
    },
}

M.DatabaseResource = {
    type = "structure",
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
}

M.TableResource = {
    type = "structure",
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
    members = {
        ExcludedColumnNames = {
            type = "list",
            member = { type = "string" },
        },
    },
}

M.TableWithColumnsResource = {
    type = "structure",
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
    members = {
        LFTag = M.LFTagPair,
        Error = M.ErrorDetail,
    },
}

M.AddLFTagsToResourceOutput = {
    type = "structure",
    members = {
        Failures = {
            type = "list",
            member = M.LFTagError,
        },
    },
}

M.ConcurrentModificationException = {
    type = "structure",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.EntityNotFoundException = {
    type = "structure",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.InternalServiceException = {
    type = "structure",
    error = "server",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.InvalidInputException = {
    type = "structure",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.OperationTimeoutException = {
    type = "structure",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.AddObjectInput = {
    type = "structure",
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
}

M.AlreadyExistsException = {
    type = "structure",
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
    members = {
        AdditionalAuditContext = {
            type = "string",
        },
    },
}

M.Condition = {
    type = "structure",
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
    members = {
        DataLakePrincipalIdentifier = {
            type = "string",
        },
    },
}

M.BatchPermissionsRequestEntry = {
    type = "structure",
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
    members = {
        RequestEntry = M.BatchPermissionsRequestEntry,
        Error = M.ErrorDetail,
    },
}

M.BatchGrantPermissionsOutput = {
    type = "structure",
    members = {
        Failures = {
            type = "list",
            member = M.BatchPermissionsFailureEntry,
        },
    },
}

M.BatchRevokePermissionsInput = {
    type = "structure",
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
    members = {
        Failures = {
            type = "list",
            member = M.BatchPermissionsFailureEntry,
        },
    },
}

M.CancelTransactionInput = {
    type = "structure",
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
}

M.TransactionCommitInProgressException = {
    type = "structure",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.TransactionCommittedException = {
    type = "structure",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.CommitTransactionInput = {
    type = "structure",
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
    members = {
        TransactionStatus = {
            type = "string",
        },
    },
}

M.TransactionCanceledException = {
    type = "structure",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.RowFilter = {
    type = "structure",
    members = {
        FilterExpression = {
            type = "string",
        },
        AllRowsWildcard = M.AllRowsWildcard,
    },
}

M.DataCellsFilter = {
    type = "structure",
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
    members = {
        TableData = setmetatable({ traits = {
            required = true,
        } }, { __index = M.DataCellsFilter }),
    },
}

M.CreateDataCellsFilterOutput = {
    type = "structure",
}

M.ResourceNumberLimitExceededException = {
    type = "structure",
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
    members = {
        RedshiftConnect = M.RedshiftConnect,
    },
}

M.ServiceIntegrationUnion = {
    type = "union",
    members = {
        Redshift = {
            type = "list",
            member = M.RedshiftScopeUnion,
        },
    },
}

M.CreateLakeFormationIdentityCenterConfigurationInput = {
    type = "structure",
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
    members = {
        ApplicationArn = {
            type = "string",
        },
    },
}

M.CreateLakeFormationOptInInput = {
    type = "structure",
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
}

M.CreateLFTagInput = {
    type = "structure",
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
}

M.CreateLFTagExpressionInput = {
    type = "structure",
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
}

M.DeleteDataCellsFilterInput = {
    type = "structure",
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
}

M.DeleteLakeFormationIdentityCenterConfigurationInput = {
    type = "structure",
    members = {
        CatalogId = {
            type = "string",
        },
    },
}

M.DeleteLakeFormationIdentityCenterConfigurationOutput = {
    type = "structure",
}

M.DeleteLakeFormationOptInInput = {
    type = "structure",
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
}

M.DeleteLFTagInput = {
    type = "structure",
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
}

M.DeleteLFTagExpressionInput = {
    type = "structure",
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
}

M.VirtualObject = {
    type = "structure",
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
}

M.ResourceNotReadyException = {
    type = "structure",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.DeregisterResourceInput = {
    type = "structure",
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
}

M.DescribeLakeFormationIdentityCenterConfigurationInput = {
    type = "structure",
    members = {
        CatalogId = {
            type = "string",
        },
    },
}

M.DescribeLakeFormationIdentityCenterConfigurationOutput = {
    type = "structure",
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
    members = {
        ResourceInfo = M.ResourceInfo,
    },
}

M.DescribeTransactionInput = {
    type = "structure",
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
    members = {
        TransactionDescription = M.TransactionDescription,
    },
}

M.ExtendTransactionInput = {
    type = "structure",
    members = {
        TransactionId = {
            type = "string",
        },
    },
}

M.ExtendTransactionOutput = {
    type = "structure",
}

M.GetDataCellsFilterInput = {
    type = "structure",
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
    members = {
        DataCellsFilter = M.DataCellsFilter,
    },
}

M.GetDataLakePrincipalInput = {
    type = "structure",
}

M.GetDataLakePrincipalOutput = {
    type = "structure",
    members = {
        Identity = {
            type = "string",
        },
    },
}

M.GetDataLakeSettingsInput = {
    type = "structure",
    members = {
        CatalogId = {
            type = "string",
        },
    },
}

M.PrincipalPermissions = {
    type = "structure",
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
    members = {
        DataLakeSettings = M.DataLakeSettings,
    },
}

M.GetEffectivePermissionsForPathInput = {
    type = "structure",
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
    members = {
        ResourceShare = {
            type = "list",
            member = { type = "string" },
        },
    },
}

M.PrincipalResourcePermissions = {
    type = "structure",
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
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.GetQueryStatisticsInput = {
    type = "structure",
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
    members = {
        ExecutionStatistics = M.ExecutionStatistics,
        PlanningStatistics = M.PlanningStatistics,
        QuerySubmissionTime = {
            type = "timestamp",
        },
    },
}

M.StatisticsNotReadyYetException = {
    type = "structure",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.ThrottledException = {
    type = "structure",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.GetResourceLFTagsInput = {
    type = "structure",
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
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.GetTableObjectsInput = {
    type = "structure",
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
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.QuerySessionContext = {
    type = "structure",
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
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.GrantPermissionsInput = {
    type = "structure",
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
}

M.ListDataCellsFilterInput = {
    type = "structure",
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
}

M.RegisterResourceInput = {
    type = "structure",
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
}

M.RemoveLFTagsFromResourceInput = {
    type = "structure",
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
    members = {
        Failures = {
            type = "list",
            member = M.LFTagError,
        },
    },
}

M.RevokePermissionsInput = {
    type = "structure",
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
}

M.SearchDatabasesByLFTagsInput = {
    type = "structure",
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
    members = {
        TransactionType = {
            type = "string",
        },
    },
}

M.StartTransactionOutput = {
    type = "structure",
    members = {
        TransactionId = {
            type = "string",
        },
    },
}

M.UpdateDataCellsFilterInput = {
    type = "structure",
    members = {
        TableData = setmetatable({ traits = {
            required = true,
        } }, { __index = M.DataCellsFilter }),
    },
}

M.UpdateDataCellsFilterOutput = {
    type = "structure",
}

M.UpdateLakeFormationIdentityCenterConfigurationInput = {
    type = "structure",
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
}

M.UpdateLFTagInput = {
    type = "structure",
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
}

M.UpdateLFTagExpressionInput = {
    type = "structure",
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
}

M.UpdateResourceInput = {
    type = "structure",
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
}

M.DeleteObjectInput = {
    type = "structure",
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
    members = {
        AddObject = M.AddObjectInput,
        DeleteObject = M.DeleteObjectInput,
    },
}

M.UpdateTableObjectsInput = {
    type = "structure",
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
}

M.UpdateTableStorageOptimizerInput = {
    type = "structure",
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
    members = {
        Result = {
            type = "string",
        },
    },
}

return M
