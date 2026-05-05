local id = require("smithy.shape_id")
local schema = require("smithy.schema")
local prelude = require("smithy.prelude")
local traits = require("smithy.traits")

local _N = "com.amazonaws.migrationhub"

local M = {}

M.AccessDeniedException = schema.new({
    id = id.from(_N, "AccessDeniedException"),
    type = "structure",
    traits = {
        [traits.ERROR] = { value = "client" },
    },
    members = {
        Message = schema.new({
            id = id.from(_N, "AccessDeniedException", "Message"),
            type = "string",
            name = "Message",
            target_id = prelude.String.id,
        }),
    },
})

M.ApplicationState = schema.new({
    id = id.from(_N, "ApplicationState"),
    type = "structure",
    members = {
        ApplicationId = schema.new({
            id = id.from(_N, "ApplicationState", "ApplicationId"),
            type = "string",
            name = "ApplicationId",
            target_id = prelude.String.id,
        }),
        ApplicationStatus = schema.new({
            id = id.from(_N, "ApplicationState", "ApplicationStatus"),
            type = "string",
            name = "ApplicationStatus",
            target_id = prelude.String.id,
        }),
        LastUpdatedTime = schema.new({
            id = id.from(_N, "ApplicationState", "LastUpdatedTime"),
            type = "timestamp",
            name = "LastUpdatedTime",
            target_id = prelude.Timestamp.id,
        }),
    },
})

