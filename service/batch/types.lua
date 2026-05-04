local M = {}

M.ArrayJobDependency = {
    N_TO_N = "N_TO_N",
    SEQUENTIAL = "SEQUENTIAL",
}

M.ArrayProperties = {
    type = "structure",
    members = {
        size = {
            type = "integer",
        },
    },
}

M.ArrayPropertiesDetail = {
    type = "structure",
    members = {
        statusSummary = {
            type = "map",
            key = { type = "string" },
            value = { type = "integer" },
        },
        statusSummaryLastUpdatedAt = {
            type = "long",
        },
        size = {
            type = "integer",
        },
        index = {
            type = "integer",
        },
    },
}

M.ArrayPropertiesSummary = {
    type = "structure",
    members = {
        size = {
            type = "integer",
        },
        index = {
            type = "integer",
        },
        statusSummary = {
            type = "map",
            key = { type = "string" },
            value = { type = "integer" },
        },
        statusSummaryLastUpdatedAt = {
            type = "long",
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
            type = "integer",
        },
        reason = {
            type = "string",
        },
        logStreamName = {
            type = "string",
        },
        networkInterfaces = {
            type = "list",
            member = M.NetworkInterface,
        },
    },
}

M.AttemptTaskContainerDetails = {
    type = "structure",
    members = {
        exitCode = {
            type = "integer",
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
            member = M.NetworkInterface,
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
            member = M.AttemptTaskContainerDetails,
        },
    },
}

M.AttemptDetail = {
    type = "structure",
    members = {
        container = M.AttemptContainerDetail,
        startedAt = {
            type = "long",
        },
        stoppedAt = {
            type = "long",
        },
        statusReason = {
            type = "string",
        },
        taskProperties = {
            type = "list",
            member = M.AttemptEcsTaskDetails,
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
            member = { type = "string" },
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
            member = M.LaunchTemplateSpecificationOverride,
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
            type = "integer",
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
            type = "integer",
        },
        maxvCpus = {
            type = "integer",
            traits = {
                required = true,
            },
        },
        desiredvCpus = {
            type = "integer",
        },
        instanceTypes = {
            type = "list",
            member = { type = "string" },
        },
        imageId = {
            type = "string",
        },
        subnets = {
            type = "list",
            member = { type = "string" },
            traits = {
                required = true,
            },
        },
        securityGroupIds = {
            type = "list",
            member = { type = "string" },
        },
        ec2KeyPair = {
            type = "string",
        },
        instanceRole = {
            type = "string",
        },
        tags = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
        placementGroup = {
            type = "string",
        },
        bidPercentage = {
            type = "integer",
        },
        spotIamFleetRole = {
            type = "string",
        },
        launchTemplate = M.LaunchTemplateSpecification,
        ec2Configuration = {
            type = "list",
            member = M.Ec2Configuration,
        },
        scalingPolicy = M.ComputeScalingPolicy,
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
            type = "integer",
        },
        computeResources = M.ComputeResource,
        serviceRole = {
            type = "string",
        },
        tags = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
        eksConfiguration = M.EksConfiguration,
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
            type = "long",
        },
        resourceType = {
            type = "string",
        },
        tags = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
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
            type = "integer",
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
            type = "integer",
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
            type = "integer",
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
            type = "integer",
            traits = {
                required = true,
            },
        },
        computeEnvironmentOrder = {
            type = "list",
            member = M.ComputeEnvironmentOrder,
        },
        serviceEnvironmentOrder = {
            type = "list",
            member = M.ServiceEnvironmentOrder,
        },
        jobQueueType = {
            type = "string",
        },
        tags = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
        jobStateTimeLimitActions = {
            type = "list",
            member = M.JobStateTimeLimitAction,
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
            type = "integer",
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
            type = "integer",
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
            member = M.QuotaShareCapacityLimit,
            traits = {
                required = true,
            },
        },
        resourceSharingConfiguration = setmetatable({ traits = {
            required = true,
        } }, { __index = M.QuotaShareResourceSharingConfiguration }),
        preemptionConfiguration = setmetatable({ traits = {
            required = true,
        } }, { __index = M.QuotaSharePreemptionConfiguration }),
        state = {
            type = "string",
        },
        tags = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
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
            type = "float",
        },
    },
}

