local M = {}

M.Term = {
    type = "structure",
    members = {
        SourceText = {
            type = "string",
        },
        TargetText = {
            type = "string",
        },
    },
}

M.AppliedTerminology = {
    type = "structure",
    members = {
        Name = {
            type = "string",
        },
        Terms = {
            type = "list",
            member = M.Term,
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

M.ConflictException = {
    type = "structure",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.EncryptionKeyType = {
    KMS = "KMS",
}

M.EncryptionKey = {
    type = "structure",
    members = {
        Type = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Id = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.ParallelDataFormat = {
    TSV = "TSV",
    CSV = "CSV",
    TMX = "TMX",
}

M.ParallelDataConfig = {
    type = "structure",
    members = {
        S3Uri = {
            type = "string",
        },
        Format = {
            type = "string",
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

M.CreateParallelDataInput = {
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
        ParallelDataConfig = setmetatable({ traits = {
            required = true,
        } }, { __index = M.ParallelDataConfig }),
        EncryptionKey = M.EncryptionKey,
        ClientToken = {
            type = "string",
            traits = {
                idempotency_token = true,
                required = true,
            },
        },
        Tags = {
            type = "list",
            member = M.Tag,
        },
    },
}

M.ParallelDataStatus = {
    CREATING = "CREATING",
    UPDATING = "UPDATING",
    ACTIVE = "ACTIVE",
    DELETING = "DELETING",
    FAILED = "FAILED",
}

M.CreateParallelDataOutput = {
    type = "structure",
    members = {
        Name = {
            type = "string",
        },
        Status = {
            type = "string",
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

M.InvalidParameterValueException = {
    type = "structure",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.InvalidRequestException = {
    type = "structure",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.LimitExceededException = {
    type = "structure",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.TooManyRequestsException = {
    type = "structure",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.TooManyTagsException = {
    type = "structure",
    error = "client",
    members = {
        message = {
            type = "string",
        },
        ResourceArn = {
            type = "string",
        },
    },
}

M.DeleteParallelDataInput = {
    type = "structure",
    members = {
        Name = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.DeleteParallelDataOutput = {
    type = "structure",
    members = {
        Name = {
            type = "string",
        },
        Status = {
            type = "string",
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

M.DeleteTerminologyInput = {
    type = "structure",
    members = {
        Name = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.DeleteTerminologyOutput = {
    type = "structure",
}

M.DescribeTextTranslationJobInput = {
    type = "structure",
    members = {
        JobId = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.InputDataConfig = {
    type = "structure",
    members = {
        S3Uri = {
            type = "string",
            traits = {
                required = true,
            },
        },
        ContentType = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.JobDetails = {
    type = "structure",
    members = {
        TranslatedDocumentsCount = {
            type = "integer",
        },
        DocumentsWithErrorsCount = {
            type = "integer",
        },
        InputDocumentsCount = {
            type = "integer",
        },
    },
}

M.JobStatus = {
    SUBMITTED = "SUBMITTED",
    IN_PROGRESS = "IN_PROGRESS",
    COMPLETED = "COMPLETED",
    COMPLETED_WITH_ERROR = "COMPLETED_WITH_ERROR",
    FAILED = "FAILED",
    STOP_REQUESTED = "STOP_REQUESTED",
    STOPPED = "STOPPED",
}

M.OutputDataConfig = {
    type = "structure",
    members = {
        S3Uri = {
            type = "string",
            traits = {
                required = true,
            },
        },
        EncryptionKey = M.EncryptionKey,
    },
}

M.Brevity = {
    ON = "ON",
}

M.Formality = {
    FORMAL = "FORMAL",
    INFORMAL = "INFORMAL",
}

M.Profanity = {
    MASK = "MASK",
}

M.TranslationSettings = {
    type = "structure",
    members = {
        Formality = {
            type = "string",
        },
        Profanity = {
            type = "string",
        },
        Brevity = {
            type = "string",
        },
    },
}

M.TextTranslationJobProperties = {
    type = "structure",
    members = {
        JobId = {
            type = "string",
        },
        JobName = {
            type = "string",
        },
        JobStatus = {
            type = "string",
        },
        JobDetails = M.JobDetails,
        SourceLanguageCode = {
            type = "string",
        },
        TargetLanguageCodes = {
            type = "list",
            member = { type = "string" },
        },
        TerminologyNames = {
            type = "list",
            member = { type = "string" },
        },
        ParallelDataNames = {
            type = "list",
            member = { type = "string" },
        },
        Message = {
            type = "string",
        },
        SubmittedTime = {
            type = "timestamp",
        },
        EndTime = {
            type = "timestamp",
        },
        InputDataConfig = M.InputDataConfig,
        OutputDataConfig = M.OutputDataConfig,
        DataAccessRoleArn = {
            type = "string",
        },
        Settings = M.TranslationSettings,
    },
}

M.DescribeTextTranslationJobOutput = {
    type = "structure",
    members = {
        TextTranslationJobProperties = M.TextTranslationJobProperties,
    },
}

M.GetParallelDataInput = {
    type = "structure",
    members = {
        Name = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.ParallelDataDataLocation = {
    type = "structure",
    members = {
        RepositoryType = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Location = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.ParallelDataProperties = {
    type = "structure",
    members = {
        Name = {
            type = "string",
        },
        Arn = {
            type = "string",
        },
        Description = {
            type = "string",
        },
        Status = {
            type = "string",
        },
        SourceLanguageCode = {
            type = "string",
        },
        TargetLanguageCodes = {
            type = "list",
            member = { type = "string" },
        },
        ParallelDataConfig = M.ParallelDataConfig,
        Message = {
            type = "string",
        },
        ImportedDataSize = {
            type = "long",
        },
        ImportedRecordCount = {
            type = "long",
        },
        FailedRecordCount = {
            type = "long",
        },
        SkippedRecordCount = {
            type = "long",
        },
        EncryptionKey = M.EncryptionKey,
        CreatedAt = {
            type = "timestamp",
        },
        LastUpdatedAt = {
            type = "timestamp",
        },
        LatestUpdateAttemptStatus = {
            type = "string",
        },
        LatestUpdateAttemptAt = {
            type = "timestamp",
        },
    },
}

M.GetParallelDataOutput = {
    type = "structure",
    members = {
        ParallelDataProperties = M.ParallelDataProperties,
        DataLocation = M.ParallelDataDataLocation,
        AuxiliaryDataLocation = M.ParallelDataDataLocation,
        LatestUpdateAttemptAuxiliaryDataLocation = M.ParallelDataDataLocation,
    },
}

M.TerminologyDataFormat = {
    CSV = "CSV",
    TMX = "TMX",
    TSV = "TSV",
}

M.GetTerminologyInput = {
    type = "structure",
    members = {
        Name = {
            type = "string",
            traits = {
                required = true,
            },
        },
        TerminologyDataFormat = {
            type = "string",
        },
    },
}

M.TerminologyDataLocation = {
    type = "structure",
    members = {
        RepositoryType = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Location = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.Directionality = {
    UNI = "UNI",
    MULTI = "MULTI",
}

M.TerminologyProperties = {
    type = "structure",
    members = {
        Name = {
            type = "string",
        },
        Description = {
            type = "string",
        },
        Arn = {
            type = "string",
        },
        SourceLanguageCode = {
            type = "string",
        },
        TargetLanguageCodes = {
            type = "list",
            member = { type = "string" },
        },
        EncryptionKey = M.EncryptionKey,
        SizeBytes = {
            type = "integer",
        },
        TermCount = {
            type = "integer",
        },
        CreatedAt = {
            type = "timestamp",
        },
        LastUpdatedAt = {
            type = "timestamp",
        },
        Directionality = {
            type = "string",
        },
        Message = {
            type = "string",
        },
        SkippedTermCount = {
            type = "integer",
        },
        Format = {
            type = "string",
        },
    },
}

M.GetTerminologyOutput = {
    type = "structure",
    members = {
        TerminologyProperties = M.TerminologyProperties,
        TerminologyDataLocation = M.TerminologyDataLocation,
        AuxiliaryDataLocation = M.TerminologyDataLocation,
    },
}

M.MergeStrategy = {
    OVERWRITE = "OVERWRITE",
}

M.TerminologyData = {
    type = "structure",
    members = {
        File = {
            type = "blob",
            traits = {
                required = true,
            },
        },
        Format = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Directionality = {
            type = "string",
        },
    },
}

M.ImportTerminologyInput = {
    type = "structure",
    members = {
        Name = {
            type = "string",
            traits = {
                required = true,
            },
        },
        MergeStrategy = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Description = {
            type = "string",
        },
        TerminologyData = setmetatable({ traits = {
            required = true,
        } }, { __index = M.TerminologyData }),
        EncryptionKey = M.EncryptionKey,
        Tags = {
            type = "list",
            member = M.Tag,
        },
    },
}

M.ImportTerminologyOutput = {
    type = "structure",
    members = {
        TerminologyProperties = M.TerminologyProperties,
        AuxiliaryDataLocation = M.TerminologyDataLocation,
    },
}

M.DisplayLanguageCode = {
    DE = "de",
    EN = "en",
    ES = "es",
    FR = "fr",
    IT = "it",
    JA = "ja",
    KO = "ko",
    PT = "pt",
    ZH = "zh",
    ZH_TW = "zh-TW",
}

M.ListLanguagesInput = {
    type = "structure",
    members = {
        DisplayLanguageCode = {
            type = "string",
        },
        NextToken = {
            type = "string",
        },
        MaxResults = {
            type = "integer",
        },
    },
}

M.Language = {
    type = "structure",
    members = {
        LanguageName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        LanguageCode = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.ListLanguagesOutput = {
    type = "structure",
    members = {
        Languages = {
            type = "list",
            member = M.Language,
        },
        DisplayLanguageCode = {
            type = "string",
        },
        NextToken = {
            type = "string",
        },
    },
}

M.UnsupportedDisplayLanguageCodeException = {
    type = "structure",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
        DisplayLanguageCode = {
            type = "string",
        },
    },
}

M.ListParallelDataInput = {
    type = "structure",
    members = {
        NextToken = {
            type = "string",
        },
        MaxResults = {
            type = "integer",
        },
    },
}

M.ListParallelDataOutput = {
    type = "structure",
    members = {
        ParallelDataPropertiesList = {
            type = "list",
            member = M.ParallelDataProperties,
        },
        NextToken = {
            type = "string",
        },
    },
}

M.ListTagsForResourceInput = {
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

M.ListTagsForResourceOutput = {
    type = "structure",
    members = {
        Tags = {
            type = "list",
            member = M.Tag,
        },
    },
}

M.ListTerminologiesInput = {
    type = "structure",
    members = {
        NextToken = {
            type = "string",
        },
        MaxResults = {
            type = "integer",
        },
    },
}

M.ListTerminologiesOutput = {
    type = "structure",
    members = {
        TerminologyPropertiesList = {
            type = "list",
            member = M.TerminologyProperties,
        },
        NextToken = {
            type = "string",
        },
    },
}

M.InvalidFilterException = {
    type = "structure",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.TextTranslationJobFilter = {
    type = "structure",
    members = {
        JobName = {
            type = "string",
        },
        JobStatus = {
            type = "string",
        },
        SubmittedBeforeTime = {
            type = "timestamp",
        },
        SubmittedAfterTime = {
            type = "timestamp",
        },
    },
}

M.ListTextTranslationJobsInput = {
    type = "structure",
    members = {
        Filter = M.TextTranslationJobFilter,
        NextToken = {
            type = "string",
        },
        MaxResults = {
            type = "integer",
        },
    },
}

M.ListTextTranslationJobsOutput = {
    type = "structure",
    members = {
        TextTranslationJobPropertiesList = {
            type = "list",
            member = M.TextTranslationJobProperties,
        },
        NextToken = {
            type = "string",
        },
    },
}

M.StartTextTranslationJobInput = {
    type = "structure",
    members = {
        JobName = {
            type = "string",
        },
        InputDataConfig = setmetatable({ traits = {
            required = true,
        } }, { __index = M.InputDataConfig }),
        OutputDataConfig = setmetatable({ traits = {
            required = true,
        } }, { __index = M.OutputDataConfig }),
        DataAccessRoleArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        SourceLanguageCode = {
            type = "string",
            traits = {
                required = true,
            },
        },
        TargetLanguageCodes = {
            type = "list",
            member = { type = "string" },
            traits = {
                required = true,
            },
        },
        TerminologyNames = {
            type = "list",
            member = { type = "string" },
        },
        ParallelDataNames = {
            type = "list",
            member = { type = "string" },
        },
        ClientToken = {
            type = "string",
            traits = {
                idempotency_token = true,
                required = true,
            },
        },
        Settings = M.TranslationSettings,
    },
}

M.StartTextTranslationJobOutput = {
    type = "structure",
    members = {
        JobId = {
            type = "string",
        },
        JobStatus = {
            type = "string",
        },
    },
}

M.UnsupportedLanguagePairException = {
    type = "structure",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
        SourceLanguageCode = {
            type = "string",
        },
        TargetLanguageCode = {
            type = "string",
        },
    },
}

M.StopTextTranslationJobInput = {
    type = "structure",
    members = {
        JobId = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.StopTextTranslationJobOutput = {
    type = "structure",
    members = {
        JobId = {
            type = "string",
        },
        JobStatus = {
            type = "string",
        },
    },
}

M.TagResourceInput = {
    type = "structure",
    members = {
        ResourceArn = {
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
}

M.ServiceUnavailableException = {
    type = "structure",
    error = "server",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.Document = {
    type = "structure",
    members = {
        Content = {
            type = "blob",
            traits = {
                required = true,
            },
        },
        ContentType = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.TranslateDocumentInput = {
    type = "structure",
    members = {
        Document = setmetatable({ traits = {
            required = true,
        } }, { __index = M.Document }),
        TerminologyNames = {
            type = "list",
            member = { type = "string" },
        },
        SourceLanguageCode = {
            type = "string",
            traits = {
                required = true,
            },
        },
        TargetLanguageCode = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Settings = M.TranslationSettings,
    },
}

M.TranslatedDocument = {
    type = "structure",
    members = {
        Content = {
            type = "blob",
            traits = {
                required = true,
            },
        },
    },
}

M.TranslateDocumentOutput = {
    type = "structure",
    members = {
        TranslatedDocument = setmetatable({ traits = {
            required = true,
        } }, { __index = M.TranslatedDocument }),
        SourceLanguageCode = {
            type = "string",
            traits = {
                required = true,
            },
        },
        TargetLanguageCode = {
            type = "string",
            traits = {
                required = true,
            },
        },
        AppliedTerminologies = {
            type = "list",
            member = M.AppliedTerminology,
        },
        AppliedSettings = M.TranslationSettings,
    },
}

M.DetectedLanguageLowConfidenceException = {
    type = "structure",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
        DetectedLanguageCode = {
            type = "string",
        },
    },
}

M.TextSizeLimitExceededException = {
    type = "structure",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.TranslateTextInput = {
    type = "structure",
    members = {
        Text = {
            type = "string",
            traits = {
                required = true,
            },
        },
        TerminologyNames = {
            type = "list",
            member = { type = "string" },
        },
        SourceLanguageCode = {
            type = "string",
            traits = {
                required = true,
            },
        },
        TargetLanguageCode = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Settings = M.TranslationSettings,
    },
}

M.TranslateTextOutput = {
    type = "structure",
    members = {
        TranslatedText = {
            type = "string",
            traits = {
                required = true,
            },
        },
        SourceLanguageCode = {
            type = "string",
            traits = {
                required = true,
            },
        },
        TargetLanguageCode = {
            type = "string",
            traits = {
                required = true,
            },
        },
        AppliedTerminologies = {
            type = "list",
            member = M.AppliedTerminology,
        },
        AppliedSettings = M.TranslationSettings,
    },
}

M.UntagResourceInput = {
    type = "structure",
    members = {
        ResourceArn = {
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
}

M.UpdateParallelDataInput = {
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
        ParallelDataConfig = setmetatable({ traits = {
            required = true,
        } }, { __index = M.ParallelDataConfig }),
        ClientToken = {
            type = "string",
            traits = {
                idempotency_token = true,
                required = true,
            },
        },
    },
}

M.UpdateParallelDataOutput = {
    type = "structure",
    members = {
        Name = {
            type = "string",
        },
        Status = {
            type = "string",
        },
        LatestUpdateAttemptStatus = {
            type = "string",
        },
        LatestUpdateAttemptAt = {
            type = "timestamp",
        },
    },
}

return M
