local M = {}

M.ExecutionAction = {
    ACTIVATE = "activate",
    DEACTIVATE = "deactivate",
    POST_RECOVERY = "postRecovery",
}

M.ExecutionState = {
    IN_PROGRESS = "inProgress",
    PAUSED_BY_FAILED_STEP = "pausedByFailedStep",
    PAUSED_BY_OPERATOR = "pausedByOperator",
    COMPLETED = "completed",
    COMPLETED_WITH_EXCEPTIONS = "completedWithExceptions",
    CANCELLED = "canceled",
    PLAN_EXECUTION_TIMED_OUT = "planExecutionTimedOut",
    PENDING_MANUAL_APPROVAL = "pendingManualApproval",
    FAILED = "failed",
    PENDING = "pending",
    COMPLETED_MONITORING_APPLICATION_HEALTH = "completedMonitoringApplicationHealth",
}

M.ExecutionMode = {
    GRACEFUL = "graceful",
    UNGRACEFUL = "ungraceful",
}

M.AbbreviatedExecution = {
    type = "structure",
    id = "AbbreviatedExecution",
    members = {
        planArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        executionId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        version = {
            type = "string",
        },
        updatedAt = {
            type = "timestamp",
        },
        comment = {
            type = "string",
        },
        startTime = {
            type = "timestamp",
            traits = {
                required = true,
            },
        },
        endTime = {
            type = "timestamp",
        },
        mode = {
            type = "string",
            traits = {
                required = true,
            },
        },
        executionState = {
            type = "string",
            traits = {
                required = true,
            },
        },
        executionAction = {
            type = "string",
            traits = {
                required = true,
            },
        },
        executionRegion = {
            type = "string",
            traits = {
                required = true,
            },
        },
        recoveryExecutionId = {
            type = "string",
        },
        actualRecoveryTime = {
            type = "string",
        },
    },
}

M.RecoveryApproach = {
    ACTIVE_ACTIVE = "activeActive",
    ACTIVE_PASSIVE = "activePassive",
}

