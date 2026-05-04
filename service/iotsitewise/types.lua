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

M.GroupIdentity = {
    type = "structure",
    id = "GroupIdentity",
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
    id = "IAMRoleIdentity",
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
    id = "IAMUserIdentity",
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
    id = "UserIdentity",
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
    id = "Identity",
    members = {
        user = M.UserIdentity,
        group = M.GroupIdentity,
        iamUser = M.IAMUserIdentity,
        iamRole = M.IAMRoleIdentity,
    },
}

M.Permission = {
    ADMINISTRATOR = "ADMINISTRATOR",
    VIEWER = "VIEWER",
}

M.PortalResource = {
    type = "structure",
    id = "PortalResource",
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
    id = "ProjectResource",
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
    id = "Resource",
    members = {
        portal = M.PortalResource,
        project = M.ProjectResource,
    },
}

M.AccessPolicySummary = {
    type = "structure",
    id = "AccessPolicySummary",
    members = {
        id = {
            type = "string",
            traits = {
                required = true,
            },
        },
        identity = setmetatable({ traits = {
            required = true,
        } }, { __index = M.Identity }),
        resource = setmetatable({ traits = {
            required = true,
        } }, { __index = M.Resource }),
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
    id = "ActionDefinition",
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
    id = "ActionPayload",
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
    id = "ResolveTo",
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
    id = "TargetResource",
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
    id = "ActionSummary",
    members = {
        actionId = {
            type = "string",
        },
        actionDefinitionId = {
            type = "string",
        },
        targetResource = M.TargetResource,
        resolveTo = M.ResolveTo,
    },
}

M.Quality = {
    GOOD = "GOOD",
    BAD = "BAD",
    UNCERTAIN = "UNCERTAIN",
}

M.Aggregates = {
    type = "structure",
    id = "Aggregates",
    members = {
        average = {
            type = "double",
        },
        count = {
            type = "double",
        },
        maximum = {
            type = "double",
        },
        minimum = {
            type = "double",
        },
        sum = {
            type = "double",
        },
        standardDeviation = {
            type = "double",
        },
    },
}

M.AggregatedValue = {
    type = "structure",
    id = "AggregatedValue",
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
        value = setmetatable({ traits = {
            required = true,
        } }, { __index = M.Aggregates }),
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
    id = "Alarms",
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
    id = "AssetBindingValueFilter",
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
    id = "PropertyNotification",
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
    id = "AssetPropertyPathSegment",
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
    id = "AssetProperty",
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
        notification = M.PropertyNotification,
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
            member = M.AssetPropertyPathSegment,
        },
    },
}

M.AssetCompositeModel = {
    type = "structure",
    id = "AssetCompositeModel",
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
            member = M.AssetProperty,
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
    id = "AssetCompositeModelPathSegment",
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
    id = "AssetCompositeModelSummary",
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
            member = M.AssetCompositeModelPathSegment,
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
    id = "AssetErrorDetails",
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
    id = "AssetHierarchy",
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
    id = "AssetHierarchyInfo",
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
    id = "AssetModelBindingValueFilter",
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
    id = "AssetModelPropertyPathSegment",
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
    id = "Attribute",
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
    id = "ForwardingConfig",
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
    id = "MeasurementProcessingConfig",
    members = {
        forwardingConfig = setmetatable({ traits = {
            required = true,
        } }, { __index = M.ForwardingConfig }),
    },
}

M.Measurement = {
    type = "structure",
    id = "Measurement",
    members = {
        processingConfig = M.MeasurementProcessingConfig,
    },
}

M.ComputeLocation = {
    EDGE = "EDGE",
    CLOUD = "CLOUD",
}

M.MetricProcessingConfig = {
    type = "structure",
    id = "MetricProcessingConfig",
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
    id = "VariableValue",
    members = {
        propertyId = {
            type = "string",
        },
        hierarchyId = {
            type = "string",
        },
        propertyPath = {
            type = "list",
            member = M.AssetModelPropertyPathSegment,
        },
    },
}

M.ExpressionVariable = {
    type = "structure",
    id = "ExpressionVariable",
    members = {
        name = {
            type = "string",
            traits = {
                required = true,
            },
        },
        value = setmetatable({ traits = {
            required = true,
        } }, { __index = M.VariableValue }),
    },
}

M.TumblingWindow = {
    type = "structure",
    id = "TumblingWindow",
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
    id = "MetricWindow",
    members = {
        tumbling = M.TumblingWindow,
    },
}

M.Metric = {
    type = "structure",
    id = "Metric",
    members = {
        expression = {
            type = "string",
            traits = {
                default = "",
            },
        },
        variables = {
            type = "list",
            member = M.ExpressionVariable,
            traits = {
                default = {},
            },
        },
        window = setmetatable({ traits = {
            required = true,
        } }, { __index = M.MetricWindow }),
        processingConfig = M.MetricProcessingConfig,
    },
}

M.TransformProcessingConfig = {
    type = "structure",
    id = "TransformProcessingConfig",
    members = {
        computeLocation = {
            type = "string",
            traits = {
                required = true,
            },
        },
        forwardingConfig = M.ForwardingConfig,
    },
}

M.Transform = {
    type = "structure",
    id = "Transform",
    members = {
        expression = {
            type = "string",
            traits = {
                required = true,
            },
        },
        variables = {
            type = "list",
            member = M.ExpressionVariable,
            traits = {
                required = true,
            },
        },
        processingConfig = M.TransformProcessingConfig,
    },
}

M.PropertyType = {
    type = "structure",
    id = "PropertyType",
    members = {
        attribute = M.Attribute,
        measurement = M.Measurement,
        transform = M.Transform,
        metric = M.Metric,
    },
}

M.AssetModelProperty = {
    type = "structure",
    id = "AssetModelProperty",
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
        type = setmetatable({ traits = {
            required = true,
        } }, { __index = M.PropertyType }),
        path = {
            type = "list",
            member = M.AssetModelPropertyPathSegment,
        },
    },
}

M.AssetModelCompositeModel = {
    type = "structure",
    id = "AssetModelCompositeModel",
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
            member = M.AssetModelProperty,
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
    id = "AssetModelPropertyDefinition",
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
        type = setmetatable({ traits = {
            required = true,
        } }, { __index = M.PropertyType }),
    },
}

M.AssetModelCompositeModelDefinition = {
    type = "structure",
    id = "AssetModelCompositeModelDefinition",
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
            member = M.AssetModelPropertyDefinition,
        },
    },
}

M.AssetModelCompositeModelPathSegment = {
    type = "structure",
    id = "AssetModelCompositeModelPathSegment",
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
    id = "AssetModelCompositeModelSummary",
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
            member = M.AssetModelCompositeModelPathSegment,
        },
    },
}

M.AssetModelHierarchy = {
    type = "structure",
    id = "AssetModelHierarchy",
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
    id = "AssetModelHierarchyDefinition",
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
    id = "AssetModelPropertyBindingValue",
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
    id = "AssetModelPropertyBindingValueFilter",
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
    id = "InterfaceSummary",
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
    id = "AssetModelPropertySummary",
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
        type = setmetatable({ traits = {
            required = true,
        } }, { __index = M.PropertyType }),
        assetModelCompositeModelId = {
            type = "string",
        },
        path = {
            type = "list",
            member = M.AssetModelPropertyPathSegment,
        },
        interfaceSummaries = {
            type = "list",
            member = M.InterfaceSummary,
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
    id = "DetailedError",
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
    id = "ErrorDetails",
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
            member = M.DetailedError,
        },
    },
}

M.AssetModelStatus = {
    type = "structure",
    id = "AssetModelStatus",
    members = {
        state = {
            type = "string",
            traits = {
                required = true,
            },
        },
        error = M.ErrorDetails,
    },
}

M.AssetModelType = {
    ASSET_MODEL = "ASSET_MODEL",
    COMPONENT_MODEL = "COMPONENT_MODEL",
    INTERFACE = "INTERFACE",
}

M.AssetModelSummary = {
    type = "structure",
    id = "AssetModelSummary",
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
        status = setmetatable({ traits = {
            required = true,
        } }, { __index = M.AssetModelStatus }),
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
    id = "AssetPropertyBindingValue",
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
    id = "AssetPropertyBindingValueFilter",
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
    id = "AssetPropertySummary",
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
        notification = M.PropertyNotification,
        assetCompositeModelId = {
            type = "string",
        },
        path = {
            type = "list",
            member = M.AssetPropertyPathSegment,
        },
    },
}

