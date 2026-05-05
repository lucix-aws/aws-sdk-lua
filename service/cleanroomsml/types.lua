local M = {}

M.AutoRefreshMode = {
    ENABLED = "ENABLED",
    DISABLED = "DISABLED",
}

M.AccessBudgetType = {
    CALENDAR_DAY = "CALENDAR_DAY",
    CALENDAR_MONTH = "CALENDAR_MONTH",
    CALENDAR_WEEK = "CALENDAR_WEEK",
    LIFETIME = "LIFETIME",
}

M.AudienceSizeType = {
    ABSOLUTE = "ABSOLUTE",
    PERCENTAGE = "PERCENTAGE",
}

M.AudienceExportJobStatus = {
    CREATE_PENDING = "CREATE_PENDING",
    CREATE_IN_PROGRESS = "CREATE_IN_PROGRESS",
    CREATE_FAILED = "CREATE_FAILED",
    ACTIVE = "ACTIVE",
}

M.WorkerComputeType = {
    CR1X = "CR.1X",
    CR4X = "CR.4X",
}

M.AudienceGenerationJobStatus = {
    CREATE_PENDING = "CREATE_PENDING",
    CREATE_IN_PROGRESS = "CREATE_IN_PROGRESS",
    CREATE_FAILED = "CREATE_FAILED",
    ACTIVE = "ACTIVE",
    DELETE_PENDING = "DELETE_PENDING",
    DELETE_IN_PROGRESS = "DELETE_IN_PROGRESS",
    DELETE_FAILED = "DELETE_FAILED",
}

M.AudienceModelStatus = {
    CREATE_PENDING = "CREATE_PENDING",
    CREATE_IN_PROGRESS = "CREATE_IN_PROGRESS",
    CREATE_FAILED = "CREATE_FAILED",
    ACTIVE = "ACTIVE",
    DELETE_PENDING = "DELETE_PENDING",
    DELETE_IN_PROGRESS = "DELETE_IN_PROGRESS",
    DELETE_FAILED = "DELETE_FAILED",
}

M.TagOnCreatePolicy = {
    FROM_PARENT_RESOURCE = "FROM_PARENT_RESOURCE",
    NONE = "NONE",
}

M.SharedAudienceMetrics = {
    ALL = "ALL",
    NONE = "NONE",
}

M.ConfiguredAudienceModelStatus = {
    ACTIVE = "ACTIVE",
}

M.PolicyExistenceCondition = {
    POLICY_MUST_EXIST = "POLICY_MUST_EXIST",
    POLICY_MUST_NOT_EXIST = "POLICY_MUST_NOT_EXIST",
}

M.TrainedModelExportFileType = {
    MODEL = "MODEL",
    OUTPUT = "OUTPUT",
}

M.TrainedModelExportsMaxSizeUnitType = {
    GB = "GB",
}

M.EntityType = {
    ALL_PERSONALLY_IDENTIFIABLE_INFORMATION = "ALL_PERSONALLY_IDENTIFIABLE_INFORMATION",
    NUMBERS = "NUMBERS",
    CUSTOM = "CUSTOM",
}

M.LogType = {
    ALL = "ALL",
    ERROR_SUMMARY = "ERROR_SUMMARY",
}

M.TrainedModelInferenceMaxOutputSizeUnitType = {
    GB = "GB",
}

M.NoiseLevelType = {
    HIGH = "HIGH",
    MEDIUM = "MEDIUM",
    LOW = "LOW",
    NONE = "NONE",
}

M.TrainedModelArtifactMaxSizeUnitType = {
    GB = "GB",
}

M.MLInputChannelStatus = {
    CREATE_PENDING = "CREATE_PENDING",
    CREATE_IN_PROGRESS = "CREATE_IN_PROGRESS",
    CREATE_FAILED = "CREATE_FAILED",
    ACTIVE = "ACTIVE",
    DELETE_PENDING = "DELETE_PENDING",
    DELETE_IN_PROGRESS = "DELETE_IN_PROGRESS",
    DELETE_FAILED = "DELETE_FAILED",
    INACTIVE = "INACTIVE",
}

