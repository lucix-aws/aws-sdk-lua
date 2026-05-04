local M = {}

M.AbortMultipartUploadInput = {
    type = "structure",
    id = "AbortMultipartUploadInput",
    members = {
        accountId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        vaultName = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        uploadId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.AbortMultipartUploadOutput = {
    type = "structure",
    id = "AbortMultipartUploadOutput",
}

M.InvalidParameterValueException = {
    type = "structure",
    id = "InvalidParameterValueException",
    error = "client",
    members = {
        type = {
            type = "string",
        },
        code = {
            type = "string",
        },
        message = {
            type = "string",
        },
    },
}

M.MissingParameterValueException = {
    type = "structure",
    id = "MissingParameterValueException",
    error = "client",
    members = {
        type = {
            type = "string",
        },
        code = {
            type = "string",
        },
        message = {
            type = "string",
        },
    },
}

M.NoLongerSupportedException = {
    type = "structure",
    id = "NoLongerSupportedException",
    error = "client",
    members = {
        type = {
            type = "string",
        },
        code = {
            type = "string",
        },
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
        type = {
            type = "string",
        },
        code = {
            type = "string",
        },
        message = {
            type = "string",
        },
    },
}

M.ServiceUnavailableException = {
    type = "structure",
    id = "ServiceUnavailableException",
    error = "server",
    members = {
        type = {
            type = "string",
        },
        code = {
            type = "string",
        },
        message = {
            type = "string",
        },
    },
}

M.AbortVaultLockInput = {
    type = "structure",
    id = "AbortVaultLockInput",
    members = {
        accountId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        vaultName = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.AbortVaultLockOutput = {
    type = "structure",
    id = "AbortVaultLockOutput",
}

M.Type = {
    AmazonCustomerByEmail = "AmazonCustomerByEmail",
    CanonicalUser = "CanonicalUser",
    Group = "Group",
}

M.Grantee = {
    type = "structure",
    id = "Grantee",
    members = {
        Type = {
            type = "string",
            traits = {
                required = true,
            },
        },
        DisplayName = {
            type = "string",
        },
        URI = {
            type = "string",
        },
        ID = {
            type = "string",
        },
        EmailAddress = {
            type = "string",
        },
    },
}

M.Permission = {
    FULL_CONTROL = "FULL_CONTROL",
    WRITE = "WRITE",
    WRITE_ACP = "WRITE_ACP",
    READ = "READ",
    READ_ACP = "READ_ACP",
}

M.Grant = {
    type = "structure",
    id = "Grant",
    members = {
        Grantee = M.Grantee,
        Permission = {
            type = "string",
        },
    },
}

M.ActionCode = {
    ArchiveRetrieval = "ArchiveRetrieval",
    InventoryRetrieval = "InventoryRetrieval",
    Select = "Select",
}

M.AddTagsToVaultInput = {
    type = "structure",
    id = "AddTagsToVaultInput",
    members = {
        accountId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        vaultName = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        Tags = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
    },
}

M.AddTagsToVaultOutput = {
    type = "structure",
    id = "AddTagsToVaultOutput",
}

M.LimitExceededException = {
    type = "structure",
    id = "LimitExceededException",
    error = "client",
    members = {
        type = {
            type = "string",
        },
        code = {
            type = "string",
        },
        message = {
            type = "string",
        },
    },
}

M.CannedACL = {
    Private = "private",
    PublicRead = "public-read",
    PublicReadWrite = "public-read-write",
    AwsExecRead = "aws-exec-read",
    AuthenticatedRead = "authenticated-read",
    BucketOwnerRead = "bucket-owner-read",
    BucketOwnerFullControl = "bucket-owner-full-control",
}

M.CompleteMultipartUploadInput = {
    type = "structure",
    id = "CompleteMultipartUploadInput",
    members = {
        accountId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        vaultName = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        uploadId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        archiveSize = {
            type = "string",
            traits = {
                http_header = "x-amz-archive-size",
            },
        },
        checksum = {
            type = "string",
            traits = {
                http_header = "x-amz-sha256-tree-hash",
            },
        },
    },
}

M.CompleteMultipartUploadOutput = {
    type = "structure",
    id = "CompleteMultipartUploadOutput",
    members = {
        location = {
            type = "string",
            traits = {
                http_header = "Location",
            },
        },
        checksum = {
            type = "string",
            traits = {
                http_header = "x-amz-sha256-tree-hash",
            },
        },
        archiveId = {
            type = "string",
            traits = {
                http_header = "x-amz-archive-id",
            },
        },
    },
}

M.CompleteVaultLockInput = {
    type = "structure",
    id = "CompleteVaultLockInput",
    members = {
        accountId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        vaultName = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        lockId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.CompleteVaultLockOutput = {
    type = "structure",
    id = "CompleteVaultLockOutput",
}

M.CreateVaultInput = {
    type = "structure",
    id = "CreateVaultInput",
    members = {
        accountId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        vaultName = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.CreateVaultOutput = {
    type = "structure",
    id = "CreateVaultOutput",
    members = {
        location = {
            type = "string",
            traits = {
                http_header = "Location",
            },
        },
    },
}

M.FileHeaderInfo = {
    Use = "USE",
    Ignore = "IGNORE",
    None = "NONE",
}

M.CSVInput = {
    type = "structure",
    id = "CSVInput",
    members = {
        FileHeaderInfo = {
            type = "string",
        },
        Comments = {
            type = "string",
        },
        QuoteEscapeCharacter = {
            type = "string",
        },
        RecordDelimiter = {
            type = "string",
        },
        FieldDelimiter = {
            type = "string",
        },
        QuoteCharacter = {
            type = "string",
        },
    },
}

M.QuoteFields = {
    Always = "ALWAYS",
    AsNeeded = "ASNEEDED",
}

M.CSVOutput = {
    type = "structure",
    id = "CSVOutput",
    members = {
        QuoteFields = {
            type = "string",
        },
        QuoteEscapeCharacter = {
            type = "string",
        },
        RecordDelimiter = {
            type = "string",
        },
        FieldDelimiter = {
            type = "string",
        },
        QuoteCharacter = {
            type = "string",
        },
    },
}

M.DataRetrievalRule = {
    type = "structure",
    id = "DataRetrievalRule",
    members = {
        Strategy = {
            type = "string",
        },
        BytesPerHour = {
            type = "long",
        },
    },
}

M.DataRetrievalPolicy = {
    type = "structure",
    id = "DataRetrievalPolicy",
    members = {
        Rules = {
            type = "list",
            member = M.DataRetrievalRule,
        },
    },
}

M.DeleteArchiveInput = {
    type = "structure",
    id = "DeleteArchiveInput",
    members = {
        accountId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        vaultName = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        archiveId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.DeleteArchiveOutput = {
    type = "structure",
    id = "DeleteArchiveOutput",
}

M.DeleteVaultInput = {
    type = "structure",
    id = "DeleteVaultInput",
    members = {
        accountId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        vaultName = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.DeleteVaultOutput = {
    type = "structure",
    id = "DeleteVaultOutput",
}

M.DeleteVaultAccessPolicyInput = {
    type = "structure",
    id = "DeleteVaultAccessPolicyInput",
    members = {
        accountId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        vaultName = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.DeleteVaultAccessPolicyOutput = {
    type = "structure",
    id = "DeleteVaultAccessPolicyOutput",
}

M.DeleteVaultNotificationsInput = {
    type = "structure",
    id = "DeleteVaultNotificationsInput",
    members = {
        accountId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        vaultName = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.DeleteVaultNotificationsOutput = {
    type = "structure",
    id = "DeleteVaultNotificationsOutput",
}

M.DescribeJobInput = {
    type = "structure",
    id = "DescribeJobInput",
    members = {
        accountId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        vaultName = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        jobId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.InventoryRetrievalJobDescription = {
    type = "structure",
    id = "InventoryRetrievalJobDescription",
    members = {
        Format = {
            type = "string",
        },
        StartDate = {
            type = "string",
        },
        EndDate = {
            type = "string",
        },
        Limit = {
            type = "string",
        },
        Marker = {
            type = "string",
        },
    },
}

M.EncryptionType = {
    KMS = "aws:kms",
    S3 = "AES256",
}

M.Encryption = {
    type = "structure",
    id = "Encryption",
    members = {
        EncryptionType = {
            type = "string",
        },
        KMSKeyId = {
            type = "string",
        },
        KMSContext = {
            type = "string",
        },
    },
}

M.StorageClass = {
    Standard = "STANDARD",
    ReducedRedundancy = "REDUCED_REDUNDANCY",
    StandardInfrequentAccess = "STANDARD_IA",
}

M.S3Location = {
    type = "structure",
    id = "S3Location",
    members = {
        BucketName = {
            type = "string",
        },
        Prefix = {
            type = "string",
        },
        Encryption = M.Encryption,
        CannedACL = {
            type = "string",
        },
        AccessControlList = {
            type = "list",
            member = M.Grant,
        },
        Tagging = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
        UserMetadata = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
        StorageClass = {
            type = "string",
        },
    },
}

M.OutputLocation = {
    type = "structure",
    id = "OutputLocation",
    members = {
        S3 = M.S3Location,
    },
}

M.ExpressionType = {
    SQL = "SQL",
}

M.InputSerialization = {
    type = "structure",
    id = "InputSerialization",
    members = {
        csv = M.CSVInput,
    },
}

M.OutputSerialization = {
    type = "structure",
    id = "OutputSerialization",
    members = {
        csv = M.CSVOutput,
    },
}

M.SelectParameters = {
    type = "structure",
    id = "SelectParameters",
    members = {
        InputSerialization = M.InputSerialization,
        ExpressionType = {
            type = "string",
        },
        Expression = {
            type = "string",
        },
        OutputSerialization = M.OutputSerialization,
    },
}

M.StatusCode = {
    InProgress = "InProgress",
    Succeeded = "Succeeded",
    Failed = "Failed",
}

M.DescribeJobOutput = {
    type = "structure",
    id = "DescribeJobOutput",
    members = {
        JobId = {
            type = "string",
        },
        JobDescription = {
            type = "string",
        },
        Action = {
            type = "string",
        },
        ArchiveId = {
            type = "string",
        },
        VaultARN = {
            type = "string",
        },
        CreationDate = {
            type = "string",
        },
        Completed = {
            type = "boolean",
            traits = {
                default = false,
            },
        },
        StatusCode = {
            type = "string",
        },
        StatusMessage = {
            type = "string",
        },
        ArchiveSizeInBytes = {
            type = "long",
        },
        InventorySizeInBytes = {
            type = "long",
        },
        SNSTopic = {
            type = "string",
        },
        CompletionDate = {
            type = "string",
        },
        SHA256TreeHash = {
            type = "string",
        },
        ArchiveSHA256TreeHash = {
            type = "string",
        },
        RetrievalByteRange = {
            type = "string",
        },
        Tier = {
            type = "string",
        },
        InventoryRetrievalParameters = M.InventoryRetrievalJobDescription,
        JobOutputPath = {
            type = "string",
        },
        SelectParameters = M.SelectParameters,
        OutputLocation = M.OutputLocation,
    },
}

M.DescribeVaultInput = {
    type = "structure",
    id = "DescribeVaultInput",
    members = {
        accountId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        vaultName = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.DescribeVaultOperationOutput = {
    type = "structure",
    id = "DescribeVaultOperationOutput",
    members = {
        VaultARN = {
            type = "string",
        },
        VaultName = {
            type = "string",
        },
        CreationDate = {
            type = "string",
        },
        LastInventoryDate = {
            type = "string",
        },
        NumberOfArchives = {
            type = "long",
            traits = {
                default = 0,
            },
        },
        SizeInBytes = {
            type = "long",
            traits = {
                default = 0,
            },
        },
    },
}

M.DescribeVaultOutput = {
    type = "structure",
    id = "DescribeVaultOutput",
    members = {
        VaultARN = {
            type = "string",
        },
        VaultName = {
            type = "string",
        },
        CreationDate = {
            type = "string",
        },
        LastInventoryDate = {
            type = "string",
        },
        NumberOfArchives = {
            type = "long",
            traits = {
                default = 0,
            },
        },
        SizeInBytes = {
            type = "long",
            traits = {
                default = 0,
            },
        },
    },
}

M.GetDataRetrievalPolicyInput = {
    type = "structure",
    id = "GetDataRetrievalPolicyInput",
    members = {
        accountId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.GetDataRetrievalPolicyOutput = {
    type = "structure",
    id = "GetDataRetrievalPolicyOutput",
    members = {
        Policy = M.DataRetrievalPolicy,
    },
}

M.GetJobOutputInput = {
    type = "structure",
    id = "GetJobOutputInput",
    members = {
        accountId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        vaultName = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        jobId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        range = {
            type = "string",
            traits = {
                http_header = "Range",
            },
        },
    },
}

M.GetJobOutputOutput = {
    type = "structure",
    id = "GetJobOutputOutput",
    members = {
        body = {
            type = "blob",
            traits = {
                default = "",
                http_payload = true,
            },
        },
        checksum = {
            type = "string",
            traits = {
                http_header = "x-amz-sha256-tree-hash",
            },
        },
        status = {
            type = "integer",
            traits = {
                default = 0,
                http_response_code = true,
            },
        },
        contentRange = {
            type = "string",
            traits = {
                http_header = "Content-Range",
            },
        },
        acceptRanges = {
            type = "string",
            traits = {
                http_header = "Accept-Ranges",
            },
        },
        contentType = {
            type = "string",
            traits = {
                http_header = "Content-Type",
            },
        },
        archiveDescription = {
            type = "string",
            traits = {
                http_header = "x-amz-archive-description",
            },
        },
    },
}

M.GetVaultAccessPolicyInput = {
    type = "structure",
    id = "GetVaultAccessPolicyInput",
    members = {
        accountId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        vaultName = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.VaultAccessPolicy = {
    type = "structure",
    id = "VaultAccessPolicy",
    members = {
        Policy = {
            type = "string",
        },
    },
}

M.GetVaultAccessPolicyOutput = {
    type = "structure",
    id = "GetVaultAccessPolicyOutput",
    members = {
        policy = setmetatable({ traits = {
            http_payload = true,
        } }, { __index = M.VaultAccessPolicy }),
    },
}

M.GetVaultLockInput = {
    type = "structure",
    id = "GetVaultLockInput",
    members = {
        accountId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        vaultName = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.GetVaultLockOutput = {
    type = "structure",
    id = "GetVaultLockOutput",
    members = {
        Policy = {
            type = "string",
        },
        State = {
            type = "string",
        },
        ExpirationDate = {
            type = "string",
        },
        CreationDate = {
            type = "string",
        },
    },
}

M.GetVaultNotificationsInput = {
    type = "structure",
    id = "GetVaultNotificationsInput",
    members = {
        accountId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        vaultName = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.VaultNotificationConfig = {
    type = "structure",
    id = "VaultNotificationConfig",
    members = {
        SNSTopic = {
            type = "string",
        },
        Events = {
            type = "list",
            member = { type = "string" },
        },
    },
}

M.GetVaultNotificationsOutput = {
    type = "structure",
    id = "GetVaultNotificationsOutput",
    members = {
        vaultNotificationConfig = setmetatable({ traits = {
            http_payload = true,
        } }, { __index = M.VaultNotificationConfig }),
    },
}

M.InventoryRetrievalJobInput = {
    type = "structure",
    id = "InventoryRetrievalJobInput",
    members = {
        StartDate = {
            type = "string",
        },
        EndDate = {
            type = "string",
        },
        Limit = {
            type = "string",
        },
        Marker = {
            type = "string",
        },
    },
}

M.JobParameters = {
    type = "structure",
    id = "JobParameters",
    members = {
        Format = {
            type = "string",
        },
        Type = {
            type = "string",
        },
        ArchiveId = {
            type = "string",
        },
        Description = {
            type = "string",
        },
        SNSTopic = {
            type = "string",
        },
        RetrievalByteRange = {
            type = "string",
        },
        Tier = {
            type = "string",
        },
        InventoryRetrievalParameters = M.InventoryRetrievalJobInput,
        SelectParameters = M.SelectParameters,
        OutputLocation = M.OutputLocation,
    },
}

M.InitiateJobInput = {
    type = "structure",
    id = "InitiateJobInput",
    members = {
        accountId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        vaultName = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        jobParameters = setmetatable({ traits = {
            http_payload = true,
        } }, { __index = M.JobParameters }),
    },
}

M.InitiateJobOutput = {
    type = "structure",
    id = "InitiateJobOutput",
    members = {
        location = {
            type = "string",
            traits = {
                http_header = "Location",
            },
        },
        jobId = {
            type = "string",
            traits = {
                http_header = "x-amz-job-id",
            },
        },
        jobOutputPath = {
            type = "string",
            traits = {
                http_header = "x-amz-job-output-path",
            },
        },
    },
}

M.InsufficientCapacityException = {
    type = "structure",
    id = "InsufficientCapacityException",
    error = "client",
    members = {
        type = {
            type = "string",
        },
        code = {
            type = "string",
        },
        message = {
            type = "string",
        },
    },
}

M.PolicyEnforcedException = {
    type = "structure",
    id = "PolicyEnforcedException",
    error = "client",
    members = {
        type = {
            type = "string",
        },
        code = {
            type = "string",
        },
        message = {
            type = "string",
        },
    },
}

M.InitiateMultipartUploadInput = {
    type = "structure",
    id = "InitiateMultipartUploadInput",
    members = {
        accountId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        vaultName = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        archiveDescription = {
            type = "string",
            traits = {
                http_header = "x-amz-archive-description",
            },
        },
        partSize = {
            type = "string",
            traits = {
                http_header = "x-amz-part-size",
            },
        },
    },
}

M.InitiateMultipartUploadOutput = {
    type = "structure",
    id = "InitiateMultipartUploadOutput",
    members = {
        location = {
            type = "string",
            traits = {
                http_header = "Location",
            },
        },
        uploadId = {
            type = "string",
            traits = {
                http_header = "x-amz-multipart-upload-id",
            },
        },
    },
}

M.VaultLockPolicy = {
    type = "structure",
    id = "VaultLockPolicy",
    members = {
        Policy = {
            type = "string",
        },
    },
}

M.InitiateVaultLockInput = {
    type = "structure",
    id = "InitiateVaultLockInput",
    members = {
        accountId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        vaultName = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        policy = setmetatable({ traits = {
            http_payload = true,
        } }, { __index = M.VaultLockPolicy }),
    },
}

M.InitiateVaultLockOutput = {
    type = "structure",
    id = "InitiateVaultLockOutput",
    members = {
        lockId = {
            type = "string",
            traits = {
                http_header = "x-amz-lock-id",
            },
        },
    },
}

M.ListJobsInput = {
    type = "structure",
    id = "ListJobsInput",
    members = {
        accountId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        vaultName = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        limit = {
            type = "integer",
            traits = {
                http_query = "limit",
            },
        },
        marker = {
            type = "string",
            traits = {
                http_query = "marker",
            },
        },
        statuscode = {
            type = "string",
            traits = {
                http_query = "statuscode",
            },
        },
        completed = {
            type = "string",
            traits = {
                http_query = "completed",
            },
        },
    },
}

M.GlacierJobDescription = {
    type = "structure",
    id = "GlacierJobDescription",
    members = {
        JobId = {
            type = "string",
        },
        JobDescription = {
            type = "string",
        },
        Action = {
            type = "string",
        },
        ArchiveId = {
            type = "string",
        },
        VaultARN = {
            type = "string",
        },
        CreationDate = {
            type = "string",
        },
        Completed = {
            type = "boolean",
            traits = {
                default = false,
            },
        },
        StatusCode = {
            type = "string",
        },
        StatusMessage = {
            type = "string",
        },
        ArchiveSizeInBytes = {
            type = "long",
        },
        InventorySizeInBytes = {
            type = "long",
        },
        SNSTopic = {
            type = "string",
        },
        CompletionDate = {
            type = "string",
        },
        SHA256TreeHash = {
            type = "string",
        },
        ArchiveSHA256TreeHash = {
            type = "string",
        },
        RetrievalByteRange = {
            type = "string",
        },
        Tier = {
            type = "string",
        },
        InventoryRetrievalParameters = M.InventoryRetrievalJobDescription,
        JobOutputPath = {
            type = "string",
        },
        SelectParameters = M.SelectParameters,
        OutputLocation = M.OutputLocation,
    },
}

M.ListJobsOutput = {
    type = "structure",
    id = "ListJobsOutput",
    members = {
        JobList = {
            type = "list",
            member = M.GlacierJobDescription,
        },
        Marker = {
            type = "string",
        },
    },
}

M.ListMultipartUploadsInput = {
    type = "structure",
    id = "ListMultipartUploadsInput",
    members = {
        accountId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        vaultName = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        limit = {
            type = "integer",
            traits = {
                http_query = "limit",
            },
        },
        marker = {
            type = "string",
            traits = {
                http_query = "marker",
            },
        },
    },
}

M.UploadListElement = {
    type = "structure",
    id = "UploadListElement",
    members = {
        MultipartUploadId = {
            type = "string",
        },
        VaultARN = {
            type = "string",
        },
        ArchiveDescription = {
            type = "string",
        },
        PartSizeInBytes = {
            type = "long",
            traits = {
                default = 0,
            },
        },
        CreationDate = {
            type = "string",
        },
    },
}

M.ListMultipartUploadsOutput = {
    type = "structure",
    id = "ListMultipartUploadsOutput",
    members = {
        UploadsList = {
            type = "list",
            member = M.UploadListElement,
        },
        Marker = {
            type = "string",
        },
    },
}

M.ListPartsInput = {
    type = "structure",
    id = "ListPartsInput",
    members = {
        accountId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        vaultName = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        uploadId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        marker = {
            type = "string",
            traits = {
                http_query = "marker",
            },
        },
        limit = {
            type = "integer",
            traits = {
                http_query = "limit",
            },
        },
    },
}

M.PartListElement = {
    type = "structure",
    id = "PartListElement",
    members = {
        RangeInBytes = {
            type = "string",
        },
        SHA256TreeHash = {
            type = "string",
        },
    },
}

M.ListPartsOutput = {
    type = "structure",
    id = "ListPartsOutput",
    members = {
        MultipartUploadId = {
            type = "string",
        },
        VaultARN = {
            type = "string",
        },
        ArchiveDescription = {
            type = "string",
        },
        PartSizeInBytes = {
            type = "long",
            traits = {
                default = 0,
            },
        },
        CreationDate = {
            type = "string",
        },
        Parts = {
            type = "list",
            member = M.PartListElement,
        },
        Marker = {
            type = "string",
        },
    },
}

M.ListProvisionedCapacityInput = {
    type = "structure",
    id = "ListProvisionedCapacityInput",
    members = {
        accountId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.ProvisionedCapacityDescription = {
    type = "structure",
    id = "ProvisionedCapacityDescription",
    members = {
        CapacityId = {
            type = "string",
        },
        StartDate = {
            type = "string",
        },
        ExpirationDate = {
            type = "string",
        },
    },
}

M.ListProvisionedCapacityOutput = {
    type = "structure",
    id = "ListProvisionedCapacityOutput",
    members = {
        ProvisionedCapacityList = {
            type = "list",
            member = M.ProvisionedCapacityDescription,
        },
    },
}

M.ListTagsForVaultInput = {
    type = "structure",
    id = "ListTagsForVaultInput",
    members = {
        accountId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        vaultName = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.ListTagsForVaultOutput = {
    type = "structure",
    id = "ListTagsForVaultOutput",
    members = {
        Tags = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
    },
}

M.ListVaultsInput = {
    type = "structure",
    id = "ListVaultsInput",
    members = {
        accountId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        marker = {
            type = "string",
            traits = {
                http_query = "marker",
            },
        },
        limit = {
            type = "integer",
            traits = {
                http_query = "limit",
            },
        },
    },
}

M.ListVaultsOutput = {
    type = "structure",
    id = "ListVaultsOutput",
    members = {
        VaultList = {
            type = "list",
            member = M.DescribeVaultOutput,
        },
        Marker = {
            type = "string",
        },
    },
}

M.PurchaseProvisionedCapacityInput = {
    type = "structure",
    id = "PurchaseProvisionedCapacityInput",
    members = {
        accountId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.PurchaseProvisionedCapacityOutput = {
    type = "structure",
    id = "PurchaseProvisionedCapacityOutput",
    members = {
        capacityId = {
            type = "string",
            traits = {
                http_header = "x-amz-capacity-id",
            },
        },
    },
}

M.RemoveTagsFromVaultInput = {
    type = "structure",
    id = "RemoveTagsFromVaultInput",
    members = {
        accountId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        vaultName = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        TagKeys = {
            type = "list",
            member = { type = "string" },
        },
    },
}

M.RemoveTagsFromVaultOutput = {
    type = "structure",
    id = "RemoveTagsFromVaultOutput",
}

M.SetDataRetrievalPolicyInput = {
    type = "structure",
    id = "SetDataRetrievalPolicyInput",
    members = {
        accountId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        Policy = M.DataRetrievalPolicy,
    },
}

M.SetDataRetrievalPolicyOutput = {
    type = "structure",
    id = "SetDataRetrievalPolicyOutput",
}

M.SetVaultAccessPolicyInput = {
    type = "structure",
    id = "SetVaultAccessPolicyInput",
    members = {
        accountId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        vaultName = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        policy = setmetatable({ traits = {
            http_payload = true,
        } }, { __index = M.VaultAccessPolicy }),
    },
}

M.SetVaultAccessPolicyOutput = {
    type = "structure",
    id = "SetVaultAccessPolicyOutput",
}

M.SetVaultNotificationsInput = {
    type = "structure",
    id = "SetVaultNotificationsInput",
    members = {
        accountId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        vaultName = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        vaultNotificationConfig = setmetatable({ traits = {
            http_payload = true,
        } }, { __index = M.VaultNotificationConfig }),
    },
}

M.SetVaultNotificationsOutput = {
    type = "structure",
    id = "SetVaultNotificationsOutput",
}

M.RequestTimeoutException = {
    type = "structure",
    id = "RequestTimeoutException",
    error = "client",
    members = {
        type = {
            type = "string",
        },
        code = {
            type = "string",
        },
        message = {
            type = "string",
        },
    },
}

M.UploadArchiveInput = {
    type = "structure",
    id = "UploadArchiveInput",
    members = {
        vaultName = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        accountId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        archiveDescription = {
            type = "string",
            traits = {
                http_header = "x-amz-archive-description",
            },
        },
        checksum = {
            type = "string",
            traits = {
                http_header = "x-amz-sha256-tree-hash",
            },
        },
        body = {
            type = "blob",
            traits = {
                default = "",
                http_payload = true,
            },
        },
    },
}

M.UploadArchiveOutput = {
    type = "structure",
    id = "UploadArchiveOutput",
    members = {
        location = {
            type = "string",
            traits = {
                http_header = "Location",
            },
        },
        checksum = {
            type = "string",
            traits = {
                http_header = "x-amz-sha256-tree-hash",
            },
        },
        archiveId = {
            type = "string",
            traits = {
                http_header = "x-amz-archive-id",
            },
        },
    },
}

M.UploadMultipartPartInput = {
    type = "structure",
    id = "UploadMultipartPartInput",
    members = {
        accountId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        vaultName = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        uploadId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        checksum = {
            type = "string",
            traits = {
                http_header = "x-amz-sha256-tree-hash",
            },
        },
        range = {
            type = "string",
            traits = {
                http_header = "Content-Range",
            },
        },
        body = {
            type = "blob",
            traits = {
                default = "",
                http_payload = true,
            },
        },
    },
}

M.UploadMultipartPartOutput = {
    type = "structure",
    id = "UploadMultipartPartOutput",
    members = {
        checksum = {
            type = "string",
            traits = {
                http_header = "x-amz-sha256-tree-hash",
            },
        },
    },
}

return M