M.CreatedArtifact = schema.new({
    id = id.from(_N, "CreatedArtifact"),
    type = "structure",
    members = {
        Name = schema.new({
            id = id.from(_N, "CreatedArtifact", "Name"),
            type = "string",
            name = "Name",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        Description = schema.new({
            id = id.from(_N, "CreatedArtifact", "Description"),
            type = "string",
            name = "Description",
            target_id = prelude.String.id,
        }),
    },
})

M.AssociateCreatedArtifactInput = schema.new({
    id = id.from(_N, "AssociateCreatedArtifactInput"),
    type = "structure",
    members = {
        ProgressUpdateStream = schema.new({
            id = id.from(_N, "AssociateCreatedArtifactInput", "ProgressUpdateStream"),
            type = "string",
            name = "ProgressUpdateStream",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        MigrationTaskName = schema.new({
            id = id.from(_N, "AssociateCreatedArtifactInput", "MigrationTaskName"),
            type = "string",
            name = "MigrationTaskName",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        CreatedArtifact = schema.new({
            id = id.from(_N, "AssociateCreatedArtifactInput", "CreatedArtifact"),
            type = "structure",
            name = "CreatedArtifact",
            target_id = id.from(_N, "CreatedArtifact"),
            target = M.CreatedArtifact,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        DryRun = schema.new({
            id = id.from(_N, "AssociateCreatedArtifactInput", "DryRun"),
            type = "boolean",
            name = "DryRun",
            target_id = prelude.Boolean.id,
            traits = {
                [traits.DEFAULT] = { value = false },
            },
        }),
    },
})

M.AssociateCreatedArtifactOutput = schema.new({
    id = id.from(_N, "AssociateCreatedArtifactOutput"),
    type = "structure",
})

M.DryRunOperation = schema.new({
    id = id.from(_N, "DryRunOperation"),
    type = "structure",
    traits = {
        [traits.ERROR] = { value = "client" },
    },
    members = {
        Message = schema.new({
            id = id.from(_N, "DryRunOperation", "Message"),
            type = "string",
            name = "Message",
            target_id = prelude.String.id,
        }),
    },
})

M.HomeRegionNotSetException = schema.new({
    id = id.from(_N, "HomeRegionNotSetException"),
    type = "structure",
    traits = {
        [traits.ERROR] = { value = "client" },
    },
    members = {
        Message = schema.new({
            id = id.from(_N, "HomeRegionNotSetException", "Message"),
            type = "string",
            name = "Message",
            target_id = prelude.String.id,
        }),
    },
})

M.InternalServerError = schema.new({
    id = id.from(_N, "InternalServerError"),
    type = "structure",
    traits = {
        [traits.ERROR] = { value = "server" },
    },
    members = {
        Message = schema.new({
            id = id.from(_N, "InternalServerError", "Message"),
            type = "string",
            name = "Message",
            target_id = prelude.String.id,
        }),
    },
})

M.InvalidInputException = schema.new({
    id = id.from(_N, "InvalidInputException"),
    type = "structure",
    traits = {
        [traits.ERROR] = { value = "client" },
    },
    members = {
        Message = schema.new({
            id = id.from(_N, "InvalidInputException", "Message"),
            type = "string",
            name = "Message",
            target_id = prelude.String.id,
        }),
    },
})

M.ResourceNotFoundException = schema.new({
    id = id.from(_N, "ResourceNotFoundException"),
    type = "structure",
    traits = {
        [traits.ERROR] = { value = "client" },
    },
    members = {
        Message = schema.new({
            id = id.from(_N, "ResourceNotFoundException", "Message"),
            type = "string",
            name = "Message",
            target_id = prelude.String.id,
        }),
    },
})

M.ServiceUnavailableException = schema.new({
    id = id.from(_N, "ServiceUnavailableException"),
    type = "structure",
    traits = {
        [traits.ERROR] = { value = "server" },
    },
    members = {
        Message = schema.new({
            id = id.from(_N, "ServiceUnavailableException", "Message"),
            type = "string",
            name = "Message",
            target_id = prelude.String.id,
        }),
    },
})

M.ThrottlingException = schema.new({
    id = id.from(_N, "ThrottlingException"),
    type = "structure",
    traits = {
        [traits.ERROR] = { value = "client" },
    },
    members = {
        Message = schema.new({
            id = id.from(_N, "ThrottlingException", "Message"),
            type = "string",
            name = "Message",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        RetryAfterSeconds = schema.new({
            id = id.from(_N, "ThrottlingException", "RetryAfterSeconds"),
            type = "integer",
            name = "RetryAfterSeconds",
            target_id = prelude.Integer.id,
            traits = {
                [traits.DEFAULT] = { value = 0 },
                [traits.HTTP_HEADER] = { name = "Retry-After" },
            },
        }),
    },
})

M.UnauthorizedOperation = schema.new({
    id = id.from(_N, "UnauthorizedOperation"),
    type = "structure",
    traits = {
        [traits.ERROR] = { value = "client" },
    },
    members = {
        Message = schema.new({
            id = id.from(_N, "UnauthorizedOperation", "Message"),
            type = "string",
            name = "Message",
            target_id = prelude.String.id,
        }),
    },
})

M.DiscoveredResource = schema.new({
    id = id.from(_N, "DiscoveredResource"),
    type = "structure",
    members = {
        ConfigurationId = schema.new({
            id = id.from(_N, "DiscoveredResource", "ConfigurationId"),
            type = "string",
            name = "ConfigurationId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        Description = schema.new({
            id = id.from(_N, "DiscoveredResource", "Description"),
            type = "string",
            name = "Description",
            target_id = prelude.String.id,
        }),
    },
})

M.AssociateDiscoveredResourceInput = schema.new({
    id = id.from(_N, "AssociateDiscoveredResourceInput"),
    type = "structure",
    members = {
        ProgressUpdateStream = schema.new({
            id = id.from(_N, "AssociateDiscoveredResourceInput", "ProgressUpdateStream"),
            type = "string",
            name = "ProgressUpdateStream",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        MigrationTaskName = schema.new({
            id = id.from(_N, "AssociateDiscoveredResourceInput", "MigrationTaskName"),
            type = "string",
            name = "MigrationTaskName",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        DiscoveredResource = schema.new({
            id = id.from(_N, "AssociateDiscoveredResourceInput", "DiscoveredResource"),
            type = "structure",
            name = "DiscoveredResource",
            target_id = id.from(_N, "DiscoveredResource"),
            target = M.DiscoveredResource,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        DryRun = schema.new({
            id = id.from(_N, "AssociateDiscoveredResourceInput", "DryRun"),
            type = "boolean",
            name = "DryRun",
            target_id = prelude.Boolean.id,
            traits = {
                [traits.DEFAULT] = { value = false },
            },
        }),
    },
})

M.AssociateDiscoveredResourceOutput = schema.new({
    id = id.from(_N, "AssociateDiscoveredResourceOutput"),
    type = "structure",
})

M.PolicyErrorException = schema.new({
    id = id.from(_N, "PolicyErrorException"),
    type = "structure",
    traits = {
        [traits.ERROR] = { value = "client" },
    },
    members = {
        Message = schema.new({
            id = id.from(_N, "PolicyErrorException", "Message"),
            type = "string",
            name = "Message",
            target_id = prelude.String.id,
        }),
    },
})

M.SourceResource = schema.new({
    id = id.from(_N, "SourceResource"),
    type = "structure",
    members = {
        Name = schema.new({
            id = id.from(_N, "SourceResource", "Name"),
            type = "string",
            name = "Name",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        Description = schema.new({
            id = id.from(_N, "SourceResource", "Description"),
            type = "string",
            name = "Description",
            target_id = prelude.String.id,
        }),
        StatusDetail = schema.new({
            id = id.from(_N, "SourceResource", "StatusDetail"),
            type = "string",
            name = "StatusDetail",
            target_id = prelude.String.id,
        }),
    },
})

M.AssociateSourceResourceInput = schema.new({
    id = id.from(_N, "AssociateSourceResourceInput"),
    type = "structure",
    members = {
        ProgressUpdateStream = schema.new({
            id = id.from(_N, "AssociateSourceResourceInput", "ProgressUpdateStream"),
            type = "string",
            name = "ProgressUpdateStream",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        MigrationTaskName = schema.new({
            id = id.from(_N, "AssociateSourceResourceInput", "MigrationTaskName"),
            type = "string",
            name = "MigrationTaskName",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        SourceResource = schema.new({
            id = id.from(_N, "AssociateSourceResourceInput", "SourceResource"),
            type = "structure",
            name = "SourceResource",
            target_id = id.from(_N, "SourceResource"),
            target = M.SourceResource,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        DryRun = schema.new({
            id = id.from(_N, "AssociateSourceResourceInput", "DryRun"),
            type = "boolean",
            name = "DryRun",
            target_id = prelude.Boolean.id,
            traits = {
                [traits.DEFAULT] = { value = false },
            },
        }),
    },
})

M.AssociateSourceResourceOutput = schema.new({
    id = id.from(_N, "AssociateSourceResourceOutput"),
    type = "structure",
})

M.CreateProgressUpdateStreamInput = schema.new({
    id = id.from(_N, "CreateProgressUpdateStreamInput"),
    type = "structure",
    members = {
        ProgressUpdateStreamName = schema.new({
            id = id.from(_N, "CreateProgressUpdateStreamInput", "ProgressUpdateStreamName"),
            type = "string",
            name = "ProgressUpdateStreamName",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        DryRun = schema.new({
            id = id.from(_N, "CreateProgressUpdateStreamInput", "DryRun"),
            type = "boolean",
            name = "DryRun",
            target_id = prelude.Boolean.id,
            traits = {
                [traits.DEFAULT] = { value = false },
            },
        }),
    },
})

M.CreateProgressUpdateStreamOutput = schema.new({
    id = id.from(_N, "CreateProgressUpdateStreamOutput"),
    type = "structure",
})

M.DeleteProgressUpdateStreamInput = schema.new({
    id = id.from(_N, "DeleteProgressUpdateStreamInput"),
    type = "structure",
    members = {
        ProgressUpdateStreamName = schema.new({
            id = id.from(_N, "DeleteProgressUpdateStreamInput", "ProgressUpdateStreamName"),
            type = "string",
            name = "ProgressUpdateStreamName",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        DryRun = schema.new({
            id = id.from(_N, "DeleteProgressUpdateStreamInput", "DryRun"),
            type = "boolean",
            name = "DryRun",
            target_id = prelude.Boolean.id,
            traits = {
                [traits.DEFAULT] = { value = false },
            },
        }),
    },
})

M.DeleteProgressUpdateStreamOutput = schema.new({
    id = id.from(_N, "DeleteProgressUpdateStreamOutput"),
    type = "structure",
})

M.DescribeApplicationStateInput = schema.new({
    id = id.from(_N, "DescribeApplicationStateInput"),
    type = "structure",
    members = {
        ApplicationId = schema.new({
            id = id.from(_N, "DescribeApplicationStateInput", "ApplicationId"),
            type = "string",
            name = "ApplicationId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.DescribeApplicationStateOutput = schema.new({
    id = id.from(_N, "DescribeApplicationStateOutput"),
    type = "structure",
    members = {
        ApplicationStatus = schema.new({
            id = id.from(_N, "DescribeApplicationStateOutput", "ApplicationStatus"),
            type = "string",
            name = "ApplicationStatus",
            target_id = prelude.String.id,
        }),
        LastUpdatedTime = schema.new({
            id = id.from(_N, "DescribeApplicationStateOutput", "LastUpdatedTime"),
            type = "timestamp",
            name = "LastUpdatedTime",
            target_id = prelude.Timestamp.id,
        }),
    },
})

M.DescribeMigrationTaskInput = schema.new({
    id = id.from(_N, "DescribeMigrationTaskInput"),
    type = "structure",
    members = {
        ProgressUpdateStream = schema.new({
            id = id.from(_N, "DescribeMigrationTaskInput", "ProgressUpdateStream"),
            type = "string",
            name = "ProgressUpdateStream",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        MigrationTaskName = schema.new({
            id = id.from(_N, "DescribeMigrationTaskInput", "MigrationTaskName"),
            type = "string",
            name = "MigrationTaskName",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.ResourceAttribute = schema.new({
    id = id.from(_N, "ResourceAttribute"),
    type = "structure",
    members = {
        Type = schema.new({
            id = id.from(_N, "ResourceAttribute", "Type"),
            type = "string",
            name = "Type",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        Value = schema.new({
            id = id.from(_N, "ResourceAttribute", "Value"),
            type = "string",
            name = "Value",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.Task = schema.new({
    id = id.from(_N, "Task"),
    type = "structure",
    members = {
        Status = schema.new({
            id = id.from(_N, "Task", "Status"),
            type = "string",
            name = "Status",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        StatusDetail = schema.new({
            id = id.from(_N, "Task", "StatusDetail"),
            type = "string",
            name = "StatusDetail",
            target_id = prelude.String.id,
        }),
        ProgressPercent = schema.new({
            id = id.from(_N, "Task", "ProgressPercent"),
            type = "integer",
            name = "ProgressPercent",
            target_id = prelude.Integer.id,
        }),
    },
})

M.MigrationTask = schema.new({
    id = id.from(_N, "MigrationTask"),
    type = "structure",
    members = {
        ProgressUpdateStream = schema.new({
            id = id.from(_N, "MigrationTask", "ProgressUpdateStream"),
            type = "string",
            name = "ProgressUpdateStream",
            target_id = prelude.String.id,
        }),
        MigrationTaskName = schema.new({
            id = id.from(_N, "MigrationTask", "MigrationTaskName"),
            type = "string",
            name = "MigrationTaskName",
            target_id = prelude.String.id,
        }),
        Task = schema.new({
            id = id.from(_N, "MigrationTask", "Task"),
            type = "structure",
            name = "Task",
            target_id = id.from(_N, "Task"),
            target = M.Task,
        }),
        UpdateDateTime = schema.new({
            id = id.from(_N, "MigrationTask", "UpdateDateTime"),
            type = "timestamp",
            name = "UpdateDateTime",
            target_id = prelude.Timestamp.id,
        }),
        ResourceAttributeList = schema.new({
            id = id.from(_N, "MigrationTask", "ResourceAttributeList"),
            type = "list",
            name = "ResourceAttributeList",
            target_id = prelude.Document.id,
            list_member = M.ResourceAttribute,
        }),
    },
})

M.DescribeMigrationTaskOutput = schema.new({
    id = id.from(_N, "DescribeMigrationTaskOutput"),
    type = "structure",
    members = {
        MigrationTask = schema.new({
            id = id.from(_N, "DescribeMigrationTaskOutput", "MigrationTask"),
            type = "structure",
            name = "MigrationTask",
            target_id = id.from(_N, "MigrationTask"),
            target = M.MigrationTask,
        }),
    },
})

M.DisassociateCreatedArtifactInput = schema.new({
    id = id.from(_N, "DisassociateCreatedArtifactInput"),
    type = "structure",
    members = {
        ProgressUpdateStream = schema.new({
            id = id.from(_N, "DisassociateCreatedArtifactInput", "ProgressUpdateStream"),
            type = "string",
            name = "ProgressUpdateStream",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        MigrationTaskName = schema.new({
            id = id.from(_N, "DisassociateCreatedArtifactInput", "MigrationTaskName"),
            type = "string",
            name = "MigrationTaskName",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        CreatedArtifactName = schema.new({
            id = id.from(_N, "DisassociateCreatedArtifactInput", "CreatedArtifactName"),
            type = "string",
            name = "CreatedArtifactName",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        DryRun = schema.new({
            id = id.from(_N, "DisassociateCreatedArtifactInput", "DryRun"),
            type = "boolean",
            name = "DryRun",
            target_id = prelude.Boolean.id,
            traits = {
                [traits.DEFAULT] = { value = false },
            },
        }),
    },
})

M.DisassociateCreatedArtifactOutput = schema.new({
    id = id.from(_N, "DisassociateCreatedArtifactOutput"),
    type = "structure",
})

M.DisassociateDiscoveredResourceInput = schema.new({
    id = id.from(_N, "DisassociateDiscoveredResourceInput"),
    type = "structure",
    members = {
        ProgressUpdateStream = schema.new({
            id = id.from(_N, "DisassociateDiscoveredResourceInput", "ProgressUpdateStream"),
            type = "string",
            name = "ProgressUpdateStream",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        MigrationTaskName = schema.new({
            id = id.from(_N, "DisassociateDiscoveredResourceInput", "MigrationTaskName"),
            type = "string",
            name = "MigrationTaskName",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        ConfigurationId = schema.new({
            id = id.from(_N, "DisassociateDiscoveredResourceInput", "ConfigurationId"),
            type = "string",
            name = "ConfigurationId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        DryRun = schema.new({
            id = id.from(_N, "DisassociateDiscoveredResourceInput", "DryRun"),
            type = "boolean",
            name = "DryRun",
            target_id = prelude.Boolean.id,
            traits = {
                [traits.DEFAULT] = { value = false },
            },
        }),
    },
})

M.DisassociateDiscoveredResourceOutput = schema.new({
    id = id.from(_N, "DisassociateDiscoveredResourceOutput"),
    type = "structure",
})

M.DisassociateSourceResourceInput = schema.new({
    id = id.from(_N, "DisassociateSourceResourceInput"),
    type = "structure",
    members = {
        ProgressUpdateStream = schema.new({
            id = id.from(_N, "DisassociateSourceResourceInput", "ProgressUpdateStream"),
            type = "string",
            name = "ProgressUpdateStream",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        MigrationTaskName = schema.new({
            id = id.from(_N, "DisassociateSourceResourceInput", "MigrationTaskName"),
            type = "string",
            name = "MigrationTaskName",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        SourceResourceName = schema.new({
            id = id.from(_N, "DisassociateSourceResourceInput", "SourceResourceName"),
            type = "string",
            name = "SourceResourceName",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        DryRun = schema.new({
            id = id.from(_N, "DisassociateSourceResourceInput", "DryRun"),
            type = "boolean",
            name = "DryRun",
            target_id = prelude.Boolean.id,
            traits = {
                [traits.DEFAULT] = { value = false },
            },
        }),
    },
})

M.DisassociateSourceResourceOutput = schema.new({
    id = id.from(_N, "DisassociateSourceResourceOutput"),
    type = "structure",
})

M.ImportMigrationTaskInput = schema.new({
    id = id.from(_N, "ImportMigrationTaskInput"),
    type = "structure",
    members = {
        ProgressUpdateStream = schema.new({
            id = id.from(_N, "ImportMigrationTaskInput", "ProgressUpdateStream"),
            type = "string",
            name = "ProgressUpdateStream",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        MigrationTaskName = schema.new({
            id = id.from(_N, "ImportMigrationTaskInput", "MigrationTaskName"),
            type = "string",
            name = "MigrationTaskName",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        DryRun = schema.new({
            id = id.from(_N, "ImportMigrationTaskInput", "DryRun"),
            type = "boolean",
            name = "DryRun",
            target_id = prelude.Boolean.id,
            traits = {
                [traits.DEFAULT] = { value = false },
            },
        }),
    },
})

M.ImportMigrationTaskOutput = schema.new({
    id = id.from(_N, "ImportMigrationTaskOutput"),
    type = "structure",
})

M.ListApplicationStatesInput = schema.new({
    id = id.from(_N, "ListApplicationStatesInput"),
    type = "structure",
    members = {
        ApplicationIds = schema.new({
            id = id.from(_N, "ListApplicationStatesInput", "ApplicationIds"),
            type = "list",
            name = "ApplicationIds",
            target_id = prelude.Document.id,
            list_member = prelude.String,
        }),
        NextToken = schema.new({
            id = id.from(_N, "ListApplicationStatesInput", "NextToken"),
            type = "string",
            name = "NextToken",
            target_id = prelude.String.id,
        }),
        MaxResults = schema.new({
            id = id.from(_N, "ListApplicationStatesInput", "MaxResults"),
            type = "integer",
            name = "MaxResults",
            target_id = prelude.Integer.id,
        }),
    },
})

M.ListApplicationStatesOutput = schema.new({
    id = id.from(_N, "ListApplicationStatesOutput"),
    type = "structure",
    members = {
        ApplicationStateList = schema.new({
            id = id.from(_N, "ListApplicationStatesOutput", "ApplicationStateList"),
            type = "list",
            name = "ApplicationStateList",
            target_id = prelude.Document.id,
            list_member = M.ApplicationState,
        }),
        NextToken = schema.new({
            id = id.from(_N, "ListApplicationStatesOutput", "NextToken"),
            type = "string",
            name = "NextToken",
            target_id = prelude.String.id,
        }),
    },
})

M.ListCreatedArtifactsInput = schema.new({
    id = id.from(_N, "ListCreatedArtifactsInput"),
    type = "structure",
    members = {
        ProgressUpdateStream = schema.new({
            id = id.from(_N, "ListCreatedArtifactsInput", "ProgressUpdateStream"),
            type = "string",
            name = "ProgressUpdateStream",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        MigrationTaskName = schema.new({
            id = id.from(_N, "ListCreatedArtifactsInput", "MigrationTaskName"),
            type = "string",
            name = "MigrationTaskName",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        NextToken = schema.new({
            id = id.from(_N, "ListCreatedArtifactsInput", "NextToken"),
            type = "string",
            name = "NextToken",
            target_id = prelude.String.id,
        }),
        MaxResults = schema.new({
            id = id.from(_N, "ListCreatedArtifactsInput", "MaxResults"),
            type = "integer",
            name = "MaxResults",
            target_id = prelude.Integer.id,
        }),
    },
})

M.ListCreatedArtifactsOutput = schema.new({
    id = id.from(_N, "ListCreatedArtifactsOutput"),
    type = "structure",
    members = {
        NextToken = schema.new({
            id = id.from(_N, "ListCreatedArtifactsOutput", "NextToken"),
            type = "string",
            name = "NextToken",
            target_id = prelude.String.id,
        }),
        CreatedArtifactList = schema.new({
            id = id.from(_N, "ListCreatedArtifactsOutput", "CreatedArtifactList"),
            type = "list",
            name = "CreatedArtifactList",
            target_id = prelude.Document.id,
            list_member = M.CreatedArtifact,
        }),
    },
})

M.ListDiscoveredResourcesInput = schema.new({
    id = id.from(_N, "ListDiscoveredResourcesInput"),
    type = "structure",
    members = {
        ProgressUpdateStream = schema.new({
            id = id.from(_N, "ListDiscoveredResourcesInput", "ProgressUpdateStream"),
            type = "string",
            name = "ProgressUpdateStream",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        MigrationTaskName = schema.new({
            id = id.from(_N, "ListDiscoveredResourcesInput", "MigrationTaskName"),
            type = "string",
            name = "MigrationTaskName",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        NextToken = schema.new({
            id = id.from(_N, "ListDiscoveredResourcesInput", "NextToken"),
            type = "string",
            name = "NextToken",
            target_id = prelude.String.id,
        }),
        MaxResults = schema.new({
            id = id.from(_N, "ListDiscoveredResourcesInput", "MaxResults"),
            type = "integer",
            name = "MaxResults",
            target_id = prelude.Integer.id,
        }),
    },
})

M.ListDiscoveredResourcesOutput = schema.new({
    id = id.from(_N, "ListDiscoveredResourcesOutput"),
    type = "structure",
    members = {
        NextToken = schema.new({
            id = id.from(_N, "ListDiscoveredResourcesOutput", "NextToken"),
            type = "string",
            name = "NextToken",
            target_id = prelude.String.id,
        }),
        DiscoveredResourceList = schema.new({
            id = id.from(_N, "ListDiscoveredResourcesOutput", "DiscoveredResourceList"),
            type = "list",
            name = "DiscoveredResourceList",
            target_id = prelude.Document.id,
            list_member = M.DiscoveredResource,
        }),
    },
})

M.ListMigrationTasksInput = schema.new({
    id = id.from(_N, "ListMigrationTasksInput"),
    type = "structure",
    members = {
        NextToken = schema.new({
            id = id.from(_N, "ListMigrationTasksInput", "NextToken"),
            type = "string",
            name = "NextToken",
            target_id = prelude.String.id,
        }),
        MaxResults = schema.new({
            id = id.from(_N, "ListMigrationTasksInput", "MaxResults"),
            type = "integer",
            name = "MaxResults",
            target_id = prelude.Integer.id,
        }),
        ResourceName = schema.new({
            id = id.from(_N, "ListMigrationTasksInput", "ResourceName"),
            type = "string",
            name = "ResourceName",
            target_id = prelude.String.id,
        }),
    },
})

M.MigrationTaskSummary = schema.new({
    id = id.from(_N, "MigrationTaskSummary"),
    type = "structure",
    members = {
        ProgressUpdateStream = schema.new({
            id = id.from(_N, "MigrationTaskSummary", "ProgressUpdateStream"),
            type = "string",
            name = "ProgressUpdateStream",
            target_id = prelude.String.id,
        }),
        MigrationTaskName = schema.new({
            id = id.from(_N, "MigrationTaskSummary", "MigrationTaskName"),
            type = "string",
            name = "MigrationTaskName",
            target_id = prelude.String.id,
        }),
        Status = schema.new({
            id = id.from(_N, "MigrationTaskSummary", "Status"),
            type = "string",
            name = "Status",
            target_id = prelude.String.id,
        }),
        ProgressPercent = schema.new({
            id = id.from(_N, "MigrationTaskSummary", "ProgressPercent"),
            type = "integer",
            name = "ProgressPercent",
            target_id = prelude.Integer.id,
        }),
        StatusDetail = schema.new({
            id = id.from(_N, "MigrationTaskSummary", "StatusDetail"),
            type = "string",
            name = "StatusDetail",
            target_id = prelude.String.id,
        }),
        UpdateDateTime = schema.new({
            id = id.from(_N, "MigrationTaskSummary", "UpdateDateTime"),
            type = "timestamp",
            name = "UpdateDateTime",
            target_id = prelude.Timestamp.id,
        }),
    },
})

M.ListMigrationTasksOutput = schema.new({
    id = id.from(_N, "ListMigrationTasksOutput"),
    type = "structure",
    members = {
        NextToken = schema.new({
            id = id.from(_N, "ListMigrationTasksOutput", "NextToken"),
            type = "string",
            name = "NextToken",
            target_id = prelude.String.id,
        }),
        MigrationTaskSummaryList = schema.new({
            id = id.from(_N, "ListMigrationTasksOutput", "MigrationTaskSummaryList"),
            type = "list",
            name = "MigrationTaskSummaryList",
            target_id = prelude.Document.id,
            list_member = M.MigrationTaskSummary,
        }),
    },
})

M.ListMigrationTaskUpdatesInput = schema.new({
    id = id.from(_N, "ListMigrationTaskUpdatesInput"),
    type = "structure",
    members = {
        ProgressUpdateStream = schema.new({
            id = id.from(_N, "ListMigrationTaskUpdatesInput", "ProgressUpdateStream"),
            type = "string",
            name = "ProgressUpdateStream",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        MigrationTaskName = schema.new({
            id = id.from(_N, "ListMigrationTaskUpdatesInput", "MigrationTaskName"),
            type = "string",
            name = "MigrationTaskName",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        NextToken = schema.new({
            id = id.from(_N, "ListMigrationTaskUpdatesInput", "NextToken"),
            type = "string",
            name = "NextToken",
            target_id = prelude.String.id,
        }),
        MaxResults = schema.new({
            id = id.from(_N, "ListMigrationTaskUpdatesInput", "MaxResults"),
            type = "integer",
            name = "MaxResults",
            target_id = prelude.Integer.id,
        }),
    },
})

M.MigrationTaskUpdate = schema.new({
    id = id.from(_N, "MigrationTaskUpdate"),
    type = "structure",
    members = {
        UpdateDateTime = schema.new({
            id = id.from(_N, "MigrationTaskUpdate", "UpdateDateTime"),
            type = "timestamp",
            name = "UpdateDateTime",
            target_id = prelude.Timestamp.id,
        }),
        UpdateType = schema.new({
            id = id.from(_N, "MigrationTaskUpdate", "UpdateType"),
            type = "string",
            name = "UpdateType",
            target_id = prelude.String.id,
        }),
        MigrationTaskState = schema.new({
            id = id.from(_N, "MigrationTaskUpdate", "MigrationTaskState"),
            type = "structure",
            name = "MigrationTaskState",
            target_id = id.from(_N, "Task"),
            target = M.Task,
        }),
    },
})

M.ListMigrationTaskUpdatesOutput = schema.new({
    id = id.from(_N, "ListMigrationTaskUpdatesOutput"),
    type = "structure",
    members = {
        NextToken = schema.new({
            id = id.from(_N, "ListMigrationTaskUpdatesOutput", "NextToken"),
            type = "string",
            name = "NextToken",
            target_id = prelude.String.id,
        }),
        MigrationTaskUpdateList = schema.new({
            id = id.from(_N, "ListMigrationTaskUpdatesOutput", "MigrationTaskUpdateList"),
            type = "list",
            name = "MigrationTaskUpdateList",
            target_id = prelude.Document.id,
            list_member = M.MigrationTaskUpdate,
        }),
    },
})

M.ListProgressUpdateStreamsInput = schema.new({
    id = id.from(_N, "ListProgressUpdateStreamsInput"),
    type = "structure",
    members = {
        NextToken = schema.new({
            id = id.from(_N, "ListProgressUpdateStreamsInput", "NextToken"),
            type = "string",
            name = "NextToken",
            target_id = prelude.String.id,
        }),
        MaxResults = schema.new({
            id = id.from(_N, "ListProgressUpdateStreamsInput", "MaxResults"),
            type = "integer",
            name = "MaxResults",
            target_id = prelude.Integer.id,
        }),
    },
})

M.ProgressUpdateStreamSummary = schema.new({
    id = id.from(_N, "ProgressUpdateStreamSummary"),
    type = "structure",
    members = {
        ProgressUpdateStreamName = schema.new({
            id = id.from(_N, "ProgressUpdateStreamSummary", "ProgressUpdateStreamName"),
            type = "string",
            name = "ProgressUpdateStreamName",
            target_id = prelude.String.id,
        }),
    },
})

M.ListProgressUpdateStreamsOutput = schema.new({
    id = id.from(_N, "ListProgressUpdateStreamsOutput"),
    type = "structure",
    members = {
        ProgressUpdateStreamSummaryList = schema.new({
            id = id.from(_N, "ListProgressUpdateStreamsOutput", "ProgressUpdateStreamSummaryList"),
            type = "list",
            name = "ProgressUpdateStreamSummaryList",
            target_id = prelude.Document.id,
            list_member = M.ProgressUpdateStreamSummary,
        }),
        NextToken = schema.new({
            id = id.from(_N, "ListProgressUpdateStreamsOutput", "NextToken"),
            type = "string",
            name = "NextToken",
            target_id = prelude.String.id,
        }),
    },
})

M.ListSourceResourcesInput = schema.new({
    id = id.from(_N, "ListSourceResourcesInput"),
    type = "structure",
    members = {
        ProgressUpdateStream = schema.new({
            id = id.from(_N, "ListSourceResourcesInput", "ProgressUpdateStream"),
            type = "string",
            name = "ProgressUpdateStream",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        MigrationTaskName = schema.new({
            id = id.from(_N, "ListSourceResourcesInput", "MigrationTaskName"),
            type = "string",
            name = "MigrationTaskName",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        NextToken = schema.new({
            id = id.from(_N, "ListSourceResourcesInput", "NextToken"),
            type = "string",
            name = "NextToken",
            target_id = prelude.String.id,
        }),
        MaxResults = schema.new({
            id = id.from(_N, "ListSourceResourcesInput", "MaxResults"),
            type = "integer",
            name = "MaxResults",
            target_id = prelude.Integer.id,
        }),
    },
})

M.ListSourceResourcesOutput = schema.new({
    id = id.from(_N, "ListSourceResourcesOutput"),
    type = "structure",
    members = {
        NextToken = schema.new({
            id = id.from(_N, "ListSourceResourcesOutput", "NextToken"),
            type = "string",
            name = "NextToken",
            target_id = prelude.String.id,
        }),
        SourceResourceList = schema.new({
            id = id.from(_N, "ListSourceResourcesOutput", "SourceResourceList"),
            type = "list",
            name = "SourceResourceList",
            target_id = prelude.Document.id,
            list_member = M.SourceResource,
        }),
    },
})

M.NotifyApplicationStateInput = schema.new({
    id = id.from(_N, "NotifyApplicationStateInput"),
    type = "structure",
    members = {
        ApplicationId = schema.new({
            id = id.from(_N, "NotifyApplicationStateInput", "ApplicationId"),
            type = "string",
            name = "ApplicationId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        Status = schema.new({
            id = id.from(_N, "NotifyApplicationStateInput", "Status"),
            type = "string",
            name = "Status",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        UpdateDateTime = schema.new({
            id = id.from(_N, "NotifyApplicationStateInput", "UpdateDateTime"),
            type = "timestamp",
            name = "UpdateDateTime",
            target_id = prelude.Timestamp.id,
        }),
        DryRun = schema.new({
            id = id.from(_N, "NotifyApplicationStateInput", "DryRun"),
            type = "boolean",
            name = "DryRun",
            target_id = prelude.Boolean.id,
            traits = {
                [traits.DEFAULT] = { value = false },
            },
        }),
    },
})

M.NotifyApplicationStateOutput = schema.new({
    id = id.from(_N, "NotifyApplicationStateOutput"),
    type = "structure",
})

M.NotifyMigrationTaskStateInput = schema.new({
    id = id.from(_N, "NotifyMigrationTaskStateInput"),
    type = "structure",
    members = {
        ProgressUpdateStream = schema.new({
            id = id.from(_N, "NotifyMigrationTaskStateInput", "ProgressUpdateStream"),
            type = "string",
            name = "ProgressUpdateStream",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        MigrationTaskName = schema.new({
            id = id.from(_N, "NotifyMigrationTaskStateInput", "MigrationTaskName"),
            type = "string",
            name = "MigrationTaskName",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        Task = schema.new({
            id = id.from(_N, "NotifyMigrationTaskStateInput", "Task"),
            type = "structure",
            name = "Task",
            target_id = id.from(_N, "Task"),
            target = M.Task,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        UpdateDateTime = schema.new({
            id = id.from(_N, "NotifyMigrationTaskStateInput", "UpdateDateTime"),
            type = "timestamp",
            name = "UpdateDateTime",
            target_id = prelude.Timestamp.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        NextUpdateSeconds = schema.new({
            id = id.from(_N, "NotifyMigrationTaskStateInput", "NextUpdateSeconds"),
            type = "integer",
            name = "NextUpdateSeconds",
            target_id = prelude.Integer.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.DEFAULT] = { value = 0 },
            },
        }),
        DryRun = schema.new({
            id = id.from(_N, "NotifyMigrationTaskStateInput", "DryRun"),
            type = "boolean",
            name = "DryRun",
            target_id = prelude.Boolean.id,
            traits = {
                [traits.DEFAULT] = { value = false },
            },
        }),
    },
})

M.NotifyMigrationTaskStateOutput = schema.new({
    id = id.from(_N, "NotifyMigrationTaskStateOutput"),
    type = "structure",
})

M.PutResourceAttributesInput = schema.new({
    id = id.from(_N, "PutResourceAttributesInput"),
    type = "structure",
    members = {
        ProgressUpdateStream = schema.new({
            id = id.from(_N, "PutResourceAttributesInput", "ProgressUpdateStream"),
            type = "string",
            name = "ProgressUpdateStream",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        MigrationTaskName = schema.new({
            id = id.from(_N, "PutResourceAttributesInput", "MigrationTaskName"),
            type = "string",
            name = "MigrationTaskName",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        ResourceAttributeList = schema.new({
            id = id.from(_N, "PutResourceAttributesInput", "ResourceAttributeList"),
            type = "list",
            name = "ResourceAttributeList",
            target_id = prelude.Document.id,
            list_member = M.ResourceAttribute,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        DryRun = schema.new({
            id = id.from(_N, "PutResourceAttributesInput", "DryRun"),
            type = "boolean",
            name = "DryRun",
            target_id = prelude.Boolean.id,
            traits = {
                [traits.DEFAULT] = { value = false },
            },
        }),
    },
})

M.PutResourceAttributesOutput = schema.new({
    id = id.from(_N, "PutResourceAttributesOutput"),
    type = "structure",
})

return M
