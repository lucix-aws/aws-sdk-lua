local M = {}

M.Protocol = {
    zixi_push = "zixi-push",
    rtp_fec = "rtp-fec",
    rtp = "rtp",
    zixi_pull = "zixi-pull",
    rist = "rist",
    st2110_jpegxs = "st2110-jpegxs",
    cdi = "cdi",
    srt_listener = "srt-listener",
    srt_caller = "srt-caller",
    fujitsu_qos = "fujitsu-qos",
    udp = "udp",
    ndi_speed_hq = "ndi-speed-hq",
}

M.AddBridgeNetworkOutputRequest = {
    type = "structure",
    members = {
        IpAddress = {
            type = "string",
            traits = {
                json_name = "ipAddress",
                required = true,
            },
        },
        Name = {
            type = "string",
            traits = {
                json_name = "name",
                required = true,
            },
        },
        NetworkName = {
            type = "string",
            traits = {
                json_name = "networkName",
                required = true,
            },
        },
        Port = {
            type = "integer",
            traits = {
                json_name = "port",
                required = true,
            },
        },
        Protocol = {
            type = "string",
            traits = {
                json_name = "protocol",
                required = true,
            },
        },
        Ttl = {
            type = "integer",
            traits = {
                json_name = "ttl",
                required = true,
            },
        },
    },
}

M.AddBridgeOutputRequest = {
    type = "structure",
    members = {
        NetworkOutput = setmetatable({ traits = {
            json_name = "networkOutput",
        } }, { __index = M.AddBridgeNetworkOutputRequest }),
    },
}

M.VpcInterfaceAttachment = {
    type = "structure",
    members = {
        VpcInterfaceName = {
            type = "string",
            traits = {
                json_name = "vpcInterfaceName",
            },
        },
    },
}

M.AddBridgeFlowSourceRequest = {
    type = "structure",
    members = {
        FlowArn = {
            type = "string",
            traits = {
                json_name = "flowArn",
                required = true,
            },
        },
        FlowVpcInterfaceAttachment = setmetatable({ traits = {
            json_name = "flowVpcInterfaceAttachment",
        } }, { __index = M.VpcInterfaceAttachment }),
        Name = {
            type = "string",
            traits = {
                json_name = "name",
                required = true,
            },
        },
    },
}

M.MulticastSourceSettings = {
    type = "structure",
    members = {
        MulticastSourceIp = {
            type = "string",
            traits = {
                json_name = "multicastSourceIp",
            },
        },
    },
}

M.AddBridgeNetworkSourceRequest = {
    type = "structure",
    members = {
        MulticastIp = {
            type = "string",
            traits = {
                json_name = "multicastIp",
                required = true,
            },
        },
        MulticastSourceSettings = setmetatable({ traits = {
            json_name = "multicastSourceSettings",
        } }, { __index = M.MulticastSourceSettings }),
        Name = {
            type = "string",
            traits = {
                json_name = "name",
                required = true,
            },
        },
        NetworkName = {
            type = "string",
            traits = {
                json_name = "networkName",
                required = true,
            },
        },
        Port = {
            type = "integer",
            traits = {
                json_name = "port",
                required = true,
            },
        },
        Protocol = {
            type = "string",
            traits = {
                json_name = "protocol",
                required = true,
            },
        },
    },
}

M.AddBridgeSourceRequest = {
    type = "structure",
    members = {
        FlowSource = setmetatable({ traits = {
            json_name = "flowSource",
        } }, { __index = M.AddBridgeFlowSourceRequest }),
        NetworkSource = setmetatable({ traits = {
            json_name = "networkSource",
        } }, { __index = M.AddBridgeNetworkSourceRequest }),
    },
}

M.Colorimetry = {
    BT601 = "BT601",
    BT709 = "BT709",
    BT2020 = "BT2020",
    BT2100 = "BT2100",
    ST2065_1 = "ST2065-1",
    ST2065_3 = "ST2065-3",
    XYZ = "XYZ",
}

M.Range = {
    NARROW = "NARROW",
    FULL = "FULL",
    FULLPROTECT = "FULLPROTECT",
}

M.ScanMode = {
    progressive = "progressive",
    interlace = "interlace",
    progressive_segmented_frame = "progressive-segmented-frame",
}

M.Tcs = {
    SDR = "SDR",
    PQ = "PQ",
    HLG = "HLG",
    LINEAR = "LINEAR",
    BT2100LINPQ = "BT2100LINPQ",
    BT2100LINHLG = "BT2100LINHLG",
    ST2065_1 = "ST2065-1",
    ST428_1 = "ST428-1",
    DENSITY = "DENSITY",
}

M.FmtpRequest = {
    type = "structure",
    members = {
        ChannelOrder = {
            type = "string",
            traits = {
                json_name = "channelOrder",
            },
        },
        Colorimetry = {
            type = "string",
            traits = {
                json_name = "colorimetry",
            },
        },
        ExactFramerate = {
            type = "string",
            traits = {
                json_name = "exactFramerate",
            },
        },
        Par = {
            type = "string",
            traits = {
                json_name = "par",
            },
        },
        Range = {
            type = "string",
            traits = {
                json_name = "range",
            },
        },
        ScanMode = {
            type = "string",
            traits = {
                json_name = "scanMode",
            },
        },
        Tcs = {
            type = "string",
            traits = {
                json_name = "tcs",
            },
        },
    },
}

M.MediaStreamAttributesRequest = {
    type = "structure",
    members = {
        Fmtp = setmetatable({ traits = {
            json_name = "fmtp",
        } }, { __index = M.FmtpRequest }),
        Lang = {
            type = "string",
            traits = {
                json_name = "lang",
            },
        },
    },
}

M.MediaStreamType = {
    video = "video",
    audio = "audio",
    ancillary_data = "ancillary-data",
}

M.AddMediaStreamRequest = {
    type = "structure",
    members = {
        Attributes = setmetatable({ traits = {
            json_name = "attributes",
        } }, { __index = M.MediaStreamAttributesRequest }),
        ClockRate = {
            type = "integer",
            traits = {
                json_name = "clockRate",
            },
        },
        Description = {
            type = "string",
            traits = {
                json_name = "description",
            },
        },
        MediaStreamId = {
            type = "integer",
            traits = {
                json_name = "mediaStreamId",
                required = true,
            },
        },
        MediaStreamName = {
            type = "string",
            traits = {
                json_name = "mediaStreamName",
                required = true,
            },
        },
        MediaStreamType = {
            type = "string",
            traits = {
                json_name = "mediaStreamType",
                required = true,
            },
        },
        VideoFormat = {
            type = "string",
            traits = {
                json_name = "videoFormat",
            },
        },
        MediaStreamTags = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
            traits = {
                json_name = "mediaStreamTags",
            },
        },
    },
}

M.Algorithm = {
    aes128 = "aes128",
    aes192 = "aes192",
    aes256 = "aes256",
}

M.KeyType = {
    speke = "speke",
    static_key = "static-key",
    srt_password = "srt-password",
}

M.Encryption = {
    type = "structure",
    members = {
        Algorithm = {
            type = "string",
            traits = {
                json_name = "algorithm",
            },
        },
        ConstantInitializationVector = {
            type = "string",
            traits = {
                json_name = "constantInitializationVector",
            },
        },
        DeviceId = {
            type = "string",
            traits = {
                json_name = "deviceId",
            },
        },
        KeyType = {
            type = "string",
            traits = {
                json_name = "keyType",
            },
        },
        Region = {
            type = "string",
            traits = {
                json_name = "region",
            },
        },
        ResourceId = {
            type = "string",
            traits = {
                json_name = "resourceId",
            },
        },
        RoleArn = {
            type = "string",
            traits = {
                json_name = "roleArn",
                required = true,
            },
        },
        SecretArn = {
            type = "string",
            traits = {
                json_name = "secretArn",
            },
        },
        Url = {
            type = "string",
            traits = {
                json_name = "url",
            },
        },
    },
}

M.InterfaceRequest = {
    type = "structure",
    members = {
        Name = {
            type = "string",
            traits = {
                json_name = "name",
                required = true,
            },
        },
    },
}

M.DestinationConfigurationRequest = {
    type = "structure",
    members = {
        DestinationIp = {
            type = "string",
            traits = {
                json_name = "destinationIp",
                required = true,
            },
        },
        DestinationPort = {
            type = "integer",
            traits = {
                json_name = "destinationPort",
                required = true,
            },
        },
        Interface = setmetatable({ traits = {
            json_name = "interface",
            required = true,
        } }, { __index = M.InterfaceRequest }),
    },
}

M.EncodingName = {
    jxsv = "jxsv",
    raw = "raw",
    smpte291 = "smpte291",
    pcm = "pcm",
}

M.EncoderProfile = {
    main = "main",
    high = "high",
}

M.EncodingParametersRequest = {
    type = "structure",
    members = {
        CompressionFactor = {
            type = "double",
            traits = {
                json_name = "compressionFactor",
                required = true,
            },
        },
        EncoderProfile = {
            type = "string",
            traits = {
                json_name = "encoderProfile",
                required = true,
            },
        },
    },
}

M.MediaStreamOutputConfigurationRequest = {
    type = "structure",
    members = {
        DestinationConfigurations = {
            type = "list",
            member = M.DestinationConfigurationRequest,
            traits = {
                json_name = "destinationConfigurations",
            },
        },
        EncodingName = {
            type = "string",
            traits = {
                json_name = "encodingName",
                required = true,
            },
        },
        EncodingParameters = setmetatable({ traits = {
            json_name = "encodingParameters",
        } }, { __index = M.EncodingParametersRequest }),
        MediaStreamName = {
            type = "string",
            traits = {
                json_name = "mediaStreamName",
                required = true,
            },
        },
    },
}

M.OutputStatus = {
    ENABLED = "ENABLED",
    DISABLED = "DISABLED",
}

M.State = {
    ENABLED = "ENABLED",
    DISABLED = "DISABLED",
}

M.AutomaticEncryptionKeyConfiguration = {
    type = "structure",
}

M.SecretsManagerEncryptionKeyConfiguration = {
    type = "structure",
    members = {
        SecretArn = {
            type = "string",
            traits = {
                json_name = "secretArn",
                required = true,
            },
        },
        RoleArn = {
            type = "string",
            traits = {
                json_name = "roleArn",
                required = true,
            },
        },
    },
}

M.FlowTransitEncryptionKeyConfiguration = {
    type = "union",
    members = {
        SecretsManager = setmetatable({ traits = {
            json_name = "secretsManager",
        } }, { __index = M.SecretsManagerEncryptionKeyConfiguration }),
        Automatic = setmetatable({ traits = {
            json_name = "automatic",
        } }, { __index = M.AutomaticEncryptionKeyConfiguration }),
    },
}

M.FlowTransitEncryptionKeyType = {
    SECRETS_MANAGER = "SECRETS_MANAGER",
    AUTOMATIC = "AUTOMATIC",
}

M.FlowTransitEncryption = {
    type = "structure",
    members = {
        EncryptionKeyType = {
            type = "string",
            traits = {
                json_name = "encryptionKeyType",
            },
        },
        EncryptionKeyConfiguration = setmetatable({ traits = {
            json_name = "encryptionKeyConfiguration",
            required = true,
        } }, { __index = M.FlowTransitEncryptionKeyConfiguration }),
    },
}

M.AddOutputRequest = {
    type = "structure",
    members = {
        CidrAllowList = {
            type = "list",
            member = { type = "string" },
            traits = {
                json_name = "cidrAllowList",
            },
        },
        Description = {
            type = "string",
            traits = {
                json_name = "description",
            },
        },
        Destination = {
            type = "string",
            traits = {
                json_name = "destination",
            },
        },
        Encryption = setmetatable({ traits = {
            json_name = "encryption",
        } }, { __index = M.Encryption }),
        MaxLatency = {
            type = "integer",
            traits = {
                json_name = "maxLatency",
            },
        },
        MediaStreamOutputConfigurations = {
            type = "list",
            member = M.MediaStreamOutputConfigurationRequest,
            traits = {
                json_name = "mediaStreamOutputConfigurations",
            },
        },
        MinLatency = {
            type = "integer",
            traits = {
                json_name = "minLatency",
            },
        },
        Name = {
            type = "string",
            traits = {
                json_name = "name",
            },
        },
        Port = {
            type = "integer",
            traits = {
                json_name = "port",
            },
        },
        Protocol = {
            type = "string",
            traits = {
                json_name = "protocol",
            },
        },
        RemoteId = {
            type = "string",
            traits = {
                json_name = "remoteId",
            },
        },
        SenderControlPort = {
            type = "integer",
            traits = {
                json_name = "senderControlPort",
            },
        },
        SmoothingLatency = {
            type = "integer",
            traits = {
                json_name = "smoothingLatency",
            },
        },
        StreamId = {
            type = "string",
            traits = {
                json_name = "streamId",
            },
        },
        VpcInterfaceAttachment = setmetatable({ traits = {
            json_name = "vpcInterfaceAttachment",
        } }, { __index = M.VpcInterfaceAttachment }),
        OutputStatus = {
            type = "string",
            traits = {
                json_name = "outputStatus",
            },
        },
        NdiSpeedHqQuality = {
            type = "integer",
            traits = {
                json_name = "ndiSpeedHqQuality",
            },
        },
        NdiProgramName = {
            type = "string",
            traits = {
                json_name = "ndiProgramName",
            },
        },
        OutputTags = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
            traits = {
                json_name = "outputTags",
            },
        },
        RouterIntegrationState = {
            type = "string",
            traits = {
                json_name = "routerIntegrationState",
            },
        },
        RouterIntegrationTransitEncryption = setmetatable({ traits = {
            json_name = "routerIntegrationTransitEncryption",
        } }, { __index = M.FlowTransitEncryption }),
    },
}

M.SilentAudio = {
    type = "structure",
    members = {
        State = {
            type = "string",
            traits = {
                json_name = "state",
            },
        },
        ThresholdSeconds = {
            type = "integer",
            traits = {
                json_name = "thresholdSeconds",
            },
        },
    },
}

M.AudioMonitoringSetting = {
    type = "structure",
    members = {
        SilentAudio = setmetatable({ traits = {
            json_name = "silentAudio",
        } }, { __index = M.SilentAudio }),
    },
}

M.BridgeFlowOutput = {
    type = "structure",
    members = {
        FlowArn = {
            type = "string",
            traits = {
                json_name = "flowArn",
                required = true,
            },
        },
        FlowSourceArn = {
            type = "string",
            traits = {
                json_name = "flowSourceArn",
                required = true,
            },
        },
        Name = {
            type = "string",
            traits = {
                json_name = "name",
                required = true,
            },
        },
    },
}

M.BridgeNetworkOutput = {
    type = "structure",
    members = {
        IpAddress = {
            type = "string",
            traits = {
                json_name = "ipAddress",
                required = true,
            },
        },
        Name = {
            type = "string",
            traits = {
                json_name = "name",
                required = true,
            },
        },
        NetworkName = {
            type = "string",
            traits = {
                json_name = "networkName",
                required = true,
            },
        },
        Port = {
            type = "integer",
            traits = {
                json_name = "port",
                required = true,
            },
        },
        Protocol = {
            type = "string",
            traits = {
                json_name = "protocol",
                required = true,
            },
        },
        Ttl = {
            type = "integer",
            traits = {
                json_name = "ttl",
                required = true,
            },
        },
    },
}

M.BridgeOutput = {
    type = "structure",
    members = {
        FlowOutput = setmetatable({ traits = {
            json_name = "flowOutput",
        } }, { __index = M.BridgeFlowOutput }),
        NetworkOutput = setmetatable({ traits = {
            json_name = "networkOutput",
        } }, { __index = M.BridgeNetworkOutput }),
    },
}

M.BridgeFlowSource = {
    type = "structure",
    members = {
        FlowArn = {
            type = "string",
            traits = {
                json_name = "flowArn",
                required = true,
            },
        },
        FlowVpcInterfaceAttachment = setmetatable({ traits = {
            json_name = "flowVpcInterfaceAttachment",
        } }, { __index = M.VpcInterfaceAttachment }),
        Name = {
            type = "string",
            traits = {
                json_name = "name",
                required = true,
            },
        },
        OutputArn = {
            type = "string",
            traits = {
                json_name = "outputArn",
            },
        },
    },
}

M.BridgeNetworkSource = {
    type = "structure",
    members = {
        MulticastIp = {
            type = "string",
            traits = {
                json_name = "multicastIp",
                required = true,
            },
        },
        MulticastSourceSettings = setmetatable({ traits = {
            json_name = "multicastSourceSettings",
        } }, { __index = M.MulticastSourceSettings }),
        Name = {
            type = "string",
            traits = {
                json_name = "name",
                required = true,
            },
        },
        NetworkName = {
            type = "string",
            traits = {
                json_name = "networkName",
                required = true,
            },
        },
        Port = {
            type = "integer",
            traits = {
                json_name = "port",
                required = true,
            },
        },
        Protocol = {
            type = "string",
            traits = {
                json_name = "protocol",
                required = true,
            },
        },
    },
}

M.BridgeSource = {
    type = "structure",
    members = {
        FlowSource = setmetatable({ traits = {
            json_name = "flowSource",
        } }, { __index = M.BridgeFlowSource }),
        NetworkSource = setmetatable({ traits = {
            json_name = "networkSource",
        } }, { __index = M.BridgeNetworkSource }),
    },
}

M.Interface = {
    type = "structure",
    members = {
        Name = {
            type = "string",
            traits = {
                json_name = "name",
                required = true,
            },
        },
    },
}

M.DestinationConfiguration = {
    type = "structure",
    members = {
        DestinationIp = {
            type = "string",
            traits = {
                json_name = "destinationIp",
                required = true,
            },
        },
        DestinationPort = {
            type = "integer",
            traits = {
                json_name = "destinationPort",
                required = true,
            },
        },
        Interface = setmetatable({ traits = {
            json_name = "interface",
            required = true,
        } }, { __index = M.Interface }),
        OutboundIp = {
            type = "string",
            traits = {
                json_name = "outboundIp",
                required = true,
            },
        },
    },
}

M.EntitlementStatus = {
    ENABLED = "ENABLED",
    DISABLED = "DISABLED",
}

M.Entitlement = {
    type = "structure",
    members = {
        DataTransferSubscriberFeePercent = {
            type = "integer",
            traits = {
                json_name = "dataTransferSubscriberFeePercent",
            },
        },
        Description = {
            type = "string",
            traits = {
                json_name = "description",
            },
        },
        Encryption = setmetatable({ traits = {
            json_name = "encryption",
        } }, { __index = M.Encryption }),
        EntitlementArn = {
            type = "string",
            traits = {
                json_name = "entitlementArn",
                required = true,
            },
        },
        EntitlementStatus = {
            type = "string",
            traits = {
                json_name = "entitlementStatus",
            },
        },
        Name = {
            type = "string",
            traits = {
                json_name = "name",
                required = true,
            },
        },
        Subscribers = {
            type = "list",
            member = { type = "string" },
            traits = {
                json_name = "subscribers",
                required = true,
            },
        },
    },
}

M.GatewayNetwork = {
    type = "structure",
    members = {
        CidrBlock = {
            type = "string",
            traits = {
                json_name = "cidrBlock",
                required = true,
            },
        },
        Name = {
            type = "string",
            traits = {
                json_name = "name",
                required = true,
            },
        },
    },
}

M.GrantEntitlementRequest = {
    type = "structure",
    members = {
        DataTransferSubscriberFeePercent = {
            type = "integer",
            traits = {
                json_name = "dataTransferSubscriberFeePercent",
            },
        },
        Description = {
            type = "string",
            traits = {
                json_name = "description",
            },
        },
        Encryption = setmetatable({ traits = {
            json_name = "encryption",
        } }, { __index = M.Encryption }),
        EntitlementStatus = {
            type = "string",
            traits = {
                json_name = "entitlementStatus",
            },
        },
        Name = {
            type = "string",
            traits = {
                json_name = "name",
            },
        },
        Subscribers = {
            type = "list",
            member = { type = "string" },
            traits = {
                json_name = "subscribers",
                required = true,
            },
        },
        EntitlementTags = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
            traits = {
                json_name = "entitlementTags",
            },
        },
    },
}

M.InputConfiguration = {
    type = "structure",
    members = {
        InputIp = {
            type = "string",
            traits = {
                json_name = "inputIp",
                required = true,
            },
        },
        InputPort = {
            type = "integer",
            traits = {
                json_name = "inputPort",
                required = true,
            },
        },
        Interface = setmetatable({ traits = {
            json_name = "interface",
            required = true,
        } }, { __index = M.Interface }),
    },
}

