local M = {}

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

M.AttachmentStatus = {
    ATTACHING = "ATTACHING",
    ATTACHED = "ATTACHED",
    DETACHING = "DETACHING",
    DETACHED = "DETACHED",
}

M.CancelTaskInput = {
    type = "structure",
    id = "CancelTaskInput",
    members = {
        taskId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.CancelTaskOutput = {
    type = "structure",
    id = "CancelTaskOutput",
    members = {
        taskId = {
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

M.ValidationException = {
    type = "structure",
    id = "ValidationException",
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

M.Capacity = {
    type = "structure",
    id = "Capacity",
    members = {
        name = {
            type = "string",
        },
        unit = {
            type = "string",
        },
        total = {
            type = "long",
        },
        used = {
            type = "long",
        },
        available = {
            type = "long",
        },
    },
}

M.Reboot = {
    type = "structure",
    id = "Reboot",
}

M.Unlock = {
    type = "structure",
    id = "Unlock",
}

M.Command = {
    type = "union",
    id = "Command",
    members = {
        unlock = M.Unlock,
        reboot = M.Reboot,
    },
}

M.CpuOptions = {
    type = "structure",
    id = "CpuOptions",
    members = {
        coreCount = {
            type = "integer",
        },
        threadsPerCore = {
            type = "integer",
        },
    },
}

M.CreateTaskInput = {
    type = "structure",
    id = "CreateTaskInput",
    members = {
        targets = {
            type = "list",
            member = { type = "string" },
            traits = {
                required = true,
            },
        },
        command = setmetatable({ traits = {
            required = true,
        } }, { __index = M.Command }),
        description = {
            type = "string",
        },
        tags = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
        clientToken = {
            type = "string",
            traits = {
                idempotency_token = true,
            },
        },
    },
}

M.CreateTaskOutput = {
    type = "structure",
    id = "CreateTaskOutput",
    members = {
        taskId = {
            type = "string",
        },
        taskArn = {
            type = "string",
        },
    },
}

M.ServiceQuotaExceededException = {
    type = "structure",
    id = "ServiceQuotaExceededException",
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

M.DescribeDeviceInput = {
    type = "structure",
    id = "DescribeDeviceInput",
    members = {
        managedDeviceId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.UnlockState = {
    UNLOCKED = "UNLOCKED",
    LOCKED = "LOCKED",
    UNLOCKING = "UNLOCKING",
}

M.IpAddressAssignment = {
    DHCP = "DHCP",
    STATIC = "STATIC",
}

M.PhysicalConnectorType = {
    RJ45 = "RJ45",
    SFP_PLUS = "SFP_PLUS",
    QSFP = "QSFP",
    RJ45_2 = "RJ45_2",
    WIFI = "WIFI",
}

M.PhysicalNetworkInterface = {
    type = "structure",
    id = "PhysicalNetworkInterface",
    members = {
        physicalNetworkInterfaceId = {
            type = "string",
        },
        physicalConnectorType = {
            type = "string",
        },
        ipAddressAssignment = {
            type = "string",
        },
        ipAddress = {
            type = "string",
        },
        netmask = {
            type = "string",
        },
        defaultGateway = {
            type = "string",
        },
        macAddress = {
            type = "string",
        },
    },
}

M.SoftwareInformation = {
    type = "structure",
    id = "SoftwareInformation",
    members = {
        installedVersion = {
            type = "string",
        },
        installingVersion = {
            type = "string",
        },
        installState = {
            type = "string",
        },
    },
}

M.DescribeDeviceOutput = {
    type = "structure",
    id = "DescribeDeviceOutput",
    members = {
        lastReachedOutAt = {
            type = "timestamp",
        },
        lastUpdatedAt = {
            type = "timestamp",
        },
        tags = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
        managedDeviceId = {
            type = "string",
        },
        managedDeviceArn = {
            type = "string",
        },
        deviceType = {
            type = "string",
        },
        associatedWithJob = {
            type = "string",
        },
        deviceState = {
            type = "string",
        },
        physicalNetworkInterfaces = {
            type = "list",
            member = M.PhysicalNetworkInterface,
        },
        deviceCapacities = {
            type = "list",
            member = M.Capacity,
        },
        software = M.SoftwareInformation,
    },
}

M.DescribeDeviceEc2InstancesInput = {
    type = "structure",
    id = "DescribeDeviceEc2InstancesInput",
    members = {
        managedDeviceId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        instanceIds = {
            type = "list",
            member = { type = "string" },
            traits = {
                required = true,
            },
        },
    },
}

M.EbsInstanceBlockDevice = {
    type = "structure",
    id = "EbsInstanceBlockDevice",
    members = {
        attachTime = {
            type = "timestamp",
        },
        deleteOnTermination = {
            type = "boolean",
        },
        status = {
            type = "string",
        },
        volumeId = {
            type = "string",
        },
    },
}

M.InstanceBlockDeviceMapping = {
    type = "structure",
    id = "InstanceBlockDeviceMapping",
    members = {
        deviceName = {
            type = "string",
        },
        ebs = M.EbsInstanceBlockDevice,
    },
}

M.SecurityGroupIdentifier = {
    type = "structure",
    id = "SecurityGroupIdentifier",
    members = {
        groupId = {
            type = "string",
        },
        groupName = {
            type = "string",
        },
    },
}

M.InstanceStateName = {
    PENDING = "PENDING",
    RUNNING = "RUNNING",
    SHUTTING_DOWN = "SHUTTING_DOWN",
    TERMINATED = "TERMINATED",
    STOPPING = "STOPPING",
    STOPPED = "STOPPED",
}

M.InstanceState = {
    type = "structure",
    id = "InstanceState",
    members = {
        code = {
            type = "integer",
        },
        name = {
            type = "string",
        },
    },
}

M.Instance = {
    type = "structure",
    id = "Instance",
    members = {
        imageId = {
            type = "string",
        },
        amiLaunchIndex = {
            type = "integer",
        },
        instanceId = {
            type = "string",
        },
        state = M.InstanceState,
        instanceType = {
            type = "string",
        },
        privateIpAddress = {
            type = "string",
        },
        publicIpAddress = {
            type = "string",
        },
        createdAt = {
            type = "timestamp",
        },
        updatedAt = {
            type = "timestamp",
        },
        blockDeviceMappings = {
            type = "list",
            member = M.InstanceBlockDeviceMapping,
        },
        securityGroups = {
            type = "list",
            member = M.SecurityGroupIdentifier,
        },
        cpuOptions = M.CpuOptions,
        rootDeviceName = {
            type = "string",
        },
    },
}

M.InstanceSummary = {
    type = "structure",
    id = "InstanceSummary",
    members = {
        instance = M.Instance,
        lastUpdatedAt = {
            type = "timestamp",
        },
    },
}

M.DescribeDeviceEc2InstancesOutput = {
    type = "structure",
    id = "DescribeDeviceEc2InstancesOutput",
    members = {
        instances = {
            type = "list",
            member = M.InstanceSummary,
        },
    },
}

M.DescribeExecutionInput = {
    type = "structure",
    id = "DescribeExecutionInput",
    members = {
        taskId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        managedDeviceId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.ExecutionState = {
    QUEUED = "QUEUED",
    IN_PROGRESS = "IN_PROGRESS",
    CANCELED = "CANCELED",
    FAILED = "FAILED",
    SUCCEEDED = "SUCCEEDED",
    REJECTED = "REJECTED",
    TIMED_OUT = "TIMED_OUT",
}

M.DescribeExecutionOutput = {
    type = "structure",
    id = "DescribeExecutionOutput",
    members = {
        taskId = {
            type = "string",
        },
        executionId = {
            type = "string",
        },
        managedDeviceId = {
            type = "string",
        },
        state = {
            type = "string",
        },
        startedAt = {
            type = "timestamp",
        },
        lastUpdatedAt = {
            type = "timestamp",
        },
    },
}

M.DescribeTaskInput = {
    type = "structure",
    id = "DescribeTaskInput",
    members = {
        taskId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.TaskState = {
    IN_PROGRESS = "IN_PROGRESS",
    CANCELED = "CANCELED",
    COMPLETED = "COMPLETED",
}

M.DescribeTaskOutput = {
    type = "structure",
    id = "DescribeTaskOutput",
    members = {
        taskId = {
            type = "string",
        },
        taskArn = {
            type = "string",
        },
        targets = {
            type = "list",
            member = { type = "string" },
        },
        state = {
            type = "string",
        },
        createdAt = {
            type = "timestamp",
        },
        lastUpdatedAt = {
            type = "timestamp",
        },
        completedAt = {
            type = "timestamp",
        },
        description = {
            type = "string",
        },
        tags = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
    },
}

M.DeviceSummary = {
    type = "structure",
    id = "DeviceSummary",
    members = {
        managedDeviceId = {
            type = "string",
        },
        managedDeviceArn = {
            type = "string",
        },
        associatedWithJob = {
            type = "string",
        },
        tags = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
    },
}

M.ListExecutionsInput = {
    type = "structure",
    id = "ListExecutionsInput",
    members = {
        taskId = {
            type = "string",
            traits = {
                http_query = "taskId",
                required = true,
            },
        },
        state = {
            type = "string",
            traits = {
                http_query = "state",
            },
        },
        maxResults = {
            type = "integer",
            traits = {
                http_query = "maxResults",
            },
        },
        nextToken = {
            type = "string",
            traits = {
                http_query = "nextToken",
            },
        },
    },
}

M.ExecutionSummary = {
    type = "structure",
    id = "ExecutionSummary",
    members = {
        taskId = {
            type = "string",
        },
        executionId = {
            type = "string",
        },
        managedDeviceId = {
            type = "string",
        },
        state = {
            type = "string",
        },
    },
}

M.ListExecutionsOutput = {
    type = "structure",
    id = "ListExecutionsOutput",
    members = {
        executions = {
            type = "list",
            member = M.ExecutionSummary,
        },
        nextToken = {
            type = "string",
        },
    },
}

M.ListDeviceResourcesInput = {
    type = "structure",
    id = "ListDeviceResourcesInput",
    members = {
        managedDeviceId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        type = {
            type = "string",
            traits = {
                http_query = "type",
            },
        },
        maxResults = {
            type = "integer",
            traits = {
                http_query = "maxResults",
            },
        },
        nextToken = {
            type = "string",
            traits = {
                http_query = "nextToken",
            },
        },
    },
}

M.ResourceSummary = {
    type = "structure",
    id = "ResourceSummary",
    members = {
        resourceType = {
            type = "string",
            traits = {
                required = true,
            },
        },
        arn = {
            type = "string",
        },
        id = {
            type = "string",
        },
    },
}

M.ListDeviceResourcesOutput = {
    type = "structure",
    id = "ListDeviceResourcesOutput",
    members = {
        resources = {
            type = "list",
            member = M.ResourceSummary,
        },
        nextToken = {
            type = "string",
        },
    },
}

M.ListDevicesInput = {
    type = "structure",
    id = "ListDevicesInput",
    members = {
        jobId = {
            type = "string",
            traits = {
                http_query = "jobId",
            },
        },
        maxResults = {
            type = "integer",
            traits = {
                http_query = "maxResults",
            },
        },
        nextToken = {
            type = "string",
            traits = {
                http_query = "nextToken",
            },
        },
    },
}

M.ListDevicesOutput = {
    type = "structure",
    id = "ListDevicesOutput",
    members = {
        devices = {
            type = "list",
            member = M.DeviceSummary,
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
                http_label = true,
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

M.ListTasksInput = {
    type = "structure",
    id = "ListTasksInput",
    members = {
        state = {
            type = "string",
            traits = {
                http_query = "state",
            },
        },
        maxResults = {
            type = "integer",
            traits = {
                http_query = "maxResults",
            },
        },
        nextToken = {
            type = "string",
            traits = {
                http_query = "nextToken",
            },
        },
    },
}

M.TaskSummary = {
    type = "structure",
    id = "TaskSummary",
    members = {
        taskId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        taskArn = {
            type = "string",
        },
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

M.ListTasksOutput = {
    type = "structure",
    id = "ListTasksOutput",
    members = {
        tasks = {
            type = "list",
            member = M.TaskSummary,
        },
        nextToken = {
            type = "string",
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
    id = "TagResourceOutput",
}

M.UntagResourceInput = {
    type = "structure",
    id = "UntagResourceInput",
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
    id = "UntagResourceOutput",
}

return M
