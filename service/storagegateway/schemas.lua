local id = require("smithy.shape_id")
local schema = require("smithy.schema")
local prelude = require("smithy.prelude")
local traits = require("smithy.traits")

local _N = "com.amazonaws.storagegateway"

local M = {}

M.Tags = schema.new({ type = "list", list_member = M.Tag })

M.DiskIds = schema.new({ type = "list", list_member = prelude.String })

M.FileShareClientList = schema.new({ type = "list", list_member = prelude.String })

M.UserList = schema.new({ type = "list", list_member = prelude.String })

M.TapeARNs = schema.new({ type = "list", list_member = prelude.String })

M.BandwidthRateLimitIntervals = schema.new({ type = "list", list_member = M.BandwidthRateLimitInterval })

M.VolumeARNs = schema.new({ type = "list", list_member = prelude.String })

M.CachediSCSIVolumes = schema.new({ type = "list", list_member = M.CachediSCSIVolume })

M.ChapCredentials = schema.new({ type = "list", list_member = M.ChapInfo })

M.FileSystemAssociationARNList = schema.new({ type = "list", list_member = prelude.String })

M.FileSystemAssociationInfoList = schema.new({ type = "list", list_member = M.FileSystemAssociationInfo })

M.GatewayNetworkInterfaces = schema.new({ type = "list", list_member = M.NetworkInterface })

M.SupportedGatewayCapacities = schema.new({ type = "list", list_member = prelude.String })

M.FileShareARNList = schema.new({ type = "list", list_member = prelude.String })

M.NFSFileShareInfoList = schema.new({ type = "list", list_member = M.NFSFileShareInfo })

M.SMBFileShareInfoList = schema.new({ type = "list", list_member = M.SMBFileShareInfo })

M.StorediSCSIVolumes = schema.new({ type = "list", list_member = M.StorediSCSIVolume })

M.TapeArchives = schema.new({ type = "list", list_member = M.TapeArchive })

M.TapeRecoveryPointInfos = schema.new({ type = "list", list_member = M.TapeRecoveryPointInfo })

M.Tapes = schema.new({ type = "list", list_member = M.Tape })

M.VTLDeviceARNs = schema.new({ type = "list", list_member = prelude.String })

M.VTLDevices = schema.new({ type = "list", list_member = M.VTLDevice })

M.Hosts = schema.new({ type = "list", list_member = prelude.String })

M.AutomaticTapeCreationPolicyInfos = schema.new({ type = "list", list_member = M.AutomaticTapeCreationPolicyInfo })

M.CacheReportList = schema.new({ type = "list", list_member = M.CacheReportInfo })

M.FileShareInfoList = schema.new({ type = "list", list_member = M.FileShareInfo })

M.FileSystemAssociationSummaryList = schema.new({ type = "list", list_member = M.FileSystemAssociationSummary })

M.Gateways = schema.new({ type = "list", list_member = M.GatewayInfo })

M.Disks = schema.new({ type = "list", list_member = M.Disk })

M.PoolARNs = schema.new({ type = "list", list_member = prelude.String })

M.PoolInfos = schema.new({ type = "list", list_member = M.PoolInfo })

M.TapeInfos = schema.new({ type = "list", list_member = M.TapeInfo })

M.Initiators = schema.new({ type = "list", list_member = prelude.String })

M.VolumeRecoveryPointInfos = schema.new({ type = "list", list_member = M.VolumeRecoveryPointInfo })

M.VolumeInfos = schema.new({ type = "list", list_member = M.VolumeInfo })

M.FolderList = schema.new({ type = "list", list_member = prelude.String })

M.TagKeys = schema.new({ type = "list", list_member = prelude.String })

M.CacheReportFilterList = schema.new({ type = "list", list_member = M.CacheReportFilter })

M.AutomaticTapeCreationRules = schema.new({ type = "list", list_member = M.AutomaticTapeCreationRule })

M.errorDetails = schema.new({ type = "map", map_key = prelude.String, map_value = prelude.String })

M.IpAddressList = schema.new({ type = "list", list_member = prelude.String })

M.DaysOfWeek = schema.new({ type = "list", list_member = prelude.Integer })

M.FileSystemAssociationStatusDetails = schema.new({ type = "list", list_member = M.FileSystemAssociationStatusDetail })

M.DiskAttributeList = schema.new({ type = "list", list_member = prelude.String })

M.CacheReportFilterValues = schema.new({ type = "list", list_member = prelude.String })

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

