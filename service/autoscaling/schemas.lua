local id = require("smithy.shape_id")
local schema = require("smithy.schema")
local prelude = require("smithy.prelude")
local traits = require("smithy.traits")

local _N = "com.amazonaws.autoscaling"

local M = {}

M.AcceleratorCountRequest = schema.new({
    id = id.from(_N, "AcceleratorCountRequest"),
    type = "structure",
    members = {
        Min = schema.new({
            id = id.from(_N, "AcceleratorCountRequest", "Min"),
            type = "integer",
            name = "Min",
            target_id = prelude.Integer.id,
        }),
        Max = schema.new({
            id = id.from(_N, "AcceleratorCountRequest", "Max"),
            type = "integer",
            name = "Max",
            target_id = prelude.Integer.id,
        }),
    },
})

M.AcceleratorTotalMemoryMiBRequest = schema.new({
    id = id.from(_N, "AcceleratorTotalMemoryMiBRequest"),
    type = "structure",
    members = {
        Min = schema.new({
            id = id.from(_N, "AcceleratorTotalMemoryMiBRequest", "Min"),
            type = "integer",
            name = "Min",
            target_id = prelude.Integer.id,
        }),
        Max = schema.new({
            id = id.from(_N, "AcceleratorTotalMemoryMiBRequest", "Max"),
            type = "integer",
            name = "Max",
            target_id = prelude.Integer.id,
        }),
    },
})

M.ActiveInstanceRefreshNotFoundFault = schema.new({
    id = id.from(_N, "ActiveInstanceRefreshNotFoundFault"),
    type = "structure",
    traits = {
        [traits.ERROR] = { value = "client" },
    },
    members = {
        message = schema.new({
            id = id.from(_N, "ActiveInstanceRefreshNotFoundFault", "message"),
            type = "string",
            name = "message",
            target_id = prelude.String.id,
        }),
    },
})

