local id = require("smithy.shape_id")
local schema = require("smithy.schema")
local prelude = require("smithy.prelude")
local traits = require("smithy.traits")

local _N = "com.amazonaws.autoscalingplans"

local M = {}

M.ScalingInstructions = schema.new({ type = "list", list_member = M.ScalingInstruction })

M.ScalingPlanResources = schema.new({ type = "list", list_member = M.ScalingPlanResource })

M.ScalingPlanNames = schema.new({ type = "list", list_member = prelude.String })

M.ApplicationSources = schema.new({ type = "list", list_member = M.ApplicationSource })

M.ScalingPlans = schema.new({ type = "list", list_member = M.ScalingPlan })

M.Datapoints = schema.new({ type = "list", list_member = M.Datapoint })

M.TagFilters = schema.new({ type = "list", list_member = M.TagFilter })

M.TargetTrackingConfigurations = schema.new({ type = "list", list_member = M.TargetTrackingConfiguration })

M.ScalingPolicies = schema.new({ type = "list", list_member = M.ScalingPolicy })

M.TagValues = schema.new({ type = "list", list_member = prelude.String })

M.MetricDimensions = schema.new({ type = "list", list_member = M.MetricDimension })

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

M.TagFilter = schema.new({
    id = id.from(_N, "TagFilter"),
    type = "structure",
    members = {
        Key = schema.new({
            id = id.from(_N, "TagFilter", "Key"),
            type = "string",
            name = "Key",
            target_id = prelude.String.id,
        }),
        Values = schema.new({
            id = id.from(_N, "TagFilter", "Values"),
            type = "list",
            name = "Values",
            target_id = prelude.Document.id,
            list_member = prelude.String,
        }),
    },
})