M.TimeInNanos = {
    type = "structure",
    id = "TimeInNanos",
    members = {
        timeInSeconds = {
            type = "long",
            traits = {
                required = true,
            },
        },
        offsetInNanos = {
            type = "integer",
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
    id = "PropertyValueNullValue",
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
    id = "Variant",
    members = {
        stringValue = {
            type = "string",
        },
        integerValue = {
            type = "integer",
        },
        doubleValue = {
            type = "double",
        },
        booleanValue = {
            type = "boolean",
        },
        nullValue = M.PropertyValueNullValue,
    },
}

M.AssetPropertyValue = {
    type = "structure",
    id = "AssetPropertyValue",
    members = {
        value = setmetatable({ traits = {
            required = true,
        } }, { __index = M.Variant }),
        timestamp = setmetatable({ traits = {
            required = true,
        } }, { __index = M.TimeInNanos }),
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
    id = "AssetRelationshipSummary",
    members = {
        hierarchyInfo = M.AssetHierarchyInfo,
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
    id = "AssetStatus",
    members = {
        state = {
            type = "string",
            traits = {
                required = true,
            },
        },
        error = M.ErrorDetails,
    },
}

M.AssetSummary = {
    type = "structure",
    id = "AssetSummary",
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
        status = setmetatable({ traits = {
            required = true,
        } }, { __index = M.AssetStatus }),
        hierarchies = {
            type = "list",
            member = M.AssetHierarchy,
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
    id = "AssociateAssetsInput",
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
            traits = {
                idempotency_token = true,
            },
        },
    },
}

M.AssociateAssetsOutput = {
    type = "structure",
    id = "AssociateAssetsOutput",
}

M.ConflictingOperationException = {
    type = "structure",
    id = "ConflictingOperationException",
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
    id = "InternalFailureException",
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
    id = "InvalidRequestException",
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
    id = "LimitExceededException",
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
    id = "ResourceAlreadyExistsException",
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
    id = "ResourceNotFoundException",
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
    id = "ThrottlingException",
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
    id = "AssociatedAssetsSummary",
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
        status = setmetatable({ traits = {
            required = true,
        } }, { __index = M.AssetStatus }),
        hierarchies = {
            type = "list",
            member = M.AssetHierarchy,
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
    id = "AssociateTimeSeriesToAssetPropertyInput",
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
            traits = {
                idempotency_token = true,
            },
        },
    },
}

M.AssociateTimeSeriesToAssetPropertyOutput = {
    type = "structure",
    id = "AssociateTimeSeriesToAssetPropertyOutput",
}

M.AuthMode = {
    IAM = "IAM",
    SSO = "SSO",
}

M.BatchAssociateProjectAssetsInput = {
    type = "structure",
    id = "BatchAssociateProjectAssetsInput",
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
            member = { type = "string" },
            traits = {
                required = true,
            },
        },
        clientToken = {
            type = "string",
            traits = {
                idempotency_token = true,
            },
        },
    },
}

M.BatchAssociateProjectAssetsOutput = {
    type = "structure",
    id = "BatchAssociateProjectAssetsOutput",
    members = {
        errors = {
            type = "list",
            member = M.AssetErrorDetails,
        },
    },
}

M.BatchDisassociateProjectAssetsInput = {
    type = "structure",
    id = "BatchDisassociateProjectAssetsInput",
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
            member = { type = "string" },
            traits = {
                required = true,
            },
        },
        clientToken = {
            type = "string",
            traits = {
                idempotency_token = true,
            },
        },
    },
}

M.BatchDisassociateProjectAssetsOutput = {
    type = "structure",
    id = "BatchDisassociateProjectAssetsOutput",
    members = {
        errors = {
            type = "list",
            member = M.AssetErrorDetails,
        },
    },
}

M.TimeOrdering = {
    ASCENDING = "ASCENDING",
    DESCENDING = "DESCENDING",
}

M.BatchGetAssetPropertyAggregatesEntry = {
    type = "structure",
    id = "BatchGetAssetPropertyAggregatesEntry",
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
            member = { type = "string" },
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
            member = { type = "string" },
        },
        timeOrdering = {
            type = "string",
        },
    },
}

