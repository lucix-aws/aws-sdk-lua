local M = {}

M.CreateDeploymentInput = {
    type = "structure",
    id = "CreateDeploymentInput",
    members = {
        workloadName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        deploymentPatternName = {
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
        specifications = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
            traits = {
                required = true,
            },
        },
        dryRun = {
            type = "boolean",
            traits = {
                default = false,
            },
        },
        tags = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
    },
}

M.CreateDeploymentOutput = {
    type = "structure",
    id = "CreateDeploymentOutput",
    members = {
        deploymentId = {
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
        },
    },
}

M.ResourceLimitException = {
    type = "structure",
    id = "ResourceLimitException",
    error = "client",
    members = {
        message = {
            type = "string",
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
        },
    },
}

M.DeleteDeploymentInput = {
    type = "structure",
    id = "DeleteDeploymentInput",
    members = {
        deploymentId = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.DeploymentStatus = {
    COMPLETED = "COMPLETED",
    CREATING = "CREATING",
    DELETE_IN_PROGRESS = "DELETE_IN_PROGRESS",
    DELETE_INITIATING = "DELETE_INITIATING",
    DELETE_FAILED = "DELETE_FAILED",
    DELETED = "DELETED",
    FAILED = "FAILED",
    IN_PROGRESS = "IN_PROGRESS",
    VALIDATING = "VALIDATING",
    UPDATE_IN_PROGRESS = "UPDATE_IN_PROGRESS",
    UPDATE_COMPLETED = "UPDATE_COMPLETED",
    UPDATE_FAILED = "UPDATE_FAILED",
    UPDATE_ROLLBACK_COMPLETED = "UPDATE_ROLLBACK_COMPLETED",
    UPDATE_ROLLBACK_FAILED = "UPDATE_ROLLBACK_FAILED",
}

M.DeleteDeploymentOutput = {
    type = "structure",
    id = "DeleteDeploymentOutput",
    members = {
        status = {
            type = "string",
        },
        statusReason = {
            type = "string",
        },
    },
}

M.ListDeploymentEventsInput = {
    type = "structure",
    id = "ListDeploymentEventsInput",
    members = {
        deploymentId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        maxResults = {
            type = "integer",
            traits = {
                default = nil,
            },
        },
        nextToken = {
            type = "string",
        },
    },
}

M.EventStatus = {
    CANCELED = "CANCELED",
    CANCELING = "CANCELING",
    COMPLETED = "COMPLETED",
    CREATED = "CREATED",
    FAILED = "FAILED",
    IN_PROGRESS = "IN_PROGRESS",
    PENDING = "PENDING",
    TIMED_OUT = "TIMED_OUT",
}

M.DeploymentEventDataSummary = {
    type = "structure",
    id = "DeploymentEventDataSummary",
    members = {
        name = {
            type = "string",
        },
        description = {
            type = "string",
        },
        status = {
            type = "string",
        },
        statusReason = {
            type = "string",
        },
        timestamp = {
            type = "timestamp",
        },
    },
}

M.ListDeploymentEventsOutput = {
    type = "structure",
    id = "ListDeploymentEventsOutput",
    members = {
        deploymentEvents = {
            type = "list",
            member = M.DeploymentEventDataSummary,
        },
        nextToken = {
            type = "string",
        },
    },
}

M.GetDeploymentInput = {
    type = "structure",
    id = "GetDeploymentInput",
    members = {
        deploymentId = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.DeploymentData = {
    type = "structure",
    id = "DeploymentData",
    members = {
        name = {
            type = "string",
        },
        id = {
            type = "string",
        },
        workloadName = {
            type = "string",
        },
        patternName = {
            type = "string",
        },
        status = {
            type = "string",
        },
        createdAt = {
            type = "timestamp",
        },
        modifiedAt = {
            type = "timestamp",
        },
        specifications = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
        resourceGroup = {
            type = "string",
        },
        deletedAt = {
            type = "timestamp",
        },
        tags = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
        deploymentArn = {
            type = "string",
        },
    },
}

M.GetDeploymentOutput = {
    type = "structure",
    id = "GetDeploymentOutput",
    members = {
        deployment = M.DeploymentData,
    },
}

M.DeploymentFilterKey = {
    WORKLOAD_NAME = "WORKLOAD_NAME",
    DEPLOYMENT_STATUS = "DEPLOYMENT_STATUS",
}

M.DeploymentFilter = {
    type = "structure",
    id = "DeploymentFilter",
    members = {
        name = {
            type = "string",
        },
        values = {
            type = "list",
            member = { type = "string" },
        },
    },
}

M.ListDeploymentsInput = {
    type = "structure",
    id = "ListDeploymentsInput",
    members = {
        filters = {
            type = "list",
            member = M.DeploymentFilter,
        },
        maxResults = {
            type = "integer",
            traits = {
                default = nil,
            },
        },
        nextToken = {
            type = "string",
        },
    },
}

M.DeploymentDataSummary = {
    type = "structure",
    id = "DeploymentDataSummary",
    members = {
        name = {
            type = "string",
        },
        id = {
            type = "string",
        },
        workloadName = {
            type = "string",
        },
        patternName = {
            type = "string",
        },
        status = {
            type = "string",
        },
        createdAt = {
            type = "timestamp",
        },
        modifiedAt = {
            type = "timestamp",
        },
    },
}

M.ListDeploymentsOutput = {
    type = "structure",
    id = "ListDeploymentsOutput",
    members = {
        deployments = {
            type = "list",
            member = M.DeploymentDataSummary,
        },
        nextToken = {
            type = "string",
        },
    },
}

M.UpdateDeploymentInput = {
    type = "structure",
    id = "UpdateDeploymentInput",
    members = {
        deploymentId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        specifications = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
            traits = {
                required = true,
            },
        },
        workloadVersionName = {
            type = "string",
        },
        deploymentPatternVersionName = {
            type = "string",
        },
        dryRun = {
            type = "boolean",
            traits = {
                default = false,
            },
        },
        force = {
            type = "boolean",
            traits = {
                default = false,
            },
        },
    },
}

M.UpdateDeploymentOutput = {
    type = "structure",
    id = "UpdateDeploymentOutput",
    members = {
        deployment = M.DeploymentDataSummary,
    },
}

M.DeploymentConditionalField = {
    type = "structure",
    id = "DeploymentConditionalField",
    members = {
        name = {
            type = "string",
        },
        value = {
            type = "string",
        },
        comparator = {
            type = "string",
        },
    },
}

M.GetDeploymentPatternVersionInput = {
    type = "structure",
    id = "GetDeploymentPatternVersionInput",
    members = {
        workloadName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        deploymentPatternName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        deploymentPatternVersionName = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.DeploymentPatternVersionDataSummary = {
    type = "structure",
    id = "DeploymentPatternVersionDataSummary",
    members = {
        deploymentPatternVersionName = {
            type = "string",
        },
        description = {
            type = "string",
        },
        documentationUrl = {
            type = "string",
        },
        workloadName = {
            type = "string",
        },
        deploymentPatternName = {
            type = "string",
        },
    },
}

M.GetDeploymentPatternVersionOutput = {
    type = "structure",
    id = "GetDeploymentPatternVersionOutput",
    members = {
        deploymentPatternVersion = M.DeploymentPatternVersionDataSummary,
    },
}

M.DeploymentPatternVersionFilterKey = {
    DEPLOYMENT_PATTERN_VERSION_NAME = "updateFromVersion",
}

M.DeploymentPatternVersionFilter = {
    type = "structure",
    id = "DeploymentPatternVersionFilter",
    members = {
        name = {
            type = "string",
            traits = {
                required = true,
            },
        },
        values = {
            type = "list",
            member = { type = "string" },
            traits = {
                required = true,
            },
        },
    },
}

M.ListDeploymentPatternVersionsInput = {
    type = "structure",
    id = "ListDeploymentPatternVersionsInput",
    members = {
        workloadName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        deploymentPatternName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        maxResults = {
            type = "integer",
            traits = {
                default = nil,
            },
        },
        nextToken = {
            type = "string",
        },
        filters = {
            type = "list",
            member = M.DeploymentPatternVersionFilter,
        },
    },
}

M.ListDeploymentPatternVersionsOutput = {
    type = "structure",
    id = "ListDeploymentPatternVersionsOutput",
    members = {
        deploymentPatternVersions = {
            type = "list",
            member = M.DeploymentPatternVersionDataSummary,
        },
        nextToken = {
            type = "string",
        },
    },
}

M.DeploymentSpecificationsField = {
    type = "structure",
    id = "DeploymentSpecificationsField",
    members = {
        name = {
            type = "string",
        },
        description = {
            type = "string",
        },
        allowedValues = {
            type = "list",
            member = { type = "string" },
        },
        required = {
            type = "string",
        },
        conditionals = {
            type = "list",
            member = M.DeploymentConditionalField,
        },
    },
}

M.GetWorkloadInput = {
    type = "structure",
    id = "GetWorkloadInput",
    members = {
        workloadName = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.WorkloadStatus = {
    ACTIVE = "ACTIVE",
    INACTIVE = "INACTIVE",
    DISABLED = "DISABLED",
    DELETED = "DELETED",
}

M.WorkloadData = {
    type = "structure",
    id = "WorkloadData",
    members = {
        workloadName = {
            type = "string",
        },
        displayName = {
            type = "string",
        },
        status = {
            type = "string",
        },
        description = {
            type = "string",
        },
        documentationUrl = {
            type = "string",
        },
        iconUrl = {
            type = "string",
        },
        statusMessage = {
            type = "string",
        },
    },
}

M.GetWorkloadOutput = {
    type = "structure",
    id = "GetWorkloadOutput",
    members = {
        workload = M.WorkloadData,
    },
}

M.GetWorkloadDeploymentPatternInput = {
    type = "structure",
    id = "GetWorkloadDeploymentPatternInput",
    members = {
        workloadName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        deploymentPatternName = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.WorkloadDeploymentPatternStatus = {
    ACTIVE = "ACTIVE",
    INACTIVE = "INACTIVE",
    DISABLED = "DISABLED",
    DELETED = "DELETED",
}

M.WorkloadDeploymentPatternData = {
    type = "structure",
    id = "WorkloadDeploymentPatternData",
    members = {
        workloadName = {
            type = "string",
        },
        deploymentPatternName = {
            type = "string",
        },
        workloadVersionName = {
            type = "string",
        },
        deploymentPatternVersionName = {
            type = "string",
        },
        displayName = {
            type = "string",
        },
        description = {
            type = "string",
        },
        status = {
            type = "string",
        },
        statusMessage = {
            type = "string",
        },
        specifications = {
            type = "list",
            member = M.DeploymentSpecificationsField,
        },
    },
}

M.GetWorkloadDeploymentPatternOutput = {
    type = "structure",
    id = "GetWorkloadDeploymentPatternOutput",
    members = {
        workloadDeploymentPattern = M.WorkloadDeploymentPatternData,
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

M.ListWorkloadsInput = {
    type = "structure",
    id = "ListWorkloadsInput",
    members = {
        maxResults = {
            type = "integer",
            traits = {
                default = nil,
            },
        },
        nextToken = {
            type = "string",
        },
    },
}

M.WorkloadDataSummary = {
    type = "structure",
    id = "WorkloadDataSummary",
    members = {
        workloadName = {
            type = "string",
        },
        displayName = {
            type = "string",
        },
        status = {
            type = "string",
        },
    },
}

M.ListWorkloadsOutput = {
    type = "structure",
    id = "ListWorkloadsOutput",
    members = {
        workloads = {
            type = "list",
            member = M.WorkloadDataSummary,
        },
        nextToken = {
            type = "string",
        },
    },
}

M.ListWorkloadDeploymentPatternsInput = {
    type = "structure",
    id = "ListWorkloadDeploymentPatternsInput",
    members = {
        workloadName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        maxResults = {
            type = "integer",
            traits = {
                default = nil,
            },
        },
        nextToken = {
            type = "string",
        },
    },
}

M.WorkloadDeploymentPatternDataSummary = {
    type = "structure",
    id = "WorkloadDeploymentPatternDataSummary",
    members = {
        workloadName = {
            type = "string",
        },
        deploymentPatternName = {
            type = "string",
        },
        workloadVersionName = {
            type = "string",
        },
        deploymentPatternVersionName = {
            type = "string",
        },
        displayName = {
            type = "string",
        },
        description = {
            type = "string",
        },
        status = {
            type = "string",
        },
        statusMessage = {
            type = "string",
        },
    },
}

M.ListWorkloadDeploymentPatternsOutput = {
    type = "structure",
    id = "ListWorkloadDeploymentPatternsOutput",
    members = {
        workloadDeploymentPatterns = {
            type = "list",
            member = M.WorkloadDeploymentPatternDataSummary,
        },
        nextToken = {
            type = "string",
        },
    },
}

return M
