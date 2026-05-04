local M = {}

M.SessionKeysAbpV1_0_x = {
    type = "structure",
    id = "SessionKeysAbpV1_0_x",
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
    id = "AbpV1_0_x",
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
    id = "SessionKeysAbpV1_1",
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
    id = "AbpV1_1",
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
    id = "AccessDeniedException",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.Accuracy = {
    type = "structure",
    id = "Accuracy",
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
    id = "WiFiCellular",
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
    id = "AdvancedConfiguration",
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
    id = "ApplicationConfig",
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
    id = "SidewalkAccountInfo",
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
    id = "Tag",
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
    id = "AssociateAwsAccountWithPartnerAccountInput",
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
    id = "AssociateAwsAccountWithPartnerAccountOutput",
    members = {
        Sidewalk = M.SidewalkAccountInfo,
        Arn = {
            type = "string",
        },
    },
}

M.ConflictException = {
    type = "structure",
    id = "ConflictException",
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
    id = "InternalServerException",
    error = "server",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.ResourceNotFoundException = {
    type = "structure",
    id = "ResourceNotFoundException",
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
    id = "ThrottlingException",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.ValidationException = {
    type = "structure",
    id = "ValidationException",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.AssociateMulticastGroupWithFuotaTaskInput = {
    type = "structure",
    id = "AssociateMulticastGroupWithFuotaTaskInput",
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
    id = "AssociateMulticastGroupWithFuotaTaskOutput",
}

M.AssociateWirelessDeviceWithFuotaTaskInput = {
    type = "structure",
    id = "AssociateWirelessDeviceWithFuotaTaskInput",
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
    id = "AssociateWirelessDeviceWithFuotaTaskOutput",
}

M.AssociateWirelessDeviceWithMulticastGroupInput = {
    type = "structure",
    id = "AssociateWirelessDeviceWithMulticastGroupInput",
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
    id = "AssociateWirelessDeviceWithMulticastGroupOutput",
}

M.AssociateWirelessDeviceWithThingInput = {
    type = "structure",
    id = "AssociateWirelessDeviceWithThingInput",
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
    id = "AssociateWirelessDeviceWithThingOutput",
}

M.AssociateWirelessGatewayWithCertificateInput = {
    type = "structure",
    id = "AssociateWirelessGatewayWithCertificateInput",
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
    id = "AssociateWirelessGatewayWithCertificateOutput",
    members = {
        IotCertificateId = {
            type = "string",
        },
    },
}

M.AssociateWirelessGatewayWithThingInput = {
    type = "structure",
    id = "AssociateWirelessGatewayWithThingInput",
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
    id = "AssociateWirelessGatewayWithThingOutput",
}

M.BatteryLevel = {
    NORMAL = "normal",
    LOW = "low",
    CRITICAL = "critical",
}

M.Beaconing = {
    type = "structure",
    id = "Beaconing",
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
    id = "CancelMulticastGroupSessionInput",
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
    id = "CancelMulticastGroupSessionOutput",
}

M.CdmaLocalId = {
    type = "structure",
    id = "CdmaLocalId",
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
    id = "CdmaNmrObj",
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
    id = "CdmaObj",
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
    id = "GsmLocalId",
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
    id = "GlobalIdentity",
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
    id = "GsmNmrObj",
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
    id = "GsmObj",
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
    id = "LteLocalId",
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
    id = "LteNmrObj",
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
    id = "LteObj",
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
    id = "TdscdmaLocalId",
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
    id = "TdscdmaNmrObj",
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
    id = "TdscdmaObj",
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
    id = "WcdmaLocalId",
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
    id = "WcdmaNmrObj",
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
    id = "WcdmaObj",
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
    id = "CellTowers",
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
    id = "CertificateList",
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
    id = "LoRaWANConnectionStatusEventNotificationConfigurations",
    members = {
        GatewayEuiEventTopic = {
            type = "string",
        },
    },
}

M.ConnectionStatusEventConfiguration = {
    type = "structure",
    id = "ConnectionStatusEventConfiguration",
    members = {
        LoRaWAN = M.LoRaWANConnectionStatusEventNotificationConfigurations,
        WirelessGatewayIdEventTopic = {
            type = "string",
        },
    },
}

M.LoRaWANConnectionStatusResourceTypeEventConfiguration = {
    type = "structure",
    id = "LoRaWANConnectionStatusResourceTypeEventConfiguration",
    members = {
        WirelessGatewayEventTopic = {
            type = "string",
        },
    },
}

M.ConnectionStatusResourceTypeEventConfiguration = {
    type = "structure",
    id = "ConnectionStatusResourceTypeEventConfiguration",
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
    id = "CreateDestinationInput",
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
    id = "CreateDestinationOutput",
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
    id = "LoRaWANDeviceProfile",
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
    id = "SidewalkCreateDeviceProfile",
}

M.CreateDeviceProfileInput = {
    type = "structure",
    id = "CreateDeviceProfileInput",
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
    id = "CreateDeviceProfileOutput",
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
    id = "LoRaWANFuotaTask",
    members = {
        RfRegion = {
            type = "string",
        },
    },
}

M.CreateFuotaTaskInput = {
    type = "structure",
    id = "CreateFuotaTaskInput",
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
    id = "CreateFuotaTaskOutput",
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
    id = "ParticipatingGatewaysMulticast",
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
    id = "LoRaWANMulticast",
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
    id = "CreateMulticastGroupInput",
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
    id = "CreateMulticastGroupOutput",
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
    id = "TraceContent",
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
    id = "CreateNetworkAnalyzerConfigurationInput",
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
    id = "CreateNetworkAnalyzerConfigurationOutput",
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
    id = "LoRaWANServiceProfile",
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
    id = "CreateServiceProfileInput",
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
    id = "CreateServiceProfileOutput",
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
    id = "Positioning",
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
    id = "FPorts",
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
    id = "OtaaV1_0_x",
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
    id = "OtaaV1_1",
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
    id = "LoRaWANDevice",
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
    id = "SidewalkPositioning",
    members = {
        DestinationName = {
            type = "string",
        },
    },
}

M.SidewalkCreateWirelessDevice = {
    type = "structure",
    id = "SidewalkCreateWirelessDevice",
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
    id = "CreateWirelessDeviceInput",
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
    id = "CreateWirelessDeviceOutput",
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
    id = "LoRaWANGateway",
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
    id = "CreateWirelessGatewayInput",
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
    id = "CreateWirelessGatewayOutput",
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
    id = "CreateWirelessGatewayTaskInput",
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
    id = "CreateWirelessGatewayTaskOutput",
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
    id = "LoRaWANGatewayVersion",
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
    id = "LoRaWANUpdateGatewayTaskCreate",
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
    id = "UpdateWirelessGatewayTaskCreate",
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
    id = "CreateWirelessGatewayTaskDefinitionInput",
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
    id = "CreateWirelessGatewayTaskDefinitionOutput",
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
    id = "DakCertificateMetadata",
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
    id = "DeleteDestinationInput",
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
    id = "DeleteDestinationOutput",
}

M.DeleteDeviceProfileInput = {
    type = "structure",
    id = "DeleteDeviceProfileInput",
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
    id = "DeleteDeviceProfileOutput",
}

M.DeleteFuotaTaskInput = {
    type = "structure",
    id = "DeleteFuotaTaskInput",
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
    id = "DeleteFuotaTaskOutput",
}

M.DeleteMulticastGroupInput = {
    type = "structure",
    id = "DeleteMulticastGroupInput",
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
    id = "DeleteMulticastGroupOutput",
}

M.DeleteNetworkAnalyzerConfigurationInput = {
    type = "structure",
    id = "DeleteNetworkAnalyzerConfigurationInput",
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
    id = "DeleteNetworkAnalyzerConfigurationOutput",
}

M.DeleteQueuedMessagesInput = {
    type = "structure",
    id = "DeleteQueuedMessagesInput",
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
    id = "DeleteQueuedMessagesOutput",
}

M.DeleteServiceProfileInput = {
    type = "structure",
    id = "DeleteServiceProfileInput",
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
    id = "DeleteServiceProfileOutput",
}

M.DeleteWirelessDeviceInput = {
    type = "structure",
    id = "DeleteWirelessDeviceInput",
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
    id = "DeleteWirelessDeviceOutput",
}

M.DeleteWirelessDeviceImportTaskInput = {
    type = "structure",
    id = "DeleteWirelessDeviceImportTaskInput",
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
    id = "DeleteWirelessDeviceImportTaskOutput",
}

M.DeleteWirelessGatewayInput = {
    type = "structure",
    id = "DeleteWirelessGatewayInput",
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
    id = "DeleteWirelessGatewayOutput",
}

M.DeleteWirelessGatewayTaskInput = {
    type = "structure",
    id = "DeleteWirelessGatewayTaskInput",
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
    id = "DeleteWirelessGatewayTaskOutput",
}

M.DeleteWirelessGatewayTaskDefinitionInput = {
    type = "structure",
    id = "DeleteWirelessGatewayTaskDefinitionInput",
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
    id = "DeleteWirelessGatewayTaskDefinitionOutput",
}

M.DeregisterWirelessDeviceInput = {
    type = "structure",
    id = "DeregisterWirelessDeviceInput",
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
    id = "DeregisterWirelessDeviceOutput",
}

M.Destinations = {
    type = "structure",
    id = "Destinations",
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
    id = "DeviceProfile",
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
    id = "SidewalkEventNotificationConfigurations",
    members = {
        AmazonIdEventTopic = {
            type = "string",
        },
    },
}

M.DeviceRegistrationStateEventConfiguration = {
    type = "structure",
    id = "DeviceRegistrationStateEventConfiguration",
    members = {
        Sidewalk = M.SidewalkEventNotificationConfigurations,
        WirelessDeviceIdEventTopic = {
            type = "string",
        },
    },
}

M.SidewalkResourceTypeEventConfiguration = {
    type = "structure",
    id = "SidewalkResourceTypeEventConfiguration",
    members = {
        WirelessDeviceEventTopic = {
            type = "string",
        },
    },
}

M.DeviceRegistrationStateResourceTypeEventConfiguration = {
    type = "structure",
    id = "DeviceRegistrationStateResourceTypeEventConfiguration",
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
    id = "Dimension",
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
    id = "DisassociateAwsAccountFromPartnerAccountInput",
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
    id = "DisassociateAwsAccountFromPartnerAccountOutput",
}

M.DisassociateMulticastGroupFromFuotaTaskInput = {
    type = "structure",
    id = "DisassociateMulticastGroupFromFuotaTaskInput",
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
    id = "DisassociateMulticastGroupFromFuotaTaskOutput",
}

M.DisassociateWirelessDeviceFromFuotaTaskInput = {
    type = "structure",
    id = "DisassociateWirelessDeviceFromFuotaTaskInput",
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
    id = "DisassociateWirelessDeviceFromFuotaTaskOutput",
}

M.DisassociateWirelessDeviceFromMulticastGroupInput = {
    type = "structure",
    id = "DisassociateWirelessDeviceFromMulticastGroupInput",
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
    id = "DisassociateWirelessDeviceFromMulticastGroupOutput",
}

M.DisassociateWirelessDeviceFromThingInput = {
    type = "structure",
    id = "DisassociateWirelessDeviceFromThingInput",
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
    id = "DisassociateWirelessDeviceFromThingOutput",
}

M.DisassociateWirelessGatewayFromCertificateInput = {
    type = "structure",
    id = "DisassociateWirelessGatewayFromCertificateInput",
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
    id = "DisassociateWirelessGatewayFromCertificateOutput",
}

M.DisassociateWirelessGatewayFromThingInput = {
    type = "structure",
    id = "DisassociateWirelessGatewayFromThingInput",
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
    id = "DisassociateWirelessGatewayFromThingOutput",
}

M.DownlinkMode = {
    SEQUENTIAL = "SEQUENTIAL",
    CONCURRENT = "CONCURRENT",
    USING_UPLINK_GATEWAY = "USING_UPLINK_GATEWAY",
}

M.GatewayListItem = {
    type = "structure",
    id = "GatewayListItem",
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
    id = "ParticipatingGateways",
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
    id = "LoRaWANSendDataToDevice",
    members = {
        FPort = {
            type = "integer",
        },
        ParticipatingGateways = M.ParticipatingGateways,
    },
}

M.DownlinkQueueMessage = {
    type = "structure",
    id = "DownlinkQueueMessage",
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
    id = "LoRaWANJoinEventNotificationConfigurations",
    members = {
        DevEuiEventTopic = {
            type = "string",
        },
    },
}

M.JoinEventConfiguration = {
    type = "structure",
    id = "JoinEventConfiguration",
    members = {
        LoRaWAN = M.LoRaWANJoinEventNotificationConfigurations,
        WirelessDeviceIdEventTopic = {
            type = "string",
        },
    },
}

M.MessageDeliveryStatusEventConfiguration = {
    type = "structure",
    id = "MessageDeliveryStatusEventConfiguration",
    members = {
        Sidewalk = M.SidewalkEventNotificationConfigurations,
        WirelessDeviceIdEventTopic = {
            type = "string",
        },
    },
}

M.ProximityEventConfiguration = {
    type = "structure",
    id = "ProximityEventConfiguration",
    members = {
        Sidewalk = M.SidewalkEventNotificationConfigurations,
        WirelessDeviceIdEventTopic = {
            type = "string",
        },
    },
}

M.EventNotificationItemConfigurations = {
    type = "structure",
    id = "EventNotificationItemConfigurations",
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
    id = "EventConfigurationItem",
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
    id = "FuotaTask",
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
    id = "FuotaTaskEventLogOption",
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
    id = "FuotaTaskLogOption",
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
    id = "GetDestinationInput",
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
    id = "GetDestinationOutput",
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
    id = "GetDeviceProfileInput",
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
    id = "SidewalkGetDeviceProfile",
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
    id = "GetDeviceProfileOutput",
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
    id = "GetEventConfigurationByResourceTypesInput",
}

M.LoRaWANJoinResourceTypeEventConfiguration = {
    type = "structure",
    id = "LoRaWANJoinResourceTypeEventConfiguration",
    members = {
        WirelessDeviceEventTopic = {
            type = "string",
        },
    },
}

M.JoinResourceTypeEventConfiguration = {
    type = "structure",
    id = "JoinResourceTypeEventConfiguration",
    members = {
        LoRaWAN = M.LoRaWANJoinResourceTypeEventConfiguration,
    },
}

M.MessageDeliveryStatusResourceTypeEventConfiguration = {
    type = "structure",
    id = "MessageDeliveryStatusResourceTypeEventConfiguration",
    members = {
        Sidewalk = M.SidewalkResourceTypeEventConfiguration,
    },
}

M.ProximityResourceTypeEventConfiguration = {
    type = "structure",
    id = "ProximityResourceTypeEventConfiguration",
    members = {
        Sidewalk = M.SidewalkResourceTypeEventConfiguration,
    },
}

M.GetEventConfigurationByResourceTypesOutput = {
    type = "structure",
    id = "GetEventConfigurationByResourceTypesOutput",
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
    id = "GetFuotaTaskInput",
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
    id = "LoRaWANFuotaTaskGetInfo",
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
    id = "GetFuotaTaskOutput",
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
    id = "GetLogLevelsByResourceTypesInput",
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
    id = "WirelessDeviceEventLogOption",
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
    id = "WirelessDeviceLogOption",
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
    id = "WirelessGatewayEventLogOption",
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
    id = "WirelessGatewayLogOption",
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
    id = "GetLogLevelsByResourceTypesOutput",
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
    id = "GetMetricConfigurationInput",
}

M.SummaryMetricConfigurationStatus = {
    Enabled = "Enabled",
    Disabled = "Disabled",
}

M.SummaryMetricConfiguration = {
    type = "structure",
    id = "SummaryMetricConfiguration",
    members = {
        Status = {
            type = "string",
        },
    },
}

M.GetMetricConfigurationOutput = {
    type = "structure",
    id = "GetMetricConfigurationOutput",
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
    id = "SummaryMetricQuery",
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
    id = "GetMetricsInput",
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
    id = "MetricQueryValue",
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
    id = "SummaryMetricQueryResult",
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
    id = "GetMetricsOutput",
    members = {
        SummaryMetricQueryResults = {
            type = "list",
            member = M.SummaryMetricQueryResult,
        },
    },
}

M.GetMulticastGroupInput = {
    type = "structure",
    id = "GetMulticastGroupInput",
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
    id = "LoRaWANMulticastGet",
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
    id = "GetMulticastGroupOutput",
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
    id = "GetMulticastGroupSessionInput",
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
    id = "LoRaWANMulticastSession",
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
    id = "GetMulticastGroupSessionOutput",
    members = {
        LoRaWAN = M.LoRaWANMulticastSession,
    },
}

M.GetNetworkAnalyzerConfigurationInput = {
    type = "structure",
    id = "GetNetworkAnalyzerConfigurationInput",
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
    id = "GetNetworkAnalyzerConfigurationOutput",
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
    id = "GetPartnerAccountInput",
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
    id = "SidewalkAccountInfoWithFingerprint",
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
    id = "GetPartnerAccountOutput",
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
    id = "GetPositionInput",
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
    id = "GetPositionOutput",
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
    id = "GetPositionConfigurationInput",
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
    id = "SemtechGnssDetail",
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
    id = "PositionSolverDetails",
    members = {
        SemtechGnss = M.SemtechGnssDetail,
    },
}

M.GetPositionConfigurationOutput = {
    type = "structure",
    id = "GetPositionConfigurationOutput",
    members = {
        Solvers = M.PositionSolverDetails,
        Destination = {
            type = "string",
        },
    },
}

M.Gnss = {
    type = "structure",
    id = "Gnss",
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
    id = "Ip",
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
    id = "WiFiAccessPoint",
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
    id = "GetPositionEstimateInput",
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
    id = "GetPositionEstimateOutput",
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
    id = "GetResourceEventConfigurationInput",
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
    id = "GetResourceEventConfigurationOutput",
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
    id = "GetResourceLogLevelInput",
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
    id = "GetResourceLogLevelOutput",
    members = {
        LogLevel = {
            type = "string",
        },
    },
}

M.GetResourcePositionInput = {
    type = "structure",
    id = "GetResourcePositionInput",
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
    id = "GetResourcePositionOutput",
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
    id = "GetServiceEndpointInput",
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
    id = "GetServiceEndpointOutput",
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
    id = "GetServiceProfileInput",
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
    id = "LoRaWANGetServiceProfileInfo",
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
    id = "GetServiceProfileOutput",
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
    id = "GetWirelessDeviceInput",
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
    id = "SidewalkDevice",
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
    id = "GetWirelessDeviceOutput",
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
    id = "GetWirelessDeviceImportTaskInput",
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
    id = "SidewalkGetStartImportInfo",
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
    id = "GetWirelessDeviceImportTaskOutput",
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
    id = "GetWirelessDeviceStatisticsInput",
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
    id = "LoRaWANGatewayMetadata",
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
    id = "LoRaWANPublicGatewayMetadata",
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
    id = "LoRaWANDeviceMetadata",
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
    id = "SidewalkDeviceMetadata",
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
    id = "GetWirelessDeviceStatisticsOutput",
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
    id = "GetWirelessGatewayInput",
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
    id = "GetWirelessGatewayOutput",
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
    id = "GetWirelessGatewayCertificateInput",
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
    id = "GetWirelessGatewayCertificateOutput",
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
    id = "GetWirelessGatewayFirmwareInformationInput",
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
    id = "LoRaWANGatewayCurrentVersion",
    members = {
        CurrentVersion = M.LoRaWANGatewayVersion,
    },
}

M.GetWirelessGatewayFirmwareInformationOutput = {
    type = "structure",
    id = "GetWirelessGatewayFirmwareInformationOutput",
    members = {
        LoRaWAN = M.LoRaWANGatewayCurrentVersion,
    },
}

M.GetWirelessGatewayStatisticsInput = {
    type = "structure",
    id = "GetWirelessGatewayStatisticsInput",
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
    id = "GetWirelessGatewayStatisticsOutput",
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
    id = "GetWirelessGatewayTaskInput",
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
    id = "GetWirelessGatewayTaskOutput",
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
    id = "GetWirelessGatewayTaskDefinitionInput",
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
    id = "GetWirelessGatewayTaskDefinitionOutput",
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
    id = "ImportedSidewalkDevice",
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
    id = "ImportedWirelessDevice",
    members = {
        Sidewalk = M.ImportedSidewalkDevice,
    },
}

M.ListDestinationsInput = {
    type = "structure",
    id = "ListDestinationsInput",
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
    id = "ListDestinationsOutput",
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
    id = "ListDeviceProfilesInput",
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
    id = "ListDeviceProfilesOutput",
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
    id = "ListDevicesForWirelessDeviceImportTaskInput",
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
    id = "SidewalkListDevicesForImportInfo",
    members = {
        Positioning = M.SidewalkPositioning,
    },
}

M.ListDevicesForWirelessDeviceImportTaskOutput = {
    type = "structure",
    id = "ListDevicesForWirelessDeviceImportTaskOutput",
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
    id = "ListEventConfigurationsInput",
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
    id = "ListEventConfigurationsOutput",
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
    id = "ListFuotaTasksInput",
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
    id = "ListFuotaTasksOutput",
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
    id = "ListMulticastGroupsInput",
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
    id = "MulticastGroup",
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
    id = "ListMulticastGroupsOutput",
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
    id = "ListMulticastGroupsByFuotaTaskInput",
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
    id = "MulticastGroupByFuotaTask",
    members = {
        Id = {
            type = "string",
        },
    },
}

M.ListMulticastGroupsByFuotaTaskOutput = {
    type = "structure",
    id = "ListMulticastGroupsByFuotaTaskOutput",
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
    id = "ListNetworkAnalyzerConfigurationsInput",
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
    id = "NetworkAnalyzerConfigurations",
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
    id = "ListNetworkAnalyzerConfigurationsOutput",
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
    id = "ListPartnerAccountsInput",
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
    id = "ListPartnerAccountsOutput",
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
    id = "ListPositionConfigurationsInput",
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
    id = "PositionConfigurationItem",
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
    id = "ListPositionConfigurationsOutput",
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
    id = "ListQueuedMessagesInput",
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
    id = "ListQueuedMessagesOutput",
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
    id = "ListServiceProfilesInput",
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
    id = "ServiceProfile",
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
    id = "ListServiceProfilesOutput",
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
    id = "ListTagsForResourceInput",
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
    id = "ListTagsForResourceOutput",
    members = {
        Tags = {
            type = "list",
            member = M.Tag,
        },
    },
}

M.ListWirelessDeviceImportTasksInput = {
    type = "structure",
    id = "ListWirelessDeviceImportTasksInput",
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
    id = "WirelessDeviceImportTask",
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
    id = "ListWirelessDeviceImportTasksOutput",
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
    id = "ListWirelessDevicesInput",
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
    id = "LoRaWANListDevice",
    members = {
        DevEui = {
            type = "string",
        },
    },
}

M.SidewalkListDevice = {
    type = "structure",
    id = "SidewalkListDevice",
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
    id = "WirelessDeviceStatistics",
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
    id = "ListWirelessDevicesOutput",
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
    id = "ListWirelessGatewaysInput",
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
    id = "WirelessGatewayStatistics",
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
    id = "ListWirelessGatewaysOutput",
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
    id = "ListWirelessGatewayTaskDefinitionsInput",
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
    id = "LoRaWANUpdateGatewayTaskEntry",
    members = {
        CurrentVersion = M.LoRaWANGatewayVersion,
        UpdateVersion = M.LoRaWANGatewayVersion,
    },
}

M.UpdateWirelessGatewayTaskEntry = {
    type = "structure",
    id = "UpdateWirelessGatewayTaskEntry",
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
    id = "ListWirelessGatewayTaskDefinitionsOutput",
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
    id = "SemtechGnssConfiguration",
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
    id = "PositionSolverConfigurations",
    members = {
        SemtechGnss = M.SemtechGnssConfiguration,
    },
}

M.PutPositionConfigurationInput = {
    type = "structure",
    id = "PutPositionConfigurationInput",
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
    id = "PutPositionConfigurationOutput",
}

M.PutResourceLogLevelInput = {
    type = "structure",
    id = "PutResourceLogLevelInput",
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
    id = "PutResourceLogLevelOutput",
}

M.ResetAllResourceLogLevelsInput = {
    type = "structure",
    id = "ResetAllResourceLogLevelsInput",
}

M.ResetAllResourceLogLevelsOutput = {
    type = "structure",
    id = "ResetAllResourceLogLevelsOutput",
}

M.ResetResourceLogLevelInput = {
    type = "structure",
    id = "ResetResourceLogLevelInput",
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
    id = "ResetResourceLogLevelOutput",
}

M.LoRaWANMulticastMetadata = {
    type = "structure",
    id = "LoRaWANMulticastMetadata",
    members = {
        FPort = {
            type = "integer",
        },
    },
}

M.MulticastWirelessMetadata = {
    type = "structure",
    id = "MulticastWirelessMetadata",
    members = {
        LoRaWAN = M.LoRaWANMulticastMetadata,
    },
}

M.SendDataToMulticastGroupInput = {
    type = "structure",
    id = "SendDataToMulticastGroupInput",
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
    id = "SendDataToMulticastGroupOutput",
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
    id = "SidewalkSendDataToDevice",
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
    id = "WirelessMetadata",
    members = {
        LoRaWAN = M.LoRaWANSendDataToDevice,
        Sidewalk = M.SidewalkSendDataToDevice,
    },
}

M.SendDataToWirelessDeviceInput = {
    type = "structure",
    id = "SendDataToWirelessDeviceInput",
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
    id = "SendDataToWirelessDeviceOutput",
    members = {
        MessageId = {
            type = "string",
        },
    },
}

M.StartBulkAssociateWirelessDeviceWithMulticastGroupInput = {
    type = "structure",
    id = "StartBulkAssociateWirelessDeviceWithMulticastGroupInput",
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
    id = "StartBulkAssociateWirelessDeviceWithMulticastGroupOutput",
}

M.StartBulkDisassociateWirelessDeviceFromMulticastGroupInput = {
    type = "structure",
    id = "StartBulkDisassociateWirelessDeviceFromMulticastGroupInput",
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
    id = "StartBulkDisassociateWirelessDeviceFromMulticastGroupOutput",
}

M.LoRaWANStartFuotaTask = {
    type = "structure",
    id = "LoRaWANStartFuotaTask",
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
    id = "StartFuotaTaskInput",
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
    id = "StartFuotaTaskOutput",
}

M.StartMulticastGroupSessionInput = {
    type = "structure",
    id = "StartMulticastGroupSessionInput",
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
    id = "StartMulticastGroupSessionOutput",
}

M.SidewalkSingleStartImportInfo = {
    type = "structure",
    id = "SidewalkSingleStartImportInfo",
    members = {
        SidewalkManufacturingSn = {
            type = "string",
        },
        Positioning = M.SidewalkPositioning,
    },
}

M.StartSingleWirelessDeviceImportTaskInput = {
    type = "structure",
    id = "StartSingleWirelessDeviceImportTaskInput",
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
    id = "StartSingleWirelessDeviceImportTaskOutput",
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
    id = "SidewalkStartImportInfo",
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
    id = "StartWirelessDeviceImportTaskInput",
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
    id = "StartWirelessDeviceImportTaskOutput",
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
    id = "TagResourceInput",
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
    id = "TagResourceOutput",
}

M.TooManyTagsException = {
    type = "structure",
    id = "TooManyTagsException",
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
    id = "TestWirelessDeviceInput",
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
    id = "TestWirelessDeviceOutput",
    members = {
        Result = {
            type = "string",
        },
    },
}

M.UntagResourceInput = {
    type = "structure",
    id = "UntagResourceInput",
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
    id = "UntagResourceOutput",
}

M.UpdateDestinationInput = {
    type = "structure",
    id = "UpdateDestinationInput",
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
    id = "UpdateDestinationOutput",
}

M.UpdateEventConfigurationByResourceTypesInput = {
    type = "structure",
    id = "UpdateEventConfigurationByResourceTypesInput",
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
    id = "UpdateEventConfigurationByResourceTypesOutput",
}

M.UpdateFuotaTaskInput = {
    type = "structure",
    id = "UpdateFuotaTaskInput",
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
    id = "UpdateFuotaTaskOutput",
}

M.UpdateLogLevelsByResourceTypesInput = {
    type = "structure",
    id = "UpdateLogLevelsByResourceTypesInput",
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
    id = "UpdateLogLevelsByResourceTypesOutput",
}

M.UpdateMetricConfigurationInput = {
    type = "structure",
    id = "UpdateMetricConfigurationInput",
    members = {
        SummaryMetric = M.SummaryMetricConfiguration,
    },
}

M.UpdateMetricConfigurationOutput = {
    type = "structure",
    id = "UpdateMetricConfigurationOutput",
}

M.UpdateMulticastGroupInput = {
    type = "structure",
    id = "UpdateMulticastGroupInput",
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
    id = "UpdateMulticastGroupOutput",
}

M.UpdateNetworkAnalyzerConfigurationInput = {
    type = "structure",
    id = "UpdateNetworkAnalyzerConfigurationInput",
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
    id = "UpdateNetworkAnalyzerConfigurationOutput",
}

M.SidewalkUpdateAccount = {
    type = "structure",
    id = "SidewalkUpdateAccount",
    members = {
        AppServerPrivateKey = {
            type = "string",
        },
    },
}

M.UpdatePartnerAccountInput = {
    type = "structure",
    id = "UpdatePartnerAccountInput",
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
    id = "UpdatePartnerAccountOutput",
}

M.UpdatePositionInput = {
    type = "structure",
    id = "UpdatePositionInput",
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
    id = "UpdatePositionOutput",
}

M.UpdateResourceEventConfigurationInput = {
    type = "structure",
    id = "UpdateResourceEventConfigurationInput",
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
    id = "UpdateResourceEventConfigurationOutput",
}

M.UpdateResourcePositionInput = {
    type = "structure",
    id = "UpdateResourcePositionInput",
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
    id = "UpdateResourcePositionOutput",
}

M.UpdateAbpV1_0_x = {
    type = "structure",
    id = "UpdateAbpV1_0_x",
    members = {
        FCntStart = {
            type = "integer",
        },
    },
}

M.UpdateAbpV1_1 = {
    type = "structure",
    id = "UpdateAbpV1_1",
    members = {
        FCntStart = {
            type = "integer",
        },
    },
}

M.UpdateFPorts = {
    type = "structure",
    id = "UpdateFPorts",
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
    id = "LoRaWANUpdateDevice",
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
    id = "SidewalkUpdateWirelessDevice",
    members = {
        Positioning = M.SidewalkPositioning,
    },
}

M.UpdateWirelessDeviceInput = {
    type = "structure",
    id = "UpdateWirelessDeviceInput",
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
    id = "UpdateWirelessDeviceOutput",
}

M.SidewalkUpdateImportInfo = {
    type = "structure",
    id = "SidewalkUpdateImportInfo",
    members = {
        DeviceCreationFile = {
            type = "string",
        },
    },
}

M.UpdateWirelessDeviceImportTaskInput = {
    type = "structure",
    id = "UpdateWirelessDeviceImportTaskInput",
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
    id = "UpdateWirelessDeviceImportTaskOutput",
}

M.UpdateWirelessGatewayInput = {
    type = "structure",
    id = "UpdateWirelessGatewayInput",
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
    id = "UpdateWirelessGatewayOutput",
}

return M
