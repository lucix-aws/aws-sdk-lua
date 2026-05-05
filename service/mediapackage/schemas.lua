local id = require("smithy.shape_id")
local schema = require("smithy.schema")
local prelude = require("smithy.prelude")
local traits = require("smithy.traits")

local _N = "com.amazonaws.mediapackage"

local M = {}

M.Tags = schema.new({ type = "map", map_key = prelude.String, map_value = prelude.String })

M.__listOf__string = schema.new({ type = "list", list_member = prelude.String })

M.__listOfChannel = schema.new({ type = "list", list_member = M.Channel })

M.__listOfHarvestJob = schema.new({ type = "list", list_member = M.HarvestJob })

M.__listOfOriginEndpoint = schema.new({ type = "list", list_member = M.OriginEndpoint })

M.__mapOf__string = schema.new({ type = "map", map_key = prelude.String, map_value = prelude.String })

M.__listOfIngestEndpoint = schema.new({ type = "list", list_member = M.IngestEndpoint })

M.__listOfHlsManifestCreateOrUpdateParameters = schema.new({ type = "list", list_member = M.HlsManifestCreateOrUpdateParameters })

M.AdTriggers = schema.new({ type = "list", list_member = prelude.String })

M.__listOf__PeriodTriggersElement = schema.new({ type = "list", list_member = prelude.String })

M.__listOfHlsManifest = schema.new({ type = "list", list_member = M.HlsManifest })

M.EgressAccessLogs = schema.new({
    id = id.from(_N, "EgressAccessLogs"),
    type = "structure",
    members = {
        LogGroupName = schema.new({
            id = id.from(_N, "EgressAccessLogs", "LogGroupName"),
            type = "string",
            name = "LogGroupName",
            target_id = prelude.String.id,
            traits = {
                [traits.JSON_NAME] = { name = "logGroupName" },
            },
        }),
    },
})

M.IngestEndpoint = schema.new({
    id = id.from(_N, "IngestEndpoint"),
    type = "structure",
    members = {
        Id = schema.new({
            id = id.from(_N, "IngestEndpoint", "Id"),
            type = "string",
            name = "Id",
            target_id = prelude.String.id,
            traits = {
                [traits.JSON_NAME] = { name = "id" },
            },
        }),
        Password = schema.new({
            id = id.from(_N, "IngestEndpoint", "Password"),
            type = "string",
            name = "Password",
            target_id = prelude.String.id,
            traits = {
                [traits.JSON_NAME] = { name = "password" },
            },
        }),
        Url = schema.new({
            id = id.from(_N, "IngestEndpoint", "Url"),
            type = "string",
            name = "Url",
            target_id = prelude.String.id,
            traits = {
                [traits.JSON_NAME] = { name = "url" },
            },
        }),
        Username = schema.new({
            id = id.from(_N, "IngestEndpoint", "Username"),
            type = "string",
            name = "Username",
            target_id = prelude.String.id,
            traits = {
                [traits.JSON_NAME] = { name = "username" },
            },
        }),
    },
})

M.HlsIngest = schema.new({
    id = id.from(_N, "HlsIngest"),
    type = "structure",
    members = {
        IngestEndpoints = schema.new({
            id = id.from(_N, "HlsIngest", "IngestEndpoints"),
            type = "list",
            name = "IngestEndpoints",
            target_id = prelude.Document.id,
            list_member = M.IngestEndpoint,
            traits = {
                [traits.JSON_NAME] = { name = "ingestEndpoints" },
            },
        }),
    },
})

M.IngressAccessLogs = schema.new({
    id = id.from(_N, "IngressAccessLogs"),
    type = "structure",
    members = {
        LogGroupName = schema.new({
            id = id.from(_N, "IngressAccessLogs", "LogGroupName"),
            type = "string",
            name = "LogGroupName",
            target_id = prelude.String.id,
            traits = {
                [traits.JSON_NAME] = { name = "logGroupName" },
            },
        }),
    },
})

M.Channel = schema.new({
    id = id.from(_N, "Channel"),
    type = "structure",
    members = {
        Arn = schema.new({
            id = id.from(_N, "Channel", "Arn"),
            type = "string",
            name = "Arn",
            target_id = prelude.String.id,
            traits = {
                [traits.JSON_NAME] = { name = "arn" },
            },
        }),
        CreatedAt = schema.new({
            id = id.from(_N, "Channel", "CreatedAt"),
            type = "string",
            name = "CreatedAt",
            target_id = prelude.String.id,
            traits = {
                [traits.JSON_NAME] = { name = "createdAt" },
            },
        }),
        Description = schema.new({
            id = id.from(_N, "Channel", "Description"),
            type = "string",
            name = "Description",
            target_id = prelude.String.id,
            traits = {
                [traits.JSON_NAME] = { name = "description" },
            },
        }),
        EgressAccessLogs = schema.new({
            id = id.from(_N, "Channel", "EgressAccessLogs"),
            type = "structure",
            name = "EgressAccessLogs",
            target_id = id.from(_N, "EgressAccessLogs"),
            target = M.EgressAccessLogs,
            traits = {
                [traits.JSON_NAME] = { name = "egressAccessLogs" },
            },
        }),
        HlsIngest = schema.new({
            id = id.from(_N, "Channel", "HlsIngest"),
            type = "structure",
            name = "HlsIngest",
            target_id = id.from(_N, "HlsIngest"),
            target = M.HlsIngest,
            traits = {
                [traits.JSON_NAME] = { name = "hlsIngest" },
            },
        }),
        Id = schema.new({
            id = id.from(_N, "Channel", "Id"),
            type = "string",
            name = "Id",
            target_id = prelude.String.id,
            traits = {
                [traits.JSON_NAME] = { name = "id" },
            },
        }),
        IngressAccessLogs = schema.new({
            id = id.from(_N, "Channel", "IngressAccessLogs"),
            type = "structure",
            name = "IngressAccessLogs",
            target_id = id.from(_N, "IngressAccessLogs"),
            target = M.IngressAccessLogs,
            traits = {
                [traits.JSON_NAME] = { name = "ingressAccessLogs" },
            },
        }),
        Tags = schema.new({
            id = id.from(_N, "Channel", "Tags"),
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

M.S3Destination = schema.new({
    id = id.from(_N, "S3Destination"),
    type = "structure",
    members = {
        BucketName = schema.new({
            id = id.from(_N, "S3Destination", "BucketName"),
            type = "string",
            name = "BucketName",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.JSON_NAME] = { name = "bucketName" },
            },
        }),
        ManifestKey = schema.new({
            id = id.from(_N, "S3Destination", "ManifestKey"),
            type = "string",
            name = "ManifestKey",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.JSON_NAME] = { name = "manifestKey" },
            },
        }),
        RoleArn = schema.new({
            id = id.from(_N, "S3Destination", "RoleArn"),
            type = "string",
            name = "RoleArn",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.JSON_NAME] = { name = "roleArn" },
            },
        }),
    },
})

M.HarvestJob = schema.new({
    id = id.from(_N, "HarvestJob"),
    type = "structure",
    members = {
        Arn = schema.new({
            id = id.from(_N, "HarvestJob", "Arn"),
            type = "string",
            name = "Arn",
            target_id = prelude.String.id,
            traits = {
                [traits.JSON_NAME] = { name = "arn" },
            },
        }),
        ChannelId = schema.new({
            id = id.from(_N, "HarvestJob", "ChannelId"),
            type = "string",
            name = "ChannelId",
            target_id = prelude.String.id,
            traits = {
                [traits.JSON_NAME] = { name = "channelId" },
            },
        }),
        CreatedAt = schema.new({
            id = id.from(_N, "HarvestJob", "CreatedAt"),
            type = "string",
            name = "CreatedAt",
            target_id = prelude.String.id,
            traits = {
                [traits.JSON_NAME] = { name = "createdAt" },
            },
        }),
        EndTime = schema.new({
            id = id.from(_N, "HarvestJob", "EndTime"),
            type = "string",
            name = "EndTime",
            target_id = prelude.String.id,
            traits = {
                [traits.JSON_NAME] = { name = "endTime" },
            },
        }),
        Id = schema.new({
            id = id.from(_N, "HarvestJob", "Id"),
            type = "string",
            name = "Id",
            target_id = prelude.String.id,
            traits = {
                [traits.JSON_NAME] = { name = "id" },
            },
        }),
        OriginEndpointId = schema.new({
            id = id.from(_N, "HarvestJob", "OriginEndpointId"),
            type = "string",
            name = "OriginEndpointId",
            target_id = prelude.String.id,
            traits = {
                [traits.JSON_NAME] = { name = "originEndpointId" },
            },
        }),
        S3Destination = schema.new({
            id = id.from(_N, "HarvestJob", "S3Destination"),
            type = "structure",
            name = "S3Destination",
            target_id = id.from(_N, "S3Destination"),
            target = M.S3Destination,
            traits = {
                [traits.JSON_NAME] = { name = "s3Destination" },
            },
        }),
        StartTime = schema.new({
            id = id.from(_N, "HarvestJob", "StartTime"),
            type = "string",
            name = "StartTime",
            target_id = prelude.String.id,
            traits = {
                [traits.JSON_NAME] = { name = "startTime" },
            },
        }),
        Status = schema.new({
            id = id.from(_N, "HarvestJob", "Status"),
            type = "string",
            name = "Status",
            target_id = prelude.String.id,
            traits = {
                [traits.JSON_NAME] = { name = "status" },
            },
        }),
    },
})

M.HlsManifest = schema.new({
    id = id.from(_N, "HlsManifest"),
    type = "structure",
    members = {
        AdMarkers = schema.new({
            id = id.from(_N, "HlsManifest", "AdMarkers"),
            type = "string",
            name = "AdMarkers",
            target_id = prelude.String.id,
            traits = {
                [traits.JSON_NAME] = { name = "adMarkers" },
            },
        }),
        Id = schema.new({
            id = id.from(_N, "HlsManifest", "Id"),
            type = "string",
            name = "Id",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.JSON_NAME] = { name = "id" },
            },
        }),
        IncludeIframeOnlyStream = schema.new({
            id = id.from(_N, "HlsManifest", "IncludeIframeOnlyStream"),
            type = "boolean",
            name = "IncludeIframeOnlyStream",
            target_id = prelude.Boolean.id,
            traits = {
                [traits.JSON_NAME] = { name = "includeIframeOnlyStream" },
            },
        }),
        ManifestName = schema.new({
            id = id.from(_N, "HlsManifest", "ManifestName"),
            type = "string",
            name = "ManifestName",
            target_id = prelude.String.id,
            traits = {
                [traits.JSON_NAME] = { name = "manifestName" },
            },
        }),
        PlaylistType = schema.new({
            id = id.from(_N, "HlsManifest", "PlaylistType"),
            type = "string",
            name = "PlaylistType",
            target_id = prelude.String.id,
            traits = {
                [traits.JSON_NAME] = { name = "playlistType" },
            },
        }),
        PlaylistWindowSeconds = schema.new({
            id = id.from(_N, "HlsManifest", "PlaylistWindowSeconds"),
            type = "integer",
            name = "PlaylistWindowSeconds",
            target_id = prelude.Integer.id,
            traits = {
                [traits.JSON_NAME] = { name = "playlistWindowSeconds" },
            },
        }),
        ProgramDateTimeIntervalSeconds = schema.new({
            id = id.from(_N, "HlsManifest", "ProgramDateTimeIntervalSeconds"),
            type = "integer",
            name = "ProgramDateTimeIntervalSeconds",
            target_id = prelude.Integer.id,
            traits = {
                [traits.JSON_NAME] = { name = "programDateTimeIntervalSeconds" },
            },
        }),
        Url = schema.new({
            id = id.from(_N, "HlsManifest", "Url"),
            type = "string",
            name = "Url",
            target_id = prelude.String.id,
            traits = {
                [traits.JSON_NAME] = { name = "url" },
            },
        }),
        AdTriggers = schema.new({
            id = id.from(_N, "HlsManifest", "AdTriggers"),
            type = "list",
            name = "AdTriggers",
            target_id = prelude.Document.id,
            list_member = prelude.String,
            traits = {
                [traits.JSON_NAME] = { name = "adTriggers" },
            },
        }),
        AdsOnDeliveryRestrictions = schema.new({
            id = id.from(_N, "HlsManifest", "AdsOnDeliveryRestrictions"),
            type = "string",
            name = "AdsOnDeliveryRestrictions",
            target_id = prelude.String.id,
            traits = {
                [traits.JSON_NAME] = { name = "adsOnDeliveryRestrictions" },
            },
        }),
    },
})