M.BatchGetAssetPropertyAggregatesInput = {
    type = "structure",
    id = "BatchGetAssetPropertyAggregatesInput",
    members = {
        entries = {
            type = "list",
            member = M.BatchGetAssetPropertyAggregatesEntry,
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

M.BatchGetAssetPropertyAggregatesErrorCode = {
    ResourceNotFoundException = "ResourceNotFoundException",
    InvalidRequestException = "InvalidRequestException",
    AccessDeniedException = "AccessDeniedException",
}

M.BatchGetAssetPropertyAggregatesErrorEntry = {
    type = "structure",
    id = "BatchGetAssetPropertyAggregatesErrorEntry",
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
    id = "BatchGetAssetPropertyAggregatesErrorInfo",
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
    id = "BatchGetAssetPropertyAggregatesSkippedEntry",
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
        errorInfo = M.BatchGetAssetPropertyAggregatesErrorInfo,
    },
}

M.BatchGetAssetPropertyAggregatesSuccessEntry = {
    type = "structure",
    id = "BatchGetAssetPropertyAggregatesSuccessEntry",
    members = {
        entryId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        aggregatedValues = {
            type = "list",
            member = M.AggregatedValue,
            traits = {
                required = true,
            },
        },
    },
}

M.BatchGetAssetPropertyAggregatesOutput = {
    type = "structure",
    id = "BatchGetAssetPropertyAggregatesOutput",
    members = {
        errorEntries = {
            type = "list",
            member = M.BatchGetAssetPropertyAggregatesErrorEntry,
            traits = {
                required = true,
            },
        },
        successEntries = {
            type = "list",
            member = M.BatchGetAssetPropertyAggregatesSuccessEntry,
            traits = {
                required = true,
            },
        },
        skippedEntries = {
            type = "list",
            member = M.BatchGetAssetPropertyAggregatesSkippedEntry,
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
    id = "ServiceUnavailableException",
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
    id = "BatchGetAssetPropertyValueEntry",
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
    id = "BatchGetAssetPropertyValueInput",
    members = {
        entries = {
            type = "list",
            member = M.BatchGetAssetPropertyValueEntry,
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
    id = "BatchGetAssetPropertyValueErrorEntry",
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
    id = "BatchGetAssetPropertyValueErrorInfo",
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
    id = "BatchGetAssetPropertyValueSkippedEntry",
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
        errorInfo = M.BatchGetAssetPropertyValueErrorInfo,
    },
}

M.BatchGetAssetPropertyValueSuccessEntry = {
    type = "structure",
    id = "BatchGetAssetPropertyValueSuccessEntry",
    members = {
        entryId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        assetPropertyValue = M.AssetPropertyValue,
    },
}

M.BatchGetAssetPropertyValueOutput = {
    type = "structure",
    id = "BatchGetAssetPropertyValueOutput",
    members = {
        errorEntries = {
            type = "list",
            member = M.BatchGetAssetPropertyValueErrorEntry,
            traits = {
                required = true,
            },
        },
        successEntries = {
            type = "list",
            member = M.BatchGetAssetPropertyValueSuccessEntry,
            traits = {
                required = true,
            },
        },
        skippedEntries = {
            type = "list",
            member = M.BatchGetAssetPropertyValueSkippedEntry,
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
    id = "BatchGetAssetPropertyValueHistoryEntry",
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
            member = { type = "string" },
        },
        timeOrdering = {
            type = "string",
        },
    },
}

M.BatchGetAssetPropertyValueHistoryInput = {
    type = "structure",
    id = "BatchGetAssetPropertyValueHistoryInput",
    members = {
        entries = {
            type = "list",
            member = M.BatchGetAssetPropertyValueHistoryEntry,
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

M.BatchGetAssetPropertyValueHistoryErrorCode = {
    ResourceNotFoundException = "ResourceNotFoundException",
    InvalidRequestException = "InvalidRequestException",
    AccessDeniedException = "AccessDeniedException",
}

M.BatchGetAssetPropertyValueHistoryErrorEntry = {
    type = "structure",
    id = "BatchGetAssetPropertyValueHistoryErrorEntry",
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
    id = "BatchGetAssetPropertyValueHistoryErrorInfo",
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
    id = "BatchGetAssetPropertyValueHistorySkippedEntry",
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
        errorInfo = M.BatchGetAssetPropertyValueHistoryErrorInfo,
    },
}

M.BatchGetAssetPropertyValueHistorySuccessEntry = {
    type = "structure",
    id = "BatchGetAssetPropertyValueHistorySuccessEntry",
    members = {
        entryId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        assetPropertyValueHistory = {
            type = "list",
            member = M.AssetPropertyValue,
            traits = {
                required = true,
            },
        },
    },
}

M.BatchGetAssetPropertyValueHistoryOutput = {
    type = "structure",
    id = "BatchGetAssetPropertyValueHistoryOutput",
    members = {
        errorEntries = {
            type = "list",
            member = M.BatchGetAssetPropertyValueHistoryErrorEntry,
            traits = {
                required = true,
            },
        },
        successEntries = {
            type = "list",
            member = M.BatchGetAssetPropertyValueHistorySuccessEntry,
            traits = {
                required = true,
            },
        },
        skippedEntries = {
            type = "list",
            member = M.BatchGetAssetPropertyValueHistorySkippedEntry,
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
    id = "PutAssetPropertyValueEntry",
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
            member = M.AssetPropertyValue,
            traits = {
                required = true,
            },
        },
    },
}

M.BatchPutAssetPropertyValueInput = {
    type = "structure",
    id = "BatchPutAssetPropertyValueInput",
    members = {
        enablePartialEntryProcessing = {
            type = "boolean",
        },
        entries = {
            type = "list",
            member = M.PutAssetPropertyValueEntry,
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
    id = "BatchPutAssetPropertyError",
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
            member = M.TimeInNanos,
            traits = {
                required = true,
            },
        },
    },
}

M.BatchPutAssetPropertyErrorEntry = {
    type = "structure",
    id = "BatchPutAssetPropertyErrorEntry",
    members = {
        entryId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        errors = {
            type = "list",
            member = M.BatchPutAssetPropertyError,
            traits = {
                required = true,
            },
        },
    },
}

M.BatchPutAssetPropertyValueOutput = {
    type = "structure",
    id = "BatchPutAssetPropertyValueOutput",
    members = {
        errorEntries = {
            type = "list",
            member = M.BatchPutAssetPropertyErrorEntry,
            traits = {
                required = true,
            },
        },
    },
}

M.CreateAccessPolicyInput = {
    type = "structure",
    id = "CreateAccessPolicyInput",
    members = {
        accessPolicyIdentity = setmetatable({ traits = {
            required = true,
        } }, { __index = M.Identity }),
        accessPolicyResource = setmetatable({ traits = {
            required = true,
        } }, { __index = M.Resource }),
        accessPolicyPermission = {
            type = "string",
            traits = {
                required = true,
            },
        },
        clientToken = {
            type = "string",
            traits = {
                idempotency_token = true,
            },
        },
        tags = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
    },
}

M.CreateAccessPolicyOutput = {
    type = "structure",
    id = "CreateAccessPolicyOutput",
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
    id = "CreateAssetInput",
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
            traits = {
                idempotency_token = true,
            },
        },
        tags = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
        assetDescription = {
            type = "string",
        },
    },
}

M.CreateAssetOutput = {
    type = "structure",
    id = "CreateAssetOutput",
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
        assetStatus = setmetatable({ traits = {
            required = true,
        } }, { __index = M.AssetStatus }),
    },
}

M.CreateAssetModelInput = {
    type = "structure",
    id = "CreateAssetModelInput",
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
            member = M.AssetModelPropertyDefinition,
        },
        assetModelHierarchies = {
            type = "list",
            member = M.AssetModelHierarchyDefinition,
        },
        assetModelCompositeModels = {
            type = "list",
            member = M.AssetModelCompositeModelDefinition,
        },
        clientToken = {
            type = "string",
            traits = {
                idempotency_token = true,
            },
        },
        tags = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
    },
}

M.CreateAssetModelOutput = {
    type = "structure",
    id = "CreateAssetModelOutput",
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
        assetModelStatus = setmetatable({ traits = {
            required = true,
        } }, { __index = M.AssetModelStatus }),
    },
}

M.CreateAssetModelCompositeModelInput = {
    type = "structure",
    id = "CreateAssetModelCompositeModelInput",
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
            traits = {
                idempotency_token = true,
            },
        },
        composedAssetModelId = {
            type = "string",
        },
        assetModelCompositeModelProperties = {
            type = "list",
            member = M.AssetModelPropertyDefinition,
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
    id = "CreateAssetModelCompositeModelOutput",
    members = {
        assetModelCompositeModelId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        assetModelCompositeModelPath = {
            type = "list",
            member = M.AssetModelCompositeModelPathSegment,
            traits = {
                required = true,
            },
        },
        assetModelStatus = setmetatable({ traits = {
            required = true,
        } }, { __index = M.AssetModelStatus }),
    },
}

M.PreconditionFailedException = {
    type = "structure",
    id = "PreconditionFailedException",
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
    id = "ErrorReportLocation",
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
    id = "File",
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
    id = "Csv",
    members = {
        columnNames = {
            type = "list",
            member = { type = "string" },
            traits = {
                required = true,
            },
        },
    },
}

M.Parquet = {
    type = "structure",
    id = "Parquet",
}

M.FileFormat = {
    type = "structure",
    id = "FileFormat",
    members = {
        csv = M.Csv,
        parquet = M.Parquet,
    },
}

M.JobConfiguration = {
    type = "structure",
    id = "JobConfiguration",
    members = {
        fileFormat = setmetatable({ traits = {
            required = true,
        } }, { __index = M.FileFormat }),
    },
}

M.CreateBulkImportJobInput = {
    type = "structure",
    id = "CreateBulkImportJobInput",
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
            member = M.File,
            traits = {
                required = true,
            },
        },
        errorReportLocation = setmetatable({ traits = {
            required = true,
        } }, { __index = M.ErrorReportLocation }),
        jobConfiguration = setmetatable({ traits = {
            required = true,
        } }, { __index = M.JobConfiguration }),
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
    id = "CreateBulkImportJobOutput",
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
    id = "ComputationModelAnomalyDetectionConfiguration",
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
    id = "ComputationModelConfiguration",
    members = {
        anomalyDetection = M.ComputationModelAnomalyDetectionConfiguration,
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
    id = "ComputationModelStatus",
    members = {
        state = {
            type = "string",
            traits = {
                required = true,
            },
        },
        error = M.ErrorDetails,
    },
}

M.CreateComputationModelOutput = {
    type = "structure",
    id = "CreateComputationModelOutput",
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
        computationModelStatus = setmetatable({ traits = {
            required = true,
        } }, { __index = M.ComputationModelStatus }),
    },
}

M.CreateDashboardInput = {
    type = "structure",
    id = "CreateDashboardInput",
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
            traits = {
                idempotency_token = true,
            },
        },
        tags = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
    },
}

M.CreateDashboardOutput = {
    type = "structure",
    id = "CreateDashboardOutput",
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
    id = "KendraSourceDetail",
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
    id = "SourceDetail",
    members = {
        kendra = M.KendraSourceDetail,
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
    id = "DatasetSource",
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
        sourceDetail = M.SourceDetail,
    },
}

M.CreateDatasetInput = {
    type = "structure",
    id = "CreateDatasetInput",
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
        datasetSource = setmetatable({ traits = {
            required = true,
        } }, { __index = M.DatasetSource }),
        clientToken = {
            type = "string",
            traits = {
                idempotency_token = true,
            },
        },
        tags = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
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
    id = "DatasetStatus",
    members = {
        state = {
            type = "string",
            traits = {
                required = true,
            },
        },
        error = M.ErrorDetails,
    },
}

M.CreateDatasetOutput = {
    type = "structure",
    id = "CreateDatasetOutput",
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
        datasetStatus = setmetatable({ traits = {
            required = true,
        } }, { __index = M.DatasetStatus }),
    },
}

M.Greengrass = {
    type = "structure",
    id = "Greengrass",
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
    id = "GreengrassV2",
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
    id = "SiemensIE",
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
    id = "GatewayPlatform",
    members = {
        greengrass = M.Greengrass,
        greengrassV2 = M.GreengrassV2,
        siemensIE = M.SiemensIE,
    },
}

M.CreateGatewayInput = {
    type = "structure",
    id = "CreateGatewayInput",
    members = {
        gatewayName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        gatewayPlatform = setmetatable({ traits = {
            required = true,
        } }, { __index = M.GatewayPlatform }),
        gatewayVersion = {
            type = "string",
        },
        tags = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
    },
}

M.CreateGatewayOutput = {
    type = "structure",
    id = "CreateGatewayOutput",
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
    id = "ImageFile",
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
    id = "PortalTypeEntry",
    members = {
        portalTools = {
            type = "list",
            member = { type = "string" },
        },
    },
}

M.CreatePortalInput = {
    type = "structure",
    id = "CreatePortalInput",
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
            traits = {
                idempotency_token = true,
            },
        },
        portalLogoImageFile = M.ImageFile,
        roleArn = {
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
        portalAuthMode = {
            type = "string",
        },
        notificationSenderEmail = {
            type = "string",
        },
        alarms = M.Alarms,
        portalType = {
            type = "string",
        },
        portalTypeConfiguration = {
            type = "map",
            key = { type = "string" },
            value = M.PortalTypeEntry,
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
    id = "MonitorErrorDetails",
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
    id = "PortalStatus",
    members = {
        state = {
            type = "string",
            traits = {
                required = true,
            },
        },
        error = M.MonitorErrorDetails,
    },
}

M.CreatePortalOutput = {
    type = "structure",
    id = "CreatePortalOutput",
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
        portalStatus = setmetatable({ traits = {
            required = true,
        } }, { __index = M.PortalStatus }),
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
    id = "CreateProjectInput",
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
            traits = {
                idempotency_token = true,
            },
        },
        tags = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
    },
}

M.CreateProjectOutput = {
    type = "structure",
    id = "CreateProjectOutput",
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
    id = "DeleteAccessPolicyInput",
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
                idempotency_token = true,
            },
        },
    },
}

