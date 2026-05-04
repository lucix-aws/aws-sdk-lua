local M = {}

M.PosixUser = {
    type = "structure",
    id = "PosixUser",
    members = {
        uid = {
            type = "long",
            traits = {
                required = true,
            },
        },
        gid = {
            type = "long",
            traits = {
                required = true,
            },
        },
        secondaryGids = {
            type = "list",
            member = { type = "long" },
        },
    },
}

M.CreationPermissions = {
    type = "structure",
    id = "CreationPermissions",
    members = {
        ownerUid = {
            type = "long",
            traits = {
                required = true,
            },
        },
        ownerGid = {
            type = "long",
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

M.RootDirectory = {
    type = "structure",
    id = "RootDirectory",
    members = {
        path = {
            type = "string",
        },
        creationPermissions = M.CreationPermissions,
    },
}

M.LifeCycleState = {
    available = "available",
    creating = "creating",
    deleting = "deleting",
    deleted = "deleted",
    error = "error",
    updating = "updating",
}

M.ListAccessPointsDescription = {
    type = "structure",
    id = "ListAccessPointsDescription",
    members = {
        accessPointArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        accessPointId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        fileSystemId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        status = {
            type = "string",
            traits = {
                required = true,
            },
        },
        ownerId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        posixUser = M.PosixUser,
        rootDirectory = M.RootDirectory,
        name = {
            type = "string",
        },
    },
}

M.ConflictException = {
    type = "structure",
    id = "ConflictException",
    error = "client",
    members = {
        errorCode = {
            type = "string",
            traits = {
                required = true,
            },
        },
        message = {
            type = "string",
        },
        resourceId = {
            type = "string",
        },
        resourceType = {
            type = "string",
        },
    },
}

M.Tag = {
    type = "structure",
    id = "Tag",
    members = {
        key = {
            type = "string",
            traits = {
                required = true,
            },
        },
        value = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.CreateAccessPointInput = {
    type = "structure",
    id = "CreateAccessPointInput",
    members = {
        clientToken = {
            type = "string",
            traits = {
                idempotency_token = true,
            },
        },
        tags = {
            type = "list",
            member = M.Tag,
        },
        fileSystemId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        posixUser = M.PosixUser,
        rootDirectory = M.RootDirectory,
    },
}

M.CreateAccessPointOutput = {
    type = "structure",
    id = "CreateAccessPointOutput",
    members = {
        accessPointArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        accessPointId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        clientToken = {
            type = "string",
            traits = {
                required = true,
            },
        },
        fileSystemId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        status = {
            type = "string",
            traits = {
                required = true,
            },
        },
        ownerId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        posixUser = M.PosixUser,
        rootDirectory = M.RootDirectory,
        tags = {
            type = "list",
            member = M.Tag,
        },
        name = {
            type = "string",
        },
    },
}

M.InternalServerException = {
    type = "structure",
    id = "InternalServerException",
    error = "server",
    members = {
        errorCode = {
            type = "string",
            traits = {
                required = true,
            },
        },
        message = {
            type = "string",
        },
    },
}

M.ResourceNotFoundException = {
    type = "structure",
    id = "ResourceNotFoundException",
    error = "client",
    members = {
        errorCode = {
            type = "string",
            traits = {
                required = true,
            },
        },
        message = {
            type = "string",
        },
    },
}

M.ServiceQuotaExceededException = {
    type = "structure",
    id = "ServiceQuotaExceededException",
    error = "client",
    members = {
        errorCode = {
            type = "string",
            traits = {
                required = true,
            },
        },
        message = {
            type = "string",
        },
    },
}

M.ThrottlingException = {
    type = "structure",
    id = "ThrottlingException",
    error = "client",
    members = {
        errorCode = {
            type = "string",
            traits = {
                required = true,
            },
        },
        message = {
            type = "string",
        },
    },
}

M.ValidationException = {
    type = "structure",
    id = "ValidationException",
    error = "client",
    members = {
        errorCode = {
            type = "string",
            traits = {
                required = true,
            },
        },
        message = {
            type = "string",
        },
    },
}

M.CreateFileSystemInput = {
    type = "structure",
    id = "CreateFileSystemInput",
    members = {
        bucket = {
            type = "string",
            traits = {
                required = true,
            },
        },
        prefix = {
            type = "string",
        },
        clientToken = {
            type = "string",
            traits = {
                idempotency_token = true,
            },
        },
        kmsKeyId = {
            type = "string",
        },
        roleArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        tags = {
            type = "list",
            member = M.Tag,
        },
        acceptBucketWarning = {
            type = "boolean",
        },
    },
}

M.CreateFileSystemOutput = {
    type = "structure",
    id = "CreateFileSystemOutput",
    members = {
        creationTime = {
            type = "timestamp",
        },
        fileSystemArn = {
            type = "string",
        },
        fileSystemId = {
            type = "string",
        },
        bucket = {
            type = "string",
        },
        prefix = {
            type = "string",
            traits = {
                default = "",
            },
        },
        clientToken = {
            type = "string",
        },
        kmsKeyId = {
            type = "string",
        },
        status = {
            type = "string",
        },
        statusMessage = {
            type = "string",
        },
        roleArn = {
            type = "string",
        },
        ownerId = {
            type = "string",
        },
        tags = {
            type = "list",
            member = M.Tag,
        },
        name = {
            type = "string",
        },
    },
}

M.IpAddressType = {
    IPV4_ONLY = "IPV4_ONLY",
    IPV6_ONLY = "IPV6_ONLY",
    DUAL_STACK = "DUAL_STACK",
}

M.CreateMountTargetInput = {
    type = "structure",
    id = "CreateMountTargetInput",
    members = {
        fileSystemId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        subnetId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        ipv4Address = {
            type = "string",
        },
        ipv6Address = {
            type = "string",
        },
        ipAddressType = {
            type = "string",
        },
        securityGroups = {
            type = "list",
            member = { type = "string" },
        },
    },
}

M.CreateMountTargetOutput = {
    type = "structure",
    id = "CreateMountTargetOutput",
    members = {
        availabilityZoneId = {
            type = "string",
        },
        ownerId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        mountTargetId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        fileSystemId = {
            type = "string",
        },
        subnetId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        ipv4Address = {
            type = "string",
        },
        ipv6Address = {
            type = "string",
        },
        networkInterfaceId = {
            type = "string",
        },
        vpcId = {
            type = "string",
        },
        securityGroups = {
            type = "list",
            member = { type = "string" },
        },
        status = {
            type = "string",
        },
        statusMessage = {
            type = "string",
        },
    },
}

M.DeleteAccessPointInput = {
    type = "structure",
    id = "DeleteAccessPointInput",
    members = {
        accessPointId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.DeleteAccessPointOutput = {
    type = "structure",
    id = "DeleteAccessPointOutput",
}

M.DeleteFileSystemInput = {
    type = "structure",
    id = "DeleteFileSystemInput",
    members = {
        fileSystemId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        forceDelete = {
            type = "boolean",
            traits = {
                http_query = "forceDelete",
            },
        },
    },
}

M.DeleteFileSystemOutput = {
    type = "structure",
    id = "DeleteFileSystemOutput",
}

M.DeleteFileSystemPolicyInput = {
    type = "structure",
    id = "DeleteFileSystemPolicyInput",
    members = {
        fileSystemId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.DeleteFileSystemPolicyOutput = {
    type = "structure",
    id = "DeleteFileSystemPolicyOutput",
}

M.DeleteMountTargetInput = {
    type = "structure",
    id = "DeleteMountTargetInput",
    members = {
        mountTargetId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.DeleteMountTargetOutput = {
    type = "structure",
    id = "DeleteMountTargetOutput",
}

M.ExpirationDataRule = {
    type = "structure",
    id = "ExpirationDataRule",
    members = {
        daysAfterLastAccess = {
            type = "integer",
            traits = {
                json_name = "daysAfterLastAccess",
                required = true,
            },
        },
    },
}

M.ListFileSystemsDescription = {
    type = "structure",
    id = "ListFileSystemsDescription",
    members = {
        creationTime = {
            type = "timestamp",
            traits = {
                required = true,
            },
        },
        fileSystemArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        fileSystemId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        name = {
            type = "string",
        },
        bucket = {
            type = "string",
            traits = {
                required = true,
            },
        },
        status = {
            type = "string",
            traits = {
                required = true,
            },
        },
        statusMessage = {
            type = "string",
        },
        roleArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        ownerId = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.GetAccessPointInput = {
    type = "structure",
    id = "GetAccessPointInput",
    members = {
        accessPointId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.GetAccessPointOutput = {
    type = "structure",
    id = "GetAccessPointOutput",
    members = {
        accessPointArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        accessPointId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        clientToken = {
            type = "string",
            traits = {
                required = true,
            },
        },
        fileSystemId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        status = {
            type = "string",
            traits = {
                required = true,
            },
        },
        ownerId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        posixUser = M.PosixUser,
        rootDirectory = M.RootDirectory,
        tags = {
            type = "list",
            member = M.Tag,
        },
        name = {
            type = "string",
        },
    },
}

M.GetFileSystemInput = {
    type = "structure",
    id = "GetFileSystemInput",
    members = {
        fileSystemId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.GetFileSystemOutput = {
    type = "structure",
    id = "GetFileSystemOutput",
    members = {
        creationTime = {
            type = "timestamp",
        },
        fileSystemArn = {
            type = "string",
        },
        fileSystemId = {
            type = "string",
        },
        bucket = {
            type = "string",
        },
        prefix = {
            type = "string",
            traits = {
                default = "",
            },
        },
        clientToken = {
            type = "string",
        },
        kmsKeyId = {
            type = "string",
        },
        status = {
            type = "string",
        },
        statusMessage = {
            type = "string",
        },
        roleArn = {
            type = "string",
        },
        ownerId = {
            type = "string",
        },
        tags = {
            type = "list",
            member = M.Tag,
        },
        name = {
            type = "string",
        },
    },
}

M.GetFileSystemPolicyInput = {
    type = "structure",
    id = "GetFileSystemPolicyInput",
    members = {
        fileSystemId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.GetFileSystemPolicyOutput = {
    type = "structure",
    id = "GetFileSystemPolicyOutput",
    members = {
        fileSystemId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        policy = {
            type = "string",
            traits = {
                json_name = "policy",
                required = true,
            },
        },
    },
}

M.GetMountTargetInput = {
    type = "structure",
    id = "GetMountTargetInput",
    members = {
        mountTargetId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.GetMountTargetOutput = {
    type = "structure",
    id = "GetMountTargetOutput",
    members = {
        availabilityZoneId = {
            type = "string",
        },
        ownerId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        mountTargetId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        fileSystemId = {
            type = "string",
        },
        subnetId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        ipv4Address = {
            type = "string",
        },
        ipv6Address = {
            type = "string",
        },
        networkInterfaceId = {
            type = "string",
        },
        vpcId = {
            type = "string",
        },
        securityGroups = {
            type = "list",
            member = { type = "string" },
        },
        status = {
            type = "string",
        },
        statusMessage = {
            type = "string",
        },
    },
}

M.GetSynchronizationConfigurationInput = {
    type = "structure",
    id = "GetSynchronizationConfigurationInput",
    members = {
        fileSystemId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.ImportTrigger = {
    ON_DIRECTORY_FIRST_ACCESS = "ON_DIRECTORY_FIRST_ACCESS",
    ON_FILE_ACCESS = "ON_FILE_ACCESS",
}

M.ImportDataRule = {
    type = "structure",
    id = "ImportDataRule",
    members = {
        prefix = {
            type = "string",
            traits = {
                json_name = "prefix",
                required = true,
            },
        },
        trigger = {
            type = "string",
            traits = {
                json_name = "trigger",
                required = true,
            },
        },
        sizeLessThan = {
            type = "long",
            traits = {
                json_name = "sizeLessThan",
                required = true,
            },
        },
    },
}

M.GetSynchronizationConfigurationOutput = {
    type = "structure",
    id = "GetSynchronizationConfigurationOutput",
    members = {
        latestVersionNumber = {
            type = "integer",
            traits = {
                json_name = "latestVersionNumber",
            },
        },
        importDataRules = {
            type = "list",
            member = M.ImportDataRule,
            traits = {
                json_name = "importDataRules",
                required = true,
            },
        },
        expirationDataRules = {
            type = "list",
            member = M.ExpirationDataRule,
            traits = {
                json_name = "expirationDataRules",
                required = true,
            },
        },
    },
}

M.ListAccessPointsInput = {
    type = "structure",
    id = "ListAccessPointsInput",
    members = {
        fileSystemId = {
            type = "string",
            traits = {
                http_query = "fileSystemId",
                required = true,
            },
        },
        maxResults = {
            type = "integer",
            traits = {
                default = 100,
                http_query = "maxResults",
            },
        },
        nextToken = {
            type = "string",
            traits = {
                http_query = "nextToken",
            },
        },
    },
}

M.ListAccessPointsOutput = {
    type = "structure",
    id = "ListAccessPointsOutput",
    members = {
        nextToken = {
            type = "string",
        },
        accessPoints = {
            type = "list",
            member = M.ListAccessPointsDescription,
            traits = {
                required = true,
            },
        },
    },
}

M.ListFileSystemsInput = {
    type = "structure",
    id = "ListFileSystemsInput",
    members = {
        bucket = {
            type = "string",
            traits = {
                http_query = "bucket",
            },
        },
        maxResults = {
            type = "integer",
            traits = {
                default = 100,
                http_query = "maxResults",
            },
        },
        nextToken = {
            type = "string",
            traits = {
                http_query = "nextToken",
            },
        },
    },
}

M.ListFileSystemsOutput = {
    type = "structure",
    id = "ListFileSystemsOutput",
    members = {
        nextToken = {
            type = "string",
        },
        fileSystems = {
            type = "list",
            member = M.ListFileSystemsDescription,
            traits = {
                required = true,
            },
        },
    },
}

M.ListMountTargetsInput = {
    type = "structure",
    id = "ListMountTargetsInput",
    members = {
        fileSystemId = {
            type = "string",
            traits = {
                http_query = "fileSystemId",
            },
        },
        accessPointId = {
            type = "string",
            traits = {
                http_query = "accessPointId",
            },
        },
        maxResults = {
            type = "integer",
            traits = {
                default = 100,
                http_query = "maxResults",
            },
        },
        nextToken = {
            type = "string",
            traits = {
                http_query = "nextToken",
            },
        },
    },
}

M.ListMountTargetsDescription = {
    type = "structure",
    id = "ListMountTargetsDescription",
    members = {
        availabilityZoneId = {
            type = "string",
        },
        fileSystemId = {
            type = "string",
        },
        ipv4Address = {
            type = "string",
        },
        ipv6Address = {
            type = "string",
        },
        status = {
            type = "string",
        },
        statusMessage = {
            type = "string",
        },
        mountTargetId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        networkInterfaceId = {
            type = "string",
        },
        ownerId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        subnetId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        vpcId = {
            type = "string",
        },
    },
}

M.ListMountTargetsOutput = {
    type = "structure",
    id = "ListMountTargetsOutput",
    members = {
        nextToken = {
            type = "string",
        },
        mountTargets = {
            type = "list",
            member = M.ListMountTargetsDescription,
            traits = {
                required = true,
            },
        },
    },
}

M.ListTagsForResourceInput = {
    type = "structure",
    id = "ListTagsForResourceInput",
    members = {
        resourceId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        maxResults = {
            type = "integer",
            traits = {
                http_query = "MaxResults",
            },
        },
        nextToken = {
            type = "string",
            traits = {
                http_query = "NextToken",
            },
        },
    },
}

M.ListTagsForResourceOutput = {
    type = "structure",
    id = "ListTagsForResourceOutput",
    members = {
        tags = {
            type = "list",
            member = M.Tag,
        },
        nextToken = {
            type = "string",
        },
    },
}

M.PutFileSystemPolicyInput = {
    type = "structure",
    id = "PutFileSystemPolicyInput",
    members = {
        fileSystemId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        policy = {
            type = "string",
            traits = {
                json_name = "policy",
                required = true,
            },
        },
    },
}

M.PutFileSystemPolicyOutput = {
    type = "structure",
    id = "PutFileSystemPolicyOutput",
}

M.PutSynchronizationConfigurationInput = {
    type = "structure",
    id = "PutSynchronizationConfigurationInput",
    members = {
        fileSystemId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        latestVersionNumber = {
            type = "integer",
            traits = {
                json_name = "latestVersionNumber",
            },
        },
        importDataRules = {
            type = "list",
            member = M.ImportDataRule,
            traits = {
                json_name = "importDataRules",
                required = true,
            },
        },
        expirationDataRules = {
            type = "list",
            member = M.ExpirationDataRule,
            traits = {
                json_name = "expirationDataRules",
                required = true,
            },
        },
    },
}

M.PutSynchronizationConfigurationOutput = {
    type = "structure",
    id = "PutSynchronizationConfigurationOutput",
}

M.TagResourceInput = {
    type = "structure",
    id = "TagResourceInput",
    members = {
        resourceId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        tags = {
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
        resourceId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        tagKeys = {
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

M.UpdateMountTargetInput = {
    type = "structure",
    id = "UpdateMountTargetInput",
    members = {
        mountTargetId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        securityGroups = {
            type = "list",
            member = { type = "string" },
            traits = {
                required = true,
            },
        },
    },
}

M.UpdateMountTargetOutput = {
    type = "structure",
    id = "UpdateMountTargetOutput",
    members = {
        availabilityZoneId = {
            type = "string",
        },
        ownerId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        mountTargetId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        fileSystemId = {
            type = "string",
        },
        subnetId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        ipv4Address = {
            type = "string",
        },
        ipv6Address = {
            type = "string",
        },
        networkInterfaceId = {
            type = "string",
        },
        vpcId = {
            type = "string",
        },
        securityGroups = {
            type = "list",
            member = { type = "string" },
        },
        status = {
            type = "string",
        },
        statusMessage = {
            type = "string",
        },
    },
}

return M
