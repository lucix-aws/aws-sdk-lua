local id = require("smithy.shape_id")
local schema = require("smithy.schema")
local prelude = require("smithy.prelude")
local traits = require("smithy.traits")

local _N = "com.amazonaws.datasync"

local M = {}

M.InputTagList = schema.new({ type = "list", list_member = M.TagListEntry })

M.PLSubnetArnList = schema.new({ type = "list", list_member = prelude.String })

M.PLSecurityGroupArnList = schema.new({ type = "list", list_member = prelude.String })

M.AgentArnList = schema.new({ type = "list", list_member = prelude.String })

M.Ec2SecurityGroupArnList = schema.new({ type = "list", list_member = prelude.String })

M.HdfsNameNodeList = schema.new({ type = "list", list_member = M.HdfsNameNode })

M.DnsIpList = schema.new({ type = "list", list_member = prelude.String })

M.FilterList = schema.new({ type = "list", list_member = M.FilterRule })

M.SourceNetworkInterfaceArns = schema.new({ type = "list", list_member = prelude.String })

M.DestinationNetworkInterfaceArns = schema.new({ type = "list", list_member = prelude.String })

M.AgentList = schema.new({ type = "list", list_member = M.AgentListEntry })

M.LocationFilters = schema.new({ type = "list", list_member = M.LocationFilter })

M.LocationList = schema.new({ type = "list", list_member = M.LocationListEntry })

M.OutputTagList = schema.new({ type = "list", list_member = M.TagListEntry })

M.TaskExecutionList = schema.new({ type = "list", list_member = M.TaskExecutionListEntry })

M.TaskFilters = schema.new({ type = "list", list_member = M.TaskFilter })

M.TaskList = schema.new({ type = "list", list_member = M.TaskListEntry })

M.TagKeyList = schema.new({ type = "list", list_member = prelude.String })

M.FilterValues = schema.new({ type = "list", list_member = prelude.String })

M.Platform = schema.new({
    id = id.from(_N, "Platform"),
    type = "structure",
    members = {
        Version = schema.new({
            id = id.from(_N, "Platform", "Version"),
            type = "string",
            name = "Version",
            target_id = prelude.String.id,
        }),
    },
})

M.AgentListEntry = schema.new({
    id = id.from(_N, "AgentListEntry"),
    type = "structure",
    members = {
        AgentArn = schema.new({
            id = id.from(_N, "AgentListEntry", "AgentArn"),
            type = "string",
            name = "AgentArn",
            target_id = prelude.String.id,
        }),
        Name = schema.new({
            id = id.from(_N, "AgentListEntry", "Name"),
            type = "string",
            name = "Name",
            target_id = prelude.String.id,
        }),
        Status = schema.new({
            id = id.from(_N, "AgentListEntry", "Status"),
            type = "string",
            name = "Status",
            target_id = prelude.String.id,
        }),
        Platform = schema.new({
            id = id.from(_N, "AgentListEntry", "Platform"),
            type = "structure",
            name = "Platform",
            target_id = id.from(_N, "Platform"),
            target = M.Platform,
        }),
    },
})

