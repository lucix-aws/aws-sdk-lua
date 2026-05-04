local M = {}

M.BadRequestException = {
    type = "structure",
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
    members = {
        environmentId = {
            type = "string",
        },
    },
}

M.ForbiddenException = {
    type = "structure",
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
    members = {
        membership = setmetatable({ traits = {
            required = true,
        } }, { __index = M.EnvironmentMember }),
    },
}

M.DeleteEnvironmentInput = {
    type = "structure",
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
}

M.DeleteEnvironmentMembershipInput = {
    type = "structure",
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
}

M.DescribeEnvironmentMembershipsInput = {
    type = "structure",
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
    members = {
        environments = {
            type = "list",
            member = M.Environment,
        },
    },
}

M.DescribeEnvironmentStatusInput = {
    type = "structure",
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
    members = {
        Tags = {
            type = "list",
            member = M.Tag,
        },
    },
}

M.ConcurrentAccessException = {
    type = "structure",
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
}

M.UntagResourceInput = {
    type = "structure",
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
}

M.ManagedCredentialsAction = {
    ENABLE = "ENABLE",
    DISABLE = "DISABLE",
}

M.UpdateEnvironmentInput = {
    type = "structure",
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
}

M.UpdateEnvironmentMembershipInput = {
    type = "structure",
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
    members = {
        membership = M.EnvironmentMember,
    },
}

return M
