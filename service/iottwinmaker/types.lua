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

M.EntityPropertyReference = {
    type = "structure",
    members = {
        componentName = {
            type = "string",
        },
        componentPath = {
            type = "string",
        },
        externalIdProperty = {
            type = "map",
            key_type = "string",
            value_type = "string",
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

M.ValidationException = {
    type = "structure",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.CancelMetadataTransferJobInput = {
    type = "structure",
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
    members = {
        totalCount = {
            type = "number",
        },
        succeededCount = {
            type = "number",
        },
        skippedCount = {
            type = "number",
        },
        failedCount = {
            type = "number",
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
    members = {
        state = {
            type = "string",
        },
        error = {
            type = "structure",
        },
        queuedPosition = {
            type = "number",
        },
    },
}

M.CancelMetadataTransferJobOutput = {
    type = "structure",
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
        status = {
            type = "structure",
            traits = {
                required = true,
            },
        },
        progress = {
            type = "structure",
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

M.CompositeComponentTypeRequest = {
    type = "structure",
    members = {
        componentTypeId = {
            type = "string",
        },
    },
}

M.LambdaFunction = {
    type = "structure",
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
    members = {
        lambda = {
            type = "structure",
        },
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
    members = {
        requiredProperties = {
            type = "list",
            member_type = "string",
        },
        scope = {
            type = "string",
        },
        implementedBy = {
            type = "structure",
        },
    },
}

M.Relationship = {
    type = "structure",
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
    members = {
        groupType = {
            type = "string",
        },
        propertyNames = {
            type = "list",
            member_type = "string",
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
    members = {
        groupType = {
            type = "string",
        },
        propertyNames = {
            type = "list",
            member_type = "string",
        },
        updateType = {
            type = "string",
        },
    },
}

M.CreateEntityOutput = {
    type = "structure",
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
    members = {
        type = {
            type = "string",
            traits = {
                required = true,
            },
        },
        s3Configuration = {
            type = "structure",
        },
        iotTwinMakerConfiguration = {
            type = "structure",
        },
    },
}

M.FilterByAsset = {
    type = "structure",
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
    members = {
        filterByAssetModel = {
            type = "structure",
        },
        filterByAsset = {
            type = "structure",
        },
    },
}

M.IotSiteWiseSourceConfiguration = {
    type = "structure",
    members = {
        filters = {
            type = "list",
            member_type = "union",
        },
    },
}

M.FilterByComponentType = {
    type = "structure",
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
    members = {
        filterByComponentType = {
            type = "structure",
        },
        filterByEntity = {
            type = "structure",
        },
    },
}

M.IotTwinMakerSourceConfiguration = {
    type = "structure",
    members = {
        workspace = {
            type = "string",
            traits = {
                required = true,
            },
        },
        filters = {
            type = "list",
            member_type = "union",
        },
    },
}

M.S3SourceConfiguration = {
    type = "structure",
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
    members = {
        type = {
            type = "string",
            traits = {
                required = true,
            },
        },
        s3Configuration = {
            type = "structure",
        },
        iotSiteWiseConfiguration = {
            type = "structure",
        },
        iotTwinMakerConfiguration = {
            type = "structure",
        },
    },
}

M.CreateMetadataTransferJobInput = {
    type = "structure",
    members = {
        metadataTransferJobId = {
            type = "string",
        },
        description = {
            type = "string",
        },
        sources = {
            type = "list",
            member_type = "structure",
            traits = {
                required = true,
            },
        },
        destination = {
            type = "structure",
            traits = {
                required = true,
            },
        },
    },
}

M.CreateMetadataTransferJobOutput = {
    type = "structure",
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
        status = {
            type = "structure",
            traits = {
                required = true,
            },
        },
    },
}

M.CreateSceneInput = {
    type = "structure",
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
            member_type = "string",
        },
        tags = {
            type = "map",
            key_type = "string",
            value_type = "string",
        },
        sceneMetadata = {
            type = "map",
            key_type = "string",
            value_type = "string",
        },
    },
}

M.CreateSceneOutput = {
    type = "structure",
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
            key_type = "string",
            value_type = "string",
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
            key_type = "string",
            value_type = "string",
        },
    },
}

M.CreateWorkspaceOutput = {
    type = "structure",
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
}

M.DeleteSyncJobInput = {
    type = "structure",
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
    members = {
        message = {
            type = "string",
        },
    },
}

M.ExecuteQueryInput = {
    type = "structure",
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
            type = "number",
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
    members = {
        rowData = {
            type = "list",
            member_type = "document",
        },
    },
}

M.ExecuteQueryOutput = {
    type = "structure",
    members = {
        columnDescriptions = {
            type = "list",
            member_type = "structure",
        },
        rows = {
            type = "list",
            member_type = "structure",
        },
        nextToken = {
            type = "string",
        },
    },
}

M.QueryTimeoutException = {
    type = "structure",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.GetComponentTypeInput = {
    type = "structure",
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
    members = {
        requiredProperties = {
            type = "list",
            member_type = "string",
        },
        scope = {
            type = "string",
        },
        implementedBy = {
            type = "structure",
        },
        isInherited = {
            type = "boolean",
        },
    },
}

M.PropertyGroupResponse = {
    type = "structure",
    members = {
        groupType = {
            type = "string",
            traits = {
                required = true,
            },
        },
        propertyNames = {
            type = "list",
            member_type = "string",
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
    members = {
        state = {
            type = "string",
        },
        error = {
            type = "structure",
        },
    },
}

M.GetEntityInput = {
    type = "structure",
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
    members = {
        groupType = {
            type = "string",
            traits = {
                required = true,
            },
        },
        propertyNames = {
            type = "list",
            member_type = "string",
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
            key_type = "string",
            value_type = "structure",
        },
        status = {
            type = "structure",
            traits = {
                required = true,
            },
        },
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
            member_type = "structure",
            traits = {
                required = true,
            },
        },
        destination = {
            type = "structure",
            traits = {
                required = true,
            },
        },
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
        status = {
            type = "structure",
            traits = {
                required = true,
            },
        },
        progress = {
            type = "structure",
        },
    },
}

M.GetPricingPlanInput = {
    type = "structure",
}

M.PricingTier = {
    TIER_1 = "TIER_1",
    TIER_2 = "TIER_2",
    TIER_3 = "TIER_3",
    TIER_4 = "TIER_4",
}

M.BundleInformation = {
    type = "structure",
    members = {
        bundleNames = {
            type = "list",
            member_type = "string",
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
    members = {
        billableEntityCount = {
            type = "number",
        },
        bundleInformation = {
            type = "structure",
        },
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
    members = {
        currentPricingPlan = {
            type = "structure",
            traits = {
                required = true,
            },
        },
        pendingPricingPlan = {
            type = "structure",
        },
    },
}

M.ConnectorFailureException = {
    type = "structure",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.ConnectorTimeoutException = {
    type = "structure",
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
    members = {
        interpolationType = {
            type = "string",
        },
        intervalInSeconds = {
            type = "number",
        },
    },
}

M.OrderByTime = {
    ASCENDING = "ASCENDING",
    DESCENDING = "DESCENDING",
}

M.GetSceneInput = {
    type = "structure",
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
            member_type = "string",
        },
        sceneMetadata = {
            type = "map",
            key_type = "string",
            value_type = "string",
        },
        generatedSceneMetadata = {
            type = "map",
            key_type = "string",
            value_type = "string",
        },
        error = {
            type = "structure",
        },
    },
}

M.GetSyncJobInput = {
    type = "structure",
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
    members = {
        state = {
            type = "string",
        },
        error = {
            type = "structure",
        },
    },
}

M.GetSyncJobOutput = {
    type = "structure",
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
        status = {
            type = "structure",
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
    },
}

M.GetWorkspaceInput = {
    type = "structure",
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
            member_type = "string",
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
            type = "number",
        },
        nextToken = {
            type = "string",
        },
    },
}

M.ListComponentsOutput = {
    type = "structure",
    members = {
        componentSummaries = {
            type = "list",
            member_type = "structure",
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
            member_type = "union",
        },
        nextToken = {
            type = "string",
        },
        maxResults = {
            type = "number",
        },
    },
}

M.ComponentTypeSummary = {
    type = "structure",
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
        status = {
            type = "structure",
        },
        componentTypeName = {
            type = "string",
        },
    },
}

M.ListComponentTypesOutput = {
    type = "structure",
    members = {
        workspaceId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        componentTypeSummaries = {
            type = "list",
            member_type = "structure",
            traits = {
                required = true,
            },
        },
        nextToken = {
            type = "string",
        },
        maxResults = {
            type = "number",
        },
    },
}

M.ListEntitiesFilter = {
    type = "union",
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
            member_type = "union",
        },
        maxResults = {
            type = "number",
        },
        nextToken = {
            type = "string",
        },
    },
}

M.EntitySummary = {
    type = "structure",
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
        status = {
            type = "structure",
            traits = {
                required = true,
            },
        },
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
    members = {
        entitySummaries = {
            type = "list",
            member_type = "structure",
        },
        nextToken = {
            type = "string",
        },
    },
}

M.ListMetadataTransferJobsFilter = {
    type = "union",
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
            member_type = "union",
        },
        nextToken = {
            type = "string",
        },
        maxResults = {
            type = "number",
        },
    },
}

M.MetadataTransferJobSummary = {
    type = "structure",
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
        status = {
            type = "structure",
            traits = {
                required = true,
            },
        },
        progress = {
            type = "structure",
        },
    },
}

M.ListMetadataTransferJobsOutput = {
    type = "structure",
    members = {
        metadataTransferJobSummaries = {
            type = "list",
            member_type = "structure",
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
            type = "number",
        },
        nextToken = {
            type = "string",
        },
    },
}

M.ListScenesInput = {
    type = "structure",
    members = {
        workspaceId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        maxResults = {
            type = "number",
        },
        nextToken = {
            type = "string",
        },
    },
}

M.SceneSummary = {
    type = "structure",
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
    members = {
        sceneSummaries = {
            type = "list",
            member_type = "structure",
        },
        nextToken = {
            type = "string",
        },
    },
}

M.ListSyncJobsInput = {
    type = "structure",
    members = {
        workspaceId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        maxResults = {
            type = "number",
        },
        nextToken = {
            type = "string",
        },
    },
}

M.SyncJobSummary = {
    type = "structure",
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
        status = {
            type = "structure",
        },
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
    members = {
        syncJobSummaries = {
            type = "list",
            member_type = "structure",
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
            member_type = "union",
        },
        maxResults = {
            type = "number",
        },
        nextToken = {
            type = "string",
        },
    },
}

M.SyncResourceStatus = {
    type = "structure",
    members = {
        state = {
            type = "string",
        },
        error = {
            type = "structure",
        },
    },
}

M.SyncResourceSummary = {
    type = "structure",
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
        status = {
            type = "structure",
        },
        updateDateTime = {
            type = "timestamp",
        },
    },
}

M.ListSyncResourcesOutput = {
    type = "structure",
    members = {
        syncResources = {
            type = "list",
            member_type = "structure",
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
        maxResults = {
            type = "number",
        },
        nextToken = {
            type = "string",
        },
    },
}

M.ListTagsForResourceOutput = {
    type = "structure",
    members = {
        tags = {
            type = "map",
            key_type = "string",
            value_type = "string",
        },
        nextToken = {
            type = "string",
        },
    },
}

M.ListWorkspacesInput = {
    type = "structure",
    members = {
        maxResults = {
            type = "number",
        },
        nextToken = {
            type = "string",
        },
    },
}

M.WorkspaceSummary = {
    type = "structure",
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
            member_type = "string",
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
    members = {
        workspaceSummaries = {
            type = "list",
            member_type = "structure",
        },
        nextToken = {
            type = "string",
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
            type = "map",
            key_type = "string",
            value_type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.TagResourceOutput = {
    type = "structure",
}

M.TooManyTagsException = {
    type = "structure",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.UntagResourceInput = {
    type = "structure",
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
            member_type = "string",
            traits = {
                http_query = "tagKeys",
                required = true,
            },
        },
    },
}

M.UntagResourceOutput = {
    type = "structure",
}

M.UpdateComponentTypeOutput = {
    type = "structure",
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
    members = {
        pricingMode = {
            type = "string",
            traits = {
                required = true,
            },
        },
        bundleNames = {
            type = "list",
            member_type = "string",
        },
    },
}

M.UpdatePricingPlanOutput = {
    type = "structure",
    members = {
        currentPricingPlan = {
            type = "structure",
            traits = {
                required = true,
            },
        },
        pendingPricingPlan = {
            type = "structure",
        },
    },
}

M.UpdateSceneInput = {
    type = "structure",
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
            member_type = "string",
        },
        sceneMetadata = {
            type = "map",
            key_type = "string",
            value_type = "string",
        },
    },
}

M.UpdateSceneOutput = {
    type = "structure",
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
    members = {
        booleanValue = {
            type = "boolean",
        },
        doubleValue = {
            type = "number",
        },
        integerValue = {
            type = "number",
        },
        longValue = {
            type = "number",
        },
        stringValue = {
            type = "string",
        },
        listValue = {
            type = "list",
            member_type = "structure",
        },
        mapValue = {
            type = "map",
            key_type = "string",
            value_type = "structure",
        },
        relationshipValue = {
            type = "structure",
        },
        expression = {
            type = "string",
        },
    },
}

M.PropertyFilter = {
    type = "structure",
    members = {
        propertyName = {
            type = "string",
        },
        operator = {
            type = "string",
        },
        value = {
            type = "structure",
        },
    },
}

M.PropertyLatestValue = {
    type = "structure",
    members = {
        propertyReference = {
            type = "structure",
            traits = {
                required = true,
            },
        },
        propertyValue = {
            type = "structure",
        },
    },
}

M.PropertyValue = {
    type = "structure",
    members = {
        timestamp = {
            type = "timestamp",
        },
        value = {
            type = "structure",
            traits = {
                required = true,
            },
        },
        time = {
            type = "string",
        },
    },
}

M.DataType = {
    type = "structure",
    members = {
        type = {
            type = "string",
            traits = {
                required = true,
            },
        },
        nestedType = {
            type = "structure",
        },
        allowedValues = {
            type = "list",
            member_type = "structure",
        },
        unitOfMeasure = {
            type = "string",
        },
        relationship = {
            type = "structure",
        },
    },
}

M.GetPropertyValueHistoryInput = {
    type = "structure",
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
            member_type = "string",
            traits = {
                required = true,
            },
        },
        propertyFilters = {
            type = "list",
            member_type = "structure",
        },
        startDateTime = {
            type = "timestamp",
        },
        endDateTime = {
            type = "timestamp",
        },
        interpolation = {
            type = "structure",
        },
        nextToken = {
            type = "string",
        },
        maxResults = {
            type = "number",
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
    members = {
        entityPropertyReference = {
            type = "structure",
            traits = {
                required = true,
            },
        },
        propertyValues = {
            type = "list",
            member_type = "structure",
        },
    },
}

M.PropertyValueHistory = {
    type = "structure",
    members = {
        entityPropertyReference = {
            type = "structure",
            traits = {
                required = true,
            },
        },
        values = {
            type = "list",
            member_type = "structure",
        },
    },
}

M.TabularConditions = {
    type = "structure",
    members = {
        orderBy = {
            type = "list",
            member_type = "structure",
        },
        propertyFilters = {
            type = "list",
            member_type = "structure",
        },
    },
}

M.BatchPutPropertyError = {
    type = "structure",
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
        entry = {
            type = "structure",
            traits = {
                required = true,
            },
        },
    },
}

M.GetPropertyValueInput = {
    type = "structure",
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
            member_type = "string",
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
            type = "number",
        },
        nextToken = {
            type = "string",
        },
        propertyGroupName = {
            type = "string",
        },
        tabularConditions = {
            type = "structure",
        },
    },
}

