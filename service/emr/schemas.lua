local id = require("smithy.shape_id")
local schema = require("smithy.schema")
local prelude = require("smithy.prelude")
local traits = require("smithy.traits")

local _N = "com.amazonaws.emr"

local M = {}

M.InstanceGroupConfigList = schema.new({ type = "list", list_member = M.InstanceGroupConfig })

M.InstanceGroupIdsList = schema.new({ type = "list", list_member = prelude.String })

M.StepConfigList = schema.new({ type = "list", list_member = M.StepConfig })

M.StepIdsList = schema.new({ type = "list", list_member = prelude.String })

M.TagList = schema.new({ type = "list", list_member = M.Tag })

M.CancelStepsInfoList = schema.new({ type = "list", list_member = M.CancelStepsInfo })

M.SubnetIdList = schema.new({ type = "list", list_member = prelude.String })

M.XmlStringList = schema.new({ type = "list", list_member = prelude.String })

M.JobFlowExecutionStateList = schema.new({ type = "list", list_member = prelude.String })

M.JobFlowDetailList = schema.new({ type = "list", list_member = M.JobFlowDetail })

M.SimplifiedApplicationList = schema.new({ type = "list", list_member = M.SimplifiedApplication })

M.OSReleaseList = schema.new({ type = "list", list_member = M.OSRelease })

M.CommandList = schema.new({ type = "list", list_member = M.Command })

M.ClusterStateList = schema.new({ type = "list", list_member = prelude.String })

M.ClusterSummaryList = schema.new({ type = "list", list_member = M.ClusterSummary })

M.InstanceFleetList = schema.new({ type = "list", list_member = M.InstanceFleet })

M.InstanceGroupList = schema.new({ type = "list", list_member = M.InstanceGroup })

M.InstanceGroupTypeList = schema.new({ type = "list", list_member = prelude.String })

M.InstanceStateList = schema.new({ type = "list", list_member = prelude.String })

M.InstanceList = schema.new({ type = "list", list_member = M.Instance })

M.NotebookExecutionSummaryList = schema.new({ type = "list", list_member = M.NotebookExecutionSummary })

M.StringList = schema.new({ type = "list", list_member = prelude.String })

M.SecurityConfigurationList = schema.new({ type = "list", list_member = M.SecurityConfigurationSummary })

M.StepStateList = schema.new({ type = "list", list_member = prelude.String })

M.StepSummaryList = schema.new({ type = "list", list_member = M.StepSummary })

M.StudioSummaryList = schema.new({ type = "list", list_member = M.StudioSummary })

M.SessionMappingSummaryList = schema.new({ type = "list", list_member = M.SessionMappingSummary })

M.SupportedInstanceTypesList = schema.new({ type = "list", list_member = M.SupportedInstanceType })

M.InstanceGroupModifyConfigList = schema.new({ type = "list", list_member = M.InstanceGroupModifyConfig })

M.BootstrapActionConfigList = schema.new({ type = "list", list_member = M.BootstrapActionConfig })

M.SupportedProductsList = schema.new({ type = "list", list_member = prelude.String })

M.NewSupportedProductsList = schema.new({ type = "list", list_member = M.SupportedProductConfig })

M.ApplicationList = schema.new({ type = "list", list_member = M.Application })

M.ConfigurationList = schema.new({ type = "list", list_member = M.Configuration })

M.PlacementGroupConfigList = schema.new({ type = "list", list_member = M.PlacementGroupConfig })

M.EnvironmentVariablesMap = schema.new({ type = "map", map_key = prelude.String, map_value = prelude.String })

M.InstanceTypeConfigList = schema.new({ type = "list", list_member = M.InstanceTypeConfig })

M.PersistentAppUITypeList = schema.new({ type = "list", list_member = prelude.String })

M.PortRanges = schema.new({ type = "list", list_member = M.PortRange })

M.StringMap = schema.new({ type = "map", map_key = prelude.String, map_value = prelude.String })

M.ScalingRuleList = schema.new({ type = "list", list_member = M.ScalingRule })

M.InstanceFleetConfigList = schema.new({ type = "list", list_member = M.InstanceFleetConfig })

M.XmlStringMaxLen256List = schema.new({ type = "list", list_member = prelude.String })

M.SecurityGroupsList = schema.new({ type = "list", list_member = prelude.String })

M.ErrorDetailList = schema.new({ type = "list", list_member = M.ErrorDetail })

M.StepDetailList = schema.new({ type = "list", list_member = M.StepDetail })

M.BootstrapActionDetailList = schema.new({ type = "list", list_member = M.BootstrapActionDetail })

M.InstanceTypeSpecificationList = schema.new({ type = "list", list_member = M.InstanceTypeSpecification })

M.EbsBlockDeviceList = schema.new({ type = "list", list_member = M.EbsBlockDevice })

M.EbsVolumeList = schema.new({ type = "list", list_member = M.EbsVolume })

M.EC2InstanceIdsToTerminateList = schema.new({ type = "list", list_member = prelude.String })

M.LogTypesMap = schema.new({ type = "map", map_key = prelude.String, map_value = M.XmlStringList })

M.LogTypeMap = schema.new({ type = "map", map_key = prelude.String, map_value = prelude.String })

M.EbsBlockDeviceConfigList = schema.new({ type = "list", list_member = M.EbsBlockDeviceConfig })

M.KeyValueList = schema.new({ type = "list", list_member = M.KeyValue })

M.InstanceGroupDetailList = schema.new({ type = "list", list_member = M.InstanceGroupDetail })

M.ErrorData = schema.new({ type = "list", list_member = M.StringMap })

M.EC2InstanceIdsList = schema.new({ type = "list", list_member = prelude.String })

M.MetricDimensionList = schema.new({ type = "list", list_member = M.MetricDimension })