M.DeleteAccessPolicyOutput = {
    type = "structure",
    id = "DeleteAccessPolicyOutput",
}

M.DeleteAssetInput = {
    type = "structure",
    id = "DeleteAssetInput",
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
                idempotency_token = true,
            },
        },
    },
}

M.DeleteAssetOutput = {
    type = "structure",
    id = "DeleteAssetOutput",
    members = {
        assetStatus = setmetatable({ traits = {
            required = true,
        } }, { __index = M.AssetStatus }),
    },
}

M.DeleteAssetModelInput = {
    type = "structure",
    id = "DeleteAssetModelInput",
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
                idempotency_token = true,
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
    id = "DeleteAssetModelOutput",
    members = {
        assetModelStatus = setmetatable({ traits = {
            required = true,
        } }, { __index = M.AssetModelStatus }),
    },
}

M.DeleteAssetModelCompositeModelInput = {
    type = "structure",
    id = "DeleteAssetModelCompositeModelInput",
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
                idempotency_token = true,
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
    id = "DeleteAssetModelCompositeModelOutput",
    members = {
        assetModelStatus = setmetatable({ traits = {
            required = true,
        } }, { __index = M.AssetModelStatus }),
    },
}

M.DeleteAssetModelInterfaceRelationshipInput = {
    type = "structure",
    id = "DeleteAssetModelInterfaceRelationshipInput",
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
                idempotency_token = true,
            },
        },
    },
}

M.DeleteAssetModelInterfaceRelationshipOutput = {
    type = "structure",
    id = "DeleteAssetModelInterfaceRelationshipOutput",
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
        assetModelStatus = setmetatable({ traits = {
            required = true,
        } }, { __index = M.AssetModelStatus }),
    },
}

M.DeleteComputationModelInput = {
    type = "structure",
    id = "DeleteComputationModelInput",
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
                idempotency_token = true,
            },
        },
    },
}

M.DeleteComputationModelOutput = {
    type = "structure",
    id = "DeleteComputationModelOutput",
    members = {
        computationModelStatus = setmetatable({ traits = {
            required = true,
        } }, { __index = M.ComputationModelStatus }),
    },
}

M.DeleteDashboardInput = {
    type = "structure",
    id = "DeleteDashboardInput",
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
                idempotency_token = true,
            },
        },
    },
}

M.DeleteDashboardOutput = {
    type = "structure",
    id = "DeleteDashboardOutput",
}

M.DeleteDatasetInput = {
    type = "structure",
    id = "DeleteDatasetInput",
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
                idempotency_token = true,
            },
        },
    },
}

M.DeleteDatasetOutput = {
    type = "structure",
    id = "DeleteDatasetOutput",
    members = {
        datasetStatus = setmetatable({ traits = {
            required = true,
        } }, { __index = M.DatasetStatus }),
    },
}

M.DeleteGatewayInput = {
    type = "structure",
    id = "DeleteGatewayInput",
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
    id = "DeleteGatewayOutput",
}

M.DeletePortalInput = {
    type = "structure",
    id = "DeletePortalInput",
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
                idempotency_token = true,
            },
        },
    },
}

M.DeletePortalOutput = {
    type = "structure",
    id = "DeletePortalOutput",
    members = {
        portalStatus = setmetatable({ traits = {
            required = true,
        } }, { __index = M.PortalStatus }),
    },
}

M.DeleteProjectInput = {
    type = "structure",
    id = "DeleteProjectInput",
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
                idempotency_token = true,
            },
        },
    },
}

M.DeleteProjectOutput = {
    type = "structure",
    id = "DeleteProjectOutput",
}

M.DeleteTimeSeriesInput = {
    type = "structure",
    id = "DeleteTimeSeriesInput",
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
            traits = {
                idempotency_token = true,
            },
        },
    },
}

M.DeleteTimeSeriesOutput = {
    type = "structure",
    id = "DeleteTimeSeriesOutput",
}

M.DescribeAccessPolicyInput = {
    type = "structure",
    id = "DescribeAccessPolicyInput",
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
    id = "DescribeAccessPolicyOutput",
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
        accessPolicyIdentity = setmetatable({ traits = {
            required = true,
        } }, { __index = M.Identity }),
        accessPolicyResource = setmetatable({ traits = {
            required = true,
        } }, { __index = M.Resource }),
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
    id = "DescribeActionInput",
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
    id = "DescribeActionOutput",
    members = {
        actionId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        targetResource = setmetatable({ traits = {
            required = true,
        } }, { __index = M.TargetResource }),
        actionDefinitionId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        actionPayload = setmetatable({ traits = {
            required = true,
        } }, { __index = M.ActionPayload }),
        executionTime = {
            type = "timestamp",
            traits = {
                required = true,
            },
        },
        resolveTo = M.ResolveTo,
    },
}

M.DescribeAssetInput = {
    type = "structure",
    id = "DescribeAssetInput",
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
                default = false,
                http_query = "excludeProperties",
            },
        },
    },
}

M.DescribeAssetOutput = {
    type = "structure",
    id = "DescribeAssetOutput",
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
            member = M.AssetProperty,
            traits = {
                required = true,
            },
        },
        assetHierarchies = {
            type = "list",
            member = M.AssetHierarchy,
            traits = {
                required = true,
            },
        },
        assetCompositeModels = {
            type = "list",
            member = M.AssetCompositeModel,
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
        assetStatus = setmetatable({ traits = {
            required = true,
        } }, { __index = M.AssetStatus }),
        assetDescription = {
            type = "string",
        },
        assetCompositeModelSummaries = {
            type = "list",
            member = M.AssetCompositeModelSummary,
        },
    },
}

M.DescribeAssetCompositeModelInput = {
    type = "structure",
    id = "DescribeAssetCompositeModelInput",
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
    id = "DescribeAssetCompositeModelOutput",
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
            member = M.AssetCompositeModelPathSegment,
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
            member = M.AssetProperty,
            traits = {
                required = true,
            },
        },
        assetCompositeModelSummaries = {
            type = "list",
            member = M.AssetCompositeModelSummary,
            traits = {
                required = true,
            },
        },
        actionDefinitions = {
            type = "list",
            member = M.ActionDefinition,
        },
    },
}

M.DescribeAssetModelInput = {
    type = "structure",
    id = "DescribeAssetModelInput",
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
                default = false,
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
    id = "InterfaceRelationship",
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
    id = "DescribeAssetModelOutput",
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
            member = M.AssetModelProperty,
            traits = {
                required = true,
            },
        },
        assetModelHierarchies = {
            type = "list",
            member = M.AssetModelHierarchy,
            traits = {
                required = true,
            },
        },
        assetModelCompositeModels = {
            type = "list",
            member = M.AssetModelCompositeModel,
        },
        assetModelCompositeModelSummaries = {
            type = "list",
            member = M.AssetModelCompositeModelSummary,
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
        assetModelStatus = setmetatable({ traits = {
            required = true,
        } }, { __index = M.AssetModelStatus }),
        assetModelVersion = {
            type = "string",
        },
        interfaceDetails = {
            type = "list",
            member = M.InterfaceRelationship,
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
    id = "DescribeAssetModelCompositeModelInput",
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
    id = "CompositionRelationshipItem",
    members = {
        id = {
            type = "string",
        },
    },
}

M.CompositionDetails = {
    type = "structure",
    id = "CompositionDetails",
    members = {
        compositionRelationship = {
            type = "list",
            member = M.CompositionRelationshipItem,
        },
    },
}

M.DescribeAssetModelCompositeModelOutput = {
    type = "structure",
    id = "DescribeAssetModelCompositeModelOutput",
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
            member = M.AssetModelCompositeModelPathSegment,
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
            member = M.AssetModelProperty,
            traits = {
                required = true,
            },
        },
        compositionDetails = M.CompositionDetails,
        assetModelCompositeModelSummaries = {
            type = "list",
            member = M.AssetModelCompositeModelSummary,
            traits = {
                required = true,
            },
        },
        actionDefinitions = {
            type = "list",
            member = M.ActionDefinition,
        },
    },
}

M.DescribeAssetModelInterfaceRelationshipInput = {
    type = "structure",
    id = "DescribeAssetModelInterfaceRelationshipInput",
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
    id = "HierarchyMapping",
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
    id = "PropertyMapping",
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
    id = "DescribeAssetModelInterfaceRelationshipOutput",
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
            member = M.PropertyMapping,
            traits = {
                required = true,
            },
        },
        hierarchyMappings = {
            type = "list",
            member = M.HierarchyMapping,
            traits = {
                required = true,
            },
        },
    },
}

M.DescribeAssetPropertyInput = {
    type = "structure",
    id = "DescribeAssetPropertyInput",
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
    id = "Property",
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
        notification = M.PropertyNotification,
        dataType = {
            type = "string",
            traits = {
                required = true,
            },
        },
        unit = {
            type = "string",
        },
        type = M.PropertyType,
        path = {
            type = "list",
            member = M.AssetPropertyPathSegment,
        },
    },
}