M.AzureBlobSasConfiguration = schema.new({
    id = id.from(_N, "AzureBlobSasConfiguration"),
    type = "structure",
    members = {
        Token = schema.new({
            id = id.from(_N, "AzureBlobSasConfiguration", "Token"),
            type = "string",
            name = "Token",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.CancelTaskExecutionInput = schema.new({
    id = id.from(_N, "CancelTaskExecutionRequest"),
    type = "structure",
    members = {
        TaskExecutionArn = schema.new({
            id = id.from(_N, "CancelTaskExecutionInput", "TaskExecutionArn"),
            type = "string",
            name = "TaskExecutionArn",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.CancelTaskExecutionOutput = schema.new({
    id = id.from(_N, "CancelTaskExecutionResponse"),
    type = "structure",
})

M.InternalException = schema.new({
    id = id.from(_N, "InternalException"),
    type = "structure",
    traits = {
        [traits.ERROR] = { value = "server" },
    },
    members = {
        message = schema.new({
            id = id.from(_N, "InternalException", "message"),
            type = "string",
            name = "message",
            target_id = prelude.String.id,
        }),
        errorCode = schema.new({
            id = id.from(_N, "InternalException", "errorCode"),
            type = "string",
            name = "errorCode",
            target_id = prelude.String.id,
        }),
    },
})

M.InvalidRequestException = schema.new({
    id = id.from(_N, "InvalidRequestException"),
    type = "structure",
    traits = {
        [traits.ERROR] = { value = "client" },
    },
    members = {
        message = schema.new({
            id = id.from(_N, "InvalidRequestException", "message"),
            type = "string",
            name = "message",
            target_id = prelude.String.id,
        }),
        errorCode = schema.new({
            id = id.from(_N, "InvalidRequestException", "errorCode"),
            type = "string",
            name = "errorCode",
            target_id = prelude.String.id,
        }),
        datasyncErrorCode = schema.new({
            id = id.from(_N, "InvalidRequestException", "datasyncErrorCode"),
            type = "string",
            name = "datasyncErrorCode",
            target_id = prelude.String.id,
        }),
    },
})

M.CmkSecretConfig = schema.new({
    id = id.from(_N, "CmkSecretConfig"),
    type = "structure",
    members = {
        SecretArn = schema.new({
            id = id.from(_N, "CmkSecretConfig", "SecretArn"),
            type = "string",
            name = "SecretArn",
            target_id = prelude.String.id,
        }),
        KmsKeyArn = schema.new({
            id = id.from(_N, "CmkSecretConfig", "KmsKeyArn"),
            type = "string",
            name = "KmsKeyArn",
            target_id = prelude.String.id,
        }),
    },
})

M.TagListEntry = schema.new({
    id = id.from(_N, "TagListEntry"),
    type = "structure",
    members = {
        Key = schema.new({
            id = id.from(_N, "TagListEntry", "Key"),
            type = "string",
            name = "Key",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        Value = schema.new({
            id = id.from(_N, "TagListEntry", "Value"),
            type = "string",
            name = "Value",
            target_id = prelude.String.id,
        }),
    },
})

M.CreateAgentInput = schema.new({
    id = id.from(_N, "CreateAgentRequest"),
    type = "structure",
    members = {
        ActivationKey = schema.new({
            id = id.from(_N, "CreateAgentInput", "ActivationKey"),
            type = "string",
            name = "ActivationKey",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        AgentName = schema.new({
            id = id.from(_N, "CreateAgentInput", "AgentName"),
            type = "string",
            name = "AgentName",
            target_id = prelude.String.id,
        }),
        Tags = schema.new({
            id = id.from(_N, "CreateAgentInput", "Tags"),
            type = "list",
            name = "Tags",
            target_id = prelude.Document.id,
            list_member = M.TagListEntry,
        }),
        VpcEndpointId = schema.new({
            id = id.from(_N, "CreateAgentInput", "VpcEndpointId"),
            type = "string",
            name = "VpcEndpointId",
            target_id = prelude.String.id,
        }),
        SubnetArns = schema.new({
            id = id.from(_N, "CreateAgentInput", "SubnetArns"),
            type = "list",
            name = "SubnetArns",
            target_id = prelude.Document.id,
            list_member = prelude.String,
        }),
        SecurityGroupArns = schema.new({
            id = id.from(_N, "CreateAgentInput", "SecurityGroupArns"),
            type = "list",
            name = "SecurityGroupArns",
            target_id = prelude.Document.id,
            list_member = prelude.String,
        }),
    },
})

M.CreateAgentOutput = schema.new({
    id = id.from(_N, "CreateAgentResponse"),
    type = "structure",
    members = {
        AgentArn = schema.new({
            id = id.from(_N, "CreateAgentOutput", "AgentArn"),
            type = "string",
            name = "AgentArn",
            target_id = prelude.String.id,
        }),
    },
})

M.CustomSecretConfig = schema.new({
    id = id.from(_N, "CustomSecretConfig"),
    type = "structure",
    members = {
        SecretArn = schema.new({
            id = id.from(_N, "CustomSecretConfig", "SecretArn"),
            type = "string",
            name = "SecretArn",
            target_id = prelude.String.id,
        }),
        SecretAccessRoleArn = schema.new({
            id = id.from(_N, "CustomSecretConfig", "SecretAccessRoleArn"),
            type = "string",
            name = "SecretAccessRoleArn",
            target_id = prelude.String.id,
        }),
    },
})

M.CreateLocationAzureBlobInput = schema.new({
    id = id.from(_N, "CreateLocationAzureBlobRequest"),
    type = "structure",
    members = {
        ContainerUrl = schema.new({
            id = id.from(_N, "CreateLocationAzureBlobInput", "ContainerUrl"),
            type = "string",
            name = "ContainerUrl",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        AuthenticationType = schema.new({
            id = id.from(_N, "CreateLocationAzureBlobInput", "AuthenticationType"),
            type = "string",
            name = "AuthenticationType",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        SasConfiguration = schema.new({
            id = id.from(_N, "CreateLocationAzureBlobInput", "SasConfiguration"),
            type = "structure",
            name = "SasConfiguration",
            target_id = id.from(_N, "AzureBlobSasConfiguration"),
            target = M.AzureBlobSasConfiguration,
        }),
        BlobType = schema.new({
            id = id.from(_N, "CreateLocationAzureBlobInput", "BlobType"),
            type = "string",
            name = "BlobType",
            target_id = prelude.String.id,
        }),
        AccessTier = schema.new({
            id = id.from(_N, "CreateLocationAzureBlobInput", "AccessTier"),
            type = "string",
            name = "AccessTier",
            target_id = prelude.String.id,
        }),
        Subdirectory = schema.new({
            id = id.from(_N, "CreateLocationAzureBlobInput", "Subdirectory"),
            type = "string",
            name = "Subdirectory",
            target_id = prelude.String.id,
        }),
        AgentArns = schema.new({
            id = id.from(_N, "CreateLocationAzureBlobInput", "AgentArns"),
            type = "list",
            name = "AgentArns",
            target_id = prelude.Document.id,
            list_member = prelude.String,
        }),
        Tags = schema.new({
            id = id.from(_N, "CreateLocationAzureBlobInput", "Tags"),
            type = "list",
            name = "Tags",
            target_id = prelude.Document.id,
            list_member = M.TagListEntry,
        }),
        CmkSecretConfig = schema.new({
            id = id.from(_N, "CreateLocationAzureBlobInput", "CmkSecretConfig"),
            type = "structure",
            name = "CmkSecretConfig",
            target_id = id.from(_N, "CmkSecretConfig"),
            target = M.CmkSecretConfig,
        }),
        CustomSecretConfig = schema.new({
            id = id.from(_N, "CreateLocationAzureBlobInput", "CustomSecretConfig"),
            type = "structure",
            name = "CustomSecretConfig",
            target_id = id.from(_N, "CustomSecretConfig"),
            target = M.CustomSecretConfig,
        }),
    },
})

M.CreateLocationAzureBlobOutput = schema.new({
    id = id.from(_N, "CreateLocationAzureBlobResponse"),
    type = "structure",
    members = {
        LocationArn = schema.new({
            id = id.from(_N, "CreateLocationAzureBlobOutput", "LocationArn"),
            type = "string",
            name = "LocationArn",
            target_id = prelude.String.id,
        }),
    },
})

M.Ec2Config = schema.new({
    id = id.from(_N, "Ec2Config"),
    type = "structure",
    members = {
        SubnetArn = schema.new({
            id = id.from(_N, "Ec2Config", "SubnetArn"),
            type = "string",
            name = "SubnetArn",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        SecurityGroupArns = schema.new({
            id = id.from(_N, "Ec2Config", "SecurityGroupArns"),
            type = "list",
            name = "SecurityGroupArns",
            target_id = prelude.Document.id,
            list_member = prelude.String,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.CreateLocationEfsInput = schema.new({
    id = id.from(_N, "CreateLocationEfsRequest"),
    type = "structure",
    members = {
        Subdirectory = schema.new({
            id = id.from(_N, "CreateLocationEfsInput", "Subdirectory"),
            type = "string",
            name = "Subdirectory",
            target_id = prelude.String.id,
        }),
        EfsFilesystemArn = schema.new({
            id = id.from(_N, "CreateLocationEfsInput", "EfsFilesystemArn"),
            type = "string",
            name = "EfsFilesystemArn",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        Ec2Config = schema.new({
            id = id.from(_N, "CreateLocationEfsInput", "Ec2Config"),
            type = "structure",
            name = "Ec2Config",
            target_id = id.from(_N, "Ec2Config"),
            target = M.Ec2Config,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        Tags = schema.new({
            id = id.from(_N, "CreateLocationEfsInput", "Tags"),
            type = "list",
            name = "Tags",
            target_id = prelude.Document.id,
            list_member = M.TagListEntry,
        }),
        AccessPointArn = schema.new({
            id = id.from(_N, "CreateLocationEfsInput", "AccessPointArn"),
            type = "string",
            name = "AccessPointArn",
            target_id = prelude.String.id,
        }),
        FileSystemAccessRoleArn = schema.new({
            id = id.from(_N, "CreateLocationEfsInput", "FileSystemAccessRoleArn"),
            type = "string",
            name = "FileSystemAccessRoleArn",
            target_id = prelude.String.id,
        }),
        InTransitEncryption = schema.new({
            id = id.from(_N, "CreateLocationEfsInput", "InTransitEncryption"),
            type = "string",
            name = "InTransitEncryption",
            target_id = prelude.String.id,
        }),
    },
})

M.CreateLocationEfsOutput = schema.new({
    id = id.from(_N, "CreateLocationEfsResponse"),
    type = "structure",
    members = {
        LocationArn = schema.new({
            id = id.from(_N, "CreateLocationEfsOutput", "LocationArn"),
            type = "string",
            name = "LocationArn",
            target_id = prelude.String.id,
        }),
    },
})

M.CreateLocationFsxLustreInput = schema.new({
    id = id.from(_N, "CreateLocationFsxLustreRequest"),
    type = "structure",
    members = {
        FsxFilesystemArn = schema.new({
            id = id.from(_N, "CreateLocationFsxLustreInput", "FsxFilesystemArn"),
            type = "string",
            name = "FsxFilesystemArn",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        SecurityGroupArns = schema.new({
            id = id.from(_N, "CreateLocationFsxLustreInput", "SecurityGroupArns"),
            type = "list",
            name = "SecurityGroupArns",
            target_id = prelude.Document.id,
            list_member = prelude.String,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        Subdirectory = schema.new({
            id = id.from(_N, "CreateLocationFsxLustreInput", "Subdirectory"),
            type = "string",
            name = "Subdirectory",
            target_id = prelude.String.id,
        }),
        Tags = schema.new({
            id = id.from(_N, "CreateLocationFsxLustreInput", "Tags"),
            type = "list",
            name = "Tags",
            target_id = prelude.Document.id,
            list_member = M.TagListEntry,
        }),
    },
})

M.CreateLocationFsxLustreOutput = schema.new({
    id = id.from(_N, "CreateLocationFsxLustreResponse"),
    type = "structure",
    members = {
        LocationArn = schema.new({
            id = id.from(_N, "CreateLocationFsxLustreOutput", "LocationArn"),
            type = "string",
            name = "LocationArn",
            target_id = prelude.String.id,
        }),
    },
})

M.NfsMountOptions = schema.new({
    id = id.from(_N, "NfsMountOptions"),
    type = "structure",
    members = {
        Version = schema.new({
            id = id.from(_N, "NfsMountOptions", "Version"),
            type = "string",
            name = "Version",
            target_id = prelude.String.id,
        }),
    },
})

M.FsxProtocolNfs = schema.new({
    id = id.from(_N, "FsxProtocolNfs"),
    type = "structure",
    members = {
        MountOptions = schema.new({
            id = id.from(_N, "FsxProtocolNfs", "MountOptions"),
            type = "structure",
            name = "MountOptions",
            target_id = id.from(_N, "NfsMountOptions"),
            target = M.NfsMountOptions,
        }),
    },
})

M.ManagedSecretConfig = schema.new({
    id = id.from(_N, "ManagedSecretConfig"),
    type = "structure",
    members = {
        SecretArn = schema.new({
            id = id.from(_N, "ManagedSecretConfig", "SecretArn"),
            type = "string",
            name = "SecretArn",
            target_id = prelude.String.id,
        }),
    },
})

M.SmbMountOptions = schema.new({
    id = id.from(_N, "SmbMountOptions"),
    type = "structure",
    members = {
        Version = schema.new({
            id = id.from(_N, "SmbMountOptions", "Version"),
            type = "string",
            name = "Version",
            target_id = prelude.String.id,
        }),
    },
})

M.FsxProtocolSmb = schema.new({
    id = id.from(_N, "FsxProtocolSmb"),
    type = "structure",
    members = {
        Domain = schema.new({
            id = id.from(_N, "FsxProtocolSmb", "Domain"),
            type = "string",
            name = "Domain",
            target_id = prelude.String.id,
        }),
        MountOptions = schema.new({
            id = id.from(_N, "FsxProtocolSmb", "MountOptions"),
            type = "structure",
            name = "MountOptions",
            target_id = id.from(_N, "SmbMountOptions"),
            target = M.SmbMountOptions,
        }),
        Password = schema.new({
            id = id.from(_N, "FsxProtocolSmb", "Password"),
            type = "string",
            name = "Password",
            target_id = prelude.String.id,
            traits = {
                [traits.DEFAULT] = { value = "" },
            },
        }),
        User = schema.new({
            id = id.from(_N, "FsxProtocolSmb", "User"),
            type = "string",
            name = "User",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        ManagedSecretConfig = schema.new({
            id = id.from(_N, "FsxProtocolSmb", "ManagedSecretConfig"),
            type = "structure",
            name = "ManagedSecretConfig",
            target_id = id.from(_N, "ManagedSecretConfig"),
            target = M.ManagedSecretConfig,
        }),
        CmkSecretConfig = schema.new({
            id = id.from(_N, "FsxProtocolSmb", "CmkSecretConfig"),
            type = "structure",
            name = "CmkSecretConfig",
            target_id = id.from(_N, "CmkSecretConfig"),
            target = M.CmkSecretConfig,
        }),
        CustomSecretConfig = schema.new({
            id = id.from(_N, "FsxProtocolSmb", "CustomSecretConfig"),
            type = "structure",
            name = "CustomSecretConfig",
            target_id = id.from(_N, "CustomSecretConfig"),
            target = M.CustomSecretConfig,
        }),
    },
})

M.FsxProtocol = schema.new({
    id = id.from(_N, "FsxProtocol"),
    type = "structure",
    members = {
        NFS = schema.new({
            id = id.from(_N, "FsxProtocol", "NFS"),
            type = "structure",
            name = "NFS",
            target_id = id.from(_N, "FsxProtocolNfs"),
            target = M.FsxProtocolNfs,
        }),
        SMB = schema.new({
            id = id.from(_N, "FsxProtocol", "SMB"),
            type = "structure",
            name = "SMB",
            target_id = id.from(_N, "FsxProtocolSmb"),
            target = M.FsxProtocolSmb,
        }),
    },
})

M.CreateLocationFsxOntapInput = schema.new({
    id = id.from(_N, "CreateLocationFsxOntapRequest"),
    type = "structure",
    members = {
        Protocol = schema.new({
            id = id.from(_N, "CreateLocationFsxOntapInput", "Protocol"),
            type = "structure",
            name = "Protocol",
            target_id = id.from(_N, "FsxProtocol"),
            target = M.FsxProtocol,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        SecurityGroupArns = schema.new({
            id = id.from(_N, "CreateLocationFsxOntapInput", "SecurityGroupArns"),
            type = "list",
            name = "SecurityGroupArns",
            target_id = prelude.Document.id,
            list_member = prelude.String,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        StorageVirtualMachineArn = schema.new({
            id = id.from(_N, "CreateLocationFsxOntapInput", "StorageVirtualMachineArn"),
            type = "string",
            name = "StorageVirtualMachineArn",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        Subdirectory = schema.new({
            id = id.from(_N, "CreateLocationFsxOntapInput", "Subdirectory"),
            type = "string",
            name = "Subdirectory",
            target_id = prelude.String.id,
        }),
        Tags = schema.new({
            id = id.from(_N, "CreateLocationFsxOntapInput", "Tags"),
            type = "list",
            name = "Tags",
            target_id = prelude.Document.id,
            list_member = M.TagListEntry,
        }),
    },
})

M.CreateLocationFsxOntapOutput = schema.new({
    id = id.from(_N, "CreateLocationFsxOntapResponse"),
    type = "structure",
    members = {
        LocationArn = schema.new({
            id = id.from(_N, "CreateLocationFsxOntapOutput", "LocationArn"),
            type = "string",
            name = "LocationArn",
            target_id = prelude.String.id,
        }),
    },
})

M.CreateLocationFsxOpenZfsInput = schema.new({
    id = id.from(_N, "CreateLocationFsxOpenZfsRequest"),
    type = "structure",
    members = {
        FsxFilesystemArn = schema.new({
            id = id.from(_N, "CreateLocationFsxOpenZfsInput", "FsxFilesystemArn"),
            type = "string",
            name = "FsxFilesystemArn",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        Protocol = schema.new({
            id = id.from(_N, "CreateLocationFsxOpenZfsInput", "Protocol"),
            type = "structure",
            name = "Protocol",
            target_id = id.from(_N, "FsxProtocol"),
            target = M.FsxProtocol,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        SecurityGroupArns = schema.new({
            id = id.from(_N, "CreateLocationFsxOpenZfsInput", "SecurityGroupArns"),
            type = "list",
            name = "SecurityGroupArns",
            target_id = prelude.Document.id,
            list_member = prelude.String,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        Subdirectory = schema.new({
            id = id.from(_N, "CreateLocationFsxOpenZfsInput", "Subdirectory"),
            type = "string",
            name = "Subdirectory",
            target_id = prelude.String.id,
        }),
        Tags = schema.new({
            id = id.from(_N, "CreateLocationFsxOpenZfsInput", "Tags"),
            type = "list",
            name = "Tags",
            target_id = prelude.Document.id,
            list_member = M.TagListEntry,
        }),
    },
})

M.CreateLocationFsxOpenZfsOutput = schema.new({
    id = id.from(_N, "CreateLocationFsxOpenZfsResponse"),
    type = "structure",
    members = {
        LocationArn = schema.new({
            id = id.from(_N, "CreateLocationFsxOpenZfsOutput", "LocationArn"),
            type = "string",
            name = "LocationArn",
            target_id = prelude.String.id,
        }),
    },
})

M.CreateLocationFsxWindowsInput = schema.new({
    id = id.from(_N, "CreateLocationFsxWindowsRequest"),
    type = "structure",
    members = {
        Subdirectory = schema.new({
            id = id.from(_N, "CreateLocationFsxWindowsInput", "Subdirectory"),
            type = "string",
            name = "Subdirectory",
            target_id = prelude.String.id,
        }),
        FsxFilesystemArn = schema.new({
            id = id.from(_N, "CreateLocationFsxWindowsInput", "FsxFilesystemArn"),
            type = "string",
            name = "FsxFilesystemArn",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        SecurityGroupArns = schema.new({
            id = id.from(_N, "CreateLocationFsxWindowsInput", "SecurityGroupArns"),
            type = "list",
            name = "SecurityGroupArns",
            target_id = prelude.Document.id,
            list_member = prelude.String,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        Tags = schema.new({
            id = id.from(_N, "CreateLocationFsxWindowsInput", "Tags"),
            type = "list",
            name = "Tags",
            target_id = prelude.Document.id,
            list_member = M.TagListEntry,
        }),
        User = schema.new({
            id = id.from(_N, "CreateLocationFsxWindowsInput", "User"),
            type = "string",
            name = "User",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        Domain = schema.new({
            id = id.from(_N, "CreateLocationFsxWindowsInput", "Domain"),
            type = "string",
            name = "Domain",
            target_id = prelude.String.id,
        }),
        Password = schema.new({
            id = id.from(_N, "CreateLocationFsxWindowsInput", "Password"),
            type = "string",
            name = "Password",
            target_id = prelude.String.id,
        }),
        CmkSecretConfig = schema.new({
            id = id.from(_N, "CreateLocationFsxWindowsInput", "CmkSecretConfig"),
            type = "structure",
            name = "CmkSecretConfig",
            target_id = id.from(_N, "CmkSecretConfig"),
            target = M.CmkSecretConfig,
        }),
        CustomSecretConfig = schema.new({
            id = id.from(_N, "CreateLocationFsxWindowsInput", "CustomSecretConfig"),
            type = "structure",
            name = "CustomSecretConfig",
            target_id = id.from(_N, "CustomSecretConfig"),
            target = M.CustomSecretConfig,
        }),
    },
})

M.CreateLocationFsxWindowsOutput = schema.new({
    id = id.from(_N, "CreateLocationFsxWindowsResponse"),
    type = "structure",
    members = {
        LocationArn = schema.new({
            id = id.from(_N, "CreateLocationFsxWindowsOutput", "LocationArn"),
            type = "string",
            name = "LocationArn",
            target_id = prelude.String.id,
        }),
    },
})

M.HdfsNameNode = schema.new({
    id = id.from(_N, "HdfsNameNode"),
    type = "structure",
    members = {
        Hostname = schema.new({
            id = id.from(_N, "HdfsNameNode", "Hostname"),
            type = "string",
            name = "Hostname",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        Port = schema.new({
            id = id.from(_N, "HdfsNameNode", "Port"),
            type = "integer",
            name = "Port",
            target_id = prelude.Integer.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.QopConfiguration = schema.new({
    id = id.from(_N, "QopConfiguration"),
    type = "structure",
    members = {
        RpcProtection = schema.new({
            id = id.from(_N, "QopConfiguration", "RpcProtection"),
            type = "string",
            name = "RpcProtection",
            target_id = prelude.String.id,
        }),
        DataTransferProtection = schema.new({
            id = id.from(_N, "QopConfiguration", "DataTransferProtection"),
            type = "string",
            name = "DataTransferProtection",
            target_id = prelude.String.id,
        }),
    },
})

M.CreateLocationHdfsInput = schema.new({
    id = id.from(_N, "CreateLocationHdfsRequest"),
    type = "structure",
    members = {
        Subdirectory = schema.new({
            id = id.from(_N, "CreateLocationHdfsInput", "Subdirectory"),
            type = "string",
            name = "Subdirectory",
            target_id = prelude.String.id,
        }),
        NameNodes = schema.new({
            id = id.from(_N, "CreateLocationHdfsInput", "NameNodes"),
            type = "list",
            name = "NameNodes",
            target_id = prelude.Document.id,
            list_member = M.HdfsNameNode,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        BlockSize = schema.new({
            id = id.from(_N, "CreateLocationHdfsInput", "BlockSize"),
            type = "integer",
            name = "BlockSize",
            target_id = prelude.Integer.id,
        }),
        ReplicationFactor = schema.new({
            id = id.from(_N, "CreateLocationHdfsInput", "ReplicationFactor"),
            type = "integer",
            name = "ReplicationFactor",
            target_id = prelude.Integer.id,
        }),
        KmsKeyProviderUri = schema.new({
            id = id.from(_N, "CreateLocationHdfsInput", "KmsKeyProviderUri"),
            type = "string",
            name = "KmsKeyProviderUri",
            target_id = prelude.String.id,
        }),
        QopConfiguration = schema.new({
            id = id.from(_N, "CreateLocationHdfsInput", "QopConfiguration"),
            type = "structure",
            name = "QopConfiguration",
            target_id = id.from(_N, "QopConfiguration"),
            target = M.QopConfiguration,
        }),
        AuthenticationType = schema.new({
            id = id.from(_N, "CreateLocationHdfsInput", "AuthenticationType"),
            type = "string",
            name = "AuthenticationType",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        SimpleUser = schema.new({
            id = id.from(_N, "CreateLocationHdfsInput", "SimpleUser"),
            type = "string",
            name = "SimpleUser",
            target_id = prelude.String.id,
        }),
        KerberosPrincipal = schema.new({
            id = id.from(_N, "CreateLocationHdfsInput", "KerberosPrincipal"),
            type = "string",
            name = "KerberosPrincipal",
            target_id = prelude.String.id,
        }),
        KerberosKeytab = schema.new({
            id = id.from(_N, "CreateLocationHdfsInput", "KerberosKeytab"),
            type = "blob",
            name = "KerberosKeytab",
            target_id = prelude.Blob.id,
        }),
        KerberosKrb5Conf = schema.new({
            id = id.from(_N, "CreateLocationHdfsInput", "KerberosKrb5Conf"),
            type = "blob",
            name = "KerberosKrb5Conf",
            target_id = prelude.Blob.id,
        }),
        AgentArns = schema.new({
            id = id.from(_N, "CreateLocationHdfsInput", "AgentArns"),
            type = "list",
            name = "AgentArns",
            target_id = prelude.Document.id,
            list_member = prelude.String,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        Tags = schema.new({
            id = id.from(_N, "CreateLocationHdfsInput", "Tags"),
            type = "list",
            name = "Tags",
            target_id = prelude.Document.id,
            list_member = M.TagListEntry,
        }),
        CmkSecretConfig = schema.new({
            id = id.from(_N, "CreateLocationHdfsInput", "CmkSecretConfig"),
            type = "structure",
            name = "CmkSecretConfig",
            target_id = id.from(_N, "CmkSecretConfig"),
            target = M.CmkSecretConfig,
        }),
        CustomSecretConfig = schema.new({
            id = id.from(_N, "CreateLocationHdfsInput", "CustomSecretConfig"),
            type = "structure",
            name = "CustomSecretConfig",
            target_id = id.from(_N, "CustomSecretConfig"),
            target = M.CustomSecretConfig,
        }),
    },
})

M.CreateLocationHdfsOutput = schema.new({
    id = id.from(_N, "CreateLocationHdfsResponse"),
    type = "structure",
    members = {
        LocationArn = schema.new({
            id = id.from(_N, "CreateLocationHdfsOutput", "LocationArn"),
            type = "string",
            name = "LocationArn",
            target_id = prelude.String.id,
        }),
    },
})

M.OnPremConfig = schema.new({
    id = id.from(_N, "OnPremConfig"),
    type = "structure",
    members = {
        AgentArns = schema.new({
            id = id.from(_N, "OnPremConfig", "AgentArns"),
            type = "list",
            name = "AgentArns",
            target_id = prelude.Document.id,
            list_member = prelude.String,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.CreateLocationNfsInput = schema.new({
    id = id.from(_N, "CreateLocationNfsRequest"),
    type = "structure",
    members = {
        Subdirectory = schema.new({
            id = id.from(_N, "CreateLocationNfsInput", "Subdirectory"),
            type = "string",
            name = "Subdirectory",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        ServerHostname = schema.new({
            id = id.from(_N, "CreateLocationNfsInput", "ServerHostname"),
            type = "string",
            name = "ServerHostname",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        OnPremConfig = schema.new({
            id = id.from(_N, "CreateLocationNfsInput", "OnPremConfig"),
            type = "structure",
            name = "OnPremConfig",
            target_id = id.from(_N, "OnPremConfig"),
            target = M.OnPremConfig,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        MountOptions = schema.new({
            id = id.from(_N, "CreateLocationNfsInput", "MountOptions"),
            type = "structure",
            name = "MountOptions",
            target_id = id.from(_N, "NfsMountOptions"),
            target = M.NfsMountOptions,
        }),
        Tags = schema.new({
            id = id.from(_N, "CreateLocationNfsInput", "Tags"),
            type = "list",
            name = "Tags",
            target_id = prelude.Document.id,
            list_member = M.TagListEntry,
        }),
    },
})

M.CreateLocationNfsOutput = schema.new({
    id = id.from(_N, "CreateLocationNfsResponse"),
    type = "structure",
    members = {
        LocationArn = schema.new({
            id = id.from(_N, "CreateLocationNfsOutput", "LocationArn"),
            type = "string",
            name = "LocationArn",
            target_id = prelude.String.id,
        }),
    },
})

M.CreateLocationObjectStorageInput = schema.new({
    id = id.from(_N, "CreateLocationObjectStorageRequest"),
    type = "structure",
    members = {
        ServerHostname = schema.new({
            id = id.from(_N, "CreateLocationObjectStorageInput", "ServerHostname"),
            type = "string",
            name = "ServerHostname",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        ServerPort = schema.new({
            id = id.from(_N, "CreateLocationObjectStorageInput", "ServerPort"),
            type = "integer",
            name = "ServerPort",
            target_id = prelude.Integer.id,
        }),
        ServerProtocol = schema.new({
            id = id.from(_N, "CreateLocationObjectStorageInput", "ServerProtocol"),
            type = "string",
            name = "ServerProtocol",
            target_id = prelude.String.id,
        }),
        Subdirectory = schema.new({
            id = id.from(_N, "CreateLocationObjectStorageInput", "Subdirectory"),
            type = "string",
            name = "Subdirectory",
            target_id = prelude.String.id,
        }),
        BucketName = schema.new({
            id = id.from(_N, "CreateLocationObjectStorageInput", "BucketName"),
            type = "string",
            name = "BucketName",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        AccessKey = schema.new({
            id = id.from(_N, "CreateLocationObjectStorageInput", "AccessKey"),
            type = "string",
            name = "AccessKey",
            target_id = prelude.String.id,
        }),
        SecretKey = schema.new({
            id = id.from(_N, "CreateLocationObjectStorageInput", "SecretKey"),
            type = "string",
            name = "SecretKey",
            target_id = prelude.String.id,
        }),
        AgentArns = schema.new({
            id = id.from(_N, "CreateLocationObjectStorageInput", "AgentArns"),
            type = "list",
            name = "AgentArns",
            target_id = prelude.Document.id,
            list_member = prelude.String,
        }),
        Tags = schema.new({
            id = id.from(_N, "CreateLocationObjectStorageInput", "Tags"),
            type = "list",
            name = "Tags",
            target_id = prelude.Document.id,
            list_member = M.TagListEntry,
        }),
        ServerCertificate = schema.new({
            id = id.from(_N, "CreateLocationObjectStorageInput", "ServerCertificate"),
            type = "blob",
            name = "ServerCertificate",
            target_id = prelude.Blob.id,
        }),
        CmkSecretConfig = schema.new({
            id = id.from(_N, "CreateLocationObjectStorageInput", "CmkSecretConfig"),
            type = "structure",
            name = "CmkSecretConfig",
            target_id = id.from(_N, "CmkSecretConfig"),
            target = M.CmkSecretConfig,
        }),
        CustomSecretConfig = schema.new({
            id = id.from(_N, "CreateLocationObjectStorageInput", "CustomSecretConfig"),
            type = "structure",
            name = "CustomSecretConfig",
            target_id = id.from(_N, "CustomSecretConfig"),
            target = M.CustomSecretConfig,
        }),
    },
})

M.CreateLocationObjectStorageOutput = schema.new({
    id = id.from(_N, "CreateLocationObjectStorageResponse"),
    type = "structure",
    members = {
        LocationArn = schema.new({
            id = id.from(_N, "CreateLocationObjectStorageOutput", "LocationArn"),
            type = "string",
            name = "LocationArn",
            target_id = prelude.String.id,
        }),
    },
})

M.S3Config = schema.new({
    id = id.from(_N, "S3Config"),
    type = "structure",
    members = {
        BucketAccessRoleArn = schema.new({
            id = id.from(_N, "S3Config", "BucketAccessRoleArn"),
            type = "string",
            name = "BucketAccessRoleArn",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.CreateLocationS3Input = schema.new({
    id = id.from(_N, "CreateLocationS3Request"),
    type = "structure",
    members = {
        Subdirectory = schema.new({
            id = id.from(_N, "CreateLocationS3Input", "Subdirectory"),
            type = "string",
            name = "Subdirectory",
            target_id = prelude.String.id,
        }),
        S3BucketArn = schema.new({
            id = id.from(_N, "CreateLocationS3Input", "S3BucketArn"),
            type = "string",
            name = "S3BucketArn",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        S3StorageClass = schema.new({
            id = id.from(_N, "CreateLocationS3Input", "S3StorageClass"),
            type = "string",
            name = "S3StorageClass",
            target_id = prelude.String.id,
        }),
        S3Config = schema.new({
            id = id.from(_N, "CreateLocationS3Input", "S3Config"),
            type = "structure",
            name = "S3Config",
            target_id = id.from(_N, "S3Config"),
            target = M.S3Config,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        AgentArns = schema.new({
            id = id.from(_N, "CreateLocationS3Input", "AgentArns"),
            type = "list",
            name = "AgentArns",
            target_id = prelude.Document.id,
            list_member = prelude.String,
        }),
        Tags = schema.new({
            id = id.from(_N, "CreateLocationS3Input", "Tags"),
            type = "list",
            name = "Tags",
            target_id = prelude.Document.id,
            list_member = M.TagListEntry,
        }),
    },
})

M.CreateLocationS3Output = schema.new({
    id = id.from(_N, "CreateLocationS3Response"),
    type = "structure",
    members = {
        LocationArn = schema.new({
            id = id.from(_N, "CreateLocationS3Output", "LocationArn"),
            type = "string",
            name = "LocationArn",
            target_id = prelude.String.id,
        }),
    },
})

M.CreateLocationSmbInput = schema.new({
    id = id.from(_N, "CreateLocationSmbRequest"),
    type = "structure",
    members = {
        Subdirectory = schema.new({
            id = id.from(_N, "CreateLocationSmbInput", "Subdirectory"),
            type = "string",
            name = "Subdirectory",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        ServerHostname = schema.new({
            id = id.from(_N, "CreateLocationSmbInput", "ServerHostname"),
            type = "string",
            name = "ServerHostname",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        User = schema.new({
            id = id.from(_N, "CreateLocationSmbInput", "User"),
            type = "string",
            name = "User",
            target_id = prelude.String.id,
        }),
        Domain = schema.new({
            id = id.from(_N, "CreateLocationSmbInput", "Domain"),
            type = "string",
            name = "Domain",
            target_id = prelude.String.id,
        }),
        Password = schema.new({
            id = id.from(_N, "CreateLocationSmbInput", "Password"),
            type = "string",
            name = "Password",
            target_id = prelude.String.id,
        }),
        CmkSecretConfig = schema.new({
            id = id.from(_N, "CreateLocationSmbInput", "CmkSecretConfig"),
            type = "structure",
            name = "CmkSecretConfig",
            target_id = id.from(_N, "CmkSecretConfig"),
            target = M.CmkSecretConfig,
        }),
        CustomSecretConfig = schema.new({
            id = id.from(_N, "CreateLocationSmbInput", "CustomSecretConfig"),
            type = "structure",
            name = "CustomSecretConfig",
            target_id = id.from(_N, "CustomSecretConfig"),
            target = M.CustomSecretConfig,
        }),
        AgentArns = schema.new({
            id = id.from(_N, "CreateLocationSmbInput", "AgentArns"),
            type = "list",
            name = "AgentArns",
            target_id = prelude.Document.id,
            list_member = prelude.String,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        MountOptions = schema.new({
            id = id.from(_N, "CreateLocationSmbInput", "MountOptions"),
            type = "structure",
            name = "MountOptions",
            target_id = id.from(_N, "SmbMountOptions"),
            target = M.SmbMountOptions,
        }),
        Tags = schema.new({
            id = id.from(_N, "CreateLocationSmbInput", "Tags"),
            type = "list",
            name = "Tags",
            target_id = prelude.Document.id,
            list_member = M.TagListEntry,
        }),
        AuthenticationType = schema.new({
            id = id.from(_N, "CreateLocationSmbInput", "AuthenticationType"),
            type = "string",
            name = "AuthenticationType",
            target_id = prelude.String.id,
        }),
        DnsIpAddresses = schema.new({
            id = id.from(_N, "CreateLocationSmbInput", "DnsIpAddresses"),
            type = "list",
            name = "DnsIpAddresses",
            target_id = prelude.Document.id,
            list_member = prelude.String,
        }),
        KerberosPrincipal = schema.new({
            id = id.from(_N, "CreateLocationSmbInput", "KerberosPrincipal"),
            type = "string",
            name = "KerberosPrincipal",
            target_id = prelude.String.id,
        }),
        KerberosKeytab = schema.new({
            id = id.from(_N, "CreateLocationSmbInput", "KerberosKeytab"),
            type = "blob",
            name = "KerberosKeytab",
            target_id = prelude.Blob.id,
        }),
        KerberosKrb5Conf = schema.new({
            id = id.from(_N, "CreateLocationSmbInput", "KerberosKrb5Conf"),
            type = "blob",
            name = "KerberosKrb5Conf",
            target_id = prelude.Blob.id,
        }),
    },
})

M.CreateLocationSmbOutput = schema.new({
    id = id.from(_N, "CreateLocationSmbResponse"),
    type = "structure",
    members = {
        LocationArn = schema.new({
            id = id.from(_N, "CreateLocationSmbOutput", "LocationArn"),
            type = "string",
            name = "LocationArn",
            target_id = prelude.String.id,
        }),
    },
})

M.FilterRule = schema.new({
    id = id.from(_N, "FilterRule"),
    type = "structure",
    members = {
        FilterType = schema.new({
            id = id.from(_N, "FilterRule", "FilterType"),
            type = "string",
            name = "FilterType",
            target_id = prelude.String.id,
        }),
        Value = schema.new({
            id = id.from(_N, "FilterRule", "Value"),
            type = "string",
            name = "Value",
            target_id = prelude.String.id,
        }),
    },
})

M.S3ManifestConfig = schema.new({
    id = id.from(_N, "S3ManifestConfig"),
    type = "structure",
    members = {
        ManifestObjectPath = schema.new({
            id = id.from(_N, "S3ManifestConfig", "ManifestObjectPath"),
            type = "string",
            name = "ManifestObjectPath",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        BucketAccessRoleArn = schema.new({
            id = id.from(_N, "S3ManifestConfig", "BucketAccessRoleArn"),
            type = "string",
            name = "BucketAccessRoleArn",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        S3BucketArn = schema.new({
            id = id.from(_N, "S3ManifestConfig", "S3BucketArn"),
            type = "string",
            name = "S3BucketArn",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        ManifestObjectVersionId = schema.new({
            id = id.from(_N, "S3ManifestConfig", "ManifestObjectVersionId"),
            type = "string",
            name = "ManifestObjectVersionId",
            target_id = prelude.String.id,
        }),
    },
})

M.SourceManifestConfig = schema.new({
    id = id.from(_N, "SourceManifestConfig"),
    type = "structure",
    members = {
        S3 = schema.new({
            id = id.from(_N, "SourceManifestConfig", "S3"),
            type = "structure",
            name = "S3",
            target_id = id.from(_N, "S3ManifestConfig"),
            target = M.S3ManifestConfig,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.ManifestConfig = schema.new({
    id = id.from(_N, "ManifestConfig"),
    type = "structure",
    members = {
        Action = schema.new({
            id = id.from(_N, "ManifestConfig", "Action"),
            type = "string",
            name = "Action",
            target_id = prelude.String.id,
        }),
        Format = schema.new({
            id = id.from(_N, "ManifestConfig", "Format"),
            type = "string",
            name = "Format",
            target_id = prelude.String.id,
        }),
        Source = schema.new({
            id = id.from(_N, "ManifestConfig", "Source"),
            type = "structure",
            name = "Source",
            target_id = id.from(_N, "SourceManifestConfig"),
            target = M.SourceManifestConfig,
        }),
    },
})

M.Options = schema.new({
    id = id.from(_N, "Options"),
    type = "structure",
    members = {
        VerifyMode = schema.new({
            id = id.from(_N, "Options", "VerifyMode"),
            type = "string",
            name = "VerifyMode",
            target_id = prelude.String.id,
        }),
        OverwriteMode = schema.new({
            id = id.from(_N, "Options", "OverwriteMode"),
            type = "string",
            name = "OverwriteMode",
            target_id = prelude.String.id,
        }),
        Atime = schema.new({
            id = id.from(_N, "Options", "Atime"),
            type = "string",
            name = "Atime",
            target_id = prelude.String.id,
        }),
        Mtime = schema.new({
            id = id.from(_N, "Options", "Mtime"),
            type = "string",
            name = "Mtime",
            target_id = prelude.String.id,
        }),
        Uid = schema.new({
            id = id.from(_N, "Options", "Uid"),
            type = "string",
            name = "Uid",
            target_id = prelude.String.id,
        }),
        Gid = schema.new({
            id = id.from(_N, "Options", "Gid"),
            type = "string",
            name = "Gid",
            target_id = prelude.String.id,
        }),
        PreserveDeletedFiles = schema.new({
            id = id.from(_N, "Options", "PreserveDeletedFiles"),
            type = "string",
            name = "PreserveDeletedFiles",
            target_id = prelude.String.id,
        }),
        PreserveDevices = schema.new({
            id = id.from(_N, "Options", "PreserveDevices"),
            type = "string",
            name = "PreserveDevices",
            target_id = prelude.String.id,
        }),
        PosixPermissions = schema.new({
            id = id.from(_N, "Options", "PosixPermissions"),
            type = "string",
            name = "PosixPermissions",
            target_id = prelude.String.id,
        }),
        BytesPerSecond = schema.new({
            id = id.from(_N, "Options", "BytesPerSecond"),
            type = "long",
            name = "BytesPerSecond",
            target_id = prelude.Long.id,
        }),
        TaskQueueing = schema.new({
            id = id.from(_N, "Options", "TaskQueueing"),
            type = "string",
            name = "TaskQueueing",
            target_id = prelude.String.id,
        }),
        LogLevel = schema.new({
            id = id.from(_N, "Options", "LogLevel"),
            type = "string",
            name = "LogLevel",
            target_id = prelude.String.id,
        }),
        TransferMode = schema.new({
            id = id.from(_N, "Options", "TransferMode"),
            type = "string",
            name = "TransferMode",
            target_id = prelude.String.id,
        }),
        SecurityDescriptorCopyFlags = schema.new({
            id = id.from(_N, "Options", "SecurityDescriptorCopyFlags"),
            type = "string",
            name = "SecurityDescriptorCopyFlags",
            target_id = prelude.String.id,
        }),
        ObjectTags = schema.new({
            id = id.from(_N, "Options", "ObjectTags"),
            type = "string",
            name = "ObjectTags",
            target_id = prelude.String.id,
        }),
    },
})

M.TaskSchedule = schema.new({
    id = id.from(_N, "TaskSchedule"),
    type = "structure",
    members = {
        ScheduleExpression = schema.new({
            id = id.from(_N, "TaskSchedule", "ScheduleExpression"),
            type = "string",
            name = "ScheduleExpression",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        Status = schema.new({
            id = id.from(_N, "TaskSchedule", "Status"),
            type = "string",
            name = "Status",
            target_id = prelude.String.id,
        }),
    },
})

M.ReportDestinationS3 = schema.new({
    id = id.from(_N, "ReportDestinationS3"),
    type = "structure",
    members = {
        Subdirectory = schema.new({
            id = id.from(_N, "ReportDestinationS3", "Subdirectory"),
            type = "string",
            name = "Subdirectory",
            target_id = prelude.String.id,
        }),
        S3BucketArn = schema.new({
            id = id.from(_N, "ReportDestinationS3", "S3BucketArn"),
            type = "string",
            name = "S3BucketArn",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        BucketAccessRoleArn = schema.new({
            id = id.from(_N, "ReportDestinationS3", "BucketAccessRoleArn"),
            type = "string",
            name = "BucketAccessRoleArn",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.ReportDestination = schema.new({
    id = id.from(_N, "ReportDestination"),
    type = "structure",
    members = {
        S3 = schema.new({
            id = id.from(_N, "ReportDestination", "S3"),
            type = "structure",
            name = "S3",
            target_id = id.from(_N, "ReportDestinationS3"),
            target = M.ReportDestinationS3,
        }),
    },
})

M.ReportOverride = schema.new({
    id = id.from(_N, "ReportOverride"),
    type = "structure",
    members = {
        ReportLevel = schema.new({
            id = id.from(_N, "ReportOverride", "ReportLevel"),
            type = "string",
            name = "ReportLevel",
            target_id = prelude.String.id,
        }),
    },
})

M.ReportOverrides = schema.new({
    id = id.from(_N, "ReportOverrides"),
    type = "structure",
    members = {
        Transferred = schema.new({
            id = id.from(_N, "ReportOverrides", "Transferred"),
            type = "structure",
            name = "Transferred",
            target_id = id.from(_N, "ReportOverride"),
            target = M.ReportOverride,
        }),
        Verified = schema.new({
            id = id.from(_N, "ReportOverrides", "Verified"),
            type = "structure",
            name = "Verified",
            target_id = id.from(_N, "ReportOverride"),
            target = M.ReportOverride,
        }),
        Deleted = schema.new({
            id = id.from(_N, "ReportOverrides", "Deleted"),
            type = "structure",
            name = "Deleted",
            target_id = id.from(_N, "ReportOverride"),
            target = M.ReportOverride,
        }),
        Skipped = schema.new({
            id = id.from(_N, "ReportOverrides", "Skipped"),
            type = "structure",
            name = "Skipped",
            target_id = id.from(_N, "ReportOverride"),
            target = M.ReportOverride,
        }),
    },
})

M.TaskReportConfig = schema.new({
    id = id.from(_N, "TaskReportConfig"),
    type = "structure",
    members = {
        Destination = schema.new({
            id = id.from(_N, "TaskReportConfig", "Destination"),
            type = "structure",
            name = "Destination",
            target_id = id.from(_N, "ReportDestination"),
            target = M.ReportDestination,
        }),
        OutputType = schema.new({
            id = id.from(_N, "TaskReportConfig", "OutputType"),
            type = "string",
            name = "OutputType",
            target_id = prelude.String.id,
        }),
        ReportLevel = schema.new({
            id = id.from(_N, "TaskReportConfig", "ReportLevel"),
            type = "string",
            name = "ReportLevel",
            target_id = prelude.String.id,
        }),
        ObjectVersionIds = schema.new({
            id = id.from(_N, "TaskReportConfig", "ObjectVersionIds"),
            type = "string",
            name = "ObjectVersionIds",
            target_id = prelude.String.id,
        }),
        Overrides = schema.new({
            id = id.from(_N, "TaskReportConfig", "Overrides"),
            type = "structure",
            name = "Overrides",
            target_id = id.from(_N, "ReportOverrides"),
            target = M.ReportOverrides,
        }),
    },
})

M.CreateTaskInput = schema.new({
    id = id.from(_N, "CreateTaskRequest"),
    type = "structure",
    members = {
        SourceLocationArn = schema.new({
            id = id.from(_N, "CreateTaskInput", "SourceLocationArn"),
            type = "string",
            name = "SourceLocationArn",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        DestinationLocationArn = schema.new({
            id = id.from(_N, "CreateTaskInput", "DestinationLocationArn"),
            type = "string",
            name = "DestinationLocationArn",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        CloudWatchLogGroupArn = schema.new({
            id = id.from(_N, "CreateTaskInput", "CloudWatchLogGroupArn"),
            type = "string",
            name = "CloudWatchLogGroupArn",
            target_id = prelude.String.id,
        }),
        Name = schema.new({
            id = id.from(_N, "CreateTaskInput", "Name"),
            type = "string",
            name = "Name",
            target_id = prelude.String.id,
        }),
        Options = schema.new({
            id = id.from(_N, "CreateTaskInput", "Options"),
            type = "structure",
            name = "Options",
            target_id = id.from(_N, "Options"),
            target = M.Options,
        }),
        Excludes = schema.new({
            id = id.from(_N, "CreateTaskInput", "Excludes"),
            type = "list",
            name = "Excludes",
            target_id = prelude.Document.id,
            list_member = M.FilterRule,
        }),
        Schedule = schema.new({
            id = id.from(_N, "CreateTaskInput", "Schedule"),
            type = "structure",
            name = "Schedule",
            target_id = id.from(_N, "TaskSchedule"),
            target = M.TaskSchedule,
        }),
        Tags = schema.new({
            id = id.from(_N, "CreateTaskInput", "Tags"),
            type = "list",
            name = "Tags",
            target_id = prelude.Document.id,
            list_member = M.TagListEntry,
        }),
        Includes = schema.new({
            id = id.from(_N, "CreateTaskInput", "Includes"),
            type = "list",
            name = "Includes",
            target_id = prelude.Document.id,
            list_member = M.FilterRule,
        }),
        ManifestConfig = schema.new({
            id = id.from(_N, "CreateTaskInput", "ManifestConfig"),
            type = "structure",
            name = "ManifestConfig",
            target_id = id.from(_N, "ManifestConfig"),
            target = M.ManifestConfig,
        }),
        TaskReportConfig = schema.new({
            id = id.from(_N, "CreateTaskInput", "TaskReportConfig"),
            type = "structure",
            name = "TaskReportConfig",
            target_id = id.from(_N, "TaskReportConfig"),
            target = M.TaskReportConfig,
        }),
        TaskMode = schema.new({
            id = id.from(_N, "CreateTaskInput", "TaskMode"),
            type = "string",
            name = "TaskMode",
            target_id = prelude.String.id,
        }),
    },
})

M.CreateTaskOutput = schema.new({
    id = id.from(_N, "CreateTaskResponse"),
    type = "structure",
    members = {
        TaskArn = schema.new({
            id = id.from(_N, "CreateTaskOutput", "TaskArn"),
            type = "string",
            name = "TaskArn",
            target_id = prelude.String.id,
        }),
    },
})

M.DeleteAgentInput = schema.new({
    id = id.from(_N, "DeleteAgentRequest"),
    type = "structure",
    members = {
        AgentArn = schema.new({
            id = id.from(_N, "DeleteAgentInput", "AgentArn"),
            type = "string",
            name = "AgentArn",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.DeleteAgentOutput = schema.new({
    id = id.from(_N, "DeleteAgentResponse"),
    type = "structure",
})

M.DeleteLocationInput = schema.new({
    id = id.from(_N, "DeleteLocationRequest"),
    type = "structure",
    members = {
        LocationArn = schema.new({
            id = id.from(_N, "DeleteLocationInput", "LocationArn"),
            type = "string",
            name = "LocationArn",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.DeleteLocationOutput = schema.new({
    id = id.from(_N, "DeleteLocationResponse"),
    type = "structure",
})

M.DeleteTaskInput = schema.new({
    id = id.from(_N, "DeleteTaskRequest"),
    type = "structure",
    members = {
        TaskArn = schema.new({
            id = id.from(_N, "DeleteTaskInput", "TaskArn"),
            type = "string",
            name = "TaskArn",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.DeleteTaskOutput = schema.new({
    id = id.from(_N, "DeleteTaskResponse"),
    type = "structure",
})

M.DescribeAgentInput = schema.new({
    id = id.from(_N, "DescribeAgentRequest"),
    type = "structure",
    members = {
        AgentArn = schema.new({
            id = id.from(_N, "DescribeAgentInput", "AgentArn"),
            type = "string",
            name = "AgentArn",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.PrivateLinkConfig = schema.new({
    id = id.from(_N, "PrivateLinkConfig"),
    type = "structure",
    members = {
        VpcEndpointId = schema.new({
            id = id.from(_N, "PrivateLinkConfig", "VpcEndpointId"),
            type = "string",
            name = "VpcEndpointId",
            target_id = prelude.String.id,
        }),
        PrivateLinkEndpoint = schema.new({
            id = id.from(_N, "PrivateLinkConfig", "PrivateLinkEndpoint"),
            type = "string",
            name = "PrivateLinkEndpoint",
            target_id = prelude.String.id,
        }),
        SubnetArns = schema.new({
            id = id.from(_N, "PrivateLinkConfig", "SubnetArns"),
            type = "list",
            name = "SubnetArns",
            target_id = prelude.Document.id,
            list_member = prelude.String,
        }),
        SecurityGroupArns = schema.new({
            id = id.from(_N, "PrivateLinkConfig", "SecurityGroupArns"),
            type = "list",
            name = "SecurityGroupArns",
            target_id = prelude.Document.id,
            list_member = prelude.String,
        }),
    },
})

M.DescribeAgentOutput = schema.new({
    id = id.from(_N, "DescribeAgentResponse"),
    type = "structure",
    members = {
        AgentArn = schema.new({
            id = id.from(_N, "DescribeAgentOutput", "AgentArn"),
            type = "string",
            name = "AgentArn",
            target_id = prelude.String.id,
        }),
        Name = schema.new({
            id = id.from(_N, "DescribeAgentOutput", "Name"),
            type = "string",
            name = "Name",
            target_id = prelude.String.id,
        }),
        Status = schema.new({
            id = id.from(_N, "DescribeAgentOutput", "Status"),
            type = "string",
            name = "Status",
            target_id = prelude.String.id,
        }),
        LastConnectionTime = schema.new({
            id = id.from(_N, "DescribeAgentOutput", "LastConnectionTime"),
            type = "timestamp",
            name = "LastConnectionTime",
            target_id = prelude.Timestamp.id,
        }),
        CreationTime = schema.new({
            id = id.from(_N, "DescribeAgentOutput", "CreationTime"),
            type = "timestamp",
            name = "CreationTime",
            target_id = prelude.Timestamp.id,
        }),
        EndpointType = schema.new({
            id = id.from(_N, "DescribeAgentOutput", "EndpointType"),
            type = "string",
            name = "EndpointType",
            target_id = prelude.String.id,
        }),
        PrivateLinkConfig = schema.new({
            id = id.from(_N, "DescribeAgentOutput", "PrivateLinkConfig"),
            type = "structure",
            name = "PrivateLinkConfig",
            target_id = id.from(_N, "PrivateLinkConfig"),
            target = M.PrivateLinkConfig,
        }),
        Platform = schema.new({
            id = id.from(_N, "DescribeAgentOutput", "Platform"),
            type = "structure",
            name = "Platform",
            target_id = id.from(_N, "Platform"),
            target = M.Platform,
        }),
    },
})

M.DescribeLocationAzureBlobInput = schema.new({
    id = id.from(_N, "DescribeLocationAzureBlobRequest"),
    type = "structure",
    members = {
        LocationArn = schema.new({
            id = id.from(_N, "DescribeLocationAzureBlobInput", "LocationArn"),
            type = "string",
            name = "LocationArn",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.DescribeLocationAzureBlobOutput = schema.new({
    id = id.from(_N, "DescribeLocationAzureBlobResponse"),
    type = "structure",
    members = {
        LocationArn = schema.new({
            id = id.from(_N, "DescribeLocationAzureBlobOutput", "LocationArn"),
            type = "string",
            name = "LocationArn",
            target_id = prelude.String.id,
        }),
        LocationUri = schema.new({
            id = id.from(_N, "DescribeLocationAzureBlobOutput", "LocationUri"),
            type = "string",
            name = "LocationUri",
            target_id = prelude.String.id,
        }),
        AuthenticationType = schema.new({
            id = id.from(_N, "DescribeLocationAzureBlobOutput", "AuthenticationType"),
            type = "string",
            name = "AuthenticationType",
            target_id = prelude.String.id,
        }),
        BlobType = schema.new({
            id = id.from(_N, "DescribeLocationAzureBlobOutput", "BlobType"),
            type = "string",
            name = "BlobType",
            target_id = prelude.String.id,
        }),
        AccessTier = schema.new({
            id = id.from(_N, "DescribeLocationAzureBlobOutput", "AccessTier"),
            type = "string",
            name = "AccessTier",
            target_id = prelude.String.id,
        }),
        AgentArns = schema.new({
            id = id.from(_N, "DescribeLocationAzureBlobOutput", "AgentArns"),
            type = "list",
            name = "AgentArns",
            target_id = prelude.Document.id,
            list_member = prelude.String,
        }),
        CreationTime = schema.new({
            id = id.from(_N, "DescribeLocationAzureBlobOutput", "CreationTime"),
            type = "timestamp",
            name = "CreationTime",
            target_id = prelude.Timestamp.id,
        }),
        ManagedSecretConfig = schema.new({
            id = id.from(_N, "DescribeLocationAzureBlobOutput", "ManagedSecretConfig"),
            type = "structure",
            name = "ManagedSecretConfig",
            target_id = id.from(_N, "ManagedSecretConfig"),
            target = M.ManagedSecretConfig,
        }),
        CmkSecretConfig = schema.new({
            id = id.from(_N, "DescribeLocationAzureBlobOutput", "CmkSecretConfig"),
            type = "structure",
            name = "CmkSecretConfig",
            target_id = id.from(_N, "CmkSecretConfig"),
            target = M.CmkSecretConfig,
        }),
        CustomSecretConfig = schema.new({
            id = id.from(_N, "DescribeLocationAzureBlobOutput", "CustomSecretConfig"),
            type = "structure",
            name = "CustomSecretConfig",
            target_id = id.from(_N, "CustomSecretConfig"),
            target = M.CustomSecretConfig,
        }),
    },
})

M.DescribeLocationEfsInput = schema.new({
    id = id.from(_N, "DescribeLocationEfsRequest"),
    type = "structure",
    members = {
        LocationArn = schema.new({
            id = id.from(_N, "DescribeLocationEfsInput", "LocationArn"),
            type = "string",
            name = "LocationArn",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.DescribeLocationEfsOutput = schema.new({
    id = id.from(_N, "DescribeLocationEfsResponse"),
    type = "structure",
    members = {
        LocationArn = schema.new({
            id = id.from(_N, "DescribeLocationEfsOutput", "LocationArn"),
            type = "string",
            name = "LocationArn",
            target_id = prelude.String.id,
        }),
        LocationUri = schema.new({
            id = id.from(_N, "DescribeLocationEfsOutput", "LocationUri"),
            type = "string",
            name = "LocationUri",
            target_id = prelude.String.id,
        }),
        Ec2Config = schema.new({
            id = id.from(_N, "DescribeLocationEfsOutput", "Ec2Config"),
            type = "structure",
            name = "Ec2Config",
            target_id = id.from(_N, "Ec2Config"),
            target = M.Ec2Config,
        }),
        CreationTime = schema.new({
            id = id.from(_N, "DescribeLocationEfsOutput", "CreationTime"),
            type = "timestamp",
            name = "CreationTime",
            target_id = prelude.Timestamp.id,
        }),
        AccessPointArn = schema.new({
            id = id.from(_N, "DescribeLocationEfsOutput", "AccessPointArn"),
            type = "string",
            name = "AccessPointArn",
            target_id = prelude.String.id,
        }),
        FileSystemAccessRoleArn = schema.new({
            id = id.from(_N, "DescribeLocationEfsOutput", "FileSystemAccessRoleArn"),
            type = "string",
            name = "FileSystemAccessRoleArn",
            target_id = prelude.String.id,
        }),
        InTransitEncryption = schema.new({
            id = id.from(_N, "DescribeLocationEfsOutput", "InTransitEncryption"),
            type = "string",
            name = "InTransitEncryption",
            target_id = prelude.String.id,
        }),
    },
})

M.DescribeLocationFsxLustreInput = schema.new({
    id = id.from(_N, "DescribeLocationFsxLustreRequest"),
    type = "structure",
    members = {
        LocationArn = schema.new({
            id = id.from(_N, "DescribeLocationFsxLustreInput", "LocationArn"),
            type = "string",
            name = "LocationArn",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.DescribeLocationFsxLustreOutput = schema.new({
    id = id.from(_N, "DescribeLocationFsxLustreResponse"),
    type = "structure",
    members = {
        LocationArn = schema.new({
            id = id.from(_N, "DescribeLocationFsxLustreOutput", "LocationArn"),
            type = "string",
            name = "LocationArn",
            target_id = prelude.String.id,
        }),
        LocationUri = schema.new({
            id = id.from(_N, "DescribeLocationFsxLustreOutput", "LocationUri"),
            type = "string",
            name = "LocationUri",
            target_id = prelude.String.id,
        }),
        SecurityGroupArns = schema.new({
            id = id.from(_N, "DescribeLocationFsxLustreOutput", "SecurityGroupArns"),
            type = "list",
            name = "SecurityGroupArns",
            target_id = prelude.Document.id,
            list_member = prelude.String,
        }),
        CreationTime = schema.new({
            id = id.from(_N, "DescribeLocationFsxLustreOutput", "CreationTime"),
            type = "timestamp",
            name = "CreationTime",
            target_id = prelude.Timestamp.id,
        }),
    },
})

M.DescribeLocationFsxOntapInput = schema.new({
    id = id.from(_N, "DescribeLocationFsxOntapRequest"),
    type = "structure",
    members = {
        LocationArn = schema.new({
            id = id.from(_N, "DescribeLocationFsxOntapInput", "LocationArn"),
            type = "string",
            name = "LocationArn",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.DescribeLocationFsxOntapOutput = schema.new({
    id = id.from(_N, "DescribeLocationFsxOntapResponse"),
    type = "structure",
    members = {
        CreationTime = schema.new({
            id = id.from(_N, "DescribeLocationFsxOntapOutput", "CreationTime"),
            type = "timestamp",
            name = "CreationTime",
            target_id = prelude.Timestamp.id,
        }),
        LocationArn = schema.new({
            id = id.from(_N, "DescribeLocationFsxOntapOutput", "LocationArn"),
            type = "string",
            name = "LocationArn",
            target_id = prelude.String.id,
        }),
        LocationUri = schema.new({
            id = id.from(_N, "DescribeLocationFsxOntapOutput", "LocationUri"),
            type = "string",
            name = "LocationUri",
            target_id = prelude.String.id,
        }),
        Protocol = schema.new({
            id = id.from(_N, "DescribeLocationFsxOntapOutput", "Protocol"),
            type = "structure",
            name = "Protocol",
            target_id = id.from(_N, "FsxProtocol"),
            target = M.FsxProtocol,
        }),
        SecurityGroupArns = schema.new({
            id = id.from(_N, "DescribeLocationFsxOntapOutput", "SecurityGroupArns"),
            type = "list",
            name = "SecurityGroupArns",
            target_id = prelude.Document.id,
            list_member = prelude.String,
        }),
        StorageVirtualMachineArn = schema.new({
            id = id.from(_N, "DescribeLocationFsxOntapOutput", "StorageVirtualMachineArn"),
            type = "string",
            name = "StorageVirtualMachineArn",
            target_id = prelude.String.id,
        }),
        FsxFilesystemArn = schema.new({
            id = id.from(_N, "DescribeLocationFsxOntapOutput", "FsxFilesystemArn"),
            type = "string",
            name = "FsxFilesystemArn",
            target_id = prelude.String.id,
        }),
    },
})

M.DescribeLocationFsxOpenZfsInput = schema.new({
    id = id.from(_N, "DescribeLocationFsxOpenZfsRequest"),
    type = "structure",
    members = {
        LocationArn = schema.new({
            id = id.from(_N, "DescribeLocationFsxOpenZfsInput", "LocationArn"),
            type = "string",
            name = "LocationArn",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.DescribeLocationFsxOpenZfsOutput = schema.new({
    id = id.from(_N, "DescribeLocationFsxOpenZfsResponse"),
    type = "structure",
    members = {
        LocationArn = schema.new({
            id = id.from(_N, "DescribeLocationFsxOpenZfsOutput", "LocationArn"),
            type = "string",
            name = "LocationArn",
            target_id = prelude.String.id,
        }),
        LocationUri = schema.new({
            id = id.from(_N, "DescribeLocationFsxOpenZfsOutput", "LocationUri"),
            type = "string",
            name = "LocationUri",
            target_id = prelude.String.id,
        }),
        SecurityGroupArns = schema.new({
            id = id.from(_N, "DescribeLocationFsxOpenZfsOutput", "SecurityGroupArns"),
            type = "list",
            name = "SecurityGroupArns",
            target_id = prelude.Document.id,
            list_member = prelude.String,
        }),
        Protocol = schema.new({
            id = id.from(_N, "DescribeLocationFsxOpenZfsOutput", "Protocol"),
            type = "structure",
            name = "Protocol",
            target_id = id.from(_N, "FsxProtocol"),
            target = M.FsxProtocol,
        }),
        CreationTime = schema.new({
            id = id.from(_N, "DescribeLocationFsxOpenZfsOutput", "CreationTime"),
            type = "timestamp",
            name = "CreationTime",
            target_id = prelude.Timestamp.id,
        }),
    },
})

M.DescribeLocationFsxWindowsInput = schema.new({
    id = id.from(_N, "DescribeLocationFsxWindowsRequest"),
    type = "structure",
    members = {
        LocationArn = schema.new({
            id = id.from(_N, "DescribeLocationFsxWindowsInput", "LocationArn"),
            type = "string",
            name = "LocationArn",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.DescribeLocationFsxWindowsOutput = schema.new({
    id = id.from(_N, "DescribeLocationFsxWindowsResponse"),
    type = "structure",
    members = {
        LocationArn = schema.new({
            id = id.from(_N, "DescribeLocationFsxWindowsOutput", "LocationArn"),
            type = "string",
            name = "LocationArn",
            target_id = prelude.String.id,
        }),
        LocationUri = schema.new({
            id = id.from(_N, "DescribeLocationFsxWindowsOutput", "LocationUri"),
            type = "string",
            name = "LocationUri",
            target_id = prelude.String.id,
        }),
        SecurityGroupArns = schema.new({
            id = id.from(_N, "DescribeLocationFsxWindowsOutput", "SecurityGroupArns"),
            type = "list",
            name = "SecurityGroupArns",
            target_id = prelude.Document.id,
            list_member = prelude.String,
        }),
        CreationTime = schema.new({
            id = id.from(_N, "DescribeLocationFsxWindowsOutput", "CreationTime"),
            type = "timestamp",
            name = "CreationTime",
            target_id = prelude.Timestamp.id,
        }),
        User = schema.new({
            id = id.from(_N, "DescribeLocationFsxWindowsOutput", "User"),
            type = "string",
            name = "User",
            target_id = prelude.String.id,
        }),
        Domain = schema.new({
            id = id.from(_N, "DescribeLocationFsxWindowsOutput", "Domain"),
            type = "string",
            name = "Domain",
            target_id = prelude.String.id,
        }),
        ManagedSecretConfig = schema.new({
            id = id.from(_N, "DescribeLocationFsxWindowsOutput", "ManagedSecretConfig"),
            type = "structure",
            name = "ManagedSecretConfig",
            target_id = id.from(_N, "ManagedSecretConfig"),
            target = M.ManagedSecretConfig,
        }),
        CmkSecretConfig = schema.new({
            id = id.from(_N, "DescribeLocationFsxWindowsOutput", "CmkSecretConfig"),
            type = "structure",
            name = "CmkSecretConfig",
            target_id = id.from(_N, "CmkSecretConfig"),
            target = M.CmkSecretConfig,
        }),
        CustomSecretConfig = schema.new({
            id = id.from(_N, "DescribeLocationFsxWindowsOutput", "CustomSecretConfig"),
            type = "structure",
            name = "CustomSecretConfig",
            target_id = id.from(_N, "CustomSecretConfig"),
            target = M.CustomSecretConfig,
        }),
    },
})

M.DescribeLocationHdfsInput = schema.new({
    id = id.from(_N, "DescribeLocationHdfsRequest"),
    type = "structure",
    members = {
        LocationArn = schema.new({
            id = id.from(_N, "DescribeLocationHdfsInput", "LocationArn"),
            type = "string",
            name = "LocationArn",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.DescribeLocationHdfsOutput = schema.new({
    id = id.from(_N, "DescribeLocationHdfsResponse"),
    type = "structure",
    members = {
        LocationArn = schema.new({
            id = id.from(_N, "DescribeLocationHdfsOutput", "LocationArn"),
            type = "string",
            name = "LocationArn",
            target_id = prelude.String.id,
        }),
        LocationUri = schema.new({
            id = id.from(_N, "DescribeLocationHdfsOutput", "LocationUri"),
            type = "string",
            name = "LocationUri",
            target_id = prelude.String.id,
        }),
        NameNodes = schema.new({
            id = id.from(_N, "DescribeLocationHdfsOutput", "NameNodes"),
            type = "list",
            name = "NameNodes",
            target_id = prelude.Document.id,
            list_member = M.HdfsNameNode,
        }),
        BlockSize = schema.new({
            id = id.from(_N, "DescribeLocationHdfsOutput", "BlockSize"),
            type = "integer",
            name = "BlockSize",
            target_id = prelude.Integer.id,
        }),
        ReplicationFactor = schema.new({
            id = id.from(_N, "DescribeLocationHdfsOutput", "ReplicationFactor"),
            type = "integer",
            name = "ReplicationFactor",
            target_id = prelude.Integer.id,
        }),
        KmsKeyProviderUri = schema.new({
            id = id.from(_N, "DescribeLocationHdfsOutput", "KmsKeyProviderUri"),
            type = "string",
            name = "KmsKeyProviderUri",
            target_id = prelude.String.id,
        }),
        QopConfiguration = schema.new({
            id = id.from(_N, "DescribeLocationHdfsOutput", "QopConfiguration"),
            type = "structure",
            name = "QopConfiguration",
            target_id = id.from(_N, "QopConfiguration"),
            target = M.QopConfiguration,
        }),
        AuthenticationType = schema.new({
            id = id.from(_N, "DescribeLocationHdfsOutput", "AuthenticationType"),
            type = "string",
            name = "AuthenticationType",
            target_id = prelude.String.id,
        }),
        SimpleUser = schema.new({
            id = id.from(_N, "DescribeLocationHdfsOutput", "SimpleUser"),
            type = "string",
            name = "SimpleUser",
            target_id = prelude.String.id,
        }),
        KerberosPrincipal = schema.new({
            id = id.from(_N, "DescribeLocationHdfsOutput", "KerberosPrincipal"),
            type = "string",
            name = "KerberosPrincipal",
            target_id = prelude.String.id,
        }),
        AgentArns = schema.new({
            id = id.from(_N, "DescribeLocationHdfsOutput", "AgentArns"),
            type = "list",
            name = "AgentArns",
            target_id = prelude.Document.id,
            list_member = prelude.String,
        }),
        CreationTime = schema.new({
            id = id.from(_N, "DescribeLocationHdfsOutput", "CreationTime"),
            type = "timestamp",
            name = "CreationTime",
            target_id = prelude.Timestamp.id,
        }),
        ManagedSecretConfig = schema.new({
            id = id.from(_N, "DescribeLocationHdfsOutput", "ManagedSecretConfig"),
            type = "structure",
            name = "ManagedSecretConfig",
            target_id = id.from(_N, "ManagedSecretConfig"),
            target = M.ManagedSecretConfig,
        }),
        CmkSecretConfig = schema.new({
            id = id.from(_N, "DescribeLocationHdfsOutput", "CmkSecretConfig"),
            type = "structure",
            name = "CmkSecretConfig",
            target_id = id.from(_N, "CmkSecretConfig"),
            target = M.CmkSecretConfig,
        }),
        CustomSecretConfig = schema.new({
            id = id.from(_N, "DescribeLocationHdfsOutput", "CustomSecretConfig"),
            type = "structure",
            name = "CustomSecretConfig",
            target_id = id.from(_N, "CustomSecretConfig"),
            target = M.CustomSecretConfig,
        }),
    },
})

M.DescribeLocationNfsInput = schema.new({
    id = id.from(_N, "DescribeLocationNfsRequest"),
    type = "structure",
    members = {
        LocationArn = schema.new({
            id = id.from(_N, "DescribeLocationNfsInput", "LocationArn"),
            type = "string",
            name = "LocationArn",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.DescribeLocationNfsOutput = schema.new({
    id = id.from(_N, "DescribeLocationNfsResponse"),
    type = "structure",
    members = {
        LocationArn = schema.new({
            id = id.from(_N, "DescribeLocationNfsOutput", "LocationArn"),
            type = "string",
            name = "LocationArn",
            target_id = prelude.String.id,
        }),
        LocationUri = schema.new({
            id = id.from(_N, "DescribeLocationNfsOutput", "LocationUri"),
            type = "string",
            name = "LocationUri",
            target_id = prelude.String.id,
        }),
        OnPremConfig = schema.new({
            id = id.from(_N, "DescribeLocationNfsOutput", "OnPremConfig"),
            type = "structure",
            name = "OnPremConfig",
            target_id = id.from(_N, "OnPremConfig"),
            target = M.OnPremConfig,
        }),
        MountOptions = schema.new({
            id = id.from(_N, "DescribeLocationNfsOutput", "MountOptions"),
            type = "structure",
            name = "MountOptions",
            target_id = id.from(_N, "NfsMountOptions"),
            target = M.NfsMountOptions,
        }),
        CreationTime = schema.new({
            id = id.from(_N, "DescribeLocationNfsOutput", "CreationTime"),
            type = "timestamp",
            name = "CreationTime",
            target_id = prelude.Timestamp.id,
        }),
    },
})

M.DescribeLocationObjectStorageInput = schema.new({
    id = id.from(_N, "DescribeLocationObjectStorageRequest"),
    type = "structure",
    members = {
        LocationArn = schema.new({
            id = id.from(_N, "DescribeLocationObjectStorageInput", "LocationArn"),
            type = "string",
            name = "LocationArn",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.DescribeLocationObjectStorageOutput = schema.new({
    id = id.from(_N, "DescribeLocationObjectStorageResponse"),
    type = "structure",
    members = {
        LocationArn = schema.new({
            id = id.from(_N, "DescribeLocationObjectStorageOutput", "LocationArn"),
            type = "string",
            name = "LocationArn",
            target_id = prelude.String.id,
        }),
        LocationUri = schema.new({
            id = id.from(_N, "DescribeLocationObjectStorageOutput", "LocationUri"),
            type = "string",
            name = "LocationUri",
            target_id = prelude.String.id,
        }),
        AccessKey = schema.new({
            id = id.from(_N, "DescribeLocationObjectStorageOutput", "AccessKey"),
            type = "string",
            name = "AccessKey",
            target_id = prelude.String.id,
        }),
        ServerPort = schema.new({
            id = id.from(_N, "DescribeLocationObjectStorageOutput", "ServerPort"),
            type = "integer",
            name = "ServerPort",
            target_id = prelude.Integer.id,
        }),
        ServerProtocol = schema.new({
            id = id.from(_N, "DescribeLocationObjectStorageOutput", "ServerProtocol"),
            type = "string",
            name = "ServerProtocol",
            target_id = prelude.String.id,
        }),
        AgentArns = schema.new({
            id = id.from(_N, "DescribeLocationObjectStorageOutput", "AgentArns"),
            type = "list",
            name = "AgentArns",
            target_id = prelude.Document.id,
            list_member = prelude.String,
        }),
        CreationTime = schema.new({
            id = id.from(_N, "DescribeLocationObjectStorageOutput", "CreationTime"),
            type = "timestamp",
            name = "CreationTime",
            target_id = prelude.Timestamp.id,
        }),
        ServerCertificate = schema.new({
            id = id.from(_N, "DescribeLocationObjectStorageOutput", "ServerCertificate"),
            type = "blob",
            name = "ServerCertificate",
            target_id = prelude.Blob.id,
        }),
        ManagedSecretConfig = schema.new({
            id = id.from(_N, "DescribeLocationObjectStorageOutput", "ManagedSecretConfig"),
            type = "structure",
            name = "ManagedSecretConfig",
            target_id = id.from(_N, "ManagedSecretConfig"),
            target = M.ManagedSecretConfig,
        }),
        CmkSecretConfig = schema.new({
            id = id.from(_N, "DescribeLocationObjectStorageOutput", "CmkSecretConfig"),
            type = "structure",
            name = "CmkSecretConfig",
            target_id = id.from(_N, "CmkSecretConfig"),
            target = M.CmkSecretConfig,
        }),
        CustomSecretConfig = schema.new({
            id = id.from(_N, "DescribeLocationObjectStorageOutput", "CustomSecretConfig"),
            type = "structure",
            name = "CustomSecretConfig",
            target_id = id.from(_N, "CustomSecretConfig"),
            target = M.CustomSecretConfig,
        }),
    },
})

M.DescribeLocationS3Input = schema.new({
    id = id.from(_N, "DescribeLocationS3Request"),
    type = "structure",
    members = {
        LocationArn = schema.new({
            id = id.from(_N, "DescribeLocationS3Input", "LocationArn"),
            type = "string",
            name = "LocationArn",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.DescribeLocationS3Output = schema.new({
    id = id.from(_N, "DescribeLocationS3Response"),
    type = "structure",
    members = {
        LocationArn = schema.new({
            id = id.from(_N, "DescribeLocationS3Output", "LocationArn"),
            type = "string",
            name = "LocationArn",
            target_id = prelude.String.id,
        }),
        LocationUri = schema.new({
            id = id.from(_N, "DescribeLocationS3Output", "LocationUri"),
            type = "string",
            name = "LocationUri",
            target_id = prelude.String.id,
        }),
        S3StorageClass = schema.new({
            id = id.from(_N, "DescribeLocationS3Output", "S3StorageClass"),
            type = "string",
            name = "S3StorageClass",
            target_id = prelude.String.id,
        }),
        S3Config = schema.new({
            id = id.from(_N, "DescribeLocationS3Output", "S3Config"),
            type = "structure",
            name = "S3Config",
            target_id = id.from(_N, "S3Config"),
            target = M.S3Config,
        }),
        AgentArns = schema.new({
            id = id.from(_N, "DescribeLocationS3Output", "AgentArns"),
            type = "list",
            name = "AgentArns",
            target_id = prelude.Document.id,
            list_member = prelude.String,
        }),
        CreationTime = schema.new({
            id = id.from(_N, "DescribeLocationS3Output", "CreationTime"),
            type = "timestamp",
            name = "CreationTime",
            target_id = prelude.Timestamp.id,
        }),
    },
})

M.DescribeLocationSmbInput = schema.new({
    id = id.from(_N, "DescribeLocationSmbRequest"),
    type = "structure",
    members = {
        LocationArn = schema.new({
            id = id.from(_N, "DescribeLocationSmbInput", "LocationArn"),
            type = "string",
            name = "LocationArn",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.DescribeLocationSmbOutput = schema.new({
    id = id.from(_N, "DescribeLocationSmbResponse"),
    type = "structure",
    members = {
        LocationArn = schema.new({
            id = id.from(_N, "DescribeLocationSmbOutput", "LocationArn"),
            type = "string",
            name = "LocationArn",
            target_id = prelude.String.id,
        }),
        LocationUri = schema.new({
            id = id.from(_N, "DescribeLocationSmbOutput", "LocationUri"),
            type = "string",
            name = "LocationUri",
            target_id = prelude.String.id,
        }),
        AgentArns = schema.new({
            id = id.from(_N, "DescribeLocationSmbOutput", "AgentArns"),
            type = "list",
            name = "AgentArns",
            target_id = prelude.Document.id,
            list_member = prelude.String,
        }),
        User = schema.new({
            id = id.from(_N, "DescribeLocationSmbOutput", "User"),
            type = "string",
            name = "User",
            target_id = prelude.String.id,
        }),
        Domain = schema.new({
            id = id.from(_N, "DescribeLocationSmbOutput", "Domain"),
            type = "string",
            name = "Domain",
            target_id = prelude.String.id,
        }),
        MountOptions = schema.new({
            id = id.from(_N, "DescribeLocationSmbOutput", "MountOptions"),
            type = "structure",
            name = "MountOptions",
            target_id = id.from(_N, "SmbMountOptions"),
            target = M.SmbMountOptions,
        }),
        CreationTime = schema.new({
            id = id.from(_N, "DescribeLocationSmbOutput", "CreationTime"),
            type = "timestamp",
            name = "CreationTime",
            target_id = prelude.Timestamp.id,
        }),
        DnsIpAddresses = schema.new({
            id = id.from(_N, "DescribeLocationSmbOutput", "DnsIpAddresses"),
            type = "list",
            name = "DnsIpAddresses",
            target_id = prelude.Document.id,
            list_member = prelude.String,
        }),
        KerberosPrincipal = schema.new({
            id = id.from(_N, "DescribeLocationSmbOutput", "KerberosPrincipal"),
            type = "string",
            name = "KerberosPrincipal",
            target_id = prelude.String.id,
        }),
        AuthenticationType = schema.new({
            id = id.from(_N, "DescribeLocationSmbOutput", "AuthenticationType"),
            type = "string",
            name = "AuthenticationType",
            target_id = prelude.String.id,
        }),
        ManagedSecretConfig = schema.new({
            id = id.from(_N, "DescribeLocationSmbOutput", "ManagedSecretConfig"),
            type = "structure",
            name = "ManagedSecretConfig",
            target_id = id.from(_N, "ManagedSecretConfig"),
            target = M.ManagedSecretConfig,
        }),
        CmkSecretConfig = schema.new({
            id = id.from(_N, "DescribeLocationSmbOutput", "CmkSecretConfig"),
            type = "structure",
            name = "CmkSecretConfig",
            target_id = id.from(_N, "CmkSecretConfig"),
            target = M.CmkSecretConfig,
        }),
        CustomSecretConfig = schema.new({
            id = id.from(_N, "DescribeLocationSmbOutput", "CustomSecretConfig"),
            type = "structure",
            name = "CustomSecretConfig",
            target_id = id.from(_N, "CustomSecretConfig"),
            target = M.CustomSecretConfig,
        }),
    },
})

M.DescribeTaskInput = schema.new({
    id = id.from(_N, "DescribeTaskRequest"),
    type = "structure",
    members = {
        TaskArn = schema.new({
            id = id.from(_N, "DescribeTaskInput", "TaskArn"),
            type = "string",
            name = "TaskArn",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.TaskScheduleDetails = schema.new({
    id = id.from(_N, "TaskScheduleDetails"),
    type = "structure",
    members = {
        StatusUpdateTime = schema.new({
            id = id.from(_N, "TaskScheduleDetails", "StatusUpdateTime"),
            type = "timestamp",
            name = "StatusUpdateTime",
            target_id = prelude.Timestamp.id,
        }),
        DisabledReason = schema.new({
            id = id.from(_N, "TaskScheduleDetails", "DisabledReason"),
            type = "string",
            name = "DisabledReason",
            target_id = prelude.String.id,
        }),
        DisabledBy = schema.new({
            id = id.from(_N, "TaskScheduleDetails", "DisabledBy"),
            type = "string",
            name = "DisabledBy",
            target_id = prelude.String.id,
        }),
    },
})

M.DescribeTaskOutput = schema.new({
    id = id.from(_N, "DescribeTaskResponse"),
    type = "structure",
    members = {
        TaskArn = schema.new({
            id = id.from(_N, "DescribeTaskOutput", "TaskArn"),
            type = "string",
            name = "TaskArn",
            target_id = prelude.String.id,
        }),
        Status = schema.new({
            id = id.from(_N, "DescribeTaskOutput", "Status"),
            type = "string",
            name = "Status",
            target_id = prelude.String.id,
        }),
        Name = schema.new({
            id = id.from(_N, "DescribeTaskOutput", "Name"),
            type = "string",
            name = "Name",
            target_id = prelude.String.id,
        }),
        CurrentTaskExecutionArn = schema.new({
            id = id.from(_N, "DescribeTaskOutput", "CurrentTaskExecutionArn"),
            type = "string",
            name = "CurrentTaskExecutionArn",
            target_id = prelude.String.id,
        }),
        SourceLocationArn = schema.new({
            id = id.from(_N, "DescribeTaskOutput", "SourceLocationArn"),
            type = "string",
            name = "SourceLocationArn",
            target_id = prelude.String.id,
        }),
        DestinationLocationArn = schema.new({
            id = id.from(_N, "DescribeTaskOutput", "DestinationLocationArn"),
            type = "string",
            name = "DestinationLocationArn",
            target_id = prelude.String.id,
        }),
        CloudWatchLogGroupArn = schema.new({
            id = id.from(_N, "DescribeTaskOutput", "CloudWatchLogGroupArn"),
            type = "string",
            name = "CloudWatchLogGroupArn",
            target_id = prelude.String.id,
        }),
        SourceNetworkInterfaceArns = schema.new({
            id = id.from(_N, "DescribeTaskOutput", "SourceNetworkInterfaceArns"),
            type = "list",
            name = "SourceNetworkInterfaceArns",
            target_id = prelude.Document.id,
            list_member = prelude.String,
        }),
        DestinationNetworkInterfaceArns = schema.new({
            id = id.from(_N, "DescribeTaskOutput", "DestinationNetworkInterfaceArns"),
            type = "list",
            name = "DestinationNetworkInterfaceArns",
            target_id = prelude.Document.id,
            list_member = prelude.String,
        }),
        Options = schema.new({
            id = id.from(_N, "DescribeTaskOutput", "Options"),
            type = "structure",
            name = "Options",
            target_id = id.from(_N, "Options"),
            target = M.Options,
        }),
        Excludes = schema.new({
            id = id.from(_N, "DescribeTaskOutput", "Excludes"),
            type = "list",
            name = "Excludes",
            target_id = prelude.Document.id,
            list_member = M.FilterRule,
        }),
        Schedule = schema.new({
            id = id.from(_N, "DescribeTaskOutput", "Schedule"),
            type = "structure",
            name = "Schedule",
            target_id = id.from(_N, "TaskSchedule"),
            target = M.TaskSchedule,
        }),
        ErrorCode = schema.new({
            id = id.from(_N, "DescribeTaskOutput", "ErrorCode"),
            type = "string",
            name = "ErrorCode",
            target_id = prelude.String.id,
        }),
        ErrorDetail = schema.new({
            id = id.from(_N, "DescribeTaskOutput", "ErrorDetail"),
            type = "string",
            name = "ErrorDetail",
            target_id = prelude.String.id,
        }),
        CreationTime = schema.new({
            id = id.from(_N, "DescribeTaskOutput", "CreationTime"),
            type = "timestamp",
            name = "CreationTime",
            target_id = prelude.Timestamp.id,
        }),
        Includes = schema.new({
            id = id.from(_N, "DescribeTaskOutput", "Includes"),
            type = "list",
            name = "Includes",
            target_id = prelude.Document.id,
            list_member = M.FilterRule,
        }),
        ManifestConfig = schema.new({
            id = id.from(_N, "DescribeTaskOutput", "ManifestConfig"),
            type = "structure",
            name = "ManifestConfig",
            target_id = id.from(_N, "ManifestConfig"),
            target = M.ManifestConfig,
        }),
        TaskReportConfig = schema.new({
            id = id.from(_N, "DescribeTaskOutput", "TaskReportConfig"),
            type = "structure",
            name = "TaskReportConfig",
            target_id = id.from(_N, "TaskReportConfig"),
            target = M.TaskReportConfig,
        }),
        ScheduleDetails = schema.new({
            id = id.from(_N, "DescribeTaskOutput", "ScheduleDetails"),
            type = "structure",
            name = "ScheduleDetails",
            target_id = id.from(_N, "TaskScheduleDetails"),
            target = M.TaskScheduleDetails,
        }),
        TaskMode = schema.new({
            id = id.from(_N, "DescribeTaskOutput", "TaskMode"),
            type = "string",
            name = "TaskMode",
            target_id = prelude.String.id,
        }),
    },
})

M.DescribeTaskExecutionInput = schema.new({
    id = id.from(_N, "DescribeTaskExecutionRequest"),
    type = "structure",
    members = {
        TaskExecutionArn = schema.new({
            id = id.from(_N, "DescribeTaskExecutionInput", "TaskExecutionArn"),
            type = "string",
            name = "TaskExecutionArn",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.TaskExecutionFilesFailedDetail = schema.new({
    id = id.from(_N, "TaskExecutionFilesFailedDetail"),
    type = "structure",
    members = {
        Prepare = schema.new({
            id = id.from(_N, "TaskExecutionFilesFailedDetail", "Prepare"),
            type = "long",
            name = "Prepare",
            target_id = prelude.Long.id,
            traits = {
                [traits.DEFAULT] = { value = 0 },
            },
        }),
        Transfer = schema.new({
            id = id.from(_N, "TaskExecutionFilesFailedDetail", "Transfer"),
            type = "long",
            name = "Transfer",
            target_id = prelude.Long.id,
            traits = {
                [traits.DEFAULT] = { value = 0 },
            },
        }),
        Verify = schema.new({
            id = id.from(_N, "TaskExecutionFilesFailedDetail", "Verify"),
            type = "long",
            name = "Verify",
            target_id = prelude.Long.id,
            traits = {
                [traits.DEFAULT] = { value = 0 },
            },
        }),
        Delete = schema.new({
            id = id.from(_N, "TaskExecutionFilesFailedDetail", "Delete"),
            type = "long",
            name = "Delete",
            target_id = prelude.Long.id,
            traits = {
                [traits.DEFAULT] = { value = 0 },
            },
        }),
    },
})

M.TaskExecutionFilesListedDetail = schema.new({
    id = id.from(_N, "TaskExecutionFilesListedDetail"),
    type = "structure",
    members = {
        AtSource = schema.new({
            id = id.from(_N, "TaskExecutionFilesListedDetail", "AtSource"),
            type = "long",
            name = "AtSource",
            target_id = prelude.Long.id,
            traits = {
                [traits.DEFAULT] = { value = 0 },
            },
        }),
        AtDestinationForDelete = schema.new({
            id = id.from(_N, "TaskExecutionFilesListedDetail", "AtDestinationForDelete"),
            type = "long",
            name = "AtDestinationForDelete",
            target_id = prelude.Long.id,
            traits = {
                [traits.DEFAULT] = { value = 0 },
            },
        }),
    },
})

M.TaskExecutionFoldersFailedDetail = schema.new({
    id = id.from(_N, "TaskExecutionFoldersFailedDetail"),
    type = "structure",
    members = {
        List = schema.new({
            id = id.from(_N, "TaskExecutionFoldersFailedDetail", "List"),
            type = "long",
            name = "List",
            target_id = prelude.Long.id,
            traits = {
                [traits.DEFAULT] = { value = 0 },
            },
        }),
        Prepare = schema.new({
            id = id.from(_N, "TaskExecutionFoldersFailedDetail", "Prepare"),
            type = "long",
            name = "Prepare",
            target_id = prelude.Long.id,
            traits = {
                [traits.DEFAULT] = { value = 0 },
            },
        }),
        Transfer = schema.new({
            id = id.from(_N, "TaskExecutionFoldersFailedDetail", "Transfer"),
            type = "long",
            name = "Transfer",
            target_id = prelude.Long.id,
            traits = {
                [traits.DEFAULT] = { value = 0 },
            },
        }),
        Verify = schema.new({
            id = id.from(_N, "TaskExecutionFoldersFailedDetail", "Verify"),
            type = "long",
            name = "Verify",
            target_id = prelude.Long.id,
            traits = {
                [traits.DEFAULT] = { value = 0 },
            },
        }),
        Delete = schema.new({
            id = id.from(_N, "TaskExecutionFoldersFailedDetail", "Delete"),
            type = "long",
            name = "Delete",
            target_id = prelude.Long.id,
            traits = {
                [traits.DEFAULT] = { value = 0 },
            },
        }),
    },
})

M.TaskExecutionFoldersListedDetail = schema.new({
    id = id.from(_N, "TaskExecutionFoldersListedDetail"),
    type = "structure",
    members = {
        AtSource = schema.new({
            id = id.from(_N, "TaskExecutionFoldersListedDetail", "AtSource"),
            type = "long",
            name = "AtSource",
            target_id = prelude.Long.id,
            traits = {
                [traits.DEFAULT] = { value = 0 },
            },
        }),
        AtDestinationForDelete = schema.new({
            id = id.from(_N, "TaskExecutionFoldersListedDetail", "AtDestinationForDelete"),
            type = "long",
            name = "AtDestinationForDelete",
            target_id = prelude.Long.id,
            traits = {
                [traits.DEFAULT] = { value = 0 },
            },
        }),
    },
})

M.ReportResult = schema.new({
    id = id.from(_N, "ReportResult"),
    type = "structure",
    members = {
        Status = schema.new({
            id = id.from(_N, "ReportResult", "Status"),
            type = "string",
            name = "Status",
            target_id = prelude.String.id,
        }),
        ErrorCode = schema.new({
            id = id.from(_N, "ReportResult", "ErrorCode"),
            type = "string",
            name = "ErrorCode",
            target_id = prelude.String.id,
        }),
        ErrorDetail = schema.new({
            id = id.from(_N, "ReportResult", "ErrorDetail"),
            type = "string",
            name = "ErrorDetail",
            target_id = prelude.String.id,
        }),
    },
})

M.TaskExecutionResultDetail = schema.new({
    id = id.from(_N, "TaskExecutionResultDetail"),
    type = "structure",
    members = {
        PrepareDuration = schema.new({
            id = id.from(_N, "TaskExecutionResultDetail", "PrepareDuration"),
            type = "long",
            name = "PrepareDuration",
            target_id = prelude.Long.id,
        }),
        PrepareStatus = schema.new({
            id = id.from(_N, "TaskExecutionResultDetail", "PrepareStatus"),
            type = "string",
            name = "PrepareStatus",
            target_id = prelude.String.id,
        }),
        TotalDuration = schema.new({
            id = id.from(_N, "TaskExecutionResultDetail", "TotalDuration"),
            type = "long",
            name = "TotalDuration",
            target_id = prelude.Long.id,
        }),
        TransferDuration = schema.new({
            id = id.from(_N, "TaskExecutionResultDetail", "TransferDuration"),
            type = "long",
            name = "TransferDuration",
            target_id = prelude.Long.id,
        }),
        TransferStatus = schema.new({
            id = id.from(_N, "TaskExecutionResultDetail", "TransferStatus"),
            type = "string",
            name = "TransferStatus",
            target_id = prelude.String.id,
        }),
        VerifyDuration = schema.new({
            id = id.from(_N, "TaskExecutionResultDetail", "VerifyDuration"),
            type = "long",
            name = "VerifyDuration",
            target_id = prelude.Long.id,
        }),
        VerifyStatus = schema.new({
            id = id.from(_N, "TaskExecutionResultDetail", "VerifyStatus"),
            type = "string",
            name = "VerifyStatus",
            target_id = prelude.String.id,
        }),
        ErrorCode = schema.new({
            id = id.from(_N, "TaskExecutionResultDetail", "ErrorCode"),
            type = "string",
            name = "ErrorCode",
            target_id = prelude.String.id,
        }),
        ErrorDetail = schema.new({
            id = id.from(_N, "TaskExecutionResultDetail", "ErrorDetail"),
            type = "string",
            name = "ErrorDetail",
            target_id = prelude.String.id,
        }),
    },
})

M.DescribeTaskExecutionOutput = schema.new({
    id = id.from(_N, "DescribeTaskExecutionResponse"),
    type = "structure",
    members = {
        TaskExecutionArn = schema.new({
            id = id.from(_N, "DescribeTaskExecutionOutput", "TaskExecutionArn"),
            type = "string",
            name = "TaskExecutionArn",
            target_id = prelude.String.id,
        }),
        Status = schema.new({
            id = id.from(_N, "DescribeTaskExecutionOutput", "Status"),
            type = "string",
            name = "Status",
            target_id = prelude.String.id,
        }),
        Options = schema.new({
            id = id.from(_N, "DescribeTaskExecutionOutput", "Options"),
            type = "structure",
            name = "Options",
            target_id = id.from(_N, "Options"),
            target = M.Options,
        }),
        Excludes = schema.new({
            id = id.from(_N, "DescribeTaskExecutionOutput", "Excludes"),
            type = "list",
            name = "Excludes",
            target_id = prelude.Document.id,
            list_member = M.FilterRule,
        }),
        Includes = schema.new({
            id = id.from(_N, "DescribeTaskExecutionOutput", "Includes"),
            type = "list",
            name = "Includes",
            target_id = prelude.Document.id,
            list_member = M.FilterRule,
        }),
        ManifestConfig = schema.new({
            id = id.from(_N, "DescribeTaskExecutionOutput", "ManifestConfig"),
            type = "structure",
            name = "ManifestConfig",
            target_id = id.from(_N, "ManifestConfig"),
            target = M.ManifestConfig,
        }),
        StartTime = schema.new({
            id = id.from(_N, "DescribeTaskExecutionOutput", "StartTime"),
            type = "timestamp",
            name = "StartTime",
            target_id = prelude.Timestamp.id,
        }),
        EstimatedFilesToTransfer = schema.new({
            id = id.from(_N, "DescribeTaskExecutionOutput", "EstimatedFilesToTransfer"),
            type = "long",
            name = "EstimatedFilesToTransfer",
            target_id = prelude.Long.id,
            traits = {
                [traits.DEFAULT] = { value = 0 },
            },
        }),
        EstimatedBytesToTransfer = schema.new({
            id = id.from(_N, "DescribeTaskExecutionOutput", "EstimatedBytesToTransfer"),
            type = "long",
            name = "EstimatedBytesToTransfer",
            target_id = prelude.Long.id,
            traits = {
                [traits.DEFAULT] = { value = 0 },
            },
        }),
        FilesTransferred = schema.new({
            id = id.from(_N, "DescribeTaskExecutionOutput", "FilesTransferred"),
            type = "long",
            name = "FilesTransferred",
            target_id = prelude.Long.id,
            traits = {
                [traits.DEFAULT] = { value = 0 },
            },
        }),
        BytesWritten = schema.new({
            id = id.from(_N, "DescribeTaskExecutionOutput", "BytesWritten"),
            type = "long",
            name = "BytesWritten",
            target_id = prelude.Long.id,
            traits = {
                [traits.DEFAULT] = { value = 0 },
            },
        }),
        BytesTransferred = schema.new({
            id = id.from(_N, "DescribeTaskExecutionOutput", "BytesTransferred"),
            type = "long",
            name = "BytesTransferred",
            target_id = prelude.Long.id,
            traits = {
                [traits.DEFAULT] = { value = 0 },
            },
        }),
        BytesCompressed = schema.new({
            id = id.from(_N, "DescribeTaskExecutionOutput", "BytesCompressed"),
            type = "long",
            name = "BytesCompressed",
            target_id = prelude.Long.id,
            traits = {
                [traits.DEFAULT] = { value = 0 },
            },
        }),
        Result = schema.new({
            id = id.from(_N, "DescribeTaskExecutionOutput", "Result"),
            type = "structure",
            name = "Result",
            target_id = id.from(_N, "TaskExecutionResultDetail"),
            target = M.TaskExecutionResultDetail,
        }),
        TaskReportConfig = schema.new({
            id = id.from(_N, "DescribeTaskExecutionOutput", "TaskReportConfig"),
            type = "structure",
            name = "TaskReportConfig",
            target_id = id.from(_N, "TaskReportConfig"),
            target = M.TaskReportConfig,
        }),
        FilesDeleted = schema.new({
            id = id.from(_N, "DescribeTaskExecutionOutput", "FilesDeleted"),
            type = "long",
            name = "FilesDeleted",
            target_id = prelude.Long.id,
            traits = {
                [traits.DEFAULT] = { value = 0 },
            },
        }),
        FilesSkipped = schema.new({
            id = id.from(_N, "DescribeTaskExecutionOutput", "FilesSkipped"),
            type = "long",
            name = "FilesSkipped",
            target_id = prelude.Long.id,
            traits = {
                [traits.DEFAULT] = { value = 0 },
            },
        }),
        FilesVerified = schema.new({
            id = id.from(_N, "DescribeTaskExecutionOutput", "FilesVerified"),
            type = "long",
            name = "FilesVerified",
            target_id = prelude.Long.id,
            traits = {
                [traits.DEFAULT] = { value = 0 },
            },
        }),
        ReportResult = schema.new({
            id = id.from(_N, "DescribeTaskExecutionOutput", "ReportResult"),
            type = "structure",
            name = "ReportResult",
            target_id = id.from(_N, "ReportResult"),
            target = M.ReportResult,
        }),
        EstimatedFilesToDelete = schema.new({
            id = id.from(_N, "DescribeTaskExecutionOutput", "EstimatedFilesToDelete"),
            type = "long",
            name = "EstimatedFilesToDelete",
            target_id = prelude.Long.id,
            traits = {
                [traits.DEFAULT] = { value = 0 },
            },
        }),
        TaskMode = schema.new({
            id = id.from(_N, "DescribeTaskExecutionOutput", "TaskMode"),
            type = "string",
            name = "TaskMode",
            target_id = prelude.String.id,
        }),
        FilesPrepared = schema.new({
            id = id.from(_N, "DescribeTaskExecutionOutput", "FilesPrepared"),
            type = "long",
            name = "FilesPrepared",
            target_id = prelude.Long.id,
            traits = {
                [traits.DEFAULT] = { value = 0 },
            },
        }),
        FilesListed = schema.new({
            id = id.from(_N, "DescribeTaskExecutionOutput", "FilesListed"),
            type = "structure",
            name = "FilesListed",
            target_id = id.from(_N, "TaskExecutionFilesListedDetail"),
            target = M.TaskExecutionFilesListedDetail,
        }),
        FilesFailed = schema.new({
            id = id.from(_N, "DescribeTaskExecutionOutput", "FilesFailed"),
            type = "structure",
            name = "FilesFailed",
            target_id = id.from(_N, "TaskExecutionFilesFailedDetail"),
            target = M.TaskExecutionFilesFailedDetail,
        }),
        EstimatedFoldersToDelete = schema.new({
            id = id.from(_N, "DescribeTaskExecutionOutput", "EstimatedFoldersToDelete"),
            type = "long",
            name = "EstimatedFoldersToDelete",
            target_id = prelude.Long.id,
        }),
        EstimatedFoldersToTransfer = schema.new({
            id = id.from(_N, "DescribeTaskExecutionOutput", "EstimatedFoldersToTransfer"),
            type = "long",
            name = "EstimatedFoldersToTransfer",
            target_id = prelude.Long.id,
        }),
        FoldersSkipped = schema.new({
            id = id.from(_N, "DescribeTaskExecutionOutput", "FoldersSkipped"),
            type = "long",
            name = "FoldersSkipped",
            target_id = prelude.Long.id,
        }),
        FoldersPrepared = schema.new({
            id = id.from(_N, "DescribeTaskExecutionOutput", "FoldersPrepared"),
            type = "long",
            name = "FoldersPrepared",
            target_id = prelude.Long.id,
        }),
        FoldersTransferred = schema.new({
            id = id.from(_N, "DescribeTaskExecutionOutput", "FoldersTransferred"),
            type = "long",
            name = "FoldersTransferred",
            target_id = prelude.Long.id,
        }),
        FoldersVerified = schema.new({
            id = id.from(_N, "DescribeTaskExecutionOutput", "FoldersVerified"),
            type = "long",
            name = "FoldersVerified",
            target_id = prelude.Long.id,
        }),
        FoldersDeleted = schema.new({
            id = id.from(_N, "DescribeTaskExecutionOutput", "FoldersDeleted"),
            type = "long",
            name = "FoldersDeleted",
            target_id = prelude.Long.id,
        }),
        FoldersListed = schema.new({
            id = id.from(_N, "DescribeTaskExecutionOutput", "FoldersListed"),
            type = "structure",
            name = "FoldersListed",
            target_id = id.from(_N, "TaskExecutionFoldersListedDetail"),
            target = M.TaskExecutionFoldersListedDetail,
        }),
        FoldersFailed = schema.new({
            id = id.from(_N, "DescribeTaskExecutionOutput", "FoldersFailed"),
            type = "structure",
            name = "FoldersFailed",
            target_id = id.from(_N, "TaskExecutionFoldersFailedDetail"),
            target = M.TaskExecutionFoldersFailedDetail,
        }),
        LaunchTime = schema.new({
            id = id.from(_N, "DescribeTaskExecutionOutput", "LaunchTime"),
            type = "timestamp",
            name = "LaunchTime",
            target_id = prelude.Timestamp.id,
        }),
        EndTime = schema.new({
            id = id.from(_N, "DescribeTaskExecutionOutput", "EndTime"),
            type = "timestamp",
            name = "EndTime",
            target_id = prelude.Timestamp.id,
        }),
    },
})

M.ListAgentsInput = schema.new({
    id = id.from(_N, "ListAgentsRequest"),
    type = "structure",
    members = {
        MaxResults = schema.new({
            id = id.from(_N, "ListAgentsInput", "MaxResults"),
            type = "integer",
            name = "MaxResults",
            target_id = prelude.Integer.id,
        }),
        NextToken = schema.new({
            id = id.from(_N, "ListAgentsInput", "NextToken"),
            type = "string",
            name = "NextToken",
            target_id = prelude.String.id,
        }),
    },
})

M.ListAgentsOutput = schema.new({
    id = id.from(_N, "ListAgentsResponse"),
    type = "structure",
    members = {
        Agents = schema.new({
            id = id.from(_N, "ListAgentsOutput", "Agents"),
            type = "list",
            name = "Agents",
            target_id = prelude.Document.id,
            list_member = M.AgentListEntry,
        }),
        NextToken = schema.new({
            id = id.from(_N, "ListAgentsOutput", "NextToken"),
            type = "string",
            name = "NextToken",
            target_id = prelude.String.id,
        }),
    },
})

M.LocationFilter = schema.new({
    id = id.from(_N, "LocationFilter"),
    type = "structure",
    members = {
        Name = schema.new({
            id = id.from(_N, "LocationFilter", "Name"),
            type = "string",
            name = "Name",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        Values = schema.new({
            id = id.from(_N, "LocationFilter", "Values"),
            type = "list",
            name = "Values",
            target_id = prelude.Document.id,
            list_member = prelude.String,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        Operator = schema.new({
            id = id.from(_N, "LocationFilter", "Operator"),
            type = "string",
            name = "Operator",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.ListLocationsInput = schema.new({
    id = id.from(_N, "ListLocationsRequest"),
    type = "structure",
    members = {
        MaxResults = schema.new({
            id = id.from(_N, "ListLocationsInput", "MaxResults"),
            type = "integer",
            name = "MaxResults",
            target_id = prelude.Integer.id,
        }),
        NextToken = schema.new({
            id = id.from(_N, "ListLocationsInput", "NextToken"),
            type = "string",
            name = "NextToken",
            target_id = prelude.String.id,
        }),
        Filters = schema.new({
            id = id.from(_N, "ListLocationsInput", "Filters"),
            type = "list",
            name = "Filters",
            target_id = prelude.Document.id,
            list_member = M.LocationFilter,
        }),
    },
})

M.LocationListEntry = schema.new({
    id = id.from(_N, "LocationListEntry"),
    type = "structure",
    members = {
        LocationArn = schema.new({
            id = id.from(_N, "LocationListEntry", "LocationArn"),
            type = "string",
            name = "LocationArn",
            target_id = prelude.String.id,
        }),
        LocationUri = schema.new({
            id = id.from(_N, "LocationListEntry", "LocationUri"),
            type = "string",
            name = "LocationUri",
            target_id = prelude.String.id,
        }),
    },
})

M.ListLocationsOutput = schema.new({
    id = id.from(_N, "ListLocationsResponse"),
    type = "structure",
    members = {
        Locations = schema.new({
            id = id.from(_N, "ListLocationsOutput", "Locations"),
            type = "list",
            name = "Locations",
            target_id = prelude.Document.id,
            list_member = M.LocationListEntry,
        }),
        NextToken = schema.new({
            id = id.from(_N, "ListLocationsOutput", "NextToken"),
            type = "string",
            name = "NextToken",
            target_id = prelude.String.id,
        }),
    },
})

M.ListTagsForResourceInput = schema.new({
    id = id.from(_N, "ListTagsForResourceRequest"),
    type = "structure",
    members = {
        ResourceArn = schema.new({
            id = id.from(_N, "ListTagsForResourceInput", "ResourceArn"),
            type = "string",
            name = "ResourceArn",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        MaxResults = schema.new({
            id = id.from(_N, "ListTagsForResourceInput", "MaxResults"),
            type = "integer",
            name = "MaxResults",
            target_id = prelude.Integer.id,
        }),
        NextToken = schema.new({
            id = id.from(_N, "ListTagsForResourceInput", "NextToken"),
            type = "string",
            name = "NextToken",
            target_id = prelude.String.id,
        }),
    },
})

M.ListTagsForResourceOutput = schema.new({
    id = id.from(_N, "ListTagsForResourceResponse"),
    type = "structure",
    members = {
        Tags = schema.new({
            id = id.from(_N, "ListTagsForResourceOutput", "Tags"),
            type = "list",
            name = "Tags",
            target_id = prelude.Document.id,
            list_member = M.TagListEntry,
        }),
        NextToken = schema.new({
            id = id.from(_N, "ListTagsForResourceOutput", "NextToken"),
            type = "string",
            name = "NextToken",
            target_id = prelude.String.id,
        }),
    },
})

M.ListTaskExecutionsInput = schema.new({
    id = id.from(_N, "ListTaskExecutionsRequest"),
    type = "structure",
    members = {
        TaskArn = schema.new({
            id = id.from(_N, "ListTaskExecutionsInput", "TaskArn"),
            type = "string",
            name = "TaskArn",
            target_id = prelude.String.id,
        }),
        MaxResults = schema.new({
            id = id.from(_N, "ListTaskExecutionsInput", "MaxResults"),
            type = "integer",
            name = "MaxResults",
            target_id = prelude.Integer.id,
        }),
        NextToken = schema.new({
            id = id.from(_N, "ListTaskExecutionsInput", "NextToken"),
            type = "string",
            name = "NextToken",
            target_id = prelude.String.id,
        }),
    },
})

M.TaskExecutionListEntry = schema.new({
    id = id.from(_N, "TaskExecutionListEntry"),
    type = "structure",
    members = {
        TaskExecutionArn = schema.new({
            id = id.from(_N, "TaskExecutionListEntry", "TaskExecutionArn"),
            type = "string",
            name = "TaskExecutionArn",
            target_id = prelude.String.id,
        }),
        Status = schema.new({
            id = id.from(_N, "TaskExecutionListEntry", "Status"),
            type = "string",
            name = "Status",
            target_id = prelude.String.id,
        }),
        TaskMode = schema.new({
            id = id.from(_N, "TaskExecutionListEntry", "TaskMode"),
            type = "string",
            name = "TaskMode",
            target_id = prelude.String.id,
        }),
    },
})

M.ListTaskExecutionsOutput = schema.new({
    id = id.from(_N, "ListTaskExecutionsResponse"),
    type = "structure",
    members = {
        TaskExecutions = schema.new({
            id = id.from(_N, "ListTaskExecutionsOutput", "TaskExecutions"),
            type = "list",
            name = "TaskExecutions",
            target_id = prelude.Document.id,
            list_member = M.TaskExecutionListEntry,
        }),
        NextToken = schema.new({
            id = id.from(_N, "ListTaskExecutionsOutput", "NextToken"),
            type = "string",
            name = "NextToken",
            target_id = prelude.String.id,
        }),
    },
})

M.TaskFilter = schema.new({
    id = id.from(_N, "TaskFilter"),
    type = "structure",
    members = {
        Name = schema.new({
            id = id.from(_N, "TaskFilter", "Name"),
            type = "string",
            name = "Name",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        Values = schema.new({
            id = id.from(_N, "TaskFilter", "Values"),
            type = "list",
            name = "Values",
            target_id = prelude.Document.id,
            list_member = prelude.String,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        Operator = schema.new({
            id = id.from(_N, "TaskFilter", "Operator"),
            type = "string",
            name = "Operator",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.ListTasksInput = schema.new({
    id = id.from(_N, "ListTasksRequest"),
    type = "structure",
    members = {
        MaxResults = schema.new({
            id = id.from(_N, "ListTasksInput", "MaxResults"),
            type = "integer",
            name = "MaxResults",
            target_id = prelude.Integer.id,
        }),
        NextToken = schema.new({
            id = id.from(_N, "ListTasksInput", "NextToken"),
            type = "string",
            name = "NextToken",
            target_id = prelude.String.id,
        }),
        Filters = schema.new({
            id = id.from(_N, "ListTasksInput", "Filters"),
            type = "list",
            name = "Filters",
            target_id = prelude.Document.id,
            list_member = M.TaskFilter,
        }),
    },
})

M.TaskListEntry = schema.new({
    id = id.from(_N, "TaskListEntry"),
    type = "structure",
    members = {
        TaskArn = schema.new({
            id = id.from(_N, "TaskListEntry", "TaskArn"),
            type = "string",
            name = "TaskArn",
            target_id = prelude.String.id,
        }),
        Status = schema.new({
            id = id.from(_N, "TaskListEntry", "Status"),
            type = "string",
            name = "Status",
            target_id = prelude.String.id,
        }),
        Name = schema.new({
            id = id.from(_N, "TaskListEntry", "Name"),
            type = "string",
            name = "Name",
            target_id = prelude.String.id,
        }),
        TaskMode = schema.new({
            id = id.from(_N, "TaskListEntry", "TaskMode"),
            type = "string",
            name = "TaskMode",
            target_id = prelude.String.id,
        }),
    },
})

M.ListTasksOutput = schema.new({
    id = id.from(_N, "ListTasksResponse"),
    type = "structure",
    members = {
        Tasks = schema.new({
            id = id.from(_N, "ListTasksOutput", "Tasks"),
            type = "list",
            name = "Tasks",
            target_id = prelude.Document.id,
            list_member = M.TaskListEntry,
        }),
        NextToken = schema.new({
            id = id.from(_N, "ListTasksOutput", "NextToken"),
            type = "string",
            name = "NextToken",
            target_id = prelude.String.id,
        }),
    },
})

M.StartTaskExecutionInput = schema.new({
    id = id.from(_N, "StartTaskExecutionRequest"),
    type = "structure",
    members = {
        TaskArn = schema.new({
            id = id.from(_N, "StartTaskExecutionInput", "TaskArn"),
            type = "string",
            name = "TaskArn",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        OverrideOptions = schema.new({
            id = id.from(_N, "StartTaskExecutionInput", "OverrideOptions"),
            type = "structure",
            name = "OverrideOptions",
            target_id = id.from(_N, "Options"),
            target = M.Options,
        }),
        Includes = schema.new({
            id = id.from(_N, "StartTaskExecutionInput", "Includes"),
            type = "list",
            name = "Includes",
            target_id = prelude.Document.id,
            list_member = M.FilterRule,
        }),
        Excludes = schema.new({
            id = id.from(_N, "StartTaskExecutionInput", "Excludes"),
            type = "list",
            name = "Excludes",
            target_id = prelude.Document.id,
            list_member = M.FilterRule,
        }),
        ManifestConfig = schema.new({
            id = id.from(_N, "StartTaskExecutionInput", "ManifestConfig"),
            type = "structure",
            name = "ManifestConfig",
            target_id = id.from(_N, "ManifestConfig"),
            target = M.ManifestConfig,
        }),
        TaskReportConfig = schema.new({
            id = id.from(_N, "StartTaskExecutionInput", "TaskReportConfig"),
            type = "structure",
            name = "TaskReportConfig",
            target_id = id.from(_N, "TaskReportConfig"),
            target = M.TaskReportConfig,
        }),
        Tags = schema.new({
            id = id.from(_N, "StartTaskExecutionInput", "Tags"),
            type = "list",
            name = "Tags",
            target_id = prelude.Document.id,
            list_member = M.TagListEntry,
        }),
    },
})

M.StartTaskExecutionOutput = schema.new({
    id = id.from(_N, "StartTaskExecutionResponse"),
    type = "structure",
    members = {
        TaskExecutionArn = schema.new({
            id = id.from(_N, "StartTaskExecutionOutput", "TaskExecutionArn"),
            type = "string",
            name = "TaskExecutionArn",
            target_id = prelude.String.id,
        }),
    },
})

M.TagResourceInput = schema.new({
    id = id.from(_N, "TagResourceRequest"),
    type = "structure",
    members = {
        ResourceArn = schema.new({
            id = id.from(_N, "TagResourceInput", "ResourceArn"),
            type = "string",
            name = "ResourceArn",
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
            list_member = M.TagListEntry,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.TagResourceOutput = schema.new({
    id = id.from(_N, "TagResourceResponse"),
    type = "structure",
})

M.UntagResourceInput = schema.new({
    id = id.from(_N, "UntagResourceRequest"),
    type = "structure",
    members = {
        ResourceArn = schema.new({
            id = id.from(_N, "UntagResourceInput", "ResourceArn"),
            type = "string",
            name = "ResourceArn",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        Keys = schema.new({
            id = id.from(_N, "UntagResourceInput", "Keys"),
            type = "list",
            name = "Keys",
            target_id = prelude.Document.id,
            list_member = prelude.String,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.UntagResourceOutput = schema.new({
    id = id.from(_N, "UntagResourceResponse"),
    type = "structure",
})

M.UpdateAgentInput = schema.new({
    id = id.from(_N, "UpdateAgentRequest"),
    type = "structure",
    members = {
        AgentArn = schema.new({
            id = id.from(_N, "UpdateAgentInput", "AgentArn"),
            type = "string",
            name = "AgentArn",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        Name = schema.new({
            id = id.from(_N, "UpdateAgentInput", "Name"),
            type = "string",
            name = "Name",
            target_id = prelude.String.id,
        }),
    },
})

M.UpdateAgentOutput = schema.new({
    id = id.from(_N, "UpdateAgentResponse"),
    type = "structure",
})

M.UpdateLocationAzureBlobInput = schema.new({
    id = id.from(_N, "UpdateLocationAzureBlobRequest"),
    type = "structure",
    members = {
        LocationArn = schema.new({
            id = id.from(_N, "UpdateLocationAzureBlobInput", "LocationArn"),
            type = "string",
            name = "LocationArn",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        Subdirectory = schema.new({
            id = id.from(_N, "UpdateLocationAzureBlobInput", "Subdirectory"),
            type = "string",
            name = "Subdirectory",
            target_id = prelude.String.id,
        }),
        AuthenticationType = schema.new({
            id = id.from(_N, "UpdateLocationAzureBlobInput", "AuthenticationType"),
            type = "string",
            name = "AuthenticationType",
            target_id = prelude.String.id,
        }),
        SasConfiguration = schema.new({
            id = id.from(_N, "UpdateLocationAzureBlobInput", "SasConfiguration"),
            type = "structure",
            name = "SasConfiguration",
            target_id = id.from(_N, "AzureBlobSasConfiguration"),
            target = M.AzureBlobSasConfiguration,
        }),
        BlobType = schema.new({
            id = id.from(_N, "UpdateLocationAzureBlobInput", "BlobType"),
            type = "string",
            name = "BlobType",
            target_id = prelude.String.id,
        }),
        AccessTier = schema.new({
            id = id.from(_N, "UpdateLocationAzureBlobInput", "AccessTier"),
            type = "string",
            name = "AccessTier",
            target_id = prelude.String.id,
        }),
        AgentArns = schema.new({
            id = id.from(_N, "UpdateLocationAzureBlobInput", "AgentArns"),
            type = "list",
            name = "AgentArns",
            target_id = prelude.Document.id,
            list_member = prelude.String,
        }),
        CmkSecretConfig = schema.new({
            id = id.from(_N, "UpdateLocationAzureBlobInput", "CmkSecretConfig"),
            type = "structure",
            name = "CmkSecretConfig",
            target_id = id.from(_N, "CmkSecretConfig"),
            target = M.CmkSecretConfig,
        }),
        CustomSecretConfig = schema.new({
            id = id.from(_N, "UpdateLocationAzureBlobInput", "CustomSecretConfig"),
            type = "structure",
            name = "CustomSecretConfig",
            target_id = id.from(_N, "CustomSecretConfig"),
            target = M.CustomSecretConfig,
        }),
    },
})

M.UpdateLocationAzureBlobOutput = schema.new({
    id = id.from(_N, "UpdateLocationAzureBlobResponse"),
    type = "structure",
})

M.UpdateLocationEfsInput = schema.new({
    id = id.from(_N, "UpdateLocationEfsRequest"),
    type = "structure",
    members = {
        LocationArn = schema.new({
            id = id.from(_N, "UpdateLocationEfsInput", "LocationArn"),
            type = "string",
            name = "LocationArn",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        Subdirectory = schema.new({
            id = id.from(_N, "UpdateLocationEfsInput", "Subdirectory"),
            type = "string",
            name = "Subdirectory",
            target_id = prelude.String.id,
        }),
        AccessPointArn = schema.new({
            id = id.from(_N, "UpdateLocationEfsInput", "AccessPointArn"),
            type = "string",
            name = "AccessPointArn",
            target_id = prelude.String.id,
        }),
        FileSystemAccessRoleArn = schema.new({
            id = id.from(_N, "UpdateLocationEfsInput", "FileSystemAccessRoleArn"),
            type = "string",
            name = "FileSystemAccessRoleArn",
            target_id = prelude.String.id,
        }),
        InTransitEncryption = schema.new({
            id = id.from(_N, "UpdateLocationEfsInput", "InTransitEncryption"),
            type = "string",
            name = "InTransitEncryption",
            target_id = prelude.String.id,
        }),
    },
})

M.UpdateLocationEfsOutput = schema.new({
    id = id.from(_N, "UpdateLocationEfsResponse"),
    type = "structure",
})

M.UpdateLocationFsxLustreInput = schema.new({
    id = id.from(_N, "UpdateLocationFsxLustreRequest"),
    type = "structure",
    members = {
        LocationArn = schema.new({
            id = id.from(_N, "UpdateLocationFsxLustreInput", "LocationArn"),
            type = "string",
            name = "LocationArn",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        Subdirectory = schema.new({
            id = id.from(_N, "UpdateLocationFsxLustreInput", "Subdirectory"),
            type = "string",
            name = "Subdirectory",
            target_id = prelude.String.id,
        }),
    },
})

M.UpdateLocationFsxLustreOutput = schema.new({
    id = id.from(_N, "UpdateLocationFsxLustreResponse"),
    type = "structure",
})

M.FsxUpdateProtocolSmb = schema.new({
    id = id.from(_N, "FsxUpdateProtocolSmb"),
    type = "structure",
    members = {
        Domain = schema.new({
            id = id.from(_N, "FsxUpdateProtocolSmb", "Domain"),
            type = "string",
            name = "Domain",
            target_id = prelude.String.id,
        }),
        MountOptions = schema.new({
            id = id.from(_N, "FsxUpdateProtocolSmb", "MountOptions"),
            type = "structure",
            name = "MountOptions",
            target_id = id.from(_N, "SmbMountOptions"),
            target = M.SmbMountOptions,
        }),
        Password = schema.new({
            id = id.from(_N, "FsxUpdateProtocolSmb", "Password"),
            type = "string",
            name = "Password",
            target_id = prelude.String.id,
        }),
        User = schema.new({
            id = id.from(_N, "FsxUpdateProtocolSmb", "User"),
            type = "string",
            name = "User",
            target_id = prelude.String.id,
        }),
        CmkSecretConfig = schema.new({
            id = id.from(_N, "FsxUpdateProtocolSmb", "CmkSecretConfig"),
            type = "structure",
            name = "CmkSecretConfig",
            target_id = id.from(_N, "CmkSecretConfig"),
            target = M.CmkSecretConfig,
        }),
        CustomSecretConfig = schema.new({
            id = id.from(_N, "FsxUpdateProtocolSmb", "CustomSecretConfig"),
            type = "structure",
            name = "CustomSecretConfig",
            target_id = id.from(_N, "CustomSecretConfig"),
            target = M.CustomSecretConfig,
        }),
    },
})

M.FsxUpdateProtocol = schema.new({
    id = id.from(_N, "FsxUpdateProtocol"),
    type = "structure",
    members = {
        NFS = schema.new({
            id = id.from(_N, "FsxUpdateProtocol", "NFS"),
            type = "structure",
            name = "NFS",
            target_id = id.from(_N, "FsxProtocolNfs"),
            target = M.FsxProtocolNfs,
        }),
        SMB = schema.new({
            id = id.from(_N, "FsxUpdateProtocol", "SMB"),
            type = "structure",
            name = "SMB",
            target_id = id.from(_N, "FsxUpdateProtocolSmb"),
            target = M.FsxUpdateProtocolSmb,
        }),
    },
})

M.UpdateLocationFsxOntapInput = schema.new({
    id = id.from(_N, "UpdateLocationFsxOntapRequest"),
    type = "structure",
    members = {
        LocationArn = schema.new({
            id = id.from(_N, "UpdateLocationFsxOntapInput", "LocationArn"),
            type = "string",
            name = "LocationArn",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        Protocol = schema.new({
            id = id.from(_N, "UpdateLocationFsxOntapInput", "Protocol"),
            type = "structure",
            name = "Protocol",
            target_id = id.from(_N, "FsxUpdateProtocol"),
            target = M.FsxUpdateProtocol,
        }),
        Subdirectory = schema.new({
            id = id.from(_N, "UpdateLocationFsxOntapInput", "Subdirectory"),
            type = "string",
            name = "Subdirectory",
            target_id = prelude.String.id,
        }),
    },
})

M.UpdateLocationFsxOntapOutput = schema.new({
    id = id.from(_N, "UpdateLocationFsxOntapResponse"),
    type = "structure",
})

M.UpdateLocationFsxOpenZfsInput = schema.new({
    id = id.from(_N, "UpdateLocationFsxOpenZfsRequest"),
    type = "structure",
    members = {
        LocationArn = schema.new({
            id = id.from(_N, "UpdateLocationFsxOpenZfsInput", "LocationArn"),
            type = "string",
            name = "LocationArn",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        Protocol = schema.new({
            id = id.from(_N, "UpdateLocationFsxOpenZfsInput", "Protocol"),
            type = "structure",
            name = "Protocol",
            target_id = id.from(_N, "FsxProtocol"),
            target = M.FsxProtocol,
        }),
        Subdirectory = schema.new({
            id = id.from(_N, "UpdateLocationFsxOpenZfsInput", "Subdirectory"),
            type = "string",
            name = "Subdirectory",
            target_id = prelude.String.id,
        }),
    },
})

M.UpdateLocationFsxOpenZfsOutput = schema.new({
    id = id.from(_N, "UpdateLocationFsxOpenZfsResponse"),
    type = "structure",
})

M.UpdateLocationFsxWindowsInput = schema.new({
    id = id.from(_N, "UpdateLocationFsxWindowsRequest"),
    type = "structure",
    members = {
        LocationArn = schema.new({
            id = id.from(_N, "UpdateLocationFsxWindowsInput", "LocationArn"),
            type = "string",
            name = "LocationArn",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        Subdirectory = schema.new({
            id = id.from(_N, "UpdateLocationFsxWindowsInput", "Subdirectory"),
            type = "string",
            name = "Subdirectory",
            target_id = prelude.String.id,
        }),
        Domain = schema.new({
            id = id.from(_N, "UpdateLocationFsxWindowsInput", "Domain"),
            type = "string",
            name = "Domain",
            target_id = prelude.String.id,
        }),
        User = schema.new({
            id = id.from(_N, "UpdateLocationFsxWindowsInput", "User"),
            type = "string",
            name = "User",
            target_id = prelude.String.id,
        }),
        Password = schema.new({
            id = id.from(_N, "UpdateLocationFsxWindowsInput", "Password"),
            type = "string",
            name = "Password",
            target_id = prelude.String.id,
        }),
        CmkSecretConfig = schema.new({
            id = id.from(_N, "UpdateLocationFsxWindowsInput", "CmkSecretConfig"),
            type = "structure",
            name = "CmkSecretConfig",
            target_id = id.from(_N, "CmkSecretConfig"),
            target = M.CmkSecretConfig,
        }),
        CustomSecretConfig = schema.new({
            id = id.from(_N, "UpdateLocationFsxWindowsInput", "CustomSecretConfig"),
            type = "structure",
            name = "CustomSecretConfig",
            target_id = id.from(_N, "CustomSecretConfig"),
            target = M.CustomSecretConfig,
        }),
    },
})

M.UpdateLocationFsxWindowsOutput = schema.new({
    id = id.from(_N, "UpdateLocationFsxWindowsResponse"),
    type = "structure",
})

M.UpdateLocationHdfsInput = schema.new({
    id = id.from(_N, "UpdateLocationHdfsRequest"),
    type = "structure",
    members = {
        LocationArn = schema.new({
            id = id.from(_N, "UpdateLocationHdfsInput", "LocationArn"),
            type = "string",
            name = "LocationArn",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        Subdirectory = schema.new({
            id = id.from(_N, "UpdateLocationHdfsInput", "Subdirectory"),
            type = "string",
            name = "Subdirectory",
            target_id = prelude.String.id,
        }),
        NameNodes = schema.new({
            id = id.from(_N, "UpdateLocationHdfsInput", "NameNodes"),
            type = "list",
            name = "NameNodes",
            target_id = prelude.Document.id,
            list_member = M.HdfsNameNode,
        }),
        BlockSize = schema.new({
            id = id.from(_N, "UpdateLocationHdfsInput", "BlockSize"),
            type = "integer",
            name = "BlockSize",
            target_id = prelude.Integer.id,
        }),
        ReplicationFactor = schema.new({
            id = id.from(_N, "UpdateLocationHdfsInput", "ReplicationFactor"),
            type = "integer",
            name = "ReplicationFactor",
            target_id = prelude.Integer.id,
        }),
        KmsKeyProviderUri = schema.new({
            id = id.from(_N, "UpdateLocationHdfsInput", "KmsKeyProviderUri"),
            type = "string",
            name = "KmsKeyProviderUri",
            target_id = prelude.String.id,
        }),
        QopConfiguration = schema.new({
            id = id.from(_N, "UpdateLocationHdfsInput", "QopConfiguration"),
            type = "structure",
            name = "QopConfiguration",
            target_id = id.from(_N, "QopConfiguration"),
            target = M.QopConfiguration,
        }),
        AuthenticationType = schema.new({
            id = id.from(_N, "UpdateLocationHdfsInput", "AuthenticationType"),
            type = "string",
            name = "AuthenticationType",
            target_id = prelude.String.id,
        }),
        SimpleUser = schema.new({
            id = id.from(_N, "UpdateLocationHdfsInput", "SimpleUser"),
            type = "string",
            name = "SimpleUser",
            target_id = prelude.String.id,
        }),
        KerberosPrincipal = schema.new({
            id = id.from(_N, "UpdateLocationHdfsInput", "KerberosPrincipal"),
            type = "string",
            name = "KerberosPrincipal",
            target_id = prelude.String.id,
        }),
        KerberosKeytab = schema.new({
            id = id.from(_N, "UpdateLocationHdfsInput", "KerberosKeytab"),
            type = "blob",
            name = "KerberosKeytab",
            target_id = prelude.Blob.id,
        }),
        KerberosKrb5Conf = schema.new({
            id = id.from(_N, "UpdateLocationHdfsInput", "KerberosKrb5Conf"),
            type = "blob",
            name = "KerberosKrb5Conf",
            target_id = prelude.Blob.id,
        }),
        AgentArns = schema.new({
            id = id.from(_N, "UpdateLocationHdfsInput", "AgentArns"),
            type = "list",
            name = "AgentArns",
            target_id = prelude.Document.id,
            list_member = prelude.String,
        }),
        CmkSecretConfig = schema.new({
            id = id.from(_N, "UpdateLocationHdfsInput", "CmkSecretConfig"),
            type = "structure",
            name = "CmkSecretConfig",
            target_id = id.from(_N, "CmkSecretConfig"),
            target = M.CmkSecretConfig,
        }),
        CustomSecretConfig = schema.new({
            id = id.from(_N, "UpdateLocationHdfsInput", "CustomSecretConfig"),
            type = "structure",
            name = "CustomSecretConfig",
            target_id = id.from(_N, "CustomSecretConfig"),
            target = M.CustomSecretConfig,
        }),
    },
})

M.UpdateLocationHdfsOutput = schema.new({
    id = id.from(_N, "UpdateLocationHdfsResponse"),
    type = "structure",
})

M.UpdateLocationNfsInput = schema.new({
    id = id.from(_N, "UpdateLocationNfsRequest"),
    type = "structure",
    members = {
        LocationArn = schema.new({
            id = id.from(_N, "UpdateLocationNfsInput", "LocationArn"),
            type = "string",
            name = "LocationArn",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        Subdirectory = schema.new({
            id = id.from(_N, "UpdateLocationNfsInput", "Subdirectory"),
            type = "string",
            name = "Subdirectory",
            target_id = prelude.String.id,
        }),
        ServerHostname = schema.new({
            id = id.from(_N, "UpdateLocationNfsInput", "ServerHostname"),
            type = "string",
            name = "ServerHostname",
            target_id = prelude.String.id,
        }),
        OnPremConfig = schema.new({
            id = id.from(_N, "UpdateLocationNfsInput", "OnPremConfig"),
            type = "structure",
            name = "OnPremConfig",
            target_id = id.from(_N, "OnPremConfig"),
            target = M.OnPremConfig,
        }),
        MountOptions = schema.new({
            id = id.from(_N, "UpdateLocationNfsInput", "MountOptions"),
            type = "structure",
            name = "MountOptions",
            target_id = id.from(_N, "NfsMountOptions"),
            target = M.NfsMountOptions,
        }),
    },
})

M.UpdateLocationNfsOutput = schema.new({
    id = id.from(_N, "UpdateLocationNfsResponse"),
    type = "structure",
})

M.UpdateLocationObjectStorageInput = schema.new({
    id = id.from(_N, "UpdateLocationObjectStorageRequest"),
    type = "structure",
    members = {
        LocationArn = schema.new({
            id = id.from(_N, "UpdateLocationObjectStorageInput", "LocationArn"),
            type = "string",
            name = "LocationArn",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        ServerPort = schema.new({
            id = id.from(_N, "UpdateLocationObjectStorageInput", "ServerPort"),
            type = "integer",
            name = "ServerPort",
            target_id = prelude.Integer.id,
        }),
        ServerProtocol = schema.new({
            id = id.from(_N, "UpdateLocationObjectStorageInput", "ServerProtocol"),
            type = "string",
            name = "ServerProtocol",
            target_id = prelude.String.id,
        }),
        Subdirectory = schema.new({
            id = id.from(_N, "UpdateLocationObjectStorageInput", "Subdirectory"),
            type = "string",
            name = "Subdirectory",
            target_id = prelude.String.id,
        }),
        ServerHostname = schema.new({
            id = id.from(_N, "UpdateLocationObjectStorageInput", "ServerHostname"),
            type = "string",
            name = "ServerHostname",
            target_id = prelude.String.id,
        }),
        AccessKey = schema.new({
            id = id.from(_N, "UpdateLocationObjectStorageInput", "AccessKey"),
            type = "string",
            name = "AccessKey",
            target_id = prelude.String.id,
        }),
        SecretKey = schema.new({
            id = id.from(_N, "UpdateLocationObjectStorageInput", "SecretKey"),
            type = "string",
            name = "SecretKey",
            target_id = prelude.String.id,
        }),
        AgentArns = schema.new({
            id = id.from(_N, "UpdateLocationObjectStorageInput", "AgentArns"),
            type = "list",
            name = "AgentArns",
            target_id = prelude.Document.id,
            list_member = prelude.String,
        }),
        ServerCertificate = schema.new({
            id = id.from(_N, "UpdateLocationObjectStorageInput", "ServerCertificate"),
            type = "blob",
            name = "ServerCertificate",
            target_id = prelude.Blob.id,
        }),
        CmkSecretConfig = schema.new({
            id = id.from(_N, "UpdateLocationObjectStorageInput", "CmkSecretConfig"),
            type = "structure",
            name = "CmkSecretConfig",
            target_id = id.from(_N, "CmkSecretConfig"),
            target = M.CmkSecretConfig,
        }),
        CustomSecretConfig = schema.new({
            id = id.from(_N, "UpdateLocationObjectStorageInput", "CustomSecretConfig"),
            type = "structure",
            name = "CustomSecretConfig",
            target_id = id.from(_N, "CustomSecretConfig"),
            target = M.CustomSecretConfig,
        }),
    },
})

M.UpdateLocationObjectStorageOutput = schema.new({
    id = id.from(_N, "UpdateLocationObjectStorageResponse"),
    type = "structure",
})

M.UpdateLocationS3Input = schema.new({
    id = id.from(_N, "UpdateLocationS3Request"),
    type = "structure",
    members = {
        LocationArn = schema.new({
            id = id.from(_N, "UpdateLocationS3Input", "LocationArn"),
            type = "string",
            name = "LocationArn",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        Subdirectory = schema.new({
            id = id.from(_N, "UpdateLocationS3Input", "Subdirectory"),
            type = "string",
            name = "Subdirectory",
            target_id = prelude.String.id,
        }),
        S3StorageClass = schema.new({
            id = id.from(_N, "UpdateLocationS3Input", "S3StorageClass"),
            type = "string",
            name = "S3StorageClass",
            target_id = prelude.String.id,
        }),
        S3Config = schema.new({
            id = id.from(_N, "UpdateLocationS3Input", "S3Config"),
            type = "structure",
            name = "S3Config",
            target_id = id.from(_N, "S3Config"),
            target = M.S3Config,
        }),
    },
})

M.UpdateLocationS3Output = schema.new({
    id = id.from(_N, "UpdateLocationS3Response"),
    type = "structure",
})

M.UpdateLocationSmbInput = schema.new({
    id = id.from(_N, "UpdateLocationSmbRequest"),
    type = "structure",
    members = {
        LocationArn = schema.new({
            id = id.from(_N, "UpdateLocationSmbInput", "LocationArn"),
            type = "string",
            name = "LocationArn",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        Subdirectory = schema.new({
            id = id.from(_N, "UpdateLocationSmbInput", "Subdirectory"),
            type = "string",
            name = "Subdirectory",
            target_id = prelude.String.id,
        }),
        ServerHostname = schema.new({
            id = id.from(_N, "UpdateLocationSmbInput", "ServerHostname"),
            type = "string",
            name = "ServerHostname",
            target_id = prelude.String.id,
        }),
        User = schema.new({
            id = id.from(_N, "UpdateLocationSmbInput", "User"),
            type = "string",
            name = "User",
            target_id = prelude.String.id,
        }),
        Domain = schema.new({
            id = id.from(_N, "UpdateLocationSmbInput", "Domain"),
            type = "string",
            name = "Domain",
            target_id = prelude.String.id,
        }),
        Password = schema.new({
            id = id.from(_N, "UpdateLocationSmbInput", "Password"),
            type = "string",
            name = "Password",
            target_id = prelude.String.id,
        }),
        CmkSecretConfig = schema.new({
            id = id.from(_N, "UpdateLocationSmbInput", "CmkSecretConfig"),
            type = "structure",
            name = "CmkSecretConfig",
            target_id = id.from(_N, "CmkSecretConfig"),
            target = M.CmkSecretConfig,
        }),
        CustomSecretConfig = schema.new({
            id = id.from(_N, "UpdateLocationSmbInput", "CustomSecretConfig"),
            type = "structure",
            name = "CustomSecretConfig",
            target_id = id.from(_N, "CustomSecretConfig"),
            target = M.CustomSecretConfig,
        }),
        AgentArns = schema.new({
            id = id.from(_N, "UpdateLocationSmbInput", "AgentArns"),
            type = "list",
            name = "AgentArns",
            target_id = prelude.Document.id,
            list_member = prelude.String,
        }),
        MountOptions = schema.new({
            id = id.from(_N, "UpdateLocationSmbInput", "MountOptions"),
            type = "structure",
            name = "MountOptions",
            target_id = id.from(_N, "SmbMountOptions"),
            target = M.SmbMountOptions,
        }),
        AuthenticationType = schema.new({
            id = id.from(_N, "UpdateLocationSmbInput", "AuthenticationType"),
            type = "string",
            name = "AuthenticationType",
            target_id = prelude.String.id,
        }),
        DnsIpAddresses = schema.new({
            id = id.from(_N, "UpdateLocationSmbInput", "DnsIpAddresses"),
            type = "list",
            name = "DnsIpAddresses",
            target_id = prelude.Document.id,
            list_member = prelude.String,
        }),
        KerberosPrincipal = schema.new({
            id = id.from(_N, "UpdateLocationSmbInput", "KerberosPrincipal"),
            type = "string",
            name = "KerberosPrincipal",
            target_id = prelude.String.id,
        }),
        KerberosKeytab = schema.new({
            id = id.from(_N, "UpdateLocationSmbInput", "KerberosKeytab"),
            type = "blob",
            name = "KerberosKeytab",
            target_id = prelude.Blob.id,
        }),
        KerberosKrb5Conf = schema.new({
            id = id.from(_N, "UpdateLocationSmbInput", "KerberosKrb5Conf"),
            type = "blob",
            name = "KerberosKrb5Conf",
            target_id = prelude.Blob.id,
        }),
    },
})

M.UpdateLocationSmbOutput = schema.new({
    id = id.from(_N, "UpdateLocationSmbResponse"),
    type = "structure",
})

M.UpdateTaskInput = schema.new({
    id = id.from(_N, "UpdateTaskRequest"),
    type = "structure",
    members = {
        TaskArn = schema.new({
            id = id.from(_N, "UpdateTaskInput", "TaskArn"),
            type = "string",
            name = "TaskArn",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        Options = schema.new({
            id = id.from(_N, "UpdateTaskInput", "Options"),
            type = "structure",
            name = "Options",
            target_id = id.from(_N, "Options"),
            target = M.Options,
        }),
        Excludes = schema.new({
            id = id.from(_N, "UpdateTaskInput", "Excludes"),
            type = "list",
            name = "Excludes",
            target_id = prelude.Document.id,
            list_member = M.FilterRule,
        }),
        Schedule = schema.new({
            id = id.from(_N, "UpdateTaskInput", "Schedule"),
            type = "structure",
            name = "Schedule",
            target_id = id.from(_N, "TaskSchedule"),
            target = M.TaskSchedule,
        }),
        Name = schema.new({
            id = id.from(_N, "UpdateTaskInput", "Name"),
            type = "string",
            name = "Name",
            target_id = prelude.String.id,
        }),
        CloudWatchLogGroupArn = schema.new({
            id = id.from(_N, "UpdateTaskInput", "CloudWatchLogGroupArn"),
            type = "string",
            name = "CloudWatchLogGroupArn",
            target_id = prelude.String.id,
        }),
        Includes = schema.new({
            id = id.from(_N, "UpdateTaskInput", "Includes"),
            type = "list",
            name = "Includes",
            target_id = prelude.Document.id,
            list_member = M.FilterRule,
        }),
        ManifestConfig = schema.new({
            id = id.from(_N, "UpdateTaskInput", "ManifestConfig"),
            type = "structure",
            name = "ManifestConfig",
            target_id = id.from(_N, "ManifestConfig"),
            target = M.ManifestConfig,
        }),
        TaskReportConfig = schema.new({
            id = id.from(_N, "UpdateTaskInput", "TaskReportConfig"),
            type = "structure",
            name = "TaskReportConfig",
            target_id = id.from(_N, "TaskReportConfig"),
            target = M.TaskReportConfig,
        }),
    },
})

M.UpdateTaskOutput = schema.new({
    id = id.from(_N, "UpdateTaskResponse"),
    type = "structure",
})

M.UpdateTaskExecutionInput = schema.new({
    id = id.from(_N, "UpdateTaskExecutionRequest"),
    type = "structure",
    members = {
        TaskExecutionArn = schema.new({
            id = id.from(_N, "UpdateTaskExecutionInput", "TaskExecutionArn"),
            type = "string",
            name = "TaskExecutionArn",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        Options = schema.new({
            id = id.from(_N, "UpdateTaskExecutionInput", "Options"),
            type = "structure",
            name = "Options",
            target_id = id.from(_N, "Options"),
            target = M.Options,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.UpdateTaskExecutionOutput = schema.new({
    id = id.from(_N, "UpdateTaskExecutionResponse"),
    type = "structure",
})

-- Fix forward references for recursive schemas
for _, s in pairs(M) do
    if type(s) == "table" and (s.type == "structure" or s.type == "union") then
        local members = rawget(s, "_members")
        if members then
            for _, ms in pairs(members) do
                if (ms.type == "structure" or ms.type == "union") and not rawget(ms, "_target") and ms.target_id then
                    rawset(ms, "_target", M[ms.target_id.name])
                end
            end
        end
    end
end

return M
