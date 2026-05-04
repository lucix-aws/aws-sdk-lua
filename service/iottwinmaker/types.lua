local M = {}

M.AccessDeniedException = {
    type = "structure",
    id = "AccessDeniedException",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.EntityPropertyReference = {
    type = "structure",
    id = "EntityPropertyReference",
    members = {
        componentName = {
            type = "string",
        },
        componentPath = {
            type = "string",
        },
        externalIdProperty = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
        entityId = {
            type = "string",
        },
        propertyName = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.RelationshipValue = {
    type = "structure",
    id = "RelationshipValue",
    members = {
        targetEntityId = {
            type = "string",
        },
        targetComponentName = {
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
    },
}

M.ThrottlingException = {
    type = "structure",
    id = "ThrottlingException",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.ValidationException = {
    type = "structure",
    id = "ValidationException",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.CancelMetadataTransferJobInput = {
    type = "structure",
    id = "CancelMetadataTransferJobInput",
    members = {
        metadataTransferJobId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.MetadataTransferJobProgress = {
    type = "structure",
    id = "MetadataTransferJobProgress",
    members = {
        totalCount = {
            type = "integer",
        },
        succeededCount = {
            type = "integer",
        },
        skippedCount = {
            type = "integer",
        },
        failedCount = {
            type = "integer",
        },
    },
}

M.ErrorCode = {
    VALIDATION_ERROR = "VALIDATION_ERROR",
    INTERNAL_FAILURE = "INTERNAL_FAILURE",
    SYNC_INITIALIZING_ERROR = "SYNC_INITIALIZING_ERROR",
    SYNC_CREATING_ERROR = "SYNC_CREATING_ERROR",
    SYNC_PROCESSING_ERROR = "SYNC_PROCESSING_ERROR",
    SYNC_DELETING_ERROR = "SYNC_DELETING_ERROR",
    PROCESSING_ERROR = "PROCESSING_ERROR",
    COMPOSITE_COMPONENT_FAILURE = "COMPOSITE_COMPONENT_FAILURE",
}

M.ErrorDetails = {
    type = "structure",
    id = "ErrorDetails",
    members = {
        code = {
            type = "string",
        },
        message = {
            type = "string",
        },
    },
}

M.MetadataTransferJobState = {
    VALIDATING = "VALIDATING",
    PENDING = "PENDING",
    RUNNING = "RUNNING",
    CANCELLING = "CANCELLING",
    ERROR = "ERROR",
    COMPLETED = "COMPLETED",
    CANCELLED = "CANCELLED",
}

M.MetadataTransferJobStatus = {
    type = "structure",
    id = "MetadataTransferJobStatus",
    members = {
        state = {
            type = "string",
        },
        error = M.ErrorDetails,
        queuedPosition = {
            type = "integer",
        },
    },
}

M.CancelMetadataTransferJobOutput = {
    type = "structure",
    id = "CancelMetadataTransferJobOutput",
    members = {
        metadataTransferJobId = {
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
        updateDateTime = {
            type = "timestamp",
            traits = {
                required = true,
            },
        },
        status = setmetatable({ traits = {
            required = true,
        } }, { __index = M.MetadataTransferJobStatus }),
        progress = M.MetadataTransferJobProgress,
    },
}

M.ConflictException = {
    type = "structure",
    id = "ConflictException",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.CompositeComponentTypeRequest = {
    type = "structure",
    id = "CompositeComponentTypeRequest",
    members = {
        componentTypeId = {
            type = "string",
        },
    },
}

M.LambdaFunction = {
    type = "structure",
    id = "LambdaFunction",
    members = {
        arn = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.DataConnector = {
    type = "structure",
    id = "DataConnector",
    members = {
        lambda = M.LambdaFunction,
        isNative = {
            type = "boolean",
        },
    },
}

M.Scope = {
    ENTITY = "ENTITY",
    WORKSPACE = "WORKSPACE",
}

M.FunctionRequest = {
    type = "structure",
    id = "FunctionRequest",
    members = {
        requiredProperties = {
            type = "list",
            member = { type = "string" },
        },
        scope = {
            type = "string",
        },
        implementedBy = M.DataConnector,
    },
}

M.Relationship = {
    type = "structure",
    id = "Relationship",
    members = {
        targetComponentTypeId = {
            type = "string",
        },
        relationshipType = {
            type = "string",
        },
    },
}

M.Type = {
    RELATIONSHIP = "RELATIONSHIP",
    STRING = "STRING",
    LONG = "LONG",
    BOOLEAN = "BOOLEAN",
    INTEGER = "INTEGER",
    DOUBLE = "DOUBLE",
    LIST = "LIST",
    MAP = "MAP",
}

M.GroupType = {
    TABULAR = "TABULAR",
}

M.PropertyGroupRequest = {
    type = "structure",
    id = "PropertyGroupRequest",
    members = {
        groupType = {
            type = "string",
        },
        propertyNames = {
            type = "list",
            member = { type = "string" },
        },
    },
}

M.State = {
    CREATING = "CREATING",
    UPDATING = "UPDATING",
    DELETING = "DELETING",
    ACTIVE = "ACTIVE",
    ERROR = "ERROR",
}

M.CreateComponentTypeOutput = {
    type = "structure",
    id = "CreateComponentTypeOutput",
    members = {
        arn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        creationDateTime = {
            type = "timestamp",
            traits = {
                required = true,
            },
        },
        state = {
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
        message = {
            type = "string",
        },
    },
}

M.PropertyUpdateType = {
    UPDATE = "UPDATE",
    DELETE = "DELETE",
    CREATE = "CREATE",
    RESET_VALUE = "RESET_VALUE",
}

M.PropertyGroupUpdateType = {
    UPDATE = "UPDATE",
    DELETE = "DELETE",
    CREATE = "CREATE",
}

M.ComponentPropertyGroupRequest = {
    type = "structure",
    id = "ComponentPropertyGroupRequest",
    members = {
        groupType = {
            type = "string",
        },
        propertyNames = {
            type = "list",
            member = { type = "string" },
        },
        updateType = {
            type = "string",
        },
    },
}

M.CreateEntityOutput = {
    type = "structure",
    id = "CreateEntityOutput",
    members = {
        entityId = {
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
        creationDateTime = {
            type = "timestamp",
            traits = {
                required = true,
            },
        },
        state = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.IotTwinMakerDestinationConfiguration = {
    type = "structure",
    id = "IotTwinMakerDestinationConfiguration",
    members = {
        workspace = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.S3DestinationConfiguration = {
    type = "structure",
    id = "S3DestinationConfiguration",
    members = {
        location = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.DestinationType = {
    S3 = "s3",
    IOTSITEWISE = "iotsitewise",
    IOTTWINMAKER = "iottwinmaker",
}

M.DestinationConfiguration = {
    type = "structure",
    id = "DestinationConfiguration",
    members = {
        type = {
            type = "string",
            traits = {
                required = true,
            },
        },
        s3Configuration = M.S3DestinationConfiguration,
        iotTwinMakerConfiguration = M.IotTwinMakerDestinationConfiguration,
    },
}

M.FilterByAsset = {
    type = "structure",
    id = "FilterByAsset",
    members = {
        assetId = {
            type = "string",
        },
        assetExternalId = {
            type = "string",
        },
        includeOffspring = {
            type = "boolean",
        },
        includeAssetModel = {
            type = "boolean",
        },
    },
}

M.FilterByAssetModel = {
    type = "structure",
    id = "FilterByAssetModel",
    members = {
        assetModelId = {
            type = "string",
        },
        assetModelExternalId = {
            type = "string",
        },
        includeOffspring = {
            type = "boolean",
        },
        includeAssets = {
            type = "boolean",
        },
    },
}

M.IotSiteWiseSourceConfigurationFilter = {
    type = "union",
    id = "IotSiteWiseSourceConfigurationFilter",
    members = {
        filterByAssetModel = M.FilterByAssetModel,
        filterByAsset = M.FilterByAsset,
    },
}

M.IotSiteWiseSourceConfiguration = {
    type = "structure",
    id = "IotSiteWiseSourceConfiguration",
    members = {
        filters = {
            type = "list",
            member = M.IotSiteWiseSourceConfigurationFilter,
        },
    },
}

M.FilterByComponentType = {
    type = "structure",
    id = "FilterByComponentType",
    members = {
        componentTypeId = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.FilterByEntity = {
    type = "structure",
    id = "FilterByEntity",
    members = {
        entityId = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.IotTwinMakerSourceConfigurationFilter = {
    type = "union",
    id = "IotTwinMakerSourceConfigurationFilter",
    members = {
        filterByComponentType = M.FilterByComponentType,
        filterByEntity = M.FilterByEntity,
    },
}

M.IotTwinMakerSourceConfiguration = {
    type = "structure",
    id = "IotTwinMakerSourceConfiguration",
    members = {
        workspace = {
            type = "string",
            traits = {
                required = true,
            },
        },
        filters = {
            type = "list",
            member = M.IotTwinMakerSourceConfigurationFilter,
        },
    },
}

M.S3SourceConfiguration = {
    type = "structure",
    id = "S3SourceConfiguration",
    members = {
        location = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.SourceType = {
    S3 = "s3",
    IOTSITEWISE = "iotsitewise",
    IOTTWINMAKER = "iottwinmaker",
}

M.SourceConfiguration = {
    type = "structure",
    id = "SourceConfiguration",
    members = {
        type = {
            type = "string",
            traits = {
                required = true,
            },
        },
        s3Configuration = M.S3SourceConfiguration,
        iotSiteWiseConfiguration = M.IotSiteWiseSourceConfiguration,
        iotTwinMakerConfiguration = M.IotTwinMakerSourceConfiguration,
    },
}

M.CreateMetadataTransferJobInput = {
    type = "structure",
    id = "CreateMetadataTransferJobInput",
    members = {
        metadataTransferJobId = {
            type = "string",
        },
        description = {
            type = "string",
        },
        sources = {
            type = "list",
            member = M.SourceConfiguration,
            traits = {
                required = true,
            },
        },
        destination = setmetatable({ traits = {
            required = true,
        } }, { __index = M.DestinationConfiguration }),
    },
}

M.CreateMetadataTransferJobOutput = {
    type = "structure",
    id = "CreateMetadataTransferJobOutput",
    members = {
        metadataTransferJobId = {
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
        creationDateTime = {
            type = "timestamp",
            traits = {
                required = true,
            },
        },
        status = setmetatable({ traits = {
            required = true,
        } }, { __index = M.MetadataTransferJobStatus }),
    },
}

M.CreateSceneInput = {
    type = "structure",
    id = "CreateSceneInput",
    members = {
        workspaceId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        sceneId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        contentLocation = {
            type = "string",
            traits = {
                required = true,
            },
        },
        description = {
            type = "string",
        },
        capabilities = {
            type = "list",
            member = { type = "string" },
        },
        tags = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
        sceneMetadata = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
    },
}

M.CreateSceneOutput = {
    type = "structure",
    id = "CreateSceneOutput",
    members = {
        arn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        creationDateTime = {
            type = "timestamp",
            traits = {
                required = true,
            },
        },
    },
}

M.CreateSyncJobInput = {
    type = "structure",
    id = "CreateSyncJobInput",
    members = {
        workspaceId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        syncSource = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        syncRole = {
            type = "string",
            traits = {
                required = true,
            },
        },
        tags = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
    },
}

M.SyncJobState = {
    CREATING = "CREATING",
    INITIALIZING = "INITIALIZING",
    ACTIVE = "ACTIVE",
    DELETING = "DELETING",
    ERROR = "ERROR",
}

M.CreateSyncJobOutput = {
    type = "structure",
    id = "CreateSyncJobOutput",
    members = {
        arn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        creationDateTime = {
            type = "timestamp",
            traits = {
                required = true,
            },
        },
        state = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.CreateWorkspaceInput = {
    type = "structure",
    id = "CreateWorkspaceInput",
    members = {
        workspaceId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        description = {
            type = "string",
        },
        s3Location = {
            type = "string",
        },
        role = {
            type = "string",
        },
        tags = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
    },
}

M.CreateWorkspaceOutput = {
    type = "structure",
    id = "CreateWorkspaceOutput",
    members = {
        arn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        creationDateTime = {
            type = "timestamp",
            traits = {
                required = true,
            },
        },
    },
}

M.DeleteComponentTypeInput = {
    type = "structure",
    id = "DeleteComponentTypeInput",
    members = {
        workspaceId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        componentTypeId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.DeleteComponentTypeOutput = {
    type = "structure",
    id = "DeleteComponentTypeOutput",
    members = {
        state = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.DeleteEntityInput = {
    type = "structure",
    id = "DeleteEntityInput",
    members = {
        workspaceId = {
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
        isRecursive = {
            type = "boolean",
            traits = {
                http_query = "isRecursive",
            },
        },
    },
}

M.DeleteEntityOutput = {
    type = "structure",
    id = "DeleteEntityOutput",
    members = {
        state = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.DeleteSceneInput = {
    type = "structure",
    id = "DeleteSceneInput",
    members = {
        workspaceId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        sceneId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.DeleteSceneOutput = {
    type = "structure",
    id = "DeleteSceneOutput",
}

M.DeleteSyncJobInput = {
    type = "structure",
    id = "DeleteSyncJobInput",
    members = {
        workspaceId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        syncSource = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.DeleteSyncJobOutput = {
    type = "structure",
    id = "DeleteSyncJobOutput",
    members = {
        state = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.DeleteWorkspaceInput = {
    type = "structure",
    id = "DeleteWorkspaceInput",
    members = {
        workspaceId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.DeleteWorkspaceOutput = {
    type = "structure",
    id = "DeleteWorkspaceOutput",
    members = {
        message = {
            type = "string",
        },
    },
}

M.ExecuteQueryInput = {
    type = "structure",
    id = "ExecuteQueryInput",
    members = {
        workspaceId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        queryStatement = {
            type = "string",
            traits = {
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

M.ColumnType = {
    NODE = "NODE",
    EDGE = "EDGE",
    VALUE = "VALUE",
}

M.ColumnDescription = {
    type = "structure",
    id = "ColumnDescription",
    members = {
        name = {
            type = "string",
        },
        type = {
            type = "string",
        },
    },
}

M.Row = {
    type = "structure",
    id = "Row",
    members = {
        rowData = {
            type = "list",
            member = { type = "document" },
        },
    },
}

M.ExecuteQueryOutput = {
    type = "structure",
    id = "ExecuteQueryOutput",
    members = {
        columnDescriptions = {
            type = "list",
            member = M.ColumnDescription,
        },
        rows = {
            type = "list",
            member = M.Row,
        },
        nextToken = {
            type = "string",
        },
    },
}

M.QueryTimeoutException = {
    type = "structure",
    id = "QueryTimeoutException",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.GetComponentTypeInput = {
    type = "structure",
    id = "GetComponentTypeInput",
    members = {
        workspaceId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        componentTypeId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.CompositeComponentTypeResponse = {
    type = "structure",
    id = "CompositeComponentTypeResponse",
    members = {
        componentTypeId = {
            type = "string",
        },
        isInherited = {
            type = "boolean",
        },
    },
}

M.FunctionResponse = {
    type = "structure",
    id = "FunctionResponse",
    members = {
        requiredProperties = {
            type = "list",
            member = { type = "string" },
        },
        scope = {
            type = "string",
        },
        implementedBy = M.DataConnector,
        isInherited = {
            type = "boolean",
        },
    },
}

M.PropertyGroupResponse = {
    type = "structure",
    id = "PropertyGroupResponse",
    members = {
        groupType = {
            type = "string",
            traits = {
                required = true,
            },
        },
        propertyNames = {
            type = "list",
            member = { type = "string" },
            traits = {
                required = true,
            },
        },
        isInherited = {
            type = "boolean",
            traits = {
                required = true,
            },
        },
    },
}

M.Status = {
    type = "structure",
    id = "Status",
    members = {
        state = {
            type = "string",
        },
        error = M.ErrorDetails,
    },
}

M.GetEntityInput = {
    type = "structure",
    id = "GetEntityInput",
    members = {
        workspaceId = {
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

M.ComponentPropertyGroupResponse = {
    type = "structure",
    id = "ComponentPropertyGroupResponse",
    members = {
        groupType = {
            type = "string",
            traits = {
                required = true,
            },
        },
        propertyNames = {
            type = "list",
            member = { type = "string" },
            traits = {
                required = true,
            },
        },
        isInherited = {
            type = "boolean",
            traits = {
                required = true,
            },
        },
    },
}

M.ComponentSummary = {
    type = "structure",
    id = "ComponentSummary",
    members = {
        componentName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        componentTypeId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        definedIn = {
            type = "string",
        },
        description = {
            type = "string",
        },
        propertyGroups = {
            type = "map",
            key = { type = "string" },
            value = M.ComponentPropertyGroupResponse,
        },
        status = setmetatable({ traits = {
            required = true,
        } }, { __index = M.Status }),
        syncSource = {
            type = "string",
        },
        componentPath = {
            type = "string",
        },
    },
}

M.GetMetadataTransferJobInput = {
    type = "structure",
    id = "GetMetadataTransferJobInput",
    members = {
        metadataTransferJobId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.GetMetadataTransferJobOutput = {
    type = "structure",
    id = "GetMetadataTransferJobOutput",
    members = {
        metadataTransferJobId = {
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
        description = {
            type = "string",
        },
        sources = {
            type = "list",
            member = M.SourceConfiguration,
            traits = {
                required = true,
            },
        },
        destination = setmetatable({ traits = {
            required = true,
        } }, { __index = M.DestinationConfiguration }),
        metadataTransferJobRole = {
            type = "string",
            traits = {
                required = true,
            },
        },
        reportUrl = {
            type = "string",
        },
        creationDateTime = {
            type = "timestamp",
            traits = {
                required = true,
            },
        },
        updateDateTime = {
            type = "timestamp",
            traits = {
                required = true,
            },
        },
        status = setmetatable({ traits = {
            required = true,
        } }, { __index = M.MetadataTransferJobStatus }),
        progress = M.MetadataTransferJobProgress,
    },
}

M.GetPricingPlanInput = {
    type = "structure",
    id = "GetPricingPlanInput",
}

M.PricingTier = {
    TIER_1 = "TIER_1",
    TIER_2 = "TIER_2",
    TIER_3 = "TIER_3",
    TIER_4 = "TIER_4",
}

M.BundleInformation = {
    type = "structure",
    id = "BundleInformation",
    members = {
        bundleNames = {
            type = "list",
            member = { type = "string" },
            traits = {
                required = true,
            },
        },
        pricingTier = {
            type = "string",
        },
    },
}

M.PricingMode = {
    BASIC = "BASIC",
    STANDARD = "STANDARD",
    TIERED_BUNDLE = "TIERED_BUNDLE",
}

M.UpdateReason = {
    DEFAULT = "DEFAULT",
    PRICING_TIER_UPDATE = "PRICING_TIER_UPDATE",
    ENTITY_COUNT_UPDATE = "ENTITY_COUNT_UPDATE",
    PRICING_MODE_UPDATE = "PRICING_MODE_UPDATE",
    OVERWRITTEN = "OVERWRITTEN",
}

M.PricingPlan = {
    type = "structure",
    id = "PricingPlan",
    members = {
        billableEntityCount = {
            type = "long",
        },
        bundleInformation = M.BundleInformation,
        effectiveDateTime = {
            type = "timestamp",
            traits = {
                required = true,
            },
        },
        pricingMode = {
            type = "string",
            traits = {
                required = true,
            },
        },
        updateDateTime = {
            type = "timestamp",
            traits = {
                required = true,
            },
        },
        updateReason = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.GetPricingPlanOutput = {
    type = "structure",
    id = "GetPricingPlanOutput",
    members = {
        currentPricingPlan = setmetatable({ traits = {
            required = true,
        } }, { __index = M.PricingPlan }),
        pendingPricingPlan = M.PricingPlan,
    },
}

M.ConnectorFailureException = {
    type = "structure",
    id = "ConnectorFailureException",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.ConnectorTimeoutException = {
    type = "structure",
    id = "ConnectorTimeoutException",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.Order = {
    ASCENDING = "ASCENDING",
    DESCENDING = "DESCENDING",
}

M.OrderBy = {
    type = "structure",
    id = "OrderBy",
    members = {
        order = {
            type = "string",
        },
        propertyName = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.InterpolationType = {
    LINEAR = "LINEAR",
}

M.InterpolationParameters = {
    type = "structure",
    id = "InterpolationParameters",
    members = {
        interpolationType = {
            type = "string",
        },
        intervalInSeconds = {
            type = "long",
        },
    },
}

M.OrderByTime = {
    ASCENDING = "ASCENDING",
    DESCENDING = "DESCENDING",
}

M.GetSceneInput = {
    type = "structure",
    id = "GetSceneInput",
    members = {
        workspaceId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        sceneId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.SceneErrorCode = {
    MATTERPORT_ERROR = "MATTERPORT_ERROR",
}

M.SceneError = {
    type = "structure",
    id = "SceneError",
    members = {
        code = {
            type = "string",
        },
        message = {
            type = "string",
        },
    },
}

M.GetSceneOutput = {
    type = "structure",
    id = "GetSceneOutput",
    members = {
        workspaceId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        sceneId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        contentLocation = {
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
        creationDateTime = {
            type = "timestamp",
            traits = {
                required = true,
            },
        },
        updateDateTime = {
            type = "timestamp",
            traits = {
                required = true,
            },
        },
        description = {
            type = "string",
        },
        capabilities = {
            type = "list",
            member = { type = "string" },
        },
        sceneMetadata = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
        generatedSceneMetadata = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
        error = M.SceneError,
    },
}

M.GetSyncJobInput = {
    type = "structure",
    id = "GetSyncJobInput",
    members = {
        syncSource = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        workspaceId = {
            type = "string",
            traits = {
                http_query = "workspace",
            },
        },
    },
}

M.SyncJobStatus = {
    type = "structure",
    id = "SyncJobStatus",
    members = {
        state = {
            type = "string",
        },
        error = M.ErrorDetails,
    },
}

M.GetSyncJobOutput = {
    type = "structure",
    id = "GetSyncJobOutput",
    members = {
        arn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        workspaceId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        syncSource = {
            type = "string",
            traits = {
                required = true,
            },
        },
        syncRole = {
            type = "string",
            traits = {
                required = true,
            },
        },
        status = setmetatable({ traits = {
            required = true,
        } }, { __index = M.SyncJobStatus }),
        creationDateTime = {
            type = "timestamp",
            traits = {
                required = true,
            },
        },
        updateDateTime = {
            type = "timestamp",
            traits = {
                required = true,
            },
        },
    },
}

M.GetWorkspaceInput = {
    type = "structure",
    id = "GetWorkspaceInput",
    members = {
        workspaceId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.GetWorkspaceOutput = {
    type = "structure",
    id = "GetWorkspaceOutput",
    members = {
        workspaceId = {
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
        description = {
            type = "string",
        },
        linkedServices = {
            type = "list",
            member = { type = "string" },
        },
        s3Location = {
            type = "string",
        },
        role = {
            type = "string",
        },
        creationDateTime = {
            type = "timestamp",
            traits = {
                required = true,
            },
        },
        updateDateTime = {
            type = "timestamp",
            traits = {
                required = true,
            },
        },
    },
}

M.ListComponentsInput = {
    type = "structure",
    id = "ListComponentsInput",
    members = {
        workspaceId = {
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
        componentPath = {
            type = "string",
        },
        maxResults = {
            type = "integer",
        },
        nextToken = {
            type = "string",
        },
    },
}

M.ListComponentsOutput = {
    type = "structure",
    id = "ListComponentsOutput",
    members = {
        componentSummaries = {
            type = "list",
            member = M.ComponentSummary,
            traits = {
                required = true,
            },
        },
        nextToken = {
            type = "string",
        },
    },
}

M.ListComponentTypesFilter = {
    type = "union",
    id = "ListComponentTypesFilter",
    members = {
        extendsFrom = {
            type = "string",
        },
        namespace = {
            type = "string",
        },
        isAbstract = {
            type = "boolean",
        },
    },
}

M.ListComponentTypesInput = {
    type = "structure",
    id = "ListComponentTypesInput",
    members = {
        workspaceId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        filters = {
            type = "list",
            member = M.ListComponentTypesFilter,
        },
        nextToken = {
            type = "string",
        },
        maxResults = {
            type = "integer",
        },
    },
}

M.ComponentTypeSummary = {
    type = "structure",
    id = "ComponentTypeSummary",
    members = {
        arn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        componentTypeId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        creationDateTime = {
            type = "timestamp",
            traits = {
                required = true,
            },
        },
        updateDateTime = {
            type = "timestamp",
            traits = {
                required = true,
            },
        },
        description = {
            type = "string",
        },
        status = M.Status,
        componentTypeName = {
            type = "string",
        },
    },
}

M.ListComponentTypesOutput = {
    type = "structure",
    id = "ListComponentTypesOutput",
    members = {
        workspaceId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        componentTypeSummaries = {
            type = "list",
            member = M.ComponentTypeSummary,
            traits = {
                required = true,
            },
        },
        nextToken = {
            type = "string",
        },
        maxResults = {
            type = "integer",
        },
    },
}

M.ListEntitiesFilter = {
    type = "union",
    id = "ListEntitiesFilter",
    members = {
        parentEntityId = {
            type = "string",
        },
        componentTypeId = {
            type = "string",
        },
        externalId = {
            type = "string",
        },
    },
}

M.ListEntitiesInput = {
    type = "structure",
    id = "ListEntitiesInput",
    members = {
        workspaceId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        filters = {
            type = "list",
            member = M.ListEntitiesFilter,
        },
        maxResults = {
            type = "integer",
        },
        nextToken = {
            type = "string",
        },
    },
}

M.EntitySummary = {
    type = "structure",
    id = "EntitySummary",
    members = {
        entityId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        entityName = {
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
        parentEntityId = {
            type = "string",
        },
        status = setmetatable({ traits = {
            required = true,
        } }, { __index = M.Status }),
        description = {
            type = "string",
        },
        hasChildEntities = {
            type = "boolean",
        },
        creationDateTime = {
            type = "timestamp",
            traits = {
                required = true,
            },
        },
        updateDateTime = {
            type = "timestamp",
            traits = {
                required = true,
            },
        },
    },
}

M.ListEntitiesOutput = {
    type = "structure",
    id = "ListEntitiesOutput",
    members = {
        entitySummaries = {
            type = "list",
            member = M.EntitySummary,
        },
        nextToken = {
            type = "string",
        },
    },
}

M.ListMetadataTransferJobsFilter = {
    type = "union",
    id = "ListMetadataTransferJobsFilter",
    members = {
        workspaceId = {
            type = "string",
        },
        state = {
            type = "string",
        },
    },
}

M.ListMetadataTransferJobsInput = {
    type = "structure",
    id = "ListMetadataTransferJobsInput",
    members = {
        sourceType = {
            type = "string",
            traits = {
                required = true,
            },
        },
        destinationType = {
            type = "string",
            traits = {
                required = true,
            },
        },
        filters = {
            type = "list",
            member = M.ListMetadataTransferJobsFilter,
        },
        nextToken = {
            type = "string",
        },
        maxResults = {
            type = "integer",
        },
    },
}

M.MetadataTransferJobSummary = {
    type = "structure",
    id = "MetadataTransferJobSummary",
    members = {
        metadataTransferJobId = {
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
        creationDateTime = {
            type = "timestamp",
            traits = {
                required = true,
            },
        },
        updateDateTime = {
            type = "timestamp",
            traits = {
                required = true,
            },
        },
        status = setmetatable({ traits = {
            required = true,
        } }, { __index = M.MetadataTransferJobStatus }),
        progress = M.MetadataTransferJobProgress,
    },
}

M.ListMetadataTransferJobsOutput = {
    type = "structure",
    id = "ListMetadataTransferJobsOutput",
    members = {
        metadataTransferJobSummaries = {
            type = "list",
            member = M.MetadataTransferJobSummary,
            traits = {
                required = true,
            },
        },
        nextToken = {
            type = "string",
        },
    },
}

M.ListPropertiesInput = {
    type = "structure",
    id = "ListPropertiesInput",
    members = {
        workspaceId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        componentName = {
            type = "string",
        },
        componentPath = {
            type = "string",
        },
        entityId = {
            type = "string",
            traits = {
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

M.ListScenesInput = {
    type = "structure",
    id = "ListScenesInput",
    members = {
        workspaceId = {
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

M.SceneSummary = {
    type = "structure",
    id = "SceneSummary",
    members = {
        sceneId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        contentLocation = {
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
        creationDateTime = {
            type = "timestamp",
            traits = {
                required = true,
            },
        },
        updateDateTime = {
            type = "timestamp",
            traits = {
                required = true,
            },
        },
        description = {
            type = "string",
        },
    },
}

M.ListScenesOutput = {
    type = "structure",
    id = "ListScenesOutput",
    members = {
        sceneSummaries = {
            type = "list",
            member = M.SceneSummary,
        },
        nextToken = {
            type = "string",
        },
    },
}

M.ListSyncJobsInput = {
    type = "structure",
    id = "ListSyncJobsInput",
    members = {
        workspaceId = {
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

M.SyncJobSummary = {
    type = "structure",
    id = "SyncJobSummary",
    members = {
        arn = {
            type = "string",
        },
        workspaceId = {
            type = "string",
        },
        syncSource = {
            type = "string",
        },
        status = M.SyncJobStatus,
        creationDateTime = {
            type = "timestamp",
        },
        updateDateTime = {
            type = "timestamp",
        },
    },
}

M.ListSyncJobsOutput = {
    type = "structure",
    id = "ListSyncJobsOutput",
    members = {
        syncJobSummaries = {
            type = "list",
            member = M.SyncJobSummary,
        },
        nextToken = {
            type = "string",
        },
    },
}

M.SyncResourceType = {
    ENTITY = "ENTITY",
    COMPONENT_TYPE = "COMPONENT_TYPE",
}

M.SyncResourceState = {
    INITIALIZING = "INITIALIZING",
    PROCESSING = "PROCESSING",
    DELETED = "DELETED",
    IN_SYNC = "IN_SYNC",
    ERROR = "ERROR",
}

M.SyncResourceFilter = {
    type = "union",
    id = "SyncResourceFilter",
    members = {
        state = {
            type = "string",
        },
        resourceType = {
            type = "string",
        },
        resourceId = {
            type = "string",
        },
        externalId = {
            type = "string",
        },
    },
}

M.ListSyncResourcesInput = {
    type = "structure",
    id = "ListSyncResourcesInput",
    members = {
        workspaceId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        syncSource = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        filters = {
            type = "list",
            member = M.SyncResourceFilter,
        },
        maxResults = {
            type = "integer",
        },
        nextToken = {
            type = "string",
        },
    },
}

M.SyncResourceStatus = {
    type = "structure",
    id = "SyncResourceStatus",
    members = {
        state = {
            type = "string",
        },
        error = M.ErrorDetails,
    },
}

M.SyncResourceSummary = {
    type = "structure",
    id = "SyncResourceSummary",
    members = {
        resourceType = {
            type = "string",
        },
        externalId = {
            type = "string",
        },
        resourceId = {
            type = "string",
        },
        status = M.SyncResourceStatus,
        updateDateTime = {
            type = "timestamp",
        },
    },
}

M.ListSyncResourcesOutput = {
    type = "structure",
    id = "ListSyncResourcesOutput",
    members = {
        syncResources = {
            type = "list",
            member = M.SyncResourceSummary,
        },
        nextToken = {
            type = "string",
        },
    },
}

M.ListTagsForResourceInput = {
    type = "structure",
    id = "ListTagsForResourceInput",
    members = {
        resourceARN = {
            type = "string",
            traits = {
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

M.ListTagsForResourceOutput = {
    type = "structure",
    id = "ListTagsForResourceOutput",
    members = {
        tags = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
        nextToken = {
            type = "string",
        },
    },
}

M.ListWorkspacesInput = {
    type = "structure",
    id = "ListWorkspacesInput",
    members = {
        maxResults = {
            type = "integer",
        },
        nextToken = {
            type = "string",
        },
    },
}

M.WorkspaceSummary = {
    type = "structure",
    id = "WorkspaceSummary",
    members = {
        workspaceId = {
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
        description = {
            type = "string",
        },
        linkedServices = {
            type = "list",
            member = { type = "string" },
        },
        creationDateTime = {
            type = "timestamp",
            traits = {
                required = true,
            },
        },
        updateDateTime = {
            type = "timestamp",
            traits = {
                required = true,
            },
        },
    },
}

M.ListWorkspacesOutput = {
    type = "structure",
    id = "ListWorkspacesOutput",
    members = {
        workspaceSummaries = {
            type = "list",
            member = M.WorkspaceSummary,
        },
        nextToken = {
            type = "string",
        },
    },
}

M.TagResourceInput = {
    type = "structure",
    id = "TagResourceInput",
    members = {
        resourceARN = {
            type = "string",
            traits = {
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
    id = "TagResourceOutput",
}

M.TooManyTagsException = {
    type = "structure",
    id = "TooManyTagsException",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.UntagResourceInput = {
    type = "structure",
    id = "UntagResourceInput",
    members = {
        resourceARN = {
            type = "string",
            traits = {
                http_query = "resourceARN",
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
    id = "UntagResourceOutput",
}

M.UpdateComponentTypeOutput = {
    type = "structure",
    id = "UpdateComponentTypeOutput",
    members = {
        workspaceId = {
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
        componentTypeId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        state = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.ComponentUpdateType = {
    CREATE = "CREATE",
    UPDATE = "UPDATE",
    DELETE = "DELETE",
}

M.ParentEntityUpdateType = {
    UPDATE = "UPDATE",
    DELETE = "DELETE",
}

M.ParentEntityUpdateRequest = {
    type = "structure",
    id = "ParentEntityUpdateRequest",
    members = {
        updateType = {
            type = "string",
            traits = {
                required = true,
            },
        },
        parentEntityId = {
            type = "string",
        },
    },
}

M.UpdateEntityOutput = {
    type = "structure",
    id = "UpdateEntityOutput",
    members = {
        updateDateTime = {
            type = "timestamp",
            traits = {
                required = true,
            },
        },
        state = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.UpdatePricingPlanInput = {
    type = "structure",
    id = "UpdatePricingPlanInput",
    members = {
        pricingMode = {
            type = "string",
            traits = {
                required = true,
            },
        },
        bundleNames = {
            type = "list",
            member = { type = "string" },
        },
    },
}

M.UpdatePricingPlanOutput = {
    type = "structure",
    id = "UpdatePricingPlanOutput",
    members = {
        currentPricingPlan = setmetatable({ traits = {
            required = true,
        } }, { __index = M.PricingPlan }),
        pendingPricingPlan = M.PricingPlan,
    },
}

M.UpdateSceneInput = {
    type = "structure",
    id = "UpdateSceneInput",
    members = {
        workspaceId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        sceneId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        contentLocation = {
            type = "string",
        },
        description = {
            type = "string",
        },
        capabilities = {
            type = "list",
            member = { type = "string" },
        },
        sceneMetadata = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
    },
}

M.UpdateSceneOutput = {
    type = "structure",
    id = "UpdateSceneOutput",
    members = {
        updateDateTime = {
            type = "timestamp",
            traits = {
                required = true,
            },
        },
    },
}

M.UpdateWorkspaceInput = {
    type = "structure",
    id = "UpdateWorkspaceInput",
    members = {
        workspaceId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        description = {
            type = "string",
        },
        role = {
            type = "string",
        },
        s3Location = {
            type = "string",
        },
    },
}

M.UpdateWorkspaceOutput = {
    type = "structure",
    id = "UpdateWorkspaceOutput",
    members = {
        updateDateTime = {
            type = "timestamp",
            traits = {
                required = true,
            },
        },
    },
}

M.DataValue = {
    type = "structure",
    id = "DataValue",
    members = {
        booleanValue = {
            type = "boolean",
        },
        doubleValue = {
            type = "double",
        },
        integerValue = {
            type = "integer",
        },
        longValue = {
            type = "long",
        },
        stringValue = {
            type = "string",
        },
        listValue = {
            type = "list",
            member = M.DataValue,
        },
        mapValue = {
            type = "map",
            key = { type = "string" },
            value = M.DataValue,
        },
        relationshipValue = M.RelationshipValue,
        expression = {
            type = "string",
        },
    },
}

M.PropertyFilter = {
    type = "structure",
    id = "PropertyFilter",
    members = {
        propertyName = {
            type = "string",
        },
        operator = {
            type = "string",
        },
        value = M.DataValue,
    },
}

M.PropertyLatestValue = {
    type = "structure",
    id = "PropertyLatestValue",
    members = {
        propertyReference = setmetatable({ traits = {
            required = true,
        } }, { __index = M.EntityPropertyReference }),
        propertyValue = M.DataValue,
    },
}

M.PropertyValue = {
    type = "structure",
    id = "PropertyValue",
    members = {
        timestamp = {
            type = "timestamp",
        },
        value = setmetatable({ traits = {
            required = true,
        } }, { __index = M.DataValue }),
        time = {
            type = "string",
        },
    },
}

M.DataType = {
    type = "structure",
    id = "DataType",
    members = {
        type = {
            type = "string",
            traits = {
                required = true,
            },
        },
        nestedType = M.DataType,
        allowedValues = {
            type = "list",
            member = M.DataValue,
        },
        unitOfMeasure = {
            type = "string",
        },
        relationship = M.Relationship,
    },
}

M.GetPropertyValueHistoryInput = {
    type = "structure",
    id = "GetPropertyValueHistoryInput",
    members = {
        workspaceId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        entityId = {
            type = "string",
        },
        componentName = {
            type = "string",
        },
        componentPath = {
            type = "string",
        },
        componentTypeId = {
            type = "string",
        },
        selectedProperties = {
            type = "list",
            member = { type = "string" },
            traits = {
                required = true,
            },
        },
        propertyFilters = {
            type = "list",
            member = M.PropertyFilter,
        },
        startDateTime = {
            type = "timestamp",
        },
        endDateTime = {
            type = "timestamp",
        },
        interpolation = M.InterpolationParameters,
        nextToken = {
            type = "string",
        },
        maxResults = {
            type = "integer",
        },
        orderByTime = {
            type = "string",
        },
        startTime = {
            type = "string",
        },
        endTime = {
            type = "string",
        },
    },
}

M.PropertyValueEntry = {
    type = "structure",
    id = "PropertyValueEntry",
    members = {
        entityPropertyReference = setmetatable({ traits = {
            required = true,
        } }, { __index = M.EntityPropertyReference }),
        propertyValues = {
            type = "list",
            member = M.PropertyValue,
        },
    },
}

M.PropertyValueHistory = {
    type = "structure",
    id = "PropertyValueHistory",
    members = {
        entityPropertyReference = setmetatable({ traits = {
            required = true,
        } }, { __index = M.EntityPropertyReference }),
        values = {
            type = "list",
            member = M.PropertyValue,
        },
    },
}

M.TabularConditions = {
    type = "structure",
    id = "TabularConditions",
    members = {
        orderBy = {
            type = "list",
            member = M.OrderBy,
        },
        propertyFilters = {
            type = "list",
            member = M.PropertyFilter,
        },
    },
}

M.BatchPutPropertyError = {
    type = "structure",
    id = "BatchPutPropertyError",
    members = {
        errorCode = {
            type = "string",
            traits = {
                required = true,
            },
        },
        errorMessage = {
            type = "string",
            traits = {
                required = true,
            },
        },
        entry = setmetatable({ traits = {
            required = true,
        } }, { __index = M.PropertyValueEntry }),
    },
}

M.GetPropertyValueInput = {
    type = "structure",
    id = "GetPropertyValueInput",
    members = {
        componentName = {
            type = "string",
        },
        componentPath = {
            type = "string",
        },
        componentTypeId = {
            type = "string",
        },
        entityId = {
            type = "string",
        },
        selectedProperties = {
            type = "list",
            member = { type = "string" },
            traits = {
                required = true,
            },
        },
        workspaceId = {
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
        propertyGroupName = {
            type = "string",
        },
        tabularConditions = M.TabularConditions,
    },
}

M.BatchPutPropertyValuesInput = {
    type = "structure",
    id = "BatchPutPropertyValuesInput",
    members = {
        workspaceId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        entries = {
            type = "list",
            member = M.PropertyValueEntry,
            traits = {
                required = true,
            },
        },
    },
}

M.GetPropertyValueHistoryOutput = {
    type = "structure",
    id = "GetPropertyValueHistoryOutput",
    members = {
        propertyValues = {
            type = "list",
            member = M.PropertyValueHistory,
            traits = {
                required = true,
            },
        },
        nextToken = {
            type = "string",
        },
    },
}

M.BatchPutPropertyErrorEntry = {
    type = "structure",
    id = "BatchPutPropertyErrorEntry",
    members = {
        errors = {
            type = "list",
            member = M.BatchPutPropertyError,
            traits = {
                required = true,
            },
        },
    },
}

M.PropertyDefinitionRequest = {
    type = "structure",
    id = "PropertyDefinitionRequest",
    members = {
        dataType = M.DataType,
        isRequiredInEntity = {
            type = "boolean",
        },
        isExternalId = {
            type = "boolean",
        },
        isStoredExternally = {
            type = "boolean",
        },
        isTimeSeries = {
            type = "boolean",
        },
        defaultValue = M.DataValue,
        configuration = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
        displayName = {
            type = "string",
        },
    },
}

M.PropertyDefinitionResponse = {
    type = "structure",
    id = "PropertyDefinitionResponse",
    members = {
        dataType = setmetatable({ traits = {
            required = true,
        } }, { __index = M.DataType }),
        isTimeSeries = {
            type = "boolean",
            traits = {
                required = true,
            },
        },
        isRequiredInEntity = {
            type = "boolean",
            traits = {
                required = true,
            },
        },
        isExternalId = {
            type = "boolean",
            traits = {
                required = true,
            },
        },
        isStoredExternally = {
            type = "boolean",
            traits = {
                required = true,
            },
        },
        isImported = {
            type = "boolean",
            traits = {
                required = true,
            },
        },
        isFinal = {
            type = "boolean",
            traits = {
                required = true,
            },
        },
        isInherited = {
            type = "boolean",
            traits = {
                required = true,
            },
        },
        defaultValue = M.DataValue,
        configuration = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
        displayName = {
            type = "string",
        },
    },
}

M.BatchPutPropertyValuesOutput = {
    type = "structure",
    id = "BatchPutPropertyValuesOutput",
    members = {
        errorEntries = {
            type = "list",
            member = M.BatchPutPropertyErrorEntry,
            traits = {
                required = true,
            },
        },
    },
}

M.GetPropertyValueOutput = {
    type = "structure",
    id = "GetPropertyValueOutput",
    members = {
        propertyValues = {
            type = "map",
            key = { type = "string" },
            value = M.PropertyLatestValue,
        },
        nextToken = {
            type = "string",
        },
        tabularPropertyValues = {
            type = "list",
            member = { type = "list" },
        },
    },
}

M.CreateComponentTypeInput = {
    type = "structure",
    id = "CreateComponentTypeInput",
    members = {
        workspaceId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        isSingleton = {
            type = "boolean",
        },
        componentTypeId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        description = {
            type = "string",
        },
        propertyDefinitions = {
            type = "map",
            key = { type = "string" },
            value = M.PropertyDefinitionRequest,
        },
        extendsFrom = {
            type = "list",
            member = { type = "string" },
        },
        functions = {
            type = "map",
            key = { type = "string" },
            value = M.FunctionRequest,
        },
        tags = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
        propertyGroups = {
            type = "map",
            key = { type = "string" },
            value = M.PropertyGroupRequest,
        },
        componentTypeName = {
            type = "string",
        },
        compositeComponentTypes = {
            type = "map",
            key = { type = "string" },
            value = M.CompositeComponentTypeRequest,
        },
    },
}

M.GetComponentTypeOutput = {
    type = "structure",
    id = "GetComponentTypeOutput",
    members = {
        workspaceId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        isSingleton = {
            type = "boolean",
        },
        componentTypeId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        description = {
            type = "string",
        },
        propertyDefinitions = {
            type = "map",
            key = { type = "string" },
            value = M.PropertyDefinitionResponse,
        },
        extendsFrom = {
            type = "list",
            member = { type = "string" },
        },
        functions = {
            type = "map",
            key = { type = "string" },
            value = M.FunctionResponse,
        },
        creationDateTime = {
            type = "timestamp",
            traits = {
                required = true,
            },
        },
        updateDateTime = {
            type = "timestamp",
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
        isAbstract = {
            type = "boolean",
        },
        isSchemaInitialized = {
            type = "boolean",
        },
        status = M.Status,
        propertyGroups = {
            type = "map",
            key = { type = "string" },
            value = M.PropertyGroupResponse,
        },
        syncSource = {
            type = "string",
        },
        componentTypeName = {
            type = "string",
        },
        compositeComponentTypes = {
            type = "map",
            key = { type = "string" },
            value = M.CompositeComponentTypeResponse,
        },
    },
}

M.UpdateComponentTypeInput = {
    type = "structure",
    id = "UpdateComponentTypeInput",
    members = {
        workspaceId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        isSingleton = {
            type = "boolean",
        },
        componentTypeId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        description = {
            type = "string",
        },
        propertyDefinitions = {
            type = "map",
            key = { type = "string" },
            value = M.PropertyDefinitionRequest,
        },
        extendsFrom = {
            type = "list",
            member = { type = "string" },
        },
        functions = {
            type = "map",
            key = { type = "string" },
            value = M.FunctionRequest,
        },
        propertyGroups = {
            type = "map",
            key = { type = "string" },
            value = M.PropertyGroupRequest,
        },
        componentTypeName = {
            type = "string",
        },
        compositeComponentTypes = {
            type = "map",
            key = { type = "string" },
            value = M.CompositeComponentTypeRequest,
        },
    },
}

M.PropertyRequest = {
    type = "structure",
    id = "PropertyRequest",
    members = {
        definition = M.PropertyDefinitionRequest,
        value = M.DataValue,
        updateType = {
            type = "string",
        },
    },
}

M.PropertyResponse = {
    type = "structure",
    id = "PropertyResponse",
    members = {
        definition = M.PropertyDefinitionResponse,
        value = M.DataValue,
        areAllPropertyValuesReturned = {
            type = "boolean",
        },
    },
}

M.PropertySummary = {
    type = "structure",
    id = "PropertySummary",
    members = {
        definition = M.PropertyDefinitionResponse,
        propertyName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        value = M.DataValue,
        areAllPropertyValuesReturned = {
            type = "boolean",
        },
    },
}

M.ComponentRequest = {
    type = "structure",
    id = "ComponentRequest",
    members = {
        description = {
            type = "string",
        },
        componentTypeId = {
            type = "string",
        },
        properties = {
            type = "map",
            key = { type = "string" },
            value = M.PropertyRequest,
        },
        propertyGroups = {
            type = "map",
            key = { type = "string" },
            value = M.ComponentPropertyGroupRequest,
        },
    },
}

M.ComponentResponse = {
    type = "structure",
    id = "ComponentResponse",
    members = {
        componentName = {
            type = "string",
        },
        description = {
            type = "string",
        },
        componentTypeId = {
            type = "string",
        },
        status = M.Status,
        definedIn = {
            type = "string",
        },
        properties = {
            type = "map",
            key = { type = "string" },
            value = M.PropertyResponse,
        },
        propertyGroups = {
            type = "map",
            key = { type = "string" },
            value = M.ComponentPropertyGroupResponse,
        },
        syncSource = {
            type = "string",
        },
        areAllPropertiesReturned = {
            type = "boolean",
        },
        compositeComponents = {
            type = "map",
            key = { type = "string" },
            value = M.ComponentSummary,
        },
        areAllCompositeComponentsReturned = {
            type = "boolean",
        },
    },
}

M.ComponentUpdateRequest = {
    type = "structure",
    id = "ComponentUpdateRequest",
    members = {
        updateType = {
            type = "string",
        },
        description = {
            type = "string",
        },
        componentTypeId = {
            type = "string",
        },
        propertyUpdates = {
            type = "map",
            key = { type = "string" },
            value = M.PropertyRequest,
        },
        propertyGroupUpdates = {
            type = "map",
            key = { type = "string" },
            value = M.ComponentPropertyGroupRequest,
        },
    },
}

M.CompositeComponentRequest = {
    type = "structure",
    id = "CompositeComponentRequest",
    members = {
        description = {
            type = "string",
        },
        properties = {
            type = "map",
            key = { type = "string" },
            value = M.PropertyRequest,
        },
        propertyGroups = {
            type = "map",
            key = { type = "string" },
            value = M.ComponentPropertyGroupRequest,
        },
    },
}

M.CompositeComponentUpdateRequest = {
    type = "structure",
    id = "CompositeComponentUpdateRequest",
    members = {
        updateType = {
            type = "string",
        },
        description = {
            type = "string",
        },
        propertyUpdates = {
            type = "map",
            key = { type = "string" },
            value = M.PropertyRequest,
        },
        propertyGroupUpdates = {
            type = "map",
            key = { type = "string" },
            value = M.ComponentPropertyGroupRequest,
        },
    },
}

M.ListPropertiesOutput = {
    type = "structure",
    id = "ListPropertiesOutput",
    members = {
        propertySummaries = {
            type = "list",
            member = M.PropertySummary,
            traits = {
                required = true,
            },
        },
        nextToken = {
            type = "string",
        },
    },
}

M.GetEntityOutput = {
    type = "structure",
    id = "GetEntityOutput",
    members = {
        entityId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        entityName = {
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
        status = setmetatable({ traits = {
            required = true,
        } }, { __index = M.Status }),
        workspaceId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        description = {
            type = "string",
        },
        components = {
            type = "map",
            key = { type = "string" },
            value = M.ComponentResponse,
        },
        parentEntityId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        hasChildEntities = {
            type = "boolean",
            traits = {
                required = true,
            },
        },
        creationDateTime = {
            type = "timestamp",
            traits = {
                required = true,
            },
        },
        updateDateTime = {
            type = "timestamp",
            traits = {
                required = true,
            },
        },
        syncSource = {
            type = "string",
        },
        areAllComponentsReturned = {
            type = "boolean",
        },
    },
}

M.CreateEntityInput = {
    type = "structure",
    id = "CreateEntityInput",
    members = {
        workspaceId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        entityId = {
            type = "string",
        },
        entityName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        description = {
            type = "string",
        },
        components = {
            type = "map",
            key = { type = "string" },
            value = M.ComponentRequest,
        },
        compositeComponents = {
            type = "map",
            key = { type = "string" },
            value = M.CompositeComponentRequest,
        },
        parentEntityId = {
            type = "string",
        },
        tags = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
    },
}

M.UpdateEntityInput = {
    type = "structure",
    id = "UpdateEntityInput",
    members = {
        workspaceId = {
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
        entityName = {
            type = "string",
        },
        description = {
            type = "string",
        },
        componentUpdates = {
            type = "map",
            key = { type = "string" },
            value = M.ComponentUpdateRequest,
        },
        compositeComponentUpdates = {
            type = "map",
            key = { type = "string" },
            value = M.CompositeComponentUpdateRequest,
        },
        parentEntityUpdate = M.ParentEntityUpdateRequest,
    },
}

return M