M.CompositeModelProperty = {
    type = "structure",
    id = "CompositeModelProperty",
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
        assetProperty = setmetatable({ traits = {
            required = true,
        } }, { __index = M.Property }),
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
    id = "DescribeAssetPropertyOutput",
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
        assetProperty = M.Property,
        compositeModel = M.CompositeModelProperty,
    },
}

M.DescribeBulkImportJobInput = {
    type = "structure",
    id = "DescribeBulkImportJobInput",
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
    id = "DescribeBulkImportJobOutput",
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
            member = M.File,
            traits = {
                required = true,
            },
        },
        errorReportLocation = setmetatable({ traits = {
            required = true,
        } }, { __index = M.ErrorReportLocation }),
        jobConfiguration = setmetatable({ traits = {
            required = true,
        } }, { __index = M.JobConfiguration }),
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
    id = "DescribeComputationModelInput",
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
    id = "DescribeComputationModelExecutionSummaryInput",
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
    id = "DescribeComputationModelExecutionSummaryOutput",
    members = {
        computationModelId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        resolveTo = M.ResolveTo,
        computationModelExecutionSummary = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
            traits = {
                required = true,
            },
        },
    },
}

M.DescribeDashboardInput = {
    type = "structure",
    id = "DescribeDashboardInput",
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
    id = "DescribeDashboardOutput",
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
    id = "DescribeDatasetInput",
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
    id = "DescribeDatasetOutput",
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
        datasetSource = setmetatable({ traits = {
            required = true,
        } }, { __index = M.DatasetSource }),
        datasetStatus = setmetatable({ traits = {
            required = true,
        } }, { __index = M.DatasetStatus }),
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
    id = "DescribeDefaultEncryptionConfigurationInput",
}

M.ConfigurationErrorDetails = {
    type = "structure",
    id = "ConfigurationErrorDetails",
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
    id = "ConfigurationStatus",
    members = {
        state = {
            type = "string",
            traits = {
                required = true,
            },
        },
        error = M.ConfigurationErrorDetails,
    },
}

M.EncryptionType = {
    SITEWISE_DEFAULT_ENCRYPTION = "SITEWISE_DEFAULT_ENCRYPTION",
    KMS_BASED_ENCRYPTION = "KMS_BASED_ENCRYPTION",
}

M.DescribeDefaultEncryptionConfigurationOutput = {
    type = "structure",
    id = "DescribeDefaultEncryptionConfigurationOutput",
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
        configurationStatus = setmetatable({ traits = {
            required = true,
        } }, { __index = M.ConfigurationStatus }),
    },
}

M.DescribeExecutionInput = {
    type = "structure",
    id = "DescribeExecutionInput",
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
    id = "ExecutionStatus",
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
    id = "DescribeExecutionOutput",
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
        targetResource = setmetatable({ traits = {
            required = true,
        } }, { __index = M.TargetResource }),
        targetResourceVersion = {
            type = "string",
            traits = {
                required = true,
            },
        },
        resolveTo = M.ResolveTo,
        executionStartTime = {
            type = "timestamp",
            traits = {
                required = true,
            },
        },
        executionEndTime = {
            type = "timestamp",
        },
        executionStatus = setmetatable({ traits = {
            required = true,
        } }, { __index = M.ExecutionStatus }),
        executionResult = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
        executionDetails = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
        executionEntityVersion = {
            type = "string",
        },
    },
}

M.DescribeGatewayInput = {
    type = "structure",
    id = "DescribeGatewayInput",
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
    id = "GatewayCapabilitySummary",
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
    id = "DescribeGatewayOutput",
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
        gatewayPlatform = M.GatewayPlatform,
        gatewayVersion = {
            type = "string",
        },
        gatewayCapabilitySummaries = {
            type = "list",
            member = M.GatewayCapabilitySummary,
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
    id = "DescribeGatewayCapabilityConfigurationInput",
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
    id = "DescribeGatewayCapabilityConfigurationOutput",
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
    id = "DescribeLoggingOptionsInput",
}

M.LoggingLevel = {
    ERROR = "ERROR",
    INFO = "INFO",
    OFF = "OFF",
}

M.LoggingOptions = {
    type = "structure",
    id = "LoggingOptions",
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
    id = "DescribeLoggingOptionsOutput",
    members = {
        loggingOptions = setmetatable({ traits = {
            required = true,
        } }, { __index = M.LoggingOptions }),
    },
}

M.DescribePortalInput = {
    type = "structure",
    id = "DescribePortalInput",
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
    id = "ImageLocation",
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
    id = "DescribePortalOutput",
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
        portalStatus = setmetatable({ traits = {
            required = true,
        } }, { __index = M.PortalStatus }),
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
        portalLogoImageLocation = M.ImageLocation,
        roleArn = {
            type = "string",
        },
        portalAuthMode = {
            type = "string",
        },
        notificationSenderEmail = {
            type = "string",
        },
        alarms = M.Alarms,
        portalType = {
            type = "string",
        },
        portalTypeConfiguration = {
            type = "map",
            key = { type = "string" },
            value = M.PortalTypeEntry,
        },
    },
}

M.DescribeProjectInput = {
    type = "structure",
    id = "DescribeProjectInput",
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
    id = "DescribeProjectOutput",
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
    id = "DescribeStorageConfigurationInput",
}

M.DisassociatedDataStorageState = {
    ENABLED = "ENABLED",
    DISABLED = "DISABLED",
}

M.CustomerManagedS3Storage = {
    type = "structure",
    id = "CustomerManagedS3Storage",
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
    id = "MultiLayerStorage",
    members = {
        customerManagedS3Storage = setmetatable({ traits = {
            required = true,
        } }, { __index = M.CustomerManagedS3Storage }),
    },
}

M.RetentionPeriod = {
    type = "structure",
    id = "RetentionPeriod",
    members = {
        numberOfDays = {
            type = "integer",
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
    id = "WarmTierRetentionPeriod",
    members = {
        numberOfDays = {
            type = "integer",
        },
        unlimited = {
            type = "boolean",
        },
    },
}

M.DescribeStorageConfigurationOutput = {
    type = "structure",
    id = "DescribeStorageConfigurationOutput",
    members = {
        storageType = {
            type = "string",
            traits = {
                required = true,
            },
        },
        multiLayerStorage = M.MultiLayerStorage,
        disassociatedDataStorage = {
            type = "string",
        },
        retentionPeriod = M.RetentionPeriod,
        configurationStatus = setmetatable({ traits = {
            required = true,
        } }, { __index = M.ConfigurationStatus }),
        lastUpdateDate = {
            type = "timestamp",
        },
        warmTier = {
            type = "string",
        },
        warmTierRetentionPeriod = M.WarmTierRetentionPeriod,
        disallowIngestNullNaN = {
            type = "boolean",
        },
    },
}

M.DescribeTimeSeriesInput = {
    type = "structure",
    id = "DescribeTimeSeriesInput",
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
    id = "DescribeTimeSeriesOutput",
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
    id = "DisassociateAssetsInput",
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
            traits = {
                idempotency_token = true,
            },
        },
    },
}

M.DisassociateAssetsOutput = {
    type = "structure",
    id = "DisassociateAssetsOutput",
}

M.DisassociateTimeSeriesFromAssetPropertyInput = {
    type = "structure",
    id = "DisassociateTimeSeriesFromAssetPropertyInput",
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
            traits = {
                idempotency_token = true,
            },
        },
    },
}

M.DisassociateTimeSeriesFromAssetPropertyOutput = {
    type = "structure",
    id = "DisassociateTimeSeriesFromAssetPropertyOutput",
}

M.ExecuteActionInput = {
    type = "structure",
    id = "ExecuteActionInput",
    members = {
        targetResource = setmetatable({ traits = {
            required = true,
        } }, { __index = M.TargetResource }),
        actionDefinitionId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        actionPayload = setmetatable({ traits = {
            required = true,
        } }, { __index = M.ActionPayload }),
        clientToken = {
            type = "string",
        },
        resolveTo = M.ResolveTo,
    },
}

M.ExecuteActionOutput = {
    type = "structure",
    id = "ExecuteActionOutput",
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
    id = "ExecuteQueryInput",
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
            type = "integer",
        },
        clientToken = {
            type = "string",
            traits = {
                idempotency_token = true,
            },
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
    id = "ColumnType",
    members = {
        scalarType = {
            type = "string",
        },
    },
}

M.ColumnInfo = {
    type = "structure",
    id = "ColumnInfo",
    members = {
        name = {
            type = "string",
        },
        type = M.ColumnType,
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

M.GetAssetPropertyAggregatesInput = {
    type = "structure",
    id = "GetAssetPropertyAggregatesInput",
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
            member = { type = "string" },
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
            member = { type = "string" },
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
            type = "integer",
            traits = {
                http_query = "maxResults",
            },
        },
    },
}

