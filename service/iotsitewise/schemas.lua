local id = require("smithy.shape_id")
local schema = require("smithy.schema")
local prelude = require("smithy.prelude")
local traits = require("smithy.traits")

local _N = "com.amazonaws.iotsitewise"

local M = {}

M.AccessDeniedException = schema.new({
    id = id.from(_N, "AccessDeniedException"),
    type = "structure",
    traits = {
        [traits.ERROR] = { value = "client" },
    },
    members = {
        message = schema.new({
            id = id.from(_N, "AccessDeniedException", "message"),
            type = "string",
            name = "message",
            target_id = prelude.String.id,
        }),
    },
})

M.GroupIdentity = schema.new({
    id = id.from(_N, "GroupIdentity"),
    type = "structure",
    members = {
        id = schema.new({
            id = id.from(_N, "GroupIdentity", "id"),
            type = "string",
            name = "id",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.IAMRoleIdentity = schema.new({
    id = id.from(_N, "IAMRoleIdentity"),
    type = "structure",
    members = {
        arn = schema.new({
            id = id.from(_N, "IAMRoleIdentity", "arn"),
            type = "string",
            name = "arn",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.IAMUserIdentity = schema.new({
    id = id.from(_N, "IAMUserIdentity"),
    type = "structure",
    members = {
        arn = schema.new({
            id = id.from(_N, "IAMUserIdentity", "arn"),
            type = "string",
            name = "arn",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.UserIdentity = schema.new({
    id = id.from(_N, "UserIdentity"),
    type = "structure",
    members = {
        id = schema.new({
            id = id.from(_N, "UserIdentity", "id"),
            type = "string",
            name = "id",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.Identity = schema.new({
    id = id.from(_N, "Identity"),
    type = "structure",
    members = {
        user = schema.new({
            id = id.from(_N, "Identity", "user"),
            type = "structure",
            name = "user",
            target_id = id.from(_N, "UserIdentity"),
            target = M.UserIdentity,
        }),
        group = schema.new({
            id = id.from(_N, "Identity", "group"),
            type = "structure",
            name = "group",
            target_id = id.from(_N, "GroupIdentity"),
            target = M.GroupIdentity,
        }),
        iamUser = schema.new({
            id = id.from(_N, "Identity", "iamUser"),
            type = "structure",
            name = "iamUser",
            target_id = id.from(_N, "IAMUserIdentity"),
            target = M.IAMUserIdentity,
        }),
        iamRole = schema.new({
            id = id.from(_N, "Identity", "iamRole"),
            type = "structure",
            name = "iamRole",
            target_id = id.from(_N, "IAMRoleIdentity"),
            target = M.IAMRoleIdentity,
        }),
    },
})

M.PortalResource = schema.new({
    id = id.from(_N, "PortalResource"),
    type = "structure",
    members = {
        id = schema.new({
            id = id.from(_N, "PortalResource", "id"),
            type = "string",
            name = "id",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.ProjectResource = schema.new({
    id = id.from(_N, "ProjectResource"),
    type = "structure",
    members = {
        id = schema.new({
            id = id.from(_N, "ProjectResource", "id"),
            type = "string",
            name = "id",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.Resource = schema.new({
    id = id.from(_N, "Resource"),
    type = "structure",
    members = {
        portal = schema.new({
            id = id.from(_N, "Resource", "portal"),
            type = "structure",
            name = "portal",
            target_id = id.from(_N, "PortalResource"),
            target = M.PortalResource,
        }),
        project = schema.new({
            id = id.from(_N, "Resource", "project"),
            type = "structure",
            name = "project",
            target_id = id.from(_N, "ProjectResource"),
            target = M.ProjectResource,
        }),
    },
})

M.AccessPolicySummary = schema.new({
    id = id.from(_N, "AccessPolicySummary"),
    type = "structure",
    members = {
        id = schema.new({
            id = id.from(_N, "AccessPolicySummary", "id"),
            type = "string",
            name = "id",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        identity = schema.new({
            id = id.from(_N, "AccessPolicySummary", "identity"),
            type = "structure",
            name = "identity",
            target_id = id.from(_N, "Identity"),
            target = M.Identity,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        resource = schema.new({
            id = id.from(_N, "AccessPolicySummary", "resource"),
            type = "structure",
            name = "resource",
            target_id = id.from(_N, "Resource"),
            target = M.Resource,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        permission = schema.new({
            id = id.from(_N, "AccessPolicySummary", "permission"),
            type = "string",
            name = "permission",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        creationDate = schema.new({
            id = id.from(_N, "AccessPolicySummary", "creationDate"),
            type = "timestamp",
            name = "creationDate",
            target_id = prelude.Timestamp.id,
        }),
        lastUpdateDate = schema.new({
            id = id.from(_N, "AccessPolicySummary", "lastUpdateDate"),
            type = "timestamp",
            name = "lastUpdateDate",
            target_id = prelude.Timestamp.id,
        }),
    },
})

M.ActionDefinition = schema.new({
    id = id.from(_N, "ActionDefinition"),
    type = "structure",
    members = {
        actionDefinitionId = schema.new({
            id = id.from(_N, "ActionDefinition", "actionDefinitionId"),
            type = "string",
            name = "actionDefinitionId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        actionName = schema.new({
            id = id.from(_N, "ActionDefinition", "actionName"),
            type = "string",
            name = "actionName",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        actionType = schema.new({
            id = id.from(_N, "ActionDefinition", "actionType"),
            type = "string",
            name = "actionType",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.ActionPayload = schema.new({
    id = id.from(_N, "ActionPayload"),
    type = "structure",
    members = {
        stringValue = schema.new({
            id = id.from(_N, "ActionPayload", "stringValue"),
            type = "string",
            name = "stringValue",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.ResolveTo = schema.new({
    id = id.from(_N, "ResolveTo"),
    type = "structure",
    members = {
        assetId = schema.new({
            id = id.from(_N, "ResolveTo", "assetId"),
            type = "string",
            name = "assetId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.TargetResource = schema.new({
    id = id.from(_N, "TargetResource"),
    type = "structure",
    members = {
        assetId = schema.new({
            id = id.from(_N, "TargetResource", "assetId"),
            type = "string",
            name = "assetId",
            target_id = prelude.String.id,
        }),
        computationModelId = schema.new({
            id = id.from(_N, "TargetResource", "computationModelId"),
            type = "string",
            name = "computationModelId",
            target_id = prelude.String.id,
        }),
    },
})

M.ActionSummary = schema.new({
    id = id.from(_N, "ActionSummary"),
    type = "structure",
    members = {
        actionId = schema.new({
            id = id.from(_N, "ActionSummary", "actionId"),
            type = "string",
            name = "actionId",
            target_id = prelude.String.id,
        }),
        actionDefinitionId = schema.new({
            id = id.from(_N, "ActionSummary", "actionDefinitionId"),
            type = "string",
            name = "actionDefinitionId",
            target_id = prelude.String.id,
        }),
        targetResource = schema.new({
            id = id.from(_N, "ActionSummary", "targetResource"),
            type = "structure",
            name = "targetResource",
            target_id = id.from(_N, "TargetResource"),
            target = M.TargetResource,
        }),
        resolveTo = schema.new({
            id = id.from(_N, "ActionSummary", "resolveTo"),
            type = "structure",
            name = "resolveTo",
            target_id = id.from(_N, "ResolveTo"),
            target = M.ResolveTo,
        }),
    },
})

M.Aggregates = schema.new({
    id = id.from(_N, "Aggregates"),
    type = "structure",
    members = {
        average = schema.new({
            id = id.from(_N, "Aggregates", "average"),
            type = "double",
            name = "average",
            target_id = prelude.Double.id,
        }),
        count = schema.new({
            id = id.from(_N, "Aggregates", "count"),
            type = "double",
            name = "count",
            target_id = prelude.Double.id,
        }),
        maximum = schema.new({
            id = id.from(_N, "Aggregates", "maximum"),
            type = "double",
            name = "maximum",
            target_id = prelude.Double.id,
        }),
        minimum = schema.new({
            id = id.from(_N, "Aggregates", "minimum"),
            type = "double",
            name = "minimum",
            target_id = prelude.Double.id,
        }),
        sum = schema.new({
            id = id.from(_N, "Aggregates", "sum"),
            type = "double",
            name = "sum",
            target_id = prelude.Double.id,
        }),
        standardDeviation = schema.new({
            id = id.from(_N, "Aggregates", "standardDeviation"),
            type = "double",
            name = "standardDeviation",
            target_id = prelude.Double.id,
        }),
    },
})

M.AggregatedValue = schema.new({
    id = id.from(_N, "AggregatedValue"),
    type = "structure",
    members = {
        timestamp = schema.new({
            id = id.from(_N, "AggregatedValue", "timestamp"),
            type = "timestamp",
            name = "timestamp",
            target_id = prelude.Timestamp.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        quality = schema.new({
            id = id.from(_N, "AggregatedValue", "quality"),
            type = "string",
            name = "quality",
            target_id = prelude.String.id,
        }),
        value = schema.new({
            id = id.from(_N, "AggregatedValue", "value"),
            type = "structure",
            name = "value",
            target_id = id.from(_N, "Aggregates"),
            target = M.Aggregates,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.Alarms = schema.new({
    id = id.from(_N, "Alarms"),
    type = "structure",
    members = {
        alarmRoleArn = schema.new({
            id = id.from(_N, "Alarms", "alarmRoleArn"),
            type = "string",
            name = "alarmRoleArn",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        notificationLambdaArn = schema.new({
            id = id.from(_N, "Alarms", "notificationLambdaArn"),
            type = "string",
            name = "notificationLambdaArn",
            target_id = prelude.String.id,
        }),
    },
})

M.AssetBindingValueFilter = schema.new({
    id = id.from(_N, "AssetBindingValueFilter"),
    type = "structure",
    members = {
        assetId = schema.new({
            id = id.from(_N, "AssetBindingValueFilter", "assetId"),
            type = "string",
            name = "assetId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.PropertyNotification = schema.new({
    id = id.from(_N, "PropertyNotification"),
    type = "structure",
    members = {
        topic = schema.new({
            id = id.from(_N, "PropertyNotification", "topic"),
            type = "string",
            name = "topic",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        state = schema.new({
            id = id.from(_N, "PropertyNotification", "state"),
            type = "string",
            name = "state",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.AssetPropertyPathSegment = schema.new({
    id = id.from(_N, "AssetPropertyPathSegment"),
    type = "structure",
    members = {
        id = schema.new({
            id = id.from(_N, "AssetPropertyPathSegment", "id"),
            type = "string",
            name = "id",
            target_id = prelude.String.id,
        }),
        name = schema.new({
            id = id.from(_N, "AssetPropertyPathSegment", "name"),
            type = "string",
            name = "name",
            target_id = prelude.String.id,
        }),
    },
})

M.AssetProperty = schema.new({
    id = id.from(_N, "AssetProperty"),
    type = "structure",
    members = {
        id = schema.new({
            id = id.from(_N, "AssetProperty", "id"),
            type = "string",
            name = "id",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        externalId = schema.new({
            id = id.from(_N, "AssetProperty", "externalId"),
            type = "string",
            name = "externalId",
            target_id = prelude.String.id,
        }),
        name = schema.new({
            id = id.from(_N, "AssetProperty", "name"),
            type = "string",
            name = "name",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        alias = schema.new({
            id = id.from(_N, "AssetProperty", "alias"),
            type = "string",
            name = "alias",
            target_id = prelude.String.id,
        }),
        notification = schema.new({
            id = id.from(_N, "AssetProperty", "notification"),
            type = "structure",
            name = "notification",
            target_id = id.from(_N, "PropertyNotification"),
            target = M.PropertyNotification,
        }),
        dataType = schema.new({
            id = id.from(_N, "AssetProperty", "dataType"),
            type = "string",
            name = "dataType",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        dataTypeSpec = schema.new({
            id = id.from(_N, "AssetProperty", "dataTypeSpec"),
            type = "string",
            name = "dataTypeSpec",
            target_id = prelude.String.id,
        }),
        unit = schema.new({
            id = id.from(_N, "AssetProperty", "unit"),
            type = "string",
            name = "unit",
            target_id = prelude.String.id,
        }),
        path = schema.new({
            id = id.from(_N, "AssetProperty", "path"),
            type = "list",
            name = "path",
            target_id = prelude.Document.id,
            list_member = M.AssetPropertyPathSegment,
        }),
    },
})

M.AssetCompositeModel = schema.new({
    id = id.from(_N, "AssetCompositeModel"),
    type = "structure",
    members = {
        name = schema.new({
            id = id.from(_N, "AssetCompositeModel", "name"),
            type = "string",
            name = "name",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        description = schema.new({
            id = id.from(_N, "AssetCompositeModel", "description"),
            type = "string",
            name = "description",
            target_id = prelude.String.id,
        }),
        type = schema.new({
            id = id.from(_N, "AssetCompositeModel", "type"),
            type = "string",
            name = "type",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        properties = schema.new({
            id = id.from(_N, "AssetCompositeModel", "properties"),
            type = "list",
            name = "properties",
            target_id = prelude.Document.id,
            list_member = M.AssetProperty,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        id = schema.new({
            id = id.from(_N, "AssetCompositeModel", "id"),
            type = "string",
            name = "id",
            target_id = prelude.String.id,
        }),
        externalId = schema.new({
            id = id.from(_N, "AssetCompositeModel", "externalId"),
            type = "string",
            name = "externalId",
            target_id = prelude.String.id,
        }),
    },
})

M.AssetCompositeModelPathSegment = schema.new({
    id = id.from(_N, "AssetCompositeModelPathSegment"),
    type = "structure",
    members = {
        id = schema.new({
            id = id.from(_N, "AssetCompositeModelPathSegment", "id"),
            type = "string",
            name = "id",
            target_id = prelude.String.id,
        }),
        name = schema.new({
            id = id.from(_N, "AssetCompositeModelPathSegment", "name"),
            type = "string",
            name = "name",
            target_id = prelude.String.id,
        }),
    },
})

M.AssetCompositeModelSummary = schema.new({
    id = id.from(_N, "AssetCompositeModelSummary"),
    type = "structure",
    members = {
        id = schema.new({
            id = id.from(_N, "AssetCompositeModelSummary", "id"),
            type = "string",
            name = "id",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        externalId = schema.new({
            id = id.from(_N, "AssetCompositeModelSummary", "externalId"),
            type = "string",
            name = "externalId",
            target_id = prelude.String.id,
        }),
        name = schema.new({
            id = id.from(_N, "AssetCompositeModelSummary", "name"),
            type = "string",
            name = "name",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        type = schema.new({
            id = id.from(_N, "AssetCompositeModelSummary", "type"),
            type = "string",
            name = "type",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        description = schema.new({
            id = id.from(_N, "AssetCompositeModelSummary", "description"),
            type = "string",
            name = "description",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        path = schema.new({
            id = id.from(_N, "AssetCompositeModelSummary", "path"),
            type = "list",
            name = "path",
            target_id = prelude.Document.id,
            list_member = M.AssetCompositeModelPathSegment,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.AssetErrorDetails = schema.new({
    id = id.from(_N, "AssetErrorDetails"),
    type = "structure",
    members = {
        assetId = schema.new({
            id = id.from(_N, "AssetErrorDetails", "assetId"),
            type = "string",
            name = "assetId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        code = schema.new({
            id = id.from(_N, "AssetErrorDetails", "code"),
            type = "string",
            name = "code",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        message = schema.new({
            id = id.from(_N, "AssetErrorDetails", "message"),
            type = "string",
            name = "message",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.AssetHierarchy = schema.new({
    id = id.from(_N, "AssetHierarchy"),
    type = "structure",
    members = {
        id = schema.new({
            id = id.from(_N, "AssetHierarchy", "id"),
            type = "string",
            name = "id",
            target_id = prelude.String.id,
        }),
        externalId = schema.new({
            id = id.from(_N, "AssetHierarchy", "externalId"),
            type = "string",
            name = "externalId",
            target_id = prelude.String.id,
        }),
        name = schema.new({
            id = id.from(_N, "AssetHierarchy", "name"),
            type = "string",
            name = "name",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.AssetHierarchyInfo = schema.new({
    id = id.from(_N, "AssetHierarchyInfo"),
    type = "structure",
    members = {
        parentAssetId = schema.new({
            id = id.from(_N, "AssetHierarchyInfo", "parentAssetId"),
            type = "string",
            name = "parentAssetId",
            target_id = prelude.String.id,
        }),
        childAssetId = schema.new({
            id = id.from(_N, "AssetHierarchyInfo", "childAssetId"),
            type = "string",
            name = "childAssetId",
            target_id = prelude.String.id,
        }),
    },
})

M.AssetModelBindingValueFilter = schema.new({
    id = id.from(_N, "AssetModelBindingValueFilter"),
    type = "structure",
    members = {
        assetModelId = schema.new({
            id = id.from(_N, "AssetModelBindingValueFilter", "assetModelId"),
            type = "string",
            name = "assetModelId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.AssetModelPropertyPathSegment = schema.new({
    id = id.from(_N, "AssetModelPropertyPathSegment"),
    type = "structure",
    members = {
        id = schema.new({
            id = id.from(_N, "AssetModelPropertyPathSegment", "id"),
            type = "string",
            name = "id",
            target_id = prelude.String.id,
        }),
        name = schema.new({
            id = id.from(_N, "AssetModelPropertyPathSegment", "name"),
            type = "string",
            name = "name",
            target_id = prelude.String.id,
        }),
    },
})

M.Attribute = schema.new({
    id = id.from(_N, "Attribute"),
    type = "structure",
    members = {
        defaultValue = schema.new({
            id = id.from(_N, "Attribute", "defaultValue"),
            type = "string",
            name = "defaultValue",
            target_id = prelude.String.id,
        }),
    },
})

M.ForwardingConfig = schema.new({
    id = id.from(_N, "ForwardingConfig"),
    type = "structure",
    members = {
        state = schema.new({
            id = id.from(_N, "ForwardingConfig", "state"),
            type = "string",
            name = "state",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.MeasurementProcessingConfig = schema.new({
    id = id.from(_N, "MeasurementProcessingConfig"),
    type = "structure",
    members = {
        forwardingConfig = schema.new({
            id = id.from(_N, "MeasurementProcessingConfig", "forwardingConfig"),
            type = "structure",
            name = "forwardingConfig",
            target_id = id.from(_N, "ForwardingConfig"),
            target = M.ForwardingConfig,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.Measurement = schema.new({
    id = id.from(_N, "Measurement"),
    type = "structure",
    members = {
        processingConfig = schema.new({
            id = id.from(_N, "Measurement", "processingConfig"),
            type = "structure",
            name = "processingConfig",
            target_id = id.from(_N, "MeasurementProcessingConfig"),
            target = M.MeasurementProcessingConfig,
        }),
    },
})

M.MetricProcessingConfig = schema.new({
    id = id.from(_N, "MetricProcessingConfig"),
    type = "structure",
    members = {
        computeLocation = schema.new({
            id = id.from(_N, "MetricProcessingConfig", "computeLocation"),
            type = "string",
            name = "computeLocation",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.VariableValue = schema.new({
    id = id.from(_N, "VariableValue"),
    type = "structure",
    members = {
        propertyId = schema.new({
            id = id.from(_N, "VariableValue", "propertyId"),
            type = "string",
            name = "propertyId",
            target_id = prelude.String.id,
        }),
        hierarchyId = schema.new({
            id = id.from(_N, "VariableValue", "hierarchyId"),
            type = "string",
            name = "hierarchyId",
            target_id = prelude.String.id,
        }),
        propertyPath = schema.new({
            id = id.from(_N, "VariableValue", "propertyPath"),
            type = "list",
            name = "propertyPath",
            target_id = prelude.Document.id,
            list_member = M.AssetModelPropertyPathSegment,
        }),
    },
})

M.ExpressionVariable = schema.new({
    id = id.from(_N, "ExpressionVariable"),
    type = "structure",
    members = {
        name = schema.new({
            id = id.from(_N, "ExpressionVariable", "name"),
            type = "string",
            name = "name",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        value = schema.new({
            id = id.from(_N, "ExpressionVariable", "value"),
            type = "structure",
            name = "value",
            target_id = id.from(_N, "VariableValue"),
            target = M.VariableValue,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.TumblingWindow = schema.new({
    id = id.from(_N, "TumblingWindow"),
    type = "structure",
    members = {
        interval = schema.new({
            id = id.from(_N, "TumblingWindow", "interval"),
            type = "string",
            name = "interval",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        offset = schema.new({
            id = id.from(_N, "TumblingWindow", "offset"),
            type = "string",
            name = "offset",
            target_id = prelude.String.id,
        }),
    },
})

M.MetricWindow = schema.new({
    id = id.from(_N, "MetricWindow"),
    type = "structure",
    members = {
        tumbling = schema.new({
            id = id.from(_N, "MetricWindow", "tumbling"),
            type = "structure",
            name = "tumbling",
            target_id = id.from(_N, "TumblingWindow"),
            target = M.TumblingWindow,
        }),
    },
})

M.Metric = schema.new({
    id = id.from(_N, "Metric"),
    type = "structure",
    members = {
        expression = schema.new({
            id = id.from(_N, "Metric", "expression"),
            type = "string",
            name = "expression",
            target_id = prelude.String.id,
            traits = {
                [traits.DEFAULT] = { value = "" },
            },
        }),
        variables = schema.new({
            id = id.from(_N, "Metric", "variables"),
            type = "list",
            name = "variables",
            target_id = prelude.Document.id,
            list_member = M.ExpressionVariable,
            traits = {
                [traits.DEFAULT] = { value = {} },
            },
        }),
        window = schema.new({
            id = id.from(_N, "Metric", "window"),
            type = "structure",
            name = "window",
            target_id = id.from(_N, "MetricWindow"),
            target = M.MetricWindow,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        processingConfig = schema.new({
            id = id.from(_N, "Metric", "processingConfig"),
            type = "structure",
            name = "processingConfig",
            target_id = id.from(_N, "MetricProcessingConfig"),
            target = M.MetricProcessingConfig,
        }),
    },
})

M.TransformProcessingConfig = schema.new({
    id = id.from(_N, "TransformProcessingConfig"),
    type = "structure",
    members = {
        computeLocation = schema.new({
            id = id.from(_N, "TransformProcessingConfig", "computeLocation"),
            type = "string",
            name = "computeLocation",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        forwardingConfig = schema.new({
            id = id.from(_N, "TransformProcessingConfig", "forwardingConfig"),
            type = "structure",
            name = "forwardingConfig",
            target_id = id.from(_N, "ForwardingConfig"),
            target = M.ForwardingConfig,
        }),
    },
})

M.Transform = schema.new({
    id = id.from(_N, "Transform"),
    type = "structure",
    members = {
        expression = schema.new({
            id = id.from(_N, "Transform", "expression"),
            type = "string",
            name = "expression",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        variables = schema.new({
            id = id.from(_N, "Transform", "variables"),
            type = "list",
            name = "variables",
            target_id = prelude.Document.id,
            list_member = M.ExpressionVariable,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        processingConfig = schema.new({
            id = id.from(_N, "Transform", "processingConfig"),
            type = "structure",
            name = "processingConfig",
            target_id = id.from(_N, "TransformProcessingConfig"),
            target = M.TransformProcessingConfig,
        }),
    },
})

M.PropertyType = schema.new({
    id = id.from(_N, "PropertyType"),
    type = "structure",
    members = {
        attribute = schema.new({
            id = id.from(_N, "PropertyType", "attribute"),
            type = "structure",
            name = "attribute",
            target_id = id.from(_N, "Attribute"),
            target = M.Attribute,
        }),
        measurement = schema.new({
            id = id.from(_N, "PropertyType", "measurement"),
            type = "structure",
            name = "measurement",
            target_id = id.from(_N, "Measurement"),
            target = M.Measurement,
        }),
        transform = schema.new({
            id = id.from(_N, "PropertyType", "transform"),
            type = "structure",
            name = "transform",
            target_id = id.from(_N, "Transform"),
            target = M.Transform,
        }),
        metric = schema.new({
            id = id.from(_N, "PropertyType", "metric"),
            type = "structure",
            name = "metric",
            target_id = id.from(_N, "Metric"),
            target = M.Metric,
        }),
    },
})

M.AssetModelProperty = schema.new({
    id = id.from(_N, "AssetModelProperty"),
    type = "structure",
    members = {
        id = schema.new({
            id = id.from(_N, "AssetModelProperty", "id"),
            type = "string",
            name = "id",
            target_id = prelude.String.id,
        }),
        externalId = schema.new({
            id = id.from(_N, "AssetModelProperty", "externalId"),
            type = "string",
            name = "externalId",
            target_id = prelude.String.id,
        }),
        name = schema.new({
            id = id.from(_N, "AssetModelProperty", "name"),
            type = "string",
            name = "name",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        dataType = schema.new({
            id = id.from(_N, "AssetModelProperty", "dataType"),
            type = "string",
            name = "dataType",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        dataTypeSpec = schema.new({
            id = id.from(_N, "AssetModelProperty", "dataTypeSpec"),
            type = "string",
            name = "dataTypeSpec",
            target_id = prelude.String.id,
        }),
        unit = schema.new({
            id = id.from(_N, "AssetModelProperty", "unit"),
            type = "string",
            name = "unit",
            target_id = prelude.String.id,
        }),
        type = schema.new({
            id = id.from(_N, "AssetModelProperty", "type"),
            type = "structure",
            name = "type",
            target_id = id.from(_N, "PropertyType"),
            target = M.PropertyType,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        path = schema.new({
            id = id.from(_N, "AssetModelProperty", "path"),
            type = "list",
            name = "path",
            target_id = prelude.Document.id,
            list_member = M.AssetModelPropertyPathSegment,
        }),
    },
})

M.AssetModelCompositeModel = schema.new({
    id = id.from(_N, "AssetModelCompositeModel"),
    type = "structure",
    members = {
        name = schema.new({
            id = id.from(_N, "AssetModelCompositeModel", "name"),
            type = "string",
            name = "name",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        description = schema.new({
            id = id.from(_N, "AssetModelCompositeModel", "description"),
            type = "string",
            name = "description",
            target_id = prelude.String.id,
        }),
        type = schema.new({
            id = id.from(_N, "AssetModelCompositeModel", "type"),
            type = "string",
            name = "type",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        properties = schema.new({
            id = id.from(_N, "AssetModelCompositeModel", "properties"),
            type = "list",
            name = "properties",
            target_id = prelude.Document.id,
            list_member = M.AssetModelProperty,
        }),
        id = schema.new({
            id = id.from(_N, "AssetModelCompositeModel", "id"),
            type = "string",
            name = "id",
            target_id = prelude.String.id,
        }),
        externalId = schema.new({
            id = id.from(_N, "AssetModelCompositeModel", "externalId"),
            type = "string",
            name = "externalId",
            target_id = prelude.String.id,
        }),
    },
})

M.AssetModelPropertyDefinition = schema.new({
    id = id.from(_N, "AssetModelPropertyDefinition"),
    type = "structure",
    members = {
        id = schema.new({
            id = id.from(_N, "AssetModelPropertyDefinition", "id"),
            type = "string",
            name = "id",
            target_id = prelude.String.id,
        }),
        externalId = schema.new({
            id = id.from(_N, "AssetModelPropertyDefinition", "externalId"),
            type = "string",
            name = "externalId",
            target_id = prelude.String.id,
        }),
        name = schema.new({
            id = id.from(_N, "AssetModelPropertyDefinition", "name"),
            type = "string",
            name = "name",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        dataType = schema.new({
            id = id.from(_N, "AssetModelPropertyDefinition", "dataType"),
            type = "string",
            name = "dataType",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        dataTypeSpec = schema.new({
            id = id.from(_N, "AssetModelPropertyDefinition", "dataTypeSpec"),
            type = "string",
            name = "dataTypeSpec",
            target_id = prelude.String.id,
        }),
        unit = schema.new({
            id = id.from(_N, "AssetModelPropertyDefinition", "unit"),
            type = "string",
            name = "unit",
            target_id = prelude.String.id,
        }),
        type = schema.new({
            id = id.from(_N, "AssetModelPropertyDefinition", "type"),
            type = "structure",
            name = "type",
            target_id = id.from(_N, "PropertyType"),
            target = M.PropertyType,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.AssetModelCompositeModelDefinition = schema.new({
    id = id.from(_N, "AssetModelCompositeModelDefinition"),
    type = "structure",
    members = {
        id = schema.new({
            id = id.from(_N, "AssetModelCompositeModelDefinition", "id"),
            type = "string",
            name = "id",
            target_id = prelude.String.id,
        }),
        externalId = schema.new({
            id = id.from(_N, "AssetModelCompositeModelDefinition", "externalId"),
            type = "string",
            name = "externalId",
            target_id = prelude.String.id,
        }),
        name = schema.new({
            id = id.from(_N, "AssetModelCompositeModelDefinition", "name"),
            type = "string",
            name = "name",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        description = schema.new({
            id = id.from(_N, "AssetModelCompositeModelDefinition", "description"),
            type = "string",
            name = "description",
            target_id = prelude.String.id,
        }),
        type = schema.new({
            id = id.from(_N, "AssetModelCompositeModelDefinition", "type"),
            type = "string",
            name = "type",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        properties = schema.new({
            id = id.from(_N, "AssetModelCompositeModelDefinition", "properties"),
            type = "list",
            name = "properties",
            target_id = prelude.Document.id,
            list_member = M.AssetModelPropertyDefinition,
        }),
    },
})

M.AssetModelCompositeModelPathSegment = schema.new({
    id = id.from(_N, "AssetModelCompositeModelPathSegment"),
    type = "structure",
    members = {
        id = schema.new({
            id = id.from(_N, "AssetModelCompositeModelPathSegment", "id"),
            type = "string",
            name = "id",
            target_id = prelude.String.id,
        }),
        name = schema.new({
            id = id.from(_N, "AssetModelCompositeModelPathSegment", "name"),
            type = "string",
            name = "name",
            target_id = prelude.String.id,
        }),
    },
})

M.AssetModelCompositeModelSummary = schema.new({
    id = id.from(_N, "AssetModelCompositeModelSummary"),
    type = "structure",
    members = {
        id = schema.new({
            id = id.from(_N, "AssetModelCompositeModelSummary", "id"),
            type = "string",
            name = "id",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        externalId = schema.new({
            id = id.from(_N, "AssetModelCompositeModelSummary", "externalId"),
            type = "string",
            name = "externalId",
            target_id = prelude.String.id,
        }),
        name = schema.new({
            id = id.from(_N, "AssetModelCompositeModelSummary", "name"),
            type = "string",
            name = "name",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        type = schema.new({
            id = id.from(_N, "AssetModelCompositeModelSummary", "type"),
            type = "string",
            name = "type",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        description = schema.new({
            id = id.from(_N, "AssetModelCompositeModelSummary", "description"),
            type = "string",
            name = "description",
            target_id = prelude.String.id,
        }),
        path = schema.new({
            id = id.from(_N, "AssetModelCompositeModelSummary", "path"),
            type = "list",
            name = "path",
            target_id = prelude.Document.id,
            list_member = M.AssetModelCompositeModelPathSegment,
        }),
    },
})

M.AssetModelHierarchy = schema.new({
    id = id.from(_N, "AssetModelHierarchy"),
    type = "structure",
    members = {
        id = schema.new({
            id = id.from(_N, "AssetModelHierarchy", "id"),
            type = "string",
            name = "id",
            target_id = prelude.String.id,
        }),
        externalId = schema.new({
            id = id.from(_N, "AssetModelHierarchy", "externalId"),
            type = "string",
            name = "externalId",
            target_id = prelude.String.id,
        }),
        name = schema.new({
            id = id.from(_N, "AssetModelHierarchy", "name"),
            type = "string",
            name = "name",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        childAssetModelId = schema.new({
            id = id.from(_N, "AssetModelHierarchy", "childAssetModelId"),
            type = "string",
            name = "childAssetModelId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.AssetModelHierarchyDefinition = schema.new({
    id = id.from(_N, "AssetModelHierarchyDefinition"),
    type = "structure",
    members = {
        id = schema.new({
            id = id.from(_N, "AssetModelHierarchyDefinition", "id"),
            type = "string",
            name = "id",
            target_id = prelude.String.id,
        }),
        externalId = schema.new({
            id = id.from(_N, "AssetModelHierarchyDefinition", "externalId"),
            type = "string",
            name = "externalId",
            target_id = prelude.String.id,
        }),
        name = schema.new({
            id = id.from(_N, "AssetModelHierarchyDefinition", "name"),
            type = "string",
            name = "name",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        childAssetModelId = schema.new({
            id = id.from(_N, "AssetModelHierarchyDefinition", "childAssetModelId"),
            type = "string",
            name = "childAssetModelId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.AssetModelPropertyBindingValue = schema.new({
    id = id.from(_N, "AssetModelPropertyBindingValue"),
    type = "structure",
    members = {
        assetModelId = schema.new({
            id = id.from(_N, "AssetModelPropertyBindingValue", "assetModelId"),
            type = "string",
            name = "assetModelId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        propertyId = schema.new({
            id = id.from(_N, "AssetModelPropertyBindingValue", "propertyId"),
            type = "string",
            name = "propertyId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.AssetModelPropertyBindingValueFilter = schema.new({
    id = id.from(_N, "AssetModelPropertyBindingValueFilter"),
    type = "structure",
    members = {
        assetModelId = schema.new({
            id = id.from(_N, "AssetModelPropertyBindingValueFilter", "assetModelId"),
            type = "string",
            name = "assetModelId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        propertyId = schema.new({
            id = id.from(_N, "AssetModelPropertyBindingValueFilter", "propertyId"),
            type = "string",
            name = "propertyId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.InterfaceSummary = schema.new({
    id = id.from(_N, "InterfaceSummary"),
    type = "structure",
    members = {
        interfaceAssetModelId = schema.new({
            id = id.from(_N, "InterfaceSummary", "interfaceAssetModelId"),
            type = "string",
            name = "interfaceAssetModelId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        interfaceAssetModelPropertyId = schema.new({
            id = id.from(_N, "InterfaceSummary", "interfaceAssetModelPropertyId"),
            type = "string",
            name = "interfaceAssetModelPropertyId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.AssetModelPropertySummary = schema.new({
    id = id.from(_N, "AssetModelPropertySummary"),
    type = "structure",
    members = {
        id = schema.new({
            id = id.from(_N, "AssetModelPropertySummary", "id"),
            type = "string",
            name = "id",
            target_id = prelude.String.id,
        }),
        externalId = schema.new({
            id = id.from(_N, "AssetModelPropertySummary", "externalId"),
            type = "string",
            name = "externalId",
            target_id = prelude.String.id,
        }),
        name = schema.new({
            id = id.from(_N, "AssetModelPropertySummary", "name"),
            type = "string",
            name = "name",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        dataType = schema.new({
            id = id.from(_N, "AssetModelPropertySummary", "dataType"),
            type = "string",
            name = "dataType",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        dataTypeSpec = schema.new({
            id = id.from(_N, "AssetModelPropertySummary", "dataTypeSpec"),
            type = "string",
            name = "dataTypeSpec",
            target_id = prelude.String.id,
        }),
        unit = schema.new({
            id = id.from(_N, "AssetModelPropertySummary", "unit"),
            type = "string",
            name = "unit",
            target_id = prelude.String.id,
        }),
        type = schema.new({
            id = id.from(_N, "AssetModelPropertySummary", "type"),
            type = "structure",
            name = "type",
            target_id = id.from(_N, "PropertyType"),
            target = M.PropertyType,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        assetModelCompositeModelId = schema.new({
            id = id.from(_N, "AssetModelPropertySummary", "assetModelCompositeModelId"),
            type = "string",
            name = "assetModelCompositeModelId",
            target_id = prelude.String.id,
        }),
        path = schema.new({
            id = id.from(_N, "AssetModelPropertySummary", "path"),
            type = "list",
            name = "path",
            target_id = prelude.Document.id,
            list_member = M.AssetModelPropertyPathSegment,
        }),
        interfaceSummaries = schema.new({
            id = id.from(_N, "AssetModelPropertySummary", "interfaceSummaries"),
            type = "list",
            name = "interfaceSummaries",
            target_id = prelude.Document.id,
            list_member = M.InterfaceSummary,
        }),
    },
})

M.DetailedError = schema.new({
    id = id.from(_N, "DetailedError"),
    type = "structure",
    members = {
        code = schema.new({
            id = id.from(_N, "DetailedError", "code"),
            type = "string",
            name = "code",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        message = schema.new({
            id = id.from(_N, "DetailedError", "message"),
            type = "string",
            name = "message",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.ErrorDetails = schema.new({
    id = id.from(_N, "ErrorDetails"),
    type = "structure",
    members = {
        code = schema.new({
            id = id.from(_N, "ErrorDetails", "code"),
            type = "string",
            name = "code",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        message = schema.new({
            id = id.from(_N, "ErrorDetails", "message"),
            type = "string",
            name = "message",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        details = schema.new({
            id = id.from(_N, "ErrorDetails", "details"),
            type = "list",
            name = "details",
            target_id = prelude.Document.id,
            list_member = M.DetailedError,
        }),
    },
})

M.AssetModelStatus = schema.new({
    id = id.from(_N, "AssetModelStatus"),
    type = "structure",
    members = {
        state = schema.new({
            id = id.from(_N, "AssetModelStatus", "state"),
            type = "string",
            name = "state",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        error = schema.new({
            id = id.from(_N, "AssetModelStatus", "error"),
            type = "structure",
            name = "error",
            target_id = id.from(_N, "ErrorDetails"),
            target = M.ErrorDetails,
        }),
    },
})

M.AssetModelSummary = schema.new({
    id = id.from(_N, "AssetModelSummary"),
    type = "structure",
    members = {
        id = schema.new({
            id = id.from(_N, "AssetModelSummary", "id"),
            type = "string",
            name = "id",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        externalId = schema.new({
            id = id.from(_N, "AssetModelSummary", "externalId"),
            type = "string",
            name = "externalId",
            target_id = prelude.String.id,
        }),
        arn = schema.new({
            id = id.from(_N, "AssetModelSummary", "arn"),
            type = "string",
            name = "arn",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        name = schema.new({
            id = id.from(_N, "AssetModelSummary", "name"),
            type = "string",
            name = "name",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        assetModelType = schema.new({
            id = id.from(_N, "AssetModelSummary", "assetModelType"),
            type = "string",
            name = "assetModelType",
            target_id = prelude.String.id,
        }),
        description = schema.new({
            id = id.from(_N, "AssetModelSummary", "description"),
            type = "string",
            name = "description",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        creationDate = schema.new({
            id = id.from(_N, "AssetModelSummary", "creationDate"),
            type = "timestamp",
            name = "creationDate",
            target_id = prelude.Timestamp.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        lastUpdateDate = schema.new({
            id = id.from(_N, "AssetModelSummary", "lastUpdateDate"),
            type = "timestamp",
            name = "lastUpdateDate",
            target_id = prelude.Timestamp.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        status = schema.new({
            id = id.from(_N, "AssetModelSummary", "status"),
            type = "structure",
            name = "status",
            target_id = id.from(_N, "AssetModelStatus"),
            target = M.AssetModelStatus,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        version = schema.new({
            id = id.from(_N, "AssetModelSummary", "version"),
            type = "string",
            name = "version",
            target_id = prelude.String.id,
        }),
    },
})

M.AssetPropertyBindingValue = schema.new({
    id = id.from(_N, "AssetPropertyBindingValue"),
    type = "structure",
    members = {
        assetId = schema.new({
            id = id.from(_N, "AssetPropertyBindingValue", "assetId"),
            type = "string",
            name = "assetId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        propertyId = schema.new({
            id = id.from(_N, "AssetPropertyBindingValue", "propertyId"),
            type = "string",
            name = "propertyId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.AssetPropertyBindingValueFilter = schema.new({
    id = id.from(_N, "AssetPropertyBindingValueFilter"),
    type = "structure",
    members = {
        assetId = schema.new({
            id = id.from(_N, "AssetPropertyBindingValueFilter", "assetId"),
            type = "string",
            name = "assetId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        propertyId = schema.new({
            id = id.from(_N, "AssetPropertyBindingValueFilter", "propertyId"),
            type = "string",
            name = "propertyId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.AssetPropertySummary = schema.new({
    id = id.from(_N, "AssetPropertySummary"),
    type = "structure",
    members = {
        id = schema.new({
            id = id.from(_N, "AssetPropertySummary", "id"),
            type = "string",
            name = "id",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        externalId = schema.new({
            id = id.from(_N, "AssetPropertySummary", "externalId"),
            type = "string",
            name = "externalId",
            target_id = prelude.String.id,
        }),
        alias = schema.new({
            id = id.from(_N, "AssetPropertySummary", "alias"),
            type = "string",
            name = "alias",
            target_id = prelude.String.id,
        }),
        unit = schema.new({
            id = id.from(_N, "AssetPropertySummary", "unit"),
            type = "string",
            name = "unit",
            target_id = prelude.String.id,
        }),
        notification = schema.new({
            id = id.from(_N, "AssetPropertySummary", "notification"),
            type = "structure",
            name = "notification",
            target_id = id.from(_N, "PropertyNotification"),
            target = M.PropertyNotification,
        }),
        assetCompositeModelId = schema.new({
            id = id.from(_N, "AssetPropertySummary", "assetCompositeModelId"),
            type = "string",
            name = "assetCompositeModelId",
            target_id = prelude.String.id,
        }),
        path = schema.new({
            id = id.from(_N, "AssetPropertySummary", "path"),
            type = "list",
            name = "path",
            target_id = prelude.Document.id,
            list_member = M.AssetPropertyPathSegment,
        }),
    },
})

M.TimeInNanos = schema.new({
    id = id.from(_N, "TimeInNanos"),
    type = "structure",
    members = {
        timeInSeconds = schema.new({
            id = id.from(_N, "TimeInNanos", "timeInSeconds"),
            type = "long",
            name = "timeInSeconds",
            target_id = prelude.Long.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        offsetInNanos = schema.new({
            id = id.from(_N, "TimeInNanos", "offsetInNanos"),
            type = "integer",
            name = "offsetInNanos",
            target_id = prelude.Integer.id,
        }),
    },
})

M.PropertyValueNullValue = schema.new({
    id = id.from(_N, "PropertyValueNullValue"),
    type = "structure",
    members = {
        valueType = schema.new({
            id = id.from(_N, "PropertyValueNullValue", "valueType"),
            type = "string",
            name = "valueType",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.Variant = schema.new({
    id = id.from(_N, "Variant"),
    type = "structure",
    members = {
        stringValue = schema.new({
            id = id.from(_N, "Variant", "stringValue"),
            type = "string",
            name = "stringValue",
            target_id = prelude.String.id,
        }),
        integerValue = schema.new({
            id = id.from(_N, "Variant", "integerValue"),
            type = "integer",
            name = "integerValue",
            target_id = prelude.Integer.id,
        }),
        doubleValue = schema.new({
            id = id.from(_N, "Variant", "doubleValue"),
            type = "double",
            name = "doubleValue",
            target_id = prelude.Double.id,
        }),
        booleanValue = schema.new({
            id = id.from(_N, "Variant", "booleanValue"),
            type = "boolean",
            name = "booleanValue",
            target_id = prelude.Boolean.id,
        }),
        nullValue = schema.new({
            id = id.from(_N, "Variant", "nullValue"),
            type = "structure",
            name = "nullValue",
            target_id = id.from(_N, "PropertyValueNullValue"),
            target = M.PropertyValueNullValue,
        }),
    },
})

M.AssetPropertyValue = schema.new({
    id = id.from(_N, "AssetPropertyValue"),
    type = "structure",
    members = {
        value = schema.new({
            id = id.from(_N, "AssetPropertyValue", "value"),
            type = "structure",
            name = "value",
            target_id = id.from(_N, "Variant"),
            target = M.Variant,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        timestamp = schema.new({
            id = id.from(_N, "AssetPropertyValue", "timestamp"),
            type = "structure",
            name = "timestamp",
            target_id = id.from(_N, "TimeInNanos"),
            target = M.TimeInNanos,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        quality = schema.new({
            id = id.from(_N, "AssetPropertyValue", "quality"),
            type = "string",
            name = "quality",
            target_id = prelude.String.id,
        }),
    },
})

M.AssetRelationshipSummary = schema.new({
    id = id.from(_N, "AssetRelationshipSummary"),
    type = "structure",
    members = {
        hierarchyInfo = schema.new({
            id = id.from(_N, "AssetRelationshipSummary", "hierarchyInfo"),
            type = "structure",
            name = "hierarchyInfo",
            target_id = id.from(_N, "AssetHierarchyInfo"),
            target = M.AssetHierarchyInfo,
        }),
        relationshipType = schema.new({
            id = id.from(_N, "AssetRelationshipSummary", "relationshipType"),
            type = "string",
            name = "relationshipType",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.AssetStatus = schema.new({
    id = id.from(_N, "AssetStatus"),
    type = "structure",
    members = {
        state = schema.new({
            id = id.from(_N, "AssetStatus", "state"),
            type = "string",
            name = "state",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        error = schema.new({
            id = id.from(_N, "AssetStatus", "error"),
            type = "structure",
            name = "error",
            target_id = id.from(_N, "ErrorDetails"),
            target = M.ErrorDetails,
        }),
    },
})

M.AssetSummary = schema.new({
    id = id.from(_N, "AssetSummary"),
    type = "structure",
    members = {
        id = schema.new({
            id = id.from(_N, "AssetSummary", "id"),
            type = "string",
            name = "id",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        externalId = schema.new({
            id = id.from(_N, "AssetSummary", "externalId"),
            type = "string",
            name = "externalId",
            target_id = prelude.String.id,
        }),
        arn = schema.new({
            id = id.from(_N, "AssetSummary", "arn"),
            type = "string",
            name = "arn",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        name = schema.new({
            id = id.from(_N, "AssetSummary", "name"),
            type = "string",
            name = "name",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        assetModelId = schema.new({
            id = id.from(_N, "AssetSummary", "assetModelId"),
            type = "string",
            name = "assetModelId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        creationDate = schema.new({
            id = id.from(_N, "AssetSummary", "creationDate"),
            type = "timestamp",
            name = "creationDate",
            target_id = prelude.Timestamp.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        lastUpdateDate = schema.new({
            id = id.from(_N, "AssetSummary", "lastUpdateDate"),
            type = "timestamp",
            name = "lastUpdateDate",
            target_id = prelude.Timestamp.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        status = schema.new({
            id = id.from(_N, "AssetSummary", "status"),
            type = "structure",
            name = "status",
            target_id = id.from(_N, "AssetStatus"),
            target = M.AssetStatus,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        hierarchies = schema.new({
            id = id.from(_N, "AssetSummary", "hierarchies"),
            type = "list",
            name = "hierarchies",
            target_id = prelude.Document.id,
            list_member = M.AssetHierarchy,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        description = schema.new({
            id = id.from(_N, "AssetSummary", "description"),
            type = "string",
            name = "description",
            target_id = prelude.String.id,
        }),
    },
})

M.AssociateAssetsInput = schema.new({
    id = id.from(_N, "AssociateAssetsRequest"),
    type = "structure",
    members = {
        assetId = schema.new({
            id = id.from(_N, "AssociateAssetsInput", "assetId"),
            type = "string",
            name = "assetId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
        hierarchyId = schema.new({
            id = id.from(_N, "AssociateAssetsInput", "hierarchyId"),
            type = "string",
            name = "hierarchyId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        childAssetId = schema.new({
            id = id.from(_N, "AssociateAssetsInput", "childAssetId"),
            type = "string",
            name = "childAssetId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        clientToken = schema.new({
            id = id.from(_N, "AssociateAssetsInput", "clientToken"),
            type = "string",
            name = "clientToken",
            target_id = prelude.String.id,
            traits = {
                [traits.IDEMPOTENCY_TOKEN] = {},
            },
        }),
    },
})

M.AssociateAssetsOutput = schema.new({
    id = id.from(_N, "Unit"),
    type = "structure",
})

M.ConflictingOperationException = schema.new({
    id = id.from(_N, "ConflictingOperationException"),
    type = "structure",
    traits = {
        [traits.ERROR] = { value = "client" },
    },
    members = {
        message = schema.new({
            id = id.from(_N, "ConflictingOperationException", "message"),
            type = "string",
            name = "message",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        resourceId = schema.new({
            id = id.from(_N, "ConflictingOperationException", "resourceId"),
            type = "string",
            name = "resourceId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        resourceArn = schema.new({
            id = id.from(_N, "ConflictingOperationException", "resourceArn"),
            type = "string",
            name = "resourceArn",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.InternalFailureException = schema.new({
    id = id.from(_N, "InternalFailureException"),
    type = "structure",
    traits = {
        [traits.ERROR] = { value = "server" },
    },
    members = {
        message = schema.new({
            id = id.from(_N, "InternalFailureException", "message"),
            type = "string",
            name = "message",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.InvalidRequestException = schema.new({
    id = id.from(_N, "InvalidRequestException"),
    type = "structure",
    traits = {
        [traits.ERROR] = { value = "client" },
    },
    members = {
        message = schema.new({
            id = id.from(_N, "InvalidRequestException", "message"),
            type = "string",
            name = "message",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.LimitExceededException = schema.new({
    id = id.from(_N, "LimitExceededException"),
    type = "structure",
    traits = {
        [traits.ERROR] = { value = "client" },
    },
    members = {
        message = schema.new({
            id = id.from(_N, "LimitExceededException", "message"),
            type = "string",
            name = "message",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.ResourceAlreadyExistsException = schema.new({
    id = id.from(_N, "ResourceAlreadyExistsException"),
    type = "structure",
    traits = {
        [traits.ERROR] = { value = "client" },
    },
    members = {
        message = schema.new({
            id = id.from(_N, "ResourceAlreadyExistsException", "message"),
            type = "string",
            name = "message",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        resourceId = schema.new({
            id = id.from(_N, "ResourceAlreadyExistsException", "resourceId"),
            type = "string",
            name = "resourceId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        resourceArn = schema.new({
            id = id.from(_N, "ResourceAlreadyExistsException", "resourceArn"),
            type = "string",
            name = "resourceArn",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.ResourceNotFoundException = schema.new({
    id = id.from(_N, "ResourceNotFoundException"),
    type = "structure",
    traits = {
        [traits.ERROR] = { value = "client" },
    },
    members = {
        message = schema.new({
            id = id.from(_N, "ResourceNotFoundException", "message"),
            type = "string",
            name = "message",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.ThrottlingException = schema.new({
    id = id.from(_N, "ThrottlingException"),
    type = "structure",
    traits = {
        [traits.ERROR] = { value = "client" },
    },
    members = {
        message = schema.new({
            id = id.from(_N, "ThrottlingException", "message"),
            type = "string",
            name = "message",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.AssociatedAssetsSummary = schema.new({
    id = id.from(_N, "AssociatedAssetsSummary"),
    type = "structure",
    members = {
        id = schema.new({
            id = id.from(_N, "AssociatedAssetsSummary", "id"),
            type = "string",
            name = "id",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        externalId = schema.new({
            id = id.from(_N, "AssociatedAssetsSummary", "externalId"),
            type = "string",
            name = "externalId",
            target_id = prelude.String.id,
        }),
        arn = schema.new({
            id = id.from(_N, "AssociatedAssetsSummary", "arn"),
            type = "string",
            name = "arn",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        name = schema.new({
            id = id.from(_N, "AssociatedAssetsSummary", "name"),
            type = "string",
            name = "name",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        assetModelId = schema.new({
            id = id.from(_N, "AssociatedAssetsSummary", "assetModelId"),
            type = "string",
            name = "assetModelId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        creationDate = schema.new({
            id = id.from(_N, "AssociatedAssetsSummary", "creationDate"),
            type = "timestamp",
            name = "creationDate",
            target_id = prelude.Timestamp.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        lastUpdateDate = schema.new({
            id = id.from(_N, "AssociatedAssetsSummary", "lastUpdateDate"),
            type = "timestamp",
            name = "lastUpdateDate",
            target_id = prelude.Timestamp.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        status = schema.new({
            id = id.from(_N, "AssociatedAssetsSummary", "status"),
            type = "structure",
            name = "status",
            target_id = id.from(_N, "AssetStatus"),
            target = M.AssetStatus,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        hierarchies = schema.new({
            id = id.from(_N, "AssociatedAssetsSummary", "hierarchies"),
            type = "list",
            name = "hierarchies",
            target_id = prelude.Document.id,
            list_member = M.AssetHierarchy,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        description = schema.new({
            id = id.from(_N, "AssociatedAssetsSummary", "description"),
            type = "string",
            name = "description",
            target_id = prelude.String.id,
        }),
    },
})

M.AssociateTimeSeriesToAssetPropertyInput = schema.new({
    id = id.from(_N, "AssociateTimeSeriesToAssetPropertyRequest"),
    type = "structure",
    members = {
        alias = schema.new({
            id = id.from(_N, "AssociateTimeSeriesToAssetPropertyInput", "alias"),
            type = "string",
            name = "alias",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_QUERY] = { name = "alias" },
            },
        }),
        assetId = schema.new({
            id = id.from(_N, "AssociateTimeSeriesToAssetPropertyInput", "assetId"),
            type = "string",
            name = "assetId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_QUERY] = { name = "assetId" },
            },
        }),
        propertyId = schema.new({
            id = id.from(_N, "AssociateTimeSeriesToAssetPropertyInput", "propertyId"),
            type = "string",
            name = "propertyId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_QUERY] = { name = "propertyId" },
            },
        }),
        clientToken = schema.new({
            id = id.from(_N, "AssociateTimeSeriesToAssetPropertyInput", "clientToken"),
            type = "string",
            name = "clientToken",
            target_id = prelude.String.id,
            traits = {
                [traits.IDEMPOTENCY_TOKEN] = {},
            },
        }),
    },
})

M.AssociateTimeSeriesToAssetPropertyOutput = schema.new({
    id = id.from(_N, "Unit"),
    type = "structure",
})

M.BatchAssociateProjectAssetsInput = schema.new({
    id = id.from(_N, "BatchAssociateProjectAssetsRequest"),
    type = "structure",
    members = {
        projectId = schema.new({
            id = id.from(_N, "BatchAssociateProjectAssetsInput", "projectId"),
            type = "string",
            name = "projectId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
        assetIds = schema.new({
            id = id.from(_N, "BatchAssociateProjectAssetsInput", "assetIds"),
            type = "list",
            name = "assetIds",
            target_id = prelude.Document.id,
            list_member = prelude.String,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        clientToken = schema.new({
            id = id.from(_N, "BatchAssociateProjectAssetsInput", "clientToken"),
            type = "string",
            name = "clientToken",
            target_id = prelude.String.id,
            traits = {
                [traits.IDEMPOTENCY_TOKEN] = {},
            },
        }),
    },
})

M.BatchAssociateProjectAssetsOutput = schema.new({
    id = id.from(_N, "BatchAssociateProjectAssetsResponse"),
    type = "structure",
    members = {
        errors = schema.new({
            id = id.from(_N, "BatchAssociateProjectAssetsOutput", "errors"),
            type = "list",
            name = "errors",
            target_id = prelude.Document.id,
            list_member = M.AssetErrorDetails,
        }),
    },
})

M.BatchDisassociateProjectAssetsInput = schema.new({
    id = id.from(_N, "BatchDisassociateProjectAssetsRequest"),
    type = "structure",
    members = {
        projectId = schema.new({
            id = id.from(_N, "BatchDisassociateProjectAssetsInput", "projectId"),
            type = "string",
            name = "projectId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
        assetIds = schema.new({
            id = id.from(_N, "BatchDisassociateProjectAssetsInput", "assetIds"),
            type = "list",
            name = "assetIds",
            target_id = prelude.Document.id,
            list_member = prelude.String,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        clientToken = schema.new({
            id = id.from(_N, "BatchDisassociateProjectAssetsInput", "clientToken"),
            type = "string",
            name = "clientToken",
            target_id = prelude.String.id,
            traits = {
                [traits.IDEMPOTENCY_TOKEN] = {},
            },
        }),
    },
})

M.BatchDisassociateProjectAssetsOutput = schema.new({
    id = id.from(_N, "BatchDisassociateProjectAssetsResponse"),
    type = "structure",
    members = {
        errors = schema.new({
            id = id.from(_N, "BatchDisassociateProjectAssetsOutput", "errors"),
            type = "list",
            name = "errors",
            target_id = prelude.Document.id,
            list_member = M.AssetErrorDetails,
        }),
    },
})

M.BatchGetAssetPropertyAggregatesEntry = schema.new({
    id = id.from(_N, "BatchGetAssetPropertyAggregatesEntry"),
    type = "structure",
    members = {
        entryId = schema.new({
            id = id.from(_N, "BatchGetAssetPropertyAggregatesEntry", "entryId"),
            type = "string",
            name = "entryId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        assetId = schema.new({
            id = id.from(_N, "BatchGetAssetPropertyAggregatesEntry", "assetId"),
            type = "string",
            name = "assetId",
            target_id = prelude.String.id,
        }),
        propertyId = schema.new({
            id = id.from(_N, "BatchGetAssetPropertyAggregatesEntry", "propertyId"),
            type = "string",
            name = "propertyId",
            target_id = prelude.String.id,
        }),
        propertyAlias = schema.new({
            id = id.from(_N, "BatchGetAssetPropertyAggregatesEntry", "propertyAlias"),
            type = "string",
            name = "propertyAlias",
            target_id = prelude.String.id,
        }),
        aggregateTypes = schema.new({
            id = id.from(_N, "BatchGetAssetPropertyAggregatesEntry", "aggregateTypes"),
            type = "list",
            name = "aggregateTypes",
            target_id = prelude.Document.id,
            list_member = prelude.String,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        resolution = schema.new({
            id = id.from(_N, "BatchGetAssetPropertyAggregatesEntry", "resolution"),
            type = "string",
            name = "resolution",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        startDate = schema.new({
            id = id.from(_N, "BatchGetAssetPropertyAggregatesEntry", "startDate"),
            type = "timestamp",
            name = "startDate",
            target_id = prelude.Timestamp.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        endDate = schema.new({
            id = id.from(_N, "BatchGetAssetPropertyAggregatesEntry", "endDate"),
            type = "timestamp",
            name = "endDate",
            target_id = prelude.Timestamp.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        qualities = schema.new({
            id = id.from(_N, "BatchGetAssetPropertyAggregatesEntry", "qualities"),
            type = "list",
            name = "qualities",
            target_id = prelude.Document.id,
            list_member = prelude.String,
        }),
        timeOrdering = schema.new({
            id = id.from(_N, "BatchGetAssetPropertyAggregatesEntry", "timeOrdering"),
            type = "string",
            name = "timeOrdering",
            target_id = prelude.String.id,
        }),
    },
})

M.BatchGetAssetPropertyAggregatesInput = schema.new({
    id = id.from(_N, "BatchGetAssetPropertyAggregatesRequest"),
    type = "structure",
    members = {
        entries = schema.new({
            id = id.from(_N, "BatchGetAssetPropertyAggregatesInput", "entries"),
            type = "list",
            name = "entries",
            target_id = prelude.Document.id,
            list_member = M.BatchGetAssetPropertyAggregatesEntry,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        nextToken = schema.new({
            id = id.from(_N, "BatchGetAssetPropertyAggregatesInput", "nextToken"),
            type = "string",
            name = "nextToken",
            target_id = prelude.String.id,
        }),
        maxResults = schema.new({
            id = id.from(_N, "BatchGetAssetPropertyAggregatesInput", "maxResults"),
            type = "integer",
            name = "maxResults",
            target_id = prelude.Integer.id,
        }),
    },
})

M.BatchGetAssetPropertyAggregatesErrorEntry = schema.new({
    id = id.from(_N, "BatchGetAssetPropertyAggregatesErrorEntry"),
    type = "structure",
    members = {
        errorCode = schema.new({
            id = id.from(_N, "BatchGetAssetPropertyAggregatesErrorEntry", "errorCode"),
            type = "string",
            name = "errorCode",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        errorMessage = schema.new({
            id = id.from(_N, "BatchGetAssetPropertyAggregatesErrorEntry", "errorMessage"),
            type = "string",
            name = "errorMessage",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        entryId = schema.new({
            id = id.from(_N, "BatchGetAssetPropertyAggregatesErrorEntry", "entryId"),
            type = "string",
            name = "entryId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.BatchGetAssetPropertyAggregatesErrorInfo = schema.new({
    id = id.from(_N, "BatchGetAssetPropertyAggregatesErrorInfo"),
    type = "structure",
    members = {
        errorCode = schema.new({
            id = id.from(_N, "BatchGetAssetPropertyAggregatesErrorInfo", "errorCode"),
            type = "string",
            name = "errorCode",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        errorTimestamp = schema.new({
            id = id.from(_N, "BatchGetAssetPropertyAggregatesErrorInfo", "errorTimestamp"),
            type = "timestamp",
            name = "errorTimestamp",
            target_id = prelude.Timestamp.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.BatchGetAssetPropertyAggregatesSkippedEntry = schema.new({
    id = id.from(_N, "BatchGetAssetPropertyAggregatesSkippedEntry"),
    type = "structure",
    members = {
        entryId = schema.new({
            id = id.from(_N, "BatchGetAssetPropertyAggregatesSkippedEntry", "entryId"),
            type = "string",
            name = "entryId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        completionStatus = schema.new({
            id = id.from(_N, "BatchGetAssetPropertyAggregatesSkippedEntry", "completionStatus"),
            type = "string",
            name = "completionStatus",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        errorInfo = schema.new({
            id = id.from(_N, "BatchGetAssetPropertyAggregatesSkippedEntry", "errorInfo"),
            type = "structure",
            name = "errorInfo",
            target_id = id.from(_N, "BatchGetAssetPropertyAggregatesErrorInfo"),
            target = M.BatchGetAssetPropertyAggregatesErrorInfo,
        }),
    },
})

M.BatchGetAssetPropertyAggregatesSuccessEntry = schema.new({
    id = id.from(_N, "BatchGetAssetPropertyAggregatesSuccessEntry"),
    type = "structure",
    members = {
        entryId = schema.new({
            id = id.from(_N, "BatchGetAssetPropertyAggregatesSuccessEntry", "entryId"),
            type = "string",
            name = "entryId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        aggregatedValues = schema.new({
            id = id.from(_N, "BatchGetAssetPropertyAggregatesSuccessEntry", "aggregatedValues"),
            type = "list",
            name = "aggregatedValues",
            target_id = prelude.Document.id,
            list_member = M.AggregatedValue,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.BatchGetAssetPropertyAggregatesOutput = schema.new({
    id = id.from(_N, "BatchGetAssetPropertyAggregatesResponse"),
    type = "structure",
    members = {
        errorEntries = schema.new({
            id = id.from(_N, "BatchGetAssetPropertyAggregatesOutput", "errorEntries"),
            type = "list",
            name = "errorEntries",
            target_id = prelude.Document.id,
            list_member = M.BatchGetAssetPropertyAggregatesErrorEntry,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        successEntries = schema.new({
            id = id.from(_N, "BatchGetAssetPropertyAggregatesOutput", "successEntries"),
            type = "list",
            name = "successEntries",
            target_id = prelude.Document.id,
            list_member = M.BatchGetAssetPropertyAggregatesSuccessEntry,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        skippedEntries = schema.new({
            id = id.from(_N, "BatchGetAssetPropertyAggregatesOutput", "skippedEntries"),
            type = "list",
            name = "skippedEntries",
            target_id = prelude.Document.id,
            list_member = M.BatchGetAssetPropertyAggregatesSkippedEntry,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        nextToken = schema.new({
            id = id.from(_N, "BatchGetAssetPropertyAggregatesOutput", "nextToken"),
            type = "string",
            name = "nextToken",
            target_id = prelude.String.id,
        }),
    },
})

M.ServiceUnavailableException = schema.new({
    id = id.from(_N, "ServiceUnavailableException"),
    type = "structure",
    traits = {
        [traits.ERROR] = { value = "server" },
    },
    members = {
        message = schema.new({
            id = id.from(_N, "ServiceUnavailableException", "message"),
            type = "string",
            name = "message",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.BatchGetAssetPropertyValueEntry = schema.new({
    id = id.from(_N, "BatchGetAssetPropertyValueEntry"),
    type = "structure",
    members = {
        entryId = schema.new({
            id = id.from(_N, "BatchGetAssetPropertyValueEntry", "entryId"),
            type = "string",
            name = "entryId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        assetId = schema.new({
            id = id.from(_N, "BatchGetAssetPropertyValueEntry", "assetId"),
            type = "string",
            name = "assetId",
            target_id = prelude.String.id,
        }),
        propertyId = schema.new({
            id = id.from(_N, "BatchGetAssetPropertyValueEntry", "propertyId"),
            type = "string",
            name = "propertyId",
            target_id = prelude.String.id,
        }),
        propertyAlias = schema.new({
            id = id.from(_N, "BatchGetAssetPropertyValueEntry", "propertyAlias"),
            type = "string",
            name = "propertyAlias",
            target_id = prelude.String.id,
        }),
    },
})

M.BatchGetAssetPropertyValueInput = schema.new({
    id = id.from(_N, "BatchGetAssetPropertyValueRequest"),
    type = "structure",
    members = {
        entries = schema.new({
            id = id.from(_N, "BatchGetAssetPropertyValueInput", "entries"),
            type = "list",
            name = "entries",
            target_id = prelude.Document.id,
            list_member = M.BatchGetAssetPropertyValueEntry,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        nextToken = schema.new({
            id = id.from(_N, "BatchGetAssetPropertyValueInput", "nextToken"),
            type = "string",
            name = "nextToken",
            target_id = prelude.String.id,
        }),
    },
})

M.BatchGetAssetPropertyValueErrorEntry = schema.new({
    id = id.from(_N, "BatchGetAssetPropertyValueErrorEntry"),
    type = "structure",
    members = {
        errorCode = schema.new({
            id = id.from(_N, "BatchGetAssetPropertyValueErrorEntry", "errorCode"),
            type = "string",
            name = "errorCode",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        errorMessage = schema.new({
            id = id.from(_N, "BatchGetAssetPropertyValueErrorEntry", "errorMessage"),
            type = "string",
            name = "errorMessage",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        entryId = schema.new({
            id = id.from(_N, "BatchGetAssetPropertyValueErrorEntry", "entryId"),
            type = "string",
            name = "entryId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.BatchGetAssetPropertyValueErrorInfo = schema.new({
    id = id.from(_N, "BatchGetAssetPropertyValueErrorInfo"),
    type = "structure",
    members = {
        errorCode = schema.new({
            id = id.from(_N, "BatchGetAssetPropertyValueErrorInfo", "errorCode"),
            type = "string",
            name = "errorCode",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        errorTimestamp = schema.new({
            id = id.from(_N, "BatchGetAssetPropertyValueErrorInfo", "errorTimestamp"),
            type = "timestamp",
            name = "errorTimestamp",
            target_id = prelude.Timestamp.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.BatchGetAssetPropertyValueSkippedEntry = schema.new({
    id = id.from(_N, "BatchGetAssetPropertyValueSkippedEntry"),
    type = "structure",
    members = {
        entryId = schema.new({
            id = id.from(_N, "BatchGetAssetPropertyValueSkippedEntry", "entryId"),
            type = "string",
            name = "entryId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        completionStatus = schema.new({
            id = id.from(_N, "BatchGetAssetPropertyValueSkippedEntry", "completionStatus"),
            type = "string",
            name = "completionStatus",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        errorInfo = schema.new({
            id = id.from(_N, "BatchGetAssetPropertyValueSkippedEntry", "errorInfo"),
            type = "structure",
            name = "errorInfo",
            target_id = id.from(_N, "BatchGetAssetPropertyValueErrorInfo"),
            target = M.BatchGetAssetPropertyValueErrorInfo,
        }),
    },
})

M.BatchGetAssetPropertyValueSuccessEntry = schema.new({
    id = id.from(_N, "BatchGetAssetPropertyValueSuccessEntry"),
    type = "structure",
    members = {
        entryId = schema.new({
            id = id.from(_N, "BatchGetAssetPropertyValueSuccessEntry", "entryId"),
            type = "string",
            name = "entryId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        assetPropertyValue = schema.new({
            id = id.from(_N, "BatchGetAssetPropertyValueSuccessEntry", "assetPropertyValue"),
            type = "structure",
            name = "assetPropertyValue",
            target_id = id.from(_N, "AssetPropertyValue"),
            target = M.AssetPropertyValue,
        }),
    },
})

M.BatchGetAssetPropertyValueOutput = schema.new({
    id = id.from(_N, "BatchGetAssetPropertyValueResponse"),
    type = "structure",
    members = {
        errorEntries = schema.new({
            id = id.from(_N, "BatchGetAssetPropertyValueOutput", "errorEntries"),
            type = "list",
            name = "errorEntries",
            target_id = prelude.Document.id,
            list_member = M.BatchGetAssetPropertyValueErrorEntry,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        successEntries = schema.new({
            id = id.from(_N, "BatchGetAssetPropertyValueOutput", "successEntries"),
            type = "list",
            name = "successEntries",
            target_id = prelude.Document.id,
            list_member = M.BatchGetAssetPropertyValueSuccessEntry,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        skippedEntries = schema.new({
            id = id.from(_N, "BatchGetAssetPropertyValueOutput", "skippedEntries"),
            type = "list",
            name = "skippedEntries",
            target_id = prelude.Document.id,
            list_member = M.BatchGetAssetPropertyValueSkippedEntry,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        nextToken = schema.new({
            id = id.from(_N, "BatchGetAssetPropertyValueOutput", "nextToken"),
            type = "string",
            name = "nextToken",
            target_id = prelude.String.id,
        }),
    },
})

M.BatchGetAssetPropertyValueHistoryEntry = schema.new({
    id = id.from(_N, "BatchGetAssetPropertyValueHistoryEntry"),
    type = "structure",
    members = {
        entryId = schema.new({
            id = id.from(_N, "BatchGetAssetPropertyValueHistoryEntry", "entryId"),
            type = "string",
            name = "entryId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        assetId = schema.new({
            id = id.from(_N, "BatchGetAssetPropertyValueHistoryEntry", "assetId"),
            type = "string",
            name = "assetId",
            target_id = prelude.String.id,
        }),
        propertyId = schema.new({
            id = id.from(_N, "BatchGetAssetPropertyValueHistoryEntry", "propertyId"),
            type = "string",
            name = "propertyId",
            target_id = prelude.String.id,
        }),
        propertyAlias = schema.new({
            id = id.from(_N, "BatchGetAssetPropertyValueHistoryEntry", "propertyAlias"),
            type = "string",
            name = "propertyAlias",
            target_id = prelude.String.id,
        }),
        startDate = schema.new({
            id = id.from(_N, "BatchGetAssetPropertyValueHistoryEntry", "startDate"),
            type = "timestamp",
            name = "startDate",
            target_id = prelude.Timestamp.id,
        }),
        endDate = schema.new({
            id = id.from(_N, "BatchGetAssetPropertyValueHistoryEntry", "endDate"),
            type = "timestamp",
            name = "endDate",
            target_id = prelude.Timestamp.id,
        }),
        qualities = schema.new({
            id = id.from(_N, "BatchGetAssetPropertyValueHistoryEntry", "qualities"),
            type = "list",
            name = "qualities",
            target_id = prelude.Document.id,
            list_member = prelude.String,
        }),
        timeOrdering = schema.new({
            id = id.from(_N, "BatchGetAssetPropertyValueHistoryEntry", "timeOrdering"),
            type = "string",
            name = "timeOrdering",
            target_id = prelude.String.id,
        }),
    },
})

M.BatchGetAssetPropertyValueHistoryInput = schema.new({
    id = id.from(_N, "BatchGetAssetPropertyValueHistoryRequest"),
    type = "structure",
    members = {
        entries = schema.new({
            id = id.from(_N, "BatchGetAssetPropertyValueHistoryInput", "entries"),
            type = "list",
            name = "entries",
            target_id = prelude.Document.id,
            list_member = M.BatchGetAssetPropertyValueHistoryEntry,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        nextToken = schema.new({
            id = id.from(_N, "BatchGetAssetPropertyValueHistoryInput", "nextToken"),
            type = "string",
            name = "nextToken",
            target_id = prelude.String.id,
        }),
        maxResults = schema.new({
            id = id.from(_N, "BatchGetAssetPropertyValueHistoryInput", "maxResults"),
            type = "integer",
            name = "maxResults",
            target_id = prelude.Integer.id,
        }),
    },
})

M.BatchGetAssetPropertyValueHistoryErrorEntry = schema.new({
    id = id.from(_N, "BatchGetAssetPropertyValueHistoryErrorEntry"),
    type = "structure",
    members = {
        errorCode = schema.new({
            id = id.from(_N, "BatchGetAssetPropertyValueHistoryErrorEntry", "errorCode"),
            type = "string",
            name = "errorCode",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        errorMessage = schema.new({
            id = id.from(_N, "BatchGetAssetPropertyValueHistoryErrorEntry", "errorMessage"),
            type = "string",
            name = "errorMessage",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        entryId = schema.new({
            id = id.from(_N, "BatchGetAssetPropertyValueHistoryErrorEntry", "entryId"),
            type = "string",
            name = "entryId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.BatchGetAssetPropertyValueHistoryErrorInfo = schema.new({
    id = id.from(_N, "BatchGetAssetPropertyValueHistoryErrorInfo"),
    type = "structure",
    members = {
        errorCode = schema.new({
            id = id.from(_N, "BatchGetAssetPropertyValueHistoryErrorInfo", "errorCode"),
            type = "string",
            name = "errorCode",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        errorTimestamp = schema.new({
            id = id.from(_N, "BatchGetAssetPropertyValueHistoryErrorInfo", "errorTimestamp"),
            type = "timestamp",
            name = "errorTimestamp",
            target_id = prelude.Timestamp.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.BatchGetAssetPropertyValueHistorySkippedEntry = schema.new({
    id = id.from(_N, "BatchGetAssetPropertyValueHistorySkippedEntry"),
    type = "structure",
    members = {
        entryId = schema.new({
            id = id.from(_N, "BatchGetAssetPropertyValueHistorySkippedEntry", "entryId"),
            type = "string",
            name = "entryId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        completionStatus = schema.new({
            id = id.from(_N, "BatchGetAssetPropertyValueHistorySkippedEntry", "completionStatus"),
            type = "string",
            name = "completionStatus",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        errorInfo = schema.new({
            id = id.from(_N, "BatchGetAssetPropertyValueHistorySkippedEntry", "errorInfo"),
            type = "structure",
            name = "errorInfo",
            target_id = id.from(_N, "BatchGetAssetPropertyValueHistoryErrorInfo"),
            target = M.BatchGetAssetPropertyValueHistoryErrorInfo,
        }),
    },
})

M.BatchGetAssetPropertyValueHistorySuccessEntry = schema.new({
    id = id.from(_N, "BatchGetAssetPropertyValueHistorySuccessEntry"),
    type = "structure",
    members = {
        entryId = schema.new({
            id = id.from(_N, "BatchGetAssetPropertyValueHistorySuccessEntry", "entryId"),
            type = "string",
            name = "entryId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        assetPropertyValueHistory = schema.new({
            id = id.from(_N, "BatchGetAssetPropertyValueHistorySuccessEntry", "assetPropertyValueHistory"),
            type = "list",
            name = "assetPropertyValueHistory",
            target_id = prelude.Document.id,
            list_member = M.AssetPropertyValue,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.BatchGetAssetPropertyValueHistoryOutput = schema.new({
    id = id.from(_N, "BatchGetAssetPropertyValueHistoryResponse"),
    type = "structure",
    members = {
        errorEntries = schema.new({
            id = id.from(_N, "BatchGetAssetPropertyValueHistoryOutput", "errorEntries"),
            type = "list",
            name = "errorEntries",
            target_id = prelude.Document.id,
            list_member = M.BatchGetAssetPropertyValueHistoryErrorEntry,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        successEntries = schema.new({
            id = id.from(_N, "BatchGetAssetPropertyValueHistoryOutput", "successEntries"),
            type = "list",
            name = "successEntries",
            target_id = prelude.Document.id,
            list_member = M.BatchGetAssetPropertyValueHistorySuccessEntry,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        skippedEntries = schema.new({
            id = id.from(_N, "BatchGetAssetPropertyValueHistoryOutput", "skippedEntries"),
            type = "list",
            name = "skippedEntries",
            target_id = prelude.Document.id,
            list_member = M.BatchGetAssetPropertyValueHistorySkippedEntry,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        nextToken = schema.new({
            id = id.from(_N, "BatchGetAssetPropertyValueHistoryOutput", "nextToken"),
            type = "string",
            name = "nextToken",
            target_id = prelude.String.id,
        }),
    },
})

M.PutAssetPropertyValueEntry = schema.new({
    id = id.from(_N, "PutAssetPropertyValueEntry"),
    type = "structure",
    members = {
        entryId = schema.new({
            id = id.from(_N, "PutAssetPropertyValueEntry", "entryId"),
            type = "string",
            name = "entryId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        assetId = schema.new({
            id = id.from(_N, "PutAssetPropertyValueEntry", "assetId"),
            type = "string",
            name = "assetId",
            target_id = prelude.String.id,
        }),
        propertyId = schema.new({
            id = id.from(_N, "PutAssetPropertyValueEntry", "propertyId"),
            type = "string",
            name = "propertyId",
            target_id = prelude.String.id,
        }),
        propertyAlias = schema.new({
            id = id.from(_N, "PutAssetPropertyValueEntry", "propertyAlias"),
            type = "string",
            name = "propertyAlias",
            target_id = prelude.String.id,
        }),
        propertyValues = schema.new({
            id = id.from(_N, "PutAssetPropertyValueEntry", "propertyValues"),
            type = "list",
            name = "propertyValues",
            target_id = prelude.Document.id,
            list_member = M.AssetPropertyValue,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.BatchPutAssetPropertyValueInput = schema.new({
    id = id.from(_N, "BatchPutAssetPropertyValueRequest"),
    type = "structure",
    members = {
        enablePartialEntryProcessing = schema.new({
            id = id.from(_N, "BatchPutAssetPropertyValueInput", "enablePartialEntryProcessing"),
            type = "boolean",
            name = "enablePartialEntryProcessing",
            target_id = prelude.Boolean.id,
        }),
        entries = schema.new({
            id = id.from(_N, "BatchPutAssetPropertyValueInput", "entries"),
            type = "list",
            name = "entries",
            target_id = prelude.Document.id,
            list_member = M.PutAssetPropertyValueEntry,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.BatchPutAssetPropertyError = schema.new({
    id = id.from(_N, "BatchPutAssetPropertyError"),
    type = "structure",
    members = {
        errorCode = schema.new({
            id = id.from(_N, "BatchPutAssetPropertyError", "errorCode"),
            type = "string",
            name = "errorCode",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        errorMessage = schema.new({
            id = id.from(_N, "BatchPutAssetPropertyError", "errorMessage"),
            type = "string",
            name = "errorMessage",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        timestamps = schema.new({
            id = id.from(_N, "BatchPutAssetPropertyError", "timestamps"),
            type = "list",
            name = "timestamps",
            target_id = prelude.Document.id,
            list_member = M.TimeInNanos,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.BatchPutAssetPropertyErrorEntry = schema.new({
    id = id.from(_N, "BatchPutAssetPropertyErrorEntry"),
    type = "structure",
    members = {
        entryId = schema.new({
            id = id.from(_N, "BatchPutAssetPropertyErrorEntry", "entryId"),
            type = "string",
            name = "entryId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        errors = schema.new({
            id = id.from(_N, "BatchPutAssetPropertyErrorEntry", "errors"),
            type = "list",
            name = "errors",
            target_id = prelude.Document.id,
            list_member = M.BatchPutAssetPropertyError,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.BatchPutAssetPropertyValueOutput = schema.new({
    id = id.from(_N, "BatchPutAssetPropertyValueResponse"),
    type = "structure",
    members = {
        errorEntries = schema.new({
            id = id.from(_N, "BatchPutAssetPropertyValueOutput", "errorEntries"),
            type = "list",
            name = "errorEntries",
            target_id = prelude.Document.id,
            list_member = M.BatchPutAssetPropertyErrorEntry,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.CreateAccessPolicyInput = schema.new({
    id = id.from(_N, "CreateAccessPolicyRequest"),
    type = "structure",
    members = {
        accessPolicyIdentity = schema.new({
            id = id.from(_N, "CreateAccessPolicyInput", "accessPolicyIdentity"),
            type = "structure",
            name = "accessPolicyIdentity",
            target_id = id.from(_N, "Identity"),
            target = M.Identity,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        accessPolicyResource = schema.new({
            id = id.from(_N, "CreateAccessPolicyInput", "accessPolicyResource"),
            type = "structure",
            name = "accessPolicyResource",
            target_id = id.from(_N, "Resource"),
            target = M.Resource,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        accessPolicyPermission = schema.new({
            id = id.from(_N, "CreateAccessPolicyInput", "accessPolicyPermission"),
            type = "string",
            name = "accessPolicyPermission",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        clientToken = schema.new({
            id = id.from(_N, "CreateAccessPolicyInput", "clientToken"),
            type = "string",
            name = "clientToken",
            target_id = prelude.String.id,
            traits = {
                [traits.IDEMPOTENCY_TOKEN] = {},
            },
        }),
        tags = schema.new({
            id = id.from(_N, "CreateAccessPolicyInput", "tags"),
            type = "map",
            name = "tags",
            target_id = prelude.Document.id,
            map_key = prelude.String,
            map_value = prelude.String,
        }),
    },
})

M.CreateAccessPolicyOutput = schema.new({
    id = id.from(_N, "CreateAccessPolicyResponse"),
    type = "structure",
    members = {
        accessPolicyId = schema.new({
            id = id.from(_N, "CreateAccessPolicyOutput", "accessPolicyId"),
            type = "string",
            name = "accessPolicyId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        accessPolicyArn = schema.new({
            id = id.from(_N, "CreateAccessPolicyOutput", "accessPolicyArn"),
            type = "string",
            name = "accessPolicyArn",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.CreateAssetInput = schema.new({
    id = id.from(_N, "CreateAssetRequest"),
    type = "structure",
    members = {
        assetName = schema.new({
            id = id.from(_N, "CreateAssetInput", "assetName"),
            type = "string",
            name = "assetName",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        assetModelId = schema.new({
            id = id.from(_N, "CreateAssetInput", "assetModelId"),
            type = "string",
            name = "assetModelId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        assetId = schema.new({
            id = id.from(_N, "CreateAssetInput", "assetId"),
            type = "string",
            name = "assetId",
            target_id = prelude.String.id,
        }),
        assetExternalId = schema.new({
            id = id.from(_N, "CreateAssetInput", "assetExternalId"),
            type = "string",
            name = "assetExternalId",
            target_id = prelude.String.id,
        }),
        clientToken = schema.new({
            id = id.from(_N, "CreateAssetInput", "clientToken"),
            type = "string",
            name = "clientToken",
            target_id = prelude.String.id,
            traits = {
                [traits.IDEMPOTENCY_TOKEN] = {},
            },
        }),
        tags = schema.new({
            id = id.from(_N, "CreateAssetInput", "tags"),
            type = "map",
            name = "tags",
            target_id = prelude.Document.id,
            map_key = prelude.String,
            map_value = prelude.String,
        }),
        assetDescription = schema.new({
            id = id.from(_N, "CreateAssetInput", "assetDescription"),
            type = "string",
            name = "assetDescription",
            target_id = prelude.String.id,
        }),
    },
})

M.CreateAssetOutput = schema.new({
    id = id.from(_N, "CreateAssetResponse"),
    type = "structure",
    members = {
        assetId = schema.new({
            id = id.from(_N, "CreateAssetOutput", "assetId"),
            type = "string",
            name = "assetId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        assetArn = schema.new({
            id = id.from(_N, "CreateAssetOutput", "assetArn"),
            type = "string",
            name = "assetArn",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        assetStatus = schema.new({
            id = id.from(_N, "CreateAssetOutput", "assetStatus"),
            type = "structure",
            name = "assetStatus",
            target_id = id.from(_N, "AssetStatus"),
            target = M.AssetStatus,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.CreateAssetModelInput = schema.new({
    id = id.from(_N, "CreateAssetModelRequest"),
    type = "structure",
    members = {
        assetModelName = schema.new({
            id = id.from(_N, "CreateAssetModelInput", "assetModelName"),
            type = "string",
            name = "assetModelName",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        assetModelType = schema.new({
            id = id.from(_N, "CreateAssetModelInput", "assetModelType"),
            type = "string",
            name = "assetModelType",
            target_id = prelude.String.id,
        }),
        assetModelId = schema.new({
            id = id.from(_N, "CreateAssetModelInput", "assetModelId"),
            type = "string",
            name = "assetModelId",
            target_id = prelude.String.id,
        }),
        assetModelExternalId = schema.new({
            id = id.from(_N, "CreateAssetModelInput", "assetModelExternalId"),
            type = "string",
            name = "assetModelExternalId",
            target_id = prelude.String.id,
        }),
        assetModelDescription = schema.new({
            id = id.from(_N, "CreateAssetModelInput", "assetModelDescription"),
            type = "string",
            name = "assetModelDescription",
            target_id = prelude.String.id,
        }),
        assetModelProperties = schema.new({
            id = id.from(_N, "CreateAssetModelInput", "assetModelProperties"),
            type = "list",
            name = "assetModelProperties",
            target_id = prelude.Document.id,
            list_member = M.AssetModelPropertyDefinition,
        }),
        assetModelHierarchies = schema.new({
            id = id.from(_N, "CreateAssetModelInput", "assetModelHierarchies"),
            type = "list",
            name = "assetModelHierarchies",
            target_id = prelude.Document.id,
            list_member = M.AssetModelHierarchyDefinition,
        }),
        assetModelCompositeModels = schema.new({
            id = id.from(_N, "CreateAssetModelInput", "assetModelCompositeModels"),
            type = "list",
            name = "assetModelCompositeModels",
            target_id = prelude.Document.id,
            list_member = M.AssetModelCompositeModelDefinition,
        }),
        clientToken = schema.new({
            id = id.from(_N, "CreateAssetModelInput", "clientToken"),
            type = "string",
            name = "clientToken",
            target_id = prelude.String.id,
            traits = {
                [traits.IDEMPOTENCY_TOKEN] = {},
            },
        }),
        tags = schema.new({
            id = id.from(_N, "CreateAssetModelInput", "tags"),
            type = "map",
            name = "tags",
            target_id = prelude.Document.id,
            map_key = prelude.String,
            map_value = prelude.String,
        }),
    },
})

M.CreateAssetModelOutput = schema.new({
    id = id.from(_N, "CreateAssetModelResponse"),
    type = "structure",
    members = {
        assetModelId = schema.new({
            id = id.from(_N, "CreateAssetModelOutput", "assetModelId"),
            type = "string",
            name = "assetModelId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        assetModelArn = schema.new({
            id = id.from(_N, "CreateAssetModelOutput", "assetModelArn"),
            type = "string",
            name = "assetModelArn",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        assetModelStatus = schema.new({
            id = id.from(_N, "CreateAssetModelOutput", "assetModelStatus"),
            type = "structure",
            name = "assetModelStatus",
            target_id = id.from(_N, "AssetModelStatus"),
            target = M.AssetModelStatus,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.CreateAssetModelCompositeModelInput = schema.new({
    id = id.from(_N, "CreateAssetModelCompositeModelRequest"),
    type = "structure",
    members = {
        assetModelId = schema.new({
            id = id.from(_N, "CreateAssetModelCompositeModelInput", "assetModelId"),
            type = "string",
            name = "assetModelId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
        assetModelCompositeModelExternalId = schema.new({
            id = id.from(_N, "CreateAssetModelCompositeModelInput", "assetModelCompositeModelExternalId"),
            type = "string",
            name = "assetModelCompositeModelExternalId",
            target_id = prelude.String.id,
        }),
        parentAssetModelCompositeModelId = schema.new({
            id = id.from(_N, "CreateAssetModelCompositeModelInput", "parentAssetModelCompositeModelId"),
            type = "string",
            name = "parentAssetModelCompositeModelId",
            target_id = prelude.String.id,
        }),
        assetModelCompositeModelId = schema.new({
            id = id.from(_N, "CreateAssetModelCompositeModelInput", "assetModelCompositeModelId"),
            type = "string",
            name = "assetModelCompositeModelId",
            target_id = prelude.String.id,
        }),
        assetModelCompositeModelDescription = schema.new({
            id = id.from(_N, "CreateAssetModelCompositeModelInput", "assetModelCompositeModelDescription"),
            type = "string",
            name = "assetModelCompositeModelDescription",
            target_id = prelude.String.id,
        }),
        assetModelCompositeModelName = schema.new({
            id = id.from(_N, "CreateAssetModelCompositeModelInput", "assetModelCompositeModelName"),
            type = "string",
            name = "assetModelCompositeModelName",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        assetModelCompositeModelType = schema.new({
            id = id.from(_N, "CreateAssetModelCompositeModelInput", "assetModelCompositeModelType"),
            type = "string",
            name = "assetModelCompositeModelType",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        clientToken = schema.new({
            id = id.from(_N, "CreateAssetModelCompositeModelInput", "clientToken"),
            type = "string",
            name = "clientToken",
            target_id = prelude.String.id,
            traits = {
                [traits.IDEMPOTENCY_TOKEN] = {},
            },
        }),
        composedAssetModelId = schema.new({
            id = id.from(_N, "CreateAssetModelCompositeModelInput", "composedAssetModelId"),
            type = "string",
            name = "composedAssetModelId",
            target_id = prelude.String.id,
        }),
        assetModelCompositeModelProperties = schema.new({
            id = id.from(_N, "CreateAssetModelCompositeModelInput", "assetModelCompositeModelProperties"),
            type = "list",
            name = "assetModelCompositeModelProperties",
            target_id = prelude.Document.id,
            list_member = M.AssetModelPropertyDefinition,
        }),
        ifMatch = schema.new({
            id = id.from(_N, "CreateAssetModelCompositeModelInput", "ifMatch"),
            type = "string",
            name = "ifMatch",
            target_id = prelude.String.id,
            traits = {
                [traits.HTTP_HEADER] = { name = "If-Match" },
            },
        }),
        ifNoneMatch = schema.new({
            id = id.from(_N, "CreateAssetModelCompositeModelInput", "ifNoneMatch"),
            type = "string",
            name = "ifNoneMatch",
            target_id = prelude.String.id,
            traits = {
                [traits.HTTP_HEADER] = { name = "If-None-Match" },
            },
        }),
        matchForVersionType = schema.new({
            id = id.from(_N, "CreateAssetModelCompositeModelInput", "matchForVersionType"),
            type = "string",
            name = "matchForVersionType",
            target_id = prelude.String.id,
            traits = {
                [traits.HTTP_HEADER] = { name = "Match-For-Version-Type" },
            },
        }),
    },
})

M.CreateAssetModelCompositeModelOutput = schema.new({
    id = id.from(_N, "CreateAssetModelCompositeModelResponse"),
    type = "structure",
    members = {
        assetModelCompositeModelId = schema.new({
            id = id.from(_N, "CreateAssetModelCompositeModelOutput", "assetModelCompositeModelId"),
            type = "string",
            name = "assetModelCompositeModelId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        assetModelCompositeModelPath = schema.new({
            id = id.from(_N, "CreateAssetModelCompositeModelOutput", "assetModelCompositeModelPath"),
            type = "list",
            name = "assetModelCompositeModelPath",
            target_id = prelude.Document.id,
            list_member = M.AssetModelCompositeModelPathSegment,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        assetModelStatus = schema.new({
            id = id.from(_N, "CreateAssetModelCompositeModelOutput", "assetModelStatus"),
            type = "structure",
            name = "assetModelStatus",
            target_id = id.from(_N, "AssetModelStatus"),
            target = M.AssetModelStatus,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.PreconditionFailedException = schema.new({
    id = id.from(_N, "PreconditionFailedException"),
    type = "structure",
    traits = {
        [traits.ERROR] = { value = "client" },
    },
    members = {
        message = schema.new({
            id = id.from(_N, "PreconditionFailedException", "message"),
            type = "string",
            name = "message",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        resourceId = schema.new({
            id = id.from(_N, "PreconditionFailedException", "resourceId"),
            type = "string",
            name = "resourceId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        resourceArn = schema.new({
            id = id.from(_N, "PreconditionFailedException", "resourceArn"),
            type = "string",
            name = "resourceArn",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.ErrorReportLocation = schema.new({
    id = id.from(_N, "ErrorReportLocation"),
    type = "structure",
    members = {
        bucket = schema.new({
            id = id.from(_N, "ErrorReportLocation", "bucket"),
            type = "string",
            name = "bucket",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        prefix = schema.new({
            id = id.from(_N, "ErrorReportLocation", "prefix"),
            type = "string",
            name = "prefix",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.File = schema.new({
    id = id.from(_N, "File"),
    type = "structure",
    members = {
        bucket = schema.new({
            id = id.from(_N, "File", "bucket"),
            type = "string",
            name = "bucket",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        key = schema.new({
            id = id.from(_N, "File", "key"),
            type = "string",
            name = "key",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        versionId = schema.new({
            id = id.from(_N, "File", "versionId"),
            type = "string",
            name = "versionId",
            target_id = prelude.String.id,
        }),
    },
})

M.Csv = schema.new({
    id = id.from(_N, "Csv"),
    type = "structure",
    members = {
        columnNames = schema.new({
            id = id.from(_N, "Csv", "columnNames"),
            type = "list",
            name = "columnNames",
            target_id = prelude.Document.id,
            list_member = prelude.String,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.Parquet = schema.new({
    id = id.from(_N, "Parquet"),
    type = "structure",
})

M.FileFormat = schema.new({
    id = id.from(_N, "FileFormat"),
    type = "structure",
    members = {
        csv = schema.new({
            id = id.from(_N, "FileFormat", "csv"),
            type = "structure",
            name = "csv",
            target_id = id.from(_N, "Csv"),
            target = M.Csv,
        }),
        parquet = schema.new({
            id = id.from(_N, "FileFormat", "parquet"),
            type = "structure",
            name = "parquet",
            target_id = id.from(_N, "Parquet"),
            target = M.Parquet,
        }),
    },
})

M.JobConfiguration = schema.new({
    id = id.from(_N, "JobConfiguration"),
    type = "structure",
    members = {
        fileFormat = schema.new({
            id = id.from(_N, "JobConfiguration", "fileFormat"),
            type = "structure",
            name = "fileFormat",
            target_id = id.from(_N, "FileFormat"),
            target = M.FileFormat,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.CreateBulkImportJobInput = schema.new({
    id = id.from(_N, "CreateBulkImportJobRequest"),
    type = "structure",
    members = {
        jobName = schema.new({
            id = id.from(_N, "CreateBulkImportJobInput", "jobName"),
            type = "string",
            name = "jobName",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        jobRoleArn = schema.new({
            id = id.from(_N, "CreateBulkImportJobInput", "jobRoleArn"),
            type = "string",
            name = "jobRoleArn",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        files = schema.new({
            id = id.from(_N, "CreateBulkImportJobInput", "files"),
            type = "list",
            name = "files",
            target_id = prelude.Document.id,
            list_member = M.File,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        errorReportLocation = schema.new({
            id = id.from(_N, "CreateBulkImportJobInput", "errorReportLocation"),
            type = "structure",
            name = "errorReportLocation",
            target_id = id.from(_N, "ErrorReportLocation"),
            target = M.ErrorReportLocation,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        jobConfiguration = schema.new({
            id = id.from(_N, "CreateBulkImportJobInput", "jobConfiguration"),
            type = "structure",
            name = "jobConfiguration",
            target_id = id.from(_N, "JobConfiguration"),
            target = M.JobConfiguration,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        adaptiveIngestion = schema.new({
            id = id.from(_N, "CreateBulkImportJobInput", "adaptiveIngestion"),
            type = "boolean",
            name = "adaptiveIngestion",
            target_id = prelude.Boolean.id,
        }),
        deleteFilesAfterImport = schema.new({
            id = id.from(_N, "CreateBulkImportJobInput", "deleteFilesAfterImport"),
            type = "boolean",
            name = "deleteFilesAfterImport",
            target_id = prelude.Boolean.id,
        }),
    },
})

M.CreateBulkImportJobOutput = schema.new({
    id = id.from(_N, "CreateBulkImportJobResponse"),
    type = "structure",
    members = {
        jobId = schema.new({
            id = id.from(_N, "CreateBulkImportJobOutput", "jobId"),
            type = "string",
            name = "jobId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        jobName = schema.new({
            id = id.from(_N, "CreateBulkImportJobOutput", "jobName"),
            type = "string",
            name = "jobName",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        jobStatus = schema.new({
            id = id.from(_N, "CreateBulkImportJobOutput", "jobStatus"),
            type = "string",
            name = "jobStatus",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.ComputationModelAnomalyDetectionConfiguration = schema.new({
    id = id.from(_N, "ComputationModelAnomalyDetectionConfiguration"),
    type = "structure",
    members = {
        inputProperties = schema.new({
            id = id.from(_N, "ComputationModelAnomalyDetectionConfiguration", "inputProperties"),
            type = "string",
            name = "inputProperties",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        resultProperty = schema.new({
            id = id.from(_N, "ComputationModelAnomalyDetectionConfiguration", "resultProperty"),
            type = "string",
            name = "resultProperty",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.ComputationModelConfiguration = schema.new({
    id = id.from(_N, "ComputationModelConfiguration"),
    type = "structure",
    members = {
        anomalyDetection = schema.new({
            id = id.from(_N, "ComputationModelConfiguration", "anomalyDetection"),
            type = "structure",
            name = "anomalyDetection",
            target_id = id.from(_N, "ComputationModelAnomalyDetectionConfiguration"),
            target = M.ComputationModelAnomalyDetectionConfiguration,
        }),
    },
})

M.ComputationModelStatus = schema.new({
    id = id.from(_N, "ComputationModelStatus"),
    type = "structure",
    members = {
        state = schema.new({
            id = id.from(_N, "ComputationModelStatus", "state"),
            type = "string",
            name = "state",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        error = schema.new({
            id = id.from(_N, "ComputationModelStatus", "error"),
            type = "structure",
            name = "error",
            target_id = id.from(_N, "ErrorDetails"),
            target = M.ErrorDetails,
        }),
    },
})

M.CreateComputationModelOutput = schema.new({
    id = id.from(_N, "CreateComputationModelResponse"),
    type = "structure",
    members = {
        computationModelId = schema.new({
            id = id.from(_N, "CreateComputationModelOutput", "computationModelId"),
            type = "string",
            name = "computationModelId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        computationModelArn = schema.new({
            id = id.from(_N, "CreateComputationModelOutput", "computationModelArn"),
            type = "string",
            name = "computationModelArn",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        computationModelStatus = schema.new({
            id = id.from(_N, "CreateComputationModelOutput", "computationModelStatus"),
            type = "structure",
            name = "computationModelStatus",
            target_id = id.from(_N, "ComputationModelStatus"),
            target = M.ComputationModelStatus,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.CreateDashboardInput = schema.new({
    id = id.from(_N, "CreateDashboardRequest"),
    type = "structure",
    members = {
        projectId = schema.new({
            id = id.from(_N, "CreateDashboardInput", "projectId"),
            type = "string",
            name = "projectId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        dashboardName = schema.new({
            id = id.from(_N, "CreateDashboardInput", "dashboardName"),
            type = "string",
            name = "dashboardName",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        dashboardDescription = schema.new({
            id = id.from(_N, "CreateDashboardInput", "dashboardDescription"),
            type = "string",
            name = "dashboardDescription",
            target_id = prelude.String.id,
        }),
        dashboardDefinition = schema.new({
            id = id.from(_N, "CreateDashboardInput", "dashboardDefinition"),
            type = "string",
            name = "dashboardDefinition",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        clientToken = schema.new({
            id = id.from(_N, "CreateDashboardInput", "clientToken"),
            type = "string",
            name = "clientToken",
            target_id = prelude.String.id,
            traits = {
                [traits.IDEMPOTENCY_TOKEN] = {},
            },
        }),
        tags = schema.new({
            id = id.from(_N, "CreateDashboardInput", "tags"),
            type = "map",
            name = "tags",
            target_id = prelude.Document.id,
            map_key = prelude.String,
            map_value = prelude.String,
        }),
    },
})

M.CreateDashboardOutput = schema.new({
    id = id.from(_N, "CreateDashboardResponse"),
    type = "structure",
    members = {
        dashboardId = schema.new({
            id = id.from(_N, "CreateDashboardOutput", "dashboardId"),
            type = "string",
            name = "dashboardId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        dashboardArn = schema.new({
            id = id.from(_N, "CreateDashboardOutput", "dashboardArn"),
            type = "string",
            name = "dashboardArn",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.KendraSourceDetail = schema.new({
    id = id.from(_N, "KendraSourceDetail"),
    type = "structure",
    members = {
        knowledgeBaseArn = schema.new({
            id = id.from(_N, "KendraSourceDetail", "knowledgeBaseArn"),
            type = "string",
            name = "knowledgeBaseArn",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        roleArn = schema.new({
            id = id.from(_N, "KendraSourceDetail", "roleArn"),
            type = "string",
            name = "roleArn",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.SourceDetail = schema.new({
    id = id.from(_N, "SourceDetail"),
    type = "structure",
    members = {
        kendra = schema.new({
            id = id.from(_N, "SourceDetail", "kendra"),
            type = "structure",
            name = "kendra",
            target_id = id.from(_N, "KendraSourceDetail"),
            target = M.KendraSourceDetail,
        }),
    },
})

M.DatasetSource = schema.new({
    id = id.from(_N, "DatasetSource"),
    type = "structure",
    members = {
        sourceType = schema.new({
            id = id.from(_N, "DatasetSource", "sourceType"),
            type = "string",
            name = "sourceType",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        sourceFormat = schema.new({
            id = id.from(_N, "DatasetSource", "sourceFormat"),
            type = "string",
            name = "sourceFormat",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        sourceDetail = schema.new({
            id = id.from(_N, "DatasetSource", "sourceDetail"),
            type = "structure",
            name = "sourceDetail",
            target_id = id.from(_N, "SourceDetail"),
            target = M.SourceDetail,
        }),
    },
})

M.CreateDatasetInput = schema.new({
    id = id.from(_N, "CreateDatasetRequest"),
    type = "structure",
    members = {
        datasetId = schema.new({
            id = id.from(_N, "CreateDatasetInput", "datasetId"),
            type = "string",
            name = "datasetId",
            target_id = prelude.String.id,
        }),
        datasetName = schema.new({
            id = id.from(_N, "CreateDatasetInput", "datasetName"),
            type = "string",
            name = "datasetName",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        datasetDescription = schema.new({
            id = id.from(_N, "CreateDatasetInput", "datasetDescription"),
            type = "string",
            name = "datasetDescription",
            target_id = prelude.String.id,
        }),
        datasetSource = schema.new({
            id = id.from(_N, "CreateDatasetInput", "datasetSource"),
            type = "structure",
            name = "datasetSource",
            target_id = id.from(_N, "DatasetSource"),
            target = M.DatasetSource,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        clientToken = schema.new({
            id = id.from(_N, "CreateDatasetInput", "clientToken"),
            type = "string",
            name = "clientToken",
            target_id = prelude.String.id,
            traits = {
                [traits.IDEMPOTENCY_TOKEN] = {},
            },
        }),
        tags = schema.new({
            id = id.from(_N, "CreateDatasetInput", "tags"),
            type = "map",
            name = "tags",
            target_id = prelude.Document.id,
            map_key = prelude.String,
            map_value = prelude.String,
        }),
    },
})

M.DatasetStatus = schema.new({
    id = id.from(_N, "DatasetStatus"),
    type = "structure",
    members = {
        state = schema.new({
            id = id.from(_N, "DatasetStatus", "state"),
            type = "string",
            name = "state",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        error = schema.new({
            id = id.from(_N, "DatasetStatus", "error"),
            type = "structure",
            name = "error",
            target_id = id.from(_N, "ErrorDetails"),
            target = M.ErrorDetails,
        }),
    },
})

M.CreateDatasetOutput = schema.new({
    id = id.from(_N, "CreateDatasetResponse"),
    type = "structure",
    members = {
        datasetId = schema.new({
            id = id.from(_N, "CreateDatasetOutput", "datasetId"),
            type = "string",
            name = "datasetId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        datasetArn = schema.new({
            id = id.from(_N, "CreateDatasetOutput", "datasetArn"),
            type = "string",
            name = "datasetArn",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        datasetStatus = schema.new({
            id = id.from(_N, "CreateDatasetOutput", "datasetStatus"),
            type = "structure",
            name = "datasetStatus",
            target_id = id.from(_N, "DatasetStatus"),
            target = M.DatasetStatus,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.Greengrass = schema.new({
    id = id.from(_N, "Greengrass"),
    type = "structure",
    members = {
        groupArn = schema.new({
            id = id.from(_N, "Greengrass", "groupArn"),
            type = "string",
            name = "groupArn",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.GreengrassV2 = schema.new({
    id = id.from(_N, "GreengrassV2"),
    type = "structure",
    members = {
        coreDeviceThingName = schema.new({
            id = id.from(_N, "GreengrassV2", "coreDeviceThingName"),
            type = "string",
            name = "coreDeviceThingName",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        coreDeviceOperatingSystem = schema.new({
            id = id.from(_N, "GreengrassV2", "coreDeviceOperatingSystem"),
            type = "string",
            name = "coreDeviceOperatingSystem",
            target_id = prelude.String.id,
        }),
    },
})

M.SiemensIE = schema.new({
    id = id.from(_N, "SiemensIE"),
    type = "structure",
    members = {
        iotCoreThingName = schema.new({
            id = id.from(_N, "SiemensIE", "iotCoreThingName"),
            type = "string",
            name = "iotCoreThingName",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.GatewayPlatform = schema.new({
    id = id.from(_N, "GatewayPlatform"),
    type = "structure",
    members = {
        greengrass = schema.new({
            id = id.from(_N, "GatewayPlatform", "greengrass"),
            type = "structure",
            name = "greengrass",
            target_id = id.from(_N, "Greengrass"),
            target = M.Greengrass,
        }),
        greengrassV2 = schema.new({
            id = id.from(_N, "GatewayPlatform", "greengrassV2"),
            type = "structure",
            name = "greengrassV2",
            target_id = id.from(_N, "GreengrassV2"),
            target = M.GreengrassV2,
        }),
        siemensIE = schema.new({
            id = id.from(_N, "GatewayPlatform", "siemensIE"),
            type = "structure",
            name = "siemensIE",
            target_id = id.from(_N, "SiemensIE"),
            target = M.SiemensIE,
        }),
    },
})

M.CreateGatewayInput = schema.new({
    id = id.from(_N, "CreateGatewayRequest"),
    type = "structure",
    members = {
        gatewayName = schema.new({
            id = id.from(_N, "CreateGatewayInput", "gatewayName"),
            type = "string",
            name = "gatewayName",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        gatewayPlatform = schema.new({
            id = id.from(_N, "CreateGatewayInput", "gatewayPlatform"),
            type = "structure",
            name = "gatewayPlatform",
            target_id = id.from(_N, "GatewayPlatform"),
            target = M.GatewayPlatform,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        gatewayVersion = schema.new({
            id = id.from(_N, "CreateGatewayInput", "gatewayVersion"),
            type = "string",
            name = "gatewayVersion",
            target_id = prelude.String.id,
        }),
        tags = schema.new({
            id = id.from(_N, "CreateGatewayInput", "tags"),
            type = "map",
            name = "tags",
            target_id = prelude.Document.id,
            map_key = prelude.String,
            map_value = prelude.String,
        }),
    },
})

M.CreateGatewayOutput = schema.new({
    id = id.from(_N, "CreateGatewayResponse"),
    type = "structure",
    members = {
        gatewayId = schema.new({
            id = id.from(_N, "CreateGatewayOutput", "gatewayId"),
            type = "string",
            name = "gatewayId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        gatewayArn = schema.new({
            id = id.from(_N, "CreateGatewayOutput", "gatewayArn"),
            type = "string",
            name = "gatewayArn",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.ImageFile = schema.new({
    id = id.from(_N, "ImageFile"),
    type = "structure",
    members = {
        data = schema.new({
            id = id.from(_N, "ImageFile", "data"),
            type = "blob",
            name = "data",
            target_id = prelude.Blob.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        type = schema.new({
            id = id.from(_N, "ImageFile", "type"),
            type = "string",
            name = "type",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.PortalTypeEntry = schema.new({
    id = id.from(_N, "PortalTypeEntry"),
    type = "structure",
    members = {
        portalTools = schema.new({
            id = id.from(_N, "PortalTypeEntry", "portalTools"),
            type = "list",
            name = "portalTools",
            target_id = prelude.Document.id,
            list_member = prelude.String,
        }),
    },
})

M.CreatePortalInput = schema.new({
    id = id.from(_N, "CreatePortalRequest"),
    type = "structure",
    members = {
        portalName = schema.new({
            id = id.from(_N, "CreatePortalInput", "portalName"),
            type = "string",
            name = "portalName",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        portalDescription = schema.new({
            id = id.from(_N, "CreatePortalInput", "portalDescription"),
            type = "string",
            name = "portalDescription",
            target_id = prelude.String.id,
        }),
        portalContactEmail = schema.new({
            id = id.from(_N, "CreatePortalInput", "portalContactEmail"),
            type = "string",
            name = "portalContactEmail",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        clientToken = schema.new({
            id = id.from(_N, "CreatePortalInput", "clientToken"),
            type = "string",
            name = "clientToken",
            target_id = prelude.String.id,
            traits = {
                [traits.IDEMPOTENCY_TOKEN] = {},
            },
        }),
        portalLogoImageFile = schema.new({
            id = id.from(_N, "CreatePortalInput", "portalLogoImageFile"),
            type = "structure",
            name = "portalLogoImageFile",
            target_id = id.from(_N, "ImageFile"),
            target = M.ImageFile,
        }),
        roleArn = schema.new({
            id = id.from(_N, "CreatePortalInput", "roleArn"),
            type = "string",
            name = "roleArn",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        tags = schema.new({
            id = id.from(_N, "CreatePortalInput", "tags"),
            type = "map",
            name = "tags",
            target_id = prelude.Document.id,
            map_key = prelude.String,
            map_value = prelude.String,
        }),
        portalAuthMode = schema.new({
            id = id.from(_N, "CreatePortalInput", "portalAuthMode"),
            type = "string",
            name = "portalAuthMode",
            target_id = prelude.String.id,
        }),
        notificationSenderEmail = schema.new({
            id = id.from(_N, "CreatePortalInput", "notificationSenderEmail"),
            type = "string",
            name = "notificationSenderEmail",
            target_id = prelude.String.id,
        }),
        alarms = schema.new({
            id = id.from(_N, "CreatePortalInput", "alarms"),
            type = "structure",
            name = "alarms",
            target_id = id.from(_N, "Alarms"),
            target = M.Alarms,
        }),
        portalType = schema.new({
            id = id.from(_N, "CreatePortalInput", "portalType"),
            type = "string",
            name = "portalType",
            target_id = prelude.String.id,
        }),
        portalTypeConfiguration = schema.new({
            id = id.from(_N, "CreatePortalInput", "portalTypeConfiguration"),
            type = "map",
            name = "portalTypeConfiguration",
            target_id = prelude.Document.id,
            map_key = prelude.String,
            map_value = M.PortalTypeEntry,
        }),
    },
})

M.MonitorErrorDetails = schema.new({
    id = id.from(_N, "MonitorErrorDetails"),
    type = "structure",
    members = {
        code = schema.new({
            id = id.from(_N, "MonitorErrorDetails", "code"),
            type = "string",
            name = "code",
            target_id = prelude.String.id,
        }),
        message = schema.new({
            id = id.from(_N, "MonitorErrorDetails", "message"),
            type = "string",
            name = "message",
            target_id = prelude.String.id,
        }),
    },
})

M.PortalStatus = schema.new({
    id = id.from(_N, "PortalStatus"),
    type = "structure",
    members = {
        state = schema.new({
            id = id.from(_N, "PortalStatus", "state"),
            type = "string",
            name = "state",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        error = schema.new({
            id = id.from(_N, "PortalStatus", "error"),
            type = "structure",
            name = "error",
            target_id = id.from(_N, "MonitorErrorDetails"),
            target = M.MonitorErrorDetails,
        }),
    },
})

M.CreatePortalOutput = schema.new({
    id = id.from(_N, "CreatePortalResponse"),
    type = "structure",
    members = {
        portalId = schema.new({
            id = id.from(_N, "CreatePortalOutput", "portalId"),
            type = "string",
            name = "portalId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        portalArn = schema.new({
            id = id.from(_N, "CreatePortalOutput", "portalArn"),
            type = "string",
            name = "portalArn",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        portalStartUrl = schema.new({
            id = id.from(_N, "CreatePortalOutput", "portalStartUrl"),
            type = "string",
            name = "portalStartUrl",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        portalStatus = schema.new({
            id = id.from(_N, "CreatePortalOutput", "portalStatus"),
            type = "structure",
            name = "portalStatus",
            target_id = id.from(_N, "PortalStatus"),
            target = M.PortalStatus,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        ssoApplicationId = schema.new({
            id = id.from(_N, "CreatePortalOutput", "ssoApplicationId"),
            type = "string",
            name = "ssoApplicationId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.CreateProjectInput = schema.new({
    id = id.from(_N, "CreateProjectRequest"),
    type = "structure",
    members = {
        portalId = schema.new({
            id = id.from(_N, "CreateProjectInput", "portalId"),
            type = "string",
            name = "portalId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        projectName = schema.new({
            id = id.from(_N, "CreateProjectInput", "projectName"),
            type = "string",
            name = "projectName",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        projectDescription = schema.new({
            id = id.from(_N, "CreateProjectInput", "projectDescription"),
            type = "string",
            name = "projectDescription",
            target_id = prelude.String.id,
        }),
        clientToken = schema.new({
            id = id.from(_N, "CreateProjectInput", "clientToken"),
            type = "string",
            name = "clientToken",
            target_id = prelude.String.id,
            traits = {
                [traits.IDEMPOTENCY_TOKEN] = {},
            },
        }),
        tags = schema.new({
            id = id.from(_N, "CreateProjectInput", "tags"),
            type = "map",
            name = "tags",
            target_id = prelude.Document.id,
            map_key = prelude.String,
            map_value = prelude.String,
        }),
    },
})

M.CreateProjectOutput = schema.new({
    id = id.from(_N, "CreateProjectResponse"),
    type = "structure",
    members = {
        projectId = schema.new({
            id = id.from(_N, "CreateProjectOutput", "projectId"),
            type = "string",
            name = "projectId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        projectArn = schema.new({
            id = id.from(_N, "CreateProjectOutput", "projectArn"),
            type = "string",
            name = "projectArn",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.DeleteAccessPolicyInput = schema.new({
    id = id.from(_N, "DeleteAccessPolicyRequest"),
    type = "structure",
    members = {
        accessPolicyId = schema.new({
            id = id.from(_N, "DeleteAccessPolicyInput", "accessPolicyId"),
            type = "string",
            name = "accessPolicyId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
        clientToken = schema.new({
            id = id.from(_N, "DeleteAccessPolicyInput", "clientToken"),
            type = "string",
            name = "clientToken",
            target_id = prelude.String.id,
            traits = {
                [traits.HTTP_QUERY] = { name = "clientToken" },
                [traits.IDEMPOTENCY_TOKEN] = {},
            },
        }),
    },
})

M.DeleteAccessPolicyOutput = schema.new({
    id = id.from(_N, "DeleteAccessPolicyResponse"),
    type = "structure",
})

M.DeleteAssetInput = schema.new({
    id = id.from(_N, "DeleteAssetRequest"),
    type = "structure",
    members = {
        assetId = schema.new({
            id = id.from(_N, "DeleteAssetInput", "assetId"),
            type = "string",
            name = "assetId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
        clientToken = schema.new({
            id = id.from(_N, "DeleteAssetInput", "clientToken"),
            type = "string",
            name = "clientToken",
            target_id = prelude.String.id,
            traits = {
                [traits.HTTP_QUERY] = { name = "clientToken" },
                [traits.IDEMPOTENCY_TOKEN] = {},
            },
        }),
    },
})

M.DeleteAssetOutput = schema.new({
    id = id.from(_N, "DeleteAssetResponse"),
    type = "structure",
    members = {
        assetStatus = schema.new({
            id = id.from(_N, "DeleteAssetOutput", "assetStatus"),
            type = "structure",
            name = "assetStatus",
            target_id = id.from(_N, "AssetStatus"),
            target = M.AssetStatus,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.DeleteAssetModelInput = schema.new({
    id = id.from(_N, "DeleteAssetModelRequest"),
    type = "structure",
    members = {
        assetModelId = schema.new({
            id = id.from(_N, "DeleteAssetModelInput", "assetModelId"),
            type = "string",
            name = "assetModelId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
        clientToken = schema.new({
            id = id.from(_N, "DeleteAssetModelInput", "clientToken"),
            type = "string",
            name = "clientToken",
            target_id = prelude.String.id,
            traits = {
                [traits.HTTP_QUERY] = { name = "clientToken" },
                [traits.IDEMPOTENCY_TOKEN] = {},
            },
        }),
        ifMatch = schema.new({
            id = id.from(_N, "DeleteAssetModelInput", "ifMatch"),
            type = "string",
            name = "ifMatch",
            target_id = prelude.String.id,
            traits = {
                [traits.HTTP_HEADER] = { name = "If-Match" },
            },
        }),
        ifNoneMatch = schema.new({
            id = id.from(_N, "DeleteAssetModelInput", "ifNoneMatch"),
            type = "string",
            name = "ifNoneMatch",
            target_id = prelude.String.id,
            traits = {
                [traits.HTTP_HEADER] = { name = "If-None-Match" },
            },
        }),
        matchForVersionType = schema.new({
            id = id.from(_N, "DeleteAssetModelInput", "matchForVersionType"),
            type = "string",
            name = "matchForVersionType",
            target_id = prelude.String.id,
            traits = {
                [traits.HTTP_HEADER] = { name = "Match-For-Version-Type" },
            },
        }),
    },
})

M.DeleteAssetModelOutput = schema.new({
    id = id.from(_N, "DeleteAssetModelResponse"),
    type = "structure",
    members = {
        assetModelStatus = schema.new({
            id = id.from(_N, "DeleteAssetModelOutput", "assetModelStatus"),
            type = "structure",
            name = "assetModelStatus",
            target_id = id.from(_N, "AssetModelStatus"),
            target = M.AssetModelStatus,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.DeleteAssetModelCompositeModelInput = schema.new({
    id = id.from(_N, "DeleteAssetModelCompositeModelRequest"),
    type = "structure",
    members = {
        assetModelId = schema.new({
            id = id.from(_N, "DeleteAssetModelCompositeModelInput", "assetModelId"),
            type = "string",
            name = "assetModelId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
        assetModelCompositeModelId = schema.new({
            id = id.from(_N, "DeleteAssetModelCompositeModelInput", "assetModelCompositeModelId"),
            type = "string",
            name = "assetModelCompositeModelId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
        clientToken = schema.new({
            id = id.from(_N, "DeleteAssetModelCompositeModelInput", "clientToken"),
            type = "string",
            name = "clientToken",
            target_id = prelude.String.id,
            traits = {
                [traits.HTTP_QUERY] = { name = "clientToken" },
                [traits.IDEMPOTENCY_TOKEN] = {},
            },
        }),
        ifMatch = schema.new({
            id = id.from(_N, "DeleteAssetModelCompositeModelInput", "ifMatch"),
            type = "string",
            name = "ifMatch",
            target_id = prelude.String.id,
            traits = {
                [traits.HTTP_HEADER] = { name = "If-Match" },
            },
        }),
        ifNoneMatch = schema.new({
            id = id.from(_N, "DeleteAssetModelCompositeModelInput", "ifNoneMatch"),
            type = "string",
            name = "ifNoneMatch",
            target_id = prelude.String.id,
            traits = {
                [traits.HTTP_HEADER] = { name = "If-None-Match" },
            },
        }),
        matchForVersionType = schema.new({
            id = id.from(_N, "DeleteAssetModelCompositeModelInput", "matchForVersionType"),
            type = "string",
            name = "matchForVersionType",
            target_id = prelude.String.id,
            traits = {
                [traits.HTTP_HEADER] = { name = "Match-For-Version-Type" },
            },
        }),
    },
})

M.DeleteAssetModelCompositeModelOutput = schema.new({
    id = id.from(_N, "DeleteAssetModelCompositeModelResponse"),
    type = "structure",
    members = {
        assetModelStatus = schema.new({
            id = id.from(_N, "DeleteAssetModelCompositeModelOutput", "assetModelStatus"),
            type = "structure",
            name = "assetModelStatus",
            target_id = id.from(_N, "AssetModelStatus"),
            target = M.AssetModelStatus,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.DeleteAssetModelInterfaceRelationshipInput = schema.new({
    id = id.from(_N, "DeleteAssetModelInterfaceRelationshipRequest"),
    type = "structure",
    members = {
        assetModelId = schema.new({
            id = id.from(_N, "DeleteAssetModelInterfaceRelationshipInput", "assetModelId"),
            type = "string",
            name = "assetModelId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
        interfaceAssetModelId = schema.new({
            id = id.from(_N, "DeleteAssetModelInterfaceRelationshipInput", "interfaceAssetModelId"),
            type = "string",
            name = "interfaceAssetModelId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
        clientToken = schema.new({
            id = id.from(_N, "DeleteAssetModelInterfaceRelationshipInput", "clientToken"),
            type = "string",
            name = "clientToken",
            target_id = prelude.String.id,
            traits = {
                [traits.HTTP_QUERY] = { name = "clientToken" },
                [traits.IDEMPOTENCY_TOKEN] = {},
            },
        }),
    },
})

M.DeleteAssetModelInterfaceRelationshipOutput = schema.new({
    id = id.from(_N, "DeleteAssetModelInterfaceRelationshipResponse"),
    type = "structure",
    members = {
        assetModelId = schema.new({
            id = id.from(_N, "DeleteAssetModelInterfaceRelationshipOutput", "assetModelId"),
            type = "string",
            name = "assetModelId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        interfaceAssetModelId = schema.new({
            id = id.from(_N, "DeleteAssetModelInterfaceRelationshipOutput", "interfaceAssetModelId"),
            type = "string",
            name = "interfaceAssetModelId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        assetModelArn = schema.new({
            id = id.from(_N, "DeleteAssetModelInterfaceRelationshipOutput", "assetModelArn"),
            type = "string",
            name = "assetModelArn",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        assetModelStatus = schema.new({
            id = id.from(_N, "DeleteAssetModelInterfaceRelationshipOutput", "assetModelStatus"),
            type = "structure",
            name = "assetModelStatus",
            target_id = id.from(_N, "AssetModelStatus"),
            target = M.AssetModelStatus,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.DeleteComputationModelInput = schema.new({
    id = id.from(_N, "DeleteComputationModelRequest"),
    type = "structure",
    members = {
        computationModelId = schema.new({
            id = id.from(_N, "DeleteComputationModelInput", "computationModelId"),
            type = "string",
            name = "computationModelId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
        clientToken = schema.new({
            id = id.from(_N, "DeleteComputationModelInput", "clientToken"),
            type = "string",
            name = "clientToken",
            target_id = prelude.String.id,
            traits = {
                [traits.HTTP_QUERY] = { name = "clientToken" },
                [traits.IDEMPOTENCY_TOKEN] = {},
            },
        }),
    },
})

M.DeleteComputationModelOutput = schema.new({
    id = id.from(_N, "DeleteComputationModelResponse"),
    type = "structure",
    members = {
        computationModelStatus = schema.new({
            id = id.from(_N, "DeleteComputationModelOutput", "computationModelStatus"),
            type = "structure",
            name = "computationModelStatus",
            target_id = id.from(_N, "ComputationModelStatus"),
            target = M.ComputationModelStatus,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.DeleteDashboardInput = schema.new({
    id = id.from(_N, "DeleteDashboardRequest"),
    type = "structure",
    members = {
        dashboardId = schema.new({
            id = id.from(_N, "DeleteDashboardInput", "dashboardId"),
            type = "string",
            name = "dashboardId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
        clientToken = schema.new({
            id = id.from(_N, "DeleteDashboardInput", "clientToken"),
            type = "string",
            name = "clientToken",
            target_id = prelude.String.id,
            traits = {
                [traits.HTTP_QUERY] = { name = "clientToken" },
                [traits.IDEMPOTENCY_TOKEN] = {},
            },
        }),
    },
})

M.DeleteDashboardOutput = schema.new({
    id = id.from(_N, "DeleteDashboardResponse"),
    type = "structure",
})

M.DeleteDatasetInput = schema.new({
    id = id.from(_N, "DeleteDatasetRequest"),
    type = "structure",
    members = {
        datasetId = schema.new({
            id = id.from(_N, "DeleteDatasetInput", "datasetId"),
            type = "string",
            name = "datasetId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
        clientToken = schema.new({
            id = id.from(_N, "DeleteDatasetInput", "clientToken"),
            type = "string",
            name = "clientToken",
            target_id = prelude.String.id,
            traits = {
                [traits.HTTP_QUERY] = { name = "clientToken" },
                [traits.IDEMPOTENCY_TOKEN] = {},
            },
        }),
    },
})

M.DeleteDatasetOutput = schema.new({
    id = id.from(_N, "DeleteDatasetResponse"),
    type = "structure",
    members = {
        datasetStatus = schema.new({
            id = id.from(_N, "DeleteDatasetOutput", "datasetStatus"),
            type = "structure",
            name = "datasetStatus",
            target_id = id.from(_N, "DatasetStatus"),
            target = M.DatasetStatus,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.DeleteGatewayInput = schema.new({
    id = id.from(_N, "DeleteGatewayRequest"),
    type = "structure",
    members = {
        gatewayId = schema.new({
            id = id.from(_N, "DeleteGatewayInput", "gatewayId"),
            type = "string",
            name = "gatewayId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
    },
})

M.DeleteGatewayOutput = schema.new({
    id = id.from(_N, "Unit"),
    type = "structure",
})

M.DeletePortalInput = schema.new({
    id = id.from(_N, "DeletePortalRequest"),
    type = "structure",
    members = {
        portalId = schema.new({
            id = id.from(_N, "DeletePortalInput", "portalId"),
            type = "string",
            name = "portalId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
        clientToken = schema.new({
            id = id.from(_N, "DeletePortalInput", "clientToken"),
            type = "string",
            name = "clientToken",
            target_id = prelude.String.id,
            traits = {
                [traits.HTTP_QUERY] = { name = "clientToken" },
                [traits.IDEMPOTENCY_TOKEN] = {},
            },
        }),
    },
})

M.DeletePortalOutput = schema.new({
    id = id.from(_N, "DeletePortalResponse"),
    type = "structure",
    members = {
        portalStatus = schema.new({
            id = id.from(_N, "DeletePortalOutput", "portalStatus"),
            type = "structure",
            name = "portalStatus",
            target_id = id.from(_N, "PortalStatus"),
            target = M.PortalStatus,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.DeleteProjectInput = schema.new({
    id = id.from(_N, "DeleteProjectRequest"),
    type = "structure",
    members = {
        projectId = schema.new({
            id = id.from(_N, "DeleteProjectInput", "projectId"),
            type = "string",
            name = "projectId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
        clientToken = schema.new({
            id = id.from(_N, "DeleteProjectInput", "clientToken"),
            type = "string",
            name = "clientToken",
            target_id = prelude.String.id,
            traits = {
                [traits.HTTP_QUERY] = { name = "clientToken" },
                [traits.IDEMPOTENCY_TOKEN] = {},
            },
        }),
    },
})

M.DeleteProjectOutput = schema.new({
    id = id.from(_N, "DeleteProjectResponse"),
    type = "structure",
})

M.DeleteTimeSeriesInput = schema.new({
    id = id.from(_N, "DeleteTimeSeriesRequest"),
    type = "structure",
    members = {
        alias = schema.new({
            id = id.from(_N, "DeleteTimeSeriesInput", "alias"),
            type = "string",
            name = "alias",
            target_id = prelude.String.id,
            traits = {
                [traits.HTTP_QUERY] = { name = "alias" },
            },
        }),
        assetId = schema.new({
            id = id.from(_N, "DeleteTimeSeriesInput", "assetId"),
            type = "string",
            name = "assetId",
            target_id = prelude.String.id,
            traits = {
                [traits.HTTP_QUERY] = { name = "assetId" },
            },
        }),
        propertyId = schema.new({
            id = id.from(_N, "DeleteTimeSeriesInput", "propertyId"),
            type = "string",
            name = "propertyId",
            target_id = prelude.String.id,
            traits = {
                [traits.HTTP_QUERY] = { name = "propertyId" },
            },
        }),
        clientToken = schema.new({
            id = id.from(_N, "DeleteTimeSeriesInput", "clientToken"),
            type = "string",
            name = "clientToken",
            target_id = prelude.String.id,
            traits = {
                [traits.IDEMPOTENCY_TOKEN] = {},
            },
        }),
    },
})

M.DeleteTimeSeriesOutput = schema.new({
    id = id.from(_N, "Unit"),
    type = "structure",
})

M.DescribeAccessPolicyInput = schema.new({
    id = id.from(_N, "DescribeAccessPolicyRequest"),
    type = "structure",
    members = {
        accessPolicyId = schema.new({
            id = id.from(_N, "DescribeAccessPolicyInput", "accessPolicyId"),
            type = "string",
            name = "accessPolicyId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
    },
})

M.DescribeAccessPolicyOutput = schema.new({
    id = id.from(_N, "DescribeAccessPolicyResponse"),
    type = "structure",
    members = {
        accessPolicyId = schema.new({
            id = id.from(_N, "DescribeAccessPolicyOutput", "accessPolicyId"),
            type = "string",
            name = "accessPolicyId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        accessPolicyArn = schema.new({
            id = id.from(_N, "DescribeAccessPolicyOutput", "accessPolicyArn"),
            type = "string",
            name = "accessPolicyArn",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        accessPolicyIdentity = schema.new({
            id = id.from(_N, "DescribeAccessPolicyOutput", "accessPolicyIdentity"),
            type = "structure",
            name = "accessPolicyIdentity",
            target_id = id.from(_N, "Identity"),
            target = M.Identity,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        accessPolicyResource = schema.new({
            id = id.from(_N, "DescribeAccessPolicyOutput", "accessPolicyResource"),
            type = "structure",
            name = "accessPolicyResource",
            target_id = id.from(_N, "Resource"),
            target = M.Resource,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        accessPolicyPermission = schema.new({
            id = id.from(_N, "DescribeAccessPolicyOutput", "accessPolicyPermission"),
            type = "string",
            name = "accessPolicyPermission",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        accessPolicyCreationDate = schema.new({
            id = id.from(_N, "DescribeAccessPolicyOutput", "accessPolicyCreationDate"),
            type = "timestamp",
            name = "accessPolicyCreationDate",
            target_id = prelude.Timestamp.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        accessPolicyLastUpdateDate = schema.new({
            id = id.from(_N, "DescribeAccessPolicyOutput", "accessPolicyLastUpdateDate"),
            type = "timestamp",
            name = "accessPolicyLastUpdateDate",
            target_id = prelude.Timestamp.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.DescribeActionInput = schema.new({
    id = id.from(_N, "DescribeActionRequest"),
    type = "structure",
    members = {
        actionId = schema.new({
            id = id.from(_N, "DescribeActionInput", "actionId"),
            type = "string",
            name = "actionId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
    },
})

M.DescribeActionOutput = schema.new({
    id = id.from(_N, "DescribeActionResponse"),
    type = "structure",
    members = {
        actionId = schema.new({
            id = id.from(_N, "DescribeActionOutput", "actionId"),
            type = "string",
            name = "actionId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        targetResource = schema.new({
            id = id.from(_N, "DescribeActionOutput", "targetResource"),
            type = "structure",
            name = "targetResource",
            target_id = id.from(_N, "TargetResource"),
            target = M.TargetResource,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        actionDefinitionId = schema.new({
            id = id.from(_N, "DescribeActionOutput", "actionDefinitionId"),
            type = "string",
            name = "actionDefinitionId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        actionPayload = schema.new({
            id = id.from(_N, "DescribeActionOutput", "actionPayload"),
            type = "structure",
            name = "actionPayload",
            target_id = id.from(_N, "ActionPayload"),
            target = M.ActionPayload,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        executionTime = schema.new({
            id = id.from(_N, "DescribeActionOutput", "executionTime"),
            type = "timestamp",
            name = "executionTime",
            target_id = prelude.Timestamp.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        resolveTo = schema.new({
            id = id.from(_N, "DescribeActionOutput", "resolveTo"),
            type = "structure",
            name = "resolveTo",
            target_id = id.from(_N, "ResolveTo"),
            target = M.ResolveTo,
        }),
    },
})

M.DescribeAssetInput = schema.new({
    id = id.from(_N, "DescribeAssetRequest"),
    type = "structure",
    members = {
        assetId = schema.new({
            id = id.from(_N, "DescribeAssetInput", "assetId"),
            type = "string",
            name = "assetId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
        excludeProperties = schema.new({
            id = id.from(_N, "DescribeAssetInput", "excludeProperties"),
            type = "boolean",
            name = "excludeProperties",
            target_id = prelude.Boolean.id,
            traits = {
                [traits.DEFAULT] = { value = false },
                [traits.HTTP_QUERY] = { name = "excludeProperties" },
            },
        }),
    },
})

M.DescribeAssetOutput = schema.new({
    id = id.from(_N, "DescribeAssetResponse"),
    type = "structure",
    members = {
        assetId = schema.new({
            id = id.from(_N, "DescribeAssetOutput", "assetId"),
            type = "string",
            name = "assetId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        assetExternalId = schema.new({
            id = id.from(_N, "DescribeAssetOutput", "assetExternalId"),
            type = "string",
            name = "assetExternalId",
            target_id = prelude.String.id,
        }),
        assetArn = schema.new({
            id = id.from(_N, "DescribeAssetOutput", "assetArn"),
            type = "string",
            name = "assetArn",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        assetName = schema.new({
            id = id.from(_N, "DescribeAssetOutput", "assetName"),
            type = "string",
            name = "assetName",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        assetModelId = schema.new({
            id = id.from(_N, "DescribeAssetOutput", "assetModelId"),
            type = "string",
            name = "assetModelId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        assetProperties = schema.new({
            id = id.from(_N, "DescribeAssetOutput", "assetProperties"),
            type = "list",
            name = "assetProperties",
            target_id = prelude.Document.id,
            list_member = M.AssetProperty,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        assetHierarchies = schema.new({
            id = id.from(_N, "DescribeAssetOutput", "assetHierarchies"),
            type = "list",
            name = "assetHierarchies",
            target_id = prelude.Document.id,
            list_member = M.AssetHierarchy,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        assetCompositeModels = schema.new({
            id = id.from(_N, "DescribeAssetOutput", "assetCompositeModels"),
            type = "list",
            name = "assetCompositeModels",
            target_id = prelude.Document.id,
            list_member = M.AssetCompositeModel,
        }),
        assetCreationDate = schema.new({
            id = id.from(_N, "DescribeAssetOutput", "assetCreationDate"),
            type = "timestamp",
            name = "assetCreationDate",
            target_id = prelude.Timestamp.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        assetLastUpdateDate = schema.new({
            id = id.from(_N, "DescribeAssetOutput", "assetLastUpdateDate"),
            type = "timestamp",
            name = "assetLastUpdateDate",
            target_id = prelude.Timestamp.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        assetStatus = schema.new({
            id = id.from(_N, "DescribeAssetOutput", "assetStatus"),
            type = "structure",
            name = "assetStatus",
            target_id = id.from(_N, "AssetStatus"),
            target = M.AssetStatus,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        assetDescription = schema.new({
            id = id.from(_N, "DescribeAssetOutput", "assetDescription"),
            type = "string",
            name = "assetDescription",
            target_id = prelude.String.id,
        }),
        assetCompositeModelSummaries = schema.new({
            id = id.from(_N, "DescribeAssetOutput", "assetCompositeModelSummaries"),
            type = "list",
            name = "assetCompositeModelSummaries",
            target_id = prelude.Document.id,
            list_member = M.AssetCompositeModelSummary,
        }),
    },
})

M.DescribeAssetCompositeModelInput = schema.new({
    id = id.from(_N, "DescribeAssetCompositeModelRequest"),
    type = "structure",
    members = {
        assetId = schema.new({
            id = id.from(_N, "DescribeAssetCompositeModelInput", "assetId"),
            type = "string",
            name = "assetId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
        assetCompositeModelId = schema.new({
            id = id.from(_N, "DescribeAssetCompositeModelInput", "assetCompositeModelId"),
            type = "string",
            name = "assetCompositeModelId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
    },
})

M.DescribeAssetCompositeModelOutput = schema.new({
    id = id.from(_N, "DescribeAssetCompositeModelResponse"),
    type = "structure",
    members = {
        assetId = schema.new({
            id = id.from(_N, "DescribeAssetCompositeModelOutput", "assetId"),
            type = "string",
            name = "assetId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        assetCompositeModelId = schema.new({
            id = id.from(_N, "DescribeAssetCompositeModelOutput", "assetCompositeModelId"),
            type = "string",
            name = "assetCompositeModelId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        assetCompositeModelExternalId = schema.new({
            id = id.from(_N, "DescribeAssetCompositeModelOutput", "assetCompositeModelExternalId"),
            type = "string",
            name = "assetCompositeModelExternalId",
            target_id = prelude.String.id,
        }),
        assetCompositeModelPath = schema.new({
            id = id.from(_N, "DescribeAssetCompositeModelOutput", "assetCompositeModelPath"),
            type = "list",
            name = "assetCompositeModelPath",
            target_id = prelude.Document.id,
            list_member = M.AssetCompositeModelPathSegment,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        assetCompositeModelName = schema.new({
            id = id.from(_N, "DescribeAssetCompositeModelOutput", "assetCompositeModelName"),
            type = "string",
            name = "assetCompositeModelName",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        assetCompositeModelDescription = schema.new({
            id = id.from(_N, "DescribeAssetCompositeModelOutput", "assetCompositeModelDescription"),
            type = "string",
            name = "assetCompositeModelDescription",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        assetCompositeModelType = schema.new({
            id = id.from(_N, "DescribeAssetCompositeModelOutput", "assetCompositeModelType"),
            type = "string",
            name = "assetCompositeModelType",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        assetCompositeModelProperties = schema.new({
            id = id.from(_N, "DescribeAssetCompositeModelOutput", "assetCompositeModelProperties"),
            type = "list",
            name = "assetCompositeModelProperties",
            target_id = prelude.Document.id,
            list_member = M.AssetProperty,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        assetCompositeModelSummaries = schema.new({
            id = id.from(_N, "DescribeAssetCompositeModelOutput", "assetCompositeModelSummaries"),
            type = "list",
            name = "assetCompositeModelSummaries",
            target_id = prelude.Document.id,
            list_member = M.AssetCompositeModelSummary,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        actionDefinitions = schema.new({
            id = id.from(_N, "DescribeAssetCompositeModelOutput", "actionDefinitions"),
            type = "list",
            name = "actionDefinitions",
            target_id = prelude.Document.id,
            list_member = M.ActionDefinition,
        }),
    },
})

M.DescribeAssetModelInput = schema.new({
    id = id.from(_N, "DescribeAssetModelRequest"),
    type = "structure",
    members = {
        assetModelId = schema.new({
            id = id.from(_N, "DescribeAssetModelInput", "assetModelId"),
            type = "string",
            name = "assetModelId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
        excludeProperties = schema.new({
            id = id.from(_N, "DescribeAssetModelInput", "excludeProperties"),
            type = "boolean",
            name = "excludeProperties",
            target_id = prelude.Boolean.id,
            traits = {
                [traits.DEFAULT] = { value = false },
                [traits.HTTP_QUERY] = { name = "excludeProperties" },
            },
        }),
        assetModelVersion = schema.new({
            id = id.from(_N, "DescribeAssetModelInput", "assetModelVersion"),
            type = "string",
            name = "assetModelVersion",
            target_id = prelude.String.id,
            traits = {
                [traits.HTTP_QUERY] = { name = "assetModelVersion" },
            },
        }),
    },
})

M.InterfaceRelationship = schema.new({
    id = id.from(_N, "InterfaceRelationship"),
    type = "structure",
    members = {
        id = schema.new({
            id = id.from(_N, "InterfaceRelationship", "id"),
            type = "string",
            name = "id",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.DescribeAssetModelOutput = schema.new({
    id = id.from(_N, "DescribeAssetModelResponse"),
    type = "structure",
    members = {
        assetModelId = schema.new({
            id = id.from(_N, "DescribeAssetModelOutput", "assetModelId"),
            type = "string",
            name = "assetModelId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        assetModelExternalId = schema.new({
            id = id.from(_N, "DescribeAssetModelOutput", "assetModelExternalId"),
            type = "string",
            name = "assetModelExternalId",
            target_id = prelude.String.id,
        }),
        assetModelArn = schema.new({
            id = id.from(_N, "DescribeAssetModelOutput", "assetModelArn"),
            type = "string",
            name = "assetModelArn",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        assetModelName = schema.new({
            id = id.from(_N, "DescribeAssetModelOutput", "assetModelName"),
            type = "string",
            name = "assetModelName",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        assetModelType = schema.new({
            id = id.from(_N, "DescribeAssetModelOutput", "assetModelType"),
            type = "string",
            name = "assetModelType",
            target_id = prelude.String.id,
        }),
        assetModelDescription = schema.new({
            id = id.from(_N, "DescribeAssetModelOutput", "assetModelDescription"),
            type = "string",
            name = "assetModelDescription",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        assetModelProperties = schema.new({
            id = id.from(_N, "DescribeAssetModelOutput", "assetModelProperties"),
            type = "list",
            name = "assetModelProperties",
            target_id = prelude.Document.id,
            list_member = M.AssetModelProperty,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        assetModelHierarchies = schema.new({
            id = id.from(_N, "DescribeAssetModelOutput", "assetModelHierarchies"),
            type = "list",
            name = "assetModelHierarchies",
            target_id = prelude.Document.id,
            list_member = M.AssetModelHierarchy,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        assetModelCompositeModels = schema.new({
            id = id.from(_N, "DescribeAssetModelOutput", "assetModelCompositeModels"),
            type = "list",
            name = "assetModelCompositeModels",
            target_id = prelude.Document.id,
            list_member = M.AssetModelCompositeModel,
        }),
        assetModelCompositeModelSummaries = schema.new({
            id = id.from(_N, "DescribeAssetModelOutput", "assetModelCompositeModelSummaries"),
            type = "list",
            name = "assetModelCompositeModelSummaries",
            target_id = prelude.Document.id,
            list_member = M.AssetModelCompositeModelSummary,
        }),
        assetModelCreationDate = schema.new({
            id = id.from(_N, "DescribeAssetModelOutput", "assetModelCreationDate"),
            type = "timestamp",
            name = "assetModelCreationDate",
            target_id = prelude.Timestamp.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        assetModelLastUpdateDate = schema.new({
            id = id.from(_N, "DescribeAssetModelOutput", "assetModelLastUpdateDate"),
            type = "timestamp",
            name = "assetModelLastUpdateDate",
            target_id = prelude.Timestamp.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        assetModelStatus = schema.new({
            id = id.from(_N, "DescribeAssetModelOutput", "assetModelStatus"),
            type = "structure",
            name = "assetModelStatus",
            target_id = id.from(_N, "AssetModelStatus"),
            target = M.AssetModelStatus,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        assetModelVersion = schema.new({
            id = id.from(_N, "DescribeAssetModelOutput", "assetModelVersion"),
            type = "string",
            name = "assetModelVersion",
            target_id = prelude.String.id,
        }),
        interfaceDetails = schema.new({
            id = id.from(_N, "DescribeAssetModelOutput", "interfaceDetails"),
            type = "list",
            name = "interfaceDetails",
            target_id = prelude.Document.id,
            list_member = M.InterfaceRelationship,
        }),
        eTag = schema.new({
            id = id.from(_N, "DescribeAssetModelOutput", "eTag"),
            type = "string",
            name = "eTag",
            target_id = prelude.String.id,
            traits = {
                [traits.HTTP_HEADER] = { name = "ETag" },
            },
        }),
    },
})

M.DescribeAssetModelCompositeModelInput = schema.new({
    id = id.from(_N, "DescribeAssetModelCompositeModelRequest"),
    type = "structure",
    members = {
        assetModelId = schema.new({
            id = id.from(_N, "DescribeAssetModelCompositeModelInput", "assetModelId"),
            type = "string",
            name = "assetModelId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
        assetModelCompositeModelId = schema.new({
            id = id.from(_N, "DescribeAssetModelCompositeModelInput", "assetModelCompositeModelId"),
            type = "string",
            name = "assetModelCompositeModelId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
        assetModelVersion = schema.new({
            id = id.from(_N, "DescribeAssetModelCompositeModelInput", "assetModelVersion"),
            type = "string",
            name = "assetModelVersion",
            target_id = prelude.String.id,
            traits = {
                [traits.HTTP_QUERY] = { name = "assetModelVersion" },
            },
        }),
    },
})

M.CompositionRelationshipItem = schema.new({
    id = id.from(_N, "CompositionRelationshipItem"),
    type = "structure",
    members = {
        id = schema.new({
            id = id.from(_N, "CompositionRelationshipItem", "id"),
            type = "string",
            name = "id",
            target_id = prelude.String.id,
        }),
    },
})

M.CompositionDetails = schema.new({
    id = id.from(_N, "CompositionDetails"),
    type = "structure",
    members = {
        compositionRelationship = schema.new({
            id = id.from(_N, "CompositionDetails", "compositionRelationship"),
            type = "list",
            name = "compositionRelationship",
            target_id = prelude.Document.id,
            list_member = M.CompositionRelationshipItem,
        }),
    },
})

M.DescribeAssetModelCompositeModelOutput = schema.new({
    id = id.from(_N, "DescribeAssetModelCompositeModelResponse"),
    type = "structure",
    members = {
        assetModelId = schema.new({
            id = id.from(_N, "DescribeAssetModelCompositeModelOutput", "assetModelId"),
            type = "string",
            name = "assetModelId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        assetModelCompositeModelId = schema.new({
            id = id.from(_N, "DescribeAssetModelCompositeModelOutput", "assetModelCompositeModelId"),
            type = "string",
            name = "assetModelCompositeModelId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        assetModelCompositeModelExternalId = schema.new({
            id = id.from(_N, "DescribeAssetModelCompositeModelOutput", "assetModelCompositeModelExternalId"),
            type = "string",
            name = "assetModelCompositeModelExternalId",
            target_id = prelude.String.id,
        }),
        assetModelCompositeModelPath = schema.new({
            id = id.from(_N, "DescribeAssetModelCompositeModelOutput", "assetModelCompositeModelPath"),
            type = "list",
            name = "assetModelCompositeModelPath",
            target_id = prelude.Document.id,
            list_member = M.AssetModelCompositeModelPathSegment,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        assetModelCompositeModelName = schema.new({
            id = id.from(_N, "DescribeAssetModelCompositeModelOutput", "assetModelCompositeModelName"),
            type = "string",
            name = "assetModelCompositeModelName",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        assetModelCompositeModelDescription = schema.new({
            id = id.from(_N, "DescribeAssetModelCompositeModelOutput", "assetModelCompositeModelDescription"),
            type = "string",
            name = "assetModelCompositeModelDescription",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        assetModelCompositeModelType = schema.new({
            id = id.from(_N, "DescribeAssetModelCompositeModelOutput", "assetModelCompositeModelType"),
            type = "string",
            name = "assetModelCompositeModelType",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        assetModelCompositeModelProperties = schema.new({
            id = id.from(_N, "DescribeAssetModelCompositeModelOutput", "assetModelCompositeModelProperties"),
            type = "list",
            name = "assetModelCompositeModelProperties",
            target_id = prelude.Document.id,
            list_member = M.AssetModelProperty,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        compositionDetails = schema.new({
            id = id.from(_N, "DescribeAssetModelCompositeModelOutput", "compositionDetails"),
            type = "structure",
            name = "compositionDetails",
            target_id = id.from(_N, "CompositionDetails"),
            target = M.CompositionDetails,
        }),
        assetModelCompositeModelSummaries = schema.new({
            id = id.from(_N, "DescribeAssetModelCompositeModelOutput", "assetModelCompositeModelSummaries"),
            type = "list",
            name = "assetModelCompositeModelSummaries",
            target_id = prelude.Document.id,
            list_member = M.AssetModelCompositeModelSummary,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        actionDefinitions = schema.new({
            id = id.from(_N, "DescribeAssetModelCompositeModelOutput", "actionDefinitions"),
            type = "list",
            name = "actionDefinitions",
            target_id = prelude.Document.id,
            list_member = M.ActionDefinition,
        }),
    },
})

M.DescribeAssetModelInterfaceRelationshipInput = schema.new({
    id = id.from(_N, "DescribeAssetModelInterfaceRelationshipRequest"),
    type = "structure",
    members = {
        assetModelId = schema.new({
            id = id.from(_N, "DescribeAssetModelInterfaceRelationshipInput", "assetModelId"),
            type = "string",
            name = "assetModelId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
        interfaceAssetModelId = schema.new({
            id = id.from(_N, "DescribeAssetModelInterfaceRelationshipInput", "interfaceAssetModelId"),
            type = "string",
            name = "interfaceAssetModelId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
    },
})

M.HierarchyMapping = schema.new({
    id = id.from(_N, "HierarchyMapping"),
    type = "structure",
    members = {
        assetModelHierarchyId = schema.new({
            id = id.from(_N, "HierarchyMapping", "assetModelHierarchyId"),
            type = "string",
            name = "assetModelHierarchyId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        interfaceAssetModelHierarchyId = schema.new({
            id = id.from(_N, "HierarchyMapping", "interfaceAssetModelHierarchyId"),
            type = "string",
            name = "interfaceAssetModelHierarchyId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.PropertyMapping = schema.new({
    id = id.from(_N, "PropertyMapping"),
    type = "structure",
    members = {
        assetModelPropertyId = schema.new({
            id = id.from(_N, "PropertyMapping", "assetModelPropertyId"),
            type = "string",
            name = "assetModelPropertyId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        interfaceAssetModelPropertyId = schema.new({
            id = id.from(_N, "PropertyMapping", "interfaceAssetModelPropertyId"),
            type = "string",
            name = "interfaceAssetModelPropertyId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.DescribeAssetModelInterfaceRelationshipOutput = schema.new({
    id = id.from(_N, "DescribeAssetModelInterfaceRelationshipResponse"),
    type = "structure",
    members = {
        assetModelId = schema.new({
            id = id.from(_N, "DescribeAssetModelInterfaceRelationshipOutput", "assetModelId"),
            type = "string",
            name = "assetModelId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        interfaceAssetModelId = schema.new({
            id = id.from(_N, "DescribeAssetModelInterfaceRelationshipOutput", "interfaceAssetModelId"),
            type = "string",
            name = "interfaceAssetModelId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        propertyMappings = schema.new({
            id = id.from(_N, "DescribeAssetModelInterfaceRelationshipOutput", "propertyMappings"),
            type = "list",
            name = "propertyMappings",
            target_id = prelude.Document.id,
            list_member = M.PropertyMapping,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        hierarchyMappings = schema.new({
            id = id.from(_N, "DescribeAssetModelInterfaceRelationshipOutput", "hierarchyMappings"),
            type = "list",
            name = "hierarchyMappings",
            target_id = prelude.Document.id,
            list_member = M.HierarchyMapping,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.DescribeAssetPropertyInput = schema.new({
    id = id.from(_N, "DescribeAssetPropertyRequest"),
    type = "structure",
    members = {
        assetId = schema.new({
            id = id.from(_N, "DescribeAssetPropertyInput", "assetId"),
            type = "string",
            name = "assetId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
        propertyId = schema.new({
            id = id.from(_N, "DescribeAssetPropertyInput", "propertyId"),
            type = "string",
            name = "propertyId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
    },
})

M.Property = schema.new({
    id = id.from(_N, "Property"),
    type = "structure",
    members = {
        id = schema.new({
            id = id.from(_N, "Property", "id"),
            type = "string",
            name = "id",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        externalId = schema.new({
            id = id.from(_N, "Property", "externalId"),
            type = "string",
            name = "externalId",
            target_id = prelude.String.id,
        }),
        name = schema.new({
            id = id.from(_N, "Property", "name"),
            type = "string",
            name = "name",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        alias = schema.new({
            id = id.from(_N, "Property", "alias"),
            type = "string",
            name = "alias",
            target_id = prelude.String.id,
        }),
        notification = schema.new({
            id = id.from(_N, "Property", "notification"),
            type = "structure",
            name = "notification",
            target_id = id.from(_N, "PropertyNotification"),
            target = M.PropertyNotification,
        }),
        dataType = schema.new({
            id = id.from(_N, "Property", "dataType"),
            type = "string",
            name = "dataType",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        unit = schema.new({
            id = id.from(_N, "Property", "unit"),
            type = "string",
            name = "unit",
            target_id = prelude.String.id,
        }),
        type = schema.new({
            id = id.from(_N, "Property", "type"),
            type = "structure",
            name = "type",
            target_id = id.from(_N, "PropertyType"),
            target = M.PropertyType,
        }),
        path = schema.new({
            id = id.from(_N, "Property", "path"),
            type = "list",
            name = "path",
            target_id = prelude.Document.id,
            list_member = M.AssetPropertyPathSegment,
        }),
    },
})

M.CompositeModelProperty = schema.new({
    id = id.from(_N, "CompositeModelProperty"),
    type = "structure",
    members = {
        name = schema.new({
            id = id.from(_N, "CompositeModelProperty", "name"),
            type = "string",
            name = "name",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        type = schema.new({
            id = id.from(_N, "CompositeModelProperty", "type"),
            type = "string",
            name = "type",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        assetProperty = schema.new({
            id = id.from(_N, "CompositeModelProperty", "assetProperty"),
            type = "structure",
            name = "assetProperty",
            target_id = id.from(_N, "Property"),
            target = M.Property,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        id = schema.new({
            id = id.from(_N, "CompositeModelProperty", "id"),
            type = "string",
            name = "id",
            target_id = prelude.String.id,
        }),
        externalId = schema.new({
            id = id.from(_N, "CompositeModelProperty", "externalId"),
            type = "string",
            name = "externalId",
            target_id = prelude.String.id,
        }),
    },
})

M.DescribeAssetPropertyOutput = schema.new({
    id = id.from(_N, "DescribeAssetPropertyResponse"),
    type = "structure",
    members = {
        assetId = schema.new({
            id = id.from(_N, "DescribeAssetPropertyOutput", "assetId"),
            type = "string",
            name = "assetId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        assetExternalId = schema.new({
            id = id.from(_N, "DescribeAssetPropertyOutput", "assetExternalId"),
            type = "string",
            name = "assetExternalId",
            target_id = prelude.String.id,
        }),
        assetName = schema.new({
            id = id.from(_N, "DescribeAssetPropertyOutput", "assetName"),
            type = "string",
            name = "assetName",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        assetModelId = schema.new({
            id = id.from(_N, "DescribeAssetPropertyOutput", "assetModelId"),
            type = "string",
            name = "assetModelId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        assetProperty = schema.new({
            id = id.from(_N, "DescribeAssetPropertyOutput", "assetProperty"),
            type = "structure",
            name = "assetProperty",
            target_id = id.from(_N, "Property"),
            target = M.Property,
        }),
        compositeModel = schema.new({
            id = id.from(_N, "DescribeAssetPropertyOutput", "compositeModel"),
            type = "structure",
            name = "compositeModel",
            target_id = id.from(_N, "CompositeModelProperty"),
            target = M.CompositeModelProperty,
        }),
    },
})

M.DescribeBulkImportJobInput = schema.new({
    id = id.from(_N, "DescribeBulkImportJobRequest"),
    type = "structure",
    members = {
        jobId = schema.new({
            id = id.from(_N, "DescribeBulkImportJobInput", "jobId"),
            type = "string",
            name = "jobId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
    },
})

M.DescribeBulkImportJobOutput = schema.new({
    id = id.from(_N, "DescribeBulkImportJobResponse"),
    type = "structure",
    members = {
        jobId = schema.new({
            id = id.from(_N, "DescribeBulkImportJobOutput", "jobId"),
            type = "string",
            name = "jobId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        jobName = schema.new({
            id = id.from(_N, "DescribeBulkImportJobOutput", "jobName"),
            type = "string",
            name = "jobName",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        jobStatus = schema.new({
            id = id.from(_N, "DescribeBulkImportJobOutput", "jobStatus"),
            type = "string",
            name = "jobStatus",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        jobRoleArn = schema.new({
            id = id.from(_N, "DescribeBulkImportJobOutput", "jobRoleArn"),
            type = "string",
            name = "jobRoleArn",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        files = schema.new({
            id = id.from(_N, "DescribeBulkImportJobOutput", "files"),
            type = "list",
            name = "files",
            target_id = prelude.Document.id,
            list_member = M.File,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        errorReportLocation = schema.new({
            id = id.from(_N, "DescribeBulkImportJobOutput", "errorReportLocation"),
            type = "structure",
            name = "errorReportLocation",
            target_id = id.from(_N, "ErrorReportLocation"),
            target = M.ErrorReportLocation,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        jobConfiguration = schema.new({
            id = id.from(_N, "DescribeBulkImportJobOutput", "jobConfiguration"),
            type = "structure",
            name = "jobConfiguration",
            target_id = id.from(_N, "JobConfiguration"),
            target = M.JobConfiguration,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        jobCreationDate = schema.new({
            id = id.from(_N, "DescribeBulkImportJobOutput", "jobCreationDate"),
            type = "timestamp",
            name = "jobCreationDate",
            target_id = prelude.Timestamp.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        jobLastUpdateDate = schema.new({
            id = id.from(_N, "DescribeBulkImportJobOutput", "jobLastUpdateDate"),
            type = "timestamp",
            name = "jobLastUpdateDate",
            target_id = prelude.Timestamp.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        adaptiveIngestion = schema.new({
            id = id.from(_N, "DescribeBulkImportJobOutput", "adaptiveIngestion"),
            type = "boolean",
            name = "adaptiveIngestion",
            target_id = prelude.Boolean.id,
        }),
        deleteFilesAfterImport = schema.new({
            id = id.from(_N, "DescribeBulkImportJobOutput", "deleteFilesAfterImport"),
            type = "boolean",
            name = "deleteFilesAfterImport",
            target_id = prelude.Boolean.id,
        }),
    },
})

M.DescribeComputationModelInput = schema.new({
    id = id.from(_N, "DescribeComputationModelRequest"),
    type = "structure",
    members = {
        computationModelId = schema.new({
            id = id.from(_N, "DescribeComputationModelInput", "computationModelId"),
            type = "string",
            name = "computationModelId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
        computationModelVersion = schema.new({
            id = id.from(_N, "DescribeComputationModelInput", "computationModelVersion"),
            type = "string",
            name = "computationModelVersion",
            target_id = prelude.String.id,
            traits = {
                [traits.HTTP_QUERY] = { name = "computationModelVersion" },
            },
        }),
    },
})

M.DescribeComputationModelExecutionSummaryInput = schema.new({
    id = id.from(_N, "DescribeComputationModelExecutionSummaryRequest"),
    type = "structure",
    members = {
        computationModelId = schema.new({
            id = id.from(_N, "DescribeComputationModelExecutionSummaryInput", "computationModelId"),
            type = "string",
            name = "computationModelId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
        resolveToResourceType = schema.new({
            id = id.from(_N, "DescribeComputationModelExecutionSummaryInput", "resolveToResourceType"),
            type = "string",
            name = "resolveToResourceType",
            target_id = prelude.String.id,
            traits = {
                [traits.HTTP_QUERY] = { name = "resolveToResourceType" },
            },
        }),
        resolveToResourceId = schema.new({
            id = id.from(_N, "DescribeComputationModelExecutionSummaryInput", "resolveToResourceId"),
            type = "string",
            name = "resolveToResourceId",
            target_id = prelude.String.id,
            traits = {
                [traits.HTTP_QUERY] = { name = "resolveToResourceId" },
            },
        }),
    },
})

M.DescribeComputationModelExecutionSummaryOutput = schema.new({
    id = id.from(_N, "DescribeComputationModelExecutionSummaryResponse"),
    type = "structure",
    members = {
        computationModelId = schema.new({
            id = id.from(_N, "DescribeComputationModelExecutionSummaryOutput", "computationModelId"),
            type = "string",
            name = "computationModelId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        resolveTo = schema.new({
            id = id.from(_N, "DescribeComputationModelExecutionSummaryOutput", "resolveTo"),
            type = "structure",
            name = "resolveTo",
            target_id = id.from(_N, "ResolveTo"),
            target = M.ResolveTo,
        }),
        computationModelExecutionSummary = schema.new({
            id = id.from(_N, "DescribeComputationModelExecutionSummaryOutput", "computationModelExecutionSummary"),
            type = "map",
            name = "computationModelExecutionSummary",
            target_id = prelude.Document.id,
            map_key = prelude.String,
            map_value = prelude.String,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.DescribeDashboardInput = schema.new({
    id = id.from(_N, "DescribeDashboardRequest"),
    type = "structure",
    members = {
        dashboardId = schema.new({
            id = id.from(_N, "DescribeDashboardInput", "dashboardId"),
            type = "string",
            name = "dashboardId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
    },
})

M.DescribeDashboardOutput = schema.new({
    id = id.from(_N, "DescribeDashboardResponse"),
    type = "structure",
    members = {
        dashboardId = schema.new({
            id = id.from(_N, "DescribeDashboardOutput", "dashboardId"),
            type = "string",
            name = "dashboardId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        dashboardArn = schema.new({
            id = id.from(_N, "DescribeDashboardOutput", "dashboardArn"),
            type = "string",
            name = "dashboardArn",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        dashboardName = schema.new({
            id = id.from(_N, "DescribeDashboardOutput", "dashboardName"),
            type = "string",
            name = "dashboardName",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        projectId = schema.new({
            id = id.from(_N, "DescribeDashboardOutput", "projectId"),
            type = "string",
            name = "projectId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        dashboardDescription = schema.new({
            id = id.from(_N, "DescribeDashboardOutput", "dashboardDescription"),
            type = "string",
            name = "dashboardDescription",
            target_id = prelude.String.id,
        }),
        dashboardDefinition = schema.new({
            id = id.from(_N, "DescribeDashboardOutput", "dashboardDefinition"),
            type = "string",
            name = "dashboardDefinition",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        dashboardCreationDate = schema.new({
            id = id.from(_N, "DescribeDashboardOutput", "dashboardCreationDate"),
            type = "timestamp",
            name = "dashboardCreationDate",
            target_id = prelude.Timestamp.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        dashboardLastUpdateDate = schema.new({
            id = id.from(_N, "DescribeDashboardOutput", "dashboardLastUpdateDate"),
            type = "timestamp",
            name = "dashboardLastUpdateDate",
            target_id = prelude.Timestamp.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.DescribeDatasetInput = schema.new({
    id = id.from(_N, "DescribeDatasetRequest"),
    type = "structure",
    members = {
        datasetId = schema.new({
            id = id.from(_N, "DescribeDatasetInput", "datasetId"),
            type = "string",
            name = "datasetId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
    },
})

M.DescribeDatasetOutput = schema.new({
    id = id.from(_N, "DescribeDatasetResponse"),
    type = "structure",
    members = {
        datasetId = schema.new({
            id = id.from(_N, "DescribeDatasetOutput", "datasetId"),
            type = "string",
            name = "datasetId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        datasetArn = schema.new({
            id = id.from(_N, "DescribeDatasetOutput", "datasetArn"),
            type = "string",
            name = "datasetArn",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        datasetName = schema.new({
            id = id.from(_N, "DescribeDatasetOutput", "datasetName"),
            type = "string",
            name = "datasetName",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        datasetDescription = schema.new({
            id = id.from(_N, "DescribeDatasetOutput", "datasetDescription"),
            type = "string",
            name = "datasetDescription",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        datasetSource = schema.new({
            id = id.from(_N, "DescribeDatasetOutput", "datasetSource"),
            type = "structure",
            name = "datasetSource",
            target_id = id.from(_N, "DatasetSource"),
            target = M.DatasetSource,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        datasetStatus = schema.new({
            id = id.from(_N, "DescribeDatasetOutput", "datasetStatus"),
            type = "structure",
            name = "datasetStatus",
            target_id = id.from(_N, "DatasetStatus"),
            target = M.DatasetStatus,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        datasetCreationDate = schema.new({
            id = id.from(_N, "DescribeDatasetOutput", "datasetCreationDate"),
            type = "timestamp",
            name = "datasetCreationDate",
            target_id = prelude.Timestamp.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        datasetLastUpdateDate = schema.new({
            id = id.from(_N, "DescribeDatasetOutput", "datasetLastUpdateDate"),
            type = "timestamp",
            name = "datasetLastUpdateDate",
            target_id = prelude.Timestamp.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        datasetVersion = schema.new({
            id = id.from(_N, "DescribeDatasetOutput", "datasetVersion"),
            type = "string",
            name = "datasetVersion",
            target_id = prelude.String.id,
        }),
    },
})

M.DescribeDefaultEncryptionConfigurationInput = schema.new({
    id = id.from(_N, "DescribeDefaultEncryptionConfigurationRequest"),
    type = "structure",
})

M.ConfigurationErrorDetails = schema.new({
    id = id.from(_N, "ConfigurationErrorDetails"),
    type = "structure",
    members = {
        code = schema.new({
            id = id.from(_N, "ConfigurationErrorDetails", "code"),
            type = "string",
            name = "code",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        message = schema.new({
            id = id.from(_N, "ConfigurationErrorDetails", "message"),
            type = "string",
            name = "message",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.ConfigurationStatus = schema.new({
    id = id.from(_N, "ConfigurationStatus"),
    type = "structure",
    members = {
        state = schema.new({
            id = id.from(_N, "ConfigurationStatus", "state"),
            type = "string",
            name = "state",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        error = schema.new({
            id = id.from(_N, "ConfigurationStatus", "error"),
            type = "structure",
            name = "error",
            target_id = id.from(_N, "ConfigurationErrorDetails"),
            target = M.ConfigurationErrorDetails,
        }),
    },
})

M.DescribeDefaultEncryptionConfigurationOutput = schema.new({
    id = id.from(_N, "DescribeDefaultEncryptionConfigurationResponse"),
    type = "structure",
    members = {
        encryptionType = schema.new({
            id = id.from(_N, "DescribeDefaultEncryptionConfigurationOutput", "encryptionType"),
            type = "string",
            name = "encryptionType",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        kmsKeyArn = schema.new({
            id = id.from(_N, "DescribeDefaultEncryptionConfigurationOutput", "kmsKeyArn"),
            type = "string",
            name = "kmsKeyArn",
            target_id = prelude.String.id,
        }),
        configurationStatus = schema.new({
            id = id.from(_N, "DescribeDefaultEncryptionConfigurationOutput", "configurationStatus"),
            type = "structure",
            name = "configurationStatus",
            target_id = id.from(_N, "ConfigurationStatus"),
            target = M.ConfigurationStatus,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.DescribeExecutionInput = schema.new({
    id = id.from(_N, "DescribeExecutionRequest"),
    type = "structure",
    members = {
        executionId = schema.new({
            id = id.from(_N, "DescribeExecutionInput", "executionId"),
            type = "string",
            name = "executionId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
    },
})

M.ExecutionStatus = schema.new({
    id = id.from(_N, "ExecutionStatus"),
    type = "structure",
    members = {
        state = schema.new({
            id = id.from(_N, "ExecutionStatus", "state"),
            type = "string",
            name = "state",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.DescribeExecutionOutput = schema.new({
    id = id.from(_N, "DescribeExecutionResponse"),
    type = "structure",
    members = {
        executionId = schema.new({
            id = id.from(_N, "DescribeExecutionOutput", "executionId"),
            type = "string",
            name = "executionId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        actionType = schema.new({
            id = id.from(_N, "DescribeExecutionOutput", "actionType"),
            type = "string",
            name = "actionType",
            target_id = prelude.String.id,
        }),
        targetResource = schema.new({
            id = id.from(_N, "DescribeExecutionOutput", "targetResource"),
            type = "structure",
            name = "targetResource",
            target_id = id.from(_N, "TargetResource"),
            target = M.TargetResource,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        targetResourceVersion = schema.new({
            id = id.from(_N, "DescribeExecutionOutput", "targetResourceVersion"),
            type = "string",
            name = "targetResourceVersion",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        resolveTo = schema.new({
            id = id.from(_N, "DescribeExecutionOutput", "resolveTo"),
            type = "structure",
            name = "resolveTo",
            target_id = id.from(_N, "ResolveTo"),
            target = M.ResolveTo,
        }),
        executionStartTime = schema.new({
            id = id.from(_N, "DescribeExecutionOutput", "executionStartTime"),
            type = "timestamp",
            name = "executionStartTime",
            target_id = prelude.Timestamp.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        executionEndTime = schema.new({
            id = id.from(_N, "DescribeExecutionOutput", "executionEndTime"),
            type = "timestamp",
            name = "executionEndTime",
            target_id = prelude.Timestamp.id,
        }),
        executionStatus = schema.new({
            id = id.from(_N, "DescribeExecutionOutput", "executionStatus"),
            type = "structure",
            name = "executionStatus",
            target_id = id.from(_N, "ExecutionStatus"),
            target = M.ExecutionStatus,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        executionResult = schema.new({
            id = id.from(_N, "DescribeExecutionOutput", "executionResult"),
            type = "map",
            name = "executionResult",
            target_id = prelude.Document.id,
            map_key = prelude.String,
            map_value = prelude.String,
        }),
        executionDetails = schema.new({
            id = id.from(_N, "DescribeExecutionOutput", "executionDetails"),
            type = "map",
            name = "executionDetails",
            target_id = prelude.Document.id,
            map_key = prelude.String,
            map_value = prelude.String,
        }),
        executionEntityVersion = schema.new({
            id = id.from(_N, "DescribeExecutionOutput", "executionEntityVersion"),
            type = "string",
            name = "executionEntityVersion",
            target_id = prelude.String.id,
        }),
    },
})

M.DescribeGatewayInput = schema.new({
    id = id.from(_N, "DescribeGatewayRequest"),
    type = "structure",
    members = {
        gatewayId = schema.new({
            id = id.from(_N, "DescribeGatewayInput", "gatewayId"),
            type = "string",
            name = "gatewayId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
    },
})

M.GatewayCapabilitySummary = schema.new({
    id = id.from(_N, "GatewayCapabilitySummary"),
    type = "structure",
    members = {
        capabilityNamespace = schema.new({
            id = id.from(_N, "GatewayCapabilitySummary", "capabilityNamespace"),
            type = "string",
            name = "capabilityNamespace",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        capabilitySyncStatus = schema.new({
            id = id.from(_N, "GatewayCapabilitySummary", "capabilitySyncStatus"),
            type = "string",
            name = "capabilitySyncStatus",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.DescribeGatewayOutput = schema.new({
    id = id.from(_N, "DescribeGatewayResponse"),
    type = "structure",
    members = {
        gatewayId = schema.new({
            id = id.from(_N, "DescribeGatewayOutput", "gatewayId"),
            type = "string",
            name = "gatewayId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        gatewayName = schema.new({
            id = id.from(_N, "DescribeGatewayOutput", "gatewayName"),
            type = "string",
            name = "gatewayName",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        gatewayArn = schema.new({
            id = id.from(_N, "DescribeGatewayOutput", "gatewayArn"),
            type = "string",
            name = "gatewayArn",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        gatewayPlatform = schema.new({
            id = id.from(_N, "DescribeGatewayOutput", "gatewayPlatform"),
            type = "structure",
            name = "gatewayPlatform",
            target_id = id.from(_N, "GatewayPlatform"),
            target = M.GatewayPlatform,
        }),
        gatewayVersion = schema.new({
            id = id.from(_N, "DescribeGatewayOutput", "gatewayVersion"),
            type = "string",
            name = "gatewayVersion",
            target_id = prelude.String.id,
        }),
        gatewayCapabilitySummaries = schema.new({
            id = id.from(_N, "DescribeGatewayOutput", "gatewayCapabilitySummaries"),
            type = "list",
            name = "gatewayCapabilitySummaries",
            target_id = prelude.Document.id,
            list_member = M.GatewayCapabilitySummary,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        creationDate = schema.new({
            id = id.from(_N, "DescribeGatewayOutput", "creationDate"),
            type = "timestamp",
            name = "creationDate",
            target_id = prelude.Timestamp.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        lastUpdateDate = schema.new({
            id = id.from(_N, "DescribeGatewayOutput", "lastUpdateDate"),
            type = "timestamp",
            name = "lastUpdateDate",
            target_id = prelude.Timestamp.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.DescribeGatewayCapabilityConfigurationInput = schema.new({
    id = id.from(_N, "DescribeGatewayCapabilityConfigurationRequest"),
    type = "structure",
    members = {
        gatewayId = schema.new({
            id = id.from(_N, "DescribeGatewayCapabilityConfigurationInput", "gatewayId"),
            type = "string",
            name = "gatewayId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
        capabilityNamespace = schema.new({
            id = id.from(_N, "DescribeGatewayCapabilityConfigurationInput", "capabilityNamespace"),
            type = "string",
            name = "capabilityNamespace",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
    },
})

M.DescribeGatewayCapabilityConfigurationOutput = schema.new({
    id = id.from(_N, "DescribeGatewayCapabilityConfigurationResponse"),
    type = "structure",
    members = {
        gatewayId = schema.new({
            id = id.from(_N, "DescribeGatewayCapabilityConfigurationOutput", "gatewayId"),
            type = "string",
            name = "gatewayId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        capabilityNamespace = schema.new({
            id = id.from(_N, "DescribeGatewayCapabilityConfigurationOutput", "capabilityNamespace"),
            type = "string",
            name = "capabilityNamespace",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        capabilityConfiguration = schema.new({
            id = id.from(_N, "DescribeGatewayCapabilityConfigurationOutput", "capabilityConfiguration"),
            type = "string",
            name = "capabilityConfiguration",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        capabilitySyncStatus = schema.new({
            id = id.from(_N, "DescribeGatewayCapabilityConfigurationOutput", "capabilitySyncStatus"),
            type = "string",
            name = "capabilitySyncStatus",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.DescribeLoggingOptionsInput = schema.new({
    id = id.from(_N, "DescribeLoggingOptionsRequest"),
    type = "structure",
})

M.LoggingOptions = schema.new({
    id = id.from(_N, "LoggingOptions"),
    type = "structure",
    members = {
        level = schema.new({
            id = id.from(_N, "LoggingOptions", "level"),
            type = "string",
            name = "level",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.DescribeLoggingOptionsOutput = schema.new({
    id = id.from(_N, "DescribeLoggingOptionsResponse"),
    type = "structure",
    members = {
        loggingOptions = schema.new({
            id = id.from(_N, "DescribeLoggingOptionsOutput", "loggingOptions"),
            type = "structure",
            name = "loggingOptions",
            target_id = id.from(_N, "LoggingOptions"),
            target = M.LoggingOptions,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.DescribePortalInput = schema.new({
    id = id.from(_N, "DescribePortalRequest"),
    type = "structure",
    members = {
        portalId = schema.new({
            id = id.from(_N, "DescribePortalInput", "portalId"),
            type = "string",
            name = "portalId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
    },
})

M.ImageLocation = schema.new({
    id = id.from(_N, "ImageLocation"),
    type = "structure",
    members = {
        id = schema.new({
            id = id.from(_N, "ImageLocation", "id"),
            type = "string",
            name = "id",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        url = schema.new({
            id = id.from(_N, "ImageLocation", "url"),
            type = "string",
            name = "url",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.DescribePortalOutput = schema.new({
    id = id.from(_N, "DescribePortalResponse"),
    type = "structure",
    members = {
        portalId = schema.new({
            id = id.from(_N, "DescribePortalOutput", "portalId"),
            type = "string",
            name = "portalId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        portalArn = schema.new({
            id = id.from(_N, "DescribePortalOutput", "portalArn"),
            type = "string",
            name = "portalArn",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        portalName = schema.new({
            id = id.from(_N, "DescribePortalOutput", "portalName"),
            type = "string",
            name = "portalName",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        portalDescription = schema.new({
            id = id.from(_N, "DescribePortalOutput", "portalDescription"),
            type = "string",
            name = "portalDescription",
            target_id = prelude.String.id,
        }),
        portalClientId = schema.new({
            id = id.from(_N, "DescribePortalOutput", "portalClientId"),
            type = "string",
            name = "portalClientId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        portalStartUrl = schema.new({
            id = id.from(_N, "DescribePortalOutput", "portalStartUrl"),
            type = "string",
            name = "portalStartUrl",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        portalContactEmail = schema.new({
            id = id.from(_N, "DescribePortalOutput", "portalContactEmail"),
            type = "string",
            name = "portalContactEmail",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        portalStatus = schema.new({
            id = id.from(_N, "DescribePortalOutput", "portalStatus"),
            type = "structure",
            name = "portalStatus",
            target_id = id.from(_N, "PortalStatus"),
            target = M.PortalStatus,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        portalCreationDate = schema.new({
            id = id.from(_N, "DescribePortalOutput", "portalCreationDate"),
            type = "timestamp",
            name = "portalCreationDate",
            target_id = prelude.Timestamp.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        portalLastUpdateDate = schema.new({
            id = id.from(_N, "DescribePortalOutput", "portalLastUpdateDate"),
            type = "timestamp",
            name = "portalLastUpdateDate",
            target_id = prelude.Timestamp.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        portalLogoImageLocation = schema.new({
            id = id.from(_N, "DescribePortalOutput", "portalLogoImageLocation"),
            type = "structure",
            name = "portalLogoImageLocation",
            target_id = id.from(_N, "ImageLocation"),
            target = M.ImageLocation,
        }),
        roleArn = schema.new({
            id = id.from(_N, "DescribePortalOutput", "roleArn"),
            type = "string",
            name = "roleArn",
            target_id = prelude.String.id,
        }),
        portalAuthMode = schema.new({
            id = id.from(_N, "DescribePortalOutput", "portalAuthMode"),
            type = "string",
            name = "portalAuthMode",
            target_id = prelude.String.id,
        }),
        notificationSenderEmail = schema.new({
            id = id.from(_N, "DescribePortalOutput", "notificationSenderEmail"),
            type = "string",
            name = "notificationSenderEmail",
            target_id = prelude.String.id,
        }),
        alarms = schema.new({
            id = id.from(_N, "DescribePortalOutput", "alarms"),
            type = "structure",
            name = "alarms",
            target_id = id.from(_N, "Alarms"),
            target = M.Alarms,
        }),
        portalType = schema.new({
            id = id.from(_N, "DescribePortalOutput", "portalType"),
            type = "string",
            name = "portalType",
            target_id = prelude.String.id,
        }),
        portalTypeConfiguration = schema.new({
            id = id.from(_N, "DescribePortalOutput", "portalTypeConfiguration"),
            type = "map",
            name = "portalTypeConfiguration",
            target_id = prelude.Document.id,
            map_key = prelude.String,
            map_value = M.PortalTypeEntry,
        }),
    },
})

M.DescribeProjectInput = schema.new({
    id = id.from(_N, "DescribeProjectRequest"),
    type = "structure",
    members = {
        projectId = schema.new({
            id = id.from(_N, "DescribeProjectInput", "projectId"),
            type = "string",
            name = "projectId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
    },
})

M.DescribeProjectOutput = schema.new({
    id = id.from(_N, "DescribeProjectResponse"),
    type = "structure",
    members = {
        projectId = schema.new({
            id = id.from(_N, "DescribeProjectOutput", "projectId"),
            type = "string",
            name = "projectId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        projectArn = schema.new({
            id = id.from(_N, "DescribeProjectOutput", "projectArn"),
            type = "string",
            name = "projectArn",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        projectName = schema.new({
            id = id.from(_N, "DescribeProjectOutput", "projectName"),
            type = "string",
            name = "projectName",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        portalId = schema.new({
            id = id.from(_N, "DescribeProjectOutput", "portalId"),
            type = "string",
            name = "portalId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        projectDescription = schema.new({
            id = id.from(_N, "DescribeProjectOutput", "projectDescription"),
            type = "string",
            name = "projectDescription",
            target_id = prelude.String.id,
        }),
        projectCreationDate = schema.new({
            id = id.from(_N, "DescribeProjectOutput", "projectCreationDate"),
            type = "timestamp",
            name = "projectCreationDate",
            target_id = prelude.Timestamp.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        projectLastUpdateDate = schema.new({
            id = id.from(_N, "DescribeProjectOutput", "projectLastUpdateDate"),
            type = "timestamp",
            name = "projectLastUpdateDate",
            target_id = prelude.Timestamp.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.DescribeStorageConfigurationInput = schema.new({
    id = id.from(_N, "DescribeStorageConfigurationRequest"),
    type = "structure",
})

M.CustomerManagedS3Storage = schema.new({
    id = id.from(_N, "CustomerManagedS3Storage"),
    type = "structure",
    members = {
        s3ResourceArn = schema.new({
            id = id.from(_N, "CustomerManagedS3Storage", "s3ResourceArn"),
            type = "string",
            name = "s3ResourceArn",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        roleArn = schema.new({
            id = id.from(_N, "CustomerManagedS3Storage", "roleArn"),
            type = "string",
            name = "roleArn",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.MultiLayerStorage = schema.new({
    id = id.from(_N, "MultiLayerStorage"),
    type = "structure",
    members = {
        customerManagedS3Storage = schema.new({
            id = id.from(_N, "MultiLayerStorage", "customerManagedS3Storage"),
            type = "structure",
            name = "customerManagedS3Storage",
            target_id = id.from(_N, "CustomerManagedS3Storage"),
            target = M.CustomerManagedS3Storage,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.RetentionPeriod = schema.new({
    id = id.from(_N, "RetentionPeriod"),
    type = "structure",
    members = {
        numberOfDays = schema.new({
            id = id.from(_N, "RetentionPeriod", "numberOfDays"),
            type = "integer",
            name = "numberOfDays",
            target_id = prelude.Integer.id,
        }),
        unlimited = schema.new({
            id = id.from(_N, "RetentionPeriod", "unlimited"),
            type = "boolean",
            name = "unlimited",
            target_id = prelude.Boolean.id,
        }),
    },
})

M.WarmTierRetentionPeriod = schema.new({
    id = id.from(_N, "WarmTierRetentionPeriod"),
    type = "structure",
    members = {
        numberOfDays = schema.new({
            id = id.from(_N, "WarmTierRetentionPeriod", "numberOfDays"),
            type = "integer",
            name = "numberOfDays",
            target_id = prelude.Integer.id,
        }),
        unlimited = schema.new({
            id = id.from(_N, "WarmTierRetentionPeriod", "unlimited"),
            type = "boolean",
            name = "unlimited",
            target_id = prelude.Boolean.id,
        }),
    },
})

M.DescribeStorageConfigurationOutput = schema.new({
    id = id.from(_N, "DescribeStorageConfigurationResponse"),
    type = "structure",
    members = {
        storageType = schema.new({
            id = id.from(_N, "DescribeStorageConfigurationOutput", "storageType"),
            type = "string",
            name = "storageType",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        multiLayerStorage = schema.new({
            id = id.from(_N, "DescribeStorageConfigurationOutput", "multiLayerStorage"),
            type = "structure",
            name = "multiLayerStorage",
            target_id = id.from(_N, "MultiLayerStorage"),
            target = M.MultiLayerStorage,
        }),
        disassociatedDataStorage = schema.new({
            id = id.from(_N, "DescribeStorageConfigurationOutput", "disassociatedDataStorage"),
            type = "string",
            name = "disassociatedDataStorage",
            target_id = prelude.String.id,
        }),
        retentionPeriod = schema.new({
            id = id.from(_N, "DescribeStorageConfigurationOutput", "retentionPeriod"),
            type = "structure",
            name = "retentionPeriod",
            target_id = id.from(_N, "RetentionPeriod"),
            target = M.RetentionPeriod,
        }),
        configurationStatus = schema.new({
            id = id.from(_N, "DescribeStorageConfigurationOutput", "configurationStatus"),
            type = "structure",
            name = "configurationStatus",
            target_id = id.from(_N, "ConfigurationStatus"),
            target = M.ConfigurationStatus,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        lastUpdateDate = schema.new({
            id = id.from(_N, "DescribeStorageConfigurationOutput", "lastUpdateDate"),
            type = "timestamp",
            name = "lastUpdateDate",
            target_id = prelude.Timestamp.id,
        }),
        warmTier = schema.new({
            id = id.from(_N, "DescribeStorageConfigurationOutput", "warmTier"),
            type = "string",
            name = "warmTier",
            target_id = prelude.String.id,
        }),
        warmTierRetentionPeriod = schema.new({
            id = id.from(_N, "DescribeStorageConfigurationOutput", "warmTierRetentionPeriod"),
            type = "structure",
            name = "warmTierRetentionPeriod",
            target_id = id.from(_N, "WarmTierRetentionPeriod"),
            target = M.WarmTierRetentionPeriod,
        }),
        disallowIngestNullNaN = schema.new({
            id = id.from(_N, "DescribeStorageConfigurationOutput", "disallowIngestNullNaN"),
            type = "boolean",
            name = "disallowIngestNullNaN",
            target_id = prelude.Boolean.id,
        }),
    },
})

M.DescribeTimeSeriesInput = schema.new({
    id = id.from(_N, "DescribeTimeSeriesRequest"),
    type = "structure",
    members = {
        alias = schema.new({
            id = id.from(_N, "DescribeTimeSeriesInput", "alias"),
            type = "string",
            name = "alias",
            target_id = prelude.String.id,
            traits = {
                [traits.HTTP_QUERY] = { name = "alias" },
            },
        }),
        assetId = schema.new({
            id = id.from(_N, "DescribeTimeSeriesInput", "assetId"),
            type = "string",
            name = "assetId",
            target_id = prelude.String.id,
            traits = {
                [traits.HTTP_QUERY] = { name = "assetId" },
            },
        }),
        propertyId = schema.new({
            id = id.from(_N, "DescribeTimeSeriesInput", "propertyId"),
            type = "string",
            name = "propertyId",
            target_id = prelude.String.id,
            traits = {
                [traits.HTTP_QUERY] = { name = "propertyId" },
            },
        }),
    },
})

M.DescribeTimeSeriesOutput = schema.new({
    id = id.from(_N, "DescribeTimeSeriesResponse"),
    type = "structure",
    members = {
        assetId = schema.new({
            id = id.from(_N, "DescribeTimeSeriesOutput", "assetId"),
            type = "string",
            name = "assetId",
            target_id = prelude.String.id,
        }),
        propertyId = schema.new({
            id = id.from(_N, "DescribeTimeSeriesOutput", "propertyId"),
            type = "string",
            name = "propertyId",
            target_id = prelude.String.id,
        }),
        alias = schema.new({
            id = id.from(_N, "DescribeTimeSeriesOutput", "alias"),
            type = "string",
            name = "alias",
            target_id = prelude.String.id,
        }),
        timeSeriesId = schema.new({
            id = id.from(_N, "DescribeTimeSeriesOutput", "timeSeriesId"),
            type = "string",
            name = "timeSeriesId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        dataType = schema.new({
            id = id.from(_N, "DescribeTimeSeriesOutput", "dataType"),
            type = "string",
            name = "dataType",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        dataTypeSpec = schema.new({
            id = id.from(_N, "DescribeTimeSeriesOutput", "dataTypeSpec"),
            type = "string",
            name = "dataTypeSpec",
            target_id = prelude.String.id,
        }),
        timeSeriesCreationDate = schema.new({
            id = id.from(_N, "DescribeTimeSeriesOutput", "timeSeriesCreationDate"),
            type = "timestamp",
            name = "timeSeriesCreationDate",
            target_id = prelude.Timestamp.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        timeSeriesLastUpdateDate = schema.new({
            id = id.from(_N, "DescribeTimeSeriesOutput", "timeSeriesLastUpdateDate"),
            type = "timestamp",
            name = "timeSeriesLastUpdateDate",
            target_id = prelude.Timestamp.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        timeSeriesArn = schema.new({
            id = id.from(_N, "DescribeTimeSeriesOutput", "timeSeriesArn"),
            type = "string",
            name = "timeSeriesArn",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.DisassociateAssetsInput = schema.new({
    id = id.from(_N, "DisassociateAssetsRequest"),
    type = "structure",
    members = {
        assetId = schema.new({
            id = id.from(_N, "DisassociateAssetsInput", "assetId"),
            type = "string",
            name = "assetId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
        hierarchyId = schema.new({
            id = id.from(_N, "DisassociateAssetsInput", "hierarchyId"),
            type = "string",
            name = "hierarchyId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        childAssetId = schema.new({
            id = id.from(_N, "DisassociateAssetsInput", "childAssetId"),
            type = "string",
            name = "childAssetId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        clientToken = schema.new({
            id = id.from(_N, "DisassociateAssetsInput", "clientToken"),
            type = "string",
            name = "clientToken",
            target_id = prelude.String.id,
            traits = {
                [traits.IDEMPOTENCY_TOKEN] = {},
            },
        }),
    },
})

M.DisassociateAssetsOutput = schema.new({
    id = id.from(_N, "Unit"),
    type = "structure",
})

M.DisassociateTimeSeriesFromAssetPropertyInput = schema.new({
    id = id.from(_N, "DisassociateTimeSeriesFromAssetPropertyRequest"),
    type = "structure",
    members = {
        alias = schema.new({
            id = id.from(_N, "DisassociateTimeSeriesFromAssetPropertyInput", "alias"),
            type = "string",
            name = "alias",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_QUERY] = { name = "alias" },
            },
        }),
        assetId = schema.new({
            id = id.from(_N, "DisassociateTimeSeriesFromAssetPropertyInput", "assetId"),
            type = "string",
            name = "assetId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_QUERY] = { name = "assetId" },
            },
        }),
        propertyId = schema.new({
            id = id.from(_N, "DisassociateTimeSeriesFromAssetPropertyInput", "propertyId"),
            type = "string",
            name = "propertyId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_QUERY] = { name = "propertyId" },
            },
        }),
        clientToken = schema.new({
            id = id.from(_N, "DisassociateTimeSeriesFromAssetPropertyInput", "clientToken"),
            type = "string",
            name = "clientToken",
            target_id = prelude.String.id,
            traits = {
                [traits.IDEMPOTENCY_TOKEN] = {},
            },
        }),
    },
})

M.DisassociateTimeSeriesFromAssetPropertyOutput = schema.new({
    id = id.from(_N, "Unit"),
    type = "structure",
})

M.ExecuteActionInput = schema.new({
    id = id.from(_N, "ExecuteActionRequest"),
    type = "structure",
    members = {
        targetResource = schema.new({
            id = id.from(_N, "ExecuteActionInput", "targetResource"),
            type = "structure",
            name = "targetResource",
            target_id = id.from(_N, "TargetResource"),
            target = M.TargetResource,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        actionDefinitionId = schema.new({
            id = id.from(_N, "ExecuteActionInput", "actionDefinitionId"),
            type = "string",
            name = "actionDefinitionId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        actionPayload = schema.new({
            id = id.from(_N, "ExecuteActionInput", "actionPayload"),
            type = "structure",
            name = "actionPayload",
            target_id = id.from(_N, "ActionPayload"),
            target = M.ActionPayload,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        clientToken = schema.new({
            id = id.from(_N, "ExecuteActionInput", "clientToken"),
            type = "string",
            name = "clientToken",
            target_id = prelude.String.id,
        }),
        resolveTo = schema.new({
            id = id.from(_N, "ExecuteActionInput", "resolveTo"),
            type = "structure",
            name = "resolveTo",
            target_id = id.from(_N, "ResolveTo"),
            target = M.ResolveTo,
        }),
    },
})

M.ExecuteActionOutput = schema.new({
    id = id.from(_N, "ExecuteActionResponse"),
    type = "structure",
    members = {
        actionId = schema.new({
            id = id.from(_N, "ExecuteActionOutput", "actionId"),
            type = "string",
            name = "actionId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.ExecuteQueryInput = schema.new({
    id = id.from(_N, "ExecuteQueryRequest"),
    type = "structure",
    members = {
        queryStatement = schema.new({
            id = id.from(_N, "ExecuteQueryInput", "queryStatement"),
            type = "string",
            name = "queryStatement",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        nextToken = schema.new({
            id = id.from(_N, "ExecuteQueryInput", "nextToken"),
            type = "string",
            name = "nextToken",
            target_id = prelude.String.id,
        }),
        maxResults = schema.new({
            id = id.from(_N, "ExecuteQueryInput", "maxResults"),
            type = "integer",
            name = "maxResults",
            target_id = prelude.Integer.id,
        }),
        clientToken = schema.new({
            id = id.from(_N, "ExecuteQueryInput", "clientToken"),
            type = "string",
            name = "clientToken",
            target_id = prelude.String.id,
            traits = {
                [traits.IDEMPOTENCY_TOKEN] = {},
            },
        }),
    },
})

M.ColumnType = schema.new({
    id = id.from(_N, "ColumnType"),
    type = "structure",
    members = {
        scalarType = schema.new({
            id = id.from(_N, "ColumnType", "scalarType"),
            type = "string",
            name = "scalarType",
            target_id = prelude.String.id,
        }),
    },
})

M.ColumnInfo = schema.new({
    id = id.from(_N, "ColumnInfo"),
    type = "structure",
    members = {
        name = schema.new({
            id = id.from(_N, "ColumnInfo", "name"),
            type = "string",
            name = "name",
            target_id = prelude.String.id,
        }),
        type = schema.new({
            id = id.from(_N, "ColumnInfo", "type"),
            type = "structure",
            name = "type",
            target_id = id.from(_N, "ColumnType"),
            target = M.ColumnType,
        }),
    },
})

M.QueryTimeoutException = schema.new({
    id = id.from(_N, "QueryTimeoutException"),
    type = "structure",
    traits = {
        [traits.ERROR] = { value = "client" },
    },
    members = {
        message = schema.new({
            id = id.from(_N, "QueryTimeoutException", "message"),
            type = "string",
            name = "message",
            target_id = prelude.String.id,
        }),
    },
})

M.ValidationException = schema.new({
    id = id.from(_N, "ValidationException"),
    type = "structure",
    traits = {
        [traits.ERROR] = { value = "client" },
    },
    members = {
        message = schema.new({
            id = id.from(_N, "ValidationException", "message"),
            type = "string",
            name = "message",
            target_id = prelude.String.id,
        }),
    },
})

M.GetAssetPropertyAggregatesInput = schema.new({
    id = id.from(_N, "GetAssetPropertyAggregatesRequest"),
    type = "structure",
    members = {
        assetId = schema.new({
            id = id.from(_N, "GetAssetPropertyAggregatesInput", "assetId"),
            type = "string",
            name = "assetId",
            target_id = prelude.String.id,
            traits = {
                [traits.HTTP_QUERY] = { name = "assetId" },
            },
        }),
        propertyId = schema.new({
            id = id.from(_N, "GetAssetPropertyAggregatesInput", "propertyId"),
            type = "string",
            name = "propertyId",
            target_id = prelude.String.id,
            traits = {
                [traits.HTTP_QUERY] = { name = "propertyId" },
            },
        }),
        propertyAlias = schema.new({
            id = id.from(_N, "GetAssetPropertyAggregatesInput", "propertyAlias"),
            type = "string",
            name = "propertyAlias",
            target_id = prelude.String.id,
            traits = {
                [traits.HTTP_QUERY] = { name = "propertyAlias" },
            },
        }),
        aggregateTypes = schema.new({
            id = id.from(_N, "GetAssetPropertyAggregatesInput", "aggregateTypes"),
            type = "list",
            name = "aggregateTypes",
            target_id = prelude.Document.id,
            list_member = prelude.String,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_QUERY] = { name = "aggregateTypes" },
            },
        }),
        resolution = schema.new({
            id = id.from(_N, "GetAssetPropertyAggregatesInput", "resolution"),
            type = "string",
            name = "resolution",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_QUERY] = { name = "resolution" },
            },
        }),
        qualities = schema.new({
            id = id.from(_N, "GetAssetPropertyAggregatesInput", "qualities"),
            type = "list",
            name = "qualities",
            target_id = prelude.Document.id,
            list_member = prelude.String,
            traits = {
                [traits.HTTP_QUERY] = { name = "qualities" },
            },
        }),
        startDate = schema.new({
            id = id.from(_N, "GetAssetPropertyAggregatesInput", "startDate"),
            type = "timestamp",
            name = "startDate",
            target_id = prelude.Timestamp.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_QUERY] = { name = "startDate" },
            },
        }),
        endDate = schema.new({
            id = id.from(_N, "GetAssetPropertyAggregatesInput", "endDate"),
            type = "timestamp",
            name = "endDate",
            target_id = prelude.Timestamp.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_QUERY] = { name = "endDate" },
            },
        }),
        timeOrdering = schema.new({
            id = id.from(_N, "GetAssetPropertyAggregatesInput", "timeOrdering"),
            type = "string",
            name = "timeOrdering",
            target_id = prelude.String.id,
            traits = {
                [traits.HTTP_QUERY] = { name = "timeOrdering" },
            },
        }),
        nextToken = schema.new({
            id = id.from(_N, "GetAssetPropertyAggregatesInput", "nextToken"),
            type = "string",
            name = "nextToken",
            target_id = prelude.String.id,
            traits = {
                [traits.HTTP_QUERY] = { name = "nextToken" },
            },
        }),
        maxResults = schema.new({
            id = id.from(_N, "GetAssetPropertyAggregatesInput", "maxResults"),
            type = "integer",
            name = "maxResults",
            target_id = prelude.Integer.id,
            traits = {
                [traits.HTTP_QUERY] = { name = "maxResults" },
            },
        }),
    },
})

M.GetAssetPropertyAggregatesOutput = schema.new({
    id = id.from(_N, "GetAssetPropertyAggregatesResponse"),
    type = "structure",
    members = {
        aggregatedValues = schema.new({
            id = id.from(_N, "GetAssetPropertyAggregatesOutput", "aggregatedValues"),
            type = "list",
            name = "aggregatedValues",
            target_id = prelude.Document.id,
            list_member = M.AggregatedValue,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        nextToken = schema.new({
            id = id.from(_N, "GetAssetPropertyAggregatesOutput", "nextToken"),
            type = "string",
            name = "nextToken",
            target_id = prelude.String.id,
        }),
    },
})

M.GetAssetPropertyValueInput = schema.new({
    id = id.from(_N, "GetAssetPropertyValueRequest"),
    type = "structure",
    members = {
        assetId = schema.new({
            id = id.from(_N, "GetAssetPropertyValueInput", "assetId"),
            type = "string",
            name = "assetId",
            target_id = prelude.String.id,
            traits = {
                [traits.HTTP_QUERY] = { name = "assetId" },
            },
        }),
        propertyId = schema.new({
            id = id.from(_N, "GetAssetPropertyValueInput", "propertyId"),
            type = "string",
            name = "propertyId",
            target_id = prelude.String.id,
            traits = {
                [traits.HTTP_QUERY] = { name = "propertyId" },
            },
        }),
        propertyAlias = schema.new({
            id = id.from(_N, "GetAssetPropertyValueInput", "propertyAlias"),
            type = "string",
            name = "propertyAlias",
            target_id = prelude.String.id,
            traits = {
                [traits.HTTP_QUERY] = { name = "propertyAlias" },
            },
        }),
    },
})

M.GetAssetPropertyValueOutput = schema.new({
    id = id.from(_N, "GetAssetPropertyValueResponse"),
    type = "structure",
    members = {
        propertyValue = schema.new({
            id = id.from(_N, "GetAssetPropertyValueOutput", "propertyValue"),
            type = "structure",
            name = "propertyValue",
            target_id = id.from(_N, "AssetPropertyValue"),
            target = M.AssetPropertyValue,
        }),
    },
})

M.GetAssetPropertyValueHistoryInput = schema.new({
    id = id.from(_N, "GetAssetPropertyValueHistoryRequest"),
    type = "structure",
    members = {
        assetId = schema.new({
            id = id.from(_N, "GetAssetPropertyValueHistoryInput", "assetId"),
            type = "string",
            name = "assetId",
            target_id = prelude.String.id,
            traits = {
                [traits.HTTP_QUERY] = { name = "assetId" },
            },
        }),
        propertyId = schema.new({
            id = id.from(_N, "GetAssetPropertyValueHistoryInput", "propertyId"),
            type = "string",
            name = "propertyId",
            target_id = prelude.String.id,
            traits = {
                [traits.HTTP_QUERY] = { name = "propertyId" },
            },
        }),
        propertyAlias = schema.new({
            id = id.from(_N, "GetAssetPropertyValueHistoryInput", "propertyAlias"),
            type = "string",
            name = "propertyAlias",
            target_id = prelude.String.id,
            traits = {
                [traits.HTTP_QUERY] = { name = "propertyAlias" },
            },
        }),
        startDate = schema.new({
            id = id.from(_N, "GetAssetPropertyValueHistoryInput", "startDate"),
            type = "timestamp",
            name = "startDate",
            target_id = prelude.Timestamp.id,
            traits = {
                [traits.HTTP_QUERY] = { name = "startDate" },
            },
        }),
        endDate = schema.new({
            id = id.from(_N, "GetAssetPropertyValueHistoryInput", "endDate"),
            type = "timestamp",
            name = "endDate",
            target_id = prelude.Timestamp.id,
            traits = {
                [traits.HTTP_QUERY] = { name = "endDate" },
            },
        }),
        qualities = schema.new({
            id = id.from(_N, "GetAssetPropertyValueHistoryInput", "qualities"),
            type = "list",
            name = "qualities",
            target_id = prelude.Document.id,
            list_member = prelude.String,
            traits = {
                [traits.HTTP_QUERY] = { name = "qualities" },
            },
        }),
        timeOrdering = schema.new({
            id = id.from(_N, "GetAssetPropertyValueHistoryInput", "timeOrdering"),
            type = "string",
            name = "timeOrdering",
            target_id = prelude.String.id,
            traits = {
                [traits.HTTP_QUERY] = { name = "timeOrdering" },
            },
        }),
        nextToken = schema.new({
            id = id.from(_N, "GetAssetPropertyValueHistoryInput", "nextToken"),
            type = "string",
            name = "nextToken",
            target_id = prelude.String.id,
            traits = {
                [traits.HTTP_QUERY] = { name = "nextToken" },
            },
        }),
        maxResults = schema.new({
            id = id.from(_N, "GetAssetPropertyValueHistoryInput", "maxResults"),
            type = "integer",
            name = "maxResults",
            target_id = prelude.Integer.id,
            traits = {
                [traits.HTTP_QUERY] = { name = "maxResults" },
            },
        }),
    },
})

M.GetAssetPropertyValueHistoryOutput = schema.new({
    id = id.from(_N, "GetAssetPropertyValueHistoryResponse"),
    type = "structure",
    members = {
        assetPropertyValueHistory = schema.new({
            id = id.from(_N, "GetAssetPropertyValueHistoryOutput", "assetPropertyValueHistory"),
            type = "list",
            name = "assetPropertyValueHistory",
            target_id = prelude.Document.id,
            list_member = M.AssetPropertyValue,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        nextToken = schema.new({
            id = id.from(_N, "GetAssetPropertyValueHistoryOutput", "nextToken"),
            type = "string",
            name = "nextToken",
            target_id = prelude.String.id,
        }),
    },
})

M.GetInterpolatedAssetPropertyValuesInput = schema.new({
    id = id.from(_N, "GetInterpolatedAssetPropertyValuesRequest"),
    type = "structure",
    members = {
        assetId = schema.new({
            id = id.from(_N, "GetInterpolatedAssetPropertyValuesInput", "assetId"),
            type = "string",
            name = "assetId",
            target_id = prelude.String.id,
            traits = {
                [traits.HTTP_QUERY] = { name = "assetId" },
            },
        }),
        propertyId = schema.new({
            id = id.from(_N, "GetInterpolatedAssetPropertyValuesInput", "propertyId"),
            type = "string",
            name = "propertyId",
            target_id = prelude.String.id,
            traits = {
                [traits.HTTP_QUERY] = { name = "propertyId" },
            },
        }),
        propertyAlias = schema.new({
            id = id.from(_N, "GetInterpolatedAssetPropertyValuesInput", "propertyAlias"),
            type = "string",
            name = "propertyAlias",
            target_id = prelude.String.id,
            traits = {
                [traits.HTTP_QUERY] = { name = "propertyAlias" },
            },
        }),
        startTimeInSeconds = schema.new({
            id = id.from(_N, "GetInterpolatedAssetPropertyValuesInput", "startTimeInSeconds"),
            type = "long",
            name = "startTimeInSeconds",
            target_id = prelude.Long.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_QUERY] = { name = "startTimeInSeconds" },
            },
        }),
        startTimeOffsetInNanos = schema.new({
            id = id.from(_N, "GetInterpolatedAssetPropertyValuesInput", "startTimeOffsetInNanos"),
            type = "integer",
            name = "startTimeOffsetInNanos",
            target_id = prelude.Integer.id,
            traits = {
                [traits.HTTP_QUERY] = { name = "startTimeOffsetInNanos" },
            },
        }),
        endTimeInSeconds = schema.new({
            id = id.from(_N, "GetInterpolatedAssetPropertyValuesInput", "endTimeInSeconds"),
            type = "long",
            name = "endTimeInSeconds",
            target_id = prelude.Long.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_QUERY] = { name = "endTimeInSeconds" },
            },
        }),
        endTimeOffsetInNanos = schema.new({
            id = id.from(_N, "GetInterpolatedAssetPropertyValuesInput", "endTimeOffsetInNanos"),
            type = "integer",
            name = "endTimeOffsetInNanos",
            target_id = prelude.Integer.id,
            traits = {
                [traits.HTTP_QUERY] = { name = "endTimeOffsetInNanos" },
            },
        }),
        quality = schema.new({
            id = id.from(_N, "GetInterpolatedAssetPropertyValuesInput", "quality"),
            type = "string",
            name = "quality",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_QUERY] = { name = "quality" },
            },
        }),
        intervalInSeconds = schema.new({
            id = id.from(_N, "GetInterpolatedAssetPropertyValuesInput", "intervalInSeconds"),
            type = "long",
            name = "intervalInSeconds",
            target_id = prelude.Long.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_QUERY] = { name = "intervalInSeconds" },
            },
        }),
        nextToken = schema.new({
            id = id.from(_N, "GetInterpolatedAssetPropertyValuesInput", "nextToken"),
            type = "string",
            name = "nextToken",
            target_id = prelude.String.id,
            traits = {
                [traits.HTTP_QUERY] = { name = "nextToken" },
            },
        }),
        maxResults = schema.new({
            id = id.from(_N, "GetInterpolatedAssetPropertyValuesInput", "maxResults"),
            type = "integer",
            name = "maxResults",
            target_id = prelude.Integer.id,
            traits = {
                [traits.HTTP_QUERY] = { name = "maxResults" },
            },
        }),
        type = schema.new({
            id = id.from(_N, "GetInterpolatedAssetPropertyValuesInput", "type"),
            type = "string",
            name = "type",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_QUERY] = { name = "type" },
            },
        }),
        intervalWindowInSeconds = schema.new({
            id = id.from(_N, "GetInterpolatedAssetPropertyValuesInput", "intervalWindowInSeconds"),
            type = "long",
            name = "intervalWindowInSeconds",
            target_id = prelude.Long.id,
            traits = {
                [traits.HTTP_QUERY] = { name = "intervalWindowInSeconds" },
            },
        }),
    },
})

M.InterpolatedAssetPropertyValue = schema.new({
    id = id.from(_N, "InterpolatedAssetPropertyValue"),
    type = "structure",
    members = {
        timestamp = schema.new({
            id = id.from(_N, "InterpolatedAssetPropertyValue", "timestamp"),
            type = "structure",
            name = "timestamp",
            target_id = id.from(_N, "TimeInNanos"),
            target = M.TimeInNanos,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        value = schema.new({
            id = id.from(_N, "InterpolatedAssetPropertyValue", "value"),
            type = "structure",
            name = "value",
            target_id = id.from(_N, "Variant"),
            target = M.Variant,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.GetInterpolatedAssetPropertyValuesOutput = schema.new({
    id = id.from(_N, "GetInterpolatedAssetPropertyValuesResponse"),
    type = "structure",
    members = {
        interpolatedAssetPropertyValues = schema.new({
            id = id.from(_N, "GetInterpolatedAssetPropertyValuesOutput", "interpolatedAssetPropertyValues"),
            type = "list",
            name = "interpolatedAssetPropertyValues",
            target_id = prelude.Document.id,
            list_member = M.InterpolatedAssetPropertyValue,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        nextToken = schema.new({
            id = id.from(_N, "GetInterpolatedAssetPropertyValuesOutput", "nextToken"),
            type = "string",
            name = "nextToken",
            target_id = prelude.String.id,
        }),
    },
})

M.InvokeAssistantInput = schema.new({
    id = id.from(_N, "InvokeAssistantRequest"),
    type = "structure",
    members = {
        conversationId = schema.new({
            id = id.from(_N, "InvokeAssistantInput", "conversationId"),
            type = "string",
            name = "conversationId",
            target_id = prelude.String.id,
        }),
        message = schema.new({
            id = id.from(_N, "InvokeAssistantInput", "message"),
            type = "string",
            name = "message",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        enableTrace = schema.new({
            id = id.from(_N, "InvokeAssistantInput", "enableTrace"),
            type = "boolean",
            name = "enableTrace",
            target_id = prelude.Boolean.id,
            traits = {
                [traits.DEFAULT] = { value = false },
            },
        }),
    },
})

M.Content = schema.new({
    id = id.from(_N, "Content"),
    type = "structure",
    members = {
        text = schema.new({
            id = id.from(_N, "Content", "text"),
            type = "string",
            name = "text",
            target_id = prelude.String.id,
        }),
    },
})

M.Location = schema.new({
    id = id.from(_N, "Location"),
    type = "structure",
    members = {
        uri = schema.new({
            id = id.from(_N, "Location", "uri"),
            type = "string",
            name = "uri",
            target_id = prelude.String.id,
        }),
    },
})

M.Source = schema.new({
    id = id.from(_N, "Source"),
    type = "structure",
    members = {
        arn = schema.new({
            id = id.from(_N, "Source", "arn"),
            type = "string",
            name = "arn",
            target_id = prelude.String.id,
        }),
        location = schema.new({
            id = id.from(_N, "Source", "location"),
            type = "structure",
            name = "location",
            target_id = id.from(_N, "Location"),
            target = M.Location,
        }),
    },
})

M.DataSetReference = schema.new({
    id = id.from(_N, "DataSetReference"),
    type = "structure",
    members = {
        datasetArn = schema.new({
            id = id.from(_N, "DataSetReference", "datasetArn"),
            type = "string",
            name = "datasetArn",
            target_id = prelude.String.id,
        }),
        source = schema.new({
            id = id.from(_N, "DataSetReference", "source"),
            type = "structure",
            name = "source",
            target_id = id.from(_N, "Source"),
            target = M.Source,
        }),
    },
})

M.Reference = schema.new({
    id = id.from(_N, "Reference"),
    type = "structure",
    members = {
        dataset = schema.new({
            id = id.from(_N, "Reference", "dataset"),
            type = "structure",
            name = "dataset",
            target_id = id.from(_N, "DataSetReference"),
            target = M.DataSetReference,
        }),
    },
})

M.Citation = schema.new({
    id = id.from(_N, "Citation"),
    type = "structure",
    members = {
        reference = schema.new({
            id = id.from(_N, "Citation", "reference"),
            type = "structure",
            name = "reference",
            target_id = id.from(_N, "Reference"),
            target = M.Reference,
        }),
        content = schema.new({
            id = id.from(_N, "Citation", "content"),
            type = "structure",
            name = "content",
            target_id = id.from(_N, "Content"),
            target = M.Content,
        }),
    },
})

M.InvocationOutput = schema.new({
    id = id.from(_N, "InvocationOutput"),
    type = "structure",
    members = {
        message = schema.new({
            id = id.from(_N, "InvocationOutput", "message"),
            type = "string",
            name = "message",
            target_id = prelude.String.id,
        }),
        citations = schema.new({
            id = id.from(_N, "InvocationOutput", "citations"),
            type = "list",
            name = "citations",
            target_id = prelude.Document.id,
            list_member = M.Citation,
        }),
    },
})

M.Trace = schema.new({
    id = id.from(_N, "Trace"),
    type = "structure",
    members = {
        text = schema.new({
            id = id.from(_N, "Trace", "text"),
            type = "string",
            name = "text",
            target_id = prelude.String.id,
        }),
    },
})

M.ResponseStream = schema.new({
    id = id.from(_N, "ResponseStream"),
    type = "union",
    members = {
        trace = schema.new({
            id = id.from(_N, "ResponseStream", "trace"),
            type = "structure",
            name = "trace",
            target_id = id.from(_N, "Trace"),
            target = M.Trace,
        }),
        output = schema.new({
            id = id.from(_N, "ResponseStream", "output"),
            type = "structure",
            name = "output",
            target_id = id.from(_N, "InvocationOutput"),
            target = M.InvocationOutput,
        }),
        accessDeniedException = schema.new({
            id = id.from(_N, "ResponseStream", "accessDeniedException"),
            type = "structure",
            name = "accessDeniedException",
            target_id = id.from(_N, "AccessDeniedException"),
            target = M.AccessDeniedException,
        }),
        conflictingOperationException = schema.new({
            id = id.from(_N, "ResponseStream", "conflictingOperationException"),
            type = "structure",
            name = "conflictingOperationException",
            target_id = id.from(_N, "ConflictingOperationException"),
            target = M.ConflictingOperationException,
        }),
        internalFailureException = schema.new({
            id = id.from(_N, "ResponseStream", "internalFailureException"),
            type = "structure",
            name = "internalFailureException",
            target_id = id.from(_N, "InternalFailureException"),
            target = M.InternalFailureException,
        }),
        invalidRequestException = schema.new({
            id = id.from(_N, "ResponseStream", "invalidRequestException"),
            type = "structure",
            name = "invalidRequestException",
            target_id = id.from(_N, "InvalidRequestException"),
            target = M.InvalidRequestException,
        }),
        limitExceededException = schema.new({
            id = id.from(_N, "ResponseStream", "limitExceededException"),
            type = "structure",
            name = "limitExceededException",
            target_id = id.from(_N, "LimitExceededException"),
            target = M.LimitExceededException,
        }),
        resourceNotFoundException = schema.new({
            id = id.from(_N, "ResponseStream", "resourceNotFoundException"),
            type = "structure",
            name = "resourceNotFoundException",
            target_id = id.from(_N, "ResourceNotFoundException"),
            target = M.ResourceNotFoundException,
        }),
        throttlingException = schema.new({
            id = id.from(_N, "ResponseStream", "throttlingException"),
            type = "structure",
            name = "throttlingException",
            target_id = id.from(_N, "ThrottlingException"),
            target = M.ThrottlingException,
        }),
    },
})

M.InvokeAssistantOutput = schema.new({
    id = id.from(_N, "InvokeAssistantResponse"),
    type = "structure",
    members = {
        body = schema.new({
            id = id.from(_N, "InvokeAssistantOutput", "body"),
            type = "union",
            name = "body",
            target_id = id.from(_N, "ResponseStream"),
            target = M.ResponseStream,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_PAYLOAD] = {},
            },
        }),
        conversationId = schema.new({
            id = id.from(_N, "InvokeAssistantOutput", "conversationId"),
            type = "string",
            name = "conversationId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_HEADER] = { name = "x-amz-iotsitewise-assistant-conversation-id" },
            },
        }),
    },
})

M.ListAccessPoliciesInput = schema.new({
    id = id.from(_N, "ListAccessPoliciesRequest"),
    type = "structure",
    members = {
        identityType = schema.new({
            id = id.from(_N, "ListAccessPoliciesInput", "identityType"),
            type = "string",
            name = "identityType",
            target_id = prelude.String.id,
            traits = {
                [traits.HTTP_QUERY] = { name = "identityType" },
            },
        }),
        identityId = schema.new({
            id = id.from(_N, "ListAccessPoliciesInput", "identityId"),
            type = "string",
            name = "identityId",
            target_id = prelude.String.id,
            traits = {
                [traits.HTTP_QUERY] = { name = "identityId" },
            },
        }),
        resourceType = schema.new({
            id = id.from(_N, "ListAccessPoliciesInput", "resourceType"),
            type = "string",
            name = "resourceType",
            target_id = prelude.String.id,
            traits = {
                [traits.HTTP_QUERY] = { name = "resourceType" },
            },
        }),
        resourceId = schema.new({
            id = id.from(_N, "ListAccessPoliciesInput", "resourceId"),
            type = "string",
            name = "resourceId",
            target_id = prelude.String.id,
            traits = {
                [traits.HTTP_QUERY] = { name = "resourceId" },
            },
        }),
        iamArn = schema.new({
            id = id.from(_N, "ListAccessPoliciesInput", "iamArn"),
            type = "string",
            name = "iamArn",
            target_id = prelude.String.id,
            traits = {
                [traits.HTTP_QUERY] = { name = "iamArn" },
            },
        }),
        nextToken = schema.new({
            id = id.from(_N, "ListAccessPoliciesInput", "nextToken"),
            type = "string",
            name = "nextToken",
            target_id = prelude.String.id,
            traits = {
                [traits.HTTP_QUERY] = { name = "nextToken" },
            },
        }),
        maxResults = schema.new({
            id = id.from(_N, "ListAccessPoliciesInput", "maxResults"),
            type = "integer",
            name = "maxResults",
            target_id = prelude.Integer.id,
            traits = {
                [traits.HTTP_QUERY] = { name = "maxResults" },
            },
        }),
    },
})

M.ListAccessPoliciesOutput = schema.new({
    id = id.from(_N, "ListAccessPoliciesResponse"),
    type = "structure",
    members = {
        accessPolicySummaries = schema.new({
            id = id.from(_N, "ListAccessPoliciesOutput", "accessPolicySummaries"),
            type = "list",
            name = "accessPolicySummaries",
            target_id = prelude.Document.id,
            list_member = M.AccessPolicySummary,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        nextToken = schema.new({
            id = id.from(_N, "ListAccessPoliciesOutput", "nextToken"),
            type = "string",
            name = "nextToken",
            target_id = prelude.String.id,
        }),
    },
})

M.ListActionsInput = schema.new({
    id = id.from(_N, "ListActionsRequest"),
    type = "structure",
    members = {
        targetResourceType = schema.new({
            id = id.from(_N, "ListActionsInput", "targetResourceType"),
            type = "string",
            name = "targetResourceType",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_QUERY] = { name = "targetResourceType" },
            },
        }),
        targetResourceId = schema.new({
            id = id.from(_N, "ListActionsInput", "targetResourceId"),
            type = "string",
            name = "targetResourceId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_QUERY] = { name = "targetResourceId" },
            },
        }),
        nextToken = schema.new({
            id = id.from(_N, "ListActionsInput", "nextToken"),
            type = "string",
            name = "nextToken",
            target_id = prelude.String.id,
            traits = {
                [traits.HTTP_QUERY] = { name = "nextToken" },
            },
        }),
        maxResults = schema.new({
            id = id.from(_N, "ListActionsInput", "maxResults"),
            type = "integer",
            name = "maxResults",
            target_id = prelude.Integer.id,
            traits = {
                [traits.HTTP_QUERY] = { name = "maxResults" },
            },
        }),
        resolveToResourceType = schema.new({
            id = id.from(_N, "ListActionsInput", "resolveToResourceType"),
            type = "string",
            name = "resolveToResourceType",
            target_id = prelude.String.id,
            traits = {
                [traits.HTTP_QUERY] = { name = "resolveToResourceType" },
            },
        }),
        resolveToResourceId = schema.new({
            id = id.from(_N, "ListActionsInput", "resolveToResourceId"),
            type = "string",
            name = "resolveToResourceId",
            target_id = prelude.String.id,
            traits = {
                [traits.HTTP_QUERY] = { name = "resolveToResourceId" },
            },
        }),
    },
})

M.ListActionsOutput = schema.new({
    id = id.from(_N, "ListActionsResponse"),
    type = "structure",
    members = {
        actionSummaries = schema.new({
            id = id.from(_N, "ListActionsOutput", "actionSummaries"),
            type = "list",
            name = "actionSummaries",
            target_id = prelude.Document.id,
            list_member = M.ActionSummary,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        nextToken = schema.new({
            id = id.from(_N, "ListActionsOutput", "nextToken"),
            type = "string",
            name = "nextToken",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.ListAssetModelCompositeModelsInput = schema.new({
    id = id.from(_N, "ListAssetModelCompositeModelsRequest"),
    type = "structure",
    members = {
        assetModelId = schema.new({
            id = id.from(_N, "ListAssetModelCompositeModelsInput", "assetModelId"),
            type = "string",
            name = "assetModelId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
        nextToken = schema.new({
            id = id.from(_N, "ListAssetModelCompositeModelsInput", "nextToken"),
            type = "string",
            name = "nextToken",
            target_id = prelude.String.id,
            traits = {
                [traits.HTTP_QUERY] = { name = "nextToken" },
            },
        }),
        maxResults = schema.new({
            id = id.from(_N, "ListAssetModelCompositeModelsInput", "maxResults"),
            type = "integer",
            name = "maxResults",
            target_id = prelude.Integer.id,
            traits = {
                [traits.HTTP_QUERY] = { name = "maxResults" },
            },
        }),
        assetModelVersion = schema.new({
            id = id.from(_N, "ListAssetModelCompositeModelsInput", "assetModelVersion"),
            type = "string",
            name = "assetModelVersion",
            target_id = prelude.String.id,
            traits = {
                [traits.HTTP_QUERY] = { name = "assetModelVersion" },
            },
        }),
    },
})

M.ListAssetModelCompositeModelsOutput = schema.new({
    id = id.from(_N, "ListAssetModelCompositeModelsResponse"),
    type = "structure",
    members = {
        assetModelCompositeModelSummaries = schema.new({
            id = id.from(_N, "ListAssetModelCompositeModelsOutput", "assetModelCompositeModelSummaries"),
            type = "list",
            name = "assetModelCompositeModelSummaries",
            target_id = prelude.Document.id,
            list_member = M.AssetModelCompositeModelSummary,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        nextToken = schema.new({
            id = id.from(_N, "ListAssetModelCompositeModelsOutput", "nextToken"),
            type = "string",
            name = "nextToken",
            target_id = prelude.String.id,
        }),
    },
})

M.ListAssetModelPropertiesInput = schema.new({
    id = id.from(_N, "ListAssetModelPropertiesRequest"),
    type = "structure",
    members = {
        assetModelId = schema.new({
            id = id.from(_N, "ListAssetModelPropertiesInput", "assetModelId"),
            type = "string",
            name = "assetModelId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
        nextToken = schema.new({
            id = id.from(_N, "ListAssetModelPropertiesInput", "nextToken"),
            type = "string",
            name = "nextToken",
            target_id = prelude.String.id,
            traits = {
                [traits.HTTP_QUERY] = { name = "nextToken" },
            },
        }),
        maxResults = schema.new({
            id = id.from(_N, "ListAssetModelPropertiesInput", "maxResults"),
            type = "integer",
            name = "maxResults",
            target_id = prelude.Integer.id,
            traits = {
                [traits.HTTP_QUERY] = { name = "maxResults" },
            },
        }),
        filter = schema.new({
            id = id.from(_N, "ListAssetModelPropertiesInput", "filter"),
            type = "string",
            name = "filter",
            target_id = prelude.String.id,
            traits = {
                [traits.HTTP_QUERY] = { name = "filter" },
            },
        }),
        assetModelVersion = schema.new({
            id = id.from(_N, "ListAssetModelPropertiesInput", "assetModelVersion"),
            type = "string",
            name = "assetModelVersion",
            target_id = prelude.String.id,
            traits = {
                [traits.HTTP_QUERY] = { name = "assetModelVersion" },
            },
        }),
    },
})

M.ListAssetModelPropertiesOutput = schema.new({
    id = id.from(_N, "ListAssetModelPropertiesResponse"),
    type = "structure",
    members = {
        assetModelPropertySummaries = schema.new({
            id = id.from(_N, "ListAssetModelPropertiesOutput", "assetModelPropertySummaries"),
            type = "list",
            name = "assetModelPropertySummaries",
            target_id = prelude.Document.id,
            list_member = M.AssetModelPropertySummary,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        nextToken = schema.new({
            id = id.from(_N, "ListAssetModelPropertiesOutput", "nextToken"),
            type = "string",
            name = "nextToken",
            target_id = prelude.String.id,
        }),
    },
})

M.ListAssetModelsInput = schema.new({
    id = id.from(_N, "ListAssetModelsRequest"),
    type = "structure",
    members = {
        assetModelTypes = schema.new({
            id = id.from(_N, "ListAssetModelsInput", "assetModelTypes"),
            type = "list",
            name = "assetModelTypes",
            target_id = prelude.Document.id,
            list_member = prelude.String,
            traits = {
                [traits.HTTP_QUERY] = { name = "assetModelTypes" },
            },
        }),
        nextToken = schema.new({
            id = id.from(_N, "ListAssetModelsInput", "nextToken"),
            type = "string",
            name = "nextToken",
            target_id = prelude.String.id,
            traits = {
                [traits.HTTP_QUERY] = { name = "nextToken" },
            },
        }),
        maxResults = schema.new({
            id = id.from(_N, "ListAssetModelsInput", "maxResults"),
            type = "integer",
            name = "maxResults",
            target_id = prelude.Integer.id,
            traits = {
                [traits.HTTP_QUERY] = { name = "maxResults" },
            },
        }),
        assetModelVersion = schema.new({
            id = id.from(_N, "ListAssetModelsInput", "assetModelVersion"),
            type = "string",
            name = "assetModelVersion",
            target_id = prelude.String.id,
            traits = {
                [traits.HTTP_QUERY] = { name = "assetModelVersion" },
            },
        }),
    },
})

M.ListAssetModelsOutput = schema.new({
    id = id.from(_N, "ListAssetModelsResponse"),
    type = "structure",
    members = {
        assetModelSummaries = schema.new({
            id = id.from(_N, "ListAssetModelsOutput", "assetModelSummaries"),
            type = "list",
            name = "assetModelSummaries",
            target_id = prelude.Document.id,
            list_member = M.AssetModelSummary,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        nextToken = schema.new({
            id = id.from(_N, "ListAssetModelsOutput", "nextToken"),
            type = "string",
            name = "nextToken",
            target_id = prelude.String.id,
        }),
    },
})

M.ListAssetPropertiesInput = schema.new({
    id = id.from(_N, "ListAssetPropertiesRequest"),
    type = "structure",
    members = {
        assetId = schema.new({
            id = id.from(_N, "ListAssetPropertiesInput", "assetId"),
            type = "string",
            name = "assetId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
        nextToken = schema.new({
            id = id.from(_N, "ListAssetPropertiesInput", "nextToken"),
            type = "string",
            name = "nextToken",
            target_id = prelude.String.id,
            traits = {
                [traits.HTTP_QUERY] = { name = "nextToken" },
            },
        }),
        maxResults = schema.new({
            id = id.from(_N, "ListAssetPropertiesInput", "maxResults"),
            type = "integer",
            name = "maxResults",
            target_id = prelude.Integer.id,
            traits = {
                [traits.HTTP_QUERY] = { name = "maxResults" },
            },
        }),
        filter = schema.new({
            id = id.from(_N, "ListAssetPropertiesInput", "filter"),
            type = "string",
            name = "filter",
            target_id = prelude.String.id,
            traits = {
                [traits.HTTP_QUERY] = { name = "filter" },
            },
        }),
    },
})

M.ListAssetPropertiesOutput = schema.new({
    id = id.from(_N, "ListAssetPropertiesResponse"),
    type = "structure",
    members = {
        assetPropertySummaries = schema.new({
            id = id.from(_N, "ListAssetPropertiesOutput", "assetPropertySummaries"),
            type = "list",
            name = "assetPropertySummaries",
            target_id = prelude.Document.id,
            list_member = M.AssetPropertySummary,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        nextToken = schema.new({
            id = id.from(_N, "ListAssetPropertiesOutput", "nextToken"),
            type = "string",
            name = "nextToken",
            target_id = prelude.String.id,
        }),
    },
})

M.ListAssetRelationshipsInput = schema.new({
    id = id.from(_N, "ListAssetRelationshipsRequest"),
    type = "structure",
    members = {
        assetId = schema.new({
            id = id.from(_N, "ListAssetRelationshipsInput", "assetId"),
            type = "string",
            name = "assetId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
        traversalType = schema.new({
            id = id.from(_N, "ListAssetRelationshipsInput", "traversalType"),
            type = "string",
            name = "traversalType",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_QUERY] = { name = "traversalType" },
            },
        }),
        nextToken = schema.new({
            id = id.from(_N, "ListAssetRelationshipsInput", "nextToken"),
            type = "string",
            name = "nextToken",
            target_id = prelude.String.id,
            traits = {
                [traits.HTTP_QUERY] = { name = "nextToken" },
            },
        }),
        maxResults = schema.new({
            id = id.from(_N, "ListAssetRelationshipsInput", "maxResults"),
            type = "integer",
            name = "maxResults",
            target_id = prelude.Integer.id,
            traits = {
                [traits.HTTP_QUERY] = { name = "maxResults" },
            },
        }),
    },
})

M.ListAssetRelationshipsOutput = schema.new({
    id = id.from(_N, "ListAssetRelationshipsResponse"),
    type = "structure",
    members = {
        assetRelationshipSummaries = schema.new({
            id = id.from(_N, "ListAssetRelationshipsOutput", "assetRelationshipSummaries"),
            type = "list",
            name = "assetRelationshipSummaries",
            target_id = prelude.Document.id,
            list_member = M.AssetRelationshipSummary,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        nextToken = schema.new({
            id = id.from(_N, "ListAssetRelationshipsOutput", "nextToken"),
            type = "string",
            name = "nextToken",
            target_id = prelude.String.id,
        }),
    },
})

M.ListAssetsInput = schema.new({
    id = id.from(_N, "ListAssetsRequest"),
    type = "structure",
    members = {
        nextToken = schema.new({
            id = id.from(_N, "ListAssetsInput", "nextToken"),
            type = "string",
            name = "nextToken",
            target_id = prelude.String.id,
            traits = {
                [traits.HTTP_QUERY] = { name = "nextToken" },
            },
        }),
        maxResults = schema.new({
            id = id.from(_N, "ListAssetsInput", "maxResults"),
            type = "integer",
            name = "maxResults",
            target_id = prelude.Integer.id,
            traits = {
                [traits.HTTP_QUERY] = { name = "maxResults" },
            },
        }),
        assetModelId = schema.new({
            id = id.from(_N, "ListAssetsInput", "assetModelId"),
            type = "string",
            name = "assetModelId",
            target_id = prelude.String.id,
            traits = {
                [traits.HTTP_QUERY] = { name = "assetModelId" },
            },
        }),
        filter = schema.new({
            id = id.from(_N, "ListAssetsInput", "filter"),
            type = "string",
            name = "filter",
            target_id = prelude.String.id,
            traits = {
                [traits.HTTP_QUERY] = { name = "filter" },
            },
        }),
    },
})

M.ListAssetsOutput = schema.new({
    id = id.from(_N, "ListAssetsResponse"),
    type = "structure",
    members = {
        assetSummaries = schema.new({
            id = id.from(_N, "ListAssetsOutput", "assetSummaries"),
            type = "list",
            name = "assetSummaries",
            target_id = prelude.Document.id,
            list_member = M.AssetSummary,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        nextToken = schema.new({
            id = id.from(_N, "ListAssetsOutput", "nextToken"),
            type = "string",
            name = "nextToken",
            target_id = prelude.String.id,
        }),
    },
})

M.ListAssociatedAssetsInput = schema.new({
    id = id.from(_N, "ListAssociatedAssetsRequest"),
    type = "structure",
    members = {
        assetId = schema.new({
            id = id.from(_N, "ListAssociatedAssetsInput", "assetId"),
            type = "string",
            name = "assetId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
        hierarchyId = schema.new({
            id = id.from(_N, "ListAssociatedAssetsInput", "hierarchyId"),
            type = "string",
            name = "hierarchyId",
            target_id = prelude.String.id,
            traits = {
                [traits.HTTP_QUERY] = { name = "hierarchyId" },
            },
        }),
        traversalDirection = schema.new({
            id = id.from(_N, "ListAssociatedAssetsInput", "traversalDirection"),
            type = "string",
            name = "traversalDirection",
            target_id = prelude.String.id,
            traits = {
                [traits.HTTP_QUERY] = { name = "traversalDirection" },
            },
        }),
        nextToken = schema.new({
            id = id.from(_N, "ListAssociatedAssetsInput", "nextToken"),
            type = "string",
            name = "nextToken",
            target_id = prelude.String.id,
            traits = {
                [traits.HTTP_QUERY] = { name = "nextToken" },
            },
        }),
        maxResults = schema.new({
            id = id.from(_N, "ListAssociatedAssetsInput", "maxResults"),
            type = "integer",
            name = "maxResults",
            target_id = prelude.Integer.id,
            traits = {
                [traits.HTTP_QUERY] = { name = "maxResults" },
            },
        }),
    },
})

M.ListAssociatedAssetsOutput = schema.new({
    id = id.from(_N, "ListAssociatedAssetsResponse"),
    type = "structure",
    members = {
        assetSummaries = schema.new({
            id = id.from(_N, "ListAssociatedAssetsOutput", "assetSummaries"),
            type = "list",
            name = "assetSummaries",
            target_id = prelude.Document.id,
            list_member = M.AssociatedAssetsSummary,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        nextToken = schema.new({
            id = id.from(_N, "ListAssociatedAssetsOutput", "nextToken"),
            type = "string",
            name = "nextToken",
            target_id = prelude.String.id,
        }),
    },
})

M.ListBulkImportJobsInput = schema.new({
    id = id.from(_N, "ListBulkImportJobsRequest"),
    type = "structure",
    members = {
        nextToken = schema.new({
            id = id.from(_N, "ListBulkImportJobsInput", "nextToken"),
            type = "string",
            name = "nextToken",
            target_id = prelude.String.id,
            traits = {
                [traits.HTTP_QUERY] = { name = "nextToken" },
            },
        }),
        maxResults = schema.new({
            id = id.from(_N, "ListBulkImportJobsInput", "maxResults"),
            type = "integer",
            name = "maxResults",
            target_id = prelude.Integer.id,
            traits = {
                [traits.HTTP_QUERY] = { name = "maxResults" },
            },
        }),
        filter = schema.new({
            id = id.from(_N, "ListBulkImportJobsInput", "filter"),
            type = "string",
            name = "filter",
            target_id = prelude.String.id,
            traits = {
                [traits.HTTP_QUERY] = { name = "filter" },
            },
        }),
    },
})

M.JobSummary = schema.new({
    id = id.from(_N, "JobSummary"),
    type = "structure",
    members = {
        id = schema.new({
            id = id.from(_N, "JobSummary", "id"),
            type = "string",
            name = "id",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        name = schema.new({
            id = id.from(_N, "JobSummary", "name"),
            type = "string",
            name = "name",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        status = schema.new({
            id = id.from(_N, "JobSummary", "status"),
            type = "string",
            name = "status",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.ListBulkImportJobsOutput = schema.new({
    id = id.from(_N, "ListBulkImportJobsResponse"),
    type = "structure",
    members = {
        jobSummaries = schema.new({
            id = id.from(_N, "ListBulkImportJobsOutput", "jobSummaries"),
            type = "list",
            name = "jobSummaries",
            target_id = prelude.Document.id,
            list_member = M.JobSummary,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        nextToken = schema.new({
            id = id.from(_N, "ListBulkImportJobsOutput", "nextToken"),
            type = "string",
            name = "nextToken",
            target_id = prelude.String.id,
        }),
    },
})

M.ListCompositionRelationshipsInput = schema.new({
    id = id.from(_N, "ListCompositionRelationshipsRequest"),
    type = "structure",
    members = {
        assetModelId = schema.new({
            id = id.from(_N, "ListCompositionRelationshipsInput", "assetModelId"),
            type = "string",
            name = "assetModelId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
        nextToken = schema.new({
            id = id.from(_N, "ListCompositionRelationshipsInput", "nextToken"),
            type = "string",
            name = "nextToken",
            target_id = prelude.String.id,
            traits = {
                [traits.HTTP_QUERY] = { name = "nextToken" },
            },
        }),
        maxResults = schema.new({
            id = id.from(_N, "ListCompositionRelationshipsInput", "maxResults"),
            type = "integer",
            name = "maxResults",
            target_id = prelude.Integer.id,
            traits = {
                [traits.HTTP_QUERY] = { name = "maxResults" },
            },
        }),
    },
})

M.CompositionRelationshipSummary = schema.new({
    id = id.from(_N, "CompositionRelationshipSummary"),
    type = "structure",
    members = {
        assetModelId = schema.new({
            id = id.from(_N, "CompositionRelationshipSummary", "assetModelId"),
            type = "string",
            name = "assetModelId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        assetModelCompositeModelId = schema.new({
            id = id.from(_N, "CompositionRelationshipSummary", "assetModelCompositeModelId"),
            type = "string",
            name = "assetModelCompositeModelId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        assetModelCompositeModelType = schema.new({
            id = id.from(_N, "CompositionRelationshipSummary", "assetModelCompositeModelType"),
            type = "string",
            name = "assetModelCompositeModelType",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.ListCompositionRelationshipsOutput = schema.new({
    id = id.from(_N, "ListCompositionRelationshipsResponse"),
    type = "structure",
    members = {
        compositionRelationshipSummaries = schema.new({
            id = id.from(_N, "ListCompositionRelationshipsOutput", "compositionRelationshipSummaries"),
            type = "list",
            name = "compositionRelationshipSummaries",
            target_id = prelude.Document.id,
            list_member = M.CompositionRelationshipSummary,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        nextToken = schema.new({
            id = id.from(_N, "ListCompositionRelationshipsOutput", "nextToken"),
            type = "string",
            name = "nextToken",
            target_id = prelude.String.id,
        }),
    },
})

M.DataBindingValueFilter = schema.new({
    id = id.from(_N, "DataBindingValueFilter"),
    type = "structure",
    members = {
        asset = schema.new({
            id = id.from(_N, "DataBindingValueFilter", "asset"),
            type = "structure",
            name = "asset",
            target_id = id.from(_N, "AssetBindingValueFilter"),
            target = M.AssetBindingValueFilter,
        }),
        assetModel = schema.new({
            id = id.from(_N, "DataBindingValueFilter", "assetModel"),
            type = "structure",
            name = "assetModel",
            target_id = id.from(_N, "AssetModelBindingValueFilter"),
            target = M.AssetModelBindingValueFilter,
        }),
        assetProperty = schema.new({
            id = id.from(_N, "DataBindingValueFilter", "assetProperty"),
            type = "structure",
            name = "assetProperty",
            target_id = id.from(_N, "AssetPropertyBindingValueFilter"),
            target = M.AssetPropertyBindingValueFilter,
        }),
        assetModelProperty = schema.new({
            id = id.from(_N, "DataBindingValueFilter", "assetModelProperty"),
            type = "structure",
            name = "assetModelProperty",
            target_id = id.from(_N, "AssetModelPropertyBindingValueFilter"),
            target = M.AssetModelPropertyBindingValueFilter,
        }),
    },
})

M.ListComputationModelDataBindingUsagesInput = schema.new({
    id = id.from(_N, "ListComputationModelDataBindingUsagesRequest"),
    type = "structure",
    members = {
        dataBindingValueFilter = schema.new({
            id = id.from(_N, "ListComputationModelDataBindingUsagesInput", "dataBindingValueFilter"),
            type = "structure",
            name = "dataBindingValueFilter",
            target_id = id.from(_N, "DataBindingValueFilter"),
            target = M.DataBindingValueFilter,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        nextToken = schema.new({
            id = id.from(_N, "ListComputationModelDataBindingUsagesInput", "nextToken"),
            type = "string",
            name = "nextToken",
            target_id = prelude.String.id,
        }),
        maxResults = schema.new({
            id = id.from(_N, "ListComputationModelDataBindingUsagesInput", "maxResults"),
            type = "integer",
            name = "maxResults",
            target_id = prelude.Integer.id,
        }),
    },
})

M.DataBindingValue = schema.new({
    id = id.from(_N, "DataBindingValue"),
    type = "structure",
    members = {
        assetModelProperty = schema.new({
            id = id.from(_N, "DataBindingValue", "assetModelProperty"),
            type = "structure",
            name = "assetModelProperty",
            target_id = id.from(_N, "AssetModelPropertyBindingValue"),
            target = M.AssetModelPropertyBindingValue,
        }),
        assetProperty = schema.new({
            id = id.from(_N, "DataBindingValue", "assetProperty"),
            type = "structure",
            name = "assetProperty",
            target_id = id.from(_N, "AssetPropertyBindingValue"),
            target = M.AssetPropertyBindingValue,
        }),
    },
})

M.MatchedDataBinding = schema.new({
    id = id.from(_N, "MatchedDataBinding"),
    type = "structure",
    members = {
        value = schema.new({
            id = id.from(_N, "MatchedDataBinding", "value"),
            type = "structure",
            name = "value",
            target_id = id.from(_N, "DataBindingValue"),
            target = M.DataBindingValue,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.ComputationModelDataBindingUsageSummary = schema.new({
    id = id.from(_N, "ComputationModelDataBindingUsageSummary"),
    type = "structure",
    members = {
        computationModelIds = schema.new({
            id = id.from(_N, "ComputationModelDataBindingUsageSummary", "computationModelIds"),
            type = "list",
            name = "computationModelIds",
            target_id = prelude.Document.id,
            list_member = prelude.String,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        matchedDataBinding = schema.new({
            id = id.from(_N, "ComputationModelDataBindingUsageSummary", "matchedDataBinding"),
            type = "structure",
            name = "matchedDataBinding",
            target_id = id.from(_N, "MatchedDataBinding"),
            target = M.MatchedDataBinding,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.ListComputationModelDataBindingUsagesOutput = schema.new({
    id = id.from(_N, "ListComputationModelDataBindingUsagesResponse"),
    type = "structure",
    members = {
        dataBindingUsageSummaries = schema.new({
            id = id.from(_N, "ListComputationModelDataBindingUsagesOutput", "dataBindingUsageSummaries"),
            type = "list",
            name = "dataBindingUsageSummaries",
            target_id = prelude.Document.id,
            list_member = M.ComputationModelDataBindingUsageSummary,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        nextToken = schema.new({
            id = id.from(_N, "ListComputationModelDataBindingUsagesOutput", "nextToken"),
            type = "string",
            name = "nextToken",
            target_id = prelude.String.id,
        }),
    },
})

M.ListComputationModelResolveToResourcesInput = schema.new({
    id = id.from(_N, "ListComputationModelResolveToResourcesRequest"),
    type = "structure",
    members = {
        computationModelId = schema.new({
            id = id.from(_N, "ListComputationModelResolveToResourcesInput", "computationModelId"),
            type = "string",
            name = "computationModelId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
        nextToken = schema.new({
            id = id.from(_N, "ListComputationModelResolveToResourcesInput", "nextToken"),
            type = "string",
            name = "nextToken",
            target_id = prelude.String.id,
            traits = {
                [traits.HTTP_QUERY] = { name = "nextToken" },
            },
        }),
        maxResults = schema.new({
            id = id.from(_N, "ListComputationModelResolveToResourcesInput", "maxResults"),
            type = "integer",
            name = "maxResults",
            target_id = prelude.Integer.id,
            traits = {
                [traits.HTTP_QUERY] = { name = "maxResults" },
            },
        }),
    },
})

M.ComputationModelResolveToResourceSummary = schema.new({
    id = id.from(_N, "ComputationModelResolveToResourceSummary"),
    type = "structure",
    members = {
        resolveTo = schema.new({
            id = id.from(_N, "ComputationModelResolveToResourceSummary", "resolveTo"),
            type = "structure",
            name = "resolveTo",
            target_id = id.from(_N, "ResolveTo"),
            target = M.ResolveTo,
        }),
    },
})

M.ListComputationModelResolveToResourcesOutput = schema.new({
    id = id.from(_N, "ListComputationModelResolveToResourcesResponse"),
    type = "structure",
    members = {
        computationModelResolveToResourceSummaries = schema.new({
            id = id.from(_N, "ListComputationModelResolveToResourcesOutput", "computationModelResolveToResourceSummaries"),
            type = "list",
            name = "computationModelResolveToResourceSummaries",
            target_id = prelude.Document.id,
            list_member = M.ComputationModelResolveToResourceSummary,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        nextToken = schema.new({
            id = id.from(_N, "ListComputationModelResolveToResourcesOutput", "nextToken"),
            type = "string",
            name = "nextToken",
            target_id = prelude.String.id,
        }),
    },
})

M.ListComputationModelsInput = schema.new({
    id = id.from(_N, "ListComputationModelsRequest"),
    type = "structure",
    members = {
        computationModelType = schema.new({
            id = id.from(_N, "ListComputationModelsInput", "computationModelType"),
            type = "string",
            name = "computationModelType",
            target_id = prelude.String.id,
            traits = {
                [traits.HTTP_QUERY] = { name = "computationModelType" },
            },
        }),
        nextToken = schema.new({
            id = id.from(_N, "ListComputationModelsInput", "nextToken"),
            type = "string",
            name = "nextToken",
            target_id = prelude.String.id,
            traits = {
                [traits.HTTP_QUERY] = { name = "nextToken" },
            },
        }),
        maxResults = schema.new({
            id = id.from(_N, "ListComputationModelsInput", "maxResults"),
            type = "integer",
            name = "maxResults",
            target_id = prelude.Integer.id,
            traits = {
                [traits.HTTP_QUERY] = { name = "maxResults" },
            },
        }),
    },
})

M.ComputationModelSummary = schema.new({
    id = id.from(_N, "ComputationModelSummary"),
    type = "structure",
    members = {
        id = schema.new({
            id = id.from(_N, "ComputationModelSummary", "id"),
            type = "string",
            name = "id",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        arn = schema.new({
            id = id.from(_N, "ComputationModelSummary", "arn"),
            type = "string",
            name = "arn",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        name = schema.new({
            id = id.from(_N, "ComputationModelSummary", "name"),
            type = "string",
            name = "name",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        description = schema.new({
            id = id.from(_N, "ComputationModelSummary", "description"),
            type = "string",
            name = "description",
            target_id = prelude.String.id,
        }),
        type = schema.new({
            id = id.from(_N, "ComputationModelSummary", "type"),
            type = "string",
            name = "type",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        creationDate = schema.new({
            id = id.from(_N, "ComputationModelSummary", "creationDate"),
            type = "timestamp",
            name = "creationDate",
            target_id = prelude.Timestamp.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        lastUpdateDate = schema.new({
            id = id.from(_N, "ComputationModelSummary", "lastUpdateDate"),
            type = "timestamp",
            name = "lastUpdateDate",
            target_id = prelude.Timestamp.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        status = schema.new({
            id = id.from(_N, "ComputationModelSummary", "status"),
            type = "structure",
            name = "status",
            target_id = id.from(_N, "ComputationModelStatus"),
            target = M.ComputationModelStatus,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        version = schema.new({
            id = id.from(_N, "ComputationModelSummary", "version"),
            type = "string",
            name = "version",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.ListComputationModelsOutput = schema.new({
    id = id.from(_N, "ListComputationModelsResponse"),
    type = "structure",
    members = {
        computationModelSummaries = schema.new({
            id = id.from(_N, "ListComputationModelsOutput", "computationModelSummaries"),
            type = "list",
            name = "computationModelSummaries",
            target_id = prelude.Document.id,
            list_member = M.ComputationModelSummary,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        nextToken = schema.new({
            id = id.from(_N, "ListComputationModelsOutput", "nextToken"),
            type = "string",
            name = "nextToken",
            target_id = prelude.String.id,
        }),
    },
})

M.ListDashboardsInput = schema.new({
    id = id.from(_N, "ListDashboardsRequest"),
    type = "structure",
    members = {
        projectId = schema.new({
            id = id.from(_N, "ListDashboardsInput", "projectId"),
            type = "string",
            name = "projectId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_QUERY] = { name = "projectId" },
            },
        }),
        nextToken = schema.new({
            id = id.from(_N, "ListDashboardsInput", "nextToken"),
            type = "string",
            name = "nextToken",
            target_id = prelude.String.id,
            traits = {
                [traits.HTTP_QUERY] = { name = "nextToken" },
            },
        }),
        maxResults = schema.new({
            id = id.from(_N, "ListDashboardsInput", "maxResults"),
            type = "integer",
            name = "maxResults",
            target_id = prelude.Integer.id,
            traits = {
                [traits.HTTP_QUERY] = { name = "maxResults" },
            },
        }),
    },
})

M.DashboardSummary = schema.new({
    id = id.from(_N, "DashboardSummary"),
    type = "structure",
    members = {
        id = schema.new({
            id = id.from(_N, "DashboardSummary", "id"),
            type = "string",
            name = "id",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        name = schema.new({
            id = id.from(_N, "DashboardSummary", "name"),
            type = "string",
            name = "name",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        description = schema.new({
            id = id.from(_N, "DashboardSummary", "description"),
            type = "string",
            name = "description",
            target_id = prelude.String.id,
        }),
        creationDate = schema.new({
            id = id.from(_N, "DashboardSummary", "creationDate"),
            type = "timestamp",
            name = "creationDate",
            target_id = prelude.Timestamp.id,
        }),
        lastUpdateDate = schema.new({
            id = id.from(_N, "DashboardSummary", "lastUpdateDate"),
            type = "timestamp",
            name = "lastUpdateDate",
            target_id = prelude.Timestamp.id,
        }),
    },
})

M.ListDashboardsOutput = schema.new({
    id = id.from(_N, "ListDashboardsResponse"),
    type = "structure",
    members = {
        dashboardSummaries = schema.new({
            id = id.from(_N, "ListDashboardsOutput", "dashboardSummaries"),
            type = "list",
            name = "dashboardSummaries",
            target_id = prelude.Document.id,
            list_member = M.DashboardSummary,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        nextToken = schema.new({
            id = id.from(_N, "ListDashboardsOutput", "nextToken"),
            type = "string",
            name = "nextToken",
            target_id = prelude.String.id,
        }),
    },
})

M.ListDatasetsInput = schema.new({
    id = id.from(_N, "ListDatasetsRequest"),
    type = "structure",
    members = {
        sourceType = schema.new({
            id = id.from(_N, "ListDatasetsInput", "sourceType"),
            type = "string",
            name = "sourceType",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_QUERY] = { name = "sourceType" },
            },
        }),
        nextToken = schema.new({
            id = id.from(_N, "ListDatasetsInput", "nextToken"),
            type = "string",
            name = "nextToken",
            target_id = prelude.String.id,
            traits = {
                [traits.HTTP_QUERY] = { name = "nextToken" },
            },
        }),
        maxResults = schema.new({
            id = id.from(_N, "ListDatasetsInput", "maxResults"),
            type = "integer",
            name = "maxResults",
            target_id = prelude.Integer.id,
            traits = {
                [traits.HTTP_QUERY] = { name = "maxResults" },
            },
        }),
    },
})

M.DatasetSummary = schema.new({
    id = id.from(_N, "DatasetSummary"),
    type = "structure",
    members = {
        id = schema.new({
            id = id.from(_N, "DatasetSummary", "id"),
            type = "string",
            name = "id",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        arn = schema.new({
            id = id.from(_N, "DatasetSummary", "arn"),
            type = "string",
            name = "arn",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        name = schema.new({
            id = id.from(_N, "DatasetSummary", "name"),
            type = "string",
            name = "name",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        description = schema.new({
            id = id.from(_N, "DatasetSummary", "description"),
            type = "string",
            name = "description",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        creationDate = schema.new({
            id = id.from(_N, "DatasetSummary", "creationDate"),
            type = "timestamp",
            name = "creationDate",
            target_id = prelude.Timestamp.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        lastUpdateDate = schema.new({
            id = id.from(_N, "DatasetSummary", "lastUpdateDate"),
            type = "timestamp",
            name = "lastUpdateDate",
            target_id = prelude.Timestamp.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        status = schema.new({
            id = id.from(_N, "DatasetSummary", "status"),
            type = "structure",
            name = "status",
            target_id = id.from(_N, "DatasetStatus"),
            target = M.DatasetStatus,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.ListDatasetsOutput = schema.new({
    id = id.from(_N, "ListDatasetsResponse"),
    type = "structure",
    members = {
        datasetSummaries = schema.new({
            id = id.from(_N, "ListDatasetsOutput", "datasetSummaries"),
            type = "list",
            name = "datasetSummaries",
            target_id = prelude.Document.id,
            list_member = M.DatasetSummary,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        nextToken = schema.new({
            id = id.from(_N, "ListDatasetsOutput", "nextToken"),
            type = "string",
            name = "nextToken",
            target_id = prelude.String.id,
        }),
    },
})

M.ListExecutionsInput = schema.new({
    id = id.from(_N, "ListExecutionsRequest"),
    type = "structure",
    members = {
        targetResourceType = schema.new({
            id = id.from(_N, "ListExecutionsInput", "targetResourceType"),
            type = "string",
            name = "targetResourceType",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_QUERY] = { name = "targetResourceType" },
            },
        }),
        targetResourceId = schema.new({
            id = id.from(_N, "ListExecutionsInput", "targetResourceId"),
            type = "string",
            name = "targetResourceId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_QUERY] = { name = "targetResourceId" },
            },
        }),
        resolveToResourceType = schema.new({
            id = id.from(_N, "ListExecutionsInput", "resolveToResourceType"),
            type = "string",
            name = "resolveToResourceType",
            target_id = prelude.String.id,
            traits = {
                [traits.HTTP_QUERY] = { name = "resolveToResourceType" },
            },
        }),
        resolveToResourceId = schema.new({
            id = id.from(_N, "ListExecutionsInput", "resolveToResourceId"),
            type = "string",
            name = "resolveToResourceId",
            target_id = prelude.String.id,
            traits = {
                [traits.HTTP_QUERY] = { name = "resolveToResourceId" },
            },
        }),
        nextToken = schema.new({
            id = id.from(_N, "ListExecutionsInput", "nextToken"),
            type = "string",
            name = "nextToken",
            target_id = prelude.String.id,
            traits = {
                [traits.HTTP_QUERY] = { name = "nextToken" },
            },
        }),
        maxResults = schema.new({
            id = id.from(_N, "ListExecutionsInput", "maxResults"),
            type = "integer",
            name = "maxResults",
            target_id = prelude.Integer.id,
            traits = {
                [traits.HTTP_QUERY] = { name = "maxResults" },
            },
        }),
        actionType = schema.new({
            id = id.from(_N, "ListExecutionsInput", "actionType"),
            type = "string",
            name = "actionType",
            target_id = prelude.String.id,
            traits = {
                [traits.HTTP_QUERY] = { name = "actionType" },
            },
        }),
    },
})

M.ExecutionSummary = schema.new({
    id = id.from(_N, "ExecutionSummary"),
    type = "structure",
    members = {
        executionId = schema.new({
            id = id.from(_N, "ExecutionSummary", "executionId"),
            type = "string",
            name = "executionId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        actionType = schema.new({
            id = id.from(_N, "ExecutionSummary", "actionType"),
            type = "string",
            name = "actionType",
            target_id = prelude.String.id,
        }),
        targetResource = schema.new({
            id = id.from(_N, "ExecutionSummary", "targetResource"),
            type = "structure",
            name = "targetResource",
            target_id = id.from(_N, "TargetResource"),
            target = M.TargetResource,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        targetResourceVersion = schema.new({
            id = id.from(_N, "ExecutionSummary", "targetResourceVersion"),
            type = "string",
            name = "targetResourceVersion",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        resolveTo = schema.new({
            id = id.from(_N, "ExecutionSummary", "resolveTo"),
            type = "structure",
            name = "resolveTo",
            target_id = id.from(_N, "ResolveTo"),
            target = M.ResolveTo,
        }),
        executionStartTime = schema.new({
            id = id.from(_N, "ExecutionSummary", "executionStartTime"),
            type = "timestamp",
            name = "executionStartTime",
            target_id = prelude.Timestamp.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        executionEndTime = schema.new({
            id = id.from(_N, "ExecutionSummary", "executionEndTime"),
            type = "timestamp",
            name = "executionEndTime",
            target_id = prelude.Timestamp.id,
        }),
        executionStatus = schema.new({
            id = id.from(_N, "ExecutionSummary", "executionStatus"),
            type = "structure",
            name = "executionStatus",
            target_id = id.from(_N, "ExecutionStatus"),
            target = M.ExecutionStatus,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        executionEntityVersion = schema.new({
            id = id.from(_N, "ExecutionSummary", "executionEntityVersion"),
            type = "string",
            name = "executionEntityVersion",
            target_id = prelude.String.id,
        }),
    },
})

M.ListExecutionsOutput = schema.new({
    id = id.from(_N, "ListExecutionsResponse"),
    type = "structure",
    members = {
        executionSummaries = schema.new({
            id = id.from(_N, "ListExecutionsOutput", "executionSummaries"),
            type = "list",
            name = "executionSummaries",
            target_id = prelude.Document.id,
            list_member = M.ExecutionSummary,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        nextToken = schema.new({
            id = id.from(_N, "ListExecutionsOutput", "nextToken"),
            type = "string",
            name = "nextToken",
            target_id = prelude.String.id,
        }),
    },
})

M.ListGatewaysInput = schema.new({
    id = id.from(_N, "ListGatewaysRequest"),
    type = "structure",
    members = {
        nextToken = schema.new({
            id = id.from(_N, "ListGatewaysInput", "nextToken"),
            type = "string",
            name = "nextToken",
            target_id = prelude.String.id,
            traits = {
                [traits.HTTP_QUERY] = { name = "nextToken" },
            },
        }),
        maxResults = schema.new({
            id = id.from(_N, "ListGatewaysInput", "maxResults"),
            type = "integer",
            name = "maxResults",
            target_id = prelude.Integer.id,
            traits = {
                [traits.HTTP_QUERY] = { name = "maxResults" },
            },
        }),
    },
})

M.GatewaySummary = schema.new({
    id = id.from(_N, "GatewaySummary"),
    type = "structure",
    members = {
        gatewayId = schema.new({
            id = id.from(_N, "GatewaySummary", "gatewayId"),
            type = "string",
            name = "gatewayId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        gatewayName = schema.new({
            id = id.from(_N, "GatewaySummary", "gatewayName"),
            type = "string",
            name = "gatewayName",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        gatewayPlatform = schema.new({
            id = id.from(_N, "GatewaySummary", "gatewayPlatform"),
            type = "structure",
            name = "gatewayPlatform",
            target_id = id.from(_N, "GatewayPlatform"),
            target = M.GatewayPlatform,
        }),
        gatewayVersion = schema.new({
            id = id.from(_N, "GatewaySummary", "gatewayVersion"),
            type = "string",
            name = "gatewayVersion",
            target_id = prelude.String.id,
        }),
        gatewayCapabilitySummaries = schema.new({
            id = id.from(_N, "GatewaySummary", "gatewayCapabilitySummaries"),
            type = "list",
            name = "gatewayCapabilitySummaries",
            target_id = prelude.Document.id,
            list_member = M.GatewayCapabilitySummary,
        }),
        creationDate = schema.new({
            id = id.from(_N, "GatewaySummary", "creationDate"),
            type = "timestamp",
            name = "creationDate",
            target_id = prelude.Timestamp.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        lastUpdateDate = schema.new({
            id = id.from(_N, "GatewaySummary", "lastUpdateDate"),
            type = "timestamp",
            name = "lastUpdateDate",
            target_id = prelude.Timestamp.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.ListGatewaysOutput = schema.new({
    id = id.from(_N, "ListGatewaysResponse"),
    type = "structure",
    members = {
        gatewaySummaries = schema.new({
            id = id.from(_N, "ListGatewaysOutput", "gatewaySummaries"),
            type = "list",
            name = "gatewaySummaries",
            target_id = prelude.Document.id,
            list_member = M.GatewaySummary,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        nextToken = schema.new({
            id = id.from(_N, "ListGatewaysOutput", "nextToken"),
            type = "string",
            name = "nextToken",
            target_id = prelude.String.id,
        }),
    },
})

M.ListInterfaceRelationshipsInput = schema.new({
    id = id.from(_N, "ListInterfaceRelationshipsRequest"),
    type = "structure",
    members = {
        interfaceAssetModelId = schema.new({
            id = id.from(_N, "ListInterfaceRelationshipsInput", "interfaceAssetModelId"),
            type = "string",
            name = "interfaceAssetModelId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
        nextToken = schema.new({
            id = id.from(_N, "ListInterfaceRelationshipsInput", "nextToken"),
            type = "string",
            name = "nextToken",
            target_id = prelude.String.id,
            traits = {
                [traits.HTTP_QUERY] = { name = "nextToken" },
            },
        }),
        maxResults = schema.new({
            id = id.from(_N, "ListInterfaceRelationshipsInput", "maxResults"),
            type = "integer",
            name = "maxResults",
            target_id = prelude.Integer.id,
            traits = {
                [traits.HTTP_QUERY] = { name = "maxResults" },
            },
        }),
    },
})

M.InterfaceRelationshipSummary = schema.new({
    id = id.from(_N, "InterfaceRelationshipSummary"),
    type = "structure",
    members = {
        id = schema.new({
            id = id.from(_N, "InterfaceRelationshipSummary", "id"),
            type = "string",
            name = "id",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.ListInterfaceRelationshipsOutput = schema.new({
    id = id.from(_N, "ListInterfaceRelationshipsResponse"),
    type = "structure",
    members = {
        interfaceRelationshipSummaries = schema.new({
            id = id.from(_N, "ListInterfaceRelationshipsOutput", "interfaceRelationshipSummaries"),
            type = "list",
            name = "interfaceRelationshipSummaries",
            target_id = prelude.Document.id,
            list_member = M.InterfaceRelationshipSummary,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        nextToken = schema.new({
            id = id.from(_N, "ListInterfaceRelationshipsOutput", "nextToken"),
            type = "string",
            name = "nextToken",
            target_id = prelude.String.id,
        }),
    },
})

M.ListPortalsInput = schema.new({
    id = id.from(_N, "ListPortalsRequest"),
    type = "structure",
    members = {
        nextToken = schema.new({
            id = id.from(_N, "ListPortalsInput", "nextToken"),
            type = "string",
            name = "nextToken",
            target_id = prelude.String.id,
            traits = {
                [traits.HTTP_QUERY] = { name = "nextToken" },
            },
        }),
        maxResults = schema.new({
            id = id.from(_N, "ListPortalsInput", "maxResults"),
            type = "integer",
            name = "maxResults",
            target_id = prelude.Integer.id,
            traits = {
                [traits.HTTP_QUERY] = { name = "maxResults" },
            },
        }),
    },
})

M.PortalSummary = schema.new({
    id = id.from(_N, "PortalSummary"),
    type = "structure",
    members = {
        id = schema.new({
            id = id.from(_N, "PortalSummary", "id"),
            type = "string",
            name = "id",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        name = schema.new({
            id = id.from(_N, "PortalSummary", "name"),
            type = "string",
            name = "name",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        description = schema.new({
            id = id.from(_N, "PortalSummary", "description"),
            type = "string",
            name = "description",
            target_id = prelude.String.id,
        }),
        startUrl = schema.new({
            id = id.from(_N, "PortalSummary", "startUrl"),
            type = "string",
            name = "startUrl",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        creationDate = schema.new({
            id = id.from(_N, "PortalSummary", "creationDate"),
            type = "timestamp",
            name = "creationDate",
            target_id = prelude.Timestamp.id,
        }),
        lastUpdateDate = schema.new({
            id = id.from(_N, "PortalSummary", "lastUpdateDate"),
            type = "timestamp",
            name = "lastUpdateDate",
            target_id = prelude.Timestamp.id,
        }),
        roleArn = schema.new({
            id = id.from(_N, "PortalSummary", "roleArn"),
            type = "string",
            name = "roleArn",
            target_id = prelude.String.id,
        }),
        status = schema.new({
            id = id.from(_N, "PortalSummary", "status"),
            type = "structure",
            name = "status",
            target_id = id.from(_N, "PortalStatus"),
            target = M.PortalStatus,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        portalType = schema.new({
            id = id.from(_N, "PortalSummary", "portalType"),
            type = "string",
            name = "portalType",
            target_id = prelude.String.id,
        }),
    },
})

M.ListPortalsOutput = schema.new({
    id = id.from(_N, "ListPortalsResponse"),
    type = "structure",
    members = {
        portalSummaries = schema.new({
            id = id.from(_N, "ListPortalsOutput", "portalSummaries"),
            type = "list",
            name = "portalSummaries",
            target_id = prelude.Document.id,
            list_member = M.PortalSummary,
        }),
        nextToken = schema.new({
            id = id.from(_N, "ListPortalsOutput", "nextToken"),
            type = "string",
            name = "nextToken",
            target_id = prelude.String.id,
        }),
    },
})

M.ListProjectAssetsInput = schema.new({
    id = id.from(_N, "ListProjectAssetsRequest"),
    type = "structure",
    members = {
        projectId = schema.new({
            id = id.from(_N, "ListProjectAssetsInput", "projectId"),
            type = "string",
            name = "projectId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
        nextToken = schema.new({
            id = id.from(_N, "ListProjectAssetsInput", "nextToken"),
            type = "string",
            name = "nextToken",
            target_id = prelude.String.id,
            traits = {
                [traits.HTTP_QUERY] = { name = "nextToken" },
            },
        }),
        maxResults = schema.new({
            id = id.from(_N, "ListProjectAssetsInput", "maxResults"),
            type = "integer",
            name = "maxResults",
            target_id = prelude.Integer.id,
            traits = {
                [traits.HTTP_QUERY] = { name = "maxResults" },
            },
        }),
    },
})

M.ListProjectAssetsOutput = schema.new({
    id = id.from(_N, "ListProjectAssetsResponse"),
    type = "structure",
    members = {
        assetIds = schema.new({
            id = id.from(_N, "ListProjectAssetsOutput", "assetIds"),
            type = "list",
            name = "assetIds",
            target_id = prelude.Document.id,
            list_member = prelude.String,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        nextToken = schema.new({
            id = id.from(_N, "ListProjectAssetsOutput", "nextToken"),
            type = "string",
            name = "nextToken",
            target_id = prelude.String.id,
        }),
    },
})

M.ListProjectsInput = schema.new({
    id = id.from(_N, "ListProjectsRequest"),
    type = "structure",
    members = {
        portalId = schema.new({
            id = id.from(_N, "ListProjectsInput", "portalId"),
            type = "string",
            name = "portalId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_QUERY] = { name = "portalId" },
            },
        }),
        nextToken = schema.new({
            id = id.from(_N, "ListProjectsInput", "nextToken"),
            type = "string",
            name = "nextToken",
            target_id = prelude.String.id,
            traits = {
                [traits.HTTP_QUERY] = { name = "nextToken" },
            },
        }),
        maxResults = schema.new({
            id = id.from(_N, "ListProjectsInput", "maxResults"),
            type = "integer",
            name = "maxResults",
            target_id = prelude.Integer.id,
            traits = {
                [traits.HTTP_QUERY] = { name = "maxResults" },
            },
        }),
    },
})

M.ProjectSummary = schema.new({
    id = id.from(_N, "ProjectSummary"),
    type = "structure",
    members = {
        id = schema.new({
            id = id.from(_N, "ProjectSummary", "id"),
            type = "string",
            name = "id",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        name = schema.new({
            id = id.from(_N, "ProjectSummary", "name"),
            type = "string",
            name = "name",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        description = schema.new({
            id = id.from(_N, "ProjectSummary", "description"),
            type = "string",
            name = "description",
            target_id = prelude.String.id,
        }),
        creationDate = schema.new({
            id = id.from(_N, "ProjectSummary", "creationDate"),
            type = "timestamp",
            name = "creationDate",
            target_id = prelude.Timestamp.id,
        }),
        lastUpdateDate = schema.new({
            id = id.from(_N, "ProjectSummary", "lastUpdateDate"),
            type = "timestamp",
            name = "lastUpdateDate",
            target_id = prelude.Timestamp.id,
        }),
    },
})

M.ListProjectsOutput = schema.new({
    id = id.from(_N, "ListProjectsResponse"),
    type = "structure",
    members = {
        projectSummaries = schema.new({
            id = id.from(_N, "ListProjectsOutput", "projectSummaries"),
            type = "list",
            name = "projectSummaries",
            target_id = prelude.Document.id,
            list_member = M.ProjectSummary,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        nextToken = schema.new({
            id = id.from(_N, "ListProjectsOutput", "nextToken"),
            type = "string",
            name = "nextToken",
            target_id = prelude.String.id,
        }),
    },
})

M.ListTagsForResourceInput = schema.new({
    id = id.from(_N, "ListTagsForResourceRequest"),
    type = "structure",
    members = {
        resourceArn = schema.new({
            id = id.from(_N, "ListTagsForResourceInput", "resourceArn"),
            type = "string",
            name = "resourceArn",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_QUERY] = { name = "resourceArn" },
            },
        }),
    },
})

M.ListTagsForResourceOutput = schema.new({
    id = id.from(_N, "ListTagsForResourceResponse"),
    type = "structure",
    members = {
        tags = schema.new({
            id = id.from(_N, "ListTagsForResourceOutput", "tags"),
            type = "map",
            name = "tags",
            target_id = prelude.Document.id,
            map_key = prelude.String,
            map_value = prelude.String,
        }),
    },
})

M.UnauthorizedException = schema.new({
    id = id.from(_N, "UnauthorizedException"),
    type = "structure",
    traits = {
        [traits.ERROR] = { value = "client" },
    },
    members = {
        message = schema.new({
            id = id.from(_N, "UnauthorizedException", "message"),
            type = "string",
            name = "message",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.ListTimeSeriesInput = schema.new({
    id = id.from(_N, "ListTimeSeriesRequest"),
    type = "structure",
    members = {
        nextToken = schema.new({
            id = id.from(_N, "ListTimeSeriesInput", "nextToken"),
            type = "string",
            name = "nextToken",
            target_id = prelude.String.id,
            traits = {
                [traits.HTTP_QUERY] = { name = "nextToken" },
            },
        }),
        maxResults = schema.new({
            id = id.from(_N, "ListTimeSeriesInput", "maxResults"),
            type = "integer",
            name = "maxResults",
            target_id = prelude.Integer.id,
            traits = {
                [traits.HTTP_QUERY] = { name = "maxResults" },
            },
        }),
        assetId = schema.new({
            id = id.from(_N, "ListTimeSeriesInput", "assetId"),
            type = "string",
            name = "assetId",
            target_id = prelude.String.id,
            traits = {
                [traits.HTTP_QUERY] = { name = "assetId" },
            },
        }),
        aliasPrefix = schema.new({
            id = id.from(_N, "ListTimeSeriesInput", "aliasPrefix"),
            type = "string",
            name = "aliasPrefix",
            target_id = prelude.String.id,
            traits = {
                [traits.HTTP_QUERY] = { name = "aliasPrefix" },
            },
        }),
        timeSeriesType = schema.new({
            id = id.from(_N, "ListTimeSeriesInput", "timeSeriesType"),
            type = "string",
            name = "timeSeriesType",
            target_id = prelude.String.id,
            traits = {
                [traits.HTTP_QUERY] = { name = "timeSeriesType" },
            },
        }),
    },
})

M.TimeSeriesSummary = schema.new({
    id = id.from(_N, "TimeSeriesSummary"),
    type = "structure",
    members = {
        assetId = schema.new({
            id = id.from(_N, "TimeSeriesSummary", "assetId"),
            type = "string",
            name = "assetId",
            target_id = prelude.String.id,
        }),
        propertyId = schema.new({
            id = id.from(_N, "TimeSeriesSummary", "propertyId"),
            type = "string",
            name = "propertyId",
            target_id = prelude.String.id,
        }),
        alias = schema.new({
            id = id.from(_N, "TimeSeriesSummary", "alias"),
            type = "string",
            name = "alias",
            target_id = prelude.String.id,
        }),
        timeSeriesId = schema.new({
            id = id.from(_N, "TimeSeriesSummary", "timeSeriesId"),
            type = "string",
            name = "timeSeriesId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        dataType = schema.new({
            id = id.from(_N, "TimeSeriesSummary", "dataType"),
            type = "string",
            name = "dataType",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        dataTypeSpec = schema.new({
            id = id.from(_N, "TimeSeriesSummary", "dataTypeSpec"),
            type = "string",
            name = "dataTypeSpec",
            target_id = prelude.String.id,
        }),
        timeSeriesCreationDate = schema.new({
            id = id.from(_N, "TimeSeriesSummary", "timeSeriesCreationDate"),
            type = "timestamp",
            name = "timeSeriesCreationDate",
            target_id = prelude.Timestamp.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        timeSeriesLastUpdateDate = schema.new({
            id = id.from(_N, "TimeSeriesSummary", "timeSeriesLastUpdateDate"),
            type = "timestamp",
            name = "timeSeriesLastUpdateDate",
            target_id = prelude.Timestamp.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        timeSeriesArn = schema.new({
            id = id.from(_N, "TimeSeriesSummary", "timeSeriesArn"),
            type = "string",
            name = "timeSeriesArn",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.ListTimeSeriesOutput = schema.new({
    id = id.from(_N, "ListTimeSeriesResponse"),
    type = "structure",
    members = {
        TimeSeriesSummaries = schema.new({
            id = id.from(_N, "ListTimeSeriesOutput", "TimeSeriesSummaries"),
            type = "list",
            name = "TimeSeriesSummaries",
            target_id = prelude.Document.id,
            list_member = M.TimeSeriesSummary,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        nextToken = schema.new({
            id = id.from(_N, "ListTimeSeriesOutput", "nextToken"),
            type = "string",
            name = "nextToken",
            target_id = prelude.String.id,
        }),
    },
})

M.PropertyMappingConfiguration = schema.new({
    id = id.from(_N, "PropertyMappingConfiguration"),
    type = "structure",
    members = {
        matchByPropertyName = schema.new({
            id = id.from(_N, "PropertyMappingConfiguration", "matchByPropertyName"),
            type = "boolean",
            name = "matchByPropertyName",
            target_id = prelude.Boolean.id,
            traits = {
                [traits.DEFAULT] = { value = false },
            },
        }),
        createMissingProperty = schema.new({
            id = id.from(_N, "PropertyMappingConfiguration", "createMissingProperty"),
            type = "boolean",
            name = "createMissingProperty",
            target_id = prelude.Boolean.id,
            traits = {
                [traits.DEFAULT] = { value = false },
            },
        }),
        overrides = schema.new({
            id = id.from(_N, "PropertyMappingConfiguration", "overrides"),
            type = "list",
            name = "overrides",
            target_id = prelude.Document.id,
            list_member = M.PropertyMapping,
        }),
    },
})

M.PutAssetModelInterfaceRelationshipInput = schema.new({
    id = id.from(_N, "PutAssetModelInterfaceRelationshipRequest"),
    type = "structure",
    members = {
        assetModelId = schema.new({
            id = id.from(_N, "PutAssetModelInterfaceRelationshipInput", "assetModelId"),
            type = "string",
            name = "assetModelId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
        interfaceAssetModelId = schema.new({
            id = id.from(_N, "PutAssetModelInterfaceRelationshipInput", "interfaceAssetModelId"),
            type = "string",
            name = "interfaceAssetModelId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
        propertyMappingConfiguration = schema.new({
            id = id.from(_N, "PutAssetModelInterfaceRelationshipInput", "propertyMappingConfiguration"),
            type = "structure",
            name = "propertyMappingConfiguration",
            target_id = id.from(_N, "PropertyMappingConfiguration"),
            target = M.PropertyMappingConfiguration,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        clientToken = schema.new({
            id = id.from(_N, "PutAssetModelInterfaceRelationshipInput", "clientToken"),
            type = "string",
            name = "clientToken",
            target_id = prelude.String.id,
            traits = {
                [traits.IDEMPOTENCY_TOKEN] = {},
            },
        }),
    },
})

M.PutAssetModelInterfaceRelationshipOutput = schema.new({
    id = id.from(_N, "PutAssetModelInterfaceRelationshipResponse"),
    type = "structure",
    members = {
        assetModelId = schema.new({
            id = id.from(_N, "PutAssetModelInterfaceRelationshipOutput", "assetModelId"),
            type = "string",
            name = "assetModelId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        interfaceAssetModelId = schema.new({
            id = id.from(_N, "PutAssetModelInterfaceRelationshipOutput", "interfaceAssetModelId"),
            type = "string",
            name = "interfaceAssetModelId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        assetModelArn = schema.new({
            id = id.from(_N, "PutAssetModelInterfaceRelationshipOutput", "assetModelArn"),
            type = "string",
            name = "assetModelArn",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        assetModelStatus = schema.new({
            id = id.from(_N, "PutAssetModelInterfaceRelationshipOutput", "assetModelStatus"),
            type = "structure",
            name = "assetModelStatus",
            target_id = id.from(_N, "AssetModelStatus"),
            target = M.AssetModelStatus,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.PutDefaultEncryptionConfigurationInput = schema.new({
    id = id.from(_N, "PutDefaultEncryptionConfigurationRequest"),
    type = "structure",
    members = {
        encryptionType = schema.new({
            id = id.from(_N, "PutDefaultEncryptionConfigurationInput", "encryptionType"),
            type = "string",
            name = "encryptionType",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        kmsKeyId = schema.new({
            id = id.from(_N, "PutDefaultEncryptionConfigurationInput", "kmsKeyId"),
            type = "string",
            name = "kmsKeyId",
            target_id = prelude.String.id,
        }),
    },
})

M.PutDefaultEncryptionConfigurationOutput = schema.new({
    id = id.from(_N, "PutDefaultEncryptionConfigurationResponse"),
    type = "structure",
    members = {
        encryptionType = schema.new({
            id = id.from(_N, "PutDefaultEncryptionConfigurationOutput", "encryptionType"),
            type = "string",
            name = "encryptionType",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        kmsKeyArn = schema.new({
            id = id.from(_N, "PutDefaultEncryptionConfigurationOutput", "kmsKeyArn"),
            type = "string",
            name = "kmsKeyArn",
            target_id = prelude.String.id,
        }),
        configurationStatus = schema.new({
            id = id.from(_N, "PutDefaultEncryptionConfigurationOutput", "configurationStatus"),
            type = "structure",
            name = "configurationStatus",
            target_id = id.from(_N, "ConfigurationStatus"),
            target = M.ConfigurationStatus,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.PutLoggingOptionsInput = schema.new({
    id = id.from(_N, "PutLoggingOptionsRequest"),
    type = "structure",
    members = {
        loggingOptions = schema.new({
            id = id.from(_N, "PutLoggingOptionsInput", "loggingOptions"),
            type = "structure",
            name = "loggingOptions",
            target_id = id.from(_N, "LoggingOptions"),
            target = M.LoggingOptions,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.PutLoggingOptionsOutput = schema.new({
    id = id.from(_N, "PutLoggingOptionsResponse"),
    type = "structure",
})

M.PutStorageConfigurationInput = schema.new({
    id = id.from(_N, "PutStorageConfigurationRequest"),
    type = "structure",
    members = {
        storageType = schema.new({
            id = id.from(_N, "PutStorageConfigurationInput", "storageType"),
            type = "string",
            name = "storageType",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        multiLayerStorage = schema.new({
            id = id.from(_N, "PutStorageConfigurationInput", "multiLayerStorage"),
            type = "structure",
            name = "multiLayerStorage",
            target_id = id.from(_N, "MultiLayerStorage"),
            target = M.MultiLayerStorage,
        }),
        disassociatedDataStorage = schema.new({
            id = id.from(_N, "PutStorageConfigurationInput", "disassociatedDataStorage"),
            type = "string",
            name = "disassociatedDataStorage",
            target_id = prelude.String.id,
        }),
        retentionPeriod = schema.new({
            id = id.from(_N, "PutStorageConfigurationInput", "retentionPeriod"),
            type = "structure",
            name = "retentionPeriod",
            target_id = id.from(_N, "RetentionPeriod"),
            target = M.RetentionPeriod,
        }),
        warmTier = schema.new({
            id = id.from(_N, "PutStorageConfigurationInput", "warmTier"),
            type = "string",
            name = "warmTier",
            target_id = prelude.String.id,
        }),
        warmTierRetentionPeriod = schema.new({
            id = id.from(_N, "PutStorageConfigurationInput", "warmTierRetentionPeriod"),
            type = "structure",
            name = "warmTierRetentionPeriod",
            target_id = id.from(_N, "WarmTierRetentionPeriod"),
            target = M.WarmTierRetentionPeriod,
        }),
        disallowIngestNullNaN = schema.new({
            id = id.from(_N, "PutStorageConfigurationInput", "disallowIngestNullNaN"),
            type = "boolean",
            name = "disallowIngestNullNaN",
            target_id = prelude.Boolean.id,
        }),
    },
})

M.PutStorageConfigurationOutput = schema.new({
    id = id.from(_N, "PutStorageConfigurationResponse"),
    type = "structure",
    members = {
        storageType = schema.new({
            id = id.from(_N, "PutStorageConfigurationOutput", "storageType"),
            type = "string",
            name = "storageType",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        multiLayerStorage = schema.new({
            id = id.from(_N, "PutStorageConfigurationOutput", "multiLayerStorage"),
            type = "structure",
            name = "multiLayerStorage",
            target_id = id.from(_N, "MultiLayerStorage"),
            target = M.MultiLayerStorage,
        }),
        disassociatedDataStorage = schema.new({
            id = id.from(_N, "PutStorageConfigurationOutput", "disassociatedDataStorage"),
            type = "string",
            name = "disassociatedDataStorage",
            target_id = prelude.String.id,
        }),
        retentionPeriod = schema.new({
            id = id.from(_N, "PutStorageConfigurationOutput", "retentionPeriod"),
            type = "structure",
            name = "retentionPeriod",
            target_id = id.from(_N, "RetentionPeriod"),
            target = M.RetentionPeriod,
        }),
        configurationStatus = schema.new({
            id = id.from(_N, "PutStorageConfigurationOutput", "configurationStatus"),
            type = "structure",
            name = "configurationStatus",
            target_id = id.from(_N, "ConfigurationStatus"),
            target = M.ConfigurationStatus,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        warmTier = schema.new({
            id = id.from(_N, "PutStorageConfigurationOutput", "warmTier"),
            type = "string",
            name = "warmTier",
            target_id = prelude.String.id,
        }),
        warmTierRetentionPeriod = schema.new({
            id = id.from(_N, "PutStorageConfigurationOutput", "warmTierRetentionPeriod"),
            type = "structure",
            name = "warmTierRetentionPeriod",
            target_id = id.from(_N, "WarmTierRetentionPeriod"),
            target = M.WarmTierRetentionPeriod,
        }),
        disallowIngestNullNaN = schema.new({
            id = id.from(_N, "PutStorageConfigurationOutput", "disallowIngestNullNaN"),
            type = "boolean",
            name = "disallowIngestNullNaN",
            target_id = prelude.Boolean.id,
        }),
    },
})

M.TagResourceInput = schema.new({
    id = id.from(_N, "TagResourceRequest"),
    type = "structure",
    members = {
        resourceArn = schema.new({
            id = id.from(_N, "TagResourceInput", "resourceArn"),
            type = "string",
            name = "resourceArn",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_QUERY] = { name = "resourceArn" },
            },
        }),
        tags = schema.new({
            id = id.from(_N, "TagResourceInput", "tags"),
            type = "map",
            name = "tags",
            target_id = prelude.Document.id,
            map_key = prelude.String,
            map_value = prelude.String,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.TagResourceOutput = schema.new({
    id = id.from(_N, "TagResourceResponse"),
    type = "structure",
})

M.TooManyTagsException = schema.new({
    id = id.from(_N, "TooManyTagsException"),
    type = "structure",
    traits = {
        [traits.ERROR] = { value = "client" },
    },
    members = {
        message = schema.new({
            id = id.from(_N, "TooManyTagsException", "message"),
            type = "string",
            name = "message",
            target_id = prelude.String.id,
        }),
        resourceName = schema.new({
            id = id.from(_N, "TooManyTagsException", "resourceName"),
            type = "string",
            name = "resourceName",
            target_id = prelude.String.id,
        }),
    },
})

M.UntagResourceInput = schema.new({
    id = id.from(_N, "UntagResourceRequest"),
    type = "structure",
    members = {
        resourceArn = schema.new({
            id = id.from(_N, "UntagResourceInput", "resourceArn"),
            type = "string",
            name = "resourceArn",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_QUERY] = { name = "resourceArn" },
            },
        }),
        tagKeys = schema.new({
            id = id.from(_N, "UntagResourceInput", "tagKeys"),
            type = "list",
            name = "tagKeys",
            target_id = prelude.Document.id,
            list_member = prelude.String,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_QUERY] = { name = "tagKeys" },
            },
        }),
    },
})

M.UntagResourceOutput = schema.new({
    id = id.from(_N, "UntagResourceResponse"),
    type = "structure",
})

M.UpdateAccessPolicyInput = schema.new({
    id = id.from(_N, "UpdateAccessPolicyRequest"),
    type = "structure",
    members = {
        accessPolicyId = schema.new({
            id = id.from(_N, "UpdateAccessPolicyInput", "accessPolicyId"),
            type = "string",
            name = "accessPolicyId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
        accessPolicyIdentity = schema.new({
            id = id.from(_N, "UpdateAccessPolicyInput", "accessPolicyIdentity"),
            type = "structure",
            name = "accessPolicyIdentity",
            target_id = id.from(_N, "Identity"),
            target = M.Identity,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        accessPolicyResource = schema.new({
            id = id.from(_N, "UpdateAccessPolicyInput", "accessPolicyResource"),
            type = "structure",
            name = "accessPolicyResource",
            target_id = id.from(_N, "Resource"),
            target = M.Resource,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        accessPolicyPermission = schema.new({
            id = id.from(_N, "UpdateAccessPolicyInput", "accessPolicyPermission"),
            type = "string",
            name = "accessPolicyPermission",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        clientToken = schema.new({
            id = id.from(_N, "UpdateAccessPolicyInput", "clientToken"),
            type = "string",
            name = "clientToken",
            target_id = prelude.String.id,
            traits = {
                [traits.IDEMPOTENCY_TOKEN] = {},
            },
        }),
    },
})

M.UpdateAccessPolicyOutput = schema.new({
    id = id.from(_N, "UpdateAccessPolicyResponse"),
    type = "structure",
})

M.UpdateAssetInput = schema.new({
    id = id.from(_N, "UpdateAssetRequest"),
    type = "structure",
    members = {
        assetId = schema.new({
            id = id.from(_N, "UpdateAssetInput", "assetId"),
            type = "string",
            name = "assetId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
        assetExternalId = schema.new({
            id = id.from(_N, "UpdateAssetInput", "assetExternalId"),
            type = "string",
            name = "assetExternalId",
            target_id = prelude.String.id,
        }),
        assetName = schema.new({
            id = id.from(_N, "UpdateAssetInput", "assetName"),
            type = "string",
            name = "assetName",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        clientToken = schema.new({
            id = id.from(_N, "UpdateAssetInput", "clientToken"),
            type = "string",
            name = "clientToken",
            target_id = prelude.String.id,
            traits = {
                [traits.IDEMPOTENCY_TOKEN] = {},
            },
        }),
        assetDescription = schema.new({
            id = id.from(_N, "UpdateAssetInput", "assetDescription"),
            type = "string",
            name = "assetDescription",
            target_id = prelude.String.id,
        }),
    },
})

M.UpdateAssetOutput = schema.new({
    id = id.from(_N, "UpdateAssetResponse"),
    type = "structure",
    members = {
        assetStatus = schema.new({
            id = id.from(_N, "UpdateAssetOutput", "assetStatus"),
            type = "structure",
            name = "assetStatus",
            target_id = id.from(_N, "AssetStatus"),
            target = M.AssetStatus,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.UpdateAssetModelInput = schema.new({
    id = id.from(_N, "UpdateAssetModelRequest"),
    type = "structure",
    members = {
        assetModelId = schema.new({
            id = id.from(_N, "UpdateAssetModelInput", "assetModelId"),
            type = "string",
            name = "assetModelId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
        assetModelExternalId = schema.new({
            id = id.from(_N, "UpdateAssetModelInput", "assetModelExternalId"),
            type = "string",
            name = "assetModelExternalId",
            target_id = prelude.String.id,
        }),
        assetModelName = schema.new({
            id = id.from(_N, "UpdateAssetModelInput", "assetModelName"),
            type = "string",
            name = "assetModelName",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        assetModelDescription = schema.new({
            id = id.from(_N, "UpdateAssetModelInput", "assetModelDescription"),
            type = "string",
            name = "assetModelDescription",
            target_id = prelude.String.id,
        }),
        assetModelProperties = schema.new({
            id = id.from(_N, "UpdateAssetModelInput", "assetModelProperties"),
            type = "list",
            name = "assetModelProperties",
            target_id = prelude.Document.id,
            list_member = M.AssetModelProperty,
        }),
        assetModelHierarchies = schema.new({
            id = id.from(_N, "UpdateAssetModelInput", "assetModelHierarchies"),
            type = "list",
            name = "assetModelHierarchies",
            target_id = prelude.Document.id,
            list_member = M.AssetModelHierarchy,
        }),
        assetModelCompositeModels = schema.new({
            id = id.from(_N, "UpdateAssetModelInput", "assetModelCompositeModels"),
            type = "list",
            name = "assetModelCompositeModels",
            target_id = prelude.Document.id,
            list_member = M.AssetModelCompositeModel,
        }),
        clientToken = schema.new({
            id = id.from(_N, "UpdateAssetModelInput", "clientToken"),
            type = "string",
            name = "clientToken",
            target_id = prelude.String.id,
            traits = {
                [traits.IDEMPOTENCY_TOKEN] = {},
            },
        }),
        ifMatch = schema.new({
            id = id.from(_N, "UpdateAssetModelInput", "ifMatch"),
            type = "string",
            name = "ifMatch",
            target_id = prelude.String.id,
            traits = {
                [traits.HTTP_HEADER] = { name = "If-Match" },
            },
        }),
        ifNoneMatch = schema.new({
            id = id.from(_N, "UpdateAssetModelInput", "ifNoneMatch"),
            type = "string",
            name = "ifNoneMatch",
            target_id = prelude.String.id,
            traits = {
                [traits.HTTP_HEADER] = { name = "If-None-Match" },
            },
        }),
        matchForVersionType = schema.new({
            id = id.from(_N, "UpdateAssetModelInput", "matchForVersionType"),
            type = "string",
            name = "matchForVersionType",
            target_id = prelude.String.id,
            traits = {
                [traits.HTTP_HEADER] = { name = "Match-For-Version-Type" },
            },
        }),
    },
})

M.UpdateAssetModelOutput = schema.new({
    id = id.from(_N, "UpdateAssetModelResponse"),
    type = "structure",
    members = {
        assetModelStatus = schema.new({
            id = id.from(_N, "UpdateAssetModelOutput", "assetModelStatus"),
            type = "structure",
            name = "assetModelStatus",
            target_id = id.from(_N, "AssetModelStatus"),
            target = M.AssetModelStatus,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.UpdateAssetModelCompositeModelInput = schema.new({
    id = id.from(_N, "UpdateAssetModelCompositeModelRequest"),
    type = "structure",
    members = {
        assetModelId = schema.new({
            id = id.from(_N, "UpdateAssetModelCompositeModelInput", "assetModelId"),
            type = "string",
            name = "assetModelId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
        assetModelCompositeModelId = schema.new({
            id = id.from(_N, "UpdateAssetModelCompositeModelInput", "assetModelCompositeModelId"),
            type = "string",
            name = "assetModelCompositeModelId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
        assetModelCompositeModelExternalId = schema.new({
            id = id.from(_N, "UpdateAssetModelCompositeModelInput", "assetModelCompositeModelExternalId"),
            type = "string",
            name = "assetModelCompositeModelExternalId",
            target_id = prelude.String.id,
        }),
        assetModelCompositeModelDescription = schema.new({
            id = id.from(_N, "UpdateAssetModelCompositeModelInput", "assetModelCompositeModelDescription"),
            type = "string",
            name = "assetModelCompositeModelDescription",
            target_id = prelude.String.id,
        }),
        assetModelCompositeModelName = schema.new({
            id = id.from(_N, "UpdateAssetModelCompositeModelInput", "assetModelCompositeModelName"),
            type = "string",
            name = "assetModelCompositeModelName",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        clientToken = schema.new({
            id = id.from(_N, "UpdateAssetModelCompositeModelInput", "clientToken"),
            type = "string",
            name = "clientToken",
            target_id = prelude.String.id,
            traits = {
                [traits.IDEMPOTENCY_TOKEN] = {},
            },
        }),
        assetModelCompositeModelProperties = schema.new({
            id = id.from(_N, "UpdateAssetModelCompositeModelInput", "assetModelCompositeModelProperties"),
            type = "list",
            name = "assetModelCompositeModelProperties",
            target_id = prelude.Document.id,
            list_member = M.AssetModelProperty,
        }),
        ifMatch = schema.new({
            id = id.from(_N, "UpdateAssetModelCompositeModelInput", "ifMatch"),
            type = "string",
            name = "ifMatch",
            target_id = prelude.String.id,
            traits = {
                [traits.HTTP_HEADER] = { name = "If-Match" },
            },
        }),
        ifNoneMatch = schema.new({
            id = id.from(_N, "UpdateAssetModelCompositeModelInput", "ifNoneMatch"),
            type = "string",
            name = "ifNoneMatch",
            target_id = prelude.String.id,
            traits = {
                [traits.HTTP_HEADER] = { name = "If-None-Match" },
            },
        }),
        matchForVersionType = schema.new({
            id = id.from(_N, "UpdateAssetModelCompositeModelInput", "matchForVersionType"),
            type = "string",
            name = "matchForVersionType",
            target_id = prelude.String.id,
            traits = {
                [traits.HTTP_HEADER] = { name = "Match-For-Version-Type" },
            },
        }),
    },
})

M.UpdateAssetModelCompositeModelOutput = schema.new({
    id = id.from(_N, "UpdateAssetModelCompositeModelResponse"),
    type = "structure",
    members = {
        assetModelCompositeModelPath = schema.new({
            id = id.from(_N, "UpdateAssetModelCompositeModelOutput", "assetModelCompositeModelPath"),
            type = "list",
            name = "assetModelCompositeModelPath",
            target_id = prelude.Document.id,
            list_member = M.AssetModelCompositeModelPathSegment,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        assetModelStatus = schema.new({
            id = id.from(_N, "UpdateAssetModelCompositeModelOutput", "assetModelStatus"),
            type = "structure",
            name = "assetModelStatus",
            target_id = id.from(_N, "AssetModelStatus"),
            target = M.AssetModelStatus,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.UpdateAssetPropertyInput = schema.new({
    id = id.from(_N, "UpdateAssetPropertyRequest"),
    type = "structure",
    members = {
        assetId = schema.new({
            id = id.from(_N, "UpdateAssetPropertyInput", "assetId"),
            type = "string",
            name = "assetId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
        propertyId = schema.new({
            id = id.from(_N, "UpdateAssetPropertyInput", "propertyId"),
            type = "string",
            name = "propertyId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
        propertyAlias = schema.new({
            id = id.from(_N, "UpdateAssetPropertyInput", "propertyAlias"),
            type = "string",
            name = "propertyAlias",
            target_id = prelude.String.id,
        }),
        propertyNotificationState = schema.new({
            id = id.from(_N, "UpdateAssetPropertyInput", "propertyNotificationState"),
            type = "string",
            name = "propertyNotificationState",
            target_id = prelude.String.id,
        }),
        clientToken = schema.new({
            id = id.from(_N, "UpdateAssetPropertyInput", "clientToken"),
            type = "string",
            name = "clientToken",
            target_id = prelude.String.id,
            traits = {
                [traits.IDEMPOTENCY_TOKEN] = {},
            },
        }),
        propertyUnit = schema.new({
            id = id.from(_N, "UpdateAssetPropertyInput", "propertyUnit"),
            type = "string",
            name = "propertyUnit",
            target_id = prelude.String.id,
        }),
    },
})

M.UpdateAssetPropertyOutput = schema.new({
    id = id.from(_N, "Unit"),
    type = "structure",
})

M.UpdateComputationModelOutput = schema.new({
    id = id.from(_N, "UpdateComputationModelResponse"),
    type = "structure",
    members = {
        computationModelStatus = schema.new({
            id = id.from(_N, "UpdateComputationModelOutput", "computationModelStatus"),
            type = "structure",
            name = "computationModelStatus",
            target_id = id.from(_N, "ComputationModelStatus"),
            target = M.ComputationModelStatus,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.UpdateDashboardInput = schema.new({
    id = id.from(_N, "UpdateDashboardRequest"),
    type = "structure",
    members = {
        dashboardId = schema.new({
            id = id.from(_N, "UpdateDashboardInput", "dashboardId"),
            type = "string",
            name = "dashboardId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
        dashboardName = schema.new({
            id = id.from(_N, "UpdateDashboardInput", "dashboardName"),
            type = "string",
            name = "dashboardName",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        dashboardDescription = schema.new({
            id = id.from(_N, "UpdateDashboardInput", "dashboardDescription"),
            type = "string",
            name = "dashboardDescription",
            target_id = prelude.String.id,
        }),
        dashboardDefinition = schema.new({
            id = id.from(_N, "UpdateDashboardInput", "dashboardDefinition"),
            type = "string",
            name = "dashboardDefinition",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        clientToken = schema.new({
            id = id.from(_N, "UpdateDashboardInput", "clientToken"),
            type = "string",
            name = "clientToken",
            target_id = prelude.String.id,
            traits = {
                [traits.IDEMPOTENCY_TOKEN] = {},
            },
        }),
    },
})

M.UpdateDashboardOutput = schema.new({
    id = id.from(_N, "UpdateDashboardResponse"),
    type = "structure",
})

M.UpdateDatasetInput = schema.new({
    id = id.from(_N, "UpdateDatasetRequest"),
    type = "structure",
    members = {
        datasetId = schema.new({
            id = id.from(_N, "UpdateDatasetInput", "datasetId"),
            type = "string",
            name = "datasetId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
        datasetName = schema.new({
            id = id.from(_N, "UpdateDatasetInput", "datasetName"),
            type = "string",
            name = "datasetName",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        datasetDescription = schema.new({
            id = id.from(_N, "UpdateDatasetInput", "datasetDescription"),
            type = "string",
            name = "datasetDescription",
            target_id = prelude.String.id,
        }),
        datasetSource = schema.new({
            id = id.from(_N, "UpdateDatasetInput", "datasetSource"),
            type = "structure",
            name = "datasetSource",
            target_id = id.from(_N, "DatasetSource"),
            target = M.DatasetSource,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        clientToken = schema.new({
            id = id.from(_N, "UpdateDatasetInput", "clientToken"),
            type = "string",
            name = "clientToken",
            target_id = prelude.String.id,
            traits = {
                [traits.IDEMPOTENCY_TOKEN] = {},
            },
        }),
    },
})

M.UpdateDatasetOutput = schema.new({
    id = id.from(_N, "UpdateDatasetResponse"),
    type = "structure",
    members = {
        datasetId = schema.new({
            id = id.from(_N, "UpdateDatasetOutput", "datasetId"),
            type = "string",
            name = "datasetId",
            target_id = prelude.String.id,
        }),
        datasetArn = schema.new({
            id = id.from(_N, "UpdateDatasetOutput", "datasetArn"),
            type = "string",
            name = "datasetArn",
            target_id = prelude.String.id,
        }),
        datasetStatus = schema.new({
            id = id.from(_N, "UpdateDatasetOutput", "datasetStatus"),
            type = "structure",
            name = "datasetStatus",
            target_id = id.from(_N, "DatasetStatus"),
            target = M.DatasetStatus,
        }),
    },
})

M.UpdateGatewayInput = schema.new({
    id = id.from(_N, "UpdateGatewayRequest"),
    type = "structure",
    members = {
        gatewayId = schema.new({
            id = id.from(_N, "UpdateGatewayInput", "gatewayId"),
            type = "string",
            name = "gatewayId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
        gatewayName = schema.new({
            id = id.from(_N, "UpdateGatewayInput", "gatewayName"),
            type = "string",
            name = "gatewayName",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.UpdateGatewayOutput = schema.new({
    id = id.from(_N, "Unit"),
    type = "structure",
})

M.UpdateGatewayCapabilityConfigurationInput = schema.new({
    id = id.from(_N, "UpdateGatewayCapabilityConfigurationRequest"),
    type = "structure",
    members = {
        gatewayId = schema.new({
            id = id.from(_N, "UpdateGatewayCapabilityConfigurationInput", "gatewayId"),
            type = "string",
            name = "gatewayId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
        capabilityNamespace = schema.new({
            id = id.from(_N, "UpdateGatewayCapabilityConfigurationInput", "capabilityNamespace"),
            type = "string",
            name = "capabilityNamespace",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        capabilityConfiguration = schema.new({
            id = id.from(_N, "UpdateGatewayCapabilityConfigurationInput", "capabilityConfiguration"),
            type = "string",
            name = "capabilityConfiguration",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.UpdateGatewayCapabilityConfigurationOutput = schema.new({
    id = id.from(_N, "UpdateGatewayCapabilityConfigurationResponse"),
    type = "structure",
    members = {
        capabilityNamespace = schema.new({
            id = id.from(_N, "UpdateGatewayCapabilityConfigurationOutput", "capabilityNamespace"),
            type = "string",
            name = "capabilityNamespace",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        capabilitySyncStatus = schema.new({
            id = id.from(_N, "UpdateGatewayCapabilityConfigurationOutput", "capabilitySyncStatus"),
            type = "string",
            name = "capabilitySyncStatus",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.Image = schema.new({
    id = id.from(_N, "Image"),
    type = "structure",
    members = {
        id = schema.new({
            id = id.from(_N, "Image", "id"),
            type = "string",
            name = "id",
            target_id = prelude.String.id,
        }),
        file = schema.new({
            id = id.from(_N, "Image", "file"),
            type = "structure",
            name = "file",
            target_id = id.from(_N, "ImageFile"),
            target = M.ImageFile,
        }),
    },
})

M.UpdatePortalInput = schema.new({
    id = id.from(_N, "UpdatePortalRequest"),
    type = "structure",
    members = {
        portalId = schema.new({
            id = id.from(_N, "UpdatePortalInput", "portalId"),
            type = "string",
            name = "portalId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
        portalName = schema.new({
            id = id.from(_N, "UpdatePortalInput", "portalName"),
            type = "string",
            name = "portalName",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        portalDescription = schema.new({
            id = id.from(_N, "UpdatePortalInput", "portalDescription"),
            type = "string",
            name = "portalDescription",
            target_id = prelude.String.id,
        }),
        portalContactEmail = schema.new({
            id = id.from(_N, "UpdatePortalInput", "portalContactEmail"),
            type = "string",
            name = "portalContactEmail",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        portalLogoImage = schema.new({
            id = id.from(_N, "UpdatePortalInput", "portalLogoImage"),
            type = "structure",
            name = "portalLogoImage",
            target_id = id.from(_N, "Image"),
            target = M.Image,
        }),
        roleArn = schema.new({
            id = id.from(_N, "UpdatePortalInput", "roleArn"),
            type = "string",
            name = "roleArn",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        clientToken = schema.new({
            id = id.from(_N, "UpdatePortalInput", "clientToken"),
            type = "string",
            name = "clientToken",
            target_id = prelude.String.id,
            traits = {
                [traits.IDEMPOTENCY_TOKEN] = {},
            },
        }),
        notificationSenderEmail = schema.new({
            id = id.from(_N, "UpdatePortalInput", "notificationSenderEmail"),
            type = "string",
            name = "notificationSenderEmail",
            target_id = prelude.String.id,
        }),
        alarms = schema.new({
            id = id.from(_N, "UpdatePortalInput", "alarms"),
            type = "structure",
            name = "alarms",
            target_id = id.from(_N, "Alarms"),
            target = M.Alarms,
        }),
        portalType = schema.new({
            id = id.from(_N, "UpdatePortalInput", "portalType"),
            type = "string",
            name = "portalType",
            target_id = prelude.String.id,
        }),
        portalTypeConfiguration = schema.new({
            id = id.from(_N, "UpdatePortalInput", "portalTypeConfiguration"),
            type = "map",
            name = "portalTypeConfiguration",
            target_id = prelude.Document.id,
            map_key = prelude.String,
            map_value = M.PortalTypeEntry,
        }),
    },
})

M.UpdatePortalOutput = schema.new({
    id = id.from(_N, "UpdatePortalResponse"),
    type = "structure",
    members = {
        portalStatus = schema.new({
            id = id.from(_N, "UpdatePortalOutput", "portalStatus"),
            type = "structure",
            name = "portalStatus",
            target_id = id.from(_N, "PortalStatus"),
            target = M.PortalStatus,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.UpdateProjectInput = schema.new({
    id = id.from(_N, "UpdateProjectRequest"),
    type = "structure",
    members = {
        projectId = schema.new({
            id = id.from(_N, "UpdateProjectInput", "projectId"),
            type = "string",
            name = "projectId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
        projectName = schema.new({
            id = id.from(_N, "UpdateProjectInput", "projectName"),
            type = "string",
            name = "projectName",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        projectDescription = schema.new({
            id = id.from(_N, "UpdateProjectInput", "projectDescription"),
            type = "string",
            name = "projectDescription",
            target_id = prelude.String.id,
        }),
        clientToken = schema.new({
            id = id.from(_N, "UpdateProjectInput", "clientToken"),
            type = "string",
            name = "clientToken",
            target_id = prelude.String.id,
            traits = {
                [traits.IDEMPOTENCY_TOKEN] = {},
            },
        }),
    },
})

M.UpdateProjectOutput = schema.new({
    id = id.from(_N, "UpdateProjectResponse"),
    type = "structure",
})

M.ComputationModelDataBindingValue = schema.new({
    id = id.from(_N, "ComputationModelDataBindingValue"),
    type = "structure",
    members = {
        assetModelProperty = schema.new({
            id = id.from(_N, "ComputationModelDataBindingValue", "assetModelProperty"),
            type = "structure",
            name = "assetModelProperty",
            target_id = id.from(_N, "AssetModelPropertyBindingValue"),
            target = M.AssetModelPropertyBindingValue,
        }),
        assetProperty = schema.new({
            id = id.from(_N, "ComputationModelDataBindingValue", "assetProperty"),
            type = "structure",
            name = "assetProperty",
            target_id = id.from(_N, "AssetPropertyBindingValue"),
            target = M.AssetPropertyBindingValue,
        }),
        list = schema.new({
            id = id.from(_N, "ComputationModelDataBindingValue", "list"),
            type = "list",
            name = "list",
            target_id = prelude.Document.id,
            list_member = M.ComputationModelDataBindingValue,
        }),
    },
})

M.CreateComputationModelInput = schema.new({
    id = id.from(_N, "CreateComputationModelRequest"),
    type = "structure",
    members = {
        computationModelName = schema.new({
            id = id.from(_N, "CreateComputationModelInput", "computationModelName"),
            type = "string",
            name = "computationModelName",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        computationModelDescription = schema.new({
            id = id.from(_N, "CreateComputationModelInput", "computationModelDescription"),
            type = "string",
            name = "computationModelDescription",
            target_id = prelude.String.id,
        }),
        computationModelConfiguration = schema.new({
            id = id.from(_N, "CreateComputationModelInput", "computationModelConfiguration"),
            type = "structure",
            name = "computationModelConfiguration",
            target_id = id.from(_N, "ComputationModelConfiguration"),
            target = M.ComputationModelConfiguration,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        computationModelDataBinding = schema.new({
            id = id.from(_N, "CreateComputationModelInput", "computationModelDataBinding"),
            type = "map",
            name = "computationModelDataBinding",
            target_id = prelude.Document.id,
            map_key = prelude.String,
            map_value = M.ComputationModelDataBindingValue,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        clientToken = schema.new({
            id = id.from(_N, "CreateComputationModelInput", "clientToken"),
            type = "string",
            name = "clientToken",
            target_id = prelude.String.id,
            traits = {
                [traits.IDEMPOTENCY_TOKEN] = {},
            },
        }),
        tags = schema.new({
            id = id.from(_N, "CreateComputationModelInput", "tags"),
            type = "map",
            name = "tags",
            target_id = prelude.Document.id,
            map_key = prelude.String,
            map_value = prelude.String,
        }),
    },
})

M.DescribeComputationModelOutput = schema.new({
    id = id.from(_N, "DescribeComputationModelResponse"),
    type = "structure",
    members = {
        computationModelId = schema.new({
            id = id.from(_N, "DescribeComputationModelOutput", "computationModelId"),
            type = "string",
            name = "computationModelId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        computationModelArn = schema.new({
            id = id.from(_N, "DescribeComputationModelOutput", "computationModelArn"),
            type = "string",
            name = "computationModelArn",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        computationModelName = schema.new({
            id = id.from(_N, "DescribeComputationModelOutput", "computationModelName"),
            type = "string",
            name = "computationModelName",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        computationModelDescription = schema.new({
            id = id.from(_N, "DescribeComputationModelOutput", "computationModelDescription"),
            type = "string",
            name = "computationModelDescription",
            target_id = prelude.String.id,
        }),
        computationModelConfiguration = schema.new({
            id = id.from(_N, "DescribeComputationModelOutput", "computationModelConfiguration"),
            type = "structure",
            name = "computationModelConfiguration",
            target_id = id.from(_N, "ComputationModelConfiguration"),
            target = M.ComputationModelConfiguration,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        computationModelDataBinding = schema.new({
            id = id.from(_N, "DescribeComputationModelOutput", "computationModelDataBinding"),
            type = "map",
            name = "computationModelDataBinding",
            target_id = prelude.Document.id,
            map_key = prelude.String,
            map_value = M.ComputationModelDataBindingValue,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        computationModelCreationDate = schema.new({
            id = id.from(_N, "DescribeComputationModelOutput", "computationModelCreationDate"),
            type = "timestamp",
            name = "computationModelCreationDate",
            target_id = prelude.Timestamp.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        computationModelLastUpdateDate = schema.new({
            id = id.from(_N, "DescribeComputationModelOutput", "computationModelLastUpdateDate"),
            type = "timestamp",
            name = "computationModelLastUpdateDate",
            target_id = prelude.Timestamp.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        computationModelStatus = schema.new({
            id = id.from(_N, "DescribeComputationModelOutput", "computationModelStatus"),
            type = "structure",
            name = "computationModelStatus",
            target_id = id.from(_N, "ComputationModelStatus"),
            target = M.ComputationModelStatus,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        computationModelVersion = schema.new({
            id = id.from(_N, "DescribeComputationModelOutput", "computationModelVersion"),
            type = "string",
            name = "computationModelVersion",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        actionDefinitions = schema.new({
            id = id.from(_N, "DescribeComputationModelOutput", "actionDefinitions"),
            type = "list",
            name = "actionDefinitions",
            target_id = prelude.Document.id,
            list_member = M.ActionDefinition,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.UpdateComputationModelInput = schema.new({
    id = id.from(_N, "UpdateComputationModelRequest"),
    type = "structure",
    members = {
        computationModelId = schema.new({
            id = id.from(_N, "UpdateComputationModelInput", "computationModelId"),
            type = "string",
            name = "computationModelId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
        computationModelName = schema.new({
            id = id.from(_N, "UpdateComputationModelInput", "computationModelName"),
            type = "string",
            name = "computationModelName",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        computationModelDescription = schema.new({
            id = id.from(_N, "UpdateComputationModelInput", "computationModelDescription"),
            type = "string",
            name = "computationModelDescription",
            target_id = prelude.String.id,
        }),
        computationModelConfiguration = schema.new({
            id = id.from(_N, "UpdateComputationModelInput", "computationModelConfiguration"),
            type = "structure",
            name = "computationModelConfiguration",
            target_id = id.from(_N, "ComputationModelConfiguration"),
            target = M.ComputationModelConfiguration,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        computationModelDataBinding = schema.new({
            id = id.from(_N, "UpdateComputationModelInput", "computationModelDataBinding"),
            type = "map",
            name = "computationModelDataBinding",
            target_id = prelude.Document.id,
            map_key = prelude.String,
            map_value = M.ComputationModelDataBindingValue,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        clientToken = schema.new({
            id = id.from(_N, "UpdateComputationModelInput", "clientToken"),
            type = "string",
            name = "clientToken",
            target_id = prelude.String.id,
            traits = {
                [traits.IDEMPOTENCY_TOKEN] = {},
            },
        }),
    },
})

M.Datum = schema.new({
    id = id.from(_N, "Datum"),
    type = "structure",
    members = {
        scalarValue = schema.new({
            id = id.from(_N, "Datum", "scalarValue"),
            type = "string",
            name = "scalarValue",
            target_id = prelude.String.id,
        }),
        arrayValue = schema.new({
            id = id.from(_N, "Datum", "arrayValue"),
            type = "list",
            name = "arrayValue",
            target_id = prelude.Document.id,
            list_member = M.Datum,
        }),
        rowValue = schema.new({
            id = id.from(_N, "Datum", "rowValue"),
            type = "structure",
            name = "rowValue",
            target_id = id.from(_N, "Row"),
            target = M.Row,
        }),
        nullValue = schema.new({
            id = id.from(_N, "Datum", "nullValue"),
            type = "boolean",
            name = "nullValue",
            target_id = prelude.Boolean.id,
        }),
    },
})

M.Row = schema.new({
    id = id.from(_N, "Row"),
    type = "structure",
    members = {
        data = schema.new({
            id = id.from(_N, "Row", "data"),
            type = "list",
            name = "data",
            target_id = prelude.Document.id,
            list_member = M.Datum,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.ExecuteQueryOutput = schema.new({
    id = id.from(_N, "ExecuteQueryResponse"),
    type = "structure",
    members = {
        columns = schema.new({
            id = id.from(_N, "ExecuteQueryOutput", "columns"),
            type = "list",
            name = "columns",
            target_id = prelude.Document.id,
            list_member = M.ColumnInfo,
        }),
        rows = schema.new({
            id = id.from(_N, "ExecuteQueryOutput", "rows"),
            type = "list",
            name = "rows",
            target_id = prelude.Document.id,
            list_member = M.Row,
        }),
        nextToken = schema.new({
            id = id.from(_N, "ExecuteQueryOutput", "nextToken"),
            type = "string",
            name = "nextToken",
            target_id = prelude.String.id,
        }),
    },
})

-- Fix forward references for recursive schemas
for _, s in pairs(M) do
    if type(s) == "table" and (s.type == "structure" or s.type == "union") then
        local members = rawget(s, "_members")
        if members then
            for _, ms in pairs(members) do
                if (ms.type == "structure" or ms.type == "union") and not rawget(ms, "_target") and ms.target_id then
                    rawset(ms, "_target", M[ms.target_id.name])
                end
            end
        end
    end
end

return M