M.VolumeSpecification = schema.new({
    id = id.from(_N, "VolumeSpecification"),
    type = "structure",
    members = {
        VolumeType = schema.new({
            id = id.from(_N, "VolumeSpecification", "VolumeType"),
            type = "string",
            name = "VolumeType",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        Iops = schema.new({
            id = id.from(_N, "VolumeSpecification", "Iops"),
            type = "integer",
            name = "Iops",
            target_id = prelude.Integer.id,
        }),
        SizeInGB = schema.new({
            id = id.from(_N, "VolumeSpecification", "SizeInGB"),
            type = "integer",
            name = "SizeInGB",
            target_id = prelude.Integer.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        Throughput = schema.new({
            id = id.from(_N, "VolumeSpecification", "Throughput"),
            type = "integer",
            name = "Throughput",
            target_id = prelude.Integer.id,
        }),
    },
})

M.EbsBlockDeviceConfig = schema.new({
    id = id.from(_N, "EbsBlockDeviceConfig"),
    type = "structure",
    members = {
        VolumeSpecification = schema.new({
            id = id.from(_N, "EbsBlockDeviceConfig", "VolumeSpecification"),
            type = "structure",
            name = "VolumeSpecification",
            target_id = id.from(_N, "VolumeSpecification"),
            target = M.VolumeSpecification,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        VolumesPerInstance = schema.new({
            id = id.from(_N, "EbsBlockDeviceConfig", "VolumesPerInstance"),
            type = "integer",
            name = "VolumesPerInstance",
            target_id = prelude.Integer.id,
        }),
    },
})

M.EbsConfiguration = schema.new({
    id = id.from(_N, "EbsConfiguration"),
    type = "structure",
    members = {
        EbsBlockDeviceConfigs = schema.new({
            id = id.from(_N, "EbsConfiguration", "EbsBlockDeviceConfigs"),
            type = "list",
            name = "EbsBlockDeviceConfigs",
            target_id = prelude.Document.id,
            list_member = M.EbsBlockDeviceConfig,
        }),
        EbsOptimized = schema.new({
            id = id.from(_N, "EbsConfiguration", "EbsOptimized"),
            type = "boolean",
            name = "EbsOptimized",
            target_id = prelude.Boolean.id,
        }),
    },
})

M.OnDemandCapacityReservationOptions = schema.new({
    id = id.from(_N, "OnDemandCapacityReservationOptions"),
    type = "structure",
    members = {
        UsageStrategy = schema.new({
            id = id.from(_N, "OnDemandCapacityReservationOptions", "UsageStrategy"),
            type = "string",
            name = "UsageStrategy",
            target_id = prelude.String.id,
        }),
        CapacityReservationPreference = schema.new({
            id = id.from(_N, "OnDemandCapacityReservationOptions", "CapacityReservationPreference"),
            type = "string",
            name = "CapacityReservationPreference",
            target_id = prelude.String.id,
        }),
        CapacityReservationResourceGroupArn = schema.new({
            id = id.from(_N, "OnDemandCapacityReservationOptions", "CapacityReservationResourceGroupArn"),
            type = "string",
            name = "CapacityReservationResourceGroupArn",
            target_id = prelude.String.id,
        }),
    },
})

M.OnDemandProvisioningSpecification = schema.new({
    id = id.from(_N, "OnDemandProvisioningSpecification"),
    type = "structure",
    members = {
        AllocationStrategy = schema.new({
            id = id.from(_N, "OnDemandProvisioningSpecification", "AllocationStrategy"),
            type = "string",
            name = "AllocationStrategy",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        CapacityReservationOptions = schema.new({
            id = id.from(_N, "OnDemandProvisioningSpecification", "CapacityReservationOptions"),
            type = "structure",
            name = "CapacityReservationOptions",
            target_id = id.from(_N, "OnDemandCapacityReservationOptions"),
            target = M.OnDemandCapacityReservationOptions,
        }),
    },
})

M.SpotProvisioningSpecification = schema.new({
    id = id.from(_N, "SpotProvisioningSpecification"),
    type = "structure",
    members = {
        TimeoutDurationMinutes = schema.new({
            id = id.from(_N, "SpotProvisioningSpecification", "TimeoutDurationMinutes"),
            type = "integer",
            name = "TimeoutDurationMinutes",
            target_id = prelude.Integer.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        TimeoutAction = schema.new({
            id = id.from(_N, "SpotProvisioningSpecification", "TimeoutAction"),
            type = "string",
            name = "TimeoutAction",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        BlockDurationMinutes = schema.new({
            id = id.from(_N, "SpotProvisioningSpecification", "BlockDurationMinutes"),
            type = "integer",
            name = "BlockDurationMinutes",
            target_id = prelude.Integer.id,
        }),
        AllocationStrategy = schema.new({
            id = id.from(_N, "SpotProvisioningSpecification", "AllocationStrategy"),
            type = "string",
            name = "AllocationStrategy",
            target_id = prelude.String.id,
        }),
    },
})

M.InstanceFleetProvisioningSpecifications = schema.new({
    id = id.from(_N, "InstanceFleetProvisioningSpecifications"),
    type = "structure",
    members = {
        SpotSpecification = schema.new({
            id = id.from(_N, "InstanceFleetProvisioningSpecifications", "SpotSpecification"),
            type = "structure",
            name = "SpotSpecification",
            target_id = id.from(_N, "SpotProvisioningSpecification"),
            target = M.SpotProvisioningSpecification,
        }),
        OnDemandSpecification = schema.new({
            id = id.from(_N, "InstanceFleetProvisioningSpecifications", "OnDemandSpecification"),
            type = "structure",
            name = "OnDemandSpecification",
            target_id = id.from(_N, "OnDemandProvisioningSpecification"),
            target = M.OnDemandProvisioningSpecification,
        }),
    },
})

M.OnDemandResizingSpecification = schema.new({
    id = id.from(_N, "OnDemandResizingSpecification"),
    type = "structure",
    members = {
        TimeoutDurationMinutes = schema.new({
            id = id.from(_N, "OnDemandResizingSpecification", "TimeoutDurationMinutes"),
            type = "integer",
            name = "TimeoutDurationMinutes",
            target_id = prelude.Integer.id,
        }),
        AllocationStrategy = schema.new({
            id = id.from(_N, "OnDemandResizingSpecification", "AllocationStrategy"),
            type = "string",
            name = "AllocationStrategy",
            target_id = prelude.String.id,
        }),
        CapacityReservationOptions = schema.new({
            id = id.from(_N, "OnDemandResizingSpecification", "CapacityReservationOptions"),
            type = "structure",
            name = "CapacityReservationOptions",
            target_id = id.from(_N, "OnDemandCapacityReservationOptions"),
            target = M.OnDemandCapacityReservationOptions,
        }),
    },
})

M.SpotResizingSpecification = schema.new({
    id = id.from(_N, "SpotResizingSpecification"),
    type = "structure",
    members = {
        TimeoutDurationMinutes = schema.new({
            id = id.from(_N, "SpotResizingSpecification", "TimeoutDurationMinutes"),
            type = "integer",
            name = "TimeoutDurationMinutes",
            target_id = prelude.Integer.id,
        }),
        AllocationStrategy = schema.new({
            id = id.from(_N, "SpotResizingSpecification", "AllocationStrategy"),
            type = "string",
            name = "AllocationStrategy",
            target_id = prelude.String.id,
        }),
    },
})

M.InstanceFleetResizingSpecifications = schema.new({
    id = id.from(_N, "InstanceFleetResizingSpecifications"),
    type = "structure",
    members = {
        SpotResizeSpecification = schema.new({
            id = id.from(_N, "InstanceFleetResizingSpecifications", "SpotResizeSpecification"),
            type = "structure",
            name = "SpotResizeSpecification",
            target_id = id.from(_N, "SpotResizingSpecification"),
            target = M.SpotResizingSpecification,
        }),
        OnDemandResizeSpecification = schema.new({
            id = id.from(_N, "InstanceFleetResizingSpecifications", "OnDemandResizeSpecification"),
            type = "structure",
            name = "OnDemandResizeSpecification",
            target_id = id.from(_N, "OnDemandResizingSpecification"),
            target = M.OnDemandResizingSpecification,
        }),
    },
})

M.AddInstanceFleetOutput = schema.new({
    id = id.from(_N, "AddInstanceFleetOutput"),
    type = "structure",
    members = {
        ClusterId = schema.new({
            id = id.from(_N, "AddInstanceFleetOutput", "ClusterId"),
            type = "string",
            name = "ClusterId",
            target_id = prelude.String.id,
        }),
        InstanceFleetId = schema.new({
            id = id.from(_N, "AddInstanceFleetOutput", "InstanceFleetId"),
            type = "string",
            name = "InstanceFleetId",
            target_id = prelude.String.id,
        }),
        ClusterArn = schema.new({
            id = id.from(_N, "AddInstanceFleetOutput", "ClusterArn"),
            type = "string",
            name = "ClusterArn",
            target_id = prelude.String.id,
        }),
    },
})

M.InternalServerException = schema.new({
    id = id.from(_N, "InternalServerException"),
    type = "structure",
    traits = {
        [traits.ERROR] = { value = "server" },
    },
    members = {
        Message = schema.new({
            id = id.from(_N, "InternalServerException", "Message"),
            type = "string",
            name = "Message",
            target_id = prelude.String.id,
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
        ErrorCode = schema.new({
            id = id.from(_N, "InvalidRequestException", "ErrorCode"),
            type = "string",
            name = "ErrorCode",
            target_id = prelude.String.id,
        }),
        Message = schema.new({
            id = id.from(_N, "InvalidRequestException", "Message"),
            type = "string",
            name = "Message",
            target_id = prelude.String.id,
        }),
    },
})

M.ScalingConstraints = schema.new({
    id = id.from(_N, "ScalingConstraints"),
    type = "structure",
    members = {
        MinCapacity = schema.new({
            id = id.from(_N, "ScalingConstraints", "MinCapacity"),
            type = "integer",
            name = "MinCapacity",
            target_id = prelude.Integer.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        MaxCapacity = schema.new({
            id = id.from(_N, "ScalingConstraints", "MaxCapacity"),
            type = "integer",
            name = "MaxCapacity",
            target_id = prelude.Integer.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.SimpleScalingPolicyConfiguration = schema.new({
    id = id.from(_N, "SimpleScalingPolicyConfiguration"),
    type = "structure",
    members = {
        AdjustmentType = schema.new({
            id = id.from(_N, "SimpleScalingPolicyConfiguration", "AdjustmentType"),
            type = "string",
            name = "AdjustmentType",
            target_id = prelude.String.id,
        }),
        ScalingAdjustment = schema.new({
            id = id.from(_N, "SimpleScalingPolicyConfiguration", "ScalingAdjustment"),
            type = "integer",
            name = "ScalingAdjustment",
            target_id = prelude.Integer.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        CoolDown = schema.new({
            id = id.from(_N, "SimpleScalingPolicyConfiguration", "CoolDown"),
            type = "integer",
            name = "CoolDown",
            target_id = prelude.Integer.id,
        }),
    },
})

M.ScalingAction = schema.new({
    id = id.from(_N, "ScalingAction"),
    type = "structure",
    members = {
        Market = schema.new({
            id = id.from(_N, "ScalingAction", "Market"),
            type = "string",
            name = "Market",
            target_id = prelude.String.id,
        }),
        SimpleScalingPolicyConfiguration = schema.new({
            id = id.from(_N, "ScalingAction", "SimpleScalingPolicyConfiguration"),
            type = "structure",
            name = "SimpleScalingPolicyConfiguration",
            target_id = id.from(_N, "SimpleScalingPolicyConfiguration"),
            target = M.SimpleScalingPolicyConfiguration,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.MetricDimension = schema.new({
    id = id.from(_N, "MetricDimension"),
    type = "structure",
    members = {
        Key = schema.new({
            id = id.from(_N, "MetricDimension", "Key"),
            type = "string",
            name = "Key",
            target_id = prelude.String.id,
        }),
        Value = schema.new({
            id = id.from(_N, "MetricDimension", "Value"),
            type = "string",
            name = "Value",
            target_id = prelude.String.id,
        }),
    },
})

M.CloudWatchAlarmDefinition = schema.new({
    id = id.from(_N, "CloudWatchAlarmDefinition"),
    type = "structure",
    members = {
        ComparisonOperator = schema.new({
            id = id.from(_N, "CloudWatchAlarmDefinition", "ComparisonOperator"),
            type = "string",
            name = "ComparisonOperator",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        EvaluationPeriods = schema.new({
            id = id.from(_N, "CloudWatchAlarmDefinition", "EvaluationPeriods"),
            type = "integer",
            name = "EvaluationPeriods",
            target_id = prelude.Integer.id,
        }),
        MetricName = schema.new({
            id = id.from(_N, "CloudWatchAlarmDefinition", "MetricName"),
            type = "string",
            name = "MetricName",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        Namespace = schema.new({
            id = id.from(_N, "CloudWatchAlarmDefinition", "Namespace"),
            type = "string",
            name = "Namespace",
            target_id = prelude.String.id,
        }),
        Period = schema.new({
            id = id.from(_N, "CloudWatchAlarmDefinition", "Period"),
            type = "integer",
            name = "Period",
            target_id = prelude.Integer.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        Statistic = schema.new({
            id = id.from(_N, "CloudWatchAlarmDefinition", "Statistic"),
            type = "string",
            name = "Statistic",
            target_id = prelude.String.id,
        }),
        Threshold = schema.new({
            id = id.from(_N, "CloudWatchAlarmDefinition", "Threshold"),
            type = "double",
            name = "Threshold",
            target_id = prelude.Double.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        Unit = schema.new({
            id = id.from(_N, "CloudWatchAlarmDefinition", "Unit"),
            type = "string",
            name = "Unit",
            target_id = prelude.String.id,
        }),
        Dimensions = schema.new({
            id = id.from(_N, "CloudWatchAlarmDefinition", "Dimensions"),
            type = "list",
            name = "Dimensions",
            target_id = prelude.Document.id,
            list_member = M.MetricDimension,
        }),
    },
})

M.ScalingTrigger = schema.new({
    id = id.from(_N, "ScalingTrigger"),
    type = "structure",
    members = {
        CloudWatchAlarmDefinition = schema.new({
            id = id.from(_N, "ScalingTrigger", "CloudWatchAlarmDefinition"),
            type = "structure",
            name = "CloudWatchAlarmDefinition",
            target_id = id.from(_N, "CloudWatchAlarmDefinition"),
            target = M.CloudWatchAlarmDefinition,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.ScalingRule = schema.new({
    id = id.from(_N, "ScalingRule"),
    type = "structure",
    members = {
        Name = schema.new({
            id = id.from(_N, "ScalingRule", "Name"),
            type = "string",
            name = "Name",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        Description = schema.new({
            id = id.from(_N, "ScalingRule", "Description"),
            type = "string",
            name = "Description",
            target_id = prelude.String.id,
        }),
        Action = schema.new({
            id = id.from(_N, "ScalingRule", "Action"),
            type = "structure",
            name = "Action",
            target_id = id.from(_N, "ScalingAction"),
            target = M.ScalingAction,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        Trigger = schema.new({
            id = id.from(_N, "ScalingRule", "Trigger"),
            type = "structure",
            name = "Trigger",
            target_id = id.from(_N, "ScalingTrigger"),
            target = M.ScalingTrigger,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.AutoScalingPolicy = schema.new({
    id = id.from(_N, "AutoScalingPolicy"),
    type = "structure",
    members = {
        Constraints = schema.new({
            id = id.from(_N, "AutoScalingPolicy", "Constraints"),
            type = "structure",
            name = "Constraints",
            target_id = id.from(_N, "ScalingConstraints"),
            target = M.ScalingConstraints,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        Rules = schema.new({
            id = id.from(_N, "AutoScalingPolicy", "Rules"),
            type = "list",
            name = "Rules",
            target_id = prelude.Document.id,
            list_member = M.ScalingRule,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.AddInstanceGroupsOutput = schema.new({
    id = id.from(_N, "AddInstanceGroupsOutput"),
    type = "structure",
    members = {
        JobFlowId = schema.new({
            id = id.from(_N, "AddInstanceGroupsOutput", "JobFlowId"),
            type = "string",
            name = "JobFlowId",
            target_id = prelude.String.id,
        }),
        InstanceGroupIds = schema.new({
            id = id.from(_N, "AddInstanceGroupsOutput", "InstanceGroupIds"),
            type = "list",
            name = "InstanceGroupIds",
            target_id = prelude.Document.id,
            list_member = prelude.String,
        }),
        ClusterArn = schema.new({
            id = id.from(_N, "AddInstanceGroupsOutput", "ClusterArn"),
            type = "string",
            name = "ClusterArn",
            target_id = prelude.String.id,
        }),
    },
})

M.InternalServerError = schema.new({
    id = id.from(_N, "InternalServerError"),
    type = "structure",
    traits = {
        [traits.ERROR] = { value = "server" },
    },
})

M.KeyValue = schema.new({
    id = id.from(_N, "KeyValue"),
    type = "structure",
    members = {
        Key = schema.new({
            id = id.from(_N, "KeyValue", "Key"),
            type = "string",
            name = "Key",
            target_id = prelude.String.id,
        }),
        Value = schema.new({
            id = id.from(_N, "KeyValue", "Value"),
            type = "string",
            name = "Value",
            target_id = prelude.String.id,
        }),
    },
})

M.HadoopJarStepConfig = schema.new({
    id = id.from(_N, "HadoopJarStepConfig"),
    type = "structure",
    members = {
        Properties = schema.new({
            id = id.from(_N, "HadoopJarStepConfig", "Properties"),
            type = "list",
            name = "Properties",
            target_id = prelude.Document.id,
            list_member = M.KeyValue,
        }),
        Jar = schema.new({
            id = id.from(_N, "HadoopJarStepConfig", "Jar"),
            type = "string",
            name = "Jar",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        MainClass = schema.new({
            id = id.from(_N, "HadoopJarStepConfig", "MainClass"),
            type = "string",
            name = "MainClass",
            target_id = prelude.String.id,
        }),
        Args = schema.new({
            id = id.from(_N, "HadoopJarStepConfig", "Args"),
            type = "list",
            name = "Args",
            target_id = prelude.Document.id,
            list_member = prelude.String,
        }),
    },
})

M.S3MonitoringConfiguration = schema.new({
    id = id.from(_N, "S3MonitoringConfiguration"),
    type = "structure",
    members = {
        LogUri = schema.new({
            id = id.from(_N, "S3MonitoringConfiguration", "LogUri"),
            type = "string",
            name = "LogUri",
            target_id = prelude.String.id,
        }),
        EncryptionKeyArn = schema.new({
            id = id.from(_N, "S3MonitoringConfiguration", "EncryptionKeyArn"),
            type = "string",
            name = "EncryptionKeyArn",
            target_id = prelude.String.id,
        }),
    },
})

M.StepMonitoringConfiguration = schema.new({
    id = id.from(_N, "StepMonitoringConfiguration"),
    type = "structure",
    members = {
        S3MonitoringConfiguration = schema.new({
            id = id.from(_N, "StepMonitoringConfiguration", "S3MonitoringConfiguration"),
            type = "structure",
            name = "S3MonitoringConfiguration",
            target_id = id.from(_N, "S3MonitoringConfiguration"),
            target = M.S3MonitoringConfiguration,
        }),
    },
})

M.StepConfig = schema.new({
    id = id.from(_N, "StepConfig"),
    type = "structure",
    members = {
        Name = schema.new({
            id = id.from(_N, "StepConfig", "Name"),
            type = "string",
            name = "Name",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        ActionOnFailure = schema.new({
            id = id.from(_N, "StepConfig", "ActionOnFailure"),
            type = "string",
            name = "ActionOnFailure",
            target_id = prelude.String.id,
        }),
        HadoopJarStep = schema.new({
            id = id.from(_N, "StepConfig", "HadoopJarStep"),
            type = "structure",
            name = "HadoopJarStep",
            target_id = id.from(_N, "HadoopJarStepConfig"),
            target = M.HadoopJarStepConfig,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        StepMonitoringConfiguration = schema.new({
            id = id.from(_N, "StepConfig", "StepMonitoringConfiguration"),
            type = "structure",
            name = "StepMonitoringConfiguration",
            target_id = id.from(_N, "StepMonitoringConfiguration"),
            target = M.StepMonitoringConfiguration,
        }),
    },
})

M.AddJobFlowStepsInput = schema.new({
    id = id.from(_N, "AddJobFlowStepsInput"),
    type = "structure",
    members = {
        JobFlowId = schema.new({
            id = id.from(_N, "AddJobFlowStepsInput", "JobFlowId"),
            type = "string",
            name = "JobFlowId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        Steps = schema.new({
            id = id.from(_N, "AddJobFlowStepsInput", "Steps"),
            type = "list",
            name = "Steps",
            target_id = prelude.Document.id,
            list_member = M.StepConfig,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        ExecutionRoleArn = schema.new({
            id = id.from(_N, "AddJobFlowStepsInput", "ExecutionRoleArn"),
            type = "string",
            name = "ExecutionRoleArn",
            target_id = prelude.String.id,
        }),
    },
})

M.AddJobFlowStepsOutput = schema.new({
    id = id.from(_N, "AddJobFlowStepsOutput"),
    type = "structure",
    members = {
        StepIds = schema.new({
            id = id.from(_N, "AddJobFlowStepsOutput", "StepIds"),
            type = "list",
            name = "StepIds",
            target_id = prelude.Document.id,
            list_member = prelude.String,
        }),
    },
})

M.Tag = schema.new({
    id = id.from(_N, "Tag"),
    type = "structure",
    members = {
        Key = schema.new({
            id = id.from(_N, "Tag", "Key"),
            type = "string",
            name = "Key",
            target_id = prelude.String.id,
        }),
        Value = schema.new({
            id = id.from(_N, "Tag", "Value"),
            type = "string",
            name = "Value",
            target_id = prelude.String.id,
        }),
    },
})

M.AddTagsInput = schema.new({
    id = id.from(_N, "AddTagsInput"),
    type = "structure",
    members = {
        ResourceId = schema.new({
            id = id.from(_N, "AddTagsInput", "ResourceId"),
            type = "string",
            name = "ResourceId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        Tags = schema.new({
            id = id.from(_N, "AddTagsInput", "Tags"),
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

M.AddTagsOutput = schema.new({
    id = id.from(_N, "AddTagsOutput"),
    type = "structure",
})

M.Application = schema.new({
    id = id.from(_N, "Application"),
    type = "structure",
    members = {
        Name = schema.new({
            id = id.from(_N, "Application", "Name"),
            type = "string",
            name = "Name",
            target_id = prelude.String.id,
        }),
        Version = schema.new({
            id = id.from(_N, "Application", "Version"),
            type = "string",
            name = "Version",
            target_id = prelude.String.id,
        }),
        Args = schema.new({
            id = id.from(_N, "Application", "Args"),
            type = "list",
            name = "Args",
            target_id = prelude.Document.id,
            list_member = prelude.String,
        }),
        AdditionalInfo = schema.new({
            id = id.from(_N, "Application", "AdditionalInfo"),
            type = "map",
            name = "AdditionalInfo",
            target_id = prelude.Document.id,
            map_key = prelude.String,
            map_value = prelude.String,
        }),
    },
})

M.AutoScalingPolicyStateChangeReason = schema.new({
    id = id.from(_N, "AutoScalingPolicyStateChangeReason"),
    type = "structure",
    members = {
        Code = schema.new({
            id = id.from(_N, "AutoScalingPolicyStateChangeReason", "Code"),
            type = "string",
            name = "Code",
            target_id = prelude.String.id,
        }),
        Message = schema.new({
            id = id.from(_N, "AutoScalingPolicyStateChangeReason", "Message"),
            type = "string",
            name = "Message",
            target_id = prelude.String.id,
        }),
    },
})

M.AutoScalingPolicyStatus = schema.new({
    id = id.from(_N, "AutoScalingPolicyStatus"),
    type = "structure",
    members = {
        State = schema.new({
            id = id.from(_N, "AutoScalingPolicyStatus", "State"),
            type = "string",
            name = "State",
            target_id = prelude.String.id,
        }),
        StateChangeReason = schema.new({
            id = id.from(_N, "AutoScalingPolicyStatus", "StateChangeReason"),
            type = "structure",
            name = "StateChangeReason",
            target_id = id.from(_N, "AutoScalingPolicyStateChangeReason"),
            target = M.AutoScalingPolicyStateChangeReason,
        }),
    },
})

M.AutoScalingPolicyDescription = schema.new({
    id = id.from(_N, "AutoScalingPolicyDescription"),
    type = "structure",
    members = {
        Status = schema.new({
            id = id.from(_N, "AutoScalingPolicyDescription", "Status"),
            type = "structure",
            name = "Status",
            target_id = id.from(_N, "AutoScalingPolicyStatus"),
            target = M.AutoScalingPolicyStatus,
        }),
        Constraints = schema.new({
            id = id.from(_N, "AutoScalingPolicyDescription", "Constraints"),
            type = "structure",
            name = "Constraints",
            target_id = id.from(_N, "ScalingConstraints"),
            target = M.ScalingConstraints,
        }),
        Rules = schema.new({
            id = id.from(_N, "AutoScalingPolicyDescription", "Rules"),
            type = "list",
            name = "Rules",
            target_id = prelude.Document.id,
            list_member = M.ScalingRule,
        }),
    },
})

M.AutoTerminationPolicy = schema.new({
    id = id.from(_N, "AutoTerminationPolicy"),
    type = "structure",
    members = {
        IdleTimeout = schema.new({
            id = id.from(_N, "AutoTerminationPolicy", "IdleTimeout"),
            type = "long",
            name = "IdleTimeout",
            target_id = prelude.Long.id,
        }),
    },
})

M.PortRange = schema.new({
    id = id.from(_N, "PortRange"),
    type = "structure",
    members = {
        MinRange = schema.new({
            id = id.from(_N, "PortRange", "MinRange"),
            type = "integer",
            name = "MinRange",
            target_id = prelude.Integer.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        MaxRange = schema.new({
            id = id.from(_N, "PortRange", "MaxRange"),
            type = "integer",
            name = "MaxRange",
            target_id = prelude.Integer.id,
        }),
    },
})

M.BlockPublicAccessConfigurationMetadata = schema.new({
    id = id.from(_N, "BlockPublicAccessConfigurationMetadata"),
    type = "structure",
    members = {
        CreationDateTime = schema.new({
            id = id.from(_N, "BlockPublicAccessConfigurationMetadata", "CreationDateTime"),
            type = "timestamp",
            name = "CreationDateTime",
            target_id = prelude.Timestamp.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        CreatedByArn = schema.new({
            id = id.from(_N, "BlockPublicAccessConfigurationMetadata", "CreatedByArn"),
            type = "string",
            name = "CreatedByArn",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.ScriptBootstrapActionConfig = schema.new({
    id = id.from(_N, "ScriptBootstrapActionConfig"),
    type = "structure",
    members = {
        Path = schema.new({
            id = id.from(_N, "ScriptBootstrapActionConfig", "Path"),
            type = "string",
            name = "Path",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        Args = schema.new({
            id = id.from(_N, "ScriptBootstrapActionConfig", "Args"),
            type = "list",
            name = "Args",
            target_id = prelude.Document.id,
            list_member = prelude.String,
        }),
    },
})

M.BootstrapActionConfig = schema.new({
    id = id.from(_N, "BootstrapActionConfig"),
    type = "structure",
    members = {
        Name = schema.new({
            id = id.from(_N, "BootstrapActionConfig", "Name"),
            type = "string",
            name = "Name",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        ScriptBootstrapAction = schema.new({
            id = id.from(_N, "BootstrapActionConfig", "ScriptBootstrapAction"),
            type = "structure",
            name = "ScriptBootstrapAction",
            target_id = id.from(_N, "ScriptBootstrapActionConfig"),
            target = M.ScriptBootstrapActionConfig,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.BootstrapActionDetail = schema.new({
    id = id.from(_N, "BootstrapActionDetail"),
    type = "structure",
    members = {
        BootstrapActionConfig = schema.new({
            id = id.from(_N, "BootstrapActionDetail", "BootstrapActionConfig"),
            type = "structure",
            name = "BootstrapActionConfig",
            target_id = id.from(_N, "BootstrapActionConfig"),
            target = M.BootstrapActionConfig,
        }),
    },
})

M.CancelStepsInput = schema.new({
    id = id.from(_N, "CancelStepsInput"),
    type = "structure",
    members = {
        ClusterId = schema.new({
            id = id.from(_N, "CancelStepsInput", "ClusterId"),
            type = "string",
            name = "ClusterId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        StepIds = schema.new({
            id = id.from(_N, "CancelStepsInput", "StepIds"),
            type = "list",
            name = "StepIds",
            target_id = prelude.Document.id,
            list_member = prelude.String,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        StepCancellationOption = schema.new({
            id = id.from(_N, "CancelStepsInput", "StepCancellationOption"),
            type = "string",
            name = "StepCancellationOption",
            target_id = prelude.String.id,
        }),
    },
})

M.CancelStepsInfo = schema.new({
    id = id.from(_N, "CancelStepsInfo"),
    type = "structure",
    members = {
        StepId = schema.new({
            id = id.from(_N, "CancelStepsInfo", "StepId"),
            type = "string",
            name = "StepId",
            target_id = prelude.String.id,
        }),
        Status = schema.new({
            id = id.from(_N, "CancelStepsInfo", "Status"),
            type = "string",
            name = "Status",
            target_id = prelude.String.id,
        }),
        Reason = schema.new({
            id = id.from(_N, "CancelStepsInfo", "Reason"),
            type = "string",
            name = "Reason",
            target_id = prelude.String.id,
        }),
    },
})

M.CancelStepsOutput = schema.new({
    id = id.from(_N, "CancelStepsOutput"),
    type = "structure",
    members = {
        CancelStepsInfoList = schema.new({
            id = id.from(_N, "CancelStepsOutput", "CancelStepsInfoList"),
            type = "list",
            name = "CancelStepsInfoList",
            target_id = prelude.Document.id,
            list_member = M.CancelStepsInfo,
        }),
    },
})

M.CloudWatchLogConfiguration = schema.new({
    id = id.from(_N, "CloudWatchLogConfiguration"),
    type = "structure",
    members = {
        Enabled = schema.new({
            id = id.from(_N, "CloudWatchLogConfiguration", "Enabled"),
            type = "boolean",
            name = "Enabled",
            target_id = prelude.Boolean.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        LogGroupName = schema.new({
            id = id.from(_N, "CloudWatchLogConfiguration", "LogGroupName"),
            type = "string",
            name = "LogGroupName",
            target_id = prelude.String.id,
        }),
        LogStreamNamePrefix = schema.new({
            id = id.from(_N, "CloudWatchLogConfiguration", "LogStreamNamePrefix"),
            type = "string",
            name = "LogStreamNamePrefix",
            target_id = prelude.String.id,
        }),
        EncryptionKeyArn = schema.new({
            id = id.from(_N, "CloudWatchLogConfiguration", "EncryptionKeyArn"),
            type = "string",
            name = "EncryptionKeyArn",
            target_id = prelude.String.id,
        }),
        LogTypes = schema.new({
            id = id.from(_N, "CloudWatchLogConfiguration", "LogTypes"),
            type = "map",
            name = "LogTypes",
            target_id = prelude.Document.id,
            map_key = prelude.String,
            map_value = schema.new({ type = "list", list_member = prelude.String }),
        }),
    },
})

M.Ec2InstanceAttributes = schema.new({
    id = id.from(_N, "Ec2InstanceAttributes"),
    type = "structure",
    members = {
        Ec2KeyName = schema.new({
            id = id.from(_N, "Ec2InstanceAttributes", "Ec2KeyName"),
            type = "string",
            name = "Ec2KeyName",
            target_id = prelude.String.id,
        }),
        Ec2SubnetId = schema.new({
            id = id.from(_N, "Ec2InstanceAttributes", "Ec2SubnetId"),
            type = "string",
            name = "Ec2SubnetId",
            target_id = prelude.String.id,
        }),
        RequestedEc2SubnetIds = schema.new({
            id = id.from(_N, "Ec2InstanceAttributes", "RequestedEc2SubnetIds"),
            type = "list",
            name = "RequestedEc2SubnetIds",
            target_id = prelude.Document.id,
            list_member = prelude.String,
        }),
        Ec2AvailabilityZone = schema.new({
            id = id.from(_N, "Ec2InstanceAttributes", "Ec2AvailabilityZone"),
            type = "string",
            name = "Ec2AvailabilityZone",
            target_id = prelude.String.id,
        }),
        RequestedEc2AvailabilityZones = schema.new({
            id = id.from(_N, "Ec2InstanceAttributes", "RequestedEc2AvailabilityZones"),
            type = "list",
            name = "RequestedEc2AvailabilityZones",
            target_id = prelude.Document.id,
            list_member = prelude.String,
        }),
        IamInstanceProfile = schema.new({
            id = id.from(_N, "Ec2InstanceAttributes", "IamInstanceProfile"),
            type = "string",
            name = "IamInstanceProfile",
            target_id = prelude.String.id,
        }),
        EmrManagedMasterSecurityGroup = schema.new({
            id = id.from(_N, "Ec2InstanceAttributes", "EmrManagedMasterSecurityGroup"),
            type = "string",
            name = "EmrManagedMasterSecurityGroup",
            target_id = prelude.String.id,
        }),
        EmrManagedSlaveSecurityGroup = schema.new({
            id = id.from(_N, "Ec2InstanceAttributes", "EmrManagedSlaveSecurityGroup"),
            type = "string",
            name = "EmrManagedSlaveSecurityGroup",
            target_id = prelude.String.id,
        }),
        ServiceAccessSecurityGroup = schema.new({
            id = id.from(_N, "Ec2InstanceAttributes", "ServiceAccessSecurityGroup"),
            type = "string",
            name = "ServiceAccessSecurityGroup",
            target_id = prelude.String.id,
        }),
        AdditionalMasterSecurityGroups = schema.new({
            id = id.from(_N, "Ec2InstanceAttributes", "AdditionalMasterSecurityGroups"),
            type = "list",
            name = "AdditionalMasterSecurityGroups",
            target_id = prelude.Document.id,
            list_member = prelude.String,
        }),
        AdditionalSlaveSecurityGroups = schema.new({
            id = id.from(_N, "Ec2InstanceAttributes", "AdditionalSlaveSecurityGroups"),
            type = "list",
            name = "AdditionalSlaveSecurityGroups",
            target_id = prelude.Document.id,
            list_member = prelude.String,
        }),
    },
})

M.KerberosAttributes = schema.new({
    id = id.from(_N, "KerberosAttributes"),
    type = "structure",
    members = {
        Realm = schema.new({
            id = id.from(_N, "KerberosAttributes", "Realm"),
            type = "string",
            name = "Realm",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        KdcAdminPassword = schema.new({
            id = id.from(_N, "KerberosAttributes", "KdcAdminPassword"),
            type = "string",
            name = "KdcAdminPassword",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        CrossRealmTrustPrincipalPassword = schema.new({
            id = id.from(_N, "KerberosAttributes", "CrossRealmTrustPrincipalPassword"),
            type = "string",
            name = "CrossRealmTrustPrincipalPassword",
            target_id = prelude.String.id,
        }),
        ADDomainJoinUser = schema.new({
            id = id.from(_N, "KerberosAttributes", "ADDomainJoinUser"),
            type = "string",
            name = "ADDomainJoinUser",
            target_id = prelude.String.id,
        }),
        ADDomainJoinPassword = schema.new({
            id = id.from(_N, "KerberosAttributes", "ADDomainJoinPassword"),
            type = "string",
            name = "ADDomainJoinPassword",
            target_id = prelude.String.id,
        }),
    },
})

M.S3LoggingConfiguration = schema.new({
    id = id.from(_N, "S3LoggingConfiguration"),
    type = "structure",
    members = {
        LogTypeUploadPolicy = schema.new({
            id = id.from(_N, "S3LoggingConfiguration", "LogTypeUploadPolicy"),
            type = "map",
            name = "LogTypeUploadPolicy",
            target_id = prelude.Document.id,
            map_key = prelude.String,
            map_value = prelude.String,
        }),
    },
})

M.MonitoringConfiguration = schema.new({
    id = id.from(_N, "MonitoringConfiguration"),
    type = "structure",
    members = {
        CloudWatchLogConfiguration = schema.new({
            id = id.from(_N, "MonitoringConfiguration", "CloudWatchLogConfiguration"),
            type = "structure",
            name = "CloudWatchLogConfiguration",
            target_id = id.from(_N, "CloudWatchLogConfiguration"),
            target = M.CloudWatchLogConfiguration,
        }),
        S3LoggingConfiguration = schema.new({
            id = id.from(_N, "MonitoringConfiguration", "S3LoggingConfiguration"),
            type = "structure",
            name = "S3LoggingConfiguration",
            target_id = id.from(_N, "S3LoggingConfiguration"),
            target = M.S3LoggingConfiguration,
        }),
    },
})

M.PlacementGroupConfig = schema.new({
    id = id.from(_N, "PlacementGroupConfig"),
    type = "structure",
    members = {
        InstanceRole = schema.new({
            id = id.from(_N, "PlacementGroupConfig", "InstanceRole"),
            type = "string",
            name = "InstanceRole",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        PlacementStrategy = schema.new({
            id = id.from(_N, "PlacementGroupConfig", "PlacementStrategy"),
            type = "string",
            name = "PlacementStrategy",
            target_id = prelude.String.id,
        }),
    },
})

M.ErrorDetail = schema.new({
    id = id.from(_N, "ErrorDetail"),
    type = "structure",
    members = {
        ErrorCode = schema.new({
            id = id.from(_N, "ErrorDetail", "ErrorCode"),
            type = "string",
            name = "ErrorCode",
            target_id = prelude.String.id,
        }),
        ErrorData = schema.new({
            id = id.from(_N, "ErrorDetail", "ErrorData"),
            type = "list",
            name = "ErrorData",
            target_id = prelude.Document.id,
            list_member = M.StringMap,
        }),
        ErrorMessage = schema.new({
            id = id.from(_N, "ErrorDetail", "ErrorMessage"),
            type = "string",
            name = "ErrorMessage",
            target_id = prelude.String.id,
        }),
    },
})

M.ClusterStateChangeReason = schema.new({
    id = id.from(_N, "ClusterStateChangeReason"),
    type = "structure",
    members = {
        Code = schema.new({
            id = id.from(_N, "ClusterStateChangeReason", "Code"),
            type = "string",
            name = "Code",
            target_id = prelude.String.id,
        }),
        Message = schema.new({
            id = id.from(_N, "ClusterStateChangeReason", "Message"),
            type = "string",
            name = "Message",
            target_id = prelude.String.id,
        }),
    },
})

M.ClusterTimeline = schema.new({
    id = id.from(_N, "ClusterTimeline"),
    type = "structure",
    members = {
        CreationDateTime = schema.new({
            id = id.from(_N, "ClusterTimeline", "CreationDateTime"),
            type = "timestamp",
            name = "CreationDateTime",
            target_id = prelude.Timestamp.id,
        }),
        ReadyDateTime = schema.new({
            id = id.from(_N, "ClusterTimeline", "ReadyDateTime"),
            type = "timestamp",
            name = "ReadyDateTime",
            target_id = prelude.Timestamp.id,
        }),
        EndDateTime = schema.new({
            id = id.from(_N, "ClusterTimeline", "EndDateTime"),
            type = "timestamp",
            name = "EndDateTime",
            target_id = prelude.Timestamp.id,
        }),
    },
})

M.ClusterStatus = schema.new({
    id = id.from(_N, "ClusterStatus"),
    type = "structure",
    members = {
        State = schema.new({
            id = id.from(_N, "ClusterStatus", "State"),
            type = "string",
            name = "State",
            target_id = prelude.String.id,
        }),
        StateChangeReason = schema.new({
            id = id.from(_N, "ClusterStatus", "StateChangeReason"),
            type = "structure",
            name = "StateChangeReason",
            target_id = id.from(_N, "ClusterStateChangeReason"),
            target = M.ClusterStateChangeReason,
        }),
        Timeline = schema.new({
            id = id.from(_N, "ClusterStatus", "Timeline"),
            type = "structure",
            name = "Timeline",
            target_id = id.from(_N, "ClusterTimeline"),
            target = M.ClusterTimeline,
        }),
        ErrorDetails = schema.new({
            id = id.from(_N, "ClusterStatus", "ErrorDetails"),
            type = "list",
            name = "ErrorDetails",
            target_id = prelude.Document.id,
            list_member = M.ErrorDetail,
        }),
    },
})

M.ClusterSummary = schema.new({
    id = id.from(_N, "ClusterSummary"),
    type = "structure",
    members = {
        Id = schema.new({
            id = id.from(_N, "ClusterSummary", "Id"),
            type = "string",
            name = "Id",
            target_id = prelude.String.id,
        }),
        Name = schema.new({
            id = id.from(_N, "ClusterSummary", "Name"),
            type = "string",
            name = "Name",
            target_id = prelude.String.id,
        }),
        Status = schema.new({
            id = id.from(_N, "ClusterSummary", "Status"),
            type = "structure",
            name = "Status",
            target_id = id.from(_N, "ClusterStatus"),
            target = M.ClusterStatus,
        }),
        NormalizedInstanceHours = schema.new({
            id = id.from(_N, "ClusterSummary", "NormalizedInstanceHours"),
            type = "integer",
            name = "NormalizedInstanceHours",
            target_id = prelude.Integer.id,
        }),
        ClusterArn = schema.new({
            id = id.from(_N, "ClusterSummary", "ClusterArn"),
            type = "string",
            name = "ClusterArn",
            target_id = prelude.String.id,
        }),
        OutpostArn = schema.new({
            id = id.from(_N, "ClusterSummary", "OutpostArn"),
            type = "string",
            name = "OutpostArn",
            target_id = prelude.String.id,
        }),
    },
})

M.Command = schema.new({
    id = id.from(_N, "Command"),
    type = "structure",
    members = {
        Name = schema.new({
            id = id.from(_N, "Command", "Name"),
            type = "string",
            name = "Name",
            target_id = prelude.String.id,
        }),
        ScriptPath = schema.new({
            id = id.from(_N, "Command", "ScriptPath"),
            type = "string",
            name = "ScriptPath",
            target_id = prelude.String.id,
        }),
        Args = schema.new({
            id = id.from(_N, "Command", "Args"),
            type = "list",
            name = "Args",
            target_id = prelude.Document.id,
            list_member = prelude.String,
        }),
    },
})

M.ComputeLimits = schema.new({
    id = id.from(_N, "ComputeLimits"),
    type = "structure",
    members = {
        UnitType = schema.new({
            id = id.from(_N, "ComputeLimits", "UnitType"),
            type = "string",
            name = "UnitType",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        MinimumCapacityUnits = schema.new({
            id = id.from(_N, "ComputeLimits", "MinimumCapacityUnits"),
            type = "integer",
            name = "MinimumCapacityUnits",
            target_id = prelude.Integer.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        MaximumCapacityUnits = schema.new({
            id = id.from(_N, "ComputeLimits", "MaximumCapacityUnits"),
            type = "integer",
            name = "MaximumCapacityUnits",
            target_id = prelude.Integer.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        MaximumOnDemandCapacityUnits = schema.new({
            id = id.from(_N, "ComputeLimits", "MaximumOnDemandCapacityUnits"),
            type = "integer",
            name = "MaximumOnDemandCapacityUnits",
            target_id = prelude.Integer.id,
        }),
        MaximumCoreCapacityUnits = schema.new({
            id = id.from(_N, "ComputeLimits", "MaximumCoreCapacityUnits"),
            type = "integer",
            name = "MaximumCoreCapacityUnits",
            target_id = prelude.Integer.id,
        }),
    },
})

M.EMRContainersConfig = schema.new({
    id = id.from(_N, "EMRContainersConfig"),
    type = "structure",
    members = {
        JobRunId = schema.new({
            id = id.from(_N, "EMRContainersConfig", "JobRunId"),
            type = "string",
            name = "JobRunId",
            target_id = prelude.String.id,
        }),
    },
})

M.CreatePersistentAppUIInput = schema.new({
    id = id.from(_N, "CreatePersistentAppUIInput"),
    type = "structure",
    members = {
        TargetResourceArn = schema.new({
            id = id.from(_N, "CreatePersistentAppUIInput", "TargetResourceArn"),
            type = "string",
            name = "TargetResourceArn",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        EMRContainersConfig = schema.new({
            id = id.from(_N, "CreatePersistentAppUIInput", "EMRContainersConfig"),
            type = "structure",
            name = "EMRContainersConfig",
            target_id = id.from(_N, "EMRContainersConfig"),
            target = M.EMRContainersConfig,
        }),
        Tags = schema.new({
            id = id.from(_N, "CreatePersistentAppUIInput", "Tags"),
            type = "list",
            name = "Tags",
            target_id = prelude.Document.id,
            list_member = M.Tag,
        }),
        XReferer = schema.new({
            id = id.from(_N, "CreatePersistentAppUIInput", "XReferer"),
            type = "string",
            name = "XReferer",
            target_id = prelude.String.id,
        }),
        ProfilerType = schema.new({
            id = id.from(_N, "CreatePersistentAppUIInput", "ProfilerType"),
            type = "string",
            name = "ProfilerType",
            target_id = prelude.String.id,
        }),
    },
})

M.CreatePersistentAppUIOutput = schema.new({
    id = id.from(_N, "CreatePersistentAppUIOutput"),
    type = "structure",
    members = {
        PersistentAppUIId = schema.new({
            id = id.from(_N, "CreatePersistentAppUIOutput", "PersistentAppUIId"),
            type = "string",
            name = "PersistentAppUIId",
            target_id = prelude.String.id,
        }),
        RuntimeRoleEnabledCluster = schema.new({
            id = id.from(_N, "CreatePersistentAppUIOutput", "RuntimeRoleEnabledCluster"),
            type = "boolean",
            name = "RuntimeRoleEnabledCluster",
            target_id = prelude.Boolean.id,
        }),
    },
})

M.CreateSecurityConfigurationInput = schema.new({
    id = id.from(_N, "CreateSecurityConfigurationInput"),
    type = "structure",
    members = {
        Name = schema.new({
            id = id.from(_N, "CreateSecurityConfigurationInput", "Name"),
            type = "string",
            name = "Name",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        SecurityConfiguration = schema.new({
            id = id.from(_N, "CreateSecurityConfigurationInput", "SecurityConfiguration"),
            type = "string",
            name = "SecurityConfiguration",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.CreateSecurityConfigurationOutput = schema.new({
    id = id.from(_N, "CreateSecurityConfigurationOutput"),
    type = "structure",
    members = {
        Name = schema.new({
            id = id.from(_N, "CreateSecurityConfigurationOutput", "Name"),
            type = "string",
            name = "Name",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        CreationDateTime = schema.new({
            id = id.from(_N, "CreateSecurityConfigurationOutput", "CreationDateTime"),
            type = "timestamp",
            name = "CreationDateTime",
            target_id = prelude.Timestamp.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.CreateStudioInput = schema.new({
    id = id.from(_N, "CreateStudioInput"),
    type = "structure",
    members = {
        Name = schema.new({
            id = id.from(_N, "CreateStudioInput", "Name"),
            type = "string",
            name = "Name",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        Description = schema.new({
            id = id.from(_N, "CreateStudioInput", "Description"),
            type = "string",
            name = "Description",
            target_id = prelude.String.id,
        }),
        AuthMode = schema.new({
            id = id.from(_N, "CreateStudioInput", "AuthMode"),
            type = "string",
            name = "AuthMode",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        VpcId = schema.new({
            id = id.from(_N, "CreateStudioInput", "VpcId"),
            type = "string",
            name = "VpcId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        SubnetIds = schema.new({
            id = id.from(_N, "CreateStudioInput", "SubnetIds"),
            type = "list",
            name = "SubnetIds",
            target_id = prelude.Document.id,
            list_member = prelude.String,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        ServiceRole = schema.new({
            id = id.from(_N, "CreateStudioInput", "ServiceRole"),
            type = "string",
            name = "ServiceRole",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        UserRole = schema.new({
            id = id.from(_N, "CreateStudioInput", "UserRole"),
            type = "string",
            name = "UserRole",
            target_id = prelude.String.id,
        }),
        WorkspaceSecurityGroupId = schema.new({
            id = id.from(_N, "CreateStudioInput", "WorkspaceSecurityGroupId"),
            type = "string",
            name = "WorkspaceSecurityGroupId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        EngineSecurityGroupId = schema.new({
            id = id.from(_N, "CreateStudioInput", "EngineSecurityGroupId"),
            type = "string",
            name = "EngineSecurityGroupId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        DefaultS3Location = schema.new({
            id = id.from(_N, "CreateStudioInput", "DefaultS3Location"),
            type = "string",
            name = "DefaultS3Location",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        IdpAuthUrl = schema.new({
            id = id.from(_N, "CreateStudioInput", "IdpAuthUrl"),
            type = "string",
            name = "IdpAuthUrl",
            target_id = prelude.String.id,
        }),
        IdpRelayStateParameterName = schema.new({
            id = id.from(_N, "CreateStudioInput", "IdpRelayStateParameterName"),
            type = "string",
            name = "IdpRelayStateParameterName",
            target_id = prelude.String.id,
        }),
        Tags = schema.new({
            id = id.from(_N, "CreateStudioInput", "Tags"),
            type = "list",
            name = "Tags",
            target_id = prelude.Document.id,
            list_member = M.Tag,
        }),
        TrustedIdentityPropagationEnabled = schema.new({
            id = id.from(_N, "CreateStudioInput", "TrustedIdentityPropagationEnabled"),
            type = "boolean",
            name = "TrustedIdentityPropagationEnabled",
            target_id = prelude.Boolean.id,
        }),
        IdcUserAssignment = schema.new({
            id = id.from(_N, "CreateStudioInput", "IdcUserAssignment"),
            type = "string",
            name = "IdcUserAssignment",
            target_id = prelude.String.id,
        }),
        IdcInstanceArn = schema.new({
            id = id.from(_N, "CreateStudioInput", "IdcInstanceArn"),
            type = "string",
            name = "IdcInstanceArn",
            target_id = prelude.String.id,
        }),
        EncryptionKeyArn = schema.new({
            id = id.from(_N, "CreateStudioInput", "EncryptionKeyArn"),
            type = "string",
            name = "EncryptionKeyArn",
            target_id = prelude.String.id,
        }),
    },
})

M.CreateStudioOutput = schema.new({
    id = id.from(_N, "CreateStudioOutput"),
    type = "structure",
    members = {
        StudioId = schema.new({
            id = id.from(_N, "CreateStudioOutput", "StudioId"),
            type = "string",
            name = "StudioId",
            target_id = prelude.String.id,
        }),
        Url = schema.new({
            id = id.from(_N, "CreateStudioOutput", "Url"),
            type = "string",
            name = "Url",
            target_id = prelude.String.id,
        }),
    },
})

M.CreateStudioSessionMappingInput = schema.new({
    id = id.from(_N, "CreateStudioSessionMappingInput"),
    type = "structure",
    members = {
        StudioId = schema.new({
            id = id.from(_N, "CreateStudioSessionMappingInput", "StudioId"),
            type = "string",
            name = "StudioId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        IdentityId = schema.new({
            id = id.from(_N, "CreateStudioSessionMappingInput", "IdentityId"),
            type = "string",
            name = "IdentityId",
            target_id = prelude.String.id,
        }),
        IdentityName = schema.new({
            id = id.from(_N, "CreateStudioSessionMappingInput", "IdentityName"),
            type = "string",
            name = "IdentityName",
            target_id = prelude.String.id,
        }),
        IdentityType = schema.new({
            id = id.from(_N, "CreateStudioSessionMappingInput", "IdentityType"),
            type = "string",
            name = "IdentityType",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        SessionPolicyArn = schema.new({
            id = id.from(_N, "CreateStudioSessionMappingInput", "SessionPolicyArn"),
            type = "string",
            name = "SessionPolicyArn",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.CreateStudioSessionMappingOutput = prelude.Unit

M.UsernamePassword = schema.new({
    id = id.from(_N, "UsernamePassword"),
    type = "structure",
    members = {
        Username = schema.new({
            id = id.from(_N, "UsernamePassword", "Username"),
            type = "string",
            name = "Username",
            target_id = prelude.String.id,
        }),
        Password = schema.new({
            id = id.from(_N, "UsernamePassword", "Password"),
            type = "string",
            name = "Password",
            target_id = prelude.String.id,
        }),
    },
})

M.Credentials = schema.new({
    id = id.from(_N, "Credentials"),
    type = "union",
    members = {
        UsernamePassword = schema.new({
            id = id.from(_N, "Credentials", "UsernamePassword"),
            type = "structure",
            name = "UsernamePassword",
            target_id = id.from(_N, "UsernamePassword"),
            target = M.UsernamePassword,
        }),
    },
})

M.DeleteSecurityConfigurationInput = schema.new({
    id = id.from(_N, "DeleteSecurityConfigurationInput"),
    type = "structure",
    members = {
        Name = schema.new({
            id = id.from(_N, "DeleteSecurityConfigurationInput", "Name"),
            type = "string",
            name = "Name",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.DeleteSecurityConfigurationOutput = schema.new({
    id = id.from(_N, "DeleteSecurityConfigurationOutput"),
    type = "structure",
})

M.DeleteStudioInput = schema.new({
    id = id.from(_N, "DeleteStudioInput"),
    type = "structure",
    members = {
        StudioId = schema.new({
            id = id.from(_N, "DeleteStudioInput", "StudioId"),
            type = "string",
            name = "StudioId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.DeleteStudioOutput = prelude.Unit

M.DeleteStudioSessionMappingInput = schema.new({
    id = id.from(_N, "DeleteStudioSessionMappingInput"),
    type = "structure",
    members = {
        StudioId = schema.new({
            id = id.from(_N, "DeleteStudioSessionMappingInput", "StudioId"),
            type = "string",
            name = "StudioId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        IdentityId = schema.new({
            id = id.from(_N, "DeleteStudioSessionMappingInput", "IdentityId"),
            type = "string",
            name = "IdentityId",
            target_id = prelude.String.id,
        }),
        IdentityName = schema.new({
            id = id.from(_N, "DeleteStudioSessionMappingInput", "IdentityName"),
            type = "string",
            name = "IdentityName",
            target_id = prelude.String.id,
        }),
        IdentityType = schema.new({
            id = id.from(_N, "DeleteStudioSessionMappingInput", "IdentityType"),
            type = "string",
            name = "IdentityType",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.DeleteStudioSessionMappingOutput = prelude.Unit

M.DescribeClusterInput = schema.new({
    id = id.from(_N, "DescribeClusterInput"),
    type = "structure",
    members = {
        ClusterId = schema.new({
            id = id.from(_N, "DescribeClusterInput", "ClusterId"),
            type = "string",
            name = "ClusterId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.DescribeJobFlowsInput = schema.new({
    id = id.from(_N, "DescribeJobFlowsInput"),
    type = "structure",
    members = {
        CreatedAfter = schema.new({
            id = id.from(_N, "DescribeJobFlowsInput", "CreatedAfter"),
            type = "timestamp",
            name = "CreatedAfter",
            target_id = prelude.Timestamp.id,
        }),
        CreatedBefore = schema.new({
            id = id.from(_N, "DescribeJobFlowsInput", "CreatedBefore"),
            type = "timestamp",
            name = "CreatedBefore",
            target_id = prelude.Timestamp.id,
        }),
        JobFlowIds = schema.new({
            id = id.from(_N, "DescribeJobFlowsInput", "JobFlowIds"),
            type = "list",
            name = "JobFlowIds",
            target_id = prelude.Document.id,
            list_member = prelude.String,
        }),
        JobFlowStates = schema.new({
            id = id.from(_N, "DescribeJobFlowsInput", "JobFlowStates"),
            type = "list",
            name = "JobFlowStates",
            target_id = prelude.Document.id,
            list_member = prelude.String,
        }),
    },
})

M.JobFlowExecutionStatusDetail = schema.new({
    id = id.from(_N, "JobFlowExecutionStatusDetail"),
    type = "structure",
    members = {
        State = schema.new({
            id = id.from(_N, "JobFlowExecutionStatusDetail", "State"),
            type = "string",
            name = "State",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        CreationDateTime = schema.new({
            id = id.from(_N, "JobFlowExecutionStatusDetail", "CreationDateTime"),
            type = "timestamp",
            name = "CreationDateTime",
            target_id = prelude.Timestamp.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        StartDateTime = schema.new({
            id = id.from(_N, "JobFlowExecutionStatusDetail", "StartDateTime"),
            type = "timestamp",
            name = "StartDateTime",
            target_id = prelude.Timestamp.id,
        }),
        ReadyDateTime = schema.new({
            id = id.from(_N, "JobFlowExecutionStatusDetail", "ReadyDateTime"),
            type = "timestamp",
            name = "ReadyDateTime",
            target_id = prelude.Timestamp.id,
        }),
        EndDateTime = schema.new({
            id = id.from(_N, "JobFlowExecutionStatusDetail", "EndDateTime"),
            type = "timestamp",
            name = "EndDateTime",
            target_id = prelude.Timestamp.id,
        }),
        LastStateChangeReason = schema.new({
            id = id.from(_N, "JobFlowExecutionStatusDetail", "LastStateChangeReason"),
            type = "string",
            name = "LastStateChangeReason",
            target_id = prelude.String.id,
        }),
    },
})

M.InstanceGroupDetail = schema.new({
    id = id.from(_N, "InstanceGroupDetail"),
    type = "structure",
    members = {
        InstanceGroupId = schema.new({
            id = id.from(_N, "InstanceGroupDetail", "InstanceGroupId"),
            type = "string",
            name = "InstanceGroupId",
            target_id = prelude.String.id,
        }),
        Name = schema.new({
            id = id.from(_N, "InstanceGroupDetail", "Name"),
            type = "string",
            name = "Name",
            target_id = prelude.String.id,
        }),
        Market = schema.new({
            id = id.from(_N, "InstanceGroupDetail", "Market"),
            type = "string",
            name = "Market",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        InstanceRole = schema.new({
            id = id.from(_N, "InstanceGroupDetail", "InstanceRole"),
            type = "string",
            name = "InstanceRole",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        BidPrice = schema.new({
            id = id.from(_N, "InstanceGroupDetail", "BidPrice"),
            type = "string",
            name = "BidPrice",
            target_id = prelude.String.id,
        }),
        InstanceType = schema.new({
            id = id.from(_N, "InstanceGroupDetail", "InstanceType"),
            type = "string",
            name = "InstanceType",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        InstanceRequestCount = schema.new({
            id = id.from(_N, "InstanceGroupDetail", "InstanceRequestCount"),
            type = "integer",
            name = "InstanceRequestCount",
            target_id = prelude.Integer.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        InstanceRunningCount = schema.new({
            id = id.from(_N, "InstanceGroupDetail", "InstanceRunningCount"),
            type = "integer",
            name = "InstanceRunningCount",
            target_id = prelude.Integer.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        State = schema.new({
            id = id.from(_N, "InstanceGroupDetail", "State"),
            type = "string",
            name = "State",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        LastStateChangeReason = schema.new({
            id = id.from(_N, "InstanceGroupDetail", "LastStateChangeReason"),
            type = "string",
            name = "LastStateChangeReason",
            target_id = prelude.String.id,
        }),
        CreationDateTime = schema.new({
            id = id.from(_N, "InstanceGroupDetail", "CreationDateTime"),
            type = "timestamp",
            name = "CreationDateTime",
            target_id = prelude.Timestamp.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        StartDateTime = schema.new({
            id = id.from(_N, "InstanceGroupDetail", "StartDateTime"),
            type = "timestamp",
            name = "StartDateTime",
            target_id = prelude.Timestamp.id,
        }),
        ReadyDateTime = schema.new({
            id = id.from(_N, "InstanceGroupDetail", "ReadyDateTime"),
            type = "timestamp",
            name = "ReadyDateTime",
            target_id = prelude.Timestamp.id,
        }),
        EndDateTime = schema.new({
            id = id.from(_N, "InstanceGroupDetail", "EndDateTime"),
            type = "timestamp",
            name = "EndDateTime",
            target_id = prelude.Timestamp.id,
        }),
        CustomAmiId = schema.new({
            id = id.from(_N, "InstanceGroupDetail", "CustomAmiId"),
            type = "string",
            name = "CustomAmiId",
            target_id = prelude.String.id,
        }),
    },
})

M.PlacementType = schema.new({
    id = id.from(_N, "PlacementType"),
    type = "structure",
    members = {
        AvailabilityZone = schema.new({
            id = id.from(_N, "PlacementType", "AvailabilityZone"),
            type = "string",
            name = "AvailabilityZone",
            target_id = prelude.String.id,
        }),
        AvailabilityZones = schema.new({
            id = id.from(_N, "PlacementType", "AvailabilityZones"),
            type = "list",
            name = "AvailabilityZones",
            target_id = prelude.Document.id,
            list_member = prelude.String,
        }),
    },
})

M.JobFlowInstancesDetail = schema.new({
    id = id.from(_N, "JobFlowInstancesDetail"),
    type = "structure",
    members = {
        MasterInstanceType = schema.new({
            id = id.from(_N, "JobFlowInstancesDetail", "MasterInstanceType"),
            type = "string",
            name = "MasterInstanceType",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        MasterPublicDnsName = schema.new({
            id = id.from(_N, "JobFlowInstancesDetail", "MasterPublicDnsName"),
            type = "string",
            name = "MasterPublicDnsName",
            target_id = prelude.String.id,
        }),
        MasterInstanceId = schema.new({
            id = id.from(_N, "JobFlowInstancesDetail", "MasterInstanceId"),
            type = "string",
            name = "MasterInstanceId",
            target_id = prelude.String.id,
        }),
        SlaveInstanceType = schema.new({
            id = id.from(_N, "JobFlowInstancesDetail", "SlaveInstanceType"),
            type = "string",
            name = "SlaveInstanceType",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        InstanceCount = schema.new({
            id = id.from(_N, "JobFlowInstancesDetail", "InstanceCount"),
            type = "integer",
            name = "InstanceCount",
            target_id = prelude.Integer.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        InstanceGroups = schema.new({
            id = id.from(_N, "JobFlowInstancesDetail", "InstanceGroups"),
            type = "list",
            name = "InstanceGroups",
            target_id = prelude.Document.id,
            list_member = M.InstanceGroupDetail,
        }),
        NormalizedInstanceHours = schema.new({
            id = id.from(_N, "JobFlowInstancesDetail", "NormalizedInstanceHours"),
            type = "integer",
            name = "NormalizedInstanceHours",
            target_id = prelude.Integer.id,
        }),
        Ec2KeyName = schema.new({
            id = id.from(_N, "JobFlowInstancesDetail", "Ec2KeyName"),
            type = "string",
            name = "Ec2KeyName",
            target_id = prelude.String.id,
        }),
        Ec2SubnetId = schema.new({
            id = id.from(_N, "JobFlowInstancesDetail", "Ec2SubnetId"),
            type = "string",
            name = "Ec2SubnetId",
            target_id = prelude.String.id,
        }),
        Placement = schema.new({
            id = id.from(_N, "JobFlowInstancesDetail", "Placement"),
            type = "structure",
            name = "Placement",
            target_id = id.from(_N, "PlacementType"),
            target = M.PlacementType,
        }),
        KeepJobFlowAliveWhenNoSteps = schema.new({
            id = id.from(_N, "JobFlowInstancesDetail", "KeepJobFlowAliveWhenNoSteps"),
            type = "boolean",
            name = "KeepJobFlowAliveWhenNoSteps",
            target_id = prelude.Boolean.id,
        }),
        TerminationProtected = schema.new({
            id = id.from(_N, "JobFlowInstancesDetail", "TerminationProtected"),
            type = "boolean",
            name = "TerminationProtected",
            target_id = prelude.Boolean.id,
        }),
        UnhealthyNodeReplacement = schema.new({
            id = id.from(_N, "JobFlowInstancesDetail", "UnhealthyNodeReplacement"),
            type = "boolean",
            name = "UnhealthyNodeReplacement",
            target_id = prelude.Boolean.id,
        }),
        HadoopVersion = schema.new({
            id = id.from(_N, "JobFlowInstancesDetail", "HadoopVersion"),
            type = "string",
            name = "HadoopVersion",
            target_id = prelude.String.id,
        }),
    },
})

M.StepExecutionStatusDetail = schema.new({
    id = id.from(_N, "StepExecutionStatusDetail"),
    type = "structure",
    members = {
        State = schema.new({
            id = id.from(_N, "StepExecutionStatusDetail", "State"),
            type = "string",
            name = "State",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        CreationDateTime = schema.new({
            id = id.from(_N, "StepExecutionStatusDetail", "CreationDateTime"),
            type = "timestamp",
            name = "CreationDateTime",
            target_id = prelude.Timestamp.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        StartDateTime = schema.new({
            id = id.from(_N, "StepExecutionStatusDetail", "StartDateTime"),
            type = "timestamp",
            name = "StartDateTime",
            target_id = prelude.Timestamp.id,
        }),
        EndDateTime = schema.new({
            id = id.from(_N, "StepExecutionStatusDetail", "EndDateTime"),
            type = "timestamp",
            name = "EndDateTime",
            target_id = prelude.Timestamp.id,
        }),
        LastStateChangeReason = schema.new({
            id = id.from(_N, "StepExecutionStatusDetail", "LastStateChangeReason"),
            type = "string",
            name = "LastStateChangeReason",
            target_id = prelude.String.id,
        }),
    },
})

M.StepDetail = schema.new({
    id = id.from(_N, "StepDetail"),
    type = "structure",
    members = {
        StepConfig = schema.new({
            id = id.from(_N, "StepDetail", "StepConfig"),
            type = "structure",
            name = "StepConfig",
            target_id = id.from(_N, "StepConfig"),
            target = M.StepConfig,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        ExecutionStatusDetail = schema.new({
            id = id.from(_N, "StepDetail", "ExecutionStatusDetail"),
            type = "structure",
            name = "ExecutionStatusDetail",
            target_id = id.from(_N, "StepExecutionStatusDetail"),
            target = M.StepExecutionStatusDetail,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.JobFlowDetail = schema.new({
    id = id.from(_N, "JobFlowDetail"),
    type = "structure",
    members = {
        JobFlowId = schema.new({
            id = id.from(_N, "JobFlowDetail", "JobFlowId"),
            type = "string",
            name = "JobFlowId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        Name = schema.new({
            id = id.from(_N, "JobFlowDetail", "Name"),
            type = "string",
            name = "Name",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        LogUri = schema.new({
            id = id.from(_N, "JobFlowDetail", "LogUri"),
            type = "string",
            name = "LogUri",
            target_id = prelude.String.id,
        }),
        LogEncryptionKmsKeyId = schema.new({
            id = id.from(_N, "JobFlowDetail", "LogEncryptionKmsKeyId"),
            type = "string",
            name = "LogEncryptionKmsKeyId",
            target_id = prelude.String.id,
        }),
        AmiVersion = schema.new({
            id = id.from(_N, "JobFlowDetail", "AmiVersion"),
            type = "string",
            name = "AmiVersion",
            target_id = prelude.String.id,
        }),
        ExecutionStatusDetail = schema.new({
            id = id.from(_N, "JobFlowDetail", "ExecutionStatusDetail"),
            type = "structure",
            name = "ExecutionStatusDetail",
            target_id = id.from(_N, "JobFlowExecutionStatusDetail"),
            target = M.JobFlowExecutionStatusDetail,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        Instances = schema.new({
            id = id.from(_N, "JobFlowDetail", "Instances"),
            type = "structure",
            name = "Instances",
            target_id = id.from(_N, "JobFlowInstancesDetail"),
            target = M.JobFlowInstancesDetail,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        Steps = schema.new({
            id = id.from(_N, "JobFlowDetail", "Steps"),
            type = "list",
            name = "Steps",
            target_id = prelude.Document.id,
            list_member = M.StepDetail,
        }),
        BootstrapActions = schema.new({
            id = id.from(_N, "JobFlowDetail", "BootstrapActions"),
            type = "list",
            name = "BootstrapActions",
            target_id = prelude.Document.id,
            list_member = M.BootstrapActionDetail,
        }),
        SupportedProducts = schema.new({
            id = id.from(_N, "JobFlowDetail", "SupportedProducts"),
            type = "list",
            name = "SupportedProducts",
            target_id = prelude.Document.id,
            list_member = prelude.String,
        }),
        VisibleToAllUsers = schema.new({
            id = id.from(_N, "JobFlowDetail", "VisibleToAllUsers"),
            type = "boolean",
            name = "VisibleToAllUsers",
            target_id = prelude.Boolean.id,
        }),
        JobFlowRole = schema.new({
            id = id.from(_N, "JobFlowDetail", "JobFlowRole"),
            type = "string",
            name = "JobFlowRole",
            target_id = prelude.String.id,
        }),
        ServiceRole = schema.new({
            id = id.from(_N, "JobFlowDetail", "ServiceRole"),
            type = "string",
            name = "ServiceRole",
            target_id = prelude.String.id,
        }),
        AutoScalingRole = schema.new({
            id = id.from(_N, "JobFlowDetail", "AutoScalingRole"),
            type = "string",
            name = "AutoScalingRole",
            target_id = prelude.String.id,
        }),
        ScaleDownBehavior = schema.new({
            id = id.from(_N, "JobFlowDetail", "ScaleDownBehavior"),
            type = "string",
            name = "ScaleDownBehavior",
            target_id = prelude.String.id,
        }),
    },
})

M.DescribeJobFlowsOutput = schema.new({
    id = id.from(_N, "DescribeJobFlowsOutput"),
    type = "structure",
    members = {
        JobFlows = schema.new({
            id = id.from(_N, "DescribeJobFlowsOutput", "JobFlows"),
            type = "list",
            name = "JobFlows",
            target_id = prelude.Document.id,
            list_member = M.JobFlowDetail,
        }),
    },
})

M.DescribeNotebookExecutionInput = schema.new({
    id = id.from(_N, "DescribeNotebookExecutionInput"),
    type = "structure",
    members = {
        NotebookExecutionId = schema.new({
            id = id.from(_N, "DescribeNotebookExecutionInput", "NotebookExecutionId"),
            type = "string",
            name = "NotebookExecutionId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.ExecutionEngineConfig = schema.new({
    id = id.from(_N, "ExecutionEngineConfig"),
    type = "structure",
    members = {
        Id = schema.new({
            id = id.from(_N, "ExecutionEngineConfig", "Id"),
            type = "string",
            name = "Id",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        Type = schema.new({
            id = id.from(_N, "ExecutionEngineConfig", "Type"),
            type = "string",
            name = "Type",
            target_id = prelude.String.id,
        }),
        MasterInstanceSecurityGroupId = schema.new({
            id = id.from(_N, "ExecutionEngineConfig", "MasterInstanceSecurityGroupId"),
            type = "string",
            name = "MasterInstanceSecurityGroupId",
            target_id = prelude.String.id,
        }),
        ExecutionRoleArn = schema.new({
            id = id.from(_N, "ExecutionEngineConfig", "ExecutionRoleArn"),
            type = "string",
            name = "ExecutionRoleArn",
            target_id = prelude.String.id,
        }),
    },
})

M.NotebookS3LocationForOutput = schema.new({
    id = id.from(_N, "NotebookS3LocationForOutput"),
    type = "structure",
    members = {
        Bucket = schema.new({
            id = id.from(_N, "NotebookS3LocationForOutput", "Bucket"),
            type = "string",
            name = "Bucket",
            target_id = prelude.String.id,
        }),
        Key = schema.new({
            id = id.from(_N, "NotebookS3LocationForOutput", "Key"),
            type = "string",
            name = "Key",
            target_id = prelude.String.id,
        }),
    },
})

M.OutputNotebookS3LocationForOutput = schema.new({
    id = id.from(_N, "OutputNotebookS3LocationForOutput"),
    type = "structure",
    members = {
        Bucket = schema.new({
            id = id.from(_N, "OutputNotebookS3LocationForOutput", "Bucket"),
            type = "string",
            name = "Bucket",
            target_id = prelude.String.id,
        }),
        Key = schema.new({
            id = id.from(_N, "OutputNotebookS3LocationForOutput", "Key"),
            type = "string",
            name = "Key",
            target_id = prelude.String.id,
        }),
    },
})

M.NotebookExecution = schema.new({
    id = id.from(_N, "NotebookExecution"),
    type = "structure",
    members = {
        NotebookExecutionId = schema.new({
            id = id.from(_N, "NotebookExecution", "NotebookExecutionId"),
            type = "string",
            name = "NotebookExecutionId",
            target_id = prelude.String.id,
        }),
        EditorId = schema.new({
            id = id.from(_N, "NotebookExecution", "EditorId"),
            type = "string",
            name = "EditorId",
            target_id = prelude.String.id,
        }),
        ExecutionEngine = schema.new({
            id = id.from(_N, "NotebookExecution", "ExecutionEngine"),
            type = "structure",
            name = "ExecutionEngine",
            target_id = id.from(_N, "ExecutionEngineConfig"),
            target = M.ExecutionEngineConfig,
        }),
        NotebookExecutionName = schema.new({
            id = id.from(_N, "NotebookExecution", "NotebookExecutionName"),
            type = "string",
            name = "NotebookExecutionName",
            target_id = prelude.String.id,
        }),
        NotebookParams = schema.new({
            id = id.from(_N, "NotebookExecution", "NotebookParams"),
            type = "string",
            name = "NotebookParams",
            target_id = prelude.String.id,
        }),
        Status = schema.new({
            id = id.from(_N, "NotebookExecution", "Status"),
            type = "string",
            name = "Status",
            target_id = prelude.String.id,
        }),
        StartTime = schema.new({
            id = id.from(_N, "NotebookExecution", "StartTime"),
            type = "timestamp",
            name = "StartTime",
            target_id = prelude.Timestamp.id,
        }),
        EndTime = schema.new({
            id = id.from(_N, "NotebookExecution", "EndTime"),
            type = "timestamp",
            name = "EndTime",
            target_id = prelude.Timestamp.id,
        }),
        Arn = schema.new({
            id = id.from(_N, "NotebookExecution", "Arn"),
            type = "string",
            name = "Arn",
            target_id = prelude.String.id,
        }),
        OutputNotebookURI = schema.new({
            id = id.from(_N, "NotebookExecution", "OutputNotebookURI"),
            type = "string",
            name = "OutputNotebookURI",
            target_id = prelude.String.id,
        }),
        LastStateChangeReason = schema.new({
            id = id.from(_N, "NotebookExecution", "LastStateChangeReason"),
            type = "string",
            name = "LastStateChangeReason",
            target_id = prelude.String.id,
        }),
        NotebookInstanceSecurityGroupId = schema.new({
            id = id.from(_N, "NotebookExecution", "NotebookInstanceSecurityGroupId"),
            type = "string",
            name = "NotebookInstanceSecurityGroupId",
            target_id = prelude.String.id,
        }),
        Tags = schema.new({
            id = id.from(_N, "NotebookExecution", "Tags"),
            type = "list",
            name = "Tags",
            target_id = prelude.Document.id,
            list_member = M.Tag,
        }),
        NotebookS3Location = schema.new({
            id = id.from(_N, "NotebookExecution", "NotebookS3Location"),
            type = "structure",
            name = "NotebookS3Location",
            target_id = id.from(_N, "NotebookS3LocationForOutput"),
            target = M.NotebookS3LocationForOutput,
        }),
        OutputNotebookS3Location = schema.new({
            id = id.from(_N, "NotebookExecution", "OutputNotebookS3Location"),
            type = "structure",
            name = "OutputNotebookS3Location",
            target_id = id.from(_N, "OutputNotebookS3LocationForOutput"),
            target = M.OutputNotebookS3LocationForOutput,
        }),
        OutputNotebookFormat = schema.new({
            id = id.from(_N, "NotebookExecution", "OutputNotebookFormat"),
            type = "string",
            name = "OutputNotebookFormat",
            target_id = prelude.String.id,
        }),
        EnvironmentVariables = schema.new({
            id = id.from(_N, "NotebookExecution", "EnvironmentVariables"),
            type = "map",
            name = "EnvironmentVariables",
            target_id = prelude.Document.id,
            map_key = prelude.String,
            map_value = prelude.String,
        }),
    },
})

M.DescribeNotebookExecutionOutput = schema.new({
    id = id.from(_N, "DescribeNotebookExecutionOutput"),
    type = "structure",
    members = {
        NotebookExecution = schema.new({
            id = id.from(_N, "DescribeNotebookExecutionOutput", "NotebookExecution"),
            type = "structure",
            name = "NotebookExecution",
            target_id = id.from(_N, "NotebookExecution"),
            target = M.NotebookExecution,
        }),
    },
})

M.DescribePersistentAppUIInput = schema.new({
    id = id.from(_N, "DescribePersistentAppUIInput"),
    type = "structure",
    members = {
        PersistentAppUIId = schema.new({
            id = id.from(_N, "DescribePersistentAppUIInput", "PersistentAppUIId"),
            type = "string",
            name = "PersistentAppUIId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.PersistentAppUI = schema.new({
    id = id.from(_N, "PersistentAppUI"),
    type = "structure",
    members = {
        PersistentAppUIId = schema.new({
            id = id.from(_N, "PersistentAppUI", "PersistentAppUIId"),
            type = "string",
            name = "PersistentAppUIId",
            target_id = prelude.String.id,
        }),
        PersistentAppUITypeList = schema.new({
            id = id.from(_N, "PersistentAppUI", "PersistentAppUITypeList"),
            type = "list",
            name = "PersistentAppUITypeList",
            target_id = prelude.Document.id,
            list_member = prelude.String,
        }),
        PersistentAppUIStatus = schema.new({
            id = id.from(_N, "PersistentAppUI", "PersistentAppUIStatus"),
            type = "string",
            name = "PersistentAppUIStatus",
            target_id = prelude.String.id,
        }),
        AuthorId = schema.new({
            id = id.from(_N, "PersistentAppUI", "AuthorId"),
            type = "string",
            name = "AuthorId",
            target_id = prelude.String.id,
        }),
        CreationTime = schema.new({
            id = id.from(_N, "PersistentAppUI", "CreationTime"),
            type = "timestamp",
            name = "CreationTime",
            target_id = prelude.Timestamp.id,
        }),
        LastModifiedTime = schema.new({
            id = id.from(_N, "PersistentAppUI", "LastModifiedTime"),
            type = "timestamp",
            name = "LastModifiedTime",
            target_id = prelude.Timestamp.id,
        }),
        LastStateChangeReason = schema.new({
            id = id.from(_N, "PersistentAppUI", "LastStateChangeReason"),
            type = "string",
            name = "LastStateChangeReason",
            target_id = prelude.String.id,
        }),
        Tags = schema.new({
            id = id.from(_N, "PersistentAppUI", "Tags"),
            type = "list",
            name = "Tags",
            target_id = prelude.Document.id,
            list_member = M.Tag,
        }),
    },
})

M.DescribePersistentAppUIOutput = schema.new({
    id = id.from(_N, "DescribePersistentAppUIOutput"),
    type = "structure",
    members = {
        PersistentAppUI = schema.new({
            id = id.from(_N, "DescribePersistentAppUIOutput", "PersistentAppUI"),
            type = "structure",
            name = "PersistentAppUI",
            target_id = id.from(_N, "PersistentAppUI"),
            target = M.PersistentAppUI,
        }),
    },
})

M.DescribeReleaseLabelInput = schema.new({
    id = id.from(_N, "DescribeReleaseLabelInput"),
    type = "structure",
    members = {
        ReleaseLabel = schema.new({
            id = id.from(_N, "DescribeReleaseLabelInput", "ReleaseLabel"),
            type = "string",
            name = "ReleaseLabel",
            target_id = prelude.String.id,
        }),
        NextToken = schema.new({
            id = id.from(_N, "DescribeReleaseLabelInput", "NextToken"),
            type = "string",
            name = "NextToken",
            target_id = prelude.String.id,
        }),
        MaxResults = schema.new({
            id = id.from(_N, "DescribeReleaseLabelInput", "MaxResults"),
            type = "integer",
            name = "MaxResults",
            target_id = prelude.Integer.id,
        }),
    },
})

M.SimplifiedApplication = schema.new({
    id = id.from(_N, "SimplifiedApplication"),
    type = "structure",
    members = {
        Name = schema.new({
            id = id.from(_N, "SimplifiedApplication", "Name"),
            type = "string",
            name = "Name",
            target_id = prelude.String.id,
        }),
        Version = schema.new({
            id = id.from(_N, "SimplifiedApplication", "Version"),
            type = "string",
            name = "Version",
            target_id = prelude.String.id,
        }),
    },
})

M.OSRelease = schema.new({
    id = id.from(_N, "OSRelease"),
    type = "structure",
    members = {
        Label = schema.new({
            id = id.from(_N, "OSRelease", "Label"),
            type = "string",
            name = "Label",
            target_id = prelude.String.id,
        }),
    },
})

M.DescribeReleaseLabelOutput = schema.new({
    id = id.from(_N, "DescribeReleaseLabelOutput"),
    type = "structure",
    members = {
        ReleaseLabel = schema.new({
            id = id.from(_N, "DescribeReleaseLabelOutput", "ReleaseLabel"),
            type = "string",
            name = "ReleaseLabel",
            target_id = prelude.String.id,
        }),
        Applications = schema.new({
            id = id.from(_N, "DescribeReleaseLabelOutput", "Applications"),
            type = "list",
            name = "Applications",
            target_id = prelude.Document.id,
            list_member = M.SimplifiedApplication,
        }),
        NextToken = schema.new({
            id = id.from(_N, "DescribeReleaseLabelOutput", "NextToken"),
            type = "string",
            name = "NextToken",
            target_id = prelude.String.id,
        }),
        AvailableOSReleases = schema.new({
            id = id.from(_N, "DescribeReleaseLabelOutput", "AvailableOSReleases"),
            type = "list",
            name = "AvailableOSReleases",
            target_id = prelude.Document.id,
            list_member = M.OSRelease,
        }),
    },
})

M.DescribeSecurityConfigurationInput = schema.new({
    id = id.from(_N, "DescribeSecurityConfigurationInput"),
    type = "structure",
    members = {
        Name = schema.new({
            id = id.from(_N, "DescribeSecurityConfigurationInput", "Name"),
            type = "string",
            name = "Name",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.DescribeSecurityConfigurationOutput = schema.new({
    id = id.from(_N, "DescribeSecurityConfigurationOutput"),
    type = "structure",
    members = {
        Name = schema.new({
            id = id.from(_N, "DescribeSecurityConfigurationOutput", "Name"),
            type = "string",
            name = "Name",
            target_id = prelude.String.id,
        }),
        SecurityConfiguration = schema.new({
            id = id.from(_N, "DescribeSecurityConfigurationOutput", "SecurityConfiguration"),
            type = "string",
            name = "SecurityConfiguration",
            target_id = prelude.String.id,
        }),
        CreationDateTime = schema.new({
            id = id.from(_N, "DescribeSecurityConfigurationOutput", "CreationDateTime"),
            type = "timestamp",
            name = "CreationDateTime",
            target_id = prelude.Timestamp.id,
        }),
    },
})

M.DescribeStepInput = schema.new({
    id = id.from(_N, "DescribeStepInput"),
    type = "structure",
    members = {
        ClusterId = schema.new({
            id = id.from(_N, "DescribeStepInput", "ClusterId"),
            type = "string",
            name = "ClusterId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        StepId = schema.new({
            id = id.from(_N, "DescribeStepInput", "StepId"),
            type = "string",
            name = "StepId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.HadoopStepConfig = schema.new({
    id = id.from(_N, "HadoopStepConfig"),
    type = "structure",
    members = {
        Jar = schema.new({
            id = id.from(_N, "HadoopStepConfig", "Jar"),
            type = "string",
            name = "Jar",
            target_id = prelude.String.id,
        }),
        Properties = schema.new({
            id = id.from(_N, "HadoopStepConfig", "Properties"),
            type = "map",
            name = "Properties",
            target_id = prelude.Document.id,
            map_key = prelude.String,
            map_value = prelude.String,
        }),
        MainClass = schema.new({
            id = id.from(_N, "HadoopStepConfig", "MainClass"),
            type = "string",
            name = "MainClass",
            target_id = prelude.String.id,
        }),
        Args = schema.new({
            id = id.from(_N, "HadoopStepConfig", "Args"),
            type = "list",
            name = "Args",
            target_id = prelude.Document.id,
            list_member = prelude.String,
        }),
    },
})

M.FailureDetails = schema.new({
    id = id.from(_N, "FailureDetails"),
    type = "structure",
    members = {
        Reason = schema.new({
            id = id.from(_N, "FailureDetails", "Reason"),
            type = "string",
            name = "Reason",
            target_id = prelude.String.id,
        }),
        Message = schema.new({
            id = id.from(_N, "FailureDetails", "Message"),
            type = "string",
            name = "Message",
            target_id = prelude.String.id,
        }),
        LogFile = schema.new({
            id = id.from(_N, "FailureDetails", "LogFile"),
            type = "string",
            name = "LogFile",
            target_id = prelude.String.id,
        }),
    },
})

M.StepStateChangeReason = schema.new({
    id = id.from(_N, "StepStateChangeReason"),
    type = "structure",
    members = {
        Code = schema.new({
            id = id.from(_N, "StepStateChangeReason", "Code"),
            type = "string",
            name = "Code",
            target_id = prelude.String.id,
        }),
        Message = schema.new({
            id = id.from(_N, "StepStateChangeReason", "Message"),
            type = "string",
            name = "Message",
            target_id = prelude.String.id,
        }),
    },
})

M.StepTimeline = schema.new({
    id = id.from(_N, "StepTimeline"),
    type = "structure",
    members = {
        CreationDateTime = schema.new({
            id = id.from(_N, "StepTimeline", "CreationDateTime"),
            type = "timestamp",
            name = "CreationDateTime",
            target_id = prelude.Timestamp.id,
        }),
        StartDateTime = schema.new({
            id = id.from(_N, "StepTimeline", "StartDateTime"),
            type = "timestamp",
            name = "StartDateTime",
            target_id = prelude.Timestamp.id,
        }),
        EndDateTime = schema.new({
            id = id.from(_N, "StepTimeline", "EndDateTime"),
            type = "timestamp",
            name = "EndDateTime",
            target_id = prelude.Timestamp.id,
        }),
    },
})

M.StepStatus = schema.new({
    id = id.from(_N, "StepStatus"),
    type = "structure",
    members = {
        State = schema.new({
            id = id.from(_N, "StepStatus", "State"),
            type = "string",
            name = "State",
            target_id = prelude.String.id,
        }),
        StateChangeReason = schema.new({
            id = id.from(_N, "StepStatus", "StateChangeReason"),
            type = "structure",
            name = "StateChangeReason",
            target_id = id.from(_N, "StepStateChangeReason"),
            target = M.StepStateChangeReason,
        }),
        FailureDetails = schema.new({
            id = id.from(_N, "StepStatus", "FailureDetails"),
            type = "structure",
            name = "FailureDetails",
            target_id = id.from(_N, "FailureDetails"),
            target = M.FailureDetails,
        }),
        Timeline = schema.new({
            id = id.from(_N, "StepStatus", "Timeline"),
            type = "structure",
            name = "Timeline",
            target_id = id.from(_N, "StepTimeline"),
            target = M.StepTimeline,
        }),
    },
})

M.Step = schema.new({
    id = id.from(_N, "Step"),
    type = "structure",
    members = {
        Id = schema.new({
            id = id.from(_N, "Step", "Id"),
            type = "string",
            name = "Id",
            target_id = prelude.String.id,
        }),
        Name = schema.new({
            id = id.from(_N, "Step", "Name"),
            type = "string",
            name = "Name",
            target_id = prelude.String.id,
        }),
        Config = schema.new({
            id = id.from(_N, "Step", "Config"),
            type = "structure",
            name = "Config",
            target_id = id.from(_N, "HadoopStepConfig"),
            target = M.HadoopStepConfig,
        }),
        ActionOnFailure = schema.new({
            id = id.from(_N, "Step", "ActionOnFailure"),
            type = "string",
            name = "ActionOnFailure",
            target_id = prelude.String.id,
        }),
        Status = schema.new({
            id = id.from(_N, "Step", "Status"),
            type = "structure",
            name = "Status",
            target_id = id.from(_N, "StepStatus"),
            target = M.StepStatus,
        }),
        ExecutionRoleArn = schema.new({
            id = id.from(_N, "Step", "ExecutionRoleArn"),
            type = "string",
            name = "ExecutionRoleArn",
            target_id = prelude.String.id,
        }),
        LogUri = schema.new({
            id = id.from(_N, "Step", "LogUri"),
            type = "string",
            name = "LogUri",
            target_id = prelude.String.id,
        }),
        EncryptionKeyArn = schema.new({
            id = id.from(_N, "Step", "EncryptionKeyArn"),
            type = "string",
            name = "EncryptionKeyArn",
            target_id = prelude.String.id,
        }),
    },
})

M.DescribeStepOutput = schema.new({
    id = id.from(_N, "DescribeStepOutput"),
    type = "structure",
    members = {
        Step = schema.new({
            id = id.from(_N, "DescribeStepOutput", "Step"),
            type = "structure",
            name = "Step",
            target_id = id.from(_N, "Step"),
            target = M.Step,
        }),
    },
})

M.DescribeStudioInput = schema.new({
    id = id.from(_N, "DescribeStudioInput"),
    type = "structure",
    members = {
        StudioId = schema.new({
            id = id.from(_N, "DescribeStudioInput", "StudioId"),
            type = "string",
            name = "StudioId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.Studio = schema.new({
    id = id.from(_N, "Studio"),
    type = "structure",
    members = {
        StudioId = schema.new({
            id = id.from(_N, "Studio", "StudioId"),
            type = "string",
            name = "StudioId",
            target_id = prelude.String.id,
        }),
        StudioArn = schema.new({
            id = id.from(_N, "Studio", "StudioArn"),
            type = "string",
            name = "StudioArn",
            target_id = prelude.String.id,
        }),
        Name = schema.new({
            id = id.from(_N, "Studio", "Name"),
            type = "string",
            name = "Name",
            target_id = prelude.String.id,
        }),
        Description = schema.new({
            id = id.from(_N, "Studio", "Description"),
            type = "string",
            name = "Description",
            target_id = prelude.String.id,
        }),
        AuthMode = schema.new({
            id = id.from(_N, "Studio", "AuthMode"),
            type = "string",
            name = "AuthMode",
            target_id = prelude.String.id,
        }),
        VpcId = schema.new({
            id = id.from(_N, "Studio", "VpcId"),
            type = "string",
            name = "VpcId",
            target_id = prelude.String.id,
        }),
        SubnetIds = schema.new({
            id = id.from(_N, "Studio", "SubnetIds"),
            type = "list",
            name = "SubnetIds",
            target_id = prelude.Document.id,
            list_member = prelude.String,
        }),
        ServiceRole = schema.new({
            id = id.from(_N, "Studio", "ServiceRole"),
            type = "string",
            name = "ServiceRole",
            target_id = prelude.String.id,
        }),
        UserRole = schema.new({
            id = id.from(_N, "Studio", "UserRole"),
            type = "string",
            name = "UserRole",
            target_id = prelude.String.id,
        }),
        WorkspaceSecurityGroupId = schema.new({
            id = id.from(_N, "Studio", "WorkspaceSecurityGroupId"),
            type = "string",
            name = "WorkspaceSecurityGroupId",
            target_id = prelude.String.id,
        }),
        EngineSecurityGroupId = schema.new({
            id = id.from(_N, "Studio", "EngineSecurityGroupId"),
            type = "string",
            name = "EngineSecurityGroupId",
            target_id = prelude.String.id,
        }),
        Url = schema.new({
            id = id.from(_N, "Studio", "Url"),
            type = "string",
            name = "Url",
            target_id = prelude.String.id,
        }),
        CreationTime = schema.new({
            id = id.from(_N, "Studio", "CreationTime"),
            type = "timestamp",
            name = "CreationTime",
            target_id = prelude.Timestamp.id,
        }),
        DefaultS3Location = schema.new({
            id = id.from(_N, "Studio", "DefaultS3Location"),
            type = "string",
            name = "DefaultS3Location",
            target_id = prelude.String.id,
        }),
        IdpAuthUrl = schema.new({
            id = id.from(_N, "Studio", "IdpAuthUrl"),
            type = "string",
            name = "IdpAuthUrl",
            target_id = prelude.String.id,
        }),
        IdpRelayStateParameterName = schema.new({
            id = id.from(_N, "Studio", "IdpRelayStateParameterName"),
            type = "string",
            name = "IdpRelayStateParameterName",
            target_id = prelude.String.id,
        }),
        Tags = schema.new({
            id = id.from(_N, "Studio", "Tags"),
            type = "list",
            name = "Tags",
            target_id = prelude.Document.id,
            list_member = M.Tag,
        }),
        IdcInstanceArn = schema.new({
            id = id.from(_N, "Studio", "IdcInstanceArn"),
            type = "string",
            name = "IdcInstanceArn",
            target_id = prelude.String.id,
        }),
        TrustedIdentityPropagationEnabled = schema.new({
            id = id.from(_N, "Studio", "TrustedIdentityPropagationEnabled"),
            type = "boolean",
            name = "TrustedIdentityPropagationEnabled",
            target_id = prelude.Boolean.id,
        }),
        IdcUserAssignment = schema.new({
            id = id.from(_N, "Studio", "IdcUserAssignment"),
            type = "string",
            name = "IdcUserAssignment",
            target_id = prelude.String.id,
        }),
        EncryptionKeyArn = schema.new({
            id = id.from(_N, "Studio", "EncryptionKeyArn"),
            type = "string",
            name = "EncryptionKeyArn",
            target_id = prelude.String.id,
        }),
    },
})

M.DescribeStudioOutput = schema.new({
    id = id.from(_N, "DescribeStudioOutput"),
    type = "structure",
    members = {
        Studio = schema.new({
            id = id.from(_N, "DescribeStudioOutput", "Studio"),
            type = "structure",
            name = "Studio",
            target_id = id.from(_N, "Studio"),
            target = M.Studio,
        }),
    },
})

M.EbsBlockDevice = schema.new({
    id = id.from(_N, "EbsBlockDevice"),
    type = "structure",
    members = {
        VolumeSpecification = schema.new({
            id = id.from(_N, "EbsBlockDevice", "VolumeSpecification"),
            type = "structure",
            name = "VolumeSpecification",
            target_id = id.from(_N, "VolumeSpecification"),
            target = M.VolumeSpecification,
        }),
        Device = schema.new({
            id = id.from(_N, "EbsBlockDevice", "Device"),
            type = "string",
            name = "Device",
            target_id = prelude.String.id,
        }),
    },
})

M.EbsVolume = schema.new({
    id = id.from(_N, "EbsVolume"),
    type = "structure",
    members = {
        Device = schema.new({
            id = id.from(_N, "EbsVolume", "Device"),
            type = "string",
            name = "Device",
            target_id = prelude.String.id,
        }),
        VolumeId = schema.new({
            id = id.from(_N, "EbsVolume", "VolumeId"),
            type = "string",
            name = "VolumeId",
            target_id = prelude.String.id,
        }),
    },
})

M.GetAutoTerminationPolicyInput = schema.new({
    id = id.from(_N, "GetAutoTerminationPolicyInput"),
    type = "structure",
    members = {
        ClusterId = schema.new({
            id = id.from(_N, "GetAutoTerminationPolicyInput", "ClusterId"),
            type = "string",
            name = "ClusterId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.GetAutoTerminationPolicyOutput = schema.new({
    id = id.from(_N, "GetAutoTerminationPolicyOutput"),
    type = "structure",
    members = {
        AutoTerminationPolicy = schema.new({
            id = id.from(_N, "GetAutoTerminationPolicyOutput", "AutoTerminationPolicy"),
            type = "structure",
            name = "AutoTerminationPolicy",
            target_id = id.from(_N, "AutoTerminationPolicy"),
            target = M.AutoTerminationPolicy,
        }),
    },
})

M.GetBlockPublicAccessConfigurationInput = schema.new({
    id = id.from(_N, "GetBlockPublicAccessConfigurationInput"),
    type = "structure",
})

M.GetClusterSessionCredentialsInput = schema.new({
    id = id.from(_N, "GetClusterSessionCredentialsInput"),
    type = "structure",
    members = {
        ClusterId = schema.new({
            id = id.from(_N, "GetClusterSessionCredentialsInput", "ClusterId"),
            type = "string",
            name = "ClusterId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        ExecutionRoleArn = schema.new({
            id = id.from(_N, "GetClusterSessionCredentialsInput", "ExecutionRoleArn"),
            type = "string",
            name = "ExecutionRoleArn",
            target_id = prelude.String.id,
        }),
    },
})

M.GetClusterSessionCredentialsOutput = schema.new({
    id = id.from(_N, "GetClusterSessionCredentialsOutput"),
    type = "structure",
    members = {
        Credentials = schema.new({
            id = id.from(_N, "GetClusterSessionCredentialsOutput", "Credentials"),
            type = "union",
            name = "Credentials",
            target_id = id.from(_N, "Credentials"),
            target = M.Credentials,
        }),
        ExpiresAt = schema.new({
            id = id.from(_N, "GetClusterSessionCredentialsOutput", "ExpiresAt"),
            type = "timestamp",
            name = "ExpiresAt",
            target_id = prelude.Timestamp.id,
        }),
    },
})

M.GetManagedScalingPolicyInput = schema.new({
    id = id.from(_N, "GetManagedScalingPolicyInput"),
    type = "structure",
    members = {
        ClusterId = schema.new({
            id = id.from(_N, "GetManagedScalingPolicyInput", "ClusterId"),
            type = "string",
            name = "ClusterId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.ManagedScalingPolicy = schema.new({
    id = id.from(_N, "ManagedScalingPolicy"),
    type = "structure",
    members = {
        ComputeLimits = schema.new({
            id = id.from(_N, "ManagedScalingPolicy", "ComputeLimits"),
            type = "structure",
            name = "ComputeLimits",
            target_id = id.from(_N, "ComputeLimits"),
            target = M.ComputeLimits,
        }),
        UtilizationPerformanceIndex = schema.new({
            id = id.from(_N, "ManagedScalingPolicy", "UtilizationPerformanceIndex"),
            type = "integer",
            name = "UtilizationPerformanceIndex",
            target_id = prelude.Integer.id,
        }),
        ScalingStrategy = schema.new({
            id = id.from(_N, "ManagedScalingPolicy", "ScalingStrategy"),
            type = "string",
            name = "ScalingStrategy",
            target_id = prelude.String.id,
        }),
    },
})

M.GetManagedScalingPolicyOutput = schema.new({
    id = id.from(_N, "GetManagedScalingPolicyOutput"),
    type = "structure",
    members = {
        ManagedScalingPolicy = schema.new({
            id = id.from(_N, "GetManagedScalingPolicyOutput", "ManagedScalingPolicy"),
            type = "structure",
            name = "ManagedScalingPolicy",
            target_id = id.from(_N, "ManagedScalingPolicy"),
            target = M.ManagedScalingPolicy,
        }),
    },
})

M.GetOnClusterAppUIPresignedURLInput = schema.new({
    id = id.from(_N, "GetOnClusterAppUIPresignedURLInput"),
    type = "structure",
    members = {
        ClusterId = schema.new({
            id = id.from(_N, "GetOnClusterAppUIPresignedURLInput", "ClusterId"),
            type = "string",
            name = "ClusterId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        OnClusterAppUIType = schema.new({
            id = id.from(_N, "GetOnClusterAppUIPresignedURLInput", "OnClusterAppUIType"),
            type = "string",
            name = "OnClusterAppUIType",
            target_id = prelude.String.id,
        }),
        ApplicationId = schema.new({
            id = id.from(_N, "GetOnClusterAppUIPresignedURLInput", "ApplicationId"),
            type = "string",
            name = "ApplicationId",
            target_id = prelude.String.id,
        }),
        DryRun = schema.new({
            id = id.from(_N, "GetOnClusterAppUIPresignedURLInput", "DryRun"),
            type = "boolean",
            name = "DryRun",
            target_id = prelude.Boolean.id,
        }),
        ExecutionRoleArn = schema.new({
            id = id.from(_N, "GetOnClusterAppUIPresignedURLInput", "ExecutionRoleArn"),
            type = "string",
            name = "ExecutionRoleArn",
            target_id = prelude.String.id,
        }),
    },
})

M.GetOnClusterAppUIPresignedURLOutput = schema.new({
    id = id.from(_N, "GetOnClusterAppUIPresignedURLOutput"),
    type = "structure",
    members = {
        PresignedURLReady = schema.new({
            id = id.from(_N, "GetOnClusterAppUIPresignedURLOutput", "PresignedURLReady"),
            type = "boolean",
            name = "PresignedURLReady",
            target_id = prelude.Boolean.id,
        }),
        PresignedURL = schema.new({
            id = id.from(_N, "GetOnClusterAppUIPresignedURLOutput", "PresignedURL"),
            type = "string",
            name = "PresignedURL",
            target_id = prelude.String.id,
        }),
    },
})

M.GetPersistentAppUIPresignedURLInput = schema.new({
    id = id.from(_N, "GetPersistentAppUIPresignedURLInput"),
    type = "structure",
    members = {
        PersistentAppUIId = schema.new({
            id = id.from(_N, "GetPersistentAppUIPresignedURLInput", "PersistentAppUIId"),
            type = "string",
            name = "PersistentAppUIId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        PersistentAppUIType = schema.new({
            id = id.from(_N, "GetPersistentAppUIPresignedURLInput", "PersistentAppUIType"),
            type = "string",
            name = "PersistentAppUIType",
            target_id = prelude.String.id,
        }),
        ApplicationId = schema.new({
            id = id.from(_N, "GetPersistentAppUIPresignedURLInput", "ApplicationId"),
            type = "string",
            name = "ApplicationId",
            target_id = prelude.String.id,
        }),
        AuthProxyCall = schema.new({
            id = id.from(_N, "GetPersistentAppUIPresignedURLInput", "AuthProxyCall"),
            type = "boolean",
            name = "AuthProxyCall",
            target_id = prelude.Boolean.id,
        }),
        ExecutionRoleArn = schema.new({
            id = id.from(_N, "GetPersistentAppUIPresignedURLInput", "ExecutionRoleArn"),
            type = "string",
            name = "ExecutionRoleArn",
            target_id = prelude.String.id,
        }),
    },
})

M.GetPersistentAppUIPresignedURLOutput = schema.new({
    id = id.from(_N, "GetPersistentAppUIPresignedURLOutput"),
    type = "structure",
    members = {
        PresignedURLReady = schema.new({
            id = id.from(_N, "GetPersistentAppUIPresignedURLOutput", "PresignedURLReady"),
            type = "boolean",
            name = "PresignedURLReady",
            target_id = prelude.Boolean.id,
        }),
        PresignedURL = schema.new({
            id = id.from(_N, "GetPersistentAppUIPresignedURLOutput", "PresignedURL"),
            type = "string",
            name = "PresignedURL",
            target_id = prelude.String.id,
        }),
    },
})

M.GetStudioSessionMappingInput = schema.new({
    id = id.from(_N, "GetStudioSessionMappingInput"),
    type = "structure",
    members = {
        StudioId = schema.new({
            id = id.from(_N, "GetStudioSessionMappingInput", "StudioId"),
            type = "string",
            name = "StudioId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        IdentityId = schema.new({
            id = id.from(_N, "GetStudioSessionMappingInput", "IdentityId"),
            type = "string",
            name = "IdentityId",
            target_id = prelude.String.id,
        }),
        IdentityName = schema.new({
            id = id.from(_N, "GetStudioSessionMappingInput", "IdentityName"),
            type = "string",
            name = "IdentityName",
            target_id = prelude.String.id,
        }),
        IdentityType = schema.new({
            id = id.from(_N, "GetStudioSessionMappingInput", "IdentityType"),
            type = "string",
            name = "IdentityType",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.SessionMappingDetail = schema.new({
    id = id.from(_N, "SessionMappingDetail"),
    type = "structure",
    members = {
        StudioId = schema.new({
            id = id.from(_N, "SessionMappingDetail", "StudioId"),
            type = "string",
            name = "StudioId",
            target_id = prelude.String.id,
        }),
        IdentityId = schema.new({
            id = id.from(_N, "SessionMappingDetail", "IdentityId"),
            type = "string",
            name = "IdentityId",
            target_id = prelude.String.id,
        }),
        IdentityName = schema.new({
            id = id.from(_N, "SessionMappingDetail", "IdentityName"),
            type = "string",
            name = "IdentityName",
            target_id = prelude.String.id,
        }),
        IdentityType = schema.new({
            id = id.from(_N, "SessionMappingDetail", "IdentityType"),
            type = "string",
            name = "IdentityType",
            target_id = prelude.String.id,
        }),
        SessionPolicyArn = schema.new({
            id = id.from(_N, "SessionMappingDetail", "SessionPolicyArn"),
            type = "string",
            name = "SessionPolicyArn",
            target_id = prelude.String.id,
        }),
        CreationTime = schema.new({
            id = id.from(_N, "SessionMappingDetail", "CreationTime"),
            type = "timestamp",
            name = "CreationTime",
            target_id = prelude.Timestamp.id,
        }),
        LastModifiedTime = schema.new({
            id = id.from(_N, "SessionMappingDetail", "LastModifiedTime"),
            type = "timestamp",
            name = "LastModifiedTime",
            target_id = prelude.Timestamp.id,
        }),
    },
})

M.GetStudioSessionMappingOutput = schema.new({
    id = id.from(_N, "GetStudioSessionMappingOutput"),
    type = "structure",
    members = {
        SessionMapping = schema.new({
            id = id.from(_N, "GetStudioSessionMappingOutput", "SessionMapping"),
            type = "structure",
            name = "SessionMapping",
            target_id = id.from(_N, "SessionMappingDetail"),
            target = M.SessionMappingDetail,
        }),
    },
})

M.ListBootstrapActionsInput = schema.new({
    id = id.from(_N, "ListBootstrapActionsInput"),
    type = "structure",
    members = {
        ClusterId = schema.new({
            id = id.from(_N, "ListBootstrapActionsInput", "ClusterId"),
            type = "string",
            name = "ClusterId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        Marker = schema.new({
            id = id.from(_N, "ListBootstrapActionsInput", "Marker"),
            type = "string",
            name = "Marker",
            target_id = prelude.String.id,
        }),
    },
})

M.ListBootstrapActionsOutput = schema.new({
    id = id.from(_N, "ListBootstrapActionsOutput"),
    type = "structure",
    members = {
        BootstrapActions = schema.new({
            id = id.from(_N, "ListBootstrapActionsOutput", "BootstrapActions"),
            type = "list",
            name = "BootstrapActions",
            target_id = prelude.Document.id,
            list_member = M.Command,
        }),
        Marker = schema.new({
            id = id.from(_N, "ListBootstrapActionsOutput", "Marker"),
            type = "string",
            name = "Marker",
            target_id = prelude.String.id,
        }),
    },
})

M.ListClustersInput = schema.new({
    id = id.from(_N, "ListClustersInput"),
    type = "structure",
    members = {
        CreatedAfter = schema.new({
            id = id.from(_N, "ListClustersInput", "CreatedAfter"),
            type = "timestamp",
            name = "CreatedAfter",
            target_id = prelude.Timestamp.id,
        }),
        CreatedBefore = schema.new({
            id = id.from(_N, "ListClustersInput", "CreatedBefore"),
            type = "timestamp",
            name = "CreatedBefore",
            target_id = prelude.Timestamp.id,
        }),
        ClusterStates = schema.new({
            id = id.from(_N, "ListClustersInput", "ClusterStates"),
            type = "list",
            name = "ClusterStates",
            target_id = prelude.Document.id,
            list_member = prelude.String,
        }),
        Marker = schema.new({
            id = id.from(_N, "ListClustersInput", "Marker"),
            type = "string",
            name = "Marker",
            target_id = prelude.String.id,
        }),
    },
})

M.ListClustersOutput = schema.new({
    id = id.from(_N, "ListClustersOutput"),
    type = "structure",
    members = {
        Clusters = schema.new({
            id = id.from(_N, "ListClustersOutput", "Clusters"),
            type = "list",
            name = "Clusters",
            target_id = prelude.Document.id,
            list_member = M.ClusterSummary,
        }),
        Marker = schema.new({
            id = id.from(_N, "ListClustersOutput", "Marker"),
            type = "string",
            name = "Marker",
            target_id = prelude.String.id,
        }),
    },
})

M.ListInstanceFleetsInput = schema.new({
    id = id.from(_N, "ListInstanceFleetsInput"),
    type = "structure",
    members = {
        ClusterId = schema.new({
            id = id.from(_N, "ListInstanceFleetsInput", "ClusterId"),
            type = "string",
            name = "ClusterId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        Marker = schema.new({
            id = id.from(_N, "ListInstanceFleetsInput", "Marker"),
            type = "string",
            name = "Marker",
            target_id = prelude.String.id,
        }),
    },
})

M.InstanceFleetStateChangeReason = schema.new({
    id = id.from(_N, "InstanceFleetStateChangeReason"),
    type = "structure",
    members = {
        Code = schema.new({
            id = id.from(_N, "InstanceFleetStateChangeReason", "Code"),
            type = "string",
            name = "Code",
            target_id = prelude.String.id,
        }),
        Message = schema.new({
            id = id.from(_N, "InstanceFleetStateChangeReason", "Message"),
            type = "string",
            name = "Message",
            target_id = prelude.String.id,
        }),
    },
})

M.InstanceFleetTimeline = schema.new({
    id = id.from(_N, "InstanceFleetTimeline"),
    type = "structure",
    members = {
        CreationDateTime = schema.new({
            id = id.from(_N, "InstanceFleetTimeline", "CreationDateTime"),
            type = "timestamp",
            name = "CreationDateTime",
            target_id = prelude.Timestamp.id,
        }),
        ReadyDateTime = schema.new({
            id = id.from(_N, "InstanceFleetTimeline", "ReadyDateTime"),
            type = "timestamp",
            name = "ReadyDateTime",
            target_id = prelude.Timestamp.id,
        }),
        EndDateTime = schema.new({
            id = id.from(_N, "InstanceFleetTimeline", "EndDateTime"),
            type = "timestamp",
            name = "EndDateTime",
            target_id = prelude.Timestamp.id,
        }),
    },
})

M.InstanceFleetStatus = schema.new({
    id = id.from(_N, "InstanceFleetStatus"),
    type = "structure",
    members = {
        State = schema.new({
            id = id.from(_N, "InstanceFleetStatus", "State"),
            type = "string",
            name = "State",
            target_id = prelude.String.id,
        }),
        StateChangeReason = schema.new({
            id = id.from(_N, "InstanceFleetStatus", "StateChangeReason"),
            type = "structure",
            name = "StateChangeReason",
            target_id = id.from(_N, "InstanceFleetStateChangeReason"),
            target = M.InstanceFleetStateChangeReason,
        }),
        Timeline = schema.new({
            id = id.from(_N, "InstanceFleetStatus", "Timeline"),
            type = "structure",
            name = "Timeline",
            target_id = id.from(_N, "InstanceFleetTimeline"),
            target = M.InstanceFleetTimeline,
        }),
    },
})

M.ListInstanceGroupsInput = schema.new({
    id = id.from(_N, "ListInstanceGroupsInput"),
    type = "structure",
    members = {
        ClusterId = schema.new({
            id = id.from(_N, "ListInstanceGroupsInput", "ClusterId"),
            type = "string",
            name = "ClusterId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        Marker = schema.new({
            id = id.from(_N, "ListInstanceGroupsInput", "Marker"),
            type = "string",
            name = "Marker",
            target_id = prelude.String.id,
        }),
    },
})

M.InstanceResizePolicy = schema.new({
    id = id.from(_N, "InstanceResizePolicy"),
    type = "structure",
    members = {
        InstancesToTerminate = schema.new({
            id = id.from(_N, "InstanceResizePolicy", "InstancesToTerminate"),
            type = "list",
            name = "InstancesToTerminate",
            target_id = prelude.Document.id,
            list_member = prelude.String,
        }),
        InstancesToProtect = schema.new({
            id = id.from(_N, "InstanceResizePolicy", "InstancesToProtect"),
            type = "list",
            name = "InstancesToProtect",
            target_id = prelude.Document.id,
            list_member = prelude.String,
        }),
        InstanceTerminationTimeout = schema.new({
            id = id.from(_N, "InstanceResizePolicy", "InstanceTerminationTimeout"),
            type = "integer",
            name = "InstanceTerminationTimeout",
            target_id = prelude.Integer.id,
        }),
    },
})

M.ShrinkPolicy = schema.new({
    id = id.from(_N, "ShrinkPolicy"),
    type = "structure",
    members = {
        DecommissionTimeout = schema.new({
            id = id.from(_N, "ShrinkPolicy", "DecommissionTimeout"),
            type = "integer",
            name = "DecommissionTimeout",
            target_id = prelude.Integer.id,
        }),
        InstanceResizePolicy = schema.new({
            id = id.from(_N, "ShrinkPolicy", "InstanceResizePolicy"),
            type = "structure",
            name = "InstanceResizePolicy",
            target_id = id.from(_N, "InstanceResizePolicy"),
            target = M.InstanceResizePolicy,
        }),
    },
})

M.InstanceGroupStateChangeReason = schema.new({
    id = id.from(_N, "InstanceGroupStateChangeReason"),
    type = "structure",
    members = {
        Code = schema.new({
            id = id.from(_N, "InstanceGroupStateChangeReason", "Code"),
            type = "string",
            name = "Code",
            target_id = prelude.String.id,
        }),
        Message = schema.new({
            id = id.from(_N, "InstanceGroupStateChangeReason", "Message"),
            type = "string",
            name = "Message",
            target_id = prelude.String.id,
        }),
    },
})

M.InstanceGroupTimeline = schema.new({
    id = id.from(_N, "InstanceGroupTimeline"),
    type = "structure",
    members = {
        CreationDateTime = schema.new({
            id = id.from(_N, "InstanceGroupTimeline", "CreationDateTime"),
            type = "timestamp",
            name = "CreationDateTime",
            target_id = prelude.Timestamp.id,
        }),
        ReadyDateTime = schema.new({
            id = id.from(_N, "InstanceGroupTimeline", "ReadyDateTime"),
            type = "timestamp",
            name = "ReadyDateTime",
            target_id = prelude.Timestamp.id,
        }),
        EndDateTime = schema.new({
            id = id.from(_N, "InstanceGroupTimeline", "EndDateTime"),
            type = "timestamp",
            name = "EndDateTime",
            target_id = prelude.Timestamp.id,
        }),
    },
})

M.InstanceGroupStatus = schema.new({
    id = id.from(_N, "InstanceGroupStatus"),
    type = "structure",
    members = {
        State = schema.new({
            id = id.from(_N, "InstanceGroupStatus", "State"),
            type = "string",
            name = "State",
            target_id = prelude.String.id,
        }),
        StateChangeReason = schema.new({
            id = id.from(_N, "InstanceGroupStatus", "StateChangeReason"),
            type = "structure",
            name = "StateChangeReason",
            target_id = id.from(_N, "InstanceGroupStateChangeReason"),
            target = M.InstanceGroupStateChangeReason,
        }),
        Timeline = schema.new({
            id = id.from(_N, "InstanceGroupStatus", "Timeline"),
            type = "structure",
            name = "Timeline",
            target_id = id.from(_N, "InstanceGroupTimeline"),
            target = M.InstanceGroupTimeline,
        }),
    },
})

M.ListInstancesInput = schema.new({
    id = id.from(_N, "ListInstancesInput"),
    type = "structure",
    members = {
        ClusterId = schema.new({
            id = id.from(_N, "ListInstancesInput", "ClusterId"),
            type = "string",
            name = "ClusterId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        InstanceGroupId = schema.new({
            id = id.from(_N, "ListInstancesInput", "InstanceGroupId"),
            type = "string",
            name = "InstanceGroupId",
            target_id = prelude.String.id,
        }),
        InstanceGroupTypes = schema.new({
            id = id.from(_N, "ListInstancesInput", "InstanceGroupTypes"),
            type = "list",
            name = "InstanceGroupTypes",
            target_id = prelude.Document.id,
            list_member = prelude.String,
        }),
        InstanceFleetId = schema.new({
            id = id.from(_N, "ListInstancesInput", "InstanceFleetId"),
            type = "string",
            name = "InstanceFleetId",
            target_id = prelude.String.id,
        }),
        InstanceFleetType = schema.new({
            id = id.from(_N, "ListInstancesInput", "InstanceFleetType"),
            type = "string",
            name = "InstanceFleetType",
            target_id = prelude.String.id,
        }),
        InstanceStates = schema.new({
            id = id.from(_N, "ListInstancesInput", "InstanceStates"),
            type = "list",
            name = "InstanceStates",
            target_id = prelude.Document.id,
            list_member = prelude.String,
        }),
        Marker = schema.new({
            id = id.from(_N, "ListInstancesInput", "Marker"),
            type = "string",
            name = "Marker",
            target_id = prelude.String.id,
        }),
    },
})

M.InstanceStateChangeReason = schema.new({
    id = id.from(_N, "InstanceStateChangeReason"),
    type = "structure",
    members = {
        Code = schema.new({
            id = id.from(_N, "InstanceStateChangeReason", "Code"),
            type = "string",
            name = "Code",
            target_id = prelude.String.id,
        }),
        Message = schema.new({
            id = id.from(_N, "InstanceStateChangeReason", "Message"),
            type = "string",
            name = "Message",
            target_id = prelude.String.id,
        }),
    },
})

M.InstanceTimeline = schema.new({
    id = id.from(_N, "InstanceTimeline"),
    type = "structure",
    members = {
        CreationDateTime = schema.new({
            id = id.from(_N, "InstanceTimeline", "CreationDateTime"),
            type = "timestamp",
            name = "CreationDateTime",
            target_id = prelude.Timestamp.id,
        }),
        ReadyDateTime = schema.new({
            id = id.from(_N, "InstanceTimeline", "ReadyDateTime"),
            type = "timestamp",
            name = "ReadyDateTime",
            target_id = prelude.Timestamp.id,
        }),
        EndDateTime = schema.new({
            id = id.from(_N, "InstanceTimeline", "EndDateTime"),
            type = "timestamp",
            name = "EndDateTime",
            target_id = prelude.Timestamp.id,
        }),
    },
})

M.InstanceStatus = schema.new({
    id = id.from(_N, "InstanceStatus"),
    type = "structure",
    members = {
        State = schema.new({
            id = id.from(_N, "InstanceStatus", "State"),
            type = "string",
            name = "State",
            target_id = prelude.String.id,
        }),
        StateChangeReason = schema.new({
            id = id.from(_N, "InstanceStatus", "StateChangeReason"),
            type = "structure",
            name = "StateChangeReason",
            target_id = id.from(_N, "InstanceStateChangeReason"),
            target = M.InstanceStateChangeReason,
        }),
        Timeline = schema.new({
            id = id.from(_N, "InstanceStatus", "Timeline"),
            type = "structure",
            name = "Timeline",
            target_id = id.from(_N, "InstanceTimeline"),
            target = M.InstanceTimeline,
        }),
    },
})

M.Instance = schema.new({
    id = id.from(_N, "Instance"),
    type = "structure",
    members = {
        Id = schema.new({
            id = id.from(_N, "Instance", "Id"),
            type = "string",
            name = "Id",
            target_id = prelude.String.id,
        }),
        Ec2InstanceId = schema.new({
            id = id.from(_N, "Instance", "Ec2InstanceId"),
            type = "string",
            name = "Ec2InstanceId",
            target_id = prelude.String.id,
        }),
        PublicDnsName = schema.new({
            id = id.from(_N, "Instance", "PublicDnsName"),
            type = "string",
            name = "PublicDnsName",
            target_id = prelude.String.id,
        }),
        PublicIpAddress = schema.new({
            id = id.from(_N, "Instance", "PublicIpAddress"),
            type = "string",
            name = "PublicIpAddress",
            target_id = prelude.String.id,
        }),
        PrivateDnsName = schema.new({
            id = id.from(_N, "Instance", "PrivateDnsName"),
            type = "string",
            name = "PrivateDnsName",
            target_id = prelude.String.id,
        }),
        PrivateIpAddress = schema.new({
            id = id.from(_N, "Instance", "PrivateIpAddress"),
            type = "string",
            name = "PrivateIpAddress",
            target_id = prelude.String.id,
        }),
        Status = schema.new({
            id = id.from(_N, "Instance", "Status"),
            type = "structure",
            name = "Status",
            target_id = id.from(_N, "InstanceStatus"),
            target = M.InstanceStatus,
        }),
        InstanceGroupId = schema.new({
            id = id.from(_N, "Instance", "InstanceGroupId"),
            type = "string",
            name = "InstanceGroupId",
            target_id = prelude.String.id,
        }),
        InstanceFleetId = schema.new({
            id = id.from(_N, "Instance", "InstanceFleetId"),
            type = "string",
            name = "InstanceFleetId",
            target_id = prelude.String.id,
        }),
        Market = schema.new({
            id = id.from(_N, "Instance", "Market"),
            type = "string",
            name = "Market",
            target_id = prelude.String.id,
        }),
        InstanceType = schema.new({
            id = id.from(_N, "Instance", "InstanceType"),
            type = "string",
            name = "InstanceType",
            target_id = prelude.String.id,
        }),
        EbsVolumes = schema.new({
            id = id.from(_N, "Instance", "EbsVolumes"),
            type = "list",
            name = "EbsVolumes",
            target_id = prelude.Document.id,
            list_member = M.EbsVolume,
        }),
    },
})

M.ListInstancesOutput = schema.new({
    id = id.from(_N, "ListInstancesOutput"),
    type = "structure",
    members = {
        Instances = schema.new({
            id = id.from(_N, "ListInstancesOutput", "Instances"),
            type = "list",
            name = "Instances",
            target_id = prelude.Document.id,
            list_member = M.Instance,
        }),
        Marker = schema.new({
            id = id.from(_N, "ListInstancesOutput", "Marker"),
            type = "string",
            name = "Marker",
            target_id = prelude.String.id,
        }),
    },
})

M.ListNotebookExecutionsInput = schema.new({
    id = id.from(_N, "ListNotebookExecutionsInput"),
    type = "structure",
    members = {
        EditorId = schema.new({
            id = id.from(_N, "ListNotebookExecutionsInput", "EditorId"),
            type = "string",
            name = "EditorId",
            target_id = prelude.String.id,
        }),
        Status = schema.new({
            id = id.from(_N, "ListNotebookExecutionsInput", "Status"),
            type = "string",
            name = "Status",
            target_id = prelude.String.id,
        }),
        From = schema.new({
            id = id.from(_N, "ListNotebookExecutionsInput", "From"),
            type = "timestamp",
            name = "From",
            target_id = prelude.Timestamp.id,
        }),
        To = schema.new({
            id = id.from(_N, "ListNotebookExecutionsInput", "To"),
            type = "timestamp",
            name = "To",
            target_id = prelude.Timestamp.id,
        }),
        Marker = schema.new({
            id = id.from(_N, "ListNotebookExecutionsInput", "Marker"),
            type = "string",
            name = "Marker",
            target_id = prelude.String.id,
        }),
        ExecutionEngineId = schema.new({
            id = id.from(_N, "ListNotebookExecutionsInput", "ExecutionEngineId"),
            type = "string",
            name = "ExecutionEngineId",
            target_id = prelude.String.id,
        }),
    },
})

M.NotebookExecutionSummary = schema.new({
    id = id.from(_N, "NotebookExecutionSummary"),
    type = "structure",
    members = {
        NotebookExecutionId = schema.new({
            id = id.from(_N, "NotebookExecutionSummary", "NotebookExecutionId"),
            type = "string",
            name = "NotebookExecutionId",
            target_id = prelude.String.id,
        }),
        EditorId = schema.new({
            id = id.from(_N, "NotebookExecutionSummary", "EditorId"),
            type = "string",
            name = "EditorId",
            target_id = prelude.String.id,
        }),
        NotebookExecutionName = schema.new({
            id = id.from(_N, "NotebookExecutionSummary", "NotebookExecutionName"),
            type = "string",
            name = "NotebookExecutionName",
            target_id = prelude.String.id,
        }),
        Status = schema.new({
            id = id.from(_N, "NotebookExecutionSummary", "Status"),
            type = "string",
            name = "Status",
            target_id = prelude.String.id,
        }),
        StartTime = schema.new({
            id = id.from(_N, "NotebookExecutionSummary", "StartTime"),
            type = "timestamp",
            name = "StartTime",
            target_id = prelude.Timestamp.id,
        }),
        EndTime = schema.new({
            id = id.from(_N, "NotebookExecutionSummary", "EndTime"),
            type = "timestamp",
            name = "EndTime",
            target_id = prelude.Timestamp.id,
        }),
        NotebookS3Location = schema.new({
            id = id.from(_N, "NotebookExecutionSummary", "NotebookS3Location"),
            type = "structure",
            name = "NotebookS3Location",
            target_id = id.from(_N, "NotebookS3LocationForOutput"),
            target = M.NotebookS3LocationForOutput,
        }),
        ExecutionEngineId = schema.new({
            id = id.from(_N, "NotebookExecutionSummary", "ExecutionEngineId"),
            type = "string",
            name = "ExecutionEngineId",
            target_id = prelude.String.id,
        }),
    },
})

M.ListNotebookExecutionsOutput = schema.new({
    id = id.from(_N, "ListNotebookExecutionsOutput"),
    type = "structure",
    members = {
        NotebookExecutions = schema.new({
            id = id.from(_N, "ListNotebookExecutionsOutput", "NotebookExecutions"),
            type = "list",
            name = "NotebookExecutions",
            target_id = prelude.Document.id,
            list_member = M.NotebookExecutionSummary,
        }),
        Marker = schema.new({
            id = id.from(_N, "ListNotebookExecutionsOutput", "Marker"),
            type = "string",
            name = "Marker",
            target_id = prelude.String.id,
        }),
    },
})

M.ReleaseLabelFilter = schema.new({
    id = id.from(_N, "ReleaseLabelFilter"),
    type = "structure",
    members = {
        Prefix = schema.new({
            id = id.from(_N, "ReleaseLabelFilter", "Prefix"),
            type = "string",
            name = "Prefix",
            target_id = prelude.String.id,
        }),
        Application = schema.new({
            id = id.from(_N, "ReleaseLabelFilter", "Application"),
            type = "string",
            name = "Application",
            target_id = prelude.String.id,
        }),
    },
})

M.ListReleaseLabelsInput = schema.new({
    id = id.from(_N, "ListReleaseLabelsInput"),
    type = "structure",
    members = {
        Filters = schema.new({
            id = id.from(_N, "ListReleaseLabelsInput", "Filters"),
            type = "structure",
            name = "Filters",
            target_id = id.from(_N, "ReleaseLabelFilter"),
            target = M.ReleaseLabelFilter,
        }),
        NextToken = schema.new({
            id = id.from(_N, "ListReleaseLabelsInput", "NextToken"),
            type = "string",
            name = "NextToken",
            target_id = prelude.String.id,
        }),
        MaxResults = schema.new({
            id = id.from(_N, "ListReleaseLabelsInput", "MaxResults"),
            type = "integer",
            name = "MaxResults",
            target_id = prelude.Integer.id,
        }),
    },
})

M.ListReleaseLabelsOutput = schema.new({
    id = id.from(_N, "ListReleaseLabelsOutput"),
    type = "structure",
    members = {
        ReleaseLabels = schema.new({
            id = id.from(_N, "ListReleaseLabelsOutput", "ReleaseLabels"),
            type = "list",
            name = "ReleaseLabels",
            target_id = prelude.Document.id,
            list_member = prelude.String,
        }),
        NextToken = schema.new({
            id = id.from(_N, "ListReleaseLabelsOutput", "NextToken"),
            type = "string",
            name = "NextToken",
            target_id = prelude.String.id,
        }),
    },
})

M.ListSecurityConfigurationsInput = schema.new({
    id = id.from(_N, "ListSecurityConfigurationsInput"),
    type = "structure",
    members = {
        Marker = schema.new({
            id = id.from(_N, "ListSecurityConfigurationsInput", "Marker"),
            type = "string",
            name = "Marker",
            target_id = prelude.String.id,
        }),
    },
})

M.SecurityConfigurationSummary = schema.new({
    id = id.from(_N, "SecurityConfigurationSummary"),
    type = "structure",
    members = {
        Name = schema.new({
            id = id.from(_N, "SecurityConfigurationSummary", "Name"),
            type = "string",
            name = "Name",
            target_id = prelude.String.id,
        }),
        CreationDateTime = schema.new({
            id = id.from(_N, "SecurityConfigurationSummary", "CreationDateTime"),
            type = "timestamp",
            name = "CreationDateTime",
            target_id = prelude.Timestamp.id,
        }),
    },
})

M.ListSecurityConfigurationsOutput = schema.new({
    id = id.from(_N, "ListSecurityConfigurationsOutput"),
    type = "structure",
    members = {
        SecurityConfigurations = schema.new({
            id = id.from(_N, "ListSecurityConfigurationsOutput", "SecurityConfigurations"),
            type = "list",
            name = "SecurityConfigurations",
            target_id = prelude.Document.id,
            list_member = M.SecurityConfigurationSummary,
        }),
        Marker = schema.new({
            id = id.from(_N, "ListSecurityConfigurationsOutput", "Marker"),
            type = "string",
            name = "Marker",
            target_id = prelude.String.id,
        }),
    },
})

M.ListStepsInput = schema.new({
    id = id.from(_N, "ListStepsInput"),
    type = "structure",
    members = {
        ClusterId = schema.new({
            id = id.from(_N, "ListStepsInput", "ClusterId"),
            type = "string",
            name = "ClusterId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        StepStates = schema.new({
            id = id.from(_N, "ListStepsInput", "StepStates"),
            type = "list",
            name = "StepStates",
            target_id = prelude.Document.id,
            list_member = prelude.String,
        }),
        StepIds = schema.new({
            id = id.from(_N, "ListStepsInput", "StepIds"),
            type = "list",
            name = "StepIds",
            target_id = prelude.Document.id,
            list_member = prelude.String,
        }),
        Marker = schema.new({
            id = id.from(_N, "ListStepsInput", "Marker"),
            type = "string",
            name = "Marker",
            target_id = prelude.String.id,
        }),
    },
})

M.StepSummary = schema.new({
    id = id.from(_N, "StepSummary"),
    type = "structure",
    members = {
        Id = schema.new({
            id = id.from(_N, "StepSummary", "Id"),
            type = "string",
            name = "Id",
            target_id = prelude.String.id,
        }),
        Name = schema.new({
            id = id.from(_N, "StepSummary", "Name"),
            type = "string",
            name = "Name",
            target_id = prelude.String.id,
        }),
        Config = schema.new({
            id = id.from(_N, "StepSummary", "Config"),
            type = "structure",
            name = "Config",
            target_id = id.from(_N, "HadoopStepConfig"),
            target = M.HadoopStepConfig,
        }),
        ActionOnFailure = schema.new({
            id = id.from(_N, "StepSummary", "ActionOnFailure"),
            type = "string",
            name = "ActionOnFailure",
            target_id = prelude.String.id,
        }),
        Status = schema.new({
            id = id.from(_N, "StepSummary", "Status"),
            type = "structure",
            name = "Status",
            target_id = id.from(_N, "StepStatus"),
            target = M.StepStatus,
        }),
        LogUri = schema.new({
            id = id.from(_N, "StepSummary", "LogUri"),
            type = "string",
            name = "LogUri",
            target_id = prelude.String.id,
        }),
        EncryptionKeyArn = schema.new({
            id = id.from(_N, "StepSummary", "EncryptionKeyArn"),
            type = "string",
            name = "EncryptionKeyArn",
            target_id = prelude.String.id,
        }),
    },
})

M.ListStepsOutput = schema.new({
    id = id.from(_N, "ListStepsOutput"),
    type = "structure",
    members = {
        Steps = schema.new({
            id = id.from(_N, "ListStepsOutput", "Steps"),
            type = "list",
            name = "Steps",
            target_id = prelude.Document.id,
            list_member = M.StepSummary,
        }),
        Marker = schema.new({
            id = id.from(_N, "ListStepsOutput", "Marker"),
            type = "string",
            name = "Marker",
            target_id = prelude.String.id,
        }),
    },
})

M.ListStudiosInput = schema.new({
    id = id.from(_N, "ListStudiosInput"),
    type = "structure",
    members = {
        Marker = schema.new({
            id = id.from(_N, "ListStudiosInput", "Marker"),
            type = "string",
            name = "Marker",
            target_id = prelude.String.id,
        }),
    },
})

M.StudioSummary = schema.new({
    id = id.from(_N, "StudioSummary"),
    type = "structure",
    members = {
        StudioId = schema.new({
            id = id.from(_N, "StudioSummary", "StudioId"),
            type = "string",
            name = "StudioId",
            target_id = prelude.String.id,
        }),
        Name = schema.new({
            id = id.from(_N, "StudioSummary", "Name"),
            type = "string",
            name = "Name",
            target_id = prelude.String.id,
        }),
        VpcId = schema.new({
            id = id.from(_N, "StudioSummary", "VpcId"),
            type = "string",
            name = "VpcId",
            target_id = prelude.String.id,
        }),
        Description = schema.new({
            id = id.from(_N, "StudioSummary", "Description"),
            type = "string",
            name = "Description",
            target_id = prelude.String.id,
        }),
        Url = schema.new({
            id = id.from(_N, "StudioSummary", "Url"),
            type = "string",
            name = "Url",
            target_id = prelude.String.id,
        }),
        AuthMode = schema.new({
            id = id.from(_N, "StudioSummary", "AuthMode"),
            type = "string",
            name = "AuthMode",
            target_id = prelude.String.id,
        }),
        CreationTime = schema.new({
            id = id.from(_N, "StudioSummary", "CreationTime"),
            type = "timestamp",
            name = "CreationTime",
            target_id = prelude.Timestamp.id,
        }),
    },
})

M.ListStudiosOutput = schema.new({
    id = id.from(_N, "ListStudiosOutput"),
    type = "structure",
    members = {
        Studios = schema.new({
            id = id.from(_N, "ListStudiosOutput", "Studios"),
            type = "list",
            name = "Studios",
            target_id = prelude.Document.id,
            list_member = M.StudioSummary,
        }),
        Marker = schema.new({
            id = id.from(_N, "ListStudiosOutput", "Marker"),
            type = "string",
            name = "Marker",
            target_id = prelude.String.id,
        }),
    },
})

M.ListStudioSessionMappingsInput = schema.new({
    id = id.from(_N, "ListStudioSessionMappingsInput"),
    type = "structure",
    members = {
        StudioId = schema.new({
            id = id.from(_N, "ListStudioSessionMappingsInput", "StudioId"),
            type = "string",
            name = "StudioId",
            target_id = prelude.String.id,
        }),
        IdentityType = schema.new({
            id = id.from(_N, "ListStudioSessionMappingsInput", "IdentityType"),
            type = "string",
            name = "IdentityType",
            target_id = prelude.String.id,
        }),
        Marker = schema.new({
            id = id.from(_N, "ListStudioSessionMappingsInput", "Marker"),
            type = "string",
            name = "Marker",
            target_id = prelude.String.id,
        }),
    },
})

M.SessionMappingSummary = schema.new({
    id = id.from(_N, "SessionMappingSummary"),
    type = "structure",
    members = {
        StudioId = schema.new({
            id = id.from(_N, "SessionMappingSummary", "StudioId"),
            type = "string",
            name = "StudioId",
            target_id = prelude.String.id,
        }),
        IdentityId = schema.new({
            id = id.from(_N, "SessionMappingSummary", "IdentityId"),
            type = "string",
            name = "IdentityId",
            target_id = prelude.String.id,
        }),
        IdentityName = schema.new({
            id = id.from(_N, "SessionMappingSummary", "IdentityName"),
            type = "string",
            name = "IdentityName",
            target_id = prelude.String.id,
        }),
        IdentityType = schema.new({
            id = id.from(_N, "SessionMappingSummary", "IdentityType"),
            type = "string",
            name = "IdentityType",
            target_id = prelude.String.id,
        }),
        SessionPolicyArn = schema.new({
            id = id.from(_N, "SessionMappingSummary", "SessionPolicyArn"),
            type = "string",
            name = "SessionPolicyArn",
            target_id = prelude.String.id,
        }),
        CreationTime = schema.new({
            id = id.from(_N, "SessionMappingSummary", "CreationTime"),
            type = "timestamp",
            name = "CreationTime",
            target_id = prelude.Timestamp.id,
        }),
    },
})

M.ListStudioSessionMappingsOutput = schema.new({
    id = id.from(_N, "ListStudioSessionMappingsOutput"),
    type = "structure",
    members = {
        SessionMappings = schema.new({
            id = id.from(_N, "ListStudioSessionMappingsOutput", "SessionMappings"),
            type = "list",
            name = "SessionMappings",
            target_id = prelude.Document.id,
            list_member = M.SessionMappingSummary,
        }),
        Marker = schema.new({
            id = id.from(_N, "ListStudioSessionMappingsOutput", "Marker"),
            type = "string",
            name = "Marker",
            target_id = prelude.String.id,
        }),
    },
})

M.ListSupportedInstanceTypesInput = schema.new({
    id = id.from(_N, "ListSupportedInstanceTypesInput"),
    type = "structure",
    members = {
        ReleaseLabel = schema.new({
            id = id.from(_N, "ListSupportedInstanceTypesInput", "ReleaseLabel"),
            type = "string",
            name = "ReleaseLabel",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        Marker = schema.new({
            id = id.from(_N, "ListSupportedInstanceTypesInput", "Marker"),
            type = "string",
            name = "Marker",
            target_id = prelude.String.id,
        }),
    },
})

M.SupportedInstanceType = schema.new({
    id = id.from(_N, "SupportedInstanceType"),
    type = "structure",
    members = {
        Type = schema.new({
            id = id.from(_N, "SupportedInstanceType", "Type"),
            type = "string",
            name = "Type",
            target_id = prelude.String.id,
        }),
        MemoryGB = schema.new({
            id = id.from(_N, "SupportedInstanceType", "MemoryGB"),
            type = "float",
            name = "MemoryGB",
            target_id = prelude.Float.id,
        }),
        StorageGB = schema.new({
            id = id.from(_N, "SupportedInstanceType", "StorageGB"),
            type = "integer",
            name = "StorageGB",
            target_id = prelude.Integer.id,
        }),
        VCPU = schema.new({
            id = id.from(_N, "SupportedInstanceType", "VCPU"),
            type = "integer",
            name = "VCPU",
            target_id = prelude.Integer.id,
        }),
        Is64BitsOnly = schema.new({
            id = id.from(_N, "SupportedInstanceType", "Is64BitsOnly"),
            type = "boolean",
            name = "Is64BitsOnly",
            target_id = prelude.Boolean.id,
        }),
        InstanceFamilyId = schema.new({
            id = id.from(_N, "SupportedInstanceType", "InstanceFamilyId"),
            type = "string",
            name = "InstanceFamilyId",
            target_id = prelude.String.id,
        }),
        EbsOptimizedAvailable = schema.new({
            id = id.from(_N, "SupportedInstanceType", "EbsOptimizedAvailable"),
            type = "boolean",
            name = "EbsOptimizedAvailable",
            target_id = prelude.Boolean.id,
        }),
        EbsOptimizedByDefault = schema.new({
            id = id.from(_N, "SupportedInstanceType", "EbsOptimizedByDefault"),
            type = "boolean",
            name = "EbsOptimizedByDefault",
            target_id = prelude.Boolean.id,
        }),
        NumberOfDisks = schema.new({
            id = id.from(_N, "SupportedInstanceType", "NumberOfDisks"),
            type = "integer",
            name = "NumberOfDisks",
            target_id = prelude.Integer.id,
        }),
        EbsStorageOnly = schema.new({
            id = id.from(_N, "SupportedInstanceType", "EbsStorageOnly"),
            type = "boolean",
            name = "EbsStorageOnly",
            target_id = prelude.Boolean.id,
        }),
        Architecture = schema.new({
            id = id.from(_N, "SupportedInstanceType", "Architecture"),
            type = "string",
            name = "Architecture",
            target_id = prelude.String.id,
        }),
    },
})

M.ListSupportedInstanceTypesOutput = schema.new({
    id = id.from(_N, "ListSupportedInstanceTypesOutput"),
    type = "structure",
    members = {
        SupportedInstanceTypes = schema.new({
            id = id.from(_N, "ListSupportedInstanceTypesOutput", "SupportedInstanceTypes"),
            type = "list",
            name = "SupportedInstanceTypes",
            target_id = prelude.Document.id,
            list_member = M.SupportedInstanceType,
        }),
        Marker = schema.new({
            id = id.from(_N, "ListSupportedInstanceTypesOutput", "Marker"),
            type = "string",
            name = "Marker",
            target_id = prelude.String.id,
        }),
    },
})

M.ModifyClusterInput = schema.new({
    id = id.from(_N, "ModifyClusterInput"),
    type = "structure",
    members = {
        ClusterId = schema.new({
            id = id.from(_N, "ModifyClusterInput", "ClusterId"),
            type = "string",
            name = "ClusterId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        StepConcurrencyLevel = schema.new({
            id = id.from(_N, "ModifyClusterInput", "StepConcurrencyLevel"),
            type = "integer",
            name = "StepConcurrencyLevel",
            target_id = prelude.Integer.id,
        }),
        ExtendedSupport = schema.new({
            id = id.from(_N, "ModifyClusterInput", "ExtendedSupport"),
            type = "boolean",
            name = "ExtendedSupport",
            target_id = prelude.Boolean.id,
        }),
    },
})

M.ModifyClusterOutput = schema.new({
    id = id.from(_N, "ModifyClusterOutput"),
    type = "structure",
    members = {
        StepConcurrencyLevel = schema.new({
            id = id.from(_N, "ModifyClusterOutput", "StepConcurrencyLevel"),
            type = "integer",
            name = "StepConcurrencyLevel",
            target_id = prelude.Integer.id,
        }),
        ExtendedSupport = schema.new({
            id = id.from(_N, "ModifyClusterOutput", "ExtendedSupport"),
            type = "boolean",
            name = "ExtendedSupport",
            target_id = prelude.Boolean.id,
        }),
    },
})

M.ModifyInstanceFleetOutput = prelude.Unit

M.ModifyInstanceGroupsOutput = prelude.Unit

M.PutAutoScalingPolicyInput = schema.new({
    id = id.from(_N, "PutAutoScalingPolicyInput"),
    type = "structure",
    members = {
        ClusterId = schema.new({
            id = id.from(_N, "PutAutoScalingPolicyInput", "ClusterId"),
            type = "string",
            name = "ClusterId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        InstanceGroupId = schema.new({
            id = id.from(_N, "PutAutoScalingPolicyInput", "InstanceGroupId"),
            type = "string",
            name = "InstanceGroupId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        AutoScalingPolicy = schema.new({
            id = id.from(_N, "PutAutoScalingPolicyInput", "AutoScalingPolicy"),
            type = "structure",
            name = "AutoScalingPolicy",
            target_id = id.from(_N, "AutoScalingPolicy"),
            target = M.AutoScalingPolicy,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.PutAutoScalingPolicyOutput = schema.new({
    id = id.from(_N, "PutAutoScalingPolicyOutput"),
    type = "structure",
    members = {
        ClusterId = schema.new({
            id = id.from(_N, "PutAutoScalingPolicyOutput", "ClusterId"),
            type = "string",
            name = "ClusterId",
            target_id = prelude.String.id,
        }),
        InstanceGroupId = schema.new({
            id = id.from(_N, "PutAutoScalingPolicyOutput", "InstanceGroupId"),
            type = "string",
            name = "InstanceGroupId",
            target_id = prelude.String.id,
        }),
        AutoScalingPolicy = schema.new({
            id = id.from(_N, "PutAutoScalingPolicyOutput", "AutoScalingPolicy"),
            type = "structure",
            name = "AutoScalingPolicy",
            target_id = id.from(_N, "AutoScalingPolicyDescription"),
            target = M.AutoScalingPolicyDescription,
        }),
        ClusterArn = schema.new({
            id = id.from(_N, "PutAutoScalingPolicyOutput", "ClusterArn"),
            type = "string",
            name = "ClusterArn",
            target_id = prelude.String.id,
        }),
    },
})

M.PutAutoTerminationPolicyInput = schema.new({
    id = id.from(_N, "PutAutoTerminationPolicyInput"),
    type = "structure",
    members = {
        ClusterId = schema.new({
            id = id.from(_N, "PutAutoTerminationPolicyInput", "ClusterId"),
            type = "string",
            name = "ClusterId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        AutoTerminationPolicy = schema.new({
            id = id.from(_N, "PutAutoTerminationPolicyInput", "AutoTerminationPolicy"),
            type = "structure",
            name = "AutoTerminationPolicy",
            target_id = id.from(_N, "AutoTerminationPolicy"),
            target = M.AutoTerminationPolicy,
        }),
    },
})

M.PutAutoTerminationPolicyOutput = schema.new({
    id = id.from(_N, "PutAutoTerminationPolicyOutput"),
    type = "structure",
})

M.PutBlockPublicAccessConfigurationOutput = schema.new({
    id = id.from(_N, "PutBlockPublicAccessConfigurationOutput"),
    type = "structure",
})

M.PutManagedScalingPolicyInput = schema.new({
    id = id.from(_N, "PutManagedScalingPolicyInput"),
    type = "structure",
    members = {
        ClusterId = schema.new({
            id = id.from(_N, "PutManagedScalingPolicyInput", "ClusterId"),
            type = "string",
            name = "ClusterId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        ManagedScalingPolicy = schema.new({
            id = id.from(_N, "PutManagedScalingPolicyInput", "ManagedScalingPolicy"),
            type = "structure",
            name = "ManagedScalingPolicy",
            target_id = id.from(_N, "ManagedScalingPolicy"),
            target = M.ManagedScalingPolicy,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.PutManagedScalingPolicyOutput = schema.new({
    id = id.from(_N, "PutManagedScalingPolicyOutput"),
    type = "structure",
})

M.RemoveAutoScalingPolicyInput = schema.new({
    id = id.from(_N, "RemoveAutoScalingPolicyInput"),
    type = "structure",
    members = {
        ClusterId = schema.new({
            id = id.from(_N, "RemoveAutoScalingPolicyInput", "ClusterId"),
            type = "string",
            name = "ClusterId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        InstanceGroupId = schema.new({
            id = id.from(_N, "RemoveAutoScalingPolicyInput", "InstanceGroupId"),
            type = "string",
            name = "InstanceGroupId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.RemoveAutoScalingPolicyOutput = schema.new({
    id = id.from(_N, "RemoveAutoScalingPolicyOutput"),
    type = "structure",
})

M.RemoveAutoTerminationPolicyInput = schema.new({
    id = id.from(_N, "RemoveAutoTerminationPolicyInput"),
    type = "structure",
    members = {
        ClusterId = schema.new({
            id = id.from(_N, "RemoveAutoTerminationPolicyInput", "ClusterId"),
            type = "string",
            name = "ClusterId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.RemoveAutoTerminationPolicyOutput = schema.new({
    id = id.from(_N, "RemoveAutoTerminationPolicyOutput"),
    type = "structure",
})

M.RemoveManagedScalingPolicyInput = schema.new({
    id = id.from(_N, "RemoveManagedScalingPolicyInput"),
    type = "structure",
    members = {
        ClusterId = schema.new({
            id = id.from(_N, "RemoveManagedScalingPolicyInput", "ClusterId"),
            type = "string",
            name = "ClusterId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.RemoveManagedScalingPolicyOutput = schema.new({
    id = id.from(_N, "RemoveManagedScalingPolicyOutput"),
    type = "structure",
})

M.RemoveTagsInput = schema.new({
    id = id.from(_N, "RemoveTagsInput"),
    type = "structure",
    members = {
        ResourceId = schema.new({
            id = id.from(_N, "RemoveTagsInput", "ResourceId"),
            type = "string",
            name = "ResourceId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        TagKeys = schema.new({
            id = id.from(_N, "RemoveTagsInput", "TagKeys"),
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

M.RemoveTagsOutput = schema.new({
    id = id.from(_N, "RemoveTagsOutput"),
    type = "structure",
})

M.SupportedProductConfig = schema.new({
    id = id.from(_N, "SupportedProductConfig"),
    type = "structure",
    members = {
        Name = schema.new({
            id = id.from(_N, "SupportedProductConfig", "Name"),
            type = "string",
            name = "Name",
            target_id = prelude.String.id,
        }),
        Args = schema.new({
            id = id.from(_N, "SupportedProductConfig", "Args"),
            type = "list",
            name = "Args",
            target_id = prelude.Document.id,
            list_member = prelude.String,
        }),
    },
})

M.RunJobFlowOutput = schema.new({
    id = id.from(_N, "RunJobFlowOutput"),
    type = "structure",
    members = {
        JobFlowId = schema.new({
            id = id.from(_N, "RunJobFlowOutput", "JobFlowId"),
            type = "string",
            name = "JobFlowId",
            target_id = prelude.String.id,
        }),
        ClusterArn = schema.new({
            id = id.from(_N, "RunJobFlowOutput", "ClusterArn"),
            type = "string",
            name = "ClusterArn",
            target_id = prelude.String.id,
        }),
    },
})

M.SetKeepJobFlowAliveWhenNoStepsInput = schema.new({
    id = id.from(_N, "SetKeepJobFlowAliveWhenNoStepsInput"),
    type = "structure",
    members = {
        JobFlowIds = schema.new({
            id = id.from(_N, "SetKeepJobFlowAliveWhenNoStepsInput", "JobFlowIds"),
            type = "list",
            name = "JobFlowIds",
            target_id = prelude.Document.id,
            list_member = prelude.String,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        KeepJobFlowAliveWhenNoSteps = schema.new({
            id = id.from(_N, "SetKeepJobFlowAliveWhenNoStepsInput", "KeepJobFlowAliveWhenNoSteps"),
            type = "boolean",
            name = "KeepJobFlowAliveWhenNoSteps",
            target_id = prelude.Boolean.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.SetKeepJobFlowAliveWhenNoStepsOutput = prelude.Unit

M.SetTerminationProtectionInput = schema.new({
    id = id.from(_N, "SetTerminationProtectionInput"),
    type = "structure",
    members = {
        JobFlowIds = schema.new({
            id = id.from(_N, "SetTerminationProtectionInput", "JobFlowIds"),
            type = "list",
            name = "JobFlowIds",
            target_id = prelude.Document.id,
            list_member = prelude.String,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        TerminationProtected = schema.new({
            id = id.from(_N, "SetTerminationProtectionInput", "TerminationProtected"),
            type = "boolean",
            name = "TerminationProtected",
            target_id = prelude.Boolean.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.SetTerminationProtectionOutput = prelude.Unit

M.SetUnhealthyNodeReplacementInput = schema.new({
    id = id.from(_N, "SetUnhealthyNodeReplacementInput"),
    type = "structure",
    members = {
        JobFlowIds = schema.new({
            id = id.from(_N, "SetUnhealthyNodeReplacementInput", "JobFlowIds"),
            type = "list",
            name = "JobFlowIds",
            target_id = prelude.Document.id,
            list_member = prelude.String,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        UnhealthyNodeReplacement = schema.new({
            id = id.from(_N, "SetUnhealthyNodeReplacementInput", "UnhealthyNodeReplacement"),
            type = "boolean",
            name = "UnhealthyNodeReplacement",
            target_id = prelude.Boolean.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.SetUnhealthyNodeReplacementOutput = prelude.Unit

M.SetVisibleToAllUsersInput = schema.new({
    id = id.from(_N, "SetVisibleToAllUsersInput"),
    type = "structure",
    members = {
        JobFlowIds = schema.new({
            id = id.from(_N, "SetVisibleToAllUsersInput", "JobFlowIds"),
            type = "list",
            name = "JobFlowIds",
            target_id = prelude.Document.id,
            list_member = prelude.String,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        VisibleToAllUsers = schema.new({
            id = id.from(_N, "SetVisibleToAllUsersInput", "VisibleToAllUsers"),
            type = "boolean",
            name = "VisibleToAllUsers",
            target_id = prelude.Boolean.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.SetVisibleToAllUsersOutput = prelude.Unit

M.NotebookS3LocationFromInput = schema.new({
    id = id.from(_N, "NotebookS3LocationFromInput"),
    type = "structure",
    members = {
        Bucket = schema.new({
            id = id.from(_N, "NotebookS3LocationFromInput", "Bucket"),
            type = "string",
            name = "Bucket",
            target_id = prelude.String.id,
        }),
        Key = schema.new({
            id = id.from(_N, "NotebookS3LocationFromInput", "Key"),
            type = "string",
            name = "Key",
            target_id = prelude.String.id,
        }),
    },
})

M.OutputNotebookS3LocationFromInput = schema.new({
    id = id.from(_N, "OutputNotebookS3LocationFromInput"),
    type = "structure",
    members = {
        Bucket = schema.new({
            id = id.from(_N, "OutputNotebookS3LocationFromInput", "Bucket"),
            type = "string",
            name = "Bucket",
            target_id = prelude.String.id,
        }),
        Key = schema.new({
            id = id.from(_N, "OutputNotebookS3LocationFromInput", "Key"),
            type = "string",
            name = "Key",
            target_id = prelude.String.id,
        }),
    },
})

M.StartNotebookExecutionInput = schema.new({
    id = id.from(_N, "StartNotebookExecutionInput"),
    type = "structure",
    members = {
        EditorId = schema.new({
            id = id.from(_N, "StartNotebookExecutionInput", "EditorId"),
            type = "string",
            name = "EditorId",
            target_id = prelude.String.id,
        }),
        RelativePath = schema.new({
            id = id.from(_N, "StartNotebookExecutionInput", "RelativePath"),
            type = "string",
            name = "RelativePath",
            target_id = prelude.String.id,
        }),
        NotebookExecutionName = schema.new({
            id = id.from(_N, "StartNotebookExecutionInput", "NotebookExecutionName"),
            type = "string",
            name = "NotebookExecutionName",
            target_id = prelude.String.id,
        }),
        NotebookParams = schema.new({
            id = id.from(_N, "StartNotebookExecutionInput", "NotebookParams"),
            type = "string",
            name = "NotebookParams",
            target_id = prelude.String.id,
        }),
        ExecutionEngine = schema.new({
            id = id.from(_N, "StartNotebookExecutionInput", "ExecutionEngine"),
            type = "structure",
            name = "ExecutionEngine",
            target_id = id.from(_N, "ExecutionEngineConfig"),
            target = M.ExecutionEngineConfig,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        ServiceRole = schema.new({
            id = id.from(_N, "StartNotebookExecutionInput", "ServiceRole"),
            type = "string",
            name = "ServiceRole",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        NotebookInstanceSecurityGroupId = schema.new({
            id = id.from(_N, "StartNotebookExecutionInput", "NotebookInstanceSecurityGroupId"),
            type = "string",
            name = "NotebookInstanceSecurityGroupId",
            target_id = prelude.String.id,
        }),
        Tags = schema.new({
            id = id.from(_N, "StartNotebookExecutionInput", "Tags"),
            type = "list",
            name = "Tags",
            target_id = prelude.Document.id,
            list_member = M.Tag,
        }),
        NotebookS3Location = schema.new({
            id = id.from(_N, "StartNotebookExecutionInput", "NotebookS3Location"),
            type = "structure",
            name = "NotebookS3Location",
            target_id = id.from(_N, "NotebookS3LocationFromInput"),
            target = M.NotebookS3LocationFromInput,
        }),
        OutputNotebookS3Location = schema.new({
            id = id.from(_N, "StartNotebookExecutionInput", "OutputNotebookS3Location"),
            type = "structure",
            name = "OutputNotebookS3Location",
            target_id = id.from(_N, "OutputNotebookS3LocationFromInput"),
            target = M.OutputNotebookS3LocationFromInput,
        }),
        OutputNotebookFormat = schema.new({
            id = id.from(_N, "StartNotebookExecutionInput", "OutputNotebookFormat"),
            type = "string",
            name = "OutputNotebookFormat",
            target_id = prelude.String.id,
        }),
        EnvironmentVariables = schema.new({
            id = id.from(_N, "StartNotebookExecutionInput", "EnvironmentVariables"),
            type = "map",
            name = "EnvironmentVariables",
            target_id = prelude.Document.id,
            map_key = prelude.String,
            map_value = prelude.String,
        }),
    },
})

M.StartNotebookExecutionOutput = schema.new({
    id = id.from(_N, "StartNotebookExecutionOutput"),
    type = "structure",
    members = {
        NotebookExecutionId = schema.new({
            id = id.from(_N, "StartNotebookExecutionOutput", "NotebookExecutionId"),
            type = "string",
            name = "NotebookExecutionId",
            target_id = prelude.String.id,
        }),
    },
})

M.StopNotebookExecutionInput = schema.new({
    id = id.from(_N, "StopNotebookExecutionInput"),
    type = "structure",
    members = {
        NotebookExecutionId = schema.new({
            id = id.from(_N, "StopNotebookExecutionInput", "NotebookExecutionId"),
            type = "string",
            name = "NotebookExecutionId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.StopNotebookExecutionOutput = prelude.Unit

M.TerminateJobFlowsInput = schema.new({
    id = id.from(_N, "TerminateJobFlowsInput"),
    type = "structure",
    members = {
        JobFlowIds = schema.new({
            id = id.from(_N, "TerminateJobFlowsInput", "JobFlowIds"),
            type = "list",
            name = "JobFlowIds",
            target_id = prelude.Document.id,
            list_member = prelude.String,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.TerminateJobFlowsOutput = prelude.Unit

M.UpdateStudioInput = schema.new({
    id = id.from(_N, "UpdateStudioInput"),
    type = "structure",
    members = {
        StudioId = schema.new({
            id = id.from(_N, "UpdateStudioInput", "StudioId"),
            type = "string",
            name = "StudioId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        Name = schema.new({
            id = id.from(_N, "UpdateStudioInput", "Name"),
            type = "string",
            name = "Name",
            target_id = prelude.String.id,
        }),
        Description = schema.new({
            id = id.from(_N, "UpdateStudioInput", "Description"),
            type = "string",
            name = "Description",
            target_id = prelude.String.id,
        }),
        SubnetIds = schema.new({
            id = id.from(_N, "UpdateStudioInput", "SubnetIds"),
            type = "list",
            name = "SubnetIds",
            target_id = prelude.Document.id,
            list_member = prelude.String,
        }),
        DefaultS3Location = schema.new({
            id = id.from(_N, "UpdateStudioInput", "DefaultS3Location"),
            type = "string",
            name = "DefaultS3Location",
            target_id = prelude.String.id,
        }),
        EncryptionKeyArn = schema.new({
            id = id.from(_N, "UpdateStudioInput", "EncryptionKeyArn"),
            type = "string",
            name = "EncryptionKeyArn",
            target_id = prelude.String.id,
        }),
    },
})

M.UpdateStudioOutput = prelude.Unit

M.UpdateStudioSessionMappingInput = schema.new({
    id = id.from(_N, "UpdateStudioSessionMappingInput"),
    type = "structure",
    members = {
        StudioId = schema.new({
            id = id.from(_N, "UpdateStudioSessionMappingInput", "StudioId"),
            type = "string",
            name = "StudioId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        IdentityId = schema.new({
            id = id.from(_N, "UpdateStudioSessionMappingInput", "IdentityId"),
            type = "string",
            name = "IdentityId",
            target_id = prelude.String.id,
        }),
        IdentityName = schema.new({
            id = id.from(_N, "UpdateStudioSessionMappingInput", "IdentityName"),
            type = "string",
            name = "IdentityName",
            target_id = prelude.String.id,
        }),
        IdentityType = schema.new({
            id = id.from(_N, "UpdateStudioSessionMappingInput", "IdentityType"),
            type = "string",
            name = "IdentityType",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        SessionPolicyArn = schema.new({
            id = id.from(_N, "UpdateStudioSessionMappingInput", "SessionPolicyArn"),
            type = "string",
            name = "SessionPolicyArn",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.UpdateStudioSessionMappingOutput = prelude.Unit

M.Configuration = schema.new({
    id = id.from(_N, "Configuration"),
    type = "structure",
    members = {
        Classification = schema.new({
            id = id.from(_N, "Configuration", "Classification"),
            type = "string",
            name = "Classification",
            target_id = prelude.String.id,
        }),
        Configurations = schema.new({
            id = id.from(_N, "Configuration", "Configurations"),
            type = "list",
            name = "Configurations",
            target_id = prelude.Document.id,
            list_member = M.Configuration,
        }),
        Properties = schema.new({
            id = id.from(_N, "Configuration", "Properties"),
            type = "map",
            name = "Properties",
            target_id = prelude.Document.id,
            map_key = prelude.String,
            map_value = prelude.String,
        }),
    },
})

M.BlockPublicAccessConfiguration = schema.new({
    id = id.from(_N, "BlockPublicAccessConfiguration"),
    type = "structure",
    members = {
        BlockPublicSecurityGroupRules = schema.new({
            id = id.from(_N, "BlockPublicAccessConfiguration", "BlockPublicSecurityGroupRules"),
            type = "boolean",
            name = "BlockPublicSecurityGroupRules",
            target_id = prelude.Boolean.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        PermittedPublicSecurityGroupRuleRanges = schema.new({
            id = id.from(_N, "BlockPublicAccessConfiguration", "PermittedPublicSecurityGroupRuleRanges"),
            type = "list",
            name = "PermittedPublicSecurityGroupRuleRanges",
            target_id = prelude.Document.id,
            list_member = M.PortRange,
        }),
        Classification = schema.new({
            id = id.from(_N, "BlockPublicAccessConfiguration", "Classification"),
            type = "string",
            name = "Classification",
            target_id = prelude.String.id,
        }),
        Configurations = schema.new({
            id = id.from(_N, "BlockPublicAccessConfiguration", "Configurations"),
            type = "list",
            name = "Configurations",
            target_id = prelude.Document.id,
            list_member = M.Configuration,
        }),
        Properties = schema.new({
            id = id.from(_N, "BlockPublicAccessConfiguration", "Properties"),
            type = "map",
            name = "Properties",
            target_id = prelude.Document.id,
            map_key = prelude.String,
            map_value = prelude.String,
        }),
    },
})

M.Cluster = schema.new({
    id = id.from(_N, "Cluster"),
    type = "structure",
    members = {
        Id = schema.new({
            id = id.from(_N, "Cluster", "Id"),
            type = "string",
            name = "Id",
            target_id = prelude.String.id,
        }),
        Name = schema.new({
            id = id.from(_N, "Cluster", "Name"),
            type = "string",
            name = "Name",
            target_id = prelude.String.id,
        }),
        Status = schema.new({
            id = id.from(_N, "Cluster", "Status"),
            type = "structure",
            name = "Status",
            target_id = id.from(_N, "ClusterStatus"),
            target = M.ClusterStatus,
        }),
        Ec2InstanceAttributes = schema.new({
            id = id.from(_N, "Cluster", "Ec2InstanceAttributes"),
            type = "structure",
            name = "Ec2InstanceAttributes",
            target_id = id.from(_N, "Ec2InstanceAttributes"),
            target = M.Ec2InstanceAttributes,
        }),
        InstanceCollectionType = schema.new({
            id = id.from(_N, "Cluster", "InstanceCollectionType"),
            type = "string",
            name = "InstanceCollectionType",
            target_id = prelude.String.id,
        }),
        LogUri = schema.new({
            id = id.from(_N, "Cluster", "LogUri"),
            type = "string",
            name = "LogUri",
            target_id = prelude.String.id,
        }),
        LogEncryptionKmsKeyId = schema.new({
            id = id.from(_N, "Cluster", "LogEncryptionKmsKeyId"),
            type = "string",
            name = "LogEncryptionKmsKeyId",
            target_id = prelude.String.id,
        }),
        RequestedAmiVersion = schema.new({
            id = id.from(_N, "Cluster", "RequestedAmiVersion"),
            type = "string",
            name = "RequestedAmiVersion",
            target_id = prelude.String.id,
        }),
        RunningAmiVersion = schema.new({
            id = id.from(_N, "Cluster", "RunningAmiVersion"),
            type = "string",
            name = "RunningAmiVersion",
            target_id = prelude.String.id,
        }),
        ReleaseLabel = schema.new({
            id = id.from(_N, "Cluster", "ReleaseLabel"),
            type = "string",
            name = "ReleaseLabel",
            target_id = prelude.String.id,
        }),
        AutoTerminate = schema.new({
            id = id.from(_N, "Cluster", "AutoTerminate"),
            type = "boolean",
            name = "AutoTerminate",
            target_id = prelude.Boolean.id,
        }),
        TerminationProtected = schema.new({
            id = id.from(_N, "Cluster", "TerminationProtected"),
            type = "boolean",
            name = "TerminationProtected",
            target_id = prelude.Boolean.id,
        }),
        UnhealthyNodeReplacement = schema.new({
            id = id.from(_N, "Cluster", "UnhealthyNodeReplacement"),
            type = "boolean",
            name = "UnhealthyNodeReplacement",
            target_id = prelude.Boolean.id,
        }),
        VisibleToAllUsers = schema.new({
            id = id.from(_N, "Cluster", "VisibleToAllUsers"),
            type = "boolean",
            name = "VisibleToAllUsers",
            target_id = prelude.Boolean.id,
        }),
        Applications = schema.new({
            id = id.from(_N, "Cluster", "Applications"),
            type = "list",
            name = "Applications",
            target_id = prelude.Document.id,
            list_member = M.Application,
        }),
        Tags = schema.new({
            id = id.from(_N, "Cluster", "Tags"),
            type = "list",
            name = "Tags",
            target_id = prelude.Document.id,
            list_member = M.Tag,
        }),
        ServiceRole = schema.new({
            id = id.from(_N, "Cluster", "ServiceRole"),
            type = "string",
            name = "ServiceRole",
            target_id = prelude.String.id,
        }),
        NormalizedInstanceHours = schema.new({
            id = id.from(_N, "Cluster", "NormalizedInstanceHours"),
            type = "integer",
            name = "NormalizedInstanceHours",
            target_id = prelude.Integer.id,
        }),
        MasterPublicDnsName = schema.new({
            id = id.from(_N, "Cluster", "MasterPublicDnsName"),
            type = "string",
            name = "MasterPublicDnsName",
            target_id = prelude.String.id,
        }),
        Configurations = schema.new({
            id = id.from(_N, "Cluster", "Configurations"),
            type = "list",
            name = "Configurations",
            target_id = prelude.Document.id,
            list_member = M.Configuration,
        }),
        SecurityConfiguration = schema.new({
            id = id.from(_N, "Cluster", "SecurityConfiguration"),
            type = "string",
            name = "SecurityConfiguration",
            target_id = prelude.String.id,
        }),
        AutoScalingRole = schema.new({
            id = id.from(_N, "Cluster", "AutoScalingRole"),
            type = "string",
            name = "AutoScalingRole",
            target_id = prelude.String.id,
        }),
        ScaleDownBehavior = schema.new({
            id = id.from(_N, "Cluster", "ScaleDownBehavior"),
            type = "string",
            name = "ScaleDownBehavior",
            target_id = prelude.String.id,
        }),
        CustomAmiId = schema.new({
            id = id.from(_N, "Cluster", "CustomAmiId"),
            type = "string",
            name = "CustomAmiId",
            target_id = prelude.String.id,
        }),
        EbsRootVolumeSize = schema.new({
            id = id.from(_N, "Cluster", "EbsRootVolumeSize"),
            type = "integer",
            name = "EbsRootVolumeSize",
            target_id = prelude.Integer.id,
        }),
        RepoUpgradeOnBoot = schema.new({
            id = id.from(_N, "Cluster", "RepoUpgradeOnBoot"),
            type = "string",
            name = "RepoUpgradeOnBoot",
            target_id = prelude.String.id,
        }),
        KerberosAttributes = schema.new({
            id = id.from(_N, "Cluster", "KerberosAttributes"),
            type = "structure",
            name = "KerberosAttributes",
            target_id = id.from(_N, "KerberosAttributes"),
            target = M.KerberosAttributes,
        }),
        ClusterArn = schema.new({
            id = id.from(_N, "Cluster", "ClusterArn"),
            type = "string",
            name = "ClusterArn",
            target_id = prelude.String.id,
        }),
        OutpostArn = schema.new({
            id = id.from(_N, "Cluster", "OutpostArn"),
            type = "string",
            name = "OutpostArn",
            target_id = prelude.String.id,
        }),
        StepConcurrencyLevel = schema.new({
            id = id.from(_N, "Cluster", "StepConcurrencyLevel"),
            type = "integer",
            name = "StepConcurrencyLevel",
            target_id = prelude.Integer.id,
        }),
        PlacementGroups = schema.new({
            id = id.from(_N, "Cluster", "PlacementGroups"),
            type = "list",
            name = "PlacementGroups",
            target_id = prelude.Document.id,
            list_member = M.PlacementGroupConfig,
        }),
        OSReleaseLabel = schema.new({
            id = id.from(_N, "Cluster", "OSReleaseLabel"),
            type = "string",
            name = "OSReleaseLabel",
            target_id = prelude.String.id,
        }),
        EbsRootVolumeIops = schema.new({
            id = id.from(_N, "Cluster", "EbsRootVolumeIops"),
            type = "integer",
            name = "EbsRootVolumeIops",
            target_id = prelude.Integer.id,
        }),
        EbsRootVolumeThroughput = schema.new({
            id = id.from(_N, "Cluster", "EbsRootVolumeThroughput"),
            type = "integer",
            name = "EbsRootVolumeThroughput",
            target_id = prelude.Integer.id,
        }),
        ExtendedSupport = schema.new({
            id = id.from(_N, "Cluster", "ExtendedSupport"),
            type = "boolean",
            name = "ExtendedSupport",
            target_id = prelude.Boolean.id,
        }),
        MonitoringConfiguration = schema.new({
            id = id.from(_N, "Cluster", "MonitoringConfiguration"),
            type = "structure",
            name = "MonitoringConfiguration",
            target_id = id.from(_N, "MonitoringConfiguration"),
            target = M.MonitoringConfiguration,
        }),
    },
})

M.InstanceGroupConfig = schema.new({
    id = id.from(_N, "InstanceGroupConfig"),
    type = "structure",
    members = {
        Name = schema.new({
            id = id.from(_N, "InstanceGroupConfig", "Name"),
            type = "string",
            name = "Name",
            target_id = prelude.String.id,
        }),
        Market = schema.new({
            id = id.from(_N, "InstanceGroupConfig", "Market"),
            type = "string",
            name = "Market",
            target_id = prelude.String.id,
        }),
        InstanceRole = schema.new({
            id = id.from(_N, "InstanceGroupConfig", "InstanceRole"),
            type = "string",
            name = "InstanceRole",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        BidPrice = schema.new({
            id = id.from(_N, "InstanceGroupConfig", "BidPrice"),
            type = "string",
            name = "BidPrice",
            target_id = prelude.String.id,
        }),
        InstanceType = schema.new({
            id = id.from(_N, "InstanceGroupConfig", "InstanceType"),
            type = "string",
            name = "InstanceType",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        InstanceCount = schema.new({
            id = id.from(_N, "InstanceGroupConfig", "InstanceCount"),
            type = "integer",
            name = "InstanceCount",
            target_id = prelude.Integer.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        Configurations = schema.new({
            id = id.from(_N, "InstanceGroupConfig", "Configurations"),
            type = "list",
            name = "Configurations",
            target_id = prelude.Document.id,
            list_member = M.Configuration,
        }),
        EbsConfiguration = schema.new({
            id = id.from(_N, "InstanceGroupConfig", "EbsConfiguration"),
            type = "structure",
            name = "EbsConfiguration",
            target_id = id.from(_N, "EbsConfiguration"),
            target = M.EbsConfiguration,
        }),
        AutoScalingPolicy = schema.new({
            id = id.from(_N, "InstanceGroupConfig", "AutoScalingPolicy"),
            type = "structure",
            name = "AutoScalingPolicy",
            target_id = id.from(_N, "AutoScalingPolicy"),
            target = M.AutoScalingPolicy,
        }),
        CustomAmiId = schema.new({
            id = id.from(_N, "InstanceGroupConfig", "CustomAmiId"),
            type = "string",
            name = "CustomAmiId",
            target_id = prelude.String.id,
        }),
    },
})

M.InstanceGroupModifyConfig = schema.new({
    id = id.from(_N, "InstanceGroupModifyConfig"),
    type = "structure",
    members = {
        InstanceGroupId = schema.new({
            id = id.from(_N, "InstanceGroupModifyConfig", "InstanceGroupId"),
            type = "string",
            name = "InstanceGroupId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        InstanceCount = schema.new({
            id = id.from(_N, "InstanceGroupModifyConfig", "InstanceCount"),
            type = "integer",
            name = "InstanceCount",
            target_id = prelude.Integer.id,
        }),
        EC2InstanceIdsToTerminate = schema.new({
            id = id.from(_N, "InstanceGroupModifyConfig", "EC2InstanceIdsToTerminate"),
            type = "list",
            name = "EC2InstanceIdsToTerminate",
            target_id = prelude.Document.id,
            list_member = prelude.String,
        }),
        ShrinkPolicy = schema.new({
            id = id.from(_N, "InstanceGroupModifyConfig", "ShrinkPolicy"),
            type = "structure",
            name = "ShrinkPolicy",
            target_id = id.from(_N, "ShrinkPolicy"),
            target = M.ShrinkPolicy,
        }),
        ReconfigurationType = schema.new({
            id = id.from(_N, "InstanceGroupModifyConfig", "ReconfigurationType"),
            type = "string",
            name = "ReconfigurationType",
            target_id = prelude.String.id,
        }),
        Configurations = schema.new({
            id = id.from(_N, "InstanceGroupModifyConfig", "Configurations"),
            type = "list",
            name = "Configurations",
            target_id = prelude.Document.id,
            list_member = M.Configuration,
        }),
    },
})

M.InstanceTypeConfig = schema.new({
    id = id.from(_N, "InstanceTypeConfig"),
    type = "structure",
    members = {
        InstanceType = schema.new({
            id = id.from(_N, "InstanceTypeConfig", "InstanceType"),
            type = "string",
            name = "InstanceType",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        WeightedCapacity = schema.new({
            id = id.from(_N, "InstanceTypeConfig", "WeightedCapacity"),
            type = "integer",
            name = "WeightedCapacity",
            target_id = prelude.Integer.id,
        }),
        BidPrice = schema.new({
            id = id.from(_N, "InstanceTypeConfig", "BidPrice"),
            type = "string",
            name = "BidPrice",
            target_id = prelude.String.id,
        }),
        BidPriceAsPercentageOfOnDemandPrice = schema.new({
            id = id.from(_N, "InstanceTypeConfig", "BidPriceAsPercentageOfOnDemandPrice"),
            type = "double",
            name = "BidPriceAsPercentageOfOnDemandPrice",
            target_id = prelude.Double.id,
        }),
        EbsConfiguration = schema.new({
            id = id.from(_N, "InstanceTypeConfig", "EbsConfiguration"),
            type = "structure",
            name = "EbsConfiguration",
            target_id = id.from(_N, "EbsConfiguration"),
            target = M.EbsConfiguration,
        }),
        Configurations = schema.new({
            id = id.from(_N, "InstanceTypeConfig", "Configurations"),
            type = "list",
            name = "Configurations",
            target_id = prelude.Document.id,
            list_member = M.Configuration,
        }),
        CustomAmiId = schema.new({
            id = id.from(_N, "InstanceTypeConfig", "CustomAmiId"),
            type = "string",
            name = "CustomAmiId",
            target_id = prelude.String.id,
        }),
        Priority = schema.new({
            id = id.from(_N, "InstanceTypeConfig", "Priority"),
            type = "double",
            name = "Priority",
            target_id = prelude.Double.id,
        }),
    },
})

M.InstanceTypeSpecification = schema.new({
    id = id.from(_N, "InstanceTypeSpecification"),
    type = "structure",
    members = {
        InstanceType = schema.new({
            id = id.from(_N, "InstanceTypeSpecification", "InstanceType"),
            type = "string",
            name = "InstanceType",
            target_id = prelude.String.id,
        }),
        WeightedCapacity = schema.new({
            id = id.from(_N, "InstanceTypeSpecification", "WeightedCapacity"),
            type = "integer",
            name = "WeightedCapacity",
            target_id = prelude.Integer.id,
        }),
        BidPrice = schema.new({
            id = id.from(_N, "InstanceTypeSpecification", "BidPrice"),
            type = "string",
            name = "BidPrice",
            target_id = prelude.String.id,
        }),
        BidPriceAsPercentageOfOnDemandPrice = schema.new({
            id = id.from(_N, "InstanceTypeSpecification", "BidPriceAsPercentageOfOnDemandPrice"),
            type = "double",
            name = "BidPriceAsPercentageOfOnDemandPrice",
            target_id = prelude.Double.id,
        }),
        Configurations = schema.new({
            id = id.from(_N, "InstanceTypeSpecification", "Configurations"),
            type = "list",
            name = "Configurations",
            target_id = prelude.Document.id,
            list_member = M.Configuration,
        }),
        EbsBlockDevices = schema.new({
            id = id.from(_N, "InstanceTypeSpecification", "EbsBlockDevices"),
            type = "list",
            name = "EbsBlockDevices",
            target_id = prelude.Document.id,
            list_member = M.EbsBlockDevice,
        }),
        EbsOptimized = schema.new({
            id = id.from(_N, "InstanceTypeSpecification", "EbsOptimized"),
            type = "boolean",
            name = "EbsOptimized",
            target_id = prelude.Boolean.id,
        }),
        CustomAmiId = schema.new({
            id = id.from(_N, "InstanceTypeSpecification", "CustomAmiId"),
            type = "string",
            name = "CustomAmiId",
            target_id = prelude.String.id,
        }),
        Priority = schema.new({
            id = id.from(_N, "InstanceTypeSpecification", "Priority"),
            type = "double",
            name = "Priority",
            target_id = prelude.Double.id,
        }),
    },
})

M.DescribeClusterOutput = schema.new({
    id = id.from(_N, "DescribeClusterOutput"),
    type = "structure",
    members = {
        Cluster = schema.new({
            id = id.from(_N, "DescribeClusterOutput", "Cluster"),
            type = "structure",
            name = "Cluster",
            target_id = id.from(_N, "Cluster"),
            target = M.Cluster,
        }),
    },
})

M.GetBlockPublicAccessConfigurationOutput = schema.new({
    id = id.from(_N, "GetBlockPublicAccessConfigurationOutput"),
    type = "structure",
    members = {
        BlockPublicAccessConfiguration = schema.new({
            id = id.from(_N, "GetBlockPublicAccessConfigurationOutput", "BlockPublicAccessConfiguration"),
            type = "structure",
            name = "BlockPublicAccessConfiguration",
            target_id = id.from(_N, "BlockPublicAccessConfiguration"),
            target = M.BlockPublicAccessConfiguration,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        BlockPublicAccessConfigurationMetadata = schema.new({
            id = id.from(_N, "GetBlockPublicAccessConfigurationOutput", "BlockPublicAccessConfigurationMetadata"),
            type = "structure",
            name = "BlockPublicAccessConfigurationMetadata",
            target_id = id.from(_N, "BlockPublicAccessConfigurationMetadata"),
            target = M.BlockPublicAccessConfigurationMetadata,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.PutBlockPublicAccessConfigurationInput = schema.new({
    id = id.from(_N, "PutBlockPublicAccessConfigurationInput"),
    type = "structure",
    members = {
        BlockPublicAccessConfiguration = schema.new({
            id = id.from(_N, "PutBlockPublicAccessConfigurationInput", "BlockPublicAccessConfiguration"),
            type = "structure",
            name = "BlockPublicAccessConfiguration",
            target_id = id.from(_N, "BlockPublicAccessConfiguration"),
            target = M.BlockPublicAccessConfiguration,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.AddInstanceGroupsInput = schema.new({
    id = id.from(_N, "AddInstanceGroupsInput"),
    type = "structure",
    members = {
        InstanceGroups = schema.new({
            id = id.from(_N, "AddInstanceGroupsInput", "InstanceGroups"),
            type = "list",
            name = "InstanceGroups",
            target_id = prelude.Document.id,
            list_member = M.InstanceGroupConfig,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        JobFlowId = schema.new({
            id = id.from(_N, "AddInstanceGroupsInput", "JobFlowId"),
            type = "string",
            name = "JobFlowId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.InstanceFleet = schema.new({
    id = id.from(_N, "InstanceFleet"),
    type = "structure",
    members = {
        Id = schema.new({
            id = id.from(_N, "InstanceFleet", "Id"),
            type = "string",
            name = "Id",
            target_id = prelude.String.id,
        }),
        Name = schema.new({
            id = id.from(_N, "InstanceFleet", "Name"),
            type = "string",
            name = "Name",
            target_id = prelude.String.id,
        }),
        Status = schema.new({
            id = id.from(_N, "InstanceFleet", "Status"),
            type = "structure",
            name = "Status",
            target_id = id.from(_N, "InstanceFleetStatus"),
            target = M.InstanceFleetStatus,
        }),
        InstanceFleetType = schema.new({
            id = id.from(_N, "InstanceFleet", "InstanceFleetType"),
            type = "string",
            name = "InstanceFleetType",
            target_id = prelude.String.id,
        }),
        TargetOnDemandCapacity = schema.new({
            id = id.from(_N, "InstanceFleet", "TargetOnDemandCapacity"),
            type = "integer",
            name = "TargetOnDemandCapacity",
            target_id = prelude.Integer.id,
        }),
        TargetSpotCapacity = schema.new({
            id = id.from(_N, "InstanceFleet", "TargetSpotCapacity"),
            type = "integer",
            name = "TargetSpotCapacity",
            target_id = prelude.Integer.id,
        }),
        ProvisionedOnDemandCapacity = schema.new({
            id = id.from(_N, "InstanceFleet", "ProvisionedOnDemandCapacity"),
            type = "integer",
            name = "ProvisionedOnDemandCapacity",
            target_id = prelude.Integer.id,
        }),
        ProvisionedSpotCapacity = schema.new({
            id = id.from(_N, "InstanceFleet", "ProvisionedSpotCapacity"),
            type = "integer",
            name = "ProvisionedSpotCapacity",
            target_id = prelude.Integer.id,
        }),
        InstanceTypeSpecifications = schema.new({
            id = id.from(_N, "InstanceFleet", "InstanceTypeSpecifications"),
            type = "list",
            name = "InstanceTypeSpecifications",
            target_id = prelude.Document.id,
            list_member = M.InstanceTypeSpecification,
        }),
        LaunchSpecifications = schema.new({
            id = id.from(_N, "InstanceFleet", "LaunchSpecifications"),
            type = "structure",
            name = "LaunchSpecifications",
            target_id = id.from(_N, "InstanceFleetProvisioningSpecifications"),
            target = M.InstanceFleetProvisioningSpecifications,
        }),
        ResizeSpecifications = schema.new({
            id = id.from(_N, "InstanceFleet", "ResizeSpecifications"),
            type = "structure",
            name = "ResizeSpecifications",
            target_id = id.from(_N, "InstanceFleetResizingSpecifications"),
            target = M.InstanceFleetResizingSpecifications,
        }),
        Context = schema.new({
            id = id.from(_N, "InstanceFleet", "Context"),
            type = "string",
            name = "Context",
            target_id = prelude.String.id,
        }),
    },
})

M.InstanceFleetConfig = schema.new({
    id = id.from(_N, "InstanceFleetConfig"),
    type = "structure",
    members = {
        Name = schema.new({
            id = id.from(_N, "InstanceFleetConfig", "Name"),
            type = "string",
            name = "Name",
            target_id = prelude.String.id,
        }),
        InstanceFleetType = schema.new({
            id = id.from(_N, "InstanceFleetConfig", "InstanceFleetType"),
            type = "string",
            name = "InstanceFleetType",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        TargetOnDemandCapacity = schema.new({
            id = id.from(_N, "InstanceFleetConfig", "TargetOnDemandCapacity"),
            type = "integer",
            name = "TargetOnDemandCapacity",
            target_id = prelude.Integer.id,
        }),
        TargetSpotCapacity = schema.new({
            id = id.from(_N, "InstanceFleetConfig", "TargetSpotCapacity"),
            type = "integer",
            name = "TargetSpotCapacity",
            target_id = prelude.Integer.id,
        }),
        InstanceTypeConfigs = schema.new({
            id = id.from(_N, "InstanceFleetConfig", "InstanceTypeConfigs"),
            type = "list",
            name = "InstanceTypeConfigs",
            target_id = prelude.Document.id,
            list_member = M.InstanceTypeConfig,
        }),
        LaunchSpecifications = schema.new({
            id = id.from(_N, "InstanceFleetConfig", "LaunchSpecifications"),
            type = "structure",
            name = "LaunchSpecifications",
            target_id = id.from(_N, "InstanceFleetProvisioningSpecifications"),
            target = M.InstanceFleetProvisioningSpecifications,
        }),
        ResizeSpecifications = schema.new({
            id = id.from(_N, "InstanceFleetConfig", "ResizeSpecifications"),
            type = "structure",
            name = "ResizeSpecifications",
            target_id = id.from(_N, "InstanceFleetResizingSpecifications"),
            target = M.InstanceFleetResizingSpecifications,
        }),
        Context = schema.new({
            id = id.from(_N, "InstanceFleetConfig", "Context"),
            type = "string",
            name = "Context",
            target_id = prelude.String.id,
        }),
    },
})

M.InstanceFleetModifyConfig = schema.new({
    id = id.from(_N, "InstanceFleetModifyConfig"),
    type = "structure",
    members = {
        InstanceFleetId = schema.new({
            id = id.from(_N, "InstanceFleetModifyConfig", "InstanceFleetId"),
            type = "string",
            name = "InstanceFleetId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        TargetOnDemandCapacity = schema.new({
            id = id.from(_N, "InstanceFleetModifyConfig", "TargetOnDemandCapacity"),
            type = "integer",
            name = "TargetOnDemandCapacity",
            target_id = prelude.Integer.id,
        }),
        TargetSpotCapacity = schema.new({
            id = id.from(_N, "InstanceFleetModifyConfig", "TargetSpotCapacity"),
            type = "integer",
            name = "TargetSpotCapacity",
            target_id = prelude.Integer.id,
        }),
        ResizeSpecifications = schema.new({
            id = id.from(_N, "InstanceFleetModifyConfig", "ResizeSpecifications"),
            type = "structure",
            name = "ResizeSpecifications",
            target_id = id.from(_N, "InstanceFleetResizingSpecifications"),
            target = M.InstanceFleetResizingSpecifications,
        }),
        InstanceTypeConfigs = schema.new({
            id = id.from(_N, "InstanceFleetModifyConfig", "InstanceTypeConfigs"),
            type = "list",
            name = "InstanceTypeConfigs",
            target_id = prelude.Document.id,
            list_member = M.InstanceTypeConfig,
        }),
        Context = schema.new({
            id = id.from(_N, "InstanceFleetModifyConfig", "Context"),
            type = "string",
            name = "Context",
            target_id = prelude.String.id,
        }),
    },
})

M.ModifyInstanceGroupsInput = schema.new({
    id = id.from(_N, "ModifyInstanceGroupsInput"),
    type = "structure",
    members = {
        ClusterId = schema.new({
            id = id.from(_N, "ModifyInstanceGroupsInput", "ClusterId"),
            type = "string",
            name = "ClusterId",
            target_id = prelude.String.id,
        }),
        InstanceGroups = schema.new({
            id = id.from(_N, "ModifyInstanceGroupsInput", "InstanceGroups"),
            type = "list",
            name = "InstanceGroups",
            target_id = prelude.Document.id,
            list_member = M.InstanceGroupModifyConfig,
        }),
    },
})

M.AddInstanceFleetInput = schema.new({
    id = id.from(_N, "AddInstanceFleetInput"),
    type = "structure",
    members = {
        ClusterId = schema.new({
            id = id.from(_N, "AddInstanceFleetInput", "ClusterId"),
            type = "string",
            name = "ClusterId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        InstanceFleet = schema.new({
            id = id.from(_N, "AddInstanceFleetInput", "InstanceFleet"),
            type = "structure",
            name = "InstanceFleet",
            target_id = id.from(_N, "InstanceFleetConfig"),
            target = M.InstanceFleetConfig,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.InstanceGroup = schema.new({
    id = id.from(_N, "InstanceGroup"),
    type = "structure",
    members = {
        Id = schema.new({
            id = id.from(_N, "InstanceGroup", "Id"),
            type = "string",
            name = "Id",
            target_id = prelude.String.id,
        }),
        Name = schema.new({
            id = id.from(_N, "InstanceGroup", "Name"),
            type = "string",
            name = "Name",
            target_id = prelude.String.id,
        }),
        Market = schema.new({
            id = id.from(_N, "InstanceGroup", "Market"),
            type = "string",
            name = "Market",
            target_id = prelude.String.id,
        }),
        InstanceGroupType = schema.new({
            id = id.from(_N, "InstanceGroup", "InstanceGroupType"),
            type = "string",
            name = "InstanceGroupType",
            target_id = prelude.String.id,
        }),
        BidPrice = schema.new({
            id = id.from(_N, "InstanceGroup", "BidPrice"),
            type = "string",
            name = "BidPrice",
            target_id = prelude.String.id,
        }),
        InstanceType = schema.new({
            id = id.from(_N, "InstanceGroup", "InstanceType"),
            type = "string",
            name = "InstanceType",
            target_id = prelude.String.id,
        }),
        RequestedInstanceCount = schema.new({
            id = id.from(_N, "InstanceGroup", "RequestedInstanceCount"),
            type = "integer",
            name = "RequestedInstanceCount",
            target_id = prelude.Integer.id,
        }),
        RunningInstanceCount = schema.new({
            id = id.from(_N, "InstanceGroup", "RunningInstanceCount"),
            type = "integer",
            name = "RunningInstanceCount",
            target_id = prelude.Integer.id,
        }),
        Status = schema.new({
            id = id.from(_N, "InstanceGroup", "Status"),
            type = "structure",
            name = "Status",
            target_id = id.from(_N, "InstanceGroupStatus"),
            target = M.InstanceGroupStatus,
        }),
        Configurations = schema.new({
            id = id.from(_N, "InstanceGroup", "Configurations"),
            type = "list",
            name = "Configurations",
            target_id = prelude.Document.id,
            list_member = M.Configuration,
        }),
        ConfigurationsVersion = schema.new({
            id = id.from(_N, "InstanceGroup", "ConfigurationsVersion"),
            type = "long",
            name = "ConfigurationsVersion",
            target_id = prelude.Long.id,
        }),
        LastSuccessfullyAppliedConfigurations = schema.new({
            id = id.from(_N, "InstanceGroup", "LastSuccessfullyAppliedConfigurations"),
            type = "list",
            name = "LastSuccessfullyAppliedConfigurations",
            target_id = prelude.Document.id,
            list_member = M.Configuration,
        }),
        LastSuccessfullyAppliedConfigurationsVersion = schema.new({
            id = id.from(_N, "InstanceGroup", "LastSuccessfullyAppliedConfigurationsVersion"),
            type = "long",
            name = "LastSuccessfullyAppliedConfigurationsVersion",
            target_id = prelude.Long.id,
        }),
        EbsBlockDevices = schema.new({
            id = id.from(_N, "InstanceGroup", "EbsBlockDevices"),
            type = "list",
            name = "EbsBlockDevices",
            target_id = prelude.Document.id,
            list_member = M.EbsBlockDevice,
        }),
        EbsOptimized = schema.new({
            id = id.from(_N, "InstanceGroup", "EbsOptimized"),
            type = "boolean",
            name = "EbsOptimized",
            target_id = prelude.Boolean.id,
        }),
        ShrinkPolicy = schema.new({
            id = id.from(_N, "InstanceGroup", "ShrinkPolicy"),
            type = "structure",
            name = "ShrinkPolicy",
            target_id = id.from(_N, "ShrinkPolicy"),
            target = M.ShrinkPolicy,
        }),
        AutoScalingPolicy = schema.new({
            id = id.from(_N, "InstanceGroup", "AutoScalingPolicy"),
            type = "structure",
            name = "AutoScalingPolicy",
            target_id = id.from(_N, "AutoScalingPolicyDescription"),
            target = M.AutoScalingPolicyDescription,
        }),
        CustomAmiId = schema.new({
            id = id.from(_N, "InstanceGroup", "CustomAmiId"),
            type = "string",
            name = "CustomAmiId",
            target_id = prelude.String.id,
        }),
    },
})

M.ModifyInstanceFleetInput = schema.new({
    id = id.from(_N, "ModifyInstanceFleetInput"),
    type = "structure",
    members = {
        ClusterId = schema.new({
            id = id.from(_N, "ModifyInstanceFleetInput", "ClusterId"),
            type = "string",
            name = "ClusterId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        InstanceFleet = schema.new({
            id = id.from(_N, "ModifyInstanceFleetInput", "InstanceFleet"),
            type = "structure",
            name = "InstanceFleet",
            target_id = id.from(_N, "InstanceFleetModifyConfig"),
            target = M.InstanceFleetModifyConfig,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.ListInstanceFleetsOutput = schema.new({
    id = id.from(_N, "ListInstanceFleetsOutput"),
    type = "structure",
    members = {
        InstanceFleets = schema.new({
            id = id.from(_N, "ListInstanceFleetsOutput", "InstanceFleets"),
            type = "list",
            name = "InstanceFleets",
            target_id = prelude.Document.id,
            list_member = M.InstanceFleet,
        }),
        Marker = schema.new({
            id = id.from(_N, "ListInstanceFleetsOutput", "Marker"),
            type = "string",
            name = "Marker",
            target_id = prelude.String.id,
        }),
    },
})

M.ListInstanceGroupsOutput = schema.new({
    id = id.from(_N, "ListInstanceGroupsOutput"),
    type = "structure",
    members = {
        InstanceGroups = schema.new({
            id = id.from(_N, "ListInstanceGroupsOutput", "InstanceGroups"),
            type = "list",
            name = "InstanceGroups",
            target_id = prelude.Document.id,
            list_member = M.InstanceGroup,
        }),
        Marker = schema.new({
            id = id.from(_N, "ListInstanceGroupsOutput", "Marker"),
            type = "string",
            name = "Marker",
            target_id = prelude.String.id,
        }),
    },
})

M.JobFlowInstancesConfig = schema.new({
    id = id.from(_N, "JobFlowInstancesConfig"),
    type = "structure",
    members = {
        MasterInstanceType = schema.new({
            id = id.from(_N, "JobFlowInstancesConfig", "MasterInstanceType"),
            type = "string",
            name = "MasterInstanceType",
            target_id = prelude.String.id,
        }),
        SlaveInstanceType = schema.new({
            id = id.from(_N, "JobFlowInstancesConfig", "SlaveInstanceType"),
            type = "string",
            name = "SlaveInstanceType",
            target_id = prelude.String.id,
        }),
        InstanceCount = schema.new({
            id = id.from(_N, "JobFlowInstancesConfig", "InstanceCount"),
            type = "integer",
            name = "InstanceCount",
            target_id = prelude.Integer.id,
        }),
        InstanceGroups = schema.new({
            id = id.from(_N, "JobFlowInstancesConfig", "InstanceGroups"),
            type = "list",
            name = "InstanceGroups",
            target_id = prelude.Document.id,
            list_member = M.InstanceGroupConfig,
        }),
        InstanceFleets = schema.new({
            id = id.from(_N, "JobFlowInstancesConfig", "InstanceFleets"),
            type = "list",
            name = "InstanceFleets",
            target_id = prelude.Document.id,
            list_member = M.InstanceFleetConfig,
        }),
        Ec2KeyName = schema.new({
            id = id.from(_N, "JobFlowInstancesConfig", "Ec2KeyName"),
            type = "string",
            name = "Ec2KeyName",
            target_id = prelude.String.id,
        }),
        Placement = schema.new({
            id = id.from(_N, "JobFlowInstancesConfig", "Placement"),
            type = "structure",
            name = "Placement",
            target_id = id.from(_N, "PlacementType"),
            target = M.PlacementType,
        }),
        KeepJobFlowAliveWhenNoSteps = schema.new({
            id = id.from(_N, "JobFlowInstancesConfig", "KeepJobFlowAliveWhenNoSteps"),
            type = "boolean",
            name = "KeepJobFlowAliveWhenNoSteps",
            target_id = prelude.Boolean.id,
        }),
        TerminationProtected = schema.new({
            id = id.from(_N, "JobFlowInstancesConfig", "TerminationProtected"),
            type = "boolean",
            name = "TerminationProtected",
            target_id = prelude.Boolean.id,
        }),
        UnhealthyNodeReplacement = schema.new({
            id = id.from(_N, "JobFlowInstancesConfig", "UnhealthyNodeReplacement"),
            type = "boolean",
            name = "UnhealthyNodeReplacement",
            target_id = prelude.Boolean.id,
        }),
        HadoopVersion = schema.new({
            id = id.from(_N, "JobFlowInstancesConfig", "HadoopVersion"),
            type = "string",
            name = "HadoopVersion",
            target_id = prelude.String.id,
        }),
        Ec2SubnetId = schema.new({
            id = id.from(_N, "JobFlowInstancesConfig", "Ec2SubnetId"),
            type = "string",
            name = "Ec2SubnetId",
            target_id = prelude.String.id,
        }),
        Ec2SubnetIds = schema.new({
            id = id.from(_N, "JobFlowInstancesConfig", "Ec2SubnetIds"),
            type = "list",
            name = "Ec2SubnetIds",
            target_id = prelude.Document.id,
            list_member = prelude.String,
        }),
        EmrManagedMasterSecurityGroup = schema.new({
            id = id.from(_N, "JobFlowInstancesConfig", "EmrManagedMasterSecurityGroup"),
            type = "string",
            name = "EmrManagedMasterSecurityGroup",
            target_id = prelude.String.id,
        }),
        EmrManagedSlaveSecurityGroup = schema.new({
            id = id.from(_N, "JobFlowInstancesConfig", "EmrManagedSlaveSecurityGroup"),
            type = "string",
            name = "EmrManagedSlaveSecurityGroup",
            target_id = prelude.String.id,
        }),
        ServiceAccessSecurityGroup = schema.new({
            id = id.from(_N, "JobFlowInstancesConfig", "ServiceAccessSecurityGroup"),
            type = "string",
            name = "ServiceAccessSecurityGroup",
            target_id = prelude.String.id,
        }),
        AdditionalMasterSecurityGroups = schema.new({
            id = id.from(_N, "JobFlowInstancesConfig", "AdditionalMasterSecurityGroups"),
            type = "list",
            name = "AdditionalMasterSecurityGroups",
            target_id = prelude.Document.id,
            list_member = prelude.String,
        }),
        AdditionalSlaveSecurityGroups = schema.new({
            id = id.from(_N, "JobFlowInstancesConfig", "AdditionalSlaveSecurityGroups"),
            type = "list",
            name = "AdditionalSlaveSecurityGroups",
            target_id = prelude.Document.id,
            list_member = prelude.String,
        }),
    },
})

M.RunJobFlowInput = schema.new({
    id = id.from(_N, "RunJobFlowInput"),
    type = "structure",
    members = {
        Name = schema.new({
            id = id.from(_N, "RunJobFlowInput", "Name"),
            type = "string",
            name = "Name",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        LogUri = schema.new({
            id = id.from(_N, "RunJobFlowInput", "LogUri"),
            type = "string",
            name = "LogUri",
            target_id = prelude.String.id,
        }),
        LogEncryptionKmsKeyId = schema.new({
            id = id.from(_N, "RunJobFlowInput", "LogEncryptionKmsKeyId"),
            type = "string",
            name = "LogEncryptionKmsKeyId",
            target_id = prelude.String.id,
        }),
        AdditionalInfo = schema.new({
            id = id.from(_N, "RunJobFlowInput", "AdditionalInfo"),
            type = "string",
            name = "AdditionalInfo",
            target_id = prelude.String.id,
        }),
        AmiVersion = schema.new({
            id = id.from(_N, "RunJobFlowInput", "AmiVersion"),
            type = "string",
            name = "AmiVersion",
            target_id = prelude.String.id,
        }),
        ReleaseLabel = schema.new({
            id = id.from(_N, "RunJobFlowInput", "ReleaseLabel"),
            type = "string",
            name = "ReleaseLabel",
            target_id = prelude.String.id,
        }),
        Instances = schema.new({
            id = id.from(_N, "RunJobFlowInput", "Instances"),
            type = "structure",
            name = "Instances",
            target_id = id.from(_N, "JobFlowInstancesConfig"),
            target = M.JobFlowInstancesConfig,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        Steps = schema.new({
            id = id.from(_N, "RunJobFlowInput", "Steps"),
            type = "list",
            name = "Steps",
            target_id = prelude.Document.id,
            list_member = M.StepConfig,
        }),
        StepExecutionRoleArn = schema.new({
            id = id.from(_N, "RunJobFlowInput", "StepExecutionRoleArn"),
            type = "string",
            name = "StepExecutionRoleArn",
            target_id = prelude.String.id,
        }),
        BootstrapActions = schema.new({
            id = id.from(_N, "RunJobFlowInput", "BootstrapActions"),
            type = "list",
            name = "BootstrapActions",
            target_id = prelude.Document.id,
            list_member = M.BootstrapActionConfig,
        }),
        SupportedProducts = schema.new({
            id = id.from(_N, "RunJobFlowInput", "SupportedProducts"),
            type = "list",
            name = "SupportedProducts",
            target_id = prelude.Document.id,
            list_member = prelude.String,
        }),
        NewSupportedProducts = schema.new({
            id = id.from(_N, "RunJobFlowInput", "NewSupportedProducts"),
            type = "list",
            name = "NewSupportedProducts",
            target_id = prelude.Document.id,
            list_member = M.SupportedProductConfig,
        }),
        Applications = schema.new({
            id = id.from(_N, "RunJobFlowInput", "Applications"),
            type = "list",
            name = "Applications",
            target_id = prelude.Document.id,
            list_member = M.Application,
        }),
        Configurations = schema.new({
            id = id.from(_N, "RunJobFlowInput", "Configurations"),
            type = "list",
            name = "Configurations",
            target_id = prelude.Document.id,
            list_member = M.Configuration,
        }),
        VisibleToAllUsers = schema.new({
            id = id.from(_N, "RunJobFlowInput", "VisibleToAllUsers"),
            type = "boolean",
            name = "VisibleToAllUsers",
            target_id = prelude.Boolean.id,
        }),
        JobFlowRole = schema.new({
            id = id.from(_N, "RunJobFlowInput", "JobFlowRole"),
            type = "string",
            name = "JobFlowRole",
            target_id = prelude.String.id,
        }),
        ServiceRole = schema.new({
            id = id.from(_N, "RunJobFlowInput", "ServiceRole"),
            type = "string",
            name = "ServiceRole",
            target_id = prelude.String.id,
        }),
        Tags = schema.new({
            id = id.from(_N, "RunJobFlowInput", "Tags"),
            type = "list",
            name = "Tags",
            target_id = prelude.Document.id,
            list_member = M.Tag,
        }),
        SecurityConfiguration = schema.new({
            id = id.from(_N, "RunJobFlowInput", "SecurityConfiguration"),
            type = "string",
            name = "SecurityConfiguration",
            target_id = prelude.String.id,
        }),
        AutoScalingRole = schema.new({
            id = id.from(_N, "RunJobFlowInput", "AutoScalingRole"),
            type = "string",
            name = "AutoScalingRole",
            target_id = prelude.String.id,
        }),
        ScaleDownBehavior = schema.new({
            id = id.from(_N, "RunJobFlowInput", "ScaleDownBehavior"),
            type = "string",
            name = "ScaleDownBehavior",
            target_id = prelude.String.id,
        }),
        CustomAmiId = schema.new({
            id = id.from(_N, "RunJobFlowInput", "CustomAmiId"),
            type = "string",
            name = "CustomAmiId",
            target_id = prelude.String.id,
        }),
        EbsRootVolumeSize = schema.new({
            id = id.from(_N, "RunJobFlowInput", "EbsRootVolumeSize"),
            type = "integer",
            name = "EbsRootVolumeSize",
            target_id = prelude.Integer.id,
        }),
        RepoUpgradeOnBoot = schema.new({
            id = id.from(_N, "RunJobFlowInput", "RepoUpgradeOnBoot"),
            type = "string",
            name = "RepoUpgradeOnBoot",
            target_id = prelude.String.id,
        }),
        KerberosAttributes = schema.new({
            id = id.from(_N, "RunJobFlowInput", "KerberosAttributes"),
            type = "structure",
            name = "KerberosAttributes",
            target_id = id.from(_N, "KerberosAttributes"),
            target = M.KerberosAttributes,
        }),
        StepConcurrencyLevel = schema.new({
            id = id.from(_N, "RunJobFlowInput", "StepConcurrencyLevel"),
            type = "integer",
            name = "StepConcurrencyLevel",
            target_id = prelude.Integer.id,
        }),
        ManagedScalingPolicy = schema.new({
            id = id.from(_N, "RunJobFlowInput", "ManagedScalingPolicy"),
            type = "structure",
            name = "ManagedScalingPolicy",
            target_id = id.from(_N, "ManagedScalingPolicy"),
            target = M.ManagedScalingPolicy,
        }),
        PlacementGroupConfigs = schema.new({
            id = id.from(_N, "RunJobFlowInput", "PlacementGroupConfigs"),
            type = "list",
            name = "PlacementGroupConfigs",
            target_id = prelude.Document.id,
            list_member = M.PlacementGroupConfig,
        }),
        AutoTerminationPolicy = schema.new({
            id = id.from(_N, "RunJobFlowInput", "AutoTerminationPolicy"),
            type = "structure",
            name = "AutoTerminationPolicy",
            target_id = id.from(_N, "AutoTerminationPolicy"),
            target = M.AutoTerminationPolicy,
        }),
        OSReleaseLabel = schema.new({
            id = id.from(_N, "RunJobFlowInput", "OSReleaseLabel"),
            type = "string",
            name = "OSReleaseLabel",
            target_id = prelude.String.id,
        }),
        EbsRootVolumeIops = schema.new({
            id = id.from(_N, "RunJobFlowInput", "EbsRootVolumeIops"),
            type = "integer",
            name = "EbsRootVolumeIops",
            target_id = prelude.Integer.id,
        }),
        EbsRootVolumeThroughput = schema.new({
            id = id.from(_N, "RunJobFlowInput", "EbsRootVolumeThroughput"),
            type = "integer",
            name = "EbsRootVolumeThroughput",
            target_id = prelude.Integer.id,
        }),
        ExtendedSupport = schema.new({
            id = id.from(_N, "RunJobFlowInput", "ExtendedSupport"),
            type = "boolean",
            name = "ExtendedSupport",
            target_id = prelude.Boolean.id,
        }),
        MonitoringConfiguration = schema.new({
            id = id.from(_N, "RunJobFlowInput", "MonitoringConfiguration"),
            type = "structure",
            name = "MonitoringConfiguration",
            target_id = id.from(_N, "MonitoringConfiguration"),
            target = M.MonitoringConfiguration,
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