M.InputConfigurationRequest = {
    type = "structure",
    members = {
        InputPort = {
            type = "integer",
            traits = {
                json_name = "inputPort",
                required = true,
            },
        },
        Interface = setmetatable({ traits = {
            json_name = "interface",
            required = true,
        } }, { __index = M.InterfaceRequest }),
    },
}

M.BridgeState = {
    CREATING = "CREATING",
    STANDBY = "STANDBY",
    STARTING = "STARTING",
    DEPLOYING = "DEPLOYING",
    ACTIVE = "ACTIVE",
    STOPPING = "STOPPING",
    DELETING = "DELETING",
    DELETED = "DELETED",
    START_FAILED = "START_FAILED",
    START_PENDING = "START_PENDING",
    STOP_FAILED = "STOP_FAILED",
    UPDATING = "UPDATING",
}

M.ListedBridge = {
    type = "structure",
    members = {
        BridgeArn = {
            type = "string",
            traits = {
                json_name = "bridgeArn",
                required = true,
            },
        },
        BridgeState = {
            type = "string",
            traits = {
                json_name = "bridgeState",
                required = true,
            },
        },
        BridgeType = {
            type = "string",
            traits = {
                json_name = "bridgeType",
                required = true,
            },
        },
        Name = {
            type = "string",
            traits = {
                json_name = "name",
                required = true,
            },
        },
        PlacementArn = {
            type = "string",
            traits = {
                json_name = "placementArn",
                required = true,
            },
        },
    },
}

M.ListedEntitlement = {
    type = "structure",
    members = {
        DataTransferSubscriberFeePercent = {
            type = "integer",
            traits = {
                json_name = "dataTransferSubscriberFeePercent",
            },
        },
        EntitlementArn = {
            type = "string",
            traits = {
                json_name = "entitlementArn",
                required = true,
            },
        },
        EntitlementName = {
            type = "string",
            traits = {
                json_name = "entitlementName",
                required = true,
            },
        },
    },
}

M.MaintenanceDay = {
    Monday = "Monday",
    Tuesday = "Tuesday",
    Wednesday = "Wednesday",
    Thursday = "Thursday",
    Friday = "Friday",
    Saturday = "Saturday",
    Sunday = "Sunday",
}

M.Maintenance = {
    type = "structure",
    members = {
        MaintenanceDay = {
            type = "string",
            traits = {
                json_name = "maintenanceDay",
            },
        },
        MaintenanceDeadline = {
            type = "string",
            traits = {
                json_name = "maintenanceDeadline",
            },
        },
        MaintenanceScheduledDate = {
            type = "string",
            traits = {
                json_name = "maintenanceScheduledDate",
            },
        },
        MaintenanceStartHour = {
            type = "string",
            traits = {
                json_name = "maintenanceStartHour",
            },
        },
    },
}

M.SourceType = {
    OWNED = "OWNED",
    ENTITLED = "ENTITLED",
}

M.Status = {
    STANDBY = "STANDBY",
    ACTIVE = "ACTIVE",
    UPDATING = "UPDATING",
    DELETING = "DELETING",
    STARTING = "STARTING",
    STOPPING = "STOPPING",
    ERROR = "ERROR",
}

M.ListedFlow = {
    type = "structure",
    members = {
        AvailabilityZone = {
            type = "string",
            traits = {
                json_name = "availabilityZone",
                required = true,
            },
        },
        Description = {
            type = "string",
            traits = {
                json_name = "description",
                required = true,
            },
        },
        FlowArn = {
            type = "string",
            traits = {
                json_name = "flowArn",
                required = true,
            },
        },
        Name = {
            type = "string",
            traits = {
                json_name = "name",
                required = true,
            },
        },
        SourceType = {
            type = "string",
            traits = {
                json_name = "sourceType",
                required = true,
            },
        },
        Status = {
            type = "string",
            traits = {
                json_name = "status",
                required = true,
            },
        },
        Maintenance = setmetatable({ traits = {
            json_name = "maintenance",
        } }, { __index = M.Maintenance }),
    },
}

M.GatewayState = {
    CREATING = "CREATING",
    ACTIVE = "ACTIVE",
    UPDATING = "UPDATING",
    ERROR = "ERROR",
    DELETING = "DELETING",
    DELETED = "DELETED",
}

M.ListedGateway = {
    type = "structure",
    members = {
        GatewayArn = {
            type = "string",
            traits = {
                json_name = "gatewayArn",
                required = true,
            },
        },
        GatewayState = {
            type = "string",
            traits = {
                json_name = "gatewayState",
                required = true,
            },
        },
        Name = {
            type = "string",
            traits = {
                json_name = "name",
                required = true,
            },
        },
    },
}

M.InstanceState = {
    REGISTERING = "REGISTERING",
    ACTIVE = "ACTIVE",
    DEREGISTERING = "DEREGISTERING",
    DEREGISTERED = "DEREGISTERED",
    REGISTRATION_ERROR = "REGISTRATION_ERROR",
    DEREGISTRATION_ERROR = "DEREGISTRATION_ERROR",
}

M.ListedGatewayInstance = {
    type = "structure",
    members = {
        GatewayArn = {
            type = "string",
            traits = {
                json_name = "gatewayArn",
                required = true,
            },
        },
        GatewayInstanceArn = {
            type = "string",
            traits = {
                json_name = "gatewayInstanceArn",
                required = true,
            },
        },
        InstanceId = {
            type = "string",
            traits = {
                json_name = "instanceId",
                required = true,
            },
        },
        InstanceState = {
            type = "string",
            traits = {
                json_name = "instanceState",
            },
        },
    },
}

M.Fmtp = {
    type = "structure",
    members = {
        ChannelOrder = {
            type = "string",
            traits = {
                json_name = "channelOrder",
            },
        },
        Colorimetry = {
            type = "string",
            traits = {
                json_name = "colorimetry",
            },
        },
        ExactFramerate = {
            type = "string",
            traits = {
                json_name = "exactFramerate",
            },
        },
        Par = {
            type = "string",
            traits = {
                json_name = "par",
            },
        },
        Range = {
            type = "string",
            traits = {
                json_name = "range",
            },
        },
        ScanMode = {
            type = "string",
            traits = {
                json_name = "scanMode",
            },
        },
        Tcs = {
            type = "string",
            traits = {
                json_name = "tcs",
            },
        },
    },
}

M.MediaStreamAttributes = {
    type = "structure",
    members = {
        Fmtp = setmetatable({ traits = {
            json_name = "fmtp",
            required = true,
        } }, { __index = M.Fmtp }),
        Lang = {
            type = "string",
            traits = {
                json_name = "lang",
            },
        },
    },
}

M.MediaStream = {
    type = "structure",
    members = {
        Attributes = setmetatable({ traits = {
            json_name = "attributes",
        } }, { __index = M.MediaStreamAttributes }),
        ClockRate = {
            type = "integer",
            traits = {
                json_name = "clockRate",
            },
        },
        Description = {
            type = "string",
            traits = {
                json_name = "description",
            },
        },
        Fmt = {
            type = "integer",
            traits = {
                json_name = "fmt",
                required = true,
            },
        },
        MediaStreamId = {
            type = "integer",
            traits = {
                json_name = "mediaStreamId",
                required = true,
            },
        },
        MediaStreamName = {
            type = "string",
            traits = {
                json_name = "mediaStreamName",
                required = true,
            },
        },
        MediaStreamType = {
            type = "string",
            traits = {
                json_name = "mediaStreamType",
                required = true,
            },
        },
        VideoFormat = {
            type = "string",
            traits = {
                json_name = "videoFormat",
            },
        },
    },
}

M.EncodingParameters = {
    type = "structure",
    members = {
        CompressionFactor = {
            type = "double",
            traits = {
                json_name = "compressionFactor",
                required = true,
            },
        },
        EncoderProfile = {
            type = "string",
            traits = {
                json_name = "encoderProfile",
                required = true,
            },
        },
    },
}

M.MediaStreamOutputConfiguration = {
    type = "structure",
    members = {
        DestinationConfigurations = {
            type = "list",
            member = M.DestinationConfiguration,
            traits = {
                json_name = "destinationConfigurations",
            },
        },
        EncodingName = {
            type = "string",
            traits = {
                json_name = "encodingName",
                required = true,
            },
        },
        EncodingParameters = setmetatable({ traits = {
            json_name = "encodingParameters",
        } }, { __index = M.EncodingParameters }),
        MediaStreamName = {
            type = "string",
            traits = {
                json_name = "mediaStreamName",
                required = true,
            },
        },
    },
}

M.MediaStreamSourceConfiguration = {
    type = "structure",
    members = {
        EncodingName = {
            type = "string",
            traits = {
                json_name = "encodingName",
                required = true,
            },
        },
        InputConfigurations = {
            type = "list",
            member = M.InputConfiguration,
            traits = {
                json_name = "inputConfigurations",
            },
        },
        MediaStreamName = {
            type = "string",
            traits = {
                json_name = "mediaStreamName",
                required = true,
            },
        },
    },
}

M.MediaStreamSourceConfigurationRequest = {
    type = "structure",
    members = {
        EncodingName = {
            type = "string",
            traits = {
                json_name = "encodingName",
                required = true,
            },
        },
        InputConfigurations = {
            type = "list",
            member = M.InputConfigurationRequest,
            traits = {
                json_name = "inputConfigurations",
            },
        },
        MediaStreamName = {
            type = "string",
            traits = {
                json_name = "mediaStreamName",
                required = true,
            },
        },
    },
}

M.MessageDetail = {
    type = "structure",
    members = {
        Code = {
            type = "string",
            traits = {
                json_name = "code",
                required = true,
            },
        },
        Message = {
            type = "string",
            traits = {
                json_name = "message",
                required = true,
            },
        },
        ResourceName = {
            type = "string",
            traits = {
                json_name = "resourceName",
            },
        },
    },
}

M.NdiDiscoveryServerConfig = {
    type = "structure",
    members = {
        DiscoveryServerAddress = {
            type = "string",
            traits = {
                json_name = "discoveryServerAddress",
                required = true,
            },
        },
        DiscoveryServerPort = {
            type = "integer",
            traits = {
                json_name = "discoveryServerPort",
            },
        },
        VpcInterfaceAdapter = {
            type = "string",
            traits = {
                json_name = "vpcInterfaceAdapter",
                required = true,
            },
        },
    },
}

M.FrameResolution = {
    type = "structure",
    members = {
        FrameHeight = {
            type = "integer",
            traits = {
                json_name = "frameHeight",
                required = true,
            },
        },
        FrameWidth = {
            type = "integer",
            traits = {
                json_name = "frameWidth",
                required = true,
            },
        },
    },
}

M.NdiMediaStreamInfo = {
    type = "structure",
    members = {
        StreamType = {
            type = "string",
            traits = {
                json_name = "streamType",
                required = true,
            },
        },
        Codec = {
            type = "string",
            traits = {
                json_name = "codec",
                required = true,
            },
        },
        StreamId = {
            type = "integer",
            traits = {
                json_name = "streamId",
                required = true,
            },
        },
        ScanMode = {
            type = "string",
            traits = {
                json_name = "scanMode",
            },
        },
        FrameResolution = setmetatable({ traits = {
            json_name = "frameResolution",
        } }, { __index = M.FrameResolution }),
        FrameRate = {
            type = "string",
            traits = {
                json_name = "frameRate",
            },
        },
        Channels = {
            type = "integer",
            traits = {
                json_name = "channels",
            },
        },
        SampleRate = {
            type = "integer",
            traits = {
                json_name = "sampleRate",
            },
        },
    },
}

M.NdiSourceInfo = {
    type = "structure",
    members = {
        SourceName = {
            type = "string",
            traits = {
                json_name = "sourceName",
                required = true,
            },
        },
    },
}

M.DurationUnits = {
    MONTHS = "MONTHS",
}

M.PriceUnits = {
    HOURLY = "HOURLY",
}

M.ResourceType = {
    Mbps_Outbound_Bandwidth = "Mbps_Outbound_Bandwidth",
}

M.ResourceSpecification = {
    type = "structure",
    members = {
        ReservedBitrate = {
            type = "integer",
            traits = {
                json_name = "reservedBitrate",
            },
        },
        ResourceType = {
            type = "string",
            traits = {
                json_name = "resourceType",
                required = true,
            },
        },
    },
}

M.Offering = {
    type = "structure",
    members = {
        CurrencyCode = {
            type = "string",
            traits = {
                json_name = "currencyCode",
                required = true,
            },
        },
        Duration = {
            type = "integer",
            traits = {
                json_name = "duration",
                required = true,
            },
        },
        DurationUnits = {
            type = "string",
            traits = {
                json_name = "durationUnits",
                required = true,
            },
        },
        OfferingArn = {
            type = "string",
            traits = {
                json_name = "offeringArn",
                required = true,
            },
        },
        OfferingDescription = {
            type = "string",
            traits = {
                json_name = "offeringDescription",
                required = true,
            },
        },
        PricePerUnit = {
            type = "string",
            traits = {
                json_name = "pricePerUnit",
                required = true,
            },
        },
        PriceUnits = {
            type = "string",
            traits = {
                json_name = "priceUnits",
                required = true,
            },
        },
        ResourceSpecification = setmetatable({ traits = {
            json_name = "resourceSpecification",
            required = true,
        } }, { __index = M.ResourceSpecification }),
    },
}

M.NdiSourceSettings = {
    type = "structure",
    members = {
        SourceName = {
            type = "string",
            traits = {
                json_name = "sourceName",
            },
        },
    },
}

M.Transport = {
    type = "structure",
    members = {
        CidrAllowList = {
            type = "list",
            member = { type = "string" },
            traits = {
                json_name = "cidrAllowList",
            },
        },
        MaxBitrate = {
            type = "integer",
            traits = {
                json_name = "maxBitrate",
            },
        },
        MaxLatency = {
            type = "integer",
            traits = {
                json_name = "maxLatency",
            },
        },
        MaxSyncBuffer = {
            type = "integer",
            traits = {
                json_name = "maxSyncBuffer",
            },
        },
        MinLatency = {
            type = "integer",
            traits = {
                json_name = "minLatency",
            },
        },
        Protocol = {
            type = "string",
            traits = {
                json_name = "protocol",
                required = true,
            },
        },
        RemoteId = {
            type = "string",
            traits = {
                json_name = "remoteId",
            },
        },
        SenderControlPort = {
            type = "integer",
            traits = {
                json_name = "senderControlPort",
            },
        },
        SenderIpAddress = {
            type = "string",
            traits = {
                json_name = "senderIpAddress",
            },
        },
        SmoothingLatency = {
            type = "integer",
            traits = {
                json_name = "smoothingLatency",
            },
        },
        SourceListenerAddress = {
            type = "string",
            traits = {
                json_name = "sourceListenerAddress",
            },
        },
        SourceListenerPort = {
            type = "integer",
            traits = {
                json_name = "sourceListenerPort",
            },
        },
        StreamId = {
            type = "string",
            traits = {
                json_name = "streamId",
            },
        },
        NdiSpeedHqQuality = {
            type = "integer",
            traits = {
                json_name = "ndiSpeedHqQuality",
            },
        },
        NdiProgramName = {
            type = "string",
            traits = {
                json_name = "ndiProgramName",
            },
        },
        NdiSourceSettings = setmetatable({ traits = {
            json_name = "ndiSourceSettings",
        } }, { __index = M.NdiSourceSettings }),
    },
}

M.Output = {
    type = "structure",
    members = {
        DataTransferSubscriberFeePercent = {
            type = "integer",
            traits = {
                json_name = "dataTransferSubscriberFeePercent",
            },
        },
        Description = {
            type = "string",
            traits = {
                json_name = "description",
            },
        },
        Destination = {
            type = "string",
            traits = {
                json_name = "destination",
            },
        },
        Encryption = setmetatable({ traits = {
            json_name = "encryption",
        } }, { __index = M.Encryption }),
        EntitlementArn = {
            type = "string",
            traits = {
                json_name = "entitlementArn",
            },
        },
        ListenerAddress = {
            type = "string",
            traits = {
                json_name = "listenerAddress",
            },
        },
        MediaLiveInputArn = {
            type = "string",
            traits = {
                json_name = "mediaLiveInputArn",
            },
        },
        MediaStreamOutputConfigurations = {
            type = "list",
            member = M.MediaStreamOutputConfiguration,
            traits = {
                json_name = "mediaStreamOutputConfigurations",
            },
        },
        Name = {
            type = "string",
            traits = {
                json_name = "name",
                required = true,
            },
        },
        OutputArn = {
            type = "string",
            traits = {
                json_name = "outputArn",
                required = true,
            },
        },
        Port = {
            type = "integer",
            traits = {
                json_name = "port",
            },
        },
        Transport = setmetatable({ traits = {
            json_name = "transport",
        } }, { __index = M.Transport }),
        VpcInterfaceAttachment = setmetatable({ traits = {
            json_name = "vpcInterfaceAttachment",
        } }, { __index = M.VpcInterfaceAttachment }),
        BridgeArn = {
            type = "string",
            traits = {
                json_name = "bridgeArn",
            },
        },
        BridgePorts = {
            type = "list",
            member = { type = "integer" },
            traits = {
                json_name = "bridgePorts",
            },
        },
        OutputStatus = {
            type = "string",
            traits = {
                json_name = "outputStatus",
            },
        },
        PeerIpAddress = {
            type = "string",
            traits = {
                json_name = "peerIpAddress",
            },
        },
        RouterIntegrationState = {
            type = "string",
            traits = {
                json_name = "routerIntegrationState",
            },
        },
        RouterIntegrationTransitEncryption = setmetatable({ traits = {
            json_name = "routerIntegrationTransitEncryption",
        } }, { __index = M.FlowTransitEncryption }),
        ConnectedRouterInputArn = {
            type = "string",
            traits = {
                json_name = "connectedRouterInputArn",
            },
        },
    },
}

M.ReservationState = {
    ACTIVE = "ACTIVE",
    EXPIRED = "EXPIRED",
    PROCESSING = "PROCESSING",
    CANCELED = "CANCELED",
}

M.Reservation = {
    type = "structure",
    members = {
        CurrencyCode = {
            type = "string",
            traits = {
                json_name = "currencyCode",
                required = true,
            },
        },
        Duration = {
            type = "integer",
            traits = {
                json_name = "duration",
                required = true,
            },
        },
        DurationUnits = {
            type = "string",
            traits = {
                json_name = "durationUnits",
                required = true,
            },
        },
        End = {
            type = "string",
            traits = {
                json_name = "end",
                required = true,
            },
        },
        OfferingArn = {
            type = "string",
            traits = {
                json_name = "offeringArn",
                required = true,
            },
        },
        OfferingDescription = {
            type = "string",
            traits = {
                json_name = "offeringDescription",
                required = true,
            },
        },
        PricePerUnit = {
            type = "string",
            traits = {
                json_name = "pricePerUnit",
                required = true,
            },
        },
        PriceUnits = {
            type = "string",
            traits = {
                json_name = "priceUnits",
                required = true,
            },
        },
        ReservationArn = {
            type = "string",
            traits = {
                json_name = "reservationArn",
                required = true,
            },
        },
        ReservationName = {
            type = "string",
            traits = {
                json_name = "reservationName",
                required = true,
            },
        },
        ReservationState = {
            type = "string",
            traits = {
                json_name = "reservationState",
                required = true,
            },
        },
        ResourceSpecification = setmetatable({ traits = {
            json_name = "resourceSpecification",
            required = true,
        } }, { __index = M.ResourceSpecification }),
        Start = {
            type = "string",
            traits = {
                json_name = "start",
                required = true,
            },
        },
    },
}

M.SetGatewayBridgeSourceRequest = {
    type = "structure",
    members = {
        BridgeArn = {
            type = "string",
            traits = {
                json_name = "bridgeArn",
                required = true,
            },
        },
        VpcInterfaceAttachment = setmetatable({ traits = {
            json_name = "vpcInterfaceAttachment",
        } }, { __index = M.VpcInterfaceAttachment }),
    },
}

