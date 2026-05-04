local M = {}

M.MethodName = {
    PUT = "PUT",
    GET = "GET",
    DELETE = "DELETE",
    HEAD = "HEAD",
}

M.ContainerStatus = {
    ACTIVE = "ACTIVE",
    CREATING = "CREATING",
    DELETING = "DELETING",
}

M.Container = {
    type = "structure",
    id = "Container",
    members = {
        Endpoint = {
            type = "string",
        },
        CreationTime = {
            type = "timestamp",
        },
        ARN = {
            type = "string",
        },
        Name = {
            type = "string",
        },
        Status = {
            type = "string",
        },
        AccessLoggingEnabled = {
            type = "boolean",
        },
    },
}

M.ContainerInUseException = {
    type = "structure",
    id = "ContainerInUseException",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.ContainerLevelMetrics = {
    ENABLED = "ENABLED",
    DISABLED = "DISABLED",
}

M.ContainerNotFoundException = {
    type = "structure",
    id = "ContainerNotFoundException",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.CorsRule = {
    type = "structure",
    id = "CorsRule",
    members = {
        AllowedOrigins = {
            type = "list",
            member = { type = "string" },
            traits = {
                required = true,
            },
        },
        AllowedMethods = {
            type = "list",
            member = { type = "string" },
        },
        AllowedHeaders = {
            type = "list",
            member = { type = "string" },
            traits = {
                required = true,
            },
        },
        MaxAgeSeconds = {
            type = "integer",
            traits = {
                default = 0,
            },
        },
        ExposeHeaders = {
            type = "list",
            member = { type = "string" },
        },
    },
}

M.CorsPolicyNotFoundException = {
    type = "structure",
    id = "CorsPolicyNotFoundException",
    error = "client",
    members = {
        Message = {
            type = "string",
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
        },
    },
}

M.CreateContainerInput = {
    type = "structure",
    id = "CreateContainerInput",
    members = {
        ContainerName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Tags = {
            type = "list",
            member = M.Tag,
        },
    },
}

M.CreateContainerOutput = {
    type = "structure",
    id = "CreateContainerOutput",
    members = {
        Container = setmetatable({ traits = {
            required = true,
        } }, { __index = M.Container }),
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

M.LimitExceededException = {
    type = "structure",
    id = "LimitExceededException",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.DeleteContainerInput = {
    type = "structure",
    id = "DeleteContainerInput",
    members = {
        ContainerName = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.DeleteContainerOutput = {
    type = "structure",
    id = "DeleteContainerOutput",
}

M.DeleteContainerPolicyInput = {
    type = "structure",
    id = "DeleteContainerPolicyInput",
    members = {
        ContainerName = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.DeleteContainerPolicyOutput = {
    type = "structure",
    id = "DeleteContainerPolicyOutput",
}

M.PolicyNotFoundException = {
    type = "structure",
    id = "PolicyNotFoundException",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.DeleteCorsPolicyInput = {
    type = "structure",
    id = "DeleteCorsPolicyInput",
    members = {
        ContainerName = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.DeleteCorsPolicyOutput = {
    type = "structure",
    id = "DeleteCorsPolicyOutput",
}

M.DeleteLifecyclePolicyInput = {
    type = "structure",
    id = "DeleteLifecyclePolicyInput",
    members = {
        ContainerName = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.DeleteLifecyclePolicyOutput = {
    type = "structure",
    id = "DeleteLifecyclePolicyOutput",
}

M.DeleteMetricPolicyInput = {
    type = "structure",
    id = "DeleteMetricPolicyInput",
    members = {
        ContainerName = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.DeleteMetricPolicyOutput = {
    type = "structure",
    id = "DeleteMetricPolicyOutput",
}

M.DescribeContainerInput = {
    type = "structure",
    id = "DescribeContainerInput",
    members = {
        ContainerName = {
            type = "string",
        },
    },
}

M.DescribeContainerOutput = {
    type = "structure",
    id = "DescribeContainerOutput",
    members = {
        Container = M.Container,
    },
}

M.GetContainerPolicyInput = {
    type = "structure",
    id = "GetContainerPolicyInput",
    members = {
        ContainerName = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.GetContainerPolicyOutput = {
    type = "structure",
    id = "GetContainerPolicyOutput",
    members = {
        Policy = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.GetCorsPolicyInput = {
    type = "structure",
    id = "GetCorsPolicyInput",
    members = {
        ContainerName = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.GetCorsPolicyOutput = {
    type = "structure",
    id = "GetCorsPolicyOutput",
    members = {
        CorsPolicy = {
            type = "list",
            member = M.CorsRule,
            traits = {
                required = true,
            },
        },
    },
}

M.GetLifecyclePolicyInput = {
    type = "structure",
    id = "GetLifecyclePolicyInput",
    members = {
        ContainerName = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.GetLifecyclePolicyOutput = {
    type = "structure",
    id = "GetLifecyclePolicyOutput",
    members = {
        LifecyclePolicy = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.GetMetricPolicyInput = {
    type = "structure",
    id = "GetMetricPolicyInput",
    members = {
        ContainerName = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.MetricPolicyRule = {
    type = "structure",
    id = "MetricPolicyRule",
    members = {
        ObjectGroup = {
            type = "string",
            traits = {
                required = true,
            },
        },
        ObjectGroupName = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.MetricPolicy = {
    type = "structure",
    id = "MetricPolicy",
    members = {
        ContainerLevelMetrics = {
            type = "string",
            traits = {
                required = true,
            },
        },
        MetricPolicyRules = {
            type = "list",
            member = M.MetricPolicyRule,
        },
    },
}

M.GetMetricPolicyOutput = {
    type = "structure",
    id = "GetMetricPolicyOutput",
    members = {
        MetricPolicy = setmetatable({ traits = {
            required = true,
        } }, { __index = M.MetricPolicy }),
    },
}

M.ListContainersInput = {
    type = "structure",
    id = "ListContainersInput",
    members = {
        NextToken = {
            type = "string",
        },
        MaxResults = {
            type = "integer",
        },
    },
}

M.ListContainersOutput = {
    type = "structure",
    id = "ListContainersOutput",
    members = {
        Containers = {
            type = "list",
            member = M.Container,
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
        Resource = {
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

M.PutContainerPolicyInput = {
    type = "structure",
    id = "PutContainerPolicyInput",
    members = {
        ContainerName = {
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

M.PutContainerPolicyOutput = {
    type = "structure",
    id = "PutContainerPolicyOutput",
}

M.PutCorsPolicyInput = {
    type = "structure",
    id = "PutCorsPolicyInput",
    members = {
        ContainerName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        CorsPolicy = {
            type = "list",
            member = M.CorsRule,
            traits = {
                required = true,
            },
        },
    },
}

M.PutCorsPolicyOutput = {
    type = "structure",
    id = "PutCorsPolicyOutput",
}

M.PutLifecyclePolicyInput = {
    type = "structure",
    id = "PutLifecyclePolicyInput",
    members = {
        ContainerName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        LifecyclePolicy = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.PutLifecyclePolicyOutput = {
    type = "structure",
    id = "PutLifecyclePolicyOutput",
}

M.PutMetricPolicyInput = {
    type = "structure",
    id = "PutMetricPolicyInput",
    members = {
        ContainerName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        MetricPolicy = setmetatable({ traits = {
            required = true,
        } }, { __index = M.MetricPolicy }),
    },
}

M.PutMetricPolicyOutput = {
    type = "structure",
    id = "PutMetricPolicyOutput",
}

M.StartAccessLoggingInput = {
    type = "structure",
    id = "StartAccessLoggingInput",
    members = {
        ContainerName = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.StartAccessLoggingOutput = {
    type = "structure",
    id = "StartAccessLoggingOutput",
}

M.StopAccessLoggingInput = {
    type = "structure",
    id = "StopAccessLoggingInput",
    members = {
        ContainerName = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.StopAccessLoggingOutput = {
    type = "structure",
    id = "StopAccessLoggingOutput",
}

M.TagResourceInput = {
    type = "structure",
    id = "TagResourceInput",
    members = {
        Resource = {
            type = "string",
            traits = {
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
        Resource = {
            type = "string",
            traits = {
                required = true,
            },
        },
        TagKeys = {
            type = "list",
            member = { type = "string" },
            traits = {
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
