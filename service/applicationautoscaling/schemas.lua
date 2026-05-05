local id = require("smithy.shape_id")
local schema = require("smithy.schema")
local prelude = require("smithy.prelude")
local traits = require("smithy.traits")

local _N = "com.amazonaws.applicationautoscaling"

local M = {}

M.Alarm = schema.new({
    id = id.from(_N, "Alarm"),
    type = "structure",
    members = {
        AlarmName = schema.new({
            id = id.from(_N, "Alarm", "AlarmName"),
            type = "string",
            name = "AlarmName",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        AlarmARN = schema.new({
            id = id.from(_N, "Alarm", "AlarmARN"),
            type = "string",
            name = "AlarmARN",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.ConcurrentUpdateException = schema.new({
    id = id.from(_N, "ConcurrentUpdateException"),
    type = "structure",
    traits = {
        [traits.ERROR] = { value = "server" },
    },
    members = {
        Message = schema.new({
            id = id.from(_N, "ConcurrentUpdateException", "Message"),
            type = "string",
            name = "Message",
            target_id = prelude.String.id,
        }),
    },
})

M.DeleteScalingPolicyInput = schema.new({
    id = id.from(_N, "DeleteScalingPolicyInput"),
    type = "structure",
    members = {
        PolicyName = schema.new({
            id = id.from(_N, "DeleteScalingPolicyInput", "PolicyName"),
            type = "string",
            name = "PolicyName",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        ServiceNamespace = schema.new({
            id = id.from(_N, "DeleteScalingPolicyInput", "ServiceNamespace"),
            type = "string",
            name = "ServiceNamespace",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        ResourceId = schema.new({
            id = id.from(_N, "DeleteScalingPolicyInput", "ResourceId"),
            type = "string",
            name = "ResourceId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        ScalableDimension = schema.new({
            id = id.from(_N, "DeleteScalingPolicyInput", "ScalableDimension"),
            type = "string",
            name = "ScalableDimension",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.DeleteScalingPolicyOutput = schema.new({
    id = id.from(_N, "DeleteScalingPolicyOutput"),
    type = "structure",
})

M.InternalServiceException = schema.new({
    id = id.from(_N, "InternalServiceException"),
    type = "structure",
    traits = {
        [traits.ERROR] = { value = "server" },
    },
    members = {
        Message = schema.new({
            id = id.from(_N, "InternalServiceException", "Message"),
            type = "string",
            name = "Message",
            target_id = prelude.String.id,
        }),
    },
})

M.ObjectNotFoundException = schema.new({
    id = id.from(_N, "ObjectNotFoundException"),
    type = "structure",
    traits = {
        [traits.ERROR] = { value = "client" },
    },
    members = {
        Message = schema.new({
            id = id.from(_N, "ObjectNotFoundException", "Message"),
            type = "string",
            name = "Message",
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
        Message = schema.new({
            id = id.from(_N, "ValidationException", "Message"),
            type = "string",
            name = "Message",
            target_id = prelude.String.id,
        }),
    },
})

M.DeleteScheduledActionInput = schema.new({
    id = id.from(_N, "DeleteScheduledActionInput"),
    type = "structure",
    members = {
        ServiceNamespace = schema.new({
            id = id.from(_N, "DeleteScheduledActionInput", "ServiceNamespace"),
            type = "string",
            name = "ServiceNamespace",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        ScheduledActionName = schema.new({
            id = id.from(_N, "DeleteScheduledActionInput", "ScheduledActionName"),
            type = "string",
            name = "ScheduledActionName",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        ResourceId = schema.new({
            id = id.from(_N, "DeleteScheduledActionInput", "ResourceId"),
            type = "string",
            name = "ResourceId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        ScalableDimension = schema.new({
            id = id.from(_N, "DeleteScheduledActionInput", "ScalableDimension"),
            type = "string",
            name = "ScalableDimension",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.DeleteScheduledActionOutput = schema.new({
    id = id.from(_N, "DeleteScheduledActionOutput"),
    type = "structure",
})

M.DeregisterScalableTargetInput = schema.new({
    id = id.from(_N, "DeregisterScalableTargetInput"),
    type = "structure",
    members = {
        ServiceNamespace = schema.new({
            id = id.from(_N, "DeregisterScalableTargetInput", "ServiceNamespace"),
            type = "string",
            name = "ServiceNamespace",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        ResourceId = schema.new({
            id = id.from(_N, "DeregisterScalableTargetInput", "ResourceId"),
            type = "string",
            name = "ResourceId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        ScalableDimension = schema.new({
            id = id.from(_N, "DeregisterScalableTargetInput", "ScalableDimension"),
            type = "string",
            name = "ScalableDimension",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.DeregisterScalableTargetOutput = schema.new({
    id = id.from(_N, "DeregisterScalableTargetOutput"),
    type = "structure",
})

M.DescribeScalableTargetsInput = schema.new({
    id = id.from(_N, "DescribeScalableTargetsInput"),
    type = "structure",
    members = {
        ServiceNamespace = schema.new({
            id = id.from(_N, "DescribeScalableTargetsInput", "ServiceNamespace"),
            type = "string",
            name = "ServiceNamespace",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        ResourceIds = schema.new({
            id = id.from(_N, "DescribeScalableTargetsInput", "ResourceIds"),
            type = "list",
            name = "ResourceIds",
            target_id = prelude.Document.id,
            list_member = prelude.String,
        }),
        ScalableDimension = schema.new({
            id = id.from(_N, "DescribeScalableTargetsInput", "ScalableDimension"),
            type = "string",
            name = "ScalableDimension",
            target_id = prelude.String.id,
        }),
        MaxResults = schema.new({
            id = id.from(_N, "DescribeScalableTargetsInput", "MaxResults"),
            type = "integer",
            name = "MaxResults",
            target_id = prelude.Integer.id,
        }),
        NextToken = schema.new({
            id = id.from(_N, "DescribeScalableTargetsInput", "NextToken"),
            type = "string",
            name = "NextToken",
            target_id = prelude.String.id,
        }),
    },
})

M.SuspendedState = schema.new({
    id = id.from(_N, "SuspendedState"),
    type = "structure",
    members = {
        DynamicScalingInSuspended = schema.new({
            id = id.from(_N, "SuspendedState", "DynamicScalingInSuspended"),
            type = "boolean",
            name = "DynamicScalingInSuspended",
            target_id = prelude.Boolean.id,
        }),
        DynamicScalingOutSuspended = schema.new({
            id = id.from(_N, "SuspendedState", "DynamicScalingOutSuspended"),
            type = "boolean",
            name = "DynamicScalingOutSuspended",
            target_id = prelude.Boolean.id,
        }),
        ScheduledScalingSuspended = schema.new({
            id = id.from(_N, "SuspendedState", "ScheduledScalingSuspended"),
            type = "boolean",
            name = "ScheduledScalingSuspended",
            target_id = prelude.Boolean.id,
        }),
    },
})

M.ScalableTarget = schema.new({
    id = id.from(_N, "ScalableTarget"),
    type = "structure",
    members = {
        ServiceNamespace = schema.new({
            id = id.from(_N, "ScalableTarget", "ServiceNamespace"),
            type = "string",
            name = "ServiceNamespace",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        ResourceId = schema.new({
            id = id.from(_N, "ScalableTarget", "ResourceId"),
            type = "string",
            name = "ResourceId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        ScalableDimension = schema.new({
            id = id.from(_N, "ScalableTarget", "ScalableDimension"),
            type = "string",
            name = "ScalableDimension",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        MinCapacity = schema.new({
            id = id.from(_N, "ScalableTarget", "MinCapacity"),
            type = "integer",
            name = "MinCapacity",
            target_id = prelude.Integer.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        MaxCapacity = schema.new({
            id = id.from(_N, "ScalableTarget", "MaxCapacity"),
            type = "integer",
            name = "MaxCapacity",
            target_id = prelude.Integer.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        PredictedCapacity = schema.new({
            id = id.from(_N, "ScalableTarget", "PredictedCapacity"),
            type = "integer",
            name = "PredictedCapacity",
            target_id = prelude.Integer.id,
        }),
        RoleARN = schema.new({
            id = id.from(_N, "ScalableTarget", "RoleARN"),
            type = "string",
            name = "RoleARN",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        CreationTime = schema.new({
            id = id.from(_N, "ScalableTarget", "CreationTime"),
            type = "timestamp",
            name = "CreationTime",
            target_id = prelude.Timestamp.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        SuspendedState = schema.new({
            id = id.from(_N, "ScalableTarget", "SuspendedState"),
            type = "structure",
            name = "SuspendedState",
            target_id = id.from(_N, "SuspendedState"),
            target = M.SuspendedState,
        }),
        ScalableTargetARN = schema.new({
            id = id.from(_N, "ScalableTarget", "ScalableTargetARN"),
            type = "string",
            name = "ScalableTargetARN",
            target_id = prelude.String.id,
        }),
    },
})

M.DescribeScalableTargetsOutput = schema.new({
    id = id.from(_N, "DescribeScalableTargetsOutput"),
    type = "structure",
    members = {
        ScalableTargets = schema.new({
            id = id.from(_N, "DescribeScalableTargetsOutput", "ScalableTargets"),
            type = "list",
            name = "ScalableTargets",
            target_id = prelude.Document.id,
            list_member = M.ScalableTarget,
        }),
        NextToken = schema.new({
            id = id.from(_N, "DescribeScalableTargetsOutput", "NextToken"),
            type = "string",
            name = "NextToken",
            target_id = prelude.String.id,
        }),
    },
})

M.InvalidNextTokenException = schema.new({
    id = id.from(_N, "InvalidNextTokenException"),
    type = "structure",
    traits = {
        [traits.ERROR] = { value = "client" },
    },
    members = {
        Message = schema.new({
            id = id.from(_N, "InvalidNextTokenException", "Message"),
            type = "string",
            name = "Message",
            target_id = prelude.String.id,
        }),
    },
})

M.DescribeScalingActivitiesInput = schema.new({
    id = id.from(_N, "DescribeScalingActivitiesInput"),
    type = "structure",
    members = {
        ServiceNamespace = schema.new({
            id = id.from(_N, "DescribeScalingActivitiesInput", "ServiceNamespace"),
            type = "string",
            name = "ServiceNamespace",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        ResourceId = schema.new({
            id = id.from(_N, "DescribeScalingActivitiesInput", "ResourceId"),
            type = "string",
            name = "ResourceId",
            target_id = prelude.String.id,
        }),
        ScalableDimension = schema.new({
            id = id.from(_N, "DescribeScalingActivitiesInput", "ScalableDimension"),
            type = "string",
            name = "ScalableDimension",
            target_id = prelude.String.id,
        }),
        MaxResults = schema.new({
            id = id.from(_N, "DescribeScalingActivitiesInput", "MaxResults"),
            type = "integer",
            name = "MaxResults",
            target_id = prelude.Integer.id,
        }),
        NextToken = schema.new({
            id = id.from(_N, "DescribeScalingActivitiesInput", "NextToken"),
            type = "string",
            name = "NextToken",
            target_id = prelude.String.id,
        }),
        IncludeNotScaledActivities = schema.new({
            id = id.from(_N, "DescribeScalingActivitiesInput", "IncludeNotScaledActivities"),
            type = "boolean",
            name = "IncludeNotScaledActivities",
            target_id = prelude.Boolean.id,
        }),
    },
})

M.NotScaledReason = schema.new({
    id = id.from(_N, "NotScaledReason"),
    type = "structure",
    members = {
        Code = schema.new({
            id = id.from(_N, "NotScaledReason", "Code"),
            type = "string",
            name = "Code",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        MaxCapacity = schema.new({
            id = id.from(_N, "NotScaledReason", "MaxCapacity"),
            type = "integer",
            name = "MaxCapacity",
            target_id = prelude.Integer.id,
        }),
        MinCapacity = schema.new({
            id = id.from(_N, "NotScaledReason", "MinCapacity"),
            type = "integer",
            name = "MinCapacity",
            target_id = prelude.Integer.id,
        }),
        CurrentCapacity = schema.new({
            id = id.from(_N, "NotScaledReason", "CurrentCapacity"),
            type = "integer",
            name = "CurrentCapacity",
            target_id = prelude.Integer.id,
        }),
    },
})

M.ScalingActivity = schema.new({
    id = id.from(_N, "ScalingActivity"),
    type = "structure",
    members = {
        ActivityId = schema.new({
            id = id.from(_N, "ScalingActivity", "ActivityId"),
            type = "string",
            name = "ActivityId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        ServiceNamespace = schema.new({
            id = id.from(_N, "ScalingActivity", "ServiceNamespace"),
            type = "string",
            name = "ServiceNamespace",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        ResourceId = schema.new({
            id = id.from(_N, "ScalingActivity", "ResourceId"),
            type = "string",
            name = "ResourceId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        ScalableDimension = schema.new({
            id = id.from(_N, "ScalingActivity", "ScalableDimension"),
            type = "string",
            name = "ScalableDimension",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        Description = schema.new({
            id = id.from(_N, "ScalingActivity", "Description"),
            type = "string",
            name = "Description",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        Cause = schema.new({
            id = id.from(_N, "ScalingActivity", "Cause"),
            type = "string",
            name = "Cause",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        StartTime = schema.new({
            id = id.from(_N, "ScalingActivity", "StartTime"),
            type = "timestamp",
            name = "StartTime",
            target_id = prelude.Timestamp.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        EndTime = schema.new({
            id = id.from(_N, "ScalingActivity", "EndTime"),
            type = "timestamp",
            name = "EndTime",
            target_id = prelude.Timestamp.id,
        }),
        StatusCode = schema.new({
            id = id.from(_N, "ScalingActivity", "StatusCode"),
            type = "string",
            name = "StatusCode",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        StatusMessage = schema.new({
            id = id.from(_N, "ScalingActivity", "StatusMessage"),
            type = "string",
            name = "StatusMessage",
            target_id = prelude.String.id,
        }),
        Details = schema.new({
            id = id.from(_N, "ScalingActivity", "Details"),
            type = "string",
            name = "Details",
            target_id = prelude.String.id,
        }),
        NotScaledReasons = schema.new({
            id = id.from(_N, "ScalingActivity", "NotScaledReasons"),
            type = "list",
            name = "NotScaledReasons",
            target_id = prelude.Document.id,
            list_member = M.NotScaledReason,
        }),
    },
})

M.DescribeScalingActivitiesOutput = schema.new({
    id = id.from(_N, "DescribeScalingActivitiesOutput"),
    type = "structure",
    members = {
        ScalingActivities = schema.new({
            id = id.from(_N, "DescribeScalingActivitiesOutput", "ScalingActivities"),
            type = "list",
            name = "ScalingActivities",
            target_id = prelude.Document.id,
            list_member = M.ScalingActivity,
        }),
        NextToken = schema.new({
            id = id.from(_N, "DescribeScalingActivitiesOutput", "NextToken"),
            type = "string",
            name = "NextToken",
            target_id = prelude.String.id,
        }),
    },
})

M.DescribeScalingPoliciesInput = schema.new({
    id = id.from(_N, "DescribeScalingPoliciesInput"),
    type = "structure",
    members = {
        PolicyNames = schema.new({
            id = id.from(_N, "DescribeScalingPoliciesInput", "PolicyNames"),
            type = "list",
            name = "PolicyNames",
            target_id = prelude.Document.id,
            list_member = prelude.String,
        }),
        ServiceNamespace = schema.new({
            id = id.from(_N, "DescribeScalingPoliciesInput", "ServiceNamespace"),
            type = "string",
            name = "ServiceNamespace",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        ResourceId = schema.new({
            id = id.from(_N, "DescribeScalingPoliciesInput", "ResourceId"),
            type = "string",
            name = "ResourceId",
            target_id = prelude.String.id,
        }),
        ScalableDimension = schema.new({
            id = id.from(_N, "DescribeScalingPoliciesInput", "ScalableDimension"),
            type = "string",
            name = "ScalableDimension",
            target_id = prelude.String.id,
        }),
        MaxResults = schema.new({
            id = id.from(_N, "DescribeScalingPoliciesInput", "MaxResults"),
            type = "integer",
            name = "MaxResults",
            target_id = prelude.Integer.id,
        }),
        NextToken = schema.new({
            id = id.from(_N, "DescribeScalingPoliciesInput", "NextToken"),
            type = "string",
            name = "NextToken",
            target_id = prelude.String.id,
        }),
    },
})

M.PredictiveScalingMetricDimension = schema.new({
    id = id.from(_N, "PredictiveScalingMetricDimension"),
    type = "structure",
    members = {
        Name = schema.new({
            id = id.from(_N, "PredictiveScalingMetricDimension", "Name"),
            type = "string",
            name = "Name",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        Value = schema.new({
            id = id.from(_N, "PredictiveScalingMetricDimension", "Value"),
            type = "string",
            name = "Value",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.PredictiveScalingMetric = schema.new({
    id = id.from(_N, "PredictiveScalingMetric"),
    type = "structure",
    members = {
        Dimensions = schema.new({
            id = id.from(_N, "PredictiveScalingMetric", "Dimensions"),
            type = "list",
            name = "Dimensions",
            target_id = prelude.Document.id,
            list_member = M.PredictiveScalingMetricDimension,
        }),
        MetricName = schema.new({
            id = id.from(_N, "PredictiveScalingMetric", "MetricName"),
            type = "string",
            name = "MetricName",
            target_id = prelude.String.id,
        }),
        Namespace = schema.new({
            id = id.from(_N, "PredictiveScalingMetric", "Namespace"),
            type = "string",
            name = "Namespace",
            target_id = prelude.String.id,
        }),
    },
})

M.PredictiveScalingMetricStat = schema.new({
    id = id.from(_N, "PredictiveScalingMetricStat"),
    type = "structure",
    members = {
        Metric = schema.new({
            id = id.from(_N, "PredictiveScalingMetricStat", "Metric"),
            type = "structure",
            name = "Metric",
            target_id = id.from(_N, "PredictiveScalingMetric"),
            target = M.PredictiveScalingMetric,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        Stat = schema.new({
            id = id.from(_N, "PredictiveScalingMetricStat", "Stat"),
            type = "string",
            name = "Stat",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        Unit = schema.new({
            id = id.from(_N, "PredictiveScalingMetricStat", "Unit"),
            type = "string",
            name = "Unit",
            target_id = prelude.String.id,
        }),
    },
})

M.PredictiveScalingMetricDataQuery = schema.new({
    id = id.from(_N, "PredictiveScalingMetricDataQuery"),
    type = "structure",
    members = {
        Id = schema.new({
            id = id.from(_N, "PredictiveScalingMetricDataQuery", "Id"),
            type = "string",
            name = "Id",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        Expression = schema.new({
            id = id.from(_N, "PredictiveScalingMetricDataQuery", "Expression"),
            type = "string",
            name = "Expression",
            target_id = prelude.String.id,
        }),
        MetricStat = schema.new({
            id = id.from(_N, "PredictiveScalingMetricDataQuery", "MetricStat"),
            type = "structure",
            name = "MetricStat",
            target_id = id.from(_N, "PredictiveScalingMetricStat"),
            target = M.PredictiveScalingMetricStat,
        }),
        Label = schema.new({
            id = id.from(_N, "PredictiveScalingMetricDataQuery", "Label"),
            type = "string",
            name = "Label",
            target_id = prelude.String.id,
        }),
        ReturnData = schema.new({
            id = id.from(_N, "PredictiveScalingMetricDataQuery", "ReturnData"),
            type = "boolean",
            name = "ReturnData",
            target_id = prelude.Boolean.id,
        }),
    },
})

M.PredictiveScalingCustomizedMetricSpecification = schema.new({
    id = id.from(_N, "PredictiveScalingCustomizedMetricSpecification"),
    type = "structure",
    members = {
        MetricDataQueries = schema.new({
            id = id.from(_N, "PredictiveScalingCustomizedMetricSpecification", "MetricDataQueries"),
            type = "list",
            name = "MetricDataQueries",
            target_id = prelude.Document.id,
            list_member = M.PredictiveScalingMetricDataQuery,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.PredictiveScalingPredefinedLoadMetricSpecification = schema.new({
    id = id.from(_N, "PredictiveScalingPredefinedLoadMetricSpecification"),
    type = "structure",
    members = {
        PredefinedMetricType = schema.new({
            id = id.from(_N, "PredictiveScalingPredefinedLoadMetricSpecification", "PredefinedMetricType"),
            type = "string",
            name = "PredefinedMetricType",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        ResourceLabel = schema.new({
            id = id.from(_N, "PredictiveScalingPredefinedLoadMetricSpecification", "ResourceLabel"),
            type = "string",
            name = "ResourceLabel",
            target_id = prelude.String.id,
        }),
    },
})

M.PredictiveScalingPredefinedMetricPairSpecification = schema.new({
    id = id.from(_N, "PredictiveScalingPredefinedMetricPairSpecification"),
    type = "structure",
    members = {
        PredefinedMetricType = schema.new({
            id = id.from(_N, "PredictiveScalingPredefinedMetricPairSpecification", "PredefinedMetricType"),
            type = "string",
            name = "PredefinedMetricType",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        ResourceLabel = schema.new({
            id = id.from(_N, "PredictiveScalingPredefinedMetricPairSpecification", "ResourceLabel"),
            type = "string",
            name = "ResourceLabel",
            target_id = prelude.String.id,
        }),
    },
})

M.PredictiveScalingPredefinedScalingMetricSpecification = schema.new({
    id = id.from(_N, "PredictiveScalingPredefinedScalingMetricSpecification"),
    type = "structure",
    members = {
        PredefinedMetricType = schema.new({
            id = id.from(_N, "PredictiveScalingPredefinedScalingMetricSpecification", "PredefinedMetricType"),
            type = "string",
            name = "PredefinedMetricType",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        ResourceLabel = schema.new({
            id = id.from(_N, "PredictiveScalingPredefinedScalingMetricSpecification", "ResourceLabel"),
            type = "string",
            name = "ResourceLabel",
            target_id = prelude.String.id,
        }),
    },
})

M.PredictiveScalingMetricSpecification = schema.new({
    id = id.from(_N, "PredictiveScalingMetricSpecification"),
    type = "structure",
    members = {
        TargetValue = schema.new({
            id = id.from(_N, "PredictiveScalingMetricSpecification", "TargetValue"),
            type = "double",
            name = "TargetValue",
            target_id = prelude.Double.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        PredefinedMetricPairSpecification = schema.new({
            id = id.from(_N, "PredictiveScalingMetricSpecification", "PredefinedMetricPairSpecification"),
            type = "structure",
            name = "PredefinedMetricPairSpecification",
            target_id = id.from(_N, "PredictiveScalingPredefinedMetricPairSpecification"),
            target = M.PredictiveScalingPredefinedMetricPairSpecification,
        }),
        PredefinedScalingMetricSpecification = schema.new({
            id = id.from(_N, "PredictiveScalingMetricSpecification", "PredefinedScalingMetricSpecification"),
            type = "structure",
            name = "PredefinedScalingMetricSpecification",
            target_id = id.from(_N, "PredictiveScalingPredefinedScalingMetricSpecification"),
            target = M.PredictiveScalingPredefinedScalingMetricSpecification,
        }),
        PredefinedLoadMetricSpecification = schema.new({
            id = id.from(_N, "PredictiveScalingMetricSpecification", "PredefinedLoadMetricSpecification"),
            type = "structure",
            name = "PredefinedLoadMetricSpecification",
            target_id = id.from(_N, "PredictiveScalingPredefinedLoadMetricSpecification"),
            target = M.PredictiveScalingPredefinedLoadMetricSpecification,
        }),
        CustomizedScalingMetricSpecification = schema.new({
            id = id.from(_N, "PredictiveScalingMetricSpecification", "CustomizedScalingMetricSpecification"),
            type = "structure",
            name = "CustomizedScalingMetricSpecification",
            target_id = id.from(_N, "PredictiveScalingCustomizedMetricSpecification"),
            target = M.PredictiveScalingCustomizedMetricSpecification,
        }),
        CustomizedLoadMetricSpecification = schema.new({
            id = id.from(_N, "PredictiveScalingMetricSpecification", "CustomizedLoadMetricSpecification"),
            type = "structure",
            name = "CustomizedLoadMetricSpecification",
            target_id = id.from(_N, "PredictiveScalingCustomizedMetricSpecification"),
            target = M.PredictiveScalingCustomizedMetricSpecification,
        }),
        CustomizedCapacityMetricSpecification = schema.new({
            id = id.from(_N, "PredictiveScalingMetricSpecification", "CustomizedCapacityMetricSpecification"),
            type = "structure",
            name = "CustomizedCapacityMetricSpecification",
            target_id = id.from(_N, "PredictiveScalingCustomizedMetricSpecification"),
            target = M.PredictiveScalingCustomizedMetricSpecification,
        }),
    },
})

M.PredictiveScalingPolicyConfiguration = schema.new({
    id = id.from(_N, "PredictiveScalingPolicyConfiguration"),
    type = "structure",
    members = {
        MetricSpecifications = schema.new({
            id = id.from(_N, "PredictiveScalingPolicyConfiguration", "MetricSpecifications"),
            type = "list",
            name = "MetricSpecifications",
            target_id = prelude.Document.id,
            list_member = M.PredictiveScalingMetricSpecification,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        Mode = schema.new({
            id = id.from(_N, "PredictiveScalingPolicyConfiguration", "Mode"),
            type = "string",
            name = "Mode",
            target_id = prelude.String.id,
        }),
        SchedulingBufferTime = schema.new({
            id = id.from(_N, "PredictiveScalingPolicyConfiguration", "SchedulingBufferTime"),
            type = "integer",
            name = "SchedulingBufferTime",
            target_id = prelude.Integer.id,
        }),
        MaxCapacityBreachBehavior = schema.new({
            id = id.from(_N, "PredictiveScalingPolicyConfiguration", "MaxCapacityBreachBehavior"),
            type = "string",
            name = "MaxCapacityBreachBehavior",
            target_id = prelude.String.id,
        }),
        MaxCapacityBuffer = schema.new({
            id = id.from(_N, "PredictiveScalingPolicyConfiguration", "MaxCapacityBuffer"),
            type = "integer",
            name = "MaxCapacityBuffer",
            target_id = prelude.Integer.id,
        }),
    },
})

M.StepAdjustment = schema.new({
    id = id.from(_N, "StepAdjustment"),
    type = "structure",
    members = {
        MetricIntervalLowerBound = schema.new({
            id = id.from(_N, "StepAdjustment", "MetricIntervalLowerBound"),
            type = "double",
            name = "MetricIntervalLowerBound",
            target_id = prelude.Double.id,
        }),
        MetricIntervalUpperBound = schema.new({
            id = id.from(_N, "StepAdjustment", "MetricIntervalUpperBound"),
            type = "double",
            name = "MetricIntervalUpperBound",
            target_id = prelude.Double.id,
        }),
        ScalingAdjustment = schema.new({
            id = id.from(_N, "StepAdjustment", "ScalingAdjustment"),
            type = "integer",
            name = "ScalingAdjustment",
            target_id = prelude.Integer.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.StepScalingPolicyConfiguration = schema.new({
    id = id.from(_N, "StepScalingPolicyConfiguration"),
    type = "structure",
    members = {
        AdjustmentType = schema.new({
            id = id.from(_N, "StepScalingPolicyConfiguration", "AdjustmentType"),
            type = "string",
            name = "AdjustmentType",
            target_id = prelude.String.id,
        }),
        StepAdjustments = schema.new({
            id = id.from(_N, "StepScalingPolicyConfiguration", "StepAdjustments"),
            type = "list",
            name = "StepAdjustments",
            target_id = prelude.Document.id,
            list_member = M.StepAdjustment,
        }),
        MinAdjustmentMagnitude = schema.new({
            id = id.from(_N, "StepScalingPolicyConfiguration", "MinAdjustmentMagnitude"),
            type = "integer",
            name = "MinAdjustmentMagnitude",
            target_id = prelude.Integer.id,
        }),
        Cooldown = schema.new({
            id = id.from(_N, "StepScalingPolicyConfiguration", "Cooldown"),
            type = "integer",
            name = "Cooldown",
            target_id = prelude.Integer.id,
        }),
        MetricAggregationType = schema.new({
            id = id.from(_N, "StepScalingPolicyConfiguration", "MetricAggregationType"),
            type = "string",
            name = "MetricAggregationType",
            target_id = prelude.String.id,
        }),
    },
})

M.MetricDimension = schema.new({
    id = id.from(_N, "MetricDimension"),
    type = "structure",
    members = {
        Name = schema.new({
            id = id.from(_N, "MetricDimension", "Name"),
            type = "string",
            name = "Name",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        Value = schema.new({
            id = id.from(_N, "MetricDimension", "Value"),
            type = "string",
            name = "Value",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.TargetTrackingMetricDimension = schema.new({
    id = id.from(_N, "TargetTrackingMetricDimension"),
    type = "structure",
    members = {
        Name = schema.new({
            id = id.from(_N, "TargetTrackingMetricDimension", "Name"),
            type = "string",
            name = "Name",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        Value = schema.new({
            id = id.from(_N, "TargetTrackingMetricDimension", "Value"),
            type = "string",
            name = "Value",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.TargetTrackingMetric = schema.new({
    id = id.from(_N, "TargetTrackingMetric"),
    type = "structure",
    members = {
        Dimensions = schema.new({
            id = id.from(_N, "TargetTrackingMetric", "Dimensions"),
            type = "list",
            name = "Dimensions",
            target_id = prelude.Document.id,
            list_member = M.TargetTrackingMetricDimension,
        }),
        MetricName = schema.new({
            id = id.from(_N, "TargetTrackingMetric", "MetricName"),
            type = "string",
            name = "MetricName",
            target_id = prelude.String.id,
        }),
        Namespace = schema.new({
            id = id.from(_N, "TargetTrackingMetric", "Namespace"),
            type = "string",
            name = "Namespace",
            target_id = prelude.String.id,
        }),
    },
})

M.TargetTrackingMetricStat = schema.new({
    id = id.from(_N, "TargetTrackingMetricStat"),
    type = "structure",
    members = {
        Metric = schema.new({
            id = id.from(_N, "TargetTrackingMetricStat", "Metric"),
            type = "structure",
            name = "Metric",
            target_id = id.from(_N, "TargetTrackingMetric"),
            target = M.TargetTrackingMetric,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        Stat = schema.new({
            id = id.from(_N, "TargetTrackingMetricStat", "Stat"),
            type = "string",
            name = "Stat",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        Unit = schema.new({
            id = id.from(_N, "TargetTrackingMetricStat", "Unit"),
            type = "string",
            name = "Unit",
            target_id = prelude.String.id,
        }),
    },
})

M.TargetTrackingMetricDataQuery = schema.new({
    id = id.from(_N, "TargetTrackingMetricDataQuery"),
    type = "structure",
    members = {
        Expression = schema.new({
            id = id.from(_N, "TargetTrackingMetricDataQuery", "Expression"),
            type = "string",
            name = "Expression",
            target_id = prelude.String.id,
        }),
        Id = schema.new({
            id = id.from(_N, "TargetTrackingMetricDataQuery", "Id"),
            type = "string",
            name = "Id",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        Label = schema.new({
            id = id.from(_N, "TargetTrackingMetricDataQuery", "Label"),
            type = "string",
            name = "Label",
            target_id = prelude.String.id,
        }),
        MetricStat = schema.new({
            id = id.from(_N, "TargetTrackingMetricDataQuery", "MetricStat"),
            type = "structure",
            name = "MetricStat",
            target_id = id.from(_N, "TargetTrackingMetricStat"),
            target = M.TargetTrackingMetricStat,
        }),
        ReturnData = schema.new({
            id = id.from(_N, "TargetTrackingMetricDataQuery", "ReturnData"),
            type = "boolean",
            name = "ReturnData",
            target_id = prelude.Boolean.id,
        }),
    },
})

M.CustomizedMetricSpecification = schema.new({
    id = id.from(_N, "CustomizedMetricSpecification"),
    type = "structure",
    members = {
        MetricName = schema.new({
            id = id.from(_N, "CustomizedMetricSpecification", "MetricName"),
            type = "string",
            name = "MetricName",
            target_id = prelude.String.id,
        }),
        Namespace = schema.new({
            id = id.from(_N, "CustomizedMetricSpecification", "Namespace"),
            type = "string",
            name = "Namespace",
            target_id = prelude.String.id,
        }),
        Dimensions = schema.new({
            id = id.from(_N, "CustomizedMetricSpecification", "Dimensions"),
            type = "list",
            name = "Dimensions",
            target_id = prelude.Document.id,
            list_member = M.MetricDimension,
        }),
        Statistic = schema.new({
            id = id.from(_N, "CustomizedMetricSpecification", "Statistic"),
            type = "string",
            name = "Statistic",
            target_id = prelude.String.id,
        }),
        Unit = schema.new({
            id = id.from(_N, "CustomizedMetricSpecification", "Unit"),
            type = "string",
            name = "Unit",
            target_id = prelude.String.id,
        }),
        Metrics = schema.new({
            id = id.from(_N, "CustomizedMetricSpecification", "Metrics"),
            type = "list",
            name = "Metrics",
            target_id = prelude.Document.id,
            list_member = M.TargetTrackingMetricDataQuery,
        }),
    },
})

M.PredefinedMetricSpecification = schema.new({
    id = id.from(_N, "PredefinedMetricSpecification"),
    type = "structure",
    members = {
        PredefinedMetricType = schema.new({
            id = id.from(_N, "PredefinedMetricSpecification", "PredefinedMetricType"),
            type = "string",
            name = "PredefinedMetricType",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        ResourceLabel = schema.new({
            id = id.from(_N, "PredefinedMetricSpecification", "ResourceLabel"),
            type = "string",
            name = "ResourceLabel",
            target_id = prelude.String.id,
        }),
    },
})

M.TargetTrackingScalingPolicyConfiguration = schema.new({
    id = id.from(_N, "TargetTrackingScalingPolicyConfiguration"),
    type = "structure",
    members = {
        TargetValue = schema.new({
            id = id.from(_N, "TargetTrackingScalingPolicyConfiguration", "TargetValue"),
            type = "double",
            name = "TargetValue",
            target_id = prelude.Double.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        PredefinedMetricSpecification = schema.new({
            id = id.from(_N, "TargetTrackingScalingPolicyConfiguration", "PredefinedMetricSpecification"),
            type = "structure",
            name = "PredefinedMetricSpecification",
            target_id = id.from(_N, "PredefinedMetricSpecification"),
            target = M.PredefinedMetricSpecification,
        }),
        CustomizedMetricSpecification = schema.new({
            id = id.from(_N, "TargetTrackingScalingPolicyConfiguration", "CustomizedMetricSpecification"),
            type = "structure",
            name = "CustomizedMetricSpecification",
            target_id = id.from(_N, "CustomizedMetricSpecification"),
            target = M.CustomizedMetricSpecification,
        }),
        ScaleOutCooldown = schema.new({
            id = id.from(_N, "TargetTrackingScalingPolicyConfiguration", "ScaleOutCooldown"),
            type = "integer",
            name = "ScaleOutCooldown",
            target_id = prelude.Integer.id,
        }),
        ScaleInCooldown = schema.new({
            id = id.from(_N, "TargetTrackingScalingPolicyConfiguration", "ScaleInCooldown"),
            type = "integer",
            name = "ScaleInCooldown",
            target_id = prelude.Integer.id,
        }),
        DisableScaleIn = schema.new({
            id = id.from(_N, "TargetTrackingScalingPolicyConfiguration", "DisableScaleIn"),
            type = "boolean",
            name = "DisableScaleIn",
            target_id = prelude.Boolean.id,
        }),
    },
})

M.ScalingPolicy = schema.new({
    id = id.from(_N, "ScalingPolicy"),
    type = "structure",
    members = {
        PolicyARN = schema.new({
            id = id.from(_N, "ScalingPolicy", "PolicyARN"),
            type = "string",
            name = "PolicyARN",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        PolicyName = schema.new({
            id = id.from(_N, "ScalingPolicy", "PolicyName"),
            type = "string",
            name = "PolicyName",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        ServiceNamespace = schema.new({
            id = id.from(_N, "ScalingPolicy", "ServiceNamespace"),
            type = "string",
            name = "ServiceNamespace",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        ResourceId = schema.new({
            id = id.from(_N, "ScalingPolicy", "ResourceId"),
            type = "string",
            name = "ResourceId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        ScalableDimension = schema.new({
            id = id.from(_N, "ScalingPolicy", "ScalableDimension"),
            type = "string",
            name = "ScalableDimension",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        PolicyType = schema.new({
            id = id.from(_N, "ScalingPolicy", "PolicyType"),
            type = "string",
            name = "PolicyType",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        StepScalingPolicyConfiguration = schema.new({
            id = id.from(_N, "ScalingPolicy", "StepScalingPolicyConfiguration"),
            type = "structure",
            name = "StepScalingPolicyConfiguration",
            target_id = id.from(_N, "StepScalingPolicyConfiguration"),
            target = M.StepScalingPolicyConfiguration,
        }),
        TargetTrackingScalingPolicyConfiguration = schema.new({
            id = id.from(_N, "ScalingPolicy", "TargetTrackingScalingPolicyConfiguration"),
            type = "structure",
            name = "TargetTrackingScalingPolicyConfiguration",
            target_id = id.from(_N, "TargetTrackingScalingPolicyConfiguration"),
            target = M.TargetTrackingScalingPolicyConfiguration,
        }),
        PredictiveScalingPolicyConfiguration = schema.new({
            id = id.from(_N, "ScalingPolicy", "PredictiveScalingPolicyConfiguration"),
            type = "structure",
            name = "PredictiveScalingPolicyConfiguration",
            target_id = id.from(_N, "PredictiveScalingPolicyConfiguration"),
            target = M.PredictiveScalingPolicyConfiguration,
        }),
        Alarms = schema.new({
            id = id.from(_N, "ScalingPolicy", "Alarms"),
            type = "list",
            name = "Alarms",
            target_id = prelude.Document.id,
            list_member = M.Alarm,
        }),
        CreationTime = schema.new({
            id = id.from(_N, "ScalingPolicy", "CreationTime"),
            type = "timestamp",
            name = "CreationTime",
            target_id = prelude.Timestamp.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.DescribeScalingPoliciesOutput = schema.new({
    id = id.from(_N, "DescribeScalingPoliciesOutput"),
    type = "structure",
    members = {
        ScalingPolicies = schema.new({
            id = id.from(_N, "DescribeScalingPoliciesOutput", "ScalingPolicies"),
            type = "list",
            name = "ScalingPolicies",
            target_id = prelude.Document.id,
            list_member = M.ScalingPolicy,
        }),
        NextToken = schema.new({
            id = id.from(_N, "DescribeScalingPoliciesOutput", "NextToken"),
            type = "string",
            name = "NextToken",
            target_id = prelude.String.id,
        }),
    },
})

M.FailedResourceAccessException = schema.new({
    id = id.from(_N, "FailedResourceAccessException"),
    type = "structure",
    traits = {
        [traits.ERROR] = { value = "client" },
    },
    members = {
        Message = schema.new({
            id = id.from(_N, "FailedResourceAccessException", "Message"),
            type = "string",
            name = "Message",
            target_id = prelude.String.id,
        }),
    },
})

M.DescribeScheduledActionsInput = schema.new({
    id = id.from(_N, "DescribeScheduledActionsInput"),
    type = "structure",
    members = {
        ScheduledActionNames = schema.new({
            id = id.from(_N, "DescribeScheduledActionsInput", "ScheduledActionNames"),
            type = "list",
            name = "ScheduledActionNames",
            target_id = prelude.Document.id,
            list_member = prelude.String,
        }),
        ServiceNamespace = schema.new({
            id = id.from(_N, "DescribeScheduledActionsInput", "ServiceNamespace"),
            type = "string",
            name = "ServiceNamespace",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        ResourceId = schema.new({
            id = id.from(_N, "DescribeScheduledActionsInput", "ResourceId"),
            type = "string",
            name = "ResourceId",
            target_id = prelude.String.id,
        }),
        ScalableDimension = schema.new({
            id = id.from(_N, "DescribeScheduledActionsInput", "ScalableDimension"),
            type = "string",
            name = "ScalableDimension",
            target_id = prelude.String.id,
        }),
        MaxResults = schema.new({
            id = id.from(_N, "DescribeScheduledActionsInput", "MaxResults"),
            type = "integer",
            name = "MaxResults",
            target_id = prelude.Integer.id,
        }),
        NextToken = schema.new({
            id = id.from(_N, "DescribeScheduledActionsInput", "NextToken"),
            type = "string",
            name = "NextToken",
            target_id = prelude.String.id,
        }),
    },
})

M.ScalableTargetAction = schema.new({
    id = id.from(_N, "ScalableTargetAction"),
    type = "structure",
    members = {
        MinCapacity = schema.new({
            id = id.from(_N, "ScalableTargetAction", "MinCapacity"),
            type = "integer",
            name = "MinCapacity",
            target_id = prelude.Integer.id,
        }),
        MaxCapacity = schema.new({
            id = id.from(_N, "ScalableTargetAction", "MaxCapacity"),
            type = "integer",
            name = "MaxCapacity",
            target_id = prelude.Integer.id,
        }),
    },
})

M.ScheduledAction = schema.new({
    id = id.from(_N, "ScheduledAction"),
    type = "structure",
    members = {
        ScheduledActionName = schema.new({
            id = id.from(_N, "ScheduledAction", "ScheduledActionName"),
            type = "string",
            name = "ScheduledActionName",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        ScheduledActionARN = schema.new({
            id = id.from(_N, "ScheduledAction", "ScheduledActionARN"),
            type = "string",
            name = "ScheduledActionARN",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        ServiceNamespace = schema.new({
            id = id.from(_N, "ScheduledAction", "ServiceNamespace"),
            type = "string",
            name = "ServiceNamespace",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        Schedule = schema.new({
            id = id.from(_N, "ScheduledAction", "Schedule"),
            type = "string",
            name = "Schedule",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        Timezone = schema.new({
            id = id.from(_N, "ScheduledAction", "Timezone"),
            type = "string",
            name = "Timezone",
            target_id = prelude.String.id,
        }),
        ResourceId = schema.new({
            id = id.from(_N, "ScheduledAction", "ResourceId"),
            type = "string",
            name = "ResourceId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        ScalableDimension = schema.new({
            id = id.from(_N, "ScheduledAction", "ScalableDimension"),
            type = "string",
            name = "ScalableDimension",
            target_id = prelude.String.id,
        }),
        StartTime = schema.new({
            id = id.from(_N, "ScheduledAction", "StartTime"),
            type = "timestamp",
            name = "StartTime",
            target_id = prelude.Timestamp.id,
        }),
        EndTime = schema.new({
            id = id.from(_N, "ScheduledAction", "EndTime"),
            type = "timestamp",
            name = "EndTime",
            target_id = prelude.Timestamp.id,
        }),
        ScalableTargetAction = schema.new({
            id = id.from(_N, "ScheduledAction", "ScalableTargetAction"),
            type = "structure",
            name = "ScalableTargetAction",
            target_id = id.from(_N, "ScalableTargetAction"),
            target = M.ScalableTargetAction,
        }),
        CreationTime = schema.new({
            id = id.from(_N, "ScheduledAction", "CreationTime"),
            type = "timestamp",
            name = "CreationTime",
            target_id = prelude.Timestamp.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.DescribeScheduledActionsOutput = schema.new({
    id = id.from(_N, "DescribeScheduledActionsOutput"),
    type = "structure",
    members = {
        ScheduledActions = schema.new({
            id = id.from(_N, "DescribeScheduledActionsOutput", "ScheduledActions"),
            type = "list",
            name = "ScheduledActions",
            target_id = prelude.Document.id,
            list_member = M.ScheduledAction,
        }),
        NextToken = schema.new({
            id = id.from(_N, "DescribeScheduledActionsOutput", "NextToken"),
            type = "string",
            name = "NextToken",
            target_id = prelude.String.id,
        }),
    },
})

M.GetPredictiveScalingForecastInput = schema.new({
    id = id.from(_N, "GetPredictiveScalingForecastInput"),
    type = "structure",
    members = {
        ServiceNamespace = schema.new({
            id = id.from(_N, "GetPredictiveScalingForecastInput", "ServiceNamespace"),
            type = "string",
            name = "ServiceNamespace",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        ResourceId = schema.new({
            id = id.from(_N, "GetPredictiveScalingForecastInput", "ResourceId"),
            type = "string",
            name = "ResourceId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        ScalableDimension = schema.new({
            id = id.from(_N, "GetPredictiveScalingForecastInput", "ScalableDimension"),
            type = "string",
            name = "ScalableDimension",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        PolicyName = schema.new({
            id = id.from(_N, "GetPredictiveScalingForecastInput", "PolicyName"),
            type = "string",
            name = "PolicyName",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        StartTime = schema.new({
            id = id.from(_N, "GetPredictiveScalingForecastInput", "StartTime"),
            type = "timestamp",
            name = "StartTime",
            target_id = prelude.Timestamp.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        EndTime = schema.new({
            id = id.from(_N, "GetPredictiveScalingForecastInput", "EndTime"),
            type = "timestamp",
            name = "EndTime",
            target_id = prelude.Timestamp.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.CapacityForecast = schema.new({
    id = id.from(_N, "CapacityForecast"),
    type = "structure",
    members = {
        Timestamps = schema.new({
            id = id.from(_N, "CapacityForecast", "Timestamps"),
            type = "list",
            name = "Timestamps",
            target_id = prelude.Document.id,
            list_member = prelude.Timestamp,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        Values = schema.new({
            id = id.from(_N, "CapacityForecast", "Values"),
            type = "list",
            name = "Values",
            target_id = prelude.Document.id,
            list_member = prelude.Double,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.LoadForecast = schema.new({
    id = id.from(_N, "LoadForecast"),
    type = "structure",
    members = {
        Timestamps = schema.new({
            id = id.from(_N, "LoadForecast", "Timestamps"),
            type = "list",
            name = "Timestamps",
            target_id = prelude.Document.id,
            list_member = prelude.Timestamp,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        Values = schema.new({
            id = id.from(_N, "LoadForecast", "Values"),
            type = "list",
            name = "Values",
            target_id = prelude.Document.id,
            list_member = prelude.Double,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        MetricSpecification = schema.new({
            id = id.from(_N, "LoadForecast", "MetricSpecification"),
            type = "structure",
            name = "MetricSpecification",
            target_id = id.from(_N, "PredictiveScalingMetricSpecification"),
            target = M.PredictiveScalingMetricSpecification,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.GetPredictiveScalingForecastOutput = schema.new({
    id = id.from(_N, "GetPredictiveScalingForecastOutput"),
    type = "structure",
    members = {
        LoadForecast = schema.new({
            id = id.from(_N, "GetPredictiveScalingForecastOutput", "LoadForecast"),
            type = "list",
            name = "LoadForecast",
            target_id = prelude.Document.id,
            list_member = M.LoadForecast,
        }),
        CapacityForecast = schema.new({
            id = id.from(_N, "GetPredictiveScalingForecastOutput", "CapacityForecast"),
            type = "structure",
            name = "CapacityForecast",
            target_id = id.from(_N, "CapacityForecast"),
            target = M.CapacityForecast,
        }),
        UpdateTime = schema.new({
            id = id.from(_N, "GetPredictiveScalingForecastOutput", "UpdateTime"),
            type = "timestamp",
            name = "UpdateTime",
            target_id = prelude.Timestamp.id,
        }),
    },
})

M.ListTagsForResourceInput = schema.new({
    id = id.from(_N, "ListTagsForResourceInput"),
    type = "structure",
    members = {
        ResourceARN = schema.new({
            id = id.from(_N, "ListTagsForResourceInput", "ResourceARN"),
            type = "string",
            name = "ResourceARN",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.ListTagsForResourceOutput = schema.new({
    id = id.from(_N, "ListTagsForResourceOutput"),
    type = "structure",
    members = {
        Tags = schema.new({
            id = id.from(_N, "ListTagsForResourceOutput", "Tags"),
            type = "map",
            name = "Tags",
            target_id = prelude.Document.id,
            map_key = prelude.String,
            map_value = prelude.String,
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
        Message = schema.new({
            id = id.from(_N, "ResourceNotFoundException", "Message"),
            type = "string",
            name = "Message",
            target_id = prelude.String.id,
        }),
        ResourceName = schema.new({
            id = id.from(_N, "ResourceNotFoundException", "ResourceName"),
            type = "string",
            name = "ResourceName",
            target_id = prelude.String.id,
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
        Message = schema.new({
            id = id.from(_N, "LimitExceededException", "Message"),
            type = "string",
            name = "Message",
            target_id = prelude.String.id,
        }),
    },
})

M.PutScalingPolicyInput = schema.new({
    id = id.from(_N, "PutScalingPolicyInput"),
    type = "structure",
    members = {
        PolicyName = schema.new({
            id = id.from(_N, "PutScalingPolicyInput", "PolicyName"),
            type = "string",
            name = "PolicyName",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        ServiceNamespace = schema.new({
            id = id.from(_N, "PutScalingPolicyInput", "ServiceNamespace"),
            type = "string",
            name = "ServiceNamespace",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        ResourceId = schema.new({
            id = id.from(_N, "PutScalingPolicyInput", "ResourceId"),
            type = "string",
            name = "ResourceId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        ScalableDimension = schema.new({
            id = id.from(_N, "PutScalingPolicyInput", "ScalableDimension"),
            type = "string",
            name = "ScalableDimension",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        PolicyType = schema.new({
            id = id.from(_N, "PutScalingPolicyInput", "PolicyType"),
            type = "string",
            name = "PolicyType",
            target_id = prelude.String.id,
        }),
        StepScalingPolicyConfiguration = schema.new({
            id = id.from(_N, "PutScalingPolicyInput", "StepScalingPolicyConfiguration"),
            type = "structure",
            name = "StepScalingPolicyConfiguration",
            target_id = id.from(_N, "StepScalingPolicyConfiguration"),
            target = M.StepScalingPolicyConfiguration,
        }),
        TargetTrackingScalingPolicyConfiguration = schema.new({
            id = id.from(_N, "PutScalingPolicyInput", "TargetTrackingScalingPolicyConfiguration"),
            type = "structure",
            name = "TargetTrackingScalingPolicyConfiguration",
            target_id = id.from(_N, "TargetTrackingScalingPolicyConfiguration"),
            target = M.TargetTrackingScalingPolicyConfiguration,
        }),
        PredictiveScalingPolicyConfiguration = schema.new({
            id = id.from(_N, "PutScalingPolicyInput", "PredictiveScalingPolicyConfiguration"),
            type = "structure",
            name = "PredictiveScalingPolicyConfiguration",
            target_id = id.from(_N, "PredictiveScalingPolicyConfiguration"),
            target = M.PredictiveScalingPolicyConfiguration,
        }),
    },
})

M.PutScalingPolicyOutput = schema.new({
    id = id.from(_N, "PutScalingPolicyOutput"),
    type = "structure",
    members = {
        PolicyARN = schema.new({
            id = id.from(_N, "PutScalingPolicyOutput", "PolicyARN"),
            type = "string",
            name = "PolicyARN",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        Alarms = schema.new({
            id = id.from(_N, "PutScalingPolicyOutput", "Alarms"),
            type = "list",
            name = "Alarms",
            target_id = prelude.Document.id,
            list_member = M.Alarm,
        }),
    },
})

M.PutScheduledActionInput = schema.new({
    id = id.from(_N, "PutScheduledActionInput"),
    type = "structure",
    members = {
        ServiceNamespace = schema.new({
            id = id.from(_N, "PutScheduledActionInput", "ServiceNamespace"),
            type = "string",
            name = "ServiceNamespace",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        Schedule = schema.new({
            id = id.from(_N, "PutScheduledActionInput", "Schedule"),
            type = "string",
            name = "Schedule",
            target_id = prelude.String.id,
        }),
        Timezone = schema.new({
            id = id.from(_N, "PutScheduledActionInput", "Timezone"),
            type = "string",
            name = "Timezone",
            target_id = prelude.String.id,
        }),
        ScheduledActionName = schema.new({
            id = id.from(_N, "PutScheduledActionInput", "ScheduledActionName"),
            type = "string",
            name = "ScheduledActionName",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        ResourceId = schema.new({
            id = id.from(_N, "PutScheduledActionInput", "ResourceId"),
            type = "string",
            name = "ResourceId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        ScalableDimension = schema.new({
            id = id.from(_N, "PutScheduledActionInput", "ScalableDimension"),
            type = "string",
            name = "ScalableDimension",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        StartTime = schema.new({
            id = id.from(_N, "PutScheduledActionInput", "StartTime"),
            type = "timestamp",
            name = "StartTime",
            target_id = prelude.Timestamp.id,
        }),
        EndTime = schema.new({
            id = id.from(_N, "PutScheduledActionInput", "EndTime"),
            type = "timestamp",
            name = "EndTime",
            target_id = prelude.Timestamp.id,
        }),
        ScalableTargetAction = schema.new({
            id = id.from(_N, "PutScheduledActionInput", "ScalableTargetAction"),
            type = "structure",
            name = "ScalableTargetAction",
            target_id = id.from(_N, "ScalableTargetAction"),
            target = M.ScalableTargetAction,
        }),
    },
})

M.PutScheduledActionOutput = schema.new({
    id = id.from(_N, "PutScheduledActionOutput"),
    type = "structure",
})

M.RegisterScalableTargetInput = schema.new({
    id = id.from(_N, "RegisterScalableTargetInput"),
    type = "structure",
    members = {
        ServiceNamespace = schema.new({
            id = id.from(_N, "RegisterScalableTargetInput", "ServiceNamespace"),
            type = "string",
            name = "ServiceNamespace",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        ResourceId = schema.new({
            id = id.from(_N, "RegisterScalableTargetInput", "ResourceId"),
            type = "string",
            name = "ResourceId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        ScalableDimension = schema.new({
            id = id.from(_N, "RegisterScalableTargetInput", "ScalableDimension"),
            type = "string",
            name = "ScalableDimension",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        MinCapacity = schema.new({
            id = id.from(_N, "RegisterScalableTargetInput", "MinCapacity"),
            type = "integer",
            name = "MinCapacity",
            target_id = prelude.Integer.id,
        }),
        MaxCapacity = schema.new({
            id = id.from(_N, "RegisterScalableTargetInput", "MaxCapacity"),
            type = "integer",
            name = "MaxCapacity",
            target_id = prelude.Integer.id,
        }),
        RoleARN = schema.new({
            id = id.from(_N, "RegisterScalableTargetInput", "RoleARN"),
            type = "string",
            name = "RoleARN",
            target_id = prelude.String.id,
        }),
        SuspendedState = schema.new({
            id = id.from(_N, "RegisterScalableTargetInput", "SuspendedState"),
            type = "structure",
            name = "SuspendedState",
            target_id = id.from(_N, "SuspendedState"),
            target = M.SuspendedState,
        }),
        Tags = schema.new({
            id = id.from(_N, "RegisterScalableTargetInput", "Tags"),
            type = "map",
            name = "Tags",
            target_id = prelude.Document.id,
            map_key = prelude.String,
            map_value = prelude.String,
        }),
    },
})

M.RegisterScalableTargetOutput = schema.new({
    id = id.from(_N, "RegisterScalableTargetOutput"),
    type = "structure",
    members = {
        ScalableTargetARN = schema.new({
            id = id.from(_N, "RegisterScalableTargetOutput", "ScalableTargetARN"),
            type = "string",
            name = "ScalableTargetARN",
            target_id = prelude.String.id,
        }),
    },
})

M.TagResourceInput = schema.new({
    id = id.from(_N, "TagResourceInput"),
    type = "structure",
    members = {
        ResourceARN = schema.new({
            id = id.from(_N, "TagResourceInput", "ResourceARN"),
            type = "string",
            name = "ResourceARN",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        Tags = schema.new({
            id = id.from(_N, "TagResourceInput", "Tags"),
            type = "map",
            name = "Tags",
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
    id = id.from(_N, "TagResourceOutput"),
    type = "structure",
})

M.TooManyTagsException = schema.new({
    id = id.from(_N, "TooManyTagsException"),
    type = "structure",
    traits = {
        [traits.ERROR] = { value = "client" },
    },
    members = {
        Message = schema.new({
            id = id.from(_N, "TooManyTagsException", "Message"),
            type = "string",
            name = "Message",
            target_id = prelude.String.id,
        }),
        ResourceName = schema.new({
            id = id.from(_N, "TooManyTagsException", "ResourceName"),
            type = "string",
            name = "ResourceName",
            target_id = prelude.String.id,
        }),
    },
})

M.UntagResourceInput = schema.new({
    id = id.from(_N, "UntagResourceInput"),
    type = "structure",
    members = {
        ResourceARN = schema.new({
            id = id.from(_N, "UntagResourceInput", "ResourceARN"),
            type = "string",
            name = "ResourceARN",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        TagKeys = schema.new({
            id = id.from(_N, "UntagResourceInput", "TagKeys"),
            type = "list",
            name = "TagKeys",
            target_id = prelude.Document.id,
            list_member = prelude.String,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.UntagResourceOutput = schema.new({
    id = id.from(_N, "UntagResourceOutput"),
    type = "structure",
})

return M
