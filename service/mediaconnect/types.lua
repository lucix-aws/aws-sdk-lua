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
            type = "number",
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
            type = "number",
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
        NetworkOutput = {
            type = "structure",
            traits = {
                json_name = "networkOutput",
            },
        },
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
        FlowVpcInterfaceAttachment = {
            type = "structure",
            traits = {
                json_name = "flowVpcInterfaceAttachment",
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
        MulticastSourceSettings = {
            type = "structure",
            traits = {
                json_name = "multicastSourceSettings",
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
            type = "number",
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
        FlowSource = {
            type = "structure",
            traits = {
                json_name = "flowSource",
            },
        },
        NetworkSource = {
            type = "structure",
            traits = {
                json_name = "networkSource",
            },
        },
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
        Fmtp = {
            type = "structure",
            traits = {
                json_name = "fmtp",
            },
        },
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
        Attributes = {
            type = "structure",
            traits = {
                json_name = "attributes",
            },
        },
        ClockRate = {
            type = "number",
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
            type = "number",
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
            key_type = "string",
            value_type = "string",
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
            type = "number",
            traits = {
                json_name = "destinationPort",
                required = true,
            },
        },
        Interface = {
            type = "structure",
            traits = {
                json_name = "interface",
                required = true,
            },
        },
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
            type = "number",
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
            member_type = "structure",
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
        EncodingParameters = {
            type = "structure",
            traits = {
                json_name = "encodingParameters",
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
        SecretsManager = {
            type = "structure",
            traits = {
                json_name = "secretsManager",
            },
        },
        Automatic = {
            type = "structure",
            traits = {
                json_name = "automatic",
            },
        },
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
        EncryptionKeyConfiguration = {
            type = "union",
            traits = {
                json_name = "encryptionKeyConfiguration",
                required = true,
            },
        },
    },
}

M.AddOutputRequest = {
    type = "structure",
    members = {
        CidrAllowList = {
            type = "list",
            member_type = "string",
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
        Encryption = {
            type = "structure",
            traits = {
                json_name = "encryption",
            },
        },
        MaxLatency = {
            type = "number",
            traits = {
                json_name = "maxLatency",
            },
        },
        MediaStreamOutputConfigurations = {
            type = "list",
            member_type = "structure",
            traits = {
                json_name = "mediaStreamOutputConfigurations",
            },
        },
        MinLatency = {
            type = "number",
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
            type = "number",
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
            type = "number",
            traits = {
                json_name = "senderControlPort",
            },
        },
        SmoothingLatency = {
            type = "number",
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
        VpcInterfaceAttachment = {
            type = "structure",
            traits = {
                json_name = "vpcInterfaceAttachment",
            },
        },
        OutputStatus = {
            type = "string",
            traits = {
                json_name = "outputStatus",
            },
        },
        NdiSpeedHqQuality = {
            type = "number",
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
            key_type = "string",
            value_type = "string",
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
        RouterIntegrationTransitEncryption = {
            type = "structure",
            traits = {
                json_name = "routerIntegrationTransitEncryption",
            },
        },
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
            type = "number",
            traits = {
                json_name = "thresholdSeconds",
            },
        },
    },
}

M.AudioMonitoringSetting = {
    type = "structure",
    members = {
        SilentAudio = {
            type = "structure",
            traits = {
                json_name = "silentAudio",
            },
        },
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
            type = "number",
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
            type = "number",
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
        FlowOutput = {
            type = "structure",
            traits = {
                json_name = "flowOutput",
            },
        },
        NetworkOutput = {
            type = "structure",
            traits = {
                json_name = "networkOutput",
            },
        },
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
        FlowVpcInterfaceAttachment = {
            type = "structure",
            traits = {
                json_name = "flowVpcInterfaceAttachment",
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
        MulticastSourceSettings = {
            type = "structure",
            traits = {
                json_name = "multicastSourceSettings",
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
            type = "number",
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
        FlowSource = {
            type = "structure",
            traits = {
                json_name = "flowSource",
            },
        },
        NetworkSource = {
            type = "structure",
            traits = {
                json_name = "networkSource",
            },
        },
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
            type = "number",
            traits = {
                json_name = "destinationPort",
                required = true,
            },
        },
        Interface = {
            type = "structure",
            traits = {
                json_name = "interface",
                required = true,
            },
        },
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
            type = "number",
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
        Encryption = {
            type = "structure",
            traits = {
                json_name = "encryption",
            },
        },
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
            member_type = "string",
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
            type = "number",
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
        Encryption = {
            type = "structure",
            traits = {
                json_name = "encryption",
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
            },
        },
        Subscribers = {
            type = "list",
            member_type = "string",
            traits = {
                json_name = "subscribers",
                required = true,
            },
        },
        EntitlementTags = {
            type = "map",
            key_type = "string",
            value_type = "string",
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
            type = "number",
            traits = {
                json_name = "inputPort",
                required = true,
            },
        },
        Interface = {
            type = "structure",
            traits = {
                json_name = "interface",
                required = true,
            },
        },
    },
}

M.InputConfigurationRequest = {
    type = "structure",
    members = {
        InputPort = {
            type = "number",
            traits = {
                json_name = "inputPort",
                required = true,
            },
        },
        Interface = {
            type = "structure",
            traits = {
                json_name = "interface",
                required = true,
            },
        },
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
            type = "number",
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
        Maintenance = {
            type = "structure",
            traits = {
                json_name = "maintenance",
            },
        },
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
        Fmtp = {
            type = "structure",
            traits = {
                json_name = "fmtp",
                required = true,
            },
        },
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
        Attributes = {
            type = "structure",
            traits = {
                json_name = "attributes",
            },
        },
        ClockRate = {
            type = "number",
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
            type = "number",
            traits = {
                json_name = "fmt",
                required = true,
            },
        },
        MediaStreamId = {
            type = "number",
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
            type = "number",
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
            member_type = "structure",
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
        EncodingParameters = {
            type = "structure",
            traits = {
                json_name = "encodingParameters",
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
            member_type = "structure",
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
            member_type = "structure",
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
            type = "number",
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
            type = "number",
            traits = {
                json_name = "frameHeight",
                required = true,
            },
        },
        FrameWidth = {
            type = "number",
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
            type = "number",
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
        FrameResolution = {
            type = "structure",
            traits = {
                json_name = "frameResolution",
            },
        },
        FrameRate = {
            type = "string",
            traits = {
                json_name = "frameRate",
            },
        },
        Channels = {
            type = "number",
            traits = {
                json_name = "channels",
            },
        },
        SampleRate = {
            type = "number",
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
            type = "number",
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
            type = "number",
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
        ResourceSpecification = {
            type = "structure",
            traits = {
                json_name = "resourceSpecification",
                required = true,
            },
        },
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
            member_type = "string",
            traits = {
                json_name = "cidrAllowList",
            },
        },
        MaxBitrate = {
            type = "number",
            traits = {
                json_name = "maxBitrate",
            },
        },
        MaxLatency = {
            type = "number",
            traits = {
                json_name = "maxLatency",
            },
        },
        MaxSyncBuffer = {
            type = "number",
            traits = {
                json_name = "maxSyncBuffer",
            },
        },
        MinLatency = {
            type = "number",
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
            type = "number",
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
            type = "number",
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
            type = "number",
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
            type = "number",
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
        NdiSourceSettings = {
            type = "structure",
            traits = {
                json_name = "ndiSourceSettings",
            },
        },
    },
}

M.Output = {
    type = "structure",
    members = {
        DataTransferSubscriberFeePercent = {
            type = "number",
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
        Encryption = {
            type = "structure",
            traits = {
                json_name = "encryption",
            },
        },
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
            member_type = "structure",
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
            type = "number",
            traits = {
                json_name = "port",
            },
        },
        Transport = {
            type = "structure",
            traits = {
                json_name = "transport",
            },
        },
        VpcInterfaceAttachment = {
            type = "structure",
            traits = {
                json_name = "vpcInterfaceAttachment",
            },
        },
        BridgeArn = {
            type = "string",
            traits = {
                json_name = "bridgeArn",
            },
        },
        BridgePorts = {
            type = "list",
            member_type = "number",
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
        RouterIntegrationTransitEncryption = {
            type = "structure",
            traits = {
                json_name = "routerIntegrationTransitEncryption",
            },
        },
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
            type = "number",
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
        ResourceSpecification = {
            type = "structure",
            traits = {
                json_name = "resourceSpecification",
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
        VpcInterfaceAttachment = {
            type = "structure",
            traits = {
                json_name = "vpcInterfaceAttachment",
            },
        },
    },
}

M.SetSourceRequest = {
    type = "structure",
    members = {
        Decryption = {
            type = "structure",
            traits = {
                json_name = "decryption",
            },
        },
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
            type = "number",
            traits = {
                json_name = "ingestPort",
            },
        },
        MaxBitrate = {
            type = "number",
            traits = {
                json_name = "maxBitrate",
            },
        },
        MaxLatency = {
            type = "number",
            traits = {
                json_name = "maxLatency",
            },
        },
        MaxSyncBuffer = {
            type = "number",
            traits = {
                json_name = "maxSyncBuffer",
            },
        },
        MediaStreamSourceConfigurations = {
            type = "list",
            member_type = "structure",
            traits = {
                json_name = "mediaStreamSourceConfigurations",
            },
        },
        MinLatency = {
            type = "number",
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
            type = "number",
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
            type = "number",
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
        GatewayBridgeSource = {
            type = "structure",
            traits = {
                json_name = "gatewayBridgeSource",
            },
        },
        NdiSourceSettings = {
            type = "structure",
            traits = {
                json_name = "ndiSourceSettings",
            },
        },
        SourceTags = {
            type = "map",
            key_type = "string",
            value_type = "string",
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
        RouterIntegrationTransitDecryption = {
            type = "structure",
            traits = {
                json_name = "routerIntegrationTransitDecryption",
            },
        },
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
        VpcInterfaceAttachment = {
            type = "structure",
            traits = {
                json_name = "vpcInterfaceAttachment",
            },
        },
    },
}

M.Source = {
    type = "structure",
    members = {
        DataTransferSubscriberFeePercent = {
            type = "number",
            traits = {
                json_name = "dataTransferSubscriberFeePercent",
            },
        },
        Decryption = {
            type = "structure",
            traits = {
                json_name = "decryption",
            },
        },
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
            type = "number",
            traits = {
                json_name = "ingestPort",
            },
        },
        MediaStreamSourceConfigurations = {
            type = "list",
            member_type = "structure",
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
            type = "number",
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
        Transport = {
            type = "structure",
            traits = {
                json_name = "transport",
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
        GatewayBridgeSource = {
            type = "structure",
            traits = {
                json_name = "gatewayBridgeSource",
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
        RouterIntegrationTransitDecryption = {
            type = "structure",
            traits = {
                json_name = "routerIntegrationTransitDecryption",
            },
        },
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
            type = "number",
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
        FrameResolution = {
            type = "structure",
            traits = {
                json_name = "frameResolution",
            },
        },
        Pid = {
            type = "number",
            traits = {
                json_name = "pid",
                required = true,
            },
        },
        SampleRate = {
            type = "number",
            traits = {
                json_name = "sampleRate",
            },
        },
        SampleSize = {
            type = "number",
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
            type = "number",
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
            type = "number",
            traits = {
                json_name = "programNumber",
                required = true,
            },
        },
        ProgramPid = {
            type = "number",
            traits = {
                json_name = "programPid",
                required = true,
            },
        },
        Streams = {
            type = "list",
            member_type = "structure",
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
            type = "number",
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
            type = "number",
            traits = {
                json_name = "thresholdSeconds",
            },
        },
    },
}

M.VideoMonitoringSetting = {
    type = "structure",
    members = {
        BlackFrames = {
            type = "structure",
            traits = {
                json_name = "blackFrames",
            },
        },
        FrozenFrames = {
            type = "structure",
            traits = {
                json_name = "frozenFrames",
            },
        },
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
            member_type = "string",
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
            member_type = "string",
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
            member_type = "string",
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
            key_type = "string",
            value_type = "string",
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
            member_type = "structure",
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
            member_type = "structure",
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
            member_type = "structure",
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
            member_type = "structure",
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
            type = "number",
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
            member_type = "structure",
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
            member_type = "structure",
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
            member_type = "structure",
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
            member_type = "structure",
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
            member_type = "structure",
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
            member_type = "structure",
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
            member_type = "structure",
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
            member_type = "structure",
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
            type = "number",
            traits = {
                json_name = "maxBitrate",
                required = true,
            },
        },
        MaxOutputs = {
            type = "number",
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
            member_type = "string",
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
            type = "number",
            traits = {
                json_name = "port",
                required = true,
            },
        },
        RecoveryLatencyMilliseconds = {
            type = "number",
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
            type = "number",
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
        EncryptionKey = {
            type = "structure",
            traits = {
                json_name = "encryptionKey",
                required = true,
            },
        },
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
            type = "number",
            traits = {
                json_name = "sourcePort",
                required = true,
            },
        },
        MinimumLatencyMilliseconds = {
            type = "number",
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
        DecryptionConfiguration = {
            type = "structure",
            traits = {
                json_name = "decryptionConfiguration",
            },
        },
    },
}

M.SrtListenerRouterInputConfiguration = {
    type = "structure",
    members = {
        Port = {
            type = "number",
            traits = {
                json_name = "port",
                required = true,
            },
        },
        MinimumLatencyMilliseconds = {
            type = "number",
            traits = {
                json_name = "minimumLatencyMilliseconds",
                required = true,
            },
        },
        DecryptionConfiguration = {
            type = "structure",
            traits = {
                json_name = "decryptionConfiguration",
            },
        },
    },
}

M.FailoverRouterInputProtocolConfiguration = {
    type = "union",
    members = {
        Rist = {
            type = "structure",
            traits = {
                json_name = "rist",
            },
        },
        SrtListener = {
            type = "structure",
            traits = {
                json_name = "srtListener",
            },
        },
        SrtCaller = {
            type = "structure",
            traits = {
                json_name = "srtCaller",
            },
        },
        Rtp = {
            type = "structure",
            traits = {
                json_name = "rtp",
            },
        },
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
            member_type = "union",
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
            type = "number",
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
        SourceTransitDecryption = {
            type = "structure",
            traits = {
                json_name = "sourceTransitDecryption",
                required = true,
            },
        },
    },
}

M.MediaLiveChannelPipelineId = {
    PIPELINE_0 = "PIPELINE_0",
    PIPELINE_1 = "PIPELINE_1",
}

M.MediaLiveTransitEncryptionKeyConfiguration = {
    type = "union",
    members = {
        SecretsManager = {
            type = "structure",
            traits = {
                json_name = "secretsManager",
            },
        },
        Automatic = {
            type = "structure",
            traits = {
                json_name = "automatic",
            },
        },
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
        EncryptionKeyConfiguration = {
            type = "union",
            traits = {
                json_name = "encryptionKeyConfiguration",
                required = true,
            },
        },
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
        SourceTransitDecryption = {
            type = "structure",
            traits = {
                json_name = "sourceTransitDecryption",
                required = true,
            },
        },
    },
}

M.MergeRouterInputProtocolConfiguration = {
    type = "union",
    members = {
        Rtp = {
            type = "structure",
            traits = {
                json_name = "rtp",
            },
        },
        Rist = {
            type = "structure",
            traits = {
                json_name = "rist",
            },
        },
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
            member_type = "union",
            traits = {
                json_name = "protocolConfigurations",
                required = true,
            },
        },
        MergeRecoveryWindowMilliseconds = {
            type = "number",
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
        Rist = {
            type = "structure",
            traits = {
                json_name = "rist",
            },
        },
        SrtListener = {
            type = "structure",
            traits = {
                json_name = "srtListener",
            },
        },
        SrtCaller = {
            type = "structure",
            traits = {
                json_name = "srtCaller",
            },
        },
        Rtp = {
            type = "structure",
            traits = {
                json_name = "rtp",
            },
        },
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
        ProtocolConfiguration = {
            type = "union",
            traits = {
                json_name = "protocolConfiguration",
                required = true,
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

M.RouterInputConfiguration = {
    type = "union",
    members = {
        Standard = {
            type = "structure",
            traits = {
                json_name = "standard",
            },
        },
        MediaLiveChannel = {
            type = "structure",
            traits = {
                json_name = "mediaLiveChannel",
            },
        },
        Failover = {
            type = "structure",
            traits = {
                json_name = "failover",
            },
        },
        MediaConnectFlow = {
            type = "structure",
            traits = {
                json_name = "mediaConnectFlow",
            },
        },
        Merge = {
            type = "structure",
            traits = {
                json_name = "merge",
            },
        },
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
        PreferredDayTime = {
            type = "structure",
            traits = {
                json_name = "preferredDayTime",
            },
        },
        Default = {
            type = "structure",
            traits = {
                json_name = "default",
            },
        },
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
        Window = {
            type = "structure",
            traits = {
                json_name = "window",
            },
        },
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
            type = "number",
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
        SourceIndexZeroStreamDetails = {
            type = "structure",
            traits = {
                json_name = "sourceIndexZeroStreamDetails",
                required = true,
            },
        },
        SourceIndexOneStreamDetails = {
            type = "structure",
            traits = {
                json_name = "sourceIndexOneStreamDetails",
                required = true,
            },
        },
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
            type = "number",
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
        SourceIndexZeroStreamDetails = {
            type = "structure",
            traits = {
                json_name = "sourceIndexZeroStreamDetails",
                required = true,
            },
        },
        SourceIndexOneStreamDetails = {
            type = "structure",
            traits = {
                json_name = "sourceIndexOneStreamDetails",
                required = true,
            },
        },
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
        Standard = {
            type = "structure",
            traits = {
                json_name = "standard",
            },
        },
        MediaLiveChannel = {
            type = "structure",
            traits = {
                json_name = "mediaLiveChannel",
            },
        },
        Failover = {
            type = "structure",
            traits = {
                json_name = "failover",
            },
        },
        MediaConnectFlow = {
            type = "structure",
            traits = {
                json_name = "mediaConnectFlow",
            },
        },
        Merge = {
            type = "structure",
            traits = {
                json_name = "merge",
            },
        },
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
        SecretsManager = {
            type = "structure",
            traits = {
                json_name = "secretsManager",
            },
        },
        Automatic = {
            type = "structure",
            traits = {
                json_name = "automatic",
            },
        },
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
        EncryptionKeyConfiguration = {
            type = "union",
            traits = {
                json_name = "encryptionKeyConfiguration",
                required = true,
            },
        },
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
        Configuration = {
            type = "union",
            traits = {
                json_name = "configuration",
                required = true,
            },
        },
        RoutedOutputs = {
            type = "number",
            traits = {
                json_name = "routedOutputs",
                required = true,
            },
        },
        MaximumRoutedOutputs = {
            type = "number",
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
            type = "number",
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
            member_type = "structure",
            traits = {
                json_name = "messages",
                required = true,
            },
        },
        TransitEncryption = {
            type = "structure",
            traits = {
                json_name = "transitEncryption",
                required = true,
            },
        },
        Tags = {
            type = "map",
            key_type = "string",
            value_type = "string",
            traits = {
                json_name = "tags",
                required = true,
            },
        },
        StreamDetails = {
            type = "union",
            traits = {
                json_name = "streamDetails",
                required = true,
            },
        },
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
        MaintenanceConfiguration = {
            type = "union",
            traits = {
                json_name = "maintenanceConfiguration",
                required = true,
            },
        },
        MaintenanceScheduleType = {
            type = "string",
            traits = {
                json_name = "maintenanceScheduleType",
            },
        },
        MaintenanceSchedule = {
            type = "union",
            traits = {
                json_name = "maintenanceSchedule",
            },
        },
    },
}

M.BatchGetRouterInputOutput = {
    type = "structure",
    members = {
        RouterInputs = {
            type = "list",
            member_type = "structure",
            traits = {
                json_name = "routerInputs",
                required = true,
            },
        },
        Errors = {
            type = "list",
            member_type = "structure",
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
            member_type = "string",
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
            member_type = "structure",
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
            member_type = "string",
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
        Public = {
            type = "structure",
            traits = {
                json_name = "public",
            },
        },
        Vpc = {
            type = "structure",
            traits = {
                json_name = "vpc",
            },
        },
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
        Configuration = {
            type = "union",
            traits = {
                json_name = "configuration",
                required = true,
            },
        },
        AssociatedOutputCount = {
            type = "number",
            traits = {
                json_name = "associatedOutputCount",
                required = true,
            },
        },
        AssociatedInputCount = {
            type = "number",
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
            key_type = "string",
            value_type = "string",
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
            member_type = "structure",
            traits = {
                json_name = "routerNetworkInterfaces",
                required = true,
            },
        },
        Errors = {
            type = "list",
            member_type = "structure",
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
            member_type = "string",
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
        DestinationTransitEncryption = {
            type = "structure",
            traits = {
                json_name = "destinationTransitEncryption",
                required = true,
            },
        },
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
        DestinationTransitEncryption = {
            type = "structure",
            traits = {
                json_name = "destinationTransitEncryption",
                required = true,
            },
        },
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
            type = "number",
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
            type = "number",
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
        EncryptionKey = {
            type = "structure",
            traits = {
                json_name = "encryptionKey",
                required = true,
            },
        },
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
            type = "number",
            traits = {
                json_name = "destinationPort",
                required = true,
            },
        },
        MinimumLatencyMilliseconds = {
            type = "number",
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
        EncryptionConfiguration = {
            type = "structure",
            traits = {
                json_name = "encryptionConfiguration",
            },
        },
    },
}

M.SrtListenerRouterOutputConfiguration = {
    type = "structure",
    members = {
        Port = {
            type = "number",
            traits = {
                json_name = "port",
                required = true,
            },
        },
        MinimumLatencyMilliseconds = {
            type = "number",
            traits = {
                json_name = "minimumLatencyMilliseconds",
                required = true,
            },
        },
        EncryptionConfiguration = {
            type = "structure",
            traits = {
                json_name = "encryptionConfiguration",
            },
        },
    },
}

M.RouterOutputProtocolConfiguration = {
    type = "union",
    members = {
        Rist = {
            type = "structure",
            traits = {
                json_name = "rist",
            },
        },
        SrtListener = {
            type = "structure",
            traits = {
                json_name = "srtListener",
            },
        },
        SrtCaller = {
            type = "structure",
            traits = {
                json_name = "srtCaller",
            },
        },
        Rtp = {
            type = "structure",
            traits = {
                json_name = "rtp",
            },
        },
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
        ProtocolConfiguration = {
            type = "union",
            traits = {
                json_name = "protocolConfiguration",
                required = true,
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

M.RouterOutputConfiguration = {
    type = "union",
    members = {
        Standard = {
            type = "structure",
            traits = {
                json_name = "standard",
            },
        },
        MediaConnectFlow = {
            type = "structure",
            traits = {
                json_name = "mediaConnectFlow",
            },
        },
        MediaLiveInput = {
            type = "structure",
            traits = {
                json_name = "mediaLiveInput",
            },
        },
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
        Standard = {
            type = "structure",
            traits = {
                json_name = "standard",
            },
        },
        MediaConnectFlow = {
            type = "structure",
            traits = {
                json_name = "mediaConnectFlow",
            },
        },
        MediaLiveInput = {
            type = "structure",
            traits = {
                json_name = "mediaLiveInput",
            },
        },
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
        Configuration = {
            type = "union",
            traits = {
                json_name = "configuration",
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
            type = "number",
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
            member_type = "structure",
            traits = {
                json_name = "messages",
                required = true,
            },
        },
        Tags = {
            type = "map",
            key_type = "string",
            value_type = "string",
            traits = {
                json_name = "tags",
                required = true,
            },
        },
        StreamDetails = {
            type = "union",
            traits = {
                json_name = "streamDetails",
                required = true,
            },
        },
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
        MaintenanceConfiguration = {
            type = "union",
            traits = {
                json_name = "maintenanceConfiguration",
                required = true,
            },
        },
        MaintenanceScheduleType = {
            type = "string",
            traits = {
                json_name = "maintenanceScheduleType",
            },
        },
        MaintenanceSchedule = {
            type = "union",
            traits = {
                json_name = "maintenanceSchedule",
            },
        },
    },
}

M.BatchGetRouterOutputOutput = {
    type = "structure",
    members = {
        RouterOutputs = {
            type = "list",
            member_type = "structure",
            traits = {
                json_name = "routerOutputs",
                required = true,
            },
        },
        Errors = {
            type = "list",
            member_type = "structure",
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
            type = "number",
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
            type = "number",
            traits = {
                json_name = "maxBitrate",
                required = true,
            },
        },
        MaxOutputs = {
            type = "number",
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
            type = "number",
            traits = {
                json_name = "recoveryWindow",
            },
        },
        SourcePriority = {
            type = "structure",
            traits = {
                json_name = "sourcePriority",
            },
        },
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
            member_type = "structure",
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
        EgressGatewayBridge = {
            type = "structure",
            traits = {
                json_name = "egressGatewayBridge",
            },
        },
        IngressGatewayBridge = {
            type = "structure",
            traits = {
                json_name = "ingressGatewayBridge",
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
            member_type = "structure",
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
        SourceFailoverConfig = {
            type = "structure",
            traits = {
                json_name = "sourceFailoverConfig",
            },
        },
        Sources = {
            type = "list",
            member_type = "structure",
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
        EgressGatewayBridge = {
            type = "structure",
            traits = {
                json_name = "egressGatewayBridge",
            },
        },
        IngressGatewayBridge = {
            type = "structure",
            traits = {
                json_name = "ingressGatewayBridge",
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
            member_type = "structure",
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
        SourceFailoverConfig = {
            type = "structure",
            traits = {
                json_name = "sourceFailoverConfig",
            },
        },
        Sources = {
            type = "list",
            member_type = "structure",
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
        Bridge = {
            type = "structure",
            traits = {
                json_name = "bridge",
            },
        },
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
        Bridge = {
            type = "structure",
            traits = {
                json_name = "bridge",
            },
        },
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
            type = "number",
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
            member_type = "structure",
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
            type = "number",
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
            type = "number",
            traits = {
                json_name = "maxBitrate",
            },
        },
        MaxOutputs = {
            type = "number",
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
            type = "number",
            traits = {
                json_name = "recoveryWindow",
            },
        },
        SourcePriority = {
            type = "structure",
            traits = {
                json_name = "sourcePriority",
            },
        },
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
        EgressGatewayBridge = {
            type = "structure",
            traits = {
                json_name = "egressGatewayBridge",
            },
        },
        IngressGatewayBridge = {
            type = "structure",
            traits = {
                json_name = "ingressGatewayBridge",
            },
        },
        SourceFailoverConfig = {
            type = "structure",
            traits = {
                json_name = "sourceFailoverConfig",
            },
        },
    },
}

M.UpdateBridgeOperationOutput = {
    type = "structure",
    members = {
        Bridge = {
            type = "structure",
            traits = {
                json_name = "bridge",
            },
        },
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
            type = "number",
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
            type = "number",
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
        NetworkOutput = {
            type = "structure",
            traits = {
                json_name = "networkOutput",
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

M.UpdateBridgeOutputOutput = {
    type = "structure",
    members = {
        BridgeArn = {
            type = "string",
            traits = {
                json_name = "bridgeArn",
            },
        },
        Output = {
            type = "structure",
            traits = {
                json_name = "output",
            },
        },
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
        FlowVpcInterfaceAttachment = {
            type = "structure",
            traits = {
                json_name = "flowVpcInterfaceAttachment",
            },
        },
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
        MulticastSourceSettings = {
            type = "structure",
            traits = {
                json_name = "multicastSourceSettings",
            },
        },
        NetworkName = {
            type = "string",
            traits = {
                json_name = "networkName",
            },
        },
        Port = {
            type = "number",
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
        FlowSource = {
            type = "structure",
            traits = {
                json_name = "flowSource",
            },
        },
        NetworkSource = {
            type = "structure",
            traits = {
                json_name = "networkSource",
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

M.UpdateBridgeSourceOutput = {
    type = "structure",
    members = {
        BridgeArn = {
            type = "string",
            traits = {
                json_name = "bridgeArn",
            },
        },
        Source = {
            type = "structure",
            traits = {
                json_name = "source",
            },
        },
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
            type = "number",
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
            member_type = "structure",
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
            member_type = "structure",
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
            member_type = "structure",
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
            member_type = "structure",
            traits = {
                json_name = "entitlements",
            },
        },
        MediaStreams = {
            type = "list",
            member_type = "structure",
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
            member_type = "structure",
            traits = {
                json_name = "outputs",
            },
        },
        Source = {
            type = "structure",
            traits = {
                json_name = "source",
            },
        },
        SourceFailoverConfig = {
            type = "structure",
            traits = {
                json_name = "sourceFailoverConfig",
            },
        },
        Sources = {
            type = "list",
            member_type = "structure",
            traits = {
                json_name = "sources",
            },
        },
        VpcInterfaces = {
            type = "list",
            member_type = "structure",
            traits = {
                json_name = "vpcInterfaces",
            },
        },
        Maintenance = {
            type = "structure",
            traits = {
                json_name = "maintenance",
            },
        },
        SourceMonitoringConfig = {
            type = "structure",
            traits = {
                json_name = "sourceMonitoringConfig",
            },
        },
        FlowSize = {
            type = "string",
            traits = {
                json_name = "flowSize",
            },
        },
        NdiConfig = {
            type = "structure",
            traits = {
                json_name = "ndiConfig",
            },
        },
        EncodingConfig = {
            type = "structure",
            traits = {
                json_name = "encodingConfig",
            },
        },
        FlowTags = {
            type = "map",
            key_type = "string",
            value_type = "string",
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
            member_type = "structure",
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
            member_type = "structure",
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
            member_type = "structure",
            traits = {
                json_name = "outputs",
                required = true,
            },
        },
        Source = {
            type = "structure",
            traits = {
                json_name = "source",
                required = true,
            },
        },
        SourceFailoverConfig = {
            type = "structure",
            traits = {
                json_name = "sourceFailoverConfig",
            },
        },
        Sources = {
            type = "list",
            member_type = "structure",
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
            member_type = "structure",
            traits = {
                json_name = "vpcInterfaces",
            },
        },
        Maintenance = {
            type = "structure",
            traits = {
                json_name = "maintenance",
            },
        },
        SourceMonitoringConfig = {
            type = "structure",
            traits = {
                json_name = "sourceMonitoringConfig",
            },
        },
        FlowSize = {
            type = "string",
            traits = {
                json_name = "flowSize",
            },
        },
        NdiConfig = {
            type = "structure",
            traits = {
                json_name = "ndiConfig",
            },
        },
        EncodingConfig = {
            type = "structure",
            traits = {
                json_name = "encodingConfig",
            },
        },
    },
}

M.CreateFlowOutput = {
    type = "structure",
    members = {
        Flow = {
            type = "structure",
            traits = {
                json_name = "flow",
            },
        },
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
            member_type = "string",
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
            member_type = "structure",
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
            member_type = "string",
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
            member_type = "structure",
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
            member_type = "structure",
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
        Gateway = {
            type = "structure",
            traits = {
                json_name = "gateway",
            },
        },
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
        Configuration = {
            type = "union",
            traits = {
                json_name = "configuration",
                required = true,
            },
        },
        MaximumBitrate = {
            type = "number",
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
        TransitEncryption = {
            type = "structure",
            traits = {
                json_name = "transitEncryption",
            },
        },
        MaintenanceConfiguration = {
            type = "union",
            traits = {
                json_name = "maintenanceConfiguration",
            },
        },
        Tags = {
            type = "map",
            key_type = "string",
            value_type = "string",
            traits = {
                json_name = "tags",
            },
        },
        ClientToken = {
            type = "string",
            traits = {
                json_name = "clientToken",
            },
        },
    },
}

M.CreateRouterInputOutput = {
    type = "structure",
    members = {
        RouterInput = {
            type = "structure",
            traits = {
                json_name = "routerInput",
                required = true,
            },
        },
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
        Configuration = {
            type = "union",
            traits = {
                json_name = "configuration",
                required = true,
            },
        },
        RegionName = {
            type = "string",
            traits = {
                json_name = "regionName",
            },
        },
        Tags = {
            type = "map",
            key_type = "string",
            value_type = "string",
            traits = {
                json_name = "tags",
            },
        },
        ClientToken = {
            type = "string",
            traits = {
                json_name = "clientToken",
            },
        },
    },
}

M.CreateRouterNetworkInterfaceOutput = {
    type = "structure",
    members = {
        RouterNetworkInterface = {
            type = "structure",
            traits = {
                json_name = "routerNetworkInterface",
                required = true,
            },
        },
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
        Configuration = {
            type = "union",
            traits = {
                json_name = "configuration",
                required = true,
            },
        },
        MaximumBitrate = {
            type = "number",
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
        MaintenanceConfiguration = {
            type = "union",
            traits = {
                json_name = "maintenanceConfiguration",
            },
        },
        Tags = {
            type = "map",
            key_type = "string",
            value_type = "string",
            traits = {
                json_name = "tags",
            },
        },
        ClientToken = {
            type = "string",
            traits = {
                json_name = "clientToken",
            },
        },
    },
}

M.CreateRouterOutputOutput = {
    type = "structure",
    members = {
        RouterOutput = {
            type = "structure",
            traits = {
                json_name = "routerOutput",
                required = true,
            },
        },
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
            member_type = "string",
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
        Flow = {
            type = "structure",
            traits = {
                json_name = "flow",
            },
        },
        Messages = {
            type = "structure",
            traits = {
                json_name = "messages",
            },
        },
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
            member_type = "structure",
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
        ActiveSource = {
            type = "structure",
            traits = {
                json_name = "activeSource",
            },
        },
        DiscoveredSources = {
            type = "list",
            member_type = "structure",
            traits = {
                json_name = "discoveredSources",
                required = true,
            },
        },
        MediaInfo = {
            type = "structure",
            traits = {
                json_name = "mediaInfo",
                required = true,
            },
        },
        Messages = {
            type = "list",
            member_type = "structure",
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
            member_type = "structure",
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
            member_type = "structure",
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
        TransportMediaInfo = {
            type = "structure",
            traits = {
                json_name = "transportMediaInfo",
            },
        },
        NdiInfo = {
            type = "structure",
            traits = {
                json_name = "ndiInfo",
            },
        },
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
            member_type = "structure",
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
        ThumbnailDetails = {
            type = "structure",
            traits = {
                json_name = "thumbnailDetails",
            },
        },
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
        Gateway = {
            type = "structure",
            traits = {
                json_name = "gateway",
            },
        },
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
            member_type = "structure",
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
            type = "number",
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
        GatewayInstance = {
            type = "structure",
            traits = {
                json_name = "gatewayInstance",
            },
        },
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
        Offering = {
            type = "structure",
            traits = {
                json_name = "offering",
            },
        },
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
        Reservation = {
            type = "structure",
            traits = {
                json_name = "reservation",
            },
        },
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
            member_type = "structure",
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
            member_type = "structure",
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
            type = "number",
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
            member_type = "structure",
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
            member_type = "string",
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
        SourceFailoverConfig = {
            type = "structure",
            traits = {
                json_name = "sourceFailoverConfig",
            },
        },
        Maintenance = {
            type = "structure",
            traits = {
                json_name = "maintenance",
            },
        },
        SourceMonitoringConfig = {
            type = "structure",
            traits = {
                json_name = "sourceMonitoringConfig",
            },
        },
        NdiConfig = {
            type = "structure",
            traits = {
                json_name = "ndiConfig",
            },
        },
        FlowSize = {
            type = "string",
            traits = {
                json_name = "flowSize",
            },
        },
        EncodingConfig = {
            type = "structure",
            traits = {
                json_name = "encodingConfig",
            },
        },
    },
}

M.UpdateFlowOperationOutput = {
    type = "structure",
    members = {
        Flow = {
            type = "structure",
            traits = {
                json_name = "flow",
            },
        },
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
        Encryption = {
            type = "structure",
            traits = {
                json_name = "encryption",
            },
        },
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
            member_type = "string",
            traits = {
                json_name = "subscribers",
            },
        },
    },
}

M.UpdateFlowEntitlementOutput = {
    type = "structure",
    members = {
        Entitlement = {
            type = "structure",
            traits = {
                json_name = "entitlement",
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

M.UpdateFlowMediaStreamInput = {
    type = "structure",
    members = {
        Attributes = {
            type = "structure",
            traits = {
                json_name = "attributes",
            },
        },
        ClockRate = {
            type = "number",
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
        MediaStream = {
            type = "structure",
            traits = {
                json_name = "mediaStream",
            },
        },
    },
}

M.UpdateFlowOutputInput = {
    type = "structure",
    members = {
        CidrAllowList = {
            type = "list",
            member_type = "string",
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
        Encryption = {
            type = "structure",
            traits = {
                json_name = "encryption",
            },
        },
        FlowArn = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        MaxLatency = {
            type = "number",
            traits = {
                json_name = "maxLatency",
            },
        },
        MediaStreamOutputConfigurations = {
            type = "list",
            member_type = "structure",
            traits = {
                json_name = "mediaStreamOutputConfigurations",
            },
        },
        MinLatency = {
            type = "number",
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
            type = "number",
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
            type = "number",
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
            type = "number",
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
        VpcInterfaceAttachment = {
            type = "structure",
            traits = {
                json_name = "vpcInterfaceAttachment",
            },
        },
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
            type = "number",
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
        RouterIntegrationTransitEncryption = {
            type = "structure",
            traits = {
                json_name = "routerIntegrationTransitEncryption",
            },
        },
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
        Output = {
            type = "structure",
            traits = {
                json_name = "output",
            },
        },
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
        VpcInterfaceAttachment = {
            type = "structure",
            traits = {
                json_name = "vpcInterfaceAttachment",
            },
        },
    },
}

M.UpdateFlowSourceInput = {
    type = "structure",
    members = {
        Decryption = {
            type = "structure",
            traits = {
                json_name = "decryption",
            },
        },
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
            type = "number",
            traits = {
                json_name = "ingestPort",
            },
        },
        MaxBitrate = {
            type = "number",
            traits = {
                json_name = "maxBitrate",
            },
        },
        MaxLatency = {
            type = "number",
            traits = {
                json_name = "maxLatency",
            },
        },
        MaxSyncBuffer = {
            type = "number",
            traits = {
                json_name = "maxSyncBuffer",
            },
        },
        MediaStreamSourceConfigurations = {
            type = "list",
            member_type = "structure",
            traits = {
                json_name = "mediaStreamSourceConfigurations",
            },
        },
        MinLatency = {
            type = "number",
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
            type = "number",
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
            type = "number",
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
        GatewayBridgeSource = {
            type = "structure",
            traits = {
                json_name = "gatewayBridgeSource",
            },
        },
        NdiSourceSettings = {
            type = "structure",
            traits = {
                json_name = "ndiSourceSettings",
            },
        },
        RouterIntegrationState = {
            type = "string",
            traits = {
                json_name = "routerIntegrationState",
            },
        },
        RouterIntegrationTransitDecryption = {
            type = "structure",
            traits = {
                json_name = "routerIntegrationTransitDecryption",
            },
        },
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
        Source = {
            type = "structure",
            traits = {
                json_name = "source",
            },
        },
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
            type = "number",
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
            member_type = "structure",
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
            type = "number",
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
            member_type = "structure",
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
        RouterInput = {
            type = "structure",
            traits = {
                json_name = "routerInput",
                required = true,
            },
        },
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
        TransportStreamMediaInfo = {
            type = "structure",
            traits = {
                json_name = "transportStreamMediaInfo",
            },
        },
    },
}

M.RouterInputSourceMetadataDetails = {
    type = "structure",
    members = {
        SourceMetadataMessages = {
            type = "list",
            member_type = "structure",
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
        RouterInputMetadata = {
            type = "union",
            traits = {
                json_name = "routerInputMetadata",
            },
        },
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
        SourceMetadataDetails = {
            type = "structure",
            traits = {
                json_name = "sourceMetadataDetails",
                required = true,
            },
        },
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
            member_type = "structure",
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
        ThumbnailDetails = {
            type = "structure",
            traits = {
                json_name = "thumbnailDetails",
                required = true,
            },
        },
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
        RouterNetworkInterface = {
            type = "structure",
            traits = {
                json_name = "routerNetworkInterface",
                required = true,
            },
        },
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
        RouterOutput = {
            type = "structure",
            traits = {
                json_name = "routerOutput",
                required = true,
            },
        },
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
            type = "number",
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
            type = "number",
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
            type = "number",
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
        MaintenanceSchedule = {
            type = "union",
            traits = {
                json_name = "maintenanceSchedule",
            },
        },
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
            type = "number",
            traits = {
                json_name = "associatedOutputCount",
                required = true,
            },
        },
        AssociatedInputCount = {
            type = "number",
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
            type = "number",
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
            type = "number",
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
        MaintenanceSchedule = {
            type = "union",
            traits = {
                json_name = "maintenanceSchedule",
            },
        },
    },
}

M.ListEntitlementsInput = {
    type = "structure",
    members = {
        MaxResults = {
            type = "number",
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
            member_type = "structure",
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
            type = "number",
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
            member_type = "structure",
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
            type = "number",
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
            member_type = "structure",
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
            member_type = "string",
            traits = {
                json_name = "nameContains",
            },
        },
        RegionNames = {
            type = "list",
            member_type = "string",
            traits = {
                json_name = "regionNames",
            },
        },
        NetworkInterfaceArns = {
            type = "list",
            member_type = "string",
            traits = {
                json_name = "networkInterfaceArns",
            },
        },
        RoutingScopes = {
            type = "list",
            member_type = "string",
            traits = {
                json_name = "routingScopes",
            },
        },
        InputTypes = {
            type = "list",
            member_type = "string",
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
            type = "number",
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
            member_type = "union",
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
            member_type = "structure",
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
            member_type = "string",
            traits = {
                json_name = "regionNames",
            },
        },
        NetworkInterfaceTypes = {
            type = "list",
            member_type = "string",
            traits = {
                json_name = "networkInterfaceTypes",
            },
        },
        NameContains = {
            type = "list",
            member_type = "string",
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
            type = "number",
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
            member_type = "union",
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
            member_type = "structure",
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
            member_type = "string",
            traits = {
                json_name = "regionNames",
            },
        },
        NetworkInterfaceArns = {
            type = "list",
            member_type = "string",
            traits = {
                json_name = "networkInterfaceArns",
            },
        },
        RoutingScopes = {
            type = "list",
            member_type = "string",
            traits = {
                json_name = "routingScopes",
            },
        },
        OutputTypes = {
            type = "list",
            member_type = "string",
            traits = {
                json_name = "outputTypes",
            },
        },
        RoutedInputArns = {
            type = "list",
            member_type = "string",
            traits = {
                json_name = "routedInputArns",
            },
        },
        NameContains = {
            type = "list",
            member_type = "string",
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
            type = "number",
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
            member_type = "union",
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
            member_type = "structure",
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
            key_type = "string",
            value_type = "string",
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
            key_type = "string",
            value_type = "string",
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
        Reservation = {
            type = "structure",
            traits = {
                json_name = "reservation",
            },
        },
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
        MaintenanceSchedule = {
            type = "union",
            traits = {
                json_name = "maintenanceSchedule",
                required = true,
            },
        },
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
        Configuration = {
            type = "union",
            traits = {
                json_name = "configuration",
            },
        },
        MaximumBitrate = {
            type = "number",
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
        TransitEncryption = {
            type = "structure",
            traits = {
                json_name = "transitEncryption",
            },
        },
        MaintenanceConfiguration = {
            type = "union",
            traits = {
                json_name = "maintenanceConfiguration",
            },
        },
    },
}

M.UpdateRouterInputOutput = {
    type = "structure",
    members = {
        RouterInput = {
            type = "structure",
            traits = {
                json_name = "routerInput",
                required = true,
            },
        },
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
        Configuration = {
            type = "union",
            traits = {
                json_name = "configuration",
            },
        },
    },
}

M.UpdateRouterNetworkInterfaceOutput = {
    type = "structure",
    members = {
        RouterNetworkInterface = {
            type = "structure",
            traits = {
                json_name = "routerNetworkInterface",
                required = true,
            },
        },
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
        MaintenanceSchedule = {
            type = "union",
            traits = {
                json_name = "maintenanceSchedule",
                required = true,
            },
        },
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
        Configuration = {
            type = "union",
            traits = {
                json_name = "configuration",
            },
        },
        MaximumBitrate = {
            type = "number",
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
        MaintenanceConfiguration = {
            type = "union",
            traits = {
                json_name = "maintenanceConfiguration",
            },
        },
    },
}

M.UpdateRouterOutputOutput = {
    type = "structure",
    members = {
        RouterOutput = {
            type = "structure",
            traits = {
                json_name = "routerOutput",
                required = true,
            },
        },
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
            key_type = "string",
            value_type = "string",
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
            key_type = "string",
            value_type = "string",
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
            member_type = "string",
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
            member_type = "string",
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
