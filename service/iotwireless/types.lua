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
        SessionKeys = M.SessionKeysAbpV1_0_x,
        FCntStart = {
            type = "integer",
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
        SessionKeys = M.SessionKeysAbpV1_1,
        FCntStart = {
            type = "integer",
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
            type = "float",
        },
        VerticalAccuracy = {
            type = "float",
        },
    },
}

M.WiFiCellular = {
    type = "structure",
    members = {
        ConfidencePercent = {
            type = "integer",
            traits = {
                default = 68,
            },
        },
    },
}

M.AdvancedConfiguration = {
    type = "structure",
    members = {
        WiFiCellular = M.WiFiCellular,
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
            type = "integer",
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
        Sidewalk = setmetatable({ traits = {
            required = true,
        } }, { __index = M.SidewalkAccountInfo }),
        ClientRequestToken = {
            type = "string",
            traits = {
                idempotency_token = true,
            },
        },
        Tags = {
            type = "list",
            member = M.Tag,
        },
    },
}

M.AssociateAwsAccountWithPartnerAccountOutput = {
    type = "structure",
    members = {
        Sidewalk = M.SidewalkAccountInfo,
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
            type = "integer",
        },
        Frequencies = {
            type = "list",
            member = { type = "integer" },
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
            type = "integer",
            traits = {
                required = true,
            },
        },
        CdmaChannel = {
            type = "integer",
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
            type = "integer",
            traits = {
                required = true,
            },
        },
        CdmaChannel = {
            type = "integer",
            traits = {
                required = true,
            },
        },
        PilotPower = {
            type = "integer",
        },
        BaseStationId = {
            type = "integer",
        },
    },
}

M.CdmaObj = {
    type = "structure",
    members = {
        SystemId = {
            type = "integer",
            traits = {
                required = true,
            },
        },
        NetworkId = {
            type = "integer",
            traits = {
                required = true,
            },
        },
        BaseStationId = {
            type = "integer",
            traits = {
                required = true,
            },
        },
        RegistrationZone = {
            type = "integer",
        },
        CdmaLocalId = M.CdmaLocalId,
        PilotPower = {
            type = "integer",
        },
        BaseLat = {
            type = "float",
        },
        BaseLng = {
            type = "float",
        },
        CdmaNmr = {
            type = "list",
            member = M.CdmaNmrObj,
        },
    },
}

M.GsmLocalId = {
    type = "structure",
    members = {
        Bsic = {
            type = "integer",
            traits = {
                required = true,
            },
        },
        Bcch = {
            type = "integer",
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
            type = "integer",
            traits = {
                required = true,
            },
        },
        GeranCid = {
            type = "integer",
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
            type = "integer",
            traits = {
                required = true,
            },
        },
        Bcch = {
            type = "integer",
            traits = {
                required = true,
            },
        },
        RxLevel = {
            type = "integer",
        },
        GlobalIdentity = M.GlobalIdentity,
    },
}

M.GsmObj = {
    type = "structure",
    members = {
        Mcc = {
            type = "integer",
            traits = {
                required = true,
            },
        },
        Mnc = {
            type = "integer",
            traits = {
                required = true,
            },
        },
        Lac = {
            type = "integer",
            traits = {
                required = true,
            },
        },
        GeranCid = {
            type = "integer",
            traits = {
                required = true,
            },
        },
        GsmLocalId = M.GsmLocalId,
        GsmTimingAdvance = {
            type = "integer",
        },
        RxLevel = {
            type = "integer",
        },
        GsmNmr = {
            type = "list",
            member = M.GsmNmrObj,
        },
    },
}

M.LteLocalId = {
    type = "structure",
    members = {
        Pci = {
            type = "integer",
            traits = {
                required = true,
            },
        },
        Earfcn = {
            type = "integer",
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
            type = "integer",
            traits = {
                required = true,
            },
        },
        Earfcn = {
            type = "integer",
            traits = {
                required = true,
            },
        },
        EutranCid = {
            type = "integer",
            traits = {
                default = 0,
            },
        },
        Rsrp = {
            type = "integer",
        },
        Rsrq = {
            type = "float",
        },
    },
}

