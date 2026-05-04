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

M.CancelSolNetworkOperationInput = {
    type = "structure",
    id = "CancelSolNetworkOperationInput",
    members = {
        nsLcmOpOccId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.CancelSolNetworkOperationOutput = {
    type = "structure",
    id = "CancelSolNetworkOperationOutput",
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

M.CreateSolFunctionPackageInput = {
    type = "structure",
    id = "CreateSolFunctionPackageInput",
    members = {
        tags = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
    },
}

M.OnboardingState = {
    CREATED = "CREATED",
    ONBOARDED = "ONBOARDED",
    ERROR = "ERROR",
}

M.OperationalState = {
    ENABLED = "ENABLED",
    DISABLED = "DISABLED",
}

M.UsageState = {
    IN_USE = "IN_USE",
    NOT_IN_USE = "NOT_IN_USE",
}

M.CreateSolFunctionPackageOutput = {
    type = "structure",
    id = "CreateSolFunctionPackageOutput",
    members = {
        id = {
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
        onboardingState = {
            type = "string",
            traits = {
                required = true,
            },
        },
        operationalState = {
            type = "string",
            traits = {
                required = true,
            },
        },
        usageState = {
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

M.CreateSolNetworkInstanceInput = {
    type = "structure",
    id = "CreateSolNetworkInstanceInput",
    members = {
        nsdInfoId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        nsName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        nsDescription = {
            type = "string",
        },
        tags = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
    },
}

M.CreateSolNetworkInstanceOutput = {
    type = "structure",
    id = "CreateSolNetworkInstanceOutput",
    members = {
        id = {
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
        nsdInfoId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        nsInstanceName = {
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

M.CreateSolNetworkPackageInput = {
    type = "structure",
    id = "CreateSolNetworkPackageInput",
    members = {
        tags = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
    },
}

M.NsdOnboardingState = {
    CREATED = "CREATED",
    ONBOARDED = "ONBOARDED",
    ERROR = "ERROR",
}

M.NsdOperationalState = {
    ENABLED = "ENABLED",
    DISABLED = "DISABLED",
}

M.NsdUsageState = {
    IN_USE = "IN_USE",
    NOT_IN_USE = "NOT_IN_USE",
}

M.CreateSolNetworkPackageOutput = {
    type = "structure",
    id = "CreateSolNetworkPackageOutput",
    members = {
        id = {
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
        nsdOnboardingState = {
            type = "string",
            traits = {
                required = true,
            },
        },
        nsdOperationalState = {
            type = "string",
            traits = {
                required = true,
            },
        },
        nsdUsageState = {
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

M.DeleteSolFunctionPackageInput = {
    type = "structure",
    id = "DeleteSolFunctionPackageInput",
    members = {
        vnfPkgId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.DeleteSolFunctionPackageOutput = {
    type = "structure",
    id = "DeleteSolFunctionPackageOutput",
}

M.DeleteSolNetworkInstanceInput = {
    type = "structure",
    id = "DeleteSolNetworkInstanceInput",
    members = {
        nsInstanceId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.DeleteSolNetworkInstanceOutput = {
    type = "structure",
    id = "DeleteSolNetworkInstanceOutput",
}

M.DeleteSolNetworkPackageInput = {
    type = "structure",
    id = "DeleteSolNetworkPackageInput",
    members = {
        nsdInfoId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.DeleteSolNetworkPackageOutput = {
    type = "structure",
    id = "DeleteSolNetworkPackageOutput",
}

M.DescriptorContentType = {
    TEXT_PLAIN = "text/plain",
}

M.ErrorInfo = {
    type = "structure",
    id = "ErrorInfo",
    members = {
        cause = {
            type = "string",
        },
        details = {
            type = "string",
        },
    },
}

M.ToscaOverride = {
    type = "structure",
    id = "ToscaOverride",
    members = {
        name = {
            type = "string",
        },
        defaultValue = {
            type = "string",
        },
    },
}

M.FunctionArtifactMeta = {
    type = "structure",
    id = "FunctionArtifactMeta",
    members = {
        overrides = {
            type = "list",
            member = M.ToscaOverride,
        },
    },
}

M.GetSolFunctionInstanceInput = {
    type = "structure",
    id = "GetSolFunctionInstanceInput",
    members = {
        vnfInstanceId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.GetSolVnfcResourceInfoMetadata = {
    type = "structure",
    id = "GetSolVnfcResourceInfoMetadata",
    members = {
        nodeGroup = {
            type = "string",
        },
        cluster = {
            type = "string",
        },
        helmChart = {
            type = "string",
        },
    },
}

M.GetSolVnfcResourceInfo = {
    type = "structure",
    id = "GetSolVnfcResourceInfo",
    members = {
        metadata = M.GetSolVnfcResourceInfoMetadata,
    },
}

M.VnfOperationalState = {
    STARTED = "STARTED",
    STOPPED = "STOPPED",
}

M.GetSolVnfInfo = {
    type = "structure",
    id = "GetSolVnfInfo",
    members = {
        vnfState = {
            type = "string",
        },
        vnfcResourceInfo = {
            type = "list",
            member = M.GetSolVnfcResourceInfo,
        },
    },
}

M.VnfInstantiationState = {
    INSTANTIATED = "INSTANTIATED",
    NOT_INSTANTIATED = "NOT_INSTANTIATED",
}

M.GetSolFunctionInstanceMetadata = {
    type = "structure",
    id = "GetSolFunctionInstanceMetadata",
    members = {
        createdAt = {
            type = "timestamp",
            traits = {
                required = true,
                timestamp_format = "date-time",
            },
        },
        lastModified = {
            type = "timestamp",
            traits = {
                required = true,
                timestamp_format = "date-time",
            },
        },
    },
}

M.GetSolFunctionInstanceOutput = {
    type = "structure",
    id = "GetSolFunctionInstanceOutput",
    members = {
        id = {
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
        nsInstanceId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        vnfPkgId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        vnfdId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        vnfProvider = {
            type = "string",
        },
        vnfProductName = {
            type = "string",
        },
        vnfdVersion = {
            type = "string",
        },
        instantiationState = {
            type = "string",
            traits = {
                required = true,
            },
        },
        instantiatedVnfInfo = M.GetSolVnfInfo,
        metadata = setmetatable({ traits = {
            required = true,
        } }, { __index = M.GetSolFunctionInstanceMetadata }),
        tags = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
    },
}

M.GetSolFunctionPackageInput = {
    type = "structure",
    id = "GetSolFunctionPackageInput",
    members = {
        vnfPkgId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.GetSolFunctionPackageMetadata = {
    type = "structure",
    id = "GetSolFunctionPackageMetadata",
    members = {
        vnfd = M.FunctionArtifactMeta,
        createdAt = {
            type = "timestamp",
            traits = {
                required = true,
                timestamp_format = "date-time",
            },
        },
        lastModified = {
            type = "timestamp",
            traits = {
                required = true,
                timestamp_format = "date-time",
            },
        },
    },
}

M.GetSolFunctionPackageOutput = {
    type = "structure",
    id = "GetSolFunctionPackageOutput",
    members = {
        id = {
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
        onboardingState = {
            type = "string",
            traits = {
                required = true,
            },
        },
        operationalState = {
            type = "string",
            traits = {
                required = true,
            },
        },
        usageState = {
            type = "string",
            traits = {
                required = true,
            },
        },
        vnfdId = {
            type = "string",
        },
        vnfProvider = {
            type = "string",
        },
        vnfProductName = {
            type = "string",
        },
        vnfdVersion = {
            type = "string",
        },
        metadata = M.GetSolFunctionPackageMetadata,
        tags = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
    },
}

M.PackageContentType = {
    APPLICATION_ZIP = "application/zip",
}

M.GetSolFunctionPackageContentInput = {
    type = "structure",
    id = "GetSolFunctionPackageContentInput",
    members = {
        vnfPkgId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        accept = {
            type = "string",
            traits = {
                http_header = "Accept",
                required = true,
            },
        },
    },
}

M.GetSolFunctionPackageContentOutput = {
    type = "structure",
    id = "GetSolFunctionPackageContentOutput",
    members = {
        contentType = {
            type = "string",
            traits = {
                http_header = "Content-Type",
            },
        },
        packageContent = {
            type = "blob",
            traits = {
                http_payload = true,
            },
        },
    },
}

M.GetSolFunctionPackageDescriptorInput = {
    type = "structure",
    id = "GetSolFunctionPackageDescriptorInput",
    members = {
        vnfPkgId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        accept = {
            type = "string",
            traits = {
                http_header = "Accept",
                required = true,
            },
        },
    },
}

M.GetSolFunctionPackageDescriptorOutput = {
    type = "structure",
    id = "GetSolFunctionPackageDescriptorOutput",
    members = {
        contentType = {
            type = "string",
            traits = {
                http_header = "Content-Type",
            },
        },
        vnfd = {
            type = "blob",
            traits = {
                http_payload = true,
            },
        },
    },
}

M.GetSolInstantiatedVnfInfo = {
    type = "structure",
    id = "GetSolInstantiatedVnfInfo",
    members = {
        vnfState = {
            type = "string",
        },
    },
}

M.GetSolNetworkInstanceInput = {
    type = "structure",
    id = "GetSolNetworkInstanceInput",
    members = {
        nsInstanceId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.LcmOperationInfo = {
    type = "structure",
    id = "LcmOperationInfo",
    members = {
        nsLcmOpOccId = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.GetSolNetworkInstanceMetadata = {
    type = "structure",
    id = "GetSolNetworkInstanceMetadata",
    members = {
        createdAt = {
            type = "timestamp",
            traits = {
                required = true,
                timestamp_format = "date-time",
            },
        },
        lastModified = {
            type = "timestamp",
            traits = {
                required = true,
                timestamp_format = "date-time",
            },
        },
    },
}

M.NsState = {
    INSTANTIATED = "INSTANTIATED",
    NOT_INSTANTIATED = "NOT_INSTANTIATED",
    UPDATED = "UPDATED",
    IMPAIRED = "IMPAIRED",
    UPDATE_FAILED = "UPDATE_FAILED",
    STOPPED = "STOPPED",
    DELETED = "DELETED",
    INSTANTIATE_IN_PROGRESS = "INSTANTIATE_IN_PROGRESS",
    INTENT_TO_UPDATE_IN_PROGRESS = "INTENT_TO_UPDATE_IN_PROGRESS",
    UPDATE_IN_PROGRESS = "UPDATE_IN_PROGRESS",
    TERMINATE_IN_PROGRESS = "TERMINATE_IN_PROGRESS",
}

M.GetSolNetworkInstanceOutput = {
    type = "structure",
    id = "GetSolNetworkInstanceOutput",
    members = {
        id = {
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
        nsInstanceName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        nsInstanceDescription = {
            type = "string",
            traits = {
                required = true,
            },
        },
        nsdId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        nsdInfoId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        nsState = {
            type = "string",
        },
        lcmOpInfo = M.LcmOperationInfo,
        metadata = setmetatable({ traits = {
            required = true,
        } }, { __index = M.GetSolNetworkInstanceMetadata }),
        tags = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
    },
}

M.GetSolNetworkOperationInput = {
    type = "structure",
    id = "GetSolNetworkOperationInput",
    members = {
        nsLcmOpOccId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.ProblemDetails = {
    type = "structure",
    id = "ProblemDetails",
    members = {
        detail = {
            type = "string",
            traits = {
                required = true,
            },
        },
        title = {
            type = "string",
        },
    },
}

M.LcmOperationType = {
    INSTANTIATE = "INSTANTIATE",
    UPDATE = "UPDATE",
    TERMINATE = "TERMINATE",
}

M.InstantiateMetadata = {
    type = "structure",
    id = "InstantiateMetadata",
    members = {
        nsdInfoId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        additionalParamsForNs = {
            type = "document",
        },
    },
}

M.ModifyVnfInfoMetadata = {
    type = "structure",
    id = "ModifyVnfInfoMetadata",
    members = {
        vnfInstanceId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        vnfConfigurableProperties = {
            type = "document",
            traits = {
                required = true,
            },
        },
    },
}

M.UpdateNsMetadata = {
    type = "structure",
    id = "UpdateNsMetadata",
    members = {
        nsdInfoId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        additionalParamsForNs = {
            type = "document",
        },
    },
}

M.GetSolNetworkOperationMetadata = {
    type = "structure",
    id = "GetSolNetworkOperationMetadata",
    members = {
        updateNsMetadata = M.UpdateNsMetadata,
        modifyVnfInfoMetadata = M.ModifyVnfInfoMetadata,
        instantiateMetadata = M.InstantiateMetadata,
        createdAt = {
            type = "timestamp",
            traits = {
                required = true,
                timestamp_format = "date-time",
            },
        },
        lastModified = {
            type = "timestamp",
            traits = {
                required = true,
                timestamp_format = "date-time",
            },
        },
    },
}

M.NsLcmOperationState = {
    PROCESSING = "PROCESSING",
    COMPLETED = "COMPLETED",
    FAILED = "FAILED",
    CANCELLING = "CANCELLING",
    CANCELLED = "CANCELLED",
}

M.TaskStatus = {
    SCHEDULED = "SCHEDULED",
    STARTED = "STARTED",
    IN_PROGRESS = "IN_PROGRESS",
    COMPLETED = "COMPLETED",
    ERROR = "ERROR",
    SKIPPED = "SKIPPED",
    CANCELLED = "CANCELLED",
}

M.GetSolNetworkOperationTaskDetails = {
    type = "structure",
    id = "GetSolNetworkOperationTaskDetails",
    members = {
        taskName = {
            type = "string",
        },
        taskContext = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
        taskErrorDetails = M.ErrorInfo,
        taskStatus = {
            type = "string",
        },
        taskStartTime = {
            type = "timestamp",
            traits = {
                timestamp_format = "date-time",
            },
        },
        taskEndTime = {
            type = "timestamp",
            traits = {
                timestamp_format = "date-time",
            },
        },
    },
}

M.UpdateSolNetworkType = {
    MODIFY_VNF_INFORMATION = "MODIFY_VNF_INFORMATION",
    UPDATE_NS = "UPDATE_NS",
}

M.GetSolNetworkOperationOutput = {
    type = "structure",
    id = "GetSolNetworkOperationOutput",
    members = {
        id = {
            type = "string",
        },
        arn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        operationState = {
            type = "string",
        },
        nsInstanceId = {
            type = "string",
        },
        lcmOperationType = {
            type = "string",
        },
        updateType = {
            type = "string",
        },
        error = M.ProblemDetails,
        metadata = M.GetSolNetworkOperationMetadata,
        tasks = {
            type = "list",
            member = M.GetSolNetworkOperationTaskDetails,
        },
        tags = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
    },
}

M.GetSolNetworkPackageInput = {
    type = "structure",
    id = "GetSolNetworkPackageInput",
    members = {
        nsdInfoId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.NetworkArtifactMeta = {
    type = "structure",
    id = "NetworkArtifactMeta",
    members = {
        overrides = {
            type = "list",
            member = M.ToscaOverride,
        },
    },
}

M.GetSolNetworkPackageMetadata = {
    type = "structure",
    id = "GetSolNetworkPackageMetadata",
    members = {
        nsd = M.NetworkArtifactMeta,
        createdAt = {
            type = "timestamp",
            traits = {
                required = true,
                timestamp_format = "date-time",
            },
        },
        lastModified = {
            type = "timestamp",
            traits = {
                required = true,
                timestamp_format = "date-time",
            },
        },
    },
}

M.GetSolNetworkPackageOutput = {
    type = "structure",
    id = "GetSolNetworkPackageOutput",
    members = {
        id = {
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
        nsdOnboardingState = {
            type = "string",
            traits = {
                required = true,
            },
        },
        nsdOperationalState = {
            type = "string",
            traits = {
                required = true,
            },
        },
        nsdUsageState = {
            type = "string",
            traits = {
                required = true,
            },
        },
        nsdId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        nsdName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        nsdVersion = {
            type = "string",
            traits = {
                required = true,
            },
        },
        vnfPkgIds = {
            type = "list",
            member = { type = "string" },
            traits = {
                required = true,
            },
        },
        metadata = setmetatable({ traits = {
            required = true,
        } }, { __index = M.GetSolNetworkPackageMetadata }),
        tags = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
    },
}

M.GetSolNetworkPackageContentInput = {
    type = "structure",
    id = "GetSolNetworkPackageContentInput",
    members = {
        nsdInfoId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        accept = {
            type = "string",
            traits = {
                http_header = "Accept",
                required = true,
            },
        },
    },
}

M.GetSolNetworkPackageContentOutput = {
    type = "structure",
    id = "GetSolNetworkPackageContentOutput",
    members = {
        contentType = {
            type = "string",
            traits = {
                http_header = "Content-Type",
            },
        },
        nsdContent = {
            type = "blob",
            traits = {
                http_payload = true,
            },
        },
    },
}

M.GetSolNetworkPackageDescriptorInput = {
    type = "structure",
    id = "GetSolNetworkPackageDescriptorInput",
    members = {
        nsdInfoId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.GetSolNetworkPackageDescriptorOutput = {
    type = "structure",
    id = "GetSolNetworkPackageDescriptorOutput",
    members = {
        contentType = {
            type = "string",
            traits = {
                http_header = "Content-Type",
            },
        },
        nsd = {
            type = "blob",
            traits = {
                http_payload = true,
            },
        },
    },
}

M.InstantiateSolNetworkInstanceInput = {
    type = "structure",
    id = "InstantiateSolNetworkInstanceInput",
    members = {
        nsInstanceId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        dryRun = {
            type = "boolean",
            traits = {
                http_query = "dry_run",
            },
        },
        additionalParamsForNs = {
            type = "document",
        },
        tags = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
    },
}

M.InstantiateSolNetworkInstanceOutput = {
    type = "structure",
    id = "InstantiateSolNetworkInstanceOutput",
    members = {
        nsLcmOpOccId = {
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

M.ListSolFunctionInstanceMetadata = {
    type = "structure",
    id = "ListSolFunctionInstanceMetadata",
    members = {
        createdAt = {
            type = "timestamp",
            traits = {
                required = true,
                timestamp_format = "date-time",
            },
        },
        lastModified = {
            type = "timestamp",
            traits = {
                required = true,
                timestamp_format = "date-time",
            },
        },
    },
}

M.ListSolFunctionInstanceInfo = {
    type = "structure",
    id = "ListSolFunctionInstanceInfo",
    members = {
        id = {
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
        nsInstanceId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        vnfPkgId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        vnfPkgName = {
            type = "string",
        },
        instantiationState = {
            type = "string",
            traits = {
                required = true,
            },
        },
        instantiatedVnfInfo = M.GetSolInstantiatedVnfInfo,
        metadata = setmetatable({ traits = {
            required = true,
        } }, { __index = M.ListSolFunctionInstanceMetadata }),
    },
}

M.ListSolFunctionInstancesInput = {
    type = "structure",
    id = "ListSolFunctionInstancesInput",
    members = {
        maxResults = {
            type = "integer",
            traits = {
                http_query = "max_results",
            },
        },
        nextToken = {
            type = "string",
            traits = {
                http_query = "nextpage_opaque_marker",
            },
        },
    },
}

M.ListSolFunctionInstancesOutput = {
    type = "structure",
    id = "ListSolFunctionInstancesOutput",
    members = {
        nextToken = {
            type = "string",
        },
        functionInstances = {
            type = "list",
            member = M.ListSolFunctionInstanceInfo,
        },
    },
}

M.ListSolFunctionPackageMetadata = {
    type = "structure",
    id = "ListSolFunctionPackageMetadata",
    members = {
        createdAt = {
            type = "timestamp",
            traits = {
                required = true,
                timestamp_format = "date-time",
            },
        },
        lastModified = {
            type = "timestamp",
            traits = {
                required = true,
                timestamp_format = "date-time",
            },
        },
    },
}

M.ListSolFunctionPackageInfo = {
    type = "structure",
    id = "ListSolFunctionPackageInfo",
    members = {
        id = {
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
        onboardingState = {
            type = "string",
            traits = {
                required = true,
            },
        },
        operationalState = {
            type = "string",
            traits = {
                required = true,
            },
        },
        usageState = {
            type = "string",
            traits = {
                required = true,
            },
        },
        vnfdId = {
            type = "string",
        },
        vnfProvider = {
            type = "string",
        },
        vnfProductName = {
            type = "string",
        },
        vnfdVersion = {
            type = "string",
        },
        metadata = M.ListSolFunctionPackageMetadata,
    },
}

M.ListSolFunctionPackagesInput = {
    type = "structure",
    id = "ListSolFunctionPackagesInput",
    members = {
        maxResults = {
            type = "integer",
            traits = {
                http_query = "max_results",
            },
        },
        nextToken = {
            type = "string",
            traits = {
                http_query = "nextpage_opaque_marker",
            },
        },
    },
}

M.ListSolFunctionPackagesOutput = {
    type = "structure",
    id = "ListSolFunctionPackagesOutput",
    members = {
        nextToken = {
            type = "string",
        },
        functionPackages = {
            type = "list",
            member = M.ListSolFunctionPackageInfo,
            traits = {
                required = true,
            },
        },
    },
}

M.ListSolNetworkInstanceMetadata = {
    type = "structure",
    id = "ListSolNetworkInstanceMetadata",
    members = {
        createdAt = {
            type = "timestamp",
            traits = {
                required = true,
                timestamp_format = "date-time",
            },
        },
        lastModified = {
            type = "timestamp",
            traits = {
                required = true,
                timestamp_format = "date-time",
            },
        },
    },
}

M.ListSolNetworkInstanceInfo = {
    type = "structure",
    id = "ListSolNetworkInstanceInfo",
    members = {
        id = {
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
        nsInstanceName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        nsInstanceDescription = {
            type = "string",
            traits = {
                required = true,
            },
        },
        nsdId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        nsdInfoId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        nsState = {
            type = "string",
            traits = {
                required = true,
            },
        },
        metadata = setmetatable({ traits = {
            required = true,
        } }, { __index = M.ListSolNetworkInstanceMetadata }),
    },
}

M.ListSolNetworkInstancesInput = {
    type = "structure",
    id = "ListSolNetworkInstancesInput",
    members = {
        maxResults = {
            type = "integer",
            traits = {
                http_query = "max_results",
            },
        },
        nextToken = {
            type = "string",
            traits = {
                http_query = "nextpage_opaque_marker",
            },
        },
    },
}

M.ListSolNetworkInstancesOutput = {
    type = "structure",
    id = "ListSolNetworkInstancesOutput",
    members = {
        nextToken = {
            type = "string",
        },
        networkInstances = {
            type = "list",
            member = M.ListSolNetworkInstanceInfo,
        },
    },
}

M.ListSolNetworkOperationsInput = {
    type = "structure",
    id = "ListSolNetworkOperationsInput",
    members = {
        nsInstanceId = {
            type = "string",
            traits = {
                http_query = "nsInstanceId",
            },
        },
        maxResults = {
            type = "integer",
            traits = {
                http_query = "max_results",
            },
        },
        nextToken = {
            type = "string",
            traits = {
                http_query = "nextpage_opaque_marker",
            },
        },
    },
}

M.ListSolNetworkOperationsMetadata = {
    type = "structure",
    id = "ListSolNetworkOperationsMetadata",
    members = {
        nsdInfoId = {
            type = "string",
        },
        vnfInstanceId = {
            type = "string",
        },
        createdAt = {
            type = "timestamp",
            traits = {
                required = true,
                timestamp_format = "date-time",
            },
        },
        lastModified = {
            type = "timestamp",
            traits = {
                required = true,
                timestamp_format = "date-time",
            },
        },
    },
}

M.ListSolNetworkOperationsInfo = {
    type = "structure",
    id = "ListSolNetworkOperationsInfo",
    members = {
        id = {
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
        operationState = {
            type = "string",
            traits = {
                required = true,
            },
        },
        nsInstanceId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        lcmOperationType = {
            type = "string",
            traits = {
                required = true,
            },
        },
        updateType = {
            type = "string",
        },
        error = M.ProblemDetails,
        metadata = M.ListSolNetworkOperationsMetadata,
    },
}

M.ListSolNetworkOperationsOutput = {
    type = "structure",
    id = "ListSolNetworkOperationsOutput",
    members = {
        nextToken = {
            type = "string",
        },
        networkOperations = {
            type = "list",
            member = M.ListSolNetworkOperationsInfo,
        },
    },
}

M.ListSolNetworkPackageMetadata = {
    type = "structure",
    id = "ListSolNetworkPackageMetadata",
    members = {
        createdAt = {
            type = "timestamp",
            traits = {
                required = true,
                timestamp_format = "date-time",
            },
        },
        lastModified = {
            type = "timestamp",
            traits = {
                required = true,
                timestamp_format = "date-time",
            },
        },
    },
}

M.ListSolNetworkPackageInfo = {
    type = "structure",
    id = "ListSolNetworkPackageInfo",
    members = {
        id = {
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
        nsdOnboardingState = {
            type = "string",
            traits = {
                required = true,
            },
        },
        nsdOperationalState = {
            type = "string",
            traits = {
                required = true,
            },
        },
        nsdUsageState = {
            type = "string",
            traits = {
                required = true,
            },
        },
        nsdId = {
            type = "string",
        },
        nsdName = {
            type = "string",
        },
        nsdVersion = {
            type = "string",
        },
        nsdDesigner = {
            type = "string",
        },
        nsdInvariantId = {
            type = "string",
        },
        vnfPkgIds = {
            type = "list",
            member = { type = "string" },
        },
        metadata = setmetatable({ traits = {
            required = true,
        } }, { __index = M.ListSolNetworkPackageMetadata }),
    },
}

M.ListSolNetworkPackagesInput = {
    type = "structure",
    id = "ListSolNetworkPackagesInput",
    members = {
        maxResults = {
            type = "integer",
            traits = {
                http_query = "max_results",
            },
        },
        nextToken = {
            type = "string",
            traits = {
                http_query = "nextpage_opaque_marker",
            },
        },
    },
}

M.ListSolNetworkPackagesOutput = {
    type = "structure",
    id = "ListSolNetworkPackagesOutput",
    members = {
        nextToken = {
            type = "string",
        },
        networkPackages = {
            type = "list",
            member = M.ListSolNetworkPackageInfo,
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

M.PutSolFunctionPackageContentInput = {
    type = "structure",
    id = "PutSolFunctionPackageContentInput",
    members = {
        vnfPkgId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        contentType = {
            type = "string",
            traits = {
                http_header = "Content-Type",
            },
        },
        file = {
            type = "blob",
            traits = {
                http_payload = true,
                required = true,
            },
        },
    },
}

M.PutSolFunctionPackageContentMetadata = {
    type = "structure",
    id = "PutSolFunctionPackageContentMetadata",
    members = {
        vnfd = M.FunctionArtifactMeta,
    },
}

M.PutSolFunctionPackageContentOutput = {
    type = "structure",
    id = "PutSolFunctionPackageContentOutput",
    members = {
        id = {
            type = "string",
            traits = {
                required = true,
            },
        },
        vnfdId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        vnfProductName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        vnfProvider = {
            type = "string",
            traits = {
                required = true,
            },
        },
        vnfdVersion = {
            type = "string",
            traits = {
                required = true,
            },
        },
        metadata = setmetatable({ traits = {
            required = true,
        } }, { __index = M.PutSolFunctionPackageContentMetadata }),
    },
}

M.PutSolNetworkPackageContentInput = {
    type = "structure",
    id = "PutSolNetworkPackageContentInput",
    members = {
        nsdInfoId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        contentType = {
            type = "string",
            traits = {
                http_header = "Content-Type",
            },
        },
        file = {
            type = "blob",
            traits = {
                http_payload = true,
                required = true,
            },
        },
    },
}

M.PutSolNetworkPackageContentMetadata = {
    type = "structure",
    id = "PutSolNetworkPackageContentMetadata",
    members = {
        nsd = M.NetworkArtifactMeta,
    },
}

M.PutSolNetworkPackageContentOutput = {
    type = "structure",
    id = "PutSolNetworkPackageContentOutput",
    members = {
        id = {
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
        nsdId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        nsdName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        nsdVersion = {
            type = "string",
            traits = {
                required = true,
            },
        },
        vnfPkgIds = {
            type = "list",
            member = { type = "string" },
            traits = {
                required = true,
            },
        },
        metadata = setmetatable({ traits = {
            required = true,
        } }, { __index = M.PutSolNetworkPackageContentMetadata }),
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

M.TerminateSolNetworkInstanceInput = {
    type = "structure",
    id = "TerminateSolNetworkInstanceInput",
    members = {
        nsInstanceId = {
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
        },
    },
}

M.TerminateSolNetworkInstanceOutput = {
    type = "structure",
    id = "TerminateSolNetworkInstanceOutput",
    members = {
        nsLcmOpOccId = {
            type = "string",
        },
        tags = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
    },
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

M.UpdateSolFunctionPackageInput = {
    type = "structure",
    id = "UpdateSolFunctionPackageInput",
    members = {
        vnfPkgId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        operationalState = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.UpdateSolFunctionPackageOutput = {
    type = "structure",
    id = "UpdateSolFunctionPackageOutput",
    members = {
        operationalState = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.UpdateSolNetworkModify = {
    type = "structure",
    id = "UpdateSolNetworkModify",
    members = {
        vnfInstanceId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        vnfConfigurableProperties = {
            type = "document",
            traits = {
                required = true,
            },
        },
    },
}

M.UpdateSolNetworkServiceData = {
    type = "structure",
    id = "UpdateSolNetworkServiceData",
    members = {
        nsdInfoId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        additionalParamsForNs = {
            type = "document",
        },
    },
}

M.UpdateSolNetworkInstanceInput = {
    type = "structure",
    id = "UpdateSolNetworkInstanceInput",
    members = {
        nsInstanceId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        updateType = {
            type = "string",
            traits = {
                required = true,
            },
        },
        modifyVnfInfoData = M.UpdateSolNetworkModify,
        updateNs = M.UpdateSolNetworkServiceData,
        tags = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
    },
}

M.UpdateSolNetworkInstanceOutput = {
    type = "structure",
    id = "UpdateSolNetworkInstanceOutput",
    members = {
        nsLcmOpOccId = {
            type = "string",
        },
        tags = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
    },
}

M.UpdateSolNetworkPackageInput = {
    type = "structure",
    id = "UpdateSolNetworkPackageInput",
    members = {
        nsdInfoId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        nsdOperationalState = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.UpdateSolNetworkPackageOutput = {
    type = "structure",
    id = "UpdateSolNetworkPackageOutput",
    members = {
        nsdOperationalState = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.ValidateSolFunctionPackageContentInput = {
    type = "structure",
    id = "ValidateSolFunctionPackageContentInput",
    members = {
        vnfPkgId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        contentType = {
            type = "string",
            traits = {
                http_header = "Content-Type",
            },
        },
        file = {
            type = "blob",
            traits = {
                http_payload = true,
                required = true,
            },
        },
    },
}

M.ValidateSolFunctionPackageContentMetadata = {
    type = "structure",
    id = "ValidateSolFunctionPackageContentMetadata",
    members = {
        vnfd = M.FunctionArtifactMeta,
    },
}

M.ValidateSolFunctionPackageContentOutput = {
    type = "structure",
    id = "ValidateSolFunctionPackageContentOutput",
    members = {
        id = {
            type = "string",
            traits = {
                required = true,
            },
        },
        vnfdId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        vnfProductName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        vnfProvider = {
            type = "string",
            traits = {
                required = true,
            },
        },
        vnfdVersion = {
            type = "string",
            traits = {
                required = true,
            },
        },
        metadata = setmetatable({ traits = {
            required = true,
        } }, { __index = M.ValidateSolFunctionPackageContentMetadata }),
    },
}

M.ValidateSolNetworkPackageContentInput = {
    type = "structure",
    id = "ValidateSolNetworkPackageContentInput",
    members = {
        nsdInfoId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        contentType = {
            type = "string",
            traits = {
                http_header = "Content-Type",
            },
        },
        file = {
            type = "blob",
            traits = {
                http_payload = true,
                required = true,
            },
        },
    },
}

M.ValidateSolNetworkPackageContentMetadata = {
    type = "structure",
    id = "ValidateSolNetworkPackageContentMetadata",
    members = {
        nsd = M.NetworkArtifactMeta,
    },
}

M.ValidateSolNetworkPackageContentOutput = {
    type = "structure",
    id = "ValidateSolNetworkPackageContentOutput",
    members = {
        id = {
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
        nsdId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        nsdName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        nsdVersion = {
            type = "string",
            traits = {
                required = true,
            },
        },
        vnfPkgIds = {
            type = "list",
            member = { type = "string" },
            traits = {
                required = true,
            },
        },
        metadata = setmetatable({ traits = {
            required = true,
        } }, { __index = M.ValidateSolNetworkPackageContentMetadata }),
    },
}

return M
