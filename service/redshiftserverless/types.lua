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
            type = "number",
        },
        tags = {
            type = "list",
            member_type = "structure",
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
            type = "number",
        },
        actualIncrementalBackupSizeInMegaBytes = {
            type = "number",
        },
        backupProgressInMegaBytes = {
            type = "number",
        },
        currentBackupRateInMegaBytesPerSecond = {
            type = "number",
        },
        estimatedSecondsToCompletion = {
            type = "number",
        },
        elapsedTimeInSeconds = {
            type = "number",
        },
        snapshotRetentionPeriod = {
            type = "number",
        },
        snapshotRemainingDays = {
            type = "number",
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
            member_type = "string",
        },
        accountsWithProvisionedRestoreAccess = {
            type = "list",
            member_type = "string",
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
        snapshot = {
            type = "structure",
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
            member_type = "string",
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
            member_type = "string",
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
            member_type = "structure",
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
            type = "number",
        },
        address = {
            type = "string",
        },
        subnetIds = {
            type = "list",
            member_type = "string",
        },
        vpcSecurityGroups = {
            type = "list",
            member_type = "structure",
        },
        vpcEndpoint = {
            type = "structure",
        },
        endpointArn = {
            type = "string",
        },
    },
}

M.CreateEndpointAccessOutput = {
    type = "structure",
    members = {
        endpoint = {
            type = "structure",
        },
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
            member_type = "string",
        },
        logExports = {
            type = "list",
            member_type = "string",
        },
        tags = {
            type = "list",
            member_type = "structure",
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
            member_type = "string",
        },
        logExports = {
            type = "list",
            member_type = "string",
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
        namespace = {
            type = "structure",
        },
    },
}

M.CreateReservationInput = {
    type = "structure",
    members = {
        capacity = {
            type = "number",
            traits = {
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
            type = "number",
        },
        upfrontCharge = {
            type = "number",
        },
        hourlyCharge = {
            type = "number",
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
            type = "number",
        },
        offering = {
            type = "structure",
        },
        status = {
            type = "string",
        },
    },
}

M.CreateReservationOutput = {
    type = "structure",
    members = {
        reservation = {
            type = "structure",
        },
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
            type = "number",
        },
        tags = {
            type = "list",
            member_type = "structure",
        },
    },
}

M.TargetAction = {
    type = "union",
    members = {
        createSnapshot = {
            type = "structure",
        },
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
        targetAction = {
            type = "union",
            traits = {
                required = true,
            },
        },
        schedule = {
            type = "union",
            traits = {
                required = true,
            },
        },
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
        schedule = {
            type = "union",
        },
        scheduledActionDescription = {
            type = "string",
        },
        nextInvocations = {
            type = "list",
            member_type = "timestamp",
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
        targetAction = {
            type = "union",
        },
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
        scheduledAction = {
            type = "structure",
        },
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
            type = "number",
        },
        tags = {
            type = "list",
            member_type = "structure",
        },
    },
}

M.CreateSnapshotOutput = {
    type = "structure",
    members = {
        snapshot = {
            type = "structure",
        },
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
            type = "number",
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
            type = "number",
        },
        destinationKmsKeyId = {
            type = "string",
        },
    },
}

M.CreateSnapshotCopyConfigurationOutput = {
    type = "structure",
    members = {
        snapshotCopyConfiguration = {
            type = "structure",
            traits = {
                required = true,
            },
        },
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
            type = "number",
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
            type = "number",
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
        usageLimit = {
            type = "structure",
        },
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
            type = "number",
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
            type = "number",
        },
        enhancedVpcRouting = {
            type = "boolean",
        },
        configParameters = {
            type = "list",
            member_type = "structure",
        },
        securityGroupIds = {
            type = "list",
            member_type = "string",
        },
        subnetIds = {
            type = "list",
            member_type = "string",
        },
        publiclyAccessible = {
            type = "boolean",
        },
        tags = {
            type = "list",
            member_type = "structure",
        },
        port = {
            type = "number",
        },
        maxCapacity = {
            type = "number",
        },
        pricePerformanceTarget = {
            type = "structure",
        },
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
            type = "number",
        },
        vpcEndpoints = {
            type = "list",
            member_type = "structure",
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
            type = "number",
        },
        enhancedVpcRouting = {
            type = "boolean",
        },
        configParameters = {
            type = "list",
            member_type = "structure",
        },
        securityGroupIds = {
            type = "list",
            member_type = "string",
        },
        subnetIds = {
            type = "list",
            member_type = "string",
        },
        status = {
            type = "string",
        },
        endpoint = {
            type = "structure",
        },
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
            type = "number",
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
            type = "number",
        },
        crossAccountVpcs = {
            type = "list",
            member_type = "string",
        },
        ipAddressType = {
            type = "string",
        },
        pricePerformanceTarget = {
            type = "structure",
        },
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
        workgroup = {
            type = "structure",
        },
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
        endpoint = {
            type = "structure",
        },
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
        endpoint = {
            type = "structure",
        },
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
            type = "number",
            traits = {
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
            member_type = "structure",
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
            member_type = "string",
        },
    },
}