M.LteObj = {
    type = "structure",
    members = {
        Mcc = {
            type = "integer",
            traits = {
                required = true,
            },
        },
        Mnc = {
            type = "integer",
            traits = {
                required = true,
            },
        },
        EutranCid = {
            type = "integer",
            traits = {
                required = true,
            },
        },
        Tac = {
            type = "integer",
        },
        LteLocalId = M.LteLocalId,
        LteTimingAdvance = {
            type = "integer",
        },
        Rsrp = {
            type = "integer",
        },
        Rsrq = {
            type = "float",
        },
        NrCapable = {
            type = "boolean",
            traits = {
                default = false,
            },
        },
        LteNmr = {
            type = "list",
            member = M.LteNmrObj,
        },
    },
}

M.TdscdmaLocalId = {
    type = "structure",
    members = {
        Uarfcn = {
            type = "integer",
            traits = {
                required = true,
            },
        },
        CellParams = {
            type = "integer",
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
            type = "integer",
            traits = {
                required = true,
            },
        },
        CellParams = {
            type = "integer",
            traits = {
                required = true,
            },
        },
        UtranCid = {
            type = "integer",
        },
        Rscp = {
            type = "integer",
        },
        PathLoss = {
            type = "integer",
        },
    },
}

M.TdscdmaObj = {
    type = "structure",
    members = {
        Mcc = {
            type = "integer",
            traits = {
                required = true,
            },
        },
        Mnc = {
            type = "integer",
            traits = {
                required = true,
            },
        },
        Lac = {
            type = "integer",
        },
        UtranCid = {
            type = "integer",
            traits = {
                required = true,
            },
        },
        TdscdmaLocalId = M.TdscdmaLocalId,
        TdscdmaTimingAdvance = {
            type = "integer",
        },
        Rscp = {
            type = "integer",
        },
        PathLoss = {
            type = "integer",
        },
        TdscdmaNmr = {
            type = "list",
            member = M.TdscdmaNmrObj,
        },
    },
}

M.WcdmaLocalId = {
    type = "structure",
    members = {
        Uarfcndl = {
            type = "integer",
            traits = {
                required = true,
            },
        },
        Psc = {
            type = "integer",
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
            type = "integer",
            traits = {
                required = true,
            },
        },
        Psc = {
            type = "integer",
            traits = {
                required = true,
            },
        },
        UtranCid = {
            type = "integer",
            traits = {
                required = true,
            },
        },
        Rscp = {
            type = "integer",
        },
        PathLoss = {
            type = "integer",
        },
    },
}

M.WcdmaObj = {
    type = "structure",
    members = {
        Mcc = {
            type = "integer",
            traits = {
                required = true,
            },
        },
        Mnc = {
            type = "integer",
            traits = {
                required = true,
            },
        },
        Lac = {
            type = "integer",
        },
        UtranCid = {
            type = "integer",
            traits = {
                required = true,
            },
        },
        WcdmaLocalId = M.WcdmaLocalId,
        Rscp = {
            type = "integer",
        },
        PathLoss = {
            type = "integer",
        },
        WcdmaNmr = {
            type = "list",
            member = M.WcdmaNmrObj,
        },
    },
}

