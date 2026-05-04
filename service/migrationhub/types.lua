local M = {}

M.AccessDeniedException = {
    type = "structure",
    id = "AccessDeniedException",
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
    id = "ApplicationState",
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
    id = "CreatedArtifact",
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
    id = "AssociateCreatedArtifactInput",
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
        CreatedArtifact = setmetatable({ traits = {
            required = true,
        } }, { __index = M.CreatedArtifact }),
        DryRun = {
            type = "boolean",
            traits = {
                default = false,
            },
        },
    },
}

M.AssociateCreatedArtifactOutput = {
    type = "structure",
    id = "AssociateCreatedArtifactOutput",
}

M.DryRunOperation = {
    type = "structure",
    id = "DryRunOperation",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.HomeRegionNotSetException = {
    type = "structure",
    id = "HomeRegionNotSetException",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.InternalServerError = {
    type = "structure",
    id = "InternalServerError",
    error = "server",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.InvalidInputException = {
    type = "structure",
    id = "InvalidInputException",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.ResourceNotFoundException = {
    type = "structure",
    id = "ResourceNotFoundException",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.ServiceUnavailableException = {
    type = "structure",
    id = "ServiceUnavailableException",
    error = "server",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.ThrottlingException = {
    type = "structure",
    id = "ThrottlingException",
    error = "client",
    members = {
        Message = {
            type = "string",
            traits = {
                required = true,
            },
        },
        RetryAfterSeconds = {
            type = "integer",
            traits = {
                default = 0,
                http_header = "Retry-After",
            },
        },
    },
}

M.UnauthorizedOperation = {
    type = "structure",
    id = "UnauthorizedOperation",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.DiscoveredResource = {
    type = "structure",
    id = "DiscoveredResource",
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
    id = "AssociateDiscoveredResourceInput",
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
        DiscoveredResource = setmetatable({ traits = {
            required = true,
        } }, { __index = M.DiscoveredResource }),
        DryRun = {
            type = "boolean",
            traits = {
                default = false,
            },
        },
    },
}

M.AssociateDiscoveredResourceOutput = {
    type = "structure",
    id = "AssociateDiscoveredResourceOutput",
}

M.PolicyErrorException = {
    type = "structure",
    id = "PolicyErrorException",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.SourceResource = {
    type = "structure",
    id = "SourceResource",
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
    id = "AssociateSourceResourceInput",
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
        SourceResource = setmetatable({ traits = {
            required = true,
        } }, { __index = M.SourceResource }),
        DryRun = {
            type = "boolean",
            traits = {
                default = false,
            },
        },
    },
}

M.AssociateSourceResourceOutput = {
    type = "structure",
    id = "AssociateSourceResourceOutput",
}

M.CreateProgressUpdateStreamInput = {
    type = "structure",
    id = "CreateProgressUpdateStreamInput",
    members = {
        ProgressUpdateStreamName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        DryRun = {
            type = "boolean",
            traits = {
                default = false,
            },
        },
    },
}

M.CreateProgressUpdateStreamOutput = {
    type = "structure",
    id = "CreateProgressUpdateStreamOutput",
}

M.DeleteProgressUpdateStreamInput = {
    type = "structure",
    id = "DeleteProgressUpdateStreamInput",
    members = {
        ProgressUpdateStreamName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        DryRun = {
            type = "boolean",
            traits = {
                default = false,
            },
        },
    },
}

M.DeleteProgressUpdateStreamOutput = {
    type = "structure",
    id = "DeleteProgressUpdateStreamOutput",
}

M.DescribeApplicationStateInput = {
    type = "structure",
    id = "DescribeApplicationStateInput",
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
    id = "DescribeApplicationStateOutput",
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
    id = "DescribeMigrationTaskInput",
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
    id = "ResourceAttribute",
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
    id = "Task",
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
            type = "integer",
        },
    },
}

M.MigrationTask = {
    type = "structure",
    id = "MigrationTask",
    members = {
        ProgressUpdateStream = {
            type = "string",
        },
        MigrationTaskName = {
            type = "string",
        },
        Task = M.Task,
        UpdateDateTime = {
            type = "timestamp",
        },
        ResourceAttributeList = {
            type = "list",
            member = M.ResourceAttribute,
        },
    },
}

M.DescribeMigrationTaskOutput = {
    type = "structure",
    id = "DescribeMigrationTaskOutput",
    members = {
        MigrationTask = M.MigrationTask,
    },
}

M.DisassociateCreatedArtifactInput = {
    type = "structure",
    id = "DisassociateCreatedArtifactInput",
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
            traits = {
                default = false,
            },
        },
    },
}

M.DisassociateCreatedArtifactOutput = {
    type = "structure",
    id = "DisassociateCreatedArtifactOutput",
}

M.DisassociateDiscoveredResourceInput = {
    type = "structure",
    id = "DisassociateDiscoveredResourceInput",
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
            traits = {
                default = false,
            },
        },
    },
}

M.DisassociateDiscoveredResourceOutput = {
    type = "structure",
    id = "DisassociateDiscoveredResourceOutput",
}

M.DisassociateSourceResourceInput = {
    type = "structure",
    id = "DisassociateSourceResourceInput",
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
            traits = {
                default = false,
            },
        },
    },
}

M.DisassociateSourceResourceOutput = {
    type = "structure",
    id = "DisassociateSourceResourceOutput",
}

M.ImportMigrationTaskInput = {
    type = "structure",
    id = "ImportMigrationTaskInput",
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
            traits = {
                default = false,
            },
        },
    },
}

