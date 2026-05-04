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

M.GetBaselineOperationInput = {
    type = "structure",
    id = "GetBaselineOperationInput",
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
    id = "BaselineOperation",
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
        statusMessage = {
            type = "string",
        },
    },
}

M.GetBaselineOperationOutput = {
    type = "structure",
    id = "GetBaselineOperationOutput",
    members = {
        baselineOperation = setmetatable({ traits = {
            required = true,
        } }, { __index = M.BaselineOperation }),
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

M.GetBaselineInput = {
    type = "structure",
    id = "GetBaselineInput",
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
    id = "GetBaselineOutput",
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
    id = "ListBaselinesInput",
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
    id = "BaselineSummary",
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
    id = "ListBaselinesOutput",
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
    id = "GetControlOperationInput",
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
    id = "ControlOperation",
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
    id = "GetControlOperationOutput",
    members = {
        controlOperation = setmetatable({ traits = {
            required = true,
        } }, { __index = M.ControlOperation }),
    },
}

M.ControlOperationFilter = {
    type = "structure",
    id = "ControlOperationFilter",
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
    id = "ListControlOperationsInput",
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
    id = "ControlOperationSummary",
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
    id = "ListControlOperationsOutput",
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
    id = "ConflictException",
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
    id = "DisableControlInput",
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
    id = "DisableControlOutput",
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

M.DisableBaselineInput = {
    type = "structure",
    id = "DisableBaselineInput",
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
    id = "DisableBaselineOutput",
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
    id = "EnabledBaselineParameter",
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
    id = "EnableBaselineInput",
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
    id = "EnableBaselineOutput",
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
    id = "GetEnabledBaselineInput",
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
    id = "EnabledBaselineInheritanceDrift",
    members = {
        status = {
            type = "string",
        },
    },
}

M.EnabledBaselineDriftTypes = {
    type = "structure",
    id = "EnabledBaselineDriftTypes",
    members = {
        inheritance = M.EnabledBaselineInheritanceDrift,
    },
}

M.EnabledBaselineDriftStatusSummary = {
    type = "structure",
    id = "EnabledBaselineDriftStatusSummary",
    members = {
        types = M.EnabledBaselineDriftTypes,
    },
}

M.EnabledBaselineParameterSummary = {
    type = "structure",
    id = "EnabledBaselineParameterSummary",
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
    id = "EnablementStatusSummary",
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
    id = "EnabledBaselineDetails",
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
    id = "GetEnabledBaselineOutput",
    members = {
        enabledBaselineDetails = M.EnabledBaselineDetails,
    },
}

M.EnabledBaselineFilter = {
    type = "structure",
    id = "EnabledBaselineFilter",
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
    id = "ListEnabledBaselinesInput",
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
    id = "EnabledBaselineSummary",
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
    id = "ListEnabledBaselinesOutput",
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
    id = "ResetEnabledBaselineInput",
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
    id = "ResetEnabledBaselineOutput",
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
    id = "UpdateEnabledBaselineInput",
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
    id = "UpdateEnabledBaselineOutput",
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
    id = "EnabledControlParameter",
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
    id = "EnableControlInput",
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
    id = "EnableControlOutput",
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
    id = "GetEnabledControlInput",
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
    id = "EnabledControlInheritanceDrift",
    members = {
        status = {
            type = "string",
        },
    },
}

M.EnabledControlResourceDrift = {
    type = "structure",
    id = "EnabledControlResourceDrift",
    members = {
        status = {
            type = "string",
        },
    },
}

M.EnabledControlDriftTypes = {
    type = "structure",
    id = "EnabledControlDriftTypes",
    members = {
        inheritance = M.EnabledControlInheritanceDrift,
        resource = M.EnabledControlResourceDrift,
    },
}

M.DriftStatusSummary = {
    type = "structure",
    id = "DriftStatusSummary",
    members = {
        driftStatus = {
            type = "string",
        },
        types = M.EnabledControlDriftTypes,
    },
}

M.EnabledControlParameterSummary = {
    type = "structure",
    id = "EnabledControlParameterSummary",
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
    id = "Region",
    members = {
        name = {
            type = "string",
        },
    },
}

M.EnabledControlDetails = {
    type = "structure",
    id = "EnabledControlDetails",
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
    id = "GetEnabledControlOutput",
    members = {
        enabledControlDetails = setmetatable({ traits = {
            required = true,
        } }, { __index = M.EnabledControlDetails }),
    },
}

M.EnabledControlFilter = {
    type = "structure",
    id = "EnabledControlFilter",
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
    id = "ListEnabledControlsInput",
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
    id = "EnabledControlSummary",
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
    id = "ListEnabledControlsOutput",
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
    id = "ResetEnabledControlInput",
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
    id = "ResetEnabledControlOutput",
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
    id = "UpdateEnabledControlInput",
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
    id = "UpdateEnabledControlOutput",
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
    id = "GetLandingZoneOperationInput",
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
    id = "LandingZoneOperationDetail",
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
        statusMessage = {
            type = "string",
        },
    },
}

M.GetLandingZoneOperationOutput = {
    type = "structure",
    id = "GetLandingZoneOperationOutput",
    members = {
        operationDetails = setmetatable({ traits = {
            required = true,
        } }, { __index = M.LandingZoneOperationDetail }),
    },
}

M.LandingZoneOperationFilter = {
    type = "structure",
    id = "LandingZoneOperationFilter",
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
    id = "ListLandingZoneOperationsInput",
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
    id = "LandingZoneOperationSummary",
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
    id = "ListLandingZoneOperationsOutput",
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
    id = "CreateLandingZoneInput",
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
    id = "CreateLandingZoneOutput",
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
    id = "DeleteLandingZoneInput",
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
    id = "DeleteLandingZoneOutput",
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
    id = "GetLandingZoneInput",
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
    id = "LandingZoneDriftStatusSummary",
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
    id = "LandingZoneDetail",
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
    id = "GetLandingZoneOutput",
    members = {
        landingZone = setmetatable({ traits = {
            required = true,
        } }, { __index = M.LandingZoneDetail }),
    },
}

M.ListLandingZonesInput = {
    type = "structure",
    id = "ListLandingZonesInput",
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
    id = "LandingZoneSummary",
    members = {
        arn = {
            type = "string",
        },
    },
}

M.ListLandingZonesOutput = {
    type = "structure",
    id = "ListLandingZonesOutput",
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
    id = "ResetLandingZoneInput",
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
    id = "ResetLandingZoneOutput",
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
    id = "UpdateLandingZoneInput",
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
    id = "UpdateLandingZoneOutput",
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
            traits = {
                required = true,
            },
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