M.FairsharePolicy = {
    type = "structure",
    members = {
        shareDecaySeconds = {
            type = "integer",
        },
        computeReservation = {
            type = "integer",
        },
        shareDistribution = {
            type = "list",
            member = M.ShareAttributes,
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
        quotaSharePolicy = M.QuotaSharePolicy,
        fairsharePolicy = M.FairsharePolicy,
        tags = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
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
            type = "integer",
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
            member = M.CapacityLimit,
            traits = {
                required = true,
            },
        },
        tags = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
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
            member = { type = "string" },
        },
        maxResults = {
            type = "integer",
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
            type = "long",
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
            type = "integer",
        },
        ecsClusterArn = {
            type = "string",
        },
        tags = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
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
        computeResources = M.ComputeResource,
        serviceRole = {
            type = "string",
        },
        updatePolicy = M.UpdatePolicy,
        eksConfiguration = M.EksConfiguration,
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
            member = M.ComputeEnvironmentDetail,
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
            type = "long",
        },
        inUseQuantity = {
            type = "long",
        },
        availableQuantity = {
            type = "long",
        },
        resourceType = {
            type = "string",
        },
        createdAt = {
            type = "long",
        },
        tags = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
    },
}

M.DescribeJobDefinitionsInput = {
    type = "structure",
    members = {
        jobDefinitions = {
            type = "list",
            member = { type = "string" },
        },
        maxResults = {
            type = "integer",
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
            type = "long",
        },
    },
}

M.ConsumableResourceProperties = {
    type = "structure",
    members = {
        consumableResourceList = {
            type = "list",
            member = M.ConsumableResourceRequirement,
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
            type = "integer",
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
            member = { type = "string" },
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
            type = "integer",
            traits = {
                required = true,
            },
        },
        mountOptions = {
            type = "list",
            member = { type = "string" },
        },
    },
}

M.LinuxParameters = {
    type = "structure",
    members = {
        devices = {
            type = "list",
            member = M.Device,
        },
        initProcessEnabled = {
            type = "boolean",
        },
        sharedMemorySize = {
            type = "integer",
        },
        tmpfs = {
            type = "list",
            member = M.Tmpfs,
        },
        maxSwap = {
            type = "integer",
        },
        swappiness = {
            type = "integer",
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
            key = { type = "string" },
            value = { type = "string" },
        },
        secretOptions = {
            type = "list",
            member = M.Secret,
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
            type = "integer",
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
            type = "integer",
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
            type = "integer",
        },
        authorizationConfig = M.EFSAuthorizationConfig,
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
            type = "integer",
        },
        accessPointArn = {
            type = "string",
        },
    },
}

M.Volume = {
    type = "structure",
    members = {
        host = M.Host,
        name = {
            type = "string",
        },
        efsVolumeConfiguration = M.EFSVolumeConfiguration,
        s3filesVolumeConfiguration = M.S3FilesVolumeConfiguration,
    },
}

M.ContainerProperties = {
    type = "structure",
    members = {
        image = {
            type = "string",
        },
        vcpus = {
            type = "integer",
        },
        memory = {
            type = "integer",
        },
        command = {
            type = "list",
            member = { type = "string" },
        },
        jobRoleArn = {
            type = "string",
        },
        executionRoleArn = {
            type = "string",
        },
        volumes = {
            type = "list",
            member = M.Volume,
        },
        environment = {
            type = "list",
            member = M.KeyValuePair,
        },
        mountPoints = {
            type = "list",
            member = M.MountPoint,
        },
        readonlyRootFilesystem = {
            type = "boolean",
        },
        privileged = {
            type = "boolean",
        },
        ulimits = {
            type = "list",
            member = M.Ulimit,
        },
        user = {
            type = "string",
        },
        instanceType = {
            type = "string",
        },
        resourceRequirements = {
            type = "list",
            member = M.ResourceRequirement,
        },
        linuxParameters = M.LinuxParameters,
        logConfiguration = M.LogConfiguration,
        secrets = {
            type = "list",
            member = M.Secret,
        },
        networkConfiguration = M.NetworkConfiguration,
        fargatePlatformConfiguration = M.FargatePlatformConfiguration,
        enableExecuteCommand = {
            type = "boolean",
        },
        ephemeralStorage = M.EphemeralStorage,
        runtimePlatform = M.RuntimePlatform,
        repositoryCredentials = M.RepositoryCredentials,
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
            key = { type = "string" },
            value = { type = "string" },
        },
    },
}

