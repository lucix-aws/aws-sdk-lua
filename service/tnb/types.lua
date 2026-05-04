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

M.CancelSolNetworkOperationInput = {
    type = "structure",
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

M.CreateSolFunctionPackageInput = {
    type = "structure",
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
}

M.DeleteSolNetworkInstanceInput = {
    type = "structure",
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
}

M.DeleteSolNetworkPackageInput = {
    type = "structure",
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
}

M.DescriptorContentType = {
    TEXT_PLAIN = "text/plain",
}

M.ErrorInfo = {
    type = "structure",
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
    members = {
        overrides = {
            type = "list",
            member = M.ToscaOverride,
        },
    },
}

M.GetSolFunctionInstanceInput = {
    type = "structure",
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
    members = {
        vnfState = {
            type = "string",
        },
    },
}

M.GetSolNetworkInstanceInput = {
    type = "structure",
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
    members = {
        overrides = {
            type = "list",
            member = M.ToscaOverride,
        },
    },
}

M.GetSolNetworkPackageMetadata = {
    type = "structure",
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

M.PutSolFunctionPackageContentInput = {
    type = "structure",
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
    members = {
        vnfd = M.FunctionArtifactMeta,
    },
}

M.PutSolFunctionPackageContentOutput = {
    type = "structure",
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
    members = {
        nsd = M.NetworkArtifactMeta,
    },
}

M.PutSolNetworkPackageContentOutput = {
    type = "structure",
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

M.TerminateSolNetworkInstanceInput = {
    type = "structure",
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

M.UpdateSolFunctionPackageInput = {
    type = "structure",
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
    members = {
        vnfd = M.FunctionArtifactMeta,
    },
}

M.ValidateSolFunctionPackageContentOutput = {
    type = "structure",
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
    members = {
        nsd = M.NetworkArtifactMeta,
    },
}

M.ValidateSolNetworkPackageContentOutput = {
    type = "structure",
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
