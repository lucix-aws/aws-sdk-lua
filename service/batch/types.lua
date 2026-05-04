local M = {}

M.ArrayJobDependency = {
    N_TO_N = "N_TO_N",
    SEQUENTIAL = "SEQUENTIAL",
}

M.ArrayProperties = {
    type = "structure",
    members = {
        size = {
            type = "number",
        },
    },
}

M.ArrayPropertiesDetail = {
    type = "structure",
    members = {
        statusSummary = {
            type = "map",
            key_type = "string",
            value_type = "number",
        },
        statusSummaryLastUpdatedAt = {
            type = "number",
        },
        size = {
            type = "number",
        },
        index = {
            type = "number",
        },
    },
}

M.ArrayPropertiesSummary = {
    type = "structure",
    members = {
        size = {
            type = "number",
        },
        index = {
            type = "number",
        },
        statusSummary = {
            type = "map",
            key_type = "string",
            value_type = "number",
        },
        statusSummaryLastUpdatedAt = {
            type = "number",
        },
    },
}

M.AssignPublicIp = {
    ENABLED = "ENABLED",
    DISABLED = "DISABLED",
}

M.NetworkInterface = {
    type = "structure",
    members = {
        attachmentId = {
            type = "string",
        },
        ipv6Address = {
            type = "string",
        },
        privateIpv4Address = {
            type = "string",
        },
    },
}

M.AttemptContainerDetail = {
    type = "structure",
    members = {
        containerInstanceArn = {
            type = "string",
        },
        taskArn = {
            type = "string",
        },
        exitCode = {
            type = "number",
        },
        reason = {
            type = "string",
        },
        logStreamName = {
            type = "string",
        },
        networkInterfaces = {
            type = "list",
            member_type = "structure",
        },
    },
}

M.AttemptTaskContainerDetails = {
    type = "structure",
    members = {
        exitCode = {
            type = "number",
        },
        name = {
            type = "string",
        },
        reason = {
            type = "string",
        },
        logStreamName = {
            type = "string",
        },
        networkInterfaces = {
            type = "list",
            member_type = "structure",
        },
    },
}

M.AttemptEcsTaskDetails = {
    type = "structure",
    members = {
        containerInstanceArn = {
            type = "string",
        },
        taskArn = {
            type = "string",
        },
        containers = {
            type = "list",
            member_type = "structure",
        },
    },
}

M.AttemptDetail = {
    type = "structure",
    members = {
        container = {
            type = "structure",
        },
        startedAt = {
            type = "number",
        },
        stoppedAt = {
            type = "number",
        },
        statusReason = {
            type = "string",
        },
        taskProperties = {
            type = "list",
            member_type = "structure",
        },
    },
}