M.TaskContainerProperties = {
    type = "structure",
    members = {
        command = {
            type = "list",
            member = { type = "string" },
        },
        dependsOn = {
            type = "list",
            member = M.TaskContainerDependency,
        },
        environment = {
            type = "list",
            member = M.KeyValuePair,
        },
        essential = {
            type = "boolean",
        },
        firelensConfiguration = M.FirelensConfiguration,
        image = {
            type = "string",
            traits = {
                required = true,
            },
        },
        linuxParameters = M.LinuxParameters,
        logConfiguration = M.LogConfiguration,
        mountPoints = {
            type = "list",
            member = M.MountPoint,
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
        repositoryCredentials = M.RepositoryCredentials,
        resourceRequirements = {
            type = "list",
            member = M.ResourceRequirement,
        },
        secrets = {
            type = "list",
            member = M.Secret,
        },
        ulimits = {
            type = "list",
            member = M.Ulimit,
        },
        user = {
            type = "string",
        },
        startTimeout = {
            type = "integer",
        },
        stopTimeout = {
            type = "integer",
        },
    },
}

M.EcsTaskProperties = {
    type = "structure",
    members = {
        containers = {
            type = "list",
            member = M.TaskContainerProperties,
            traits = {
                required = true,
            },
        },
        ephemeralStorage = M.EphemeralStorage,
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
        networkConfiguration = M.NetworkConfiguration,
        runtimePlatform = M.RuntimePlatform,
        volumes = {
            type = "list",
            member = M.Volume,
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
            member = M.EcsTaskProperties,
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
            key = { type = "string" },
            value = { type = "string" },
        },
        requests = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
    },
}

M.EksContainerSecurityContext = {
    type = "structure",
    members = {
        runAsUser = {
            type = "long",
        },
        runAsGroup = {
            type = "long",
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
            member = { type = "string" },
        },
        args = {
            type = "list",
            member = { type = "string" },
        },
        env = {
            type = "list",
            member = M.EksContainerEnvironmentVariable,
        },
        resources = M.EksContainerResourceRequirements,
        volumeMounts = {
            type = "list",
            member = M.EksContainerVolumeMount,
        },
        securityContext = M.EksContainerSecurityContext,
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
            key = { type = "string" },
            value = { type = "string" },
        },
        annotations = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
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
        hostPath = M.EksHostPath,
        emptyDir = M.EksEmptyDir,
        secret = M.EksSecret,
        persistentVolumeClaim = M.EksPersistentVolumeClaim,
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
            member = M.ImagePullSecret,
        },
        containers = {
            type = "list",
            member = M.EksContainer,
        },
        initContainers = {
            type = "list",
            member = M.EksContainer,
        },
        volumes = {
            type = "list",
            member = M.EksVolume,
        },
        metadata = M.EksMetadata,
        shareProcessNamespace = {
            type = "boolean",
        },
    },
}

M.EksProperties = {
    type = "structure",
    members = {
        podProperties = M.EksPodProperties,
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
        container = M.ContainerProperties,
        instanceTypes = {
            type = "list",
            member = { type = "string" },
        },
        ecsProperties = M.EcsProperties,
        eksProperties = M.EksProperties,
        consumableResourceProperties = M.ConsumableResourceProperties,
    },
}

M.NodeProperties = {
    type = "structure",
    members = {
        numNodes = {
            type = "integer",
            traits = {
                required = true,
            },
        },
        mainNode = {
            type = "integer",
            traits = {
                required = true,
            },
        },
        nodeRangeProperties = {
            type = "list",
            member = M.NodeRangeProperty,
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
            type = "integer",
        },
        evaluateOnExit = {
            type = "list",
            member = M.EvaluateOnExit,
        },
    },
}

