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

M.GetBlueprintOptimizationStatusInput = {
    type = "structure",
    members = {
        invocationArn = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.S3Object = {
    type = "structure",
    members = {
        s3Uri = {
            type = "string",
            traits = {
                required = true,
            },
        },
        version = {
            type = "string",
        },
    },
}

M.BlueprintOptimizationOutputConfiguration = {
    type = "structure",
    members = {
        s3Object = setmetatable({ traits = {
            required = true,
        } }, { __index = M.S3Object }),
    },
}

M.BlueprintOptimizationJobStatus = {
    CREATED = "Created",
    IN_PROGRESS = "InProgress",
    SUCCESS = "Success",
    SERVICE_ERROR = "ServiceError",
    CLIENT_ERROR = "ClientError",
}

M.GetBlueprintOptimizationStatusOutput = {
    type = "structure",
    members = {
        status = {
            type = "string",
        },
        errorType = {
            type = "string",
        },
        errorMessage = {
            type = "string",
        },
        outputConfiguration = M.BlueprintOptimizationOutputConfiguration,
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
    },
}

M.ThrottlingException = {
    type = "structure",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.ValidationExceptionField = {
    type = "structure",
    members = {
        name = {
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

M.ValidationException = {
    type = "structure",
    error = "client",
    members = {
        message = {
            type = "string",
        },
        fieldList = {
            type = "list",
            member = M.ValidationExceptionField,
        },
    },
}

M.BlueprintStage = {
    DEVELOPMENT = "DEVELOPMENT",
    LIVE = "LIVE",
}

M.BlueprintOptimizationObject = {
    type = "structure",
    members = {
        blueprintArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        stage = {
            type = "string",
        },
    },
}

M.EncryptionConfiguration = {
    type = "structure",
    members = {
        kmsKeyId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        kmsEncryptionContext = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
    },
}

M.BlueprintOptimizationSample = {
    type = "structure",
    members = {
        assetS3Object = setmetatable({ traits = {
            required = true,
        } }, { __index = M.S3Object }),
        groundTruthS3Object = setmetatable({ traits = {
            required = true,
        } }, { __index = M.S3Object }),
    },
}

M.Tag = {
    type = "structure",
    members = {
        key = {
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

M.InvokeBlueprintOptimizationAsyncInput = {
    type = "structure",
    members = {
        blueprint = setmetatable({ traits = {
            required = true,
        } }, { __index = M.BlueprintOptimizationObject }),
        samples = {
            type = "list",
            member = M.BlueprintOptimizationSample,
            traits = {
                required = true,
            },
        },
        outputConfiguration = setmetatable({ traits = {
            required = true,
        } }, { __index = M.BlueprintOptimizationOutputConfiguration }),
        dataAutomationProfileArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        encryptionConfiguration = M.EncryptionConfiguration,
        tags = {
            type = "list",
            member = M.Tag,
        },
    },
}

M.InvokeBlueprintOptimizationAsyncOutput = {
    type = "structure",
    members = {
        invocationArn = {
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
    },
}

M.Type = {
    DOCUMENT = "DOCUMENT",
    IMAGE = "IMAGE",
    AUDIO = "AUDIO",
    VIDEO = "VIDEO",
}

M.CreateBlueprintInput = {
    type = "structure",
    members = {
        blueprintName = {
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
        blueprintStage = {
            type = "string",
        },
        schema = {
            type = "string",
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
        encryptionConfiguration = M.EncryptionConfiguration,
        tags = {
            type = "list",
            member = M.Tag,
        },
    },
}

M.Blueprint = {
    type = "structure",
    members = {
        blueprintArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        schema = {
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
        creationTime = {
            type = "timestamp",
            traits = {
                required = true,
                timestamp_format = "date-time",
            },
        },
        lastModifiedTime = {
            type = "timestamp",
            traits = {
                required = true,
                timestamp_format = "date-time",
            },
        },
        blueprintName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        blueprintVersion = {
            type = "string",
        },
        blueprintStage = {
            type = "string",
        },
        kmsKeyId = {
            type = "string",
        },
        kmsEncryptionContext = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
        optimizationSamples = {
            type = "list",
            member = M.BlueprintOptimizationSample,
        },
        optimizationTime = {
            type = "timestamp",
            traits = {
                timestamp_format = "date-time",
            },
        },
    },
}

M.CreateBlueprintOutput = {
    type = "structure",
    members = {
        blueprint = setmetatable({ traits = {
            required = true,
        } }, { __index = M.Blueprint }),
    },
}

M.DeleteBlueprintInput = {
    type = "structure",
    members = {
        blueprintArn = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        blueprintVersion = {
            type = "string",
            traits = {
                http_query = "blueprintVersion",
            },
        },
    },
}

M.DeleteBlueprintOutput = {
    type = "structure",
}

M.GetBlueprintInput = {
    type = "structure",
    members = {
        blueprintArn = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        blueprintVersion = {
            type = "string",
        },
        blueprintStage = {
            type = "string",
        },
    },
}

M.GetBlueprintOutput = {
    type = "structure",
    members = {
        blueprint = setmetatable({ traits = {
            required = true,
        } }, { __index = M.Blueprint }),
    },
}

M.BlueprintStageFilter = {
    DEVELOPMENT = "DEVELOPMENT",
    LIVE = "LIVE",
    ALL = "ALL",
}

M.DataAutomationProjectStage = {
    DEVELOPMENT = "DEVELOPMENT",
    LIVE = "LIVE",
}

M.DataAutomationProjectFilter = {
    type = "structure",
    members = {
        projectArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        projectStage = {
            type = "string",
        },
    },
}

M.ResourceOwner = {
    SERVICE = "SERVICE",
    ACCOUNT = "ACCOUNT",
}

M.ListBlueprintsInput = {
    type = "structure",
    members = {
        blueprintArn = {
            type = "string",
        },
        resourceOwner = {
            type = "string",
        },
        blueprintStageFilter = {
            type = "string",
        },
        maxResults = {
            type = "integer",
        },
        nextToken = {
            type = "string",
        },
        projectFilter = M.DataAutomationProjectFilter,
    },
}

M.BlueprintSummary = {
    type = "structure",
    members = {
        blueprintArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        blueprintVersion = {
            type = "string",
        },
        blueprintStage = {
            type = "string",
        },
        blueprintName = {
            type = "string",
        },
        creationTime = {
            type = "timestamp",
            traits = {
                required = true,
                timestamp_format = "date-time",
            },
        },
        lastModifiedTime = {
            type = "timestamp",
            traits = {
                timestamp_format = "date-time",
            },
        },
    },
}

M.ListBlueprintsOutput = {
    type = "structure",
    members = {
        blueprints = {
            type = "list",
            member = M.BlueprintSummary,
            traits = {
                required = true,
            },
        },
        nextToken = {
            type = "string",
        },
    },
}

M.UpdateBlueprintInput = {
    type = "structure",
    members = {
        blueprintArn = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        schema = {
            type = "string",
            traits = {
                required = true,
            },
        },
        blueprintStage = {
            type = "string",
        },
        encryptionConfiguration = M.EncryptionConfiguration,
    },
}

M.UpdateBlueprintOutput = {
    type = "structure",
    members = {
        blueprint = setmetatable({ traits = {
            required = true,
        } }, { __index = M.Blueprint }),
    },
}

M.CopyBlueprintStageInput = {
    type = "structure",
    members = {
        blueprintArn = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        sourceStage = {
            type = "string",
            traits = {
                required = true,
            },
        },
        targetStage = {
            type = "string",
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

M.CopyBlueprintStageOutput = {
    type = "structure",
}

M.CreateBlueprintVersionInput = {
    type = "structure",
    members = {
        blueprintArn = {
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

M.CreateBlueprintVersionOutput = {
    type = "structure",
    members = {
        blueprint = setmetatable({ traits = {
            required = true,
        } }, { __index = M.Blueprint }),
    },
}

M.GetDataAutomationLibraryIngestionJobInput = {
    type = "structure",
    members = {
        libraryArn = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        jobArn = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.EntityType = {
    VOCABULARY = "VOCABULARY",
}

M.LibraryIngestionJobStatus = {
    IN_PROGRESS = "IN_PROGRESS",
    COMPLETED = "COMPLETED",
    COMPLETED_WITH_ERRORS = "COMPLETED_WITH_ERRORS",
    FAILED = "FAILED",
}

M.LibraryIngestionJobOperationType = {
    UPSERT = "UPSERT",
    DELETE = "DELETE",
}

M.OutputConfiguration = {
    type = "structure",
    members = {
        s3Uri = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.DataAutomationLibraryIngestionJob = {
    type = "structure",
    members = {
        jobArn = {
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
        entityType = {
            type = "string",
            traits = {
                required = true,
            },
        },
        operationType = {
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
        outputConfiguration = setmetatable({ traits = {
            required = true,
        } }, { __index = M.OutputConfiguration }),
        completionTime = {
            type = "timestamp",
            traits = {
                timestamp_format = "date-time",
            },
        },
        errorMessage = {
            type = "string",
        },
        errorType = {
            type = "string",
        },
    },
}

M.GetDataAutomationLibraryIngestionJobOutput = {
    type = "structure",
    members = {
        job = M.DataAutomationLibraryIngestionJob,
    },
}

M.DeleteEntitiesInfo = {
    type = "structure",
    members = {
        entityIds = {
            type = "list",
            member = { type = "string" },
            traits = {
                required = true,
            },
        },
    },
}

M.Language = {
    EN = "EN",
    DE = "DE",
    ES = "ES",
    FR = "FR",
    IT = "IT",
    PT = "PT",
    JA = "JA",
    KO = "KO",
    CN = "CN",
    TW = "TW",
    HK = "HK",
}

M.Phrase = {
    type = "structure",
    members = {
        text = {
            type = "string",
            traits = {
                required = true,
            },
        },
        displayAsText = {
            type = "string",
        },
    },
}

M.VocabularyEntityInfo = {
    type = "structure",
    members = {
        entityId = {
            type = "string",
        },
        description = {
            type = "string",
        },
        language = {
            type = "string",
            traits = {
                required = true,
            },
        },
        phrases = {
            type = "list",
            member = M.Phrase,
            traits = {
                required = true,
            },
        },
    },
}

M.UpsertEntityInfo = {
    type = "union",
    members = {
        vocabulary = M.VocabularyEntityInfo,
    },
}

M.InlinePayload = {
    type = "union",
    members = {
        upsertEntitiesInfo = {
            type = "list",
            member = M.UpsertEntityInfo,
        },
        deleteEntitiesInfo = M.DeleteEntitiesInfo,
    },
}

M.InputConfiguration = {
    type = "structure",
    members = {
        s3Object = M.S3Object,
        inlinePayload = M.InlinePayload,
    },
}

M.EventBridgeConfiguration = {
    type = "structure",
    members = {
        eventBridgeEnabled = {
            type = "boolean",
            traits = {
                required = true,
            },
        },
    },
}

M.NotificationConfiguration = {
    type = "structure",
    members = {
        eventBridgeConfiguration = setmetatable({ traits = {
            required = true,
        } }, { __index = M.EventBridgeConfiguration }),
    },
}

M.InvokeDataAutomationLibraryIngestionJobInput = {
    type = "structure",
    members = {
        libraryArn = {
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
        inputConfiguration = setmetatable({ traits = {
            required = true,
        } }, { __index = M.InputConfiguration }),
        entityType = {
            type = "string",
            traits = {
                required = true,
            },
        },
        operationType = {
            type = "string",
            traits = {
                required = true,
            },
        },
        outputConfiguration = setmetatable({ traits = {
            required = true,
        } }, { __index = M.OutputConfiguration }),
        notificationConfiguration = M.NotificationConfiguration,
        tags = {
            type = "list",
            member = M.Tag,
        },
    },
}

M.InvokeDataAutomationLibraryIngestionJobOutput = {
    type = "structure",
    members = {
        jobArn = {
            type = "string",
        },
    },
}

M.ListDataAutomationLibraryIngestionJobsInput = {
    type = "structure",
    members = {
        libraryArn = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        maxResults = {
            type = "integer",
        },
        nextToken = {
            type = "string",
        },
    },
}

M.DataAutomationLibraryIngestionJobSummary = {
    type = "structure",
    members = {
        jobArn = {
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
        entityType = {
            type = "string",
            traits = {
                required = true,
            },
        },
        operationType = {
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

M.ListDataAutomationLibraryIngestionJobsOutput = {
    type = "structure",
    members = {
        jobs = {
            type = "list",
            member = M.DataAutomationLibraryIngestionJobSummary,
        },
        nextToken = {
            type = "string",
        },
    },
}

M.CreateDataAutomationLibraryInput = {
    type = "structure",
    members = {
        libraryName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        libraryDescription = {
            type = "string",
        },
        clientToken = {
            type = "string",
            traits = {
                idempotency_token = true,
            },
        },
        encryptionConfiguration = M.EncryptionConfiguration,
        tags = {
            type = "list",
            member = M.Tag,
        },
    },
}

M.DataAutomationLibraryStatus = {
    ACTIVE = "ACTIVE",
    DELETING = "DELETING",
}

M.CreateDataAutomationLibraryOutput = {
    type = "structure",
    members = {
        libraryArn = {
            type = "string",
        },
        status = {
            type = "string",
        },
    },
}

M.DeleteDataAutomationLibraryInput = {
    type = "structure",
    members = {
        libraryArn = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.DeleteDataAutomationLibraryOutput = {
    type = "structure",
    members = {
        libraryArn = {
            type = "string",
        },
        status = {
            type = "string",
        },
    },
}

M.GetDataAutomationLibraryInput = {
    type = "structure",
    members = {
        libraryArn = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.EntityTypeInfo = {
    type = "structure",
    members = {
        entityType = {
            type = "string",
            traits = {
                required = true,
            },
        },
        entityMetadata = {
            type = "string",
        },
    },
}

M.DataAutomationLibrary = {
    type = "structure",
    members = {
        libraryArn = {
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
        libraryName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        libraryDescription = {
            type = "string",
        },
        status = {
            type = "string",
            traits = {
                required = true,
            },
        },
        entityTypes = {
            type = "list",
            member = M.EntityTypeInfo,
        },
        kmsKeyId = {
            type = "string",
        },
        kmsEncryptionContext = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
    },
}

M.GetDataAutomationLibraryOutput = {
    type = "structure",
    members = {
        library = M.DataAutomationLibrary,
    },
}

M.ListDataAutomationLibrariesInput = {
    type = "structure",
    members = {
        maxResults = {
            type = "integer",
        },
        nextToken = {
            type = "string",
        },
        projectFilter = M.DataAutomationProjectFilter,
    },
}

M.DataAutomationLibrarySummary = {
    type = "structure",
    members = {
        libraryArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        libraryName = {
            type = "string",
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

M.ListDataAutomationLibrariesOutput = {
    type = "structure",
    members = {
        libraries = {
            type = "list",
            member = M.DataAutomationLibrarySummary,
        },
        nextToken = {
            type = "string",
        },
    },
}

M.UpdateDataAutomationLibraryInput = {
    type = "structure",
    members = {
        libraryArn = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        libraryDescription = {
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

M.UpdateDataAutomationLibraryOutput = {
    type = "structure",
    members = {
        libraryArn = {
            type = "string",
        },
        status = {
            type = "string",
        },
    },
}

M.BlueprintItem = {
    type = "structure",
    members = {
        blueprintArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        blueprintVersion = {
            type = "string",
        },
        blueprintStage = {
            type = "string",
        },
    },
}

M.CustomOutputConfiguration = {
    type = "structure",
    members = {
        blueprints = {
            type = "list",
            member = M.BlueprintItem,
        },
    },
}

M.DataAutomationLibraryItem = {
    type = "structure",
    members = {
        libraryArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.DataAutomationLibraryConfiguration = {
    type = "structure",
    members = {
        libraries = {
            type = "list",
            member = M.DataAutomationLibraryItem,
        },
    },
}

M.AudioGenerativeOutputLanguage = {
    DEFAULT = "DEFAULT",
    EN = "EN",
}

M.AudioLanguageConfiguration = {
    type = "structure",
    members = {
        inputLanguages = {
            type = "list",
            member = { type = "string" },
        },
        generativeOutputLanguage = {
            type = "string",
        },
        identifyMultipleLanguages = {
            type = "boolean",
        },
    },
}

M.State = {
    ENABLED = "ENABLED",
    DISABLED = "DISABLED",
}

M.ModalityProcessingConfiguration = {
    type = "structure",
    members = {
        state = {
            type = "string",
        },
    },
}

M.SensitiveDataDetectionMode = {
    DETECTION = "DETECTION",
    DETECTION_AND_REDACTION = "DETECTION_AND_REDACTION",
}

M.SensitiveDataDetectionScopeType = {
    STANDARD = "STANDARD",
    CUSTOM = "CUSTOM",
}

M.PIIEntityType = {
    ALL = "ALL",
    ADDRESS = "ADDRESS",
    AGE = "AGE",
    NAME = "NAME",
    EMAIL = "EMAIL",
    PHONE = "PHONE",
    USERNAME = "USERNAME",
    PASSWORD = "PASSWORD",
    DRIVER_ID = "DRIVER_ID",
    LICENSE_PLATE = "LICENSE_PLATE",
    VEHICLE_IDENTIFICATION_NUMBER = "VEHICLE_IDENTIFICATION_NUMBER",
    CREDIT_DEBIT_CARD_CVV = "CREDIT_DEBIT_CARD_CVV",
    CREDIT_DEBIT_CARD_EXPIRY = "CREDIT_DEBIT_CARD_EXPIRY",
    CREDIT_DEBIT_CARD_NUMBER = "CREDIT_DEBIT_CARD_NUMBER",
    PIN = "PIN",
    INTERNATIONAL_BANK_ACCOUNT_NUMBER = "INTERNATIONAL_BANK_ACCOUNT_NUMBER",
    SWIFT_CODE = "SWIFT_CODE",
    IP_ADDRESS = "IP_ADDRESS",
    MAC_ADDRESS = "MAC_ADDRESS",
    URL = "URL",
    AWS_ACCESS_KEY = "AWS_ACCESS_KEY",
    AWS_SECRET_KEY = "AWS_SECRET_KEY",
    US_BANK_ACCOUNT_NUMBER = "US_BANK_ACCOUNT_NUMBER",
    US_BANK_ROUTING_NUMBER = "US_BANK_ROUTING_NUMBER",
    US_INDIVIDUAL_TAX_IDENTIFICATION_NUMBER = "US_INDIVIDUAL_TAX_IDENTIFICATION_NUMBER",
    US_PASSPORT_NUMBER = "US_PASSPORT_NUMBER",
    US_SOCIAL_SECURITY_NUMBER = "US_SOCIAL_SECURITY_NUMBER",
    CA_HEALTH_NUMBER = "CA_HEALTH_NUMBER",
    CA_SOCIAL_INSURANCE_NUMBER = "CA_SOCIAL_INSURANCE_NUMBER",
    UK_NATIONAL_HEALTH_SERVICE_NUMBER = "UK_NATIONAL_HEALTH_SERVICE_NUMBER",
    UK_NATIONAL_INSURANCE_NUMBER = "UK_NATIONAL_INSURANCE_NUMBER",
    UK_UNIQUE_TAXPAYER_REFERENCE_NUMBER = "UK_UNIQUE_TAXPAYER_REFERENCE_NUMBER",
}

M.PIIRedactionMaskMode = {
    PII = "PII",
    ENTITY_TYPE = "ENTITY_TYPE",
}

M.PIIEntitiesConfiguration = {
    type = "structure",
    members = {
        piiEntityTypes = {
            type = "list",
            member = { type = "string" },
        },
        redactionMaskMode = {
            type = "string",
        },
    },
}

M.SensitiveDataConfiguration = {
    type = "structure",
    members = {
        detectionMode = {
            type = "string",
            traits = {
                required = true,
            },
        },
        detectionScope = {
            type = "list",
            member = { type = "string" },
        },
        piiEntitiesConfiguration = M.PIIEntitiesConfiguration,
    },
}

M.AudioOverrideConfiguration = {
    type = "structure",
    members = {
        modalityProcessing = M.ModalityProcessingConfiguration,
        languageConfiguration = M.AudioLanguageConfiguration,
        sensitiveDataConfiguration = M.SensitiveDataConfiguration,
    },
}

M.SplitterConfiguration = {
    type = "structure",
    members = {
        state = {
            type = "string",
        },
    },
}

M.DocumentOverrideConfiguration = {
    type = "structure",
    members = {
        splitter = M.SplitterConfiguration,
        modalityProcessing = M.ModalityProcessingConfiguration,
        sensitiveDataConfiguration = M.SensitiveDataConfiguration,
    },
}

M.ImageOverrideConfiguration = {
    type = "structure",
    members = {
        modalityProcessing = M.ModalityProcessingConfiguration,
        sensitiveDataConfiguration = M.SensitiveDataConfiguration,
    },
}

M.DesiredModality = {
    IMAGE = "IMAGE",
    DOCUMENT = "DOCUMENT",
    AUDIO = "AUDIO",
    VIDEO = "VIDEO",
}

M.ModalityRoutingConfiguration = {
    type = "structure",
    members = {
        jpeg = {
            type = "string",
        },
        png = {
            type = "string",
        },
        mp4 = {
            type = "string",
        },
        mov = {
            type = "string",
        },
    },
}

M.VideoOverrideConfiguration = {
    type = "structure",
    members = {
        modalityProcessing = M.ModalityProcessingConfiguration,
        sensitiveDataConfiguration = M.SensitiveDataConfiguration,
    },
}

M.OverrideConfiguration = {
    type = "structure",
    members = {
        document = M.DocumentOverrideConfiguration,
        image = M.ImageOverrideConfiguration,
        video = M.VideoOverrideConfiguration,
        audio = M.AudioOverrideConfiguration,
        modalityRouting = M.ModalityRoutingConfiguration,
    },
}

M.DataAutomationProjectType = {
    ASYNC = "ASYNC",
    SYNC = "SYNC",
}

M.ChannelLabelingConfiguration = {
    type = "structure",
    members = {
        state = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.SpeakerLabelingConfiguration = {
    type = "structure",
    members = {
        state = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.TranscriptConfiguration = {
    type = "structure",
    members = {
        speakerLabeling = M.SpeakerLabelingConfiguration,
        channelLabeling = M.ChannelLabelingConfiguration,
    },
}

M.AudioExtractionCategoryTypeConfiguration = {
    type = "structure",
    members = {
        transcript = M.TranscriptConfiguration,
    },
}

M.AudioExtractionCategoryType = {
    AUDIO_CONTENT_MODERATION = "AUDIO_CONTENT_MODERATION",
    TRANSCRIPT = "TRANSCRIPT",
    TOPIC_CONTENT_MODERATION = "TOPIC_CONTENT_MODERATION",
}

M.AudioExtractionCategory = {
    type = "structure",
    members = {
        state = {
            type = "string",
            traits = {
                required = true,
            },
        },
        types = {
            type = "list",
            member = { type = "string" },
        },
        typeConfiguration = M.AudioExtractionCategoryTypeConfiguration,
    },
}

M.AudioStandardExtraction = {
    type = "structure",
    members = {
        category = setmetatable({ traits = {
            required = true,
        } }, { __index = M.AudioExtractionCategory }),
    },
}

M.AudioStandardGenerativeFieldType = {
    AUDIO_SUMMARY = "AUDIO_SUMMARY",
    IAB = "IAB",
    TOPIC_SUMMARY = "TOPIC_SUMMARY",
}

M.AudioStandardGenerativeField = {
    type = "structure",
    members = {
        state = {
            type = "string",
            traits = {
                required = true,
            },
        },
        types = {
            type = "list",
            member = { type = "string" },
        },
    },
}

M.AudioStandardOutputConfiguration = {
    type = "structure",
    members = {
        extraction = M.AudioStandardExtraction,
        generativeField = M.AudioStandardGenerativeField,
    },
}

M.DocumentBoundingBox = {
    type = "structure",
    members = {
        state = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.DocumentExtractionGranularityType = {
    DOCUMENT = "DOCUMENT",
    PAGE = "PAGE",
    ELEMENT = "ELEMENT",
    WORD = "WORD",
    LINE = "LINE",
}

M.DocumentExtractionGranularity = {
    type = "structure",
    members = {
        types = {
            type = "list",
            member = { type = "string" },
        },
    },
}

M.DocumentStandardExtraction = {
    type = "structure",
    members = {
        granularity = setmetatable({ traits = {
            required = true,
        } }, { __index = M.DocumentExtractionGranularity }),
        boundingBox = setmetatable({ traits = {
            required = true,
        } }, { __index = M.DocumentBoundingBox }),
    },
}

M.DocumentStandardGenerativeField = {
    type = "structure",
    members = {
        state = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.DocumentOutputAdditionalFileFormat = {
    type = "structure",
    members = {
        state = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.DocumentOutputTextFormatType = {
    PLAIN_TEXT = "PLAIN_TEXT",
    MARKDOWN = "MARKDOWN",
    HTML = "HTML",
    CSV = "CSV",
}

M.DocumentOutputTextFormat = {
    type = "structure",
    members = {
        types = {
            type = "list",
            member = { type = "string" },
        },
    },
}

M.DocumentOutputFormat = {
    type = "structure",
    members = {
        textFormat = setmetatable({ traits = {
            required = true,
        } }, { __index = M.DocumentOutputTextFormat }),
        additionalFileFormat = setmetatable({ traits = {
            required = true,
        } }, { __index = M.DocumentOutputAdditionalFileFormat }),
    },
}

M.DocumentStandardOutputConfiguration = {
    type = "structure",
    members = {
        extraction = M.DocumentStandardExtraction,
        generativeField = M.DocumentStandardGenerativeField,
        outputFormat = M.DocumentOutputFormat,
    },
}

M.ImageBoundingBox = {
    type = "structure",
    members = {
        state = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.ImageExtractionCategoryType = {
    CONTENT_MODERATION = "CONTENT_MODERATION",
    TEXT_DETECTION = "TEXT_DETECTION",
    LOGOS = "LOGOS",
}

M.ImageExtractionCategory = {
    type = "structure",
    members = {
        state = {
            type = "string",
            traits = {
                required = true,
            },
        },
        types = {
            type = "list",
            member = { type = "string" },
        },
    },
}

M.ImageStandardExtraction = {
    type = "structure",
    members = {
        category = setmetatable({ traits = {
            required = true,
        } }, { __index = M.ImageExtractionCategory }),
        boundingBox = setmetatable({ traits = {
            required = true,
        } }, { __index = M.ImageBoundingBox }),
    },
}

M.ImageStandardGenerativeFieldType = {
    IMAGE_SUMMARY = "IMAGE_SUMMARY",
    IAB = "IAB",
}

M.ImageStandardGenerativeField = {
    type = "structure",
    members = {
        state = {
            type = "string",
            traits = {
                required = true,
            },
        },
        types = {
            type = "list",
            member = { type = "string" },
        },
    },
}

M.ImageStandardOutputConfiguration = {
    type = "structure",
    members = {
        extraction = M.ImageStandardExtraction,
        generativeField = M.ImageStandardGenerativeField,
    },
}

M.VideoBoundingBox = {
    type = "structure",
    members = {
        state = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.VideoExtractionCategoryType = {
    CONTENT_MODERATION = "CONTENT_MODERATION",
    TEXT_DETECTION = "TEXT_DETECTION",
    TRANSCRIPT = "TRANSCRIPT",
    LOGOS = "LOGOS",
}

M.VideoExtractionCategory = {
    type = "structure",
    members = {
        state = {
            type = "string",
            traits = {
                required = true,
            },
        },
        types = {
            type = "list",
            member = { type = "string" },
        },
    },
}

M.VideoStandardExtraction = {
    type = "structure",
    members = {
        category = setmetatable({ traits = {
            required = true,
        } }, { __index = M.VideoExtractionCategory }),
        boundingBox = setmetatable({ traits = {
            required = true,
        } }, { __index = M.VideoBoundingBox }),
    },
}

M.VideoStandardGenerativeFieldType = {
    VIDEO_SUMMARY = "VIDEO_SUMMARY",
    IAB = "IAB",
    CHAPTER_SUMMARY = "CHAPTER_SUMMARY",
}

M.VideoStandardGenerativeField = {
    type = "structure",
    members = {
        state = {
            type = "string",
            traits = {
                required = true,
            },
        },
        types = {
            type = "list",
            member = { type = "string" },
        },
    },
}

M.VideoStandardOutputConfiguration = {
    type = "structure",
    members = {
        extraction = M.VideoStandardExtraction,
        generativeField = M.VideoStandardGenerativeField,
    },
}

M.StandardOutputConfiguration = {
    type = "structure",
    members = {
        document = M.DocumentStandardOutputConfiguration,
        image = M.ImageStandardOutputConfiguration,
        video = M.VideoStandardOutputConfiguration,
        audio = M.AudioStandardOutputConfiguration,
    },
}

M.CreateDataAutomationProjectInput = {
    type = "structure",
    members = {
        projectName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        projectDescription = {
            type = "string",
        },
        projectStage = {
            type = "string",
        },
        projectType = {
            type = "string",
            traits = {
                default = "ASYNC",
            },
        },
        standardOutputConfiguration = setmetatable({ traits = {
            required = true,
        } }, { __index = M.StandardOutputConfiguration }),
        customOutputConfiguration = M.CustomOutputConfiguration,
        overrideConfiguration = M.OverrideConfiguration,
        dataAutomationLibraryConfiguration = M.DataAutomationLibraryConfiguration,
        clientToken = {
            type = "string",
            traits = {
                idempotency_token = true,
            },
        },
        encryptionConfiguration = M.EncryptionConfiguration,
        tags = {
            type = "list",
            member = M.Tag,
        },
    },
}

M.DataAutomationProjectStatus = {
    COMPLETED = "COMPLETED",
    IN_PROGRESS = "IN_PROGRESS",
    FAILED = "FAILED",
}

M.CreateDataAutomationProjectOutput = {
    type = "structure",
    members = {
        projectArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        projectStage = {
            type = "string",
        },
        status = {
            type = "string",
        },
    },
}

M.DeleteDataAutomationProjectInput = {
    type = "structure",
    members = {
        projectArn = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.DeleteDataAutomationProjectOutput = {
    type = "structure",
    members = {
        projectArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        status = {
            type = "string",
        },
    },
}

M.GetDataAutomationProjectInput = {
    type = "structure",
    members = {
        projectArn = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        projectStage = {
            type = "string",
        },
    },
}

M.DataAutomationProject = {
    type = "structure",
    members = {
        projectArn = {
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
        lastModifiedTime = {
            type = "timestamp",
            traits = {
                required = true,
                timestamp_format = "date-time",
            },
        },
        projectName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        projectStage = {
            type = "string",
        },
        projectType = {
            type = "string",
        },
        projectDescription = {
            type = "string",
        },
        standardOutputConfiguration = M.StandardOutputConfiguration,
        customOutputConfiguration = M.CustomOutputConfiguration,
        overrideConfiguration = M.OverrideConfiguration,
        dataAutomationLibraryConfiguration = M.DataAutomationLibraryConfiguration,
        status = {
            type = "string",
            traits = {
                required = true,
            },
        },
        kmsKeyId = {
            type = "string",
        },
        kmsEncryptionContext = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
    },
}

M.GetDataAutomationProjectOutput = {
    type = "structure",
    members = {
        project = setmetatable({ traits = {
            required = true,
        } }, { __index = M.DataAutomationProject }),
    },
}

M.BlueprintFilter = {
    type = "structure",
    members = {
        blueprintArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        blueprintVersion = {
            type = "string",
        },
        blueprintStage = {
            type = "string",
        },
    },
}

M.DataAutomationLibraryFilter = {
    type = "structure",
    members = {
        libraryArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.DataAutomationProjectStageFilter = {
    DEVELOPMENT = "DEVELOPMENT",
    LIVE = "LIVE",
    ALL = "ALL",
}

M.ListDataAutomationProjectsInput = {
    type = "structure",
    members = {
        maxResults = {
            type = "integer",
        },
        nextToken = {
            type = "string",
        },
        projectStageFilter = {
            type = "string",
        },
        blueprintFilter = M.BlueprintFilter,
        resourceOwner = {
            type = "string",
        },
        libraryFilter = M.DataAutomationLibraryFilter,
    },
}

M.DataAutomationProjectSummary = {
    type = "structure",
    members = {
        projectArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        projectStage = {
            type = "string",
        },
        projectType = {
            type = "string",
        },
        projectName = {
            type = "string",
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

M.ListDataAutomationProjectsOutput = {
    type = "structure",
    members = {
        projects = {
            type = "list",
            member = M.DataAutomationProjectSummary,
            traits = {
                required = true,
            },
        },
        nextToken = {
            type = "string",
        },
    },
}

M.UpdateDataAutomationProjectInput = {
    type = "structure",
    members = {
        projectArn = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        projectStage = {
            type = "string",
        },
        projectDescription = {
            type = "string",
        },
        standardOutputConfiguration = setmetatable({ traits = {
            required = true,
        } }, { __index = M.StandardOutputConfiguration }),
        customOutputConfiguration = M.CustomOutputConfiguration,
        overrideConfiguration = M.OverrideConfiguration,
        dataAutomationLibraryConfiguration = M.DataAutomationLibraryConfiguration,
        encryptionConfiguration = M.EncryptionConfiguration,
    },
}

M.UpdateDataAutomationProjectOutput = {
    type = "structure",
    members = {
        projectArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        projectStage = {
            type = "string",
        },
        status = {
            type = "string",
        },
    },
}

M.GetDataAutomationLibraryEntityInput = {
    type = "structure",
    members = {
        libraryArn = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        entityType = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        entityId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.VocabularyEntity = {
    type = "structure",
    members = {
        entityId = {
            type = "string",
        },
        description = {
            type = "string",
        },
        language = {
            type = "string",
        },
        phrases = {
            type = "list",
            member = M.Phrase,
        },
        lastModifiedTime = {
            type = "timestamp",
            traits = {
                timestamp_format = "date-time",
            },
        },
    },
}

M.EntityDetails = {
    type = "union",
    members = {
        vocabulary = M.VocabularyEntity,
    },
}

M.GetDataAutomationLibraryEntityOutput = {
    type = "structure",
    members = {
        entity = M.EntityDetails,
    },
}

M.ListDataAutomationLibraryEntitiesInput = {
    type = "structure",
    members = {
        libraryArn = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        entityType = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        maxResults = {
            type = "integer",
        },
        nextToken = {
            type = "string",
        },
    },
}

M.VocabularyEntitySummary = {
    type = "structure",
    members = {
        entityId = {
            type = "string",
        },
        description = {
            type = "string",
        },
        language = {
            type = "string",
        },
        numOfPhrases = {
            type = "integer",
        },
        lastModifiedTime = {
            type = "timestamp",
            traits = {
                timestamp_format = "date-time",
            },
        },
    },
}

M.DataAutomationLibraryEntitySummary = {
    type = "union",
    members = {
        vocabulary = M.VocabularyEntitySummary,
    },
}

M.ListDataAutomationLibraryEntitiesOutput = {
    type = "structure",
    members = {
        entities = {
            type = "list",
            member = M.DataAutomationLibraryEntitySummary,
        },
        nextToken = {
            type = "string",
        },
    },
}

M.ListTagsForResourceInput = {
    type = "structure",
    members = {
        resourceARN = {
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
        tags = {
            type = "list",
            member = M.Tag,
        },
    },
}

M.TagResourceInput = {
    type = "structure",
    members = {
        resourceARN = {
            type = "string",
            traits = {
                required = true,
            },
        },
        tags = {
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
}

M.UntagResourceInput = {
    type = "structure",
    members = {
        resourceARN = {
            type = "string",
            traits = {
                required = true,
            },
        },
        tagKeys = {
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
}

return M
