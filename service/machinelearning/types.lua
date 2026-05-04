local M = {}

M.TaggableResourceType = {
    BATCH_PREDICTION = "BatchPrediction",
    DATASOURCE = "DataSource",
    EVALUATION = "Evaluation",
    ML_MODEL = "MLModel",
}

M.Tag = {
    type = "structure",
    members = {
        Key = {
            type = "string",
        },
        Value = {
            type = "string",
        },
    },
}

M.AddTagsInput = {
    type = "structure",
    members = {
        Tags = {
            type = "list",
            member_type = "structure",
            traits = {
                required = true,
            },
        },
        ResourceId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        ResourceType = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.AddTagsOutput = {
    type = "structure",
    members = {
        ResourceId = {
            type = "string",
        },
        ResourceType = {
            type = "string",
        },
    },
}

M.InternalServerException = {
    type = "structure",
    error = "server",
    members = {
        message = {
            type = "string",
        },
        code = {
            type = "number",
        },
    },
}

M.InvalidInputException = {
    type = "structure",
    error = "client",
    members = {
        message = {
            type = "string",
        },
        code = {
            type = "number",
        },
    },
}

M.InvalidTagException = {
    type = "structure",
    error = "client",
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
        code = {
            type = "number",
        },
    },
}

M.TagLimitExceededException = {
    type = "structure",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.Algorithm = {
    SGD = "sgd",
}

M.CreateBatchPredictionInput = {
    type = "structure",
    members = {
        BatchPredictionId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        BatchPredictionName = {
            type = "string",
        },
        MLModelId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        BatchPredictionDataSourceId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        OutputUri = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.CreateBatchPredictionOutput = {
    type = "structure",
    members = {
        BatchPredictionId = {
            type = "string",
        },
    },
}

M.IdempotentParameterMismatchException = {
    type = "structure",
    error = "client",
    members = {
        message = {
            type = "string",
        },
        code = {
            type = "number",
        },
    },
}

M.RDSDatabaseCredentials = {
    type = "structure",
    members = {
        Username = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Password = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.RDSDatabase = {
    type = "structure",
    members = {
        InstanceIdentifier = {
            type = "string",
            traits = {
                required = true,
            },
        },
        DatabaseName = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.RDSDataSpec = {
    type = "structure",
    members = {
        DatabaseInformation = {
            type = "structure",
            traits = {
                required = true,
            },
        },
        SelectSqlQuery = {
            type = "string",
            traits = {
                required = true,
            },
        },
        DatabaseCredentials = {
            type = "structure",
            traits = {
                required = true,
            },
        },
        S3StagingLocation = {
            type = "string",
            traits = {
                required = true,
            },
        },
        DataRearrangement = {
            type = "string",
        },
        DataSchema = {
            type = "string",
        },
        DataSchemaUri = {
            type = "string",
        },
        ResourceRole = {
            type = "string",
            traits = {
                required = true,
            },
        },
        ServiceRole = {
            type = "string",
            traits = {
                required = true,
            },
        },
        SubnetId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        SecurityGroupIds = {
            type = "list",
            member_type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.CreateDataSourceFromRDSInput = {
    type = "structure",
    members = {
        DataSourceId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        DataSourceName = {
            type = "string",
        },
        RDSData = {
            type = "structure",
            traits = {
                required = true,
            },
        },
        RoleARN = {
            type = "string",
            traits = {
                required = true,
            },
        },
        ComputeStatistics = {
            type = "boolean",
        },
    },
}

M.CreateDataSourceFromRDSOutput = {
    type = "structure",
    members = {
        DataSourceId = {
            type = "string",
        },
    },
}

M.RedshiftDatabaseCredentials = {
    type = "structure",
    members = {
        Username = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Password = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.RedshiftDatabase = {
    type = "structure",
    members = {
        DatabaseName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        ClusterIdentifier = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.RedshiftDataSpec = {
    type = "structure",
    members = {
        DatabaseInformation = {
            type = "structure",
            traits = {
                required = true,
            },
        },
        SelectSqlQuery = {
            type = "string",
            traits = {
                required = true,
            },
        },
        DatabaseCredentials = {
            type = "structure",
            traits = {
                required = true,
            },
        },
        S3StagingLocation = {
            type = "string",
            traits = {
                required = true,
            },
        },
        DataRearrangement = {
            type = "string",
        },
        DataSchema = {
            type = "string",
        },
        DataSchemaUri = {
            type = "string",
        },
    },
}

M.CreateDataSourceFromRedshiftInput = {
    type = "structure",
    members = {
        DataSourceId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        DataSourceName = {
            type = "string",
        },
        DataSpec = {
            type = "structure",
            traits = {
                required = true,
            },
        },
        RoleARN = {
            type = "string",
            traits = {
                required = true,
            },
        },
        ComputeStatistics = {
            type = "boolean",
        },
    },
}

M.CreateDataSourceFromRedshiftOutput = {
    type = "structure",
    members = {
        DataSourceId = {
            type = "string",
        },
    },
}

M.S3DataSpec = {
    type = "structure",
    members = {
        DataLocationS3 = {
            type = "string",
            traits = {
                required = true,
            },
        },
        DataRearrangement = {
            type = "string",
        },
        DataSchema = {
            type = "string",
        },
        DataSchemaLocationS3 = {
            type = "string",
        },
    },
}

M.CreateDataSourceFromS3Input = {
    type = "structure",
    members = {
        DataSourceId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        DataSourceName = {
            type = "string",
        },
        DataSpec = {
            type = "structure",
            traits = {
                required = true,
            },
        },
        ComputeStatistics = {
            type = "boolean",
        },
    },
}

M.CreateDataSourceFromS3Output = {
    type = "structure",
    members = {
        DataSourceId = {
            type = "string",
        },
    },
}

M.CreateEvaluationInput = {
    type = "structure",
    members = {
        EvaluationId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        EvaluationName = {
            type = "string",
        },
        MLModelId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        EvaluationDataSourceId = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.CreateEvaluationOutput = {
    type = "structure",
    members = {
        EvaluationId = {
            type = "string",
        },
    },
}

M.MLModelType = {
    REGRESSION = "REGRESSION",
    BINARY = "BINARY",
    MULTICLASS = "MULTICLASS",
}

M.CreateMLModelInput = {
    type = "structure",
    members = {
        MLModelId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        MLModelName = {
            type = "string",
        },
        MLModelType = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Parameters = {
            type = "map",
            key_type = "string",
            value_type = "string",
        },
        TrainingDataSourceId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Recipe = {
            type = "string",
        },
        RecipeUri = {
            type = "string",
        },
    },
}

M.CreateMLModelOutput = {
    type = "structure",
    members = {
        MLModelId = {
            type = "string",
        },
    },
}

M.CreateRealtimeEndpointInput = {
    type = "structure",
    members = {
        MLModelId = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.RealtimeEndpointStatus = {
    NONE = "NONE",
    READY = "READY",
    UPDATING = "UPDATING",
    FAILED = "FAILED",
}

M.RealtimeEndpointInfo = {
    type = "structure",
    members = {
        PeakRequestsPerSecond = {
            type = "number",
        },
        CreatedAt = {
            type = "timestamp",
        },
        EndpointUrl = {
            type = "string",
        },
        EndpointStatus = {
            type = "string",
        },
    },
}

M.CreateRealtimeEndpointOutput = {
    type = "structure",
    members = {
        MLModelId = {
            type = "string",
        },
        RealtimeEndpointInfo = {
            type = "structure",
        },
    },
}

M.DeleteBatchPredictionInput = {
    type = "structure",
    members = {
        BatchPredictionId = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.DeleteBatchPredictionOutput = {
    type = "structure",
    members = {
        BatchPredictionId = {
            type = "string",
        },
    },
}

M.DeleteDataSourceInput = {
    type = "structure",
    members = {
        DataSourceId = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.DeleteDataSourceOutput = {
    type = "structure",
    members = {
        DataSourceId = {
            type = "string",
        },
    },
}

M.DeleteEvaluationInput = {
    type = "structure",
    members = {
        EvaluationId = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.DeleteEvaluationOutput = {
    type = "structure",
    members = {
        EvaluationId = {
            type = "string",
        },
    },
}

M.DeleteMLModelInput = {
    type = "structure",
    members = {
        MLModelId = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.DeleteMLModelOutput = {
    type = "structure",
    members = {
        MLModelId = {
            type = "string",
        },
    },
}

M.DeleteRealtimeEndpointInput = {
    type = "structure",
    members = {
        MLModelId = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.DeleteRealtimeEndpointOutput = {
    type = "structure",
    members = {
        MLModelId = {
            type = "string",
        },
        RealtimeEndpointInfo = {
            type = "structure",
        },
    },
}

M.DeleteTagsInput = {
    type = "structure",
    members = {
        TagKeys = {
            type = "list",
            member_type = "string",
            traits = {
                required = true,
            },
        },
        ResourceId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        ResourceType = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.DeleteTagsOutput = {
    type = "structure",
    members = {
        ResourceId = {
            type = "string",
        },
        ResourceType = {
            type = "string",
        },
    },
}

M.BatchPredictionFilterVariable = {
    CREATED_AT = "CreatedAt",
    LAST_UPDATED_AT = "LastUpdatedAt",
    STATUS = "Status",
    NAME = "Name",
    IAM_USER = "IAMUser",
    ML_MODEL_ID = "MLModelId",
    DATASOURCE_ID = "DataSourceId",
    DATA_URI = "DataURI",
}

M.SortOrder = {
    ASC = "asc",
    DSC = "dsc",
}

M.DescribeBatchPredictionsInput = {
    type = "structure",
    members = {
        FilterVariable = {
            type = "string",
        },
        EQ = {
            type = "string",
        },
        GT = {
            type = "string",
        },
        LT = {
            type = "string",
        },
        GE = {
            type = "string",
        },
        LE = {
            type = "string",
        },
        NE = {
            type = "string",
        },
        Prefix = {
            type = "string",
        },
        SortOrder = {
            type = "string",
        },
        NextToken = {
            type = "string",
        },
        Limit = {
            type = "number",
        },
    },
}

M.EntityStatus = {
    PENDING = "PENDING",
    INPROGRESS = "INPROGRESS",
    FAILED = "FAILED",
    COMPLETED = "COMPLETED",
    DELETED = "DELETED",
}

M.BatchPrediction = {
    type = "structure",
    members = {
        BatchPredictionId = {
            type = "string",
        },
        MLModelId = {
            type = "string",
        },
        BatchPredictionDataSourceId = {
            type = "string",
        },
        InputDataLocationS3 = {
            type = "string",
        },
        CreatedByIamUser = {
            type = "string",
        },
        CreatedAt = {
            type = "timestamp",
        },
        LastUpdatedAt = {
            type = "timestamp",
        },
        Name = {
            type = "string",
        },
        Status = {
            type = "string",
        },
        OutputUri = {
            type = "string",
        },
        Message = {
            type = "string",
        },
        ComputeTime = {
            type = "number",
        },
        FinishedAt = {
            type = "timestamp",
        },
        StartedAt = {
            type = "timestamp",
        },
        TotalRecordCount = {
            type = "number",
        },
        InvalidRecordCount = {
            type = "number",
        },
    },
}

M.DescribeBatchPredictionsOutput = {
    type = "structure",
    members = {
        Results = {
            type = "list",
            member_type = "structure",
        },
        NextToken = {
            type = "string",
        },
    },
}

M.DataSourceFilterVariable = {
    CREATED_AT = "CreatedAt",
    LAST_UPDATED_AT = "LastUpdatedAt",
    STATUS = "Status",
    NAME = "Name",
    DATA_URI = "DataLocationS3",
    IAM_USER = "IAMUser",
}

M.DescribeDataSourcesInput = {
    type = "structure",
    members = {
        FilterVariable = {
            type = "string",
        },
        EQ = {
            type = "string",
        },
        GT = {
            type = "string",
        },
        LT = {
            type = "string",
        },
        GE = {
            type = "string",
        },
        LE = {
            type = "string",
        },
        NE = {
            type = "string",
        },
        Prefix = {
            type = "string",
        },
        SortOrder = {
            type = "string",
        },
        NextToken = {
            type = "string",
        },
        Limit = {
            type = "number",
        },
    },
}

M.RDSMetadata = {
    type = "structure",
    members = {
        Database = {
            type = "structure",
        },
        DatabaseUserName = {
            type = "string",
        },
        SelectSqlQuery = {
            type = "string",
        },
        ResourceRole = {
            type = "string",
        },
        ServiceRole = {
            type = "string",
        },
        DataPipelineId = {
            type = "string",
        },
    },
}

M.RedshiftMetadata = {
    type = "structure",
    members = {
        RedshiftDatabase = {
            type = "structure",
        },
        DatabaseUserName = {
            type = "string",
        },
        SelectSqlQuery = {
            type = "string",
        },
    },
}

M.DataSource = {
    type = "structure",
    members = {
        DataSourceId = {
            type = "string",
        },
        DataLocationS3 = {
            type = "string",
        },
        DataRearrangement = {
            type = "string",
        },
        CreatedByIamUser = {
            type = "string",
        },
        CreatedAt = {
            type = "timestamp",
        },
        LastUpdatedAt = {
            type = "timestamp",
        },
        DataSizeInBytes = {
            type = "number",
        },
        NumberOfFiles = {
            type = "number",
        },
        Name = {
            type = "string",
        },
        Status = {
            type = "string",
        },
        Message = {
            type = "string",
        },
        RedshiftMetadata = {
            type = "structure",
        },
        RDSMetadata = {
            type = "structure",
        },
        RoleARN = {
            type = "string",
        },
        ComputeStatistics = {
            type = "boolean",
        },
        ComputeTime = {
            type = "number",
        },
        FinishedAt = {
            type = "timestamp",
        },
        StartedAt = {
            type = "timestamp",
        },
    },
}

M.DescribeDataSourcesOutput = {
    type = "structure",
    members = {
        Results = {
            type = "list",
            member_type = "structure",
        },
        NextToken = {
            type = "string",
        },
    },
}

M.EvaluationFilterVariable = {
    CREATED_AT = "CreatedAt",
    LAST_UPDATED_AT = "LastUpdatedAt",
    STATUS = "Status",
    NAME = "Name",
    IAM_USER = "IAMUser",
    ML_MODEL_ID = "MLModelId",
    DATASOURCE_ID = "DataSourceId",
    DATA_URI = "DataURI",
}

M.DescribeEvaluationsInput = {
    type = "structure",
    members = {
        FilterVariable = {
            type = "string",
        },
        EQ = {
            type = "string",
        },
        GT = {
            type = "string",
        },
        LT = {
            type = "string",
        },
        GE = {
            type = "string",
        },
        LE = {
            type = "string",
        },
        NE = {
            type = "string",
        },
        Prefix = {
            type = "string",
        },
        SortOrder = {
            type = "string",
        },
        NextToken = {
            type = "string",
        },
        Limit = {
            type = "number",
        },
    },
}

M.PerformanceMetrics = {
    type = "structure",
    members = {
        Properties = {
            type = "map",
            key_type = "string",
            value_type = "string",
        },
    },
}

M.Evaluation = {
    type = "structure",
    members = {
        EvaluationId = {
            type = "string",
        },
        MLModelId = {
            type = "string",
        },
        EvaluationDataSourceId = {
            type = "string",
        },
        InputDataLocationS3 = {
            type = "string",
        },
        CreatedByIamUser = {
            type = "string",
        },
        CreatedAt = {
            type = "timestamp",
        },
        LastUpdatedAt = {
            type = "timestamp",
        },
        Name = {
            type = "string",
        },
        Status = {
            type = "string",
        },
        PerformanceMetrics = {
            type = "structure",
        },
        Message = {
            type = "string",
        },
        ComputeTime = {
            type = "number",
        },
        FinishedAt = {
            type = "timestamp",
        },
        StartedAt = {
            type = "timestamp",
        },
    },
}

M.DescribeEvaluationsOutput = {
    type = "structure",
    members = {
        Results = {
            type = "list",
            member_type = "structure",
        },
        NextToken = {
            type = "string",
        },
    },
}

M.MLModelFilterVariable = {
    CREATED_AT = "CreatedAt",
    LAST_UPDATED_AT = "LastUpdatedAt",
    STATUS = "Status",
    NAME = "Name",
    IAM_USER = "IAMUser",
    TRAINING_DATASOURCE_ID = "TrainingDataSourceId",
    REAL_TIME_ENDPOINT_STATUS = "RealtimeEndpointStatus",
    ML_MODEL_TYPE = "MLModelType",
    ALGORITHM = "Algorithm",
    TRAINING_DATA_URI = "TrainingDataURI",
}

M.DescribeMLModelsInput = {
    type = "structure",
    members = {
        FilterVariable = {
            type = "string",
        },
        EQ = {
            type = "string",
        },
        GT = {
            type = "string",
        },
        LT = {
            type = "string",
        },
        GE = {
            type = "string",
        },
        LE = {
            type = "string",
        },
        NE = {
            type = "string",
        },
        Prefix = {
            type = "string",
        },
        SortOrder = {
            type = "string",
        },
        NextToken = {
            type = "string",
        },
        Limit = {
            type = "number",
        },
    },
}

M.MLModel = {
    type = "structure",
    members = {
        MLModelId = {
            type = "string",
        },
        TrainingDataSourceId = {
            type = "string",
        },
        CreatedByIamUser = {
            type = "string",
        },
        CreatedAt = {
            type = "timestamp",
        },
        LastUpdatedAt = {
            type = "timestamp",
        },
        Name = {
            type = "string",
        },
        Status = {
            type = "string",
        },
        SizeInBytes = {
            type = "number",
        },
        EndpointInfo = {
            type = "structure",
        },
        TrainingParameters = {
            type = "map",
            key_type = "string",
            value_type = "string",
        },
        InputDataLocationS3 = {
            type = "string",
        },
        Algorithm = {
            type = "string",
        },
        MLModelType = {
            type = "string",
        },
        ScoreThreshold = {
            type = "number",
        },
        ScoreThresholdLastUpdatedAt = {
            type = "timestamp",
        },
        Message = {
            type = "string",
        },
        ComputeTime = {
            type = "number",
        },
        FinishedAt = {
            type = "timestamp",
        },
        StartedAt = {
            type = "timestamp",
        },
    },
}

M.DescribeMLModelsOutput = {
    type = "structure",
    members = {
        Results = {
            type = "list",
            member_type = "structure",
        },
        NextToken = {
            type = "string",
        },
    },
}

M.DescribeTagsInput = {
    type = "structure",
    members = {
        ResourceId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        ResourceType = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.DescribeTagsOutput = {
    type = "structure",
    members = {
        ResourceId = {
            type = "string",
        },
        ResourceType = {
            type = "string",
        },
        Tags = {
            type = "list",
            member_type = "structure",
        },
    },
}

M.GetBatchPredictionInput = {
    type = "structure",
    members = {
        BatchPredictionId = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.GetBatchPredictionOutput = {
    type = "structure",
    members = {
        BatchPredictionId = {
            type = "string",
        },
        MLModelId = {
            type = "string",
        },
        BatchPredictionDataSourceId = {
            type = "string",
        },
        InputDataLocationS3 = {
            type = "string",
        },
        CreatedByIamUser = {
            type = "string",
        },
        CreatedAt = {
            type = "timestamp",
        },
        LastUpdatedAt = {
            type = "timestamp",
        },
        Name = {
            type = "string",
        },
        Status = {
            type = "string",
        },
        OutputUri = {
            type = "string",
        },
        LogUri = {
            type = "string",
        },
        Message = {
            type = "string",
        },
        ComputeTime = {
            type = "number",
        },
        FinishedAt = {
            type = "timestamp",
        },
        StartedAt = {
            type = "timestamp",
        },
        TotalRecordCount = {
            type = "number",
        },
        InvalidRecordCount = {
            type = "number",
        },
    },
}

M.GetDataSourceInput = {
    type = "structure",
    members = {
        DataSourceId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Verbose = {
            type = "boolean",
        },
    },
}

M.GetDataSourceOutput = {
    type = "structure",
    members = {
        DataSourceId = {
            type = "string",
        },
        DataLocationS3 = {
            type = "string",
        },
        DataRearrangement = {
            type = "string",
        },
        CreatedByIamUser = {
            type = "string",
        },
        CreatedAt = {
            type = "timestamp",
        },
        LastUpdatedAt = {
            type = "timestamp",
        },
        DataSizeInBytes = {
            type = "number",
        },
        NumberOfFiles = {
            type = "number",
        },
        Name = {
            type = "string",
        },
        Status = {
            type = "string",
        },
        LogUri = {
            type = "string",
        },
        Message = {
            type = "string",
        },
        RedshiftMetadata = {
            type = "structure",
        },
        RDSMetadata = {
            type = "structure",
        },
        RoleARN = {
            type = "string",
        },
        ComputeStatistics = {
            type = "boolean",
        },
        ComputeTime = {
            type = "number",
        },
        FinishedAt = {
            type = "timestamp",
        },
        StartedAt = {
            type = "timestamp",
        },
        DataSourceSchema = {
            type = "string",
        },
    },
}

M.GetEvaluationInput = {
    type = "structure",
    members = {
        EvaluationId = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.GetEvaluationOutput = {
    type = "structure",
    members = {
        EvaluationId = {
            type = "string",
        },
        MLModelId = {
            type = "string",
        },
        EvaluationDataSourceId = {
            type = "string",
        },
        InputDataLocationS3 = {
            type = "string",
        },
        CreatedByIamUser = {
            type = "string",
        },
        CreatedAt = {
            type = "timestamp",
        },
        LastUpdatedAt = {
            type = "timestamp",
        },
        Name = {
            type = "string",
        },
        Status = {
            type = "string",
        },
        PerformanceMetrics = {
            type = "structure",
        },
        LogUri = {
            type = "string",
        },
        Message = {
            type = "string",
        },
        ComputeTime = {
            type = "number",
        },
        FinishedAt = {
            type = "timestamp",
        },
        StartedAt = {
            type = "timestamp",
        },
    },
}

M.GetMLModelInput = {
    type = "structure",
    members = {
        MLModelId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Verbose = {
            type = "boolean",
        },
    },
}

M.GetMLModelOutput = {
    type = "structure",
    members = {
        MLModelId = {
            type = "string",
        },
        TrainingDataSourceId = {
            type = "string",
        },
        CreatedByIamUser = {
            type = "string",
        },
        CreatedAt = {
            type = "timestamp",
        },
        LastUpdatedAt = {
            type = "timestamp",
        },
        Name = {
            type = "string",
        },
        Status = {
            type = "string",
        },
        SizeInBytes = {
            type = "number",
        },
        EndpointInfo = {
            type = "structure",
        },
        TrainingParameters = {
            type = "map",
            key_type = "string",
            value_type = "string",
        },
        InputDataLocationS3 = {
            type = "string",
        },
        MLModelType = {
            type = "string",
        },
        ScoreThreshold = {
            type = "number",
        },
        ScoreThresholdLastUpdatedAt = {
            type = "timestamp",
        },
        LogUri = {
            type = "string",
        },
        Message = {
            type = "string",
        },
        ComputeTime = {
            type = "number",
        },
        FinishedAt = {
            type = "timestamp",
        },
        StartedAt = {
            type = "timestamp",
        },
        Recipe = {
            type = "string",
        },
        Schema = {
            type = "string",
        },
    },
}

M.LimitExceededException = {
    type = "structure",
    error = "client",
    members = {
        message = {
            type = "string",
        },
        code = {
            type = "number",
        },
    },
}

M.PredictInput = {
    type = "structure",
    members = {
        MLModelId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Record = {
            type = "map",
            key_type = "string",
            value_type = "string",
            traits = {
                required = true,
            },
        },
        PredictEndpoint = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.PredictorNotMountedException = {
    type = "structure",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.DetailsAttributes = {
    PREDICTIVE_MODEL_TYPE = "PredictiveModelType",
    ALGORITHM = "Algorithm",
}

M.Prediction = {
    type = "structure",
    members = {
        predictedLabel = {
            type = "string",
        },
        predictedValue = {
            type = "number",
        },
        predictedScores = {
            type = "map",
            key_type = "string",
            value_type = "number",
        },
        details = {
            type = "map",
            key_type = "string",
            value_type = "string",
        },
    },
}

M.PredictOutput = {
    type = "structure",
    members = {
        Prediction = {
            type = "structure",
        },
    },
}

M.UpdateBatchPredictionInput = {
    type = "structure",
    members = {
        BatchPredictionId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        BatchPredictionName = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.UpdateBatchPredictionOutput = {
    type = "structure",
    members = {
        BatchPredictionId = {
            type = "string",
        },
    },
}

M.UpdateDataSourceInput = {
    type = "structure",
    members = {
        DataSourceId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        DataSourceName = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.UpdateDataSourceOutput = {
    type = "structure",
    members = {
        DataSourceId = {
            type = "string",
        },
    },
}

M.UpdateEvaluationInput = {
    type = "structure",
    members = {
        EvaluationId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        EvaluationName = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.UpdateEvaluationOutput = {
    type = "structure",
    members = {
        EvaluationId = {
            type = "string",
        },
    },
}

M.UpdateMLModelInput = {
    type = "structure",
    members = {
        MLModelId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        MLModelName = {
            type = "string",
        },
        ScoreThreshold = {
            type = "number",
        },
    },
}

M.UpdateMLModelOutput = {
    type = "structure",
    members = {
        MLModelId = {
            type = "string",
        },
    },
}

return M
