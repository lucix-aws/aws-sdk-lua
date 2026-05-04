local M = {}

M.ConflictException = {
    type = "structure",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
        amznErrorType = {
            type = "string",
            traits = {
                http_header = "x-amzn-ErrorType",
            },
        },
    },
}

M.LogGroupConfiguration = {
    type = "structure",
    members = {
        Filter = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.MetricConfiguration = {
    type = "structure",
    members = {
        Filter = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.LinkConfiguration = {
    type = "structure",
    members = {
        LogGroupConfiguration = {
            type = "structure",
        },
        MetricConfiguration = {
            type = "structure",
        },
    },
}

M.ResourceType = {
    AWS_CLOUDWATCH_METRIC = "AWS::CloudWatch::Metric",
    AWS_LOGS_LOGGROUP = "AWS::Logs::LogGroup",
    AWS_XRAY_TRACE = "AWS::XRay::Trace",
    AWS_APPLICATIONINSIGHTS_APPLICATION = "AWS::ApplicationInsights::Application",
    AWS_INTERNETMONITOR_MONITOR = "AWS::InternetMonitor::Monitor",
    AWS_APPLICATION_SIGNALS_SERVICE = "AWS::ApplicationSignals::Service",
    AWS_APPLICATION_SIGNALS_SLO = "AWS::ApplicationSignals::ServiceLevelObjective",
}

M.CreateLinkInput = {
    type = "structure",
    members = {
        LabelTemplate = {
            type = "string",
            traits = {
                required = true,
            },
        },
        ResourceTypes = {
            type = "list",
            member_type = "string",
            traits = {
                required = true,
            },
        },
        SinkIdentifier = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Tags = {
            type = "map",
            key_type = "string",
            value_type = "string",
        },
        LinkConfiguration = {
            type = "structure",
        },
    },
}

M.CreateLinkOutput = {
    type = "structure",
    members = {
        Arn = {
            type = "string",
        },
        Id = {
            type = "string",
        },
        Label = {
            type = "string",
        },
        LabelTemplate = {
            type = "string",
        },
        ResourceTypes = {
            type = "list",
            member_type = "string",
        },
        SinkArn = {
            type = "string",
        },
        Tags = {
            type = "map",
            key_type = "string",
            value_type = "string",
        },
        LinkConfiguration = {
            type = "structure",
        },
    },
}

M.InternalServiceFault = {
    type = "structure",
    error = "server",
    members = {
        Message = {
            type = "string",
        },
        amznErrorType = {
            type = "string",
            traits = {
                http_header = "x-amzn-ErrorType",
            },
        },
    },
}

M.InvalidParameterException = {
    type = "structure",
    error = "client",
    members = {
        message = {
            type = "string",
        },
        amznErrorType = {
            type = "string",
            traits = {
                http_header = "x-amzn-ErrorType",
            },
        },
    },
}

M.MissingRequiredParameterException = {
    type = "structure",
    error = "client",
    members = {
        message = {
            type = "string",
        },
        amznErrorType = {
            type = "string",
            traits = {
                http_header = "x-amzn-ErrorType",
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
        },
        amznErrorType = {
            type = "string",
            traits = {
                http_header = "x-amzn-ErrorType",
            },
        },
    },
}

M.CreateSinkInput = {
    type = "structure",
    members = {
        Name = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Tags = {
            type = "map",
            key_type = "string",
            value_type = "string",
        },
    },
}

M.CreateSinkOutput = {
    type = "structure",
    members = {
        Arn = {
            type = "string",
        },
        Id = {
            type = "string",
        },
        Name = {
            type = "string",
        },
        Tags = {
            type = "map",
            key_type = "string",
            value_type = "string",
        },
    },
}

M.DeleteLinkInput = {
    type = "structure",
    members = {
        Identifier = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.DeleteLinkOutput = {
    type = "structure",
}

M.ResourceNotFoundException = {
    type = "structure",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
        amznErrorType = {
            type = "string",
            traits = {
                http_header = "x-amzn-ErrorType",
            },
        },
    },
}

M.DeleteSinkInput = {
    type = "structure",
    members = {
        Identifier = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.DeleteSinkOutput = {
    type = "structure",
}

M.GetLinkInput = {
    type = "structure",
    members = {
        Identifier = {
            type = "string",
            traits = {
                required = true,
            },
        },
        IncludeTags = {
            type = "boolean",
        },
    },
}

M.GetLinkOutput = {
    type = "structure",
    members = {
        Arn = {
            type = "string",
        },
        Id = {
            type = "string",
        },
        Label = {
            type = "string",
        },
        LabelTemplate = {
            type = "string",
        },
        ResourceTypes = {
            type = "list",
            member_type = "string",
        },
        SinkArn = {
            type = "string",
        },
        Tags = {
            type = "map",
            key_type = "string",
            value_type = "string",
        },
        LinkConfiguration = {
            type = "structure",
        },
    },
}

M.GetSinkInput = {
    type = "structure",
    members = {
        Identifier = {
            type = "string",
            traits = {
                required = true,
            },
        },
        IncludeTags = {
            type = "boolean",
        },
    },
}

M.GetSinkOutput = {
    type = "structure",
    members = {
        Arn = {
            type = "string",
        },
        Id = {
            type = "string",
        },
        Name = {
            type = "string",
        },
        Tags = {
            type = "map",
            key_type = "string",
            value_type = "string",
        },
    },
}

M.GetSinkPolicyInput = {
    type = "structure",
    members = {
        SinkIdentifier = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.GetSinkPolicyOutput = {
    type = "structure",
    members = {
        SinkArn = {
            type = "string",
        },
        SinkId = {
            type = "string",
        },
        Policy = {
            type = "string",
        },
    },
}

M.ListAttachedLinksInput = {
    type = "structure",
    members = {
        MaxResults = {
            type = "number",
        },
        NextToken = {
            type = "string",
        },
        SinkIdentifier = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.ListAttachedLinksItem = {
    type = "structure",
    members = {
        Label = {
            type = "string",
        },
        LinkArn = {
            type = "string",
        },
        ResourceTypes = {
            type = "list",
            member_type = "string",
        },
    },
}

M.ListAttachedLinksOutput = {
    type = "structure",
    members = {
        Items = {
            type = "list",
            member_type = "structure",
            traits = {
                required = true,
            },
        },
        NextToken = {
            type = "string",
        },
    },
}

M.ListLinksInput = {
    type = "structure",
    members = {
        MaxResults = {
            type = "number",
        },
        NextToken = {
            type = "string",
        },
    },
}

M.ListLinksItem = {
    type = "structure",
    members = {
        Arn = {
            type = "string",
        },
        Id = {
            type = "string",
        },
        Label = {
            type = "string",
        },
        ResourceTypes = {
            type = "list",
            member_type = "string",
        },
        SinkArn = {
            type = "string",
        },
    },
}

M.ListLinksOutput = {
    type = "structure",
    members = {
        Items = {
            type = "list",
            member_type = "structure",
            traits = {
                required = true,
            },
        },
        NextToken = {
            type = "string",
        },
    },
}

M.ListSinksInput = {
    type = "structure",
    members = {
        MaxResults = {
            type = "number",
        },
        NextToken = {
            type = "string",
        },
    },
}

M.ListSinksItem = {
    type = "structure",
    members = {
        Arn = {
            type = "string",
        },
        Id = {
            type = "string",
        },
        Name = {
            type = "string",
        },
    },
}

M.ListSinksOutput = {
    type = "structure",
    members = {
        Items = {
            type = "list",
            member_type = "structure",
            traits = {
                required = true,
            },
        },
        NextToken = {
            type = "string",
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

M.ListTagsForResourceOutput = {
    type = "structure",
    members = {
        Tags = {
            type = "map",
            key_type = "string",
            value_type = "string",
        },
    },
}

M.ValidationException = {
    type = "structure",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.PutSinkPolicyInput = {
    type = "structure",
    members = {
        SinkIdentifier = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Policy = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.PutSinkPolicyOutput = {
    type = "structure",
    members = {
        SinkArn = {
            type = "string",
        },
        SinkId = {
            type = "string",
        },
        Policy = {
            type = "string",
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

M.TooManyTagsException = {
    type = "structure",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
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
                http_query = "tagKeys",
                required = true,
            },
        },
    },
}

M.UntagResourceOutput = {
    type = "structure",
}

M.UpdateLinkInput = {
    type = "structure",
    members = {
        Identifier = {
            type = "string",
            traits = {
                required = true,
            },
        },
        ResourceTypes = {
            type = "list",
            member_type = "string",
            traits = {
                required = true,
            },
        },
        LinkConfiguration = {
            type = "structure",
        },
        IncludeTags = {
            type = "boolean",
        },
    },
}

M.UpdateLinkOutput = {
    type = "structure",
    members = {
        Arn = {
            type = "string",
        },
        Id = {
            type = "string",
        },
        Label = {
            type = "string",
        },
        LabelTemplate = {
            type = "string",
        },
        ResourceTypes = {
            type = "list",
            member_type = "string",
        },
        SinkArn = {
            type = "string",
        },
        Tags = {
            type = "map",
            key_type = "string",
            value_type = "string",
        },
        LinkConfiguration = {
            type = "structure",
        },
    },
}

return M