M.TrainedModelExportJobStatus = {
    CREATE_PENDING = "CREATE_PENDING",
    CREATE_IN_PROGRESS = "CREATE_IN_PROGRESS",
    CREATE_FAILED = "CREATE_FAILED",
    ACTIVE = "ACTIVE",
}

M.LogsStatus = {
    PUBLISH_SUCCEEDED = "PUBLISH_SUCCEEDED",
    PUBLISH_FAILED = "PUBLISH_FAILED",
}

M.MetricsStatus = {
    PUBLISH_SUCCEEDED = "PUBLISH_SUCCEEDED",
    PUBLISH_FAILED = "PUBLISH_FAILED",
}

M.TrainedModelInferenceJobStatus = {
    CREATE_PENDING = "CREATE_PENDING",
    CREATE_IN_PROGRESS = "CREATE_IN_PROGRESS",
    CREATE_FAILED = "CREATE_FAILED",
    ACTIVE = "ACTIVE",
    CANCEL_PENDING = "CANCEL_PENDING",
    CANCEL_IN_PROGRESS = "CANCEL_IN_PROGRESS",
    CANCEL_FAILED = "CANCEL_FAILED",
    INACTIVE = "INACTIVE",
}

M.TrainedModelStatus = {
    CREATE_PENDING = "CREATE_PENDING",
    CREATE_IN_PROGRESS = "CREATE_IN_PROGRESS",
    CREATE_FAILED = "CREATE_FAILED",
    ACTIVE = "ACTIVE",
    DELETE_PENDING = "DELETE_PENDING",
    DELETE_IN_PROGRESS = "DELETE_IN_PROGRESS",
    DELETE_FAILED = "DELETE_FAILED",
    INACTIVE = "INACTIVE",
    CANCEL_PENDING = "CANCEL_PENDING",
    CANCEL_IN_PROGRESS = "CANCEL_IN_PROGRESS",
    CANCEL_FAILED = "CANCEL_FAILED",
}

M.ResultFormat = {
    CSV = "CSV",
    PARQUET = "PARQUET",
}

M.MembershipInferenceAttackVersion = {
    DISTANCE_TO_CLOSEST_RECORD_V1 = "DISTANCE_TO_CLOSEST_RECORD_V1",
}

M.SyntheticDataColumnType = {
    CATEGORICAL = "CATEGORICAL",
    NUMERICAL = "NUMERICAL",
}

M.S3DataDistributionType = {
    FULLY_REPLICATED = "FullyReplicated",
    SHARDED_BY_S3_KEY = "ShardedByS3Key",
}

