local M = {}

M.AccessDeniedException = {
    type = "structure",
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
    members = {
        taskId = {
            type = "string",
        },
    },
}

M.InternalServerException = {
    type = "structure",
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
    members = {
        name = {
            type = "string",
        },
        unit = {
            type = "string",
        },
        total = {
            type = "number",
        },
        used = {
            type = "number",
        },
        available = {
            type = "number",
        },
    },
}

M.Reboot = {
    type = "structure",
}

M.Unlock = {
    type = "structure",
}

M.Command = {
    type = "union",
    members = {
        unlock = {
            type = "structure",
        },
        reboot = {
            type = "structure",
        },
    },
}

M.CpuOptions = {
    type = "structure",
    members = {
        coreCount = {
            type = "number",
        },
        threadsPerCore = {
            type = "number",
        },
    },
}

M.CreateTaskInput = {
    type = "structure",
    members = {
        targets = {
            type = "list",
            member_type = "string",
            traits = {
                required = true,
            },
        },
        command = {
            type = "union",
            traits = {
                required = true,
            },
        },
        description = {
            type = "string",
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

M.CreateTaskOutput = {
    type = "structure",
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
    members = {
        lastReachedOutAt = {
            type = "timestamp",
        },
        lastUpdatedAt = {
            type = "timestamp",
        },
        tags = {
            type = "map",
            key_type = "string",
            value_type = "string",
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
            member_type = "structure",
        },
        deviceCapacities = {
            type = "list",
            member_type = "structure",
        },
        software = {
            type = "structure",
        },
    },
}

M.DescribeDeviceEc2InstancesInput = {
    type = "structure",
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
            member_type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.EbsInstanceBlockDevice = {
    type = "structure",
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
    members = {
        deviceName = {
            type = "string",
        },
        ebs = {
            type = "structure",
        },
    },
}

M.SecurityGroupIdentifier = {
    type = "structure",
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
    members = {
        code = {
            type = "number",
        },
        name = {
            type = "string",
        },
    },
}

M.Instance = {
    type = "structure",
    members = {
        imageId = {
            type = "string",
        },
        amiLaunchIndex = {
            type = "number",
        },
        instanceId = {
            type = "string",
        },
        state = {
            type = "structure",
        },
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
            member_type = "structure",
        },
        securityGroups = {
            type = "list",
            member_type = "structure",
        },
        cpuOptions = {
            type = "structure",
        },
        rootDeviceName = {
            type = "string",
        },
    },
}

M.InstanceSummary = {
    type = "structure",
    members = {
        instance = {
            type = "structure",
        },
        lastUpdatedAt = {
            type = "timestamp",
        },
    },
}

M.DescribeDeviceEc2InstancesOutput = {
    type = "structure",
    members = {
        instances = {
            type = "list",
            member_type = "structure",
        },
    },
}

M.DescribeExecutionInput = {
    type = "structure",
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
    members = {
        taskId = {
            type = "string",
        },
        taskArn = {
            type = "string",
        },
        targets = {
            type = "list",
            member_type = "string",
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
            key_type = "string",
            value_type = "string",
        },
    },
}

M.DeviceSummary = {
    type = "structure",
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
            key_type = "string",
            value_type = "string",
        },
    },
}

M.ListExecutionsInput = {
    type = "structure",
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
            type = "number",
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
    members = {
        executions = {
            type = "list",
            member_type = "structure",
        },
        nextToken = {
            type = "string",
        },
    },
}

M.ListDeviceResourcesInput = {
    type = "structure",
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
            type = "number",
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
    members = {
        resources = {
            type = "list",
            member_type = "structure",
        },
        nextToken = {
            type = "string",
        },
    },
}

M.ListDevicesInput = {
    type = "structure",
    members = {
        jobId = {
            type = "string",
            traits = {
                http_query = "jobId",
            },
        },
        maxResults = {
            type = "number",
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
    members = {
        devices = {
            type = "list",
            member_type = "structure",
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

M.ListTasksInput = {
    type = "structure",
    members = {
        state = {
            type = "string",
            traits = {
                http_query = "state",
            },
        },
        maxResults = {
            type = "number",
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
            key_type = "string",
            value_type = "string",
        },
    },
}

M.ListTasksOutput = {
    type = "structure",
    members = {
        tasks = {
            type = "list",
            member_type = "structure",
        },
        nextToken = {
            type = "string",
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

return M