M.CellTowers = {
    type = "structure",
    members = {
        Gsm = {
            type = "list",
            member = M.GsmObj,
        },
        Wcdma = {
            type = "list",
            member = M.WcdmaObj,
        },
        Tdscdma = {
            type = "list",
            member = M.TdscdmaObj,
        },
        Lte = {
            type = "list",
            member = M.LteObj,
        },
        Cdma = {
            type = "list",
            member = M.CdmaObj,
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
        LoRaWAN = M.LoRaWANConnectionStatusEventNotificationConfigurations,
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
        LoRaWAN = M.LoRaWANConnectionStatusResourceTypeEventConfiguration,
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
            member = M.Tag,
        },
        ClientRequestToken = {
            type = "string",
            traits = {
                idempotency_token = true,
            },
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
            traits = {
                default = false,
            },
        },
        ClassBTimeout = {
            type = "integer",
        },
        PingSlotPeriod = {
            type = "integer",
        },
        PingSlotDr = {
            type = "integer",
        },
        PingSlotFreq = {
            type = "integer",
        },
        SupportsClassC = {
            type = "boolean",
            traits = {
                default = false,
            },
        },
        ClassCTimeout = {
            type = "integer",
        },
        MacVersion = {
            type = "string",
        },
        RegParamsRevision = {
            type = "string",
        },
        RxDelay1 = {
            type = "integer",
        },
        RxDrOffset1 = {
            type = "integer",
        },
        RxDataRate2 = {
            type = "integer",
        },
        RxFreq2 = {
            type = "integer",
        },
        FactoryPresetFreqsList = {
            type = "list",
            member = { type = "integer" },
        },
        MaxEirp = {
            type = "integer",
        },
        MaxDutyCycle = {
            type = "integer",
        },
        RfRegion = {
            type = "string",
        },
        SupportsJoin = {
            type = "boolean",
        },
        Supports32BitFCnt = {
            type = "boolean",
            traits = {
                default = false,
            },
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
        LoRaWAN = M.LoRaWANDeviceProfile,
        Tags = {
            type = "list",
            member = M.Tag,
        },
        ClientRequestToken = {
            type = "string",
            traits = {
                idempotency_token = true,
            },
        },
        Sidewalk = M.SidewalkCreateDeviceProfile,
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
            traits = {
                idempotency_token = true,
            },
        },
        LoRaWAN = M.LoRaWANFuotaTask,
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
            member = M.Tag,
        },
        RedundancyPercent = {
            type = "integer",
        },
        FragmentSizeBytes = {
            type = "integer",
        },
        FragmentIntervalMS = {
            type = "integer",
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
            member = { type = "string" },
        },
        TransmissionInterval = {
            type = "integer",
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
        ParticipatingGateways = M.ParticipatingGatewaysMulticast,
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
            traits = {
                idempotency_token = true,
            },
        },
        LoRaWAN = setmetatable({ traits = {
            required = true,
        } }, { __index = M.LoRaWANMulticast }),
        Tags = {
            type = "list",
            member = M.Tag,
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
        TraceContent = M.TraceContent,
        WirelessDevices = {
            type = "list",
            member = { type = "string" },
        },
        WirelessGateways = {
            type = "list",
            member = { type = "string" },
        },
        Description = {
            type = "string",
        },
        Tags = {
            type = "list",
            member = M.Tag,
        },
        ClientRequestToken = {
            type = "string",
            traits = {
                idempotency_token = true,
            },
        },
        MulticastGroups = {
            type = "list",
            member = { type = "string" },
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
            traits = {
                default = false,
            },
        },
        DrMin = {
            type = "integer",
        },
        DrMax = {
            type = "integer",
        },
        PrAllowed = {
            type = "boolean",
            traits = {
                default = false,
            },
        },
        RaAllowed = {
            type = "boolean",
            traits = {
                default = false,
            },
        },
        TxPowerIndexMin = {
            type = "integer",
        },
        TxPowerIndexMax = {
            type = "integer",
        },
        NbTransMin = {
            type = "integer",
        },
        NbTransMax = {
            type = "integer",
        },
    },
}

M.CreateServiceProfileInput = {
    type = "structure",
    members = {
        Name = {
            type = "string",
        },
        LoRaWAN = M.LoRaWANServiceProfile,
        Tags = {
            type = "list",
            member = M.Tag,
        },
        ClientRequestToken = {
            type = "string",
            traits = {
                idempotency_token = true,
            },
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
            type = "integer",
        },
        Stream = {
            type = "integer",
        },
        Gnss = {
            type = "integer",
        },
    },
}

M.FPorts = {
    type = "structure",
    members = {
        Fuota = {
            type = "integer",
        },
        Multicast = {
            type = "integer",
        },
        ClockSync = {
            type = "integer",
        },
        Positioning = M.Positioning,
        Applications = {
            type = "list",
            member = M.ApplicationConfig,
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
        OtaaV1_1 = M.OtaaV1_1,
        OtaaV1_0_x = M.OtaaV1_0_x,
        AbpV1_1 = M.AbpV1_1,
        AbpV1_0_x = M.AbpV1_0_x,
        FPorts = M.FPorts,
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
        Positioning = M.SidewalkPositioning,
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
            traits = {
                idempotency_token = true,
            },
        },
        LoRaWAN = M.LoRaWANDevice,
        Tags = {
            type = "list",
            member = M.Tag,
        },
        Positioning = {
            type = "string",
        },
        Sidewalk = M.SidewalkCreateWirelessDevice,
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
            member = { type = "list" },
        },
        NetIdFilters = {
            type = "list",
            member = { type = "string" },
        },
        SubBands = {
            type = "list",
            member = { type = "integer" },
        },
        Beaconing = M.Beaconing,
        MaxEirp = {
            type = "float",
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
        LoRaWAN = setmetatable({ traits = {
            required = true,
        } }, { __index = M.LoRaWANGateway }),
        Tags = {
            type = "list",
            member = M.Tag,
        },
        ClientRequestToken = {
            type = "string",
            traits = {
                idempotency_token = true,
            },
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
            type = "long",
        },
        CurrentVersion = M.LoRaWANGatewayVersion,
        UpdateVersion = M.LoRaWANGatewayVersion,
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
        LoRaWAN = M.LoRaWANUpdateGatewayTaskCreate,
    },
}

