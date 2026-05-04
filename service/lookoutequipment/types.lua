local M = {}

M.AccessDeniedException = {
    type = "structure",
    error = "client",
    members = {
        Message = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.AutoPromotionResult = {
    MODEL_PROMOTED = "MODEL_PROMOTED",
    MODEL_NOT_PROMOTED = "MODEL_NOT_PROMOTED",
    RETRAINING_INTERNAL_ERROR = "RETRAINING_INTERNAL_ERROR",
    RETRAINING_CUSTOMER_ERROR = "RETRAINING_CUSTOMER_ERROR",
    RETRAINING_CANCELLED = "RETRAINING_CANCELLED",
}

M.ConflictException = {
    type = "structure",
    error = "client",
    members = {
        Message = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.DatasetSchema = {
    type = "structure",
    members = {
        InlineDataSchema = {
            type = "string",
            traits = {
                media_type = "application/json",
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

M.CreateDatasetInput = {
    type = "structure",
    members = {
        DatasetName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        DatasetSchema = M.DatasetSchema,
        ServerSideKmsKeyId = {
            type = "string",
        },
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

M.DatasetStatus = {
    CREATED = "CREATED",
    INGESTION_IN_PROGRESS = "INGESTION_IN_PROGRESS",
    ACTIVE = "ACTIVE",
    IMPORT_IN_PROGRESS = "IMPORT_IN_PROGRESS",
}

M.CreateDatasetOutput = {
    type = "structure",
    members = {
        DatasetName = {
            type = "string",
        },
        DatasetArn = {
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
        Message = {
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
        Message = {
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
        Message = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.InferenceInputNameConfiguration = {
    type = "structure",
    members = {
        TimestampFormat = {
            type = "string",
        },
        ComponentTimestampDelimiter = {
            type = "string",
        },
    },
}

M.InferenceS3InputConfiguration = {
    type = "structure",
    members = {
        Bucket = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Prefix = {
            type = "string",
        },
    },
}

M.InferenceInputConfiguration = {
    type = "structure",
    members = {
        S3InputConfiguration = M.InferenceS3InputConfiguration,
        InputTimeZoneOffset = {
            type = "string",
        },
        InferenceInputNameConfiguration = M.InferenceInputNameConfiguration,
    },
}

M.InferenceS3OutputConfiguration = {
    type = "structure",
    members = {
        Bucket = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Prefix = {
            type = "string",
        },
    },
}

M.InferenceOutputConfiguration = {
    type = "structure",
    members = {
        S3OutputConfiguration = setmetatable({ traits = {
            required = true,
        } }, { __index = M.InferenceS3OutputConfiguration }),
        KmsKeyId = {
            type = "string",
        },
    },
}

M.DataUploadFrequency = {
    PT5M = "PT5M",
    PT10M = "PT10M",
    PT15M = "PT15M",
    PT30M = "PT30M",
    PT1H = "PT1H",
}

M.CreateInferenceSchedulerInput = {
    type = "structure",
    members = {
        ModelName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        InferenceSchedulerName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        DataDelayOffsetInMinutes = {
            type = "long",
        },
        DataUploadFrequency = {
            type = "string",
            traits = {
                required = true,
            },
        },
        DataInputConfiguration = setmetatable({ traits = {
            required = true,
        } }, { __index = M.InferenceInputConfiguration }),
        DataOutputConfiguration = setmetatable({ traits = {
            required = true,
        } }, { __index = M.InferenceOutputConfiguration }),
        RoleArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        ServerSideKmsKeyId = {
            type = "string",
        },
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

M.ModelQuality = {
    QUALITY_THRESHOLD_MET = "QUALITY_THRESHOLD_MET",
    CANNOT_DETERMINE_QUALITY = "CANNOT_DETERMINE_QUALITY",
    POOR_QUALITY_DETECTED = "POOR_QUALITY_DETECTED",
}

M.InferenceSchedulerStatus = {
    PENDING = "PENDING",
    RUNNING = "RUNNING",
    STOPPING = "STOPPING",
    STOPPED = "STOPPED",
}

M.CreateInferenceSchedulerOutput = {
    type = "structure",
    members = {
        InferenceSchedulerArn = {
            type = "string",
        },
        InferenceSchedulerName = {
            type = "string",
        },
        Status = {
            type = "string",
        },
        ModelQuality = {
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
            traits = {
                required = true,
            },
        },
    },
}

M.LabelRating = {
    ANOMALY = "ANOMALY",
    NO_ANOMALY = "NO_ANOMALY",
    NEUTRAL = "NEUTRAL",
}

M.CreateLabelInput = {
    type = "structure",
    members = {
        LabelGroupName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        StartTime = {
            type = "timestamp",
            traits = {
                required = true,
            },
        },
        EndTime = {
            type = "timestamp",
            traits = {
                required = true,
            },
        },
        Rating = {
            type = "string",
            traits = {
                required = true,
            },
        },
        FaultCode = {
            type = "string",
        },
        Notes = {
            type = "string",
        },
        Equipment = {
            type = "string",
        },
        ClientToken = {
            type = "string",
            traits = {
                idempotency_token = true,
                required = true,
            },
        },
    },
}

M.CreateLabelOutput = {
    type = "structure",
    members = {
        LabelId = {
            type = "string",
        },
    },
}

M.CreateLabelGroupInput = {
    type = "structure",
    members = {
        LabelGroupName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        FaultCodes = {
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
        Tags = {
            type = "list",
            member = M.Tag,
        },
    },
}

M.CreateLabelGroupOutput = {
    type = "structure",
    members = {
        LabelGroupName = {
            type = "string",
        },
        LabelGroupArn = {
            type = "string",
        },
    },
}

M.TargetSamplingRate = {
    PT1S = "PT1S",
    PT5S = "PT5S",
    PT10S = "PT10S",
    PT15S = "PT15S",
    PT30S = "PT30S",
    PT1M = "PT1M",
    PT5M = "PT5M",
    PT10M = "PT10M",
    PT15M = "PT15M",
    PT30M = "PT30M",
    PT1H = "PT1H",
}

M.DataPreProcessingConfiguration = {
    type = "structure",
    members = {
        TargetSamplingRate = {
            type = "string",
        },
    },
}

M.LabelsS3InputConfiguration = {
    type = "structure",
    members = {
        Bucket = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Prefix = {
            type = "string",
        },
    },
}

M.LabelsInputConfiguration = {
    type = "structure",
    members = {
        S3InputConfiguration = M.LabelsS3InputConfiguration,
        LabelGroupName = {
            type = "string",
        },
    },
}

M.ModelDiagnosticsS3OutputConfiguration = {
    type = "structure",
    members = {
        Bucket = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Prefix = {
            type = "string",
        },
    },
}

M.ModelDiagnosticsOutputConfiguration = {
    type = "structure",
    members = {
        S3OutputConfiguration = setmetatable({ traits = {
            required = true,
        } }, { __index = M.ModelDiagnosticsS3OutputConfiguration }),
        KmsKeyId = {
            type = "string",
        },
    },
}

M.CreateModelInput = {
    type = "structure",
    members = {
        ModelName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        DatasetName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        DatasetSchema = M.DatasetSchema,
        LabelsInputConfiguration = M.LabelsInputConfiguration,
        ClientToken = {
            type = "string",
            traits = {
                idempotency_token = true,
                required = true,
            },
        },
        TrainingDataStartTime = {
            type = "timestamp",
        },
        TrainingDataEndTime = {
            type = "timestamp",
        },
        EvaluationDataStartTime = {
            type = "timestamp",
        },
        EvaluationDataEndTime = {
            type = "timestamp",
        },
        RoleArn = {
            type = "string",
        },
        DataPreProcessingConfiguration = M.DataPreProcessingConfiguration,
        ServerSideKmsKeyId = {
            type = "string",
        },
        Tags = {
            type = "list",
            member = M.Tag,
        },
        OffCondition = {
            type = "string",
        },
        ModelDiagnosticsOutputConfiguration = M.ModelDiagnosticsOutputConfiguration,
    },
}

M.ModelStatus = {
    IN_PROGRESS = "IN_PROGRESS",
    SUCCESS = "SUCCESS",
    FAILED = "FAILED",
    IMPORT_IN_PROGRESS = "IMPORT_IN_PROGRESS",
}

M.CreateModelOutput = {
    type = "structure",
    members = {
        ModelArn = {
            type = "string",
        },
        Status = {
            type = "string",
        },
    },
}

M.ModelPromoteMode = {
    MANAGED = "MANAGED",
    MANUAL = "MANUAL",
}

M.CreateRetrainingSchedulerInput = {
    type = "structure",
    members = {
        ModelName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        RetrainingStartDate = {
            type = "timestamp",
        },
        RetrainingFrequency = {
            type = "string",
            traits = {
                required = true,
            },
        },
        LookbackWindow = {
            type = "string",
            traits = {
                required = true,
            },
        },
        PromoteMode = {
            type = "string",
        },
        ClientToken = {
            type = "string",
            traits = {
                idempotency_token = true,
                required = true,
            },
        },
    },
}

M.RetrainingSchedulerStatus = {
    PENDING = "PENDING",
    RUNNING = "RUNNING",
    STOPPING = "STOPPING",
    STOPPED = "STOPPED",
}

M.CreateRetrainingSchedulerOutput = {
    type = "structure",
    members = {
        ModelName = {
            type = "string",
        },
        ModelArn = {
            type = "string",
        },
        Status = {
            type = "string",
        },
    },
}

M.DeleteDatasetInput = {
    type = "structure",
    members = {
        DatasetName = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.DeleteDatasetOutput = {
    type = "structure",
}

M.DeleteInferenceSchedulerInput = {
    type = "structure",
    members = {
        InferenceSchedulerName = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.DeleteInferenceSchedulerOutput = {
    type = "structure",
}

M.DeleteLabelInput = {
    type = "structure",
    members = {
        LabelGroupName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        LabelId = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.DeleteLabelOutput = {
    type = "structure",
}

M.DeleteLabelGroupInput = {
    type = "structure",
    members = {
        LabelGroupName = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.DeleteLabelGroupOutput = {
    type = "structure",
}

M.DeleteModelInput = {
    type = "structure",
    members = {
        ModelName = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.DeleteModelOutput = {
    type = "structure",
}

M.DeleteResourcePolicyInput = {
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

M.DeleteResourcePolicyOutput = {
    type = "structure",
}

M.DeleteRetrainingSchedulerInput = {
    type = "structure",
    members = {
        ModelName = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.DeleteRetrainingSchedulerOutput = {
    type = "structure",
}

M.DescribeDataIngestionJobInput = {
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

M.DuplicateTimestamps = {
    type = "structure",
    members = {
        TotalNumberOfDuplicateTimestamps = {
            type = "integer",
            traits = {
                required = true,
            },
        },
    },
}

M.MissingCompleteSensorData = {
    type = "structure",
    members = {
        AffectedSensorCount = {
            type = "integer",
            traits = {
                required = true,
            },
        },
    },
}

M.SensorsWithShortDateRange = {
    type = "structure",
    members = {
        AffectedSensorCount = {
            type = "integer",
            traits = {
                required = true,
            },
        },
    },
}

M.InsufficientSensorData = {
    type = "structure",
    members = {
        MissingCompleteSensorData = setmetatable({ traits = {
            required = true,
        } }, { __index = M.MissingCompleteSensorData }),
        SensorsWithShortDateRange = setmetatable({ traits = {
            required = true,
        } }, { __index = M.SensorsWithShortDateRange }),
    },
}

M.InvalidSensorData = {
    type = "structure",
    members = {
        AffectedSensorCount = {
            type = "integer",
            traits = {
                required = true,
            },
        },
        TotalNumberOfInvalidValues = {
            type = "integer",
            traits = {
                required = true,
            },
        },
    },
}

M.MissingSensorData = {
    type = "structure",
    members = {
        AffectedSensorCount = {
            type = "integer",
            traits = {
                required = true,
            },
        },
        TotalNumberOfMissingValues = {
            type = "integer",
            traits = {
                required = true,
            },
        },
    },
}

M.UnsupportedTimestamps = {
    type = "structure",
    members = {
        TotalNumberOfUnsupportedTimestamps = {
            type = "integer",
            traits = {
                required = true,
            },
        },
    },
}

M.DataQualitySummary = {
    type = "structure",
    members = {
        InsufficientSensorData = setmetatable({ traits = {
            required = true,
        } }, { __index = M.InsufficientSensorData }),
        MissingSensorData = setmetatable({ traits = {
            required = true,
        } }, { __index = M.MissingSensorData }),
        InvalidSensorData = setmetatable({ traits = {
            required = true,
        } }, { __index = M.InvalidSensorData }),
        UnsupportedTimestamps = setmetatable({ traits = {
            required = true,
        } }, { __index = M.UnsupportedTimestamps }),
        DuplicateTimestamps = setmetatable({ traits = {
            required = true,
        } }, { __index = M.DuplicateTimestamps }),
    },
}

M.S3Object = {
    type = "structure",
    members = {
        Bucket = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Key = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.IngestedFilesSummary = {
    type = "structure",
    members = {
        TotalNumberOfFiles = {
            type = "integer",
            traits = {
                required = true,
            },
        },
        IngestedNumberOfFiles = {
            type = "integer",
            traits = {
                required = true,
            },
        },
        DiscardedFiles = {
            type = "list",
            member = M.S3Object,
        },
    },
}

M.IngestionS3InputConfiguration = {
    type = "structure",
    members = {
        Bucket = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Prefix = {
            type = "string",
        },
        KeyPattern = {
            type = "string",
        },
    },
}

M.IngestionInputConfiguration = {
    type = "structure",
    members = {
        S3InputConfiguration = setmetatable({ traits = {
            required = true,
        } }, { __index = M.IngestionS3InputConfiguration }),
    },
}

M.IngestionJobStatus = {
    IN_PROGRESS = "IN_PROGRESS",
    SUCCESS = "SUCCESS",
    FAILED = "FAILED",
    IMPORT_IN_PROGRESS = "IMPORT_IN_PROGRESS",
}

M.DescribeDataIngestionJobOutput = {
    type = "structure",
    members = {
        JobId = {
            type = "string",
        },
        DatasetArn = {
            type = "string",
        },
        IngestionInputConfiguration = M.IngestionInputConfiguration,
        RoleArn = {
            type = "string",
        },
        CreatedAt = {
            type = "timestamp",
        },
        Status = {
            type = "string",
        },
        FailedReason = {
            type = "string",
        },
        DataQualitySummary = M.DataQualitySummary,
        IngestedFilesSummary = M.IngestedFilesSummary,
        StatusDetail = {
            type = "string",
        },
        IngestedDataSize = {
            type = "long",
        },
        DataStartTime = {
            type = "timestamp",
        },
        DataEndTime = {
            type = "timestamp",
        },
        SourceDatasetArn = {
            type = "string",
        },
    },
}

M.DescribeDatasetInput = {
    type = "structure",
    members = {
        DatasetName = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.DescribeDatasetOutput = {
    type = "structure",
    members = {
        DatasetName = {
            type = "string",
        },
        DatasetArn = {
            type = "string",
        },
        CreatedAt = {
            type = "timestamp",
        },
        LastUpdatedAt = {
            type = "timestamp",
        },
        Status = {
            type = "string",
        },
        Schema = {
            type = "string",
            traits = {
                media_type = "application/json",
            },
        },
        ServerSideKmsKeyId = {
            type = "string",
        },
        IngestionInputConfiguration = M.IngestionInputConfiguration,
        DataQualitySummary = M.DataQualitySummary,
        IngestedFilesSummary = M.IngestedFilesSummary,
        RoleArn = {
            type = "string",
        },
        DataStartTime = {
            type = "timestamp",
        },
        DataEndTime = {
            type = "timestamp",
        },
        SourceDatasetArn = {
            type = "string",
        },
    },
}

M.DescribeInferenceSchedulerInput = {
    type = "structure",
    members = {
        InferenceSchedulerName = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.LatestInferenceResult = {
    ANOMALOUS = "ANOMALOUS",
    NORMAL = "NORMAL",
}

M.DescribeInferenceSchedulerOutput = {
    type = "structure",
    members = {
        ModelArn = {
            type = "string",
        },
        ModelName = {
            type = "string",
        },
        InferenceSchedulerName = {
            type = "string",
        },
        InferenceSchedulerArn = {
            type = "string",
        },
        Status = {
            type = "string",
        },
        DataDelayOffsetInMinutes = {
            type = "long",
        },
        DataUploadFrequency = {
            type = "string",
        },
        CreatedAt = {
            type = "timestamp",
        },
        UpdatedAt = {
            type = "timestamp",
        },
        DataInputConfiguration = M.InferenceInputConfiguration,
        DataOutputConfiguration = M.InferenceOutputConfiguration,
        RoleArn = {
            type = "string",
        },
        ServerSideKmsKeyId = {
            type = "string",
        },
        LatestInferenceResult = {
            type = "string",
        },
    },
}

M.DescribeLabelInput = {
    type = "structure",
    members = {
        LabelGroupName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        LabelId = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.DescribeLabelOutput = {
    type = "structure",
    members = {
        LabelGroupName = {
            type = "string",
        },
        LabelGroupArn = {
            type = "string",
        },
        LabelId = {
            type = "string",
        },
        StartTime = {
            type = "timestamp",
        },
        EndTime = {
            type = "timestamp",
        },
        Rating = {
            type = "string",
        },
        FaultCode = {
            type = "string",
        },
        Notes = {
            type = "string",
        },
        Equipment = {
            type = "string",
        },
        CreatedAt = {
            type = "timestamp",
        },
    },
}

M.DescribeLabelGroupInput = {
    type = "structure",
    members = {
        LabelGroupName = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.DescribeLabelGroupOutput = {
    type = "structure",
    members = {
        LabelGroupName = {
            type = "string",
        },
        LabelGroupArn = {
            type = "string",
        },
        FaultCodes = {
            type = "list",
            member = { type = "string" },
        },
        CreatedAt = {
            type = "timestamp",
        },
        UpdatedAt = {
            type = "timestamp",
        },
    },
}

M.DescribeModelInput = {
    type = "structure",
    members = {
        ModelName = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.ModelVersionStatus = {
    IN_PROGRESS = "IN_PROGRESS",
    SUCCESS = "SUCCESS",
    FAILED = "FAILED",
    IMPORT_IN_PROGRESS = "IMPORT_IN_PROGRESS",
    CANCELED = "CANCELED",
}

M.DescribeModelOutput = {
    type = "structure",
    members = {
        ModelName = {
            type = "string",
        },
        ModelArn = {
            type = "string",
        },
        DatasetName = {
            type = "string",
        },
        DatasetArn = {
            type = "string",
        },
        Schema = {
            type = "string",
            traits = {
                media_type = "application/json",
            },
        },
        LabelsInputConfiguration = M.LabelsInputConfiguration,
        TrainingDataStartTime = {
            type = "timestamp",
        },
        TrainingDataEndTime = {
            type = "timestamp",
        },
        EvaluationDataStartTime = {
            type = "timestamp",
        },
        EvaluationDataEndTime = {
            type = "timestamp",
        },
        RoleArn = {
            type = "string",
        },
        DataPreProcessingConfiguration = M.DataPreProcessingConfiguration,
        Status = {
            type = "string",
        },
        TrainingExecutionStartTime = {
            type = "timestamp",
        },
        TrainingExecutionEndTime = {
            type = "timestamp",
        },
        FailedReason = {
            type = "string",
        },
        ModelMetrics = {
            type = "string",
            traits = {
                media_type = "application/json",
            },
        },
        LastUpdatedTime = {
            type = "timestamp",
        },
        CreatedAt = {
            type = "timestamp",
        },
        ServerSideKmsKeyId = {
            type = "string",
        },
        OffCondition = {
            type = "string",
        },
        SourceModelVersionArn = {
            type = "string",
        },
        ImportJobStartTime = {
            type = "timestamp",
        },
        ImportJobEndTime = {
            type = "timestamp",
        },
        ActiveModelVersion = {
            type = "long",
        },
        ActiveModelVersionArn = {
            type = "string",
        },
        ModelVersionActivatedAt = {
            type = "timestamp",
        },
        PreviousActiveModelVersion = {
            type = "long",
        },
        PreviousActiveModelVersionArn = {
            type = "string",
        },
        PreviousModelVersionActivatedAt = {
            type = "timestamp",
        },
        PriorModelMetrics = {
            type = "string",
            traits = {
                media_type = "application/json",
            },
        },
        LatestScheduledRetrainingFailedReason = {
            type = "string",
        },
        LatestScheduledRetrainingStatus = {
            type = "string",
        },
        LatestScheduledRetrainingModelVersion = {
            type = "long",
        },
        LatestScheduledRetrainingStartTime = {
            type = "timestamp",
        },
        LatestScheduledRetrainingAvailableDataInDays = {
            type = "integer",
        },
        NextScheduledRetrainingStartDate = {
            type = "timestamp",
        },
        AccumulatedInferenceDataStartTime = {
            type = "timestamp",
        },
        AccumulatedInferenceDataEndTime = {
            type = "timestamp",
        },
        RetrainingSchedulerStatus = {
            type = "string",
        },
        ModelDiagnosticsOutputConfiguration = M.ModelDiagnosticsOutputConfiguration,
        ModelQuality = {
            type = "string",
        },
    },
}

M.DescribeModelVersionInput = {
    type = "structure",
    members = {
        ModelName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        ModelVersion = {
            type = "long",
            traits = {
                required = true,
            },
        },
    },
}

M.ModelVersionSourceType = {
    TRAINING = "TRAINING",
    RETRAINING = "RETRAINING",
    IMPORT = "IMPORT",
}

M.DescribeModelVersionOutput = {
    type = "structure",
    members = {
        ModelName = {
            type = "string",
        },
        ModelArn = {
            type = "string",
        },
        ModelVersion = {
            type = "long",
        },
        ModelVersionArn = {
            type = "string",
        },
        Status = {
            type = "string",
        },
        SourceType = {
            type = "string",
        },
        DatasetName = {
            type = "string",
        },
        DatasetArn = {
            type = "string",
        },
        Schema = {
            type = "string",
        },
        LabelsInputConfiguration = M.LabelsInputConfiguration,
        TrainingDataStartTime = {
            type = "timestamp",
        },
        TrainingDataEndTime = {
            type = "timestamp",
        },
        EvaluationDataStartTime = {
            type = "timestamp",
        },
        EvaluationDataEndTime = {
            type = "timestamp",
        },
        RoleArn = {
            type = "string",
        },
        DataPreProcessingConfiguration = M.DataPreProcessingConfiguration,
        TrainingExecutionStartTime = {
            type = "timestamp",
        },
        TrainingExecutionEndTime = {
            type = "timestamp",
        },
        FailedReason = {
            type = "string",
        },
        ModelMetrics = {
            type = "string",
        },
        LastUpdatedTime = {
            type = "timestamp",
        },
        CreatedAt = {
            type = "timestamp",
        },
        ServerSideKmsKeyId = {
            type = "string",
        },
        OffCondition = {
            type = "string",
        },
        SourceModelVersionArn = {
            type = "string",
        },
        ImportJobStartTime = {
            type = "timestamp",
        },
        ImportJobEndTime = {
            type = "timestamp",
        },
        ImportedDataSizeInBytes = {
            type = "long",
        },
        PriorModelMetrics = {
            type = "string",
        },
        RetrainingAvailableDataInDays = {
            type = "integer",
        },
        AutoPromotionResult = {
            type = "string",
        },
        AutoPromotionResultReason = {
            type = "string",
        },
        ModelDiagnosticsOutputConfiguration = M.ModelDiagnosticsOutputConfiguration,
        ModelDiagnosticsResultsObject = M.S3Object,
        ModelQuality = {
            type = "string",
        },
    },
}

M.DescribeResourcePolicyInput = {
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

M.DescribeResourcePolicyOutput = {
    type = "structure",
    members = {
        PolicyRevisionId = {
            type = "string",
        },
        ResourcePolicy = {
            type = "string",
        },
        CreationTime = {
            type = "timestamp",
        },
        LastModifiedTime = {
            type = "timestamp",
        },
    },
}

M.DescribeRetrainingSchedulerInput = {
    type = "structure",
    members = {
        ModelName = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.DescribeRetrainingSchedulerOutput = {
    type = "structure",
    members = {
        ModelName = {
            type = "string",
        },
        ModelArn = {
            type = "string",
        },
        RetrainingStartDate = {
            type = "timestamp",
        },
        RetrainingFrequency = {
            type = "string",
        },
        LookbackWindow = {
            type = "string",
        },
        Status = {
            type = "string",
        },
        PromoteMode = {
            type = "string",
        },
        CreatedAt = {
            type = "timestamp",
        },
        UpdatedAt = {
            type = "timestamp",
        },
    },
}

M.ImportDatasetInput = {
    type = "structure",
    members = {
        SourceDatasetArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        DatasetName = {
            type = "string",
        },
        ClientToken = {
            type = "string",
            traits = {
                idempotency_token = true,
                required = true,
            },
        },
        ServerSideKmsKeyId = {
            type = "string",
        },
        Tags = {
            type = "list",
            member = M.Tag,
        },
    },
}

M.ImportDatasetOutput = {
    type = "structure",
    members = {
        DatasetName = {
            type = "string",
        },
        DatasetArn = {
            type = "string",
        },
        Status = {
            type = "string",
        },
        JobId = {
            type = "string",
        },
    },
}

M.InferenceDataImportStrategy = {
    NO_IMPORT = "NO_IMPORT",
    ADD_WHEN_EMPTY = "ADD_WHEN_EMPTY",
    OVERWRITE = "OVERWRITE",
}

M.ImportModelVersionInput = {
    type = "structure",
    members = {
        SourceModelVersionArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        ModelName = {
            type = "string",
        },
        DatasetName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        LabelsInputConfiguration = M.LabelsInputConfiguration,
        ClientToken = {
            type = "string",
            traits = {
                idempotency_token = true,
                required = true,
            },
        },
        RoleArn = {
            type = "string",
        },
        ServerSideKmsKeyId = {
            type = "string",
        },
        Tags = {
            type = "list",
            member = M.Tag,
        },
        InferenceDataImportStrategy = {
            type = "string",
        },
    },
}

M.ImportModelVersionOutput = {
    type = "structure",
    members = {
        ModelName = {
            type = "string",
        },
        ModelArn = {
            type = "string",
        },
        ModelVersionArn = {
            type = "string",
        },
        ModelVersion = {
            type = "long",
        },
        Status = {
            type = "string",
        },
    },
}

M.ListDataIngestionJobsInput = {
    type = "structure",
    members = {
        DatasetName = {
            type = "string",
        },
        NextToken = {
            type = "string",
        },
        MaxResults = {
            type = "integer",
        },
        Status = {
            type = "string",
        },
    },
}

M.DataIngestionJobSummary = {
    type = "structure",
    members = {
        JobId = {
            type = "string",
        },
        DatasetName = {
            type = "string",
        },
        DatasetArn = {
            type = "string",
        },
        IngestionInputConfiguration = M.IngestionInputConfiguration,
        Status = {
            type = "string",
        },
    },
}

M.ListDataIngestionJobsOutput = {
    type = "structure",
    members = {
        NextToken = {
            type = "string",
        },
        DataIngestionJobSummaries = {
            type = "list",
            member = M.DataIngestionJobSummary,
        },
    },
}

M.ListDatasetsInput = {
    type = "structure",
    members = {
        NextToken = {
            type = "string",
        },
        MaxResults = {
            type = "integer",
        },
        DatasetNameBeginsWith = {
            type = "string",
        },
    },
}

M.DatasetSummary = {
    type = "structure",
    members = {
        DatasetName = {
            type = "string",
        },
        DatasetArn = {
            type = "string",
        },
        Status = {
            type = "string",
        },
        CreatedAt = {
            type = "timestamp",
        },
    },
}

M.ListDatasetsOutput = {
    type = "structure",
    members = {
        NextToken = {
            type = "string",
        },
        DatasetSummaries = {
            type = "list",
            member = M.DatasetSummary,
        },
    },
}

M.ListInferenceEventsInput = {
    type = "structure",
    members = {
        NextToken = {
            type = "string",
        },
        MaxResults = {
            type = "integer",
        },
        InferenceSchedulerName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        IntervalStartTime = {
            type = "timestamp",
            traits = {
                required = true,
            },
        },
        IntervalEndTime = {
            type = "timestamp",
            traits = {
                required = true,
            },
        },
    },
}

M.InferenceEventSummary = {
    type = "structure",
    members = {
        InferenceSchedulerArn = {
            type = "string",
        },
        InferenceSchedulerName = {
            type = "string",
        },
        EventStartTime = {
            type = "timestamp",
        },
        EventEndTime = {
            type = "timestamp",
        },
        Diagnostics = {
            type = "string",
        },
        EventDurationInSeconds = {
            type = "long",
        },
    },
}

M.ListInferenceEventsOutput = {
    type = "structure",
    members = {
        NextToken = {
            type = "string",
        },
        InferenceEventSummaries = {
            type = "list",
            member = M.InferenceEventSummary,
        },
    },
}

M.InferenceExecutionStatus = {
    IN_PROGRESS = "IN_PROGRESS",
    SUCCESS = "SUCCESS",
    FAILED = "FAILED",
}

M.ListInferenceExecutionsInput = {
    type = "structure",
    members = {
        NextToken = {
            type = "string",
        },
        MaxResults = {
            type = "integer",
        },
        InferenceSchedulerName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        DataStartTimeAfter = {
            type = "timestamp",
        },
        DataEndTimeBefore = {
            type = "timestamp",
        },
        Status = {
            type = "string",
        },
    },
}

M.InferenceExecutionSummary = {
    type = "structure",
    members = {
        ModelName = {
            type = "string",
        },
        ModelArn = {
            type = "string",
        },
        InferenceSchedulerName = {
            type = "string",
        },
        InferenceSchedulerArn = {
            type = "string",
        },
        ScheduledStartTime = {
            type = "timestamp",
        },
        DataStartTime = {
            type = "timestamp",
        },
        DataEndTime = {
            type = "timestamp",
        },
        DataInputConfiguration = M.InferenceInputConfiguration,
        DataOutputConfiguration = M.InferenceOutputConfiguration,
        CustomerResultObject = M.S3Object,
        Status = {
            type = "string",
        },
        FailedReason = {
            type = "string",
        },
        ModelVersion = {
            type = "long",
        },
        ModelVersionArn = {
            type = "string",
        },
    },
}

M.ListInferenceExecutionsOutput = {
    type = "structure",
    members = {
        NextToken = {
            type = "string",
        },
        InferenceExecutionSummaries = {
            type = "list",
            member = M.InferenceExecutionSummary,
        },
    },
}

M.ListInferenceSchedulersInput = {
    type = "structure",
    members = {
        NextToken = {
            type = "string",
        },
        MaxResults = {
            type = "integer",
        },
        InferenceSchedulerNameBeginsWith = {
            type = "string",
        },
        ModelName = {
            type = "string",
        },
        Status = {
            type = "string",
        },
    },
}

M.InferenceSchedulerSummary = {
    type = "structure",
    members = {
        ModelName = {
            type = "string",
        },
        ModelArn = {
            type = "string",
        },
        InferenceSchedulerName = {
            type = "string",
        },
        InferenceSchedulerArn = {
            type = "string",
        },
        Status = {
            type = "string",
        },
        DataDelayOffsetInMinutes = {
            type = "long",
        },
        DataUploadFrequency = {
            type = "string",
        },
        LatestInferenceResult = {
            type = "string",
        },
    },
}

M.ListInferenceSchedulersOutput = {
    type = "structure",
    members = {
        NextToken = {
            type = "string",
        },
        InferenceSchedulerSummaries = {
            type = "list",
            member = M.InferenceSchedulerSummary,
        },
    },
}

M.ListLabelGroupsInput = {
    type = "structure",
    members = {
        LabelGroupNameBeginsWith = {
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

M.LabelGroupSummary = {
    type = "structure",
    members = {
        LabelGroupName = {
            type = "string",
        },
        LabelGroupArn = {
            type = "string",
        },
        CreatedAt = {
            type = "timestamp",
        },
        UpdatedAt = {
            type = "timestamp",
        },
    },
}

M.ListLabelGroupsOutput = {
    type = "structure",
    members = {
        NextToken = {
            type = "string",
        },
        LabelGroupSummaries = {
            type = "list",
            member = M.LabelGroupSummary,
        },
    },
}

M.ListLabelsInput = {
    type = "structure",
    members = {
        LabelGroupName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        IntervalStartTime = {
            type = "timestamp",
        },
        IntervalEndTime = {
            type = "timestamp",
        },
        FaultCode = {
            type = "string",
        },
        Equipment = {
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

M.LabelSummary = {
    type = "structure",
    members = {
        LabelGroupName = {
            type = "string",
        },
        LabelId = {
            type = "string",
        },
        LabelGroupArn = {
            type = "string",
        },
        StartTime = {
            type = "timestamp",
        },
        EndTime = {
            type = "timestamp",
        },
        Rating = {
            type = "string",
        },
        FaultCode = {
            type = "string",
        },
        Equipment = {
            type = "string",
        },
        CreatedAt = {
            type = "timestamp",
        },
    },
}

M.ListLabelsOutput = {
    type = "structure",
    members = {
        NextToken = {
            type = "string",
        },
        LabelSummaries = {
            type = "list",
            member = M.LabelSummary,
        },
    },
}

M.ListModelsInput = {
    type = "structure",
    members = {
        NextToken = {
            type = "string",
        },
        MaxResults = {
            type = "integer",
        },
        Status = {
            type = "string",
        },
        ModelNameBeginsWith = {
            type = "string",
        },
        DatasetNameBeginsWith = {
            type = "string",
        },
    },
}

M.ModelSummary = {
    type = "structure",
    members = {
        ModelName = {
            type = "string",
        },
        ModelArn = {
            type = "string",
        },
        DatasetName = {
            type = "string",
        },
        DatasetArn = {
            type = "string",
        },
        Status = {
            type = "string",
        },
        CreatedAt = {
            type = "timestamp",
        },
        ActiveModelVersion = {
            type = "long",
        },
        ActiveModelVersionArn = {
            type = "string",
        },
        LatestScheduledRetrainingStatus = {
            type = "string",
        },
        LatestScheduledRetrainingModelVersion = {
            type = "long",
        },
        LatestScheduledRetrainingStartTime = {
            type = "timestamp",
        },
        NextScheduledRetrainingStartDate = {
            type = "timestamp",
        },
        RetrainingSchedulerStatus = {
            type = "string",
        },
        ModelDiagnosticsOutputConfiguration = M.ModelDiagnosticsOutputConfiguration,
        ModelQuality = {
            type = "string",
        },
    },
}

M.ListModelsOutput = {
    type = "structure",
    members = {
        NextToken = {
            type = "string",
        },
        ModelSummaries = {
            type = "list",
            member = M.ModelSummary,
        },
    },
}

M.ListModelVersionsInput = {
    type = "structure",
    members = {
        ModelName = {
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
        Status = {
            type = "string",
        },
        SourceType = {
            type = "string",
        },
        CreatedAtEndTime = {
            type = "timestamp",
        },
        CreatedAtStartTime = {
            type = "timestamp",
        },
        MaxModelVersion = {
            type = "long",
        },
        MinModelVersion = {
            type = "long",
        },
    },
}

M.ModelVersionSummary = {
    type = "structure",
    members = {
        ModelName = {
            type = "string",
        },
        ModelArn = {
            type = "string",
        },
        ModelVersion = {
            type = "long",
        },
        ModelVersionArn = {
            type = "string",
        },
        CreatedAt = {
            type = "timestamp",
        },
        Status = {
            type = "string",
        },
        SourceType = {
            type = "string",
        },
        ModelQuality = {
            type = "string",
        },
    },
}

M.ListModelVersionsOutput = {
    type = "structure",
    members = {
        NextToken = {
            type = "string",
        },
        ModelVersionSummaries = {
            type = "list",
            member = M.ModelVersionSummary,
        },
    },
}

M.ListRetrainingSchedulersInput = {
    type = "structure",
    members = {
        ModelNameBeginsWith = {
            type = "string",
        },
        Status = {
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

M.RetrainingSchedulerSummary = {
    type = "structure",
    members = {
        ModelName = {
            type = "string",
        },
        ModelArn = {
            type = "string",
        },
        Status = {
            type = "string",
        },
        RetrainingStartDate = {
            type = "timestamp",
        },
        RetrainingFrequency = {
            type = "string",
        },
        LookbackWindow = {
            type = "string",
        },
    },
}

M.ListRetrainingSchedulersOutput = {
    type = "structure",
    members = {
        RetrainingSchedulerSummaries = {
            type = "list",
            member = M.RetrainingSchedulerSummary,
        },
        NextToken = {
            type = "string",
        },
    },
}

M.ListSensorStatisticsInput = {
    type = "structure",
    members = {
        DatasetName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        IngestionJobId = {
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

M.StatisticalIssueStatus = {
    POTENTIAL_ISSUE_DETECTED = "POTENTIAL_ISSUE_DETECTED",
    NO_ISSUE_DETECTED = "NO_ISSUE_DETECTED",
}

M.CategoricalValues = {
    type = "structure",
    members = {
        Status = {
            type = "string",
            traits = {
                required = true,
            },
        },
        NumberOfCategory = {
            type = "integer",
        },
    },
}

M.CountPercent = {
    type = "structure",
    members = {
        Count = {
            type = "integer",
            traits = {
                required = true,
            },
        },
        Percentage = {
            type = "float",
            traits = {
                default = 0,
                required = true,
            },
        },
    },
}

M.LargeTimestampGaps = {
    type = "structure",
    members = {
        Status = {
            type = "string",
            traits = {
                required = true,
            },
        },
        NumberOfLargeTimestampGaps = {
            type = "integer",
        },
        MaxTimestampGapInDays = {
            type = "integer",
        },
    },
}

M.Monotonicity = {
    DECREASING = "DECREASING",
    INCREASING = "INCREASING",
    STATIC = "STATIC",
}

M.MonotonicValues = {
    type = "structure",
    members = {
        Status = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Monotonicity = {
            type = "string",
        },
    },
}

M.MultipleOperatingModes = {
    type = "structure",
    members = {
        Status = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.SensorStatisticsSummary = {
    type = "structure",
    members = {
        ComponentName = {
            type = "string",
        },
        SensorName = {
            type = "string",
        },
        DataExists = {
            type = "boolean",
            traits = {
                default = false,
            },
        },
        MissingValues = M.CountPercent,
        InvalidValues = M.CountPercent,
        InvalidDateEntries = M.CountPercent,
        DuplicateTimestamps = M.CountPercent,
        CategoricalValues = M.CategoricalValues,
        MultipleOperatingModes = M.MultipleOperatingModes,
        LargeTimestampGaps = M.LargeTimestampGaps,
        MonotonicValues = M.MonotonicValues,
        DataStartTime = {
            type = "timestamp",
        },
        DataEndTime = {
            type = "timestamp",
        },
    },
}

M.ListSensorStatisticsOutput = {
    type = "structure",
    members = {
        SensorStatisticsSummaries = {
            type = "list",
            member = M.SensorStatisticsSummary,
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

M.PutResourcePolicyInput = {
    type = "structure",
    members = {
        ResourceArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        ResourcePolicy = {
            type = "string",
            traits = {
                required = true,
            },
        },
        PolicyRevisionId = {
            type = "string",
        },
        ClientToken = {
            type = "string",
            traits = {
                idempotency_token = true,
                required = true,
            },
        },
    },
}

M.PutResourcePolicyOutput = {
    type = "structure",
    members = {
        ResourceArn = {
            type = "string",
        },
        PolicyRevisionId = {
            type = "string",
        },
    },
}

M.StartDataIngestionJobInput = {
    type = "structure",
    members = {
        DatasetName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        IngestionInputConfiguration = setmetatable({ traits = {
            required = true,
        } }, { __index = M.IngestionInputConfiguration }),
        RoleArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        ClientToken = {
            type = "string",
            traits = {
                idempotency_token = true,
                required = true,
            },
        },
    },
}

M.StartDataIngestionJobOutput = {
    type = "structure",
    members = {
        JobId = {
            type = "string",
        },
        Status = {
            type = "string",
        },
    },
}

M.StartInferenceSchedulerInput = {
    type = "structure",
    members = {
        InferenceSchedulerName = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.StartInferenceSchedulerOutput = {
    type = "structure",
    members = {
        ModelArn = {
            type = "string",
        },
        ModelName = {
            type = "string",
        },
        InferenceSchedulerName = {
            type = "string",
        },
        InferenceSchedulerArn = {
            type = "string",
        },
        Status = {
            type = "string",
        },
    },
}

M.StartRetrainingSchedulerInput = {
    type = "structure",
    members = {
        ModelName = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.StartRetrainingSchedulerOutput = {
    type = "structure",
    members = {
        ModelName = {
            type = "string",
        },
        ModelArn = {
            type = "string",
        },
        Status = {
            type = "string",
        },
    },
}

M.StopInferenceSchedulerInput = {
    type = "structure",
    members = {
        InferenceSchedulerName = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.StopInferenceSchedulerOutput = {
    type = "structure",
    members = {
        ModelArn = {
            type = "string",
        },
        ModelName = {
            type = "string",
        },
        InferenceSchedulerName = {
            type = "string",
        },
        InferenceSchedulerArn = {
            type = "string",
        },
        Status = {
            type = "string",
        },
    },
}

M.StopRetrainingSchedulerInput = {
    type = "structure",
    members = {
        ModelName = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.StopRetrainingSchedulerOutput = {
    type = "structure",
    members = {
        ModelName = {
            type = "string",
        },
        ModelArn = {
            type = "string",
        },
        Status = {
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

M.UpdateActiveModelVersionInput = {
    type = "structure",
    members = {
        ModelName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        ModelVersion = {
            type = "long",
            traits = {
                required = true,
            },
        },
    },
}

M.UpdateActiveModelVersionOutput = {
    type = "structure",
    members = {
        ModelName = {
            type = "string",
        },
        ModelArn = {
            type = "string",
        },
        CurrentActiveVersion = {
            type = "long",
        },
        PreviousActiveVersion = {
            type = "long",
        },
        CurrentActiveVersionArn = {
            type = "string",
        },
        PreviousActiveVersionArn = {
            type = "string",
        },
    },
}

M.UpdateInferenceSchedulerInput = {
    type = "structure",
    members = {
        InferenceSchedulerName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        DataDelayOffsetInMinutes = {
            type = "long",
        },
        DataUploadFrequency = {
            type = "string",
        },
        DataInputConfiguration = M.InferenceInputConfiguration,
        DataOutputConfiguration = M.InferenceOutputConfiguration,
        RoleArn = {
            type = "string",
        },
    },
}

M.UpdateInferenceSchedulerOutput = {
    type = "structure",
}

M.UpdateLabelGroupInput = {
    type = "structure",
    members = {
        LabelGroupName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        FaultCodes = {
            type = "list",
            member = { type = "string" },
        },
    },
}

M.UpdateLabelGroupOutput = {
    type = "structure",
}

M.UpdateModelInput = {
    type = "structure",
    members = {
        ModelName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        LabelsInputConfiguration = M.LabelsInputConfiguration,
        RoleArn = {
            type = "string",
        },
        ModelDiagnosticsOutputConfiguration = M.ModelDiagnosticsOutputConfiguration,
    },
}

M.UpdateModelOutput = {
    type = "structure",
}

M.UpdateRetrainingSchedulerInput = {
    type = "structure",
    members = {
        ModelName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        RetrainingStartDate = {
            type = "timestamp",
        },
        RetrainingFrequency = {
            type = "string",
        },
        LookbackWindow = {
            type = "string",
        },
        PromoteMode = {
            type = "string",
        },
    },
}

M.UpdateRetrainingSchedulerOutput = {
    type = "structure",
}

return M
