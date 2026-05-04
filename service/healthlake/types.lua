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

M.AuthorizationStrategy = {
    SMARTV1 = "SMART_ON_FHIR_V1",
    SMART_ON_FHIR = "SMART_ON_FHIR",
    AWS_AUTH = "AWS_AUTH",
}

M.CmkType = {
    CM_CMK = "CUSTOMER_MANAGED_KMS_KEY",
    AO_CMK = "AWS_OWNED_KMS_KEY",
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

M.FHIRVersion = {
    R4 = "R4",
}

M.IdentityProviderConfiguration = {
    type = "structure",
    id = "IdentityProviderConfiguration",
    members = {
        AuthorizationStrategy = {
            type = "string",
            traits = {
                required = true,
            },
        },
        FineGrainedAuthorizationEnabled = {
            type = "boolean",
            traits = {
                default = false,
            },
        },
        Metadata = {
            type = "string",
        },
        IdpLambdaArn = {
            type = "string",
        },
    },
}

M.PreloadDataType = {
    SYNTHEA = "SYNTHEA",
}

M.PreloadDataConfig = {
    type = "structure",
    id = "PreloadDataConfig",
    members = {
        PreloadDataType = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.KmsEncryptionConfig = {
    type = "structure",
    id = "KmsEncryptionConfig",
    members = {
        CmkType = {
            type = "string",
            traits = {
                required = true,
            },
        },
        KmsKeyId = {
            type = "string",
        },
    },
}

M.SseConfiguration = {
    type = "structure",
    id = "SseConfiguration",
    members = {
        KmsEncryptionConfig = setmetatable({ traits = {
            required = true,
        } }, { __index = M.KmsEncryptionConfig }),
    },
}

M.Tag = {
    type = "structure",
    id = "Tag",
    members = {
        Key = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Value = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.CreateFHIRDatastoreInput = {
    type = "structure",
    id = "CreateFHIRDatastoreInput",
    members = {
        DatastoreName = {
            type = "string",
        },
        DatastoreTypeVersion = {
            type = "string",
            traits = {
                required = true,
            },
        },
        SseConfiguration = M.SseConfiguration,
        PreloadDataConfig = M.PreloadDataConfig,
        ClientToken = {
            type = "string",
            traits = {
                idempotency_token = true,
            },
        },
        Tags = {
            type = "list",
            member = M.Tag,
        },
        IdentityProviderConfiguration = M.IdentityProviderConfiguration,
    },
}

M.DatastoreStatus = {
    CREATING = "CREATING",
    ACTIVE = "ACTIVE",
    DELETING = "DELETING",
    DELETED = "DELETED",
    CREATE_FAILED = "CREATE_FAILED",
}

M.CreateFHIRDatastoreOutput = {
    type = "structure",
    id = "CreateFHIRDatastoreOutput",
    members = {
        DatastoreId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        DatastoreArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        DatastoreStatus = {
            type = "string",
            traits = {
                required = true,
            },
        },
        DatastoreEndpoint = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.InternalServerException = {
    type = "structure",
    id = "InternalServerException",
    error = "server",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.ThrottlingException = {
    type = "structure",
    id = "ThrottlingException",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.ValidationException = {
    type = "structure",
    id = "ValidationException",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.DatastoreFilter = {
    type = "structure",
    id = "DatastoreFilter",
    members = {
        DatastoreName = {
            type = "string",
        },
        DatastoreStatus = {
            type = "string",
        },
        CreatedBefore = {
            type = "timestamp",
        },
        CreatedAfter = {
            type = "timestamp",
        },
    },
}

M.ErrorCategory = {
    RETRYABLE_ERROR = "RETRYABLE_ERROR",
    NON_RETRYABLE_ERROR = "NON_RETRYABLE_ERROR",
}

M.ErrorCause = {
    type = "structure",
    id = "ErrorCause",
    members = {
        ErrorMessage = {
            type = "string",
        },
        ErrorCategory = {
            type = "string",
        },
    },
}

M.DatastoreProperties = {
    type = "structure",
    id = "DatastoreProperties",
    members = {
        DatastoreId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        DatastoreArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        DatastoreName = {
            type = "string",
        },
        DatastoreStatus = {
            type = "string",
            traits = {
                required = true,
            },
        },
        CreatedAt = {
            type = "timestamp",
        },
        DatastoreTypeVersion = {
            type = "string",
            traits = {
                required = true,
            },
        },
        DatastoreEndpoint = {
            type = "string",
            traits = {
                required = true,
            },
        },
        SseConfiguration = M.SseConfiguration,
        PreloadDataConfig = M.PreloadDataConfig,
        IdentityProviderConfiguration = M.IdentityProviderConfiguration,
        ErrorCause = M.ErrorCause,
    },
}

M.DeleteFHIRDatastoreInput = {
    type = "structure",
    id = "DeleteFHIRDatastoreInput",
    members = {
        DatastoreId = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.DeleteFHIRDatastoreOutput = {
    type = "structure",
    id = "DeleteFHIRDatastoreOutput",
    members = {
        DatastoreId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        DatastoreArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        DatastoreStatus = {
            type = "string",
            traits = {
                required = true,
            },
        },
        DatastoreEndpoint = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.ResourceNotFoundException = {
    type = "structure",
    id = "ResourceNotFoundException",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.DescribeFHIRDatastoreInput = {
    type = "structure",
    id = "DescribeFHIRDatastoreInput",
    members = {
        DatastoreId = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.DescribeFHIRDatastoreOutput = {
    type = "structure",
    id = "DescribeFHIRDatastoreOutput",
    members = {
        DatastoreProperties = setmetatable({ traits = {
            required = true,
        } }, { __index = M.DatastoreProperties }),
    },
}

M.DescribeFHIRExportJobInput = {
    type = "structure",
    id = "DescribeFHIRExportJobInput",
    members = {
        DatastoreId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        JobId = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.JobStatus = {
    SUBMITTED = "SUBMITTED",
    QUEUED = "QUEUED",
    IN_PROGRESS = "IN_PROGRESS",
    COMPLETED_WITH_ERRORS = "COMPLETED_WITH_ERRORS",
    COMPLETED = "COMPLETED",
    FAILED = "FAILED",
    CANCEL_SUBMITTED = "CANCEL_SUBMITTED",
    CANCEL_IN_PROGRESS = "CANCEL_IN_PROGRESS",
    CANCEL_COMPLETED = "CANCEL_COMPLETED",
    CANCEL_FAILED = "CANCEL_FAILED",
}

M.S3Configuration = {
    type = "structure",
    id = "S3Configuration",
    members = {
        S3Uri = {
            type = "string",
            traits = {
                required = true,
            },
        },
        KmsKeyId = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.OutputDataConfig = {
    type = "union",
    id = "OutputDataConfig",
    members = {
        S3Configuration = M.S3Configuration,
    },
}

M.ExportJobProperties = {
    type = "structure",
    id = "ExportJobProperties",
    members = {
        JobId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        JobName = {
            type = "string",
        },
        JobStatus = {
            type = "string",
            traits = {
                required = true,
            },
        },
        SubmitTime = {
            type = "timestamp",
            traits = {
                required = true,
            },
        },
        EndTime = {
            type = "timestamp",
        },
        DatastoreId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        OutputDataConfig = setmetatable({ traits = {
            required = true,
        } }, { __index = M.OutputDataConfig }),
        DataAccessRoleArn = {
            type = "string",
        },
        Message = {
            type = "string",
        },
    },
}

M.DescribeFHIRExportJobOutput = {
    type = "structure",
    id = "DescribeFHIRExportJobOutput",
    members = {
        ExportJobProperties = setmetatable({ traits = {
            required = true,
        } }, { __index = M.ExportJobProperties }),
    },
}

M.DescribeFHIRImportJobInput = {
    type = "structure",
    id = "DescribeFHIRImportJobInput",
    members = {
        DatastoreId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        JobId = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.InputDataConfig = {
    type = "union",
    id = "InputDataConfig",
    members = {
        S3Uri = {
            type = "string",
        },
    },
}

M.JobProgressReport = {
    type = "structure",
    id = "JobProgressReport",
    members = {
        TotalNumberOfScannedFiles = {
            type = "long",
        },
        TotalSizeOfScannedFilesInMB = {
            type = "double",
        },
        TotalNumberOfImportedFiles = {
            type = "long",
        },
        TotalNumberOfResourcesScanned = {
            type = "long",
        },
        TotalNumberOfResourcesImported = {
            type = "long",
        },
        TotalNumberOfResourcesWithCustomerError = {
            type = "long",
        },
        TotalNumberOfFilesReadWithCustomerError = {
            type = "long",
        },
        Throughput = {
            type = "double",
        },
    },
}

M.ValidationLevel = {
    STRICT = "strict",
    STRUCTURE_ONLY = "structure-only",
    MINIMAL = "minimal",
}

M.ImportJobProperties = {
    type = "structure",
    id = "ImportJobProperties",
    members = {
        JobId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        JobName = {
            type = "string",
        },
        JobStatus = {
            type = "string",
            traits = {
                required = true,
            },
        },
        SubmitTime = {
            type = "timestamp",
            traits = {
                required = true,
            },
        },
        EndTime = {
            type = "timestamp",
        },
        DatastoreId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        InputDataConfig = setmetatable({ traits = {
            required = true,
        } }, { __index = M.InputDataConfig }),
        JobOutputDataConfig = M.OutputDataConfig,
        JobProgressReport = M.JobProgressReport,
        DataAccessRoleArn = {
            type = "string",
        },
        Message = {
            type = "string",
        },
        ValidationLevel = {
            type = "string",
        },
    },
}

M.DescribeFHIRImportJobOutput = {
    type = "structure",
    id = "DescribeFHIRImportJobOutput",
    members = {
        ImportJobProperties = setmetatable({ traits = {
            required = true,
        } }, { __index = M.ImportJobProperties }),
    },
}

M.ListFHIRDatastoresInput = {
    type = "structure",
    id = "ListFHIRDatastoresInput",
    members = {
        Filter = M.DatastoreFilter,
        NextToken = {
            type = "string",
        },
        MaxResults = {
            type = "integer",
        },
    },
}

M.ListFHIRDatastoresOutput = {
    type = "structure",
    id = "ListFHIRDatastoresOutput",
    members = {
        DatastorePropertiesList = {
            type = "list",
            member = M.DatastoreProperties,
            traits = {
                required = true,
            },
        },
        NextToken = {
            type = "string",
        },
    },
}

M.ListFHIRExportJobsInput = {
    type = "structure",
    id = "ListFHIRExportJobsInput",
    members = {
        DatastoreId = {
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
        JobName = {
            type = "string",
        },
        JobStatus = {
            type = "string",
        },
        SubmittedBefore = {
            type = "timestamp",
        },
        SubmittedAfter = {
            type = "timestamp",
        },
    },
}

M.ListFHIRExportJobsOutput = {
    type = "structure",
    id = "ListFHIRExportJobsOutput",
    members = {
        ExportJobPropertiesList = {
            type = "list",
            member = M.ExportJobProperties,
            traits = {
                required = true,
            },
        },
        NextToken = {
            type = "string",
        },
    },
}

M.ListFHIRImportJobsInput = {
    type = "structure",
    id = "ListFHIRImportJobsInput",
    members = {
        DatastoreId = {
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
        JobName = {
            type = "string",
        },
        JobStatus = {
            type = "string",
        },
        SubmittedBefore = {
            type = "timestamp",
        },
        SubmittedAfter = {
            type = "timestamp",
        },
    },
}

M.ListFHIRImportJobsOutput = {
    type = "structure",
    id = "ListFHIRImportJobsOutput",
    members = {
        ImportJobPropertiesList = {
            type = "list",
            member = M.ImportJobProperties,
            traits = {
                required = true,
            },
        },
        NextToken = {
            type = "string",
        },
    },
}

M.ListTagsForResourceInput = {
    type = "structure",
    id = "ListTagsForResourceInput",
    members = {
        ResourceARN = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.ListTagsForResourceOutput = {
    type = "structure",
    id = "ListTagsForResourceOutput",
    members = {
        Tags = {
            type = "list",
            member = M.Tag,
        },
    },
}

M.StartFHIRExportJobInput = {
    type = "structure",
    id = "StartFHIRExportJobInput",
    members = {
        JobName = {
            type = "string",
        },
        OutputDataConfig = setmetatable({ traits = {
            required = true,
        } }, { __index = M.OutputDataConfig }),
        DatastoreId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        DataAccessRoleArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        ClientToken = {
            type = "string",
            traits = {
                idempotency_token = true,
            },
        },
    },
}

M.StartFHIRExportJobOutput = {
    type = "structure",
    id = "StartFHIRExportJobOutput",
    members = {
        JobId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        JobStatus = {
            type = "string",
            traits = {
                required = true,
            },
        },
        DatastoreId = {
            type = "string",
        },
    },
}

M.StartFHIRImportJobInput = {
    type = "structure",
    id = "StartFHIRImportJobInput",
    members = {
        JobName = {
            type = "string",
        },
        InputDataConfig = setmetatable({ traits = {
            required = true,
        } }, { __index = M.InputDataConfig }),
        JobOutputDataConfig = setmetatable({ traits = {
            required = true,
        } }, { __index = M.OutputDataConfig }),
        DatastoreId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        DataAccessRoleArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        ClientToken = {
            type = "string",
            traits = {
                idempotency_token = true,
            },
        },
        ValidationLevel = {
            type = "string",
        },
    },
}

M.StartFHIRImportJobOutput = {
    type = "structure",
    id = "StartFHIRImportJobOutput",
    members = {
        JobId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        JobStatus = {
            type = "string",
            traits = {
                required = true,
            },
        },
        DatastoreId = {
            type = "string",
        },
    },
}

M.TagResourceInput = {
    type = "structure",
    id = "TagResourceInput",
    members = {
        ResourceARN = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Tags = {
            type = "list",
            member = M.Tag,
            traits = {
                required = true,
            },
        },
    },
}

M.TagResourceOutput = {
    type = "structure",
    id = "TagResourceOutput",
}

M.UntagResourceInput = {
    type = "structure",
    id = "UntagResourceInput",
    members = {
        ResourceARN = {
            type = "string",
            traits = {
                required = true,
            },
        },
        TagKeys = {
            type = "list",
            member = { type = "string" },
            traits = {
                required = true,
            },
        },
    },
}

M.UntagResourceOutput = {
    type = "structure",
    id = "UntagResourceOutput",
}

return M