M.JobTimeout = {
    type = "structure",
    members = {
        attemptDurationSeconds = {
            type = "integer",
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
            type = "integer",
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
            type = "integer",
        },
        parameters = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
        retryStrategy = M.RetryStrategy,
        containerProperties = M.ContainerProperties,
        timeout = M.JobTimeout,
        nodeProperties = M.NodeProperties,
        tags = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
        propagateTags = {
            type = "boolean",
        },
        platformCapabilities = {
            type = "list",
            member = { type = "string" },
        },
        ecsProperties = M.EcsProperties,
        eksProperties = M.EksProperties,
        containerOrchestrationType = {
            type = "string",
        },
        consumableResourceProperties = M.ConsumableResourceProperties,
    },
}

M.DescribeJobDefinitionsOutput = {
    type = "structure",
    members = {
        jobDefinitions = {
            type = "list",
            member = M.JobDefinition,
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
            member = { type = "string" },
        },
        maxResults = {
            type = "integer",
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
            type = "integer",
            traits = {
                required = true,
            },
        },
        computeEnvironmentOrder = {
            type = "list",
            member = M.ComputeEnvironmentOrder,
            traits = {
                required = true,
            },
        },
        serviceEnvironmentOrder = {
            type = "list",
            member = M.ServiceEnvironmentOrder,
        },
        jobQueueType = {
            type = "string",
        },
        tags = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
        jobStateTimeLimitActions = {
            type = "list",
            member = M.JobStateTimeLimitAction,
        },
    },
}

M.DescribeJobQueuesOutput = {
    type = "structure",
    members = {
        jobQueues = {
            type = "list",
            member = M.JobQueueDetail,
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
            member = { type = "string" },
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
            type = "integer",
        },
        memory = {
            type = "integer",
        },
        command = {
            type = "list",
            member = { type = "string" },
        },
        jobRoleArn = {
            type = "string",
        },
        executionRoleArn = {
            type = "string",
        },
        volumes = {
            type = "list",
            member = M.Volume,
        },
        environment = {
            type = "list",
            member = M.KeyValuePair,
        },
        mountPoints = {
            type = "list",
            member = M.MountPoint,
        },
        readonlyRootFilesystem = {
            type = "boolean",
        },
        ulimits = {
            type = "list",
            member = M.Ulimit,
        },
        privileged = {
            type = "boolean",
        },
        user = {
            type = "string",
        },
        exitCode = {
            type = "integer",
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
            member = M.NetworkInterface,
        },
        resourceRequirements = {
            type = "list",
            member = M.ResourceRequirement,
        },
        linuxParameters = M.LinuxParameters,
        logConfiguration = M.LogConfiguration,
        secrets = {
            type = "list",
            member = M.Secret,
        },
        networkConfiguration = M.NetworkConfiguration,
        fargatePlatformConfiguration = M.FargatePlatformConfiguration,
        ephemeralStorage = M.EphemeralStorage,
        runtimePlatform = M.RuntimePlatform,
        repositoryCredentials = M.RepositoryCredentials,
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
            member = { type = "string" },
        },
        dependsOn = {
            type = "list",
            member = M.TaskContainerDependency,
        },
        environment = {
            type = "list",
            member = M.KeyValuePair,
        },
        essential = {
            type = "boolean",
        },
        firelensConfiguration = M.FirelensConfiguration,
        image = {
            type = "string",
        },
        linuxParameters = M.LinuxParameters,
        logConfiguration = M.LogConfiguration,
        mountPoints = {
            type = "list",
            member = M.MountPoint,
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
        repositoryCredentials = M.RepositoryCredentials,
        resourceRequirements = {
            type = "list",
            member = M.ResourceRequirement,
        },
        secrets = {
            type = "list",
            member = M.Secret,
        },
        ulimits = {
            type = "list",
            member = M.Ulimit,
        },
        user = {
            type = "string",
        },
        startTimeout = {
            type = "integer",
        },
        stopTimeout = {
            type = "integer",
        },
        exitCode = {
            type = "integer",
        },
        reason = {
            type = "string",
        },
        logStreamName = {
            type = "string",
        },
        networkInterfaces = {
            type = "list",
            member = M.NetworkInterface,
        },
    },
}

