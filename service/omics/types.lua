local M = {}

M.AbortMultipartReadSetUploadInput = {
    type = "structure",
    members = {
        sequenceStoreId = {
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

M.AbortMultipartReadSetUploadOutput = {
    type = "structure",
}

M.AccessDeniedException = {
    type = "structure",
    error = "client",
    members = {
        message = {
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
        message = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.NotSupportedOperationException = {
    type = "structure",
    error = "client",
    members = {
        message = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.RequestTimeoutException = {
    type = "structure",
    error = "client",
    members = {
        message = {
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
        message = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.ServiceQuotaExceededException = {
    type = "structure",
    error = "client",
    members = {
        message = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.ThrottlingException = {
    type = "structure",
    error = "client",
    members = {
        message = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.ValidationException = {
    type = "structure",
    error = "client",
    members = {
        message = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.Accelerators = {
    GPU = "GPU",
}

M.AcceptShareInput = {
    type = "structure",
    members = {
        shareId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.ShareStatus = {
    PENDING = "PENDING",
    ACTIVATING = "ACTIVATING",
    ACTIVE = "ACTIVE",
    DELETING = "DELETING",
    DELETED = "DELETED",
    FAILED = "FAILED",
}

M.AcceptShareOutput = {
    type = "structure",
    members = {
        status = {
            type = "string",
        },
    },
}

M.ConflictException = {
    type = "structure",
    error = "client",
    members = {
        message = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.ReadSetActivationJobStatus = {
    SUBMITTED = "SUBMITTED",
    IN_PROGRESS = "IN_PROGRESS",
    CANCELLING = "CANCELLING",
    CANCELLED = "CANCELLED",
    FAILED = "FAILED",
    COMPLETED = "COMPLETED",
    COMPLETED_WITH_FAILURES = "COMPLETED_WITH_FAILURES",
}

M.ActivateReadSetFilter = {
    type = "structure",
    members = {
        status = {
            type = "string",
        },
        createdAfter = {
            type = "timestamp",
            traits = {
                timestamp_format = "date-time",
            },
        },
        createdBefore = {
            type = "timestamp",
            traits = {
                timestamp_format = "date-time",
            },
        },
    },
}

M.ActivateReadSetJobItem = {
    type = "structure",
    members = {
        id = {
            type = "string",
            traits = {
                required = true,
            },
        },
        sequenceStoreId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        status = {
            type = "string",
            traits = {
                required = true,
            },
        },
        creationTime = {
            type = "timestamp",
            traits = {
                required = true,
                timestamp_format = "date-time",
            },
        },
        completionTime = {
            type = "timestamp",
            traits = {
                timestamp_format = "date-time",
            },
        },
    },
}

M.ReadSetActivationJobItemStatus = {
    NOT_STARTED = "NOT_STARTED",
    IN_PROGRESS = "IN_PROGRESS",
    FINISHED = "FINISHED",
    FAILED = "FAILED",
}

M.ActivateReadSetSourceItem = {
    type = "structure",
    members = {
        readSetId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        status = {
            type = "string",
            traits = {
                required = true,
            },
        },
        statusMessage = {
            type = "string",
        },
    },
}

M.JobStatus = {
    SUBMITTED = "SUBMITTED",
    IN_PROGRESS = "IN_PROGRESS",
    CANCELLED = "CANCELLED",
    COMPLETED = "COMPLETED",
    FAILED = "FAILED",
    COMPLETED_WITH_FAILURES = "COMPLETED_WITH_FAILURES",
}

M.AnnotationImportItemDetail = {
    type = "structure",
    members = {
        source = {
            type = "string",
            traits = {
                required = true,
            },
        },
        jobStatus = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.AnnotationImportItemSource = {
    type = "structure",
    members = {
        source = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.CancelAnnotationImportJobInput = {
    type = "structure",
    members = {
        jobId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.CancelAnnotationImportJobOutput = {
    type = "structure",
}

M.GetAnnotationImportJobInput = {
    type = "structure",
    members = {
        jobId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.ReadOptions = {
    type = "structure",
    members = {
        sep = {
            type = "string",
        },
        encoding = {
            type = "string",
        },
        quote = {
            type = "string",
        },
        quoteAll = {
            type = "boolean",
            traits = {
                default = false,
            },
        },
        escape = {
            type = "string",
        },
        escapeQuotes = {
            type = "boolean",
            traits = {
                default = false,
            },
        },
        comment = {
            type = "string",
        },
        header = {
            type = "boolean",
            traits = {
                default = false,
            },
        },
        lineSep = {
            type = "string",
        },
    },
}

M.TsvOptions = {
    type = "structure",
    members = {
        readOptions = M.ReadOptions,
    },
}

M.VcfOptions = {
    type = "structure",
    members = {
        ignoreQualField = {
            type = "boolean",
        },
        ignoreFilterField = {
            type = "boolean",
        },
    },
}

M.FormatOptions = {
    type = "union",
    members = {
        tsvOptions = M.TsvOptions,
        vcfOptions = M.VcfOptions,
    },
}

M.GetAnnotationImportJobOutput = {
    type = "structure",
    members = {
        id = {
            type = "string",
            traits = {
                required = true,
            },
        },
        destinationName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        versionName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        roleArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        status = {
            type = "string",
            traits = {
                required = true,
            },
        },
        statusMessage = {
            type = "string",
            traits = {
                required = true,
            },
        },
        creationTime = {
            type = "timestamp",
            traits = {
                required = true,
                timestamp_format = "date-time",
            },
        },
        updateTime = {
            type = "timestamp",
            traits = {
                required = true,
                timestamp_format = "date-time",
            },
        },
        completionTime = {
            type = "timestamp",
            traits = {
                required = true,
                timestamp_format = "date-time",
            },
        },
        items = {
            type = "list",
            member = M.AnnotationImportItemDetail,
            traits = {
                required = true,
            },
        },
        runLeftNormalization = {
            type = "boolean",
            traits = {
                default = false,
                required = true,
            },
        },
        formatOptions = setmetatable({ traits = {
            required = true,
        } }, { __index = M.FormatOptions }),
        annotationFields = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
    },
}

M.ListAnnotationImportJobsFilter = {
    type = "structure",
    members = {
        status = {
            type = "string",
        },
        storeName = {
            type = "string",
        },
    },
}

M.ListAnnotationImportJobsInput = {
    type = "structure",
    members = {
        maxResults = {
            type = "integer",
            traits = {
                http_query = "maxResults",
            },
        },
        ids = {
            type = "list",
            member = { type = "string" },
        },
        nextToken = {
            type = "string",
            traits = {
                http_query = "nextToken",
            },
        },
        filter = M.ListAnnotationImportJobsFilter,
    },
}

M.AnnotationImportJobItem = {
    type = "structure",
    members = {
        id = {
            type = "string",
            traits = {
                required = true,
            },
        },
        destinationName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        versionName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        roleArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        status = {
            type = "string",
            traits = {
                required = true,
            },
        },
        creationTime = {
            type = "timestamp",
            traits = {
                required = true,
                timestamp_format = "date-time",
            },
        },
        updateTime = {
            type = "timestamp",
            traits = {
                required = true,
                timestamp_format = "date-time",
            },
        },
        completionTime = {
            type = "timestamp",
            traits = {
                timestamp_format = "date-time",
            },
        },
        runLeftNormalization = {
            type = "boolean",
            traits = {
                default = false,
            },
        },
        annotationFields = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
    },
}

M.ListAnnotationImportJobsOutput = {
    type = "structure",
    members = {
        annotationImportJobs = {
            type = "list",
            member = M.AnnotationImportJobItem,
        },
        nextToken = {
            type = "string",
        },
    },
}

M.StartAnnotationImportJobInput = {
    type = "structure",
    members = {
        destinationName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        roleArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        items = {
            type = "list",
            member = M.AnnotationImportItemSource,
            traits = {
                required = true,
            },
        },
        versionName = {
            type = "string",
        },
        formatOptions = M.FormatOptions,
        runLeftNormalization = {
            type = "boolean",
            traits = {
                default = false,
            },
        },
        annotationFields = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
    },
}

M.StartAnnotationImportJobOutput = {
    type = "structure",
    members = {
        jobId = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.ReferenceItem = {
    type = "union",
    members = {
        referenceArn = {
            type = "string",
        },
    },
}

M.EncryptionType = {
    KMS = "KMS",
}

M.SseConfig = {
    type = "structure",
    members = {
        type = {
            type = "string",
            traits = {
                required = true,
            },
        },
        keyArn = {
            type = "string",
        },
    },
}

M.StoreFormat = {
    GFF = "GFF",
    TSV = "TSV",
    VCF = "VCF",
}

M.AnnotationType = {
    GENERIC = "GENERIC",
    CHR_POS = "CHR_POS",
    CHR_POS_REF_ALT = "CHR_POS_REF_ALT",
    CHR_START_END_ONE_BASE = "CHR_START_END_ONE_BASE",
    CHR_START_END_REF_ALT_ONE_BASE = "CHR_START_END_REF_ALT_ONE_BASE",
    CHR_START_END_ZERO_BASE = "CHR_START_END_ZERO_BASE",
    CHR_START_END_REF_ALT_ZERO_BASE = "CHR_START_END_REF_ALT_ZERO_BASE",
}

M.FormatToHeaderKey = {
    CHR = "CHR",
    START = "START",
    END = "END",
    REF = "REF",
    ALT = "ALT",
    POS = "POS",
}

M.SchemaValueType = {
    LONG = "LONG",
    INT = "INT",
    STRING = "STRING",
    FLOAT = "FLOAT",
    DOUBLE = "DOUBLE",
    BOOLEAN = "BOOLEAN",
}

M.TsvStoreOptions = {
    type = "structure",
    members = {
        annotationType = {
            type = "string",
        },
        formatToHeader = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
        schema = {
            type = "list",
            member = { type = "map" },
        },
    },
}

M.StoreOptions = {
    type = "union",
    members = {
        tsvStoreOptions = M.TsvStoreOptions,
    },
}

M.CreateAnnotationStoreInput = {
    type = "structure",
    members = {
        reference = M.ReferenceItem,
        name = {
            type = "string",
        },
        description = {
            type = "string",
        },
        tags = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
        versionName = {
            type = "string",
        },
        sseConfig = M.SseConfig,
        storeFormat = {
            type = "string",
            traits = {
                required = true,
            },
        },
        storeOptions = M.StoreOptions,
    },
}

M.StoreStatus = {
    CREATING = "CREATING",
    UPDATING = "UPDATING",
    DELETING = "DELETING",
    ACTIVE = "ACTIVE",
    FAILED = "FAILED",
}

M.CreateAnnotationStoreOutput = {
    type = "structure",
    members = {
        id = {
            type = "string",
            traits = {
                required = true,
            },
        },
        reference = M.ReferenceItem,
        storeFormat = {
            type = "string",
        },
        storeOptions = M.StoreOptions,
        status = {
            type = "string",
            traits = {
                required = true,
            },
        },
        name = {
            type = "string",
            traits = {
                required = true,
            },
        },
        versionName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        creationTime = {
            type = "timestamp",
            traits = {
                required = true,
                timestamp_format = "date-time",
            },
        },
    },
}

M.DeleteAnnotationStoreInput = {
    type = "structure",
    members = {
        name = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        force = {
            type = "boolean",
            traits = {
                default = false,
                http_query = "force",
            },
        },
    },
}

M.DeleteAnnotationStoreOutput = {
    type = "structure",
    members = {
        status = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.GetAnnotationStoreInput = {
    type = "structure",
    members = {
        name = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.GetAnnotationStoreOutput = {
    type = "structure",
    members = {
        id = {
            type = "string",
            traits = {
                required = true,
            },
        },
        reference = setmetatable({ traits = {
            required = true,
        } }, { __index = M.ReferenceItem }),
        status = {
            type = "string",
            traits = {
                required = true,
            },
        },
        storeArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        name = {
            type = "string",
            traits = {
                required = true,
            },
        },
        description = {
            type = "string",
            traits = {
                required = true,
            },
        },
        sseConfig = setmetatable({ traits = {
            required = true,
        } }, { __index = M.SseConfig }),
        creationTime = {
            type = "timestamp",
            traits = {
                required = true,
                timestamp_format = "date-time",
            },
        },
        updateTime = {
            type = "timestamp",
            traits = {
                required = true,
                timestamp_format = "date-time",
            },
        },
        tags = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
            traits = {
                required = true,
            },
        },
        storeOptions = M.StoreOptions,
        storeFormat = {
            type = "string",
        },
        statusMessage = {
            type = "string",
            traits = {
                required = true,
            },
        },
        storeSizeBytes = {
            type = "long",
            traits = {
                required = true,
            },
        },
        numVersions = {
            type = "integer",
            traits = {
                required = true,
            },
        },
    },
}

M.ListAnnotationStoresFilter = {
    type = "structure",
    members = {
        status = {
            type = "string",
        },
    },
}

M.ListAnnotationStoresInput = {
    type = "structure",
    members = {
        ids = {
            type = "list",
            member = { type = "string" },
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
        filter = M.ListAnnotationStoresFilter,
    },
}

M.AnnotationStoreItem = {
    type = "structure",
    members = {
        id = {
            type = "string",
            traits = {
                required = true,
            },
        },
        reference = setmetatable({ traits = {
            required = true,
        } }, { __index = M.ReferenceItem }),
        status = {
            type = "string",
            traits = {
                required = true,
            },
        },
        storeArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        name = {
            type = "string",
            traits = {
                required = true,
            },
        },
        storeFormat = {
            type = "string",
            traits = {
                required = true,
            },
        },
        description = {
            type = "string",
            traits = {
                required = true,
            },
        },
        sseConfig = setmetatable({ traits = {
            required = true,
        } }, { __index = M.SseConfig }),
        creationTime = {
            type = "timestamp",
            traits = {
                required = true,
                timestamp_format = "date-time",
            },
        },
        updateTime = {
            type = "timestamp",
            traits = {
                required = true,
                timestamp_format = "date-time",
            },
        },
        statusMessage = {
            type = "string",
            traits = {
                required = true,
            },
        },
        storeSizeBytes = {
            type = "long",
            traits = {
                required = true,
            },
        },
    },
}

M.ListAnnotationStoresOutput = {
    type = "structure",
    members = {
        annotationStores = {
            type = "list",
            member = M.AnnotationStoreItem,
        },
        nextToken = {
            type = "string",
        },
    },
}

M.UpdateAnnotationStoreInput = {
    type = "structure",
    members = {
        name = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        description = {
            type = "string",
        },
    },
}

M.UpdateAnnotationStoreOutput = {
    type = "structure",
    members = {
        id = {
            type = "string",
            traits = {
                required = true,
            },
        },
        reference = setmetatable({ traits = {
            required = true,
        } }, { __index = M.ReferenceItem }),
        status = {
            type = "string",
            traits = {
                required = true,
            },
        },
        name = {
            type = "string",
            traits = {
                required = true,
            },
        },
        description = {
            type = "string",
            traits = {
                required = true,
            },
        },
        creationTime = {
            type = "timestamp",
            traits = {
                required = true,
                timestamp_format = "date-time",
            },
        },
        updateTime = {
            type = "timestamp",
            traits = {
                required = true,
                timestamp_format = "date-time",
            },
        },
        storeOptions = M.StoreOptions,
        storeFormat = {
            type = "string",
        },
    },
}

M.TsvVersionOptions = {
    type = "structure",
    members = {
        annotationType = {
            type = "string",
        },
        formatToHeader = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
        schema = {
            type = "list",
            member = { type = "map" },
        },
    },
}

M.VersionOptions = {
    type = "union",
    members = {
        tsvVersionOptions = M.TsvVersionOptions,
    },
}

M.CreateAnnotationStoreVersionInput = {
    type = "structure",
    members = {
        name = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        versionName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        description = {
            type = "string",
        },
        versionOptions = M.VersionOptions,
        tags = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
    },
}

M.VersionStatus = {
    CREATING = "CREATING",
    UPDATING = "UPDATING",
    DELETING = "DELETING",
    ACTIVE = "ACTIVE",
    FAILED = "FAILED",
}

M.CreateAnnotationStoreVersionOutput = {
    type = "structure",
    members = {
        id = {
            type = "string",
            traits = {
                required = true,
            },
        },
        versionName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        storeId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        versionOptions = M.VersionOptions,
        name = {
            type = "string",
            traits = {
                required = true,
            },
        },
        status = {
            type = "string",
            traits = {
                required = true,
            },
        },
        creationTime = {
            type = "timestamp",
            traits = {
                required = true,
                timestamp_format = "date-time",
            },
        },
    },
}

M.DeleteAnnotationStoreVersionsInput = {
    type = "structure",
    members = {
        name = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        versions = {
            type = "list",
            member = { type = "string" },
            traits = {
                required = true,
            },
        },
        force = {
            type = "boolean",
            traits = {
                default = false,
                http_query = "force",
            },
        },
    },
}

M.VersionDeleteError = {
    type = "structure",
    members = {
        versionName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        message = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.DeleteAnnotationStoreVersionsOutput = {
    type = "structure",
    members = {
        errors = {
            type = "list",
            member = M.VersionDeleteError,
        },
    },
}

M.GetAnnotationStoreVersionInput = {
    type = "structure",
    members = {
        name = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        versionName = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.GetAnnotationStoreVersionOutput = {
    type = "structure",
    members = {
        storeId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        id = {
            type = "string",
            traits = {
                required = true,
            },
        },
        status = {
            type = "string",
            traits = {
                required = true,
            },
        },
        versionArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        name = {
            type = "string",
            traits = {
                required = true,
            },
        },
        versionName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        description = {
            type = "string",
            traits = {
                required = true,
            },
        },
        creationTime = {
            type = "timestamp",
            traits = {
                required = true,
                timestamp_format = "date-time",
            },
        },
        updateTime = {
            type = "timestamp",
            traits = {
                required = true,
                timestamp_format = "date-time",
            },
        },
        tags = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
            traits = {
                required = true,
            },
        },
        versionOptions = M.VersionOptions,
        statusMessage = {
            type = "string",
            traits = {
                required = true,
            },
        },
        versionSizeBytes = {
            type = "long",
            traits = {
                required = true,
            },
        },
    },
}

M.ListAnnotationStoreVersionsFilter = {
    type = "structure",
    members = {
        status = {
            type = "string",
        },
    },
}

M.ListAnnotationStoreVersionsInput = {
    type = "structure",
    members = {
        name = {
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
        filter = M.ListAnnotationStoreVersionsFilter,
    },
}

M.AnnotationStoreVersionItem = {
    type = "structure",
    members = {
        storeId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        id = {
            type = "string",
            traits = {
                required = true,
            },
        },
        status = {
            type = "string",
            traits = {
                required = true,
            },
        },
        versionArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        name = {
            type = "string",
            traits = {
                required = true,
            },
        },
        versionName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        description = {
            type = "string",
            traits = {
                required = true,
            },
        },
        creationTime = {
            type = "timestamp",
            traits = {
                required = true,
                timestamp_format = "date-time",
            },
        },
        updateTime = {
            type = "timestamp",
            traits = {
                required = true,
                timestamp_format = "date-time",
            },
        },
        statusMessage = {
            type = "string",
            traits = {
                required = true,
            },
        },
        versionSizeBytes = {
            type = "long",
            traits = {
                required = true,
            },
        },
    },
}

M.ListAnnotationStoreVersionsOutput = {
    type = "structure",
    members = {
        annotationStoreVersions = {
            type = "list",
            member = M.AnnotationStoreVersionItem,
        },
        nextToken = {
            type = "string",
        },
    },
}

M.UpdateAnnotationStoreVersionInput = {
    type = "structure",
    members = {
        name = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        versionName = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        description = {
            type = "string",
        },
    },
}

M.UpdateAnnotationStoreVersionOutput = {
    type = "structure",
    members = {
        storeId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        id = {
            type = "string",
            traits = {
                required = true,
            },
        },
        status = {
            type = "string",
            traits = {
                required = true,
            },
        },
        name = {
            type = "string",
            traits = {
                required = true,
            },
        },
        versionName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        description = {
            type = "string",
            traits = {
                required = true,
            },
        },
        creationTime = {
            type = "timestamp",
            traits = {
                required = true,
                timestamp_format = "date-time",
            },
        },
        updateTime = {
            type = "timestamp",
            traits = {
                required = true,
                timestamp_format = "date-time",
            },
        },
    },
}

M.BatchDeleteReadSetInput = {
    type = "structure",
    members = {
        ids = {
            type = "list",
            member = { type = "string" },
            traits = {
                required = true,
            },
        },
        sequenceStoreId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.ReadSetBatchError = {
    type = "structure",
    members = {
        id = {
            type = "string",
            traits = {
                required = true,
            },
        },
        code = {
            type = "string",
            traits = {
                required = true,
            },
        },
        message = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.BatchDeleteReadSetOutput = {
    type = "structure",
    members = {
        errors = {
            type = "list",
            member = M.ReadSetBatchError,
        },
    },
}

M.BatchStatus = {
    CREATING = "CREATING",
    PENDING = "PENDING",
    SUBMITTING = "SUBMITTING",
    INPROGRESS = "INPROGRESS",
    STOPPING = "STOPPING",
    CANCELLED = "CANCELLED",
    FAILED = "FAILED",
    PROCESSED = "PROCESSED",
    RUNS_DELETING = "RUNS_DELETING",
    RUNS_DELETED = "RUNS_DELETED",
}

M.BatchListItem = {
    type = "structure",
    members = {
        id = {
            type = "string",
        },
        name = {
            type = "string",
        },
        status = {
            type = "string",
        },
        createdAt = {
            type = "timestamp",
            traits = {
                timestamp_format = "date-time",
            },
        },
        totalRuns = {
            type = "integer",
        },
        workflowId = {
            type = "string",
        },
    },
}

M.InlineSetting = {
    type = "structure",
    members = {
        runSettingId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        name = {
            type = "string",
        },
        outputUri = {
            type = "string",
        },
        priority = {
            type = "integer",
        },
        parameters = {
            type = "document",
        },
        outputBucketOwnerId = {
            type = "string",
        },
        runTags = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
    },
}

M.BatchRunSettings = {
    type = "union",
    members = {
        inlineSettings = {
            type = "list",
            member = M.InlineSetting,
        },
        s3UriSettings = {
            type = "string",
        },
    },
}

M.CacheBehavior = {
    CACHE_ON_FAILURE = "CACHE_ON_FAILURE",
    CACHE_ALWAYS = "CACHE_ALWAYS",
}

M.CancelRunInput = {
    type = "structure",
    members = {
        id = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.CancelRunOutput = {
    type = "structure",
}

M.CancelRunBatchInput = {
    type = "structure",
    members = {
        batchId = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.CancelRunBatchOutput = {
    type = "structure",
}

M.CancelVariantImportJobInput = {
    type = "structure",
    members = {
        jobId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.CancelVariantImportJobOutput = {
    type = "structure",
}

M.ReadSetPartSource = {
    SOURCE1 = "SOURCE1",
    SOURCE2 = "SOURCE2",
}

M.CompleteReadSetUploadPartListItem = {
    type = "structure",
    members = {
        partNumber = {
            type = "integer",
            traits = {
                required = true,
            },
        },
        partSource = {
            type = "string",
            traits = {
                required = true,
            },
        },
        checksum = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.CompleteMultipartReadSetUploadInput = {
    type = "structure",
    members = {
        sequenceStoreId = {
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
        parts = {
            type = "list",
            member = M.CompleteReadSetUploadPartListItem,
            traits = {
                required = true,
            },
        },
    },
}

M.CompleteMultipartReadSetUploadOutput = {
    type = "structure",
    members = {
        readSetId = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.ConfigurationDetails = {
    type = "structure",
    members = {
        name = {
            type = "string",
        },
        arn = {
            type = "string",
        },
        uuid = {
            type = "string",
        },
    },
}

M.ConfigurationStatus = {
    CREATING = "CREATING",
    ACTIVE = "ACTIVE",
    UPDATING = "UPDATING",
    DELETING = "DELETING",
    DELETED = "DELETED",
    FAILED = "FAILED",
}

M.ConfigurationListItem = {
    type = "structure",
    members = {
        arn = {
            type = "string",
        },
        name = {
            type = "string",
        },
        description = {
            type = "string",
        },
        status = {
            type = "string",
        },
        creationTime = {
            type = "timestamp",
            traits = {
                timestamp_format = "date-time",
            },
        },
    },
}

M.VpcConfig = {
    type = "structure",
    members = {
        securityGroupIds = {
            type = "list",
            member = { type = "string" },
        },
        subnetIds = {
            type = "list",
            member = { type = "string" },
        },
    },
}

M.RunConfigurations = {
    type = "structure",
    members = {
        vpcConfig = M.VpcConfig,
    },
}

M.CreateConfigurationInput = {
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
        runConfigurations = setmetatable({ traits = {
            required = true,
        } }, { __index = M.RunConfigurations }),
        tags = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
        requestId = {
            type = "string",
            traits = {
                idempotency_token = true,
                required = true,
            },
        },
    },
}

M.VpcConfigResponse = {
    type = "structure",
    members = {
        securityGroupIds = {
            type = "list",
            member = { type = "string" },
        },
        subnetIds = {
            type = "list",
            member = { type = "string" },
        },
        vpcId = {
            type = "string",
        },
    },
}

M.RunConfigurationsResponse = {
    type = "structure",
    members = {
        vpcConfig = M.VpcConfigResponse,
    },
}

M.CreateConfigurationOutput = {
    type = "structure",
    members = {
        arn = {
            type = "string",
        },
        uuid = {
            type = "string",
        },
        name = {
            type = "string",
        },
        description = {
            type = "string",
        },
        runConfigurations = M.RunConfigurationsResponse,
        status = {
            type = "string",
        },
        creationTime = {
            type = "timestamp",
            traits = {
                timestamp_format = "date-time",
            },
        },
        tags = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
    },
}

M.DeleteConfigurationInput = {
    type = "structure",
    members = {
        name = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.DeleteConfigurationOutput = {
    type = "structure",
}

M.GetConfigurationInput = {
    type = "structure",
    members = {
        name = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.GetConfigurationOutput = {
    type = "structure",
    members = {
        arn = {
            type = "string",
        },
        uuid = {
            type = "string",
        },
        name = {
            type = "string",
        },
        description = {
            type = "string",
        },
        runConfigurations = M.RunConfigurationsResponse,
        status = {
            type = "string",
        },
        creationTime = {
            type = "timestamp",
            traits = {
                timestamp_format = "date-time",
            },
        },
        tags = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
    },
}

M.ListConfigurationsInput = {
    type = "structure",
    members = {
        maxResults = {
            type = "integer",
            traits = {
                http_query = "maxResults",
            },
        },
        startingToken = {
            type = "string",
            traits = {
                http_query = "startingToken",
            },
        },
    },
}

M.ListConfigurationsOutput = {
    type = "structure",
    members = {
        items = {
            type = "list",
            member = M.ConfigurationListItem,
        },
        nextToken = {
            type = "string",
        },
    },
}

M.ImageMapping = {
    type = "structure",
    members = {
        sourceImage = {
            type = "string",
        },
        destinationImage = {
            type = "string",
        },
    },
}

M.RegistryMapping = {
    type = "structure",
    members = {
        upstreamRegistryUrl = {
            type = "string",
        },
        ecrRepositoryPrefix = {
            type = "string",
        },
        upstreamRepositoryPrefix = {
            type = "string",
        },
        ecrAccountId = {
            type = "string",
        },
    },
}

M.ContainerRegistryMap = {
    type = "structure",
    members = {
        registryMappings = {
            type = "list",
            member = M.RegistryMapping,
        },
        imageMappings = {
            type = "list",
            member = M.ImageMapping,
        },
    },
}

M.FileType = {
    FASTQ = "FASTQ",
    BAM = "BAM",
    CRAM = "CRAM",
    UBAM = "UBAM",
}

M.CreateMultipartReadSetUploadInput = {
    type = "structure",
    members = {
        sequenceStoreId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        clientToken = {
            type = "string",
        },
        sourceFileType = {
            type = "string",
            traits = {
                required = true,
            },
        },
        subjectId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        sampleId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        generatedFrom = {
            type = "string",
        },
        referenceArn = {
            type = "string",
        },
        name = {
            type = "string",
            traits = {
                required = true,
            },
        },
        description = {
            type = "string",
        },
        tags = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
    },
}

M.CreateMultipartReadSetUploadOutput = {
    type = "structure",
    members = {
        sequenceStoreId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        uploadId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        sourceFileType = {
            type = "string",
            traits = {
                required = true,
            },
        },
        subjectId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        sampleId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        generatedFrom = {
            type = "string",
        },
        referenceArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        name = {
            type = "string",
        },
        description = {
            type = "string",
        },
        tags = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
        creationTime = {
            type = "timestamp",
            traits = {
                required = true,
                timestamp_format = "date-time",
            },
        },
    },
}

M.CreateReferenceStoreInput = {
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
        sseConfig = M.SseConfig,
        tags = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
        clientToken = {
            type = "string",
        },
    },
}

M.CreateReferenceStoreOutput = {
    type = "structure",
    members = {
        id = {
            type = "string",
            traits = {
                required = true,
            },
        },
        arn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        name = {
            type = "string",
        },
        description = {
            type = "string",
        },
        sseConfig = M.SseConfig,
        creationTime = {
            type = "timestamp",
            traits = {
                required = true,
                timestamp_format = "date-time",
            },
        },
    },
}

M.CreateRunCacheInput = {
    type = "structure",
    members = {
        cacheBehavior = {
            type = "string",
        },
        cacheS3Location = {
            type = "string",
            traits = {
                required = true,
            },
        },
        description = {
            type = "string",
        },
        name = {
            type = "string",
        },
        requestId = {
            type = "string",
            traits = {
                idempotency_token = true,
                required = true,
            },
        },
        tags = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
        cacheBucketOwnerId = {
            type = "string",
        },
    },
}

M.RunCacheStatus = {
    ACTIVE = "ACTIVE",
    DELETED = "DELETED",
    FAILED = "FAILED",
}

M.CreateRunCacheOutput = {
    type = "structure",
    members = {
        arn = {
            type = "string",
        },
        id = {
            type = "string",
        },
        status = {
            type = "string",
        },
        tags = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
    },
}

M.CreateRunGroupInput = {
    type = "structure",
    members = {
        name = {
            type = "string",
        },
        maxCpus = {
            type = "integer",
        },
        maxRuns = {
            type = "integer",
        },
        maxDuration = {
            type = "integer",
        },
        tags = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
        requestId = {
            type = "string",
            traits = {
                idempotency_token = true,
                required = true,
            },
        },
        maxGpus = {
            type = "integer",
        },
    },
}

M.CreateRunGroupOutput = {
    type = "structure",
    members = {
        arn = {
            type = "string",
        },
        id = {
            type = "string",
        },
        tags = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
    },
}

M.ETagAlgorithmFamily = {
    MD5UP = "MD5up",
    SHA256UP = "SHA256up",
    SHA512UP = "SHA512up",
}

M.S3AccessConfig = {
    type = "structure",
    members = {
        accessLogLocation = {
            type = "string",
        },
    },
}

M.CreateSequenceStoreInput = {
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
        sseConfig = M.SseConfig,
        tags = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
        clientToken = {
            type = "string",
            traits = {
                idempotency_token = true,
            },
        },
        fallbackLocation = {
            type = "string",
        },
        eTagAlgorithmFamily = {
            type = "string",
        },
        propagatedSetLevelTags = {
            type = "list",
            member = { type = "string" },
        },
        s3AccessConfig = M.S3AccessConfig,
    },
}

M.SequenceStoreS3Access = {
    type = "structure",
    members = {
        s3Uri = {
            type = "string",
        },
        s3AccessPointArn = {
            type = "string",
        },
        accessLogLocation = {
            type = "string",
        },
    },
}

M.SequenceStoreStatus = {
    CREATING = "CREATING",
    ACTIVE = "ACTIVE",
    UPDATING = "UPDATING",
    DELETING = "DELETING",
    FAILED = "FAILED",
}

M.CreateSequenceStoreOutput = {
    type = "structure",
    members = {
        id = {
            type = "string",
            traits = {
                required = true,
            },
        },
        arn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        name = {
            type = "string",
        },
        description = {
            type = "string",
        },
        sseConfig = M.SseConfig,
        creationTime = {
            type = "timestamp",
            traits = {
                required = true,
                timestamp_format = "date-time",
            },
        },
        fallbackLocation = {
            type = "string",
        },
        eTagAlgorithmFamily = {
            type = "string",
        },
        status = {
            type = "string",
        },
        statusMessage = {
            type = "string",
        },
        propagatedSetLevelTags = {
            type = "list",
            member = { type = "string" },
        },
        s3Access = M.SequenceStoreS3Access,
    },
}

M.CreateShareInput = {
    type = "structure",
    members = {
        resourceArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        principalSubscriber = {
            type = "string",
            traits = {
                required = true,
            },
        },
        shareName = {
            type = "string",
        },
    },
}

M.CreateShareOutput = {
    type = "structure",
    members = {
        shareId = {
            type = "string",
        },
        status = {
            type = "string",
        },
        shareName = {
            type = "string",
        },
    },
}

M.CreateVariantStoreInput = {
    type = "structure",
    members = {
        reference = setmetatable({ traits = {
            required = true,
        } }, { __index = M.ReferenceItem }),
        name = {
            type = "string",
        },
        description = {
            type = "string",
        },
        tags = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
        sseConfig = M.SseConfig,
    },
}

M.CreateVariantStoreOutput = {
    type = "structure",
    members = {
        id = {
            type = "string",
            traits = {
                required = true,
            },
        },
        reference = M.ReferenceItem,
        status = {
            type = "string",
            traits = {
                required = true,
            },
        },
        name = {
            type = "string",
            traits = {
                required = true,
            },
        },
        creationTime = {
            type = "timestamp",
            traits = {
                required = true,
                timestamp_format = "date-time",
            },
        },
    },
}

M.SourceReferenceType = {
    BRANCH = "BRANCH",
    TAG = "TAG",
    COMMIT = "COMMIT",
}

M.SourceReference = {
    type = "structure",
    members = {
        type = {
            type = "string",
            traits = {
                required = true,
            },
        },
        value = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.DefinitionRepository = {
    type = "structure",
    members = {
        connectionArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        fullRepositoryId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        sourceReference = M.SourceReference,
        excludeFilePatterns = {
            type = "list",
            member = { type = "string" },
        },
    },
}

M.WorkflowEngine = {
    WDL = "WDL",
    NEXTFLOW = "NEXTFLOW",
    CWL = "CWL",
    WDL_LENIENT = "WDL_LENIENT",
}

M.WorkflowParameter = {
    type = "structure",
    members = {
        description = {
            type = "string",
        },
        optional = {
            type = "boolean",
        },
    },
}

M.StorageType = {
    STATIC = "STATIC",
    DYNAMIC = "DYNAMIC",
}

M.CreateWorkflowInput = {
    type = "structure",
    members = {
        name = {
            type = "string",
        },
        description = {
            type = "string",
        },
        engine = {
            type = "string",
        },
        definitionZip = {
            type = "blob",
        },
        definitionUri = {
            type = "string",
        },
        main = {
            type = "string",
        },
        parameterTemplate = {
            type = "map",
            key = { type = "string" },
            value = M.WorkflowParameter,
        },
        storageCapacity = {
            type = "integer",
        },
        tags = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
        requestId = {
            type = "string",
            traits = {
                idempotency_token = true,
                required = true,
            },
        },
        accelerators = {
            type = "string",
        },
        storageType = {
            type = "string",
        },
        containerRegistryMap = M.ContainerRegistryMap,
        containerRegistryMapUri = {
            type = "string",
        },
        readmeMarkdown = {
            type = "string",
            traits = {
                media_type = "text/markdown",
            },
        },
        parameterTemplatePath = {
            type = "string",
        },
        readmePath = {
            type = "string",
        },
        definitionRepository = M.DefinitionRepository,
        workflowBucketOwnerId = {
            type = "string",
        },
        readmeUri = {
            type = "string",
        },
    },
}

M.WorkflowStatus = {
    CREATING = "CREATING",
    ACTIVE = "ACTIVE",
    UPDATING = "UPDATING",
    DELETED = "DELETED",
    FAILED = "FAILED",
    INACTIVE = "INACTIVE",
}

M.CreateWorkflowOutput = {
    type = "structure",
    members = {
        arn = {
            type = "string",
        },
        id = {
            type = "string",
        },
        status = {
            type = "string",
        },
        tags = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
        uuid = {
            type = "string",
        },
    },
}

M.CreateWorkflowVersionInput = {
    type = "structure",
    members = {
        workflowId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        versionName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        definitionZip = {
            type = "blob",
        },
        definitionUri = {
            type = "string",
        },
        accelerators = {
            type = "string",
        },
        description = {
            type = "string",
        },
        engine = {
            type = "string",
        },
        main = {
            type = "string",
        },
        parameterTemplate = {
            type = "map",
            key = { type = "string" },
            value = M.WorkflowParameter,
        },
        requestId = {
            type = "string",
            traits = {
                idempotency_token = true,
                required = true,
            },
        },
        storageType = {
            type = "string",
        },
        storageCapacity = {
            type = "integer",
        },
        tags = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
        workflowBucketOwnerId = {
            type = "string",
        },
        containerRegistryMap = M.ContainerRegistryMap,
        containerRegistryMapUri = {
            type = "string",
        },
        readmeMarkdown = {
            type = "string",
            traits = {
                media_type = "text/markdown",
            },
        },
        parameterTemplatePath = {
            type = "string",
        },
        readmePath = {
            type = "string",
        },
        definitionRepository = M.DefinitionRepository,
        readmeUri = {
            type = "string",
        },
    },
}

M.CreateWorkflowVersionOutput = {
    type = "structure",
    members = {
        arn = {
            type = "string",
        },
        workflowId = {
            type = "string",
        },
        versionName = {
            type = "string",
        },
        status = {
            type = "string",
        },
        tags = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
        uuid = {
            type = "string",
        },
    },
}

M.CreationType = {
    IMPORT = "IMPORT",
    UPLOAD = "UPLOAD",
}

M.RunLogLevel = {
    OFF = "OFF",
    FATAL = "FATAL",
    ERROR = "ERROR",
    ALL = "ALL",
}

M.NetworkingMode = {
    RESTRICTED = "RESTRICTED",
    VPC = "VPC",
}

M.RunRetentionMode = {
    RETAIN = "RETAIN",
    REMOVE = "REMOVE",
}

M.WorkflowType = {
    PRIVATE = "PRIVATE",
    READY2RUN = "READY2RUN",
}

M.DefaultRunSetting = {
    type = "structure",
    members = {
        workflowId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        workflowType = {
            type = "string",
        },
        roleArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        name = {
            type = "string",
        },
        cacheId = {
            type = "string",
        },
        cacheBehavior = {
            type = "string",
        },
        runGroupId = {
            type = "string",
        },
        priority = {
            type = "integer",
        },
        parameters = {
            type = "document",
        },
        storageCapacity = {
            type = "integer",
        },
        outputUri = {
            type = "string",
        },
        logLevel = {
            type = "string",
        },
        runTags = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
        retentionMode = {
            type = "string",
        },
        storageType = {
            type = "string",
        },
        workflowOwnerId = {
            type = "string",
        },
        outputBucketOwnerId = {
            type = "string",
        },
        workflowVersionName = {
            type = "string",
        },
        networkingMode = {
            type = "string",
        },
        configurationName = {
            type = "string",
        },
    },
}

M.DefinitionRepositoryDetails = {
    type = "structure",
    members = {
        connectionArn = {
            type = "string",
        },
        fullRepositoryId = {
            type = "string",
        },
        sourceReference = M.SourceReference,
        providerType = {
            type = "string",
        },
        providerEndpoint = {
            type = "string",
        },
    },
}

M.DeleteBatchInput = {
    type = "structure",
    members = {
        batchId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.DeleteBatchOutput = {
    type = "structure",
}

M.DeleteReferenceInput = {
    type = "structure",
    members = {
        id = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        referenceStoreId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.DeleteReferenceOutput = {
    type = "structure",
}

M.DeleteReferenceStoreInput = {
    type = "structure",
    members = {
        id = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.DeleteReferenceStoreOutput = {
    type = "structure",
}

M.DeleteRunInput = {
    type = "structure",
    members = {
        id = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.DeleteRunOutput = {
    type = "structure",
}

M.DeleteRunBatchInput = {
    type = "structure",
    members = {
        batchId = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.DeleteRunBatchOutput = {
    type = "structure",
}

M.DeleteRunCacheInput = {
    type = "structure",
    members = {
        id = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.DeleteRunCacheOutput = {
    type = "structure",
}

M.DeleteRunGroupInput = {
    type = "structure",
    members = {
        id = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.DeleteRunGroupOutput = {
    type = "structure",
}

M.DeleteS3AccessPolicyInput = {
    type = "structure",
    members = {
        s3AccessPointArn = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.DeleteS3AccessPolicyOutput = {
    type = "structure",
}

M.DeleteSequenceStoreInput = {
    type = "structure",
    members = {
        id = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.DeleteSequenceStoreOutput = {
    type = "structure",
}

M.DeleteShareInput = {
    type = "structure",
    members = {
        shareId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.DeleteShareOutput = {
    type = "structure",
    members = {
        status = {
            type = "string",
        },
    },
}

M.DeleteVariantStoreInput = {
    type = "structure",
    members = {
        name = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        force = {
            type = "boolean",
            traits = {
                default = false,
                http_query = "force",
            },
        },
    },
}

M.DeleteVariantStoreOutput = {
    type = "structure",
    members = {
        status = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.DeleteWorkflowInput = {
    type = "structure",
    members = {
        id = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.DeleteWorkflowOutput = {
    type = "structure",
}

M.DeleteWorkflowVersionInput = {
    type = "structure",
    members = {
        workflowId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        versionName = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.DeleteWorkflowVersionOutput = {
    type = "structure",
}

M.ETagAlgorithm = {
    FASTQ_MD5UP = "FASTQ_MD5up",
    BAM_MD5UP = "BAM_MD5up",
    CRAM_MD5UP = "CRAM_MD5up",
    FASTQ_SHA256UP = "FASTQ_SHA256up",
    BAM_SHA256UP = "BAM_SHA256up",
    CRAM_SHA256UP = "CRAM_SHA256up",
    FASTQ_SHA512UP = "FASTQ_SHA512up",
    BAM_SHA512UP = "BAM_SHA512up",
    CRAM_SHA512UP = "CRAM_SHA512up",
}

M.ETag = {
    type = "structure",
    members = {
        algorithm = {
            type = "string",
        },
        source1 = {
            type = "string",
        },
        source2 = {
            type = "string",
        },
    },
}

M.ExportReadSet = {
    type = "structure",
    members = {
        readSetId = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.ReadSetExportJobItemStatus = {
    NOT_STARTED = "NOT_STARTED",
    IN_PROGRESS = "IN_PROGRESS",
    FINISHED = "FINISHED",
    FAILED = "FAILED",
}

M.ExportReadSetDetail = {
    type = "structure",
    members = {
        id = {
            type = "string",
            traits = {
                required = true,
            },
        },
        status = {
            type = "string",
            traits = {
                required = true,
            },
        },
        statusMessage = {
            type = "string",
        },
    },
}

M.ReadSetExportJobStatus = {
    SUBMITTED = "SUBMITTED",
    IN_PROGRESS = "IN_PROGRESS",
    CANCELLING = "CANCELLING",
    CANCELLED = "CANCELLED",
    FAILED = "FAILED",
    COMPLETED = "COMPLETED",
    COMPLETED_WITH_FAILURES = "COMPLETED_WITH_FAILURES",
}

M.ExportReadSetFilter = {
    type = "structure",
    members = {
        status = {
            type = "string",
        },
        createdAfter = {
            type = "timestamp",
            traits = {
                timestamp_format = "date-time",
            },
        },
        createdBefore = {
            type = "timestamp",
            traits = {
                timestamp_format = "date-time",
            },
        },
    },
}

M.ExportReadSetJobDetail = {
    type = "structure",
    members = {
        id = {
            type = "string",
            traits = {
                required = true,
            },
        },
        sequenceStoreId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        destination = {
            type = "string",
            traits = {
                required = true,
            },
        },
        status = {
            type = "string",
            traits = {
                required = true,
            },
        },
        creationTime = {
            type = "timestamp",
            traits = {
                required = true,
                timestamp_format = "date-time",
            },
        },
        completionTime = {
            type = "timestamp",
            traits = {
                timestamp_format = "date-time",
            },
        },
    },
}

M.ReadSetS3Access = {
    type = "structure",
    members = {
        s3Uri = {
            type = "string",
        },
    },
}

M.FileInformation = {
    type = "structure",
    members = {
        totalParts = {
            type = "integer",
        },
        partSize = {
            type = "long",
        },
        contentLength = {
            type = "long",
        },
        s3Access = M.ReadSetS3Access,
    },
}

M.ShareResourceType = {
    VARIANT_STORE = "VARIANT_STORE",
    ANNOTATION_STORE = "ANNOTATION_STORE",
    WORKFLOW = "WORKFLOW",
}

M.Filter = {
    type = "structure",
    members = {
        resourceArns = {
            type = "list",
            member = { type = "string" },
        },
        status = {
            type = "list",
            member = { type = "string" },
        },
        type = {
            type = "list",
            member = { type = "string" },
        },
    },
}

M.GetBatchInput = {
    type = "structure",
    members = {
        batchId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.RunSummary = {
    type = "structure",
    members = {
        pendingRunCount = {
            type = "integer",
        },
        startingRunCount = {
            type = "integer",
        },
        runningRunCount = {
            type = "integer",
        },
        stoppingRunCount = {
            type = "integer",
        },
        completedRunCount = {
            type = "integer",
        },
        deletedRunCount = {
            type = "integer",
        },
        failedRunCount = {
            type = "integer",
        },
        cancelledRunCount = {
            type = "integer",
        },
    },
}

M.SubmissionSummary = {
    type = "structure",
    members = {
        successfulStartSubmissionCount = {
            type = "integer",
        },
        failedStartSubmissionCount = {
            type = "integer",
        },
        pendingStartSubmissionCount = {
            type = "integer",
        },
        successfulCancelSubmissionCount = {
            type = "integer",
        },
        failedCancelSubmissionCount = {
            type = "integer",
        },
        successfulDeleteSubmissionCount = {
            type = "integer",
        },
        failedDeleteSubmissionCount = {
            type = "integer",
        },
    },
}

M.GetBatchOutput = {
    type = "structure",
    members = {
        id = {
            type = "string",
        },
        arn = {
            type = "string",
        },
        uuid = {
            type = "string",
        },
        name = {
            type = "string",
        },
        status = {
            type = "string",
        },
        tags = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
        totalRuns = {
            type = "integer",
        },
        defaultRunSetting = M.DefaultRunSetting,
        submissionSummary = M.SubmissionSummary,
        runSummary = M.RunSummary,
        creationTime = {
            type = "timestamp",
            traits = {
                timestamp_format = "date-time",
            },
        },
        submittedTime = {
            type = "timestamp",
            traits = {
                timestamp_format = "date-time",
            },
        },
        processedTime = {
            type = "timestamp",
            traits = {
                timestamp_format = "date-time",
            },
        },
        failedTime = {
            type = "timestamp",
            traits = {
                timestamp_format = "date-time",
            },
        },
        failureReason = {
            type = "string",
        },
    },
}

M.ReadSetFile = {
    SOURCE1 = "SOURCE1",
    SOURCE2 = "SOURCE2",
    INDEX = "INDEX",
}

M.GetReadSetInput = {
    type = "structure",
    members = {
        id = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        sequenceStoreId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        file = {
            type = "string",
            traits = {
                http_query = "file",
            },
        },
        partNumber = {
            type = "integer",
            traits = {
                http_query = "partNumber",
                required = true,
            },
        },
    },
}

M.GetReadSetOutput = {
    type = "structure",
    members = {
        payload = {
            type = "blob",
            traits = {
                default = "",
                http_payload = true,
            },
        },
    },
}

M.RangeNotSatisfiableException = {
    type = "structure",
    error = "client",
    members = {
        message = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.GetReadSetActivationJobInput = {
    type = "structure",
    members = {
        id = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        sequenceStoreId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.GetReadSetActivationJobOutput = {
    type = "structure",
    members = {
        id = {
            type = "string",
            traits = {
                required = true,
            },
        },
        sequenceStoreId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        status = {
            type = "string",
            traits = {
                required = true,
            },
        },
        statusMessage = {
            type = "string",
        },
        creationTime = {
            type = "timestamp",
            traits = {
                required = true,
                timestamp_format = "date-time",
            },
        },
        completionTime = {
            type = "timestamp",
            traits = {
                timestamp_format = "date-time",
            },
        },
        sources = {
            type = "list",
            member = M.ActivateReadSetSourceItem,
        },
    },
}

M.GetReadSetExportJobInput = {
    type = "structure",
    members = {
        sequenceStoreId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        id = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.GetReadSetExportJobOutput = {
    type = "structure",
    members = {
        id = {
            type = "string",
            traits = {
                required = true,
            },
        },
        sequenceStoreId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        destination = {
            type = "string",
            traits = {
                required = true,
            },
        },
        status = {
            type = "string",
            traits = {
                required = true,
            },
        },
        statusMessage = {
            type = "string",
        },
        creationTime = {
            type = "timestamp",
            traits = {
                required = true,
                timestamp_format = "date-time",
            },
        },
        completionTime = {
            type = "timestamp",
            traits = {
                timestamp_format = "date-time",
            },
        },
        readSets = {
            type = "list",
            member = M.ExportReadSetDetail,
        },
    },
}

M.GetReadSetImportJobInput = {
    type = "structure",
    members = {
        id = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        sequenceStoreId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.SourceFiles = {
    type = "structure",
    members = {
        source1 = {
            type = "string",
            traits = {
                required = true,
            },
        },
        source2 = {
            type = "string",
        },
    },
}

M.ReadSetImportJobItemStatus = {
    NOT_STARTED = "NOT_STARTED",
    IN_PROGRESS = "IN_PROGRESS",
    FINISHED = "FINISHED",
    FAILED = "FAILED",
}

M.ImportReadSetSourceItem = {
    type = "structure",
    members = {
        sourceFiles = setmetatable({ traits = {
            required = true,
        } }, { __index = M.SourceFiles }),
        sourceFileType = {
            type = "string",
            traits = {
                required = true,
            },
        },
        status = {
            type = "string",
            traits = {
                required = true,
            },
        },
        statusMessage = {
            type = "string",
        },
        subjectId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        sampleId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        generatedFrom = {
            type = "string",
        },
        referenceArn = {
            type = "string",
        },
        name = {
            type = "string",
        },
        description = {
            type = "string",
        },
        tags = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
        readSetId = {
            type = "string",
        },
    },
}

M.ReadSetImportJobStatus = {
    SUBMITTED = "SUBMITTED",
    IN_PROGRESS = "IN_PROGRESS",
    CANCELLING = "CANCELLING",
    CANCELLED = "CANCELLED",
    FAILED = "FAILED",
    COMPLETED = "COMPLETED",
    COMPLETED_WITH_FAILURES = "COMPLETED_WITH_FAILURES",
}

M.GetReadSetImportJobOutput = {
    type = "structure",
    members = {
        id = {
            type = "string",
            traits = {
                required = true,
            },
        },
        sequenceStoreId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        roleArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        status = {
            type = "string",
            traits = {
                required = true,
            },
        },
        statusMessage = {
            type = "string",
        },
        creationTime = {
            type = "timestamp",
            traits = {
                required = true,
                timestamp_format = "date-time",
            },
        },
        completionTime = {
            type = "timestamp",
            traits = {
                timestamp_format = "date-time",
            },
        },
        sources = {
            type = "list",
            member = M.ImportReadSetSourceItem,
            traits = {
                required = true,
            },
        },
    },
}

M.GetReadSetMetadataInput = {
    type = "structure",
    members = {
        id = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        sequenceStoreId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.ReadSetFiles = {
    type = "structure",
    members = {
        source1 = M.FileInformation,
        source2 = M.FileInformation,
        index = M.FileInformation,
    },
}

M.SequenceInformation = {
    type = "structure",
    members = {
        totalReadCount = {
            type = "long",
        },
        totalBaseCount = {
            type = "long",
        },
        generatedFrom = {
            type = "string",
        },
        alignment = {
            type = "string",
        },
    },
}

M.ReadSetStatus = {
    ARCHIVED = "ARCHIVED",
    ACTIVATING = "ACTIVATING",
    ACTIVE = "ACTIVE",
    DELETING = "DELETING",
    DELETED = "DELETED",
    PROCESSING_UPLOAD = "PROCESSING_UPLOAD",
    UPLOAD_FAILED = "UPLOAD_FAILED",
}

M.GetReadSetMetadataOutput = {
    type = "structure",
    members = {
        id = {
            type = "string",
            traits = {
                required = true,
            },
        },
        arn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        sequenceStoreId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        subjectId = {
            type = "string",
        },
        sampleId = {
            type = "string",
        },
        status = {
            type = "string",
            traits = {
                required = true,
            },
        },
        name = {
            type = "string",
        },
        description = {
            type = "string",
        },
        fileType = {
            type = "string",
            traits = {
                required = true,
            },
        },
        creationTime = {
            type = "timestamp",
            traits = {
                required = true,
                timestamp_format = "date-time",
            },
        },
        sequenceInformation = M.SequenceInformation,
        referenceArn = {
            type = "string",
        },
        files = M.ReadSetFiles,
        statusMessage = {
            type = "string",
        },
        creationType = {
            type = "string",
        },
        etag = M.ETag,
        creationJobId = {
            type = "string",
        },
    },
}

M.ReferenceFile = {
    SOURCE = "SOURCE",
    INDEX = "INDEX",
}

M.GetReferenceInput = {
    type = "structure",
    members = {
        id = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        referenceStoreId = {
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
        partNumber = {
            type = "integer",
            traits = {
                http_query = "partNumber",
                required = true,
            },
        },
        file = {
            type = "string",
            traits = {
                http_query = "file",
            },
        },
    },
}

M.GetReferenceOutput = {
    type = "structure",
    members = {
        payload = {
            type = "blob",
            traits = {
                default = "",
                http_payload = true,
            },
        },
    },
}

M.GetReferenceImportJobInput = {
    type = "structure",
    members = {
        id = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        referenceStoreId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.ReferenceImportJobItemStatus = {
    NOT_STARTED = "NOT_STARTED",
    IN_PROGRESS = "IN_PROGRESS",
    FINISHED = "FINISHED",
    FAILED = "FAILED",
}

M.ImportReferenceSourceItem = {
    type = "structure",
    members = {
        sourceFile = {
            type = "string",
        },
        status = {
            type = "string",
            traits = {
                required = true,
            },
        },
        statusMessage = {
            type = "string",
        },
        name = {
            type = "string",
        },
        description = {
            type = "string",
        },
        tags = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
        referenceId = {
            type = "string",
        },
    },
}

M.ReferenceImportJobStatus = {
    SUBMITTED = "SUBMITTED",
    IN_PROGRESS = "IN_PROGRESS",
    CANCELLING = "CANCELLING",
    CANCELLED = "CANCELLED",
    FAILED = "FAILED",
    COMPLETED = "COMPLETED",
    COMPLETED_WITH_FAILURES = "COMPLETED_WITH_FAILURES",
}

M.GetReferenceImportJobOutput = {
    type = "structure",
    members = {
        id = {
            type = "string",
            traits = {
                required = true,
            },
        },
        referenceStoreId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        roleArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        status = {
            type = "string",
            traits = {
                required = true,
            },
        },
        statusMessage = {
            type = "string",
        },
        creationTime = {
            type = "timestamp",
            traits = {
                required = true,
                timestamp_format = "date-time",
            },
        },
        completionTime = {
            type = "timestamp",
            traits = {
                timestamp_format = "date-time",
            },
        },
        sources = {
            type = "list",
            member = M.ImportReferenceSourceItem,
            traits = {
                required = true,
            },
        },
    },
}

M.GetReferenceMetadataInput = {
    type = "structure",
    members = {
        id = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        referenceStoreId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.ReferenceCreationType = {
    IMPORT = "IMPORT",
}

M.ReferenceFiles = {
    type = "structure",
    members = {
        source = M.FileInformation,
        index = M.FileInformation,
    },
}

M.ReferenceStatus = {
    ACTIVE = "ACTIVE",
    DELETING = "DELETING",
    DELETED = "DELETED",
}

M.GetReferenceMetadataOutput = {
    type = "structure",
    members = {
        id = {
            type = "string",
            traits = {
                required = true,
            },
        },
        arn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        referenceStoreId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        md5 = {
            type = "string",
            traits = {
                required = true,
            },
        },
        status = {
            type = "string",
        },
        name = {
            type = "string",
        },
        description = {
            type = "string",
        },
        creationTime = {
            type = "timestamp",
            traits = {
                required = true,
                timestamp_format = "date-time",
            },
        },
        updateTime = {
            type = "timestamp",
            traits = {
                required = true,
                timestamp_format = "date-time",
            },
        },
        files = M.ReferenceFiles,
        creationType = {
            type = "string",
        },
        creationJobId = {
            type = "string",
        },
    },
}

M.GetReferenceStoreInput = {
    type = "structure",
    members = {
        id = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.GetReferenceStoreOutput = {
    type = "structure",
    members = {
        id = {
            type = "string",
            traits = {
                required = true,
            },
        },
        arn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        name = {
            type = "string",
        },
        description = {
            type = "string",
        },
        sseConfig = M.SseConfig,
        creationTime = {
            type = "timestamp",
            traits = {
                required = true,
                timestamp_format = "date-time",
            },
        },
    },
}

M.RunExport = {
    DEFINITION = "DEFINITION",
}

M.GetRunInput = {
    type = "structure",
    members = {
        id = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        export = {
            type = "list",
            member = { type = "string" },
            traits = {
                http_query = "export",
            },
        },
    },
}

M.RunLogLocation = {
    type = "structure",
    members = {
        engineLogStream = {
            type = "string",
        },
        runLogStream = {
            type = "string",
        },
    },
}

M.RunStatus = {
    PENDING = "PENDING",
    STARTING = "STARTING",
    RUNNING = "RUNNING",
    STOPPING = "STOPPING",
    COMPLETED = "COMPLETED",
    DELETED = "DELETED",
    CANCELLED = "CANCELLED",
    FAILED = "FAILED",
}

M.GetRunOutput = {
    type = "structure",
    members = {
        arn = {
            type = "string",
        },
        id = {
            type = "string",
        },
        cacheId = {
            type = "string",
        },
        cacheBehavior = {
            type = "string",
        },
        engineVersion = {
            type = "string",
        },
        status = {
            type = "string",
        },
        workflowId = {
            type = "string",
        },
        workflowType = {
            type = "string",
        },
        runId = {
            type = "string",
        },
        roleArn = {
            type = "string",
        },
        name = {
            type = "string",
        },
        runGroupId = {
            type = "string",
        },
        batchId = {
            type = "string",
        },
        priority = {
            type = "integer",
        },
        definition = {
            type = "string",
        },
        digest = {
            type = "string",
        },
        parameters = {
            type = "document",
        },
        storageCapacity = {
            type = "integer",
        },
        outputUri = {
            type = "string",
        },
        logLevel = {
            type = "string",
        },
        resourceDigests = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
        startedBy = {
            type = "string",
        },
        creationTime = {
            type = "timestamp",
            traits = {
                timestamp_format = "date-time",
            },
        },
        startTime = {
            type = "timestamp",
            traits = {
                timestamp_format = "date-time",
            },
        },
        stopTime = {
            type = "timestamp",
            traits = {
                timestamp_format = "date-time",
            },
        },
        statusMessage = {
            type = "string",
        },
        tags = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
        accelerators = {
            type = "string",
        },
        retentionMode = {
            type = "string",
        },
        failureReason = {
            type = "string",
        },
        logLocation = M.RunLogLocation,
        uuid = {
            type = "string",
        },
        runOutputUri = {
            type = "string",
        },
        storageType = {
            type = "string",
        },
        workflowOwnerId = {
            type = "string",
        },
        workflowVersionName = {
            type = "string",
        },
        workflowUuid = {
            type = "string",
        },
        networkingMode = {
            type = "string",
        },
        configuration = M.ConfigurationDetails,
        vpcConfig = M.VpcConfigResponse,
    },
}

M.GetRunCacheInput = {
    type = "structure",
    members = {
        id = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.GetRunCacheOutput = {
    type = "structure",
    members = {
        arn = {
            type = "string",
        },
        cacheBehavior = {
            type = "string",
        },
        cacheBucketOwnerId = {
            type = "string",
        },
        cacheS3Uri = {
            type = "string",
        },
        creationTime = {
            type = "timestamp",
            traits = {
                timestamp_format = "date-time",
            },
        },
        description = {
            type = "string",
        },
        id = {
            type = "string",
        },
        name = {
            type = "string",
        },
        status = {
            type = "string",
        },
        tags = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
    },
}

M.GetRunGroupInput = {
    type = "structure",
    members = {
        id = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.GetRunGroupOutput = {
    type = "structure",
    members = {
        arn = {
            type = "string",
        },
        id = {
            type = "string",
        },
        name = {
            type = "string",
        },
        maxCpus = {
            type = "integer",
        },
        maxRuns = {
            type = "integer",
        },
        maxDuration = {
            type = "integer",
        },
        creationTime = {
            type = "timestamp",
            traits = {
                timestamp_format = "date-time",
            },
        },
        tags = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
        maxGpus = {
            type = "integer",
        },
    },
}

M.GetRunTaskInput = {
    type = "structure",
    members = {
        id = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        taskId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.ImageDetails = {
    type = "structure",
    members = {
        image = {
            type = "string",
        },
        imageDigest = {
            type = "string",
        },
        sourceImage = {
            type = "string",
        },
    },
}

M.TaskStatus = {
    PENDING = "PENDING",
    STARTING = "STARTING",
    RUNNING = "RUNNING",
    STOPPING = "STOPPING",
    COMPLETED = "COMPLETED",
    CANCELLED = "CANCELLED",
    FAILED = "FAILED",
}

M.GetRunTaskOutput = {
    type = "structure",
    members = {
        taskId = {
            type = "string",
        },
        status = {
            type = "string",
        },
        name = {
            type = "string",
        },
        cpus = {
            type = "integer",
        },
        cacheHit = {
            type = "boolean",
        },
        cacheS3Uri = {
            type = "string",
        },
        memory = {
            type = "integer",
        },
        creationTime = {
            type = "timestamp",
            traits = {
                timestamp_format = "date-time",
            },
        },
        startTime = {
            type = "timestamp",
            traits = {
                timestamp_format = "date-time",
            },
        },
        stopTime = {
            type = "timestamp",
            traits = {
                timestamp_format = "date-time",
            },
        },
        statusMessage = {
            type = "string",
        },
        logStream = {
            type = "string",
        },
        gpus = {
            type = "integer",
        },
        instanceType = {
            type = "string",
        },
        failureReason = {
            type = "string",
        },
        imageDetails = M.ImageDetails,
    },
}

M.GetS3AccessPolicyInput = {
    type = "structure",
    members = {
        s3AccessPointArn = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.StoreType = {
    SEQUENCE_STORE = "SEQUENCE_STORE",
    REFERENCE_STORE = "REFERENCE_STORE",
}

M.GetS3AccessPolicyOutput = {
    type = "structure",
    members = {
        s3AccessPointArn = {
            type = "string",
        },
        storeId = {
            type = "string",
        },
        storeType = {
            type = "string",
        },
        updateTime = {
            type = "timestamp",
            traits = {
                timestamp_format = "date-time",
            },
        },
        s3AccessPolicy = {
            type = "string",
            traits = {
                media_type = "application/json",
                required = true,
            },
        },
    },
}

M.GetSequenceStoreInput = {
    type = "structure",
    members = {
        id = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.GetSequenceStoreOutput = {
    type = "structure",
    members = {
        id = {
            type = "string",
            traits = {
                required = true,
            },
        },
        arn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        name = {
            type = "string",
        },
        description = {
            type = "string",
        },
        sseConfig = M.SseConfig,
        creationTime = {
            type = "timestamp",
            traits = {
                required = true,
                timestamp_format = "date-time",
            },
        },
        fallbackLocation = {
            type = "string",
        },
        s3Access = M.SequenceStoreS3Access,
        eTagAlgorithmFamily = {
            type = "string",
        },
        status = {
            type = "string",
        },
        statusMessage = {
            type = "string",
        },
        propagatedSetLevelTags = {
            type = "list",
            member = { type = "string" },
        },
        updateTime = {
            type = "timestamp",
            traits = {
                timestamp_format = "date-time",
            },
        },
    },
}

M.GetShareInput = {
    type = "structure",
    members = {
        shareId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.ShareDetails = {
    type = "structure",
    members = {
        shareId = {
            type = "string",
        },
        resourceArn = {
            type = "string",
        },
        resourceId = {
            type = "string",
        },
        principalSubscriber = {
            type = "string",
        },
        ownerId = {
            type = "string",
        },
        status = {
            type = "string",
        },
        statusMessage = {
            type = "string",
        },
        shareName = {
            type = "string",
        },
        creationTime = {
            type = "timestamp",
            traits = {
                timestamp_format = "date-time",
            },
        },
        updateTime = {
            type = "timestamp",
            traits = {
                timestamp_format = "date-time",
            },
        },
    },
}

M.GetShareOutput = {
    type = "structure",
    members = {
        share = M.ShareDetails,
    },
}

M.GetVariantImportJobInput = {
    type = "structure",
    members = {
        jobId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.VariantImportItemDetail = {
    type = "structure",
    members = {
        source = {
            type = "string",
            traits = {
                required = true,
            },
        },
        jobStatus = {
            type = "string",
            traits = {
                required = true,
            },
        },
        statusMessage = {
            type = "string",
        },
    },
}

M.GetVariantImportJobOutput = {
    type = "structure",
    members = {
        id = {
            type = "string",
            traits = {
                required = true,
            },
        },
        destinationName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        roleArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        status = {
            type = "string",
            traits = {
                required = true,
            },
        },
        statusMessage = {
            type = "string",
            traits = {
                required = true,
            },
        },
        creationTime = {
            type = "timestamp",
            traits = {
                required = true,
                timestamp_format = "date-time",
            },
        },
        updateTime = {
            type = "timestamp",
            traits = {
                required = true,
                timestamp_format = "date-time",
            },
        },
        completionTime = {
            type = "timestamp",
            traits = {
                timestamp_format = "date-time",
            },
        },
        items = {
            type = "list",
            member = M.VariantImportItemDetail,
            traits = {
                required = true,
            },
        },
        runLeftNormalization = {
            type = "boolean",
            traits = {
                default = false,
                required = true,
            },
        },
        annotationFields = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
    },
}

M.GetVariantStoreInput = {
    type = "structure",
    members = {
        name = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.GetVariantStoreOutput = {
    type = "structure",
    members = {
        id = {
            type = "string",
            traits = {
                required = true,
            },
        },
        reference = setmetatable({ traits = {
            required = true,
        } }, { __index = M.ReferenceItem }),
        status = {
            type = "string",
            traits = {
                required = true,
            },
        },
        storeArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        name = {
            type = "string",
            traits = {
                required = true,
            },
        },
        description = {
            type = "string",
            traits = {
                required = true,
            },
        },
        sseConfig = setmetatable({ traits = {
            required = true,
        } }, { __index = M.SseConfig }),
        creationTime = {
            type = "timestamp",
            traits = {
                required = true,
                timestamp_format = "date-time",
            },
        },
        updateTime = {
            type = "timestamp",
            traits = {
                required = true,
                timestamp_format = "date-time",
            },
        },
        tags = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
            traits = {
                required = true,
            },
        },
        statusMessage = {
            type = "string",
            traits = {
                required = true,
            },
        },
        storeSizeBytes = {
            type = "long",
            traits = {
                required = true,
            },
        },
    },
}

M.WorkflowExport = {
    DEFINITION = "DEFINITION",
    README = "README",
}

M.GetWorkflowInput = {
    type = "structure",
    members = {
        id = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        type = {
            type = "string",
            traits = {
                http_query = "type",
            },
        },
        export = {
            type = "list",
            member = { type = "string" },
            traits = {
                http_query = "export",
            },
        },
        workflowOwnerId = {
            type = "string",
            traits = {
                http_query = "workflowOwnerId",
            },
        },
    },
}

M.GetWorkflowOutput = {
    type = "structure",
    members = {
        arn = {
            type = "string",
        },
        id = {
            type = "string",
        },
        status = {
            type = "string",
        },
        type = {
            type = "string",
        },
        name = {
            type = "string",
        },
        description = {
            type = "string",
        },
        engine = {
            type = "string",
        },
        definition = {
            type = "string",
        },
        main = {
            type = "string",
        },
        digest = {
            type = "string",
        },
        parameterTemplate = {
            type = "map",
            key = { type = "string" },
            value = M.WorkflowParameter,
        },
        storageCapacity = {
            type = "integer",
        },
        creationTime = {
            type = "timestamp",
            traits = {
                timestamp_format = "date-time",
            },
        },
        statusMessage = {
            type = "string",
        },
        tags = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
        metadata = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
        accelerators = {
            type = "string",
        },
        storageType = {
            type = "string",
        },
        uuid = {
            type = "string",
        },
        containerRegistryMap = M.ContainerRegistryMap,
        readme = {
            type = "string",
        },
        definitionRepositoryDetails = M.DefinitionRepositoryDetails,
        readmePath = {
            type = "string",
        },
    },
}

M.GetWorkflowVersionInput = {
    type = "structure",
    members = {
        workflowId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        versionName = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        type = {
            type = "string",
            traits = {
                http_query = "type",
            },
        },
        export = {
            type = "list",
            member = { type = "string" },
            traits = {
                http_query = "export",
            },
        },
        workflowOwnerId = {
            type = "string",
            traits = {
                http_query = "workflowOwnerId",
            },
        },
    },
}

M.GetWorkflowVersionOutput = {
    type = "structure",
    members = {
        arn = {
            type = "string",
        },
        workflowId = {
            type = "string",
        },
        versionName = {
            type = "string",
        },
        accelerators = {
            type = "string",
        },
        creationTime = {
            type = "timestamp",
            traits = {
                timestamp_format = "date-time",
            },
        },
        description = {
            type = "string",
        },
        definition = {
            type = "string",
        },
        digest = {
            type = "string",
        },
        engine = {
            type = "string",
        },
        main = {
            type = "string",
        },
        metadata = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
        parameterTemplate = {
            type = "map",
            key = { type = "string" },
            value = M.WorkflowParameter,
        },
        status = {
            type = "string",
        },
        statusMessage = {
            type = "string",
        },
        storageType = {
            type = "string",
        },
        storageCapacity = {
            type = "integer",
        },
        type = {
            type = "string",
        },
        tags = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
        uuid = {
            type = "string",
        },
        workflowBucketOwnerId = {
            type = "string",
        },
        containerRegistryMap = M.ContainerRegistryMap,
        readme = {
            type = "string",
        },
        definitionRepositoryDetails = M.DefinitionRepositoryDetails,
        readmePath = {
            type = "string",
        },
    },
}

M.ImportReadSetFilter = {
    type = "structure",
    members = {
        status = {
            type = "string",
        },
        createdAfter = {
            type = "timestamp",
            traits = {
                timestamp_format = "date-time",
            },
        },
        createdBefore = {
            type = "timestamp",
            traits = {
                timestamp_format = "date-time",
            },
        },
    },
}

M.ImportReadSetJobItem = {
    type = "structure",
    members = {
        id = {
            type = "string",
            traits = {
                required = true,
            },
        },
        sequenceStoreId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        roleArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        status = {
            type = "string",
            traits = {
                required = true,
            },
        },
        creationTime = {
            type = "timestamp",
            traits = {
                required = true,
                timestamp_format = "date-time",
            },
        },
        completionTime = {
            type = "timestamp",
            traits = {
                timestamp_format = "date-time",
            },
        },
    },
}

M.ImportReferenceFilter = {
    type = "structure",
    members = {
        status = {
            type = "string",
        },
        createdAfter = {
            type = "timestamp",
            traits = {
                timestamp_format = "date-time",
            },
        },
        createdBefore = {
            type = "timestamp",
            traits = {
                timestamp_format = "date-time",
            },
        },
    },
}

M.ImportReferenceJobItem = {
    type = "structure",
    members = {
        id = {
            type = "string",
            traits = {
                required = true,
            },
        },
        referenceStoreId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        roleArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        status = {
            type = "string",
            traits = {
                required = true,
            },
        },
        creationTime = {
            type = "timestamp",
            traits = {
                required = true,
                timestamp_format = "date-time",
            },
        },
        completionTime = {
            type = "timestamp",
            traits = {
                timestamp_format = "date-time",
            },
        },
    },
}

M.ListBatchInput = {
    type = "structure",
    members = {
        maxItems = {
            type = "integer",
            traits = {
                http_query = "maxItems",
            },
        },
        startingToken = {
            type = "string",
            traits = {
                http_query = "startingToken",
            },
        },
        status = {
            type = "string",
            traits = {
                http_query = "status",
            },
        },
        name = {
            type = "string",
            traits = {
                http_query = "name",
            },
        },
        runGroupId = {
            type = "string",
            traits = {
                http_query = "runGroupId",
            },
        },
    },
}

M.ListBatchOutput = {
    type = "structure",
    members = {
        items = {
            type = "list",
            member = M.BatchListItem,
        },
        nextToken = {
            type = "string",
        },
    },
}

M.ListMultipartReadSetUploadsInput = {
    type = "structure",
    members = {
        sequenceStoreId = {
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

M.MultipartReadSetUploadListItem = {
    type = "structure",
    members = {
        sequenceStoreId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        uploadId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        sourceFileType = {
            type = "string",
            traits = {
                required = true,
            },
        },
        subjectId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        sampleId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        generatedFrom = {
            type = "string",
            traits = {
                required = true,
            },
        },
        referenceArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        name = {
            type = "string",
        },
        description = {
            type = "string",
        },
        tags = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
        creationTime = {
            type = "timestamp",
            traits = {
                required = true,
                timestamp_format = "date-time",
            },
        },
    },
}

M.ListMultipartReadSetUploadsOutput = {
    type = "structure",
    members = {
        nextToken = {
            type = "string",
        },
        uploads = {
            type = "list",
            member = M.MultipartReadSetUploadListItem,
        },
    },
}

M.ListReadSetActivationJobsInput = {
    type = "structure",
    members = {
        sequenceStoreId = {
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
        filter = M.ActivateReadSetFilter,
    },
}

M.ListReadSetActivationJobsOutput = {
    type = "structure",
    members = {
        nextToken = {
            type = "string",
        },
        activationJobs = {
            type = "list",
            member = M.ActivateReadSetJobItem,
        },
    },
}

M.ListReadSetExportJobsInput = {
    type = "structure",
    members = {
        sequenceStoreId = {
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
        filter = M.ExportReadSetFilter,
    },
}

M.ListReadSetExportJobsOutput = {
    type = "structure",
    members = {
        nextToken = {
            type = "string",
        },
        exportJobs = {
            type = "list",
            member = M.ExportReadSetJobDetail,
        },
    },
}

M.ListReadSetImportJobsInput = {
    type = "structure",
    members = {
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
        sequenceStoreId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        filter = M.ImportReadSetFilter,
    },
}

M.ListReadSetImportJobsOutput = {
    type = "structure",
    members = {
        nextToken = {
            type = "string",
        },
        importJobs = {
            type = "list",
            member = M.ImportReadSetJobItem,
        },
    },
}

M.ReadSetFilter = {
    type = "structure",
    members = {
        name = {
            type = "string",
        },
        status = {
            type = "string",
        },
        referenceArn = {
            type = "string",
        },
        createdAfter = {
            type = "timestamp",
            traits = {
                timestamp_format = "date-time",
            },
        },
        createdBefore = {
            type = "timestamp",
            traits = {
                timestamp_format = "date-time",
            },
        },
        sampleId = {
            type = "string",
        },
        subjectId = {
            type = "string",
        },
        generatedFrom = {
            type = "string",
        },
        creationType = {
            type = "string",
        },
    },
}

M.ListReadSetsInput = {
    type = "structure",
    members = {
        sequenceStoreId = {
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
        filter = M.ReadSetFilter,
    },
}

M.ReadSetListItem = {
    type = "structure",
    members = {
        id = {
            type = "string",
            traits = {
                required = true,
            },
        },
        arn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        sequenceStoreId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        subjectId = {
            type = "string",
        },
        sampleId = {
            type = "string",
        },
        status = {
            type = "string",
            traits = {
                required = true,
            },
        },
        name = {
            type = "string",
        },
        description = {
            type = "string",
        },
        referenceArn = {
            type = "string",
        },
        fileType = {
            type = "string",
            traits = {
                required = true,
            },
        },
        sequenceInformation = M.SequenceInformation,
        creationTime = {
            type = "timestamp",
            traits = {
                required = true,
                timestamp_format = "date-time",
            },
        },
        statusMessage = {
            type = "string",
        },
        creationType = {
            type = "string",
        },
        etag = M.ETag,
    },
}

M.ListReadSetsOutput = {
    type = "structure",
    members = {
        nextToken = {
            type = "string",
        },
        readSets = {
            type = "list",
            member = M.ReadSetListItem,
            traits = {
                required = true,
            },
        },
    },
}

M.ReadSetUploadPartListFilter = {
    type = "structure",
    members = {
        createdAfter = {
            type = "timestamp",
            traits = {
                timestamp_format = "date-time",
            },
        },
        createdBefore = {
            type = "timestamp",
            traits = {
                timestamp_format = "date-time",
            },
        },
    },
}

M.ListReadSetUploadPartsInput = {
    type = "structure",
    members = {
        sequenceStoreId = {
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
        partSource = {
            type = "string",
            traits = {
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
        filter = M.ReadSetUploadPartListFilter,
    },
}

M.ReadSetUploadPartListItem = {
    type = "structure",
    members = {
        partNumber = {
            type = "integer",
            traits = {
                required = true,
            },
        },
        partSize = {
            type = "long",
            traits = {
                required = true,
            },
        },
        partSource = {
            type = "string",
            traits = {
                required = true,
            },
        },
        checksum = {
            type = "string",
            traits = {
                required = true,
            },
        },
        creationTime = {
            type = "timestamp",
            traits = {
                timestamp_format = "date-time",
            },
        },
        lastUpdatedTime = {
            type = "timestamp",
            traits = {
                timestamp_format = "date-time",
            },
        },
    },
}

M.ListReadSetUploadPartsOutput = {
    type = "structure",
    members = {
        nextToken = {
            type = "string",
        },
        parts = {
            type = "list",
            member = M.ReadSetUploadPartListItem,
        },
    },
}

M.ListReferenceImportJobsInput = {
    type = "structure",
    members = {
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
        referenceStoreId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        filter = M.ImportReferenceFilter,
    },
}

M.ListReferenceImportJobsOutput = {
    type = "structure",
    members = {
        nextToken = {
            type = "string",
        },
        importJobs = {
            type = "list",
            member = M.ImportReferenceJobItem,
        },
    },
}

M.ReferenceFilter = {
    type = "structure",
    members = {
        name = {
            type = "string",
        },
        md5 = {
            type = "string",
        },
        createdAfter = {
            type = "timestamp",
            traits = {
                timestamp_format = "date-time",
            },
        },
        createdBefore = {
            type = "timestamp",
            traits = {
                timestamp_format = "date-time",
            },
        },
    },
}

M.ListReferencesInput = {
    type = "structure",
    members = {
        referenceStoreId = {
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
        filter = M.ReferenceFilter,
    },
}

M.ReferenceListItem = {
    type = "structure",
    members = {
        id = {
            type = "string",
            traits = {
                required = true,
            },
        },
        arn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        referenceStoreId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        md5 = {
            type = "string",
            traits = {
                required = true,
            },
        },
        status = {
            type = "string",
        },
        name = {
            type = "string",
        },
        description = {
            type = "string",
        },
        creationTime = {
            type = "timestamp",
            traits = {
                required = true,
                timestamp_format = "date-time",
            },
        },
        updateTime = {
            type = "timestamp",
            traits = {
                required = true,
                timestamp_format = "date-time",
            },
        },
    },
}

M.ListReferencesOutput = {
    type = "structure",
    members = {
        nextToken = {
            type = "string",
        },
        references = {
            type = "list",
            member = M.ReferenceListItem,
            traits = {
                required = true,
            },
        },
    },
}

M.ReferenceStoreFilter = {
    type = "structure",
    members = {
        name = {
            type = "string",
        },
        createdAfter = {
            type = "timestamp",
            traits = {
                timestamp_format = "date-time",
            },
        },
        createdBefore = {
            type = "timestamp",
            traits = {
                timestamp_format = "date-time",
            },
        },
    },
}

M.ListReferenceStoresInput = {
    type = "structure",
    members = {
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
        filter = M.ReferenceStoreFilter,
    },
}

M.ReferenceStoreDetail = {
    type = "structure",
    members = {
        arn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        id = {
            type = "string",
            traits = {
                required = true,
            },
        },
        name = {
            type = "string",
        },
        description = {
            type = "string",
        },
        sseConfig = M.SseConfig,
        creationTime = {
            type = "timestamp",
            traits = {
                required = true,
                timestamp_format = "date-time",
            },
        },
    },
}

M.ListReferenceStoresOutput = {
    type = "structure",
    members = {
        nextToken = {
            type = "string",
        },
        referenceStores = {
            type = "list",
            member = M.ReferenceStoreDetail,
            traits = {
                required = true,
            },
        },
    },
}

M.ListRunCachesInput = {
    type = "structure",
    members = {
        maxResults = {
            type = "integer",
            traits = {
                http_query = "maxResults",
            },
        },
        startingToken = {
            type = "string",
            traits = {
                http_query = "startingToken",
            },
        },
    },
}

M.RunCacheListItem = {
    type = "structure",
    members = {
        arn = {
            type = "string",
        },
        cacheBehavior = {
            type = "string",
        },
        cacheS3Uri = {
            type = "string",
        },
        creationTime = {
            type = "timestamp",
            traits = {
                timestamp_format = "date-time",
            },
        },
        id = {
            type = "string",
        },
        name = {
            type = "string",
        },
        status = {
            type = "string",
        },
    },
}

M.ListRunCachesOutput = {
    type = "structure",
    members = {
        items = {
            type = "list",
            member = M.RunCacheListItem,
        },
        nextToken = {
            type = "string",
        },
    },
}

M.ListRunGroupsInput = {
    type = "structure",
    members = {
        name = {
            type = "string",
            traits = {
                http_query = "name",
            },
        },
        startingToken = {
            type = "string",
            traits = {
                http_query = "startingToken",
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

M.RunGroupListItem = {
    type = "structure",
    members = {
        arn = {
            type = "string",
        },
        id = {
            type = "string",
        },
        name = {
            type = "string",
        },
        maxCpus = {
            type = "integer",
        },
        maxRuns = {
            type = "integer",
        },
        maxDuration = {
            type = "integer",
        },
        creationTime = {
            type = "timestamp",
            traits = {
                timestamp_format = "date-time",
            },
        },
        maxGpus = {
            type = "integer",
        },
    },
}

M.ListRunGroupsOutput = {
    type = "structure",
    members = {
        items = {
            type = "list",
            member = M.RunGroupListItem,
        },
        nextToken = {
            type = "string",
        },
    },
}

M.ListRunsInput = {
    type = "structure",
    members = {
        name = {
            type = "string",
            traits = {
                http_query = "name",
            },
        },
        runGroupId = {
            type = "string",
            traits = {
                http_query = "runGroupId",
            },
        },
        batchId = {
            type = "string",
            traits = {
                http_query = "batchId",
            },
        },
        startingToken = {
            type = "string",
            traits = {
                http_query = "startingToken",
            },
        },
        maxResults = {
            type = "integer",
            traits = {
                http_query = "maxResults",
            },
        },
        status = {
            type = "string",
            traits = {
                http_query = "status",
            },
        },
    },
}

M.RunListItem = {
    type = "structure",
    members = {
        arn = {
            type = "string",
        },
        id = {
            type = "string",
        },
        status = {
            type = "string",
        },
        workflowId = {
            type = "string",
        },
        batchId = {
            type = "string",
        },
        name = {
            type = "string",
        },
        priority = {
            type = "integer",
        },
        storageCapacity = {
            type = "integer",
        },
        creationTime = {
            type = "timestamp",
            traits = {
                timestamp_format = "date-time",
            },
        },
        startTime = {
            type = "timestamp",
            traits = {
                timestamp_format = "date-time",
            },
        },
        stopTime = {
            type = "timestamp",
            traits = {
                timestamp_format = "date-time",
            },
        },
        storageType = {
            type = "string",
        },
        workflowVersionName = {
            type = "string",
        },
    },
}

M.ListRunsOutput = {
    type = "structure",
    members = {
        items = {
            type = "list",
            member = M.RunListItem,
        },
        nextToken = {
            type = "string",
        },
    },
}

M.SubmissionStatus = {
    SUCCESS = "SUCCESS",
    FAILED = "FAILED",
    CANCEL_SUCCESS = "CANCEL_SUCCESS",
    CANCEL_FAILED = "CANCEL_FAILED",
    DELETE_SUCCESS = "DELETE_SUCCESS",
    DELETE_FAILED = "DELETE_FAILED",
}

M.ListRunsInBatchInput = {
    type = "structure",
    members = {
        batchId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        maxItems = {
            type = "integer",
            traits = {
                http_query = "maxItems",
            },
        },
        startingToken = {
            type = "string",
            traits = {
                http_query = "startingToken",
            },
        },
        submissionStatus = {
            type = "string",
            traits = {
                http_query = "submissionStatus",
            },
        },
        runSettingId = {
            type = "string",
            traits = {
                http_query = "runSettingId",
            },
        },
        runId = {
            type = "string",
            traits = {
                http_query = "runId",
            },
        },
    },
}

M.RunBatchListItem = {
    type = "structure",
    members = {
        runSettingId = {
            type = "string",
        },
        runId = {
            type = "string",
        },
        runInternalUuid = {
            type = "string",
        },
        runArn = {
            type = "string",
        },
        submissionStatus = {
            type = "string",
        },
        submissionFailureReason = {
            type = "string",
        },
        submissionFailureMessage = {
            type = "string",
        },
    },
}

M.ListRunsInBatchOutput = {
    type = "structure",
    members = {
        runs = {
            type = "list",
            member = M.RunBatchListItem,
        },
        nextToken = {
            type = "string",
        },
    },
}

M.ListRunTasksInput = {
    type = "structure",
    members = {
        id = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        status = {
            type = "string",
            traits = {
                http_query = "status",
            },
        },
        startingToken = {
            type = "string",
            traits = {
                http_query = "startingToken",
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

M.TaskListItem = {
    type = "structure",
    members = {
        taskId = {
            type = "string",
        },
        status = {
            type = "string",
        },
        name = {
            type = "string",
        },
        cpus = {
            type = "integer",
        },
        cacheHit = {
            type = "boolean",
        },
        cacheS3Uri = {
            type = "string",
        },
        memory = {
            type = "integer",
        },
        creationTime = {
            type = "timestamp",
            traits = {
                timestamp_format = "date-time",
            },
        },
        startTime = {
            type = "timestamp",
            traits = {
                timestamp_format = "date-time",
            },
        },
        stopTime = {
            type = "timestamp",
            traits = {
                timestamp_format = "date-time",
            },
        },
        gpus = {
            type = "integer",
        },
        instanceType = {
            type = "string",
        },
    },
}

M.ListRunTasksOutput = {
    type = "structure",
    members = {
        items = {
            type = "list",
            member = M.TaskListItem,
        },
        nextToken = {
            type = "string",
        },
    },
}

M.SequenceStoreFilter = {
    type = "structure",
    members = {
        name = {
            type = "string",
        },
        createdAfter = {
            type = "timestamp",
            traits = {
                timestamp_format = "date-time",
            },
        },
        createdBefore = {
            type = "timestamp",
            traits = {
                timestamp_format = "date-time",
            },
        },
        status = {
            type = "string",
        },
        updatedAfter = {
            type = "timestamp",
            traits = {
                timestamp_format = "date-time",
            },
        },
        updatedBefore = {
            type = "timestamp",
            traits = {
                timestamp_format = "date-time",
            },
        },
    },
}

M.ListSequenceStoresInput = {
    type = "structure",
    members = {
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
        filter = M.SequenceStoreFilter,
    },
}

M.SequenceStoreDetail = {
    type = "structure",
    members = {
        arn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        id = {
            type = "string",
            traits = {
                required = true,
            },
        },
        name = {
            type = "string",
        },
        description = {
            type = "string",
        },
        sseConfig = M.SseConfig,
        creationTime = {
            type = "timestamp",
            traits = {
                required = true,
                timestamp_format = "date-time",
            },
        },
        fallbackLocation = {
            type = "string",
        },
        eTagAlgorithmFamily = {
            type = "string",
        },
        status = {
            type = "string",
        },
        statusMessage = {
            type = "string",
        },
        updateTime = {
            type = "timestamp",
            traits = {
                timestamp_format = "date-time",
            },
        },
    },
}

M.ListSequenceStoresOutput = {
    type = "structure",
    members = {
        nextToken = {
            type = "string",
        },
        sequenceStores = {
            type = "list",
            member = M.SequenceStoreDetail,
            traits = {
                required = true,
            },
        },
    },
}

M.ResourceOwner = {
    SELF = "SELF",
    OTHER = "OTHER",
}

M.ListSharesInput = {
    type = "structure",
    members = {
        resourceOwner = {
            type = "string",
            traits = {
                required = true,
            },
        },
        filter = M.Filter,
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

M.ListSharesOutput = {
    type = "structure",
    members = {
        shares = {
            type = "list",
            member = M.ShareDetails,
            traits = {
                required = true,
            },
        },
        nextToken = {
            type = "string",
        },
    },
}

M.ListTagsForResourceInput = {
    type = "structure",
    members = {
        resourceArn = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.ListTagsForResourceOutput = {
    type = "structure",
    members = {
        tags = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
            traits = {
                required = true,
            },
        },
    },
}

M.ListVariantImportJobsFilter = {
    type = "structure",
    members = {
        status = {
            type = "string",
        },
        storeName = {
            type = "string",
        },
    },
}

M.ListVariantImportJobsInput = {
    type = "structure",
    members = {
        maxResults = {
            type = "integer",
            traits = {
                http_query = "maxResults",
            },
        },
        ids = {
            type = "list",
            member = { type = "string" },
        },
        nextToken = {
            type = "string",
            traits = {
                http_query = "nextToken",
            },
        },
        filter = M.ListVariantImportJobsFilter,
    },
}

M.VariantImportJobItem = {
    type = "structure",
    members = {
        id = {
            type = "string",
            traits = {
                required = true,
            },
        },
        destinationName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        roleArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        status = {
            type = "string",
            traits = {
                required = true,
            },
        },
        creationTime = {
            type = "timestamp",
            traits = {
                required = true,
                timestamp_format = "date-time",
            },
        },
        updateTime = {
            type = "timestamp",
            traits = {
                required = true,
                timestamp_format = "date-time",
            },
        },
        completionTime = {
            type = "timestamp",
            traits = {
                timestamp_format = "date-time",
            },
        },
        runLeftNormalization = {
            type = "boolean",
            traits = {
                default = false,
            },
        },
        annotationFields = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
    },
}

M.ListVariantImportJobsOutput = {
    type = "structure",
    members = {
        variantImportJobs = {
            type = "list",
            member = M.VariantImportJobItem,
        },
        nextToken = {
            type = "string",
        },
    },
}

M.ListVariantStoresFilter = {
    type = "structure",
    members = {
        status = {
            type = "string",
        },
    },
}

M.ListVariantStoresInput = {
    type = "structure",
    members = {
        maxResults = {
            type = "integer",
            traits = {
                http_query = "maxResults",
            },
        },
        ids = {
            type = "list",
            member = { type = "string" },
        },
        nextToken = {
            type = "string",
            traits = {
                http_query = "nextToken",
            },
        },
        filter = M.ListVariantStoresFilter,
    },
}

M.VariantStoreItem = {
    type = "structure",
    members = {
        id = {
            type = "string",
            traits = {
                required = true,
            },
        },
        reference = setmetatable({ traits = {
            required = true,
        } }, { __index = M.ReferenceItem }),
        status = {
            type = "string",
            traits = {
                required = true,
            },
        },
        storeArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        name = {
            type = "string",
            traits = {
                required = true,
            },
        },
        description = {
            type = "string",
            traits = {
                required = true,
            },
        },
        sseConfig = setmetatable({ traits = {
            required = true,
        } }, { __index = M.SseConfig }),
        creationTime = {
            type = "timestamp",
            traits = {
                required = true,
                timestamp_format = "date-time",
            },
        },
        updateTime = {
            type = "timestamp",
            traits = {
                required = true,
                timestamp_format = "date-time",
            },
        },
        statusMessage = {
            type = "string",
            traits = {
                required = true,
            },
        },
        storeSizeBytes = {
            type = "long",
            traits = {
                required = true,
            },
        },
    },
}

M.ListVariantStoresOutput = {
    type = "structure",
    members = {
        variantStores = {
            type = "list",
            member = M.VariantStoreItem,
        },
        nextToken = {
            type = "string",
        },
    },
}

M.ListWorkflowsInput = {
    type = "structure",
    members = {
        type = {
            type = "string",
            traits = {
                http_query = "type",
            },
        },
        name = {
            type = "string",
            traits = {
                http_query = "name",
            },
        },
        startingToken = {
            type = "string",
            traits = {
                http_query = "startingToken",
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

M.WorkflowListItem = {
    type = "structure",
    members = {
        arn = {
            type = "string",
        },
        id = {
            type = "string",
        },
        name = {
            type = "string",
        },
        status = {
            type = "string",
        },
        type = {
            type = "string",
        },
        digest = {
            type = "string",
        },
        creationTime = {
            type = "timestamp",
            traits = {
                timestamp_format = "date-time",
            },
        },
        metadata = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
    },
}

M.ListWorkflowsOutput = {
    type = "structure",
    members = {
        items = {
            type = "list",
            member = M.WorkflowListItem,
        },
        nextToken = {
            type = "string",
        },
    },
}

M.ListWorkflowVersionsInput = {
    type = "structure",
    members = {
        workflowId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        type = {
            type = "string",
            traits = {
                http_query = "type",
            },
        },
        workflowOwnerId = {
            type = "string",
            traits = {
                http_query = "workflowOwnerId",
            },
        },
        startingToken = {
            type = "string",
            traits = {
                http_query = "startingToken",
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

M.WorkflowVersionListItem = {
    type = "structure",
    members = {
        arn = {
            type = "string",
        },
        workflowId = {
            type = "string",
        },
        versionName = {
            type = "string",
        },
        description = {
            type = "string",
        },
        status = {
            type = "string",
        },
        type = {
            type = "string",
        },
        digest = {
            type = "string",
        },
        creationTime = {
            type = "timestamp",
            traits = {
                timestamp_format = "date-time",
            },
        },
        metadata = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
    },
}

M.ListWorkflowVersionsOutput = {
    type = "structure",
    members = {
        items = {
            type = "list",
            member = M.WorkflowVersionListItem,
        },
        nextToken = {
            type = "string",
        },
    },
}

M.PutS3AccessPolicyInput = {
    type = "structure",
    members = {
        s3AccessPointArn = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        s3AccessPolicy = {
            type = "string",
            traits = {
                media_type = "application/json",
                required = true,
            },
        },
    },
}

M.PutS3AccessPolicyOutput = {
    type = "structure",
    members = {
        s3AccessPointArn = {
            type = "string",
        },
        storeId = {
            type = "string",
        },
        storeType = {
            type = "string",
        },
    },
}

M.StartReferenceImportJobSourceItem = {
    type = "structure",
    members = {
        sourceFile = {
            type = "string",
            traits = {
                required = true,
            },
        },
        name = {
            type = "string",
            traits = {
                required = true,
            },
        },
        description = {
            type = "string",
        },
        tags = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
    },
}

M.StartReferenceImportJobInput = {
    type = "structure",
    members = {
        referenceStoreId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        roleArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        clientToken = {
            type = "string",
        },
        sources = {
            type = "list",
            member = M.StartReferenceImportJobSourceItem,
            traits = {
                required = true,
            },
        },
    },
}

M.StartReferenceImportJobOutput = {
    type = "structure",
    members = {
        id = {
            type = "string",
            traits = {
                required = true,
            },
        },
        referenceStoreId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        roleArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        status = {
            type = "string",
            traits = {
                required = true,
            },
        },
        creationTime = {
            type = "timestamp",
            traits = {
                required = true,
                timestamp_format = "date-time",
            },
        },
    },
}

M.StartRunBatchInput = {
    type = "structure",
    members = {
        batchName = {
            type = "string",
        },
        requestId = {
            type = "string",
            traits = {
                idempotency_token = true,
                required = true,
            },
        },
        tags = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
        defaultRunSetting = setmetatable({ traits = {
            required = true,
        } }, { __index = M.DefaultRunSetting }),
        batchRunSettings = setmetatable({ traits = {
            required = true,
        } }, { __index = M.BatchRunSettings }),
    },
}

M.StartRunBatchOutput = {
    type = "structure",
    members = {
        id = {
            type = "string",
        },
        arn = {
            type = "string",
        },
        status = {
            type = "string",
        },
        uuid = {
            type = "string",
        },
        tags = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
    },
}

M.UpdateRunCacheInput = {
    type = "structure",
    members = {
        cacheBehavior = {
            type = "string",
        },
        description = {
            type = "string",
        },
        id = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        name = {
            type = "string",
        },
    },
}

M.UpdateRunCacheOutput = {
    type = "structure",
}

M.UpdateRunGroupInput = {
    type = "structure",
    members = {
        id = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        name = {
            type = "string",
        },
        maxCpus = {
            type = "integer",
        },
        maxRuns = {
            type = "integer",
        },
        maxDuration = {
            type = "integer",
        },
        maxGpus = {
            type = "integer",
        },
    },
}

M.UpdateRunGroupOutput = {
    type = "structure",
}

M.StartRunInput = {
    type = "structure",
    members = {
        workflowId = {
            type = "string",
        },
        workflowType = {
            type = "string",
        },
        runId = {
            type = "string",
        },
        roleArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        name = {
            type = "string",
        },
        cacheId = {
            type = "string",
        },
        cacheBehavior = {
            type = "string",
        },
        runGroupId = {
            type = "string",
        },
        priority = {
            type = "integer",
        },
        parameters = {
            type = "document",
        },
        storageCapacity = {
            type = "integer",
        },
        outputUri = {
            type = "string",
            traits = {
                required = true,
            },
        },
        logLevel = {
            type = "string",
        },
        tags = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
        requestId = {
            type = "string",
            traits = {
                idempotency_token = true,
                required = true,
            },
        },
        retentionMode = {
            type = "string",
        },
        storageType = {
            type = "string",
        },
        workflowOwnerId = {
            type = "string",
        },
        workflowVersionName = {
            type = "string",
        },
        networkingMode = {
            type = "string",
        },
        configurationName = {
            type = "string",
        },
    },
}

M.StartRunOutput = {
    type = "structure",
    members = {
        arn = {
            type = "string",
        },
        id = {
            type = "string",
        },
        status = {
            type = "string",
        },
        tags = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
        uuid = {
            type = "string",
        },
        runOutputUri = {
            type = "string",
        },
        configuration = M.ConfigurationDetails,
        networkingMode = {
            type = "string",
        },
    },
}

M.StartReadSetActivationJobSourceItem = {
    type = "structure",
    members = {
        readSetId = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.StartReadSetActivationJobInput = {
    type = "structure",
    members = {
        sequenceStoreId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        clientToken = {
            type = "string",
        },
        sources = {
            type = "list",
            member = M.StartReadSetActivationJobSourceItem,
            traits = {
                required = true,
            },
        },
    },
}

M.StartReadSetActivationJobOutput = {
    type = "structure",
    members = {
        id = {
            type = "string",
            traits = {
                required = true,
            },
        },
        sequenceStoreId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        status = {
            type = "string",
            traits = {
                required = true,
            },
        },
        creationTime = {
            type = "timestamp",
            traits = {
                required = true,
                timestamp_format = "date-time",
            },
        },
    },
}

M.StartReadSetExportJobInput = {
    type = "structure",
    members = {
        sequenceStoreId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        destination = {
            type = "string",
            traits = {
                required = true,
            },
        },
        roleArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        clientToken = {
            type = "string",
        },
        sources = {
            type = "list",
            member = M.ExportReadSet,
            traits = {
                required = true,
            },
        },
    },
}

M.StartReadSetExportJobOutput = {
    type = "structure",
    members = {
        id = {
            type = "string",
            traits = {
                required = true,
            },
        },
        sequenceStoreId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        destination = {
            type = "string",
            traits = {
                required = true,
            },
        },
        status = {
            type = "string",
            traits = {
                required = true,
            },
        },
        creationTime = {
            type = "timestamp",
            traits = {
                required = true,
                timestamp_format = "date-time",
            },
        },
    },
}

M.StartReadSetImportJobSourceItem = {
    type = "structure",
    members = {
        sourceFiles = setmetatable({ traits = {
            required = true,
        } }, { __index = M.SourceFiles }),
        sourceFileType = {
            type = "string",
            traits = {
                required = true,
            },
        },
        subjectId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        sampleId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        generatedFrom = {
            type = "string",
        },
        referenceArn = {
            type = "string",
        },
        name = {
            type = "string",
        },
        description = {
            type = "string",
        },
        tags = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
    },
}

M.StartReadSetImportJobInput = {
    type = "structure",
    members = {
        sequenceStoreId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        roleArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        clientToken = {
            type = "string",
        },
        sources = {
            type = "list",
            member = M.StartReadSetImportJobSourceItem,
            traits = {
                required = true,
            },
        },
    },
}

M.StartReadSetImportJobOutput = {
    type = "structure",
    members = {
        id = {
            type = "string",
            traits = {
                required = true,
            },
        },
        sequenceStoreId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        roleArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        status = {
            type = "string",
            traits = {
                required = true,
            },
        },
        creationTime = {
            type = "timestamp",
            traits = {
                required = true,
                timestamp_format = "date-time",
            },
        },
    },
}

M.UpdateSequenceStoreInput = {
    type = "structure",
    members = {
        id = {
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
        clientToken = {
            type = "string",
            traits = {
                idempotency_token = true,
            },
        },
        fallbackLocation = {
            type = "string",
        },
        propagatedSetLevelTags = {
            type = "list",
            member = { type = "string" },
        },
        s3AccessConfig = M.S3AccessConfig,
    },
}

M.UpdateSequenceStoreOutput = {
    type = "structure",
    members = {
        id = {
            type = "string",
            traits = {
                required = true,
            },
        },
        arn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        name = {
            type = "string",
        },
        description = {
            type = "string",
        },
        sseConfig = M.SseConfig,
        creationTime = {
            type = "timestamp",
            traits = {
                required = true,
                timestamp_format = "date-time",
            },
        },
        updateTime = {
            type = "timestamp",
            traits = {
                timestamp_format = "date-time",
            },
        },
        propagatedSetLevelTags = {
            type = "list",
            member = { type = "string" },
        },
        status = {
            type = "string",
        },
        statusMessage = {
            type = "string",
        },
        fallbackLocation = {
            type = "string",
        },
        s3Access = M.SequenceStoreS3Access,
        eTagAlgorithmFamily = {
            type = "string",
        },
    },
}

M.UploadReadSetPartInput = {
    type = "structure",
    members = {
        sequenceStoreId = {
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
        partSource = {
            type = "string",
            traits = {
                http_query = "partSource",
                required = true,
            },
        },
        partNumber = {
            type = "integer",
            traits = {
                http_query = "partNumber",
                required = true,
            },
        },
        payload = {
            type = "blob",
            traits = {
                http_payload = true,
                required = true,
            },
        },
    },
}

M.UploadReadSetPartOutput = {
    type = "structure",
    members = {
        checksum = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.TagResourceInput = {
    type = "structure",
    members = {
        resourceArn = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        tags = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
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
        resourceArn = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        tagKeys = {
            type = "list",
            member = { type = "string" },
            traits = {
                http_query = "tagKeys",
                required = true,
            },
        },
    },
}

M.UntagResourceOutput = {
    type = "structure",
}

M.VariantImportItemSource = {
    type = "structure",
    members = {
        source = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.StartVariantImportJobInput = {
    type = "structure",
    members = {
        destinationName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        roleArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        items = {
            type = "list",
            member = M.VariantImportItemSource,
            traits = {
                required = true,
            },
        },
        runLeftNormalization = {
            type = "boolean",
            traits = {
                default = false,
            },
        },
        annotationFields = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
    },
}

M.StartVariantImportJobOutput = {
    type = "structure",
    members = {
        jobId = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.UpdateVariantStoreInput = {
    type = "structure",
    members = {
        name = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        description = {
            type = "string",
        },
    },
}

M.UpdateVariantStoreOutput = {
    type = "structure",
    members = {
        id = {
            type = "string",
            traits = {
                required = true,
            },
        },
        reference = setmetatable({ traits = {
            required = true,
        } }, { __index = M.ReferenceItem }),
        status = {
            type = "string",
            traits = {
                required = true,
            },
        },
        name = {
            type = "string",
            traits = {
                required = true,
            },
        },
        description = {
            type = "string",
            traits = {
                required = true,
            },
        },
        creationTime = {
            type = "timestamp",
            traits = {
                required = true,
                timestamp_format = "date-time",
            },
        },
        updateTime = {
            type = "timestamp",
            traits = {
                required = true,
                timestamp_format = "date-time",
            },
        },
    },
}

M.UpdateWorkflowInput = {
    type = "structure",
    members = {
        id = {
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
        storageType = {
            type = "string",
        },
        storageCapacity = {
            type = "integer",
        },
        readmeMarkdown = {
            type = "string",
            traits = {
                media_type = "text/markdown",
            },
        },
    },
}

M.UpdateWorkflowOutput = {
    type = "structure",
}

M.UpdateWorkflowVersionInput = {
    type = "structure",
    members = {
        workflowId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        versionName = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        description = {
            type = "string",
        },
        storageType = {
            type = "string",
        },
        storageCapacity = {
            type = "integer",
        },
        readmeMarkdown = {
            type = "string",
            traits = {
                media_type = "text/markdown",
            },
        },
    },
}

M.UpdateWorkflowVersionOutput = {
    type = "structure",
}

return M
