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
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.CorsRule = {
    type = "structure",
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
    error = "client",
    members = {
        Message = {
            type = "string",
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
        },
    },
}

M.CreateContainerInput = {
    type = "structure",
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
    members = {
        Container = setmetatable({ traits = {
            required = true,
        } }, { __index = M.Container }),
    },
}

M.InternalServerError = {
    type = "structure",
    error = "server",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.LimitExceededException = {
    type = "structure",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.DeleteContainerInput = {
    type = "structure",
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
}

M.DeleteContainerPolicyInput = {
    type = "structure",
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
}

M.PolicyNotFoundException = {
    type = "structure",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.DeleteCorsPolicyInput = {
    type = "structure",
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
}

M.DeleteLifecyclePolicyInput = {
    type = "structure",
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
}

M.DeleteMetricPolicyInput = {
    type = "structure",
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
}

M.DescribeContainerInput = {
    type = "structure",
    members = {
        ContainerName = {
            type = "string",
        },
    },
}

M.DescribeContainerOutput = {
    type = "structure",
    members = {
        Container = M.Container,
    },
}

M.GetContainerPolicyInput = {
    type = "structure",
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
    members = {
        MetricPolicy = setmetatable({ traits = {
            required = true,
        } }, { __index = M.MetricPolicy }),
    },
}

M.ListContainersInput = {
    type = "structure",
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
    members = {
        Tags = {
            type = "list",
            member = M.Tag,
        },
    },
}

M.PutContainerPolicyInput = {
    type = "structure",
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
}

M.PutCorsPolicyInput = {
    type = "structure",
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
}

M.PutLifecyclePolicyInput = {
    type = "structure",
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
}

M.PutMetricPolicyInput = {
    type = "structure",
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
}

M.StartAccessLoggingInput = {
    type = "structure",
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
}

M.StopAccessLoggingInput = {
    type = "structure",
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
}

M.TagResourceInput = {
    type = "structure",
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
}

M.UntagResourceInput = {
    type = "structure",
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
}

return M
