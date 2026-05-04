local M = {}

M.SessionKeysAbpV1_0_x = {
    type = "structure",
    members = {
        NwkSKey = {
            type = "string",
        },
        AppSKey = {
            type = "string",
        },
    },
}

M.AbpV1_0_x = {
    type = "structure",
    members = {
        DevAddr = {
            type = "string",
        },
        SessionKeys = {
            type = "structure",
        },
        FCntStart = {
            type = "number",
        },
    },
}

M.SessionKeysAbpV1_1 = {
    type = "structure",
    members = {
        FNwkSIntKey = {
            type = "string",
        },
        SNwkSIntKey = {
            type = "string",
        },
        NwkSEncKey = {
            type = "string",
        },
        AppSKey = {
            type = "string",
        },
    },
}

M.AbpV1_1 = {
    type = "structure",
    members = {
        DevAddr = {
            type = "string",
        },
        SessionKeys = {
            type = "structure",
        },
        FCntStart = {
            type = "number",
        },
    },
}

M.AccessDeniedException = {
    type = "structure",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.Accuracy = {
    type = "structure",
    members = {
        HorizontalAccuracy = {
            type = "number",
        },
        VerticalAccuracy = {
            type = "number",
        },
    },
}

M.WiFiCellular = {
    type = "structure",
    members = {
        ConfidencePercent = {
            type = "number",
        },
    },
}

M.AdvancedConfiguration = {
    type = "structure",
    members = {
        WiFiCellular = {
            type = "structure",
        },
    },
}

M.AggregationPeriod = {
    OneHour = "OneHour",
    OneDay = "OneDay",
    OneWeek = "OneWeek",
}

M.ApplicationConfigType = {
    SemtechGeoLocation = "SemtechGeolocation",
}

M.ApplicationConfig = {
    type = "structure",
    members = {
        FPort = {
            type = "number",
        },
        Type = {
            type = "string",
        },
        DestinationName = {
            type = "string",
        },
    },
}

M.SidewalkAccountInfo = {
    type = "structure",
    members = {
        AmazonId = {
            type = "string",
        },
        AppServerPrivateKey = {
            type = "string",
        },
    },
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

M.AssociateAwsAccountWithPartnerAccountInput = {
    type = "structure",
    members = {
        Sidewalk = {
            type = "structure",
            traits = {
                required = true,
            },
        },
        ClientRequestToken = {
            type = "string",
        },
        Tags = {
            type = "list",
            member_type = "structure",
        },
    },
}

M.AssociateAwsAccountWithPartnerAccountOutput = {
    type = "structure",
    members = {
        Sidewalk = {
            type = "structure",
        },
        Arn = {
            type = "string",
        },
    },
}

M.ConflictException = {
    type = "structure",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
        ResourceId = {
            type = "string",
        },
        ResourceType = {
            type = "string",
        },
    },
}

M.InternalServerException = {
    type = "structure",
    error = "server",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.ResourceNotFoundException = {
    type = "structure",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
        ResourceId = {
            type = "string",
        },
        ResourceType = {
            type = "string",
        },
    },
}

M.ThrottlingException = {
    type = "structure",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.ValidationException = {
    type = "structure",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.AssociateMulticastGroupWithFuotaTaskInput = {
    type = "structure",
    members = {
        Id = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        MulticastGroupId = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.AssociateMulticastGroupWithFuotaTaskOutput = {
    type = "structure",
}

M.AssociateWirelessDeviceWithFuotaTaskInput = {
    type = "structure",
    members = {
        Id = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        WirelessDeviceId = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.AssociateWirelessDeviceWithFuotaTaskOutput = {
    type = "structure",
}

M.AssociateWirelessDeviceWithMulticastGroupInput = {
    type = "structure",
    members = {
        Id = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        WirelessDeviceId = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.AssociateWirelessDeviceWithMulticastGroupOutput = {
    type = "structure",
}

M.AssociateWirelessDeviceWithThingInput = {
    type = "structure",
    members = {
        Id = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        ThingArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.AssociateWirelessDeviceWithThingOutput = {
    type = "structure",
}

M.AssociateWirelessGatewayWithCertificateInput = {
    type = "structure",
    members = {
        Id = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        IotCertificateId = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.AssociateWirelessGatewayWithCertificateOutput = {
    type = "structure",
    members = {
        IotCertificateId = {
            type = "string",
        },
    },
}

M.AssociateWirelessGatewayWithThingInput = {
    type = "structure",
    members = {
        Id = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        ThingArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.AssociateWirelessGatewayWithThingOutput = {
    type = "structure",
}

M.BatteryLevel = {
    NORMAL = "normal",
    LOW = "low",
    CRITICAL = "critical",
}

M.Beaconing = {
    type = "structure",
    members = {
        DataRate = {
            type = "number",
        },
        Frequencies = {
            type = "list",
            member_type = "number",
        },
    },
}

M.CancelMulticastGroupSessionInput = {
    type = "structure",
    members = {
        Id = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.CancelMulticastGroupSessionOutput = {
    type = "structure",
}

M.CdmaLocalId = {
    type = "structure",
    members = {
        PnOffset = {
            type = "number",
            traits = {
                required = true,
            },
        },
        CdmaChannel = {
            type = "number",
            traits = {
                required = true,
            },
        },
    },
}

M.CdmaNmrObj = {
    type = "structure",
    members = {
        PnOffset = {
            type = "number",
            traits = {
                required = true,
            },
        },
        CdmaChannel = {
            type = "number",
            traits = {
                required = true,
            },
        },
        PilotPower = {
            type = "number",
        },
        BaseStationId = {
            type = "number",
        },
    },
}

M.CdmaObj = {
    type = "structure",
    members = {
        SystemId = {
            type = "number",
            traits = {
                required = true,
            },
        },
        NetworkId = {
            type = "number",
            traits = {
                required = true,
            },
        },
        BaseStationId = {
            type = "number",
            traits = {
                required = true,
            },
        },
        RegistrationZone = {
            type = "number",
        },
        CdmaLocalId = {
            type = "structure",
        },
        PilotPower = {
            type = "number",
        },
        BaseLat = {
            type = "number",
        },
        BaseLng = {
            type = "number",
        },
        CdmaNmr = {
            type = "list",
            member_type = "structure",
        },
    },
}

M.GsmLocalId = {
    type = "structure",
    members = {
        Bsic = {
            type = "number",
            traits = {
                required = true,
            },
        },
        Bcch = {
            type = "number",
            traits = {
                required = true,
            },
        },
    },
}

M.GlobalIdentity = {
    type = "structure",
    members = {
        Lac = {
            type = "number",
            traits = {
                required = true,
            },
        },
        GeranCid = {
            type = "number",
            traits = {
                required = true,
            },
        },
    },
}

M.GsmNmrObj = {
    type = "structure",
    members = {
        Bsic = {
            type = "number",
            traits = {
                required = true,
            },
        },
        Bcch = {
            type = "number",
            traits = {
                required = true,
            },
        },
        RxLevel = {
            type = "number",
        },
        GlobalIdentity = {
            type = "structure",
        },
    },
}

M.GsmObj = {
    type = "structure",
    members = {
        Mcc = {
            type = "number",
            traits = {
                required = true,
            },
        },
        Mnc = {
            type = "number",
            traits = {
                required = true,
            },
        },
        Lac = {
            type = "number",
            traits = {
                required = true,
            },
        },
        GeranCid = {
            type = "number",
            traits = {
                required = true,
            },
        },
        GsmLocalId = {
            type = "structure",
        },
        GsmTimingAdvance = {
            type = "number",
        },
        RxLevel = {
            type = "number",
        },
        GsmNmr = {
            type = "list",
            member_type = "structure",
        },
    },
}

M.LteLocalId = {
    type = "structure",
    members = {
        Pci = {
            type = "number",
            traits = {
                required = true,
            },
        },
        Earfcn = {
            type = "number",
            traits = {
                required = true,
            },
        },
    },
}

M.LteNmrObj = {
    type = "structure",
    members = {
        Pci = {
            type = "number",
            traits = {
                required = true,
            },
        },
        Earfcn = {
            type = "number",
            traits = {
                required = true,
            },
        },
        EutranCid = {
            type = "number",
        },
        Rsrp = {
            type = "number",
        },
        Rsrq = {
            type = "number",
        },
    },
}

M.LteObj = {
    type = "structure",
    members = {
        Mcc = {
            type = "number",
            traits = {
                required = true,
            },
        },
        Mnc = {
            type = "number",
            traits = {
                required = true,
            },
        },
        EutranCid = {
            type = "number",
            traits = {
                required = true,
            },
        },
        Tac = {
            type = "number",
        },
        LteLocalId = {
            type = "structure",
        },
        LteTimingAdvance = {
            type = "number",
        },
        Rsrp = {
            type = "number",
        },
        Rsrq = {
            type = "number",
        },
        NrCapable = {
            type = "boolean",
        },
        LteNmr = {
            type = "list",
            member_type = "structure",
        },
    },
}

M.TdscdmaLocalId = {
    type = "structure",
    members = {
        Uarfcn = {
            type = "number",
            traits = {
                required = true,
            },
        },
        CellParams = {
            type = "number",
            traits = {
                required = true,
            },
        },
    },
}

M.TdscdmaNmrObj = {
    type = "structure",
    members = {
        Uarfcn = {
            type = "number",
            traits = {
                required = true,
            },
        },
        CellParams = {
            type = "number",
            traits = {
                required = true,
            },
        },
        UtranCid = {
            type = "number",
        },
        Rscp = {
            type = "number",
        },
        PathLoss = {
            type = "number",
        },
    },
}

M.TdscdmaObj = {
    type = "structure",
    members = {
        Mcc = {
            type = "number",
            traits = {
                required = true,
            },
        },
        Mnc = {
            type = "number",
            traits = {
                required = true,
            },
        },
        Lac = {
            type = "number",
        },
        UtranCid = {
            type = "number",
            traits = {
                required = true,
            },
        },
        TdscdmaLocalId = {
            type = "structure",
        },
        TdscdmaTimingAdvance = {
            type = "number",
        },
        Rscp = {
            type = "number",
        },
        PathLoss = {
            type = "number",
        },
        TdscdmaNmr = {
            type = "list",
            member_type = "structure",
        },
    },
}

M.WcdmaLocalId = {
    type = "structure",
    members = {
        Uarfcndl = {
            type = "number",
            traits = {
                required = true,
            },
        },
        Psc = {
            type = "number",
            traits = {
                required = true,
            },
        },
    },
}

M.WcdmaNmrObj = {
    type = "structure",
    members = {
        Uarfcndl = {
            type = "number",
            traits = {
                required = true,
            },
        },
        Psc = {
            type = "number",
            traits = {
                required = true,
            },
        },
        UtranCid = {
            type = "number",
            traits = {
                required = true,
            },
        },
        Rscp = {
            type = "number",
        },
        PathLoss = {
            type = "number",
        },
    },
}

M.WcdmaObj = {
    type = "structure",
    members = {
        Mcc = {
            type = "number",
            traits = {
                required = true,
            },
        },
        Mnc = {
            type = "number",
            traits = {
                required = true,
            },
        },
        Lac = {
            type = "number",
        },
        UtranCid = {
            type = "number",
            traits = {
                required = true,
            },
        },
        WcdmaLocalId = {
            type = "structure",
        },
        Rscp = {
            type = "number",
        },
        PathLoss = {
            type = "number",
        },
        WcdmaNmr = {
            type = "list",
            member_type = "structure",
        },
    },
}

M.CellTowers = {
    type = "structure",
    members = {
        Gsm = {
            type = "list",
            member_type = "structure",
        },
        Wcdma = {
            type = "list",
            member_type = "structure",
        },
        Tdscdma = {
            type = "list",
            member_type = "structure",
        },
        Lte = {
            type = "list",
            member_type = "structure",
        },
        Cdma = {
            type = "list",
            member_type = "structure",
        },
    },
}

M.SigningAlg = {
    Ed25519 = "Ed25519",
    P256r1 = "P256r1",
}

M.CertificateList = {
    type = "structure",
    members = {
        SigningAlg = {
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

M.ConnectionStatus = {
    CONNECTED = "Connected",
    DISCONNECTED = "Disconnected",
}

M.EventNotificationTopicStatus = {
    Enabled = "Enabled",
    Disabled = "Disabled",
}

M.LoRaWANConnectionStatusEventNotificationConfigurations = {
    type = "structure",
    members = {
        GatewayEuiEventTopic = {
            type = "string",
        },
    },
}

M.ConnectionStatusEventConfiguration = {
    type = "structure",
    members = {
        LoRaWAN = {
            type = "structure",
        },
        WirelessGatewayIdEventTopic = {
            type = "string",
        },
    },
}

M.LoRaWANConnectionStatusResourceTypeEventConfiguration = {
    type = "structure",
    members = {
        WirelessGatewayEventTopic = {
            type = "string",
        },
    },
}

M.ConnectionStatusResourceTypeEventConfiguration = {
    type = "structure",
    members = {
        LoRaWAN = {
            type = "structure",
        },
    },
}

M.ExpressionType = {
    RuleName = "RuleName",
    MqttTopic = "MqttTopic",
}

M.CreateDestinationInput = {
    type = "structure",
    members = {
        Name = {
            type = "string",
            traits = {
                required = true,
            },
        },
        ExpressionType = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Expression = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Description = {
            type = "string",
        },
        RoleArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Tags = {
            type = "list",
            member_type = "structure",
        },
        ClientRequestToken = {
            type = "string",
        },
    },
}

M.CreateDestinationOutput = {
    type = "structure",
    members = {
        Arn = {
            type = "string",
        },
        Name = {
            type = "string",
        },
    },
}

M.LoRaWANDeviceProfile = {
    type = "structure",
    members = {
        SupportsClassB = {
            type = "boolean",
        },
        ClassBTimeout = {
            type = "number",
        },
        PingSlotPeriod = {
            type = "number",
        },
        PingSlotDr = {
            type = "number",
        },
        PingSlotFreq = {
            type = "number",
        },
        SupportsClassC = {
            type = "boolean",
        },
        ClassCTimeout = {
            type = "number",
        },
        MacVersion = {
            type = "string",
        },
        RegParamsRevision = {
            type = "string",
        },
        RxDelay1 = {
            type = "number",
        },
        RxDrOffset1 = {
            type = "number",
        },
        RxDataRate2 = {
            type = "number",
        },
        RxFreq2 = {
            type = "number",
        },
        FactoryPresetFreqsList = {
            type = "list",
            member_type = "number",
        },
        MaxEirp = {
            type = "number",
        },
        MaxDutyCycle = {
            type = "number",
        },
        RfRegion = {
            type = "string",
        },
        SupportsJoin = {
            type = "boolean",
        },
        Supports32BitFCnt = {
            type = "boolean",
        },
    },
}

M.SidewalkCreateDeviceProfile = {
    type = "structure",
}

M.CreateDeviceProfileInput = {
    type = "structure",
    members = {
        Name = {
            type = "string",
        },
        LoRaWAN = {
            type = "structure",
        },
        Tags = {
            type = "list",
            member_type = "structure",
        },
        ClientRequestToken = {
            type = "string",
        },
        Sidewalk = {
            type = "structure",
        },
    },
}

M.CreateDeviceProfileOutput = {
    type = "structure",
    members = {
        Arn = {
            type = "string",
        },
        Id = {
            type = "string",
        },
    },
}

M.SupportedRfRegion = {
    EU868 = "EU868",
    US915 = "US915",
    AU915 = "AU915",
    AS923_1 = "AS923-1",
    AS923_2 = "AS923-2",
    AS923_3 = "AS923-3",
    AS923_4 = "AS923-4",
    EU433 = "EU433",
    CN470 = "CN470",
    CN779 = "CN779",
    RU864 = "RU864",
    KR920 = "KR920",
    IN865 = "IN865",
}

M.LoRaWANFuotaTask = {
    type = "structure",
    members = {
        RfRegion = {
            type = "string",
        },
    },
}

M.CreateFuotaTaskInput = {
    type = "structure",
    members = {
        Name = {
            type = "string",
        },
        Description = {
            type = "string",
        },
        ClientRequestToken = {
            type = "string",
        },
        LoRaWAN = {
            type = "structure",
        },
        FirmwareUpdateImage = {
            type = "string",
            traits = {
                required = true,
            },
        },
        FirmwareUpdateRole = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Tags = {
            type = "list",
            member_type = "structure",
        },
        RedundancyPercent = {
            type = "number",
        },
        FragmentSizeBytes = {
            type = "number",
        },
        FragmentIntervalMS = {
            type = "number",
        },
        Descriptor = {
            type = "string",
        },
    },
}

M.CreateFuotaTaskOutput = {
    type = "structure",
    members = {
        Arn = {
            type = "string",
        },
        Id = {
            type = "string",
        },
    },
}

M.DlClass = {
    ClassB = "ClassB",
    ClassC = "ClassC",
}

M.ParticipatingGatewaysMulticast = {
    type = "structure",
    members = {
        GatewayList = {
            type = "list",
            member_type = "string",
        },
        TransmissionInterval = {
            type = "number",
        },
    },
}

M.LoRaWANMulticast = {
    type = "structure",
    members = {
        RfRegion = {
            type = "string",
        },
        DlClass = {
            type = "string",
        },
        ParticipatingGateways = {
            type = "structure",
        },
    },
}

M.CreateMulticastGroupInput = {
    type = "structure",
    members = {
        Name = {
            type = "string",
        },
        Description = {
            type = "string",
        },
        ClientRequestToken = {
            type = "string",
        },
        LoRaWAN = {
            type = "structure",
            traits = {
                required = true,
            },
        },
        Tags = {
            type = "list",
            member_type = "structure",
        },
    },
}

M.CreateMulticastGroupOutput = {
    type = "structure",
    members = {
        Arn = {
            type = "string",
        },
        Id = {
            type = "string",
        },
    },
}

M.LogLevel = {
    INFO = "INFO",
    ERROR = "ERROR",
    DISABLED = "DISABLED",
}

M.MulticastFrameInfo = {
    ENABLED = "ENABLED",
    DISABLED = "DISABLED",
}

M.WirelessDeviceFrameInfo = {
    ENABLED = "ENABLED",
    DISABLED = "DISABLED",
}

M.TraceContent = {
    type = "structure",
    members = {
        WirelessDeviceFrameInfo = {
            type = "string",
        },
        LogLevel = {
            type = "string",
        },
        MulticastFrameInfo = {
            type = "string",
        },
    },
}

M.CreateNetworkAnalyzerConfigurationInput = {
    type = "structure",
    members = {
        Name = {
            type = "string",
            traits = {
                required = true,
            },
        },
        TraceContent = {
            type = "structure",
        },
        WirelessDevices = {
            type = "list",
            member_type = "string",
        },
        WirelessGateways = {
            type = "list",
            member_type = "string",
        },
        Description = {
            type = "string",
        },
        Tags = {
            type = "list",
            member_type = "structure",
        },
        ClientRequestToken = {
            type = "string",
        },
        MulticastGroups = {
            type = "list",
            member_type = "string",
        },
    },
}

M.CreateNetworkAnalyzerConfigurationOutput = {
    type = "structure",
    members = {
        Arn = {
            type = "string",
        },
        Name = {
            type = "string",
        },
    },
}

M.LoRaWANServiceProfile = {
    type = "structure",
    members = {
        AddGwMetadata = {
            type = "boolean",
        },
        DrMin = {
            type = "number",
        },
        DrMax = {
            type = "number",
        },
        PrAllowed = {
            type = "boolean",
        },
        RaAllowed = {
            type = "boolean",
        },
        TxPowerIndexMin = {
            type = "number",
        },
        TxPowerIndexMax = {
            type = "number",
        },
        NbTransMin = {
            type = "number",
        },
        NbTransMax = {
            type = "number",
        },
    },
}

M.CreateServiceProfileInput = {
    type = "structure",
    members = {
        Name = {
            type = "string",
        },
        LoRaWAN = {
            type = "structure",
        },
        Tags = {
            type = "list",
            member_type = "structure",
        },
        ClientRequestToken = {
            type = "string",
        },
    },
}

M.CreateServiceProfileOutput = {
    type = "structure",
    members = {
        Arn = {
            type = "string",
        },
        Id = {
            type = "string",
        },
    },
}

M.Positioning = {
    type = "structure",
    members = {
        ClockSync = {
            type = "number",
        },
        Stream = {
            type = "number",
        },
        Gnss = {
            type = "number",
        },
    },
}

M.FPorts = {
    type = "structure",
    members = {
        Fuota = {
            type = "number",
        },
        Multicast = {
            type = "number",
        },
        ClockSync = {
            type = "number",
        },
        Positioning = {
            type = "structure",
        },
        Applications = {
            type = "list",
            member_type = "structure",
        },
    },
}

M.OtaaV1_0_x = {
    type = "structure",
    members = {
        AppKey = {
            type = "string",
        },
        AppEui = {
            type = "string",
        },
        JoinEui = {
            type = "string",
        },
        GenAppKey = {
            type = "string",
        },
    },
}

M.OtaaV1_1 = {
    type = "structure",
    members = {
        AppKey = {
            type = "string",
        },
        NwkKey = {
            type = "string",
        },
        JoinEui = {
            type = "string",
        },
    },
}

M.LoRaWANDevice = {
    type = "structure",
    members = {
        DevEui = {
            type = "string",
        },
        DeviceProfileId = {
            type = "string",
        },
        ServiceProfileId = {
            type = "string",
        },
        OtaaV1_1 = {
            type = "structure",
        },
        OtaaV1_0_x = {
            type = "structure",
        },
        AbpV1_1 = {
            type = "structure",
        },
        AbpV1_0_x = {
            type = "structure",
        },
        FPorts = {
            type = "structure",
        },
    },
}

M.PositioningConfigStatus = {
    Enabled = "Enabled",
    Disabled = "Disabled",
}

M.SidewalkPositioning = {
    type = "structure",
    members = {
        DestinationName = {
            type = "string",
        },
    },
}

M.SidewalkCreateWirelessDevice = {
    type = "structure",
    members = {
        DeviceProfileId = {
            type = "string",
        },
        Positioning = {
            type = "structure",
        },
        SidewalkManufacturingSn = {
            type = "string",
        },
    },
}

M.WirelessDeviceType = {
    Sidewalk = "Sidewalk",
    LoRaWAN = "LoRaWAN",
}

M.CreateWirelessDeviceInput = {
    type = "structure",
    members = {
        Type = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Name = {
            type = "string",
        },
        Description = {
            type = "string",
        },
        DestinationName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        ClientRequestToken = {
            type = "string",
        },
        LoRaWAN = {
            type = "structure",
        },
        Tags = {
            type = "list",
            member_type = "structure",
        },
        Positioning = {
            type = "string",
        },
        Sidewalk = {
            type = "structure",
        },
    },
}

M.CreateWirelessDeviceOutput = {
    type = "structure",
    members = {
        Arn = {
            type = "string",
        },
        Id = {
            type = "string",
        },
    },
}

M.LoRaWANGateway = {
    type = "structure",
    members = {
        GatewayEui = {
            type = "string",
        },
        RfRegion = {
            type = "string",
        },
        JoinEuiFilters = {
            type = "list",
            member_type = "list",
        },
        NetIdFilters = {
            type = "list",
            member_type = "string",
        },
        SubBands = {
            type = "list",
            member_type = "number",
        },
        Beaconing = {
            type = "structure",
        },
        MaxEirp = {
            type = "number",
        },
    },
}

M.CreateWirelessGatewayInput = {
    type = "structure",
    members = {
        Name = {
            type = "string",
        },
        Description = {
            type = "string",
        },
        LoRaWAN = {
            type = "structure",
            traits = {
                required = true,
            },
        },
        Tags = {
            type = "list",
            member_type = "structure",
        },
        ClientRequestToken = {
            type = "string",
        },
    },
}

M.CreateWirelessGatewayOutput = {
    type = "structure",
    members = {
        Arn = {
            type = "string",
        },
        Id = {
            type = "string",
        },
    },
}

M.CreateWirelessGatewayTaskInput = {
    type = "structure",
    members = {
        Id = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        WirelessGatewayTaskDefinitionId = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.WirelessGatewayTaskStatus = {
    PENDING = "PENDING",
    IN_PROGRESS = "IN_PROGRESS",
    FIRST_RETRY = "FIRST_RETRY",
    SECOND_RETRY = "SECOND_RETRY",
    COMPLETED = "COMPLETED",
    FAILED = "FAILED",
}

M.CreateWirelessGatewayTaskOutput = {
    type = "structure",
    members = {
        WirelessGatewayTaskDefinitionId = {
            type = "string",
        },
        Status = {
            type = "string",
        },
    },
}

M.LoRaWANGatewayVersion = {
    type = "structure",
    members = {
        PackageVersion = {
            type = "string",
        },
        Model = {
            type = "string",
        },
        Station = {
            type = "string",
        },
    },
}

M.LoRaWANUpdateGatewayTaskCreate = {
    type = "structure",
    members = {
        UpdateSignature = {
            type = "string",
        },
        SigKeyCrc = {
            type = "number",
        },
        CurrentVersion = {
            type = "structure",
        },
        UpdateVersion = {
            type = "structure",
        },
    },
}

M.UpdateWirelessGatewayTaskCreate = {
    type = "structure",
    members = {
        UpdateDataSource = {
            type = "string",
        },
        UpdateDataRole = {
            type = "string",
        },
        LoRaWAN = {
            type = "structure",
        },
    },
}

M.CreateWirelessGatewayTaskDefinitionInput = {
    type = "structure",
    members = {
        AutoCreateTasks = {
            type = "boolean",
            traits = {
                required = true,
            },
        },
        Name = {
            type = "string",
        },
        Update = {
            type = "structure",
        },
        ClientRequestToken = {
            type = "string",
        },
        Tags = {
            type = "list",
            member_type = "structure",
        },
    },
}

M.CreateWirelessGatewayTaskDefinitionOutput = {
    type = "structure",
    members = {
        Id = {
            type = "string",
        },
        Arn = {
            type = "string",
        },
    },
}

M.DakCertificateMetadata = {
    type = "structure",
    members = {
        CertificateId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        MaxAllowedSignature = {
            type = "number",
        },
        FactorySupport = {
            type = "boolean",
        },
        ApId = {
            type = "string",
        },
        DeviceTypeId = {
            type = "string",
        },
    },
}

M.DeleteDestinationInput = {
    type = "structure",
    members = {
        Name = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.DeleteDestinationOutput = {
    type = "structure",
}

M.DeleteDeviceProfileInput = {
    type = "structure",
    members = {
        Id = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.DeleteDeviceProfileOutput = {
    type = "structure",
}

M.DeleteFuotaTaskInput = {
    type = "structure",
    members = {
        Id = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.DeleteFuotaTaskOutput = {
    type = "structure",
}

M.DeleteMulticastGroupInput = {
    type = "structure",
    members = {
        Id = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.DeleteMulticastGroupOutput = {
    type = "structure",
}

M.DeleteNetworkAnalyzerConfigurationInput = {
    type = "structure",
    members = {
        ConfigurationName = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.DeleteNetworkAnalyzerConfigurationOutput = {
    type = "structure",
}

M.DeleteQueuedMessagesInput = {
    type = "structure",
    members = {
        Id = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        MessageId = {
            type = "string",
            traits = {
                http_query = "messageId",
                required = true,
            },
        },
        WirelessDeviceType = {
            type = "string",
            traits = {
                http_query = "WirelessDeviceType",
            },
        },
    },
}

M.DeleteQueuedMessagesOutput = {
    type = "structure",
}

M.DeleteServiceProfileInput = {
    type = "structure",
    members = {
        Id = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.DeleteServiceProfileOutput = {
    type = "structure",
}

M.DeleteWirelessDeviceInput = {
    type = "structure",
    members = {
        Id = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.DeleteWirelessDeviceOutput = {
    type = "structure",
}

M.DeleteWirelessDeviceImportTaskInput = {
    type = "structure",
    members = {
        Id = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.DeleteWirelessDeviceImportTaskOutput = {
    type = "structure",
}

M.DeleteWirelessGatewayInput = {
    type = "structure",
    members = {
        Id = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.DeleteWirelessGatewayOutput = {
    type = "structure",
}

M.DeleteWirelessGatewayTaskInput = {
    type = "structure",
    members = {
        Id = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.DeleteWirelessGatewayTaskOutput = {
    type = "structure",
}

M.DeleteWirelessGatewayTaskDefinitionInput = {
    type = "structure",
    members = {
        Id = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.DeleteWirelessGatewayTaskDefinitionOutput = {
    type = "structure",
}

M.DeregisterWirelessDeviceInput = {
    type = "structure",
    members = {
        Identifier = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        WirelessDeviceType = {
            type = "string",
            traits = {
                http_query = "WirelessDeviceType",
            },
        },
    },
}

M.DeregisterWirelessDeviceOutput = {
    type = "structure",
}

M.Destinations = {
    type = "structure",
    members = {
        Arn = {
            type = "string",
        },
        Name = {
            type = "string",
        },
        ExpressionType = {
            type = "string",
        },
        Expression = {
            type = "string",
        },
        Description = {
            type = "string",
        },
        RoleArn = {
            type = "string",
        },
    },
}

M.DeviceProfile = {
    type = "structure",
    members = {
        Arn = {
            type = "string",
        },
        Name = {
            type = "string",
        },
        Id = {
            type = "string",
        },
    },
}

M.DeviceProfileType = {
    Sidewalk = "Sidewalk",
    LoRaWAN = "LoRaWAN",
}

M.SidewalkEventNotificationConfigurations = {
    type = "structure",
    members = {
        AmazonIdEventTopic = {
            type = "string",
        },
    },
}

M.DeviceRegistrationStateEventConfiguration = {
    type = "structure",
    members = {
        Sidewalk = {
            type = "structure",
        },
        WirelessDeviceIdEventTopic = {
            type = "string",
        },
    },
}

M.SidewalkResourceTypeEventConfiguration = {
    type = "structure",
    members = {
        WirelessDeviceEventTopic = {
            type = "string",
        },
    },
}

M.DeviceRegistrationStateResourceTypeEventConfiguration = {
    type = "structure",
    members = {
        Sidewalk = {
            type = "structure",
        },
    },
}

M.DeviceState = {
    PROVISIONED = "Provisioned",
    REGISTEREDNOTSEEN = "RegisteredNotSeen",
    REGISTEREDREACHABLE = "RegisteredReachable",
    REGISTEREDUNREACHABLE = "RegisteredUnreachable",
}

M.DimensionName = {
    DeviceId = "DeviceId",
    GatewayId = "GatewayId",
}

M.Dimension = {
    type = "structure",
    members = {
        name = {
            type = "string",
        },
        value = {
            type = "string",
        },
    },
}

M.PartnerType = {
    Sidewalk = "Sidewalk",
}

M.DisassociateAwsAccountFromPartnerAccountInput = {
    type = "structure",
    members = {
        PartnerAccountId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        PartnerType = {
            type = "string",
            traits = {
                http_query = "partnerType",
                required = true,
            },
        },
    },
}

M.DisassociateAwsAccountFromPartnerAccountOutput = {
    type = "structure",
}

M.DisassociateMulticastGroupFromFuotaTaskInput = {
    type = "structure",
    members = {
        Id = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        MulticastGroupId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.DisassociateMulticastGroupFromFuotaTaskOutput = {
    type = "structure",
}

M.DisassociateWirelessDeviceFromFuotaTaskInput = {
    type = "structure",
    members = {
        Id = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        WirelessDeviceId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.DisassociateWirelessDeviceFromFuotaTaskOutput = {
    type = "structure",
}

M.DisassociateWirelessDeviceFromMulticastGroupInput = {
    type = "structure",
    members = {
        Id = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        WirelessDeviceId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.DisassociateWirelessDeviceFromMulticastGroupOutput = {
    type = "structure",
}

M.DisassociateWirelessDeviceFromThingInput = {
    type = "structure",
    members = {
        Id = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.DisassociateWirelessDeviceFromThingOutput = {
    type = "structure",
}

M.DisassociateWirelessGatewayFromCertificateInput = {
    type = "structure",
    members = {
        Id = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.DisassociateWirelessGatewayFromCertificateOutput = {
    type = "structure",
}

M.DisassociateWirelessGatewayFromThingInput = {
    type = "structure",
    members = {
        Id = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.DisassociateWirelessGatewayFromThingOutput = {
    type = "structure",
}

M.DownlinkMode = {
    SEQUENTIAL = "SEQUENTIAL",
    CONCURRENT = "CONCURRENT",
    USING_UPLINK_GATEWAY = "USING_UPLINK_GATEWAY",
}

M.GatewayListItem = {
    type = "structure",
    members = {
        GatewayId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        DownlinkFrequency = {
            type = "number",
            traits = {
                required = true,
            },
        },
    },
}

M.ParticipatingGateways = {
    type = "structure",
    members = {
        DownlinkMode = {
            type = "string",
            traits = {
                required = true,
            },
        },
        GatewayList = {
            type = "list",
            member_type = "structure",
            traits = {
                required = true,
            },
        },
        TransmissionInterval = {
            type = "number",
            traits = {
                required = true,
            },
        },
    },
}

M.LoRaWANSendDataToDevice = {
    type = "structure",
    members = {
        FPort = {
            type = "number",
        },
        ParticipatingGateways = {
            type = "structure",
        },
    },
}

M.DownlinkQueueMessage = {
    type = "structure",
    members = {
        MessageId = {
            type = "string",
        },
        TransmitMode = {
            type = "number",
        },
        ReceivedAt = {
            type = "string",
        },
        LoRaWAN = {
            type = "structure",
        },
    },
}

M.Event = {
    DISCOVERED = "discovered",
    LOST = "lost",
    ACK = "ack",
    NACK = "nack",
    PASSTHROUGH = "passthrough",
}

M.LoRaWANJoinEventNotificationConfigurations = {
    type = "structure",
    members = {
        DevEuiEventTopic = {
            type = "string",
        },
    },
}

M.JoinEventConfiguration = {
    type = "structure",
    members = {
        LoRaWAN = {
            type = "structure",
        },
        WirelessDeviceIdEventTopic = {
            type = "string",
        },
    },
}

M.MessageDeliveryStatusEventConfiguration = {
    type = "structure",
    members = {
        Sidewalk = {
            type = "structure",
        },
        WirelessDeviceIdEventTopic = {
            type = "string",
        },
    },
}

M.ProximityEventConfiguration = {
    type = "structure",
    members = {
        Sidewalk = {
            type = "structure",
        },
        WirelessDeviceIdEventTopic = {
            type = "string",
        },
    },
}

M.EventNotificationItemConfigurations = {
    type = "structure",
    members = {
        DeviceRegistrationState = {
            type = "structure",
        },
        Proximity = {
            type = "structure",
        },
        Join = {
            type = "structure",
        },
        ConnectionStatus = {
            type = "structure",
        },
        MessageDeliveryStatus = {
            type = "structure",
        },
    },
}

M.IdentifierType = {
    PartnerAccountId = "PartnerAccountId",
    DevEui = "DevEui",
    GatewayEui = "GatewayEui",
    WirelessDeviceId = "WirelessDeviceId",
    WirelessGatewayId = "WirelessGatewayId",
}

M.EventNotificationPartnerType = {
    Sidewalk = "Sidewalk",
}

M.EventConfigurationItem = {
    type = "structure",
    members = {
        Identifier = {
            type = "string",
        },
        IdentifierType = {
            type = "string",
        },
        PartnerType = {
            type = "string",
        },
        Events = {
            type = "structure",
        },
    },
}

M.EventNotificationResourceType = {
    SidewalkAccount = "SidewalkAccount",
    WirelessDevice = "WirelessDevice",
    WirelessGateway = "WirelessGateway",
}

M.FuotaDeviceStatus = {
    Initial = "Initial",
    Package_Not_Supported = "Package_Not_Supported",
    FragAlgo_unsupported = "FragAlgo_unsupported",
    Not_enough_memory = "Not_enough_memory",
    FragIndex_unsupported = "FragIndex_unsupported",
    Wrong_descriptor = "Wrong_descriptor",
    SessionCnt_replay = "SessionCnt_replay",
    MissingFrag = "MissingFrag",
    MemoryError = "MemoryError",
    MICError = "MICError",
    Successful = "Successful",
    Device_exist_in_conflict_fuota_task = "Device_exist_in_conflict_fuota_task",
}

M.FuotaTask = {
    type = "structure",
    members = {
        Id = {
            type = "string",
        },
        Arn = {
            type = "string",
        },
        Name = {
            type = "string",
        },
    },
}

M.FuotaTaskEvent = {
    Fuota = "Fuota",
}

M.FuotaTaskEventLogOption = {
    type = "structure",
    members = {
        Event = {
            type = "string",
            traits = {
                required = true,
            },
        },
        LogLevel = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.FuotaTaskType = {
    LoRaWAN = "LoRaWAN",
}

M.FuotaTaskLogOption = {
    type = "structure",
    members = {
        Type = {
            type = "string",
            traits = {
                required = true,
            },
        },
        LogLevel = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Events = {
            type = "list",
            member_type = "structure",
        },
    },
}

M.FuotaTaskStatus = {
    Pending = "Pending",
    FuotaSession_Waiting = "FuotaSession_Waiting",
    In_FuotaSession = "In_FuotaSession",
    FuotaDone = "FuotaDone",
    Delete_Waiting = "Delete_Waiting",
}

M.GetDestinationInput = {
    type = "structure",
    members = {
        Name = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.GetDestinationOutput = {
    type = "structure",
    members = {
        Arn = {
            type = "string",
        },
        Name = {
            type = "string",
        },
        Expression = {
            type = "string",
        },
        ExpressionType = {
            type = "string",
        },
        Description = {
            type = "string",
        },
        RoleArn = {
            type = "string",
        },
    },
}

M.GetDeviceProfileInput = {
    type = "structure",
    members = {
        Id = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.SidewalkGetDeviceProfile = {
    type = "structure",
    members = {
        ApplicationServerPublicKey = {
            type = "string",
        },
        QualificationStatus = {
            type = "boolean",
        },
        DakCertificateMetadata = {
            type = "list",
            member_type = "structure",
        },
    },
}

M.GetDeviceProfileOutput = {
    type = "structure",
    members = {
        Arn = {
            type = "string",
        },
        Name = {
            type = "string",
        },
        Id = {
            type = "string",
        },
        LoRaWAN = {
            type = "structure",
        },
        Sidewalk = {
            type = "structure",
        },
    },
}

M.GetEventConfigurationByResourceTypesInput = {
    type = "structure",
}

M.LoRaWANJoinResourceTypeEventConfiguration = {
    type = "structure",
    members = {
        WirelessDeviceEventTopic = {
            type = "string",
        },
    },
}

M.JoinResourceTypeEventConfiguration = {
    type = "structure",
    members = {
        LoRaWAN = {
            type = "structure",
        },
    },
}

M.MessageDeliveryStatusResourceTypeEventConfiguration = {
    type = "structure",
    members = {
        Sidewalk = {
            type = "structure",
        },
    },
}

M.ProximityResourceTypeEventConfiguration = {
    type = "structure",
    members = {
        Sidewalk = {
            type = "structure",
        },
    },
}

M.GetEventConfigurationByResourceTypesOutput = {
    type = "structure",
    members = {
        DeviceRegistrationState = {
            type = "structure",
        },
        Proximity = {
            type = "structure",
        },
        Join = {
            type = "structure",
        },
        ConnectionStatus = {
            type = "structure",
        },
        MessageDeliveryStatus = {
            type = "structure",
        },
    },
}

M.GetFuotaTaskInput = {
    type = "structure",
    members = {
        Id = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.LoRaWANFuotaTaskGetInfo = {
    type = "structure",
    members = {
        RfRegion = {
            type = "string",
        },
        StartTime = {
            type = "timestamp",
        },
    },
}

M.GetFuotaTaskOutput = {
    type = "structure",
    members = {
        Arn = {
            type = "string",
        },
        Id = {
            type = "string",
        },
        Status = {
            type = "string",
        },
        Name = {
            type = "string",
        },
        Description = {
            type = "string",
        },
        LoRaWAN = {
            type = "structure",
        },
        FirmwareUpdateImage = {
            type = "string",
        },
        FirmwareUpdateRole = {
            type = "string",
        },
        CreatedAt = {
            type = "timestamp",
        },
        RedundancyPercent = {
            type = "number",
        },
        FragmentSizeBytes = {
            type = "number",
        },
        FragmentIntervalMS = {
            type = "number",
        },
        Descriptor = {
            type = "string",
        },
    },
}

M.GetLogLevelsByResourceTypesInput = {
    type = "structure",
}

M.WirelessDeviceEvent = {
    Join = "Join",
    Rejoin = "Rejoin",
    Uplink_Data = "Uplink_Data",
    Downlink_Data = "Downlink_Data",
    Registration = "Registration",
}

M.WirelessDeviceEventLogOption = {
    type = "structure",
    members = {
        Event = {
            type = "string",
            traits = {
                required = true,
            },
        },
        LogLevel = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.WirelessDeviceLogOption = {
    type = "structure",
    members = {
        Type = {
            type = "string",
            traits = {
                required = true,
            },
        },
        LogLevel = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Events = {
            type = "list",
            member_type = "structure",
        },
    },
}

M.WirelessGatewayEvent = {
    CUPS_Request = "CUPS_Request",
    Certificate = "Certificate",
}

M.WirelessGatewayEventLogOption = {
    type = "structure",
    members = {
        Event = {
            type = "string",
            traits = {
                required = true,
            },
        },
        LogLevel = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.WirelessGatewayType = {
    LoRaWAN = "LoRaWAN",
}

M.WirelessGatewayLogOption = {
    type = "structure",
    members = {
        Type = {
            type = "string",
            traits = {
                required = true,
            },
        },
        LogLevel = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Events = {
            type = "list",
            member_type = "structure",
        },
    },
}

M.GetLogLevelsByResourceTypesOutput = {
    type = "structure",
    members = {
        DefaultLogLevel = {
            type = "string",
        },
        WirelessGatewayLogOptions = {
            type = "list",
            member_type = "structure",
        },
        WirelessDeviceLogOptions = {
            type = "list",
            member_type = "structure",
        },
        FuotaTaskLogOptions = {
            type = "list",
            member_type = "structure",
        },
    },
}

M.GetMetricConfigurationInput = {
    type = "structure",
}

M.SummaryMetricConfigurationStatus = {
    Enabled = "Enabled",
    Disabled = "Disabled",
}

M.SummaryMetricConfiguration = {
    type = "structure",
    members = {
        Status = {
            type = "string",
        },
    },
}

M.GetMetricConfigurationOutput = {
    type = "structure",
    members = {
        SummaryMetric = {
            type = "structure",
        },
    },
}

M.MetricName = {
    DeviceRSSI = "DeviceRSSI",
    DeviceSNR = "DeviceSNR",
    DeviceRoamingRSSI = "DeviceRoamingRSSI",
    DeviceRoamingSNR = "DeviceRoamingSNR",
    DeviceUplinkCount = "DeviceUplinkCount",
    DeviceDownlinkCount = "DeviceDownlinkCount",
    DeviceUplinkLostCount = "DeviceUplinkLostCount",
    DeviceUplinkLostRate = "DeviceUplinkLostRate",
    DeviceJoinRequestCount = "DeviceJoinRequestCount",
    DeviceJoinAcceptCount = "DeviceJoinAcceptCount",
    DeviceRoamingUplinkCount = "DeviceRoamingUplinkCount",
    DeviceRoamingDownlinkCount = "DeviceRoamingDownlinkCount",
    GatewayUpTime = "GatewayUpTime",
    GatewayDownTime = "GatewayDownTime",
    GatewayRSSI = "GatewayRSSI",
    GatewaySNR = "GatewaySNR",
    GatewayUplinkCount = "GatewayUplinkCount",
    GatewayDownlinkCount = "GatewayDownlinkCount",
    GatewayJoinRequestCount = "GatewayJoinRequestCount",
    GatewayJoinAcceptCount = "GatewayJoinAcceptCount",
    AwsAccountUplinkCount = "AwsAccountUplinkCount",
    AwsAccountDownlinkCount = "AwsAccountDownlinkCount",
    AwsAccountUplinkLostCount = "AwsAccountUplinkLostCount",
    AwsAccountUplinkLostRate = "AwsAccountUplinkLostRate",
    AwsAccountJoinRequestCount = "AwsAccountJoinRequestCount",
    AwsAccountJoinAcceptCount = "AwsAccountJoinAcceptCount",
    AwsAccountRoamingUplinkCount = "AwsAccountRoamingUplinkCount",
    AwsAccountRoamingDownlinkCount = "AwsAccountRoamingDownlinkCount",
    AwsAccountDeviceCount = "AwsAccountDeviceCount",
    AwsAccountGatewayCount = "AwsAccountGatewayCount",
    AwsAccountActiveDeviceCount = "AwsAccountActiveDeviceCount",
    AwsAccountActiveGatewayCount = "AwsAccountActiveGatewayCount",
}

M.SummaryMetricQuery = {
    type = "structure",
    members = {
        QueryId = {
            type = "string",
        },
        MetricName = {
            type = "string",
        },
        Dimensions = {
            type = "list",
            member_type = "structure",
        },
        AggregationPeriod = {
            type = "string",
        },
        StartTimestamp = {
            type = "timestamp",
        },
        EndTimestamp = {
            type = "timestamp",
        },
    },
}

M.GetMetricsInput = {
    type = "structure",
    members = {
        SummaryMetricQueries = {
            type = "list",
            member_type = "structure",
        },
    },
}

M.MetricQueryStatus = {
    Succeeded = "Succeeded",
    Failed = "Failed",
}

M.MetricQueryValue = {
    type = "structure",
    members = {
        Min = {
            type = "number",
        },
        Max = {
            type = "number",
        },
        Sum = {
            type = "number",
        },
        Avg = {
            type = "number",
        },
        Std = {
            type = "number",
        },
        P90 = {
            type = "number",
        },
    },
}

M.SummaryMetricQueryResult = {
    type = "structure",
    members = {
        QueryId = {
            type = "string",
        },
        QueryStatus = {
            type = "string",
        },
        Error = {
            type = "string",
        },
        MetricName = {
            type = "string",
        },
        Dimensions = {
            type = "list",
            member_type = "structure",
        },
        AggregationPeriod = {
            type = "string",
        },
        StartTimestamp = {
            type = "timestamp",
        },
        EndTimestamp = {
            type = "timestamp",
        },
        Timestamps = {
            type = "list",
            member_type = "timestamp",
        },
        Values = {
            type = "list",
            member_type = "structure",
        },
        Unit = {
            type = "string",
        },
    },
}

M.GetMetricsOutput = {
    type = "structure",
    members = {
        SummaryMetricQueryResults = {
            type = "list",
            member_type = "structure",
        },
    },
}

M.GetMulticastGroupInput = {
    type = "structure",
    members = {
        Id = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.LoRaWANMulticastGet = {
    type = "structure",
    members = {
        RfRegion = {
            type = "string",
        },
        DlClass = {
            type = "string",
        },
        NumberOfDevicesRequested = {
            type = "number",
        },
        NumberOfDevicesInGroup = {
            type = "number",
        },
        ParticipatingGateways = {
            type = "structure",
        },
    },
}

M.GetMulticastGroupOutput = {
    type = "structure",
    members = {
        Arn = {
            type = "string",
        },
        Id = {
            type = "string",
        },
        Name = {
            type = "string",
        },
        Description = {
            type = "string",
        },
        Status = {
            type = "string",
        },
        LoRaWAN = {
            type = "structure",
        },
        CreatedAt = {
            type = "timestamp",
        },
    },
}

M.GetMulticastGroupSessionInput = {
    type = "structure",
    members = {
        Id = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.LoRaWANMulticastSession = {
    type = "structure",
    members = {
        DlDr = {
            type = "number",
        },
        DlFreq = {
            type = "number",
        },
        SessionStartTime = {
            type = "timestamp",
        },
        SessionTimeout = {
            type = "number",
        },
        PingSlotPeriod = {
            type = "number",
        },
    },
}

M.GetMulticastGroupSessionOutput = {
    type = "structure",
    members = {
        LoRaWAN = {
            type = "structure",
        },
    },
}

M.GetNetworkAnalyzerConfigurationInput = {
    type = "structure",
    members = {
        ConfigurationName = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.GetNetworkAnalyzerConfigurationOutput = {
    type = "structure",
    members = {
        TraceContent = {
            type = "structure",
        },
        WirelessDevices = {
            type = "list",
            member_type = "string",
        },
        WirelessGateways = {
            type = "list",
            member_type = "string",
        },
        Description = {
            type = "string",
        },
        Arn = {
            type = "string",
        },
        Name = {
            type = "string",
        },
        MulticastGroups = {
            type = "list",
            member_type = "string",
        },
    },
}

M.GetPartnerAccountInput = {
    type = "structure",
    members = {
        PartnerAccountId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        PartnerType = {
            type = "string",
            traits = {
                http_query = "partnerType",
                required = true,
            },
        },
    },
}

M.SidewalkAccountInfoWithFingerprint = {
    type = "structure",
    members = {
        AmazonId = {
            type = "string",
        },
        Fingerprint = {
            type = "string",
        },
        Arn = {
            type = "string",
        },
    },
}

M.GetPartnerAccountOutput = {
    type = "structure",
    members = {
        Sidewalk = {
            type = "structure",
        },
        AccountLinked = {
            type = "boolean",
        },
    },
}

M.PositionResourceType = {
    WirelessDevice = "WirelessDevice",
    WirelessGateway = "WirelessGateway",
}

M.GetPositionInput = {
    type = "structure",
    members = {
        ResourceIdentifier = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        ResourceType = {
            type = "string",
            traits = {
                http_query = "resourceType",
                required = true,
            },
        },
    },
}

M.PositionSolverProvider = {
    SEMTECH = "Semtech",
}

M.PositionSolverType = {
    GNSS = "GNSS",
}

M.GetPositionOutput = {
    type = "structure",
    members = {
        Position = {
            type = "list",
            member_type = "number",
        },
        Accuracy = {
            type = "structure",
        },
        SolverType = {
            type = "string",
        },
        SolverProvider = {
            type = "string",
        },
        SolverVersion = {
            type = "string",
        },
        Timestamp = {
            type = "string",
        },
    },
}

M.GetPositionConfigurationInput = {
    type = "structure",
    members = {
        ResourceIdentifier = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        ResourceType = {
            type = "string",
            traits = {
                http_query = "resourceType",
                required = true,
            },
        },
    },
}

M.PositionConfigurationFec = {
    ROSE = "ROSE",
    NONE = "NONE",
}

M.PositionConfigurationStatus = {
    Enabled = "Enabled",
    Disabled = "Disabled",
}

M.SemtechGnssDetail = {
    type = "structure",
    members = {
        Provider = {
            type = "string",
        },
        Type = {
            type = "string",
        },
        Status = {
            type = "string",
        },
        Fec = {
            type = "string",
        },
    },
}

M.PositionSolverDetails = {
    type = "structure",
    members = {
        SemtechGnss = {
            type = "structure",
        },
    },
}

M.GetPositionConfigurationOutput = {
    type = "structure",
    members = {
        Solvers = {
            type = "structure",
        },
        Destination = {
            type = "string",
        },
    },
}

M.Gnss = {
    type = "structure",
    members = {
        Payload = {
            type = "string",
            traits = {
                required = true,
            },
        },
        CaptureTime = {
            type = "number",
        },
        CaptureTimeAccuracy = {
            type = "number",
        },
        AssistPosition = {
            type = "list",
            member_type = "number",
        },
        AssistAltitude = {
            type = "number",
        },
        Use2DSolver = {
            type = "boolean",
        },
    },
}

M.Ip = {
    type = "structure",
    members = {
        IpAddress = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.WiFiAccessPoint = {
    type = "structure",
    members = {
        MacAddress = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Rss = {
            type = "number",
            traits = {
                required = true,
            },
        },
    },
}

M.GetPositionEstimateInput = {
    type = "structure",
    members = {
        WiFiAccessPoints = {
            type = "list",
            member_type = "structure",
        },
        CellTowers = {
            type = "structure",
        },
        Ip = {
            type = "structure",
        },
        Gnss = {
            type = "structure",
        },
        Timestamp = {
            type = "timestamp",
        },
        AdvancedConfiguration = {
            type = "structure",
        },
    },
}

M.GetPositionEstimateOutput = {
    type = "structure",
    members = {
        GeoJsonPayload = {
            type = "blob",
            traits = {
                http_payload = true,
            },
        },
    },
}

M.GetResourceEventConfigurationInput = {
    type = "structure",
    members = {
        Identifier = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        IdentifierType = {
            type = "string",
            traits = {
                http_query = "identifierType",
                required = true,
            },
        },
        PartnerType = {
            type = "string",
            traits = {
                http_query = "partnerType",
            },
        },
    },
}

M.GetResourceEventConfigurationOutput = {
    type = "structure",
    members = {
        DeviceRegistrationState = {
            type = "structure",
        },
        Proximity = {
            type = "structure",
        },
        Join = {
            type = "structure",
        },
        ConnectionStatus = {
            type = "structure",
        },
        MessageDeliveryStatus = {
            type = "structure",
        },
    },
}

M.GetResourceLogLevelInput = {
    type = "structure",
    members = {
        ResourceIdentifier = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        ResourceType = {
            type = "string",
            traits = {
                http_query = "resourceType",
                required = true,
            },
        },
    },
}

M.GetResourceLogLevelOutput = {
    type = "structure",
    members = {
        LogLevel = {
            type = "string",
        },
    },
}

M.GetResourcePositionInput = {
    type = "structure",
    members = {
        ResourceIdentifier = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        ResourceType = {
            type = "string",
            traits = {
                http_query = "resourceType",
                required = true,
            },
        },
    },
}

M.GetResourcePositionOutput = {
    type = "structure",
    members = {
        GeoJsonPayload = {
            type = "blob",
            traits = {
                http_payload = true,
            },
        },
    },
}

M.WirelessGatewayServiceType = {
    CUPS = "CUPS",
    LNS = "LNS",
}

M.GetServiceEndpointInput = {
    type = "structure",
    members = {
        ServiceType = {
            type = "string",
            traits = {
                http_query = "serviceType",
            },
        },
    },
}

M.GetServiceEndpointOutput = {
    type = "structure",
    members = {
        ServiceType = {
            type = "string",
        },
        ServiceEndpoint = {
            type = "string",
        },
        ServerTrust = {
            type = "string",
        },
    },
}

M.GetServiceProfileInput = {
    type = "structure",
    members = {
        Id = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.LoRaWANGetServiceProfileInfo = {
    type = "structure",
    members = {
        UlRate = {
            type = "number",
        },
        UlBucketSize = {
            type = "number",
        },
        UlRatePolicy = {
            type = "string",
        },
        DlRate = {
            type = "number",
        },
        DlBucketSize = {
            type = "number",
        },
        DlRatePolicy = {
            type = "string",
        },
        AddGwMetadata = {
            type = "boolean",
        },
        DevStatusReqFreq = {
            type = "number",
        },
        ReportDevStatusBattery = {
            type = "boolean",
        },
        ReportDevStatusMargin = {
            type = "boolean",
        },
        DrMin = {
            type = "number",
        },
        DrMax = {
            type = "number",
        },
        ChannelMask = {
            type = "string",
        },
        PrAllowed = {
            type = "boolean",
        },
        HrAllowed = {
            type = "boolean",
        },
        RaAllowed = {
            type = "boolean",
        },
        NwkGeoLoc = {
            type = "boolean",
        },
        TargetPer = {
            type = "number",
        },
        MinGwDiversity = {
            type = "number",
        },
        TxPowerIndexMin = {
            type = "number",
        },
        TxPowerIndexMax = {
            type = "number",
        },
        NbTransMin = {
            type = "number",
        },
        NbTransMax = {
            type = "number",
        },
    },
}

M.GetServiceProfileOutput = {
    type = "structure",
    members = {
        Arn = {
            type = "string",
        },
        Name = {
            type = "string",
        },
        Id = {
            type = "string",
        },
        LoRaWAN = {
            type = "structure",
        },
    },
}

M.WirelessDeviceIdType = {
    WirelessDeviceId = "WirelessDeviceId",
    DevEui = "DevEui",
    ThingName = "ThingName",
    SidewalkManufacturingSn = "SidewalkManufacturingSn",
}

M.GetWirelessDeviceInput = {
    type = "structure",
    members = {
        Identifier = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        IdentifierType = {
            type = "string",
            traits = {
                http_query = "identifierType",
                required = true,
            },
        },
    },
}

M.WirelessDeviceSidewalkStatus = {
    PROVISIONED = "PROVISIONED",
    REGISTERED = "REGISTERED",
    ACTIVATED = "ACTIVATED",
    UNKNOWN = "UNKNOWN",
}

M.SidewalkDevice = {
    type = "structure",
    members = {
        AmazonId = {
            type = "string",
        },
        SidewalkId = {
            type = "string",
        },
        SidewalkManufacturingSn = {
            type = "string",
        },
        DeviceCertificates = {
            type = "list",
            member_type = "structure",
        },
        PrivateKeys = {
            type = "list",
            member_type = "structure",
        },
        DeviceProfileId = {
            type = "string",
        },
        CertificateId = {
            type = "string",
        },
        Status = {
            type = "string",
        },
        Positioning = {
            type = "structure",
        },
    },
}

M.GetWirelessDeviceOutput = {
    type = "structure",
    members = {
        Type = {
            type = "string",
        },
        Name = {
            type = "string",
        },
        Description = {
            type = "string",
        },
        DestinationName = {
            type = "string",
        },
        Id = {
            type = "string",
        },
        Arn = {
            type = "string",
        },
        ThingName = {
            type = "string",
        },
        ThingArn = {
            type = "string",
        },
        LoRaWAN = {
            type = "structure",
        },
        Sidewalk = {
            type = "structure",
        },
        Positioning = {
            type = "string",
        },
    },
}

M.GetWirelessDeviceImportTaskInput = {
    type = "structure",
    members = {
        Id = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.SidewalkGetStartImportInfo = {
    type = "structure",
    members = {
        DeviceCreationFileList = {
            type = "list",
            member_type = "string",
        },
        Role = {
            type = "string",
        },
        Positioning = {
            type = "structure",
        },
    },
}

M.ImportTaskStatus = {
    INITIALIZING = "INITIALIZING",
    INITIALIZED = "INITIALIZED",
    PENDING = "PENDING",
    COMPLETE = "COMPLETE",
    FAILED = "FAILED",
    DELETING = "DELETING",
}

M.GetWirelessDeviceImportTaskOutput = {
    type = "structure",
    members = {
        Id = {
            type = "string",
        },
        Arn = {
            type = "string",
        },
        DestinationName = {
            type = "string",
        },
        Positioning = {
            type = "string",
        },
        Sidewalk = {
            type = "structure",
        },
        CreationTime = {
            type = "timestamp",
        },
        Status = {
            type = "string",
        },
        StatusReason = {
            type = "string",
        },
        InitializedImportedDeviceCount = {
            type = "number",
        },
        PendingImportedDeviceCount = {
            type = "number",
        },
        OnboardedImportedDeviceCount = {
            type = "number",
        },
        FailedImportedDeviceCount = {
            type = "number",
        },
    },
}

M.GetWirelessDeviceStatisticsInput = {
    type = "structure",
    members = {
        WirelessDeviceId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.LoRaWANGatewayMetadata = {
    type = "structure",
    members = {
        GatewayEui = {
            type = "string",
        },
        Snr = {
            type = "number",
        },
        Rssi = {
            type = "number",
        },
    },
}

M.LoRaWANPublicGatewayMetadata = {
    type = "structure",
    members = {
        ProviderNetId = {
            type = "string",
        },
        Id = {
            type = "string",
        },
        Rssi = {
            type = "number",
        },
        Snr = {
            type = "number",
        },
        RfRegion = {
            type = "string",
        },
        DlAllowed = {
            type = "boolean",
        },
    },
}

M.LoRaWANDeviceMetadata = {
    type = "structure",
    members = {
        DevEui = {
            type = "string",
        },
        FPort = {
            type = "number",
        },
        DataRate = {
            type = "number",
        },
        Frequency = {
            type = "number",
        },
        Timestamp = {
            type = "string",
        },
        Gateways = {
            type = "list",
            member_type = "structure",
        },
        PublicGateways = {
            type = "list",
            member_type = "structure",
        },
    },
}

M.SidewalkDeviceMetadata = {
    type = "structure",
    members = {
        Rssi = {
            type = "number",
        },
        BatteryLevel = {
            type = "string",
        },
        Event = {
            type = "string",
        },
        DeviceState = {
            type = "string",
        },
    },
}

M.GetWirelessDeviceStatisticsOutput = {
    type = "structure",
    members = {
        WirelessDeviceId = {
            type = "string",
        },
        LastUplinkReceivedAt = {
            type = "string",
        },
        LoRaWAN = {
            type = "structure",
        },
        Sidewalk = {
            type = "structure",
        },
    },
}

M.WirelessGatewayIdType = {
    GatewayEui = "GatewayEui",
    WirelessGatewayId = "WirelessGatewayId",
    ThingName = "ThingName",
}

M.GetWirelessGatewayInput = {
    type = "structure",
    members = {
        Identifier = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        IdentifierType = {
            type = "string",
            traits = {
                http_query = "identifierType",
                required = true,
            },
        },
    },
}

M.GetWirelessGatewayOutput = {
    type = "structure",
    members = {
        Name = {
            type = "string",
        },
        Id = {
            type = "string",
        },
        Description = {
            type = "string",
        },
        LoRaWAN = {
            type = "structure",
        },
        Arn = {
            type = "string",
        },
        ThingName = {
            type = "string",
        },
        ThingArn = {
            type = "string",
        },
    },
}

M.GetWirelessGatewayCertificateInput = {
    type = "structure",
    members = {
        Id = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.GetWirelessGatewayCertificateOutput = {
    type = "structure",
    members = {
        IotCertificateId = {
            type = "string",
        },
        LoRaWANNetworkServerCertificateId = {
            type = "string",
        },
    },
}

M.GetWirelessGatewayFirmwareInformationInput = {
    type = "structure",
    members = {
        Id = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.LoRaWANGatewayCurrentVersion = {
    type = "structure",
    members = {
        CurrentVersion = {
            type = "structure",
        },
    },
}

M.GetWirelessGatewayFirmwareInformationOutput = {
    type = "structure",
    members = {
        LoRaWAN = {
            type = "structure",
        },
    },
}

M.GetWirelessGatewayStatisticsInput = {
    type = "structure",
    members = {
        WirelessGatewayId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.GetWirelessGatewayStatisticsOutput = {
    type = "structure",
    members = {
        WirelessGatewayId = {
            type = "string",
        },
        LastUplinkReceivedAt = {
            type = "string",
        },
        ConnectionStatus = {
            type = "string",
        },
    },
}

M.GetWirelessGatewayTaskInput = {
    type = "structure",
    members = {
        Id = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.GetWirelessGatewayTaskOutput = {
    type = "structure",
    members = {
        WirelessGatewayId = {
            type = "string",
        },
        WirelessGatewayTaskDefinitionId = {
            type = "string",
        },
        LastUplinkReceivedAt = {
            type = "string",
        },
        TaskCreatedAt = {
            type = "string",
        },
        Status = {
            type = "string",
        },
    },
}

M.GetWirelessGatewayTaskDefinitionInput = {
    type = "structure",
    members = {
        Id = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.GetWirelessGatewayTaskDefinitionOutput = {
    type = "structure",
    members = {
        AutoCreateTasks = {
            type = "boolean",
        },
        Name = {
            type = "string",
        },
        Update = {
            type = "structure",
        },
        Arn = {
            type = "string",
        },
    },
}

M.OnboardStatus = {
    INITIALIZED = "INITIALIZED",
    PENDING = "PENDING",
    ONBOARDED = "ONBOARDED",
    FAILED = "FAILED",
}

M.ImportedSidewalkDevice = {
    type = "structure",
    members = {
        SidewalkManufacturingSn = {
            type = "string",
        },
        OnboardingStatus = {
            type = "string",
        },
        OnboardingStatusReason = {
            type = "string",
        },
        LastUpdateTime = {
            type = "timestamp",
        },
    },
}

M.ImportedWirelessDevice = {
    type = "structure",
    members = {
        Sidewalk = {
            type = "structure",
        },
    },
}

M.ListDestinationsInput = {
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

M.ListDestinationsOutput = {
    type = "structure",
    members = {
        NextToken = {
            type = "string",
        },
        DestinationList = {
            type = "list",
            member_type = "structure",
        },
    },
}

M.ListDeviceProfilesInput = {
    type = "structure",
    members = {
        NextToken = {
            type = "string",
            traits = {
                http_query = "nextToken",
            },
        },
        MaxResults = {
            type = "number",
            traits = {
                http_query = "maxResults",
            },
        },
        DeviceProfileType = {
            type = "string",
            traits = {
                http_query = "deviceProfileType",
            },
        },
    },
}

M.ListDeviceProfilesOutput = {
    type = "structure",
    members = {
        NextToken = {
            type = "string",
        },
        DeviceProfileList = {
            type = "list",
            member_type = "structure",
        },
    },
}

M.ListDevicesForWirelessDeviceImportTaskInput = {
    type = "structure",
    members = {
        Id = {
            type = "string",
            traits = {
                http_query = "id",
                required = true,
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
        Status = {
            type = "string",
            traits = {
                http_query = "status",
            },
        },
    },
}

M.SidewalkListDevicesForImportInfo = {
    type = "structure",
    members = {
        Positioning = {
            type = "structure",
        },
    },
}

M.ListDevicesForWirelessDeviceImportTaskOutput = {
    type = "structure",
    members = {
        NextToken = {
            type = "string",
        },
        DestinationName = {
            type = "string",
        },
        Positioning = {
            type = "string",
        },
        Sidewalk = {
            type = "structure",
        },
        ImportedWirelessDeviceList = {
            type = "list",
            member_type = "structure",
        },
    },
}

M.ListEventConfigurationsInput = {
    type = "structure",
    members = {
        ResourceType = {
            type = "string",
            traits = {
                http_query = "resourceType",
                required = true,
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

M.ListEventConfigurationsOutput = {
    type = "structure",
    members = {
        NextToken = {
            type = "string",
        },
        EventConfigurationsList = {
            type = "list",
            member_type = "structure",
        },
    },
}

M.ListFuotaTasksInput = {
    type = "structure",
    members = {
        NextToken = {
            type = "string",
            traits = {
                http_query = "nextToken",
            },
        },
        MaxResults = {
            type = "number",
            traits = {
                http_query = "maxResults",
            },
        },
    },
}

M.ListFuotaTasksOutput = {
    type = "structure",
    members = {
        NextToken = {
            type = "string",
        },
        FuotaTaskList = {
            type = "list",
            member_type = "structure",
        },
    },
}

M.ListMulticastGroupsInput = {
    type = "structure",
    members = {
        NextToken = {
            type = "string",
            traits = {
                http_query = "nextToken",
            },
        },
        MaxResults = {
            type = "number",
            traits = {
                http_query = "maxResults",
            },
        },
    },
}

M.MulticastGroup = {
    type = "structure",
    members = {
        Id = {
            type = "string",
        },
        Arn = {
            type = "string",
        },
        Name = {
            type = "string",
        },
    },
}

M.ListMulticastGroupsOutput = {
    type = "structure",
    members = {
        NextToken = {
            type = "string",
        },
        MulticastGroupList = {
            type = "list",
            member_type = "structure",
        },
    },
}

M.ListMulticastGroupsByFuotaTaskInput = {
    type = "structure",
    members = {
        Id = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        NextToken = {
            type = "string",
            traits = {
                http_query = "nextToken",
            },
        },
        MaxResults = {
            type = "number",
            traits = {
                http_query = "maxResults",
            },
        },
    },
}

M.MulticastGroupByFuotaTask = {
    type = "structure",
    members = {
        Id = {
            type = "string",
        },
    },
}

M.ListMulticastGroupsByFuotaTaskOutput = {
    type = "structure",
    members = {
        NextToken = {
            type = "string",
        },
        MulticastGroupList = {
            type = "list",
            member_type = "structure",
        },
    },
}

M.ListNetworkAnalyzerConfigurationsInput = {
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

M.NetworkAnalyzerConfigurations = {
    type = "structure",
    members = {
        Arn = {
            type = "string",
        },
        Name = {
            type = "string",
        },
    },
}

M.ListNetworkAnalyzerConfigurationsOutput = {
    type = "structure",
    members = {
        NextToken = {
            type = "string",
        },
        NetworkAnalyzerConfigurationList = {
            type = "list",
            member_type = "structure",
        },
    },
}

M.ListPartnerAccountsInput = {
    type = "structure",
    members = {
        NextToken = {
            type = "string",
            traits = {
                http_query = "nextToken",
            },
        },
        MaxResults = {
            type = "number",
            traits = {
                http_query = "maxResults",
            },
        },
    },
}

M.ListPartnerAccountsOutput = {
    type = "structure",
    members = {
        NextToken = {
            type = "string",
        },
        Sidewalk = {
            type = "list",
            member_type = "structure",
        },
    },
}

M.ListPositionConfigurationsInput = {
    type = "structure",
    members = {
        ResourceType = {
            type = "string",
            traits = {
                http_query = "resourceType",
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

M.PositionConfigurationItem = {
    type = "structure",
    members = {
        ResourceIdentifier = {
            type = "string",
        },
        ResourceType = {
            type = "string",
        },
        Solvers = {
            type = "structure",
        },
        Destination = {
            type = "string",
        },
    },
}

M.ListPositionConfigurationsOutput = {
    type = "structure",
    members = {
        PositionConfigurationList = {
            type = "list",
            member_type = "structure",
        },
        NextToken = {
            type = "string",
        },
    },
}

M.ListQueuedMessagesInput = {
    type = "structure",
    members = {
        Id = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        NextToken = {
            type = "string",
            traits = {
                http_query = "nextToken",
            },
        },
        MaxResults = {
            type = "number",
            traits = {
                http_query = "maxResults",
            },
        },
        WirelessDeviceType = {
            type = "string",
            traits = {
                http_query = "WirelessDeviceType",
            },
        },
    },
}

M.ListQueuedMessagesOutput = {
    type = "structure",
    members = {
        NextToken = {
            type = "string",
        },
        DownlinkQueueMessagesList = {
            type = "list",
            member_type = "structure",
        },
    },
}

M.ListServiceProfilesInput = {
    type = "structure",
    members = {
        NextToken = {
            type = "string",
            traits = {
                http_query = "nextToken",
            },
        },
        MaxResults = {
            type = "number",
            traits = {
                http_query = "maxResults",
            },
        },
    },
}

M.ServiceProfile = {
    type = "structure",
    members = {
        Arn = {
            type = "string",
        },
        Name = {
            type = "string",
        },
        Id = {
            type = "string",
        },
    },
}

M.ListServiceProfilesOutput = {
    type = "structure",
    members = {
        NextToken = {
            type = "string",
        },
        ServiceProfileList = {
            type = "list",
            member_type = "structure",
        },
    },
}

M.ListTagsForResourceInput = {
    type = "structure",
    members = {
        ResourceArn = {
            type = "string",
            traits = {
                http_query = "resourceArn",
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
            member_type = "structure",
        },
    },
}

M.ListWirelessDeviceImportTasksInput = {
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

M.WirelessDeviceImportTask = {
    type = "structure",
    members = {
        Id = {
            type = "string",
        },
        Arn = {
            type = "string",
        },
        DestinationName = {
            type = "string",
        },
        Positioning = {
            type = "string",
        },
        Sidewalk = {
            type = "structure",
        },
        CreationTime = {
            type = "timestamp",
        },
        Status = {
            type = "string",
        },
        StatusReason = {
            type = "string",
        },
        InitializedImportedDeviceCount = {
            type = "number",
        },
        PendingImportedDeviceCount = {
            type = "number",
        },
        OnboardedImportedDeviceCount = {
            type = "number",
        },
        FailedImportedDeviceCount = {
            type = "number",
        },
    },
}

M.ListWirelessDeviceImportTasksOutput = {
    type = "structure",
    members = {
        NextToken = {
            type = "string",
        },
        WirelessDeviceImportTaskList = {
            type = "list",
            member_type = "structure",
        },
    },
}

M.ListWirelessDevicesInput = {
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
        DestinationName = {
            type = "string",
            traits = {
                http_query = "destinationName",
            },
        },
        DeviceProfileId = {
            type = "string",
            traits = {
                http_query = "deviceProfileId",
            },
        },
        ServiceProfileId = {
            type = "string",
            traits = {
                http_query = "serviceProfileId",
            },
        },
        WirelessDeviceType = {
            type = "string",
            traits = {
                http_query = "wirelessDeviceType",
            },
        },
        FuotaTaskId = {
            type = "string",
            traits = {
                http_query = "fuotaTaskId",
            },
        },
        MulticastGroupId = {
            type = "string",
            traits = {
                http_query = "multicastGroupId",
            },
        },
    },
}

M.LoRaWANListDevice = {
    type = "structure",
    members = {
        DevEui = {
            type = "string",
        },
    },
}

M.SidewalkListDevice = {
    type = "structure",
    members = {
        AmazonId = {
            type = "string",
        },
        SidewalkId = {
            type = "string",
        },
        SidewalkManufacturingSn = {
            type = "string",
        },
        DeviceCertificates = {
            type = "list",
            member_type = "structure",
        },
        DeviceProfileId = {
            type = "string",
        },
        Status = {
            type = "string",
        },
        Positioning = {
            type = "structure",
        },
    },
}

M.WirelessDeviceStatistics = {
    type = "structure",
    members = {
        Arn = {
            type = "string",
        },
        Id = {
            type = "string",
        },
        Type = {
            type = "string",
        },
        Name = {
            type = "string",
        },
        DestinationName = {
            type = "string",
        },
        LastUplinkReceivedAt = {
            type = "string",
        },
        LoRaWAN = {
            type = "structure",
        },
        Sidewalk = {
            type = "structure",
        },
        FuotaDeviceStatus = {
            type = "string",
        },
        MulticastDeviceStatus = {
            type = "string",
        },
        McGroupId = {
            type = "number",
        },
        Positioning = {
            type = "string",
        },
    },
}

M.ListWirelessDevicesOutput = {
    type = "structure",
    members = {
        NextToken = {
            type = "string",
        },
        WirelessDeviceList = {
            type = "list",
            member_type = "structure",
        },
    },
}

M.ListWirelessGatewaysInput = {
    type = "structure",
    members = {
        NextToken = {
            type = "string",
            traits = {
                http_query = "nextToken",
            },
        },
        MaxResults = {
            type = "number",
            traits = {
                http_query = "maxResults",
            },
        },
    },
}

M.WirelessGatewayStatistics = {
    type = "structure",
    members = {
        Arn = {
            type = "string",
        },
        Id = {
            type = "string",
        },
        Name = {
            type = "string",
        },
        Description = {
            type = "string",
        },
        LoRaWAN = {
            type = "structure",
        },
        LastUplinkReceivedAt = {
            type = "string",
        },
    },
}

M.ListWirelessGatewaysOutput = {
    type = "structure",
    members = {
        NextToken = {
            type = "string",
        },
        WirelessGatewayList = {
            type = "list",
            member_type = "structure",
        },
    },
}

M.WirelessGatewayTaskDefinitionType = {
    UPDATE = "UPDATE",
}

M.ListWirelessGatewayTaskDefinitionsInput = {
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
        TaskDefinitionType = {
            type = "string",
            traits = {
                http_query = "taskDefinitionType",
            },
        },
    },
}

M.LoRaWANUpdateGatewayTaskEntry = {
    type = "structure",
    members = {
        CurrentVersion = {
            type = "structure",
        },
        UpdateVersion = {
            type = "structure",
        },
    },
}

M.UpdateWirelessGatewayTaskEntry = {
    type = "structure",
    members = {
        Id = {
            type = "string",
        },
        LoRaWAN = {
            type = "structure",
        },
        Arn = {
            type = "string",
        },
    },
}

M.ListWirelessGatewayTaskDefinitionsOutput = {
    type = "structure",
    members = {
        NextToken = {
            type = "string",
        },
        TaskDefinitions = {
            type = "list",
            member_type = "structure",
        },
    },
}

M.SemtechGnssConfiguration = {
    type = "structure",
    members = {
        Status = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Fec = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.PositionSolverConfigurations = {
    type = "structure",
    members = {
        SemtechGnss = {
            type = "structure",
        },
    },
}

M.PutPositionConfigurationInput = {
    type = "structure",
    members = {
        ResourceIdentifier = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        ResourceType = {
            type = "string",
            traits = {
                http_query = "resourceType",
                required = true,
            },
        },
        Solvers = {
            type = "structure",
        },
        Destination = {
            type = "string",
        },
    },
}

M.PutPositionConfigurationOutput = {
    type = "structure",
}

M.PutResourceLogLevelInput = {
    type = "structure",
    members = {
        ResourceIdentifier = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        ResourceType = {
            type = "string",
            traits = {
                http_query = "resourceType",
                required = true,
            },
        },
        LogLevel = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.PutResourceLogLevelOutput = {
    type = "structure",
}

M.ResetAllResourceLogLevelsInput = {
    type = "structure",
}

M.ResetAllResourceLogLevelsOutput = {
    type = "structure",
}

M.ResetResourceLogLevelInput = {
    type = "structure",
    members = {
        ResourceIdentifier = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        ResourceType = {
            type = "string",
            traits = {
                http_query = "resourceType",
                required = true,
            },
        },
    },
}

M.ResetResourceLogLevelOutput = {
    type = "structure",
}

M.LoRaWANMulticastMetadata = {
    type = "structure",
    members = {
        FPort = {
            type = "number",
        },
    },
}

M.MulticastWirelessMetadata = {
    type = "structure",
    members = {
        LoRaWAN = {
            type = "structure",
        },
    },
}

M.SendDataToMulticastGroupInput = {
    type = "structure",
    members = {
        Id = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        PayloadData = {
            type = "string",
            traits = {
                required = true,
            },
        },
        WirelessMetadata = {
            type = "structure",
            traits = {
                required = true,
            },
        },
    },
}

M.SendDataToMulticastGroupOutput = {
    type = "structure",
    members = {
        MessageId = {
            type = "string",
        },
    },
}

M.MessageType = {
    CUSTOM_COMMAND_ID_NOTIFY = "CUSTOM_COMMAND_ID_NOTIFY",
    CUSTOM_COMMAND_ID_GET = "CUSTOM_COMMAND_ID_GET",
    CUSTOM_COMMAND_ID_SET = "CUSTOM_COMMAND_ID_SET",
    CUSTOM_COMMAND_ID_RESP = "CUSTOM_COMMAND_ID_RESP",
}

M.SidewalkSendDataToDevice = {
    type = "structure",
    members = {
        Seq = {
            type = "number",
        },
        MessageType = {
            type = "string",
        },
        AckModeRetryDurationSecs = {
            type = "number",
        },
    },
}

M.WirelessMetadata = {
    type = "structure",
    members = {
        LoRaWAN = {
            type = "structure",
        },
        Sidewalk = {
            type = "structure",
        },
    },
}

M.SendDataToWirelessDeviceInput = {
    type = "structure",
    members = {
        Id = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        TransmitMode = {
            type = "number",
            traits = {
                required = true,
            },
        },
        PayloadData = {
            type = "string",
            traits = {
                required = true,
            },
        },
        WirelessMetadata = {
            type = "structure",
        },
    },
}

M.SendDataToWirelessDeviceOutput = {
    type = "structure",
    members = {
        MessageId = {
            type = "string",
        },
    },
}

M.StartBulkAssociateWirelessDeviceWithMulticastGroupInput = {
    type = "structure",
    members = {
        Id = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        QueryString = {
            type = "string",
        },
        Tags = {
            type = "list",
            member_type = "structure",
        },
    },
}

M.StartBulkAssociateWirelessDeviceWithMulticastGroupOutput = {
    type = "structure",
}

M.StartBulkDisassociateWirelessDeviceFromMulticastGroupInput = {
    type = "structure",
    members = {
        Id = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        QueryString = {
            type = "string",
        },
        Tags = {
            type = "list",
            member_type = "structure",
        },
    },
}

M.StartBulkDisassociateWirelessDeviceFromMulticastGroupOutput = {
    type = "structure",
}

M.LoRaWANStartFuotaTask = {
    type = "structure",
    members = {
        StartTime = {
            type = "timestamp",
        },
    },
}

M.StartFuotaTaskInput = {
    type = "structure",
    members = {
        Id = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        LoRaWAN = {
            type = "structure",
        },
    },
}

M.StartFuotaTaskOutput = {
    type = "structure",
}

M.StartMulticastGroupSessionInput = {
    type = "structure",
    members = {
        Id = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        LoRaWAN = {
            type = "structure",
            traits = {
                required = true,
            },
        },
    },
}

M.StartMulticastGroupSessionOutput = {
    type = "structure",
}

M.SidewalkSingleStartImportInfo = {
    type = "structure",
    members = {
        SidewalkManufacturingSn = {
            type = "string",
        },
        Positioning = {
            type = "structure",
        },
    },
}

M.StartSingleWirelessDeviceImportTaskInput = {
    type = "structure",
    members = {
        DestinationName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        ClientRequestToken = {
            type = "string",
        },
        DeviceName = {
            type = "string",
        },
        Tags = {
            type = "list",
            member_type = "structure",
        },
        Positioning = {
            type = "string",
        },
        Sidewalk = {
            type = "structure",
            traits = {
                required = true,
            },
        },
    },
}

M.StartSingleWirelessDeviceImportTaskOutput = {
    type = "structure",
    members = {
        Id = {
            type = "string",
        },
        Arn = {
            type = "string",
        },
    },
}

M.SidewalkStartImportInfo = {
    type = "structure",
    members = {
        DeviceCreationFile = {
            type = "string",
        },
        Role = {
            type = "string",
        },
        Positioning = {
            type = "structure",
        },
    },
}

M.StartWirelessDeviceImportTaskInput = {
    type = "structure",
    members = {
        DestinationName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        ClientRequestToken = {
            type = "string",
        },
        Tags = {
            type = "list",
            member_type = "structure",
        },
        Positioning = {
            type = "string",
        },
        Sidewalk = {
            type = "structure",
            traits = {
                required = true,
            },
        },
    },
}

M.StartWirelessDeviceImportTaskOutput = {
    type = "structure",
    members = {
        Id = {
            type = "string",
        },
        Arn = {
            type = "string",
        },
    },
}

M.TagResourceInput = {
    type = "structure",
    members = {
        ResourceArn = {
            type = "string",
            traits = {
                http_query = "resourceArn",
                required = true,
            },
        },
        Tags = {
            type = "list",
            member_type = "structure",
            traits = {
                required = true,
            },
        },
    },
}

M.TagResourceOutput = {
    type = "structure",
}

M.TooManyTagsException = {
    type = "structure",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
        ResourceName = {
            type = "string",
        },
    },
}

M.TestWirelessDeviceInput = {
    type = "structure",
    members = {
        Id = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.TestWirelessDeviceOutput = {
    type = "structure",
    members = {
        Result = {
            type = "string",
        },
    },
}

M.UntagResourceInput = {
    type = "structure",
    members = {
        ResourceArn = {
            type = "string",
            traits = {
                http_query = "resourceArn",
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

M.UpdateDestinationInput = {
    type = "structure",
    members = {
        Name = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        ExpressionType = {
            type = "string",
        },
        Expression = {
            type = "string",
        },
        Description = {
            type = "string",
        },
        RoleArn = {
            type = "string",
        },
    },
}

M.UpdateDestinationOutput = {
    type = "structure",
}

M.UpdateEventConfigurationByResourceTypesInput = {
    type = "structure",
    members = {
        DeviceRegistrationState = {
            type = "structure",
        },
        Proximity = {
            type = "structure",
        },
        Join = {
            type = "structure",
        },
        ConnectionStatus = {
            type = "structure",
        },
        MessageDeliveryStatus = {
            type = "structure",
        },
    },
}

M.UpdateEventConfigurationByResourceTypesOutput = {
    type = "structure",
}

M.UpdateFuotaTaskInput = {
    type = "structure",
    members = {
        Id = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        Name = {
            type = "string",
        },
        Description = {
            type = "string",
        },
        LoRaWAN = {
            type = "structure",
        },
        FirmwareUpdateImage = {
            type = "string",
        },
        FirmwareUpdateRole = {
            type = "string",
        },
        RedundancyPercent = {
            type = "number",
        },
        FragmentSizeBytes = {
            type = "number",
        },
        FragmentIntervalMS = {
            type = "number",
        },
        Descriptor = {
            type = "string",
        },
    },
}

M.UpdateFuotaTaskOutput = {
    type = "structure",
}

M.UpdateLogLevelsByResourceTypesInput = {
    type = "structure",
    members = {
        DefaultLogLevel = {
            type = "string",
        },
        FuotaTaskLogOptions = {
            type = "list",
            member_type = "structure",
        },
        WirelessDeviceLogOptions = {
            type = "list",
            member_type = "structure",
        },
        WirelessGatewayLogOptions = {
            type = "list",
            member_type = "structure",
        },
    },
}

M.UpdateLogLevelsByResourceTypesOutput = {
    type = "structure",
}

M.UpdateMetricConfigurationInput = {
    type = "structure",
    members = {
        SummaryMetric = {
            type = "structure",
        },
    },
}

M.UpdateMetricConfigurationOutput = {
    type = "structure",
}

M.UpdateMulticastGroupInput = {
    type = "structure",
    members = {
        Id = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        Name = {
            type = "string",
        },
        Description = {
            type = "string",
        },
        LoRaWAN = {
            type = "structure",
        },
    },
}

M.UpdateMulticastGroupOutput = {
    type = "structure",
}

M.UpdateNetworkAnalyzerConfigurationInput = {
    type = "structure",
    members = {
        ConfigurationName = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        TraceContent = {
            type = "structure",
        },
        WirelessDevicesToAdd = {
            type = "list",
            member_type = "string",
        },
        WirelessDevicesToRemove = {
            type = "list",
            member_type = "string",
        },
        WirelessGatewaysToAdd = {
            type = "list",
            member_type = "string",
        },
        WirelessGatewaysToRemove = {
            type = "list",
            member_type = "string",
        },
        Description = {
            type = "string",
        },
        MulticastGroupsToAdd = {
            type = "list",
            member_type = "string",
        },
        MulticastGroupsToRemove = {
            type = "list",
            member_type = "string",
        },
    },
}

M.UpdateNetworkAnalyzerConfigurationOutput = {
    type = "structure",
}

M.SidewalkUpdateAccount = {
    type = "structure",
    members = {
        AppServerPrivateKey = {
            type = "string",
        },
    },
}

M.UpdatePartnerAccountInput = {
    type = "structure",
    members = {
        Sidewalk = {
            type = "structure",
            traits = {
                required = true,
            },
        },
        PartnerAccountId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        PartnerType = {
            type = "string",
            traits = {
                http_query = "partnerType",
                required = true,
            },
        },
    },
}

M.UpdatePartnerAccountOutput = {
    type = "structure",
}

M.UpdatePositionInput = {
    type = "structure",
    members = {
        ResourceIdentifier = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        ResourceType = {
            type = "string",
            traits = {
                http_query = "resourceType",
                required = true,
            },
        },
        Position = {
            type = "list",
            member_type = "number",
            traits = {
                required = true,
            },
        },
    },
}

M.UpdatePositionOutput = {
    type = "structure",
}

M.UpdateResourceEventConfigurationInput = {
    type = "structure",
    members = {
        Identifier = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        IdentifierType = {
            type = "string",
            traits = {
                http_query = "identifierType",
                required = true,
            },
        },
        PartnerType = {
            type = "string",
            traits = {
                http_query = "partnerType",
            },
        },
        DeviceRegistrationState = {
            type = "structure",
        },
        Proximity = {
            type = "structure",
        },
        Join = {
            type = "structure",
        },
        ConnectionStatus = {
            type = "structure",
        },
        MessageDeliveryStatus = {
            type = "structure",
        },
    },
}

M.UpdateResourceEventConfigurationOutput = {
    type = "structure",
}

M.UpdateResourcePositionInput = {
    type = "structure",
    members = {
        ResourceIdentifier = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        ResourceType = {
            type = "string",
            traits = {
                http_query = "resourceType",
                required = true,
            },
        },
        GeoJsonPayload = {
            type = "blob",
            traits = {
                http_payload = true,
            },
        },
    },
}

M.UpdateResourcePositionOutput = {
    type = "structure",
}

M.UpdateAbpV1_0_x = {
    type = "structure",
    members = {
        FCntStart = {
            type = "number",
        },
    },
}

M.UpdateAbpV1_1 = {
    type = "structure",
    members = {
        FCntStart = {
            type = "number",
        },
    },
}

M.UpdateFPorts = {
    type = "structure",
    members = {
        Positioning = {
            type = "structure",
        },
        Applications = {
            type = "list",
            member_type = "structure",
        },
    },
}

M.LoRaWANUpdateDevice = {
    type = "structure",
    members = {
        DeviceProfileId = {
            type = "string",
        },
        ServiceProfileId = {
            type = "string",
        },
        AbpV1_1 = {
            type = "structure",
        },
        AbpV1_0_x = {
            type = "structure",
        },
        FPorts = {
            type = "structure",
        },
    },
}

M.SidewalkUpdateWirelessDevice = {
    type = "structure",
    members = {
        Positioning = {
            type = "structure",
        },
    },
}

M.UpdateWirelessDeviceInput = {
    type = "structure",
    members = {
        Id = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        DestinationName = {
            type = "string",
        },
        Name = {
            type = "string",
        },
        Description = {
            type = "string",
        },
        LoRaWAN = {
            type = "structure",
        },
        Positioning = {
            type = "string",
        },
        Sidewalk = {
            type = "structure",
        },
    },
}

M.UpdateWirelessDeviceOutput = {
    type = "structure",
}

M.SidewalkUpdateImportInfo = {
    type = "structure",
    members = {
        DeviceCreationFile = {
            type = "string",
        },
    },
}

M.UpdateWirelessDeviceImportTaskInput = {
    type = "structure",
    members = {
        Id = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        Sidewalk = {
            type = "structure",
            traits = {
                required = true,
            },
        },
    },
}

M.UpdateWirelessDeviceImportTaskOutput = {
    type = "structure",
}

M.UpdateWirelessGatewayInput = {
    type = "structure",
    members = {
        Id = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        Name = {
            type = "string",
        },
        Description = {
            type = "string",
        },
        JoinEuiFilters = {
            type = "list",
            member_type = "list",
        },
        NetIdFilters = {
            type = "list",
            member_type = "string",
        },
        MaxEirp = {
            type = "number",
        },
    },
}

M.UpdateWirelessGatewayOutput = {
    type = "structure",
}

return M
