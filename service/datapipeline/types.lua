local M = {}

M.ParameterValue = {
    type = "structure",
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
}

M.InternalServiceError = {
    type = "structure",
    error = "server",
    members = {
        message = {
            type = "string",
        },
    },
}

M.InvalidRequestException = {
    type = "structure",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.PipelineDeletedException = {
    type = "structure",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.PipelineNotFoundException = {
    type = "structure",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.Tag = {
    type = "structure",
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
}

M.CreatePipelineInput = {
    type = "structure",
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
}

M.DeletePipelineInput = {
    type = "structure",
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
}

M.DescribeObjectsInput = {
    type = "structure",
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
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.GetPipelineDefinitionInput = {
    type = "structure",
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
    members = {
        marker = {
            type = "string",
        },
    },
}

M.PipelineIdName = {
    type = "structure",
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
    members = {
        taskObject = M.TaskObject,
    },
}

M.PutPipelineDefinitionInput = {
    type = "structure",
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
    members = {
        fieldName = {
            type = "string",
        },
        operator = M.Operator,
    },
}

M.Query = {
    type = "structure",
    members = {
        selectors = {
            type = "list",
            member = M.Selector,
        },
    },
}

M.QueryObjectsInput = {
    type = "structure",
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
}

M.ReportTaskProgressInput = {
    type = "structure",
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
}

M.TaskStatus = {
    FINISHED = "FINISHED",
    FAILED = "FAILED",
    FALSE = "FALSE",
}

M.SetTaskStatusInput = {
    type = "structure",
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
}

M.ValidatePipelineDefinitionInput = {
    type = "structure",
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