M.Activity = schema.new({
    id = id.from(_N, "Activity"),
    type = "structure",
    members = {
        ActivityId = schema.new({
            id = id.from(_N, "Activity", "ActivityId"),
            type = "string",
            name = "ActivityId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        AutoScalingGroupName = schema.new({
            id = id.from(_N, "Activity", "AutoScalingGroupName"),
            type = "string",
            name = "AutoScalingGroupName",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        Description = schema.new({
            id = id.from(_N, "Activity", "Description"),
            type = "string",
            name = "Description",
            target_id = prelude.String.id,
        }),
        Cause = schema.new({
            id = id.from(_N, "Activity", "Cause"),
            type = "string",
            name = "Cause",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        StartTime = schema.new({
            id = id.from(_N, "Activity", "StartTime"),
            type = "timestamp",
            name = "StartTime",
            target_id = prelude.Timestamp.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        EndTime = schema.new({
            id = id.from(_N, "Activity", "EndTime"),
            type = "timestamp",
            name = "EndTime",
            target_id = prelude.Timestamp.id,
        }),
        StatusCode = schema.new({
            id = id.from(_N, "Activity", "StatusCode"),
            type = "string",
            name = "StatusCode",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        StatusMessage = schema.new({
            id = id.from(_N, "Activity", "StatusMessage"),
            type = "string",
            name = "StatusMessage",
            target_id = prelude.String.id,
        }),
        Progress = schema.new({
            id = id.from(_N, "Activity", "Progress"),
            type = "integer",
            name = "Progress",
            target_id = prelude.Integer.id,
        }),
        Details = schema.new({
            id = id.from(_N, "Activity", "Details"),
            type = "string",
            name = "Details",
            target_id = prelude.String.id,
        }),
        AutoScalingGroupState = schema.new({
            id = id.from(_N, "Activity", "AutoScalingGroupState"),
            type = "string",
            name = "AutoScalingGroupState",
            target_id = prelude.String.id,
        }),
        AutoScalingGroupARN = schema.new({
            id = id.from(_N, "Activity", "AutoScalingGroupARN"),
            type = "string",
            name = "AutoScalingGroupARN",
            target_id = prelude.String.id,
        }),
    },
})

M.AdjustmentType = schema.new({
    id = id.from(_N, "AdjustmentType"),
    type = "structure",
    members = {
        AdjustmentType = schema.new({
            id = id.from(_N, "AdjustmentType", "AdjustmentType"),
            type = "string",
            name = "AdjustmentType",
            target_id = prelude.String.id,
        }),
    },
})

M.Alarm = schema.new({
    id = id.from(_N, "Alarm"),
    type = "structure",
    members = {
        AlarmName = schema.new({
            id = id.from(_N, "Alarm", "AlarmName"),
            type = "string",
            name = "AlarmName",
            target_id = prelude.String.id,
        }),
        AlarmARN = schema.new({
            id = id.from(_N, "Alarm", "AlarmARN"),
            type = "string",
            name = "AlarmARN",
            target_id = prelude.String.id,
        }),
    },
})

M.AlarmSpecification = schema.new({
    id = id.from(_N, "AlarmSpecification"),
    type = "structure",
    members = {
        Alarms = schema.new({
            id = id.from(_N, "AlarmSpecification", "Alarms"),
            type = "list",
            name = "Alarms",
            target_id = prelude.Document.id,
            list_member = prelude.String,
        }),
    },
})

M.AlreadyExistsFault = schema.new({
    id = id.from(_N, "AlreadyExistsFault"),
    type = "structure",
    traits = {
        [traits.ERROR] = { value = "client" },
    },
    members = {
        message = schema.new({
            id = id.from(_N, "AlreadyExistsFault", "message"),
            type = "string",
            name = "message",
            target_id = prelude.String.id,
        }),
    },
})

M.AttachInstancesInput = schema.new({
    id = id.from(_N, "AttachInstancesQuery"),
    type = "structure",
    members = {
        InstanceIds = schema.new({
            id = id.from(_N, "AttachInstancesInput", "InstanceIds"),
            type = "list",
            name = "InstanceIds",
            target_id = prelude.Document.id,
            list_member = prelude.String,
        }),
        AutoScalingGroupName = schema.new({
            id = id.from(_N, "AttachInstancesInput", "AutoScalingGroupName"),
            type = "string",
            name = "AutoScalingGroupName",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.AttachInstancesOutput = schema.new({
    id = id.from(_N, "Unit"),
    type = "structure",
})

M.ResourceContentionFault = schema.new({
    id = id.from(_N, "ResourceContentionFault"),
    type = "structure",
    traits = {
        [traits.ERROR] = { value = "server" },
    },
    members = {
        message = schema.new({
            id = id.from(_N, "ResourceContentionFault", "message"),
            type = "string",
            name = "message",
            target_id = prelude.String.id,
        }),
    },
})

M.ServiceLinkedRoleFailure = schema.new({
    id = id.from(_N, "ServiceLinkedRoleFailure"),
    type = "structure",
    traits = {
        [traits.ERROR] = { value = "server" },
    },
    members = {
        message = schema.new({
            id = id.from(_N, "ServiceLinkedRoleFailure", "message"),
            type = "string",
            name = "message",
            target_id = prelude.String.id,
        }),
    },
})

M.AttachLoadBalancersInput = schema.new({
    id = id.from(_N, "AttachLoadBalancersType"),
    type = "structure",
    members = {
        AutoScalingGroupName = schema.new({
            id = id.from(_N, "AttachLoadBalancersInput", "AutoScalingGroupName"),
            type = "string",
            name = "AutoScalingGroupName",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        LoadBalancerNames = schema.new({
            id = id.from(_N, "AttachLoadBalancersInput", "LoadBalancerNames"),
            type = "list",
            name = "LoadBalancerNames",
            target_id = prelude.Document.id,
            list_member = prelude.String,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.AttachLoadBalancersOutput = schema.new({
    id = id.from(_N, "AttachLoadBalancersResultType"),
    type = "structure",
})

M.InstanceRefreshInProgressFault = schema.new({
    id = id.from(_N, "InstanceRefreshInProgressFault"),
    type = "structure",
    traits = {
        [traits.ERROR] = { value = "client" },
    },
    members = {
        message = schema.new({
            id = id.from(_N, "InstanceRefreshInProgressFault", "message"),
            type = "string",
            name = "message",
            target_id = prelude.String.id,
        }),
    },
})

M.AttachLoadBalancerTargetGroupsInput = schema.new({
    id = id.from(_N, "AttachLoadBalancerTargetGroupsType"),
    type = "structure",
    members = {
        AutoScalingGroupName = schema.new({
            id = id.from(_N, "AttachLoadBalancerTargetGroupsInput", "AutoScalingGroupName"),
            type = "string",
            name = "AutoScalingGroupName",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        TargetGroupARNs = schema.new({
            id = id.from(_N, "AttachLoadBalancerTargetGroupsInput", "TargetGroupARNs"),
            type = "list",
            name = "TargetGroupARNs",
            target_id = prelude.Document.id,
            list_member = prelude.String,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.AttachLoadBalancerTargetGroupsOutput = schema.new({
    id = id.from(_N, "AttachLoadBalancerTargetGroupsResultType"),
    type = "structure",
})

M.TrafficSourceIdentifier = schema.new({
    id = id.from(_N, "TrafficSourceIdentifier"),
    type = "structure",
    members = {
        Identifier = schema.new({
            id = id.from(_N, "TrafficSourceIdentifier", "Identifier"),
            type = "string",
            name = "Identifier",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        Type = schema.new({
            id = id.from(_N, "TrafficSourceIdentifier", "Type"),
            type = "string",
            name = "Type",
            target_id = prelude.String.id,
        }),
    },
})

M.AttachTrafficSourcesInput = schema.new({
    id = id.from(_N, "AttachTrafficSourcesType"),
    type = "structure",
    members = {
        AutoScalingGroupName = schema.new({
            id = id.from(_N, "AttachTrafficSourcesInput", "AutoScalingGroupName"),
            type = "string",
            name = "AutoScalingGroupName",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        TrafficSources = schema.new({
            id = id.from(_N, "AttachTrafficSourcesInput", "TrafficSources"),
            type = "list",
            name = "TrafficSources",
            target_id = prelude.Document.id,
            list_member = M.TrafficSourceIdentifier,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        SkipZonalShiftValidation = schema.new({
            id = id.from(_N, "AttachTrafficSourcesInput", "SkipZonalShiftValidation"),
            type = "boolean",
            name = "SkipZonalShiftValidation",
            target_id = prelude.Boolean.id,
        }),
    },
})

M.AttachTrafficSourcesOutput = schema.new({
    id = id.from(_N, "AttachTrafficSourcesResultType"),
    type = "structure",
})

M.BatchDeleteScheduledActionInput = schema.new({
    id = id.from(_N, "BatchDeleteScheduledActionType"),
    type = "structure",
    members = {
        AutoScalingGroupName = schema.new({
            id = id.from(_N, "BatchDeleteScheduledActionInput", "AutoScalingGroupName"),
            type = "string",
            name = "AutoScalingGroupName",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        ScheduledActionNames = schema.new({
            id = id.from(_N, "BatchDeleteScheduledActionInput", "ScheduledActionNames"),
            type = "list",
            name = "ScheduledActionNames",
            target_id = prelude.Document.id,
            list_member = prelude.String,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.FailedScheduledUpdateGroupActionRequest = schema.new({
    id = id.from(_N, "FailedScheduledUpdateGroupActionRequest"),
    type = "structure",
    members = {
        ScheduledActionName = schema.new({
            id = id.from(_N, "FailedScheduledUpdateGroupActionRequest", "ScheduledActionName"),
            type = "string",
            name = "ScheduledActionName",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        ErrorCode = schema.new({
            id = id.from(_N, "FailedScheduledUpdateGroupActionRequest", "ErrorCode"),
            type = "string",
            name = "ErrorCode",
            target_id = prelude.String.id,
        }),
        ErrorMessage = schema.new({
            id = id.from(_N, "FailedScheduledUpdateGroupActionRequest", "ErrorMessage"),
            type = "string",
            name = "ErrorMessage",
            target_id = prelude.String.id,
        }),
    },
})

M.BatchDeleteScheduledActionOutput = schema.new({
    id = id.from(_N, "BatchDeleteScheduledActionAnswer"),
    type = "structure",
    members = {
        FailedScheduledActions = schema.new({
            id = id.from(_N, "BatchDeleteScheduledActionOutput", "FailedScheduledActions"),
            type = "list",
            name = "FailedScheduledActions",
            target_id = prelude.Document.id,
            list_member = M.FailedScheduledUpdateGroupActionRequest,
        }),
    },
})

M.ScheduledUpdateGroupActionRequest = schema.new({
    id = id.from(_N, "ScheduledUpdateGroupActionRequest"),
    type = "structure",
    members = {
        ScheduledActionName = schema.new({
            id = id.from(_N, "ScheduledUpdateGroupActionRequest", "ScheduledActionName"),
            type = "string",
            name = "ScheduledActionName",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        StartTime = schema.new({
            id = id.from(_N, "ScheduledUpdateGroupActionRequest", "StartTime"),
            type = "timestamp",
            name = "StartTime",
            target_id = prelude.Timestamp.id,
        }),
        EndTime = schema.new({
            id = id.from(_N, "ScheduledUpdateGroupActionRequest", "EndTime"),
            type = "timestamp",
            name = "EndTime",
            target_id = prelude.Timestamp.id,
        }),
        Recurrence = schema.new({
            id = id.from(_N, "ScheduledUpdateGroupActionRequest", "Recurrence"),
            type = "string",
            name = "Recurrence",
            target_id = prelude.String.id,
        }),
        MinSize = schema.new({
            id = id.from(_N, "ScheduledUpdateGroupActionRequest", "MinSize"),
            type = "integer",
            name = "MinSize",
            target_id = prelude.Integer.id,
        }),
        MaxSize = schema.new({
            id = id.from(_N, "ScheduledUpdateGroupActionRequest", "MaxSize"),
            type = "integer",
            name = "MaxSize",
            target_id = prelude.Integer.id,
        }),
        DesiredCapacity = schema.new({
            id = id.from(_N, "ScheduledUpdateGroupActionRequest", "DesiredCapacity"),
            type = "integer",
            name = "DesiredCapacity",
            target_id = prelude.Integer.id,
        }),
        TimeZone = schema.new({
            id = id.from(_N, "ScheduledUpdateGroupActionRequest", "TimeZone"),
            type = "string",
            name = "TimeZone",
            target_id = prelude.String.id,
        }),
    },
})

M.BatchPutScheduledUpdateGroupActionInput = schema.new({
    id = id.from(_N, "BatchPutScheduledUpdateGroupActionType"),
    type = "structure",
    members = {
        AutoScalingGroupName = schema.new({
            id = id.from(_N, "BatchPutScheduledUpdateGroupActionInput", "AutoScalingGroupName"),
            type = "string",
            name = "AutoScalingGroupName",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        ScheduledUpdateGroupActions = schema.new({
            id = id.from(_N, "BatchPutScheduledUpdateGroupActionInput", "ScheduledUpdateGroupActions"),
            type = "list",
            name = "ScheduledUpdateGroupActions",
            target_id = prelude.Document.id,
            list_member = M.ScheduledUpdateGroupActionRequest,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.BatchPutScheduledUpdateGroupActionOutput = schema.new({
    id = id.from(_N, "BatchPutScheduledUpdateGroupActionAnswer"),
    type = "structure",
    members = {
        FailedScheduledUpdateGroupActions = schema.new({
            id = id.from(_N, "BatchPutScheduledUpdateGroupActionOutput", "FailedScheduledUpdateGroupActions"),
            type = "list",
            name = "FailedScheduledUpdateGroupActions",
            target_id = prelude.Document.id,
            list_member = M.FailedScheduledUpdateGroupActionRequest,
        }),
    },
})

M.LimitExceededFault = schema.new({
    id = id.from(_N, "LimitExceededFault"),
    type = "structure",
    traits = {
        [traits.ERROR] = { value = "client" },
    },
    members = {
        message = schema.new({
            id = id.from(_N, "LimitExceededFault", "message"),
            type = "string",
            name = "message",
            target_id = prelude.String.id,
        }),
    },
})

M.CancelInstanceRefreshInput = schema.new({
    id = id.from(_N, "CancelInstanceRefreshType"),
    type = "structure",
    members = {
        AutoScalingGroupName = schema.new({
            id = id.from(_N, "CancelInstanceRefreshInput", "AutoScalingGroupName"),
            type = "string",
            name = "AutoScalingGroupName",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        WaitForTransitioningInstances = schema.new({
            id = id.from(_N, "CancelInstanceRefreshInput", "WaitForTransitioningInstances"),
            type = "boolean",
            name = "WaitForTransitioningInstances",
            target_id = prelude.Boolean.id,
        }),
    },
})

M.CancelInstanceRefreshOutput = schema.new({
    id = id.from(_N, "CancelInstanceRefreshAnswer"),
    type = "structure",
    members = {
        InstanceRefreshId = schema.new({
            id = id.from(_N, "CancelInstanceRefreshOutput", "InstanceRefreshId"),
            type = "string",
            name = "InstanceRefreshId",
            target_id = prelude.String.id,
        }),
    },
})

M.CompleteLifecycleActionInput = schema.new({
    id = id.from(_N, "CompleteLifecycleActionType"),
    type = "structure",
    members = {
        LifecycleHookName = schema.new({
            id = id.from(_N, "CompleteLifecycleActionInput", "LifecycleHookName"),
            type = "string",
            name = "LifecycleHookName",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        AutoScalingGroupName = schema.new({
            id = id.from(_N, "CompleteLifecycleActionInput", "AutoScalingGroupName"),
            type = "string",
            name = "AutoScalingGroupName",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        LifecycleActionToken = schema.new({
            id = id.from(_N, "CompleteLifecycleActionInput", "LifecycleActionToken"),
            type = "string",
            name = "LifecycleActionToken",
            target_id = prelude.String.id,
        }),
        LifecycleActionResult = schema.new({
            id = id.from(_N, "CompleteLifecycleActionInput", "LifecycleActionResult"),
            type = "string",
            name = "LifecycleActionResult",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        InstanceId = schema.new({
            id = id.from(_N, "CompleteLifecycleActionInput", "InstanceId"),
            type = "string",
            name = "InstanceId",
            target_id = prelude.String.id,
        }),
    },
})

M.CompleteLifecycleActionOutput = schema.new({
    id = id.from(_N, "CompleteLifecycleActionAnswer"),
    type = "structure",
})

M.AvailabilityZoneDistribution = schema.new({
    id = id.from(_N, "AvailabilityZoneDistribution"),
    type = "structure",
    members = {
        CapacityDistributionStrategy = schema.new({
            id = id.from(_N, "AvailabilityZoneDistribution", "CapacityDistributionStrategy"),
            type = "string",
            name = "CapacityDistributionStrategy",
            target_id = prelude.String.id,
        }),
    },
})

M.AvailabilityZoneImpairmentPolicy = schema.new({
    id = id.from(_N, "AvailabilityZoneImpairmentPolicy"),
    type = "structure",
    members = {
        ZonalShiftEnabled = schema.new({
            id = id.from(_N, "AvailabilityZoneImpairmentPolicy", "ZonalShiftEnabled"),
            type = "boolean",
            name = "ZonalShiftEnabled",
            target_id = prelude.Boolean.id,
        }),
        ImpairedZoneHealthCheckBehavior = schema.new({
            id = id.from(_N, "AvailabilityZoneImpairmentPolicy", "ImpairedZoneHealthCheckBehavior"),
            type = "string",
            name = "ImpairedZoneHealthCheckBehavior",
            target_id = prelude.String.id,
        }),
    },
})

M.CapacityReservationTarget = schema.new({
    id = id.from(_N, "CapacityReservationTarget"),
    type = "structure",
    members = {
        CapacityReservationIds = schema.new({
            id = id.from(_N, "CapacityReservationTarget", "CapacityReservationIds"),
            type = "list",
            name = "CapacityReservationIds",
            target_id = prelude.Document.id,
            list_member = prelude.String,
        }),
        CapacityReservationResourceGroupArns = schema.new({
            id = id.from(_N, "CapacityReservationTarget", "CapacityReservationResourceGroupArns"),
            type = "list",
            name = "CapacityReservationResourceGroupArns",
            target_id = prelude.Document.id,
            list_member = prelude.String,
        }),
    },
})

M.CapacityReservationSpecification = schema.new({
    id = id.from(_N, "CapacityReservationSpecification"),
    type = "structure",
    members = {
        CapacityReservationPreference = schema.new({
            id = id.from(_N, "CapacityReservationSpecification", "CapacityReservationPreference"),
            type = "string",
            name = "CapacityReservationPreference",
            target_id = prelude.String.id,
        }),
        CapacityReservationTarget = schema.new({
            id = id.from(_N, "CapacityReservationSpecification", "CapacityReservationTarget"),
            type = "structure",
            name = "CapacityReservationTarget",
            target_id = id.from(_N, "CapacityReservationTarget"),
            target = M.CapacityReservationTarget,
        }),
    },
})

M.RetentionTriggers = schema.new({
    id = id.from(_N, "RetentionTriggers"),
    type = "structure",
    members = {
        TerminateHookAbandon = schema.new({
            id = id.from(_N, "RetentionTriggers", "TerminateHookAbandon"),
            type = "string",
            name = "TerminateHookAbandon",
            target_id = prelude.String.id,
        }),
    },
})

M.InstanceLifecyclePolicy = schema.new({
    id = id.from(_N, "InstanceLifecyclePolicy"),
    type = "structure",
    members = {
        RetentionTriggers = schema.new({
            id = id.from(_N, "InstanceLifecyclePolicy", "RetentionTriggers"),
            type = "structure",
            name = "RetentionTriggers",
            target_id = id.from(_N, "RetentionTriggers"),
            target = M.RetentionTriggers,
        }),
    },
})

M.InstanceMaintenancePolicy = schema.new({
    id = id.from(_N, "InstanceMaintenancePolicy"),
    type = "structure",
    members = {
        MinHealthyPercentage = schema.new({
            id = id.from(_N, "InstanceMaintenancePolicy", "MinHealthyPercentage"),
            type = "integer",
            name = "MinHealthyPercentage",
            target_id = prelude.Integer.id,
        }),
        MaxHealthyPercentage = schema.new({
            id = id.from(_N, "InstanceMaintenancePolicy", "MaxHealthyPercentage"),
            type = "integer",
            name = "MaxHealthyPercentage",
            target_id = prelude.Integer.id,
        }),
    },
})

M.LaunchTemplateSpecification = schema.new({
    id = id.from(_N, "LaunchTemplateSpecification"),
    type = "structure",
    members = {
        LaunchTemplateId = schema.new({
            id = id.from(_N, "LaunchTemplateSpecification", "LaunchTemplateId"),
            type = "string",
            name = "LaunchTemplateId",
            target_id = prelude.String.id,
        }),
        LaunchTemplateName = schema.new({
            id = id.from(_N, "LaunchTemplateSpecification", "LaunchTemplateName"),
            type = "string",
            name = "LaunchTemplateName",
            target_id = prelude.String.id,
        }),
        Version = schema.new({
            id = id.from(_N, "LaunchTemplateSpecification", "Version"),
            type = "string",
            name = "Version",
            target_id = prelude.String.id,
        }),
    },
})

M.LifecycleHookSpecification = schema.new({
    id = id.from(_N, "LifecycleHookSpecification"),
    type = "structure",
    members = {
        LifecycleHookName = schema.new({
            id = id.from(_N, "LifecycleHookSpecification", "LifecycleHookName"),
            type = "string",
            name = "LifecycleHookName",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        LifecycleTransition = schema.new({
            id = id.from(_N, "LifecycleHookSpecification", "LifecycleTransition"),
            type = "string",
            name = "LifecycleTransition",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        NotificationMetadata = schema.new({
            id = id.from(_N, "LifecycleHookSpecification", "NotificationMetadata"),
            type = "string",
            name = "NotificationMetadata",
            target_id = prelude.String.id,
        }),
        HeartbeatTimeout = schema.new({
            id = id.from(_N, "LifecycleHookSpecification", "HeartbeatTimeout"),
            type = "integer",
            name = "HeartbeatTimeout",
            target_id = prelude.Integer.id,
        }),
        DefaultResult = schema.new({
            id = id.from(_N, "LifecycleHookSpecification", "DefaultResult"),
            type = "string",
            name = "DefaultResult",
            target_id = prelude.String.id,
        }),
        NotificationTargetARN = schema.new({
            id = id.from(_N, "LifecycleHookSpecification", "NotificationTargetARN"),
            type = "string",
            name = "NotificationTargetARN",
            target_id = prelude.String.id,
        }),
        RoleARN = schema.new({
            id = id.from(_N, "LifecycleHookSpecification", "RoleARN"),
            type = "string",
            name = "RoleARN",
            target_id = prelude.String.id,
        }),
    },
})

M.InstancesDistribution = schema.new({
    id = id.from(_N, "InstancesDistribution"),
    type = "structure",
    members = {
        OnDemandAllocationStrategy = schema.new({
            id = id.from(_N, "InstancesDistribution", "OnDemandAllocationStrategy"),
            type = "string",
            name = "OnDemandAllocationStrategy",
            target_id = prelude.String.id,
        }),
        OnDemandBaseCapacity = schema.new({
            id = id.from(_N, "InstancesDistribution", "OnDemandBaseCapacity"),
            type = "integer",
            name = "OnDemandBaseCapacity",
            target_id = prelude.Integer.id,
        }),
        OnDemandPercentageAboveBaseCapacity = schema.new({
            id = id.from(_N, "InstancesDistribution", "OnDemandPercentageAboveBaseCapacity"),
            type = "integer",
            name = "OnDemandPercentageAboveBaseCapacity",
            target_id = prelude.Integer.id,
        }),
        SpotAllocationStrategy = schema.new({
            id = id.from(_N, "InstancesDistribution", "SpotAllocationStrategy"),
            type = "string",
            name = "SpotAllocationStrategy",
            target_id = prelude.String.id,
        }),
        SpotInstancePools = schema.new({
            id = id.from(_N, "InstancesDistribution", "SpotInstancePools"),
            type = "integer",
            name = "SpotInstancePools",
            target_id = prelude.Integer.id,
        }),
        SpotMaxPrice = schema.new({
            id = id.from(_N, "InstancesDistribution", "SpotMaxPrice"),
            type = "string",
            name = "SpotMaxPrice",
            target_id = prelude.String.id,
        }),
    },
})

M.BaselineEbsBandwidthMbpsRequest = schema.new({
    id = id.from(_N, "BaselineEbsBandwidthMbpsRequest"),
    type = "structure",
    members = {
        Min = schema.new({
            id = id.from(_N, "BaselineEbsBandwidthMbpsRequest", "Min"),
            type = "integer",
            name = "Min",
            target_id = prelude.Integer.id,
        }),
        Max = schema.new({
            id = id.from(_N, "BaselineEbsBandwidthMbpsRequest", "Max"),
            type = "integer",
            name = "Max",
            target_id = prelude.Integer.id,
        }),
    },
})

M.PerformanceFactorReferenceRequest = schema.new({
    id = id.from(_N, "PerformanceFactorReferenceRequest"),
    type = "structure",
    members = {
        InstanceFamily = schema.new({
            id = id.from(_N, "PerformanceFactorReferenceRequest", "InstanceFamily"),
            type = "string",
            name = "InstanceFamily",
            target_id = prelude.String.id,
        }),
    },
})

M.CpuPerformanceFactorRequest = schema.new({
    id = id.from(_N, "CpuPerformanceFactorRequest"),
    type = "structure",
    members = {
        References = schema.new({
            id = id.from(_N, "CpuPerformanceFactorRequest", "References"),
            type = "list",
            name = "References",
            target_id = prelude.Document.id,
            list_member = schema.new({ type = "structure", target = M.PerformanceFactorReferenceRequest, traits = { [traits.XML_NAME] = { name = "item" } } }),
            traits = {
                [traits.XML_NAME] = { name = "Reference" },
            },
        }),
    },
})

M.BaselinePerformanceFactorsRequest = schema.new({
    id = id.from(_N, "BaselinePerformanceFactorsRequest"),
    type = "structure",
    members = {
        Cpu = schema.new({
            id = id.from(_N, "BaselinePerformanceFactorsRequest", "Cpu"),
            type = "structure",
            name = "Cpu",
            target_id = id.from(_N, "CpuPerformanceFactorRequest"),
            target = M.CpuPerformanceFactorRequest,
        }),
    },
})

M.MemoryGiBPerVCpuRequest = schema.new({
    id = id.from(_N, "MemoryGiBPerVCpuRequest"),
    type = "structure",
    members = {
        Min = schema.new({
            id = id.from(_N, "MemoryGiBPerVCpuRequest", "Min"),
            type = "double",
            name = "Min",
            target_id = prelude.Double.id,
        }),
        Max = schema.new({
            id = id.from(_N, "MemoryGiBPerVCpuRequest", "Max"),
            type = "double",
            name = "Max",
            target_id = prelude.Double.id,
        }),
    },
})

M.MemoryMiBRequest = schema.new({
    id = id.from(_N, "MemoryMiBRequest"),
    type = "structure",
    members = {
        Min = schema.new({
            id = id.from(_N, "MemoryMiBRequest", "Min"),
            type = "integer",
            name = "Min",
            target_id = prelude.Integer.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        Max = schema.new({
            id = id.from(_N, "MemoryMiBRequest", "Max"),
            type = "integer",
            name = "Max",
            target_id = prelude.Integer.id,
        }),
    },
})

M.NetworkBandwidthGbpsRequest = schema.new({
    id = id.from(_N, "NetworkBandwidthGbpsRequest"),
    type = "structure",
    members = {
        Min = schema.new({
            id = id.from(_N, "NetworkBandwidthGbpsRequest", "Min"),
            type = "double",
            name = "Min",
            target_id = prelude.Double.id,
        }),
        Max = schema.new({
            id = id.from(_N, "NetworkBandwidthGbpsRequest", "Max"),
            type = "double",
            name = "Max",
            target_id = prelude.Double.id,
        }),
    },
})

M.NetworkInterfaceCountRequest = schema.new({
    id = id.from(_N, "NetworkInterfaceCountRequest"),
    type = "structure",
    members = {
        Min = schema.new({
            id = id.from(_N, "NetworkInterfaceCountRequest", "Min"),
            type = "integer",
            name = "Min",
            target_id = prelude.Integer.id,
        }),
        Max = schema.new({
            id = id.from(_N, "NetworkInterfaceCountRequest", "Max"),
            type = "integer",
            name = "Max",
            target_id = prelude.Integer.id,
        }),
    },
})

M.TotalLocalStorageGBRequest = schema.new({
    id = id.from(_N, "TotalLocalStorageGBRequest"),
    type = "structure",
    members = {
        Min = schema.new({
            id = id.from(_N, "TotalLocalStorageGBRequest", "Min"),
            type = "double",
            name = "Min",
            target_id = prelude.Double.id,
        }),
        Max = schema.new({
            id = id.from(_N, "TotalLocalStorageGBRequest", "Max"),
            type = "double",
            name = "Max",
            target_id = prelude.Double.id,
        }),
    },
})

M.VCpuCountRequest = schema.new({
    id = id.from(_N, "VCpuCountRequest"),
    type = "structure",
    members = {
        Min = schema.new({
            id = id.from(_N, "VCpuCountRequest", "Min"),
            type = "integer",
            name = "Min",
            target_id = prelude.Integer.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        Max = schema.new({
            id = id.from(_N, "VCpuCountRequest", "Max"),
            type = "integer",
            name = "Max",
            target_id = prelude.Integer.id,
        }),
    },
})

M.InstanceRequirements = schema.new({
    id = id.from(_N, "InstanceRequirements"),
    type = "structure",
    members = {
        VCpuCount = schema.new({
            id = id.from(_N, "InstanceRequirements", "VCpuCount"),
            type = "structure",
            name = "VCpuCount",
            target_id = id.from(_N, "VCpuCountRequest"),
            target = M.VCpuCountRequest,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        MemoryMiB = schema.new({
            id = id.from(_N, "InstanceRequirements", "MemoryMiB"),
            type = "structure",
            name = "MemoryMiB",
            target_id = id.from(_N, "MemoryMiBRequest"),
            target = M.MemoryMiBRequest,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        CpuManufacturers = schema.new({
            id = id.from(_N, "InstanceRequirements", "CpuManufacturers"),
            type = "list",
            name = "CpuManufacturers",
            target_id = prelude.Document.id,
            list_member = prelude.String,
        }),
        MemoryGiBPerVCpu = schema.new({
            id = id.from(_N, "InstanceRequirements", "MemoryGiBPerVCpu"),
            type = "structure",
            name = "MemoryGiBPerVCpu",
            target_id = id.from(_N, "MemoryGiBPerVCpuRequest"),
            target = M.MemoryGiBPerVCpuRequest,
        }),
        ExcludedInstanceTypes = schema.new({
            id = id.from(_N, "InstanceRequirements", "ExcludedInstanceTypes"),
            type = "list",
            name = "ExcludedInstanceTypes",
            target_id = prelude.Document.id,
            list_member = prelude.String,
        }),
        InstanceGenerations = schema.new({
            id = id.from(_N, "InstanceRequirements", "InstanceGenerations"),
            type = "list",
            name = "InstanceGenerations",
            target_id = prelude.Document.id,
            list_member = prelude.String,
        }),
        SpotMaxPricePercentageOverLowestPrice = schema.new({
            id = id.from(_N, "InstanceRequirements", "SpotMaxPricePercentageOverLowestPrice"),
            type = "integer",
            name = "SpotMaxPricePercentageOverLowestPrice",
            target_id = prelude.Integer.id,
        }),
        MaxSpotPriceAsPercentageOfOptimalOnDemandPrice = schema.new({
            id = id.from(_N, "InstanceRequirements", "MaxSpotPriceAsPercentageOfOptimalOnDemandPrice"),
            type = "integer",
            name = "MaxSpotPriceAsPercentageOfOptimalOnDemandPrice",
            target_id = prelude.Integer.id,
        }),
        OnDemandMaxPricePercentageOverLowestPrice = schema.new({
            id = id.from(_N, "InstanceRequirements", "OnDemandMaxPricePercentageOverLowestPrice"),
            type = "integer",
            name = "OnDemandMaxPricePercentageOverLowestPrice",
            target_id = prelude.Integer.id,
        }),
        BareMetal = schema.new({
            id = id.from(_N, "InstanceRequirements", "BareMetal"),
            type = "string",
            name = "BareMetal",
            target_id = prelude.String.id,
        }),
        BurstablePerformance = schema.new({
            id = id.from(_N, "InstanceRequirements", "BurstablePerformance"),
            type = "string",
            name = "BurstablePerformance",
            target_id = prelude.String.id,
        }),
        RequireHibernateSupport = schema.new({
            id = id.from(_N, "InstanceRequirements", "RequireHibernateSupport"),
            type = "boolean",
            name = "RequireHibernateSupport",
            target_id = prelude.Boolean.id,
        }),
        NetworkInterfaceCount = schema.new({
            id = id.from(_N, "InstanceRequirements", "NetworkInterfaceCount"),
            type = "structure",
            name = "NetworkInterfaceCount",
            target_id = id.from(_N, "NetworkInterfaceCountRequest"),
            target = M.NetworkInterfaceCountRequest,
        }),
        LocalStorage = schema.new({
            id = id.from(_N, "InstanceRequirements", "LocalStorage"),
            type = "string",
            name = "LocalStorage",
            target_id = prelude.String.id,
        }),
        LocalStorageTypes = schema.new({
            id = id.from(_N, "InstanceRequirements", "LocalStorageTypes"),
            type = "list",
            name = "LocalStorageTypes",
            target_id = prelude.Document.id,
            list_member = prelude.String,
        }),
        TotalLocalStorageGB = schema.new({
            id = id.from(_N, "InstanceRequirements", "TotalLocalStorageGB"),
            type = "structure",
            name = "TotalLocalStorageGB",
            target_id = id.from(_N, "TotalLocalStorageGBRequest"),
            target = M.TotalLocalStorageGBRequest,
        }),
        BaselineEbsBandwidthMbps = schema.new({
            id = id.from(_N, "InstanceRequirements", "BaselineEbsBandwidthMbps"),
            type = "structure",
            name = "BaselineEbsBandwidthMbps",
            target_id = id.from(_N, "BaselineEbsBandwidthMbpsRequest"),
            target = M.BaselineEbsBandwidthMbpsRequest,
        }),
        AcceleratorTypes = schema.new({
            id = id.from(_N, "InstanceRequirements", "AcceleratorTypes"),
            type = "list",
            name = "AcceleratorTypes",
            target_id = prelude.Document.id,
            list_member = prelude.String,
        }),
        AcceleratorCount = schema.new({
            id = id.from(_N, "InstanceRequirements", "AcceleratorCount"),
            type = "structure",
            name = "AcceleratorCount",
            target_id = id.from(_N, "AcceleratorCountRequest"),
            target = M.AcceleratorCountRequest,
        }),
        AcceleratorManufacturers = schema.new({
            id = id.from(_N, "InstanceRequirements", "AcceleratorManufacturers"),
            type = "list",
            name = "AcceleratorManufacturers",
            target_id = prelude.Document.id,
            list_member = prelude.String,
        }),
        AcceleratorNames = schema.new({
            id = id.from(_N, "InstanceRequirements", "AcceleratorNames"),
            type = "list",
            name = "AcceleratorNames",
            target_id = prelude.Document.id,
            list_member = prelude.String,
        }),
        AcceleratorTotalMemoryMiB = schema.new({
            id = id.from(_N, "InstanceRequirements", "AcceleratorTotalMemoryMiB"),
            type = "structure",
            name = "AcceleratorTotalMemoryMiB",
            target_id = id.from(_N, "AcceleratorTotalMemoryMiBRequest"),
            target = M.AcceleratorTotalMemoryMiBRequest,
        }),
        NetworkBandwidthGbps = schema.new({
            id = id.from(_N, "InstanceRequirements", "NetworkBandwidthGbps"),
            type = "structure",
            name = "NetworkBandwidthGbps",
            target_id = id.from(_N, "NetworkBandwidthGbpsRequest"),
            target = M.NetworkBandwidthGbpsRequest,
        }),
        AllowedInstanceTypes = schema.new({
            id = id.from(_N, "InstanceRequirements", "AllowedInstanceTypes"),
            type = "list",
            name = "AllowedInstanceTypes",
            target_id = prelude.Document.id,
            list_member = prelude.String,
        }),
        BaselinePerformanceFactors = schema.new({
            id = id.from(_N, "InstanceRequirements", "BaselinePerformanceFactors"),
            type = "structure",
            name = "BaselinePerformanceFactors",
            target_id = id.from(_N, "BaselinePerformanceFactorsRequest"),
            target = M.BaselinePerformanceFactorsRequest,
        }),
    },
})

M.LaunchTemplateOverrides = schema.new({
    id = id.from(_N, "LaunchTemplateOverrides"),
    type = "structure",
    members = {
        InstanceType = schema.new({
            id = id.from(_N, "LaunchTemplateOverrides", "InstanceType"),
            type = "string",
            name = "InstanceType",
            target_id = prelude.String.id,
        }),
        WeightedCapacity = schema.new({
            id = id.from(_N, "LaunchTemplateOverrides", "WeightedCapacity"),
            type = "string",
            name = "WeightedCapacity",
            target_id = prelude.String.id,
        }),
        LaunchTemplateSpecification = schema.new({
            id = id.from(_N, "LaunchTemplateOverrides", "LaunchTemplateSpecification"),
            type = "structure",
            name = "LaunchTemplateSpecification",
            target_id = id.from(_N, "LaunchTemplateSpecification"),
            target = M.LaunchTemplateSpecification,
        }),
        InstanceRequirements = schema.new({
            id = id.from(_N, "LaunchTemplateOverrides", "InstanceRequirements"),
            type = "structure",
            name = "InstanceRequirements",
            target_id = id.from(_N, "InstanceRequirements"),
            target = M.InstanceRequirements,
        }),
        ImageId = schema.new({
            id = id.from(_N, "LaunchTemplateOverrides", "ImageId"),
            type = "string",
            name = "ImageId",
            target_id = prelude.String.id,
        }),
    },
})

M.LaunchTemplate = schema.new({
    id = id.from(_N, "LaunchTemplate"),
    type = "structure",
    members = {
        LaunchTemplateSpecification = schema.new({
            id = id.from(_N, "LaunchTemplate", "LaunchTemplateSpecification"),
            type = "structure",
            name = "LaunchTemplateSpecification",
            target_id = id.from(_N, "LaunchTemplateSpecification"),
            target = M.LaunchTemplateSpecification,
        }),
        Overrides = schema.new({
            id = id.from(_N, "LaunchTemplate", "Overrides"),
            type = "list",
            name = "Overrides",
            target_id = prelude.Document.id,
            list_member = M.LaunchTemplateOverrides,
        }),
    },
})

M.MixedInstancesPolicy = schema.new({
    id = id.from(_N, "MixedInstancesPolicy"),
    type = "structure",
    members = {
        LaunchTemplate = schema.new({
            id = id.from(_N, "MixedInstancesPolicy", "LaunchTemplate"),
            type = "structure",
            name = "LaunchTemplate",
            target_id = id.from(_N, "LaunchTemplate"),
            target = M.LaunchTemplate,
        }),
        InstancesDistribution = schema.new({
            id = id.from(_N, "MixedInstancesPolicy", "InstancesDistribution"),
            type = "structure",
            name = "InstancesDistribution",
            target_id = id.from(_N, "InstancesDistribution"),
            target = M.InstancesDistribution,
        }),
    },
})

M.Tag = schema.new({
    id = id.from(_N, "Tag"),
    type = "structure",
    members = {
        ResourceId = schema.new({
            id = id.from(_N, "Tag", "ResourceId"),
            type = "string",
            name = "ResourceId",
            target_id = prelude.String.id,
        }),
        ResourceType = schema.new({
            id = id.from(_N, "Tag", "ResourceType"),
            type = "string",
            name = "ResourceType",
            target_id = prelude.String.id,
        }),
        Key = schema.new({
            id = id.from(_N, "Tag", "Key"),
            type = "string",
            name = "Key",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        Value = schema.new({
            id = id.from(_N, "Tag", "Value"),
            type = "string",
            name = "Value",
            target_id = prelude.String.id,
        }),
        PropagateAtLaunch = schema.new({
            id = id.from(_N, "Tag", "PropagateAtLaunch"),
            type = "boolean",
            name = "PropagateAtLaunch",
            target_id = prelude.Boolean.id,
        }),
    },
})

M.CreateAutoScalingGroupInput = schema.new({
    id = id.from(_N, "CreateAutoScalingGroupType"),
    type = "structure",
    members = {
        AutoScalingGroupName = schema.new({
            id = id.from(_N, "CreateAutoScalingGroupInput", "AutoScalingGroupName"),
            type = "string",
            name = "AutoScalingGroupName",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        LaunchConfigurationName = schema.new({
            id = id.from(_N, "CreateAutoScalingGroupInput", "LaunchConfigurationName"),
            type = "string",
            name = "LaunchConfigurationName",
            target_id = prelude.String.id,
        }),
        LaunchTemplate = schema.new({
            id = id.from(_N, "CreateAutoScalingGroupInput", "LaunchTemplate"),
            type = "structure",
            name = "LaunchTemplate",
            target_id = id.from(_N, "LaunchTemplateSpecification"),
            target = M.LaunchTemplateSpecification,
        }),
        MixedInstancesPolicy = schema.new({
            id = id.from(_N, "CreateAutoScalingGroupInput", "MixedInstancesPolicy"),
            type = "structure",
            name = "MixedInstancesPolicy",
            target_id = id.from(_N, "MixedInstancesPolicy"),
            target = M.MixedInstancesPolicy,
        }),
        InstanceId = schema.new({
            id = id.from(_N, "CreateAutoScalingGroupInput", "InstanceId"),
            type = "string",
            name = "InstanceId",
            target_id = prelude.String.id,
        }),
        MinSize = schema.new({
            id = id.from(_N, "CreateAutoScalingGroupInput", "MinSize"),
            type = "integer",
            name = "MinSize",
            target_id = prelude.Integer.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        MaxSize = schema.new({
            id = id.from(_N, "CreateAutoScalingGroupInput", "MaxSize"),
            type = "integer",
            name = "MaxSize",
            target_id = prelude.Integer.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        DesiredCapacity = schema.new({
            id = id.from(_N, "CreateAutoScalingGroupInput", "DesiredCapacity"),
            type = "integer",
            name = "DesiredCapacity",
            target_id = prelude.Integer.id,
        }),
        DefaultCooldown = schema.new({
            id = id.from(_N, "CreateAutoScalingGroupInput", "DefaultCooldown"),
            type = "integer",
            name = "DefaultCooldown",
            target_id = prelude.Integer.id,
        }),
        AvailabilityZones = schema.new({
            id = id.from(_N, "CreateAutoScalingGroupInput", "AvailabilityZones"),
            type = "list",
            name = "AvailabilityZones",
            target_id = prelude.Document.id,
            list_member = prelude.String,
        }),
        AvailabilityZoneIds = schema.new({
            id = id.from(_N, "CreateAutoScalingGroupInput", "AvailabilityZoneIds"),
            type = "list",
            name = "AvailabilityZoneIds",
            target_id = prelude.Document.id,
            list_member = prelude.String,
        }),
        LoadBalancerNames = schema.new({
            id = id.from(_N, "CreateAutoScalingGroupInput", "LoadBalancerNames"),
            type = "list",
            name = "LoadBalancerNames",
            target_id = prelude.Document.id,
            list_member = prelude.String,
        }),
        TargetGroupARNs = schema.new({
            id = id.from(_N, "CreateAutoScalingGroupInput", "TargetGroupARNs"),
            type = "list",
            name = "TargetGroupARNs",
            target_id = prelude.Document.id,
            list_member = prelude.String,
        }),
        HealthCheckType = schema.new({
            id = id.from(_N, "CreateAutoScalingGroupInput", "HealthCheckType"),
            type = "string",
            name = "HealthCheckType",
            target_id = prelude.String.id,
        }),
        HealthCheckGracePeriod = schema.new({
            id = id.from(_N, "CreateAutoScalingGroupInput", "HealthCheckGracePeriod"),
            type = "integer",
            name = "HealthCheckGracePeriod",
            target_id = prelude.Integer.id,
        }),
        PlacementGroup = schema.new({
            id = id.from(_N, "CreateAutoScalingGroupInput", "PlacementGroup"),
            type = "string",
            name = "PlacementGroup",
            target_id = prelude.String.id,
        }),
        VPCZoneIdentifier = schema.new({
            id = id.from(_N, "CreateAutoScalingGroupInput", "VPCZoneIdentifier"),
            type = "string",
            name = "VPCZoneIdentifier",
            target_id = prelude.String.id,
        }),
        TerminationPolicies = schema.new({
            id = id.from(_N, "CreateAutoScalingGroupInput", "TerminationPolicies"),
            type = "list",
            name = "TerminationPolicies",
            target_id = prelude.Document.id,
            list_member = prelude.String,
        }),
        NewInstancesProtectedFromScaleIn = schema.new({
            id = id.from(_N, "CreateAutoScalingGroupInput", "NewInstancesProtectedFromScaleIn"),
            type = "boolean",
            name = "NewInstancesProtectedFromScaleIn",
            target_id = prelude.Boolean.id,
        }),
        CapacityRebalance = schema.new({
            id = id.from(_N, "CreateAutoScalingGroupInput", "CapacityRebalance"),
            type = "boolean",
            name = "CapacityRebalance",
            target_id = prelude.Boolean.id,
        }),
        LifecycleHookSpecificationList = schema.new({
            id = id.from(_N, "CreateAutoScalingGroupInput", "LifecycleHookSpecificationList"),
            type = "list",
            name = "LifecycleHookSpecificationList",
            target_id = prelude.Document.id,
            list_member = M.LifecycleHookSpecification,
        }),
        DeletionProtection = schema.new({
            id = id.from(_N, "CreateAutoScalingGroupInput", "DeletionProtection"),
            type = "string",
            name = "DeletionProtection",
            target_id = prelude.String.id,
        }),
        Tags = schema.new({
            id = id.from(_N, "CreateAutoScalingGroupInput", "Tags"),
            type = "list",
            name = "Tags",
            target_id = prelude.Document.id,
            list_member = M.Tag,
        }),
        ServiceLinkedRoleARN = schema.new({
            id = id.from(_N, "CreateAutoScalingGroupInput", "ServiceLinkedRoleARN"),
            type = "string",
            name = "ServiceLinkedRoleARN",
            target_id = prelude.String.id,
        }),
        MaxInstanceLifetime = schema.new({
            id = id.from(_N, "CreateAutoScalingGroupInput", "MaxInstanceLifetime"),
            type = "integer",
            name = "MaxInstanceLifetime",
            target_id = prelude.Integer.id,
        }),
        Context = schema.new({
            id = id.from(_N, "CreateAutoScalingGroupInput", "Context"),
            type = "string",
            name = "Context",
            target_id = prelude.String.id,
        }),
        DesiredCapacityType = schema.new({
            id = id.from(_N, "CreateAutoScalingGroupInput", "DesiredCapacityType"),
            type = "string",
            name = "DesiredCapacityType",
            target_id = prelude.String.id,
        }),
        DefaultInstanceWarmup = schema.new({
            id = id.from(_N, "CreateAutoScalingGroupInput", "DefaultInstanceWarmup"),
            type = "integer",
            name = "DefaultInstanceWarmup",
            target_id = prelude.Integer.id,
        }),
        TrafficSources = schema.new({
            id = id.from(_N, "CreateAutoScalingGroupInput", "TrafficSources"),
            type = "list",
            name = "TrafficSources",
            target_id = prelude.Document.id,
            list_member = M.TrafficSourceIdentifier,
        }),
        InstanceMaintenancePolicy = schema.new({
            id = id.from(_N, "CreateAutoScalingGroupInput", "InstanceMaintenancePolicy"),
            type = "structure",
            name = "InstanceMaintenancePolicy",
            target_id = id.from(_N, "InstanceMaintenancePolicy"),
            target = M.InstanceMaintenancePolicy,
        }),
        AvailabilityZoneDistribution = schema.new({
            id = id.from(_N, "CreateAutoScalingGroupInput", "AvailabilityZoneDistribution"),
            type = "structure",
            name = "AvailabilityZoneDistribution",
            target_id = id.from(_N, "AvailabilityZoneDistribution"),
            target = M.AvailabilityZoneDistribution,
        }),
        AvailabilityZoneImpairmentPolicy = schema.new({
            id = id.from(_N, "CreateAutoScalingGroupInput", "AvailabilityZoneImpairmentPolicy"),
            type = "structure",
            name = "AvailabilityZoneImpairmentPolicy",
            target_id = id.from(_N, "AvailabilityZoneImpairmentPolicy"),
            target = M.AvailabilityZoneImpairmentPolicy,
        }),
        SkipZonalShiftValidation = schema.new({
            id = id.from(_N, "CreateAutoScalingGroupInput", "SkipZonalShiftValidation"),
            type = "boolean",
            name = "SkipZonalShiftValidation",
            target_id = prelude.Boolean.id,
        }),
        CapacityReservationSpecification = schema.new({
            id = id.from(_N, "CreateAutoScalingGroupInput", "CapacityReservationSpecification"),
            type = "structure",
            name = "CapacityReservationSpecification",
            target_id = id.from(_N, "CapacityReservationSpecification"),
            target = M.CapacityReservationSpecification,
        }),
        InstanceLifecyclePolicy = schema.new({
            id = id.from(_N, "CreateAutoScalingGroupInput", "InstanceLifecyclePolicy"),
            type = "structure",
            name = "InstanceLifecyclePolicy",
            target_id = id.from(_N, "InstanceLifecyclePolicy"),
            target = M.InstanceLifecyclePolicy,
        }),
    },
})

M.CreateAutoScalingGroupOutput = schema.new({
    id = id.from(_N, "Unit"),
    type = "structure",
})

M.Ebs = schema.new({
    id = id.from(_N, "Ebs"),
    type = "structure",
    members = {
        SnapshotId = schema.new({
            id = id.from(_N, "Ebs", "SnapshotId"),
            type = "string",
            name = "SnapshotId",
            target_id = prelude.String.id,
        }),
        VolumeSize = schema.new({
            id = id.from(_N, "Ebs", "VolumeSize"),
            type = "integer",
            name = "VolumeSize",
            target_id = prelude.Integer.id,
        }),
        VolumeType = schema.new({
            id = id.from(_N, "Ebs", "VolumeType"),
            type = "string",
            name = "VolumeType",
            target_id = prelude.String.id,
        }),
        DeleteOnTermination = schema.new({
            id = id.from(_N, "Ebs", "DeleteOnTermination"),
            type = "boolean",
            name = "DeleteOnTermination",
            target_id = prelude.Boolean.id,
        }),
        Iops = schema.new({
            id = id.from(_N, "Ebs", "Iops"),
            type = "integer",
            name = "Iops",
            target_id = prelude.Integer.id,
        }),
        Encrypted = schema.new({
            id = id.from(_N, "Ebs", "Encrypted"),
            type = "boolean",
            name = "Encrypted",
            target_id = prelude.Boolean.id,
        }),
        Throughput = schema.new({
            id = id.from(_N, "Ebs", "Throughput"),
            type = "integer",
            name = "Throughput",
            target_id = prelude.Integer.id,
        }),
    },
})

M.BlockDeviceMapping = schema.new({
    id = id.from(_N, "BlockDeviceMapping"),
    type = "structure",
    members = {
        VirtualName = schema.new({
            id = id.from(_N, "BlockDeviceMapping", "VirtualName"),
            type = "string",
            name = "VirtualName",
            target_id = prelude.String.id,
        }),
        DeviceName = schema.new({
            id = id.from(_N, "BlockDeviceMapping", "DeviceName"),
            type = "string",
            name = "DeviceName",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        Ebs = schema.new({
            id = id.from(_N, "BlockDeviceMapping", "Ebs"),
            type = "structure",
            name = "Ebs",
            target_id = id.from(_N, "Ebs"),
            target = M.Ebs,
        }),
        NoDevice = schema.new({
            id = id.from(_N, "BlockDeviceMapping", "NoDevice"),
            type = "boolean",
            name = "NoDevice",
            target_id = prelude.Boolean.id,
        }),
    },
})

M.InstanceMonitoring = schema.new({
    id = id.from(_N, "InstanceMonitoring"),
    type = "structure",
    members = {
        Enabled = schema.new({
            id = id.from(_N, "InstanceMonitoring", "Enabled"),
            type = "boolean",
            name = "Enabled",
            target_id = prelude.Boolean.id,
        }),
    },
})

M.InstanceMetadataOptions = schema.new({
    id = id.from(_N, "InstanceMetadataOptions"),
    type = "structure",
    members = {
        HttpTokens = schema.new({
            id = id.from(_N, "InstanceMetadataOptions", "HttpTokens"),
            type = "string",
            name = "HttpTokens",
            target_id = prelude.String.id,
        }),
        HttpPutResponseHopLimit = schema.new({
            id = id.from(_N, "InstanceMetadataOptions", "HttpPutResponseHopLimit"),
            type = "integer",
            name = "HttpPutResponseHopLimit",
            target_id = prelude.Integer.id,
        }),
        HttpEndpoint = schema.new({
            id = id.from(_N, "InstanceMetadataOptions", "HttpEndpoint"),
            type = "string",
            name = "HttpEndpoint",
            target_id = prelude.String.id,
        }),
    },
})

M.CreateLaunchConfigurationInput = schema.new({
    id = id.from(_N, "CreateLaunchConfigurationType"),
    type = "structure",
    members = {
        LaunchConfigurationName = schema.new({
            id = id.from(_N, "CreateLaunchConfigurationInput", "LaunchConfigurationName"),
            type = "string",
            name = "LaunchConfigurationName",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        ImageId = schema.new({
            id = id.from(_N, "CreateLaunchConfigurationInput", "ImageId"),
            type = "string",
            name = "ImageId",
            target_id = prelude.String.id,
        }),
        KeyName = schema.new({
            id = id.from(_N, "CreateLaunchConfigurationInput", "KeyName"),
            type = "string",
            name = "KeyName",
            target_id = prelude.String.id,
        }),
        SecurityGroups = schema.new({
            id = id.from(_N, "CreateLaunchConfigurationInput", "SecurityGroups"),
            type = "list",
            name = "SecurityGroups",
            target_id = prelude.Document.id,
            list_member = prelude.String,
        }),
        ClassicLinkVPCId = schema.new({
            id = id.from(_N, "CreateLaunchConfigurationInput", "ClassicLinkVPCId"),
            type = "string",
            name = "ClassicLinkVPCId",
            target_id = prelude.String.id,
        }),
        ClassicLinkVPCSecurityGroups = schema.new({
            id = id.from(_N, "CreateLaunchConfigurationInput", "ClassicLinkVPCSecurityGroups"),
            type = "list",
            name = "ClassicLinkVPCSecurityGroups",
            target_id = prelude.Document.id,
            list_member = prelude.String,
        }),
        UserData = schema.new({
            id = id.from(_N, "CreateLaunchConfigurationInput", "UserData"),
            type = "string",
            name = "UserData",
            target_id = prelude.String.id,
        }),
        InstanceId = schema.new({
            id = id.from(_N, "CreateLaunchConfigurationInput", "InstanceId"),
            type = "string",
            name = "InstanceId",
            target_id = prelude.String.id,
        }),
        InstanceType = schema.new({
            id = id.from(_N, "CreateLaunchConfigurationInput", "InstanceType"),
            type = "string",
            name = "InstanceType",
            target_id = prelude.String.id,
        }),
        KernelId = schema.new({
            id = id.from(_N, "CreateLaunchConfigurationInput", "KernelId"),
            type = "string",
            name = "KernelId",
            target_id = prelude.String.id,
        }),
        RamdiskId = schema.new({
            id = id.from(_N, "CreateLaunchConfigurationInput", "RamdiskId"),
            type = "string",
            name = "RamdiskId",
            target_id = prelude.String.id,
        }),
        BlockDeviceMappings = schema.new({
            id = id.from(_N, "CreateLaunchConfigurationInput", "BlockDeviceMappings"),
            type = "list",
            name = "BlockDeviceMappings",
            target_id = prelude.Document.id,
            list_member = M.BlockDeviceMapping,
        }),
        InstanceMonitoring = schema.new({
            id = id.from(_N, "CreateLaunchConfigurationInput", "InstanceMonitoring"),
            type = "structure",
            name = "InstanceMonitoring",
            target_id = id.from(_N, "InstanceMonitoring"),
            target = M.InstanceMonitoring,
        }),
        SpotPrice = schema.new({
            id = id.from(_N, "CreateLaunchConfigurationInput", "SpotPrice"),
            type = "string",
            name = "SpotPrice",
            target_id = prelude.String.id,
        }),
        IamInstanceProfile = schema.new({
            id = id.from(_N, "CreateLaunchConfigurationInput", "IamInstanceProfile"),
            type = "string",
            name = "IamInstanceProfile",
            target_id = prelude.String.id,
        }),
        EbsOptimized = schema.new({
            id = id.from(_N, "CreateLaunchConfigurationInput", "EbsOptimized"),
            type = "boolean",
            name = "EbsOptimized",
            target_id = prelude.Boolean.id,
        }),
        AssociatePublicIpAddress = schema.new({
            id = id.from(_N, "CreateLaunchConfigurationInput", "AssociatePublicIpAddress"),
            type = "boolean",
            name = "AssociatePublicIpAddress",
            target_id = prelude.Boolean.id,
        }),
        PlacementTenancy = schema.new({
            id = id.from(_N, "CreateLaunchConfigurationInput", "PlacementTenancy"),
            type = "string",
            name = "PlacementTenancy",
            target_id = prelude.String.id,
        }),
        MetadataOptions = schema.new({
            id = id.from(_N, "CreateLaunchConfigurationInput", "MetadataOptions"),
            type = "structure",
            name = "MetadataOptions",
            target_id = id.from(_N, "InstanceMetadataOptions"),
            target = M.InstanceMetadataOptions,
        }),
    },
})

M.CreateLaunchConfigurationOutput = schema.new({
    id = id.from(_N, "Unit"),
    type = "structure",
})

M.CreateOrUpdateTagsInput = schema.new({
    id = id.from(_N, "CreateOrUpdateTagsType"),
    type = "structure",
    members = {
        Tags = schema.new({
            id = id.from(_N, "CreateOrUpdateTagsInput", "Tags"),
            type = "list",
            name = "Tags",
            target_id = prelude.Document.id,
            list_member = M.Tag,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.CreateOrUpdateTagsOutput = schema.new({
    id = id.from(_N, "Unit"),
    type = "structure",
})

M.ResourceInUseFault = schema.new({
    id = id.from(_N, "ResourceInUseFault"),
    type = "structure",
    traits = {
        [traits.ERROR] = { value = "client" },
    },
    members = {
        message = schema.new({
            id = id.from(_N, "ResourceInUseFault", "message"),
            type = "string",
            name = "message",
            target_id = prelude.String.id,
        }),
    },
})

M.DeleteAutoScalingGroupInput = schema.new({
    id = id.from(_N, "DeleteAutoScalingGroupType"),
    type = "structure",
    members = {
        AutoScalingGroupName = schema.new({
            id = id.from(_N, "DeleteAutoScalingGroupInput", "AutoScalingGroupName"),
            type = "string",
            name = "AutoScalingGroupName",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        ForceDelete = schema.new({
            id = id.from(_N, "DeleteAutoScalingGroupInput", "ForceDelete"),
            type = "boolean",
            name = "ForceDelete",
            target_id = prelude.Boolean.id,
        }),
    },
})

M.DeleteAutoScalingGroupOutput = schema.new({
    id = id.from(_N, "Unit"),
    type = "structure",
})

M.ScalingActivityInProgressFault = schema.new({
    id = id.from(_N, "ScalingActivityInProgressFault"),
    type = "structure",
    traits = {
        [traits.ERROR] = { value = "client" },
    },
    members = {
        message = schema.new({
            id = id.from(_N, "ScalingActivityInProgressFault", "message"),
            type = "string",
            name = "message",
            target_id = prelude.String.id,
        }),
    },
})

M.DeleteLaunchConfigurationInput = schema.new({
    id = id.from(_N, "LaunchConfigurationNameType"),
    type = "structure",
    members = {
        LaunchConfigurationName = schema.new({
            id = id.from(_N, "DeleteLaunchConfigurationInput", "LaunchConfigurationName"),
            type = "string",
            name = "LaunchConfigurationName",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.DeleteLaunchConfigurationOutput = schema.new({
    id = id.from(_N, "Unit"),
    type = "structure",
})

M.DeleteLifecycleHookInput = schema.new({
    id = id.from(_N, "DeleteLifecycleHookType"),
    type = "structure",
    members = {
        LifecycleHookName = schema.new({
            id = id.from(_N, "DeleteLifecycleHookInput", "LifecycleHookName"),
            type = "string",
            name = "LifecycleHookName",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        AutoScalingGroupName = schema.new({
            id = id.from(_N, "DeleteLifecycleHookInput", "AutoScalingGroupName"),
            type = "string",
            name = "AutoScalingGroupName",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.DeleteLifecycleHookOutput = schema.new({
    id = id.from(_N, "DeleteLifecycleHookAnswer"),
    type = "structure",
})

M.DeleteNotificationConfigurationInput = schema.new({
    id = id.from(_N, "DeleteNotificationConfigurationType"),
    type = "structure",
    members = {
        AutoScalingGroupName = schema.new({
            id = id.from(_N, "DeleteNotificationConfigurationInput", "AutoScalingGroupName"),
            type = "string",
            name = "AutoScalingGroupName",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        TopicARN = schema.new({
            id = id.from(_N, "DeleteNotificationConfigurationInput", "TopicARN"),
            type = "string",
            name = "TopicARN",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.DeleteNotificationConfigurationOutput = schema.new({
    id = id.from(_N, "Unit"),
    type = "structure",
})

M.DeletePolicyInput = schema.new({
    id = id.from(_N, "DeletePolicyType"),
    type = "structure",
    members = {
        AutoScalingGroupName = schema.new({
            id = id.from(_N, "DeletePolicyInput", "AutoScalingGroupName"),
            type = "string",
            name = "AutoScalingGroupName",
            target_id = prelude.String.id,
        }),
        PolicyName = schema.new({
            id = id.from(_N, "DeletePolicyInput", "PolicyName"),
            type = "string",
            name = "PolicyName",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.DeletePolicyOutput = schema.new({
    id = id.from(_N, "Unit"),
    type = "structure",
})

M.DeleteScheduledActionInput = schema.new({
    id = id.from(_N, "DeleteScheduledActionType"),
    type = "structure",
    members = {
        AutoScalingGroupName = schema.new({
            id = id.from(_N, "DeleteScheduledActionInput", "AutoScalingGroupName"),
            type = "string",
            name = "AutoScalingGroupName",
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
    },
})

M.DeleteScheduledActionOutput = schema.new({
    id = id.from(_N, "Unit"),
    type = "structure",
})

M.DeleteTagsInput = schema.new({
    id = id.from(_N, "DeleteTagsType"),
    type = "structure",
    members = {
        Tags = schema.new({
            id = id.from(_N, "DeleteTagsInput", "Tags"),
            type = "list",
            name = "Tags",
            target_id = prelude.Document.id,
            list_member = M.Tag,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.DeleteTagsOutput = schema.new({
    id = id.from(_N, "Unit"),
    type = "structure",
})

M.DeleteWarmPoolInput = schema.new({
    id = id.from(_N, "DeleteWarmPoolType"),
    type = "structure",
    members = {
        AutoScalingGroupName = schema.new({
            id = id.from(_N, "DeleteWarmPoolInput", "AutoScalingGroupName"),
            type = "string",
            name = "AutoScalingGroupName",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        ForceDelete = schema.new({
            id = id.from(_N, "DeleteWarmPoolInput", "ForceDelete"),
            type = "boolean",
            name = "ForceDelete",
            target_id = prelude.Boolean.id,
        }),
    },
})

M.DeleteWarmPoolOutput = schema.new({
    id = id.from(_N, "DeleteWarmPoolAnswer"),
    type = "structure",
})

M.DescribeAccountLimitsInput = schema.new({
    id = id.from(_N, "Unit"),
    type = "structure",
})

M.DescribeAccountLimitsOutput = schema.new({
    id = id.from(_N, "DescribeAccountLimitsAnswer"),
    type = "structure",
    members = {
        MaxNumberOfAutoScalingGroups = schema.new({
            id = id.from(_N, "DescribeAccountLimitsOutput", "MaxNumberOfAutoScalingGroups"),
            type = "integer",
            name = "MaxNumberOfAutoScalingGroups",
            target_id = prelude.Integer.id,
        }),
        MaxNumberOfLaunchConfigurations = schema.new({
            id = id.from(_N, "DescribeAccountLimitsOutput", "MaxNumberOfLaunchConfigurations"),
            type = "integer",
            name = "MaxNumberOfLaunchConfigurations",
            target_id = prelude.Integer.id,
        }),
        NumberOfAutoScalingGroups = schema.new({
            id = id.from(_N, "DescribeAccountLimitsOutput", "NumberOfAutoScalingGroups"),
            type = "integer",
            name = "NumberOfAutoScalingGroups",
            target_id = prelude.Integer.id,
        }),
        NumberOfLaunchConfigurations = schema.new({
            id = id.from(_N, "DescribeAccountLimitsOutput", "NumberOfLaunchConfigurations"),
            type = "integer",
            name = "NumberOfLaunchConfigurations",
            target_id = prelude.Integer.id,
        }),
    },
})

M.DescribeAdjustmentTypesInput = schema.new({
    id = id.from(_N, "Unit"),
    type = "structure",
})

M.DescribeAdjustmentTypesOutput = schema.new({
    id = id.from(_N, "DescribeAdjustmentTypesAnswer"),
    type = "structure",
    members = {
        AdjustmentTypes = schema.new({
            id = id.from(_N, "DescribeAdjustmentTypesOutput", "AdjustmentTypes"),
            type = "list",
            name = "AdjustmentTypes",
            target_id = prelude.Document.id,
            list_member = M.AdjustmentType,
        }),
    },
})

M.Filter = schema.new({
    id = id.from(_N, "Filter"),
    type = "structure",
    members = {
        Name = schema.new({
            id = id.from(_N, "Filter", "Name"),
            type = "string",
            name = "Name",
            target_id = prelude.String.id,
        }),
        Values = schema.new({
            id = id.from(_N, "Filter", "Values"),
            type = "list",
            name = "Values",
            target_id = prelude.Document.id,
            list_member = prelude.String,
        }),
    },
})

M.DescribeAutoScalingGroupsInput = schema.new({
    id = id.from(_N, "AutoScalingGroupNamesType"),
    type = "structure",
    members = {
        AutoScalingGroupNames = schema.new({
            id = id.from(_N, "DescribeAutoScalingGroupsInput", "AutoScalingGroupNames"),
            type = "list",
            name = "AutoScalingGroupNames",
            target_id = prelude.Document.id,
            list_member = prelude.String,
        }),
        IncludeInstances = schema.new({
            id = id.from(_N, "DescribeAutoScalingGroupsInput", "IncludeInstances"),
            type = "boolean",
            name = "IncludeInstances",
            target_id = prelude.Boolean.id,
        }),
        NextToken = schema.new({
            id = id.from(_N, "DescribeAutoScalingGroupsInput", "NextToken"),
            type = "string",
            name = "NextToken",
            target_id = prelude.String.id,
        }),
        MaxRecords = schema.new({
            id = id.from(_N, "DescribeAutoScalingGroupsInput", "MaxRecords"),
            type = "integer",
            name = "MaxRecords",
            target_id = prelude.Integer.id,
        }),
        Filters = schema.new({
            id = id.from(_N, "DescribeAutoScalingGroupsInput", "Filters"),
            type = "list",
            name = "Filters",
            target_id = prelude.Document.id,
            list_member = M.Filter,
        }),
    },
})

M.EnabledMetric = schema.new({
    id = id.from(_N, "EnabledMetric"),
    type = "structure",
    members = {
        Metric = schema.new({
            id = id.from(_N, "EnabledMetric", "Metric"),
            type = "string",
            name = "Metric",
            target_id = prelude.String.id,
        }),
        Granularity = schema.new({
            id = id.from(_N, "EnabledMetric", "Granularity"),
            type = "string",
            name = "Granularity",
            target_id = prelude.String.id,
        }),
    },
})

M.Instance = schema.new({
    id = id.from(_N, "Instance"),
    type = "structure",
    members = {
        InstanceId = schema.new({
            id = id.from(_N, "Instance", "InstanceId"),
            type = "string",
            name = "InstanceId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        InstanceType = schema.new({
            id = id.from(_N, "Instance", "InstanceType"),
            type = "string",
            name = "InstanceType",
            target_id = prelude.String.id,
        }),
        AvailabilityZone = schema.new({
            id = id.from(_N, "Instance", "AvailabilityZone"),
            type = "string",
            name = "AvailabilityZone",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        AvailabilityZoneId = schema.new({
            id = id.from(_N, "Instance", "AvailabilityZoneId"),
            type = "string",
            name = "AvailabilityZoneId",
            target_id = prelude.String.id,
        }),
        LifecycleState = schema.new({
            id = id.from(_N, "Instance", "LifecycleState"),
            type = "string",
            name = "LifecycleState",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        HealthStatus = schema.new({
            id = id.from(_N, "Instance", "HealthStatus"),
            type = "string",
            name = "HealthStatus",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        LaunchConfigurationName = schema.new({
            id = id.from(_N, "Instance", "LaunchConfigurationName"),
            type = "string",
            name = "LaunchConfigurationName",
            target_id = prelude.String.id,
        }),
        LaunchTemplate = schema.new({
            id = id.from(_N, "Instance", "LaunchTemplate"),
            type = "structure",
            name = "LaunchTemplate",
            target_id = id.from(_N, "LaunchTemplateSpecification"),
            target = M.LaunchTemplateSpecification,
        }),
        ImageId = schema.new({
            id = id.from(_N, "Instance", "ImageId"),
            type = "string",
            name = "ImageId",
            target_id = prelude.String.id,
        }),
        ProtectedFromScaleIn = schema.new({
            id = id.from(_N, "Instance", "ProtectedFromScaleIn"),
            type = "boolean",
            name = "ProtectedFromScaleIn",
            target_id = prelude.Boolean.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        WeightedCapacity = schema.new({
            id = id.from(_N, "Instance", "WeightedCapacity"),
            type = "string",
            name = "WeightedCapacity",
            target_id = prelude.String.id,
        }),
    },
})

M.SuspendedProcess = schema.new({
    id = id.from(_N, "SuspendedProcess"),
    type = "structure",
    members = {
        ProcessName = schema.new({
            id = id.from(_N, "SuspendedProcess", "ProcessName"),
            type = "string",
            name = "ProcessName",
            target_id = prelude.String.id,
        }),
        SuspensionReason = schema.new({
            id = id.from(_N, "SuspendedProcess", "SuspensionReason"),
            type = "string",
            name = "SuspensionReason",
            target_id = prelude.String.id,
        }),
    },
})

M.TagDescription = schema.new({
    id = id.from(_N, "TagDescription"),
    type = "structure",
    members = {
        ResourceId = schema.new({
            id = id.from(_N, "TagDescription", "ResourceId"),
            type = "string",
            name = "ResourceId",
            target_id = prelude.String.id,
        }),
        ResourceType = schema.new({
            id = id.from(_N, "TagDescription", "ResourceType"),
            type = "string",
            name = "ResourceType",
            target_id = prelude.String.id,
        }),
        Key = schema.new({
            id = id.from(_N, "TagDescription", "Key"),
            type = "string",
            name = "Key",
            target_id = prelude.String.id,
        }),
        Value = schema.new({
            id = id.from(_N, "TagDescription", "Value"),
            type = "string",
            name = "Value",
            target_id = prelude.String.id,
        }),
        PropagateAtLaunch = schema.new({
            id = id.from(_N, "TagDescription", "PropagateAtLaunch"),
            type = "boolean",
            name = "PropagateAtLaunch",
            target_id = prelude.Boolean.id,
        }),
    },
})

M.InstanceReusePolicy = schema.new({
    id = id.from(_N, "InstanceReusePolicy"),
    type = "structure",
    members = {
        ReuseOnScaleIn = schema.new({
            id = id.from(_N, "InstanceReusePolicy", "ReuseOnScaleIn"),
            type = "boolean",
            name = "ReuseOnScaleIn",
            target_id = prelude.Boolean.id,
        }),
    },
})

M.WarmPoolConfiguration = schema.new({
    id = id.from(_N, "WarmPoolConfiguration"),
    type = "structure",
    members = {
        MaxGroupPreparedCapacity = schema.new({
            id = id.from(_N, "WarmPoolConfiguration", "MaxGroupPreparedCapacity"),
            type = "integer",
            name = "MaxGroupPreparedCapacity",
            target_id = prelude.Integer.id,
        }),
        MinSize = schema.new({
            id = id.from(_N, "WarmPoolConfiguration", "MinSize"),
            type = "integer",
            name = "MinSize",
            target_id = prelude.Integer.id,
        }),
        PoolState = schema.new({
            id = id.from(_N, "WarmPoolConfiguration", "PoolState"),
            type = "string",
            name = "PoolState",
            target_id = prelude.String.id,
        }),
        Status = schema.new({
            id = id.from(_N, "WarmPoolConfiguration", "Status"),
            type = "string",
            name = "Status",
            target_id = prelude.String.id,
        }),
        InstanceReusePolicy = schema.new({
            id = id.from(_N, "WarmPoolConfiguration", "InstanceReusePolicy"),
            type = "structure",
            name = "InstanceReusePolicy",
            target_id = id.from(_N, "InstanceReusePolicy"),
            target = M.InstanceReusePolicy,
        }),
    },
})

M.AutoScalingGroup = schema.new({
    id = id.from(_N, "AutoScalingGroup"),
    type = "structure",
    members = {
        AutoScalingGroupName = schema.new({
            id = id.from(_N, "AutoScalingGroup", "AutoScalingGroupName"),
            type = "string",
            name = "AutoScalingGroupName",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        AutoScalingGroupARN = schema.new({
            id = id.from(_N, "AutoScalingGroup", "AutoScalingGroupARN"),
            type = "string",
            name = "AutoScalingGroupARN",
            target_id = prelude.String.id,
        }),
        LaunchConfigurationName = schema.new({
            id = id.from(_N, "AutoScalingGroup", "LaunchConfigurationName"),
            type = "string",
            name = "LaunchConfigurationName",
            target_id = prelude.String.id,
        }),
        LaunchTemplate = schema.new({
            id = id.from(_N, "AutoScalingGroup", "LaunchTemplate"),
            type = "structure",
            name = "LaunchTemplate",
            target_id = id.from(_N, "LaunchTemplateSpecification"),
            target = M.LaunchTemplateSpecification,
        }),
        MixedInstancesPolicy = schema.new({
            id = id.from(_N, "AutoScalingGroup", "MixedInstancesPolicy"),
            type = "structure",
            name = "MixedInstancesPolicy",
            target_id = id.from(_N, "MixedInstancesPolicy"),
            target = M.MixedInstancesPolicy,
        }),
        MinSize = schema.new({
            id = id.from(_N, "AutoScalingGroup", "MinSize"),
            type = "integer",
            name = "MinSize",
            target_id = prelude.Integer.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        MaxSize = schema.new({
            id = id.from(_N, "AutoScalingGroup", "MaxSize"),
            type = "integer",
            name = "MaxSize",
            target_id = prelude.Integer.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        DesiredCapacity = schema.new({
            id = id.from(_N, "AutoScalingGroup", "DesiredCapacity"),
            type = "integer",
            name = "DesiredCapacity",
            target_id = prelude.Integer.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        PredictedCapacity = schema.new({
            id = id.from(_N, "AutoScalingGroup", "PredictedCapacity"),
            type = "integer",
            name = "PredictedCapacity",
            target_id = prelude.Integer.id,
        }),
        DefaultCooldown = schema.new({
            id = id.from(_N, "AutoScalingGroup", "DefaultCooldown"),
            type = "integer",
            name = "DefaultCooldown",
            target_id = prelude.Integer.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        AvailabilityZones = schema.new({
            id = id.from(_N, "AutoScalingGroup", "AvailabilityZones"),
            type = "list",
            name = "AvailabilityZones",
            target_id = prelude.Document.id,
            list_member = prelude.String,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        AvailabilityZoneIds = schema.new({
            id = id.from(_N, "AutoScalingGroup", "AvailabilityZoneIds"),
            type = "list",
            name = "AvailabilityZoneIds",
            target_id = prelude.Document.id,
            list_member = prelude.String,
        }),
        LoadBalancerNames = schema.new({
            id = id.from(_N, "AutoScalingGroup", "LoadBalancerNames"),
            type = "list",
            name = "LoadBalancerNames",
            target_id = prelude.Document.id,
            list_member = prelude.String,
        }),
        TargetGroupARNs = schema.new({
            id = id.from(_N, "AutoScalingGroup", "TargetGroupARNs"),
            type = "list",
            name = "TargetGroupARNs",
            target_id = prelude.Document.id,
            list_member = prelude.String,
        }),
        HealthCheckType = schema.new({
            id = id.from(_N, "AutoScalingGroup", "HealthCheckType"),
            type = "string",
            name = "HealthCheckType",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        HealthCheckGracePeriod = schema.new({
            id = id.from(_N, "AutoScalingGroup", "HealthCheckGracePeriod"),
            type = "integer",
            name = "HealthCheckGracePeriod",
            target_id = prelude.Integer.id,
        }),
        Instances = schema.new({
            id = id.from(_N, "AutoScalingGroup", "Instances"),
            type = "list",
            name = "Instances",
            target_id = prelude.Document.id,
            list_member = M.Instance,
        }),
        CreatedTime = schema.new({
            id = id.from(_N, "AutoScalingGroup", "CreatedTime"),
            type = "timestamp",
            name = "CreatedTime",
            target_id = prelude.Timestamp.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        SuspendedProcesses = schema.new({
            id = id.from(_N, "AutoScalingGroup", "SuspendedProcesses"),
            type = "list",
            name = "SuspendedProcesses",
            target_id = prelude.Document.id,
            list_member = M.SuspendedProcess,
        }),
        PlacementGroup = schema.new({
            id = id.from(_N, "AutoScalingGroup", "PlacementGroup"),
            type = "string",
            name = "PlacementGroup",
            target_id = prelude.String.id,
        }),
        VPCZoneIdentifier = schema.new({
            id = id.from(_N, "AutoScalingGroup", "VPCZoneIdentifier"),
            type = "string",
            name = "VPCZoneIdentifier",
            target_id = prelude.String.id,
        }),
        EnabledMetrics = schema.new({
            id = id.from(_N, "AutoScalingGroup", "EnabledMetrics"),
            type = "list",
            name = "EnabledMetrics",
            target_id = prelude.Document.id,
            list_member = M.EnabledMetric,
        }),
        Status = schema.new({
            id = id.from(_N, "AutoScalingGroup", "Status"),
            type = "string",
            name = "Status",
            target_id = prelude.String.id,
        }),
        Tags = schema.new({
            id = id.from(_N, "AutoScalingGroup", "Tags"),
            type = "list",
            name = "Tags",
            target_id = prelude.Document.id,
            list_member = M.TagDescription,
        }),
        TerminationPolicies = schema.new({
            id = id.from(_N, "AutoScalingGroup", "TerminationPolicies"),
            type = "list",
            name = "TerminationPolicies",
            target_id = prelude.Document.id,
            list_member = prelude.String,
        }),
        NewInstancesProtectedFromScaleIn = schema.new({
            id = id.from(_N, "AutoScalingGroup", "NewInstancesProtectedFromScaleIn"),
            type = "boolean",
            name = "NewInstancesProtectedFromScaleIn",
            target_id = prelude.Boolean.id,
        }),
        ServiceLinkedRoleARN = schema.new({
            id = id.from(_N, "AutoScalingGroup", "ServiceLinkedRoleARN"),
            type = "string",
            name = "ServiceLinkedRoleARN",
            target_id = prelude.String.id,
        }),
        MaxInstanceLifetime = schema.new({
            id = id.from(_N, "AutoScalingGroup", "MaxInstanceLifetime"),
            type = "integer",
            name = "MaxInstanceLifetime",
            target_id = prelude.Integer.id,
        }),
        CapacityRebalance = schema.new({
            id = id.from(_N, "AutoScalingGroup", "CapacityRebalance"),
            type = "boolean",
            name = "CapacityRebalance",
            target_id = prelude.Boolean.id,
        }),
        WarmPoolConfiguration = schema.new({
            id = id.from(_N, "AutoScalingGroup", "WarmPoolConfiguration"),
            type = "structure",
            name = "WarmPoolConfiguration",
            target_id = id.from(_N, "WarmPoolConfiguration"),
            target = M.WarmPoolConfiguration,
        }),
        WarmPoolSize = schema.new({
            id = id.from(_N, "AutoScalingGroup", "WarmPoolSize"),
            type = "integer",
            name = "WarmPoolSize",
            target_id = prelude.Integer.id,
        }),
        Context = schema.new({
            id = id.from(_N, "AutoScalingGroup", "Context"),
            type = "string",
            name = "Context",
            target_id = prelude.String.id,
        }),
        DesiredCapacityType = schema.new({
            id = id.from(_N, "AutoScalingGroup", "DesiredCapacityType"),
            type = "string",
            name = "DesiredCapacityType",
            target_id = prelude.String.id,
        }),
        DefaultInstanceWarmup = schema.new({
            id = id.from(_N, "AutoScalingGroup", "DefaultInstanceWarmup"),
            type = "integer",
            name = "DefaultInstanceWarmup",
            target_id = prelude.Integer.id,
        }),
        TrafficSources = schema.new({
            id = id.from(_N, "AutoScalingGroup", "TrafficSources"),
            type = "list",
            name = "TrafficSources",
            target_id = prelude.Document.id,
            list_member = M.TrafficSourceIdentifier,
        }),
        InstanceMaintenancePolicy = schema.new({
            id = id.from(_N, "AutoScalingGroup", "InstanceMaintenancePolicy"),
            type = "structure",
            name = "InstanceMaintenancePolicy",
            target_id = id.from(_N, "InstanceMaintenancePolicy"),
            target = M.InstanceMaintenancePolicy,
        }),
        DeletionProtection = schema.new({
            id = id.from(_N, "AutoScalingGroup", "DeletionProtection"),
            type = "string",
            name = "DeletionProtection",
            target_id = prelude.String.id,
        }),
        AvailabilityZoneDistribution = schema.new({
            id = id.from(_N, "AutoScalingGroup", "AvailabilityZoneDistribution"),
            type = "structure",
            name = "AvailabilityZoneDistribution",
            target_id = id.from(_N, "AvailabilityZoneDistribution"),
            target = M.AvailabilityZoneDistribution,
        }),
        AvailabilityZoneImpairmentPolicy = schema.new({
            id = id.from(_N, "AutoScalingGroup", "AvailabilityZoneImpairmentPolicy"),
            type = "structure",
            name = "AvailabilityZoneImpairmentPolicy",
            target_id = id.from(_N, "AvailabilityZoneImpairmentPolicy"),
            target = M.AvailabilityZoneImpairmentPolicy,
        }),
        CapacityReservationSpecification = schema.new({
            id = id.from(_N, "AutoScalingGroup", "CapacityReservationSpecification"),
            type = "structure",
            name = "CapacityReservationSpecification",
            target_id = id.from(_N, "CapacityReservationSpecification"),
            target = M.CapacityReservationSpecification,
        }),
        InstanceLifecyclePolicy = schema.new({
            id = id.from(_N, "AutoScalingGroup", "InstanceLifecyclePolicy"),
            type = "structure",
            name = "InstanceLifecyclePolicy",
            target_id = id.from(_N, "InstanceLifecyclePolicy"),
            target = M.InstanceLifecyclePolicy,
        }),
    },
})

M.DescribeAutoScalingGroupsOutput = schema.new({
    id = id.from(_N, "AutoScalingGroupsType"),
    type = "structure",
    members = {
        AutoScalingGroups = schema.new({
            id = id.from(_N, "DescribeAutoScalingGroupsOutput", "AutoScalingGroups"),
            type = "list",
            name = "AutoScalingGroups",
            target_id = prelude.Document.id,
            list_member = M.AutoScalingGroup,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        NextToken = schema.new({
            id = id.from(_N, "DescribeAutoScalingGroupsOutput", "NextToken"),
            type = "string",
            name = "NextToken",
            target_id = prelude.String.id,
        }),
    },
})

M.InvalidNextToken = schema.new({
    id = id.from(_N, "InvalidNextToken"),
    type = "structure",
    traits = {
        [traits.ERROR] = { value = "client" },
    },
    members = {
        message = schema.new({
            id = id.from(_N, "InvalidNextToken", "message"),
            type = "string",
            name = "message",
            target_id = prelude.String.id,
        }),
    },
})

M.DescribeAutoScalingInstancesInput = schema.new({
    id = id.from(_N, "DescribeAutoScalingInstancesType"),
    type = "structure",
    members = {
        InstanceIds = schema.new({
            id = id.from(_N, "DescribeAutoScalingInstancesInput", "InstanceIds"),
            type = "list",
            name = "InstanceIds",
            target_id = prelude.Document.id,
            list_member = prelude.String,
        }),
        MaxRecords = schema.new({
            id = id.from(_N, "DescribeAutoScalingInstancesInput", "MaxRecords"),
            type = "integer",
            name = "MaxRecords",
            target_id = prelude.Integer.id,
        }),
        NextToken = schema.new({
            id = id.from(_N, "DescribeAutoScalingInstancesInput", "NextToken"),
            type = "string",
            name = "NextToken",
            target_id = prelude.String.id,
        }),
    },
})

M.AutoScalingInstanceDetails = schema.new({
    id = id.from(_N, "AutoScalingInstanceDetails"),
    type = "structure",
    members = {
        InstanceId = schema.new({
            id = id.from(_N, "AutoScalingInstanceDetails", "InstanceId"),
            type = "string",
            name = "InstanceId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        InstanceType = schema.new({
            id = id.from(_N, "AutoScalingInstanceDetails", "InstanceType"),
            type = "string",
            name = "InstanceType",
            target_id = prelude.String.id,
        }),
        AutoScalingGroupName = schema.new({
            id = id.from(_N, "AutoScalingInstanceDetails", "AutoScalingGroupName"),
            type = "string",
            name = "AutoScalingGroupName",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        AvailabilityZone = schema.new({
            id = id.from(_N, "AutoScalingInstanceDetails", "AvailabilityZone"),
            type = "string",
            name = "AvailabilityZone",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        AvailabilityZoneId = schema.new({
            id = id.from(_N, "AutoScalingInstanceDetails", "AvailabilityZoneId"),
            type = "string",
            name = "AvailabilityZoneId",
            target_id = prelude.String.id,
        }),
        LifecycleState = schema.new({
            id = id.from(_N, "AutoScalingInstanceDetails", "LifecycleState"),
            type = "string",
            name = "LifecycleState",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        HealthStatus = schema.new({
            id = id.from(_N, "AutoScalingInstanceDetails", "HealthStatus"),
            type = "string",
            name = "HealthStatus",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        LaunchConfigurationName = schema.new({
            id = id.from(_N, "AutoScalingInstanceDetails", "LaunchConfigurationName"),
            type = "string",
            name = "LaunchConfigurationName",
            target_id = prelude.String.id,
        }),
        LaunchTemplate = schema.new({
            id = id.from(_N, "AutoScalingInstanceDetails", "LaunchTemplate"),
            type = "structure",
            name = "LaunchTemplate",
            target_id = id.from(_N, "LaunchTemplateSpecification"),
            target = M.LaunchTemplateSpecification,
        }),
        ImageId = schema.new({
            id = id.from(_N, "AutoScalingInstanceDetails", "ImageId"),
            type = "string",
            name = "ImageId",
            target_id = prelude.String.id,
        }),
        ProtectedFromScaleIn = schema.new({
            id = id.from(_N, "AutoScalingInstanceDetails", "ProtectedFromScaleIn"),
            type = "boolean",
            name = "ProtectedFromScaleIn",
            target_id = prelude.Boolean.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        WeightedCapacity = schema.new({
            id = id.from(_N, "AutoScalingInstanceDetails", "WeightedCapacity"),
            type = "string",
            name = "WeightedCapacity",
            target_id = prelude.String.id,
        }),
    },
})

M.DescribeAutoScalingInstancesOutput = schema.new({
    id = id.from(_N, "AutoScalingInstancesType"),
    type = "structure",
    members = {
        AutoScalingInstances = schema.new({
            id = id.from(_N, "DescribeAutoScalingInstancesOutput", "AutoScalingInstances"),
            type = "list",
            name = "AutoScalingInstances",
            target_id = prelude.Document.id,
            list_member = M.AutoScalingInstanceDetails,
        }),
        NextToken = schema.new({
            id = id.from(_N, "DescribeAutoScalingInstancesOutput", "NextToken"),
            type = "string",
            name = "NextToken",
            target_id = prelude.String.id,
        }),
    },
})

M.DescribeAutoScalingNotificationTypesInput = schema.new({
    id = id.from(_N, "Unit"),
    type = "structure",
})

M.DescribeAutoScalingNotificationTypesOutput = schema.new({
    id = id.from(_N, "DescribeAutoScalingNotificationTypesAnswer"),
    type = "structure",
    members = {
        AutoScalingNotificationTypes = schema.new({
            id = id.from(_N, "DescribeAutoScalingNotificationTypesOutput", "AutoScalingNotificationTypes"),
            type = "list",
            name = "AutoScalingNotificationTypes",
            target_id = prelude.Document.id,
            list_member = prelude.String,
        }),
    },
})

M.DescribeInstanceRefreshesInput = schema.new({
    id = id.from(_N, "DescribeInstanceRefreshesType"),
    type = "structure",
    members = {
        AutoScalingGroupName = schema.new({
            id = id.from(_N, "DescribeInstanceRefreshesInput", "AutoScalingGroupName"),
            type = "string",
            name = "AutoScalingGroupName",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        InstanceRefreshIds = schema.new({
            id = id.from(_N, "DescribeInstanceRefreshesInput", "InstanceRefreshIds"),
            type = "list",
            name = "InstanceRefreshIds",
            target_id = prelude.Document.id,
            list_member = prelude.String,
        }),
        NextToken = schema.new({
            id = id.from(_N, "DescribeInstanceRefreshesInput", "NextToken"),
            type = "string",
            name = "NextToken",
            target_id = prelude.String.id,
        }),
        MaxRecords = schema.new({
            id = id.from(_N, "DescribeInstanceRefreshesInput", "MaxRecords"),
            type = "integer",
            name = "MaxRecords",
            target_id = prelude.Integer.id,
        }),
    },
})

M.DesiredConfiguration = schema.new({
    id = id.from(_N, "DesiredConfiguration"),
    type = "structure",
    members = {
        LaunchTemplate = schema.new({
            id = id.from(_N, "DesiredConfiguration", "LaunchTemplate"),
            type = "structure",
            name = "LaunchTemplate",
            target_id = id.from(_N, "LaunchTemplateSpecification"),
            target = M.LaunchTemplateSpecification,
        }),
        MixedInstancesPolicy = schema.new({
            id = id.from(_N, "DesiredConfiguration", "MixedInstancesPolicy"),
            type = "structure",
            name = "MixedInstancesPolicy",
            target_id = id.from(_N, "MixedInstancesPolicy"),
            target = M.MixedInstancesPolicy,
        }),
    },
})

M.RefreshPreferences = schema.new({
    id = id.from(_N, "RefreshPreferences"),
    type = "structure",
    members = {
        MinHealthyPercentage = schema.new({
            id = id.from(_N, "RefreshPreferences", "MinHealthyPercentage"),
            type = "integer",
            name = "MinHealthyPercentage",
            target_id = prelude.Integer.id,
        }),
        InstanceWarmup = schema.new({
            id = id.from(_N, "RefreshPreferences", "InstanceWarmup"),
            type = "integer",
            name = "InstanceWarmup",
            target_id = prelude.Integer.id,
        }),
        CheckpointPercentages = schema.new({
            id = id.from(_N, "RefreshPreferences", "CheckpointPercentages"),
            type = "list",
            name = "CheckpointPercentages",
            target_id = prelude.Document.id,
            list_member = prelude.Integer,
        }),
        CheckpointDelay = schema.new({
            id = id.from(_N, "RefreshPreferences", "CheckpointDelay"),
            type = "integer",
            name = "CheckpointDelay",
            target_id = prelude.Integer.id,
        }),
        SkipMatching = schema.new({
            id = id.from(_N, "RefreshPreferences", "SkipMatching"),
            type = "boolean",
            name = "SkipMatching",
            target_id = prelude.Boolean.id,
        }),
        AutoRollback = schema.new({
            id = id.from(_N, "RefreshPreferences", "AutoRollback"),
            type = "boolean",
            name = "AutoRollback",
            target_id = prelude.Boolean.id,
        }),
        ScaleInProtectedInstances = schema.new({
            id = id.from(_N, "RefreshPreferences", "ScaleInProtectedInstances"),
            type = "string",
            name = "ScaleInProtectedInstances",
            target_id = prelude.String.id,
        }),
        StandbyInstances = schema.new({
            id = id.from(_N, "RefreshPreferences", "StandbyInstances"),
            type = "string",
            name = "StandbyInstances",
            target_id = prelude.String.id,
        }),
        AlarmSpecification = schema.new({
            id = id.from(_N, "RefreshPreferences", "AlarmSpecification"),
            type = "structure",
            name = "AlarmSpecification",
            target_id = id.from(_N, "AlarmSpecification"),
            target = M.AlarmSpecification,
        }),
        MaxHealthyPercentage = schema.new({
            id = id.from(_N, "RefreshPreferences", "MaxHealthyPercentage"),
            type = "integer",
            name = "MaxHealthyPercentage",
            target_id = prelude.Integer.id,
        }),
        BakeTime = schema.new({
            id = id.from(_N, "RefreshPreferences", "BakeTime"),
            type = "integer",
            name = "BakeTime",
            target_id = prelude.Integer.id,
        }),
    },
})

M.InstanceRefreshLivePoolProgress = schema.new({
    id = id.from(_N, "InstanceRefreshLivePoolProgress"),
    type = "structure",
    members = {
        PercentageComplete = schema.new({
            id = id.from(_N, "InstanceRefreshLivePoolProgress", "PercentageComplete"),
            type = "integer",
            name = "PercentageComplete",
            target_id = prelude.Integer.id,
        }),
        InstancesToUpdate = schema.new({
            id = id.from(_N, "InstanceRefreshLivePoolProgress", "InstancesToUpdate"),
            type = "integer",
            name = "InstancesToUpdate",
            target_id = prelude.Integer.id,
        }),
    },
})

M.InstanceRefreshWarmPoolProgress = schema.new({
    id = id.from(_N, "InstanceRefreshWarmPoolProgress"),
    type = "structure",
    members = {
        PercentageComplete = schema.new({
            id = id.from(_N, "InstanceRefreshWarmPoolProgress", "PercentageComplete"),
            type = "integer",
            name = "PercentageComplete",
            target_id = prelude.Integer.id,
        }),
        InstancesToUpdate = schema.new({
            id = id.from(_N, "InstanceRefreshWarmPoolProgress", "InstancesToUpdate"),
            type = "integer",
            name = "InstancesToUpdate",
            target_id = prelude.Integer.id,
        }),
    },
})

M.InstanceRefreshProgressDetails = schema.new({
    id = id.from(_N, "InstanceRefreshProgressDetails"),
    type = "structure",
    members = {
        LivePoolProgress = schema.new({
            id = id.from(_N, "InstanceRefreshProgressDetails", "LivePoolProgress"),
            type = "structure",
            name = "LivePoolProgress",
            target_id = id.from(_N, "InstanceRefreshLivePoolProgress"),
            target = M.InstanceRefreshLivePoolProgress,
        }),
        WarmPoolProgress = schema.new({
            id = id.from(_N, "InstanceRefreshProgressDetails", "WarmPoolProgress"),
            type = "structure",
            name = "WarmPoolProgress",
            target_id = id.from(_N, "InstanceRefreshWarmPoolProgress"),
            target = M.InstanceRefreshWarmPoolProgress,
        }),
    },
})

M.RollbackDetails = schema.new({
    id = id.from(_N, "RollbackDetails"),
    type = "structure",
    members = {
        RollbackReason = schema.new({
            id = id.from(_N, "RollbackDetails", "RollbackReason"),
            type = "string",
            name = "RollbackReason",
            target_id = prelude.String.id,
        }),
        RollbackStartTime = schema.new({
            id = id.from(_N, "RollbackDetails", "RollbackStartTime"),
            type = "timestamp",
            name = "RollbackStartTime",
            target_id = prelude.Timestamp.id,
        }),
        PercentageCompleteOnRollback = schema.new({
            id = id.from(_N, "RollbackDetails", "PercentageCompleteOnRollback"),
            type = "integer",
            name = "PercentageCompleteOnRollback",
            target_id = prelude.Integer.id,
        }),
        InstancesToUpdateOnRollback = schema.new({
            id = id.from(_N, "RollbackDetails", "InstancesToUpdateOnRollback"),
            type = "integer",
            name = "InstancesToUpdateOnRollback",
            target_id = prelude.Integer.id,
        }),
        ProgressDetailsOnRollback = schema.new({
            id = id.from(_N, "RollbackDetails", "ProgressDetailsOnRollback"),
            type = "structure",
            name = "ProgressDetailsOnRollback",
            target_id = id.from(_N, "InstanceRefreshProgressDetails"),
            target = M.InstanceRefreshProgressDetails,
        }),
    },
})

M.InstanceRefresh = schema.new({
    id = id.from(_N, "InstanceRefresh"),
    type = "structure",
    members = {
        InstanceRefreshId = schema.new({
            id = id.from(_N, "InstanceRefresh", "InstanceRefreshId"),
            type = "string",
            name = "InstanceRefreshId",
            target_id = prelude.String.id,
        }),
        AutoScalingGroupName = schema.new({
            id = id.from(_N, "InstanceRefresh", "AutoScalingGroupName"),
            type = "string",
            name = "AutoScalingGroupName",
            target_id = prelude.String.id,
        }),
        Status = schema.new({
            id = id.from(_N, "InstanceRefresh", "Status"),
            type = "string",
            name = "Status",
            target_id = prelude.String.id,
        }),
        StatusReason = schema.new({
            id = id.from(_N, "InstanceRefresh", "StatusReason"),
            type = "string",
            name = "StatusReason",
            target_id = prelude.String.id,
        }),
        StartTime = schema.new({
            id = id.from(_N, "InstanceRefresh", "StartTime"),
            type = "timestamp",
            name = "StartTime",
            target_id = prelude.Timestamp.id,
        }),
        EndTime = schema.new({
            id = id.from(_N, "InstanceRefresh", "EndTime"),
            type = "timestamp",
            name = "EndTime",
            target_id = prelude.Timestamp.id,
        }),
        PercentageComplete = schema.new({
            id = id.from(_N, "InstanceRefresh", "PercentageComplete"),
            type = "integer",
            name = "PercentageComplete",
            target_id = prelude.Integer.id,
        }),
        InstancesToUpdate = schema.new({
            id = id.from(_N, "InstanceRefresh", "InstancesToUpdate"),
            type = "integer",
            name = "InstancesToUpdate",
            target_id = prelude.Integer.id,
        }),
        ProgressDetails = schema.new({
            id = id.from(_N, "InstanceRefresh", "ProgressDetails"),
            type = "structure",
            name = "ProgressDetails",
            target_id = id.from(_N, "InstanceRefreshProgressDetails"),
            target = M.InstanceRefreshProgressDetails,
        }),
        Preferences = schema.new({
            id = id.from(_N, "InstanceRefresh", "Preferences"),
            type = "structure",
            name = "Preferences",
            target_id = id.from(_N, "RefreshPreferences"),
            target = M.RefreshPreferences,
        }),
        DesiredConfiguration = schema.new({
            id = id.from(_N, "InstanceRefresh", "DesiredConfiguration"),
            type = "structure",
            name = "DesiredConfiguration",
            target_id = id.from(_N, "DesiredConfiguration"),
            target = M.DesiredConfiguration,
        }),
        RollbackDetails = schema.new({
            id = id.from(_N, "InstanceRefresh", "RollbackDetails"),
            type = "structure",
            name = "RollbackDetails",
            target_id = id.from(_N, "RollbackDetails"),
            target = M.RollbackDetails,
        }),
        Strategy = schema.new({
            id = id.from(_N, "InstanceRefresh", "Strategy"),
            type = "string",
            name = "Strategy",
            target_id = prelude.String.id,
        }),
    },
})

M.DescribeInstanceRefreshesOutput = schema.new({
    id = id.from(_N, "DescribeInstanceRefreshesAnswer"),
    type = "structure",
    members = {
        InstanceRefreshes = schema.new({
            id = id.from(_N, "DescribeInstanceRefreshesOutput", "InstanceRefreshes"),
            type = "list",
            name = "InstanceRefreshes",
            target_id = prelude.Document.id,
            list_member = M.InstanceRefresh,
        }),
        NextToken = schema.new({
            id = id.from(_N, "DescribeInstanceRefreshesOutput", "NextToken"),
            type = "string",
            name = "NextToken",
            target_id = prelude.String.id,
        }),
    },
})

M.DescribeLaunchConfigurationsInput = schema.new({
    id = id.from(_N, "LaunchConfigurationNamesType"),
    type = "structure",
    members = {
        LaunchConfigurationNames = schema.new({
            id = id.from(_N, "DescribeLaunchConfigurationsInput", "LaunchConfigurationNames"),
            type = "list",
            name = "LaunchConfigurationNames",
            target_id = prelude.Document.id,
            list_member = prelude.String,
        }),
        NextToken = schema.new({
            id = id.from(_N, "DescribeLaunchConfigurationsInput", "NextToken"),
            type = "string",
            name = "NextToken",
            target_id = prelude.String.id,
        }),
        MaxRecords = schema.new({
            id = id.from(_N, "DescribeLaunchConfigurationsInput", "MaxRecords"),
            type = "integer",
            name = "MaxRecords",
            target_id = prelude.Integer.id,
        }),
    },
})

M.LaunchConfiguration = schema.new({
    id = id.from(_N, "LaunchConfiguration"),
    type = "structure",
    members = {
        LaunchConfigurationName = schema.new({
            id = id.from(_N, "LaunchConfiguration", "LaunchConfigurationName"),
            type = "string",
            name = "LaunchConfigurationName",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        LaunchConfigurationARN = schema.new({
            id = id.from(_N, "LaunchConfiguration", "LaunchConfigurationARN"),
            type = "string",
            name = "LaunchConfigurationARN",
            target_id = prelude.String.id,
        }),
        ImageId = schema.new({
            id = id.from(_N, "LaunchConfiguration", "ImageId"),
            type = "string",
            name = "ImageId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        KeyName = schema.new({
            id = id.from(_N, "LaunchConfiguration", "KeyName"),
            type = "string",
            name = "KeyName",
            target_id = prelude.String.id,
        }),
        SecurityGroups = schema.new({
            id = id.from(_N, "LaunchConfiguration", "SecurityGroups"),
            type = "list",
            name = "SecurityGroups",
            target_id = prelude.Document.id,
            list_member = prelude.String,
        }),
        ClassicLinkVPCId = schema.new({
            id = id.from(_N, "LaunchConfiguration", "ClassicLinkVPCId"),
            type = "string",
            name = "ClassicLinkVPCId",
            target_id = prelude.String.id,
        }),
        ClassicLinkVPCSecurityGroups = schema.new({
            id = id.from(_N, "LaunchConfiguration", "ClassicLinkVPCSecurityGroups"),
            type = "list",
            name = "ClassicLinkVPCSecurityGroups",
            target_id = prelude.Document.id,
            list_member = prelude.String,
        }),
        UserData = schema.new({
            id = id.from(_N, "LaunchConfiguration", "UserData"),
            type = "string",
            name = "UserData",
            target_id = prelude.String.id,
        }),
        InstanceType = schema.new({
            id = id.from(_N, "LaunchConfiguration", "InstanceType"),
            type = "string",
            name = "InstanceType",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        KernelId = schema.new({
            id = id.from(_N, "LaunchConfiguration", "KernelId"),
            type = "string",
            name = "KernelId",
            target_id = prelude.String.id,
        }),
        RamdiskId = schema.new({
            id = id.from(_N, "LaunchConfiguration", "RamdiskId"),
            type = "string",
            name = "RamdiskId",
            target_id = prelude.String.id,
        }),
        BlockDeviceMappings = schema.new({
            id = id.from(_N, "LaunchConfiguration", "BlockDeviceMappings"),
            type = "list",
            name = "BlockDeviceMappings",
            target_id = prelude.Document.id,
            list_member = M.BlockDeviceMapping,
        }),
        InstanceMonitoring = schema.new({
            id = id.from(_N, "LaunchConfiguration", "InstanceMonitoring"),
            type = "structure",
            name = "InstanceMonitoring",
            target_id = id.from(_N, "InstanceMonitoring"),
            target = M.InstanceMonitoring,
        }),
        SpotPrice = schema.new({
            id = id.from(_N, "LaunchConfiguration", "SpotPrice"),
            type = "string",
            name = "SpotPrice",
            target_id = prelude.String.id,
        }),
        IamInstanceProfile = schema.new({
            id = id.from(_N, "LaunchConfiguration", "IamInstanceProfile"),
            type = "string",
            name = "IamInstanceProfile",
            target_id = prelude.String.id,
        }),
        CreatedTime = schema.new({
            id = id.from(_N, "LaunchConfiguration", "CreatedTime"),
            type = "timestamp",
            name = "CreatedTime",
            target_id = prelude.Timestamp.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        EbsOptimized = schema.new({
            id = id.from(_N, "LaunchConfiguration", "EbsOptimized"),
            type = "boolean",
            name = "EbsOptimized",
            target_id = prelude.Boolean.id,
        }),
        AssociatePublicIpAddress = schema.new({
            id = id.from(_N, "LaunchConfiguration", "AssociatePublicIpAddress"),
            type = "boolean",
            name = "AssociatePublicIpAddress",
            target_id = prelude.Boolean.id,
        }),
        PlacementTenancy = schema.new({
            id = id.from(_N, "LaunchConfiguration", "PlacementTenancy"),
            type = "string",
            name = "PlacementTenancy",
            target_id = prelude.String.id,
        }),
        MetadataOptions = schema.new({
            id = id.from(_N, "LaunchConfiguration", "MetadataOptions"),
            type = "structure",
            name = "MetadataOptions",
            target_id = id.from(_N, "InstanceMetadataOptions"),
            target = M.InstanceMetadataOptions,
        }),
    },
})

M.DescribeLaunchConfigurationsOutput = schema.new({
    id = id.from(_N, "LaunchConfigurationsType"),
    type = "structure",
    members = {
        LaunchConfigurations = schema.new({
            id = id.from(_N, "DescribeLaunchConfigurationsOutput", "LaunchConfigurations"),
            type = "list",
            name = "LaunchConfigurations",
            target_id = prelude.Document.id,
            list_member = M.LaunchConfiguration,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        NextToken = schema.new({
            id = id.from(_N, "DescribeLaunchConfigurationsOutput", "NextToken"),
            type = "string",
            name = "NextToken",
            target_id = prelude.String.id,
        }),
    },
})

M.DescribeLifecycleHooksInput = schema.new({
    id = id.from(_N, "DescribeLifecycleHooksType"),
    type = "structure",
    members = {
        AutoScalingGroupName = schema.new({
            id = id.from(_N, "DescribeLifecycleHooksInput", "AutoScalingGroupName"),
            type = "string",
            name = "AutoScalingGroupName",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        LifecycleHookNames = schema.new({
            id = id.from(_N, "DescribeLifecycleHooksInput", "LifecycleHookNames"),
            type = "list",
            name = "LifecycleHookNames",
            target_id = prelude.Document.id,
            list_member = prelude.String,
        }),
    },
})

M.LifecycleHook = schema.new({
    id = id.from(_N, "LifecycleHook"),
    type = "structure",
    members = {
        LifecycleHookName = schema.new({
            id = id.from(_N, "LifecycleHook", "LifecycleHookName"),
            type = "string",
            name = "LifecycleHookName",
            target_id = prelude.String.id,
        }),
        AutoScalingGroupName = schema.new({
            id = id.from(_N, "LifecycleHook", "AutoScalingGroupName"),
            type = "string",
            name = "AutoScalingGroupName",
            target_id = prelude.String.id,
        }),
        LifecycleTransition = schema.new({
            id = id.from(_N, "LifecycleHook", "LifecycleTransition"),
            type = "string",
            name = "LifecycleTransition",
            target_id = prelude.String.id,
        }),
        NotificationTargetARN = schema.new({
            id = id.from(_N, "LifecycleHook", "NotificationTargetARN"),
            type = "string",
            name = "NotificationTargetARN",
            target_id = prelude.String.id,
        }),
        RoleARN = schema.new({
            id = id.from(_N, "LifecycleHook", "RoleARN"),
            type = "string",
            name = "RoleARN",
            target_id = prelude.String.id,
        }),
        NotificationMetadata = schema.new({
            id = id.from(_N, "LifecycleHook", "NotificationMetadata"),
            type = "string",
            name = "NotificationMetadata",
            target_id = prelude.String.id,
        }),
        HeartbeatTimeout = schema.new({
            id = id.from(_N, "LifecycleHook", "HeartbeatTimeout"),
            type = "integer",
            name = "HeartbeatTimeout",
            target_id = prelude.Integer.id,
        }),
        GlobalTimeout = schema.new({
            id = id.from(_N, "LifecycleHook", "GlobalTimeout"),
            type = "integer",
            name = "GlobalTimeout",
            target_id = prelude.Integer.id,
        }),
        DefaultResult = schema.new({
            id = id.from(_N, "LifecycleHook", "DefaultResult"),
            type = "string",
            name = "DefaultResult",
            target_id = prelude.String.id,
        }),
    },
})

M.DescribeLifecycleHooksOutput = schema.new({
    id = id.from(_N, "DescribeLifecycleHooksAnswer"),
    type = "structure",
    members = {
        LifecycleHooks = schema.new({
            id = id.from(_N, "DescribeLifecycleHooksOutput", "LifecycleHooks"),
            type = "list",
            name = "LifecycleHooks",
            target_id = prelude.Document.id,
            list_member = M.LifecycleHook,
        }),
    },
})

M.DescribeLifecycleHookTypesInput = schema.new({
    id = id.from(_N, "Unit"),
    type = "structure",
})

M.DescribeLifecycleHookTypesOutput = schema.new({
    id = id.from(_N, "DescribeLifecycleHookTypesAnswer"),
    type = "structure",
    members = {
        LifecycleHookTypes = schema.new({
            id = id.from(_N, "DescribeLifecycleHookTypesOutput", "LifecycleHookTypes"),
            type = "list",
            name = "LifecycleHookTypes",
            target_id = prelude.Document.id,
            list_member = prelude.String,
        }),
    },
})

M.DescribeLoadBalancersInput = schema.new({
    id = id.from(_N, "DescribeLoadBalancersRequest"),
    type = "structure",
    members = {
        AutoScalingGroupName = schema.new({
            id = id.from(_N, "DescribeLoadBalancersInput", "AutoScalingGroupName"),
            type = "string",
            name = "AutoScalingGroupName",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        NextToken = schema.new({
            id = id.from(_N, "DescribeLoadBalancersInput", "NextToken"),
            type = "string",
            name = "NextToken",
            target_id = prelude.String.id,
        }),
        MaxRecords = schema.new({
            id = id.from(_N, "DescribeLoadBalancersInput", "MaxRecords"),
            type = "integer",
            name = "MaxRecords",
            target_id = prelude.Integer.id,
        }),
    },
})

M.LoadBalancerState = schema.new({
    id = id.from(_N, "LoadBalancerState"),
    type = "structure",
    members = {
        LoadBalancerName = schema.new({
            id = id.from(_N, "LoadBalancerState", "LoadBalancerName"),
            type = "string",
            name = "LoadBalancerName",
            target_id = prelude.String.id,
        }),
        State = schema.new({
            id = id.from(_N, "LoadBalancerState", "State"),
            type = "string",
            name = "State",
            target_id = prelude.String.id,
        }),
    },
})

M.DescribeLoadBalancersOutput = schema.new({
    id = id.from(_N, "DescribeLoadBalancersResponse"),
    type = "structure",
    members = {
        LoadBalancers = schema.new({
            id = id.from(_N, "DescribeLoadBalancersOutput", "LoadBalancers"),
            type = "list",
            name = "LoadBalancers",
            target_id = prelude.Document.id,
            list_member = M.LoadBalancerState,
        }),
        NextToken = schema.new({
            id = id.from(_N, "DescribeLoadBalancersOutput", "NextToken"),
            type = "string",
            name = "NextToken",
            target_id = prelude.String.id,
        }),
    },
})

M.DescribeLoadBalancerTargetGroupsInput = schema.new({
    id = id.from(_N, "DescribeLoadBalancerTargetGroupsRequest"),
    type = "structure",
    members = {
        AutoScalingGroupName = schema.new({
            id = id.from(_N, "DescribeLoadBalancerTargetGroupsInput", "AutoScalingGroupName"),
            type = "string",
            name = "AutoScalingGroupName",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        NextToken = schema.new({
            id = id.from(_N, "DescribeLoadBalancerTargetGroupsInput", "NextToken"),
            type = "string",
            name = "NextToken",
            target_id = prelude.String.id,
        }),
        MaxRecords = schema.new({
            id = id.from(_N, "DescribeLoadBalancerTargetGroupsInput", "MaxRecords"),
            type = "integer",
            name = "MaxRecords",
            target_id = prelude.Integer.id,
        }),
    },
})

M.LoadBalancerTargetGroupState = schema.new({
    id = id.from(_N, "LoadBalancerTargetGroupState"),
    type = "structure",
    members = {
        LoadBalancerTargetGroupARN = schema.new({
            id = id.from(_N, "LoadBalancerTargetGroupState", "LoadBalancerTargetGroupARN"),
            type = "string",
            name = "LoadBalancerTargetGroupARN",
            target_id = prelude.String.id,
        }),
        State = schema.new({
            id = id.from(_N, "LoadBalancerTargetGroupState", "State"),
            type = "string",
            name = "State",
            target_id = prelude.String.id,
        }),
    },
})

M.DescribeLoadBalancerTargetGroupsOutput = schema.new({
    id = id.from(_N, "DescribeLoadBalancerTargetGroupsResponse"),
    type = "structure",
    members = {
        LoadBalancerTargetGroups = schema.new({
            id = id.from(_N, "DescribeLoadBalancerTargetGroupsOutput", "LoadBalancerTargetGroups"),
            type = "list",
            name = "LoadBalancerTargetGroups",
            target_id = prelude.Document.id,
            list_member = M.LoadBalancerTargetGroupState,
        }),
        NextToken = schema.new({
            id = id.from(_N, "DescribeLoadBalancerTargetGroupsOutput", "NextToken"),
            type = "string",
            name = "NextToken",
            target_id = prelude.String.id,
        }),
    },
})

M.DescribeMetricCollectionTypesInput = schema.new({
    id = id.from(_N, "Unit"),
    type = "structure",
})

M.MetricGranularityType = schema.new({
    id = id.from(_N, "MetricGranularityType"),
    type = "structure",
    members = {
        Granularity = schema.new({
            id = id.from(_N, "MetricGranularityType", "Granularity"),
            type = "string",
            name = "Granularity",
            target_id = prelude.String.id,
        }),
    },
})

M.MetricCollectionType = schema.new({
    id = id.from(_N, "MetricCollectionType"),
    type = "structure",
    members = {
        Metric = schema.new({
            id = id.from(_N, "MetricCollectionType", "Metric"),
            type = "string",
            name = "Metric",
            target_id = prelude.String.id,
        }),
    },
})

M.DescribeMetricCollectionTypesOutput = schema.new({
    id = id.from(_N, "DescribeMetricCollectionTypesAnswer"),
    type = "structure",
    members = {
        Metrics = schema.new({
            id = id.from(_N, "DescribeMetricCollectionTypesOutput", "Metrics"),
            type = "list",
            name = "Metrics",
            target_id = prelude.Document.id,
            list_member = M.MetricCollectionType,
        }),
        Granularities = schema.new({
            id = id.from(_N, "DescribeMetricCollectionTypesOutput", "Granularities"),
            type = "list",
            name = "Granularities",
            target_id = prelude.Document.id,
            list_member = M.MetricGranularityType,
        }),
    },
})

M.DescribeNotificationConfigurationsInput = schema.new({
    id = id.from(_N, "DescribeNotificationConfigurationsType"),
    type = "structure",
    members = {
        AutoScalingGroupNames = schema.new({
            id = id.from(_N, "DescribeNotificationConfigurationsInput", "AutoScalingGroupNames"),
            type = "list",
            name = "AutoScalingGroupNames",
            target_id = prelude.Document.id,
            list_member = prelude.String,
        }),
        NextToken = schema.new({
            id = id.from(_N, "DescribeNotificationConfigurationsInput", "NextToken"),
            type = "string",
            name = "NextToken",
            target_id = prelude.String.id,
        }),
        MaxRecords = schema.new({
            id = id.from(_N, "DescribeNotificationConfigurationsInput", "MaxRecords"),
            type = "integer",
            name = "MaxRecords",
            target_id = prelude.Integer.id,
        }),
    },
})

M.NotificationConfiguration = schema.new({
    id = id.from(_N, "NotificationConfiguration"),
    type = "structure",
    members = {
        AutoScalingGroupName = schema.new({
            id = id.from(_N, "NotificationConfiguration", "AutoScalingGroupName"),
            type = "string",
            name = "AutoScalingGroupName",
            target_id = prelude.String.id,
        }),
        TopicARN = schema.new({
            id = id.from(_N, "NotificationConfiguration", "TopicARN"),
            type = "string",
            name = "TopicARN",
            target_id = prelude.String.id,
        }),
        NotificationType = schema.new({
            id = id.from(_N, "NotificationConfiguration", "NotificationType"),
            type = "string",
            name = "NotificationType",
            target_id = prelude.String.id,
        }),
    },
})

M.DescribeNotificationConfigurationsOutput = schema.new({
    id = id.from(_N, "DescribeNotificationConfigurationsAnswer"),
    type = "structure",
    members = {
        NotificationConfigurations = schema.new({
            id = id.from(_N, "DescribeNotificationConfigurationsOutput", "NotificationConfigurations"),
            type = "list",
            name = "NotificationConfigurations",
            target_id = prelude.Document.id,
            list_member = M.NotificationConfiguration,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        NextToken = schema.new({
            id = id.from(_N, "DescribeNotificationConfigurationsOutput", "NextToken"),
            type = "string",
            name = "NextToken",
            target_id = prelude.String.id,
        }),
    },
})

M.DescribePoliciesInput = schema.new({
    id = id.from(_N, "DescribePoliciesType"),
    type = "structure",
    members = {
        AutoScalingGroupName = schema.new({
            id = id.from(_N, "DescribePoliciesInput", "AutoScalingGroupName"),
            type = "string",
            name = "AutoScalingGroupName",
            target_id = prelude.String.id,
        }),
        PolicyNames = schema.new({
            id = id.from(_N, "DescribePoliciesInput", "PolicyNames"),
            type = "list",
            name = "PolicyNames",
            target_id = prelude.Document.id,
            list_member = prelude.String,
        }),
        PolicyTypes = schema.new({
            id = id.from(_N, "DescribePoliciesInput", "PolicyTypes"),
            type = "list",
            name = "PolicyTypes",
            target_id = prelude.Document.id,
            list_member = prelude.String,
        }),
        NextToken = schema.new({
            id = id.from(_N, "DescribePoliciesInput", "NextToken"),
            type = "string",
            name = "NextToken",
            target_id = prelude.String.id,
        }),
        MaxRecords = schema.new({
            id = id.from(_N, "DescribePoliciesInput", "MaxRecords"),
            type = "integer",
            name = "MaxRecords",
            target_id = prelude.Integer.id,
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

M.Metric = schema.new({
    id = id.from(_N, "Metric"),
    type = "structure",
    members = {
        Namespace = schema.new({
            id = id.from(_N, "Metric", "Namespace"),
            type = "string",
            name = "Namespace",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        MetricName = schema.new({
            id = id.from(_N, "Metric", "MetricName"),
            type = "string",
            name = "MetricName",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        Dimensions = schema.new({
            id = id.from(_N, "Metric", "Dimensions"),
            type = "list",
            name = "Dimensions",
            target_id = prelude.Document.id,
            list_member = M.MetricDimension,
        }),
    },
})

M.MetricStat = schema.new({
    id = id.from(_N, "MetricStat"),
    type = "structure",
    members = {
        Metric = schema.new({
            id = id.from(_N, "MetricStat", "Metric"),
            type = "structure",
            name = "Metric",
            target_id = id.from(_N, "Metric"),
            target = M.Metric,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        Stat = schema.new({
            id = id.from(_N, "MetricStat", "Stat"),
            type = "string",
            name = "Stat",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        Unit = schema.new({
            id = id.from(_N, "MetricStat", "Unit"),
            type = "string",
            name = "Unit",
            target_id = prelude.String.id,
        }),
    },
})

M.MetricDataQuery = schema.new({
    id = id.from(_N, "MetricDataQuery"),
    type = "structure",
    members = {
        Id = schema.new({
            id = id.from(_N, "MetricDataQuery", "Id"),
            type = "string",
            name = "Id",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        Expression = schema.new({
            id = id.from(_N, "MetricDataQuery", "Expression"),
            type = "string",
            name = "Expression",
            target_id = prelude.String.id,
        }),
        MetricStat = schema.new({
            id = id.from(_N, "MetricDataQuery", "MetricStat"),
            type = "structure",
            name = "MetricStat",
            target_id = id.from(_N, "MetricStat"),
            target = M.MetricStat,
        }),
        Label = schema.new({
            id = id.from(_N, "MetricDataQuery", "Label"),
            type = "string",
            name = "Label",
            target_id = prelude.String.id,
        }),
        ReturnData = schema.new({
            id = id.from(_N, "MetricDataQuery", "ReturnData"),
            type = "boolean",
            name = "ReturnData",
            target_id = prelude.Boolean.id,
        }),
    },
})

M.PredictiveScalingCustomizedCapacityMetric = schema.new({
    id = id.from(_N, "PredictiveScalingCustomizedCapacityMetric"),
    type = "structure",
    members = {
        MetricDataQueries = schema.new({
            id = id.from(_N, "PredictiveScalingCustomizedCapacityMetric", "MetricDataQueries"),
            type = "list",
            name = "MetricDataQueries",
            target_id = prelude.Document.id,
            list_member = M.MetricDataQuery,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.PredictiveScalingCustomizedLoadMetric = schema.new({
    id = id.from(_N, "PredictiveScalingCustomizedLoadMetric"),
    type = "structure",
    members = {
        MetricDataQueries = schema.new({
            id = id.from(_N, "PredictiveScalingCustomizedLoadMetric", "MetricDataQueries"),
            type = "list",
            name = "MetricDataQueries",
            target_id = prelude.Document.id,
            list_member = M.MetricDataQuery,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.PredictiveScalingCustomizedScalingMetric = schema.new({
    id = id.from(_N, "PredictiveScalingCustomizedScalingMetric"),
    type = "structure",
    members = {
        MetricDataQueries = schema.new({
            id = id.from(_N, "PredictiveScalingCustomizedScalingMetric", "MetricDataQueries"),
            type = "list",
            name = "MetricDataQueries",
            target_id = prelude.Document.id,
            list_member = M.MetricDataQuery,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.PredictiveScalingPredefinedLoadMetric = schema.new({
    id = id.from(_N, "PredictiveScalingPredefinedLoadMetric"),
    type = "structure",
    members = {
        PredefinedMetricType = schema.new({
            id = id.from(_N, "PredictiveScalingPredefinedLoadMetric", "PredefinedMetricType"),
            type = "string",
            name = "PredefinedMetricType",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        ResourceLabel = schema.new({
            id = id.from(_N, "PredictiveScalingPredefinedLoadMetric", "ResourceLabel"),
            type = "string",
            name = "ResourceLabel",
            target_id = prelude.String.id,
        }),
    },
})

M.PredictiveScalingPredefinedMetricPair = schema.new({
    id = id.from(_N, "PredictiveScalingPredefinedMetricPair"),
    type = "structure",
    members = {
        PredefinedMetricType = schema.new({
            id = id.from(_N, "PredictiveScalingPredefinedMetricPair", "PredefinedMetricType"),
            type = "string",
            name = "PredefinedMetricType",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        ResourceLabel = schema.new({
            id = id.from(_N, "PredictiveScalingPredefinedMetricPair", "ResourceLabel"),
            type = "string",
            name = "ResourceLabel",
            target_id = prelude.String.id,
        }),
    },
})

M.PredictiveScalingPredefinedScalingMetric = schema.new({
    id = id.from(_N, "PredictiveScalingPredefinedScalingMetric"),
    type = "structure",
    members = {
        PredefinedMetricType = schema.new({
            id = id.from(_N, "PredictiveScalingPredefinedScalingMetric", "PredefinedMetricType"),
            type = "string",
            name = "PredefinedMetricType",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        ResourceLabel = schema.new({
            id = id.from(_N, "PredictiveScalingPredefinedScalingMetric", "ResourceLabel"),
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
            target_id = id.from(_N, "PredictiveScalingPredefinedMetricPair"),
            target = M.PredictiveScalingPredefinedMetricPair,
        }),
        PredefinedScalingMetricSpecification = schema.new({
            id = id.from(_N, "PredictiveScalingMetricSpecification", "PredefinedScalingMetricSpecification"),
            type = "structure",
            name = "PredefinedScalingMetricSpecification",
            target_id = id.from(_N, "PredictiveScalingPredefinedScalingMetric"),
            target = M.PredictiveScalingPredefinedScalingMetric,
        }),
        PredefinedLoadMetricSpecification = schema.new({
            id = id.from(_N, "PredictiveScalingMetricSpecification", "PredefinedLoadMetricSpecification"),
            type = "structure",
            name = "PredefinedLoadMetricSpecification",
            target_id = id.from(_N, "PredictiveScalingPredefinedLoadMetric"),
            target = M.PredictiveScalingPredefinedLoadMetric,
        }),
        CustomizedScalingMetricSpecification = schema.new({
            id = id.from(_N, "PredictiveScalingMetricSpecification", "CustomizedScalingMetricSpecification"),
            type = "structure",
            name = "CustomizedScalingMetricSpecification",
            target_id = id.from(_N, "PredictiveScalingCustomizedScalingMetric"),
            target = M.PredictiveScalingCustomizedScalingMetric,
        }),
        CustomizedLoadMetricSpecification = schema.new({
            id = id.from(_N, "PredictiveScalingMetricSpecification", "CustomizedLoadMetricSpecification"),
            type = "structure",
            name = "CustomizedLoadMetricSpecification",
            target_id = id.from(_N, "PredictiveScalingCustomizedLoadMetric"),
            target = M.PredictiveScalingCustomizedLoadMetric,
        }),
        CustomizedCapacityMetricSpecification = schema.new({
            id = id.from(_N, "PredictiveScalingMetricSpecification", "CustomizedCapacityMetricSpecification"),
            type = "structure",
            name = "CustomizedCapacityMetricSpecification",
            target_id = id.from(_N, "PredictiveScalingCustomizedCapacityMetric"),
            target = M.PredictiveScalingCustomizedCapacityMetric,
        }),
    },
})

M.PredictiveScalingConfiguration = schema.new({
    id = id.from(_N, "PredictiveScalingConfiguration"),
    type = "structure",
    members = {
        MetricSpecifications = schema.new({
            id = id.from(_N, "PredictiveScalingConfiguration", "MetricSpecifications"),
            type = "list",
            name = "MetricSpecifications",
            target_id = prelude.Document.id,
            list_member = M.PredictiveScalingMetricSpecification,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        Mode = schema.new({
            id = id.from(_N, "PredictiveScalingConfiguration", "Mode"),
            type = "string",
            name = "Mode",
            target_id = prelude.String.id,
        }),
        SchedulingBufferTime = schema.new({
            id = id.from(_N, "PredictiveScalingConfiguration", "SchedulingBufferTime"),
            type = "integer",
            name = "SchedulingBufferTime",
            target_id = prelude.Integer.id,
        }),
        MaxCapacityBreachBehavior = schema.new({
            id = id.from(_N, "PredictiveScalingConfiguration", "MaxCapacityBreachBehavior"),
            type = "string",
            name = "MaxCapacityBreachBehavior",
            target_id = prelude.String.id,
        }),
        MaxCapacityBuffer = schema.new({
            id = id.from(_N, "PredictiveScalingConfiguration", "MaxCapacityBuffer"),
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

M.TargetTrackingMetricStat = schema.new({
    id = id.from(_N, "TargetTrackingMetricStat"),
    type = "structure",
    members = {
        Metric = schema.new({
            id = id.from(_N, "TargetTrackingMetricStat", "Metric"),
            type = "structure",
            name = "Metric",
            target_id = id.from(_N, "Metric"),
            target = M.Metric,
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
        Period = schema.new({
            id = id.from(_N, "TargetTrackingMetricStat", "Period"),
            type = "integer",
            name = "Period",
            target_id = prelude.Integer.id,
        }),
    },
})

M.TargetTrackingMetricDataQuery = schema.new({
    id = id.from(_N, "TargetTrackingMetricDataQuery"),
    type = "structure",
    members = {
        Id = schema.new({
            id = id.from(_N, "TargetTrackingMetricDataQuery", "Id"),
            type = "string",
            name = "Id",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        Expression = schema.new({
            id = id.from(_N, "TargetTrackingMetricDataQuery", "Expression"),
            type = "string",
            name = "Expression",
            target_id = prelude.String.id,
        }),
        MetricStat = schema.new({
            id = id.from(_N, "TargetTrackingMetricDataQuery", "MetricStat"),
            type = "structure",
            name = "MetricStat",
            target_id = id.from(_N, "TargetTrackingMetricStat"),
            target = M.TargetTrackingMetricStat,
        }),
        Label = schema.new({
            id = id.from(_N, "TargetTrackingMetricDataQuery", "Label"),
            type = "string",
            name = "Label",
            target_id = prelude.String.id,
        }),
        Period = schema.new({
            id = id.from(_N, "TargetTrackingMetricDataQuery", "Period"),
            type = "integer",
            name = "Period",
            target_id = prelude.Integer.id,
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
        Period = schema.new({
            id = id.from(_N, "CustomizedMetricSpecification", "Period"),
            type = "integer",
            name = "Period",
            target_id = prelude.Integer.id,
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

M.TargetTrackingConfiguration = schema.new({
    id = id.from(_N, "TargetTrackingConfiguration"),
    type = "structure",
    members = {
        PredefinedMetricSpecification = schema.new({
            id = id.from(_N, "TargetTrackingConfiguration", "PredefinedMetricSpecification"),
            type = "structure",
            name = "PredefinedMetricSpecification",
            target_id = id.from(_N, "PredefinedMetricSpecification"),
            target = M.PredefinedMetricSpecification,
        }),
        CustomizedMetricSpecification = schema.new({
            id = id.from(_N, "TargetTrackingConfiguration", "CustomizedMetricSpecification"),
            type = "structure",
            name = "CustomizedMetricSpecification",
            target_id = id.from(_N, "CustomizedMetricSpecification"),
            target = M.CustomizedMetricSpecification,
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
    },
})

M.ScalingPolicy = schema.new({
    id = id.from(_N, "ScalingPolicy"),
    type = "structure",
    members = {
        AutoScalingGroupName = schema.new({
            id = id.from(_N, "ScalingPolicy", "AutoScalingGroupName"),
            type = "string",
            name = "AutoScalingGroupName",
            target_id = prelude.String.id,
        }),
        PolicyName = schema.new({
            id = id.from(_N, "ScalingPolicy", "PolicyName"),
            type = "string",
            name = "PolicyName",
            target_id = prelude.String.id,
        }),
        PolicyARN = schema.new({
            id = id.from(_N, "ScalingPolicy", "PolicyARN"),
            type = "string",
            name = "PolicyARN",
            target_id = prelude.String.id,
        }),
        PolicyType = schema.new({
            id = id.from(_N, "ScalingPolicy", "PolicyType"),
            type = "string",
            name = "PolicyType",
            target_id = prelude.String.id,
        }),
        AdjustmentType = schema.new({
            id = id.from(_N, "ScalingPolicy", "AdjustmentType"),
            type = "string",
            name = "AdjustmentType",
            target_id = prelude.String.id,
        }),
        MinAdjustmentStep = schema.new({
            id = id.from(_N, "ScalingPolicy", "MinAdjustmentStep"),
            type = "integer",
            name = "MinAdjustmentStep",
            target_id = prelude.Integer.id,
        }),
        MinAdjustmentMagnitude = schema.new({
            id = id.from(_N, "ScalingPolicy", "MinAdjustmentMagnitude"),
            type = "integer",
            name = "MinAdjustmentMagnitude",
            target_id = prelude.Integer.id,
        }),
        ScalingAdjustment = schema.new({
            id = id.from(_N, "ScalingPolicy", "ScalingAdjustment"),
            type = "integer",
            name = "ScalingAdjustment",
            target_id = prelude.Integer.id,
        }),
        Cooldown = schema.new({
            id = id.from(_N, "ScalingPolicy", "Cooldown"),
            type = "integer",
            name = "Cooldown",
            target_id = prelude.Integer.id,
        }),
        StepAdjustments = schema.new({
            id = id.from(_N, "ScalingPolicy", "StepAdjustments"),
            type = "list",
            name = "StepAdjustments",
            target_id = prelude.Document.id,
            list_member = M.StepAdjustment,
        }),
        MetricAggregationType = schema.new({
            id = id.from(_N, "ScalingPolicy", "MetricAggregationType"),
            type = "string",
            name = "MetricAggregationType",
            target_id = prelude.String.id,
        }),
        EstimatedInstanceWarmup = schema.new({
            id = id.from(_N, "ScalingPolicy", "EstimatedInstanceWarmup"),
            type = "integer",
            name = "EstimatedInstanceWarmup",
            target_id = prelude.Integer.id,
        }),
        Alarms = schema.new({
            id = id.from(_N, "ScalingPolicy", "Alarms"),
            type = "list",
            name = "Alarms",
            target_id = prelude.Document.id,
            list_member = M.Alarm,
        }),
        TargetTrackingConfiguration = schema.new({
            id = id.from(_N, "ScalingPolicy", "TargetTrackingConfiguration"),
            type = "structure",
            name = "TargetTrackingConfiguration",
            target_id = id.from(_N, "TargetTrackingConfiguration"),
            target = M.TargetTrackingConfiguration,
        }),
        Enabled = schema.new({
            id = id.from(_N, "ScalingPolicy", "Enabled"),
            type = "boolean",
            name = "Enabled",
            target_id = prelude.Boolean.id,
        }),
        PredictiveScalingConfiguration = schema.new({
            id = id.from(_N, "ScalingPolicy", "PredictiveScalingConfiguration"),
            type = "structure",
            name = "PredictiveScalingConfiguration",
            target_id = id.from(_N, "PredictiveScalingConfiguration"),
            target = M.PredictiveScalingConfiguration,
        }),
    },
})

M.DescribePoliciesOutput = schema.new({
    id = id.from(_N, "PoliciesType"),
    type = "structure",
    members = {
        ScalingPolicies = schema.new({
            id = id.from(_N, "DescribePoliciesOutput", "ScalingPolicies"),
            type = "list",
            name = "ScalingPolicies",
            target_id = prelude.Document.id,
            list_member = M.ScalingPolicy,
        }),
        NextToken = schema.new({
            id = id.from(_N, "DescribePoliciesOutput", "NextToken"),
            type = "string",
            name = "NextToken",
            target_id = prelude.String.id,
        }),
    },
})

M.DescribeScalingActivitiesInput = schema.new({
    id = id.from(_N, "DescribeScalingActivitiesType"),
    type = "structure",
    members = {
        ActivityIds = schema.new({
            id = id.from(_N, "DescribeScalingActivitiesInput", "ActivityIds"),
            type = "list",
            name = "ActivityIds",
            target_id = prelude.Document.id,
            list_member = prelude.String,
        }),
        AutoScalingGroupName = schema.new({
            id = id.from(_N, "DescribeScalingActivitiesInput", "AutoScalingGroupName"),
            type = "string",
            name = "AutoScalingGroupName",
            target_id = prelude.String.id,
        }),
        IncludeDeletedGroups = schema.new({
            id = id.from(_N, "DescribeScalingActivitiesInput", "IncludeDeletedGroups"),
            type = "boolean",
            name = "IncludeDeletedGroups",
            target_id = prelude.Boolean.id,
        }),
        MaxRecords = schema.new({
            id = id.from(_N, "DescribeScalingActivitiesInput", "MaxRecords"),
            type = "integer",
            name = "MaxRecords",
            target_id = prelude.Integer.id,
        }),
        NextToken = schema.new({
            id = id.from(_N, "DescribeScalingActivitiesInput", "NextToken"),
            type = "string",
            name = "NextToken",
            target_id = prelude.String.id,
        }),
        Filters = schema.new({
            id = id.from(_N, "DescribeScalingActivitiesInput", "Filters"),
            type = "list",
            name = "Filters",
            target_id = prelude.Document.id,
            list_member = M.Filter,
        }),
    },
})

M.DescribeScalingActivitiesOutput = schema.new({
    id = id.from(_N, "ActivitiesType"),
    type = "structure",
    members = {
        Activities = schema.new({
            id = id.from(_N, "DescribeScalingActivitiesOutput", "Activities"),
            type = "list",
            name = "Activities",
            target_id = prelude.Document.id,
            list_member = M.Activity,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        NextToken = schema.new({
            id = id.from(_N, "DescribeScalingActivitiesOutput", "NextToken"),
            type = "string",
            name = "NextToken",
            target_id = prelude.String.id,
        }),
    },
})

M.DescribeScalingProcessTypesInput = schema.new({
    id = id.from(_N, "Unit"),
    type = "structure",
})

M.ProcessType = schema.new({
    id = id.from(_N, "ProcessType"),
    type = "structure",
    members = {
        ProcessName = schema.new({
            id = id.from(_N, "ProcessType", "ProcessName"),
            type = "string",
            name = "ProcessName",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.DescribeScalingProcessTypesOutput = schema.new({
    id = id.from(_N, "ProcessesType"),
    type = "structure",
    members = {
        Processes = schema.new({
            id = id.from(_N, "DescribeScalingProcessTypesOutput", "Processes"),
            type = "list",
            name = "Processes",
            target_id = prelude.Document.id,
            list_member = M.ProcessType,
        }),
    },
})

M.DescribeScheduledActionsInput = schema.new({
    id = id.from(_N, "DescribeScheduledActionsType"),
    type = "structure",
    members = {
        AutoScalingGroupName = schema.new({
            id = id.from(_N, "DescribeScheduledActionsInput", "AutoScalingGroupName"),
            type = "string",
            name = "AutoScalingGroupName",
            target_id = prelude.String.id,
        }),
        ScheduledActionNames = schema.new({
            id = id.from(_N, "DescribeScheduledActionsInput", "ScheduledActionNames"),
            type = "list",
            name = "ScheduledActionNames",
            target_id = prelude.Document.id,
            list_member = prelude.String,
        }),
        StartTime = schema.new({
            id = id.from(_N, "DescribeScheduledActionsInput", "StartTime"),
            type = "timestamp",
            name = "StartTime",
            target_id = prelude.Timestamp.id,
        }),
        EndTime = schema.new({
            id = id.from(_N, "DescribeScheduledActionsInput", "EndTime"),
            type = "timestamp",
            name = "EndTime",
            target_id = prelude.Timestamp.id,
        }),
        NextToken = schema.new({
            id = id.from(_N, "DescribeScheduledActionsInput", "NextToken"),
            type = "string",
            name = "NextToken",
            target_id = prelude.String.id,
        }),
        MaxRecords = schema.new({
            id = id.from(_N, "DescribeScheduledActionsInput", "MaxRecords"),
            type = "integer",
            name = "MaxRecords",
            target_id = prelude.Integer.id,
        }),
    },
})

M.ScheduledUpdateGroupAction = schema.new({
    id = id.from(_N, "ScheduledUpdateGroupAction"),
    type = "structure",
    members = {
        AutoScalingGroupName = schema.new({
            id = id.from(_N, "ScheduledUpdateGroupAction", "AutoScalingGroupName"),
            type = "string",
            name = "AutoScalingGroupName",
            target_id = prelude.String.id,
        }),
        ScheduledActionName = schema.new({
            id = id.from(_N, "ScheduledUpdateGroupAction", "ScheduledActionName"),
            type = "string",
            name = "ScheduledActionName",
            target_id = prelude.String.id,
        }),
        ScheduledActionARN = schema.new({
            id = id.from(_N, "ScheduledUpdateGroupAction", "ScheduledActionARN"),
            type = "string",
            name = "ScheduledActionARN",
            target_id = prelude.String.id,
        }),
        Time = schema.new({
            id = id.from(_N, "ScheduledUpdateGroupAction", "Time"),
            type = "timestamp",
            name = "Time",
            target_id = prelude.Timestamp.id,
        }),
        StartTime = schema.new({
            id = id.from(_N, "ScheduledUpdateGroupAction", "StartTime"),
            type = "timestamp",
            name = "StartTime",
            target_id = prelude.Timestamp.id,
        }),
        EndTime = schema.new({
            id = id.from(_N, "ScheduledUpdateGroupAction", "EndTime"),
            type = "timestamp",
            name = "EndTime",
            target_id = prelude.Timestamp.id,
        }),
        Recurrence = schema.new({
            id = id.from(_N, "ScheduledUpdateGroupAction", "Recurrence"),
            type = "string",
            name = "Recurrence",
            target_id = prelude.String.id,
        }),
        MinSize = schema.new({
            id = id.from(_N, "ScheduledUpdateGroupAction", "MinSize"),
            type = "integer",
            name = "MinSize",
            target_id = prelude.Integer.id,
        }),
        MaxSize = schema.new({
            id = id.from(_N, "ScheduledUpdateGroupAction", "MaxSize"),
            type = "integer",
            name = "MaxSize",
            target_id = prelude.Integer.id,
        }),
        DesiredCapacity = schema.new({
            id = id.from(_N, "ScheduledUpdateGroupAction", "DesiredCapacity"),
            type = "integer",
            name = "DesiredCapacity",
            target_id = prelude.Integer.id,
        }),
        TimeZone = schema.new({
            id = id.from(_N, "ScheduledUpdateGroupAction", "TimeZone"),
            type = "string",
            name = "TimeZone",
            target_id = prelude.String.id,
        }),
    },
})

M.DescribeScheduledActionsOutput = schema.new({
    id = id.from(_N, "ScheduledActionsType"),
    type = "structure",
    members = {
        ScheduledUpdateGroupActions = schema.new({
            id = id.from(_N, "DescribeScheduledActionsOutput", "ScheduledUpdateGroupActions"),
            type = "list",
            name = "ScheduledUpdateGroupActions",
            target_id = prelude.Document.id,
            list_member = M.ScheduledUpdateGroupAction,
        }),
        NextToken = schema.new({
            id = id.from(_N, "DescribeScheduledActionsOutput", "NextToken"),
            type = "string",
            name = "NextToken",
            target_id = prelude.String.id,
        }),
    },
})

M.DescribeTagsInput = schema.new({
    id = id.from(_N, "DescribeTagsType"),
    type = "structure",
    members = {
        Filters = schema.new({
            id = id.from(_N, "DescribeTagsInput", "Filters"),
            type = "list",
            name = "Filters",
            target_id = prelude.Document.id,
            list_member = M.Filter,
        }),
        NextToken = schema.new({
            id = id.from(_N, "DescribeTagsInput", "NextToken"),
            type = "string",
            name = "NextToken",
            target_id = prelude.String.id,
        }),
        MaxRecords = schema.new({
            id = id.from(_N, "DescribeTagsInput", "MaxRecords"),
            type = "integer",
            name = "MaxRecords",
            target_id = prelude.Integer.id,
        }),
    },
})

M.DescribeTagsOutput = schema.new({
    id = id.from(_N, "TagsType"),
    type = "structure",
    members = {
        Tags = schema.new({
            id = id.from(_N, "DescribeTagsOutput", "Tags"),
            type = "list",
            name = "Tags",
            target_id = prelude.Document.id,
            list_member = M.TagDescription,
        }),
        NextToken = schema.new({
            id = id.from(_N, "DescribeTagsOutput", "NextToken"),
            type = "string",
            name = "NextToken",
            target_id = prelude.String.id,
        }),
    },
})

M.DescribeTerminationPolicyTypesInput = schema.new({
    id = id.from(_N, "Unit"),
    type = "structure",
})

M.DescribeTerminationPolicyTypesOutput = schema.new({
    id = id.from(_N, "DescribeTerminationPolicyTypesAnswer"),
    type = "structure",
    members = {
        TerminationPolicyTypes = schema.new({
            id = id.from(_N, "DescribeTerminationPolicyTypesOutput", "TerminationPolicyTypes"),
            type = "list",
            name = "TerminationPolicyTypes",
            target_id = prelude.Document.id,
            list_member = prelude.String,
        }),
    },
})

M.DescribeTrafficSourcesInput = schema.new({
    id = id.from(_N, "DescribeTrafficSourcesRequest"),
    type = "structure",
    members = {
        AutoScalingGroupName = schema.new({
            id = id.from(_N, "DescribeTrafficSourcesInput", "AutoScalingGroupName"),
            type = "string",
            name = "AutoScalingGroupName",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        TrafficSourceType = schema.new({
            id = id.from(_N, "DescribeTrafficSourcesInput", "TrafficSourceType"),
            type = "string",
            name = "TrafficSourceType",
            target_id = prelude.String.id,
        }),
        NextToken = schema.new({
            id = id.from(_N, "DescribeTrafficSourcesInput", "NextToken"),
            type = "string",
            name = "NextToken",
            target_id = prelude.String.id,
        }),
        MaxRecords = schema.new({
            id = id.from(_N, "DescribeTrafficSourcesInput", "MaxRecords"),
            type = "integer",
            name = "MaxRecords",
            target_id = prelude.Integer.id,
        }),
    },
})

M.TrafficSourceState = schema.new({
    id = id.from(_N, "TrafficSourceState"),
    type = "structure",
    members = {
        TrafficSource = schema.new({
            id = id.from(_N, "TrafficSourceState", "TrafficSource"),
            type = "string",
            name = "TrafficSource",
            target_id = prelude.String.id,
        }),
        State = schema.new({
            id = id.from(_N, "TrafficSourceState", "State"),
            type = "string",
            name = "State",
            target_id = prelude.String.id,
        }),
        Identifier = schema.new({
            id = id.from(_N, "TrafficSourceState", "Identifier"),
            type = "string",
            name = "Identifier",
            target_id = prelude.String.id,
        }),
        Type = schema.new({
            id = id.from(_N, "TrafficSourceState", "Type"),
            type = "string",
            name = "Type",
            target_id = prelude.String.id,
        }),
    },
})

M.DescribeTrafficSourcesOutput = schema.new({
    id = id.from(_N, "DescribeTrafficSourcesResponse"),
    type = "structure",
    members = {
        TrafficSources = schema.new({
            id = id.from(_N, "DescribeTrafficSourcesOutput", "TrafficSources"),
            type = "list",
            name = "TrafficSources",
            target_id = prelude.Document.id,
            list_member = M.TrafficSourceState,
        }),
        NextToken = schema.new({
            id = id.from(_N, "DescribeTrafficSourcesOutput", "NextToken"),
            type = "string",
            name = "NextToken",
            target_id = prelude.String.id,
        }),
    },
})

M.DescribeWarmPoolInput = schema.new({
    id = id.from(_N, "DescribeWarmPoolType"),
    type = "structure",
    members = {
        AutoScalingGroupName = schema.new({
            id = id.from(_N, "DescribeWarmPoolInput", "AutoScalingGroupName"),
            type = "string",
            name = "AutoScalingGroupName",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        MaxRecords = schema.new({
            id = id.from(_N, "DescribeWarmPoolInput", "MaxRecords"),
            type = "integer",
            name = "MaxRecords",
            target_id = prelude.Integer.id,
        }),
        NextToken = schema.new({
            id = id.from(_N, "DescribeWarmPoolInput", "NextToken"),
            type = "string",
            name = "NextToken",
            target_id = prelude.String.id,
        }),
    },
})

M.DescribeWarmPoolOutput = schema.new({
    id = id.from(_N, "DescribeWarmPoolAnswer"),
    type = "structure",
    members = {
        WarmPoolConfiguration = schema.new({
            id = id.from(_N, "DescribeWarmPoolOutput", "WarmPoolConfiguration"),
            type = "structure",
            name = "WarmPoolConfiguration",
            target_id = id.from(_N, "WarmPoolConfiguration"),
            target = M.WarmPoolConfiguration,
        }),
        Instances = schema.new({
            id = id.from(_N, "DescribeWarmPoolOutput", "Instances"),
            type = "list",
            name = "Instances",
            target_id = prelude.Document.id,
            list_member = M.Instance,
        }),
        NextToken = schema.new({
            id = id.from(_N, "DescribeWarmPoolOutput", "NextToken"),
            type = "string",
            name = "NextToken",
            target_id = prelude.String.id,
        }),
    },
})

M.DetachInstancesInput = schema.new({
    id = id.from(_N, "DetachInstancesQuery"),
    type = "structure",
    members = {
        InstanceIds = schema.new({
            id = id.from(_N, "DetachInstancesInput", "InstanceIds"),
            type = "list",
            name = "InstanceIds",
            target_id = prelude.Document.id,
            list_member = prelude.String,
        }),
        AutoScalingGroupName = schema.new({
            id = id.from(_N, "DetachInstancesInput", "AutoScalingGroupName"),
            type = "string",
            name = "AutoScalingGroupName",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        ShouldDecrementDesiredCapacity = schema.new({
            id = id.from(_N, "DetachInstancesInput", "ShouldDecrementDesiredCapacity"),
            type = "boolean",
            name = "ShouldDecrementDesiredCapacity",
            target_id = prelude.Boolean.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.DetachInstancesOutput = schema.new({
    id = id.from(_N, "DetachInstancesAnswer"),
    type = "structure",
    members = {
        Activities = schema.new({
            id = id.from(_N, "DetachInstancesOutput", "Activities"),
            type = "list",
            name = "Activities",
            target_id = prelude.Document.id,
            list_member = M.Activity,
        }),
    },
})

M.DetachLoadBalancersInput = schema.new({
    id = id.from(_N, "DetachLoadBalancersType"),
    type = "structure",
    members = {
        AutoScalingGroupName = schema.new({
            id = id.from(_N, "DetachLoadBalancersInput", "AutoScalingGroupName"),
            type = "string",
            name = "AutoScalingGroupName",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        LoadBalancerNames = schema.new({
            id = id.from(_N, "DetachLoadBalancersInput", "LoadBalancerNames"),
            type = "list",
            name = "LoadBalancerNames",
            target_id = prelude.Document.id,
            list_member = prelude.String,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.DetachLoadBalancersOutput = schema.new({
    id = id.from(_N, "DetachLoadBalancersResultType"),
    type = "structure",
})

M.DetachLoadBalancerTargetGroupsInput = schema.new({
    id = id.from(_N, "DetachLoadBalancerTargetGroupsType"),
    type = "structure",
    members = {
        AutoScalingGroupName = schema.new({
            id = id.from(_N, "DetachLoadBalancerTargetGroupsInput", "AutoScalingGroupName"),
            type = "string",
            name = "AutoScalingGroupName",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        TargetGroupARNs = schema.new({
            id = id.from(_N, "DetachLoadBalancerTargetGroupsInput", "TargetGroupARNs"),
            type = "list",
            name = "TargetGroupARNs",
            target_id = prelude.Document.id,
            list_member = prelude.String,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.DetachLoadBalancerTargetGroupsOutput = schema.new({
    id = id.from(_N, "DetachLoadBalancerTargetGroupsResultType"),
    type = "structure",
})

M.DetachTrafficSourcesInput = schema.new({
    id = id.from(_N, "DetachTrafficSourcesType"),
    type = "structure",
    members = {
        AutoScalingGroupName = schema.new({
            id = id.from(_N, "DetachTrafficSourcesInput", "AutoScalingGroupName"),
            type = "string",
            name = "AutoScalingGroupName",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        TrafficSources = schema.new({
            id = id.from(_N, "DetachTrafficSourcesInput", "TrafficSources"),
            type = "list",
            name = "TrafficSources",
            target_id = prelude.Document.id,
            list_member = M.TrafficSourceIdentifier,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.DetachTrafficSourcesOutput = schema.new({
    id = id.from(_N, "DetachTrafficSourcesResultType"),
    type = "structure",
})

M.DisableMetricsCollectionInput = schema.new({
    id = id.from(_N, "DisableMetricsCollectionQuery"),
    type = "structure",
    members = {
        AutoScalingGroupName = schema.new({
            id = id.from(_N, "DisableMetricsCollectionInput", "AutoScalingGroupName"),
            type = "string",
            name = "AutoScalingGroupName",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        Metrics = schema.new({
            id = id.from(_N, "DisableMetricsCollectionInput", "Metrics"),
            type = "list",
            name = "Metrics",
            target_id = prelude.Document.id,
            list_member = prelude.String,
        }),
    },
})

M.DisableMetricsCollectionOutput = schema.new({
    id = id.from(_N, "Unit"),
    type = "structure",
})

M.EnableMetricsCollectionInput = schema.new({
    id = id.from(_N, "EnableMetricsCollectionQuery"),
    type = "structure",
    members = {
        AutoScalingGroupName = schema.new({
            id = id.from(_N, "EnableMetricsCollectionInput", "AutoScalingGroupName"),
            type = "string",
            name = "AutoScalingGroupName",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        Metrics = schema.new({
            id = id.from(_N, "EnableMetricsCollectionInput", "Metrics"),
            type = "list",
            name = "Metrics",
            target_id = prelude.Document.id,
            list_member = prelude.String,
        }),
        Granularity = schema.new({
            id = id.from(_N, "EnableMetricsCollectionInput", "Granularity"),
            type = "string",
            name = "Granularity",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.EnableMetricsCollectionOutput = schema.new({
    id = id.from(_N, "Unit"),
    type = "structure",
})

M.EnterStandbyInput = schema.new({
    id = id.from(_N, "EnterStandbyQuery"),
    type = "structure",
    members = {
        InstanceIds = schema.new({
            id = id.from(_N, "EnterStandbyInput", "InstanceIds"),
            type = "list",
            name = "InstanceIds",
            target_id = prelude.Document.id,
            list_member = prelude.String,
        }),
        AutoScalingGroupName = schema.new({
            id = id.from(_N, "EnterStandbyInput", "AutoScalingGroupName"),
            type = "string",
            name = "AutoScalingGroupName",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        ShouldDecrementDesiredCapacity = schema.new({
            id = id.from(_N, "EnterStandbyInput", "ShouldDecrementDesiredCapacity"),
            type = "boolean",
            name = "ShouldDecrementDesiredCapacity",
            target_id = prelude.Boolean.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.EnterStandbyOutput = schema.new({
    id = id.from(_N, "EnterStandbyAnswer"),
    type = "structure",
    members = {
        Activities = schema.new({
            id = id.from(_N, "EnterStandbyOutput", "Activities"),
            type = "list",
            name = "Activities",
            target_id = prelude.Document.id,
            list_member = M.Activity,
        }),
    },
})

M.ExecutePolicyInput = schema.new({
    id = id.from(_N, "ExecutePolicyType"),
    type = "structure",
    members = {
        AutoScalingGroupName = schema.new({
            id = id.from(_N, "ExecutePolicyInput", "AutoScalingGroupName"),
            type = "string",
            name = "AutoScalingGroupName",
            target_id = prelude.String.id,
        }),
        PolicyName = schema.new({
            id = id.from(_N, "ExecutePolicyInput", "PolicyName"),
            type = "string",
            name = "PolicyName",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        HonorCooldown = schema.new({
            id = id.from(_N, "ExecutePolicyInput", "HonorCooldown"),
            type = "boolean",
            name = "HonorCooldown",
            target_id = prelude.Boolean.id,
        }),
        MetricValue = schema.new({
            id = id.from(_N, "ExecutePolicyInput", "MetricValue"),
            type = "double",
            name = "MetricValue",
            target_id = prelude.Double.id,
        }),
        BreachThreshold = schema.new({
            id = id.from(_N, "ExecutePolicyInput", "BreachThreshold"),
            type = "double",
            name = "BreachThreshold",
            target_id = prelude.Double.id,
        }),
    },
})

M.ExecutePolicyOutput = schema.new({
    id = id.from(_N, "Unit"),
    type = "structure",
})

M.ExitStandbyInput = schema.new({
    id = id.from(_N, "ExitStandbyQuery"),
    type = "structure",
    members = {
        InstanceIds = schema.new({
            id = id.from(_N, "ExitStandbyInput", "InstanceIds"),
            type = "list",
            name = "InstanceIds",
            target_id = prelude.Document.id,
            list_member = prelude.String,
        }),
        AutoScalingGroupName = schema.new({
            id = id.from(_N, "ExitStandbyInput", "AutoScalingGroupName"),
            type = "string",
            name = "AutoScalingGroupName",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.ExitStandbyOutput = schema.new({
    id = id.from(_N, "ExitStandbyAnswer"),
    type = "structure",
    members = {
        Activities = schema.new({
            id = id.from(_N, "ExitStandbyOutput", "Activities"),
            type = "list",
            name = "Activities",
            target_id = prelude.Document.id,
            list_member = M.Activity,
        }),
    },
})

M.GetPredictiveScalingForecastInput = schema.new({
    id = id.from(_N, "GetPredictiveScalingForecastType"),
    type = "structure",
    members = {
        AutoScalingGroupName = schema.new({
            id = id.from(_N, "GetPredictiveScalingForecastInput", "AutoScalingGroupName"),
            type = "string",
            name = "AutoScalingGroupName",
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
    id = id.from(_N, "GetPredictiveScalingForecastAnswer"),
    type = "structure",
    members = {
        LoadForecast = schema.new({
            id = id.from(_N, "GetPredictiveScalingForecastOutput", "LoadForecast"),
            type = "list",
            name = "LoadForecast",
            target_id = prelude.Document.id,
            list_member = M.LoadForecast,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        CapacityForecast = schema.new({
            id = id.from(_N, "GetPredictiveScalingForecastOutput", "CapacityForecast"),
            type = "structure",
            name = "CapacityForecast",
            target_id = id.from(_N, "CapacityForecast"),
            target = M.CapacityForecast,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        UpdateTime = schema.new({
            id = id.from(_N, "GetPredictiveScalingForecastOutput", "UpdateTime"),
            type = "timestamp",
            name = "UpdateTime",
            target_id = prelude.Timestamp.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.IdempotentParameterMismatchError = schema.new({
    id = id.from(_N, "IdempotentParameterMismatchError"),
    type = "structure",
    traits = {
        [traits.ERROR] = { value = "client" },
    },
    members = {
        Message = schema.new({
            id = id.from(_N, "IdempotentParameterMismatchError", "Message"),
            type = "string",
            name = "Message",
            target_id = prelude.String.id,
        }),
    },
})

M.LaunchInstancesInput = schema.new({
    id = id.from(_N, "LaunchInstancesRequest"),
    type = "structure",
    members = {
        AutoScalingGroupName = schema.new({
            id = id.from(_N, "LaunchInstancesInput", "AutoScalingGroupName"),
            type = "string",
            name = "AutoScalingGroupName",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        RequestedCapacity = schema.new({
            id = id.from(_N, "LaunchInstancesInput", "RequestedCapacity"),
            type = "integer",
            name = "RequestedCapacity",
            target_id = prelude.Integer.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        ClientToken = schema.new({
            id = id.from(_N, "LaunchInstancesInput", "ClientToken"),
            type = "string",
            name = "ClientToken",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.IDEMPOTENCY_TOKEN] = {},
            },
        }),
        AvailabilityZones = schema.new({
            id = id.from(_N, "LaunchInstancesInput", "AvailabilityZones"),
            type = "list",
            name = "AvailabilityZones",
            target_id = prelude.Document.id,
            list_member = prelude.String,
        }),
        AvailabilityZoneIds = schema.new({
            id = id.from(_N, "LaunchInstancesInput", "AvailabilityZoneIds"),
            type = "list",
            name = "AvailabilityZoneIds",
            target_id = prelude.Document.id,
            list_member = prelude.String,
        }),
        SubnetIds = schema.new({
            id = id.from(_N, "LaunchInstancesInput", "SubnetIds"),
            type = "list",
            name = "SubnetIds",
            target_id = prelude.Document.id,
            list_member = prelude.String,
        }),
        RetryStrategy = schema.new({
            id = id.from(_N, "LaunchInstancesInput", "RetryStrategy"),
            type = "string",
            name = "RetryStrategy",
            target_id = prelude.String.id,
        }),
    },
})

M.LaunchInstancesError = schema.new({
    id = id.from(_N, "LaunchInstancesError"),
    type = "structure",
    members = {
        InstanceType = schema.new({
            id = id.from(_N, "LaunchInstancesError", "InstanceType"),
            type = "string",
            name = "InstanceType",
            target_id = prelude.String.id,
        }),
        MarketType = schema.new({
            id = id.from(_N, "LaunchInstancesError", "MarketType"),
            type = "string",
            name = "MarketType",
            target_id = prelude.String.id,
        }),
        SubnetId = schema.new({
            id = id.from(_N, "LaunchInstancesError", "SubnetId"),
            type = "string",
            name = "SubnetId",
            target_id = prelude.String.id,
        }),
        AvailabilityZone = schema.new({
            id = id.from(_N, "LaunchInstancesError", "AvailabilityZone"),
            type = "string",
            name = "AvailabilityZone",
            target_id = prelude.String.id,
        }),
        AvailabilityZoneId = schema.new({
            id = id.from(_N, "LaunchInstancesError", "AvailabilityZoneId"),
            type = "string",
            name = "AvailabilityZoneId",
            target_id = prelude.String.id,
        }),
        ErrorCode = schema.new({
            id = id.from(_N, "LaunchInstancesError", "ErrorCode"),
            type = "string",
            name = "ErrorCode",
            target_id = prelude.String.id,
        }),
        ErrorMessage = schema.new({
            id = id.from(_N, "LaunchInstancesError", "ErrorMessage"),
            type = "string",
            name = "ErrorMessage",
            target_id = prelude.String.id,
        }),
    },
})

M.InstanceCollection = schema.new({
    id = id.from(_N, "InstanceCollection"),
    type = "structure",
    members = {
        InstanceType = schema.new({
            id = id.from(_N, "InstanceCollection", "InstanceType"),
            type = "string",
            name = "InstanceType",
            target_id = prelude.String.id,
        }),
        MarketType = schema.new({
            id = id.from(_N, "InstanceCollection", "MarketType"),
            type = "string",
            name = "MarketType",
            target_id = prelude.String.id,
        }),
        SubnetId = schema.new({
            id = id.from(_N, "InstanceCollection", "SubnetId"),
            type = "string",
            name = "SubnetId",
            target_id = prelude.String.id,
        }),
        AvailabilityZone = schema.new({
            id = id.from(_N, "InstanceCollection", "AvailabilityZone"),
            type = "string",
            name = "AvailabilityZone",
            target_id = prelude.String.id,
        }),
        AvailabilityZoneId = schema.new({
            id = id.from(_N, "InstanceCollection", "AvailabilityZoneId"),
            type = "string",
            name = "AvailabilityZoneId",
            target_id = prelude.String.id,
        }),
        InstanceIds = schema.new({
            id = id.from(_N, "InstanceCollection", "InstanceIds"),
            type = "list",
            name = "InstanceIds",
            target_id = prelude.Document.id,
            list_member = prelude.String,
        }),
    },
})

M.LaunchInstancesOutput = schema.new({
    id = id.from(_N, "LaunchInstancesResult"),
    type = "structure",
    members = {
        AutoScalingGroupName = schema.new({
            id = id.from(_N, "LaunchInstancesOutput", "AutoScalingGroupName"),
            type = "string",
            name = "AutoScalingGroupName",
            target_id = prelude.String.id,
        }),
        ClientToken = schema.new({
            id = id.from(_N, "LaunchInstancesOutput", "ClientToken"),
            type = "string",
            name = "ClientToken",
            target_id = prelude.String.id,
        }),
        Instances = schema.new({
            id = id.from(_N, "LaunchInstancesOutput", "Instances"),
            type = "list",
            name = "Instances",
            target_id = prelude.Document.id,
            list_member = M.InstanceCollection,
        }),
        Errors = schema.new({
            id = id.from(_N, "LaunchInstancesOutput", "Errors"),
            type = "list",
            name = "Errors",
            target_id = prelude.Document.id,
            list_member = M.LaunchInstancesError,
        }),
    },
})

M.PutLifecycleHookInput = schema.new({
    id = id.from(_N, "PutLifecycleHookType"),
    type = "structure",
    members = {
        LifecycleHookName = schema.new({
            id = id.from(_N, "PutLifecycleHookInput", "LifecycleHookName"),
            type = "string",
            name = "LifecycleHookName",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        AutoScalingGroupName = schema.new({
            id = id.from(_N, "PutLifecycleHookInput", "AutoScalingGroupName"),
            type = "string",
            name = "AutoScalingGroupName",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        LifecycleTransition = schema.new({
            id = id.from(_N, "PutLifecycleHookInput", "LifecycleTransition"),
            type = "string",
            name = "LifecycleTransition",
            target_id = prelude.String.id,
        }),
        RoleARN = schema.new({
            id = id.from(_N, "PutLifecycleHookInput", "RoleARN"),
            type = "string",
            name = "RoleARN",
            target_id = prelude.String.id,
        }),
        NotificationTargetARN = schema.new({
            id = id.from(_N, "PutLifecycleHookInput", "NotificationTargetARN"),
            type = "string",
            name = "NotificationTargetARN",
            target_id = prelude.String.id,
        }),
        NotificationMetadata = schema.new({
            id = id.from(_N, "PutLifecycleHookInput", "NotificationMetadata"),
            type = "string",
            name = "NotificationMetadata",
            target_id = prelude.String.id,
        }),
        HeartbeatTimeout = schema.new({
            id = id.from(_N, "PutLifecycleHookInput", "HeartbeatTimeout"),
            type = "integer",
            name = "HeartbeatTimeout",
            target_id = prelude.Integer.id,
        }),
        DefaultResult = schema.new({
            id = id.from(_N, "PutLifecycleHookInput", "DefaultResult"),
            type = "string",
            name = "DefaultResult",
            target_id = prelude.String.id,
        }),
    },
})

M.PutLifecycleHookOutput = schema.new({
    id = id.from(_N, "PutLifecycleHookAnswer"),
    type = "structure",
})

M.PutNotificationConfigurationInput = schema.new({
    id = id.from(_N, "PutNotificationConfigurationType"),
    type = "structure",
    members = {
        AutoScalingGroupName = schema.new({
            id = id.from(_N, "PutNotificationConfigurationInput", "AutoScalingGroupName"),
            type = "string",
            name = "AutoScalingGroupName",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        TopicARN = schema.new({
            id = id.from(_N, "PutNotificationConfigurationInput", "TopicARN"),
            type = "string",
            name = "TopicARN",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        NotificationTypes = schema.new({
            id = id.from(_N, "PutNotificationConfigurationInput", "NotificationTypes"),
            type = "list",
            name = "NotificationTypes",
            target_id = prelude.Document.id,
            list_member = prelude.String,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.PutNotificationConfigurationOutput = schema.new({
    id = id.from(_N, "Unit"),
    type = "structure",
})

M.PutScalingPolicyInput = schema.new({
    id = id.from(_N, "PutScalingPolicyType"),
    type = "structure",
    members = {
        AutoScalingGroupName = schema.new({
            id = id.from(_N, "PutScalingPolicyInput", "AutoScalingGroupName"),
            type = "string",
            name = "AutoScalingGroupName",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        PolicyName = schema.new({
            id = id.from(_N, "PutScalingPolicyInput", "PolicyName"),
            type = "string",
            name = "PolicyName",
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
        AdjustmentType = schema.new({
            id = id.from(_N, "PutScalingPolicyInput", "AdjustmentType"),
            type = "string",
            name = "AdjustmentType",
            target_id = prelude.String.id,
        }),
        MinAdjustmentStep = schema.new({
            id = id.from(_N, "PutScalingPolicyInput", "MinAdjustmentStep"),
            type = "integer",
            name = "MinAdjustmentStep",
            target_id = prelude.Integer.id,
        }),
        MinAdjustmentMagnitude = schema.new({
            id = id.from(_N, "PutScalingPolicyInput", "MinAdjustmentMagnitude"),
            type = "integer",
            name = "MinAdjustmentMagnitude",
            target_id = prelude.Integer.id,
        }),
        ScalingAdjustment = schema.new({
            id = id.from(_N, "PutScalingPolicyInput", "ScalingAdjustment"),
            type = "integer",
            name = "ScalingAdjustment",
            target_id = prelude.Integer.id,
        }),
        Cooldown = schema.new({
            id = id.from(_N, "PutScalingPolicyInput", "Cooldown"),
            type = "integer",
            name = "Cooldown",
            target_id = prelude.Integer.id,
        }),
        MetricAggregationType = schema.new({
            id = id.from(_N, "PutScalingPolicyInput", "MetricAggregationType"),
            type = "string",
            name = "MetricAggregationType",
            target_id = prelude.String.id,
        }),
        StepAdjustments = schema.new({
            id = id.from(_N, "PutScalingPolicyInput", "StepAdjustments"),
            type = "list",
            name = "StepAdjustments",
            target_id = prelude.Document.id,
            list_member = M.StepAdjustment,
        }),
        EstimatedInstanceWarmup = schema.new({
            id = id.from(_N, "PutScalingPolicyInput", "EstimatedInstanceWarmup"),
            type = "integer",
            name = "EstimatedInstanceWarmup",
            target_id = prelude.Integer.id,
        }),
        TargetTrackingConfiguration = schema.new({
            id = id.from(_N, "PutScalingPolicyInput", "TargetTrackingConfiguration"),
            type = "structure",
            name = "TargetTrackingConfiguration",
            target_id = id.from(_N, "TargetTrackingConfiguration"),
            target = M.TargetTrackingConfiguration,
        }),
        Enabled = schema.new({
            id = id.from(_N, "PutScalingPolicyInput", "Enabled"),
            type = "boolean",
            name = "Enabled",
            target_id = prelude.Boolean.id,
        }),
        PredictiveScalingConfiguration = schema.new({
            id = id.from(_N, "PutScalingPolicyInput", "PredictiveScalingConfiguration"),
            type = "structure",
            name = "PredictiveScalingConfiguration",
            target_id = id.from(_N, "PredictiveScalingConfiguration"),
            target = M.PredictiveScalingConfiguration,
        }),
    },
})

M.PutScalingPolicyOutput = schema.new({
    id = id.from(_N, "PolicyARNType"),
    type = "structure",
    members = {
        PolicyARN = schema.new({
            id = id.from(_N, "PutScalingPolicyOutput", "PolicyARN"),
            type = "string",
            name = "PolicyARN",
            target_id = prelude.String.id,
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

M.PutScheduledUpdateGroupActionInput = schema.new({
    id = id.from(_N, "PutScheduledUpdateGroupActionType"),
    type = "structure",
    members = {
        AutoScalingGroupName = schema.new({
            id = id.from(_N, "PutScheduledUpdateGroupActionInput", "AutoScalingGroupName"),
            type = "string",
            name = "AutoScalingGroupName",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        ScheduledActionName = schema.new({
            id = id.from(_N, "PutScheduledUpdateGroupActionInput", "ScheduledActionName"),
            type = "string",
            name = "ScheduledActionName",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        Time = schema.new({
            id = id.from(_N, "PutScheduledUpdateGroupActionInput", "Time"),
            type = "timestamp",
            name = "Time",
            target_id = prelude.Timestamp.id,
        }),
        StartTime = schema.new({
            id = id.from(_N, "PutScheduledUpdateGroupActionInput", "StartTime"),
            type = "timestamp",
            name = "StartTime",
            target_id = prelude.Timestamp.id,
        }),
        EndTime = schema.new({
            id = id.from(_N, "PutScheduledUpdateGroupActionInput", "EndTime"),
            type = "timestamp",
            name = "EndTime",
            target_id = prelude.Timestamp.id,
        }),
        Recurrence = schema.new({
            id = id.from(_N, "PutScheduledUpdateGroupActionInput", "Recurrence"),
            type = "string",
            name = "Recurrence",
            target_id = prelude.String.id,
        }),
        MinSize = schema.new({
            id = id.from(_N, "PutScheduledUpdateGroupActionInput", "MinSize"),
            type = "integer",
            name = "MinSize",
            target_id = prelude.Integer.id,
        }),
        MaxSize = schema.new({
            id = id.from(_N, "PutScheduledUpdateGroupActionInput", "MaxSize"),
            type = "integer",
            name = "MaxSize",
            target_id = prelude.Integer.id,
        }),
        DesiredCapacity = schema.new({
            id = id.from(_N, "PutScheduledUpdateGroupActionInput", "DesiredCapacity"),
            type = "integer",
            name = "DesiredCapacity",
            target_id = prelude.Integer.id,
        }),
        TimeZone = schema.new({
            id = id.from(_N, "PutScheduledUpdateGroupActionInput", "TimeZone"),
            type = "string",
            name = "TimeZone",
            target_id = prelude.String.id,
        }),
    },
})

M.PutScheduledUpdateGroupActionOutput = schema.new({
    id = id.from(_N, "Unit"),
    type = "structure",
})

M.PutWarmPoolInput = schema.new({
    id = id.from(_N, "PutWarmPoolType"),
    type = "structure",
    members = {
        AutoScalingGroupName = schema.new({
            id = id.from(_N, "PutWarmPoolInput", "AutoScalingGroupName"),
            type = "string",
            name = "AutoScalingGroupName",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        MaxGroupPreparedCapacity = schema.new({
            id = id.from(_N, "PutWarmPoolInput", "MaxGroupPreparedCapacity"),
            type = "integer",
            name = "MaxGroupPreparedCapacity",
            target_id = prelude.Integer.id,
        }),
        MinSize = schema.new({
            id = id.from(_N, "PutWarmPoolInput", "MinSize"),
            type = "integer",
            name = "MinSize",
            target_id = prelude.Integer.id,
        }),
        PoolState = schema.new({
            id = id.from(_N, "PutWarmPoolInput", "PoolState"),
            type = "string",
            name = "PoolState",
            target_id = prelude.String.id,
        }),
        InstanceReusePolicy = schema.new({
            id = id.from(_N, "PutWarmPoolInput", "InstanceReusePolicy"),
            type = "structure",
            name = "InstanceReusePolicy",
            target_id = id.from(_N, "InstanceReusePolicy"),
            target = M.InstanceReusePolicy,
        }),
    },
})

M.PutWarmPoolOutput = schema.new({
    id = id.from(_N, "PutWarmPoolAnswer"),
    type = "structure",
})

M.RecordLifecycleActionHeartbeatInput = schema.new({
    id = id.from(_N, "RecordLifecycleActionHeartbeatType"),
    type = "structure",
    members = {
        LifecycleHookName = schema.new({
            id = id.from(_N, "RecordLifecycleActionHeartbeatInput", "LifecycleHookName"),
            type = "string",
            name = "LifecycleHookName",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        AutoScalingGroupName = schema.new({
            id = id.from(_N, "RecordLifecycleActionHeartbeatInput", "AutoScalingGroupName"),
            type = "string",
            name = "AutoScalingGroupName",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        LifecycleActionToken = schema.new({
            id = id.from(_N, "RecordLifecycleActionHeartbeatInput", "LifecycleActionToken"),
            type = "string",
            name = "LifecycleActionToken",
            target_id = prelude.String.id,
        }),
        InstanceId = schema.new({
            id = id.from(_N, "RecordLifecycleActionHeartbeatInput", "InstanceId"),
            type = "string",
            name = "InstanceId",
            target_id = prelude.String.id,
        }),
    },
})

M.RecordLifecycleActionHeartbeatOutput = schema.new({
    id = id.from(_N, "RecordLifecycleActionHeartbeatAnswer"),
    type = "structure",
})

M.ResumeProcessesInput = schema.new({
    id = id.from(_N, "ScalingProcessQuery"),
    type = "structure",
    members = {
        AutoScalingGroupName = schema.new({
            id = id.from(_N, "ResumeProcessesInput", "AutoScalingGroupName"),
            type = "string",
            name = "AutoScalingGroupName",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        ScalingProcesses = schema.new({
            id = id.from(_N, "ResumeProcessesInput", "ScalingProcesses"),
            type = "list",
            name = "ScalingProcesses",
            target_id = prelude.Document.id,
            list_member = prelude.String,
        }),
    },
})

M.ResumeProcessesOutput = schema.new({
    id = id.from(_N, "Unit"),
    type = "structure",
})

M.IrreversibleInstanceRefreshFault = schema.new({
    id = id.from(_N, "IrreversibleInstanceRefreshFault"),
    type = "structure",
    traits = {
        [traits.ERROR] = { value = "client" },
    },
    members = {
        message = schema.new({
            id = id.from(_N, "IrreversibleInstanceRefreshFault", "message"),
            type = "string",
            name = "message",
            target_id = prelude.String.id,
        }),
    },
})

M.RollbackInstanceRefreshInput = schema.new({
    id = id.from(_N, "RollbackInstanceRefreshType"),
    type = "structure",
    members = {
        AutoScalingGroupName = schema.new({
            id = id.from(_N, "RollbackInstanceRefreshInput", "AutoScalingGroupName"),
            type = "string",
            name = "AutoScalingGroupName",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.RollbackInstanceRefreshOutput = schema.new({
    id = id.from(_N, "RollbackInstanceRefreshAnswer"),
    type = "structure",
    members = {
        InstanceRefreshId = schema.new({
            id = id.from(_N, "RollbackInstanceRefreshOutput", "InstanceRefreshId"),
            type = "string",
            name = "InstanceRefreshId",
            target_id = prelude.String.id,
        }),
    },
})

M.SetDesiredCapacityInput = schema.new({
    id = id.from(_N, "SetDesiredCapacityType"),
    type = "structure",
    members = {
        AutoScalingGroupName = schema.new({
            id = id.from(_N, "SetDesiredCapacityInput", "AutoScalingGroupName"),
            type = "string",
            name = "AutoScalingGroupName",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        DesiredCapacity = schema.new({
            id = id.from(_N, "SetDesiredCapacityInput", "DesiredCapacity"),
            type = "integer",
            name = "DesiredCapacity",
            target_id = prelude.Integer.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        HonorCooldown = schema.new({
            id = id.from(_N, "SetDesiredCapacityInput", "HonorCooldown"),
            type = "boolean",
            name = "HonorCooldown",
            target_id = prelude.Boolean.id,
        }),
    },
})

M.SetDesiredCapacityOutput = schema.new({
    id = id.from(_N, "Unit"),
    type = "structure",
})

M.SetInstanceHealthInput = schema.new({
    id = id.from(_N, "SetInstanceHealthQuery"),
    type = "structure",
    members = {
        InstanceId = schema.new({
            id = id.from(_N, "SetInstanceHealthInput", "InstanceId"),
            type = "string",
            name = "InstanceId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        HealthStatus = schema.new({
            id = id.from(_N, "SetInstanceHealthInput", "HealthStatus"),
            type = "string",
            name = "HealthStatus",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        ShouldRespectGracePeriod = schema.new({
            id = id.from(_N, "SetInstanceHealthInput", "ShouldRespectGracePeriod"),
            type = "boolean",
            name = "ShouldRespectGracePeriod",
            target_id = prelude.Boolean.id,
        }),
    },
})

M.SetInstanceHealthOutput = schema.new({
    id = id.from(_N, "Unit"),
    type = "structure",
})

M.SetInstanceProtectionInput = schema.new({
    id = id.from(_N, "SetInstanceProtectionQuery"),
    type = "structure",
    members = {
        InstanceIds = schema.new({
            id = id.from(_N, "SetInstanceProtectionInput", "InstanceIds"),
            type = "list",
            name = "InstanceIds",
            target_id = prelude.Document.id,
            list_member = prelude.String,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        AutoScalingGroupName = schema.new({
            id = id.from(_N, "SetInstanceProtectionInput", "AutoScalingGroupName"),
            type = "string",
            name = "AutoScalingGroupName",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        ProtectedFromScaleIn = schema.new({
            id = id.from(_N, "SetInstanceProtectionInput", "ProtectedFromScaleIn"),
            type = "boolean",
            name = "ProtectedFromScaleIn",
            target_id = prelude.Boolean.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.SetInstanceProtectionOutput = schema.new({
    id = id.from(_N, "SetInstanceProtectionAnswer"),
    type = "structure",
})

M.StartInstanceRefreshInput = schema.new({
    id = id.from(_N, "StartInstanceRefreshType"),
    type = "structure",
    members = {
        AutoScalingGroupName = schema.new({
            id = id.from(_N, "StartInstanceRefreshInput", "AutoScalingGroupName"),
            type = "string",
            name = "AutoScalingGroupName",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        Strategy = schema.new({
            id = id.from(_N, "StartInstanceRefreshInput", "Strategy"),
            type = "string",
            name = "Strategy",
            target_id = prelude.String.id,
        }),
        DesiredConfiguration = schema.new({
            id = id.from(_N, "StartInstanceRefreshInput", "DesiredConfiguration"),
            type = "structure",
            name = "DesiredConfiguration",
            target_id = id.from(_N, "DesiredConfiguration"),
            target = M.DesiredConfiguration,
        }),
        Preferences = schema.new({
            id = id.from(_N, "StartInstanceRefreshInput", "Preferences"),
            type = "structure",
            name = "Preferences",
            target_id = id.from(_N, "RefreshPreferences"),
            target = M.RefreshPreferences,
        }),
    },
})

M.StartInstanceRefreshOutput = schema.new({
    id = id.from(_N, "StartInstanceRefreshAnswer"),
    type = "structure",
    members = {
        InstanceRefreshId = schema.new({
            id = id.from(_N, "StartInstanceRefreshOutput", "InstanceRefreshId"),
            type = "string",
            name = "InstanceRefreshId",
            target_id = prelude.String.id,
        }),
    },
})

M.SuspendProcessesInput = schema.new({
    id = id.from(_N, "ScalingProcessQuery"),
    type = "structure",
    members = {
        AutoScalingGroupName = schema.new({
            id = id.from(_N, "SuspendProcessesInput", "AutoScalingGroupName"),
            type = "string",
            name = "AutoScalingGroupName",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        ScalingProcesses = schema.new({
            id = id.from(_N, "SuspendProcessesInput", "ScalingProcesses"),
            type = "list",
            name = "ScalingProcesses",
            target_id = prelude.Document.id,
            list_member = prelude.String,
        }),
    },
})

M.SuspendProcessesOutput = schema.new({
    id = id.from(_N, "Unit"),
    type = "structure",
})

M.TerminateInstanceInAutoScalingGroupInput = schema.new({
    id = id.from(_N, "TerminateInstanceInAutoScalingGroupType"),
    type = "structure",
    members = {
        InstanceId = schema.new({
            id = id.from(_N, "TerminateInstanceInAutoScalingGroupInput", "InstanceId"),
            type = "string",
            name = "InstanceId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        ShouldDecrementDesiredCapacity = schema.new({
            id = id.from(_N, "TerminateInstanceInAutoScalingGroupInput", "ShouldDecrementDesiredCapacity"),
            type = "boolean",
            name = "ShouldDecrementDesiredCapacity",
            target_id = prelude.Boolean.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.TerminateInstanceInAutoScalingGroupOutput = schema.new({
    id = id.from(_N, "ActivityType"),
    type = "structure",
    members = {
        Activity = schema.new({
            id = id.from(_N, "TerminateInstanceInAutoScalingGroupOutput", "Activity"),
            type = "structure",
            name = "Activity",
            target_id = id.from(_N, "Activity"),
            target = M.Activity,
        }),
    },
})

M.UpdateAutoScalingGroupInput = schema.new({
    id = id.from(_N, "UpdateAutoScalingGroupType"),
    type = "structure",
    members = {
        AutoScalingGroupName = schema.new({
            id = id.from(_N, "UpdateAutoScalingGroupInput", "AutoScalingGroupName"),
            type = "string",
            name = "AutoScalingGroupName",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        LaunchConfigurationName = schema.new({
            id = id.from(_N, "UpdateAutoScalingGroupInput", "LaunchConfigurationName"),
            type = "string",
            name = "LaunchConfigurationName",
            target_id = prelude.String.id,
        }),
        LaunchTemplate = schema.new({
            id = id.from(_N, "UpdateAutoScalingGroupInput", "LaunchTemplate"),
            type = "structure",
            name = "LaunchTemplate",
            target_id = id.from(_N, "LaunchTemplateSpecification"),
            target = M.LaunchTemplateSpecification,
        }),
        MixedInstancesPolicy = schema.new({
            id = id.from(_N, "UpdateAutoScalingGroupInput", "MixedInstancesPolicy"),
            type = "structure",
            name = "MixedInstancesPolicy",
            target_id = id.from(_N, "MixedInstancesPolicy"),
            target = M.MixedInstancesPolicy,
        }),
        MinSize = schema.new({
            id = id.from(_N, "UpdateAutoScalingGroupInput", "MinSize"),
            type = "integer",
            name = "MinSize",
            target_id = prelude.Integer.id,
        }),
        MaxSize = schema.new({
            id = id.from(_N, "UpdateAutoScalingGroupInput", "MaxSize"),
            type = "integer",
            name = "MaxSize",
            target_id = prelude.Integer.id,
        }),
        DesiredCapacity = schema.new({
            id = id.from(_N, "UpdateAutoScalingGroupInput", "DesiredCapacity"),
            type = "integer",
            name = "DesiredCapacity",
            target_id = prelude.Integer.id,
        }),
        DefaultCooldown = schema.new({
            id = id.from(_N, "UpdateAutoScalingGroupInput", "DefaultCooldown"),
            type = "integer",
            name = "DefaultCooldown",
            target_id = prelude.Integer.id,
        }),
        AvailabilityZones = schema.new({
            id = id.from(_N, "UpdateAutoScalingGroupInput", "AvailabilityZones"),
            type = "list",
            name = "AvailabilityZones",
            target_id = prelude.Document.id,
            list_member = prelude.String,
        }),
        AvailabilityZoneIds = schema.new({
            id = id.from(_N, "UpdateAutoScalingGroupInput", "AvailabilityZoneIds"),
            type = "list",
            name = "AvailabilityZoneIds",
            target_id = prelude.Document.id,
            list_member = prelude.String,
        }),
        HealthCheckType = schema.new({
            id = id.from(_N, "UpdateAutoScalingGroupInput", "HealthCheckType"),
            type = "string",
            name = "HealthCheckType",
            target_id = prelude.String.id,
        }),
        HealthCheckGracePeriod = schema.new({
            id = id.from(_N, "UpdateAutoScalingGroupInput", "HealthCheckGracePeriod"),
            type = "integer",
            name = "HealthCheckGracePeriod",
            target_id = prelude.Integer.id,
        }),
        PlacementGroup = schema.new({
            id = id.from(_N, "UpdateAutoScalingGroupInput", "PlacementGroup"),
            type = "string",
            name = "PlacementGroup",
            target_id = prelude.String.id,
        }),
        VPCZoneIdentifier = schema.new({
            id = id.from(_N, "UpdateAutoScalingGroupInput", "VPCZoneIdentifier"),
            type = "string",
            name = "VPCZoneIdentifier",
            target_id = prelude.String.id,
        }),
        TerminationPolicies = schema.new({
            id = id.from(_N, "UpdateAutoScalingGroupInput", "TerminationPolicies"),
            type = "list",
            name = "TerminationPolicies",
            target_id = prelude.Document.id,
            list_member = prelude.String,
        }),
        NewInstancesProtectedFromScaleIn = schema.new({
            id = id.from(_N, "UpdateAutoScalingGroupInput", "NewInstancesProtectedFromScaleIn"),
            type = "boolean",
            name = "NewInstancesProtectedFromScaleIn",
            target_id = prelude.Boolean.id,
        }),
        ServiceLinkedRoleARN = schema.new({
            id = id.from(_N, "UpdateAutoScalingGroupInput", "ServiceLinkedRoleARN"),
            type = "string",
            name = "ServiceLinkedRoleARN",
            target_id = prelude.String.id,
        }),
        MaxInstanceLifetime = schema.new({
            id = id.from(_N, "UpdateAutoScalingGroupInput", "MaxInstanceLifetime"),
            type = "integer",
            name = "MaxInstanceLifetime",
            target_id = prelude.Integer.id,
        }),
        CapacityRebalance = schema.new({
            id = id.from(_N, "UpdateAutoScalingGroupInput", "CapacityRebalance"),
            type = "boolean",
            name = "CapacityRebalance",
            target_id = prelude.Boolean.id,
        }),
        Context = schema.new({
            id = id.from(_N, "UpdateAutoScalingGroupInput", "Context"),
            type = "string",
            name = "Context",
            target_id = prelude.String.id,
        }),
        DesiredCapacityType = schema.new({
            id = id.from(_N, "UpdateAutoScalingGroupInput", "DesiredCapacityType"),
            type = "string",
            name = "DesiredCapacityType",
            target_id = prelude.String.id,
        }),
        DefaultInstanceWarmup = schema.new({
            id = id.from(_N, "UpdateAutoScalingGroupInput", "DefaultInstanceWarmup"),
            type = "integer",
            name = "DefaultInstanceWarmup",
            target_id = prelude.Integer.id,
        }),
        InstanceMaintenancePolicy = schema.new({
            id = id.from(_N, "UpdateAutoScalingGroupInput", "InstanceMaintenancePolicy"),
            type = "structure",
            name = "InstanceMaintenancePolicy",
            target_id = id.from(_N, "InstanceMaintenancePolicy"),
            target = M.InstanceMaintenancePolicy,
        }),
        AvailabilityZoneDistribution = schema.new({
            id = id.from(_N, "UpdateAutoScalingGroupInput", "AvailabilityZoneDistribution"),
            type = "structure",
            name = "AvailabilityZoneDistribution",
            target_id = id.from(_N, "AvailabilityZoneDistribution"),
            target = M.AvailabilityZoneDistribution,
        }),
        AvailabilityZoneImpairmentPolicy = schema.new({
            id = id.from(_N, "UpdateAutoScalingGroupInput", "AvailabilityZoneImpairmentPolicy"),
            type = "structure",
            name = "AvailabilityZoneImpairmentPolicy",
            target_id = id.from(_N, "AvailabilityZoneImpairmentPolicy"),
            target = M.AvailabilityZoneImpairmentPolicy,
        }),
        SkipZonalShiftValidation = schema.new({
            id = id.from(_N, "UpdateAutoScalingGroupInput", "SkipZonalShiftValidation"),
            type = "boolean",
            name = "SkipZonalShiftValidation",
            target_id = prelude.Boolean.id,
        }),
        CapacityReservationSpecification = schema.new({
            id = id.from(_N, "UpdateAutoScalingGroupInput", "CapacityReservationSpecification"),
            type = "structure",
            name = "CapacityReservationSpecification",
            target_id = id.from(_N, "CapacityReservationSpecification"),
            target = M.CapacityReservationSpecification,
        }),
        InstanceLifecyclePolicy = schema.new({
            id = id.from(_N, "UpdateAutoScalingGroupInput", "InstanceLifecyclePolicy"),
            type = "structure",
            name = "InstanceLifecyclePolicy",
            target_id = id.from(_N, "InstanceLifecyclePolicy"),
            target = M.InstanceLifecyclePolicy,
        }),
        DeletionProtection = schema.new({
            id = id.from(_N, "UpdateAutoScalingGroupInput", "DeletionProtection"),
            type = "string",
            name = "DeletionProtection",
            target_id = prelude.String.id,
        }),
    },
})

M.UpdateAutoScalingGroupOutput = schema.new({
    id = id.from(_N, "Unit"),
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
