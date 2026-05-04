local M = {}

M.ParameterValue = {
    type = "structure",
    id = "ParameterValue",
    members = {
        id = {
            type = "string",
            traits = {
                required = true,
            },
        },
        stringValue = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.ActivatePipelineInput = {
    type = "structure",
    id = "ActivatePipelineInput",
    members = {
        pipelineId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        parameterValues = {
            type = "list",
            member = M.ParameterValue,
        },
        startTimestamp = {
            type = "timestamp",
        },
    },
}

M.ActivatePipelineOutput = {
    type = "structure",
    id = "ActivatePipelineOutput",
}

M.InternalServiceError = {
    type = "structure",
    id = "InternalServiceError",
    error = "server",
    members = {
        message = {
            type = "string",
        },
    },
}

M.InvalidRequestException = {
    type = "structure",
    id = "InvalidRequestException",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.PipelineDeletedException = {
    type = "structure",
    id = "PipelineDeletedException",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.PipelineNotFoundException = {
    type = "structure",
    id = "PipelineNotFoundException",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.Tag = {
    type = "structure",
    id = "Tag",
    members = {
        key = {
            type = "string",
            traits = {
                required = true,
            },
        },
        value = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.AddTagsInput = {
    type = "structure",
    id = "AddTagsInput",
    members = {
        pipelineId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        tags = {
            type = "list",
            member = M.Tag,
            traits = {
                required = true,
            },
        },
    },
}

M.AddTagsOutput = {
    type = "structure",
    id = "AddTagsOutput",
}

M.CreatePipelineInput = {
    type = "structure",
    id = "CreatePipelineInput",
    members = {
        name = {
            type = "string",
            traits = {
                required = true,
            },
        },
        uniqueId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        description = {
            type = "string",
        },
        tags = {
            type = "list",
            member = M.Tag,
        },
    },
}

M.CreatePipelineOutput = {
    type = "structure",
    id = "CreatePipelineOutput",
    members = {
        pipelineId = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.DeactivatePipelineInput = {
    type = "structure",
    id = "DeactivatePipelineInput",
    members = {
        pipelineId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        cancelActive = {
            type = "boolean",
        },
    },
}

M.DeactivatePipelineOutput = {
    type = "structure",
    id = "DeactivatePipelineOutput",
}

M.DeletePipelineInput = {
    type = "structure",
    id = "DeletePipelineInput",
    members = {
        pipelineId = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.DeletePipelineOutput = {
    type = "structure",
    id = "DeletePipelineOutput",
}

M.DescribeObjectsInput = {
    type = "structure",
    id = "DescribeObjectsInput",
    members = {
        pipelineId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        objectIds = {
            type = "list",
            member = { type = "string" },
            traits = {
                required = true,
            },
        },
        evaluateExpressions = {
            type = "boolean",
            traits = {
                default = false,
            },
        },
        marker = {
            type = "string",
        },
    },
}

M.Field = {
    type = "structure",
    id = "Field",
    members = {
        key = {
            type = "string",
            traits = {
                required = true,
            },
        },
        stringValue = {
            type = "string",
        },
        refValue = {
            type = "string",
        },
    },
}

M.PipelineObject = {
    type = "structure",
    id = "PipelineObject",
    members = {
        id = {
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
        fields = {
            type = "list",
            member = M.Field,
            traits = {
                required = true,
            },
        },
    },
}

M.DescribeObjectsOutput = {
    type = "structure",
    id = "DescribeObjectsOutput",
    members = {
        pipelineObjects = {
            type = "list",
            member = M.PipelineObject,
            traits = {
                required = true,
            },
        },
        marker = {
            type = "string",
        },
        hasMoreResults = {
            type = "boolean",
            traits = {
                default = false,
            },
        },
    },
}

M.DescribePipelinesInput = {
    type = "structure",
    id = "DescribePipelinesInput",
    members = {
        pipelineIds = {
            type = "list",
            member = { type = "string" },
            traits = {
                required = true,
            },
        },
    },
}

M.PipelineDescription = {
    type = "structure",
    id = "PipelineDescription",
    members = {
        pipelineId = {
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
        fields = {
            type = "list",
            member = M.Field,
            traits = {
                required = true,
            },
        },
        description = {
            type = "string",
        },
        tags = {
            type = "list",
            member = M.Tag,
        },
    },
}

M.DescribePipelinesOutput = {
    type = "structure",
    id = "DescribePipelinesOutput",
    members = {
        pipelineDescriptionList = {
            type = "list",
            member = M.PipelineDescription,
            traits = {
                required = true,
            },
        },
    },
}

M.EvaluateExpressionInput = {
    type = "structure",
    id = "EvaluateExpressionInput",
    members = {
        pipelineId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        objectId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        expression = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.EvaluateExpressionOutput = {
    type = "structure",
    id = "EvaluateExpressionOutput",
    members = {
        evaluatedExpression = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.TaskNotFoundException = {
    type = "structure",
    id = "TaskNotFoundException",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.GetPipelineDefinitionInput = {
    type = "structure",
    id = "GetPipelineDefinitionInput",
    members = {
        pipelineId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        version = {
            type = "string",
        },
    },
}

M.ParameterAttribute = {
    type = "structure",
    id = "ParameterAttribute",
    members = {
        key = {
            type = "string",
            traits = {
                required = true,
            },
        },
        stringValue = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.ParameterObject = {
    type = "structure",
    id = "ParameterObject",
    members = {
        id = {
            type = "string",
            traits = {
                required = true,
            },
        },
        attributes = {
            type = "list",
            member = M.ParameterAttribute,
            traits = {
                required = true,
            },
        },
    },
}

M.GetPipelineDefinitionOutput = {
    type = "structure",
    id = "GetPipelineDefinitionOutput",
    members = {
        pipelineObjects = {
            type = "list",
            member = M.PipelineObject,
        },
        parameterObjects = {
            type = "list",
            member = M.ParameterObject,
        },
        parameterValues = {
            type = "list",
            member = M.ParameterValue,
        },
    },
}

M.ListPipelinesInput = {
    type = "structure",
    id = "ListPipelinesInput",
    members = {
        marker = {
            type = "string",
        },
    },
}

M.PipelineIdName = {
    type = "structure",
    id = "PipelineIdName",
    members = {
        id = {
            type = "string",
        },
        name = {
            type = "string",
        },
    },
}

M.ListPipelinesOutput = {
    type = "structure",
    id = "ListPipelinesOutput",
    members = {
        pipelineIdList = {
            type = "list",
            member = M.PipelineIdName,
            traits = {
                required = true,
            },
        },
        marker = {
            type = "string",
        },
        hasMoreResults = {
            type = "boolean",
            traits = {
                default = false,
            },
        },
    },
}

M.InstanceIdentity = {
    type = "structure",
    id = "InstanceIdentity",
    members = {
        document = {
            type = "string",
        },
        signature = {
            type = "string",
        },
    },
}

M.PollForTaskInput = {
    type = "structure",
    id = "PollForTaskInput",
    members = {
        workerGroup = {
            type = "string",
            traits = {
                required = true,
            },
        },
        hostname = {
            type = "string",
        },
        instanceIdentity = M.InstanceIdentity,
    },
}

M.TaskObject = {
    type = "structure",
    id = "TaskObject",
    members = {
        taskId = {
            type = "string",
        },
        pipelineId = {
            type = "string",
        },
        attemptId = {
            type = "string",
        },
        objects = {
            type = "map",
            key = { type = "string" },
            value = M.PipelineObject,
        },
    },
}

M.PollForTaskOutput = {
    type = "structure",
    id = "PollForTaskOutput",
    members = {
        taskObject = M.TaskObject,
    },
}

M.PutPipelineDefinitionInput = {
    type = "structure",
    id = "PutPipelineDefinitionInput",
    members = {
        pipelineId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        pipelineObjects = {
            type = "list",
            member = M.PipelineObject,
            traits = {
                required = true,
            },
        },
        parameterObjects = {
            type = "list",
            member = M.ParameterObject,
        },
        parameterValues = {
            type = "list",
            member = M.ParameterValue,
        },
    },
}

M.ValidationError = {
    type = "structure",
    id = "ValidationError",
    members = {
        id = {
            type = "string",
        },
        errors = {
            type = "list",
            member = { type = "string" },
        },
    },
}

M.ValidationWarning = {
    type = "structure",
    id = "ValidationWarning",
    members = {
        id = {
            type = "string",
        },
        warnings = {
            type = "list",
            member = { type = "string" },
        },
    },
}

M.PutPipelineDefinitionOutput = {
    type = "structure",
    id = "PutPipelineDefinitionOutput",
    members = {
        validationErrors = {
            type = "list",
            member = M.ValidationError,
        },
        validationWarnings = {
            type = "list",
            member = M.ValidationWarning,
        },
        errored = {
            type = "boolean",
            traits = {
                default = false,
                required = true,
            },
        },
    },
}

M.OperatorType = {
    Equal = "EQ",
    ReferenceEqual = "REF_EQ",
    LessThanOrEqual = "LE",
    GreaterThanOrEqual = "GE",
    Between = "BETWEEN",
}

M.Operator = {
    type = "structure",
    id = "Operator",
    members = {
        type = {
            type = "string",
        },
        values = {
            type = "list",
            member = { type = "string" },
        },
    },
}

M.Selector = {
    type = "structure",
    id = "Selector",
    members = {
        fieldName = {
            type = "string",
        },
        operator = M.Operator,
    },
}

M.Query = {
    type = "structure",
    id = "Query",
    members = {
        selectors = {
            type = "list",
            member = M.Selector,
        },
    },
}

M.QueryObjectsInput = {
    type = "structure",
    id = "QueryObjectsInput",
    members = {
        pipelineId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        query = M.Query,
        sphere = {
            type = "string",
            traits = {
                required = true,
            },
        },
        marker = {
            type = "string",
        },
        limit = {
            type = "integer",
        },
    },
}

M.QueryObjectsOutput = {
    type = "structure",
    id = "QueryObjectsOutput",
    members = {
        ids = {
            type = "list",
            member = { type = "string" },
        },
        marker = {
            type = "string",
        },
        hasMoreResults = {
            type = "boolean",
            traits = {
                default = false,
            },
        },
    },
}

M.RemoveTagsInput = {
    type = "structure",
    id = "RemoveTagsInput",
    members = {
        pipelineId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        tagKeys = {
            type = "list",
            member = { type = "string" },
            traits = {
                required = true,
            },
        },
    },
}

M.RemoveTagsOutput = {
    type = "structure",
    id = "RemoveTagsOutput",
}

M.ReportTaskProgressInput = {
    type = "structure",
    id = "ReportTaskProgressInput",
    members = {
        taskId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        fields = {
            type = "list",
            member = M.Field,
        },
    },
}

M.ReportTaskProgressOutput = {
    type = "structure",
    id = "ReportTaskProgressOutput",
    members = {
        canceled = {
            type = "boolean",
            traits = {
                default = false,
                required = true,
            },
        },
    },
}

M.ReportTaskRunnerHeartbeatInput = {
    type = "structure",
    id = "ReportTaskRunnerHeartbeatInput",
    members = {
        taskrunnerId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        workerGroup = {
            type = "string",
        },
        hostname = {
            type = "string",
        },
    },
}

M.ReportTaskRunnerHeartbeatOutput = {
    type = "structure",
    id = "ReportTaskRunnerHeartbeatOutput",
    members = {
        terminate = {
            type = "boolean",
            traits = {
                default = false,
                required = true,
            },
        },
    },
}

M.SetStatusInput = {
    type = "structure",
    id = "SetStatusInput",
    members = {
        pipelineId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        objectIds = {
            type = "list",
            member = { type = "string" },
            traits = {
                required = true,
            },
        },
        status = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.SetStatusOutput = {
    type = "structure",
    id = "SetStatusOutput",
}

M.TaskStatus = {
    FINISHED = "FINISHED",
    FAILED = "FAILED",
    FALSE = "FALSE",
}

M.SetTaskStatusInput = {
    type = "structure",
    id = "SetTaskStatusInput",
    members = {
        taskId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        taskStatus = {
            type = "string",
            traits = {
                required = true,
            },
        },
        errorId = {
            type = "string",
        },
        errorMessage = {
            type = "string",
        },
        errorStackTrace = {
            type = "string",
        },
    },
}

M.SetTaskStatusOutput = {
    type = "structure",
    id = "SetTaskStatusOutput",
}

M.ValidatePipelineDefinitionInput = {
    type = "structure",
    id = "ValidatePipelineDefinitionInput",
    members = {
        pipelineId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        pipelineObjects = {
            type = "list",
            member = M.PipelineObject,
            traits = {
                required = true,
            },
        },
        parameterObjects = {
            type = "list",
            member = M.ParameterObject,
        },
        parameterValues = {
            type = "list",
            member = M.ParameterValue,
        },
    },
}

M.ValidatePipelineDefinitionOutput = {
    type = "structure",
    id = "ValidatePipelineDefinitionOutput",
    members = {
        validationErrors = {
            type = "list",
            member = M.ValidationError,
        },
        validationWarnings = {
            type = "list",
            member = M.ValidationWarning,
        },
        errored = {
            type = "boolean",
            traits = {
                default = false,
                required = true,
            },
        },
    },
}

return M