M.BatchPutPropertyValuesInput = {
    type = "structure",
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
            member_type = "structure",
            traits = {
                required = true,
            },
        },
    },
}

M.GetPropertyValueHistoryOutput = {
    type = "structure",
    members = {
        propertyValues = {
            type = "list",
            member_type = "structure",
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
    members = {
        errors = {
            type = "list",
            member_type = "structure",
            traits = {
                required = true,
            },
        },
    },
}

M.PropertyDefinitionRequest = {
    type = "structure",
    members = {
        dataType = {
            type = "structure",
        },
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
        defaultValue = {
            type = "structure",
        },
        configuration = {
            type = "map",
            key_type = "string",
            value_type = "string",
        },
        displayName = {
            type = "string",
        },
    },
}

M.PropertyDefinitionResponse = {
    type = "structure",
    members = {
        dataType = {
            type = "structure",
            traits = {
                required = true,
            },
        },
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
        defaultValue = {
            type = "structure",
        },
        configuration = {
            type = "map",
            key_type = "string",
            value_type = "string",
        },
        displayName = {
            type = "string",
        },
    },
}

M.BatchPutPropertyValuesOutput = {
    type = "structure",
    members = {
        errorEntries = {
            type = "list",
            member_type = "structure",
            traits = {
                required = true,
            },
        },
    },
}

M.GetPropertyValueOutput = {
    type = "structure",
    members = {
        propertyValues = {
            type = "map",
            key_type = "string",
            value_type = "structure",
        },
        nextToken = {
            type = "string",
        },
        tabularPropertyValues = {
            type = "list",
            member_type = "list",
        },
    },
}

M.CreateComponentTypeInput = {
    type = "structure",
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
            key_type = "string",
            value_type = "structure",
        },
        extendsFrom = {
            type = "list",
            member_type = "string",
        },
        functions = {
            type = "map",
            key_type = "string",
            value_type = "structure",
        },
        tags = {
            type = "map",
            key_type = "string",
            value_type = "string",
        },
        propertyGroups = {
            type = "map",
            key_type = "string",
            value_type = "structure",
        },
        componentTypeName = {
            type = "string",
        },
        compositeComponentTypes = {
            type = "map",
            key_type = "string",
            value_type = "structure",
        },
    },
}