M.CancelJobInput = {
    type = "structure",
    members = {
        jobId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        reason = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.CancelJobOutput = {
    type = "structure",
}

M.ClientException = {
    type = "structure",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.ServerException = {
    type = "structure",
    error = "server",
    members = {
        message = {
            type = "string",
        },
    },
}

M.CRAllocationStrategy = {
    BEST_FIT = "BEST_FIT",
    BEST_FIT_PROGRESSIVE = "BEST_FIT_PROGRESSIVE",
    SPOT_CAPACITY_OPTIMIZED = "SPOT_CAPACITY_OPTIMIZED",
    SPOT_PRICE_CAPACITY_OPTIMIZED = "SPOT_PRICE_CAPACITY_OPTIMIZED",
}

M.Ec2Configuration = {
    type = "structure",
    members = {
        imageType = {
            type = "string",
            traits = {
                required = true,
            },
        },
        imageIdOverride = {
            type = "string",
        },
        batchImageStatus = {
            type = "string",
        },
        imageKubernetesVersion = {
            type = "string",
        },
    },
}

M.UserdataType = {
    EKS_BOOTSTRAP_SH = "EKS_BOOTSTRAP_SH",
    EKS_NODEADM = "EKS_NODEADM",
}

M.LaunchTemplateSpecificationOverride = {
    type = "structure",
    members = {
        launchTemplateId = {
            type = "string",
        },
        launchTemplateName = {
            type = "string",
        },
        version = {
            type = "string",
        },
        targetInstanceTypes = {
            type = "list",
            member_type = "string",
        },
        userdataType = {
            type = "string",
        },
    },
}

M.LaunchTemplateSpecification = {
    type = "structure",
    members = {
        launchTemplateId = {
            type = "string",
        },
        launchTemplateName = {
            type = "string",
        },
        version = {
            type = "string",
        },
        overrides = {
            type = "list",
            member_type = "structure",
        },
        userdataType = {
            type = "string",
        },
    },
}

M.ComputeScalingPolicy = {
    type = "structure",
    members = {
        minScaleDownDelayMinutes = {
            type = "number",
        },
    },
}

M.CRType = {
    EC2 = "EC2",
    SPOT = "SPOT",
    FARGATE = "FARGATE",
    FARGATE_SPOT = "FARGATE_SPOT",
}

M.ComputeResource = {
    type = "structure",
    members = {
        type = {
            type = "string",
            traits = {
                required = true,
            },
        },
        allocationStrategy = {
            type = "string",
        },
        minvCpus = {
            type = "number",
        },
        maxvCpus = {
            type = "number",
            traits = {
                required = true,
            },
        },
        desiredvCpus = {
            type = "number",
        },
        instanceTypes = {
            type = "list",
            member_type = "string",
        },
        imageId = {
            type = "string",
        },
        subnets = {
            type = "list",
            member_type = "string",
            traits = {
                required = true,
            },
        },
        securityGroupIds = {
            type = "list",
            member_type = "string",
        },
        ec2KeyPair = {
            type = "string",
        },
        instanceRole = {
            type = "string",
        },
        tags = {
            type = "map",
            key_type = "string",
            value_type = "string",
        },
        placementGroup = {
            type = "string",
        },
        bidPercentage = {
            type = "number",
        },
        spotIamFleetRole = {
            type = "string",
        },
        launchTemplate = {
            type = "structure",
        },
        ec2Configuration = {
            type = "list",
            member_type = "structure",
        },
        scalingPolicy = {
            type = "structure",
        },
    },
}

M.EksConfiguration = {
    type = "structure",
    members = {
        eksClusterArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        kubernetesNamespace = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.CEState = {
    ENABLED = "ENABLED",
    DISABLED = "DISABLED",
}

M.CEType = {
    MANAGED = "MANAGED",
    UNMANAGED = "UNMANAGED",
}

M.CreateComputeEnvironmentInput = {
    type = "structure",
    members = {
        computeEnvironmentName = {
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
        state = {
            type = "string",
        },
        unmanagedvCpus = {
            type = "number",
        },
        computeResources = {
            type = "structure",
        },
        serviceRole = {
            type = "string",
        },
        tags = {
            type = "map",
            key_type = "string",
            value_type = "string",
        },
        eksConfiguration = {
            type = "structure",
        },
        context = {
            type = "string",
        },
    },
}

M.CreateComputeEnvironmentOutput = {
    type = "structure",
    members = {
        computeEnvironmentName = {
            type = "string",
        },
        computeEnvironmentArn = {
            type = "string",
        },
    },
}

M.CreateConsumableResourceInput = {
    type = "structure",
    members = {
        consumableResourceName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        totalQuantity = {
            type = "number",
        },
        resourceType = {
            type = "string",
        },
        tags = {
            type = "map",
            key_type = "string",
            value_type = "string",
        },
    },
}

M.CreateConsumableResourceOutput = {
    type = "structure",
    members = {
        consumableResourceName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        consumableResourceArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.ComputeEnvironmentOrder = {
    type = "structure",
    members = {
        order = {
            type = "number",
            traits = {
                required = true,
            },
        },
        computeEnvironment = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.JobQueueType = {
    EKS = "EKS",
    ECS = "ECS",
    ECS_FARGATE = "ECS_FARGATE",
    SAGEMAKER_TRAINING = "SAGEMAKER_TRAINING",
}

M.JobStateTimeLimitActionsAction = {
    CANCEL = "CANCEL",
    TERMINATE = "TERMINATE",
}

M.JobStateTimeLimitActionsState = {
    RUNNABLE = "RUNNABLE",
}

M.JobStateTimeLimitAction = {
    type = "structure",
    members = {
        reason = {
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
        maxTimeSeconds = {
            type = "number",
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
    },
}

M.ServiceEnvironmentOrder = {
    type = "structure",
    members = {
        order = {
            type = "number",
            traits = {
                required = true,
            },
        },
        serviceEnvironment = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.JQState = {
    ENABLED = "ENABLED",
    DISABLED = "DISABLED",
}

M.CreateJobQueueInput = {
    type = "structure",
    members = {
        jobQueueName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        state = {
            type = "string",
        },
        schedulingPolicyArn = {
            type = "string",
        },
        priority = {
            type = "number",
            traits = {
                required = true,
            },
        },
        computeEnvironmentOrder = {
            type = "list",
            member_type = "structure",
        },
        serviceEnvironmentOrder = {
            type = "list",
            member_type = "structure",
        },
        jobQueueType = {
            type = "string",
        },
        tags = {
            type = "map",
            key_type = "string",
            value_type = "string",
        },
        jobStateTimeLimitActions = {
            type = "list",
            member_type = "structure",
        },
    },
}

M.CreateJobQueueOutput = {
    type = "structure",
    members = {
        jobQueueName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        jobQueueArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.QuotaShareCapacityLimit = {
    type = "structure",
    members = {
        maxCapacity = {
            type = "number",
            traits = {
                required = true,
            },
        },
        capacityUnit = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.QuotaShareInSharePreemptionState = {
    ENABLED = "ENABLED",
    DISABLED = "DISABLED",
}

M.QuotaSharePreemptionConfiguration = {
    type = "structure",
    members = {
        inSharePreemption = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.QuotaShareResourceSharingStrategy = {
    RESERVE = "RESERVE",
    LEND = "LEND",
    LEND_AND_BORROW = "LEND_AND_BORROW",
}

M.QuotaShareResourceSharingConfiguration = {
    type = "structure",
    members = {
        strategy = {
            type = "string",
            traits = {
                required = true,
            },
        },
        borrowLimit = {
            type = "number",
        },
    },
}

M.QuotaShareState = {
    ENABLED = "ENABLED",
    DISABLED = "DISABLED",
}

M.CreateQuotaShareInput = {
    type = "structure",
    members = {
        quotaShareName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        jobQueue = {
            type = "string",
            traits = {
                required = true,
            },
        },
        capacityLimits = {
            type = "list",
            member_type = "structure",
            traits = {
                required = true,
            },
        },
        resourceSharingConfiguration = {
            type = "structure",
            traits = {
                required = true,
            },
        },
        preemptionConfiguration = {
            type = "structure",
            traits = {
                required = true,
            },
        },
        state = {
            type = "string",
        },
        tags = {
            type = "map",
            key_type = "string",
            value_type = "string",
        },
    },
}

M.CreateQuotaShareOutput = {
    type = "structure",
    members = {
        quotaShareName = {
            type = "string",
        },
        quotaShareArn = {
            type = "string",
        },
    },
}

M.ShareAttributes = {
    type = "structure",
    members = {
        shareIdentifier = {
            type = "string",
            traits = {
                required = true,
            },
        },
        weightFactor = {
            type = "number",
        },
    },
}

M.FairsharePolicy = {
    type = "structure",
    members = {
        shareDecaySeconds = {
            type = "number",
        },
        computeReservation = {
            type = "number",
        },
        shareDistribution = {
            type = "list",
            member_type = "structure",
        },
    },
}

M.QuotaShareIdleResourceAssignmentStrategy = {
    FIFO = "FIFO",
}

M.QuotaSharePolicy = {
    type = "structure",
    members = {
        idleResourceAssignmentStrategy = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.CreateSchedulingPolicyInput = {
    type = "structure",
    members = {
        name = {
            type = "string",
            traits = {
                required = true,
            },
        },
        quotaSharePolicy = {
            type = "structure",
        },
        fairsharePolicy = {
            type = "structure",
        },
        tags = {
            type = "map",
            key_type = "string",
            value_type = "string",
        },
    },
}

M.CreateSchedulingPolicyOutput = {
    type = "structure",
    members = {
        name = {
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
    },
}

M.CapacityLimit = {
    type = "structure",
    members = {
        maxCapacity = {
            type = "number",
        },
        capacityUnit = {
            type = "string",
        },
    },
}

M.ServiceEnvironmentType = {
    SAGEMAKER_TRAINING = "SAGEMAKER_TRAINING",
}

M.ServiceEnvironmentState = {
    ENABLED = "ENABLED",
    DISABLED = "DISABLED",
}

M.CreateServiceEnvironmentInput = {
    type = "structure",
    members = {
        serviceEnvironmentName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        serviceEnvironmentType = {
            type = "string",
            traits = {
                required = true,
            },
        },
        state = {
            type = "string",
        },
        capacityLimits = {
            type = "list",
            member_type = "structure",
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

M.CreateServiceEnvironmentOutput = {
    type = "structure",
    members = {
        serviceEnvironmentName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        serviceEnvironmentArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.DeleteComputeEnvironmentInput = {
    type = "structure",
    members = {
        computeEnvironment = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.DeleteComputeEnvironmentOutput = {
    type = "structure",
}

M.DeleteConsumableResourceInput = {
    type = "structure",
    members = {
        consumableResource = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.DeleteConsumableResourceOutput = {
    type = "structure",
}

M.DeleteJobQueueInput = {
    type = "structure",
    members = {
        jobQueue = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.DeleteJobQueueOutput = {
    type = "structure",
}

M.DeleteQuotaShareInput = {
    type = "structure",
    members = {
        quotaShareArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.DeleteQuotaShareOutput = {
    type = "structure",
}

M.DeleteSchedulingPolicyInput = {
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

M.DeleteSchedulingPolicyOutput = {
    type = "structure",
}

M.DeleteServiceEnvironmentInput = {
    type = "structure",
    members = {
        serviceEnvironment = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.DeleteServiceEnvironmentOutput = {
    type = "structure",
}

M.DeregisterJobDefinitionInput = {
    type = "structure",
    members = {
        jobDefinition = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.DeregisterJobDefinitionOutput = {
    type = "structure",
}

M.DescribeComputeEnvironmentsInput = {
    type = "structure",
    members = {
        computeEnvironments = {
            type = "list",
            member_type = "string",
        },
        maxResults = {
            type = "number",
        },
        nextToken = {
            type = "string",
        },
    },
}

M.OrchestrationType = {
    ECS = "ECS",
    EKS = "EKS",
}

M.CEStatus = {
    CREATING = "CREATING",
    UPDATING = "UPDATING",
    DELETING = "DELETING",
    DELETED = "DELETED",
    VALID = "VALID",
    INVALID = "INVALID",
}

M.UpdatePolicy = {
    type = "structure",
    members = {
        terminateJobsOnUpdate = {
            type = "boolean",
        },
        jobExecutionTimeoutMinutes = {
            type = "number",
        },
    },
}

M.ComputeEnvironmentDetail = {
    type = "structure",
    members = {
        computeEnvironmentName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        computeEnvironmentArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        unmanagedvCpus = {
            type = "number",
        },
        ecsClusterArn = {
            type = "string",
        },
        tags = {
            type = "map",
            key_type = "string",
            value_type = "string",
        },
        type = {
            type = "string",
        },
        state = {
            type = "string",
        },
        status = {
            type = "string",
        },
        statusReason = {
            type = "string",
        },
        computeResources = {
            type = "structure",
        },
        serviceRole = {
            type = "string",
        },
        updatePolicy = {
            type = "structure",
        },
        eksConfiguration = {
            type = "structure",
        },
        containerOrchestrationType = {
            type = "string",
        },
        uuid = {
            type = "string",
        },
        context = {
            type = "string",
        },
    },
}

M.DescribeComputeEnvironmentsOutput = {
    type = "structure",
    members = {
        computeEnvironments = {
            type = "list",
            member_type = "structure",
        },
        nextToken = {
            type = "string",
        },
    },
}

M.DescribeConsumableResourceInput = {
    type = "structure",
    members = {
        consumableResource = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.DescribeConsumableResourceOutput = {
    type = "structure",
    members = {
        consumableResourceName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        consumableResourceArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        totalQuantity = {
            type = "number",
        },
        inUseQuantity = {
            type = "number",
        },
        availableQuantity = {
            type = "number",
        },
        resourceType = {
            type = "string",
        },
        createdAt = {
            type = "number",
        },
        tags = {
            type = "map",
            key_type = "string",
            value_type = "string",
        },
    },
}

M.DescribeJobDefinitionsInput = {
    type = "structure",
    members = {
        jobDefinitions = {
            type = "list",
            member_type = "string",
        },
        maxResults = {
            type = "number",
        },
        jobDefinitionName = {
            type = "string",
        },
        status = {
            type = "string",
        },
        nextToken = {
            type = "string",
        },
    },
}

M.ConsumableResourceRequirement = {
    type = "structure",
    members = {
        consumableResource = {
            type = "string",
        },
        quantity = {
            type = "number",
        },
    },
}

M.ConsumableResourceProperties = {
    type = "structure",
    members = {
        consumableResourceList = {
            type = "list",
            member_type = "structure",
        },
    },
}

M.KeyValuePair = {
    type = "structure",
    members = {
        name = {
            type = "string",
        },
        value = {
            type = "string",
        },
    },
}

M.EphemeralStorage = {
    type = "structure",
    members = {
        sizeInGiB = {
            type = "number",
            traits = {
                required = true,
            },
        },
    },
}

M.FargatePlatformConfiguration = {
    type = "structure",
    members = {
        platformVersion = {
            type = "string",
        },
    },
}

M.DeviceCgroupPermission = {
    READ = "READ",
    WRITE = "WRITE",
    MKNOD = "MKNOD",
}

M.Device = {
    type = "structure",
    members = {
        hostPath = {
            type = "string",
            traits = {
                required = true,
            },
        },
        containerPath = {
            type = "string",
        },
        permissions = {
            type = "list",
            member_type = "string",
        },
    },
}

M.Tmpfs = {
    type = "structure",
    members = {
        containerPath = {
            type = "string",
            traits = {
                required = true,
            },
        },
        size = {
            type = "number",
            traits = {
                required = true,
            },
        },
        mountOptions = {
            type = "list",
            member_type = "string",
        },
    },
}

M.LinuxParameters = {
    type = "structure",
    members = {
        devices = {
            type = "list",
            member_type = "structure",
        },
        initProcessEnabled = {
            type = "boolean",
        },
        sharedMemorySize = {
            type = "number",
        },
        tmpfs = {
            type = "list",
            member_type = "structure",
        },
        maxSwap = {
            type = "number",
        },
        swappiness = {
            type = "number",
        },
    },
}

M.LogDriver = {
    JSON_FILE = "json-file",
    SYSLOG = "syslog",
    JOURNALD = "journald",
    GELF = "gelf",
    FLUENTD = "fluentd",
    AWSLOGS = "awslogs",
    SPLUNK = "splunk",
    AWSFIRELENS = "awsfirelens",
}

M.Secret = {
    type = "structure",
    members = {
        name = {
            type = "string",
            traits = {
                required = true,
            },
        },
        valueFrom = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.LogConfiguration = {
    type = "structure",
    members = {
        logDriver = {
            type = "string",
            traits = {
                required = true,
            },
        },
        options = {
            type = "map",
            key_type = "string",
            value_type = "string",
        },
        secretOptions = {
            type = "list",
            member_type = "structure",
        },
    },
}

M.MountPoint = {
    type = "structure",
    members = {
        containerPath = {
            type = "string",
        },
        readOnly = {
            type = "boolean",
        },
        sourceVolume = {
            type = "string",
        },
    },
}

M.NetworkConfiguration = {
    type = "structure",
    members = {
        assignPublicIp = {
            type = "string",
        },
    },
}

M.RepositoryCredentials = {
    type = "structure",
    members = {
        credentialsParameter = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.ResourceType = {
    GPU = "GPU",
    VCPU = "VCPU",
    MEMORY = "MEMORY",
}

M.ResourceRequirement = {
    type = "structure",
    members = {
        value = {
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
    },
}

M.RuntimePlatform = {
    type = "structure",
    members = {
        operatingSystemFamily = {
            type = "string",
        },
        cpuArchitecture = {
            type = "string",
        },
    },
}

M.Ulimit = {
    type = "structure",
    members = {
        hardLimit = {
            type = "number",
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
        softLimit = {
            type = "number",
            traits = {
                required = true,
            },
        },
    },
}

M.EFSAuthorizationConfigIAM = {
    ENABLED = "ENABLED",
    DISABLED = "DISABLED",
}

M.EFSAuthorizationConfig = {
    type = "structure",
    members = {
        accessPointId = {
            type = "string",
        },
        iam = {
            type = "string",
        },
    },
}

M.EFSTransitEncryption = {
    ENABLED = "ENABLED",
    DISABLED = "DISABLED",
}

M.EFSVolumeConfiguration = {
    type = "structure",
    members = {
        fileSystemId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        rootDirectory = {
            type = "string",
        },
        transitEncryption = {
            type = "string",
        },
        transitEncryptionPort = {
            type = "number",
        },
        authorizationConfig = {
            type = "structure",
        },
    },
}

M.Host = {
    type = "structure",
    members = {
        sourcePath = {
            type = "string",
        },
    },
}

M.S3FilesVolumeConfiguration = {
    type = "structure",
    members = {
        fileSystemArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        rootDirectory = {
            type = "string",
        },
        transitEncryptionPort = {
            type = "number",
        },
        accessPointArn = {
            type = "string",
        },
    },
}

M.Volume = {
    type = "structure",
    members = {
        host = {
            type = "structure",
        },
        name = {
            type = "string",
        },
        efsVolumeConfiguration = {
            type = "structure",
        },
        s3filesVolumeConfiguration = {
            type = "structure",
        },
    },
}

M.ContainerProperties = {
    type = "structure",
    members = {
        image = {
            type = "string",
        },
        vcpus = {
            type = "number",
        },
        memory = {
            type = "number",
        },
        command = {
            type = "list",
            member_type = "string",
        },
        jobRoleArn = {
            type = "string",
        },
        executionRoleArn = {
            type = "string",
        },
        volumes = {
            type = "list",
            member_type = "structure",
        },
        environment = {
            type = "list",
            member_type = "structure",
        },
        mountPoints = {
            type = "list",
            member_type = "structure",
        },
        readonlyRootFilesystem = {
            type = "boolean",
        },
        privileged = {
            type = "boolean",
        },
        ulimits = {
            type = "list",
            member_type = "structure",
        },
        user = {
            type = "string",
        },
        instanceType = {
            type = "string",
        },
        resourceRequirements = {
            type = "list",
            member_type = "structure",
        },
        linuxParameters = {
            type = "structure",
        },
        logConfiguration = {
            type = "structure",
        },
        secrets = {
            type = "list",
            member_type = "structure",
        },
        networkConfiguration = {
            type = "structure",
        },
        fargatePlatformConfiguration = {
            type = "structure",
        },
        enableExecuteCommand = {
            type = "boolean",
        },
        ephemeralStorage = {
            type = "structure",
        },
        runtimePlatform = {
            type = "structure",
        },
        repositoryCredentials = {
            type = "structure",
        },
    },
}

M.TaskContainerDependency = {
    type = "structure",
    members = {
        containerName = {
            type = "string",
        },
        condition = {
            type = "string",
        },
    },
}

M.FirelensConfigurationType = {
    FLUENTD = "fluentd",
    FLUENTBIT = "fluentbit",
}

M.FirelensConfiguration = {
    type = "structure",
    members = {
        type = {
            type = "string",
            traits = {
                required = true,
            },
        },
        options = {
            type = "map",
            key_type = "string",
            value_type = "string",
        },
    },
}

M.TaskContainerProperties = {
    type = "structure",
    members = {
        command = {
            type = "list",
            member_type = "string",
        },
        dependsOn = {
            type = "list",
            member_type = "structure",
        },
        environment = {
            type = "list",
            member_type = "structure",
        },
        essential = {
            type = "boolean",
        },
        firelensConfiguration = {
            type = "structure",
        },
        image = {
            type = "string",
            traits = {
                required = true,
            },
        },
        linuxParameters = {
            type = "structure",
        },
        logConfiguration = {
            type = "structure",
        },
        mountPoints = {
            type = "list",
            member_type = "structure",
        },
        name = {
            type = "string",
        },
        privileged = {
            type = "boolean",
        },
        readonlyRootFilesystem = {
            type = "boolean",
        },
        repositoryCredentials = {
            type = "structure",
        },
        resourceRequirements = {
            type = "list",
            member_type = "structure",
        },
        secrets = {
            type = "list",
            member_type = "structure",
        },
        ulimits = {
            type = "list",
            member_type = "structure",
        },
        user = {
            type = "string",
        },
        startTimeout = {
            type = "number",
        },
        stopTimeout = {
            type = "number",
        },
    },
}

M.EcsTaskProperties = {
    type = "structure",
    members = {
        containers = {
            type = "list",
            member_type = "structure",
            traits = {
                required = true,
            },
        },
        ephemeralStorage = {
            type = "structure",
        },
        executionRoleArn = {
            type = "string",
        },
        platformVersion = {
            type = "string",
        },
        ipcMode = {
            type = "string",
        },
        taskRoleArn = {
            type = "string",
        },
        pidMode = {
            type = "string",
        },
        networkConfiguration = {
            type = "structure",
        },
        runtimePlatform = {
            type = "structure",
        },
        volumes = {
            type = "list",
            member_type = "structure",
        },
        enableExecuteCommand = {
            type = "boolean",
        },
    },
}

M.EcsProperties = {
    type = "structure",
    members = {
        taskProperties = {
            type = "list",
            member_type = "structure",
            traits = {
                required = true,
            },
        },
    },
}

M.EksContainerEnvironmentVariable = {
    type = "structure",
    members = {
        name = {
            type = "string",
            traits = {
                required = true,
            },
        },
        value = {
            type = "string",
        },
    },
}

M.EksContainerResourceRequirements = {
    type = "structure",
    members = {
        limits = {
            type = "map",
            key_type = "string",
            value_type = "string",
        },
        requests = {
            type = "map",
            key_type = "string",
            value_type = "string",
        },
    },
}

M.EksContainerSecurityContext = {
    type = "structure",
    members = {
        runAsUser = {
            type = "number",
        },
        runAsGroup = {
            type = "number",
        },
        privileged = {
            type = "boolean",
        },
        allowPrivilegeEscalation = {
            type = "boolean",
        },
        readOnlyRootFilesystem = {
            type = "boolean",
        },
        runAsNonRoot = {
            type = "boolean",
        },
    },
}

M.EksContainerVolumeMount = {
    type = "structure",
    members = {
        name = {
            type = "string",
        },
        mountPath = {
            type = "string",
        },
        subPath = {
            type = "string",
        },
        readOnly = {
            type = "boolean",
        },
    },
}

M.EksContainer = {
    type = "structure",
    members = {
        name = {
            type = "string",
        },
        image = {
            type = "string",
            traits = {
                required = true,
            },
        },
        imagePullPolicy = {
            type = "string",
        },
        command = {
            type = "list",
            member_type = "string",
        },
        args = {
            type = "list",
            member_type = "string",
        },
        env = {
            type = "list",
            member_type = "structure",
        },
        resources = {
            type = "structure",
        },
        volumeMounts = {
            type = "list",
            member_type = "structure",
        },
        securityContext = {
            type = "structure",
        },
    },
}

M.ImagePullSecret = {
    type = "structure",
    members = {
        name = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.EksMetadata = {
    type = "structure",
    members = {
        labels = {
            type = "map",
            key_type = "string",
            value_type = "string",
        },
        annotations = {
            type = "map",
            key_type = "string",
            value_type = "string",
        },
        namespace = {
            type = "string",
        },
    },
}

M.EksEmptyDir = {
    type = "structure",
    members = {
        medium = {
            type = "string",
        },
        sizeLimit = {
            type = "string",
        },
    },
}

M.EksHostPath = {
    type = "structure",
    members = {
        path = {
            type = "string",
        },
    },
}

M.EksPersistentVolumeClaim = {
    type = "structure",
    members = {
        claimName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        readOnly = {
            type = "boolean",
        },
    },
}

M.EksSecret = {
    type = "structure",
    members = {
        secretName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        optional = {
            type = "boolean",
        },
    },
}

M.EksVolume = {
    type = "structure",
    members = {
        name = {
            type = "string",
            traits = {
                required = true,
            },
        },
        hostPath = {
            type = "structure",
        },
        emptyDir = {
            type = "structure",
        },
        secret = {
            type = "structure",
        },
        persistentVolumeClaim = {
            type = "structure",
        },
    },
}

M.EksPodProperties = {
    type = "structure",
    members = {
        serviceAccountName = {
            type = "string",
        },
        hostNetwork = {
            type = "boolean",
        },
        dnsPolicy = {
            type = "string",
        },
        imagePullSecrets = {
            type = "list",
            member_type = "structure",
        },
        containers = {
            type = "list",
            member_type = "structure",
        },
        initContainers = {
            type = "list",
            member_type = "structure",
        },
        volumes = {
            type = "list",
            member_type = "structure",
        },
        metadata = {
            type = "structure",
        },
        shareProcessNamespace = {
            type = "boolean",
        },
    },
}

M.EksProperties = {
    type = "structure",
    members = {
        podProperties = {
            type = "structure",
        },
    },
}

M.NodeRangeProperty = {
    type = "structure",
    members = {
        targetNodes = {
            type = "string",
            traits = {
                required = true,
            },
        },
        container = {
            type = "structure",
        },
        instanceTypes = {
            type = "list",
            member_type = "string",
        },
        ecsProperties = {
            type = "structure",
        },
        eksProperties = {
            type = "structure",
        },
        consumableResourceProperties = {
            type = "structure",
        },
    },
}

M.NodeProperties = {
    type = "structure",
    members = {
        numNodes = {
            type = "number",
            traits = {
                required = true,
            },
        },
        mainNode = {
            type = "number",
            traits = {
                required = true,
            },
        },
        nodeRangeProperties = {
            type = "list",
            member_type = "structure",
            traits = {
                required = true,
            },
        },
    },
}

M.PlatformCapability = {
    EC2 = "EC2",
    FARGATE = "FARGATE",
}

M.RetryAction = {
    RETRY = "RETRY",
    EXIT = "EXIT",
}

M.EvaluateOnExit = {
    type = "structure",
    members = {
        onStatusReason = {
            type = "string",
        },
        onReason = {
            type = "string",
        },
        onExitCode = {
            type = "string",
        },
        action = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.RetryStrategy = {
    type = "structure",
    members = {
        attempts = {
            type = "number",
        },
        evaluateOnExit = {
            type = "list",
            member_type = "structure",
        },
    },
}

M.JobTimeout = {
    type = "structure",
    members = {
        attemptDurationSeconds = {
            type = "number",
        },
    },
}

M.JobDefinition = {
    type = "structure",
    members = {
        jobDefinitionName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        jobDefinitionArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        revision = {
            type = "number",
            traits = {
                required = true,
            },
        },
        status = {
            type = "string",
        },
        type = {
            type = "string",
            traits = {
                required = true,
            },
        },
        schedulingPriority = {
            type = "number",
        },
        parameters = {
            type = "map",
            key_type = "string",
            value_type = "string",
        },
        retryStrategy = {
            type = "structure",
        },
        containerProperties = {
            type = "structure",
        },
        timeout = {
            type = "structure",
        },
        nodeProperties = {
            type = "structure",
        },
        tags = {
            type = "map",
            key_type = "string",
            value_type = "string",
        },
        propagateTags = {
            type = "boolean",
        },
        platformCapabilities = {
            type = "list",
            member_type = "string",
        },
        ecsProperties = {
            type = "structure",
        },
        eksProperties = {
            type = "structure",
        },
        containerOrchestrationType = {
            type = "string",
        },
        consumableResourceProperties = {
            type = "structure",
        },
    },
}

M.DescribeJobDefinitionsOutput = {
    type = "structure",
    members = {
        jobDefinitions = {
            type = "list",
            member_type = "structure",
        },
        nextToken = {
            type = "string",
        },
    },
}

M.DescribeJobQueuesInput = {
    type = "structure",
    members = {
        jobQueues = {
            type = "list",
            member_type = "string",
        },
        maxResults = {
            type = "number",
        },
        nextToken = {
            type = "string",
        },
    },
}

M.JQStatus = {
    CREATING = "CREATING",
    UPDATING = "UPDATING",
    DELETING = "DELETING",
    DELETED = "DELETED",
    VALID = "VALID",
    INVALID = "INVALID",
}

M.JobQueueDetail = {
    type = "structure",
    members = {
        jobQueueName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        jobQueueArn = {
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
        schedulingPolicyArn = {
            type = "string",
        },
        status = {
            type = "string",
        },
        statusReason = {
            type = "string",
        },
        priority = {
            type = "number",
            traits = {
                required = true,
            },
        },
        computeEnvironmentOrder = {
            type = "list",
            member_type = "structure",
            traits = {
                required = true,
            },
        },
        serviceEnvironmentOrder = {
            type = "list",
            member_type = "structure",
        },
        jobQueueType = {
            type = "string",
        },
        tags = {
            type = "map",
            key_type = "string",
            value_type = "string",
        },
        jobStateTimeLimitActions = {
            type = "list",
            member_type = "structure",
        },
    },
}

M.DescribeJobQueuesOutput = {
    type = "structure",
    members = {
        jobQueues = {
            type = "list",
            member_type = "structure",
        },
        nextToken = {
            type = "string",
        },
    },
}

M.DescribeJobsInput = {
    type = "structure",
    members = {
        jobs = {
            type = "list",
            member_type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.ContainerDetail = {
    type = "structure",
    members = {
        image = {
            type = "string",
        },
        vcpus = {
            type = "number",
        },
        memory = {
            type = "number",
        },
        command = {
            type = "list",
            member_type = "string",
        },
        jobRoleArn = {
            type = "string",
        },
        executionRoleArn = {
            type = "string",
        },
        volumes = {
            type = "list",
            member_type = "structure",
        },
        environment = {
            type = "list",
            member_type = "structure",
        },
        mountPoints = {
            type = "list",
            member_type = "structure",
        },
        readonlyRootFilesystem = {
            type = "boolean",
        },
        ulimits = {
            type = "list",
            member_type = "structure",
        },
        privileged = {
            type = "boolean",
        },
        user = {
            type = "string",
        },
        exitCode = {
            type = "number",
        },
        reason = {
            type = "string",
        },
        containerInstanceArn = {
            type = "string",
        },
        taskArn = {
            type = "string",
        },
        logStreamName = {
            type = "string",
        },
        instanceType = {
            type = "string",
        },
        networkInterfaces = {
            type = "list",
            member_type = "structure",
        },
        resourceRequirements = {
            type = "list",
            member_type = "structure",
        },
        linuxParameters = {
            type = "structure",
        },
        logConfiguration = {
            type = "structure",
        },
        secrets = {
            type = "list",
            member_type = "structure",
        },
        networkConfiguration = {
            type = "structure",
        },
        fargatePlatformConfiguration = {
            type = "structure",
        },
        ephemeralStorage = {
            type = "structure",
        },
        runtimePlatform = {
            type = "structure",
        },
        repositoryCredentials = {
            type = "structure",
        },
        enableExecuteCommand = {
            type = "boolean",
        },
    },
}

M.JobDependency = {
    type = "structure",
    members = {
        jobId = {
            type = "string",
        },
        type = {
            type = "string",
        },
    },
}

M.TaskContainerDetails = {
    type = "structure",
    members = {
        command = {
            type = "list",
            member_type = "string",
        },
        dependsOn = {
            type = "list",
            member_type = "structure",
        },
        environment = {
            type = "list",
            member_type = "structure",
        },
        essential = {
            type = "boolean",
        },
        firelensConfiguration = {
            type = "structure",
        },
        image = {
            type = "string",
        },
        linuxParameters = {
            type = "structure",
        },
        logConfiguration = {
            type = "structure",
        },
        mountPoints = {
            type = "list",
            member_type = "structure",
        },
        name = {
            type = "string",
        },
        privileged = {
            type = "boolean",
        },
        readonlyRootFilesystem = {
            type = "boolean",
        },
        repositoryCredentials = {
            type = "structure",
        },
        resourceRequirements = {
            type = "list",
            member_type = "structure",
        },
        secrets = {
            type = "list",
            member_type = "structure",
        },
        ulimits = {
            type = "list",
            member_type = "structure",
        },
        user = {
            type = "string",
        },
        startTimeout = {
            type = "number",
        },
        stopTimeout = {
            type = "number",
        },
        exitCode = {
            type = "number",
        },
        reason = {
            type = "string",
        },
        logStreamName = {
            type = "string",
        },
        networkInterfaces = {
            type = "list",
            member_type = "structure",
        },
    },
}

M.EcsTaskDetails = {
    type = "structure",
    members = {
        containers = {
            type = "list",
            member_type = "structure",
        },
        containerInstanceArn = {
            type = "string",
        },
        taskArn = {
            type = "string",
        },
        ephemeralStorage = {
            type = "structure",
        },
        executionRoleArn = {
            type = "string",
        },
        platformVersion = {
            type = "string",
        },
        ipcMode = {
            type = "string",
        },
        taskRoleArn = {
            type = "string",
        },
        pidMode = {
            type = "string",
        },
        networkConfiguration = {
            type = "structure",
        },
        runtimePlatform = {
            type = "structure",
        },
        volumes = {
            type = "list",
            member_type = "structure",
        },
        enableExecuteCommand = {
            type = "boolean",
        },
    },
}

M.EcsPropertiesDetail = {
    type = "structure",
    members = {
        taskProperties = {
            type = "list",
            member_type = "structure",
        },
    },
}

M.EksAttemptContainerDetail = {
    type = "structure",
    members = {
        name = {
            type = "string",
        },
        containerID = {
            type = "string",
        },
        exitCode = {
            type = "number",
        },
        reason = {
            type = "string",
        },
    },
}

M.EksAttemptDetail = {
    type = "structure",
    members = {
        containers = {
            type = "list",
            member_type = "structure",
        },
        initContainers = {
            type = "list",
            member_type = "structure",
        },
        eksClusterArn = {
            type = "string",
        },
        podName = {
            type = "string",
        },
        podNamespace = {
            type = "string",
        },
        nodeName = {
            type = "string",
        },
        startedAt = {
            type = "number",
        },
        stoppedAt = {
            type = "number",
        },
        statusReason = {
            type = "string",
        },
    },
}

M.EksContainerDetail = {
    type = "structure",
    members = {
        name = {
            type = "string",
        },
        image = {
            type = "string",
        },
        imagePullPolicy = {
            type = "string",
        },
        command = {
            type = "list",
            member_type = "string",
        },
        args = {
            type = "list",
            member_type = "string",
        },
        env = {
            type = "list",
            member_type = "structure",
        },
        resources = {
            type = "structure",
        },
        exitCode = {
            type = "number",
        },
        reason = {
            type = "string",
        },
        volumeMounts = {
            type = "list",
            member_type = "structure",
        },
        securityContext = {
            type = "structure",
        },
    },
}

M.EksPodPropertiesDetail = {
    type = "structure",
    members = {
        serviceAccountName = {
            type = "string",
        },
        hostNetwork = {
            type = "boolean",
        },
        dnsPolicy = {
            type = "string",
        },
        imagePullSecrets = {
            type = "list",
            member_type = "structure",
        },
        containers = {
            type = "list",
            member_type = "structure",
        },
        initContainers = {
            type = "list",
            member_type = "structure",
        },
        volumes = {
            type = "list",
            member_type = "structure",
        },
        podName = {
            type = "string",
        },
        nodeName = {
            type = "string",
        },
        metadata = {
            type = "structure",
        },
        shareProcessNamespace = {
            type = "boolean",
        },
    },
}

M.EksPropertiesDetail = {
    type = "structure",
    members = {
        podProperties = {
            type = "structure",
        },
    },
}

M.NodeDetails = {
    type = "structure",
    members = {
        nodeIndex = {
            type = "number",
        },
        isMainNode = {
            type = "boolean",
        },
    },
}

M.JobStatus = {
    SUBMITTED = "SUBMITTED",
    PENDING = "PENDING",
    RUNNABLE = "RUNNABLE",
    STARTING = "STARTING",
    RUNNING = "RUNNING",
    SUCCEEDED = "SUCCEEDED",
    FAILED = "FAILED",
}

M.JobDetail = {
    type = "structure",
    members = {
        jobArn = {
            type = "string",
        },
        jobName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        jobId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        jobQueue = {
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
        shareIdentifier = {
            type = "string",
        },
        schedulingPriority = {
            type = "number",
        },
        attempts = {
            type = "list",
            member_type = "structure",
        },
        statusReason = {
            type = "string",
        },
        createdAt = {
            type = "number",
        },
        retryStrategy = {
            type = "structure",
        },
        startedAt = {
            type = "number",
            traits = {
                required = true,
            },
        },
        stoppedAt = {
            type = "number",
        },
        dependsOn = {
            type = "list",
            member_type = "structure",
        },
        jobDefinition = {
            type = "string",
            traits = {
                required = true,
            },
        },
        parameters = {
            type = "map",
            key_type = "string",
            value_type = "string",
        },
        container = {
            type = "structure",
        },
        nodeDetails = {
            type = "structure",
        },
        nodeProperties = {
            type = "structure",
        },
        arrayProperties = {
            type = "structure",
        },
        timeout = {
            type = "structure",
        },
        tags = {
            type = "map",
            key_type = "string",
            value_type = "string",
        },
        propagateTags = {
            type = "boolean",
        },
        platformCapabilities = {
            type = "list",
            member_type = "string",
        },
        eksProperties = {
            type = "structure",
        },
        eksAttempts = {
            type = "list",
            member_type = "structure",
        },
        ecsProperties = {
            type = "structure",
        },
        isCancelled = {
            type = "boolean",
        },
        isTerminated = {
            type = "boolean",
        },
        consumableResourceProperties = {
            type = "structure",
        },
    },
}

M.DescribeJobsOutput = {
    type = "structure",
    members = {
        jobs = {
            type = "list",
            member_type = "structure",
        },
    },
}

M.DescribeQuotaShareInput = {
    type = "structure",
    members = {
        quotaShareArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.QuotaShareStatus = {
    CREATING = "CREATING",
    VALID = "VALID",
    INVALID = "INVALID",
    UPDATING = "UPDATING",
    DELETING = "DELETING",
}

M.DescribeQuotaShareOutput = {
    type = "structure",
    members = {
        quotaShareName = {
            type = "string",
        },
        quotaShareArn = {
            type = "string",
        },
        jobQueueArn = {
            type = "string",
        },
        capacityLimits = {
            type = "list",
            member_type = "structure",
        },
        resourceSharingConfiguration = {
            type = "structure",
        },
        preemptionConfiguration = {
            type = "structure",
        },
        state = {
            type = "string",
        },
        status = {
            type = "string",
        },
        tags = {
            type = "map",
            key_type = "string",
            value_type = "string",
        },
    },
}

M.DescribeSchedulingPoliciesInput = {
    type = "structure",
    members = {
        arns = {
            type = "list",
            member_type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.SchedulingPolicyDetail = {
    type = "structure",
    members = {
        name = {
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
        quotaSharePolicy = {
            type = "structure",
        },
        fairsharePolicy = {
            type = "structure",
        },
        tags = {
            type = "map",
            key_type = "string",
            value_type = "string",
        },
    },
}

M.DescribeSchedulingPoliciesOutput = {
    type = "structure",
    members = {
        schedulingPolicies = {
            type = "list",
            member_type = "structure",
        },
    },
}

M.DescribeServiceEnvironmentsInput = {
    type = "structure",
    members = {
        serviceEnvironments = {
            type = "list",
            member_type = "string",
        },
        maxResults = {
            type = "number",
        },
        nextToken = {
            type = "string",
        },
    },
}

M.ServiceEnvironmentStatus = {
    CREATING = "CREATING",
    UPDATING = "UPDATING",
    DELETING = "DELETING",
    DELETED = "DELETED",
    VALID = "VALID",
    INVALID = "INVALID",
}

M.ServiceEnvironmentDetail = {
    type = "structure",
    members = {
        serviceEnvironmentName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        serviceEnvironmentArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        serviceEnvironmentType = {
            type = "string",
            traits = {
                required = true,
            },
        },
        state = {
            type = "string",
        },
        status = {
            type = "string",
        },
        capacityLimits = {
            type = "list",
            member_type = "structure",
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

M.DescribeServiceEnvironmentsOutput = {
    type = "structure",
    members = {
        serviceEnvironments = {
            type = "list",
            member_type = "structure",
        },
        nextToken = {
            type = "string",
        },
    },
}

M.DescribeServiceJobInput = {
    type = "structure",
    members = {
        jobId = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.ServiceResourceIdName = {
    SAGEMAKER_TRAINING_JOB_ARN = "TrainingJobArn",
}

M.ServiceResourceId = {
    type = "structure",
    members = {
        name = {
            type = "string",
            traits = {
                required = true,
            },
        },
        value = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.ServiceJobAttemptDetail = {
    type = "structure",
    members = {
        serviceResourceId = {
            type = "structure",
        },
        startedAt = {
            type = "number",
        },
        stoppedAt = {
            type = "number",
        },
        statusReason = {
            type = "string",
        },
    },
}

M.ServiceJobCapacityUsageDetail = {
    type = "structure",
    members = {
        capacityUnit = {
            type = "string",
        },
        quantity = {
            type = "number",
        },
    },
}

M.LatestServiceJobAttempt = {
    type = "structure",
    members = {
        serviceResourceId = {
            type = "structure",
        },
    },
}

M.ServiceJobPreemptionConfiguration = {
    type = "structure",
    members = {
        preemptionRetriesBeforeTermination = {
            type = "number",
        },
    },
}

M.ServiceJobPreemptedAttempt = {
    type = "structure",
    members = {
        serviceResourceId = {
            type = "structure",
        },
        startedAt = {
            type = "number",
        },
        stoppedAt = {
            type = "number",
        },
        statusReason = {
            type = "string",
        },
    },
}

M.ServiceJobPreemptionSummary = {
    type = "structure",
    members = {
        preemptedAttemptCount = {
            type = "number",
        },
        recentPreemptedAttempts = {
            type = "list",
            member_type = "structure",
        },
    },
}

M.ServiceJobRetryAction = {
    RETRY = "RETRY",
    EXIT = "EXIT",
}

M.ServiceJobEvaluateOnExit = {
    type = "structure",
    members = {
        action = {
            type = "string",
        },
        onStatusReason = {
            type = "string",
        },
    },
}

M.ServiceJobRetryStrategy = {
    type = "structure",
    members = {
        attempts = {
            type = "number",
            traits = {
                required = true,
            },
        },
        evaluateOnExit = {
            type = "list",
            member_type = "structure",
        },
    },
}

M.ServiceJobType = {
    SAGEMAKER_TRAINING = "SAGEMAKER_TRAINING",
}

M.ServiceJobStatus = {
    SUBMITTED = "SUBMITTED",
    PENDING = "PENDING",
    RUNNABLE = "RUNNABLE",
    SCHEDULED = "SCHEDULED",
    STARTING = "STARTING",
    RUNNING = "RUNNING",
    SUCCEEDED = "SUCCEEDED",
    FAILED = "FAILED",
}

M.ServiceJobTimeout = {
    type = "structure",
    members = {
        attemptDurationSeconds = {
            type = "number",
        },
    },
}

M.DescribeServiceJobOutput = {
    type = "structure",
    members = {
        attempts = {
            type = "list",
            member_type = "structure",
        },
        capacityUsage = {
            type = "list",
            member_type = "structure",
        },
        createdAt = {
            type = "number",
        },
        isTerminated = {
            type = "boolean",
        },
        jobArn = {
            type = "string",
        },
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
        jobQueue = {
            type = "string",
            traits = {
                required = true,
            },
        },
        latestAttempt = {
            type = "structure",
        },
        retryStrategy = {
            type = "structure",
        },
        scheduledAt = {
            type = "number",
        },
        schedulingPriority = {
            type = "number",
        },
        serviceRequestPayload = {
            type = "string",
        },
        serviceJobType = {
            type = "string",
            traits = {
                required = true,
            },
        },
        shareIdentifier = {
            type = "string",
        },
        quotaShareName = {
            type = "string",
        },
        preemptionConfiguration = {
            type = "structure",
        },
        preemptionSummary = {
            type = "structure",
        },
        startedAt = {
            type = "number",
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
        statusReason = {
            type = "string",
        },
        stoppedAt = {
            type = "number",
        },
        tags = {
            type = "map",
            key_type = "string",
            value_type = "string",
        },
        timeoutConfig = {
            type = "structure",
        },
    },
}

M.GetJobQueueSnapshotInput = {
    type = "structure",
    members = {
        jobQueue = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.FrontOfQueueJobSummary = {
    type = "structure",
    members = {
        jobArn = {
            type = "string",
        },
        earliestTimeAtPosition = {
            type = "number",
        },
    },
}

M.FrontOfQueueDetail = {
    type = "structure",
    members = {
        jobs = {
            type = "list",
            member_type = "structure",
        },
        lastUpdatedAt = {
            type = "number",
        },
    },
}

M.FrontOfQuotaShareJobSummary = {
    type = "structure",
    members = {
        jobArn = {
            type = "string",
        },
        earliestTimeAtPosition = {
            type = "number",
        },
    },
}

M.FrontOfQuotaSharesDetail = {
    type = "structure",
    members = {
        quotaShares = {
            type = "map",
            key_type = "string",
            value_type = "list",
        },
        lastUpdatedAt = {
            type = "number",
        },
    },
}

M.FairshareCapacityUsage = {
    type = "structure",
    members = {
        capacityUnit = {
            type = "string",
        },
        quantity = {
            type = "number",
        },
    },
}

M.FairshareCapacityUtilization = {
    type = "structure",
    members = {
        shareIdentifier = {
            type = "string",
        },
        capacityUsage = {
            type = "list",
            member_type = "structure",
        },
    },
}

M.FairshareUtilizationDetail = {
    type = "structure",
    members = {
        activeShareCount = {
            type = "number",
        },
        topCapacityUtilization = {
            type = "list",
            member_type = "structure",
        },
    },
}

M.QuotaShareCapacityUsage = {
    type = "structure",
    members = {
        capacityUnit = {
            type = "string",
        },
        quantity = {
            type = "number",
        },
    },
}

M.QuotaShareCapacityUtilization = {
    type = "structure",
    members = {
        quotaShareName = {
            type = "string",
        },
        capacityUsage = {
            type = "list",
            member_type = "structure",
        },
    },
}

M.QuotaShareUtilizationDetail = {
    type = "structure",
    members = {
        topCapacityUtilization = {
            type = "list",
            member_type = "structure",
        },
    },
}

M.QueueSnapshotCapacityUsage = {
    type = "structure",
    members = {
        capacityUnit = {
            type = "string",
        },
        quantity = {
            type = "number",
        },
    },
}

M.QueueSnapshotUtilizationDetail = {
    type = "structure",
    members = {
        totalCapacityUsage = {
            type = "list",
            member_type = "structure",
        },
        fairshareUtilization = {
            type = "structure",
        },
        quotaShareUtilization = {
            type = "structure",
        },
        lastUpdatedAt = {
            type = "number",
        },
    },
}

M.GetJobQueueSnapshotOutput = {
    type = "structure",
    members = {
        frontOfQueue = {
            type = "structure",
        },
        frontOfQuotaShares = {
            type = "structure",
        },
        queueUtilization = {
            type = "structure",
        },
    },
}

M.KeyValuesPair = {
    type = "structure",
    members = {
        name = {
            type = "string",
        },
        values = {
            type = "list",
            member_type = "string",
        },
    },
}

M.ListConsumableResourcesInput = {
    type = "structure",
    members = {
        filters = {
            type = "list",
            member_type = "structure",
        },
        maxResults = {
            type = "number",
        },
        nextToken = {
            type = "string",
        },
    },
}

M.ConsumableResourceSummary = {
    type = "structure",
    members = {
        consumableResourceArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        consumableResourceName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        totalQuantity = {
            type = "number",
        },
        inUseQuantity = {
            type = "number",
        },
        resourceType = {
            type = "string",
        },
    },
}

M.ListConsumableResourcesOutput = {
    type = "structure",
    members = {
        consumableResources = {
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

M.ListJobsInput = {
    type = "structure",
    members = {
        jobQueue = {
            type = "string",
        },
        arrayJobId = {
            type = "string",
        },
        multiNodeJobId = {
            type = "string",
        },
        jobStatus = {
            type = "string",
        },
        maxResults = {
            type = "number",
        },
        nextToken = {
            type = "string",
        },
        filters = {
            type = "list",
            member_type = "structure",
        },
    },
}

M.JobCapacityUsageSummary = {
    type = "structure",
    members = {
        capacityUnit = {
            type = "string",
        },
        quantity = {
            type = "number",
        },
    },
}

M.ContainerSummary = {
    type = "structure",
    members = {
        exitCode = {
            type = "number",
        },
        reason = {
            type = "string",
        },
    },
}

M.NodePropertiesSummary = {
    type = "structure",
    members = {
        isMainNode = {
            type = "boolean",
        },
        numNodes = {
            type = "number",
        },
        nodeIndex = {
            type = "number",
        },
    },
}

M.JobSummary = {
    type = "structure",
    members = {
        jobArn = {
            type = "string",
        },
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
        capacityUsage = {
            type = "list",
            member_type = "structure",
        },
        createdAt = {
            type = "number",
        },
        scheduledAt = {
            type = "number",
        },
        shareIdentifier = {
            type = "string",
        },
        status = {
            type = "string",
        },
        statusReason = {
            type = "string",
        },
        startedAt = {
            type = "number",
        },
        stoppedAt = {
            type = "number",
        },
        container = {
            type = "structure",
        },
        arrayProperties = {
            type = "structure",
        },
        nodeProperties = {
            type = "structure",
        },
        jobDefinition = {
            type = "string",
        },
    },
}

M.ListJobsOutput = {
    type = "structure",
    members = {
        jobSummaryList = {
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

M.ListJobsByConsumableResourceInput = {
    type = "structure",
    members = {
        consumableResource = {
            type = "string",
            traits = {
                required = true,
            },
        },
        filters = {
            type = "list",
            member_type = "structure",
        },
        maxResults = {
            type = "number",
        },
        nextToken = {
            type = "string",
        },
    },
}

M.ListJobsByConsumableResourceSummary = {
    type = "structure",
    members = {
        jobArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        jobQueueArn = {
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
        jobDefinitionArn = {
            type = "string",
        },
        shareIdentifier = {
            type = "string",
        },
        jobStatus = {
            type = "string",
            traits = {
                required = true,
            },
        },
        quantity = {
            type = "number",
            traits = {
                required = true,
            },
        },
        statusReason = {
            type = "string",
        },
        startedAt = {
            type = "number",
        },
        createdAt = {
            type = "number",
            traits = {
                required = true,
            },
        },
        consumableResourceProperties = {
            type = "structure",
            traits = {
                required = true,
            },
        },
    },
}

M.ListJobsByConsumableResourceOutput = {
    type = "structure",
    members = {
        jobs = {
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

M.ListQuotaSharesInput = {
    type = "structure",
    members = {
        jobQueue = {
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

M.QuotaShareDetail = {
    type = "structure",
    members = {
        quotaShareName = {
            type = "string",
        },
        quotaShareArn = {
            type = "string",
        },
        jobQueueArn = {
            type = "string",
        },
        capacityLimits = {
            type = "list",
            member_type = "structure",
        },
        resourceSharingConfiguration = {
            type = "structure",
        },
        preemptionConfiguration = {
            type = "structure",
        },
        state = {
            type = "string",
        },
        status = {
            type = "string",
        },
    },
}

M.ListQuotaSharesOutput = {
    type = "structure",
    members = {
        quotaShares = {
            type = "list",
            member_type = "structure",
        },
        nextToken = {
            type = "string",
        },
    },
}

M.ListSchedulingPoliciesInput = {
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

M.SchedulingPolicyListingDetail = {
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

M.ListSchedulingPoliciesOutput = {
    type = "structure",
    members = {
        schedulingPolicies = {
            type = "list",
            member_type = "structure",
        },
        nextToken = {
            type = "string",
        },
    },
}

M.ListServiceJobsInput = {
    type = "structure",
    members = {
        jobQueue = {
            type = "string",
        },
        jobStatus = {
            type = "string",
        },
        maxResults = {
            type = "number",
        },
        nextToken = {
            type = "string",
        },
        filters = {
            type = "list",
            member_type = "structure",
        },
    },
}

M.ServiceJobCapacityUsageSummary = {
    type = "structure",
    members = {
        capacityUnit = {
            type = "string",
        },
        quantity = {
            type = "number",
        },
    },
}

M.ServiceJobSummary = {
    type = "structure",
    members = {
        latestAttempt = {
            type = "structure",
        },
        capacityUsage = {
            type = "list",
            member_type = "structure",
        },
        createdAt = {
            type = "number",
        },
        jobArn = {
            type = "string",
        },
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
        scheduledAt = {
            type = "number",
        },
        serviceJobType = {
            type = "string",
            traits = {
                required = true,
            },
        },
        shareIdentifier = {
            type = "string",
        },
        quotaShareName = {
            type = "string",
        },
        status = {
            type = "string",
        },
        statusReason = {
            type = "string",
        },
        startedAt = {
            type = "number",
        },
        stoppedAt = {
            type = "number",
        },
    },
}

M.ListServiceJobsOutput = {
    type = "structure",
    members = {
        jobSummaryList = {
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
                http_label = true,
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

M.JobDefinitionType = {
    Container = "container",
    Multinode = "multinode",
}

M.RegisterJobDefinitionInput = {
    type = "structure",
    members = {
        jobDefinitionName = {
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
        parameters = {
            type = "map",
            key_type = "string",
            value_type = "string",
        },
        schedulingPriority = {
            type = "number",
        },
        containerProperties = {
            type = "structure",
        },
        nodeProperties = {
            type = "structure",
        },
        retryStrategy = {
            type = "structure",
        },
        propagateTags = {
            type = "boolean",
        },
        timeout = {
            type = "structure",
        },
        tags = {
            type = "map",
            key_type = "string",
            value_type = "string",
        },
        platformCapabilities = {
            type = "list",
            member_type = "string",
        },
        eksProperties = {
            type = "structure",
        },
        ecsProperties = {
            type = "structure",
        },
        consumableResourceProperties = {
            type = "structure",
        },
    },
}

M.RegisterJobDefinitionOutput = {
    type = "structure",
    members = {
        jobDefinitionName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        jobDefinitionArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        revision = {
            type = "number",
            traits = {
                required = true,
            },
        },
    },
}

M.ContainerOverrides = {
    type = "structure",
    members = {
        vcpus = {
            type = "number",
        },
        memory = {
            type = "number",
        },
        command = {
            type = "list",
            member_type = "string",
        },
        instanceType = {
            type = "string",
        },
        environment = {
            type = "list",
            member_type = "structure",
        },
        resourceRequirements = {
            type = "list",
            member_type = "structure",
        },
    },
}

M.TaskContainerOverrides = {
    type = "structure",
    members = {
        command = {
            type = "list",
            member_type = "string",
        },
        environment = {
            type = "list",
            member_type = "structure",
        },
        name = {
            type = "string",
        },
        resourceRequirements = {
            type = "list",
            member_type = "structure",
        },
    },
}

M.TaskPropertiesOverride = {
    type = "structure",
    members = {
        containers = {
            type = "list",
            member_type = "structure",
        },
    },
}

M.EcsPropertiesOverride = {
    type = "structure",
    members = {
        taskProperties = {
            type = "list",
            member_type = "structure",
        },
    },
}

M.EksContainerOverride = {
    type = "structure",
    members = {
        name = {
            type = "string",
        },
        image = {
            type = "string",
        },
        command = {
            type = "list",
            member_type = "string",
        },
        args = {
            type = "list",
            member_type = "string",
        },
        env = {
            type = "list",
            member_type = "structure",
        },
        resources = {
            type = "structure",
        },
    },
}

M.EksPodPropertiesOverride = {
    type = "structure",
    members = {
        containers = {
            type = "list",
            member_type = "structure",
        },
        initContainers = {
            type = "list",
            member_type = "structure",
        },
        metadata = {
            type = "structure",
        },
    },
}

M.EksPropertiesOverride = {
    type = "structure",
    members = {
        podProperties = {
            type = "structure",
        },
    },
}

M.NodePropertyOverride = {
    type = "structure",
    members = {
        targetNodes = {
            type = "string",
            traits = {
                required = true,
            },
        },
        containerOverrides = {
            type = "structure",
        },
        ecsPropertiesOverride = {
            type = "structure",
        },
        instanceTypes = {
            type = "list",
            member_type = "string",
        },
        eksPropertiesOverride = {
            type = "structure",
        },
        consumableResourcePropertiesOverride = {
            type = "structure",
        },
    },
}

M.NodeOverrides = {
    type = "structure",
    members = {
        numNodes = {
            type = "number",
        },
        nodePropertyOverrides = {
            type = "list",
            member_type = "structure",
        },
    },
}

M.SubmitJobInput = {
    type = "structure",
    members = {
        jobName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        jobQueue = {
            type = "string",
            traits = {
                required = true,
            },
        },
        shareIdentifier = {
            type = "string",
        },
        schedulingPriorityOverride = {
            type = "number",
        },
        arrayProperties = {
            type = "structure",
        },
        dependsOn = {
            type = "list",
            member_type = "structure",
        },
        jobDefinition = {
            type = "string",
            traits = {
                required = true,
            },
        },
        parameters = {
            type = "map",
            key_type = "string",
            value_type = "string",
        },
        containerOverrides = {
            type = "structure",
        },
        nodeOverrides = {
            type = "structure",
        },
        retryStrategy = {
            type = "structure",
        },
        propagateTags = {
            type = "boolean",
        },
        timeout = {
            type = "structure",
        },
        tags = {
            type = "map",
            key_type = "string",
            value_type = "string",
        },
        eksPropertiesOverride = {
            type = "structure",
        },
        ecsPropertiesOverride = {
            type = "structure",
        },
        consumableResourcePropertiesOverride = {
            type = "structure",
        },
    },
}

M.SubmitJobOutput = {
    type = "structure",
    members = {
        jobArn = {
            type = "string",
        },
        jobName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        jobId = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.SubmitServiceJobInput = {
    type = "structure",
    members = {
        jobName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        jobQueue = {
            type = "string",
            traits = {
                required = true,
            },
        },
        retryStrategy = {
            type = "structure",
        },
        schedulingPriority = {
            type = "number",
        },
        serviceRequestPayload = {
            type = "string",
            traits = {
                required = true,
            },
        },
        serviceJobType = {
            type = "string",
            traits = {
                required = true,
            },
        },
        shareIdentifier = {
            type = "string",
        },
        quotaShareName = {
            type = "string",
        },
        preemptionConfiguration = {
            type = "structure",
        },
        timeoutConfig = {
            type = "structure",
        },
        tags = {
            type = "map",
            key_type = "string",
            value_type = "string",
        },
        clientToken = {
            type = "string",
        },
    },
}

M.SubmitServiceJobOutput = {
    type = "structure",
    members = {
        jobArn = {
            type = "string",
        },
        jobName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        jobId = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.TagResourceInput = {
    type = "structure",
    members = {
        resourceArn = {
            type = "string",
            traits = {
                http_label = true,
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

M.TerminateJobInput = {
    type = "structure",
    members = {
        jobId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        reason = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.TerminateJobOutput = {
    type = "structure",
}

M.TerminateServiceJobInput = {
    type = "structure",
    members = {
        jobId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        reason = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.TerminateServiceJobOutput = {
    type = "structure",
}

M.UntagResourceInput = {
    type = "structure",
    members = {
        resourceArn = {
            type = "string",
            traits = {
                http_label = true,
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

M.CRUpdateAllocationStrategy = {
    BEST_FIT_PROGRESSIVE = "BEST_FIT_PROGRESSIVE",
    SPOT_CAPACITY_OPTIMIZED = "SPOT_CAPACITY_OPTIMIZED",
    SPOT_PRICE_CAPACITY_OPTIMIZED = "SPOT_PRICE_CAPACITY_OPTIMIZED",
}

M.ComputeResourceUpdate = {
    type = "structure",
    members = {
        minvCpus = {
            type = "number",
        },
        maxvCpus = {
            type = "number",
        },
        desiredvCpus = {
            type = "number",
        },
        subnets = {
            type = "list",
            member_type = "string",
        },
        securityGroupIds = {
            type = "list",
            member_type = "string",
        },
        allocationStrategy = {
            type = "string",
        },
        instanceTypes = {
            type = "list",
            member_type = "string",
        },
        ec2KeyPair = {
            type = "string",
        },
        instanceRole = {
            type = "string",
        },
        tags = {
            type = "map",
            key_type = "string",
            value_type = "string",
        },
        placementGroup = {
            type = "string",
        },
        bidPercentage = {
            type = "number",
        },
        launchTemplate = {
            type = "structure",
        },
        ec2Configuration = {
            type = "list",
            member_type = "structure",
        },
        updateToLatestImageVersion = {
            type = "boolean",
        },
        type = {
            type = "string",
        },
        imageId = {
            type = "string",
        },
        scalingPolicy = {
            type = "structure",
        },
    },
}

M.UpdateComputeEnvironmentInput = {
    type = "structure",
    members = {
        computeEnvironment = {
            type = "string",
            traits = {
                required = true,
            },
        },
        state = {
            type = "string",
        },
        unmanagedvCpus = {
            type = "number",
        },
        computeResources = {
            type = "structure",
        },
        serviceRole = {
            type = "string",
        },
        updatePolicy = {
            type = "structure",
        },
        context = {
            type = "string",
        },
    },
}

M.UpdateComputeEnvironmentOutput = {
    type = "structure",
    members = {
        computeEnvironmentName = {
            type = "string",
        },
        computeEnvironmentArn = {
            type = "string",
        },
    },
}

M.UpdateConsumableResourceInput = {
    type = "structure",
    members = {
        consumableResource = {
            type = "string",
            traits = {
                required = true,
            },
        },
        operation = {
            type = "string",
        },
        quantity = {
            type = "number",
        },
        clientToken = {
            type = "string",
        },
    },
}

M.UpdateConsumableResourceOutput = {
    type = "structure",
    members = {
        consumableResourceName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        consumableResourceArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        totalQuantity = {
            type = "number",
        },
    },
}

M.UpdateJobQueueInput = {
    type = "structure",
    members = {
        jobQueue = {
            type = "string",
            traits = {
                required = true,
            },
        },
        state = {
            type = "string",
        },
        schedulingPolicyArn = {
            type = "string",
        },
        priority = {
            type = "number",
        },
        computeEnvironmentOrder = {
            type = "list",
            member_type = "structure",
        },
        serviceEnvironmentOrder = {
            type = "list",
            member_type = "structure",
        },
        jobStateTimeLimitActions = {
            type = "list",
            member_type = "structure",
        },
    },
}

M.UpdateJobQueueOutput = {
    type = "structure",
    members = {
        jobQueueName = {
            type = "string",
        },
        jobQueueArn = {
            type = "string",
        },
    },
}

M.UpdateQuotaShareInput = {
    type = "structure",
    members = {
        quotaShareArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        capacityLimits = {
            type = "list",
            member_type = "structure",
        },
        resourceSharingConfiguration = {
            type = "structure",
        },
        preemptionConfiguration = {
            type = "structure",
        },
        state = {
            type = "string",
        },
    },
}

M.UpdateQuotaShareOutput = {
    type = "structure",
    members = {
        quotaShareName = {
            type = "string",
        },
        quotaShareArn = {
            type = "string",
        },
    },
}

M.UpdateSchedulingPolicyInput = {
    type = "structure",
    members = {
        arn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        quotaSharePolicy = {
            type = "structure",
        },
        fairsharePolicy = {
            type = "structure",
        },
    },
}

M.UpdateSchedulingPolicyOutput = {
    type = "structure",
}

M.UpdateServiceEnvironmentInput = {
    type = "structure",
    members = {
        serviceEnvironment = {
            type = "string",
            traits = {
                required = true,
            },
        },
        state = {
            type = "string",
        },
        capacityLimits = {
            type = "list",
            member_type = "structure",
        },
    },
}

M.UpdateServiceEnvironmentOutput = {
    type = "structure",
    members = {
        serviceEnvironmentName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        serviceEnvironmentArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.UpdateServiceJobInput = {
    type = "structure",
    members = {
        jobId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        schedulingPriority = {
            type = "number",
            traits = {
                required = true,
            },
        },
    },
}

M.UpdateServiceJobOutput = {
    type = "structure",
    members = {
        jobArn = {
            type = "string",
        },
        jobName = {
            type = "string",
        },
        jobId = {
            type = "string",
        },
    },
}

return M