M.AbbreviatedPlan = {
    type = "structure",
    id = "AbbreviatedPlan",
    members = {
        arn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        owner = {
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
        regions = {
            type = "list",
            member = { type = "string" },
            traits = {
                required = true,
            },
        },
        recoveryApproach = {
            type = "string",
            traits = {
                required = true,
            },
        },
        primaryRegion = {
            type = "string",
        },
        version = {
            type = "string",
        },
        updatedAt = {
            type = "timestamp",
        },
        description = {
            type = "string",
        },
        executionRole = {
            type = "string",
        },
        activePlanExecution = {
            type = "string",
        },
        recoveryTimeObjectiveMinutes = {
            type = "integer",
        },
    },
}

M.AccessDeniedException = {
    type = "structure",
    id = "AccessDeniedException",
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

M.AlarmCondition = {
    RED = "red",
    GREEN = "green",
}

M.AlarmType = {
    APPLICATION_HEALTH = "applicationHealth",
    TRIGGER = "trigger",
}

M.Approval = {
    APPROVE = "approve",
    DECLINE = "decline",
}

M.ApprovePlanExecutionStepInput = {
    type = "structure",
    id = "ApprovePlanExecutionStepInput",
    members = {
        planArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        executionId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        stepName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        approval = {
            type = "string",
            traits = {
                required = true,
            },
        },
        comment = {
            type = "string",
        },
    },
}

M.ApprovePlanExecutionStepOutput = {
    type = "structure",
    id = "ApprovePlanExecutionStepOutput",
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

M.CancelPlanExecutionInput = {
    type = "structure",
    id = "CancelPlanExecutionInput",
    members = {
        planArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        executionId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        comment = {
            type = "string",
        },
    },
}

M.CancelPlanExecutionOutput = {
    type = "structure",
    id = "CancelPlanExecutionOutput",
}

M.GetPlanEvaluationStatusInput = {
    type = "structure",
    id = "GetPlanEvaluationStatusInput",
    members = {
        planArn = {
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

M.EvaluationStatus = {
    PASSED = "passed",
    ACTION_REQUIRED = "actionRequired",
    PENDING_EVALUATION = "pendingEvaluation",
    UNKNOWN = "unknown",
}

M.ResourceWarningStatus = {
    ACTIVE = "active",
    RESOLVED = "resolved",
}

M.MinimalWorkflow = {
    type = "structure",
    id = "MinimalWorkflow",
    members = {
        action = {
            type = "string",
        },
        name = {
            type = "string",
        },
    },
}

M.ResourceWarning = {
    type = "structure",
    id = "ResourceWarning",
    members = {
        workflow = M.MinimalWorkflow,
        version = {
            type = "string",
            traits = {
                required = true,
            },
        },
        stepName = {
            type = "string",
        },
        resourceArn = {
            type = "string",
        },
        warningStatus = {
            type = "string",
            traits = {
                required = true,
            },
        },
        warningUpdatedTime = {
            type = "timestamp",
            traits = {
                required = true,
            },
        },
        warningMessage = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.GetPlanEvaluationStatusOutput = {
    type = "structure",
    id = "GetPlanEvaluationStatusOutput",
    members = {
        planArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        lastEvaluationTime = {
            type = "timestamp",
        },
        lastEvaluatedVersion = {
            type = "string",
        },
        region = {
            type = "string",
        },
        evaluationState = {
            type = "string",
        },
        warnings = {
            type = "list",
            member = M.ResourceWarning,
        },
        nextToken = {
            type = "string",
        },
    },
}

M.GetPlanExecutionInput = {
    type = "structure",
    id = "GetPlanExecutionInput",
    members = {
        planArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        executionId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        maxResults = {
            type = "integer",
            traits = {
                default = 100,
            },
        },
        nextToken = {
            type = "string",
        },
    },
}

M.FailedReportErrorCode = {
    INSUFFICIENT_PERMISSIONS = "insufficientPermissions",
    INVALID_RESOURCE = "invalidResource",
    CONFIGURATION_ERROR = "configurationError",
}

M.FailedReportOutput = {
    type = "structure",
    id = "FailedReportOutput",
    members = {
        errorCode = {
            type = "string",
        },
        errorMessage = {
            type = "string",
        },
    },
}

M.S3ReportOutput = {
    type = "structure",
    id = "S3ReportOutput",
    members = {
        s3ObjectKey = {
            type = "string",
        },
    },
}

M.ReportOutput = {
    type = "union",
    id = "ReportOutput",
    members = {
        s3ReportOutput = M.S3ReportOutput,
        failedReportOutput = M.FailedReportOutput,
    },
}

M.GeneratedReport = {
    type = "structure",
    id = "GeneratedReport",
    members = {
        reportGenerationTime = {
            type = "timestamp",
        },
        reportOutput = M.ReportOutput,
    },
}

M.AssociatedAlarm = {
    type = "structure",
    id = "AssociatedAlarm",
    members = {
        crossAccountRole = {
            type = "string",
        },
        externalId = {
            type = "string",
        },
        resourceIdentifier = {
            type = "string",
            traits = {
                required = true,
            },
        },
        alarmType = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.S3ReportOutputConfiguration = {
    type = "structure",
    id = "S3ReportOutputConfiguration",
    members = {
        bucketPath = {
            type = "string",
        },
        bucketOwner = {
            type = "string",
        },
    },
}

M.ReportOutputConfiguration = {
    type = "union",
    id = "ReportOutputConfiguration",
    members = {
        s3Configuration = M.S3ReportOutputConfiguration,
    },
}

M.ReportConfiguration = {
    type = "structure",
    id = "ReportConfiguration",
    members = {
        reportOutput = {
            type = "list",
            member = M.ReportOutputConfiguration,
        },
    },
}

M.WorkflowTargetAction = {
    ACTIVATE = "activate",
    DEACTIVATE = "deactivate",
    POST_RECOVERY = "postRecovery",
}

M.TriggerCondition = {
    type = "structure",
    id = "TriggerCondition",
    members = {
        associatedAlarmName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        condition = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.Trigger = {
    type = "structure",
    id = "Trigger",
    members = {
        description = {
            type = "string",
        },
        targetRegion = {
            type = "string",
            traits = {
                required = true,
            },
        },
        action = {
            type = "string",
            traits = {
                required = true,
            },
        },
        conditions = {
            type = "list",
            member = M.TriggerCondition,
            traits = {
                required = true,
            },
        },
        minDelayMinutesBetweenExecutions = {
            type = "integer",
            traits = {
                required = true,
            },
        },
    },
}

M.RoutingControlStateChange = {
    ON = "On",
    OFF = "Off",
}

M.ArcRoutingControlState = {
    type = "structure",
    id = "ArcRoutingControlState",
    members = {
        routingControlArn = {
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

M.ArcRoutingControlConfiguration = {
    type = "structure",
    id = "ArcRoutingControlConfiguration",
    members = {
        timeoutMinutes = {
            type = "integer",
            traits = {
                default = 60,
            },
        },
        crossAccountRole = {
            type = "string",
        },
        externalId = {
            type = "string",
        },
        regionAndRoutingControls = {
            type = "map",
            key = { type = "string" },
            value = { type = "list" },
            traits = {
                required = true,
            },
        },
    },
}

M.Lambdas = {
    type = "structure",
    id = "Lambdas",
    members = {
        crossAccountRole = {
            type = "string",
        },
        externalId = {
            type = "string",
        },
        arn = {
            type = "string",
        },
    },
}

M.RegionToRunIn = {
    ACTIVATING_REGION = "activatingRegion",
    DEACTIVATING_REGION = "deactivatingRegion",
    ACTIVE_REGION = "activeRegion",
    INACTIVE_REGION = "inactiveRegion",
}

M.LambdaUngracefulBehavior = {
    SKIP = "skip",
}

M.LambdaUngraceful = {
    type = "structure",
    id = "LambdaUngraceful",
    members = {
        behavior = {
            type = "string",
            traits = {
                default = "skip",
            },
        },
    },
}

M.CustomActionLambdaConfiguration = {
    type = "structure",
    id = "CustomActionLambdaConfiguration",
    members = {
        timeoutMinutes = {
            type = "integer",
            traits = {
                default = 60,
            },
        },
        lambdas = {
            type = "list",
            member = M.Lambdas,
            traits = {
                required = true,
            },
        },
        retryIntervalMinutes = {
            type = "float",
            traits = {
                required = true,
            },
        },
        regionToRun = {
            type = "string",
            traits = {
                required = true,
            },
        },
        ungraceful = M.LambdaUngraceful,
    },
}

M.DocumentDbDefaultBehavior = {
    SWITCHOVER_ONLY = "switchoverOnly",
    FAILOVER = "failover",
}

M.DocumentDbUngracefulBehavior = {
    FAILOVER = "failover",
}

M.DocumentDbUngraceful = {
    type = "structure",
    id = "DocumentDbUngraceful",
    members = {
        ungraceful = {
            type = "string",
        },
    },
}

M.DocumentDbConfiguration = {
    type = "structure",
    id = "DocumentDbConfiguration",
    members = {
        timeoutMinutes = {
            type = "integer",
            traits = {
                default = 60,
            },
        },
        crossAccountRole = {
            type = "string",
        },
        externalId = {
            type = "string",
        },
        behavior = {
            type = "string",
            traits = {
                default = "switchoverOnly",
                required = true,
            },
        },
        ungraceful = M.DocumentDbUngraceful,
        globalClusterIdentifier = {
            type = "string",
            traits = {
                required = true,
            },
        },
        databaseClusterArns = {
            type = "list",
            member = { type = "string" },
            traits = {
                required = true,
            },
        },
    },
}

M.Asg = {
    type = "structure",
    id = "Asg",
    members = {
        crossAccountRole = {
            type = "string",
        },
        externalId = {
            type = "string",
        },
        arn = {
            type = "string",
        },
    },
}

M.Ec2AsgCapacityMonitoringApproach = {
    SAMPLED_MAX_IN_LAST_24_HOURS = "sampledMaxInLast24Hours",
    AUTOSCALING_MAX_IN_LAST_24_HOURS = "autoscalingMaxInLast24Hours",
}

M.Ec2Ungraceful = {
    type = "structure",
    id = "Ec2Ungraceful",
    members = {
        minimumSuccessPercentage = {
            type = "integer",
            traits = {
                required = true,
            },
        },
    },
}

M.Ec2AsgCapacityIncreaseConfiguration = {
    type = "structure",
    id = "Ec2AsgCapacityIncreaseConfiguration",
    members = {
        timeoutMinutes = {
            type = "integer",
            traits = {
                default = 60,
            },
        },
        asgs = {
            type = "list",
            member = M.Asg,
            traits = {
                required = true,
            },
        },
        ungraceful = M.Ec2Ungraceful,
        targetPercent = {
            type = "integer",
            traits = {
                default = 100,
            },
        },
        capacityMonitoringApproach = {
            type = "string",
            traits = {
                default = "sampledMaxInLast24Hours",
            },
        },
    },
}

M.EcsCapacityMonitoringApproach = {
    SAMPLED_MAX_IN_LAST_24_HOURS = "sampledMaxInLast24Hours",
    CONTAINER_INSIGHTS_MAX_IN_LAST_24_HOURS = "containerInsightsMaxInLast24Hours",
}

M.Service = {
    type = "structure",
    id = "Service",
    members = {
        crossAccountRole = {
            type = "string",
        },
        externalId = {
            type = "string",
        },
        clusterArn = {
            type = "string",
        },
        serviceArn = {
            type = "string",
        },
    },
}

M.EcsUngraceful = {
    type = "structure",
    id = "EcsUngraceful",
    members = {
        minimumSuccessPercentage = {
            type = "integer",
            traits = {
                required = true,
            },
        },
    },
}

M.EcsCapacityIncreaseConfiguration = {
    type = "structure",
    id = "EcsCapacityIncreaseConfiguration",
    members = {
        timeoutMinutes = {
            type = "integer",
            traits = {
                default = 60,
            },
        },
        services = {
            type = "list",
            member = M.Service,
            traits = {
                required = true,
            },
        },
        ungraceful = M.EcsUngraceful,
        targetPercent = {
            type = "integer",
            traits = {
                default = 100,
            },
        },
        capacityMonitoringApproach = {
            type = "string",
            traits = {
                default = "sampledMaxInLast24Hours",
            },
        },
    },
}

M.EksCapacityMonitoringApproach = {
    SAMPLED_MAX_IN_LAST_24_HOURS = "sampledMaxInLast24Hours",
}

M.EksCluster = {
    type = "structure",
    id = "EksCluster",
    members = {
        crossAccountRole = {
            type = "string",
        },
        externalId = {
            type = "string",
        },
        clusterArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.KubernetesResourceType = {
    type = "structure",
    id = "KubernetesResourceType",
    members = {
        apiVersion = {
            type = "string",
            traits = {
                required = true,
            },
        },
        kind = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.KubernetesScalingResource = {
    type = "structure",
    id = "KubernetesScalingResource",
    members = {
        namespace = {
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
        hpaName = {
            type = "string",
        },
    },
}

M.EksResourceScalingUngraceful = {
    type = "structure",
    id = "EksResourceScalingUngraceful",
    members = {
        minimumSuccessPercentage = {
            type = "integer",
            traits = {
                required = true,
            },
        },
    },
}

M.EksResourceScalingConfiguration = {
    type = "structure",
    id = "EksResourceScalingConfiguration",
    members = {
        timeoutMinutes = {
            type = "integer",
            traits = {
                default = 60,
            },
        },
        kubernetesResourceType = setmetatable({ traits = {
            required = true,
        } }, { __index = M.KubernetesResourceType }),
        scalingResources = {
            type = "list",
            member = { type = "map" },
        },
        eksClusters = {
            type = "list",
            member = M.EksCluster,
        },
        ungraceful = M.EksResourceScalingUngraceful,
        targetPercent = {
            type = "integer",
            traits = {
                default = 100,
            },
        },
        capacityMonitoringApproach = {
            type = "string",
            traits = {
                default = "sampledMaxInLast24Hours",
            },
        },
    },
}

M.ExecutionApprovalConfiguration = {
    type = "structure",
    id = "ExecutionApprovalConfiguration",
    members = {
        timeoutMinutes = {
            type = "integer",
            traits = {
                default = 60,
            },
        },
        approvalRole = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.GlobalAuroraDefaultBehavior = {
    SWITCHOVER_ONLY = "switchoverOnly",
    FAILOVER = "failover",
}

M.GlobalAuroraUngracefulBehavior = {
    FAILOVER = "failover",
}

M.GlobalAuroraUngraceful = {
    type = "structure",
    id = "GlobalAuroraUngraceful",
    members = {
        ungraceful = {
            type = "string",
        },
    },
}

M.GlobalAuroraConfiguration = {
    type = "structure",
    id = "GlobalAuroraConfiguration",
    members = {
        timeoutMinutes = {
            type = "integer",
            traits = {
                default = 60,
            },
        },
        crossAccountRole = {
            type = "string",
        },
        externalId = {
            type = "string",
        },
        behavior = {
            type = "string",
            traits = {
                default = "switchoverOnly",
                required = true,
            },
        },
        ungraceful = M.GlobalAuroraUngraceful,
        globalClusterIdentifier = {
            type = "string",
            traits = {
                required = true,
            },
        },
        databaseClusterArns = {
            type = "list",
            member = { type = "string" },
            traits = {
                required = true,
            },
        },
    },
}

M.RdsCreateCrossRegionReplicaConfiguration = {
    type = "structure",
    id = "RdsCreateCrossRegionReplicaConfiguration",
    members = {
        timeoutMinutes = {
            type = "integer",
            traits = {
                default = 60,
            },
        },
        crossAccountRole = {
            type = "string",
        },
        externalId = {
            type = "string",
        },
        dbInstanceArnMap = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
            traits = {
                required = true,
            },
        },
    },
}

M.RdsPromoteReadReplicaConfiguration = {
    type = "structure",
    id = "RdsPromoteReadReplicaConfiguration",
    members = {
        timeoutMinutes = {
            type = "integer",
            traits = {
                default = 60,
            },
        },
        crossAccountRole = {
            type = "string",
        },
        externalId = {
            type = "string",
        },
        dbInstanceArnMap = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
            traits = {
                required = true,
            },
        },
    },
}

M.RegionSwitchPlanConfiguration = {
    type = "structure",
    id = "RegionSwitchPlanConfiguration",
    members = {
        crossAccountRole = {
            type = "string",
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
    },
}

M.Route53ResourceRecordSet = {
    type = "structure",
    id = "Route53ResourceRecordSet",
    members = {
        recordSetIdentifier = {
            type = "string",
        },
        region = {
            type = "string",
        },
    },
}

M.Route53HealthCheckConfiguration = {
    type = "structure",
    id = "Route53HealthCheckConfiguration",
    members = {
        timeoutMinutes = {
            type = "integer",
            traits = {
                default = 60,
            },
        },
        crossAccountRole = {
            type = "string",
        },
        externalId = {
            type = "string",
        },
        hostedZoneId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        recordName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        recordSets = {
            type = "list",
            member = M.Route53ResourceRecordSet,
        },
    },
}

M.ExecutionBlockType = {
    CUSTOM_ACTION_LAMBDA = "CustomActionLambda",
    EXECUTION_APPROVAL = "ManualApproval",
    AURORA = "AuroraGlobalDatabase",
    EC2_ASG = "EC2AutoScaling",
    ROUTING_CONTROL = "ARCRoutingControl",
    REGION_SWITCH = "ARCRegionSwitchPlan",
    PARALLEL = "Parallel",
    ECS = "ECSServiceScaling",
    EKS_RESOURCE_SCALING = "EKSResourceScaling",
    ROUTE53_HEALTH_CHECK = "Route53HealthCheck",
    DOCUMENTDB = "DocumentDb",
    RDS_PROMOTE_READ_REPLICA = "RdsPromoteReadReplica",
    RDS_CREATE_CROSS_REGION_REPLICA = "RdsCreateCrossRegionReplica",
}

M.StepStatus = {
    NOT_STARTED = "notStarted",
    RUNNING = "running",
    FAILED = "failed",
    COMPLETED = "completed",
    CANCELLED = "canceled",
    SKIPPED = "skipped",
    PENDING_APPROVAL = "pendingApproval",
}

M.StepState = {
    type = "structure",
    id = "StepState",
    members = {
        name = {
            type = "string",
        },
        status = {
            type = "string",
        },
        startTime = {
            type = "timestamp",
        },
        endTime = {
            type = "timestamp",
        },
        stepMode = {
            type = "string",
        },
    },
}

M.GetPlanInRegionInput = {
    type = "structure",
    id = "GetPlanInRegionInput",
    members = {
        arn = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.ListPlanExecutionEventsInput = {
    type = "structure",
    id = "ListPlanExecutionEventsInput",
    members = {
        planArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        executionId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        maxResults = {
            type = "integer",
            traits = {
                default = 100,
            },
        },
        nextToken = {
            type = "string",
        },
        name = {
            type = "string",
        },
    },
}

M.ExecutionEventType = {
    UNKNOWN = "unknown",
    EXECUTION_PENDING = "executionPending",
    EXECUTION_STARTED = "executionStarted",
    EXECUTION_SUCCEEDED = "executionSucceeded",
    EXECUTION_FAILED = "executionFailed",
    EXECUTION_PAUSING = "executionPausing",
    EXECUTION_PAUSED = "executionPaused",
    EXECUTION_CANCELING = "executionCanceling",
    EXECUTION_CANCELED = "executionCanceled",
    EXECUTION_PENDING_APPROVAL = "executionPendingApproval",
    EXECUTION_BEHAVIOR_CHANGED_TO_UNGRACEFUL = "executionBehaviorChangedToUngraceful",
    EXECUTION_BEHAVIOR_CHANGED_TO_GRACEFUL = "executionBehaviorChangedToGraceful",
    EXECUTION_PENDING_CHILD_PLAN_MANUAL_APPROVAL = "executionPendingChildPlanManualApproval",
    EXECUTION_SUCCESS_MONITORING_APPLICATION_HEALTH = "executionSuccessMonitoringApplicationHealth",
    STEP_STARTED = "stepStarted",
    STEP_UPDATE = "stepUpdate",
    STEP_SUCCEEDED = "stepSucceeded",
    STEP_FAILED = "stepFailed",
    STEP_SKIPPED = "stepSkipped",
    STEP_PAUSED_BY_ERROR = "stepPausedByError",
    STEP_PAUSED_BY_OPERATOR = "stepPausedByOperator",
    STEP_CANCELED = "stepCanceled",
    STEP_PENDING_APPROVAL = "stepPendingApproval",
    STEP_EXECUTION_BEHAVIOR_CHANGED_TO_UNGRACEFUL = "stepExecutionBehaviorChangedToUngraceful",
    STEP_PENDING_APPLICATION_HEALTH_MONITOR = "stepPendingApplicationHealthMonitor",
    PLAN_EVALUATION_WARNING = "planEvaluationWarning",
}

M.ExecutionEvent = {
    type = "structure",
    id = "ExecutionEvent",
    members = {
        timestamp = {
            type = "timestamp",
        },
        type = {
            type = "string",
        },
        stepName = {
            type = "string",
        },
        executionBlockType = {
            type = "string",
        },
        resources = {
            type = "list",
            member = { type = "string" },
        },
        error = {
            type = "string",
        },
        description = {
            type = "string",
        },
        eventId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        previousEventId = {
            type = "string",
        },
    },
}

M.ListPlanExecutionEventsOutput = {
    type = "structure",
    id = "ListPlanExecutionEventsOutput",
    members = {
        items = {
            type = "list",
            member = M.ExecutionEvent,
        },
        nextToken = {
            type = "string",
        },
    },
}

M.ListPlanExecutionsInput = {
    type = "structure",
    id = "ListPlanExecutionsInput",
    members = {
        planArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        maxResults = {
            type = "integer",
            traits = {
                default = 100,
            },
        },
        nextToken = {
            type = "string",
        },
        state = {
            type = "string",
        },
    },
}

M.ListPlanExecutionsOutput = {
    type = "structure",
    id = "ListPlanExecutionsOutput",
    members = {
        items = {
            type = "list",
            member = M.AbbreviatedExecution,
        },
        nextToken = {
            type = "string",
        },
    },
}

M.ListPlansInRegionInput = {
    type = "structure",
    id = "ListPlansInRegionInput",
    members = {
        maxResults = {
            type = "integer",
        },
        nextToken = {
            type = "string",
        },
    },
}

M.ListPlansInRegionOutput = {
    type = "structure",
    id = "ListPlansInRegionOutput",
    members = {
        plans = {
            type = "list",
            member = M.AbbreviatedPlan,
        },
        nextToken = {
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
            traits = {
                required = true,
            },
        },
    },
}

M.ListRoute53HealthChecksInput = {
    type = "structure",
    id = "ListRoute53HealthChecksInput",
    members = {
        arn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        hostedZoneId = {
            type = "string",
        },
        recordName = {
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

M.Route53HealthCheckStatus = {
    HEALTHY = "healthy",
    UNHEALTHY = "unhealthy",
    UNKNOWN = "unknown",
}

M.Route53HealthCheck = {
    type = "structure",
    id = "Route53HealthCheck",
    members = {
        hostedZoneId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        recordName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        healthCheckId = {
            type = "string",
        },
        status = {
            type = "string",
        },
        region = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.ListRoute53HealthChecksOutput = {
    type = "structure",
    id = "ListRoute53HealthChecksOutput",
    members = {
        healthChecks = {
            type = "list",
            member = M.Route53HealthCheck,
        },
        nextToken = {
            type = "string",
        },
    },
}

M.IllegalArgumentException = {
    type = "structure",
    id = "IllegalArgumentException",
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

M.ListRoute53HealthChecksInRegionInput = {
    type = "structure",
    id = "ListRoute53HealthChecksInRegionInput",
    members = {
        arn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        hostedZoneId = {
            type = "string",
        },
        recordName = {
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

M.ListRoute53HealthChecksInRegionOutput = {
    type = "structure",
    id = "ListRoute53HealthChecksInRegionOutput",
    members = {
        healthChecks = {
            type = "list",
            member = M.Route53HealthCheck,
        },
        nextToken = {
            type = "string",
        },
    },
}

M.DeletePlanInput = {
    type = "structure",
    id = "DeletePlanInput",
    members = {
        arn = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.DeletePlanOutput = {
    type = "structure",
    id = "DeletePlanOutput",
}

M.IllegalStateException = {
    type = "structure",
    id = "IllegalStateException",
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

M.GetPlanInput = {
    type = "structure",
    id = "GetPlanInput",
    members = {
        arn = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.ListPlansInput = {
    type = "structure",
    id = "ListPlansInput",
    members = {
        maxResults = {
            type = "integer",
        },
        nextToken = {
            type = "string",
        },
    },
}

M.ListPlansOutput = {
    type = "structure",
    id = "ListPlansOutput",
    members = {
        plans = {
            type = "list",
            member = M.AbbreviatedPlan,
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
        arn = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.ListTagsForResourceOutput = {
    type = "structure",
    id = "ListTagsForResourceOutput",
    members = {
        resourceTags = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
    },
}

M.TagResourceInput = {
    type = "structure",
    id = "TagResourceInput",
    members = {
        arn = {
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

M.UntagResourceInput = {
    type = "structure",
    id = "UntagResourceInput",
    members = {
        arn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        resourceTagKeys = {
            type = "list",
            member = { type = "string" },
            traits = {
                required = true,
            },
        },
    },
}

M.UntagResourceOutput = {
    type = "structure",
    id = "UntagResourceOutput",
}

M.StartPlanExecutionInput = {
    type = "structure",
    id = "StartPlanExecutionInput",
    members = {
        planArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        targetRegion = {
            type = "string",
            traits = {
                required = true,
            },
        },
        action = {
            type = "string",
            traits = {
                required = true,
            },
        },
        mode = {
            type = "string",
            traits = {
                default = "graceful",
            },
        },
        comment = {
            type = "string",
        },
        latestVersion = {
            type = "string",
        },
        recoveryExecutionId = {
            type = "string",
        },
    },
}

M.StartPlanExecutionOutput = {
    type = "structure",
    id = "StartPlanExecutionOutput",
    members = {
        executionId = {
            type = "string",
        },
        plan = {
            type = "string",
        },
        planVersion = {
            type = "string",
        },
        activateRegion = {
            type = "string",
        },
        deactivateRegion = {
            type = "string",
        },
    },
}

M.UpdatePlanExecutionAction = {
    SWITCH_TO_GRACEFUL = "switchToGraceful",
    SWITCH_TO_UNGRACEFUL = "switchToUngraceful",
    PAUSE = "pause",
    RESUME = "resume",
}

M.UpdatePlanExecutionInput = {
    type = "structure",
    id = "UpdatePlanExecutionInput",
    members = {
        planArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        executionId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        action = {
            type = "string",
            traits = {
                required = true,
            },
        },
        comment = {
            type = "string",
        },
    },
}

M.UpdatePlanExecutionOutput = {
    type = "structure",
    id = "UpdatePlanExecutionOutput",
}

M.UpdatePlanExecutionStepAction = {
    SWITCH_TO_UNGRACEFUL = "switchToUngraceful",
    SKIP = "skip",
}

M.UpdatePlanExecutionStepInput = {
    type = "structure",
    id = "UpdatePlanExecutionStepInput",
    members = {
        planArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        executionId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        comment = {
            type = "string",
            traits = {
                required = true,
            },
        },
        stepName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        actionToTake = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.UpdatePlanExecutionStepOutput = {
    type = "structure",
    id = "UpdatePlanExecutionStepOutput",
}

M.ExecutionBlockConfiguration = {
    type = "union",
    id = "ExecutionBlockConfiguration",
    members = {
        customActionLambdaConfig = M.CustomActionLambdaConfiguration,
        ec2AsgCapacityIncreaseConfig = M.Ec2AsgCapacityIncreaseConfiguration,
        executionApprovalConfig = M.ExecutionApprovalConfiguration,
        arcRoutingControlConfig = M.ArcRoutingControlConfiguration,
        globalAuroraConfig = M.GlobalAuroraConfiguration,
        parallelConfig = M.ParallelExecutionBlockConfiguration,
        regionSwitchPlanConfig = M.RegionSwitchPlanConfiguration,
        ecsCapacityIncreaseConfig = M.EcsCapacityIncreaseConfiguration,
        eksResourceScalingConfig = M.EksResourceScalingConfiguration,
        route53HealthCheckConfig = M.Route53HealthCheckConfiguration,
        documentDbConfig = M.DocumentDbConfiguration,
        rdsPromoteReadReplicaConfig = M.RdsPromoteReadReplicaConfiguration,
        rdsCreateCrossRegionReadReplicaConfig = M.RdsCreateCrossRegionReplicaConfiguration,
    },
}

M.ParallelExecutionBlockConfiguration = {
    type = "structure",
    id = "ParallelExecutionBlockConfiguration",
    members = {
        steps = {
            type = "list",
            member = M.Step,
            traits = {
                required = true,
            },
        },
    },
}

M.Step = {
    type = "structure",
    id = "Step",
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
        executionBlockConfiguration = setmetatable({ traits = {
            required = true,
        } }, { __index = M.ExecutionBlockConfiguration }),
        executionBlockType = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.Workflow = {
    type = "structure",
    id = "Workflow",
    members = {
        steps = {
            type = "list",
            member = M.Step,
        },
        workflowTargetAction = {
            type = "string",
            traits = {
                required = true,
            },
        },
        workflowTargetRegion = {
            type = "string",
        },
        workflowDescription = {
            type = "string",
        },
    },
}

M.CreatePlanInput = {
    type = "structure",
    id = "CreatePlanInput",
    members = {
        description = {
            type = "string",
        },
        workflows = {
            type = "list",
            member = M.Workflow,
            traits = {
                required = true,
            },
        },
        executionRole = {
            type = "string",
            traits = {
                required = true,
            },
        },
        recoveryTimeObjectiveMinutes = {
            type = "integer",
        },
        associatedAlarms = {
            type = "map",
            key = { type = "string" },
            value = M.AssociatedAlarm,
        },
        triggers = {
            type = "list",
            member = M.Trigger,
        },
        reportConfiguration = M.ReportConfiguration,
        name = {
            type = "string",
            traits = {
                required = true,
            },
        },
        regions = {
            type = "list",
            member = { type = "string" },
            traits = {
                required = true,
            },
        },
        recoveryApproach = {
            type = "string",
            traits = {
                required = true,
            },
        },
        primaryRegion = {
            type = "string",
        },
        tags = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
    },
}

M.Plan = {
    type = "structure",
    id = "Plan",
    members = {
        arn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        description = {
            type = "string",
        },
        workflows = {
            type = "list",
            member = M.Workflow,
            traits = {
                required = true,
            },
        },
        executionRole = {
            type = "string",
            traits = {
                required = true,
            },
        },
        recoveryTimeObjectiveMinutes = {
            type = "integer",
        },
        associatedAlarms = {
            type = "map",
            key = { type = "string" },
            value = M.AssociatedAlarm,
        },
        triggers = {
            type = "list",
            member = M.Trigger,
        },
        reportConfiguration = M.ReportConfiguration,
        name = {
            type = "string",
            traits = {
                required = true,
            },
        },
        regions = {
            type = "list",
            member = { type = "string" },
            traits = {
                required = true,
            },
        },
        recoveryApproach = {
            type = "string",
            traits = {
                required = true,
            },
        },
        primaryRegion = {
            type = "string",
        },
        owner = {
            type = "string",
            traits = {
                required = true,
            },
        },
        version = {
            type = "string",
        },
        updatedAt = {
            type = "timestamp",
        },
    },
}

M.UpdatePlanInput = {
    type = "structure",
    id = "UpdatePlanInput",
    members = {
        arn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        description = {
            type = "string",
        },
        workflows = {
            type = "list",
            member = M.Workflow,
            traits = {
                required = true,
            },
        },
        executionRole = {
            type = "string",
            traits = {
                required = true,
            },
        },
        recoveryTimeObjectiveMinutes = {
            type = "integer",
        },
        associatedAlarms = {
            type = "map",
            key = { type = "string" },
            value = M.AssociatedAlarm,
        },
        triggers = {
            type = "list",
            member = M.Trigger,
        },
        reportConfiguration = M.ReportConfiguration,
    },
}

M.CreatePlanOutput = {
    type = "structure",
    id = "CreatePlanOutput",
    members = {
        plan = M.Plan,
    },
}

M.GetPlanExecutionOutput = {
    type = "structure",
    id = "GetPlanExecutionOutput",
    members = {
        planArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        executionId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        version = {
            type = "string",
        },
        updatedAt = {
            type = "timestamp",
        },
        comment = {
            type = "string",
        },
        startTime = {
            type = "timestamp",
            traits = {
                required = true,
            },
        },
        endTime = {
            type = "timestamp",
        },
        mode = {
            type = "string",
            traits = {
                required = true,
            },
        },
        executionState = {
            type = "string",
            traits = {
                required = true,
            },
        },
        executionAction = {
            type = "string",
            traits = {
                required = true,
            },
        },
        executionRegion = {
            type = "string",
            traits = {
                required = true,
            },
        },
        recoveryExecutionId = {
            type = "string",
        },
        stepStates = {
            type = "list",
            member = M.StepState,
        },
        plan = M.Plan,
        actualRecoveryTime = {
            type = "string",
        },
        generatedReportDetails = {
            type = "list",
            member = M.GeneratedReport,
        },
        nextToken = {
            type = "string",
        },
    },
}

M.GetPlanInRegionOutput = {
    type = "structure",
    id = "GetPlanInRegionOutput",
    members = {
        plan = M.Plan,
    },
}

M.GetPlanOutput = {
    type = "structure",
    id = "GetPlanOutput",
    members = {
        plan = M.Plan,
    },
}

M.UpdatePlanOutput = {
    type = "structure",
    id = "UpdatePlanOutput",
    members = {
        plan = M.Plan,
    },
}

return M