M.InstanceType = {
    ML_M4_XLARGE = "ml.m4.xlarge",
    ML_M4_2XLARGE = "ml.m4.2xlarge",
    ML_M4_4XLARGE = "ml.m4.4xlarge",
    ML_M4_10XLARGE = "ml.m4.10xlarge",
    ML_M4_16XLARGE = "ml.m4.16xlarge",
    ML_G4DN_XLARGE = "ml.g4dn.xlarge",
    ML_G4DN_2XLARGE = "ml.g4dn.2xlarge",
    ML_G4DN_4XLARGE = "ml.g4dn.4xlarge",
    ML_G4DN_8XLARGE = "ml.g4dn.8xlarge",
    ML_G4DN_12XLARGE = "ml.g4dn.12xlarge",
    ML_G4DN_16XLARGE = "ml.g4dn.16xlarge",
    ML_M5_LARGE = "ml.m5.large",
    ML_M5_XLARGE = "ml.m5.xlarge",
    ML_M5_2XLARGE = "ml.m5.2xlarge",
    ML_M5_4XLARGE = "ml.m5.4xlarge",
    ML_M5_12XLARGE = "ml.m5.12xlarge",
    ML_M5_24XLARGE = "ml.m5.24xlarge",
    ML_C4_XLARGE = "ml.c4.xlarge",
    ML_C4_2XLARGE = "ml.c4.2xlarge",
    ML_C4_4XLARGE = "ml.c4.4xlarge",
    ML_C4_8XLARGE = "ml.c4.8xlarge",
    ML_P2_XLARGE = "ml.p2.xlarge",
    ML_P2_8XLARGE = "ml.p2.8xlarge",
    ML_P2_16XLARGE = "ml.p2.16xlarge",
    ML_P4D_24XLARGE = "ml.p4d.24xlarge",
    ML_P4DE_24XLARGE = "ml.p4de.24xlarge",
    ML_P5_48XLARGE = "ml.p5.48xlarge",
    ML_C5_XLARGE = "ml.c5.xlarge",
    ML_C5_2XLARGE = "ml.c5.2xlarge",
    ML_C5_4XLARGE = "ml.c5.4xlarge",
    ML_C5_9XLARGE = "ml.c5.9xlarge",
    ML_C5_18XLARGE = "ml.c5.18xlarge",
    ML_C5N_XLARGE = "ml.c5n.xlarge",
    ML_C5N_2XLARGE = "ml.c5n.2xlarge",
    ML_C5N_4XLARGE = "ml.c5n.4xlarge",
    ML_C5N_9XLARGE = "ml.c5n.9xlarge",
    ML_C5N_18XLARGE = "ml.c5n.18xlarge",
    ML_G5_XLARGE = "ml.g5.xlarge",
    ML_G5_2XLARGE = "ml.g5.2xlarge",
    ML_G5_4XLARGE = "ml.g5.4xlarge",
    ML_G5_8XLARGE = "ml.g5.8xlarge",
    ML_G5_16XLARGE = "ml.g5.16xlarge",
    ML_G5_12XLARGE = "ml.g5.12xlarge",
    ML_G5_24XLARGE = "ml.g5.24xlarge",
    ML_G5_48XLARGE = "ml.g5.48xlarge",
    ML_TRN1_2XLARGE = "ml.trn1.2xlarge",
    ML_TRN1_32XLARGE = "ml.trn1.32xlarge",
    ML_TRN1N_32XLARGE = "ml.trn1n.32xlarge",
    ML_M6I_LARGE = "ml.m6i.large",
    ML_M6I_XLARGE = "ml.m6i.xlarge",
    ML_M6I_2XLARGE = "ml.m6i.2xlarge",
    ML_M6I_4XLARGE = "ml.m6i.4xlarge",
    ML_M6I_8XLARGE = "ml.m6i.8xlarge",
    ML_M6I_12XLARGE = "ml.m6i.12xlarge",
    ML_M6I_16XLARGE = "ml.m6i.16xlarge",
    ML_M6I_24XLARGE = "ml.m6i.24xlarge",
    ML_M6I_32XLARGE = "ml.m6i.32xlarge",
    ML_C6I_XLARGE = "ml.c6i.xlarge",
    ML_C6I_2XLARGE = "ml.c6i.2xlarge",
    ML_C6I_8XLARGE = "ml.c6i.8xlarge",
    ML_C6I_4XLARGE = "ml.c6i.4xlarge",
    ML_C6I_12XLARGE = "ml.c6i.12xlarge",
    ML_C6I_16XLARGE = "ml.c6i.16xlarge",
    ML_C6I_24XLARGE = "ml.c6i.24xlarge",
    ML_C6I_32XLARGE = "ml.c6i.32xlarge",
    ML_R5D_LARGE = "ml.r5d.large",
    ML_R5D_XLARGE = "ml.r5d.xlarge",
    ML_R5D_2XLARGE = "ml.r5d.2xlarge",
    ML_R5D_4XLARGE = "ml.r5d.4xlarge",
    ML_R5D_8XLARGE = "ml.r5d.8xlarge",
    ML_R5D_12XLARGE = "ml.r5d.12xlarge",
    ML_R5D_16XLARGE = "ml.r5d.16xlarge",
    ML_R5D_24XLARGE = "ml.r5d.24xlarge",
    ML_T3_MEDIUM = "ml.t3.medium",
    ML_T3_LARGE = "ml.t3.large",
    ML_T3_XLARGE = "ml.t3.xlarge",
    ML_T3_2XLARGE = "ml.t3.2xlarge",
    ML_R5_LARGE = "ml.r5.large",
    ML_R5_XLARGE = "ml.r5.xlarge",
    ML_R5_2XLARGE = "ml.r5.2xlarge",
    ML_R5_4XLARGE = "ml.r5.4xlarge",
    ML_R5_8XLARGE = "ml.r5.8xlarge",
    ML_R5_12XLARGE = "ml.r5.12xlarge",
    ML_R5_16XLARGE = "ml.r5.16xlarge",
    ML_R5_24XLARGE = "ml.r5.24xlarge",
    ML_C7I_LARGE = "ml.c7i.large",
    ML_C7I_XLARGE = "ml.c7i.xlarge",
    ML_C7I_2XLARGE = "ml.c7i.2xlarge",
    ML_C7I_4XLARGE = "ml.c7i.4xlarge",
    ML_C7I_8XLARGE = "ml.c7i.8xlarge",
    ML_C7I_12XLARGE = "ml.c7i.12xlarge",
    ML_C7I_16XLARGE = "ml.c7i.16xlarge",
    ML_C7I_24XLARGE = "ml.c7i.24xlarge",
    ML_C7I_48XLARGE = "ml.c7i.48xlarge",
    ML_M7I_LARGE = "ml.m7i.large",
    ML_M7I_XLARGE = "ml.m7i.xlarge",
    ML_M7I_2XLARGE = "ml.m7i.2xlarge",
    ML_M7I_4XLARGE = "ml.m7i.4xlarge",
    ML_M7I_8XLARGE = "ml.m7i.8xlarge",
    ML_M7I_12XLARGE = "ml.m7i.12xlarge",
    ML_M7I_16XLARGE = "ml.m7i.16xlarge",
    ML_M7I_24XLARGE = "ml.m7i.24xlarge",
    ML_M7I_48XLARGE = "ml.m7i.48xlarge",
    ML_R7I_LARGE = "ml.r7i.large",
    ML_R7I_XLARGE = "ml.r7i.xlarge",
    ML_R7I_2XLARGE = "ml.r7i.2xlarge",
    ML_R7I_4XLARGE = "ml.r7i.4xlarge",
    ML_R7I_8XLARGE = "ml.r7i.8xlarge",
    ML_R7I_12XLARGE = "ml.r7i.12xlarge",
    ML_R7I_16XLARGE = "ml.r7i.16xlarge",
    ML_R7I_24XLARGE = "ml.r7i.24xlarge",
    ML_R7I_48XLARGE = "ml.r7i.48xlarge",
    ML_G6_XLARGE = "ml.g6.xlarge",
    ML_G6_2XLARGE = "ml.g6.2xlarge",
    ML_G6_4XLARGE = "ml.g6.4xlarge",
    ML_G6_8XLARGE = "ml.g6.8xlarge",
    ML_G6_12XLARGE = "ml.g6.12xlarge",
    ML_G6_16XLARGE = "ml.g6.16xlarge",
    ML_G6_24XLARGE = "ml.g6.24xlarge",
    ML_G6_48XLARGE = "ml.g6.48xlarge",
    ML_G6E_XLARGE = "ml.g6e.xlarge",
    ML_G6E_2XLARGE = "ml.g6e.2xlarge",
    ML_G6E_4XLARGE = "ml.g6e.4xlarge",
    ML_G6E_8XLARGE = "ml.g6e.8xlarge",
    ML_G6E_12XLARGE = "ml.g6e.12xlarge",
    ML_G6E_16XLARGE = "ml.g6e.16xlarge",
    ML_G6E_24XLARGE = "ml.g6e.24xlarge",
    ML_G6E_48XLARGE = "ml.g6e.48xlarge",
    ML_P5EN_48XLARGE = "ml.p5en.48xlarge",
    ML_P3_2XLARGE = "ml.p3.2xlarge",
    ML_P3_8XLARGE = "ml.p3.8xlarge",
    ML_P3_16XLARGE = "ml.p3.16xlarge",
    ML_P3DN_24XLARGE = "ml.p3dn.24xlarge",
}