M.HlsManifestCreateOrUpdateParameters = schema.new({
    id = id.from(_N, "HlsManifestCreateOrUpdateParameters"),
    type = "structure",
    members = {
        AdMarkers = schema.new({
            id = id.from(_N, "HlsManifestCreateOrUpdateParameters", "AdMarkers"),
            type = "string",
            name = "AdMarkers",
            target_id = prelude.String.id,
            traits = {
                [traits.JSON_NAME] = { name = "adMarkers" },
            },
        }),
        AdTriggers = schema.new({
            id = id.from(_N, "HlsManifestCreateOrUpdateParameters", "AdTriggers"),
            type = "list",
            name = "AdTriggers",
            target_id = prelude.Document.id,
            list_member = prelude.String,
            traits = {
                [traits.JSON_NAME] = { name = "adTriggers" },
            },
        }),
        AdsOnDeliveryRestrictions = schema.new({
            id = id.from(_N, "HlsManifestCreateOrUpdateParameters", "AdsOnDeliveryRestrictions"),
            type = "string",
            name = "AdsOnDeliveryRestrictions",
            target_id = prelude.String.id,
            traits = {
                [traits.JSON_NAME] = { name = "adsOnDeliveryRestrictions" },
            },
        }),
        Id = schema.new({
            id = id.from(_N, "HlsManifestCreateOrUpdateParameters", "Id"),
            type = "string",
            name = "Id",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.JSON_NAME] = { name = "id" },
            },
        }),
        IncludeIframeOnlyStream = schema.new({
            id = id.from(_N, "HlsManifestCreateOrUpdateParameters", "IncludeIframeOnlyStream"),
            type = "boolean",
            name = "IncludeIframeOnlyStream",
            target_id = prelude.Boolean.id,
            traits = {
                [traits.JSON_NAME] = { name = "includeIframeOnlyStream" },
            },
        }),
        ManifestName = schema.new({
            id = id.from(_N, "HlsManifestCreateOrUpdateParameters", "ManifestName"),
            type = "string",
            name = "ManifestName",
            target_id = prelude.String.id,
            traits = {
                [traits.JSON_NAME] = { name = "manifestName" },
            },
        }),
        PlaylistType = schema.new({
            id = id.from(_N, "HlsManifestCreateOrUpdateParameters", "PlaylistType"),
            type = "string",
            name = "PlaylistType",
            target_id = prelude.String.id,
            traits = {
                [traits.JSON_NAME] = { name = "playlistType" },
            },
        }),
        PlaylistWindowSeconds = schema.new({
            id = id.from(_N, "HlsManifestCreateOrUpdateParameters", "PlaylistWindowSeconds"),
            type = "integer",
            name = "PlaylistWindowSeconds",
            target_id = prelude.Integer.id,
            traits = {
                [traits.JSON_NAME] = { name = "playlistWindowSeconds" },
            },
        }),
        ProgramDateTimeIntervalSeconds = schema.new({
            id = id.from(_N, "HlsManifestCreateOrUpdateParameters", "ProgramDateTimeIntervalSeconds"),
            type = "integer",
            name = "ProgramDateTimeIntervalSeconds",
            target_id = prelude.Integer.id,
            traits = {
                [traits.JSON_NAME] = { name = "programDateTimeIntervalSeconds" },
            },
        }),
    },
})

M.Authorization = schema.new({
    id = id.from(_N, "Authorization"),
    type = "structure",
    members = {
        CdnIdentifierSecret = schema.new({
            id = id.from(_N, "Authorization", "CdnIdentifierSecret"),
            type = "string",
            name = "CdnIdentifierSecret",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.JSON_NAME] = { name = "cdnIdentifierSecret" },
            },
        }),
        SecretsRoleArn = schema.new({
            id = id.from(_N, "Authorization", "SecretsRoleArn"),
            type = "string",
            name = "SecretsRoleArn",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.JSON_NAME] = { name = "secretsRoleArn" },
            },
        }),
    },
})

M.EncryptionContractConfiguration = schema.new({
    id = id.from(_N, "EncryptionContractConfiguration"),
    type = "structure",
    members = {
        PresetSpeke20Audio = schema.new({
            id = id.from(_N, "EncryptionContractConfiguration", "PresetSpeke20Audio"),
            type = "string",
            name = "PresetSpeke20Audio",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.JSON_NAME] = { name = "presetSpeke20Audio" },
            },
        }),
        PresetSpeke20Video = schema.new({
            id = id.from(_N, "EncryptionContractConfiguration", "PresetSpeke20Video"),
            type = "string",
            name = "PresetSpeke20Video",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.JSON_NAME] = { name = "presetSpeke20Video" },
            },
        }),
    },
})

M.SpekeKeyProvider = schema.new({
    id = id.from(_N, "SpekeKeyProvider"),
    type = "structure",
    members = {
        CertificateArn = schema.new({
            id = id.from(_N, "SpekeKeyProvider", "CertificateArn"),
            type = "string",
            name = "CertificateArn",
            target_id = prelude.String.id,
            traits = {
                [traits.JSON_NAME] = { name = "certificateArn" },
            },
        }),
        EncryptionContractConfiguration = schema.new({
            id = id.from(_N, "SpekeKeyProvider", "EncryptionContractConfiguration"),
            type = "structure",
            name = "EncryptionContractConfiguration",
            target_id = id.from(_N, "EncryptionContractConfiguration"),
            target = M.EncryptionContractConfiguration,
            traits = {
                [traits.JSON_NAME] = { name = "encryptionContractConfiguration" },
            },
        }),
        ResourceId = schema.new({
            id = id.from(_N, "SpekeKeyProvider", "ResourceId"),
            type = "string",
            name = "ResourceId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.JSON_NAME] = { name = "resourceId" },
            },
        }),
        RoleArn = schema.new({
            id = id.from(_N, "SpekeKeyProvider", "RoleArn"),
            type = "string",
            name = "RoleArn",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.JSON_NAME] = { name = "roleArn" },
            },
        }),
        SystemIds = schema.new({
            id = id.from(_N, "SpekeKeyProvider", "SystemIds"),
            type = "list",
            name = "SystemIds",
            target_id = prelude.Document.id,
            list_member = prelude.String,
            traits = {
                [traits.REQUIRED] = {},
                [traits.JSON_NAME] = { name = "systemIds" },
            },
        }),
        Url = schema.new({
            id = id.from(_N, "SpekeKeyProvider", "Url"),
            type = "string",
            name = "Url",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.JSON_NAME] = { name = "url" },
            },
        }),
    },
})

M.CmafEncryption = schema.new({
    id = id.from(_N, "CmafEncryption"),
    type = "structure",
    members = {
        ConstantInitializationVector = schema.new({
            id = id.from(_N, "CmafEncryption", "ConstantInitializationVector"),
            type = "string",
            name = "ConstantInitializationVector",
            target_id = prelude.String.id,
            traits = {
                [traits.JSON_NAME] = { name = "constantInitializationVector" },
            },
        }),
        EncryptionMethod = schema.new({
            id = id.from(_N, "CmafEncryption", "EncryptionMethod"),
            type = "string",
            name = "EncryptionMethod",
            target_id = prelude.String.id,
            traits = {
                [traits.JSON_NAME] = { name = "encryptionMethod" },
            },
        }),
        KeyRotationIntervalSeconds = schema.new({
            id = id.from(_N, "CmafEncryption", "KeyRotationIntervalSeconds"),
            type = "integer",
            name = "KeyRotationIntervalSeconds",
            target_id = prelude.Integer.id,
            traits = {
                [traits.JSON_NAME] = { name = "keyRotationIntervalSeconds" },
            },
        }),
        SpekeKeyProvider = schema.new({
            id = id.from(_N, "CmafEncryption", "SpekeKeyProvider"),
            type = "structure",
            name = "SpekeKeyProvider",
            target_id = id.from(_N, "SpekeKeyProvider"),
            target = M.SpekeKeyProvider,
            traits = {
                [traits.REQUIRED] = {},
                [traits.JSON_NAME] = { name = "spekeKeyProvider" },
            },
        }),
    },
})

M.StreamSelection = schema.new({
    id = id.from(_N, "StreamSelection"),
    type = "structure",
    members = {
        MaxVideoBitsPerSecond = schema.new({
            id = id.from(_N, "StreamSelection", "MaxVideoBitsPerSecond"),
            type = "integer",
            name = "MaxVideoBitsPerSecond",
            target_id = prelude.Integer.id,
            traits = {
                [traits.JSON_NAME] = { name = "maxVideoBitsPerSecond" },
            },
        }),
        MinVideoBitsPerSecond = schema.new({
            id = id.from(_N, "StreamSelection", "MinVideoBitsPerSecond"),
            type = "integer",
            name = "MinVideoBitsPerSecond",
            target_id = prelude.Integer.id,
            traits = {
                [traits.JSON_NAME] = { name = "minVideoBitsPerSecond" },
            },
        }),
        StreamOrder = schema.new({
            id = id.from(_N, "StreamSelection", "StreamOrder"),
            type = "string",
            name = "StreamOrder",
            target_id = prelude.String.id,
            traits = {
                [traits.JSON_NAME] = { name = "streamOrder" },
            },
        }),
    },
})

M.CmafPackage = schema.new({
    id = id.from(_N, "CmafPackage"),
    type = "structure",
    members = {
        Encryption = schema.new({
            id = id.from(_N, "CmafPackage", "Encryption"),
            type = "structure",
            name = "Encryption",
            target_id = id.from(_N, "CmafEncryption"),
            target = M.CmafEncryption,
            traits = {
                [traits.JSON_NAME] = { name = "encryption" },
            },
        }),
        HlsManifests = schema.new({
            id = id.from(_N, "CmafPackage", "HlsManifests"),
            type = "list",
            name = "HlsManifests",
            target_id = prelude.Document.id,
            list_member = M.HlsManifest,
            traits = {
                [traits.JSON_NAME] = { name = "hlsManifests" },
            },
        }),
        SegmentDurationSeconds = schema.new({
            id = id.from(_N, "CmafPackage", "SegmentDurationSeconds"),
            type = "integer",
            name = "SegmentDurationSeconds",
            target_id = prelude.Integer.id,
            traits = {
                [traits.JSON_NAME] = { name = "segmentDurationSeconds" },
            },
        }),
        SegmentPrefix = schema.new({
            id = id.from(_N, "CmafPackage", "SegmentPrefix"),
            type = "string",
            name = "SegmentPrefix",
            target_id = prelude.String.id,
            traits = {
                [traits.JSON_NAME] = { name = "segmentPrefix" },
            },
        }),
        StreamSelection = schema.new({
            id = id.from(_N, "CmafPackage", "StreamSelection"),
            type = "structure",
            name = "StreamSelection",
            target_id = id.from(_N, "StreamSelection"),
            target = M.StreamSelection,
            traits = {
                [traits.JSON_NAME] = { name = "streamSelection" },
            },
        }),
    },
})

M.DashEncryption = schema.new({
    id = id.from(_N, "DashEncryption"),
    type = "structure",
    members = {
        KeyRotationIntervalSeconds = schema.new({
            id = id.from(_N, "DashEncryption", "KeyRotationIntervalSeconds"),
            type = "integer",
            name = "KeyRotationIntervalSeconds",
            target_id = prelude.Integer.id,
            traits = {
                [traits.JSON_NAME] = { name = "keyRotationIntervalSeconds" },
            },
        }),
        SpekeKeyProvider = schema.new({
            id = id.from(_N, "DashEncryption", "SpekeKeyProvider"),
            type = "structure",
            name = "SpekeKeyProvider",
            target_id = id.from(_N, "SpekeKeyProvider"),
            target = M.SpekeKeyProvider,
            traits = {
                [traits.REQUIRED] = {},
                [traits.JSON_NAME] = { name = "spekeKeyProvider" },
            },
        }),
    },
})

