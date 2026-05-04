local M = {}

M.AccessDeniedException = {
    type = "structure",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.AssociatedDomainSummary = {
    type = "structure",
    members = {
        Arn = {
            type = "string",
        },
        Name = {
            type = "string",
        },
    },
}

M.AssociatedObjectiveSummary = {
    type = "structure",
    members = {
        Arn = {
            type = "string",
        },
        Name = {
            type = "string",
        },
    },
}

M.ObjectiveResourceFilter = {
    type = "structure",
    members = {
        Arn = {
            type = "string",
        },
    },
}

M.CommonControlFilter = {
    type = "structure",
    members = {
        Objectives = {
            type = "list",
            member = M.ObjectiveResourceFilter,
        },
    },
}

M.CommonControlMappingDetails = {
    type = "structure",
    members = {
        CommonControlArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.InternalServerException = {
    type = "structure",
    error = "server",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.ListCommonControlsInput = {
    type = "structure",
    members = {
        MaxResults = {
            type = "integer",
            traits = {
                http_query = "maxResults",
            },
        },
        NextToken = {
            type = "string",
            traits = {
                http_query = "nextToken",
            },
        },
        CommonControlFilter = M.CommonControlFilter,
    },
}

M.CommonControlSummary = {
    type = "structure",
    members = {
        Arn = {
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
        Description = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Domain = setmetatable({ traits = {
            required = true,
        } }, { __index = M.AssociatedDomainSummary }),
        Objective = setmetatable({ traits = {
            required = true,
        } }, { __index = M.AssociatedObjectiveSummary }),
        CreateTime = {
            type = "timestamp",
            traits = {
                required = true,
            },
        },
        LastUpdateTime = {
            type = "timestamp",
            traits = {
                required = true,
            },
        },
    },
}

M.ListCommonControlsOutput = {
    type = "structure",
    members = {
        CommonControls = {
            type = "list",
            member = M.CommonControlSummary,
            traits = {
                required = true,
            },
        },
        NextToken = {
            type = "string",
        },
    },
}

M.ThrottlingException = {
    type = "structure",
    error = "client",
    members = {
        Message = {
            type = "string",
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

M.ControlBehavior = {
    PREVENTIVE = "PREVENTIVE",
    PROACTIVE = "PROACTIVE",
    DETECTIVE = "DETECTIVE",
}

M.GetControlInput = {
    type = "structure",
    members = {
        ControlArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.ImplementationDetails = {
    type = "structure",
    members = {
        Type = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Identifier = {
            type = "string",
        },
    },
}

M.ControlParameter = {
    type = "structure",
    members = {
        Name = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.ControlScope = {
    GLOBAL = "GLOBAL",
    REGIONAL = "REGIONAL",
}

M.RegionConfiguration = {
    type = "structure",
    members = {
        Scope = {
            type = "string",
            traits = {
                required = true,
            },
        },
        DeployableRegions = {
            type = "list",
            member = { type = "string" },
        },
    },
}

M.ControlSeverity = {
    LOW = "LOW",
    MEDIUM = "MEDIUM",
    HIGH = "HIGH",
    CRITICAL = "CRITICAL",
}

M.GetControlOutput = {
    type = "structure",
    members = {
        Arn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Aliases = {
            type = "list",
            member = { type = "string" },
        },
        Name = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Description = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Behavior = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Severity = {
            type = "string",
        },
        RegionConfiguration = setmetatable({ traits = {
            required = true,
        } }, { __index = M.RegionConfiguration }),
        Implementation = M.ImplementationDetails,
        Parameters = {
            type = "list",
            member = M.ControlParameter,
        },
        CreateTime = {
            type = "timestamp",
        },
        GovernedResources = {
            type = "list",
            member = { type = "string" },
        },
    },
}

M.ResourceNotFoundException = {
    type = "structure",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.ImplementationFilter = {
    type = "structure",
    members = {
        Types = {
            type = "list",
            member = { type = "string" },
        },
        Identifiers = {
            type = "list",
            member = { type = "string" },
        },
    },
}

M.ControlFilter = {
    type = "structure",
    members = {
        Implementations = M.ImplementationFilter,
    },
}

M.ListControlsInput = {
    type = "structure",
    members = {
        NextToken = {
            type = "string",
            traits = {
                http_query = "nextToken",
            },
        },
        MaxResults = {
            type = "integer",
            traits = {
                http_query = "maxResults",
            },
        },
        Filter = M.ControlFilter,
    },
}

M.ImplementationSummary = {
    type = "structure",
    members = {
        Type = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Identifier = {
            type = "string",
        },
    },
}

M.ControlSummary = {
    type = "structure",
    members = {
        Arn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Aliases = {
            type = "list",
            member = { type = "string" },
        },
        Name = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Description = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Behavior = {
            type = "string",
        },
        Severity = {
            type = "string",
        },
        Implementation = M.ImplementationSummary,
        CreateTime = {
            type = "timestamp",
        },
        GovernedResources = {
            type = "list",
            member = { type = "string" },
        },
    },
}

M.ListControlsOutput = {
    type = "structure",
    members = {
        Controls = {
            type = "list",
            member = M.ControlSummary,
            traits = {
                required = true,
            },
        },
        NextToken = {
            type = "string",
        },
    },
}

M.ListDomainsInput = {
    type = "structure",
    members = {
        MaxResults = {
            type = "integer",
            traits = {
                http_query = "maxResults",
            },
        },
        NextToken = {
            type = "string",
            traits = {
                http_query = "nextToken",
            },
        },
    },
}

M.DomainSummary = {
    type = "structure",
    members = {
        Arn = {
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
        Description = {
            type = "string",
            traits = {
                required = true,
            },
        },
        CreateTime = {
            type = "timestamp",
            traits = {
                required = true,
            },
        },
        LastUpdateTime = {
            type = "timestamp",
            traits = {
                required = true,
            },
        },
    },
}

M.ListDomainsOutput = {
    type = "structure",
    members = {
        Domains = {
            type = "list",
            member = M.DomainSummary,
            traits = {
                required = true,
            },
        },
        NextToken = {
            type = "string",
        },
    },
}

M.MappingType = {
    FRAMEWORK = "FRAMEWORK",
    COMMON_CONTROL = "COMMON_CONTROL",
    RELATED_CONTROL = "RELATED_CONTROL",
}

M.ControlMappingFilter = {
    type = "structure",
    members = {
        ControlArns = {
            type = "list",
            member = { type = "string" },
        },
        CommonControlArns = {
            type = "list",
            member = { type = "string" },
        },
        MappingTypes = {
            type = "list",
            member = { type = "string" },
        },
    },
}

M.ListControlMappingsInput = {
    type = "structure",
    members = {
        NextToken = {
            type = "string",
            traits = {
                http_query = "nextToken",
            },
        },
        MaxResults = {
            type = "integer",
            traits = {
                http_query = "maxResults",
            },
        },
        Filter = M.ControlMappingFilter,
    },
}

M.FrameworkMappingDetails = {
    type = "structure",
    members = {
        Name = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Item = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.ControlRelationType = {
    COMPLEMENTARY = "COMPLEMENTARY",
    ALTERNATIVE = "ALTERNATIVE",
    MUTUALLY_EXCLUSIVE = "MUTUALLY_EXCLUSIVE",
}

M.RelatedControlMappingDetails = {
    type = "structure",
    members = {
        ControlArn = {
            type = "string",
        },
        RelationType = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.Mapping = {
    type = "union",
    members = {
        Framework = M.FrameworkMappingDetails,
        CommonControl = M.CommonControlMappingDetails,
        RelatedControl = M.RelatedControlMappingDetails,
    },
}

M.ControlMapping = {
    type = "structure",
    members = {
        ControlArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        MappingType = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Mapping = setmetatable({ traits = {
            required = true,
        } }, { __index = M.Mapping }),
    },
}

M.ListControlMappingsOutput = {
    type = "structure",
    members = {
        ControlMappings = {
            type = "list",
            member = M.ControlMapping,
            traits = {
                required = true,
            },
        },
        NextToken = {
            type = "string",
        },
    },
}

M.DomainResourceFilter = {
    type = "structure",
    members = {
        Arn = {
            type = "string",
        },
    },
}

M.ObjectiveFilter = {
    type = "structure",
    members = {
        Domains = {
            type = "list",
            member = M.DomainResourceFilter,
        },
    },
}

M.ListObjectivesInput = {
    type = "structure",
    members = {
        MaxResults = {
            type = "integer",
            traits = {
                http_query = "maxResults",
            },
        },
        NextToken = {
            type = "string",
            traits = {
                http_query = "nextToken",
            },
        },
        ObjectiveFilter = M.ObjectiveFilter,
    },
}

M.ObjectiveSummary = {
    type = "structure",
    members = {
        Arn = {
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
        Description = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Domain = setmetatable({ traits = {
            required = true,
        } }, { __index = M.AssociatedDomainSummary }),
        CreateTime = {
            type = "timestamp",
            traits = {
                required = true,
            },
        },
        LastUpdateTime = {
            type = "timestamp",
            traits = {
                required = true,
            },
        },
    },
}

M.ListObjectivesOutput = {
    type = "structure",
    members = {
        Objectives = {
            type = "list",
            member = M.ObjectiveSummary,
            traits = {
                required = true,
            },
        },
        NextToken = {
            type = "string",
        },
    },
}

return M
