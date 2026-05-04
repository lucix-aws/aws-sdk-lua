local M = {}

M.ConflictException = {
    type = "structure",
    id = "ConflictException",
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
    id = "LogGroupConfiguration",
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
    id = "MetricConfiguration",
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
    id = "LinkConfiguration",
    members = {
        LogGroupConfiguration = M.LogGroupConfiguration,
        MetricConfiguration = M.MetricConfiguration,
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
    id = "CreateLinkInput",
    members = {
        LabelTemplate = {
            type = "string",
            traits = {
                required = true,
            },
        },
        ResourceTypes = {
            type = "list",
            member = { type = "string" },
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
            key = { type = "string" },
            value = { type = "string" },
        },
        LinkConfiguration = M.LinkConfiguration,
    },
}

M.CreateLinkOutput = {
    type = "structure",
    id = "CreateLinkOutput",
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
            member = { type = "string" },
        },
        SinkArn = {
            type = "string",
        },
        Tags = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
        LinkConfiguration = M.LinkConfiguration,
    },
}

M.InternalServiceFault = {
    type = "structure",
    id = "InternalServiceFault",
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
    id = "InvalidParameterException",
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
    id = "MissingRequiredParameterException",
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
    id = "ServiceQuotaExceededException",
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
    id = "CreateSinkInput",
    members = {
        Name = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Tags = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
    },
}

M.CreateSinkOutput = {
    type = "structure",
    id = "CreateSinkOutput",
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
            key = { type = "string" },
            value = { type = "string" },
        },
    },
}

M.DeleteLinkInput = {
    type = "structure",
    id = "DeleteLinkInput",
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
    id = "DeleteLinkOutput",
}

M.ResourceNotFoundException = {
    type = "structure",
    id = "ResourceNotFoundException",
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
    id = "DeleteSinkInput",
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
    id = "DeleteSinkOutput",
}

M.GetLinkInput = {
    type = "structure",
    id = "GetLinkInput",
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
    id = "GetLinkOutput",
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
            member = { type = "string" },
        },
        SinkArn = {
            type = "string",
        },
        Tags = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
        LinkConfiguration = M.LinkConfiguration,
    },
}

M.GetSinkInput = {
    type = "structure",
    id = "GetSinkInput",
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
    id = "GetSinkOutput",
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
            key = { type = "string" },
            value = { type = "string" },
        },
    },
}

M.GetSinkPolicyInput = {
    type = "structure",
    id = "GetSinkPolicyInput",
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
    id = "GetSinkPolicyOutput",
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
    id = "ListAttachedLinksInput",
    members = {
        MaxResults = {
            type = "integer",
            traits = {
                default = nil,
            },
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
    id = "ListAttachedLinksItem",
    members = {
        Label = {
            type = "string",
        },
        LinkArn = {
            type = "string",
        },
        ResourceTypes = {
            type = "list",
            member = { type = "string" },
        },
    },
}

M.ListAttachedLinksOutput = {
    type = "structure",
    id = "ListAttachedLinksOutput",
    members = {
        Items = {
            type = "list",
            member = M.ListAttachedLinksItem,
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
    id = "ListLinksInput",
    members = {
        MaxResults = {
            type = "integer",
            traits = {
                default = nil,
            },
        },
        NextToken = {
            type = "string",
        },
    },
}

M.ListLinksItem = {
    type = "structure",
    id = "ListLinksItem",
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
            member = { type = "string" },
        },
        SinkArn = {
            type = "string",
        },
    },
}

M.ListLinksOutput = {
    type = "structure",
    id = "ListLinksOutput",
    members = {
        Items = {
            type = "list",
            member = M.ListLinksItem,
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
    id = "ListSinksInput",
    members = {
        MaxResults = {
            type = "integer",
            traits = {
                default = nil,
            },
        },
        NextToken = {
            type = "string",
        },
    },
}

M.ListSinksItem = {
    type = "structure",
    id = "ListSinksItem",
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
    id = "ListSinksOutput",
    members = {
        Items = {
            type = "list",
            member = M.ListSinksItem,
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

M.ListTagsForResourceOutput = {
    type = "structure",
    id = "ListTagsForResourceOutput",
    members = {
        Tags = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
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
        },
    },
}

M.PutSinkPolicyInput = {
    type = "structure",
    id = "PutSinkPolicyInput",
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
    id = "PutSinkPolicyOutput",
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
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
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

M.TooManyTagsException = {
    type = "structure",
    id = "TooManyTagsException",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
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
                http_query = "tagKeys",
                required = true,
            },
        },
    },
}

M.UntagResourceOutput = {
    type = "structure",
    id = "UntagResourceOutput",
}

M.UpdateLinkInput = {
    type = "structure",
    id = "UpdateLinkInput",
    members = {
        Identifier = {
            type = "string",
            traits = {
                required = true,
            },
        },
        ResourceTypes = {
            type = "list",
            member = { type = "string" },
            traits = {
                required = true,
            },
        },
        LinkConfiguration = M.LinkConfiguration,
        IncludeTags = {
            type = "boolean",
        },
    },
}

M.UpdateLinkOutput = {
    type = "structure",
    id = "UpdateLinkOutput",
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
            member = { type = "string" },
        },
        SinkArn = {
            type = "string",
        },
        Tags = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
        LinkConfiguration = M.LinkConfiguration,
    },
}

return M