M.EcsTaskDetails = {
    type = "structure",
    members = {
        containers = {
            type = "list",
            member = M.TaskContainerDetails,
        },
        containerInstanceArn = {
            type = "string",
        },
        taskArn = {
            type = "string",
        },
        ephemeralStorage = M.EphemeralStorage,
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
        networkConfiguration = M.NetworkConfiguration,
        runtimePlatform = M.RuntimePlatform,
        volumes = {
            type = "list",
            member = M.Volume,
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
            member = M.EcsTaskDetails,
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
            type = "integer",
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
            member = M.EksAttemptContainerDetail,
        },
        initContainers = {
            type = "list",
            member = M.EksAttemptContainerDetail,
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
            type = "long",
        },
        stoppedAt = {
            type = "long",
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
            member = { type = "string" },
        },
        args = {
            type = "list",
            member = { type = "string" },
        },
        env = {
            type = "list",
            member = M.EksContainerEnvironmentVariable,
        },
        resources = M.EksContainerResourceRequirements,
        exitCode = {
            type = "integer",
        },
        reason = {
            type = "string",
        },
        volumeMounts = {
            type = "list",
            member = M.EksContainerVolumeMount,
        },
        securityContext = M.EksContainerSecurityContext,
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
            member = M.ImagePullSecret,
        },
        containers = {
            type = "list",
            member = M.EksContainerDetail,
        },
        initContainers = {
            type = "list",
            member = M.EksContainerDetail,
        },
        volumes = {
            type = "list",
            member = M.EksVolume,
        },
        podName = {
            type = "string",
        },
        nodeName = {
            type = "string",
        },
        metadata = M.EksMetadata,
        shareProcessNamespace = {
            type = "boolean",
        },
    },
}

M.EksPropertiesDetail = {
    type = "structure",
    members = {
        podProperties = M.EksPodPropertiesDetail,
    },
}

M.NodeDetails = {
    type = "structure",
    members = {
        nodeIndex = {
            type = "integer",
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
            type = "integer",
        },
        attempts = {
            type = "list",
            member = M.AttemptDetail,
        },
        statusReason = {
            type = "string",
        },
        createdAt = {
            type = "long",
        },
        retryStrategy = M.RetryStrategy,
        startedAt = {
            type = "long",
            traits = {
                required = true,
            },
        },
        stoppedAt = {
            type = "long",
        },
        dependsOn = {
            type = "list",
            member = M.JobDependency,
        },
        jobDefinition = {
            type = "string",
            traits = {
                required = true,
            },
        },
        parameters = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
        container = M.ContainerDetail,
        nodeDetails = M.NodeDetails,
        nodeProperties = M.NodeProperties,
        arrayProperties = M.ArrayPropertiesDetail,
        timeout = M.JobTimeout,
        tags = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
        propagateTags = {
            type = "boolean",
        },
        platformCapabilities = {
            type = "list",
            member = { type = "string" },
        },
        eksProperties = M.EksPropertiesDetail,
        eksAttempts = {
            type = "list",
            member = M.EksAttemptDetail,
        },
        ecsProperties = M.EcsPropertiesDetail,
        isCancelled = {
            type = "boolean",
        },
        isTerminated = {
            type = "boolean",
        },
        consumableResourceProperties = M.ConsumableResourceProperties,
    },
}

M.DescribeJobsOutput = {
    type = "structure",
    members = {
        jobs = {
            type = "list",
            member = M.JobDetail,
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
            member = M.QuotaShareCapacityLimit,
        },
        resourceSharingConfiguration = M.QuotaShareResourceSharingConfiguration,
        preemptionConfiguration = M.QuotaSharePreemptionConfiguration,
        state = {
            type = "string",
        },
        status = {
            type = "string",
        },
        tags = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
    },
}

