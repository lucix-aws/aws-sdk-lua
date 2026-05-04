local M = {}

M.AccessDeniedException = {
    type = "structure",
    id = "AccessDeniedException",
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
    id = "ConflictException",
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
    id = "DatasetSchema",
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

M.CreateDatasetInput = {
    type = "structure",
    id = "CreateDatasetInput",
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
    id = "CreateDatasetOutput",
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
    id = "InternalServerException",
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
    id = "ServiceQuotaExceededException",
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
    id = "ThrottlingException",
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
    id = "ValidationException",
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
    id = "InferenceInputNameConfiguration",
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
    id = "InferenceS3InputConfiguration",
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
    id = "InferenceInputConfiguration",
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
    id = "InferenceS3OutputConfiguration",
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
    id = "InferenceOutputConfiguration",
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
    id = "CreateInferenceSchedulerInput",
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
    id = "CreateInferenceSchedulerOutput",
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
    id = "ResourceNotFoundException",
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
    id = "CreateLabelInput",
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
    id = "CreateLabelOutput",
    members = {
        LabelId = {
            type = "string",
        },
    },
}

M.CreateLabelGroupInput = {
    type = "structure",
    id = "CreateLabelGroupInput",
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
    id = "CreateLabelGroupOutput",
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
    id = "DataPreProcessingConfiguration",
    members = {
        TargetSamplingRate = {
            type = "string",
        },
    },
}

M.LabelsS3InputConfiguration = {
    type = "structure",
    id = "LabelsS3InputConfiguration",
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
    id = "LabelsInputConfiguration",
    members = {
        S3InputConfiguration = M.LabelsS3InputConfiguration,
        LabelGroupName = {
            type = "string",
        },
    },
}

M.ModelDiagnosticsS3OutputConfiguration = {
    type = "structure",
    id = "ModelDiagnosticsS3OutputConfiguration",
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
    id = "ModelDiagnosticsOutputConfiguration",
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
    id = "CreateModelInput",
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
    id = "CreateModelOutput",
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
    id = "CreateRetrainingSchedulerInput",
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
    id = "CreateRetrainingSchedulerOutput",
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
    id = "DeleteDatasetInput",
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
    id = "DeleteDatasetOutput",
}

M.DeleteInferenceSchedulerInput = {
    type = "structure",
    id = "DeleteInferenceSchedulerInput",
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
    id = "DeleteInferenceSchedulerOutput",
}

M.DeleteLabelInput = {
    type = "structure",
    id = "DeleteLabelInput",
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
    id = "DeleteLabelOutput",
}

M.DeleteLabelGroupInput = {
    type = "structure",
    id = "DeleteLabelGroupInput",
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
    id = "DeleteLabelGroupOutput",
}

M.DeleteModelInput = {
    type = "structure",
    id = "DeleteModelInput",
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
    id = "DeleteModelOutput",
}

M.DeleteResourcePolicyInput = {
    type = "structure",
    id = "DeleteResourcePolicyInput",
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
    id = "DeleteResourcePolicyOutput",
}

M.DeleteRetrainingSchedulerInput = {
    type = "structure",
    id = "DeleteRetrainingSchedulerInput",
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
    id = "DeleteRetrainingSchedulerOutput",
}

M.DescribeDataIngestionJobInput = {
    type = "structure",
    id = "DescribeDataIngestionJobInput",
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
    id = "DuplicateTimestamps",
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
    id = "MissingCompleteSensorData",
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
    id = "SensorsWithShortDateRange",
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
    id = "InsufficientSensorData",
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
    id = "InvalidSensorData",
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
    id = "MissingSensorData",
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
    id = "UnsupportedTimestamps",
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
    id = "DataQualitySummary",
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
    id = "S3Object",
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
    id = "IngestedFilesSummary",
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
    id = "IngestionS3InputConfiguration",
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
    id = "IngestionInputConfiguration",
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
    id = "DescribeDataIngestionJobOutput",
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
    id = "DescribeDatasetInput",
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
    id = "DescribeDatasetOutput",
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
    id = "DescribeInferenceSchedulerInput",
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
    id = "DescribeInferenceSchedulerOutput",
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
    id = "DescribeLabelInput",
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
    id = "DescribeLabelOutput",
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
    id = "DescribeLabelGroupInput",
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
    id = "DescribeLabelGroupOutput",
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
    id = "DescribeModelInput",
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
    id = "DescribeModelOutput",
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
    id = "DescribeModelVersionInput",
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
    id = "DescribeModelVersionOutput",
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
    id = "DescribeResourcePolicyInput",
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
    id = "DescribeResourcePolicyOutput",
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
    id = "DescribeRetrainingSchedulerInput",
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
    id = "DescribeRetrainingSchedulerOutput",
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
    id = "ImportDatasetInput",
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
    id = "ImportDatasetOutput",
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
    id = "ImportModelVersionInput",
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
    id = "ImportModelVersionOutput",
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
    id = "ListDataIngestionJobsInput",
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
    id = "DataIngestionJobSummary",
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
    id = "ListDataIngestionJobsOutput",
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
    id = "ListDatasetsInput",
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
    id = "DatasetSummary",
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
    id = "ListDatasetsOutput",
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
    id = "ListInferenceEventsInput",
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
    id = "InferenceEventSummary",
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
    id = "ListInferenceEventsOutput",
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
    id = "ListInferenceExecutionsInput",
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
    id = "InferenceExecutionSummary",
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
    id = "ListInferenceExecutionsOutput",
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
    id = "ListInferenceSchedulersInput",
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
    id = "InferenceSchedulerSummary",
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
    id = "ListInferenceSchedulersOutput",
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
    id = "ListLabelGroupsInput",
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
    id = "LabelGroupSummary",
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
    id = "ListLabelGroupsOutput",
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
    id = "ListLabelsInput",
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
    id = "LabelSummary",
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
    id = "ListLabelsOutput",
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
    id = "ListModelsInput",
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
    id = "ModelSummary",
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
    id = "ListModelsOutput",
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
    id = "ListModelVersionsInput",
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
    id = "ModelVersionSummary",
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
    id = "ListModelVersionsOutput",
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
    id = "ListRetrainingSchedulersInput",
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
    id = "RetrainingSchedulerSummary",
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
    id = "ListRetrainingSchedulersOutput",
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
    id = "ListSensorStatisticsInput",
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
    id = "CategoricalValues",
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
    id = "CountPercent",
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
    id = "LargeTimestampGaps",
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
    id = "MonotonicValues",
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
    id = "MultipleOperatingModes",
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
    id = "SensorStatisticsSummary",
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
    id = "ListSensorStatisticsOutput",
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
    id = "ListTagsForResourceInput",
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
    id = "ListTagsForResourceOutput",
    members = {
        Tags = {
            type = "list",
            member = M.Tag,
        },
    },
}

M.PutResourcePolicyInput = {
    type = "structure",
    id = "PutResourcePolicyInput",
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
    id = "PutResourcePolicyOutput",
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
    id = "StartDataIngestionJobInput",
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
    id = "StartDataIngestionJobOutput",
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
    id = "StartInferenceSchedulerInput",
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
    id = "StartInferenceSchedulerOutput",
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
    id = "StartRetrainingSchedulerInput",
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
    id = "StartRetrainingSchedulerOutput",
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
    id = "StopInferenceSchedulerInput",
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
    id = "StopInferenceSchedulerOutput",
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
    id = "StopRetrainingSchedulerInput",
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
    id = "StopRetrainingSchedulerOutput",
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
    id = "TagResourceInput",
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
    id = "TagResourceOutput",
}

M.UntagResourceInput = {
    type = "structure",
    id = "UntagResourceInput",
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
    id = "UntagResourceOutput",
}

M.UpdateActiveModelVersionInput = {
    type = "structure",
    id = "UpdateActiveModelVersionInput",
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
    id = "UpdateActiveModelVersionOutput",
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
    id = "UpdateInferenceSchedulerInput",
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
    id = "UpdateInferenceSchedulerOutput",
}

M.UpdateLabelGroupInput = {
    type = "structure",
    id = "UpdateLabelGroupInput",
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
    id = "UpdateLabelGroupOutput",
}

M.UpdateModelInput = {
    type = "structure",
    id = "UpdateModelInput",
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
    id = "UpdateModelOutput",
}

M.UpdateRetrainingSchedulerInput = {
    type = "structure",
    id = "UpdateRetrainingSchedulerInput",
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
    id = "UpdateRetrainingSchedulerOutput",
}

return M
