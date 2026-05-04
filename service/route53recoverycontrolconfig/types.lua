local M = {}

M.ClusterEndpoint = {
    type = "structure",
    id = "ClusterEndpoint",
    members = {
        Endpoint = {
            type = "string",
        },
        Region = {
            type = "string",
        },
    },
}

M.NetworkType = {
    IPV4 = "IPV4",
    DUALSTACK = "DUALSTACK",
}

M.Status = {
    PENDING = "PENDING",
    DEPLOYED = "DEPLOYED",
    PENDING_DELETION = "PENDING_DELETION",
}

M.Cluster = {
    type = "structure",
    id = "Cluster",
    members = {
        ClusterArn = {
            type = "string",
        },
        ClusterEndpoints = {
            type = "list",
            member = M.ClusterEndpoint,
        },
        Name = {
            type = "string",
        },
        Status = {
            type = "string",
        },
        Owner = {
            type = "string",
        },
        NetworkType = {
            type = "string",
        },
    },
}

M.ControlPanel = {
    type = "structure",
    id = "ControlPanel",
    members = {
        ClusterArn = {
            type = "string",
        },
        ControlPanelArn = {
            type = "string",
        },
        DefaultControlPanel = {
            type = "boolean",
        },
        Name = {
            type = "string",
        },
        RoutingControlCount = {
            type = "integer",
        },
        Status = {
            type = "string",
        },
        Owner = {
            type = "string",
        },
    },
}

M.RoutingControl = {
    type = "structure",
    id = "RoutingControl",
    members = {
        ControlPanelArn = {
            type = "string",
        },
        Name = {
            type = "string",
        },
        RoutingControlArn = {
            type = "string",
        },
        Status = {
            type = "string",
        },
        Owner = {
            type = "string",
        },
    },
}

M.RuleType = {
    ATLEAST = "ATLEAST",
    AND = "AND",
    OR = "OR",
}

