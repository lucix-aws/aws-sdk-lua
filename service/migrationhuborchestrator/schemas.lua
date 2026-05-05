local id = require("smithy.shape_id")
local schema = require("smithy.schema")
local prelude = require("smithy.prelude")
local traits = require("smithy.traits")

local _N = "com.amazonaws.migrationhuborchestrator"

local M = {}

M.AccessDeniedException = schema.new({
    id = id.from(_N, "AccessDeniedException"),
    type = "structure",
    traits = {
        [traits.ERROR] = { value = "client" },
    },
    members = {
        message = schema.new({
            id = id.from(_N, "AccessDeniedException", "message"),
            type = "string",
            name = "message",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.ListTagsForResourceInput = schema.new({
    id = id.from(_N, "ListTagsForResourceInput"),
    type = "structure",
    members = {
        resourceArn = schema.new({
            id = id.from(_N, "ListTagsForResourceInput", "resourceArn"),
            type = "string",
            name = "resourceArn",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
    },
})

M.ListTagsForResourceOutput = schema.new({
    id = id.from(_N, "ListTagsForResourceOutput"),
    type = "structure",
    members = {
        tags = schema.new({
            id = id.from(_N, "ListTagsForResourceOutput", "tags"),
            type = "map",
            name = "tags",
            target_id = prelude.Document.id,
            map_key = prelude.String,
            map_value = prelude.String,
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
        message = schema.new({
            id = id.from(_N, "ResourceNotFoundException", "message"),
            type = "string",
            name = "message",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.ValidationException = schema.new({
    id = id.from(_N, "ValidationException"),
    type = "structure",
    traits = {
        [traits.ERROR] = { value = "client" },
    },
    members = {
        message = schema.new({
            id = id.from(_N, "ValidationException", "message"),
            type = "string",
            name = "message",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.StepInput = schema.new({
    id = id.from(_N, "StepInput"),
    type = "union",
    members = {
        integerValue = schema.new({
            id = id.from(_N, "StepInput", "integerValue"),
            type = "integer",
            name = "integerValue",
            target_id = prelude.Integer.id,
        }),
        stringValue = schema.new({
            id = id.from(_N, "StepInput", "stringValue"),
            type = "string",
            name = "stringValue",
            target_id = prelude.String.id,
        }),
        listOfStringsValue = schema.new({
            id = id.from(_N, "StepInput", "listOfStringsValue"),
            type = "list",
            name = "listOfStringsValue",
            target_id = prelude.Document.id,
            list_member = prelude.String,
        }),
        mapOfStringValue = schema.new({
            id = id.from(_N, "StepInput", "mapOfStringValue"),
            type = "map",
            name = "mapOfStringValue",
            target_id = prelude.Document.id,
            map_key = prelude.String,
            map_value = prelude.String,
        }),
    },
})

M.CreateWorkflowInput = schema.new({
    id = id.from(_N, "CreateWorkflowInput"),
    type = "structure",
    members = {
        name = schema.new({
            id = id.from(_N, "CreateWorkflowInput", "name"),
            type = "string",
            name = "name",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        description = schema.new({
            id = id.from(_N, "CreateWorkflowInput", "description"),
            type = "string",
            name = "description",
            target_id = prelude.String.id,
        }),
        templateId = schema.new({
            id = id.from(_N, "CreateWorkflowInput", "templateId"),
            type = "string",
            name = "templateId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        applicationConfigurationId = schema.new({
            id = id.from(_N, "CreateWorkflowInput", "applicationConfigurationId"),
            type = "string",
            name = "applicationConfigurationId",
            target_id = prelude.String.id,
        }),
        inputParameters = schema.new({
            id = id.from(_N, "CreateWorkflowInput", "inputParameters"),
            type = "map",
            name = "inputParameters",
            target_id = prelude.Document.id,
            map_key = prelude.String,
            map_value = M.StepInput,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        stepTargets = schema.new({
            id = id.from(_N, "CreateWorkflowInput", "stepTargets"),
            type = "list",
            name = "stepTargets",
            target_id = prelude.Document.id,
            list_member = prelude.String,
        }),
        tags = schema.new({
            id = id.from(_N, "CreateWorkflowInput", "tags"),
            type = "map",
            name = "tags",
            target_id = prelude.Document.id,
            map_key = prelude.String,
            map_value = prelude.String,
        }),
    },
})

M.CreateWorkflowOutput = schema.new({
    id = id.from(_N, "CreateWorkflowOutput"),
    type = "structure",
    members = {
        id = schema.new({
            id = id.from(_N, "CreateWorkflowOutput", "id"),
            type = "string",
            name = "id",
            target_id = prelude.String.id,
        }),
        arn = schema.new({
            id = id.from(_N, "CreateWorkflowOutput", "arn"),
            type = "string",
            name = "arn",
            target_id = prelude.String.id,
        }),
        name = schema.new({
            id = id.from(_N, "CreateWorkflowOutput", "name"),
            type = "string",
            name = "name",
            target_id = prelude.String.id,
        }),
        description = schema.new({
            id = id.from(_N, "CreateWorkflowOutput", "description"),
            type = "string",
            name = "description",
            target_id = prelude.String.id,
        }),
        templateId = schema.new({
            id = id.from(_N, "CreateWorkflowOutput", "templateId"),
            type = "string",
            name = "templateId",
            target_id = prelude.String.id,
        }),
        adsApplicationConfigurationId = schema.new({
            id = id.from(_N, "CreateWorkflowOutput", "adsApplicationConfigurationId"),
            type = "string",
            name = "adsApplicationConfigurationId",
            target_id = prelude.String.id,
        }),
        workflowInputs = schema.new({
            id = id.from(_N, "CreateWorkflowOutput", "workflowInputs"),
            type = "map",
            name = "workflowInputs",
            target_id = prelude.Document.id,
            map_key = prelude.String,
            map_value = M.StepInput,
        }),
        stepTargets = schema.new({
            id = id.from(_N, "CreateWorkflowOutput", "stepTargets"),
            type = "list",
            name = "stepTargets",
            target_id = prelude.Document.id,
            list_member = prelude.String,
        }),
        status = schema.new({
            id = id.from(_N, "CreateWorkflowOutput", "status"),
            type = "string",
            name = "status",
            target_id = prelude.String.id,
        }),
        creationTime = schema.new({
            id = id.from(_N, "CreateWorkflowOutput", "creationTime"),
            type = "timestamp",
            name = "creationTime",
            target_id = prelude.Timestamp.id,
        }),
        tags = schema.new({
            id = id.from(_N, "CreateWorkflowOutput", "tags"),
            type = "map",
            name = "tags",
            target_id = prelude.Document.id,
            map_key = prelude.String,
            map_value = prelude.String,
        }),
    },
})

M.InternalServerException = schema.new({
    id = id.from(_N, "InternalServerException"),
    type = "structure",
    traits = {
        [traits.ERROR] = { value = "server" },
    },
    members = {
        message = schema.new({
            id = id.from(_N, "InternalServerException", "message"),
            type = "string",
            name = "message",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
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
        message = schema.new({
            id = id.from(_N, "ThrottlingException", "message"),
            type = "string",
            name = "message",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.DeleteWorkflowInput = schema.new({
    id = id.from(_N, "DeleteWorkflowInput"),
    type = "structure",
    members = {
        id = schema.new({
            id = id.from(_N, "DeleteWorkflowInput", "id"),
            type = "string",
            name = "id",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
    },
})

M.DeleteWorkflowOutput = schema.new({
    id = id.from(_N, "DeleteWorkflowOutput"),
    type = "structure",
    members = {
        id = schema.new({
            id = id.from(_N, "DeleteWorkflowOutput", "id"),
            type = "string",
            name = "id",
            target_id = prelude.String.id,
        }),
        arn = schema.new({
            id = id.from(_N, "DeleteWorkflowOutput", "arn"),
            type = "string",
            name = "arn",
            target_id = prelude.String.id,
        }),
        status = schema.new({
            id = id.from(_N, "DeleteWorkflowOutput", "status"),
            type = "string",
            name = "status",
            target_id = prelude.String.id,
        }),
    },
})

M.GetWorkflowInput = schema.new({
    id = id.from(_N, "GetWorkflowInput"),
    type = "structure",
    members = {
        id = schema.new({
            id = id.from(_N, "GetWorkflowInput", "id"),
            type = "string",
            name = "id",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
    },
})

M.Tool = schema.new({
    id = id.from(_N, "Tool"),
    type = "structure",
    members = {
        name = schema.new({
            id = id.from(_N, "Tool", "name"),
            type = "string",
            name = "name",
            target_id = prelude.String.id,
        }),
        url = schema.new({
            id = id.from(_N, "Tool", "url"),
            type = "string",
            name = "url",
            target_id = prelude.String.id,
        }),
    },
})

M.GetWorkflowOutput = schema.new({
    id = id.from(_N, "GetWorkflowOutput"),
    type = "structure",
    members = {
        id = schema.new({
            id = id.from(_N, "GetWorkflowOutput", "id"),
            type = "string",
            name = "id",
            target_id = prelude.String.id,
        }),
        arn = schema.new({
            id = id.from(_N, "GetWorkflowOutput", "arn"),
            type = "string",
            name = "arn",
            target_id = prelude.String.id,
        }),
        name = schema.new({
            id = id.from(_N, "GetWorkflowOutput", "name"),
            type = "string",
            name = "name",
            target_id = prelude.String.id,
        }),
        description = schema.new({
            id = id.from(_N, "GetWorkflowOutput", "description"),
            type = "string",
            name = "description",
            target_id = prelude.String.id,
        }),
        templateId = schema.new({
            id = id.from(_N, "GetWorkflowOutput", "templateId"),
            type = "string",
            name = "templateId",
            target_id = prelude.String.id,
        }),
        adsApplicationConfigurationId = schema.new({
            id = id.from(_N, "GetWorkflowOutput", "adsApplicationConfigurationId"),
            type = "string",
            name = "adsApplicationConfigurationId",
            target_id = prelude.String.id,
        }),
        adsApplicationName = schema.new({
            id = id.from(_N, "GetWorkflowOutput", "adsApplicationName"),
            type = "string",
            name = "adsApplicationName",
            target_id = prelude.String.id,
        }),
        status = schema.new({
            id = id.from(_N, "GetWorkflowOutput", "status"),
            type = "string",
            name = "status",
            target_id = prelude.String.id,
        }),
        statusMessage = schema.new({
            id = id.from(_N, "GetWorkflowOutput", "statusMessage"),
            type = "string",
            name = "statusMessage",
            target_id = prelude.String.id,
        }),
        creationTime = schema.new({
            id = id.from(_N, "GetWorkflowOutput", "creationTime"),
            type = "timestamp",
            name = "creationTime",
            target_id = prelude.Timestamp.id,
        }),
        lastStartTime = schema.new({
            id = id.from(_N, "GetWorkflowOutput", "lastStartTime"),
            type = "timestamp",
            name = "lastStartTime",
            target_id = prelude.Timestamp.id,
        }),
        lastStopTime = schema.new({
            id = id.from(_N, "GetWorkflowOutput", "lastStopTime"),
            type = "timestamp",
            name = "lastStopTime",
            target_id = prelude.Timestamp.id,
        }),
        lastModifiedTime = schema.new({
            id = id.from(_N, "GetWorkflowOutput", "lastModifiedTime"),
            type = "timestamp",
            name = "lastModifiedTime",
            target_id = prelude.Timestamp.id,
        }),
        endTime = schema.new({
            id = id.from(_N, "GetWorkflowOutput", "endTime"),
            type = "timestamp",
            name = "endTime",
            target_id = prelude.Timestamp.id,
        }),
        tools = schema.new({
            id = id.from(_N, "GetWorkflowOutput", "tools"),
            type = "list",
            name = "tools",
            target_id = prelude.Document.id,
            list_member = M.Tool,
        }),
        totalSteps = schema.new({
            id = id.from(_N, "GetWorkflowOutput", "totalSteps"),
            type = "integer",
            name = "totalSteps",
            target_id = prelude.Integer.id,
        }),
        completedSteps = schema.new({
            id = id.from(_N, "GetWorkflowOutput", "completedSteps"),
            type = "integer",
            name = "completedSteps",
            target_id = prelude.Integer.id,
        }),
        workflowInputs = schema.new({
            id = id.from(_N, "GetWorkflowOutput", "workflowInputs"),
            type = "map",
            name = "workflowInputs",
            target_id = prelude.Document.id,
            map_key = prelude.String,
            map_value = M.StepInput,
        }),
        tags = schema.new({
            id = id.from(_N, "GetWorkflowOutput", "tags"),
            type = "map",
            name = "tags",
            target_id = prelude.Document.id,
            map_key = prelude.String,
            map_value = prelude.String,
        }),
        workflowBucket = schema.new({
            id = id.from(_N, "GetWorkflowOutput", "workflowBucket"),
            type = "string",
            name = "workflowBucket",
            target_id = prelude.String.id,
        }),
    },
})

M.ListWorkflowsInput = schema.new({
    id = id.from(_N, "ListWorkflowsInput"),
    type = "structure",
    members = {
        maxResults = schema.new({
            id = id.from(_N, "ListWorkflowsInput", "maxResults"),
            type = "integer",
            name = "maxResults",
            target_id = prelude.Integer.id,
            traits = {
                [traits.DEFAULT] = { value = 0 },
                [traits.HTTP_QUERY] = { name = "maxResults" },
            },
        }),
        nextToken = schema.new({
            id = id.from(_N, "ListWorkflowsInput", "nextToken"),
            type = "string",
            name = "nextToken",
            target_id = prelude.String.id,
            traits = {
                [traits.HTTP_QUERY] = { name = "nextToken" },
            },
        }),
        templateId = schema.new({
            id = id.from(_N, "ListWorkflowsInput", "templateId"),
            type = "string",
            name = "templateId",
            target_id = prelude.String.id,
            traits = {
                [traits.HTTP_QUERY] = { name = "templateId" },
            },
        }),
        adsApplicationConfigurationName = schema.new({
            id = id.from(_N, "ListWorkflowsInput", "adsApplicationConfigurationName"),
            type = "string",
            name = "adsApplicationConfigurationName",
            target_id = prelude.String.id,
            traits = {
                [traits.HTTP_QUERY] = { name = "adsApplicationConfigurationName" },
            },
        }),
        status = schema.new({
            id = id.from(_N, "ListWorkflowsInput", "status"),
            type = "string",
            name = "status",
            target_id = prelude.String.id,
            traits = {
                [traits.HTTP_QUERY] = { name = "status" },
            },
        }),
        name = schema.new({
            id = id.from(_N, "ListWorkflowsInput", "name"),
            type = "string",
            name = "name",
            target_id = prelude.String.id,
            traits = {
                [traits.HTTP_QUERY] = { name = "name" },
            },
        }),
    },
})

M.MigrationWorkflowSummary = schema.new({
    id = id.from(_N, "MigrationWorkflowSummary"),
    type = "structure",
    members = {
        id = schema.new({
            id = id.from(_N, "MigrationWorkflowSummary", "id"),
            type = "string",
            name = "id",
            target_id = prelude.String.id,
        }),
        name = schema.new({
            id = id.from(_N, "MigrationWorkflowSummary", "name"),
            type = "string",
            name = "name",
            target_id = prelude.String.id,
        }),
        templateId = schema.new({
            id = id.from(_N, "MigrationWorkflowSummary", "templateId"),
            type = "string",
            name = "templateId",
            target_id = prelude.String.id,
        }),
        adsApplicationConfigurationName = schema.new({
            id = id.from(_N, "MigrationWorkflowSummary", "adsApplicationConfigurationName"),
            type = "string",
            name = "adsApplicationConfigurationName",
            target_id = prelude.String.id,
        }),
        status = schema.new({
            id = id.from(_N, "MigrationWorkflowSummary", "status"),
            type = "string",
            name = "status",
            target_id = prelude.String.id,
        }),
        creationTime = schema.new({
            id = id.from(_N, "MigrationWorkflowSummary", "creationTime"),
            type = "timestamp",
            name = "creationTime",
            target_id = prelude.Timestamp.id,
        }),
        endTime = schema.new({
            id = id.from(_N, "MigrationWorkflowSummary", "endTime"),
            type = "timestamp",
            name = "endTime",
            target_id = prelude.Timestamp.id,
        }),
        statusMessage = schema.new({
            id = id.from(_N, "MigrationWorkflowSummary", "statusMessage"),
            type = "string",
            name = "statusMessage",
            target_id = prelude.String.id,
        }),
        completedSteps = schema.new({
            id = id.from(_N, "MigrationWorkflowSummary", "completedSteps"),
            type = "integer",
            name = "completedSteps",
            target_id = prelude.Integer.id,
        }),
        totalSteps = schema.new({
            id = id.from(_N, "MigrationWorkflowSummary", "totalSteps"),
            type = "integer",
            name = "totalSteps",
            target_id = prelude.Integer.id,
        }),
    },
})

M.ListWorkflowsOutput = schema.new({
    id = id.from(_N, "ListWorkflowsOutput"),
    type = "structure",
    members = {
        nextToken = schema.new({
            id = id.from(_N, "ListWorkflowsOutput", "nextToken"),
            type = "string",
            name = "nextToken",
            target_id = prelude.String.id,
        }),
        migrationWorkflowSummary = schema.new({
            id = id.from(_N, "ListWorkflowsOutput", "migrationWorkflowSummary"),
            type = "list",
            name = "migrationWorkflowSummary",
            target_id = prelude.Document.id,
            list_member = M.MigrationWorkflowSummary,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.StartWorkflowInput = schema.new({
    id = id.from(_N, "StartWorkflowInput"),
    type = "structure",
    members = {
        id = schema.new({
            id = id.from(_N, "StartWorkflowInput", "id"),
            type = "string",
            name = "id",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
    },
})

M.StartWorkflowOutput = schema.new({
    id = id.from(_N, "StartWorkflowOutput"),
    type = "structure",
    members = {
        id = schema.new({
            id = id.from(_N, "StartWorkflowOutput", "id"),
            type = "string",
            name = "id",
            target_id = prelude.String.id,
        }),
        arn = schema.new({
            id = id.from(_N, "StartWorkflowOutput", "arn"),
            type = "string",
            name = "arn",
            target_id = prelude.String.id,
        }),
        status = schema.new({
            id = id.from(_N, "StartWorkflowOutput", "status"),
            type = "string",
            name = "status",
            target_id = prelude.String.id,
        }),
        statusMessage = schema.new({
            id = id.from(_N, "StartWorkflowOutput", "statusMessage"),
            type = "string",
            name = "statusMessage",
            target_id = prelude.String.id,
        }),
        lastStartTime = schema.new({
            id = id.from(_N, "StartWorkflowOutput", "lastStartTime"),
            type = "timestamp",
            name = "lastStartTime",
            target_id = prelude.Timestamp.id,
        }),
    },
})

M.StopWorkflowInput = schema.new({
    id = id.from(_N, "StopWorkflowInput"),
    type = "structure",
    members = {
        id = schema.new({
            id = id.from(_N, "StopWorkflowInput", "id"),
            type = "string",
            name = "id",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
    },
})

M.StopWorkflowOutput = schema.new({
    id = id.from(_N, "StopWorkflowOutput"),
    type = "structure",
    members = {
        id = schema.new({
            id = id.from(_N, "StopWorkflowOutput", "id"),
            type = "string",
            name = "id",
            target_id = prelude.String.id,
        }),
        arn = schema.new({
            id = id.from(_N, "StopWorkflowOutput", "arn"),
            type = "string",
            name = "arn",
            target_id = prelude.String.id,
        }),
        status = schema.new({
            id = id.from(_N, "StopWorkflowOutput", "status"),
            type = "string",
            name = "status",
            target_id = prelude.String.id,
        }),
        statusMessage = schema.new({
            id = id.from(_N, "StopWorkflowOutput", "statusMessage"),
            type = "string",
            name = "statusMessage",
            target_id = prelude.String.id,
        }),
        lastStopTime = schema.new({
            id = id.from(_N, "StopWorkflowOutput", "lastStopTime"),
            type = "timestamp",
            name = "lastStopTime",
            target_id = prelude.Timestamp.id,
        }),
    },
})

M.UpdateWorkflowInput = schema.new({
    id = id.from(_N, "UpdateWorkflowInput"),
    type = "structure",
    members = {
        id = schema.new({
            id = id.from(_N, "UpdateWorkflowInput", "id"),
            type = "string",
            name = "id",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
        name = schema.new({
            id = id.from(_N, "UpdateWorkflowInput", "name"),
            type = "string",
            name = "name",
            target_id = prelude.String.id,
        }),
        description = schema.new({
            id = id.from(_N, "UpdateWorkflowInput", "description"),
            type = "string",
            name = "description",
            target_id = prelude.String.id,
        }),
        inputParameters = schema.new({
            id = id.from(_N, "UpdateWorkflowInput", "inputParameters"),
            type = "map",
            name = "inputParameters",
            target_id = prelude.Document.id,
            map_key = prelude.String,
            map_value = M.StepInput,
        }),
        stepTargets = schema.new({
            id = id.from(_N, "UpdateWorkflowInput", "stepTargets"),
            type = "list",
            name = "stepTargets",
            target_id = prelude.Document.id,
            list_member = prelude.String,
        }),
    },
})

M.UpdateWorkflowOutput = schema.new({
    id = id.from(_N, "UpdateWorkflowOutput"),
    type = "structure",
    members = {
        id = schema.new({
            id = id.from(_N, "UpdateWorkflowOutput", "id"),
            type = "string",
            name = "id",
            target_id = prelude.String.id,
        }),
        arn = schema.new({
            id = id.from(_N, "UpdateWorkflowOutput", "arn"),
            type = "string",
            name = "arn",
            target_id = prelude.String.id,
        }),
        name = schema.new({
            id = id.from(_N, "UpdateWorkflowOutput", "name"),
            type = "string",
            name = "name",
            target_id = prelude.String.id,
        }),
        description = schema.new({
            id = id.from(_N, "UpdateWorkflowOutput", "description"),
            type = "string",
            name = "description",
            target_id = prelude.String.id,
        }),
        templateId = schema.new({
            id = id.from(_N, "UpdateWorkflowOutput", "templateId"),
            type = "string",
            name = "templateId",
            target_id = prelude.String.id,
        }),
        adsApplicationConfigurationId = schema.new({
            id = id.from(_N, "UpdateWorkflowOutput", "adsApplicationConfigurationId"),
            type = "string",
            name = "adsApplicationConfigurationId",
            target_id = prelude.String.id,
        }),
        workflowInputs = schema.new({
            id = id.from(_N, "UpdateWorkflowOutput", "workflowInputs"),
            type = "map",
            name = "workflowInputs",
            target_id = prelude.Document.id,
            map_key = prelude.String,
            map_value = M.StepInput,
        }),
        stepTargets = schema.new({
            id = id.from(_N, "UpdateWorkflowOutput", "stepTargets"),
            type = "list",
            name = "stepTargets",
            target_id = prelude.Document.id,
            list_member = prelude.String,
        }),
        status = schema.new({
            id = id.from(_N, "UpdateWorkflowOutput", "status"),
            type = "string",
            name = "status",
            target_id = prelude.String.id,
        }),
        creationTime = schema.new({
            id = id.from(_N, "UpdateWorkflowOutput", "creationTime"),
            type = "timestamp",
            name = "creationTime",
            target_id = prelude.Timestamp.id,
        }),
        lastModifiedTime = schema.new({
            id = id.from(_N, "UpdateWorkflowOutput", "lastModifiedTime"),
            type = "timestamp",
            name = "lastModifiedTime",
            target_id = prelude.Timestamp.id,
        }),
        tags = schema.new({
            id = id.from(_N, "UpdateWorkflowOutput", "tags"),
            type = "map",
            name = "tags",
            target_id = prelude.Document.id,
            map_key = prelude.String,
            map_value = prelude.String,
        }),
    },
})

M.ConflictException = schema.new({
    id = id.from(_N, "ConflictException"),
    type = "structure",
    traits = {
        [traits.ERROR] = { value = "client" },
    },
    members = {
        message = schema.new({
            id = id.from(_N, "ConflictException", "message"),
            type = "string",
            name = "message",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.TemplateSource = schema.new({
    id = id.from(_N, "TemplateSource"),
    type = "union",
    members = {
        workflowId = schema.new({
            id = id.from(_N, "TemplateSource", "workflowId"),
            type = "string",
            name = "workflowId",
            target_id = prelude.String.id,
        }),
    },
})

M.CreateTemplateInput = schema.new({
    id = id.from(_N, "CreateTemplateInput"),
    type = "structure",
    members = {
        templateName = schema.new({
            id = id.from(_N, "CreateTemplateInput", "templateName"),
            type = "string",
            name = "templateName",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        templateDescription = schema.new({
            id = id.from(_N, "CreateTemplateInput", "templateDescription"),
            type = "string",
            name = "templateDescription",
            target_id = prelude.String.id,
        }),
        templateSource = schema.new({
            id = id.from(_N, "CreateTemplateInput", "templateSource"),
            type = "union",
            name = "templateSource",
            target_id = id.from(_N, "TemplateSource"),
            target = M.TemplateSource,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        clientToken = schema.new({
            id = id.from(_N, "CreateTemplateInput", "clientToken"),
            type = "string",
            name = "clientToken",
            target_id = prelude.String.id,
            traits = {
                [traits.IDEMPOTENCY_TOKEN] = {},
            },
        }),
        tags = schema.new({
            id = id.from(_N, "CreateTemplateInput", "tags"),
            type = "map",
            name = "tags",
            target_id = prelude.Document.id,
            map_key = prelude.String,
            map_value = prelude.String,
        }),
    },
})

M.CreateTemplateOutput = schema.new({
    id = id.from(_N, "CreateTemplateOutput"),
    type = "structure",
    members = {
        templateId = schema.new({
            id = id.from(_N, "CreateTemplateOutput", "templateId"),
            type = "string",
            name = "templateId",
            target_id = prelude.String.id,
        }),
        templateArn = schema.new({
            id = id.from(_N, "CreateTemplateOutput", "templateArn"),
            type = "string",
            name = "templateArn",
            target_id = prelude.String.id,
        }),
        tags = schema.new({
            id = id.from(_N, "CreateTemplateOutput", "tags"),
            type = "map",
            name = "tags",
            target_id = prelude.Document.id,
            map_key = prelude.String,
            map_value = prelude.String,
        }),
    },
})

M.DeleteTemplateInput = schema.new({
    id = id.from(_N, "DeleteTemplateInput"),
    type = "structure",
    members = {
        id = schema.new({
            id = id.from(_N, "DeleteTemplateInput", "id"),
            type = "string",
            name = "id",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
    },
})

M.DeleteTemplateOutput = schema.new({
    id = id.from(_N, "DeleteTemplateOutput"),
    type = "structure",
})

M.GetTemplateInput = schema.new({
    id = id.from(_N, "GetTemplateInput"),
    type = "structure",
    members = {
        id = schema.new({
            id = id.from(_N, "GetTemplateInput", "id"),
            type = "string",
            name = "id",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
    },
})

M.TemplateInput = schema.new({
    id = id.from(_N, "TemplateInput"),
    type = "structure",
    members = {
        inputName = schema.new({
            id = id.from(_N, "TemplateInput", "inputName"),
            type = "string",
            name = "inputName",
            target_id = prelude.String.id,
        }),
        dataType = schema.new({
            id = id.from(_N, "TemplateInput", "dataType"),
            type = "string",
            name = "dataType",
            target_id = prelude.String.id,
        }),
        required = schema.new({
            id = id.from(_N, "TemplateInput", "required"),
            type = "boolean",
            name = "required",
            target_id = prelude.Boolean.id,
        }),
    },
})

M.GetTemplateOutput = schema.new({
    id = id.from(_N, "GetTemplateOutput"),
    type = "structure",
    members = {
        id = schema.new({
            id = id.from(_N, "GetTemplateOutput", "id"),
            type = "string",
            name = "id",
            target_id = prelude.String.id,
        }),
        templateArn = schema.new({
            id = id.from(_N, "GetTemplateOutput", "templateArn"),
            type = "string",
            name = "templateArn",
            target_id = prelude.String.id,
        }),
        name = schema.new({
            id = id.from(_N, "GetTemplateOutput", "name"),
            type = "string",
            name = "name",
            target_id = prelude.String.id,
        }),
        description = schema.new({
            id = id.from(_N, "GetTemplateOutput", "description"),
            type = "string",
            name = "description",
            target_id = prelude.String.id,
        }),
        inputs = schema.new({
            id = id.from(_N, "GetTemplateOutput", "inputs"),
            type = "list",
            name = "inputs",
            target_id = prelude.Document.id,
            list_member = M.TemplateInput,
        }),
        tools = schema.new({
            id = id.from(_N, "GetTemplateOutput", "tools"),
            type = "list",
            name = "tools",
            target_id = prelude.Document.id,
            list_member = M.Tool,
        }),
        creationTime = schema.new({
            id = id.from(_N, "GetTemplateOutput", "creationTime"),
            type = "timestamp",
            name = "creationTime",
            target_id = prelude.Timestamp.id,
        }),
        owner = schema.new({
            id = id.from(_N, "GetTemplateOutput", "owner"),
            type = "string",
            name = "owner",
            target_id = prelude.String.id,
        }),
        status = schema.new({
            id = id.from(_N, "GetTemplateOutput", "status"),
            type = "string",
            name = "status",
            target_id = prelude.String.id,
        }),
        statusMessage = schema.new({
            id = id.from(_N, "GetTemplateOutput", "statusMessage"),
            type = "string",
            name = "statusMessage",
            target_id = prelude.String.id,
        }),
        templateClass = schema.new({
            id = id.from(_N, "GetTemplateOutput", "templateClass"),
            type = "string",
            name = "templateClass",
            target_id = prelude.String.id,
        }),
        tags = schema.new({
            id = id.from(_N, "GetTemplateOutput", "tags"),
            type = "map",
            name = "tags",
            target_id = prelude.Document.id,
            map_key = prelude.String,
            map_value = prelude.String,
        }),
    },
})

M.ListTemplatesInput = schema.new({
    id = id.from(_N, "ListTemplatesInput"),
    type = "structure",
    members = {
        maxResults = schema.new({
            id = id.from(_N, "ListTemplatesInput", "maxResults"),
            type = "integer",
            name = "maxResults",
            target_id = prelude.Integer.id,
            traits = {
                [traits.DEFAULT] = { value = 0 },
                [traits.HTTP_QUERY] = { name = "maxResults" },
            },
        }),
        nextToken = schema.new({
            id = id.from(_N, "ListTemplatesInput", "nextToken"),
            type = "string",
            name = "nextToken",
            target_id = prelude.String.id,
            traits = {
                [traits.HTTP_QUERY] = { name = "nextToken" },
            },
        }),
        name = schema.new({
            id = id.from(_N, "ListTemplatesInput", "name"),
            type = "string",
            name = "name",
            target_id = prelude.String.id,
            traits = {
                [traits.HTTP_QUERY] = { name = "name" },
            },
        }),
    },
})

M.TemplateSummary = schema.new({
    id = id.from(_N, "TemplateSummary"),
    type = "structure",
    members = {
        id = schema.new({
            id = id.from(_N, "TemplateSummary", "id"),
            type = "string",
            name = "id",
            target_id = prelude.String.id,
        }),
        name = schema.new({
            id = id.from(_N, "TemplateSummary", "name"),
            type = "string",
            name = "name",
            target_id = prelude.String.id,
        }),
        arn = schema.new({
            id = id.from(_N, "TemplateSummary", "arn"),
            type = "string",
            name = "arn",
            target_id = prelude.String.id,
        }),
        description = schema.new({
            id = id.from(_N, "TemplateSummary", "description"),
            type = "string",
            name = "description",
            target_id = prelude.String.id,
        }),
    },
})

M.ListTemplatesOutput = schema.new({
    id = id.from(_N, "ListTemplatesOutput"),
    type = "structure",
    members = {
        nextToken = schema.new({
            id = id.from(_N, "ListTemplatesOutput", "nextToken"),
            type = "string",
            name = "nextToken",
            target_id = prelude.String.id,
        }),
        templateSummary = schema.new({
            id = id.from(_N, "ListTemplatesOutput", "templateSummary"),
            type = "list",
            name = "templateSummary",
            target_id = prelude.Document.id,
            list_member = M.TemplateSummary,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.UpdateTemplateInput = schema.new({
    id = id.from(_N, "UpdateTemplateInput"),
    type = "structure",
    members = {
        id = schema.new({
            id = id.from(_N, "UpdateTemplateInput", "id"),
            type = "string",
            name = "id",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
        templateName = schema.new({
            id = id.from(_N, "UpdateTemplateInput", "templateName"),
            type = "string",
            name = "templateName",
            target_id = prelude.String.id,
        }),
        templateDescription = schema.new({
            id = id.from(_N, "UpdateTemplateInput", "templateDescription"),
            type = "string",
            name = "templateDescription",
            target_id = prelude.String.id,
        }),
        clientToken = schema.new({
            id = id.from(_N, "UpdateTemplateInput", "clientToken"),
            type = "string",
            name = "clientToken",
            target_id = prelude.String.id,
            traits = {
                [traits.IDEMPOTENCY_TOKEN] = {},
            },
        }),
    },
})

M.UpdateTemplateOutput = schema.new({
    id = id.from(_N, "UpdateTemplateOutput"),
    type = "structure",
    members = {
        templateId = schema.new({
            id = id.from(_N, "UpdateTemplateOutput", "templateId"),
            type = "string",
            name = "templateId",
            target_id = prelude.String.id,
        }),
        templateArn = schema.new({
            id = id.from(_N, "UpdateTemplateOutput", "templateArn"),
            type = "string",
            name = "templateArn",
            target_id = prelude.String.id,
        }),
        tags = schema.new({
            id = id.from(_N, "UpdateTemplateOutput", "tags"),
            type = "map",
            name = "tags",
            target_id = prelude.Document.id,
            map_key = prelude.String,
            map_value = prelude.String,
        }),
    },
})

M.ListPluginsInput = schema.new({
    id = id.from(_N, "ListPluginsInput"),
    type = "structure",
    members = {
        maxResults = schema.new({
            id = id.from(_N, "ListPluginsInput", "maxResults"),
            type = "integer",
            name = "maxResults",
            target_id = prelude.Integer.id,
            traits = {
                [traits.DEFAULT] = { value = 0 },
                [traits.HTTP_QUERY] = { name = "maxResults" },
            },
        }),
        nextToken = schema.new({
            id = id.from(_N, "ListPluginsInput", "nextToken"),
            type = "string",
            name = "nextToken",
            target_id = prelude.String.id,
            traits = {
                [traits.HTTP_QUERY] = { name = "nextToken" },
            },
        }),
    },
})

M.PluginSummary = schema.new({
    id = id.from(_N, "PluginSummary"),
    type = "structure",
    members = {
        pluginId = schema.new({
            id = id.from(_N, "PluginSummary", "pluginId"),
            type = "string",
            name = "pluginId",
            target_id = prelude.String.id,
        }),
        hostname = schema.new({
            id = id.from(_N, "PluginSummary", "hostname"),
            type = "string",
            name = "hostname",
            target_id = prelude.String.id,
        }),
        status = schema.new({
            id = id.from(_N, "PluginSummary", "status"),
            type = "string",
            name = "status",
            target_id = prelude.String.id,
        }),
        ipAddress = schema.new({
            id = id.from(_N, "PluginSummary", "ipAddress"),
            type = "string",
            name = "ipAddress",
            target_id = prelude.String.id,
        }),
        version = schema.new({
            id = id.from(_N, "PluginSummary", "version"),
            type = "string",
            name = "version",
            target_id = prelude.String.id,
        }),
        registeredTime = schema.new({
            id = id.from(_N, "PluginSummary", "registeredTime"),
            type = "string",
            name = "registeredTime",
            target_id = prelude.String.id,
        }),
    },
})

M.ListPluginsOutput = schema.new({
    id = id.from(_N, "ListPluginsOutput"),
    type = "structure",
    members = {
        nextToken = schema.new({
            id = id.from(_N, "ListPluginsOutput", "nextToken"),
            type = "string",
            name = "nextToken",
            target_id = prelude.String.id,
        }),
        plugins = schema.new({
            id = id.from(_N, "ListPluginsOutput", "plugins"),
            type = "list",
            name = "plugins",
            target_id = prelude.Document.id,
            list_member = M.PluginSummary,
        }),
    },
})

M.TagResourceInput = schema.new({
    id = id.from(_N, "TagResourceInput"),
    type = "structure",
    members = {
        resourceArn = schema.new({
            id = id.from(_N, "TagResourceInput", "resourceArn"),
            type = "string",
            name = "resourceArn",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
        tags = schema.new({
            id = id.from(_N, "TagResourceInput", "tags"),
            type = "map",
            name = "tags",
            target_id = prelude.Document.id,
            map_key = prelude.String,
            map_value = prelude.String,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.TagResourceOutput = schema.new({
    id = id.from(_N, "TagResourceOutput"),
    type = "structure",
})

M.GetTemplateStepInput = schema.new({
    id = id.from(_N, "GetTemplateStepInput"),
    type = "structure",
    members = {
        id = schema.new({
            id = id.from(_N, "GetTemplateStepInput", "id"),
            type = "string",
            name = "id",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
        templateId = schema.new({
            id = id.from(_N, "GetTemplateStepInput", "templateId"),
            type = "string",
            name = "templateId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_QUERY] = { name = "templateId" },
            },
        }),
        stepGroupId = schema.new({
            id = id.from(_N, "GetTemplateStepInput", "stepGroupId"),
            type = "string",
            name = "stepGroupId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_QUERY] = { name = "stepGroupId" },
            },
        }),
    },
})

M.StepOutput = schema.new({
    id = id.from(_N, "StepOutput"),
    type = "structure",
    members = {
        name = schema.new({
            id = id.from(_N, "StepOutput", "name"),
            type = "string",
            name = "name",
            target_id = prelude.String.id,
        }),
        dataType = schema.new({
            id = id.from(_N, "StepOutput", "dataType"),
            type = "string",
            name = "dataType",
            target_id = prelude.String.id,
        }),
        required = schema.new({
            id = id.from(_N, "StepOutput", "required"),
            type = "boolean",
            name = "required",
            target_id = prelude.Boolean.id,
        }),
    },
})

M.PlatformCommand = schema.new({
    id = id.from(_N, "PlatformCommand"),
    type = "structure",
    members = {
        linux = schema.new({
            id = id.from(_N, "PlatformCommand", "linux"),
            type = "string",
            name = "linux",
            target_id = prelude.String.id,
        }),
        windows = schema.new({
            id = id.from(_N, "PlatformCommand", "windows"),
            type = "string",
            name = "windows",
            target_id = prelude.String.id,
        }),
    },
})

M.PlatformScriptKey = schema.new({
    id = id.from(_N, "PlatformScriptKey"),
    type = "structure",
    members = {
        linux = schema.new({
            id = id.from(_N, "PlatformScriptKey", "linux"),
            type = "string",
            name = "linux",
            target_id = prelude.String.id,
        }),
        windows = schema.new({
            id = id.from(_N, "PlatformScriptKey", "windows"),
            type = "string",
            name = "windows",
            target_id = prelude.String.id,
        }),
    },
})

M.StepAutomationConfiguration = schema.new({
    id = id.from(_N, "StepAutomationConfiguration"),
    type = "structure",
    members = {
        scriptLocationS3Bucket = schema.new({
            id = id.from(_N, "StepAutomationConfiguration", "scriptLocationS3Bucket"),
            type = "string",
            name = "scriptLocationS3Bucket",
            target_id = prelude.String.id,
        }),
        scriptLocationS3Key = schema.new({
            id = id.from(_N, "StepAutomationConfiguration", "scriptLocationS3Key"),
            type = "structure",
            name = "scriptLocationS3Key",
            target_id = id.from(_N, "PlatformScriptKey"),
            target = M.PlatformScriptKey,
        }),
        command = schema.new({
            id = id.from(_N, "StepAutomationConfiguration", "command"),
            type = "structure",
            name = "command",
            target_id = id.from(_N, "PlatformCommand"),
            target = M.PlatformCommand,
        }),
        runEnvironment = schema.new({
            id = id.from(_N, "StepAutomationConfiguration", "runEnvironment"),
            type = "string",
            name = "runEnvironment",
            target_id = prelude.String.id,
        }),
        targetType = schema.new({
            id = id.from(_N, "StepAutomationConfiguration", "targetType"),
            type = "string",
            name = "targetType",
            target_id = prelude.String.id,
        }),
    },
})

M.GetTemplateStepOutput = schema.new({
    id = id.from(_N, "GetTemplateStepOutput"),
    type = "structure",
    members = {
        id = schema.new({
            id = id.from(_N, "GetTemplateStepOutput", "id"),
            type = "string",
            name = "id",
            target_id = prelude.String.id,
        }),
        stepGroupId = schema.new({
            id = id.from(_N, "GetTemplateStepOutput", "stepGroupId"),
            type = "string",
            name = "stepGroupId",
            target_id = prelude.String.id,
        }),
        templateId = schema.new({
            id = id.from(_N, "GetTemplateStepOutput", "templateId"),
            type = "string",
            name = "templateId",
            target_id = prelude.String.id,
        }),
        name = schema.new({
            id = id.from(_N, "GetTemplateStepOutput", "name"),
            type = "string",
            name = "name",
            target_id = prelude.String.id,
        }),
        description = schema.new({
            id = id.from(_N, "GetTemplateStepOutput", "description"),
            type = "string",
            name = "description",
            target_id = prelude.String.id,
        }),
        stepActionType = schema.new({
            id = id.from(_N, "GetTemplateStepOutput", "stepActionType"),
            type = "string",
            name = "stepActionType",
            target_id = prelude.String.id,
        }),
        creationTime = schema.new({
            id = id.from(_N, "GetTemplateStepOutput", "creationTime"),
            type = "string",
            name = "creationTime",
            target_id = prelude.String.id,
        }),
        previous = schema.new({
            id = id.from(_N, "GetTemplateStepOutput", "previous"),
            type = "list",
            name = "previous",
            target_id = prelude.Document.id,
            list_member = prelude.String,
        }),
        next = schema.new({
            id = id.from(_N, "GetTemplateStepOutput", "next"),
            type = "list",
            name = "next",
            target_id = prelude.Document.id,
            list_member = prelude.String,
        }),
        outputs = schema.new({
            id = id.from(_N, "GetTemplateStepOutput", "outputs"),
            type = "list",
            name = "outputs",
            target_id = prelude.Document.id,
            list_member = M.StepOutput,
        }),
        stepAutomationConfiguration = schema.new({
            id = id.from(_N, "GetTemplateStepOutput", "stepAutomationConfiguration"),
            type = "structure",
            name = "stepAutomationConfiguration",
            target_id = id.from(_N, "StepAutomationConfiguration"),
            target = M.StepAutomationConfiguration,
        }),
    },
})

M.ListTemplateStepsInput = schema.new({
    id = id.from(_N, "ListTemplateStepsInput"),
    type = "structure",
    members = {
        maxResults = schema.new({
            id = id.from(_N, "ListTemplateStepsInput", "maxResults"),
            type = "integer",
            name = "maxResults",
            target_id = prelude.Integer.id,
            traits = {
                [traits.DEFAULT] = { value = 0 },
                [traits.HTTP_QUERY] = { name = "maxResults" },
            },
        }),
        nextToken = schema.new({
            id = id.from(_N, "ListTemplateStepsInput", "nextToken"),
            type = "string",
            name = "nextToken",
            target_id = prelude.String.id,
            traits = {
                [traits.HTTP_QUERY] = { name = "nextToken" },
            },
        }),
        templateId = schema.new({
            id = id.from(_N, "ListTemplateStepsInput", "templateId"),
            type = "string",
            name = "templateId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_QUERY] = { name = "templateId" },
            },
        }),
        stepGroupId = schema.new({
            id = id.from(_N, "ListTemplateStepsInput", "stepGroupId"),
            type = "string",
            name = "stepGroupId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_QUERY] = { name = "stepGroupId" },
            },
        }),
    },
})

M.TemplateStepSummary = schema.new({
    id = id.from(_N, "TemplateStepSummary"),
    type = "structure",
    members = {
        id = schema.new({
            id = id.from(_N, "TemplateStepSummary", "id"),
            type = "string",
            name = "id",
            target_id = prelude.String.id,
        }),
        stepGroupId = schema.new({
            id = id.from(_N, "TemplateStepSummary", "stepGroupId"),
            type = "string",
            name = "stepGroupId",
            target_id = prelude.String.id,
        }),
        templateId = schema.new({
            id = id.from(_N, "TemplateStepSummary", "templateId"),
            type = "string",
            name = "templateId",
            target_id = prelude.String.id,
        }),
        name = schema.new({
            id = id.from(_N, "TemplateStepSummary", "name"),
            type = "string",
            name = "name",
            target_id = prelude.String.id,
        }),
        stepActionType = schema.new({
            id = id.from(_N, "TemplateStepSummary", "stepActionType"),
            type = "string",
            name = "stepActionType",
            target_id = prelude.String.id,
        }),
        targetType = schema.new({
            id = id.from(_N, "TemplateStepSummary", "targetType"),
            type = "string",
            name = "targetType",
            target_id = prelude.String.id,
        }),
        owner = schema.new({
            id = id.from(_N, "TemplateStepSummary", "owner"),
            type = "string",
            name = "owner",
            target_id = prelude.String.id,
        }),
        previous = schema.new({
            id = id.from(_N, "TemplateStepSummary", "previous"),
            type = "list",
            name = "previous",
            target_id = prelude.Document.id,
            list_member = prelude.String,
        }),
        next = schema.new({
            id = id.from(_N, "TemplateStepSummary", "next"),
            type = "list",
            name = "next",
            target_id = prelude.Document.id,
            list_member = prelude.String,
        }),
    },
})

M.ListTemplateStepsOutput = schema.new({
    id = id.from(_N, "ListTemplateStepsOutput"),
    type = "structure",
    members = {
        nextToken = schema.new({
            id = id.from(_N, "ListTemplateStepsOutput", "nextToken"),
            type = "string",
            name = "nextToken",
            target_id = prelude.String.id,
        }),
        templateStepSummaryList = schema.new({
            id = id.from(_N, "ListTemplateStepsOutput", "templateStepSummaryList"),
            type = "list",
            name = "templateStepSummaryList",
            target_id = prelude.Document.id,
            list_member = M.TemplateStepSummary,
        }),
    },
})

M.GetTemplateStepGroupInput = schema.new({
    id = id.from(_N, "GetTemplateStepGroupInput"),
    type = "structure",
    members = {
        templateId = schema.new({
            id = id.from(_N, "GetTemplateStepGroupInput", "templateId"),
            type = "string",
            name = "templateId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
        id = schema.new({
            id = id.from(_N, "GetTemplateStepGroupInput", "id"),
            type = "string",
            name = "id",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
    },
})

M.GetTemplateStepGroupOutput = schema.new({
    id = id.from(_N, "GetTemplateStepGroupOutput"),
    type = "structure",
    members = {
        templateId = schema.new({
            id = id.from(_N, "GetTemplateStepGroupOutput", "templateId"),
            type = "string",
            name = "templateId",
            target_id = prelude.String.id,
        }),
        id = schema.new({
            id = id.from(_N, "GetTemplateStepGroupOutput", "id"),
            type = "string",
            name = "id",
            target_id = prelude.String.id,
        }),
        name = schema.new({
            id = id.from(_N, "GetTemplateStepGroupOutput", "name"),
            type = "string",
            name = "name",
            target_id = prelude.String.id,
        }),
        description = schema.new({
            id = id.from(_N, "GetTemplateStepGroupOutput", "description"),
            type = "string",
            name = "description",
            target_id = prelude.String.id,
        }),
        status = schema.new({
            id = id.from(_N, "GetTemplateStepGroupOutput", "status"),
            type = "string",
            name = "status",
            target_id = prelude.String.id,
        }),
        creationTime = schema.new({
            id = id.from(_N, "GetTemplateStepGroupOutput", "creationTime"),
            type = "timestamp",
            name = "creationTime",
            target_id = prelude.Timestamp.id,
        }),
        lastModifiedTime = schema.new({
            id = id.from(_N, "GetTemplateStepGroupOutput", "lastModifiedTime"),
            type = "timestamp",
            name = "lastModifiedTime",
            target_id = prelude.Timestamp.id,
        }),
        tools = schema.new({
            id = id.from(_N, "GetTemplateStepGroupOutput", "tools"),
            type = "list",
            name = "tools",
            target_id = prelude.Document.id,
            list_member = M.Tool,
        }),
        previous = schema.new({
            id = id.from(_N, "GetTemplateStepGroupOutput", "previous"),
            type = "list",
            name = "previous",
            target_id = prelude.Document.id,
            list_member = prelude.String,
        }),
        next = schema.new({
            id = id.from(_N, "GetTemplateStepGroupOutput", "next"),
            type = "list",
            name = "next",
            target_id = prelude.Document.id,
            list_member = prelude.String,
        }),
    },
})

M.ListTemplateStepGroupsInput = schema.new({
    id = id.from(_N, "ListTemplateStepGroupsInput"),
    type = "structure",
    members = {
        maxResults = schema.new({
            id = id.from(_N, "ListTemplateStepGroupsInput", "maxResults"),
            type = "integer",
            name = "maxResults",
            target_id = prelude.Integer.id,
            traits = {
                [traits.DEFAULT] = { value = 0 },
                [traits.HTTP_QUERY] = { name = "maxResults" },
            },
        }),
        nextToken = schema.new({
            id = id.from(_N, "ListTemplateStepGroupsInput", "nextToken"),
            type = "string",
            name = "nextToken",
            target_id = prelude.String.id,
            traits = {
                [traits.HTTP_QUERY] = { name = "nextToken" },
            },
        }),
        templateId = schema.new({
            id = id.from(_N, "ListTemplateStepGroupsInput", "templateId"),
            type = "string",
            name = "templateId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
    },
})

M.TemplateStepGroupSummary = schema.new({
    id = id.from(_N, "TemplateStepGroupSummary"),
    type = "structure",
    members = {
        id = schema.new({
            id = id.from(_N, "TemplateStepGroupSummary", "id"),
            type = "string",
            name = "id",
            target_id = prelude.String.id,
        }),
        name = schema.new({
            id = id.from(_N, "TemplateStepGroupSummary", "name"),
            type = "string",
            name = "name",
            target_id = prelude.String.id,
        }),
        previous = schema.new({
            id = id.from(_N, "TemplateStepGroupSummary", "previous"),
            type = "list",
            name = "previous",
            target_id = prelude.Document.id,
            list_member = prelude.String,
        }),
        next = schema.new({
            id = id.from(_N, "TemplateStepGroupSummary", "next"),
            type = "list",
            name = "next",
            target_id = prelude.Document.id,
            list_member = prelude.String,
        }),
    },
})

M.ListTemplateStepGroupsOutput = schema.new({
    id = id.from(_N, "ListTemplateStepGroupsOutput"),
    type = "structure",
    members = {
        nextToken = schema.new({
            id = id.from(_N, "ListTemplateStepGroupsOutput", "nextToken"),
            type = "string",
            name = "nextToken",
            target_id = prelude.String.id,
        }),
        templateStepGroupSummary = schema.new({
            id = id.from(_N, "ListTemplateStepGroupsOutput", "templateStepGroupSummary"),
            type = "list",
            name = "templateStepGroupSummary",
            target_id = prelude.Document.id,
            list_member = M.TemplateStepGroupSummary,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.UntagResourceInput = schema.new({
    id = id.from(_N, "UntagResourceInput"),
    type = "structure",
    members = {
        resourceArn = schema.new({
            id = id.from(_N, "UntagResourceInput", "resourceArn"),
            type = "string",
            name = "resourceArn",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
        tagKeys = schema.new({
            id = id.from(_N, "UntagResourceInput", "tagKeys"),
            type = "list",
            name = "tagKeys",
            target_id = prelude.Document.id,
            list_member = prelude.String,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_QUERY] = { name = "tagKeys" },
            },
        }),
    },
})

M.UntagResourceOutput = schema.new({
    id = id.from(_N, "UntagResourceOutput"),
    type = "structure",
})

M.WorkflowStepOutputUnion = schema.new({
    id = id.from(_N, "WorkflowStepOutputUnion"),
    type = "union",
    members = {
        integerValue = schema.new({
            id = id.from(_N, "WorkflowStepOutputUnion", "integerValue"),
            type = "integer",
            name = "integerValue",
            target_id = prelude.Integer.id,
        }),
        stringValue = schema.new({
            id = id.from(_N, "WorkflowStepOutputUnion", "stringValue"),
            type = "string",
            name = "stringValue",
            target_id = prelude.String.id,
        }),
        listOfStringValue = schema.new({
            id = id.from(_N, "WorkflowStepOutputUnion", "listOfStringValue"),
            type = "list",
            name = "listOfStringValue",
            target_id = prelude.Document.id,
            list_member = prelude.String,
        }),
    },
})

M.WorkflowStepOutput = schema.new({
    id = id.from(_N, "WorkflowStepOutput"),
    type = "structure",
    members = {
        name = schema.new({
            id = id.from(_N, "WorkflowStepOutput", "name"),
            type = "string",
            name = "name",
            target_id = prelude.String.id,
        }),
        dataType = schema.new({
            id = id.from(_N, "WorkflowStepOutput", "dataType"),
            type = "string",
            name = "dataType",
            target_id = prelude.String.id,
        }),
        required = schema.new({
            id = id.from(_N, "WorkflowStepOutput", "required"),
            type = "boolean",
            name = "required",
            target_id = prelude.Boolean.id,
        }),
        value = schema.new({
            id = id.from(_N, "WorkflowStepOutput", "value"),
            type = "union",
            name = "value",
            target_id = id.from(_N, "WorkflowStepOutputUnion"),
            target = M.WorkflowStepOutputUnion,
        }),
    },
})

M.WorkflowStepAutomationConfiguration = schema.new({
    id = id.from(_N, "WorkflowStepAutomationConfiguration"),
    type = "structure",
    members = {
        scriptLocationS3Bucket = schema.new({
            id = id.from(_N, "WorkflowStepAutomationConfiguration", "scriptLocationS3Bucket"),
            type = "string",
            name = "scriptLocationS3Bucket",
            target_id = prelude.String.id,
        }),
        scriptLocationS3Key = schema.new({
            id = id.from(_N, "WorkflowStepAutomationConfiguration", "scriptLocationS3Key"),
            type = "structure",
            name = "scriptLocationS3Key",
            target_id = id.from(_N, "PlatformScriptKey"),
            target = M.PlatformScriptKey,
        }),
        command = schema.new({
            id = id.from(_N, "WorkflowStepAutomationConfiguration", "command"),
            type = "structure",
            name = "command",
            target_id = id.from(_N, "PlatformCommand"),
            target = M.PlatformCommand,
        }),
        runEnvironment = schema.new({
            id = id.from(_N, "WorkflowStepAutomationConfiguration", "runEnvironment"),
            type = "string",
            name = "runEnvironment",
            target_id = prelude.String.id,
        }),
        targetType = schema.new({
            id = id.from(_N, "WorkflowStepAutomationConfiguration", "targetType"),
            type = "string",
            name = "targetType",
            target_id = prelude.String.id,
        }),
    },
})

M.CreateWorkflowStepInput = schema.new({
    id = id.from(_N, "CreateWorkflowStepInput"),
    type = "structure",
    members = {
        name = schema.new({
            id = id.from(_N, "CreateWorkflowStepInput", "name"),
            type = "string",
            name = "name",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        stepGroupId = schema.new({
            id = id.from(_N, "CreateWorkflowStepInput", "stepGroupId"),
            type = "string",
            name = "stepGroupId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        workflowId = schema.new({
            id = id.from(_N, "CreateWorkflowStepInput", "workflowId"),
            type = "string",
            name = "workflowId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        stepActionType = schema.new({
            id = id.from(_N, "CreateWorkflowStepInput", "stepActionType"),
            type = "string",
            name = "stepActionType",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        description = schema.new({
            id = id.from(_N, "CreateWorkflowStepInput", "description"),
            type = "string",
            name = "description",
            target_id = prelude.String.id,
        }),
        workflowStepAutomationConfiguration = schema.new({
            id = id.from(_N, "CreateWorkflowStepInput", "workflowStepAutomationConfiguration"),
            type = "structure",
            name = "workflowStepAutomationConfiguration",
            target_id = id.from(_N, "WorkflowStepAutomationConfiguration"),
            target = M.WorkflowStepAutomationConfiguration,
        }),
        stepTarget = schema.new({
            id = id.from(_N, "CreateWorkflowStepInput", "stepTarget"),
            type = "list",
            name = "stepTarget",
            target_id = prelude.Document.id,
            list_member = prelude.String,
        }),
        outputs = schema.new({
            id = id.from(_N, "CreateWorkflowStepInput", "outputs"),
            type = "list",
            name = "outputs",
            target_id = prelude.Document.id,
            list_member = M.WorkflowStepOutput,
        }),
        previous = schema.new({
            id = id.from(_N, "CreateWorkflowStepInput", "previous"),
            type = "list",
            name = "previous",
            target_id = prelude.Document.id,
            list_member = prelude.String,
        }),
        next = schema.new({
            id = id.from(_N, "CreateWorkflowStepInput", "next"),
            type = "list",
            name = "next",
            target_id = prelude.Document.id,
            list_member = prelude.String,
        }),
    },
})

M.CreateWorkflowStepOutput = schema.new({
    id = id.from(_N, "CreateWorkflowStepOutput"),
    type = "structure",
    members = {
        id = schema.new({
            id = id.from(_N, "CreateWorkflowStepOutput", "id"),
            type = "string",
            name = "id",
            target_id = prelude.String.id,
        }),
        stepGroupId = schema.new({
            id = id.from(_N, "CreateWorkflowStepOutput", "stepGroupId"),
            type = "string",
            name = "stepGroupId",
            target_id = prelude.String.id,
        }),
        workflowId = schema.new({
            id = id.from(_N, "CreateWorkflowStepOutput", "workflowId"),
            type = "string",
            name = "workflowId",
            target_id = prelude.String.id,
        }),
        name = schema.new({
            id = id.from(_N, "CreateWorkflowStepOutput", "name"),
            type = "string",
            name = "name",
            target_id = prelude.String.id,
        }),
    },
})

M.DeleteWorkflowStepInput = schema.new({
    id = id.from(_N, "DeleteWorkflowStepInput"),
    type = "structure",
    members = {
        id = schema.new({
            id = id.from(_N, "DeleteWorkflowStepInput", "id"),
            type = "string",
            name = "id",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
        stepGroupId = schema.new({
            id = id.from(_N, "DeleteWorkflowStepInput", "stepGroupId"),
            type = "string",
            name = "stepGroupId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_QUERY] = { name = "stepGroupId" },
            },
        }),
        workflowId = schema.new({
            id = id.from(_N, "DeleteWorkflowStepInput", "workflowId"),
            type = "string",
            name = "workflowId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_QUERY] = { name = "workflowId" },
            },
        }),
    },
})

M.DeleteWorkflowStepOutput = schema.new({
    id = id.from(_N, "DeleteWorkflowStepOutput"),
    type = "structure",
})

M.GetWorkflowStepInput = schema.new({
    id = id.from(_N, "GetWorkflowStepInput"),
    type = "structure",
    members = {
        workflowId = schema.new({
            id = id.from(_N, "GetWorkflowStepInput", "workflowId"),
            type = "string",
            name = "workflowId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_QUERY] = { name = "workflowId" },
            },
        }),
        stepGroupId = schema.new({
            id = id.from(_N, "GetWorkflowStepInput", "stepGroupId"),
            type = "string",
            name = "stepGroupId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_QUERY] = { name = "stepGroupId" },
            },
        }),
        id = schema.new({
            id = id.from(_N, "GetWorkflowStepInput", "id"),
            type = "string",
            name = "id",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
    },
})

M.GetWorkflowStepOutput = schema.new({
    id = id.from(_N, "GetWorkflowStepOutput"),
    type = "structure",
    members = {
        name = schema.new({
            id = id.from(_N, "GetWorkflowStepOutput", "name"),
            type = "string",
            name = "name",
            target_id = prelude.String.id,
        }),
        stepGroupId = schema.new({
            id = id.from(_N, "GetWorkflowStepOutput", "stepGroupId"),
            type = "string",
            name = "stepGroupId",
            target_id = prelude.String.id,
        }),
        workflowId = schema.new({
            id = id.from(_N, "GetWorkflowStepOutput", "workflowId"),
            type = "string",
            name = "workflowId",
            target_id = prelude.String.id,
        }),
        stepId = schema.new({
            id = id.from(_N, "GetWorkflowStepOutput", "stepId"),
            type = "string",
            name = "stepId",
            target_id = prelude.String.id,
        }),
        description = schema.new({
            id = id.from(_N, "GetWorkflowStepOutput", "description"),
            type = "string",
            name = "description",
            target_id = prelude.String.id,
        }),
        stepActionType = schema.new({
            id = id.from(_N, "GetWorkflowStepOutput", "stepActionType"),
            type = "string",
            name = "stepActionType",
            target_id = prelude.String.id,
        }),
        owner = schema.new({
            id = id.from(_N, "GetWorkflowStepOutput", "owner"),
            type = "string",
            name = "owner",
            target_id = prelude.String.id,
        }),
        workflowStepAutomationConfiguration = schema.new({
            id = id.from(_N, "GetWorkflowStepOutput", "workflowStepAutomationConfiguration"),
            type = "structure",
            name = "workflowStepAutomationConfiguration",
            target_id = id.from(_N, "WorkflowStepAutomationConfiguration"),
            target = M.WorkflowStepAutomationConfiguration,
        }),
        stepTarget = schema.new({
            id = id.from(_N, "GetWorkflowStepOutput", "stepTarget"),
            type = "list",
            name = "stepTarget",
            target_id = prelude.Document.id,
            list_member = prelude.String,
        }),
        outputs = schema.new({
            id = id.from(_N, "GetWorkflowStepOutput", "outputs"),
            type = "list",
            name = "outputs",
            target_id = prelude.Document.id,
            list_member = M.WorkflowStepOutput,
        }),
        previous = schema.new({
            id = id.from(_N, "GetWorkflowStepOutput", "previous"),
            type = "list",
            name = "previous",
            target_id = prelude.Document.id,
            list_member = prelude.String,
        }),
        next = schema.new({
            id = id.from(_N, "GetWorkflowStepOutput", "next"),
            type = "list",
            name = "next",
            target_id = prelude.Document.id,
            list_member = prelude.String,
        }),
        status = schema.new({
            id = id.from(_N, "GetWorkflowStepOutput", "status"),
            type = "string",
            name = "status",
            target_id = prelude.String.id,
        }),
        statusMessage = schema.new({
            id = id.from(_N, "GetWorkflowStepOutput", "statusMessage"),
            type = "string",
            name = "statusMessage",
            target_id = prelude.String.id,
        }),
        scriptOutputLocation = schema.new({
            id = id.from(_N, "GetWorkflowStepOutput", "scriptOutputLocation"),
            type = "string",
            name = "scriptOutputLocation",
            target_id = prelude.String.id,
        }),
        creationTime = schema.new({
            id = id.from(_N, "GetWorkflowStepOutput", "creationTime"),
            type = "timestamp",
            name = "creationTime",
            target_id = prelude.Timestamp.id,
        }),
        lastStartTime = schema.new({
            id = id.from(_N, "GetWorkflowStepOutput", "lastStartTime"),
            type = "timestamp",
            name = "lastStartTime",
            target_id = prelude.Timestamp.id,
        }),
        endTime = schema.new({
            id = id.from(_N, "GetWorkflowStepOutput", "endTime"),
            type = "timestamp",
            name = "endTime",
            target_id = prelude.Timestamp.id,
        }),
        noOfSrvCompleted = schema.new({
            id = id.from(_N, "GetWorkflowStepOutput", "noOfSrvCompleted"),
            type = "integer",
            name = "noOfSrvCompleted",
            target_id = prelude.Integer.id,
        }),
        noOfSrvFailed = schema.new({
            id = id.from(_N, "GetWorkflowStepOutput", "noOfSrvFailed"),
            type = "integer",
            name = "noOfSrvFailed",
            target_id = prelude.Integer.id,
        }),
        totalNoOfSrv = schema.new({
            id = id.from(_N, "GetWorkflowStepOutput", "totalNoOfSrv"),
            type = "integer",
            name = "totalNoOfSrv",
            target_id = prelude.Integer.id,
        }),
    },
})

M.ListWorkflowStepsInput = schema.new({
    id = id.from(_N, "ListWorkflowStepsInput"),
    type = "structure",
    members = {
        nextToken = schema.new({
            id = id.from(_N, "ListWorkflowStepsInput", "nextToken"),
            type = "string",
            name = "nextToken",
            target_id = prelude.String.id,
            traits = {
                [traits.HTTP_QUERY] = { name = "nextToken" },
            },
        }),
        maxResults = schema.new({
            id = id.from(_N, "ListWorkflowStepsInput", "maxResults"),
            type = "integer",
            name = "maxResults",
            target_id = prelude.Integer.id,
            traits = {
                [traits.DEFAULT] = { value = 0 },
                [traits.HTTP_QUERY] = { name = "maxResults" },
            },
        }),
        workflowId = schema.new({
            id = id.from(_N, "ListWorkflowStepsInput", "workflowId"),
            type = "string",
            name = "workflowId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
        stepGroupId = schema.new({
            id = id.from(_N, "ListWorkflowStepsInput", "stepGroupId"),
            type = "string",
            name = "stepGroupId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
    },
})

M.WorkflowStepSummary = schema.new({
    id = id.from(_N, "WorkflowStepSummary"),
    type = "structure",
    members = {
        stepId = schema.new({
            id = id.from(_N, "WorkflowStepSummary", "stepId"),
            type = "string",
            name = "stepId",
            target_id = prelude.String.id,
        }),
        name = schema.new({
            id = id.from(_N, "WorkflowStepSummary", "name"),
            type = "string",
            name = "name",
            target_id = prelude.String.id,
        }),
        stepActionType = schema.new({
            id = id.from(_N, "WorkflowStepSummary", "stepActionType"),
            type = "string",
            name = "stepActionType",
            target_id = prelude.String.id,
        }),
        owner = schema.new({
            id = id.from(_N, "WorkflowStepSummary", "owner"),
            type = "string",
            name = "owner",
            target_id = prelude.String.id,
        }),
        previous = schema.new({
            id = id.from(_N, "WorkflowStepSummary", "previous"),
            type = "list",
            name = "previous",
            target_id = prelude.Document.id,
            list_member = prelude.String,
        }),
        next = schema.new({
            id = id.from(_N, "WorkflowStepSummary", "next"),
            type = "list",
            name = "next",
            target_id = prelude.Document.id,
            list_member = prelude.String,
        }),
        status = schema.new({
            id = id.from(_N, "WorkflowStepSummary", "status"),
            type = "string",
            name = "status",
            target_id = prelude.String.id,
        }),
        statusMessage = schema.new({
            id = id.from(_N, "WorkflowStepSummary", "statusMessage"),
            type = "string",
            name = "statusMessage",
            target_id = prelude.String.id,
        }),
        noOfSrvCompleted = schema.new({
            id = id.from(_N, "WorkflowStepSummary", "noOfSrvCompleted"),
            type = "integer",
            name = "noOfSrvCompleted",
            target_id = prelude.Integer.id,
        }),
        noOfSrvFailed = schema.new({
            id = id.from(_N, "WorkflowStepSummary", "noOfSrvFailed"),
            type = "integer",
            name = "noOfSrvFailed",
            target_id = prelude.Integer.id,
        }),
        totalNoOfSrv = schema.new({
            id = id.from(_N, "WorkflowStepSummary", "totalNoOfSrv"),
            type = "integer",
            name = "totalNoOfSrv",
            target_id = prelude.Integer.id,
        }),
        description = schema.new({
            id = id.from(_N, "WorkflowStepSummary", "description"),
            type = "string",
            name = "description",
            target_id = prelude.String.id,
        }),
        scriptLocation = schema.new({
            id = id.from(_N, "WorkflowStepSummary", "scriptLocation"),
            type = "string",
            name = "scriptLocation",
            target_id = prelude.String.id,
        }),
    },
})

M.ListWorkflowStepsOutput = schema.new({
    id = id.from(_N, "ListWorkflowStepsOutput"),
    type = "structure",
    members = {
        nextToken = schema.new({
            id = id.from(_N, "ListWorkflowStepsOutput", "nextToken"),
            type = "string",
            name = "nextToken",
            target_id = prelude.String.id,
        }),
        workflowStepsSummary = schema.new({
            id = id.from(_N, "ListWorkflowStepsOutput", "workflowStepsSummary"),
            type = "list",
            name = "workflowStepsSummary",
            target_id = prelude.Document.id,
            list_member = M.WorkflowStepSummary,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.RetryWorkflowStepInput = schema.new({
    id = id.from(_N, "RetryWorkflowStepInput"),
    type = "structure",
    members = {
        workflowId = schema.new({
            id = id.from(_N, "RetryWorkflowStepInput", "workflowId"),
            type = "string",
            name = "workflowId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_QUERY] = { name = "workflowId" },
            },
        }),
        stepGroupId = schema.new({
            id = id.from(_N, "RetryWorkflowStepInput", "stepGroupId"),
            type = "string",
            name = "stepGroupId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_QUERY] = { name = "stepGroupId" },
            },
        }),
        id = schema.new({
            id = id.from(_N, "RetryWorkflowStepInput", "id"),
            type = "string",
            name = "id",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
    },
})

M.RetryWorkflowStepOutput = schema.new({
    id = id.from(_N, "RetryWorkflowStepOutput"),
    type = "structure",
    members = {
        stepGroupId = schema.new({
            id = id.from(_N, "RetryWorkflowStepOutput", "stepGroupId"),
            type = "string",
            name = "stepGroupId",
            target_id = prelude.String.id,
        }),
        workflowId = schema.new({
            id = id.from(_N, "RetryWorkflowStepOutput", "workflowId"),
            type = "string",
            name = "workflowId",
            target_id = prelude.String.id,
        }),
        id = schema.new({
            id = id.from(_N, "RetryWorkflowStepOutput", "id"),
            type = "string",
            name = "id",
            target_id = prelude.String.id,
        }),
        status = schema.new({
            id = id.from(_N, "RetryWorkflowStepOutput", "status"),
            type = "string",
            name = "status",
            target_id = prelude.String.id,
        }),
    },
})

M.UpdateWorkflowStepInput = schema.new({
    id = id.from(_N, "UpdateWorkflowStepInput"),
    type = "structure",
    members = {
        id = schema.new({
            id = id.from(_N, "UpdateWorkflowStepInput", "id"),
            type = "string",
            name = "id",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
        stepGroupId = schema.new({
            id = id.from(_N, "UpdateWorkflowStepInput", "stepGroupId"),
            type = "string",
            name = "stepGroupId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        workflowId = schema.new({
            id = id.from(_N, "UpdateWorkflowStepInput", "workflowId"),
            type = "string",
            name = "workflowId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        name = schema.new({
            id = id.from(_N, "UpdateWorkflowStepInput", "name"),
            type = "string",
            name = "name",
            target_id = prelude.String.id,
        }),
        description = schema.new({
            id = id.from(_N, "UpdateWorkflowStepInput", "description"),
            type = "string",
            name = "description",
            target_id = prelude.String.id,
        }),
        stepActionType = schema.new({
            id = id.from(_N, "UpdateWorkflowStepInput", "stepActionType"),
            type = "string",
            name = "stepActionType",
            target_id = prelude.String.id,
        }),
        workflowStepAutomationConfiguration = schema.new({
            id = id.from(_N, "UpdateWorkflowStepInput", "workflowStepAutomationConfiguration"),
            type = "structure",
            name = "workflowStepAutomationConfiguration",
            target_id = id.from(_N, "WorkflowStepAutomationConfiguration"),
            target = M.WorkflowStepAutomationConfiguration,
        }),
        stepTarget = schema.new({
            id = id.from(_N, "UpdateWorkflowStepInput", "stepTarget"),
            type = "list",
            name = "stepTarget",
            target_id = prelude.Document.id,
            list_member = prelude.String,
        }),
        outputs = schema.new({
            id = id.from(_N, "UpdateWorkflowStepInput", "outputs"),
            type = "list",
            name = "outputs",
            target_id = prelude.Document.id,
            list_member = M.WorkflowStepOutput,
        }),
        previous = schema.new({
            id = id.from(_N, "UpdateWorkflowStepInput", "previous"),
            type = "list",
            name = "previous",
            target_id = prelude.Document.id,
            list_member = prelude.String,
        }),
        next = schema.new({
            id = id.from(_N, "UpdateWorkflowStepInput", "next"),
            type = "list",
            name = "next",
            target_id = prelude.Document.id,
            list_member = prelude.String,
        }),
        status = schema.new({
            id = id.from(_N, "UpdateWorkflowStepInput", "status"),
            type = "string",
            name = "status",
            target_id = prelude.String.id,
        }),
    },
})

M.UpdateWorkflowStepOutput = schema.new({
    id = id.from(_N, "UpdateWorkflowStepOutput"),
    type = "structure",
    members = {
        id = schema.new({
            id = id.from(_N, "UpdateWorkflowStepOutput", "id"),
            type = "string",
            name = "id",
            target_id = prelude.String.id,
        }),
        stepGroupId = schema.new({
            id = id.from(_N, "UpdateWorkflowStepOutput", "stepGroupId"),
            type = "string",
            name = "stepGroupId",
            target_id = prelude.String.id,
        }),
        workflowId = schema.new({
            id = id.from(_N, "UpdateWorkflowStepOutput", "workflowId"),
            type = "string",
            name = "workflowId",
            target_id = prelude.String.id,
        }),
        name = schema.new({
            id = id.from(_N, "UpdateWorkflowStepOutput", "name"),
            type = "string",
            name = "name",
            target_id = prelude.String.id,
        }),
    },
})

M.CreateWorkflowStepGroupInput = schema.new({
    id = id.from(_N, "CreateWorkflowStepGroupInput"),
    type = "structure",
    members = {
        workflowId = schema.new({
            id = id.from(_N, "CreateWorkflowStepGroupInput", "workflowId"),
            type = "string",
            name = "workflowId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        name = schema.new({
            id = id.from(_N, "CreateWorkflowStepGroupInput", "name"),
            type = "string",
            name = "name",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        description = schema.new({
            id = id.from(_N, "CreateWorkflowStepGroupInput", "description"),
            type = "string",
            name = "description",
            target_id = prelude.String.id,
        }),
        next = schema.new({
            id = id.from(_N, "CreateWorkflowStepGroupInput", "next"),
            type = "list",
            name = "next",
            target_id = prelude.Document.id,
            list_member = prelude.String,
        }),
        previous = schema.new({
            id = id.from(_N, "CreateWorkflowStepGroupInput", "previous"),
            type = "list",
            name = "previous",
            target_id = prelude.Document.id,
            list_member = prelude.String,
        }),
    },
})

M.CreateWorkflowStepGroupOutput = schema.new({
    id = id.from(_N, "CreateWorkflowStepGroupOutput"),
    type = "structure",
    members = {
        workflowId = schema.new({
            id = id.from(_N, "CreateWorkflowStepGroupOutput", "workflowId"),
            type = "string",
            name = "workflowId",
            target_id = prelude.String.id,
        }),
        name = schema.new({
            id = id.from(_N, "CreateWorkflowStepGroupOutput", "name"),
            type = "string",
            name = "name",
            target_id = prelude.String.id,
        }),
        id = schema.new({
            id = id.from(_N, "CreateWorkflowStepGroupOutput", "id"),
            type = "string",
            name = "id",
            target_id = prelude.String.id,
        }),
        description = schema.new({
            id = id.from(_N, "CreateWorkflowStepGroupOutput", "description"),
            type = "string",
            name = "description",
            target_id = prelude.String.id,
        }),
        tools = schema.new({
            id = id.from(_N, "CreateWorkflowStepGroupOutput", "tools"),
            type = "list",
            name = "tools",
            target_id = prelude.Document.id,
            list_member = M.Tool,
        }),
        next = schema.new({
            id = id.from(_N, "CreateWorkflowStepGroupOutput", "next"),
            type = "list",
            name = "next",
            target_id = prelude.Document.id,
            list_member = prelude.String,
        }),
        previous = schema.new({
            id = id.from(_N, "CreateWorkflowStepGroupOutput", "previous"),
            type = "list",
            name = "previous",
            target_id = prelude.Document.id,
            list_member = prelude.String,
        }),
        creationTime = schema.new({
            id = id.from(_N, "CreateWorkflowStepGroupOutput", "creationTime"),
            type = "timestamp",
            name = "creationTime",
            target_id = prelude.Timestamp.id,
        }),
    },
})

M.DeleteWorkflowStepGroupInput = schema.new({
    id = id.from(_N, "DeleteWorkflowStepGroupInput"),
    type = "structure",
    members = {
        workflowId = schema.new({
            id = id.from(_N, "DeleteWorkflowStepGroupInput", "workflowId"),
            type = "string",
            name = "workflowId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_QUERY] = { name = "workflowId" },
            },
        }),
        id = schema.new({
            id = id.from(_N, "DeleteWorkflowStepGroupInput", "id"),
            type = "string",
            name = "id",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
    },
})

M.DeleteWorkflowStepGroupOutput = schema.new({
    id = id.from(_N, "DeleteWorkflowStepGroupOutput"),
    type = "structure",
})

M.GetWorkflowStepGroupInput = schema.new({
    id = id.from(_N, "GetWorkflowStepGroupInput"),
    type = "structure",
    members = {
        id = schema.new({
            id = id.from(_N, "GetWorkflowStepGroupInput", "id"),
            type = "string",
            name = "id",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
        workflowId = schema.new({
            id = id.from(_N, "GetWorkflowStepGroupInput", "workflowId"),
            type = "string",
            name = "workflowId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_QUERY] = { name = "workflowId" },
            },
        }),
    },
})

M.GetWorkflowStepGroupOutput = schema.new({
    id = id.from(_N, "GetWorkflowStepGroupOutput"),
    type = "structure",
    members = {
        id = schema.new({
            id = id.from(_N, "GetWorkflowStepGroupOutput", "id"),
            type = "string",
            name = "id",
            target_id = prelude.String.id,
        }),
        workflowId = schema.new({
            id = id.from(_N, "GetWorkflowStepGroupOutput", "workflowId"),
            type = "string",
            name = "workflowId",
            target_id = prelude.String.id,
        }),
        name = schema.new({
            id = id.from(_N, "GetWorkflowStepGroupOutput", "name"),
            type = "string",
            name = "name",
            target_id = prelude.String.id,
        }),
        description = schema.new({
            id = id.from(_N, "GetWorkflowStepGroupOutput", "description"),
            type = "string",
            name = "description",
            target_id = prelude.String.id,
        }),
        status = schema.new({
            id = id.from(_N, "GetWorkflowStepGroupOutput", "status"),
            type = "string",
            name = "status",
            target_id = prelude.String.id,
        }),
        owner = schema.new({
            id = id.from(_N, "GetWorkflowStepGroupOutput", "owner"),
            type = "string",
            name = "owner",
            target_id = prelude.String.id,
        }),
        creationTime = schema.new({
            id = id.from(_N, "GetWorkflowStepGroupOutput", "creationTime"),
            type = "timestamp",
            name = "creationTime",
            target_id = prelude.Timestamp.id,
        }),
        lastModifiedTime = schema.new({
            id = id.from(_N, "GetWorkflowStepGroupOutput", "lastModifiedTime"),
            type = "timestamp",
            name = "lastModifiedTime",
            target_id = prelude.Timestamp.id,
        }),
        endTime = schema.new({
            id = id.from(_N, "GetWorkflowStepGroupOutput", "endTime"),
            type = "timestamp",
            name = "endTime",
            target_id = prelude.Timestamp.id,
        }),
        tools = schema.new({
            id = id.from(_N, "GetWorkflowStepGroupOutput", "tools"),
            type = "list",
            name = "tools",
            target_id = prelude.Document.id,
            list_member = M.Tool,
        }),
        previous = schema.new({
            id = id.from(_N, "GetWorkflowStepGroupOutput", "previous"),
            type = "list",
            name = "previous",
            target_id = prelude.Document.id,
            list_member = prelude.String,
        }),
        next = schema.new({
            id = id.from(_N, "GetWorkflowStepGroupOutput", "next"),
            type = "list",
            name = "next",
            target_id = prelude.Document.id,
            list_member = prelude.String,
        }),
    },
})

M.ListWorkflowStepGroupsInput = schema.new({
    id = id.from(_N, "ListWorkflowStepGroupsInput"),
    type = "structure",
    members = {
        nextToken = schema.new({
            id = id.from(_N, "ListWorkflowStepGroupsInput", "nextToken"),
            type = "string",
            name = "nextToken",
            target_id = prelude.String.id,
            traits = {
                [traits.HTTP_QUERY] = { name = "nextToken" },
            },
        }),
        maxResults = schema.new({
            id = id.from(_N, "ListWorkflowStepGroupsInput", "maxResults"),
            type = "integer",
            name = "maxResults",
            target_id = prelude.Integer.id,
            traits = {
                [traits.DEFAULT] = { value = 0 },
                [traits.HTTP_QUERY] = { name = "maxResults" },
            },
        }),
        workflowId = schema.new({
            id = id.from(_N, "ListWorkflowStepGroupsInput", "workflowId"),
            type = "string",
            name = "workflowId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_QUERY] = { name = "workflowId" },
            },
        }),
    },
})

M.WorkflowStepGroupSummary = schema.new({
    id = id.from(_N, "WorkflowStepGroupSummary"),
    type = "structure",
    members = {
        id = schema.new({
            id = id.from(_N, "WorkflowStepGroupSummary", "id"),
            type = "string",
            name = "id",
            target_id = prelude.String.id,
        }),
        name = schema.new({
            id = id.from(_N, "WorkflowStepGroupSummary", "name"),
            type = "string",
            name = "name",
            target_id = prelude.String.id,
        }),
        owner = schema.new({
            id = id.from(_N, "WorkflowStepGroupSummary", "owner"),
            type = "string",
            name = "owner",
            target_id = prelude.String.id,
        }),
        status = schema.new({
            id = id.from(_N, "WorkflowStepGroupSummary", "status"),
            type = "string",
            name = "status",
            target_id = prelude.String.id,
        }),
        previous = schema.new({
            id = id.from(_N, "WorkflowStepGroupSummary", "previous"),
            type = "list",
            name = "previous",
            target_id = prelude.Document.id,
            list_member = prelude.String,
        }),
        next = schema.new({
            id = id.from(_N, "WorkflowStepGroupSummary", "next"),
            type = "list",
            name = "next",
            target_id = prelude.Document.id,
            list_member = prelude.String,
        }),
    },
})

M.ListWorkflowStepGroupsOutput = schema.new({
    id = id.from(_N, "ListWorkflowStepGroupsOutput"),
    type = "structure",
    members = {
        nextToken = schema.new({
            id = id.from(_N, "ListWorkflowStepGroupsOutput", "nextToken"),
            type = "string",
            name = "nextToken",
            target_id = prelude.String.id,
        }),
        workflowStepGroupsSummary = schema.new({
            id = id.from(_N, "ListWorkflowStepGroupsOutput", "workflowStepGroupsSummary"),
            type = "list",
            name = "workflowStepGroupsSummary",
            target_id = prelude.Document.id,
            list_member = M.WorkflowStepGroupSummary,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.UpdateWorkflowStepGroupInput = schema.new({
    id = id.from(_N, "UpdateWorkflowStepGroupInput"),
    type = "structure",
    members = {
        workflowId = schema.new({
            id = id.from(_N, "UpdateWorkflowStepGroupInput", "workflowId"),
            type = "string",
            name = "workflowId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_QUERY] = { name = "workflowId" },
            },
        }),
        id = schema.new({
            id = id.from(_N, "UpdateWorkflowStepGroupInput", "id"),
            type = "string",
            name = "id",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
        name = schema.new({
            id = id.from(_N, "UpdateWorkflowStepGroupInput", "name"),
            type = "string",
            name = "name",
            target_id = prelude.String.id,
        }),
        description = schema.new({
            id = id.from(_N, "UpdateWorkflowStepGroupInput", "description"),
            type = "string",
            name = "description",
            target_id = prelude.String.id,
        }),
        next = schema.new({
            id = id.from(_N, "UpdateWorkflowStepGroupInput", "next"),
            type = "list",
            name = "next",
            target_id = prelude.Document.id,
            list_member = prelude.String,
        }),
        previous = schema.new({
            id = id.from(_N, "UpdateWorkflowStepGroupInput", "previous"),
            type = "list",
            name = "previous",
            target_id = prelude.Document.id,
            list_member = prelude.String,
        }),
    },
})

M.UpdateWorkflowStepGroupOutput = schema.new({
    id = id.from(_N, "UpdateWorkflowStepGroupOutput"),
    type = "structure",
    members = {
        workflowId = schema.new({
            id = id.from(_N, "UpdateWorkflowStepGroupOutput", "workflowId"),
            type = "string",
            name = "workflowId",
            target_id = prelude.String.id,
        }),
        name = schema.new({
            id = id.from(_N, "UpdateWorkflowStepGroupOutput", "name"),
            type = "string",
            name = "name",
            target_id = prelude.String.id,
        }),
        id = schema.new({
            id = id.from(_N, "UpdateWorkflowStepGroupOutput", "id"),
            type = "string",
            name = "id",
            target_id = prelude.String.id,
        }),
        description = schema.new({
            id = id.from(_N, "UpdateWorkflowStepGroupOutput", "description"),
            type = "string",
            name = "description",
            target_id = prelude.String.id,
        }),
        tools = schema.new({
            id = id.from(_N, "UpdateWorkflowStepGroupOutput", "tools"),
            type = "list",
            name = "tools",
            target_id = prelude.Document.id,
            list_member = M.Tool,
        }),
        next = schema.new({
            id = id.from(_N, "UpdateWorkflowStepGroupOutput", "next"),
            type = "list",
            name = "next",
            target_id = prelude.Document.id,
            list_member = prelude.String,
        }),
        previous = schema.new({
            id = id.from(_N, "UpdateWorkflowStepGroupOutput", "previous"),
            type = "list",
            name = "previous",
            target_id = prelude.Document.id,
            list_member = prelude.String,
        }),
        lastModifiedTime = schema.new({
            id = id.from(_N, "UpdateWorkflowStepGroupOutput", "lastModifiedTime"),
            type = "timestamp",
            name = "lastModifiedTime",
            target_id = prelude.Timestamp.id,
        }),
    },
})

return M