M.SetSourceRequest = {
    type = "structure",
    members = {
        Decryption = setmetatable({ traits = {
            json_name = "decryption",
        } }, { __index = M.Encryption }),
        Description = {
            type = "string",
            traits = {
                json_name = "description",
            },
        },
        EntitlementArn = {
            type = "string",
            traits = {
                json_name = "entitlementArn",
            },
        },
        IngestPort = {
            type = "integer",
            traits = {
                json_name = "ingestPort",
            },
        },
        MaxBitrate = {
            type = "integer",
            traits = {
                json_name = "maxBitrate",
            },
        },
        MaxLatency = {
            type = "integer",
            traits = {
                json_name = "maxLatency",
            },
        },
        MaxSyncBuffer = {
            type = "integer",
            traits = {
                json_name = "maxSyncBuffer",
            },
        },
        MediaStreamSourceConfigurations = {
            type = "list",
            member = M.MediaStreamSourceConfigurationRequest,
            traits = {
                json_name = "mediaStreamSourceConfigurations",
            },
        },
        MinLatency = {
            type = "integer",
            traits = {
                json_name = "minLatency",
            },
        },
        Name = {
            type = "string",
            traits = {
                json_name = "name",
            },
        },
        Protocol = {
            type = "string",
            traits = {
                json_name = "protocol",
            },
        },
        SenderControlPort = {
            type = "integer",
            traits = {
                json_name = "senderControlPort",
            },
        },
        SenderIpAddress = {
            type = "string",
            traits = {
                json_name = "senderIpAddress",
            },
        },
        SourceListenerAddress = {
            type = "string",
            traits = {
                json_name = "sourceListenerAddress",
            },
        },
        SourceListenerPort = {
            type = "integer",
            traits = {
                json_name = "sourceListenerPort",
            },
        },
        StreamId = {
            type = "string",
            traits = {
                json_name = "streamId",
            },
        },
        VpcInterfaceName = {
            type = "string",
            traits = {
                json_name = "vpcInterfaceName",
            },
        },
        WhitelistCidr = {
            type = "string",
            traits = {
                json_name = "whitelistCidr",
            },
        },
        GatewayBridgeSource = setmetatable({ traits = {
            json_name = "gatewayBridgeSource",
        } }, { __index = M.SetGatewayBridgeSourceRequest }),
        NdiSourceSettings = setmetatable({ traits = {
            json_name = "ndiSourceSettings",
        } }, { __index = M.NdiSourceSettings }),
        SourceTags = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
            traits = {
                json_name = "sourceTags",
            },
        },
        RouterIntegrationState = {
            type = "string",
            traits = {
                json_name = "routerIntegrationState",
            },
        },
        RouterIntegrationTransitDecryption = setmetatable({ traits = {
            json_name = "routerIntegrationTransitDecryption",
        } }, { __index = M.FlowTransitEncryption }),
    },
}

M.GatewayBridgeSource = {
    type = "structure",
    members = {
        BridgeArn = {
            type = "string",
            traits = {
                json_name = "bridgeArn",
                required = true,
            },
        },
        VpcInterfaceAttachment = setmetatable({ traits = {
            json_name = "vpcInterfaceAttachment",
        } }, { __index = M.VpcInterfaceAttachment }),
    },
}

M.Source = {
    type = "structure",
    members = {
        DataTransferSubscriberFeePercent = {
            type = "integer",
            traits = {
                json_name = "dataTransferSubscriberFeePercent",
            },
        },
        Decryption = setmetatable({ traits = {
            json_name = "decryption",
        } }, { __index = M.Encryption }),
        Description = {
            type = "string",
            traits = {
                json_name = "description",
            },
        },
        EntitlementArn = {
            type = "string",
            traits = {
                json_name = "entitlementArn",
            },
        },
        IngestIp = {
            type = "string",
            traits = {
                json_name = "ingestIp",
            },
        },
        IngestPort = {
            type = "integer",
            traits = {
                json_name = "ingestPort",
            },
        },
        MediaStreamSourceConfigurations = {
            type = "list",
            member = M.MediaStreamSourceConfiguration,
            traits = {
                json_name = "mediaStreamSourceConfigurations",
            },
        },
        Name = {
            type = "string",
            traits = {
                json_name = "name",
                required = true,
            },
        },
        SenderControlPort = {
            type = "integer",
            traits = {
                json_name = "senderControlPort",
            },
        },
        SenderIpAddress = {
            type = "string",
            traits = {
                json_name = "senderIpAddress",
            },
        },
        SourceArn = {
            type = "string",
            traits = {
                json_name = "sourceArn",
                required = true,
            },
        },
        Transport = setmetatable({ traits = {
            json_name = "transport",
        } }, { __index = M.Transport }),
        VpcInterfaceName = {
            type = "string",
            traits = {
                json_name = "vpcInterfaceName",
            },
        },
        WhitelistCidr = {
            type = "string",
            traits = {
                json_name = "whitelistCidr",
            },
        },
        GatewayBridgeSource = setmetatable({ traits = {
            json_name = "gatewayBridgeSource",
        } }, { __index = M.GatewayBridgeSource }),
        PeerIpAddress = {
            type = "string",
            traits = {
                json_name = "peerIpAddress",
            },
        },
        RouterIntegrationState = {
            type = "string",
            traits = {
                json_name = "routerIntegrationState",
            },
        },
        RouterIntegrationTransitDecryption = setmetatable({ traits = {
            json_name = "routerIntegrationTransitDecryption",
        } }, { __index = M.FlowTransitEncryption }),
        ConnectedRouterOutputArn = {
            type = "string",
            traits = {
                json_name = "connectedRouterOutputArn",
            },
        },
    },
}

M.TransportStream = {
    type = "structure",
    members = {
        Channels = {
            type = "integer",
            traits = {
                json_name = "channels",
            },
        },
        Codec = {
            type = "string",
            traits = {
                json_name = "codec",
            },
        },
        FrameRate = {
            type = "string",
            traits = {
                json_name = "frameRate",
            },
        },
        FrameResolution = setmetatable({ traits = {
            json_name = "frameResolution",
        } }, { __index = M.FrameResolution }),
        Pid = {
            type = "integer",
            traits = {
                json_name = "pid",
                required = true,
            },
        },
        SampleRate = {
            type = "integer",
            traits = {
                json_name = "sampleRate",
            },
        },
        SampleSize = {
            type = "integer",
            traits = {
                json_name = "sampleSize",
            },
        },
        StreamType = {
            type = "string",
            traits = {
                json_name = "streamType",
                required = true,
            },
        },
    },
}

M.TransportStreamProgram = {
    type = "structure",
    members = {
        PcrPid = {
            type = "integer",
            traits = {
                json_name = "pcrPid",
                required = true,
            },
        },
        ProgramName = {
            type = "string",
            traits = {
                json_name = "programName",
            },
        },
        ProgramNumber = {
            type = "integer",
            traits = {
                json_name = "programNumber",
                required = true,
            },
        },
        ProgramPid = {
            type = "integer",
            traits = {
                json_name = "programPid",
                required = true,
            },
        },
        Streams = {
            type = "list",
            member = M.TransportStream,
            traits = {
                json_name = "streams",
                required = true,
            },
        },
    },
}

M.BlackFrames = {
    type = "structure",
    members = {
        State = {
            type = "string",
            traits = {
                json_name = "state",
            },
        },
        ThresholdSeconds = {
            type = "integer",
            traits = {
                json_name = "thresholdSeconds",
            },
        },
    },
}

M.FrozenFrames = {
    type = "structure",
    members = {
        State = {
            type = "string",
            traits = {
                json_name = "state",
            },
        },
        ThresholdSeconds = {
            type = "integer",
            traits = {
                json_name = "thresholdSeconds",
            },
        },
    },
}

M.VideoMonitoringSetting = {
    type = "structure",
    members = {
        BlackFrames = setmetatable({ traits = {
            json_name = "blackFrames",
        } }, { __index = M.BlackFrames }),
        FrozenFrames = setmetatable({ traits = {
            json_name = "frozenFrames",
        } }, { __index = M.FrozenFrames }),
    },
}

M.NetworkInterfaceType = {
    ena = "ena",
    efa = "efa",
}

M.VpcInterface = {
    type = "structure",
    members = {
        Name = {
            type = "string",
            traits = {
                json_name = "name",
                required = true,
            },
        },
        NetworkInterfaceIds = {
            type = "list",
            member = { type = "string" },
            traits = {
                json_name = "networkInterfaceIds",
                required = true,
            },
        },
        NetworkInterfaceType = {
            type = "string",
            traits = {
                json_name = "networkInterfaceType",
                required = true,
            },
        },
        RoleArn = {
            type = "string",
            traits = {
                json_name = "roleArn",
                required = true,
            },
        },
        SecurityGroupIds = {
            type = "list",
            member = { type = "string" },
            traits = {
                json_name = "securityGroupIds",
                required = true,
            },
        },
        SubnetId = {
            type = "string",
            traits = {
                json_name = "subnetId",
                required = true,
            },
        },
    },
}

M.VpcInterfaceRequest = {
    type = "structure",
    members = {
        Name = {
            type = "string",
            traits = {
                json_name = "name",
                required = true,
            },
        },
        NetworkInterfaceType = {
            type = "string",
            traits = {
                json_name = "networkInterfaceType",
            },
        },
        RoleArn = {
            type = "string",
            traits = {
                json_name = "roleArn",
                required = true,
            },
        },
        SecurityGroupIds = {
            type = "list",
            member = { type = "string" },
            traits = {
                json_name = "securityGroupIds",
                required = true,
            },
        },
        SubnetId = {
            type = "string",
            traits = {
                json_name = "subnetId",
                required = true,
            },
        },
        VpcInterfaceTags = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
            traits = {
                json_name = "vpcInterfaceTags",
            },
        },
    },
}

M.AddBridgeOutputsInput = {
    type = "structure",
    members = {
        BridgeArn = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        Outputs = {
            type = "list",
            member = M.AddBridgeOutputRequest,
            traits = {
                json_name = "outputs",
                required = true,
            },
        },
    },
}

M.AddBridgeOutputsOutput = {
    type = "structure",
    members = {
        BridgeArn = {
            type = "string",
            traits = {
                json_name = "bridgeArn",
            },
        },
        Outputs = {
            type = "list",
            member = M.BridgeOutput,
            traits = {
                json_name = "outputs",
            },
        },
    },
}

M.BadRequestException = {
    type = "structure",
    error = "client",
    members = {
        Message = {
            type = "string",
            traits = {
                json_name = "message",
                required = true,
            },
        },
    },
}

M.ConflictException = {
    type = "structure",
    error = "client",
    members = {
        Message = {
            type = "string",
            traits = {
                json_name = "message",
                required = true,
            },
        },
    },
}

M.ForbiddenException = {
    type = "structure",
    error = "client",
    members = {
        Message = {
            type = "string",
            traits = {
                json_name = "message",
                required = true,
            },
        },
    },
}

M.InternalServerErrorException = {
    type = "structure",
    error = "server",
    members = {
        Message = {
            type = "string",
            traits = {
                json_name = "message",
                required = true,
            },
        },
    },
}

M.NotFoundException = {
    type = "structure",
    error = "client",
    members = {
        Message = {
            type = "string",
            traits = {
                json_name = "message",
                required = true,
            },
        },
    },
}

M.ServiceUnavailableException = {
    type = "structure",
    error = "server",
    members = {
        Message = {
            type = "string",
            traits = {
                json_name = "message",
                required = true,
            },
        },
    },
}

M.TooManyRequestsException = {
    type = "structure",
    error = "client",
    members = {
        Message = {
            type = "string",
            traits = {
                json_name = "message",
                required = true,
            },
        },
    },
}

M.AddBridgeSourcesInput = {
    type = "structure",
    members = {
        BridgeArn = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        Sources = {
            type = "list",
            member = M.AddBridgeSourceRequest,
            traits = {
                json_name = "sources",
                required = true,
            },
        },
    },
}

M.AddBridgeSourcesOutput = {
    type = "structure",
    members = {
        BridgeArn = {
            type = "string",
            traits = {
                json_name = "bridgeArn",
            },
        },
        Sources = {
            type = "list",
            member = M.BridgeSource,
            traits = {
                json_name = "sources",
            },
        },
    },
}

M.AddEgressGatewayBridgeRequest = {
    type = "structure",
    members = {
        MaxBitrate = {
            type = "integer",
            traits = {
                json_name = "maxBitrate",
                required = true,
            },
        },
    },
}

M.AddFlowMediaStreamsInput = {
    type = "structure",
    members = {
        FlowArn = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        MediaStreams = {
            type = "list",
            member = M.AddMediaStreamRequest,
            traits = {
                json_name = "mediaStreams",
                required = true,
            },
        },
    },
}

M.AddFlowMediaStreamsOutput = {
    type = "structure",
    members = {
        FlowArn = {
            type = "string",
            traits = {
                json_name = "flowArn",
            },
        },
        MediaStreams = {
            type = "list",
            member = M.MediaStream,
            traits = {
                json_name = "mediaStreams",
            },
        },
    },
}

M.AddFlowOutputs420Exception = {
    type = "structure",
    error = "client",
    members = {
        Message = {
            type = "string",
            traits = {
                json_name = "message",
                required = true,
            },
        },
    },
}

M.AddFlowOutputsInput = {
    type = "structure",
    members = {
        FlowArn = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        Outputs = {
            type = "list",
            member = M.AddOutputRequest,
            traits = {
                json_name = "outputs",
                required = true,
            },
        },
    },
}

M.AddFlowOutputsOutput = {
    type = "structure",
    members = {
        FlowArn = {
            type = "string",
            traits = {
                json_name = "flowArn",
            },
        },
        Outputs = {
            type = "list",
            member = M.Output,
            traits = {
                json_name = "outputs",
            },
        },
    },
}

M.AddFlowSourcesInput = {
    type = "structure",
    members = {
        FlowArn = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        Sources = {
            type = "list",
            member = M.SetSourceRequest,
            traits = {
                json_name = "sources",
                required = true,
            },
        },
    },
}

M.AddFlowSourcesOutput = {
    type = "structure",
    members = {
        FlowArn = {
            type = "string",
            traits = {
                json_name = "flowArn",
            },
        },
        Sources = {
            type = "list",
            member = M.Source,
            traits = {
                json_name = "sources",
            },
        },
    },
}

M.AddFlowVpcInterfacesInput = {
    type = "structure",
    members = {
        FlowArn = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        VpcInterfaces = {
            type = "list",
            member = M.VpcInterfaceRequest,
            traits = {
                json_name = "vpcInterfaces",
                required = true,
            },
        },
    },
}

M.AddFlowVpcInterfacesOutput = {
    type = "structure",
    members = {
        FlowArn = {
            type = "string",
            traits = {
                json_name = "flowArn",
            },
        },
        VpcInterfaces = {
            type = "list",
            member = M.VpcInterface,
            traits = {
                json_name = "vpcInterfaces",
            },
        },
    },
}

M.AddIngressGatewayBridgeRequest = {
    type = "structure",
    members = {
        MaxBitrate = {
            type = "integer",
            traits = {
                json_name = "maxBitrate",
                required = true,
            },
        },
        MaxOutputs = {
            type = "integer",
            traits = {
                json_name = "maxOutputs",
                required = true,
            },
        },
    },
}

M.AddMaintenance = {
    type = "structure",
    members = {
        MaintenanceDay = {
            type = "string",
            traits = {
                json_name = "maintenanceDay",
                required = true,
            },
        },
        MaintenanceStartHour = {
            type = "string",
            traits = {
                json_name = "maintenanceStartHour",
                required = true,
            },
        },
    },
}

M.BatchGetRouterInputInput = {
    type = "structure",
    members = {
        Arns = {
            type = "list",
            member = { type = "string" },
            traits = {
                http_query = "arns",
                required = true,
            },
        },
    },
}

M.BatchGetRouterInputError = {
    type = "structure",
    members = {
        Arn = {
            type = "string",
            traits = {
                json_name = "arn",
                required = true,
            },
        },
        Code = {
            type = "string",
            traits = {
                json_name = "code",
                required = true,
            },
        },
        Message = {
            type = "string",
            traits = {
                json_name = "message",
                required = true,
            },
        },
    },
}

M.RistRouterInputConfiguration = {
    type = "structure",
    members = {
        Port = {
            type = "integer",
            traits = {
                json_name = "port",
                required = true,
            },
        },
        RecoveryLatencyMilliseconds = {
            type = "long",
            traits = {
                json_name = "recoveryLatencyMilliseconds",
                required = true,
            },
        },
    },
}

M.ForwardErrorCorrectionState = {
    ENABLED = "ENABLED",
    DISABLED = "DISABLED",
}

M.RtpRouterInputConfiguration = {
    type = "structure",
    members = {
        Port = {
            type = "integer",
            traits = {
                json_name = "port",
                required = true,
            },
        },
        ForwardErrorCorrection = {
            type = "string",
            traits = {
                json_name = "forwardErrorCorrection",
            },
        },
    },
}

M.SrtDecryptionConfiguration = {
    type = "structure",
    members = {
        EncryptionKey = setmetatable({ traits = {
            json_name = "encryptionKey",
            required = true,
        } }, { __index = M.SecretsManagerEncryptionKeyConfiguration }),
    },
}

M.SrtCallerRouterInputConfiguration = {
    type = "structure",
    members = {
        SourceAddress = {
            type = "string",
            traits = {
                json_name = "sourceAddress",
                required = true,
            },
        },
        SourcePort = {
            type = "integer",
            traits = {
                json_name = "sourcePort",
                required = true,
            },
        },
        MinimumLatencyMilliseconds = {
            type = "long",
            traits = {
                json_name = "minimumLatencyMilliseconds",
                required = true,
            },
        },
        StreamId = {
            type = "string",
            traits = {
                json_name = "streamId",
            },
        },
        DecryptionConfiguration = setmetatable({ traits = {
            json_name = "decryptionConfiguration",
        } }, { __index = M.SrtDecryptionConfiguration }),
    },
}

M.SrtListenerRouterInputConfiguration = {
    type = "structure",
    members = {
        Port = {
            type = "integer",
            traits = {
                json_name = "port",
                required = true,
            },
        },
        MinimumLatencyMilliseconds = {
            type = "long",
            traits = {
                json_name = "minimumLatencyMilliseconds",
                required = true,
            },
        },
        DecryptionConfiguration = setmetatable({ traits = {
            json_name = "decryptionConfiguration",
        } }, { __index = M.SrtDecryptionConfiguration }),
    },
}

M.FailoverRouterInputProtocolConfiguration = {
    type = "union",
    members = {
        Rist = setmetatable({ traits = {
            json_name = "rist",
        } }, { __index = M.RistRouterInputConfiguration }),
        SrtListener = setmetatable({ traits = {
            json_name = "srtListener",
        } }, { __index = M.SrtListenerRouterInputConfiguration }),
        SrtCaller = setmetatable({ traits = {
            json_name = "srtCaller",
        } }, { __index = M.SrtCallerRouterInputConfiguration }),
        Rtp = setmetatable({ traits = {
            json_name = "rtp",
        } }, { __index = M.RtpRouterInputConfiguration }),
    },
}

M.FailoverInputSourcePriorityMode = {
    NO_PRIORITY = "NO_PRIORITY",
    PRIMARY_SECONDARY = "PRIMARY_SECONDARY",
}

M.FailoverRouterInputConfiguration = {
    type = "structure",
    members = {
        NetworkInterfaceArn = {
            type = "string",
            traits = {
                json_name = "networkInterfaceArn",
                required = true,
            },
        },
        ProtocolConfigurations = {
            type = "list",
            member = M.FailoverRouterInputProtocolConfiguration,
            traits = {
                json_name = "protocolConfigurations",
                required = true,
            },
        },
        SourcePriorityMode = {
            type = "string",
            traits = {
                json_name = "sourcePriorityMode",
                required = true,
            },
        },
        PrimarySourceIndex = {
            type = "integer",
            traits = {
                json_name = "primarySourceIndex",
            },
        },
    },
}

M.MediaConnectFlowRouterInputConfiguration = {
    type = "structure",
    members = {
        FlowArn = {
            type = "string",
            traits = {
                json_name = "flowArn",
            },
        },
        FlowOutputArn = {
            type = "string",
            traits = {
                json_name = "flowOutputArn",
            },
        },
        SourceTransitDecryption = setmetatable({ traits = {
            json_name = "sourceTransitDecryption",
            required = true,
        } }, { __index = M.FlowTransitEncryption }),
    },
}

M.MediaLiveChannelPipelineId = {
    PIPELINE_0 = "PIPELINE_0",
    PIPELINE_1 = "PIPELINE_1",
}

M.MediaLiveTransitEncryptionKeyConfiguration = {
    type = "union",
    members = {
        SecretsManager = setmetatable({ traits = {
            json_name = "secretsManager",
        } }, { __index = M.SecretsManagerEncryptionKeyConfiguration }),
        Automatic = setmetatable({ traits = {
            json_name = "automatic",
        } }, { __index = M.AutomaticEncryptionKeyConfiguration }),
    },
}