M.DescribeSchedulingPoliciesInput = {
    type = "structure",
    members = {
        arns = {
            type = "list",
            member = { type = "string" },
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
        quotaSharePolicy = M.QuotaSharePolicy,
        fairsharePolicy = M.FairsharePolicy,
        tags = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
    },
}

M.DescribeSchedulingPoliciesOutput = {
    type = "structure",
    members = {
        schedulingPolicies = {
            type = "list",
            member = M.SchedulingPolicyDetail,
        },
    },
}

M.DescribeServiceEnvironmentsInput = {
    type = "structure",
    members = {
        serviceEnvironments = {
            type = "list",
            member = { type = "string" },
        },
        maxResults = {
            type = "integer",
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
            member = M.CapacityLimit,
            traits = {
                required = true,
            },
        },
        tags = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
    },
}

M.DescribeServiceEnvironmentsOutput = {
    type = "structure",
    members = {
        serviceEnvironments = {
            type = "list",
            member = M.ServiceEnvironmentDetail,
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
        serviceResourceId = M.ServiceResourceId,
        startedAt = {
            type = "long",
        },
        stoppedAt = {
            type = "long",
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
            type = "double",
        },
    },
}

M.LatestServiceJobAttempt = {
    type = "structure",
    members = {
        serviceResourceId = M.ServiceResourceId,
    },
}

M.ServiceJobPreemptionConfiguration = {
    type = "structure",
    members = {
        preemptionRetriesBeforeTermination = {
            type = "integer",
        },
    },
}

M.ServiceJobPreemptedAttempt = {
    type = "structure",
    members = {
        serviceResourceId = M.ServiceResourceId,
        startedAt = {
            type = "long",
        },
        stoppedAt = {
            type = "long",
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
            type = "integer",
        },
        recentPreemptedAttempts = {
            type = "list",
            member = M.ServiceJobPreemptedAttempt,
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
            type = "integer",
            traits = {
                required = true,
            },
        },
        evaluateOnExit = {
            type = "list",
            member = M.ServiceJobEvaluateOnExit,
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
            type = "integer",
        },
    },
}

M.DescribeServiceJobOutput = {
    type = "structure",
    members = {
        attempts = {
            type = "list",
            member = M.ServiceJobAttemptDetail,
        },
        capacityUsage = {
            type = "list",
            member = M.ServiceJobCapacityUsageDetail,
        },
        createdAt = {
            type = "long",
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
        latestAttempt = M.LatestServiceJobAttempt,
        retryStrategy = M.ServiceJobRetryStrategy,
        scheduledAt = {
            type = "long",
        },
        schedulingPriority = {
            type = "integer",
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
        preemptionConfiguration = M.ServiceJobPreemptionConfiguration,
        preemptionSummary = M.ServiceJobPreemptionSummary,
        startedAt = {
            type = "long",
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
            type = "long",
        },
        tags = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
        timeoutConfig = M.ServiceJobTimeout,
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
            type = "long",
        },
    },
}

M.FrontOfQueueDetail = {
    type = "structure",
    members = {
        jobs = {
            type = "list",
            member = M.FrontOfQueueJobSummary,
        },
        lastUpdatedAt = {
            type = "long",
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
            type = "long",
        },
    },
}

M.FrontOfQuotaSharesDetail = {
    type = "structure",
    members = {
        quotaShares = {
            type = "map",
            key = { type = "string" },
            value = { type = "list" },
        },
        lastUpdatedAt = {
            type = "long",
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
            type = "double",
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
            member = M.FairshareCapacityUsage,
        },
    },
}

M.FairshareUtilizationDetail = {
    type = "structure",
    members = {
        activeShareCount = {
            type = "long",
        },
        topCapacityUtilization = {
            type = "list",
            member = M.FairshareCapacityUtilization,
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
            type = "double",
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
            member = M.QuotaShareCapacityUsage,
        },
    },
}

M.QuotaShareUtilizationDetail = {
    type = "structure",
    members = {
        topCapacityUtilization = {
            type = "list",
            member = M.QuotaShareCapacityUtilization,
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
            type = "double",
        },
    },
}

M.QueueSnapshotUtilizationDetail = {
    type = "structure",
    members = {
        totalCapacityUsage = {
            type = "list",
            member = M.QueueSnapshotCapacityUsage,
        },
        fairshareUtilization = M.FairshareUtilizationDetail,
        quotaShareUtilization = M.QuotaShareUtilizationDetail,
        lastUpdatedAt = {
            type = "long",
        },
    },
}

M.GetJobQueueSnapshotOutput = {
    type = "structure",
    members = {
        frontOfQueue = M.FrontOfQueueDetail,
        frontOfQuotaShares = M.FrontOfQuotaSharesDetail,
        queueUtilization = M.QueueSnapshotUtilizationDetail,
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
            member = { type = "string" },
        },
    },
}

M.ListConsumableResourcesInput = {
    type = "structure",
    members = {
        filters = {
            type = "list",
            member = M.KeyValuesPair,
        },
        maxResults = {
            type = "integer",
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
            type = "long",
        },
        inUseQuantity = {
            type = "long",
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
            member = M.ConsumableResourceSummary,
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
            type = "integer",
        },
        nextToken = {
            type = "string",
        },
        filters = {
            type = "list",
            member = M.KeyValuesPair,
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
            type = "double",
        },
    },
}

M.ContainerSummary = {
    type = "structure",
    members = {
        exitCode = {
            type = "integer",
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
            type = "integer",
        },
        nodeIndex = {
            type = "integer",
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
            member = M.JobCapacityUsageSummary,
        },
        createdAt = {
            type = "long",
        },
        scheduledAt = {
            type = "long",
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
            type = "long",
        },
        stoppedAt = {
            type = "long",
        },
        container = M.ContainerSummary,
        arrayProperties = M.ArrayPropertiesSummary,
        nodeProperties = M.NodePropertiesSummary,
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
            member = M.KeyValuesPair,
        },
        maxResults = {
            type = "integer",
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
            type = "long",
            traits = {
                required = true,
            },
        },
        statusReason = {
            type = "string",
        },
        startedAt = {
            type = "long",
        },
        createdAt = {
            type = "long",
            traits = {
                required = true,
            },
        },
        consumableResourceProperties = setmetatable({ traits = {
            required = true,
        } }, { __index = M.ConsumableResourceProperties }),
    },
}

M.ListJobsByConsumableResourceOutput = {
    type = "structure",
    members = {
        jobs = {
            type = "list",
            member = M.ListJobsByConsumableResourceSummary,
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
            type = "integer",
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
            member = M.QuotaShareCapacityLimit,
        },
        resourceSharingConfiguration = M.QuotaShareResourceSharingConfiguration,
        preemptionConfiguration = M.QuotaSharePreemptionConfiguration,
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
            member = M.QuotaShareDetail,
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
            type = "integer",
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
            member = M.SchedulingPolicyListingDetail,
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
            type = "integer",
        },
        nextToken = {
            type = "string",
        },
        filters = {
            type = "list",
            member = M.KeyValuesPair,
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
            type = "double",
        },
    },
}

