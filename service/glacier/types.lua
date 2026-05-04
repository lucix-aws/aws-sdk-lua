local M = {}

M.AbortMultipartUploadInput = {
    type = "structure",
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
}

M.InvalidParameterValueException = {
    type = "structure",
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
}

M.Type = {
    AmazonCustomerByEmail = "AmazonCustomerByEmail",
    CanonicalUser = "CanonicalUser",
    Group = "Group",
}

M.Grantee = {
    type = "structure",
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
}

M.LimitExceededException = {
    type = "structure",
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
}

M.CreateVaultInput = {
    type = "structure",
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
    members = {
        Rules = {
            type = "list",
            member = M.DataRetrievalRule,
        },
    },
}

M.DeleteArchiveInput = {
    type = "structure",
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
}

M.DeleteVaultInput = {
    type = "structure",
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
}

M.DeleteVaultAccessPolicyInput = {
    type = "structure",
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
}

M.DeleteVaultNotificationsInput = {
    type = "structure",
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
}

M.DescribeJobInput = {
    type = "structure",
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
    members = {
        S3 = M.S3Location,
    },
}

M.ExpressionType = {
    SQL = "SQL",
}

M.InputSerialization = {
    type = "structure",
    members = {
        csv = M.CSVInput,
    },
}

M.OutputSerialization = {
    type = "structure",
    members = {
        csv = M.CSVOutput,
    },
}

M.SelectParameters = {
    type = "structure",
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
    members = {
        Policy = M.DataRetrievalPolicy,
    },
}

M.GetJobOutputInput = {
    type = "structure",
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
    members = {
        Policy = {
            type = "string",
        },
    },
}

M.GetVaultAccessPolicyOutput = {
    type = "structure",
    members = {
        policy = setmetatable({ traits = {
            http_payload = true,
        } }, { __index = M.VaultAccessPolicy }),
    },
}

M.GetVaultLockInput = {
    type = "structure",
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
    members = {
        vaultNotificationConfig = setmetatable({ traits = {
            http_payload = true,
        } }, { __index = M.VaultNotificationConfig }),
    },
}

M.InventoryRetrievalJobInput = {
    type = "structure",
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
    members = {
        Policy = {
            type = "string",
        },
    },
}

M.InitiateVaultLockInput = {
    type = "structure",
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
    members = {
        ProvisionedCapacityList = {
            type = "list",
            member = M.ProvisionedCapacityDescription,
        },
    },
}

M.ListTagsForVaultInput = {
    type = "structure",
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
}

M.SetDataRetrievalPolicyInput = {
    type = "structure",
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
}

M.SetVaultAccessPolicyInput = {
    type = "structure",
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
}

M.SetVaultNotificationsInput = {
    type = "structure",
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
}

M.RequestTimeoutException = {
    type = "structure",
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