M.MediaLiveTransitEncryptionKeyType = {
    SECRETS_MANAGER = "SECRETS_MANAGER",
    AUTOMATIC = "AUTOMATIC",
}

M.MediaLiveTransitEncryption = {
    type = "structure",
    members = {
        EncryptionKeyType = {
            type = "string",
            traits = {
                json_name = "encryptionKeyType",
            },
        },
        EncryptionKeyConfiguration = setmetatable({ traits = {
            json_name = "encryptionKeyConfiguration",
            required = true,
        } }, { __index = M.MediaLiveTransitEncryptionKeyConfiguration }),
    },
}

M.MediaLiveChannelRouterInputConfiguration = {
    type = "structure",
    members = {
        MediaLiveChannelArn = {
            type = "string",
            traits = {
                json_name = "mediaLiveChannelArn",
            },
        },
        MediaLivePipelineId = {
            type = "string",
            traits = {
                json_name = "mediaLivePipelineId",
            },
        },
        MediaLiveChannelOutputName = {
            type = "string",
            traits = {
                json_name = "mediaLiveChannelOutputName",
            },
        },
        SourceTransitDecryption = setmetatable({ traits = {
            json_name = "sourceTransitDecryption",
            required = true,
        } }, { __index = M.MediaLiveTransitEncryption }),
    },
}

M.MergeRouterInputProtocolConfiguration = {
    type = "union",
    members = {
        Rtp = setmetatable({ traits = {
            json_name = "rtp",
        } }, { __index = M.RtpRouterInputConfiguration }),
        Rist = setmetatable({ traits = {
            json_name = "rist",
        } }, { __index = M.RistRouterInputConfiguration }),
    },
}

M.MergeRouterInputConfiguration = {
    type = "structure",
    members = {
        NetworkInterfaceArn = {
            type = "string",
            traits = {
                json_name = "networkInterfaceArn",
                required = true,
            },
        },
        ProtocolConfigurations = {
            type = "list",
            member = M.MergeRouterInputProtocolConfiguration,
            traits = {
                json_name = "protocolConfigurations",
                required = true,
            },
        },
        MergeRecoveryWindowMilliseconds = {
            type = "long",
            traits = {
                json_name = "mergeRecoveryWindowMilliseconds",
                required = true,
            },
        },
    },
}

M.RouterInputProtocol = {
    RTP = "RTP",
    RIST = "RIST",
    SRT_CALLER = "SRT_CALLER",
    SRT_LISTENER = "SRT_LISTENER",
}

M.RouterInputProtocolConfiguration = {
    type = "union",
    members = {
        Rist = setmetatable({ traits = {
            json_name = "rist",
        } }, { __index = M.RistRouterInputConfiguration }),
        SrtListener = setmetatable({ traits = {
            json_name = "srtListener",
        } }, { __index = M.SrtListenerRouterInputConfiguration }),
        SrtCaller = setmetatable({ traits = {
            json_name = "srtCaller",
        } }, { __index = M.SrtCallerRouterInputConfiguration }),
        Rtp = setmetatable({ traits = {
            json_name = "rtp",
        } }, { __index = M.RtpRouterInputConfiguration }),
    },
}

M.StandardRouterInputConfiguration = {
    type = "structure",
    members = {
        NetworkInterfaceArn = {
            type = "string",
            traits = {
                json_name = "networkInterfaceArn",
                required = true,
            },
        },
        ProtocolConfiguration = setmetatable({ traits = {
            json_name = "protocolConfiguration",
            required = true,
        } }, { __index = M.RouterInputProtocolConfiguration }),
        Protocol = {
            type = "string",
            traits = {
                json_name = "protocol",
            },
        },
    },
}

M.RouterInputConfiguration = {
    type = "union",
    members = {
        Standard = setmetatable({ traits = {
            json_name = "standard",
        } }, { __index = M.StandardRouterInputConfiguration }),
        MediaLiveChannel = setmetatable({ traits = {
            json_name = "mediaLiveChannel",
        } }, { __index = M.MediaLiveChannelRouterInputConfiguration }),
        Failover = setmetatable({ traits = {
            json_name = "failover",
        } }, { __index = M.FailoverRouterInputConfiguration }),
        MediaConnectFlow = setmetatable({ traits = {
            json_name = "mediaConnectFlow",
        } }, { __index = M.MediaConnectFlowRouterInputConfiguration }),
        Merge = setmetatable({ traits = {
            json_name = "merge",
        } }, { __index = M.MergeRouterInputConfiguration }),
    },
}

M.RouterInputType = {
    STANDARD = "STANDARD",
    FAILOVER = "FAILOVER",
    MERGE = "MERGE",
    MEDIACONNECT_FLOW = "MEDIACONNECT_FLOW",
    MEDIALIVE_CHANNEL = "MEDIALIVE_CHANNEL",
}

M.DefaultMaintenanceConfiguration = {
    type = "structure",
}

M.Day = {
    MONDAY = "MONDAY",
    TUESDAY = "TUESDAY",
    WEDNESDAY = "WEDNESDAY",
    THURSDAY = "THURSDAY",
    FRIDAY = "FRIDAY",
    SATURDAY = "SATURDAY",
    SUNDAY = "SUNDAY",
}

M.PreferredDayTimeMaintenanceConfiguration = {
    type = "structure",
    members = {
        Day = {
            type = "string",
            traits = {
                json_name = "day",
                required = true,
            },
        },
        Time = {
            type = "string",
            traits = {
                json_name = "time",
                required = true,
            },
        },
    },
}

M.MaintenanceConfiguration = {
    type = "union",
    members = {
        PreferredDayTime = setmetatable({ traits = {
            json_name = "preferredDayTime",
        } }, { __index = M.PreferredDayTimeMaintenanceConfiguration }),
        Default = setmetatable({ traits = {
            json_name = "default",
        } }, { __index = M.DefaultMaintenanceConfiguration }),
    },
}

M.WindowMaintenanceSchedule = {
    type = "structure",
    members = {
        Start = {
            type = "timestamp",
            traits = {
                json_name = "start",
                required = true,
                timestamp_format = "date-time",
            },
        },
        End = {
            type = "timestamp",
            traits = {
                json_name = "end",
                required = true,
                timestamp_format = "date-time",
            },
        },
        ScheduledTime = {
            type = "timestamp",
            traits = {
                json_name = "scheduledTime",
                required = true,
                timestamp_format = "date-time",
            },
        },
    },
}

M.MaintenanceSchedule = {
    type = "union",
    members = {
        Window = setmetatable({ traits = {
            json_name = "window",
        } }, { __index = M.WindowMaintenanceSchedule }),
    },
}

M.MaintenanceScheduleType = {
    WINDOW = "WINDOW",
}

M.MaintenanceType = {
    PREFERRED_DAY_TIME = "PREFERRED_DAY_TIME",
    DEFAULT = "DEFAULT",
}

M.RouterInputMessage = {
    type = "structure",
    members = {
        Code = {
            type = "string",
            traits = {
                json_name = "code",
                required = true,
            },
        },
        Message = {
            type = "string",
            traits = {
                json_name = "message",
                required = true,
            },
        },
    },
}

M.RoutingScope = {
    REGIONAL = "REGIONAL",
    GLOBAL = "GLOBAL",
}

M.RouterInputState = {
    CREATING = "CREATING",
    STANDBY = "STANDBY",
    STARTING = "STARTING",
    ACTIVE = "ACTIVE",
    STOPPING = "STOPPING",
    DELETING = "DELETING",
    UPDATING = "UPDATING",
    ERROR = "ERROR",
    RECOVERING = "RECOVERING",
    MIGRATING = "MIGRATING",
}

M.FailoverRouterInputIndexedStreamDetails = {
    type = "structure",
    members = {
        SourceIndex = {
            type = "integer",
            traits = {
                json_name = "sourceIndex",
                required = true,
            },
        },
        SourceIpAddress = {
            type = "string",
            traits = {
                json_name = "sourceIpAddress",
            },
        },
    },
}

M.FailoverRouterInputStreamDetails = {
    type = "structure",
    members = {
        SourceIndexZeroStreamDetails = setmetatable({ traits = {
            json_name = "sourceIndexZeroStreamDetails",
            required = true,
        } }, { __index = M.FailoverRouterInputIndexedStreamDetails }),
        SourceIndexOneStreamDetails = setmetatable({ traits = {
            json_name = "sourceIndexOneStreamDetails",
            required = true,
        } }, { __index = M.FailoverRouterInputIndexedStreamDetails }),
    },
}

M.MediaConnectFlowRouterInputStreamDetails = {
    type = "structure",
}

M.MediaLiveChannelRouterInputStreamDetails = {
    type = "structure",
}

M.MergeRouterInputIndexedStreamDetails = {
    type = "structure",
    members = {
        SourceIndex = {
            type = "integer",
            traits = {
                json_name = "sourceIndex",
                required = true,
            },
        },
        SourceIpAddress = {
            type = "string",
            traits = {
                json_name = "sourceIpAddress",
            },
        },
    },
}

M.MergeRouterInputStreamDetails = {
    type = "structure",
    members = {
        SourceIndexZeroStreamDetails = setmetatable({ traits = {
            json_name = "sourceIndexZeroStreamDetails",
            required = true,
        } }, { __index = M.MergeRouterInputIndexedStreamDetails }),
        SourceIndexOneStreamDetails = setmetatable({ traits = {
            json_name = "sourceIndexOneStreamDetails",
            required = true,
        } }, { __index = M.MergeRouterInputIndexedStreamDetails }),
    },
}

M.StandardRouterInputStreamDetails = {
    type = "structure",
    members = {
        SourceIpAddress = {
            type = "string",
            traits = {
                json_name = "sourceIpAddress",
            },
        },
    },
}

M.RouterInputStreamDetails = {
    type = "union",
    members = {
        Standard = setmetatable({ traits = {
            json_name = "standard",
        } }, { __index = M.StandardRouterInputStreamDetails }),
        MediaLiveChannel = setmetatable({ traits = {
            json_name = "mediaLiveChannel",
        } }, { __index = M.MediaLiveChannelRouterInputStreamDetails }),
        Failover = setmetatable({ traits = {
            json_name = "failover",
        } }, { __index = M.FailoverRouterInputStreamDetails }),
        MediaConnectFlow = setmetatable({ traits = {
            json_name = "mediaConnectFlow",
        } }, { __index = M.MediaConnectFlowRouterInputStreamDetails }),
        Merge = setmetatable({ traits = {
            json_name = "merge",
        } }, { __index = M.MergeRouterInputStreamDetails }),
    },
}

M.RouterInputTier = {
    INPUT_100 = "INPUT_100",
    INPUT_50 = "INPUT_50",
    INPUT_20 = "INPUT_20",
}

M.RouterInputTransitEncryptionKeyConfiguration = {
    type = "union",
    members = {
        SecretsManager = setmetatable({ traits = {
            json_name = "secretsManager",
        } }, { __index = M.SecretsManagerEncryptionKeyConfiguration }),
        Automatic = setmetatable({ traits = {
            json_name = "automatic",
        } }, { __index = M.AutomaticEncryptionKeyConfiguration }),
    },
}

M.RouterInputTransitEncryptionKeyType = {
    SECRETS_MANAGER = "SECRETS_MANAGER",
    AUTOMATIC = "AUTOMATIC",
}

M.RouterInputTransitEncryption = {
    type = "structure",
    members = {
        EncryptionKeyType = {
            type = "string",
            traits = {
                json_name = "encryptionKeyType",
            },
        },
        EncryptionKeyConfiguration = setmetatable({ traits = {
            json_name = "encryptionKeyConfiguration",
            required = true,
        } }, { __index = M.RouterInputTransitEncryptionKeyConfiguration }),
    },
}

M.RouterInput = {
    type = "structure",
    members = {
        Name = {
            type = "string",
            traits = {
                json_name = "name",
                required = true,
            },
        },
        Arn = {
            type = "string",
            traits = {
                json_name = "arn",
                required = true,
            },
        },
        Id = {
            type = "string",
            traits = {
                json_name = "id",
                required = true,
            },
        },
        State = {
            type = "string",
            traits = {
                json_name = "state",
                required = true,
            },
        },
        InputType = {
            type = "string",
            traits = {
                json_name = "inputType",
                required = true,
            },
        },
        Configuration = setmetatable({ traits = {
            json_name = "configuration",
            required = true,
        } }, { __index = M.RouterInputConfiguration }),
        RoutedOutputs = {
            type = "integer",
            traits = {
                json_name = "routedOutputs",
                required = true,
            },
        },
        MaximumRoutedOutputs = {
            type = "integer",
            traits = {
                json_name = "maximumRoutedOutputs",
            },
        },
        RegionName = {
            type = "string",
            traits = {
                json_name = "regionName",
                required = true,
            },
        },
        AvailabilityZone = {
            type = "string",
            traits = {
                json_name = "availabilityZone",
                required = true,
            },
        },
        MaximumBitrate = {
            type = "long",
            traits = {
                json_name = "maximumBitrate",
                required = true,
            },
        },
        Tier = {
            type = "string",
            traits = {
                json_name = "tier",
                required = true,
            },
        },
        RoutingScope = {
            type = "string",
            traits = {
                json_name = "routingScope",
                required = true,
            },
        },
        CreatedAt = {
            type = "timestamp",
            traits = {
                json_name = "createdAt",
                required = true,
                timestamp_format = "date-time",
            },
        },
        UpdatedAt = {
            type = "timestamp",
            traits = {
                json_name = "updatedAt",
                required = true,
                timestamp_format = "date-time",
            },
        },
        Messages = {
            type = "list",
            member = M.RouterInputMessage,
            traits = {
                json_name = "messages",
                required = true,
            },
        },
        TransitEncryption = setmetatable({ traits = {
            json_name = "transitEncryption",
            required = true,
        } }, { __index = M.RouterInputTransitEncryption }),
        Tags = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
            traits = {
                json_name = "tags",
                required = true,
            },
        },
        StreamDetails = setmetatable({ traits = {
            json_name = "streamDetails",
            required = true,
        } }, { __index = M.RouterInputStreamDetails }),
        IpAddress = {
            type = "string",
            traits = {
                json_name = "ipAddress",
            },
        },
        MaintenanceType = {
            type = "string",
            traits = {
                json_name = "maintenanceType",
                required = true,
            },
        },
        MaintenanceConfiguration = setmetatable({ traits = {
            json_name = "maintenanceConfiguration",
            required = true,
        } }, { __index = M.MaintenanceConfiguration }),
        MaintenanceScheduleType = {
            type = "string",
            traits = {
                json_name = "maintenanceScheduleType",
            },
        },
        MaintenanceSchedule = setmetatable({ traits = {
            json_name = "maintenanceSchedule",
        } }, { __index = M.MaintenanceSchedule }),
    },
}

M.BatchGetRouterInputOutput = {
    type = "structure",
    members = {
        RouterInputs = {
            type = "list",
            member = M.RouterInput,
            traits = {
                json_name = "routerInputs",
                required = true,
            },
        },
        Errors = {
            type = "list",
            member = M.BatchGetRouterInputError,
            traits = {
                json_name = "errors",
                required = true,
            },
        },
    },
}

M.BatchGetRouterNetworkInterfaceInput = {
    type = "structure",
    members = {
        Arns = {
            type = "list",
            member = { type = "string" },
            traits = {
                http_query = "arns",
                required = true,
            },
        },
    },
}

M.BatchGetRouterNetworkInterfaceError = {
    type = "structure",
    members = {
        Arn = {
            type = "string",
            traits = {
                json_name = "arn",
                required = true,
            },
        },
        Code = {
            type = "string",
            traits = {
                json_name = "code",
                required = true,
            },
        },
        Message = {
            type = "string",
            traits = {
                json_name = "message",
                required = true,
            },
        },
    },
}

M.PublicRouterNetworkInterfaceRule = {
    type = "structure",
    members = {
        Cidr = {
            type = "string",
            traits = {
                json_name = "cidr",
                required = true,
            },
        },
    },
}

M.PublicRouterNetworkInterfaceConfiguration = {
    type = "structure",
    members = {
        AllowRules = {
            type = "list",
            member = M.PublicRouterNetworkInterfaceRule,
            traits = {
                json_name = "allowRules",
                required = true,
            },
        },
    },
}

M.VpcRouterNetworkInterfaceConfiguration = {
    type = "structure",
    members = {
        SecurityGroupIds = {
            type = "list",
            member = { type = "string" },
            traits = {
                json_name = "securityGroupIds",
                required = true,
            },
        },
        SubnetId = {
            type = "string",
            traits = {
                json_name = "subnetId",
                required = true,
            },
        },
    },
}

M.RouterNetworkInterfaceConfiguration = {
    type = "union",
    members = {
        Public = setmetatable({ traits = {
            json_name = "public",
        } }, { __index = M.PublicRouterNetworkInterfaceConfiguration }),
        Vpc = setmetatable({ traits = {
            json_name = "vpc",
        } }, { __index = M.VpcRouterNetworkInterfaceConfiguration }),
    },
}

M.RouterNetworkInterfaceType = {
    PUBLIC = "PUBLIC",
    VPC = "VPC",
}

M.RouterNetworkInterfaceState = {
    CREATING = "CREATING",
    ACTIVE = "ACTIVE",
    UPDATING = "UPDATING",
    DELETING = "DELETING",
    ERROR = "ERROR",
    RECOVERING = "RECOVERING",
}

M.RouterNetworkInterface = {
    type = "structure",
    members = {
        Name = {
            type = "string",
            traits = {
                json_name = "name",
                required = true,
            },
        },
        Arn = {
            type = "string",
            traits = {
                json_name = "arn",
                required = true,
            },
        },
        Id = {
            type = "string",
            traits = {
                json_name = "id",
                required = true,
            },
        },
        State = {
            type = "string",
            traits = {
                json_name = "state",
                required = true,
            },
        },
        NetworkInterfaceType = {
            type = "string",
            traits = {
                json_name = "networkInterfaceType",
                required = true,
            },
        },
        Configuration = setmetatable({ traits = {
            json_name = "configuration",
            required = true,
        } }, { __index = M.RouterNetworkInterfaceConfiguration }),
        AssociatedOutputCount = {
            type = "integer",
            traits = {
                json_name = "associatedOutputCount",
                required = true,
            },
        },
        AssociatedInputCount = {
            type = "integer",
            traits = {
                json_name = "associatedInputCount",
                required = true,
            },
        },
        RegionName = {
            type = "string",
            traits = {
                json_name = "regionName",
                required = true,
            },
        },
        CreatedAt = {
            type = "timestamp",
            traits = {
                json_name = "createdAt",
                required = true,
                timestamp_format = "date-time",
            },
        },
        UpdatedAt = {
            type = "timestamp",
            traits = {
                json_name = "updatedAt",
                required = true,
                timestamp_format = "date-time",
            },
        },
        Tags = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
            traits = {
                json_name = "tags",
                required = true,
            },
        },
    },
}

M.BatchGetRouterNetworkInterfaceOutput = {
    type = "structure",
    members = {
        RouterNetworkInterfaces = {
            type = "list",
            member = M.RouterNetworkInterface,
            traits = {
                json_name = "routerNetworkInterfaces",
                required = true,
            },
        },
        Errors = {
            type = "list",
            member = M.BatchGetRouterNetworkInterfaceError,
            traits = {
                json_name = "errors",
                required = true,
            },
        },
    },
}

M.BatchGetRouterOutputInput = {
    type = "structure",
    members = {
        Arns = {
            type = "list",
            member = { type = "string" },
            traits = {
                http_query = "arns",
                required = true,
            },
        },
    },
}

M.BatchGetRouterOutputError = {
    type = "structure",
    members = {
        Arn = {
            type = "string",
            traits = {
                json_name = "arn",
                required = true,
            },
        },
        Code = {
            type = "string",
            traits = {
                json_name = "code",
                required = true,
            },
        },
        Message = {
            type = "string",
            traits = {
                json_name = "message",
                required = true,
            },
        },
    },
}

M.MediaConnectFlowRouterOutputConfiguration = {
    type = "structure",
    members = {
        FlowArn = {
            type = "string",
            traits = {
                json_name = "flowArn",
            },
        },
        FlowSourceArn = {
            type = "string",
            traits = {
                json_name = "flowSourceArn",
            },
        },
        DestinationTransitEncryption = setmetatable({ traits = {
            json_name = "destinationTransitEncryption",
            required = true,
        } }, { __index = M.FlowTransitEncryption }),
    },
}

