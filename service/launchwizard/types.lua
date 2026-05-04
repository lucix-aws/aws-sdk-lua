local M = {}

M.CreateDeploymentInput = {
    type = "structure",
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
            key_type = "string",
            value_type = "string",
            traits = {
                required = true,
            },
        },
        dryRun = {
            type = "boolean",
        },
        tags = {
            type = "map",
            key_type = "string",
            value_type = "string",
        },
    },
}

M.CreateDeploymentOutput = {
    type = "structure",
    members = {
        deploymentId = {
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
        },
    },
}

M.ResourceLimitException = {
    type = "structure",
    error = "client",
    members = {
        message = {
            type = "string",
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
    },
}

M.ValidationException = {
    type = "structure",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.DeleteDeploymentInput = {
    type = "structure",
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
    members = {
        deploymentId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        maxResults = {
            type = "number",
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
    members = {
        deploymentEvents = {
            type = "list",
            member_type = "structure",
        },
        nextToken = {
            type = "string",
        },
    },
}

M.GetDeploymentInput = {
    type = "structure",
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
            key_type = "string",
            value_type = "string",
        },
        resourceGroup = {
            type = "string",
        },
        deletedAt = {
            type = "timestamp",
        },
        tags = {
            type = "map",
            key_type = "string",
            value_type = "string",
        },
        deploymentArn = {
            type = "string",
        },
    },
}

M.GetDeploymentOutput = {
    type = "structure",
    members = {
        deployment = {
            type = "structure",
        },
    },
}

M.DeploymentFilterKey = {
    WORKLOAD_NAME = "WORKLOAD_NAME",
    DEPLOYMENT_STATUS = "DEPLOYMENT_STATUS",
}

M.DeploymentFilter = {
    type = "structure",
    members = {
        name = {
            type = "string",
        },
        values = {
            type = "list",
            member_type = "string",
        },
    },
}

M.ListDeploymentsInput = {
    type = "structure",
    members = {
        filters = {
            type = "list",
            member_type = "structure",
        },
        maxResults = {
            type = "number",
        },
        nextToken = {
            type = "string",
        },
    },
}

M.DeploymentDataSummary = {
    type = "structure",
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
    members = {
        deployments = {
            type = "list",
            member_type = "structure",
        },
        nextToken = {
            type = "string",
        },
    },
}

M.UpdateDeploymentInput = {
    type = "structure",
    members = {
        deploymentId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        specifications = {
            type = "map",
            key_type = "string",
            value_type = "string",
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
        },
        force = {
            type = "boolean",
        },
    },
}

M.UpdateDeploymentOutput = {
    type = "structure",
    members = {
        deployment = {
            type = "structure",
        },
    },
}

M.DeploymentConditionalField = {
    type = "structure",
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
    members = {
        deploymentPatternVersion = {
            type = "structure",
        },
    },
}

M.DeploymentPatternVersionFilterKey = {
    DEPLOYMENT_PATTERN_VERSION_NAME = "updateFromVersion",
}

M.DeploymentPatternVersionFilter = {
    type = "structure",
    members = {
        name = {
            type = "string",
            traits = {
                required = true,
            },
        },
        values = {
            type = "list",
            member_type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.ListDeploymentPatternVersionsInput = {
    type = "structure",
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
            type = "number",
        },
        nextToken = {
            type = "string",
        },
        filters = {
            type = "list",
            member_type = "structure",
        },
    },
}

M.ListDeploymentPatternVersionsOutput = {
    type = "structure",
    members = {
        deploymentPatternVersions = {
            type = "list",
            member_type = "structure",
        },
        nextToken = {
            type = "string",
        },
    },
}

M.DeploymentSpecificationsField = {
    type = "structure",
    members = {
        name = {
            type = "string",
        },
        description = {
            type = "string",
        },
        allowedValues = {
            type = "list",
            member_type = "string",
        },
        required = {
            type = "string",
        },
        conditionals = {
            type = "list",
            member_type = "structure",
        },
    },
}

M.GetWorkloadInput = {
    type = "structure",
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
    members = {
        workload = {
            type = "structure",
        },
    },
}

M.GetWorkloadDeploymentPatternInput = {
    type = "structure",
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
            member_type = "structure",
        },
    },
}

M.GetWorkloadDeploymentPatternOutput = {
    type = "structure",
    members = {
        workloadDeploymentPattern = {
            type = "structure",
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

M.ListWorkloadsInput = {
    type = "structure",
    members = {
        maxResults = {
            type = "number",
        },
        nextToken = {
            type = "string",
        },
    },
}

M.WorkloadDataSummary = {
    type = "structure",
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
    members = {
        workloads = {
            type = "list",
            member_type = "structure",
        },
        nextToken = {
            type = "string",
        },
    },
}

M.ListWorkloadDeploymentPatternsInput = {
    type = "structure",
    members = {
        workloadName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        maxResults = {
            type = "number",
        },
        nextToken = {
            type = "string",
        },
    },
}

M.WorkloadDeploymentPatternDataSummary = {
    type = "structure",
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
    members = {
        workloadDeploymentPatterns = {
            type = "list",
            member_type = "structure",
        },
        nextToken = {
            type = "string",
        },
    },
}

return M
