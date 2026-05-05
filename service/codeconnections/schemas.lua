local id = require("smithy.shape_id")
local schema = require("smithy.schema")
local prelude = require("smithy.prelude")
local traits = require("smithy.traits")

local _N = "com.amazonaws.codeconnections"

local M = {}

M.AccessDeniedException = schema.new({
    id = id.from(_N, "AccessDeniedException"),
    type = "structure",
    traits = {
        [traits.ERROR] = { value = "client" },
    },
    members = {
        Message = schema.new({
            id = id.from(_N, "AccessDeniedException", "Message"),
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
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.CreateConnectionInput = schema.new({
    id = id.from(_N, "CreateConnectionInput"),
    type = "structure",
    members = {
        ProviderType = schema.new({
            id = id.from(_N, "CreateConnectionInput", "ProviderType"),
            type = "string",
            name = "ProviderType",
            target_id = prelude.String.id,
        }),
        ConnectionName = schema.new({
            id = id.from(_N, "CreateConnectionInput", "ConnectionName"),
            type = "string",
            name = "ConnectionName",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        Tags = schema.new({
            id = id.from(_N, "CreateConnectionInput", "Tags"),
            type = "list",
            name = "Tags",
            target_id = prelude.Document.id,
            list_member = M.Tag,
        }),
        HostArn = schema.new({
            id = id.from(_N, "CreateConnectionInput", "HostArn"),
            type = "string",
            name = "HostArn",
            target_id = prelude.String.id,
        }),
    },
})

M.CreateConnectionOutput = schema.new({
    id = id.from(_N, "CreateConnectionOutput"),
    type = "structure",
    members = {
        ConnectionArn = schema.new({
            id = id.from(_N, "CreateConnectionOutput", "ConnectionArn"),
            type = "string",
            name = "ConnectionArn",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        Tags = schema.new({
            id = id.from(_N, "CreateConnectionOutput", "Tags"),
            type = "list",
            name = "Tags",
            target_id = prelude.Document.id,
            list_member = M.Tag,
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

M.ResourceNotFoundException = schema.new({
    id = id.from(_N, "ResourceNotFoundException"),
    type = "structure",
    traits = {
        [traits.ERROR] = { value = "client" },
    },
    members = {
        Message = schema.new({
            id = id.from(_N, "ResourceNotFoundException", "Message"),
            type = "string",
            name = "Message",
            target_id = prelude.String.id,
        }),
    },
})

M.ResourceUnavailableException = schema.new({
    id = id.from(_N, "ResourceUnavailableException"),
    type = "structure",
    traits = {
        [traits.ERROR] = { value = "client" },
    },
    members = {
        Message = schema.new({
            id = id.from(_N, "ResourceUnavailableException", "Message"),
            type = "string",
            name = "Message",
            target_id = prelude.String.id,
        }),
    },
})

M.VpcConfiguration = schema.new({
    id = id.from(_N, "VpcConfiguration"),
    type = "structure",
    members = {
        VpcId = schema.new({
            id = id.from(_N, "VpcConfiguration", "VpcId"),
            type = "string",
            name = "VpcId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        SubnetIds = schema.new({
            id = id.from(_N, "VpcConfiguration", "SubnetIds"),
            type = "list",
            name = "SubnetIds",
            target_id = prelude.Document.id,
            list_member = prelude.String,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        SecurityGroupIds = schema.new({
            id = id.from(_N, "VpcConfiguration", "SecurityGroupIds"),
            type = "list",
            name = "SecurityGroupIds",
            target_id = prelude.Document.id,
            list_member = prelude.String,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        TlsCertificate = schema.new({
            id = id.from(_N, "VpcConfiguration", "TlsCertificate"),
            type = "string",
            name = "TlsCertificate",
            target_id = prelude.String.id,
        }),
    },
})

M.CreateHostInput = schema.new({
    id = id.from(_N, "CreateHostInput"),
    type = "structure",
    members = {
        Name = schema.new({
            id = id.from(_N, "CreateHostInput", "Name"),
            type = "string",
            name = "Name",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        ProviderType = schema.new({
            id = id.from(_N, "CreateHostInput", "ProviderType"),
            type = "string",
            name = "ProviderType",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        ProviderEndpoint = schema.new({
            id = id.from(_N, "CreateHostInput", "ProviderEndpoint"),
            type = "string",
            name = "ProviderEndpoint",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        VpcConfiguration = schema.new({
            id = id.from(_N, "CreateHostInput", "VpcConfiguration"),
            type = "structure",
            name = "VpcConfiguration",
            target_id = id.from(_N, "VpcConfiguration"),
            target = M.VpcConfiguration,
        }),
        Tags = schema.new({
            id = id.from(_N, "CreateHostInput", "Tags"),
            type = "list",
            name = "Tags",
            target_id = prelude.Document.id,
            list_member = M.Tag,
        }),
    },
})

M.CreateHostOutput = schema.new({
    id = id.from(_N, "CreateHostOutput"),
    type = "structure",
    members = {
        HostArn = schema.new({
            id = id.from(_N, "CreateHostOutput", "HostArn"),
            type = "string",
            name = "HostArn",
            target_id = prelude.String.id,
        }),
        Tags = schema.new({
            id = id.from(_N, "CreateHostOutput", "Tags"),
            type = "list",
            name = "Tags",
            target_id = prelude.Document.id,
            list_member = M.Tag,
        }),
    },
})

M.ConcurrentModificationException = schema.new({
    id = id.from(_N, "ConcurrentModificationException"),
    type = "structure",
    traits = {
        [traits.ERROR] = { value = "client" },
    },
    members = {
        Message = schema.new({
            id = id.from(_N, "ConcurrentModificationException", "Message"),
            type = "string",
            name = "Message",
            target_id = prelude.String.id,
        }),
    },
})

M.CreateRepositoryLinkInput = schema.new({
    id = id.from(_N, "CreateRepositoryLinkInput"),
    type = "structure",
    members = {
        ConnectionArn = schema.new({
            id = id.from(_N, "CreateRepositoryLinkInput", "ConnectionArn"),
            type = "string",
            name = "ConnectionArn",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        OwnerId = schema.new({
            id = id.from(_N, "CreateRepositoryLinkInput", "OwnerId"),
            type = "string",
            name = "OwnerId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        RepositoryName = schema.new({
            id = id.from(_N, "CreateRepositoryLinkInput", "RepositoryName"),
            type = "string",
            name = "RepositoryName",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        EncryptionKeyArn = schema.new({
            id = id.from(_N, "CreateRepositoryLinkInput", "EncryptionKeyArn"),
            type = "string",
            name = "EncryptionKeyArn",
            target_id = prelude.String.id,
        }),
        Tags = schema.new({
            id = id.from(_N, "CreateRepositoryLinkInput", "Tags"),
            type = "list",
            name = "Tags",
            target_id = prelude.Document.id,
            list_member = M.Tag,
        }),
    },
})

M.RepositoryLinkInfo = schema.new({
    id = id.from(_N, "RepositoryLinkInfo"),
    type = "structure",
    members = {
        ConnectionArn = schema.new({
            id = id.from(_N, "RepositoryLinkInfo", "ConnectionArn"),
            type = "string",
            name = "ConnectionArn",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        EncryptionKeyArn = schema.new({
            id = id.from(_N, "RepositoryLinkInfo", "EncryptionKeyArn"),
            type = "string",
            name = "EncryptionKeyArn",
            target_id = prelude.String.id,
        }),
        OwnerId = schema.new({
            id = id.from(_N, "RepositoryLinkInfo", "OwnerId"),
            type = "string",
            name = "OwnerId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        ProviderType = schema.new({
            id = id.from(_N, "RepositoryLinkInfo", "ProviderType"),
            type = "string",
            name = "ProviderType",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        RepositoryLinkArn = schema.new({
            id = id.from(_N, "RepositoryLinkInfo", "RepositoryLinkArn"),
            type = "string",
            name = "RepositoryLinkArn",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        RepositoryLinkId = schema.new({
            id = id.from(_N, "RepositoryLinkInfo", "RepositoryLinkId"),
            type = "string",
            name = "RepositoryLinkId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        RepositoryName = schema.new({
            id = id.from(_N, "RepositoryLinkInfo", "RepositoryName"),
            type = "string",
            name = "RepositoryName",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.CreateRepositoryLinkOutput = schema.new({
    id = id.from(_N, "CreateRepositoryLinkOutput"),
    type = "structure",
    members = {
        RepositoryLinkInfo = schema.new({
            id = id.from(_N, "CreateRepositoryLinkOutput", "RepositoryLinkInfo"),
            type = "structure",
            name = "RepositoryLinkInfo",
            target_id = id.from(_N, "RepositoryLinkInfo"),
            target = M.RepositoryLinkInfo,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.InternalServerException = schema.new({
    id = id.from(_N, "InternalServerException"),
    type = "structure",
    traits = {
        [traits.ERROR] = { value = "server" },
    },
    members = {
        Message = schema.new({
            id = id.from(_N, "InternalServerException", "Message"),
            type = "string",
            name = "Message",
            target_id = prelude.String.id,
        }),
    },
})

M.InvalidInputException = schema.new({
    id = id.from(_N, "InvalidInputException"),
    type = "structure",
    traits = {
        [traits.ERROR] = { value = "client" },
    },
    members = {
        Message = schema.new({
            id = id.from(_N, "InvalidInputException", "Message"),
            type = "string",
            name = "Message",
            target_id = prelude.String.id,
        }),
    },
})

M.ResourceAlreadyExistsException = schema.new({
    id = id.from(_N, "ResourceAlreadyExistsException"),
    type = "structure",
    traits = {
        [traits.ERROR] = { value = "client" },
    },
    members = {
        Message = schema.new({
            id = id.from(_N, "ResourceAlreadyExistsException", "Message"),
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
        Message = schema.new({
            id = id.from(_N, "ThrottlingException", "Message"),
            type = "string",
            name = "Message",
            target_id = prelude.String.id,
        }),
    },
})

M.CreateSyncConfigurationInput = schema.new({
    id = id.from(_N, "CreateSyncConfigurationInput"),
    type = "structure",
    members = {
        Branch = schema.new({
            id = id.from(_N, "CreateSyncConfigurationInput", "Branch"),
            type = "string",
            name = "Branch",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        ConfigFile = schema.new({
            id = id.from(_N, "CreateSyncConfigurationInput", "ConfigFile"),
            type = "string",
            name = "ConfigFile",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        RepositoryLinkId = schema.new({
            id = id.from(_N, "CreateSyncConfigurationInput", "RepositoryLinkId"),
            type = "string",
            name = "RepositoryLinkId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        ResourceName = schema.new({
            id = id.from(_N, "CreateSyncConfigurationInput", "ResourceName"),
            type = "string",
            name = "ResourceName",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        RoleArn = schema.new({
            id = id.from(_N, "CreateSyncConfigurationInput", "RoleArn"),
            type = "string",
            name = "RoleArn",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        SyncType = schema.new({
            id = id.from(_N, "CreateSyncConfigurationInput", "SyncType"),
            type = "string",
            name = "SyncType",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        PublishDeploymentStatus = schema.new({
            id = id.from(_N, "CreateSyncConfigurationInput", "PublishDeploymentStatus"),
            type = "string",
            name = "PublishDeploymentStatus",
            target_id = prelude.String.id,
        }),
        TriggerResourceUpdateOn = schema.new({
            id = id.from(_N, "CreateSyncConfigurationInput", "TriggerResourceUpdateOn"),
            type = "string",
            name = "TriggerResourceUpdateOn",
            target_id = prelude.String.id,
        }),
        PullRequestComment = schema.new({
            id = id.from(_N, "CreateSyncConfigurationInput", "PullRequestComment"),
            type = "string",
            name = "PullRequestComment",
            target_id = prelude.String.id,
        }),
    },
})

M.SyncConfiguration = schema.new({
    id = id.from(_N, "SyncConfiguration"),
    type = "structure",
    members = {
        Branch = schema.new({
            id = id.from(_N, "SyncConfiguration", "Branch"),
            type = "string",
            name = "Branch",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        ConfigFile = schema.new({
            id = id.from(_N, "SyncConfiguration", "ConfigFile"),
            type = "string",
            name = "ConfigFile",
            target_id = prelude.String.id,
        }),
        OwnerId = schema.new({
            id = id.from(_N, "SyncConfiguration", "OwnerId"),
            type = "string",
            name = "OwnerId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        ProviderType = schema.new({
            id = id.from(_N, "SyncConfiguration", "ProviderType"),
            type = "string",
            name = "ProviderType",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        RepositoryLinkId = schema.new({
            id = id.from(_N, "SyncConfiguration", "RepositoryLinkId"),
            type = "string",
            name = "RepositoryLinkId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        RepositoryName = schema.new({
            id = id.from(_N, "SyncConfiguration", "RepositoryName"),
            type = "string",
            name = "RepositoryName",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        ResourceName = schema.new({
            id = id.from(_N, "SyncConfiguration", "ResourceName"),
            type = "string",
            name = "ResourceName",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        RoleArn = schema.new({
            id = id.from(_N, "SyncConfiguration", "RoleArn"),
            type = "string",
            name = "RoleArn",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        SyncType = schema.new({
            id = id.from(_N, "SyncConfiguration", "SyncType"),
            type = "string",
            name = "SyncType",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        PublishDeploymentStatus = schema.new({
            id = id.from(_N, "SyncConfiguration", "PublishDeploymentStatus"),
            type = "string",
            name = "PublishDeploymentStatus",
            target_id = prelude.String.id,
        }),
        TriggerResourceUpdateOn = schema.new({
            id = id.from(_N, "SyncConfiguration", "TriggerResourceUpdateOn"),
            type = "string",
            name = "TriggerResourceUpdateOn",
            target_id = prelude.String.id,
        }),
        PullRequestComment = schema.new({
            id = id.from(_N, "SyncConfiguration", "PullRequestComment"),
            type = "string",
            name = "PullRequestComment",
            target_id = prelude.String.id,
        }),
    },
})

M.CreateSyncConfigurationOutput = schema.new({
    id = id.from(_N, "CreateSyncConfigurationOutput"),
    type = "structure",
    members = {
        SyncConfiguration = schema.new({
            id = id.from(_N, "CreateSyncConfigurationOutput", "SyncConfiguration"),
            type = "structure",
            name = "SyncConfiguration",
            target_id = id.from(_N, "SyncConfiguration"),
            target = M.SyncConfiguration,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.DeleteConnectionInput = schema.new({
    id = id.from(_N, "DeleteConnectionInput"),
    type = "structure",
    members = {
        ConnectionArn = schema.new({
            id = id.from(_N, "DeleteConnectionInput", "ConnectionArn"),
            type = "string",
            name = "ConnectionArn",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.DeleteConnectionOutput = schema.new({
    id = id.from(_N, "DeleteConnectionOutput"),
    type = "structure",
})

M.DeleteHostInput = schema.new({
    id = id.from(_N, "DeleteHostInput"),
    type = "structure",
    members = {
        HostArn = schema.new({
            id = id.from(_N, "DeleteHostInput", "HostArn"),
            type = "string",
            name = "HostArn",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.DeleteHostOutput = schema.new({
    id = id.from(_N, "DeleteHostOutput"),
    type = "structure",
})

M.DeleteRepositoryLinkInput = schema.new({
    id = id.from(_N, "DeleteRepositoryLinkInput"),
    type = "structure",
    members = {
        RepositoryLinkId = schema.new({
            id = id.from(_N, "DeleteRepositoryLinkInput", "RepositoryLinkId"),
            type = "string",
            name = "RepositoryLinkId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.DeleteRepositoryLinkOutput = schema.new({
    id = id.from(_N, "DeleteRepositoryLinkOutput"),
    type = "structure",
})

M.SyncConfigurationStillExistsException = schema.new({
    id = id.from(_N, "SyncConfigurationStillExistsException"),
    type = "structure",
    traits = {
        [traits.ERROR] = { value = "client" },
    },
    members = {
        Message = schema.new({
            id = id.from(_N, "SyncConfigurationStillExistsException", "Message"),
            type = "string",
            name = "Message",
            target_id = prelude.String.id,
        }),
    },
})

M.UnsupportedProviderTypeException = schema.new({
    id = id.from(_N, "UnsupportedProviderTypeException"),
    type = "structure",
    traits = {
        [traits.ERROR] = { value = "client" },
    },
    members = {
        Message = schema.new({
            id = id.from(_N, "UnsupportedProviderTypeException", "Message"),
            type = "string",
            name = "Message",
            target_id = prelude.String.id,
        }),
    },
})

M.DeleteSyncConfigurationInput = schema.new({
    id = id.from(_N, "DeleteSyncConfigurationInput"),
    type = "structure",
    members = {
        SyncType = schema.new({
            id = id.from(_N, "DeleteSyncConfigurationInput", "SyncType"),
            type = "string",
            name = "SyncType",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        ResourceName = schema.new({
            id = id.from(_N, "DeleteSyncConfigurationInput", "ResourceName"),
            type = "string",
            name = "ResourceName",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.DeleteSyncConfigurationOutput = schema.new({
    id = id.from(_N, "DeleteSyncConfigurationOutput"),
    type = "structure",
})

M.GetConnectionInput = schema.new({
    id = id.from(_N, "GetConnectionInput"),
    type = "structure",
    members = {
        ConnectionArn = schema.new({
            id = id.from(_N, "GetConnectionInput", "ConnectionArn"),
            type = "string",
            name = "ConnectionArn",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.Connection = schema.new({
    id = id.from(_N, "Connection"),
    type = "structure",
    members = {
        ConnectionName = schema.new({
            id = id.from(_N, "Connection", "ConnectionName"),
            type = "string",
            name = "ConnectionName",
            target_id = prelude.String.id,
        }),
        ConnectionArn = schema.new({
            id = id.from(_N, "Connection", "ConnectionArn"),
            type = "string",
            name = "ConnectionArn",
            target_id = prelude.String.id,
        }),
        ProviderType = schema.new({
            id = id.from(_N, "Connection", "ProviderType"),
            type = "string",
            name = "ProviderType",
            target_id = prelude.String.id,
        }),
        OwnerAccountId = schema.new({
            id = id.from(_N, "Connection", "OwnerAccountId"),
            type = "string",
            name = "OwnerAccountId",
            target_id = prelude.String.id,
        }),
        ConnectionStatus = schema.new({
            id = id.from(_N, "Connection", "ConnectionStatus"),
            type = "string",
            name = "ConnectionStatus",
            target_id = prelude.String.id,
        }),
        HostArn = schema.new({
            id = id.from(_N, "Connection", "HostArn"),
            type = "string",
            name = "HostArn",
            target_id = prelude.String.id,
        }),
    },
})

M.GetConnectionOutput = schema.new({
    id = id.from(_N, "GetConnectionOutput"),
    type = "structure",
    members = {
        Connection = schema.new({
            id = id.from(_N, "GetConnectionOutput", "Connection"),
            type = "structure",
            name = "Connection",
            target_id = id.from(_N, "Connection"),
            target = M.Connection,
        }),
    },
})

M.GetHostInput = schema.new({
    id = id.from(_N, "GetHostInput"),
    type = "structure",
    members = {
        HostArn = schema.new({
            id = id.from(_N, "GetHostInput", "HostArn"),
            type = "string",
            name = "HostArn",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.GetHostOutput = schema.new({
    id = id.from(_N, "GetHostOutput"),
    type = "structure",
    members = {
        Name = schema.new({
            id = id.from(_N, "GetHostOutput", "Name"),
            type = "string",
            name = "Name",
            target_id = prelude.String.id,
        }),
        Status = schema.new({
            id = id.from(_N, "GetHostOutput", "Status"),
            type = "string",
            name = "Status",
            target_id = prelude.String.id,
        }),
        ProviderType = schema.new({
            id = id.from(_N, "GetHostOutput", "ProviderType"),
            type = "string",
            name = "ProviderType",
            target_id = prelude.String.id,
        }),
        ProviderEndpoint = schema.new({
            id = id.from(_N, "GetHostOutput", "ProviderEndpoint"),
            type = "string",
            name = "ProviderEndpoint",
            target_id = prelude.String.id,
        }),
        VpcConfiguration = schema.new({
            id = id.from(_N, "GetHostOutput", "VpcConfiguration"),
            type = "structure",
            name = "VpcConfiguration",
            target_id = id.from(_N, "VpcConfiguration"),
            target = M.VpcConfiguration,
        }),
    },
})

M.GetRepositoryLinkInput = schema.new({
    id = id.from(_N, "GetRepositoryLinkInput"),
    type = "structure",
    members = {
        RepositoryLinkId = schema.new({
            id = id.from(_N, "GetRepositoryLinkInput", "RepositoryLinkId"),
            type = "string",
            name = "RepositoryLinkId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.GetRepositoryLinkOutput = schema.new({
    id = id.from(_N, "GetRepositoryLinkOutput"),
    type = "structure",
    members = {
        RepositoryLinkInfo = schema.new({
            id = id.from(_N, "GetRepositoryLinkOutput", "RepositoryLinkInfo"),
            type = "structure",
            name = "RepositoryLinkInfo",
            target_id = id.from(_N, "RepositoryLinkInfo"),
            target = M.RepositoryLinkInfo,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.GetRepositorySyncStatusInput = schema.new({
    id = id.from(_N, "GetRepositorySyncStatusInput"),
    type = "structure",
    members = {
        Branch = schema.new({
            id = id.from(_N, "GetRepositorySyncStatusInput", "Branch"),
            type = "string",
            name = "Branch",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        RepositoryLinkId = schema.new({
            id = id.from(_N, "GetRepositorySyncStatusInput", "RepositoryLinkId"),
            type = "string",
            name = "RepositoryLinkId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        SyncType = schema.new({
            id = id.from(_N, "GetRepositorySyncStatusInput", "SyncType"),
            type = "string",
            name = "SyncType",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.RepositorySyncEvent = schema.new({
    id = id.from(_N, "RepositorySyncEvent"),
    type = "structure",
    members = {
        Event = schema.new({
            id = id.from(_N, "RepositorySyncEvent", "Event"),
            type = "string",
            name = "Event",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        ExternalId = schema.new({
            id = id.from(_N, "RepositorySyncEvent", "ExternalId"),
            type = "string",
            name = "ExternalId",
            target_id = prelude.String.id,
        }),
        Time = schema.new({
            id = id.from(_N, "RepositorySyncEvent", "Time"),
            type = "timestamp",
            name = "Time",
            target_id = prelude.Timestamp.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        Type = schema.new({
            id = id.from(_N, "RepositorySyncEvent", "Type"),
            type = "string",
            name = "Type",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.RepositorySyncAttempt = schema.new({
    id = id.from(_N, "RepositorySyncAttempt"),
    type = "structure",
    members = {
        StartedAt = schema.new({
            id = id.from(_N, "RepositorySyncAttempt", "StartedAt"),
            type = "timestamp",
            name = "StartedAt",
            target_id = prelude.Timestamp.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        Status = schema.new({
            id = id.from(_N, "RepositorySyncAttempt", "Status"),
            type = "string",
            name = "Status",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        Events = schema.new({
            id = id.from(_N, "RepositorySyncAttempt", "Events"),
            type = "list",
            name = "Events",
            target_id = prelude.Document.id,
            list_member = M.RepositorySyncEvent,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.GetRepositorySyncStatusOutput = schema.new({
    id = id.from(_N, "GetRepositorySyncStatusOutput"),
    type = "structure",
    members = {
        LatestSync = schema.new({
            id = id.from(_N, "GetRepositorySyncStatusOutput", "LatestSync"),
            type = "structure",
            name = "LatestSync",
            target_id = id.from(_N, "RepositorySyncAttempt"),
            target = M.RepositorySyncAttempt,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.GetResourceSyncStatusInput = schema.new({
    id = id.from(_N, "GetResourceSyncStatusInput"),
    type = "structure",
    members = {
        ResourceName = schema.new({
            id = id.from(_N, "GetResourceSyncStatusInput", "ResourceName"),
            type = "string",
            name = "ResourceName",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        SyncType = schema.new({
            id = id.from(_N, "GetResourceSyncStatusInput", "SyncType"),
            type = "string",
            name = "SyncType",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.Revision = schema.new({
    id = id.from(_N, "Revision"),
    type = "structure",
    members = {
        Branch = schema.new({
            id = id.from(_N, "Revision", "Branch"),
            type = "string",
            name = "Branch",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        Directory = schema.new({
            id = id.from(_N, "Revision", "Directory"),
            type = "string",
            name = "Directory",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        OwnerId = schema.new({
            id = id.from(_N, "Revision", "OwnerId"),
            type = "string",
            name = "OwnerId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        RepositoryName = schema.new({
            id = id.from(_N, "Revision", "RepositoryName"),
            type = "string",
            name = "RepositoryName",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        ProviderType = schema.new({
            id = id.from(_N, "Revision", "ProviderType"),
            type = "string",
            name = "ProviderType",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        Sha = schema.new({
            id = id.from(_N, "Revision", "Sha"),
            type = "string",
            name = "Sha",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.ResourceSyncEvent = schema.new({
    id = id.from(_N, "ResourceSyncEvent"),
    type = "structure",
    members = {
        Event = schema.new({
            id = id.from(_N, "ResourceSyncEvent", "Event"),
            type = "string",
            name = "Event",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        ExternalId = schema.new({
            id = id.from(_N, "ResourceSyncEvent", "ExternalId"),
            type = "string",
            name = "ExternalId",
            target_id = prelude.String.id,
        }),
        Time = schema.new({
            id = id.from(_N, "ResourceSyncEvent", "Time"),
            type = "timestamp",
            name = "Time",
            target_id = prelude.Timestamp.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        Type = schema.new({
            id = id.from(_N, "ResourceSyncEvent", "Type"),
            type = "string",
            name = "Type",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.ResourceSyncAttempt = schema.new({
    id = id.from(_N, "ResourceSyncAttempt"),
    type = "structure",
    members = {
        Events = schema.new({
            id = id.from(_N, "ResourceSyncAttempt", "Events"),
            type = "list",
            name = "Events",
            target_id = prelude.Document.id,
            list_member = M.ResourceSyncEvent,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        InitialRevision = schema.new({
            id = id.from(_N, "ResourceSyncAttempt", "InitialRevision"),
            type = "structure",
            name = "InitialRevision",
            target_id = id.from(_N, "Revision"),
            target = M.Revision,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        StartedAt = schema.new({
            id = id.from(_N, "ResourceSyncAttempt", "StartedAt"),
            type = "timestamp",
            name = "StartedAt",
            target_id = prelude.Timestamp.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        Status = schema.new({
            id = id.from(_N, "ResourceSyncAttempt", "Status"),
            type = "string",
            name = "Status",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        TargetRevision = schema.new({
            id = id.from(_N, "ResourceSyncAttempt", "TargetRevision"),
            type = "structure",
            name = "TargetRevision",
            target_id = id.from(_N, "Revision"),
            target = M.Revision,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        Target = schema.new({
            id = id.from(_N, "ResourceSyncAttempt", "Target"),
            type = "string",
            name = "Target",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.GetResourceSyncStatusOutput = schema.new({
    id = id.from(_N, "GetResourceSyncStatusOutput"),
    type = "structure",
    members = {
        DesiredState = schema.new({
            id = id.from(_N, "GetResourceSyncStatusOutput", "DesiredState"),
            type = "structure",
            name = "DesiredState",
            target_id = id.from(_N, "Revision"),
            target = M.Revision,
        }),
        LatestSuccessfulSync = schema.new({
            id = id.from(_N, "GetResourceSyncStatusOutput", "LatestSuccessfulSync"),
            type = "structure",
            name = "LatestSuccessfulSync",
            target_id = id.from(_N, "ResourceSyncAttempt"),
            target = M.ResourceSyncAttempt,
        }),
        LatestSync = schema.new({
            id = id.from(_N, "GetResourceSyncStatusOutput", "LatestSync"),
            type = "structure",
            name = "LatestSync",
            target_id = id.from(_N, "ResourceSyncAttempt"),
            target = M.ResourceSyncAttempt,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.GetSyncBlockerSummaryInput = schema.new({
    id = id.from(_N, "GetSyncBlockerSummaryInput"),
    type = "structure",
    members = {
        SyncType = schema.new({
            id = id.from(_N, "GetSyncBlockerSummaryInput", "SyncType"),
            type = "string",
            name = "SyncType",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        ResourceName = schema.new({
            id = id.from(_N, "GetSyncBlockerSummaryInput", "ResourceName"),
            type = "string",
            name = "ResourceName",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.SyncBlockerContext = schema.new({
    id = id.from(_N, "SyncBlockerContext"),
    type = "structure",
    members = {
        Key = schema.new({
            id = id.from(_N, "SyncBlockerContext", "Key"),
            type = "string",
            name = "Key",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        Value = schema.new({
            id = id.from(_N, "SyncBlockerContext", "Value"),
            type = "string",
            name = "Value",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.SyncBlocker = schema.new({
    id = id.from(_N, "SyncBlocker"),
    type = "structure",
    members = {
        Id = schema.new({
            id = id.from(_N, "SyncBlocker", "Id"),
            type = "string",
            name = "Id",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        Type = schema.new({
            id = id.from(_N, "SyncBlocker", "Type"),
            type = "string",
            name = "Type",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        Status = schema.new({
            id = id.from(_N, "SyncBlocker", "Status"),
            type = "string",
            name = "Status",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        CreatedReason = schema.new({
            id = id.from(_N, "SyncBlocker", "CreatedReason"),
            type = "string",
            name = "CreatedReason",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        CreatedAt = schema.new({
            id = id.from(_N, "SyncBlocker", "CreatedAt"),
            type = "timestamp",
            name = "CreatedAt",
            target_id = prelude.Timestamp.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        Contexts = schema.new({
            id = id.from(_N, "SyncBlocker", "Contexts"),
            type = "list",
            name = "Contexts",
            target_id = prelude.Document.id,
            list_member = M.SyncBlockerContext,
        }),
        ResolvedReason = schema.new({
            id = id.from(_N, "SyncBlocker", "ResolvedReason"),
            type = "string",
            name = "ResolvedReason",
            target_id = prelude.String.id,
        }),
        ResolvedAt = schema.new({
            id = id.from(_N, "SyncBlocker", "ResolvedAt"),
            type = "timestamp",
            name = "ResolvedAt",
            target_id = prelude.Timestamp.id,
        }),
    },
})

M.SyncBlockerSummary = schema.new({
    id = id.from(_N, "SyncBlockerSummary"),
    type = "structure",
    members = {
        ResourceName = schema.new({
            id = id.from(_N, "SyncBlockerSummary", "ResourceName"),
            type = "string",
            name = "ResourceName",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        ParentResourceName = schema.new({
            id = id.from(_N, "SyncBlockerSummary", "ParentResourceName"),
            type = "string",
            name = "ParentResourceName",
            target_id = prelude.String.id,
        }),
        LatestBlockers = schema.new({
            id = id.from(_N, "SyncBlockerSummary", "LatestBlockers"),
            type = "list",
            name = "LatestBlockers",
            target_id = prelude.Document.id,
            list_member = M.SyncBlocker,
        }),
    },
})

M.GetSyncBlockerSummaryOutput = schema.new({
    id = id.from(_N, "GetSyncBlockerSummaryOutput"),
    type = "structure",
    members = {
        SyncBlockerSummary = schema.new({
            id = id.from(_N, "GetSyncBlockerSummaryOutput", "SyncBlockerSummary"),
            type = "structure",
            name = "SyncBlockerSummary",
            target_id = id.from(_N, "SyncBlockerSummary"),
            target = M.SyncBlockerSummary,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.GetSyncConfigurationInput = schema.new({
    id = id.from(_N, "GetSyncConfigurationInput"),
    type = "structure",
    members = {
        SyncType = schema.new({
            id = id.from(_N, "GetSyncConfigurationInput", "SyncType"),
            type = "string",
            name = "SyncType",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        ResourceName = schema.new({
            id = id.from(_N, "GetSyncConfigurationInput", "ResourceName"),
            type = "string",
            name = "ResourceName",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.GetSyncConfigurationOutput = schema.new({
    id = id.from(_N, "GetSyncConfigurationOutput"),
    type = "structure",
    members = {
        SyncConfiguration = schema.new({
            id = id.from(_N, "GetSyncConfigurationOutput", "SyncConfiguration"),
            type = "structure",
            name = "SyncConfiguration",
            target_id = id.from(_N, "SyncConfiguration"),
            target = M.SyncConfiguration,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.ListConnectionsInput = schema.new({
    id = id.from(_N, "ListConnectionsInput"),
    type = "structure",
    members = {
        ProviderTypeFilter = schema.new({
            id = id.from(_N, "ListConnectionsInput", "ProviderTypeFilter"),
            type = "string",
            name = "ProviderTypeFilter",
            target_id = prelude.String.id,
        }),
        HostArnFilter = schema.new({
            id = id.from(_N, "ListConnectionsInput", "HostArnFilter"),
            type = "string",
            name = "HostArnFilter",
            target_id = prelude.String.id,
        }),
        MaxResults = schema.new({
            id = id.from(_N, "ListConnectionsInput", "MaxResults"),
            type = "integer",
            name = "MaxResults",
            target_id = prelude.Integer.id,
            traits = {
                [traits.DEFAULT] = { value = 0 },
            },
        }),
        NextToken = schema.new({
            id = id.from(_N, "ListConnectionsInput", "NextToken"),
            type = "string",
            name = "NextToken",
            target_id = prelude.String.id,
        }),
    },
})

M.ListConnectionsOutput = schema.new({
    id = id.from(_N, "ListConnectionsOutput"),
    type = "structure",
    members = {
        Connections = schema.new({
            id = id.from(_N, "ListConnectionsOutput", "Connections"),
            type = "list",
            name = "Connections",
            target_id = prelude.Document.id,
            list_member = M.Connection,
        }),
        NextToken = schema.new({
            id = id.from(_N, "ListConnectionsOutput", "NextToken"),
            type = "string",
            name = "NextToken",
            target_id = prelude.String.id,
        }),
    },
})

M.ListHostsInput = schema.new({
    id = id.from(_N, "ListHostsInput"),
    type = "structure",
    members = {
        MaxResults = schema.new({
            id = id.from(_N, "ListHostsInput", "MaxResults"),
            type = "integer",
            name = "MaxResults",
            target_id = prelude.Integer.id,
            traits = {
                [traits.DEFAULT] = { value = 0 },
            },
        }),
        NextToken = schema.new({
            id = id.from(_N, "ListHostsInput", "NextToken"),
            type = "string",
            name = "NextToken",
            target_id = prelude.String.id,
        }),
    },
})

M.Host = schema.new({
    id = id.from(_N, "Host"),
    type = "structure",
    members = {
        Name = schema.new({
            id = id.from(_N, "Host", "Name"),
            type = "string",
            name = "Name",
            target_id = prelude.String.id,
        }),
        HostArn = schema.new({
            id = id.from(_N, "Host", "HostArn"),
            type = "string",
            name = "HostArn",
            target_id = prelude.String.id,
        }),
        ProviderType = schema.new({
            id = id.from(_N, "Host", "ProviderType"),
            type = "string",
            name = "ProviderType",
            target_id = prelude.String.id,
        }),
        ProviderEndpoint = schema.new({
            id = id.from(_N, "Host", "ProviderEndpoint"),
            type = "string",
            name = "ProviderEndpoint",
            target_id = prelude.String.id,
        }),
        VpcConfiguration = schema.new({
            id = id.from(_N, "Host", "VpcConfiguration"),
            type = "structure",
            name = "VpcConfiguration",
            target_id = id.from(_N, "VpcConfiguration"),
            target = M.VpcConfiguration,
        }),
        Status = schema.new({
            id = id.from(_N, "Host", "Status"),
            type = "string",
            name = "Status",
            target_id = prelude.String.id,
        }),
        StatusMessage = schema.new({
            id = id.from(_N, "Host", "StatusMessage"),
            type = "string",
            name = "StatusMessage",
            target_id = prelude.String.id,
        }),
    },
})

M.ListHostsOutput = schema.new({
    id = id.from(_N, "ListHostsOutput"),
    type = "structure",
    members = {
        Hosts = schema.new({
            id = id.from(_N, "ListHostsOutput", "Hosts"),
            type = "list",
            name = "Hosts",
            target_id = prelude.Document.id,
            list_member = M.Host,
        }),
        NextToken = schema.new({
            id = id.from(_N, "ListHostsOutput", "NextToken"),
            type = "string",
            name = "NextToken",
            target_id = prelude.String.id,
        }),
    },
})

M.ListRepositoryLinksInput = schema.new({
    id = id.from(_N, "ListRepositoryLinksInput"),
    type = "structure",
    members = {
        MaxResults = schema.new({
            id = id.from(_N, "ListRepositoryLinksInput", "MaxResults"),
            type = "integer",
            name = "MaxResults",
            target_id = prelude.Integer.id,
            traits = {
                [traits.DEFAULT] = { value = 0 },
            },
        }),
        NextToken = schema.new({
            id = id.from(_N, "ListRepositoryLinksInput", "NextToken"),
            type = "string",
            name = "NextToken",
            target_id = prelude.String.id,
        }),
    },
})

M.ListRepositoryLinksOutput = schema.new({
    id = id.from(_N, "ListRepositoryLinksOutput"),
    type = "structure",
    members = {
        RepositoryLinks = schema.new({
            id = id.from(_N, "ListRepositoryLinksOutput", "RepositoryLinks"),
            type = "list",
            name = "RepositoryLinks",
            target_id = prelude.Document.id,
            list_member = M.RepositoryLinkInfo,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        NextToken = schema.new({
            id = id.from(_N, "ListRepositoryLinksOutput", "NextToken"),
            type = "string",
            name = "NextToken",
            target_id = prelude.String.id,
        }),
    },
})

M.ListRepositorySyncDefinitionsInput = schema.new({
    id = id.from(_N, "ListRepositorySyncDefinitionsInput"),
    type = "structure",
    members = {
        RepositoryLinkId = schema.new({
            id = id.from(_N, "ListRepositorySyncDefinitionsInput", "RepositoryLinkId"),
            type = "string",
            name = "RepositoryLinkId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        SyncType = schema.new({
            id = id.from(_N, "ListRepositorySyncDefinitionsInput", "SyncType"),
            type = "string",
            name = "SyncType",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.RepositorySyncDefinition = schema.new({
    id = id.from(_N, "RepositorySyncDefinition"),
    type = "structure",
    members = {
        Branch = schema.new({
            id = id.from(_N, "RepositorySyncDefinition", "Branch"),
            type = "string",
            name = "Branch",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        Directory = schema.new({
            id = id.from(_N, "RepositorySyncDefinition", "Directory"),
            type = "string",
            name = "Directory",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        Parent = schema.new({
            id = id.from(_N, "RepositorySyncDefinition", "Parent"),
            type = "string",
            name = "Parent",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        Target = schema.new({
            id = id.from(_N, "RepositorySyncDefinition", "Target"),
            type = "string",
            name = "Target",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.ListRepositorySyncDefinitionsOutput = schema.new({
    id = id.from(_N, "ListRepositorySyncDefinitionsOutput"),
    type = "structure",
    members = {
        RepositorySyncDefinitions = schema.new({
            id = id.from(_N, "ListRepositorySyncDefinitionsOutput", "RepositorySyncDefinitions"),
            type = "list",
            name = "RepositorySyncDefinitions",
            target_id = prelude.Document.id,
            list_member = M.RepositorySyncDefinition,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        NextToken = schema.new({
            id = id.from(_N, "ListRepositorySyncDefinitionsOutput", "NextToken"),
            type = "string",
            name = "NextToken",
            target_id = prelude.String.id,
        }),
    },
})

M.ListSyncConfigurationsInput = schema.new({
    id = id.from(_N, "ListSyncConfigurationsInput"),
    type = "structure",
    members = {
        MaxResults = schema.new({
            id = id.from(_N, "ListSyncConfigurationsInput", "MaxResults"),
            type = "integer",
            name = "MaxResults",
            target_id = prelude.Integer.id,
            traits = {
                [traits.DEFAULT] = { value = 0 },
            },
        }),
        NextToken = schema.new({
            id = id.from(_N, "ListSyncConfigurationsInput", "NextToken"),
            type = "string",
            name = "NextToken",
            target_id = prelude.String.id,
        }),
        RepositoryLinkId = schema.new({
            id = id.from(_N, "ListSyncConfigurationsInput", "RepositoryLinkId"),
            type = "string",
            name = "RepositoryLinkId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        SyncType = schema.new({
            id = id.from(_N, "ListSyncConfigurationsInput", "SyncType"),
            type = "string",
            name = "SyncType",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.ListSyncConfigurationsOutput = schema.new({
    id = id.from(_N, "ListSyncConfigurationsOutput"),
    type = "structure",
    members = {
        SyncConfigurations = schema.new({
            id = id.from(_N, "ListSyncConfigurationsOutput", "SyncConfigurations"),
            type = "list",
            name = "SyncConfigurations",
            target_id = prelude.Document.id,
            list_member = M.SyncConfiguration,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        NextToken = schema.new({
            id = id.from(_N, "ListSyncConfigurationsOutput", "NextToken"),
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
        ResourceArn = schema.new({
            id = id.from(_N, "ListTagsForResourceInput", "ResourceArn"),
            type = "string",
            name = "ResourceArn",
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

M.TagResourceInput = schema.new({
    id = id.from(_N, "TagResourceInput"),
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
        ResourceArn = schema.new({
            id = id.from(_N, "UntagResourceInput", "ResourceArn"),
            type = "string",
            name = "ResourceArn",
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

M.ConflictException = schema.new({
    id = id.from(_N, "ConflictException"),
    type = "structure",
    traits = {
        [traits.ERROR] = { value = "client" },
    },
    members = {
        Message = schema.new({
            id = id.from(_N, "ConflictException", "Message"),
            type = "string",
            name = "Message",
            target_id = prelude.String.id,
        }),
    },
})

M.UnsupportedOperationException = schema.new({
    id = id.from(_N, "UnsupportedOperationException"),
    type = "structure",
    traits = {
        [traits.ERROR] = { value = "client" },
    },
    members = {
        Message = schema.new({
            id = id.from(_N, "UnsupportedOperationException", "Message"),
            type = "string",
            name = "Message",
            target_id = prelude.String.id,
        }),
    },
})

M.UpdateHostInput = schema.new({
    id = id.from(_N, "UpdateHostInput"),
    type = "structure",
    members = {
        HostArn = schema.new({
            id = id.from(_N, "UpdateHostInput", "HostArn"),
            type = "string",
            name = "HostArn",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        ProviderEndpoint = schema.new({
            id = id.from(_N, "UpdateHostInput", "ProviderEndpoint"),
            type = "string",
            name = "ProviderEndpoint",
            target_id = prelude.String.id,
        }),
        VpcConfiguration = schema.new({
            id = id.from(_N, "UpdateHostInput", "VpcConfiguration"),
            type = "structure",
            name = "VpcConfiguration",
            target_id = id.from(_N, "VpcConfiguration"),
            target = M.VpcConfiguration,
        }),
    },
})

M.UpdateHostOutput = schema.new({
    id = id.from(_N, "UpdateHostOutput"),
    type = "structure",
})

M.ConditionalCheckFailedException = schema.new({
    id = id.from(_N, "ConditionalCheckFailedException"),
    type = "structure",
    traits = {
        [traits.ERROR] = { value = "client" },
    },
    members = {
        Message = schema.new({
            id = id.from(_N, "ConditionalCheckFailedException", "Message"),
            type = "string",
            name = "Message",
            target_id = prelude.String.id,
        }),
    },
})

M.UpdateOutOfSyncException = schema.new({
    id = id.from(_N, "UpdateOutOfSyncException"),
    type = "structure",
    traits = {
        [traits.ERROR] = { value = "client" },
    },
    members = {
        Message = schema.new({
            id = id.from(_N, "UpdateOutOfSyncException", "Message"),
            type = "string",
            name = "Message",
            target_id = prelude.String.id,
        }),
    },
})

M.UpdateRepositoryLinkInput = schema.new({
    id = id.from(_N, "UpdateRepositoryLinkInput"),
    type = "structure",
    members = {
        ConnectionArn = schema.new({
            id = id.from(_N, "UpdateRepositoryLinkInput", "ConnectionArn"),
            type = "string",
            name = "ConnectionArn",
            target_id = prelude.String.id,
        }),
        EncryptionKeyArn = schema.new({
            id = id.from(_N, "UpdateRepositoryLinkInput", "EncryptionKeyArn"),
            type = "string",
            name = "EncryptionKeyArn",
            target_id = prelude.String.id,
        }),
        RepositoryLinkId = schema.new({
            id = id.from(_N, "UpdateRepositoryLinkInput", "RepositoryLinkId"),
            type = "string",
            name = "RepositoryLinkId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.UpdateRepositoryLinkOutput = schema.new({
    id = id.from(_N, "UpdateRepositoryLinkOutput"),
    type = "structure",
    members = {
        RepositoryLinkInfo = schema.new({
            id = id.from(_N, "UpdateRepositoryLinkOutput", "RepositoryLinkInfo"),
            type = "structure",
            name = "RepositoryLinkInfo",
            target_id = id.from(_N, "RepositoryLinkInfo"),
            target = M.RepositoryLinkInfo,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.RetryLatestCommitFailedException = schema.new({
    id = id.from(_N, "RetryLatestCommitFailedException"),
    type = "structure",
    traits = {
        [traits.ERROR] = { value = "server" },
    },
    members = {
        Message = schema.new({
            id = id.from(_N, "RetryLatestCommitFailedException", "Message"),
            type = "string",
            name = "Message",
            target_id = prelude.String.id,
        }),
    },
})

M.SyncBlockerDoesNotExistException = schema.new({
    id = id.from(_N, "SyncBlockerDoesNotExistException"),
    type = "structure",
    traits = {
        [traits.ERROR] = { value = "client" },
    },
    members = {
        Message = schema.new({
            id = id.from(_N, "SyncBlockerDoesNotExistException", "Message"),
            type = "string",
            name = "Message",
            target_id = prelude.String.id,
        }),
    },
})

M.UpdateSyncBlockerInput = schema.new({
    id = id.from(_N, "UpdateSyncBlockerInput"),
    type = "structure",
    members = {
        Id = schema.new({
            id = id.from(_N, "UpdateSyncBlockerInput", "Id"),
            type = "string",
            name = "Id",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        SyncType = schema.new({
            id = id.from(_N, "UpdateSyncBlockerInput", "SyncType"),
            type = "string",
            name = "SyncType",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        ResourceName = schema.new({
            id = id.from(_N, "UpdateSyncBlockerInput", "ResourceName"),
            type = "string",
            name = "ResourceName",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        ResolvedReason = schema.new({
            id = id.from(_N, "UpdateSyncBlockerInput", "ResolvedReason"),
            type = "string",
            name = "ResolvedReason",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.UpdateSyncBlockerOutput = schema.new({
    id = id.from(_N, "UpdateSyncBlockerOutput"),
    type = "structure",
    members = {
        ResourceName = schema.new({
            id = id.from(_N, "UpdateSyncBlockerOutput", "ResourceName"),
            type = "string",
            name = "ResourceName",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        ParentResourceName = schema.new({
            id = id.from(_N, "UpdateSyncBlockerOutput", "ParentResourceName"),
            type = "string",
            name = "ParentResourceName",
            target_id = prelude.String.id,
        }),
        SyncBlocker = schema.new({
            id = id.from(_N, "UpdateSyncBlockerOutput", "SyncBlocker"),
            type = "structure",
            name = "SyncBlocker",
            target_id = id.from(_N, "SyncBlocker"),
            target = M.SyncBlocker,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.UpdateSyncConfigurationInput = schema.new({
    id = id.from(_N, "UpdateSyncConfigurationInput"),
    type = "structure",
    members = {
        Branch = schema.new({
            id = id.from(_N, "UpdateSyncConfigurationInput", "Branch"),
            type = "string",
            name = "Branch",
            target_id = prelude.String.id,
        }),
        ConfigFile = schema.new({
            id = id.from(_N, "UpdateSyncConfigurationInput", "ConfigFile"),
            type = "string",
            name = "ConfigFile",
            target_id = prelude.String.id,
        }),
        RepositoryLinkId = schema.new({
            id = id.from(_N, "UpdateSyncConfigurationInput", "RepositoryLinkId"),
            type = "string",
            name = "RepositoryLinkId",
            target_id = prelude.String.id,
        }),
        ResourceName = schema.new({
            id = id.from(_N, "UpdateSyncConfigurationInput", "ResourceName"),
            type = "string",
            name = "ResourceName",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        RoleArn = schema.new({
            id = id.from(_N, "UpdateSyncConfigurationInput", "RoleArn"),
            type = "string",
            name = "RoleArn",
            target_id = prelude.String.id,
        }),
        SyncType = schema.new({
            id = id.from(_N, "UpdateSyncConfigurationInput", "SyncType"),
            type = "string",
            name = "SyncType",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        PublishDeploymentStatus = schema.new({
            id = id.from(_N, "UpdateSyncConfigurationInput", "PublishDeploymentStatus"),
            type = "string",
            name = "PublishDeploymentStatus",
            target_id = prelude.String.id,
        }),
        TriggerResourceUpdateOn = schema.new({
            id = id.from(_N, "UpdateSyncConfigurationInput", "TriggerResourceUpdateOn"),
            type = "string",
            name = "TriggerResourceUpdateOn",
            target_id = prelude.String.id,
        }),
        PullRequestComment = schema.new({
            id = id.from(_N, "UpdateSyncConfigurationInput", "PullRequestComment"),
            type = "string",
            name = "PullRequestComment",
            target_id = prelude.String.id,
        }),
    },
})

M.UpdateSyncConfigurationOutput = schema.new({
    id = id.from(_N, "UpdateSyncConfigurationOutput"),
    type = "structure",
    members = {
        SyncConfiguration = schema.new({
            id = id.from(_N, "UpdateSyncConfigurationOutput", "SyncConfiguration"),
            type = "structure",
            name = "SyncConfiguration",
            target_id = id.from(_N, "SyncConfiguration"),
            target = M.SyncConfiguration,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
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