M.MediaLiveInputPipelineId = {
    PIPELINE_0 = "PIPELINE_0",
    PIPELINE_1 = "PIPELINE_1",
}

M.MediaLiveInputRouterOutputConfiguration = {
    type = "structure",
    members = {
        MediaLiveInputArn = {
            type = "string",
            traits = {
                json_name = "mediaLiveInputArn",
            },
        },
        MediaLivePipelineId = {
            type = "string",
            traits = {
                json_name = "mediaLivePipelineId",
            },
        },
        DestinationTransitEncryption = setmetatable({ traits = {
            json_name = "destinationTransitEncryption",
            required = true,
        } }, { __index = M.MediaLiveTransitEncryption }),
    },
}

M.RouterOutputProtocol = {
    RTP = "RTP",
    RIST = "RIST",
    SRT_CALLER = "SRT_CALLER",
    SRT_LISTENER = "SRT_LISTENER",
}

M.RistRouterOutputConfiguration = {
    type = "structure",
    members = {
        DestinationAddress = {
            type = "string",
            traits = {
                json_name = "destinationAddress",
                required = true,
            },
        },
        DestinationPort = {
            type = "integer",
            traits = {
                json_name = "destinationPort",
                required = true,
            },
        },
    },
}

M.RtpRouterOutputConfiguration = {
    type = "structure",
    members = {
        DestinationAddress = {
            type = "string",
            traits = {
                json_name = "destinationAddress",
                required = true,
            },
        },
        DestinationPort = {
            type = "integer",
            traits = {
                json_name = "destinationPort",
                required = true,
            },
        },
        ForwardErrorCorrection = {
            type = "string",
            traits = {
                json_name = "forwardErrorCorrection",
            },
        },
    },
}

M.SrtEncryptionConfiguration = {
    type = "structure",
    members = {
        EncryptionKey = setmetatable({ traits = {
            json_name = "encryptionKey",
            required = true,
        } }, { __index = M.SecretsManagerEncryptionKeyConfiguration }),
    },
}

M.SrtCallerRouterOutputConfiguration = {
    type = "structure",
    members = {
        DestinationAddress = {
            type = "string",
            traits = {
                json_name = "destinationAddress",
                required = true,
            },
        },
        DestinationPort = {
            type = "integer",
            traits = {
                json_name = "destinationPort",
                required = true,
            },
        },
        MinimumLatencyMilliseconds = {
            type = "long",
            traits = {
                json_name = "minimumLatencyMilliseconds",
                required = true,
            },
        },
        StreamId = {
            type = "string",
            traits = {
                json_name = "streamId",
            },
        },
        EncryptionConfiguration = setmetatable({ traits = {
            json_name = "encryptionConfiguration",
        } }, { __index = M.SrtEncryptionConfiguration }),
    },
}

M.SrtListenerRouterOutputConfiguration = {
    type = "structure",
    members = {
        Port = {
            type = "integer",
            traits = {
                json_name = "port",
                required = true,
            },
        },
        MinimumLatencyMilliseconds = {
            type = "long",
            traits = {
                json_name = "minimumLatencyMilliseconds",
                required = true,
            },
        },
        EncryptionConfiguration = setmetatable({ traits = {
            json_name = "encryptionConfiguration",
        } }, { __index = M.SrtEncryptionConfiguration }),
    },
}

M.RouterOutputProtocolConfiguration = {
    type = "union",
    members = {
        Rist = setmetatable({ traits = {
            json_name = "rist",
        } }, { __index = M.RistRouterOutputConfiguration }),
        SrtListener = setmetatable({ traits = {
            json_name = "srtListener",
        } }, { __index = M.SrtListenerRouterOutputConfiguration }),
        SrtCaller = setmetatable({ traits = {
            json_name = "srtCaller",
        } }, { __index = M.SrtCallerRouterOutputConfiguration }),
        Rtp = setmetatable({ traits = {
            json_name = "rtp",
        } }, { __index = M.RtpRouterOutputConfiguration }),
    },
}

M.StandardRouterOutputConfiguration = {
    type = "structure",
    members = {
        NetworkInterfaceArn = {
            type = "string",
            traits = {
                json_name = "networkInterfaceArn",
                required = true,
            },
        },
        ProtocolConfiguration = setmetatable({ traits = {
            json_name = "protocolConfiguration",
            required = true,
        } }, { __index = M.RouterOutputProtocolConfiguration }),
        Protocol = {
            type = "string",
            traits = {
                json_name = "protocol",
            },
        },
    },
}

M.RouterOutputConfiguration = {
    type = "union",
    members = {
        Standard = setmetatable({ traits = {
            json_name = "standard",
        } }, { __index = M.StandardRouterOutputConfiguration }),
        MediaConnectFlow = setmetatable({ traits = {
            json_name = "mediaConnectFlow",
        } }, { __index = M.MediaConnectFlowRouterOutputConfiguration }),
        MediaLiveInput = setmetatable({ traits = {
            json_name = "mediaLiveInput",
        } }, { __index = M.MediaLiveInputRouterOutputConfiguration }),
    },
}

M.RouterOutputMessage = {
    type = "structure",
    members = {
        Code = {
            type = "string",
            traits = {
                json_name = "code",
                required = true,
            },
        },
        Message = {
            type = "string",
            traits = {
                json_name = "message",
                required = true,
            },
        },
    },
}

M.RouterOutputType = {
    STANDARD = "STANDARD",
    MEDIACONNECT_FLOW = "MEDIACONNECT_FLOW",
    MEDIALIVE_INPUT = "MEDIALIVE_INPUT",
}

M.RouterOutputRoutedState = {
    ROUTED = "ROUTED",
    ROUTING = "ROUTING",
    UNROUTED = "UNROUTED",
}

M.RouterOutputState = {
    CREATING = "CREATING",
    STANDBY = "STANDBY",
    STARTING = "STARTING",
    ACTIVE = "ACTIVE",
    STOPPING = "STOPPING",
    DELETING = "DELETING",
    UPDATING = "UPDATING",
    ERROR = "ERROR",
    RECOVERING = "RECOVERING",
    MIGRATING = "MIGRATING",
}

M.MediaConnectFlowRouterOutputStreamDetails = {
    type = "structure",
}

M.MediaLiveInputRouterOutputStreamDetails = {
    type = "structure",
}

M.StandardRouterOutputStreamDetails = {
    type = "structure",
    members = {
        DestinationIpAddress = {
            type = "string",
            traits = {
                json_name = "destinationIpAddress",
            },
        },
    },
}

M.RouterOutputStreamDetails = {
    type = "union",
    members = {
        Standard = setmetatable({ traits = {
            json_name = "standard",
        } }, { __index = M.StandardRouterOutputStreamDetails }),
        MediaConnectFlow = setmetatable({ traits = {
            json_name = "mediaConnectFlow",
        } }, { __index = M.MediaConnectFlowRouterOutputStreamDetails }),
        MediaLiveInput = setmetatable({ traits = {
            json_name = "mediaLiveInput",
        } }, { __index = M.MediaLiveInputRouterOutputStreamDetails }),
    },
}

M.RouterOutputTier = {
    OUTPUT_100 = "OUTPUT_100",
    OUTPUT_50 = "OUTPUT_50",
    OUTPUT_20 = "OUTPUT_20",
}

M.RouterOutput = {
    type = "structure",
    members = {
        Name = {
            type = "string",
            traits = {
                json_name = "name",
                required = true,
            },
        },
        Arn = {
            type = "string",
            traits = {
                json_name = "arn",
                required = true,
            },
        },
        Id = {
            type = "string",
            traits = {
                json_name = "id",
                required = true,
            },
        },
        State = {
            type = "string",
            traits = {
                json_name = "state",
                required = true,
            },
        },
        OutputType = {
            type = "string",
            traits = {
                json_name = "outputType",
                required = true,
            },
        },
        Configuration = setmetatable({ traits = {
            json_name = "configuration",
            required = true,
        } }, { __index = M.RouterOutputConfiguration }),
        RoutedState = {
            type = "string",
            traits = {
                json_name = "routedState",
                required = true,
            },
        },
        RegionName = {
            type = "string",
            traits = {
                json_name = "regionName",
                required = true,
            },
        },
        AvailabilityZone = {
            type = "string",
            traits = {
                json_name = "availabilityZone",
                required = true,
            },
        },
        MaximumBitrate = {
            type = "long",
            traits = {
                json_name = "maximumBitrate",
                required = true,
            },
        },
        RoutingScope = {
            type = "string",
            traits = {
                json_name = "routingScope",
                required = true,
            },
        },
        Tier = {
            type = "string",
            traits = {
                json_name = "tier",
                required = true,
            },
        },
        CreatedAt = {
            type = "timestamp",
            traits = {
                json_name = "createdAt",
                required = true,
                timestamp_format = "date-time",
            },
        },
        UpdatedAt = {
            type = "timestamp",
            traits = {
                json_name = "updatedAt",
                required = true,
                timestamp_format = "date-time",
            },
        },
        Messages = {
            type = "list",
            member = M.RouterOutputMessage,
            traits = {
                json_name = "messages",
                required = true,
            },
        },
        Tags = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
            traits = {
                json_name = "tags",
                required = true,
            },
        },
        StreamDetails = setmetatable({ traits = {
            json_name = "streamDetails",
            required = true,
        } }, { __index = M.RouterOutputStreamDetails }),
        IpAddress = {
            type = "string",
            traits = {
                json_name = "ipAddress",
            },
        },
        RoutedInputArn = {
            type = "string",
            traits = {
                json_name = "routedInputArn",
            },
        },
        MaintenanceType = {
            type = "string",
            traits = {
                json_name = "maintenanceType",
                required = true,
            },
        },
        MaintenanceConfiguration = setmetatable({ traits = {
            json_name = "maintenanceConfiguration",
            required = true,
        } }, { __index = M.MaintenanceConfiguration }),
        MaintenanceScheduleType = {
            type = "string",
            traits = {
                json_name = "maintenanceScheduleType",
            },
        },
        MaintenanceSchedule = setmetatable({ traits = {
            json_name = "maintenanceSchedule",
        } }, { __index = M.MaintenanceSchedule }),
    },
}

M.BatchGetRouterOutputOutput = {
    type = "structure",
    members = {
        RouterOutputs = {
            type = "list",
            member = M.RouterOutput,
            traits = {
                json_name = "routerOutputs",
                required = true,
            },
        },
        Errors = {
            type = "list",
            member = M.BatchGetRouterOutputError,
            traits = {
                json_name = "errors",
                required = true,
            },
        },
    },
}

M.EgressGatewayBridge = {
    type = "structure",
    members = {
        InstanceId = {
            type = "string",
            traits = {
                json_name = "instanceId",
            },
        },
        MaxBitrate = {
            type = "integer",
            traits = {
                json_name = "maxBitrate",
                required = true,
            },
        },
    },
}

M.IngressGatewayBridge = {
    type = "structure",
    members = {
        InstanceId = {
            type = "string",
            traits = {
                json_name = "instanceId",
            },
        },
        MaxBitrate = {
            type = "integer",
            traits = {
                json_name = "maxBitrate",
                required = true,
            },
        },
        MaxOutputs = {
            type = "integer",
            traits = {
                json_name = "maxOutputs",
                required = true,
            },
        },
    },
}

M.FailoverMode = {
    MERGE = "MERGE",
    FAILOVER = "FAILOVER",
}

M.SourcePriority = {
    type = "structure",
    members = {
        PrimarySource = {
            type = "string",
            traits = {
                json_name = "primarySource",
            },
        },
    },
}

M.FailoverConfig = {
    type = "structure",
    members = {
        FailoverMode = {
            type = "string",
            traits = {
                json_name = "failoverMode",
            },
        },
        RecoveryWindow = {
            type = "integer",
            traits = {
                json_name = "recoveryWindow",
            },
        },
        SourcePriority = setmetatable({ traits = {
            json_name = "sourcePriority",
        } }, { __index = M.SourcePriority }),
        State = {
            type = "string",
            traits = {
                json_name = "state",
            },
        },
    },
}

M.Bridge = {
    type = "structure",
    members = {
        BridgeArn = {
            type = "string",
            traits = {
                json_name = "bridgeArn",
                required = true,
            },
        },
        BridgeMessages = {
            type = "list",
            member = M.MessageDetail,
            traits = {
                json_name = "bridgeMessages",
            },
        },
        BridgeState = {
            type = "string",
            traits = {
                json_name = "bridgeState",
                required = true,
            },
        },
        EgressGatewayBridge = setmetatable({ traits = {
            json_name = "egressGatewayBridge",
        } }, { __index = M.EgressGatewayBridge }),
        IngressGatewayBridge = setmetatable({ traits = {
            json_name = "ingressGatewayBridge",
        } }, { __index = M.IngressGatewayBridge }),
        Name = {
            type = "string",
            traits = {
                json_name = "name",
                required = true,
            },
        },
        Outputs = {
            type = "list",
            member = M.BridgeOutput,
            traits = {
                json_name = "outputs",
            },
        },
        PlacementArn = {
            type = "string",
            traits = {
                json_name = "placementArn",
                required = true,
            },
        },
        SourceFailoverConfig = setmetatable({ traits = {
            json_name = "sourceFailoverConfig",
        } }, { __index = M.FailoverConfig }),
        Sources = {
            type = "list",
            member = M.BridgeSource,
            traits = {
                json_name = "sources",
            },
        },
    },
}

M.BridgePlacement = {
    AVAILABLE = "AVAILABLE",
    LOCKED = "LOCKED",
}

M.CreateBridge420Exception = {
    type = "structure",
    error = "client",
    members = {
        Message = {
            type = "string",
            traits = {
                json_name = "message",
                required = true,
            },
        },
    },
}

M.CreateBridgeInput = {
    type = "structure",
    members = {
        EgressGatewayBridge = setmetatable({ traits = {
            json_name = "egressGatewayBridge",
        } }, { __index = M.AddEgressGatewayBridgeRequest }),
        IngressGatewayBridge = setmetatable({ traits = {
            json_name = "ingressGatewayBridge",
        } }, { __index = M.AddIngressGatewayBridgeRequest }),
        Name = {
            type = "string",
            traits = {
                json_name = "name",
                required = true,
            },
        },
        Outputs = {
            type = "list",
            member = M.AddBridgeOutputRequest,
            traits = {
                json_name = "outputs",
            },
        },
        PlacementArn = {
            type = "string",
            traits = {
                json_name = "placementArn",
                required = true,
            },
        },
        SourceFailoverConfig = setmetatable({ traits = {
            json_name = "sourceFailoverConfig",
        } }, { __index = M.FailoverConfig }),
        Sources = {
            type = "list",
            member = M.AddBridgeSourceRequest,
            traits = {
                json_name = "sources",
                required = true,
            },
        },
    },
}

M.CreateBridgeOutput = {
    type = "structure",
    members = {
        Bridge = setmetatable({ traits = {
            json_name = "bridge",
        } }, { __index = M.Bridge }),
    },
}