M.CreateWirelessGatewayTaskDefinitionInput = {
    type = "structure",
    members = {
        AutoCreateTasks = {
            type = "boolean",
            traits = {
                default = false,
                required = true,
            },
        },
        Name = {
            type = "string",
        },
        Update = M.UpdateWirelessGatewayTaskCreate,
        ClientRequestToken = {
            type = "string",
            traits = {
                idempotency_token = true,
            },
        },
        Tags = {
            type = "list",
            member = M.Tag,
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
            type = "integer",
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
        Sidewalk = M.SidewalkEventNotificationConfigurations,
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
        Sidewalk = M.SidewalkResourceTypeEventConfiguration,
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
            type = "integer",
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
            member = M.GatewayListItem,
            traits = {
                required = true,
            },
        },
        TransmissionInterval = {
            type = "integer",
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
            type = "integer",
        },
        ParticipatingGateways = M.ParticipatingGateways,
    },
}

M.DownlinkQueueMessage = {
    type = "structure",
    members = {
        MessageId = {
            type = "string",
        },
        TransmitMode = {
            type = "integer",
        },
        ReceivedAt = {
            type = "string",
        },
        LoRaWAN = M.LoRaWANSendDataToDevice,
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
        LoRaWAN = M.LoRaWANJoinEventNotificationConfigurations,
        WirelessDeviceIdEventTopic = {
            type = "string",
        },
    },
}

M.MessageDeliveryStatusEventConfiguration = {
    type = "structure",
    members = {
        Sidewalk = M.SidewalkEventNotificationConfigurations,
        WirelessDeviceIdEventTopic = {
            type = "string",
        },
    },
}

M.ProximityEventConfiguration = {
    type = "structure",
    members = {
        Sidewalk = M.SidewalkEventNotificationConfigurations,
        WirelessDeviceIdEventTopic = {
            type = "string",
        },
    },
}

M.EventNotificationItemConfigurations = {
    type = "structure",
    members = {
        DeviceRegistrationState = M.DeviceRegistrationStateEventConfiguration,
        Proximity = M.ProximityEventConfiguration,
        Join = M.JoinEventConfiguration,
        ConnectionStatus = M.ConnectionStatusEventConfiguration,
        MessageDeliveryStatus = M.MessageDeliveryStatusEventConfiguration,
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
        Events = M.EventNotificationItemConfigurations,
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
            member = M.FuotaTaskEventLogOption,
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
            member = M.DakCertificateMetadata,
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
        LoRaWAN = M.LoRaWANDeviceProfile,
        Sidewalk = M.SidewalkGetDeviceProfile,
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
        LoRaWAN = M.LoRaWANJoinResourceTypeEventConfiguration,
    },
}

M.MessageDeliveryStatusResourceTypeEventConfiguration = {
    type = "structure",
    members = {
        Sidewalk = M.SidewalkResourceTypeEventConfiguration,
    },
}

M.ProximityResourceTypeEventConfiguration = {
    type = "structure",
    members = {
        Sidewalk = M.SidewalkResourceTypeEventConfiguration,
    },
}

