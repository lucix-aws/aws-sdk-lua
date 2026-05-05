local M = {}

M.TaggableResourceType = {
    BATCH_PREDICTION = "BatchPrediction",
    DATASOURCE = "DataSource",
    EVALUATION = "Evaluation",
    ML_MODEL = "MLModel",
}

M.Algorithm = {
    SGD = "sgd",
}

M.MLModelType = {
    REGRESSION = "REGRESSION",
    BINARY = "BINARY",
    MULTICLASS = "MULTICLASS",
}

M.RealtimeEndpointStatus = {
    NONE = "NONE",
    READY = "READY",
    UPDATING = "UPDATING",
    FAILED = "FAILED",
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

M.EntityStatus = {
    PENDING = "PENDING",
    INPROGRESS = "INPROGRESS",
    FAILED = "FAILED",
    COMPLETED = "COMPLETED",
    DELETED = "DELETED",
}

M.DataSourceFilterVariable = {
    CREATED_AT = "CreatedAt",
    LAST_UPDATED_AT = "LastUpdatedAt",
    STATUS = "Status",
    NAME = "Name",
    DATA_URI = "DataLocationS3",
    IAM_USER = "IAMUser",
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

M.DetailsAttributes = {
    PREDICTIVE_MODEL_TYPE = "PredictiveModelType",
    ALGORITHM = "Algorithm",
}

return M
