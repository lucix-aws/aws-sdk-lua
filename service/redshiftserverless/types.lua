local M = {}

M.AccessDeniedException = {
    type = "structure",
    error = "client",
    members = {
        code = {
            type = "string",
        },
        message = {
            type = "string",
        },
    },
}

M.Association = {
    type = "structure",
    members = {
        customDomainCertificateArn = {
            type = "string",
        },
        customDomainCertificateExpiryTime = {
            type = "timestamp",
            traits = {
                timestamp_format = "date-time",
            },
        },
        customDomainName = {
            type = "string",
        },
        workgroupName = {
            type = "string",
        },
    },
}

M.ConfigParameter = {
    type = "structure",
    members = {
        parameterKey = {
            type = "string",
        },
        parameterValue = {
            type = "string",
        },
    },
}

M.ConflictException = {
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

M.Tag = {
    type = "structure",
    members = {
        key = {
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

M.ConvertRecoveryPointToSnapshotInput = {
    type = "structure",
    members = {
        recoveryPointId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        snapshotName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        retentionPeriod = {
            type = "integer",
        },
        tags = {
            type = "list",
            member = M.Tag,
        },
    },
}

M.SnapshotStatus = {
    AVAILABLE = "AVAILABLE",
    CREATING = "CREATING",
    DELETED = "DELETED",
    CANCELLED = "CANCELLED",
    FAILED = "FAILED",
    COPYING = "COPYING",
}

M.Snapshot = {
    type = "structure",
    members = {
        namespaceName = {
            type = "string",
        },
        namespaceArn = {
            type = "string",
        },
        snapshotName = {
            type = "string",
        },
        snapshotCreateTime = {
            type = "timestamp",
            traits = {
                timestamp_format = "date-time",
            },
        },
        adminUsername = {
            type = "string",
        },
        status = {
            type = "string",
        },
        kmsKeyId = {
            type = "string",
        },
        ownerAccount = {
            type = "string",
        },
        totalBackupSizeInMegaBytes = {
            type = "double",
        },
        actualIncrementalBackupSizeInMegaBytes = {
            type = "double",
        },
        backupProgressInMegaBytes = {
            type = "double",
        },
        currentBackupRateInMegaBytesPerSecond = {
            type = "double",
        },
        estimatedSecondsToCompletion = {
            type = "long",
        },
        elapsedTimeInSeconds = {
            type = "long",
        },
        snapshotRetentionPeriod = {
            type = "integer",
        },
        snapshotRemainingDays = {
            type = "integer",
        },
        snapshotRetentionStartTime = {
            type = "timestamp",
            traits = {
                timestamp_format = "date-time",
            },
        },
        snapshotArn = {
            type = "string",
        },
        accountsWithRestoreAccess = {
            type = "list",
            member = { type = "string" },
        },
        accountsWithProvisionedRestoreAccess = {
            type = "list",
            member = { type = "string" },
        },
        adminPasswordSecretArn = {
            type = "string",
        },
        adminPasswordSecretKmsKeyId = {
            type = "string",
        },
    },
}

M.ConvertRecoveryPointToSnapshotOutput = {
    type = "structure",
    members = {
        snapshot = M.Snapshot,
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
        resourceName = {
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

M.TooManyTagsException = {
    type = "structure",
    error = "client",
    members = {
        message = {
            type = "string",
        },
        resourceName = {
            type = "string",
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

M.CreateCustomDomainAssociationInput = {
    type = "structure",
    members = {
        workgroupName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        customDomainName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        customDomainCertificateArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.CreateCustomDomainAssociationOutput = {
    type = "structure",
    members = {
        customDomainName = {
            type = "string",
        },
        workgroupName = {
            type = "string",
        },
        customDomainCertificateArn = {
            type = "string",
        },
        customDomainCertificateExpiryTime = {
            type = "timestamp",
            traits = {
                timestamp_format = "date-time",
            },
        },
    },
}

M.ThrottlingException = {
    type = "structure",
    error = "client",
    members = {
        code = {
            type = "string",
        },
        message = {
            type = "string",
        },
    },
}

M.CreateEndpointAccessInput = {
    type = "structure",
    members = {
        endpointName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        subnetIds = {
            type = "list",
            member = { type = "string" },
            traits = {
                required = true,
            },
        },
        workgroupName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        vpcSecurityGroupIds = {
            type = "list",
            member = { type = "string" },
        },
        ownerAccount = {
            type = "string",
        },
    },
}

M.NetworkInterface = {
    type = "structure",
    members = {
        networkInterfaceId = {
            type = "string",
        },
        subnetId = {
            type = "string",
        },
        privateIpAddress = {
            type = "string",
        },
        availabilityZone = {
            type = "string",
        },
        ipv6Address = {
            type = "string",
        },
    },
}

M.VpcEndpoint = {
    type = "structure",
    members = {
        vpcEndpointId = {
            type = "string",
        },
        vpcId = {
            type = "string",
        },
        networkInterfaces = {
            type = "list",
            member = M.NetworkInterface,
        },
    },
}

M.VpcSecurityGroupMembership = {
    type = "structure",
    members = {
        vpcSecurityGroupId = {
            type = "string",
        },
        status = {
            type = "string",
        },
    },
}

M.EndpointAccess = {
    type = "structure",
    members = {
        endpointName = {
            type = "string",
        },
        endpointStatus = {
            type = "string",
        },
        workgroupName = {
            type = "string",
        },
        endpointCreateTime = {
            type = "timestamp",
            traits = {
                timestamp_format = "date-time",
            },
        },
        port = {
            type = "integer",
        },
        address = {
            type = "string",
        },
        subnetIds = {
            type = "list",
            member = { type = "string" },
        },
        vpcSecurityGroups = {
            type = "list",
            member = M.VpcSecurityGroupMembership,
        },
        vpcEndpoint = M.VpcEndpoint,
        endpointArn = {
            type = "string",
        },
    },
}

M.CreateEndpointAccessOutput = {
    type = "structure",
    members = {
        endpoint = M.EndpointAccess,
    },
}

M.LogExport = {
    USER_ACTIVITY_LOG = "useractivitylog",
    USER_LOG = "userlog",
    CONNECTION_LOG = "connectionlog",
}

M.CreateNamespaceInput = {
    type = "structure",
    members = {
        namespaceName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        adminUsername = {
            type = "string",
        },
        adminUserPassword = {
            type = "string",
        },
        dbName = {
            type = "string",
        },
        kmsKeyId = {
            type = "string",
        },
        defaultIamRoleArn = {
            type = "string",
        },
        iamRoles = {
            type = "list",
            member = { type = "string" },
        },
        logExports = {
            type = "list",
            member = { type = "string" },
        },
        tags = {
            type = "list",
            member = M.Tag,
        },
        manageAdminPassword = {
            type = "boolean",
        },
        adminPasswordSecretKmsKeyId = {
            type = "string",
        },
        redshiftIdcApplicationArn = {
            type = "string",
        },
    },
}

M.NamespaceStatus = {
    AVAILABLE = "AVAILABLE",
    MODIFYING = "MODIFYING",
    DELETING = "DELETING",
}

M.Namespace = {
    type = "structure",
    members = {
        namespaceArn = {
            type = "string",
        },
        namespaceId = {
            type = "string",
        },
        namespaceName = {
            type = "string",
        },
        adminUsername = {
            type = "string",
        },
        dbName = {
            type = "string",
        },
        kmsKeyId = {
            type = "string",
        },
        defaultIamRoleArn = {
            type = "string",
        },
        iamRoles = {
            type = "list",
            member = { type = "string" },
        },
        logExports = {
            type = "list",
            member = { type = "string" },
        },
        status = {
            type = "string",
        },
        creationDate = {
            type = "timestamp",
            traits = {
                timestamp_format = "date-time",
            },
        },
        adminPasswordSecretArn = {
            type = "string",
        },
        adminPasswordSecretKmsKeyId = {
            type = "string",
        },
        lakehouseRegistrationStatus = {
            type = "string",
        },
        catalogArn = {
            type = "string",
        },
    },
}

M.CreateNamespaceOutput = {
    type = "structure",
    members = {
        namespace = M.Namespace,
    },
}

M.CreateReservationInput = {
    type = "structure",
    members = {
        capacity = {
            type = "integer",
            traits = {
                default = 0,
                required = true,
            },
        },
        offeringId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        clientToken = {
            type = "string",
            traits = {
                idempotency_token = true,
            },
        },
    },
}

M.OfferingType = {
    ALL_UPFRONT = "ALL_UPFRONT",
    NO_UPFRONT = "NO_UPFRONT",
}

M.ReservationOffering = {
    type = "structure",
    members = {
        offeringId = {
            type = "string",
        },
        duration = {
            type = "integer",
            traits = {
                default = 0,
            },
        },
        upfrontCharge = {
            type = "double",
            traits = {
                default = 0,
            },
        },
        hourlyCharge = {
            type = "double",
            traits = {
                default = 0,
            },
        },
        currencyCode = {
            type = "string",
        },
        offeringType = {
            type = "string",
        },
    },
}

M.Reservation = {
    type = "structure",
    members = {
        reservationId = {
            type = "string",
        },
        reservationArn = {
            type = "string",
        },
        startDate = {
            type = "timestamp",
            traits = {
                timestamp_format = "date-time",
            },
        },
        endDate = {
            type = "timestamp",
            traits = {
                timestamp_format = "date-time",
            },
        },
        capacity = {
            type = "integer",
            traits = {
                default = 0,
            },
        },
        offering = M.ReservationOffering,
        status = {
            type = "string",
        },
    },
}

M.CreateReservationOutput = {
    type = "structure",
    members = {
        reservation = M.Reservation,
    },
}

M.Schedule = {
    type = "union",
    members = {
        at = {
            type = "timestamp",
        },
        cron = {
            type = "string",
        },
    },
}

M.CreateSnapshotScheduleActionParameters = {
    type = "structure",
    members = {
        namespaceName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        snapshotNamePrefix = {
            type = "string",
            traits = {
                required = true,
            },
        },
        retentionPeriod = {
            type = "integer",
        },
        tags = {
            type = "list",
            member = M.Tag,
        },
    },
}

M.TargetAction = {
    type = "union",
    members = {
        createSnapshot = M.CreateSnapshotScheduleActionParameters,
    },
}

M.CreateScheduledActionInput = {
    type = "structure",
    members = {
        scheduledActionName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        targetAction = setmetatable({ traits = {
            required = true,
        } }, { __index = M.TargetAction }),
        schedule = setmetatable({ traits = {
            required = true,
        } }, { __index = M.Schedule }),
        roleArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        namespaceName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        enabled = {
            type = "boolean",
        },
        scheduledActionDescription = {
            type = "string",
        },
        startTime = {
            type = "timestamp",
        },
        endTime = {
            type = "timestamp",
        },
    },
}

M.State = {
    ACTIVE = "ACTIVE",
    DISABLED = "DISABLED",
}

M.ScheduledActionResponse = {
    type = "structure",
    members = {
        scheduledActionName = {
            type = "string",
        },
        schedule = M.Schedule,
        scheduledActionDescription = {
            type = "string",
        },
        nextInvocations = {
            type = "list",
            member = { type = "timestamp" },
        },
        roleArn = {
            type = "string",
        },
        state = {
            type = "string",
        },
        startTime = {
            type = "timestamp",
        },
        endTime = {
            type = "timestamp",
        },
        targetAction = M.TargetAction,
        namespaceName = {
            type = "string",
        },
        scheduledActionUuid = {
            type = "string",
        },
    },
}

M.CreateScheduledActionOutput = {
    type = "structure",
    members = {
        scheduledAction = M.ScheduledActionResponse,
    },
}

M.CreateSnapshotInput = {
    type = "structure",
    members = {
        namespaceName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        snapshotName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        retentionPeriod = {
            type = "integer",
        },
        tags = {
            type = "list",
            member = M.Tag,
        },
    },
}

M.CreateSnapshotOutput = {
    type = "structure",
    members = {
        snapshot = M.Snapshot,
    },
}

M.CreateSnapshotCopyConfigurationInput = {
    type = "structure",
    members = {
        namespaceName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        destinationRegion = {
            type = "string",
            traits = {
                required = true,
            },
        },
        snapshotRetentionPeriod = {
            type = "integer",
        },
        destinationKmsKeyId = {
            type = "string",
        },
    },
}

M.SnapshotCopyConfiguration = {
    type = "structure",
    members = {
        snapshotCopyConfigurationId = {
            type = "string",
        },
        snapshotCopyConfigurationArn = {
            type = "string",
        },
        namespaceName = {
            type = "string",
        },
        destinationRegion = {
            type = "string",
        },
        snapshotRetentionPeriod = {
            type = "integer",
        },
        destinationKmsKeyId = {
            type = "string",
        },
    },
}

M.CreateSnapshotCopyConfigurationOutput = {
    type = "structure",
    members = {
        snapshotCopyConfiguration = setmetatable({ traits = {
            required = true,
        } }, { __index = M.SnapshotCopyConfiguration }),
    },
}

M.UsageLimitBreachAction = {
    LOG = "log",
    EMIT_METRIC = "emit-metric",
    DEACTIVATE = "deactivate",
}

M.UsageLimitPeriod = {
    DAILY = "daily",
    WEEKLY = "weekly",
    MONTHLY = "monthly",
}

M.UsageLimitUsageType = {
    SERVERLESS_COMPUTE = "serverless-compute",
    CROSS_REGION_DATASHARING = "cross-region-datasharing",
}

M.CreateUsageLimitInput = {
    type = "structure",
    members = {
        resourceArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        usageType = {
            type = "string",
            traits = {
                required = true,
            },
        },
        amount = {
            type = "long",
            traits = {
                required = true,
            },
        },
        period = {
            type = "string",
        },
        breachAction = {
            type = "string",
        },
    },
}

M.UsageLimit = {
    type = "structure",
    members = {
        usageLimitId = {
            type = "string",
        },
        usageLimitArn = {
            type = "string",
        },
        resourceArn = {
            type = "string",
        },
        usageType = {
            type = "string",
        },
        amount = {
            type = "long",
        },
        period = {
            type = "string",
        },
        breachAction = {
            type = "string",
        },
    },
}

M.CreateUsageLimitOutput = {
    type = "structure",
    members = {
        usageLimit = M.UsageLimit,
    },
}

M.PerformanceTargetStatus = {
    ENABLED = "ENABLED",
    DISABLED = "DISABLED",
}

M.PerformanceTarget = {
    type = "structure",
    members = {
        status = {
            type = "string",
        },
        level = {
            type = "integer",
        },
    },
}

M.CreateWorkgroupInput = {
    type = "structure",
    members = {
        workgroupName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        namespaceName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        baseCapacity = {
            type = "integer",
        },
        enhancedVpcRouting = {
            type = "boolean",
        },
        configParameters = {
            type = "list",
            member = M.ConfigParameter,
        },
        securityGroupIds = {
            type = "list",
            member = { type = "string" },
        },
        subnetIds = {
            type = "list",
            member = { type = "string" },
        },
        publiclyAccessible = {
            type = "boolean",
        },
        tags = {
            type = "list",
            member = M.Tag,
        },
        port = {
            type = "integer",
        },
        maxCapacity = {
            type = "integer",
        },
        pricePerformanceTarget = M.PerformanceTarget,
        ipAddressType = {
            type = "string",
        },
        trackName = {
            type = "string",
        },
        extraComputeForAutomaticOptimization = {
            type = "boolean",
        },
    },
}

M.Endpoint = {
    type = "structure",
    members = {
        address = {
            type = "string",
        },
        port = {
            type = "integer",
        },
        vpcEndpoints = {
            type = "list",
            member = M.VpcEndpoint,
        },
    },
}

M.WorkgroupStatus = {
    CREATING = "CREATING",
    AVAILABLE = "AVAILABLE",
    MODIFYING = "MODIFYING",
    DELETING = "DELETING",
}

M.Workgroup = {
    type = "structure",
    members = {
        workgroupId = {
            type = "string",
        },
        workgroupArn = {
            type = "string",
        },
        workgroupName = {
            type = "string",
        },
        namespaceName = {
            type = "string",
        },
        baseCapacity = {
            type = "integer",
        },
        enhancedVpcRouting = {
            type = "boolean",
        },
        configParameters = {
            type = "list",
            member = M.ConfigParameter,
        },
        securityGroupIds = {
            type = "list",
            member = { type = "string" },
        },
        subnetIds = {
            type = "list",
            member = { type = "string" },
        },
        status = {
            type = "string",
        },
        endpoint = M.Endpoint,
        publiclyAccessible = {
            type = "boolean",
        },
        creationDate = {
            type = "timestamp",
            traits = {
                timestamp_format = "date-time",
            },
        },
        port = {
            type = "integer",
        },
        customDomainName = {
            type = "string",
        },
        customDomainCertificateArn = {
            type = "string",
        },
        customDomainCertificateExpiryTime = {
            type = "timestamp",
            traits = {
                timestamp_format = "date-time",
            },
        },
        workgroupVersion = {
            type = "string",
        },
        patchVersion = {
            type = "string",
        },
        maxCapacity = {
            type = "integer",
        },
        crossAccountVpcs = {
            type = "list",
            member = { type = "string" },
        },
        ipAddressType = {
            type = "string",
        },
        pricePerformanceTarget = M.PerformanceTarget,
        trackName = {
            type = "string",
        },
        pendingTrackName = {
            type = "string",
        },
        extraComputeForAutomaticOptimization = {
            type = "boolean",
        },
    },
}

M.CreateWorkgroupOutput = {
    type = "structure",
    members = {
        workgroup = M.Workgroup,
    },
}

M.InsufficientCapacityException = {
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

M.Ipv6CidrBlockNotFoundException = {
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

M.DeleteEndpointAccessInput = {
    type = "structure",
    members = {
        endpointName = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.DeleteEndpointAccessOutput = {
    type = "structure",
    members = {
        endpoint = M.EndpointAccess,
    },
}

M.GetEndpointAccessInput = {
    type = "structure",
    members = {
        endpointName = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.GetEndpointAccessOutput = {
    type = "structure",
    members = {
        endpoint = M.EndpointAccess,
    },
}

M.ListEndpointAccessInput = {
    type = "structure",
    members = {
        nextToken = {
            type = "string",
            traits = {
                http_query = "nextToken",
            },
        },
        maxResults = {
            type = "integer",
            traits = {
                default = nil,
                http_query = "maxResults",
            },
        },
        workgroupName = {
            type = "string",
        },
        vpcId = {
            type = "string",
        },
        ownerAccount = {
            type = "string",
        },
    },
}

M.ListEndpointAccessOutput = {
    type = "structure",
    members = {
        nextToken = {
            type = "string",
        },
        endpoints = {
            type = "list",
            member = M.EndpointAccess,
            traits = {
                required = true,
            },
        },
    },
}

M.UpdateEndpointAccessInput = {
    type = "structure",
    members = {
        endpointName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        vpcSecurityGroupIds = {
            type = "list",
            member = { type = "string" },
        },
    },
}

M.UpdateEndpointAccessOutput = {
    type = "structure",
    members = {
        endpoint = M.EndpointAccess,
    },
}

M.DeleteCustomDomainAssociationInput = {
    type = "structure",
    members = {
        workgroupName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        customDomainName = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.DeleteCustomDomainAssociationOutput = {
    type = "structure",
}

M.DeleteNamespaceInput = {
    type = "structure",
    members = {
        namespaceName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        finalSnapshotName = {
            type = "string",
        },
        finalSnapshotRetentionPeriod = {
            type = "integer",
        },
    },
}

M.DeleteNamespaceOutput = {
    type = "structure",
    members = {
        namespace = setmetatable({ traits = {
            required = true,
        } }, { __index = M.Namespace }),
    },
}

M.DeleteResourcePolicyInput = {
    type = "structure",
    members = {
        resourceArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.DeleteResourcePolicyOutput = {
    type = "structure",
}

M.DeleteScheduledActionInput = {
    type = "structure",
    members = {
        scheduledActionName = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.DeleteScheduledActionOutput = {
    type = "structure",
    members = {
        scheduledAction = M.ScheduledActionResponse,
    },
}

M.DeleteSnapshotInput = {
    type = "structure",
    members = {
        snapshotName = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.DeleteSnapshotOutput = {
    type = "structure",
    members = {
        snapshot = M.Snapshot,
    },
}

M.DeleteSnapshotCopyConfigurationInput = {
    type = "structure",
    members = {
        snapshotCopyConfigurationId = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.DeleteSnapshotCopyConfigurationOutput = {
    type = "structure",
    members = {
        snapshotCopyConfiguration = setmetatable({ traits = {
            required = true,
        } }, { __index = M.SnapshotCopyConfiguration }),
    },
}

M.DeleteUsageLimitInput = {
    type = "structure",
    members = {
        usageLimitId = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.DeleteUsageLimitOutput = {
    type = "structure",
    members = {
        usageLimit = M.UsageLimit,
    },
}

M.DeleteWorkgroupInput = {
    type = "structure",
    members = {
        workgroupName = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.DeleteWorkgroupOutput = {
    type = "structure",
    members = {
        workgroup = setmetatable({ traits = {
            required = true,
        } }, { __index = M.Workgroup }),
    },
}

M.DryRunException = {
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

M.GetCredentialsInput = {
    type = "structure",
    members = {
        dbName = {
            type = "string",
        },
        durationSeconds = {
            type = "integer",
        },
        workgroupName = {
            type = "string",
        },
        customDomainName = {
            type = "string",
        },
    },
}

M.GetCredentialsOutput = {
    type = "structure",
    members = {
        dbUser = {
            type = "string",
        },
        dbPassword = {
            type = "string",
        },
        expiration = {
            type = "timestamp",
        },
        nextRefreshTime = {
            type = "timestamp",
        },
    },
}

M.GetCustomDomainAssociationInput = {
    type = "structure",
    members = {
        customDomainName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        workgroupName = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.GetCustomDomainAssociationOutput = {
    type = "structure",
    members = {
        customDomainName = {
            type = "string",
        },
        workgroupName = {
            type = "string",
        },
        customDomainCertificateArn = {
            type = "string",
        },
        customDomainCertificateExpiryTime = {
            type = "timestamp",
            traits = {
                timestamp_format = "date-time",
            },
        },
    },
}

M.GetIdentityCenterAuthTokenInput = {
    type = "structure",
    members = {
        workgroupNames = {
            type = "list",
            member = { type = "string" },
            traits = {
                required = true,
            },
        },
    },
}

M.GetIdentityCenterAuthTokenOutput = {
    type = "structure",
    members = {
        token = {
            type = "string",
            traits = {
                json_name = "Token",
            },
        },
        expirationTime = {
            type = "timestamp",
            traits = {
                json_name = "ExpirationTime",
                timestamp_format = "date-time",
            },
        },
    },
}

M.GetNamespaceInput = {
    type = "structure",
    members = {
        namespaceName = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.GetNamespaceOutput = {
    type = "structure",
    members = {
        namespace = setmetatable({ traits = {
            required = true,
        } }, { __index = M.Namespace }),
    },
}

M.GetRecoveryPointInput = {
    type = "structure",
    members = {
        recoveryPointId = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.RecoveryPoint = {
    type = "structure",
    members = {
        recoveryPointId = {
            type = "string",
        },
        recoveryPointCreateTime = {
            type = "timestamp",
            traits = {
                timestamp_format = "date-time",
            },
        },
        totalSizeInMegaBytes = {
            type = "double",
        },
        namespaceName = {
            type = "string",
        },
        workgroupName = {
            type = "string",
        },
        namespaceArn = {
            type = "string",
        },
    },
}

M.GetRecoveryPointOutput = {
    type = "structure",
    members = {
        recoveryPoint = M.RecoveryPoint,
    },
}

M.GetReservationInput = {
    type = "structure",
    members = {
        reservationId = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.GetReservationOutput = {
    type = "structure",
    members = {
        reservation = setmetatable({ traits = {
            required = true,
        } }, { __index = M.Reservation }),
    },
}

M.GetReservationOfferingInput = {
    type = "structure",
    members = {
        offeringId = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.GetReservationOfferingOutput = {
    type = "structure",
    members = {
        reservationOffering = setmetatable({ traits = {
            required = true,
        } }, { __index = M.ReservationOffering }),
    },
}

M.GetResourcePolicyInput = {
    type = "structure",
    members = {
        resourceArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.ResourcePolicy = {
    type = "structure",
    members = {
        resourceArn = {
            type = "string",
        },
        policy = {
            type = "string",
        },
    },
}

M.GetResourcePolicyOutput = {
    type = "structure",
    members = {
        resourcePolicy = M.ResourcePolicy,
    },
}

M.GetScheduledActionInput = {
    type = "structure",
    members = {
        scheduledActionName = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.GetScheduledActionOutput = {
    type = "structure",
    members = {
        scheduledAction = M.ScheduledActionResponse,
    },
}

M.GetSnapshotInput = {
    type = "structure",
    members = {
        snapshotName = {
            type = "string",
        },
        ownerAccount = {
            type = "string",
        },
        snapshotArn = {
            type = "string",
        },
    },
}

M.GetSnapshotOutput = {
    type = "structure",
    members = {
        snapshot = M.Snapshot,
    },
}

M.GetTableRestoreStatusInput = {
    type = "structure",
    members = {
        tableRestoreRequestId = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.TableRestoreStatus = {
    type = "structure",
    members = {
        tableRestoreRequestId = {
            type = "string",
        },
        status = {
            type = "string",
        },
        message = {
            type = "string",
        },
        requestTime = {
            type = "timestamp",
        },
        namespaceName = {
            type = "string",
        },
        workgroupName = {
            type = "string",
        },
        snapshotName = {
            type = "string",
        },
        progressInMegaBytes = {
            type = "long",
        },
        totalDataInMegaBytes = {
            type = "long",
        },
        sourceDatabaseName = {
            type = "string",
        },
        sourceSchemaName = {
            type = "string",
        },
        sourceTableName = {
            type = "string",
        },
        targetDatabaseName = {
            type = "string",
        },
        targetSchemaName = {
            type = "string",
        },
        newTableName = {
            type = "string",
        },
        recoveryPointId = {
            type = "string",
        },
    },
}

M.GetTableRestoreStatusOutput = {
    type = "structure",
    members = {
        tableRestoreStatus = M.TableRestoreStatus,
    },
}

M.GetTrackInput = {
    type = "structure",
    members = {
        trackName = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.UpdateTarget = {
    type = "structure",
    members = {
        trackName = {
            type = "string",
        },
        workgroupVersion = {
            type = "string",
        },
    },
}

M.ServerlessTrack = {
    type = "structure",
    members = {
        trackName = {
            type = "string",
        },
        workgroupVersion = {
            type = "string",
        },
        updateTargets = {
            type = "list",
            member = M.UpdateTarget,
        },
    },
}

M.GetTrackOutput = {
    type = "structure",
    members = {
        track = M.ServerlessTrack,
    },
}

M.GetUsageLimitInput = {
    type = "structure",
    members = {
        usageLimitId = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.GetUsageLimitOutput = {
    type = "structure",
    members = {
        usageLimit = M.UsageLimit,
    },
}

M.GetWorkgroupInput = {
    type = "structure",
    members = {
        workgroupName = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.GetWorkgroupOutput = {
    type = "structure",
    members = {
        workgroup = setmetatable({ traits = {
            required = true,
        } }, { __index = M.Workgroup }),
    },
}

M.InvalidPaginationException = {
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

M.LakehouseIdcRegistration = {
    ASSOCIATE = "Associate",
    DISASSOCIATE = "Disassociate",
}

M.LakehouseRegistration = {
    REGISTER = "Register",
    DEREGISTER = "Deregister",
}

M.ListCustomDomainAssociationsInput = {
    type = "structure",
    members = {
        nextToken = {
            type = "string",
            traits = {
                http_query = "nextToken",
            },
        },
        maxResults = {
            type = "integer",
            traits = {
                default = nil,
                http_query = "maxResults",
            },
        },
        customDomainName = {
            type = "string",
        },
        customDomainCertificateArn = {
            type = "string",
        },
    },
}

M.ListCustomDomainAssociationsOutput = {
    type = "structure",
    members = {
        nextToken = {
            type = "string",
        },
        associations = {
            type = "list",
            member = M.Association,
        },
    },
}

M.ListManagedWorkgroupsInput = {
    type = "structure",
    members = {
        sourceArn = {
            type = "string",
        },
        nextToken = {
            type = "string",
            traits = {
                http_query = "nextToken",
            },
        },
        maxResults = {
            type = "integer",
            traits = {
                http_query = "maxResults",
            },
        },
    },
}

M.ManagedWorkgroupStatus = {
    CREATING = "CREATING",
    DELETING = "DELETING",
    MODIFYING = "MODIFYING",
    AVAILABLE = "AVAILABLE",
    NOT_AVAILABLE = "NOT_AVAILABLE",
}

M.ManagedWorkgroupListItem = {
    type = "structure",
    members = {
        managedWorkgroupName = {
            type = "string",
        },
        managedWorkgroupId = {
            type = "string",
        },
        sourceArn = {
            type = "string",
        },
        status = {
            type = "string",
        },
        creationDate = {
            type = "timestamp",
            traits = {
                timestamp_format = "date-time",
            },
        },
    },
}

M.ListManagedWorkgroupsOutput = {
    type = "structure",
    members = {
        nextToken = {
            type = "string",
        },
        managedWorkgroups = {
            type = "list",
            member = M.ManagedWorkgroupListItem,
        },
    },
}

M.ListNamespacesInput = {
    type = "structure",
    members = {
        nextToken = {
            type = "string",
            traits = {
                http_query = "nextToken",
            },
        },
        maxResults = {
            type = "integer",
            traits = {
                default = nil,
                http_query = "maxResults",
            },
        },
    },
}

M.ListNamespacesOutput = {
    type = "structure",
    members = {
        nextToken = {
            type = "string",
        },
        namespaces = {
            type = "list",
            member = M.Namespace,
            traits = {
                required = true,
            },
        },
    },
}

M.ListRecoveryPointsInput = {
    type = "structure",
    members = {
        nextToken = {
            type = "string",
            traits = {
                http_query = "nextToken",
            },
        },
        maxResults = {
            type = "integer",
            traits = {
                default = nil,
                http_query = "maxResults",
            },
        },
        startTime = {
            type = "timestamp",
        },
        endTime = {
            type = "timestamp",
        },
        namespaceName = {
            type = "string",
        },
        namespaceArn = {
            type = "string",
        },
    },
}

M.ListRecoveryPointsOutput = {
    type = "structure",
    members = {
        recoveryPoints = {
            type = "list",
            member = M.RecoveryPoint,
        },
        nextToken = {
            type = "string",
        },
    },
}

M.ListReservationOfferingsInput = {
    type = "structure",
    members = {
        nextToken = {
            type = "string",
            traits = {
                http_query = "nextToken",
            },
        },
        maxResults = {
            type = "integer",
            traits = {
                default = nil,
                http_query = "maxResults",
            },
        },
    },
}

M.ListReservationOfferingsOutput = {
    type = "structure",
    members = {
        reservationOfferingsList = {
            type = "list",
            member = M.ReservationOffering,
            traits = {
                required = true,
            },
        },
        nextToken = {
            type = "string",
        },
    },
}

M.ListReservationsInput = {
    type = "structure",
    members = {
        nextToken = {
            type = "string",
            traits = {
                http_query = "nextToken",
            },
        },
        maxResults = {
            type = "integer",
            traits = {
                default = nil,
                http_query = "maxResults",
            },
        },
    },
}

M.ListReservationsOutput = {
    type = "structure",
    members = {
        reservationsList = {
            type = "list",
            member = M.Reservation,
            traits = {
                required = true,
            },
        },
        nextToken = {
            type = "string",
        },
    },
}

M.ListScheduledActionsInput = {
    type = "structure",
    members = {
        nextToken = {
            type = "string",
            traits = {
                http_query = "nextToken",
            },
        },
        maxResults = {
            type = "integer",
            traits = {
                default = nil,
                http_query = "maxResults",
            },
        },
        namespaceName = {
            type = "string",
        },
    },
}

M.ScheduledActionAssociation = {
    type = "structure",
    members = {
        namespaceName = {
            type = "string",
        },
        scheduledActionName = {
            type = "string",
        },
    },
}

M.ListScheduledActionsOutput = {
    type = "structure",
    members = {
        nextToken = {
            type = "string",
        },
        scheduledActions = {
            type = "list",
            member = M.ScheduledActionAssociation,
        },
    },
}

M.ListSnapshotCopyConfigurationsInput = {
    type = "structure",
    members = {
        namespaceName = {
            type = "string",
        },
        nextToken = {
            type = "string",
            traits = {
                http_query = "nextToken",
            },
        },
        maxResults = {
            type = "integer",
            traits = {
                default = nil,
                http_query = "maxResults",
            },
        },
    },
}

M.ListSnapshotCopyConfigurationsOutput = {
    type = "structure",
    members = {
        nextToken = {
            type = "string",
        },
        snapshotCopyConfigurations = {
            type = "list",
            member = M.SnapshotCopyConfiguration,
            traits = {
                required = true,
            },
        },
    },
}

M.ListSnapshotsInput = {
    type = "structure",
    members = {
        nextToken = {
            type = "string",
            traits = {
                http_query = "nextToken",
            },
        },
        maxResults = {
            type = "integer",
            traits = {
                default = nil,
                http_query = "maxResults",
            },
        },
        namespaceName = {
            type = "string",
        },
        namespaceArn = {
            type = "string",
        },
        ownerAccount = {
            type = "string",
        },
        startTime = {
            type = "timestamp",
        },
        endTime = {
            type = "timestamp",
        },
    },
}

M.ListSnapshotsOutput = {
    type = "structure",
    members = {
        nextToken = {
            type = "string",
        },
        snapshots = {
            type = "list",
            member = M.Snapshot,
        },
    },
}

M.ListTableRestoreStatusInput = {
    type = "structure",
    members = {
        nextToken = {
            type = "string",
            traits = {
                http_query = "nextToken",
            },
        },
        maxResults = {
            type = "integer",
            traits = {
                default = nil,
                http_query = "maxResults",
            },
        },
        namespaceName = {
            type = "string",
        },
        workgroupName = {
            type = "string",
        },
    },
}

M.ListTableRestoreStatusOutput = {
    type = "structure",
    members = {
        nextToken = {
            type = "string",
        },
        tableRestoreStatuses = {
            type = "list",
            member = M.TableRestoreStatus,
        },
    },
}

M.ListTagsForResourceInput = {
    type = "structure",
    members = {
        resourceArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.ListTagsForResourceOutput = {
    type = "structure",
    members = {
        tags = {
            type = "list",
            member = M.Tag,
        },
    },
}

M.ListTracksInput = {
    type = "structure",
    members = {
        nextToken = {
            type = "string",
            traits = {
                http_query = "nextToken",
            },
        },
        maxResults = {
            type = "integer",
            traits = {
                default = nil,
                http_query = "maxResults",
            },
        },
    },
}

M.ListTracksOutput = {
    type = "structure",
    members = {
        tracks = {
            type = "list",
            member = M.ServerlessTrack,
        },
        nextToken = {
            type = "string",
        },
    },
}

M.ListUsageLimitsInput = {
    type = "structure",
    members = {
        resourceArn = {
            type = "string",
        },
        usageType = {
            type = "string",
        },
        nextToken = {
            type = "string",
            traits = {
                http_query = "nextToken",
            },
        },
        maxResults = {
            type = "integer",
            traits = {
                default = nil,
                http_query = "maxResults",
            },
        },
    },
}

M.ListUsageLimitsOutput = {
    type = "structure",
    members = {
        usageLimits = {
            type = "list",
            member = M.UsageLimit,
        },
        nextToken = {
            type = "string",
        },
    },
}

M.ListWorkgroupsInput = {
    type = "structure",
    members = {
        nextToken = {
            type = "string",
            traits = {
                http_query = "nextToken",
            },
        },
        maxResults = {
            type = "integer",
            traits = {
                default = nil,
                http_query = "maxResults",
            },
        },
        ownerAccount = {
            type = "string",
        },
    },
}

M.ListWorkgroupsOutput = {
    type = "structure",
    members = {
        nextToken = {
            type = "string",
        },
        workgroups = {
            type = "list",
            member = M.Workgroup,
            traits = {
                required = true,
            },
        },
    },
}

M.UpdateLakehouseConfigurationInput = {
    type = "structure",
    members = {
        namespaceName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        lakehouseRegistration = {
            type = "string",
        },
        catalogName = {
            type = "string",
        },
        lakehouseIdcRegistration = {
            type = "string",
        },
        lakehouseIdcApplicationArn = {
            type = "string",
        },
        dryRun = {
            type = "boolean",
        },
    },
}

M.UpdateLakehouseConfigurationOutput = {
    type = "structure",
    members = {
        namespaceName = {
            type = "string",
        },
        lakehouseIdcApplicationArn = {
            type = "string",
        },
        lakehouseRegistrationStatus = {
            type = "string",
        },
        catalogArn = {
            type = "string",
        },
    },
}

M.UpdateNamespaceInput = {
    type = "structure",
    members = {
        namespaceName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        adminUserPassword = {
            type = "string",
        },
        adminUsername = {
            type = "string",
        },
        kmsKeyId = {
            type = "string",
        },
        defaultIamRoleArn = {
            type = "string",
        },
        iamRoles = {
            type = "list",
            member = { type = "string" },
        },
        logExports = {
            type = "list",
            member = { type = "string" },
        },
        manageAdminPassword = {
            type = "boolean",
        },
        adminPasswordSecretKmsKeyId = {
            type = "string",
        },
    },
}

M.UpdateNamespaceOutput = {
    type = "structure",
    members = {
        namespace = setmetatable({ traits = {
            required = true,
        } }, { __index = M.Namespace }),
    },
}

M.PutResourcePolicyInput = {
    type = "structure",
    members = {
        resourceArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        policy = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.PutResourcePolicyOutput = {
    type = "structure",
    members = {
        resourcePolicy = M.ResourcePolicy,
    },
}

M.RestoreFromRecoveryPointInput = {
    type = "structure",
    members = {
        recoveryPointId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        namespaceName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        workgroupName = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.RestoreFromRecoveryPointOutput = {
    type = "structure",
    members = {
        recoveryPointId = {
            type = "string",
        },
        namespace = M.Namespace,
    },
}

M.RestoreTableFromRecoveryPointInput = {
    type = "structure",
    members = {
        namespaceName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        workgroupName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        recoveryPointId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        sourceDatabaseName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        sourceSchemaName = {
            type = "string",
        },
        sourceTableName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        targetDatabaseName = {
            type = "string",
        },
        targetSchemaName = {
            type = "string",
        },
        newTableName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        activateCaseSensitiveIdentifier = {
            type = "boolean",
        },
    },
}

M.RestoreTableFromRecoveryPointOutput = {
    type = "structure",
    members = {
        tableRestoreStatus = M.TableRestoreStatus,
    },
}

M.UpdateScheduledActionInput = {
    type = "structure",
    members = {
        scheduledActionName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        targetAction = M.TargetAction,
        schedule = M.Schedule,
        roleArn = {
            type = "string",
        },
        enabled = {
            type = "boolean",
        },
        scheduledActionDescription = {
            type = "string",
        },
        startTime = {
            type = "timestamp",
        },
        endTime = {
            type = "timestamp",
        },
    },
}

M.UpdateScheduledActionOutput = {
    type = "structure",
    members = {
        scheduledAction = M.ScheduledActionResponse,
    },
}

M.RestoreFromSnapshotInput = {
    type = "structure",
    members = {
        namespaceName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        workgroupName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        snapshotName = {
            type = "string",
        },
        snapshotArn = {
            type = "string",
        },
        ownerAccount = {
            type = "string",
        },
        manageAdminPassword = {
            type = "boolean",
        },
        adminPasswordSecretKmsKeyId = {
            type = "string",
        },
    },
}

M.RestoreFromSnapshotOutput = {
    type = "structure",
    members = {
        snapshotName = {
            type = "string",
        },
        ownerAccount = {
            type = "string",
        },
        namespace = M.Namespace,
    },
}

M.RestoreTableFromSnapshotInput = {
    type = "structure",
    members = {
        namespaceName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        workgroupName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        snapshotName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        sourceDatabaseName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        sourceSchemaName = {
            type = "string",
        },
        sourceTableName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        targetDatabaseName = {
            type = "string",
        },
        targetSchemaName = {
            type = "string",
        },
        newTableName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        activateCaseSensitiveIdentifier = {
            type = "boolean",
        },
    },
}

M.RestoreTableFromSnapshotOutput = {
    type = "structure",
    members = {
        tableRestoreStatus = M.TableRestoreStatus,
    },
}

M.UpdateSnapshotInput = {
    type = "structure",
    members = {
        snapshotName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        retentionPeriod = {
            type = "integer",
        },
    },
}

M.UpdateSnapshotOutput = {
    type = "structure",
    members = {
        snapshot = M.Snapshot,
    },
}

M.UpdateSnapshotCopyConfigurationInput = {
    type = "structure",
    members = {
        snapshotCopyConfigurationId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        snapshotRetentionPeriod = {
            type = "integer",
        },
    },
}

M.UpdateSnapshotCopyConfigurationOutput = {
    type = "structure",
    members = {
        snapshotCopyConfiguration = setmetatable({ traits = {
            required = true,
        } }, { __index = M.SnapshotCopyConfiguration }),
    },
}

M.TagResourceInput = {
    type = "structure",
    members = {
        resourceArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        tags = {
            type = "list",
            member = M.Tag,
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
                required = true,
            },
        },
        tagKeys = {
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
}

M.UpdateCustomDomainAssociationInput = {
    type = "structure",
    members = {
        workgroupName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        customDomainName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        customDomainCertificateArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.UpdateCustomDomainAssociationOutput = {
    type = "structure",
    members = {
        customDomainName = {
            type = "string",
        },
        workgroupName = {
            type = "string",
        },
        customDomainCertificateArn = {
            type = "string",
        },
        customDomainCertificateExpiryTime = {
            type = "timestamp",
            traits = {
                timestamp_format = "date-time",
            },
        },
    },
}

M.UpdateUsageLimitInput = {
    type = "structure",
    members = {
        usageLimitId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        amount = {
            type = "long",
        },
        breachAction = {
            type = "string",
        },
    },
}

M.UpdateUsageLimitOutput = {
    type = "structure",
    members = {
        usageLimit = M.UsageLimit,
    },
}

M.UpdateWorkgroupInput = {
    type = "structure",
    members = {
        workgroupName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        baseCapacity = {
            type = "integer",
        },
        enhancedVpcRouting = {
            type = "boolean",
        },
        configParameters = {
            type = "list",
            member = M.ConfigParameter,
        },
        publiclyAccessible = {
            type = "boolean",
        },
        subnetIds = {
            type = "list",
            member = { type = "string" },
        },
        securityGroupIds = {
            type = "list",
            member = { type = "string" },
        },
        port = {
            type = "integer",
        },
        maxCapacity = {
            type = "integer",
        },
        ipAddressType = {
            type = "string",
        },
        pricePerformanceTarget = M.PerformanceTarget,
        trackName = {
            type = "string",
        },
        extraComputeForAutomaticOptimization = {
            type = "boolean",
        },
    },
}

M.UpdateWorkgroupOutput = {
    type = "structure",
    members = {
        workgroup = setmetatable({ traits = {
            required = true,
        } }, { __index = M.Workgroup }),
    },
}

return M
