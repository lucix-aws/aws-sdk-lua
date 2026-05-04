local M = {}

M.AccessDeniedException = {
    type = "structure",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.ApplyTimeOf = {
    UTC = "UTC",
    DEVICE = "DEVICE",
}

M.ConflictException = {
    type = "structure",
    error = "client",
    members = {
        message = {
            type = "string",
        },
        resourceId = {
            type = "string",
        },
        resourceType = {
            type = "string",
        },
    },
}

M.DayOfWeek = {
    MONDAY = "MONDAY",
    TUESDAY = "TUESDAY",
    WEDNESDAY = "WEDNESDAY",
    THURSDAY = "THURSDAY",
    FRIDAY = "FRIDAY",
    SATURDAY = "SATURDAY",
    SUNDAY = "SUNDAY",
}

M.MaintenanceWindowType = {
    SYSTEM = "SYSTEM",
    CUSTOM = "CUSTOM",
}

M.MaintenanceWindow = {
    type = "structure",
    members = {
        type = {
            type = "string",
            traits = {
                required = true,
            },
        },
        startTimeHour = {
            type = "number",
        },
        startTimeMinute = {
            type = "number",
        },
        endTimeHour = {
            type = "number",
        },
        endTimeMinute = {
            type = "number",
        },
        daysOfTheWeek = {
            type = "list",
            member_type = "string",
        },
        applyTimeOf = {
            type = "string",
        },
    },
}

M.SoftwareSetUpdateMode = {
    USE_LATEST = "USE_LATEST",
    USE_DESIRED = "USE_DESIRED",
}

M.SoftwareSetUpdateSchedule = {
    USE_MAINTENANCE_WINDOW = "USE_MAINTENANCE_WINDOW",
    APPLY_IMMEDIATELY = "APPLY_IMMEDIATELY",
}

M.CreateEnvironmentInput = {
    type = "structure",
    members = {
        name = {
            type = "string",
        },
        desktopArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        desktopEndpoint = {
            type = "string",
        },
        softwareSetUpdateSchedule = {
            type = "string",
        },
        maintenanceWindow = {
            type = "structure",
        },
        softwareSetUpdateMode = {
            type = "string",
        },
        desiredSoftwareSetId = {
            type = "string",
        },
        kmsKeyArn = {
            type = "string",
        },
        clientToken = {
            type = "string",
        },
        tags = {
            type = "map",
            key_type = "string",
            value_type = "string",
        },
        deviceCreationTags = {
            type = "map",
            key_type = "string",
            value_type = "string",
        },
    },
}

M.DesktopType = {
    WORKSPACES = "workspaces",
    APPSTREAM = "appstream",
    WORKSPACES_WEB = "workspaces-web",
}

M.EnvironmentSummary = {
    type = "structure",
    members = {
        id = {
            type = "string",
        },
        name = {
            type = "string",
        },
        desktopArn = {
            type = "string",
        },
        desktopEndpoint = {
            type = "string",
        },
        desktopType = {
            type = "string",
        },
        activationCode = {
            type = "string",
        },
        softwareSetUpdateSchedule = {
            type = "string",
        },
        maintenanceWindow = {
            type = "structure",
        },
        softwareSetUpdateMode = {
            type = "string",
        },
        desiredSoftwareSetId = {
            type = "string",
        },
        pendingSoftwareSetId = {
            type = "string",
        },
        createdAt = {
            type = "timestamp",
        },
        updatedAt = {
            type = "timestamp",
        },
        arn = {
            type = "string",
        },
    },
}

M.CreateEnvironmentOutput = {
    type = "structure",
    members = {
        environment = {
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
        },
        retryAfterSeconds = {
            type = "number",
            traits = {
                http_header = "Retry-After",
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
        },
        resourceId = {
            type = "string",
        },
        resourceType = {
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
        },
        resourceId = {
            type = "string",
        },
        resourceType = {
            type = "string",
        },
        serviceCode = {
            type = "string",
        },
        quotaCode = {
            type = "string",
        },
    },
}

M.ThrottlingException = {
    type = "structure",
    error = "client",
    members = {
        message = {
            type = "string",
        },
        serviceCode = {
            type = "string",
        },
        quotaCode = {
            type = "string",
        },
        retryAfterSeconds = {
            type = "number",
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
        },
        reason = {
            type = "string",
        },
        fieldList = {
            type = "list",
            member_type = "structure",
        },
    },
}

M.DeleteDeviceInput = {
    type = "structure",
    members = {
        id = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        clientToken = {
            type = "string",
            traits = {
                http_query = "clientToken",
            },
        },
    },
}

M.DeleteDeviceOutput = {
    type = "structure",
}

M.DeleteEnvironmentInput = {
    type = "structure",
    members = {
        id = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        clientToken = {
            type = "string",
            traits = {
                http_query = "clientToken",
            },
        },
    },
}

M.DeleteEnvironmentOutput = {
    type = "structure",
}

M.TargetDeviceStatus = {
    DEREGISTERED = "DEREGISTERED",
    ARCHIVED = "ARCHIVED",
}

M.DeregisterDeviceInput = {
    type = "structure",
    members = {
        id = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        targetDeviceStatus = {
            type = "string",
        },
        clientToken = {
            type = "string",
        },
    },
}

M.DeregisterDeviceOutput = {
    type = "structure",
}

M.DeviceSoftwareSetComplianceStatus = {
    NONE = "NONE",
    COMPLIANT = "COMPLIANT",
    NOT_COMPLIANT = "NOT_COMPLIANT",
}

M.SoftwareSetUpdateStatus = {
    AVAILABLE = "AVAILABLE",
    IN_PROGRESS = "IN_PROGRESS",
    UP_TO_DATE = "UP_TO_DATE",
}

M.DeviceStatus = {
    REGISTERED = "REGISTERED",
    DEREGISTERING = "DEREGISTERING",
    DEREGISTERED = "DEREGISTERED",
    ARCHIVED = "ARCHIVED",
}

M.Device = {
    type = "structure",
    members = {
        id = {
            type = "string",
        },
        serialNumber = {
            type = "string",
        },
        name = {
            type = "string",
        },
        model = {
            type = "string",
        },
        environmentId = {
            type = "string",
        },
        status = {
            type = "string",
        },
        currentSoftwareSetId = {
            type = "string",
        },
        currentSoftwareSetVersion = {
            type = "string",
        },
        desiredSoftwareSetId = {
            type = "string",
        },
        pendingSoftwareSetId = {
            type = "string",
        },
        pendingSoftwareSetVersion = {
            type = "string",
        },
        softwareSetUpdateSchedule = {
            type = "string",
        },
        softwareSetComplianceStatus = {
            type = "string",
        },
        softwareSetUpdateStatus = {
            type = "string",
        },
        lastConnectedAt = {
            type = "timestamp",
        },
        lastPostureAt = {
            type = "timestamp",
        },
        createdAt = {
            type = "timestamp",
        },
        updatedAt = {
            type = "timestamp",
        },
        arn = {
            type = "string",
        },
        kmsKeyArn = {
            type = "string",
        },
        lastUserId = {
            type = "string",
        },
    },
}

M.DeviceSummary = {
    type = "structure",
    members = {
        id = {
            type = "string",
        },
        serialNumber = {
            type = "string",
        },
        name = {
            type = "string",
        },
        model = {
            type = "string",
        },
        environmentId = {
            type = "string",
        },
        status = {
            type = "string",
        },
        currentSoftwareSetId = {
            type = "string",
        },
        desiredSoftwareSetId = {
            type = "string",
        },
        pendingSoftwareSetId = {
            type = "string",
        },
        softwareSetUpdateSchedule = {
            type = "string",
        },
        lastConnectedAt = {
            type = "timestamp",
        },
        lastPostureAt = {
            type = "timestamp",
        },
        createdAt = {
            type = "timestamp",
        },
        updatedAt = {
            type = "timestamp",
        },
        arn = {
            type = "string",
        },
        lastUserId = {
            type = "string",
        },
    },
}

M.EnvironmentSoftwareSetComplianceStatus = {
    NO_REGISTERED_DEVICES = "NO_REGISTERED_DEVICES",
    COMPLIANT = "COMPLIANT",
    NOT_COMPLIANT = "NOT_COMPLIANT",
}

M.Environment = {
    type = "structure",
    members = {
        id = {
            type = "string",
        },
        name = {
            type = "string",
        },
        desktopArn = {
            type = "string",
        },
        desktopEndpoint = {
            type = "string",
        },
        desktopType = {
            type = "string",
        },
        activationCode = {
            type = "string",
        },
        registeredDevicesCount = {
            type = "number",
        },
        softwareSetUpdateSchedule = {
            type = "string",
        },
        maintenanceWindow = {
            type = "structure",
        },
        softwareSetUpdateMode = {
            type = "string",
        },
        desiredSoftwareSetId = {
            type = "string",
        },
        pendingSoftwareSetId = {
            type = "string",
        },
        pendingSoftwareSetVersion = {
            type = "string",
        },
        softwareSetComplianceStatus = {
            type = "string",
        },
        createdAt = {
            type = "timestamp",
        },
        updatedAt = {
            type = "timestamp",
        },
        arn = {
            type = "string",
        },
        kmsKeyArn = {
            type = "string",
        },
        deviceCreationTags = {
            type = "map",
            key_type = "string",
            value_type = "string",
        },
    },
}

M.GetDeviceInput = {
    type = "structure",
    members = {
        id = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.GetDeviceOutput = {
    type = "structure",
    members = {
        device = {
            type = "structure",
        },
    },
}

M.GetEnvironmentInput = {
    type = "structure",
    members = {
        id = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.GetEnvironmentOutput = {
    type = "structure",
    members = {
        environment = {
            type = "structure",
        },
    },
}

M.GetSoftwareSetInput = {
    type = "structure",
    members = {
        id = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.Software = {
    type = "structure",
    members = {
        name = {
            type = "string",
        },
        version = {
            type = "string",
        },
    },
}

M.SoftwareSetValidationStatus = {
    VALIDATED = "VALIDATED",
    NOT_VALIDATED = "NOT_VALIDATED",
}

M.SoftwareSet = {
    type = "structure",
    members = {
        id = {
            type = "string",
        },
        version = {
            type = "string",
        },
        releasedAt = {
            type = "timestamp",
        },
        supportedUntil = {
            type = "timestamp",
        },
        validationStatus = {
            type = "string",
        },
        software = {
            type = "list",
            member_type = "structure",
        },
        arn = {
            type = "string",
        },
    },
}

M.GetSoftwareSetOutput = {
    type = "structure",
    members = {
        softwareSet = {
            type = "structure",
        },
    },
}

M.ListDevicesInput = {
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

M.ListEnvironmentsInput = {
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

M.ListEnvironmentsOutput = {
    type = "structure",
    members = {
        environments = {
            type = "list",
            member_type = "structure",
        },
        nextToken = {
            type = "string",
        },
    },
}

M.ListSoftwareSetsInput = {
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

M.SoftwareSetSummary = {
    type = "structure",
    members = {
        id = {
            type = "string",
        },
        version = {
            type = "string",
        },
        releasedAt = {
            type = "timestamp",
        },
        supportedUntil = {
            type = "timestamp",
        },
        validationStatus = {
            type = "string",
        },
        arn = {
            type = "string",
        },
    },
}

M.ListSoftwareSetsOutput = {
    type = "structure",
    members = {
        softwareSets = {
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

M.UpdateDeviceInput = {
    type = "structure",
    members = {
        id = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        name = {
            type = "string",
        },
        desiredSoftwareSetId = {
            type = "string",
        },
        softwareSetUpdateSchedule = {
            type = "string",
        },
    },
}

M.UpdateDeviceOutput = {
    type = "structure",
    members = {
        device = {
            type = "structure",
        },
    },
}

M.UpdateEnvironmentInput = {
    type = "structure",
    members = {
        id = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        name = {
            type = "string",
        },
        desktopArn = {
            type = "string",
        },
        desktopEndpoint = {
            type = "string",
        },
        softwareSetUpdateSchedule = {
            type = "string",
        },
        maintenanceWindow = {
            type = "structure",
        },
        softwareSetUpdateMode = {
            type = "string",
        },
        desiredSoftwareSetId = {
            type = "string",
        },
        deviceCreationTags = {
            type = "map",
            key_type = "string",
            value_type = "string",
        },
    },
}

M.UpdateEnvironmentOutput = {
    type = "structure",
    members = {
        environment = {
            type = "structure",
        },
    },
}

M.UpdateSoftwareSetInput = {
    type = "structure",
    members = {
        id = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        validationStatus = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.UpdateSoftwareSetOutput = {
    type = "structure",
}

return M
