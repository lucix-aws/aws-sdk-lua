local id = require("smithy.shape_id")
local schema = require("smithy.schema")
local prelude = require("smithy.prelude")
local traits = require("smithy.traits")

local _N = "com.amazonaws.datapipeline"

local M = {}

M.ParameterValue = schema.new({
    id = id.from(_N, "ParameterValue"),
    type = "structure",
    members = {
        id = schema.new({
            id = id.from(_N, "ParameterValue", "id"),
            type = "string",
            name = "id",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        stringValue = schema.new({
            id = id.from(_N, "ParameterValue", "stringValue"),
            type = "string",
            name = "stringValue",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.ActivatePipelineInput = schema.new({
    id = id.from(_N, "ActivatePipelineInput"),
    type = "structure",
    members = {
        pipelineId = schema.new({
            id = id.from(_N, "ActivatePipelineInput", "pipelineId"),
            type = "string",
            name = "pipelineId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        parameterValues = schema.new({
            id = id.from(_N, "ActivatePipelineInput", "parameterValues"),
            type = "list",
            name = "parameterValues",
            target_id = prelude.Document.id,
            list_member = M.ParameterValue,
        }),
        startTimestamp = schema.new({
            id = id.from(_N, "ActivatePipelineInput", "startTimestamp"),
            type = "timestamp",
            name = "startTimestamp",
            target_id = prelude.Timestamp.id,
        }),
    },
})

M.ActivatePipelineOutput = schema.new({
    id = id.from(_N, "ActivatePipelineOutput"),
    type = "structure",
})

M.InternalServiceError = schema.new({
    id = id.from(_N, "InternalServiceError"),
    type = "structure",
    traits = {
        [traits.ERROR] = { value = "server" },
    },
    members = {
        message = schema.new({
            id = id.from(_N, "InternalServiceError", "message"),
            type = "string",
            name = "message",
            target_id = prelude.String.id,
        }),
    },
})

M.InvalidRequestException = schema.new({
    id = id.from(_N, "InvalidRequestException"),
    type = "structure",
    traits = {
        [traits.ERROR] = { value = "client" },
    },
    members = {
        message = schema.new({
            id = id.from(_N, "InvalidRequestException", "message"),
            type = "string",
            name = "message",
            target_id = prelude.String.id,
        }),
    },
})

M.PipelineDeletedException = schema.new({
    id = id.from(_N, "PipelineDeletedException"),
    type = "structure",
    traits = {
        [traits.ERROR] = { value = "client" },
    },
    members = {
        message = schema.new({
            id = id.from(_N, "PipelineDeletedException", "message"),
            type = "string",
            name = "message",
            target_id = prelude.String.id,
        }),
    },
})

M.PipelineNotFoundException = schema.new({
    id = id.from(_N, "PipelineNotFoundException"),
    type = "structure",
    traits = {
        [traits.ERROR] = { value = "client" },
    },
    members = {
        message = schema.new({
            id = id.from(_N, "PipelineNotFoundException", "message"),
            type = "string",
            name = "message",
            target_id = prelude.String.id,
        }),
    },
})

M.Tag = schema.new({
    id = id.from(_N, "Tag"),
    type = "structure",
    members = {
        key = schema.new({
            id = id.from(_N, "Tag", "key"),
            type = "string",
            name = "key",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        value = schema.new({
            id = id.from(_N, "Tag", "value"),
            type = "string",
            name = "value",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.AddTagsInput = schema.new({
    id = id.from(_N, "AddTagsInput"),
    type = "structure",
    members = {
        pipelineId = schema.new({
            id = id.from(_N, "AddTagsInput", "pipelineId"),
            type = "string",
            name = "pipelineId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        tags = schema.new({
            id = id.from(_N, "AddTagsInput", "tags"),
            type = "list",
            name = "tags",
            target_id = prelude.Document.id,
            list_member = M.Tag,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.AddTagsOutput = schema.new({
    id = id.from(_N, "AddTagsOutput"),
    type = "structure",
})

M.CreatePipelineInput = schema.new({
    id = id.from(_N, "CreatePipelineInput"),
    type = "structure",
    members = {
        name = schema.new({
            id = id.from(_N, "CreatePipelineInput", "name"),
            type = "string",
            name = "name",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        uniqueId = schema.new({
            id = id.from(_N, "CreatePipelineInput", "uniqueId"),
            type = "string",
            name = "uniqueId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        description = schema.new({
            id = id.from(_N, "CreatePipelineInput", "description"),
            type = "string",
            name = "description",
            target_id = prelude.String.id,
        }),
        tags = schema.new({
            id = id.from(_N, "CreatePipelineInput", "tags"),
            type = "list",
            name = "tags",
            target_id = prelude.Document.id,
            list_member = M.Tag,
        }),
    },
})

M.CreatePipelineOutput = schema.new({
    id = id.from(_N, "CreatePipelineOutput"),
    type = "structure",
    members = {
        pipelineId = schema.new({
            id = id.from(_N, "CreatePipelineOutput", "pipelineId"),
            type = "string",
            name = "pipelineId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.DeactivatePipelineInput = schema.new({
    id = id.from(_N, "DeactivatePipelineInput"),
    type = "structure",
    members = {
        pipelineId = schema.new({
            id = id.from(_N, "DeactivatePipelineInput", "pipelineId"),
            type = "string",
            name = "pipelineId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        cancelActive = schema.new({
            id = id.from(_N, "DeactivatePipelineInput", "cancelActive"),
            type = "boolean",
            name = "cancelActive",
            target_id = prelude.Boolean.id,
        }),
    },
})

M.DeactivatePipelineOutput = schema.new({
    id = id.from(_N, "DeactivatePipelineOutput"),
    type = "structure",
})

M.DeletePipelineInput = schema.new({
    id = id.from(_N, "DeletePipelineInput"),
    type = "structure",
    members = {
        pipelineId = schema.new({
            id = id.from(_N, "DeletePipelineInput", "pipelineId"),
            type = "string",
            name = "pipelineId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.DeletePipelineOutput = schema.new({
    id = id.from(_N, "Unit"),
    type = "structure",
})

M.DescribeObjectsInput = schema.new({
    id = id.from(_N, "DescribeObjectsInput"),
    type = "structure",
    members = {
        pipelineId = schema.new({
            id = id.from(_N, "DescribeObjectsInput", "pipelineId"),
            type = "string",
            name = "pipelineId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        objectIds = schema.new({
            id = id.from(_N, "DescribeObjectsInput", "objectIds"),
            type = "list",
            name = "objectIds",
            target_id = prelude.Document.id,
            list_member = prelude.String,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        evaluateExpressions = schema.new({
            id = id.from(_N, "DescribeObjectsInput", "evaluateExpressions"),
            type = "boolean",
            name = "evaluateExpressions",
            target_id = prelude.Boolean.id,
            traits = {
                [traits.DEFAULT] = { value = false },
            },
        }),
        marker = schema.new({
            id = id.from(_N, "DescribeObjectsInput", "marker"),
            type = "string",
            name = "marker",
            target_id = prelude.String.id,
        }),
    },
})

M.Field = schema.new({
    id = id.from(_N, "Field"),
    type = "structure",
    members = {
        key = schema.new({
            id = id.from(_N, "Field", "key"),
            type = "string",
            name = "key",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        stringValue = schema.new({
            id = id.from(_N, "Field", "stringValue"),
            type = "string",
            name = "stringValue",
            target_id = prelude.String.id,
        }),
        refValue = schema.new({
            id = id.from(_N, "Field", "refValue"),
            type = "string",
            name = "refValue",
            target_id = prelude.String.id,
        }),
    },
})

M.PipelineObject = schema.new({
    id = id.from(_N, "PipelineObject"),
    type = "structure",
    members = {
        id = schema.new({
            id = id.from(_N, "PipelineObject", "id"),
            type = "string",
            name = "id",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        name = schema.new({
            id = id.from(_N, "PipelineObject", "name"),
            type = "string",
            name = "name",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        fields = schema.new({
            id = id.from(_N, "PipelineObject", "fields"),
            type = "list",
            name = "fields",
            target_id = prelude.Document.id,
            list_member = M.Field,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.DescribeObjectsOutput = schema.new({
    id = id.from(_N, "DescribeObjectsOutput"),
    type = "structure",
    members = {
        pipelineObjects = schema.new({
            id = id.from(_N, "DescribeObjectsOutput", "pipelineObjects"),
            type = "list",
            name = "pipelineObjects",
            target_id = prelude.Document.id,
            list_member = M.PipelineObject,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        marker = schema.new({
            id = id.from(_N, "DescribeObjectsOutput", "marker"),
            type = "string",
            name = "marker",
            target_id = prelude.String.id,
        }),
        hasMoreResults = schema.new({
            id = id.from(_N, "DescribeObjectsOutput", "hasMoreResults"),
            type = "boolean",
            name = "hasMoreResults",
            target_id = prelude.Boolean.id,
            traits = {
                [traits.DEFAULT] = { value = false },
            },
        }),
    },
})

M.DescribePipelinesInput = schema.new({
    id = id.from(_N, "DescribePipelinesInput"),
    type = "structure",
    members = {
        pipelineIds = schema.new({
            id = id.from(_N, "DescribePipelinesInput", "pipelineIds"),
            type = "list",
            name = "pipelineIds",
            target_id = prelude.Document.id,
            list_member = prelude.String,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.PipelineDescription = schema.new({
    id = id.from(_N, "PipelineDescription"),
    type = "structure",
    members = {
        pipelineId = schema.new({
            id = id.from(_N, "PipelineDescription", "pipelineId"),
            type = "string",
            name = "pipelineId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        name = schema.new({
            id = id.from(_N, "PipelineDescription", "name"),
            type = "string",
            name = "name",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        fields = schema.new({
            id = id.from(_N, "PipelineDescription", "fields"),
            type = "list",
            name = "fields",
            target_id = prelude.Document.id,
            list_member = M.Field,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        description = schema.new({
            id = id.from(_N, "PipelineDescription", "description"),
            type = "string",
            name = "description",
            target_id = prelude.String.id,
        }),
        tags = schema.new({
            id = id.from(_N, "PipelineDescription", "tags"),
            type = "list",
            name = "tags",
            target_id = prelude.Document.id,
            list_member = M.Tag,
        }),
    },
})

M.DescribePipelinesOutput = schema.new({
    id = id.from(_N, "DescribePipelinesOutput"),
    type = "structure",
    members = {
        pipelineDescriptionList = schema.new({
            id = id.from(_N, "DescribePipelinesOutput", "pipelineDescriptionList"),
            type = "list",
            name = "pipelineDescriptionList",
            target_id = prelude.Document.id,
            list_member = M.PipelineDescription,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.EvaluateExpressionInput = schema.new({
    id = id.from(_N, "EvaluateExpressionInput"),
    type = "structure",
    members = {
        pipelineId = schema.new({
            id = id.from(_N, "EvaluateExpressionInput", "pipelineId"),
            type = "string",
            name = "pipelineId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        objectId = schema.new({
            id = id.from(_N, "EvaluateExpressionInput", "objectId"),
            type = "string",
            name = "objectId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        expression = schema.new({
            id = id.from(_N, "EvaluateExpressionInput", "expression"),
            type = "string",
            name = "expression",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.EvaluateExpressionOutput = schema.new({
    id = id.from(_N, "EvaluateExpressionOutput"),
    type = "structure",
    members = {
        evaluatedExpression = schema.new({
            id = id.from(_N, "EvaluateExpressionOutput", "evaluatedExpression"),
            type = "string",
            name = "evaluatedExpression",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.TaskNotFoundException = schema.new({
    id = id.from(_N, "TaskNotFoundException"),
    type = "structure",
    traits = {
        [traits.ERROR] = { value = "client" },
    },
    members = {
        message = schema.new({
            id = id.from(_N, "TaskNotFoundException", "message"),
            type = "string",
            name = "message",
            target_id = prelude.String.id,
        }),
    },
})

M.GetPipelineDefinitionInput = schema.new({
    id = id.from(_N, "GetPipelineDefinitionInput"),
    type = "structure",
    members = {
        pipelineId = schema.new({
            id = id.from(_N, "GetPipelineDefinitionInput", "pipelineId"),
            type = "string",
            name = "pipelineId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        version = schema.new({
            id = id.from(_N, "GetPipelineDefinitionInput", "version"),
            type = "string",
            name = "version",
            target_id = prelude.String.id,
        }),
    },
})

M.ParameterAttribute = schema.new({
    id = id.from(_N, "ParameterAttribute"),
    type = "structure",
    members = {
        key = schema.new({
            id = id.from(_N, "ParameterAttribute", "key"),
            type = "string",
            name = "key",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        stringValue = schema.new({
            id = id.from(_N, "ParameterAttribute", "stringValue"),
            type = "string",
            name = "stringValue",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.ParameterObject = schema.new({
    id = id.from(_N, "ParameterObject"),
    type = "structure",
    members = {
        id = schema.new({
            id = id.from(_N, "ParameterObject", "id"),
            type = "string",
            name = "id",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        attributes = schema.new({
            id = id.from(_N, "ParameterObject", "attributes"),
            type = "list",
            name = "attributes",
            target_id = prelude.Document.id,
            list_member = M.ParameterAttribute,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.GetPipelineDefinitionOutput = schema.new({
    id = id.from(_N, "GetPipelineDefinitionOutput"),
    type = "structure",
    members = {
        pipelineObjects = schema.new({
            id = id.from(_N, "GetPipelineDefinitionOutput", "pipelineObjects"),
            type = "list",
            name = "pipelineObjects",
            target_id = prelude.Document.id,
            list_member = M.PipelineObject,
        }),
        parameterObjects = schema.new({
            id = id.from(_N, "GetPipelineDefinitionOutput", "parameterObjects"),
            type = "list",
            name = "parameterObjects",
            target_id = prelude.Document.id,
            list_member = M.ParameterObject,
        }),
        parameterValues = schema.new({
            id = id.from(_N, "GetPipelineDefinitionOutput", "parameterValues"),
            type = "list",
            name = "parameterValues",
            target_id = prelude.Document.id,
            list_member = M.ParameterValue,
        }),
    },
})

M.ListPipelinesInput = schema.new({
    id = id.from(_N, "ListPipelinesInput"),
    type = "structure",
    members = {
        marker = schema.new({
            id = id.from(_N, "ListPipelinesInput", "marker"),
            type = "string",
            name = "marker",
            target_id = prelude.String.id,
        }),
    },
})

M.PipelineIdName = schema.new({
    id = id.from(_N, "PipelineIdName"),
    type = "structure",
    members = {
        id = schema.new({
            id = id.from(_N, "PipelineIdName", "id"),
            type = "string",
            name = "id",
            target_id = prelude.String.id,
        }),
        name = schema.new({
            id = id.from(_N, "PipelineIdName", "name"),
            type = "string",
            name = "name",
            target_id = prelude.String.id,
        }),
    },
})

M.ListPipelinesOutput = schema.new({
    id = id.from(_N, "ListPipelinesOutput"),
    type = "structure",
    members = {
        pipelineIdList = schema.new({
            id = id.from(_N, "ListPipelinesOutput", "pipelineIdList"),
            type = "list",
            name = "pipelineIdList",
            target_id = prelude.Document.id,
            list_member = M.PipelineIdName,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        marker = schema.new({
            id = id.from(_N, "ListPipelinesOutput", "marker"),
            type = "string",
            name = "marker",
            target_id = prelude.String.id,
        }),
        hasMoreResults = schema.new({
            id = id.from(_N, "ListPipelinesOutput", "hasMoreResults"),
            type = "boolean",
            name = "hasMoreResults",
            target_id = prelude.Boolean.id,
            traits = {
                [traits.DEFAULT] = { value = false },
            },
        }),
    },
})

M.InstanceIdentity = schema.new({
    id = id.from(_N, "InstanceIdentity"),
    type = "structure",
    members = {
        document = schema.new({
            id = id.from(_N, "InstanceIdentity", "document"),
            type = "string",
            name = "document",
            target_id = prelude.String.id,
        }),
        signature = schema.new({
            id = id.from(_N, "InstanceIdentity", "signature"),
            type = "string",
            name = "signature",
            target_id = prelude.String.id,
        }),
    },
})

M.PollForTaskInput = schema.new({
    id = id.from(_N, "PollForTaskInput"),
    type = "structure",
    members = {
        workerGroup = schema.new({
            id = id.from(_N, "PollForTaskInput", "workerGroup"),
            type = "string",
            name = "workerGroup",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        hostname = schema.new({
            id = id.from(_N, "PollForTaskInput", "hostname"),
            type = "string",
            name = "hostname",
            target_id = prelude.String.id,
        }),
        instanceIdentity = schema.new({
            id = id.from(_N, "PollForTaskInput", "instanceIdentity"),
            type = "structure",
            name = "instanceIdentity",
            target_id = id.from(_N, "InstanceIdentity"),
            target = M.InstanceIdentity,
        }),
    },
})

M.TaskObject = schema.new({
    id = id.from(_N, "TaskObject"),
    type = "structure",
    members = {
        taskId = schema.new({
            id = id.from(_N, "TaskObject", "taskId"),
            type = "string",
            name = "taskId",
            target_id = prelude.String.id,
        }),
        pipelineId = schema.new({
            id = id.from(_N, "TaskObject", "pipelineId"),
            type = "string",
            name = "pipelineId",
            target_id = prelude.String.id,
        }),
        attemptId = schema.new({
            id = id.from(_N, "TaskObject", "attemptId"),
            type = "string",
            name = "attemptId",
            target_id = prelude.String.id,
        }),
        objects = schema.new({
            id = id.from(_N, "TaskObject", "objects"),
            type = "map",
            name = "objects",
            target_id = prelude.Document.id,
            map_key = prelude.String,
            map_value = M.PipelineObject,
        }),
    },
})

M.PollForTaskOutput = schema.new({
    id = id.from(_N, "PollForTaskOutput"),
    type = "structure",
    members = {
        taskObject = schema.new({
            id = id.from(_N, "PollForTaskOutput", "taskObject"),
            type = "structure",
            name = "taskObject",
            target_id = id.from(_N, "TaskObject"),
            target = M.TaskObject,
        }),
    },
})

M.PutPipelineDefinitionInput = schema.new({
    id = id.from(_N, "PutPipelineDefinitionInput"),
    type = "structure",
    members = {
        pipelineId = schema.new({
            id = id.from(_N, "PutPipelineDefinitionInput", "pipelineId"),
            type = "string",
            name = "pipelineId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        pipelineObjects = schema.new({
            id = id.from(_N, "PutPipelineDefinitionInput", "pipelineObjects"),
            type = "list",
            name = "pipelineObjects",
            target_id = prelude.Document.id,
            list_member = M.PipelineObject,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        parameterObjects = schema.new({
            id = id.from(_N, "PutPipelineDefinitionInput", "parameterObjects"),
            type = "list",
            name = "parameterObjects",
            target_id = prelude.Document.id,
            list_member = M.ParameterObject,
        }),
        parameterValues = schema.new({
            id = id.from(_N, "PutPipelineDefinitionInput", "parameterValues"),
            type = "list",
            name = "parameterValues",
            target_id = prelude.Document.id,
            list_member = M.ParameterValue,
        }),
    },
})

M.ValidationError = schema.new({
    id = id.from(_N, "ValidationError"),
    type = "structure",
    members = {
        id = schema.new({
            id = id.from(_N, "ValidationError", "id"),
            type = "string",
            name = "id",
            target_id = prelude.String.id,
        }),
        errors = schema.new({
            id = id.from(_N, "ValidationError", "errors"),
            type = "list",
            name = "errors",
            target_id = prelude.Document.id,
            list_member = prelude.String,
        }),
    },
})

M.ValidationWarning = schema.new({
    id = id.from(_N, "ValidationWarning"),
    type = "structure",
    members = {
        id = schema.new({
            id = id.from(_N, "ValidationWarning", "id"),
            type = "string",
            name = "id",
            target_id = prelude.String.id,
        }),
        warnings = schema.new({
            id = id.from(_N, "ValidationWarning", "warnings"),
            type = "list",
            name = "warnings",
            target_id = prelude.Document.id,
            list_member = prelude.String,
        }),
    },
})

M.PutPipelineDefinitionOutput = schema.new({
    id = id.from(_N, "PutPipelineDefinitionOutput"),
    type = "structure",
    members = {
        validationErrors = schema.new({
            id = id.from(_N, "PutPipelineDefinitionOutput", "validationErrors"),
            type = "list",
            name = "validationErrors",
            target_id = prelude.Document.id,
            list_member = M.ValidationError,
        }),
        validationWarnings = schema.new({
            id = id.from(_N, "PutPipelineDefinitionOutput", "validationWarnings"),
            type = "list",
            name = "validationWarnings",
            target_id = prelude.Document.id,
            list_member = M.ValidationWarning,
        }),
        errored = schema.new({
            id = id.from(_N, "PutPipelineDefinitionOutput", "errored"),
            type = "boolean",
            name = "errored",
            target_id = prelude.Boolean.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.DEFAULT] = { value = false },
            },
        }),
    },
})

M.Operator = schema.new({
    id = id.from(_N, "Operator"),
    type = "structure",
    members = {
        type = schema.new({
            id = id.from(_N, "Operator", "type"),
            type = "string",
            name = "type",
            target_id = prelude.String.id,
        }),
        values = schema.new({
            id = id.from(_N, "Operator", "values"),
            type = "list",
            name = "values",
            target_id = prelude.Document.id,
            list_member = prelude.String,
        }),
    },
})

M.Selector = schema.new({
    id = id.from(_N, "Selector"),
    type = "structure",
    members = {
        fieldName = schema.new({
            id = id.from(_N, "Selector", "fieldName"),
            type = "string",
            name = "fieldName",
            target_id = prelude.String.id,
        }),
        operator = schema.new({
            id = id.from(_N, "Selector", "operator"),
            type = "structure",
            name = "operator",
            target_id = id.from(_N, "Operator"),
            target = M.Operator,
        }),
    },
})

M.Query = schema.new({
    id = id.from(_N, "Query"),
    type = "structure",
    members = {
        selectors = schema.new({
            id = id.from(_N, "Query", "selectors"),
            type = "list",
            name = "selectors",
            target_id = prelude.Document.id,
            list_member = M.Selector,
        }),
    },
})

M.QueryObjectsInput = schema.new({
    id = id.from(_N, "QueryObjectsInput"),
    type = "structure",
    members = {
        pipelineId = schema.new({
            id = id.from(_N, "QueryObjectsInput", "pipelineId"),
            type = "string",
            name = "pipelineId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        query = schema.new({
            id = id.from(_N, "QueryObjectsInput", "query"),
            type = "structure",
            name = "query",
            target_id = id.from(_N, "Query"),
            target = M.Query,
        }),
        sphere = schema.new({
            id = id.from(_N, "QueryObjectsInput", "sphere"),
            type = "string",
            name = "sphere",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        marker = schema.new({
            id = id.from(_N, "QueryObjectsInput", "marker"),
            type = "string",
            name = "marker",
            target_id = prelude.String.id,
        }),
        limit = schema.new({
            id = id.from(_N, "QueryObjectsInput", "limit"),
            type = "integer",
            name = "limit",
            target_id = prelude.Integer.id,
        }),
    },
})

M.QueryObjectsOutput = schema.new({
    id = id.from(_N, "QueryObjectsOutput"),
    type = "structure",
    members = {
        ids = schema.new({
            id = id.from(_N, "QueryObjectsOutput", "ids"),
            type = "list",
            name = "ids",
            target_id = prelude.Document.id,
            list_member = prelude.String,
        }),
        marker = schema.new({
            id = id.from(_N, "QueryObjectsOutput", "marker"),
            type = "string",
            name = "marker",
            target_id = prelude.String.id,
        }),
        hasMoreResults = schema.new({
            id = id.from(_N, "QueryObjectsOutput", "hasMoreResults"),
            type = "boolean",
            name = "hasMoreResults",
            target_id = prelude.Boolean.id,
            traits = {
                [traits.DEFAULT] = { value = false },
            },
        }),
    },
})

M.RemoveTagsInput = schema.new({
    id = id.from(_N, "RemoveTagsInput"),
    type = "structure",
    members = {
        pipelineId = schema.new({
            id = id.from(_N, "RemoveTagsInput", "pipelineId"),
            type = "string",
            name = "pipelineId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        tagKeys = schema.new({
            id = id.from(_N, "RemoveTagsInput", "tagKeys"),
            type = "list",
            name = "tagKeys",
            target_id = prelude.Document.id,
            list_member = prelude.String,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.RemoveTagsOutput = schema.new({
    id = id.from(_N, "RemoveTagsOutput"),
    type = "structure",
})

M.ReportTaskProgressInput = schema.new({
    id = id.from(_N, "ReportTaskProgressInput"),
    type = "structure",
    members = {
        taskId = schema.new({
            id = id.from(_N, "ReportTaskProgressInput", "taskId"),
            type = "string",
            name = "taskId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        fields = schema.new({
            id = id.from(_N, "ReportTaskProgressInput", "fields"),
            type = "list",
            name = "fields",
            target_id = prelude.Document.id,
            list_member = M.Field,
        }),
    },
})

M.ReportTaskProgressOutput = schema.new({
    id = id.from(_N, "ReportTaskProgressOutput"),
    type = "structure",
    members = {
        canceled = schema.new({
            id = id.from(_N, "ReportTaskProgressOutput", "canceled"),
            type = "boolean",
            name = "canceled",
            target_id = prelude.Boolean.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.DEFAULT] = { value = false },
            },
        }),
    },
})

M.ReportTaskRunnerHeartbeatInput = schema.new({
    id = id.from(_N, "ReportTaskRunnerHeartbeatInput"),
    type = "structure",
    members = {
        taskrunnerId = schema.new({
            id = id.from(_N, "ReportTaskRunnerHeartbeatInput", "taskrunnerId"),
            type = "string",
            name = "taskrunnerId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        workerGroup = schema.new({
            id = id.from(_N, "ReportTaskRunnerHeartbeatInput", "workerGroup"),
            type = "string",
            name = "workerGroup",
            target_id = prelude.String.id,
        }),
        hostname = schema.new({
            id = id.from(_N, "ReportTaskRunnerHeartbeatInput", "hostname"),
            type = "string",
            name = "hostname",
            target_id = prelude.String.id,
        }),
    },
})

M.ReportTaskRunnerHeartbeatOutput = schema.new({
    id = id.from(_N, "ReportTaskRunnerHeartbeatOutput"),
    type = "structure",
    members = {
        terminate = schema.new({
            id = id.from(_N, "ReportTaskRunnerHeartbeatOutput", "terminate"),
            type = "boolean",
            name = "terminate",
            target_id = prelude.Boolean.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.DEFAULT] = { value = false },
            },
        }),
    },
})

M.SetStatusInput = schema.new({
    id = id.from(_N, "SetStatusInput"),
    type = "structure",
    members = {
        pipelineId = schema.new({
            id = id.from(_N, "SetStatusInput", "pipelineId"),
            type = "string",
            name = "pipelineId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        objectIds = schema.new({
            id = id.from(_N, "SetStatusInput", "objectIds"),
            type = "list",
            name = "objectIds",
            target_id = prelude.Document.id,
            list_member = prelude.String,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        status = schema.new({
            id = id.from(_N, "SetStatusInput", "status"),
            type = "string",
            name = "status",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.SetStatusOutput = schema.new({
    id = id.from(_N, "Unit"),
    type = "structure",
})

M.SetTaskStatusInput = schema.new({
    id = id.from(_N, "SetTaskStatusInput"),
    type = "structure",
    members = {
        taskId = schema.new({
            id = id.from(_N, "SetTaskStatusInput", "taskId"),
            type = "string",
            name = "taskId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        taskStatus = schema.new({
            id = id.from(_N, "SetTaskStatusInput", "taskStatus"),
            type = "string",
            name = "taskStatus",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        errorId = schema.new({
            id = id.from(_N, "SetTaskStatusInput", "errorId"),
            type = "string",
            name = "errorId",
            target_id = prelude.String.id,
        }),
        errorMessage = schema.new({
            id = id.from(_N, "SetTaskStatusInput", "errorMessage"),
            type = "string",
            name = "errorMessage",
            target_id = prelude.String.id,
        }),
        errorStackTrace = schema.new({
            id = id.from(_N, "SetTaskStatusInput", "errorStackTrace"),
            type = "string",
            name = "errorStackTrace",
            target_id = prelude.String.id,
        }),
    },
})

M.SetTaskStatusOutput = schema.new({
    id = id.from(_N, "SetTaskStatusOutput"),
    type = "structure",
})

M.ValidatePipelineDefinitionInput = schema.new({
    id = id.from(_N, "ValidatePipelineDefinitionInput"),
    type = "structure",
    members = {
        pipelineId = schema.new({
            id = id.from(_N, "ValidatePipelineDefinitionInput", "pipelineId"),
            type = "string",
            name = "pipelineId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        pipelineObjects = schema.new({
            id = id.from(_N, "ValidatePipelineDefinitionInput", "pipelineObjects"),
            type = "list",
            name = "pipelineObjects",
            target_id = prelude.Document.id,
            list_member = M.PipelineObject,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        parameterObjects = schema.new({
            id = id.from(_N, "ValidatePipelineDefinitionInput", "parameterObjects"),
            type = "list",
            name = "parameterObjects",
            target_id = prelude.Document.id,
            list_member = M.ParameterObject,
        }),
        parameterValues = schema.new({
            id = id.from(_N, "ValidatePipelineDefinitionInput", "parameterValues"),
            type = "list",
            name = "parameterValues",
            target_id = prelude.Document.id,
            list_member = M.ParameterValue,
        }),
    },
})

M.ValidatePipelineDefinitionOutput = schema.new({
    id = id.from(_N, "ValidatePipelineDefinitionOutput"),
    type = "structure",
    members = {
        validationErrors = schema.new({
            id = id.from(_N, "ValidatePipelineDefinitionOutput", "validationErrors"),
            type = "list",
            name = "validationErrors",
            target_id = prelude.Document.id,
            list_member = M.ValidationError,
        }),
        validationWarnings = schema.new({
            id = id.from(_N, "ValidatePipelineDefinitionOutput", "validationWarnings"),
            type = "list",
            name = "validationWarnings",
            target_id = prelude.Document.id,
            list_member = M.ValidationWarning,
        }),
        errored = schema.new({
            id = id.from(_N, "ValidatePipelineDefinitionOutput", "errored"),
            type = "boolean",
            name = "errored",
            target_id = prelude.Boolean.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.DEFAULT] = { value = false },
            },
        }),
    },
})

-- Fix forward references for recursive schemas
for _, s in pairs(M) do
    if type(s) == "table" and (s.type == "structure" or s.type == "union") then
        local members = rawget(s, "_members")
        if members then
            for _, ms in pairs(members) do
                if (ms.type == "structure" or ms.type == "union") and not rawget(ms, "_target") and ms.target_id then
                    rawset(ms, "_target", M[ms.target_id.name])
                end
            end
        end
    end
end

return M