M.DashPackage = schema.new({
    id = id.from(_N, "DashPackage"),
    type = "structure",
    members = {
        AdTriggers = schema.new({
            id = id.from(_N, "DashPackage", "AdTriggers"),
            type = "list",
            name = "AdTriggers",
            target_id = prelude.Document.id,
            list_member = prelude.String,
            traits = {
                [traits.JSON_NAME] = { name = "adTriggers" },
            },
        }),
        AdsOnDeliveryRestrictions = schema.new({
            id = id.from(_N, "DashPackage", "AdsOnDeliveryRestrictions"),
            type = "string",
            name = "AdsOnDeliveryRestrictions",
            target_id = prelude.String.id,
            traits = {
                [traits.JSON_NAME] = { name = "adsOnDeliveryRestrictions" },
            },
        }),
        Encryption = schema.new({
            id = id.from(_N, "DashPackage", "Encryption"),
            type = "structure",
            name = "Encryption",
            target_id = id.from(_N, "DashEncryption"),
            target = M.DashEncryption,
            traits = {
                [traits.JSON_NAME] = { name = "encryption" },
            },
        }),
        IncludeIframeOnlyStream = schema.new({
            id = id.from(_N, "DashPackage", "IncludeIframeOnlyStream"),
            type = "boolean",
            name = "IncludeIframeOnlyStream",
            target_id = prelude.Boolean.id,
            traits = {
                [traits.JSON_NAME] = { name = "includeIframeOnlyStream" },
            },
        }),
        ManifestLayout = schema.new({
            id = id.from(_N, "DashPackage", "ManifestLayout"),
            type = "string",
            name = "ManifestLayout",
            target_id = prelude.String.id,
            traits = {
                [traits.JSON_NAME] = { name = "manifestLayout" },
            },
        }),
        ManifestWindowSeconds = schema.new({
            id = id.from(_N, "DashPackage", "ManifestWindowSeconds"),
            type = "integer",
            name = "ManifestWindowSeconds",
            target_id = prelude.Integer.id,
            traits = {
                [traits.JSON_NAME] = { name = "manifestWindowSeconds" },
            },
        }),
        MinBufferTimeSeconds = schema.new({
            id = id.from(_N, "DashPackage", "MinBufferTimeSeconds"),
            type = "integer",
            name = "MinBufferTimeSeconds",
            target_id = prelude.Integer.id,
            traits = {
                [traits.JSON_NAME] = { name = "minBufferTimeSeconds" },
            },
        }),
        MinUpdatePeriodSeconds = schema.new({
            id = id.from(_N, "DashPackage", "MinUpdatePeriodSeconds"),
            type = "integer",
            name = "MinUpdatePeriodSeconds",
            target_id = prelude.Integer.id,
            traits = {
                [traits.JSON_NAME] = { name = "minUpdatePeriodSeconds" },
            },
        }),
        PeriodTriggers = schema.new({
            id = id.from(_N, "DashPackage", "PeriodTriggers"),
            type = "list",
            name = "PeriodTriggers",
            target_id = prelude.Document.id,
            list_member = prelude.String,
            traits = {
                [traits.JSON_NAME] = { name = "periodTriggers" },
            },
        }),
        Profile = schema.new({
            id = id.from(_N, "DashPackage", "Profile"),
            type = "string",
            name = "Profile",
            target_id = prelude.String.id,
            traits = {
                [traits.JSON_NAME] = { name = "profile" },
            },
        }),
        SegmentDurationSeconds = schema.new({
            id = id.from(_N, "DashPackage", "SegmentDurationSeconds"),
            type = "integer",
            name = "SegmentDurationSeconds",
            target_id = prelude.Integer.id,
            traits = {
                [traits.JSON_NAME] = { name = "segmentDurationSeconds" },
            },
        }),
        SegmentTemplateFormat = schema.new({
            id = id.from(_N, "DashPackage", "SegmentTemplateFormat"),
            type = "string",
            name = "SegmentTemplateFormat",
            target_id = prelude.String.id,
            traits = {
                [traits.JSON_NAME] = { name = "segmentTemplateFormat" },
            },
        }),
        StreamSelection = schema.new({
            id = id.from(_N, "DashPackage", "StreamSelection"),
            type = "structure",
            name = "StreamSelection",
            target_id = id.from(_N, "StreamSelection"),
            target = M.StreamSelection,
            traits = {
                [traits.JSON_NAME] = { name = "streamSelection" },
            },
        }),
        SuggestedPresentationDelaySeconds = schema.new({
            id = id.from(_N, "DashPackage", "SuggestedPresentationDelaySeconds"),
            type = "integer",
            name = "SuggestedPresentationDelaySeconds",
            target_id = prelude.Integer.id,
            traits = {
                [traits.JSON_NAME] = { name = "suggestedPresentationDelaySeconds" },
            },
        }),
        UtcTiming = schema.new({
            id = id.from(_N, "DashPackage", "UtcTiming"),
            type = "string",
            name = "UtcTiming",
            target_id = prelude.String.id,
            traits = {
                [traits.JSON_NAME] = { name = "utcTiming" },
            },
        }),
        UtcTimingUri = schema.new({
            id = id.from(_N, "DashPackage", "UtcTimingUri"),
            type = "string",
            name = "UtcTimingUri",
            target_id = prelude.String.id,
            traits = {
                [traits.JSON_NAME] = { name = "utcTimingUri" },
            },
        }),
    },
})

M.HlsEncryption = schema.new({
    id = id.from(_N, "HlsEncryption"),
    type = "structure",
    members = {
        ConstantInitializationVector = schema.new({
            id = id.from(_N, "HlsEncryption", "ConstantInitializationVector"),
            type = "string",
            name = "ConstantInitializationVector",
            target_id = prelude.String.id,
            traits = {
                [traits.JSON_NAME] = { name = "constantInitializationVector" },
            },
        }),
        EncryptionMethod = schema.new({
            id = id.from(_N, "HlsEncryption", "EncryptionMethod"),
            type = "string",
            name = "EncryptionMethod",
            target_id = prelude.String.id,
            traits = {
                [traits.JSON_NAME] = { name = "encryptionMethod" },
            },
        }),
        KeyRotationIntervalSeconds = schema.new({
            id = id.from(_N, "HlsEncryption", "KeyRotationIntervalSeconds"),
            type = "integer",
            name = "KeyRotationIntervalSeconds",
            target_id = prelude.Integer.id,
            traits = {
                [traits.JSON_NAME] = { name = "keyRotationIntervalSeconds" },
            },
        }),
        RepeatExtXKey = schema.new({
            id = id.from(_N, "HlsEncryption", "RepeatExtXKey"),
            type = "boolean",
            name = "RepeatExtXKey",
            target_id = prelude.Boolean.id,
            traits = {
                [traits.JSON_NAME] = { name = "repeatExtXKey" },
            },
        }),
        SpekeKeyProvider = schema.new({
            id = id.from(_N, "HlsEncryption", "SpekeKeyProvider"),
            type = "structure",
            name = "SpekeKeyProvider",
            target_id = id.from(_N, "SpekeKeyProvider"),
            target = M.SpekeKeyProvider,
            traits = {
                [traits.REQUIRED] = {},
                [traits.JSON_NAME] = { name = "spekeKeyProvider" },
            },
        }),
    },
})

M.HlsPackage = schema.new({
    id = id.from(_N, "HlsPackage"),
    type = "structure",
    members = {
        AdMarkers = schema.new({
            id = id.from(_N, "HlsPackage", "AdMarkers"),
            type = "string",
            name = "AdMarkers",
            target_id = prelude.String.id,
            traits = {
                [traits.JSON_NAME] = { name = "adMarkers" },
            },
        }),
        AdTriggers = schema.new({
            id = id.from(_N, "HlsPackage", "AdTriggers"),
            type = "list",
            name = "AdTriggers",
            target_id = prelude.Document.id,
            list_member = prelude.String,
            traits = {
                [traits.JSON_NAME] = { name = "adTriggers" },
            },
        }),
        AdsOnDeliveryRestrictions = schema.new({
            id = id.from(_N, "HlsPackage", "AdsOnDeliveryRestrictions"),
            type = "string",
            name = "AdsOnDeliveryRestrictions",
            target_id = prelude.String.id,
            traits = {
                [traits.JSON_NAME] = { name = "adsOnDeliveryRestrictions" },
            },
        }),
        Encryption = schema.new({
            id = id.from(_N, "HlsPackage", "Encryption"),
            type = "structure",
            name = "Encryption",
            target_id = id.from(_N, "HlsEncryption"),
            target = M.HlsEncryption,
            traits = {
                [traits.JSON_NAME] = { name = "encryption" },
            },
        }),
        IncludeDvbSubtitles = schema.new({
            id = id.from(_N, "HlsPackage", "IncludeDvbSubtitles"),
            type = "boolean",
            name = "IncludeDvbSubtitles",
            target_id = prelude.Boolean.id,
            traits = {
                [traits.JSON_NAME] = { name = "includeDvbSubtitles" },
            },
        }),
        IncludeIframeOnlyStream = schema.new({
            id = id.from(_N, "HlsPackage", "IncludeIframeOnlyStream"),
            type = "boolean",
            name = "IncludeIframeOnlyStream",
            target_id = prelude.Boolean.id,
            traits = {
                [traits.JSON_NAME] = { name = "includeIframeOnlyStream" },
            },
        }),
        PlaylistType = schema.new({
            id = id.from(_N, "HlsPackage", "PlaylistType"),
            type = "string",
            name = "PlaylistType",
            target_id = prelude.String.id,
            traits = {
                [traits.JSON_NAME] = { name = "playlistType" },
            },
        }),
        PlaylistWindowSeconds = schema.new({
            id = id.from(_N, "HlsPackage", "PlaylistWindowSeconds"),
            type = "integer",
            name = "PlaylistWindowSeconds",
            target_id = prelude.Integer.id,
            traits = {
                [traits.JSON_NAME] = { name = "playlistWindowSeconds" },
            },
        }),
        ProgramDateTimeIntervalSeconds = schema.new({
            id = id.from(_N, "HlsPackage", "ProgramDateTimeIntervalSeconds"),
            type = "integer",
            name = "ProgramDateTimeIntervalSeconds",
            target_id = prelude.Integer.id,
            traits = {
                [traits.JSON_NAME] = { name = "programDateTimeIntervalSeconds" },
            },
        }),
        SegmentDurationSeconds = schema.new({
            id = id.from(_N, "HlsPackage", "SegmentDurationSeconds"),
            type = "integer",
            name = "SegmentDurationSeconds",
            target_id = prelude.Integer.id,
            traits = {
                [traits.JSON_NAME] = { name = "segmentDurationSeconds" },
            },
        }),
        StreamSelection = schema.new({
            id = id.from(_N, "HlsPackage", "StreamSelection"),
            type = "structure",
            name = "StreamSelection",
            target_id = id.from(_N, "StreamSelection"),
            target = M.StreamSelection,
            traits = {
                [traits.JSON_NAME] = { name = "streamSelection" },
            },
        }),
        UseAudioRenditionGroup = schema.new({
            id = id.from(_N, "HlsPackage", "UseAudioRenditionGroup"),
            type = "boolean",
            name = "UseAudioRenditionGroup",
            target_id = prelude.Boolean.id,
            traits = {
                [traits.JSON_NAME] = { name = "useAudioRenditionGroup" },
            },
        }),
    },
})

M.MssEncryption = schema.new({
    id = id.from(_N, "MssEncryption"),
    type = "structure",
    members = {
        SpekeKeyProvider = schema.new({
            id = id.from(_N, "MssEncryption", "SpekeKeyProvider"),
            type = "structure",
            name = "SpekeKeyProvider",
            target_id = id.from(_N, "SpekeKeyProvider"),
            target = M.SpekeKeyProvider,
            traits = {
                [traits.REQUIRED] = {},
                [traits.JSON_NAME] = { name = "spekeKeyProvider" },
            },
        }),
    },
})

M.MssPackage = schema.new({
    id = id.from(_N, "MssPackage"),
    type = "structure",
    members = {
        Encryption = schema.new({
            id = id.from(_N, "MssPackage", "Encryption"),
            type = "structure",
            name = "Encryption",
            target_id = id.from(_N, "MssEncryption"),
            target = M.MssEncryption,
            traits = {
                [traits.JSON_NAME] = { name = "encryption" },
            },
        }),
        ManifestWindowSeconds = schema.new({
            id = id.from(_N, "MssPackage", "ManifestWindowSeconds"),
            type = "integer",
            name = "ManifestWindowSeconds",
            target_id = prelude.Integer.id,
            traits = {
                [traits.JSON_NAME] = { name = "manifestWindowSeconds" },
            },
        }),
        SegmentDurationSeconds = schema.new({
            id = id.from(_N, "MssPackage", "SegmentDurationSeconds"),
            type = "integer",
            name = "SegmentDurationSeconds",
            target_id = prelude.Integer.id,
            traits = {
                [traits.JSON_NAME] = { name = "segmentDurationSeconds" },
            },
        }),
        StreamSelection = schema.new({
            id = id.from(_N, "MssPackage", "StreamSelection"),
            type = "structure",
            name = "StreamSelection",
            target_id = id.from(_N, "StreamSelection"),
            target = M.StreamSelection,
            traits = {
                [traits.JSON_NAME] = { name = "streamSelection" },
            },
        }),
    },
})

