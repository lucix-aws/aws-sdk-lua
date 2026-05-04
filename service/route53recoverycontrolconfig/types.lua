local M = {}

M.ClusterEndpoint = {
    type = "structure",
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
    members = {
        ASSERTION = M.AssertionRule,
        GATING = M.GatingRule,
    },
}

M.AccessDeniedException = {
    type = "structure",
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
    members = {
        ClientToken = {
            type = "string",
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
    members = {
        Cluster = M.Cluster,
    },
}

M.InternalServerException = {
    type = "structure",
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
    members = {
        ClientToken = {
            type = "string",
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
    members = {
        ControlPanel = M.ControlPanel,
    },
}

M.CreateRoutingControlInput = {
    type = "structure",
    members = {
        ClientToken = {
            type = "string",
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
    members = {
        RoutingControl = M.RoutingControl,
    },
}

M.NewAssertionRule = {
    type = "structure",
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
    members = {
        AssertionRule = M.NewAssertionRule,
        ClientToken = {
            type = "string",
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
    members = {
        AssertionRule = M.AssertionRule,
        GatingRule = M.GatingRule,
    },
}

M.DeleteClusterInput = {
    type = "structure",
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
}

M.DeleteControlPanelInput = {
    type = "structure",
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
}

M.DeleteRoutingControlInput = {
    type = "structure",
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
}

M.DeleteSafetyRuleInput = {
    type = "structure",
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
}

M.DescribeClusterInput = {
    type = "structure",
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
    members = {
        Cluster = M.Cluster,
    },
}

M.DescribeControlPanelInput = {
    type = "structure",
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
    members = {
        ControlPanel = M.ControlPanel,
    },
}

M.DescribeRoutingControlInput = {
    type = "structure",
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
    members = {
        RoutingControl = M.RoutingControl,
    },
}

M.DescribeSafetyRuleInput = {
    type = "structure",
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
    members = {
        AssertionRule = M.AssertionRule,
        GatingRule = M.GatingRule,
    },
}

M.GatingRuleUpdate = {
    type = "structure",
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
    members = {
        Policy = {
            type = "string",
        },
    },
}

M.ListAssociatedRoute53HealthChecksInput = {
    type = "structure",
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
            key = { type = "string" },
            value = { type = "string" },
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
}

M.UpdateClusterInput = {
    type = "structure",
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
    members = {
        Cluster = M.Cluster,
    },
}

M.UpdateControlPanelInput = {
    type = "structure",
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
    members = {
        ControlPanel = M.ControlPanel,
    },
}

M.UpdateRoutingControlInput = {
    type = "structure",
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
    members = {
        RoutingControl = M.RoutingControl,
    },
}

M.UpdateSafetyRuleInput = {
    type = "structure",
    members = {
        AssertionRuleUpdate = M.AssertionRuleUpdate,
        GatingRuleUpdate = M.GatingRuleUpdate,
    },
}

M.UpdateSafetyRuleOutput = {
    type = "structure",
    members = {
        AssertionRule = M.AssertionRule,
        GatingRule = M.GatingRule,
    },
}

return M
