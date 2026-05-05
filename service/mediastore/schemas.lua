local id = require("smithy.shape_id")
local schema = require("smithy.schema")
local prelude = require("smithy.prelude")
local traits = require("smithy.traits")

local _N = "com.amazonaws.mediastore"

local M = {}

M.Container = schema.new({
    id = id.from(_N, "Container"),
    type = "structure",
    members = {
        Endpoint = schema.new({
            id = id.from(_N, "Container", "Endpoint"),
            type = "string",
            name = "Endpoint",
            target_id = prelude.String.id,
        }),
        CreationTime = schema.new({
            id = id.from(_N, "Container", "CreationTime"),
            type = "timestamp",
            name = "CreationTime",
            target_id = prelude.Timestamp.id,
        }),
        ARN = schema.new({
            id = id.from(_N, "Container", "ARN"),
            type = "string",
            name = "ARN",
            target_id = prelude.String.id,
        }),
        Name = schema.new({
            id = id.from(_N, "Container", "Name"),
            type = "string",
            name = "Name",
            target_id = prelude.String.id,
        }),
        Status = schema.new({
            id = id.from(_N, "Container", "Status"),
            type = "string",
            name = "Status",
            target_id = prelude.String.id,
        }),
        AccessLoggingEnabled = schema.new({
            id = id.from(_N, "Container", "AccessLoggingEnabled"),
            type = "boolean",
            name = "AccessLoggingEnabled",
            target_id = prelude.Boolean.id,
        }),
    },
})

M.ContainerInUseException = schema.new({
    id = id.from(_N, "ContainerInUseException"),
    type = "structure",
    traits = {
        [traits.ERROR] = { value = "client" },
    },
    members = {
        Message = schema.new({
            id = id.from(_N, "ContainerInUseException", "Message"),
            type = "string",
            name = "Message",
            target_id = prelude.String.id,
        }),
    },
})

M.ContainerNotFoundException = schema.new({
    id = id.from(_N, "ContainerNotFoundException"),
    type = "structure",
    traits = {
        [traits.ERROR] = { value = "client" },
    },
    members = {
        Message = schema.new({
            id = id.from(_N, "ContainerNotFoundException", "Message"),
            type = "string",
            name = "Message",
            target_id = prelude.String.id,
        }),
    },
})

