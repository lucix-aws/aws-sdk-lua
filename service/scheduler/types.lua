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
    members = {
        Tags = {
            type = "list",
            member_type = "structure",
        },
    },
}

M.ResourceNotFoundException = {
    type = "structure",
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
    members = {
        Mode = {
            type = "string",
            traits = {
                required = true,
            },
        },
        MaximumWindowInMinutes = {
            type = "number",
        },
    },
}

M.ScheduleState = {
    ENABLED = "ENABLED",
    DISABLED = "DISABLED",
}

M.DeadLetterConfig = {
    type = "structure",
    members = {
        Arn = {
            type = "string",
        },
    },
}

M.CapacityProviderStrategyItem = {
    type = "structure",
    members = {
        capacityProvider = {
            type = "string",
            traits = {
                required = true,
            },
        },
        weight = {
            type = "number",
        },
        base = {
            type = "number",
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
    members = {
        Subnets = {
            type = "list",
            member_type = "string",
            traits = {
                required = true,
            },
        },
        SecurityGroups = {
            type = "list",
            member_type = "string",
        },
        AssignPublicIp = {
            type = "string",
        },
    },
}

M.NetworkConfiguration = {
    type = "structure",
    members = {
        awsvpcConfiguration = {
            type = "structure",
        },
    },
}

M.PlacementConstraintType = {
    DISTINCT_INSTANCE = "distinctInstance",
    MEMBER_OF = "memberOf",
}

M.PlacementConstraint = {
    type = "structure",
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
    members = {
        TaskDefinitionArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        TaskCount = {
            type = "number",
        },
        LaunchType = {
            type = "string",
        },
        NetworkConfiguration = {
            type = "structure",
        },
        PlatformVersion = {
            type = "string",
        },
        Group = {
            type = "string",
        },
        CapacityProviderStrategy = {
            type = "list",
            member_type = "structure",
        },
        EnableECSManagedTags = {
            type = "boolean",
        },
        EnableExecuteCommand = {
            type = "boolean",
        },
        PlacementConstraints = {
            type = "list",
            member_type = "structure",
        },
        PlacementStrategy = {
            type = "list",
            member_type = "structure",
        },
        PropagateTags = {
            type = "string",
        },
        ReferenceId = {
            type = "string",
        },
        Tags = {
            type = "list",
            member_type = "map",
        },
    },
}

M.EventBridgeParameters = {
    type = "structure",
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
    members = {
        MaximumEventAgeInSeconds = {
            type = "number",
        },
        MaximumRetryAttempts = {
            type = "number",
        },
    },
}

M.SageMakerPipelineParameter = {
    type = "structure",
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
    members = {
        PipelineParameterList = {
            type = "list",
            member_type = "structure",
        },
    },
}

M.SqsParameters = {
    type = "structure",
    members = {
        MessageGroupId = {
            type = "string",
        },
    },
}

M.Target = {
    type = "structure",
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
        DeadLetterConfig = {
            type = "structure",
        },
        RetryPolicy = {
            type = "structure",
        },
        Input = {
            type = "string",
        },
        EcsParameters = {
            type = "structure",
        },
        EventBridgeParameters = {
            type = "structure",
        },
        KinesisParameters = {
            type = "structure",
        },
        SageMakerPipelineParameters = {
            type = "structure",
        },
        SqsParameters = {
            type = "structure",
        },
    },
}

M.CreateScheduleInput = {
    type = "structure",
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
        Target = {
            type = "structure",
            traits = {
                required = true,
            },
        },
        FlexibleTimeWindow = {
            type = "structure",
            traits = {
                required = true,
            },
        },
        ClientToken = {
            type = "string",
        },
        ActionAfterCompletion = {
            type = "string",
        },
    },
}

M.CreateScheduleOutput = {
    type = "structure",
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
            },
        },
    },
}

M.DeleteScheduleOutput = {
    type = "structure",
}

M.GetScheduleInput = {
    type = "structure",
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
        Target = {
            type = "structure",
        },
        FlexibleTimeWindow = {
            type = "structure",
        },
        ActionAfterCompletion = {
            type = "string",
        },
    },
}

M.ListSchedulesInput = {
    type = "structure",
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
            type = "number",
            traits = {
                http_query = "MaxResults",
            },
        },
    },
}

M.TargetSummary = {
    type = "structure",
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
        Target = {
            type = "structure",
        },
    },
}

M.ListSchedulesOutput = {
    type = "structure",
    members = {
        NextToken = {
            type = "string",
        },
        Schedules = {
            type = "list",
            member_type = "structure",
            traits = {
                required = true,
            },
        },
    },
}

M.UpdateScheduleInput = {
    type = "structure",
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
        Target = {
            type = "structure",
            traits = {
                required = true,
            },
        },
        FlexibleTimeWindow = {
            type = "structure",
            traits = {
                required = true,
            },
        },
        ClientToken = {
            type = "string",
        },
        ActionAfterCompletion = {
            type = "string",
        },
    },
}

M.UpdateScheduleOutput = {
    type = "structure",
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
            member_type = "structure",
        },
        ClientToken = {
            type = "string",
        },
    },
}

M.CreateScheduleGroupOutput = {
    type = "structure",
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
            },
        },
    },
}

M.DeleteScheduleGroupOutput = {
    type = "structure",
}

M.GetScheduleGroupInput = {
    type = "structure",
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
            type = "number",
            traits = {
                http_query = "MaxResults",
            },
        },
    },
}

M.ScheduleGroupSummary = {
    type = "structure",
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
    members = {
        NextToken = {
            type = "string",
        },
        ScheduleGroups = {
            type = "list",
            member_type = "structure",
            traits = {
                required = true,
            },
        },
    },
}

M.TagResourceInput = {
    type = "structure",
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
            member_type = "structure",
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
        ResourceArn = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        TagKeys = {
            type = "list",
            member_type = "string",
            traits = {
                http_query = "TagKeys",
                required = true,
            },
        },
    },
}

M.UntagResourceOutput = {
    type = "structure",
}

return M
