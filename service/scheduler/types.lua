local M = {}

M.ActionAfterCompletion = {
    NONE = "NONE",
    DELETE = "DELETE",
}

M.AssignPublicIp = {
    ENABLED = "ENABLED",
    DISABLED = "DISABLED",
}

M.InternalServerException = {
    type = "structure",
    id = "InternalServerException",
    error = "server",
    members = {
        Message = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.ListTagsForResourceInput = {
    type = "structure",
    id = "ListTagsForResourceInput",
    members = {
        ResourceArn = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.Tag = {
    type = "structure",
    id = "Tag",
    members = {
        Key = {
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

M.ListTagsForResourceOutput = {
    type = "structure",
    id = "ListTagsForResourceOutput",
    members = {
        Tags = {
            type = "list",
            member = M.Tag,
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
            traits = {
                required = true,
            },
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
    },
}

M.ValidationException = {
    type = "structure",
    id = "ValidationException",
    error = "client",
    members = {
        Message = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.ConflictException = {
    type = "structure",
    id = "ConflictException",
    error = "client",
    members = {
        Message = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.FlexibleTimeWindowMode = {
    OFF = "OFF",
    FLEXIBLE = "FLEXIBLE",
}

M.FlexibleTimeWindow = {
    type = "structure",
    id = "FlexibleTimeWindow",
    members = {
        Mode = {
            type = "string",
            traits = {
                required = true,
            },
        },
        MaximumWindowInMinutes = {
            type = "integer",
        },
    },
}

M.ScheduleState = {
    ENABLED = "ENABLED",
    DISABLED = "DISABLED",
}

M.DeadLetterConfig = {
    type = "structure",
    id = "DeadLetterConfig",
    members = {
        Arn = {
            type = "string",
        },
    },
}

M.CapacityProviderStrategyItem = {
    type = "structure",
    id = "CapacityProviderStrategyItem",
    members = {
        capacityProvider = {
            type = "string",
            traits = {
                required = true,
            },
        },
        weight = {
            type = "integer",
            traits = {
                default = 0,
            },
        },
        base = {
            type = "integer",
            traits = {
                default = 0,
            },
        },
    },
}

M.LaunchType = {
    EC2 = "EC2",
    FARGATE = "FARGATE",
    EXTERNAL = "EXTERNAL",
}

M.AwsVpcConfiguration = {
    type = "structure",
    id = "AwsVpcConfiguration",
    members = {
        Subnets = {
            type = "list",
            member = { type = "string" },
            traits = {
                required = true,
            },
        },
        SecurityGroups = {
            type = "list",
            member = { type = "string" },
        },
        AssignPublicIp = {
            type = "string",
        },
    },
}

M.NetworkConfiguration = {
    type = "structure",
    id = "NetworkConfiguration",
    members = {
        awsvpcConfiguration = M.AwsVpcConfiguration,
    },
}

M.PlacementConstraintType = {
    DISTINCT_INSTANCE = "distinctInstance",
    MEMBER_OF = "memberOf",
}

M.PlacementConstraint = {
    type = "structure",
    id = "PlacementConstraint",
    members = {
        type = {
            type = "string",
        },
        expression = {
            type = "string",
        },
    },
}

M.PlacementStrategyType = {
    RANDOM = "random",
    SPREAD = "spread",
    BINPACK = "binpack",
}

M.PlacementStrategy = {
    type = "structure",
    id = "PlacementStrategy",
    members = {
        type = {
            type = "string",
        },
        field = {
            type = "string",
        },
    },
}

M.PropagateTags = {
    TASK_DEFINITION = "TASK_DEFINITION",
}

M.EcsParameters = {
    type = "structure",
    id = "EcsParameters",
    members = {
        TaskDefinitionArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        TaskCount = {
            type = "integer",
        },
        LaunchType = {
            type = "string",
        },
        NetworkConfiguration = M.NetworkConfiguration,
        PlatformVersion = {
            type = "string",
        },
        Group = {
            type = "string",
        },
        CapacityProviderStrategy = {
            type = "list",
            member = M.CapacityProviderStrategyItem,
        },
        EnableECSManagedTags = {
            type = "boolean",
        },
        EnableExecuteCommand = {
            type = "boolean",
        },
        PlacementConstraints = {
            type = "list",
            member = M.PlacementConstraint,
        },
        PlacementStrategy = {
            type = "list",
            member = M.PlacementStrategy,
        },
        PropagateTags = {
            type = "string",
        },
        ReferenceId = {
            type = "string",
        },
        Tags = {
            type = "list",
            member = { type = "map" },
        },
    },
}

M.EventBridgeParameters = {
    type = "structure",
    id = "EventBridgeParameters",
    members = {
        DetailType = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Source = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.KinesisParameters = {
    type = "structure",
    id = "KinesisParameters",
    members = {
        PartitionKey = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.RetryPolicy = {
    type = "structure",
    id = "RetryPolicy",
    members = {
        MaximumEventAgeInSeconds = {
            type = "integer",
        },
        MaximumRetryAttempts = {
            type = "integer",
        },
    },
}

M.SageMakerPipelineParameter = {
    type = "structure",
    id = "SageMakerPipelineParameter",
    members = {
        Name = {
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

M.SageMakerPipelineParameters = {
    type = "structure",
    id = "SageMakerPipelineParameters",
    members = {
        PipelineParameterList = {
            type = "list",
            member = M.SageMakerPipelineParameter,
        },
    },
}

M.SqsParameters = {
    type = "structure",
    id = "SqsParameters",
    members = {
        MessageGroupId = {
            type = "string",
        },
    },
}

M.Target = {
    type = "structure",
    id = "Target",
    members = {
        Arn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        RoleArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        DeadLetterConfig = M.DeadLetterConfig,
        RetryPolicy = M.RetryPolicy,
        Input = {
            type = "string",
        },
        EcsParameters = M.EcsParameters,
        EventBridgeParameters = M.EventBridgeParameters,
        KinesisParameters = M.KinesisParameters,
        SageMakerPipelineParameters = M.SageMakerPipelineParameters,
        SqsParameters = M.SqsParameters,
    },
}

M.CreateScheduleInput = {
    type = "structure",
    id = "CreateScheduleInput",
    members = {
        Name = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        GroupName = {
            type = "string",
        },
        ScheduleExpression = {
            type = "string",
            traits = {
                required = true,
            },
        },
        StartDate = {
            type = "timestamp",
        },
        EndDate = {
            type = "timestamp",
        },
        Description = {
            type = "string",
        },
        ScheduleExpressionTimezone = {
            type = "string",
        },
        State = {
            type = "string",
        },
        KmsKeyArn = {
            type = "string",
        },
        Target = setmetatable({ traits = {
            required = true,
        } }, { __index = M.Target }),
        FlexibleTimeWindow = setmetatable({ traits = {
            required = true,
        } }, { __index = M.FlexibleTimeWindow }),
        ClientToken = {
            type = "string",
            traits = {
                idempotency_token = true,
            },
        },
        ActionAfterCompletion = {
            type = "string",
        },
    },
}

M.CreateScheduleOutput = {
    type = "structure",
    id = "CreateScheduleOutput",
    members = {
        ScheduleArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.ServiceQuotaExceededException = {
    type = "structure",
    id = "ServiceQuotaExceededException",
    error = "client",
    members = {
        Message = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.DeleteScheduleInput = {
    type = "structure",
    id = "DeleteScheduleInput",
    members = {
        Name = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        GroupName = {
            type = "string",
            traits = {
                http_query = "groupName",
            },
        },
        ClientToken = {
            type = "string",
            traits = {
                http_query = "clientToken",
                idempotency_token = true,
            },
        },
    },
}

M.DeleteScheduleOutput = {
    type = "structure",
    id = "DeleteScheduleOutput",
}

M.GetScheduleInput = {
    type = "structure",
    id = "GetScheduleInput",
    members = {
        Name = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        GroupName = {
            type = "string",
            traits = {
                http_query = "groupName",
            },
        },
    },
}

M.GetScheduleOutput = {
    type = "structure",
    id = "GetScheduleOutput",
    members = {
        Arn = {
            type = "string",
        },
        GroupName = {
            type = "string",
        },
        Name = {
            type = "string",
        },
        ScheduleExpression = {
            type = "string",
        },
        StartDate = {
            type = "timestamp",
        },
        EndDate = {
            type = "timestamp",
        },
        Description = {
            type = "string",
        },
        ScheduleExpressionTimezone = {
            type = "string",
        },
        State = {
            type = "string",
        },
        CreationDate = {
            type = "timestamp",
        },
        LastModificationDate = {
            type = "timestamp",
        },
        KmsKeyArn = {
            type = "string",
        },
        Target = M.Target,
        FlexibleTimeWindow = M.FlexibleTimeWindow,
        ActionAfterCompletion = {
            type = "string",
        },
    },
}

M.ListSchedulesInput = {
    type = "structure",
    id = "ListSchedulesInput",
    members = {
        GroupName = {
            type = "string",
            traits = {
                http_query = "ScheduleGroup",
            },
        },
        NamePrefix = {
            type = "string",
            traits = {
                http_query = "NamePrefix",
            },
        },
        State = {
            type = "string",
            traits = {
                http_query = "State",
            },
        },
        NextToken = {
            type = "string",
            traits = {
                http_query = "NextToken",
            },
        },
        MaxResults = {
            type = "integer",
            traits = {
                http_query = "MaxResults",
            },
        },
    },
}

M.TargetSummary = {
    type = "structure",
    id = "TargetSummary",
    members = {
        Arn = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.ScheduleSummary = {
    type = "structure",
    id = "ScheduleSummary",
    members = {
        Arn = {
            type = "string",
        },
        Name = {
            type = "string",
        },
        GroupName = {
            type = "string",
        },
        State = {
            type = "string",
        },
        CreationDate = {
            type = "timestamp",
        },
        LastModificationDate = {
            type = "timestamp",
        },
        Target = M.TargetSummary,
    },
}

M.ListSchedulesOutput = {
    type = "structure",
    id = "ListSchedulesOutput",
    members = {
        NextToken = {
            type = "string",
        },
        Schedules = {
            type = "list",
            member = M.ScheduleSummary,
            traits = {
                required = true,
            },
        },
    },
}

M.UpdateScheduleInput = {
    type = "structure",
    id = "UpdateScheduleInput",
    members = {
        Name = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        GroupName = {
            type = "string",
        },
        ScheduleExpression = {
            type = "string",
            traits = {
                required = true,
            },
        },
        StartDate = {
            type = "timestamp",
        },
        EndDate = {
            type = "timestamp",
        },
        Description = {
            type = "string",
        },
        ScheduleExpressionTimezone = {
            type = "string",
        },
        State = {
            type = "string",
        },
        KmsKeyArn = {
            type = "string",
        },
        Target = setmetatable({ traits = {
            required = true,
        } }, { __index = M.Target }),
        FlexibleTimeWindow = setmetatable({ traits = {
            required = true,
        } }, { __index = M.FlexibleTimeWindow }),
        ClientToken = {
            type = "string",
            traits = {
                idempotency_token = true,
            },
        },
        ActionAfterCompletion = {
            type = "string",
        },
    },
}

M.UpdateScheduleOutput = {
    type = "structure",
    id = "UpdateScheduleOutput",
    members = {
        ScheduleArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.CreateScheduleGroupInput = {
    type = "structure",
    id = "CreateScheduleGroupInput",
    members = {
        Name = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        Tags = {
            type = "list",
            member = M.Tag,
        },
        ClientToken = {
            type = "string",
            traits = {
                idempotency_token = true,
            },
        },
    },
}

M.CreateScheduleGroupOutput = {
    type = "structure",
    id = "CreateScheduleGroupOutput",
    members = {
        ScheduleGroupArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.DeleteScheduleGroupInput = {
    type = "structure",
    id = "DeleteScheduleGroupInput",
    members = {
        Name = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        ClientToken = {
            type = "string",
            traits = {
                http_query = "clientToken",
                idempotency_token = true,
            },
        },
    },
}

M.DeleteScheduleGroupOutput = {
    type = "structure",
    id = "DeleteScheduleGroupOutput",
}

M.GetScheduleGroupInput = {
    type = "structure",
    id = "GetScheduleGroupInput",
    members = {
        Name = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.ScheduleGroupState = {
    ACTIVE = "ACTIVE",
    DELETING = "DELETING",
}

M.GetScheduleGroupOutput = {
    type = "structure",
    id = "GetScheduleGroupOutput",
    members = {
        Arn = {
            type = "string",
        },
        Name = {
            type = "string",
        },
        State = {
            type = "string",
        },
        CreationDate = {
            type = "timestamp",
        },
        LastModificationDate = {
            type = "timestamp",
        },
    },
}

M.ListScheduleGroupsInput = {
    type = "structure",
    id = "ListScheduleGroupsInput",
    members = {
        NamePrefix = {
            type = "string",
            traits = {
                http_query = "NamePrefix",
            },
        },
        NextToken = {
            type = "string",
            traits = {
                http_query = "NextToken",
            },
        },
        MaxResults = {
            type = "integer",
            traits = {
                http_query = "MaxResults",
            },
        },
    },
}

M.ScheduleGroupSummary = {
    type = "structure",
    id = "ScheduleGroupSummary",
    members = {
        Arn = {
            type = "string",
        },
        Name = {
            type = "string",
        },
        State = {
            type = "string",
        },
        CreationDate = {
            type = "timestamp",
        },
        LastModificationDate = {
            type = "timestamp",
        },
    },
}

M.ListScheduleGroupsOutput = {
    type = "structure",
    id = "ListScheduleGroupsOutput",
    members = {
        NextToken = {
            type = "string",
        },
        ScheduleGroups = {
            type = "list",
            member = M.ScheduleGroupSummary,
            traits = {
                required = true,
            },
        },
    },
}

M.TagResourceInput = {
    type = "structure",
    id = "TagResourceInput",
    members = {
        ResourceArn = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        Tags = {
            type = "list",
            member = M.Tag,
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
        ResourceArn = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        TagKeys = {
            type = "list",
            member = { type = "string" },
            traits = {
                http_query = "TagKeys",
                required = true,
            },
        },
    },
}

M.UntagResourceOutput = {
    type = "structure",
    id = "UntagResourceOutput",
}

return M
