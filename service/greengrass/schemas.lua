local id = require("smithy.shape_id")
local schema = require("smithy.schema")
local prelude = require("smithy.prelude")
local traits = require("smithy.traits")

local _N = "com.amazonaws.greengrass"

local M = {}

M.ConnectivityInfo = schema.new({
    id = id.from(_N, "ConnectivityInfo"),
    type = "structure",
    members = {
        HostAddress = schema.new({
            id = id.from(_N, "ConnectivityInfo", "HostAddress"),
            type = "string",
            name = "HostAddress",
            target_id = prelude.String.id,
        }),
        Id = schema.new({
            id = id.from(_N, "ConnectivityInfo", "Id"),
            type = "string",
            name = "Id",
            target_id = prelude.String.id,
        }),
        Metadata = schema.new({
            id = id.from(_N, "ConnectivityInfo", "Metadata"),
            type = "string",
            name = "Metadata",
            target_id = prelude.String.id,
        }),
        PortNumber = schema.new({
            id = id.from(_N, "ConnectivityInfo", "PortNumber"),
            type = "integer",
            name = "PortNumber",
            target_id = prelude.Integer.id,
        }),
    },
})

M.Connector = schema.new({
    id = id.from(_N, "Connector"),
    type = "structure",
    members = {
        ConnectorArn = schema.new({
            id = id.from(_N, "Connector", "ConnectorArn"),
            type = "string",
            name = "ConnectorArn",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        Id = schema.new({
            id = id.from(_N, "Connector", "Id"),
            type = "string",
            name = "Id",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        Parameters = schema.new({
            id = id.from(_N, "Connector", "Parameters"),
            type = "map",
            name = "Parameters",
            target_id = prelude.Document.id,
            map_key = prelude.String,
            map_value = prelude.String,
        }),
    },
})

M.Core = schema.new({
    id = id.from(_N, "Core"),
    type = "structure",
    members = {
        CertificateArn = schema.new({
            id = id.from(_N, "Core", "CertificateArn"),
            type = "string",
            name = "CertificateArn",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        Id = schema.new({
            id = id.from(_N, "Core", "Id"),
            type = "string",
            name = "Id",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        SyncShadow = schema.new({
            id = id.from(_N, "Core", "SyncShadow"),
            type = "boolean",
            name = "SyncShadow",
            target_id = prelude.Boolean.id,
        }),
        ThingArn = schema.new({
            id = id.from(_N, "Core", "ThingArn"),
            type = "string",
            name = "ThingArn",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.DefinitionInformation = schema.new({
    id = id.from(_N, "DefinitionInformation"),
    type = "structure",
    members = {
        Arn = schema.new({
            id = id.from(_N, "DefinitionInformation", "Arn"),
            type = "string",
            name = "Arn",
            target_id = prelude.String.id,
        }),
        CreationTimestamp = schema.new({
            id = id.from(_N, "DefinitionInformation", "CreationTimestamp"),
            type = "string",
            name = "CreationTimestamp",
            target_id = prelude.String.id,
        }),
        Id = schema.new({
            id = id.from(_N, "DefinitionInformation", "Id"),
            type = "string",
            name = "Id",
            target_id = prelude.String.id,
        }),
        LastUpdatedTimestamp = schema.new({
            id = id.from(_N, "DefinitionInformation", "LastUpdatedTimestamp"),
            type = "string",
            name = "LastUpdatedTimestamp",
            target_id = prelude.String.id,
        }),
        LatestVersion = schema.new({
            id = id.from(_N, "DefinitionInformation", "LatestVersion"),
            type = "string",
            name = "LatestVersion",
            target_id = prelude.String.id,
        }),
        LatestVersionArn = schema.new({
            id = id.from(_N, "DefinitionInformation", "LatestVersionArn"),
            type = "string",
            name = "LatestVersionArn",
            target_id = prelude.String.id,
        }),
        Name = schema.new({
            id = id.from(_N, "DefinitionInformation", "Name"),
            type = "string",
            name = "Name",
            target_id = prelude.String.id,
        }),
        Tags = schema.new({
            id = id.from(_N, "DefinitionInformation", "Tags"),
            type = "map",
            name = "Tags",
            target_id = prelude.Document.id,
            map_key = prelude.String,
            map_value = prelude.String,
            traits = {
                [traits.JSON_NAME] = { name = "tags" },
            },
        }),
    },
})

M.Device = schema.new({
    id = id.from(_N, "Device"),
    type = "structure",
    members = {
        CertificateArn = schema.new({
            id = id.from(_N, "Device", "CertificateArn"),
            type = "string",
            name = "CertificateArn",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        Id = schema.new({
            id = id.from(_N, "Device", "Id"),
            type = "string",
            name = "Id",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        SyncShadow = schema.new({
            id = id.from(_N, "Device", "SyncShadow"),
            type = "boolean",
            name = "SyncShadow",
            target_id = prelude.Boolean.id,
        }),
        ThingArn = schema.new({
            id = id.from(_N, "Device", "ThingArn"),
            type = "string",
            name = "ThingArn",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.FunctionRunAsConfig = schema.new({
    id = id.from(_N, "FunctionRunAsConfig"),
    type = "structure",
    members = {
        Gid = schema.new({
            id = id.from(_N, "FunctionRunAsConfig", "Gid"),
            type = "integer",
            name = "Gid",
            target_id = prelude.Integer.id,
        }),
        Uid = schema.new({
            id = id.from(_N, "FunctionRunAsConfig", "Uid"),
            type = "integer",
            name = "Uid",
            target_id = prelude.Integer.id,
        }),
    },
})

M.FunctionExecutionConfig = schema.new({
    id = id.from(_N, "FunctionExecutionConfig"),
    type = "structure",
    members = {
        IsolationMode = schema.new({
            id = id.from(_N, "FunctionExecutionConfig", "IsolationMode"),
            type = "string",
            name = "IsolationMode",
            target_id = prelude.String.id,
        }),
        RunAs = schema.new({
            id = id.from(_N, "FunctionExecutionConfig", "RunAs"),
            type = "structure",
            name = "RunAs",
            target_id = id.from(_N, "FunctionRunAsConfig"),
            target = M.FunctionRunAsConfig,
        }),
    },
})

M.ResourceAccessPolicy = schema.new({
    id = id.from(_N, "ResourceAccessPolicy"),
    type = "structure",
    members = {
        Permission = schema.new({
            id = id.from(_N, "ResourceAccessPolicy", "Permission"),
            type = "string",
            name = "Permission",
            target_id = prelude.String.id,
        }),
        ResourceId = schema.new({
            id = id.from(_N, "ResourceAccessPolicy", "ResourceId"),
            type = "string",
            name = "ResourceId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.FunctionConfigurationEnvironment = schema.new({
    id = id.from(_N, "FunctionConfigurationEnvironment"),
    type = "structure",
    members = {
        AccessSysfs = schema.new({
            id = id.from(_N, "FunctionConfigurationEnvironment", "AccessSysfs"),
            type = "boolean",
            name = "AccessSysfs",
            target_id = prelude.Boolean.id,
        }),
        Execution = schema.new({
            id = id.from(_N, "FunctionConfigurationEnvironment", "Execution"),
            type = "structure",
            name = "Execution",
            target_id = id.from(_N, "FunctionExecutionConfig"),
            target = M.FunctionExecutionConfig,
        }),
        ResourceAccessPolicies = schema.new({
            id = id.from(_N, "FunctionConfigurationEnvironment", "ResourceAccessPolicies"),
            type = "list",
            name = "ResourceAccessPolicies",
            target_id = prelude.Document.id,
            list_member = M.ResourceAccessPolicy,
        }),
        Variables = schema.new({
            id = id.from(_N, "FunctionConfigurationEnvironment", "Variables"),
            type = "map",
            name = "Variables",
            target_id = prelude.Document.id,
            map_key = prelude.String,
            map_value = prelude.String,
        }),
    },
})

M.FunctionConfiguration = schema.new({
    id = id.from(_N, "FunctionConfiguration"),
    type = "structure",
    members = {
        EncodingType = schema.new({
            id = id.from(_N, "FunctionConfiguration", "EncodingType"),
            type = "string",
            name = "EncodingType",
            target_id = prelude.String.id,
        }),
        Environment = schema.new({
            id = id.from(_N, "FunctionConfiguration", "Environment"),
            type = "structure",
            name = "Environment",
            target_id = id.from(_N, "FunctionConfigurationEnvironment"),
            target = M.FunctionConfigurationEnvironment,
        }),
        ExecArgs = schema.new({
            id = id.from(_N, "FunctionConfiguration", "ExecArgs"),
            type = "string",
            name = "ExecArgs",
            target_id = prelude.String.id,
        }),
        Executable = schema.new({
            id = id.from(_N, "FunctionConfiguration", "Executable"),
            type = "string",
            name = "Executable",
            target_id = prelude.String.id,
        }),
        MemorySize = schema.new({
            id = id.from(_N, "FunctionConfiguration", "MemorySize"),
            type = "integer",
            name = "MemorySize",
            target_id = prelude.Integer.id,
        }),
        Pinned = schema.new({
            id = id.from(_N, "FunctionConfiguration", "Pinned"),
            type = "boolean",
            name = "Pinned",
            target_id = prelude.Boolean.id,
        }),
        Timeout = schema.new({
            id = id.from(_N, "FunctionConfiguration", "Timeout"),
            type = "integer",
            name = "Timeout",
            target_id = prelude.Integer.id,
        }),
        FunctionRuntimeOverride = schema.new({
            id = id.from(_N, "FunctionConfiguration", "FunctionRuntimeOverride"),
            type = "string",
            name = "FunctionRuntimeOverride",
            target_id = prelude.String.id,
        }),
    },
})

M.Function = schema.new({
    id = id.from(_N, "Function"),
    type = "structure",
    members = {
        FunctionArn = schema.new({
            id = id.from(_N, "Function", "FunctionArn"),
            type = "string",
            name = "FunctionArn",
            target_id = prelude.String.id,
        }),
        FunctionConfiguration = schema.new({
            id = id.from(_N, "Function", "FunctionConfiguration"),
            type = "structure",
            name = "FunctionConfiguration",
            target_id = id.from(_N, "FunctionConfiguration"),
            target = M.FunctionConfiguration,
        }),
        Id = schema.new({
            id = id.from(_N, "Function", "Id"),
            type = "string",
            name = "Id",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.GroupCertificateAuthorityProperties = schema.new({
    id = id.from(_N, "GroupCertificateAuthorityProperties"),
    type = "structure",
    members = {
        GroupCertificateAuthorityArn = schema.new({
            id = id.from(_N, "GroupCertificateAuthorityProperties", "GroupCertificateAuthorityArn"),
            type = "string",
            name = "GroupCertificateAuthorityArn",
            target_id = prelude.String.id,
        }),
        GroupCertificateAuthorityId = schema.new({
            id = id.from(_N, "GroupCertificateAuthorityProperties", "GroupCertificateAuthorityId"),
            type = "string",
            name = "GroupCertificateAuthorityId",
            target_id = prelude.String.id,
        }),
    },
})

M.GroupInformation = schema.new({
    id = id.from(_N, "GroupInformation"),
    type = "structure",
    members = {
        Arn = schema.new({
            id = id.from(_N, "GroupInformation", "Arn"),
            type = "string",
            name = "Arn",
            target_id = prelude.String.id,
        }),
        CreationTimestamp = schema.new({
            id = id.from(_N, "GroupInformation", "CreationTimestamp"),
            type = "string",
            name = "CreationTimestamp",
            target_id = prelude.String.id,
        }),
        Id = schema.new({
            id = id.from(_N, "GroupInformation", "Id"),
            type = "string",
            name = "Id",
            target_id = prelude.String.id,
        }),
        LastUpdatedTimestamp = schema.new({
            id = id.from(_N, "GroupInformation", "LastUpdatedTimestamp"),
            type = "string",
            name = "LastUpdatedTimestamp",
            target_id = prelude.String.id,
        }),
        LatestVersion = schema.new({
            id = id.from(_N, "GroupInformation", "LatestVersion"),
            type = "string",
            name = "LatestVersion",
            target_id = prelude.String.id,
        }),
        LatestVersionArn = schema.new({
            id = id.from(_N, "GroupInformation", "LatestVersionArn"),
            type = "string",
            name = "LatestVersionArn",
            target_id = prelude.String.id,
        }),
        Name = schema.new({
            id = id.from(_N, "GroupInformation", "Name"),
            type = "string",
            name = "Name",
            target_id = prelude.String.id,
        }),
    },
})

M.Logger = schema.new({
    id = id.from(_N, "Logger"),
    type = "structure",
    members = {
        Component = schema.new({
            id = id.from(_N, "Logger", "Component"),
            type = "string",
            name = "Component",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        Id = schema.new({
            id = id.from(_N, "Logger", "Id"),
            type = "string",
            name = "Id",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        Level = schema.new({
            id = id.from(_N, "Logger", "Level"),
            type = "string",
            name = "Level",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        Space = schema.new({
            id = id.from(_N, "Logger", "Space"),
            type = "integer",
            name = "Space",
            target_id = prelude.Integer.id,
        }),
        Type = schema.new({
            id = id.from(_N, "Logger", "Type"),
            type = "string",
            name = "Type",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.GroupOwnerSetting = schema.new({
    id = id.from(_N, "GroupOwnerSetting"),
    type = "structure",
    members = {
        AutoAddGroupOwner = schema.new({
            id = id.from(_N, "GroupOwnerSetting", "AutoAddGroupOwner"),
            type = "boolean",
            name = "AutoAddGroupOwner",
            target_id = prelude.Boolean.id,
        }),
        GroupOwner = schema.new({
            id = id.from(_N, "GroupOwnerSetting", "GroupOwner"),
            type = "string",
            name = "GroupOwner",
            target_id = prelude.String.id,
        }),
    },
})

M.LocalDeviceResourceData = schema.new({
    id = id.from(_N, "LocalDeviceResourceData"),
    type = "structure",
    members = {
        GroupOwnerSetting = schema.new({
            id = id.from(_N, "LocalDeviceResourceData", "GroupOwnerSetting"),
            type = "structure",
            name = "GroupOwnerSetting",
            target_id = id.from(_N, "GroupOwnerSetting"),
            target = M.GroupOwnerSetting,
        }),
        SourcePath = schema.new({
            id = id.from(_N, "LocalDeviceResourceData", "SourcePath"),
            type = "string",
            name = "SourcePath",
            target_id = prelude.String.id,
        }),
    },
})

M.LocalVolumeResourceData = schema.new({
    id = id.from(_N, "LocalVolumeResourceData"),
    type = "structure",
    members = {
        DestinationPath = schema.new({
            id = id.from(_N, "LocalVolumeResourceData", "DestinationPath"),
            type = "string",
            name = "DestinationPath",
            target_id = prelude.String.id,
        }),
        GroupOwnerSetting = schema.new({
            id = id.from(_N, "LocalVolumeResourceData", "GroupOwnerSetting"),
            type = "structure",
            name = "GroupOwnerSetting",
            target_id = id.from(_N, "GroupOwnerSetting"),
            target = M.GroupOwnerSetting,
        }),
        SourcePath = schema.new({
            id = id.from(_N, "LocalVolumeResourceData", "SourcePath"),
            type = "string",
            name = "SourcePath",
            target_id = prelude.String.id,
        }),
    },
})

M.ResourceDownloadOwnerSetting = schema.new({
    id = id.from(_N, "ResourceDownloadOwnerSetting"),
    type = "structure",
    members = {
        GroupOwner = schema.new({
            id = id.from(_N, "ResourceDownloadOwnerSetting", "GroupOwner"),
            type = "string",
            name = "GroupOwner",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        GroupPermission = schema.new({
            id = id.from(_N, "ResourceDownloadOwnerSetting", "GroupPermission"),
            type = "string",
            name = "GroupPermission",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.S3MachineLearningModelResourceData = schema.new({
    id = id.from(_N, "S3MachineLearningModelResourceData"),
    type = "structure",
    members = {
        DestinationPath = schema.new({
            id = id.from(_N, "S3MachineLearningModelResourceData", "DestinationPath"),
            type = "string",
            name = "DestinationPath",
            target_id = prelude.String.id,
        }),
        OwnerSetting = schema.new({
            id = id.from(_N, "S3MachineLearningModelResourceData", "OwnerSetting"),
            type = "structure",
            name = "OwnerSetting",
            target_id = id.from(_N, "ResourceDownloadOwnerSetting"),
            target = M.ResourceDownloadOwnerSetting,
        }),
        S3Uri = schema.new({
            id = id.from(_N, "S3MachineLearningModelResourceData", "S3Uri"),
            type = "string",
            name = "S3Uri",
            target_id = prelude.String.id,
        }),
    },
})

M.SageMakerMachineLearningModelResourceData = schema.new({
    id = id.from(_N, "SageMakerMachineLearningModelResourceData"),
    type = "structure",
    members = {
        DestinationPath = schema.new({
            id = id.from(_N, "SageMakerMachineLearningModelResourceData", "DestinationPath"),
            type = "string",
            name = "DestinationPath",
            target_id = prelude.String.id,
        }),
        OwnerSetting = schema.new({
            id = id.from(_N, "SageMakerMachineLearningModelResourceData", "OwnerSetting"),
            type = "structure",
            name = "OwnerSetting",
            target_id = id.from(_N, "ResourceDownloadOwnerSetting"),
            target = M.ResourceDownloadOwnerSetting,
        }),
        SageMakerJobArn = schema.new({
            id = id.from(_N, "SageMakerMachineLearningModelResourceData", "SageMakerJobArn"),
            type = "string",
            name = "SageMakerJobArn",
            target_id = prelude.String.id,
        }),
    },
})

M.SecretsManagerSecretResourceData = schema.new({
    id = id.from(_N, "SecretsManagerSecretResourceData"),
    type = "structure",
    members = {
        ARN = schema.new({
            id = id.from(_N, "SecretsManagerSecretResourceData", "ARN"),
            type = "string",
            name = "ARN",
            target_id = prelude.String.id,
        }),
        AdditionalStagingLabelsToDownload = schema.new({
            id = id.from(_N, "SecretsManagerSecretResourceData", "AdditionalStagingLabelsToDownload"),
            type = "list",
            name = "AdditionalStagingLabelsToDownload",
            target_id = prelude.Document.id,
            list_member = prelude.String,
        }),
    },
})

M.ResourceDataContainer = schema.new({
    id = id.from(_N, "ResourceDataContainer"),
    type = "structure",
    members = {
        LocalDeviceResourceData = schema.new({
            id = id.from(_N, "ResourceDataContainer", "LocalDeviceResourceData"),
            type = "structure",
            name = "LocalDeviceResourceData",
            target_id = id.from(_N, "LocalDeviceResourceData"),
            target = M.LocalDeviceResourceData,
        }),
        LocalVolumeResourceData = schema.new({
            id = id.from(_N, "ResourceDataContainer", "LocalVolumeResourceData"),
            type = "structure",
            name = "LocalVolumeResourceData",
            target_id = id.from(_N, "LocalVolumeResourceData"),
            target = M.LocalVolumeResourceData,
        }),
        S3MachineLearningModelResourceData = schema.new({
            id = id.from(_N, "ResourceDataContainer", "S3MachineLearningModelResourceData"),
            type = "structure",
            name = "S3MachineLearningModelResourceData",
            target_id = id.from(_N, "S3MachineLearningModelResourceData"),
            target = M.S3MachineLearningModelResourceData,
        }),
        SageMakerMachineLearningModelResourceData = schema.new({
            id = id.from(_N, "ResourceDataContainer", "SageMakerMachineLearningModelResourceData"),
            type = "structure",
            name = "SageMakerMachineLearningModelResourceData",
            target_id = id.from(_N, "SageMakerMachineLearningModelResourceData"),
            target = M.SageMakerMachineLearningModelResourceData,
        }),
        SecretsManagerSecretResourceData = schema.new({
            id = id.from(_N, "ResourceDataContainer", "SecretsManagerSecretResourceData"),
            type = "structure",
            name = "SecretsManagerSecretResourceData",
            target_id = id.from(_N, "SecretsManagerSecretResourceData"),
            target = M.SecretsManagerSecretResourceData,
        }),
    },
})

M.Resource = schema.new({
    id = id.from(_N, "Resource"),
    type = "structure",
    members = {
        Id = schema.new({
            id = id.from(_N, "Resource", "Id"),
            type = "string",
            name = "Id",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        Name = schema.new({
            id = id.from(_N, "Resource", "Name"),
            type = "string",
            name = "Name",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        ResourceDataContainer = schema.new({
            id = id.from(_N, "Resource", "ResourceDataContainer"),
            type = "structure",
            name = "ResourceDataContainer",
            target_id = id.from(_N, "ResourceDataContainer"),
            target = M.ResourceDataContainer,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.Subscription = schema.new({
    id = id.from(_N, "Subscription"),
    type = "structure",
    members = {
        Id = schema.new({
            id = id.from(_N, "Subscription", "Id"),
            type = "string",
            name = "Id",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        Source = schema.new({
            id = id.from(_N, "Subscription", "Source"),
            type = "string",
            name = "Source",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        Subject = schema.new({
            id = id.from(_N, "Subscription", "Subject"),
            type = "string",
            name = "Subject",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        Target = schema.new({
            id = id.from(_N, "Subscription", "Target"),
            type = "string",
            name = "Target",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.VersionInformation = schema.new({
    id = id.from(_N, "VersionInformation"),
    type = "structure",
    members = {
        Arn = schema.new({
            id = id.from(_N, "VersionInformation", "Arn"),
            type = "string",
            name = "Arn",
            target_id = prelude.String.id,
        }),
        CreationTimestamp = schema.new({
            id = id.from(_N, "VersionInformation", "CreationTimestamp"),
            type = "string",
            name = "CreationTimestamp",
            target_id = prelude.String.id,
        }),
        Id = schema.new({
            id = id.from(_N, "VersionInformation", "Id"),
            type = "string",
            name = "Id",
            target_id = prelude.String.id,
        }),
        Version = schema.new({
            id = id.from(_N, "VersionInformation", "Version"),
            type = "string",
            name = "Version",
            target_id = prelude.String.id,
        }),
    },
})

M.AssociateRoleToGroupInput = schema.new({
    id = id.from(_N, "AssociateRoleToGroupRequest"),
    type = "structure",
    members = {
        GroupId = schema.new({
            id = id.from(_N, "AssociateRoleToGroupInput", "GroupId"),
            type = "string",
            name = "GroupId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
        RoleArn = schema.new({
            id = id.from(_N, "AssociateRoleToGroupInput", "RoleArn"),
            type = "string",
            name = "RoleArn",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.AssociateRoleToGroupOutput = schema.new({
    id = id.from(_N, "AssociateRoleToGroupResponse"),
    type = "structure",
    members = {
        AssociatedAt = schema.new({
            id = id.from(_N, "AssociateRoleToGroupOutput", "AssociatedAt"),
            type = "string",
            name = "AssociatedAt",
            target_id = prelude.String.id,
        }),
    },
})

M.ErrorDetail = schema.new({
    id = id.from(_N, "ErrorDetail"),
    type = "structure",
    members = {
        DetailedErrorCode = schema.new({
            id = id.from(_N, "ErrorDetail", "DetailedErrorCode"),
            type = "string",
            name = "DetailedErrorCode",
            target_id = prelude.String.id,
        }),
        DetailedErrorMessage = schema.new({
            id = id.from(_N, "ErrorDetail", "DetailedErrorMessage"),
            type = "string",
            name = "DetailedErrorMessage",
            target_id = prelude.String.id,
        }),
    },
})

M.BadRequestException = schema.new({
    id = id.from(_N, "BadRequestException"),
    type = "structure",
    traits = {
        [traits.ERROR] = { value = "client" },
    },
    members = {
        ErrorDetails = schema.new({
            id = id.from(_N, "BadRequestException", "ErrorDetails"),
            type = "list",
            name = "ErrorDetails",
            target_id = prelude.Document.id,
            list_member = M.ErrorDetail,
        }),
        Message = schema.new({
            id = id.from(_N, "BadRequestException", "Message"),
            type = "string",
            name = "Message",
            target_id = prelude.String.id,
        }),
    },
})

M.InternalServerErrorException = schema.new({
    id = id.from(_N, "InternalServerErrorException"),
    type = "structure",
    traits = {
        [traits.ERROR] = { value = "server" },
    },
    members = {
        ErrorDetails = schema.new({
            id = id.from(_N, "InternalServerErrorException", "ErrorDetails"),
            type = "list",
            name = "ErrorDetails",
            target_id = prelude.Document.id,
            list_member = M.ErrorDetail,
        }),
        Message = schema.new({
            id = id.from(_N, "InternalServerErrorException", "Message"),
            type = "string",
            name = "Message",
            target_id = prelude.String.id,
        }),
    },
})

M.AssociateServiceRoleToAccountInput = schema.new({
    id = id.from(_N, "AssociateServiceRoleToAccountRequest"),
    type = "structure",
    members = {
        RoleArn = schema.new({
            id = id.from(_N, "AssociateServiceRoleToAccountInput", "RoleArn"),
            type = "string",
            name = "RoleArn",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.AssociateServiceRoleToAccountOutput = schema.new({
    id = id.from(_N, "AssociateServiceRoleToAccountResponse"),
    type = "structure",
    members = {
        AssociatedAt = schema.new({
            id = id.from(_N, "AssociateServiceRoleToAccountOutput", "AssociatedAt"),
            type = "string",
            name = "AssociatedAt",
            target_id = prelude.String.id,
        }),
    },
})

M.BulkDeployment = schema.new({
    id = id.from(_N, "BulkDeployment"),
    type = "structure",
    members = {
        BulkDeploymentArn = schema.new({
            id = id.from(_N, "BulkDeployment", "BulkDeploymentArn"),
            type = "string",
            name = "BulkDeploymentArn",
            target_id = prelude.String.id,
        }),
        BulkDeploymentId = schema.new({
            id = id.from(_N, "BulkDeployment", "BulkDeploymentId"),
            type = "string",
            name = "BulkDeploymentId",
            target_id = prelude.String.id,
        }),
        CreatedAt = schema.new({
            id = id.from(_N, "BulkDeployment", "CreatedAt"),
            type = "string",
            name = "CreatedAt",
            target_id = prelude.String.id,
        }),
    },
})

M.BulkDeploymentMetrics = schema.new({
    id = id.from(_N, "BulkDeploymentMetrics"),
    type = "structure",
    members = {
        InvalidInputRecords = schema.new({
            id = id.from(_N, "BulkDeploymentMetrics", "InvalidInputRecords"),
            type = "integer",
            name = "InvalidInputRecords",
            target_id = prelude.Integer.id,
        }),
        RecordsProcessed = schema.new({
            id = id.from(_N, "BulkDeploymentMetrics", "RecordsProcessed"),
            type = "integer",
            name = "RecordsProcessed",
            target_id = prelude.Integer.id,
        }),
        RetryAttempts = schema.new({
            id = id.from(_N, "BulkDeploymentMetrics", "RetryAttempts"),
            type = "integer",
            name = "RetryAttempts",
            target_id = prelude.Integer.id,
        }),
    },
})

M.BulkDeploymentResult = schema.new({
    id = id.from(_N, "BulkDeploymentResult"),
    type = "structure",
    members = {
        CreatedAt = schema.new({
            id = id.from(_N, "BulkDeploymentResult", "CreatedAt"),
            type = "string",
            name = "CreatedAt",
            target_id = prelude.String.id,
        }),
        DeploymentArn = schema.new({
            id = id.from(_N, "BulkDeploymentResult", "DeploymentArn"),
            type = "string",
            name = "DeploymentArn",
            target_id = prelude.String.id,
        }),
        DeploymentId = schema.new({
            id = id.from(_N, "BulkDeploymentResult", "DeploymentId"),
            type = "string",
            name = "DeploymentId",
            target_id = prelude.String.id,
        }),
        DeploymentStatus = schema.new({
            id = id.from(_N, "BulkDeploymentResult", "DeploymentStatus"),
            type = "string",
            name = "DeploymentStatus",
            target_id = prelude.String.id,
        }),
        DeploymentType = schema.new({
            id = id.from(_N, "BulkDeploymentResult", "DeploymentType"),
            type = "string",
            name = "DeploymentType",
            target_id = prelude.String.id,
        }),
        ErrorDetails = schema.new({
            id = id.from(_N, "BulkDeploymentResult", "ErrorDetails"),
            type = "list",
            name = "ErrorDetails",
            target_id = prelude.Document.id,
            list_member = M.ErrorDetail,
        }),
        ErrorMessage = schema.new({
            id = id.from(_N, "BulkDeploymentResult", "ErrorMessage"),
            type = "string",
            name = "ErrorMessage",
            target_id = prelude.String.id,
        }),
        GroupArn = schema.new({
            id = id.from(_N, "BulkDeploymentResult", "GroupArn"),
            type = "string",
            name = "GroupArn",
            target_id = prelude.String.id,
        }),
    },
})

M.ConnectorDefinitionVersion = schema.new({
    id = id.from(_N, "ConnectorDefinitionVersion"),
    type = "structure",
    members = {
        Connectors = schema.new({
            id = id.from(_N, "ConnectorDefinitionVersion", "Connectors"),
            type = "list",
            name = "Connectors",
            target_id = prelude.Document.id,
            list_member = M.Connector,
        }),
    },
})

M.CoreDefinitionVersion = schema.new({
    id = id.from(_N, "CoreDefinitionVersion"),
    type = "structure",
    members = {
        Cores = schema.new({
            id = id.from(_N, "CoreDefinitionVersion", "Cores"),
            type = "list",
            name = "Cores",
            target_id = prelude.Document.id,
            list_member = M.Core,
        }),
    },
})

M.CreateConnectorDefinitionInput = schema.new({
    id = id.from(_N, "CreateConnectorDefinitionRequest"),
    type = "structure",
    members = {
        AmznClientToken = schema.new({
            id = id.from(_N, "CreateConnectorDefinitionInput", "AmznClientToken"),
            type = "string",
            name = "AmznClientToken",
            target_id = prelude.String.id,
            traits = {
                [traits.HTTP_HEADER] = { name = "X-Amzn-Client-Token" },
            },
        }),
        InitialVersion = schema.new({
            id = id.from(_N, "CreateConnectorDefinitionInput", "InitialVersion"),
            type = "structure",
            name = "InitialVersion",
            target_id = id.from(_N, "ConnectorDefinitionVersion"),
            target = M.ConnectorDefinitionVersion,
        }),
        Name = schema.new({
            id = id.from(_N, "CreateConnectorDefinitionInput", "Name"),
            type = "string",
            name = "Name",
            target_id = prelude.String.id,
        }),
        tags = schema.new({
            id = id.from(_N, "CreateConnectorDefinitionInput", "tags"),
            type = "map",
            name = "tags",
            target_id = prelude.Document.id,
            map_key = prelude.String,
            map_value = prelude.String,
        }),
    },
})

M.CreateConnectorDefinitionOutput = schema.new({
    id = id.from(_N, "CreateConnectorDefinitionResponse"),
    type = "structure",
    members = {
        Arn = schema.new({
            id = id.from(_N, "CreateConnectorDefinitionOutput", "Arn"),
            type = "string",
            name = "Arn",
            target_id = prelude.String.id,
        }),
        CreationTimestamp = schema.new({
            id = id.from(_N, "CreateConnectorDefinitionOutput", "CreationTimestamp"),
            type = "string",
            name = "CreationTimestamp",
            target_id = prelude.String.id,
        }),
        Id = schema.new({
            id = id.from(_N, "CreateConnectorDefinitionOutput", "Id"),
            type = "string",
            name = "Id",
            target_id = prelude.String.id,
        }),
        LastUpdatedTimestamp = schema.new({
            id = id.from(_N, "CreateConnectorDefinitionOutput", "LastUpdatedTimestamp"),
            type = "string",
            name = "LastUpdatedTimestamp",
            target_id = prelude.String.id,
        }),
        LatestVersion = schema.new({
            id = id.from(_N, "CreateConnectorDefinitionOutput", "LatestVersion"),
            type = "string",
            name = "LatestVersion",
            target_id = prelude.String.id,
        }),
        LatestVersionArn = schema.new({
            id = id.from(_N, "CreateConnectorDefinitionOutput", "LatestVersionArn"),
            type = "string",
            name = "LatestVersionArn",
            target_id = prelude.String.id,
        }),
        Name = schema.new({
            id = id.from(_N, "CreateConnectorDefinitionOutput", "Name"),
            type = "string",
            name = "Name",
            target_id = prelude.String.id,
        }),
    },
})

M.CreateConnectorDefinitionVersionInput = schema.new({
    id = id.from(_N, "CreateConnectorDefinitionVersionRequest"),
    type = "structure",
    members = {
        AmznClientToken = schema.new({
            id = id.from(_N, "CreateConnectorDefinitionVersionInput", "AmznClientToken"),
            type = "string",
            name = "AmznClientToken",
            target_id = prelude.String.id,
            traits = {
                [traits.HTTP_HEADER] = { name = "X-Amzn-Client-Token" },
            },
        }),
        ConnectorDefinitionId = schema.new({
            id = id.from(_N, "CreateConnectorDefinitionVersionInput", "ConnectorDefinitionId"),
            type = "string",
            name = "ConnectorDefinitionId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
        Connectors = schema.new({
            id = id.from(_N, "CreateConnectorDefinitionVersionInput", "Connectors"),
            type = "list",
            name = "Connectors",
            target_id = prelude.Document.id,
            list_member = M.Connector,
        }),
    },
})

M.CreateConnectorDefinitionVersionOutput = schema.new({
    id = id.from(_N, "CreateConnectorDefinitionVersionResponse"),
    type = "structure",
    members = {
        Arn = schema.new({
            id = id.from(_N, "CreateConnectorDefinitionVersionOutput", "Arn"),
            type = "string",
            name = "Arn",
            target_id = prelude.String.id,
        }),
        CreationTimestamp = schema.new({
            id = id.from(_N, "CreateConnectorDefinitionVersionOutput", "CreationTimestamp"),
            type = "string",
            name = "CreationTimestamp",
            target_id = prelude.String.id,
        }),
        Id = schema.new({
            id = id.from(_N, "CreateConnectorDefinitionVersionOutput", "Id"),
            type = "string",
            name = "Id",
            target_id = prelude.String.id,
        }),
        Version = schema.new({
            id = id.from(_N, "CreateConnectorDefinitionVersionOutput", "Version"),
            type = "string",
            name = "Version",
            target_id = prelude.String.id,
        }),
    },
})

M.CreateCoreDefinitionInput = schema.new({
    id = id.from(_N, "CreateCoreDefinitionRequest"),
    type = "structure",
    members = {
        AmznClientToken = schema.new({
            id = id.from(_N, "CreateCoreDefinitionInput", "AmznClientToken"),
            type = "string",
            name = "AmznClientToken",
            target_id = prelude.String.id,
            traits = {
                [traits.HTTP_HEADER] = { name = "X-Amzn-Client-Token" },
            },
        }),
        InitialVersion = schema.new({
            id = id.from(_N, "CreateCoreDefinitionInput", "InitialVersion"),
            type = "structure",
            name = "InitialVersion",
            target_id = id.from(_N, "CoreDefinitionVersion"),
            target = M.CoreDefinitionVersion,
        }),
        Name = schema.new({
            id = id.from(_N, "CreateCoreDefinitionInput", "Name"),
            type = "string",
            name = "Name",
            target_id = prelude.String.id,
        }),
        tags = schema.new({
            id = id.from(_N, "CreateCoreDefinitionInput", "tags"),
            type = "map",
            name = "tags",
            target_id = prelude.Document.id,
            map_key = prelude.String,
            map_value = prelude.String,
        }),
    },
})

M.CreateCoreDefinitionOutput = schema.new({
    id = id.from(_N, "CreateCoreDefinitionResponse"),
    type = "structure",
    members = {
        Arn = schema.new({
            id = id.from(_N, "CreateCoreDefinitionOutput", "Arn"),
            type = "string",
            name = "Arn",
            target_id = prelude.String.id,
        }),
        CreationTimestamp = schema.new({
            id = id.from(_N, "CreateCoreDefinitionOutput", "CreationTimestamp"),
            type = "string",
            name = "CreationTimestamp",
            target_id = prelude.String.id,
        }),
        Id = schema.new({
            id = id.from(_N, "CreateCoreDefinitionOutput", "Id"),
            type = "string",
            name = "Id",
            target_id = prelude.String.id,
        }),
        LastUpdatedTimestamp = schema.new({
            id = id.from(_N, "CreateCoreDefinitionOutput", "LastUpdatedTimestamp"),
            type = "string",
            name = "LastUpdatedTimestamp",
            target_id = prelude.String.id,
        }),
        LatestVersion = schema.new({
            id = id.from(_N, "CreateCoreDefinitionOutput", "LatestVersion"),
            type = "string",
            name = "LatestVersion",
            target_id = prelude.String.id,
        }),
        LatestVersionArn = schema.new({
            id = id.from(_N, "CreateCoreDefinitionOutput", "LatestVersionArn"),
            type = "string",
            name = "LatestVersionArn",
            target_id = prelude.String.id,
        }),
        Name = schema.new({
            id = id.from(_N, "CreateCoreDefinitionOutput", "Name"),
            type = "string",
            name = "Name",
            target_id = prelude.String.id,
        }),
    },
})

M.CreateCoreDefinitionVersionInput = schema.new({
    id = id.from(_N, "CreateCoreDefinitionVersionRequest"),
    type = "structure",
    members = {
        AmznClientToken = schema.new({
            id = id.from(_N, "CreateCoreDefinitionVersionInput", "AmznClientToken"),
            type = "string",
            name = "AmznClientToken",
            target_id = prelude.String.id,
            traits = {
                [traits.HTTP_HEADER] = { name = "X-Amzn-Client-Token" },
            },
        }),
        CoreDefinitionId = schema.new({
            id = id.from(_N, "CreateCoreDefinitionVersionInput", "CoreDefinitionId"),
            type = "string",
            name = "CoreDefinitionId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
        Cores = schema.new({
            id = id.from(_N, "CreateCoreDefinitionVersionInput", "Cores"),
            type = "list",
            name = "Cores",
            target_id = prelude.Document.id,
            list_member = M.Core,
        }),
    },
})

M.CreateCoreDefinitionVersionOutput = schema.new({
    id = id.from(_N, "CreateCoreDefinitionVersionResponse"),
    type = "structure",
    members = {
        Arn = schema.new({
            id = id.from(_N, "CreateCoreDefinitionVersionOutput", "Arn"),
            type = "string",
            name = "Arn",
            target_id = prelude.String.id,
        }),
        CreationTimestamp = schema.new({
            id = id.from(_N, "CreateCoreDefinitionVersionOutput", "CreationTimestamp"),
            type = "string",
            name = "CreationTimestamp",
            target_id = prelude.String.id,
        }),
        Id = schema.new({
            id = id.from(_N, "CreateCoreDefinitionVersionOutput", "Id"),
            type = "string",
            name = "Id",
            target_id = prelude.String.id,
        }),
        Version = schema.new({
            id = id.from(_N, "CreateCoreDefinitionVersionOutput", "Version"),
            type = "string",
            name = "Version",
            target_id = prelude.String.id,
        }),
    },
})

M.CreateDeploymentInput = schema.new({
    id = id.from(_N, "CreateDeploymentRequest"),
    type = "structure",
    members = {
        AmznClientToken = schema.new({
            id = id.from(_N, "CreateDeploymentInput", "AmznClientToken"),
            type = "string",
            name = "AmznClientToken",
            target_id = prelude.String.id,
            traits = {
                [traits.HTTP_HEADER] = { name = "X-Amzn-Client-Token" },
            },
        }),
        DeploymentId = schema.new({
            id = id.from(_N, "CreateDeploymentInput", "DeploymentId"),
            type = "string",
            name = "DeploymentId",
            target_id = prelude.String.id,
        }),
        DeploymentType = schema.new({
            id = id.from(_N, "CreateDeploymentInput", "DeploymentType"),
            type = "string",
            name = "DeploymentType",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        GroupId = schema.new({
            id = id.from(_N, "CreateDeploymentInput", "GroupId"),
            type = "string",
            name = "GroupId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
        GroupVersionId = schema.new({
            id = id.from(_N, "CreateDeploymentInput", "GroupVersionId"),
            type = "string",
            name = "GroupVersionId",
            target_id = prelude.String.id,
        }),
    },
})

M.CreateDeploymentOutput = schema.new({
    id = id.from(_N, "CreateDeploymentResponse"),
    type = "structure",
    members = {
        DeploymentArn = schema.new({
            id = id.from(_N, "CreateDeploymentOutput", "DeploymentArn"),
            type = "string",
            name = "DeploymentArn",
            target_id = prelude.String.id,
        }),
        DeploymentId = schema.new({
            id = id.from(_N, "CreateDeploymentOutput", "DeploymentId"),
            type = "string",
            name = "DeploymentId",
            target_id = prelude.String.id,
        }),
    },
})

M.DeviceDefinitionVersion = schema.new({
    id = id.from(_N, "DeviceDefinitionVersion"),
    type = "structure",
    members = {
        Devices = schema.new({
            id = id.from(_N, "DeviceDefinitionVersion", "Devices"),
            type = "list",
            name = "Devices",
            target_id = prelude.Document.id,
            list_member = M.Device,
        }),
    },
})

M.CreateDeviceDefinitionInput = schema.new({
    id = id.from(_N, "CreateDeviceDefinitionRequest"),
    type = "structure",
    members = {
        AmznClientToken = schema.new({
            id = id.from(_N, "CreateDeviceDefinitionInput", "AmznClientToken"),
            type = "string",
            name = "AmznClientToken",
            target_id = prelude.String.id,
            traits = {
                [traits.HTTP_HEADER] = { name = "X-Amzn-Client-Token" },
            },
        }),
        InitialVersion = schema.new({
            id = id.from(_N, "CreateDeviceDefinitionInput", "InitialVersion"),
            type = "structure",
            name = "InitialVersion",
            target_id = id.from(_N, "DeviceDefinitionVersion"),
            target = M.DeviceDefinitionVersion,
        }),
        Name = schema.new({
            id = id.from(_N, "CreateDeviceDefinitionInput", "Name"),
            type = "string",
            name = "Name",
            target_id = prelude.String.id,
        }),
        tags = schema.new({
            id = id.from(_N, "CreateDeviceDefinitionInput", "tags"),
            type = "map",
            name = "tags",
            target_id = prelude.Document.id,
            map_key = prelude.String,
            map_value = prelude.String,
        }),
    },
})

M.CreateDeviceDefinitionOutput = schema.new({
    id = id.from(_N, "CreateDeviceDefinitionResponse"),
    type = "structure",
    members = {
        Arn = schema.new({
            id = id.from(_N, "CreateDeviceDefinitionOutput", "Arn"),
            type = "string",
            name = "Arn",
            target_id = prelude.String.id,
        }),
        CreationTimestamp = schema.new({
            id = id.from(_N, "CreateDeviceDefinitionOutput", "CreationTimestamp"),
            type = "string",
            name = "CreationTimestamp",
            target_id = prelude.String.id,
        }),
        Id = schema.new({
            id = id.from(_N, "CreateDeviceDefinitionOutput", "Id"),
            type = "string",
            name = "Id",
            target_id = prelude.String.id,
        }),
        LastUpdatedTimestamp = schema.new({
            id = id.from(_N, "CreateDeviceDefinitionOutput", "LastUpdatedTimestamp"),
            type = "string",
            name = "LastUpdatedTimestamp",
            target_id = prelude.String.id,
        }),
        LatestVersion = schema.new({
            id = id.from(_N, "CreateDeviceDefinitionOutput", "LatestVersion"),
            type = "string",
            name = "LatestVersion",
            target_id = prelude.String.id,
        }),
        LatestVersionArn = schema.new({
            id = id.from(_N, "CreateDeviceDefinitionOutput", "LatestVersionArn"),
            type = "string",
            name = "LatestVersionArn",
            target_id = prelude.String.id,
        }),
        Name = schema.new({
            id = id.from(_N, "CreateDeviceDefinitionOutput", "Name"),
            type = "string",
            name = "Name",
            target_id = prelude.String.id,
        }),
    },
})

M.CreateDeviceDefinitionVersionInput = schema.new({
    id = id.from(_N, "CreateDeviceDefinitionVersionRequest"),
    type = "structure",
    members = {
        AmznClientToken = schema.new({
            id = id.from(_N, "CreateDeviceDefinitionVersionInput", "AmznClientToken"),
            type = "string",
            name = "AmznClientToken",
            target_id = prelude.String.id,
            traits = {
                [traits.HTTP_HEADER] = { name = "X-Amzn-Client-Token" },
            },
        }),
        DeviceDefinitionId = schema.new({
            id = id.from(_N, "CreateDeviceDefinitionVersionInput", "DeviceDefinitionId"),
            type = "string",
            name = "DeviceDefinitionId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
        Devices = schema.new({
            id = id.from(_N, "CreateDeviceDefinitionVersionInput", "Devices"),
            type = "list",
            name = "Devices",
            target_id = prelude.Document.id,
            list_member = M.Device,
        }),
    },
})

M.CreateDeviceDefinitionVersionOutput = schema.new({
    id = id.from(_N, "CreateDeviceDefinitionVersionResponse"),
    type = "structure",
    members = {
        Arn = schema.new({
            id = id.from(_N, "CreateDeviceDefinitionVersionOutput", "Arn"),
            type = "string",
            name = "Arn",
            target_id = prelude.String.id,
        }),
        CreationTimestamp = schema.new({
            id = id.from(_N, "CreateDeviceDefinitionVersionOutput", "CreationTimestamp"),
            type = "string",
            name = "CreationTimestamp",
            target_id = prelude.String.id,
        }),
        Id = schema.new({
            id = id.from(_N, "CreateDeviceDefinitionVersionOutput", "Id"),
            type = "string",
            name = "Id",
            target_id = prelude.String.id,
        }),
        Version = schema.new({
            id = id.from(_N, "CreateDeviceDefinitionVersionOutput", "Version"),
            type = "string",
            name = "Version",
            target_id = prelude.String.id,
        }),
    },
})

M.FunctionDefaultExecutionConfig = schema.new({
    id = id.from(_N, "FunctionDefaultExecutionConfig"),
    type = "structure",
    members = {
        IsolationMode = schema.new({
            id = id.from(_N, "FunctionDefaultExecutionConfig", "IsolationMode"),
            type = "string",
            name = "IsolationMode",
            target_id = prelude.String.id,
        }),
        RunAs = schema.new({
            id = id.from(_N, "FunctionDefaultExecutionConfig", "RunAs"),
            type = "structure",
            name = "RunAs",
            target_id = id.from(_N, "FunctionRunAsConfig"),
            target = M.FunctionRunAsConfig,
        }),
    },
})

M.FunctionDefaultConfig = schema.new({
    id = id.from(_N, "FunctionDefaultConfig"),
    type = "structure",
    members = {
        Execution = schema.new({
            id = id.from(_N, "FunctionDefaultConfig", "Execution"),
            type = "structure",
            name = "Execution",
            target_id = id.from(_N, "FunctionDefaultExecutionConfig"),
            target = M.FunctionDefaultExecutionConfig,
        }),
    },
})

M.FunctionDefinitionVersion = schema.new({
    id = id.from(_N, "FunctionDefinitionVersion"),
    type = "structure",
    members = {
        DefaultConfig = schema.new({
            id = id.from(_N, "FunctionDefinitionVersion", "DefaultConfig"),
            type = "structure",
            name = "DefaultConfig",
            target_id = id.from(_N, "FunctionDefaultConfig"),
            target = M.FunctionDefaultConfig,
        }),
        Functions = schema.new({
            id = id.from(_N, "FunctionDefinitionVersion", "Functions"),
            type = "list",
            name = "Functions",
            target_id = prelude.Document.id,
            list_member = M.Function,
        }),
    },
})

M.CreateFunctionDefinitionInput = schema.new({
    id = id.from(_N, "CreateFunctionDefinitionRequest"),
    type = "structure",
    members = {
        AmznClientToken = schema.new({
            id = id.from(_N, "CreateFunctionDefinitionInput", "AmznClientToken"),
            type = "string",
            name = "AmznClientToken",
            target_id = prelude.String.id,
            traits = {
                [traits.HTTP_HEADER] = { name = "X-Amzn-Client-Token" },
            },
        }),
        InitialVersion = schema.new({
            id = id.from(_N, "CreateFunctionDefinitionInput", "InitialVersion"),
            type = "structure",
            name = "InitialVersion",
            target_id = id.from(_N, "FunctionDefinitionVersion"),
            target = M.FunctionDefinitionVersion,
        }),
        Name = schema.new({
            id = id.from(_N, "CreateFunctionDefinitionInput", "Name"),
            type = "string",
            name = "Name",
            target_id = prelude.String.id,
        }),
        tags = schema.new({
            id = id.from(_N, "CreateFunctionDefinitionInput", "tags"),
            type = "map",
            name = "tags",
            target_id = prelude.Document.id,
            map_key = prelude.String,
            map_value = prelude.String,
        }),
    },
})

M.CreateFunctionDefinitionOutput = schema.new({
    id = id.from(_N, "CreateFunctionDefinitionResponse"),
    type = "structure",
    members = {
        Arn = schema.new({
            id = id.from(_N, "CreateFunctionDefinitionOutput", "Arn"),
            type = "string",
            name = "Arn",
            target_id = prelude.String.id,
        }),
        CreationTimestamp = schema.new({
            id = id.from(_N, "CreateFunctionDefinitionOutput", "CreationTimestamp"),
            type = "string",
            name = "CreationTimestamp",
            target_id = prelude.String.id,
        }),
        Id = schema.new({
            id = id.from(_N, "CreateFunctionDefinitionOutput", "Id"),
            type = "string",
            name = "Id",
            target_id = prelude.String.id,
        }),
        LastUpdatedTimestamp = schema.new({
            id = id.from(_N, "CreateFunctionDefinitionOutput", "LastUpdatedTimestamp"),
            type = "string",
            name = "LastUpdatedTimestamp",
            target_id = prelude.String.id,
        }),
        LatestVersion = schema.new({
            id = id.from(_N, "CreateFunctionDefinitionOutput", "LatestVersion"),
            type = "string",
            name = "LatestVersion",
            target_id = prelude.String.id,
        }),
        LatestVersionArn = schema.new({
            id = id.from(_N, "CreateFunctionDefinitionOutput", "LatestVersionArn"),
            type = "string",
            name = "LatestVersionArn",
            target_id = prelude.String.id,
        }),
        Name = schema.new({
            id = id.from(_N, "CreateFunctionDefinitionOutput", "Name"),
            type = "string",
            name = "Name",
            target_id = prelude.String.id,
        }),
    },
})

M.CreateFunctionDefinitionVersionInput = schema.new({
    id = id.from(_N, "CreateFunctionDefinitionVersionRequest"),
    type = "structure",
    members = {
        AmznClientToken = schema.new({
            id = id.from(_N, "CreateFunctionDefinitionVersionInput", "AmznClientToken"),
            type = "string",
            name = "AmznClientToken",
            target_id = prelude.String.id,
            traits = {
                [traits.HTTP_HEADER] = { name = "X-Amzn-Client-Token" },
            },
        }),
        DefaultConfig = schema.new({
            id = id.from(_N, "CreateFunctionDefinitionVersionInput", "DefaultConfig"),
            type = "structure",
            name = "DefaultConfig",
            target_id = id.from(_N, "FunctionDefaultConfig"),
            target = M.FunctionDefaultConfig,
        }),
        FunctionDefinitionId = schema.new({
            id = id.from(_N, "CreateFunctionDefinitionVersionInput", "FunctionDefinitionId"),
            type = "string",
            name = "FunctionDefinitionId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
        Functions = schema.new({
            id = id.from(_N, "CreateFunctionDefinitionVersionInput", "Functions"),
            type = "list",
            name = "Functions",
            target_id = prelude.Document.id,
            list_member = M.Function,
        }),
    },
})

M.CreateFunctionDefinitionVersionOutput = schema.new({
    id = id.from(_N, "CreateFunctionDefinitionVersionResponse"),
    type = "structure",
    members = {
        Arn = schema.new({
            id = id.from(_N, "CreateFunctionDefinitionVersionOutput", "Arn"),
            type = "string",
            name = "Arn",
            target_id = prelude.String.id,
        }),
        CreationTimestamp = schema.new({
            id = id.from(_N, "CreateFunctionDefinitionVersionOutput", "CreationTimestamp"),
            type = "string",
            name = "CreationTimestamp",
            target_id = prelude.String.id,
        }),
        Id = schema.new({
            id = id.from(_N, "CreateFunctionDefinitionVersionOutput", "Id"),
            type = "string",
            name = "Id",
            target_id = prelude.String.id,
        }),
        Version = schema.new({
            id = id.from(_N, "CreateFunctionDefinitionVersionOutput", "Version"),
            type = "string",
            name = "Version",
            target_id = prelude.String.id,
        }),
    },
})

M.GroupVersion = schema.new({
    id = id.from(_N, "GroupVersion"),
    type = "structure",
    members = {
        ConnectorDefinitionVersionArn = schema.new({
            id = id.from(_N, "GroupVersion", "ConnectorDefinitionVersionArn"),
            type = "string",
            name = "ConnectorDefinitionVersionArn",
            target_id = prelude.String.id,
        }),
        CoreDefinitionVersionArn = schema.new({
            id = id.from(_N, "GroupVersion", "CoreDefinitionVersionArn"),
            type = "string",
            name = "CoreDefinitionVersionArn",
            target_id = prelude.String.id,
        }),
        DeviceDefinitionVersionArn = schema.new({
            id = id.from(_N, "GroupVersion", "DeviceDefinitionVersionArn"),
            type = "string",
            name = "DeviceDefinitionVersionArn",
            target_id = prelude.String.id,
        }),
        FunctionDefinitionVersionArn = schema.new({
            id = id.from(_N, "GroupVersion", "FunctionDefinitionVersionArn"),
            type = "string",
            name = "FunctionDefinitionVersionArn",
            target_id = prelude.String.id,
        }),
        LoggerDefinitionVersionArn = schema.new({
            id = id.from(_N, "GroupVersion", "LoggerDefinitionVersionArn"),
            type = "string",
            name = "LoggerDefinitionVersionArn",
            target_id = prelude.String.id,
        }),
        ResourceDefinitionVersionArn = schema.new({
            id = id.from(_N, "GroupVersion", "ResourceDefinitionVersionArn"),
            type = "string",
            name = "ResourceDefinitionVersionArn",
            target_id = prelude.String.id,
        }),
        SubscriptionDefinitionVersionArn = schema.new({
            id = id.from(_N, "GroupVersion", "SubscriptionDefinitionVersionArn"),
            type = "string",
            name = "SubscriptionDefinitionVersionArn",
            target_id = prelude.String.id,
        }),
    },
})

M.CreateGroupInput = schema.new({
    id = id.from(_N, "CreateGroupRequest"),
    type = "structure",
    members = {
        AmznClientToken = schema.new({
            id = id.from(_N, "CreateGroupInput", "AmznClientToken"),
            type = "string",
            name = "AmznClientToken",
            target_id = prelude.String.id,
            traits = {
                [traits.HTTP_HEADER] = { name = "X-Amzn-Client-Token" },
            },
        }),
        InitialVersion = schema.new({
            id = id.from(_N, "CreateGroupInput", "InitialVersion"),
            type = "structure",
            name = "InitialVersion",
            target_id = id.from(_N, "GroupVersion"),
            target = M.GroupVersion,
        }),
        Name = schema.new({
            id = id.from(_N, "CreateGroupInput", "Name"),
            type = "string",
            name = "Name",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        tags = schema.new({
            id = id.from(_N, "CreateGroupInput", "tags"),
            type = "map",
            name = "tags",
            target_id = prelude.Document.id,
            map_key = prelude.String,
            map_value = prelude.String,
        }),
    },
})

M.CreateGroupOutput = schema.new({
    id = id.from(_N, "CreateGroupResponse"),
    type = "structure",
    members = {
        Arn = schema.new({
            id = id.from(_N, "CreateGroupOutput", "Arn"),
            type = "string",
            name = "Arn",
            target_id = prelude.String.id,
        }),
        CreationTimestamp = schema.new({
            id = id.from(_N, "CreateGroupOutput", "CreationTimestamp"),
            type = "string",
            name = "CreationTimestamp",
            target_id = prelude.String.id,
        }),
        Id = schema.new({
            id = id.from(_N, "CreateGroupOutput", "Id"),
            type = "string",
            name = "Id",
            target_id = prelude.String.id,
        }),
        LastUpdatedTimestamp = schema.new({
            id = id.from(_N, "CreateGroupOutput", "LastUpdatedTimestamp"),
            type = "string",
            name = "LastUpdatedTimestamp",
            target_id = prelude.String.id,
        }),
        LatestVersion = schema.new({
            id = id.from(_N, "CreateGroupOutput", "LatestVersion"),
            type = "string",
            name = "LatestVersion",
            target_id = prelude.String.id,
        }),
        LatestVersionArn = schema.new({
            id = id.from(_N, "CreateGroupOutput", "LatestVersionArn"),
            type = "string",
            name = "LatestVersionArn",
            target_id = prelude.String.id,
        }),
        Name = schema.new({
            id = id.from(_N, "CreateGroupOutput", "Name"),
            type = "string",
            name = "Name",
            target_id = prelude.String.id,
        }),
    },
})

M.CreateGroupCertificateAuthorityInput = schema.new({
    id = id.from(_N, "CreateGroupCertificateAuthorityRequest"),
    type = "structure",
    members = {
        AmznClientToken = schema.new({
            id = id.from(_N, "CreateGroupCertificateAuthorityInput", "AmznClientToken"),
            type = "string",
            name = "AmznClientToken",
            target_id = prelude.String.id,
            traits = {
                [traits.HTTP_HEADER] = { name = "X-Amzn-Client-Token" },
            },
        }),
        GroupId = schema.new({
            id = id.from(_N, "CreateGroupCertificateAuthorityInput", "GroupId"),
            type = "string",
            name = "GroupId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
    },
})

M.CreateGroupCertificateAuthorityOutput = schema.new({
    id = id.from(_N, "CreateGroupCertificateAuthorityResponse"),
    type = "structure",
    members = {
        GroupCertificateAuthorityArn = schema.new({
            id = id.from(_N, "CreateGroupCertificateAuthorityOutput", "GroupCertificateAuthorityArn"),
            type = "string",
            name = "GroupCertificateAuthorityArn",
            target_id = prelude.String.id,
        }),
    },
})

M.CreateGroupVersionInput = schema.new({
    id = id.from(_N, "CreateGroupVersionRequest"),
    type = "structure",
    members = {
        AmznClientToken = schema.new({
            id = id.from(_N, "CreateGroupVersionInput", "AmznClientToken"),
            type = "string",
            name = "AmznClientToken",
            target_id = prelude.String.id,
            traits = {
                [traits.HTTP_HEADER] = { name = "X-Amzn-Client-Token" },
            },
        }),
        ConnectorDefinitionVersionArn = schema.new({
            id = id.from(_N, "CreateGroupVersionInput", "ConnectorDefinitionVersionArn"),
            type = "string",
            name = "ConnectorDefinitionVersionArn",
            target_id = prelude.String.id,
        }),
        CoreDefinitionVersionArn = schema.new({
            id = id.from(_N, "CreateGroupVersionInput", "CoreDefinitionVersionArn"),
            type = "string",
            name = "CoreDefinitionVersionArn",
            target_id = prelude.String.id,
        }),
        DeviceDefinitionVersionArn = schema.new({
            id = id.from(_N, "CreateGroupVersionInput", "DeviceDefinitionVersionArn"),
            type = "string",
            name = "DeviceDefinitionVersionArn",
            target_id = prelude.String.id,
        }),
        FunctionDefinitionVersionArn = schema.new({
            id = id.from(_N, "CreateGroupVersionInput", "FunctionDefinitionVersionArn"),
            type = "string",
            name = "FunctionDefinitionVersionArn",
            target_id = prelude.String.id,
        }),
        GroupId = schema.new({
            id = id.from(_N, "CreateGroupVersionInput", "GroupId"),
            type = "string",
            name = "GroupId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
        LoggerDefinitionVersionArn = schema.new({
            id = id.from(_N, "CreateGroupVersionInput", "LoggerDefinitionVersionArn"),
            type = "string",
            name = "LoggerDefinitionVersionArn",
            target_id = prelude.String.id,
        }),
        ResourceDefinitionVersionArn = schema.new({
            id = id.from(_N, "CreateGroupVersionInput", "ResourceDefinitionVersionArn"),
            type = "string",
            name = "ResourceDefinitionVersionArn",
            target_id = prelude.String.id,
        }),
        SubscriptionDefinitionVersionArn = schema.new({
            id = id.from(_N, "CreateGroupVersionInput", "SubscriptionDefinitionVersionArn"),
            type = "string",
            name = "SubscriptionDefinitionVersionArn",
            target_id = prelude.String.id,
        }),
    },
})

M.CreateGroupVersionOutput = schema.new({
    id = id.from(_N, "CreateGroupVersionResponse"),
    type = "structure",
    members = {
        Arn = schema.new({
            id = id.from(_N, "CreateGroupVersionOutput", "Arn"),
            type = "string",
            name = "Arn",
            target_id = prelude.String.id,
        }),
        CreationTimestamp = schema.new({
            id = id.from(_N, "CreateGroupVersionOutput", "CreationTimestamp"),
            type = "string",
            name = "CreationTimestamp",
            target_id = prelude.String.id,
        }),
        Id = schema.new({
            id = id.from(_N, "CreateGroupVersionOutput", "Id"),
            type = "string",
            name = "Id",
            target_id = prelude.String.id,
        }),
        Version = schema.new({
            id = id.from(_N, "CreateGroupVersionOutput", "Version"),
            type = "string",
            name = "Version",
            target_id = prelude.String.id,
        }),
    },
})

M.LoggerDefinitionVersion = schema.new({
    id = id.from(_N, "LoggerDefinitionVersion"),
    type = "structure",
    members = {
        Loggers = schema.new({
            id = id.from(_N, "LoggerDefinitionVersion", "Loggers"),
            type = "list",
            name = "Loggers",
            target_id = prelude.Document.id,
            list_member = M.Logger,
        }),
    },
})

M.CreateLoggerDefinitionInput = schema.new({
    id = id.from(_N, "CreateLoggerDefinitionRequest"),
    type = "structure",
    members = {
        AmznClientToken = schema.new({
            id = id.from(_N, "CreateLoggerDefinitionInput", "AmznClientToken"),
            type = "string",
            name = "AmznClientToken",
            target_id = prelude.String.id,
            traits = {
                [traits.HTTP_HEADER] = { name = "X-Amzn-Client-Token" },
            },
        }),
        InitialVersion = schema.new({
            id = id.from(_N, "CreateLoggerDefinitionInput", "InitialVersion"),
            type = "structure",
            name = "InitialVersion",
            target_id = id.from(_N, "LoggerDefinitionVersion"),
            target = M.LoggerDefinitionVersion,
        }),
        Name = schema.new({
            id = id.from(_N, "CreateLoggerDefinitionInput", "Name"),
            type = "string",
            name = "Name",
            target_id = prelude.String.id,
        }),
        tags = schema.new({
            id = id.from(_N, "CreateLoggerDefinitionInput", "tags"),
            type = "map",
            name = "tags",
            target_id = prelude.Document.id,
            map_key = prelude.String,
            map_value = prelude.String,
        }),
    },
})

M.CreateLoggerDefinitionOutput = schema.new({
    id = id.from(_N, "CreateLoggerDefinitionResponse"),
    type = "structure",
    members = {
        Arn = schema.new({
            id = id.from(_N, "CreateLoggerDefinitionOutput", "Arn"),
            type = "string",
            name = "Arn",
            target_id = prelude.String.id,
        }),
        CreationTimestamp = schema.new({
            id = id.from(_N, "CreateLoggerDefinitionOutput", "CreationTimestamp"),
            type = "string",
            name = "CreationTimestamp",
            target_id = prelude.String.id,
        }),
        Id = schema.new({
            id = id.from(_N, "CreateLoggerDefinitionOutput", "Id"),
            type = "string",
            name = "Id",
            target_id = prelude.String.id,
        }),
        LastUpdatedTimestamp = schema.new({
            id = id.from(_N, "CreateLoggerDefinitionOutput", "LastUpdatedTimestamp"),
            type = "string",
            name = "LastUpdatedTimestamp",
            target_id = prelude.String.id,
        }),
        LatestVersion = schema.new({
            id = id.from(_N, "CreateLoggerDefinitionOutput", "LatestVersion"),
            type = "string",
            name = "LatestVersion",
            target_id = prelude.String.id,
        }),
        LatestVersionArn = schema.new({
            id = id.from(_N, "CreateLoggerDefinitionOutput", "LatestVersionArn"),
            type = "string",
            name = "LatestVersionArn",
            target_id = prelude.String.id,
        }),
        Name = schema.new({
            id = id.from(_N, "CreateLoggerDefinitionOutput", "Name"),
            type = "string",
            name = "Name",
            target_id = prelude.String.id,
        }),
    },
})

M.CreateLoggerDefinitionVersionInput = schema.new({
    id = id.from(_N, "CreateLoggerDefinitionVersionRequest"),
    type = "structure",
    members = {
        AmznClientToken = schema.new({
            id = id.from(_N, "CreateLoggerDefinitionVersionInput", "AmznClientToken"),
            type = "string",
            name = "AmznClientToken",
            target_id = prelude.String.id,
            traits = {
                [traits.HTTP_HEADER] = { name = "X-Amzn-Client-Token" },
            },
        }),
        LoggerDefinitionId = schema.new({
            id = id.from(_N, "CreateLoggerDefinitionVersionInput", "LoggerDefinitionId"),
            type = "string",
            name = "LoggerDefinitionId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
        Loggers = schema.new({
            id = id.from(_N, "CreateLoggerDefinitionVersionInput", "Loggers"),
            type = "list",
            name = "Loggers",
            target_id = prelude.Document.id,
            list_member = M.Logger,
        }),
    },
})

M.CreateLoggerDefinitionVersionOutput = schema.new({
    id = id.from(_N, "CreateLoggerDefinitionVersionResponse"),
    type = "structure",
    members = {
        Arn = schema.new({
            id = id.from(_N, "CreateLoggerDefinitionVersionOutput", "Arn"),
            type = "string",
            name = "Arn",
            target_id = prelude.String.id,
        }),
        CreationTimestamp = schema.new({
            id = id.from(_N, "CreateLoggerDefinitionVersionOutput", "CreationTimestamp"),
            type = "string",
            name = "CreationTimestamp",
            target_id = prelude.String.id,
        }),
        Id = schema.new({
            id = id.from(_N, "CreateLoggerDefinitionVersionOutput", "Id"),
            type = "string",
            name = "Id",
            target_id = prelude.String.id,
        }),
        Version = schema.new({
            id = id.from(_N, "CreateLoggerDefinitionVersionOutput", "Version"),
            type = "string",
            name = "Version",
            target_id = prelude.String.id,
        }),
    },
})

M.ResourceDefinitionVersion = schema.new({
    id = id.from(_N, "ResourceDefinitionVersion"),
    type = "structure",
    members = {
        Resources = schema.new({
            id = id.from(_N, "ResourceDefinitionVersion", "Resources"),
            type = "list",
            name = "Resources",
            target_id = prelude.Document.id,
            list_member = M.Resource,
        }),
    },
})

M.CreateResourceDefinitionInput = schema.new({
    id = id.from(_N, "CreateResourceDefinitionRequest"),
    type = "structure",
    members = {
        AmznClientToken = schema.new({
            id = id.from(_N, "CreateResourceDefinitionInput", "AmznClientToken"),
            type = "string",
            name = "AmznClientToken",
            target_id = prelude.String.id,
            traits = {
                [traits.HTTP_HEADER] = { name = "X-Amzn-Client-Token" },
            },
        }),
        InitialVersion = schema.new({
            id = id.from(_N, "CreateResourceDefinitionInput", "InitialVersion"),
            type = "structure",
            name = "InitialVersion",
            target_id = id.from(_N, "ResourceDefinitionVersion"),
            target = M.ResourceDefinitionVersion,
        }),
        Name = schema.new({
            id = id.from(_N, "CreateResourceDefinitionInput", "Name"),
            type = "string",
            name = "Name",
            target_id = prelude.String.id,
        }),
        tags = schema.new({
            id = id.from(_N, "CreateResourceDefinitionInput", "tags"),
            type = "map",
            name = "tags",
            target_id = prelude.Document.id,
            map_key = prelude.String,
            map_value = prelude.String,
        }),
    },
})

M.CreateResourceDefinitionOutput = schema.new({
    id = id.from(_N, "CreateResourceDefinitionResponse"),
    type = "structure",
    members = {
        Arn = schema.new({
            id = id.from(_N, "CreateResourceDefinitionOutput", "Arn"),
            type = "string",
            name = "Arn",
            target_id = prelude.String.id,
        }),
        CreationTimestamp = schema.new({
            id = id.from(_N, "CreateResourceDefinitionOutput", "CreationTimestamp"),
            type = "string",
            name = "CreationTimestamp",
            target_id = prelude.String.id,
        }),
        Id = schema.new({
            id = id.from(_N, "CreateResourceDefinitionOutput", "Id"),
            type = "string",
            name = "Id",
            target_id = prelude.String.id,
        }),
        LastUpdatedTimestamp = schema.new({
            id = id.from(_N, "CreateResourceDefinitionOutput", "LastUpdatedTimestamp"),
            type = "string",
            name = "LastUpdatedTimestamp",
            target_id = prelude.String.id,
        }),
        LatestVersion = schema.new({
            id = id.from(_N, "CreateResourceDefinitionOutput", "LatestVersion"),
            type = "string",
            name = "LatestVersion",
            target_id = prelude.String.id,
        }),
        LatestVersionArn = schema.new({
            id = id.from(_N, "CreateResourceDefinitionOutput", "LatestVersionArn"),
            type = "string",
            name = "LatestVersionArn",
            target_id = prelude.String.id,
        }),
        Name = schema.new({
            id = id.from(_N, "CreateResourceDefinitionOutput", "Name"),
            type = "string",
            name = "Name",
            target_id = prelude.String.id,
        }),
    },
})

M.CreateResourceDefinitionVersionInput = schema.new({
    id = id.from(_N, "CreateResourceDefinitionVersionRequest"),
    type = "structure",
    members = {
        AmznClientToken = schema.new({
            id = id.from(_N, "CreateResourceDefinitionVersionInput", "AmznClientToken"),
            type = "string",
            name = "AmznClientToken",
            target_id = prelude.String.id,
            traits = {
                [traits.HTTP_HEADER] = { name = "X-Amzn-Client-Token" },
            },
        }),
        ResourceDefinitionId = schema.new({
            id = id.from(_N, "CreateResourceDefinitionVersionInput", "ResourceDefinitionId"),
            type = "string",
            name = "ResourceDefinitionId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
        Resources = schema.new({
            id = id.from(_N, "CreateResourceDefinitionVersionInput", "Resources"),
            type = "list",
            name = "Resources",
            target_id = prelude.Document.id,
            list_member = M.Resource,
        }),
    },
})

M.CreateResourceDefinitionVersionOutput = schema.new({
    id = id.from(_N, "CreateResourceDefinitionVersionResponse"),
    type = "structure",
    members = {
        Arn = schema.new({
            id = id.from(_N, "CreateResourceDefinitionVersionOutput", "Arn"),
            type = "string",
            name = "Arn",
            target_id = prelude.String.id,
        }),
        CreationTimestamp = schema.new({
            id = id.from(_N, "CreateResourceDefinitionVersionOutput", "CreationTimestamp"),
            type = "string",
            name = "CreationTimestamp",
            target_id = prelude.String.id,
        }),
        Id = schema.new({
            id = id.from(_N, "CreateResourceDefinitionVersionOutput", "Id"),
            type = "string",
            name = "Id",
            target_id = prelude.String.id,
        }),
        Version = schema.new({
            id = id.from(_N, "CreateResourceDefinitionVersionOutput", "Version"),
            type = "string",
            name = "Version",
            target_id = prelude.String.id,
        }),
    },
})

M.CreateSoftwareUpdateJobInput = schema.new({
    id = id.from(_N, "CreateSoftwareUpdateJobRequest"),
    type = "structure",
    members = {
        AmznClientToken = schema.new({
            id = id.from(_N, "CreateSoftwareUpdateJobInput", "AmznClientToken"),
            type = "string",
            name = "AmznClientToken",
            target_id = prelude.String.id,
            traits = {
                [traits.HTTP_HEADER] = { name = "X-Amzn-Client-Token" },
            },
        }),
        S3UrlSignerRole = schema.new({
            id = id.from(_N, "CreateSoftwareUpdateJobInput", "S3UrlSignerRole"),
            type = "string",
            name = "S3UrlSignerRole",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        SoftwareToUpdate = schema.new({
            id = id.from(_N, "CreateSoftwareUpdateJobInput", "SoftwareToUpdate"),
            type = "string",
            name = "SoftwareToUpdate",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        UpdateAgentLogLevel = schema.new({
            id = id.from(_N, "CreateSoftwareUpdateJobInput", "UpdateAgentLogLevel"),
            type = "string",
            name = "UpdateAgentLogLevel",
            target_id = prelude.String.id,
        }),
        UpdateTargets = schema.new({
            id = id.from(_N, "CreateSoftwareUpdateJobInput", "UpdateTargets"),
            type = "list",
            name = "UpdateTargets",
            target_id = prelude.Document.id,
            list_member = prelude.String,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        UpdateTargetsArchitecture = schema.new({
            id = id.from(_N, "CreateSoftwareUpdateJobInput", "UpdateTargetsArchitecture"),
            type = "string",
            name = "UpdateTargetsArchitecture",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        UpdateTargetsOperatingSystem = schema.new({
            id = id.from(_N, "CreateSoftwareUpdateJobInput", "UpdateTargetsOperatingSystem"),
            type = "string",
            name = "UpdateTargetsOperatingSystem",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.CreateSoftwareUpdateJobOutput = schema.new({
    id = id.from(_N, "CreateSoftwareUpdateJobResponse"),
    type = "structure",
    members = {
        IotJobArn = schema.new({
            id = id.from(_N, "CreateSoftwareUpdateJobOutput", "IotJobArn"),
            type = "string",
            name = "IotJobArn",
            target_id = prelude.String.id,
        }),
        IotJobId = schema.new({
            id = id.from(_N, "CreateSoftwareUpdateJobOutput", "IotJobId"),
            type = "string",
            name = "IotJobId",
            target_id = prelude.String.id,
        }),
        PlatformSoftwareVersion = schema.new({
            id = id.from(_N, "CreateSoftwareUpdateJobOutput", "PlatformSoftwareVersion"),
            type = "string",
            name = "PlatformSoftwareVersion",
            target_id = prelude.String.id,
        }),
    },
})

M.SubscriptionDefinitionVersion = schema.new({
    id = id.from(_N, "SubscriptionDefinitionVersion"),
    type = "structure",
    members = {
        Subscriptions = schema.new({
            id = id.from(_N, "SubscriptionDefinitionVersion", "Subscriptions"),
            type = "list",
            name = "Subscriptions",
            target_id = prelude.Document.id,
            list_member = M.Subscription,
        }),
    },
})

M.CreateSubscriptionDefinitionInput = schema.new({
    id = id.from(_N, "CreateSubscriptionDefinitionRequest"),
    type = "structure",
    members = {
        AmznClientToken = schema.new({
            id = id.from(_N, "CreateSubscriptionDefinitionInput", "AmznClientToken"),
            type = "string",
            name = "AmznClientToken",
            target_id = prelude.String.id,
            traits = {
                [traits.HTTP_HEADER] = { name = "X-Amzn-Client-Token" },
            },
        }),
        InitialVersion = schema.new({
            id = id.from(_N, "CreateSubscriptionDefinitionInput", "InitialVersion"),
            type = "structure",
            name = "InitialVersion",
            target_id = id.from(_N, "SubscriptionDefinitionVersion"),
            target = M.SubscriptionDefinitionVersion,
        }),
        Name = schema.new({
            id = id.from(_N, "CreateSubscriptionDefinitionInput", "Name"),
            type = "string",
            name = "Name",
            target_id = prelude.String.id,
        }),
        tags = schema.new({
            id = id.from(_N, "CreateSubscriptionDefinitionInput", "tags"),
            type = "map",
            name = "tags",
            target_id = prelude.Document.id,
            map_key = prelude.String,
            map_value = prelude.String,
        }),
    },
})

M.CreateSubscriptionDefinitionOutput = schema.new({
    id = id.from(_N, "CreateSubscriptionDefinitionResponse"),
    type = "structure",
    members = {
        Arn = schema.new({
            id = id.from(_N, "CreateSubscriptionDefinitionOutput", "Arn"),
            type = "string",
            name = "Arn",
            target_id = prelude.String.id,
        }),
        CreationTimestamp = schema.new({
            id = id.from(_N, "CreateSubscriptionDefinitionOutput", "CreationTimestamp"),
            type = "string",
            name = "CreationTimestamp",
            target_id = prelude.String.id,
        }),
        Id = schema.new({
            id = id.from(_N, "CreateSubscriptionDefinitionOutput", "Id"),
            type = "string",
            name = "Id",
            target_id = prelude.String.id,
        }),
        LastUpdatedTimestamp = schema.new({
            id = id.from(_N, "CreateSubscriptionDefinitionOutput", "LastUpdatedTimestamp"),
            type = "string",
            name = "LastUpdatedTimestamp",
            target_id = prelude.String.id,
        }),
        LatestVersion = schema.new({
            id = id.from(_N, "CreateSubscriptionDefinitionOutput", "LatestVersion"),
            type = "string",
            name = "LatestVersion",
            target_id = prelude.String.id,
        }),
        LatestVersionArn = schema.new({
            id = id.from(_N, "CreateSubscriptionDefinitionOutput", "LatestVersionArn"),
            type = "string",
            name = "LatestVersionArn",
            target_id = prelude.String.id,
        }),
        Name = schema.new({
            id = id.from(_N, "CreateSubscriptionDefinitionOutput", "Name"),
            type = "string",
            name = "Name",
            target_id = prelude.String.id,
        }),
    },
})

M.CreateSubscriptionDefinitionVersionInput = schema.new({
    id = id.from(_N, "CreateSubscriptionDefinitionVersionRequest"),
    type = "structure",
    members = {
        AmznClientToken = schema.new({
            id = id.from(_N, "CreateSubscriptionDefinitionVersionInput", "AmznClientToken"),
            type = "string",
            name = "AmznClientToken",
            target_id = prelude.String.id,
            traits = {
                [traits.HTTP_HEADER] = { name = "X-Amzn-Client-Token" },
            },
        }),
        SubscriptionDefinitionId = schema.new({
            id = id.from(_N, "CreateSubscriptionDefinitionVersionInput", "SubscriptionDefinitionId"),
            type = "string",
            name = "SubscriptionDefinitionId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
        Subscriptions = schema.new({
            id = id.from(_N, "CreateSubscriptionDefinitionVersionInput", "Subscriptions"),
            type = "list",
            name = "Subscriptions",
            target_id = prelude.Document.id,
            list_member = M.Subscription,
        }),
    },
})

M.CreateSubscriptionDefinitionVersionOutput = schema.new({
    id = id.from(_N, "CreateSubscriptionDefinitionVersionResponse"),
    type = "structure",
    members = {
        Arn = schema.new({
            id = id.from(_N, "CreateSubscriptionDefinitionVersionOutput", "Arn"),
            type = "string",
            name = "Arn",
            target_id = prelude.String.id,
        }),
        CreationTimestamp = schema.new({
            id = id.from(_N, "CreateSubscriptionDefinitionVersionOutput", "CreationTimestamp"),
            type = "string",
            name = "CreationTimestamp",
            target_id = prelude.String.id,
        }),
        Id = schema.new({
            id = id.from(_N, "CreateSubscriptionDefinitionVersionOutput", "Id"),
            type = "string",
            name = "Id",
            target_id = prelude.String.id,
        }),
        Version = schema.new({
            id = id.from(_N, "CreateSubscriptionDefinitionVersionOutput", "Version"),
            type = "string",
            name = "Version",
            target_id = prelude.String.id,
        }),
    },
})

M.DeleteConnectorDefinitionInput = schema.new({
    id = id.from(_N, "DeleteConnectorDefinitionRequest"),
    type = "structure",
    members = {
        ConnectorDefinitionId = schema.new({
            id = id.from(_N, "DeleteConnectorDefinitionInput", "ConnectorDefinitionId"),
            type = "string",
            name = "ConnectorDefinitionId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
    },
})

M.DeleteConnectorDefinitionOutput = schema.new({
    id = id.from(_N, "DeleteConnectorDefinitionResponse"),
    type = "structure",
})

M.DeleteCoreDefinitionInput = schema.new({
    id = id.from(_N, "DeleteCoreDefinitionRequest"),
    type = "structure",
    members = {
        CoreDefinitionId = schema.new({
            id = id.from(_N, "DeleteCoreDefinitionInput", "CoreDefinitionId"),
            type = "string",
            name = "CoreDefinitionId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
    },
})

M.DeleteCoreDefinitionOutput = schema.new({
    id = id.from(_N, "DeleteCoreDefinitionResponse"),
    type = "structure",
})

M.DeleteDeviceDefinitionInput = schema.new({
    id = id.from(_N, "DeleteDeviceDefinitionRequest"),
    type = "structure",
    members = {
        DeviceDefinitionId = schema.new({
            id = id.from(_N, "DeleteDeviceDefinitionInput", "DeviceDefinitionId"),
            type = "string",
            name = "DeviceDefinitionId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
    },
})

M.DeleteDeviceDefinitionOutput = schema.new({
    id = id.from(_N, "DeleteDeviceDefinitionResponse"),
    type = "structure",
})

M.DeleteFunctionDefinitionInput = schema.new({
    id = id.from(_N, "DeleteFunctionDefinitionRequest"),
    type = "structure",
    members = {
        FunctionDefinitionId = schema.new({
            id = id.from(_N, "DeleteFunctionDefinitionInput", "FunctionDefinitionId"),
            type = "string",
            name = "FunctionDefinitionId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
    },
})

M.DeleteFunctionDefinitionOutput = schema.new({
    id = id.from(_N, "DeleteFunctionDefinitionResponse"),
    type = "structure",
})

M.DeleteGroupInput = schema.new({
    id = id.from(_N, "DeleteGroupRequest"),
    type = "structure",
    members = {
        GroupId = schema.new({
            id = id.from(_N, "DeleteGroupInput", "GroupId"),
            type = "string",
            name = "GroupId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
    },
})

M.DeleteGroupOutput = schema.new({
    id = id.from(_N, "DeleteGroupResponse"),
    type = "structure",
})

M.DeleteLoggerDefinitionInput = schema.new({
    id = id.from(_N, "DeleteLoggerDefinitionRequest"),
    type = "structure",
    members = {
        LoggerDefinitionId = schema.new({
            id = id.from(_N, "DeleteLoggerDefinitionInput", "LoggerDefinitionId"),
            type = "string",
            name = "LoggerDefinitionId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
    },
})

M.DeleteLoggerDefinitionOutput = schema.new({
    id = id.from(_N, "DeleteLoggerDefinitionResponse"),
    type = "structure",
})

M.DeleteResourceDefinitionInput = schema.new({
    id = id.from(_N, "DeleteResourceDefinitionRequest"),
    type = "structure",
    members = {
        ResourceDefinitionId = schema.new({
            id = id.from(_N, "DeleteResourceDefinitionInput", "ResourceDefinitionId"),
            type = "string",
            name = "ResourceDefinitionId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
    },
})

M.DeleteResourceDefinitionOutput = schema.new({
    id = id.from(_N, "DeleteResourceDefinitionResponse"),
    type = "structure",
})

M.DeleteSubscriptionDefinitionInput = schema.new({
    id = id.from(_N, "DeleteSubscriptionDefinitionRequest"),
    type = "structure",
    members = {
        SubscriptionDefinitionId = schema.new({
            id = id.from(_N, "DeleteSubscriptionDefinitionInput", "SubscriptionDefinitionId"),
            type = "string",
            name = "SubscriptionDefinitionId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
    },
})

M.DeleteSubscriptionDefinitionOutput = schema.new({
    id = id.from(_N, "DeleteSubscriptionDefinitionResponse"),
    type = "structure",
})

M.Deployment = schema.new({
    id = id.from(_N, "Deployment"),
    type = "structure",
    members = {
        CreatedAt = schema.new({
            id = id.from(_N, "Deployment", "CreatedAt"),
            type = "string",
            name = "CreatedAt",
            target_id = prelude.String.id,
        }),
        DeploymentArn = schema.new({
            id = id.from(_N, "Deployment", "DeploymentArn"),
            type = "string",
            name = "DeploymentArn",
            target_id = prelude.String.id,
        }),
        DeploymentId = schema.new({
            id = id.from(_N, "Deployment", "DeploymentId"),
            type = "string",
            name = "DeploymentId",
            target_id = prelude.String.id,
        }),
        DeploymentType = schema.new({
            id = id.from(_N, "Deployment", "DeploymentType"),
            type = "string",
            name = "DeploymentType",
            target_id = prelude.String.id,
        }),
        GroupArn = schema.new({
            id = id.from(_N, "Deployment", "GroupArn"),
            type = "string",
            name = "GroupArn",
            target_id = prelude.String.id,
        }),
    },
})

M.DisassociateRoleFromGroupInput = schema.new({
    id = id.from(_N, "DisassociateRoleFromGroupRequest"),
    type = "structure",
    members = {
        GroupId = schema.new({
            id = id.from(_N, "DisassociateRoleFromGroupInput", "GroupId"),
            type = "string",
            name = "GroupId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
    },
})

M.DisassociateRoleFromGroupOutput = schema.new({
    id = id.from(_N, "DisassociateRoleFromGroupResponse"),
    type = "structure",
    members = {
        DisassociatedAt = schema.new({
            id = id.from(_N, "DisassociateRoleFromGroupOutput", "DisassociatedAt"),
            type = "string",
            name = "DisassociatedAt",
            target_id = prelude.String.id,
        }),
    },
})

M.DisassociateServiceRoleFromAccountInput = schema.new({
    id = id.from(_N, "DisassociateServiceRoleFromAccountRequest"),
    type = "structure",
})

M.DisassociateServiceRoleFromAccountOutput = schema.new({
    id = id.from(_N, "DisassociateServiceRoleFromAccountResponse"),
    type = "structure",
    members = {
        DisassociatedAt = schema.new({
            id = id.from(_N, "DisassociateServiceRoleFromAccountOutput", "DisassociatedAt"),
            type = "string",
            name = "DisassociatedAt",
            target_id = prelude.String.id,
        }),
    },
})

M.GetAssociatedRoleInput = schema.new({
    id = id.from(_N, "GetAssociatedRoleRequest"),
    type = "structure",
    members = {
        GroupId = schema.new({
            id = id.from(_N, "GetAssociatedRoleInput", "GroupId"),
            type = "string",
            name = "GroupId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
    },
})

M.GetAssociatedRoleOutput = schema.new({
    id = id.from(_N, "GetAssociatedRoleResponse"),
    type = "structure",
    members = {
        AssociatedAt = schema.new({
            id = id.from(_N, "GetAssociatedRoleOutput", "AssociatedAt"),
            type = "string",
            name = "AssociatedAt",
            target_id = prelude.String.id,
        }),
        RoleArn = schema.new({
            id = id.from(_N, "GetAssociatedRoleOutput", "RoleArn"),
            type = "string",
            name = "RoleArn",
            target_id = prelude.String.id,
        }),
    },
})

M.GetBulkDeploymentStatusInput = schema.new({
    id = id.from(_N, "GetBulkDeploymentStatusRequest"),
    type = "structure",
    members = {
        BulkDeploymentId = schema.new({
            id = id.from(_N, "GetBulkDeploymentStatusInput", "BulkDeploymentId"),
            type = "string",
            name = "BulkDeploymentId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
    },
})

M.GetBulkDeploymentStatusOutput = schema.new({
    id = id.from(_N, "GetBulkDeploymentStatusResponse"),
    type = "structure",
    members = {
        BulkDeploymentMetrics = schema.new({
            id = id.from(_N, "GetBulkDeploymentStatusOutput", "BulkDeploymentMetrics"),
            type = "structure",
            name = "BulkDeploymentMetrics",
            target_id = id.from(_N, "BulkDeploymentMetrics"),
            target = M.BulkDeploymentMetrics,
        }),
        BulkDeploymentStatus = schema.new({
            id = id.from(_N, "GetBulkDeploymentStatusOutput", "BulkDeploymentStatus"),
            type = "string",
            name = "BulkDeploymentStatus",
            target_id = prelude.String.id,
        }),
        CreatedAt = schema.new({
            id = id.from(_N, "GetBulkDeploymentStatusOutput", "CreatedAt"),
            type = "string",
            name = "CreatedAt",
            target_id = prelude.String.id,
        }),
        ErrorDetails = schema.new({
            id = id.from(_N, "GetBulkDeploymentStatusOutput", "ErrorDetails"),
            type = "list",
            name = "ErrorDetails",
            target_id = prelude.Document.id,
            list_member = M.ErrorDetail,
        }),
        ErrorMessage = schema.new({
            id = id.from(_N, "GetBulkDeploymentStatusOutput", "ErrorMessage"),
            type = "string",
            name = "ErrorMessage",
            target_id = prelude.String.id,
        }),
        tags = schema.new({
            id = id.from(_N, "GetBulkDeploymentStatusOutput", "tags"),
            type = "map",
            name = "tags",
            target_id = prelude.Document.id,
            map_key = prelude.String,
            map_value = prelude.String,
        }),
    },
})

M.GetConnectivityInfoInput = schema.new({
    id = id.from(_N, "GetConnectivityInfoRequest"),
    type = "structure",
    members = {
        ThingName = schema.new({
            id = id.from(_N, "GetConnectivityInfoInput", "ThingName"),
            type = "string",
            name = "ThingName",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
    },
})

M.GetConnectivityInfoOutput = schema.new({
    id = id.from(_N, "GetConnectivityInfoResponse"),
    type = "structure",
    members = {
        ConnectivityInfo = schema.new({
            id = id.from(_N, "GetConnectivityInfoOutput", "ConnectivityInfo"),
            type = "list",
            name = "ConnectivityInfo",
            target_id = prelude.Document.id,
            list_member = M.ConnectivityInfo,
        }),
        Message = schema.new({
            id = id.from(_N, "GetConnectivityInfoOutput", "Message"),
            type = "string",
            name = "Message",
            target_id = prelude.String.id,
            traits = {
                [traits.JSON_NAME] = { name = "message" },
            },
        }),
    },
})

M.GetConnectorDefinitionInput = schema.new({
    id = id.from(_N, "GetConnectorDefinitionRequest"),
    type = "structure",
    members = {
        ConnectorDefinitionId = schema.new({
            id = id.from(_N, "GetConnectorDefinitionInput", "ConnectorDefinitionId"),
            type = "string",
            name = "ConnectorDefinitionId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
    },
})

M.GetConnectorDefinitionOutput = schema.new({
    id = id.from(_N, "GetConnectorDefinitionResponse"),
    type = "structure",
    members = {
        Arn = schema.new({
            id = id.from(_N, "GetConnectorDefinitionOutput", "Arn"),
            type = "string",
            name = "Arn",
            target_id = prelude.String.id,
        }),
        CreationTimestamp = schema.new({
            id = id.from(_N, "GetConnectorDefinitionOutput", "CreationTimestamp"),
            type = "string",
            name = "CreationTimestamp",
            target_id = prelude.String.id,
        }),
        Id = schema.new({
            id = id.from(_N, "GetConnectorDefinitionOutput", "Id"),
            type = "string",
            name = "Id",
            target_id = prelude.String.id,
        }),
        LastUpdatedTimestamp = schema.new({
            id = id.from(_N, "GetConnectorDefinitionOutput", "LastUpdatedTimestamp"),
            type = "string",
            name = "LastUpdatedTimestamp",
            target_id = prelude.String.id,
        }),
        LatestVersion = schema.new({
            id = id.from(_N, "GetConnectorDefinitionOutput", "LatestVersion"),
            type = "string",
            name = "LatestVersion",
            target_id = prelude.String.id,
        }),
        LatestVersionArn = schema.new({
            id = id.from(_N, "GetConnectorDefinitionOutput", "LatestVersionArn"),
            type = "string",
            name = "LatestVersionArn",
            target_id = prelude.String.id,
        }),
        Name = schema.new({
            id = id.from(_N, "GetConnectorDefinitionOutput", "Name"),
            type = "string",
            name = "Name",
            target_id = prelude.String.id,
        }),
        tags = schema.new({
            id = id.from(_N, "GetConnectorDefinitionOutput", "tags"),
            type = "map",
            name = "tags",
            target_id = prelude.Document.id,
            map_key = prelude.String,
            map_value = prelude.String,
        }),
    },
})

M.GetConnectorDefinitionVersionInput = schema.new({
    id = id.from(_N, "GetConnectorDefinitionVersionRequest"),
    type = "structure",
    members = {
        ConnectorDefinitionId = schema.new({
            id = id.from(_N, "GetConnectorDefinitionVersionInput", "ConnectorDefinitionId"),
            type = "string",
            name = "ConnectorDefinitionId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
        ConnectorDefinitionVersionId = schema.new({
            id = id.from(_N, "GetConnectorDefinitionVersionInput", "ConnectorDefinitionVersionId"),
            type = "string",
            name = "ConnectorDefinitionVersionId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
        NextToken = schema.new({
            id = id.from(_N, "GetConnectorDefinitionVersionInput", "NextToken"),
            type = "string",
            name = "NextToken",
            target_id = prelude.String.id,
            traits = {
                [traits.HTTP_QUERY] = { name = "NextToken" },
            },
        }),
    },
})

M.GetConnectorDefinitionVersionOutput = schema.new({
    id = id.from(_N, "GetConnectorDefinitionVersionResponse"),
    type = "structure",
    members = {
        Arn = schema.new({
            id = id.from(_N, "GetConnectorDefinitionVersionOutput", "Arn"),
            type = "string",
            name = "Arn",
            target_id = prelude.String.id,
        }),
        CreationTimestamp = schema.new({
            id = id.from(_N, "GetConnectorDefinitionVersionOutput", "CreationTimestamp"),
            type = "string",
            name = "CreationTimestamp",
            target_id = prelude.String.id,
        }),
        Definition = schema.new({
            id = id.from(_N, "GetConnectorDefinitionVersionOutput", "Definition"),
            type = "structure",
            name = "Definition",
            target_id = id.from(_N, "ConnectorDefinitionVersion"),
            target = M.ConnectorDefinitionVersion,
        }),
        Id = schema.new({
            id = id.from(_N, "GetConnectorDefinitionVersionOutput", "Id"),
            type = "string",
            name = "Id",
            target_id = prelude.String.id,
        }),
        NextToken = schema.new({
            id = id.from(_N, "GetConnectorDefinitionVersionOutput", "NextToken"),
            type = "string",
            name = "NextToken",
            target_id = prelude.String.id,
        }),
        Version = schema.new({
            id = id.from(_N, "GetConnectorDefinitionVersionOutput", "Version"),
            type = "string",
            name = "Version",
            target_id = prelude.String.id,
        }),
    },
})

M.GetCoreDefinitionInput = schema.new({
    id = id.from(_N, "GetCoreDefinitionRequest"),
    type = "structure",
    members = {
        CoreDefinitionId = schema.new({
            id = id.from(_N, "GetCoreDefinitionInput", "CoreDefinitionId"),
            type = "string",
            name = "CoreDefinitionId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
    },
})

M.GetCoreDefinitionOutput = schema.new({
    id = id.from(_N, "GetCoreDefinitionResponse"),
    type = "structure",
    members = {
        Arn = schema.new({
            id = id.from(_N, "GetCoreDefinitionOutput", "Arn"),
            type = "string",
            name = "Arn",
            target_id = prelude.String.id,
        }),
        CreationTimestamp = schema.new({
            id = id.from(_N, "GetCoreDefinitionOutput", "CreationTimestamp"),
            type = "string",
            name = "CreationTimestamp",
            target_id = prelude.String.id,
        }),
        Id = schema.new({
            id = id.from(_N, "GetCoreDefinitionOutput", "Id"),
            type = "string",
            name = "Id",
            target_id = prelude.String.id,
        }),
        LastUpdatedTimestamp = schema.new({
            id = id.from(_N, "GetCoreDefinitionOutput", "LastUpdatedTimestamp"),
            type = "string",
            name = "LastUpdatedTimestamp",
            target_id = prelude.String.id,
        }),
        LatestVersion = schema.new({
            id = id.from(_N, "GetCoreDefinitionOutput", "LatestVersion"),
            type = "string",
            name = "LatestVersion",
            target_id = prelude.String.id,
        }),
        LatestVersionArn = schema.new({
            id = id.from(_N, "GetCoreDefinitionOutput", "LatestVersionArn"),
            type = "string",
            name = "LatestVersionArn",
            target_id = prelude.String.id,
        }),
        Name = schema.new({
            id = id.from(_N, "GetCoreDefinitionOutput", "Name"),
            type = "string",
            name = "Name",
            target_id = prelude.String.id,
        }),
        tags = schema.new({
            id = id.from(_N, "GetCoreDefinitionOutput", "tags"),
            type = "map",
            name = "tags",
            target_id = prelude.Document.id,
            map_key = prelude.String,
            map_value = prelude.String,
        }),
    },
})

M.GetCoreDefinitionVersionInput = schema.new({
    id = id.from(_N, "GetCoreDefinitionVersionRequest"),
    type = "structure",
    members = {
        CoreDefinitionId = schema.new({
            id = id.from(_N, "GetCoreDefinitionVersionInput", "CoreDefinitionId"),
            type = "string",
            name = "CoreDefinitionId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
        CoreDefinitionVersionId = schema.new({
            id = id.from(_N, "GetCoreDefinitionVersionInput", "CoreDefinitionVersionId"),
            type = "string",
            name = "CoreDefinitionVersionId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
    },
})

M.GetCoreDefinitionVersionOutput = schema.new({
    id = id.from(_N, "GetCoreDefinitionVersionResponse"),
    type = "structure",
    members = {
        Arn = schema.new({
            id = id.from(_N, "GetCoreDefinitionVersionOutput", "Arn"),
            type = "string",
            name = "Arn",
            target_id = prelude.String.id,
        }),
        CreationTimestamp = schema.new({
            id = id.from(_N, "GetCoreDefinitionVersionOutput", "CreationTimestamp"),
            type = "string",
            name = "CreationTimestamp",
            target_id = prelude.String.id,
        }),
        Definition = schema.new({
            id = id.from(_N, "GetCoreDefinitionVersionOutput", "Definition"),
            type = "structure",
            name = "Definition",
            target_id = id.from(_N, "CoreDefinitionVersion"),
            target = M.CoreDefinitionVersion,
        }),
        Id = schema.new({
            id = id.from(_N, "GetCoreDefinitionVersionOutput", "Id"),
            type = "string",
            name = "Id",
            target_id = prelude.String.id,
        }),
        NextToken = schema.new({
            id = id.from(_N, "GetCoreDefinitionVersionOutput", "NextToken"),
            type = "string",
            name = "NextToken",
            target_id = prelude.String.id,
        }),
        Version = schema.new({
            id = id.from(_N, "GetCoreDefinitionVersionOutput", "Version"),
            type = "string",
            name = "Version",
            target_id = prelude.String.id,
        }),
    },
})

M.GetDeploymentStatusInput = schema.new({
    id = id.from(_N, "GetDeploymentStatusRequest"),
    type = "structure",
    members = {
        DeploymentId = schema.new({
            id = id.from(_N, "GetDeploymentStatusInput", "DeploymentId"),
            type = "string",
            name = "DeploymentId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
        GroupId = schema.new({
            id = id.from(_N, "GetDeploymentStatusInput", "GroupId"),
            type = "string",
            name = "GroupId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
    },
})

M.GetDeploymentStatusOutput = schema.new({
    id = id.from(_N, "GetDeploymentStatusResponse"),
    type = "structure",
    members = {
        DeploymentStatus = schema.new({
            id = id.from(_N, "GetDeploymentStatusOutput", "DeploymentStatus"),
            type = "string",
            name = "DeploymentStatus",
            target_id = prelude.String.id,
        }),
        DeploymentType = schema.new({
            id = id.from(_N, "GetDeploymentStatusOutput", "DeploymentType"),
            type = "string",
            name = "DeploymentType",
            target_id = prelude.String.id,
        }),
        ErrorDetails = schema.new({
            id = id.from(_N, "GetDeploymentStatusOutput", "ErrorDetails"),
            type = "list",
            name = "ErrorDetails",
            target_id = prelude.Document.id,
            list_member = M.ErrorDetail,
        }),
        ErrorMessage = schema.new({
            id = id.from(_N, "GetDeploymentStatusOutput", "ErrorMessage"),
            type = "string",
            name = "ErrorMessage",
            target_id = prelude.String.id,
        }),
        UpdatedAt = schema.new({
            id = id.from(_N, "GetDeploymentStatusOutput", "UpdatedAt"),
            type = "string",
            name = "UpdatedAt",
            target_id = prelude.String.id,
        }),
    },
})

M.GetDeviceDefinitionInput = schema.new({
    id = id.from(_N, "GetDeviceDefinitionRequest"),
    type = "structure",
    members = {
        DeviceDefinitionId = schema.new({
            id = id.from(_N, "GetDeviceDefinitionInput", "DeviceDefinitionId"),
            type = "string",
            name = "DeviceDefinitionId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
    },
})

M.GetDeviceDefinitionOutput = schema.new({
    id = id.from(_N, "GetDeviceDefinitionResponse"),
    type = "structure",
    members = {
        Arn = schema.new({
            id = id.from(_N, "GetDeviceDefinitionOutput", "Arn"),
            type = "string",
            name = "Arn",
            target_id = prelude.String.id,
        }),
        CreationTimestamp = schema.new({
            id = id.from(_N, "GetDeviceDefinitionOutput", "CreationTimestamp"),
            type = "string",
            name = "CreationTimestamp",
            target_id = prelude.String.id,
        }),
        Id = schema.new({
            id = id.from(_N, "GetDeviceDefinitionOutput", "Id"),
            type = "string",
            name = "Id",
            target_id = prelude.String.id,
        }),
        LastUpdatedTimestamp = schema.new({
            id = id.from(_N, "GetDeviceDefinitionOutput", "LastUpdatedTimestamp"),
            type = "string",
            name = "LastUpdatedTimestamp",
            target_id = prelude.String.id,
        }),
        LatestVersion = schema.new({
            id = id.from(_N, "GetDeviceDefinitionOutput", "LatestVersion"),
            type = "string",
            name = "LatestVersion",
            target_id = prelude.String.id,
        }),
        LatestVersionArn = schema.new({
            id = id.from(_N, "GetDeviceDefinitionOutput", "LatestVersionArn"),
            type = "string",
            name = "LatestVersionArn",
            target_id = prelude.String.id,
        }),
        Name = schema.new({
            id = id.from(_N, "GetDeviceDefinitionOutput", "Name"),
            type = "string",
            name = "Name",
            target_id = prelude.String.id,
        }),
        tags = schema.new({
            id = id.from(_N, "GetDeviceDefinitionOutput", "tags"),
            type = "map",
            name = "tags",
            target_id = prelude.Document.id,
            map_key = prelude.String,
            map_value = prelude.String,
        }),
    },
})

M.GetDeviceDefinitionVersionInput = schema.new({
    id = id.from(_N, "GetDeviceDefinitionVersionRequest"),
    type = "structure",
    members = {
        DeviceDefinitionId = schema.new({
            id = id.from(_N, "GetDeviceDefinitionVersionInput", "DeviceDefinitionId"),
            type = "string",
            name = "DeviceDefinitionId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
        DeviceDefinitionVersionId = schema.new({
            id = id.from(_N, "GetDeviceDefinitionVersionInput", "DeviceDefinitionVersionId"),
            type = "string",
            name = "DeviceDefinitionVersionId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
        NextToken = schema.new({
            id = id.from(_N, "GetDeviceDefinitionVersionInput", "NextToken"),
            type = "string",
            name = "NextToken",
            target_id = prelude.String.id,
            traits = {
                [traits.HTTP_QUERY] = { name = "NextToken" },
            },
        }),
    },
})

M.GetDeviceDefinitionVersionOutput = schema.new({
    id = id.from(_N, "GetDeviceDefinitionVersionResponse"),
    type = "structure",
    members = {
        Arn = schema.new({
            id = id.from(_N, "GetDeviceDefinitionVersionOutput", "Arn"),
            type = "string",
            name = "Arn",
            target_id = prelude.String.id,
        }),
        CreationTimestamp = schema.new({
            id = id.from(_N, "GetDeviceDefinitionVersionOutput", "CreationTimestamp"),
            type = "string",
            name = "CreationTimestamp",
            target_id = prelude.String.id,
        }),
        Definition = schema.new({
            id = id.from(_N, "GetDeviceDefinitionVersionOutput", "Definition"),
            type = "structure",
            name = "Definition",
            target_id = id.from(_N, "DeviceDefinitionVersion"),
            target = M.DeviceDefinitionVersion,
        }),
        Id = schema.new({
            id = id.from(_N, "GetDeviceDefinitionVersionOutput", "Id"),
            type = "string",
            name = "Id",
            target_id = prelude.String.id,
        }),
        NextToken = schema.new({
            id = id.from(_N, "GetDeviceDefinitionVersionOutput", "NextToken"),
            type = "string",
            name = "NextToken",
            target_id = prelude.String.id,
        }),
        Version = schema.new({
            id = id.from(_N, "GetDeviceDefinitionVersionOutput", "Version"),
            type = "string",
            name = "Version",
            target_id = prelude.String.id,
        }),
    },
})

M.GetFunctionDefinitionInput = schema.new({
    id = id.from(_N, "GetFunctionDefinitionRequest"),
    type = "structure",
    members = {
        FunctionDefinitionId = schema.new({
            id = id.from(_N, "GetFunctionDefinitionInput", "FunctionDefinitionId"),
            type = "string",
            name = "FunctionDefinitionId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
    },
})

M.GetFunctionDefinitionOutput = schema.new({
    id = id.from(_N, "GetFunctionDefinitionResponse"),
    type = "structure",
    members = {
        Arn = schema.new({
            id = id.from(_N, "GetFunctionDefinitionOutput", "Arn"),
            type = "string",
            name = "Arn",
            target_id = prelude.String.id,
        }),
        CreationTimestamp = schema.new({
            id = id.from(_N, "GetFunctionDefinitionOutput", "CreationTimestamp"),
            type = "string",
            name = "CreationTimestamp",
            target_id = prelude.String.id,
        }),
        Id = schema.new({
            id = id.from(_N, "GetFunctionDefinitionOutput", "Id"),
            type = "string",
            name = "Id",
            target_id = prelude.String.id,
        }),
        LastUpdatedTimestamp = schema.new({
            id = id.from(_N, "GetFunctionDefinitionOutput", "LastUpdatedTimestamp"),
            type = "string",
            name = "LastUpdatedTimestamp",
            target_id = prelude.String.id,
        }),
        LatestVersion = schema.new({
            id = id.from(_N, "GetFunctionDefinitionOutput", "LatestVersion"),
            type = "string",
            name = "LatestVersion",
            target_id = prelude.String.id,
        }),
        LatestVersionArn = schema.new({
            id = id.from(_N, "GetFunctionDefinitionOutput", "LatestVersionArn"),
            type = "string",
            name = "LatestVersionArn",
            target_id = prelude.String.id,
        }),
        Name = schema.new({
            id = id.from(_N, "GetFunctionDefinitionOutput", "Name"),
            type = "string",
            name = "Name",
            target_id = prelude.String.id,
        }),
        tags = schema.new({
            id = id.from(_N, "GetFunctionDefinitionOutput", "tags"),
            type = "map",
            name = "tags",
            target_id = prelude.Document.id,
            map_key = prelude.String,
            map_value = prelude.String,
        }),
    },
})

M.GetFunctionDefinitionVersionInput = schema.new({
    id = id.from(_N, "GetFunctionDefinitionVersionRequest"),
    type = "structure",
    members = {
        FunctionDefinitionId = schema.new({
            id = id.from(_N, "GetFunctionDefinitionVersionInput", "FunctionDefinitionId"),
            type = "string",
            name = "FunctionDefinitionId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
        FunctionDefinitionVersionId = schema.new({
            id = id.from(_N, "GetFunctionDefinitionVersionInput", "FunctionDefinitionVersionId"),
            type = "string",
            name = "FunctionDefinitionVersionId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
        NextToken = schema.new({
            id = id.from(_N, "GetFunctionDefinitionVersionInput", "NextToken"),
            type = "string",
            name = "NextToken",
            target_id = prelude.String.id,
            traits = {
                [traits.HTTP_QUERY] = { name = "NextToken" },
            },
        }),
    },
})

M.GetFunctionDefinitionVersionOutput = schema.new({
    id = id.from(_N, "GetFunctionDefinitionVersionResponse"),
    type = "structure",
    members = {
        Arn = schema.new({
            id = id.from(_N, "GetFunctionDefinitionVersionOutput", "Arn"),
            type = "string",
            name = "Arn",
            target_id = prelude.String.id,
        }),
        CreationTimestamp = schema.new({
            id = id.from(_N, "GetFunctionDefinitionVersionOutput", "CreationTimestamp"),
            type = "string",
            name = "CreationTimestamp",
            target_id = prelude.String.id,
        }),
        Definition = schema.new({
            id = id.from(_N, "GetFunctionDefinitionVersionOutput", "Definition"),
            type = "structure",
            name = "Definition",
            target_id = id.from(_N, "FunctionDefinitionVersion"),
            target = M.FunctionDefinitionVersion,
        }),
        Id = schema.new({
            id = id.from(_N, "GetFunctionDefinitionVersionOutput", "Id"),
            type = "string",
            name = "Id",
            target_id = prelude.String.id,
        }),
        NextToken = schema.new({
            id = id.from(_N, "GetFunctionDefinitionVersionOutput", "NextToken"),
            type = "string",
            name = "NextToken",
            target_id = prelude.String.id,
        }),
        Version = schema.new({
            id = id.from(_N, "GetFunctionDefinitionVersionOutput", "Version"),
            type = "string",
            name = "Version",
            target_id = prelude.String.id,
        }),
    },
})

M.GetGroupInput = schema.new({
    id = id.from(_N, "GetGroupRequest"),
    type = "structure",
    members = {
        GroupId = schema.new({
            id = id.from(_N, "GetGroupInput", "GroupId"),
            type = "string",
            name = "GroupId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
    },
})

M.GetGroupOutput = schema.new({
    id = id.from(_N, "GetGroupResponse"),
    type = "structure",
    members = {
        Arn = schema.new({
            id = id.from(_N, "GetGroupOutput", "Arn"),
            type = "string",
            name = "Arn",
            target_id = prelude.String.id,
        }),
        CreationTimestamp = schema.new({
            id = id.from(_N, "GetGroupOutput", "CreationTimestamp"),
            type = "string",
            name = "CreationTimestamp",
            target_id = prelude.String.id,
        }),
        Id = schema.new({
            id = id.from(_N, "GetGroupOutput", "Id"),
            type = "string",
            name = "Id",
            target_id = prelude.String.id,
        }),
        LastUpdatedTimestamp = schema.new({
            id = id.from(_N, "GetGroupOutput", "LastUpdatedTimestamp"),
            type = "string",
            name = "LastUpdatedTimestamp",
            target_id = prelude.String.id,
        }),
        LatestVersion = schema.new({
            id = id.from(_N, "GetGroupOutput", "LatestVersion"),
            type = "string",
            name = "LatestVersion",
            target_id = prelude.String.id,
        }),
        LatestVersionArn = schema.new({
            id = id.from(_N, "GetGroupOutput", "LatestVersionArn"),
            type = "string",
            name = "LatestVersionArn",
            target_id = prelude.String.id,
        }),
        Name = schema.new({
            id = id.from(_N, "GetGroupOutput", "Name"),
            type = "string",
            name = "Name",
            target_id = prelude.String.id,
        }),
        tags = schema.new({
            id = id.from(_N, "GetGroupOutput", "tags"),
            type = "map",
            name = "tags",
            target_id = prelude.Document.id,
            map_key = prelude.String,
            map_value = prelude.String,
        }),
    },
})

M.GetGroupCertificateAuthorityInput = schema.new({
    id = id.from(_N, "GetGroupCertificateAuthorityRequest"),
    type = "structure",
    members = {
        CertificateAuthorityId = schema.new({
            id = id.from(_N, "GetGroupCertificateAuthorityInput", "CertificateAuthorityId"),
            type = "string",
            name = "CertificateAuthorityId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
        GroupId = schema.new({
            id = id.from(_N, "GetGroupCertificateAuthorityInput", "GroupId"),
            type = "string",
            name = "GroupId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
    },
})

M.GetGroupCertificateAuthorityOutput = schema.new({
    id = id.from(_N, "GetGroupCertificateAuthorityResponse"),
    type = "structure",
    members = {
        GroupCertificateAuthorityArn = schema.new({
            id = id.from(_N, "GetGroupCertificateAuthorityOutput", "GroupCertificateAuthorityArn"),
            type = "string",
            name = "GroupCertificateAuthorityArn",
            target_id = prelude.String.id,
        }),
        GroupCertificateAuthorityId = schema.new({
            id = id.from(_N, "GetGroupCertificateAuthorityOutput", "GroupCertificateAuthorityId"),
            type = "string",
            name = "GroupCertificateAuthorityId",
            target_id = prelude.String.id,
        }),
        PemEncodedCertificate = schema.new({
            id = id.from(_N, "GetGroupCertificateAuthorityOutput", "PemEncodedCertificate"),
            type = "string",
            name = "PemEncodedCertificate",
            target_id = prelude.String.id,
        }),
    },
})

M.GetGroupCertificateConfigurationInput = schema.new({
    id = id.from(_N, "GetGroupCertificateConfigurationRequest"),
    type = "structure",
    members = {
        GroupId = schema.new({
            id = id.from(_N, "GetGroupCertificateConfigurationInput", "GroupId"),
            type = "string",
            name = "GroupId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
    },
})

M.GetGroupCertificateConfigurationOutput = schema.new({
    id = id.from(_N, "GetGroupCertificateConfigurationResponse"),
    type = "structure",
    members = {
        CertificateAuthorityExpiryInMilliseconds = schema.new({
            id = id.from(_N, "GetGroupCertificateConfigurationOutput", "CertificateAuthorityExpiryInMilliseconds"),
            type = "string",
            name = "CertificateAuthorityExpiryInMilliseconds",
            target_id = prelude.String.id,
        }),
        CertificateExpiryInMilliseconds = schema.new({
            id = id.from(_N, "GetGroupCertificateConfigurationOutput", "CertificateExpiryInMilliseconds"),
            type = "string",
            name = "CertificateExpiryInMilliseconds",
            target_id = prelude.String.id,
        }),
        GroupId = schema.new({
            id = id.from(_N, "GetGroupCertificateConfigurationOutput", "GroupId"),
            type = "string",
            name = "GroupId",
            target_id = prelude.String.id,
        }),
    },
})

M.GetGroupVersionInput = schema.new({
    id = id.from(_N, "GetGroupVersionRequest"),
    type = "structure",
    members = {
        GroupId = schema.new({
            id = id.from(_N, "GetGroupVersionInput", "GroupId"),
            type = "string",
            name = "GroupId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
        GroupVersionId = schema.new({
            id = id.from(_N, "GetGroupVersionInput", "GroupVersionId"),
            type = "string",
            name = "GroupVersionId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
    },
})

M.GetGroupVersionOutput = schema.new({
    id = id.from(_N, "GetGroupVersionResponse"),
    type = "structure",
    members = {
        Arn = schema.new({
            id = id.from(_N, "GetGroupVersionOutput", "Arn"),
            type = "string",
            name = "Arn",
            target_id = prelude.String.id,
        }),
        CreationTimestamp = schema.new({
            id = id.from(_N, "GetGroupVersionOutput", "CreationTimestamp"),
            type = "string",
            name = "CreationTimestamp",
            target_id = prelude.String.id,
        }),
        Definition = schema.new({
            id = id.from(_N, "GetGroupVersionOutput", "Definition"),
            type = "structure",
            name = "Definition",
            target_id = id.from(_N, "GroupVersion"),
            target = M.GroupVersion,
        }),
        Id = schema.new({
            id = id.from(_N, "GetGroupVersionOutput", "Id"),
            type = "string",
            name = "Id",
            target_id = prelude.String.id,
        }),
        Version = schema.new({
            id = id.from(_N, "GetGroupVersionOutput", "Version"),
            type = "string",
            name = "Version",
            target_id = prelude.String.id,
        }),
    },
})

M.GetLoggerDefinitionInput = schema.new({
    id = id.from(_N, "GetLoggerDefinitionRequest"),
    type = "structure",
    members = {
        LoggerDefinitionId = schema.new({
            id = id.from(_N, "GetLoggerDefinitionInput", "LoggerDefinitionId"),
            type = "string",
            name = "LoggerDefinitionId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
    },
})

M.GetLoggerDefinitionOutput = schema.new({
    id = id.from(_N, "GetLoggerDefinitionResponse"),
    type = "structure",
    members = {
        Arn = schema.new({
            id = id.from(_N, "GetLoggerDefinitionOutput", "Arn"),
            type = "string",
            name = "Arn",
            target_id = prelude.String.id,
        }),
        CreationTimestamp = schema.new({
            id = id.from(_N, "GetLoggerDefinitionOutput", "CreationTimestamp"),
            type = "string",
            name = "CreationTimestamp",
            target_id = prelude.String.id,
        }),
        Id = schema.new({
            id = id.from(_N, "GetLoggerDefinitionOutput", "Id"),
            type = "string",
            name = "Id",
            target_id = prelude.String.id,
        }),
        LastUpdatedTimestamp = schema.new({
            id = id.from(_N, "GetLoggerDefinitionOutput", "LastUpdatedTimestamp"),
            type = "string",
            name = "LastUpdatedTimestamp",
            target_id = prelude.String.id,
        }),
        LatestVersion = schema.new({
            id = id.from(_N, "GetLoggerDefinitionOutput", "LatestVersion"),
            type = "string",
            name = "LatestVersion",
            target_id = prelude.String.id,
        }),
        LatestVersionArn = schema.new({
            id = id.from(_N, "GetLoggerDefinitionOutput", "LatestVersionArn"),
            type = "string",
            name = "LatestVersionArn",
            target_id = prelude.String.id,
        }),
        Name = schema.new({
            id = id.from(_N, "GetLoggerDefinitionOutput", "Name"),
            type = "string",
            name = "Name",
            target_id = prelude.String.id,
        }),
        tags = schema.new({
            id = id.from(_N, "GetLoggerDefinitionOutput", "tags"),
            type = "map",
            name = "tags",
            target_id = prelude.Document.id,
            map_key = prelude.String,
            map_value = prelude.String,
        }),
    },
})

M.GetLoggerDefinitionVersionInput = schema.new({
    id = id.from(_N, "GetLoggerDefinitionVersionRequest"),
    type = "structure",
    members = {
        LoggerDefinitionId = schema.new({
            id = id.from(_N, "GetLoggerDefinitionVersionInput", "LoggerDefinitionId"),
            type = "string",
            name = "LoggerDefinitionId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
        LoggerDefinitionVersionId = schema.new({
            id = id.from(_N, "GetLoggerDefinitionVersionInput", "LoggerDefinitionVersionId"),
            type = "string",
            name = "LoggerDefinitionVersionId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
        NextToken = schema.new({
            id = id.from(_N, "GetLoggerDefinitionVersionInput", "NextToken"),
            type = "string",
            name = "NextToken",
            target_id = prelude.String.id,
            traits = {
                [traits.HTTP_QUERY] = { name = "NextToken" },
            },
        }),
    },
})

M.GetLoggerDefinitionVersionOutput = schema.new({
    id = id.from(_N, "GetLoggerDefinitionVersionResponse"),
    type = "structure",
    members = {
        Arn = schema.new({
            id = id.from(_N, "GetLoggerDefinitionVersionOutput", "Arn"),
            type = "string",
            name = "Arn",
            target_id = prelude.String.id,
        }),
        CreationTimestamp = schema.new({
            id = id.from(_N, "GetLoggerDefinitionVersionOutput", "CreationTimestamp"),
            type = "string",
            name = "CreationTimestamp",
            target_id = prelude.String.id,
        }),
        Definition = schema.new({
            id = id.from(_N, "GetLoggerDefinitionVersionOutput", "Definition"),
            type = "structure",
            name = "Definition",
            target_id = id.from(_N, "LoggerDefinitionVersion"),
            target = M.LoggerDefinitionVersion,
        }),
        Id = schema.new({
            id = id.from(_N, "GetLoggerDefinitionVersionOutput", "Id"),
            type = "string",
            name = "Id",
            target_id = prelude.String.id,
        }),
        Version = schema.new({
            id = id.from(_N, "GetLoggerDefinitionVersionOutput", "Version"),
            type = "string",
            name = "Version",
            target_id = prelude.String.id,
        }),
    },
})

M.GetResourceDefinitionInput = schema.new({
    id = id.from(_N, "GetResourceDefinitionRequest"),
    type = "structure",
    members = {
        ResourceDefinitionId = schema.new({
            id = id.from(_N, "GetResourceDefinitionInput", "ResourceDefinitionId"),
            type = "string",
            name = "ResourceDefinitionId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
    },
})

M.GetResourceDefinitionOutput = schema.new({
    id = id.from(_N, "GetResourceDefinitionResponse"),
    type = "structure",
    members = {
        Arn = schema.new({
            id = id.from(_N, "GetResourceDefinitionOutput", "Arn"),
            type = "string",
            name = "Arn",
            target_id = prelude.String.id,
        }),
        CreationTimestamp = schema.new({
            id = id.from(_N, "GetResourceDefinitionOutput", "CreationTimestamp"),
            type = "string",
            name = "CreationTimestamp",
            target_id = prelude.String.id,
        }),
        Id = schema.new({
            id = id.from(_N, "GetResourceDefinitionOutput", "Id"),
            type = "string",
            name = "Id",
            target_id = prelude.String.id,
        }),
        LastUpdatedTimestamp = schema.new({
            id = id.from(_N, "GetResourceDefinitionOutput", "LastUpdatedTimestamp"),
            type = "string",
            name = "LastUpdatedTimestamp",
            target_id = prelude.String.id,
        }),
        LatestVersion = schema.new({
            id = id.from(_N, "GetResourceDefinitionOutput", "LatestVersion"),
            type = "string",
            name = "LatestVersion",
            target_id = prelude.String.id,
        }),
        LatestVersionArn = schema.new({
            id = id.from(_N, "GetResourceDefinitionOutput", "LatestVersionArn"),
            type = "string",
            name = "LatestVersionArn",
            target_id = prelude.String.id,
        }),
        Name = schema.new({
            id = id.from(_N, "GetResourceDefinitionOutput", "Name"),
            type = "string",
            name = "Name",
            target_id = prelude.String.id,
        }),
        tags = schema.new({
            id = id.from(_N, "GetResourceDefinitionOutput", "tags"),
            type = "map",
            name = "tags",
            target_id = prelude.Document.id,
            map_key = prelude.String,
            map_value = prelude.String,
        }),
    },
})

M.GetResourceDefinitionVersionInput = schema.new({
    id = id.from(_N, "GetResourceDefinitionVersionRequest"),
    type = "structure",
    members = {
        ResourceDefinitionId = schema.new({
            id = id.from(_N, "GetResourceDefinitionVersionInput", "ResourceDefinitionId"),
            type = "string",
            name = "ResourceDefinitionId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
        ResourceDefinitionVersionId = schema.new({
            id = id.from(_N, "GetResourceDefinitionVersionInput", "ResourceDefinitionVersionId"),
            type = "string",
            name = "ResourceDefinitionVersionId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
    },
})

M.GetResourceDefinitionVersionOutput = schema.new({
    id = id.from(_N, "GetResourceDefinitionVersionResponse"),
    type = "structure",
    members = {
        Arn = schema.new({
            id = id.from(_N, "GetResourceDefinitionVersionOutput", "Arn"),
            type = "string",
            name = "Arn",
            target_id = prelude.String.id,
        }),
        CreationTimestamp = schema.new({
            id = id.from(_N, "GetResourceDefinitionVersionOutput", "CreationTimestamp"),
            type = "string",
            name = "CreationTimestamp",
            target_id = prelude.String.id,
        }),
        Definition = schema.new({
            id = id.from(_N, "GetResourceDefinitionVersionOutput", "Definition"),
            type = "structure",
            name = "Definition",
            target_id = id.from(_N, "ResourceDefinitionVersion"),
            target = M.ResourceDefinitionVersion,
        }),
        Id = schema.new({
            id = id.from(_N, "GetResourceDefinitionVersionOutput", "Id"),
            type = "string",
            name = "Id",
            target_id = prelude.String.id,
        }),
        Version = schema.new({
            id = id.from(_N, "GetResourceDefinitionVersionOutput", "Version"),
            type = "string",
            name = "Version",
            target_id = prelude.String.id,
        }),
    },
})

M.GetServiceRoleForAccountInput = schema.new({
    id = id.from(_N, "GetServiceRoleForAccountRequest"),
    type = "structure",
})

M.GetServiceRoleForAccountOutput = schema.new({
    id = id.from(_N, "GetServiceRoleForAccountResponse"),
    type = "structure",
    members = {
        AssociatedAt = schema.new({
            id = id.from(_N, "GetServiceRoleForAccountOutput", "AssociatedAt"),
            type = "string",
            name = "AssociatedAt",
            target_id = prelude.String.id,
        }),
        RoleArn = schema.new({
            id = id.from(_N, "GetServiceRoleForAccountOutput", "RoleArn"),
            type = "string",
            name = "RoleArn",
            target_id = prelude.String.id,
        }),
    },
})

M.GetSubscriptionDefinitionInput = schema.new({
    id = id.from(_N, "GetSubscriptionDefinitionRequest"),
    type = "structure",
    members = {
        SubscriptionDefinitionId = schema.new({
            id = id.from(_N, "GetSubscriptionDefinitionInput", "SubscriptionDefinitionId"),
            type = "string",
            name = "SubscriptionDefinitionId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
    },
})

M.GetSubscriptionDefinitionOutput = schema.new({
    id = id.from(_N, "GetSubscriptionDefinitionResponse"),
    type = "structure",
    members = {
        Arn = schema.new({
            id = id.from(_N, "GetSubscriptionDefinitionOutput", "Arn"),
            type = "string",
            name = "Arn",
            target_id = prelude.String.id,
        }),
        CreationTimestamp = schema.new({
            id = id.from(_N, "GetSubscriptionDefinitionOutput", "CreationTimestamp"),
            type = "string",
            name = "CreationTimestamp",
            target_id = prelude.String.id,
        }),
        Id = schema.new({
            id = id.from(_N, "GetSubscriptionDefinitionOutput", "Id"),
            type = "string",
            name = "Id",
            target_id = prelude.String.id,
        }),
        LastUpdatedTimestamp = schema.new({
            id = id.from(_N, "GetSubscriptionDefinitionOutput", "LastUpdatedTimestamp"),
            type = "string",
            name = "LastUpdatedTimestamp",
            target_id = prelude.String.id,
        }),
        LatestVersion = schema.new({
            id = id.from(_N, "GetSubscriptionDefinitionOutput", "LatestVersion"),
            type = "string",
            name = "LatestVersion",
            target_id = prelude.String.id,
        }),
        LatestVersionArn = schema.new({
            id = id.from(_N, "GetSubscriptionDefinitionOutput", "LatestVersionArn"),
            type = "string",
            name = "LatestVersionArn",
            target_id = prelude.String.id,
        }),
        Name = schema.new({
            id = id.from(_N, "GetSubscriptionDefinitionOutput", "Name"),
            type = "string",
            name = "Name",
            target_id = prelude.String.id,
        }),
        tags = schema.new({
            id = id.from(_N, "GetSubscriptionDefinitionOutput", "tags"),
            type = "map",
            name = "tags",
            target_id = prelude.Document.id,
            map_key = prelude.String,
            map_value = prelude.String,
        }),
    },
})

M.GetSubscriptionDefinitionVersionInput = schema.new({
    id = id.from(_N, "GetSubscriptionDefinitionVersionRequest"),
    type = "structure",
    members = {
        NextToken = schema.new({
            id = id.from(_N, "GetSubscriptionDefinitionVersionInput", "NextToken"),
            type = "string",
            name = "NextToken",
            target_id = prelude.String.id,
            traits = {
                [traits.HTTP_QUERY] = { name = "NextToken" },
            },
        }),
        SubscriptionDefinitionId = schema.new({
            id = id.from(_N, "GetSubscriptionDefinitionVersionInput", "SubscriptionDefinitionId"),
            type = "string",
            name = "SubscriptionDefinitionId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
        SubscriptionDefinitionVersionId = schema.new({
            id = id.from(_N, "GetSubscriptionDefinitionVersionInput", "SubscriptionDefinitionVersionId"),
            type = "string",
            name = "SubscriptionDefinitionVersionId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
    },
})

M.GetSubscriptionDefinitionVersionOutput = schema.new({
    id = id.from(_N, "GetSubscriptionDefinitionVersionResponse"),
    type = "structure",
    members = {
        Arn = schema.new({
            id = id.from(_N, "GetSubscriptionDefinitionVersionOutput", "Arn"),
            type = "string",
            name = "Arn",
            target_id = prelude.String.id,
        }),
        CreationTimestamp = schema.new({
            id = id.from(_N, "GetSubscriptionDefinitionVersionOutput", "CreationTimestamp"),
            type = "string",
            name = "CreationTimestamp",
            target_id = prelude.String.id,
        }),
        Definition = schema.new({
            id = id.from(_N, "GetSubscriptionDefinitionVersionOutput", "Definition"),
            type = "structure",
            name = "Definition",
            target_id = id.from(_N, "SubscriptionDefinitionVersion"),
            target = M.SubscriptionDefinitionVersion,
        }),
        Id = schema.new({
            id = id.from(_N, "GetSubscriptionDefinitionVersionOutput", "Id"),
            type = "string",
            name = "Id",
            target_id = prelude.String.id,
        }),
        NextToken = schema.new({
            id = id.from(_N, "GetSubscriptionDefinitionVersionOutput", "NextToken"),
            type = "string",
            name = "NextToken",
            target_id = prelude.String.id,
        }),
        Version = schema.new({
            id = id.from(_N, "GetSubscriptionDefinitionVersionOutput", "Version"),
            type = "string",
            name = "Version",
            target_id = prelude.String.id,
        }),
    },
})

M.GetThingRuntimeConfigurationInput = schema.new({
    id = id.from(_N, "GetThingRuntimeConfigurationRequest"),
    type = "structure",
    members = {
        ThingName = schema.new({
            id = id.from(_N, "GetThingRuntimeConfigurationInput", "ThingName"),
            type = "string",
            name = "ThingName",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
    },
})

M.TelemetryConfiguration = schema.new({
    id = id.from(_N, "TelemetryConfiguration"),
    type = "structure",
    members = {
        ConfigurationSyncStatus = schema.new({
            id = id.from(_N, "TelemetryConfiguration", "ConfigurationSyncStatus"),
            type = "string",
            name = "ConfigurationSyncStatus",
            target_id = prelude.String.id,
        }),
        Telemetry = schema.new({
            id = id.from(_N, "TelemetryConfiguration", "Telemetry"),
            type = "string",
            name = "Telemetry",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.RuntimeConfiguration = schema.new({
    id = id.from(_N, "RuntimeConfiguration"),
    type = "structure",
    members = {
        TelemetryConfiguration = schema.new({
            id = id.from(_N, "RuntimeConfiguration", "TelemetryConfiguration"),
            type = "structure",
            name = "TelemetryConfiguration",
            target_id = id.from(_N, "TelemetryConfiguration"),
            target = M.TelemetryConfiguration,
        }),
    },
})

M.GetThingRuntimeConfigurationOutput = schema.new({
    id = id.from(_N, "GetThingRuntimeConfigurationResponse"),
    type = "structure",
    members = {
        RuntimeConfiguration = schema.new({
            id = id.from(_N, "GetThingRuntimeConfigurationOutput", "RuntimeConfiguration"),
            type = "structure",
            name = "RuntimeConfiguration",
            target_id = id.from(_N, "RuntimeConfiguration"),
            target = M.RuntimeConfiguration,
        }),
    },
})

M.ListBulkDeploymentDetailedReportsInput = schema.new({
    id = id.from(_N, "ListBulkDeploymentDetailedReportsRequest"),
    type = "structure",
    members = {
        BulkDeploymentId = schema.new({
            id = id.from(_N, "ListBulkDeploymentDetailedReportsInput", "BulkDeploymentId"),
            type = "string",
            name = "BulkDeploymentId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
        MaxResults = schema.new({
            id = id.from(_N, "ListBulkDeploymentDetailedReportsInput", "MaxResults"),
            type = "string",
            name = "MaxResults",
            target_id = prelude.String.id,
            traits = {
                [traits.HTTP_QUERY] = { name = "MaxResults" },
            },
        }),
        NextToken = schema.new({
            id = id.from(_N, "ListBulkDeploymentDetailedReportsInput", "NextToken"),
            type = "string",
            name = "NextToken",
            target_id = prelude.String.id,
            traits = {
                [traits.HTTP_QUERY] = { name = "NextToken" },
            },
        }),
    },
})

M.ListBulkDeploymentDetailedReportsOutput = schema.new({
    id = id.from(_N, "ListBulkDeploymentDetailedReportsResponse"),
    type = "structure",
    members = {
        Deployments = schema.new({
            id = id.from(_N, "ListBulkDeploymentDetailedReportsOutput", "Deployments"),
            type = "list",
            name = "Deployments",
            target_id = prelude.Document.id,
            list_member = M.BulkDeploymentResult,
        }),
        NextToken = schema.new({
            id = id.from(_N, "ListBulkDeploymentDetailedReportsOutput", "NextToken"),
            type = "string",
            name = "NextToken",
            target_id = prelude.String.id,
        }),
    },
})

M.ListBulkDeploymentsInput = schema.new({
    id = id.from(_N, "ListBulkDeploymentsRequest"),
    type = "structure",
    members = {
        MaxResults = schema.new({
            id = id.from(_N, "ListBulkDeploymentsInput", "MaxResults"),
            type = "string",
            name = "MaxResults",
            target_id = prelude.String.id,
            traits = {
                [traits.HTTP_QUERY] = { name = "MaxResults" },
            },
        }),
        NextToken = schema.new({
            id = id.from(_N, "ListBulkDeploymentsInput", "NextToken"),
            type = "string",
            name = "NextToken",
            target_id = prelude.String.id,
            traits = {
                [traits.HTTP_QUERY] = { name = "NextToken" },
            },
        }),
    },
})

M.ListBulkDeploymentsOutput = schema.new({
    id = id.from(_N, "ListBulkDeploymentsResponse"),
    type = "structure",
    members = {
        BulkDeployments = schema.new({
            id = id.from(_N, "ListBulkDeploymentsOutput", "BulkDeployments"),
            type = "list",
            name = "BulkDeployments",
            target_id = prelude.Document.id,
            list_member = M.BulkDeployment,
        }),
        NextToken = schema.new({
            id = id.from(_N, "ListBulkDeploymentsOutput", "NextToken"),
            type = "string",
            name = "NextToken",
            target_id = prelude.String.id,
        }),
    },
})

M.ListConnectorDefinitionsInput = schema.new({
    id = id.from(_N, "ListConnectorDefinitionsRequest"),
    type = "structure",
    members = {
        MaxResults = schema.new({
            id = id.from(_N, "ListConnectorDefinitionsInput", "MaxResults"),
            type = "string",
            name = "MaxResults",
            target_id = prelude.String.id,
            traits = {
                [traits.HTTP_QUERY] = { name = "MaxResults" },
            },
        }),
        NextToken = schema.new({
            id = id.from(_N, "ListConnectorDefinitionsInput", "NextToken"),
            type = "string",
            name = "NextToken",
            target_id = prelude.String.id,
            traits = {
                [traits.HTTP_QUERY] = { name = "NextToken" },
            },
        }),
    },
})

M.ListConnectorDefinitionsOutput = schema.new({
    id = id.from(_N, "ListConnectorDefinitionsResponse"),
    type = "structure",
    members = {
        Definitions = schema.new({
            id = id.from(_N, "ListConnectorDefinitionsOutput", "Definitions"),
            type = "list",
            name = "Definitions",
            target_id = prelude.Document.id,
            list_member = M.DefinitionInformation,
        }),
        NextToken = schema.new({
            id = id.from(_N, "ListConnectorDefinitionsOutput", "NextToken"),
            type = "string",
            name = "NextToken",
            target_id = prelude.String.id,
        }),
    },
})

M.ListConnectorDefinitionVersionsInput = schema.new({
    id = id.from(_N, "ListConnectorDefinitionVersionsRequest"),
    type = "structure",
    members = {
        ConnectorDefinitionId = schema.new({
            id = id.from(_N, "ListConnectorDefinitionVersionsInput", "ConnectorDefinitionId"),
            type = "string",
            name = "ConnectorDefinitionId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
        MaxResults = schema.new({
            id = id.from(_N, "ListConnectorDefinitionVersionsInput", "MaxResults"),
            type = "string",
            name = "MaxResults",
            target_id = prelude.String.id,
            traits = {
                [traits.HTTP_QUERY] = { name = "MaxResults" },
            },
        }),
        NextToken = schema.new({
            id = id.from(_N, "ListConnectorDefinitionVersionsInput", "NextToken"),
            type = "string",
            name = "NextToken",
            target_id = prelude.String.id,
            traits = {
                [traits.HTTP_QUERY] = { name = "NextToken" },
            },
        }),
    },
})

M.ListConnectorDefinitionVersionsOutput = schema.new({
    id = id.from(_N, "ListConnectorDefinitionVersionsResponse"),
    type = "structure",
    members = {
        NextToken = schema.new({
            id = id.from(_N, "ListConnectorDefinitionVersionsOutput", "NextToken"),
            type = "string",
            name = "NextToken",
            target_id = prelude.String.id,
        }),
        Versions = schema.new({
            id = id.from(_N, "ListConnectorDefinitionVersionsOutput", "Versions"),
            type = "list",
            name = "Versions",
            target_id = prelude.Document.id,
            list_member = M.VersionInformation,
        }),
    },
})

M.ListCoreDefinitionsInput = schema.new({
    id = id.from(_N, "ListCoreDefinitionsRequest"),
    type = "structure",
    members = {
        MaxResults = schema.new({
            id = id.from(_N, "ListCoreDefinitionsInput", "MaxResults"),
            type = "string",
            name = "MaxResults",
            target_id = prelude.String.id,
            traits = {
                [traits.HTTP_QUERY] = { name = "MaxResults" },
            },
        }),
        NextToken = schema.new({
            id = id.from(_N, "ListCoreDefinitionsInput", "NextToken"),
            type = "string",
            name = "NextToken",
            target_id = prelude.String.id,
            traits = {
                [traits.HTTP_QUERY] = { name = "NextToken" },
            },
        }),
    },
})

M.ListCoreDefinitionsOutput = schema.new({
    id = id.from(_N, "ListCoreDefinitionsResponse"),
    type = "structure",
    members = {
        Definitions = schema.new({
            id = id.from(_N, "ListCoreDefinitionsOutput", "Definitions"),
            type = "list",
            name = "Definitions",
            target_id = prelude.Document.id,
            list_member = M.DefinitionInformation,
        }),
        NextToken = schema.new({
            id = id.from(_N, "ListCoreDefinitionsOutput", "NextToken"),
            type = "string",
            name = "NextToken",
            target_id = prelude.String.id,
        }),
    },
})

M.ListCoreDefinitionVersionsInput = schema.new({
    id = id.from(_N, "ListCoreDefinitionVersionsRequest"),
    type = "structure",
    members = {
        CoreDefinitionId = schema.new({
            id = id.from(_N, "ListCoreDefinitionVersionsInput", "CoreDefinitionId"),
            type = "string",
            name = "CoreDefinitionId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
        MaxResults = schema.new({
            id = id.from(_N, "ListCoreDefinitionVersionsInput", "MaxResults"),
            type = "string",
            name = "MaxResults",
            target_id = prelude.String.id,
            traits = {
                [traits.HTTP_QUERY] = { name = "MaxResults" },
            },
        }),
        NextToken = schema.new({
            id = id.from(_N, "ListCoreDefinitionVersionsInput", "NextToken"),
            type = "string",
            name = "NextToken",
            target_id = prelude.String.id,
            traits = {
                [traits.HTTP_QUERY] = { name = "NextToken" },
            },
        }),
    },
})

M.ListCoreDefinitionVersionsOutput = schema.new({
    id = id.from(_N, "ListCoreDefinitionVersionsResponse"),
    type = "structure",
    members = {
        NextToken = schema.new({
            id = id.from(_N, "ListCoreDefinitionVersionsOutput", "NextToken"),
            type = "string",
            name = "NextToken",
            target_id = prelude.String.id,
        }),
        Versions = schema.new({
            id = id.from(_N, "ListCoreDefinitionVersionsOutput", "Versions"),
            type = "list",
            name = "Versions",
            target_id = prelude.Document.id,
            list_member = M.VersionInformation,
        }),
    },
})

M.ListDeploymentsInput = schema.new({
    id = id.from(_N, "ListDeploymentsRequest"),
    type = "structure",
    members = {
        GroupId = schema.new({
            id = id.from(_N, "ListDeploymentsInput", "GroupId"),
            type = "string",
            name = "GroupId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
        MaxResults = schema.new({
            id = id.from(_N, "ListDeploymentsInput", "MaxResults"),
            type = "string",
            name = "MaxResults",
            target_id = prelude.String.id,
            traits = {
                [traits.HTTP_QUERY] = { name = "MaxResults" },
            },
        }),
        NextToken = schema.new({
            id = id.from(_N, "ListDeploymentsInput", "NextToken"),
            type = "string",
            name = "NextToken",
            target_id = prelude.String.id,
            traits = {
                [traits.HTTP_QUERY] = { name = "NextToken" },
            },
        }),
    },
})

M.ListDeploymentsOutput = schema.new({
    id = id.from(_N, "ListDeploymentsResponse"),
    type = "structure",
    members = {
        Deployments = schema.new({
            id = id.from(_N, "ListDeploymentsOutput", "Deployments"),
            type = "list",
            name = "Deployments",
            target_id = prelude.Document.id,
            list_member = M.Deployment,
        }),
        NextToken = schema.new({
            id = id.from(_N, "ListDeploymentsOutput", "NextToken"),
            type = "string",
            name = "NextToken",
            target_id = prelude.String.id,
        }),
    },
})

M.ListDeviceDefinitionsInput = schema.new({
    id = id.from(_N, "ListDeviceDefinitionsRequest"),
    type = "structure",
    members = {
        MaxResults = schema.new({
            id = id.from(_N, "ListDeviceDefinitionsInput", "MaxResults"),
            type = "string",
            name = "MaxResults",
            target_id = prelude.String.id,
            traits = {
                [traits.HTTP_QUERY] = { name = "MaxResults" },
            },
        }),
        NextToken = schema.new({
            id = id.from(_N, "ListDeviceDefinitionsInput", "NextToken"),
            type = "string",
            name = "NextToken",
            target_id = prelude.String.id,
            traits = {
                [traits.HTTP_QUERY] = { name = "NextToken" },
            },
        }),
    },
})

M.ListDeviceDefinitionsOutput = schema.new({
    id = id.from(_N, "ListDeviceDefinitionsResponse"),
    type = "structure",
    members = {
        Definitions = schema.new({
            id = id.from(_N, "ListDeviceDefinitionsOutput", "Definitions"),
            type = "list",
            name = "Definitions",
            target_id = prelude.Document.id,
            list_member = M.DefinitionInformation,
        }),
        NextToken = schema.new({
            id = id.from(_N, "ListDeviceDefinitionsOutput", "NextToken"),
            type = "string",
            name = "NextToken",
            target_id = prelude.String.id,
        }),
    },
})

M.ListDeviceDefinitionVersionsInput = schema.new({
    id = id.from(_N, "ListDeviceDefinitionVersionsRequest"),
    type = "structure",
    members = {
        DeviceDefinitionId = schema.new({
            id = id.from(_N, "ListDeviceDefinitionVersionsInput", "DeviceDefinitionId"),
            type = "string",
            name = "DeviceDefinitionId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
        MaxResults = schema.new({
            id = id.from(_N, "ListDeviceDefinitionVersionsInput", "MaxResults"),
            type = "string",
            name = "MaxResults",
            target_id = prelude.String.id,
            traits = {
                [traits.HTTP_QUERY] = { name = "MaxResults" },
            },
        }),
        NextToken = schema.new({
            id = id.from(_N, "ListDeviceDefinitionVersionsInput", "NextToken"),
            type = "string",
            name = "NextToken",
            target_id = prelude.String.id,
            traits = {
                [traits.HTTP_QUERY] = { name = "NextToken" },
            },
        }),
    },
})

M.ListDeviceDefinitionVersionsOutput = schema.new({
    id = id.from(_N, "ListDeviceDefinitionVersionsResponse"),
    type = "structure",
    members = {
        NextToken = schema.new({
            id = id.from(_N, "ListDeviceDefinitionVersionsOutput", "NextToken"),
            type = "string",
            name = "NextToken",
            target_id = prelude.String.id,
        }),
        Versions = schema.new({
            id = id.from(_N, "ListDeviceDefinitionVersionsOutput", "Versions"),
            type = "list",
            name = "Versions",
            target_id = prelude.Document.id,
            list_member = M.VersionInformation,
        }),
    },
})

M.ListFunctionDefinitionsInput = schema.new({
    id = id.from(_N, "ListFunctionDefinitionsRequest"),
    type = "structure",
    members = {
        MaxResults = schema.new({
            id = id.from(_N, "ListFunctionDefinitionsInput", "MaxResults"),
            type = "string",
            name = "MaxResults",
            target_id = prelude.String.id,
            traits = {
                [traits.HTTP_QUERY] = { name = "MaxResults" },
            },
        }),
        NextToken = schema.new({
            id = id.from(_N, "ListFunctionDefinitionsInput", "NextToken"),
            type = "string",
            name = "NextToken",
            target_id = prelude.String.id,
            traits = {
                [traits.HTTP_QUERY] = { name = "NextToken" },
            },
        }),
    },
})

M.ListFunctionDefinitionsOutput = schema.new({
    id = id.from(_N, "ListFunctionDefinitionsResponse"),
    type = "structure",
    members = {
        Definitions = schema.new({
            id = id.from(_N, "ListFunctionDefinitionsOutput", "Definitions"),
            type = "list",
            name = "Definitions",
            target_id = prelude.Document.id,
            list_member = M.DefinitionInformation,
        }),
        NextToken = schema.new({
            id = id.from(_N, "ListFunctionDefinitionsOutput", "NextToken"),
            type = "string",
            name = "NextToken",
            target_id = prelude.String.id,
        }),
    },
})

M.ListFunctionDefinitionVersionsInput = schema.new({
    id = id.from(_N, "ListFunctionDefinitionVersionsRequest"),
    type = "structure",
    members = {
        FunctionDefinitionId = schema.new({
            id = id.from(_N, "ListFunctionDefinitionVersionsInput", "FunctionDefinitionId"),
            type = "string",
            name = "FunctionDefinitionId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
        MaxResults = schema.new({
            id = id.from(_N, "ListFunctionDefinitionVersionsInput", "MaxResults"),
            type = "string",
            name = "MaxResults",
            target_id = prelude.String.id,
            traits = {
                [traits.HTTP_QUERY] = { name = "MaxResults" },
            },
        }),
        NextToken = schema.new({
            id = id.from(_N, "ListFunctionDefinitionVersionsInput", "NextToken"),
            type = "string",
            name = "NextToken",
            target_id = prelude.String.id,
            traits = {
                [traits.HTTP_QUERY] = { name = "NextToken" },
            },
        }),
    },
})

M.ListFunctionDefinitionVersionsOutput = schema.new({
    id = id.from(_N, "ListFunctionDefinitionVersionsResponse"),
    type = "structure",
    members = {
        NextToken = schema.new({
            id = id.from(_N, "ListFunctionDefinitionVersionsOutput", "NextToken"),
            type = "string",
            name = "NextToken",
            target_id = prelude.String.id,
        }),
        Versions = schema.new({
            id = id.from(_N, "ListFunctionDefinitionVersionsOutput", "Versions"),
            type = "list",
            name = "Versions",
            target_id = prelude.Document.id,
            list_member = M.VersionInformation,
        }),
    },
})

M.ListGroupCertificateAuthoritiesInput = schema.new({
    id = id.from(_N, "ListGroupCertificateAuthoritiesRequest"),
    type = "structure",
    members = {
        GroupId = schema.new({
            id = id.from(_N, "ListGroupCertificateAuthoritiesInput", "GroupId"),
            type = "string",
            name = "GroupId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
    },
})

M.ListGroupCertificateAuthoritiesOutput = schema.new({
    id = id.from(_N, "ListGroupCertificateAuthoritiesResponse"),
    type = "structure",
    members = {
        GroupCertificateAuthorities = schema.new({
            id = id.from(_N, "ListGroupCertificateAuthoritiesOutput", "GroupCertificateAuthorities"),
            type = "list",
            name = "GroupCertificateAuthorities",
            target_id = prelude.Document.id,
            list_member = M.GroupCertificateAuthorityProperties,
        }),
    },
})

M.ListGroupsInput = schema.new({
    id = id.from(_N, "ListGroupsRequest"),
    type = "structure",
    members = {
        MaxResults = schema.new({
            id = id.from(_N, "ListGroupsInput", "MaxResults"),
            type = "string",
            name = "MaxResults",
            target_id = prelude.String.id,
            traits = {
                [traits.HTTP_QUERY] = { name = "MaxResults" },
            },
        }),
        NextToken = schema.new({
            id = id.from(_N, "ListGroupsInput", "NextToken"),
            type = "string",
            name = "NextToken",
            target_id = prelude.String.id,
            traits = {
                [traits.HTTP_QUERY] = { name = "NextToken" },
            },
        }),
    },
})

M.ListGroupsOutput = schema.new({
    id = id.from(_N, "ListGroupsResponse"),
    type = "structure",
    members = {
        Groups = schema.new({
            id = id.from(_N, "ListGroupsOutput", "Groups"),
            type = "list",
            name = "Groups",
            target_id = prelude.Document.id,
            list_member = M.GroupInformation,
        }),
        NextToken = schema.new({
            id = id.from(_N, "ListGroupsOutput", "NextToken"),
            type = "string",
            name = "NextToken",
            target_id = prelude.String.id,
        }),
    },
})

M.ListGroupVersionsInput = schema.new({
    id = id.from(_N, "ListGroupVersionsRequest"),
    type = "structure",
    members = {
        GroupId = schema.new({
            id = id.from(_N, "ListGroupVersionsInput", "GroupId"),
            type = "string",
            name = "GroupId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
        MaxResults = schema.new({
            id = id.from(_N, "ListGroupVersionsInput", "MaxResults"),
            type = "string",
            name = "MaxResults",
            target_id = prelude.String.id,
            traits = {
                [traits.HTTP_QUERY] = { name = "MaxResults" },
            },
        }),
        NextToken = schema.new({
            id = id.from(_N, "ListGroupVersionsInput", "NextToken"),
            type = "string",
            name = "NextToken",
            target_id = prelude.String.id,
            traits = {
                [traits.HTTP_QUERY] = { name = "NextToken" },
            },
        }),
    },
})

M.ListGroupVersionsOutput = schema.new({
    id = id.from(_N, "ListGroupVersionsResponse"),
    type = "structure",
    members = {
        NextToken = schema.new({
            id = id.from(_N, "ListGroupVersionsOutput", "NextToken"),
            type = "string",
            name = "NextToken",
            target_id = prelude.String.id,
        }),
        Versions = schema.new({
            id = id.from(_N, "ListGroupVersionsOutput", "Versions"),
            type = "list",
            name = "Versions",
            target_id = prelude.Document.id,
            list_member = M.VersionInformation,
        }),
    },
})

M.ListLoggerDefinitionsInput = schema.new({
    id = id.from(_N, "ListLoggerDefinitionsRequest"),
    type = "structure",
    members = {
        MaxResults = schema.new({
            id = id.from(_N, "ListLoggerDefinitionsInput", "MaxResults"),
            type = "string",
            name = "MaxResults",
            target_id = prelude.String.id,
            traits = {
                [traits.HTTP_QUERY] = { name = "MaxResults" },
            },
        }),
        NextToken = schema.new({
            id = id.from(_N, "ListLoggerDefinitionsInput", "NextToken"),
            type = "string",
            name = "NextToken",
            target_id = prelude.String.id,
            traits = {
                [traits.HTTP_QUERY] = { name = "NextToken" },
            },
        }),
    },
})

M.ListLoggerDefinitionsOutput = schema.new({
    id = id.from(_N, "ListLoggerDefinitionsResponse"),
    type = "structure",
    members = {
        Definitions = schema.new({
            id = id.from(_N, "ListLoggerDefinitionsOutput", "Definitions"),
            type = "list",
            name = "Definitions",
            target_id = prelude.Document.id,
            list_member = M.DefinitionInformation,
        }),
        NextToken = schema.new({
            id = id.from(_N, "ListLoggerDefinitionsOutput", "NextToken"),
            type = "string",
            name = "NextToken",
            target_id = prelude.String.id,
        }),
    },
})

M.ListLoggerDefinitionVersionsInput = schema.new({
    id = id.from(_N, "ListLoggerDefinitionVersionsRequest"),
    type = "structure",
    members = {
        LoggerDefinitionId = schema.new({
            id = id.from(_N, "ListLoggerDefinitionVersionsInput", "LoggerDefinitionId"),
            type = "string",
            name = "LoggerDefinitionId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
        MaxResults = schema.new({
            id = id.from(_N, "ListLoggerDefinitionVersionsInput", "MaxResults"),
            type = "string",
            name = "MaxResults",
            target_id = prelude.String.id,
            traits = {
                [traits.HTTP_QUERY] = { name = "MaxResults" },
            },
        }),
        NextToken = schema.new({
            id = id.from(_N, "ListLoggerDefinitionVersionsInput", "NextToken"),
            type = "string",
            name = "NextToken",
            target_id = prelude.String.id,
            traits = {
                [traits.HTTP_QUERY] = { name = "NextToken" },
            },
        }),
    },
})

M.ListLoggerDefinitionVersionsOutput = schema.new({
    id = id.from(_N, "ListLoggerDefinitionVersionsResponse"),
    type = "structure",
    members = {
        NextToken = schema.new({
            id = id.from(_N, "ListLoggerDefinitionVersionsOutput", "NextToken"),
            type = "string",
            name = "NextToken",
            target_id = prelude.String.id,
        }),
        Versions = schema.new({
            id = id.from(_N, "ListLoggerDefinitionVersionsOutput", "Versions"),
            type = "list",
            name = "Versions",
            target_id = prelude.Document.id,
            list_member = M.VersionInformation,
        }),
    },
})

M.ListResourceDefinitionsInput = schema.new({
    id = id.from(_N, "ListResourceDefinitionsRequest"),
    type = "structure",
    members = {
        MaxResults = schema.new({
            id = id.from(_N, "ListResourceDefinitionsInput", "MaxResults"),
            type = "string",
            name = "MaxResults",
            target_id = prelude.String.id,
            traits = {
                [traits.HTTP_QUERY] = { name = "MaxResults" },
            },
        }),
        NextToken = schema.new({
            id = id.from(_N, "ListResourceDefinitionsInput", "NextToken"),
            type = "string",
            name = "NextToken",
            target_id = prelude.String.id,
            traits = {
                [traits.HTTP_QUERY] = { name = "NextToken" },
            },
        }),
    },
})

M.ListResourceDefinitionsOutput = schema.new({
    id = id.from(_N, "ListResourceDefinitionsResponse"),
    type = "structure",
    members = {
        Definitions = schema.new({
            id = id.from(_N, "ListResourceDefinitionsOutput", "Definitions"),
            type = "list",
            name = "Definitions",
            target_id = prelude.Document.id,
            list_member = M.DefinitionInformation,
        }),
        NextToken = schema.new({
            id = id.from(_N, "ListResourceDefinitionsOutput", "NextToken"),
            type = "string",
            name = "NextToken",
            target_id = prelude.String.id,
        }),
    },
})

M.ListResourceDefinitionVersionsInput = schema.new({
    id = id.from(_N, "ListResourceDefinitionVersionsRequest"),
    type = "structure",
    members = {
        MaxResults = schema.new({
            id = id.from(_N, "ListResourceDefinitionVersionsInput", "MaxResults"),
            type = "string",
            name = "MaxResults",
            target_id = prelude.String.id,
            traits = {
                [traits.HTTP_QUERY] = { name = "MaxResults" },
            },
        }),
        NextToken = schema.new({
            id = id.from(_N, "ListResourceDefinitionVersionsInput", "NextToken"),
            type = "string",
            name = "NextToken",
            target_id = prelude.String.id,
            traits = {
                [traits.HTTP_QUERY] = { name = "NextToken" },
            },
        }),
        ResourceDefinitionId = schema.new({
            id = id.from(_N, "ListResourceDefinitionVersionsInput", "ResourceDefinitionId"),
            type = "string",
            name = "ResourceDefinitionId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
    },
})

M.ListResourceDefinitionVersionsOutput = schema.new({
    id = id.from(_N, "ListResourceDefinitionVersionsResponse"),
    type = "structure",
    members = {
        NextToken = schema.new({
            id = id.from(_N, "ListResourceDefinitionVersionsOutput", "NextToken"),
            type = "string",
            name = "NextToken",
            target_id = prelude.String.id,
        }),
        Versions = schema.new({
            id = id.from(_N, "ListResourceDefinitionVersionsOutput", "Versions"),
            type = "list",
            name = "Versions",
            target_id = prelude.Document.id,
            list_member = M.VersionInformation,
        }),
    },
})

M.ListSubscriptionDefinitionsInput = schema.new({
    id = id.from(_N, "ListSubscriptionDefinitionsRequest"),
    type = "structure",
    members = {
        MaxResults = schema.new({
            id = id.from(_N, "ListSubscriptionDefinitionsInput", "MaxResults"),
            type = "string",
            name = "MaxResults",
            target_id = prelude.String.id,
            traits = {
                [traits.HTTP_QUERY] = { name = "MaxResults" },
            },
        }),
        NextToken = schema.new({
            id = id.from(_N, "ListSubscriptionDefinitionsInput", "NextToken"),
            type = "string",
            name = "NextToken",
            target_id = prelude.String.id,
            traits = {
                [traits.HTTP_QUERY] = { name = "NextToken" },
            },
        }),
    },
})

M.ListSubscriptionDefinitionsOutput = schema.new({
    id = id.from(_N, "ListSubscriptionDefinitionsResponse"),
    type = "structure",
    members = {
        Definitions = schema.new({
            id = id.from(_N, "ListSubscriptionDefinitionsOutput", "Definitions"),
            type = "list",
            name = "Definitions",
            target_id = prelude.Document.id,
            list_member = M.DefinitionInformation,
        }),
        NextToken = schema.new({
            id = id.from(_N, "ListSubscriptionDefinitionsOutput", "NextToken"),
            type = "string",
            name = "NextToken",
            target_id = prelude.String.id,
        }),
    },
})

M.ListSubscriptionDefinitionVersionsInput = schema.new({
    id = id.from(_N, "ListSubscriptionDefinitionVersionsRequest"),
    type = "structure",
    members = {
        MaxResults = schema.new({
            id = id.from(_N, "ListSubscriptionDefinitionVersionsInput", "MaxResults"),
            type = "string",
            name = "MaxResults",
            target_id = prelude.String.id,
            traits = {
                [traits.HTTP_QUERY] = { name = "MaxResults" },
            },
        }),
        NextToken = schema.new({
            id = id.from(_N, "ListSubscriptionDefinitionVersionsInput", "NextToken"),
            type = "string",
            name = "NextToken",
            target_id = prelude.String.id,
            traits = {
                [traits.HTTP_QUERY] = { name = "NextToken" },
            },
        }),
        SubscriptionDefinitionId = schema.new({
            id = id.from(_N, "ListSubscriptionDefinitionVersionsInput", "SubscriptionDefinitionId"),
            type = "string",
            name = "SubscriptionDefinitionId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
    },
})

M.ListSubscriptionDefinitionVersionsOutput = schema.new({
    id = id.from(_N, "ListSubscriptionDefinitionVersionsResponse"),
    type = "structure",
    members = {
        NextToken = schema.new({
            id = id.from(_N, "ListSubscriptionDefinitionVersionsOutput", "NextToken"),
            type = "string",
            name = "NextToken",
            target_id = prelude.String.id,
        }),
        Versions = schema.new({
            id = id.from(_N, "ListSubscriptionDefinitionVersionsOutput", "Versions"),
            type = "list",
            name = "Versions",
            target_id = prelude.Document.id,
            list_member = M.VersionInformation,
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
                [traits.HTTP_LABEL] = {},
            },
        }),
    },
})

M.ListTagsForResourceOutput = schema.new({
    id = id.from(_N, "ListTagsForResourceResponse"),
    type = "structure",
    members = {
        tags = schema.new({
            id = id.from(_N, "ListTagsForResourceOutput", "tags"),
            type = "map",
            name = "tags",
            target_id = prelude.Document.id,
            map_key = prelude.String,
            map_value = prelude.String,
        }),
    },
})

M.ResetDeploymentsInput = schema.new({
    id = id.from(_N, "ResetDeploymentsRequest"),
    type = "structure",
    members = {
        AmznClientToken = schema.new({
            id = id.from(_N, "ResetDeploymentsInput", "AmznClientToken"),
            type = "string",
            name = "AmznClientToken",
            target_id = prelude.String.id,
            traits = {
                [traits.HTTP_HEADER] = { name = "X-Amzn-Client-Token" },
            },
        }),
        Force = schema.new({
            id = id.from(_N, "ResetDeploymentsInput", "Force"),
            type = "boolean",
            name = "Force",
            target_id = prelude.Boolean.id,
        }),
        GroupId = schema.new({
            id = id.from(_N, "ResetDeploymentsInput", "GroupId"),
            type = "string",
            name = "GroupId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
    },
})

M.ResetDeploymentsOutput = schema.new({
    id = id.from(_N, "ResetDeploymentsResponse"),
    type = "structure",
    members = {
        DeploymentArn = schema.new({
            id = id.from(_N, "ResetDeploymentsOutput", "DeploymentArn"),
            type = "string",
            name = "DeploymentArn",
            target_id = prelude.String.id,
        }),
        DeploymentId = schema.new({
            id = id.from(_N, "ResetDeploymentsOutput", "DeploymentId"),
            type = "string",
            name = "DeploymentId",
            target_id = prelude.String.id,
        }),
    },
})

M.StartBulkDeploymentInput = schema.new({
    id = id.from(_N, "StartBulkDeploymentRequest"),
    type = "structure",
    members = {
        AmznClientToken = schema.new({
            id = id.from(_N, "StartBulkDeploymentInput", "AmznClientToken"),
            type = "string",
            name = "AmznClientToken",
            target_id = prelude.String.id,
            traits = {
                [traits.HTTP_HEADER] = { name = "X-Amzn-Client-Token" },
            },
        }),
        ExecutionRoleArn = schema.new({
            id = id.from(_N, "StartBulkDeploymentInput", "ExecutionRoleArn"),
            type = "string",
            name = "ExecutionRoleArn",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        InputFileUri = schema.new({
            id = id.from(_N, "StartBulkDeploymentInput", "InputFileUri"),
            type = "string",
            name = "InputFileUri",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        tags = schema.new({
            id = id.from(_N, "StartBulkDeploymentInput", "tags"),
            type = "map",
            name = "tags",
            target_id = prelude.Document.id,
            map_key = prelude.String,
            map_value = prelude.String,
        }),
    },
})

M.StartBulkDeploymentOutput = schema.new({
    id = id.from(_N, "StartBulkDeploymentResponse"),
    type = "structure",
    members = {
        BulkDeploymentArn = schema.new({
            id = id.from(_N, "StartBulkDeploymentOutput", "BulkDeploymentArn"),
            type = "string",
            name = "BulkDeploymentArn",
            target_id = prelude.String.id,
        }),
        BulkDeploymentId = schema.new({
            id = id.from(_N, "StartBulkDeploymentOutput", "BulkDeploymentId"),
            type = "string",
            name = "BulkDeploymentId",
            target_id = prelude.String.id,
        }),
    },
})

M.StopBulkDeploymentInput = schema.new({
    id = id.from(_N, "StopBulkDeploymentRequest"),
    type = "structure",
    members = {
        BulkDeploymentId = schema.new({
            id = id.from(_N, "StopBulkDeploymentInput", "BulkDeploymentId"),
            type = "string",
            name = "BulkDeploymentId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
    },
})

M.StopBulkDeploymentOutput = schema.new({
    id = id.from(_N, "StopBulkDeploymentResponse"),
    type = "structure",
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
                [traits.HTTP_LABEL] = {},
            },
        }),
        tags = schema.new({
            id = id.from(_N, "TagResourceInput", "tags"),
            type = "map",
            name = "tags",
            target_id = prelude.Document.id,
            map_key = prelude.String,
            map_value = prelude.String,
        }),
    },
})

M.TagResourceOutput = schema.new({
    id = id.from(_N, "Unit"),
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
    id = id.from(_N, "Unit"),
    type = "structure",
})

M.UpdateConnectivityInfoInput = schema.new({
    id = id.from(_N, "UpdateConnectivityInfoRequest"),
    type = "structure",
    members = {
        ConnectivityInfo = schema.new({
            id = id.from(_N, "UpdateConnectivityInfoInput", "ConnectivityInfo"),
            type = "list",
            name = "ConnectivityInfo",
            target_id = prelude.Document.id,
            list_member = M.ConnectivityInfo,
        }),
        ThingName = schema.new({
            id = id.from(_N, "UpdateConnectivityInfoInput", "ThingName"),
            type = "string",
            name = "ThingName",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
    },
})

M.UpdateConnectivityInfoOutput = schema.new({
    id = id.from(_N, "UpdateConnectivityInfoResponse"),
    type = "structure",
    members = {
        Message = schema.new({
            id = id.from(_N, "UpdateConnectivityInfoOutput", "Message"),
            type = "string",
            name = "Message",
            target_id = prelude.String.id,
            traits = {
                [traits.JSON_NAME] = { name = "message" },
            },
        }),
        Version = schema.new({
            id = id.from(_N, "UpdateConnectivityInfoOutput", "Version"),
            type = "string",
            name = "Version",
            target_id = prelude.String.id,
        }),
    },
})

M.UpdateConnectorDefinitionInput = schema.new({
    id = id.from(_N, "UpdateConnectorDefinitionRequest"),
    type = "structure",
    members = {
        ConnectorDefinitionId = schema.new({
            id = id.from(_N, "UpdateConnectorDefinitionInput", "ConnectorDefinitionId"),
            type = "string",
            name = "ConnectorDefinitionId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
        Name = schema.new({
            id = id.from(_N, "UpdateConnectorDefinitionInput", "Name"),
            type = "string",
            name = "Name",
            target_id = prelude.String.id,
        }),
    },
})

M.UpdateConnectorDefinitionOutput = schema.new({
    id = id.from(_N, "UpdateConnectorDefinitionResponse"),
    type = "structure",
})

M.UpdateCoreDefinitionInput = schema.new({
    id = id.from(_N, "UpdateCoreDefinitionRequest"),
    type = "structure",
    members = {
        CoreDefinitionId = schema.new({
            id = id.from(_N, "UpdateCoreDefinitionInput", "CoreDefinitionId"),
            type = "string",
            name = "CoreDefinitionId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
        Name = schema.new({
            id = id.from(_N, "UpdateCoreDefinitionInput", "Name"),
            type = "string",
            name = "Name",
            target_id = prelude.String.id,
        }),
    },
})

M.UpdateCoreDefinitionOutput = schema.new({
    id = id.from(_N, "UpdateCoreDefinitionResponse"),
    type = "structure",
})

M.UpdateDeviceDefinitionInput = schema.new({
    id = id.from(_N, "UpdateDeviceDefinitionRequest"),
    type = "structure",
    members = {
        DeviceDefinitionId = schema.new({
            id = id.from(_N, "UpdateDeviceDefinitionInput", "DeviceDefinitionId"),
            type = "string",
            name = "DeviceDefinitionId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
        Name = schema.new({
            id = id.from(_N, "UpdateDeviceDefinitionInput", "Name"),
            type = "string",
            name = "Name",
            target_id = prelude.String.id,
        }),
    },
})

M.UpdateDeviceDefinitionOutput = schema.new({
    id = id.from(_N, "UpdateDeviceDefinitionResponse"),
    type = "structure",
})

M.UpdateFunctionDefinitionInput = schema.new({
    id = id.from(_N, "UpdateFunctionDefinitionRequest"),
    type = "structure",
    members = {
        FunctionDefinitionId = schema.new({
            id = id.from(_N, "UpdateFunctionDefinitionInput", "FunctionDefinitionId"),
            type = "string",
            name = "FunctionDefinitionId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
        Name = schema.new({
            id = id.from(_N, "UpdateFunctionDefinitionInput", "Name"),
            type = "string",
            name = "Name",
            target_id = prelude.String.id,
        }),
    },
})

M.UpdateFunctionDefinitionOutput = schema.new({
    id = id.from(_N, "UpdateFunctionDefinitionResponse"),
    type = "structure",
})

M.UpdateGroupInput = schema.new({
    id = id.from(_N, "UpdateGroupRequest"),
    type = "structure",
    members = {
        GroupId = schema.new({
            id = id.from(_N, "UpdateGroupInput", "GroupId"),
            type = "string",
            name = "GroupId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
        Name = schema.new({
            id = id.from(_N, "UpdateGroupInput", "Name"),
            type = "string",
            name = "Name",
            target_id = prelude.String.id,
        }),
    },
})

M.UpdateGroupOutput = schema.new({
    id = id.from(_N, "UpdateGroupResponse"),
    type = "structure",
})

M.UpdateGroupCertificateConfigurationInput = schema.new({
    id = id.from(_N, "UpdateGroupCertificateConfigurationRequest"),
    type = "structure",
    members = {
        CertificateExpiryInMilliseconds = schema.new({
            id = id.from(_N, "UpdateGroupCertificateConfigurationInput", "CertificateExpiryInMilliseconds"),
            type = "string",
            name = "CertificateExpiryInMilliseconds",
            target_id = prelude.String.id,
        }),
        GroupId = schema.new({
            id = id.from(_N, "UpdateGroupCertificateConfigurationInput", "GroupId"),
            type = "string",
            name = "GroupId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
    },
})

M.UpdateGroupCertificateConfigurationOutput = schema.new({
    id = id.from(_N, "UpdateGroupCertificateConfigurationResponse"),
    type = "structure",
    members = {
        CertificateAuthorityExpiryInMilliseconds = schema.new({
            id = id.from(_N, "UpdateGroupCertificateConfigurationOutput", "CertificateAuthorityExpiryInMilliseconds"),
            type = "string",
            name = "CertificateAuthorityExpiryInMilliseconds",
            target_id = prelude.String.id,
        }),
        CertificateExpiryInMilliseconds = schema.new({
            id = id.from(_N, "UpdateGroupCertificateConfigurationOutput", "CertificateExpiryInMilliseconds"),
            type = "string",
            name = "CertificateExpiryInMilliseconds",
            target_id = prelude.String.id,
        }),
        GroupId = schema.new({
            id = id.from(_N, "UpdateGroupCertificateConfigurationOutput", "GroupId"),
            type = "string",
            name = "GroupId",
            target_id = prelude.String.id,
        }),
    },
})

M.UpdateLoggerDefinitionInput = schema.new({
    id = id.from(_N, "UpdateLoggerDefinitionRequest"),
    type = "structure",
    members = {
        LoggerDefinitionId = schema.new({
            id = id.from(_N, "UpdateLoggerDefinitionInput", "LoggerDefinitionId"),
            type = "string",
            name = "LoggerDefinitionId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
        Name = schema.new({
            id = id.from(_N, "UpdateLoggerDefinitionInput", "Name"),
            type = "string",
            name = "Name",
            target_id = prelude.String.id,
        }),
    },
})

M.UpdateLoggerDefinitionOutput = schema.new({
    id = id.from(_N, "UpdateLoggerDefinitionResponse"),
    type = "structure",
})

M.UpdateResourceDefinitionInput = schema.new({
    id = id.from(_N, "UpdateResourceDefinitionRequest"),
    type = "structure",
    members = {
        Name = schema.new({
            id = id.from(_N, "UpdateResourceDefinitionInput", "Name"),
            type = "string",
            name = "Name",
            target_id = prelude.String.id,
        }),
        ResourceDefinitionId = schema.new({
            id = id.from(_N, "UpdateResourceDefinitionInput", "ResourceDefinitionId"),
            type = "string",
            name = "ResourceDefinitionId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
    },
})

M.UpdateResourceDefinitionOutput = schema.new({
    id = id.from(_N, "UpdateResourceDefinitionResponse"),
    type = "structure",
})

M.UpdateSubscriptionDefinitionInput = schema.new({
    id = id.from(_N, "UpdateSubscriptionDefinitionRequest"),
    type = "structure",
    members = {
        Name = schema.new({
            id = id.from(_N, "UpdateSubscriptionDefinitionInput", "Name"),
            type = "string",
            name = "Name",
            target_id = prelude.String.id,
        }),
        SubscriptionDefinitionId = schema.new({
            id = id.from(_N, "UpdateSubscriptionDefinitionInput", "SubscriptionDefinitionId"),
            type = "string",
            name = "SubscriptionDefinitionId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
    },
})

M.UpdateSubscriptionDefinitionOutput = schema.new({
    id = id.from(_N, "UpdateSubscriptionDefinitionResponse"),
    type = "structure",
})

M.TelemetryConfigurationUpdate = schema.new({
    id = id.from(_N, "TelemetryConfigurationUpdate"),
    type = "structure",
    members = {
        Telemetry = schema.new({
            id = id.from(_N, "TelemetryConfigurationUpdate", "Telemetry"),
            type = "string",
            name = "Telemetry",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.UpdateThingRuntimeConfigurationInput = schema.new({
    id = id.from(_N, "UpdateThingRuntimeConfigurationRequest"),
    type = "structure",
    members = {
        TelemetryConfiguration = schema.new({
            id = id.from(_N, "UpdateThingRuntimeConfigurationInput", "TelemetryConfiguration"),
            type = "structure",
            name = "TelemetryConfiguration",
            target_id = id.from(_N, "TelemetryConfigurationUpdate"),
            target = M.TelemetryConfigurationUpdate,
        }),
        ThingName = schema.new({
            id = id.from(_N, "UpdateThingRuntimeConfigurationInput", "ThingName"),
            type = "string",
            name = "ThingName",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
    },
})

M.UpdateThingRuntimeConfigurationOutput = schema.new({
    id = id.from(_N, "UpdateThingRuntimeConfigurationResponse"),
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