M.UpdateEndpointAccessOutput = {
    type = "structure",
    members = {
        endpoint = {
            type = "structure",
        },
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
            type = "number",
        },
    },
}

M.DeleteNamespaceOutput = {
    type = "structure",
    members = {
        namespace = {
            type = "structure",
            traits = {
                required = true,
            },
        },
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
        scheduledAction = {
            type = "structure",
        },
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
        snapshot = {
            type = "structure",
        },
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
        snapshotCopyConfiguration = {
            type = "structure",
            traits = {
                required = true,
            },
        },
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
        usageLimit = {
            type = "structure",
        },
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
        workgroup = {
            type = "structure",
            traits = {
                required = true,
            },
        },
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
            type = "number",
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
            member_type = "string",
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
        namespace = {
            type = "structure",
            traits = {
                required = true,
            },
        },
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
            type = "number",
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
        recoveryPoint = {
            type = "structure",
        },
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
        reservation = {
            type = "structure",
            traits = {
                required = true,
            },
        },
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
        reservationOffering = {
            type = "structure",
            traits = {
                required = true,
            },
        },
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
        resourcePolicy = {
            type = "structure",
        },
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
        scheduledAction = {
            type = "structure",
        },
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
        snapshot = {
            type = "structure",
        },
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
            type = "number",
        },
        totalDataInMegaBytes = {
            type = "number",
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
        tableRestoreStatus = {
            type = "structure",
        },
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
            member_type = "structure",
        },
    },
}

M.GetTrackOutput = {
    type = "structure",
    members = {
        track = {
            type = "structure",
        },
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
        usageLimit = {
            type = "structure",
        },
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
        workgroup = {
            type = "structure",
            traits = {
                required = true,
            },
        },
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
            type = "number",
            traits = {
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
            member_type = "structure",
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
            type = "number",
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
            member_type = "structure",
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
            type = "number",
            traits = {
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
            member_type = "structure",
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
            type = "number",
            traits = {
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
            member_type = "structure",
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
            type = "number",
            traits = {
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
            type = "number",
            traits = {
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
            type = "number",
            traits = {
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
            member_type = "structure",
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
            type = "number",
            traits = {
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
            member_type = "structure",
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
            type = "number",
            traits = {
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
            member_type = "structure",
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
            type = "number",
            traits = {
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
            member_type = "structure",
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
            member_type = "structure",
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
            type = "number",
            traits = {
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
            member_type = "structure",
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
            type = "number",
            traits = {
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
            member_type = "structure",
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
            type = "number",
            traits = {
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
            member_type = "structure",
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
            member_type = "string",
        },
        logExports = {
            type = "list",
            member_type = "string",
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
        namespace = {
            type = "structure",
            traits = {
                required = true,
            },
        },
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
        resourcePolicy = {
            type = "structure",
        },
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
        namespace = {
            type = "structure",
        },
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
        tableRestoreStatus = {
            type = "structure",
        },
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
        targetAction = {
            type = "union",
        },
        schedule = {
            type = "union",
        },
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
        scheduledAction = {
            type = "structure",
        },
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
        namespace = {
            type = "structure",
        },
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
        tableRestoreStatus = {
            type = "structure",
        },
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
            type = "number",
        },
    },
}

M.UpdateSnapshotOutput = {
    type = "structure",
    members = {
        snapshot = {
            type = "structure",
        },
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
            type = "number",
        },
    },
}

M.UpdateSnapshotCopyConfigurationOutput = {
    type = "structure",
    members = {
        snapshotCopyConfiguration = {
            type = "structure",
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
                required = true,
            },
        },
        tags = {
            type = "list",
            member_type = "structure",
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
            member_type = "string",
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
            type = "number",
        },
        breachAction = {
            type = "string",
        },
    },
}

M.UpdateUsageLimitOutput = {
    type = "structure",
    members = {
        usageLimit = {
            type = "structure",
        },
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
            type = "number",
        },
        enhancedVpcRouting = {
            type = "boolean",
        },
        configParameters = {
            type = "list",
            member_type = "structure",
        },
        publiclyAccessible = {
            type = "boolean",
        },
        subnetIds = {
            type = "list",
            member_type = "string",
        },
        securityGroupIds = {
            type = "list",
            member_type = "string",
        },
        port = {
            type = "number",
        },
        maxCapacity = {
            type = "number",
        },
        ipAddressType = {
            type = "string",
        },
        pricePerformanceTarget = {
            type = "structure",
        },
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
        workgroup = {
            type = "structure",
            traits = {
                required = true,
            },
        },
    },
}

return M
