local M = {}

M.AcceptMarketplaceRegistrationInput = {
    type = "structure",
    members = {
        marketplaceRegistrationToken = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.AcceptMarketplaceRegistrationOutput = {
    type = "structure",
}

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
        resourceId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        resourceType = {
            type = "string",
            traits = {
                required = true,
            },
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
        retryAfterSeconds = {
            type = "integer",
            traits = {
                http_header = "Retry-After",
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
        retryAfterSeconds = {
            type = "integer",
            traits = {
                http_header = "Retry-After",
            },
        },
    },
}

M.ValidationExceptionField = {
    type = "structure",
    members = {
        name = {
            type = "string",
            traits = {
                required = true,
            },
        },
        message = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.ValidationExceptionReason = {
    UNKNOWN_OPERATION = "unknownOperation",
    CANNOT_PARSE = "cannotParse",
    FIELD_VALIDATION_FAILED = "fieldValidationFailed",
    OTHER = "other",
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
        reason = {
            type = "string",
            traits = {
                required = true,
            },
        },
        fieldList = {
            type = "list",
            member = M.ValidationExceptionField,
        },
    },
}

M.Access = {
    ENABLED = "ENABLED",
    DISABLED = "DISABLED",
}

M.SupportedAwsIntegration = {
    KmsTde = "KmsTde",
}

M.AssociateIamRoleToResourceInput = {
    type = "structure",
    members = {
        iamRoleArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        awsIntegration = {
            type = "string",
            traits = {
                required = true,
            },
        },
        resourceArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.AssociateIamRoleToResourceOutput = {
    type = "structure",
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
        resourceId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        resourceType = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.ResourceStatus = {
    AVAILABLE = "AVAILABLE",
    FAILED = "FAILED",
    PROVISIONING = "PROVISIONING",
    TERMINATED = "TERMINATED",
    TERMINATING = "TERMINATING",
    UPDATING = "UPDATING",
    MAINTENANCE_IN_PROGRESS = "MAINTENANCE_IN_PROGRESS",
}

M.AutonomousVirtualMachineSummary = {
    type = "structure",
    members = {
        autonomousVirtualMachineId = {
            type = "string",
        },
        status = {
            type = "string",
        },
        statusReason = {
            type = "string",
        },
        vmName = {
            type = "string",
        },
        dbServerId = {
            type = "string",
        },
        dbServerDisplayName = {
            type = "string",
        },
        cpuCoreCount = {
            type = "integer",
        },
        memorySizeInGBs = {
            type = "integer",
        },
        dbNodeStorageSizeInGBs = {
            type = "integer",
        },
        clientIpAddress = {
            type = "string",
        },
        cloudAutonomousVmClusterId = {
            type = "string",
        },
        ocid = {
            type = "string",
        },
        ociResourceAnchorName = {
            type = "string",
        },
    },
}

M.ComputeModel = {
    ECPU = "ECPU",
    OCPU = "OCPU",
}

M.IamRoleStatus = {
    ASSOCIATING = "ASSOCIATING",
    DISASSOCIATING = "DISASSOCIATING",
    FAILED = "FAILED",
    CONNECTED = "CONNECTED",
    DISCONNECTED = "DISCONNECTED",
    PARTIALLY_CONNECTED = "PARTIALLY_CONNECTED",
    UNKNOWN = "UNKNOWN",
}

M.IamRole = {
    type = "structure",
    members = {
        iamRoleArn = {
            type = "string",
        },
        status = {
            type = "string",
        },
        statusReason = {
            type = "string",
        },
        awsIntegration = {
            type = "string",
        },
    },
}

M.LicenseModel = {
    BRING_YOUR_OWN_LICENSE = "BRING_YOUR_OWN_LICENSE",
    LICENSE_INCLUDED = "LICENSE_INCLUDED",
}

M.DayOfWeekName = {
    MONDAY = "MONDAY",
    TUESDAY = "TUESDAY",
    WEDNESDAY = "WEDNESDAY",
    THURSDAY = "THURSDAY",
    FRIDAY = "FRIDAY",
    SATURDAY = "SATURDAY",
    SUNDAY = "SUNDAY",
}

M.DayOfWeek = {
    type = "structure",
    members = {
        name = {
            type = "string",
        },
    },
}

M.MonthName = {
    JANUARY = "JANUARY",
    FEBRUARY = "FEBRUARY",
    MARCH = "MARCH",
    APRIL = "APRIL",
    MAY = "MAY",
    JUNE = "JUNE",
    JULY = "JULY",
    AUGUST = "AUGUST",
    SEPTEMBER = "SEPTEMBER",
    OCTOBER = "OCTOBER",
    NOVEMBER = "NOVEMBER",
    DECEMBER = "DECEMBER",
}

M.Month = {
    type = "structure",
    members = {
        name = {
            type = "string",
        },
    },
}

M.PatchingModeType = {
    ROLLING = "ROLLING",
    NONROLLING = "NONROLLING",
}

M.PreferenceType = {
    NO_PREFERENCE = "NO_PREFERENCE",
    CUSTOM_PREFERENCE = "CUSTOM_PREFERENCE",
}

M.MaintenanceWindow = {
    type = "structure",
    members = {
        customActionTimeoutInMins = {
            type = "integer",
        },
        daysOfWeek = {
            type = "list",
            member = M.DayOfWeek,
        },
        hoursOfDay = {
            type = "list",
            member = { type = "integer" },
        },
        isCustomActionTimeoutEnabled = {
            type = "boolean",
        },
        leadTimeInWeeks = {
            type = "integer",
        },
        months = {
            type = "list",
            member = M.Month,
        },
        patchingMode = {
            type = "string",
        },
        preference = {
            type = "string",
        },
        skipRu = {
            type = "boolean",
        },
        weeksOfMonth = {
            type = "list",
            member = { type = "integer" },
        },
    },
}

M.CloudAutonomousVmCluster = {
    type = "structure",
    members = {
        cloudAutonomousVmClusterId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        cloudAutonomousVmClusterArn = {
            type = "string",
        },
        odbNetworkId = {
            type = "string",
        },
        odbNetworkArn = {
            type = "string",
        },
        ociResourceAnchorName = {
            type = "string",
        },
        percentProgress = {
            type = "float",
        },
        displayName = {
            type = "string",
        },
        status = {
            type = "string",
        },
        statusReason = {
            type = "string",
        },
        cloudExadataInfrastructureId = {
            type = "string",
        },
        cloudExadataInfrastructureArn = {
            type = "string",
        },
        autonomousDataStoragePercentage = {
            type = "float",
        },
        autonomousDataStorageSizeInTBs = {
            type = "double",
        },
        availableAutonomousDataStorageSizeInTBs = {
            type = "double",
        },
        availableContainerDatabases = {
            type = "integer",
        },
        availableCpus = {
            type = "float",
        },
        computeModel = {
            type = "string",
        },
        cpuCoreCount = {
            type = "integer",
        },
        cpuCoreCountPerNode = {
            type = "integer",
        },
        cpuPercentage = {
            type = "float",
        },
        dataStorageSizeInGBs = {
            type = "double",
        },
        dataStorageSizeInTBs = {
            type = "double",
        },
        dbNodeStorageSizeInGBs = {
            type = "integer",
        },
        dbServers = {
            type = "list",
            member = { type = "string" },
        },
        description = {
            type = "string",
        },
        domain = {
            type = "string",
        },
        exadataStorageInTBsLowestScaledValue = {
            type = "double",
        },
        hostname = {
            type = "string",
        },
        ocid = {
            type = "string",
        },
        ociUrl = {
            type = "string",
        },
        isMtlsEnabledVmCluster = {
            type = "boolean",
        },
        licenseModel = {
            type = "string",
        },
        maintenanceWindow = M.MaintenanceWindow,
        maxAcdsLowestScaledValue = {
            type = "integer",
        },
        memoryPerOracleComputeUnitInGBs = {
            type = "integer",
        },
        memorySizeInGBs = {
            type = "integer",
        },
        nodeCount = {
            type = "integer",
        },
        nonProvisionableAutonomousContainerDatabases = {
            type = "integer",
        },
        provisionableAutonomousContainerDatabases = {
            type = "integer",
        },
        provisionedAutonomousContainerDatabases = {
            type = "integer",
        },
        provisionedCpus = {
            type = "float",
        },
        reclaimableCpus = {
            type = "float",
        },
        reservedCpus = {
            type = "float",
        },
        scanListenerPortNonTls = {
            type = "integer",
        },
        scanListenerPortTls = {
            type = "integer",
        },
        shape = {
            type = "string",
        },
        createdAt = {
            type = "timestamp",
            traits = {
                timestamp_format = "date-time",
            },
        },
        timeDatabaseSslCertificateExpires = {
            type = "timestamp",
            traits = {
                timestamp_format = "date-time",
            },
        },
        timeOrdsCertificateExpires = {
            type = "timestamp",
            traits = {
                timestamp_format = "date-time",
            },
        },
        timeZone = {
            type = "string",
        },
        totalContainerDatabases = {
            type = "integer",
        },
        iamRoles = {
            type = "list",
            member = M.IamRole,
        },
    },
}

M.CloudAutonomousVmClusterSummary = {
    type = "structure",
    members = {
        cloudAutonomousVmClusterId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        cloudAutonomousVmClusterArn = {
            type = "string",
        },
        odbNetworkId = {
            type = "string",
        },
        odbNetworkArn = {
            type = "string",
        },
        ociResourceAnchorName = {
            type = "string",
        },
        percentProgress = {
            type = "float",
        },
        displayName = {
            type = "string",
        },
        status = {
            type = "string",
        },
        statusReason = {
            type = "string",
        },
        cloudExadataInfrastructureId = {
            type = "string",
        },
        cloudExadataInfrastructureArn = {
            type = "string",
        },
        autonomousDataStoragePercentage = {
            type = "float",
        },
        autonomousDataStorageSizeInTBs = {
            type = "double",
        },
        availableAutonomousDataStorageSizeInTBs = {
            type = "double",
        },
        availableContainerDatabases = {
            type = "integer",
        },
        availableCpus = {
            type = "float",
        },
        computeModel = {
            type = "string",
        },
        cpuCoreCount = {
            type = "integer",
        },
        cpuCoreCountPerNode = {
            type = "integer",
        },
        cpuPercentage = {
            type = "float",
        },
        dataStorageSizeInGBs = {
            type = "double",
        },
        dataStorageSizeInTBs = {
            type = "double",
        },
        dbNodeStorageSizeInGBs = {
            type = "integer",
        },
        dbServers = {
            type = "list",
            member = { type = "string" },
        },
        description = {
            type = "string",
        },
        domain = {
            type = "string",
        },
        exadataStorageInTBsLowestScaledValue = {
            type = "double",
        },
        hostname = {
            type = "string",
        },
        ocid = {
            type = "string",
        },
        ociUrl = {
            type = "string",
        },
        isMtlsEnabledVmCluster = {
            type = "boolean",
        },
        licenseModel = {
            type = "string",
        },
        maintenanceWindow = M.MaintenanceWindow,
        maxAcdsLowestScaledValue = {
            type = "integer",
        },
        memoryPerOracleComputeUnitInGBs = {
            type = "integer",
        },
        memorySizeInGBs = {
            type = "integer",
        },
        nodeCount = {
            type = "integer",
        },
        nonProvisionableAutonomousContainerDatabases = {
            type = "integer",
        },
        provisionableAutonomousContainerDatabases = {
            type = "integer",
        },
        provisionedAutonomousContainerDatabases = {
            type = "integer",
        },
        provisionedCpus = {
            type = "float",
        },
        reclaimableCpus = {
            type = "float",
        },
        reservedCpus = {
            type = "float",
        },
        scanListenerPortNonTls = {
            type = "integer",
        },
        scanListenerPortTls = {
            type = "integer",
        },
        shape = {
            type = "string",
        },
        createdAt = {
            type = "timestamp",
            traits = {
                timestamp_format = "date-time",
            },
        },
        timeDatabaseSslCertificateExpires = {
            type = "timestamp",
            traits = {
                timestamp_format = "date-time",
            },
        },
        timeOrdsCertificateExpires = {
            type = "timestamp",
            traits = {
                timestamp_format = "date-time",
            },
        },
        timeZone = {
            type = "string",
        },
        totalContainerDatabases = {
            type = "integer",
        },
        iamRoles = {
            type = "list",
            member = M.IamRole,
        },
    },
}

M.CreateCloudAutonomousVmClusterInput = {
    type = "structure",
    members = {
        cloudExadataInfrastructureId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        odbNetworkId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        displayName = {
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
        autonomousDataStorageSizeInTBs = {
            type = "double",
            traits = {
                required = true,
            },
        },
        cpuCoreCountPerNode = {
            type = "integer",
            traits = {
                required = true,
            },
        },
        dbServers = {
            type = "list",
            member = { type = "string" },
        },
        description = {
            type = "string",
        },
        isMtlsEnabledVmCluster = {
            type = "boolean",
        },
        licenseModel = {
            type = "string",
        },
        maintenanceWindow = M.MaintenanceWindow,
        memoryPerOracleComputeUnitInGBs = {
            type = "integer",
            traits = {
                required = true,
            },
        },
        scanListenerPortNonTls = {
            type = "integer",
            traits = {
                default = 1521,
            },
        },
        scanListenerPortTls = {
            type = "integer",
            traits = {
                default = 2484,
            },
        },
        tags = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
        timeZone = {
            type = "string",
        },
        totalContainerDatabases = {
            type = "integer",
            traits = {
                required = true,
            },
        },
    },
}

M.CreateCloudAutonomousVmClusterOutput = {
    type = "structure",
    members = {
        displayName = {
            type = "string",
        },
        status = {
            type = "string",
        },
        statusReason = {
            type = "string",
        },
        cloudAutonomousVmClusterId = {
            type = "string",
            traits = {
                required = true,
            },
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
        resourceId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        resourceType = {
            type = "string",
            traits = {
                required = true,
            },
        },
        quotaCode = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.DeleteCloudAutonomousVmClusterInput = {
    type = "structure",
    members = {
        cloudAutonomousVmClusterId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.DeleteCloudAutonomousVmClusterOutput = {
    type = "structure",
}

M.GetCloudAutonomousVmClusterInput = {
    type = "structure",
    members = {
        cloudAutonomousVmClusterId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.GetCloudAutonomousVmClusterOutput = {
    type = "structure",
    members = {
        cloudAutonomousVmCluster = M.CloudAutonomousVmCluster,
    },
}

M.ListAutonomousVirtualMachinesInput = {
    type = "structure",
    members = {
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
        cloudAutonomousVmClusterId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.ListAutonomousVirtualMachinesOutput = {
    type = "structure",
    members = {
        nextToken = {
            type = "string",
        },
        autonomousVirtualMachines = {
            type = "list",
            member = M.AutonomousVirtualMachineSummary,
            traits = {
                required = true,
            },
        },
    },
}

M.ListCloudAutonomousVmClustersInput = {
    type = "structure",
    members = {
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
        cloudExadataInfrastructureId = {
            type = "string",
        },
    },
}

M.ListCloudAutonomousVmClustersOutput = {
    type = "structure",
    members = {
        nextToken = {
            type = "string",
        },
        cloudAutonomousVmClusters = {
            type = "list",
            member = M.CloudAutonomousVmClusterSummary,
            traits = {
                required = true,
            },
        },
    },
}

M.CloudAutonomousVmClusterResourceDetails = {
    type = "structure",
    members = {
        cloudAutonomousVmClusterId = {
            type = "string",
        },
        unallocatedAdbStorageInTBs = {
            type = "double",
        },
    },
}

M.CustomerContact = {
    type = "structure",
    members = {
        email = {
            type = "string",
        },
    },
}

M.CloudExadataInfrastructure = {
    type = "structure",
    members = {
        cloudExadataInfrastructureId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        displayName = {
            type = "string",
        },
        status = {
            type = "string",
        },
        statusReason = {
            type = "string",
        },
        cloudExadataInfrastructureArn = {
            type = "string",
        },
        activatedStorageCount = {
            type = "integer",
        },
        additionalStorageCount = {
            type = "integer",
        },
        availableStorageSizeInGBs = {
            type = "integer",
        },
        availabilityZone = {
            type = "string",
        },
        availabilityZoneId = {
            type = "string",
        },
        computeCount = {
            type = "integer",
        },
        cpuCount = {
            type = "integer",
        },
        customerContactsToSendToOCI = {
            type = "list",
            member = M.CustomerContact,
        },
        dataStorageSizeInTBs = {
            type = "double",
        },
        dbNodeStorageSizeInGBs = {
            type = "integer",
        },
        dbServerVersion = {
            type = "string",
        },
        lastMaintenanceRunId = {
            type = "string",
        },
        maintenanceWindow = M.MaintenanceWindow,
        maxCpuCount = {
            type = "integer",
        },
        maxDataStorageInTBs = {
            type = "double",
        },
        maxDbNodeStorageSizeInGBs = {
            type = "integer",
        },
        maxMemoryInGBs = {
            type = "integer",
        },
        memorySizeInGBs = {
            type = "integer",
        },
        monthlyDbServerVersion = {
            type = "string",
        },
        monthlyStorageServerVersion = {
            type = "string",
        },
        nextMaintenanceRunId = {
            type = "string",
        },
        ociResourceAnchorName = {
            type = "string",
        },
        ociUrl = {
            type = "string",
        },
        ocid = {
            type = "string",
        },
        shape = {
            type = "string",
        },
        storageCount = {
            type = "integer",
        },
        storageServerVersion = {
            type = "string",
        },
        createdAt = {
            type = "timestamp",
            traits = {
                timestamp_format = "date-time",
            },
        },
        totalStorageSizeInGBs = {
            type = "integer",
        },
        percentProgress = {
            type = "float",
        },
        databaseServerType = {
            type = "string",
        },
        storageServerType = {
            type = "string",
        },
        computeModel = {
            type = "string",
        },
    },
}

M.CloudExadataInfrastructureSummary = {
    type = "structure",
    members = {
        cloudExadataInfrastructureId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        displayName = {
            type = "string",
        },
        status = {
            type = "string",
        },
        statusReason = {
            type = "string",
        },
        cloudExadataInfrastructureArn = {
            type = "string",
        },
        activatedStorageCount = {
            type = "integer",
        },
        additionalStorageCount = {
            type = "integer",
        },
        availableStorageSizeInGBs = {
            type = "integer",
        },
        availabilityZone = {
            type = "string",
        },
        availabilityZoneId = {
            type = "string",
        },
        computeCount = {
            type = "integer",
        },
        cpuCount = {
            type = "integer",
        },
        customerContactsToSendToOCI = {
            type = "list",
            member = M.CustomerContact,
        },
        dataStorageSizeInTBs = {
            type = "double",
        },
        dbNodeStorageSizeInGBs = {
            type = "integer",
        },
        dbServerVersion = {
            type = "string",
        },
        lastMaintenanceRunId = {
            type = "string",
        },
        maintenanceWindow = M.MaintenanceWindow,
        maxCpuCount = {
            type = "integer",
        },
        maxDataStorageInTBs = {
            type = "double",
        },
        maxDbNodeStorageSizeInGBs = {
            type = "integer",
        },
        maxMemoryInGBs = {
            type = "integer",
        },
        memorySizeInGBs = {
            type = "integer",
        },
        monthlyDbServerVersion = {
            type = "string",
        },
        monthlyStorageServerVersion = {
            type = "string",
        },
        nextMaintenanceRunId = {
            type = "string",
        },
        ociResourceAnchorName = {
            type = "string",
        },
        ociUrl = {
            type = "string",
        },
        ocid = {
            type = "string",
        },
        shape = {
            type = "string",
        },
        storageCount = {
            type = "integer",
        },
        storageServerVersion = {
            type = "string",
        },
        createdAt = {
            type = "timestamp",
            traits = {
                timestamp_format = "date-time",
            },
        },
        totalStorageSizeInGBs = {
            type = "integer",
        },
        percentProgress = {
            type = "float",
        },
        databaseServerType = {
            type = "string",
        },
        storageServerType = {
            type = "string",
        },
        computeModel = {
            type = "string",
        },
    },
}

M.CreateCloudExadataInfrastructureInput = {
    type = "structure",
    members = {
        displayName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        shape = {
            type = "string",
            traits = {
                required = true,
            },
        },
        availabilityZone = {
            type = "string",
        },
        availabilityZoneId = {
            type = "string",
        },
        tags = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
        computeCount = {
            type = "integer",
            traits = {
                required = true,
            },
        },
        customerContactsToSendToOCI = {
            type = "list",
            member = M.CustomerContact,
        },
        maintenanceWindow = M.MaintenanceWindow,
        storageCount = {
            type = "integer",
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
        databaseServerType = {
            type = "string",
        },
        storageServerType = {
            type = "string",
        },
    },
}

M.CreateCloudExadataInfrastructureOutput = {
    type = "structure",
    members = {
        displayName = {
            type = "string",
        },
        status = {
            type = "string",
        },
        statusReason = {
            type = "string",
        },
        cloudExadataInfrastructureId = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.DeleteCloudExadataInfrastructureInput = {
    type = "structure",
    members = {
        cloudExadataInfrastructureId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.DeleteCloudExadataInfrastructureOutput = {
    type = "structure",
}

M.GetCloudExadataInfrastructureInput = {
    type = "structure",
    members = {
        cloudExadataInfrastructureId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.GetCloudExadataInfrastructureOutput = {
    type = "structure",
    members = {
        cloudExadataInfrastructure = M.CloudExadataInfrastructure,
    },
}

M.GetCloudExadataInfrastructureUnallocatedResourcesInput = {
    type = "structure",
    members = {
        cloudExadataInfrastructureId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        dbServers = {
            type = "list",
            member = { type = "string" },
        },
    },
}

M.CloudExadataInfrastructureUnallocatedResources = {
    type = "structure",
    members = {
        cloudAutonomousVmClusters = {
            type = "list",
            member = M.CloudAutonomousVmClusterResourceDetails,
        },
        cloudExadataInfrastructureDisplayName = {
            type = "string",
        },
        exadataStorageInTBs = {
            type = "double",
        },
        cloudExadataInfrastructureId = {
            type = "string",
        },
        localStorageInGBs = {
            type = "integer",
        },
        memoryInGBs = {
            type = "integer",
        },
        ocpus = {
            type = "integer",
        },
    },
}

M.GetCloudExadataInfrastructureUnallocatedResourcesOutput = {
    type = "structure",
    members = {
        cloudExadataInfrastructureUnallocatedResources = M.CloudExadataInfrastructureUnallocatedResources,
    },
}

M.GetDbServerInput = {
    type = "structure",
    members = {
        cloudExadataInfrastructureId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        dbServerId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.DbServerPatchingStatus = {
    COMPLETE = "COMPLETE",
    FAILED = "FAILED",
    MAINTENANCE_IN_PROGRESS = "MAINTENANCE_IN_PROGRESS",
    SCHEDULED = "SCHEDULED",
}

M.DbServerPatchingDetails = {
    type = "structure",
    members = {
        estimatedPatchDuration = {
            type = "integer",
        },
        patchingStatus = {
            type = "string",
        },
        timePatchingEnded = {
            type = "string",
        },
        timePatchingStarted = {
            type = "string",
        },
    },
}

M.DbServer = {
    type = "structure",
    members = {
        dbServerId = {
            type = "string",
        },
        status = {
            type = "string",
        },
        statusReason = {
            type = "string",
        },
        cpuCoreCount = {
            type = "integer",
        },
        dbNodeStorageSizeInGBs = {
            type = "integer",
        },
        dbServerPatchingDetails = M.DbServerPatchingDetails,
        displayName = {
            type = "string",
        },
        exadataInfrastructureId = {
            type = "string",
        },
        ocid = {
            type = "string",
        },
        ociResourceAnchorName = {
            type = "string",
        },
        maxCpuCount = {
            type = "integer",
        },
        maxDbNodeStorageInGBs = {
            type = "integer",
        },
        maxMemoryInGBs = {
            type = "integer",
        },
        memorySizeInGBs = {
            type = "integer",
        },
        shape = {
            type = "string",
        },
        createdAt = {
            type = "timestamp",
            traits = {
                timestamp_format = "date-time",
            },
        },
        vmClusterIds = {
            type = "list",
            member = { type = "string" },
        },
        computeModel = {
            type = "string",
        },
        autonomousVmClusterIds = {
            type = "list",
            member = { type = "string" },
        },
        autonomousVirtualMachineIds = {
            type = "list",
            member = { type = "string" },
        },
    },
}

M.GetDbServerOutput = {
    type = "structure",
    members = {
        dbServer = M.DbServer,
    },
}

M.ListCloudExadataInfrastructuresInput = {
    type = "structure",
    members = {
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

M.ListCloudExadataInfrastructuresOutput = {
    type = "structure",
    members = {
        nextToken = {
            type = "string",
        },
        cloudExadataInfrastructures = {
            type = "list",
            member = M.CloudExadataInfrastructureSummary,
            traits = {
                required = true,
            },
        },
    },
}

M.ListDbServersInput = {
    type = "structure",
    members = {
        cloudExadataInfrastructureId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
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

M.DbServerSummary = {
    type = "structure",
    members = {
        dbServerId = {
            type = "string",
        },
        status = {
            type = "string",
        },
        statusReason = {
            type = "string",
        },
        cpuCoreCount = {
            type = "integer",
        },
        dbNodeStorageSizeInGBs = {
            type = "integer",
        },
        dbServerPatchingDetails = M.DbServerPatchingDetails,
        displayName = {
            type = "string",
        },
        exadataInfrastructureId = {
            type = "string",
        },
        ocid = {
            type = "string",
        },
        ociResourceAnchorName = {
            type = "string",
        },
        maxCpuCount = {
            type = "integer",
        },
        maxDbNodeStorageInGBs = {
            type = "integer",
        },
        maxMemoryInGBs = {
            type = "integer",
        },
        memorySizeInGBs = {
            type = "integer",
        },
        shape = {
            type = "string",
        },
        createdAt = {
            type = "timestamp",
            traits = {
                timestamp_format = "date-time",
            },
        },
        vmClusterIds = {
            type = "list",
            member = { type = "string" },
        },
        computeModel = {
            type = "string",
        },
        autonomousVmClusterIds = {
            type = "list",
            member = { type = "string" },
        },
        autonomousVirtualMachineIds = {
            type = "list",
            member = { type = "string" },
        },
    },
}

M.ListDbServersOutput = {
    type = "structure",
    members = {
        nextToken = {
            type = "string",
        },
        dbServers = {
            type = "list",
            member = M.DbServerSummary,
            traits = {
                required = true,
            },
        },
    },
}

M.UpdateCloudExadataInfrastructureInput = {
    type = "structure",
    members = {
        cloudExadataInfrastructureId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        maintenanceWindow = M.MaintenanceWindow,
    },
}

M.UpdateCloudExadataInfrastructureOutput = {
    type = "structure",
    members = {
        displayName = {
            type = "string",
        },
        status = {
            type = "string",
        },
        statusReason = {
            type = "string",
        },
        cloudExadataInfrastructureId = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.DataCollectionOptions = {
    type = "structure",
    members = {
        isDiagnosticsEventsEnabled = {
            type = "boolean",
        },
        isHealthMonitoringEnabled = {
            type = "boolean",
        },
        isIncidentLogsEnabled = {
            type = "boolean",
        },
    },
}

M.DiskRedundancy = {
    HIGH = "HIGH",
    NORMAL = "NORMAL",
}

M.DbIormConfig = {
    type = "structure",
    members = {
        dbName = {
            type = "string",
        },
        flashCacheLimit = {
            type = "string",
        },
        share = {
            type = "integer",
        },
    },
}

M.IormLifecycleState = {
    BOOTSTRAPPING = "BOOTSTRAPPING",
    DISABLED = "DISABLED",
    ENABLED = "ENABLED",
    FAILED = "FAILED",
    UPDATING = "UPDATING",
}

M.Objective = {
    AUTO = "AUTO",
    BALANCED = "BALANCED",
    BASIC = "BASIC",
    HIGH_THROUGHPUT = "HIGH_THROUGHPUT",
    LOW_LATENCY = "LOW_LATENCY",
}

M.ExadataIormConfig = {
    type = "structure",
    members = {
        dbPlans = {
            type = "list",
            member = M.DbIormConfig,
        },
        lifecycleDetails = {
            type = "string",
        },
        lifecycleState = {
            type = "string",
        },
        objective = {
            type = "string",
        },
    },
}

M.CloudVmCluster = {
    type = "structure",
    members = {
        cloudVmClusterId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        displayName = {
            type = "string",
        },
        status = {
            type = "string",
        },
        statusReason = {
            type = "string",
        },
        cloudVmClusterArn = {
            type = "string",
        },
        cloudExadataInfrastructureId = {
            type = "string",
        },
        cloudExadataInfrastructureArn = {
            type = "string",
        },
        clusterName = {
            type = "string",
        },
        cpuCoreCount = {
            type = "integer",
        },
        dataCollectionOptions = M.DataCollectionOptions,
        dataStorageSizeInTBs = {
            type = "double",
        },
        dbNodeStorageSizeInGBs = {
            type = "integer",
        },
        dbServers = {
            type = "list",
            member = { type = "string" },
        },
        diskRedundancy = {
            type = "string",
        },
        giVersion = {
            type = "string",
        },
        hostname = {
            type = "string",
        },
        iormConfigCache = M.ExadataIormConfig,
        isLocalBackupEnabled = {
            type = "boolean",
        },
        isSparseDiskgroupEnabled = {
            type = "boolean",
        },
        lastUpdateHistoryEntryId = {
            type = "string",
        },
        licenseModel = {
            type = "string",
        },
        listenerPort = {
            type = "integer",
        },
        memorySizeInGBs = {
            type = "integer",
        },
        nodeCount = {
            type = "integer",
        },
        ocid = {
            type = "string",
        },
        ociResourceAnchorName = {
            type = "string",
        },
        ociUrl = {
            type = "string",
        },
        domain = {
            type = "string",
        },
        scanDnsName = {
            type = "string",
        },
        scanDnsRecordId = {
            type = "string",
        },
        scanIpIds = {
            type = "list",
            member = { type = "string" },
        },
        shape = {
            type = "string",
        },
        sshPublicKeys = {
            type = "list",
            member = { type = "string" },
        },
        storageSizeInGBs = {
            type = "integer",
        },
        systemVersion = {
            type = "string",
        },
        createdAt = {
            type = "timestamp",
            traits = {
                timestamp_format = "date-time",
            },
        },
        timeZone = {
            type = "string",
        },
        vipIds = {
            type = "list",
            member = { type = "string" },
        },
        odbNetworkId = {
            type = "string",
        },
        odbNetworkArn = {
            type = "string",
        },
        percentProgress = {
            type = "float",
        },
        computeModel = {
            type = "string",
        },
        iamRoles = {
            type = "list",
            member = M.IamRole,
        },
    },
}

M.CloudVmClusterSummary = {
    type = "structure",
    members = {
        cloudVmClusterId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        displayName = {
            type = "string",
        },
        status = {
            type = "string",
        },
        statusReason = {
            type = "string",
        },
        cloudVmClusterArn = {
            type = "string",
        },
        cloudExadataInfrastructureId = {
            type = "string",
        },
        cloudExadataInfrastructureArn = {
            type = "string",
        },
        clusterName = {
            type = "string",
        },
        cpuCoreCount = {
            type = "integer",
        },
        dataCollectionOptions = M.DataCollectionOptions,
        dataStorageSizeInTBs = {
            type = "double",
        },
        dbNodeStorageSizeInGBs = {
            type = "integer",
        },
        dbServers = {
            type = "list",
            member = { type = "string" },
        },
        diskRedundancy = {
            type = "string",
        },
        giVersion = {
            type = "string",
        },
        hostname = {
            type = "string",
        },
        iormConfigCache = M.ExadataIormConfig,
        isLocalBackupEnabled = {
            type = "boolean",
        },
        isSparseDiskgroupEnabled = {
            type = "boolean",
        },
        lastUpdateHistoryEntryId = {
            type = "string",
        },
        licenseModel = {
            type = "string",
        },
        listenerPort = {
            type = "integer",
        },
        memorySizeInGBs = {
            type = "integer",
        },
        nodeCount = {
            type = "integer",
        },
        ocid = {
            type = "string",
        },
        ociResourceAnchorName = {
            type = "string",
        },
        ociUrl = {
            type = "string",
        },
        domain = {
            type = "string",
        },
        scanDnsName = {
            type = "string",
        },
        scanDnsRecordId = {
            type = "string",
        },
        scanIpIds = {
            type = "list",
            member = { type = "string" },
        },
        shape = {
            type = "string",
        },
        sshPublicKeys = {
            type = "list",
            member = { type = "string" },
        },
        storageSizeInGBs = {
            type = "integer",
        },
        systemVersion = {
            type = "string",
        },
        createdAt = {
            type = "timestamp",
            traits = {
                timestamp_format = "date-time",
            },
        },
        timeZone = {
            type = "string",
        },
        vipIds = {
            type = "list",
            member = { type = "string" },
        },
        odbNetworkId = {
            type = "string",
        },
        odbNetworkArn = {
            type = "string",
        },
        percentProgress = {
            type = "float",
        },
        computeModel = {
            type = "string",
        },
        iamRoles = {
            type = "list",
            member = M.IamRole,
        },
    },
}

M.CreateCloudVmClusterInput = {
    type = "structure",
    members = {
        cloudExadataInfrastructureId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        cpuCoreCount = {
            type = "integer",
            traits = {
                required = true,
            },
        },
        displayName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        giVersion = {
            type = "string",
            traits = {
                required = true,
            },
        },
        hostname = {
            type = "string",
            traits = {
                required = true,
            },
        },
        sshPublicKeys = {
            type = "list",
            member = { type = "string" },
            traits = {
                required = true,
            },
        },
        odbNetworkId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        clusterName = {
            type = "string",
        },
        dataCollectionOptions = M.DataCollectionOptions,
        dataStorageSizeInTBs = {
            type = "double",
        },
        dbNodeStorageSizeInGBs = {
            type = "integer",
        },
        dbServers = {
            type = "list",
            member = { type = "string" },
        },
        tags = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
        isLocalBackupEnabled = {
            type = "boolean",
        },
        isSparseDiskgroupEnabled = {
            type = "boolean",
        },
        licenseModel = {
            type = "string",
        },
        memorySizeInGBs = {
            type = "integer",
        },
        systemVersion = {
            type = "string",
        },
        timeZone = {
            type = "string",
        },
        clientToken = {
            type = "string",
            traits = {
                idempotency_token = true,
            },
        },
        scanListenerPortTcp = {
            type = "integer",
        },
    },
}

M.CreateCloudVmClusterOutput = {
    type = "structure",
    members = {
        displayName = {
            type = "string",
        },
        status = {
            type = "string",
        },
        statusReason = {
            type = "string",
        },
        cloudVmClusterId = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.DeleteCloudVmClusterInput = {
    type = "structure",
    members = {
        cloudVmClusterId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.DeleteCloudVmClusterOutput = {
    type = "structure",
}

M.GetCloudVmClusterInput = {
    type = "structure",
    members = {
        cloudVmClusterId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.GetCloudVmClusterOutput = {
    type = "structure",
    members = {
        cloudVmCluster = M.CloudVmCluster,
    },
}

M.ListCloudVmClustersInput = {
    type = "structure",
    members = {
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
        cloudExadataInfrastructureId = {
            type = "string",
        },
    },
}

M.ListCloudVmClustersOutput = {
    type = "structure",
    members = {
        nextToken = {
            type = "string",
        },
        cloudVmClusters = {
            type = "list",
            member = M.CloudVmClusterSummary,
            traits = {
                required = true,
            },
        },
    },
}

M.CreateOdbNetworkInput = {
    type = "structure",
    members = {
        displayName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        availabilityZone = {
            type = "string",
        },
        availabilityZoneId = {
            type = "string",
        },
        clientSubnetCidr = {
            type = "string",
            traits = {
                required = true,
            },
        },
        backupSubnetCidr = {
            type = "string",
        },
        customDomainName = {
            type = "string",
        },
        defaultDnsPrefix = {
            type = "string",
        },
        clientToken = {
            type = "string",
            traits = {
                idempotency_token = true,
            },
        },
        s3Access = {
            type = "string",
        },
        zeroEtlAccess = {
            type = "string",
        },
        stsAccess = {
            type = "string",
        },
        kmsAccess = {
            type = "string",
        },
        s3PolicyDocument = {
            type = "string",
        },
        stsPolicyDocument = {
            type = "string",
        },
        kmsPolicyDocument = {
            type = "string",
        },
        crossRegionS3RestoreSourcesToEnable = {
            type = "list",
            member = { type = "string" },
        },
        tags = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
    },
}

M.CreateOdbNetworkOutput = {
    type = "structure",
    members = {
        displayName = {
            type = "string",
        },
        status = {
            type = "string",
        },
        statusReason = {
            type = "string",
        },
        odbNetworkId = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.CreateOdbPeeringConnectionInput = {
    type = "structure",
    members = {
        odbNetworkId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        peerNetworkId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        displayName = {
            type = "string",
        },
        peerNetworkCidrsToBeAdded = {
            type = "list",
            member = { type = "string" },
        },
        peerNetworkRouteTableIds = {
            type = "list",
            member = { type = "string" },
        },
        clientToken = {
            type = "string",
            traits = {
                idempotency_token = true,
            },
        },
        tags = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
    },
}

M.CreateOdbPeeringConnectionOutput = {
    type = "structure",
    members = {
        displayName = {
            type = "string",
        },
        status = {
            type = "string",
        },
        statusReason = {
            type = "string",
        },
        odbPeeringConnectionId = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.ManagedResourceStatus = {
    ENABLED = "ENABLED",
    ENABLING = "ENABLING",
    DISABLED = "DISABLED",
    DISABLING = "DISABLING",
}

M.CrossRegionS3RestoreSourcesAccess = {
    type = "structure",
    members = {
        region = {
            type = "string",
        },
        ipv4Addresses = {
            type = "list",
            member = { type = "string" },
        },
        status = {
            type = "string",
        },
    },
}

M.DbNodeMaintenanceType = {
    VMDB_REBOOT_MIGRATION = "VMDB_REBOOT_MIGRATION",
}

M.DbNodeResourceStatus = {
    AVAILABLE = "AVAILABLE",
    FAILED = "FAILED",
    PROVISIONING = "PROVISIONING",
    TERMINATED = "TERMINATED",
    TERMINATING = "TERMINATING",
    UPDATING = "UPDATING",
    STOPPING = "STOPPING",
    STOPPED = "STOPPED",
    STARTING = "STARTING",
}

M.DbNode = {
    type = "structure",
    members = {
        dbNodeId = {
            type = "string",
        },
        dbNodeArn = {
            type = "string",
        },
        status = {
            type = "string",
        },
        statusReason = {
            type = "string",
        },
        additionalDetails = {
            type = "string",
        },
        backupIpId = {
            type = "string",
        },
        backupVnic2Id = {
            type = "string",
        },
        backupVnicId = {
            type = "string",
        },
        cpuCoreCount = {
            type = "integer",
        },
        dbNodeStorageSizeInGBs = {
            type = "integer",
        },
        dbServerId = {
            type = "string",
        },
        dbSystemId = {
            type = "string",
        },
        faultDomain = {
            type = "string",
        },
        hostIpId = {
            type = "string",
        },
        hostname = {
            type = "string",
        },
        ocid = {
            type = "string",
        },
        ociResourceAnchorName = {
            type = "string",
        },
        maintenanceType = {
            type = "string",
        },
        memorySizeInGBs = {
            type = "integer",
        },
        softwareStorageSizeInGB = {
            type = "integer",
        },
        createdAt = {
            type = "timestamp",
            traits = {
                timestamp_format = "date-time",
            },
        },
        timeMaintenanceWindowEnd = {
            type = "string",
        },
        timeMaintenanceWindowStart = {
            type = "string",
        },
        totalCpuCoreCount = {
            type = "integer",
        },
        vnic2Id = {
            type = "string",
        },
        vnicId = {
            type = "string",
        },
        privateIpAddress = {
            type = "string",
        },
        floatingIpAddress = {
            type = "string",
        },
    },
}

M.DbNodeSummary = {
    type = "structure",
    members = {
        dbNodeId = {
            type = "string",
        },
        dbNodeArn = {
            type = "string",
        },
        status = {
            type = "string",
        },
        statusReason = {
            type = "string",
        },
        additionalDetails = {
            type = "string",
        },
        backupIpId = {
            type = "string",
        },
        backupVnic2Id = {
            type = "string",
        },
        backupVnicId = {
            type = "string",
        },
        cpuCoreCount = {
            type = "integer",
        },
        dbNodeStorageSizeInGBs = {
            type = "integer",
        },
        dbServerId = {
            type = "string",
        },
        dbSystemId = {
            type = "string",
        },
        faultDomain = {
            type = "string",
        },
        hostIpId = {
            type = "string",
        },
        hostname = {
            type = "string",
        },
        ocid = {
            type = "string",
        },
        ociResourceAnchorName = {
            type = "string",
        },
        maintenanceType = {
            type = "string",
        },
        memorySizeInGBs = {
            type = "integer",
        },
        softwareStorageSizeInGB = {
            type = "integer",
        },
        createdAt = {
            type = "timestamp",
            traits = {
                timestamp_format = "date-time",
            },
        },
        timeMaintenanceWindowEnd = {
            type = "string",
        },
        timeMaintenanceWindowStart = {
            type = "string",
        },
        totalCpuCoreCount = {
            type = "integer",
        },
        vnic2Id = {
            type = "string",
        },
        vnicId = {
            type = "string",
        },
    },
}

M.GetDbNodeInput = {
    type = "structure",
    members = {
        cloudVmClusterId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        dbNodeId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.GetDbNodeOutput = {
    type = "structure",
    members = {
        dbNode = M.DbNode,
    },
}

M.ListDbNodesInput = {
    type = "structure",
    members = {
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
        cloudVmClusterId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.ListDbNodesOutput = {
    type = "structure",
    members = {
        nextToken = {
            type = "string",
        },
        dbNodes = {
            type = "list",
            member = M.DbNodeSummary,
            traits = {
                required = true,
            },
        },
    },
}

M.RebootDbNodeInput = {
    type = "structure",
    members = {
        cloudVmClusterId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        dbNodeId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.RebootDbNodeOutput = {
    type = "structure",
    members = {
        dbNodeId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        status = {
            type = "string",
        },
        statusReason = {
            type = "string",
        },
    },
}

M.StartDbNodeInput = {
    type = "structure",
    members = {
        cloudVmClusterId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        dbNodeId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.StartDbNodeOutput = {
    type = "structure",
    members = {
        dbNodeId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        status = {
            type = "string",
        },
        statusReason = {
            type = "string",
        },
    },
}

M.StopDbNodeInput = {
    type = "structure",
    members = {
        cloudVmClusterId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        dbNodeId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.StopDbNodeOutput = {
    type = "structure",
    members = {
        dbNodeId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        status = {
            type = "string",
        },
        statusReason = {
            type = "string",
        },
    },
}

M.ShapeType = {
    AMD = "AMD",
    INTEL = "INTEL",
    INTEL_FLEX_X9 = "INTEL_FLEX_X9",
    AMPERE_FLEX_A1 = "AMPERE_FLEX_A1",
}

M.DbSystemShapeSummary = {
    type = "structure",
    members = {
        availableCoreCount = {
            type = "integer",
        },
        availableCoreCountPerNode = {
            type = "integer",
        },
        availableDataStorageInTBs = {
            type = "integer",
        },
        availableDataStoragePerServerInTBs = {
            type = "integer",
        },
        availableDbNodePerNodeInGBs = {
            type = "integer",
        },
        availableDbNodeStorageInGBs = {
            type = "integer",
        },
        availableMemoryInGBs = {
            type = "integer",
        },
        availableMemoryPerNodeInGBs = {
            type = "integer",
        },
        coreCountIncrement = {
            type = "integer",
        },
        maxStorageCount = {
            type = "integer",
        },
        maximumNodeCount = {
            type = "integer",
        },
        minCoreCountPerNode = {
            type = "integer",
        },
        minDataStorageInTBs = {
            type = "integer",
        },
        minDbNodeStoragePerNodeInGBs = {
            type = "integer",
        },
        minMemoryPerNodeInGBs = {
            type = "integer",
        },
        minStorageCount = {
            type = "integer",
        },
        minimumCoreCount = {
            type = "integer",
        },
        minimumNodeCount = {
            type = "integer",
        },
        runtimeMinimumCoreCount = {
            type = "integer",
        },
        shapeFamily = {
            type = "string",
        },
        shapeType = {
            type = "string",
        },
        name = {
            type = "string",
        },
        computeModel = {
            type = "string",
        },
        areServerTypesSupported = {
            type = "boolean",
        },
    },
}

M.DeleteOdbNetworkInput = {
    type = "structure",
    members = {
        odbNetworkId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        deleteAssociatedResources = {
            type = "boolean",
            traits = {
                required = true,
            },
        },
    },
}

M.DeleteOdbNetworkOutput = {
    type = "structure",
}

M.DeleteOdbPeeringConnectionInput = {
    type = "structure",
    members = {
        odbPeeringConnectionId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.DeleteOdbPeeringConnectionOutput = {
    type = "structure",
}

M.DisassociateIamRoleFromResourceInput = {
    type = "structure",
    members = {
        iamRoleArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        awsIntegration = {
            type = "string",
            traits = {
                required = true,
            },
        },
        resourceArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.DisassociateIamRoleFromResourceOutput = {
    type = "structure",
}

M.GetOciOnboardingStatusInput = {
    type = "structure",
}

M.OciIdentityDomain = {
    type = "structure",
    members = {
        ociIdentityDomainId = {
            type = "string",
        },
        ociIdentityDomainResourceUrl = {
            type = "string",
        },
        ociIdentityDomainUrl = {
            type = "string",
        },
        status = {
            type = "string",
        },
        statusReason = {
            type = "string",
        },
        accountSetupCloudFormationUrl = {
            type = "string",
        },
    },
}

M.OciOnboardingStatus = {
    NOT_STARTED = "NOT_STARTED",
    PENDING_LINK_GENERATION = "PENDING_LINK_GENERATION",
    PENDING_CUSTOMER_ACTION = "PENDING_CUSTOMER_ACTION",
    PENDING_INITIALIZATION = "PENDING_INITIALIZATION",
    ACTIVATING = "ACTIVATING",
    ACTIVE_IN_HOME_REGION = "ACTIVE_IN_HOME_REGION",
    ACTIVE = "ACTIVE",
    ACTIVE_LIMITED = "ACTIVE_LIMITED",
    FAILED = "FAILED",
    PUBLIC_OFFER_UNSUPPORTED = "PUBLIC_OFFER_UNSUPPORTED",
    SUSPENDED = "SUSPENDED",
    CANCELED = "CANCELED",
}

M.GetOciOnboardingStatusOutput = {
    type = "structure",
    members = {
        status = {
            type = "string",
        },
        existingTenancyActivationLink = {
            type = "string",
        },
        newTenancyActivationLink = {
            type = "string",
        },
        ociIdentityDomain = M.OciIdentityDomain,
    },
}

M.GetOdbNetworkInput = {
    type = "structure",
    members = {
        odbNetworkId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.KmsAccess = {
    type = "structure",
    members = {
        status = {
            type = "string",
        },
        ipv4Addresses = {
            type = "list",
            member = { type = "string" },
        },
        domainName = {
            type = "string",
        },
        kmsPolicyDocument = {
            type = "string",
        },
    },
}

M.ManagedS3BackupAccess = {
    type = "structure",
    members = {
        status = {
            type = "string",
        },
        ipv4Addresses = {
            type = "list",
            member = { type = "string" },
        },
    },
}

M.S3Access = {
    type = "structure",
    members = {
        status = {
            type = "string",
        },
        ipv4Addresses = {
            type = "list",
            member = { type = "string" },
        },
        domainName = {
            type = "string",
        },
        s3PolicyDocument = {
            type = "string",
        },
    },
}

M.VpcEndpointType = {
    SERVICENETWORK = "SERVICENETWORK",
}

M.ServiceNetworkEndpoint = {
    type = "structure",
    members = {
        vpcEndpointId = {
            type = "string",
        },
        vpcEndpointType = {
            type = "string",
        },
    },
}

M.StsAccess = {
    type = "structure",
    members = {
        status = {
            type = "string",
        },
        ipv4Addresses = {
            type = "list",
            member = { type = "string" },
        },
        domainName = {
            type = "string",
        },
        stsPolicyDocument = {
            type = "string",
        },
    },
}

M.ZeroEtlAccess = {
    type = "structure",
    members = {
        status = {
            type = "string",
        },
        cidr = {
            type = "string",
        },
    },
}

M.ManagedServices = {
    type = "structure",
    members = {
        serviceNetworkArn = {
            type = "string",
        },
        resourceGatewayArn = {
            type = "string",
        },
        managedServicesIpv4Cidrs = {
            type = "list",
            member = { type = "string" },
        },
        serviceNetworkEndpoint = M.ServiceNetworkEndpoint,
        managedS3BackupAccess = M.ManagedS3BackupAccess,
        zeroEtlAccess = M.ZeroEtlAccess,
        s3Access = M.S3Access,
        stsAccess = M.StsAccess,
        kmsAccess = M.KmsAccess,
        crossRegionS3RestoreSourcesAccess = {
            type = "list",
            member = M.CrossRegionS3RestoreSourcesAccess,
        },
    },
}

M.OciDnsForwardingConfig = {
    type = "structure",
    members = {
        domainName = {
            type = "string",
        },
        ociDnsListenerIp = {
            type = "string",
        },
    },
}

M.OdbNetwork = {
    type = "structure",
    members = {
        odbNetworkId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        displayName = {
            type = "string",
        },
        status = {
            type = "string",
        },
        statusReason = {
            type = "string",
        },
        odbNetworkArn = {
            type = "string",
        },
        availabilityZone = {
            type = "string",
        },
        availabilityZoneId = {
            type = "string",
        },
        clientSubnetCidr = {
            type = "string",
        },
        backupSubnetCidr = {
            type = "string",
        },
        customDomainName = {
            type = "string",
        },
        defaultDnsPrefix = {
            type = "string",
        },
        peeredCidrs = {
            type = "list",
            member = { type = "string" },
        },
        ociNetworkAnchorId = {
            type = "string",
        },
        ociNetworkAnchorUrl = {
            type = "string",
        },
        ociResourceAnchorName = {
            type = "string",
        },
        ociVcnId = {
            type = "string",
        },
        ociVcnUrl = {
            type = "string",
        },
        ociDnsForwardingConfigs = {
            type = "list",
            member = M.OciDnsForwardingConfig,
        },
        createdAt = {
            type = "timestamp",
            traits = {
                timestamp_format = "date-time",
            },
        },
        percentProgress = {
            type = "float",
        },
        managedServices = M.ManagedServices,
        ec2PlacementGroupIds = {
            type = "list",
            member = { type = "string" },
        },
    },
}

M.GetOdbNetworkOutput = {
    type = "structure",
    members = {
        odbNetwork = M.OdbNetwork,
    },
}

M.GetOdbPeeringConnectionInput = {
    type = "structure",
    members = {
        odbPeeringConnectionId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.OdbPeeringConnection = {
    type = "structure",
    members = {
        odbPeeringConnectionId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        displayName = {
            type = "string",
        },
        status = {
            type = "string",
        },
        statusReason = {
            type = "string",
        },
        odbPeeringConnectionArn = {
            type = "string",
        },
        odbNetworkArn = {
            type = "string",
        },
        peerNetworkArn = {
            type = "string",
        },
        odbPeeringConnectionType = {
            type = "string",
        },
        peerNetworkCidrs = {
            type = "list",
            member = { type = "string" },
        },
        createdAt = {
            type = "timestamp",
            traits = {
                timestamp_format = "date-time",
            },
        },
        percentProgress = {
            type = "float",
        },
    },
}

M.GetOdbPeeringConnectionOutput = {
    type = "structure",
    members = {
        odbPeeringConnection = M.OdbPeeringConnection,
    },
}

M.GiVersionSummary = {
    type = "structure",
    members = {
        version = {
            type = "string",
        },
    },
}

M.InitializeServiceInput = {
    type = "structure",
    members = {
        ociIdentityDomain = {
            type = "boolean",
            traits = {
                default = true,
            },
        },
    },
}

M.InitializeServiceOutput = {
    type = "structure",
}

M.ListDbSystemShapesInput = {
    type = "structure",
    members = {
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
        availabilityZone = {
            type = "string",
        },
        availabilityZoneId = {
            type = "string",
        },
    },
}

M.ListDbSystemShapesOutput = {
    type = "structure",
    members = {
        nextToken = {
            type = "string",
        },
        dbSystemShapes = {
            type = "list",
            member = M.DbSystemShapeSummary,
            traits = {
                required = true,
            },
        },
    },
}

M.ListGiVersionsInput = {
    type = "structure",
    members = {
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
        shape = {
            type = "string",
        },
    },
}

M.ListGiVersionsOutput = {
    type = "structure",
    members = {
        nextToken = {
            type = "string",
        },
        giVersions = {
            type = "list",
            member = M.GiVersionSummary,
            traits = {
                required = true,
            },
        },
    },
}

M.ListOdbNetworksInput = {
    type = "structure",
    members = {
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

M.OdbNetworkSummary = {
    type = "structure",
    members = {
        odbNetworkId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        displayName = {
            type = "string",
        },
        status = {
            type = "string",
        },
        statusReason = {
            type = "string",
        },
        odbNetworkArn = {
            type = "string",
        },
        availabilityZone = {
            type = "string",
        },
        availabilityZoneId = {
            type = "string",
        },
        clientSubnetCidr = {
            type = "string",
        },
        backupSubnetCidr = {
            type = "string",
        },
        customDomainName = {
            type = "string",
        },
        defaultDnsPrefix = {
            type = "string",
        },
        peeredCidrs = {
            type = "list",
            member = { type = "string" },
        },
        ociNetworkAnchorId = {
            type = "string",
        },
        ociNetworkAnchorUrl = {
            type = "string",
        },
        ociResourceAnchorName = {
            type = "string",
        },
        ociVcnId = {
            type = "string",
        },
        ociVcnUrl = {
            type = "string",
        },
        ociDnsForwardingConfigs = {
            type = "list",
            member = M.OciDnsForwardingConfig,
        },
        createdAt = {
            type = "timestamp",
            traits = {
                timestamp_format = "date-time",
            },
        },
        percentProgress = {
            type = "float",
        },
        managedServices = M.ManagedServices,
        ec2PlacementGroupIds = {
            type = "list",
            member = { type = "string" },
        },
    },
}

M.ListOdbNetworksOutput = {
    type = "structure",
    members = {
        nextToken = {
            type = "string",
        },
        odbNetworks = {
            type = "list",
            member = M.OdbNetworkSummary,
            traits = {
                required = true,
            },
        },
    },
}

M.ListOdbPeeringConnectionsInput = {
    type = "structure",
    members = {
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
        odbNetworkId = {
            type = "string",
        },
    },
}

M.OdbPeeringConnectionSummary = {
    type = "structure",
    members = {
        odbPeeringConnectionId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        displayName = {
            type = "string",
        },
        status = {
            type = "string",
        },
        statusReason = {
            type = "string",
        },
        odbPeeringConnectionArn = {
            type = "string",
        },
        odbNetworkArn = {
            type = "string",
        },
        peerNetworkArn = {
            type = "string",
        },
        odbPeeringConnectionType = {
            type = "string",
        },
        peerNetworkCidrs = {
            type = "list",
            member = { type = "string" },
        },
        createdAt = {
            type = "timestamp",
            traits = {
                timestamp_format = "date-time",
            },
        },
        percentProgress = {
            type = "float",
        },
    },
}

M.ListOdbPeeringConnectionsOutput = {
    type = "structure",
    members = {
        nextToken = {
            type = "string",
        },
        odbPeeringConnections = {
            type = "list",
            member = M.OdbPeeringConnectionSummary,
            traits = {
                required = true,
            },
        },
    },
}

M.ListSystemVersionsInput = {
    type = "structure",
    members = {
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
        giVersion = {
            type = "string",
            traits = {
                required = true,
            },
        },
        shape = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.SystemVersionSummary = {
    type = "structure",
    members = {
        giVersion = {
            type = "string",
        },
        shape = {
            type = "string",
        },
        systemVersions = {
            type = "list",
            member = { type = "string" },
        },
    },
}

M.ListSystemVersionsOutput = {
    type = "structure",
    members = {
        nextToken = {
            type = "string",
        },
        systemVersions = {
            type = "list",
            member = M.SystemVersionSummary,
            traits = {
                required = true,
            },
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
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
    },
}

M.UpdateOdbNetworkInput = {
    type = "structure",
    members = {
        odbNetworkId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        displayName = {
            type = "string",
        },
        peeredCidrsToBeAdded = {
            type = "list",
            member = { type = "string" },
        },
        peeredCidrsToBeRemoved = {
            type = "list",
            member = { type = "string" },
        },
        s3Access = {
            type = "string",
        },
        zeroEtlAccess = {
            type = "string",
        },
        stsAccess = {
            type = "string",
        },
        kmsAccess = {
            type = "string",
        },
        s3PolicyDocument = {
            type = "string",
        },
        stsPolicyDocument = {
            type = "string",
        },
        kmsPolicyDocument = {
            type = "string",
        },
        crossRegionS3RestoreSourcesToEnable = {
            type = "list",
            member = { type = "string" },
        },
        crossRegionS3RestoreSourcesToDisable = {
            type = "list",
            member = { type = "string" },
        },
    },
}

M.UpdateOdbNetworkOutput = {
    type = "structure",
    members = {
        displayName = {
            type = "string",
        },
        status = {
            type = "string",
        },
        statusReason = {
            type = "string",
        },
        odbNetworkId = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.UpdateOdbPeeringConnectionInput = {
    type = "structure",
    members = {
        odbPeeringConnectionId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        displayName = {
            type = "string",
        },
        peerNetworkCidrsToBeAdded = {
            type = "list",
            member = { type = "string" },
        },
        peerNetworkCidrsToBeRemoved = {
            type = "list",
            member = { type = "string" },
        },
    },
}

M.UpdateOdbPeeringConnectionOutput = {
    type = "structure",
    members = {
        displayName = {
            type = "string",
        },
        status = {
            type = "string",
        },
        statusReason = {
            type = "string",
        },
        odbPeeringConnectionId = {
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
                required = true,
            },
        },
    },
}

M.UntagResourceOutput = {
    type = "structure",
}

return M