M.OriginEndpoint = schema.new({
    id = id.from(_N, "OriginEndpoint"),
    type = "structure",
    members = {
        Arn = schema.new({
            id = id.from(_N, "OriginEndpoint", "Arn"),
            type = "string",
            name = "Arn",
            target_id = prelude.String.id,
            traits = {
                [traits.JSON_NAME] = { name = "arn" },
            },
        }),
        Authorization = schema.new({
            id = id.from(_N, "OriginEndpoint", "Authorization"),
            type = "structure",
            name = "Authorization",
            target_id = id.from(_N, "Authorization"),
            target = M.Authorization,
            traits = {
                [traits.JSON_NAME] = { name = "authorization" },
            },
        }),
        ChannelId = schema.new({
            id = id.from(_N, "OriginEndpoint", "ChannelId"),
            type = "string",
            name = "ChannelId",
            target_id = prelude.String.id,
            traits = {
                [traits.JSON_NAME] = { name = "channelId" },
            },
        }),
        CmafPackage = schema.new({
            id = id.from(_N, "OriginEndpoint", "CmafPackage"),
            type = "structure",
            name = "CmafPackage",
            target_id = id.from(_N, "CmafPackage"),
            target = M.CmafPackage,
            traits = {
                [traits.JSON_NAME] = { name = "cmafPackage" },
            },
        }),
        CreatedAt = schema.new({
            id = id.from(_N, "OriginEndpoint", "CreatedAt"),
            type = "string",
            name = "CreatedAt",
            target_id = prelude.String.id,
            traits = {
                [traits.JSON_NAME] = { name = "createdAt" },
            },
        }),
        DashPackage = schema.new({
            id = id.from(_N, "OriginEndpoint", "DashPackage"),
            type = "structure",
            name = "DashPackage",
            target_id = id.from(_N, "DashPackage"),
            target = M.DashPackage,
            traits = {
                [traits.JSON_NAME] = { name = "dashPackage" },
            },
        }),
        Description = schema.new({
            id = id.from(_N, "OriginEndpoint", "Description"),
            type = "string",
            name = "Description",
            target_id = prelude.String.id,
            traits = {
                [traits.JSON_NAME] = { name = "description" },
            },
        }),
        HlsPackage = schema.new({
            id = id.from(_N, "OriginEndpoint", "HlsPackage"),
            type = "structure",
            name = "HlsPackage",
            target_id = id.from(_N, "HlsPackage"),
            target = M.HlsPackage,
            traits = {
                [traits.JSON_NAME] = { name = "hlsPackage" },
            },
        }),
        Id = schema.new({
            id = id.from(_N, "OriginEndpoint", "Id"),
            type = "string",
            name = "Id",
            target_id = prelude.String.id,
            traits = {
                [traits.JSON_NAME] = { name = "id" },
            },
        }),
        ManifestName = schema.new({
            id = id.from(_N, "OriginEndpoint", "ManifestName"),
            type = "string",
            name = "ManifestName",
            target_id = prelude.String.id,
            traits = {
                [traits.JSON_NAME] = { name = "manifestName" },
            },
        }),
        MssPackage = schema.new({
            id = id.from(_N, "OriginEndpoint", "MssPackage"),
            type = "structure",
            name = "MssPackage",
            target_id = id.from(_N, "MssPackage"),
            target = M.MssPackage,
            traits = {
                [traits.JSON_NAME] = { name = "mssPackage" },
            },
        }),
        Origination = schema.new({
            id = id.from(_N, "OriginEndpoint", "Origination"),
            type = "string",
            name = "Origination",
            target_id = prelude.String.id,
            traits = {
                [traits.JSON_NAME] = { name = "origination" },
            },
        }),
        StartoverWindowSeconds = schema.new({
            id = id.from(_N, "OriginEndpoint", "StartoverWindowSeconds"),
            type = "integer",
            name = "StartoverWindowSeconds",
            target_id = prelude.Integer.id,
            traits = {
                [traits.JSON_NAME] = { name = "startoverWindowSeconds" },
            },
        }),
        Tags = schema.new({
            id = id.from(_N, "OriginEndpoint", "Tags"),
            type = "map",
            name = "Tags",
            target_id = prelude.Document.id,
            map_key = prelude.String,
            map_value = prelude.String,
            traits = {
                [traits.JSON_NAME] = { name = "tags" },
            },
        }),
        TimeDelaySeconds = schema.new({
            id = id.from(_N, "OriginEndpoint", "TimeDelaySeconds"),
            type = "integer",
            name = "TimeDelaySeconds",
            target_id = prelude.Integer.id,
            traits = {
                [traits.JSON_NAME] = { name = "timeDelaySeconds" },
            },
        }),
        Url = schema.new({
            id = id.from(_N, "OriginEndpoint", "Url"),
            type = "string",
            name = "Url",
            target_id = prelude.String.id,
            traits = {
                [traits.JSON_NAME] = { name = "url" },
            },
        }),
        Whitelist = schema.new({
            id = id.from(_N, "OriginEndpoint", "Whitelist"),
            type = "list",
            name = "Whitelist",
            target_id = prelude.Document.id,
            list_member = prelude.String,
            traits = {
                [traits.JSON_NAME] = { name = "whitelist" },
            },
        }),
    },
})

M.CmafPackageCreateOrUpdateParameters = schema.new({
    id = id.from(_N, "CmafPackageCreateOrUpdateParameters"),
    type = "structure",
    members = {
        Encryption = schema.new({
            id = id.from(_N, "CmafPackageCreateOrUpdateParameters", "Encryption"),
            type = "structure",
            name = "Encryption",
            target_id = id.from(_N, "CmafEncryption"),
            target = M.CmafEncryption,
            traits = {
                [traits.JSON_NAME] = { name = "encryption" },
            },
        }),
        HlsManifests = schema.new({
            id = id.from(_N, "CmafPackageCreateOrUpdateParameters", "HlsManifests"),
            type = "list",
            name = "HlsManifests",
            target_id = prelude.Document.id,
            list_member = M.HlsManifestCreateOrUpdateParameters,
            traits = {
                [traits.JSON_NAME] = { name = "hlsManifests" },
            },
        }),
        SegmentDurationSeconds = schema.new({
            id = id.from(_N, "CmafPackageCreateOrUpdateParameters", "SegmentDurationSeconds"),
            type = "integer",
            name = "SegmentDurationSeconds",
            target_id = prelude.Integer.id,
            traits = {
                [traits.JSON_NAME] = { name = "segmentDurationSeconds" },
            },
        }),
        SegmentPrefix = schema.new({
            id = id.from(_N, "CmafPackageCreateOrUpdateParameters", "SegmentPrefix"),
            type = "string",
            name = "SegmentPrefix",
            target_id = prelude.String.id,
            traits = {
                [traits.JSON_NAME] = { name = "segmentPrefix" },
            },
        }),
        StreamSelection = schema.new({
            id = id.from(_N, "CmafPackageCreateOrUpdateParameters", "StreamSelection"),
            type = "structure",
            name = "StreamSelection",
            target_id = id.from(_N, "StreamSelection"),
            target = M.StreamSelection,
            traits = {
                [traits.JSON_NAME] = { name = "streamSelection" },
            },
        }),
    },
})

