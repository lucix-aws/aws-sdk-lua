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

M.GroupIdentity = {
    type = "structure",
    members = {
        id = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.IAMRoleIdentity = {
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

M.IAMUserIdentity = {
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

M.UserIdentity = {
    type = "structure",
    members = {
        id = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.Identity = {
    type = "structure",
    members = {
        user = {
            type = "structure",
        },
        group = {
            type = "structure",
        },
        iamUser = {
            type = "structure",
        },
        iamRole = {
            type = "structure",
        },
    },
}

M.Permission = {
    ADMINISTRATOR = "ADMINISTRATOR",
    VIEWER = "VIEWER",
}

M.PortalResource = {
    type = "structure",
    members = {
        id = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.ProjectResource = {
    type = "structure",
    members = {
        id = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.Resource = {
    type = "structure",
    members = {
        portal = {
            type = "structure",
        },
        project = {
            type = "structure",
        },
    },
}

M.AccessPolicySummary = {
    type = "structure",
    members = {
        id = {
            type = "string",
            traits = {
                required = true,
            },
        },
        identity = {
            type = "structure",
            traits = {
                required = true,
            },
        },
        resource = {
            type = "structure",
            traits = {
                required = true,
            },
        },
        permission = {
            type = "string",
            traits = {
                required = true,
            },
        },
        creationDate = {
            type = "timestamp",
        },
        lastUpdateDate = {
            type = "timestamp",
        },
    },
}

M.ActionDefinition = {
    type = "structure",
    members = {
        actionDefinitionId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        actionName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        actionType = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.ActionPayload = {
    type = "structure",
    members = {
        stringValue = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.ResolveTo = {
    type = "structure",
    members = {
        assetId = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.TargetResource = {
    type = "structure",
    members = {
        assetId = {
            type = "string",
        },
        computationModelId = {
            type = "string",
        },
    },
}

M.ActionSummary = {
    type = "structure",
    members = {
        actionId = {
            type = "string",
        },
        actionDefinitionId = {
            type = "string",
        },
        targetResource = {
            type = "structure",
        },
        resolveTo = {
            type = "structure",
        },
    },
}

M.Quality = {
    GOOD = "GOOD",
    BAD = "BAD",
    UNCERTAIN = "UNCERTAIN",
}

M.Aggregates = {
    type = "structure",
    members = {
        average = {
            type = "number",
        },
        count = {
            type = "number",
        },
        maximum = {
            type = "number",
        },
        minimum = {
            type = "number",
        },
        sum = {
            type = "number",
        },
        standardDeviation = {
            type = "number",
        },
    },
}

M.AggregatedValue = {
    type = "structure",
    members = {
        timestamp = {
            type = "timestamp",
            traits = {
                required = true,
            },
        },
        quality = {
            type = "string",
        },
        value = {
            type = "structure",
            traits = {
                required = true,
            },
        },
    },
}

M.AggregateType = {
    AVERAGE = "AVERAGE",
    COUNT = "COUNT",
    MAXIMUM = "MAXIMUM",
    MINIMUM = "MINIMUM",
    SUM = "SUM",
    STANDARD_DEVIATION = "STANDARD_DEVIATION",
}

M.Alarms = {
    type = "structure",
    members = {
        alarmRoleArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        notificationLambdaArn = {
            type = "string",
        },
    },
}

M.AssetBindingValueFilter = {
    type = "structure",
    members = {
        assetId = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.PropertyDataType = {
    STRING = "STRING",
    INTEGER = "INTEGER",
    DOUBLE = "DOUBLE",
    BOOLEAN = "BOOLEAN",
    STRUCT = "STRUCT",
}

M.PropertyNotificationState = {
    ENABLED = "ENABLED",
    DISABLED = "DISABLED",
}

M.PropertyNotification = {
    type = "structure",
    members = {
        topic = {
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

M.AssetPropertyPathSegment = {
    type = "structure",
    members = {
        id = {
            type = "string",
        },
        name = {
            type = "string",
        },
    },
}

M.AssetProperty = {
    type = "structure",
    members = {
        id = {
            type = "string",
            traits = {
                required = true,
            },
        },
        externalId = {
            type = "string",
        },
        name = {
            type = "string",
            traits = {
                required = true,
            },
        },
        alias = {
            type = "string",
        },
        notification = {
            type = "structure",
        },
        dataType = {
            type = "string",
            traits = {
                required = true,
            },
        },
        dataTypeSpec = {
            type = "string",
        },
        unit = {
            type = "string",
        },
        path = {
            type = "list",
            member_type = "structure",
        },
    },
}

M.AssetCompositeModel = {
    type = "structure",
    members = {
        name = {
            type = "string",
            traits = {
                required = true,
            },
        },
        description = {
            type = "string",
        },
        type = {
            type = "string",
            traits = {
                required = true,
            },
        },
        properties = {
            type = "list",
            member_type = "structure",
            traits = {
                required = true,
            },
        },
        id = {
            type = "string",
        },
        externalId = {
            type = "string",
        },
    },
}

M.AssetCompositeModelPathSegment = {
    type = "structure",
    members = {
        id = {
            type = "string",
        },
        name = {
            type = "string",
        },
    },
}

M.AssetCompositeModelSummary = {
    type = "structure",
    members = {
        id = {
            type = "string",
            traits = {
                required = true,
            },
        },
        externalId = {
            type = "string",
        },
        name = {
            type = "string",
            traits = {
                required = true,
            },
        },
        type = {
            type = "string",
            traits = {
                required = true,
            },
        },
        description = {
            type = "string",
            traits = {
                required = true,
            },
        },
        path = {
            type = "list",
            member_type = "structure",
            traits = {
                required = true,
            },
        },
    },
}

M.AssetErrorCode = {
    INTERNAL_FAILURE = "INTERNAL_FAILURE",
}

M.AssetErrorDetails = {
    type = "structure",
    members = {
        assetId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        code = {
            type = "string",
            traits = {
                required = true,
            },
        },
        message = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.AssetHierarchy = {
    type = "structure",
    members = {
        id = {
            type = "string",
        },
        externalId = {
            type = "string",
        },
        name = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.AssetHierarchyInfo = {
    type = "structure",
    members = {
        parentAssetId = {
            type = "string",
        },
        childAssetId = {
            type = "string",
        },
    },
}

M.AssetModelBindingValueFilter = {
    type = "structure",
    members = {
        assetModelId = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.AssetModelPropertyPathSegment = {
    type = "structure",
    members = {
        id = {
            type = "string",
        },
        name = {
            type = "string",
        },
    },
}

M.Attribute = {
    type = "structure",
    members = {
        defaultValue = {
            type = "string",
        },
    },
}

M.ForwardingConfigState = {
    DISABLED = "DISABLED",
    ENABLED = "ENABLED",
}

M.ForwardingConfig = {
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

M.MeasurementProcessingConfig = {
    type = "structure",
    members = {
        forwardingConfig = {
            type = "structure",
            traits = {
                required = true,
            },
        },
    },
}

M.Measurement = {
    type = "structure",
    members = {
        processingConfig = {
            type = "structure",
        },
    },
}

M.ComputeLocation = {
    EDGE = "EDGE",
    CLOUD = "CLOUD",
}

M.MetricProcessingConfig = {
    type = "structure",
    members = {
        computeLocation = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.VariableValue = {
    type = "structure",
    members = {
        propertyId = {
            type = "string",
        },
        hierarchyId = {
            type = "string",
        },
        propertyPath = {
            type = "list",
            member_type = "structure",
        },
    },
}

M.ExpressionVariable = {
    type = "structure",
    members = {
        name = {
            type = "string",
            traits = {
                required = true,
            },
        },
        value = {
            type = "structure",
            traits = {
                required = true,
            },
        },
    },
}

M.TumblingWindow = {
    type = "structure",
    members = {
        interval = {
            type = "string",
            traits = {
                required = true,
            },
        },
        offset = {
            type = "string",
        },
    },
}

M.MetricWindow = {
    type = "structure",
    members = {
        tumbling = {
            type = "structure",
        },
    },
}

M.Metric = {
    type = "structure",
    members = {
        expression = {
            type = "string",
        },
        variables = {
            type = "list",
            member_type = "structure",
        },
        window = {
            type = "structure",
            traits = {
                required = true,
            },
        },
        processingConfig = {
            type = "structure",
        },
    },
}

M.TransformProcessingConfig = {
    type = "structure",
    members = {
        computeLocation = {
            type = "string",
            traits = {
                required = true,
            },
        },
        forwardingConfig = {
            type = "structure",
        },
    },
}

M.Transform = {
    type = "structure",
    members = {
        expression = {
            type = "string",
            traits = {
                required = true,
            },
        },
        variables = {
            type = "list",
            member_type = "structure",
            traits = {
                required = true,
            },
        },
        processingConfig = {
            type = "structure",
        },
    },
}

M.PropertyType = {
    type = "structure",
    members = {
        attribute = {
            type = "structure",
        },
        measurement = {
            type = "structure",
        },
        transform = {
            type = "structure",
        },
        metric = {
            type = "structure",
        },
    },
}

M.AssetModelProperty = {
    type = "structure",
    members = {
        id = {
            type = "string",
        },
        externalId = {
            type = "string",
        },
        name = {
            type = "string",
            traits = {
                required = true,
            },
        },
        dataType = {
            type = "string",
            traits = {
                required = true,
            },
        },
        dataTypeSpec = {
            type = "string",
        },
        unit = {
            type = "string",
        },
        type = {
            type = "structure",
            traits = {
                required = true,
            },
        },
        path = {
            type = "list",
            member_type = "structure",
        },
    },
}

M.AssetModelCompositeModel = {
    type = "structure",
    members = {
        name = {
            type = "string",
            traits = {
                required = true,
            },
        },
        description = {
            type = "string",
        },
        type = {
            type = "string",
            traits = {
                required = true,
            },
        },
        properties = {
            type = "list",
            member_type = "structure",
        },
        id = {
            type = "string",
        },
        externalId = {
            type = "string",
        },
    },
}

M.AssetModelPropertyDefinition = {
    type = "structure",
    members = {
        id = {
            type = "string",
        },
        externalId = {
            type = "string",
        },
        name = {
            type = "string",
            traits = {
                required = true,
            },
        },
        dataType = {
            type = "string",
            traits = {
                required = true,
            },
        },
        dataTypeSpec = {
            type = "string",
        },
        unit = {
            type = "string",
        },
        type = {
            type = "structure",
            traits = {
                required = true,
            },
        },
    },
}

M.AssetModelCompositeModelDefinition = {
    type = "structure",
    members = {
        id = {
            type = "string",
        },
        externalId = {
            type = "string",
        },
        name = {
            type = "string",
            traits = {
                required = true,
            },
        },
        description = {
            type = "string",
        },
        type = {
            type = "string",
            traits = {
                required = true,
            },
        },
        properties = {
            type = "list",
            member_type = "structure",
        },
    },
}

M.AssetModelCompositeModelPathSegment = {
    type = "structure",
    members = {
        id = {
            type = "string",
        },
        name = {
            type = "string",
        },
    },
}

M.AssetModelCompositeModelSummary = {
    type = "structure",
    members = {
        id = {
            type = "string",
            traits = {
                required = true,
            },
        },
        externalId = {
            type = "string",
        },
        name = {
            type = "string",
            traits = {
                required = true,
            },
        },
        type = {
            type = "string",
            traits = {
                required = true,
            },
        },
        description = {
            type = "string",
        },
        path = {
            type = "list",
            member_type = "structure",
        },
    },
}

M.AssetModelHierarchy = {
    type = "structure",
    members = {
        id = {
            type = "string",
        },
        externalId = {
            type = "string",
        },
        name = {
            type = "string",
            traits = {
                required = true,
            },
        },
        childAssetModelId = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.AssetModelHierarchyDefinition = {
    type = "structure",
    members = {
        id = {
            type = "string",
        },
        externalId = {
            type = "string",
        },
        name = {
            type = "string",
            traits = {
                required = true,
            },
        },
        childAssetModelId = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.AssetModelPropertyBindingValue = {
    type = "structure",
    members = {
        assetModelId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        propertyId = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.AssetModelPropertyBindingValueFilter = {
    type = "structure",
    members = {
        assetModelId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        propertyId = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.InterfaceSummary = {
    type = "structure",
    members = {
        interfaceAssetModelId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        interfaceAssetModelPropertyId = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.AssetModelPropertySummary = {
    type = "structure",
    members = {
        id = {
            type = "string",
        },
        externalId = {
            type = "string",
        },
        name = {
            type = "string",
            traits = {
                required = true,
            },
        },
        dataType = {
            type = "string",
            traits = {
                required = true,
            },
        },
        dataTypeSpec = {
            type = "string",
        },
        unit = {
            type = "string",
        },
        type = {
            type = "structure",
            traits = {
                required = true,
            },
        },
        assetModelCompositeModelId = {
            type = "string",
        },
        path = {
            type = "list",
            member_type = "structure",
        },
        interfaceSummaries = {
            type = "list",
            member_type = "structure",
        },
    },
}

M.AssetModelState = {
    CREATING = "CREATING",
    ACTIVE = "ACTIVE",
    UPDATING = "UPDATING",
    PROPAGATING = "PROPAGATING",
    DELETING = "DELETING",
    FAILED = "FAILED",
}

M.ErrorCode = {
    VALIDATION_ERROR = "VALIDATION_ERROR",
    INTERNAL_FAILURE = "INTERNAL_FAILURE",
}

M.DetailedErrorCode = {
    INCOMPATIBLE_COMPUTE_LOCATION = "INCOMPATIBLE_COMPUTE_LOCATION",
    INCOMPATIBLE_FORWARDING_CONFIGURATION = "INCOMPATIBLE_FORWARDING_CONFIGURATION",
}

M.DetailedError = {
    type = "structure",
    members = {
        code = {
            type = "string",
            traits = {
                required = true,
            },
        },
        message = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.ErrorDetails = {
    type = "structure",
    members = {
        code = {
            type = "string",
            traits = {
                required = true,
            },
        },
        message = {
            type = "string",
            traits = {
                required = true,
            },
        },
        details = {
            type = "list",
            member_type = "structure",
        },
    },
}

M.AssetModelStatus = {
    type = "structure",
    members = {
        state = {
            type = "string",
            traits = {
                required = true,
            },
        },
        error = {
            type = "structure",
        },
    },
}

M.AssetModelType = {
    ASSET_MODEL = "ASSET_MODEL",
    COMPONENT_MODEL = "COMPONENT_MODEL",
    INTERFACE = "INTERFACE",
}

M.AssetModelSummary = {
    type = "structure",
    members = {
        id = {
            type = "string",
            traits = {
                required = true,
            },
        },
        externalId = {
            type = "string",
        },
        arn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        name = {
            type = "string",
            traits = {
                required = true,
            },
        },
        assetModelType = {
            type = "string",
        },
        description = {
            type = "string",
            traits = {
                required = true,
            },
        },
        creationDate = {
            type = "timestamp",
            traits = {
                required = true,
            },
        },
        lastUpdateDate = {
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
        version = {
            type = "string",
        },
    },
}

M.AssetModelVersionType = {
    LATEST = "LATEST",
    ACTIVE = "ACTIVE",
}

M.AssetPropertyBindingValue = {
    type = "structure",
    members = {
        assetId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        propertyId = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.AssetPropertyBindingValueFilter = {
    type = "structure",
    members = {
        assetId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        propertyId = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.AssetPropertySummary = {
    type = "structure",
    members = {
        id = {
            type = "string",
            traits = {
                required = true,
            },
        },
        externalId = {
            type = "string",
        },
        alias = {
            type = "string",
        },
        unit = {
            type = "string",
        },
        notification = {
            type = "structure",
        },
        assetCompositeModelId = {
            type = "string",
        },
        path = {
            type = "list",
            member_type = "structure",
        },
    },
}

M.TimeInNanos = {
    type = "structure",
    members = {
        timeInSeconds = {
            type = "number",
            traits = {
                required = true,
            },
        },
        offsetInNanos = {
            type = "number",
        },
    },
}

M.RawValueType = {
    DOUBLE = "D",
    BOOLEAN = "B",
    STRING = "S",
    INTEGER = "I",
    UNKNOWN = "U",
}

M.PropertyValueNullValue = {
    type = "structure",
    members = {
        valueType = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.Variant = {
    type = "structure",
    members = {
        stringValue = {
            type = "string",
        },
        integerValue = {
            type = "number",
        },
        doubleValue = {
            type = "number",
        },
        booleanValue = {
            type = "boolean",
        },
        nullValue = {
            type = "structure",
        },
    },
}

M.AssetPropertyValue = {
    type = "structure",
    members = {
        value = {
            type = "structure",
            traits = {
                required = true,
            },
        },
        timestamp = {
            type = "structure",
            traits = {
                required = true,
            },
        },
        quality = {
            type = "string",
        },
    },
}

M.AssetRelationshipType = {
    HIERARCHY = "HIERARCHY",
}

M.AssetRelationshipSummary = {
    type = "structure",
    members = {
        hierarchyInfo = {
            type = "structure",
        },
        relationshipType = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.AssetState = {
    CREATING = "CREATING",
    ACTIVE = "ACTIVE",
    UPDATING = "UPDATING",
    DELETING = "DELETING",
    FAILED = "FAILED",
}

M.AssetStatus = {
    type = "structure",
    members = {
        state = {
            type = "string",
            traits = {
                required = true,
            },
        },
        error = {
            type = "structure",
        },
    },
}

M.AssetSummary = {
    type = "structure",
    members = {
        id = {
            type = "string",
            traits = {
                required = true,
            },
        },
        externalId = {
            type = "string",
        },
        arn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        name = {
            type = "string",
            traits = {
                required = true,
            },
        },
        assetModelId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        creationDate = {
            type = "timestamp",
            traits = {
                required = true,
            },
        },
        lastUpdateDate = {
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
        hierarchies = {
            type = "list",
            member_type = "structure",
            traits = {
                required = true,
            },
        },
        description = {
            type = "string",
        },
    },
}

M.AssociateAssetsInput = {
    type = "structure",
    members = {
        assetId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        hierarchyId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        childAssetId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        clientToken = {
            type = "string",
        },
    },
}

M.AssociateAssetsOutput = {
    type = "structure",
}

M.ConflictingOperationException = {
    type = "structure",
    error = "client",
    members = {
        message = {
            type = "string",
            traits = {
                required = true,
            },
        },
        resourceId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        resourceArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.InternalFailureException = {
    type = "structure",
    error = "server",
    members = {
        message = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.InvalidRequestException = {
    type = "structure",
    error = "client",
    members = {
        message = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.LimitExceededException = {
    type = "structure",
    error = "client",
    members = {
        message = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.ResourceAlreadyExistsException = {
    type = "structure",
    error = "client",
    members = {
        message = {
            type = "string",
            traits = {
                required = true,
            },
        },
        resourceId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        resourceArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.ResourceNotFoundException = {
    type = "structure",
    error = "client",
    members = {
        message = {
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
        message = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.AssociatedAssetsSummary = {
    type = "structure",
    members = {
        id = {
            type = "string",
            traits = {
                required = true,
            },
        },
        externalId = {
            type = "string",
        },
        arn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        name = {
            type = "string",
            traits = {
                required = true,
            },
        },
        assetModelId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        creationDate = {
            type = "timestamp",
            traits = {
                required = true,
            },
        },
        lastUpdateDate = {
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
        hierarchies = {
            type = "list",
            member_type = "structure",
            traits = {
                required = true,
            },
        },
        description = {
            type = "string",
        },
    },
}

M.AssociateTimeSeriesToAssetPropertyInput = {
    type = "structure",
    members = {
        alias = {
            type = "string",
            traits = {
                http_query = "alias",
                required = true,
            },
        },
        assetId = {
            type = "string",
            traits = {
                http_query = "assetId",
                required = true,
            },
        },
        propertyId = {
            type = "string",
            traits = {
                http_query = "propertyId",
                required = true,
            },
        },
        clientToken = {
            type = "string",
        },
    },
}

M.AssociateTimeSeriesToAssetPropertyOutput = {
    type = "structure",
}

M.AuthMode = {
    IAM = "IAM",
    SSO = "SSO",
}

M.BatchAssociateProjectAssetsInput = {
    type = "structure",
    members = {
        projectId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        assetIds = {
            type = "list",
            member_type = "string",
            traits = {
                required = true,
            },
        },
        clientToken = {
            type = "string",
        },
    },
}

M.BatchAssociateProjectAssetsOutput = {
    type = "structure",
    members = {
        errors = {
            type = "list",
            member_type = "structure",
        },
    },
}

M.BatchDisassociateProjectAssetsInput = {
    type = "structure",
    members = {
        projectId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        assetIds = {
            type = "list",
            member_type = "string",
            traits = {
                required = true,
            },
        },
        clientToken = {
            type = "string",
        },
    },
}

M.BatchDisassociateProjectAssetsOutput = {
    type = "structure",
    members = {
        errors = {
            type = "list",
            member_type = "structure",
        },
    },
}

M.TimeOrdering = {
    ASCENDING = "ASCENDING",
    DESCENDING = "DESCENDING",
}

M.BatchGetAssetPropertyAggregatesEntry = {
    type = "structure",
    members = {
        entryId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        assetId = {
            type = "string",
        },
        propertyId = {
            type = "string",
        },
        propertyAlias = {
            type = "string",
        },
        aggregateTypes = {
            type = "list",
            member_type = "string",
            traits = {
                required = true,
            },
        },
        resolution = {
            type = "string",
            traits = {
                required = true,
            },
        },
        startDate = {
            type = "timestamp",
            traits = {
                required = true,
            },
        },
        endDate = {
            type = "timestamp",
            traits = {
                required = true,
            },
        },
        qualities = {
            type = "list",
            member_type = "string",
        },
        timeOrdering = {
            type = "string",
        },
    },
}

M.BatchGetAssetPropertyAggregatesInput = {
    type = "structure",
    members = {
        entries = {
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

M.BatchGetAssetPropertyAggregatesErrorCode = {
    ResourceNotFoundException = "ResourceNotFoundException",
    InvalidRequestException = "InvalidRequestException",
    AccessDeniedException = "AccessDeniedException",
}

M.BatchGetAssetPropertyAggregatesErrorEntry = {
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
        entryId = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.BatchEntryCompletionStatus = {
    SUCCESS = "SUCCESS",
    ERROR = "ERROR",
}

M.BatchGetAssetPropertyAggregatesErrorInfo = {
    type = "structure",
    members = {
        errorCode = {
            type = "string",
            traits = {
                required = true,
            },
        },
        errorTimestamp = {
            type = "timestamp",
            traits = {
                required = true,
            },
        },
    },
}

M.BatchGetAssetPropertyAggregatesSkippedEntry = {
    type = "structure",
    members = {
        entryId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        completionStatus = {
            type = "string",
            traits = {
                required = true,
            },
        },
        errorInfo = {
            type = "structure",
        },
    },
}

M.BatchGetAssetPropertyAggregatesSuccessEntry = {
    type = "structure",
    members = {
        entryId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        aggregatedValues = {
            type = "list",
            member_type = "structure",
            traits = {
                required = true,
            },
        },
    },
}

M.BatchGetAssetPropertyAggregatesOutput = {
    type = "structure",
    members = {
        errorEntries = {
            type = "list",
            member_type = "structure",
            traits = {
                required = true,
            },
        },
        successEntries = {
            type = "list",
            member_type = "structure",
            traits = {
                required = true,
            },
        },
        skippedEntries = {
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

M.ServiceUnavailableException = {
    type = "structure",
    error = "server",
    members = {
        message = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.BatchGetAssetPropertyValueEntry = {
    type = "structure",
    members = {
        entryId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        assetId = {
            type = "string",
        },
        propertyId = {
            type = "string",
        },
        propertyAlias = {
            type = "string",
        },
    },
}

M.BatchGetAssetPropertyValueInput = {
    type = "structure",
    members = {
        entries = {
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

M.BatchGetAssetPropertyValueErrorCode = {
    ResourceNotFoundException = "ResourceNotFoundException",
    InvalidRequestException = "InvalidRequestException",
    AccessDeniedException = "AccessDeniedException",
}

M.BatchGetAssetPropertyValueErrorEntry = {
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
        entryId = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.BatchGetAssetPropertyValueErrorInfo = {
    type = "structure",
    members = {
        errorCode = {
            type = "string",
            traits = {
                required = true,
            },
        },
        errorTimestamp = {
            type = "timestamp",
            traits = {
                required = true,
            },
        },
    },
}

M.BatchGetAssetPropertyValueSkippedEntry = {
    type = "structure",
    members = {
        entryId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        completionStatus = {
            type = "string",
            traits = {
                required = true,
            },
        },
        errorInfo = {
            type = "structure",
        },
    },
}

M.BatchGetAssetPropertyValueSuccessEntry = {
    type = "structure",
    members = {
        entryId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        assetPropertyValue = {
            type = "structure",
        },
    },
}

M.BatchGetAssetPropertyValueOutput = {
    type = "structure",
    members = {
        errorEntries = {
            type = "list",
            member_type = "structure",
            traits = {
                required = true,
            },
        },
        successEntries = {
            type = "list",
            member_type = "structure",
            traits = {
                required = true,
            },
        },
        skippedEntries = {
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

M.BatchGetAssetPropertyValueHistoryEntry = {
    type = "structure",
    members = {
        entryId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        assetId = {
            type = "string",
        },
        propertyId = {
            type = "string",
        },
        propertyAlias = {
            type = "string",
        },
        startDate = {
            type = "timestamp",
        },
        endDate = {
            type = "timestamp",
        },
        qualities = {
            type = "list",
            member_type = "string",
        },
        timeOrdering = {
            type = "string",
        },
    },
}

M.BatchGetAssetPropertyValueHistoryInput = {
    type = "structure",
    members = {
        entries = {
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

M.BatchGetAssetPropertyValueHistoryErrorCode = {
    ResourceNotFoundException = "ResourceNotFoundException",
    InvalidRequestException = "InvalidRequestException",
    AccessDeniedException = "AccessDeniedException",
}

M.BatchGetAssetPropertyValueHistoryErrorEntry = {
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
        entryId = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.BatchGetAssetPropertyValueHistoryErrorInfo = {
    type = "structure",
    members = {
        errorCode = {
            type = "string",
            traits = {
                required = true,
            },
        },
        errorTimestamp = {
            type = "timestamp",
            traits = {
                required = true,
            },
        },
    },
}

M.BatchGetAssetPropertyValueHistorySkippedEntry = {
    type = "structure",
    members = {
        entryId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        completionStatus = {
            type = "string",
            traits = {
                required = true,
            },
        },
        errorInfo = {
            type = "structure",
        },
    },
}

M.BatchGetAssetPropertyValueHistorySuccessEntry = {
    type = "structure",
    members = {
        entryId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        assetPropertyValueHistory = {
            type = "list",
            member_type = "structure",
            traits = {
                required = true,
            },
        },
    },
}

M.BatchGetAssetPropertyValueHistoryOutput = {
    type = "structure",
    members = {
        errorEntries = {
            type = "list",
            member_type = "structure",
            traits = {
                required = true,
            },
        },
        successEntries = {
            type = "list",
            member_type = "structure",
            traits = {
                required = true,
            },
        },
        skippedEntries = {
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

M.PutAssetPropertyValueEntry = {
    type = "structure",
    members = {
        entryId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        assetId = {
            type = "string",
        },
        propertyId = {
            type = "string",
        },
        propertyAlias = {
            type = "string",
        },
        propertyValues = {
            type = "list",
            member_type = "structure",
            traits = {
                required = true,
            },
        },
    },
}

M.BatchPutAssetPropertyValueInput = {
    type = "structure",
    members = {
        enablePartialEntryProcessing = {
            type = "boolean",
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

M.BatchPutAssetPropertyValueErrorCode = {
    ResourceNotFoundException = "ResourceNotFoundException",
    InvalidRequestException = "InvalidRequestException",
    InternalFailureException = "InternalFailureException",
    ServiceUnavailableException = "ServiceUnavailableException",
    ThrottlingException = "ThrottlingException",
    LimitExceededException = "LimitExceededException",
    ConflictingOperationException = "ConflictingOperationException",
    TimestampOutOfRangeException = "TimestampOutOfRangeException",
    AccessDeniedException = "AccessDeniedException",
}

M.BatchPutAssetPropertyError = {
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
        timestamps = {
            type = "list",
            member_type = "structure",
            traits = {
                required = true,
            },
        },
    },
}

M.BatchPutAssetPropertyErrorEntry = {
    type = "structure",
    members = {
        entryId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        errors = {
            type = "list",
            member_type = "structure",
            traits = {
                required = true,
            },
        },
    },
}

M.BatchPutAssetPropertyValueOutput = {
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

M.CreateAccessPolicyInput = {
    type = "structure",
    members = {
        accessPolicyIdentity = {
            type = "structure",
            traits = {
                required = true,
            },
        },
        accessPolicyResource = {
            type = "structure",
            traits = {
                required = true,
            },
        },
        accessPolicyPermission = {
            type = "string",
            traits = {
                required = true,
            },
        },
        clientToken = {
            type = "string",
        },
        tags = {
            type = "map",
            key_type = "string",
            value_type = "string",
        },
    },
}

M.CreateAccessPolicyOutput = {
    type = "structure",
    members = {
        accessPolicyId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        accessPolicyArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.CreateAssetInput = {
    type = "structure",
    members = {
        assetName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        assetModelId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        assetId = {
            type = "string",
        },
        assetExternalId = {
            type = "string",
        },
        clientToken = {
            type = "string",
        },
        tags = {
            type = "map",
            key_type = "string",
            value_type = "string",
        },
        assetDescription = {
            type = "string",
        },
    },
}

M.CreateAssetOutput = {
    type = "structure",
    members = {
        assetId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        assetArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        assetStatus = {
            type = "structure",
            traits = {
                required = true,
            },
        },
    },
}

M.CreateAssetModelInput = {
    type = "structure",
    members = {
        assetModelName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        assetModelType = {
            type = "string",
        },
        assetModelId = {
            type = "string",
        },
        assetModelExternalId = {
            type = "string",
        },
        assetModelDescription = {
            type = "string",
        },
        assetModelProperties = {
            type = "list",
            member_type = "structure",
        },
        assetModelHierarchies = {
            type = "list",
            member_type = "structure",
        },
        assetModelCompositeModels = {
            type = "list",
            member_type = "structure",
        },
        clientToken = {
            type = "string",
        },
        tags = {
            type = "map",
            key_type = "string",
            value_type = "string",
        },
    },
}

M.CreateAssetModelOutput = {
    type = "structure",
    members = {
        assetModelId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        assetModelArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        assetModelStatus = {
            type = "structure",
            traits = {
                required = true,
            },
        },
    },
}

M.CreateAssetModelCompositeModelInput = {
    type = "structure",
    members = {
        assetModelId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        assetModelCompositeModelExternalId = {
            type = "string",
        },
        parentAssetModelCompositeModelId = {
            type = "string",
        },
        assetModelCompositeModelId = {
            type = "string",
        },
        assetModelCompositeModelDescription = {
            type = "string",
        },
        assetModelCompositeModelName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        assetModelCompositeModelType = {
            type = "string",
            traits = {
                required = true,
            },
        },
        clientToken = {
            type = "string",
        },
        composedAssetModelId = {
            type = "string",
        },
        assetModelCompositeModelProperties = {
            type = "list",
            member_type = "structure",
        },
        ifMatch = {
            type = "string",
            traits = {
                http_header = "If-Match",
            },
        },
        ifNoneMatch = {
            type = "string",
            traits = {
                http_header = "If-None-Match",
            },
        },
        matchForVersionType = {
            type = "string",
            traits = {
                http_header = "Match-For-Version-Type",
            },
        },
    },
}

M.CreateAssetModelCompositeModelOutput = {
    type = "structure",
    members = {
        assetModelCompositeModelId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        assetModelCompositeModelPath = {
            type = "list",
            member_type = "structure",
            traits = {
                required = true,
            },
        },
        assetModelStatus = {
            type = "structure",
            traits = {
                required = true,
            },
        },
    },
}

M.PreconditionFailedException = {
    type = "structure",
    error = "client",
    members = {
        message = {
            type = "string",
            traits = {
                required = true,
            },
        },
        resourceId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        resourceArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.ErrorReportLocation = {
    type = "structure",
    members = {
        bucket = {
            type = "string",
            traits = {
                required = true,
            },
        },
        prefix = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.File = {
    type = "structure",
    members = {
        bucket = {
            type = "string",
            traits = {
                required = true,
            },
        },
        key = {
            type = "string",
            traits = {
                required = true,
            },
        },
        versionId = {
            type = "string",
        },
    },
}

M.ColumnName = {
    ALIAS = "ALIAS",
    ASSET_ID = "ASSET_ID",
    PROPERTY_ID = "PROPERTY_ID",
    DATA_TYPE = "DATA_TYPE",
    TIMESTAMP_SECONDS = "TIMESTAMP_SECONDS",
    TIMESTAMP_NANO_OFFSET = "TIMESTAMP_NANO_OFFSET",
    QUALITY = "QUALITY",
    VALUE = "VALUE",
}

M.Csv = {
    type = "structure",
    members = {
        columnNames = {
            type = "list",
            member_type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.Parquet = {
    type = "structure",
}

M.FileFormat = {
    type = "structure",
    members = {
        csv = {
            type = "structure",
        },
        parquet = {
            type = "structure",
        },
    },
}

M.JobConfiguration = {
    type = "structure",
    members = {
        fileFormat = {
            type = "structure",
            traits = {
                required = true,
            },
        },
    },
}

M.CreateBulkImportJobInput = {
    type = "structure",
    members = {
        jobName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        jobRoleArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        files = {
            type = "list",
            member_type = "structure",
            traits = {
                required = true,
            },
        },
        errorReportLocation = {
            type = "structure",
            traits = {
                required = true,
            },
        },
        jobConfiguration = {
            type = "structure",
            traits = {
                required = true,
            },
        },
        adaptiveIngestion = {
            type = "boolean",
        },
        deleteFilesAfterImport = {
            type = "boolean",
        },
    },
}

M.JobStatus = {
    PENDING = "PENDING",
    CANCELLED = "CANCELLED",
    RUNNING = "RUNNING",
    COMPLETED = "COMPLETED",
    FAILED = "FAILED",
    COMPLETED_WITH_FAILURES = "COMPLETED_WITH_FAILURES",
}

M.CreateBulkImportJobOutput = {
    type = "structure",
    members = {
        jobId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        jobName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        jobStatus = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.ComputationModelAnomalyDetectionConfiguration = {
    type = "structure",
    members = {
        inputProperties = {
            type = "string",
            traits = {
                required = true,
            },
        },
        resultProperty = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.ComputationModelConfiguration = {
    type = "structure",
    members = {
        anomalyDetection = {
            type = "structure",
        },
    },
}

M.ComputationModelState = {
    CREATING = "CREATING",
    ACTIVE = "ACTIVE",
    UPDATING = "UPDATING",
    DELETING = "DELETING",
    FAILED = "FAILED",
}

M.ComputationModelStatus = {
    type = "structure",
    members = {
        state = {
            type = "string",
            traits = {
                required = true,
            },
        },
        error = {
            type = "structure",
        },
    },
}

M.CreateComputationModelOutput = {
    type = "structure",
    members = {
        computationModelId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        computationModelArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        computationModelStatus = {
            type = "structure",
            traits = {
                required = true,
            },
        },
    },
}

M.CreateDashboardInput = {
    type = "structure",
    members = {
        projectId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        dashboardName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        dashboardDescription = {
            type = "string",
        },
        dashboardDefinition = {
            type = "string",
            traits = {
                required = true,
            },
        },
        clientToken = {
            type = "string",
        },
        tags = {
            type = "map",
            key_type = "string",
            value_type = "string",
        },
    },
}

M.CreateDashboardOutput = {
    type = "structure",
    members = {
        dashboardId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        dashboardArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.KendraSourceDetail = {
    type = "structure",
    members = {
        knowledgeBaseArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        roleArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.SourceDetail = {
    type = "structure",
    members = {
        kendra = {
            type = "structure",
        },
    },
}

M.DatasetSourceFormat = {
    KNOWLEDGE_BASE = "KNOWLEDGE_BASE",
}

M.DatasetSourceType = {
    KENDRA = "KENDRA",
}

M.DatasetSource = {
    type = "structure",
    members = {
        sourceType = {
            type = "string",
            traits = {
                required = true,
            },
        },
        sourceFormat = {
            type = "string",
            traits = {
                required = true,
            },
        },
        sourceDetail = {
            type = "structure",
        },
    },
}

M.CreateDatasetInput = {
    type = "structure",
    members = {
        datasetId = {
            type = "string",
        },
        datasetName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        datasetDescription = {
            type = "string",
        },
        datasetSource = {
            type = "structure",
            traits = {
                required = true,
            },
        },
        clientToken = {
            type = "string",
        },
        tags = {
            type = "map",
            key_type = "string",
            value_type = "string",
        },
    },
}

M.DatasetState = {
    CREATING = "CREATING",
    ACTIVE = "ACTIVE",
    UPDATING = "UPDATING",
    DELETING = "DELETING",
    FAILED = "FAILED",
}

M.DatasetStatus = {
    type = "structure",
    members = {
        state = {
            type = "string",
            traits = {
                required = true,
            },
        },
        error = {
            type = "structure",
        },
    },
}

M.CreateDatasetOutput = {
    type = "structure",
    members = {
        datasetId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        datasetArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        datasetStatus = {
            type = "structure",
            traits = {
                required = true,
            },
        },
    },
}

M.Greengrass = {
    type = "structure",
    members = {
        groupArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.CoreDeviceOperatingSystem = {
    LINUX_AARCH64 = "LINUX_AARCH64",
    LINUX_AMD64 = "LINUX_AMD64",
    WINDOWS_AMD64 = "WINDOWS_AMD64",
}

M.GreengrassV2 = {
    type = "structure",
    members = {
        coreDeviceThingName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        coreDeviceOperatingSystem = {
            type = "string",
        },
    },
}

M.SiemensIE = {
    type = "structure",
    members = {
        iotCoreThingName = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.GatewayPlatform = {
    type = "structure",
    members = {
        greengrass = {
            type = "structure",
        },
        greengrassV2 = {
            type = "structure",
        },
        siemensIE = {
            type = "structure",
        },
    },
}

M.CreateGatewayInput = {
    type = "structure",
    members = {
        gatewayName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        gatewayPlatform = {
            type = "structure",
            traits = {
                required = true,
            },
        },
        gatewayVersion = {
            type = "string",
        },
        tags = {
            type = "map",
            key_type = "string",
            value_type = "string",
        },
    },
}

M.CreateGatewayOutput = {
    type = "structure",
    members = {
        gatewayId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        gatewayArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.ImageFileType = {
    PNG = "PNG",
}

M.ImageFile = {
    type = "structure",
    members = {
        data = {
            type = "blob",
            traits = {
                required = true,
            },
        },
        type = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.PortalType = {
    SITEWISE_PORTAL_V1 = "SITEWISE_PORTAL_V1",
    SITEWISE_PORTAL_V2 = "SITEWISE_PORTAL_V2",
}

M.PortalTypeEntry = {
    type = "structure",
    members = {
        portalTools = {
            type = "list",
            member_type = "string",
        },
    },
}

M.CreatePortalInput = {
    type = "structure",
    members = {
        portalName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        portalDescription = {
            type = "string",
        },
        portalContactEmail = {
            type = "string",
            traits = {
                required = true,
            },
        },
        clientToken = {
            type = "string",
        },
        portalLogoImageFile = {
            type = "structure",
        },
        roleArn = {
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
        portalAuthMode = {
            type = "string",
        },
        notificationSenderEmail = {
            type = "string",
        },
        alarms = {
            type = "structure",
        },
        portalType = {
            type = "string",
        },
        portalTypeConfiguration = {
            type = "map",
            key_type = "string",
            value_type = "structure",
        },
    },
}

M.MonitorErrorCode = {
    INTERNAL_FAILURE = "INTERNAL_FAILURE",
    VALIDATION_ERROR = "VALIDATION_ERROR",
    LIMIT_EXCEEDED = "LIMIT_EXCEEDED",
}

M.MonitorErrorDetails = {
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

M.PortalState = {
    CREATING = "CREATING",
    PENDING = "PENDING",
    UPDATING = "UPDATING",
    DELETING = "DELETING",
    ACTIVE = "ACTIVE",
    FAILED = "FAILED",
}

M.PortalStatus = {
    type = "structure",
    members = {
        state = {
            type = "string",
            traits = {
                required = true,
            },
        },
        error = {
            type = "structure",
        },
    },
}

M.CreatePortalOutput = {
    type = "structure",
    members = {
        portalId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        portalArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        portalStartUrl = {
            type = "string",
            traits = {
                required = true,
            },
        },
        portalStatus = {
            type = "structure",
            traits = {
                required = true,
            },
        },
        ssoApplicationId = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.CreateProjectInput = {
    type = "structure",
    members = {
        portalId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        projectName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        projectDescription = {
            type = "string",
        },
        clientToken = {
            type = "string",
        },
        tags = {
            type = "map",
            key_type = "string",
            value_type = "string",
        },
    },
}

M.CreateProjectOutput = {
    type = "structure",
    members = {
        projectId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        projectArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.DeleteAccessPolicyInput = {
    type = "structure",
    members = {
        accessPolicyId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        clientToken = {
            type = "string",
            traits = {
                http_query = "clientToken",
            },
        },
    },
}

M.DeleteAccessPolicyOutput = {
    type = "structure",
}

M.DeleteAssetInput = {
    type = "structure",
    members = {
        assetId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        clientToken = {
            type = "string",
            traits = {
                http_query = "clientToken",
            },
        },
    },
}

M.DeleteAssetOutput = {
    type = "structure",
    members = {
        assetStatus = {
            type = "structure",
            traits = {
                required = true,
            },
        },
    },
}

M.DeleteAssetModelInput = {
    type = "structure",
    members = {
        assetModelId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        clientToken = {
            type = "string",
            traits = {
                http_query = "clientToken",
            },
        },
        ifMatch = {
            type = "string",
            traits = {
                http_header = "If-Match",
            },
        },
        ifNoneMatch = {
            type = "string",
            traits = {
                http_header = "If-None-Match",
            },
        },
        matchForVersionType = {
            type = "string",
            traits = {
                http_header = "Match-For-Version-Type",
            },
        },
    },
}

M.DeleteAssetModelOutput = {
    type = "structure",
    members = {
        assetModelStatus = {
            type = "structure",
            traits = {
                required = true,
            },
        },
    },
}

M.DeleteAssetModelCompositeModelInput = {
    type = "structure",
    members = {
        assetModelId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        assetModelCompositeModelId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        clientToken = {
            type = "string",
            traits = {
                http_query = "clientToken",
            },
        },
        ifMatch = {
            type = "string",
            traits = {
                http_header = "If-Match",
            },
        },
        ifNoneMatch = {
            type = "string",
            traits = {
                http_header = "If-None-Match",
            },
        },
        matchForVersionType = {
            type = "string",
            traits = {
                http_header = "Match-For-Version-Type",
            },
        },
    },
}

M.DeleteAssetModelCompositeModelOutput = {
    type = "structure",
    members = {
        assetModelStatus = {
            type = "structure",
            traits = {
                required = true,
            },
        },
    },
}

M.DeleteAssetModelInterfaceRelationshipInput = {
    type = "structure",
    members = {
        assetModelId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        interfaceAssetModelId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        clientToken = {
            type = "string",
            traits = {
                http_query = "clientToken",
            },
        },
    },
}

M.DeleteAssetModelInterfaceRelationshipOutput = {
    type = "structure",
    members = {
        assetModelId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        interfaceAssetModelId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        assetModelArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        assetModelStatus = {
            type = "structure",
            traits = {
                required = true,
            },
        },
    },
}

M.DeleteComputationModelInput = {
    type = "structure",
    members = {
        computationModelId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        clientToken = {
            type = "string",
            traits = {
                http_query = "clientToken",
            },
        },
    },
}

M.DeleteComputationModelOutput = {
    type = "structure",
    members = {
        computationModelStatus = {
            type = "structure",
            traits = {
                required = true,
            },
        },
    },
}

M.DeleteDashboardInput = {
    type = "structure",
    members = {
        dashboardId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        clientToken = {
            type = "string",
            traits = {
                http_query = "clientToken",
            },
        },
    },
}

M.DeleteDashboardOutput = {
    type = "structure",
}

M.DeleteDatasetInput = {
    type = "structure",
    members = {
        datasetId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        clientToken = {
            type = "string",
            traits = {
                http_query = "clientToken",
            },
        },
    },
}

M.DeleteDatasetOutput = {
    type = "structure",
    members = {
        datasetStatus = {
            type = "structure",
            traits = {
                required = true,
            },
        },
    },
}

M.DeleteGatewayInput = {
    type = "structure",
    members = {
        gatewayId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.DeleteGatewayOutput = {
    type = "structure",
}

M.DeletePortalInput = {
    type = "structure",
    members = {
        portalId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        clientToken = {
            type = "string",
            traits = {
                http_query = "clientToken",
            },
        },
    },
}

M.DeletePortalOutput = {
    type = "structure",
    members = {
        portalStatus = {
            type = "structure",
            traits = {
                required = true,
            },
        },
    },
}

M.DeleteProjectInput = {
    type = "structure",
    members = {
        projectId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        clientToken = {
            type = "string",
            traits = {
                http_query = "clientToken",
            },
        },
    },
}

M.DeleteProjectOutput = {
    type = "structure",
}

M.DeleteTimeSeriesInput = {
    type = "structure",
    members = {
        alias = {
            type = "string",
            traits = {
                http_query = "alias",
            },
        },
        assetId = {
            type = "string",
            traits = {
                http_query = "assetId",
            },
        },
        propertyId = {
            type = "string",
            traits = {
                http_query = "propertyId",
            },
        },
        clientToken = {
            type = "string",
        },
    },
}

M.DeleteTimeSeriesOutput = {
    type = "structure",
}

M.DescribeAccessPolicyInput = {
    type = "structure",
    members = {
        accessPolicyId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.DescribeAccessPolicyOutput = {
    type = "structure",
    members = {
        accessPolicyId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        accessPolicyArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        accessPolicyIdentity = {
            type = "structure",
            traits = {
                required = true,
            },
        },
        accessPolicyResource = {
            type = "structure",
            traits = {
                required = true,
            },
        },
        accessPolicyPermission = {
            type = "string",
            traits = {
                required = true,
            },
        },
        accessPolicyCreationDate = {
            type = "timestamp",
            traits = {
                required = true,
            },
        },
        accessPolicyLastUpdateDate = {
            type = "timestamp",
            traits = {
                required = true,
            },
        },
    },
}

M.DescribeActionInput = {
    type = "structure",
    members = {
        actionId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.DescribeActionOutput = {
    type = "structure",
    members = {
        actionId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        targetResource = {
            type = "structure",
            traits = {
                required = true,
            },
        },
        actionDefinitionId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        actionPayload = {
            type = "structure",
            traits = {
                required = true,
            },
        },
        executionTime = {
            type = "timestamp",
            traits = {
                required = true,
            },
        },
        resolveTo = {
            type = "structure",
        },
    },
}

M.DescribeAssetInput = {
    type = "structure",
    members = {
        assetId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        excludeProperties = {
            type = "boolean",
            traits = {
                http_query = "excludeProperties",
            },
        },
    },
}

M.DescribeAssetOutput = {
    type = "structure",
    members = {
        assetId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        assetExternalId = {
            type = "string",
        },
        assetArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        assetName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        assetModelId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        assetProperties = {
            type = "list",
            member_type = "structure",
            traits = {
                required = true,
            },
        },
        assetHierarchies = {
            type = "list",
            member_type = "structure",
            traits = {
                required = true,
            },
        },
        assetCompositeModels = {
            type = "list",
            member_type = "structure",
        },
        assetCreationDate = {
            type = "timestamp",
            traits = {
                required = true,
            },
        },
        assetLastUpdateDate = {
            type = "timestamp",
            traits = {
                required = true,
            },
        },
        assetStatus = {
            type = "structure",
            traits = {
                required = true,
            },
        },
        assetDescription = {
            type = "string",
        },
        assetCompositeModelSummaries = {
            type = "list",
            member_type = "structure",
        },
    },
}

M.DescribeAssetCompositeModelInput = {
    type = "structure",
    members = {
        assetId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        assetCompositeModelId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.DescribeAssetCompositeModelOutput = {
    type = "structure",
    members = {
        assetId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        assetCompositeModelId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        assetCompositeModelExternalId = {
            type = "string",
        },
        assetCompositeModelPath = {
            type = "list",
            member_type = "structure",
            traits = {
                required = true,
            },
        },
        assetCompositeModelName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        assetCompositeModelDescription = {
            type = "string",
            traits = {
                required = true,
            },
        },
        assetCompositeModelType = {
            type = "string",
            traits = {
                required = true,
            },
        },
        assetCompositeModelProperties = {
            type = "list",
            member_type = "structure",
            traits = {
                required = true,
            },
        },
        assetCompositeModelSummaries = {
            type = "list",
            member_type = "structure",
            traits = {
                required = true,
            },
        },
        actionDefinitions = {
            type = "list",
            member_type = "structure",
        },
    },
}

M.DescribeAssetModelInput = {
    type = "structure",
    members = {
        assetModelId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        excludeProperties = {
            type = "boolean",
            traits = {
                http_query = "excludeProperties",
            },
        },
        assetModelVersion = {
            type = "string",
            traits = {
                http_query = "assetModelVersion",
            },
        },
    },
}

M.InterfaceRelationship = {
    type = "structure",
    members = {
        id = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.DescribeAssetModelOutput = {
    type = "structure",
    members = {
        assetModelId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        assetModelExternalId = {
            type = "string",
        },
        assetModelArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        assetModelName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        assetModelType = {
            type = "string",
        },
        assetModelDescription = {
            type = "string",
            traits = {
                required = true,
            },
        },
        assetModelProperties = {
            type = "list",
            member_type = "structure",
            traits = {
                required = true,
            },
        },
        assetModelHierarchies = {
            type = "list",
            member_type = "structure",
            traits = {
                required = true,
            },
        },
        assetModelCompositeModels = {
            type = "list",
            member_type = "structure",
        },
        assetModelCompositeModelSummaries = {
            type = "list",
            member_type = "structure",
        },
        assetModelCreationDate = {
            type = "timestamp",
            traits = {
                required = true,
            },
        },
        assetModelLastUpdateDate = {
            type = "timestamp",
            traits = {
                required = true,
            },
        },
        assetModelStatus = {
            type = "structure",
            traits = {
                required = true,
            },
        },
        assetModelVersion = {
            type = "string",
        },
        interfaceDetails = {
            type = "list",
            member_type = "structure",
        },
        eTag = {
            type = "string",
            traits = {
                http_header = "ETag",
            },
        },
    },
}

M.DescribeAssetModelCompositeModelInput = {
    type = "structure",
    members = {
        assetModelId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        assetModelCompositeModelId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        assetModelVersion = {
            type = "string",
            traits = {
                http_query = "assetModelVersion",
            },
        },
    },
}

M.CompositionRelationshipItem = {
    type = "structure",
    members = {
        id = {
            type = "string",
        },
    },
}

M.CompositionDetails = {
    type = "structure",
    members = {
        compositionRelationship = {
            type = "list",
            member_type = "structure",
        },
    },
}

M.DescribeAssetModelCompositeModelOutput = {
    type = "structure",
    members = {
        assetModelId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        assetModelCompositeModelId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        assetModelCompositeModelExternalId = {
            type = "string",
        },
        assetModelCompositeModelPath = {
            type = "list",
            member_type = "structure",
            traits = {
                required = true,
            },
        },
        assetModelCompositeModelName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        assetModelCompositeModelDescription = {
            type = "string",
            traits = {
                required = true,
            },
        },
        assetModelCompositeModelType = {
            type = "string",
            traits = {
                required = true,
            },
        },
        assetModelCompositeModelProperties = {
            type = "list",
            member_type = "structure",
            traits = {
                required = true,
            },
        },
        compositionDetails = {
            type = "structure",
        },
        assetModelCompositeModelSummaries = {
            type = "list",
            member_type = "structure",
            traits = {
                required = true,
            },
        },
        actionDefinitions = {
            type = "list",
            member_type = "structure",
        },
    },
}

M.DescribeAssetModelInterfaceRelationshipInput = {
    type = "structure",
    members = {
        assetModelId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        interfaceAssetModelId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.HierarchyMapping = {
    type = "structure",
    members = {
        assetModelHierarchyId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        interfaceAssetModelHierarchyId = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.PropertyMapping = {
    type = "structure",
    members = {
        assetModelPropertyId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        interfaceAssetModelPropertyId = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.DescribeAssetModelInterfaceRelationshipOutput = {
    type = "structure",
    members = {
        assetModelId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        interfaceAssetModelId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        propertyMappings = {
            type = "list",
            member_type = "structure",
            traits = {
                required = true,
            },
        },
        hierarchyMappings = {
            type = "list",
            member_type = "structure",
            traits = {
                required = true,
            },
        },
    },
}

M.DescribeAssetPropertyInput = {
    type = "structure",
    members = {
        assetId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        propertyId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.Property = {
    type = "structure",
    members = {
        id = {
            type = "string",
            traits = {
                required = true,
            },
        },
        externalId = {
            type = "string",
        },
        name = {
            type = "string",
            traits = {
                required = true,
            },
        },
        alias = {
            type = "string",
        },
        notification = {
            type = "structure",
        },
        dataType = {
            type = "string",
            traits = {
                required = true,
            },
        },
        unit = {
            type = "string",
        },
        type = {
            type = "structure",
        },
        path = {
            type = "list",
            member_type = "structure",
        },
    },
}

M.CompositeModelProperty = {
    type = "structure",
    members = {
        name = {
            type = "string",
            traits = {
                required = true,
            },
        },
        type = {
            type = "string",
            traits = {
                required = true,
            },
        },
        assetProperty = {
            type = "structure",
            traits = {
                required = true,
            },
        },
        id = {
            type = "string",
        },
        externalId = {
            type = "string",
        },
    },
}

M.DescribeAssetPropertyOutput = {
    type = "structure",
    members = {
        assetId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        assetExternalId = {
            type = "string",
        },
        assetName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        assetModelId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        assetProperty = {
            type = "structure",
        },
        compositeModel = {
            type = "structure",
        },
    },
}

M.DescribeBulkImportJobInput = {
    type = "structure",
    members = {
        jobId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.DescribeBulkImportJobOutput = {
    type = "structure",
    members = {
        jobId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        jobName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        jobStatus = {
            type = "string",
            traits = {
                required = true,
            },
        },
        jobRoleArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        files = {
            type = "list",
            member_type = "structure",
            traits = {
                required = true,
            },
        },
        errorReportLocation = {
            type = "structure",
            traits = {
                required = true,
            },
        },
        jobConfiguration = {
            type = "structure",
            traits = {
                required = true,
            },
        },
        jobCreationDate = {
            type = "timestamp",
            traits = {
                required = true,
            },
        },
        jobLastUpdateDate = {
            type = "timestamp",
            traits = {
                required = true,
            },
        },
        adaptiveIngestion = {
            type = "boolean",
        },
        deleteFilesAfterImport = {
            type = "boolean",
        },
    },
}

M.DescribeComputationModelInput = {
    type = "structure",
    members = {
        computationModelId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        computationModelVersion = {
            type = "string",
            traits = {
                http_query = "computationModelVersion",
            },
        },
    },
}

M.ResolveToResourceType = {
    ASSET = "ASSET",
}

M.DescribeComputationModelExecutionSummaryInput = {
    type = "structure",
    members = {
        computationModelId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        resolveToResourceType = {
            type = "string",
            traits = {
                http_query = "resolveToResourceType",
            },
        },
        resolveToResourceId = {
            type = "string",
            traits = {
                http_query = "resolveToResourceId",
            },
        },
    },
}

M.DescribeComputationModelExecutionSummaryOutput = {
    type = "structure",
    members = {
        computationModelId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        resolveTo = {
            type = "structure",
        },
        computationModelExecutionSummary = {
            type = "map",
            key_type = "string",
            value_type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.DescribeDashboardInput = {
    type = "structure",
    members = {
        dashboardId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.DescribeDashboardOutput = {
    type = "structure",
    members = {
        dashboardId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        dashboardArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        dashboardName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        projectId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        dashboardDescription = {
            type = "string",
        },
        dashboardDefinition = {
            type = "string",
            traits = {
                required = true,
            },
        },
        dashboardCreationDate = {
            type = "timestamp",
            traits = {
                required = true,
            },
        },
        dashboardLastUpdateDate = {
            type = "timestamp",
            traits = {
                required = true,
            },
        },
    },
}

M.DescribeDatasetInput = {
    type = "structure",
    members = {
        datasetId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.DescribeDatasetOutput = {
    type = "structure",
    members = {
        datasetId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        datasetArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        datasetName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        datasetDescription = {
            type = "string",
            traits = {
                required = true,
            },
        },
        datasetSource = {
            type = "structure",
            traits = {
                required = true,
            },
        },
        datasetStatus = {
            type = "structure",
            traits = {
                required = true,
            },
        },
        datasetCreationDate = {
            type = "timestamp",
            traits = {
                required = true,
            },
        },
        datasetLastUpdateDate = {
            type = "timestamp",
            traits = {
                required = true,
            },
        },
        datasetVersion = {
            type = "string",
        },
    },
}

M.DescribeDefaultEncryptionConfigurationInput = {
    type = "structure",
}

M.ConfigurationErrorDetails = {
    type = "structure",
    members = {
        code = {
            type = "string",
            traits = {
                required = true,
            },
        },
        message = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.ConfigurationState = {
    ACTIVE = "ACTIVE",
    UPDATE_IN_PROGRESS = "UPDATE_IN_PROGRESS",
    UPDATE_FAILED = "UPDATE_FAILED",
}

M.ConfigurationStatus = {
    type = "structure",
    members = {
        state = {
            type = "string",
            traits = {
                required = true,
            },
        },
        error = {
            type = "structure",
        },
    },
}

M.EncryptionType = {
    SITEWISE_DEFAULT_ENCRYPTION = "SITEWISE_DEFAULT_ENCRYPTION",
    KMS_BASED_ENCRYPTION = "KMS_BASED_ENCRYPTION",
}

M.DescribeDefaultEncryptionConfigurationOutput = {
    type = "structure",
    members = {
        encryptionType = {
            type = "string",
            traits = {
                required = true,
            },
        },
        kmsKeyArn = {
            type = "string",
        },
        configurationStatus = {
            type = "structure",
            traits = {
                required = true,
            },
        },
    },
}

M.DescribeExecutionInput = {
    type = "structure",
    members = {
        executionId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.ExecutionState = {
    RUNNING = "RUNNING",
    COMPLETED = "COMPLETED",
    FAILED = "FAILED",
}

M.ExecutionStatus = {
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

M.DescribeExecutionOutput = {
    type = "structure",
    members = {
        executionId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        actionType = {
            type = "string",
        },
        targetResource = {
            type = "structure",
            traits = {
                required = true,
            },
        },
        targetResourceVersion = {
            type = "string",
            traits = {
                required = true,
            },
        },
        resolveTo = {
            type = "structure",
        },
        executionStartTime = {
            type = "timestamp",
            traits = {
                required = true,
            },
        },
        executionEndTime = {
            type = "timestamp",
        },
        executionStatus = {
            type = "structure",
            traits = {
                required = true,
            },
        },
        executionResult = {
            type = "map",
            key_type = "string",
            value_type = "string",
        },
        executionDetails = {
            type = "map",
            key_type = "string",
            value_type = "string",
        },
        executionEntityVersion = {
            type = "string",
        },
    },
}

M.DescribeGatewayInput = {
    type = "structure",
    members = {
        gatewayId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.CapabilitySyncStatus = {
    IN_SYNC = "IN_SYNC",
    OUT_OF_SYNC = "OUT_OF_SYNC",
    SYNC_FAILED = "SYNC_FAILED",
    UNKNOWN = "UNKNOWN",
    NOT_APPLICABLE = "NOT_APPLICABLE",
}

M.GatewayCapabilitySummary = {
    type = "structure",
    members = {
        capabilityNamespace = {
            type = "string",
            traits = {
                required = true,
            },
        },
        capabilitySyncStatus = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.DescribeGatewayOutput = {
    type = "structure",
    members = {
        gatewayId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        gatewayName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        gatewayArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        gatewayPlatform = {
            type = "structure",
        },
        gatewayVersion = {
            type = "string",
        },
        gatewayCapabilitySummaries = {
            type = "list",
            member_type = "structure",
            traits = {
                required = true,
            },
        },
        creationDate = {
            type = "timestamp",
            traits = {
                required = true,
            },
        },
        lastUpdateDate = {
            type = "timestamp",
            traits = {
                required = true,
            },
        },
    },
}

M.DescribeGatewayCapabilityConfigurationInput = {
    type = "structure",
    members = {
        gatewayId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        capabilityNamespace = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.DescribeGatewayCapabilityConfigurationOutput = {
    type = "structure",
    members = {
        gatewayId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        capabilityNamespace = {
            type = "string",
            traits = {
                required = true,
            },
        },
        capabilityConfiguration = {
            type = "string",
            traits = {
                required = true,
            },
        },
        capabilitySyncStatus = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.DescribeLoggingOptionsInput = {
    type = "structure",
}

M.LoggingLevel = {
    ERROR = "ERROR",
    INFO = "INFO",
    OFF = "OFF",
}

M.LoggingOptions = {
    type = "structure",
    members = {
        level = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.DescribeLoggingOptionsOutput = {
    type = "structure",
    members = {
        loggingOptions = {
            type = "structure",
            traits = {
                required = true,
            },
        },
    },
}

M.DescribePortalInput = {
    type = "structure",
    members = {
        portalId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.ImageLocation = {
    type = "structure",
    members = {
        id = {
            type = "string",
            traits = {
                required = true,
            },
        },
        url = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.DescribePortalOutput = {
    type = "structure",
    members = {
        portalId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        portalArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        portalName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        portalDescription = {
            type = "string",
        },
        portalClientId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        portalStartUrl = {
            type = "string",
            traits = {
                required = true,
            },
        },
        portalContactEmail = {
            type = "string",
            traits = {
                required = true,
            },
        },
        portalStatus = {
            type = "structure",
            traits = {
                required = true,
            },
        },
        portalCreationDate = {
            type = "timestamp",
            traits = {
                required = true,
            },
        },
        portalLastUpdateDate = {
            type = "timestamp",
            traits = {
                required = true,
            },
        },
        portalLogoImageLocation = {
            type = "structure",
        },
        roleArn = {
            type = "string",
        },
        portalAuthMode = {
            type = "string",
        },
        notificationSenderEmail = {
            type = "string",
        },
        alarms = {
            type = "structure",
        },
        portalType = {
            type = "string",
        },
        portalTypeConfiguration = {
            type = "map",
            key_type = "string",
            value_type = "structure",
        },
    },
}

M.DescribeProjectInput = {
    type = "structure",
    members = {
        projectId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.DescribeProjectOutput = {
    type = "structure",
    members = {
        projectId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        projectArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        projectName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        portalId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        projectDescription = {
            type = "string",
        },
        projectCreationDate = {
            type = "timestamp",
            traits = {
                required = true,
            },
        },
        projectLastUpdateDate = {
            type = "timestamp",
            traits = {
                required = true,
            },
        },
    },
}

M.DescribeStorageConfigurationInput = {
    type = "structure",
}

M.DisassociatedDataStorageState = {
    ENABLED = "ENABLED",
    DISABLED = "DISABLED",
}

M.CustomerManagedS3Storage = {
    type = "structure",
    members = {
        s3ResourceArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        roleArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.MultiLayerStorage = {
    type = "structure",
    members = {
        customerManagedS3Storage = {
            type = "structure",
            traits = {
                required = true,
            },
        },
    },
}

M.RetentionPeriod = {
    type = "structure",
    members = {
        numberOfDays = {
            type = "number",
        },
        unlimited = {
            type = "boolean",
        },
    },
}

M.StorageType = {
    SITEWISE_DEFAULT_STORAGE = "SITEWISE_DEFAULT_STORAGE",
    MULTI_LAYER_STORAGE = "MULTI_LAYER_STORAGE",
}

M.WarmTierState = {
    ENABLED = "ENABLED",
    DISABLED = "DISABLED",
}

M.WarmTierRetentionPeriod = {
    type = "structure",
    members = {
        numberOfDays = {
            type = "number",
        },
        unlimited = {
            type = "boolean",
        },
    },
}

M.DescribeStorageConfigurationOutput = {
    type = "structure",
    members = {
        storageType = {
            type = "string",
            traits = {
                required = true,
            },
        },
        multiLayerStorage = {
            type = "structure",
        },
        disassociatedDataStorage = {
            type = "string",
        },
        retentionPeriod = {
            type = "structure",
        },
        configurationStatus = {
            type = "structure",
            traits = {
                required = true,
            },
        },
        lastUpdateDate = {
            type = "timestamp",
        },
        warmTier = {
            type = "string",
        },
        warmTierRetentionPeriod = {
            type = "structure",
        },
        disallowIngestNullNaN = {
            type = "boolean",
        },
    },
}

M.DescribeTimeSeriesInput = {
    type = "structure",
    members = {
        alias = {
            type = "string",
            traits = {
                http_query = "alias",
            },
        },
        assetId = {
            type = "string",
            traits = {
                http_query = "assetId",
            },
        },
        propertyId = {
            type = "string",
            traits = {
                http_query = "propertyId",
            },
        },
    },
}

M.DescribeTimeSeriesOutput = {
    type = "structure",
    members = {
        assetId = {
            type = "string",
        },
        propertyId = {
            type = "string",
        },
        alias = {
            type = "string",
        },
        timeSeriesId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        dataType = {
            type = "string",
            traits = {
                required = true,
            },
        },
        dataTypeSpec = {
            type = "string",
        },
        timeSeriesCreationDate = {
            type = "timestamp",
            traits = {
                required = true,
            },
        },
        timeSeriesLastUpdateDate = {
            type = "timestamp",
            traits = {
                required = true,
            },
        },
        timeSeriesArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.DisassociateAssetsInput = {
    type = "structure",
    members = {
        assetId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        hierarchyId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        childAssetId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        clientToken = {
            type = "string",
        },
    },
}

M.DisassociateAssetsOutput = {
    type = "structure",
}

M.DisassociateTimeSeriesFromAssetPropertyInput = {
    type = "structure",
    members = {
        alias = {
            type = "string",
            traits = {
                http_query = "alias",
                required = true,
            },
        },
        assetId = {
            type = "string",
            traits = {
                http_query = "assetId",
                required = true,
            },
        },
        propertyId = {
            type = "string",
            traits = {
                http_query = "propertyId",
                required = true,
            },
        },
        clientToken = {
            type = "string",
        },
    },
}

M.DisassociateTimeSeriesFromAssetPropertyOutput = {
    type = "structure",
}

M.ExecuteActionInput = {
    type = "structure",
    members = {
        targetResource = {
            type = "structure",
            traits = {
                required = true,
            },
        },
        actionDefinitionId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        actionPayload = {
            type = "structure",
            traits = {
                required = true,
            },
        },
        clientToken = {
            type = "string",
        },
        resolveTo = {
            type = "structure",
        },
    },
}

M.ExecuteActionOutput = {
    type = "structure",
    members = {
        actionId = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.ExecuteQueryInput = {
    type = "structure",
    members = {
        queryStatement = {
            type = "string",
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
        clientToken = {
            type = "string",
        },
    },
}

M.ScalarType = {
    BOOLEAN = "BOOLEAN",
    INT = "INT",
    DOUBLE = "DOUBLE",
    TIMESTAMP = "TIMESTAMP",
    STRING = "STRING",
}

M.ColumnType = {
    type = "structure",
    members = {
        scalarType = {
            type = "string",
        },
    },
}

M.ColumnInfo = {
    type = "structure",
    members = {
        name = {
            type = "string",
        },
        type = {
            type = "structure",
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

M.ValidationException = {
    type = "structure",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.GetAssetPropertyAggregatesInput = {
    type = "structure",
    members = {
        assetId = {
            type = "string",
            traits = {
                http_query = "assetId",
            },
        },
        propertyId = {
            type = "string",
            traits = {
                http_query = "propertyId",
            },
        },
        propertyAlias = {
            type = "string",
            traits = {
                http_query = "propertyAlias",
            },
        },
        aggregateTypes = {
            type = "list",
            member_type = "string",
            traits = {
                http_query = "aggregateTypes",
                required = true,
            },
        },
        resolution = {
            type = "string",
            traits = {
                http_query = "resolution",
                required = true,
            },
        },
        qualities = {
            type = "list",
            member_type = "string",
            traits = {
                http_query = "qualities",
            },
        },
        startDate = {
            type = "timestamp",
            traits = {
                http_query = "startDate",
                required = true,
            },
        },
        endDate = {
            type = "timestamp",
            traits = {
                http_query = "endDate",
                required = true,
            },
        },
        timeOrdering = {
            type = "string",
            traits = {
                http_query = "timeOrdering",
            },
        },
        nextToken = {
            type = "string",
            traits = {
                http_query = "nextToken",
            },
        },
        maxResults = {
            type = "number",
            traits = {
                http_query = "maxResults",
            },
        },
    },
}

M.GetAssetPropertyAggregatesOutput = {
    type = "structure",
    members = {
        aggregatedValues = {
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

M.GetAssetPropertyValueInput = {
    type = "structure",
    members = {
        assetId = {
            type = "string",
            traits = {
                http_query = "assetId",
            },
        },
        propertyId = {
            type = "string",
            traits = {
                http_query = "propertyId",
            },
        },
        propertyAlias = {
            type = "string",
            traits = {
                http_query = "propertyAlias",
            },
        },
    },
}

M.GetAssetPropertyValueOutput = {
    type = "structure",
    members = {
        propertyValue = {
            type = "structure",
        },
    },
}

M.GetAssetPropertyValueHistoryInput = {
    type = "structure",
    members = {
        assetId = {
            type = "string",
            traits = {
                http_query = "assetId",
            },
        },
        propertyId = {
            type = "string",
            traits = {
                http_query = "propertyId",
            },
        },
        propertyAlias = {
            type = "string",
            traits = {
                http_query = "propertyAlias",
            },
        },
        startDate = {
            type = "timestamp",
            traits = {
                http_query = "startDate",
            },
        },
        endDate = {
            type = "timestamp",
            traits = {
                http_query = "endDate",
            },
        },
        qualities = {
            type = "list",
            member_type = "string",
            traits = {
                http_query = "qualities",
            },
        },
        timeOrdering = {
            type = "string",
            traits = {
                http_query = "timeOrdering",
            },
        },
        nextToken = {
            type = "string",
            traits = {
                http_query = "nextToken",
            },
        },
        maxResults = {
            type = "number",
            traits = {
                http_query = "maxResults",
            },
        },
    },
}

M.GetAssetPropertyValueHistoryOutput = {
    type = "structure",
    members = {
        assetPropertyValueHistory = {
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

M.GetInterpolatedAssetPropertyValuesInput = {
    type = "structure",
    members = {
        assetId = {
            type = "string",
            traits = {
                http_query = "assetId",
            },
        },
        propertyId = {
            type = "string",
            traits = {
                http_query = "propertyId",
            },
        },
        propertyAlias = {
            type = "string",
            traits = {
                http_query = "propertyAlias",
            },
        },
        startTimeInSeconds = {
            type = "number",
            traits = {
                http_query = "startTimeInSeconds",
                required = true,
            },
        },
        startTimeOffsetInNanos = {
            type = "number",
            traits = {
                http_query = "startTimeOffsetInNanos",
            },
        },
        endTimeInSeconds = {
            type = "number",
            traits = {
                http_query = "endTimeInSeconds",
                required = true,
            },
        },
        endTimeOffsetInNanos = {
            type = "number",
            traits = {
                http_query = "endTimeOffsetInNanos",
            },
        },
        quality = {
            type = "string",
            traits = {
                http_query = "quality",
                required = true,
            },
        },
        intervalInSeconds = {
            type = "number",
            traits = {
                http_query = "intervalInSeconds",
                required = true,
            },
        },
        nextToken = {
            type = "string",
            traits = {
                http_query = "nextToken",
            },
        },
        maxResults = {
            type = "number",
            traits = {
                http_query = "maxResults",
            },
        },
        type = {
            type = "string",
            traits = {
                http_query = "type",
                required = true,
            },
        },
        intervalWindowInSeconds = {
            type = "number",
            traits = {
                http_query = "intervalWindowInSeconds",
            },
        },
    },
}

M.InterpolatedAssetPropertyValue = {
    type = "structure",
    members = {
        timestamp = {
            type = "structure",
            traits = {
                required = true,
            },
        },
        value = {
            type = "structure",
            traits = {
                required = true,
            },
        },
    },
}

M.GetInterpolatedAssetPropertyValuesOutput = {
    type = "structure",
    members = {
        interpolatedAssetPropertyValues = {
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

M.InvokeAssistantInput = {
    type = "structure",
    members = {
        conversationId = {
            type = "string",
        },
        message = {
            type = "string",
            traits = {
                required = true,
            },
        },
        enableTrace = {
            type = "boolean",
        },
    },
}

M.Content = {
    type = "structure",
    members = {
        text = {
            type = "string",
        },
    },
}

M.Location = {
    type = "structure",
    members = {
        uri = {
            type = "string",
        },
    },
}

M.Source = {
    type = "structure",
    members = {
        arn = {
            type = "string",
        },
        location = {
            type = "structure",
        },
    },
}

M.DataSetReference = {
    type = "structure",
    members = {
        datasetArn = {
            type = "string",
        },
        source = {
            type = "structure",
        },
    },
}

M.Reference = {
    type = "structure",
    members = {
        dataset = {
            type = "structure",
        },
    },
}

M.Citation = {
    type = "structure",
    members = {
        reference = {
            type = "structure",
        },
        content = {
            type = "structure",
        },
    },
}

M.InvocationOutput = {
    type = "structure",
    members = {
        message = {
            type = "string",
        },
        citations = {
            type = "list",
            member_type = "structure",
        },
    },
}

M.Trace = {
    type = "structure",
    members = {
        text = {
            type = "string",
        },
    },
}

M.ResponseStream = {
    type = "union",
    members = {
        trace = {
            type = "structure",
        },
        output = {
            type = "structure",
        },
        accessDeniedException = {
            type = "structure",
        },
        conflictingOperationException = {
            type = "structure",
        },
        internalFailureException = {
            type = "structure",
        },
        invalidRequestException = {
            type = "structure",
        },
        limitExceededException = {
            type = "structure",
        },
        resourceNotFoundException = {
            type = "structure",
        },
        throttlingException = {
            type = "structure",
        },
    },
}

M.InvokeAssistantOutput = {
    type = "structure",
    members = {
        body = {
            type = "union",
            traits = {
                http_payload = true,
                required = true,
            },
        },
        conversationId = {
            type = "string",
            traits = {
                http_header = "x-amz-iotsitewise-assistant-conversation-id",
                required = true,
            },
        },
    },
}

M.IdentityType = {
    USER = "USER",
    GROUP = "GROUP",
    IAM = "IAM",
}

M.ResourceType = {
    PORTAL = "PORTAL",
    PROJECT = "PROJECT",
}

M.ListAccessPoliciesInput = {
    type = "structure",
    members = {
        identityType = {
            type = "string",
            traits = {
                http_query = "identityType",
            },
        },
        identityId = {
            type = "string",
            traits = {
                http_query = "identityId",
            },
        },
        resourceType = {
            type = "string",
            traits = {
                http_query = "resourceType",
            },
        },
        resourceId = {
            type = "string",
            traits = {
                http_query = "resourceId",
            },
        },
        iamArn = {
            type = "string",
            traits = {
                http_query = "iamArn",
            },
        },
        nextToken = {
            type = "string",
            traits = {
                http_query = "nextToken",
            },
        },
        maxResults = {
            type = "number",
            traits = {
                http_query = "maxResults",
            },
        },
    },
}

M.ListAccessPoliciesOutput = {
    type = "structure",
    members = {
        accessPolicySummaries = {
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

M.TargetResourceType = {
    ASSET = "ASSET",
    COMPUTATION_MODEL = "COMPUTATION_MODEL",
}

M.ListActionsInput = {
    type = "structure",
    members = {
        targetResourceType = {
            type = "string",
            traits = {
                http_query = "targetResourceType",
                required = true,
            },
        },
        targetResourceId = {
            type = "string",
            traits = {
                http_query = "targetResourceId",
                required = true,
            },
        },
        nextToken = {
            type = "string",
            traits = {
                http_query = "nextToken",
            },
        },
        maxResults = {
            type = "number",
            traits = {
                http_query = "maxResults",
            },
        },
        resolveToResourceType = {
            type = "string",
            traits = {
                http_query = "resolveToResourceType",
            },
        },
        resolveToResourceId = {
            type = "string",
            traits = {
                http_query = "resolveToResourceId",
            },
        },
    },
}

M.ListActionsOutput = {
    type = "structure",
    members = {
        actionSummaries = {
            type = "list",
            member_type = "structure",
            traits = {
                required = true,
            },
        },
        nextToken = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.ListAssetModelCompositeModelsInput = {
    type = "structure",
    members = {
        assetModelId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        nextToken = {
            type = "string",
            traits = {
                http_query = "nextToken",
            },
        },
        maxResults = {
            type = "number",
            traits = {
                http_query = "maxResults",
            },
        },
        assetModelVersion = {
            type = "string",
            traits = {
                http_query = "assetModelVersion",
            },
        },
    },
}

M.ListAssetModelCompositeModelsOutput = {
    type = "structure",
    members = {
        assetModelCompositeModelSummaries = {
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

M.ListAssetModelPropertiesFilter = {
    ALL = "ALL",
    BASE = "BASE",
}

M.ListAssetModelPropertiesInput = {
    type = "structure",
    members = {
        assetModelId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        nextToken = {
            type = "string",
            traits = {
                http_query = "nextToken",
            },
        },
        maxResults = {
            type = "number",
            traits = {
                http_query = "maxResults",
            },
        },
        filter = {
            type = "string",
            traits = {
                http_query = "filter",
            },
        },
        assetModelVersion = {
            type = "string",
            traits = {
                http_query = "assetModelVersion",
            },
        },
    },
}

M.ListAssetModelPropertiesOutput = {
    type = "structure",
    members = {
        assetModelPropertySummaries = {
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

M.ListAssetModelsInput = {
    type = "structure",
    members = {
        assetModelTypes = {
            type = "list",
            member_type = "string",
            traits = {
                http_query = "assetModelTypes",
            },
        },
        nextToken = {
            type = "string",
            traits = {
                http_query = "nextToken",
            },
        },
        maxResults = {
            type = "number",
            traits = {
                http_query = "maxResults",
            },
        },
        assetModelVersion = {
            type = "string",
            traits = {
                http_query = "assetModelVersion",
            },
        },
    },
}

M.ListAssetModelsOutput = {
    type = "structure",
    members = {
        assetModelSummaries = {
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

M.ListAssetPropertiesFilter = {
    ALL = "ALL",
    BASE = "BASE",
}

M.ListAssetPropertiesInput = {
    type = "structure",
    members = {
        assetId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        nextToken = {
            type = "string",
            traits = {
                http_query = "nextToken",
            },
        },
        maxResults = {
            type = "number",
            traits = {
                http_query = "maxResults",
            },
        },
        filter = {
            type = "string",
            traits = {
                http_query = "filter",
            },
        },
    },
}

M.ListAssetPropertiesOutput = {
    type = "structure",
    members = {
        assetPropertySummaries = {
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

M.TraversalType = {
    PATH_TO_ROOT = "PATH_TO_ROOT",
}

M.ListAssetRelationshipsInput = {
    type = "structure",
    members = {
        assetId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        traversalType = {
            type = "string",
            traits = {
                http_query = "traversalType",
                required = true,
            },
        },
        nextToken = {
            type = "string",
            traits = {
                http_query = "nextToken",
            },
        },
        maxResults = {
            type = "number",
            traits = {
                http_query = "maxResults",
            },
        },
    },
}

M.ListAssetRelationshipsOutput = {
    type = "structure",
    members = {
        assetRelationshipSummaries = {
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

M.ListAssetsFilter = {
    ALL = "ALL",
    TOP_LEVEL = "TOP_LEVEL",
}

M.ListAssetsInput = {
    type = "structure",
    members = {
        nextToken = {
            type = "string",
            traits = {
                http_query = "nextToken",
            },
        },
        maxResults = {
            type = "number",
            traits = {
                http_query = "maxResults",
            },
        },
        assetModelId = {
            type = "string",
            traits = {
                http_query = "assetModelId",
            },
        },
        filter = {
            type = "string",
            traits = {
                http_query = "filter",
            },
        },
    },
}

M.ListAssetsOutput = {
    type = "structure",
    members = {
        assetSummaries = {
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

M.TraversalDirection = {
    PARENT = "PARENT",
    CHILD = "CHILD",
}

M.ListAssociatedAssetsInput = {
    type = "structure",
    members = {
        assetId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        hierarchyId = {
            type = "string",
            traits = {
                http_query = "hierarchyId",
            },
        },
        traversalDirection = {
            type = "string",
            traits = {
                http_query = "traversalDirection",
            },
        },
        nextToken = {
            type = "string",
            traits = {
                http_query = "nextToken",
            },
        },
        maxResults = {
            type = "number",
            traits = {
                http_query = "maxResults",
            },
        },
    },
}

M.ListAssociatedAssetsOutput = {
    type = "structure",
    members = {
        assetSummaries = {
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

M.ListBulkImportJobsFilter = {
    ALL = "ALL",
    PENDING = "PENDING",
    RUNNING = "RUNNING",
    CANCELLED = "CANCELLED",
    FAILED = "FAILED",
    COMPLETED_WITH_FAILURES = "COMPLETED_WITH_FAILURES",
    COMPLETED = "COMPLETED",
}

M.ListBulkImportJobsInput = {
    type = "structure",
    members = {
        nextToken = {
            type = "string",
            traits = {
                http_query = "nextToken",
            },
        },
        maxResults = {
            type = "number",
            traits = {
                http_query = "maxResults",
            },
        },
        filter = {
            type = "string",
            traits = {
                http_query = "filter",
            },
        },
    },
}

M.JobSummary = {
    type = "structure",
    members = {
        id = {
            type = "string",
            traits = {
                required = true,
            },
        },
        name = {
            type = "string",
            traits = {
                required = true,
            },
        },
        status = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.ListBulkImportJobsOutput = {
    type = "structure",
    members = {
        jobSummaries = {
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

M.ListCompositionRelationshipsInput = {
    type = "structure",
    members = {
        assetModelId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        nextToken = {
            type = "string",
            traits = {
                http_query = "nextToken",
            },
        },
        maxResults = {
            type = "number",
            traits = {
                http_query = "maxResults",
            },
        },
    },
}

M.CompositionRelationshipSummary = {
    type = "structure",
    members = {
        assetModelId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        assetModelCompositeModelId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        assetModelCompositeModelType = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.ListCompositionRelationshipsOutput = {
    type = "structure",
    members = {
        compositionRelationshipSummaries = {
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

M.DataBindingValueFilter = {
    type = "structure",
    members = {
        asset = {
            type = "structure",
        },
        assetModel = {
            type = "structure",
        },
        assetProperty = {
            type = "structure",
        },
        assetModelProperty = {
            type = "structure",
        },
    },
}

M.ListComputationModelDataBindingUsagesInput = {
    type = "structure",
    members = {
        dataBindingValueFilter = {
            type = "structure",
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

M.DataBindingValue = {
    type = "structure",
    members = {
        assetModelProperty = {
            type = "structure",
        },
        assetProperty = {
            type = "structure",
        },
    },
}

M.MatchedDataBinding = {
    type = "structure",
    members = {
        value = {
            type = "structure",
            traits = {
                required = true,
            },
        },
    },
}

M.ComputationModelDataBindingUsageSummary = {
    type = "structure",
    members = {
        computationModelIds = {
            type = "list",
            member_type = "string",
            traits = {
                required = true,
            },
        },
        matchedDataBinding = {
            type = "structure",
            traits = {
                required = true,
            },
        },
    },
}

M.ListComputationModelDataBindingUsagesOutput = {
    type = "structure",
    members = {
        dataBindingUsageSummaries = {
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

M.ListComputationModelResolveToResourcesInput = {
    type = "structure",
    members = {
        computationModelId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        nextToken = {
            type = "string",
            traits = {
                http_query = "nextToken",
            },
        },
        maxResults = {
            type = "number",
            traits = {
                http_query = "maxResults",
            },
        },
    },
}

M.ComputationModelResolveToResourceSummary = {
    type = "structure",
    members = {
        resolveTo = {
            type = "structure",
        },
    },
}

M.ListComputationModelResolveToResourcesOutput = {
    type = "structure",
    members = {
        computationModelResolveToResourceSummaries = {
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

M.ComputationModelType = {
    ANOMALY_DETECTION = "ANOMALY_DETECTION",
}

M.ListComputationModelsInput = {
    type = "structure",
    members = {
        computationModelType = {
            type = "string",
            traits = {
                http_query = "computationModelType",
            },
        },
        nextToken = {
            type = "string",
            traits = {
                http_query = "nextToken",
            },
        },
        maxResults = {
            type = "number",
            traits = {
                http_query = "maxResults",
            },
        },
    },
}

M.ComputationModelSummary = {
    type = "structure",
    members = {
        id = {
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
        name = {
            type = "string",
            traits = {
                required = true,
            },
        },
        description = {
            type = "string",
        },
        type = {
            type = "string",
            traits = {
                required = true,
            },
        },
        creationDate = {
            type = "timestamp",
            traits = {
                required = true,
            },
        },
        lastUpdateDate = {
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
        version = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.ListComputationModelsOutput = {
    type = "structure",
    members = {
        computationModelSummaries = {
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

M.ListDashboardsInput = {
    type = "structure",
    members = {
        projectId = {
            type = "string",
            traits = {
                http_query = "projectId",
                required = true,
            },
        },
        nextToken = {
            type = "string",
            traits = {
                http_query = "nextToken",
            },
        },
        maxResults = {
            type = "number",
            traits = {
                http_query = "maxResults",
            },
        },
    },
}

M.DashboardSummary = {
    type = "structure",
    members = {
        id = {
            type = "string",
            traits = {
                required = true,
            },
        },
        name = {
            type = "string",
            traits = {
                required = true,
            },
        },
        description = {
            type = "string",
        },
        creationDate = {
            type = "timestamp",
        },
        lastUpdateDate = {
            type = "timestamp",
        },
    },
}

M.ListDashboardsOutput = {
    type = "structure",
    members = {
        dashboardSummaries = {
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

M.ListDatasetsInput = {
    type = "structure",
    members = {
        sourceType = {
            type = "string",
            traits = {
                http_query = "sourceType",
                required = true,
            },
        },
        nextToken = {
            type = "string",
            traits = {
                http_query = "nextToken",
            },
        },
        maxResults = {
            type = "number",
            traits = {
                http_query = "maxResults",
            },
        },
    },
}

M.DatasetSummary = {
    type = "structure",
    members = {
        id = {
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
        name = {
            type = "string",
            traits = {
                required = true,
            },
        },
        description = {
            type = "string",
            traits = {
                required = true,
            },
        },
        creationDate = {
            type = "timestamp",
            traits = {
                required = true,
            },
        },
        lastUpdateDate = {
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

M.ListDatasetsOutput = {
    type = "structure",
    members = {
        datasetSummaries = {
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

M.ListExecutionsInput = {
    type = "structure",
    members = {
        targetResourceType = {
            type = "string",
            traits = {
                http_query = "targetResourceType",
                required = true,
            },
        },
        targetResourceId = {
            type = "string",
            traits = {
                http_query = "targetResourceId",
                required = true,
            },
        },
        resolveToResourceType = {
            type = "string",
            traits = {
                http_query = "resolveToResourceType",
            },
        },
        resolveToResourceId = {
            type = "string",
            traits = {
                http_query = "resolveToResourceId",
            },
        },
        nextToken = {
            type = "string",
            traits = {
                http_query = "nextToken",
            },
        },
        maxResults = {
            type = "number",
            traits = {
                http_query = "maxResults",
            },
        },
        actionType = {
            type = "string",
            traits = {
                http_query = "actionType",
            },
        },
    },
}

M.ExecutionSummary = {
    type = "structure",
    members = {
        executionId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        actionType = {
            type = "string",
        },
        targetResource = {
            type = "structure",
            traits = {
                required = true,
            },
        },
        targetResourceVersion = {
            type = "string",
            traits = {
                required = true,
            },
        },
        resolveTo = {
            type = "structure",
        },
        executionStartTime = {
            type = "timestamp",
            traits = {
                required = true,
            },
        },
        executionEndTime = {
            type = "timestamp",
        },
        executionStatus = {
            type = "structure",
            traits = {
                required = true,
            },
        },
        executionEntityVersion = {
            type = "string",
        },
    },
}

M.ListExecutionsOutput = {
    type = "structure",
    members = {
        executionSummaries = {
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

M.ListGatewaysInput = {
    type = "structure",
    members = {
        nextToken = {
            type = "string",
            traits = {
                http_query = "nextToken",
            },
        },
        maxResults = {
            type = "number",
            traits = {
                http_query = "maxResults",
            },
        },
    },
}

M.GatewaySummary = {
    type = "structure",
    members = {
        gatewayId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        gatewayName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        gatewayPlatform = {
            type = "structure",
        },
        gatewayVersion = {
            type = "string",
        },
        gatewayCapabilitySummaries = {
            type = "list",
            member_type = "structure",
        },
        creationDate = {
            type = "timestamp",
            traits = {
                required = true,
            },
        },
        lastUpdateDate = {
            type = "timestamp",
            traits = {
                required = true,
            },
        },
    },
}

M.ListGatewaysOutput = {
    type = "structure",
    members = {
        gatewaySummaries = {
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

M.ListInterfaceRelationshipsInput = {
    type = "structure",
    members = {
        interfaceAssetModelId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        nextToken = {
            type = "string",
            traits = {
                http_query = "nextToken",
            },
        },
        maxResults = {
            type = "number",
            traits = {
                http_query = "maxResults",
            },
        },
    },
}

M.InterfaceRelationshipSummary = {
    type = "structure",
    members = {
        id = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.ListInterfaceRelationshipsOutput = {
    type = "structure",
    members = {
        interfaceRelationshipSummaries = {
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

M.ListPortalsInput = {
    type = "structure",
    members = {
        nextToken = {
            type = "string",
            traits = {
                http_query = "nextToken",
            },
        },
        maxResults = {
            type = "number",
            traits = {
                http_query = "maxResults",
            },
        },
    },
}

M.PortalSummary = {
    type = "structure",
    members = {
        id = {
            type = "string",
            traits = {
                required = true,
            },
        },
        name = {
            type = "string",
            traits = {
                required = true,
            },
        },
        description = {
            type = "string",
        },
        startUrl = {
            type = "string",
            traits = {
                required = true,
            },
        },
        creationDate = {
            type = "timestamp",
        },
        lastUpdateDate = {
            type = "timestamp",
        },
        roleArn = {
            type = "string",
        },
        status = {
            type = "structure",
            traits = {
                required = true,
            },
        },
        portalType = {
            type = "string",
        },
    },
}

M.ListPortalsOutput = {
    type = "structure",
    members = {
        portalSummaries = {
            type = "list",
            member_type = "structure",
        },
        nextToken = {
            type = "string",
        },
    },
}

M.ListProjectAssetsInput = {
    type = "structure",
    members = {
        projectId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        nextToken = {
            type = "string",
            traits = {
                http_query = "nextToken",
            },
        },
        maxResults = {
            type = "number",
            traits = {
                http_query = "maxResults",
            },
        },
    },
}

M.ListProjectAssetsOutput = {
    type = "structure",
    members = {
        assetIds = {
            type = "list",
            member_type = "string",
            traits = {
                required = true,
            },
        },
        nextToken = {
            type = "string",
        },
    },
}

M.ListProjectsInput = {
    type = "structure",
    members = {
        portalId = {
            type = "string",
            traits = {
                http_query = "portalId",
                required = true,
            },
        },
        nextToken = {
            type = "string",
            traits = {
                http_query = "nextToken",
            },
        },
        maxResults = {
            type = "number",
            traits = {
                http_query = "maxResults",
            },
        },
    },
}

M.ProjectSummary = {
    type = "structure",
    members = {
        id = {
            type = "string",
            traits = {
                required = true,
            },
        },
        name = {
            type = "string",
            traits = {
                required = true,
            },
        },
        description = {
            type = "string",
        },
        creationDate = {
            type = "timestamp",
        },
        lastUpdateDate = {
            type = "timestamp",
        },
    },
}

M.ListProjectsOutput = {
    type = "structure",
    members = {
        projectSummaries = {
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

M.ListTagsForResourceInput = {
    type = "structure",
    members = {
        resourceArn = {
            type = "string",
            traits = {
                http_query = "resourceArn",
                required = true,
            },
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
    },
}

M.UnauthorizedException = {
    type = "structure",
    error = "client",
    members = {
        message = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.ListTimeSeriesType = {
    ASSOCIATED = "ASSOCIATED",
    DISASSOCIATED = "DISASSOCIATED",
}

M.ListTimeSeriesInput = {
    type = "structure",
    members = {
        nextToken = {
            type = "string",
            traits = {
                http_query = "nextToken",
            },
        },
        maxResults = {
            type = "number",
            traits = {
                http_query = "maxResults",
            },
        },
        assetId = {
            type = "string",
            traits = {
                http_query = "assetId",
            },
        },
        aliasPrefix = {
            type = "string",
            traits = {
                http_query = "aliasPrefix",
            },
        },
        timeSeriesType = {
            type = "string",
            traits = {
                http_query = "timeSeriesType",
            },
        },
    },
}

M.TimeSeriesSummary = {
    type = "structure",
    members = {
        assetId = {
            type = "string",
        },
        propertyId = {
            type = "string",
        },
        alias = {
            type = "string",
        },
        timeSeriesId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        dataType = {
            type = "string",
            traits = {
                required = true,
            },
        },
        dataTypeSpec = {
            type = "string",
        },
        timeSeriesCreationDate = {
            type = "timestamp",
            traits = {
                required = true,
            },
        },
        timeSeriesLastUpdateDate = {
            type = "timestamp",
            traits = {
                required = true,
            },
        },
        timeSeriesArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.ListTimeSeriesOutput = {
    type = "structure",
    members = {
        TimeSeriesSummaries = {
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

M.PropertyMappingConfiguration = {
    type = "structure",
    members = {
        matchByPropertyName = {
            type = "boolean",
        },
        createMissingProperty = {
            type = "boolean",
        },
        overrides = {
            type = "list",
            member_type = "structure",
        },
    },
}

M.PutAssetModelInterfaceRelationshipInput = {
    type = "structure",
    members = {
        assetModelId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        interfaceAssetModelId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        propertyMappingConfiguration = {
            type = "structure",
            traits = {
                required = true,
            },
        },
        clientToken = {
            type = "string",
        },
    },
}

M.PutAssetModelInterfaceRelationshipOutput = {
    type = "structure",
    members = {
        assetModelId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        interfaceAssetModelId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        assetModelArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        assetModelStatus = {
            type = "structure",
            traits = {
                required = true,
            },
        },
    },
}

M.PutDefaultEncryptionConfigurationInput = {
    type = "structure",
    members = {
        encryptionType = {
            type = "string",
            traits = {
                required = true,
            },
        },
        kmsKeyId = {
            type = "string",
        },
    },
}

M.PutDefaultEncryptionConfigurationOutput = {
    type = "structure",
    members = {
        encryptionType = {
            type = "string",
            traits = {
                required = true,
            },
        },
        kmsKeyArn = {
            type = "string",
        },
        configurationStatus = {
            type = "structure",
            traits = {
                required = true,
            },
        },
    },
}

M.PutLoggingOptionsInput = {
    type = "structure",
    members = {
        loggingOptions = {
            type = "structure",
            traits = {
                required = true,
            },
        },
    },
}

M.PutLoggingOptionsOutput = {
    type = "structure",
}

M.PutStorageConfigurationInput = {
    type = "structure",
    members = {
        storageType = {
            type = "string",
            traits = {
                required = true,
            },
        },
        multiLayerStorage = {
            type = "structure",
        },
        disassociatedDataStorage = {
            type = "string",
        },
        retentionPeriod = {
            type = "structure",
        },
        warmTier = {
            type = "string",
        },
        warmTierRetentionPeriod = {
            type = "structure",
        },
        disallowIngestNullNaN = {
            type = "boolean",
        },
    },
}

M.PutStorageConfigurationOutput = {
    type = "structure",
    members = {
        storageType = {
            type = "string",
            traits = {
                required = true,
            },
        },
        multiLayerStorage = {
            type = "structure",
        },
        disassociatedDataStorage = {
            type = "string",
        },
        retentionPeriod = {
            type = "structure",
        },
        configurationStatus = {
            type = "structure",
            traits = {
                required = true,
            },
        },
        warmTier = {
            type = "string",
        },
        warmTierRetentionPeriod = {
            type = "structure",
        },
        disallowIngestNullNaN = {
            type = "boolean",
        },
    },
}

M.TagResourceInput = {
    type = "structure",
    members = {
        resourceArn = {
            type = "string",
            traits = {
                http_query = "resourceArn",
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
        resourceName = {
            type = "string",
        },
    },
}

M.UntagResourceInput = {
    type = "structure",
    members = {
        resourceArn = {
            type = "string",
            traits = {
                http_query = "resourceArn",
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

M.UpdateAccessPolicyInput = {
    type = "structure",
    members = {
        accessPolicyId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        accessPolicyIdentity = {
            type = "structure",
            traits = {
                required = true,
            },
        },
        accessPolicyResource = {
            type = "structure",
            traits = {
                required = true,
            },
        },
        accessPolicyPermission = {
            type = "string",
            traits = {
                required = true,
            },
        },
        clientToken = {
            type = "string",
        },
    },
}

M.UpdateAccessPolicyOutput = {
    type = "structure",
}

M.UpdateAssetInput = {
    type = "structure",
    members = {
        assetId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        assetExternalId = {
            type = "string",
        },
        assetName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        clientToken = {
            type = "string",
        },
        assetDescription = {
            type = "string",
        },
    },
}

M.UpdateAssetOutput = {
    type = "structure",
    members = {
        assetStatus = {
            type = "structure",
            traits = {
                required = true,
            },
        },
    },
}

M.UpdateAssetModelInput = {
    type = "structure",
    members = {
        assetModelId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        assetModelExternalId = {
            type = "string",
        },
        assetModelName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        assetModelDescription = {
            type = "string",
        },
        assetModelProperties = {
            type = "list",
            member_type = "structure",
        },
        assetModelHierarchies = {
            type = "list",
            member_type = "structure",
        },
        assetModelCompositeModels = {
            type = "list",
            member_type = "structure",
        },
        clientToken = {
            type = "string",
        },
        ifMatch = {
            type = "string",
            traits = {
                http_header = "If-Match",
            },
        },
        ifNoneMatch = {
            type = "string",
            traits = {
                http_header = "If-None-Match",
            },
        },
        matchForVersionType = {
            type = "string",
            traits = {
                http_header = "Match-For-Version-Type",
            },
        },
    },
}

M.UpdateAssetModelOutput = {
    type = "structure",
    members = {
        assetModelStatus = {
            type = "structure",
            traits = {
                required = true,
            },
        },
    },
}

M.UpdateAssetModelCompositeModelInput = {
    type = "structure",
    members = {
        assetModelId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        assetModelCompositeModelId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        assetModelCompositeModelExternalId = {
            type = "string",
        },
        assetModelCompositeModelDescription = {
            type = "string",
        },
        assetModelCompositeModelName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        clientToken = {
            type = "string",
        },
        assetModelCompositeModelProperties = {
            type = "list",
            member_type = "structure",
        },
        ifMatch = {
            type = "string",
            traits = {
                http_header = "If-Match",
            },
        },
        ifNoneMatch = {
            type = "string",
            traits = {
                http_header = "If-None-Match",
            },
        },
        matchForVersionType = {
            type = "string",
            traits = {
                http_header = "Match-For-Version-Type",
            },
        },
    },
}

M.UpdateAssetModelCompositeModelOutput = {
    type = "structure",
    members = {
        assetModelCompositeModelPath = {
            type = "list",
            member_type = "structure",
            traits = {
                required = true,
            },
        },
        assetModelStatus = {
            type = "structure",
            traits = {
                required = true,
            },
        },
    },
}

M.UpdateAssetPropertyInput = {
    type = "structure",
    members = {
        assetId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        propertyId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        propertyAlias = {
            type = "string",
        },
        propertyNotificationState = {
            type = "string",
        },
        clientToken = {
            type = "string",
        },
        propertyUnit = {
            type = "string",
        },
    },
}

M.UpdateAssetPropertyOutput = {
    type = "structure",
}

M.UpdateComputationModelOutput = {
    type = "structure",
    members = {
        computationModelStatus = {
            type = "structure",
            traits = {
                required = true,
            },
        },
    },
}

M.UpdateDashboardInput = {
    type = "structure",
    members = {
        dashboardId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        dashboardName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        dashboardDescription = {
            type = "string",
        },
        dashboardDefinition = {
            type = "string",
            traits = {
                required = true,
            },
        },
        clientToken = {
            type = "string",
        },
    },
}

M.UpdateDashboardOutput = {
    type = "structure",
}

M.UpdateDatasetInput = {
    type = "structure",
    members = {
        datasetId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        datasetName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        datasetDescription = {
            type = "string",
        },
        datasetSource = {
            type = "structure",
            traits = {
                required = true,
            },
        },
        clientToken = {
            type = "string",
        },
    },
}

M.UpdateDatasetOutput = {
    type = "structure",
    members = {
        datasetId = {
            type = "string",
        },
        datasetArn = {
            type = "string",
        },
        datasetStatus = {
            type = "structure",
        },
    },
}

M.UpdateGatewayInput = {
    type = "structure",
    members = {
        gatewayId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        gatewayName = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.UpdateGatewayOutput = {
    type = "structure",
}

M.UpdateGatewayCapabilityConfigurationInput = {
    type = "structure",
    members = {
        gatewayId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        capabilityNamespace = {
            type = "string",
            traits = {
                required = true,
            },
        },
        capabilityConfiguration = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.UpdateGatewayCapabilityConfigurationOutput = {
    type = "structure",
    members = {
        capabilityNamespace = {
            type = "string",
            traits = {
                required = true,
            },
        },
        capabilitySyncStatus = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.Image = {
    type = "structure",
    members = {
        id = {
            type = "string",
        },
        file = {
            type = "structure",
        },
    },
}

M.UpdatePortalInput = {
    type = "structure",
    members = {
        portalId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        portalName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        portalDescription = {
            type = "string",
        },
        portalContactEmail = {
            type = "string",
            traits = {
                required = true,
            },
        },
        portalLogoImage = {
            type = "structure",
        },
        roleArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        clientToken = {
            type = "string",
        },
        notificationSenderEmail = {
            type = "string",
        },
        alarms = {
            type = "structure",
        },
        portalType = {
            type = "string",
        },
        portalTypeConfiguration = {
            type = "map",
            key_type = "string",
            value_type = "structure",
        },
    },
}

M.UpdatePortalOutput = {
    type = "structure",
    members = {
        portalStatus = {
            type = "structure",
            traits = {
                required = true,
            },
        },
    },
}

M.UpdateProjectInput = {
    type = "structure",
    members = {
        projectId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        projectName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        projectDescription = {
            type = "string",
        },
        clientToken = {
            type = "string",
        },
    },
}

M.UpdateProjectOutput = {
    type = "structure",
}

M.ComputationModelDataBindingValue = {
    type = "structure",
    members = {
        assetModelProperty = {
            type = "structure",
        },
        assetProperty = {
            type = "structure",
        },
        list = {
            type = "list",
            member_type = "structure",
        },
    },
}

M.CreateComputationModelInput = {
    type = "structure",
    members = {
        computationModelName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        computationModelDescription = {
            type = "string",
        },
        computationModelConfiguration = {
            type = "structure",
            traits = {
                required = true,
            },
        },
        computationModelDataBinding = {
            type = "map",
            key_type = "string",
            value_type = "structure",
            traits = {
                required = true,
            },
        },
        clientToken = {
            type = "string",
        },
        tags = {
            type = "map",
            key_type = "string",
            value_type = "string",
        },
    },
}

M.DescribeComputationModelOutput = {
    type = "structure",
    members = {
        computationModelId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        computationModelArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        computationModelName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        computationModelDescription = {
            type = "string",
        },
        computationModelConfiguration = {
            type = "structure",
            traits = {
                required = true,
            },
        },
        computationModelDataBinding = {
            type = "map",
            key_type = "string",
            value_type = "structure",
            traits = {
                required = true,
            },
        },
        computationModelCreationDate = {
            type = "timestamp",
            traits = {
                required = true,
            },
        },
        computationModelLastUpdateDate = {
            type = "timestamp",
            traits = {
                required = true,
            },
        },
        computationModelStatus = {
            type = "structure",
            traits = {
                required = true,
            },
        },
        computationModelVersion = {
            type = "string",
            traits = {
                required = true,
            },
        },
        actionDefinitions = {
            type = "list",
            member_type = "structure",
            traits = {
                required = true,
            },
        },
    },
}

M.UpdateComputationModelInput = {
    type = "structure",
    members = {
        computationModelId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        computationModelName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        computationModelDescription = {
            type = "string",
        },
        computationModelConfiguration = {
            type = "structure",
            traits = {
                required = true,
            },
        },
        computationModelDataBinding = {
            type = "map",
            key_type = "string",
            value_type = "structure",
            traits = {
                required = true,
            },
        },
        clientToken = {
            type = "string",
        },
    },
}

M.Datum = {
    type = "structure",
    members = {
        scalarValue = {
            type = "string",
        },
        arrayValue = {
            type = "list",
            member_type = "structure",
        },
        rowValue = {
            type = "structure",
        },
        nullValue = {
            type = "boolean",
        },
    },
}

M.Row = {
    type = "structure",
    members = {
        data = {
            type = "list",
            member_type = "structure",
            traits = {
                required = true,
            },
        },
    },
}

M.ExecuteQueryOutput = {
    type = "structure",
    members = {
        columns = {
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

return M