M.ApplicationSource = schema.new({
    id = id.from(_N, "ApplicationSource"),
    type = "structure",
    members = {
        CloudFormationStackARN = schema.new({
            id = id.from(_N, "ApplicationSource", "CloudFormationStackARN"),
            type = "string",
            name = "CloudFormationStackARN",
            target_id = prelude.String.id,
        }),
        TagFilters = schema.new({
            id = id.from(_N, "ApplicationSource", "TagFilters"),
            type = "list",
            name = "TagFilters",
            target_id = prelude.Document.id,
            list_member = M.TagFilter,
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

M.CustomizedLoadMetricSpecification = schema.new({
    id = id.from(_N, "CustomizedLoadMetricSpecification"),
    type = "structure",
    members = {
        MetricName = schema.new({
            id = id.from(_N, "CustomizedLoadMetricSpecification", "MetricName"),
            type = "string",
            name = "MetricName",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        Namespace = schema.new({
            id = id.from(_N, "CustomizedLoadMetricSpecification", "Namespace"),
            type = "string",
            name = "Namespace",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        Dimensions = schema.new({
            id = id.from(_N, "CustomizedLoadMetricSpecification", "Dimensions"),
            type = "list",
            name = "Dimensions",
            target_id = prelude.Document.id,
            list_member = M.MetricDimension,
        }),
        Statistic = schema.new({
            id = id.from(_N, "CustomizedLoadMetricSpecification", "Statistic"),
            type = "string",
            name = "Statistic",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        Unit = schema.new({
            id = id.from(_N, "CustomizedLoadMetricSpecification", "Unit"),
            type = "string",
            name = "Unit",
            target_id = prelude.String.id,
        }),
    },
})

M.PredefinedLoadMetricSpecification = schema.new({
    id = id.from(_N, "PredefinedLoadMetricSpecification"),
    type = "structure",
    members = {
        PredefinedLoadMetricType = schema.new({
            id = id.from(_N, "PredefinedLoadMetricSpecification", "PredefinedLoadMetricType"),
            type = "string",
            name = "PredefinedLoadMetricType",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        ResourceLabel = schema.new({
            id = id.from(_N, "PredefinedLoadMetricSpecification", "ResourceLabel"),
            type = "string",
            name = "ResourceLabel",
            target_id = prelude.String.id,
        }),
    },
})

M.CustomizedScalingMetricSpecification = schema.new({
    id = id.from(_N, "CustomizedScalingMetricSpecification"),
    type = "structure",
    members = {
        MetricName = schema.new({
            id = id.from(_N, "CustomizedScalingMetricSpecification", "MetricName"),
            type = "string",
            name = "MetricName",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        Namespace = schema.new({
            id = id.from(_N, "CustomizedScalingMetricSpecification", "Namespace"),
            type = "string",
            name = "Namespace",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        Dimensions = schema.new({
            id = id.from(_N, "CustomizedScalingMetricSpecification", "Dimensions"),
            type = "list",
            name = "Dimensions",
            target_id = prelude.Document.id,
            list_member = M.MetricDimension,
        }),
        Statistic = schema.new({
            id = id.from(_N, "CustomizedScalingMetricSpecification", "Statistic"),
            type = "string",
            name = "Statistic",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        Unit = schema.new({
            id = id.from(_N, "CustomizedScalingMetricSpecification", "Unit"),
            type = "string",
            name = "Unit",
            target_id = prelude.String.id,
        }),
    },
})

M.PredefinedScalingMetricSpecification = schema.new({
    id = id.from(_N, "PredefinedScalingMetricSpecification"),
    type = "structure",
    members = {
        PredefinedScalingMetricType = schema.new({
            id = id.from(_N, "PredefinedScalingMetricSpecification", "PredefinedScalingMetricType"),
            type = "string",
            name = "PredefinedScalingMetricType",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        ResourceLabel = schema.new({
            id = id.from(_N, "PredefinedScalingMetricSpecification", "ResourceLabel"),
            type = "string",
            name = "ResourceLabel",
            target_id = prelude.String.id,
        }),
    },
})

M.TargetTrackingConfiguration = schema.new({
    id = id.from(_N, "TargetTrackingConfiguration"),
    type = "structure",
    members = {
        PredefinedScalingMetricSpecification = schema.new({
            id = id.from(_N, "TargetTrackingConfiguration", "PredefinedScalingMetricSpecification"),
            type = "structure",
            name = "PredefinedScalingMetricSpecification",
            target_id = id.from(_N, "PredefinedScalingMetricSpecification"),
            target = M.PredefinedScalingMetricSpecification,
        }),
        CustomizedScalingMetricSpecification = schema.new({
            id = id.from(_N, "TargetTrackingConfiguration", "CustomizedScalingMetricSpecification"),
            type = "structure",
            name = "CustomizedScalingMetricSpecification",
            target_id = id.from(_N, "CustomizedScalingMetricSpecification"),
            target = M.CustomizedScalingMetricSpecification,
        }),
        TargetValue = schema.new({
            id = id.from(_N, "TargetTrackingConfiguration", "TargetValue"),
            type = "double",
            name = "TargetValue",
            target_id = prelude.Double.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        DisableScaleIn = schema.new({
            id = id.from(_N, "TargetTrackingConfiguration", "DisableScaleIn"),
            type = "boolean",
            name = "DisableScaleIn",
            target_id = prelude.Boolean.id,
        }),
        ScaleOutCooldown = schema.new({
            id = id.from(_N, "TargetTrackingConfiguration", "ScaleOutCooldown"),
            type = "integer",
            name = "ScaleOutCooldown",
            target_id = prelude.Integer.id,
        }),
        ScaleInCooldown = schema.new({
            id = id.from(_N, "TargetTrackingConfiguration", "ScaleInCooldown"),
            type = "integer",
            name = "ScaleInCooldown",
            target_id = prelude.Integer.id,
        }),
        EstimatedInstanceWarmup = schema.new({
            id = id.from(_N, "TargetTrackingConfiguration", "EstimatedInstanceWarmup"),
            type = "integer",
            name = "EstimatedInstanceWarmup",
            target_id = prelude.Integer.id,
        }),
    },
})

M.ScalingInstruction = schema.new({
    id = id.from(_N, "ScalingInstruction"),
    type = "structure",
    members = {
        ServiceNamespace = schema.new({
            id = id.from(_N, "ScalingInstruction", "ServiceNamespace"),
            type = "string",
            name = "ServiceNamespace",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        ResourceId = schema.new({
            id = id.from(_N, "ScalingInstruction", "ResourceId"),
            type = "string",
            name = "ResourceId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        ScalableDimension = schema.new({
            id = id.from(_N, "ScalingInstruction", "ScalableDimension"),
            type = "string",
            name = "ScalableDimension",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        MinCapacity = schema.new({
            id = id.from(_N, "ScalingInstruction", "MinCapacity"),
            type = "integer",
            name = "MinCapacity",
            target_id = prelude.Integer.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        MaxCapacity = schema.new({
            id = id.from(_N, "ScalingInstruction", "MaxCapacity"),
            type = "integer",
            name = "MaxCapacity",
            target_id = prelude.Integer.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        TargetTrackingConfigurations = schema.new({
            id = id.from(_N, "ScalingInstruction", "TargetTrackingConfigurations"),
            type = "list",
            name = "TargetTrackingConfigurations",
            target_id = prelude.Document.id,
            list_member = M.TargetTrackingConfiguration,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        PredefinedLoadMetricSpecification = schema.new({
            id = id.from(_N, "ScalingInstruction", "PredefinedLoadMetricSpecification"),
            type = "structure",
            name = "PredefinedLoadMetricSpecification",
            target_id = id.from(_N, "PredefinedLoadMetricSpecification"),
            target = M.PredefinedLoadMetricSpecification,
        }),
        CustomizedLoadMetricSpecification = schema.new({
            id = id.from(_N, "ScalingInstruction", "CustomizedLoadMetricSpecification"),
            type = "structure",
            name = "CustomizedLoadMetricSpecification",
            target_id = id.from(_N, "CustomizedLoadMetricSpecification"),
            target = M.CustomizedLoadMetricSpecification,
        }),
        ScheduledActionBufferTime = schema.new({
            id = id.from(_N, "ScalingInstruction", "ScheduledActionBufferTime"),
            type = "integer",
            name = "ScheduledActionBufferTime",
            target_id = prelude.Integer.id,
        }),
        PredictiveScalingMaxCapacityBehavior = schema.new({
            id = id.from(_N, "ScalingInstruction", "PredictiveScalingMaxCapacityBehavior"),
            type = "string",
            name = "PredictiveScalingMaxCapacityBehavior",
            target_id = prelude.String.id,
        }),
        PredictiveScalingMaxCapacityBuffer = schema.new({
            id = id.from(_N, "ScalingInstruction", "PredictiveScalingMaxCapacityBuffer"),
            type = "integer",
            name = "PredictiveScalingMaxCapacityBuffer",
            target_id = prelude.Integer.id,
        }),
        PredictiveScalingMode = schema.new({
            id = id.from(_N, "ScalingInstruction", "PredictiveScalingMode"),
            type = "string",
            name = "PredictiveScalingMode",
            target_id = prelude.String.id,
        }),
        ScalingPolicyUpdateBehavior = schema.new({
            id = id.from(_N, "ScalingInstruction", "ScalingPolicyUpdateBehavior"),
            type = "string",
            name = "ScalingPolicyUpdateBehavior",
            target_id = prelude.String.id,
        }),
        DisableDynamicScaling = schema.new({
            id = id.from(_N, "ScalingInstruction", "DisableDynamicScaling"),
            type = "boolean",
            name = "DisableDynamicScaling",
            target_id = prelude.Boolean.id,
        }),
    },
})

M.CreateScalingPlanInput = schema.new({
    id = id.from(_N, "CreateScalingPlanRequest"),
    type = "structure",
    members = {
        ScalingPlanName = schema.new({
            id = id.from(_N, "CreateScalingPlanInput", "ScalingPlanName"),
            type = "string",
            name = "ScalingPlanName",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        ApplicationSource = schema.new({
            id = id.from(_N, "CreateScalingPlanInput", "ApplicationSource"),
            type = "structure",
            name = "ApplicationSource",
            target_id = id.from(_N, "ApplicationSource"),
            target = M.ApplicationSource,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        ScalingInstructions = schema.new({
            id = id.from(_N, "CreateScalingPlanInput", "ScalingInstructions"),
            type = "list",
            name = "ScalingInstructions",
            target_id = prelude.Document.id,
            list_member = M.ScalingInstruction,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.CreateScalingPlanOutput = schema.new({
    id = id.from(_N, "CreateScalingPlanResponse"),
    type = "structure",
    members = {
        ScalingPlanVersion = schema.new({
            id = id.from(_N, "CreateScalingPlanOutput", "ScalingPlanVersion"),
            type = "long",
            name = "ScalingPlanVersion",
            target_id = prelude.Long.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
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

M.DeleteScalingPlanInput = schema.new({
    id = id.from(_N, "DeleteScalingPlanRequest"),
    type = "structure",
    members = {
        ScalingPlanName = schema.new({
            id = id.from(_N, "DeleteScalingPlanInput", "ScalingPlanName"),
            type = "string",
            name = "ScalingPlanName",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        ScalingPlanVersion = schema.new({
            id = id.from(_N, "DeleteScalingPlanInput", "ScalingPlanVersion"),
            type = "long",
            name = "ScalingPlanVersion",
            target_id = prelude.Long.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.DeleteScalingPlanOutput = schema.new({
    id = id.from(_N, "DeleteScalingPlanResponse"),
    type = "structure",
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

M.DescribeScalingPlanResourcesInput = schema.new({
    id = id.from(_N, "DescribeScalingPlanResourcesRequest"),
    type = "structure",
    members = {
        ScalingPlanName = schema.new({
            id = id.from(_N, "DescribeScalingPlanResourcesInput", "ScalingPlanName"),
            type = "string",
            name = "ScalingPlanName",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        ScalingPlanVersion = schema.new({
            id = id.from(_N, "DescribeScalingPlanResourcesInput", "ScalingPlanVersion"),
            type = "long",
            name = "ScalingPlanVersion",
            target_id = prelude.Long.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        MaxResults = schema.new({
            id = id.from(_N, "DescribeScalingPlanResourcesInput", "MaxResults"),
            type = "integer",
            name = "MaxResults",
            target_id = prelude.Integer.id,
        }),
        NextToken = schema.new({
            id = id.from(_N, "DescribeScalingPlanResourcesInput", "NextToken"),
            type = "string",
            name = "NextToken",
            target_id = prelude.String.id,
        }),
    },
})

M.ScalingPolicy = schema.new({
    id = id.from(_N, "ScalingPolicy"),
    type = "structure",
    members = {
        PolicyName = schema.new({
            id = id.from(_N, "ScalingPolicy", "PolicyName"),
            type = "string",
            name = "PolicyName",
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
        TargetTrackingConfiguration = schema.new({
            id = id.from(_N, "ScalingPolicy", "TargetTrackingConfiguration"),
            type = "structure",
            name = "TargetTrackingConfiguration",
            target_id = id.from(_N, "TargetTrackingConfiguration"),
            target = M.TargetTrackingConfiguration,
        }),
    },
})

M.ScalingPlanResource = schema.new({
    id = id.from(_N, "ScalingPlanResource"),
    type = "structure",
    members = {
        ScalingPlanName = schema.new({
            id = id.from(_N, "ScalingPlanResource", "ScalingPlanName"),
            type = "string",
            name = "ScalingPlanName",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        ScalingPlanVersion = schema.new({
            id = id.from(_N, "ScalingPlanResource", "ScalingPlanVersion"),
            type = "long",
            name = "ScalingPlanVersion",
            target_id = prelude.Long.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        ServiceNamespace = schema.new({
            id = id.from(_N, "ScalingPlanResource", "ServiceNamespace"),
            type = "string",
            name = "ServiceNamespace",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        ResourceId = schema.new({
            id = id.from(_N, "ScalingPlanResource", "ResourceId"),
            type = "string",
            name = "ResourceId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        ScalableDimension = schema.new({
            id = id.from(_N, "ScalingPlanResource", "ScalableDimension"),
            type = "string",
            name = "ScalableDimension",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        ScalingPolicies = schema.new({
            id = id.from(_N, "ScalingPlanResource", "ScalingPolicies"),
            type = "list",
            name = "ScalingPolicies",
            target_id = prelude.Document.id,
            list_member = M.ScalingPolicy,
        }),
        ScalingStatusCode = schema.new({
            id = id.from(_N, "ScalingPlanResource", "ScalingStatusCode"),
            type = "string",
            name = "ScalingStatusCode",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        ScalingStatusMessage = schema.new({
            id = id.from(_N, "ScalingPlanResource", "ScalingStatusMessage"),
            type = "string",
            name = "ScalingStatusMessage",
            target_id = prelude.String.id,
        }),
    },
})

M.DescribeScalingPlanResourcesOutput = schema.new({
    id = id.from(_N, "DescribeScalingPlanResourcesResponse"),
    type = "structure",
    members = {
        ScalingPlanResources = schema.new({
            id = id.from(_N, "DescribeScalingPlanResourcesOutput", "ScalingPlanResources"),
            type = "list",
            name = "ScalingPlanResources",
            target_id = prelude.Document.id,
            list_member = M.ScalingPlanResource,
        }),
        NextToken = schema.new({
            id = id.from(_N, "DescribeScalingPlanResourcesOutput", "NextToken"),
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

M.DescribeScalingPlansInput = schema.new({
    id = id.from(_N, "DescribeScalingPlansRequest"),
    type = "structure",
    members = {
        ScalingPlanNames = schema.new({
            id = id.from(_N, "DescribeScalingPlansInput", "ScalingPlanNames"),
            type = "list",
            name = "ScalingPlanNames",
            target_id = prelude.Document.id,
            list_member = prelude.String,
        }),
        ScalingPlanVersion = schema.new({
            id = id.from(_N, "DescribeScalingPlansInput", "ScalingPlanVersion"),
            type = "long",
            name = "ScalingPlanVersion",
            target_id = prelude.Long.id,
        }),
        ApplicationSources = schema.new({
            id = id.from(_N, "DescribeScalingPlansInput", "ApplicationSources"),
            type = "list",
            name = "ApplicationSources",
            target_id = prelude.Document.id,
            list_member = M.ApplicationSource,
        }),
        MaxResults = schema.new({
            id = id.from(_N, "DescribeScalingPlansInput", "MaxResults"),
            type = "integer",
            name = "MaxResults",
            target_id = prelude.Integer.id,
        }),
        NextToken = schema.new({
            id = id.from(_N, "DescribeScalingPlansInput", "NextToken"),
            type = "string",
            name = "NextToken",
            target_id = prelude.String.id,
        }),
    },
})

M.ScalingPlan = schema.new({
    id = id.from(_N, "ScalingPlan"),
    type = "structure",
    members = {
        ScalingPlanName = schema.new({
            id = id.from(_N, "ScalingPlan", "ScalingPlanName"),
            type = "string",
            name = "ScalingPlanName",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        ScalingPlanVersion = schema.new({
            id = id.from(_N, "ScalingPlan", "ScalingPlanVersion"),
            type = "long",
            name = "ScalingPlanVersion",
            target_id = prelude.Long.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        ApplicationSource = schema.new({
            id = id.from(_N, "ScalingPlan", "ApplicationSource"),
            type = "structure",
            name = "ApplicationSource",
            target_id = id.from(_N, "ApplicationSource"),
            target = M.ApplicationSource,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        ScalingInstructions = schema.new({
            id = id.from(_N, "ScalingPlan", "ScalingInstructions"),
            type = "list",
            name = "ScalingInstructions",
            target_id = prelude.Document.id,
            list_member = M.ScalingInstruction,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        StatusCode = schema.new({
            id = id.from(_N, "ScalingPlan", "StatusCode"),
            type = "string",
            name = "StatusCode",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        StatusMessage = schema.new({
            id = id.from(_N, "ScalingPlan", "StatusMessage"),
            type = "string",
            name = "StatusMessage",
            target_id = prelude.String.id,
        }),
        StatusStartTime = schema.new({
            id = id.from(_N, "ScalingPlan", "StatusStartTime"),
            type = "timestamp",
            name = "StatusStartTime",
            target_id = prelude.Timestamp.id,
        }),
        CreationTime = schema.new({
            id = id.from(_N, "ScalingPlan", "CreationTime"),
            type = "timestamp",
            name = "CreationTime",
            target_id = prelude.Timestamp.id,
        }),
    },
})

M.DescribeScalingPlansOutput = schema.new({
    id = id.from(_N, "DescribeScalingPlansResponse"),
    type = "structure",
    members = {
        ScalingPlans = schema.new({
            id = id.from(_N, "DescribeScalingPlansOutput", "ScalingPlans"),
            type = "list",
            name = "ScalingPlans",
            target_id = prelude.Document.id,
            list_member = M.ScalingPlan,
        }),
        NextToken = schema.new({
            id = id.from(_N, "DescribeScalingPlansOutput", "NextToken"),
            type = "string",
            name = "NextToken",
            target_id = prelude.String.id,
        }),
    },
})

M.GetScalingPlanResourceForecastDataInput = schema.new({
    id = id.from(_N, "GetScalingPlanResourceForecastDataRequest"),
    type = "structure",
    members = {
        ScalingPlanName = schema.new({
            id = id.from(_N, "GetScalingPlanResourceForecastDataInput", "ScalingPlanName"),
            type = "string",
            name = "ScalingPlanName",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        ScalingPlanVersion = schema.new({
            id = id.from(_N, "GetScalingPlanResourceForecastDataInput", "ScalingPlanVersion"),
            type = "long",
            name = "ScalingPlanVersion",
            target_id = prelude.Long.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        ServiceNamespace = schema.new({
            id = id.from(_N, "GetScalingPlanResourceForecastDataInput", "ServiceNamespace"),
            type = "string",
            name = "ServiceNamespace",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        ResourceId = schema.new({
            id = id.from(_N, "GetScalingPlanResourceForecastDataInput", "ResourceId"),
            type = "string",
            name = "ResourceId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        ScalableDimension = schema.new({
            id = id.from(_N, "GetScalingPlanResourceForecastDataInput", "ScalableDimension"),
            type = "string",
            name = "ScalableDimension",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        ForecastDataType = schema.new({
            id = id.from(_N, "GetScalingPlanResourceForecastDataInput", "ForecastDataType"),
            type = "string",
            name = "ForecastDataType",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        StartTime = schema.new({
            id = id.from(_N, "GetScalingPlanResourceForecastDataInput", "StartTime"),
            type = "timestamp",
            name = "StartTime",
            target_id = prelude.Timestamp.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        EndTime = schema.new({
            id = id.from(_N, "GetScalingPlanResourceForecastDataInput", "EndTime"),
            type = "timestamp",
            name = "EndTime",
            target_id = prelude.Timestamp.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.Datapoint = schema.new({
    id = id.from(_N, "Datapoint"),
    type = "structure",
    members = {
        Timestamp = schema.new({
            id = id.from(_N, "Datapoint", "Timestamp"),
            type = "timestamp",
            name = "Timestamp",
            target_id = prelude.Timestamp.id,
        }),
        Value = schema.new({
            id = id.from(_N, "Datapoint", "Value"),
            type = "double",
            name = "Value",
            target_id = prelude.Double.id,
        }),
    },
})

M.GetScalingPlanResourceForecastDataOutput = schema.new({
    id = id.from(_N, "GetScalingPlanResourceForecastDataResponse"),
    type = "structure",
    members = {
        Datapoints = schema.new({
            id = id.from(_N, "GetScalingPlanResourceForecastDataOutput", "Datapoints"),
            type = "list",
            name = "Datapoints",
            target_id = prelude.Document.id,
            list_member = M.Datapoint,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.UpdateScalingPlanInput = schema.new({
    id = id.from(_N, "UpdateScalingPlanRequest"),
    type = "structure",
    members = {
        ScalingPlanName = schema.new({
            id = id.from(_N, "UpdateScalingPlanInput", "ScalingPlanName"),
            type = "string",
            name = "ScalingPlanName",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        ScalingPlanVersion = schema.new({
            id = id.from(_N, "UpdateScalingPlanInput", "ScalingPlanVersion"),
            type = "long",
            name = "ScalingPlanVersion",
            target_id = prelude.Long.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        ApplicationSource = schema.new({
            id = id.from(_N, "UpdateScalingPlanInput", "ApplicationSource"),
            type = "structure",
            name = "ApplicationSource",
            target_id = id.from(_N, "ApplicationSource"),
            target = M.ApplicationSource,
        }),
        ScalingInstructions = schema.new({
            id = id.from(_N, "UpdateScalingPlanInput", "ScalingInstructions"),
            type = "list",
            name = "ScalingInstructions",
            target_id = prelude.Document.id,
            list_member = M.ScalingInstruction,
        }),
    },
})

M.UpdateScalingPlanOutput = schema.new({
    id = id.from(_N, "UpdateScalingPlanResponse"),
    type = "structure",
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
