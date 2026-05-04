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
    members = {
        AuthorizationStrategy = {
            type = "string",
            traits = {
                required = true,
            },
        },
        FineGrainedAuthorizationEnabled = {
            type = "boolean",
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
    members = {
        KmsEncryptionConfig = {
            type = "structure",
            traits = {
                required = true,
            },
        },
    },
}

M.Tag = {
    type = "structure",
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
        SseConfiguration = {
            type = "structure",
        },
        PreloadDataConfig = {
            type = "structure",
        },
        ClientToken = {
            type = "string",
        },
        Tags = {
            type = "list",
            member_type = "structure",
        },
        IdentityProviderConfiguration = {
            type = "structure",
        },
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
    error = "server",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.ThrottlingException = {
    type = "structure",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.ValidationException = {
    type = "structure",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.DatastoreFilter = {
    type = "structure",
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
        SseConfiguration = {
            type = "structure",
        },
        PreloadDataConfig = {
            type = "structure",
        },
        IdentityProviderConfiguration = {
            type = "structure",
        },
        ErrorCause = {
            type = "structure",
        },
    },
}

M.DeleteFHIRDatastoreInput = {
    type = "structure",
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
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.DescribeFHIRDatastoreInput = {
    type = "structure",
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
    members = {
        DatastoreProperties = {
            type = "structure",
            traits = {
                required = true,
            },
        },
    },
}

M.DescribeFHIRExportJobInput = {
    type = "structure",
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
    members = {
        S3Configuration = {
            type = "structure",
        },
    },
}

M.ExportJobProperties = {
    type = "structure",
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
        OutputDataConfig = {
            type = "union",
            traits = {
                required = true,
            },
        },
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
    members = {
        ExportJobProperties = {
            type = "structure",
            traits = {
                required = true,
            },
        },
    },
}

M.DescribeFHIRImportJobInput = {
    type = "structure",
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
    members = {
        S3Uri = {
            type = "string",
        },
    },
}

M.JobProgressReport = {
    type = "structure",
    members = {
        TotalNumberOfScannedFiles = {
            type = "number",
        },
        TotalSizeOfScannedFilesInMB = {
            type = "number",
        },
        TotalNumberOfImportedFiles = {
            type = "number",
        },
        TotalNumberOfResourcesScanned = {
            type = "number",
        },
        TotalNumberOfResourcesImported = {
            type = "number",
        },
        TotalNumberOfResourcesWithCustomerError = {
            type = "number",
        },
        TotalNumberOfFilesReadWithCustomerError = {
            type = "number",
        },
        Throughput = {
            type = "number",
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
        InputDataConfig = {
            type = "union",
            traits = {
                required = true,
            },
        },
        JobOutputDataConfig = {
            type = "union",
        },
        JobProgressReport = {
            type = "structure",
        },
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
    members = {
        ImportJobProperties = {
            type = "structure",
            traits = {
                required = true,
            },
        },
    },
}

M.ListFHIRDatastoresInput = {
    type = "structure",
    members = {
        Filter = {
            type = "structure",
        },
        NextToken = {
            type = "string",
        },
        MaxResults = {
            type = "number",
        },
    },
}

M.ListFHIRDatastoresOutput = {
    type = "structure",
    members = {
        DatastorePropertiesList = {
            type = "list",
            member_type = "structure",
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
            type = "number",
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
    members = {
        ExportJobPropertiesList = {
            type = "list",
            member_type = "structure",
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
            type = "number",
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
    members = {
        ImportJobPropertiesList = {
            type = "list",
            member_type = "structure",
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
    members = {
        Tags = {
            type = "list",
            member_type = "structure",
        },
    },
}

M.StartFHIRExportJobInput = {
    type = "structure",
    members = {
        JobName = {
            type = "string",
        },
        OutputDataConfig = {
            type = "union",
            traits = {
                required = true,
            },
        },
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
        },
    },
}

M.StartFHIRExportJobOutput = {
    type = "structure",
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
    members = {
        JobName = {
            type = "string",
        },
        InputDataConfig = {
            type = "union",
            traits = {
                required = true,
            },
        },
        JobOutputDataConfig = {
            type = "union",
            traits = {
                required = true,
            },
        },
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
        },
        ValidationLevel = {
            type = "string",
        },
    },
}

M.StartFHIRImportJobOutput = {
    type = "structure",
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
    members = {
        ResourceARN = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Tags = {
            type = "list",
            member_type = "structure",
            traits = {
                required = true,
            },
        },
    },
}

M.TagResourceOutput = {
    type = "structure",
}

M.UntagResourceInput = {
    type = "structure",
    members = {
        ResourceARN = {
            type = "string",
            traits = {
                required = true,
            },
        },
        TagKeys = {
            type = "list",
            member_type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.UntagResourceOutput = {
    type = "structure",
}

return M
