local M = {}

M.ConfigurationJobStatus = {
    NEW = "NEW",
    FAILED = "FAILED",
    IN_PROGRESS = "IN_PROGRESS",
    QUEUED = "QUEUED",
    SUCCESS = "SUCCESS",
}

M.DataIntegrationFlowFieldPriorityDedupeSortOrder = {
    ASC = "ASC",
    DESC = "DESC",
}

M.DataIntegrationFlowDedupeStrategyType = {
    FIELD_PRIORITY = "FIELD_PRIORITY",
}

M.DataIntegrationFlowLoadType = {
    INCREMENTAL = "INCREMENTAL",
    REPLACE = "REPLACE",
}

M.DataIntegrationFlowFileType = {
    CSV = "CSV",
    PARQUET = "PARQUET",
    JSON = "JSON",
}

M.DataIntegrationFlowSourceType = {
    S3 = "S3",
    DATASET = "DATASET",
}

M.DataIntegrationFlowTargetType = {
    S3 = "S3",
    DATASET = "DATASET",
}

M.DataIntegrationFlowTransformationType = {
    SQL = "SQL",
    NONE = "NONE",
}

M.DataLakeDatasetPartitionTransformType = {
    YEAR = "YEAR",
    MONTH = "MONTH",
    DAY = "DAY",
    HOUR = "HOUR",
    IDENTITY = "IDENTITY",
}

M.DataLakeDatasetSchemaFieldType = {
    INT = "INT",
    DOUBLE = "DOUBLE",
    STRING = "STRING",
    TIMESTAMP = "TIMESTAMP",
    LONG = "LONG",
}

M.InstanceState = {
    INITIALIZING = "Initializing",
    ACTIVE = "Active",
    CREATE_FAILED = "CreateFailed",
    DELETE_FAILED = "DeleteFailed",
    DELETING = "Deleting",
    DELETED = "Deleted",
}

M.DataIntegrationEventDatasetLoadStatus = {
    SUCCEEDED = "SUCCEEDED",
    IN_PROGRESS = "IN_PROGRESS",
    FAILED = "FAILED",
}

M.DataIntegrationEventDatasetOperationType = {
    APPEND = "APPEND",
    UPSERT = "UPSERT",
    DELETE = "DELETE",
}

M.DataIntegrationEventType = {
    FORECAST = "scn.data.forecast",
    INVENTORY_LEVEL = "scn.data.inventorylevel",
    INBOUND_ORDER = "scn.data.inboundorder",
    INBOUND_ORDER_LINE = "scn.data.inboundorderline",
    INBOUND_ORDER_LINE_SCHEDULE = "scn.data.inboundorderlineschedule",
    OUTBOUND_ORDER_LINE = "scn.data.outboundorderline",
    OUTBOUND_SHIPMENT = "scn.data.outboundshipment",
    PROCESS_HEADER = "scn.data.processheader",
    PROCESS_OPERATION = "scn.data.processoperation",
    PROCESS_PRODUCT = "scn.data.processproduct",
    RESERVATION = "scn.data.reservation",
    SHIPMENT = "scn.data.shipment",
    SHIPMENT_STOP = "scn.data.shipmentstop",
    SHIPMENT_STOP_ORDER = "scn.data.shipmentstoporder",
    SUPPLY_PLAN = "scn.data.supplyplan",
    DATASET = "scn.data.dataset",
}

M.DataIntegrationFlowExecutionStatus = {
    SUCCEEDED = "SUCCEEDED",
    IN_PROGRESS = "IN_PROGRESS",
    FAILED = "FAILED",
}

return M
