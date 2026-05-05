local id = require("smithy.shape_id")
local schema = require("smithy.schema")
local prelude = require("smithy.prelude")
local traits = require("smithy.traits")

local _N = "com.amazonaws.efs"

local M = {}

M.AccessPointAlreadyExists = schema.new({
    id = id.from(_N, "AccessPointAlreadyExists"),
    type = "structure",
    traits = {
        [traits.ERROR] = { value = "client" },
    },
    members = {
        ErrorCode = schema.new({
            id = id.from(_N, "AccessPointAlreadyExists", "ErrorCode"),
            type = "string",
            name = "ErrorCode",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        Message = schema.new({
            id = id.from(_N, "AccessPointAlreadyExists", "Message"),
            type = "string",
            name = "Message",
            target_id = prelude.String.id,
        }),
        AccessPointId = schema.new({
            id = id.from(_N, "AccessPointAlreadyExists", "AccessPointId"),
            type = "string",
            name = "AccessPointId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.PosixUser = schema.new({
    id = id.from(_N, "PosixUser"),
    type = "structure",
    members = {
        Uid = schema.new({
            id = id.from(_N, "PosixUser", "Uid"),
            type = "long",
            name = "Uid",
            target_id = prelude.Long.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        Gid = schema.new({
            id = id.from(_N, "PosixUser", "Gid"),
            type = "long",
            name = "Gid",
            target_id = prelude.Long.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        SecondaryGids = schema.new({
            id = id.from(_N, "PosixUser", "SecondaryGids"),
            type = "list",
            name = "SecondaryGids",
            target_id = prelude.Document.id,
            list_member = prelude.Long,
        }),
    },
})

M.CreationInfo = schema.new({
    id = id.from(_N, "CreationInfo"),
    type = "structure",
    members = {
        OwnerUid = schema.new({
            id = id.from(_N, "CreationInfo", "OwnerUid"),
            type = "long",
            name = "OwnerUid",
            target_id = prelude.Long.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        OwnerGid = schema.new({
            id = id.from(_N, "CreationInfo", "OwnerGid"),
            type = "long",
            name = "OwnerGid",
            target_id = prelude.Long.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        Permissions = schema.new({
            id = id.from(_N, "CreationInfo", "Permissions"),
            type = "string",
            name = "Permissions",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.RootDirectory = schema.new({
    id = id.from(_N, "RootDirectory"),
    type = "structure",
    members = {
        Path = schema.new({
            id = id.from(_N, "RootDirectory", "Path"),
            type = "string",
            name = "Path",
            target_id = prelude.String.id,
        }),
        CreationInfo = schema.new({
            id = id.from(_N, "RootDirectory", "CreationInfo"),
            type = "structure",
            name = "CreationInfo",
            target_id = id.from(_N, "CreationInfo"),
            target = M.CreationInfo,
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
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.AccessPointDescription = schema.new({
    id = id.from(_N, "AccessPointDescription"),
    type = "structure",
    members = {
        ClientToken = schema.new({
            id = id.from(_N, "AccessPointDescription", "ClientToken"),
            type = "string",
            name = "ClientToken",
            target_id = prelude.String.id,
        }),
        Name = schema.new({
            id = id.from(_N, "AccessPointDescription", "Name"),
            type = "string",
            name = "Name",
            target_id = prelude.String.id,
        }),
        Tags = schema.new({
            id = id.from(_N, "AccessPointDescription", "Tags"),
            type = "list",
            name = "Tags",
            target_id = prelude.Document.id,
            list_member = M.Tag,
        }),
        AccessPointId = schema.new({
            id = id.from(_N, "AccessPointDescription", "AccessPointId"),
            type = "string",
            name = "AccessPointId",
            target_id = prelude.String.id,
        }),
        AccessPointArn = schema.new({
            id = id.from(_N, "AccessPointDescription", "AccessPointArn"),
            type = "string",
            name = "AccessPointArn",
            target_id = prelude.String.id,
        }),
        FileSystemId = schema.new({
            id = id.from(_N, "AccessPointDescription", "FileSystemId"),
            type = "string",
            name = "FileSystemId",
            target_id = prelude.String.id,
        }),
        PosixUser = schema.new({
            id = id.from(_N, "AccessPointDescription", "PosixUser"),
            type = "structure",
            name = "PosixUser",
            target_id = id.from(_N, "PosixUser"),
            target = M.PosixUser,
        }),
        RootDirectory = schema.new({
            id = id.from(_N, "AccessPointDescription", "RootDirectory"),
            type = "structure",
            name = "RootDirectory",
            target_id = id.from(_N, "RootDirectory"),
            target = M.RootDirectory,
        }),
        OwnerId = schema.new({
            id = id.from(_N, "AccessPointDescription", "OwnerId"),
            type = "string",
            name = "OwnerId",
            target_id = prelude.String.id,
        }),
        LifeCycleState = schema.new({
            id = id.from(_N, "AccessPointDescription", "LifeCycleState"),
            type = "string",
            name = "LifeCycleState",
            target_id = prelude.String.id,
        }),
    },
})

M.AccessPointLimitExceeded = schema.new({
    id = id.from(_N, "AccessPointLimitExceeded"),
    type = "structure",
    traits = {
        [traits.ERROR] = { value = "client" },
    },
    members = {
        ErrorCode = schema.new({
            id = id.from(_N, "AccessPointLimitExceeded", "ErrorCode"),
            type = "string",
            name = "ErrorCode",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        Message = schema.new({
            id = id.from(_N, "AccessPointLimitExceeded", "Message"),
            type = "string",
            name = "Message",
            target_id = prelude.String.id,
        }),
    },
})

M.AccessPointNotFound = schema.new({
    id = id.from(_N, "AccessPointNotFound"),
    type = "structure",
    traits = {
        [traits.ERROR] = { value = "client" },
    },
    members = {
        ErrorCode = schema.new({
            id = id.from(_N, "AccessPointNotFound", "ErrorCode"),
            type = "string",
            name = "ErrorCode",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        Message = schema.new({
            id = id.from(_N, "AccessPointNotFound", "Message"),
            type = "string",
            name = "Message",
            target_id = prelude.String.id,
        }),
    },
})

M.AvailabilityZonesMismatch = schema.new({
    id = id.from(_N, "AvailabilityZonesMismatch"),
    type = "structure",
    traits = {
        [traits.ERROR] = { value = "client" },
    },
    members = {
        ErrorCode = schema.new({
            id = id.from(_N, "AvailabilityZonesMismatch", "ErrorCode"),
            type = "string",
            name = "ErrorCode",
            target_id = prelude.String.id,
        }),
        Message = schema.new({
            id = id.from(_N, "AvailabilityZonesMismatch", "Message"),
            type = "string",
            name = "Message",
            target_id = prelude.String.id,
        }),
    },
})

M.BackupPolicy = schema.new({
    id = id.from(_N, "BackupPolicy"),
    type = "structure",
    members = {
        Status = schema.new({
            id = id.from(_N, "BackupPolicy", "Status"),
            type = "string",
            name = "Status",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.BadRequest = schema.new({
    id = id.from(_N, "BadRequest"),
    type = "structure",
    traits = {
        [traits.ERROR] = { value = "client" },
    },
    members = {
        ErrorCode = schema.new({
            id = id.from(_N, "BadRequest", "ErrorCode"),
            type = "string",
            name = "ErrorCode",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        Message = schema.new({
            id = id.from(_N, "BadRequest", "Message"),
            type = "string",
            name = "Message",
            target_id = prelude.String.id,
        }),
    },
})

M.ConflictException = schema.new({
    id = id.from(_N, "ConflictException"),
    type = "structure",
    traits = {
        [traits.ERROR] = { value = "client" },
    },
    members = {
        ErrorCode = schema.new({
            id = id.from(_N, "ConflictException", "ErrorCode"),
            type = "string",
            name = "ErrorCode",
            target_id = prelude.String.id,
        }),
        Message = schema.new({
            id = id.from(_N, "ConflictException", "Message"),
            type = "string",
            name = "Message",
            target_id = prelude.String.id,
        }),
    },
})

M.CreateAccessPointInput = schema.new({
    id = id.from(_N, "CreateAccessPointInput"),
    type = "structure",
    members = {
        ClientToken = schema.new({
            id = id.from(_N, "CreateAccessPointInput", "ClientToken"),
            type = "string",
            name = "ClientToken",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.IDEMPOTENCY_TOKEN] = {},
            },
        }),
        Tags = schema.new({
            id = id.from(_N, "CreateAccessPointInput", "Tags"),
            type = "list",
            name = "Tags",
            target_id = prelude.Document.id,
            list_member = M.Tag,
        }),
        FileSystemId = schema.new({
            id = id.from(_N, "CreateAccessPointInput", "FileSystemId"),
            type = "string",
            name = "FileSystemId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        PosixUser = schema.new({
            id = id.from(_N, "CreateAccessPointInput", "PosixUser"),
            type = "structure",
            name = "PosixUser",
            target_id = id.from(_N, "PosixUser"),
            target = M.PosixUser,
        }),
        RootDirectory = schema.new({
            id = id.from(_N, "CreateAccessPointInput", "RootDirectory"),
            type = "structure",
            name = "RootDirectory",
            target_id = id.from(_N, "RootDirectory"),
            target = M.RootDirectory,
        }),
    },
})

M.CreateAccessPointOutput = schema.new({
    id = id.from(_N, "CreateAccessPointOutput"),
    type = "structure",
    members = {
        ClientToken = schema.new({
            id = id.from(_N, "CreateAccessPointOutput", "ClientToken"),
            type = "string",
            name = "ClientToken",
            target_id = prelude.String.id,
        }),
        Name = schema.new({
            id = id.from(_N, "CreateAccessPointOutput", "Name"),
            type = "string",
            name = "Name",
            target_id = prelude.String.id,
        }),
        Tags = schema.new({
            id = id.from(_N, "CreateAccessPointOutput", "Tags"),
            type = "list",
            name = "Tags",
            target_id = prelude.Document.id,
            list_member = M.Tag,
        }),
        AccessPointId = schema.new({
            id = id.from(_N, "CreateAccessPointOutput", "AccessPointId"),
            type = "string",
            name = "AccessPointId",
            target_id = prelude.String.id,
        }),
        AccessPointArn = schema.new({
            id = id.from(_N, "CreateAccessPointOutput", "AccessPointArn"),
            type = "string",
            name = "AccessPointArn",
            target_id = prelude.String.id,
        }),
        FileSystemId = schema.new({
            id = id.from(_N, "CreateAccessPointOutput", "FileSystemId"),
            type = "string",
            name = "FileSystemId",
            target_id = prelude.String.id,
        }),
        PosixUser = schema.new({
            id = id.from(_N, "CreateAccessPointOutput", "PosixUser"),
            type = "structure",
            name = "PosixUser",
            target_id = id.from(_N, "PosixUser"),
            target = M.PosixUser,
        }),
        RootDirectory = schema.new({
            id = id.from(_N, "CreateAccessPointOutput", "RootDirectory"),
            type = "structure",
            name = "RootDirectory",
            target_id = id.from(_N, "RootDirectory"),
            target = M.RootDirectory,
        }),
        OwnerId = schema.new({
            id = id.from(_N, "CreateAccessPointOutput", "OwnerId"),
            type = "string",
            name = "OwnerId",
            target_id = prelude.String.id,
        }),
        LifeCycleState = schema.new({
            id = id.from(_N, "CreateAccessPointOutput", "LifeCycleState"),
            type = "string",
            name = "LifeCycleState",
            target_id = prelude.String.id,
        }),
    },
})

M.FileSystemNotFound = schema.new({
    id = id.from(_N, "FileSystemNotFound"),
    type = "structure",
    traits = {
        [traits.ERROR] = { value = "client" },
    },
    members = {
        ErrorCode = schema.new({
            id = id.from(_N, "FileSystemNotFound", "ErrorCode"),
            type = "string",
            name = "ErrorCode",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        Message = schema.new({
            id = id.from(_N, "FileSystemNotFound", "Message"),
            type = "string",
            name = "Message",
            target_id = prelude.String.id,
        }),
    },
})

M.IncorrectFileSystemLifeCycleState = schema.new({
    id = id.from(_N, "IncorrectFileSystemLifeCycleState"),
    type = "structure",
    traits = {
        [traits.ERROR] = { value = "client" },
    },
    members = {
        ErrorCode = schema.new({
            id = id.from(_N, "IncorrectFileSystemLifeCycleState", "ErrorCode"),
            type = "string",
            name = "ErrorCode",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        Message = schema.new({
            id = id.from(_N, "IncorrectFileSystemLifeCycleState", "Message"),
            type = "string",
            name = "Message",
            target_id = prelude.String.id,
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
        ErrorCode = schema.new({
            id = id.from(_N, "InternalServerError", "ErrorCode"),
            type = "string",
            name = "ErrorCode",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        Message = schema.new({
            id = id.from(_N, "InternalServerError", "Message"),
            type = "string",
            name = "Message",
            target_id = prelude.String.id,
        }),
    },
})

M.ThrottlingException = schema.new({
    id = id.from(_N, "ThrottlingException"),
    type = "structure",
    traits = {
        [traits.ERROR] = { value = "client" },
    },
    members = {
        ErrorCode = schema.new({
            id = id.from(_N, "ThrottlingException", "ErrorCode"),
            type = "string",
            name = "ErrorCode",
            target_id = prelude.String.id,
        }),
        Message = schema.new({
            id = id.from(_N, "ThrottlingException", "Message"),
            type = "string",
            name = "Message",
            target_id = prelude.String.id,
        }),
    },
})

M.CreateFileSystemInput = schema.new({
    id = id.from(_N, "CreateFileSystemInput"),
    type = "structure",
    members = {
        CreationToken = schema.new({
            id = id.from(_N, "CreateFileSystemInput", "CreationToken"),
            type = "string",
            name = "CreationToken",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.IDEMPOTENCY_TOKEN] = {},
            },
        }),
        PerformanceMode = schema.new({
            id = id.from(_N, "CreateFileSystemInput", "PerformanceMode"),
            type = "string",
            name = "PerformanceMode",
            target_id = prelude.String.id,
        }),
        Encrypted = schema.new({
            id = id.from(_N, "CreateFileSystemInput", "Encrypted"),
            type = "boolean",
            name = "Encrypted",
            target_id = prelude.Boolean.id,
        }),
        KmsKeyId = schema.new({
            id = id.from(_N, "CreateFileSystemInput", "KmsKeyId"),
            type = "string",
            name = "KmsKeyId",
            target_id = prelude.String.id,
        }),
        ThroughputMode = schema.new({
            id = id.from(_N, "CreateFileSystemInput", "ThroughputMode"),
            type = "string",
            name = "ThroughputMode",
            target_id = prelude.String.id,
        }),
        ProvisionedThroughputInMibps = schema.new({
            id = id.from(_N, "CreateFileSystemInput", "ProvisionedThroughputInMibps"),
            type = "double",
            name = "ProvisionedThroughputInMibps",
            target_id = prelude.Double.id,
        }),
        AvailabilityZoneName = schema.new({
            id = id.from(_N, "CreateFileSystemInput", "AvailabilityZoneName"),
            type = "string",
            name = "AvailabilityZoneName",
            target_id = prelude.String.id,
        }),
        Backup = schema.new({
            id = id.from(_N, "CreateFileSystemInput", "Backup"),
            type = "boolean",
            name = "Backup",
            target_id = prelude.Boolean.id,
        }),
        Tags = schema.new({
            id = id.from(_N, "CreateFileSystemInput", "Tags"),
            type = "list",
            name = "Tags",
            target_id = prelude.Document.id,
            list_member = M.Tag,
        }),
    },
})

M.FileSystemProtectionDescription = schema.new({
    id = id.from(_N, "FileSystemProtectionDescription"),
    type = "structure",
    members = {
        ReplicationOverwriteProtection = schema.new({
            id = id.from(_N, "FileSystemProtectionDescription", "ReplicationOverwriteProtection"),
            type = "string",
            name = "ReplicationOverwriteProtection",
            target_id = prelude.String.id,
        }),
    },
})

M.FileSystemSize = schema.new({
    id = id.from(_N, "FileSystemSize"),
    type = "structure",
    members = {
        Value = schema.new({
            id = id.from(_N, "FileSystemSize", "Value"),
            type = "long",
            name = "Value",
            target_id = prelude.Long.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.DEFAULT] = { value = 0 },
            },
        }),
        Timestamp = schema.new({
            id = id.from(_N, "FileSystemSize", "Timestamp"),
            type = "timestamp",
            name = "Timestamp",
            target_id = prelude.Timestamp.id,
        }),
        ValueInIA = schema.new({
            id = id.from(_N, "FileSystemSize", "ValueInIA"),
            type = "long",
            name = "ValueInIA",
            target_id = prelude.Long.id,
        }),
        ValueInStandard = schema.new({
            id = id.from(_N, "FileSystemSize", "ValueInStandard"),
            type = "long",
            name = "ValueInStandard",
            target_id = prelude.Long.id,
        }),
        ValueInArchive = schema.new({
            id = id.from(_N, "FileSystemSize", "ValueInArchive"),
            type = "long",
            name = "ValueInArchive",
            target_id = prelude.Long.id,
        }),
    },
})

M.CreateFileSystemOutput = schema.new({
    id = id.from(_N, "CreateFileSystemOutput"),
    type = "structure",
    members = {
        OwnerId = schema.new({
            id = id.from(_N, "CreateFileSystemOutput", "OwnerId"),
            type = "string",
            name = "OwnerId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        CreationToken = schema.new({
            id = id.from(_N, "CreateFileSystemOutput", "CreationToken"),
            type = "string",
            name = "CreationToken",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        FileSystemId = schema.new({
            id = id.from(_N, "CreateFileSystemOutput", "FileSystemId"),
            type = "string",
            name = "FileSystemId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        FileSystemArn = schema.new({
            id = id.from(_N, "CreateFileSystemOutput", "FileSystemArn"),
            type = "string",
            name = "FileSystemArn",
            target_id = prelude.String.id,
        }),
        CreationTime = schema.new({
            id = id.from(_N, "CreateFileSystemOutput", "CreationTime"),
            type = "timestamp",
            name = "CreationTime",
            target_id = prelude.Timestamp.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        LifeCycleState = schema.new({
            id = id.from(_N, "CreateFileSystemOutput", "LifeCycleState"),
            type = "string",
            name = "LifeCycleState",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        Name = schema.new({
            id = id.from(_N, "CreateFileSystemOutput", "Name"),
            type = "string",
            name = "Name",
            target_id = prelude.String.id,
        }),
        NumberOfMountTargets = schema.new({
            id = id.from(_N, "CreateFileSystemOutput", "NumberOfMountTargets"),
            type = "integer",
            name = "NumberOfMountTargets",
            target_id = prelude.Integer.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.DEFAULT] = { value = 0 },
            },
        }),
        SizeInBytes = schema.new({
            id = id.from(_N, "CreateFileSystemOutput", "SizeInBytes"),
            type = "structure",
            name = "SizeInBytes",
            target_id = id.from(_N, "FileSystemSize"),
            target = M.FileSystemSize,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        PerformanceMode = schema.new({
            id = id.from(_N, "CreateFileSystemOutput", "PerformanceMode"),
            type = "string",
            name = "PerformanceMode",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        Encrypted = schema.new({
            id = id.from(_N, "CreateFileSystemOutput", "Encrypted"),
            type = "boolean",
            name = "Encrypted",
            target_id = prelude.Boolean.id,
        }),
        KmsKeyId = schema.new({
            id = id.from(_N, "CreateFileSystemOutput", "KmsKeyId"),
            type = "string",
            name = "KmsKeyId",
            target_id = prelude.String.id,
        }),
        ThroughputMode = schema.new({
            id = id.from(_N, "CreateFileSystemOutput", "ThroughputMode"),
            type = "string",
            name = "ThroughputMode",
            target_id = prelude.String.id,
        }),
        ProvisionedThroughputInMibps = schema.new({
            id = id.from(_N, "CreateFileSystemOutput", "ProvisionedThroughputInMibps"),
            type = "double",
            name = "ProvisionedThroughputInMibps",
            target_id = prelude.Double.id,
        }),
        AvailabilityZoneName = schema.new({
            id = id.from(_N, "CreateFileSystemOutput", "AvailabilityZoneName"),
            type = "string",
            name = "AvailabilityZoneName",
            target_id = prelude.String.id,
        }),
        AvailabilityZoneId = schema.new({
            id = id.from(_N, "CreateFileSystemOutput", "AvailabilityZoneId"),
            type = "string",
            name = "AvailabilityZoneId",
            target_id = prelude.String.id,
        }),
        Tags = schema.new({
            id = id.from(_N, "CreateFileSystemOutput", "Tags"),
            type = "list",
            name = "Tags",
            target_id = prelude.Document.id,
            list_member = M.Tag,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        FileSystemProtection = schema.new({
            id = id.from(_N, "CreateFileSystemOutput", "FileSystemProtection"),
            type = "structure",
            name = "FileSystemProtection",
            target_id = id.from(_N, "FileSystemProtectionDescription"),
            target = M.FileSystemProtectionDescription,
        }),
    },
})

M.FileSystemAlreadyExists = schema.new({
    id = id.from(_N, "FileSystemAlreadyExists"),
    type = "structure",
    traits = {
        [traits.ERROR] = { value = "client" },
    },
    members = {
        ErrorCode = schema.new({
            id = id.from(_N, "FileSystemAlreadyExists", "ErrorCode"),
            type = "string",
            name = "ErrorCode",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        Message = schema.new({
            id = id.from(_N, "FileSystemAlreadyExists", "Message"),
            type = "string",
            name = "Message",
            target_id = prelude.String.id,
        }),
        FileSystemId = schema.new({
            id = id.from(_N, "FileSystemAlreadyExists", "FileSystemId"),
            type = "string",
            name = "FileSystemId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.FileSystemLimitExceeded = schema.new({
    id = id.from(_N, "FileSystemLimitExceeded"),
    type = "structure",
    traits = {
        [traits.ERROR] = { value = "client" },
    },
    members = {
        ErrorCode = schema.new({
            id = id.from(_N, "FileSystemLimitExceeded", "ErrorCode"),
            type = "string",
            name = "ErrorCode",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        Message = schema.new({
            id = id.from(_N, "FileSystemLimitExceeded", "Message"),
            type = "string",
            name = "Message",
            target_id = prelude.String.id,
        }),
    },
})

M.InsufficientThroughputCapacity = schema.new({
    id = id.from(_N, "InsufficientThroughputCapacity"),
    type = "structure",
    traits = {
        [traits.ERROR] = { value = "server" },
    },
    members = {
        ErrorCode = schema.new({
            id = id.from(_N, "InsufficientThroughputCapacity", "ErrorCode"),
            type = "string",
            name = "ErrorCode",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        Message = schema.new({
            id = id.from(_N, "InsufficientThroughputCapacity", "Message"),
            type = "string",
            name = "Message",
            target_id = prelude.String.id,
        }),
    },
})

M.ThroughputLimitExceeded = schema.new({
    id = id.from(_N, "ThroughputLimitExceeded"),
    type = "structure",
    traits = {
        [traits.ERROR] = { value = "client" },
    },
    members = {
        ErrorCode = schema.new({
            id = id.from(_N, "ThroughputLimitExceeded", "ErrorCode"),
            type = "string",
            name = "ErrorCode",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        Message = schema.new({
            id = id.from(_N, "ThroughputLimitExceeded", "Message"),
            type = "string",
            name = "Message",
            target_id = prelude.String.id,
        }),
    },
})

M.UnsupportedAvailabilityZone = schema.new({
    id = id.from(_N, "UnsupportedAvailabilityZone"),
    type = "structure",
    traits = {
        [traits.ERROR] = { value = "client" },
    },
    members = {
        ErrorCode = schema.new({
            id = id.from(_N, "UnsupportedAvailabilityZone", "ErrorCode"),
            type = "string",
            name = "ErrorCode",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        Message = schema.new({
            id = id.from(_N, "UnsupportedAvailabilityZone", "Message"),
            type = "string",
            name = "Message",
            target_id = prelude.String.id,
        }),
    },
})

M.CreateMountTargetInput = schema.new({
    id = id.from(_N, "CreateMountTargetInput"),
    type = "structure",
    members = {
        FileSystemId = schema.new({
            id = id.from(_N, "CreateMountTargetInput", "FileSystemId"),
            type = "string",
            name = "FileSystemId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        SubnetId = schema.new({
            id = id.from(_N, "CreateMountTargetInput", "SubnetId"),
            type = "string",
            name = "SubnetId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        IpAddress = schema.new({
            id = id.from(_N, "CreateMountTargetInput", "IpAddress"),
            type = "string",
            name = "IpAddress",
            target_id = prelude.String.id,
        }),
        Ipv6Address = schema.new({
            id = id.from(_N, "CreateMountTargetInput", "Ipv6Address"),
            type = "string",
            name = "Ipv6Address",
            target_id = prelude.String.id,
        }),
        IpAddressType = schema.new({
            id = id.from(_N, "CreateMountTargetInput", "IpAddressType"),
            type = "string",
            name = "IpAddressType",
            target_id = prelude.String.id,
        }),
        SecurityGroups = schema.new({
            id = id.from(_N, "CreateMountTargetInput", "SecurityGroups"),
            type = "list",
            name = "SecurityGroups",
            target_id = prelude.Document.id,
            list_member = prelude.String,
        }),
    },
})

M.CreateMountTargetOutput = schema.new({
    id = id.from(_N, "CreateMountTargetOutput"),
    type = "structure",
    members = {
        OwnerId = schema.new({
            id = id.from(_N, "CreateMountTargetOutput", "OwnerId"),
            type = "string",
            name = "OwnerId",
            target_id = prelude.String.id,
        }),
        MountTargetId = schema.new({
            id = id.from(_N, "CreateMountTargetOutput", "MountTargetId"),
            type = "string",
            name = "MountTargetId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        FileSystemId = schema.new({
            id = id.from(_N, "CreateMountTargetOutput", "FileSystemId"),
            type = "string",
            name = "FileSystemId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        SubnetId = schema.new({
            id = id.from(_N, "CreateMountTargetOutput", "SubnetId"),
            type = "string",
            name = "SubnetId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        LifeCycleState = schema.new({
            id = id.from(_N, "CreateMountTargetOutput", "LifeCycleState"),
            type = "string",
            name = "LifeCycleState",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        IpAddress = schema.new({
            id = id.from(_N, "CreateMountTargetOutput", "IpAddress"),
            type = "string",
            name = "IpAddress",
            target_id = prelude.String.id,
        }),
        Ipv6Address = schema.new({
            id = id.from(_N, "CreateMountTargetOutput", "Ipv6Address"),
            type = "string",
            name = "Ipv6Address",
            target_id = prelude.String.id,
        }),
        NetworkInterfaceId = schema.new({
            id = id.from(_N, "CreateMountTargetOutput", "NetworkInterfaceId"),
            type = "string",
            name = "NetworkInterfaceId",
            target_id = prelude.String.id,
        }),
        AvailabilityZoneId = schema.new({
            id = id.from(_N, "CreateMountTargetOutput", "AvailabilityZoneId"),
            type = "string",
            name = "AvailabilityZoneId",
            target_id = prelude.String.id,
        }),
        AvailabilityZoneName = schema.new({
            id = id.from(_N, "CreateMountTargetOutput", "AvailabilityZoneName"),
            type = "string",
            name = "AvailabilityZoneName",
            target_id = prelude.String.id,
        }),
        VpcId = schema.new({
            id = id.from(_N, "CreateMountTargetOutput", "VpcId"),
            type = "string",
            name = "VpcId",
            target_id = prelude.String.id,
        }),
    },
})

M.IpAddressInUse = schema.new({
    id = id.from(_N, "IpAddressInUse"),
    type = "structure",
    traits = {
        [traits.ERROR] = { value = "client" },
    },
    members = {
        ErrorCode = schema.new({
            id = id.from(_N, "IpAddressInUse", "ErrorCode"),
            type = "string",
            name = "ErrorCode",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        Message = schema.new({
            id = id.from(_N, "IpAddressInUse", "Message"),
            type = "string",
            name = "Message",
            target_id = prelude.String.id,
        }),
    },
})

M.MountTargetConflict = schema.new({
    id = id.from(_N, "MountTargetConflict"),
    type = "structure",
    traits = {
        [traits.ERROR] = { value = "client" },
    },
    members = {
        ErrorCode = schema.new({
            id = id.from(_N, "MountTargetConflict", "ErrorCode"),
            type = "string",
            name = "ErrorCode",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        Message = schema.new({
            id = id.from(_N, "MountTargetConflict", "Message"),
            type = "string",
            name = "Message",
            target_id = prelude.String.id,
        }),
    },
})

M.NetworkInterfaceLimitExceeded = schema.new({
    id = id.from(_N, "NetworkInterfaceLimitExceeded"),
    type = "structure",
    traits = {
        [traits.ERROR] = { value = "client" },
    },
    members = {
        ErrorCode = schema.new({
            id = id.from(_N, "NetworkInterfaceLimitExceeded", "ErrorCode"),
            type = "string",
            name = "ErrorCode",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        Message = schema.new({
            id = id.from(_N, "NetworkInterfaceLimitExceeded", "Message"),
            type = "string",
            name = "Message",
            target_id = prelude.String.id,
        }),
    },
})

M.NoFreeAddressesInSubnet = schema.new({
    id = id.from(_N, "NoFreeAddressesInSubnet"),
    type = "structure",
    traits = {
        [traits.ERROR] = { value = "client" },
    },
    members = {
        ErrorCode = schema.new({
            id = id.from(_N, "NoFreeAddressesInSubnet", "ErrorCode"),
            type = "string",
            name = "ErrorCode",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        Message = schema.new({
            id = id.from(_N, "NoFreeAddressesInSubnet", "Message"),
            type = "string",
            name = "Message",
            target_id = prelude.String.id,
        }),
    },
})

M.SecurityGroupLimitExceeded = schema.new({
    id = id.from(_N, "SecurityGroupLimitExceeded"),
    type = "structure",
    traits = {
        [traits.ERROR] = { value = "client" },
    },
    members = {
        ErrorCode = schema.new({
            id = id.from(_N, "SecurityGroupLimitExceeded", "ErrorCode"),
            type = "string",
            name = "ErrorCode",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        Message = schema.new({
            id = id.from(_N, "SecurityGroupLimitExceeded", "Message"),
            type = "string",
            name = "Message",
            target_id = prelude.String.id,
        }),
    },
})

M.SecurityGroupNotFound = schema.new({
    id = id.from(_N, "SecurityGroupNotFound"),
    type = "structure",
    traits = {
        [traits.ERROR] = { value = "client" },
    },
    members = {
        ErrorCode = schema.new({
            id = id.from(_N, "SecurityGroupNotFound", "ErrorCode"),
            type = "string",
            name = "ErrorCode",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        Message = schema.new({
            id = id.from(_N, "SecurityGroupNotFound", "Message"),
            type = "string",
            name = "Message",
            target_id = prelude.String.id,
        }),
    },
})

M.SubnetNotFound = schema.new({
    id = id.from(_N, "SubnetNotFound"),
    type = "structure",
    traits = {
        [traits.ERROR] = { value = "client" },
    },
    members = {
        ErrorCode = schema.new({
            id = id.from(_N, "SubnetNotFound", "ErrorCode"),
            type = "string",
            name = "ErrorCode",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        Message = schema.new({
            id = id.from(_N, "SubnetNotFound", "Message"),
            type = "string",
            name = "Message",
            target_id = prelude.String.id,
        }),
    },
})

M.DestinationToCreate = schema.new({
    id = id.from(_N, "DestinationToCreate"),
    type = "structure",
    members = {
        Region = schema.new({
            id = id.from(_N, "DestinationToCreate", "Region"),
            type = "string",
            name = "Region",
            target_id = prelude.String.id,
        }),
        AvailabilityZoneName = schema.new({
            id = id.from(_N, "DestinationToCreate", "AvailabilityZoneName"),
            type = "string",
            name = "AvailabilityZoneName",
            target_id = prelude.String.id,
        }),
        KmsKeyId = schema.new({
            id = id.from(_N, "DestinationToCreate", "KmsKeyId"),
            type = "string",
            name = "KmsKeyId",
            target_id = prelude.String.id,
        }),
        FileSystemId = schema.new({
            id = id.from(_N, "DestinationToCreate", "FileSystemId"),
            type = "string",
            name = "FileSystemId",
            target_id = prelude.String.id,
        }),
        RoleArn = schema.new({
            id = id.from(_N, "DestinationToCreate", "RoleArn"),
            type = "string",
            name = "RoleArn",
            target_id = prelude.String.id,
        }),
    },
})

M.CreateReplicationConfigurationInput = schema.new({
    id = id.from(_N, "CreateReplicationConfigurationInput"),
    type = "structure",
    members = {
        SourceFileSystemId = schema.new({
            id = id.from(_N, "CreateReplicationConfigurationInput", "SourceFileSystemId"),
            type = "string",
            name = "SourceFileSystemId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
        Destinations = schema.new({
            id = id.from(_N, "CreateReplicationConfigurationInput", "Destinations"),
            type = "list",
            name = "Destinations",
            target_id = prelude.Document.id,
            list_member = M.DestinationToCreate,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.Destination = schema.new({
    id = id.from(_N, "Destination"),
    type = "structure",
    members = {
        Status = schema.new({
            id = id.from(_N, "Destination", "Status"),
            type = "string",
            name = "Status",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        FileSystemId = schema.new({
            id = id.from(_N, "Destination", "FileSystemId"),
            type = "string",
            name = "FileSystemId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        Region = schema.new({
            id = id.from(_N, "Destination", "Region"),
            type = "string",
            name = "Region",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        LastReplicatedTimestamp = schema.new({
            id = id.from(_N, "Destination", "LastReplicatedTimestamp"),
            type = "timestamp",
            name = "LastReplicatedTimestamp",
            target_id = prelude.Timestamp.id,
        }),
        OwnerId = schema.new({
            id = id.from(_N, "Destination", "OwnerId"),
            type = "string",
            name = "OwnerId",
            target_id = prelude.String.id,
        }),
        StatusMessage = schema.new({
            id = id.from(_N, "Destination", "StatusMessage"),
            type = "string",
            name = "StatusMessage",
            target_id = prelude.String.id,
        }),
        RoleArn = schema.new({
            id = id.from(_N, "Destination", "RoleArn"),
            type = "string",
            name = "RoleArn",
            target_id = prelude.String.id,
        }),
    },
})

M.CreateReplicationConfigurationOutput = schema.new({
    id = id.from(_N, "CreateReplicationConfigurationOutput"),
    type = "structure",
    members = {
        SourceFileSystemId = schema.new({
            id = id.from(_N, "CreateReplicationConfigurationOutput", "SourceFileSystemId"),
            type = "string",
            name = "SourceFileSystemId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        SourceFileSystemRegion = schema.new({
            id = id.from(_N, "CreateReplicationConfigurationOutput", "SourceFileSystemRegion"),
            type = "string",
            name = "SourceFileSystemRegion",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        SourceFileSystemArn = schema.new({
            id = id.from(_N, "CreateReplicationConfigurationOutput", "SourceFileSystemArn"),
            type = "string",
            name = "SourceFileSystemArn",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        OriginalSourceFileSystemArn = schema.new({
            id = id.from(_N, "CreateReplicationConfigurationOutput", "OriginalSourceFileSystemArn"),
            type = "string",
            name = "OriginalSourceFileSystemArn",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        CreationTime = schema.new({
            id = id.from(_N, "CreateReplicationConfigurationOutput", "CreationTime"),
            type = "timestamp",
            name = "CreationTime",
            target_id = prelude.Timestamp.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        Destinations = schema.new({
            id = id.from(_N, "CreateReplicationConfigurationOutput", "Destinations"),
            type = "list",
            name = "Destinations",
            target_id = prelude.Document.id,
            list_member = M.Destination,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        SourceFileSystemOwnerId = schema.new({
            id = id.from(_N, "CreateReplicationConfigurationOutput", "SourceFileSystemOwnerId"),
            type = "string",
            name = "SourceFileSystemOwnerId",
            target_id = prelude.String.id,
        }),
    },
})

M.ReplicationNotFound = schema.new({
    id = id.from(_N, "ReplicationNotFound"),
    type = "structure",
    traits = {
        [traits.ERROR] = { value = "client" },
    },
    members = {
        ErrorCode = schema.new({
            id = id.from(_N, "ReplicationNotFound", "ErrorCode"),
            type = "string",
            name = "ErrorCode",
            target_id = prelude.String.id,
        }),
        Message = schema.new({
            id = id.from(_N, "ReplicationNotFound", "Message"),
            type = "string",
            name = "Message",
            target_id = prelude.String.id,
        }),
    },
})

M.ValidationException = schema.new({
    id = id.from(_N, "ValidationException"),
    type = "structure",
    traits = {
        [traits.ERROR] = { value = "client" },
    },
    members = {
        ErrorCode = schema.new({
            id = id.from(_N, "ValidationException", "ErrorCode"),
            type = "string",
            name = "ErrorCode",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        Message = schema.new({
            id = id.from(_N, "ValidationException", "Message"),
            type = "string",
            name = "Message",
            target_id = prelude.String.id,
        }),
    },
})

M.CreateTagsInput = schema.new({
    id = id.from(_N, "CreateTagsInput"),
    type = "structure",
    members = {
        FileSystemId = schema.new({
            id = id.from(_N, "CreateTagsInput", "FileSystemId"),
            type = "string",
            name = "FileSystemId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
        Tags = schema.new({
            id = id.from(_N, "CreateTagsInput", "Tags"),
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

M.CreateTagsOutput = schema.new({
    id = id.from(_N, "CreateTagsOutput"),
    type = "structure",
})

M.DeleteAccessPointInput = schema.new({
    id = id.from(_N, "DeleteAccessPointInput"),
    type = "structure",
    members = {
        AccessPointId = schema.new({
            id = id.from(_N, "DeleteAccessPointInput", "AccessPointId"),
            type = "string",
            name = "AccessPointId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
    },
})

M.DeleteAccessPointOutput = schema.new({
    id = id.from(_N, "DeleteAccessPointOutput"),
    type = "structure",
})

M.DeleteFileSystemInput = schema.new({
    id = id.from(_N, "DeleteFileSystemInput"),
    type = "structure",
    members = {
        FileSystemId = schema.new({
            id = id.from(_N, "DeleteFileSystemInput", "FileSystemId"),
            type = "string",
            name = "FileSystemId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
    },
})

M.DeleteFileSystemOutput = schema.new({
    id = id.from(_N, "DeleteFileSystemOutput"),
    type = "structure",
})

M.FileSystemInUse = schema.new({
    id = id.from(_N, "FileSystemInUse"),
    type = "structure",
    traits = {
        [traits.ERROR] = { value = "client" },
    },
    members = {
        ErrorCode = schema.new({
            id = id.from(_N, "FileSystemInUse", "ErrorCode"),
            type = "string",
            name = "ErrorCode",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        Message = schema.new({
            id = id.from(_N, "FileSystemInUse", "Message"),
            type = "string",
            name = "Message",
            target_id = prelude.String.id,
        }),
    },
})

M.DeleteFileSystemPolicyInput = schema.new({
    id = id.from(_N, "DeleteFileSystemPolicyInput"),
    type = "structure",
    members = {
        FileSystemId = schema.new({
            id = id.from(_N, "DeleteFileSystemPolicyInput", "FileSystemId"),
            type = "string",
            name = "FileSystemId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
    },
})

M.DeleteFileSystemPolicyOutput = schema.new({
    id = id.from(_N, "DeleteFileSystemPolicyOutput"),
    type = "structure",
})

M.DeleteMountTargetInput = schema.new({
    id = id.from(_N, "DeleteMountTargetInput"),
    type = "structure",
    members = {
        MountTargetId = schema.new({
            id = id.from(_N, "DeleteMountTargetInput", "MountTargetId"),
            type = "string",
            name = "MountTargetId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
    },
})

M.DeleteMountTargetOutput = schema.new({
    id = id.from(_N, "DeleteMountTargetOutput"),
    type = "structure",
})

M.DependencyTimeout = schema.new({
    id = id.from(_N, "DependencyTimeout"),
    type = "structure",
    traits = {
        [traits.ERROR] = { value = "server" },
    },
    members = {
        ErrorCode = schema.new({
            id = id.from(_N, "DependencyTimeout", "ErrorCode"),
            type = "string",
            name = "ErrorCode",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        Message = schema.new({
            id = id.from(_N, "DependencyTimeout", "Message"),
            type = "string",
            name = "Message",
            target_id = prelude.String.id,
        }),
    },
})

M.MountTargetNotFound = schema.new({
    id = id.from(_N, "MountTargetNotFound"),
    type = "structure",
    traits = {
        [traits.ERROR] = { value = "client" },
    },
    members = {
        ErrorCode = schema.new({
            id = id.from(_N, "MountTargetNotFound", "ErrorCode"),
            type = "string",
            name = "ErrorCode",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        Message = schema.new({
            id = id.from(_N, "MountTargetNotFound", "Message"),
            type = "string",
            name = "Message",
            target_id = prelude.String.id,
        }),
    },
})

M.DeleteReplicationConfigurationInput = schema.new({
    id = id.from(_N, "DeleteReplicationConfigurationInput"),
    type = "structure",
    members = {
        SourceFileSystemId = schema.new({
            id = id.from(_N, "DeleteReplicationConfigurationInput", "SourceFileSystemId"),
            type = "string",
            name = "SourceFileSystemId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
        DeletionMode = schema.new({
            id = id.from(_N, "DeleteReplicationConfigurationInput", "DeletionMode"),
            type = "string",
            name = "DeletionMode",
            target_id = prelude.String.id,
            traits = {
                [traits.HTTP_QUERY] = { name = "deletionMode" },
            },
        }),
    },
})

M.DeleteReplicationConfigurationOutput = schema.new({
    id = id.from(_N, "DeleteReplicationConfigurationOutput"),
    type = "structure",
})

M.DeleteTagsInput = schema.new({
    id = id.from(_N, "DeleteTagsInput"),
    type = "structure",
    members = {
        FileSystemId = schema.new({
            id = id.from(_N, "DeleteTagsInput", "FileSystemId"),
            type = "string",
            name = "FileSystemId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
        TagKeys = schema.new({
            id = id.from(_N, "DeleteTagsInput", "TagKeys"),
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

M.DeleteTagsOutput = schema.new({
    id = id.from(_N, "DeleteTagsOutput"),
    type = "structure",
})

M.DescribeAccessPointsInput = schema.new({
    id = id.from(_N, "DescribeAccessPointsInput"),
    type = "structure",
    members = {
        MaxResults = schema.new({
            id = id.from(_N, "DescribeAccessPointsInput", "MaxResults"),
            type = "integer",
            name = "MaxResults",
            target_id = prelude.Integer.id,
            traits = {
                [traits.HTTP_QUERY] = { name = "MaxResults" },
            },
        }),
        NextToken = schema.new({
            id = id.from(_N, "DescribeAccessPointsInput", "NextToken"),
            type = "string",
            name = "NextToken",
            target_id = prelude.String.id,
            traits = {
                [traits.HTTP_QUERY] = { name = "NextToken" },
            },
        }),
        AccessPointId = schema.new({
            id = id.from(_N, "DescribeAccessPointsInput", "AccessPointId"),
            type = "string",
            name = "AccessPointId",
            target_id = prelude.String.id,
            traits = {
                [traits.HTTP_QUERY] = { name = "AccessPointId" },
            },
        }),
        FileSystemId = schema.new({
            id = id.from(_N, "DescribeAccessPointsInput", "FileSystemId"),
            type = "string",
            name = "FileSystemId",
            target_id = prelude.String.id,
            traits = {
                [traits.HTTP_QUERY] = { name = "FileSystemId" },
            },
        }),
    },
})

M.DescribeAccessPointsOutput = schema.new({
    id = id.from(_N, "DescribeAccessPointsOutput"),
    type = "structure",
    members = {
        AccessPoints = schema.new({
            id = id.from(_N, "DescribeAccessPointsOutput", "AccessPoints"),
            type = "list",
            name = "AccessPoints",
            target_id = prelude.Document.id,
            list_member = M.AccessPointDescription,
        }),
        NextToken = schema.new({
            id = id.from(_N, "DescribeAccessPointsOutput", "NextToken"),
            type = "string",
            name = "NextToken",
            target_id = prelude.String.id,
        }),
    },
})

M.DescribeAccountPreferencesInput = schema.new({
    id = id.from(_N, "DescribeAccountPreferencesInput"),
    type = "structure",
    members = {
        NextToken = schema.new({
            id = id.from(_N, "DescribeAccountPreferencesInput", "NextToken"),
            type = "string",
            name = "NextToken",
            target_id = prelude.String.id,
        }),
        MaxResults = schema.new({
            id = id.from(_N, "DescribeAccountPreferencesInput", "MaxResults"),
            type = "integer",
            name = "MaxResults",
            target_id = prelude.Integer.id,
        }),
    },
})

M.ResourceIdPreference = schema.new({
    id = id.from(_N, "ResourceIdPreference"),
    type = "structure",
    members = {
        ResourceIdType = schema.new({
            id = id.from(_N, "ResourceIdPreference", "ResourceIdType"),
            type = "string",
            name = "ResourceIdType",
            target_id = prelude.String.id,
        }),
        Resources = schema.new({
            id = id.from(_N, "ResourceIdPreference", "Resources"),
            type = "list",
            name = "Resources",
            target_id = prelude.Document.id,
            list_member = prelude.String,
        }),
    },
})

M.DescribeAccountPreferencesOutput = schema.new({
    id = id.from(_N, "DescribeAccountPreferencesOutput"),
    type = "structure",
    members = {
        ResourceIdPreference = schema.new({
            id = id.from(_N, "DescribeAccountPreferencesOutput", "ResourceIdPreference"),
            type = "structure",
            name = "ResourceIdPreference",
            target_id = id.from(_N, "ResourceIdPreference"),
            target = M.ResourceIdPreference,
        }),
        NextToken = schema.new({
            id = id.from(_N, "DescribeAccountPreferencesOutput", "NextToken"),
            type = "string",
            name = "NextToken",
            target_id = prelude.String.id,
        }),
    },
})

M.DescribeBackupPolicyInput = schema.new({
    id = id.from(_N, "DescribeBackupPolicyInput"),
    type = "structure",
    members = {
        FileSystemId = schema.new({
            id = id.from(_N, "DescribeBackupPolicyInput", "FileSystemId"),
            type = "string",
            name = "FileSystemId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
    },
})

M.DescribeBackupPolicyOutput = schema.new({
    id = id.from(_N, "DescribeBackupPolicyOutput"),
    type = "structure",
    members = {
        BackupPolicy = schema.new({
            id = id.from(_N, "DescribeBackupPolicyOutput", "BackupPolicy"),
            type = "structure",
            name = "BackupPolicy",
            target_id = id.from(_N, "BackupPolicy"),
            target = M.BackupPolicy,
        }),
    },
})

M.PolicyNotFound = schema.new({
    id = id.from(_N, "PolicyNotFound"),
    type = "structure",
    traits = {
        [traits.ERROR] = { value = "client" },
    },
    members = {
        ErrorCode = schema.new({
            id = id.from(_N, "PolicyNotFound", "ErrorCode"),
            type = "string",
            name = "ErrorCode",
            target_id = prelude.String.id,
        }),
        Message = schema.new({
            id = id.from(_N, "PolicyNotFound", "Message"),
            type = "string",
            name = "Message",
            target_id = prelude.String.id,
        }),
    },
})

M.DescribeFileSystemPolicyInput = schema.new({
    id = id.from(_N, "DescribeFileSystemPolicyInput"),
    type = "structure",
    members = {
        FileSystemId = schema.new({
            id = id.from(_N, "DescribeFileSystemPolicyInput", "FileSystemId"),
            type = "string",
            name = "FileSystemId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
    },
})

M.DescribeFileSystemPolicyOutput = schema.new({
    id = id.from(_N, "DescribeFileSystemPolicyOutput"),
    type = "structure",
    members = {
        FileSystemId = schema.new({
            id = id.from(_N, "DescribeFileSystemPolicyOutput", "FileSystemId"),
            type = "string",
            name = "FileSystemId",
            target_id = prelude.String.id,
        }),
        Policy = schema.new({
            id = id.from(_N, "DescribeFileSystemPolicyOutput", "Policy"),
            type = "string",
            name = "Policy",
            target_id = prelude.String.id,
        }),
    },
})

M.DescribeFileSystemsInput = schema.new({
    id = id.from(_N, "DescribeFileSystemsInput"),
    type = "structure",
    members = {
        MaxItems = schema.new({
            id = id.from(_N, "DescribeFileSystemsInput", "MaxItems"),
            type = "integer",
            name = "MaxItems",
            target_id = prelude.Integer.id,
            traits = {
                [traits.HTTP_QUERY] = { name = "MaxItems" },
            },
        }),
        Marker = schema.new({
            id = id.from(_N, "DescribeFileSystemsInput", "Marker"),
            type = "string",
            name = "Marker",
            target_id = prelude.String.id,
            traits = {
                [traits.HTTP_QUERY] = { name = "Marker" },
            },
        }),
        CreationToken = schema.new({
            id = id.from(_N, "DescribeFileSystemsInput", "CreationToken"),
            type = "string",
            name = "CreationToken",
            target_id = prelude.String.id,
            traits = {
                [traits.HTTP_QUERY] = { name = "CreationToken" },
            },
        }),
        FileSystemId = schema.new({
            id = id.from(_N, "DescribeFileSystemsInput", "FileSystemId"),
            type = "string",
            name = "FileSystemId",
            target_id = prelude.String.id,
            traits = {
                [traits.HTTP_QUERY] = { name = "FileSystemId" },
            },
        }),
    },
})

M.FileSystemDescription = schema.new({
    id = id.from(_N, "FileSystemDescription"),
    type = "structure",
    members = {
        OwnerId = schema.new({
            id = id.from(_N, "FileSystemDescription", "OwnerId"),
            type = "string",
            name = "OwnerId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        CreationToken = schema.new({
            id = id.from(_N, "FileSystemDescription", "CreationToken"),
            type = "string",
            name = "CreationToken",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        FileSystemId = schema.new({
            id = id.from(_N, "FileSystemDescription", "FileSystemId"),
            type = "string",
            name = "FileSystemId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        FileSystemArn = schema.new({
            id = id.from(_N, "FileSystemDescription", "FileSystemArn"),
            type = "string",
            name = "FileSystemArn",
            target_id = prelude.String.id,
        }),
        CreationTime = schema.new({
            id = id.from(_N, "FileSystemDescription", "CreationTime"),
            type = "timestamp",
            name = "CreationTime",
            target_id = prelude.Timestamp.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        LifeCycleState = schema.new({
            id = id.from(_N, "FileSystemDescription", "LifeCycleState"),
            type = "string",
            name = "LifeCycleState",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        Name = schema.new({
            id = id.from(_N, "FileSystemDescription", "Name"),
            type = "string",
            name = "Name",
            target_id = prelude.String.id,
        }),
        NumberOfMountTargets = schema.new({
            id = id.from(_N, "FileSystemDescription", "NumberOfMountTargets"),
            type = "integer",
            name = "NumberOfMountTargets",
            target_id = prelude.Integer.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.DEFAULT] = { value = 0 },
            },
        }),
        SizeInBytes = schema.new({
            id = id.from(_N, "FileSystemDescription", "SizeInBytes"),
            type = "structure",
            name = "SizeInBytes",
            target_id = id.from(_N, "FileSystemSize"),
            target = M.FileSystemSize,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        PerformanceMode = schema.new({
            id = id.from(_N, "FileSystemDescription", "PerformanceMode"),
            type = "string",
            name = "PerformanceMode",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        Encrypted = schema.new({
            id = id.from(_N, "FileSystemDescription", "Encrypted"),
            type = "boolean",
            name = "Encrypted",
            target_id = prelude.Boolean.id,
        }),
        KmsKeyId = schema.new({
            id = id.from(_N, "FileSystemDescription", "KmsKeyId"),
            type = "string",
            name = "KmsKeyId",
            target_id = prelude.String.id,
        }),
        ThroughputMode = schema.new({
            id = id.from(_N, "FileSystemDescription", "ThroughputMode"),
            type = "string",
            name = "ThroughputMode",
            target_id = prelude.String.id,
        }),
        ProvisionedThroughputInMibps = schema.new({
            id = id.from(_N, "FileSystemDescription", "ProvisionedThroughputInMibps"),
            type = "double",
            name = "ProvisionedThroughputInMibps",
            target_id = prelude.Double.id,
        }),
        AvailabilityZoneName = schema.new({
            id = id.from(_N, "FileSystemDescription", "AvailabilityZoneName"),
            type = "string",
            name = "AvailabilityZoneName",
            target_id = prelude.String.id,
        }),
        AvailabilityZoneId = schema.new({
            id = id.from(_N, "FileSystemDescription", "AvailabilityZoneId"),
            type = "string",
            name = "AvailabilityZoneId",
            target_id = prelude.String.id,
        }),
        Tags = schema.new({
            id = id.from(_N, "FileSystemDescription", "Tags"),
            type = "list",
            name = "Tags",
            target_id = prelude.Document.id,
            list_member = M.Tag,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        FileSystemProtection = schema.new({
            id = id.from(_N, "FileSystemDescription", "FileSystemProtection"),
            type = "structure",
            name = "FileSystemProtection",
            target_id = id.from(_N, "FileSystemProtectionDescription"),
            target = M.FileSystemProtectionDescription,
        }),
    },
})

M.DescribeFileSystemsOutput = schema.new({
    id = id.from(_N, "DescribeFileSystemsOutput"),
    type = "structure",
    members = {
        Marker = schema.new({
            id = id.from(_N, "DescribeFileSystemsOutput", "Marker"),
            type = "string",
            name = "Marker",
            target_id = prelude.String.id,
        }),
        FileSystems = schema.new({
            id = id.from(_N, "DescribeFileSystemsOutput", "FileSystems"),
            type = "list",
            name = "FileSystems",
            target_id = prelude.Document.id,
            list_member = M.FileSystemDescription,
        }),
        NextMarker = schema.new({
            id = id.from(_N, "DescribeFileSystemsOutput", "NextMarker"),
            type = "string",
            name = "NextMarker",
            target_id = prelude.String.id,
        }),
    },
})

M.DescribeLifecycleConfigurationInput = schema.new({
    id = id.from(_N, "DescribeLifecycleConfigurationInput"),
    type = "structure",
    members = {
        FileSystemId = schema.new({
            id = id.from(_N, "DescribeLifecycleConfigurationInput", "FileSystemId"),
            type = "string",
            name = "FileSystemId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
    },
})

M.LifecyclePolicy = schema.new({
    id = id.from(_N, "LifecyclePolicy"),
    type = "structure",
    members = {
        TransitionToIA = schema.new({
            id = id.from(_N, "LifecyclePolicy", "TransitionToIA"),
            type = "string",
            name = "TransitionToIA",
            target_id = prelude.String.id,
        }),
        TransitionToPrimaryStorageClass = schema.new({
            id = id.from(_N, "LifecyclePolicy", "TransitionToPrimaryStorageClass"),
            type = "string",
            name = "TransitionToPrimaryStorageClass",
            target_id = prelude.String.id,
        }),
        TransitionToArchive = schema.new({
            id = id.from(_N, "LifecyclePolicy", "TransitionToArchive"),
            type = "string",
            name = "TransitionToArchive",
            target_id = prelude.String.id,
        }),
    },
})

M.DescribeLifecycleConfigurationOutput = schema.new({
    id = id.from(_N, "DescribeLifecycleConfigurationOutput"),
    type = "structure",
    members = {
        LifecyclePolicies = schema.new({
            id = id.from(_N, "DescribeLifecycleConfigurationOutput", "LifecyclePolicies"),
            type = "list",
            name = "LifecyclePolicies",
            target_id = prelude.Document.id,
            list_member = M.LifecyclePolicy,
        }),
    },
})

M.DescribeMountTargetsInput = schema.new({
    id = id.from(_N, "DescribeMountTargetsInput"),
    type = "structure",
    members = {
        MaxItems = schema.new({
            id = id.from(_N, "DescribeMountTargetsInput", "MaxItems"),
            type = "integer",
            name = "MaxItems",
            target_id = prelude.Integer.id,
            traits = {
                [traits.HTTP_QUERY] = { name = "MaxItems" },
            },
        }),
        Marker = schema.new({
            id = id.from(_N, "DescribeMountTargetsInput", "Marker"),
            type = "string",
            name = "Marker",
            target_id = prelude.String.id,
            traits = {
                [traits.HTTP_QUERY] = { name = "Marker" },
            },
        }),
        FileSystemId = schema.new({
            id = id.from(_N, "DescribeMountTargetsInput", "FileSystemId"),
            type = "string",
            name = "FileSystemId",
            target_id = prelude.String.id,
            traits = {
                [traits.HTTP_QUERY] = { name = "FileSystemId" },
            },
        }),
        MountTargetId = schema.new({
            id = id.from(_N, "DescribeMountTargetsInput", "MountTargetId"),
            type = "string",
            name = "MountTargetId",
            target_id = prelude.String.id,
            traits = {
                [traits.HTTP_QUERY] = { name = "MountTargetId" },
            },
        }),
        AccessPointId = schema.new({
            id = id.from(_N, "DescribeMountTargetsInput", "AccessPointId"),
            type = "string",
            name = "AccessPointId",
            target_id = prelude.String.id,
            traits = {
                [traits.HTTP_QUERY] = { name = "AccessPointId" },
            },
        }),
    },
})

M.MountTargetDescription = schema.new({
    id = id.from(_N, "MountTargetDescription"),
    type = "structure",
    members = {
        OwnerId = schema.new({
            id = id.from(_N, "MountTargetDescription", "OwnerId"),
            type = "string",
            name = "OwnerId",
            target_id = prelude.String.id,
        }),
        MountTargetId = schema.new({
            id = id.from(_N, "MountTargetDescription", "MountTargetId"),
            type = "string",
            name = "MountTargetId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        FileSystemId = schema.new({
            id = id.from(_N, "MountTargetDescription", "FileSystemId"),
            type = "string",
            name = "FileSystemId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        SubnetId = schema.new({
            id = id.from(_N, "MountTargetDescription", "SubnetId"),
            type = "string",
            name = "SubnetId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        LifeCycleState = schema.new({
            id = id.from(_N, "MountTargetDescription", "LifeCycleState"),
            type = "string",
            name = "LifeCycleState",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        IpAddress = schema.new({
            id = id.from(_N, "MountTargetDescription", "IpAddress"),
            type = "string",
            name = "IpAddress",
            target_id = prelude.String.id,
        }),
        Ipv6Address = schema.new({
            id = id.from(_N, "MountTargetDescription", "Ipv6Address"),
            type = "string",
            name = "Ipv6Address",
            target_id = prelude.String.id,
        }),
        NetworkInterfaceId = schema.new({
            id = id.from(_N, "MountTargetDescription", "NetworkInterfaceId"),
            type = "string",
            name = "NetworkInterfaceId",
            target_id = prelude.String.id,
        }),
        AvailabilityZoneId = schema.new({
            id = id.from(_N, "MountTargetDescription", "AvailabilityZoneId"),
            type = "string",
            name = "AvailabilityZoneId",
            target_id = prelude.String.id,
        }),
        AvailabilityZoneName = schema.new({
            id = id.from(_N, "MountTargetDescription", "AvailabilityZoneName"),
            type = "string",
            name = "AvailabilityZoneName",
            target_id = prelude.String.id,
        }),
        VpcId = schema.new({
            id = id.from(_N, "MountTargetDescription", "VpcId"),
            type = "string",
            name = "VpcId",
            target_id = prelude.String.id,
        }),
    },
})

M.DescribeMountTargetsOutput = schema.new({
    id = id.from(_N, "DescribeMountTargetsOutput"),
    type = "structure",
    members = {
        Marker = schema.new({
            id = id.from(_N, "DescribeMountTargetsOutput", "Marker"),
            type = "string",
            name = "Marker",
            target_id = prelude.String.id,
        }),
        MountTargets = schema.new({
            id = id.from(_N, "DescribeMountTargetsOutput", "MountTargets"),
            type = "list",
            name = "MountTargets",
            target_id = prelude.Document.id,
            list_member = M.MountTargetDescription,
        }),
        NextMarker = schema.new({
            id = id.from(_N, "DescribeMountTargetsOutput", "NextMarker"),
            type = "string",
            name = "NextMarker",
            target_id = prelude.String.id,
        }),
    },
})

M.DescribeMountTargetSecurityGroupsInput = schema.new({
    id = id.from(_N, "DescribeMountTargetSecurityGroupsInput"),
    type = "structure",
    members = {
        MountTargetId = schema.new({
            id = id.from(_N, "DescribeMountTargetSecurityGroupsInput", "MountTargetId"),
            type = "string",
            name = "MountTargetId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
    },
})

M.DescribeMountTargetSecurityGroupsOutput = schema.new({
    id = id.from(_N, "DescribeMountTargetSecurityGroupsOutput"),
    type = "structure",
    members = {
        SecurityGroups = schema.new({
            id = id.from(_N, "DescribeMountTargetSecurityGroupsOutput", "SecurityGroups"),
            type = "list",
            name = "SecurityGroups",
            target_id = prelude.Document.id,
            list_member = prelude.String,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.IncorrectMountTargetState = schema.new({
    id = id.from(_N, "IncorrectMountTargetState"),
    type = "structure",
    traits = {
        [traits.ERROR] = { value = "client" },
    },
    members = {
        ErrorCode = schema.new({
            id = id.from(_N, "IncorrectMountTargetState", "ErrorCode"),
            type = "string",
            name = "ErrorCode",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        Message = schema.new({
            id = id.from(_N, "IncorrectMountTargetState", "Message"),
            type = "string",
            name = "Message",
            target_id = prelude.String.id,
        }),
    },
})

M.DescribeReplicationConfigurationsInput = schema.new({
    id = id.from(_N, "DescribeReplicationConfigurationsInput"),
    type = "structure",
    members = {
        FileSystemId = schema.new({
            id = id.from(_N, "DescribeReplicationConfigurationsInput", "FileSystemId"),
            type = "string",
            name = "FileSystemId",
            target_id = prelude.String.id,
            traits = {
                [traits.HTTP_QUERY] = { name = "FileSystemId" },
            },
        }),
        NextToken = schema.new({
            id = id.from(_N, "DescribeReplicationConfigurationsInput", "NextToken"),
            type = "string",
            name = "NextToken",
            target_id = prelude.String.id,
            traits = {
                [traits.HTTP_QUERY] = { name = "NextToken" },
            },
        }),
        MaxResults = schema.new({
            id = id.from(_N, "DescribeReplicationConfigurationsInput", "MaxResults"),
            type = "integer",
            name = "MaxResults",
            target_id = prelude.Integer.id,
            traits = {
                [traits.HTTP_QUERY] = { name = "MaxResults" },
            },
        }),
    },
})

M.ReplicationConfigurationDescription = schema.new({
    id = id.from(_N, "ReplicationConfigurationDescription"),
    type = "structure",
    members = {
        SourceFileSystemId = schema.new({
            id = id.from(_N, "ReplicationConfigurationDescription", "SourceFileSystemId"),
            type = "string",
            name = "SourceFileSystemId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        SourceFileSystemRegion = schema.new({
            id = id.from(_N, "ReplicationConfigurationDescription", "SourceFileSystemRegion"),
            type = "string",
            name = "SourceFileSystemRegion",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        SourceFileSystemArn = schema.new({
            id = id.from(_N, "ReplicationConfigurationDescription", "SourceFileSystemArn"),
            type = "string",
            name = "SourceFileSystemArn",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        OriginalSourceFileSystemArn = schema.new({
            id = id.from(_N, "ReplicationConfigurationDescription", "OriginalSourceFileSystemArn"),
            type = "string",
            name = "OriginalSourceFileSystemArn",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        CreationTime = schema.new({
            id = id.from(_N, "ReplicationConfigurationDescription", "CreationTime"),
            type = "timestamp",
            name = "CreationTime",
            target_id = prelude.Timestamp.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        Destinations = schema.new({
            id = id.from(_N, "ReplicationConfigurationDescription", "Destinations"),
            type = "list",
            name = "Destinations",
            target_id = prelude.Document.id,
            list_member = M.Destination,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        SourceFileSystemOwnerId = schema.new({
            id = id.from(_N, "ReplicationConfigurationDescription", "SourceFileSystemOwnerId"),
            type = "string",
            name = "SourceFileSystemOwnerId",
            target_id = prelude.String.id,
        }),
    },
})

M.DescribeReplicationConfigurationsOutput = schema.new({
    id = id.from(_N, "DescribeReplicationConfigurationsOutput"),
    type = "structure",
    members = {
        Replications = schema.new({
            id = id.from(_N, "DescribeReplicationConfigurationsOutput", "Replications"),
            type = "list",
            name = "Replications",
            target_id = prelude.Document.id,
            list_member = M.ReplicationConfigurationDescription,
        }),
        NextToken = schema.new({
            id = id.from(_N, "DescribeReplicationConfigurationsOutput", "NextToken"),
            type = "string",
            name = "NextToken",
            target_id = prelude.String.id,
        }),
    },
})

M.DescribeTagsInput = schema.new({
    id = id.from(_N, "DescribeTagsInput"),
    type = "structure",
    members = {
        MaxItems = schema.new({
            id = id.from(_N, "DescribeTagsInput", "MaxItems"),
            type = "integer",
            name = "MaxItems",
            target_id = prelude.Integer.id,
            traits = {
                [traits.HTTP_QUERY] = { name = "MaxItems" },
            },
        }),
        Marker = schema.new({
            id = id.from(_N, "DescribeTagsInput", "Marker"),
            type = "string",
            name = "Marker",
            target_id = prelude.String.id,
            traits = {
                [traits.HTTP_QUERY] = { name = "Marker" },
            },
        }),
        FileSystemId = schema.new({
            id = id.from(_N, "DescribeTagsInput", "FileSystemId"),
            type = "string",
            name = "FileSystemId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
    },
})

M.DescribeTagsOutput = schema.new({
    id = id.from(_N, "DescribeTagsOutput"),
    type = "structure",
    members = {
        Marker = schema.new({
            id = id.from(_N, "DescribeTagsOutput", "Marker"),
            type = "string",
            name = "Marker",
            target_id = prelude.String.id,
        }),
        Tags = schema.new({
            id = id.from(_N, "DescribeTagsOutput", "Tags"),
            type = "list",
            name = "Tags",
            target_id = prelude.Document.id,
            list_member = M.Tag,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        NextMarker = schema.new({
            id = id.from(_N, "DescribeTagsOutput", "NextMarker"),
            type = "string",
            name = "NextMarker",
            target_id = prelude.String.id,
        }),
    },
})

M.InvalidPolicyException = schema.new({
    id = id.from(_N, "InvalidPolicyException"),
    type = "structure",
    traits = {
        [traits.ERROR] = { value = "client" },
    },
    members = {
        ErrorCode = schema.new({
            id = id.from(_N, "InvalidPolicyException", "ErrorCode"),
            type = "string",
            name = "ErrorCode",
            target_id = prelude.String.id,
        }),
        Message = schema.new({
            id = id.from(_N, "InvalidPolicyException", "Message"),
            type = "string",
            name = "Message",
            target_id = prelude.String.id,
        }),
    },
})

M.ListTagsForResourceInput = schema.new({
    id = id.from(_N, "ListTagsForResourceInput"),
    type = "structure",
    members = {
        ResourceId = schema.new({
            id = id.from(_N, "ListTagsForResourceInput", "ResourceId"),
            type = "string",
            name = "ResourceId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
        MaxResults = schema.new({
            id = id.from(_N, "ListTagsForResourceInput", "MaxResults"),
            type = "integer",
            name = "MaxResults",
            target_id = prelude.Integer.id,
            traits = {
                [traits.HTTP_QUERY] = { name = "MaxResults" },
            },
        }),
        NextToken = schema.new({
            id = id.from(_N, "ListTagsForResourceInput", "NextToken"),
            type = "string",
            name = "NextToken",
            target_id = prelude.String.id,
            traits = {
                [traits.HTTP_QUERY] = { name = "NextToken" },
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
        NextToken = schema.new({
            id = id.from(_N, "ListTagsForResourceOutput", "NextToken"),
            type = "string",
            name = "NextToken",
            target_id = prelude.String.id,
        }),
    },
})

M.ModifyMountTargetSecurityGroupsInput = schema.new({
    id = id.from(_N, "ModifyMountTargetSecurityGroupsInput"),
    type = "structure",
    members = {
        MountTargetId = schema.new({
            id = id.from(_N, "ModifyMountTargetSecurityGroupsInput", "MountTargetId"),
            type = "string",
            name = "MountTargetId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
        SecurityGroups = schema.new({
            id = id.from(_N, "ModifyMountTargetSecurityGroupsInput", "SecurityGroups"),
            type = "list",
            name = "SecurityGroups",
            target_id = prelude.Document.id,
            list_member = prelude.String,
        }),
    },
})

M.ModifyMountTargetSecurityGroupsOutput = schema.new({
    id = id.from(_N, "ModifyMountTargetSecurityGroupsOutput"),
    type = "structure",
})

M.PutAccountPreferencesInput = schema.new({
    id = id.from(_N, "PutAccountPreferencesInput"),
    type = "structure",
    members = {
        ResourceIdType = schema.new({
            id = id.from(_N, "PutAccountPreferencesInput", "ResourceIdType"),
            type = "string",
            name = "ResourceIdType",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.PutAccountPreferencesOutput = schema.new({
    id = id.from(_N, "PutAccountPreferencesOutput"),
    type = "structure",
    members = {
        ResourceIdPreference = schema.new({
            id = id.from(_N, "PutAccountPreferencesOutput", "ResourceIdPreference"),
            type = "structure",
            name = "ResourceIdPreference",
            target_id = id.from(_N, "ResourceIdPreference"),
            target = M.ResourceIdPreference,
        }),
    },
})

M.PutBackupPolicyInput = schema.new({
    id = id.from(_N, "PutBackupPolicyInput"),
    type = "structure",
    members = {
        FileSystemId = schema.new({
            id = id.from(_N, "PutBackupPolicyInput", "FileSystemId"),
            type = "string",
            name = "FileSystemId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
        BackupPolicy = schema.new({
            id = id.from(_N, "PutBackupPolicyInput", "BackupPolicy"),
            type = "structure",
            name = "BackupPolicy",
            target_id = id.from(_N, "BackupPolicy"),
            target = M.BackupPolicy,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.PutBackupPolicyOutput = schema.new({
    id = id.from(_N, "PutBackupPolicyOutput"),
    type = "structure",
    members = {
        BackupPolicy = schema.new({
            id = id.from(_N, "PutBackupPolicyOutput", "BackupPolicy"),
            type = "structure",
            name = "BackupPolicy",
            target_id = id.from(_N, "BackupPolicy"),
            target = M.BackupPolicy,
        }),
    },
})

M.PutFileSystemPolicyInput = schema.new({
    id = id.from(_N, "PutFileSystemPolicyInput"),
    type = "structure",
    members = {
        FileSystemId = schema.new({
            id = id.from(_N, "PutFileSystemPolicyInput", "FileSystemId"),
            type = "string",
            name = "FileSystemId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
        Policy = schema.new({
            id = id.from(_N, "PutFileSystemPolicyInput", "Policy"),
            type = "string",
            name = "Policy",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        BypassPolicyLockoutSafetyCheck = schema.new({
            id = id.from(_N, "PutFileSystemPolicyInput", "BypassPolicyLockoutSafetyCheck"),
            type = "boolean",
            name = "BypassPolicyLockoutSafetyCheck",
            target_id = prelude.Boolean.id,
            traits = {
                [traits.DEFAULT] = { value = false },
            },
        }),
    },
})

M.PutFileSystemPolicyOutput = schema.new({
    id = id.from(_N, "PutFileSystemPolicyOutput"),
    type = "structure",
    members = {
        FileSystemId = schema.new({
            id = id.from(_N, "PutFileSystemPolicyOutput", "FileSystemId"),
            type = "string",
            name = "FileSystemId",
            target_id = prelude.String.id,
        }),
        Policy = schema.new({
            id = id.from(_N, "PutFileSystemPolicyOutput", "Policy"),
            type = "string",
            name = "Policy",
            target_id = prelude.String.id,
        }),
    },
})

M.PutLifecycleConfigurationInput = schema.new({
    id = id.from(_N, "PutLifecycleConfigurationInput"),
    type = "structure",
    members = {
        FileSystemId = schema.new({
            id = id.from(_N, "PutLifecycleConfigurationInput", "FileSystemId"),
            type = "string",
            name = "FileSystemId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
        LifecyclePolicies = schema.new({
            id = id.from(_N, "PutLifecycleConfigurationInput", "LifecyclePolicies"),
            type = "list",
            name = "LifecyclePolicies",
            target_id = prelude.Document.id,
            list_member = M.LifecyclePolicy,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.PutLifecycleConfigurationOutput = schema.new({
    id = id.from(_N, "PutLifecycleConfigurationOutput"),
    type = "structure",
    members = {
        LifecyclePolicies = schema.new({
            id = id.from(_N, "PutLifecycleConfigurationOutput", "LifecyclePolicies"),
            type = "list",
            name = "LifecyclePolicies",
            target_id = prelude.Document.id,
            list_member = M.LifecyclePolicy,
        }),
    },
})

M.TagResourceInput = schema.new({
    id = id.from(_N, "TagResourceInput"),
    type = "structure",
    members = {
        ResourceId = schema.new({
            id = id.from(_N, "TagResourceInput", "ResourceId"),
            type = "string",
            name = "ResourceId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
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
        ResourceId = schema.new({
            id = id.from(_N, "UntagResourceInput", "ResourceId"),
            type = "string",
            name = "ResourceId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
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
                [traits.HTTP_QUERY] = { name = "tagKeys" },
            },
        }),
    },
})

M.UntagResourceOutput = schema.new({
    id = id.from(_N, "UntagResourceOutput"),
    type = "structure",
})

M.TooManyRequests = schema.new({
    id = id.from(_N, "TooManyRequests"),
    type = "structure",
    traits = {
        [traits.ERROR] = { value = "client" },
    },
    members = {
        ErrorCode = schema.new({
            id = id.from(_N, "TooManyRequests", "ErrorCode"),
            type = "string",
            name = "ErrorCode",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        Message = schema.new({
            id = id.from(_N, "TooManyRequests", "Message"),
            type = "string",
            name = "Message",
            target_id = prelude.String.id,
        }),
    },
})

M.UpdateFileSystemInput = schema.new({
    id = id.from(_N, "UpdateFileSystemInput"),
    type = "structure",
    members = {
        FileSystemId = schema.new({
            id = id.from(_N, "UpdateFileSystemInput", "FileSystemId"),
            type = "string",
            name = "FileSystemId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
        ThroughputMode = schema.new({
            id = id.from(_N, "UpdateFileSystemInput", "ThroughputMode"),
            type = "string",
            name = "ThroughputMode",
            target_id = prelude.String.id,
        }),
        ProvisionedThroughputInMibps = schema.new({
            id = id.from(_N, "UpdateFileSystemInput", "ProvisionedThroughputInMibps"),
            type = "double",
            name = "ProvisionedThroughputInMibps",
            target_id = prelude.Double.id,
        }),
    },
})

M.UpdateFileSystemOutput = schema.new({
    id = id.from(_N, "UpdateFileSystemOutput"),
    type = "structure",
    members = {
        OwnerId = schema.new({
            id = id.from(_N, "UpdateFileSystemOutput", "OwnerId"),
            type = "string",
            name = "OwnerId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        CreationToken = schema.new({
            id = id.from(_N, "UpdateFileSystemOutput", "CreationToken"),
            type = "string",
            name = "CreationToken",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        FileSystemId = schema.new({
            id = id.from(_N, "UpdateFileSystemOutput", "FileSystemId"),
            type = "string",
            name = "FileSystemId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        FileSystemArn = schema.new({
            id = id.from(_N, "UpdateFileSystemOutput", "FileSystemArn"),
            type = "string",
            name = "FileSystemArn",
            target_id = prelude.String.id,
        }),
        CreationTime = schema.new({
            id = id.from(_N, "UpdateFileSystemOutput", "CreationTime"),
            type = "timestamp",
            name = "CreationTime",
            target_id = prelude.Timestamp.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        LifeCycleState = schema.new({
            id = id.from(_N, "UpdateFileSystemOutput", "LifeCycleState"),
            type = "string",
            name = "LifeCycleState",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        Name = schema.new({
            id = id.from(_N, "UpdateFileSystemOutput", "Name"),
            type = "string",
            name = "Name",
            target_id = prelude.String.id,
        }),
        NumberOfMountTargets = schema.new({
            id = id.from(_N, "UpdateFileSystemOutput", "NumberOfMountTargets"),
            type = "integer",
            name = "NumberOfMountTargets",
            target_id = prelude.Integer.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.DEFAULT] = { value = 0 },
            },
        }),
        SizeInBytes = schema.new({
            id = id.from(_N, "UpdateFileSystemOutput", "SizeInBytes"),
            type = "structure",
            name = "SizeInBytes",
            target_id = id.from(_N, "FileSystemSize"),
            target = M.FileSystemSize,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        PerformanceMode = schema.new({
            id = id.from(_N, "UpdateFileSystemOutput", "PerformanceMode"),
            type = "string",
            name = "PerformanceMode",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        Encrypted = schema.new({
            id = id.from(_N, "UpdateFileSystemOutput", "Encrypted"),
            type = "boolean",
            name = "Encrypted",
            target_id = prelude.Boolean.id,
        }),
        KmsKeyId = schema.new({
            id = id.from(_N, "UpdateFileSystemOutput", "KmsKeyId"),
            type = "string",
            name = "KmsKeyId",
            target_id = prelude.String.id,
        }),
        ThroughputMode = schema.new({
            id = id.from(_N, "UpdateFileSystemOutput", "ThroughputMode"),
            type = "string",
            name = "ThroughputMode",
            target_id = prelude.String.id,
        }),
        ProvisionedThroughputInMibps = schema.new({
            id = id.from(_N, "UpdateFileSystemOutput", "ProvisionedThroughputInMibps"),
            type = "double",
            name = "ProvisionedThroughputInMibps",
            target_id = prelude.Double.id,
        }),
        AvailabilityZoneName = schema.new({
            id = id.from(_N, "UpdateFileSystemOutput", "AvailabilityZoneName"),
            type = "string",
            name = "AvailabilityZoneName",
            target_id = prelude.String.id,
        }),
        AvailabilityZoneId = schema.new({
            id = id.from(_N, "UpdateFileSystemOutput", "AvailabilityZoneId"),
            type = "string",
            name = "AvailabilityZoneId",
            target_id = prelude.String.id,
        }),
        Tags = schema.new({
            id = id.from(_N, "UpdateFileSystemOutput", "Tags"),
            type = "list",
            name = "Tags",
            target_id = prelude.Document.id,
            list_member = M.Tag,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        FileSystemProtection = schema.new({
            id = id.from(_N, "UpdateFileSystemOutput", "FileSystemProtection"),
            type = "structure",
            name = "FileSystemProtection",
            target_id = id.from(_N, "FileSystemProtectionDescription"),
            target = M.FileSystemProtectionDescription,
        }),
    },
})

M.ReplicationAlreadyExists = schema.new({
    id = id.from(_N, "ReplicationAlreadyExists"),
    type = "structure",
    traits = {
        [traits.ERROR] = { value = "client" },
    },
    members = {
        ErrorCode = schema.new({
            id = id.from(_N, "ReplicationAlreadyExists", "ErrorCode"),
            type = "string",
            name = "ErrorCode",
            target_id = prelude.String.id,
        }),
        Message = schema.new({
            id = id.from(_N, "ReplicationAlreadyExists", "Message"),
            type = "string",
            name = "Message",
            target_id = prelude.String.id,
        }),
    },
})

M.UpdateFileSystemProtectionInput = schema.new({
    id = id.from(_N, "UpdateFileSystemProtectionInput"),
    type = "structure",
    members = {
        FileSystemId = schema.new({
            id = id.from(_N, "UpdateFileSystemProtectionInput", "FileSystemId"),
            type = "string",
            name = "FileSystemId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
        ReplicationOverwriteProtection = schema.new({
            id = id.from(_N, "UpdateFileSystemProtectionInput", "ReplicationOverwriteProtection"),
            type = "string",
            name = "ReplicationOverwriteProtection",
            target_id = prelude.String.id,
        }),
    },
})

M.UpdateFileSystemProtectionOutput = schema.new({
    id = id.from(_N, "UpdateFileSystemProtectionOutput"),
    type = "structure",
    members = {
        ReplicationOverwriteProtection = schema.new({
            id = id.from(_N, "UpdateFileSystemProtectionOutput", "ReplicationOverwriteProtection"),
            type = "string",
            name = "ReplicationOverwriteProtection",
            target_id = prelude.String.id,
        }),
    },
})

return M