M.GetEventConfigurationByResourceTypesOutput = {
    type = "structure",
    members = {
        DeviceRegistrationState = M.DeviceRegistrationStateResourceTypeEventConfiguration,
        Proximity = M.ProximityResourceTypeEventConfiguration,
        Join = M.JoinResourceTypeEventConfiguration,
        ConnectionStatus = M.ConnectionStatusResourceTypeEventConfiguration,
        MessageDeliveryStatus = M.MessageDeliveryStatusResourceTypeEventConfiguration,
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
            traits = {
                timestamp_format = "date-time",
            },
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
        LoRaWAN = M.LoRaWANFuotaTaskGetInfo,
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
            type = "integer",
        },
        FragmentSizeBytes = {
            type = "integer",
        },
        FragmentIntervalMS = {
            type = "integer",
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
            member = M.WirelessDeviceEventLogOption,
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
            member = M.WirelessGatewayEventLogOption,
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
            member = M.WirelessGatewayLogOption,
        },
        WirelessDeviceLogOptions = {
            type = "list",
            member = M.WirelessDeviceLogOption,
        },
        FuotaTaskLogOptions = {
            type = "list",
            member = M.FuotaTaskLogOption,
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
        SummaryMetric = M.SummaryMetricConfiguration,
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
            member = M.Dimension,
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
            member = M.SummaryMetricQuery,
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
            type = "double",
        },
        Max = {
            type = "double",
        },
        Sum = {
            type = "double",
        },
        Avg = {
            type = "double",
        },
        Std = {
            type = "double",
        },
        P90 = {
            type = "double",
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
            member = M.Dimension,
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
            member = { type = "timestamp" },
        },
        Values = {
            type = "list",
            member = M.MetricQueryValue,
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
            member = M.SummaryMetricQueryResult,
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
            type = "integer",
        },
        NumberOfDevicesInGroup = {
            type = "integer",
        },
        ParticipatingGateways = M.ParticipatingGatewaysMulticast,
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
        LoRaWAN = M.LoRaWANMulticastGet,
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
            type = "integer",
        },
        DlFreq = {
            type = "integer",
        },
        SessionStartTime = {
            type = "timestamp",
            traits = {
                timestamp_format = "date-time",
            },
        },
        SessionTimeout = {
            type = "integer",
        },
        PingSlotPeriod = {
            type = "integer",
        },
    },
}

M.GetMulticastGroupSessionOutput = {
    type = "structure",
    members = {
        LoRaWAN = M.LoRaWANMulticastSession,
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
        TraceContent = M.TraceContent,
        WirelessDevices = {
            type = "list",
            member = { type = "string" },
        },
        WirelessGateways = {
            type = "list",
            member = { type = "string" },
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
            member = { type = "string" },
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
        Sidewalk = M.SidewalkAccountInfoWithFingerprint,
        AccountLinked = {
            type = "boolean",
            traits = {
                default = false,
            },
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
            member = { type = "float" },
        },
        Accuracy = M.Accuracy,
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
        SemtechGnss = M.SemtechGnssDetail,
    },
}

M.GetPositionConfigurationOutput = {
    type = "structure",
    members = {
        Solvers = M.PositionSolverDetails,
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
            type = "float",
        },
        CaptureTimeAccuracy = {
            type = "float",
        },
        AssistPosition = {
            type = "list",
            member = { type = "float" },
        },
        AssistAltitude = {
            type = "float",
        },
        Use2DSolver = {
            type = "boolean",
            traits = {
                default = false,
            },
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
            type = "integer",
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
            member = M.WiFiAccessPoint,
        },
        CellTowers = M.CellTowers,
        Ip = M.Ip,
        Gnss = M.Gnss,
        Timestamp = {
            type = "timestamp",
        },
        AdvancedConfiguration = M.AdvancedConfiguration,
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
        DeviceRegistrationState = M.DeviceRegistrationStateEventConfiguration,
        Proximity = M.ProximityEventConfiguration,
        Join = M.JoinEventConfiguration,
        ConnectionStatus = M.ConnectionStatusEventConfiguration,
        MessageDeliveryStatus = M.MessageDeliveryStatusEventConfiguration,
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
            type = "integer",
        },
        UlBucketSize = {
            type = "integer",
        },
        UlRatePolicy = {
            type = "string",
        },
        DlRate = {
            type = "integer",
        },
        DlBucketSize = {
            type = "integer",
        },
        DlRatePolicy = {
            type = "string",
        },
        AddGwMetadata = {
            type = "boolean",
            traits = {
                default = false,
            },
        },
        DevStatusReqFreq = {
            type = "integer",
        },
        ReportDevStatusBattery = {
            type = "boolean",
            traits = {
                default = false,
            },
        },
        ReportDevStatusMargin = {
            type = "boolean",
            traits = {
                default = false,
            },
        },
        DrMin = {
            type = "integer",
            traits = {
                default = 0,
            },
        },
        DrMax = {
            type = "integer",
            traits = {
                default = 0,
            },
        },
        ChannelMask = {
            type = "string",
        },
        PrAllowed = {
            type = "boolean",
            traits = {
                default = false,
            },
        },
        HrAllowed = {
            type = "boolean",
            traits = {
                default = false,
            },
        },
        RaAllowed = {
            type = "boolean",
            traits = {
                default = false,
            },
        },
        NwkGeoLoc = {
            type = "boolean",
            traits = {
                default = false,
            },
        },
        TargetPer = {
            type = "integer",
            traits = {
                default = 0,
            },
        },
        MinGwDiversity = {
            type = "integer",
        },
        TxPowerIndexMin = {
            type = "integer",
        },
        TxPowerIndexMax = {
            type = "integer",
        },
        NbTransMin = {
            type = "integer",
        },
        NbTransMax = {
            type = "integer",
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
        LoRaWAN = M.LoRaWANGetServiceProfileInfo,
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
            member = M.CertificateList,
        },
        PrivateKeys = {
            type = "list",
            member = M.CertificateList,
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
        Positioning = M.SidewalkPositioning,
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
        LoRaWAN = M.LoRaWANDevice,
        Sidewalk = M.SidewalkDevice,
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
            member = { type = "string" },
        },
        Role = {
            type = "string",
        },
        Positioning = M.SidewalkPositioning,
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
        Sidewalk = M.SidewalkGetStartImportInfo,
        CreationTime = {
            type = "timestamp",
            traits = {
                timestamp_format = "date-time",
            },
        },
        Status = {
            type = "string",
        },
        StatusReason = {
            type = "string",
        },
        InitializedImportedDeviceCount = {
            type = "long",
        },
        PendingImportedDeviceCount = {
            type = "long",
        },
        OnboardedImportedDeviceCount = {
            type = "long",
        },
        FailedImportedDeviceCount = {
            type = "long",
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
            type = "double",
        },
        Rssi = {
            type = "double",
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
            type = "double",
        },
        Snr = {
            type = "double",
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
            type = "integer",
        },
        DataRate = {
            type = "integer",
        },
        Frequency = {
            type = "integer",
        },
        Timestamp = {
            type = "string",
        },
        Gateways = {
            type = "list",
            member = M.LoRaWANGatewayMetadata,
        },
        PublicGateways = {
            type = "list",
            member = M.LoRaWANPublicGatewayMetadata,
        },
    },
}

