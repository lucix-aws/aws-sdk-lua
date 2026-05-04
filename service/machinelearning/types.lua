local M = {}

M.TaggableResourceType = {
    BATCH_PREDICTION = "BatchPrediction",
    DATASOURCE = "DataSource",
    EVALUATION = "Evaluation",
    ML_MODEL = "MLModel",
}

M.Tag = {
    type = "structure",
    id = "Tag",
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
    id = "AddTagsInput",
    members = {
        Tags = {
            type = "list",
            member = M.Tag,
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
    id = "AddTagsOutput",
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
    id = "InternalServerException",
    error = "server",
    members = {
        message = {
            type = "string",
        },
        code = {
            type = "integer",
            traits = {
                default = 0,
            },
        },
    },
}

M.InvalidInputException = {
    type = "structure",
    id = "InvalidInputException",
    error = "client",
    members = {
        message = {
            type = "string",
        },
        code = {
            type = "integer",
            traits = {
                default = 0,
            },
        },
    },
}

M.InvalidTagException = {
    type = "structure",
    id = "InvalidTagException",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.ResourceNotFoundException = {
    type = "structure",
    id = "ResourceNotFoundException",
    error = "client",
    members = {
        message = {
            type = "string",
        },
        code = {
            type = "integer",
            traits = {
                default = 0,
            },
        },
    },
}

M.TagLimitExceededException = {
    type = "structure",
    id = "TagLimitExceededException",
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
    id = "CreateBatchPredictionInput",
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
    id = "CreateBatchPredictionOutput",
    members = {
        BatchPredictionId = {
            type = "string",
        },
    },
}

M.IdempotentParameterMismatchException = {
    type = "structure",
    id = "IdempotentParameterMismatchException",
    error = "client",
    members = {
        message = {
            type = "string",
        },
        code = {
            type = "integer",
            traits = {
                default = 0,
            },
        },
    },
}

M.RDSDatabaseCredentials = {
    type = "structure",
    id = "RDSDatabaseCredentials",
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
    id = "RDSDatabase",
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
    id = "RDSDataSpec",
    members = {
        DatabaseInformation = setmetatable({ traits = {
            required = true,
        } }, { __index = M.RDSDatabase }),
        SelectSqlQuery = {
            type = "string",
            traits = {
                required = true,
            },
        },
        DatabaseCredentials = setmetatable({ traits = {
            required = true,
        } }, { __index = M.RDSDatabaseCredentials }),
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
            member = { type = "string" },
            traits = {
                required = true,
            },
        },
    },
}

M.CreateDataSourceFromRDSInput = {
    type = "structure",
    id = "CreateDataSourceFromRDSInput",
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
        RDSData = setmetatable({ traits = {
            required = true,
        } }, { __index = M.RDSDataSpec }),
        RoleARN = {
            type = "string",
            traits = {
                required = true,
            },
        },
        ComputeStatistics = {
            type = "boolean",
            traits = {
                default = false,
            },
        },
    },
}

M.CreateDataSourceFromRDSOutput = {
    type = "structure",
    id = "CreateDataSourceFromRDSOutput",
    members = {
        DataSourceId = {
            type = "string",
        },
    },
}

M.RedshiftDatabaseCredentials = {
    type = "structure",
    id = "RedshiftDatabaseCredentials",
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
    id = "RedshiftDatabase",
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
    id = "RedshiftDataSpec",
    members = {
        DatabaseInformation = setmetatable({ traits = {
            required = true,
        } }, { __index = M.RedshiftDatabase }),
        SelectSqlQuery = {
            type = "string",
            traits = {
                required = true,
            },
        },
        DatabaseCredentials = setmetatable({ traits = {
            required = true,
        } }, { __index = M.RedshiftDatabaseCredentials }),
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
    id = "CreateDataSourceFromRedshiftInput",
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
        DataSpec = setmetatable({ traits = {
            required = true,
        } }, { __index = M.RedshiftDataSpec }),
        RoleARN = {
            type = "string",
            traits = {
                required = true,
            },
        },
        ComputeStatistics = {
            type = "boolean",
            traits = {
                default = false,
            },
        },
    },
}

M.CreateDataSourceFromRedshiftOutput = {
    type = "structure",
    id = "CreateDataSourceFromRedshiftOutput",
    members = {
        DataSourceId = {
            type = "string",
        },
    },
}

M.S3DataSpec = {
    type = "structure",
    id = "S3DataSpec",
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
    id = "CreateDataSourceFromS3Input",
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
        DataSpec = setmetatable({ traits = {
            required = true,
        } }, { __index = M.S3DataSpec }),
        ComputeStatistics = {
            type = "boolean",
            traits = {
                default = false,
            },
        },
    },
}