M.TrainingInputMode = {
    FILE = "File",
    FAST_FILE = "FastFile",
    PIPE = "Pipe",
}

M.InferenceInstanceType = {
    ML_R7I_48XLARGE = "ml.r7i.48xlarge",
    ML_R6I_16XLARGE = "ml.r6i.16xlarge",
    ML_M6I_XLARGE = "ml.m6i.xlarge",
    ML_M5_4XLARGE = "ml.m5.4xlarge",
    ML_P2_XLARGE = "ml.p2.xlarge",
    ML_M4_16XLARGE = "ml.m4.16xlarge",
    ML_R7I_16XLARGE = "ml.r7i.16xlarge",
    ML_M7I_XLARGE = "ml.m7i.xlarge",
    ML_M6I_12XLARGE = "ml.m6i.12xlarge",
    ML_R7I_8XLARGE = "ml.r7i.8xlarge",
    ML_R7I_LARGE = "ml.r7i.large",
    ML_M7I_12XLARGE = "ml.m7i.12xlarge",
    ML_M6I_24XLARGE = "ml.m6i.24xlarge",
    ML_M7I_24XLARGE = "ml.m7i.24xlarge",
    ML_R6I_8XLARGE = "ml.r6i.8xlarge",
    ML_R6I_LARGE = "ml.r6i.large",
    ML_G5_2XLARGE = "ml.g5.2xlarge",
    ML_M5_LARGE = "ml.m5.large",
    ML_M7I_48XLARGE = "ml.m7i.48xlarge",
    ML_M6I_16XLARGE = "ml.m6i.16xlarge",
    ML_P2_16XLARGE = "ml.p2.16xlarge",
    ML_G5_4XLARGE = "ml.g5.4xlarge",
    ML_M7I_16XLARGE = "ml.m7i.16xlarge",
    ML_C4_2XLARGE = "ml.c4.2xlarge",
    ML_C5_2XLARGE = "ml.c5.2xlarge",
    ML_C6I_32XLARGE = "ml.c6i.32xlarge",
    ML_C4_4XLARGE = "ml.c4.4xlarge",
    ML_G5_8XLARGE = "ml.g5.8xlarge",
    ML_C6I_XLARGE = "ml.c6i.xlarge",
    ML_C5_4XLARGE = "ml.c5.4xlarge",
    ML_G4DN_XLARGE = "ml.g4dn.xlarge",
    ML_C7I_XLARGE = "ml.c7i.xlarge",
    ML_C6I_12XLARGE = "ml.c6i.12xlarge",
    ML_G4DN_12XLARGE = "ml.g4dn.12xlarge",
    ML_C7I_12XLARGE = "ml.c7i.12xlarge",
    ML_C6I_24XLARGE = "ml.c6i.24xlarge",
    ML_G4DN_2XLARGE = "ml.g4dn.2xlarge",
    ML_C7I_24XLARGE = "ml.c7i.24xlarge",
    ML_C7I_2XLARGE = "ml.c7i.2xlarge",
    ML_C4_8XLARGE = "ml.c4.8xlarge",
    ML_C6I_2XLARGE = "ml.c6i.2xlarge",
    ML_G4DN_4XLARGE = "ml.g4dn.4xlarge",
    ML_C7I_48XLARGE = "ml.c7i.48xlarge",
    ML_C7I_4XLARGE = "ml.c7i.4xlarge",
    ML_C6I_16XLARGE = "ml.c6i.16xlarge",
    ML_C5_9XLARGE = "ml.c5.9xlarge",
    ML_G4DN_16XLARGE = "ml.g4dn.16xlarge",
    ML_C7I_16XLARGE = "ml.c7i.16xlarge",
    ML_C6I_4XLARGE = "ml.c6i.4xlarge",
    ML_C5_XLARGE = "ml.c5.xlarge",
    ML_C4_XLARGE = "ml.c4.xlarge",
    ML_G4DN_8XLARGE = "ml.g4dn.8xlarge",
    ML_C7I_8XLARGE = "ml.c7i.8xlarge",
    ML_C7I_LARGE = "ml.c7i.large",
    ML_G5_XLARGE = "ml.g5.xlarge",
    ML_C6I_8XLARGE = "ml.c6i.8xlarge",
    ML_C6I_LARGE = "ml.c6i.large",
    ML_G5_12XLARGE = "ml.g5.12xlarge",
    ML_G5_24XLARGE = "ml.g5.24xlarge",
    ML_M7I_2XLARGE = "ml.m7i.2xlarge",
    ML_C5_18XLARGE = "ml.c5.18xlarge",
    ML_G5_48XLARGE = "ml.g5.48xlarge",
    ML_M6I_2XLARGE = "ml.m6i.2xlarge",
    ML_G5_16XLARGE = "ml.g5.16xlarge",
    ML_M7I_4XLARGE = "ml.m7i.4xlarge",
    ML_R6I_32XLARGE = "ml.r6i.32xlarge",
    ML_M6I_4XLARGE = "ml.m6i.4xlarge",
    ML_M5_XLARGE = "ml.m5.xlarge",
    ML_M4_10XLARGE = "ml.m4.10xlarge",
    ML_R6I_XLARGE = "ml.r6i.xlarge",
    ML_M5_12XLARGE = "ml.m5.12xlarge",
    ML_M4_XLARGE = "ml.m4.xlarge",
    ML_R7I_2XLARGE = "ml.r7i.2xlarge",
    ML_R7I_XLARGE = "ml.r7i.xlarge",
    ML_R6I_12XLARGE = "ml.r6i.12xlarge",
    ML_M5_24XLARGE = "ml.m5.24xlarge",
    ML_R7I_12XLARGE = "ml.r7i.12xlarge",
    ML_M7I_8XLARGE = "ml.m7i.8xlarge",
    ML_M7I_LARGE = "ml.m7i.large",
    ML_R6I_24XLARGE = "ml.r6i.24xlarge",
    ML_R6I_2XLARGE = "ml.r6i.2xlarge",
    ML_M4_2XLARGE = "ml.m4.2xlarge",
    ML_R7I_24XLARGE = "ml.r7i.24xlarge",
    ML_R7I_4XLARGE = "ml.r7i.4xlarge",
    ML_M6I_8XLARGE = "ml.m6i.8xlarge",
    ML_M6I_LARGE = "ml.m6i.large",
    ML_M5_2XLARGE = "ml.m5.2xlarge",
    ML_P2_8XLARGE = "ml.p2.8xlarge",
    ML_R6I_4XLARGE = "ml.r6i.4xlarge",
    ML_M6I_32XLARGE = "ml.m6i.32xlarge",
    ML_M4_4XLARGE = "ml.m4.4xlarge",
    ML_P3_16XLARGE = "ml.p3.16xlarge",
    ML_P3_2XLARGE = "ml.p3.2xlarge",
    ML_P3_8XLARGE = "ml.p3.8xlarge",
}

M.ColumnType = {
    USER_ID = "USER_ID",
    ITEM_ID = "ITEM_ID",
    TIMESTAMP = "TIMESTAMP",
    CATEGORICAL_FEATURE = "CATEGORICAL_FEATURE",
    NUMERICAL_FEATURE = "NUMERICAL_FEATURE",
}

M.DatasetType = {
    INTERACTIONS = "INTERACTIONS",
}

M.TrainingDatasetStatus = {
    ACTIVE = "ACTIVE",
}

return M