M.CorsRule = schema.new({
    id = id.from(_N, "CorsRule"),
    type = "structure",
    members = {
        AllowedOrigins = schema.new({
            id = id.from(_N, "CorsRule", "AllowedOrigins"),
            type = "list",
            name = "AllowedOrigins",
            target_id = prelude.Document.id,
            list_member = prelude.String,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        AllowedMethods = schema.new({
            id = id.from(_N, "CorsRule", "AllowedMethods"),
            type = "list",
            name = "AllowedMethods",
            target_id = prelude.Document.id,
            list_member = prelude.String,
        }),
        AllowedHeaders = schema.new({
            id = id.from(_N, "CorsRule", "AllowedHeaders"),
            type = "list",
            name = "AllowedHeaders",
            target_id = prelude.Document.id,
            list_member = prelude.String,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        MaxAgeSeconds = schema.new({
            id = id.from(_N, "CorsRule", "MaxAgeSeconds"),
            type = "integer",
            name = "MaxAgeSeconds",
            target_id = prelude.Integer.id,
            traits = {
                [traits.DEFAULT] = { value = 0 },
            },
        }),
        ExposeHeaders = schema.new({
            id = id.from(_N, "CorsRule", "ExposeHeaders"),
            type = "list",
            name = "ExposeHeaders",
            target_id = prelude.Document.id,
            list_member = prelude.String,
        }),
    },
})

M.CorsPolicyNotFoundException = schema.new({
    id = id.from(_N, "CorsPolicyNotFoundException"),
    type = "structure",
    traits = {
        [traits.ERROR] = { value = "client" },
    },
    members = {
        Message = schema.new({
            id = id.from(_N, "CorsPolicyNotFoundException", "Message"),
            type = "string",
            name = "Message",
            target_id = prelude.String.id,
        }),
    },
})

M.Tag = schema.new({
    id = id.from(_N, "Tag"),
    type = "structure",
    members = {
        Key = schema.new({
            id = id.from(_N, "Tag", "Key"),
            type = "string",
            name = "Key",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        Value = schema.new({
            id = id.from(_N, "Tag", "Value"),
            type = "string",
            name = "Value",
            target_id = prelude.String.id,
        }),
    },
})

M.CreateContainerInput = schema.new({
    id = id.from(_N, "CreateContainerInput"),
    type = "structure",
    members = {
        ContainerName = schema.new({
            id = id.from(_N, "CreateContainerInput", "ContainerName"),
            type = "string",
            name = "ContainerName",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        Tags = schema.new({
            id = id.from(_N, "CreateContainerInput", "Tags"),
            type = "list",
            name = "Tags",
            target_id = prelude.Document.id,
            list_member = M.Tag,
        }),
    },
})

M.CreateContainerOutput = schema.new({
    id = id.from(_N, "CreateContainerOutput"),
    type = "structure",
    members = {
        Container = schema.new({
            id = id.from(_N, "CreateContainerOutput", "Container"),
            type = "structure",
            name = "Container",
            target_id = id.from(_N, "Container"),
            target = M.Container,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.InternalServerError = schema.new({
    id = id.from(_N, "InternalServerError"),
    type = "structure",
    traits = {
        [traits.ERROR] = { value = "server" },
    },
    members = {
        Message = schema.new({
            id = id.from(_N, "InternalServerError", "Message"),
            type = "string",
            name = "Message",
            target_id = prelude.String.id,
        }),
    },
})

M.LimitExceededException = schema.new({
    id = id.from(_N, "LimitExceededException"),
    type = "structure",
    traits = {
        [traits.ERROR] = { value = "client" },
    },
    members = {
        Message = schema.new({
            id = id.from(_N, "LimitExceededException", "Message"),
            type = "string",
            name = "Message",
            target_id = prelude.String.id,
        }),
    },
})

M.DeleteContainerInput = schema.new({
    id = id.from(_N, "DeleteContainerInput"),
    type = "structure",
    members = {
        ContainerName = schema.new({
            id = id.from(_N, "DeleteContainerInput", "ContainerName"),
            type = "string",
            name = "ContainerName",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.DeleteContainerOutput = schema.new({
    id = id.from(_N, "DeleteContainerOutput"),
    type = "structure",
})

M.DeleteContainerPolicyInput = schema.new({
    id = id.from(_N, "DeleteContainerPolicyInput"),
    type = "structure",
    members = {
        ContainerName = schema.new({
            id = id.from(_N, "DeleteContainerPolicyInput", "ContainerName"),
            type = "string",
            name = "ContainerName",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.DeleteContainerPolicyOutput = schema.new({
    id = id.from(_N, "DeleteContainerPolicyOutput"),
    type = "structure",
})

M.PolicyNotFoundException = schema.new({
    id = id.from(_N, "PolicyNotFoundException"),
    type = "structure",
    traits = {
        [traits.ERROR] = { value = "client" },
    },
    members = {
        Message = schema.new({
            id = id.from(_N, "PolicyNotFoundException", "Message"),
            type = "string",
            name = "Message",
            target_id = prelude.String.id,
        }),
    },
})

M.DeleteCorsPolicyInput = schema.new({
    id = id.from(_N, "DeleteCorsPolicyInput"),
    type = "structure",
    members = {
        ContainerName = schema.new({
            id = id.from(_N, "DeleteCorsPolicyInput", "ContainerName"),
            type = "string",
            name = "ContainerName",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.DeleteCorsPolicyOutput = schema.new({
    id = id.from(_N, "DeleteCorsPolicyOutput"),
    type = "structure",
})

M.DeleteLifecyclePolicyInput = schema.new({
    id = id.from(_N, "DeleteLifecyclePolicyInput"),
    type = "structure",
    members = {
        ContainerName = schema.new({
            id = id.from(_N, "DeleteLifecyclePolicyInput", "ContainerName"),
            type = "string",
            name = "ContainerName",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.DeleteLifecyclePolicyOutput = schema.new({
    id = id.from(_N, "DeleteLifecyclePolicyOutput"),
    type = "structure",
})

M.DeleteMetricPolicyInput = schema.new({
    id = id.from(_N, "DeleteMetricPolicyInput"),
    type = "structure",
    members = {
        ContainerName = schema.new({
            id = id.from(_N, "DeleteMetricPolicyInput", "ContainerName"),
            type = "string",
            name = "ContainerName",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.DeleteMetricPolicyOutput = schema.new({
    id = id.from(_N, "DeleteMetricPolicyOutput"),
    type = "structure",
})

M.DescribeContainerInput = schema.new({
    id = id.from(_N, "DescribeContainerInput"),
    type = "structure",
    members = {
        ContainerName = schema.new({
            id = id.from(_N, "DescribeContainerInput", "ContainerName"),
            type = "string",
            name = "ContainerName",
            target_id = prelude.String.id,
        }),
    },
})

M.DescribeContainerOutput = schema.new({
    id = id.from(_N, "DescribeContainerOutput"),
    type = "structure",
    members = {
        Container = schema.new({
            id = id.from(_N, "DescribeContainerOutput", "Container"),
            type = "structure",
            name = "Container",
            target_id = id.from(_N, "Container"),
            target = M.Container,
        }),
    },
})

M.GetContainerPolicyInput = schema.new({
    id = id.from(_N, "GetContainerPolicyInput"),
    type = "structure",
    members = {
        ContainerName = schema.new({
            id = id.from(_N, "GetContainerPolicyInput", "ContainerName"),
            type = "string",
            name = "ContainerName",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.GetContainerPolicyOutput = schema.new({
    id = id.from(_N, "GetContainerPolicyOutput"),
    type = "structure",
    members = {
        Policy = schema.new({
            id = id.from(_N, "GetContainerPolicyOutput", "Policy"),
            type = "string",
            name = "Policy",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.GetCorsPolicyInput = schema.new({
    id = id.from(_N, "GetCorsPolicyInput"),
    type = "structure",
    members = {
        ContainerName = schema.new({
            id = id.from(_N, "GetCorsPolicyInput", "ContainerName"),
            type = "string",
            name = "ContainerName",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.GetCorsPolicyOutput = schema.new({
    id = id.from(_N, "GetCorsPolicyOutput"),
    type = "structure",
    members = {
        CorsPolicy = schema.new({
            id = id.from(_N, "GetCorsPolicyOutput", "CorsPolicy"),
            type = "list",
            name = "CorsPolicy",
            target_id = prelude.Document.id,
            list_member = M.CorsRule,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.GetLifecyclePolicyInput = schema.new({
    id = id.from(_N, "GetLifecyclePolicyInput"),
    type = "structure",
    members = {
        ContainerName = schema.new({
            id = id.from(_N, "GetLifecyclePolicyInput", "ContainerName"),
            type = "string",
            name = "ContainerName",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.GetLifecyclePolicyOutput = schema.new({
    id = id.from(_N, "GetLifecyclePolicyOutput"),
    type = "structure",
    members = {
        LifecyclePolicy = schema.new({
            id = id.from(_N, "GetLifecyclePolicyOutput", "LifecyclePolicy"),
            type = "string",
            name = "LifecyclePolicy",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.GetMetricPolicyInput = schema.new({
    id = id.from(_N, "GetMetricPolicyInput"),
    type = "structure",
    members = {
        ContainerName = schema.new({
            id = id.from(_N, "GetMetricPolicyInput", "ContainerName"),
            type = "string",
            name = "ContainerName",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.MetricPolicyRule = schema.new({
    id = id.from(_N, "MetricPolicyRule"),
    type = "structure",
    members = {
        ObjectGroup = schema.new({
            id = id.from(_N, "MetricPolicyRule", "ObjectGroup"),
            type = "string",
            name = "ObjectGroup",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        ObjectGroupName = schema.new({
            id = id.from(_N, "MetricPolicyRule", "ObjectGroupName"),
            type = "string",
            name = "ObjectGroupName",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.MetricPolicy = schema.new({
    id = id.from(_N, "MetricPolicy"),
    type = "structure",
    members = {
        ContainerLevelMetrics = schema.new({
            id = id.from(_N, "MetricPolicy", "ContainerLevelMetrics"),
            type = "string",
            name = "ContainerLevelMetrics",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        MetricPolicyRules = schema.new({
            id = id.from(_N, "MetricPolicy", "MetricPolicyRules"),
            type = "list",
            name = "MetricPolicyRules",
            target_id = prelude.Document.id,
            list_member = M.MetricPolicyRule,
        }),
    },
})

M.GetMetricPolicyOutput = schema.new({
    id = id.from(_N, "GetMetricPolicyOutput"),
    type = "structure",
    members = {
        MetricPolicy = schema.new({
            id = id.from(_N, "GetMetricPolicyOutput", "MetricPolicy"),
            type = "structure",
            name = "MetricPolicy",
            target_id = id.from(_N, "MetricPolicy"),
            target = M.MetricPolicy,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.ListContainersInput = schema.new({
    id = id.from(_N, "ListContainersInput"),
    type = "structure",
    members = {
        NextToken = schema.new({
            id = id.from(_N, "ListContainersInput", "NextToken"),
            type = "string",
            name = "NextToken",
            target_id = prelude.String.id,
        }),
        MaxResults = schema.new({
            id = id.from(_N, "ListContainersInput", "MaxResults"),
            type = "integer",
            name = "MaxResults",
            target_id = prelude.Integer.id,
        }),
    },
})

M.ListContainersOutput = schema.new({
    id = id.from(_N, "ListContainersOutput"),
    type = "structure",
    members = {
        Containers = schema.new({
            id = id.from(_N, "ListContainersOutput", "Containers"),
            type = "list",
            name = "Containers",
            target_id = prelude.Document.id,
            list_member = M.Container,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        NextToken = schema.new({
            id = id.from(_N, "ListContainersOutput", "NextToken"),
            type = "string",
            name = "NextToken",
            target_id = prelude.String.id,
        }),
    },
})

M.ListTagsForResourceInput = schema.new({
    id = id.from(_N, "ListTagsForResourceInput"),
    type = "structure",
    members = {
        Resource = schema.new({
            id = id.from(_N, "ListTagsForResourceInput", "Resource"),
            type = "string",
            name = "Resource",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.ListTagsForResourceOutput = schema.new({
    id = id.from(_N, "ListTagsForResourceOutput"),
    type = "structure",
    members = {
        Tags = schema.new({
            id = id.from(_N, "ListTagsForResourceOutput", "Tags"),
            type = "list",
            name = "Tags",
            target_id = prelude.Document.id,
            list_member = M.Tag,
        }),
    },
})

M.PutContainerPolicyInput = schema.new({
    id = id.from(_N, "PutContainerPolicyInput"),
    type = "structure",
    members = {
        ContainerName = schema.new({
            id = id.from(_N, "PutContainerPolicyInput", "ContainerName"),
            type = "string",
            name = "ContainerName",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        Policy = schema.new({
            id = id.from(_N, "PutContainerPolicyInput", "Policy"),
            type = "string",
            name = "Policy",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.PutContainerPolicyOutput = schema.new({
    id = id.from(_N, "PutContainerPolicyOutput"),
    type = "structure",
})

M.PutCorsPolicyInput = schema.new({
    id = id.from(_N, "PutCorsPolicyInput"),
    type = "structure",
    members = {
        ContainerName = schema.new({
            id = id.from(_N, "PutCorsPolicyInput", "ContainerName"),
            type = "string",
            name = "ContainerName",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        CorsPolicy = schema.new({
            id = id.from(_N, "PutCorsPolicyInput", "CorsPolicy"),
            type = "list",
            name = "CorsPolicy",
            target_id = prelude.Document.id,
            list_member = M.CorsRule,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.PutCorsPolicyOutput = schema.new({
    id = id.from(_N, "PutCorsPolicyOutput"),
    type = "structure",
})

M.PutLifecyclePolicyInput = schema.new({
    id = id.from(_N, "PutLifecyclePolicyInput"),
    type = "structure",
    members = {
        ContainerName = schema.new({
            id = id.from(_N, "PutLifecyclePolicyInput", "ContainerName"),
            type = "string",
            name = "ContainerName",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        LifecyclePolicy = schema.new({
            id = id.from(_N, "PutLifecyclePolicyInput", "LifecyclePolicy"),
            type = "string",
            name = "LifecyclePolicy",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.PutLifecyclePolicyOutput = schema.new({
    id = id.from(_N, "PutLifecyclePolicyOutput"),
    type = "structure",
})

M.PutMetricPolicyInput = schema.new({
    id = id.from(_N, "PutMetricPolicyInput"),
    type = "structure",
    members = {
        ContainerName = schema.new({
            id = id.from(_N, "PutMetricPolicyInput", "ContainerName"),
            type = "string",
            name = "ContainerName",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        MetricPolicy = schema.new({
            id = id.from(_N, "PutMetricPolicyInput", "MetricPolicy"),
            type = "structure",
            name = "MetricPolicy",
            target_id = id.from(_N, "MetricPolicy"),
            target = M.MetricPolicy,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.PutMetricPolicyOutput = schema.new({
    id = id.from(_N, "PutMetricPolicyOutput"),
    type = "structure",
})

M.StartAccessLoggingInput = schema.new({
    id = id.from(_N, "StartAccessLoggingInput"),
    type = "structure",
    members = {
        ContainerName = schema.new({
            id = id.from(_N, "StartAccessLoggingInput", "ContainerName"),
            type = "string",
            name = "ContainerName",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.StartAccessLoggingOutput = schema.new({
    id = id.from(_N, "StartAccessLoggingOutput"),
    type = "structure",
})

M.StopAccessLoggingInput = schema.new({
    id = id.from(_N, "StopAccessLoggingInput"),
    type = "structure",
    members = {
        ContainerName = schema.new({
            id = id.from(_N, "StopAccessLoggingInput", "ContainerName"),
            type = "string",
            name = "ContainerName",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.StopAccessLoggingOutput = schema.new({
    id = id.from(_N, "StopAccessLoggingOutput"),
    type = "structure",
})

M.TagResourceInput = schema.new({
    id = id.from(_N, "TagResourceInput"),
    type = "structure",
    members = {
        Resource = schema.new({
            id = id.from(_N, "TagResourceInput", "Resource"),
            type = "string",
            name = "Resource",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        Tags = schema.new({
            id = id.from(_N, "TagResourceInput", "Tags"),
            type = "list",
            name = "Tags",
            target_id = prelude.Document.id,
            list_member = M.Tag,
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

M.UntagResourceInput = schema.new({
    id = id.from(_N, "UntagResourceInput"),
    type = "structure",
    members = {
        Resource = schema.new({
            id = id.from(_N, "UntagResourceInput", "Resource"),
            type = "string",
            name = "Resource",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        TagKeys = schema.new({
            id = id.from(_N, "UntagResourceInput", "TagKeys"),
            type = "list",
            name = "TagKeys",
            target_id = prelude.Document.id,
            list_member = prelude.String,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.UntagResourceOutput = schema.new({
    id = id.from(_N, "UntagResourceOutput"),
    type = "structure",
})

return M