M.RuleConfig = {
    type = "structure",
    id = "RuleConfig",
    members = {
        Inverted = {
            type = "boolean",
            traits = {
                required = true,
            },
        },
        Threshold = {
            type = "integer",
            traits = {
                required = true,
            },
        },
        Type = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.AssertionRule = {
    type = "structure",
    id = "AssertionRule",
    members = {
        AssertedControls = {
            type = "list",
            member = { type = "string" },
            traits = {
                required = true,
            },
        },
        ControlPanelArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Name = {
            type = "string",
            traits = {
                required = true,
            },
        },
        RuleConfig = setmetatable({ traits = {
            required = true,
        } }, { __index = M.RuleConfig }),
        SafetyRuleArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Status = {
            type = "string",
            traits = {
                required = true,
            },
        },
        WaitPeriodMs = {
            type = "integer",
            traits = {
                required = true,
            },
        },
        Owner = {
            type = "string",
        },
    },
}

M.GatingRule = {
    type = "structure",
    id = "GatingRule",
    members = {
        ControlPanelArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        GatingControls = {
            type = "list",
            member = { type = "string" },
            traits = {
                required = true,
            },
        },
        Name = {
            type = "string",
            traits = {
                required = true,
            },
        },
        RuleConfig = setmetatable({ traits = {
            required = true,
        } }, { __index = M.RuleConfig }),
        SafetyRuleArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Status = {
            type = "string",
            traits = {
                required = true,
            },
        },
        TargetControls = {
            type = "list",
            member = { type = "string" },
            traits = {
                required = true,
            },
        },
        WaitPeriodMs = {
            type = "integer",
            traits = {
                required = true,
            },
        },
        Owner = {
            type = "string",
        },
    },
}

M.Rule = {
    type = "structure",
    id = "Rule",
    members = {
        ASSERTION = M.AssertionRule,
        GATING = M.GatingRule,
    },
}

M.AccessDeniedException = {
    type = "structure",
    id = "AccessDeniedException",
    error = "client",
    members = {
        Message = {
            type = "string",
            traits = {
                json_name = "message",
                required = true,
            },
        },
    },
}

M.AssertionRuleUpdate = {
    type = "structure",
    id = "AssertionRuleUpdate",
    members = {
        Name = {
            type = "string",
            traits = {
                required = true,
            },
        },
        SafetyRuleArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        WaitPeriodMs = {
            type = "integer",
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
                json_name = "message",
                required = true,
            },
        },
    },
}

M.CreateClusterInput = {
    type = "structure",
    id = "CreateClusterInput",
    members = {
        ClientToken = {
            type = "string",
            traits = {
                idempotency_token = true,
            },
        },
        ClusterName = {
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
        NetworkType = {
            type = "string",
        },
    },
}

M.CreateClusterOutput = {
    type = "structure",
    id = "CreateClusterOutput",
    members = {
        Cluster = M.Cluster,
    },
}

M.InternalServerException = {
    type = "structure",
    id = "InternalServerException",
    error = "server",
    members = {
        Message = {
            type = "string",
            traits = {
                json_name = "message",
                required = true,
            },
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
                json_name = "message",
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
                json_name = "message",
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
                json_name = "message",
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
                json_name = "message",
                required = true,
            },
        },
    },
}

M.CreateControlPanelInput = {
    type = "structure",
    id = "CreateControlPanelInput",
    members = {
        ClientToken = {
            type = "string",
            traits = {
                idempotency_token = true,
            },
        },
        ClusterArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        ControlPanelName = {
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

M.CreateControlPanelOutput = {
    type = "structure",
    id = "CreateControlPanelOutput",
    members = {
        ControlPanel = M.ControlPanel,
    },
}

M.CreateRoutingControlInput = {
    type = "structure",
    id = "CreateRoutingControlInput",
    members = {
        ClientToken = {
            type = "string",
            traits = {
                idempotency_token = true,
            },
        },
        ClusterArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        ControlPanelArn = {
            type = "string",
        },
        RoutingControlName = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.CreateRoutingControlOutput = {
    type = "structure",
    id = "CreateRoutingControlOutput",
    members = {
        RoutingControl = M.RoutingControl,
    },
}

M.NewAssertionRule = {
    type = "structure",
    id = "NewAssertionRule",
    members = {
        AssertedControls = {
            type = "list",
            member = { type = "string" },
            traits = {
                required = true,
            },
        },
        ControlPanelArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Name = {
            type = "string",
            traits = {
                required = true,
            },
        },
        RuleConfig = setmetatable({ traits = {
            required = true,
        } }, { __index = M.RuleConfig }),
        WaitPeriodMs = {
            type = "integer",
            traits = {
                required = true,
            },
        },
    },
}

M.NewGatingRule = {
    type = "structure",
    id = "NewGatingRule",
    members = {
        ControlPanelArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        GatingControls = {
            type = "list",
            member = { type = "string" },
            traits = {
                required = true,
            },
        },
        Name = {
            type = "string",
            traits = {
                required = true,
            },
        },
        RuleConfig = setmetatable({ traits = {
            required = true,
        } }, { __index = M.RuleConfig }),
        TargetControls = {
            type = "list",
            member = { type = "string" },
            traits = {
                required = true,
            },
        },
        WaitPeriodMs = {
            type = "integer",
            traits = {
                required = true,
            },
        },
    },
}

M.CreateSafetyRuleInput = {
    type = "structure",
    id = "CreateSafetyRuleInput",
    members = {
        AssertionRule = M.NewAssertionRule,
        ClientToken = {
            type = "string",
            traits = {
                idempotency_token = true,
            },
        },
        GatingRule = M.NewGatingRule,
        Tags = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
    },
}

M.CreateSafetyRuleOutput = {
    type = "structure",
    id = "CreateSafetyRuleOutput",
    members = {
        AssertionRule = M.AssertionRule,
        GatingRule = M.GatingRule,
    },
}

M.DeleteClusterInput = {
    type = "structure",
    id = "DeleteClusterInput",
    members = {
        ClusterArn = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.DeleteClusterOutput = {
    type = "structure",
    id = "DeleteClusterOutput",
}

M.DeleteControlPanelInput = {
    type = "structure",
    id = "DeleteControlPanelInput",
    members = {
        ControlPanelArn = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.DeleteControlPanelOutput = {
    type = "structure",
    id = "DeleteControlPanelOutput",
}

M.DeleteRoutingControlInput = {
    type = "structure",
    id = "DeleteRoutingControlInput",
    members = {
        RoutingControlArn = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.DeleteRoutingControlOutput = {
    type = "structure",
    id = "DeleteRoutingControlOutput",
}

M.DeleteSafetyRuleInput = {
    type = "structure",
    id = "DeleteSafetyRuleInput",
    members = {
        SafetyRuleArn = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.DeleteSafetyRuleOutput = {
    type = "structure",
    id = "DeleteSafetyRuleOutput",
}

M.DescribeClusterInput = {
    type = "structure",
    id = "DescribeClusterInput",
    members = {
        ClusterArn = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.DescribeClusterOutput = {
    type = "structure",
    id = "DescribeClusterOutput",
    members = {
        Cluster = M.Cluster,
    },
}

M.DescribeControlPanelInput = {
    type = "structure",
    id = "DescribeControlPanelInput",
    members = {
        ControlPanelArn = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.DescribeControlPanelOutput = {
    type = "structure",
    id = "DescribeControlPanelOutput",
    members = {
        ControlPanel = M.ControlPanel,
    },
}

M.DescribeRoutingControlInput = {
    type = "structure",
    id = "DescribeRoutingControlInput",
    members = {
        RoutingControlArn = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.DescribeRoutingControlOutput = {
    type = "structure",
    id = "DescribeRoutingControlOutput",
    members = {
        RoutingControl = M.RoutingControl,
    },
}

M.DescribeSafetyRuleInput = {
    type = "structure",
    id = "DescribeSafetyRuleInput",
    members = {
        SafetyRuleArn = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.DescribeSafetyRuleOutput = {
    type = "structure",
    id = "DescribeSafetyRuleOutput",
    members = {
        AssertionRule = M.AssertionRule,
        GatingRule = M.GatingRule,
    },
}

M.GatingRuleUpdate = {
    type = "structure",
    id = "GatingRuleUpdate",
    members = {
        Name = {
            type = "string",
            traits = {
                required = true,
            },
        },
        SafetyRuleArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        WaitPeriodMs = {
            type = "integer",
            traits = {
                required = true,
            },
        },
    },
}

M.GetResourcePolicyInput = {
    type = "structure",
    id = "GetResourcePolicyInput",
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

M.GetResourcePolicyOutput = {
    type = "structure",
    id = "GetResourcePolicyOutput",
    members = {
        Policy = {
            type = "string",
        },
    },
}

M.ListAssociatedRoute53HealthChecksInput = {
    type = "structure",
    id = "ListAssociatedRoute53HealthChecksInput",
    members = {
        MaxResults = {
            type = "integer",
            traits = {
                http_query = "MaxResults",
            },
        },
        NextToken = {
            type = "string",
            traits = {
                http_query = "NextToken",
            },
        },
        RoutingControlArn = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.ListAssociatedRoute53HealthChecksOutput = {
    type = "structure",
    id = "ListAssociatedRoute53HealthChecksOutput",
    members = {
        HealthCheckIds = {
            type = "list",
            member = { type = "string" },
        },
        NextToken = {
            type = "string",
        },
    },
}

M.ListClustersInput = {
    type = "structure",
    id = "ListClustersInput",
    members = {
        MaxResults = {
            type = "integer",
            traits = {
                http_query = "MaxResults",
            },
        },
        NextToken = {
            type = "string",
            traits = {
                http_query = "NextToken",
            },
        },
    },
}

M.ListClustersOutput = {
    type = "structure",
    id = "ListClustersOutput",
    members = {
        Clusters = {
            type = "list",
            member = M.Cluster,
        },
        NextToken = {
            type = "string",
        },
    },
}

M.ListControlPanelsInput = {
    type = "structure",
    id = "ListControlPanelsInput",
    members = {
        ClusterArn = {
            type = "string",
            traits = {
                http_query = "ClusterArn",
            },
        },
        MaxResults = {
            type = "integer",
            traits = {
                http_query = "MaxResults",
            },
        },
        NextToken = {
            type = "string",
            traits = {
                http_query = "NextToken",
            },
        },
    },
}

M.ListControlPanelsOutput = {
    type = "structure",
    id = "ListControlPanelsOutput",
    members = {
        ControlPanels = {
            type = "list",
            member = M.ControlPanel,
        },
        NextToken = {
            type = "string",
        },
    },
}

M.ListRoutingControlsInput = {
    type = "structure",
    id = "ListRoutingControlsInput",
    members = {
        ControlPanelArn = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        MaxResults = {
            type = "integer",
            traits = {
                http_query = "MaxResults",
            },
        },
        NextToken = {
            type = "string",
            traits = {
                http_query = "NextToken",
            },
        },
    },
}

M.ListRoutingControlsOutput = {
    type = "structure",
    id = "ListRoutingControlsOutput",
    members = {
        NextToken = {
            type = "string",
        },
        RoutingControls = {
            type = "list",
            member = M.RoutingControl,
        },
    },
}

M.ListSafetyRulesInput = {
    type = "structure",
    id = "ListSafetyRulesInput",
    members = {
        ControlPanelArn = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        MaxResults = {
            type = "integer",
            traits = {
                http_query = "MaxResults",
            },
        },
        NextToken = {
            type = "string",
            traits = {
                http_query = "NextToken",
            },
        },
    },
}

M.ListSafetyRulesOutput = {
    type = "structure",
    id = "ListSafetyRulesOutput",
    members = {
        NextToken = {
            type = "string",
        },
        SafetyRules = {
            type = "list",
            member = M.Rule,
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

M.UpdateClusterInput = {
    type = "structure",
    id = "UpdateClusterInput",
    members = {
        ClusterArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        NetworkType = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.UpdateClusterOutput = {
    type = "structure",
    id = "UpdateClusterOutput",
    members = {
        Cluster = M.Cluster,
    },
}

M.UpdateControlPanelInput = {
    type = "structure",
    id = "UpdateControlPanelInput",
    members = {
        ControlPanelArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        ControlPanelName = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.UpdateControlPanelOutput = {
    type = "structure",
    id = "UpdateControlPanelOutput",
    members = {
        ControlPanel = M.ControlPanel,
    },
}

M.UpdateRoutingControlInput = {
    type = "structure",
    id = "UpdateRoutingControlInput",
    members = {
        RoutingControlArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        RoutingControlName = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.UpdateRoutingControlOutput = {
    type = "structure",
    id = "UpdateRoutingControlOutput",
    members = {
        RoutingControl = M.RoutingControl,
    },
}

M.UpdateSafetyRuleInput = {
    type = "structure",
    id = "UpdateSafetyRuleInput",
    members = {
        AssertionRuleUpdate = M.AssertionRuleUpdate,
        GatingRuleUpdate = M.GatingRuleUpdate,
    },
}

M.UpdateSafetyRuleOutput = {
    type = "structure",
    id = "UpdateSafetyRuleOutput",
    members = {
        AssertionRule = M.AssertionRule,
        GatingRule = M.GatingRule,
    },
}

return M