M.ActivateGatewayInput = schema.new({
    id = id.from(_N, "ActivateGatewayInput"),
    type = "structure",
    members = {
        ActivationKey = schema.new({
            id = id.from(_N, "ActivateGatewayInput", "ActivationKey"),
            type = "string",
            name = "ActivationKey",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        GatewayName = schema.new({
            id = id.from(_N, "ActivateGatewayInput", "GatewayName"),
            type = "string",
            name = "GatewayName",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        GatewayTimezone = schema.new({
            id = id.from(_N, "ActivateGatewayInput", "GatewayTimezone"),
            type = "string",
            name = "GatewayTimezone",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        GatewayRegion = schema.new({
            id = id.from(_N, "ActivateGatewayInput", "GatewayRegion"),
            type = "string",
            name = "GatewayRegion",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        GatewayType = schema.new({
            id = id.from(_N, "ActivateGatewayInput", "GatewayType"),
            type = "string",
            name = "GatewayType",
            target_id = prelude.String.id,
        }),
        TapeDriveType = schema.new({
            id = id.from(_N, "ActivateGatewayInput", "TapeDriveType"),
            type = "string",
            name = "TapeDriveType",
            target_id = prelude.String.id,
        }),
        MediumChangerType = schema.new({
            id = id.from(_N, "ActivateGatewayInput", "MediumChangerType"),
            type = "string",
            name = "MediumChangerType",
            target_id = prelude.String.id,
        }),
        Tags = schema.new({
            id = id.from(_N, "ActivateGatewayInput", "Tags"),
            type = "list",
            name = "Tags",
            target_id = prelude.Document.id,
            list_member = M.Tag,
        }),
    },
})

M.ActivateGatewayOutput = schema.new({
    id = id.from(_N, "ActivateGatewayOutput"),
    type = "structure",
    members = {
        GatewayARN = schema.new({
            id = id.from(_N, "ActivateGatewayOutput", "GatewayARN"),
            type = "string",
            name = "GatewayARN",
            target_id = prelude.String.id,
        }),
    },
})

M.StorageGatewayError = schema.new({
    id = id.from(_N, "StorageGatewayError"),
    type = "structure",
    members = {
        errorCode = schema.new({
            id = id.from(_N, "StorageGatewayError", "errorCode"),
            type = "string",
            name = "errorCode",
            target_id = prelude.String.id,
        }),
        errorDetails = schema.new({
            id = id.from(_N, "StorageGatewayError", "errorDetails"),
            type = "map",
            name = "errorDetails",
            target_id = prelude.Document.id,
            map_key = prelude.String,
            map_value = prelude.String,
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
        message = schema.new({
            id = id.from(_N, "InternalServerError", "message"),
            type = "string",
            name = "message",
            target_id = prelude.String.id,
        }),
        error = schema.new({
            id = id.from(_N, "InternalServerError", "error"),
            type = "structure",
            name = "error",
            target_id = id.from(_N, "StorageGatewayError"),
            target = M.StorageGatewayError,
        }),
    },
})

M.InvalidGatewayRequestException = schema.new({
    id = id.from(_N, "InvalidGatewayRequestException"),
    type = "structure",
    traits = {
        [traits.ERROR] = { value = "client" },
    },
    members = {
        message = schema.new({
            id = id.from(_N, "InvalidGatewayRequestException", "message"),
            type = "string",
            name = "message",
            target_id = prelude.String.id,
        }),
        error = schema.new({
            id = id.from(_N, "InvalidGatewayRequestException", "error"),
            type = "structure",
            name = "error",
            target_id = id.from(_N, "StorageGatewayError"),
            target = M.StorageGatewayError,
        }),
    },
})

M.AddCacheInput = schema.new({
    id = id.from(_N, "AddCacheInput"),
    type = "structure",
    members = {
        GatewayARN = schema.new({
            id = id.from(_N, "AddCacheInput", "GatewayARN"),
            type = "string",
            name = "GatewayARN",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        DiskIds = schema.new({
            id = id.from(_N, "AddCacheInput", "DiskIds"),
            type = "list",
            name = "DiskIds",
            target_id = prelude.Document.id,
            list_member = prelude.String,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.AddCacheOutput = schema.new({
    id = id.from(_N, "AddCacheOutput"),
    type = "structure",
    members = {
        GatewayARN = schema.new({
            id = id.from(_N, "AddCacheOutput", "GatewayARN"),
            type = "string",
            name = "GatewayARN",
            target_id = prelude.String.id,
        }),
    },
})

M.AddTagsToResourceInput = schema.new({
    id = id.from(_N, "AddTagsToResourceInput"),
    type = "structure",
    members = {
        ResourceARN = schema.new({
            id = id.from(_N, "AddTagsToResourceInput", "ResourceARN"),
            type = "string",
            name = "ResourceARN",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        Tags = schema.new({
            id = id.from(_N, "AddTagsToResourceInput", "Tags"),
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

M.AddTagsToResourceOutput = schema.new({
    id = id.from(_N, "AddTagsToResourceOutput"),
    type = "structure",
    members = {
        ResourceARN = schema.new({
            id = id.from(_N, "AddTagsToResourceOutput", "ResourceARN"),
            type = "string",
            name = "ResourceARN",
            target_id = prelude.String.id,
        }),
    },
})

M.AddUploadBufferInput = schema.new({
    id = id.from(_N, "AddUploadBufferInput"),
    type = "structure",
    members = {
        GatewayARN = schema.new({
            id = id.from(_N, "AddUploadBufferInput", "GatewayARN"),
            type = "string",
            name = "GatewayARN",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        DiskIds = schema.new({
            id = id.from(_N, "AddUploadBufferInput", "DiskIds"),
            type = "list",
            name = "DiskIds",
            target_id = prelude.Document.id,
            list_member = prelude.String,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.AddUploadBufferOutput = schema.new({
    id = id.from(_N, "AddUploadBufferOutput"),
    type = "structure",
    members = {
        GatewayARN = schema.new({
            id = id.from(_N, "AddUploadBufferOutput", "GatewayARN"),
            type = "string",
            name = "GatewayARN",
            target_id = prelude.String.id,
        }),
    },
})

M.AddWorkingStorageInput = schema.new({
    id = id.from(_N, "AddWorkingStorageInput"),
    type = "structure",
    members = {
        GatewayARN = schema.new({
            id = id.from(_N, "AddWorkingStorageInput", "GatewayARN"),
            type = "string",
            name = "GatewayARN",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        DiskIds = schema.new({
            id = id.from(_N, "AddWorkingStorageInput", "DiskIds"),
            type = "list",
            name = "DiskIds",
            target_id = prelude.Document.id,
            list_member = prelude.String,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.AddWorkingStorageOutput = schema.new({
    id = id.from(_N, "AddWorkingStorageOutput"),
    type = "structure",
    members = {
        GatewayARN = schema.new({
            id = id.from(_N, "AddWorkingStorageOutput", "GatewayARN"),
            type = "string",
            name = "GatewayARN",
            target_id = prelude.String.id,
        }),
    },
})

M.AssignTapePoolInput = schema.new({
    id = id.from(_N, "AssignTapePoolInput"),
    type = "structure",
    members = {
        TapeARN = schema.new({
            id = id.from(_N, "AssignTapePoolInput", "TapeARN"),
            type = "string",
            name = "TapeARN",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        PoolId = schema.new({
            id = id.from(_N, "AssignTapePoolInput", "PoolId"),
            type = "string",
            name = "PoolId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        BypassGovernanceRetention = schema.new({
            id = id.from(_N, "AssignTapePoolInput", "BypassGovernanceRetention"),
            type = "boolean",
            name = "BypassGovernanceRetention",
            target_id = prelude.Boolean.id,
            traits = {
                [traits.DEFAULT] = { value = false },
            },
        }),
    },
})

M.AssignTapePoolOutput = schema.new({
    id = id.from(_N, "AssignTapePoolOutput"),
    type = "structure",
    members = {
        TapeARN = schema.new({
            id = id.from(_N, "AssignTapePoolOutput", "TapeARN"),
            type = "string",
            name = "TapeARN",
            target_id = prelude.String.id,
        }),
    },
})

M.CacheAttributes = schema.new({
    id = id.from(_N, "CacheAttributes"),
    type = "structure",
    members = {
        CacheStaleTimeoutInSeconds = schema.new({
            id = id.from(_N, "CacheAttributes", "CacheStaleTimeoutInSeconds"),
            type = "integer",
            name = "CacheStaleTimeoutInSeconds",
            target_id = prelude.Integer.id,
        }),
    },
})

M.EndpointNetworkConfiguration = schema.new({
    id = id.from(_N, "EndpointNetworkConfiguration"),
    type = "structure",
    members = {
        IpAddresses = schema.new({
            id = id.from(_N, "EndpointNetworkConfiguration", "IpAddresses"),
            type = "list",
            name = "IpAddresses",
            target_id = prelude.Document.id,
            list_member = prelude.String,
        }),
    },
})

M.AssociateFileSystemInput = schema.new({
    id = id.from(_N, "AssociateFileSystemInput"),
    type = "structure",
    members = {
        UserName = schema.new({
            id = id.from(_N, "AssociateFileSystemInput", "UserName"),
            type = "string",
            name = "UserName",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        Password = schema.new({
            id = id.from(_N, "AssociateFileSystemInput", "Password"),
            type = "string",
            name = "Password",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        ClientToken = schema.new({
            id = id.from(_N, "AssociateFileSystemInput", "ClientToken"),
            type = "string",
            name = "ClientToken",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        GatewayARN = schema.new({
            id = id.from(_N, "AssociateFileSystemInput", "GatewayARN"),
            type = "string",
            name = "GatewayARN",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        LocationARN = schema.new({
            id = id.from(_N, "AssociateFileSystemInput", "LocationARN"),
            type = "string",
            name = "LocationARN",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        Tags = schema.new({
            id = id.from(_N, "AssociateFileSystemInput", "Tags"),
            type = "list",
            name = "Tags",
            target_id = prelude.Document.id,
            list_member = M.Tag,
        }),
        AuditDestinationARN = schema.new({
            id = id.from(_N, "AssociateFileSystemInput", "AuditDestinationARN"),
            type = "string",
            name = "AuditDestinationARN",
            target_id = prelude.String.id,
        }),
        CacheAttributes = schema.new({
            id = id.from(_N, "AssociateFileSystemInput", "CacheAttributes"),
            type = "structure",
            name = "CacheAttributes",
            target_id = id.from(_N, "CacheAttributes"),
            target = M.CacheAttributes,
        }),
        EndpointNetworkConfiguration = schema.new({
            id = id.from(_N, "AssociateFileSystemInput", "EndpointNetworkConfiguration"),
            type = "structure",
            name = "EndpointNetworkConfiguration",
            target_id = id.from(_N, "EndpointNetworkConfiguration"),
            target = M.EndpointNetworkConfiguration,
        }),
    },
})

M.AssociateFileSystemOutput = schema.new({
    id = id.from(_N, "AssociateFileSystemOutput"),
    type = "structure",
    members = {
        FileSystemAssociationARN = schema.new({
            id = id.from(_N, "AssociateFileSystemOutput", "FileSystemAssociationARN"),
            type = "string",
            name = "FileSystemAssociationARN",
            target_id = prelude.String.id,
        }),
    },
})

M.AttachVolumeInput = schema.new({
    id = id.from(_N, "AttachVolumeInput"),
    type = "structure",
    members = {
        GatewayARN = schema.new({
            id = id.from(_N, "AttachVolumeInput", "GatewayARN"),
            type = "string",
            name = "GatewayARN",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        TargetName = schema.new({
            id = id.from(_N, "AttachVolumeInput", "TargetName"),
            type = "string",
            name = "TargetName",
            target_id = prelude.String.id,
        }),
        VolumeARN = schema.new({
            id = id.from(_N, "AttachVolumeInput", "VolumeARN"),
            type = "string",
            name = "VolumeARN",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        NetworkInterfaceId = schema.new({
            id = id.from(_N, "AttachVolumeInput", "NetworkInterfaceId"),
            type = "string",
            name = "NetworkInterfaceId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        DiskId = schema.new({
            id = id.from(_N, "AttachVolumeInput", "DiskId"),
            type = "string",
            name = "DiskId",
            target_id = prelude.String.id,
        }),
    },
})

M.AttachVolumeOutput = schema.new({
    id = id.from(_N, "AttachVolumeOutput"),
    type = "structure",
    members = {
        VolumeARN = schema.new({
            id = id.from(_N, "AttachVolumeOutput", "VolumeARN"),
            type = "string",
            name = "VolumeARN",
            target_id = prelude.String.id,
        }),
        TargetARN = schema.new({
            id = id.from(_N, "AttachVolumeOutput", "TargetARN"),
            type = "string",
            name = "TargetARN",
            target_id = prelude.String.id,
        }),
    },
})

M.AutomaticTapeCreationRule = schema.new({
    id = id.from(_N, "AutomaticTapeCreationRule"),
    type = "structure",
    members = {
        TapeBarcodePrefix = schema.new({
            id = id.from(_N, "AutomaticTapeCreationRule", "TapeBarcodePrefix"),
            type = "string",
            name = "TapeBarcodePrefix",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        PoolId = schema.new({
            id = id.from(_N, "AutomaticTapeCreationRule", "PoolId"),
            type = "string",
            name = "PoolId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        TapeSizeInBytes = schema.new({
            id = id.from(_N, "AutomaticTapeCreationRule", "TapeSizeInBytes"),
            type = "long",
            name = "TapeSizeInBytes",
            target_id = prelude.Long.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        MinimumNumTapes = schema.new({
            id = id.from(_N, "AutomaticTapeCreationRule", "MinimumNumTapes"),
            type = "integer",
            name = "MinimumNumTapes",
            target_id = prelude.Integer.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        Worm = schema.new({
            id = id.from(_N, "AutomaticTapeCreationRule", "Worm"),
            type = "boolean",
            name = "Worm",
            target_id = prelude.Boolean.id,
            traits = {
                [traits.DEFAULT] = { value = false },
            },
        }),
    },
})

M.AutomaticTapeCreationPolicyInfo = schema.new({
    id = id.from(_N, "AutomaticTapeCreationPolicyInfo"),
    type = "structure",
    members = {
        AutomaticTapeCreationRules = schema.new({
            id = id.from(_N, "AutomaticTapeCreationPolicyInfo", "AutomaticTapeCreationRules"),
            type = "list",
            name = "AutomaticTapeCreationRules",
            target_id = prelude.Document.id,
            list_member = M.AutomaticTapeCreationRule,
        }),
        GatewayARN = schema.new({
            id = id.from(_N, "AutomaticTapeCreationPolicyInfo", "GatewayARN"),
            type = "string",
            name = "GatewayARN",
            target_id = prelude.String.id,
        }),
    },
})

M.BandwidthRateLimitInterval = schema.new({
    id = id.from(_N, "BandwidthRateLimitInterval"),
    type = "structure",
    members = {
        StartHourOfDay = schema.new({
            id = id.from(_N, "BandwidthRateLimitInterval", "StartHourOfDay"),
            type = "integer",
            name = "StartHourOfDay",
            target_id = prelude.Integer.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        StartMinuteOfHour = schema.new({
            id = id.from(_N, "BandwidthRateLimitInterval", "StartMinuteOfHour"),
            type = "integer",
            name = "StartMinuteOfHour",
            target_id = prelude.Integer.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        EndHourOfDay = schema.new({
            id = id.from(_N, "BandwidthRateLimitInterval", "EndHourOfDay"),
            type = "integer",
            name = "EndHourOfDay",
            target_id = prelude.Integer.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        EndMinuteOfHour = schema.new({
            id = id.from(_N, "BandwidthRateLimitInterval", "EndMinuteOfHour"),
            type = "integer",
            name = "EndMinuteOfHour",
            target_id = prelude.Integer.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        DaysOfWeek = schema.new({
            id = id.from(_N, "BandwidthRateLimitInterval", "DaysOfWeek"),
            type = "list",
            name = "DaysOfWeek",
            target_id = prelude.Document.id,
            list_member = prelude.Integer,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        AverageUploadRateLimitInBitsPerSec = schema.new({
            id = id.from(_N, "BandwidthRateLimitInterval", "AverageUploadRateLimitInBitsPerSec"),
            type = "long",
            name = "AverageUploadRateLimitInBitsPerSec",
            target_id = prelude.Long.id,
        }),
        AverageDownloadRateLimitInBitsPerSec = schema.new({
            id = id.from(_N, "BandwidthRateLimitInterval", "AverageDownloadRateLimitInBitsPerSec"),
            type = "long",
            name = "AverageDownloadRateLimitInBitsPerSec",
            target_id = prelude.Long.id,
        }),
    },
})

M.VolumeiSCSIAttributes = schema.new({
    id = id.from(_N, "VolumeiSCSIAttributes"),
    type = "structure",
    members = {
        TargetARN = schema.new({
            id = id.from(_N, "VolumeiSCSIAttributes", "TargetARN"),
            type = "string",
            name = "TargetARN",
            target_id = prelude.String.id,
        }),
        NetworkInterfaceId = schema.new({
            id = id.from(_N, "VolumeiSCSIAttributes", "NetworkInterfaceId"),
            type = "string",
            name = "NetworkInterfaceId",
            target_id = prelude.String.id,
        }),
        NetworkInterfacePort = schema.new({
            id = id.from(_N, "VolumeiSCSIAttributes", "NetworkInterfacePort"),
            type = "integer",
            name = "NetworkInterfacePort",
            target_id = prelude.Integer.id,
            traits = {
                [traits.DEFAULT] = { value = 0 },
            },
        }),
        LunNumber = schema.new({
            id = id.from(_N, "VolumeiSCSIAttributes", "LunNumber"),
            type = "integer",
            name = "LunNumber",
            target_id = prelude.Integer.id,
        }),
        ChapEnabled = schema.new({
            id = id.from(_N, "VolumeiSCSIAttributes", "ChapEnabled"),
            type = "boolean",
            name = "ChapEnabled",
            target_id = prelude.Boolean.id,
            traits = {
                [traits.DEFAULT] = { value = false },
            },
        }),
    },
})

M.CachediSCSIVolume = schema.new({
    id = id.from(_N, "CachediSCSIVolume"),
    type = "structure",
    members = {
        VolumeARN = schema.new({
            id = id.from(_N, "CachediSCSIVolume", "VolumeARN"),
            type = "string",
            name = "VolumeARN",
            target_id = prelude.String.id,
        }),
        VolumeId = schema.new({
            id = id.from(_N, "CachediSCSIVolume", "VolumeId"),
            type = "string",
            name = "VolumeId",
            target_id = prelude.String.id,
        }),
        VolumeType = schema.new({
            id = id.from(_N, "CachediSCSIVolume", "VolumeType"),
            type = "string",
            name = "VolumeType",
            target_id = prelude.String.id,
        }),
        VolumeStatus = schema.new({
            id = id.from(_N, "CachediSCSIVolume", "VolumeStatus"),
            type = "string",
            name = "VolumeStatus",
            target_id = prelude.String.id,
        }),
        VolumeAttachmentStatus = schema.new({
            id = id.from(_N, "CachediSCSIVolume", "VolumeAttachmentStatus"),
            type = "string",
            name = "VolumeAttachmentStatus",
            target_id = prelude.String.id,
        }),
        VolumeSizeInBytes = schema.new({
            id = id.from(_N, "CachediSCSIVolume", "VolumeSizeInBytes"),
            type = "long",
            name = "VolumeSizeInBytes",
            target_id = prelude.Long.id,
            traits = {
                [traits.DEFAULT] = { value = 0 },
            },
        }),
        VolumeProgress = schema.new({
            id = id.from(_N, "CachediSCSIVolume", "VolumeProgress"),
            type = "double",
            name = "VolumeProgress",
            target_id = prelude.Double.id,
        }),
        SourceSnapshotId = schema.new({
            id = id.from(_N, "CachediSCSIVolume", "SourceSnapshotId"),
            type = "string",
            name = "SourceSnapshotId",
            target_id = prelude.String.id,
        }),
        VolumeiSCSIAttributes = schema.new({
            id = id.from(_N, "CachediSCSIVolume", "VolumeiSCSIAttributes"),
            type = "structure",
            name = "VolumeiSCSIAttributes",
            target_id = id.from(_N, "VolumeiSCSIAttributes"),
            target = M.VolumeiSCSIAttributes,
        }),
        CreatedDate = schema.new({
            id = id.from(_N, "CachediSCSIVolume", "CreatedDate"),
            type = "timestamp",
            name = "CreatedDate",
            target_id = prelude.Timestamp.id,
        }),
        VolumeUsedInBytes = schema.new({
            id = id.from(_N, "CachediSCSIVolume", "VolumeUsedInBytes"),
            type = "long",
            name = "VolumeUsedInBytes",
            target_id = prelude.Long.id,
        }),
        KMSKey = schema.new({
            id = id.from(_N, "CachediSCSIVolume", "KMSKey"),
            type = "string",
            name = "KMSKey",
            target_id = prelude.String.id,
        }),
        TargetName = schema.new({
            id = id.from(_N, "CachediSCSIVolume", "TargetName"),
            type = "string",
            name = "TargetName",
            target_id = prelude.String.id,
        }),
    },
})

M.CacheReportFilter = schema.new({
    id = id.from(_N, "CacheReportFilter"),
    type = "structure",
    members = {
        Name = schema.new({
            id = id.from(_N, "CacheReportFilter", "Name"),
            type = "string",
            name = "Name",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        Values = schema.new({
            id = id.from(_N, "CacheReportFilter", "Values"),
            type = "list",
            name = "Values",
            target_id = prelude.Document.id,
            list_member = prelude.String,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.CacheReportInfo = schema.new({
    id = id.from(_N, "CacheReportInfo"),
    type = "structure",
    members = {
        CacheReportARN = schema.new({
            id = id.from(_N, "CacheReportInfo", "CacheReportARN"),
            type = "string",
            name = "CacheReportARN",
            target_id = prelude.String.id,
        }),
        CacheReportStatus = schema.new({
            id = id.from(_N, "CacheReportInfo", "CacheReportStatus"),
            type = "string",
            name = "CacheReportStatus",
            target_id = prelude.String.id,
        }),
        ReportCompletionPercent = schema.new({
            id = id.from(_N, "CacheReportInfo", "ReportCompletionPercent"),
            type = "integer",
            name = "ReportCompletionPercent",
            target_id = prelude.Integer.id,
        }),
        EndTime = schema.new({
            id = id.from(_N, "CacheReportInfo", "EndTime"),
            type = "timestamp",
            name = "EndTime",
            target_id = prelude.Timestamp.id,
        }),
        Role = schema.new({
            id = id.from(_N, "CacheReportInfo", "Role"),
            type = "string",
            name = "Role",
            target_id = prelude.String.id,
        }),
        FileShareARN = schema.new({
            id = id.from(_N, "CacheReportInfo", "FileShareARN"),
            type = "string",
            name = "FileShareARN",
            target_id = prelude.String.id,
        }),
        LocationARN = schema.new({
            id = id.from(_N, "CacheReportInfo", "LocationARN"),
            type = "string",
            name = "LocationARN",
            target_id = prelude.String.id,
        }),
        StartTime = schema.new({
            id = id.from(_N, "CacheReportInfo", "StartTime"),
            type = "timestamp",
            name = "StartTime",
            target_id = prelude.Timestamp.id,
        }),
        InclusionFilters = schema.new({
            id = id.from(_N, "CacheReportInfo", "InclusionFilters"),
            type = "list",
            name = "InclusionFilters",
            target_id = prelude.Document.id,
            list_member = M.CacheReportFilter,
        }),
        ExclusionFilters = schema.new({
            id = id.from(_N, "CacheReportInfo", "ExclusionFilters"),
            type = "list",
            name = "ExclusionFilters",
            target_id = prelude.Document.id,
            list_member = M.CacheReportFilter,
        }),
        ReportName = schema.new({
            id = id.from(_N, "CacheReportInfo", "ReportName"),
            type = "string",
            name = "ReportName",
            target_id = prelude.String.id,
        }),
        Tags = schema.new({
            id = id.from(_N, "CacheReportInfo", "Tags"),
            type = "list",
            name = "Tags",
            target_id = prelude.Document.id,
            list_member = M.Tag,
        }),
    },
})

M.CancelArchivalInput = schema.new({
    id = id.from(_N, "CancelArchivalInput"),
    type = "structure",
    members = {
        GatewayARN = schema.new({
            id = id.from(_N, "CancelArchivalInput", "GatewayARN"),
            type = "string",
            name = "GatewayARN",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        TapeARN = schema.new({
            id = id.from(_N, "CancelArchivalInput", "TapeARN"),
            type = "string",
            name = "TapeARN",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.CancelArchivalOutput = schema.new({
    id = id.from(_N, "CancelArchivalOutput"),
    type = "structure",
    members = {
        TapeARN = schema.new({
            id = id.from(_N, "CancelArchivalOutput", "TapeARN"),
            type = "string",
            name = "TapeARN",
            target_id = prelude.String.id,
        }),
    },
})

M.CancelCacheReportInput = schema.new({
    id = id.from(_N, "CancelCacheReportInput"),
    type = "structure",
    members = {
        CacheReportARN = schema.new({
            id = id.from(_N, "CancelCacheReportInput", "CacheReportARN"),
            type = "string",
            name = "CacheReportARN",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.CancelCacheReportOutput = schema.new({
    id = id.from(_N, "CancelCacheReportOutput"),
    type = "structure",
    members = {
        CacheReportARN = schema.new({
            id = id.from(_N, "CancelCacheReportOutput", "CacheReportARN"),
            type = "string",
            name = "CacheReportARN",
            target_id = prelude.String.id,
        }),
    },
})

M.CancelRetrievalInput = schema.new({
    id = id.from(_N, "CancelRetrievalInput"),
    type = "structure",
    members = {
        GatewayARN = schema.new({
            id = id.from(_N, "CancelRetrievalInput", "GatewayARN"),
            type = "string",
            name = "GatewayARN",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        TapeARN = schema.new({
            id = id.from(_N, "CancelRetrievalInput", "TapeARN"),
            type = "string",
            name = "TapeARN",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.CancelRetrievalOutput = schema.new({
    id = id.from(_N, "CancelRetrievalOutput"),
    type = "structure",
    members = {
        TapeARN = schema.new({
            id = id.from(_N, "CancelRetrievalOutput", "TapeARN"),
            type = "string",
            name = "TapeARN",
            target_id = prelude.String.id,
        }),
    },
})

M.ChapInfo = schema.new({
    id = id.from(_N, "ChapInfo"),
    type = "structure",
    members = {
        TargetARN = schema.new({
            id = id.from(_N, "ChapInfo", "TargetARN"),
            type = "string",
            name = "TargetARN",
            target_id = prelude.String.id,
        }),
        SecretToAuthenticateInitiator = schema.new({
            id = id.from(_N, "ChapInfo", "SecretToAuthenticateInitiator"),
            type = "string",
            name = "SecretToAuthenticateInitiator",
            target_id = prelude.String.id,
        }),
        InitiatorName = schema.new({
            id = id.from(_N, "ChapInfo", "InitiatorName"),
            type = "string",
            name = "InitiatorName",
            target_id = prelude.String.id,
        }),
        SecretToAuthenticateTarget = schema.new({
            id = id.from(_N, "ChapInfo", "SecretToAuthenticateTarget"),
            type = "string",
            name = "SecretToAuthenticateTarget",
            target_id = prelude.String.id,
        }),
    },
})

M.CreateCachediSCSIVolumeInput = schema.new({
    id = id.from(_N, "CreateCachediSCSIVolumeInput"),
    type = "structure",
    members = {
        GatewayARN = schema.new({
            id = id.from(_N, "CreateCachediSCSIVolumeInput", "GatewayARN"),
            type = "string",
            name = "GatewayARN",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        VolumeSizeInBytes = schema.new({
            id = id.from(_N, "CreateCachediSCSIVolumeInput", "VolumeSizeInBytes"),
            type = "long",
            name = "VolumeSizeInBytes",
            target_id = prelude.Long.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.DEFAULT] = { value = 0 },
            },
        }),
        SnapshotId = schema.new({
            id = id.from(_N, "CreateCachediSCSIVolumeInput", "SnapshotId"),
            type = "string",
            name = "SnapshotId",
            target_id = prelude.String.id,
        }),
        TargetName = schema.new({
            id = id.from(_N, "CreateCachediSCSIVolumeInput", "TargetName"),
            type = "string",
            name = "TargetName",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        SourceVolumeARN = schema.new({
            id = id.from(_N, "CreateCachediSCSIVolumeInput", "SourceVolumeARN"),
            type = "string",
            name = "SourceVolumeARN",
            target_id = prelude.String.id,
        }),
        NetworkInterfaceId = schema.new({
            id = id.from(_N, "CreateCachediSCSIVolumeInput", "NetworkInterfaceId"),
            type = "string",
            name = "NetworkInterfaceId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        ClientToken = schema.new({
            id = id.from(_N, "CreateCachediSCSIVolumeInput", "ClientToken"),
            type = "string",
            name = "ClientToken",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        KMSEncrypted = schema.new({
            id = id.from(_N, "CreateCachediSCSIVolumeInput", "KMSEncrypted"),
            type = "boolean",
            name = "KMSEncrypted",
            target_id = prelude.Boolean.id,
        }),
        KMSKey = schema.new({
            id = id.from(_N, "CreateCachediSCSIVolumeInput", "KMSKey"),
            type = "string",
            name = "KMSKey",
            target_id = prelude.String.id,
        }),
        Tags = schema.new({
            id = id.from(_N, "CreateCachediSCSIVolumeInput", "Tags"),
            type = "list",
            name = "Tags",
            target_id = prelude.Document.id,
            list_member = M.Tag,
        }),
    },
})

M.CreateCachediSCSIVolumeOutput = schema.new({
    id = id.from(_N, "CreateCachediSCSIVolumeOutput"),
    type = "structure",
    members = {
        VolumeARN = schema.new({
            id = id.from(_N, "CreateCachediSCSIVolumeOutput", "VolumeARN"),
            type = "string",
            name = "VolumeARN",
            target_id = prelude.String.id,
        }),
        TargetARN = schema.new({
            id = id.from(_N, "CreateCachediSCSIVolumeOutput", "TargetARN"),
            type = "string",
            name = "TargetARN",
            target_id = prelude.String.id,
        }),
    },
})

M.NFSFileShareDefaults = schema.new({
    id = id.from(_N, "NFSFileShareDefaults"),
    type = "structure",
    members = {
        FileMode = schema.new({
            id = id.from(_N, "NFSFileShareDefaults", "FileMode"),
            type = "string",
            name = "FileMode",
            target_id = prelude.String.id,
        }),
        DirectoryMode = schema.new({
            id = id.from(_N, "NFSFileShareDefaults", "DirectoryMode"),
            type = "string",
            name = "DirectoryMode",
            target_id = prelude.String.id,
        }),
        GroupId = schema.new({
            id = id.from(_N, "NFSFileShareDefaults", "GroupId"),
            type = "long",
            name = "GroupId",
            target_id = prelude.Long.id,
        }),
        OwnerId = schema.new({
            id = id.from(_N, "NFSFileShareDefaults", "OwnerId"),
            type = "long",
            name = "OwnerId",
            target_id = prelude.Long.id,
        }),
    },
})

M.CreateNFSFileShareInput = schema.new({
    id = id.from(_N, "CreateNFSFileShareInput"),
    type = "structure",
    members = {
        ClientToken = schema.new({
            id = id.from(_N, "CreateNFSFileShareInput", "ClientToken"),
            type = "string",
            name = "ClientToken",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        NFSFileShareDefaults = schema.new({
            id = id.from(_N, "CreateNFSFileShareInput", "NFSFileShareDefaults"),
            type = "structure",
            name = "NFSFileShareDefaults",
            target_id = id.from(_N, "NFSFileShareDefaults"),
            target = M.NFSFileShareDefaults,
        }),
        GatewayARN = schema.new({
            id = id.from(_N, "CreateNFSFileShareInput", "GatewayARN"),
            type = "string",
            name = "GatewayARN",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        EncryptionType = schema.new({
            id = id.from(_N, "CreateNFSFileShareInput", "EncryptionType"),
            type = "string",
            name = "EncryptionType",
            target_id = prelude.String.id,
        }),
        KMSEncrypted = schema.new({
            id = id.from(_N, "CreateNFSFileShareInput", "KMSEncrypted"),
            type = "boolean",
            name = "KMSEncrypted",
            target_id = prelude.Boolean.id,
        }),
        KMSKey = schema.new({
            id = id.from(_N, "CreateNFSFileShareInput", "KMSKey"),
            type = "string",
            name = "KMSKey",
            target_id = prelude.String.id,
        }),
        Role = schema.new({
            id = id.from(_N, "CreateNFSFileShareInput", "Role"),
            type = "string",
            name = "Role",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        LocationARN = schema.new({
            id = id.from(_N, "CreateNFSFileShareInput", "LocationARN"),
            type = "string",
            name = "LocationARN",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        DefaultStorageClass = schema.new({
            id = id.from(_N, "CreateNFSFileShareInput", "DefaultStorageClass"),
            type = "string",
            name = "DefaultStorageClass",
            target_id = prelude.String.id,
        }),
        ObjectACL = schema.new({
            id = id.from(_N, "CreateNFSFileShareInput", "ObjectACL"),
            type = "string",
            name = "ObjectACL",
            target_id = prelude.String.id,
        }),
        ClientList = schema.new({
            id = id.from(_N, "CreateNFSFileShareInput", "ClientList"),
            type = "list",
            name = "ClientList",
            target_id = prelude.Document.id,
            list_member = prelude.String,
        }),
        Squash = schema.new({
            id = id.from(_N, "CreateNFSFileShareInput", "Squash"),
            type = "string",
            name = "Squash",
            target_id = prelude.String.id,
        }),
        ReadOnly = schema.new({
            id = id.from(_N, "CreateNFSFileShareInput", "ReadOnly"),
            type = "boolean",
            name = "ReadOnly",
            target_id = prelude.Boolean.id,
        }),
        GuessMIMETypeEnabled = schema.new({
            id = id.from(_N, "CreateNFSFileShareInput", "GuessMIMETypeEnabled"),
            type = "boolean",
            name = "GuessMIMETypeEnabled",
            target_id = prelude.Boolean.id,
        }),
        RequesterPays = schema.new({
            id = id.from(_N, "CreateNFSFileShareInput", "RequesterPays"),
            type = "boolean",
            name = "RequesterPays",
            target_id = prelude.Boolean.id,
        }),
        Tags = schema.new({
            id = id.from(_N, "CreateNFSFileShareInput", "Tags"),
            type = "list",
            name = "Tags",
            target_id = prelude.Document.id,
            list_member = M.Tag,
        }),
        FileShareName = schema.new({
            id = id.from(_N, "CreateNFSFileShareInput", "FileShareName"),
            type = "string",
            name = "FileShareName",
            target_id = prelude.String.id,
        }),
        CacheAttributes = schema.new({
            id = id.from(_N, "CreateNFSFileShareInput", "CacheAttributes"),
            type = "structure",
            name = "CacheAttributes",
            target_id = id.from(_N, "CacheAttributes"),
            target = M.CacheAttributes,
        }),
        NotificationPolicy = schema.new({
            id = id.from(_N, "CreateNFSFileShareInput", "NotificationPolicy"),
            type = "string",
            name = "NotificationPolicy",
            target_id = prelude.String.id,
        }),
        VPCEndpointDNSName = schema.new({
            id = id.from(_N, "CreateNFSFileShareInput", "VPCEndpointDNSName"),
            type = "string",
            name = "VPCEndpointDNSName",
            target_id = prelude.String.id,
        }),
        BucketRegion = schema.new({
            id = id.from(_N, "CreateNFSFileShareInput", "BucketRegion"),
            type = "string",
            name = "BucketRegion",
            target_id = prelude.String.id,
        }),
        AuditDestinationARN = schema.new({
            id = id.from(_N, "CreateNFSFileShareInput", "AuditDestinationARN"),
            type = "string",
            name = "AuditDestinationARN",
            target_id = prelude.String.id,
        }),
    },
})

M.CreateNFSFileShareOutput = schema.new({
    id = id.from(_N, "CreateNFSFileShareOutput"),
    type = "structure",
    members = {
        FileShareARN = schema.new({
            id = id.from(_N, "CreateNFSFileShareOutput", "FileShareARN"),
            type = "string",
            name = "FileShareARN",
            target_id = prelude.String.id,
        }),
    },
})

M.CreateSMBFileShareInput = schema.new({
    id = id.from(_N, "CreateSMBFileShareInput"),
    type = "structure",
    members = {
        ClientToken = schema.new({
            id = id.from(_N, "CreateSMBFileShareInput", "ClientToken"),
            type = "string",
            name = "ClientToken",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        GatewayARN = schema.new({
            id = id.from(_N, "CreateSMBFileShareInput", "GatewayARN"),
            type = "string",
            name = "GatewayARN",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        EncryptionType = schema.new({
            id = id.from(_N, "CreateSMBFileShareInput", "EncryptionType"),
            type = "string",
            name = "EncryptionType",
            target_id = prelude.String.id,
        }),
        KMSEncrypted = schema.new({
            id = id.from(_N, "CreateSMBFileShareInput", "KMSEncrypted"),
            type = "boolean",
            name = "KMSEncrypted",
            target_id = prelude.Boolean.id,
        }),
        KMSKey = schema.new({
            id = id.from(_N, "CreateSMBFileShareInput", "KMSKey"),
            type = "string",
            name = "KMSKey",
            target_id = prelude.String.id,
        }),
        Role = schema.new({
            id = id.from(_N, "CreateSMBFileShareInput", "Role"),
            type = "string",
            name = "Role",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        LocationARN = schema.new({
            id = id.from(_N, "CreateSMBFileShareInput", "LocationARN"),
            type = "string",
            name = "LocationARN",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        DefaultStorageClass = schema.new({
            id = id.from(_N, "CreateSMBFileShareInput", "DefaultStorageClass"),
            type = "string",
            name = "DefaultStorageClass",
            target_id = prelude.String.id,
        }),
        ObjectACL = schema.new({
            id = id.from(_N, "CreateSMBFileShareInput", "ObjectACL"),
            type = "string",
            name = "ObjectACL",
            target_id = prelude.String.id,
        }),
        ReadOnly = schema.new({
            id = id.from(_N, "CreateSMBFileShareInput", "ReadOnly"),
            type = "boolean",
            name = "ReadOnly",
            target_id = prelude.Boolean.id,
        }),
        GuessMIMETypeEnabled = schema.new({
            id = id.from(_N, "CreateSMBFileShareInput", "GuessMIMETypeEnabled"),
            type = "boolean",
            name = "GuessMIMETypeEnabled",
            target_id = prelude.Boolean.id,
        }),
        RequesterPays = schema.new({
            id = id.from(_N, "CreateSMBFileShareInput", "RequesterPays"),
            type = "boolean",
            name = "RequesterPays",
            target_id = prelude.Boolean.id,
        }),
        SMBACLEnabled = schema.new({
            id = id.from(_N, "CreateSMBFileShareInput", "SMBACLEnabled"),
            type = "boolean",
            name = "SMBACLEnabled",
            target_id = prelude.Boolean.id,
        }),
        AccessBasedEnumeration = schema.new({
            id = id.from(_N, "CreateSMBFileShareInput", "AccessBasedEnumeration"),
            type = "boolean",
            name = "AccessBasedEnumeration",
            target_id = prelude.Boolean.id,
        }),
        AdminUserList = schema.new({
            id = id.from(_N, "CreateSMBFileShareInput", "AdminUserList"),
            type = "list",
            name = "AdminUserList",
            target_id = prelude.Document.id,
            list_member = prelude.String,
        }),
        ValidUserList = schema.new({
            id = id.from(_N, "CreateSMBFileShareInput", "ValidUserList"),
            type = "list",
            name = "ValidUserList",
            target_id = prelude.Document.id,
            list_member = prelude.String,
        }),
        InvalidUserList = schema.new({
            id = id.from(_N, "CreateSMBFileShareInput", "InvalidUserList"),
            type = "list",
            name = "InvalidUserList",
            target_id = prelude.Document.id,
            list_member = prelude.String,
        }),
        AuditDestinationARN = schema.new({
            id = id.from(_N, "CreateSMBFileShareInput", "AuditDestinationARN"),
            type = "string",
            name = "AuditDestinationARN",
            target_id = prelude.String.id,
        }),
        Authentication = schema.new({
            id = id.from(_N, "CreateSMBFileShareInput", "Authentication"),
            type = "string",
            name = "Authentication",
            target_id = prelude.String.id,
        }),
        CaseSensitivity = schema.new({
            id = id.from(_N, "CreateSMBFileShareInput", "CaseSensitivity"),
            type = "string",
            name = "CaseSensitivity",
            target_id = prelude.String.id,
        }),
        Tags = schema.new({
            id = id.from(_N, "CreateSMBFileShareInput", "Tags"),
            type = "list",
            name = "Tags",
            target_id = prelude.Document.id,
            list_member = M.Tag,
        }),
        FileShareName = schema.new({
            id = id.from(_N, "CreateSMBFileShareInput", "FileShareName"),
            type = "string",
            name = "FileShareName",
            target_id = prelude.String.id,
        }),
        CacheAttributes = schema.new({
            id = id.from(_N, "CreateSMBFileShareInput", "CacheAttributes"),
            type = "structure",
            name = "CacheAttributes",
            target_id = id.from(_N, "CacheAttributes"),
            target = M.CacheAttributes,
        }),
        NotificationPolicy = schema.new({
            id = id.from(_N, "CreateSMBFileShareInput", "NotificationPolicy"),
            type = "string",
            name = "NotificationPolicy",
            target_id = prelude.String.id,
        }),
        VPCEndpointDNSName = schema.new({
            id = id.from(_N, "CreateSMBFileShareInput", "VPCEndpointDNSName"),
            type = "string",
            name = "VPCEndpointDNSName",
            target_id = prelude.String.id,
        }),
        BucketRegion = schema.new({
            id = id.from(_N, "CreateSMBFileShareInput", "BucketRegion"),
            type = "string",
            name = "BucketRegion",
            target_id = prelude.String.id,
        }),
        OplocksEnabled = schema.new({
            id = id.from(_N, "CreateSMBFileShareInput", "OplocksEnabled"),
            type = "boolean",
            name = "OplocksEnabled",
            target_id = prelude.Boolean.id,
        }),
    },
})

M.CreateSMBFileShareOutput = schema.new({
    id = id.from(_N, "CreateSMBFileShareOutput"),
    type = "structure",
    members = {
        FileShareARN = schema.new({
            id = id.from(_N, "CreateSMBFileShareOutput", "FileShareARN"),
            type = "string",
            name = "FileShareARN",
            target_id = prelude.String.id,
        }),
    },
})

M.CreateSnapshotInput = schema.new({
    id = id.from(_N, "CreateSnapshotInput"),
    type = "structure",
    members = {
        VolumeARN = schema.new({
            id = id.from(_N, "CreateSnapshotInput", "VolumeARN"),
            type = "string",
            name = "VolumeARN",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        SnapshotDescription = schema.new({
            id = id.from(_N, "CreateSnapshotInput", "SnapshotDescription"),
            type = "string",
            name = "SnapshotDescription",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        Tags = schema.new({
            id = id.from(_N, "CreateSnapshotInput", "Tags"),
            type = "list",
            name = "Tags",
            target_id = prelude.Document.id,
            list_member = M.Tag,
        }),
    },
})

M.CreateSnapshotOutput = schema.new({
    id = id.from(_N, "CreateSnapshotOutput"),
    type = "structure",
    members = {
        VolumeARN = schema.new({
            id = id.from(_N, "CreateSnapshotOutput", "VolumeARN"),
            type = "string",
            name = "VolumeARN",
            target_id = prelude.String.id,
        }),
        SnapshotId = schema.new({
            id = id.from(_N, "CreateSnapshotOutput", "SnapshotId"),
            type = "string",
            name = "SnapshotId",
            target_id = prelude.String.id,
        }),
    },
})

M.ServiceUnavailableError = schema.new({
    id = id.from(_N, "ServiceUnavailableError"),
    type = "structure",
    traits = {
        [traits.ERROR] = { value = "server" },
    },
    members = {
        message = schema.new({
            id = id.from(_N, "ServiceUnavailableError", "message"),
            type = "string",
            name = "message",
            target_id = prelude.String.id,
        }),
        error = schema.new({
            id = id.from(_N, "ServiceUnavailableError", "error"),
            type = "structure",
            name = "error",
            target_id = id.from(_N, "StorageGatewayError"),
            target = M.StorageGatewayError,
        }),
    },
})

M.CreateSnapshotFromVolumeRecoveryPointInput = schema.new({
    id = id.from(_N, "CreateSnapshotFromVolumeRecoveryPointInput"),
    type = "structure",
    members = {
        VolumeARN = schema.new({
            id = id.from(_N, "CreateSnapshotFromVolumeRecoveryPointInput", "VolumeARN"),
            type = "string",
            name = "VolumeARN",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        SnapshotDescription = schema.new({
            id = id.from(_N, "CreateSnapshotFromVolumeRecoveryPointInput", "SnapshotDescription"),
            type = "string",
            name = "SnapshotDescription",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        Tags = schema.new({
            id = id.from(_N, "CreateSnapshotFromVolumeRecoveryPointInput", "Tags"),
            type = "list",
            name = "Tags",
            target_id = prelude.Document.id,
            list_member = M.Tag,
        }),
    },
})

M.CreateSnapshotFromVolumeRecoveryPointOutput = schema.new({
    id = id.from(_N, "CreateSnapshotFromVolumeRecoveryPointOutput"),
    type = "structure",
    members = {
        SnapshotId = schema.new({
            id = id.from(_N, "CreateSnapshotFromVolumeRecoveryPointOutput", "SnapshotId"),
            type = "string",
            name = "SnapshotId",
            target_id = prelude.String.id,
        }),
        VolumeARN = schema.new({
            id = id.from(_N, "CreateSnapshotFromVolumeRecoveryPointOutput", "VolumeARN"),
            type = "string",
            name = "VolumeARN",
            target_id = prelude.String.id,
        }),
        VolumeRecoveryPointTime = schema.new({
            id = id.from(_N, "CreateSnapshotFromVolumeRecoveryPointOutput", "VolumeRecoveryPointTime"),
            type = "string",
            name = "VolumeRecoveryPointTime",
            target_id = prelude.String.id,
        }),
    },
})

M.CreateStorediSCSIVolumeInput = schema.new({
    id = id.from(_N, "CreateStorediSCSIVolumeInput"),
    type = "structure",
    members = {
        GatewayARN = schema.new({
            id = id.from(_N, "CreateStorediSCSIVolumeInput", "GatewayARN"),
            type = "string",
            name = "GatewayARN",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        DiskId = schema.new({
            id = id.from(_N, "CreateStorediSCSIVolumeInput", "DiskId"),
            type = "string",
            name = "DiskId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        SnapshotId = schema.new({
            id = id.from(_N, "CreateStorediSCSIVolumeInput", "SnapshotId"),
            type = "string",
            name = "SnapshotId",
            target_id = prelude.String.id,
        }),
        PreserveExistingData = schema.new({
            id = id.from(_N, "CreateStorediSCSIVolumeInput", "PreserveExistingData"),
            type = "boolean",
            name = "PreserveExistingData",
            target_id = prelude.Boolean.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.DEFAULT] = { value = false },
            },
        }),
        TargetName = schema.new({
            id = id.from(_N, "CreateStorediSCSIVolumeInput", "TargetName"),
            type = "string",
            name = "TargetName",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        NetworkInterfaceId = schema.new({
            id = id.from(_N, "CreateStorediSCSIVolumeInput", "NetworkInterfaceId"),
            type = "string",
            name = "NetworkInterfaceId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        KMSEncrypted = schema.new({
            id = id.from(_N, "CreateStorediSCSIVolumeInput", "KMSEncrypted"),
            type = "boolean",
            name = "KMSEncrypted",
            target_id = prelude.Boolean.id,
        }),
        KMSKey = schema.new({
            id = id.from(_N, "CreateStorediSCSIVolumeInput", "KMSKey"),
            type = "string",
            name = "KMSKey",
            target_id = prelude.String.id,
        }),
        Tags = schema.new({
            id = id.from(_N, "CreateStorediSCSIVolumeInput", "Tags"),
            type = "list",
            name = "Tags",
            target_id = prelude.Document.id,
            list_member = M.Tag,
        }),
    },
})

M.CreateStorediSCSIVolumeOutput = schema.new({
    id = id.from(_N, "CreateStorediSCSIVolumeOutput"),
    type = "structure",
    members = {
        VolumeARN = schema.new({
            id = id.from(_N, "CreateStorediSCSIVolumeOutput", "VolumeARN"),
            type = "string",
            name = "VolumeARN",
            target_id = prelude.String.id,
        }),
        VolumeSizeInBytes = schema.new({
            id = id.from(_N, "CreateStorediSCSIVolumeOutput", "VolumeSizeInBytes"),
            type = "long",
            name = "VolumeSizeInBytes",
            target_id = prelude.Long.id,
            traits = {
                [traits.DEFAULT] = { value = 0 },
            },
        }),
        TargetARN = schema.new({
            id = id.from(_N, "CreateStorediSCSIVolumeOutput", "TargetARN"),
            type = "string",
            name = "TargetARN",
            target_id = prelude.String.id,
        }),
    },
})

M.CreateTapePoolInput = schema.new({
    id = id.from(_N, "CreateTapePoolInput"),
    type = "structure",
    members = {
        PoolName = schema.new({
            id = id.from(_N, "CreateTapePoolInput", "PoolName"),
            type = "string",
            name = "PoolName",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        StorageClass = schema.new({
            id = id.from(_N, "CreateTapePoolInput", "StorageClass"),
            type = "string",
            name = "StorageClass",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        RetentionLockType = schema.new({
            id = id.from(_N, "CreateTapePoolInput", "RetentionLockType"),
            type = "string",
            name = "RetentionLockType",
            target_id = prelude.String.id,
        }),
        RetentionLockTimeInDays = schema.new({
            id = id.from(_N, "CreateTapePoolInput", "RetentionLockTimeInDays"),
            type = "integer",
            name = "RetentionLockTimeInDays",
            target_id = prelude.Integer.id,
        }),
        Tags = schema.new({
            id = id.from(_N, "CreateTapePoolInput", "Tags"),
            type = "list",
            name = "Tags",
            target_id = prelude.Document.id,
            list_member = M.Tag,
        }),
    },
})

M.CreateTapePoolOutput = schema.new({
    id = id.from(_N, "CreateTapePoolOutput"),
    type = "structure",
    members = {
        PoolARN = schema.new({
            id = id.from(_N, "CreateTapePoolOutput", "PoolARN"),
            type = "string",
            name = "PoolARN",
            target_id = prelude.String.id,
        }),
    },
})

M.CreateTapesInput = schema.new({
    id = id.from(_N, "CreateTapesInput"),
    type = "structure",
    members = {
        GatewayARN = schema.new({
            id = id.from(_N, "CreateTapesInput", "GatewayARN"),
            type = "string",
            name = "GatewayARN",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        TapeSizeInBytes = schema.new({
            id = id.from(_N, "CreateTapesInput", "TapeSizeInBytes"),
            type = "long",
            name = "TapeSizeInBytes",
            target_id = prelude.Long.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        ClientToken = schema.new({
            id = id.from(_N, "CreateTapesInput", "ClientToken"),
            type = "string",
            name = "ClientToken",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        NumTapesToCreate = schema.new({
            id = id.from(_N, "CreateTapesInput", "NumTapesToCreate"),
            type = "integer",
            name = "NumTapesToCreate",
            target_id = prelude.Integer.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        TapeBarcodePrefix = schema.new({
            id = id.from(_N, "CreateTapesInput", "TapeBarcodePrefix"),
            type = "string",
            name = "TapeBarcodePrefix",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        KMSEncrypted = schema.new({
            id = id.from(_N, "CreateTapesInput", "KMSEncrypted"),
            type = "boolean",
            name = "KMSEncrypted",
            target_id = prelude.Boolean.id,
        }),
        KMSKey = schema.new({
            id = id.from(_N, "CreateTapesInput", "KMSKey"),
            type = "string",
            name = "KMSKey",
            target_id = prelude.String.id,
        }),
        PoolId = schema.new({
            id = id.from(_N, "CreateTapesInput", "PoolId"),
            type = "string",
            name = "PoolId",
            target_id = prelude.String.id,
        }),
        Worm = schema.new({
            id = id.from(_N, "CreateTapesInput", "Worm"),
            type = "boolean",
            name = "Worm",
            target_id = prelude.Boolean.id,
            traits = {
                [traits.DEFAULT] = { value = false },
            },
        }),
        Tags = schema.new({
            id = id.from(_N, "CreateTapesInput", "Tags"),
            type = "list",
            name = "Tags",
            target_id = prelude.Document.id,
            list_member = M.Tag,
        }),
    },
})

M.CreateTapesOutput = schema.new({
    id = id.from(_N, "CreateTapesOutput"),
    type = "structure",
    members = {
        TapeARNs = schema.new({
            id = id.from(_N, "CreateTapesOutput", "TapeARNs"),
            type = "list",
            name = "TapeARNs",
            target_id = prelude.Document.id,
            list_member = prelude.String,
        }),
    },
})

M.CreateTapeWithBarcodeInput = schema.new({
    id = id.from(_N, "CreateTapeWithBarcodeInput"),
    type = "structure",
    members = {
        GatewayARN = schema.new({
            id = id.from(_N, "CreateTapeWithBarcodeInput", "GatewayARN"),
            type = "string",
            name = "GatewayARN",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        TapeSizeInBytes = schema.new({
            id = id.from(_N, "CreateTapeWithBarcodeInput", "TapeSizeInBytes"),
            type = "long",
            name = "TapeSizeInBytes",
            target_id = prelude.Long.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        TapeBarcode = schema.new({
            id = id.from(_N, "CreateTapeWithBarcodeInput", "TapeBarcode"),
            type = "string",
            name = "TapeBarcode",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        KMSEncrypted = schema.new({
            id = id.from(_N, "CreateTapeWithBarcodeInput", "KMSEncrypted"),
            type = "boolean",
            name = "KMSEncrypted",
            target_id = prelude.Boolean.id,
        }),
        KMSKey = schema.new({
            id = id.from(_N, "CreateTapeWithBarcodeInput", "KMSKey"),
            type = "string",
            name = "KMSKey",
            target_id = prelude.String.id,
        }),
        PoolId = schema.new({
            id = id.from(_N, "CreateTapeWithBarcodeInput", "PoolId"),
            type = "string",
            name = "PoolId",
            target_id = prelude.String.id,
        }),
        Worm = schema.new({
            id = id.from(_N, "CreateTapeWithBarcodeInput", "Worm"),
            type = "boolean",
            name = "Worm",
            target_id = prelude.Boolean.id,
            traits = {
                [traits.DEFAULT] = { value = false },
            },
        }),
        Tags = schema.new({
            id = id.from(_N, "CreateTapeWithBarcodeInput", "Tags"),
            type = "list",
            name = "Tags",
            target_id = prelude.Document.id,
            list_member = M.Tag,
        }),
    },
})

M.CreateTapeWithBarcodeOutput = schema.new({
    id = id.from(_N, "CreateTapeWithBarcodeOutput"),
    type = "structure",
    members = {
        TapeARN = schema.new({
            id = id.from(_N, "CreateTapeWithBarcodeOutput", "TapeARN"),
            type = "string",
            name = "TapeARN",
            target_id = prelude.String.id,
        }),
    },
})

M.DeleteAutomaticTapeCreationPolicyInput = schema.new({
    id = id.from(_N, "DeleteAutomaticTapeCreationPolicyInput"),
    type = "structure",
    members = {
        GatewayARN = schema.new({
            id = id.from(_N, "DeleteAutomaticTapeCreationPolicyInput", "GatewayARN"),
            type = "string",
            name = "GatewayARN",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.DeleteAutomaticTapeCreationPolicyOutput = schema.new({
    id = id.from(_N, "DeleteAutomaticTapeCreationPolicyOutput"),
    type = "structure",
    members = {
        GatewayARN = schema.new({
            id = id.from(_N, "DeleteAutomaticTapeCreationPolicyOutput", "GatewayARN"),
            type = "string",
            name = "GatewayARN",
            target_id = prelude.String.id,
        }),
    },
})

M.DeleteBandwidthRateLimitInput = schema.new({
    id = id.from(_N, "DeleteBandwidthRateLimitInput"),
    type = "structure",
    members = {
        GatewayARN = schema.new({
            id = id.from(_N, "DeleteBandwidthRateLimitInput", "GatewayARN"),
            type = "string",
            name = "GatewayARN",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        BandwidthType = schema.new({
            id = id.from(_N, "DeleteBandwidthRateLimitInput", "BandwidthType"),
            type = "string",
            name = "BandwidthType",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.DeleteBandwidthRateLimitOutput = schema.new({
    id = id.from(_N, "DeleteBandwidthRateLimitOutput"),
    type = "structure",
    members = {
        GatewayARN = schema.new({
            id = id.from(_N, "DeleteBandwidthRateLimitOutput", "GatewayARN"),
            type = "string",
            name = "GatewayARN",
            target_id = prelude.String.id,
        }),
    },
})

M.DeleteCacheReportInput = schema.new({
    id = id.from(_N, "DeleteCacheReportInput"),
    type = "structure",
    members = {
        CacheReportARN = schema.new({
            id = id.from(_N, "DeleteCacheReportInput", "CacheReportARN"),
            type = "string",
            name = "CacheReportARN",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.DeleteCacheReportOutput = schema.new({
    id = id.from(_N, "DeleteCacheReportOutput"),
    type = "structure",
    members = {
        CacheReportARN = schema.new({
            id = id.from(_N, "DeleteCacheReportOutput", "CacheReportARN"),
            type = "string",
            name = "CacheReportARN",
            target_id = prelude.String.id,
        }),
    },
})

M.DeleteChapCredentialsInput = schema.new({
    id = id.from(_N, "DeleteChapCredentialsInput"),
    type = "structure",
    members = {
        TargetARN = schema.new({
            id = id.from(_N, "DeleteChapCredentialsInput", "TargetARN"),
            type = "string",
            name = "TargetARN",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        InitiatorName = schema.new({
            id = id.from(_N, "DeleteChapCredentialsInput", "InitiatorName"),
            type = "string",
            name = "InitiatorName",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.DeleteChapCredentialsOutput = schema.new({
    id = id.from(_N, "DeleteChapCredentialsOutput"),
    type = "structure",
    members = {
        TargetARN = schema.new({
            id = id.from(_N, "DeleteChapCredentialsOutput", "TargetARN"),
            type = "string",
            name = "TargetARN",
            target_id = prelude.String.id,
        }),
        InitiatorName = schema.new({
            id = id.from(_N, "DeleteChapCredentialsOutput", "InitiatorName"),
            type = "string",
            name = "InitiatorName",
            target_id = prelude.String.id,
        }),
    },
})

M.DeleteFileShareInput = schema.new({
    id = id.from(_N, "DeleteFileShareInput"),
    type = "structure",
    members = {
        FileShareARN = schema.new({
            id = id.from(_N, "DeleteFileShareInput", "FileShareARN"),
            type = "string",
            name = "FileShareARN",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        ForceDelete = schema.new({
            id = id.from(_N, "DeleteFileShareInput", "ForceDelete"),
            type = "boolean",
            name = "ForceDelete",
            target_id = prelude.Boolean.id,
            traits = {
                [traits.DEFAULT] = { value = false },
            },
        }),
    },
})

M.DeleteFileShareOutput = schema.new({
    id = id.from(_N, "DeleteFileShareOutput"),
    type = "structure",
    members = {
        FileShareARN = schema.new({
            id = id.from(_N, "DeleteFileShareOutput", "FileShareARN"),
            type = "string",
            name = "FileShareARN",
            target_id = prelude.String.id,
        }),
    },
})

M.DeleteGatewayInput = schema.new({
    id = id.from(_N, "DeleteGatewayInput"),
    type = "structure",
    members = {
        GatewayARN = schema.new({
            id = id.from(_N, "DeleteGatewayInput", "GatewayARN"),
            type = "string",
            name = "GatewayARN",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.DeleteGatewayOutput = schema.new({
    id = id.from(_N, "DeleteGatewayOutput"),
    type = "structure",
    members = {
        GatewayARN = schema.new({
            id = id.from(_N, "DeleteGatewayOutput", "GatewayARN"),
            type = "string",
            name = "GatewayARN",
            target_id = prelude.String.id,
        }),
    },
})

M.DeleteSnapshotScheduleInput = schema.new({
    id = id.from(_N, "DeleteSnapshotScheduleInput"),
    type = "structure",
    members = {
        VolumeARN = schema.new({
            id = id.from(_N, "DeleteSnapshotScheduleInput", "VolumeARN"),
            type = "string",
            name = "VolumeARN",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.DeleteSnapshotScheduleOutput = schema.new({
    id = id.from(_N, "DeleteSnapshotScheduleOutput"),
    type = "structure",
    members = {
        VolumeARN = schema.new({
            id = id.from(_N, "DeleteSnapshotScheduleOutput", "VolumeARN"),
            type = "string",
            name = "VolumeARN",
            target_id = prelude.String.id,
        }),
    },
})

M.DeleteTapeInput = schema.new({
    id = id.from(_N, "DeleteTapeInput"),
    type = "structure",
    members = {
        GatewayARN = schema.new({
            id = id.from(_N, "DeleteTapeInput", "GatewayARN"),
            type = "string",
            name = "GatewayARN",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        TapeARN = schema.new({
            id = id.from(_N, "DeleteTapeInput", "TapeARN"),
            type = "string",
            name = "TapeARN",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        BypassGovernanceRetention = schema.new({
            id = id.from(_N, "DeleteTapeInput", "BypassGovernanceRetention"),
            type = "boolean",
            name = "BypassGovernanceRetention",
            target_id = prelude.Boolean.id,
            traits = {
                [traits.DEFAULT] = { value = false },
            },
        }),
    },
})

M.DeleteTapeOutput = schema.new({
    id = id.from(_N, "DeleteTapeOutput"),
    type = "structure",
    members = {
        TapeARN = schema.new({
            id = id.from(_N, "DeleteTapeOutput", "TapeARN"),
            type = "string",
            name = "TapeARN",
            target_id = prelude.String.id,
        }),
    },
})

M.DeleteTapeArchiveInput = schema.new({
    id = id.from(_N, "DeleteTapeArchiveInput"),
    type = "structure",
    members = {
        TapeARN = schema.new({
            id = id.from(_N, "DeleteTapeArchiveInput", "TapeARN"),
            type = "string",
            name = "TapeARN",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        BypassGovernanceRetention = schema.new({
            id = id.from(_N, "DeleteTapeArchiveInput", "BypassGovernanceRetention"),
            type = "boolean",
            name = "BypassGovernanceRetention",
            target_id = prelude.Boolean.id,
            traits = {
                [traits.DEFAULT] = { value = false },
            },
        }),
    },
})

M.DeleteTapeArchiveOutput = schema.new({
    id = id.from(_N, "DeleteTapeArchiveOutput"),
    type = "structure",
    members = {
        TapeARN = schema.new({
            id = id.from(_N, "DeleteTapeArchiveOutput", "TapeARN"),
            type = "string",
            name = "TapeARN",
            target_id = prelude.String.id,
        }),
    },
})

M.DeleteTapePoolInput = schema.new({
    id = id.from(_N, "DeleteTapePoolInput"),
    type = "structure",
    members = {
        PoolARN = schema.new({
            id = id.from(_N, "DeleteTapePoolInput", "PoolARN"),
            type = "string",
            name = "PoolARN",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.DeleteTapePoolOutput = schema.new({
    id = id.from(_N, "DeleteTapePoolOutput"),
    type = "structure",
    members = {
        PoolARN = schema.new({
            id = id.from(_N, "DeleteTapePoolOutput", "PoolARN"),
            type = "string",
            name = "PoolARN",
            target_id = prelude.String.id,
        }),
    },
})

M.DeleteVolumeInput = schema.new({
    id = id.from(_N, "DeleteVolumeInput"),
    type = "structure",
    members = {
        VolumeARN = schema.new({
            id = id.from(_N, "DeleteVolumeInput", "VolumeARN"),
            type = "string",
            name = "VolumeARN",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.DeleteVolumeOutput = schema.new({
    id = id.from(_N, "DeleteVolumeOutput"),
    type = "structure",
    members = {
        VolumeARN = schema.new({
            id = id.from(_N, "DeleteVolumeOutput", "VolumeARN"),
            type = "string",
            name = "VolumeARN",
            target_id = prelude.String.id,
        }),
    },
})

M.DescribeAvailabilityMonitorTestInput = schema.new({
    id = id.from(_N, "DescribeAvailabilityMonitorTestInput"),
    type = "structure",
    members = {
        GatewayARN = schema.new({
            id = id.from(_N, "DescribeAvailabilityMonitorTestInput", "GatewayARN"),
            type = "string",
            name = "GatewayARN",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.DescribeAvailabilityMonitorTestOutput = schema.new({
    id = id.from(_N, "DescribeAvailabilityMonitorTestOutput"),
    type = "structure",
    members = {
        GatewayARN = schema.new({
            id = id.from(_N, "DescribeAvailabilityMonitorTestOutput", "GatewayARN"),
            type = "string",
            name = "GatewayARN",
            target_id = prelude.String.id,
        }),
        Status = schema.new({
            id = id.from(_N, "DescribeAvailabilityMonitorTestOutput", "Status"),
            type = "string",
            name = "Status",
            target_id = prelude.String.id,
        }),
        StartTime = schema.new({
            id = id.from(_N, "DescribeAvailabilityMonitorTestOutput", "StartTime"),
            type = "timestamp",
            name = "StartTime",
            target_id = prelude.Timestamp.id,
        }),
    },
})

M.DescribeBandwidthRateLimitInput = schema.new({
    id = id.from(_N, "DescribeBandwidthRateLimitInput"),
    type = "structure",
    members = {
        GatewayARN = schema.new({
            id = id.from(_N, "DescribeBandwidthRateLimitInput", "GatewayARN"),
            type = "string",
            name = "GatewayARN",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.DescribeBandwidthRateLimitOutput = schema.new({
    id = id.from(_N, "DescribeBandwidthRateLimitOutput"),
    type = "structure",
    members = {
        GatewayARN = schema.new({
            id = id.from(_N, "DescribeBandwidthRateLimitOutput", "GatewayARN"),
            type = "string",
            name = "GatewayARN",
            target_id = prelude.String.id,
        }),
        AverageUploadRateLimitInBitsPerSec = schema.new({
            id = id.from(_N, "DescribeBandwidthRateLimitOutput", "AverageUploadRateLimitInBitsPerSec"),
            type = "long",
            name = "AverageUploadRateLimitInBitsPerSec",
            target_id = prelude.Long.id,
        }),
        AverageDownloadRateLimitInBitsPerSec = schema.new({
            id = id.from(_N, "DescribeBandwidthRateLimitOutput", "AverageDownloadRateLimitInBitsPerSec"),
            type = "long",
            name = "AverageDownloadRateLimitInBitsPerSec",
            target_id = prelude.Long.id,
        }),
    },
})

M.DescribeBandwidthRateLimitScheduleInput = schema.new({
    id = id.from(_N, "DescribeBandwidthRateLimitScheduleInput"),
    type = "structure",
    members = {
        GatewayARN = schema.new({
            id = id.from(_N, "DescribeBandwidthRateLimitScheduleInput", "GatewayARN"),
            type = "string",
            name = "GatewayARN",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.DescribeBandwidthRateLimitScheduleOutput = schema.new({
    id = id.from(_N, "DescribeBandwidthRateLimitScheduleOutput"),
    type = "structure",
    members = {
        GatewayARN = schema.new({
            id = id.from(_N, "DescribeBandwidthRateLimitScheduleOutput", "GatewayARN"),
            type = "string",
            name = "GatewayARN",
            target_id = prelude.String.id,
        }),
        BandwidthRateLimitIntervals = schema.new({
            id = id.from(_N, "DescribeBandwidthRateLimitScheduleOutput", "BandwidthRateLimitIntervals"),
            type = "list",
            name = "BandwidthRateLimitIntervals",
            target_id = prelude.Document.id,
            list_member = M.BandwidthRateLimitInterval,
        }),
    },
})

M.DescribeCacheInput = schema.new({
    id = id.from(_N, "DescribeCacheInput"),
    type = "structure",
    members = {
        GatewayARN = schema.new({
            id = id.from(_N, "DescribeCacheInput", "GatewayARN"),
            type = "string",
            name = "GatewayARN",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.DescribeCacheOutput = schema.new({
    id = id.from(_N, "DescribeCacheOutput"),
    type = "structure",
    members = {
        GatewayARN = schema.new({
            id = id.from(_N, "DescribeCacheOutput", "GatewayARN"),
            type = "string",
            name = "GatewayARN",
            target_id = prelude.String.id,
        }),
        DiskIds = schema.new({
            id = id.from(_N, "DescribeCacheOutput", "DiskIds"),
            type = "list",
            name = "DiskIds",
            target_id = prelude.Document.id,
            list_member = prelude.String,
        }),
        CacheAllocatedInBytes = schema.new({
            id = id.from(_N, "DescribeCacheOutput", "CacheAllocatedInBytes"),
            type = "long",
            name = "CacheAllocatedInBytes",
            target_id = prelude.Long.id,
            traits = {
                [traits.DEFAULT] = { value = 0 },
            },
        }),
        CacheUsedPercentage = schema.new({
            id = id.from(_N, "DescribeCacheOutput", "CacheUsedPercentage"),
            type = "double",
            name = "CacheUsedPercentage",
            target_id = prelude.Double.id,
            traits = {
                [traits.DEFAULT] = { value = 0 },
            },
        }),
        CacheDirtyPercentage = schema.new({
            id = id.from(_N, "DescribeCacheOutput", "CacheDirtyPercentage"),
            type = "double",
            name = "CacheDirtyPercentage",
            target_id = prelude.Double.id,
            traits = {
                [traits.DEFAULT] = { value = 0 },
            },
        }),
        CacheHitPercentage = schema.new({
            id = id.from(_N, "DescribeCacheOutput", "CacheHitPercentage"),
            type = "double",
            name = "CacheHitPercentage",
            target_id = prelude.Double.id,
            traits = {
                [traits.DEFAULT] = { value = 0 },
            },
        }),
        CacheMissPercentage = schema.new({
            id = id.from(_N, "DescribeCacheOutput", "CacheMissPercentage"),
            type = "double",
            name = "CacheMissPercentage",
            target_id = prelude.Double.id,
            traits = {
                [traits.DEFAULT] = { value = 0 },
            },
        }),
    },
})

M.DescribeCachediSCSIVolumesInput = schema.new({
    id = id.from(_N, "DescribeCachediSCSIVolumesInput"),
    type = "structure",
    members = {
        VolumeARNs = schema.new({
            id = id.from(_N, "DescribeCachediSCSIVolumesInput", "VolumeARNs"),
            type = "list",
            name = "VolumeARNs",
            target_id = prelude.Document.id,
            list_member = prelude.String,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.DescribeCachediSCSIVolumesOutput = schema.new({
    id = id.from(_N, "DescribeCachediSCSIVolumesOutput"),
    type = "structure",
    members = {
        CachediSCSIVolumes = schema.new({
            id = id.from(_N, "DescribeCachediSCSIVolumesOutput", "CachediSCSIVolumes"),
            type = "list",
            name = "CachediSCSIVolumes",
            target_id = prelude.Document.id,
            list_member = M.CachediSCSIVolume,
        }),
    },
})

M.DescribeCacheReportInput = schema.new({
    id = id.from(_N, "DescribeCacheReportInput"),
    type = "structure",
    members = {
        CacheReportARN = schema.new({
            id = id.from(_N, "DescribeCacheReportInput", "CacheReportARN"),
            type = "string",
            name = "CacheReportARN",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.DescribeCacheReportOutput = schema.new({
    id = id.from(_N, "DescribeCacheReportOutput"),
    type = "structure",
    members = {
        CacheReportInfo = schema.new({
            id = id.from(_N, "DescribeCacheReportOutput", "CacheReportInfo"),
            type = "structure",
            name = "CacheReportInfo",
            target_id = id.from(_N, "CacheReportInfo"),
            target = M.CacheReportInfo,
        }),
    },
})

M.DescribeChapCredentialsInput = schema.new({
    id = id.from(_N, "DescribeChapCredentialsInput"),
    type = "structure",
    members = {
        TargetARN = schema.new({
            id = id.from(_N, "DescribeChapCredentialsInput", "TargetARN"),
            type = "string",
            name = "TargetARN",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.DescribeChapCredentialsOutput = schema.new({
    id = id.from(_N, "DescribeChapCredentialsOutput"),
    type = "structure",
    members = {
        ChapCredentials = schema.new({
            id = id.from(_N, "DescribeChapCredentialsOutput", "ChapCredentials"),
            type = "list",
            name = "ChapCredentials",
            target_id = prelude.Document.id,
            list_member = M.ChapInfo,
        }),
    },
})

M.DescribeFileSystemAssociationsInput = schema.new({
    id = id.from(_N, "DescribeFileSystemAssociationsInput"),
    type = "structure",
    members = {
        FileSystemAssociationARNList = schema.new({
            id = id.from(_N, "DescribeFileSystemAssociationsInput", "FileSystemAssociationARNList"),
            type = "list",
            name = "FileSystemAssociationARNList",
            target_id = prelude.Document.id,
            list_member = prelude.String,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.FileSystemAssociationStatusDetail = schema.new({
    id = id.from(_N, "FileSystemAssociationStatusDetail"),
    type = "structure",
    members = {
        ErrorCode = schema.new({
            id = id.from(_N, "FileSystemAssociationStatusDetail", "ErrorCode"),
            type = "string",
            name = "ErrorCode",
            target_id = prelude.String.id,
        }),
    },
})

M.FileSystemAssociationInfo = schema.new({
    id = id.from(_N, "FileSystemAssociationInfo"),
    type = "structure",
    members = {
        FileSystemAssociationARN = schema.new({
            id = id.from(_N, "FileSystemAssociationInfo", "FileSystemAssociationARN"),
            type = "string",
            name = "FileSystemAssociationARN",
            target_id = prelude.String.id,
        }),
        LocationARN = schema.new({
            id = id.from(_N, "FileSystemAssociationInfo", "LocationARN"),
            type = "string",
            name = "LocationARN",
            target_id = prelude.String.id,
        }),
        FileSystemAssociationStatus = schema.new({
            id = id.from(_N, "FileSystemAssociationInfo", "FileSystemAssociationStatus"),
            type = "string",
            name = "FileSystemAssociationStatus",
            target_id = prelude.String.id,
        }),
        AuditDestinationARN = schema.new({
            id = id.from(_N, "FileSystemAssociationInfo", "AuditDestinationARN"),
            type = "string",
            name = "AuditDestinationARN",
            target_id = prelude.String.id,
        }),
        GatewayARN = schema.new({
            id = id.from(_N, "FileSystemAssociationInfo", "GatewayARN"),
            type = "string",
            name = "GatewayARN",
            target_id = prelude.String.id,
        }),
        Tags = schema.new({
            id = id.from(_N, "FileSystemAssociationInfo", "Tags"),
            type = "list",
            name = "Tags",
            target_id = prelude.Document.id,
            list_member = M.Tag,
        }),
        CacheAttributes = schema.new({
            id = id.from(_N, "FileSystemAssociationInfo", "CacheAttributes"),
            type = "structure",
            name = "CacheAttributes",
            target_id = id.from(_N, "CacheAttributes"),
            target = M.CacheAttributes,
        }),
        EndpointNetworkConfiguration = schema.new({
            id = id.from(_N, "FileSystemAssociationInfo", "EndpointNetworkConfiguration"),
            type = "structure",
            name = "EndpointNetworkConfiguration",
            target_id = id.from(_N, "EndpointNetworkConfiguration"),
            target = M.EndpointNetworkConfiguration,
        }),
        FileSystemAssociationStatusDetails = schema.new({
            id = id.from(_N, "FileSystemAssociationInfo", "FileSystemAssociationStatusDetails"),
            type = "list",
            name = "FileSystemAssociationStatusDetails",
            target_id = prelude.Document.id,
            list_member = M.FileSystemAssociationStatusDetail,
        }),
    },
})

M.DescribeFileSystemAssociationsOutput = schema.new({
    id = id.from(_N, "DescribeFileSystemAssociationsOutput"),
    type = "structure",
    members = {
        FileSystemAssociationInfoList = schema.new({
            id = id.from(_N, "DescribeFileSystemAssociationsOutput", "FileSystemAssociationInfoList"),
            type = "list",
            name = "FileSystemAssociationInfoList",
            target_id = prelude.Document.id,
            list_member = M.FileSystemAssociationInfo,
        }),
    },
})

M.DescribeGatewayInformationInput = schema.new({
    id = id.from(_N, "DescribeGatewayInformationInput"),
    type = "structure",
    members = {
        GatewayARN = schema.new({
            id = id.from(_N, "DescribeGatewayInformationInput", "GatewayARN"),
            type = "string",
            name = "GatewayARN",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.NetworkInterface = schema.new({
    id = id.from(_N, "NetworkInterface"),
    type = "structure",
    members = {
        Ipv4Address = schema.new({
            id = id.from(_N, "NetworkInterface", "Ipv4Address"),
            type = "string",
            name = "Ipv4Address",
            target_id = prelude.String.id,
        }),
        MacAddress = schema.new({
            id = id.from(_N, "NetworkInterface", "MacAddress"),
            type = "string",
            name = "MacAddress",
            target_id = prelude.String.id,
        }),
        Ipv6Address = schema.new({
            id = id.from(_N, "NetworkInterface", "Ipv6Address"),
            type = "string",
            name = "Ipv6Address",
            target_id = prelude.String.id,
        }),
    },
})

M.DescribeGatewayInformationOutput = schema.new({
    id = id.from(_N, "DescribeGatewayInformationOutput"),
    type = "structure",
    members = {
        GatewayARN = schema.new({
            id = id.from(_N, "DescribeGatewayInformationOutput", "GatewayARN"),
            type = "string",
            name = "GatewayARN",
            target_id = prelude.String.id,
        }),
        GatewayId = schema.new({
            id = id.from(_N, "DescribeGatewayInformationOutput", "GatewayId"),
            type = "string",
            name = "GatewayId",
            target_id = prelude.String.id,
        }),
        GatewayName = schema.new({
            id = id.from(_N, "DescribeGatewayInformationOutput", "GatewayName"),
            type = "string",
            name = "GatewayName",
            target_id = prelude.String.id,
        }),
        GatewayTimezone = schema.new({
            id = id.from(_N, "DescribeGatewayInformationOutput", "GatewayTimezone"),
            type = "string",
            name = "GatewayTimezone",
            target_id = prelude.String.id,
        }),
        GatewayState = schema.new({
            id = id.from(_N, "DescribeGatewayInformationOutput", "GatewayState"),
            type = "string",
            name = "GatewayState",
            target_id = prelude.String.id,
        }),
        GatewayNetworkInterfaces = schema.new({
            id = id.from(_N, "DescribeGatewayInformationOutput", "GatewayNetworkInterfaces"),
            type = "list",
            name = "GatewayNetworkInterfaces",
            target_id = prelude.Document.id,
            list_member = M.NetworkInterface,
        }),
        GatewayType = schema.new({
            id = id.from(_N, "DescribeGatewayInformationOutput", "GatewayType"),
            type = "string",
            name = "GatewayType",
            target_id = prelude.String.id,
        }),
        NextUpdateAvailabilityDate = schema.new({
            id = id.from(_N, "DescribeGatewayInformationOutput", "NextUpdateAvailabilityDate"),
            type = "string",
            name = "NextUpdateAvailabilityDate",
            target_id = prelude.String.id,
        }),
        LastSoftwareUpdate = schema.new({
            id = id.from(_N, "DescribeGatewayInformationOutput", "LastSoftwareUpdate"),
            type = "string",
            name = "LastSoftwareUpdate",
            target_id = prelude.String.id,
        }),
        Ec2InstanceId = schema.new({
            id = id.from(_N, "DescribeGatewayInformationOutput", "Ec2InstanceId"),
            type = "string",
            name = "Ec2InstanceId",
            target_id = prelude.String.id,
        }),
        Ec2InstanceRegion = schema.new({
            id = id.from(_N, "DescribeGatewayInformationOutput", "Ec2InstanceRegion"),
            type = "string",
            name = "Ec2InstanceRegion",
            target_id = prelude.String.id,
        }),
        Tags = schema.new({
            id = id.from(_N, "DescribeGatewayInformationOutput", "Tags"),
            type = "list",
            name = "Tags",
            target_id = prelude.Document.id,
            list_member = M.Tag,
        }),
        VPCEndpoint = schema.new({
            id = id.from(_N, "DescribeGatewayInformationOutput", "VPCEndpoint"),
            type = "string",
            name = "VPCEndpoint",
            target_id = prelude.String.id,
        }),
        CloudWatchLogGroupARN = schema.new({
            id = id.from(_N, "DescribeGatewayInformationOutput", "CloudWatchLogGroupARN"),
            type = "string",
            name = "CloudWatchLogGroupARN",
            target_id = prelude.String.id,
        }),
        HostEnvironment = schema.new({
            id = id.from(_N, "DescribeGatewayInformationOutput", "HostEnvironment"),
            type = "string",
            name = "HostEnvironment",
            target_id = prelude.String.id,
        }),
        EndpointType = schema.new({
            id = id.from(_N, "DescribeGatewayInformationOutput", "EndpointType"),
            type = "string",
            name = "EndpointType",
            target_id = prelude.String.id,
        }),
        SoftwareUpdatesEndDate = schema.new({
            id = id.from(_N, "DescribeGatewayInformationOutput", "SoftwareUpdatesEndDate"),
            type = "string",
            name = "SoftwareUpdatesEndDate",
            target_id = prelude.String.id,
        }),
        DeprecationDate = schema.new({
            id = id.from(_N, "DescribeGatewayInformationOutput", "DeprecationDate"),
            type = "string",
            name = "DeprecationDate",
            target_id = prelude.String.id,
        }),
        GatewayCapacity = schema.new({
            id = id.from(_N, "DescribeGatewayInformationOutput", "GatewayCapacity"),
            type = "string",
            name = "GatewayCapacity",
            target_id = prelude.String.id,
        }),
        SupportedGatewayCapacities = schema.new({
            id = id.from(_N, "DescribeGatewayInformationOutput", "SupportedGatewayCapacities"),
            type = "list",
            name = "SupportedGatewayCapacities",
            target_id = prelude.Document.id,
            list_member = prelude.String,
        }),
        HostEnvironmentId = schema.new({
            id = id.from(_N, "DescribeGatewayInformationOutput", "HostEnvironmentId"),
            type = "string",
            name = "HostEnvironmentId",
            target_id = prelude.String.id,
        }),
        SoftwareVersion = schema.new({
            id = id.from(_N, "DescribeGatewayInformationOutput", "SoftwareVersion"),
            type = "string",
            name = "SoftwareVersion",
            target_id = prelude.String.id,
        }),
    },
})

M.DescribeMaintenanceStartTimeInput = schema.new({
    id = id.from(_N, "DescribeMaintenanceStartTimeInput"),
    type = "structure",
    members = {
        GatewayARN = schema.new({
            id = id.from(_N, "DescribeMaintenanceStartTimeInput", "GatewayARN"),
            type = "string",
            name = "GatewayARN",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.SoftwareUpdatePreferences = schema.new({
    id = id.from(_N, "SoftwareUpdatePreferences"),
    type = "structure",
    members = {
        AutomaticUpdatePolicy = schema.new({
            id = id.from(_N, "SoftwareUpdatePreferences", "AutomaticUpdatePolicy"),
            type = "string",
            name = "AutomaticUpdatePolicy",
            target_id = prelude.String.id,
        }),
    },
})

M.DescribeMaintenanceStartTimeOutput = schema.new({
    id = id.from(_N, "DescribeMaintenanceStartTimeOutput"),
    type = "structure",
    members = {
        GatewayARN = schema.new({
            id = id.from(_N, "DescribeMaintenanceStartTimeOutput", "GatewayARN"),
            type = "string",
            name = "GatewayARN",
            target_id = prelude.String.id,
        }),
        HourOfDay = schema.new({
            id = id.from(_N, "DescribeMaintenanceStartTimeOutput", "HourOfDay"),
            type = "integer",
            name = "HourOfDay",
            target_id = prelude.Integer.id,
        }),
        MinuteOfHour = schema.new({
            id = id.from(_N, "DescribeMaintenanceStartTimeOutput", "MinuteOfHour"),
            type = "integer",
            name = "MinuteOfHour",
            target_id = prelude.Integer.id,
        }),
        DayOfWeek = schema.new({
            id = id.from(_N, "DescribeMaintenanceStartTimeOutput", "DayOfWeek"),
            type = "integer",
            name = "DayOfWeek",
            target_id = prelude.Integer.id,
        }),
        DayOfMonth = schema.new({
            id = id.from(_N, "DescribeMaintenanceStartTimeOutput", "DayOfMonth"),
            type = "integer",
            name = "DayOfMonth",
            target_id = prelude.Integer.id,
        }),
        Timezone = schema.new({
            id = id.from(_N, "DescribeMaintenanceStartTimeOutput", "Timezone"),
            type = "string",
            name = "Timezone",
            target_id = prelude.String.id,
        }),
        SoftwareUpdatePreferences = schema.new({
            id = id.from(_N, "DescribeMaintenanceStartTimeOutput", "SoftwareUpdatePreferences"),
            type = "structure",
            name = "SoftwareUpdatePreferences",
            target_id = id.from(_N, "SoftwareUpdatePreferences"),
            target = M.SoftwareUpdatePreferences,
        }),
    },
})

M.DescribeNFSFileSharesInput = schema.new({
    id = id.from(_N, "DescribeNFSFileSharesInput"),
    type = "structure",
    members = {
        FileShareARNList = schema.new({
            id = id.from(_N, "DescribeNFSFileSharesInput", "FileShareARNList"),
            type = "list",
            name = "FileShareARNList",
            target_id = prelude.Document.id,
            list_member = prelude.String,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.NFSFileShareInfo = schema.new({
    id = id.from(_N, "NFSFileShareInfo"),
    type = "structure",
    members = {
        NFSFileShareDefaults = schema.new({
            id = id.from(_N, "NFSFileShareInfo", "NFSFileShareDefaults"),
            type = "structure",
            name = "NFSFileShareDefaults",
            target_id = id.from(_N, "NFSFileShareDefaults"),
            target = M.NFSFileShareDefaults,
        }),
        FileShareARN = schema.new({
            id = id.from(_N, "NFSFileShareInfo", "FileShareARN"),
            type = "string",
            name = "FileShareARN",
            target_id = prelude.String.id,
        }),
        FileShareId = schema.new({
            id = id.from(_N, "NFSFileShareInfo", "FileShareId"),
            type = "string",
            name = "FileShareId",
            target_id = prelude.String.id,
        }),
        FileShareStatus = schema.new({
            id = id.from(_N, "NFSFileShareInfo", "FileShareStatus"),
            type = "string",
            name = "FileShareStatus",
            target_id = prelude.String.id,
        }),
        GatewayARN = schema.new({
            id = id.from(_N, "NFSFileShareInfo", "GatewayARN"),
            type = "string",
            name = "GatewayARN",
            target_id = prelude.String.id,
        }),
        EncryptionType = schema.new({
            id = id.from(_N, "NFSFileShareInfo", "EncryptionType"),
            type = "string",
            name = "EncryptionType",
            target_id = prelude.String.id,
        }),
        KMSEncrypted = schema.new({
            id = id.from(_N, "NFSFileShareInfo", "KMSEncrypted"),
            type = "boolean",
            name = "KMSEncrypted",
            target_id = prelude.Boolean.id,
            traits = {
                [traits.DEFAULT] = { value = false },
            },
        }),
        KMSKey = schema.new({
            id = id.from(_N, "NFSFileShareInfo", "KMSKey"),
            type = "string",
            name = "KMSKey",
            target_id = prelude.String.id,
        }),
        Path = schema.new({
            id = id.from(_N, "NFSFileShareInfo", "Path"),
            type = "string",
            name = "Path",
            target_id = prelude.String.id,
        }),
        Role = schema.new({
            id = id.from(_N, "NFSFileShareInfo", "Role"),
            type = "string",
            name = "Role",
            target_id = prelude.String.id,
        }),
        LocationARN = schema.new({
            id = id.from(_N, "NFSFileShareInfo", "LocationARN"),
            type = "string",
            name = "LocationARN",
            target_id = prelude.String.id,
        }),
        DefaultStorageClass = schema.new({
            id = id.from(_N, "NFSFileShareInfo", "DefaultStorageClass"),
            type = "string",
            name = "DefaultStorageClass",
            target_id = prelude.String.id,
        }),
        ObjectACL = schema.new({
            id = id.from(_N, "NFSFileShareInfo", "ObjectACL"),
            type = "string",
            name = "ObjectACL",
            target_id = prelude.String.id,
        }),
        ClientList = schema.new({
            id = id.from(_N, "NFSFileShareInfo", "ClientList"),
            type = "list",
            name = "ClientList",
            target_id = prelude.Document.id,
            list_member = prelude.String,
        }),
        Squash = schema.new({
            id = id.from(_N, "NFSFileShareInfo", "Squash"),
            type = "string",
            name = "Squash",
            target_id = prelude.String.id,
        }),
        ReadOnly = schema.new({
            id = id.from(_N, "NFSFileShareInfo", "ReadOnly"),
            type = "boolean",
            name = "ReadOnly",
            target_id = prelude.Boolean.id,
        }),
        GuessMIMETypeEnabled = schema.new({
            id = id.from(_N, "NFSFileShareInfo", "GuessMIMETypeEnabled"),
            type = "boolean",
            name = "GuessMIMETypeEnabled",
            target_id = prelude.Boolean.id,
        }),
        RequesterPays = schema.new({
            id = id.from(_N, "NFSFileShareInfo", "RequesterPays"),
            type = "boolean",
            name = "RequesterPays",
            target_id = prelude.Boolean.id,
        }),
        Tags = schema.new({
            id = id.from(_N, "NFSFileShareInfo", "Tags"),
            type = "list",
            name = "Tags",
            target_id = prelude.Document.id,
            list_member = M.Tag,
        }),
        FileShareName = schema.new({
            id = id.from(_N, "NFSFileShareInfo", "FileShareName"),
            type = "string",
            name = "FileShareName",
            target_id = prelude.String.id,
        }),
        CacheAttributes = schema.new({
            id = id.from(_N, "NFSFileShareInfo", "CacheAttributes"),
            type = "structure",
            name = "CacheAttributes",
            target_id = id.from(_N, "CacheAttributes"),
            target = M.CacheAttributes,
        }),
        NotificationPolicy = schema.new({
            id = id.from(_N, "NFSFileShareInfo", "NotificationPolicy"),
            type = "string",
            name = "NotificationPolicy",
            target_id = prelude.String.id,
        }),
        VPCEndpointDNSName = schema.new({
            id = id.from(_N, "NFSFileShareInfo", "VPCEndpointDNSName"),
            type = "string",
            name = "VPCEndpointDNSName",
            target_id = prelude.String.id,
        }),
        BucketRegion = schema.new({
            id = id.from(_N, "NFSFileShareInfo", "BucketRegion"),
            type = "string",
            name = "BucketRegion",
            target_id = prelude.String.id,
        }),
        AuditDestinationARN = schema.new({
            id = id.from(_N, "NFSFileShareInfo", "AuditDestinationARN"),
            type = "string",
            name = "AuditDestinationARN",
            target_id = prelude.String.id,
        }),
    },
})

M.DescribeNFSFileSharesOutput = schema.new({
    id = id.from(_N, "DescribeNFSFileSharesOutput"),
    type = "structure",
    members = {
        NFSFileShareInfoList = schema.new({
            id = id.from(_N, "DescribeNFSFileSharesOutput", "NFSFileShareInfoList"),
            type = "list",
            name = "NFSFileShareInfoList",
            target_id = prelude.Document.id,
            list_member = M.NFSFileShareInfo,
        }),
    },
})

M.DescribeSMBFileSharesInput = schema.new({
    id = id.from(_N, "DescribeSMBFileSharesInput"),
    type = "structure",
    members = {
        FileShareARNList = schema.new({
            id = id.from(_N, "DescribeSMBFileSharesInput", "FileShareARNList"),
            type = "list",
            name = "FileShareARNList",
            target_id = prelude.Document.id,
            list_member = prelude.String,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.SMBFileShareInfo = schema.new({
    id = id.from(_N, "SMBFileShareInfo"),
    type = "structure",
    members = {
        FileShareARN = schema.new({
            id = id.from(_N, "SMBFileShareInfo", "FileShareARN"),
            type = "string",
            name = "FileShareARN",
            target_id = prelude.String.id,
        }),
        FileShareId = schema.new({
            id = id.from(_N, "SMBFileShareInfo", "FileShareId"),
            type = "string",
            name = "FileShareId",
            target_id = prelude.String.id,
        }),
        FileShareStatus = schema.new({
            id = id.from(_N, "SMBFileShareInfo", "FileShareStatus"),
            type = "string",
            name = "FileShareStatus",
            target_id = prelude.String.id,
        }),
        GatewayARN = schema.new({
            id = id.from(_N, "SMBFileShareInfo", "GatewayARN"),
            type = "string",
            name = "GatewayARN",
            target_id = prelude.String.id,
        }),
        EncryptionType = schema.new({
            id = id.from(_N, "SMBFileShareInfo", "EncryptionType"),
            type = "string",
            name = "EncryptionType",
            target_id = prelude.String.id,
        }),
        KMSEncrypted = schema.new({
            id = id.from(_N, "SMBFileShareInfo", "KMSEncrypted"),
            type = "boolean",
            name = "KMSEncrypted",
            target_id = prelude.Boolean.id,
            traits = {
                [traits.DEFAULT] = { value = false },
            },
        }),
        KMSKey = schema.new({
            id = id.from(_N, "SMBFileShareInfo", "KMSKey"),
            type = "string",
            name = "KMSKey",
            target_id = prelude.String.id,
        }),
        Path = schema.new({
            id = id.from(_N, "SMBFileShareInfo", "Path"),
            type = "string",
            name = "Path",
            target_id = prelude.String.id,
        }),
        Role = schema.new({
            id = id.from(_N, "SMBFileShareInfo", "Role"),
            type = "string",
            name = "Role",
            target_id = prelude.String.id,
        }),
        LocationARN = schema.new({
            id = id.from(_N, "SMBFileShareInfo", "LocationARN"),
            type = "string",
            name = "LocationARN",
            target_id = prelude.String.id,
        }),
        DefaultStorageClass = schema.new({
            id = id.from(_N, "SMBFileShareInfo", "DefaultStorageClass"),
            type = "string",
            name = "DefaultStorageClass",
            target_id = prelude.String.id,
        }),
        ObjectACL = schema.new({
            id = id.from(_N, "SMBFileShareInfo", "ObjectACL"),
            type = "string",
            name = "ObjectACL",
            target_id = prelude.String.id,
        }),
        ReadOnly = schema.new({
            id = id.from(_N, "SMBFileShareInfo", "ReadOnly"),
            type = "boolean",
            name = "ReadOnly",
            target_id = prelude.Boolean.id,
        }),
        GuessMIMETypeEnabled = schema.new({
            id = id.from(_N, "SMBFileShareInfo", "GuessMIMETypeEnabled"),
            type = "boolean",
            name = "GuessMIMETypeEnabled",
            target_id = prelude.Boolean.id,
        }),
        RequesterPays = schema.new({
            id = id.from(_N, "SMBFileShareInfo", "RequesterPays"),
            type = "boolean",
            name = "RequesterPays",
            target_id = prelude.Boolean.id,
        }),
        SMBACLEnabled = schema.new({
            id = id.from(_N, "SMBFileShareInfo", "SMBACLEnabled"),
            type = "boolean",
            name = "SMBACLEnabled",
            target_id = prelude.Boolean.id,
        }),
        AccessBasedEnumeration = schema.new({
            id = id.from(_N, "SMBFileShareInfo", "AccessBasedEnumeration"),
            type = "boolean",
            name = "AccessBasedEnumeration",
            target_id = prelude.Boolean.id,
        }),
        AdminUserList = schema.new({
            id = id.from(_N, "SMBFileShareInfo", "AdminUserList"),
            type = "list",
            name = "AdminUserList",
            target_id = prelude.Document.id,
            list_member = prelude.String,
        }),
        ValidUserList = schema.new({
            id = id.from(_N, "SMBFileShareInfo", "ValidUserList"),
            type = "list",
            name = "ValidUserList",
            target_id = prelude.Document.id,
            list_member = prelude.String,
        }),
        InvalidUserList = schema.new({
            id = id.from(_N, "SMBFileShareInfo", "InvalidUserList"),
            type = "list",
            name = "InvalidUserList",
            target_id = prelude.Document.id,
            list_member = prelude.String,
        }),
        AuditDestinationARN = schema.new({
            id = id.from(_N, "SMBFileShareInfo", "AuditDestinationARN"),
            type = "string",
            name = "AuditDestinationARN",
            target_id = prelude.String.id,
        }),
        Authentication = schema.new({
            id = id.from(_N, "SMBFileShareInfo", "Authentication"),
            type = "string",
            name = "Authentication",
            target_id = prelude.String.id,
        }),
        CaseSensitivity = schema.new({
            id = id.from(_N, "SMBFileShareInfo", "CaseSensitivity"),
            type = "string",
            name = "CaseSensitivity",
            target_id = prelude.String.id,
        }),
        Tags = schema.new({
            id = id.from(_N, "SMBFileShareInfo", "Tags"),
            type = "list",
            name = "Tags",
            target_id = prelude.Document.id,
            list_member = M.Tag,
        }),
        FileShareName = schema.new({
            id = id.from(_N, "SMBFileShareInfo", "FileShareName"),
            type = "string",
            name = "FileShareName",
            target_id = prelude.String.id,
        }),
        CacheAttributes = schema.new({
            id = id.from(_N, "SMBFileShareInfo", "CacheAttributes"),
            type = "structure",
            name = "CacheAttributes",
            target_id = id.from(_N, "CacheAttributes"),
            target = M.CacheAttributes,
        }),
        NotificationPolicy = schema.new({
            id = id.from(_N, "SMBFileShareInfo", "NotificationPolicy"),
            type = "string",
            name = "NotificationPolicy",
            target_id = prelude.String.id,
        }),
        VPCEndpointDNSName = schema.new({
            id = id.from(_N, "SMBFileShareInfo", "VPCEndpointDNSName"),
            type = "string",
            name = "VPCEndpointDNSName",
            target_id = prelude.String.id,
        }),
        BucketRegion = schema.new({
            id = id.from(_N, "SMBFileShareInfo", "BucketRegion"),
            type = "string",
            name = "BucketRegion",
            target_id = prelude.String.id,
        }),
        OplocksEnabled = schema.new({
            id = id.from(_N, "SMBFileShareInfo", "OplocksEnabled"),
            type = "boolean",
            name = "OplocksEnabled",
            target_id = prelude.Boolean.id,
        }),
    },
})

M.DescribeSMBFileSharesOutput = schema.new({
    id = id.from(_N, "DescribeSMBFileSharesOutput"),
    type = "structure",
    members = {
        SMBFileShareInfoList = schema.new({
            id = id.from(_N, "DescribeSMBFileSharesOutput", "SMBFileShareInfoList"),
            type = "list",
            name = "SMBFileShareInfoList",
            target_id = prelude.Document.id,
            list_member = M.SMBFileShareInfo,
        }),
    },
})

M.DescribeSMBSettingsInput = schema.new({
    id = id.from(_N, "DescribeSMBSettingsInput"),
    type = "structure",
    members = {
        GatewayARN = schema.new({
            id = id.from(_N, "DescribeSMBSettingsInput", "GatewayARN"),
            type = "string",
            name = "GatewayARN",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.SMBLocalGroups = schema.new({
    id = id.from(_N, "SMBLocalGroups"),
    type = "structure",
    members = {
        GatewayAdmins = schema.new({
            id = id.from(_N, "SMBLocalGroups", "GatewayAdmins"),
            type = "list",
            name = "GatewayAdmins",
            target_id = prelude.Document.id,
            list_member = prelude.String,
        }),
    },
})

M.DescribeSMBSettingsOutput = schema.new({
    id = id.from(_N, "DescribeSMBSettingsOutput"),
    type = "structure",
    members = {
        GatewayARN = schema.new({
            id = id.from(_N, "DescribeSMBSettingsOutput", "GatewayARN"),
            type = "string",
            name = "GatewayARN",
            target_id = prelude.String.id,
        }),
        DomainName = schema.new({
            id = id.from(_N, "DescribeSMBSettingsOutput", "DomainName"),
            type = "string",
            name = "DomainName",
            target_id = prelude.String.id,
        }),
        ActiveDirectoryStatus = schema.new({
            id = id.from(_N, "DescribeSMBSettingsOutput", "ActiveDirectoryStatus"),
            type = "string",
            name = "ActiveDirectoryStatus",
            target_id = prelude.String.id,
        }),
        SMBGuestPasswordSet = schema.new({
            id = id.from(_N, "DescribeSMBSettingsOutput", "SMBGuestPasswordSet"),
            type = "boolean",
            name = "SMBGuestPasswordSet",
            target_id = prelude.Boolean.id,
        }),
        SMBSecurityStrategy = schema.new({
            id = id.from(_N, "DescribeSMBSettingsOutput", "SMBSecurityStrategy"),
            type = "string",
            name = "SMBSecurityStrategy",
            target_id = prelude.String.id,
        }),
        FileSharesVisible = schema.new({
            id = id.from(_N, "DescribeSMBSettingsOutput", "FileSharesVisible"),
            type = "boolean",
            name = "FileSharesVisible",
            target_id = prelude.Boolean.id,
        }),
        SMBLocalGroups = schema.new({
            id = id.from(_N, "DescribeSMBSettingsOutput", "SMBLocalGroups"),
            type = "structure",
            name = "SMBLocalGroups",
            target_id = id.from(_N, "SMBLocalGroups"),
            target = M.SMBLocalGroups,
        }),
    },
})

M.DescribeSnapshotScheduleInput = schema.new({
    id = id.from(_N, "DescribeSnapshotScheduleInput"),
    type = "structure",
    members = {
        VolumeARN = schema.new({
            id = id.from(_N, "DescribeSnapshotScheduleInput", "VolumeARN"),
            type = "string",
            name = "VolumeARN",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.DescribeSnapshotScheduleOutput = schema.new({
    id = id.from(_N, "DescribeSnapshotScheduleOutput"),
    type = "structure",
    members = {
        VolumeARN = schema.new({
            id = id.from(_N, "DescribeSnapshotScheduleOutput", "VolumeARN"),
            type = "string",
            name = "VolumeARN",
            target_id = prelude.String.id,
        }),
        StartAt = schema.new({
            id = id.from(_N, "DescribeSnapshotScheduleOutput", "StartAt"),
            type = "integer",
            name = "StartAt",
            target_id = prelude.Integer.id,
        }),
        RecurrenceInHours = schema.new({
            id = id.from(_N, "DescribeSnapshotScheduleOutput", "RecurrenceInHours"),
            type = "integer",
            name = "RecurrenceInHours",
            target_id = prelude.Integer.id,
        }),
        Description = schema.new({
            id = id.from(_N, "DescribeSnapshotScheduleOutput", "Description"),
            type = "string",
            name = "Description",
            target_id = prelude.String.id,
        }),
        Timezone = schema.new({
            id = id.from(_N, "DescribeSnapshotScheduleOutput", "Timezone"),
            type = "string",
            name = "Timezone",
            target_id = prelude.String.id,
        }),
        Tags = schema.new({
            id = id.from(_N, "DescribeSnapshotScheduleOutput", "Tags"),
            type = "list",
            name = "Tags",
            target_id = prelude.Document.id,
            list_member = M.Tag,
        }),
    },
})

M.DescribeStorediSCSIVolumesInput = schema.new({
    id = id.from(_N, "DescribeStorediSCSIVolumesInput"),
    type = "structure",
    members = {
        VolumeARNs = schema.new({
            id = id.from(_N, "DescribeStorediSCSIVolumesInput", "VolumeARNs"),
            type = "list",
            name = "VolumeARNs",
            target_id = prelude.Document.id,
            list_member = prelude.String,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.StorediSCSIVolume = schema.new({
    id = id.from(_N, "StorediSCSIVolume"),
    type = "structure",
    members = {
        VolumeARN = schema.new({
            id = id.from(_N, "StorediSCSIVolume", "VolumeARN"),
            type = "string",
            name = "VolumeARN",
            target_id = prelude.String.id,
        }),
        VolumeId = schema.new({
            id = id.from(_N, "StorediSCSIVolume", "VolumeId"),
            type = "string",
            name = "VolumeId",
            target_id = prelude.String.id,
        }),
        VolumeType = schema.new({
            id = id.from(_N, "StorediSCSIVolume", "VolumeType"),
            type = "string",
            name = "VolumeType",
            target_id = prelude.String.id,
        }),
        VolumeStatus = schema.new({
            id = id.from(_N, "StorediSCSIVolume", "VolumeStatus"),
            type = "string",
            name = "VolumeStatus",
            target_id = prelude.String.id,
        }),
        VolumeAttachmentStatus = schema.new({
            id = id.from(_N, "StorediSCSIVolume", "VolumeAttachmentStatus"),
            type = "string",
            name = "VolumeAttachmentStatus",
            target_id = prelude.String.id,
        }),
        VolumeSizeInBytes = schema.new({
            id = id.from(_N, "StorediSCSIVolume", "VolumeSizeInBytes"),
            type = "long",
            name = "VolumeSizeInBytes",
            target_id = prelude.Long.id,
            traits = {
                [traits.DEFAULT] = { value = 0 },
            },
        }),
        VolumeProgress = schema.new({
            id = id.from(_N, "StorediSCSIVolume", "VolumeProgress"),
            type = "double",
            name = "VolumeProgress",
            target_id = prelude.Double.id,
        }),
        VolumeDiskId = schema.new({
            id = id.from(_N, "StorediSCSIVolume", "VolumeDiskId"),
            type = "string",
            name = "VolumeDiskId",
            target_id = prelude.String.id,
        }),
        SourceSnapshotId = schema.new({
            id = id.from(_N, "StorediSCSIVolume", "SourceSnapshotId"),
            type = "string",
            name = "SourceSnapshotId",
            target_id = prelude.String.id,
        }),
        PreservedExistingData = schema.new({
            id = id.from(_N, "StorediSCSIVolume", "PreservedExistingData"),
            type = "boolean",
            name = "PreservedExistingData",
            target_id = prelude.Boolean.id,
            traits = {
                [traits.DEFAULT] = { value = false },
            },
        }),
        VolumeiSCSIAttributes = schema.new({
            id = id.from(_N, "StorediSCSIVolume", "VolumeiSCSIAttributes"),
            type = "structure",
            name = "VolumeiSCSIAttributes",
            target_id = id.from(_N, "VolumeiSCSIAttributes"),
            target = M.VolumeiSCSIAttributes,
        }),
        CreatedDate = schema.new({
            id = id.from(_N, "StorediSCSIVolume", "CreatedDate"),
            type = "timestamp",
            name = "CreatedDate",
            target_id = prelude.Timestamp.id,
        }),
        VolumeUsedInBytes = schema.new({
            id = id.from(_N, "StorediSCSIVolume", "VolumeUsedInBytes"),
            type = "long",
            name = "VolumeUsedInBytes",
            target_id = prelude.Long.id,
        }),
        KMSKey = schema.new({
            id = id.from(_N, "StorediSCSIVolume", "KMSKey"),
            type = "string",
            name = "KMSKey",
            target_id = prelude.String.id,
        }),
        TargetName = schema.new({
            id = id.from(_N, "StorediSCSIVolume", "TargetName"),
            type = "string",
            name = "TargetName",
            target_id = prelude.String.id,
        }),
    },
})

M.DescribeStorediSCSIVolumesOutput = schema.new({
    id = id.from(_N, "DescribeStorediSCSIVolumesOutput"),
    type = "structure",
    members = {
        StorediSCSIVolumes = schema.new({
            id = id.from(_N, "DescribeStorediSCSIVolumesOutput", "StorediSCSIVolumes"),
            type = "list",
            name = "StorediSCSIVolumes",
            target_id = prelude.Document.id,
            list_member = M.StorediSCSIVolume,
        }),
    },
})

M.DescribeTapeArchivesInput = schema.new({
    id = id.from(_N, "DescribeTapeArchivesInput"),
    type = "structure",
    members = {
        TapeARNs = schema.new({
            id = id.from(_N, "DescribeTapeArchivesInput", "TapeARNs"),
            type = "list",
            name = "TapeARNs",
            target_id = prelude.Document.id,
            list_member = prelude.String,
        }),
        Marker = schema.new({
            id = id.from(_N, "DescribeTapeArchivesInput", "Marker"),
            type = "string",
            name = "Marker",
            target_id = prelude.String.id,
        }),
        Limit = schema.new({
            id = id.from(_N, "DescribeTapeArchivesInput", "Limit"),
            type = "integer",
            name = "Limit",
            target_id = prelude.Integer.id,
        }),
    },
})

M.TapeArchive = schema.new({
    id = id.from(_N, "TapeArchive"),
    type = "structure",
    members = {
        TapeARN = schema.new({
            id = id.from(_N, "TapeArchive", "TapeARN"),
            type = "string",
            name = "TapeARN",
            target_id = prelude.String.id,
        }),
        TapeBarcode = schema.new({
            id = id.from(_N, "TapeArchive", "TapeBarcode"),
            type = "string",
            name = "TapeBarcode",
            target_id = prelude.String.id,
        }),
        TapeCreatedDate = schema.new({
            id = id.from(_N, "TapeArchive", "TapeCreatedDate"),
            type = "timestamp",
            name = "TapeCreatedDate",
            target_id = prelude.Timestamp.id,
        }),
        TapeSizeInBytes = schema.new({
            id = id.from(_N, "TapeArchive", "TapeSizeInBytes"),
            type = "long",
            name = "TapeSizeInBytes",
            target_id = prelude.Long.id,
        }),
        CompletionTime = schema.new({
            id = id.from(_N, "TapeArchive", "CompletionTime"),
            type = "timestamp",
            name = "CompletionTime",
            target_id = prelude.Timestamp.id,
        }),
        RetrievedTo = schema.new({
            id = id.from(_N, "TapeArchive", "RetrievedTo"),
            type = "string",
            name = "RetrievedTo",
            target_id = prelude.String.id,
        }),
        TapeStatus = schema.new({
            id = id.from(_N, "TapeArchive", "TapeStatus"),
            type = "string",
            name = "TapeStatus",
            target_id = prelude.String.id,
        }),
        TapeUsedInBytes = schema.new({
            id = id.from(_N, "TapeArchive", "TapeUsedInBytes"),
            type = "long",
            name = "TapeUsedInBytes",
            target_id = prelude.Long.id,
        }),
        KMSKey = schema.new({
            id = id.from(_N, "TapeArchive", "KMSKey"),
            type = "string",
            name = "KMSKey",
            target_id = prelude.String.id,
        }),
        PoolId = schema.new({
            id = id.from(_N, "TapeArchive", "PoolId"),
            type = "string",
            name = "PoolId",
            target_id = prelude.String.id,
        }),
        Worm = schema.new({
            id = id.from(_N, "TapeArchive", "Worm"),
            type = "boolean",
            name = "Worm",
            target_id = prelude.Boolean.id,
            traits = {
                [traits.DEFAULT] = { value = false },
            },
        }),
        RetentionStartDate = schema.new({
            id = id.from(_N, "TapeArchive", "RetentionStartDate"),
            type = "timestamp",
            name = "RetentionStartDate",
            target_id = prelude.Timestamp.id,
        }),
        PoolEntryDate = schema.new({
            id = id.from(_N, "TapeArchive", "PoolEntryDate"),
            type = "timestamp",
            name = "PoolEntryDate",
            target_id = prelude.Timestamp.id,
        }),
    },
})

M.DescribeTapeArchivesOutput = schema.new({
    id = id.from(_N, "DescribeTapeArchivesOutput"),
    type = "structure",
    members = {
        TapeArchives = schema.new({
            id = id.from(_N, "DescribeTapeArchivesOutput", "TapeArchives"),
            type = "list",
            name = "TapeArchives",
            target_id = prelude.Document.id,
            list_member = M.TapeArchive,
        }),
        Marker = schema.new({
            id = id.from(_N, "DescribeTapeArchivesOutput", "Marker"),
            type = "string",
            name = "Marker",
            target_id = prelude.String.id,
        }),
    },
})

M.DescribeTapeRecoveryPointsInput = schema.new({
    id = id.from(_N, "DescribeTapeRecoveryPointsInput"),
    type = "structure",
    members = {
        GatewayARN = schema.new({
            id = id.from(_N, "DescribeTapeRecoveryPointsInput", "GatewayARN"),
            type = "string",
            name = "GatewayARN",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        Marker = schema.new({
            id = id.from(_N, "DescribeTapeRecoveryPointsInput", "Marker"),
            type = "string",
            name = "Marker",
            target_id = prelude.String.id,
        }),
        Limit = schema.new({
            id = id.from(_N, "DescribeTapeRecoveryPointsInput", "Limit"),
            type = "integer",
            name = "Limit",
            target_id = prelude.Integer.id,
        }),
    },
})

M.TapeRecoveryPointInfo = schema.new({
    id = id.from(_N, "TapeRecoveryPointInfo"),
    type = "structure",
    members = {
        TapeARN = schema.new({
            id = id.from(_N, "TapeRecoveryPointInfo", "TapeARN"),
            type = "string",
            name = "TapeARN",
            target_id = prelude.String.id,
        }),
        TapeRecoveryPointTime = schema.new({
            id = id.from(_N, "TapeRecoveryPointInfo", "TapeRecoveryPointTime"),
            type = "timestamp",
            name = "TapeRecoveryPointTime",
            target_id = prelude.Timestamp.id,
        }),
        TapeSizeInBytes = schema.new({
            id = id.from(_N, "TapeRecoveryPointInfo", "TapeSizeInBytes"),
            type = "long",
            name = "TapeSizeInBytes",
            target_id = prelude.Long.id,
        }),
        TapeStatus = schema.new({
            id = id.from(_N, "TapeRecoveryPointInfo", "TapeStatus"),
            type = "string",
            name = "TapeStatus",
            target_id = prelude.String.id,
        }),
    },
})

M.DescribeTapeRecoveryPointsOutput = schema.new({
    id = id.from(_N, "DescribeTapeRecoveryPointsOutput"),
    type = "structure",
    members = {
        GatewayARN = schema.new({
            id = id.from(_N, "DescribeTapeRecoveryPointsOutput", "GatewayARN"),
            type = "string",
            name = "GatewayARN",
            target_id = prelude.String.id,
        }),
        TapeRecoveryPointInfos = schema.new({
            id = id.from(_N, "DescribeTapeRecoveryPointsOutput", "TapeRecoveryPointInfos"),
            type = "list",
            name = "TapeRecoveryPointInfos",
            target_id = prelude.Document.id,
            list_member = M.TapeRecoveryPointInfo,
        }),
        Marker = schema.new({
            id = id.from(_N, "DescribeTapeRecoveryPointsOutput", "Marker"),
            type = "string",
            name = "Marker",
            target_id = prelude.String.id,
        }),
    },
})

M.DescribeTapesInput = schema.new({
    id = id.from(_N, "DescribeTapesInput"),
    type = "structure",
    members = {
        GatewayARN = schema.new({
            id = id.from(_N, "DescribeTapesInput", "GatewayARN"),
            type = "string",
            name = "GatewayARN",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        TapeARNs = schema.new({
            id = id.from(_N, "DescribeTapesInput", "TapeARNs"),
            type = "list",
            name = "TapeARNs",
            target_id = prelude.Document.id,
            list_member = prelude.String,
        }),
        Marker = schema.new({
            id = id.from(_N, "DescribeTapesInput", "Marker"),
            type = "string",
            name = "Marker",
            target_id = prelude.String.id,
        }),
        Limit = schema.new({
            id = id.from(_N, "DescribeTapesInput", "Limit"),
            type = "integer",
            name = "Limit",
            target_id = prelude.Integer.id,
        }),
    },
})

M.Tape = schema.new({
    id = id.from(_N, "Tape"),
    type = "structure",
    members = {
        TapeARN = schema.new({
            id = id.from(_N, "Tape", "TapeARN"),
            type = "string",
            name = "TapeARN",
            target_id = prelude.String.id,
        }),
        TapeBarcode = schema.new({
            id = id.from(_N, "Tape", "TapeBarcode"),
            type = "string",
            name = "TapeBarcode",
            target_id = prelude.String.id,
        }),
        TapeCreatedDate = schema.new({
            id = id.from(_N, "Tape", "TapeCreatedDate"),
            type = "timestamp",
            name = "TapeCreatedDate",
            target_id = prelude.Timestamp.id,
        }),
        TapeSizeInBytes = schema.new({
            id = id.from(_N, "Tape", "TapeSizeInBytes"),
            type = "long",
            name = "TapeSizeInBytes",
            target_id = prelude.Long.id,
        }),
        TapeStatus = schema.new({
            id = id.from(_N, "Tape", "TapeStatus"),
            type = "string",
            name = "TapeStatus",
            target_id = prelude.String.id,
        }),
        VTLDevice = schema.new({
            id = id.from(_N, "Tape", "VTLDevice"),
            type = "string",
            name = "VTLDevice",
            target_id = prelude.String.id,
        }),
        Progress = schema.new({
            id = id.from(_N, "Tape", "Progress"),
            type = "double",
            name = "Progress",
            target_id = prelude.Double.id,
        }),
        TapeUsedInBytes = schema.new({
            id = id.from(_N, "Tape", "TapeUsedInBytes"),
            type = "long",
            name = "TapeUsedInBytes",
            target_id = prelude.Long.id,
        }),
        KMSKey = schema.new({
            id = id.from(_N, "Tape", "KMSKey"),
            type = "string",
            name = "KMSKey",
            target_id = prelude.String.id,
        }),
        PoolId = schema.new({
            id = id.from(_N, "Tape", "PoolId"),
            type = "string",
            name = "PoolId",
            target_id = prelude.String.id,
        }),
        Worm = schema.new({
            id = id.from(_N, "Tape", "Worm"),
            type = "boolean",
            name = "Worm",
            target_id = prelude.Boolean.id,
            traits = {
                [traits.DEFAULT] = { value = false },
            },
        }),
        RetentionStartDate = schema.new({
            id = id.from(_N, "Tape", "RetentionStartDate"),
            type = "timestamp",
            name = "RetentionStartDate",
            target_id = prelude.Timestamp.id,
        }),
        PoolEntryDate = schema.new({
            id = id.from(_N, "Tape", "PoolEntryDate"),
            type = "timestamp",
            name = "PoolEntryDate",
            target_id = prelude.Timestamp.id,
        }),
    },
})

M.DescribeTapesOutput = schema.new({
    id = id.from(_N, "DescribeTapesOutput"),
    type = "structure",
    members = {
        Tapes = schema.new({
            id = id.from(_N, "DescribeTapesOutput", "Tapes"),
            type = "list",
            name = "Tapes",
            target_id = prelude.Document.id,
            list_member = M.Tape,
        }),
        Marker = schema.new({
            id = id.from(_N, "DescribeTapesOutput", "Marker"),
            type = "string",
            name = "Marker",
            target_id = prelude.String.id,
        }),
    },
})

M.DescribeUploadBufferInput = schema.new({
    id = id.from(_N, "DescribeUploadBufferInput"),
    type = "structure",
    members = {
        GatewayARN = schema.new({
            id = id.from(_N, "DescribeUploadBufferInput", "GatewayARN"),
            type = "string",
            name = "GatewayARN",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.DescribeUploadBufferOutput = schema.new({
    id = id.from(_N, "DescribeUploadBufferOutput"),
    type = "structure",
    members = {
        GatewayARN = schema.new({
            id = id.from(_N, "DescribeUploadBufferOutput", "GatewayARN"),
            type = "string",
            name = "GatewayARN",
            target_id = prelude.String.id,
        }),
        DiskIds = schema.new({
            id = id.from(_N, "DescribeUploadBufferOutput", "DiskIds"),
            type = "list",
            name = "DiskIds",
            target_id = prelude.Document.id,
            list_member = prelude.String,
        }),
        UploadBufferUsedInBytes = schema.new({
            id = id.from(_N, "DescribeUploadBufferOutput", "UploadBufferUsedInBytes"),
            type = "long",
            name = "UploadBufferUsedInBytes",
            target_id = prelude.Long.id,
            traits = {
                [traits.DEFAULT] = { value = 0 },
            },
        }),
        UploadBufferAllocatedInBytes = schema.new({
            id = id.from(_N, "DescribeUploadBufferOutput", "UploadBufferAllocatedInBytes"),
            type = "long",
            name = "UploadBufferAllocatedInBytes",
            target_id = prelude.Long.id,
            traits = {
                [traits.DEFAULT] = { value = 0 },
            },
        }),
    },
})

M.DescribeVTLDevicesInput = schema.new({
    id = id.from(_N, "DescribeVTLDevicesInput"),
    type = "structure",
    members = {
        GatewayARN = schema.new({
            id = id.from(_N, "DescribeVTLDevicesInput", "GatewayARN"),
            type = "string",
            name = "GatewayARN",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        VTLDeviceARNs = schema.new({
            id = id.from(_N, "DescribeVTLDevicesInput", "VTLDeviceARNs"),
            type = "list",
            name = "VTLDeviceARNs",
            target_id = prelude.Document.id,
            list_member = prelude.String,
        }),
        Marker = schema.new({
            id = id.from(_N, "DescribeVTLDevicesInput", "Marker"),
            type = "string",
            name = "Marker",
            target_id = prelude.String.id,
        }),
        Limit = schema.new({
            id = id.from(_N, "DescribeVTLDevicesInput", "Limit"),
            type = "integer",
            name = "Limit",
            target_id = prelude.Integer.id,
        }),
    },
})

M.DeviceiSCSIAttributes = schema.new({
    id = id.from(_N, "DeviceiSCSIAttributes"),
    type = "structure",
    members = {
        TargetARN = schema.new({
            id = id.from(_N, "DeviceiSCSIAttributes", "TargetARN"),
            type = "string",
            name = "TargetARN",
            target_id = prelude.String.id,
        }),
        NetworkInterfaceId = schema.new({
            id = id.from(_N, "DeviceiSCSIAttributes", "NetworkInterfaceId"),
            type = "string",
            name = "NetworkInterfaceId",
            target_id = prelude.String.id,
        }),
        NetworkInterfacePort = schema.new({
            id = id.from(_N, "DeviceiSCSIAttributes", "NetworkInterfacePort"),
            type = "integer",
            name = "NetworkInterfacePort",
            target_id = prelude.Integer.id,
            traits = {
                [traits.DEFAULT] = { value = 0 },
            },
        }),
        ChapEnabled = schema.new({
            id = id.from(_N, "DeviceiSCSIAttributes", "ChapEnabled"),
            type = "boolean",
            name = "ChapEnabled",
            target_id = prelude.Boolean.id,
            traits = {
                [traits.DEFAULT] = { value = false },
            },
        }),
    },
})

M.VTLDevice = schema.new({
    id = id.from(_N, "VTLDevice"),
    type = "structure",
    members = {
        VTLDeviceARN = schema.new({
            id = id.from(_N, "VTLDevice", "VTLDeviceARN"),
            type = "string",
            name = "VTLDeviceARN",
            target_id = prelude.String.id,
        }),
        VTLDeviceType = schema.new({
            id = id.from(_N, "VTLDevice", "VTLDeviceType"),
            type = "string",
            name = "VTLDeviceType",
            target_id = prelude.String.id,
        }),
        VTLDeviceVendor = schema.new({
            id = id.from(_N, "VTLDevice", "VTLDeviceVendor"),
            type = "string",
            name = "VTLDeviceVendor",
            target_id = prelude.String.id,
        }),
        VTLDeviceProductIdentifier = schema.new({
            id = id.from(_N, "VTLDevice", "VTLDeviceProductIdentifier"),
            type = "string",
            name = "VTLDeviceProductIdentifier",
            target_id = prelude.String.id,
        }),
        DeviceiSCSIAttributes = schema.new({
            id = id.from(_N, "VTLDevice", "DeviceiSCSIAttributes"),
            type = "structure",
            name = "DeviceiSCSIAttributes",
            target_id = id.from(_N, "DeviceiSCSIAttributes"),
            target = M.DeviceiSCSIAttributes,
        }),
    },
})

M.DescribeVTLDevicesOutput = schema.new({
    id = id.from(_N, "DescribeVTLDevicesOutput"),
    type = "structure",
    members = {
        GatewayARN = schema.new({
            id = id.from(_N, "DescribeVTLDevicesOutput", "GatewayARN"),
            type = "string",
            name = "GatewayARN",
            target_id = prelude.String.id,
        }),
        VTLDevices = schema.new({
            id = id.from(_N, "DescribeVTLDevicesOutput", "VTLDevices"),
            type = "list",
            name = "VTLDevices",
            target_id = prelude.Document.id,
            list_member = M.VTLDevice,
        }),
        Marker = schema.new({
            id = id.from(_N, "DescribeVTLDevicesOutput", "Marker"),
            type = "string",
            name = "Marker",
            target_id = prelude.String.id,
        }),
    },
})

M.DescribeWorkingStorageInput = schema.new({
    id = id.from(_N, "DescribeWorkingStorageInput"),
    type = "structure",
    members = {
        GatewayARN = schema.new({
            id = id.from(_N, "DescribeWorkingStorageInput", "GatewayARN"),
            type = "string",
            name = "GatewayARN",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.DescribeWorkingStorageOutput = schema.new({
    id = id.from(_N, "DescribeWorkingStorageOutput"),
    type = "structure",
    members = {
        GatewayARN = schema.new({
            id = id.from(_N, "DescribeWorkingStorageOutput", "GatewayARN"),
            type = "string",
            name = "GatewayARN",
            target_id = prelude.String.id,
        }),
        DiskIds = schema.new({
            id = id.from(_N, "DescribeWorkingStorageOutput", "DiskIds"),
            type = "list",
            name = "DiskIds",
            target_id = prelude.Document.id,
            list_member = prelude.String,
        }),
        WorkingStorageUsedInBytes = schema.new({
            id = id.from(_N, "DescribeWorkingStorageOutput", "WorkingStorageUsedInBytes"),
            type = "long",
            name = "WorkingStorageUsedInBytes",
            target_id = prelude.Long.id,
            traits = {
                [traits.DEFAULT] = { value = 0 },
            },
        }),
        WorkingStorageAllocatedInBytes = schema.new({
            id = id.from(_N, "DescribeWorkingStorageOutput", "WorkingStorageAllocatedInBytes"),
            type = "long",
            name = "WorkingStorageAllocatedInBytes",
            target_id = prelude.Long.id,
            traits = {
                [traits.DEFAULT] = { value = 0 },
            },
        }),
    },
})

M.DetachVolumeInput = schema.new({
    id = id.from(_N, "DetachVolumeInput"),
    type = "structure",
    members = {
        VolumeARN = schema.new({
            id = id.from(_N, "DetachVolumeInput", "VolumeARN"),
            type = "string",
            name = "VolumeARN",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        ForceDetach = schema.new({
            id = id.from(_N, "DetachVolumeInput", "ForceDetach"),
            type = "boolean",
            name = "ForceDetach",
            target_id = prelude.Boolean.id,
        }),
    },
})

M.DetachVolumeOutput = schema.new({
    id = id.from(_N, "DetachVolumeOutput"),
    type = "structure",
    members = {
        VolumeARN = schema.new({
            id = id.from(_N, "DetachVolumeOutput", "VolumeARN"),
            type = "string",
            name = "VolumeARN",
            target_id = prelude.String.id,
        }),
    },
})

M.DisableGatewayInput = schema.new({
    id = id.from(_N, "DisableGatewayInput"),
    type = "structure",
    members = {
        GatewayARN = schema.new({
            id = id.from(_N, "DisableGatewayInput", "GatewayARN"),
            type = "string",
            name = "GatewayARN",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.DisableGatewayOutput = schema.new({
    id = id.from(_N, "DisableGatewayOutput"),
    type = "structure",
    members = {
        GatewayARN = schema.new({
            id = id.from(_N, "DisableGatewayOutput", "GatewayARN"),
            type = "string",
            name = "GatewayARN",
            target_id = prelude.String.id,
        }),
    },
})

M.DisassociateFileSystemInput = schema.new({
    id = id.from(_N, "DisassociateFileSystemInput"),
    type = "structure",
    members = {
        FileSystemAssociationARN = schema.new({
            id = id.from(_N, "DisassociateFileSystemInput", "FileSystemAssociationARN"),
            type = "string",
            name = "FileSystemAssociationARN",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        ForceDelete = schema.new({
            id = id.from(_N, "DisassociateFileSystemInput", "ForceDelete"),
            type = "boolean",
            name = "ForceDelete",
            target_id = prelude.Boolean.id,
            traits = {
                [traits.DEFAULT] = { value = false },
            },
        }),
    },
})

M.DisassociateFileSystemOutput = schema.new({
    id = id.from(_N, "DisassociateFileSystemOutput"),
    type = "structure",
    members = {
        FileSystemAssociationARN = schema.new({
            id = id.from(_N, "DisassociateFileSystemOutput", "FileSystemAssociationARN"),
            type = "string",
            name = "FileSystemAssociationARN",
            target_id = prelude.String.id,
        }),
    },
})

M.Disk = schema.new({
    id = id.from(_N, "Disk"),
    type = "structure",
    members = {
        DiskId = schema.new({
            id = id.from(_N, "Disk", "DiskId"),
            type = "string",
            name = "DiskId",
            target_id = prelude.String.id,
        }),
        DiskPath = schema.new({
            id = id.from(_N, "Disk", "DiskPath"),
            type = "string",
            name = "DiskPath",
            target_id = prelude.String.id,
        }),
        DiskNode = schema.new({
            id = id.from(_N, "Disk", "DiskNode"),
            type = "string",
            name = "DiskNode",
            target_id = prelude.String.id,
        }),
        DiskStatus = schema.new({
            id = id.from(_N, "Disk", "DiskStatus"),
            type = "string",
            name = "DiskStatus",
            target_id = prelude.String.id,
        }),
        DiskSizeInBytes = schema.new({
            id = id.from(_N, "Disk", "DiskSizeInBytes"),
            type = "long",
            name = "DiskSizeInBytes",
            target_id = prelude.Long.id,
            traits = {
                [traits.DEFAULT] = { value = 0 },
            },
        }),
        DiskAllocationType = schema.new({
            id = id.from(_N, "Disk", "DiskAllocationType"),
            type = "string",
            name = "DiskAllocationType",
            target_id = prelude.String.id,
        }),
        DiskAllocationResource = schema.new({
            id = id.from(_N, "Disk", "DiskAllocationResource"),
            type = "string",
            name = "DiskAllocationResource",
            target_id = prelude.String.id,
        }),
        DiskAttributeList = schema.new({
            id = id.from(_N, "Disk", "DiskAttributeList"),
            type = "list",
            name = "DiskAttributeList",
            target_id = prelude.Document.id,
            list_member = prelude.String,
        }),
    },
})

M.EvictFilesFailingUploadInput = schema.new({
    id = id.from(_N, "EvictFilesFailingUploadInput"),
    type = "structure",
    members = {
        FileShareARN = schema.new({
            id = id.from(_N, "EvictFilesFailingUploadInput", "FileShareARN"),
            type = "string",
            name = "FileShareARN",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        ForceRemove = schema.new({
            id = id.from(_N, "EvictFilesFailingUploadInput", "ForceRemove"),
            type = "boolean",
            name = "ForceRemove",
            target_id = prelude.Boolean.id,
            traits = {
                [traits.DEFAULT] = { value = false },
            },
        }),
    },
})

M.EvictFilesFailingUploadOutput = schema.new({
    id = id.from(_N, "EvictFilesFailingUploadOutput"),
    type = "structure",
    members = {
        NotificationId = schema.new({
            id = id.from(_N, "EvictFilesFailingUploadOutput", "NotificationId"),
            type = "string",
            name = "NotificationId",
            target_id = prelude.String.id,
        }),
    },
})

M.FileShareInfo = schema.new({
    id = id.from(_N, "FileShareInfo"),
    type = "structure",
    members = {
        FileShareType = schema.new({
            id = id.from(_N, "FileShareInfo", "FileShareType"),
            type = "string",
            name = "FileShareType",
            target_id = prelude.String.id,
        }),
        FileShareARN = schema.new({
            id = id.from(_N, "FileShareInfo", "FileShareARN"),
            type = "string",
            name = "FileShareARN",
            target_id = prelude.String.id,
        }),
        FileShareId = schema.new({
            id = id.from(_N, "FileShareInfo", "FileShareId"),
            type = "string",
            name = "FileShareId",
            target_id = prelude.String.id,
        }),
        FileShareStatus = schema.new({
            id = id.from(_N, "FileShareInfo", "FileShareStatus"),
            type = "string",
            name = "FileShareStatus",
            target_id = prelude.String.id,
        }),
        GatewayARN = schema.new({
            id = id.from(_N, "FileShareInfo", "GatewayARN"),
            type = "string",
            name = "GatewayARN",
            target_id = prelude.String.id,
        }),
    },
})

M.FileSystemAssociationSummary = schema.new({
    id = id.from(_N, "FileSystemAssociationSummary"),
    type = "structure",
    members = {
        FileSystemAssociationId = schema.new({
            id = id.from(_N, "FileSystemAssociationSummary", "FileSystemAssociationId"),
            type = "string",
            name = "FileSystemAssociationId",
            target_id = prelude.String.id,
        }),
        FileSystemAssociationARN = schema.new({
            id = id.from(_N, "FileSystemAssociationSummary", "FileSystemAssociationARN"),
            type = "string",
            name = "FileSystemAssociationARN",
            target_id = prelude.String.id,
        }),
        FileSystemAssociationStatus = schema.new({
            id = id.from(_N, "FileSystemAssociationSummary", "FileSystemAssociationStatus"),
            type = "string",
            name = "FileSystemAssociationStatus",
            target_id = prelude.String.id,
        }),
        GatewayARN = schema.new({
            id = id.from(_N, "FileSystemAssociationSummary", "GatewayARN"),
            type = "string",
            name = "GatewayARN",
            target_id = prelude.String.id,
        }),
    },
})

M.GatewayInfo = schema.new({
    id = id.from(_N, "GatewayInfo"),
    type = "structure",
    members = {
        GatewayId = schema.new({
            id = id.from(_N, "GatewayInfo", "GatewayId"),
            type = "string",
            name = "GatewayId",
            target_id = prelude.String.id,
        }),
        GatewayARN = schema.new({
            id = id.from(_N, "GatewayInfo", "GatewayARN"),
            type = "string",
            name = "GatewayARN",
            target_id = prelude.String.id,
        }),
        GatewayType = schema.new({
            id = id.from(_N, "GatewayInfo", "GatewayType"),
            type = "string",
            name = "GatewayType",
            target_id = prelude.String.id,
        }),
        GatewayOperationalState = schema.new({
            id = id.from(_N, "GatewayInfo", "GatewayOperationalState"),
            type = "string",
            name = "GatewayOperationalState",
            target_id = prelude.String.id,
        }),
        GatewayName = schema.new({
            id = id.from(_N, "GatewayInfo", "GatewayName"),
            type = "string",
            name = "GatewayName",
            target_id = prelude.String.id,
        }),
        Ec2InstanceId = schema.new({
            id = id.from(_N, "GatewayInfo", "Ec2InstanceId"),
            type = "string",
            name = "Ec2InstanceId",
            target_id = prelude.String.id,
        }),
        Ec2InstanceRegion = schema.new({
            id = id.from(_N, "GatewayInfo", "Ec2InstanceRegion"),
            type = "string",
            name = "Ec2InstanceRegion",
            target_id = prelude.String.id,
        }),
        HostEnvironment = schema.new({
            id = id.from(_N, "GatewayInfo", "HostEnvironment"),
            type = "string",
            name = "HostEnvironment",
            target_id = prelude.String.id,
        }),
        HostEnvironmentId = schema.new({
            id = id.from(_N, "GatewayInfo", "HostEnvironmentId"),
            type = "string",
            name = "HostEnvironmentId",
            target_id = prelude.String.id,
        }),
        DeprecationDate = schema.new({
            id = id.from(_N, "GatewayInfo", "DeprecationDate"),
            type = "string",
            name = "DeprecationDate",
            target_id = prelude.String.id,
        }),
        SoftwareVersion = schema.new({
            id = id.from(_N, "GatewayInfo", "SoftwareVersion"),
            type = "string",
            name = "SoftwareVersion",
            target_id = prelude.String.id,
        }),
    },
})

M.JoinDomainInput = schema.new({
    id = id.from(_N, "JoinDomainInput"),
    type = "structure",
    members = {
        GatewayARN = schema.new({
            id = id.from(_N, "JoinDomainInput", "GatewayARN"),
            type = "string",
            name = "GatewayARN",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        DomainName = schema.new({
            id = id.from(_N, "JoinDomainInput", "DomainName"),
            type = "string",
            name = "DomainName",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        OrganizationalUnit = schema.new({
            id = id.from(_N, "JoinDomainInput", "OrganizationalUnit"),
            type = "string",
            name = "OrganizationalUnit",
            target_id = prelude.String.id,
        }),
        DomainControllers = schema.new({
            id = id.from(_N, "JoinDomainInput", "DomainControllers"),
            type = "list",
            name = "DomainControllers",
            target_id = prelude.Document.id,
            list_member = prelude.String,
        }),
        TimeoutInSeconds = schema.new({
            id = id.from(_N, "JoinDomainInput", "TimeoutInSeconds"),
            type = "integer",
            name = "TimeoutInSeconds",
            target_id = prelude.Integer.id,
        }),
        UserName = schema.new({
            id = id.from(_N, "JoinDomainInput", "UserName"),
            type = "string",
            name = "UserName",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        Password = schema.new({
            id = id.from(_N, "JoinDomainInput", "Password"),
            type = "string",
            name = "Password",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.JoinDomainOutput = schema.new({
    id = id.from(_N, "JoinDomainOutput"),
    type = "structure",
    members = {
        GatewayARN = schema.new({
            id = id.from(_N, "JoinDomainOutput", "GatewayARN"),
            type = "string",
            name = "GatewayARN",
            target_id = prelude.String.id,
        }),
        ActiveDirectoryStatus = schema.new({
            id = id.from(_N, "JoinDomainOutput", "ActiveDirectoryStatus"),
            type = "string",
            name = "ActiveDirectoryStatus",
            target_id = prelude.String.id,
        }),
    },
})

M.ListAutomaticTapeCreationPoliciesInput = schema.new({
    id = id.from(_N, "ListAutomaticTapeCreationPoliciesInput"),
    type = "structure",
    members = {
        GatewayARN = schema.new({
            id = id.from(_N, "ListAutomaticTapeCreationPoliciesInput", "GatewayARN"),
            type = "string",
            name = "GatewayARN",
            target_id = prelude.String.id,
        }),
    },
})

M.ListAutomaticTapeCreationPoliciesOutput = schema.new({
    id = id.from(_N, "ListAutomaticTapeCreationPoliciesOutput"),
    type = "structure",
    members = {
        AutomaticTapeCreationPolicyInfos = schema.new({
            id = id.from(_N, "ListAutomaticTapeCreationPoliciesOutput", "AutomaticTapeCreationPolicyInfos"),
            type = "list",
            name = "AutomaticTapeCreationPolicyInfos",
            target_id = prelude.Document.id,
            list_member = M.AutomaticTapeCreationPolicyInfo,
        }),
    },
})

M.ListCacheReportsInput = schema.new({
    id = id.from(_N, "ListCacheReportsInput"),
    type = "structure",
    members = {
        Marker = schema.new({
            id = id.from(_N, "ListCacheReportsInput", "Marker"),
            type = "string",
            name = "Marker",
            target_id = prelude.String.id,
        }),
    },
})

M.ListCacheReportsOutput = schema.new({
    id = id.from(_N, "ListCacheReportsOutput"),
    type = "structure",
    members = {
        CacheReportList = schema.new({
            id = id.from(_N, "ListCacheReportsOutput", "CacheReportList"),
            type = "list",
            name = "CacheReportList",
            target_id = prelude.Document.id,
            list_member = M.CacheReportInfo,
        }),
        Marker = schema.new({
            id = id.from(_N, "ListCacheReportsOutput", "Marker"),
            type = "string",
            name = "Marker",
            target_id = prelude.String.id,
        }),
    },
})

M.ListFileSharesInput = schema.new({
    id = id.from(_N, "ListFileSharesInput"),
    type = "structure",
    members = {
        GatewayARN = schema.new({
            id = id.from(_N, "ListFileSharesInput", "GatewayARN"),
            type = "string",
            name = "GatewayARN",
            target_id = prelude.String.id,
        }),
        Limit = schema.new({
            id = id.from(_N, "ListFileSharesInput", "Limit"),
            type = "integer",
            name = "Limit",
            target_id = prelude.Integer.id,
        }),
        Marker = schema.new({
            id = id.from(_N, "ListFileSharesInput", "Marker"),
            type = "string",
            name = "Marker",
            target_id = prelude.String.id,
        }),
    },
})

M.ListFileSharesOutput = schema.new({
    id = id.from(_N, "ListFileSharesOutput"),
    type = "structure",
    members = {
        Marker = schema.new({
            id = id.from(_N, "ListFileSharesOutput", "Marker"),
            type = "string",
            name = "Marker",
            target_id = prelude.String.id,
        }),
        NextMarker = schema.new({
            id = id.from(_N, "ListFileSharesOutput", "NextMarker"),
            type = "string",
            name = "NextMarker",
            target_id = prelude.String.id,
        }),
        FileShareInfoList = schema.new({
            id = id.from(_N, "ListFileSharesOutput", "FileShareInfoList"),
            type = "list",
            name = "FileShareInfoList",
            target_id = prelude.Document.id,
            list_member = M.FileShareInfo,
        }),
    },
})

M.ListFileSystemAssociationsInput = schema.new({
    id = id.from(_N, "ListFileSystemAssociationsInput"),
    type = "structure",
    members = {
        GatewayARN = schema.new({
            id = id.from(_N, "ListFileSystemAssociationsInput", "GatewayARN"),
            type = "string",
            name = "GatewayARN",
            target_id = prelude.String.id,
        }),
        Limit = schema.new({
            id = id.from(_N, "ListFileSystemAssociationsInput", "Limit"),
            type = "integer",
            name = "Limit",
            target_id = prelude.Integer.id,
        }),
        Marker = schema.new({
            id = id.from(_N, "ListFileSystemAssociationsInput", "Marker"),
            type = "string",
            name = "Marker",
            target_id = prelude.String.id,
        }),
    },
})

M.ListFileSystemAssociationsOutput = schema.new({
    id = id.from(_N, "ListFileSystemAssociationsOutput"),
    type = "structure",
    members = {
        Marker = schema.new({
            id = id.from(_N, "ListFileSystemAssociationsOutput", "Marker"),
            type = "string",
            name = "Marker",
            target_id = prelude.String.id,
        }),
        NextMarker = schema.new({
            id = id.from(_N, "ListFileSystemAssociationsOutput", "NextMarker"),
            type = "string",
            name = "NextMarker",
            target_id = prelude.String.id,
        }),
        FileSystemAssociationSummaryList = schema.new({
            id = id.from(_N, "ListFileSystemAssociationsOutput", "FileSystemAssociationSummaryList"),
            type = "list",
            name = "FileSystemAssociationSummaryList",
            target_id = prelude.Document.id,
            list_member = M.FileSystemAssociationSummary,
        }),
    },
})

M.ListGatewaysInput = schema.new({
    id = id.from(_N, "ListGatewaysInput"),
    type = "structure",
    members = {
        Marker = schema.new({
            id = id.from(_N, "ListGatewaysInput", "Marker"),
            type = "string",
            name = "Marker",
            target_id = prelude.String.id,
        }),
        Limit = schema.new({
            id = id.from(_N, "ListGatewaysInput", "Limit"),
            type = "integer",
            name = "Limit",
            target_id = prelude.Integer.id,
        }),
    },
})

M.ListGatewaysOutput = schema.new({
    id = id.from(_N, "ListGatewaysOutput"),
    type = "structure",
    members = {
        Gateways = schema.new({
            id = id.from(_N, "ListGatewaysOutput", "Gateways"),
            type = "list",
            name = "Gateways",
            target_id = prelude.Document.id,
            list_member = M.GatewayInfo,
        }),
        Marker = schema.new({
            id = id.from(_N, "ListGatewaysOutput", "Marker"),
            type = "string",
            name = "Marker",
            target_id = prelude.String.id,
        }),
    },
})

M.ListLocalDisksInput = schema.new({
    id = id.from(_N, "ListLocalDisksInput"),
    type = "structure",
    members = {
        GatewayARN = schema.new({
            id = id.from(_N, "ListLocalDisksInput", "GatewayARN"),
            type = "string",
            name = "GatewayARN",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.ListLocalDisksOutput = schema.new({
    id = id.from(_N, "ListLocalDisksOutput"),
    type = "structure",
    members = {
        GatewayARN = schema.new({
            id = id.from(_N, "ListLocalDisksOutput", "GatewayARN"),
            type = "string",
            name = "GatewayARN",
            target_id = prelude.String.id,
        }),
        Disks = schema.new({
            id = id.from(_N, "ListLocalDisksOutput", "Disks"),
            type = "list",
            name = "Disks",
            target_id = prelude.Document.id,
            list_member = M.Disk,
        }),
    },
})

M.ListTagsForResourceInput = schema.new({
    id = id.from(_N, "ListTagsForResourceInput"),
    type = "structure",
    members = {
        ResourceARN = schema.new({
            id = id.from(_N, "ListTagsForResourceInput", "ResourceARN"),
            type = "string",
            name = "ResourceARN",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        Marker = schema.new({
            id = id.from(_N, "ListTagsForResourceInput", "Marker"),
            type = "string",
            name = "Marker",
            target_id = prelude.String.id,
        }),
        Limit = schema.new({
            id = id.from(_N, "ListTagsForResourceInput", "Limit"),
            type = "integer",
            name = "Limit",
            target_id = prelude.Integer.id,
        }),
    },
})

M.ListTagsForResourceOutput = schema.new({
    id = id.from(_N, "ListTagsForResourceOutput"),
    type = "structure",
    members = {
        ResourceARN = schema.new({
            id = id.from(_N, "ListTagsForResourceOutput", "ResourceARN"),
            type = "string",
            name = "ResourceARN",
            target_id = prelude.String.id,
        }),
        Marker = schema.new({
            id = id.from(_N, "ListTagsForResourceOutput", "Marker"),
            type = "string",
            name = "Marker",
            target_id = prelude.String.id,
        }),
        Tags = schema.new({
            id = id.from(_N, "ListTagsForResourceOutput", "Tags"),
            type = "list",
            name = "Tags",
            target_id = prelude.Document.id,
            list_member = M.Tag,
        }),
    },
})

M.ListTapePoolsInput = schema.new({
    id = id.from(_N, "ListTapePoolsInput"),
    type = "structure",
    members = {
        PoolARNs = schema.new({
            id = id.from(_N, "ListTapePoolsInput", "PoolARNs"),
            type = "list",
            name = "PoolARNs",
            target_id = prelude.Document.id,
            list_member = prelude.String,
        }),
        Marker = schema.new({
            id = id.from(_N, "ListTapePoolsInput", "Marker"),
            type = "string",
            name = "Marker",
            target_id = prelude.String.id,
        }),
        Limit = schema.new({
            id = id.from(_N, "ListTapePoolsInput", "Limit"),
            type = "integer",
            name = "Limit",
            target_id = prelude.Integer.id,
        }),
    },
})

M.PoolInfo = schema.new({
    id = id.from(_N, "PoolInfo"),
    type = "structure",
    members = {
        PoolARN = schema.new({
            id = id.from(_N, "PoolInfo", "PoolARN"),
            type = "string",
            name = "PoolARN",
            target_id = prelude.String.id,
        }),
        PoolName = schema.new({
            id = id.from(_N, "PoolInfo", "PoolName"),
            type = "string",
            name = "PoolName",
            target_id = prelude.String.id,
        }),
        StorageClass = schema.new({
            id = id.from(_N, "PoolInfo", "StorageClass"),
            type = "string",
            name = "StorageClass",
            target_id = prelude.String.id,
        }),
        RetentionLockType = schema.new({
            id = id.from(_N, "PoolInfo", "RetentionLockType"),
            type = "string",
            name = "RetentionLockType",
            target_id = prelude.String.id,
        }),
        RetentionLockTimeInDays = schema.new({
            id = id.from(_N, "PoolInfo", "RetentionLockTimeInDays"),
            type = "integer",
            name = "RetentionLockTimeInDays",
            target_id = prelude.Integer.id,
        }),
        PoolStatus = schema.new({
            id = id.from(_N, "PoolInfo", "PoolStatus"),
            type = "string",
            name = "PoolStatus",
            target_id = prelude.String.id,
        }),
    },
})

M.ListTapePoolsOutput = schema.new({
    id = id.from(_N, "ListTapePoolsOutput"),
    type = "structure",
    members = {
        PoolInfos = schema.new({
            id = id.from(_N, "ListTapePoolsOutput", "PoolInfos"),
            type = "list",
            name = "PoolInfos",
            target_id = prelude.Document.id,
            list_member = M.PoolInfo,
        }),
        Marker = schema.new({
            id = id.from(_N, "ListTapePoolsOutput", "Marker"),
            type = "string",
            name = "Marker",
            target_id = prelude.String.id,
        }),
    },
})

M.ListTapesInput = schema.new({
    id = id.from(_N, "ListTapesInput"),
    type = "structure",
    members = {
        TapeARNs = schema.new({
            id = id.from(_N, "ListTapesInput", "TapeARNs"),
            type = "list",
            name = "TapeARNs",
            target_id = prelude.Document.id,
            list_member = prelude.String,
        }),
        Marker = schema.new({
            id = id.from(_N, "ListTapesInput", "Marker"),
            type = "string",
            name = "Marker",
            target_id = prelude.String.id,
        }),
        Limit = schema.new({
            id = id.from(_N, "ListTapesInput", "Limit"),
            type = "integer",
            name = "Limit",
            target_id = prelude.Integer.id,
        }),
    },
})

M.TapeInfo = schema.new({
    id = id.from(_N, "TapeInfo"),
    type = "structure",
    members = {
        TapeARN = schema.new({
            id = id.from(_N, "TapeInfo", "TapeARN"),
            type = "string",
            name = "TapeARN",
            target_id = prelude.String.id,
        }),
        TapeBarcode = schema.new({
            id = id.from(_N, "TapeInfo", "TapeBarcode"),
            type = "string",
            name = "TapeBarcode",
            target_id = prelude.String.id,
        }),
        TapeSizeInBytes = schema.new({
            id = id.from(_N, "TapeInfo", "TapeSizeInBytes"),
            type = "long",
            name = "TapeSizeInBytes",
            target_id = prelude.Long.id,
        }),
        TapeStatus = schema.new({
            id = id.from(_N, "TapeInfo", "TapeStatus"),
            type = "string",
            name = "TapeStatus",
            target_id = prelude.String.id,
        }),
        GatewayARN = schema.new({
            id = id.from(_N, "TapeInfo", "GatewayARN"),
            type = "string",
            name = "GatewayARN",
            target_id = prelude.String.id,
        }),
        PoolId = schema.new({
            id = id.from(_N, "TapeInfo", "PoolId"),
            type = "string",
            name = "PoolId",
            target_id = prelude.String.id,
        }),
        RetentionStartDate = schema.new({
            id = id.from(_N, "TapeInfo", "RetentionStartDate"),
            type = "timestamp",
            name = "RetentionStartDate",
            target_id = prelude.Timestamp.id,
        }),
        PoolEntryDate = schema.new({
            id = id.from(_N, "TapeInfo", "PoolEntryDate"),
            type = "timestamp",
            name = "PoolEntryDate",
            target_id = prelude.Timestamp.id,
        }),
    },
})

M.ListTapesOutput = schema.new({
    id = id.from(_N, "ListTapesOutput"),
    type = "structure",
    members = {
        TapeInfos = schema.new({
            id = id.from(_N, "ListTapesOutput", "TapeInfos"),
            type = "list",
            name = "TapeInfos",
            target_id = prelude.Document.id,
            list_member = M.TapeInfo,
        }),
        Marker = schema.new({
            id = id.from(_N, "ListTapesOutput", "Marker"),
            type = "string",
            name = "Marker",
            target_id = prelude.String.id,
        }),
    },
})

M.ListVolumeInitiatorsInput = schema.new({
    id = id.from(_N, "ListVolumeInitiatorsInput"),
    type = "structure",
    members = {
        VolumeARN = schema.new({
            id = id.from(_N, "ListVolumeInitiatorsInput", "VolumeARN"),
            type = "string",
            name = "VolumeARN",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.ListVolumeInitiatorsOutput = schema.new({
    id = id.from(_N, "ListVolumeInitiatorsOutput"),
    type = "structure",
    members = {
        Initiators = schema.new({
            id = id.from(_N, "ListVolumeInitiatorsOutput", "Initiators"),
            type = "list",
            name = "Initiators",
            target_id = prelude.Document.id,
            list_member = prelude.String,
        }),
    },
})

M.ListVolumeRecoveryPointsInput = schema.new({
    id = id.from(_N, "ListVolumeRecoveryPointsInput"),
    type = "structure",
    members = {
        GatewayARN = schema.new({
            id = id.from(_N, "ListVolumeRecoveryPointsInput", "GatewayARN"),
            type = "string",
            name = "GatewayARN",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.VolumeRecoveryPointInfo = schema.new({
    id = id.from(_N, "VolumeRecoveryPointInfo"),
    type = "structure",
    members = {
        VolumeARN = schema.new({
            id = id.from(_N, "VolumeRecoveryPointInfo", "VolumeARN"),
            type = "string",
            name = "VolumeARN",
            target_id = prelude.String.id,
        }),
        VolumeSizeInBytes = schema.new({
            id = id.from(_N, "VolumeRecoveryPointInfo", "VolumeSizeInBytes"),
            type = "long",
            name = "VolumeSizeInBytes",
            target_id = prelude.Long.id,
            traits = {
                [traits.DEFAULT] = { value = 0 },
            },
        }),
        VolumeUsageInBytes = schema.new({
            id = id.from(_N, "VolumeRecoveryPointInfo", "VolumeUsageInBytes"),
            type = "long",
            name = "VolumeUsageInBytes",
            target_id = prelude.Long.id,
            traits = {
                [traits.DEFAULT] = { value = 0 },
            },
        }),
        VolumeRecoveryPointTime = schema.new({
            id = id.from(_N, "VolumeRecoveryPointInfo", "VolumeRecoveryPointTime"),
            type = "string",
            name = "VolumeRecoveryPointTime",
            target_id = prelude.String.id,
        }),
    },
})

M.ListVolumeRecoveryPointsOutput = schema.new({
    id = id.from(_N, "ListVolumeRecoveryPointsOutput"),
    type = "structure",
    members = {
        GatewayARN = schema.new({
            id = id.from(_N, "ListVolumeRecoveryPointsOutput", "GatewayARN"),
            type = "string",
            name = "GatewayARN",
            target_id = prelude.String.id,
        }),
        VolumeRecoveryPointInfos = schema.new({
            id = id.from(_N, "ListVolumeRecoveryPointsOutput", "VolumeRecoveryPointInfos"),
            type = "list",
            name = "VolumeRecoveryPointInfos",
            target_id = prelude.Document.id,
            list_member = M.VolumeRecoveryPointInfo,
        }),
    },
})

M.ListVolumesInput = schema.new({
    id = id.from(_N, "ListVolumesInput"),
    type = "structure",
    members = {
        GatewayARN = schema.new({
            id = id.from(_N, "ListVolumesInput", "GatewayARN"),
            type = "string",
            name = "GatewayARN",
            target_id = prelude.String.id,
        }),
        Marker = schema.new({
            id = id.from(_N, "ListVolumesInput", "Marker"),
            type = "string",
            name = "Marker",
            target_id = prelude.String.id,
        }),
        Limit = schema.new({
            id = id.from(_N, "ListVolumesInput", "Limit"),
            type = "integer",
            name = "Limit",
            target_id = prelude.Integer.id,
        }),
    },
})

M.VolumeInfo = schema.new({
    id = id.from(_N, "VolumeInfo"),
    type = "structure",
    members = {
        VolumeARN = schema.new({
            id = id.from(_N, "VolumeInfo", "VolumeARN"),
            type = "string",
            name = "VolumeARN",
            target_id = prelude.String.id,
        }),
        VolumeId = schema.new({
            id = id.from(_N, "VolumeInfo", "VolumeId"),
            type = "string",
            name = "VolumeId",
            target_id = prelude.String.id,
        }),
        GatewayARN = schema.new({
            id = id.from(_N, "VolumeInfo", "GatewayARN"),
            type = "string",
            name = "GatewayARN",
            target_id = prelude.String.id,
        }),
        GatewayId = schema.new({
            id = id.from(_N, "VolumeInfo", "GatewayId"),
            type = "string",
            name = "GatewayId",
            target_id = prelude.String.id,
        }),
        VolumeType = schema.new({
            id = id.from(_N, "VolumeInfo", "VolumeType"),
            type = "string",
            name = "VolumeType",
            target_id = prelude.String.id,
        }),
        VolumeSizeInBytes = schema.new({
            id = id.from(_N, "VolumeInfo", "VolumeSizeInBytes"),
            type = "long",
            name = "VolumeSizeInBytes",
            target_id = prelude.Long.id,
            traits = {
                [traits.DEFAULT] = { value = 0 },
            },
        }),
        VolumeAttachmentStatus = schema.new({
            id = id.from(_N, "VolumeInfo", "VolumeAttachmentStatus"),
            type = "string",
            name = "VolumeAttachmentStatus",
            target_id = prelude.String.id,
        }),
    },
})

M.ListVolumesOutput = schema.new({
    id = id.from(_N, "ListVolumesOutput"),
    type = "structure",
    members = {
        GatewayARN = schema.new({
            id = id.from(_N, "ListVolumesOutput", "GatewayARN"),
            type = "string",
            name = "GatewayARN",
            target_id = prelude.String.id,
        }),
        Marker = schema.new({
            id = id.from(_N, "ListVolumesOutput", "Marker"),
            type = "string",
            name = "Marker",
            target_id = prelude.String.id,
        }),
        VolumeInfos = schema.new({
            id = id.from(_N, "ListVolumesOutput", "VolumeInfos"),
            type = "list",
            name = "VolumeInfos",
            target_id = prelude.Document.id,
            list_member = M.VolumeInfo,
        }),
    },
})

M.NotifyWhenUploadedInput = schema.new({
    id = id.from(_N, "NotifyWhenUploadedInput"),
    type = "structure",
    members = {
        FileShareARN = schema.new({
            id = id.from(_N, "NotifyWhenUploadedInput", "FileShareARN"),
            type = "string",
            name = "FileShareARN",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.NotifyWhenUploadedOutput = schema.new({
    id = id.from(_N, "NotifyWhenUploadedOutput"),
    type = "structure",
    members = {
        FileShareARN = schema.new({
            id = id.from(_N, "NotifyWhenUploadedOutput", "FileShareARN"),
            type = "string",
            name = "FileShareARN",
            target_id = prelude.String.id,
        }),
        NotificationId = schema.new({
            id = id.from(_N, "NotifyWhenUploadedOutput", "NotificationId"),
            type = "string",
            name = "NotificationId",
            target_id = prelude.String.id,
        }),
    },
})

M.RefreshCacheInput = schema.new({
    id = id.from(_N, "RefreshCacheInput"),
    type = "structure",
    members = {
        FileShareARN = schema.new({
            id = id.from(_N, "RefreshCacheInput", "FileShareARN"),
            type = "string",
            name = "FileShareARN",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        FolderList = schema.new({
            id = id.from(_N, "RefreshCacheInput", "FolderList"),
            type = "list",
            name = "FolderList",
            target_id = prelude.Document.id,
            list_member = prelude.String,
        }),
        Recursive = schema.new({
            id = id.from(_N, "RefreshCacheInput", "Recursive"),
            type = "boolean",
            name = "Recursive",
            target_id = prelude.Boolean.id,
        }),
    },
})

M.RefreshCacheOutput = schema.new({
    id = id.from(_N, "RefreshCacheOutput"),
    type = "structure",
    members = {
        FileShareARN = schema.new({
            id = id.from(_N, "RefreshCacheOutput", "FileShareARN"),
            type = "string",
            name = "FileShareARN",
            target_id = prelude.String.id,
        }),
        NotificationId = schema.new({
            id = id.from(_N, "RefreshCacheOutput", "NotificationId"),
            type = "string",
            name = "NotificationId",
            target_id = prelude.String.id,
        }),
    },
})

M.RemoveTagsFromResourceInput = schema.new({
    id = id.from(_N, "RemoveTagsFromResourceInput"),
    type = "structure",
    members = {
        ResourceARN = schema.new({
            id = id.from(_N, "RemoveTagsFromResourceInput", "ResourceARN"),
            type = "string",
            name = "ResourceARN",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        TagKeys = schema.new({
            id = id.from(_N, "RemoveTagsFromResourceInput", "TagKeys"),
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

M.RemoveTagsFromResourceOutput = schema.new({
    id = id.from(_N, "RemoveTagsFromResourceOutput"),
    type = "structure",
    members = {
        ResourceARN = schema.new({
            id = id.from(_N, "RemoveTagsFromResourceOutput", "ResourceARN"),
            type = "string",
            name = "ResourceARN",
            target_id = prelude.String.id,
        }),
    },
})

M.ResetCacheInput = schema.new({
    id = id.from(_N, "ResetCacheInput"),
    type = "structure",
    members = {
        GatewayARN = schema.new({
            id = id.from(_N, "ResetCacheInput", "GatewayARN"),
            type = "string",
            name = "GatewayARN",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.ResetCacheOutput = schema.new({
    id = id.from(_N, "ResetCacheOutput"),
    type = "structure",
    members = {
        GatewayARN = schema.new({
            id = id.from(_N, "ResetCacheOutput", "GatewayARN"),
            type = "string",
            name = "GatewayARN",
            target_id = prelude.String.id,
        }),
    },
})

M.RetrieveTapeArchiveInput = schema.new({
    id = id.from(_N, "RetrieveTapeArchiveInput"),
    type = "structure",
    members = {
        TapeARN = schema.new({
            id = id.from(_N, "RetrieveTapeArchiveInput", "TapeARN"),
            type = "string",
            name = "TapeARN",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        GatewayARN = schema.new({
            id = id.from(_N, "RetrieveTapeArchiveInput", "GatewayARN"),
            type = "string",
            name = "GatewayARN",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.RetrieveTapeArchiveOutput = schema.new({
    id = id.from(_N, "RetrieveTapeArchiveOutput"),
    type = "structure",
    members = {
        TapeARN = schema.new({
            id = id.from(_N, "RetrieveTapeArchiveOutput", "TapeARN"),
            type = "string",
            name = "TapeARN",
            target_id = prelude.String.id,
        }),
    },
})

M.RetrieveTapeRecoveryPointInput = schema.new({
    id = id.from(_N, "RetrieveTapeRecoveryPointInput"),
    type = "structure",
    members = {
        TapeARN = schema.new({
            id = id.from(_N, "RetrieveTapeRecoveryPointInput", "TapeARN"),
            type = "string",
            name = "TapeARN",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        GatewayARN = schema.new({
            id = id.from(_N, "RetrieveTapeRecoveryPointInput", "GatewayARN"),
            type = "string",
            name = "GatewayARN",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.RetrieveTapeRecoveryPointOutput = schema.new({
    id = id.from(_N, "RetrieveTapeRecoveryPointOutput"),
    type = "structure",
    members = {
        TapeARN = schema.new({
            id = id.from(_N, "RetrieveTapeRecoveryPointOutput", "TapeARN"),
            type = "string",
            name = "TapeARN",
            target_id = prelude.String.id,
        }),
    },
})

M.SetLocalConsolePasswordInput = schema.new({
    id = id.from(_N, "SetLocalConsolePasswordInput"),
    type = "structure",
    members = {
        GatewayARN = schema.new({
            id = id.from(_N, "SetLocalConsolePasswordInput", "GatewayARN"),
            type = "string",
            name = "GatewayARN",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        LocalConsolePassword = schema.new({
            id = id.from(_N, "SetLocalConsolePasswordInput", "LocalConsolePassword"),
            type = "string",
            name = "LocalConsolePassword",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.SetLocalConsolePasswordOutput = schema.new({
    id = id.from(_N, "SetLocalConsolePasswordOutput"),
    type = "structure",
    members = {
        GatewayARN = schema.new({
            id = id.from(_N, "SetLocalConsolePasswordOutput", "GatewayARN"),
            type = "string",
            name = "GatewayARN",
            target_id = prelude.String.id,
        }),
    },
})

M.SetSMBGuestPasswordInput = schema.new({
    id = id.from(_N, "SetSMBGuestPasswordInput"),
    type = "structure",
    members = {
        GatewayARN = schema.new({
            id = id.from(_N, "SetSMBGuestPasswordInput", "GatewayARN"),
            type = "string",
            name = "GatewayARN",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        Password = schema.new({
            id = id.from(_N, "SetSMBGuestPasswordInput", "Password"),
            type = "string",
            name = "Password",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.SetSMBGuestPasswordOutput = schema.new({
    id = id.from(_N, "SetSMBGuestPasswordOutput"),
    type = "structure",
    members = {
        GatewayARN = schema.new({
            id = id.from(_N, "SetSMBGuestPasswordOutput", "GatewayARN"),
            type = "string",
            name = "GatewayARN",
            target_id = prelude.String.id,
        }),
    },
})

M.ShutdownGatewayInput = schema.new({
    id = id.from(_N, "ShutdownGatewayInput"),
    type = "structure",
    members = {
        GatewayARN = schema.new({
            id = id.from(_N, "ShutdownGatewayInput", "GatewayARN"),
            type = "string",
            name = "GatewayARN",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.ShutdownGatewayOutput = schema.new({
    id = id.from(_N, "ShutdownGatewayOutput"),
    type = "structure",
    members = {
        GatewayARN = schema.new({
            id = id.from(_N, "ShutdownGatewayOutput", "GatewayARN"),
            type = "string",
            name = "GatewayARN",
            target_id = prelude.String.id,
        }),
    },
})

M.StartAvailabilityMonitorTestInput = schema.new({
    id = id.from(_N, "StartAvailabilityMonitorTestInput"),
    type = "structure",
    members = {
        GatewayARN = schema.new({
            id = id.from(_N, "StartAvailabilityMonitorTestInput", "GatewayARN"),
            type = "string",
            name = "GatewayARN",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.StartAvailabilityMonitorTestOutput = schema.new({
    id = id.from(_N, "StartAvailabilityMonitorTestOutput"),
    type = "structure",
    members = {
        GatewayARN = schema.new({
            id = id.from(_N, "StartAvailabilityMonitorTestOutput", "GatewayARN"),
            type = "string",
            name = "GatewayARN",
            target_id = prelude.String.id,
        }),
    },
})

M.StartCacheReportInput = schema.new({
    id = id.from(_N, "StartCacheReportInput"),
    type = "structure",
    members = {
        FileShareARN = schema.new({
            id = id.from(_N, "StartCacheReportInput", "FileShareARN"),
            type = "string",
            name = "FileShareARN",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        Role = schema.new({
            id = id.from(_N, "StartCacheReportInput", "Role"),
            type = "string",
            name = "Role",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        LocationARN = schema.new({
            id = id.from(_N, "StartCacheReportInput", "LocationARN"),
            type = "string",
            name = "LocationARN",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        BucketRegion = schema.new({
            id = id.from(_N, "StartCacheReportInput", "BucketRegion"),
            type = "string",
            name = "BucketRegion",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        VPCEndpointDNSName = schema.new({
            id = id.from(_N, "StartCacheReportInput", "VPCEndpointDNSName"),
            type = "string",
            name = "VPCEndpointDNSName",
            target_id = prelude.String.id,
        }),
        InclusionFilters = schema.new({
            id = id.from(_N, "StartCacheReportInput", "InclusionFilters"),
            type = "list",
            name = "InclusionFilters",
            target_id = prelude.Document.id,
            list_member = M.CacheReportFilter,
        }),
        ExclusionFilters = schema.new({
            id = id.from(_N, "StartCacheReportInput", "ExclusionFilters"),
            type = "list",
            name = "ExclusionFilters",
            target_id = prelude.Document.id,
            list_member = M.CacheReportFilter,
        }),
        ClientToken = schema.new({
            id = id.from(_N, "StartCacheReportInput", "ClientToken"),
            type = "string",
            name = "ClientToken",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        Tags = schema.new({
            id = id.from(_N, "StartCacheReportInput", "Tags"),
            type = "list",
            name = "Tags",
            target_id = prelude.Document.id,
            list_member = M.Tag,
        }),
    },
})

M.StartCacheReportOutput = schema.new({
    id = id.from(_N, "StartCacheReportOutput"),
    type = "structure",
    members = {
        CacheReportARN = schema.new({
            id = id.from(_N, "StartCacheReportOutput", "CacheReportARN"),
            type = "string",
            name = "CacheReportARN",
            target_id = prelude.String.id,
        }),
    },
})

M.StartGatewayInput = schema.new({
    id = id.from(_N, "StartGatewayInput"),
    type = "structure",
    members = {
        GatewayARN = schema.new({
            id = id.from(_N, "StartGatewayInput", "GatewayARN"),
            type = "string",
            name = "GatewayARN",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.StartGatewayOutput = schema.new({
    id = id.from(_N, "StartGatewayOutput"),
    type = "structure",
    members = {
        GatewayARN = schema.new({
            id = id.from(_N, "StartGatewayOutput", "GatewayARN"),
            type = "string",
            name = "GatewayARN",
            target_id = prelude.String.id,
        }),
    },
})

M.UpdateAutomaticTapeCreationPolicyInput = schema.new({
    id = id.from(_N, "UpdateAutomaticTapeCreationPolicyInput"),
    type = "structure",
    members = {
        AutomaticTapeCreationRules = schema.new({
            id = id.from(_N, "UpdateAutomaticTapeCreationPolicyInput", "AutomaticTapeCreationRules"),
            type = "list",
            name = "AutomaticTapeCreationRules",
            target_id = prelude.Document.id,
            list_member = M.AutomaticTapeCreationRule,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        GatewayARN = schema.new({
            id = id.from(_N, "UpdateAutomaticTapeCreationPolicyInput", "GatewayARN"),
            type = "string",
            name = "GatewayARN",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.UpdateAutomaticTapeCreationPolicyOutput = schema.new({
    id = id.from(_N, "UpdateAutomaticTapeCreationPolicyOutput"),
    type = "structure",
    members = {
        GatewayARN = schema.new({
            id = id.from(_N, "UpdateAutomaticTapeCreationPolicyOutput", "GatewayARN"),
            type = "string",
            name = "GatewayARN",
            target_id = prelude.String.id,
        }),
    },
})

M.UpdateBandwidthRateLimitInput = schema.new({
    id = id.from(_N, "UpdateBandwidthRateLimitInput"),
    type = "structure",
    members = {
        GatewayARN = schema.new({
            id = id.from(_N, "UpdateBandwidthRateLimitInput", "GatewayARN"),
            type = "string",
            name = "GatewayARN",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        AverageUploadRateLimitInBitsPerSec = schema.new({
            id = id.from(_N, "UpdateBandwidthRateLimitInput", "AverageUploadRateLimitInBitsPerSec"),
            type = "long",
            name = "AverageUploadRateLimitInBitsPerSec",
            target_id = prelude.Long.id,
        }),
        AverageDownloadRateLimitInBitsPerSec = schema.new({
            id = id.from(_N, "UpdateBandwidthRateLimitInput", "AverageDownloadRateLimitInBitsPerSec"),
            type = "long",
            name = "AverageDownloadRateLimitInBitsPerSec",
            target_id = prelude.Long.id,
        }),
    },
})

M.UpdateBandwidthRateLimitOutput = schema.new({
    id = id.from(_N, "UpdateBandwidthRateLimitOutput"),
    type = "structure",
    members = {
        GatewayARN = schema.new({
            id = id.from(_N, "UpdateBandwidthRateLimitOutput", "GatewayARN"),
            type = "string",
            name = "GatewayARN",
            target_id = prelude.String.id,
        }),
    },
})

M.UpdateBandwidthRateLimitScheduleInput = schema.new({
    id = id.from(_N, "UpdateBandwidthRateLimitScheduleInput"),
    type = "structure",
    members = {
        GatewayARN = schema.new({
            id = id.from(_N, "UpdateBandwidthRateLimitScheduleInput", "GatewayARN"),
            type = "string",
            name = "GatewayARN",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        BandwidthRateLimitIntervals = schema.new({
            id = id.from(_N, "UpdateBandwidthRateLimitScheduleInput", "BandwidthRateLimitIntervals"),
            type = "list",
            name = "BandwidthRateLimitIntervals",
            target_id = prelude.Document.id,
            list_member = M.BandwidthRateLimitInterval,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.UpdateBandwidthRateLimitScheduleOutput = schema.new({
    id = id.from(_N, "UpdateBandwidthRateLimitScheduleOutput"),
    type = "structure",
    members = {
        GatewayARN = schema.new({
            id = id.from(_N, "UpdateBandwidthRateLimitScheduleOutput", "GatewayARN"),
            type = "string",
            name = "GatewayARN",
            target_id = prelude.String.id,
        }),
    },
})

M.UpdateChapCredentialsInput = schema.new({
    id = id.from(_N, "UpdateChapCredentialsInput"),
    type = "structure",
    members = {
        TargetARN = schema.new({
            id = id.from(_N, "UpdateChapCredentialsInput", "TargetARN"),
            type = "string",
            name = "TargetARN",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        SecretToAuthenticateInitiator = schema.new({
            id = id.from(_N, "UpdateChapCredentialsInput", "SecretToAuthenticateInitiator"),
            type = "string",
            name = "SecretToAuthenticateInitiator",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        InitiatorName = schema.new({
            id = id.from(_N, "UpdateChapCredentialsInput", "InitiatorName"),
            type = "string",
            name = "InitiatorName",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        SecretToAuthenticateTarget = schema.new({
            id = id.from(_N, "UpdateChapCredentialsInput", "SecretToAuthenticateTarget"),
            type = "string",
            name = "SecretToAuthenticateTarget",
            target_id = prelude.String.id,
        }),
    },
})

M.UpdateChapCredentialsOutput = schema.new({
    id = id.from(_N, "UpdateChapCredentialsOutput"),
    type = "structure",
    members = {
        TargetARN = schema.new({
            id = id.from(_N, "UpdateChapCredentialsOutput", "TargetARN"),
            type = "string",
            name = "TargetARN",
            target_id = prelude.String.id,
        }),
        InitiatorName = schema.new({
            id = id.from(_N, "UpdateChapCredentialsOutput", "InitiatorName"),
            type = "string",
            name = "InitiatorName",
            target_id = prelude.String.id,
        }),
    },
})

M.UpdateFileSystemAssociationInput = schema.new({
    id = id.from(_N, "UpdateFileSystemAssociationInput"),
    type = "structure",
    members = {
        FileSystemAssociationARN = schema.new({
            id = id.from(_N, "UpdateFileSystemAssociationInput", "FileSystemAssociationARN"),
            type = "string",
            name = "FileSystemAssociationARN",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        UserName = schema.new({
            id = id.from(_N, "UpdateFileSystemAssociationInput", "UserName"),
            type = "string",
            name = "UserName",
            target_id = prelude.String.id,
        }),
        Password = schema.new({
            id = id.from(_N, "UpdateFileSystemAssociationInput", "Password"),
            type = "string",
            name = "Password",
            target_id = prelude.String.id,
        }),
        AuditDestinationARN = schema.new({
            id = id.from(_N, "UpdateFileSystemAssociationInput", "AuditDestinationARN"),
            type = "string",
            name = "AuditDestinationARN",
            target_id = prelude.String.id,
        }),
        CacheAttributes = schema.new({
            id = id.from(_N, "UpdateFileSystemAssociationInput", "CacheAttributes"),
            type = "structure",
            name = "CacheAttributes",
            target_id = id.from(_N, "CacheAttributes"),
            target = M.CacheAttributes,
        }),
    },
})

M.UpdateFileSystemAssociationOutput = schema.new({
    id = id.from(_N, "UpdateFileSystemAssociationOutput"),
    type = "structure",
    members = {
        FileSystemAssociationARN = schema.new({
            id = id.from(_N, "UpdateFileSystemAssociationOutput", "FileSystemAssociationARN"),
            type = "string",
            name = "FileSystemAssociationARN",
            target_id = prelude.String.id,
        }),
    },
})

M.UpdateGatewayInformationInput = schema.new({
    id = id.from(_N, "UpdateGatewayInformationInput"),
    type = "structure",
    members = {
        GatewayARN = schema.new({
            id = id.from(_N, "UpdateGatewayInformationInput", "GatewayARN"),
            type = "string",
            name = "GatewayARN",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        GatewayName = schema.new({
            id = id.from(_N, "UpdateGatewayInformationInput", "GatewayName"),
            type = "string",
            name = "GatewayName",
            target_id = prelude.String.id,
        }),
        GatewayTimezone = schema.new({
            id = id.from(_N, "UpdateGatewayInformationInput", "GatewayTimezone"),
            type = "string",
            name = "GatewayTimezone",
            target_id = prelude.String.id,
        }),
        CloudWatchLogGroupARN = schema.new({
            id = id.from(_N, "UpdateGatewayInformationInput", "CloudWatchLogGroupARN"),
            type = "string",
            name = "CloudWatchLogGroupARN",
            target_id = prelude.String.id,
        }),
        GatewayCapacity = schema.new({
            id = id.from(_N, "UpdateGatewayInformationInput", "GatewayCapacity"),
            type = "string",
            name = "GatewayCapacity",
            target_id = prelude.String.id,
        }),
    },
})

M.UpdateGatewayInformationOutput = schema.new({
    id = id.from(_N, "UpdateGatewayInformationOutput"),
    type = "structure",
    members = {
        GatewayARN = schema.new({
            id = id.from(_N, "UpdateGatewayInformationOutput", "GatewayARN"),
            type = "string",
            name = "GatewayARN",
            target_id = prelude.String.id,
        }),
        GatewayName = schema.new({
            id = id.from(_N, "UpdateGatewayInformationOutput", "GatewayName"),
            type = "string",
            name = "GatewayName",
            target_id = prelude.String.id,
        }),
    },
})

M.UpdateGatewaySoftwareNowInput = schema.new({
    id = id.from(_N, "UpdateGatewaySoftwareNowInput"),
    type = "structure",
    members = {
        GatewayARN = schema.new({
            id = id.from(_N, "UpdateGatewaySoftwareNowInput", "GatewayARN"),
            type = "string",
            name = "GatewayARN",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.UpdateGatewaySoftwareNowOutput = schema.new({
    id = id.from(_N, "UpdateGatewaySoftwareNowOutput"),
    type = "structure",
    members = {
        GatewayARN = schema.new({
            id = id.from(_N, "UpdateGatewaySoftwareNowOutput", "GatewayARN"),
            type = "string",
            name = "GatewayARN",
            target_id = prelude.String.id,
        }),
    },
})

M.UpdateMaintenanceStartTimeInput = schema.new({
    id = id.from(_N, "UpdateMaintenanceStartTimeInput"),
    type = "structure",
    members = {
        GatewayARN = schema.new({
            id = id.from(_N, "UpdateMaintenanceStartTimeInput", "GatewayARN"),
            type = "string",
            name = "GatewayARN",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        HourOfDay = schema.new({
            id = id.from(_N, "UpdateMaintenanceStartTimeInput", "HourOfDay"),
            type = "integer",
            name = "HourOfDay",
            target_id = prelude.Integer.id,
        }),
        MinuteOfHour = schema.new({
            id = id.from(_N, "UpdateMaintenanceStartTimeInput", "MinuteOfHour"),
            type = "integer",
            name = "MinuteOfHour",
            target_id = prelude.Integer.id,
        }),
        DayOfWeek = schema.new({
            id = id.from(_N, "UpdateMaintenanceStartTimeInput", "DayOfWeek"),
            type = "integer",
            name = "DayOfWeek",
            target_id = prelude.Integer.id,
        }),
        DayOfMonth = schema.new({
            id = id.from(_N, "UpdateMaintenanceStartTimeInput", "DayOfMonth"),
            type = "integer",
            name = "DayOfMonth",
            target_id = prelude.Integer.id,
        }),
        SoftwareUpdatePreferences = schema.new({
            id = id.from(_N, "UpdateMaintenanceStartTimeInput", "SoftwareUpdatePreferences"),
            type = "structure",
            name = "SoftwareUpdatePreferences",
            target_id = id.from(_N, "SoftwareUpdatePreferences"),
            target = M.SoftwareUpdatePreferences,
        }),
    },
})

M.UpdateMaintenanceStartTimeOutput = schema.new({
    id = id.from(_N, "UpdateMaintenanceStartTimeOutput"),
    type = "structure",
    members = {
        GatewayARN = schema.new({
            id = id.from(_N, "UpdateMaintenanceStartTimeOutput", "GatewayARN"),
            type = "string",
            name = "GatewayARN",
            target_id = prelude.String.id,
        }),
    },
})

M.UpdateNFSFileShareInput = schema.new({
    id = id.from(_N, "UpdateNFSFileShareInput"),
    type = "structure",
    members = {
        FileShareARN = schema.new({
            id = id.from(_N, "UpdateNFSFileShareInput", "FileShareARN"),
            type = "string",
            name = "FileShareARN",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        EncryptionType = schema.new({
            id = id.from(_N, "UpdateNFSFileShareInput", "EncryptionType"),
            type = "string",
            name = "EncryptionType",
            target_id = prelude.String.id,
        }),
        KMSEncrypted = schema.new({
            id = id.from(_N, "UpdateNFSFileShareInput", "KMSEncrypted"),
            type = "boolean",
            name = "KMSEncrypted",
            target_id = prelude.Boolean.id,
        }),
        KMSKey = schema.new({
            id = id.from(_N, "UpdateNFSFileShareInput", "KMSKey"),
            type = "string",
            name = "KMSKey",
            target_id = prelude.String.id,
        }),
        NFSFileShareDefaults = schema.new({
            id = id.from(_N, "UpdateNFSFileShareInput", "NFSFileShareDefaults"),
            type = "structure",
            name = "NFSFileShareDefaults",
            target_id = id.from(_N, "NFSFileShareDefaults"),
            target = M.NFSFileShareDefaults,
        }),
        DefaultStorageClass = schema.new({
            id = id.from(_N, "UpdateNFSFileShareInput", "DefaultStorageClass"),
            type = "string",
            name = "DefaultStorageClass",
            target_id = prelude.String.id,
        }),
        ObjectACL = schema.new({
            id = id.from(_N, "UpdateNFSFileShareInput", "ObjectACL"),
            type = "string",
            name = "ObjectACL",
            target_id = prelude.String.id,
        }),
        ClientList = schema.new({
            id = id.from(_N, "UpdateNFSFileShareInput", "ClientList"),
            type = "list",
            name = "ClientList",
            target_id = prelude.Document.id,
            list_member = prelude.String,
        }),
        Squash = schema.new({
            id = id.from(_N, "UpdateNFSFileShareInput", "Squash"),
            type = "string",
            name = "Squash",
            target_id = prelude.String.id,
        }),
        ReadOnly = schema.new({
            id = id.from(_N, "UpdateNFSFileShareInput", "ReadOnly"),
            type = "boolean",
            name = "ReadOnly",
            target_id = prelude.Boolean.id,
        }),
        GuessMIMETypeEnabled = schema.new({
            id = id.from(_N, "UpdateNFSFileShareInput", "GuessMIMETypeEnabled"),
            type = "boolean",
            name = "GuessMIMETypeEnabled",
            target_id = prelude.Boolean.id,
        }),
        RequesterPays = schema.new({
            id = id.from(_N, "UpdateNFSFileShareInput", "RequesterPays"),
            type = "boolean",
            name = "RequesterPays",
            target_id = prelude.Boolean.id,
        }),
        FileShareName = schema.new({
            id = id.from(_N, "UpdateNFSFileShareInput", "FileShareName"),
            type = "string",
            name = "FileShareName",
            target_id = prelude.String.id,
        }),
        CacheAttributes = schema.new({
            id = id.from(_N, "UpdateNFSFileShareInput", "CacheAttributes"),
            type = "structure",
            name = "CacheAttributes",
            target_id = id.from(_N, "CacheAttributes"),
            target = M.CacheAttributes,
        }),
        NotificationPolicy = schema.new({
            id = id.from(_N, "UpdateNFSFileShareInput", "NotificationPolicy"),
            type = "string",
            name = "NotificationPolicy",
            target_id = prelude.String.id,
        }),
        AuditDestinationARN = schema.new({
            id = id.from(_N, "UpdateNFSFileShareInput", "AuditDestinationARN"),
            type = "string",
            name = "AuditDestinationARN",
            target_id = prelude.String.id,
        }),
    },
})

M.UpdateNFSFileShareOutput = schema.new({
    id = id.from(_N, "UpdateNFSFileShareOutput"),
    type = "structure",
    members = {
        FileShareARN = schema.new({
            id = id.from(_N, "UpdateNFSFileShareOutput", "FileShareARN"),
            type = "string",
            name = "FileShareARN",
            target_id = prelude.String.id,
        }),
    },
})

M.UpdateSMBFileShareInput = schema.new({
    id = id.from(_N, "UpdateSMBFileShareInput"),
    type = "structure",
    members = {
        FileShareARN = schema.new({
            id = id.from(_N, "UpdateSMBFileShareInput", "FileShareARN"),
            type = "string",
            name = "FileShareARN",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        EncryptionType = schema.new({
            id = id.from(_N, "UpdateSMBFileShareInput", "EncryptionType"),
            type = "string",
            name = "EncryptionType",
            target_id = prelude.String.id,
        }),
        KMSEncrypted = schema.new({
            id = id.from(_N, "UpdateSMBFileShareInput", "KMSEncrypted"),
            type = "boolean",
            name = "KMSEncrypted",
            target_id = prelude.Boolean.id,
        }),
        KMSKey = schema.new({
            id = id.from(_N, "UpdateSMBFileShareInput", "KMSKey"),
            type = "string",
            name = "KMSKey",
            target_id = prelude.String.id,
        }),
        DefaultStorageClass = schema.new({
            id = id.from(_N, "UpdateSMBFileShareInput", "DefaultStorageClass"),
            type = "string",
            name = "DefaultStorageClass",
            target_id = prelude.String.id,
        }),
        ObjectACL = schema.new({
            id = id.from(_N, "UpdateSMBFileShareInput", "ObjectACL"),
            type = "string",
            name = "ObjectACL",
            target_id = prelude.String.id,
        }),
        ReadOnly = schema.new({
            id = id.from(_N, "UpdateSMBFileShareInput", "ReadOnly"),
            type = "boolean",
            name = "ReadOnly",
            target_id = prelude.Boolean.id,
        }),
        GuessMIMETypeEnabled = schema.new({
            id = id.from(_N, "UpdateSMBFileShareInput", "GuessMIMETypeEnabled"),
            type = "boolean",
            name = "GuessMIMETypeEnabled",
            target_id = prelude.Boolean.id,
        }),
        RequesterPays = schema.new({
            id = id.from(_N, "UpdateSMBFileShareInput", "RequesterPays"),
            type = "boolean",
            name = "RequesterPays",
            target_id = prelude.Boolean.id,
        }),
        SMBACLEnabled = schema.new({
            id = id.from(_N, "UpdateSMBFileShareInput", "SMBACLEnabled"),
            type = "boolean",
            name = "SMBACLEnabled",
            target_id = prelude.Boolean.id,
        }),
        AccessBasedEnumeration = schema.new({
            id = id.from(_N, "UpdateSMBFileShareInput", "AccessBasedEnumeration"),
            type = "boolean",
            name = "AccessBasedEnumeration",
            target_id = prelude.Boolean.id,
        }),
        AdminUserList = schema.new({
            id = id.from(_N, "UpdateSMBFileShareInput", "AdminUserList"),
            type = "list",
            name = "AdminUserList",
            target_id = prelude.Document.id,
            list_member = prelude.String,
        }),
        ValidUserList = schema.new({
            id = id.from(_N, "UpdateSMBFileShareInput", "ValidUserList"),
            type = "list",
            name = "ValidUserList",
            target_id = prelude.Document.id,
            list_member = prelude.String,
        }),
        InvalidUserList = schema.new({
            id = id.from(_N, "UpdateSMBFileShareInput", "InvalidUserList"),
            type = "list",
            name = "InvalidUserList",
            target_id = prelude.Document.id,
            list_member = prelude.String,
        }),
        AuditDestinationARN = schema.new({
            id = id.from(_N, "UpdateSMBFileShareInput", "AuditDestinationARN"),
            type = "string",
            name = "AuditDestinationARN",
            target_id = prelude.String.id,
        }),
        CaseSensitivity = schema.new({
            id = id.from(_N, "UpdateSMBFileShareInput", "CaseSensitivity"),
            type = "string",
            name = "CaseSensitivity",
            target_id = prelude.String.id,
        }),
        FileShareName = schema.new({
            id = id.from(_N, "UpdateSMBFileShareInput", "FileShareName"),
            type = "string",
            name = "FileShareName",
            target_id = prelude.String.id,
        }),
        CacheAttributes = schema.new({
            id = id.from(_N, "UpdateSMBFileShareInput", "CacheAttributes"),
            type = "structure",
            name = "CacheAttributes",
            target_id = id.from(_N, "CacheAttributes"),
            target = M.CacheAttributes,
        }),
        NotificationPolicy = schema.new({
            id = id.from(_N, "UpdateSMBFileShareInput", "NotificationPolicy"),
            type = "string",
            name = "NotificationPolicy",
            target_id = prelude.String.id,
        }),
        OplocksEnabled = schema.new({
            id = id.from(_N, "UpdateSMBFileShareInput", "OplocksEnabled"),
            type = "boolean",
            name = "OplocksEnabled",
            target_id = prelude.Boolean.id,
        }),
    },
})

M.UpdateSMBFileShareOutput = schema.new({
    id = id.from(_N, "UpdateSMBFileShareOutput"),
    type = "structure",
    members = {
        FileShareARN = schema.new({
            id = id.from(_N, "UpdateSMBFileShareOutput", "FileShareARN"),
            type = "string",
            name = "FileShareARN",
            target_id = prelude.String.id,
        }),
    },
})

M.UpdateSMBFileShareVisibilityInput = schema.new({
    id = id.from(_N, "UpdateSMBFileShareVisibilityInput"),
    type = "structure",
    members = {
        GatewayARN = schema.new({
            id = id.from(_N, "UpdateSMBFileShareVisibilityInput", "GatewayARN"),
            type = "string",
            name = "GatewayARN",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        FileSharesVisible = schema.new({
            id = id.from(_N, "UpdateSMBFileShareVisibilityInput", "FileSharesVisible"),
            type = "boolean",
            name = "FileSharesVisible",
            target_id = prelude.Boolean.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.UpdateSMBFileShareVisibilityOutput = schema.new({
    id = id.from(_N, "UpdateSMBFileShareVisibilityOutput"),
    type = "structure",
    members = {
        GatewayARN = schema.new({
            id = id.from(_N, "UpdateSMBFileShareVisibilityOutput", "GatewayARN"),
            type = "string",
            name = "GatewayARN",
            target_id = prelude.String.id,
        }),
    },
})

M.UpdateSMBLocalGroupsInput = schema.new({
    id = id.from(_N, "UpdateSMBLocalGroupsInput"),
    type = "structure",
    members = {
        GatewayARN = schema.new({
            id = id.from(_N, "UpdateSMBLocalGroupsInput", "GatewayARN"),
            type = "string",
            name = "GatewayARN",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        SMBLocalGroups = schema.new({
            id = id.from(_N, "UpdateSMBLocalGroupsInput", "SMBLocalGroups"),
            type = "structure",
            name = "SMBLocalGroups",
            target_id = id.from(_N, "SMBLocalGroups"),
            target = M.SMBLocalGroups,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.UpdateSMBLocalGroupsOutput = schema.new({
    id = id.from(_N, "UpdateSMBLocalGroupsOutput"),
    type = "structure",
    members = {
        GatewayARN = schema.new({
            id = id.from(_N, "UpdateSMBLocalGroupsOutput", "GatewayARN"),
            type = "string",
            name = "GatewayARN",
            target_id = prelude.String.id,
        }),
    },
})

M.UpdateSMBSecurityStrategyInput = schema.new({
    id = id.from(_N, "UpdateSMBSecurityStrategyInput"),
    type = "structure",
    members = {
        GatewayARN = schema.new({
            id = id.from(_N, "UpdateSMBSecurityStrategyInput", "GatewayARN"),
            type = "string",
            name = "GatewayARN",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        SMBSecurityStrategy = schema.new({
            id = id.from(_N, "UpdateSMBSecurityStrategyInput", "SMBSecurityStrategy"),
            type = "string",
            name = "SMBSecurityStrategy",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.UpdateSMBSecurityStrategyOutput = schema.new({
    id = id.from(_N, "UpdateSMBSecurityStrategyOutput"),
    type = "structure",
    members = {
        GatewayARN = schema.new({
            id = id.from(_N, "UpdateSMBSecurityStrategyOutput", "GatewayARN"),
            type = "string",
            name = "GatewayARN",
            target_id = prelude.String.id,
        }),
    },
})

M.UpdateSnapshotScheduleInput = schema.new({
    id = id.from(_N, "UpdateSnapshotScheduleInput"),
    type = "structure",
    members = {
        VolumeARN = schema.new({
            id = id.from(_N, "UpdateSnapshotScheduleInput", "VolumeARN"),
            type = "string",
            name = "VolumeARN",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        StartAt = schema.new({
            id = id.from(_N, "UpdateSnapshotScheduleInput", "StartAt"),
            type = "integer",
            name = "StartAt",
            target_id = prelude.Integer.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        RecurrenceInHours = schema.new({
            id = id.from(_N, "UpdateSnapshotScheduleInput", "RecurrenceInHours"),
            type = "integer",
            name = "RecurrenceInHours",
            target_id = prelude.Integer.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        Description = schema.new({
            id = id.from(_N, "UpdateSnapshotScheduleInput", "Description"),
            type = "string",
            name = "Description",
            target_id = prelude.String.id,
        }),
        Tags = schema.new({
            id = id.from(_N, "UpdateSnapshotScheduleInput", "Tags"),
            type = "list",
            name = "Tags",
            target_id = prelude.Document.id,
            list_member = M.Tag,
        }),
    },
})

M.UpdateSnapshotScheduleOutput = schema.new({
    id = id.from(_N, "UpdateSnapshotScheduleOutput"),
    type = "structure",
    members = {
        VolumeARN = schema.new({
            id = id.from(_N, "UpdateSnapshotScheduleOutput", "VolumeARN"),
            type = "string",
            name = "VolumeARN",
            target_id = prelude.String.id,
        }),
    },
})

M.UpdateVTLDeviceTypeInput = schema.new({
    id = id.from(_N, "UpdateVTLDeviceTypeInput"),
    type = "structure",
    members = {
        VTLDeviceARN = schema.new({
            id = id.from(_N, "UpdateVTLDeviceTypeInput", "VTLDeviceARN"),
            type = "string",
            name = "VTLDeviceARN",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        DeviceType = schema.new({
            id = id.from(_N, "UpdateVTLDeviceTypeInput", "DeviceType"),
            type = "string",
            name = "DeviceType",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.UpdateVTLDeviceTypeOutput = schema.new({
    id = id.from(_N, "UpdateVTLDeviceTypeOutput"),
    type = "structure",
    members = {
        VTLDeviceARN = schema.new({
            id = id.from(_N, "UpdateVTLDeviceTypeOutput", "VTLDeviceARN"),
            type = "string",
            name = "VTLDeviceARN",
            target_id = prelude.String.id,
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