M.GetComponentTypeOutput = {
    type = "structure",
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
            key_type = "string",
            value_type = "structure",
        },
        extendsFrom = {
            type = "list",
            member_type = "string",
        },
        functions = {
            type = "map",
            key_type = "string",
            value_type = "structure",
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
        status = {
            type = "structure",
        },
        propertyGroups = {
            type = "map",
            key_type = "string",
            value_type = "structure",
        },
        syncSource = {
            type = "string",
        },
        componentTypeName = {
            type = "string",
        },
        compositeComponentTypes = {
            type = "map",
            key_type = "string",
            value_type = "structure",
        },
    },
}

M.UpdateComponentTypeInput = {
    type = "structure",
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
            key_type = "string",
            value_type = "structure",
        },
        extendsFrom = {
            type = "list",
            member_type = "string",
        },
        functions = {
            type = "map",
            key_type = "string",
            value_type = "structure",
        },
        propertyGroups = {
            type = "map",
            key_type = "string",
            value_type = "structure",
        },
        componentTypeName = {
            type = "string",
        },
        compositeComponentTypes = {
            type = "map",
            key_type = "string",
            value_type = "structure",
        },
    },
}

M.PropertyRequest = {
    type = "structure",
    members = {
        definition = {
            type = "structure",
        },
        value = {
            type = "structure",
        },
        updateType = {
            type = "string",
        },
    },
}

