local M = {}

M.AccessDeniedException = {
    type = "structure",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.ApplicationStatus = {
    NOT_STARTED = "NOT_STARTED",
    IN_PROGRESS = "IN_PROGRESS",
    COMPLETED = "COMPLETED",
}

M.ApplicationState = {
    type = "structure",
    members = {
        ApplicationId = {
            type = "string",
        },
        ApplicationStatus = {
            type = "string",
        },
        LastUpdatedTime = {
            type = "timestamp",
        },
    },
}

M.CreatedArtifact = {
    type = "structure",
    members = {
        Name = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Description = {
            type = "string",
        },
    },
}

M.AssociateCreatedArtifactInput = {
    type = "structure",
    members = {
        ProgressUpdateStream = {
            type = "string",
            traits = {
                required = true,
            },
        },
        MigrationTaskName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        CreatedArtifact = {
            type = "structure",
            traits = {
                required = true,
            },
        },
        DryRun = {
            type = "boolean",
        },
    },
}

M.AssociateCreatedArtifactOutput = {
    type = "structure",
}

M.DryRunOperation = {
    type = "structure",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.HomeRegionNotSetException = {
    type = "structure",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.InternalServerError = {
    type = "structure",
    error = "server",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.InvalidInputException = {
    type = "structure",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.ResourceNotFoundException = {
    type = "structure",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.ServiceUnavailableException = {
    type = "structure",
    error = "server",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.ThrottlingException = {
    type = "structure",
    error = "client",
    members = {
        Message = {
            type = "string",
            traits = {
                required = true,
            },
        },
        RetryAfterSeconds = {
            type = "number",
            traits = {
                http_header = "Retry-After",
            },
        },
    },
}

M.UnauthorizedOperation = {
    type = "structure",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.DiscoveredResource = {
    type = "structure",
    members = {
        ConfigurationId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Description = {
            type = "string",
        },
    },
}

M.AssociateDiscoveredResourceInput = {
    type = "structure",
    members = {
        ProgressUpdateStream = {
            type = "string",
            traits = {
                required = true,
            },
        },
        MigrationTaskName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        DiscoveredResource = {
            type = "structure",
            traits = {
                required = true,
            },
        },
        DryRun = {
            type = "boolean",
        },
    },
}

M.AssociateDiscoveredResourceOutput = {
    type = "structure",
}

M.PolicyErrorException = {
    type = "structure",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.SourceResource = {
    type = "structure",
    members = {
        Name = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Description = {
            type = "string",
        },
        StatusDetail = {
            type = "string",
        },
    },
}

M.AssociateSourceResourceInput = {
    type = "structure",
    members = {
        ProgressUpdateStream = {
            type = "string",
            traits = {
                required = true,
            },
        },
        MigrationTaskName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        SourceResource = {
            type = "structure",
            traits = {
                required = true,
            },
        },
        DryRun = {
            type = "boolean",
        },
    },
}

M.AssociateSourceResourceOutput = {
    type = "structure",
}

M.CreateProgressUpdateStreamInput = {
    type = "structure",
    members = {
        ProgressUpdateStreamName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        DryRun = {
            type = "boolean",
        },
    },
}

M.CreateProgressUpdateStreamOutput = {
    type = "structure",
}

M.DeleteProgressUpdateStreamInput = {
    type = "structure",
    members = {
        ProgressUpdateStreamName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        DryRun = {
            type = "boolean",
        },
    },
}

M.DeleteProgressUpdateStreamOutput = {
    type = "structure",
}

M.DescribeApplicationStateInput = {
    type = "structure",
    members = {
        ApplicationId = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.DescribeApplicationStateOutput = {
    type = "structure",
    members = {
        ApplicationStatus = {
            type = "string",
        },
        LastUpdatedTime = {
            type = "timestamp",
        },
    },
}

M.DescribeMigrationTaskInput = {
    type = "structure",
    members = {
        ProgressUpdateStream = {
            type = "string",
            traits = {
                required = true,
            },
        },
        MigrationTaskName = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.ResourceAttributeType = {
    IPV4_ADDRESS = "IPV4_ADDRESS",
    IPV6_ADDRESS = "IPV6_ADDRESS",
    MAC_ADDRESS = "MAC_ADDRESS",
    FQDN = "FQDN",
    VM_MANAGER_ID = "VM_MANAGER_ID",
    VM_MANAGED_OBJECT_REFERENCE = "VM_MANAGED_OBJECT_REFERENCE",
    VM_NAME = "VM_NAME",
    VM_PATH = "VM_PATH",
    BIOS_ID = "BIOS_ID",
    MOTHERBOARD_SERIAL_NUMBER = "MOTHERBOARD_SERIAL_NUMBER",
}

M.ResourceAttribute = {
    type = "structure",
    members = {
        Type = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Value = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.Status = {
    NOT_STARTED = "NOT_STARTED",
    IN_PROGRESS = "IN_PROGRESS",
    FAILED = "FAILED",
    COMPLETED = "COMPLETED",
}

M.Task = {
    type = "structure",
    members = {
        Status = {
            type = "string",
            traits = {
                required = true,
            },
        },
        StatusDetail = {
            type = "string",
        },
        ProgressPercent = {
            type = "number",
        },
    },
}

M.MigrationTask = {
    type = "structure",
    members = {
        ProgressUpdateStream = {
            type = "string",
        },
        MigrationTaskName = {
            type = "string",
        },
        Task = {
            type = "structure",
        },
        UpdateDateTime = {
            type = "timestamp",
        },
        ResourceAttributeList = {
            type = "list",
            member_type = "structure",
        },
    },
}

M.DescribeMigrationTaskOutput = {
    type = "structure",
    members = {
        MigrationTask = {
            type = "structure",
        },
    },
}

M.DisassociateCreatedArtifactInput = {
    type = "structure",
    members = {
        ProgressUpdateStream = {
            type = "string",
            traits = {
                required = true,
            },
        },
        MigrationTaskName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        CreatedArtifactName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        DryRun = {
            type = "boolean",
        },
    },
}

M.DisassociateCreatedArtifactOutput = {
    type = "structure",
}

M.DisassociateDiscoveredResourceInput = {
    type = "structure",
    members = {
        ProgressUpdateStream = {
            type = "string",
            traits = {
                required = true,
            },
        },
        MigrationTaskName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        ConfigurationId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        DryRun = {
            type = "boolean",
        },
    },
}

M.DisassociateDiscoveredResourceOutput = {
    type = "structure",
}

M.DisassociateSourceResourceInput = {
    type = "structure",
    members = {
        ProgressUpdateStream = {
            type = "string",
            traits = {
                required = true,
            },
        },
        MigrationTaskName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        SourceResourceName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        DryRun = {
            type = "boolean",
        },
    },
}

M.DisassociateSourceResourceOutput = {
    type = "structure",
}

M.ImportMigrationTaskInput = {
    type = "structure",
    members = {
        ProgressUpdateStream = {
            type = "string",
            traits = {
                required = true,
            },
        },
        MigrationTaskName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        DryRun = {
            type = "boolean",
        },
    },
}

M.ImportMigrationTaskOutput = {
    type = "structure",
}

M.ListApplicationStatesInput = {
    type = "structure",
    members = {
        ApplicationIds = {
            type = "list",
            member_type = "string",
        },
        NextToken = {
            type = "string",
        },
        MaxResults = {
            type = "number",
        },
    },
}

M.ListApplicationStatesOutput = {
    type = "structure",
    members = {
        ApplicationStateList = {
            type = "list",
            member_type = "structure",
        },
        NextToken = {
            type = "string",
        },
    },
}

M.ListCreatedArtifactsInput = {
    type = "structure",
    members = {
        ProgressUpdateStream = {
            type = "string",
            traits = {
                required = true,
            },
        },
        MigrationTaskName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        NextToken = {
            type = "string",
        },
        MaxResults = {
            type = "number",
        },
    },
}

M.ListCreatedArtifactsOutput = {
    type = "structure",
    members = {
        NextToken = {
            type = "string",
        },
        CreatedArtifactList = {
            type = "list",
            member_type = "structure",
        },
    },
}

M.ListDiscoveredResourcesInput = {
    type = "structure",
    members = {
        ProgressUpdateStream = {
            type = "string",
            traits = {
                required = true,
            },
        },
        MigrationTaskName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        NextToken = {
            type = "string",
        },
        MaxResults = {
            type = "number",
        },
    },
}

M.ListDiscoveredResourcesOutput = {
    type = "structure",
    members = {
        NextToken = {
            type = "string",
        },
        DiscoveredResourceList = {
            type = "list",
            member_type = "structure",
        },
    },
}

M.ListMigrationTasksInput = {
    type = "structure",
    members = {
        NextToken = {
            type = "string",
        },
        MaxResults = {
            type = "number",
        },
        ResourceName = {
            type = "string",
        },
    },
}

M.MigrationTaskSummary = {
    type = "structure",
    members = {
        ProgressUpdateStream = {
            type = "string",
        },
        MigrationTaskName = {
            type = "string",
        },
        Status = {
            type = "string",
        },
        ProgressPercent = {
            type = "number",
        },
        StatusDetail = {
            type = "string",
        },
        UpdateDateTime = {
            type = "timestamp",
        },
    },
}

M.ListMigrationTasksOutput = {
    type = "structure",
    members = {
        NextToken = {
            type = "string",
        },
        MigrationTaskSummaryList = {
            type = "list",
            member_type = "structure",
        },
    },
}

M.ListMigrationTaskUpdatesInput = {
    type = "structure",
    members = {
        ProgressUpdateStream = {
            type = "string",
            traits = {
                required = true,
            },
        },
        MigrationTaskName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        NextToken = {
            type = "string",
        },
        MaxResults = {
            type = "number",
        },
    },
}

M.UpdateType = {
    MigrationTaskStateUpdated = "MIGRATION_TASK_STATE_UPDATED",
}

M.MigrationTaskUpdate = {
    type = "structure",
    members = {
        UpdateDateTime = {
            type = "timestamp",
        },
        UpdateType = {
            type = "string",
        },
        MigrationTaskState = {
            type = "structure",
        },
    },
}

M.ListMigrationTaskUpdatesOutput = {
    type = "structure",
    members = {
        NextToken = {
            type = "string",
        },
        MigrationTaskUpdateList = {
            type = "list",
            member_type = "structure",
        },
    },
}

M.ListProgressUpdateStreamsInput = {
    type = "structure",
    members = {
        NextToken = {
            type = "string",
        },
        MaxResults = {
            type = "number",
        },
    },
}

M.ProgressUpdateStreamSummary = {
    type = "structure",
    members = {
        ProgressUpdateStreamName = {
            type = "string",
        },
    },
}

M.ListProgressUpdateStreamsOutput = {
    type = "structure",
    members = {
        ProgressUpdateStreamSummaryList = {
            type = "list",
            member_type = "structure",
        },
        NextToken = {
            type = "string",
        },
    },
}

M.ListSourceResourcesInput = {
    type = "structure",
    members = {
        ProgressUpdateStream = {
            type = "string",
            traits = {
                required = true,
            },
        },
        MigrationTaskName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        NextToken = {
            type = "string",
        },
        MaxResults = {
            type = "number",
        },
    },
}

M.ListSourceResourcesOutput = {
    type = "structure",
    members = {
        NextToken = {
            type = "string",
        },
        SourceResourceList = {
            type = "list",
            member_type = "structure",
        },
    },
}

M.NotifyApplicationStateInput = {
    type = "structure",
    members = {
        ApplicationId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Status = {
            type = "string",
            traits = {
                required = true,
            },
        },
        UpdateDateTime = {
            type = "timestamp",
        },
        DryRun = {
            type = "boolean",
        },
    },
}

M.NotifyApplicationStateOutput = {
    type = "structure",
}

M.NotifyMigrationTaskStateInput = {
    type = "structure",
    members = {
        ProgressUpdateStream = {
            type = "string",
            traits = {
                required = true,
            },
        },
        MigrationTaskName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Task = {
            type = "structure",
            traits = {
                required = true,
            },
        },
        UpdateDateTime = {
            type = "timestamp",
            traits = {
                required = true,
            },
        },
        NextUpdateSeconds = {
            type = "number",
            traits = {
                required = true,
            },
        },
        DryRun = {
            type = "boolean",
        },
    },
}

M.NotifyMigrationTaskStateOutput = {
    type = "structure",
}

M.PutResourceAttributesInput = {
    type = "structure",
    members = {
        ProgressUpdateStream = {
            type = "string",
            traits = {
                required = true,
            },
        },
        MigrationTaskName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        ResourceAttributeList = {
            type = "list",
            member_type = "structure",
            traits = {
                required = true,
            },
        },
        DryRun = {
            type = "boolean",
        },
    },
}

M.PutResourceAttributesOutput = {
    type = "structure",
}

return M