M.GetAssetPropertyAggregatesOutput = {
    type = "structure",
    id = "GetAssetPropertyAggregatesOutput",
    members = {
        aggregatedValues = {
            type = "list",
            member = M.AggregatedValue,
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
    id = "GetAssetPropertyValueInput",
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
    id = "GetAssetPropertyValueOutput",
    members = {
        propertyValue = M.AssetPropertyValue,
    },
}

M.GetAssetPropertyValueHistoryInput = {
    type = "structure",
    id = "GetAssetPropertyValueHistoryInput",
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
            member = { type = "string" },
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
            type = "integer",
            traits = {
                http_query = "maxResults",
            },
        },
    },
}

M.GetAssetPropertyValueHistoryOutput = {
    type = "structure",
    id = "GetAssetPropertyValueHistoryOutput",
    members = {
        assetPropertyValueHistory = {
            type = "list",
            member = M.AssetPropertyValue,
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
    id = "GetInterpolatedAssetPropertyValuesInput",
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
            type = "long",
            traits = {
                http_query = "startTimeInSeconds",
                required = true,
            },
        },
        startTimeOffsetInNanos = {
            type = "integer",
            traits = {
                http_query = "startTimeOffsetInNanos",
            },
        },
        endTimeInSeconds = {
            type = "long",
            traits = {
                http_query = "endTimeInSeconds",
                required = true,
            },
        },
        endTimeOffsetInNanos = {
            type = "integer",
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
            type = "long",
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
            type = "integer",
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
            type = "long",
            traits = {
                http_query = "intervalWindowInSeconds",
            },
        },
    },
}

M.InterpolatedAssetPropertyValue = {
    type = "structure",
    id = "InterpolatedAssetPropertyValue",
    members = {
        timestamp = setmetatable({ traits = {
            required = true,
        } }, { __index = M.TimeInNanos }),
        value = setmetatable({ traits = {
            required = true,
        } }, { __index = M.Variant }),
    },
}

M.GetInterpolatedAssetPropertyValuesOutput = {
    type = "structure",
    id = "GetInterpolatedAssetPropertyValuesOutput",
    members = {
        interpolatedAssetPropertyValues = {
            type = "list",
            member = M.InterpolatedAssetPropertyValue,
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
    id = "InvokeAssistantInput",
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
            traits = {
                default = false,
            },
        },
    },
}

M.Content = {
    type = "structure",
    id = "Content",
    members = {
        text = {
            type = "string",
        },
    },
}

M.Location = {
    type = "structure",
    id = "Location",
    members = {
        uri = {
            type = "string",
        },
    },
}

M.Source = {
    type = "structure",
    id = "Source",
    members = {
        arn = {
            type = "string",
        },
        location = M.Location,
    },
}

M.DataSetReference = {
    type = "structure",
    id = "DataSetReference",
    members = {
        datasetArn = {
            type = "string",
        },
        source = M.Source,
    },
}

M.Reference = {
    type = "structure",
    id = "Reference",
    members = {
        dataset = M.DataSetReference,
    },
}

M.Citation = {
    type = "structure",
    id = "Citation",
    members = {
        reference = M.Reference,
        content = M.Content,
    },
}

M.InvocationOutput = {
    type = "structure",
    id = "InvocationOutput",
    members = {
        message = {
            type = "string",
        },
        citations = {
            type = "list",
            member = M.Citation,
        },
    },
}

M.Trace = {
    type = "structure",
    id = "Trace",
    members = {
        text = {
            type = "string",
        },
    },
}

M.ResponseStream = {
    type = "union",
    id = "ResponseStream",
    members = {
        trace = M.Trace,
        output = M.InvocationOutput,
        accessDeniedException = M.AccessDeniedException,
        conflictingOperationException = M.ConflictingOperationException,
        internalFailureException = M.InternalFailureException,
        invalidRequestException = M.InvalidRequestException,
        limitExceededException = M.LimitExceededException,
        resourceNotFoundException = M.ResourceNotFoundException,
        throttlingException = M.ThrottlingException,
    },
}

M.InvokeAssistantOutput = {
    type = "structure",
    id = "InvokeAssistantOutput",
    members = {
        body = setmetatable({ traits = {
            http_payload = true,
            required = true,
        } }, { __index = M.ResponseStream }),
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
    id = "ListAccessPoliciesInput",
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
            type = "integer",
            traits = {
                http_query = "maxResults",
            },
        },
    },
}

