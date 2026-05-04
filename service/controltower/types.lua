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

M.GetBaselineOperationInput = {
    type = "structure",
    members = {
        operationIdentifier = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.BaselineOperationType = {
    ENABLE_BASELINE = "ENABLE_BASELINE",
    DISABLE_BASELINE = "DISABLE_BASELINE",
    UPDATE_ENABLED_BASELINE = "UPDATE_ENABLED_BASELINE",
    RESET_ENABLED_BASELINE = "RESET_ENABLED_BASELINE",
}

M.BaselineOperationStatus = {
    SUCCEEDED = "SUCCEEDED",
    FAILED = "FAILED",
    IN_PROGRESS = "IN_PROGRESS",
}

M.BaselineOperation = {
    type = "structure",
    members = {
        operationIdentifier = {
            type = "string",
        },
        operationType = {
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
        statusMessage = {
            type = "string",
        },
    },
}

M.GetBaselineOperationOutput = {
    type = "structure",
    members = {
        baselineOperation = setmetatable({ traits = {
            required = true,
        } }, { __index = M.BaselineOperation }),
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
        serviceCode = {
            type = "string",
        },
        quotaCode = {
            type = "string",
        },
        retryAfterSeconds = {
            type = "integer",
            traits = {
                http_header = "Retry-After",
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

M.GetBaselineInput = {
    type = "structure",
    members = {
        baselineIdentifier = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.GetBaselineOutput = {
    type = "structure",
    members = {
        arn = {
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
        description = {
            type = "string",
        },
    },
}

M.ListBaselinesInput = {
    type = "structure",
    members = {
        nextToken = {
            type = "string",
        },
        maxResults = {
            type = "integer",
        },
    },
}

M.BaselineSummary = {
    type = "structure",
    members = {
        arn = {
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
        description = {
            type = "string",
        },
    },
}

M.ListBaselinesOutput = {
    type = "structure",
    members = {
        baselines = {
            type = "list",
            member = M.BaselineSummary,
            traits = {
                required = true,
            },
        },
        nextToken = {
            type = "string",
        },
    },
}

M.GetControlOperationInput = {
    type = "structure",
    members = {
        operationIdentifier = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.ControlOperationType = {
    ENABLE_CONTROL = "ENABLE_CONTROL",
    DISABLE_CONTROL = "DISABLE_CONTROL",
    UPDATE_ENABLED_CONTROL = "UPDATE_ENABLED_CONTROL",
    RESET_ENABLED_CONTROL = "RESET_ENABLED_CONTROL",
}

M.ControlOperationStatus = {
    SUCCEEDED = "SUCCEEDED",
    FAILED = "FAILED",
    IN_PROGRESS = "IN_PROGRESS",
}

M.ControlOperation = {
    type = "structure",
    members = {
        operationType = {
            type = "string",
        },
        startTime = {
            type = "timestamp",
            traits = {
                timestamp_format = "date-time",
            },
        },
        endTime = {
            type = "timestamp",
            traits = {
                timestamp_format = "date-time",
            },
        },
        status = {
            type = "string",
        },
        statusMessage = {
            type = "string",
        },
        operationIdentifier = {
            type = "string",
        },
        controlIdentifier = {
            type = "string",
        },
        targetIdentifier = {
            type = "string",
        },
        enabledControlIdentifier = {
            type = "string",
        },
    },
}

M.GetControlOperationOutput = {
    type = "structure",
    members = {
        controlOperation = setmetatable({ traits = {
            required = true,
        } }, { __index = M.ControlOperation }),
    },
}

M.ControlOperationFilter = {
    type = "structure",
    members = {
        controlIdentifiers = {
            type = "list",
            member = { type = "string" },
        },
        targetIdentifiers = {
            type = "list",
            member = { type = "string" },
        },
        enabledControlIdentifiers = {
            type = "list",
            member = { type = "string" },
        },
        statuses = {
            type = "list",
            member = { type = "string" },
        },
        controlOperationTypes = {
            type = "list",
            member = { type = "string" },
        },
    },
}

M.ListControlOperationsInput = {
    type = "structure",
    members = {
        filter = M.ControlOperationFilter,
        nextToken = {
            type = "string",
        },
        maxResults = {
            type = "integer",
        },
    },
}

M.ControlOperationSummary = {
    type = "structure",
    members = {
        operationType = {
            type = "string",
        },
        startTime = {
            type = "timestamp",
            traits = {
                timestamp_format = "date-time",
            },
        },
        endTime = {
            type = "timestamp",
            traits = {
                timestamp_format = "date-time",
            },
        },
        status = {
            type = "string",
        },
        statusMessage = {
            type = "string",
        },
        operationIdentifier = {
            type = "string",
        },
        controlIdentifier = {
            type = "string",
        },
        targetIdentifier = {
            type = "string",
        },
        enabledControlIdentifier = {
            type = "string",
        },
    },
}

M.ListControlOperationsOutput = {
    type = "structure",
    members = {
        controlOperations = {
            type = "list",
            member = M.ControlOperationSummary,
            traits = {
                required = true,
            },
        },
        nextToken = {
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

M.DisableControlInput = {
    type = "structure",
    members = {
        controlIdentifier = {
            type = "string",
        },
        targetIdentifier = {
            type = "string",
        },
        enabledControlIdentifier = {
            type = "string",
        },
    },
}

M.DisableControlOutput = {
    type = "structure",
    members = {
        operationIdentifier = {
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
    },
}

M.DisableBaselineInput = {
    type = "structure",
    members = {
        enabledBaselineIdentifier = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.DisableBaselineOutput = {
    type = "structure",
    members = {
        operationIdentifier = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.EnabledBaselineParameter = {
    type = "structure",
    members = {
        key = {
            type = "string",
            traits = {
                required = true,
            },
        },
        value = {
            type = "document",
            traits = {
                required = true,
            },
        },
    },
}

M.EnableBaselineInput = {
    type = "structure",
    members = {
        baselineVersion = {
            type = "string",
            traits = {
                required = true,
            },
        },
        parameters = {
            type = "list",
            member = M.EnabledBaselineParameter,
        },
        baselineIdentifier = {
            type = "string",
            traits = {
                required = true,
            },
        },
        targetIdentifier = {
            type = "string",
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

M.EnableBaselineOutput = {
    type = "structure",
    members = {
        operationIdentifier = {
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

M.GetEnabledBaselineInput = {
    type = "structure",
    members = {
        enabledBaselineIdentifier = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.EnabledBaselineDriftStatus = {
    IN_SYNC = "IN_SYNC",
    DRIFTED = "DRIFTED",
}

M.EnabledBaselineInheritanceDrift = {
    type = "structure",
    members = {
        status = {
            type = "string",
        },
    },
}

M.EnabledBaselineDriftTypes = {
    type = "structure",
    members = {
        inheritance = M.EnabledBaselineInheritanceDrift,
    },
}

M.EnabledBaselineDriftStatusSummary = {
    type = "structure",
    members = {
        types = M.EnabledBaselineDriftTypes,
    },
}

M.EnabledBaselineParameterSummary = {
    type = "structure",
    members = {
        key = {
            type = "string",
            traits = {
                required = true,
            },
        },
        value = {
            type = "document",
            traits = {
                required = true,
            },
        },
    },
}

M.EnablementStatus = {
    SUCCEEDED = "SUCCEEDED",
    FAILED = "FAILED",
    UNDER_CHANGE = "UNDER_CHANGE",
}

M.EnablementStatusSummary = {
    type = "structure",
    members = {
        status = {
            type = "string",
        },
        lastOperationIdentifier = {
            type = "string",
        },
    },
}

M.EnabledBaselineDetails = {
    type = "structure",
    members = {
        arn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        baselineIdentifier = {
            type = "string",
            traits = {
                required = true,
            },
        },
        baselineVersion = {
            type = "string",
        },
        driftStatusSummary = M.EnabledBaselineDriftStatusSummary,
        targetIdentifier = {
            type = "string",
            traits = {
                required = true,
            },
        },
        parentIdentifier = {
            type = "string",
        },
        statusSummary = setmetatable({ traits = {
            required = true,
        } }, { __index = M.EnablementStatusSummary }),
        parameters = {
            type = "list",
            member = M.EnabledBaselineParameterSummary,
        },
    },
}

M.GetEnabledBaselineOutput = {
    type = "structure",
    members = {
        enabledBaselineDetails = M.EnabledBaselineDetails,
    },
}

M.EnabledBaselineFilter = {
    type = "structure",
    members = {
        targetIdentifiers = {
            type = "list",
            member = { type = "string" },
        },
        baselineIdentifiers = {
            type = "list",
            member = { type = "string" },
        },
        parentIdentifiers = {
            type = "list",
            member = { type = "string" },
        },
        statuses = {
            type = "list",
            member = { type = "string" },
        },
        inheritanceDriftStatuses = {
            type = "list",
            member = { type = "string" },
        },
    },
}

M.ListEnabledBaselinesInput = {
    type = "structure",
    members = {
        filter = M.EnabledBaselineFilter,
        nextToken = {
            type = "string",
        },
        maxResults = {
            type = "integer",
        },
        includeChildren = {
            type = "boolean",
            traits = {
                default = false,
            },
        },
    },
}

M.EnabledBaselineSummary = {
    type = "structure",
    members = {
        arn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        baselineIdentifier = {
            type = "string",
            traits = {
                required = true,
            },
        },
        baselineVersion = {
            type = "string",
        },
        driftStatusSummary = M.EnabledBaselineDriftStatusSummary,
        targetIdentifier = {
            type = "string",
            traits = {
                required = true,
            },
        },
        parentIdentifier = {
            type = "string",
        },
        statusSummary = setmetatable({ traits = {
            required = true,
        } }, { __index = M.EnablementStatusSummary }),
    },
}

M.ListEnabledBaselinesOutput = {
    type = "structure",
    members = {
        enabledBaselines = {
            type = "list",
            member = M.EnabledBaselineSummary,
            traits = {
                required = true,
            },
        },
        nextToken = {
            type = "string",
        },
    },
}

M.ResetEnabledBaselineInput = {
    type = "structure",
    members = {
        enabledBaselineIdentifier = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.ResetEnabledBaselineOutput = {
    type = "structure",
    members = {
        operationIdentifier = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.UpdateEnabledBaselineInput = {
    type = "structure",
    members = {
        baselineVersion = {
            type = "string",
            traits = {
                required = true,
            },
        },
        parameters = {
            type = "list",
            member = M.EnabledBaselineParameter,
        },
        enabledBaselineIdentifier = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.UpdateEnabledBaselineOutput = {
    type = "structure",
    members = {
        operationIdentifier = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.EnabledControlParameter = {
    type = "structure",
    members = {
        key = {
            type = "string",
            traits = {
                required = true,
            },
        },
        value = {
            type = "document",
            traits = {
                required = true,
            },
        },
    },
}

M.EnableControlInput = {
    type = "structure",
    members = {
        controlIdentifier = {
            type = "string",
            traits = {
                required = true,
            },
        },
        targetIdentifier = {
            type = "string",
            traits = {
                required = true,
            },
        },
        tags = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
        parameters = {
            type = "list",
            member = M.EnabledControlParameter,
        },
    },
}

M.EnableControlOutput = {
    type = "structure",
    members = {
        operationIdentifier = {
            type = "string",
            traits = {
                required = true,
            },
        },
        arn = {
            type = "string",
        },
    },
}

M.GetEnabledControlInput = {
    type = "structure",
    members = {
        enabledControlIdentifier = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.DriftStatus = {
    DRIFTED = "DRIFTED",
    IN_SYNC = "IN_SYNC",
    NOT_CHECKING = "NOT_CHECKING",
    UNKNOWN = "UNKNOWN",
}

M.EnabledControlInheritanceDrift = {
    type = "structure",
    members = {
        status = {
            type = "string",
        },
    },
}

M.EnabledControlResourceDrift = {
    type = "structure",
    members = {
        status = {
            type = "string",
        },
    },
}

M.EnabledControlDriftTypes = {
    type = "structure",
    members = {
        inheritance = M.EnabledControlInheritanceDrift,
        resource = M.EnabledControlResourceDrift,
    },
}

M.DriftStatusSummary = {
    type = "structure",
    members = {
        driftStatus = {
            type = "string",
        },
        types = M.EnabledControlDriftTypes,
    },
}

M.EnabledControlParameterSummary = {
    type = "structure",
    members = {
        key = {
            type = "string",
            traits = {
                required = true,
            },
        },
        value = {
            type = "document",
            traits = {
                required = true,
            },
        },
    },
}

M.Region = {
    type = "structure",
    members = {
        name = {
            type = "string",
        },
    },
}

M.EnabledControlDetails = {
    type = "structure",
    members = {
        arn = {
            type = "string",
        },
        controlIdentifier = {
            type = "string",
        },
        targetIdentifier = {
            type = "string",
        },
        statusSummary = M.EnablementStatusSummary,
        driftStatusSummary = M.DriftStatusSummary,
        parentIdentifier = {
            type = "string",
        },
        targetRegions = {
            type = "list",
            member = M.Region,
        },
        parameters = {
            type = "list",
            member = M.EnabledControlParameterSummary,
        },
    },
}

M.GetEnabledControlOutput = {
    type = "structure",
    members = {
        enabledControlDetails = setmetatable({ traits = {
            required = true,
        } }, { __index = M.EnabledControlDetails }),
    },
}

M.EnabledControlFilter = {
    type = "structure",
    members = {
        controlIdentifiers = {
            type = "list",
            member = { type = "string" },
        },
        statuses = {
            type = "list",
            member = { type = "string" },
        },
        driftStatuses = {
            type = "list",
            member = { type = "string" },
        },
        parentIdentifiers = {
            type = "list",
            member = { type = "string" },
        },
        inheritanceDriftStatuses = {
            type = "list",
            member = { type = "string" },
        },
        resourceDriftStatuses = {
            type = "list",
            member = { type = "string" },
        },
    },
}

M.ListEnabledControlsInput = {
    type = "structure",
    members = {
        targetIdentifier = {
            type = "string",
            traits = {
                default = nil,
            },
        },
        nextToken = {
            type = "string",
        },
        maxResults = {
            type = "integer",
        },
        filter = M.EnabledControlFilter,
        includeChildren = {
            type = "boolean",
            traits = {
                default = false,
            },
        },
    },
}

M.EnabledControlSummary = {
    type = "structure",
    members = {
        arn = {
            type = "string",
        },
        controlIdentifier = {
            type = "string",
        },
        targetIdentifier = {
            type = "string",
        },
        statusSummary = M.EnablementStatusSummary,
        driftStatusSummary = M.DriftStatusSummary,
        parentIdentifier = {
            type = "string",
        },
    },
}

M.ListEnabledControlsOutput = {
    type = "structure",
    members = {
        enabledControls = {
            type = "list",
            member = M.EnabledControlSummary,
            traits = {
                required = true,
            },
        },
        nextToken = {
            type = "string",
        },
    },
}

M.ResetEnabledControlInput = {
    type = "structure",
    members = {
        enabledControlIdentifier = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.ResetEnabledControlOutput = {
    type = "structure",
    members = {
        operationIdentifier = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.UpdateEnabledControlInput = {
    type = "structure",
    members = {
        parameters = {
            type = "list",
            member = M.EnabledControlParameter,
            traits = {
                required = true,
            },
        },
        enabledControlIdentifier = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.UpdateEnabledControlOutput = {
    type = "structure",
    members = {
        operationIdentifier = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.GetLandingZoneOperationInput = {
    type = "structure",
    members = {
        operationIdentifier = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.LandingZoneOperationType = {
    DELETE = "DELETE",
    CREATE = "CREATE",
    UPDATE = "UPDATE",
    RESET = "RESET",
}

M.LandingZoneOperationStatus = {
    SUCCEEDED = "SUCCEEDED",
    FAILED = "FAILED",
    IN_PROGRESS = "IN_PROGRESS",
}

M.LandingZoneOperationDetail = {
    type = "structure",
    members = {
        operationType = {
            type = "string",
        },
        operationIdentifier = {
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
        statusMessage = {
            type = "string",
        },
    },
}

M.GetLandingZoneOperationOutput = {
    type = "structure",
    members = {
        operationDetails = setmetatable({ traits = {
            required = true,
        } }, { __index = M.LandingZoneOperationDetail }),
    },
}

M.LandingZoneOperationFilter = {
    type = "structure",
    members = {
        types = {
            type = "list",
            member = { type = "string" },
        },
        statuses = {
            type = "list",
            member = { type = "string" },
        },
    },
}

M.ListLandingZoneOperationsInput = {
    type = "structure",
    members = {
        filter = M.LandingZoneOperationFilter,
        nextToken = {
            type = "string",
        },
        maxResults = {
            type = "integer",
        },
    },
}

M.LandingZoneOperationSummary = {
    type = "structure",
    members = {
        operationType = {
            type = "string",
        },
        operationIdentifier = {
            type = "string",
        },
        status = {
            type = "string",
        },
    },
}

M.ListLandingZoneOperationsOutput = {
    type = "structure",
    members = {
        landingZoneOperations = {
            type = "list",
            member = M.LandingZoneOperationSummary,
            traits = {
                required = true,
            },
        },
        nextToken = {
            type = "string",
        },
    },
}

M.RemediationType = {
    INHERITANCE_DRIFT = "INHERITANCE_DRIFT",
}

M.CreateLandingZoneInput = {
    type = "structure",
    members = {
        version = {
            type = "string",
            traits = {
                required = true,
            },
        },
        remediationTypes = {
            type = "list",
            member = { type = "string" },
        },
        tags = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
        manifest = {
            type = "document",
        },
    },
}

M.CreateLandingZoneOutput = {
    type = "structure",
    members = {
        arn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        operationIdentifier = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.DeleteLandingZoneInput = {
    type = "structure",
    members = {
        landingZoneIdentifier = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.DeleteLandingZoneOutput = {
    type = "structure",
    members = {
        operationIdentifier = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.GetLandingZoneInput = {
    type = "structure",
    members = {
        landingZoneIdentifier = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.LandingZoneDriftStatus = {
    DRIFTED = "DRIFTED",
    IN_SYNC = "IN_SYNC",
}

M.LandingZoneDriftStatusSummary = {
    type = "structure",
    members = {
        status = {
            type = "string",
        },
    },
}

M.LandingZoneStatus = {
    ACTIVE = "ACTIVE",
    PROCESSING = "PROCESSING",
    FAILED = "FAILED",
}

M.LandingZoneDetail = {
    type = "structure",
    members = {
        version = {
            type = "string",
            traits = {
                required = true,
            },
        },
        remediationTypes = {
            type = "list",
            member = { type = "string" },
        },
        arn = {
            type = "string",
        },
        status = {
            type = "string",
        },
        latestAvailableVersion = {
            type = "string",
        },
        driftStatus = M.LandingZoneDriftStatusSummary,
        manifest = {
            type = "document",
            traits = {
                required = true,
            },
        },
    },
}

M.GetLandingZoneOutput = {
    type = "structure",
    members = {
        landingZone = setmetatable({ traits = {
            required = true,
        } }, { __index = M.LandingZoneDetail }),
    },
}

M.ListLandingZonesInput = {
    type = "structure",
    members = {
        nextToken = {
            type = "string",
        },
        maxResults = {
            type = "integer",
        },
    },
}

M.LandingZoneSummary = {
    type = "structure",
    members = {
        arn = {
            type = "string",
        },
    },
}

M.ListLandingZonesOutput = {
    type = "structure",
    members = {
        landingZones = {
            type = "list",
            member = M.LandingZoneSummary,
            traits = {
                required = true,
            },
        },
        nextToken = {
            type = "string",
        },
    },
}

M.ResetLandingZoneInput = {
    type = "structure",
    members = {
        landingZoneIdentifier = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.ResetLandingZoneOutput = {
    type = "structure",
    members = {
        operationIdentifier = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.UpdateLandingZoneInput = {
    type = "structure",
    members = {
        version = {
            type = "string",
            traits = {
                required = true,
            },
        },
        remediationTypes = {
            type = "list",
            member = { type = "string" },
        },
        landingZoneIdentifier = {
            type = "string",
            traits = {
                required = true,
            },
        },
        manifest = {
            type = "document",
        },
    },
}

M.UpdateLandingZoneOutput = {
    type = "structure",
    members = {
        operationIdentifier = {
            type = "string",
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

return M