M.ConfigureLogsInput = schema.new({
    id = id.from(_N, "ConfigureLogsRequest"),
    type = "structure",
    members = {
        EgressAccessLogs = schema.new({
            id = id.from(_N, "ConfigureLogsInput", "EgressAccessLogs"),
            type = "structure",
            name = "EgressAccessLogs",
            target_id = id.from(_N, "EgressAccessLogs"),
            target = M.EgressAccessLogs,
            traits = {
                [traits.JSON_NAME] = { name = "egressAccessLogs" },
            },
        }),
        Id = schema.new({
            id = id.from(_N, "ConfigureLogsInput", "Id"),
            type = "string",
            name = "Id",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
        IngressAccessLogs = schema.new({
            id = id.from(_N, "ConfigureLogsInput", "IngressAccessLogs"),
            type = "structure",
            name = "IngressAccessLogs",
            target_id = id.from(_N, "IngressAccessLogs"),
            target = M.IngressAccessLogs,
            traits = {
                [traits.JSON_NAME] = { name = "ingressAccessLogs" },
            },
        }),
    },
})

M.ConfigureLogsOutput = schema.new({
    id = id.from(_N, "ConfigureLogsResponse"),
    type = "structure",
    members = {
        Arn = schema.new({
            id = id.from(_N, "ConfigureLogsOutput", "Arn"),
            type = "string",
            name = "Arn",
            target_id = prelude.String.id,
            traits = {
                [traits.JSON_NAME] = { name = "arn" },
            },
        }),
        CreatedAt = schema.new({
            id = id.from(_N, "ConfigureLogsOutput", "CreatedAt"),
            type = "string",
            name = "CreatedAt",
            target_id = prelude.String.id,
            traits = {
                [traits.JSON_NAME] = { name = "createdAt" },
            },
        }),
        Description = schema.new({
            id = id.from(_N, "ConfigureLogsOutput", "Description"),
            type = "string",
            name = "Description",
            target_id = prelude.String.id,
            traits = {
                [traits.JSON_NAME] = { name = "description" },
            },
        }),
        EgressAccessLogs = schema.new({
            id = id.from(_N, "ConfigureLogsOutput", "EgressAccessLogs"),
            type = "structure",
            name = "EgressAccessLogs",
            target_id = id.from(_N, "EgressAccessLogs"),
            target = M.EgressAccessLogs,
            traits = {
                [traits.JSON_NAME] = { name = "egressAccessLogs" },
            },
        }),
        HlsIngest = schema.new({
            id = id.from(_N, "ConfigureLogsOutput", "HlsIngest"),
            type = "structure",
            name = "HlsIngest",
            target_id = id.from(_N, "HlsIngest"),
            target = M.HlsIngest,
            traits = {
                [traits.JSON_NAME] = { name = "hlsIngest" },
            },
        }),
        Id = schema.new({
            id = id.from(_N, "ConfigureLogsOutput", "Id"),
            type = "string",
            name = "Id",
            target_id = prelude.String.id,
            traits = {
                [traits.JSON_NAME] = { name = "id" },
            },
        }),
        IngressAccessLogs = schema.new({
            id = id.from(_N, "ConfigureLogsOutput", "IngressAccessLogs"),
            type = "structure",
            name = "IngressAccessLogs",
            target_id = id.from(_N, "IngressAccessLogs"),
            target = M.IngressAccessLogs,
            traits = {
                [traits.JSON_NAME] = { name = "ingressAccessLogs" },
            },
        }),
        Tags = schema.new({
            id = id.from(_N, "ConfigureLogsOutput", "Tags"),
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

M.ForbiddenException = schema.new({
    id = id.from(_N, "ForbiddenException"),
    type = "structure",
    traits = {
        [traits.ERROR] = { value = "client" },
    },
    members = {
        Message = schema.new({
            id = id.from(_N, "ForbiddenException", "Message"),
            type = "string",
            name = "Message",
            target_id = prelude.String.id,
            traits = {
                [traits.JSON_NAME] = { name = "message" },
            },
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
        Message = schema.new({
            id = id.from(_N, "InternalServerErrorException", "Message"),
            type = "string",
            name = "Message",
            target_id = prelude.String.id,
            traits = {
                [traits.JSON_NAME] = { name = "message" },
            },
        }),
    },
})

M.NotFoundException = schema.new({
    id = id.from(_N, "NotFoundException"),
    type = "structure",
    traits = {
        [traits.ERROR] = { value = "client" },
    },
    members = {
        Message = schema.new({
            id = id.from(_N, "NotFoundException", "Message"),
            type = "string",
            name = "Message",
            target_id = prelude.String.id,
            traits = {
                [traits.JSON_NAME] = { name = "message" },
            },
        }),
    },
})

M.ServiceUnavailableException = schema.new({
    id = id.from(_N, "ServiceUnavailableException"),
    type = "structure",
    traits = {
        [traits.ERROR] = { value = "server" },
    },
    members = {
        Message = schema.new({
            id = id.from(_N, "ServiceUnavailableException", "Message"),
            type = "string",
            name = "Message",
            target_id = prelude.String.id,
            traits = {
                [traits.JSON_NAME] = { name = "message" },
            },
        }),
    },
})

M.TooManyRequestsException = schema.new({
    id = id.from(_N, "TooManyRequestsException"),
    type = "structure",
    traits = {
        [traits.ERROR] = { value = "client" },
    },
    members = {
        Message = schema.new({
            id = id.from(_N, "TooManyRequestsException", "Message"),
            type = "string",
            name = "Message",
            target_id = prelude.String.id,
            traits = {
                [traits.JSON_NAME] = { name = "message" },
            },
        }),
    },
})

M.UnprocessableEntityException = schema.new({
    id = id.from(_N, "UnprocessableEntityException"),
    type = "structure",
    traits = {
        [traits.ERROR] = { value = "client" },
    },
    members = {
        Message = schema.new({
            id = id.from(_N, "UnprocessableEntityException", "Message"),
            type = "string",
            name = "Message",
            target_id = prelude.String.id,
            traits = {
                [traits.JSON_NAME] = { name = "message" },
            },
        }),
    },
})

M.CreateChannelInput = schema.new({
    id = id.from(_N, "CreateChannelRequest"),
    type = "structure",
    members = {
        Description = schema.new({
            id = id.from(_N, "CreateChannelInput", "Description"),
            type = "string",
            name = "Description",
            target_id = prelude.String.id,
            traits = {
                [traits.JSON_NAME] = { name = "description" },
            },
        }),
        Id = schema.new({
            id = id.from(_N, "CreateChannelInput", "Id"),
            type = "string",
            name = "Id",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.JSON_NAME] = { name = "id" },
            },
        }),
        Tags = schema.new({
            id = id.from(_N, "CreateChannelInput", "Tags"),
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

M.CreateChannelOutput = schema.new({
    id = id.from(_N, "CreateChannelResponse"),
    type = "structure",
    members = {
        Arn = schema.new({
            id = id.from(_N, "CreateChannelOutput", "Arn"),
            type = "string",
            name = "Arn",
            target_id = prelude.String.id,
            traits = {
                [traits.JSON_NAME] = { name = "arn" },
            },
        }),
        CreatedAt = schema.new({
            id = id.from(_N, "CreateChannelOutput", "CreatedAt"),
            type = "string",
            name = "CreatedAt",
            target_id = prelude.String.id,
            traits = {
                [traits.JSON_NAME] = { name = "createdAt" },
            },
        }),
        Description = schema.new({
            id = id.from(_N, "CreateChannelOutput", "Description"),
            type = "string",
            name = "Description",
            target_id = prelude.String.id,
            traits = {
                [traits.JSON_NAME] = { name = "description" },
            },
        }),
        EgressAccessLogs = schema.new({
            id = id.from(_N, "CreateChannelOutput", "EgressAccessLogs"),
            type = "structure",
            name = "EgressAccessLogs",
            target_id = id.from(_N, "EgressAccessLogs"),
            target = M.EgressAccessLogs,
            traits = {
                [traits.JSON_NAME] = { name = "egressAccessLogs" },
            },
        }),
        HlsIngest = schema.new({
            id = id.from(_N, "CreateChannelOutput", "HlsIngest"),
            type = "structure",
            name = "HlsIngest",
            target_id = id.from(_N, "HlsIngest"),
            target = M.HlsIngest,
            traits = {
                [traits.JSON_NAME] = { name = "hlsIngest" },
            },
        }),
        Id = schema.new({
            id = id.from(_N, "CreateChannelOutput", "Id"),
            type = "string",
            name = "Id",
            target_id = prelude.String.id,
            traits = {
                [traits.JSON_NAME] = { name = "id" },
            },
        }),
        IngressAccessLogs = schema.new({
            id = id.from(_N, "CreateChannelOutput", "IngressAccessLogs"),
            type = "structure",
            name = "IngressAccessLogs",
            target_id = id.from(_N, "IngressAccessLogs"),
            target = M.IngressAccessLogs,
            traits = {
                [traits.JSON_NAME] = { name = "ingressAccessLogs" },
            },
        }),
        Tags = schema.new({
            id = id.from(_N, "CreateChannelOutput", "Tags"),
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

M.CreateHarvestJobInput = schema.new({
    id = id.from(_N, "CreateHarvestJobRequest"),
    type = "structure",
    members = {
        EndTime = schema.new({
            id = id.from(_N, "CreateHarvestJobInput", "EndTime"),
            type = "string",
            name = "EndTime",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.JSON_NAME] = { name = "endTime" },
            },
        }),
        Id = schema.new({
            id = id.from(_N, "CreateHarvestJobInput", "Id"),
            type = "string",
            name = "Id",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.JSON_NAME] = { name = "id" },
            },
        }),
        OriginEndpointId = schema.new({
            id = id.from(_N, "CreateHarvestJobInput", "OriginEndpointId"),
            type = "string",
            name = "OriginEndpointId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.JSON_NAME] = { name = "originEndpointId" },
            },
        }),
        S3Destination = schema.new({
            id = id.from(_N, "CreateHarvestJobInput", "S3Destination"),
            type = "structure",
            name = "S3Destination",
            target_id = id.from(_N, "S3Destination"),
            target = M.S3Destination,
            traits = {
                [traits.REQUIRED] = {},
                [traits.JSON_NAME] = { name = "s3Destination" },
            },
        }),
        StartTime = schema.new({
            id = id.from(_N, "CreateHarvestJobInput", "StartTime"),
            type = "string",
            name = "StartTime",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.JSON_NAME] = { name = "startTime" },
            },
        }),
    },
})

M.CreateHarvestJobOutput = schema.new({
    id = id.from(_N, "CreateHarvestJobResponse"),
    type = "structure",
    members = {
        Arn = schema.new({
            id = id.from(_N, "CreateHarvestJobOutput", "Arn"),
            type = "string",
            name = "Arn",
            target_id = prelude.String.id,
            traits = {
                [traits.JSON_NAME] = { name = "arn" },
            },
        }),
        ChannelId = schema.new({
            id = id.from(_N, "CreateHarvestJobOutput", "ChannelId"),
            type = "string",
            name = "ChannelId",
            target_id = prelude.String.id,
            traits = {
                [traits.JSON_NAME] = { name = "channelId" },
            },
        }),
        CreatedAt = schema.new({
            id = id.from(_N, "CreateHarvestJobOutput", "CreatedAt"),
            type = "string",
            name = "CreatedAt",
            target_id = prelude.String.id,
            traits = {
                [traits.JSON_NAME] = { name = "createdAt" },
            },
        }),
        EndTime = schema.new({
            id = id.from(_N, "CreateHarvestJobOutput", "EndTime"),
            type = "string",
            name = "EndTime",
            target_id = prelude.String.id,
            traits = {
                [traits.JSON_NAME] = { name = "endTime" },
            },
        }),
        Id = schema.new({
            id = id.from(_N, "CreateHarvestJobOutput", "Id"),
            type = "string",
            name = "Id",
            target_id = prelude.String.id,
            traits = {
                [traits.JSON_NAME] = { name = "id" },
            },
        }),
        OriginEndpointId = schema.new({
            id = id.from(_N, "CreateHarvestJobOutput", "OriginEndpointId"),
            type = "string",
            name = "OriginEndpointId",
            target_id = prelude.String.id,
            traits = {
                [traits.JSON_NAME] = { name = "originEndpointId" },
            },
        }),
        S3Destination = schema.new({
            id = id.from(_N, "CreateHarvestJobOutput", "S3Destination"),
            type = "structure",
            name = "S3Destination",
            target_id = id.from(_N, "S3Destination"),
            target = M.S3Destination,
            traits = {
                [traits.JSON_NAME] = { name = "s3Destination" },
            },
        }),
        StartTime = schema.new({
            id = id.from(_N, "CreateHarvestJobOutput", "StartTime"),
            type = "string",
            name = "StartTime",
            target_id = prelude.String.id,
            traits = {
                [traits.JSON_NAME] = { name = "startTime" },
            },
        }),
        Status = schema.new({
            id = id.from(_N, "CreateHarvestJobOutput", "Status"),
            type = "string",
            name = "Status",
            target_id = prelude.String.id,
            traits = {
                [traits.JSON_NAME] = { name = "status" },
            },
        }),
    },
})

M.CreateOriginEndpointInput = schema.new({
    id = id.from(_N, "CreateOriginEndpointRequest"),
    type = "structure",
    members = {
        Authorization = schema.new({
            id = id.from(_N, "CreateOriginEndpointInput", "Authorization"),
            type = "structure",
            name = "Authorization",
            target_id = id.from(_N, "Authorization"),
            target = M.Authorization,
            traits = {
                [traits.JSON_NAME] = { name = "authorization" },
            },
        }),
        ChannelId = schema.new({
            id = id.from(_N, "CreateOriginEndpointInput", "ChannelId"),
            type = "string",
            name = "ChannelId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.JSON_NAME] = { name = "channelId" },
            },
        }),
        CmafPackage = schema.new({
            id = id.from(_N, "CreateOriginEndpointInput", "CmafPackage"),
            type = "structure",
            name = "CmafPackage",
            target_id = id.from(_N, "CmafPackageCreateOrUpdateParameters"),
            target = M.CmafPackageCreateOrUpdateParameters,
            traits = {
                [traits.JSON_NAME] = { name = "cmafPackage" },
            },
        }),
        DashPackage = schema.new({
            id = id.from(_N, "CreateOriginEndpointInput", "DashPackage"),
            type = "structure",
            name = "DashPackage",
            target_id = id.from(_N, "DashPackage"),
            target = M.DashPackage,
            traits = {
                [traits.JSON_NAME] = { name = "dashPackage" },
            },
        }),
        Description = schema.new({
            id = id.from(_N, "CreateOriginEndpointInput", "Description"),
            type = "string",
            name = "Description",
            target_id = prelude.String.id,
            traits = {
                [traits.JSON_NAME] = { name = "description" },
            },
        }),
        HlsPackage = schema.new({
            id = id.from(_N, "CreateOriginEndpointInput", "HlsPackage"),
            type = "structure",
            name = "HlsPackage",
            target_id = id.from(_N, "HlsPackage"),
            target = M.HlsPackage,
            traits = {
                [traits.JSON_NAME] = { name = "hlsPackage" },
            },
        }),
        Id = schema.new({
            id = id.from(_N, "CreateOriginEndpointInput", "Id"),
            type = "string",
            name = "Id",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.JSON_NAME] = { name = "id" },
            },
        }),
        ManifestName = schema.new({
            id = id.from(_N, "CreateOriginEndpointInput", "ManifestName"),
            type = "string",
            name = "ManifestName",
            target_id = prelude.String.id,
            traits = {
                [traits.JSON_NAME] = { name = "manifestName" },
            },
        }),
        MssPackage = schema.new({
            id = id.from(_N, "CreateOriginEndpointInput", "MssPackage"),
            type = "structure",
            name = "MssPackage",
            target_id = id.from(_N, "MssPackage"),
            target = M.MssPackage,
            traits = {
                [traits.JSON_NAME] = { name = "mssPackage" },
            },
        }),
        Origination = schema.new({
            id = id.from(_N, "CreateOriginEndpointInput", "Origination"),
            type = "string",
            name = "Origination",
            target_id = prelude.String.id,
            traits = {
                [traits.JSON_NAME] = { name = "origination" },
            },
        }),
        StartoverWindowSeconds = schema.new({
            id = id.from(_N, "CreateOriginEndpointInput", "StartoverWindowSeconds"),
            type = "integer",
            name = "StartoverWindowSeconds",
            target_id = prelude.Integer.id,
            traits = {
                [traits.JSON_NAME] = { name = "startoverWindowSeconds" },
            },
        }),
        Tags = schema.new({
            id = id.from(_N, "CreateOriginEndpointInput", "Tags"),
            type = "map",
            name = "Tags",
            target_id = prelude.Document.id,
            map_key = prelude.String,
            map_value = prelude.String,
            traits = {
                [traits.JSON_NAME] = { name = "tags" },
            },
        }),
        TimeDelaySeconds = schema.new({
            id = id.from(_N, "CreateOriginEndpointInput", "TimeDelaySeconds"),
            type = "integer",
            name = "TimeDelaySeconds",
            target_id = prelude.Integer.id,
            traits = {
                [traits.JSON_NAME] = { name = "timeDelaySeconds" },
            },
        }),
        Whitelist = schema.new({
            id = id.from(_N, "CreateOriginEndpointInput", "Whitelist"),
            type = "list",
            name = "Whitelist",
            target_id = prelude.Document.id,
            list_member = prelude.String,
            traits = {
                [traits.JSON_NAME] = { name = "whitelist" },
            },
        }),
    },
})

M.CreateOriginEndpointOutput = schema.new({
    id = id.from(_N, "CreateOriginEndpointResponse"),
    type = "structure",
    members = {
        Arn = schema.new({
            id = id.from(_N, "CreateOriginEndpointOutput", "Arn"),
            type = "string",
            name = "Arn",
            target_id = prelude.String.id,
            traits = {
                [traits.JSON_NAME] = { name = "arn" },
            },
        }),
        Authorization = schema.new({
            id = id.from(_N, "CreateOriginEndpointOutput", "Authorization"),
            type = "structure",
            name = "Authorization",
            target_id = id.from(_N, "Authorization"),
            target = M.Authorization,
            traits = {
                [traits.JSON_NAME] = { name = "authorization" },
            },
        }),
        ChannelId = schema.new({
            id = id.from(_N, "CreateOriginEndpointOutput", "ChannelId"),
            type = "string",
            name = "ChannelId",
            target_id = prelude.String.id,
            traits = {
                [traits.JSON_NAME] = { name = "channelId" },
            },
        }),
        CmafPackage = schema.new({
            id = id.from(_N, "CreateOriginEndpointOutput", "CmafPackage"),
            type = "structure",
            name = "CmafPackage",
            target_id = id.from(_N, "CmafPackage"),
            target = M.CmafPackage,
            traits = {
                [traits.JSON_NAME] = { name = "cmafPackage" },
            },
        }),
        CreatedAt = schema.new({
            id = id.from(_N, "CreateOriginEndpointOutput", "CreatedAt"),
            type = "string",
            name = "CreatedAt",
            target_id = prelude.String.id,
            traits = {
                [traits.JSON_NAME] = { name = "createdAt" },
            },
        }),
        DashPackage = schema.new({
            id = id.from(_N, "CreateOriginEndpointOutput", "DashPackage"),
            type = "structure",
            name = "DashPackage",
            target_id = id.from(_N, "DashPackage"),
            target = M.DashPackage,
            traits = {
                [traits.JSON_NAME] = { name = "dashPackage" },
            },
        }),
        Description = schema.new({
            id = id.from(_N, "CreateOriginEndpointOutput", "Description"),
            type = "string",
            name = "Description",
            target_id = prelude.String.id,
            traits = {
                [traits.JSON_NAME] = { name = "description" },
            },
        }),
        HlsPackage = schema.new({
            id = id.from(_N, "CreateOriginEndpointOutput", "HlsPackage"),
            type = "structure",
            name = "HlsPackage",
            target_id = id.from(_N, "HlsPackage"),
            target = M.HlsPackage,
            traits = {
                [traits.JSON_NAME] = { name = "hlsPackage" },
            },
        }),
        Id = schema.new({
            id = id.from(_N, "CreateOriginEndpointOutput", "Id"),
            type = "string",
            name = "Id",
            target_id = prelude.String.id,
            traits = {
                [traits.JSON_NAME] = { name = "id" },
            },
        }),
        ManifestName = schema.new({
            id = id.from(_N, "CreateOriginEndpointOutput", "ManifestName"),
            type = "string",
            name = "ManifestName",
            target_id = prelude.String.id,
            traits = {
                [traits.JSON_NAME] = { name = "manifestName" },
            },
        }),
        MssPackage = schema.new({
            id = id.from(_N, "CreateOriginEndpointOutput", "MssPackage"),
            type = "structure",
            name = "MssPackage",
            target_id = id.from(_N, "MssPackage"),
            target = M.MssPackage,
            traits = {
                [traits.JSON_NAME] = { name = "mssPackage" },
            },
        }),
        Origination = schema.new({
            id = id.from(_N, "CreateOriginEndpointOutput", "Origination"),
            type = "string",
            name = "Origination",
            target_id = prelude.String.id,
            traits = {
                [traits.JSON_NAME] = { name = "origination" },
            },
        }),
        StartoverWindowSeconds = schema.new({
            id = id.from(_N, "CreateOriginEndpointOutput", "StartoverWindowSeconds"),
            type = "integer",
            name = "StartoverWindowSeconds",
            target_id = prelude.Integer.id,
            traits = {
                [traits.JSON_NAME] = { name = "startoverWindowSeconds" },
            },
        }),
        Tags = schema.new({
            id = id.from(_N, "CreateOriginEndpointOutput", "Tags"),
            type = "map",
            name = "Tags",
            target_id = prelude.Document.id,
            map_key = prelude.String,
            map_value = prelude.String,
            traits = {
                [traits.JSON_NAME] = { name = "tags" },
            },
        }),
        TimeDelaySeconds = schema.new({
            id = id.from(_N, "CreateOriginEndpointOutput", "TimeDelaySeconds"),
            type = "integer",
            name = "TimeDelaySeconds",
            target_id = prelude.Integer.id,
            traits = {
                [traits.JSON_NAME] = { name = "timeDelaySeconds" },
            },
        }),
        Url = schema.new({
            id = id.from(_N, "CreateOriginEndpointOutput", "Url"),
            type = "string",
            name = "Url",
            target_id = prelude.String.id,
            traits = {
                [traits.JSON_NAME] = { name = "url" },
            },
        }),
        Whitelist = schema.new({
            id = id.from(_N, "CreateOriginEndpointOutput", "Whitelist"),
            type = "list",
            name = "Whitelist",
            target_id = prelude.Document.id,
            list_member = prelude.String,
            traits = {
                [traits.JSON_NAME] = { name = "whitelist" },
            },
        }),
    },
})

M.DeleteChannelInput = schema.new({
    id = id.from(_N, "DeleteChannelRequest"),
    type = "structure",
    members = {
        Id = schema.new({
            id = id.from(_N, "DeleteChannelInput", "Id"),
            type = "string",
            name = "Id",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
    },
})

M.DeleteChannelOutput = schema.new({
    id = id.from(_N, "DeleteChannelResponse"),
    type = "structure",
})

M.DeleteOriginEndpointInput = schema.new({
    id = id.from(_N, "DeleteOriginEndpointRequest"),
    type = "structure",
    members = {
        Id = schema.new({
            id = id.from(_N, "DeleteOriginEndpointInput", "Id"),
            type = "string",
            name = "Id",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
    },
})

M.DeleteOriginEndpointOutput = schema.new({
    id = id.from(_N, "DeleteOriginEndpointResponse"),
    type = "structure",
})

M.DescribeChannelInput = schema.new({
    id = id.from(_N, "DescribeChannelRequest"),
    type = "structure",
    members = {
        Id = schema.new({
            id = id.from(_N, "DescribeChannelInput", "Id"),
            type = "string",
            name = "Id",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
    },
})

M.DescribeChannelOutput = schema.new({
    id = id.from(_N, "DescribeChannelResponse"),
    type = "structure",
    members = {
        Arn = schema.new({
            id = id.from(_N, "DescribeChannelOutput", "Arn"),
            type = "string",
            name = "Arn",
            target_id = prelude.String.id,
            traits = {
                [traits.JSON_NAME] = { name = "arn" },
            },
        }),
        CreatedAt = schema.new({
            id = id.from(_N, "DescribeChannelOutput", "CreatedAt"),
            type = "string",
            name = "CreatedAt",
            target_id = prelude.String.id,
            traits = {
                [traits.JSON_NAME] = { name = "createdAt" },
            },
        }),
        Description = schema.new({
            id = id.from(_N, "DescribeChannelOutput", "Description"),
            type = "string",
            name = "Description",
            target_id = prelude.String.id,
            traits = {
                [traits.JSON_NAME] = { name = "description" },
            },
        }),
        EgressAccessLogs = schema.new({
            id = id.from(_N, "DescribeChannelOutput", "EgressAccessLogs"),
            type = "structure",
            name = "EgressAccessLogs",
            target_id = id.from(_N, "EgressAccessLogs"),
            target = M.EgressAccessLogs,
            traits = {
                [traits.JSON_NAME] = { name = "egressAccessLogs" },
            },
        }),
        HlsIngest = schema.new({
            id = id.from(_N, "DescribeChannelOutput", "HlsIngest"),
            type = "structure",
            name = "HlsIngest",
            target_id = id.from(_N, "HlsIngest"),
            target = M.HlsIngest,
            traits = {
                [traits.JSON_NAME] = { name = "hlsIngest" },
            },
        }),
        Id = schema.new({
            id = id.from(_N, "DescribeChannelOutput", "Id"),
            type = "string",
            name = "Id",
            target_id = prelude.String.id,
            traits = {
                [traits.JSON_NAME] = { name = "id" },
            },
        }),
        IngressAccessLogs = schema.new({
            id = id.from(_N, "DescribeChannelOutput", "IngressAccessLogs"),
            type = "structure",
            name = "IngressAccessLogs",
            target_id = id.from(_N, "IngressAccessLogs"),
            target = M.IngressAccessLogs,
            traits = {
                [traits.JSON_NAME] = { name = "ingressAccessLogs" },
            },
        }),
        Tags = schema.new({
            id = id.from(_N, "DescribeChannelOutput", "Tags"),
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

M.DescribeHarvestJobInput = schema.new({
    id = id.from(_N, "DescribeHarvestJobRequest"),
    type = "structure",
    members = {
        Id = schema.new({
            id = id.from(_N, "DescribeHarvestJobInput", "Id"),
            type = "string",
            name = "Id",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
    },
})

M.DescribeHarvestJobOutput = schema.new({
    id = id.from(_N, "DescribeHarvestJobResponse"),
    type = "structure",
    members = {
        Arn = schema.new({
            id = id.from(_N, "DescribeHarvestJobOutput", "Arn"),
            type = "string",
            name = "Arn",
            target_id = prelude.String.id,
            traits = {
                [traits.JSON_NAME] = { name = "arn" },
            },
        }),
        ChannelId = schema.new({
            id = id.from(_N, "DescribeHarvestJobOutput", "ChannelId"),
            type = "string",
            name = "ChannelId",
            target_id = prelude.String.id,
            traits = {
                [traits.JSON_NAME] = { name = "channelId" },
            },
        }),
        CreatedAt = schema.new({
            id = id.from(_N, "DescribeHarvestJobOutput", "CreatedAt"),
            type = "string",
            name = "CreatedAt",
            target_id = prelude.String.id,
            traits = {
                [traits.JSON_NAME] = { name = "createdAt" },
            },
        }),
        EndTime = schema.new({
            id = id.from(_N, "DescribeHarvestJobOutput", "EndTime"),
            type = "string",
            name = "EndTime",
            target_id = prelude.String.id,
            traits = {
                [traits.JSON_NAME] = { name = "endTime" },
            },
        }),
        Id = schema.new({
            id = id.from(_N, "DescribeHarvestJobOutput", "Id"),
            type = "string",
            name = "Id",
            target_id = prelude.String.id,
            traits = {
                [traits.JSON_NAME] = { name = "id" },
            },
        }),
        OriginEndpointId = schema.new({
            id = id.from(_N, "DescribeHarvestJobOutput", "OriginEndpointId"),
            type = "string",
            name = "OriginEndpointId",
            target_id = prelude.String.id,
            traits = {
                [traits.JSON_NAME] = { name = "originEndpointId" },
            },
        }),
        S3Destination = schema.new({
            id = id.from(_N, "DescribeHarvestJobOutput", "S3Destination"),
            type = "structure",
            name = "S3Destination",
            target_id = id.from(_N, "S3Destination"),
            target = M.S3Destination,
            traits = {
                [traits.JSON_NAME] = { name = "s3Destination" },
            },
        }),
        StartTime = schema.new({
            id = id.from(_N, "DescribeHarvestJobOutput", "StartTime"),
            type = "string",
            name = "StartTime",
            target_id = prelude.String.id,
            traits = {
                [traits.JSON_NAME] = { name = "startTime" },
            },
        }),
        Status = schema.new({
            id = id.from(_N, "DescribeHarvestJobOutput", "Status"),
            type = "string",
            name = "Status",
            target_id = prelude.String.id,
            traits = {
                [traits.JSON_NAME] = { name = "status" },
            },
        }),
    },
})

M.DescribeOriginEndpointInput = schema.new({
    id = id.from(_N, "DescribeOriginEndpointRequest"),
    type = "structure",
    members = {
        Id = schema.new({
            id = id.from(_N, "DescribeOriginEndpointInput", "Id"),
            type = "string",
            name = "Id",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
    },
})

M.DescribeOriginEndpointOutput = schema.new({
    id = id.from(_N, "DescribeOriginEndpointResponse"),
    type = "structure",
    members = {
        Arn = schema.new({
            id = id.from(_N, "DescribeOriginEndpointOutput", "Arn"),
            type = "string",
            name = "Arn",
            target_id = prelude.String.id,
            traits = {
                [traits.JSON_NAME] = { name = "arn" },
            },
        }),
        Authorization = schema.new({
            id = id.from(_N, "DescribeOriginEndpointOutput", "Authorization"),
            type = "structure",
            name = "Authorization",
            target_id = id.from(_N, "Authorization"),
            target = M.Authorization,
            traits = {
                [traits.JSON_NAME] = { name = "authorization" },
            },
        }),
        ChannelId = schema.new({
            id = id.from(_N, "DescribeOriginEndpointOutput", "ChannelId"),
            type = "string",
            name = "ChannelId",
            target_id = prelude.String.id,
            traits = {
                [traits.JSON_NAME] = { name = "channelId" },
            },
        }),
        CmafPackage = schema.new({
            id = id.from(_N, "DescribeOriginEndpointOutput", "CmafPackage"),
            type = "structure",
            name = "CmafPackage",
            target_id = id.from(_N, "CmafPackage"),
            target = M.CmafPackage,
            traits = {
                [traits.JSON_NAME] = { name = "cmafPackage" },
            },
        }),
        CreatedAt = schema.new({
            id = id.from(_N, "DescribeOriginEndpointOutput", "CreatedAt"),
            type = "string",
            name = "CreatedAt",
            target_id = prelude.String.id,
            traits = {
                [traits.JSON_NAME] = { name = "createdAt" },
            },
        }),
        DashPackage = schema.new({
            id = id.from(_N, "DescribeOriginEndpointOutput", "DashPackage"),
            type = "structure",
            name = "DashPackage",
            target_id = id.from(_N, "DashPackage"),
            target = M.DashPackage,
            traits = {
                [traits.JSON_NAME] = { name = "dashPackage" },
            },
        }),
        Description = schema.new({
            id = id.from(_N, "DescribeOriginEndpointOutput", "Description"),
            type = "string",
            name = "Description",
            target_id = prelude.String.id,
            traits = {
                [traits.JSON_NAME] = { name = "description" },
            },
        }),
        HlsPackage = schema.new({
            id = id.from(_N, "DescribeOriginEndpointOutput", "HlsPackage"),
            type = "structure",
            name = "HlsPackage",
            target_id = id.from(_N, "HlsPackage"),
            target = M.HlsPackage,
            traits = {
                [traits.JSON_NAME] = { name = "hlsPackage" },
            },
        }),
        Id = schema.new({
            id = id.from(_N, "DescribeOriginEndpointOutput", "Id"),
            type = "string",
            name = "Id",
            target_id = prelude.String.id,
            traits = {
                [traits.JSON_NAME] = { name = "id" },
            },
        }),
        ManifestName = schema.new({
            id = id.from(_N, "DescribeOriginEndpointOutput", "ManifestName"),
            type = "string",
            name = "ManifestName",
            target_id = prelude.String.id,
            traits = {
                [traits.JSON_NAME] = { name = "manifestName" },
            },
        }),
        MssPackage = schema.new({
            id = id.from(_N, "DescribeOriginEndpointOutput", "MssPackage"),
            type = "structure",
            name = "MssPackage",
            target_id = id.from(_N, "MssPackage"),
            target = M.MssPackage,
            traits = {
                [traits.JSON_NAME] = { name = "mssPackage" },
            },
        }),
        Origination = schema.new({
            id = id.from(_N, "DescribeOriginEndpointOutput", "Origination"),
            type = "string",
            name = "Origination",
            target_id = prelude.String.id,
            traits = {
                [traits.JSON_NAME] = { name = "origination" },
            },
        }),
        StartoverWindowSeconds = schema.new({
            id = id.from(_N, "DescribeOriginEndpointOutput", "StartoverWindowSeconds"),
            type = "integer",
            name = "StartoverWindowSeconds",
            target_id = prelude.Integer.id,
            traits = {
                [traits.JSON_NAME] = { name = "startoverWindowSeconds" },
            },
        }),
        Tags = schema.new({
            id = id.from(_N, "DescribeOriginEndpointOutput", "Tags"),
            type = "map",
            name = "Tags",
            target_id = prelude.Document.id,
            map_key = prelude.String,
            map_value = prelude.String,
            traits = {
                [traits.JSON_NAME] = { name = "tags" },
            },
        }),
        TimeDelaySeconds = schema.new({
            id = id.from(_N, "DescribeOriginEndpointOutput", "TimeDelaySeconds"),
            type = "integer",
            name = "TimeDelaySeconds",
            target_id = prelude.Integer.id,
            traits = {
                [traits.JSON_NAME] = { name = "timeDelaySeconds" },
            },
        }),
        Url = schema.new({
            id = id.from(_N, "DescribeOriginEndpointOutput", "Url"),
            type = "string",
            name = "Url",
            target_id = prelude.String.id,
            traits = {
                [traits.JSON_NAME] = { name = "url" },
            },
        }),
        Whitelist = schema.new({
            id = id.from(_N, "DescribeOriginEndpointOutput", "Whitelist"),
            type = "list",
            name = "Whitelist",
            target_id = prelude.Document.id,
            list_member = prelude.String,
            traits = {
                [traits.JSON_NAME] = { name = "whitelist" },
            },
        }),
    },
})

M.ListChannelsInput = schema.new({
    id = id.from(_N, "ListChannelsRequest"),
    type = "structure",
    members = {
        MaxResults = schema.new({
            id = id.from(_N, "ListChannelsInput", "MaxResults"),
            type = "integer",
            name = "MaxResults",
            target_id = prelude.Integer.id,
            traits = {
                [traits.HTTP_QUERY] = { name = "maxResults" },
            },
        }),
        NextToken = schema.new({
            id = id.from(_N, "ListChannelsInput", "NextToken"),
            type = "string",
            name = "NextToken",
            target_id = prelude.String.id,
            traits = {
                [traits.HTTP_QUERY] = { name = "nextToken" },
            },
        }),
    },
})

M.ListChannelsOutput = schema.new({
    id = id.from(_N, "ListChannelsResponse"),
    type = "structure",
    members = {
        Channels = schema.new({
            id = id.from(_N, "ListChannelsOutput", "Channels"),
            type = "list",
            name = "Channels",
            target_id = prelude.Document.id,
            list_member = M.Channel,
            traits = {
                [traits.JSON_NAME] = { name = "channels" },
            },
        }),
        NextToken = schema.new({
            id = id.from(_N, "ListChannelsOutput", "NextToken"),
            type = "string",
            name = "NextToken",
            target_id = prelude.String.id,
            traits = {
                [traits.JSON_NAME] = { name = "nextToken" },
            },
        }),
    },
})

M.ListHarvestJobsInput = schema.new({
    id = id.from(_N, "ListHarvestJobsRequest"),
    type = "structure",
    members = {
        IncludeChannelId = schema.new({
            id = id.from(_N, "ListHarvestJobsInput", "IncludeChannelId"),
            type = "string",
            name = "IncludeChannelId",
            target_id = prelude.String.id,
            traits = {
                [traits.HTTP_QUERY] = { name = "includeChannelId" },
            },
        }),
        IncludeStatus = schema.new({
            id = id.from(_N, "ListHarvestJobsInput", "IncludeStatus"),
            type = "string",
            name = "IncludeStatus",
            target_id = prelude.String.id,
            traits = {
                [traits.HTTP_QUERY] = { name = "includeStatus" },
            },
        }),
        MaxResults = schema.new({
            id = id.from(_N, "ListHarvestJobsInput", "MaxResults"),
            type = "integer",
            name = "MaxResults",
            target_id = prelude.Integer.id,
            traits = {
                [traits.HTTP_QUERY] = { name = "maxResults" },
            },
        }),
        NextToken = schema.new({
            id = id.from(_N, "ListHarvestJobsInput", "NextToken"),
            type = "string",
            name = "NextToken",
            target_id = prelude.String.id,
            traits = {
                [traits.HTTP_QUERY] = { name = "nextToken" },
            },
        }),
    },
})

M.ListHarvestJobsOutput = schema.new({
    id = id.from(_N, "ListHarvestJobsResponse"),
    type = "structure",
    members = {
        HarvestJobs = schema.new({
            id = id.from(_N, "ListHarvestJobsOutput", "HarvestJobs"),
            type = "list",
            name = "HarvestJobs",
            target_id = prelude.Document.id,
            list_member = M.HarvestJob,
            traits = {
                [traits.JSON_NAME] = { name = "harvestJobs" },
            },
        }),
        NextToken = schema.new({
            id = id.from(_N, "ListHarvestJobsOutput", "NextToken"),
            type = "string",
            name = "NextToken",
            target_id = prelude.String.id,
            traits = {
                [traits.JSON_NAME] = { name = "nextToken" },
            },
        }),
    },
})

M.ListOriginEndpointsInput = schema.new({
    id = id.from(_N, "ListOriginEndpointsRequest"),
    type = "structure",
    members = {
        ChannelId = schema.new({
            id = id.from(_N, "ListOriginEndpointsInput", "ChannelId"),
            type = "string",
            name = "ChannelId",
            target_id = prelude.String.id,
            traits = {
                [traits.HTTP_QUERY] = { name = "channelId" },
            },
        }),
        MaxResults = schema.new({
            id = id.from(_N, "ListOriginEndpointsInput", "MaxResults"),
            type = "integer",
            name = "MaxResults",
            target_id = prelude.Integer.id,
            traits = {
                [traits.HTTP_QUERY] = { name = "maxResults" },
            },
        }),
        NextToken = schema.new({
            id = id.from(_N, "ListOriginEndpointsInput", "NextToken"),
            type = "string",
            name = "NextToken",
            target_id = prelude.String.id,
            traits = {
                [traits.HTTP_QUERY] = { name = "nextToken" },
            },
        }),
    },
})

M.ListOriginEndpointsOutput = schema.new({
    id = id.from(_N, "ListOriginEndpointsResponse"),
    type = "structure",
    members = {
        NextToken = schema.new({
            id = id.from(_N, "ListOriginEndpointsOutput", "NextToken"),
            type = "string",
            name = "NextToken",
            target_id = prelude.String.id,
            traits = {
                [traits.JSON_NAME] = { name = "nextToken" },
            },
        }),
        OriginEndpoints = schema.new({
            id = id.from(_N, "ListOriginEndpointsOutput", "OriginEndpoints"),
            type = "list",
            name = "OriginEndpoints",
            target_id = prelude.Document.id,
            list_member = M.OriginEndpoint,
            traits = {
                [traits.JSON_NAME] = { name = "originEndpoints" },
            },
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
        Tags = schema.new({
            id = id.from(_N, "ListTagsForResourceOutput", "Tags"),
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

M.RotateChannelCredentialsInput = schema.new({
    id = id.from(_N, "RotateChannelCredentialsRequest"),
    type = "structure",
    members = {
        Id = schema.new({
            id = id.from(_N, "RotateChannelCredentialsInput", "Id"),
            type = "string",
            name = "Id",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
    },
})

M.RotateChannelCredentialsOutput = schema.new({
    id = id.from(_N, "RotateChannelCredentialsResponse"),
    type = "structure",
    members = {
        Arn = schema.new({
            id = id.from(_N, "RotateChannelCredentialsOutput", "Arn"),
            type = "string",
            name = "Arn",
            target_id = prelude.String.id,
            traits = {
                [traits.JSON_NAME] = { name = "arn" },
            },
        }),
        CreatedAt = schema.new({
            id = id.from(_N, "RotateChannelCredentialsOutput", "CreatedAt"),
            type = "string",
            name = "CreatedAt",
            target_id = prelude.String.id,
            traits = {
                [traits.JSON_NAME] = { name = "createdAt" },
            },
        }),
        Description = schema.new({
            id = id.from(_N, "RotateChannelCredentialsOutput", "Description"),
            type = "string",
            name = "Description",
            target_id = prelude.String.id,
            traits = {
                [traits.JSON_NAME] = { name = "description" },
            },
        }),
        EgressAccessLogs = schema.new({
            id = id.from(_N, "RotateChannelCredentialsOutput", "EgressAccessLogs"),
            type = "structure",
            name = "EgressAccessLogs",
            target_id = id.from(_N, "EgressAccessLogs"),
            target = M.EgressAccessLogs,
            traits = {
                [traits.JSON_NAME] = { name = "egressAccessLogs" },
            },
        }),
        HlsIngest = schema.new({
            id = id.from(_N, "RotateChannelCredentialsOutput", "HlsIngest"),
            type = "structure",
            name = "HlsIngest",
            target_id = id.from(_N, "HlsIngest"),
            target = M.HlsIngest,
            traits = {
                [traits.JSON_NAME] = { name = "hlsIngest" },
            },
        }),
        Id = schema.new({
            id = id.from(_N, "RotateChannelCredentialsOutput", "Id"),
            type = "string",
            name = "Id",
            target_id = prelude.String.id,
            traits = {
                [traits.JSON_NAME] = { name = "id" },
            },
        }),
        IngressAccessLogs = schema.new({
            id = id.from(_N, "RotateChannelCredentialsOutput", "IngressAccessLogs"),
            type = "structure",
            name = "IngressAccessLogs",
            target_id = id.from(_N, "IngressAccessLogs"),
            target = M.IngressAccessLogs,
            traits = {
                [traits.JSON_NAME] = { name = "ingressAccessLogs" },
            },
        }),
        Tags = schema.new({
            id = id.from(_N, "RotateChannelCredentialsOutput", "Tags"),
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

M.RotateIngestEndpointCredentialsInput = schema.new({
    id = id.from(_N, "RotateIngestEndpointCredentialsRequest"),
    type = "structure",
    members = {
        Id = schema.new({
            id = id.from(_N, "RotateIngestEndpointCredentialsInput", "Id"),
            type = "string",
            name = "Id",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
        IngestEndpointId = schema.new({
            id = id.from(_N, "RotateIngestEndpointCredentialsInput", "IngestEndpointId"),
            type = "string",
            name = "IngestEndpointId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
    },
})

M.RotateIngestEndpointCredentialsOutput = schema.new({
    id = id.from(_N, "RotateIngestEndpointCredentialsResponse"),
    type = "structure",
    members = {
        Arn = schema.new({
            id = id.from(_N, "RotateIngestEndpointCredentialsOutput", "Arn"),
            type = "string",
            name = "Arn",
            target_id = prelude.String.id,
            traits = {
                [traits.JSON_NAME] = { name = "arn" },
            },
        }),
        CreatedAt = schema.new({
            id = id.from(_N, "RotateIngestEndpointCredentialsOutput", "CreatedAt"),
            type = "string",
            name = "CreatedAt",
            target_id = prelude.String.id,
            traits = {
                [traits.JSON_NAME] = { name = "createdAt" },
            },
        }),
        Description = schema.new({
            id = id.from(_N, "RotateIngestEndpointCredentialsOutput", "Description"),
            type = "string",
            name = "Description",
            target_id = prelude.String.id,
            traits = {
                [traits.JSON_NAME] = { name = "description" },
            },
        }),
        EgressAccessLogs = schema.new({
            id = id.from(_N, "RotateIngestEndpointCredentialsOutput", "EgressAccessLogs"),
            type = "structure",
            name = "EgressAccessLogs",
            target_id = id.from(_N, "EgressAccessLogs"),
            target = M.EgressAccessLogs,
            traits = {
                [traits.JSON_NAME] = { name = "egressAccessLogs" },
            },
        }),
        HlsIngest = schema.new({
            id = id.from(_N, "RotateIngestEndpointCredentialsOutput", "HlsIngest"),
            type = "structure",
            name = "HlsIngest",
            target_id = id.from(_N, "HlsIngest"),
            target = M.HlsIngest,
            traits = {
                [traits.JSON_NAME] = { name = "hlsIngest" },
            },
        }),
        Id = schema.new({
            id = id.from(_N, "RotateIngestEndpointCredentialsOutput", "Id"),
            type = "string",
            name = "Id",
            target_id = prelude.String.id,
            traits = {
                [traits.JSON_NAME] = { name = "id" },
            },
        }),
        IngressAccessLogs = schema.new({
            id = id.from(_N, "RotateIngestEndpointCredentialsOutput", "IngressAccessLogs"),
            type = "structure",
            name = "IngressAccessLogs",
            target_id = id.from(_N, "IngressAccessLogs"),
            target = M.IngressAccessLogs,
            traits = {
                [traits.JSON_NAME] = { name = "ingressAccessLogs" },
            },
        }),
        Tags = schema.new({
            id = id.from(_N, "RotateIngestEndpointCredentialsOutput", "Tags"),
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
        Tags = schema.new({
            id = id.from(_N, "TagResourceInput", "Tags"),
            type = "map",
            name = "Tags",
            target_id = prelude.Document.id,
            map_key = prelude.String,
            map_value = prelude.String,
            traits = {
                [traits.REQUIRED] = {},
                [traits.JSON_NAME] = { name = "tags" },
            },
        }),
    },
})

M.TagResourceOutput = prelude.Unit

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

M.UntagResourceOutput = prelude.Unit

M.UpdateChannelInput = schema.new({
    id = id.from(_N, "UpdateChannelRequest"),
    type = "structure",
    members = {
        Description = schema.new({
            id = id.from(_N, "UpdateChannelInput", "Description"),
            type = "string",
            name = "Description",
            target_id = prelude.String.id,
            traits = {
                [traits.JSON_NAME] = { name = "description" },
            },
        }),
        Id = schema.new({
            id = id.from(_N, "UpdateChannelInput", "Id"),
            type = "string",
            name = "Id",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
    },
})

M.UpdateChannelOutput = schema.new({
    id = id.from(_N, "UpdateChannelResponse"),
    type = "structure",
    members = {
        Arn = schema.new({
            id = id.from(_N, "UpdateChannelOutput", "Arn"),
            type = "string",
            name = "Arn",
            target_id = prelude.String.id,
            traits = {
                [traits.JSON_NAME] = { name = "arn" },
            },
        }),
        CreatedAt = schema.new({
            id = id.from(_N, "UpdateChannelOutput", "CreatedAt"),
            type = "string",
            name = "CreatedAt",
            target_id = prelude.String.id,
            traits = {
                [traits.JSON_NAME] = { name = "createdAt" },
            },
        }),
        Description = schema.new({
            id = id.from(_N, "UpdateChannelOutput", "Description"),
            type = "string",
            name = "Description",
            target_id = prelude.String.id,
            traits = {
                [traits.JSON_NAME] = { name = "description" },
            },
        }),
        EgressAccessLogs = schema.new({
            id = id.from(_N, "UpdateChannelOutput", "EgressAccessLogs"),
            type = "structure",
            name = "EgressAccessLogs",
            target_id = id.from(_N, "EgressAccessLogs"),
            target = M.EgressAccessLogs,
            traits = {
                [traits.JSON_NAME] = { name = "egressAccessLogs" },
            },
        }),
        HlsIngest = schema.new({
            id = id.from(_N, "UpdateChannelOutput", "HlsIngest"),
            type = "structure",
            name = "HlsIngest",
            target_id = id.from(_N, "HlsIngest"),
            target = M.HlsIngest,
            traits = {
                [traits.JSON_NAME] = { name = "hlsIngest" },
            },
        }),
        Id = schema.new({
            id = id.from(_N, "UpdateChannelOutput", "Id"),
            type = "string",
            name = "Id",
            target_id = prelude.String.id,
            traits = {
                [traits.JSON_NAME] = { name = "id" },
            },
        }),
        IngressAccessLogs = schema.new({
            id = id.from(_N, "UpdateChannelOutput", "IngressAccessLogs"),
            type = "structure",
            name = "IngressAccessLogs",
            target_id = id.from(_N, "IngressAccessLogs"),
            target = M.IngressAccessLogs,
            traits = {
                [traits.JSON_NAME] = { name = "ingressAccessLogs" },
            },
        }),
        Tags = schema.new({
            id = id.from(_N, "UpdateChannelOutput", "Tags"),
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

M.UpdateOriginEndpointInput = schema.new({
    id = id.from(_N, "UpdateOriginEndpointRequest"),
    type = "structure",
    members = {
        Authorization = schema.new({
            id = id.from(_N, "UpdateOriginEndpointInput", "Authorization"),
            type = "structure",
            name = "Authorization",
            target_id = id.from(_N, "Authorization"),
            target = M.Authorization,
            traits = {
                [traits.JSON_NAME] = { name = "authorization" },
            },
        }),
        CmafPackage = schema.new({
            id = id.from(_N, "UpdateOriginEndpointInput", "CmafPackage"),
            type = "structure",
            name = "CmafPackage",
            target_id = id.from(_N, "CmafPackageCreateOrUpdateParameters"),
            target = M.CmafPackageCreateOrUpdateParameters,
            traits = {
                [traits.JSON_NAME] = { name = "cmafPackage" },
            },
        }),
        DashPackage = schema.new({
            id = id.from(_N, "UpdateOriginEndpointInput", "DashPackage"),
            type = "structure",
            name = "DashPackage",
            target_id = id.from(_N, "DashPackage"),
            target = M.DashPackage,
            traits = {
                [traits.JSON_NAME] = { name = "dashPackage" },
            },
        }),
        Description = schema.new({
            id = id.from(_N, "UpdateOriginEndpointInput", "Description"),
            type = "string",
            name = "Description",
            target_id = prelude.String.id,
            traits = {
                [traits.JSON_NAME] = { name = "description" },
            },
        }),
        HlsPackage = schema.new({
            id = id.from(_N, "UpdateOriginEndpointInput", "HlsPackage"),
            type = "structure",
            name = "HlsPackage",
            target_id = id.from(_N, "HlsPackage"),
            target = M.HlsPackage,
            traits = {
                [traits.JSON_NAME] = { name = "hlsPackage" },
            },
        }),
        Id = schema.new({
            id = id.from(_N, "UpdateOriginEndpointInput", "Id"),
            type = "string",
            name = "Id",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
        ManifestName = schema.new({
            id = id.from(_N, "UpdateOriginEndpointInput", "ManifestName"),
            type = "string",
            name = "ManifestName",
            target_id = prelude.String.id,
            traits = {
                [traits.JSON_NAME] = { name = "manifestName" },
            },
        }),
        MssPackage = schema.new({
            id = id.from(_N, "UpdateOriginEndpointInput", "MssPackage"),
            type = "structure",
            name = "MssPackage",
            target_id = id.from(_N, "MssPackage"),
            target = M.MssPackage,
            traits = {
                [traits.JSON_NAME] = { name = "mssPackage" },
            },
        }),
        Origination = schema.new({
            id = id.from(_N, "UpdateOriginEndpointInput", "Origination"),
            type = "string",
            name = "Origination",
            target_id = prelude.String.id,
            traits = {
                [traits.JSON_NAME] = { name = "origination" },
            },
        }),
        StartoverWindowSeconds = schema.new({
            id = id.from(_N, "UpdateOriginEndpointInput", "StartoverWindowSeconds"),
            type = "integer",
            name = "StartoverWindowSeconds",
            target_id = prelude.Integer.id,
            traits = {
                [traits.JSON_NAME] = { name = "startoverWindowSeconds" },
            },
        }),
        TimeDelaySeconds = schema.new({
            id = id.from(_N, "UpdateOriginEndpointInput", "TimeDelaySeconds"),
            type = "integer",
            name = "TimeDelaySeconds",
            target_id = prelude.Integer.id,
            traits = {
                [traits.JSON_NAME] = { name = "timeDelaySeconds" },
            },
        }),
        Whitelist = schema.new({
            id = id.from(_N, "UpdateOriginEndpointInput", "Whitelist"),
            type = "list",
            name = "Whitelist",
            target_id = prelude.Document.id,
            list_member = prelude.String,
            traits = {
                [traits.JSON_NAME] = { name = "whitelist" },
            },
        }),
    },
})

M.UpdateOriginEndpointOutput = schema.new({
    id = id.from(_N, "UpdateOriginEndpointResponse"),
    type = "structure",
    members = {
        Arn = schema.new({
            id = id.from(_N, "UpdateOriginEndpointOutput", "Arn"),
            type = "string",
            name = "Arn",
            target_id = prelude.String.id,
            traits = {
                [traits.JSON_NAME] = { name = "arn" },
            },
        }),
        Authorization = schema.new({
            id = id.from(_N, "UpdateOriginEndpointOutput", "Authorization"),
            type = "structure",
            name = "Authorization",
            target_id = id.from(_N, "Authorization"),
            target = M.Authorization,
            traits = {
                [traits.JSON_NAME] = { name = "authorization" },
            },
        }),
        ChannelId = schema.new({
            id = id.from(_N, "UpdateOriginEndpointOutput", "ChannelId"),
            type = "string",
            name = "ChannelId",
            target_id = prelude.String.id,
            traits = {
                [traits.JSON_NAME] = { name = "channelId" },
            },
        }),
        CmafPackage = schema.new({
            id = id.from(_N, "UpdateOriginEndpointOutput", "CmafPackage"),
            type = "structure",
            name = "CmafPackage",
            target_id = id.from(_N, "CmafPackage"),
            target = M.CmafPackage,
            traits = {
                [traits.JSON_NAME] = { name = "cmafPackage" },
            },
        }),
        CreatedAt = schema.new({
            id = id.from(_N, "UpdateOriginEndpointOutput", "CreatedAt"),
            type = "string",
            name = "CreatedAt",
            target_id = prelude.String.id,
            traits = {
                [traits.JSON_NAME] = { name = "createdAt" },
            },
        }),
        DashPackage = schema.new({
            id = id.from(_N, "UpdateOriginEndpointOutput", "DashPackage"),
            type = "structure",
            name = "DashPackage",
            target_id = id.from(_N, "DashPackage"),
            target = M.DashPackage,
            traits = {
                [traits.JSON_NAME] = { name = "dashPackage" },
            },
        }),
        Description = schema.new({
            id = id.from(_N, "UpdateOriginEndpointOutput", "Description"),
            type = "string",
            name = "Description",
            target_id = prelude.String.id,
            traits = {
                [traits.JSON_NAME] = { name = "description" },
            },
        }),
        HlsPackage = schema.new({
            id = id.from(_N, "UpdateOriginEndpointOutput", "HlsPackage"),
            type = "structure",
            name = "HlsPackage",
            target_id = id.from(_N, "HlsPackage"),
            target = M.HlsPackage,
            traits = {
                [traits.JSON_NAME] = { name = "hlsPackage" },
            },
        }),
        Id = schema.new({
            id = id.from(_N, "UpdateOriginEndpointOutput", "Id"),
            type = "string",
            name = "Id",
            target_id = prelude.String.id,
            traits = {
                [traits.JSON_NAME] = { name = "id" },
            },
        }),
        ManifestName = schema.new({
            id = id.from(_N, "UpdateOriginEndpointOutput", "ManifestName"),
            type = "string",
            name = "ManifestName",
            target_id = prelude.String.id,
            traits = {
                [traits.JSON_NAME] = { name = "manifestName" },
            },
        }),
        MssPackage = schema.new({
            id = id.from(_N, "UpdateOriginEndpointOutput", "MssPackage"),
            type = "structure",
            name = "MssPackage",
            target_id = id.from(_N, "MssPackage"),
            target = M.MssPackage,
            traits = {
                [traits.JSON_NAME] = { name = "mssPackage" },
            },
        }),
        Origination = schema.new({
            id = id.from(_N, "UpdateOriginEndpointOutput", "Origination"),
            type = "string",
            name = "Origination",
            target_id = prelude.String.id,
            traits = {
                [traits.JSON_NAME] = { name = "origination" },
            },
        }),
        StartoverWindowSeconds = schema.new({
            id = id.from(_N, "UpdateOriginEndpointOutput", "StartoverWindowSeconds"),
            type = "integer",
            name = "StartoverWindowSeconds",
            target_id = prelude.Integer.id,
            traits = {
                [traits.JSON_NAME] = { name = "startoverWindowSeconds" },
            },
        }),
        Tags = schema.new({
            id = id.from(_N, "UpdateOriginEndpointOutput", "Tags"),
            type = "map",
            name = "Tags",
            target_id = prelude.Document.id,
            map_key = prelude.String,
            map_value = prelude.String,
            traits = {
                [traits.JSON_NAME] = { name = "tags" },
            },
        }),
        TimeDelaySeconds = schema.new({
            id = id.from(_N, "UpdateOriginEndpointOutput", "TimeDelaySeconds"),
            type = "integer",
            name = "TimeDelaySeconds",
            target_id = prelude.Integer.id,
            traits = {
                [traits.JSON_NAME] = { name = "timeDelaySeconds" },
            },
        }),
        Url = schema.new({
            id = id.from(_N, "UpdateOriginEndpointOutput", "Url"),
            type = "string",
            name = "Url",
            target_id = prelude.String.id,
            traits = {
                [traits.JSON_NAME] = { name = "url" },
            },
        }),
        Whitelist = schema.new({
            id = id.from(_N, "UpdateOriginEndpointOutput", "Whitelist"),
            type = "list",
            name = "Whitelist",
            target_id = prelude.Document.id,
            list_member = prelude.String,
            traits = {
                [traits.JSON_NAME] = { name = "whitelist" },
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
