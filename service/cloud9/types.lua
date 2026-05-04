local M = {}

M.BadRequestException = {
    type = "structure",
    id = "BadRequestException",
    error = "client",
    members = {
        message = {
            type = "string",
        },
        className = {
            type = "string",
        },
        code = {
            type = "integer",
            traits = {
                default = 0,
            },
        },
    },
}

M.ConflictException = {
    type = "structure",
    id = "ConflictException",
    error = "client",
    members = {
        message = {
            type = "string",
        },
        className = {
            type = "string",
        },
        code = {
            type = "integer",
            traits = {
                default = 0,
            },
        },
    },
}

M.ConnectionType = {
    CONNECT_SSH = "CONNECT_SSH",
    CONNECT_SSM = "CONNECT_SSM",
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

M.CreateEnvironmentEC2Input = {
    type = "structure",
    id = "CreateEnvironmentEC2Input",
    members = {
        name = {
            type = "string",
            traits = {
                required = true,
            },
        },
        description = {
            type = "string",
        },
        clientRequestToken = {
            type = "string",
        },
        instanceType = {
            type = "string",
            traits = {
                required = true,
            },
        },
        subnetId = {
            type = "string",
        },
        imageId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        automaticStopTimeMinutes = {
            type = "integer",
        },
        ownerArn = {
            type = "string",
        },
        tags = {
            type = "list",
            member = M.Tag,
        },
        connectionType = {
            type = "string",
        },
        dryRun = {
            type = "boolean",
        },
    },
}

M.CreateEnvironmentEC2Output = {
    type = "structure",
    id = "CreateEnvironmentEC2Output",
    members = {
        environmentId = {
            type = "string",
        },
    },
}

M.ForbiddenException = {
    type = "structure",
    id = "ForbiddenException",
    error = "client",
    members = {
        message = {
            type = "string",
        },
        className = {
            type = "string",
        },
        code = {
            type = "integer",
            traits = {
                default = 0,
            },
        },
    },
}

M.InternalServerErrorException = {
    type = "structure",
    id = "InternalServerErrorException",
    error = "server",
    members = {
        message = {
            type = "string",
        },
        className = {
            type = "string",
        },
        code = {
            type = "integer",
            traits = {
                default = 0,
            },
        },
    },
}

M.LimitExceededException = {
    type = "structure",
    id = "LimitExceededException",
    error = "client",
    members = {
        message = {
            type = "string",
        },
        className = {
            type = "string",
        },
        code = {
            type = "integer",
            traits = {
                default = 0,
            },
        },
    },
}

M.NotFoundException = {
    type = "structure",
    id = "NotFoundException",
    error = "client",
    members = {
        message = {
            type = "string",
        },
        className = {
            type = "string",
        },
        code = {
            type = "integer",
            traits = {
                default = 0,
            },
        },
    },
}

M.TooManyRequestsException = {
    type = "structure",
    id = "TooManyRequestsException",
    error = "client",
    members = {
        message = {
            type = "string",
        },
        className = {
            type = "string",
        },
        code = {
            type = "integer",
            traits = {
                default = 0,
            },
        },
    },
}

M.MemberPermissions = {
    READ_WRITE = "read-write",
    READ_ONLY = "read-only",
}

M.CreateEnvironmentMembershipInput = {
    type = "structure",
    id = "CreateEnvironmentMembershipInput",
    members = {
        environmentId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        userArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        permissions = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.Permissions = {
    OWNER = "owner",
    READ_WRITE = "read-write",
    READ_ONLY = "read-only",
}

M.EnvironmentMember = {
    type = "structure",
    id = "EnvironmentMember",
    members = {
        permissions = {
            type = "string",
            traits = {
                required = true,
            },
        },
        userId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        userArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        environmentId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        lastAccess = {
            type = "timestamp",
        },
    },
}

M.CreateEnvironmentMembershipOutput = {
    type = "structure",
    id = "CreateEnvironmentMembershipOutput",
    members = {
        membership = setmetatable({ traits = {
            required = true,
        } }, { __index = M.EnvironmentMember }),
    },
}

M.DeleteEnvironmentInput = {
    type = "structure",
    id = "DeleteEnvironmentInput",
    members = {
        environmentId = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.DeleteEnvironmentOutput = {
    type = "structure",
    id = "DeleteEnvironmentOutput",
}

M.DeleteEnvironmentMembershipInput = {
    type = "structure",
    id = "DeleteEnvironmentMembershipInput",
    members = {
        environmentId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        userArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.DeleteEnvironmentMembershipOutput = {
    type = "structure",
    id = "DeleteEnvironmentMembershipOutput",
}

M.DescribeEnvironmentMembershipsInput = {
    type = "structure",
    id = "DescribeEnvironmentMembershipsInput",
    members = {
        userArn = {
            type = "string",
        },
        environmentId = {
            type = "string",
        },
        permissions = {
            type = "list",
            member = { type = "string" },
        },
        nextToken = {
            type = "string",
        },
        maxResults = {
            type = "integer",
        },
    },
}

M.DescribeEnvironmentMembershipsOutput = {
    type = "structure",
    id = "DescribeEnvironmentMembershipsOutput",
    members = {
        memberships = {
            type = "list",
            member = M.EnvironmentMember,
        },
        nextToken = {
            type = "string",
        },
    },
}

M.DescribeEnvironmentsInput = {
    type = "structure",
    id = "DescribeEnvironmentsInput",
    members = {
        environmentIds = {
            type = "list",
            member = { type = "string" },
            traits = {
                required = true,
            },
        },
    },
}

M.EnvironmentLifecycleStatus = {
    CREATING = "CREATING",
    CREATED = "CREATED",
    CREATE_FAILED = "CREATE_FAILED",
    DELETING = "DELETING",
    DELETE_FAILED = "DELETE_FAILED",
}

M.EnvironmentLifecycle = {
    type = "structure",
    id = "EnvironmentLifecycle",
    members = {
        status = {
            type = "string",
        },
        reason = {
            type = "string",
        },
        failureResource = {
            type = "string",
        },
    },
}

M.ManagedCredentialsStatus = {
    ENABLED_ON_CREATE = "ENABLED_ON_CREATE",
    ENABLED_BY_OWNER = "ENABLED_BY_OWNER",
    DISABLED_BY_DEFAULT = "DISABLED_BY_DEFAULT",
    DISABLED_BY_OWNER = "DISABLED_BY_OWNER",
    DISABLED_BY_COLLABORATOR = "DISABLED_BY_COLLABORATOR",
    PENDING_REMOVAL_BY_COLLABORATOR = "PENDING_REMOVAL_BY_COLLABORATOR",
    PENDING_START_REMOVAL_BY_COLLABORATOR = "PENDING_START_REMOVAL_BY_COLLABORATOR",
    PENDING_REMOVAL_BY_OWNER = "PENDING_REMOVAL_BY_OWNER",
    PENDING_START_REMOVAL_BY_OWNER = "PENDING_START_REMOVAL_BY_OWNER",
    FAILED_REMOVAL_BY_COLLABORATOR = "FAILED_REMOVAL_BY_COLLABORATOR",
    FAILED_REMOVAL_BY_OWNER = "FAILED_REMOVAL_BY_OWNER",
}

M.EnvironmentType = {
    SSH = "ssh",
    EC2 = "ec2",
}

M.Environment = {
    type = "structure",
    id = "Environment",
    members = {
        id = {
            type = "string",
        },
        name = {
            type = "string",
        },
        description = {
            type = "string",
        },
        type = {
            type = "string",
            traits = {
                required = true,
            },
        },
        connectionType = {
            type = "string",
        },
        arn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        ownerArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        lifecycle = M.EnvironmentLifecycle,
        managedCredentialsStatus = {
            type = "string",
        },
    },
}

M.DescribeEnvironmentsOutput = {
    type = "structure",
    id = "DescribeEnvironmentsOutput",
    members = {
        environments = {
            type = "list",
            member = M.Environment,
        },
    },
}

M.DescribeEnvironmentStatusInput = {
    type = "structure",
    id = "DescribeEnvironmentStatusInput",
    members = {
        environmentId = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.EnvironmentStatus = {
    ERROR = "error",
    CREATING = "creating",
    CONNECTING = "connecting",
    READY = "ready",
    STOPPING = "stopping",
    STOPPED = "stopped",
    DELETING = "deleting",
}

M.DescribeEnvironmentStatusOutput = {
    type = "structure",
    id = "DescribeEnvironmentStatusOutput",
    members = {
        status = {
            type = "string",
            traits = {
                required = true,
            },
        },
        message = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.ListEnvironmentsInput = {
    type = "structure",
    id = "ListEnvironmentsInput",
    members = {
        nextToken = {
            type = "string",
        },
        maxResults = {
            type = "integer",
        },
    },
}

M.ListEnvironmentsOutput = {
    type = "structure",
    id = "ListEnvironmentsOutput",
    members = {
        nextToken = {
            type = "string",
        },
        environmentIds = {
            type = "list",
            member = { type = "string" },
        },
    },
}

M.ListTagsForResourceInput = {
    type = "structure",
    id = "ListTagsForResourceInput",
    members = {
        ResourceARN = {
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

M.ConcurrentAccessException = {
    type = "structure",
    id = "ConcurrentAccessException",
    error = "client",
    members = {
        message = {
            type = "string",
        },
        className = {
            type = "string",
        },
        code = {
            type = "integer",
            traits = {
                default = 0,
            },
        },
    },
}

M.TagResourceInput = {
    type = "structure",
    id = "TagResourceInput",
    members = {
        ResourceARN = {
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
        ResourceARN = {
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

M.ManagedCredentialsAction = {
    ENABLE = "ENABLE",
    DISABLE = "DISABLE",
}

M.UpdateEnvironmentInput = {
    type = "structure",
    id = "UpdateEnvironmentInput",
    members = {
        environmentId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        name = {
            type = "string",
        },
        description = {
            type = "string",
        },
        managedCredentialsAction = {
            type = "string",
        },
    },
}

M.UpdateEnvironmentOutput = {
    type = "structure",
    id = "UpdateEnvironmentOutput",
}

M.UpdateEnvironmentMembershipInput = {
    type = "structure",
    id = "UpdateEnvironmentMembershipInput",
    members = {
        environmentId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        userArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        permissions = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.UpdateEnvironmentMembershipOutput = {
    type = "structure",
    id = "UpdateEnvironmentMembershipOutput",
    members = {
        membership = M.EnvironmentMember,
    },
}

return M