M.ServiceJobSummary = {
    type = "structure",
    members = {
        latestAttempt = M.LatestServiceJobAttempt,
        capacityUsage = {
            type = "list",
            member = M.ServiceJobCapacityUsageSummary,
        },
        createdAt = {
            type = "long",
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
            type = "long",
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
            type = "long",
        },
        stoppedAt = {
            type = "long",
        },
    },
}

M.ListServiceJobsOutput = {
    type = "structure",
    members = {
        jobSummaryList = {
            type = "list",
            member = M.ServiceJobSummary,
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
            key = { type = "string" },
            value = { type = "string" },
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
            key = { type = "string" },
            value = { type = "string" },
        },
        schedulingPriority = {
            type = "integer",
        },
        containerProperties = M.ContainerProperties,
        nodeProperties = M.NodeProperties,
        retryStrategy = M.RetryStrategy,
        propagateTags = {
            type = "boolean",
        },
        timeout = M.JobTimeout,
        tags = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
        platformCapabilities = {
            type = "list",
            member = { type = "string" },
        },
        eksProperties = M.EksProperties,
        ecsProperties = M.EcsProperties,
        consumableResourceProperties = M.ConsumableResourceProperties,
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
            type = "integer",
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
            type = "integer",
        },
        memory = {
            type = "integer",
        },
        command = {
            type = "list",
            member = { type = "string" },
        },
        instanceType = {
            type = "string",
        },
        environment = {
            type = "list",
            member = M.KeyValuePair,
        },
        resourceRequirements = {
            type = "list",
            member = M.ResourceRequirement,
        },
    },
}

M.TaskContainerOverrides = {
    type = "structure",
    members = {
        command = {
            type = "list",
            member = { type = "string" },
        },
        environment = {
            type = "list",
            member = M.KeyValuePair,
        },
        name = {
            type = "string",
        },
        resourceRequirements = {
            type = "list",
            member = M.ResourceRequirement,
        },
    },
}

M.TaskPropertiesOverride = {
    type = "structure",
    members = {
        containers = {
            type = "list",
            member = M.TaskContainerOverrides,
        },
    },
}