M.PropertyResponse = {
    type = "structure",
    members = {
        definition = {
            type = "structure",
        },
        value = {
            type = "structure",
        },
        areAllPropertyValuesReturned = {
            type = "boolean",
        },
    },
}

M.PropertySummary = {
    type = "structure",
    members = {
        definition = {
            type = "structure",
        },
        propertyName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        value = {
            type = "structure",
        },
        areAllPropertyValuesReturned = {
            type = "boolean",
        },
    },
}

M.ComponentRequest = {
    type = "structure",
    members = {
        description = {
            type = "string",
        },
        componentTypeId = {
            type = "string",
        },
        properties = {
            type = "map",
            key_type = "string",
            value_type = "structure",
        },
        propertyGroups = {
            type = "map",
            key_type = "string",
            value_type = "structure",
        },
    },
}

M.ComponentResponse = {
    type = "structure",
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
        status = {
            type = "structure",
        },
        definedIn = {
            type = "string",
        },
        properties = {
            type = "map",
            key_type = "string",
            value_type = "structure",
        },
        propertyGroups = {
            type = "map",
            key_type = "string",
            value_type = "structure",
        },
        syncSource = {
            type = "string",
        },
        areAllPropertiesReturned = {
            type = "boolean",
        },
        compositeComponents = {
            type = "map",
            key_type = "string",
            value_type = "structure",
        },
        areAllCompositeComponentsReturned = {
            type = "boolean",
        },
    },
}