M.CreateDataSourceFromS3Output = {
    type = "structure",
    id = "CreateDataSourceFromS3Output",
    members = {
        DataSourceId = {
            type = "string",
        },
    },
}

M.CreateEvaluationInput = {
    type = "structure",
    id = "CreateEvaluationInput",
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
    id = "CreateEvaluationOutput",
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
    id = "CreateMLModelInput",
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
            key = { type = "string" },
            value = { type = "string" },
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
    id = "CreateMLModelOutput",
    members = {
        MLModelId = {
            type = "string",
        },
    },
}

M.CreateRealtimeEndpointInput = {
    type = "structure",
    id = "CreateRealtimeEndpointInput",
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
    id = "RealtimeEndpointInfo",
    members = {
        PeakRequestsPerSecond = {
            type = "integer",
            traits = {
                default = 0,
            },
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
    id = "CreateRealtimeEndpointOutput",
    members = {
        MLModelId = {
            type = "string",
        },
        RealtimeEndpointInfo = M.RealtimeEndpointInfo,
    },
}

M.DeleteBatchPredictionInput = {
    type = "structure",
    id = "DeleteBatchPredictionInput",
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
    id = "DeleteBatchPredictionOutput",
    members = {
        BatchPredictionId = {
            type = "string",
        },
    },
}

M.DeleteDataSourceInput = {
    type = "structure",
    id = "DeleteDataSourceInput",
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
    id = "DeleteDataSourceOutput",
    members = {
        DataSourceId = {
            type = "string",
        },
    },
}

M.DeleteEvaluationInput = {
    type = "structure",
    id = "DeleteEvaluationInput",
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
    id = "DeleteEvaluationOutput",
    members = {
        EvaluationId = {
            type = "string",
        },
    },
}

M.DeleteMLModelInput = {
    type = "structure",
    id = "DeleteMLModelInput",
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
    id = "DeleteMLModelOutput",
    members = {
        MLModelId = {
            type = "string",
        },
    },
}

M.DeleteRealtimeEndpointInput = {
    type = "structure",
    id = "DeleteRealtimeEndpointInput",
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
    id = "DeleteRealtimeEndpointOutput",
    members = {
        MLModelId = {
            type = "string",
        },
        RealtimeEndpointInfo = M.RealtimeEndpointInfo,
    },
}

M.DeleteTagsInput = {
    type = "structure",
    id = "DeleteTagsInput",
    members = {
        TagKeys = {
            type = "list",
            member = { type = "string" },
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
    id = "DeleteTagsOutput",
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
    id = "DescribeBatchPredictionsInput",
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
            type = "integer",
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
    id = "BatchPrediction",
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
            type = "long",
        },
        FinishedAt = {
            type = "timestamp",
        },
        StartedAt = {
            type = "timestamp",
        },
        TotalRecordCount = {
            type = "long",
        },
        InvalidRecordCount = {
            type = "long",
        },
    },
}

M.DescribeBatchPredictionsOutput = {
    type = "structure",
    id = "DescribeBatchPredictionsOutput",
    members = {
        Results = {
            type = "list",
            member = M.BatchPrediction,
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
    id = "DescribeDataSourcesInput",
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
            type = "integer",
        },
    },
}

M.RDSMetadata = {
    type = "structure",
    id = "RDSMetadata",
    members = {
        Database = M.RDSDatabase,
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
    id = "RedshiftMetadata",
    members = {
        RedshiftDatabase = M.RedshiftDatabase,
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
    id = "DataSource",
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
            type = "long",
        },
        NumberOfFiles = {
            type = "long",
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
        RedshiftMetadata = M.RedshiftMetadata,
        RDSMetadata = M.RDSMetadata,
        RoleARN = {
            type = "string",
        },
        ComputeStatistics = {
            type = "boolean",
            traits = {
                default = false,
            },
        },
        ComputeTime = {
            type = "long",
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
    id = "DescribeDataSourcesOutput",
    members = {
        Results = {
            type = "list",
            member = M.DataSource,
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
    id = "DescribeEvaluationsInput",
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
            type = "integer",
        },
    },
}

M.PerformanceMetrics = {
    type = "structure",
    id = "PerformanceMetrics",
    members = {
        Properties = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
    },
}

M.Evaluation = {
    type = "structure",
    id = "Evaluation",
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
        PerformanceMetrics = M.PerformanceMetrics,
        Message = {
            type = "string",
        },
        ComputeTime = {
            type = "long",
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
    id = "DescribeEvaluationsOutput",
    members = {
        Results = {
            type = "list",
            member = M.Evaluation,
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
    id = "DescribeMLModelsInput",
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
            type = "integer",
        },
    },
}

M.MLModel = {
    type = "structure",
    id = "MLModel",
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
            type = "long",
        },
        EndpointInfo = M.RealtimeEndpointInfo,
        TrainingParameters = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
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
            type = "float",
        },
        ScoreThresholdLastUpdatedAt = {
            type = "timestamp",
        },
        Message = {
            type = "string",
        },
        ComputeTime = {
            type = "long",
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
    id = "DescribeMLModelsOutput",
    members = {
        Results = {
            type = "list",
            member = M.MLModel,
        },
        NextToken = {
            type = "string",
        },
    },
}

M.DescribeTagsInput = {
    type = "structure",
    id = "DescribeTagsInput",
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
    id = "DescribeTagsOutput",
    members = {
        ResourceId = {
            type = "string",
        },
        ResourceType = {
            type = "string",
        },
        Tags = {
            type = "list",
            member = M.Tag,
        },
    },
}

M.GetBatchPredictionInput = {
    type = "structure",
    id = "GetBatchPredictionInput",
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
    id = "GetBatchPredictionOutput",
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
            type = "long",
        },
        FinishedAt = {
            type = "timestamp",
        },
        StartedAt = {
            type = "timestamp",
        },
        TotalRecordCount = {
            type = "long",
        },
        InvalidRecordCount = {
            type = "long",
        },
    },
}

M.GetDataSourceInput = {
    type = "structure",
    id = "GetDataSourceInput",
    members = {
        DataSourceId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Verbose = {
            type = "boolean",
            traits = {
                default = false,
            },
        },
    },
}

M.GetDataSourceOutput = {
    type = "structure",
    id = "GetDataSourceOutput",
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
            type = "long",
        },
        NumberOfFiles = {
            type = "long",
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
        RedshiftMetadata = M.RedshiftMetadata,
        RDSMetadata = M.RDSMetadata,
        RoleARN = {
            type = "string",
        },
        ComputeStatistics = {
            type = "boolean",
            traits = {
                default = false,
            },
        },
        ComputeTime = {
            type = "long",
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
    id = "GetEvaluationInput",
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
    id = "GetEvaluationOutput",
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
        PerformanceMetrics = M.PerformanceMetrics,
        LogUri = {
            type = "string",
        },
        Message = {
            type = "string",
        },
        ComputeTime = {
            type = "long",
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
    id = "GetMLModelInput",
    members = {
        MLModelId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Verbose = {
            type = "boolean",
            traits = {
                default = false,
            },
        },
    },
}

M.GetMLModelOutput = {
    type = "structure",
    id = "GetMLModelOutput",
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
            type = "long",
        },
        EndpointInfo = M.RealtimeEndpointInfo,
        TrainingParameters = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
        InputDataLocationS3 = {
            type = "string",
        },
        MLModelType = {
            type = "string",
        },
        ScoreThreshold = {
            type = "float",
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
            type = "long",
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
    id = "LimitExceededException",
    error = "client",
    members = {
        message = {
            type = "string",
        },
        code = {
            type = "integer",
            traits = {
                default = 0,
            },
        },
    },
}

M.PredictInput = {
    type = "structure",
    id = "PredictInput",
    members = {
        MLModelId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Record = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
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
    id = "PredictorNotMountedException",
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
    id = "Prediction",
    members = {
        predictedLabel = {
            type = "string",
        },
        predictedValue = {
            type = "float",
        },
        predictedScores = {
            type = "map",
            key = { type = "string" },
            value = { type = "float" },
        },
        details = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
    },
}

M.PredictOutput = {
    type = "structure",
    id = "PredictOutput",
    members = {
        Prediction = M.Prediction,
    },
}

M.UpdateBatchPredictionInput = {
    type = "structure",
    id = "UpdateBatchPredictionInput",
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
    id = "UpdateBatchPredictionOutput",
    members = {
        BatchPredictionId = {
            type = "string",
        },
    },
}

M.UpdateDataSourceInput = {
    type = "structure",
    id = "UpdateDataSourceInput",
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
    id = "UpdateDataSourceOutput",
    members = {
        DataSourceId = {
            type = "string",
        },
    },
}

M.UpdateEvaluationInput = {
    type = "structure",
    id = "UpdateEvaluationInput",
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
    id = "UpdateEvaluationOutput",
    members = {
        EvaluationId = {
            type = "string",
        },
    },
}

M.UpdateMLModelInput = {
    type = "structure",
    id = "UpdateMLModelInput",
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
            type = "float",
        },
    },
}

M.UpdateMLModelOutput = {
    type = "structure",
    id = "UpdateMLModelOutput",
    members = {
        MLModelId = {
            type = "string",
        },
    },
}

return M