M.ListAccessPoliciesOutput = {
    type = "structure",
    id = "ListAccessPoliciesOutput",
    members = {
        accessPolicySummaries = {
            type = "list",
            member = M.AccessPolicySummary,
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
    id = "ListActionsInput",
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
            type = "integer",
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
    id = "ListActionsOutput",
    members = {
        actionSummaries = {
            type = "list",
            member = M.ActionSummary,
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
    id = "ListAssetModelCompositeModelsInput",
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
            type = "integer",
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
    id = "ListAssetModelCompositeModelsOutput",
    members = {
        assetModelCompositeModelSummaries = {
            type = "list",
            member = M.AssetModelCompositeModelSummary,
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
    id = "ListAssetModelPropertiesInput",
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
            type = "integer",
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
    id = "ListAssetModelPropertiesOutput",
    members = {
        assetModelPropertySummaries = {
            type = "list",
            member = M.AssetModelPropertySummary,
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
    id = "ListAssetModelsInput",
    members = {
        assetModelTypes = {
            type = "list",
            member = { type = "string" },
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
            type = "integer",
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
    id = "ListAssetModelsOutput",
    members = {
        assetModelSummaries = {
            type = "list",
            member = M.AssetModelSummary,
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
    id = "ListAssetPropertiesInput",
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
            type = "integer",
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
    id = "ListAssetPropertiesOutput",
    members = {
        assetPropertySummaries = {
            type = "list",
            member = M.AssetPropertySummary,
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
    id = "ListAssetRelationshipsInput",
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
            type = "integer",
            traits = {
                http_query = "maxResults",
            },
        },
    },
}

M.ListAssetRelationshipsOutput = {
    type = "structure",
    id = "ListAssetRelationshipsOutput",
    members = {
        assetRelationshipSummaries = {
            type = "list",
            member = M.AssetRelationshipSummary,
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
    id = "ListAssetsInput",
    members = {
        nextToken = {
            type = "string",
            traits = {
                http_query = "nextToken",
            },
        },
        maxResults = {
            type = "integer",
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
    id = "ListAssetsOutput",
    members = {
        assetSummaries = {
            type = "list",
            member = M.AssetSummary,
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
    id = "ListAssociatedAssetsInput",
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
            type = "integer",
            traits = {
                http_query = "maxResults",
            },
        },
    },
}

M.ListAssociatedAssetsOutput = {
    type = "structure",
    id = "ListAssociatedAssetsOutput",
    members = {
        assetSummaries = {
            type = "list",
            member = M.AssociatedAssetsSummary,
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
    id = "ListBulkImportJobsInput",
    members = {
        nextToken = {
            type = "string",
            traits = {
                http_query = "nextToken",
            },
        },
        maxResults = {
            type = "integer",
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
    id = "JobSummary",
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
    id = "ListBulkImportJobsOutput",
    members = {
        jobSummaries = {
            type = "list",
            member = M.JobSummary,
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
    id = "ListCompositionRelationshipsInput",
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
            type = "integer",
            traits = {
                http_query = "maxResults",
            },
        },
    },
}

M.CompositionRelationshipSummary = {
    type = "structure",
    id = "CompositionRelationshipSummary",
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
    id = "ListCompositionRelationshipsOutput",
    members = {
        compositionRelationshipSummaries = {
            type = "list",
            member = M.CompositionRelationshipSummary,
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
    id = "DataBindingValueFilter",
    members = {
        asset = M.AssetBindingValueFilter,
        assetModel = M.AssetModelBindingValueFilter,
        assetProperty = M.AssetPropertyBindingValueFilter,
        assetModelProperty = M.AssetModelPropertyBindingValueFilter,
    },
}

M.ListComputationModelDataBindingUsagesInput = {
    type = "structure",
    id = "ListComputationModelDataBindingUsagesInput",
    members = {
        dataBindingValueFilter = setmetatable({ traits = {
            required = true,
        } }, { __index = M.DataBindingValueFilter }),
        nextToken = {
            type = "string",
        },
        maxResults = {
            type = "integer",
        },
    },
}

M.DataBindingValue = {
    type = "structure",
    id = "DataBindingValue",
    members = {
        assetModelProperty = M.AssetModelPropertyBindingValue,
        assetProperty = M.AssetPropertyBindingValue,
    },
}

M.MatchedDataBinding = {
    type = "structure",
    id = "MatchedDataBinding",
    members = {
        value = setmetatable({ traits = {
            required = true,
        } }, { __index = M.DataBindingValue }),
    },
}

M.ComputationModelDataBindingUsageSummary = {
    type = "structure",
    id = "ComputationModelDataBindingUsageSummary",
    members = {
        computationModelIds = {
            type = "list",
            member = { type = "string" },
            traits = {
                required = true,
            },
        },
        matchedDataBinding = setmetatable({ traits = {
            required = true,
        } }, { __index = M.MatchedDataBinding }),
    },
}

M.ListComputationModelDataBindingUsagesOutput = {
    type = "structure",
    id = "ListComputationModelDataBindingUsagesOutput",
    members = {
        dataBindingUsageSummaries = {
            type = "list",
            member = M.ComputationModelDataBindingUsageSummary,
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
    id = "ListComputationModelResolveToResourcesInput",
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
            type = "integer",
            traits = {
                http_query = "maxResults",
            },
        },
    },
}

M.ComputationModelResolveToResourceSummary = {
    type = "structure",
    id = "ComputationModelResolveToResourceSummary",
    members = {
        resolveTo = M.ResolveTo,
    },
}

M.ListComputationModelResolveToResourcesOutput = {
    type = "structure",
    id = "ListComputationModelResolveToResourcesOutput",
    members = {
        computationModelResolveToResourceSummaries = {
            type = "list",
            member = M.ComputationModelResolveToResourceSummary,
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
    id = "ListComputationModelsInput",
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
            type = "integer",
            traits = {
                http_query = "maxResults",
            },
        },
    },
}

M.ComputationModelSummary = {
    type = "structure",
    id = "ComputationModelSummary",
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
        status = setmetatable({ traits = {
            required = true,
        } }, { __index = M.ComputationModelStatus }),
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
    id = "ListComputationModelsOutput",
    members = {
        computationModelSummaries = {
            type = "list",
            member = M.ComputationModelSummary,
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
    id = "ListDashboardsInput",
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
            type = "integer",
            traits = {
                http_query = "maxResults",
            },
        },
    },
}

M.DashboardSummary = {
    type = "structure",
    id = "DashboardSummary",
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
    id = "ListDashboardsOutput",
    members = {
        dashboardSummaries = {
            type = "list",
            member = M.DashboardSummary,
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
    id = "ListDatasetsInput",
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
            type = "integer",
            traits = {
                http_query = "maxResults",
            },
        },
    },
}

M.DatasetSummary = {
    type = "structure",
    id = "DatasetSummary",
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
        status = setmetatable({ traits = {
            required = true,
        } }, { __index = M.DatasetStatus }),
    },
}

M.ListDatasetsOutput = {
    type = "structure",
    id = "ListDatasetsOutput",
    members = {
        datasetSummaries = {
            type = "list",
            member = M.DatasetSummary,
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
    id = "ListExecutionsInput",
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
            type = "integer",
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
    id = "ExecutionSummary",
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
        targetResource = setmetatable({ traits = {
            required = true,
        } }, { __index = M.TargetResource }),
        targetResourceVersion = {
            type = "string",
            traits = {
                required = true,
            },
        },
        resolveTo = M.ResolveTo,
        executionStartTime = {
            type = "timestamp",
            traits = {
                required = true,
            },
        },
        executionEndTime = {
            type = "timestamp",
        },
        executionStatus = setmetatable({ traits = {
            required = true,
        } }, { __index = M.ExecutionStatus }),
        executionEntityVersion = {
            type = "string",
        },
    },
}

M.ListExecutionsOutput = {
    type = "structure",
    id = "ListExecutionsOutput",
    members = {
        executionSummaries = {
            type = "list",
            member = M.ExecutionSummary,
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
    id = "ListGatewaysInput",
    members = {
        nextToken = {
            type = "string",
            traits = {
                http_query = "nextToken",
            },
        },
        maxResults = {
            type = "integer",
            traits = {
                http_query = "maxResults",
            },
        },
    },
}

M.GatewaySummary = {
    type = "structure",
    id = "GatewaySummary",
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
        gatewayPlatform = M.GatewayPlatform,
        gatewayVersion = {
            type = "string",
        },
        gatewayCapabilitySummaries = {
            type = "list",
            member = M.GatewayCapabilitySummary,
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
    id = "ListGatewaysOutput",
    members = {
        gatewaySummaries = {
            type = "list",
            member = M.GatewaySummary,
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
    id = "ListInterfaceRelationshipsInput",
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
            type = "integer",
            traits = {
                http_query = "maxResults",
            },
        },
    },
}

M.InterfaceRelationshipSummary = {
    type = "structure",
    id = "InterfaceRelationshipSummary",
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
    id = "ListInterfaceRelationshipsOutput",
    members = {
        interfaceRelationshipSummaries = {
            type = "list",
            member = M.InterfaceRelationshipSummary,
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
    id = "ListPortalsInput",
    members = {
        nextToken = {
            type = "string",
            traits = {
                http_query = "nextToken",
            },
        },
        maxResults = {
            type = "integer",
            traits = {
                http_query = "maxResults",
            },
        },
    },
}

M.PortalSummary = {
    type = "structure",
    id = "PortalSummary",
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
        status = setmetatable({ traits = {
            required = true,
        } }, { __index = M.PortalStatus }),
        portalType = {
            type = "string",
        },
    },
}

M.ListPortalsOutput = {
    type = "structure",
    id = "ListPortalsOutput",
    members = {
        portalSummaries = {
            type = "list",
            member = M.PortalSummary,
        },
        nextToken = {
            type = "string",
        },
    },
}

M.ListProjectAssetsInput = {
    type = "structure",
    id = "ListProjectAssetsInput",
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
            type = "integer",
            traits = {
                http_query = "maxResults",
            },
        },
    },
}

M.ListProjectAssetsOutput = {
    type = "structure",
    id = "ListProjectAssetsOutput",
    members = {
        assetIds = {
            type = "list",
            member = { type = "string" },
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
    id = "ListProjectsInput",
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
            type = "integer",
            traits = {
                http_query = "maxResults",
            },
        },
    },
}

M.ProjectSummary = {
    type = "structure",
    id = "ProjectSummary",
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
    id = "ListProjectsOutput",
    members = {
        projectSummaries = {
            type = "list",
            member = M.ProjectSummary,
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
    id = "ListTagsForResourceInput",
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
    id = "ListTagsForResourceOutput",
    members = {
        tags = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
    },
}

M.UnauthorizedException = {
    type = "structure",
    id = "UnauthorizedException",
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
    id = "ListTimeSeriesInput",
    members = {
        nextToken = {
            type = "string",
            traits = {
                http_query = "nextToken",
            },
        },
        maxResults = {
            type = "integer",
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
    id = "TimeSeriesSummary",
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
    id = "ListTimeSeriesOutput",
    members = {
        TimeSeriesSummaries = {
            type = "list",
            member = M.TimeSeriesSummary,
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
    id = "PropertyMappingConfiguration",
    members = {
        matchByPropertyName = {
            type = "boolean",
            traits = {
                default = false,
            },
        },
        createMissingProperty = {
            type = "boolean",
            traits = {
                default = false,
            },
        },
        overrides = {
            type = "list",
            member = M.PropertyMapping,
        },
    },
}

M.PutAssetModelInterfaceRelationshipInput = {
    type = "structure",
    id = "PutAssetModelInterfaceRelationshipInput",
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
        propertyMappingConfiguration = setmetatable({ traits = {
            required = true,
        } }, { __index = M.PropertyMappingConfiguration }),
        clientToken = {
            type = "string",
            traits = {
                idempotency_token = true,
            },
        },
    },
}

M.PutAssetModelInterfaceRelationshipOutput = {
    type = "structure",
    id = "PutAssetModelInterfaceRelationshipOutput",
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
        assetModelStatus = setmetatable({ traits = {
            required = true,
        } }, { __index = M.AssetModelStatus }),
    },
}

M.PutDefaultEncryptionConfigurationInput = {
    type = "structure",
    id = "PutDefaultEncryptionConfigurationInput",
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
    id = "PutDefaultEncryptionConfigurationOutput",
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
        configurationStatus = setmetatable({ traits = {
            required = true,
        } }, { __index = M.ConfigurationStatus }),
    },
}

M.PutLoggingOptionsInput = {
    type = "structure",
    id = "PutLoggingOptionsInput",
    members = {
        loggingOptions = setmetatable({ traits = {
            required = true,
        } }, { __index = M.LoggingOptions }),
    },
}

M.PutLoggingOptionsOutput = {
    type = "structure",
    id = "PutLoggingOptionsOutput",
}

M.PutStorageConfigurationInput = {
    type = "structure",
    id = "PutStorageConfigurationInput",
    members = {
        storageType = {
            type = "string",
            traits = {
                required = true,
            },
        },
        multiLayerStorage = M.MultiLayerStorage,
        disassociatedDataStorage = {
            type = "string",
        },
        retentionPeriod = M.RetentionPeriod,
        warmTier = {
            type = "string",
        },
        warmTierRetentionPeriod = M.WarmTierRetentionPeriod,
        disallowIngestNullNaN = {
            type = "boolean",
        },
    },
}

M.PutStorageConfigurationOutput = {
    type = "structure",
    id = "PutStorageConfigurationOutput",
    members = {
        storageType = {
            type = "string",
            traits = {
                required = true,
            },
        },
        multiLayerStorage = M.MultiLayerStorage,
        disassociatedDataStorage = {
            type = "string",
        },
        retentionPeriod = M.RetentionPeriod,
        configurationStatus = setmetatable({ traits = {
            required = true,
        } }, { __index = M.ConfigurationStatus }),
        warmTier = {
            type = "string",
        },
        warmTierRetentionPeriod = M.WarmTierRetentionPeriod,
        disallowIngestNullNaN = {
            type = "boolean",
        },
    },
}

M.TagResourceInput = {
    type = "structure",
    id = "TagResourceInput",
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
        resourceName = {
            type = "string",
        },
    },
}

M.UntagResourceInput = {
    type = "structure",
    id = "UntagResourceInput",
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

M.UpdateAccessPolicyInput = {
    type = "structure",
    id = "UpdateAccessPolicyInput",
    members = {
        accessPolicyId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        accessPolicyIdentity = setmetatable({ traits = {
            required = true,
        } }, { __index = M.Identity }),
        accessPolicyResource = setmetatable({ traits = {
            required = true,
        } }, { __index = M.Resource }),
        accessPolicyPermission = {
            type = "string",
            traits = {
                required = true,
            },
        },
        clientToken = {
            type = "string",
            traits = {
                idempotency_token = true,
            },
        },
    },
}

M.UpdateAccessPolicyOutput = {
    type = "structure",
    id = "UpdateAccessPolicyOutput",
}

M.UpdateAssetInput = {
    type = "structure",
    id = "UpdateAssetInput",
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
            traits = {
                idempotency_token = true,
            },
        },
        assetDescription = {
            type = "string",
        },
    },
}

M.UpdateAssetOutput = {
    type = "structure",
    id = "UpdateAssetOutput",
    members = {
        assetStatus = setmetatable({ traits = {
            required = true,
        } }, { __index = M.AssetStatus }),
    },
}

M.UpdateAssetModelInput = {
    type = "structure",
    id = "UpdateAssetModelInput",
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
            member = M.AssetModelProperty,
        },
        assetModelHierarchies = {
            type = "list",
            member = M.AssetModelHierarchy,
        },
        assetModelCompositeModels = {
            type = "list",
            member = M.AssetModelCompositeModel,
        },
        clientToken = {
            type = "string",
            traits = {
                idempotency_token = true,
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

M.UpdateAssetModelOutput = {
    type = "structure",
    id = "UpdateAssetModelOutput",
    members = {
        assetModelStatus = setmetatable({ traits = {
            required = true,
        } }, { __index = M.AssetModelStatus }),
    },
}

M.UpdateAssetModelCompositeModelInput = {
    type = "structure",
    id = "UpdateAssetModelCompositeModelInput",
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
            traits = {
                idempotency_token = true,
            },
        },
        assetModelCompositeModelProperties = {
            type = "list",
            member = M.AssetModelProperty,
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
    id = "UpdateAssetModelCompositeModelOutput",
    members = {
        assetModelCompositeModelPath = {
            type = "list",
            member = M.AssetModelCompositeModelPathSegment,
            traits = {
                required = true,
            },
        },
        assetModelStatus = setmetatable({ traits = {
            required = true,
        } }, { __index = M.AssetModelStatus }),
    },
}

M.UpdateAssetPropertyInput = {
    type = "structure",
    id = "UpdateAssetPropertyInput",
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
            traits = {
                idempotency_token = true,
            },
        },
        propertyUnit = {
            type = "string",
        },
    },
}

M.UpdateAssetPropertyOutput = {
    type = "structure",
    id = "UpdateAssetPropertyOutput",
}

M.UpdateComputationModelOutput = {
    type = "structure",
    id = "UpdateComputationModelOutput",
    members = {
        computationModelStatus = setmetatable({ traits = {
            required = true,
        } }, { __index = M.ComputationModelStatus }),
    },
}

M.UpdateDashboardInput = {
    type = "structure",
    id = "UpdateDashboardInput",
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
            traits = {
                idempotency_token = true,
            },
        },
    },
}

M.UpdateDashboardOutput = {
    type = "structure",
    id = "UpdateDashboardOutput",
}

M.UpdateDatasetInput = {
    type = "structure",
    id = "UpdateDatasetInput",
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
        datasetSource = setmetatable({ traits = {
            required = true,
        } }, { __index = M.DatasetSource }),
        clientToken = {
            type = "string",
            traits = {
                idempotency_token = true,
            },
        },
    },
}

M.UpdateDatasetOutput = {
    type = "structure",
    id = "UpdateDatasetOutput",
    members = {
        datasetId = {
            type = "string",
        },
        datasetArn = {
            type = "string",
        },
        datasetStatus = M.DatasetStatus,
    },
}

M.UpdateGatewayInput = {
    type = "structure",
    id = "UpdateGatewayInput",
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
    id = "UpdateGatewayOutput",
}

M.UpdateGatewayCapabilityConfigurationInput = {
    type = "structure",
    id = "UpdateGatewayCapabilityConfigurationInput",
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
    id = "UpdateGatewayCapabilityConfigurationOutput",
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
    id = "Image",
    members = {
        id = {
            type = "string",
        },
        file = M.ImageFile,
    },
}

M.UpdatePortalInput = {
    type = "structure",
    id = "UpdatePortalInput",
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
        portalLogoImage = M.Image,
        roleArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        clientToken = {
            type = "string",
            traits = {
                idempotency_token = true,
            },
        },
        notificationSenderEmail = {
            type = "string",
        },
        alarms = M.Alarms,
        portalType = {
            type = "string",
        },
        portalTypeConfiguration = {
            type = "map",
            key = { type = "string" },
            value = M.PortalTypeEntry,
        },
    },
}

M.UpdatePortalOutput = {
    type = "structure",
    id = "UpdatePortalOutput",
    members = {
        portalStatus = setmetatable({ traits = {
            required = true,
        } }, { __index = M.PortalStatus }),
    },
}

M.UpdateProjectInput = {
    type = "structure",
    id = "UpdateProjectInput",
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
            traits = {
                idempotency_token = true,
            },
        },
    },
}

M.UpdateProjectOutput = {
    type = "structure",
    id = "UpdateProjectOutput",
}

M.ComputationModelDataBindingValue = {
    type = "structure",
    id = "ComputationModelDataBindingValue",
    members = {
        assetModelProperty = M.AssetModelPropertyBindingValue,
        assetProperty = M.AssetPropertyBindingValue,
        list = {
            type = "list",
            member = M.ComputationModelDataBindingValue,
        },
    },
}

M.CreateComputationModelInput = {
    type = "structure",
    id = "CreateComputationModelInput",
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
        computationModelConfiguration = setmetatable({ traits = {
            required = true,
        } }, { __index = M.ComputationModelConfiguration }),
        computationModelDataBinding = {
            type = "map",
            key = { type = "string" },
            value = M.ComputationModelDataBindingValue,
            traits = {
                required = true,
            },
        },
        clientToken = {
            type = "string",
            traits = {
                idempotency_token = true,
            },
        },
        tags = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
    },
}

M.DescribeComputationModelOutput = {
    type = "structure",
    id = "DescribeComputationModelOutput",
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
        computationModelConfiguration = setmetatable({ traits = {
            required = true,
        } }, { __index = M.ComputationModelConfiguration }),
        computationModelDataBinding = {
            type = "map",
            key = { type = "string" },
            value = M.ComputationModelDataBindingValue,
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
        computationModelStatus = setmetatable({ traits = {
            required = true,
        } }, { __index = M.ComputationModelStatus }),
        computationModelVersion = {
            type = "string",
            traits = {
                required = true,
            },
        },
        actionDefinitions = {
            type = "list",
            member = M.ActionDefinition,
            traits = {
                required = true,
            },
        },
    },
}

M.UpdateComputationModelInput = {
    type = "structure",
    id = "UpdateComputationModelInput",
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
        computationModelConfiguration = setmetatable({ traits = {
            required = true,
        } }, { __index = M.ComputationModelConfiguration }),
        computationModelDataBinding = {
            type = "map",
            key = { type = "string" },
            value = M.ComputationModelDataBindingValue,
            traits = {
                required = true,
            },
        },
        clientToken = {
            type = "string",
            traits = {
                idempotency_token = true,
            },
        },
    },
}

M.Datum = {
    type = "structure",
    id = "Datum",
    members = {
        scalarValue = {
            type = "string",
        },
        arrayValue = {
            type = "list",
            member = M.Datum,
        },
        rowValue = M.Row,
        nullValue = {
            type = "boolean",
        },
    },
}

M.Row = {
    type = "structure",
    id = "Row",
    members = {
        data = {
            type = "list",
            member = M.Datum,
            traits = {
                required = true,
            },
        },
    },
}

M.ExecuteQueryOutput = {
    type = "structure",
    id = "ExecuteQueryOutput",
    members = {
        columns = {
            type = "list",
            member = M.ColumnInfo,
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

return M