M.ComponentUpdateRequest = {
    type = "structure",
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
            key_type = "string",
            value_type = "structure",
        },
        propertyGroupUpdates = {
            type = "map",
            key_type = "string",
            value_type = "structure",
        },
    },
}

M.CompositeComponentRequest = {
    type = "structure",
    members = {
        description = {
            type = "string",
        },
        properties = {
            type = "map",
            key_type = "string",
            value_type = "structure",
        },
        propertyGroups = {
            type = "map",
            key_type = "string",
            value_type = "structure",
        },
    },
}

M.CompositeComponentUpdateRequest = {
    type = "structure",
    members = {
        updateType = {
            type = "string",
        },
        description = {
            type = "string",
        },
        propertyUpdates = {
            type = "map",
            key_type = "string",
            value_type = "structure",
        },
        propertyGroupUpdates = {
            type = "map",
            key_type = "string",
            value_type = "structure",
        },
    },
}

M.ListPropertiesOutput = {
    type = "structure",
    members = {
        propertySummaries = {
            type = "list",
            member_type = "structure",
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
        status = {
            type = "structure",
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
        description = {
            type = "string",
        },
        components = {
            type = "map",
            key_type = "string",
            value_type = "structure",
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
            key_type = "string",
            value_type = "structure",
        },
        compositeComponents = {
            type = "map",
            key_type = "string",
            value_type = "structure",
        },
        parentEntityId = {
            type = "string",
        },
        tags = {
            type = "map",
            key_type = "string",
            value_type = "string",
        },
    },
}

M.UpdateEntityInput = {
    type = "structure",
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
            key_type = "string",
            value_type = "structure",
        },
        compositeComponentUpdates = {
            type = "map",
            key_type = "string",
            value_type = "structure",
        },
        parentEntityUpdate = {
            type = "structure",
        },
    },
}

return M