M.EcsPropertiesOverride = {
    type = "structure",
    members = {
        taskProperties = {
            type = "list",
            member = M.TaskPropertiesOverride,
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
            member = { type = "string" },
        },
        args = {
            type = "list",
            member = { type = "string" },
        },
        env = {
            type = "list",
            member = M.EksContainerEnvironmentVariable,
        },
        resources = M.EksContainerResourceRequirements,
    },
}

M.EksPodPropertiesOverride = {
    type = "structure",
    members = {
        containers = {
            type = "list",
            member = M.EksContainerOverride,
        },
        initContainers = {
            type = "list",
            member = M.EksContainerOverride,
        },
        metadata = M.EksMetadata,
    },
}

M.EksPropertiesOverride = {
    type = "structure",
    members = {
        podProperties = M.EksPodPropertiesOverride,
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
        containerOverrides = M.ContainerOverrides,
        ecsPropertiesOverride = M.EcsPropertiesOverride,
        instanceTypes = {
            type = "list",
            member = { type = "string" },
        },
        eksPropertiesOverride = M.EksPropertiesOverride,
        consumableResourcePropertiesOverride = M.ConsumableResourceProperties,
    },
}

M.NodeOverrides = {
    type = "structure",
    members = {
        numNodes = {
            type = "integer",
        },
        nodePropertyOverrides = {
            type = "list",
            member = M.NodePropertyOverride,
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
            type = "integer",
        },
        arrayProperties = M.ArrayProperties,
        dependsOn = {
            type = "list",
            member = M.JobDependency,
        },
        jobDefinition = {
            type = "string",
            traits = {
                required = true,
            },
        },
        parameters = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
        containerOverrides = M.ContainerOverrides,
        nodeOverrides = M.NodeOverrides,
        retryStrategy = M.RetryStrategy,
        propagateTags = {
            type = "boolean",
        },
        timeout = M.JobTimeout,
        tags = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
        eksPropertiesOverride = M.EksPropertiesOverride,
        ecsPropertiesOverride = M.EcsPropertiesOverride,
        consumableResourcePropertiesOverride = M.ConsumableResourceProperties,
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
        retryStrategy = M.ServiceJobRetryStrategy,
        schedulingPriority = {
            type = "integer",
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
        preemptionConfiguration = M.ServiceJobPreemptionConfiguration,
        timeoutConfig = M.ServiceJobTimeout,
        tags = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
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
            type = "integer",
        },
        maxvCpus = {
            type = "integer",
        },
        desiredvCpus = {
            type = "integer",
        },
        subnets = {
            type = "list",
            member = { type = "string" },
        },
        securityGroupIds = {
            type = "list",
            member = { type = "string" },
        },
        allocationStrategy = {
            type = "string",
        },
        instanceTypes = {
            type = "list",
            member = { type = "string" },
        },
        ec2KeyPair = {
            type = "string",
        },
        instanceRole = {
            type = "string",
        },
        tags = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
        placementGroup = {
            type = "string",
        },
        bidPercentage = {
            type = "integer",
        },
        launchTemplate = M.LaunchTemplateSpecification,
        ec2Configuration = {
            type = "list",
            member = M.Ec2Configuration,
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
        scalingPolicy = M.ComputeScalingPolicy,
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
            type = "integer",
        },
        computeResources = M.ComputeResourceUpdate,
        serviceRole = {
            type = "string",
        },
        updatePolicy = M.UpdatePolicy,
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
            type = "long",
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
            type = "long",
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
            type = "integer",
        },
        computeEnvironmentOrder = {
            type = "list",
            member = M.ComputeEnvironmentOrder,
        },
        serviceEnvironmentOrder = {
            type = "list",
            member = M.ServiceEnvironmentOrder,
        },
        jobStateTimeLimitActions = {
            type = "list",
            member = M.JobStateTimeLimitAction,
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
            member = M.QuotaShareCapacityLimit,
        },
        resourceSharingConfiguration = M.QuotaShareResourceSharingConfiguration,
        preemptionConfiguration = M.QuotaSharePreemptionConfiguration,
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
        quotaSharePolicy = M.QuotaSharePolicy,
        fairsharePolicy = M.FairsharePolicy,
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
            member = M.CapacityLimit,
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
            type = "integer",
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