M.DeleteBridgeInput = {
    type = "structure",
    members = {
        BridgeArn = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.DeleteBridgeOutput = {
    type = "structure",
    members = {
        BridgeArn = {
            type = "string",
            traits = {
                json_name = "bridgeArn",
            },
        },
    },
}

M.DescribeBridgeInput = {
    type = "structure",
    members = {
        BridgeArn = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.DescribeBridgeOutput = {
    type = "structure",
    members = {
        Bridge = setmetatable({ traits = {
            json_name = "bridge",
        } }, { __index = M.Bridge }),
    },
}

M.ListBridgesInput = {
    type = "structure",
    members = {
        FilterArn = {
            type = "string",
            traits = {
                http_query = "filterArn",
            },
        },
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

M.ListBridgesOutput = {
    type = "structure",
    members = {
        Bridges = {
            type = "list",
            member = M.ListedBridge,
            traits = {
                json_name = "bridges",
            },
        },
        NextToken = {
            type = "string",
            traits = {
                json_name = "nextToken",
            },
        },
    },
}

M.RemoveBridgeOutputInput = {
    type = "structure",
    members = {
        BridgeArn = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        OutputName = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.RemoveBridgeOutputOutput = {
    type = "structure",
    members = {
        BridgeArn = {
            type = "string",
            traits = {
                json_name = "bridgeArn",
            },
        },
        OutputName = {
            type = "string",
            traits = {
                json_name = "outputName",
            },
        },
    },
}

M.RemoveBridgeSourceInput = {
    type = "structure",
    members = {
        BridgeArn = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        SourceName = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.RemoveBridgeSourceOutput = {
    type = "structure",
    members = {
        BridgeArn = {
            type = "string",
            traits = {
                json_name = "bridgeArn",
            },
        },
        SourceName = {
            type = "string",
            traits = {
                json_name = "sourceName",
            },
        },
    },
}

M.UpdateEgressGatewayBridgeRequest = {
    type = "structure",
    members = {
        MaxBitrate = {
            type = "integer",
            traits = {
                json_name = "maxBitrate",
            },
        },
    },
}

M.UpdateIngressGatewayBridgeRequest = {
    type = "structure",
    members = {
        MaxBitrate = {
            type = "integer",
            traits = {
                json_name = "maxBitrate",
            },
        },
        MaxOutputs = {
            type = "integer",
            traits = {
                json_name = "maxOutputs",
            },
        },
    },
}

M.UpdateFailoverConfig = {
    type = "structure",
    members = {
        FailoverMode = {
            type = "string",
            traits = {
                json_name = "failoverMode",
            },
        },
        RecoveryWindow = {
            type = "integer",
            traits = {
                json_name = "recoveryWindow",
            },
        },
        SourcePriority = setmetatable({ traits = {
            json_name = "sourcePriority",
        } }, { __index = M.SourcePriority }),
        State = {
            type = "string",
            traits = {
                json_name = "state",
            },
        },
    },
}

M.UpdateBridgeInput = {
    type = "structure",
    members = {
        BridgeArn = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        EgressGatewayBridge = setmetatable({ traits = {
            json_name = "egressGatewayBridge",
        } }, { __index = M.UpdateEgressGatewayBridgeRequest }),
        IngressGatewayBridge = setmetatable({ traits = {
            json_name = "ingressGatewayBridge",
        } }, { __index = M.UpdateIngressGatewayBridgeRequest }),
        SourceFailoverConfig = setmetatable({ traits = {
            json_name = "sourceFailoverConfig",
        } }, { __index = M.UpdateFailoverConfig }),
    },
}

M.UpdateBridgeOperationOutput = {
    type = "structure",
    members = {
        Bridge = setmetatable({ traits = {
            json_name = "bridge",
        } }, { __index = M.Bridge }),
    },
}

M.UpdateBridgeNetworkOutputRequest = {
    type = "structure",
    members = {
        IpAddress = {
            type = "string",
            traits = {
                json_name = "ipAddress",
            },
        },
        NetworkName = {
            type = "string",
            traits = {
                json_name = "networkName",
            },
        },
        Port = {
            type = "integer",
            traits = {
                json_name = "port",
            },
        },
        Protocol = {
            type = "string",
            traits = {
                json_name = "protocol",
            },
        },
        Ttl = {
            type = "integer",
            traits = {
                json_name = "ttl",
            },
        },
    },
}

M.UpdateBridgeOutputInput = {
    type = "structure",
    members = {
        BridgeArn = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        NetworkOutput = setmetatable({ traits = {
            json_name = "networkOutput",
        } }, { __index = M.UpdateBridgeNetworkOutputRequest }),
        OutputName = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.UpdateBridgeOutputOutput = {
    type = "structure",
    members = {
        BridgeArn = {
            type = "string",
            traits = {
                json_name = "bridgeArn",
            },
        },
        Output = setmetatable({ traits = {
            json_name = "output",
        } }, { __index = M.BridgeOutput }),
    },
}

M.UpdateBridgeFlowSourceRequest = {
    type = "structure",
    members = {
        FlowArn = {
            type = "string",
            traits = {
                json_name = "flowArn",
            },
        },
        FlowVpcInterfaceAttachment = setmetatable({ traits = {
            json_name = "flowVpcInterfaceAttachment",
        } }, { __index = M.VpcInterfaceAttachment }),
    },
}

M.UpdateBridgeNetworkSourceRequest = {
    type = "structure",
    members = {
        MulticastIp = {
            type = "string",
            traits = {
                json_name = "multicastIp",
            },
        },
        MulticastSourceSettings = setmetatable({ traits = {
            json_name = "multicastSourceSettings",
        } }, { __index = M.MulticastSourceSettings }),
        NetworkName = {
            type = "string",
            traits = {
                json_name = "networkName",
            },
        },
        Port = {
            type = "integer",
            traits = {
                json_name = "port",
            },
        },
        Protocol = {
            type = "string",
            traits = {
                json_name = "protocol",
            },
        },
    },
}

M.UpdateBridgeSourceInput = {
    type = "structure",
    members = {
        BridgeArn = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        FlowSource = setmetatable({ traits = {
            json_name = "flowSource",
        } }, { __index = M.UpdateBridgeFlowSourceRequest }),
        NetworkSource = setmetatable({ traits = {
            json_name = "networkSource",
        } }, { __index = M.UpdateBridgeNetworkSourceRequest }),
        SourceName = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.UpdateBridgeSourceOutput = {
    type = "structure",
    members = {
        BridgeArn = {
            type = "string",
            traits = {
                json_name = "bridgeArn",
            },
        },
        Source = setmetatable({ traits = {
            json_name = "source",
        } }, { __index = M.BridgeSource }),
    },
}

M.DesiredState = {
    ACTIVE = "ACTIVE",
    STANDBY = "STANDBY",
    DELETED = "DELETED",
}

M.UpdateBridgeStateInput = {
    type = "structure",
    members = {
        BridgeArn = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        DesiredState = {
            type = "string",
            traits = {
                json_name = "desiredState",
                required = true,
            },
        },
    },
}

M.UpdateBridgeStateOutput = {
    type = "structure",
    members = {
        BridgeArn = {
            type = "string",
            traits = {
                json_name = "bridgeArn",
            },
        },
        DesiredState = {
            type = "string",
            traits = {
                json_name = "desiredState",
            },
        },
    },
}

M.ConnectionStatus = {
    CONNECTED = "CONNECTED",
    DISCONNECTED = "DISCONNECTED",
}

M.ContentQualityAnalysisState = {
    ENABLED = "ENABLED",
    DISABLED = "DISABLED",
}

M.CreateFlow420Exception = {
    type = "structure",
    error = "client",
    members = {
        Message = {
            type = "string",
            traits = {
                json_name = "message",
                required = true,
            },
        },
    },
}

M.EncodingProfile = {
    DISTRIBUTION_H264_DEFAULT = "DISTRIBUTION_H264_DEFAULT",
    CONTRIBUTION_H264_DEFAULT = "CONTRIBUTION_H264_DEFAULT",
}

M.EncodingConfig = {
    type = "structure",
    members = {
        EncodingProfile = {
            type = "string",
            traits = {
                json_name = "encodingProfile",
            },
        },
        VideoMaxBitrate = {
            type = "integer",
            traits = {
                json_name = "videoMaxBitrate",
            },
        },
    },
}

M.FlowSize = {
    MEDIUM = "MEDIUM",
    LARGE = "LARGE",
    LARGE_4X = "LARGE_4X",
}

M.NdiState = {
    ENABLED = "ENABLED",
    DISABLED = "DISABLED",
}

M.NdiConfig = {
    type = "structure",
    members = {
        NdiState = {
            type = "string",
            traits = {
                json_name = "ndiState",
            },
        },
        MachineName = {
            type = "string",
            traits = {
                json_name = "machineName",
            },
        },
        NdiDiscoveryServers = {
            type = "list",
            member = M.NdiDiscoveryServerConfig,
            traits = {
                json_name = "ndiDiscoveryServers",
            },
        },
    },
}

M.ThumbnailState = {
    ENABLED = "ENABLED",
    DISABLED = "DISABLED",
}

M.MonitoringConfig = {
    type = "structure",
    members = {
        ThumbnailState = {
            type = "string",
            traits = {
                json_name = "thumbnailState",
            },
        },
        AudioMonitoringSettings = {
            type = "list",
            member = M.AudioMonitoringSetting,
            traits = {
                json_name = "audioMonitoringSettings",
            },
        },
        ContentQualityAnalysisState = {
            type = "string",
            traits = {
                json_name = "contentQualityAnalysisState",
            },
        },
        VideoMonitoringSettings = {
            type = "list",
            member = M.VideoMonitoringSetting,
            traits = {
                json_name = "videoMonitoringSettings",
            },
        },
    },
}

M.CreateFlowInput = {
    type = "structure",
    members = {
        AvailabilityZone = {
            type = "string",
            traits = {
                json_name = "availabilityZone",
            },
        },
        Entitlements = {
            type = "list",
            member = M.GrantEntitlementRequest,
            traits = {
                json_name = "entitlements",
            },
        },
        MediaStreams = {
            type = "list",
            member = M.AddMediaStreamRequest,
            traits = {
                json_name = "mediaStreams",
            },
        },
        Name = {
            type = "string",
            traits = {
                json_name = "name",
                required = true,
            },
        },
        Outputs = {
            type = "list",
            member = M.AddOutputRequest,
            traits = {
                json_name = "outputs",
            },
        },
        Source = setmetatable({ traits = {
            json_name = "source",
        } }, { __index = M.SetSourceRequest }),
        SourceFailoverConfig = setmetatable({ traits = {
            json_name = "sourceFailoverConfig",
        } }, { __index = M.FailoverConfig }),
        Sources = {
            type = "list",
            member = M.SetSourceRequest,
            traits = {
                json_name = "sources",
            },
        },
        VpcInterfaces = {
            type = "list",
            member = M.VpcInterfaceRequest,
            traits = {
                json_name = "vpcInterfaces",
            },
        },
        Maintenance = setmetatable({ traits = {
            json_name = "maintenance",
        } }, { __index = M.AddMaintenance }),
        SourceMonitoringConfig = setmetatable({ traits = {
            json_name = "sourceMonitoringConfig",
        } }, { __index = M.MonitoringConfig }),
        FlowSize = {
            type = "string",
            traits = {
                json_name = "flowSize",
            },
        },
        NdiConfig = setmetatable({ traits = {
            json_name = "ndiConfig",
        } }, { __index = M.NdiConfig }),
        EncodingConfig = setmetatable({ traits = {
            json_name = "encodingConfig",
        } }, { __index = M.EncodingConfig }),
        FlowTags = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
            traits = {
                json_name = "flowTags",
            },
        },
    },
}

M.Flow = {
    type = "structure",
    members = {
        AvailabilityZone = {
            type = "string",
            traits = {
                json_name = "availabilityZone",
                required = true,
            },
        },
        Description = {
            type = "string",
            traits = {
                json_name = "description",
            },
        },
        EgressIp = {
            type = "string",
            traits = {
                json_name = "egressIp",
            },
        },
        Entitlements = {
            type = "list",
            member = M.Entitlement,
            traits = {
                json_name = "entitlements",
                required = true,
            },
        },
        FlowArn = {
            type = "string",
            traits = {
                json_name = "flowArn",
                required = true,
            },
        },
        MediaStreams = {
            type = "list",
            member = M.MediaStream,
            traits = {
                json_name = "mediaStreams",
            },
        },
        Name = {
            type = "string",
            traits = {
                json_name = "name",
                required = true,
            },
        },
        Outputs = {
            type = "list",
            member = M.Output,
            traits = {
                json_name = "outputs",
                required = true,
            },
        },
        Source = setmetatable({ traits = {
            json_name = "source",
            required = true,
        } }, { __index = M.Source }),
        SourceFailoverConfig = setmetatable({ traits = {
            json_name = "sourceFailoverConfig",
        } }, { __index = M.FailoverConfig }),
        Sources = {
            type = "list",
            member = M.Source,
            traits = {
                json_name = "sources",
            },
        },
        Status = {
            type = "string",
            traits = {
                json_name = "status",
                required = true,
            },
        },
        VpcInterfaces = {
            type = "list",
            member = M.VpcInterface,
            traits = {
                json_name = "vpcInterfaces",
            },
        },
        Maintenance = setmetatable({ traits = {
            json_name = "maintenance",
        } }, { __index = M.Maintenance }),
        SourceMonitoringConfig = setmetatable({ traits = {
            json_name = "sourceMonitoringConfig",
        } }, { __index = M.MonitoringConfig }),
        FlowSize = {
            type = "string",
            traits = {
                json_name = "flowSize",
            },
        },
        NdiConfig = setmetatable({ traits = {
            json_name = "ndiConfig",
        } }, { __index = M.NdiConfig }),
        EncodingConfig = setmetatable({ traits = {
            json_name = "encodingConfig",
        } }, { __index = M.EncodingConfig }),
    },
}

M.CreateFlowOutput = {
    type = "structure",
    members = {
        Flow = setmetatable({ traits = {
            json_name = "flow",
        } }, { __index = M.Flow }),
    },
}

M.CreateGateway420Exception = {
    type = "structure",
    error = "client",
    members = {
        Message = {
            type = "string",
            traits = {
                json_name = "message",
                required = true,
            },
        },
    },
}

M.CreateGatewayInput = {
    type = "structure",
    members = {
        EgressCidrBlocks = {
            type = "list",
            member = { type = "string" },
            traits = {
                json_name = "egressCidrBlocks",
                required = true,
            },
        },
        Name = {
            type = "string",
            traits = {
                json_name = "name",
                required = true,
            },
        },
        Networks = {
            type = "list",
            member = M.GatewayNetwork,
            traits = {
                json_name = "networks",
                required = true,
            },
        },
    },
}

M.Gateway = {
    type = "structure",
    members = {
        EgressCidrBlocks = {
            type = "list",
            member = { type = "string" },
            traits = {
                json_name = "egressCidrBlocks",
                required = true,
            },
        },
        GatewayArn = {
            type = "string",
            traits = {
                json_name = "gatewayArn",
                required = true,
            },
        },
        GatewayMessages = {
            type = "list",
            member = M.MessageDetail,
            traits = {
                json_name = "gatewayMessages",
            },
        },
        GatewayState = {
            type = "string",
            traits = {
                json_name = "gatewayState",
            },
        },
        Name = {
            type = "string",
            traits = {
                json_name = "name",
                required = true,
            },
        },
        Networks = {
            type = "list",
            member = M.GatewayNetwork,
            traits = {
                json_name = "networks",
                required = true,
            },
        },
    },
}

M.CreateGatewayOutput = {
    type = "structure",
    members = {
        Gateway = setmetatable({ traits = {
            json_name = "gateway",
        } }, { __index = M.Gateway }),
    },
}

M.CreateRouterInputInput = {
    type = "structure",
    members = {
        Name = {
            type = "string",
            traits = {
                json_name = "name",
                required = true,
            },
        },
        Configuration = setmetatable({ traits = {
            json_name = "configuration",
            required = true,
        } }, { __index = M.RouterInputConfiguration }),
        MaximumBitrate = {
            type = "long",
            traits = {
                json_name = "maximumBitrate",
                required = true,
            },
        },
        RoutingScope = {
            type = "string",
            traits = {
                json_name = "routingScope",
                required = true,
            },
        },
        Tier = {
            type = "string",
            traits = {
                json_name = "tier",
                required = true,
            },
        },
        RegionName = {
            type = "string",
            traits = {
                json_name = "regionName",
            },
        },
        AvailabilityZone = {
            type = "string",
            traits = {
                json_name = "availabilityZone",
            },
        },
        TransitEncryption = setmetatable({ traits = {
            json_name = "transitEncryption",
        } }, { __index = M.RouterInputTransitEncryption }),
        MaintenanceConfiguration = setmetatable({ traits = {
            json_name = "maintenanceConfiguration",
        } }, { __index = M.MaintenanceConfiguration }),
        Tags = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
            traits = {
                json_name = "tags",
            },
        },
        ClientToken = {
            type = "string",
            traits = {
                idempotency_token = true,
                json_name = "clientToken",
            },
        },
    },
}

M.CreateRouterInputOutput = {
    type = "structure",
    members = {
        RouterInput = setmetatable({ traits = {
            json_name = "routerInput",
            required = true,
        } }, { __index = M.RouterInput }),
    },
}

M.RouterInputServiceQuotaExceededException = {
    type = "structure",
    error = "client",
    members = {
        Message = {
            type = "string",
            traits = {
                json_name = "message",
                required = true,
            },
        },
    },
}

M.CreateRouterNetworkInterfaceInput = {
    type = "structure",
    members = {
        Name = {
            type = "string",
            traits = {
                json_name = "name",
                required = true,
            },
        },
        Configuration = setmetatable({ traits = {
            json_name = "configuration",
            required = true,
        } }, { __index = M.RouterNetworkInterfaceConfiguration }),
        RegionName = {
            type = "string",
            traits = {
                json_name = "regionName",
            },
        },
        Tags = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
            traits = {
                json_name = "tags",
            },
        },
        ClientToken = {
            type = "string",
            traits = {
                idempotency_token = true,
                json_name = "clientToken",
            },
        },
    },
}

M.CreateRouterNetworkInterfaceOutput = {
    type = "structure",
    members = {
        RouterNetworkInterface = setmetatable({ traits = {
            json_name = "routerNetworkInterface",
            required = true,
        } }, { __index = M.RouterNetworkInterface }),
    },
}

M.RouterNetworkInterfaceServiceQuotaExceededException = {
    type = "structure",
    error = "client",
    members = {
        Message = {
            type = "string",
            traits = {
                json_name = "message",
                required = true,
            },
        },
    },
}

M.CreateRouterOutputInput = {
    type = "structure",
    members = {
        Name = {
            type = "string",
            traits = {
                json_name = "name",
                required = true,
            },
        },
        Configuration = setmetatable({ traits = {
            json_name = "configuration",
            required = true,
        } }, { __index = M.RouterOutputConfiguration }),
        MaximumBitrate = {
            type = "long",
            traits = {
                json_name = "maximumBitrate",
                required = true,
            },
        },
        RoutingScope = {
            type = "string",
            traits = {
                json_name = "routingScope",
                required = true,
            },
        },
        Tier = {
            type = "string",
            traits = {
                json_name = "tier",
                required = true,
            },
        },
        RegionName = {
            type = "string",
            traits = {
                json_name = "regionName",
            },
        },
        AvailabilityZone = {
            type = "string",
            traits = {
                json_name = "availabilityZone",
            },
        },
        MaintenanceConfiguration = setmetatable({ traits = {
            json_name = "maintenanceConfiguration",
        } }, { __index = M.MaintenanceConfiguration }),
        Tags = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
            traits = {
                json_name = "tags",
            },
        },
        ClientToken = {
            type = "string",
            traits = {
                idempotency_token = true,
                json_name = "clientToken",
            },
        },
    },
}

M.CreateRouterOutputOutput = {
    type = "structure",
    members = {
        RouterOutput = setmetatable({ traits = {
            json_name = "routerOutput",
            required = true,
        } }, { __index = M.RouterOutput }),
    },
}

M.RouterOutputServiceQuotaExceededException = {
    type = "structure",
    error = "client",
    members = {
        Message = {
            type = "string",
            traits = {
                json_name = "message",
                required = true,
            },
        },
    },
}

M.DeleteFlowInput = {
    type = "structure",
    members = {
        FlowArn = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.DeleteFlowOutput = {
    type = "structure",
    members = {
        FlowArn = {
            type = "string",
            traits = {
                json_name = "flowArn",
            },
        },
        Status = {
            type = "string",
            traits = {
                json_name = "status",
            },
        },
    },
}

M.DeleteGatewayInput = {
    type = "structure",
    members = {
        GatewayArn = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.DeleteGatewayOutput = {
    type = "structure",
    members = {
        GatewayArn = {
            type = "string",
            traits = {
                json_name = "gatewayArn",
            },
        },
    },
}

M.DeleteRouterInputInput = {
    type = "structure",
    members = {
        Arn = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.DeleteRouterInputOutput = {
    type = "structure",
    members = {
        Arn = {
            type = "string",
            traits = {
                json_name = "arn",
                required = true,
            },
        },
        Name = {
            type = "string",
            traits = {
                json_name = "name",
                required = true,
            },
        },
        State = {
            type = "string",
            traits = {
                json_name = "state",
                required = true,
            },
        },
    },
}

M.DeleteRouterNetworkInterfaceInput = {
    type = "structure",
    members = {
        Arn = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.DeleteRouterNetworkInterfaceOutput = {
    type = "structure",
    members = {
        Arn = {
            type = "string",
            traits = {
                json_name = "arn",
                required = true,
            },
        },
        Name = {
            type = "string",
            traits = {
                json_name = "name",
                required = true,
            },
        },
        State = {
            type = "string",
            traits = {
                json_name = "state",
                required = true,
            },
        },
    },
}

M.DeleteRouterOutputInput = {
    type = "structure",
    members = {
        Arn = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.DeleteRouterOutputOutput = {
    type = "structure",
    members = {
        Arn = {
            type = "string",
            traits = {
                json_name = "arn",
                required = true,
            },
        },
        Name = {
            type = "string",
            traits = {
                json_name = "name",
                required = true,
            },
        },
        State = {
            type = "string",
            traits = {
                json_name = "state",
                required = true,
            },
        },
    },
}

M.DeregisterGatewayInstanceInput = {
    type = "structure",
    members = {
        Force = {
            type = "boolean",
            traits = {
                http_query = "force",
            },
        },
        GatewayInstanceArn = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.DeregisterGatewayInstanceOutput = {
    type = "structure",
    members = {
        GatewayInstanceArn = {
            type = "string",
            traits = {
                json_name = "gatewayInstanceArn",
            },
        },
        InstanceState = {
            type = "string",
            traits = {
                json_name = "instanceState",
            },
        },
    },
}

M.DescribeFlowInput = {
    type = "structure",
    members = {
        FlowArn = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.Messages = {
    type = "structure",
    members = {
        Errors = {
            type = "list",
            member = { type = "string" },
            traits = {
                json_name = "errors",
                required = true,
            },
        },
    },
}

M.DescribeFlowOutput = {
    type = "structure",
    members = {
        Flow = setmetatable({ traits = {
            json_name = "flow",
        } }, { __index = M.Flow }),
        Messages = setmetatable({ traits = {
            json_name = "messages",
        } }, { __index = M.Messages }),
    },
}

M.DescribeFlowSourceMetadataInput = {
    type = "structure",
    members = {
        FlowArn = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.NdiMediaInfo = {
    type = "structure",
    members = {
        Streams = {
            type = "list",
            member = M.NdiMediaStreamInfo,
            traits = {
                json_name = "streams",
                required = true,
            },
        },
    },
}

M.NdiSourceMetadataInfo = {
    type = "structure",
    members = {
        ActiveSource = setmetatable({ traits = {
            json_name = "activeSource",
        } }, { __index = M.NdiSourceInfo }),
        DiscoveredSources = {
            type = "list",
            member = M.NdiSourceInfo,
            traits = {
                json_name = "discoveredSources",
                required = true,
            },
        },
        MediaInfo = setmetatable({ traits = {
            json_name = "mediaInfo",
            required = true,
        } }, { __index = M.NdiMediaInfo }),
        Messages = {
            type = "list",
            member = M.MessageDetail,
            traits = {
                json_name = "messages",
                required = true,
            },
        },
    },
}

M.TransportMediaInfo = {
    type = "structure",
    members = {
        Programs = {
            type = "list",
            member = M.TransportStreamProgram,
            traits = {
                json_name = "programs",
                required = true,
            },
        },
    },
}

M.DescribeFlowSourceMetadataOutput = {
    type = "structure",
    members = {
        FlowArn = {
            type = "string",
            traits = {
                json_name = "flowArn",
            },
        },
        Messages = {
            type = "list",
            member = M.MessageDetail,
            traits = {
                json_name = "messages",
            },
        },
        Timestamp = {
            type = "timestamp",
            traits = {
                json_name = "timestamp",
                timestamp_format = "date-time",
            },
        },
        TransportMediaInfo = setmetatable({ traits = {
            json_name = "transportMediaInfo",
        } }, { __index = M.TransportMediaInfo }),
        NdiInfo = setmetatable({ traits = {
            json_name = "ndiInfo",
        } }, { __index = M.NdiSourceMetadataInfo }),
    },
}

M.DescribeFlowSourceThumbnailInput = {
    type = "structure",
    members = {
        FlowArn = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.ThumbnailDetails = {
    type = "structure",
    members = {
        FlowArn = {
            type = "string",
            traits = {
                json_name = "flowArn",
                required = true,
            },
        },
        Thumbnail = {
            type = "string",
            traits = {
                json_name = "thumbnail",
            },
        },
        ThumbnailMessages = {
            type = "list",
            member = M.MessageDetail,
            traits = {
                json_name = "thumbnailMessages",
                required = true,
            },
        },
        Timecode = {
            type = "string",
            traits = {
                json_name = "timecode",
            },
        },
        Timestamp = {
            type = "timestamp",
            traits = {
                json_name = "timestamp",
                timestamp_format = "date-time",
            },
        },
    },
}

M.DescribeFlowSourceThumbnailOutput = {
    type = "structure",
    members = {
        ThumbnailDetails = setmetatable({ traits = {
            json_name = "thumbnailDetails",
        } }, { __index = M.ThumbnailDetails }),
    },
}

M.DescribeGatewayInput = {
    type = "structure",
    members = {
        GatewayArn = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.DescribeGatewayOutput = {
    type = "structure",
    members = {
        Gateway = setmetatable({ traits = {
            json_name = "gateway",
        } }, { __index = M.Gateway }),
    },
}

M.DescribeGatewayInstanceInput = {
    type = "structure",
    members = {
        GatewayInstanceArn = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.GatewayInstance = {
    type = "structure",
    members = {
        BridgePlacement = {
            type = "string",
            traits = {
                json_name = "bridgePlacement",
                required = true,
            },
        },
        ConnectionStatus = {
            type = "string",
            traits = {
                json_name = "connectionStatus",
                required = true,
            },
        },
        GatewayArn = {
            type = "string",
            traits = {
                json_name = "gatewayArn",
                required = true,
            },
        },
        GatewayInstanceArn = {
            type = "string",
            traits = {
                json_name = "gatewayInstanceArn",
                required = true,
            },
        },
        InstanceId = {
            type = "string",
            traits = {
                json_name = "instanceId",
                required = true,
            },
        },
        InstanceMessages = {
            type = "list",
            member = M.MessageDetail,
            traits = {
                json_name = "instanceMessages",
            },
        },
        InstanceState = {
            type = "string",
            traits = {
                json_name = "instanceState",
                required = true,
            },
        },
        RunningBridgeCount = {
            type = "integer",
            traits = {
                json_name = "runningBridgeCount",
                required = true,
            },
        },
    },
}

M.DescribeGatewayInstanceOutput = {
    type = "structure",
    members = {
        GatewayInstance = setmetatable({ traits = {
            json_name = "gatewayInstance",
        } }, { __index = M.GatewayInstance }),
    },
}

M.DescribeOfferingInput = {
    type = "structure",
    members = {
        OfferingArn = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.DescribeOfferingOutput = {
    type = "structure",
    members = {
        Offering = setmetatable({ traits = {
            json_name = "offering",
        } }, { __index = M.Offering }),
    },
}

M.DescribeReservationInput = {
    type = "structure",
    members = {
        ReservationArn = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.DescribeReservationOutput = {
    type = "structure",
    members = {
        Reservation = setmetatable({ traits = {
            json_name = "reservation",
        } }, { __index = M.Reservation }),
    },
}

M.GrantFlowEntitlements420Exception = {
    type = "structure",
    error = "client",
    members = {
        Message = {
            type = "string",
            traits = {
                json_name = "message",
                required = true,
            },
        },
    },
}

M.GrantFlowEntitlementsInput = {
    type = "structure",
    members = {
        Entitlements = {
            type = "list",
            member = M.GrantEntitlementRequest,
            traits = {
                json_name = "entitlements",
                required = true,
            },
        },
        FlowArn = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.GrantFlowEntitlementsOutput = {
    type = "structure",
    members = {
        Entitlements = {
            type = "list",
            member = M.Entitlement,
            traits = {
                json_name = "entitlements",
            },
        },
        FlowArn = {
            type = "string",
            traits = {
                json_name = "flowArn",
            },
        },
    },
}

M.ListFlowsInput = {
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

M.ListFlowsOutput = {
    type = "structure",
    members = {
        Flows = {
            type = "list",
            member = M.ListedFlow,
            traits = {
                json_name = "flows",
            },
        },
        NextToken = {
            type = "string",
            traits = {
                json_name = "nextToken",
            },
        },
    },
}

M.RemoveFlowMediaStreamInput = {
    type = "structure",
    members = {
        FlowArn = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        MediaStreamName = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.RemoveFlowMediaStreamOutput = {
    type = "structure",
    members = {
        FlowArn = {
            type = "string",
            traits = {
                json_name = "flowArn",
            },
        },
        MediaStreamName = {
            type = "string",
            traits = {
                json_name = "mediaStreamName",
            },
        },
    },
}

M.RemoveFlowOutputInput = {
    type = "structure",
    members = {
        FlowArn = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        OutputArn = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.RemoveFlowOutputOutput = {
    type = "structure",
    members = {
        FlowArn = {
            type = "string",
            traits = {
                json_name = "flowArn",
            },
        },
        OutputArn = {
            type = "string",
            traits = {
                json_name = "outputArn",
            },
        },
    },
}

M.RemoveFlowSourceInput = {
    type = "structure",
    members = {
        FlowArn = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        SourceArn = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.RemoveFlowSourceOutput = {
    type = "structure",
    members = {
        FlowArn = {
            type = "string",
            traits = {
                json_name = "flowArn",
            },
        },
        SourceArn = {
            type = "string",
            traits = {
                json_name = "sourceArn",
            },
        },
    },
}

M.RemoveFlowVpcInterfaceInput = {
    type = "structure",
    members = {
        FlowArn = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        VpcInterfaceName = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.RemoveFlowVpcInterfaceOutput = {
    type = "structure",
    members = {
        FlowArn = {
            type = "string",
            traits = {
                json_name = "flowArn",
            },
        },
        NonDeletedNetworkInterfaceIds = {
            type = "list",
            member = { type = "string" },
            traits = {
                json_name = "nonDeletedNetworkInterfaceIds",
            },
        },
        VpcInterfaceName = {
            type = "string",
            traits = {
                json_name = "vpcInterfaceName",
            },
        },
    },
}

M.RevokeFlowEntitlementInput = {
    type = "structure",
    members = {
        EntitlementArn = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        FlowArn = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.RevokeFlowEntitlementOutput = {
    type = "structure",
    members = {
        EntitlementArn = {
            type = "string",
            traits = {
                json_name = "entitlementArn",
            },
        },
        FlowArn = {
            type = "string",
            traits = {
                json_name = "flowArn",
            },
        },
    },
}

M.StartFlowInput = {
    type = "structure",
    members = {
        FlowArn = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.StartFlowOutput = {
    type = "structure",
    members = {
        FlowArn = {
            type = "string",
            traits = {
                json_name = "flowArn",
            },
        },
        Status = {
            type = "string",
            traits = {
                json_name = "status",
            },
        },
    },
}

M.StopFlowInput = {
    type = "structure",
    members = {
        FlowArn = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.StopFlowOutput = {
    type = "structure",
    members = {
        FlowArn = {
            type = "string",
            traits = {
                json_name = "flowArn",
            },
        },
        Status = {
            type = "string",
            traits = {
                json_name = "status",
            },
        },
    },
}

M.UpdateMaintenance = {
    type = "structure",
    members = {
        MaintenanceDay = {
            type = "string",
            traits = {
                json_name = "maintenanceDay",
            },
        },
        MaintenanceScheduledDate = {
            type = "string",
            traits = {
                json_name = "maintenanceScheduledDate",
            },
        },
        MaintenanceStartHour = {
            type = "string",
            traits = {
                json_name = "maintenanceStartHour",
            },
        },
    },
}

M.UpdateFlowInput = {
    type = "structure",
    members = {
        FlowArn = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        SourceFailoverConfig = setmetatable({ traits = {
            json_name = "sourceFailoverConfig",
        } }, { __index = M.UpdateFailoverConfig }),
        Maintenance = setmetatable({ traits = {
            json_name = "maintenance",
        } }, { __index = M.UpdateMaintenance }),
        SourceMonitoringConfig = setmetatable({ traits = {
            json_name = "sourceMonitoringConfig",
        } }, { __index = M.MonitoringConfig }),
        NdiConfig = setmetatable({ traits = {
            json_name = "ndiConfig",
        } }, { __index = M.NdiConfig }),
        FlowSize = {
            type = "string",
            traits = {
                json_name = "flowSize",
            },
        },
        EncodingConfig = setmetatable({ traits = {
            json_name = "encodingConfig",
        } }, { __index = M.EncodingConfig }),
    },
}

M.UpdateFlowOperationOutput = {
    type = "structure",
    members = {
        Flow = setmetatable({ traits = {
            json_name = "flow",
        } }, { __index = M.Flow }),
    },
}

M.UpdateEncryption = {
    type = "structure",
    members = {
        Algorithm = {
            type = "string",
            traits = {
                json_name = "algorithm",
            },
        },
        ConstantInitializationVector = {
            type = "string",
            traits = {
                json_name = "constantInitializationVector",
            },
        },
        DeviceId = {
            type = "string",
            traits = {
                json_name = "deviceId",
            },
        },
        KeyType = {
            type = "string",
            traits = {
                json_name = "keyType",
            },
        },
        Region = {
            type = "string",
            traits = {
                json_name = "region",
            },
        },
        ResourceId = {
            type = "string",
            traits = {
                json_name = "resourceId",
            },
        },
        RoleArn = {
            type = "string",
            traits = {
                json_name = "roleArn",
            },
        },
        SecretArn = {
            type = "string",
            traits = {
                json_name = "secretArn",
            },
        },
        Url = {
            type = "string",
            traits = {
                json_name = "url",
            },
        },
    },
}

M.UpdateFlowEntitlementInput = {
    type = "structure",
    members = {
        Description = {
            type = "string",
            traits = {
                json_name = "description",
            },
        },
        Encryption = setmetatable({ traits = {
            json_name = "encryption",
        } }, { __index = M.UpdateEncryption }),
        EntitlementArn = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        EntitlementStatus = {
            type = "string",
            traits = {
                json_name = "entitlementStatus",
            },
        },
        FlowArn = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        Subscribers = {
            type = "list",
            member = { type = "string" },
            traits = {
                json_name = "subscribers",
            },
        },
    },
}

M.UpdateFlowEntitlementOutput = {
    type = "structure",
    members = {
        Entitlement = setmetatable({ traits = {
            json_name = "entitlement",
        } }, { __index = M.Entitlement }),
        FlowArn = {
            type = "string",
            traits = {
                json_name = "flowArn",
            },
        },
    },
}

M.UpdateFlowMediaStreamInput = {
    type = "structure",
    members = {
        Attributes = setmetatable({ traits = {
            json_name = "attributes",
        } }, { __index = M.MediaStreamAttributesRequest }),
        ClockRate = {
            type = "integer",
            traits = {
                json_name = "clockRate",
            },
        },
        Description = {
            type = "string",
            traits = {
                json_name = "description",
            },
        },
        FlowArn = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        MediaStreamName = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        MediaStreamType = {
            type = "string",
            traits = {
                json_name = "mediaStreamType",
            },
        },
        VideoFormat = {
            type = "string",
            traits = {
                json_name = "videoFormat",
            },
        },
    },
}

M.UpdateFlowMediaStreamOutput = {
    type = "structure",
    members = {
        FlowArn = {
            type = "string",
            traits = {
                json_name = "flowArn",
            },
        },
        MediaStream = setmetatable({ traits = {
            json_name = "mediaStream",
        } }, { __index = M.MediaStream }),
    },
}

M.UpdateFlowOutputInput = {
    type = "structure",
    members = {
        CidrAllowList = {
            type = "list",
            member = { type = "string" },
            traits = {
                json_name = "cidrAllowList",
            },
        },
        Description = {
            type = "string",
            traits = {
                json_name = "description",
            },
        },
        Destination = {
            type = "string",
            traits = {
                json_name = "destination",
            },
        },
        Encryption = setmetatable({ traits = {
            json_name = "encryption",
        } }, { __index = M.UpdateEncryption }),
        FlowArn = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        MaxLatency = {
            type = "integer",
            traits = {
                json_name = "maxLatency",
            },
        },
        MediaStreamOutputConfigurations = {
            type = "list",
            member = M.MediaStreamOutputConfigurationRequest,
            traits = {
                json_name = "mediaStreamOutputConfigurations",
            },
        },
        MinLatency = {
            type = "integer",
            traits = {
                json_name = "minLatency",
            },
        },
        OutputArn = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        Port = {
            type = "integer",
            traits = {
                json_name = "port",
            },
        },
        Protocol = {
            type = "string",
            traits = {
                json_name = "protocol",
            },
        },
        RemoteId = {
            type = "string",
            traits = {
                json_name = "remoteId",
            },
        },
        SenderControlPort = {
            type = "integer",
            traits = {
                json_name = "senderControlPort",
            },
        },
        SenderIpAddress = {
            type = "string",
            traits = {
                json_name = "senderIpAddress",
            },
        },
        SmoothingLatency = {
            type = "integer",
            traits = {
                json_name = "smoothingLatency",
            },
        },
        StreamId = {
            type = "string",
            traits = {
                json_name = "streamId",
            },
        },
        VpcInterfaceAttachment = setmetatable({ traits = {
            json_name = "vpcInterfaceAttachment",
        } }, { __index = M.VpcInterfaceAttachment }),
        OutputStatus = {
            type = "string",
            traits = {
                json_name = "outputStatus",
            },
        },
        NdiProgramName = {
            type = "string",
            traits = {
                json_name = "ndiProgramName",
            },
        },
        NdiSpeedHqQuality = {
            type = "integer",
            traits = {
                json_name = "ndiSpeedHqQuality",
            },
        },
        RouterIntegrationState = {
            type = "string",
            traits = {
                json_name = "routerIntegrationState",
            },
        },
        RouterIntegrationTransitEncryption = setmetatable({ traits = {
            json_name = "routerIntegrationTransitEncryption",
        } }, { __index = M.FlowTransitEncryption }),
    },
}

M.UpdateFlowOutputOutput = {
    type = "structure",
    members = {
        FlowArn = {
            type = "string",
            traits = {
                json_name = "flowArn",
            },
        },
        Output = setmetatable({ traits = {
            json_name = "output",
        } }, { __index = M.Output }),
    },
}

M.UpdateGatewayBridgeSourceRequest = {
    type = "structure",
    members = {
        BridgeArn = {
            type = "string",
            traits = {
                json_name = "bridgeArn",
            },
        },
        VpcInterfaceAttachment = setmetatable({ traits = {
            json_name = "vpcInterfaceAttachment",
        } }, { __index = M.VpcInterfaceAttachment }),
    },
}

M.UpdateFlowSourceInput = {
    type = "structure",
    members = {
        Decryption = setmetatable({ traits = {
            json_name = "decryption",
        } }, { __index = M.UpdateEncryption }),
        Description = {
            type = "string",
            traits = {
                json_name = "description",
            },
        },
        EntitlementArn = {
            type = "string",
            traits = {
                json_name = "entitlementArn",
            },
        },
        FlowArn = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        IngestPort = {
            type = "integer",
            traits = {
                json_name = "ingestPort",
            },
        },
        MaxBitrate = {
            type = "integer",
            traits = {
                json_name = "maxBitrate",
            },
        },
        MaxLatency = {
            type = "integer",
            traits = {
                json_name = "maxLatency",
            },
        },
        MaxSyncBuffer = {
            type = "integer",
            traits = {
                json_name = "maxSyncBuffer",
            },
        },
        MediaStreamSourceConfigurations = {
            type = "list",
            member = M.MediaStreamSourceConfigurationRequest,
            traits = {
                json_name = "mediaStreamSourceConfigurations",
            },
        },
        MinLatency = {
            type = "integer",
            traits = {
                json_name = "minLatency",
            },
        },
        Protocol = {
            type = "string",
            traits = {
                json_name = "protocol",
            },
        },
        SenderControlPort = {
            type = "integer",
            traits = {
                json_name = "senderControlPort",
            },
        },
        SenderIpAddress = {
            type = "string",
            traits = {
                json_name = "senderIpAddress",
            },
        },
        SourceArn = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        SourceListenerAddress = {
            type = "string",
            traits = {
                json_name = "sourceListenerAddress",
            },
        },
        SourceListenerPort = {
            type = "integer",
            traits = {
                json_name = "sourceListenerPort",
            },
        },
        StreamId = {
            type = "string",
            traits = {
                json_name = "streamId",
            },
        },
        VpcInterfaceName = {
            type = "string",
            traits = {
                json_name = "vpcInterfaceName",
            },
        },
        WhitelistCidr = {
            type = "string",
            traits = {
                json_name = "whitelistCidr",
            },
        },
        GatewayBridgeSource = setmetatable({ traits = {
            json_name = "gatewayBridgeSource",
        } }, { __index = M.UpdateGatewayBridgeSourceRequest }),
        NdiSourceSettings = setmetatable({ traits = {
            json_name = "ndiSourceSettings",
        } }, { __index = M.NdiSourceSettings }),
        RouterIntegrationState = {
            type = "string",
            traits = {
                json_name = "routerIntegrationState",
            },
        },
        RouterIntegrationTransitDecryption = setmetatable({ traits = {
            json_name = "routerIntegrationTransitDecryption",
        } }, { __index = M.FlowTransitEncryption }),
    },
}

M.UpdateFlowSourceOutput = {
    type = "structure",
    members = {
        FlowArn = {
            type = "string",
            traits = {
                json_name = "flowArn",
            },
        },
        Source = setmetatable({ traits = {
            json_name = "source",
        } }, { __index = M.Source }),
    },
}

M.ListGatewayInstancesInput = {
    type = "structure",
    members = {
        FilterArn = {
            type = "string",
            traits = {
                http_query = "filterArn",
            },
        },
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

M.ListGatewayInstancesOutput = {
    type = "structure",
    members = {
        Instances = {
            type = "list",
            member = M.ListedGatewayInstance,
            traits = {
                json_name = "instances",
            },
        },
        NextToken = {
            type = "string",
            traits = {
                json_name = "nextToken",
            },
        },
    },
}

M.UpdateGatewayInstanceInput = {
    type = "structure",
    members = {
        BridgePlacement = {
            type = "string",
            traits = {
                json_name = "bridgePlacement",
            },
        },
        GatewayInstanceArn = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.UpdateGatewayInstanceOutput = {
    type = "structure",
    members = {
        BridgePlacement = {
            type = "string",
            traits = {
                json_name = "bridgePlacement",
            },
        },
        GatewayInstanceArn = {
            type = "string",
            traits = {
                json_name = "gatewayInstanceArn",
            },
        },
    },
}

M.ListGatewaysInput = {
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

M.ListGatewaysOutput = {
    type = "structure",
    members = {
        Gateways = {
            type = "list",
            member = M.ListedGateway,
            traits = {
                json_name = "gateways",
            },
        },
        NextToken = {
            type = "string",
            traits = {
                json_name = "nextToken",
            },
        },
    },
}

M.GetRouterInputInput = {
    type = "structure",
    members = {
        Arn = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.GetRouterInputOutput = {
    type = "structure",
    members = {
        RouterInput = setmetatable({ traits = {
            json_name = "routerInput",
            required = true,
        } }, { __index = M.RouterInput }),
    },
}

M.GetRouterInputSourceMetadataInput = {
    type = "structure",
    members = {
        Arn = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.RouterInputMetadata = {
    type = "union",
    members = {
        TransportStreamMediaInfo = setmetatable({ traits = {
            json_name = "transportStreamMediaInfo",
        } }, { __index = M.TransportMediaInfo }),
    },
}

M.RouterInputSourceMetadataDetails = {
    type = "structure",
    members = {
        SourceMetadataMessages = {
            type = "list",
            member = M.RouterInputMessage,
            traits = {
                json_name = "sourceMetadataMessages",
                required = true,
            },
        },
        Timestamp = {
            type = "timestamp",
            traits = {
                json_name = "timestamp",
                required = true,
                timestamp_format = "date-time",
            },
        },
        RouterInputMetadata = setmetatable({ traits = {
            json_name = "routerInputMetadata",
        } }, { __index = M.RouterInputMetadata }),
    },
}

M.GetRouterInputSourceMetadataOutput = {
    type = "structure",
    members = {
        Arn = {
            type = "string",
            traits = {
                json_name = "arn",
                required = true,
            },
        },
        Name = {
            type = "string",
            traits = {
                json_name = "name",
                required = true,
            },
        },
        SourceMetadataDetails = setmetatable({ traits = {
            json_name = "sourceMetadataDetails",
            required = true,
        } }, { __index = M.RouterInputSourceMetadataDetails }),
    },
}

M.GetRouterInputThumbnailInput = {
    type = "structure",
    members = {
        Arn = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.RouterInputThumbnailDetails = {
    type = "structure",
    members = {
        ThumbnailMessages = {
            type = "list",
            member = M.RouterInputMessage,
            traits = {
                json_name = "thumbnailMessages",
                required = true,
            },
        },
        Thumbnail = {
            type = "blob",
            traits = {
                json_name = "thumbnail",
            },
        },
        Timecode = {
            type = "string",
            traits = {
                json_name = "timecode",
            },
        },
        Timestamp = {
            type = "timestamp",
            traits = {
                json_name = "timestamp",
                timestamp_format = "date-time",
            },
        },
    },
}

M.GetRouterInputThumbnailOutput = {
    type = "structure",
    members = {
        Arn = {
            type = "string",
            traits = {
                json_name = "arn",
                required = true,
            },
        },
        Name = {
            type = "string",
            traits = {
                json_name = "name",
                required = true,
            },
        },
        ThumbnailDetails = setmetatable({ traits = {
            json_name = "thumbnailDetails",
            required = true,
        } }, { __index = M.RouterInputThumbnailDetails }),
    },
}

M.GetRouterNetworkInterfaceInput = {
    type = "structure",
    members = {
        Arn = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.GetRouterNetworkInterfaceOutput = {
    type = "structure",
    members = {
        RouterNetworkInterface = setmetatable({ traits = {
            json_name = "routerNetworkInterface",
            required = true,
        } }, { __index = M.RouterNetworkInterface }),
    },
}

M.GetRouterOutputInput = {
    type = "structure",
    members = {
        Arn = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.GetRouterOutputOutput = {
    type = "structure",
    members = {
        RouterOutput = setmetatable({ traits = {
            json_name = "routerOutput",
            required = true,
        } }, { __index = M.RouterOutput }),
    },
}

M.ListedRouterInput = {
    type = "structure",
    members = {
        Name = {
            type = "string",
            traits = {
                json_name = "name",
                required = true,
            },
        },
        Arn = {
            type = "string",
            traits = {
                json_name = "arn",
                required = true,
            },
        },
        Id = {
            type = "string",
            traits = {
                json_name = "id",
                required = true,
            },
        },
        InputType = {
            type = "string",
            traits = {
                json_name = "inputType",
                required = true,
            },
        },
        State = {
            type = "string",
            traits = {
                json_name = "state",
                required = true,
            },
        },
        RoutedOutputs = {
            type = "integer",
            traits = {
                json_name = "routedOutputs",
                required = true,
            },
        },
        RegionName = {
            type = "string",
            traits = {
                json_name = "regionName",
                required = true,
            },
        },
        AvailabilityZone = {
            type = "string",
            traits = {
                json_name = "availabilityZone",
                required = true,
            },
        },
        MaximumBitrate = {
            type = "long",
            traits = {
                json_name = "maximumBitrate",
                required = true,
            },
        },
        RoutingScope = {
            type = "string",
            traits = {
                json_name = "routingScope",
                required = true,
            },
        },
        CreatedAt = {
            type = "timestamp",
            traits = {
                json_name = "createdAt",
                required = true,
                timestamp_format = "date-time",
            },
        },
        UpdatedAt = {
            type = "timestamp",
            traits = {
                json_name = "updatedAt",
                required = true,
                timestamp_format = "date-time",
            },
        },
        MessageCount = {
            type = "integer",
            traits = {
                json_name = "messageCount",
                required = true,
            },
        },
        NetworkInterfaceArn = {
            type = "string",
            traits = {
                json_name = "networkInterfaceArn",
            },
        },
        MaintenanceScheduleType = {
            type = "string",
            traits = {
                json_name = "maintenanceScheduleType",
            },
        },
        MaintenanceSchedule = setmetatable({ traits = {
            json_name = "maintenanceSchedule",
        } }, { __index = M.MaintenanceSchedule }),
    },
}

M.ListedRouterNetworkInterface = {
    type = "structure",
    members = {
        Name = {
            type = "string",
            traits = {
                json_name = "name",
                required = true,
            },
        },
        Arn = {
            type = "string",
            traits = {
                json_name = "arn",
                required = true,
            },
        },
        Id = {
            type = "string",
            traits = {
                json_name = "id",
                required = true,
            },
        },
        NetworkInterfaceType = {
            type = "string",
            traits = {
                json_name = "networkInterfaceType",
                required = true,
            },
        },
        AssociatedOutputCount = {
            type = "integer",
            traits = {
                json_name = "associatedOutputCount",
                required = true,
            },
        },
        AssociatedInputCount = {
            type = "integer",
            traits = {
                json_name = "associatedInputCount",
                required = true,
            },
        },
        State = {
            type = "string",
            traits = {
                json_name = "state",
                required = true,
            },
        },
        RegionName = {
            type = "string",
            traits = {
                json_name = "regionName",
                required = true,
            },
        },
        CreatedAt = {
            type = "timestamp",
            traits = {
                json_name = "createdAt",
                required = true,
                timestamp_format = "date-time",
            },
        },
        UpdatedAt = {
            type = "timestamp",
            traits = {
                json_name = "updatedAt",
                required = true,
                timestamp_format = "date-time",
            },
        },
    },
}

M.ListedRouterOutput = {
    type = "structure",
    members = {
        Name = {
            type = "string",
            traits = {
                json_name = "name",
                required = true,
            },
        },
        Arn = {
            type = "string",
            traits = {
                json_name = "arn",
                required = true,
            },
        },
        Id = {
            type = "string",
            traits = {
                json_name = "id",
                required = true,
            },
        },
        OutputType = {
            type = "string",
            traits = {
                json_name = "outputType",
                required = true,
            },
        },
        State = {
            type = "string",
            traits = {
                json_name = "state",
                required = true,
            },
        },
        RoutedState = {
            type = "string",
            traits = {
                json_name = "routedState",
                required = true,
            },
        },
        RegionName = {
            type = "string",
            traits = {
                json_name = "regionName",
                required = true,
            },
        },
        AvailabilityZone = {
            type = "string",
            traits = {
                json_name = "availabilityZone",
                required = true,
            },
        },
        MaximumBitrate = {
            type = "long",
            traits = {
                json_name = "maximumBitrate",
                required = true,
            },
        },
        RoutingScope = {
            type = "string",
            traits = {
                json_name = "routingScope",
                required = true,
            },
        },
        CreatedAt = {
            type = "timestamp",
            traits = {
                json_name = "createdAt",
                required = true,
                timestamp_format = "date-time",
            },
        },
        UpdatedAt = {
            type = "timestamp",
            traits = {
                json_name = "updatedAt",
                required = true,
                timestamp_format = "date-time",
            },
        },
        MessageCount = {
            type = "integer",
            traits = {
                json_name = "messageCount",
                required = true,
            },
        },
        RoutedInputArn = {
            type = "string",
            traits = {
                json_name = "routedInputArn",
            },
        },
        NetworkInterfaceArn = {
            type = "string",
            traits = {
                json_name = "networkInterfaceArn",
            },
        },
        MaintenanceScheduleType = {
            type = "string",
            traits = {
                json_name = "maintenanceScheduleType",
            },
        },
        MaintenanceSchedule = setmetatable({ traits = {
            json_name = "maintenanceSchedule",
        } }, { __index = M.MaintenanceSchedule }),
    },
}

M.ListEntitlementsInput = {
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

M.ListEntitlementsOutput = {
    type = "structure",
    members = {
        Entitlements = {
            type = "list",
            member = M.ListedEntitlement,
            traits = {
                json_name = "entitlements",
            },
        },
        NextToken = {
            type = "string",
            traits = {
                json_name = "nextToken",
            },
        },
    },
}

M.ListOfferingsInput = {
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

M.ListOfferingsOutput = {
    type = "structure",
    members = {
        NextToken = {
            type = "string",
            traits = {
                json_name = "nextToken",
            },
        },
        Offerings = {
            type = "list",
            member = M.Offering,
            traits = {
                json_name = "offerings",
            },
        },
    },
}

M.ListReservationsInput = {
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

M.ListReservationsOutput = {
    type = "structure",
    members = {
        NextToken = {
            type = "string",
            traits = {
                json_name = "nextToken",
            },
        },
        Reservations = {
            type = "list",
            member = M.Reservation,
            traits = {
                json_name = "reservations",
            },
        },
    },
}

M.RouterInputFilter = {
    type = "union",
    members = {
        NameContains = {
            type = "list",
            member = { type = "string" },
            traits = {
                json_name = "nameContains",
            },
        },
        RegionNames = {
            type = "list",
            member = { type = "string" },
            traits = {
                json_name = "regionNames",
            },
        },
        NetworkInterfaceArns = {
            type = "list",
            member = { type = "string" },
            traits = {
                json_name = "networkInterfaceArns",
            },
        },
        RoutingScopes = {
            type = "list",
            member = { type = "string" },
            traits = {
                json_name = "routingScopes",
            },
        },
        InputTypes = {
            type = "list",
            member = { type = "string" },
            traits = {
                json_name = "inputTypes",
            },
        },
    },
}

M.ListRouterInputsInput = {
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
        Filters = {
            type = "list",
            member = M.RouterInputFilter,
            traits = {
                json_name = "filters",
            },
        },
    },
}

M.ListRouterInputsOutput = {
    type = "structure",
    members = {
        RouterInputs = {
            type = "list",
            member = M.ListedRouterInput,
            traits = {
                json_name = "routerInputs",
                required = true,
            },
        },
        NextToken = {
            type = "string",
            traits = {
                json_name = "nextToken",
            },
        },
    },
}

M.RouterNetworkInterfaceFilter = {
    type = "union",
    members = {
        RegionNames = {
            type = "list",
            member = { type = "string" },
            traits = {
                json_name = "regionNames",
            },
        },
        NetworkInterfaceTypes = {
            type = "list",
            member = { type = "string" },
            traits = {
                json_name = "networkInterfaceTypes",
            },
        },
        NameContains = {
            type = "list",
            member = { type = "string" },
            traits = {
                json_name = "nameContains",
            },
        },
    },
}

M.ListRouterNetworkInterfacesInput = {
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
        Filters = {
            type = "list",
            member = M.RouterNetworkInterfaceFilter,
            traits = {
                json_name = "filters",
            },
        },
    },
}

M.ListRouterNetworkInterfacesOutput = {
    type = "structure",
    members = {
        RouterNetworkInterfaces = {
            type = "list",
            member = M.ListedRouterNetworkInterface,
            traits = {
                json_name = "routerNetworkInterfaces",
                required = true,
            },
        },
        NextToken = {
            type = "string",
            traits = {
                json_name = "nextToken",
            },
        },
    },
}

M.RouterOutputFilter = {
    type = "union",
    members = {
        RegionNames = {
            type = "list",
            member = { type = "string" },
            traits = {
                json_name = "regionNames",
            },
        },
        NetworkInterfaceArns = {
            type = "list",
            member = { type = "string" },
            traits = {
                json_name = "networkInterfaceArns",
            },
        },
        RoutingScopes = {
            type = "list",
            member = { type = "string" },
            traits = {
                json_name = "routingScopes",
            },
        },
        OutputTypes = {
            type = "list",
            member = { type = "string" },
            traits = {
                json_name = "outputTypes",
            },
        },
        RoutedInputArns = {
            type = "list",
            member = { type = "string" },
            traits = {
                json_name = "routedInputArns",
            },
        },
        NameContains = {
            type = "list",
            member = { type = "string" },
            traits = {
                json_name = "nameContains",
            },
        },
    },
}

M.ListRouterOutputsInput = {
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
        Filters = {
            type = "list",
            member = M.RouterOutputFilter,
            traits = {
                json_name = "filters",
            },
        },
    },
}

M.ListRouterOutputsOutput = {
    type = "structure",
    members = {
        RouterOutputs = {
            type = "list",
            member = M.ListedRouterOutput,
            traits = {
                json_name = "routerOutputs",
                required = true,
            },
        },
        NextToken = {
            type = "string",
            traits = {
                json_name = "nextToken",
            },
        },
    },
}

M.ListTagsForGlobalResourceInput = {
    type = "structure",
    members = {
        ResourceArn = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.ListTagsForGlobalResourceOutput = {
    type = "structure",
    members = {
        Tags = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
            traits = {
                json_name = "tags",
            },
        },
    },
}

M.ListTagsForResourceInput = {
    type = "structure",
    members = {
        ResourceArn = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.ListTagsForResourceOutput = {
    type = "structure",
    members = {
        Tags = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
            traits = {
                json_name = "tags",
            },
        },
    },
}

M.PurchaseOfferingInput = {
    type = "structure",
    members = {
        OfferingArn = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        ReservationName = {
            type = "string",
            traits = {
                json_name = "reservationName",
                required = true,
            },
        },
        Start = {
            type = "string",
            traits = {
                json_name = "start",
                required = true,
            },
        },
    },
}

M.PurchaseOfferingOutput = {
    type = "structure",
    members = {
        Reservation = setmetatable({ traits = {
            json_name = "reservation",
        } }, { __index = M.Reservation }),
    },
}

M.RestartRouterInputInput = {
    type = "structure",
    members = {
        Arn = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.RestartRouterInputOutput = {
    type = "structure",
    members = {
        Arn = {
            type = "string",
            traits = {
                json_name = "arn",
                required = true,
            },
        },
        Name = {
            type = "string",
            traits = {
                json_name = "name",
                required = true,
            },
        },
        State = {
            type = "string",
            traits = {
                json_name = "state",
                required = true,
            },
        },
    },
}

M.StartRouterInputInput = {
    type = "structure",
    members = {
        Arn = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.StartRouterInputOutput = {
    type = "structure",
    members = {
        Arn = {
            type = "string",
            traits = {
                json_name = "arn",
                required = true,
            },
        },
        Name = {
            type = "string",
            traits = {
                json_name = "name",
                required = true,
            },
        },
        State = {
            type = "string",
            traits = {
                json_name = "state",
                required = true,
            },
        },
        MaintenanceScheduleType = {
            type = "string",
            traits = {
                json_name = "maintenanceScheduleType",
                required = true,
            },
        },
        MaintenanceSchedule = setmetatable({ traits = {
            json_name = "maintenanceSchedule",
            required = true,
        } }, { __index = M.MaintenanceSchedule }),
    },
}

M.StopRouterInputInput = {
    type = "structure",
    members = {
        Arn = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.StopRouterInputOutput = {
    type = "structure",
    members = {
        Arn = {
            type = "string",
            traits = {
                json_name = "arn",
                required = true,
            },
        },
        Name = {
            type = "string",
            traits = {
                json_name = "name",
                required = true,
            },
        },
        State = {
            type = "string",
            traits = {
                json_name = "state",
                required = true,
            },
        },
    },
}

M.UpdateRouterInputInput = {
    type = "structure",
    members = {
        Arn = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        Name = {
            type = "string",
            traits = {
                json_name = "name",
            },
        },
        Configuration = setmetatable({ traits = {
            json_name = "configuration",
        } }, { __index = M.RouterInputConfiguration }),
        MaximumBitrate = {
            type = "long",
            traits = {
                json_name = "maximumBitrate",
            },
        },
        RoutingScope = {
            type = "string",
            traits = {
                json_name = "routingScope",
            },
        },
        Tier = {
            type = "string",
            traits = {
                json_name = "tier",
            },
        },
        TransitEncryption = setmetatable({ traits = {
            json_name = "transitEncryption",
        } }, { __index = M.RouterInputTransitEncryption }),
        MaintenanceConfiguration = setmetatable({ traits = {
            json_name = "maintenanceConfiguration",
        } }, { __index = M.MaintenanceConfiguration }),
    },
}

M.UpdateRouterInputOutput = {
    type = "structure",
    members = {
        RouterInput = setmetatable({ traits = {
            json_name = "routerInput",
            required = true,
        } }, { __index = M.RouterInput }),
    },
}

M.UpdateRouterNetworkInterfaceInput = {
    type = "structure",
    members = {
        Arn = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        Name = {
            type = "string",
            traits = {
                json_name = "name",
            },
        },
        Configuration = setmetatable({ traits = {
            json_name = "configuration",
        } }, { __index = M.RouterNetworkInterfaceConfiguration }),
    },
}

M.UpdateRouterNetworkInterfaceOutput = {
    type = "structure",
    members = {
        RouterNetworkInterface = setmetatable({ traits = {
            json_name = "routerNetworkInterface",
            required = true,
        } }, { __index = M.RouterNetworkInterface }),
    },
}

M.RestartRouterOutputInput = {
    type = "structure",
    members = {
        Arn = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.RestartRouterOutputOutput = {
    type = "structure",
    members = {
        Arn = {
            type = "string",
            traits = {
                json_name = "arn",
                required = true,
            },
        },
        Name = {
            type = "string",
            traits = {
                json_name = "name",
                required = true,
            },
        },
        State = {
            type = "string",
            traits = {
                json_name = "state",
                required = true,
            },
        },
    },
}

M.StartRouterOutputInput = {
    type = "structure",
    members = {
        Arn = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.StartRouterOutputOutput = {
    type = "structure",
    members = {
        Arn = {
            type = "string",
            traits = {
                json_name = "arn",
                required = true,
            },
        },
        Name = {
            type = "string",
            traits = {
                json_name = "name",
                required = true,
            },
        },
        State = {
            type = "string",
            traits = {
                json_name = "state",
                required = true,
            },
        },
        MaintenanceScheduleType = {
            type = "string",
            traits = {
                json_name = "maintenanceScheduleType",
                required = true,
            },
        },
        MaintenanceSchedule = setmetatable({ traits = {
            json_name = "maintenanceSchedule",
            required = true,
        } }, { __index = M.MaintenanceSchedule }),
    },
}

M.StopRouterOutputInput = {
    type = "structure",
    members = {
        Arn = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.StopRouterOutputOutput = {
    type = "structure",
    members = {
        Arn = {
            type = "string",
            traits = {
                json_name = "arn",
                required = true,
            },
        },
        Name = {
            type = "string",
            traits = {
                json_name = "name",
                required = true,
            },
        },
        State = {
            type = "string",
            traits = {
                json_name = "state",
                required = true,
            },
        },
    },
}

M.TakeRouterInputInput = {
    type = "structure",
    members = {
        RouterOutputArn = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        RouterInputArn = {
            type = "string",
            traits = {
                json_name = "routerInputArn",
            },
        },
    },
}

M.TakeRouterInputOutput = {
    type = "structure",
    members = {
        RoutedState = {
            type = "string",
            traits = {
                json_name = "routedState",
                required = true,
            },
        },
        RouterOutputArn = {
            type = "string",
            traits = {
                json_name = "routerOutputArn",
                required = true,
            },
        },
        RouterOutputName = {
            type = "string",
            traits = {
                json_name = "routerOutputName",
                required = true,
            },
        },
        RouterInputArn = {
            type = "string",
            traits = {
                json_name = "routerInputArn",
            },
        },
        RouterInputName = {
            type = "string",
            traits = {
                json_name = "routerInputName",
            },
        },
    },
}

M.UpdateRouterOutputInput = {
    type = "structure",
    members = {
        Arn = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        Name = {
            type = "string",
            traits = {
                json_name = "name",
            },
        },
        Configuration = setmetatable({ traits = {
            json_name = "configuration",
        } }, { __index = M.RouterOutputConfiguration }),
        MaximumBitrate = {
            type = "long",
            traits = {
                json_name = "maximumBitrate",
            },
        },
        RoutingScope = {
            type = "string",
            traits = {
                json_name = "routingScope",
            },
        },
        Tier = {
            type = "string",
            traits = {
                json_name = "tier",
            },
        },
        MaintenanceConfiguration = setmetatable({ traits = {
            json_name = "maintenanceConfiguration",
        } }, { __index = M.MaintenanceConfiguration }),
    },
}

M.UpdateRouterOutputOutput = {
    type = "structure",
    members = {
        RouterOutput = setmetatable({ traits = {
            json_name = "routerOutput",
            required = true,
        } }, { __index = M.RouterOutput }),
    },
}

M.TagGlobalResourceInput = {
    type = "structure",
    members = {
        ResourceArn = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        Tags = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
            traits = {
                json_name = "tags",
                required = true,
            },
        },
    },
}

M.TagGlobalResourceOutput = {
    type = "structure",
}

M.TagResourceInput = {
    type = "structure",
    members = {
        ResourceArn = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        Tags = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
            traits = {
                json_name = "tags",
                required = true,
            },
        },
    },
}

M.TagResourceOutput = {
    type = "structure",
}

M.UntagGlobalResourceInput = {
    type = "structure",
    members = {
        ResourceArn = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        TagKeys = {
            type = "list",
            member = { type = "string" },
            traits = {
                http_query = "tagKeys",
                required = true,
            },
        },
    },
}

M.UntagGlobalResourceOutput = {
    type = "structure",
}

M.UntagResourceInput = {
    type = "structure",
    members = {
        ResourceArn = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        TagKeys = {
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
}

return M