M.SidewalkDeviceMetadata = {
    type = "structure",
    members = {
        Rssi = {
            type = "integer",
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
        LoRaWAN = M.LoRaWANDeviceMetadata,
        Sidewalk = M.SidewalkDeviceMetadata,
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
        LoRaWAN = M.LoRaWANGateway,
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
        CurrentVersion = M.LoRaWANGatewayVersion,
    },
}

M.GetWirelessGatewayFirmwareInformationOutput = {
    type = "structure",
    members = {
        LoRaWAN = M.LoRaWANGatewayCurrentVersion,
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
            traits = {
                default = false,
            },
        },
        Name = {
            type = "string",
        },
        Update = M.UpdateWirelessGatewayTaskCreate,
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
            traits = {
                timestamp_format = "date-time",
            },
        },
    },
}

M.ImportedWirelessDevice = {
    type = "structure",
    members = {
        Sidewalk = M.ImportedSidewalkDevice,
    },
}

M.ListDestinationsInput = {
    type = "structure",
    members = {
        MaxResults = {
            type = "integer",
            traits = {
                default = 0,
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
            member = M.Destinations,
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
            type = "integer",
            traits = {
                default = 0,
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
            member = M.DeviceProfile,
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
            type = "integer",
            traits = {
                default = 0,
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
        Positioning = M.SidewalkPositioning,
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
        Sidewalk = M.SidewalkListDevicesForImportInfo,
        ImportedWirelessDeviceList = {
            type = "list",
            member = M.ImportedWirelessDevice,
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
            type = "integer",
            traits = {
                default = 0,
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
            member = M.EventConfigurationItem,
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
            type = "integer",
            traits = {
                default = 0,
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
            member = M.FuotaTask,
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
            type = "integer",
            traits = {
                default = 0,
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
            member = M.MulticastGroup,
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
            type = "integer",
            traits = {
                default = 0,
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
            member = M.MulticastGroupByFuotaTask,
        },
    },
}

M.ListNetworkAnalyzerConfigurationsInput = {
    type = "structure",
    members = {
        MaxResults = {
            type = "integer",
            traits = {
                default = 0,
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
            member = M.NetworkAnalyzerConfigurations,
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
            type = "integer",
            traits = {
                default = 0,
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
            member = M.SidewalkAccountInfoWithFingerprint,
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
            type = "integer",
            traits = {
                default = 0,
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
        Solvers = M.PositionSolverDetails,
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
            member = M.PositionConfigurationItem,
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
            type = "integer",
            traits = {
                default = 0,
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
            member = M.DownlinkQueueMessage,
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
            type = "integer",
            traits = {
                default = 0,
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
            member = M.ServiceProfile,
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
            member = M.Tag,
        },
    },
}

M.ListWirelessDeviceImportTasksInput = {
    type = "structure",
    members = {
        MaxResults = {
            type = "integer",
            traits = {
                default = 0,
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
        Sidewalk = M.SidewalkGetStartImportInfo,
        CreationTime = {
            type = "timestamp",
            traits = {
                timestamp_format = "date-time",
            },
        },
        Status = {
            type = "string",
        },
        StatusReason = {
            type = "string",
        },
        InitializedImportedDeviceCount = {
            type = "long",
        },
        PendingImportedDeviceCount = {
            type = "long",
        },
        OnboardedImportedDeviceCount = {
            type = "long",
        },
        FailedImportedDeviceCount = {
            type = "long",
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
            member = M.WirelessDeviceImportTask,
        },
    },
}

M.ListWirelessDevicesInput = {
    type = "structure",
    members = {
        MaxResults = {
            type = "integer",
            traits = {
                default = 0,
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
            member = M.CertificateList,
        },
        DeviceProfileId = {
            type = "string",
        },
        Status = {
            type = "string",
        },
        Positioning = M.SidewalkPositioning,
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
        LoRaWAN = M.LoRaWANListDevice,
        Sidewalk = M.SidewalkListDevice,
        FuotaDeviceStatus = {
            type = "string",
        },
        MulticastDeviceStatus = {
            type = "string",
        },
        McGroupId = {
            type = "integer",
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
            member = M.WirelessDeviceStatistics,
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
            type = "integer",
            traits = {
                default = 0,
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
        LoRaWAN = M.LoRaWANGateway,
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
            member = M.WirelessGatewayStatistics,
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
            type = "integer",
            traits = {
                default = 0,
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
        CurrentVersion = M.LoRaWANGatewayVersion,
        UpdateVersion = M.LoRaWANGatewayVersion,
    },
}

M.UpdateWirelessGatewayTaskEntry = {
    type = "structure",
    members = {
        Id = {
            type = "string",
        },
        LoRaWAN = M.LoRaWANUpdateGatewayTaskEntry,
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
            member = M.UpdateWirelessGatewayTaskEntry,
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
        SemtechGnss = M.SemtechGnssConfiguration,
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
        Solvers = M.PositionSolverConfigurations,
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
            type = "integer",
        },
    },
}

M.MulticastWirelessMetadata = {
    type = "structure",
    members = {
        LoRaWAN = M.LoRaWANMulticastMetadata,
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
        WirelessMetadata = setmetatable({ traits = {
            required = true,
        } }, { __index = M.MulticastWirelessMetadata }),
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
            type = "integer",
        },
        MessageType = {
            type = "string",
        },
        AckModeRetryDurationSecs = {
            type = "integer",
        },
    },
}

M.WirelessMetadata = {
    type = "structure",
    members = {
        LoRaWAN = M.LoRaWANSendDataToDevice,
        Sidewalk = M.SidewalkSendDataToDevice,
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
            type = "integer",
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
        WirelessMetadata = M.WirelessMetadata,
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
            member = M.Tag,
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
            member = M.Tag,
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
            traits = {
                timestamp_format = "date-time",
            },
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
        LoRaWAN = M.LoRaWANStartFuotaTask,
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
        LoRaWAN = setmetatable({ traits = {
            required = true,
        } }, { __index = M.LoRaWANMulticastSession }),
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
        Positioning = M.SidewalkPositioning,
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
            traits = {
                idempotency_token = true,
            },
        },
        DeviceName = {
            type = "string",
        },
        Tags = {
            type = "list",
            member = M.Tag,
        },
        Positioning = {
            type = "string",
        },
        Sidewalk = setmetatable({ traits = {
            required = true,
        } }, { __index = M.SidewalkSingleStartImportInfo }),
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
        Positioning = M.SidewalkPositioning,
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
            traits = {
                idempotency_token = true,
            },
        },
        Tags = {
            type = "list",
            member = M.Tag,
        },
        Positioning = {
            type = "string",
        },
        Sidewalk = setmetatable({ traits = {
            required = true,
        } }, { __index = M.SidewalkStartImportInfo }),
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
            member = M.Tag,
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
        DeviceRegistrationState = M.DeviceRegistrationStateResourceTypeEventConfiguration,
        Proximity = M.ProximityResourceTypeEventConfiguration,
        Join = M.JoinResourceTypeEventConfiguration,
        ConnectionStatus = M.ConnectionStatusResourceTypeEventConfiguration,
        MessageDeliveryStatus = M.MessageDeliveryStatusResourceTypeEventConfiguration,
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
        LoRaWAN = M.LoRaWANFuotaTask,
        FirmwareUpdateImage = {
            type = "string",
        },
        FirmwareUpdateRole = {
            type = "string",
        },
        RedundancyPercent = {
            type = "integer",
        },
        FragmentSizeBytes = {
            type = "integer",
        },
        FragmentIntervalMS = {
            type = "integer",
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
            member = M.FuotaTaskLogOption,
        },
        WirelessDeviceLogOptions = {
            type = "list",
            member = M.WirelessDeviceLogOption,
        },
        WirelessGatewayLogOptions = {
            type = "list",
            member = M.WirelessGatewayLogOption,
        },
    },
}

M.UpdateLogLevelsByResourceTypesOutput = {
    type = "structure",
}

M.UpdateMetricConfigurationInput = {
    type = "structure",
    members = {
        SummaryMetric = M.SummaryMetricConfiguration,
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
        LoRaWAN = M.LoRaWANMulticast,
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
        TraceContent = M.TraceContent,
        WirelessDevicesToAdd = {
            type = "list",
            member = { type = "string" },
        },
        WirelessDevicesToRemove = {
            type = "list",
            member = { type = "string" },
        },
        WirelessGatewaysToAdd = {
            type = "list",
            member = { type = "string" },
        },
        WirelessGatewaysToRemove = {
            type = "list",
            member = { type = "string" },
        },
        Description = {
            type = "string",
        },
        MulticastGroupsToAdd = {
            type = "list",
            member = { type = "string" },
        },
        MulticastGroupsToRemove = {
            type = "list",
            member = { type = "string" },
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
        Sidewalk = setmetatable({ traits = {
            required = true,
        } }, { __index = M.SidewalkUpdateAccount }),
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
            member = { type = "float" },
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
        DeviceRegistrationState = M.DeviceRegistrationStateEventConfiguration,
        Proximity = M.ProximityEventConfiguration,
        Join = M.JoinEventConfiguration,
        ConnectionStatus = M.ConnectionStatusEventConfiguration,
        MessageDeliveryStatus = M.MessageDeliveryStatusEventConfiguration,
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
            type = "integer",
        },
    },
}

M.UpdateAbpV1_1 = {
    type = "structure",
    members = {
        FCntStart = {
            type = "integer",
        },
    },
}

M.UpdateFPorts = {
    type = "structure",
    members = {
        Positioning = M.Positioning,
        Applications = {
            type = "list",
            member = M.ApplicationConfig,
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
        AbpV1_1 = M.UpdateAbpV1_1,
        AbpV1_0_x = M.UpdateAbpV1_0_x,
        FPorts = M.UpdateFPorts,
    },
}

M.SidewalkUpdateWirelessDevice = {
    type = "structure",
    members = {
        Positioning = M.SidewalkPositioning,
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
        LoRaWAN = M.LoRaWANUpdateDevice,
        Positioning = {
            type = "string",
        },
        Sidewalk = M.SidewalkUpdateWirelessDevice,
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
        Sidewalk = setmetatable({ traits = {
            required = true,
        } }, { __index = M.SidewalkUpdateImportInfo }),
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
            member = { type = "list" },
        },
        NetIdFilters = {
            type = "list",
            member = { type = "string" },
        },
        MaxEirp = {
            type = "float",
        },
    },
}

M.UpdateWirelessGatewayOutput = {
    type = "structure",
}

return M