M.ImportMigrationTaskOutput = {
    type = "structure",
    id = "ImportMigrationTaskOutput",
}

M.ListApplicationStatesInput = {
    type = "structure",
    id = "ListApplicationStatesInput",
    members = {
        ApplicationIds = {
            type = "list",
            member = { type = "string" },
        },
        NextToken = {
            type = "string",
        },
        MaxResults = {
            type = "integer",
        },
    },
}

M.ListApplicationStatesOutput = {
    type = "structure",
    id = "ListApplicationStatesOutput",
    members = {
        ApplicationStateList = {
            type = "list",
            member = M.ApplicationState,
        },
        NextToken = {
            type = "string",
        },
    },
}

M.ListCreatedArtifactsInput = {
    type = "structure",
    id = "ListCreatedArtifactsInput",
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
            type = "integer",
        },
    },
}

M.ListCreatedArtifactsOutput = {
    type = "structure",
    id = "ListCreatedArtifactsOutput",
    members = {
        NextToken = {
            type = "string",
        },
        CreatedArtifactList = {
            type = "list",
            member = M.CreatedArtifact,
        },
    },
}

M.ListDiscoveredResourcesInput = {
    type = "structure",
    id = "ListDiscoveredResourcesInput",
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
            type = "integer",
        },
    },
}

M.ListDiscoveredResourcesOutput = {
    type = "structure",
    id = "ListDiscoveredResourcesOutput",
    members = {
        NextToken = {
            type = "string",
        },
        DiscoveredResourceList = {
            type = "list",
            member = M.DiscoveredResource,
        },
    },
}

M.ListMigrationTasksInput = {
    type = "structure",
    id = "ListMigrationTasksInput",
    members = {
        NextToken = {
            type = "string",
        },
        MaxResults = {
            type = "integer",
        },
        ResourceName = {
            type = "string",
        },
    },
}

M.MigrationTaskSummary = {
    type = "structure",
    id = "MigrationTaskSummary",
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
            type = "integer",
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
    id = "ListMigrationTasksOutput",
    members = {
        NextToken = {
            type = "string",
        },
        MigrationTaskSummaryList = {
            type = "list",
            member = M.MigrationTaskSummary,
        },
    },
}

M.ListMigrationTaskUpdatesInput = {
    type = "structure",
    id = "ListMigrationTaskUpdatesInput",
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
            type = "integer",
        },
    },
}

M.UpdateType = {
    MigrationTaskStateUpdated = "MIGRATION_TASK_STATE_UPDATED",
}

M.MigrationTaskUpdate = {
    type = "structure",
    id = "MigrationTaskUpdate",
    members = {
        UpdateDateTime = {
            type = "timestamp",
        },
        UpdateType = {
            type = "string",
        },
        MigrationTaskState = M.Task,
    },
}

M.ListMigrationTaskUpdatesOutput = {
    type = "structure",
    id = "ListMigrationTaskUpdatesOutput",
    members = {
        NextToken = {
            type = "string",
        },
        MigrationTaskUpdateList = {
            type = "list",
            member = M.MigrationTaskUpdate,
        },
    },
}

M.ListProgressUpdateStreamsInput = {
    type = "structure",
    id = "ListProgressUpdateStreamsInput",
    members = {
        NextToken = {
            type = "string",
        },
        MaxResults = {
            type = "integer",
        },
    },
}

M.ProgressUpdateStreamSummary = {
    type = "structure",
    id = "ProgressUpdateStreamSummary",
    members = {
        ProgressUpdateStreamName = {
            type = "string",
        },
    },
}

M.ListProgressUpdateStreamsOutput = {
    type = "structure",
    id = "ListProgressUpdateStreamsOutput",
    members = {
        ProgressUpdateStreamSummaryList = {
            type = "list",
            member = M.ProgressUpdateStreamSummary,
        },
        NextToken = {
            type = "string",
        },
    },
}

M.ListSourceResourcesInput = {
    type = "structure",
    id = "ListSourceResourcesInput",
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
            type = "integer",
        },
    },
}

M.ListSourceResourcesOutput = {
    type = "structure",
    id = "ListSourceResourcesOutput",
    members = {
        NextToken = {
            type = "string",
        },
        SourceResourceList = {
            type = "list",
            member = M.SourceResource,
        },
    },
}

M.NotifyApplicationStateInput = {
    type = "structure",
    id = "NotifyApplicationStateInput",
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
            traits = {
                default = false,
            },
        },
    },
}

M.NotifyApplicationStateOutput = {
    type = "structure",
    id = "NotifyApplicationStateOutput",
}

M.NotifyMigrationTaskStateInput = {
    type = "structure",
    id = "NotifyMigrationTaskStateInput",
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
        Task = setmetatable({ traits = {
            required = true,
        } }, { __index = M.Task }),
        UpdateDateTime = {
            type = "timestamp",
            traits = {
                required = true,
            },
        },
        NextUpdateSeconds = {
            type = "integer",
            traits = {
                default = 0,
                required = true,
            },
        },
        DryRun = {
            type = "boolean",
            traits = {
                default = false,
            },
        },
    },
}

M.NotifyMigrationTaskStateOutput = {
    type = "structure",
    id = "NotifyMigrationTaskStateOutput",
}

M.PutResourceAttributesInput = {
    type = "structure",
    id = "PutResourceAttributesInput",
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
            member = M.ResourceAttribute,
            traits = {
                required = true,
            },
        },
        DryRun = {
            type = "boolean",
            traits = {
                default = false,
            },
        },
    },
}

M.PutResourceAttributesOutput = {
    type = "structure",
    id = "PutResourceAttributesOutput",
}

return M
