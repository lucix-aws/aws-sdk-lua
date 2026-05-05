local id = require("smithy.shape_id")
local schema = require("smithy.schema")
local prelude = require("smithy.prelude")
local traits = require("smithy.traits")

local _N = "com.amazonaws.iotwireless"

local M = {}

M.SessionKeysAbpV1_0_x = schema.new({
    id = id.from(_N, "SessionKeysAbpV1_0_x"),
    type = "structure",
    members = {
        NwkSKey = schema.new({
            id = id.from(_N, "SessionKeysAbpV1_0_x", "NwkSKey"),
            type = "string",
            name = "NwkSKey",
            target_id = prelude.String.id,
        }),
        AppSKey = schema.new({
            id = id.from(_N, "SessionKeysAbpV1_0_x", "AppSKey"),
            type = "string",
            name = "AppSKey",
            target_id = prelude.String.id,
        }),
    },
})

M.AbpV1_0_x = schema.new({
    id = id.from(_N, "AbpV1_0_x"),
    type = "structure",
    members = {
        DevAddr = schema.new({
            id = id.from(_N, "AbpV1_0_x", "DevAddr"),
            type = "string",
            name = "DevAddr",
            target_id = prelude.String.id,
        }),
        SessionKeys = schema.new({
            id = id.from(_N, "AbpV1_0_x", "SessionKeys"),
            type = "structure",
            name = "SessionKeys",
            target_id = id.from(_N, "SessionKeysAbpV1_0_x"),
            target = M.SessionKeysAbpV1_0_x,
        }),
        FCntStart = schema.new({
            id = id.from(_N, "AbpV1_0_x", "FCntStart"),
            type = "integer",
            name = "FCntStart",
            target_id = prelude.Integer.id,
        }),
    },
})

M.SessionKeysAbpV1_1 = schema.new({
    id = id.from(_N, "SessionKeysAbpV1_1"),
    type = "structure",
    members = {
        FNwkSIntKey = schema.new({
            id = id.from(_N, "SessionKeysAbpV1_1", "FNwkSIntKey"),
            type = "string",
            name = "FNwkSIntKey",
            target_id = prelude.String.id,
        }),
        SNwkSIntKey = schema.new({
            id = id.from(_N, "SessionKeysAbpV1_1", "SNwkSIntKey"),
            type = "string",
            name = "SNwkSIntKey",
            target_id = prelude.String.id,
        }),
        NwkSEncKey = schema.new({
            id = id.from(_N, "SessionKeysAbpV1_1", "NwkSEncKey"),
            type = "string",
            name = "NwkSEncKey",
            target_id = prelude.String.id,
        }),
        AppSKey = schema.new({
            id = id.from(_N, "SessionKeysAbpV1_1", "AppSKey"),
            type = "string",
            name = "AppSKey",
            target_id = prelude.String.id,
        }),
    },
})

M.AbpV1_1 = schema.new({
    id = id.from(_N, "AbpV1_1"),
    type = "structure",
    members = {
        DevAddr = schema.new({
            id = id.from(_N, "AbpV1_1", "DevAddr"),
            type = "string",
            name = "DevAddr",
            target_id = prelude.String.id,
        }),
        SessionKeys = schema.new({
            id = id.from(_N, "AbpV1_1", "SessionKeys"),
            type = "structure",
            name = "SessionKeys",
            target_id = id.from(_N, "SessionKeysAbpV1_1"),
            target = M.SessionKeysAbpV1_1,
        }),
        FCntStart = schema.new({
            id = id.from(_N, "AbpV1_1", "FCntStart"),
            type = "integer",
            name = "FCntStart",
            target_id = prelude.Integer.id,
        }),
    },
})

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

M.Accuracy = schema.new({
    id = id.from(_N, "Accuracy"),
    type = "structure",
    members = {
        HorizontalAccuracy = schema.new({
            id = id.from(_N, "Accuracy", "HorizontalAccuracy"),
            type = "float",
            name = "HorizontalAccuracy",
            target_id = prelude.Float.id,
        }),
        VerticalAccuracy = schema.new({
            id = id.from(_N, "Accuracy", "VerticalAccuracy"),
            type = "float",
            name = "VerticalAccuracy",
            target_id = prelude.Float.id,
        }),
    },
})

M.WiFiCellular = schema.new({
    id = id.from(_N, "WiFiCellular"),
    type = "structure",
    members = {
        ConfidencePercent = schema.new({
            id = id.from(_N, "WiFiCellular", "ConfidencePercent"),
            type = "integer",
            name = "ConfidencePercent",
            target_id = prelude.Integer.id,
            traits = {
                [traits.DEFAULT] = { value = 68 },
            },
        }),
    },
})

M.AdvancedConfiguration = schema.new({
    id = id.from(_N, "AdvancedConfiguration"),
    type = "structure",
    members = {
        WiFiCellular = schema.new({
            id = id.from(_N, "AdvancedConfiguration", "WiFiCellular"),
            type = "structure",
            name = "WiFiCellular",
            target_id = id.from(_N, "WiFiCellular"),
            target = M.WiFiCellular,
        }),
    },
})

M.ApplicationConfig = schema.new({
    id = id.from(_N, "ApplicationConfig"),
    type = "structure",
    members = {
        FPort = schema.new({
            id = id.from(_N, "ApplicationConfig", "FPort"),
            type = "integer",
            name = "FPort",
            target_id = prelude.Integer.id,
        }),
        Type = schema.new({
            id = id.from(_N, "ApplicationConfig", "Type"),
            type = "string",
            name = "Type",
            target_id = prelude.String.id,
        }),
        DestinationName = schema.new({
            id = id.from(_N, "ApplicationConfig", "DestinationName"),
            type = "string",
            name = "DestinationName",
            target_id = prelude.String.id,
        }),
    },
})

M.SidewalkAccountInfo = schema.new({
    id = id.from(_N, "SidewalkAccountInfo"),
    type = "structure",
    members = {
        AmazonId = schema.new({
            id = id.from(_N, "SidewalkAccountInfo", "AmazonId"),
            type = "string",
            name = "AmazonId",
            target_id = prelude.String.id,
        }),
        AppServerPrivateKey = schema.new({
            id = id.from(_N, "SidewalkAccountInfo", "AppServerPrivateKey"),
            type = "string",
            name = "AppServerPrivateKey",
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

M.AssociateAwsAccountWithPartnerAccountInput = schema.new({
    id = id.from(_N, "AssociateAwsAccountWithPartnerAccountInput"),
    type = "structure",
    members = {
        Sidewalk = schema.new({
            id = id.from(_N, "AssociateAwsAccountWithPartnerAccountInput", "Sidewalk"),
            type = "structure",
            name = "Sidewalk",
            target_id = id.from(_N, "SidewalkAccountInfo"),
            target = M.SidewalkAccountInfo,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        ClientRequestToken = schema.new({
            id = id.from(_N, "AssociateAwsAccountWithPartnerAccountInput", "ClientRequestToken"),
            type = "string",
            name = "ClientRequestToken",
            target_id = prelude.String.id,
            traits = {
                [traits.IDEMPOTENCY_TOKEN] = {},
            },
        }),
        Tags = schema.new({
            id = id.from(_N, "AssociateAwsAccountWithPartnerAccountInput", "Tags"),
            type = "list",
            name = "Tags",
            target_id = prelude.Document.id,
            list_member = M.Tag,
        }),
    },
})

M.AssociateAwsAccountWithPartnerAccountOutput = schema.new({
    id = id.from(_N, "AssociateAwsAccountWithPartnerAccountOutput"),
    type = "structure",
    members = {
        Sidewalk = schema.new({
            id = id.from(_N, "AssociateAwsAccountWithPartnerAccountOutput", "Sidewalk"),
            type = "structure",
            name = "Sidewalk",
            target_id = id.from(_N, "SidewalkAccountInfo"),
            target = M.SidewalkAccountInfo,
        }),
        Arn = schema.new({
            id = id.from(_N, "AssociateAwsAccountWithPartnerAccountOutput", "Arn"),
            type = "string",
            name = "Arn",
            target_id = prelude.String.id,
        }),
    },
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
        ResourceId = schema.new({
            id = id.from(_N, "ConflictException", "ResourceId"),
            type = "string",
            name = "ResourceId",
            target_id = prelude.String.id,
        }),
        ResourceType = schema.new({
            id = id.from(_N, "ConflictException", "ResourceType"),
            type = "string",
            name = "ResourceType",
            target_id = prelude.String.id,
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
        ResourceId = schema.new({
            id = id.from(_N, "ResourceNotFoundException", "ResourceId"),
            type = "string",
            name = "ResourceId",
            target_id = prelude.String.id,
        }),
        ResourceType = schema.new({
            id = id.from(_N, "ResourceNotFoundException", "ResourceType"),
            type = "string",
            name = "ResourceType",
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

M.ValidationException = schema.new({
    id = id.from(_N, "ValidationException"),
    type = "structure",
    traits = {
        [traits.ERROR] = { value = "client" },
    },
    members = {
        Message = schema.new({
            id = id.from(_N, "ValidationException", "Message"),
            type = "string",
            name = "Message",
            target_id = prelude.String.id,
        }),
    },
})

M.AssociateMulticastGroupWithFuotaTaskInput = schema.new({
    id = id.from(_N, "AssociateMulticastGroupWithFuotaTaskInput"),
    type = "structure",
    members = {
        Id = schema.new({
            id = id.from(_N, "AssociateMulticastGroupWithFuotaTaskInput", "Id"),
            type = "string",
            name = "Id",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
        MulticastGroupId = schema.new({
            id = id.from(_N, "AssociateMulticastGroupWithFuotaTaskInput", "MulticastGroupId"),
            type = "string",
            name = "MulticastGroupId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.AssociateMulticastGroupWithFuotaTaskOutput = schema.new({
    id = id.from(_N, "AssociateMulticastGroupWithFuotaTaskOutput"),
    type = "structure",
})

M.AssociateWirelessDeviceWithFuotaTaskInput = schema.new({
    id = id.from(_N, "AssociateWirelessDeviceWithFuotaTaskInput"),
    type = "structure",
    members = {
        Id = schema.new({
            id = id.from(_N, "AssociateWirelessDeviceWithFuotaTaskInput", "Id"),
            type = "string",
            name = "Id",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
        WirelessDeviceId = schema.new({
            id = id.from(_N, "AssociateWirelessDeviceWithFuotaTaskInput", "WirelessDeviceId"),
            type = "string",
            name = "WirelessDeviceId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.AssociateWirelessDeviceWithFuotaTaskOutput = schema.new({
    id = id.from(_N, "AssociateWirelessDeviceWithFuotaTaskOutput"),
    type = "structure",
})

M.AssociateWirelessDeviceWithMulticastGroupInput = schema.new({
    id = id.from(_N, "AssociateWirelessDeviceWithMulticastGroupInput"),
    type = "structure",
    members = {
        Id = schema.new({
            id = id.from(_N, "AssociateWirelessDeviceWithMulticastGroupInput", "Id"),
            type = "string",
            name = "Id",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
        WirelessDeviceId = schema.new({
            id = id.from(_N, "AssociateWirelessDeviceWithMulticastGroupInput", "WirelessDeviceId"),
            type = "string",
            name = "WirelessDeviceId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.AssociateWirelessDeviceWithMulticastGroupOutput = schema.new({
    id = id.from(_N, "AssociateWirelessDeviceWithMulticastGroupOutput"),
    type = "structure",
})

M.AssociateWirelessDeviceWithThingInput = schema.new({
    id = id.from(_N, "AssociateWirelessDeviceWithThingInput"),
    type = "structure",
    members = {
        Id = schema.new({
            id = id.from(_N, "AssociateWirelessDeviceWithThingInput", "Id"),
            type = "string",
            name = "Id",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
        ThingArn = schema.new({
            id = id.from(_N, "AssociateWirelessDeviceWithThingInput", "ThingArn"),
            type = "string",
            name = "ThingArn",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.AssociateWirelessDeviceWithThingOutput = schema.new({
    id = id.from(_N, "AssociateWirelessDeviceWithThingOutput"),
    type = "structure",
})

M.AssociateWirelessGatewayWithCertificateInput = schema.new({
    id = id.from(_N, "AssociateWirelessGatewayWithCertificateInput"),
    type = "structure",
    members = {
        Id = schema.new({
            id = id.from(_N, "AssociateWirelessGatewayWithCertificateInput", "Id"),
            type = "string",
            name = "Id",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
        IotCertificateId = schema.new({
            id = id.from(_N, "AssociateWirelessGatewayWithCertificateInput", "IotCertificateId"),
            type = "string",
            name = "IotCertificateId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.AssociateWirelessGatewayWithCertificateOutput = schema.new({
    id = id.from(_N, "AssociateWirelessGatewayWithCertificateOutput"),
    type = "structure",
    members = {
        IotCertificateId = schema.new({
            id = id.from(_N, "AssociateWirelessGatewayWithCertificateOutput", "IotCertificateId"),
            type = "string",
            name = "IotCertificateId",
            target_id = prelude.String.id,
        }),
    },
})

M.AssociateWirelessGatewayWithThingInput = schema.new({
    id = id.from(_N, "AssociateWirelessGatewayWithThingInput"),
    type = "structure",
    members = {
        Id = schema.new({
            id = id.from(_N, "AssociateWirelessGatewayWithThingInput", "Id"),
            type = "string",
            name = "Id",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
        ThingArn = schema.new({
            id = id.from(_N, "AssociateWirelessGatewayWithThingInput", "ThingArn"),
            type = "string",
            name = "ThingArn",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.AssociateWirelessGatewayWithThingOutput = schema.new({
    id = id.from(_N, "AssociateWirelessGatewayWithThingOutput"),
    type = "structure",
})

M.Beaconing = schema.new({
    id = id.from(_N, "Beaconing"),
    type = "structure",
    members = {
        DataRate = schema.new({
            id = id.from(_N, "Beaconing", "DataRate"),
            type = "integer",
            name = "DataRate",
            target_id = prelude.Integer.id,
        }),
        Frequencies = schema.new({
            id = id.from(_N, "Beaconing", "Frequencies"),
            type = "list",
            name = "Frequencies",
            target_id = prelude.Document.id,
            list_member = prelude.Integer,
        }),
    },
})

M.CancelMulticastGroupSessionInput = schema.new({
    id = id.from(_N, "CancelMulticastGroupSessionInput"),
    type = "structure",
    members = {
        Id = schema.new({
            id = id.from(_N, "CancelMulticastGroupSessionInput", "Id"),
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

M.CancelMulticastGroupSessionOutput = schema.new({
    id = id.from(_N, "CancelMulticastGroupSessionOutput"),
    type = "structure",
})

M.CdmaLocalId = schema.new({
    id = id.from(_N, "CdmaLocalId"),
    type = "structure",
    members = {
        PnOffset = schema.new({
            id = id.from(_N, "CdmaLocalId", "PnOffset"),
            type = "integer",
            name = "PnOffset",
            target_id = prelude.Integer.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        CdmaChannel = schema.new({
            id = id.from(_N, "CdmaLocalId", "CdmaChannel"),
            type = "integer",
            name = "CdmaChannel",
            target_id = prelude.Integer.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.CdmaNmrObj = schema.new({
    id = id.from(_N, "CdmaNmrObj"),
    type = "structure",
    members = {
        PnOffset = schema.new({
            id = id.from(_N, "CdmaNmrObj", "PnOffset"),
            type = "integer",
            name = "PnOffset",
            target_id = prelude.Integer.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        CdmaChannel = schema.new({
            id = id.from(_N, "CdmaNmrObj", "CdmaChannel"),
            type = "integer",
            name = "CdmaChannel",
            target_id = prelude.Integer.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        PilotPower = schema.new({
            id = id.from(_N, "CdmaNmrObj", "PilotPower"),
            type = "integer",
            name = "PilotPower",
            target_id = prelude.Integer.id,
        }),
        BaseStationId = schema.new({
            id = id.from(_N, "CdmaNmrObj", "BaseStationId"),
            type = "integer",
            name = "BaseStationId",
            target_id = prelude.Integer.id,
        }),
    },
})

M.CdmaObj = schema.new({
    id = id.from(_N, "CdmaObj"),
    type = "structure",
    members = {
        SystemId = schema.new({
            id = id.from(_N, "CdmaObj", "SystemId"),
            type = "integer",
            name = "SystemId",
            target_id = prelude.Integer.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        NetworkId = schema.new({
            id = id.from(_N, "CdmaObj", "NetworkId"),
            type = "integer",
            name = "NetworkId",
            target_id = prelude.Integer.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        BaseStationId = schema.new({
            id = id.from(_N, "CdmaObj", "BaseStationId"),
            type = "integer",
            name = "BaseStationId",
            target_id = prelude.Integer.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        RegistrationZone = schema.new({
            id = id.from(_N, "CdmaObj", "RegistrationZone"),
            type = "integer",
            name = "RegistrationZone",
            target_id = prelude.Integer.id,
        }),
        CdmaLocalId = schema.new({
            id = id.from(_N, "CdmaObj", "CdmaLocalId"),
            type = "structure",
            name = "CdmaLocalId",
            target_id = id.from(_N, "CdmaLocalId"),
            target = M.CdmaLocalId,
        }),
        PilotPower = schema.new({
            id = id.from(_N, "CdmaObj", "PilotPower"),
            type = "integer",
            name = "PilotPower",
            target_id = prelude.Integer.id,
        }),
        BaseLat = schema.new({
            id = id.from(_N, "CdmaObj", "BaseLat"),
            type = "float",
            name = "BaseLat",
            target_id = prelude.Float.id,
        }),
        BaseLng = schema.new({
            id = id.from(_N, "CdmaObj", "BaseLng"),
            type = "float",
            name = "BaseLng",
            target_id = prelude.Float.id,
        }),
        CdmaNmr = schema.new({
            id = id.from(_N, "CdmaObj", "CdmaNmr"),
            type = "list",
            name = "CdmaNmr",
            target_id = prelude.Document.id,
            list_member = M.CdmaNmrObj,
        }),
    },
})

M.GsmLocalId = schema.new({
    id = id.from(_N, "GsmLocalId"),
    type = "structure",
    members = {
        Bsic = schema.new({
            id = id.from(_N, "GsmLocalId", "Bsic"),
            type = "integer",
            name = "Bsic",
            target_id = prelude.Integer.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        Bcch = schema.new({
            id = id.from(_N, "GsmLocalId", "Bcch"),
            type = "integer",
            name = "Bcch",
            target_id = prelude.Integer.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.GlobalIdentity = schema.new({
    id = id.from(_N, "GlobalIdentity"),
    type = "structure",
    members = {
        Lac = schema.new({
            id = id.from(_N, "GlobalIdentity", "Lac"),
            type = "integer",
            name = "Lac",
            target_id = prelude.Integer.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        GeranCid = schema.new({
            id = id.from(_N, "GlobalIdentity", "GeranCid"),
            type = "integer",
            name = "GeranCid",
            target_id = prelude.Integer.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.GsmNmrObj = schema.new({
    id = id.from(_N, "GsmNmrObj"),
    type = "structure",
    members = {
        Bsic = schema.new({
            id = id.from(_N, "GsmNmrObj", "Bsic"),
            type = "integer",
            name = "Bsic",
            target_id = prelude.Integer.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        Bcch = schema.new({
            id = id.from(_N, "GsmNmrObj", "Bcch"),
            type = "integer",
            name = "Bcch",
            target_id = prelude.Integer.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        RxLevel = schema.new({
            id = id.from(_N, "GsmNmrObj", "RxLevel"),
            type = "integer",
            name = "RxLevel",
            target_id = prelude.Integer.id,
        }),
        GlobalIdentity = schema.new({
            id = id.from(_N, "GsmNmrObj", "GlobalIdentity"),
            type = "structure",
            name = "GlobalIdentity",
            target_id = id.from(_N, "GlobalIdentity"),
            target = M.GlobalIdentity,
        }),
    },
})

M.GsmObj = schema.new({
    id = id.from(_N, "GsmObj"),
    type = "structure",
    members = {
        Mcc = schema.new({
            id = id.from(_N, "GsmObj", "Mcc"),
            type = "integer",
            name = "Mcc",
            target_id = prelude.Integer.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        Mnc = schema.new({
            id = id.from(_N, "GsmObj", "Mnc"),
            type = "integer",
            name = "Mnc",
            target_id = prelude.Integer.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        Lac = schema.new({
            id = id.from(_N, "GsmObj", "Lac"),
            type = "integer",
            name = "Lac",
            target_id = prelude.Integer.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        GeranCid = schema.new({
            id = id.from(_N, "GsmObj", "GeranCid"),
            type = "integer",
            name = "GeranCid",
            target_id = prelude.Integer.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        GsmLocalId = schema.new({
            id = id.from(_N, "GsmObj", "GsmLocalId"),
            type = "structure",
            name = "GsmLocalId",
            target_id = id.from(_N, "GsmLocalId"),
            target = M.GsmLocalId,
        }),
        GsmTimingAdvance = schema.new({
            id = id.from(_N, "GsmObj", "GsmTimingAdvance"),
            type = "integer",
            name = "GsmTimingAdvance",
            target_id = prelude.Integer.id,
        }),
        RxLevel = schema.new({
            id = id.from(_N, "GsmObj", "RxLevel"),
            type = "integer",
            name = "RxLevel",
            target_id = prelude.Integer.id,
        }),
        GsmNmr = schema.new({
            id = id.from(_N, "GsmObj", "GsmNmr"),
            type = "list",
            name = "GsmNmr",
            target_id = prelude.Document.id,
            list_member = M.GsmNmrObj,
        }),
    },
})

M.LteLocalId = schema.new({
    id = id.from(_N, "LteLocalId"),
    type = "structure",
    members = {
        Pci = schema.new({
            id = id.from(_N, "LteLocalId", "Pci"),
            type = "integer",
            name = "Pci",
            target_id = prelude.Integer.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        Earfcn = schema.new({
            id = id.from(_N, "LteLocalId", "Earfcn"),
            type = "integer",
            name = "Earfcn",
            target_id = prelude.Integer.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.LteNmrObj = schema.new({
    id = id.from(_N, "LteNmrObj"),
    type = "structure",
    members = {
        Pci = schema.new({
            id = id.from(_N, "LteNmrObj", "Pci"),
            type = "integer",
            name = "Pci",
            target_id = prelude.Integer.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        Earfcn = schema.new({
            id = id.from(_N, "LteNmrObj", "Earfcn"),
            type = "integer",
            name = "Earfcn",
            target_id = prelude.Integer.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        EutranCid = schema.new({
            id = id.from(_N, "LteNmrObj", "EutranCid"),
            type = "integer",
            name = "EutranCid",
            target_id = prelude.Integer.id,
            traits = {
                [traits.DEFAULT] = { value = 0 },
            },
        }),
        Rsrp = schema.new({
            id = id.from(_N, "LteNmrObj", "Rsrp"),
            type = "integer",
            name = "Rsrp",
            target_id = prelude.Integer.id,
        }),
        Rsrq = schema.new({
            id = id.from(_N, "LteNmrObj", "Rsrq"),
            type = "float",
            name = "Rsrq",
            target_id = prelude.Float.id,
        }),
    },
})

M.LteObj = schema.new({
    id = id.from(_N, "LteObj"),
    type = "structure",
    members = {
        Mcc = schema.new({
            id = id.from(_N, "LteObj", "Mcc"),
            type = "integer",
            name = "Mcc",
            target_id = prelude.Integer.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        Mnc = schema.new({
            id = id.from(_N, "LteObj", "Mnc"),
            type = "integer",
            name = "Mnc",
            target_id = prelude.Integer.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        EutranCid = schema.new({
            id = id.from(_N, "LteObj", "EutranCid"),
            type = "integer",
            name = "EutranCid",
            target_id = prelude.Integer.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        Tac = schema.new({
            id = id.from(_N, "LteObj", "Tac"),
            type = "integer",
            name = "Tac",
            target_id = prelude.Integer.id,
        }),
        LteLocalId = schema.new({
            id = id.from(_N, "LteObj", "LteLocalId"),
            type = "structure",
            name = "LteLocalId",
            target_id = id.from(_N, "LteLocalId"),
            target = M.LteLocalId,
        }),
        LteTimingAdvance = schema.new({
            id = id.from(_N, "LteObj", "LteTimingAdvance"),
            type = "integer",
            name = "LteTimingAdvance",
            target_id = prelude.Integer.id,
        }),
        Rsrp = schema.new({
            id = id.from(_N, "LteObj", "Rsrp"),
            type = "integer",
            name = "Rsrp",
            target_id = prelude.Integer.id,
        }),
        Rsrq = schema.new({
            id = id.from(_N, "LteObj", "Rsrq"),
            type = "float",
            name = "Rsrq",
            target_id = prelude.Float.id,
        }),
        NrCapable = schema.new({
            id = id.from(_N, "LteObj", "NrCapable"),
            type = "boolean",
            name = "NrCapable",
            target_id = prelude.Boolean.id,
            traits = {
                [traits.DEFAULT] = { value = false },
            },
        }),
        LteNmr = schema.new({
            id = id.from(_N, "LteObj", "LteNmr"),
            type = "list",
            name = "LteNmr",
            target_id = prelude.Document.id,
            list_member = M.LteNmrObj,
        }),
    },
})

M.TdscdmaLocalId = schema.new({
    id = id.from(_N, "TdscdmaLocalId"),
    type = "structure",
    members = {
        Uarfcn = schema.new({
            id = id.from(_N, "TdscdmaLocalId", "Uarfcn"),
            type = "integer",
            name = "Uarfcn",
            target_id = prelude.Integer.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        CellParams = schema.new({
            id = id.from(_N, "TdscdmaLocalId", "CellParams"),
            type = "integer",
            name = "CellParams",
            target_id = prelude.Integer.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.TdscdmaNmrObj = schema.new({
    id = id.from(_N, "TdscdmaNmrObj"),
    type = "structure",
    members = {
        Uarfcn = schema.new({
            id = id.from(_N, "TdscdmaNmrObj", "Uarfcn"),
            type = "integer",
            name = "Uarfcn",
            target_id = prelude.Integer.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        CellParams = schema.new({
            id = id.from(_N, "TdscdmaNmrObj", "CellParams"),
            type = "integer",
            name = "CellParams",
            target_id = prelude.Integer.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        UtranCid = schema.new({
            id = id.from(_N, "TdscdmaNmrObj", "UtranCid"),
            type = "integer",
            name = "UtranCid",
            target_id = prelude.Integer.id,
        }),
        Rscp = schema.new({
            id = id.from(_N, "TdscdmaNmrObj", "Rscp"),
            type = "integer",
            name = "Rscp",
            target_id = prelude.Integer.id,
        }),
        PathLoss = schema.new({
            id = id.from(_N, "TdscdmaNmrObj", "PathLoss"),
            type = "integer",
            name = "PathLoss",
            target_id = prelude.Integer.id,
        }),
    },
})

M.TdscdmaObj = schema.new({
    id = id.from(_N, "TdscdmaObj"),
    type = "structure",
    members = {
        Mcc = schema.new({
            id = id.from(_N, "TdscdmaObj", "Mcc"),
            type = "integer",
            name = "Mcc",
            target_id = prelude.Integer.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        Mnc = schema.new({
            id = id.from(_N, "TdscdmaObj", "Mnc"),
            type = "integer",
            name = "Mnc",
            target_id = prelude.Integer.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        Lac = schema.new({
            id = id.from(_N, "TdscdmaObj", "Lac"),
            type = "integer",
            name = "Lac",
            target_id = prelude.Integer.id,
        }),
        UtranCid = schema.new({
            id = id.from(_N, "TdscdmaObj", "UtranCid"),
            type = "integer",
            name = "UtranCid",
            target_id = prelude.Integer.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        TdscdmaLocalId = schema.new({
            id = id.from(_N, "TdscdmaObj", "TdscdmaLocalId"),
            type = "structure",
            name = "TdscdmaLocalId",
            target_id = id.from(_N, "TdscdmaLocalId"),
            target = M.TdscdmaLocalId,
        }),
        TdscdmaTimingAdvance = schema.new({
            id = id.from(_N, "TdscdmaObj", "TdscdmaTimingAdvance"),
            type = "integer",
            name = "TdscdmaTimingAdvance",
            target_id = prelude.Integer.id,
        }),
        Rscp = schema.new({
            id = id.from(_N, "TdscdmaObj", "Rscp"),
            type = "integer",
            name = "Rscp",
            target_id = prelude.Integer.id,
        }),
        PathLoss = schema.new({
            id = id.from(_N, "TdscdmaObj", "PathLoss"),
            type = "integer",
            name = "PathLoss",
            target_id = prelude.Integer.id,
        }),
        TdscdmaNmr = schema.new({
            id = id.from(_N, "TdscdmaObj", "TdscdmaNmr"),
            type = "list",
            name = "TdscdmaNmr",
            target_id = prelude.Document.id,
            list_member = M.TdscdmaNmrObj,
        }),
    },
})

M.WcdmaLocalId = schema.new({
    id = id.from(_N, "WcdmaLocalId"),
    type = "structure",
    members = {
        Uarfcndl = schema.new({
            id = id.from(_N, "WcdmaLocalId", "Uarfcndl"),
            type = "integer",
            name = "Uarfcndl",
            target_id = prelude.Integer.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        Psc = schema.new({
            id = id.from(_N, "WcdmaLocalId", "Psc"),
            type = "integer",
            name = "Psc",
            target_id = prelude.Integer.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.WcdmaNmrObj = schema.new({
    id = id.from(_N, "WcdmaNmrObj"),
    type = "structure",
    members = {
        Uarfcndl = schema.new({
            id = id.from(_N, "WcdmaNmrObj", "Uarfcndl"),
            type = "integer",
            name = "Uarfcndl",
            target_id = prelude.Integer.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        Psc = schema.new({
            id = id.from(_N, "WcdmaNmrObj", "Psc"),
            type = "integer",
            name = "Psc",
            target_id = prelude.Integer.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        UtranCid = schema.new({
            id = id.from(_N, "WcdmaNmrObj", "UtranCid"),
            type = "integer",
            name = "UtranCid",
            target_id = prelude.Integer.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        Rscp = schema.new({
            id = id.from(_N, "WcdmaNmrObj", "Rscp"),
            type = "integer",
            name = "Rscp",
            target_id = prelude.Integer.id,
        }),
        PathLoss = schema.new({
            id = id.from(_N, "WcdmaNmrObj", "PathLoss"),
            type = "integer",
            name = "PathLoss",
            target_id = prelude.Integer.id,
        }),
    },
})

M.WcdmaObj = schema.new({
    id = id.from(_N, "WcdmaObj"),
    type = "structure",
    members = {
        Mcc = schema.new({
            id = id.from(_N, "WcdmaObj", "Mcc"),
            type = "integer",
            name = "Mcc",
            target_id = prelude.Integer.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        Mnc = schema.new({
            id = id.from(_N, "WcdmaObj", "Mnc"),
            type = "integer",
            name = "Mnc",
            target_id = prelude.Integer.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        Lac = schema.new({
            id = id.from(_N, "WcdmaObj", "Lac"),
            type = "integer",
            name = "Lac",
            target_id = prelude.Integer.id,
        }),
        UtranCid = schema.new({
            id = id.from(_N, "WcdmaObj", "UtranCid"),
            type = "integer",
            name = "UtranCid",
            target_id = prelude.Integer.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        WcdmaLocalId = schema.new({
            id = id.from(_N, "WcdmaObj", "WcdmaLocalId"),
            type = "structure",
            name = "WcdmaLocalId",
            target_id = id.from(_N, "WcdmaLocalId"),
            target = M.WcdmaLocalId,
        }),
        Rscp = schema.new({
            id = id.from(_N, "WcdmaObj", "Rscp"),
            type = "integer",
            name = "Rscp",
            target_id = prelude.Integer.id,
        }),
        PathLoss = schema.new({
            id = id.from(_N, "WcdmaObj", "PathLoss"),
            type = "integer",
            name = "PathLoss",
            target_id = prelude.Integer.id,
        }),
        WcdmaNmr = schema.new({
            id = id.from(_N, "WcdmaObj", "WcdmaNmr"),
            type = "list",
            name = "WcdmaNmr",
            target_id = prelude.Document.id,
            list_member = M.WcdmaNmrObj,
        }),
    },
})

M.CellTowers = schema.new({
    id = id.from(_N, "CellTowers"),
    type = "structure",
    members = {
        Gsm = schema.new({
            id = id.from(_N, "CellTowers", "Gsm"),
            type = "list",
            name = "Gsm",
            target_id = prelude.Document.id,
            list_member = M.GsmObj,
        }),
        Wcdma = schema.new({
            id = id.from(_N, "CellTowers", "Wcdma"),
            type = "list",
            name = "Wcdma",
            target_id = prelude.Document.id,
            list_member = M.WcdmaObj,
        }),
        Tdscdma = schema.new({
            id = id.from(_N, "CellTowers", "Tdscdma"),
            type = "list",
            name = "Tdscdma",
            target_id = prelude.Document.id,
            list_member = M.TdscdmaObj,
        }),
        Lte = schema.new({
            id = id.from(_N, "CellTowers", "Lte"),
            type = "list",
            name = "Lte",
            target_id = prelude.Document.id,
            list_member = M.LteObj,
        }),
        Cdma = schema.new({
            id = id.from(_N, "CellTowers", "Cdma"),
            type = "list",
            name = "Cdma",
            target_id = prelude.Document.id,
            list_member = M.CdmaObj,
        }),
    },
})

M.CertificateList = schema.new({
    id = id.from(_N, "CertificateList"),
    type = "structure",
    members = {
        SigningAlg = schema.new({
            id = id.from(_N, "CertificateList", "SigningAlg"),
            type = "string",
            name = "SigningAlg",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        Value = schema.new({
            id = id.from(_N, "CertificateList", "Value"),
            type = "string",
            name = "Value",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.LoRaWANConnectionStatusEventNotificationConfigurations = schema.new({
    id = id.from(_N, "LoRaWANConnectionStatusEventNotificationConfigurations"),
    type = "structure",
    members = {
        GatewayEuiEventTopic = schema.new({
            id = id.from(_N, "LoRaWANConnectionStatusEventNotificationConfigurations", "GatewayEuiEventTopic"),
            type = "string",
            name = "GatewayEuiEventTopic",
            target_id = prelude.String.id,
        }),
    },
})

M.ConnectionStatusEventConfiguration = schema.new({
    id = id.from(_N, "ConnectionStatusEventConfiguration"),
    type = "structure",
    members = {
        LoRaWAN = schema.new({
            id = id.from(_N, "ConnectionStatusEventConfiguration", "LoRaWAN"),
            type = "structure",
            name = "LoRaWAN",
            target_id = id.from(_N, "LoRaWANConnectionStatusEventNotificationConfigurations"),
            target = M.LoRaWANConnectionStatusEventNotificationConfigurations,
        }),
        WirelessGatewayIdEventTopic = schema.new({
            id = id.from(_N, "ConnectionStatusEventConfiguration", "WirelessGatewayIdEventTopic"),
            type = "string",
            name = "WirelessGatewayIdEventTopic",
            target_id = prelude.String.id,
        }),
    },
})

M.LoRaWANConnectionStatusResourceTypeEventConfiguration = schema.new({
    id = id.from(_N, "LoRaWANConnectionStatusResourceTypeEventConfiguration"),
    type = "structure",
    members = {
        WirelessGatewayEventTopic = schema.new({
            id = id.from(_N, "LoRaWANConnectionStatusResourceTypeEventConfiguration", "WirelessGatewayEventTopic"),
            type = "string",
            name = "WirelessGatewayEventTopic",
            target_id = prelude.String.id,
        }),
    },
})

M.ConnectionStatusResourceTypeEventConfiguration = schema.new({
    id = id.from(_N, "ConnectionStatusResourceTypeEventConfiguration"),
    type = "structure",
    members = {
        LoRaWAN = schema.new({
            id = id.from(_N, "ConnectionStatusResourceTypeEventConfiguration", "LoRaWAN"),
            type = "structure",
            name = "LoRaWAN",
            target_id = id.from(_N, "LoRaWANConnectionStatusResourceTypeEventConfiguration"),
            target = M.LoRaWANConnectionStatusResourceTypeEventConfiguration,
        }),
    },
})

M.CreateDestinationInput = schema.new({
    id = id.from(_N, "CreateDestinationInput"),
    type = "structure",
    members = {
        Name = schema.new({
            id = id.from(_N, "CreateDestinationInput", "Name"),
            type = "string",
            name = "Name",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        ExpressionType = schema.new({
            id = id.from(_N, "CreateDestinationInput", "ExpressionType"),
            type = "string",
            name = "ExpressionType",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        Expression = schema.new({
            id = id.from(_N, "CreateDestinationInput", "Expression"),
            type = "string",
            name = "Expression",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        Description = schema.new({
            id = id.from(_N, "CreateDestinationInput", "Description"),
            type = "string",
            name = "Description",
            target_id = prelude.String.id,
        }),
        RoleArn = schema.new({
            id = id.from(_N, "CreateDestinationInput", "RoleArn"),
            type = "string",
            name = "RoleArn",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        Tags = schema.new({
            id = id.from(_N, "CreateDestinationInput", "Tags"),
            type = "list",
            name = "Tags",
            target_id = prelude.Document.id,
            list_member = M.Tag,
        }),
        ClientRequestToken = schema.new({
            id = id.from(_N, "CreateDestinationInput", "ClientRequestToken"),
            type = "string",
            name = "ClientRequestToken",
            target_id = prelude.String.id,
            traits = {
                [traits.IDEMPOTENCY_TOKEN] = {},
            },
        }),
    },
})

M.CreateDestinationOutput = schema.new({
    id = id.from(_N, "CreateDestinationOutput"),
    type = "structure",
    members = {
        Arn = schema.new({
            id = id.from(_N, "CreateDestinationOutput", "Arn"),
            type = "string",
            name = "Arn",
            target_id = prelude.String.id,
        }),
        Name = schema.new({
            id = id.from(_N, "CreateDestinationOutput", "Name"),
            type = "string",
            name = "Name",
            target_id = prelude.String.id,
        }),
    },
})

M.LoRaWANDeviceProfile = schema.new({
    id = id.from(_N, "LoRaWANDeviceProfile"),
    type = "structure",
    members = {
        SupportsClassB = schema.new({
            id = id.from(_N, "LoRaWANDeviceProfile", "SupportsClassB"),
            type = "boolean",
            name = "SupportsClassB",
            target_id = prelude.Boolean.id,
            traits = {
                [traits.DEFAULT] = { value = false },
            },
        }),
        ClassBTimeout = schema.new({
            id = id.from(_N, "LoRaWANDeviceProfile", "ClassBTimeout"),
            type = "integer",
            name = "ClassBTimeout",
            target_id = prelude.Integer.id,
        }),
        PingSlotPeriod = schema.new({
            id = id.from(_N, "LoRaWANDeviceProfile", "PingSlotPeriod"),
            type = "integer",
            name = "PingSlotPeriod",
            target_id = prelude.Integer.id,
        }),
        PingSlotDr = schema.new({
            id = id.from(_N, "LoRaWANDeviceProfile", "PingSlotDr"),
            type = "integer",
            name = "PingSlotDr",
            target_id = prelude.Integer.id,
        }),
        PingSlotFreq = schema.new({
            id = id.from(_N, "LoRaWANDeviceProfile", "PingSlotFreq"),
            type = "integer",
            name = "PingSlotFreq",
            target_id = prelude.Integer.id,
        }),
        SupportsClassC = schema.new({
            id = id.from(_N, "LoRaWANDeviceProfile", "SupportsClassC"),
            type = "boolean",
            name = "SupportsClassC",
            target_id = prelude.Boolean.id,
            traits = {
                [traits.DEFAULT] = { value = false },
            },
        }),
        ClassCTimeout = schema.new({
            id = id.from(_N, "LoRaWANDeviceProfile", "ClassCTimeout"),
            type = "integer",
            name = "ClassCTimeout",
            target_id = prelude.Integer.id,
        }),
        MacVersion = schema.new({
            id = id.from(_N, "LoRaWANDeviceProfile", "MacVersion"),
            type = "string",
            name = "MacVersion",
            target_id = prelude.String.id,
        }),
        RegParamsRevision = schema.new({
            id = id.from(_N, "LoRaWANDeviceProfile", "RegParamsRevision"),
            type = "string",
            name = "RegParamsRevision",
            target_id = prelude.String.id,
        }),
        RxDelay1 = schema.new({
            id = id.from(_N, "LoRaWANDeviceProfile", "RxDelay1"),
            type = "integer",
            name = "RxDelay1",
            target_id = prelude.Integer.id,
        }),
        RxDrOffset1 = schema.new({
            id = id.from(_N, "LoRaWANDeviceProfile", "RxDrOffset1"),
            type = "integer",
            name = "RxDrOffset1",
            target_id = prelude.Integer.id,
        }),
        RxDataRate2 = schema.new({
            id = id.from(_N, "LoRaWANDeviceProfile", "RxDataRate2"),
            type = "integer",
            name = "RxDataRate2",
            target_id = prelude.Integer.id,
        }),
        RxFreq2 = schema.new({
            id = id.from(_N, "LoRaWANDeviceProfile", "RxFreq2"),
            type = "integer",
            name = "RxFreq2",
            target_id = prelude.Integer.id,
        }),
        FactoryPresetFreqsList = schema.new({
            id = id.from(_N, "LoRaWANDeviceProfile", "FactoryPresetFreqsList"),
            type = "list",
            name = "FactoryPresetFreqsList",
            target_id = prelude.Document.id,
            list_member = prelude.Integer,
        }),
        MaxEirp = schema.new({
            id = id.from(_N, "LoRaWANDeviceProfile", "MaxEirp"),
            type = "integer",
            name = "MaxEirp",
            target_id = prelude.Integer.id,
        }),
        MaxDutyCycle = schema.new({
            id = id.from(_N, "LoRaWANDeviceProfile", "MaxDutyCycle"),
            type = "integer",
            name = "MaxDutyCycle",
            target_id = prelude.Integer.id,
        }),
        RfRegion = schema.new({
            id = id.from(_N, "LoRaWANDeviceProfile", "RfRegion"),
            type = "string",
            name = "RfRegion",
            target_id = prelude.String.id,
        }),
        SupportsJoin = schema.new({
            id = id.from(_N, "LoRaWANDeviceProfile", "SupportsJoin"),
            type = "boolean",
            name = "SupportsJoin",
            target_id = prelude.Boolean.id,
        }),
        Supports32BitFCnt = schema.new({
            id = id.from(_N, "LoRaWANDeviceProfile", "Supports32BitFCnt"),
            type = "boolean",
            name = "Supports32BitFCnt",
            target_id = prelude.Boolean.id,
            traits = {
                [traits.DEFAULT] = { value = false },
            },
        }),
    },
})

M.SidewalkCreateDeviceProfile = schema.new({
    id = id.from(_N, "SidewalkCreateDeviceProfile"),
    type = "structure",
})

M.CreateDeviceProfileInput = schema.new({
    id = id.from(_N, "CreateDeviceProfileInput"),
    type = "structure",
    members = {
        Name = schema.new({
            id = id.from(_N, "CreateDeviceProfileInput", "Name"),
            type = "string",
            name = "Name",
            target_id = prelude.String.id,
        }),
        LoRaWAN = schema.new({
            id = id.from(_N, "CreateDeviceProfileInput", "LoRaWAN"),
            type = "structure",
            name = "LoRaWAN",
            target_id = id.from(_N, "LoRaWANDeviceProfile"),
            target = M.LoRaWANDeviceProfile,
        }),
        Tags = schema.new({
            id = id.from(_N, "CreateDeviceProfileInput", "Tags"),
            type = "list",
            name = "Tags",
            target_id = prelude.Document.id,
            list_member = M.Tag,
        }),
        ClientRequestToken = schema.new({
            id = id.from(_N, "CreateDeviceProfileInput", "ClientRequestToken"),
            type = "string",
            name = "ClientRequestToken",
            target_id = prelude.String.id,
            traits = {
                [traits.IDEMPOTENCY_TOKEN] = {},
            },
        }),
        Sidewalk = schema.new({
            id = id.from(_N, "CreateDeviceProfileInput", "Sidewalk"),
            type = "structure",
            name = "Sidewalk",
            target_id = id.from(_N, "SidewalkCreateDeviceProfile"),
            target = M.SidewalkCreateDeviceProfile,
        }),
    },
})

M.CreateDeviceProfileOutput = schema.new({
    id = id.from(_N, "CreateDeviceProfileOutput"),
    type = "structure",
    members = {
        Arn = schema.new({
            id = id.from(_N, "CreateDeviceProfileOutput", "Arn"),
            type = "string",
            name = "Arn",
            target_id = prelude.String.id,
        }),
        Id = schema.new({
            id = id.from(_N, "CreateDeviceProfileOutput", "Id"),
            type = "string",
            name = "Id",
            target_id = prelude.String.id,
        }),
    },
})

M.LoRaWANFuotaTask = schema.new({
    id = id.from(_N, "LoRaWANFuotaTask"),
    type = "structure",
    members = {
        RfRegion = schema.new({
            id = id.from(_N, "LoRaWANFuotaTask", "RfRegion"),
            type = "string",
            name = "RfRegion",
            target_id = prelude.String.id,
        }),
    },
})

M.CreateFuotaTaskInput = schema.new({
    id = id.from(_N, "CreateFuotaTaskInput"),
    type = "structure",
    members = {
        Name = schema.new({
            id = id.from(_N, "CreateFuotaTaskInput", "Name"),
            type = "string",
            name = "Name",
            target_id = prelude.String.id,
        }),
        Description = schema.new({
            id = id.from(_N, "CreateFuotaTaskInput", "Description"),
            type = "string",
            name = "Description",
            target_id = prelude.String.id,
        }),
        ClientRequestToken = schema.new({
            id = id.from(_N, "CreateFuotaTaskInput", "ClientRequestToken"),
            type = "string",
            name = "ClientRequestToken",
            target_id = prelude.String.id,
            traits = {
                [traits.IDEMPOTENCY_TOKEN] = {},
            },
        }),
        LoRaWAN = schema.new({
            id = id.from(_N, "CreateFuotaTaskInput", "LoRaWAN"),
            type = "structure",
            name = "LoRaWAN",
            target_id = id.from(_N, "LoRaWANFuotaTask"),
            target = M.LoRaWANFuotaTask,
        }),
        FirmwareUpdateImage = schema.new({
            id = id.from(_N, "CreateFuotaTaskInput", "FirmwareUpdateImage"),
            type = "string",
            name = "FirmwareUpdateImage",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        FirmwareUpdateRole = schema.new({
            id = id.from(_N, "CreateFuotaTaskInput", "FirmwareUpdateRole"),
            type = "string",
            name = "FirmwareUpdateRole",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        Tags = schema.new({
            id = id.from(_N, "CreateFuotaTaskInput", "Tags"),
            type = "list",
            name = "Tags",
            target_id = prelude.Document.id,
            list_member = M.Tag,
        }),
        RedundancyPercent = schema.new({
            id = id.from(_N, "CreateFuotaTaskInput", "RedundancyPercent"),
            type = "integer",
            name = "RedundancyPercent",
            target_id = prelude.Integer.id,
        }),
        FragmentSizeBytes = schema.new({
            id = id.from(_N, "CreateFuotaTaskInput", "FragmentSizeBytes"),
            type = "integer",
            name = "FragmentSizeBytes",
            target_id = prelude.Integer.id,
        }),
        FragmentIntervalMS = schema.new({
            id = id.from(_N, "CreateFuotaTaskInput", "FragmentIntervalMS"),
            type = "integer",
            name = "FragmentIntervalMS",
            target_id = prelude.Integer.id,
        }),
        Descriptor = schema.new({
            id = id.from(_N, "CreateFuotaTaskInput", "Descriptor"),
            type = "string",
            name = "Descriptor",
            target_id = prelude.String.id,
        }),
    },
})

M.CreateFuotaTaskOutput = schema.new({
    id = id.from(_N, "CreateFuotaTaskOutput"),
    type = "structure",
    members = {
        Arn = schema.new({
            id = id.from(_N, "CreateFuotaTaskOutput", "Arn"),
            type = "string",
            name = "Arn",
            target_id = prelude.String.id,
        }),
        Id = schema.new({
            id = id.from(_N, "CreateFuotaTaskOutput", "Id"),
            type = "string",
            name = "Id",
            target_id = prelude.String.id,
        }),
    },
})

M.ParticipatingGatewaysMulticast = schema.new({
    id = id.from(_N, "ParticipatingGatewaysMulticast"),
    type = "structure",
    members = {
        GatewayList = schema.new({
            id = id.from(_N, "ParticipatingGatewaysMulticast", "GatewayList"),
            type = "list",
            name = "GatewayList",
            target_id = prelude.Document.id,
            list_member = prelude.String,
        }),
        TransmissionInterval = schema.new({
            id = id.from(_N, "ParticipatingGatewaysMulticast", "TransmissionInterval"),
            type = "integer",
            name = "TransmissionInterval",
            target_id = prelude.Integer.id,
        }),
    },
})

M.LoRaWANMulticast = schema.new({
    id = id.from(_N, "LoRaWANMulticast"),
    type = "structure",
    members = {
        RfRegion = schema.new({
            id = id.from(_N, "LoRaWANMulticast", "RfRegion"),
            type = "string",
            name = "RfRegion",
            target_id = prelude.String.id,
        }),
        DlClass = schema.new({
            id = id.from(_N, "LoRaWANMulticast", "DlClass"),
            type = "string",
            name = "DlClass",
            target_id = prelude.String.id,
        }),
        ParticipatingGateways = schema.new({
            id = id.from(_N, "LoRaWANMulticast", "ParticipatingGateways"),
            type = "structure",
            name = "ParticipatingGateways",
            target_id = id.from(_N, "ParticipatingGatewaysMulticast"),
            target = M.ParticipatingGatewaysMulticast,
        }),
    },
})

M.CreateMulticastGroupInput = schema.new({
    id = id.from(_N, "CreateMulticastGroupInput"),
    type = "structure",
    members = {
        Name = schema.new({
            id = id.from(_N, "CreateMulticastGroupInput", "Name"),
            type = "string",
            name = "Name",
            target_id = prelude.String.id,
        }),
        Description = schema.new({
            id = id.from(_N, "CreateMulticastGroupInput", "Description"),
            type = "string",
            name = "Description",
            target_id = prelude.String.id,
        }),
        ClientRequestToken = schema.new({
            id = id.from(_N, "CreateMulticastGroupInput", "ClientRequestToken"),
            type = "string",
            name = "ClientRequestToken",
            target_id = prelude.String.id,
            traits = {
                [traits.IDEMPOTENCY_TOKEN] = {},
            },
        }),
        LoRaWAN = schema.new({
            id = id.from(_N, "CreateMulticastGroupInput", "LoRaWAN"),
            type = "structure",
            name = "LoRaWAN",
            target_id = id.from(_N, "LoRaWANMulticast"),
            target = M.LoRaWANMulticast,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        Tags = schema.new({
            id = id.from(_N, "CreateMulticastGroupInput", "Tags"),
            type = "list",
            name = "Tags",
            target_id = prelude.Document.id,
            list_member = M.Tag,
        }),
    },
})

M.CreateMulticastGroupOutput = schema.new({
    id = id.from(_N, "CreateMulticastGroupOutput"),
    type = "structure",
    members = {
        Arn = schema.new({
            id = id.from(_N, "CreateMulticastGroupOutput", "Arn"),
            type = "string",
            name = "Arn",
            target_id = prelude.String.id,
        }),
        Id = schema.new({
            id = id.from(_N, "CreateMulticastGroupOutput", "Id"),
            type = "string",
            name = "Id",
            target_id = prelude.String.id,
        }),
    },
})

M.TraceContent = schema.new({
    id = id.from(_N, "TraceContent"),
    type = "structure",
    members = {
        WirelessDeviceFrameInfo = schema.new({
            id = id.from(_N, "TraceContent", "WirelessDeviceFrameInfo"),
            type = "string",
            name = "WirelessDeviceFrameInfo",
            target_id = prelude.String.id,
        }),
        LogLevel = schema.new({
            id = id.from(_N, "TraceContent", "LogLevel"),
            type = "string",
            name = "LogLevel",
            target_id = prelude.String.id,
        }),
        MulticastFrameInfo = schema.new({
            id = id.from(_N, "TraceContent", "MulticastFrameInfo"),
            type = "string",
            name = "MulticastFrameInfo",
            target_id = prelude.String.id,
        }),
    },
})

M.CreateNetworkAnalyzerConfigurationInput = schema.new({
    id = id.from(_N, "CreateNetworkAnalyzerConfigurationInput"),
    type = "structure",
    members = {
        Name = schema.new({
            id = id.from(_N, "CreateNetworkAnalyzerConfigurationInput", "Name"),
            type = "string",
            name = "Name",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        TraceContent = schema.new({
            id = id.from(_N, "CreateNetworkAnalyzerConfigurationInput", "TraceContent"),
            type = "structure",
            name = "TraceContent",
            target_id = id.from(_N, "TraceContent"),
            target = M.TraceContent,
        }),
        WirelessDevices = schema.new({
            id = id.from(_N, "CreateNetworkAnalyzerConfigurationInput", "WirelessDevices"),
            type = "list",
            name = "WirelessDevices",
            target_id = prelude.Document.id,
            list_member = prelude.String,
        }),
        WirelessGateways = schema.new({
            id = id.from(_N, "CreateNetworkAnalyzerConfigurationInput", "WirelessGateways"),
            type = "list",
            name = "WirelessGateways",
            target_id = prelude.Document.id,
            list_member = prelude.String,
        }),
        Description = schema.new({
            id = id.from(_N, "CreateNetworkAnalyzerConfigurationInput", "Description"),
            type = "string",
            name = "Description",
            target_id = prelude.String.id,
        }),
        Tags = schema.new({
            id = id.from(_N, "CreateNetworkAnalyzerConfigurationInput", "Tags"),
            type = "list",
            name = "Tags",
            target_id = prelude.Document.id,
            list_member = M.Tag,
        }),
        ClientRequestToken = schema.new({
            id = id.from(_N, "CreateNetworkAnalyzerConfigurationInput", "ClientRequestToken"),
            type = "string",
            name = "ClientRequestToken",
            target_id = prelude.String.id,
            traits = {
                [traits.IDEMPOTENCY_TOKEN] = {},
            },
        }),
        MulticastGroups = schema.new({
            id = id.from(_N, "CreateNetworkAnalyzerConfigurationInput", "MulticastGroups"),
            type = "list",
            name = "MulticastGroups",
            target_id = prelude.Document.id,
            list_member = prelude.String,
        }),
    },
})

M.CreateNetworkAnalyzerConfigurationOutput = schema.new({
    id = id.from(_N, "CreateNetworkAnalyzerConfigurationOutput"),
    type = "structure",
    members = {
        Arn = schema.new({
            id = id.from(_N, "CreateNetworkAnalyzerConfigurationOutput", "Arn"),
            type = "string",
            name = "Arn",
            target_id = prelude.String.id,
        }),
        Name = schema.new({
            id = id.from(_N, "CreateNetworkAnalyzerConfigurationOutput", "Name"),
            type = "string",
            name = "Name",
            target_id = prelude.String.id,
        }),
    },
})

M.LoRaWANServiceProfile = schema.new({
    id = id.from(_N, "LoRaWANServiceProfile"),
    type = "structure",
    members = {
        AddGwMetadata = schema.new({
            id = id.from(_N, "LoRaWANServiceProfile", "AddGwMetadata"),
            type = "boolean",
            name = "AddGwMetadata",
            target_id = prelude.Boolean.id,
            traits = {
                [traits.DEFAULT] = { value = false },
            },
        }),
        DrMin = schema.new({
            id = id.from(_N, "LoRaWANServiceProfile", "DrMin"),
            type = "integer",
            name = "DrMin",
            target_id = prelude.Integer.id,
        }),
        DrMax = schema.new({
            id = id.from(_N, "LoRaWANServiceProfile", "DrMax"),
            type = "integer",
            name = "DrMax",
            target_id = prelude.Integer.id,
        }),
        PrAllowed = schema.new({
            id = id.from(_N, "LoRaWANServiceProfile", "PrAllowed"),
            type = "boolean",
            name = "PrAllowed",
            target_id = prelude.Boolean.id,
            traits = {
                [traits.DEFAULT] = { value = false },
            },
        }),
        RaAllowed = schema.new({
            id = id.from(_N, "LoRaWANServiceProfile", "RaAllowed"),
            type = "boolean",
            name = "RaAllowed",
            target_id = prelude.Boolean.id,
            traits = {
                [traits.DEFAULT] = { value = false },
            },
        }),
        TxPowerIndexMin = schema.new({
            id = id.from(_N, "LoRaWANServiceProfile", "TxPowerIndexMin"),
            type = "integer",
            name = "TxPowerIndexMin",
            target_id = prelude.Integer.id,
        }),
        TxPowerIndexMax = schema.new({
            id = id.from(_N, "LoRaWANServiceProfile", "TxPowerIndexMax"),
            type = "integer",
            name = "TxPowerIndexMax",
            target_id = prelude.Integer.id,
        }),
        NbTransMin = schema.new({
            id = id.from(_N, "LoRaWANServiceProfile", "NbTransMin"),
            type = "integer",
            name = "NbTransMin",
            target_id = prelude.Integer.id,
        }),
        NbTransMax = schema.new({
            id = id.from(_N, "LoRaWANServiceProfile", "NbTransMax"),
            type = "integer",
            name = "NbTransMax",
            target_id = prelude.Integer.id,
        }),
    },
})

M.CreateServiceProfileInput = schema.new({
    id = id.from(_N, "CreateServiceProfileInput"),
    type = "structure",
    members = {
        Name = schema.new({
            id = id.from(_N, "CreateServiceProfileInput", "Name"),
            type = "string",
            name = "Name",
            target_id = prelude.String.id,
        }),
        LoRaWAN = schema.new({
            id = id.from(_N, "CreateServiceProfileInput", "LoRaWAN"),
            type = "structure",
            name = "LoRaWAN",
            target_id = id.from(_N, "LoRaWANServiceProfile"),
            target = M.LoRaWANServiceProfile,
        }),
        Tags = schema.new({
            id = id.from(_N, "CreateServiceProfileInput", "Tags"),
            type = "list",
            name = "Tags",
            target_id = prelude.Document.id,
            list_member = M.Tag,
        }),
        ClientRequestToken = schema.new({
            id = id.from(_N, "CreateServiceProfileInput", "ClientRequestToken"),
            type = "string",
            name = "ClientRequestToken",
            target_id = prelude.String.id,
            traits = {
                [traits.IDEMPOTENCY_TOKEN] = {},
            },
        }),
    },
})

M.CreateServiceProfileOutput = schema.new({
    id = id.from(_N, "CreateServiceProfileOutput"),
    type = "structure",
    members = {
        Arn = schema.new({
            id = id.from(_N, "CreateServiceProfileOutput", "Arn"),
            type = "string",
            name = "Arn",
            target_id = prelude.String.id,
        }),
        Id = schema.new({
            id = id.from(_N, "CreateServiceProfileOutput", "Id"),
            type = "string",
            name = "Id",
            target_id = prelude.String.id,
        }),
    },
})

M.Positioning = schema.new({
    id = id.from(_N, "Positioning"),
    type = "structure",
    members = {
        ClockSync = schema.new({
            id = id.from(_N, "Positioning", "ClockSync"),
            type = "integer",
            name = "ClockSync",
            target_id = prelude.Integer.id,
        }),
        Stream = schema.new({
            id = id.from(_N, "Positioning", "Stream"),
            type = "integer",
            name = "Stream",
            target_id = prelude.Integer.id,
        }),
        Gnss = schema.new({
            id = id.from(_N, "Positioning", "Gnss"),
            type = "integer",
            name = "Gnss",
            target_id = prelude.Integer.id,
        }),
    },
})

M.FPorts = schema.new({
    id = id.from(_N, "FPorts"),
    type = "structure",
    members = {
        Fuota = schema.new({
            id = id.from(_N, "FPorts", "Fuota"),
            type = "integer",
            name = "Fuota",
            target_id = prelude.Integer.id,
        }),
        Multicast = schema.new({
            id = id.from(_N, "FPorts", "Multicast"),
            type = "integer",
            name = "Multicast",
            target_id = prelude.Integer.id,
        }),
        ClockSync = schema.new({
            id = id.from(_N, "FPorts", "ClockSync"),
            type = "integer",
            name = "ClockSync",
            target_id = prelude.Integer.id,
        }),
        Positioning = schema.new({
            id = id.from(_N, "FPorts", "Positioning"),
            type = "structure",
            name = "Positioning",
            target_id = id.from(_N, "Positioning"),
            target = M.Positioning,
        }),
        Applications = schema.new({
            id = id.from(_N, "FPorts", "Applications"),
            type = "list",
            name = "Applications",
            target_id = prelude.Document.id,
            list_member = M.ApplicationConfig,
        }),
    },
})

M.OtaaV1_0_x = schema.new({
    id = id.from(_N, "OtaaV1_0_x"),
    type = "structure",
    members = {
        AppKey = schema.new({
            id = id.from(_N, "OtaaV1_0_x", "AppKey"),
            type = "string",
            name = "AppKey",
            target_id = prelude.String.id,
        }),
        AppEui = schema.new({
            id = id.from(_N, "OtaaV1_0_x", "AppEui"),
            type = "string",
            name = "AppEui",
            target_id = prelude.String.id,
        }),
        JoinEui = schema.new({
            id = id.from(_N, "OtaaV1_0_x", "JoinEui"),
            type = "string",
            name = "JoinEui",
            target_id = prelude.String.id,
        }),
        GenAppKey = schema.new({
            id = id.from(_N, "OtaaV1_0_x", "GenAppKey"),
            type = "string",
            name = "GenAppKey",
            target_id = prelude.String.id,
        }),
    },
})

M.OtaaV1_1 = schema.new({
    id = id.from(_N, "OtaaV1_1"),
    type = "structure",
    members = {
        AppKey = schema.new({
            id = id.from(_N, "OtaaV1_1", "AppKey"),
            type = "string",
            name = "AppKey",
            target_id = prelude.String.id,
        }),
        NwkKey = schema.new({
            id = id.from(_N, "OtaaV1_1", "NwkKey"),
            type = "string",
            name = "NwkKey",
            target_id = prelude.String.id,
        }),
        JoinEui = schema.new({
            id = id.from(_N, "OtaaV1_1", "JoinEui"),
            type = "string",
            name = "JoinEui",
            target_id = prelude.String.id,
        }),
    },
})

M.LoRaWANDevice = schema.new({
    id = id.from(_N, "LoRaWANDevice"),
    type = "structure",
    members = {
        DevEui = schema.new({
            id = id.from(_N, "LoRaWANDevice", "DevEui"),
            type = "string",
            name = "DevEui",
            target_id = prelude.String.id,
        }),
        DeviceProfileId = schema.new({
            id = id.from(_N, "LoRaWANDevice", "DeviceProfileId"),
            type = "string",
            name = "DeviceProfileId",
            target_id = prelude.String.id,
        }),
        ServiceProfileId = schema.new({
            id = id.from(_N, "LoRaWANDevice", "ServiceProfileId"),
            type = "string",
            name = "ServiceProfileId",
            target_id = prelude.String.id,
        }),
        OtaaV1_1 = schema.new({
            id = id.from(_N, "LoRaWANDevice", "OtaaV1_1"),
            type = "structure",
            name = "OtaaV1_1",
            target_id = id.from(_N, "OtaaV1_1"),
            target = M.OtaaV1_1,
        }),
        OtaaV1_0_x = schema.new({
            id = id.from(_N, "LoRaWANDevice", "OtaaV1_0_x"),
            type = "structure",
            name = "OtaaV1_0_x",
            target_id = id.from(_N, "OtaaV1_0_x"),
            target = M.OtaaV1_0_x,
        }),
        AbpV1_1 = schema.new({
            id = id.from(_N, "LoRaWANDevice", "AbpV1_1"),
            type = "structure",
            name = "AbpV1_1",
            target_id = id.from(_N, "AbpV1_1"),
            target = M.AbpV1_1,
        }),
        AbpV1_0_x = schema.new({
            id = id.from(_N, "LoRaWANDevice", "AbpV1_0_x"),
            type = "structure",
            name = "AbpV1_0_x",
            target_id = id.from(_N, "AbpV1_0_x"),
            target = M.AbpV1_0_x,
        }),
        FPorts = schema.new({
            id = id.from(_N, "LoRaWANDevice", "FPorts"),
            type = "structure",
            name = "FPorts",
            target_id = id.from(_N, "FPorts"),
            target = M.FPorts,
        }),
    },
})

M.SidewalkPositioning = schema.new({
    id = id.from(_N, "SidewalkPositioning"),
    type = "structure",
    members = {
        DestinationName = schema.new({
            id = id.from(_N, "SidewalkPositioning", "DestinationName"),
            type = "string",
            name = "DestinationName",
            target_id = prelude.String.id,
        }),
    },
})

M.SidewalkCreateWirelessDevice = schema.new({
    id = id.from(_N, "SidewalkCreateWirelessDevice"),
    type = "structure",
    members = {
        DeviceProfileId = schema.new({
            id = id.from(_N, "SidewalkCreateWirelessDevice", "DeviceProfileId"),
            type = "string",
            name = "DeviceProfileId",
            target_id = prelude.String.id,
        }),
        Positioning = schema.new({
            id = id.from(_N, "SidewalkCreateWirelessDevice", "Positioning"),
            type = "structure",
            name = "Positioning",
            target_id = id.from(_N, "SidewalkPositioning"),
            target = M.SidewalkPositioning,
        }),
        SidewalkManufacturingSn = schema.new({
            id = id.from(_N, "SidewalkCreateWirelessDevice", "SidewalkManufacturingSn"),
            type = "string",
            name = "SidewalkManufacturingSn",
            target_id = prelude.String.id,
        }),
    },
})

M.CreateWirelessDeviceInput = schema.new({
    id = id.from(_N, "CreateWirelessDeviceInput"),
    type = "structure",
    members = {
        Type = schema.new({
            id = id.from(_N, "CreateWirelessDeviceInput", "Type"),
            type = "string",
            name = "Type",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        Name = schema.new({
            id = id.from(_N, "CreateWirelessDeviceInput", "Name"),
            type = "string",
            name = "Name",
            target_id = prelude.String.id,
        }),
        Description = schema.new({
            id = id.from(_N, "CreateWirelessDeviceInput", "Description"),
            type = "string",
            name = "Description",
            target_id = prelude.String.id,
        }),
        DestinationName = schema.new({
            id = id.from(_N, "CreateWirelessDeviceInput", "DestinationName"),
            type = "string",
            name = "DestinationName",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        ClientRequestToken = schema.new({
            id = id.from(_N, "CreateWirelessDeviceInput", "ClientRequestToken"),
            type = "string",
            name = "ClientRequestToken",
            target_id = prelude.String.id,
            traits = {
                [traits.IDEMPOTENCY_TOKEN] = {},
            },
        }),
        LoRaWAN = schema.new({
            id = id.from(_N, "CreateWirelessDeviceInput", "LoRaWAN"),
            type = "structure",
            name = "LoRaWAN",
            target_id = id.from(_N, "LoRaWANDevice"),
            target = M.LoRaWANDevice,
        }),
        Tags = schema.new({
            id = id.from(_N, "CreateWirelessDeviceInput", "Tags"),
            type = "list",
            name = "Tags",
            target_id = prelude.Document.id,
            list_member = M.Tag,
        }),
        Positioning = schema.new({
            id = id.from(_N, "CreateWirelessDeviceInput", "Positioning"),
            type = "string",
            name = "Positioning",
            target_id = prelude.String.id,
        }),
        Sidewalk = schema.new({
            id = id.from(_N, "CreateWirelessDeviceInput", "Sidewalk"),
            type = "structure",
            name = "Sidewalk",
            target_id = id.from(_N, "SidewalkCreateWirelessDevice"),
            target = M.SidewalkCreateWirelessDevice,
        }),
    },
})

M.CreateWirelessDeviceOutput = schema.new({
    id = id.from(_N, "CreateWirelessDeviceOutput"),
    type = "structure",
    members = {
        Arn = schema.new({
            id = id.from(_N, "CreateWirelessDeviceOutput", "Arn"),
            type = "string",
            name = "Arn",
            target_id = prelude.String.id,
        }),
        Id = schema.new({
            id = id.from(_N, "CreateWirelessDeviceOutput", "Id"),
            type = "string",
            name = "Id",
            target_id = prelude.String.id,
        }),
    },
})

M.LoRaWANGateway = schema.new({
    id = id.from(_N, "LoRaWANGateway"),
    type = "structure",
    members = {
        GatewayEui = schema.new({
            id = id.from(_N, "LoRaWANGateway", "GatewayEui"),
            type = "string",
            name = "GatewayEui",
            target_id = prelude.String.id,
        }),
        RfRegion = schema.new({
            id = id.from(_N, "LoRaWANGateway", "RfRegion"),
            type = "string",
            name = "RfRegion",
            target_id = prelude.String.id,
        }),
        JoinEuiFilters = schema.new({
            id = id.from(_N, "LoRaWANGateway", "JoinEuiFilters"),
            type = "list",
            name = "JoinEuiFilters",
            target_id = prelude.Document.id,
            list_member = prelude.Document,
        }),
        NetIdFilters = schema.new({
            id = id.from(_N, "LoRaWANGateway", "NetIdFilters"),
            type = "list",
            name = "NetIdFilters",
            target_id = prelude.Document.id,
            list_member = prelude.String,
        }),
        SubBands = schema.new({
            id = id.from(_N, "LoRaWANGateway", "SubBands"),
            type = "list",
            name = "SubBands",
            target_id = prelude.Document.id,
            list_member = prelude.Integer,
        }),
        Beaconing = schema.new({
            id = id.from(_N, "LoRaWANGateway", "Beaconing"),
            type = "structure",
            name = "Beaconing",
            target_id = id.from(_N, "Beaconing"),
            target = M.Beaconing,
        }),
        MaxEirp = schema.new({
            id = id.from(_N, "LoRaWANGateway", "MaxEirp"),
            type = "float",
            name = "MaxEirp",
            target_id = prelude.Float.id,
        }),
    },
})

M.CreateWirelessGatewayInput = schema.new({
    id = id.from(_N, "CreateWirelessGatewayInput"),
    type = "structure",
    members = {
        Name = schema.new({
            id = id.from(_N, "CreateWirelessGatewayInput", "Name"),
            type = "string",
            name = "Name",
            target_id = prelude.String.id,
        }),
        Description = schema.new({
            id = id.from(_N, "CreateWirelessGatewayInput", "Description"),
            type = "string",
            name = "Description",
            target_id = prelude.String.id,
        }),
        LoRaWAN = schema.new({
            id = id.from(_N, "CreateWirelessGatewayInput", "LoRaWAN"),
            type = "structure",
            name = "LoRaWAN",
            target_id = id.from(_N, "LoRaWANGateway"),
            target = M.LoRaWANGateway,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        Tags = schema.new({
            id = id.from(_N, "CreateWirelessGatewayInput", "Tags"),
            type = "list",
            name = "Tags",
            target_id = prelude.Document.id,
            list_member = M.Tag,
        }),
        ClientRequestToken = schema.new({
            id = id.from(_N, "CreateWirelessGatewayInput", "ClientRequestToken"),
            type = "string",
            name = "ClientRequestToken",
            target_id = prelude.String.id,
            traits = {
                [traits.IDEMPOTENCY_TOKEN] = {},
            },
        }),
    },
})

M.CreateWirelessGatewayOutput = schema.new({
    id = id.from(_N, "CreateWirelessGatewayOutput"),
    type = "structure",
    members = {
        Arn = schema.new({
            id = id.from(_N, "CreateWirelessGatewayOutput", "Arn"),
            type = "string",
            name = "Arn",
            target_id = prelude.String.id,
        }),
        Id = schema.new({
            id = id.from(_N, "CreateWirelessGatewayOutput", "Id"),
            type = "string",
            name = "Id",
            target_id = prelude.String.id,
        }),
    },
})

M.CreateWirelessGatewayTaskInput = schema.new({
    id = id.from(_N, "CreateWirelessGatewayTaskInput"),
    type = "structure",
    members = {
        Id = schema.new({
            id = id.from(_N, "CreateWirelessGatewayTaskInput", "Id"),
            type = "string",
            name = "Id",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
        WirelessGatewayTaskDefinitionId = schema.new({
            id = id.from(_N, "CreateWirelessGatewayTaskInput", "WirelessGatewayTaskDefinitionId"),
            type = "string",
            name = "WirelessGatewayTaskDefinitionId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.CreateWirelessGatewayTaskOutput = schema.new({
    id = id.from(_N, "CreateWirelessGatewayTaskOutput"),
    type = "structure",
    members = {
        WirelessGatewayTaskDefinitionId = schema.new({
            id = id.from(_N, "CreateWirelessGatewayTaskOutput", "WirelessGatewayTaskDefinitionId"),
            type = "string",
            name = "WirelessGatewayTaskDefinitionId",
            target_id = prelude.String.id,
        }),
        Status = schema.new({
            id = id.from(_N, "CreateWirelessGatewayTaskOutput", "Status"),
            type = "string",
            name = "Status",
            target_id = prelude.String.id,
        }),
    },
})

M.LoRaWANGatewayVersion = schema.new({
    id = id.from(_N, "LoRaWANGatewayVersion"),
    type = "structure",
    members = {
        PackageVersion = schema.new({
            id = id.from(_N, "LoRaWANGatewayVersion", "PackageVersion"),
            type = "string",
            name = "PackageVersion",
            target_id = prelude.String.id,
        }),
        Model = schema.new({
            id = id.from(_N, "LoRaWANGatewayVersion", "Model"),
            type = "string",
            name = "Model",
            target_id = prelude.String.id,
        }),
        Station = schema.new({
            id = id.from(_N, "LoRaWANGatewayVersion", "Station"),
            type = "string",
            name = "Station",
            target_id = prelude.String.id,
        }),
    },
})

M.LoRaWANUpdateGatewayTaskCreate = schema.new({
    id = id.from(_N, "LoRaWANUpdateGatewayTaskCreate"),
    type = "structure",
    members = {
        UpdateSignature = schema.new({
            id = id.from(_N, "LoRaWANUpdateGatewayTaskCreate", "UpdateSignature"),
            type = "string",
            name = "UpdateSignature",
            target_id = prelude.String.id,
        }),
        SigKeyCrc = schema.new({
            id = id.from(_N, "LoRaWANUpdateGatewayTaskCreate", "SigKeyCrc"),
            type = "long",
            name = "SigKeyCrc",
            target_id = prelude.Long.id,
        }),
        CurrentVersion = schema.new({
            id = id.from(_N, "LoRaWANUpdateGatewayTaskCreate", "CurrentVersion"),
            type = "structure",
            name = "CurrentVersion",
            target_id = id.from(_N, "LoRaWANGatewayVersion"),
            target = M.LoRaWANGatewayVersion,
        }),
        UpdateVersion = schema.new({
            id = id.from(_N, "LoRaWANUpdateGatewayTaskCreate", "UpdateVersion"),
            type = "structure",
            name = "UpdateVersion",
            target_id = id.from(_N, "LoRaWANGatewayVersion"),
            target = M.LoRaWANGatewayVersion,
        }),
    },
})

M.UpdateWirelessGatewayTaskCreate = schema.new({
    id = id.from(_N, "UpdateWirelessGatewayTaskCreate"),
    type = "structure",
    members = {
        UpdateDataSource = schema.new({
            id = id.from(_N, "UpdateWirelessGatewayTaskCreate", "UpdateDataSource"),
            type = "string",
            name = "UpdateDataSource",
            target_id = prelude.String.id,
        }),
        UpdateDataRole = schema.new({
            id = id.from(_N, "UpdateWirelessGatewayTaskCreate", "UpdateDataRole"),
            type = "string",
            name = "UpdateDataRole",
            target_id = prelude.String.id,
        }),
        LoRaWAN = schema.new({
            id = id.from(_N, "UpdateWirelessGatewayTaskCreate", "LoRaWAN"),
            type = "structure",
            name = "LoRaWAN",
            target_id = id.from(_N, "LoRaWANUpdateGatewayTaskCreate"),
            target = M.LoRaWANUpdateGatewayTaskCreate,
        }),
    },
})

M.CreateWirelessGatewayTaskDefinitionInput = schema.new({
    id = id.from(_N, "CreateWirelessGatewayTaskDefinitionInput"),
    type = "structure",
    members = {
        AutoCreateTasks = schema.new({
            id = id.from(_N, "CreateWirelessGatewayTaskDefinitionInput", "AutoCreateTasks"),
            type = "boolean",
            name = "AutoCreateTasks",
            target_id = prelude.Boolean.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.DEFAULT] = { value = false },
            },
        }),
        Name = schema.new({
            id = id.from(_N, "CreateWirelessGatewayTaskDefinitionInput", "Name"),
            type = "string",
            name = "Name",
            target_id = prelude.String.id,
        }),
        Update = schema.new({
            id = id.from(_N, "CreateWirelessGatewayTaskDefinitionInput", "Update"),
            type = "structure",
            name = "Update",
            target_id = id.from(_N, "UpdateWirelessGatewayTaskCreate"),
            target = M.UpdateWirelessGatewayTaskCreate,
        }),
        ClientRequestToken = schema.new({
            id = id.from(_N, "CreateWirelessGatewayTaskDefinitionInput", "ClientRequestToken"),
            type = "string",
            name = "ClientRequestToken",
            target_id = prelude.String.id,
            traits = {
                [traits.IDEMPOTENCY_TOKEN] = {},
            },
        }),
        Tags = schema.new({
            id = id.from(_N, "CreateWirelessGatewayTaskDefinitionInput", "Tags"),
            type = "list",
            name = "Tags",
            target_id = prelude.Document.id,
            list_member = M.Tag,
        }),
    },
})

M.CreateWirelessGatewayTaskDefinitionOutput = schema.new({
    id = id.from(_N, "CreateWirelessGatewayTaskDefinitionOutput"),
    type = "structure",
    members = {
        Id = schema.new({
            id = id.from(_N, "CreateWirelessGatewayTaskDefinitionOutput", "Id"),
            type = "string",
            name = "Id",
            target_id = prelude.String.id,
        }),
        Arn = schema.new({
            id = id.from(_N, "CreateWirelessGatewayTaskDefinitionOutput", "Arn"),
            type = "string",
            name = "Arn",
            target_id = prelude.String.id,
        }),
    },
})

M.DakCertificateMetadata = schema.new({
    id = id.from(_N, "DakCertificateMetadata"),
    type = "structure",
    members = {
        CertificateId = schema.new({
            id = id.from(_N, "DakCertificateMetadata", "CertificateId"),
            type = "string",
            name = "CertificateId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        MaxAllowedSignature = schema.new({
            id = id.from(_N, "DakCertificateMetadata", "MaxAllowedSignature"),
            type = "integer",
            name = "MaxAllowedSignature",
            target_id = prelude.Integer.id,
        }),
        FactorySupport = schema.new({
            id = id.from(_N, "DakCertificateMetadata", "FactorySupport"),
            type = "boolean",
            name = "FactorySupport",
            target_id = prelude.Boolean.id,
        }),
        ApId = schema.new({
            id = id.from(_N, "DakCertificateMetadata", "ApId"),
            type = "string",
            name = "ApId",
            target_id = prelude.String.id,
        }),
        DeviceTypeId = schema.new({
            id = id.from(_N, "DakCertificateMetadata", "DeviceTypeId"),
            type = "string",
            name = "DeviceTypeId",
            target_id = prelude.String.id,
        }),
    },
})

M.DeleteDestinationInput = schema.new({
    id = id.from(_N, "DeleteDestinationInput"),
    type = "structure",
    members = {
        Name = schema.new({
            id = id.from(_N, "DeleteDestinationInput", "Name"),
            type = "string",
            name = "Name",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
    },
})

M.DeleteDestinationOutput = schema.new({
    id = id.from(_N, "DeleteDestinationOutput"),
    type = "structure",
})

M.DeleteDeviceProfileInput = schema.new({
    id = id.from(_N, "DeleteDeviceProfileInput"),
    type = "structure",
    members = {
        Id = schema.new({
            id = id.from(_N, "DeleteDeviceProfileInput", "Id"),
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

M.DeleteDeviceProfileOutput = schema.new({
    id = id.from(_N, "DeleteDeviceProfileOutput"),
    type = "structure",
})

M.DeleteFuotaTaskInput = schema.new({
    id = id.from(_N, "DeleteFuotaTaskInput"),
    type = "structure",
    members = {
        Id = schema.new({
            id = id.from(_N, "DeleteFuotaTaskInput", "Id"),
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

M.DeleteFuotaTaskOutput = schema.new({
    id = id.from(_N, "DeleteFuotaTaskOutput"),
    type = "structure",
})

M.DeleteMulticastGroupInput = schema.new({
    id = id.from(_N, "DeleteMulticastGroupInput"),
    type = "structure",
    members = {
        Id = schema.new({
            id = id.from(_N, "DeleteMulticastGroupInput", "Id"),
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

M.DeleteMulticastGroupOutput = schema.new({
    id = id.from(_N, "DeleteMulticastGroupOutput"),
    type = "structure",
})

M.DeleteNetworkAnalyzerConfigurationInput = schema.new({
    id = id.from(_N, "DeleteNetworkAnalyzerConfigurationInput"),
    type = "structure",
    members = {
        ConfigurationName = schema.new({
            id = id.from(_N, "DeleteNetworkAnalyzerConfigurationInput", "ConfigurationName"),
            type = "string",
            name = "ConfigurationName",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
    },
})

M.DeleteNetworkAnalyzerConfigurationOutput = schema.new({
    id = id.from(_N, "DeleteNetworkAnalyzerConfigurationOutput"),
    type = "structure",
})

M.DeleteQueuedMessagesInput = schema.new({
    id = id.from(_N, "DeleteQueuedMessagesInput"),
    type = "structure",
    members = {
        Id = schema.new({
            id = id.from(_N, "DeleteQueuedMessagesInput", "Id"),
            type = "string",
            name = "Id",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
        MessageId = schema.new({
            id = id.from(_N, "DeleteQueuedMessagesInput", "MessageId"),
            type = "string",
            name = "MessageId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_QUERY] = { name = "messageId" },
            },
        }),
        WirelessDeviceType = schema.new({
            id = id.from(_N, "DeleteQueuedMessagesInput", "WirelessDeviceType"),
            type = "string",
            name = "WirelessDeviceType",
            target_id = prelude.String.id,
            traits = {
                [traits.HTTP_QUERY] = { name = "WirelessDeviceType" },
            },
        }),
    },
})

M.DeleteQueuedMessagesOutput = schema.new({
    id = id.from(_N, "DeleteQueuedMessagesOutput"),
    type = "structure",
})

M.DeleteServiceProfileInput = schema.new({
    id = id.from(_N, "DeleteServiceProfileInput"),
    type = "structure",
    members = {
        Id = schema.new({
            id = id.from(_N, "DeleteServiceProfileInput", "Id"),
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

M.DeleteServiceProfileOutput = schema.new({
    id = id.from(_N, "DeleteServiceProfileOutput"),
    type = "structure",
})

M.DeleteWirelessDeviceInput = schema.new({
    id = id.from(_N, "DeleteWirelessDeviceInput"),
    type = "structure",
    members = {
        Id = schema.new({
            id = id.from(_N, "DeleteWirelessDeviceInput", "Id"),
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

M.DeleteWirelessDeviceOutput = schema.new({
    id = id.from(_N, "DeleteWirelessDeviceOutput"),
    type = "structure",
})

M.DeleteWirelessDeviceImportTaskInput = schema.new({
    id = id.from(_N, "DeleteWirelessDeviceImportTaskInput"),
    type = "structure",
    members = {
        Id = schema.new({
            id = id.from(_N, "DeleteWirelessDeviceImportTaskInput", "Id"),
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

M.DeleteWirelessDeviceImportTaskOutput = schema.new({
    id = id.from(_N, "DeleteWirelessDeviceImportTaskOutput"),
    type = "structure",
})

M.DeleteWirelessGatewayInput = schema.new({
    id = id.from(_N, "DeleteWirelessGatewayInput"),
    type = "structure",
    members = {
        Id = schema.new({
            id = id.from(_N, "DeleteWirelessGatewayInput", "Id"),
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

M.DeleteWirelessGatewayOutput = schema.new({
    id = id.from(_N, "DeleteWirelessGatewayOutput"),
    type = "structure",
})

M.DeleteWirelessGatewayTaskInput = schema.new({
    id = id.from(_N, "DeleteWirelessGatewayTaskInput"),
    type = "structure",
    members = {
        Id = schema.new({
            id = id.from(_N, "DeleteWirelessGatewayTaskInput", "Id"),
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

M.DeleteWirelessGatewayTaskOutput = schema.new({
    id = id.from(_N, "DeleteWirelessGatewayTaskOutput"),
    type = "structure",
})

M.DeleteWirelessGatewayTaskDefinitionInput = schema.new({
    id = id.from(_N, "DeleteWirelessGatewayTaskDefinitionInput"),
    type = "structure",
    members = {
        Id = schema.new({
            id = id.from(_N, "DeleteWirelessGatewayTaskDefinitionInput", "Id"),
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

M.DeleteWirelessGatewayTaskDefinitionOutput = schema.new({
    id = id.from(_N, "DeleteWirelessGatewayTaskDefinitionOutput"),
    type = "structure",
})

M.DeregisterWirelessDeviceInput = schema.new({
    id = id.from(_N, "DeregisterWirelessDeviceInput"),
    type = "structure",
    members = {
        Identifier = schema.new({
            id = id.from(_N, "DeregisterWirelessDeviceInput", "Identifier"),
            type = "string",
            name = "Identifier",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
        WirelessDeviceType = schema.new({
            id = id.from(_N, "DeregisterWirelessDeviceInput", "WirelessDeviceType"),
            type = "string",
            name = "WirelessDeviceType",
            target_id = prelude.String.id,
            traits = {
                [traits.HTTP_QUERY] = { name = "WirelessDeviceType" },
            },
        }),
    },
})

M.DeregisterWirelessDeviceOutput = schema.new({
    id = id.from(_N, "DeregisterWirelessDeviceOutput"),
    type = "structure",
})

M.Destinations = schema.new({
    id = id.from(_N, "Destinations"),
    type = "structure",
    members = {
        Arn = schema.new({
            id = id.from(_N, "Destinations", "Arn"),
            type = "string",
            name = "Arn",
            target_id = prelude.String.id,
        }),
        Name = schema.new({
            id = id.from(_N, "Destinations", "Name"),
            type = "string",
            name = "Name",
            target_id = prelude.String.id,
        }),
        ExpressionType = schema.new({
            id = id.from(_N, "Destinations", "ExpressionType"),
            type = "string",
            name = "ExpressionType",
            target_id = prelude.String.id,
        }),
        Expression = schema.new({
            id = id.from(_N, "Destinations", "Expression"),
            type = "string",
            name = "Expression",
            target_id = prelude.String.id,
        }),
        Description = schema.new({
            id = id.from(_N, "Destinations", "Description"),
            type = "string",
            name = "Description",
            target_id = prelude.String.id,
        }),
        RoleArn = schema.new({
            id = id.from(_N, "Destinations", "RoleArn"),
            type = "string",
            name = "RoleArn",
            target_id = prelude.String.id,
        }),
    },
})

M.DeviceProfile = schema.new({
    id = id.from(_N, "DeviceProfile"),
    type = "structure",
    members = {
        Arn = schema.new({
            id = id.from(_N, "DeviceProfile", "Arn"),
            type = "string",
            name = "Arn",
            target_id = prelude.String.id,
        }),
        Name = schema.new({
            id = id.from(_N, "DeviceProfile", "Name"),
            type = "string",
            name = "Name",
            target_id = prelude.String.id,
        }),
        Id = schema.new({
            id = id.from(_N, "DeviceProfile", "Id"),
            type = "string",
            name = "Id",
            target_id = prelude.String.id,
        }),
    },
})

M.SidewalkEventNotificationConfigurations = schema.new({
    id = id.from(_N, "SidewalkEventNotificationConfigurations"),
    type = "structure",
    members = {
        AmazonIdEventTopic = schema.new({
            id = id.from(_N, "SidewalkEventNotificationConfigurations", "AmazonIdEventTopic"),
            type = "string",
            name = "AmazonIdEventTopic",
            target_id = prelude.String.id,
        }),
    },
})

M.DeviceRegistrationStateEventConfiguration = schema.new({
    id = id.from(_N, "DeviceRegistrationStateEventConfiguration"),
    type = "structure",
    members = {
        Sidewalk = schema.new({
            id = id.from(_N, "DeviceRegistrationStateEventConfiguration", "Sidewalk"),
            type = "structure",
            name = "Sidewalk",
            target_id = id.from(_N, "SidewalkEventNotificationConfigurations"),
            target = M.SidewalkEventNotificationConfigurations,
        }),
        WirelessDeviceIdEventTopic = schema.new({
            id = id.from(_N, "DeviceRegistrationStateEventConfiguration", "WirelessDeviceIdEventTopic"),
            type = "string",
            name = "WirelessDeviceIdEventTopic",
            target_id = prelude.String.id,
        }),
    },
})

M.SidewalkResourceTypeEventConfiguration = schema.new({
    id = id.from(_N, "SidewalkResourceTypeEventConfiguration"),
    type = "structure",
    members = {
        WirelessDeviceEventTopic = schema.new({
            id = id.from(_N, "SidewalkResourceTypeEventConfiguration", "WirelessDeviceEventTopic"),
            type = "string",
            name = "WirelessDeviceEventTopic",
            target_id = prelude.String.id,
        }),
    },
})

M.DeviceRegistrationStateResourceTypeEventConfiguration = schema.new({
    id = id.from(_N, "DeviceRegistrationStateResourceTypeEventConfiguration"),
    type = "structure",
    members = {
        Sidewalk = schema.new({
            id = id.from(_N, "DeviceRegistrationStateResourceTypeEventConfiguration", "Sidewalk"),
            type = "structure",
            name = "Sidewalk",
            target_id = id.from(_N, "SidewalkResourceTypeEventConfiguration"),
            target = M.SidewalkResourceTypeEventConfiguration,
        }),
    },
})

M.Dimension = schema.new({
    id = id.from(_N, "Dimension"),
    type = "structure",
    members = {
        name = schema.new({
            id = id.from(_N, "Dimension", "name"),
            type = "string",
            name = "name",
            target_id = prelude.String.id,
        }),
        value = schema.new({
            id = id.from(_N, "Dimension", "value"),
            type = "string",
            name = "value",
            target_id = prelude.String.id,
        }),
    },
})

M.DisassociateAwsAccountFromPartnerAccountInput = schema.new({
    id = id.from(_N, "DisassociateAwsAccountFromPartnerAccountInput"),
    type = "structure",
    members = {
        PartnerAccountId = schema.new({
            id = id.from(_N, "DisassociateAwsAccountFromPartnerAccountInput", "PartnerAccountId"),
            type = "string",
            name = "PartnerAccountId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
        PartnerType = schema.new({
            id = id.from(_N, "DisassociateAwsAccountFromPartnerAccountInput", "PartnerType"),
            type = "string",
            name = "PartnerType",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_QUERY] = { name = "partnerType" },
            },
        }),
    },
})

M.DisassociateAwsAccountFromPartnerAccountOutput = schema.new({
    id = id.from(_N, "DisassociateAwsAccountFromPartnerAccountOutput"),
    type = "structure",
})

M.DisassociateMulticastGroupFromFuotaTaskInput = schema.new({
    id = id.from(_N, "DisassociateMulticastGroupFromFuotaTaskInput"),
    type = "structure",
    members = {
        Id = schema.new({
            id = id.from(_N, "DisassociateMulticastGroupFromFuotaTaskInput", "Id"),
            type = "string",
            name = "Id",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
        MulticastGroupId = schema.new({
            id = id.from(_N, "DisassociateMulticastGroupFromFuotaTaskInput", "MulticastGroupId"),
            type = "string",
            name = "MulticastGroupId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
    },
})

M.DisassociateMulticastGroupFromFuotaTaskOutput = schema.new({
    id = id.from(_N, "DisassociateMulticastGroupFromFuotaTaskOutput"),
    type = "structure",
})

M.DisassociateWirelessDeviceFromFuotaTaskInput = schema.new({
    id = id.from(_N, "DisassociateWirelessDeviceFromFuotaTaskInput"),
    type = "structure",
    members = {
        Id = schema.new({
            id = id.from(_N, "DisassociateWirelessDeviceFromFuotaTaskInput", "Id"),
            type = "string",
            name = "Id",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
        WirelessDeviceId = schema.new({
            id = id.from(_N, "DisassociateWirelessDeviceFromFuotaTaskInput", "WirelessDeviceId"),
            type = "string",
            name = "WirelessDeviceId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
    },
})

M.DisassociateWirelessDeviceFromFuotaTaskOutput = schema.new({
    id = id.from(_N, "DisassociateWirelessDeviceFromFuotaTaskOutput"),
    type = "structure",
})

M.DisassociateWirelessDeviceFromMulticastGroupInput = schema.new({
    id = id.from(_N, "DisassociateWirelessDeviceFromMulticastGroupInput"),
    type = "structure",
    members = {
        Id = schema.new({
            id = id.from(_N, "DisassociateWirelessDeviceFromMulticastGroupInput", "Id"),
            type = "string",
            name = "Id",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
        WirelessDeviceId = schema.new({
            id = id.from(_N, "DisassociateWirelessDeviceFromMulticastGroupInput", "WirelessDeviceId"),
            type = "string",
            name = "WirelessDeviceId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
    },
})

M.DisassociateWirelessDeviceFromMulticastGroupOutput = schema.new({
    id = id.from(_N, "DisassociateWirelessDeviceFromMulticastGroupOutput"),
    type = "structure",
})

M.DisassociateWirelessDeviceFromThingInput = schema.new({
    id = id.from(_N, "DisassociateWirelessDeviceFromThingInput"),
    type = "structure",
    members = {
        Id = schema.new({
            id = id.from(_N, "DisassociateWirelessDeviceFromThingInput", "Id"),
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

M.DisassociateWirelessDeviceFromThingOutput = schema.new({
    id = id.from(_N, "DisassociateWirelessDeviceFromThingOutput"),
    type = "structure",
})

M.DisassociateWirelessGatewayFromCertificateInput = schema.new({
    id = id.from(_N, "DisassociateWirelessGatewayFromCertificateInput"),
    type = "structure",
    members = {
        Id = schema.new({
            id = id.from(_N, "DisassociateWirelessGatewayFromCertificateInput", "Id"),
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

M.DisassociateWirelessGatewayFromCertificateOutput = schema.new({
    id = id.from(_N, "DisassociateWirelessGatewayFromCertificateOutput"),
    type = "structure",
})

M.DisassociateWirelessGatewayFromThingInput = schema.new({
    id = id.from(_N, "DisassociateWirelessGatewayFromThingInput"),
    type = "structure",
    members = {
        Id = schema.new({
            id = id.from(_N, "DisassociateWirelessGatewayFromThingInput", "Id"),
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

M.DisassociateWirelessGatewayFromThingOutput = schema.new({
    id = id.from(_N, "DisassociateWirelessGatewayFromThingOutput"),
    type = "structure",
})

M.GatewayListItem = schema.new({
    id = id.from(_N, "GatewayListItem"),
    type = "structure",
    members = {
        GatewayId = schema.new({
            id = id.from(_N, "GatewayListItem", "GatewayId"),
            type = "string",
            name = "GatewayId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        DownlinkFrequency = schema.new({
            id = id.from(_N, "GatewayListItem", "DownlinkFrequency"),
            type = "integer",
            name = "DownlinkFrequency",
            target_id = prelude.Integer.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.ParticipatingGateways = schema.new({
    id = id.from(_N, "ParticipatingGateways"),
    type = "structure",
    members = {
        DownlinkMode = schema.new({
            id = id.from(_N, "ParticipatingGateways", "DownlinkMode"),
            type = "string",
            name = "DownlinkMode",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        GatewayList = schema.new({
            id = id.from(_N, "ParticipatingGateways", "GatewayList"),
            type = "list",
            name = "GatewayList",
            target_id = prelude.Document.id,
            list_member = M.GatewayListItem,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        TransmissionInterval = schema.new({
            id = id.from(_N, "ParticipatingGateways", "TransmissionInterval"),
            type = "integer",
            name = "TransmissionInterval",
            target_id = prelude.Integer.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.LoRaWANSendDataToDevice = schema.new({
    id = id.from(_N, "LoRaWANSendDataToDevice"),
    type = "structure",
    members = {
        FPort = schema.new({
            id = id.from(_N, "LoRaWANSendDataToDevice", "FPort"),
            type = "integer",
            name = "FPort",
            target_id = prelude.Integer.id,
        }),
        ParticipatingGateways = schema.new({
            id = id.from(_N, "LoRaWANSendDataToDevice", "ParticipatingGateways"),
            type = "structure",
            name = "ParticipatingGateways",
            target_id = id.from(_N, "ParticipatingGateways"),
            target = M.ParticipatingGateways,
        }),
    },
})

M.DownlinkQueueMessage = schema.new({
    id = id.from(_N, "DownlinkQueueMessage"),
    type = "structure",
    members = {
        MessageId = schema.new({
            id = id.from(_N, "DownlinkQueueMessage", "MessageId"),
            type = "string",
            name = "MessageId",
            target_id = prelude.String.id,
        }),
        TransmitMode = schema.new({
            id = id.from(_N, "DownlinkQueueMessage", "TransmitMode"),
            type = "integer",
            name = "TransmitMode",
            target_id = prelude.Integer.id,
        }),
        ReceivedAt = schema.new({
            id = id.from(_N, "DownlinkQueueMessage", "ReceivedAt"),
            type = "string",
            name = "ReceivedAt",
            target_id = prelude.String.id,
        }),
        LoRaWAN = schema.new({
            id = id.from(_N, "DownlinkQueueMessage", "LoRaWAN"),
            type = "structure",
            name = "LoRaWAN",
            target_id = id.from(_N, "LoRaWANSendDataToDevice"),
            target = M.LoRaWANSendDataToDevice,
        }),
    },
})

M.LoRaWANJoinEventNotificationConfigurations = schema.new({
    id = id.from(_N, "LoRaWANJoinEventNotificationConfigurations"),
    type = "structure",
    members = {
        DevEuiEventTopic = schema.new({
            id = id.from(_N, "LoRaWANJoinEventNotificationConfigurations", "DevEuiEventTopic"),
            type = "string",
            name = "DevEuiEventTopic",
            target_id = prelude.String.id,
        }),
    },
})

M.JoinEventConfiguration = schema.new({
    id = id.from(_N, "JoinEventConfiguration"),
    type = "structure",
    members = {
        LoRaWAN = schema.new({
            id = id.from(_N, "JoinEventConfiguration", "LoRaWAN"),
            type = "structure",
            name = "LoRaWAN",
            target_id = id.from(_N, "LoRaWANJoinEventNotificationConfigurations"),
            target = M.LoRaWANJoinEventNotificationConfigurations,
        }),
        WirelessDeviceIdEventTopic = schema.new({
            id = id.from(_N, "JoinEventConfiguration", "WirelessDeviceIdEventTopic"),
            type = "string",
            name = "WirelessDeviceIdEventTopic",
            target_id = prelude.String.id,
        }),
    },
})

M.MessageDeliveryStatusEventConfiguration = schema.new({
    id = id.from(_N, "MessageDeliveryStatusEventConfiguration"),
    type = "structure",
    members = {
        Sidewalk = schema.new({
            id = id.from(_N, "MessageDeliveryStatusEventConfiguration", "Sidewalk"),
            type = "structure",
            name = "Sidewalk",
            target_id = id.from(_N, "SidewalkEventNotificationConfigurations"),
            target = M.SidewalkEventNotificationConfigurations,
        }),
        WirelessDeviceIdEventTopic = schema.new({
            id = id.from(_N, "MessageDeliveryStatusEventConfiguration", "WirelessDeviceIdEventTopic"),
            type = "string",
            name = "WirelessDeviceIdEventTopic",
            target_id = prelude.String.id,
        }),
    },
})

M.ProximityEventConfiguration = schema.new({
    id = id.from(_N, "ProximityEventConfiguration"),
    type = "structure",
    members = {
        Sidewalk = schema.new({
            id = id.from(_N, "ProximityEventConfiguration", "Sidewalk"),
            type = "structure",
            name = "Sidewalk",
            target_id = id.from(_N, "SidewalkEventNotificationConfigurations"),
            target = M.SidewalkEventNotificationConfigurations,
        }),
        WirelessDeviceIdEventTopic = schema.new({
            id = id.from(_N, "ProximityEventConfiguration", "WirelessDeviceIdEventTopic"),
            type = "string",
            name = "WirelessDeviceIdEventTopic",
            target_id = prelude.String.id,
        }),
    },
})

M.EventNotificationItemConfigurations = schema.new({
    id = id.from(_N, "EventNotificationItemConfigurations"),
    type = "structure",
    members = {
        DeviceRegistrationState = schema.new({
            id = id.from(_N, "EventNotificationItemConfigurations", "DeviceRegistrationState"),
            type = "structure",
            name = "DeviceRegistrationState",
            target_id = id.from(_N, "DeviceRegistrationStateEventConfiguration"),
            target = M.DeviceRegistrationStateEventConfiguration,
        }),
        Proximity = schema.new({
            id = id.from(_N, "EventNotificationItemConfigurations", "Proximity"),
            type = "structure",
            name = "Proximity",
            target_id = id.from(_N, "ProximityEventConfiguration"),
            target = M.ProximityEventConfiguration,
        }),
        Join = schema.new({
            id = id.from(_N, "EventNotificationItemConfigurations", "Join"),
            type = "structure",
            name = "Join",
            target_id = id.from(_N, "JoinEventConfiguration"),
            target = M.JoinEventConfiguration,
        }),
        ConnectionStatus = schema.new({
            id = id.from(_N, "EventNotificationItemConfigurations", "ConnectionStatus"),
            type = "structure",
            name = "ConnectionStatus",
            target_id = id.from(_N, "ConnectionStatusEventConfiguration"),
            target = M.ConnectionStatusEventConfiguration,
        }),
        MessageDeliveryStatus = schema.new({
            id = id.from(_N, "EventNotificationItemConfigurations", "MessageDeliveryStatus"),
            type = "structure",
            name = "MessageDeliveryStatus",
            target_id = id.from(_N, "MessageDeliveryStatusEventConfiguration"),
            target = M.MessageDeliveryStatusEventConfiguration,
        }),
    },
})

M.EventConfigurationItem = schema.new({
    id = id.from(_N, "EventConfigurationItem"),
    type = "structure",
    members = {
        Identifier = schema.new({
            id = id.from(_N, "EventConfigurationItem", "Identifier"),
            type = "string",
            name = "Identifier",
            target_id = prelude.String.id,
        }),
        IdentifierType = schema.new({
            id = id.from(_N, "EventConfigurationItem", "IdentifierType"),
            type = "string",
            name = "IdentifierType",
            target_id = prelude.String.id,
        }),
        PartnerType = schema.new({
            id = id.from(_N, "EventConfigurationItem", "PartnerType"),
            type = "string",
            name = "PartnerType",
            target_id = prelude.String.id,
        }),
        Events = schema.new({
            id = id.from(_N, "EventConfigurationItem", "Events"),
            type = "structure",
            name = "Events",
            target_id = id.from(_N, "EventNotificationItemConfigurations"),
            target = M.EventNotificationItemConfigurations,
        }),
    },
})

M.FuotaTask = schema.new({
    id = id.from(_N, "FuotaTask"),
    type = "structure",
    members = {
        Id = schema.new({
            id = id.from(_N, "FuotaTask", "Id"),
            type = "string",
            name = "Id",
            target_id = prelude.String.id,
        }),
        Arn = schema.new({
            id = id.from(_N, "FuotaTask", "Arn"),
            type = "string",
            name = "Arn",
            target_id = prelude.String.id,
        }),
        Name = schema.new({
            id = id.from(_N, "FuotaTask", "Name"),
            type = "string",
            name = "Name",
            target_id = prelude.String.id,
        }),
    },
})

M.FuotaTaskEventLogOption = schema.new({
    id = id.from(_N, "FuotaTaskEventLogOption"),
    type = "structure",
    members = {
        Event = schema.new({
            id = id.from(_N, "FuotaTaskEventLogOption", "Event"),
            type = "string",
            name = "Event",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        LogLevel = schema.new({
            id = id.from(_N, "FuotaTaskEventLogOption", "LogLevel"),
            type = "string",
            name = "LogLevel",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.FuotaTaskLogOption = schema.new({
    id = id.from(_N, "FuotaTaskLogOption"),
    type = "structure",
    members = {
        Type = schema.new({
            id = id.from(_N, "FuotaTaskLogOption", "Type"),
            type = "string",
            name = "Type",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        LogLevel = schema.new({
            id = id.from(_N, "FuotaTaskLogOption", "LogLevel"),
            type = "string",
            name = "LogLevel",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        Events = schema.new({
            id = id.from(_N, "FuotaTaskLogOption", "Events"),
            type = "list",
            name = "Events",
            target_id = prelude.Document.id,
            list_member = M.FuotaTaskEventLogOption,
        }),
    },
})

M.GetDestinationInput = schema.new({
    id = id.from(_N, "GetDestinationInput"),
    type = "structure",
    members = {
        Name = schema.new({
            id = id.from(_N, "GetDestinationInput", "Name"),
            type = "string",
            name = "Name",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
    },
})

M.GetDestinationOutput = schema.new({
    id = id.from(_N, "GetDestinationOutput"),
    type = "structure",
    members = {
        Arn = schema.new({
            id = id.from(_N, "GetDestinationOutput", "Arn"),
            type = "string",
            name = "Arn",
            target_id = prelude.String.id,
        }),
        Name = schema.new({
            id = id.from(_N, "GetDestinationOutput", "Name"),
            type = "string",
            name = "Name",
            target_id = prelude.String.id,
        }),
        Expression = schema.new({
            id = id.from(_N, "GetDestinationOutput", "Expression"),
            type = "string",
            name = "Expression",
            target_id = prelude.String.id,
        }),
        ExpressionType = schema.new({
            id = id.from(_N, "GetDestinationOutput", "ExpressionType"),
            type = "string",
            name = "ExpressionType",
            target_id = prelude.String.id,
        }),
        Description = schema.new({
            id = id.from(_N, "GetDestinationOutput", "Description"),
            type = "string",
            name = "Description",
            target_id = prelude.String.id,
        }),
        RoleArn = schema.new({
            id = id.from(_N, "GetDestinationOutput", "RoleArn"),
            type = "string",
            name = "RoleArn",
            target_id = prelude.String.id,
        }),
    },
})

M.GetDeviceProfileInput = schema.new({
    id = id.from(_N, "GetDeviceProfileInput"),
    type = "structure",
    members = {
        Id = schema.new({
            id = id.from(_N, "GetDeviceProfileInput", "Id"),
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

M.SidewalkGetDeviceProfile = schema.new({
    id = id.from(_N, "SidewalkGetDeviceProfile"),
    type = "structure",
    members = {
        ApplicationServerPublicKey = schema.new({
            id = id.from(_N, "SidewalkGetDeviceProfile", "ApplicationServerPublicKey"),
            type = "string",
            name = "ApplicationServerPublicKey",
            target_id = prelude.String.id,
        }),
        QualificationStatus = schema.new({
            id = id.from(_N, "SidewalkGetDeviceProfile", "QualificationStatus"),
            type = "boolean",
            name = "QualificationStatus",
            target_id = prelude.Boolean.id,
        }),
        DakCertificateMetadata = schema.new({
            id = id.from(_N, "SidewalkGetDeviceProfile", "DakCertificateMetadata"),
            type = "list",
            name = "DakCertificateMetadata",
            target_id = prelude.Document.id,
            list_member = M.DakCertificateMetadata,
        }),
    },
})

M.GetDeviceProfileOutput = schema.new({
    id = id.from(_N, "GetDeviceProfileOutput"),
    type = "structure",
    members = {
        Arn = schema.new({
            id = id.from(_N, "GetDeviceProfileOutput", "Arn"),
            type = "string",
            name = "Arn",
            target_id = prelude.String.id,
        }),
        Name = schema.new({
            id = id.from(_N, "GetDeviceProfileOutput", "Name"),
            type = "string",
            name = "Name",
            target_id = prelude.String.id,
        }),
        Id = schema.new({
            id = id.from(_N, "GetDeviceProfileOutput", "Id"),
            type = "string",
            name = "Id",
            target_id = prelude.String.id,
        }),
        LoRaWAN = schema.new({
            id = id.from(_N, "GetDeviceProfileOutput", "LoRaWAN"),
            type = "structure",
            name = "LoRaWAN",
            target_id = id.from(_N, "LoRaWANDeviceProfile"),
            target = M.LoRaWANDeviceProfile,
        }),
        Sidewalk = schema.new({
            id = id.from(_N, "GetDeviceProfileOutput", "Sidewalk"),
            type = "structure",
            name = "Sidewalk",
            target_id = id.from(_N, "SidewalkGetDeviceProfile"),
            target = M.SidewalkGetDeviceProfile,
        }),
    },
})

M.GetEventConfigurationByResourceTypesInput = schema.new({
    id = id.from(_N, "GetEventConfigurationByResourceTypesInput"),
    type = "structure",
})

M.LoRaWANJoinResourceTypeEventConfiguration = schema.new({
    id = id.from(_N, "LoRaWANJoinResourceTypeEventConfiguration"),
    type = "structure",
    members = {
        WirelessDeviceEventTopic = schema.new({
            id = id.from(_N, "LoRaWANJoinResourceTypeEventConfiguration", "WirelessDeviceEventTopic"),
            type = "string",
            name = "WirelessDeviceEventTopic",
            target_id = prelude.String.id,
        }),
    },
})

M.JoinResourceTypeEventConfiguration = schema.new({
    id = id.from(_N, "JoinResourceTypeEventConfiguration"),
    type = "structure",
    members = {
        LoRaWAN = schema.new({
            id = id.from(_N, "JoinResourceTypeEventConfiguration", "LoRaWAN"),
            type = "structure",
            name = "LoRaWAN",
            target_id = id.from(_N, "LoRaWANJoinResourceTypeEventConfiguration"),
            target = M.LoRaWANJoinResourceTypeEventConfiguration,
        }),
    },
})

M.MessageDeliveryStatusResourceTypeEventConfiguration = schema.new({
    id = id.from(_N, "MessageDeliveryStatusResourceTypeEventConfiguration"),
    type = "structure",
    members = {
        Sidewalk = schema.new({
            id = id.from(_N, "MessageDeliveryStatusResourceTypeEventConfiguration", "Sidewalk"),
            type = "structure",
            name = "Sidewalk",
            target_id = id.from(_N, "SidewalkResourceTypeEventConfiguration"),
            target = M.SidewalkResourceTypeEventConfiguration,
        }),
    },
})

M.ProximityResourceTypeEventConfiguration = schema.new({
    id = id.from(_N, "ProximityResourceTypeEventConfiguration"),
    type = "structure",
    members = {
        Sidewalk = schema.new({
            id = id.from(_N, "ProximityResourceTypeEventConfiguration", "Sidewalk"),
            type = "structure",
            name = "Sidewalk",
            target_id = id.from(_N, "SidewalkResourceTypeEventConfiguration"),
            target = M.SidewalkResourceTypeEventConfiguration,
        }),
    },
})

M.GetEventConfigurationByResourceTypesOutput = schema.new({
    id = id.from(_N, "GetEventConfigurationByResourceTypesOutput"),
    type = "structure",
    members = {
        DeviceRegistrationState = schema.new({
            id = id.from(_N, "GetEventConfigurationByResourceTypesOutput", "DeviceRegistrationState"),
            type = "structure",
            name = "DeviceRegistrationState",
            target_id = id.from(_N, "DeviceRegistrationStateResourceTypeEventConfiguration"),
            target = M.DeviceRegistrationStateResourceTypeEventConfiguration,
        }),
        Proximity = schema.new({
            id = id.from(_N, "GetEventConfigurationByResourceTypesOutput", "Proximity"),
            type = "structure",
            name = "Proximity",
            target_id = id.from(_N, "ProximityResourceTypeEventConfiguration"),
            target = M.ProximityResourceTypeEventConfiguration,
        }),
        Join = schema.new({
            id = id.from(_N, "GetEventConfigurationByResourceTypesOutput", "Join"),
            type = "structure",
            name = "Join",
            target_id = id.from(_N, "JoinResourceTypeEventConfiguration"),
            target = M.JoinResourceTypeEventConfiguration,
        }),
        ConnectionStatus = schema.new({
            id = id.from(_N, "GetEventConfigurationByResourceTypesOutput", "ConnectionStatus"),
            type = "structure",
            name = "ConnectionStatus",
            target_id = id.from(_N, "ConnectionStatusResourceTypeEventConfiguration"),
            target = M.ConnectionStatusResourceTypeEventConfiguration,
        }),
        MessageDeliveryStatus = schema.new({
            id = id.from(_N, "GetEventConfigurationByResourceTypesOutput", "MessageDeliveryStatus"),
            type = "structure",
            name = "MessageDeliveryStatus",
            target_id = id.from(_N, "MessageDeliveryStatusResourceTypeEventConfiguration"),
            target = M.MessageDeliveryStatusResourceTypeEventConfiguration,
        }),
    },
})

M.GetFuotaTaskInput = schema.new({
    id = id.from(_N, "GetFuotaTaskInput"),
    type = "structure",
    members = {
        Id = schema.new({
            id = id.from(_N, "GetFuotaTaskInput", "Id"),
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

M.LoRaWANFuotaTaskGetInfo = schema.new({
    id = id.from(_N, "LoRaWANFuotaTaskGetInfo"),
    type = "structure",
    members = {
        RfRegion = schema.new({
            id = id.from(_N, "LoRaWANFuotaTaskGetInfo", "RfRegion"),
            type = "string",
            name = "RfRegion",
            target_id = prelude.String.id,
        }),
        StartTime = schema.new({
            id = id.from(_N, "LoRaWANFuotaTaskGetInfo", "StartTime"),
            type = "timestamp",
            name = "StartTime",
            target_id = prelude.Timestamp.id,
            traits = {
                [traits.TIMESTAMP_FORMAT] = { format = "date-time" },
            },
        }),
    },
})

M.GetFuotaTaskOutput = schema.new({
    id = id.from(_N, "GetFuotaTaskOutput"),
    type = "structure",
    members = {
        Arn = schema.new({
            id = id.from(_N, "GetFuotaTaskOutput", "Arn"),
            type = "string",
            name = "Arn",
            target_id = prelude.String.id,
        }),
        Id = schema.new({
            id = id.from(_N, "GetFuotaTaskOutput", "Id"),
            type = "string",
            name = "Id",
            target_id = prelude.String.id,
        }),
        Status = schema.new({
            id = id.from(_N, "GetFuotaTaskOutput", "Status"),
            type = "string",
            name = "Status",
            target_id = prelude.String.id,
        }),
        Name = schema.new({
            id = id.from(_N, "GetFuotaTaskOutput", "Name"),
            type = "string",
            name = "Name",
            target_id = prelude.String.id,
        }),
        Description = schema.new({
            id = id.from(_N, "GetFuotaTaskOutput", "Description"),
            type = "string",
            name = "Description",
            target_id = prelude.String.id,
        }),
        LoRaWAN = schema.new({
            id = id.from(_N, "GetFuotaTaskOutput", "LoRaWAN"),
            type = "structure",
            name = "LoRaWAN",
            target_id = id.from(_N, "LoRaWANFuotaTaskGetInfo"),
            target = M.LoRaWANFuotaTaskGetInfo,
        }),
        FirmwareUpdateImage = schema.new({
            id = id.from(_N, "GetFuotaTaskOutput", "FirmwareUpdateImage"),
            type = "string",
            name = "FirmwareUpdateImage",
            target_id = prelude.String.id,
        }),
        FirmwareUpdateRole = schema.new({
            id = id.from(_N, "GetFuotaTaskOutput", "FirmwareUpdateRole"),
            type = "string",
            name = "FirmwareUpdateRole",
            target_id = prelude.String.id,
        }),
        CreatedAt = schema.new({
            id = id.from(_N, "GetFuotaTaskOutput", "CreatedAt"),
            type = "timestamp",
            name = "CreatedAt",
            target_id = prelude.Timestamp.id,
        }),
        RedundancyPercent = schema.new({
            id = id.from(_N, "GetFuotaTaskOutput", "RedundancyPercent"),
            type = "integer",
            name = "RedundancyPercent",
            target_id = prelude.Integer.id,
        }),
        FragmentSizeBytes = schema.new({
            id = id.from(_N, "GetFuotaTaskOutput", "FragmentSizeBytes"),
            type = "integer",
            name = "FragmentSizeBytes",
            target_id = prelude.Integer.id,
        }),
        FragmentIntervalMS = schema.new({
            id = id.from(_N, "GetFuotaTaskOutput", "FragmentIntervalMS"),
            type = "integer",
            name = "FragmentIntervalMS",
            target_id = prelude.Integer.id,
        }),
        Descriptor = schema.new({
            id = id.from(_N, "GetFuotaTaskOutput", "Descriptor"),
            type = "string",
            name = "Descriptor",
            target_id = prelude.String.id,
        }),
    },
})

M.GetLogLevelsByResourceTypesInput = schema.new({
    id = id.from(_N, "GetLogLevelsByResourceTypesInput"),
    type = "structure",
})

M.WirelessDeviceEventLogOption = schema.new({
    id = id.from(_N, "WirelessDeviceEventLogOption"),
    type = "structure",
    members = {
        Event = schema.new({
            id = id.from(_N, "WirelessDeviceEventLogOption", "Event"),
            type = "string",
            name = "Event",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        LogLevel = schema.new({
            id = id.from(_N, "WirelessDeviceEventLogOption", "LogLevel"),
            type = "string",
            name = "LogLevel",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.WirelessDeviceLogOption = schema.new({
    id = id.from(_N, "WirelessDeviceLogOption"),
    type = "structure",
    members = {
        Type = schema.new({
            id = id.from(_N, "WirelessDeviceLogOption", "Type"),
            type = "string",
            name = "Type",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        LogLevel = schema.new({
            id = id.from(_N, "WirelessDeviceLogOption", "LogLevel"),
            type = "string",
            name = "LogLevel",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        Events = schema.new({
            id = id.from(_N, "WirelessDeviceLogOption", "Events"),
            type = "list",
            name = "Events",
            target_id = prelude.Document.id,
            list_member = M.WirelessDeviceEventLogOption,
        }),
    },
})

M.WirelessGatewayEventLogOption = schema.new({
    id = id.from(_N, "WirelessGatewayEventLogOption"),
    type = "structure",
    members = {
        Event = schema.new({
            id = id.from(_N, "WirelessGatewayEventLogOption", "Event"),
            type = "string",
            name = "Event",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        LogLevel = schema.new({
            id = id.from(_N, "WirelessGatewayEventLogOption", "LogLevel"),
            type = "string",
            name = "LogLevel",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.WirelessGatewayLogOption = schema.new({
    id = id.from(_N, "WirelessGatewayLogOption"),
    type = "structure",
    members = {
        Type = schema.new({
            id = id.from(_N, "WirelessGatewayLogOption", "Type"),
            type = "string",
            name = "Type",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        LogLevel = schema.new({
            id = id.from(_N, "WirelessGatewayLogOption", "LogLevel"),
            type = "string",
            name = "LogLevel",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        Events = schema.new({
            id = id.from(_N, "WirelessGatewayLogOption", "Events"),
            type = "list",
            name = "Events",
            target_id = prelude.Document.id,
            list_member = M.WirelessGatewayEventLogOption,
        }),
    },
})

M.GetLogLevelsByResourceTypesOutput = schema.new({
    id = id.from(_N, "GetLogLevelsByResourceTypesOutput"),
    type = "structure",
    members = {
        DefaultLogLevel = schema.new({
            id = id.from(_N, "GetLogLevelsByResourceTypesOutput", "DefaultLogLevel"),
            type = "string",
            name = "DefaultLogLevel",
            target_id = prelude.String.id,
        }),
        WirelessGatewayLogOptions = schema.new({
            id = id.from(_N, "GetLogLevelsByResourceTypesOutput", "WirelessGatewayLogOptions"),
            type = "list",
            name = "WirelessGatewayLogOptions",
            target_id = prelude.Document.id,
            list_member = M.WirelessGatewayLogOption,
        }),
        WirelessDeviceLogOptions = schema.new({
            id = id.from(_N, "GetLogLevelsByResourceTypesOutput", "WirelessDeviceLogOptions"),
            type = "list",
            name = "WirelessDeviceLogOptions",
            target_id = prelude.Document.id,
            list_member = M.WirelessDeviceLogOption,
        }),
        FuotaTaskLogOptions = schema.new({
            id = id.from(_N, "GetLogLevelsByResourceTypesOutput", "FuotaTaskLogOptions"),
            type = "list",
            name = "FuotaTaskLogOptions",
            target_id = prelude.Document.id,
            list_member = M.FuotaTaskLogOption,
        }),
    },
})

M.GetMetricConfigurationInput = schema.new({
    id = id.from(_N, "GetMetricConfigurationInput"),
    type = "structure",
})

M.SummaryMetricConfiguration = schema.new({
    id = id.from(_N, "SummaryMetricConfiguration"),
    type = "structure",
    members = {
        Status = schema.new({
            id = id.from(_N, "SummaryMetricConfiguration", "Status"),
            type = "string",
            name = "Status",
            target_id = prelude.String.id,
        }),
    },
})

M.GetMetricConfigurationOutput = schema.new({
    id = id.from(_N, "GetMetricConfigurationOutput"),
    type = "structure",
    members = {
        SummaryMetric = schema.new({
            id = id.from(_N, "GetMetricConfigurationOutput", "SummaryMetric"),
            type = "structure",
            name = "SummaryMetric",
            target_id = id.from(_N, "SummaryMetricConfiguration"),
            target = M.SummaryMetricConfiguration,
        }),
    },
})

M.SummaryMetricQuery = schema.new({
    id = id.from(_N, "SummaryMetricQuery"),
    type = "structure",
    members = {
        QueryId = schema.new({
            id = id.from(_N, "SummaryMetricQuery", "QueryId"),
            type = "string",
            name = "QueryId",
            target_id = prelude.String.id,
        }),
        MetricName = schema.new({
            id = id.from(_N, "SummaryMetricQuery", "MetricName"),
            type = "string",
            name = "MetricName",
            target_id = prelude.String.id,
        }),
        Dimensions = schema.new({
            id = id.from(_N, "SummaryMetricQuery", "Dimensions"),
            type = "list",
            name = "Dimensions",
            target_id = prelude.Document.id,
            list_member = M.Dimension,
        }),
        AggregationPeriod = schema.new({
            id = id.from(_N, "SummaryMetricQuery", "AggregationPeriod"),
            type = "string",
            name = "AggregationPeriod",
            target_id = prelude.String.id,
        }),
        StartTimestamp = schema.new({
            id = id.from(_N, "SummaryMetricQuery", "StartTimestamp"),
            type = "timestamp",
            name = "StartTimestamp",
            target_id = prelude.Timestamp.id,
        }),
        EndTimestamp = schema.new({
            id = id.from(_N, "SummaryMetricQuery", "EndTimestamp"),
            type = "timestamp",
            name = "EndTimestamp",
            target_id = prelude.Timestamp.id,
        }),
    },
})

M.GetMetricsInput = schema.new({
    id = id.from(_N, "GetMetricsInput"),
    type = "structure",
    members = {
        SummaryMetricQueries = schema.new({
            id = id.from(_N, "GetMetricsInput", "SummaryMetricQueries"),
            type = "list",
            name = "SummaryMetricQueries",
            target_id = prelude.Document.id,
            list_member = M.SummaryMetricQuery,
        }),
    },
})

M.MetricQueryValue = schema.new({
    id = id.from(_N, "MetricQueryValue"),
    type = "structure",
    members = {
        Min = schema.new({
            id = id.from(_N, "MetricQueryValue", "Min"),
            type = "double",
            name = "Min",
            target_id = prelude.Double.id,
        }),
        Max = schema.new({
            id = id.from(_N, "MetricQueryValue", "Max"),
            type = "double",
            name = "Max",
            target_id = prelude.Double.id,
        }),
        Sum = schema.new({
            id = id.from(_N, "MetricQueryValue", "Sum"),
            type = "double",
            name = "Sum",
            target_id = prelude.Double.id,
        }),
        Avg = schema.new({
            id = id.from(_N, "MetricQueryValue", "Avg"),
            type = "double",
            name = "Avg",
            target_id = prelude.Double.id,
        }),
        Std = schema.new({
            id = id.from(_N, "MetricQueryValue", "Std"),
            type = "double",
            name = "Std",
            target_id = prelude.Double.id,
        }),
        P90 = schema.new({
            id = id.from(_N, "MetricQueryValue", "P90"),
            type = "double",
            name = "P90",
            target_id = prelude.Double.id,
        }),
    },
})

M.SummaryMetricQueryResult = schema.new({
    id = id.from(_N, "SummaryMetricQueryResult"),
    type = "structure",
    members = {
        QueryId = schema.new({
            id = id.from(_N, "SummaryMetricQueryResult", "QueryId"),
            type = "string",
            name = "QueryId",
            target_id = prelude.String.id,
        }),
        QueryStatus = schema.new({
            id = id.from(_N, "SummaryMetricQueryResult", "QueryStatus"),
            type = "string",
            name = "QueryStatus",
            target_id = prelude.String.id,
        }),
        Error = schema.new({
            id = id.from(_N, "SummaryMetricQueryResult", "Error"),
            type = "string",
            name = "Error",
            target_id = prelude.String.id,
        }),
        MetricName = schema.new({
            id = id.from(_N, "SummaryMetricQueryResult", "MetricName"),
            type = "string",
            name = "MetricName",
            target_id = prelude.String.id,
        }),
        Dimensions = schema.new({
            id = id.from(_N, "SummaryMetricQueryResult", "Dimensions"),
            type = "list",
            name = "Dimensions",
            target_id = prelude.Document.id,
            list_member = M.Dimension,
        }),
        AggregationPeriod = schema.new({
            id = id.from(_N, "SummaryMetricQueryResult", "AggregationPeriod"),
            type = "string",
            name = "AggregationPeriod",
            target_id = prelude.String.id,
        }),
        StartTimestamp = schema.new({
            id = id.from(_N, "SummaryMetricQueryResult", "StartTimestamp"),
            type = "timestamp",
            name = "StartTimestamp",
            target_id = prelude.Timestamp.id,
        }),
        EndTimestamp = schema.new({
            id = id.from(_N, "SummaryMetricQueryResult", "EndTimestamp"),
            type = "timestamp",
            name = "EndTimestamp",
            target_id = prelude.Timestamp.id,
        }),
        Timestamps = schema.new({
            id = id.from(_N, "SummaryMetricQueryResult", "Timestamps"),
            type = "list",
            name = "Timestamps",
            target_id = prelude.Document.id,
            list_member = prelude.Timestamp,
        }),
        Values = schema.new({
            id = id.from(_N, "SummaryMetricQueryResult", "Values"),
            type = "list",
            name = "Values",
            target_id = prelude.Document.id,
            list_member = M.MetricQueryValue,
        }),
        Unit = schema.new({
            id = id.from(_N, "SummaryMetricQueryResult", "Unit"),
            type = "string",
            name = "Unit",
            target_id = prelude.String.id,
        }),
    },
})

M.GetMetricsOutput = schema.new({
    id = id.from(_N, "GetMetricsOutput"),
    type = "structure",
    members = {
        SummaryMetricQueryResults = schema.new({
            id = id.from(_N, "GetMetricsOutput", "SummaryMetricQueryResults"),
            type = "list",
            name = "SummaryMetricQueryResults",
            target_id = prelude.Document.id,
            list_member = M.SummaryMetricQueryResult,
        }),
    },
})

M.GetMulticastGroupInput = schema.new({
    id = id.from(_N, "GetMulticastGroupInput"),
    type = "structure",
    members = {
        Id = schema.new({
            id = id.from(_N, "GetMulticastGroupInput", "Id"),
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

M.LoRaWANMulticastGet = schema.new({
    id = id.from(_N, "LoRaWANMulticastGet"),
    type = "structure",
    members = {
        RfRegion = schema.new({
            id = id.from(_N, "LoRaWANMulticastGet", "RfRegion"),
            type = "string",
            name = "RfRegion",
            target_id = prelude.String.id,
        }),
        DlClass = schema.new({
            id = id.from(_N, "LoRaWANMulticastGet", "DlClass"),
            type = "string",
            name = "DlClass",
            target_id = prelude.String.id,
        }),
        NumberOfDevicesRequested = schema.new({
            id = id.from(_N, "LoRaWANMulticastGet", "NumberOfDevicesRequested"),
            type = "integer",
            name = "NumberOfDevicesRequested",
            target_id = prelude.Integer.id,
        }),
        NumberOfDevicesInGroup = schema.new({
            id = id.from(_N, "LoRaWANMulticastGet", "NumberOfDevicesInGroup"),
            type = "integer",
            name = "NumberOfDevicesInGroup",
            target_id = prelude.Integer.id,
        }),
        ParticipatingGateways = schema.new({
            id = id.from(_N, "LoRaWANMulticastGet", "ParticipatingGateways"),
            type = "structure",
            name = "ParticipatingGateways",
            target_id = id.from(_N, "ParticipatingGatewaysMulticast"),
            target = M.ParticipatingGatewaysMulticast,
        }),
    },
})

M.GetMulticastGroupOutput = schema.new({
    id = id.from(_N, "GetMulticastGroupOutput"),
    type = "structure",
    members = {
        Arn = schema.new({
            id = id.from(_N, "GetMulticastGroupOutput", "Arn"),
            type = "string",
            name = "Arn",
            target_id = prelude.String.id,
        }),
        Id = schema.new({
            id = id.from(_N, "GetMulticastGroupOutput", "Id"),
            type = "string",
            name = "Id",
            target_id = prelude.String.id,
        }),
        Name = schema.new({
            id = id.from(_N, "GetMulticastGroupOutput", "Name"),
            type = "string",
            name = "Name",
            target_id = prelude.String.id,
        }),
        Description = schema.new({
            id = id.from(_N, "GetMulticastGroupOutput", "Description"),
            type = "string",
            name = "Description",
            target_id = prelude.String.id,
        }),
        Status = schema.new({
            id = id.from(_N, "GetMulticastGroupOutput", "Status"),
            type = "string",
            name = "Status",
            target_id = prelude.String.id,
        }),
        LoRaWAN = schema.new({
            id = id.from(_N, "GetMulticastGroupOutput", "LoRaWAN"),
            type = "structure",
            name = "LoRaWAN",
            target_id = id.from(_N, "LoRaWANMulticastGet"),
            target = M.LoRaWANMulticastGet,
        }),
        CreatedAt = schema.new({
            id = id.from(_N, "GetMulticastGroupOutput", "CreatedAt"),
            type = "timestamp",
            name = "CreatedAt",
            target_id = prelude.Timestamp.id,
        }),
    },
})

M.GetMulticastGroupSessionInput = schema.new({
    id = id.from(_N, "GetMulticastGroupSessionInput"),
    type = "structure",
    members = {
        Id = schema.new({
            id = id.from(_N, "GetMulticastGroupSessionInput", "Id"),
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

M.LoRaWANMulticastSession = schema.new({
    id = id.from(_N, "LoRaWANMulticastSession"),
    type = "structure",
    members = {
        DlDr = schema.new({
            id = id.from(_N, "LoRaWANMulticastSession", "DlDr"),
            type = "integer",
            name = "DlDr",
            target_id = prelude.Integer.id,
        }),
        DlFreq = schema.new({
            id = id.from(_N, "LoRaWANMulticastSession", "DlFreq"),
            type = "integer",
            name = "DlFreq",
            target_id = prelude.Integer.id,
        }),
        SessionStartTime = schema.new({
            id = id.from(_N, "LoRaWANMulticastSession", "SessionStartTime"),
            type = "timestamp",
            name = "SessionStartTime",
            target_id = prelude.Timestamp.id,
            traits = {
                [traits.TIMESTAMP_FORMAT] = { format = "date-time" },
            },
        }),
        SessionTimeout = schema.new({
            id = id.from(_N, "LoRaWANMulticastSession", "SessionTimeout"),
            type = "integer",
            name = "SessionTimeout",
            target_id = prelude.Integer.id,
        }),
        PingSlotPeriod = schema.new({
            id = id.from(_N, "LoRaWANMulticastSession", "PingSlotPeriod"),
            type = "integer",
            name = "PingSlotPeriod",
            target_id = prelude.Integer.id,
        }),
    },
})

M.GetMulticastGroupSessionOutput = schema.new({
    id = id.from(_N, "GetMulticastGroupSessionOutput"),
    type = "structure",
    members = {
        LoRaWAN = schema.new({
            id = id.from(_N, "GetMulticastGroupSessionOutput", "LoRaWAN"),
            type = "structure",
            name = "LoRaWAN",
            target_id = id.from(_N, "LoRaWANMulticastSession"),
            target = M.LoRaWANMulticastSession,
        }),
    },
})

M.GetNetworkAnalyzerConfigurationInput = schema.new({
    id = id.from(_N, "GetNetworkAnalyzerConfigurationInput"),
    type = "structure",
    members = {
        ConfigurationName = schema.new({
            id = id.from(_N, "GetNetworkAnalyzerConfigurationInput", "ConfigurationName"),
            type = "string",
            name = "ConfigurationName",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
    },
})

M.GetNetworkAnalyzerConfigurationOutput = schema.new({
    id = id.from(_N, "GetNetworkAnalyzerConfigurationOutput"),
    type = "structure",
    members = {
        TraceContent = schema.new({
            id = id.from(_N, "GetNetworkAnalyzerConfigurationOutput", "TraceContent"),
            type = "structure",
            name = "TraceContent",
            target_id = id.from(_N, "TraceContent"),
            target = M.TraceContent,
        }),
        WirelessDevices = schema.new({
            id = id.from(_N, "GetNetworkAnalyzerConfigurationOutput", "WirelessDevices"),
            type = "list",
            name = "WirelessDevices",
            target_id = prelude.Document.id,
            list_member = prelude.String,
        }),
        WirelessGateways = schema.new({
            id = id.from(_N, "GetNetworkAnalyzerConfigurationOutput", "WirelessGateways"),
            type = "list",
            name = "WirelessGateways",
            target_id = prelude.Document.id,
            list_member = prelude.String,
        }),
        Description = schema.new({
            id = id.from(_N, "GetNetworkAnalyzerConfigurationOutput", "Description"),
            type = "string",
            name = "Description",
            target_id = prelude.String.id,
        }),
        Arn = schema.new({
            id = id.from(_N, "GetNetworkAnalyzerConfigurationOutput", "Arn"),
            type = "string",
            name = "Arn",
            target_id = prelude.String.id,
        }),
        Name = schema.new({
            id = id.from(_N, "GetNetworkAnalyzerConfigurationOutput", "Name"),
            type = "string",
            name = "Name",
            target_id = prelude.String.id,
        }),
        MulticastGroups = schema.new({
            id = id.from(_N, "GetNetworkAnalyzerConfigurationOutput", "MulticastGroups"),
            type = "list",
            name = "MulticastGroups",
            target_id = prelude.Document.id,
            list_member = prelude.String,
        }),
    },
})

M.GetPartnerAccountInput = schema.new({
    id = id.from(_N, "GetPartnerAccountInput"),
    type = "structure",
    members = {
        PartnerAccountId = schema.new({
            id = id.from(_N, "GetPartnerAccountInput", "PartnerAccountId"),
            type = "string",
            name = "PartnerAccountId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
        PartnerType = schema.new({
            id = id.from(_N, "GetPartnerAccountInput", "PartnerType"),
            type = "string",
            name = "PartnerType",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_QUERY] = { name = "partnerType" },
            },
        }),
    },
})

M.SidewalkAccountInfoWithFingerprint = schema.new({
    id = id.from(_N, "SidewalkAccountInfoWithFingerprint"),
    type = "structure",
    members = {
        AmazonId = schema.new({
            id = id.from(_N, "SidewalkAccountInfoWithFingerprint", "AmazonId"),
            type = "string",
            name = "AmazonId",
            target_id = prelude.String.id,
        }),
        Fingerprint = schema.new({
            id = id.from(_N, "SidewalkAccountInfoWithFingerprint", "Fingerprint"),
            type = "string",
            name = "Fingerprint",
            target_id = prelude.String.id,
        }),
        Arn = schema.new({
            id = id.from(_N, "SidewalkAccountInfoWithFingerprint", "Arn"),
            type = "string",
            name = "Arn",
            target_id = prelude.String.id,
        }),
    },
})

M.GetPartnerAccountOutput = schema.new({
    id = id.from(_N, "GetPartnerAccountOutput"),
    type = "structure",
    members = {
        Sidewalk = schema.new({
            id = id.from(_N, "GetPartnerAccountOutput", "Sidewalk"),
            type = "structure",
            name = "Sidewalk",
            target_id = id.from(_N, "SidewalkAccountInfoWithFingerprint"),
            target = M.SidewalkAccountInfoWithFingerprint,
        }),
        AccountLinked = schema.new({
            id = id.from(_N, "GetPartnerAccountOutput", "AccountLinked"),
            type = "boolean",
            name = "AccountLinked",
            target_id = prelude.Boolean.id,
            traits = {
                [traits.DEFAULT] = { value = false },
            },
        }),
    },
})

M.GetPositionInput = schema.new({
    id = id.from(_N, "GetPositionInput"),
    type = "structure",
    members = {
        ResourceIdentifier = schema.new({
            id = id.from(_N, "GetPositionInput", "ResourceIdentifier"),
            type = "string",
            name = "ResourceIdentifier",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
        ResourceType = schema.new({
            id = id.from(_N, "GetPositionInput", "ResourceType"),
            type = "string",
            name = "ResourceType",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_QUERY] = { name = "resourceType" },
            },
        }),
    },
})

M.GetPositionOutput = schema.new({
    id = id.from(_N, "GetPositionOutput"),
    type = "structure",
    members = {
        Position = schema.new({
            id = id.from(_N, "GetPositionOutput", "Position"),
            type = "list",
            name = "Position",
            target_id = prelude.Document.id,
            list_member = prelude.Float,
        }),
        Accuracy = schema.new({
            id = id.from(_N, "GetPositionOutput", "Accuracy"),
            type = "structure",
            name = "Accuracy",
            target_id = id.from(_N, "Accuracy"),
            target = M.Accuracy,
        }),
        SolverType = schema.new({
            id = id.from(_N, "GetPositionOutput", "SolverType"),
            type = "string",
            name = "SolverType",
            target_id = prelude.String.id,
        }),
        SolverProvider = schema.new({
            id = id.from(_N, "GetPositionOutput", "SolverProvider"),
            type = "string",
            name = "SolverProvider",
            target_id = prelude.String.id,
        }),
        SolverVersion = schema.new({
            id = id.from(_N, "GetPositionOutput", "SolverVersion"),
            type = "string",
            name = "SolverVersion",
            target_id = prelude.String.id,
        }),
        Timestamp = schema.new({
            id = id.from(_N, "GetPositionOutput", "Timestamp"),
            type = "string",
            name = "Timestamp",
            target_id = prelude.String.id,
        }),
    },
})

M.GetPositionConfigurationInput = schema.new({
    id = id.from(_N, "GetPositionConfigurationInput"),
    type = "structure",
    members = {
        ResourceIdentifier = schema.new({
            id = id.from(_N, "GetPositionConfigurationInput", "ResourceIdentifier"),
            type = "string",
            name = "ResourceIdentifier",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
        ResourceType = schema.new({
            id = id.from(_N, "GetPositionConfigurationInput", "ResourceType"),
            type = "string",
            name = "ResourceType",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_QUERY] = { name = "resourceType" },
            },
        }),
    },
})

M.SemtechGnssDetail = schema.new({
    id = id.from(_N, "SemtechGnssDetail"),
    type = "structure",
    members = {
        Provider = schema.new({
            id = id.from(_N, "SemtechGnssDetail", "Provider"),
            type = "string",
            name = "Provider",
            target_id = prelude.String.id,
        }),
        Type = schema.new({
            id = id.from(_N, "SemtechGnssDetail", "Type"),
            type = "string",
            name = "Type",
            target_id = prelude.String.id,
        }),
        Status = schema.new({
            id = id.from(_N, "SemtechGnssDetail", "Status"),
            type = "string",
            name = "Status",
            target_id = prelude.String.id,
        }),
        Fec = schema.new({
            id = id.from(_N, "SemtechGnssDetail", "Fec"),
            type = "string",
            name = "Fec",
            target_id = prelude.String.id,
        }),
    },
})

M.PositionSolverDetails = schema.new({
    id = id.from(_N, "PositionSolverDetails"),
    type = "structure",
    members = {
        SemtechGnss = schema.new({
            id = id.from(_N, "PositionSolverDetails", "SemtechGnss"),
            type = "structure",
            name = "SemtechGnss",
            target_id = id.from(_N, "SemtechGnssDetail"),
            target = M.SemtechGnssDetail,
        }),
    },
})

M.GetPositionConfigurationOutput = schema.new({
    id = id.from(_N, "GetPositionConfigurationOutput"),
    type = "structure",
    members = {
        Solvers = schema.new({
            id = id.from(_N, "GetPositionConfigurationOutput", "Solvers"),
            type = "structure",
            name = "Solvers",
            target_id = id.from(_N, "PositionSolverDetails"),
            target = M.PositionSolverDetails,
        }),
        Destination = schema.new({
            id = id.from(_N, "GetPositionConfigurationOutput", "Destination"),
            type = "string",
            name = "Destination",
            target_id = prelude.String.id,
        }),
    },
})

M.Gnss = schema.new({
    id = id.from(_N, "Gnss"),
    type = "structure",
    members = {
        Payload = schema.new({
            id = id.from(_N, "Gnss", "Payload"),
            type = "string",
            name = "Payload",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        CaptureTime = schema.new({
            id = id.from(_N, "Gnss", "CaptureTime"),
            type = "float",
            name = "CaptureTime",
            target_id = prelude.Float.id,
        }),
        CaptureTimeAccuracy = schema.new({
            id = id.from(_N, "Gnss", "CaptureTimeAccuracy"),
            type = "float",
            name = "CaptureTimeAccuracy",
            target_id = prelude.Float.id,
        }),
        AssistPosition = schema.new({
            id = id.from(_N, "Gnss", "AssistPosition"),
            type = "list",
            name = "AssistPosition",
            target_id = prelude.Document.id,
            list_member = prelude.Float,
        }),
        AssistAltitude = schema.new({
            id = id.from(_N, "Gnss", "AssistAltitude"),
            type = "float",
            name = "AssistAltitude",
            target_id = prelude.Float.id,
        }),
        Use2DSolver = schema.new({
            id = id.from(_N, "Gnss", "Use2DSolver"),
            type = "boolean",
            name = "Use2DSolver",
            target_id = prelude.Boolean.id,
            traits = {
                [traits.DEFAULT] = { value = false },
            },
        }),
    },
})

M.Ip = schema.new({
    id = id.from(_N, "Ip"),
    type = "structure",
    members = {
        IpAddress = schema.new({
            id = id.from(_N, "Ip", "IpAddress"),
            type = "string",
            name = "IpAddress",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.WiFiAccessPoint = schema.new({
    id = id.from(_N, "WiFiAccessPoint"),
    type = "structure",
    members = {
        MacAddress = schema.new({
            id = id.from(_N, "WiFiAccessPoint", "MacAddress"),
            type = "string",
            name = "MacAddress",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        Rss = schema.new({
            id = id.from(_N, "WiFiAccessPoint", "Rss"),
            type = "integer",
            name = "Rss",
            target_id = prelude.Integer.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.GetPositionEstimateInput = schema.new({
    id = id.from(_N, "GetPositionEstimateInput"),
    type = "structure",
    members = {
        WiFiAccessPoints = schema.new({
            id = id.from(_N, "GetPositionEstimateInput", "WiFiAccessPoints"),
            type = "list",
            name = "WiFiAccessPoints",
            target_id = prelude.Document.id,
            list_member = M.WiFiAccessPoint,
        }),
        CellTowers = schema.new({
            id = id.from(_N, "GetPositionEstimateInput", "CellTowers"),
            type = "structure",
            name = "CellTowers",
            target_id = id.from(_N, "CellTowers"),
            target = M.CellTowers,
        }),
        Ip = schema.new({
            id = id.from(_N, "GetPositionEstimateInput", "Ip"),
            type = "structure",
            name = "Ip",
            target_id = id.from(_N, "Ip"),
            target = M.Ip,
        }),
        Gnss = schema.new({
            id = id.from(_N, "GetPositionEstimateInput", "Gnss"),
            type = "structure",
            name = "Gnss",
            target_id = id.from(_N, "Gnss"),
            target = M.Gnss,
        }),
        Timestamp = schema.new({
            id = id.from(_N, "GetPositionEstimateInput", "Timestamp"),
            type = "timestamp",
            name = "Timestamp",
            target_id = prelude.Timestamp.id,
        }),
        AdvancedConfiguration = schema.new({
            id = id.from(_N, "GetPositionEstimateInput", "AdvancedConfiguration"),
            type = "structure",
            name = "AdvancedConfiguration",
            target_id = id.from(_N, "AdvancedConfiguration"),
            target = M.AdvancedConfiguration,
        }),
    },
})

M.GetPositionEstimateOutput = schema.new({
    id = id.from(_N, "GetPositionEstimateOutput"),
    type = "structure",
    members = {
        GeoJsonPayload = schema.new({
            id = id.from(_N, "GetPositionEstimateOutput", "GeoJsonPayload"),
            type = "blob",
            name = "GeoJsonPayload",
            target_id = prelude.Blob.id,
            traits = {
                [traits.HTTP_PAYLOAD] = {},
            },
        }),
    },
})

M.GetResourceEventConfigurationInput = schema.new({
    id = id.from(_N, "GetResourceEventConfigurationInput"),
    type = "structure",
    members = {
        Identifier = schema.new({
            id = id.from(_N, "GetResourceEventConfigurationInput", "Identifier"),
            type = "string",
            name = "Identifier",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
        IdentifierType = schema.new({
            id = id.from(_N, "GetResourceEventConfigurationInput", "IdentifierType"),
            type = "string",
            name = "IdentifierType",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_QUERY] = { name = "identifierType" },
            },
        }),
        PartnerType = schema.new({
            id = id.from(_N, "GetResourceEventConfigurationInput", "PartnerType"),
            type = "string",
            name = "PartnerType",
            target_id = prelude.String.id,
            traits = {
                [traits.HTTP_QUERY] = { name = "partnerType" },
            },
        }),
    },
})

M.GetResourceEventConfigurationOutput = schema.new({
    id = id.from(_N, "GetResourceEventConfigurationOutput"),
    type = "structure",
    members = {
        DeviceRegistrationState = schema.new({
            id = id.from(_N, "GetResourceEventConfigurationOutput", "DeviceRegistrationState"),
            type = "structure",
            name = "DeviceRegistrationState",
            target_id = id.from(_N, "DeviceRegistrationStateEventConfiguration"),
            target = M.DeviceRegistrationStateEventConfiguration,
        }),
        Proximity = schema.new({
            id = id.from(_N, "GetResourceEventConfigurationOutput", "Proximity"),
            type = "structure",
            name = "Proximity",
            target_id = id.from(_N, "ProximityEventConfiguration"),
            target = M.ProximityEventConfiguration,
        }),
        Join = schema.new({
            id = id.from(_N, "GetResourceEventConfigurationOutput", "Join"),
            type = "structure",
            name = "Join",
            target_id = id.from(_N, "JoinEventConfiguration"),
            target = M.JoinEventConfiguration,
        }),
        ConnectionStatus = schema.new({
            id = id.from(_N, "GetResourceEventConfigurationOutput", "ConnectionStatus"),
            type = "structure",
            name = "ConnectionStatus",
            target_id = id.from(_N, "ConnectionStatusEventConfiguration"),
            target = M.ConnectionStatusEventConfiguration,
        }),
        MessageDeliveryStatus = schema.new({
            id = id.from(_N, "GetResourceEventConfigurationOutput", "MessageDeliveryStatus"),
            type = "structure",
            name = "MessageDeliveryStatus",
            target_id = id.from(_N, "MessageDeliveryStatusEventConfiguration"),
            target = M.MessageDeliveryStatusEventConfiguration,
        }),
    },
})

M.GetResourceLogLevelInput = schema.new({
    id = id.from(_N, "GetResourceLogLevelInput"),
    type = "structure",
    members = {
        ResourceIdentifier = schema.new({
            id = id.from(_N, "GetResourceLogLevelInput", "ResourceIdentifier"),
            type = "string",
            name = "ResourceIdentifier",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
        ResourceType = schema.new({
            id = id.from(_N, "GetResourceLogLevelInput", "ResourceType"),
            type = "string",
            name = "ResourceType",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_QUERY] = { name = "resourceType" },
            },
        }),
    },
})

M.GetResourceLogLevelOutput = schema.new({
    id = id.from(_N, "GetResourceLogLevelOutput"),
    type = "structure",
    members = {
        LogLevel = schema.new({
            id = id.from(_N, "GetResourceLogLevelOutput", "LogLevel"),
            type = "string",
            name = "LogLevel",
            target_id = prelude.String.id,
        }),
    },
})

M.GetResourcePositionInput = schema.new({
    id = id.from(_N, "GetResourcePositionInput"),
    type = "structure",
    members = {
        ResourceIdentifier = schema.new({
            id = id.from(_N, "GetResourcePositionInput", "ResourceIdentifier"),
            type = "string",
            name = "ResourceIdentifier",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
        ResourceType = schema.new({
            id = id.from(_N, "GetResourcePositionInput", "ResourceType"),
            type = "string",
            name = "ResourceType",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_QUERY] = { name = "resourceType" },
            },
        }),
    },
})

M.GetResourcePositionOutput = schema.new({
    id = id.from(_N, "GetResourcePositionOutput"),
    type = "structure",
    members = {
        GeoJsonPayload = schema.new({
            id = id.from(_N, "GetResourcePositionOutput", "GeoJsonPayload"),
            type = "blob",
            name = "GeoJsonPayload",
            target_id = prelude.Blob.id,
            traits = {
                [traits.HTTP_PAYLOAD] = {},
            },
        }),
    },
})

M.GetServiceEndpointInput = schema.new({
    id = id.from(_N, "GetServiceEndpointInput"),
    type = "structure",
    members = {
        ServiceType = schema.new({
            id = id.from(_N, "GetServiceEndpointInput", "ServiceType"),
            type = "string",
            name = "ServiceType",
            target_id = prelude.String.id,
            traits = {
                [traits.HTTP_QUERY] = { name = "serviceType" },
            },
        }),
    },
})

M.GetServiceEndpointOutput = schema.new({
    id = id.from(_N, "GetServiceEndpointOutput"),
    type = "structure",
    members = {
        ServiceType = schema.new({
            id = id.from(_N, "GetServiceEndpointOutput", "ServiceType"),
            type = "string",
            name = "ServiceType",
            target_id = prelude.String.id,
        }),
        ServiceEndpoint = schema.new({
            id = id.from(_N, "GetServiceEndpointOutput", "ServiceEndpoint"),
            type = "string",
            name = "ServiceEndpoint",
            target_id = prelude.String.id,
        }),
        ServerTrust = schema.new({
            id = id.from(_N, "GetServiceEndpointOutput", "ServerTrust"),
            type = "string",
            name = "ServerTrust",
            target_id = prelude.String.id,
        }),
    },
})

M.GetServiceProfileInput = schema.new({
    id = id.from(_N, "GetServiceProfileInput"),
    type = "structure",
    members = {
        Id = schema.new({
            id = id.from(_N, "GetServiceProfileInput", "Id"),
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

M.LoRaWANGetServiceProfileInfo = schema.new({
    id = id.from(_N, "LoRaWANGetServiceProfileInfo"),
    type = "structure",
    members = {
        UlRate = schema.new({
            id = id.from(_N, "LoRaWANGetServiceProfileInfo", "UlRate"),
            type = "integer",
            name = "UlRate",
            target_id = prelude.Integer.id,
        }),
        UlBucketSize = schema.new({
            id = id.from(_N, "LoRaWANGetServiceProfileInfo", "UlBucketSize"),
            type = "integer",
            name = "UlBucketSize",
            target_id = prelude.Integer.id,
        }),
        UlRatePolicy = schema.new({
            id = id.from(_N, "LoRaWANGetServiceProfileInfo", "UlRatePolicy"),
            type = "string",
            name = "UlRatePolicy",
            target_id = prelude.String.id,
        }),
        DlRate = schema.new({
            id = id.from(_N, "LoRaWANGetServiceProfileInfo", "DlRate"),
            type = "integer",
            name = "DlRate",
            target_id = prelude.Integer.id,
        }),
        DlBucketSize = schema.new({
            id = id.from(_N, "LoRaWANGetServiceProfileInfo", "DlBucketSize"),
            type = "integer",
            name = "DlBucketSize",
            target_id = prelude.Integer.id,
        }),
        DlRatePolicy = schema.new({
            id = id.from(_N, "LoRaWANGetServiceProfileInfo", "DlRatePolicy"),
            type = "string",
            name = "DlRatePolicy",
            target_id = prelude.String.id,
        }),
        AddGwMetadata = schema.new({
            id = id.from(_N, "LoRaWANGetServiceProfileInfo", "AddGwMetadata"),
            type = "boolean",
            name = "AddGwMetadata",
            target_id = prelude.Boolean.id,
            traits = {
                [traits.DEFAULT] = { value = false },
            },
        }),
        DevStatusReqFreq = schema.new({
            id = id.from(_N, "LoRaWANGetServiceProfileInfo", "DevStatusReqFreq"),
            type = "integer",
            name = "DevStatusReqFreq",
            target_id = prelude.Integer.id,
        }),
        ReportDevStatusBattery = schema.new({
            id = id.from(_N, "LoRaWANGetServiceProfileInfo", "ReportDevStatusBattery"),
            type = "boolean",
            name = "ReportDevStatusBattery",
            target_id = prelude.Boolean.id,
            traits = {
                [traits.DEFAULT] = { value = false },
            },
        }),
        ReportDevStatusMargin = schema.new({
            id = id.from(_N, "LoRaWANGetServiceProfileInfo", "ReportDevStatusMargin"),
            type = "boolean",
            name = "ReportDevStatusMargin",
            target_id = prelude.Boolean.id,
            traits = {
                [traits.DEFAULT] = { value = false },
            },
        }),
        DrMin = schema.new({
            id = id.from(_N, "LoRaWANGetServiceProfileInfo", "DrMin"),
            type = "integer",
            name = "DrMin",
            target_id = prelude.Integer.id,
            traits = {
                [traits.DEFAULT] = { value = 0 },
            },
        }),
        DrMax = schema.new({
            id = id.from(_N, "LoRaWANGetServiceProfileInfo", "DrMax"),
            type = "integer",
            name = "DrMax",
            target_id = prelude.Integer.id,
            traits = {
                [traits.DEFAULT] = { value = 0 },
            },
        }),
        ChannelMask = schema.new({
            id = id.from(_N, "LoRaWANGetServiceProfileInfo", "ChannelMask"),
            type = "string",
            name = "ChannelMask",
            target_id = prelude.String.id,
        }),
        PrAllowed = schema.new({
            id = id.from(_N, "LoRaWANGetServiceProfileInfo", "PrAllowed"),
            type = "boolean",
            name = "PrAllowed",
            target_id = prelude.Boolean.id,
            traits = {
                [traits.DEFAULT] = { value = false },
            },
        }),
        HrAllowed = schema.new({
            id = id.from(_N, "LoRaWANGetServiceProfileInfo", "HrAllowed"),
            type = "boolean",
            name = "HrAllowed",
            target_id = prelude.Boolean.id,
            traits = {
                [traits.DEFAULT] = { value = false },
            },
        }),
        RaAllowed = schema.new({
            id = id.from(_N, "LoRaWANGetServiceProfileInfo", "RaAllowed"),
            type = "boolean",
            name = "RaAllowed",
            target_id = prelude.Boolean.id,
            traits = {
                [traits.DEFAULT] = { value = false },
            },
        }),
        NwkGeoLoc = schema.new({
            id = id.from(_N, "LoRaWANGetServiceProfileInfo", "NwkGeoLoc"),
            type = "boolean",
            name = "NwkGeoLoc",
            target_id = prelude.Boolean.id,
            traits = {
                [traits.DEFAULT] = { value = false },
            },
        }),
        TargetPer = schema.new({
            id = id.from(_N, "LoRaWANGetServiceProfileInfo", "TargetPer"),
            type = "integer",
            name = "TargetPer",
            target_id = prelude.Integer.id,
            traits = {
                [traits.DEFAULT] = { value = 0 },
            },
        }),
        MinGwDiversity = schema.new({
            id = id.from(_N, "LoRaWANGetServiceProfileInfo", "MinGwDiversity"),
            type = "integer",
            name = "MinGwDiversity",
            target_id = prelude.Integer.id,
        }),
        TxPowerIndexMin = schema.new({
            id = id.from(_N, "LoRaWANGetServiceProfileInfo", "TxPowerIndexMin"),
            type = "integer",
            name = "TxPowerIndexMin",
            target_id = prelude.Integer.id,
        }),
        TxPowerIndexMax = schema.new({
            id = id.from(_N, "LoRaWANGetServiceProfileInfo", "TxPowerIndexMax"),
            type = "integer",
            name = "TxPowerIndexMax",
            target_id = prelude.Integer.id,
        }),
        NbTransMin = schema.new({
            id = id.from(_N, "LoRaWANGetServiceProfileInfo", "NbTransMin"),
            type = "integer",
            name = "NbTransMin",
            target_id = prelude.Integer.id,
        }),
        NbTransMax = schema.new({
            id = id.from(_N, "LoRaWANGetServiceProfileInfo", "NbTransMax"),
            type = "integer",
            name = "NbTransMax",
            target_id = prelude.Integer.id,
        }),
    },
})

M.GetServiceProfileOutput = schema.new({
    id = id.from(_N, "GetServiceProfileOutput"),
    type = "structure",
    members = {
        Arn = schema.new({
            id = id.from(_N, "GetServiceProfileOutput", "Arn"),
            type = "string",
            name = "Arn",
            target_id = prelude.String.id,
        }),
        Name = schema.new({
            id = id.from(_N, "GetServiceProfileOutput", "Name"),
            type = "string",
            name = "Name",
            target_id = prelude.String.id,
        }),
        Id = schema.new({
            id = id.from(_N, "GetServiceProfileOutput", "Id"),
            type = "string",
            name = "Id",
            target_id = prelude.String.id,
        }),
        LoRaWAN = schema.new({
            id = id.from(_N, "GetServiceProfileOutput", "LoRaWAN"),
            type = "structure",
            name = "LoRaWAN",
            target_id = id.from(_N, "LoRaWANGetServiceProfileInfo"),
            target = M.LoRaWANGetServiceProfileInfo,
        }),
    },
})

M.GetWirelessDeviceInput = schema.new({
    id = id.from(_N, "GetWirelessDeviceInput"),
    type = "structure",
    members = {
        Identifier = schema.new({
            id = id.from(_N, "GetWirelessDeviceInput", "Identifier"),
            type = "string",
            name = "Identifier",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
        IdentifierType = schema.new({
            id = id.from(_N, "GetWirelessDeviceInput", "IdentifierType"),
            type = "string",
            name = "IdentifierType",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_QUERY] = { name = "identifierType" },
            },
        }),
    },
})

M.SidewalkDevice = schema.new({
    id = id.from(_N, "SidewalkDevice"),
    type = "structure",
    members = {
        AmazonId = schema.new({
            id = id.from(_N, "SidewalkDevice", "AmazonId"),
            type = "string",
            name = "AmazonId",
            target_id = prelude.String.id,
        }),
        SidewalkId = schema.new({
            id = id.from(_N, "SidewalkDevice", "SidewalkId"),
            type = "string",
            name = "SidewalkId",
            target_id = prelude.String.id,
        }),
        SidewalkManufacturingSn = schema.new({
            id = id.from(_N, "SidewalkDevice", "SidewalkManufacturingSn"),
            type = "string",
            name = "SidewalkManufacturingSn",
            target_id = prelude.String.id,
        }),
        DeviceCertificates = schema.new({
            id = id.from(_N, "SidewalkDevice", "DeviceCertificates"),
            type = "list",
            name = "DeviceCertificates",
            target_id = prelude.Document.id,
            list_member = M.CertificateList,
        }),
        PrivateKeys = schema.new({
            id = id.from(_N, "SidewalkDevice", "PrivateKeys"),
            type = "list",
            name = "PrivateKeys",
            target_id = prelude.Document.id,
            list_member = M.CertificateList,
        }),
        DeviceProfileId = schema.new({
            id = id.from(_N, "SidewalkDevice", "DeviceProfileId"),
            type = "string",
            name = "DeviceProfileId",
            target_id = prelude.String.id,
        }),
        CertificateId = schema.new({
            id = id.from(_N, "SidewalkDevice", "CertificateId"),
            type = "string",
            name = "CertificateId",
            target_id = prelude.String.id,
        }),
        Status = schema.new({
            id = id.from(_N, "SidewalkDevice", "Status"),
            type = "string",
            name = "Status",
            target_id = prelude.String.id,
        }),
        Positioning = schema.new({
            id = id.from(_N, "SidewalkDevice", "Positioning"),
            type = "structure",
            name = "Positioning",
            target_id = id.from(_N, "SidewalkPositioning"),
            target = M.SidewalkPositioning,
        }),
    },
})

M.GetWirelessDeviceOutput = schema.new({
    id = id.from(_N, "GetWirelessDeviceOutput"),
    type = "structure",
    members = {
        Type = schema.new({
            id = id.from(_N, "GetWirelessDeviceOutput", "Type"),
            type = "string",
            name = "Type",
            target_id = prelude.String.id,
        }),
        Name = schema.new({
            id = id.from(_N, "GetWirelessDeviceOutput", "Name"),
            type = "string",
            name = "Name",
            target_id = prelude.String.id,
        }),
        Description = schema.new({
            id = id.from(_N, "GetWirelessDeviceOutput", "Description"),
            type = "string",
            name = "Description",
            target_id = prelude.String.id,
        }),
        DestinationName = schema.new({
            id = id.from(_N, "GetWirelessDeviceOutput", "DestinationName"),
            type = "string",
            name = "DestinationName",
            target_id = prelude.String.id,
        }),
        Id = schema.new({
            id = id.from(_N, "GetWirelessDeviceOutput", "Id"),
            type = "string",
            name = "Id",
            target_id = prelude.String.id,
        }),
        Arn = schema.new({
            id = id.from(_N, "GetWirelessDeviceOutput", "Arn"),
            type = "string",
            name = "Arn",
            target_id = prelude.String.id,
        }),
        ThingName = schema.new({
            id = id.from(_N, "GetWirelessDeviceOutput", "ThingName"),
            type = "string",
            name = "ThingName",
            target_id = prelude.String.id,
        }),
        ThingArn = schema.new({
            id = id.from(_N, "GetWirelessDeviceOutput", "ThingArn"),
            type = "string",
            name = "ThingArn",
            target_id = prelude.String.id,
        }),
        LoRaWAN = schema.new({
            id = id.from(_N, "GetWirelessDeviceOutput", "LoRaWAN"),
            type = "structure",
            name = "LoRaWAN",
            target_id = id.from(_N, "LoRaWANDevice"),
            target = M.LoRaWANDevice,
        }),
        Sidewalk = schema.new({
            id = id.from(_N, "GetWirelessDeviceOutput", "Sidewalk"),
            type = "structure",
            name = "Sidewalk",
            target_id = id.from(_N, "SidewalkDevice"),
            target = M.SidewalkDevice,
        }),
        Positioning = schema.new({
            id = id.from(_N, "GetWirelessDeviceOutput", "Positioning"),
            type = "string",
            name = "Positioning",
            target_id = prelude.String.id,
        }),
    },
})

M.GetWirelessDeviceImportTaskInput = schema.new({
    id = id.from(_N, "GetWirelessDeviceImportTaskInput"),
    type = "structure",
    members = {
        Id = schema.new({
            id = id.from(_N, "GetWirelessDeviceImportTaskInput", "Id"),
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

M.SidewalkGetStartImportInfo = schema.new({
    id = id.from(_N, "SidewalkGetStartImportInfo"),
    type = "structure",
    members = {
        DeviceCreationFileList = schema.new({
            id = id.from(_N, "SidewalkGetStartImportInfo", "DeviceCreationFileList"),
            type = "list",
            name = "DeviceCreationFileList",
            target_id = prelude.Document.id,
            list_member = prelude.String,
        }),
        Role = schema.new({
            id = id.from(_N, "SidewalkGetStartImportInfo", "Role"),
            type = "string",
            name = "Role",
            target_id = prelude.String.id,
        }),
        Positioning = schema.new({
            id = id.from(_N, "SidewalkGetStartImportInfo", "Positioning"),
            type = "structure",
            name = "Positioning",
            target_id = id.from(_N, "SidewalkPositioning"),
            target = M.SidewalkPositioning,
        }),
    },
})

M.GetWirelessDeviceImportTaskOutput = schema.new({
    id = id.from(_N, "GetWirelessDeviceImportTaskOutput"),
    type = "structure",
    members = {
        Id = schema.new({
            id = id.from(_N, "GetWirelessDeviceImportTaskOutput", "Id"),
            type = "string",
            name = "Id",
            target_id = prelude.String.id,
        }),
        Arn = schema.new({
            id = id.from(_N, "GetWirelessDeviceImportTaskOutput", "Arn"),
            type = "string",
            name = "Arn",
            target_id = prelude.String.id,
        }),
        DestinationName = schema.new({
            id = id.from(_N, "GetWirelessDeviceImportTaskOutput", "DestinationName"),
            type = "string",
            name = "DestinationName",
            target_id = prelude.String.id,
        }),
        Positioning = schema.new({
            id = id.from(_N, "GetWirelessDeviceImportTaskOutput", "Positioning"),
            type = "string",
            name = "Positioning",
            target_id = prelude.String.id,
        }),
        Sidewalk = schema.new({
            id = id.from(_N, "GetWirelessDeviceImportTaskOutput", "Sidewalk"),
            type = "structure",
            name = "Sidewalk",
            target_id = id.from(_N, "SidewalkGetStartImportInfo"),
            target = M.SidewalkGetStartImportInfo,
        }),
        CreationTime = schema.new({
            id = id.from(_N, "GetWirelessDeviceImportTaskOutput", "CreationTime"),
            type = "timestamp",
            name = "CreationTime",
            target_id = prelude.Timestamp.id,
            traits = {
                [traits.TIMESTAMP_FORMAT] = { format = "date-time" },
            },
        }),
        Status = schema.new({
            id = id.from(_N, "GetWirelessDeviceImportTaskOutput", "Status"),
            type = "string",
            name = "Status",
            target_id = prelude.String.id,
        }),
        StatusReason = schema.new({
            id = id.from(_N, "GetWirelessDeviceImportTaskOutput", "StatusReason"),
            type = "string",
            name = "StatusReason",
            target_id = prelude.String.id,
        }),
        InitializedImportedDeviceCount = schema.new({
            id = id.from(_N, "GetWirelessDeviceImportTaskOutput", "InitializedImportedDeviceCount"),
            type = "long",
            name = "InitializedImportedDeviceCount",
            target_id = prelude.Long.id,
        }),
        PendingImportedDeviceCount = schema.new({
            id = id.from(_N, "GetWirelessDeviceImportTaskOutput", "PendingImportedDeviceCount"),
            type = "long",
            name = "PendingImportedDeviceCount",
            target_id = prelude.Long.id,
        }),
        OnboardedImportedDeviceCount = schema.new({
            id = id.from(_N, "GetWirelessDeviceImportTaskOutput", "OnboardedImportedDeviceCount"),
            type = "long",
            name = "OnboardedImportedDeviceCount",
            target_id = prelude.Long.id,
        }),
        FailedImportedDeviceCount = schema.new({
            id = id.from(_N, "GetWirelessDeviceImportTaskOutput", "FailedImportedDeviceCount"),
            type = "long",
            name = "FailedImportedDeviceCount",
            target_id = prelude.Long.id,
        }),
    },
})

M.GetWirelessDeviceStatisticsInput = schema.new({
    id = id.from(_N, "GetWirelessDeviceStatisticsInput"),
    type = "structure",
    members = {
        WirelessDeviceId = schema.new({
            id = id.from(_N, "GetWirelessDeviceStatisticsInput", "WirelessDeviceId"),
            type = "string",
            name = "WirelessDeviceId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
    },
})

M.LoRaWANGatewayMetadata = schema.new({
    id = id.from(_N, "LoRaWANGatewayMetadata"),
    type = "structure",
    members = {
        GatewayEui = schema.new({
            id = id.from(_N, "LoRaWANGatewayMetadata", "GatewayEui"),
            type = "string",
            name = "GatewayEui",
            target_id = prelude.String.id,
        }),
        Snr = schema.new({
            id = id.from(_N, "LoRaWANGatewayMetadata", "Snr"),
            type = "double",
            name = "Snr",
            target_id = prelude.Double.id,
        }),
        Rssi = schema.new({
            id = id.from(_N, "LoRaWANGatewayMetadata", "Rssi"),
            type = "double",
            name = "Rssi",
            target_id = prelude.Double.id,
        }),
    },
})

M.LoRaWANPublicGatewayMetadata = schema.new({
    id = id.from(_N, "LoRaWANPublicGatewayMetadata"),
    type = "structure",
    members = {
        ProviderNetId = schema.new({
            id = id.from(_N, "LoRaWANPublicGatewayMetadata", "ProviderNetId"),
            type = "string",
            name = "ProviderNetId",
            target_id = prelude.String.id,
        }),
        Id = schema.new({
            id = id.from(_N, "LoRaWANPublicGatewayMetadata", "Id"),
            type = "string",
            name = "Id",
            target_id = prelude.String.id,
        }),
        Rssi = schema.new({
            id = id.from(_N, "LoRaWANPublicGatewayMetadata", "Rssi"),
            type = "double",
            name = "Rssi",
            target_id = prelude.Double.id,
        }),
        Snr = schema.new({
            id = id.from(_N, "LoRaWANPublicGatewayMetadata", "Snr"),
            type = "double",
            name = "Snr",
            target_id = prelude.Double.id,
        }),
        RfRegion = schema.new({
            id = id.from(_N, "LoRaWANPublicGatewayMetadata", "RfRegion"),
            type = "string",
            name = "RfRegion",
            target_id = prelude.String.id,
        }),
        DlAllowed = schema.new({
            id = id.from(_N, "LoRaWANPublicGatewayMetadata", "DlAllowed"),
            type = "boolean",
            name = "DlAllowed",
            target_id = prelude.Boolean.id,
        }),
    },
})

M.LoRaWANDeviceMetadata = schema.new({
    id = id.from(_N, "LoRaWANDeviceMetadata"),
    type = "structure",
    members = {
        DevEui = schema.new({
            id = id.from(_N, "LoRaWANDeviceMetadata", "DevEui"),
            type = "string",
            name = "DevEui",
            target_id = prelude.String.id,
        }),
        FPort = schema.new({
            id = id.from(_N, "LoRaWANDeviceMetadata", "FPort"),
            type = "integer",
            name = "FPort",
            target_id = prelude.Integer.id,
        }),
        DataRate = schema.new({
            id = id.from(_N, "LoRaWANDeviceMetadata", "DataRate"),
            type = "integer",
            name = "DataRate",
            target_id = prelude.Integer.id,
        }),
        Frequency = schema.new({
            id = id.from(_N, "LoRaWANDeviceMetadata", "Frequency"),
            type = "integer",
            name = "Frequency",
            target_id = prelude.Integer.id,
        }),
        Timestamp = schema.new({
            id = id.from(_N, "LoRaWANDeviceMetadata", "Timestamp"),
            type = "string",
            name = "Timestamp",
            target_id = prelude.String.id,
        }),
        Gateways = schema.new({
            id = id.from(_N, "LoRaWANDeviceMetadata", "Gateways"),
            type = "list",
            name = "Gateways",
            target_id = prelude.Document.id,
            list_member = M.LoRaWANGatewayMetadata,
        }),
        PublicGateways = schema.new({
            id = id.from(_N, "LoRaWANDeviceMetadata", "PublicGateways"),
            type = "list",
            name = "PublicGateways",
            target_id = prelude.Document.id,
            list_member = M.LoRaWANPublicGatewayMetadata,
        }),
    },
})

M.SidewalkDeviceMetadata = schema.new({
    id = id.from(_N, "SidewalkDeviceMetadata"),
    type = "structure",
    members = {
        Rssi = schema.new({
            id = id.from(_N, "SidewalkDeviceMetadata", "Rssi"),
            type = "integer",
            name = "Rssi",
            target_id = prelude.Integer.id,
        }),
        BatteryLevel = schema.new({
            id = id.from(_N, "SidewalkDeviceMetadata", "BatteryLevel"),
            type = "string",
            name = "BatteryLevel",
            target_id = prelude.String.id,
        }),
        Event = schema.new({
            id = id.from(_N, "SidewalkDeviceMetadata", "Event"),
            type = "string",
            name = "Event",
            target_id = prelude.String.id,
        }),
        DeviceState = schema.new({
            id = id.from(_N, "SidewalkDeviceMetadata", "DeviceState"),
            type = "string",
            name = "DeviceState",
            target_id = prelude.String.id,
        }),
    },
})

M.GetWirelessDeviceStatisticsOutput = schema.new({
    id = id.from(_N, "GetWirelessDeviceStatisticsOutput"),
    type = "structure",
    members = {
        WirelessDeviceId = schema.new({
            id = id.from(_N, "GetWirelessDeviceStatisticsOutput", "WirelessDeviceId"),
            type = "string",
            name = "WirelessDeviceId",
            target_id = prelude.String.id,
        }),
        LastUplinkReceivedAt = schema.new({
            id = id.from(_N, "GetWirelessDeviceStatisticsOutput", "LastUplinkReceivedAt"),
            type = "string",
            name = "LastUplinkReceivedAt",
            target_id = prelude.String.id,
        }),
        LoRaWAN = schema.new({
            id = id.from(_N, "GetWirelessDeviceStatisticsOutput", "LoRaWAN"),
            type = "structure",
            name = "LoRaWAN",
            target_id = id.from(_N, "LoRaWANDeviceMetadata"),
            target = M.LoRaWANDeviceMetadata,
        }),
        Sidewalk = schema.new({
            id = id.from(_N, "GetWirelessDeviceStatisticsOutput", "Sidewalk"),
            type = "structure",
            name = "Sidewalk",
            target_id = id.from(_N, "SidewalkDeviceMetadata"),
            target = M.SidewalkDeviceMetadata,
        }),
    },
})

M.GetWirelessGatewayInput = schema.new({
    id = id.from(_N, "GetWirelessGatewayInput"),
    type = "structure",
    members = {
        Identifier = schema.new({
            id = id.from(_N, "GetWirelessGatewayInput", "Identifier"),
            type = "string",
            name = "Identifier",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
        IdentifierType = schema.new({
            id = id.from(_N, "GetWirelessGatewayInput", "IdentifierType"),
            type = "string",
            name = "IdentifierType",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_QUERY] = { name = "identifierType" },
            },
        }),
    },
})

M.GetWirelessGatewayOutput = schema.new({
    id = id.from(_N, "GetWirelessGatewayOutput"),
    type = "structure",
    members = {
        Name = schema.new({
            id = id.from(_N, "GetWirelessGatewayOutput", "Name"),
            type = "string",
            name = "Name",
            target_id = prelude.String.id,
        }),
        Id = schema.new({
            id = id.from(_N, "GetWirelessGatewayOutput", "Id"),
            type = "string",
            name = "Id",
            target_id = prelude.String.id,
        }),
        Description = schema.new({
            id = id.from(_N, "GetWirelessGatewayOutput", "Description"),
            type = "string",
            name = "Description",
            target_id = prelude.String.id,
        }),
        LoRaWAN = schema.new({
            id = id.from(_N, "GetWirelessGatewayOutput", "LoRaWAN"),
            type = "structure",
            name = "LoRaWAN",
            target_id = id.from(_N, "LoRaWANGateway"),
            target = M.LoRaWANGateway,
        }),
        Arn = schema.new({
            id = id.from(_N, "GetWirelessGatewayOutput", "Arn"),
            type = "string",
            name = "Arn",
            target_id = prelude.String.id,
        }),
        ThingName = schema.new({
            id = id.from(_N, "GetWirelessGatewayOutput", "ThingName"),
            type = "string",
            name = "ThingName",
            target_id = prelude.String.id,
        }),
        ThingArn = schema.new({
            id = id.from(_N, "GetWirelessGatewayOutput", "ThingArn"),
            type = "string",
            name = "ThingArn",
            target_id = prelude.String.id,
        }),
    },
})

M.GetWirelessGatewayCertificateInput = schema.new({
    id = id.from(_N, "GetWirelessGatewayCertificateInput"),
    type = "structure",
    members = {
        Id = schema.new({
            id = id.from(_N, "GetWirelessGatewayCertificateInput", "Id"),
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

M.GetWirelessGatewayCertificateOutput = schema.new({
    id = id.from(_N, "GetWirelessGatewayCertificateOutput"),
    type = "structure",
    members = {
        IotCertificateId = schema.new({
            id = id.from(_N, "GetWirelessGatewayCertificateOutput", "IotCertificateId"),
            type = "string",
            name = "IotCertificateId",
            target_id = prelude.String.id,
        }),
        LoRaWANNetworkServerCertificateId = schema.new({
            id = id.from(_N, "GetWirelessGatewayCertificateOutput", "LoRaWANNetworkServerCertificateId"),
            type = "string",
            name = "LoRaWANNetworkServerCertificateId",
            target_id = prelude.String.id,
        }),
    },
})

M.GetWirelessGatewayFirmwareInformationInput = schema.new({
    id = id.from(_N, "GetWirelessGatewayFirmwareInformationInput"),
    type = "structure",
    members = {
        Id = schema.new({
            id = id.from(_N, "GetWirelessGatewayFirmwareInformationInput", "Id"),
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

M.LoRaWANGatewayCurrentVersion = schema.new({
    id = id.from(_N, "LoRaWANGatewayCurrentVersion"),
    type = "structure",
    members = {
        CurrentVersion = schema.new({
            id = id.from(_N, "LoRaWANGatewayCurrentVersion", "CurrentVersion"),
            type = "structure",
            name = "CurrentVersion",
            target_id = id.from(_N, "LoRaWANGatewayVersion"),
            target = M.LoRaWANGatewayVersion,
        }),
    },
})

M.GetWirelessGatewayFirmwareInformationOutput = schema.new({
    id = id.from(_N, "GetWirelessGatewayFirmwareInformationOutput"),
    type = "structure",
    members = {
        LoRaWAN = schema.new({
            id = id.from(_N, "GetWirelessGatewayFirmwareInformationOutput", "LoRaWAN"),
            type = "structure",
            name = "LoRaWAN",
            target_id = id.from(_N, "LoRaWANGatewayCurrentVersion"),
            target = M.LoRaWANGatewayCurrentVersion,
        }),
    },
})

M.GetWirelessGatewayStatisticsInput = schema.new({
    id = id.from(_N, "GetWirelessGatewayStatisticsInput"),
    type = "structure",
    members = {
        WirelessGatewayId = schema.new({
            id = id.from(_N, "GetWirelessGatewayStatisticsInput", "WirelessGatewayId"),
            type = "string",
            name = "WirelessGatewayId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
    },
})

M.GetWirelessGatewayStatisticsOutput = schema.new({
    id = id.from(_N, "GetWirelessGatewayStatisticsOutput"),
    type = "structure",
    members = {
        WirelessGatewayId = schema.new({
            id = id.from(_N, "GetWirelessGatewayStatisticsOutput", "WirelessGatewayId"),
            type = "string",
            name = "WirelessGatewayId",
            target_id = prelude.String.id,
        }),
        LastUplinkReceivedAt = schema.new({
            id = id.from(_N, "GetWirelessGatewayStatisticsOutput", "LastUplinkReceivedAt"),
            type = "string",
            name = "LastUplinkReceivedAt",
            target_id = prelude.String.id,
        }),
        ConnectionStatus = schema.new({
            id = id.from(_N, "GetWirelessGatewayStatisticsOutput", "ConnectionStatus"),
            type = "string",
            name = "ConnectionStatus",
            target_id = prelude.String.id,
        }),
    },
})

M.GetWirelessGatewayTaskInput = schema.new({
    id = id.from(_N, "GetWirelessGatewayTaskInput"),
    type = "structure",
    members = {
        Id = schema.new({
            id = id.from(_N, "GetWirelessGatewayTaskInput", "Id"),
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

M.GetWirelessGatewayTaskOutput = schema.new({
    id = id.from(_N, "GetWirelessGatewayTaskOutput"),
    type = "structure",
    members = {
        WirelessGatewayId = schema.new({
            id = id.from(_N, "GetWirelessGatewayTaskOutput", "WirelessGatewayId"),
            type = "string",
            name = "WirelessGatewayId",
            target_id = prelude.String.id,
        }),
        WirelessGatewayTaskDefinitionId = schema.new({
            id = id.from(_N, "GetWirelessGatewayTaskOutput", "WirelessGatewayTaskDefinitionId"),
            type = "string",
            name = "WirelessGatewayTaskDefinitionId",
            target_id = prelude.String.id,
        }),
        LastUplinkReceivedAt = schema.new({
            id = id.from(_N, "GetWirelessGatewayTaskOutput", "LastUplinkReceivedAt"),
            type = "string",
            name = "LastUplinkReceivedAt",
            target_id = prelude.String.id,
        }),
        TaskCreatedAt = schema.new({
            id = id.from(_N, "GetWirelessGatewayTaskOutput", "TaskCreatedAt"),
            type = "string",
            name = "TaskCreatedAt",
            target_id = prelude.String.id,
        }),
        Status = schema.new({
            id = id.from(_N, "GetWirelessGatewayTaskOutput", "Status"),
            type = "string",
            name = "Status",
            target_id = prelude.String.id,
        }),
    },
})

M.GetWirelessGatewayTaskDefinitionInput = schema.new({
    id = id.from(_N, "GetWirelessGatewayTaskDefinitionInput"),
    type = "structure",
    members = {
        Id = schema.new({
            id = id.from(_N, "GetWirelessGatewayTaskDefinitionInput", "Id"),
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

M.GetWirelessGatewayTaskDefinitionOutput = schema.new({
    id = id.from(_N, "GetWirelessGatewayTaskDefinitionOutput"),
    type = "structure",
    members = {
        AutoCreateTasks = schema.new({
            id = id.from(_N, "GetWirelessGatewayTaskDefinitionOutput", "AutoCreateTasks"),
            type = "boolean",
            name = "AutoCreateTasks",
            target_id = prelude.Boolean.id,
            traits = {
                [traits.DEFAULT] = { value = false },
            },
        }),
        Name = schema.new({
            id = id.from(_N, "GetWirelessGatewayTaskDefinitionOutput", "Name"),
            type = "string",
            name = "Name",
            target_id = prelude.String.id,
        }),
        Update = schema.new({
            id = id.from(_N, "GetWirelessGatewayTaskDefinitionOutput", "Update"),
            type = "structure",
            name = "Update",
            target_id = id.from(_N, "UpdateWirelessGatewayTaskCreate"),
            target = M.UpdateWirelessGatewayTaskCreate,
        }),
        Arn = schema.new({
            id = id.from(_N, "GetWirelessGatewayTaskDefinitionOutput", "Arn"),
            type = "string",
            name = "Arn",
            target_id = prelude.String.id,
        }),
    },
})

M.ImportedSidewalkDevice = schema.new({
    id = id.from(_N, "ImportedSidewalkDevice"),
    type = "structure",
    members = {
        SidewalkManufacturingSn = schema.new({
            id = id.from(_N, "ImportedSidewalkDevice", "SidewalkManufacturingSn"),
            type = "string",
            name = "SidewalkManufacturingSn",
            target_id = prelude.String.id,
        }),
        OnboardingStatus = schema.new({
            id = id.from(_N, "ImportedSidewalkDevice", "OnboardingStatus"),
            type = "string",
            name = "OnboardingStatus",
            target_id = prelude.String.id,
        }),
        OnboardingStatusReason = schema.new({
            id = id.from(_N, "ImportedSidewalkDevice", "OnboardingStatusReason"),
            type = "string",
            name = "OnboardingStatusReason",
            target_id = prelude.String.id,
        }),
        LastUpdateTime = schema.new({
            id = id.from(_N, "ImportedSidewalkDevice", "LastUpdateTime"),
            type = "timestamp",
            name = "LastUpdateTime",
            target_id = prelude.Timestamp.id,
            traits = {
                [traits.TIMESTAMP_FORMAT] = { format = "date-time" },
            },
        }),
    },
})

M.ImportedWirelessDevice = schema.new({
    id = id.from(_N, "ImportedWirelessDevice"),
    type = "structure",
    members = {
        Sidewalk = schema.new({
            id = id.from(_N, "ImportedWirelessDevice", "Sidewalk"),
            type = "structure",
            name = "Sidewalk",
            target_id = id.from(_N, "ImportedSidewalkDevice"),
            target = M.ImportedSidewalkDevice,
        }),
    },
})

M.ListDestinationsInput = schema.new({
    id = id.from(_N, "ListDestinationsInput"),
    type = "structure",
    members = {
        MaxResults = schema.new({
            id = id.from(_N, "ListDestinationsInput", "MaxResults"),
            type = "integer",
            name = "MaxResults",
            target_id = prelude.Integer.id,
            traits = {
                [traits.DEFAULT] = { value = 0 },
                [traits.HTTP_QUERY] = { name = "maxResults" },
            },
        }),
        NextToken = schema.new({
            id = id.from(_N, "ListDestinationsInput", "NextToken"),
            type = "string",
            name = "NextToken",
            target_id = prelude.String.id,
            traits = {
                [traits.HTTP_QUERY] = { name = "nextToken" },
            },
        }),
    },
})

M.ListDestinationsOutput = schema.new({
    id = id.from(_N, "ListDestinationsOutput"),
    type = "structure",
    members = {
        NextToken = schema.new({
            id = id.from(_N, "ListDestinationsOutput", "NextToken"),
            type = "string",
            name = "NextToken",
            target_id = prelude.String.id,
        }),
        DestinationList = schema.new({
            id = id.from(_N, "ListDestinationsOutput", "DestinationList"),
            type = "list",
            name = "DestinationList",
            target_id = prelude.Document.id,
            list_member = M.Destinations,
        }),
    },
})

M.ListDeviceProfilesInput = schema.new({
    id = id.from(_N, "ListDeviceProfilesInput"),
    type = "structure",
    members = {
        NextToken = schema.new({
            id = id.from(_N, "ListDeviceProfilesInput", "NextToken"),
            type = "string",
            name = "NextToken",
            target_id = prelude.String.id,
            traits = {
                [traits.HTTP_QUERY] = { name = "nextToken" },
            },
        }),
        MaxResults = schema.new({
            id = id.from(_N, "ListDeviceProfilesInput", "MaxResults"),
            type = "integer",
            name = "MaxResults",
            target_id = prelude.Integer.id,
            traits = {
                [traits.DEFAULT] = { value = 0 },
                [traits.HTTP_QUERY] = { name = "maxResults" },
            },
        }),
        DeviceProfileType = schema.new({
            id = id.from(_N, "ListDeviceProfilesInput", "DeviceProfileType"),
            type = "string",
            name = "DeviceProfileType",
            target_id = prelude.String.id,
            traits = {
                [traits.HTTP_QUERY] = { name = "deviceProfileType" },
            },
        }),
    },
})

M.ListDeviceProfilesOutput = schema.new({
    id = id.from(_N, "ListDeviceProfilesOutput"),
    type = "structure",
    members = {
        NextToken = schema.new({
            id = id.from(_N, "ListDeviceProfilesOutput", "NextToken"),
            type = "string",
            name = "NextToken",
            target_id = prelude.String.id,
        }),
        DeviceProfileList = schema.new({
            id = id.from(_N, "ListDeviceProfilesOutput", "DeviceProfileList"),
            type = "list",
            name = "DeviceProfileList",
            target_id = prelude.Document.id,
            list_member = M.DeviceProfile,
        }),
    },
})

M.ListDevicesForWirelessDeviceImportTaskInput = schema.new({
    id = id.from(_N, "ListDevicesForWirelessDeviceImportTaskInput"),
    type = "structure",
    members = {
        Id = schema.new({
            id = id.from(_N, "ListDevicesForWirelessDeviceImportTaskInput", "Id"),
            type = "string",
            name = "Id",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_QUERY] = { name = "id" },
            },
        }),
        MaxResults = schema.new({
            id = id.from(_N, "ListDevicesForWirelessDeviceImportTaskInput", "MaxResults"),
            type = "integer",
            name = "MaxResults",
            target_id = prelude.Integer.id,
            traits = {
                [traits.DEFAULT] = { value = 0 },
                [traits.HTTP_QUERY] = { name = "maxResults" },
            },
        }),
        NextToken = schema.new({
            id = id.from(_N, "ListDevicesForWirelessDeviceImportTaskInput", "NextToken"),
            type = "string",
            name = "NextToken",
            target_id = prelude.String.id,
            traits = {
                [traits.HTTP_QUERY] = { name = "nextToken" },
            },
        }),
        Status = schema.new({
            id = id.from(_N, "ListDevicesForWirelessDeviceImportTaskInput", "Status"),
            type = "string",
            name = "Status",
            target_id = prelude.String.id,
            traits = {
                [traits.HTTP_QUERY] = { name = "status" },
            },
        }),
    },
})

M.SidewalkListDevicesForImportInfo = schema.new({
    id = id.from(_N, "SidewalkListDevicesForImportInfo"),
    type = "structure",
    members = {
        Positioning = schema.new({
            id = id.from(_N, "SidewalkListDevicesForImportInfo", "Positioning"),
            type = "structure",
            name = "Positioning",
            target_id = id.from(_N, "SidewalkPositioning"),
            target = M.SidewalkPositioning,
        }),
    },
})

M.ListDevicesForWirelessDeviceImportTaskOutput = schema.new({
    id = id.from(_N, "ListDevicesForWirelessDeviceImportTaskOutput"),
    type = "structure",
    members = {
        NextToken = schema.new({
            id = id.from(_N, "ListDevicesForWirelessDeviceImportTaskOutput", "NextToken"),
            type = "string",
            name = "NextToken",
            target_id = prelude.String.id,
        }),
        DestinationName = schema.new({
            id = id.from(_N, "ListDevicesForWirelessDeviceImportTaskOutput", "DestinationName"),
            type = "string",
            name = "DestinationName",
            target_id = prelude.String.id,
        }),
        Positioning = schema.new({
            id = id.from(_N, "ListDevicesForWirelessDeviceImportTaskOutput", "Positioning"),
            type = "string",
            name = "Positioning",
            target_id = prelude.String.id,
        }),
        Sidewalk = schema.new({
            id = id.from(_N, "ListDevicesForWirelessDeviceImportTaskOutput", "Sidewalk"),
            type = "structure",
            name = "Sidewalk",
            target_id = id.from(_N, "SidewalkListDevicesForImportInfo"),
            target = M.SidewalkListDevicesForImportInfo,
        }),
        ImportedWirelessDeviceList = schema.new({
            id = id.from(_N, "ListDevicesForWirelessDeviceImportTaskOutput", "ImportedWirelessDeviceList"),
            type = "list",
            name = "ImportedWirelessDeviceList",
            target_id = prelude.Document.id,
            list_member = M.ImportedWirelessDevice,
        }),
    },
})

M.ListEventConfigurationsInput = schema.new({
    id = id.from(_N, "ListEventConfigurationsInput"),
    type = "structure",
    members = {
        ResourceType = schema.new({
            id = id.from(_N, "ListEventConfigurationsInput", "ResourceType"),
            type = "string",
            name = "ResourceType",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_QUERY] = { name = "resourceType" },
            },
        }),
        MaxResults = schema.new({
            id = id.from(_N, "ListEventConfigurationsInput", "MaxResults"),
            type = "integer",
            name = "MaxResults",
            target_id = prelude.Integer.id,
            traits = {
                [traits.DEFAULT] = { value = 0 },
                [traits.HTTP_QUERY] = { name = "maxResults" },
            },
        }),
        NextToken = schema.new({
            id = id.from(_N, "ListEventConfigurationsInput", "NextToken"),
            type = "string",
            name = "NextToken",
            target_id = prelude.String.id,
            traits = {
                [traits.HTTP_QUERY] = { name = "nextToken" },
            },
        }),
    },
})

M.ListEventConfigurationsOutput = schema.new({
    id = id.from(_N, "ListEventConfigurationsOutput"),
    type = "structure",
    members = {
        NextToken = schema.new({
            id = id.from(_N, "ListEventConfigurationsOutput", "NextToken"),
            type = "string",
            name = "NextToken",
            target_id = prelude.String.id,
        }),
        EventConfigurationsList = schema.new({
            id = id.from(_N, "ListEventConfigurationsOutput", "EventConfigurationsList"),
            type = "list",
            name = "EventConfigurationsList",
            target_id = prelude.Document.id,
            list_member = M.EventConfigurationItem,
        }),
    },
})

M.ListFuotaTasksInput = schema.new({
    id = id.from(_N, "ListFuotaTasksInput"),
    type = "structure",
    members = {
        NextToken = schema.new({
            id = id.from(_N, "ListFuotaTasksInput", "NextToken"),
            type = "string",
            name = "NextToken",
            target_id = prelude.String.id,
            traits = {
                [traits.HTTP_QUERY] = { name = "nextToken" },
            },
        }),
        MaxResults = schema.new({
            id = id.from(_N, "ListFuotaTasksInput", "MaxResults"),
            type = "integer",
            name = "MaxResults",
            target_id = prelude.Integer.id,
            traits = {
                [traits.DEFAULT] = { value = 0 },
                [traits.HTTP_QUERY] = { name = "maxResults" },
            },
        }),
    },
})

M.ListFuotaTasksOutput = schema.new({
    id = id.from(_N, "ListFuotaTasksOutput"),
    type = "structure",
    members = {
        NextToken = schema.new({
            id = id.from(_N, "ListFuotaTasksOutput", "NextToken"),
            type = "string",
            name = "NextToken",
            target_id = prelude.String.id,
        }),
        FuotaTaskList = schema.new({
            id = id.from(_N, "ListFuotaTasksOutput", "FuotaTaskList"),
            type = "list",
            name = "FuotaTaskList",
            target_id = prelude.Document.id,
            list_member = M.FuotaTask,
        }),
    },
})

M.ListMulticastGroupsInput = schema.new({
    id = id.from(_N, "ListMulticastGroupsInput"),
    type = "structure",
    members = {
        NextToken = schema.new({
            id = id.from(_N, "ListMulticastGroupsInput", "NextToken"),
            type = "string",
            name = "NextToken",
            target_id = prelude.String.id,
            traits = {
                [traits.HTTP_QUERY] = { name = "nextToken" },
            },
        }),
        MaxResults = schema.new({
            id = id.from(_N, "ListMulticastGroupsInput", "MaxResults"),
            type = "integer",
            name = "MaxResults",
            target_id = prelude.Integer.id,
            traits = {
                [traits.DEFAULT] = { value = 0 },
                [traits.HTTP_QUERY] = { name = "maxResults" },
            },
        }),
    },
})

M.MulticastGroup = schema.new({
    id = id.from(_N, "MulticastGroup"),
    type = "structure",
    members = {
        Id = schema.new({
            id = id.from(_N, "MulticastGroup", "Id"),
            type = "string",
            name = "Id",
            target_id = prelude.String.id,
        }),
        Arn = schema.new({
            id = id.from(_N, "MulticastGroup", "Arn"),
            type = "string",
            name = "Arn",
            target_id = prelude.String.id,
        }),
        Name = schema.new({
            id = id.from(_N, "MulticastGroup", "Name"),
            type = "string",
            name = "Name",
            target_id = prelude.String.id,
        }),
    },
})

M.ListMulticastGroupsOutput = schema.new({
    id = id.from(_N, "ListMulticastGroupsOutput"),
    type = "structure",
    members = {
        NextToken = schema.new({
            id = id.from(_N, "ListMulticastGroupsOutput", "NextToken"),
            type = "string",
            name = "NextToken",
            target_id = prelude.String.id,
        }),
        MulticastGroupList = schema.new({
            id = id.from(_N, "ListMulticastGroupsOutput", "MulticastGroupList"),
            type = "list",
            name = "MulticastGroupList",
            target_id = prelude.Document.id,
            list_member = M.MulticastGroup,
        }),
    },
})

M.ListMulticastGroupsByFuotaTaskInput = schema.new({
    id = id.from(_N, "ListMulticastGroupsByFuotaTaskInput"),
    type = "structure",
    members = {
        Id = schema.new({
            id = id.from(_N, "ListMulticastGroupsByFuotaTaskInput", "Id"),
            type = "string",
            name = "Id",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
        NextToken = schema.new({
            id = id.from(_N, "ListMulticastGroupsByFuotaTaskInput", "NextToken"),
            type = "string",
            name = "NextToken",
            target_id = prelude.String.id,
            traits = {
                [traits.HTTP_QUERY] = { name = "nextToken" },
            },
        }),
        MaxResults = schema.new({
            id = id.from(_N, "ListMulticastGroupsByFuotaTaskInput", "MaxResults"),
            type = "integer",
            name = "MaxResults",
            target_id = prelude.Integer.id,
            traits = {
                [traits.DEFAULT] = { value = 0 },
                [traits.HTTP_QUERY] = { name = "maxResults" },
            },
        }),
    },
})

M.MulticastGroupByFuotaTask = schema.new({
    id = id.from(_N, "MulticastGroupByFuotaTask"),
    type = "structure",
    members = {
        Id = schema.new({
            id = id.from(_N, "MulticastGroupByFuotaTask", "Id"),
            type = "string",
            name = "Id",
            target_id = prelude.String.id,
        }),
    },
})

M.ListMulticastGroupsByFuotaTaskOutput = schema.new({
    id = id.from(_N, "ListMulticastGroupsByFuotaTaskOutput"),
    type = "structure",
    members = {
        NextToken = schema.new({
            id = id.from(_N, "ListMulticastGroupsByFuotaTaskOutput", "NextToken"),
            type = "string",
            name = "NextToken",
            target_id = prelude.String.id,
        }),
        MulticastGroupList = schema.new({
            id = id.from(_N, "ListMulticastGroupsByFuotaTaskOutput", "MulticastGroupList"),
            type = "list",
            name = "MulticastGroupList",
            target_id = prelude.Document.id,
            list_member = M.MulticastGroupByFuotaTask,
        }),
    },
})

M.ListNetworkAnalyzerConfigurationsInput = schema.new({
    id = id.from(_N, "ListNetworkAnalyzerConfigurationsInput"),
    type = "structure",
    members = {
        MaxResults = schema.new({
            id = id.from(_N, "ListNetworkAnalyzerConfigurationsInput", "MaxResults"),
            type = "integer",
            name = "MaxResults",
            target_id = prelude.Integer.id,
            traits = {
                [traits.DEFAULT] = { value = 0 },
                [traits.HTTP_QUERY] = { name = "maxResults" },
            },
        }),
        NextToken = schema.new({
            id = id.from(_N, "ListNetworkAnalyzerConfigurationsInput", "NextToken"),
            type = "string",
            name = "NextToken",
            target_id = prelude.String.id,
            traits = {
                [traits.HTTP_QUERY] = { name = "nextToken" },
            },
        }),
    },
})

M.NetworkAnalyzerConfigurations = schema.new({
    id = id.from(_N, "NetworkAnalyzerConfigurations"),
    type = "structure",
    members = {
        Arn = schema.new({
            id = id.from(_N, "NetworkAnalyzerConfigurations", "Arn"),
            type = "string",
            name = "Arn",
            target_id = prelude.String.id,
        }),
        Name = schema.new({
            id = id.from(_N, "NetworkAnalyzerConfigurations", "Name"),
            type = "string",
            name = "Name",
            target_id = prelude.String.id,
        }),
    },
})

M.ListNetworkAnalyzerConfigurationsOutput = schema.new({
    id = id.from(_N, "ListNetworkAnalyzerConfigurationsOutput"),
    type = "structure",
    members = {
        NextToken = schema.new({
            id = id.from(_N, "ListNetworkAnalyzerConfigurationsOutput", "NextToken"),
            type = "string",
            name = "NextToken",
            target_id = prelude.String.id,
        }),
        NetworkAnalyzerConfigurationList = schema.new({
            id = id.from(_N, "ListNetworkAnalyzerConfigurationsOutput", "NetworkAnalyzerConfigurationList"),
            type = "list",
            name = "NetworkAnalyzerConfigurationList",
            target_id = prelude.Document.id,
            list_member = M.NetworkAnalyzerConfigurations,
        }),
    },
})

M.ListPartnerAccountsInput = schema.new({
    id = id.from(_N, "ListPartnerAccountsInput"),
    type = "structure",
    members = {
        NextToken = schema.new({
            id = id.from(_N, "ListPartnerAccountsInput", "NextToken"),
            type = "string",
            name = "NextToken",
            target_id = prelude.String.id,
            traits = {
                [traits.HTTP_QUERY] = { name = "nextToken" },
            },
        }),
        MaxResults = schema.new({
            id = id.from(_N, "ListPartnerAccountsInput", "MaxResults"),
            type = "integer",
            name = "MaxResults",
            target_id = prelude.Integer.id,
            traits = {
                [traits.DEFAULT] = { value = 0 },
                [traits.HTTP_QUERY] = { name = "maxResults" },
            },
        }),
    },
})

M.ListPartnerAccountsOutput = schema.new({
    id = id.from(_N, "ListPartnerAccountsOutput"),
    type = "structure",
    members = {
        NextToken = schema.new({
            id = id.from(_N, "ListPartnerAccountsOutput", "NextToken"),
            type = "string",
            name = "NextToken",
            target_id = prelude.String.id,
        }),
        Sidewalk = schema.new({
            id = id.from(_N, "ListPartnerAccountsOutput", "Sidewalk"),
            type = "list",
            name = "Sidewalk",
            target_id = prelude.Document.id,
            list_member = M.SidewalkAccountInfoWithFingerprint,
        }),
    },
})

M.ListPositionConfigurationsInput = schema.new({
    id = id.from(_N, "ListPositionConfigurationsInput"),
    type = "structure",
    members = {
        ResourceType = schema.new({
            id = id.from(_N, "ListPositionConfigurationsInput", "ResourceType"),
            type = "string",
            name = "ResourceType",
            target_id = prelude.String.id,
            traits = {
                [traits.HTTP_QUERY] = { name = "resourceType" },
            },
        }),
        MaxResults = schema.new({
            id = id.from(_N, "ListPositionConfigurationsInput", "MaxResults"),
            type = "integer",
            name = "MaxResults",
            target_id = prelude.Integer.id,
            traits = {
                [traits.DEFAULT] = { value = 0 },
                [traits.HTTP_QUERY] = { name = "maxResults" },
            },
        }),
        NextToken = schema.new({
            id = id.from(_N, "ListPositionConfigurationsInput", "NextToken"),
            type = "string",
            name = "NextToken",
            target_id = prelude.String.id,
            traits = {
                [traits.HTTP_QUERY] = { name = "nextToken" },
            },
        }),
    },
})

M.PositionConfigurationItem = schema.new({
    id = id.from(_N, "PositionConfigurationItem"),
    type = "structure",
    members = {
        ResourceIdentifier = schema.new({
            id = id.from(_N, "PositionConfigurationItem", "ResourceIdentifier"),
            type = "string",
            name = "ResourceIdentifier",
            target_id = prelude.String.id,
        }),
        ResourceType = schema.new({
            id = id.from(_N, "PositionConfigurationItem", "ResourceType"),
            type = "string",
            name = "ResourceType",
            target_id = prelude.String.id,
        }),
        Solvers = schema.new({
            id = id.from(_N, "PositionConfigurationItem", "Solvers"),
            type = "structure",
            name = "Solvers",
            target_id = id.from(_N, "PositionSolverDetails"),
            target = M.PositionSolverDetails,
        }),
        Destination = schema.new({
            id = id.from(_N, "PositionConfigurationItem", "Destination"),
            type = "string",
            name = "Destination",
            target_id = prelude.String.id,
        }),
    },
})

M.ListPositionConfigurationsOutput = schema.new({
    id = id.from(_N, "ListPositionConfigurationsOutput"),
    type = "structure",
    members = {
        PositionConfigurationList = schema.new({
            id = id.from(_N, "ListPositionConfigurationsOutput", "PositionConfigurationList"),
            type = "list",
            name = "PositionConfigurationList",
            target_id = prelude.Document.id,
            list_member = M.PositionConfigurationItem,
        }),
        NextToken = schema.new({
            id = id.from(_N, "ListPositionConfigurationsOutput", "NextToken"),
            type = "string",
            name = "NextToken",
            target_id = prelude.String.id,
        }),
    },
})

M.ListQueuedMessagesInput = schema.new({
    id = id.from(_N, "ListQueuedMessagesInput"),
    type = "structure",
    members = {
        Id = schema.new({
            id = id.from(_N, "ListQueuedMessagesInput", "Id"),
            type = "string",
            name = "Id",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
        NextToken = schema.new({
            id = id.from(_N, "ListQueuedMessagesInput", "NextToken"),
            type = "string",
            name = "NextToken",
            target_id = prelude.String.id,
            traits = {
                [traits.HTTP_QUERY] = { name = "nextToken" },
            },
        }),
        MaxResults = schema.new({
            id = id.from(_N, "ListQueuedMessagesInput", "MaxResults"),
            type = "integer",
            name = "MaxResults",
            target_id = prelude.Integer.id,
            traits = {
                [traits.DEFAULT] = { value = 0 },
                [traits.HTTP_QUERY] = { name = "maxResults" },
            },
        }),
        WirelessDeviceType = schema.new({
            id = id.from(_N, "ListQueuedMessagesInput", "WirelessDeviceType"),
            type = "string",
            name = "WirelessDeviceType",
            target_id = prelude.String.id,
            traits = {
                [traits.HTTP_QUERY] = { name = "WirelessDeviceType" },
            },
        }),
    },
})

M.ListQueuedMessagesOutput = schema.new({
    id = id.from(_N, "ListQueuedMessagesOutput"),
    type = "structure",
    members = {
        NextToken = schema.new({
            id = id.from(_N, "ListQueuedMessagesOutput", "NextToken"),
            type = "string",
            name = "NextToken",
            target_id = prelude.String.id,
        }),
        DownlinkQueueMessagesList = schema.new({
            id = id.from(_N, "ListQueuedMessagesOutput", "DownlinkQueueMessagesList"),
            type = "list",
            name = "DownlinkQueueMessagesList",
            target_id = prelude.Document.id,
            list_member = M.DownlinkQueueMessage,
        }),
    },
})

M.ListServiceProfilesInput = schema.new({
    id = id.from(_N, "ListServiceProfilesInput"),
    type = "structure",
    members = {
        NextToken = schema.new({
            id = id.from(_N, "ListServiceProfilesInput", "NextToken"),
            type = "string",
            name = "NextToken",
            target_id = prelude.String.id,
            traits = {
                [traits.HTTP_QUERY] = { name = "nextToken" },
            },
        }),
        MaxResults = schema.new({
            id = id.from(_N, "ListServiceProfilesInput", "MaxResults"),
            type = "integer",
            name = "MaxResults",
            target_id = prelude.Integer.id,
            traits = {
                [traits.DEFAULT] = { value = 0 },
                [traits.HTTP_QUERY] = { name = "maxResults" },
            },
        }),
    },
})

M.ServiceProfile = schema.new({
    id = id.from(_N, "ServiceProfile"),
    type = "structure",
    members = {
        Arn = schema.new({
            id = id.from(_N, "ServiceProfile", "Arn"),
            type = "string",
            name = "Arn",
            target_id = prelude.String.id,
        }),
        Name = schema.new({
            id = id.from(_N, "ServiceProfile", "Name"),
            type = "string",
            name = "Name",
            target_id = prelude.String.id,
        }),
        Id = schema.new({
            id = id.from(_N, "ServiceProfile", "Id"),
            type = "string",
            name = "Id",
            target_id = prelude.String.id,
        }),
    },
})

M.ListServiceProfilesOutput = schema.new({
    id = id.from(_N, "ListServiceProfilesOutput"),
    type = "structure",
    members = {
        NextToken = schema.new({
            id = id.from(_N, "ListServiceProfilesOutput", "NextToken"),
            type = "string",
            name = "NextToken",
            target_id = prelude.String.id,
        }),
        ServiceProfileList = schema.new({
            id = id.from(_N, "ListServiceProfilesOutput", "ServiceProfileList"),
            type = "list",
            name = "ServiceProfileList",
            target_id = prelude.Document.id,
            list_member = M.ServiceProfile,
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
                [traits.HTTP_QUERY] = { name = "resourceArn" },
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

M.ListWirelessDeviceImportTasksInput = schema.new({
    id = id.from(_N, "ListWirelessDeviceImportTasksInput"),
    type = "structure",
    members = {
        MaxResults = schema.new({
            id = id.from(_N, "ListWirelessDeviceImportTasksInput", "MaxResults"),
            type = "integer",
            name = "MaxResults",
            target_id = prelude.Integer.id,
            traits = {
                [traits.DEFAULT] = { value = 0 },
                [traits.HTTP_QUERY] = { name = "maxResults" },
            },
        }),
        NextToken = schema.new({
            id = id.from(_N, "ListWirelessDeviceImportTasksInput", "NextToken"),
            type = "string",
            name = "NextToken",
            target_id = prelude.String.id,
            traits = {
                [traits.HTTP_QUERY] = { name = "nextToken" },
            },
        }),
    },
})

M.WirelessDeviceImportTask = schema.new({
    id = id.from(_N, "WirelessDeviceImportTask"),
    type = "structure",
    members = {
        Id = schema.new({
            id = id.from(_N, "WirelessDeviceImportTask", "Id"),
            type = "string",
            name = "Id",
            target_id = prelude.String.id,
        }),
        Arn = schema.new({
            id = id.from(_N, "WirelessDeviceImportTask", "Arn"),
            type = "string",
            name = "Arn",
            target_id = prelude.String.id,
        }),
        DestinationName = schema.new({
            id = id.from(_N, "WirelessDeviceImportTask", "DestinationName"),
            type = "string",
            name = "DestinationName",
            target_id = prelude.String.id,
        }),
        Positioning = schema.new({
            id = id.from(_N, "WirelessDeviceImportTask", "Positioning"),
            type = "string",
            name = "Positioning",
            target_id = prelude.String.id,
        }),
        Sidewalk = schema.new({
            id = id.from(_N, "WirelessDeviceImportTask", "Sidewalk"),
            type = "structure",
            name = "Sidewalk",
            target_id = id.from(_N, "SidewalkGetStartImportInfo"),
            target = M.SidewalkGetStartImportInfo,
        }),
        CreationTime = schema.new({
            id = id.from(_N, "WirelessDeviceImportTask", "CreationTime"),
            type = "timestamp",
            name = "CreationTime",
            target_id = prelude.Timestamp.id,
            traits = {
                [traits.TIMESTAMP_FORMAT] = { format = "date-time" },
            },
        }),
        Status = schema.new({
            id = id.from(_N, "WirelessDeviceImportTask", "Status"),
            type = "string",
            name = "Status",
            target_id = prelude.String.id,
        }),
        StatusReason = schema.new({
            id = id.from(_N, "WirelessDeviceImportTask", "StatusReason"),
            type = "string",
            name = "StatusReason",
            target_id = prelude.String.id,
        }),
        InitializedImportedDeviceCount = schema.new({
            id = id.from(_N, "WirelessDeviceImportTask", "InitializedImportedDeviceCount"),
            type = "long",
            name = "InitializedImportedDeviceCount",
            target_id = prelude.Long.id,
        }),
        PendingImportedDeviceCount = schema.new({
            id = id.from(_N, "WirelessDeviceImportTask", "PendingImportedDeviceCount"),
            type = "long",
            name = "PendingImportedDeviceCount",
            target_id = prelude.Long.id,
        }),
        OnboardedImportedDeviceCount = schema.new({
            id = id.from(_N, "WirelessDeviceImportTask", "OnboardedImportedDeviceCount"),
            type = "long",
            name = "OnboardedImportedDeviceCount",
            target_id = prelude.Long.id,
        }),
        FailedImportedDeviceCount = schema.new({
            id = id.from(_N, "WirelessDeviceImportTask", "FailedImportedDeviceCount"),
            type = "long",
            name = "FailedImportedDeviceCount",
            target_id = prelude.Long.id,
        }),
    },
})

M.ListWirelessDeviceImportTasksOutput = schema.new({
    id = id.from(_N, "ListWirelessDeviceImportTasksOutput"),
    type = "structure",
    members = {
        NextToken = schema.new({
            id = id.from(_N, "ListWirelessDeviceImportTasksOutput", "NextToken"),
            type = "string",
            name = "NextToken",
            target_id = prelude.String.id,
        }),
        WirelessDeviceImportTaskList = schema.new({
            id = id.from(_N, "ListWirelessDeviceImportTasksOutput", "WirelessDeviceImportTaskList"),
            type = "list",
            name = "WirelessDeviceImportTaskList",
            target_id = prelude.Document.id,
            list_member = M.WirelessDeviceImportTask,
        }),
    },
})

M.ListWirelessDevicesInput = schema.new({
    id = id.from(_N, "ListWirelessDevicesInput"),
    type = "structure",
    members = {
        MaxResults = schema.new({
            id = id.from(_N, "ListWirelessDevicesInput", "MaxResults"),
            type = "integer",
            name = "MaxResults",
            target_id = prelude.Integer.id,
            traits = {
                [traits.DEFAULT] = { value = 0 },
                [traits.HTTP_QUERY] = { name = "maxResults" },
            },
        }),
        NextToken = schema.new({
            id = id.from(_N, "ListWirelessDevicesInput", "NextToken"),
            type = "string",
            name = "NextToken",
            target_id = prelude.String.id,
            traits = {
                [traits.HTTP_QUERY] = { name = "nextToken" },
            },
        }),
        DestinationName = schema.new({
            id = id.from(_N, "ListWirelessDevicesInput", "DestinationName"),
            type = "string",
            name = "DestinationName",
            target_id = prelude.String.id,
            traits = {
                [traits.HTTP_QUERY] = { name = "destinationName" },
            },
        }),
        DeviceProfileId = schema.new({
            id = id.from(_N, "ListWirelessDevicesInput", "DeviceProfileId"),
            type = "string",
            name = "DeviceProfileId",
            target_id = prelude.String.id,
            traits = {
                [traits.HTTP_QUERY] = { name = "deviceProfileId" },
            },
        }),
        ServiceProfileId = schema.new({
            id = id.from(_N, "ListWirelessDevicesInput", "ServiceProfileId"),
            type = "string",
            name = "ServiceProfileId",
            target_id = prelude.String.id,
            traits = {
                [traits.HTTP_QUERY] = { name = "serviceProfileId" },
            },
        }),
        WirelessDeviceType = schema.new({
            id = id.from(_N, "ListWirelessDevicesInput", "WirelessDeviceType"),
            type = "string",
            name = "WirelessDeviceType",
            target_id = prelude.String.id,
            traits = {
                [traits.HTTP_QUERY] = { name = "wirelessDeviceType" },
            },
        }),
        FuotaTaskId = schema.new({
            id = id.from(_N, "ListWirelessDevicesInput", "FuotaTaskId"),
            type = "string",
            name = "FuotaTaskId",
            target_id = prelude.String.id,
            traits = {
                [traits.HTTP_QUERY] = { name = "fuotaTaskId" },
            },
        }),
        MulticastGroupId = schema.new({
            id = id.from(_N, "ListWirelessDevicesInput", "MulticastGroupId"),
            type = "string",
            name = "MulticastGroupId",
            target_id = prelude.String.id,
            traits = {
                [traits.HTTP_QUERY] = { name = "multicastGroupId" },
            },
        }),
    },
})

M.LoRaWANListDevice = schema.new({
    id = id.from(_N, "LoRaWANListDevice"),
    type = "structure",
    members = {
        DevEui = schema.new({
            id = id.from(_N, "LoRaWANListDevice", "DevEui"),
            type = "string",
            name = "DevEui",
            target_id = prelude.String.id,
        }),
    },
})

M.SidewalkListDevice = schema.new({
    id = id.from(_N, "SidewalkListDevice"),
    type = "structure",
    members = {
        AmazonId = schema.new({
            id = id.from(_N, "SidewalkListDevice", "AmazonId"),
            type = "string",
            name = "AmazonId",
            target_id = prelude.String.id,
        }),
        SidewalkId = schema.new({
            id = id.from(_N, "SidewalkListDevice", "SidewalkId"),
            type = "string",
            name = "SidewalkId",
            target_id = prelude.String.id,
        }),
        SidewalkManufacturingSn = schema.new({
            id = id.from(_N, "SidewalkListDevice", "SidewalkManufacturingSn"),
            type = "string",
            name = "SidewalkManufacturingSn",
            target_id = prelude.String.id,
        }),
        DeviceCertificates = schema.new({
            id = id.from(_N, "SidewalkListDevice", "DeviceCertificates"),
            type = "list",
            name = "DeviceCertificates",
            target_id = prelude.Document.id,
            list_member = M.CertificateList,
        }),
        DeviceProfileId = schema.new({
            id = id.from(_N, "SidewalkListDevice", "DeviceProfileId"),
            type = "string",
            name = "DeviceProfileId",
            target_id = prelude.String.id,
        }),
        Status = schema.new({
            id = id.from(_N, "SidewalkListDevice", "Status"),
            type = "string",
            name = "Status",
            target_id = prelude.String.id,
        }),
        Positioning = schema.new({
            id = id.from(_N, "SidewalkListDevice", "Positioning"),
            type = "structure",
            name = "Positioning",
            target_id = id.from(_N, "SidewalkPositioning"),
            target = M.SidewalkPositioning,
        }),
    },
})

M.WirelessDeviceStatistics = schema.new({
    id = id.from(_N, "WirelessDeviceStatistics"),
    type = "structure",
    members = {
        Arn = schema.new({
            id = id.from(_N, "WirelessDeviceStatistics", "Arn"),
            type = "string",
            name = "Arn",
            target_id = prelude.String.id,
        }),
        Id = schema.new({
            id = id.from(_N, "WirelessDeviceStatistics", "Id"),
            type = "string",
            name = "Id",
            target_id = prelude.String.id,
        }),
        Type = schema.new({
            id = id.from(_N, "WirelessDeviceStatistics", "Type"),
            type = "string",
            name = "Type",
            target_id = prelude.String.id,
        }),
        Name = schema.new({
            id = id.from(_N, "WirelessDeviceStatistics", "Name"),
            type = "string",
            name = "Name",
            target_id = prelude.String.id,
        }),
        DestinationName = schema.new({
            id = id.from(_N, "WirelessDeviceStatistics", "DestinationName"),
            type = "string",
            name = "DestinationName",
            target_id = prelude.String.id,
        }),
        LastUplinkReceivedAt = schema.new({
            id = id.from(_N, "WirelessDeviceStatistics", "LastUplinkReceivedAt"),
            type = "string",
            name = "LastUplinkReceivedAt",
            target_id = prelude.String.id,
        }),
        LoRaWAN = schema.new({
            id = id.from(_N, "WirelessDeviceStatistics", "LoRaWAN"),
            type = "structure",
            name = "LoRaWAN",
            target_id = id.from(_N, "LoRaWANListDevice"),
            target = M.LoRaWANListDevice,
        }),
        Sidewalk = schema.new({
            id = id.from(_N, "WirelessDeviceStatistics", "Sidewalk"),
            type = "structure",
            name = "Sidewalk",
            target_id = id.from(_N, "SidewalkListDevice"),
            target = M.SidewalkListDevice,
        }),
        FuotaDeviceStatus = schema.new({
            id = id.from(_N, "WirelessDeviceStatistics", "FuotaDeviceStatus"),
            type = "string",
            name = "FuotaDeviceStatus",
            target_id = prelude.String.id,
        }),
        MulticastDeviceStatus = schema.new({
            id = id.from(_N, "WirelessDeviceStatistics", "MulticastDeviceStatus"),
            type = "string",
            name = "MulticastDeviceStatus",
            target_id = prelude.String.id,
        }),
        McGroupId = schema.new({
            id = id.from(_N, "WirelessDeviceStatistics", "McGroupId"),
            type = "integer",
            name = "McGroupId",
            target_id = prelude.Integer.id,
        }),
        Positioning = schema.new({
            id = id.from(_N, "WirelessDeviceStatistics", "Positioning"),
            type = "string",
            name = "Positioning",
            target_id = prelude.String.id,
        }),
    },
})

M.ListWirelessDevicesOutput = schema.new({
    id = id.from(_N, "ListWirelessDevicesOutput"),
    type = "structure",
    members = {
        NextToken = schema.new({
            id = id.from(_N, "ListWirelessDevicesOutput", "NextToken"),
            type = "string",
            name = "NextToken",
            target_id = prelude.String.id,
        }),
        WirelessDeviceList = schema.new({
            id = id.from(_N, "ListWirelessDevicesOutput", "WirelessDeviceList"),
            type = "list",
            name = "WirelessDeviceList",
            target_id = prelude.Document.id,
            list_member = M.WirelessDeviceStatistics,
        }),
    },
})

M.ListWirelessGatewaysInput = schema.new({
    id = id.from(_N, "ListWirelessGatewaysInput"),
    type = "structure",
    members = {
        NextToken = schema.new({
            id = id.from(_N, "ListWirelessGatewaysInput", "NextToken"),
            type = "string",
            name = "NextToken",
            target_id = prelude.String.id,
            traits = {
                [traits.HTTP_QUERY] = { name = "nextToken" },
            },
        }),
        MaxResults = schema.new({
            id = id.from(_N, "ListWirelessGatewaysInput", "MaxResults"),
            type = "integer",
            name = "MaxResults",
            target_id = prelude.Integer.id,
            traits = {
                [traits.DEFAULT] = { value = 0 },
                [traits.HTTP_QUERY] = { name = "maxResults" },
            },
        }),
    },
})

M.WirelessGatewayStatistics = schema.new({
    id = id.from(_N, "WirelessGatewayStatistics"),
    type = "structure",
    members = {
        Arn = schema.new({
            id = id.from(_N, "WirelessGatewayStatistics", "Arn"),
            type = "string",
            name = "Arn",
            target_id = prelude.String.id,
        }),
        Id = schema.new({
            id = id.from(_N, "WirelessGatewayStatistics", "Id"),
            type = "string",
            name = "Id",
            target_id = prelude.String.id,
        }),
        Name = schema.new({
            id = id.from(_N, "WirelessGatewayStatistics", "Name"),
            type = "string",
            name = "Name",
            target_id = prelude.String.id,
        }),
        Description = schema.new({
            id = id.from(_N, "WirelessGatewayStatistics", "Description"),
            type = "string",
            name = "Description",
            target_id = prelude.String.id,
        }),
        LoRaWAN = schema.new({
            id = id.from(_N, "WirelessGatewayStatistics", "LoRaWAN"),
            type = "structure",
            name = "LoRaWAN",
            target_id = id.from(_N, "LoRaWANGateway"),
            target = M.LoRaWANGateway,
        }),
        LastUplinkReceivedAt = schema.new({
            id = id.from(_N, "WirelessGatewayStatistics", "LastUplinkReceivedAt"),
            type = "string",
            name = "LastUplinkReceivedAt",
            target_id = prelude.String.id,
        }),
    },
})

M.ListWirelessGatewaysOutput = schema.new({
    id = id.from(_N, "ListWirelessGatewaysOutput"),
    type = "structure",
    members = {
        NextToken = schema.new({
            id = id.from(_N, "ListWirelessGatewaysOutput", "NextToken"),
            type = "string",
            name = "NextToken",
            target_id = prelude.String.id,
        }),
        WirelessGatewayList = schema.new({
            id = id.from(_N, "ListWirelessGatewaysOutput", "WirelessGatewayList"),
            type = "list",
            name = "WirelessGatewayList",
            target_id = prelude.Document.id,
            list_member = M.WirelessGatewayStatistics,
        }),
    },
})

M.ListWirelessGatewayTaskDefinitionsInput = schema.new({
    id = id.from(_N, "ListWirelessGatewayTaskDefinitionsInput"),
    type = "structure",
    members = {
        MaxResults = schema.new({
            id = id.from(_N, "ListWirelessGatewayTaskDefinitionsInput", "MaxResults"),
            type = "integer",
            name = "MaxResults",
            target_id = prelude.Integer.id,
            traits = {
                [traits.DEFAULT] = { value = 0 },
                [traits.HTTP_QUERY] = { name = "maxResults" },
            },
        }),
        NextToken = schema.new({
            id = id.from(_N, "ListWirelessGatewayTaskDefinitionsInput", "NextToken"),
            type = "string",
            name = "NextToken",
            target_id = prelude.String.id,
            traits = {
                [traits.HTTP_QUERY] = { name = "nextToken" },
            },
        }),
        TaskDefinitionType = schema.new({
            id = id.from(_N, "ListWirelessGatewayTaskDefinitionsInput", "TaskDefinitionType"),
            type = "string",
            name = "TaskDefinitionType",
            target_id = prelude.String.id,
            traits = {
                [traits.HTTP_QUERY] = { name = "taskDefinitionType" },
            },
        }),
    },
})

M.LoRaWANUpdateGatewayTaskEntry = schema.new({
    id = id.from(_N, "LoRaWANUpdateGatewayTaskEntry"),
    type = "structure",
    members = {
        CurrentVersion = schema.new({
            id = id.from(_N, "LoRaWANUpdateGatewayTaskEntry", "CurrentVersion"),
            type = "structure",
            name = "CurrentVersion",
            target_id = id.from(_N, "LoRaWANGatewayVersion"),
            target = M.LoRaWANGatewayVersion,
        }),
        UpdateVersion = schema.new({
            id = id.from(_N, "LoRaWANUpdateGatewayTaskEntry", "UpdateVersion"),
            type = "structure",
            name = "UpdateVersion",
            target_id = id.from(_N, "LoRaWANGatewayVersion"),
            target = M.LoRaWANGatewayVersion,
        }),
    },
})

M.UpdateWirelessGatewayTaskEntry = schema.new({
    id = id.from(_N, "UpdateWirelessGatewayTaskEntry"),
    type = "structure",
    members = {
        Id = schema.new({
            id = id.from(_N, "UpdateWirelessGatewayTaskEntry", "Id"),
            type = "string",
            name = "Id",
            target_id = prelude.String.id,
        }),
        LoRaWAN = schema.new({
            id = id.from(_N, "UpdateWirelessGatewayTaskEntry", "LoRaWAN"),
            type = "structure",
            name = "LoRaWAN",
            target_id = id.from(_N, "LoRaWANUpdateGatewayTaskEntry"),
            target = M.LoRaWANUpdateGatewayTaskEntry,
        }),
        Arn = schema.new({
            id = id.from(_N, "UpdateWirelessGatewayTaskEntry", "Arn"),
            type = "string",
            name = "Arn",
            target_id = prelude.String.id,
        }),
    },
})

M.ListWirelessGatewayTaskDefinitionsOutput = schema.new({
    id = id.from(_N, "ListWirelessGatewayTaskDefinitionsOutput"),
    type = "structure",
    members = {
        NextToken = schema.new({
            id = id.from(_N, "ListWirelessGatewayTaskDefinitionsOutput", "NextToken"),
            type = "string",
            name = "NextToken",
            target_id = prelude.String.id,
        }),
        TaskDefinitions = schema.new({
            id = id.from(_N, "ListWirelessGatewayTaskDefinitionsOutput", "TaskDefinitions"),
            type = "list",
            name = "TaskDefinitions",
            target_id = prelude.Document.id,
            list_member = M.UpdateWirelessGatewayTaskEntry,
        }),
    },
})

M.SemtechGnssConfiguration = schema.new({
    id = id.from(_N, "SemtechGnssConfiguration"),
    type = "structure",
    members = {
        Status = schema.new({
            id = id.from(_N, "SemtechGnssConfiguration", "Status"),
            type = "string",
            name = "Status",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        Fec = schema.new({
            id = id.from(_N, "SemtechGnssConfiguration", "Fec"),
            type = "string",
            name = "Fec",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.PositionSolverConfigurations = schema.new({
    id = id.from(_N, "PositionSolverConfigurations"),
    type = "structure",
    members = {
        SemtechGnss = schema.new({
            id = id.from(_N, "PositionSolverConfigurations", "SemtechGnss"),
            type = "structure",
            name = "SemtechGnss",
            target_id = id.from(_N, "SemtechGnssConfiguration"),
            target = M.SemtechGnssConfiguration,
        }),
    },
})

M.PutPositionConfigurationInput = schema.new({
    id = id.from(_N, "PutPositionConfigurationInput"),
    type = "structure",
    members = {
        ResourceIdentifier = schema.new({
            id = id.from(_N, "PutPositionConfigurationInput", "ResourceIdentifier"),
            type = "string",
            name = "ResourceIdentifier",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
        ResourceType = schema.new({
            id = id.from(_N, "PutPositionConfigurationInput", "ResourceType"),
            type = "string",
            name = "ResourceType",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_QUERY] = { name = "resourceType" },
            },
        }),
        Solvers = schema.new({
            id = id.from(_N, "PutPositionConfigurationInput", "Solvers"),
            type = "structure",
            name = "Solvers",
            target_id = id.from(_N, "PositionSolverConfigurations"),
            target = M.PositionSolverConfigurations,
        }),
        Destination = schema.new({
            id = id.from(_N, "PutPositionConfigurationInput", "Destination"),
            type = "string",
            name = "Destination",
            target_id = prelude.String.id,
        }),
    },
})

M.PutPositionConfigurationOutput = schema.new({
    id = id.from(_N, "PutPositionConfigurationOutput"),
    type = "structure",
})

M.PutResourceLogLevelInput = schema.new({
    id = id.from(_N, "PutResourceLogLevelInput"),
    type = "structure",
    members = {
        ResourceIdentifier = schema.new({
            id = id.from(_N, "PutResourceLogLevelInput", "ResourceIdentifier"),
            type = "string",
            name = "ResourceIdentifier",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
        ResourceType = schema.new({
            id = id.from(_N, "PutResourceLogLevelInput", "ResourceType"),
            type = "string",
            name = "ResourceType",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_QUERY] = { name = "resourceType" },
            },
        }),
        LogLevel = schema.new({
            id = id.from(_N, "PutResourceLogLevelInput", "LogLevel"),
            type = "string",
            name = "LogLevel",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.PutResourceLogLevelOutput = schema.new({
    id = id.from(_N, "PutResourceLogLevelOutput"),
    type = "structure",
})

M.ResetAllResourceLogLevelsInput = schema.new({
    id = id.from(_N, "ResetAllResourceLogLevelsInput"),
    type = "structure",
})

M.ResetAllResourceLogLevelsOutput = schema.new({
    id = id.from(_N, "ResetAllResourceLogLevelsOutput"),
    type = "structure",
})

M.ResetResourceLogLevelInput = schema.new({
    id = id.from(_N, "ResetResourceLogLevelInput"),
    type = "structure",
    members = {
        ResourceIdentifier = schema.new({
            id = id.from(_N, "ResetResourceLogLevelInput", "ResourceIdentifier"),
            type = "string",
            name = "ResourceIdentifier",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
        ResourceType = schema.new({
            id = id.from(_N, "ResetResourceLogLevelInput", "ResourceType"),
            type = "string",
            name = "ResourceType",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_QUERY] = { name = "resourceType" },
            },
        }),
    },
})

M.ResetResourceLogLevelOutput = schema.new({
    id = id.from(_N, "ResetResourceLogLevelOutput"),
    type = "structure",
})

M.LoRaWANMulticastMetadata = schema.new({
    id = id.from(_N, "LoRaWANMulticastMetadata"),
    type = "structure",
    members = {
        FPort = schema.new({
            id = id.from(_N, "LoRaWANMulticastMetadata", "FPort"),
            type = "integer",
            name = "FPort",
            target_id = prelude.Integer.id,
        }),
    },
})

M.MulticastWirelessMetadata = schema.new({
    id = id.from(_N, "MulticastWirelessMetadata"),
    type = "structure",
    members = {
        LoRaWAN = schema.new({
            id = id.from(_N, "MulticastWirelessMetadata", "LoRaWAN"),
            type = "structure",
            name = "LoRaWAN",
            target_id = id.from(_N, "LoRaWANMulticastMetadata"),
            target = M.LoRaWANMulticastMetadata,
        }),
    },
})

M.SendDataToMulticastGroupInput = schema.new({
    id = id.from(_N, "SendDataToMulticastGroupInput"),
    type = "structure",
    members = {
        Id = schema.new({
            id = id.from(_N, "SendDataToMulticastGroupInput", "Id"),
            type = "string",
            name = "Id",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
        PayloadData = schema.new({
            id = id.from(_N, "SendDataToMulticastGroupInput", "PayloadData"),
            type = "string",
            name = "PayloadData",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        WirelessMetadata = schema.new({
            id = id.from(_N, "SendDataToMulticastGroupInput", "WirelessMetadata"),
            type = "structure",
            name = "WirelessMetadata",
            target_id = id.from(_N, "MulticastWirelessMetadata"),
            target = M.MulticastWirelessMetadata,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.SendDataToMulticastGroupOutput = schema.new({
    id = id.from(_N, "SendDataToMulticastGroupOutput"),
    type = "structure",
    members = {
        MessageId = schema.new({
            id = id.from(_N, "SendDataToMulticastGroupOutput", "MessageId"),
            type = "string",
            name = "MessageId",
            target_id = prelude.String.id,
        }),
    },
})

M.SidewalkSendDataToDevice = schema.new({
    id = id.from(_N, "SidewalkSendDataToDevice"),
    type = "structure",
    members = {
        Seq = schema.new({
            id = id.from(_N, "SidewalkSendDataToDevice", "Seq"),
            type = "integer",
            name = "Seq",
            target_id = prelude.Integer.id,
        }),
        MessageType = schema.new({
            id = id.from(_N, "SidewalkSendDataToDevice", "MessageType"),
            type = "string",
            name = "MessageType",
            target_id = prelude.String.id,
        }),
        AckModeRetryDurationSecs = schema.new({
            id = id.from(_N, "SidewalkSendDataToDevice", "AckModeRetryDurationSecs"),
            type = "integer",
            name = "AckModeRetryDurationSecs",
            target_id = prelude.Integer.id,
        }),
    },
})

M.WirelessMetadata = schema.new({
    id = id.from(_N, "WirelessMetadata"),
    type = "structure",
    members = {
        LoRaWAN = schema.new({
            id = id.from(_N, "WirelessMetadata", "LoRaWAN"),
            type = "structure",
            name = "LoRaWAN",
            target_id = id.from(_N, "LoRaWANSendDataToDevice"),
            target = M.LoRaWANSendDataToDevice,
        }),
        Sidewalk = schema.new({
            id = id.from(_N, "WirelessMetadata", "Sidewalk"),
            type = "structure",
            name = "Sidewalk",
            target_id = id.from(_N, "SidewalkSendDataToDevice"),
            target = M.SidewalkSendDataToDevice,
        }),
    },
})

M.SendDataToWirelessDeviceInput = schema.new({
    id = id.from(_N, "SendDataToWirelessDeviceInput"),
    type = "structure",
    members = {
        Id = schema.new({
            id = id.from(_N, "SendDataToWirelessDeviceInput", "Id"),
            type = "string",
            name = "Id",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
        TransmitMode = schema.new({
            id = id.from(_N, "SendDataToWirelessDeviceInput", "TransmitMode"),
            type = "integer",
            name = "TransmitMode",
            target_id = prelude.Integer.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        PayloadData = schema.new({
            id = id.from(_N, "SendDataToWirelessDeviceInput", "PayloadData"),
            type = "string",
            name = "PayloadData",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        WirelessMetadata = schema.new({
            id = id.from(_N, "SendDataToWirelessDeviceInput", "WirelessMetadata"),
            type = "structure",
            name = "WirelessMetadata",
            target_id = id.from(_N, "WirelessMetadata"),
            target = M.WirelessMetadata,
        }),
    },
})

M.SendDataToWirelessDeviceOutput = schema.new({
    id = id.from(_N, "SendDataToWirelessDeviceOutput"),
    type = "structure",
    members = {
        MessageId = schema.new({
            id = id.from(_N, "SendDataToWirelessDeviceOutput", "MessageId"),
            type = "string",
            name = "MessageId",
            target_id = prelude.String.id,
        }),
    },
})

M.StartBulkAssociateWirelessDeviceWithMulticastGroupInput = schema.new({
    id = id.from(_N, "StartBulkAssociateWirelessDeviceWithMulticastGroupInput"),
    type = "structure",
    members = {
        Id = schema.new({
            id = id.from(_N, "StartBulkAssociateWirelessDeviceWithMulticastGroupInput", "Id"),
            type = "string",
            name = "Id",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
        QueryString = schema.new({
            id = id.from(_N, "StartBulkAssociateWirelessDeviceWithMulticastGroupInput", "QueryString"),
            type = "string",
            name = "QueryString",
            target_id = prelude.String.id,
        }),
        Tags = schema.new({
            id = id.from(_N, "StartBulkAssociateWirelessDeviceWithMulticastGroupInput", "Tags"),
            type = "list",
            name = "Tags",
            target_id = prelude.Document.id,
            list_member = M.Tag,
        }),
    },
})

M.StartBulkAssociateWirelessDeviceWithMulticastGroupOutput = schema.new({
    id = id.from(_N, "StartBulkAssociateWirelessDeviceWithMulticastGroupOutput"),
    type = "structure",
})

M.StartBulkDisassociateWirelessDeviceFromMulticastGroupInput = schema.new({
    id = id.from(_N, "StartBulkDisassociateWirelessDeviceFromMulticastGroupInput"),
    type = "structure",
    members = {
        Id = schema.new({
            id = id.from(_N, "StartBulkDisassociateWirelessDeviceFromMulticastGroupInput", "Id"),
            type = "string",
            name = "Id",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
        QueryString = schema.new({
            id = id.from(_N, "StartBulkDisassociateWirelessDeviceFromMulticastGroupInput", "QueryString"),
            type = "string",
            name = "QueryString",
            target_id = prelude.String.id,
        }),
        Tags = schema.new({
            id = id.from(_N, "StartBulkDisassociateWirelessDeviceFromMulticastGroupInput", "Tags"),
            type = "list",
            name = "Tags",
            target_id = prelude.Document.id,
            list_member = M.Tag,
        }),
    },
})

M.StartBulkDisassociateWirelessDeviceFromMulticastGroupOutput = schema.new({
    id = id.from(_N, "StartBulkDisassociateWirelessDeviceFromMulticastGroupOutput"),
    type = "structure",
})

M.LoRaWANStartFuotaTask = schema.new({
    id = id.from(_N, "LoRaWANStartFuotaTask"),
    type = "structure",
    members = {
        StartTime = schema.new({
            id = id.from(_N, "LoRaWANStartFuotaTask", "StartTime"),
            type = "timestamp",
            name = "StartTime",
            target_id = prelude.Timestamp.id,
            traits = {
                [traits.TIMESTAMP_FORMAT] = { format = "date-time" },
            },
        }),
    },
})

M.StartFuotaTaskInput = schema.new({
    id = id.from(_N, "StartFuotaTaskInput"),
    type = "structure",
    members = {
        Id = schema.new({
            id = id.from(_N, "StartFuotaTaskInput", "Id"),
            type = "string",
            name = "Id",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
        LoRaWAN = schema.new({
            id = id.from(_N, "StartFuotaTaskInput", "LoRaWAN"),
            type = "structure",
            name = "LoRaWAN",
            target_id = id.from(_N, "LoRaWANStartFuotaTask"),
            target = M.LoRaWANStartFuotaTask,
        }),
    },
})

M.StartFuotaTaskOutput = schema.new({
    id = id.from(_N, "StartFuotaTaskOutput"),
    type = "structure",
})

M.StartMulticastGroupSessionInput = schema.new({
    id = id.from(_N, "StartMulticastGroupSessionInput"),
    type = "structure",
    members = {
        Id = schema.new({
            id = id.from(_N, "StartMulticastGroupSessionInput", "Id"),
            type = "string",
            name = "Id",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
        LoRaWAN = schema.new({
            id = id.from(_N, "StartMulticastGroupSessionInput", "LoRaWAN"),
            type = "structure",
            name = "LoRaWAN",
            target_id = id.from(_N, "LoRaWANMulticastSession"),
            target = M.LoRaWANMulticastSession,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.StartMulticastGroupSessionOutput = schema.new({
    id = id.from(_N, "StartMulticastGroupSessionOutput"),
    type = "structure",
})

M.SidewalkSingleStartImportInfo = schema.new({
    id = id.from(_N, "SidewalkSingleStartImportInfo"),
    type = "structure",
    members = {
        SidewalkManufacturingSn = schema.new({
            id = id.from(_N, "SidewalkSingleStartImportInfo", "SidewalkManufacturingSn"),
            type = "string",
            name = "SidewalkManufacturingSn",
            target_id = prelude.String.id,
        }),
        Positioning = schema.new({
            id = id.from(_N, "SidewalkSingleStartImportInfo", "Positioning"),
            type = "structure",
            name = "Positioning",
            target_id = id.from(_N, "SidewalkPositioning"),
            target = M.SidewalkPositioning,
        }),
    },
})

M.StartSingleWirelessDeviceImportTaskInput = schema.new({
    id = id.from(_N, "StartSingleWirelessDeviceImportTaskInput"),
    type = "structure",
    members = {
        DestinationName = schema.new({
            id = id.from(_N, "StartSingleWirelessDeviceImportTaskInput", "DestinationName"),
            type = "string",
            name = "DestinationName",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        ClientRequestToken = schema.new({
            id = id.from(_N, "StartSingleWirelessDeviceImportTaskInput", "ClientRequestToken"),
            type = "string",
            name = "ClientRequestToken",
            target_id = prelude.String.id,
            traits = {
                [traits.IDEMPOTENCY_TOKEN] = {},
            },
        }),
        DeviceName = schema.new({
            id = id.from(_N, "StartSingleWirelessDeviceImportTaskInput", "DeviceName"),
            type = "string",
            name = "DeviceName",
            target_id = prelude.String.id,
        }),
        Tags = schema.new({
            id = id.from(_N, "StartSingleWirelessDeviceImportTaskInput", "Tags"),
            type = "list",
            name = "Tags",
            target_id = prelude.Document.id,
            list_member = M.Tag,
        }),
        Positioning = schema.new({
            id = id.from(_N, "StartSingleWirelessDeviceImportTaskInput", "Positioning"),
            type = "string",
            name = "Positioning",
            target_id = prelude.String.id,
        }),
        Sidewalk = schema.new({
            id = id.from(_N, "StartSingleWirelessDeviceImportTaskInput", "Sidewalk"),
            type = "structure",
            name = "Sidewalk",
            target_id = id.from(_N, "SidewalkSingleStartImportInfo"),
            target = M.SidewalkSingleStartImportInfo,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.StartSingleWirelessDeviceImportTaskOutput = schema.new({
    id = id.from(_N, "StartSingleWirelessDeviceImportTaskOutput"),
    type = "structure",
    members = {
        Id = schema.new({
            id = id.from(_N, "StartSingleWirelessDeviceImportTaskOutput", "Id"),
            type = "string",
            name = "Id",
            target_id = prelude.String.id,
        }),
        Arn = schema.new({
            id = id.from(_N, "StartSingleWirelessDeviceImportTaskOutput", "Arn"),
            type = "string",
            name = "Arn",
            target_id = prelude.String.id,
        }),
    },
})

M.SidewalkStartImportInfo = schema.new({
    id = id.from(_N, "SidewalkStartImportInfo"),
    type = "structure",
    members = {
        DeviceCreationFile = schema.new({
            id = id.from(_N, "SidewalkStartImportInfo", "DeviceCreationFile"),
            type = "string",
            name = "DeviceCreationFile",
            target_id = prelude.String.id,
        }),
        Role = schema.new({
            id = id.from(_N, "SidewalkStartImportInfo", "Role"),
            type = "string",
            name = "Role",
            target_id = prelude.String.id,
        }),
        Positioning = schema.new({
            id = id.from(_N, "SidewalkStartImportInfo", "Positioning"),
            type = "structure",
            name = "Positioning",
            target_id = id.from(_N, "SidewalkPositioning"),
            target = M.SidewalkPositioning,
        }),
    },
})

M.StartWirelessDeviceImportTaskInput = schema.new({
    id = id.from(_N, "StartWirelessDeviceImportTaskInput"),
    type = "structure",
    members = {
        DestinationName = schema.new({
            id = id.from(_N, "StartWirelessDeviceImportTaskInput", "DestinationName"),
            type = "string",
            name = "DestinationName",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        ClientRequestToken = schema.new({
            id = id.from(_N, "StartWirelessDeviceImportTaskInput", "ClientRequestToken"),
            type = "string",
            name = "ClientRequestToken",
            target_id = prelude.String.id,
            traits = {
                [traits.IDEMPOTENCY_TOKEN] = {},
            },
        }),
        Tags = schema.new({
            id = id.from(_N, "StartWirelessDeviceImportTaskInput", "Tags"),
            type = "list",
            name = "Tags",
            target_id = prelude.Document.id,
            list_member = M.Tag,
        }),
        Positioning = schema.new({
            id = id.from(_N, "StartWirelessDeviceImportTaskInput", "Positioning"),
            type = "string",
            name = "Positioning",
            target_id = prelude.String.id,
        }),
        Sidewalk = schema.new({
            id = id.from(_N, "StartWirelessDeviceImportTaskInput", "Sidewalk"),
            type = "structure",
            name = "Sidewalk",
            target_id = id.from(_N, "SidewalkStartImportInfo"),
            target = M.SidewalkStartImportInfo,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.StartWirelessDeviceImportTaskOutput = schema.new({
    id = id.from(_N, "StartWirelessDeviceImportTaskOutput"),
    type = "structure",
    members = {
        Id = schema.new({
            id = id.from(_N, "StartWirelessDeviceImportTaskOutput", "Id"),
            type = "string",
            name = "Id",
            target_id = prelude.String.id,
        }),
        Arn = schema.new({
            id = id.from(_N, "StartWirelessDeviceImportTaskOutput", "Arn"),
            type = "string",
            name = "Arn",
            target_id = prelude.String.id,
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
                [traits.HTTP_QUERY] = { name = "resourceArn" },
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

M.TooManyTagsException = schema.new({
    id = id.from(_N, "TooManyTagsException"),
    type = "structure",
    traits = {
        [traits.ERROR] = { value = "client" },
    },
    members = {
        Message = schema.new({
            id = id.from(_N, "TooManyTagsException", "Message"),
            type = "string",
            name = "Message",
            target_id = prelude.String.id,
        }),
        ResourceName = schema.new({
            id = id.from(_N, "TooManyTagsException", "ResourceName"),
            type = "string",
            name = "ResourceName",
            target_id = prelude.String.id,
        }),
    },
})

M.TestWirelessDeviceInput = schema.new({
    id = id.from(_N, "TestWirelessDeviceInput"),
    type = "structure",
    members = {
        Id = schema.new({
            id = id.from(_N, "TestWirelessDeviceInput", "Id"),
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

M.TestWirelessDeviceOutput = schema.new({
    id = id.from(_N, "TestWirelessDeviceOutput"),
    type = "structure",
    members = {
        Result = schema.new({
            id = id.from(_N, "TestWirelessDeviceOutput", "Result"),
            type = "string",
            name = "Result",
            target_id = prelude.String.id,
        }),
    },
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
                [traits.HTTP_QUERY] = { name = "resourceArn" },
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
    id = id.from(_N, "UntagResourceOutput"),
    type = "structure",
})

M.UpdateDestinationInput = schema.new({
    id = id.from(_N, "UpdateDestinationInput"),
    type = "structure",
    members = {
        Name = schema.new({
            id = id.from(_N, "UpdateDestinationInput", "Name"),
            type = "string",
            name = "Name",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
        ExpressionType = schema.new({
            id = id.from(_N, "UpdateDestinationInput", "ExpressionType"),
            type = "string",
            name = "ExpressionType",
            target_id = prelude.String.id,
        }),
        Expression = schema.new({
            id = id.from(_N, "UpdateDestinationInput", "Expression"),
            type = "string",
            name = "Expression",
            target_id = prelude.String.id,
        }),
        Description = schema.new({
            id = id.from(_N, "UpdateDestinationInput", "Description"),
            type = "string",
            name = "Description",
            target_id = prelude.String.id,
        }),
        RoleArn = schema.new({
            id = id.from(_N, "UpdateDestinationInput", "RoleArn"),
            type = "string",
            name = "RoleArn",
            target_id = prelude.String.id,
        }),
    },
})

M.UpdateDestinationOutput = schema.new({
    id = id.from(_N, "UpdateDestinationOutput"),
    type = "structure",
})

M.UpdateEventConfigurationByResourceTypesInput = schema.new({
    id = id.from(_N, "UpdateEventConfigurationByResourceTypesInput"),
    type = "structure",
    members = {
        DeviceRegistrationState = schema.new({
            id = id.from(_N, "UpdateEventConfigurationByResourceTypesInput", "DeviceRegistrationState"),
            type = "structure",
            name = "DeviceRegistrationState",
            target_id = id.from(_N, "DeviceRegistrationStateResourceTypeEventConfiguration"),
            target = M.DeviceRegistrationStateResourceTypeEventConfiguration,
        }),
        Proximity = schema.new({
            id = id.from(_N, "UpdateEventConfigurationByResourceTypesInput", "Proximity"),
            type = "structure",
            name = "Proximity",
            target_id = id.from(_N, "ProximityResourceTypeEventConfiguration"),
            target = M.ProximityResourceTypeEventConfiguration,
        }),
        Join = schema.new({
            id = id.from(_N, "UpdateEventConfigurationByResourceTypesInput", "Join"),
            type = "structure",
            name = "Join",
            target_id = id.from(_N, "JoinResourceTypeEventConfiguration"),
            target = M.JoinResourceTypeEventConfiguration,
        }),
        ConnectionStatus = schema.new({
            id = id.from(_N, "UpdateEventConfigurationByResourceTypesInput", "ConnectionStatus"),
            type = "structure",
            name = "ConnectionStatus",
            target_id = id.from(_N, "ConnectionStatusResourceTypeEventConfiguration"),
            target = M.ConnectionStatusResourceTypeEventConfiguration,
        }),
        MessageDeliveryStatus = schema.new({
            id = id.from(_N, "UpdateEventConfigurationByResourceTypesInput", "MessageDeliveryStatus"),
            type = "structure",
            name = "MessageDeliveryStatus",
            target_id = id.from(_N, "MessageDeliveryStatusResourceTypeEventConfiguration"),
            target = M.MessageDeliveryStatusResourceTypeEventConfiguration,
        }),
    },
})

M.UpdateEventConfigurationByResourceTypesOutput = schema.new({
    id = id.from(_N, "UpdateEventConfigurationByResourceTypesOutput"),
    type = "structure",
})

M.UpdateFuotaTaskInput = schema.new({
    id = id.from(_N, "UpdateFuotaTaskInput"),
    type = "structure",
    members = {
        Id = schema.new({
            id = id.from(_N, "UpdateFuotaTaskInput", "Id"),
            type = "string",
            name = "Id",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
        Name = schema.new({
            id = id.from(_N, "UpdateFuotaTaskInput", "Name"),
            type = "string",
            name = "Name",
            target_id = prelude.String.id,
        }),
        Description = schema.new({
            id = id.from(_N, "UpdateFuotaTaskInput", "Description"),
            type = "string",
            name = "Description",
            target_id = prelude.String.id,
        }),
        LoRaWAN = schema.new({
            id = id.from(_N, "UpdateFuotaTaskInput", "LoRaWAN"),
            type = "structure",
            name = "LoRaWAN",
            target_id = id.from(_N, "LoRaWANFuotaTask"),
            target = M.LoRaWANFuotaTask,
        }),
        FirmwareUpdateImage = schema.new({
            id = id.from(_N, "UpdateFuotaTaskInput", "FirmwareUpdateImage"),
            type = "string",
            name = "FirmwareUpdateImage",
            target_id = prelude.String.id,
        }),
        FirmwareUpdateRole = schema.new({
            id = id.from(_N, "UpdateFuotaTaskInput", "FirmwareUpdateRole"),
            type = "string",
            name = "FirmwareUpdateRole",
            target_id = prelude.String.id,
        }),
        RedundancyPercent = schema.new({
            id = id.from(_N, "UpdateFuotaTaskInput", "RedundancyPercent"),
            type = "integer",
            name = "RedundancyPercent",
            target_id = prelude.Integer.id,
        }),
        FragmentSizeBytes = schema.new({
            id = id.from(_N, "UpdateFuotaTaskInput", "FragmentSizeBytes"),
            type = "integer",
            name = "FragmentSizeBytes",
            target_id = prelude.Integer.id,
        }),
        FragmentIntervalMS = schema.new({
            id = id.from(_N, "UpdateFuotaTaskInput", "FragmentIntervalMS"),
            type = "integer",
            name = "FragmentIntervalMS",
            target_id = prelude.Integer.id,
        }),
        Descriptor = schema.new({
            id = id.from(_N, "UpdateFuotaTaskInput", "Descriptor"),
            type = "string",
            name = "Descriptor",
            target_id = prelude.String.id,
        }),
    },
})

M.UpdateFuotaTaskOutput = schema.new({
    id = id.from(_N, "UpdateFuotaTaskOutput"),
    type = "structure",
})

M.UpdateLogLevelsByResourceTypesInput = schema.new({
    id = id.from(_N, "UpdateLogLevelsByResourceTypesInput"),
    type = "structure",
    members = {
        DefaultLogLevel = schema.new({
            id = id.from(_N, "UpdateLogLevelsByResourceTypesInput", "DefaultLogLevel"),
            type = "string",
            name = "DefaultLogLevel",
            target_id = prelude.String.id,
        }),
        FuotaTaskLogOptions = schema.new({
            id = id.from(_N, "UpdateLogLevelsByResourceTypesInput", "FuotaTaskLogOptions"),
            type = "list",
            name = "FuotaTaskLogOptions",
            target_id = prelude.Document.id,
            list_member = M.FuotaTaskLogOption,
        }),
        WirelessDeviceLogOptions = schema.new({
            id = id.from(_N, "UpdateLogLevelsByResourceTypesInput", "WirelessDeviceLogOptions"),
            type = "list",
            name = "WirelessDeviceLogOptions",
            target_id = prelude.Document.id,
            list_member = M.WirelessDeviceLogOption,
        }),
        WirelessGatewayLogOptions = schema.new({
            id = id.from(_N, "UpdateLogLevelsByResourceTypesInput", "WirelessGatewayLogOptions"),
            type = "list",
            name = "WirelessGatewayLogOptions",
            target_id = prelude.Document.id,
            list_member = M.WirelessGatewayLogOption,
        }),
    },
})

M.UpdateLogLevelsByResourceTypesOutput = schema.new({
    id = id.from(_N, "UpdateLogLevelsByResourceTypesOutput"),
    type = "structure",
})

M.UpdateMetricConfigurationInput = schema.new({
    id = id.from(_N, "UpdateMetricConfigurationInput"),
    type = "structure",
    members = {
        SummaryMetric = schema.new({
            id = id.from(_N, "UpdateMetricConfigurationInput", "SummaryMetric"),
            type = "structure",
            name = "SummaryMetric",
            target_id = id.from(_N, "SummaryMetricConfiguration"),
            target = M.SummaryMetricConfiguration,
        }),
    },
})

M.UpdateMetricConfigurationOutput = schema.new({
    id = id.from(_N, "UpdateMetricConfigurationOutput"),
    type = "structure",
})

M.UpdateMulticastGroupInput = schema.new({
    id = id.from(_N, "UpdateMulticastGroupInput"),
    type = "structure",
    members = {
        Id = schema.new({
            id = id.from(_N, "UpdateMulticastGroupInput", "Id"),
            type = "string",
            name = "Id",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
        Name = schema.new({
            id = id.from(_N, "UpdateMulticastGroupInput", "Name"),
            type = "string",
            name = "Name",
            target_id = prelude.String.id,
        }),
        Description = schema.new({
            id = id.from(_N, "UpdateMulticastGroupInput", "Description"),
            type = "string",
            name = "Description",
            target_id = prelude.String.id,
        }),
        LoRaWAN = schema.new({
            id = id.from(_N, "UpdateMulticastGroupInput", "LoRaWAN"),
            type = "structure",
            name = "LoRaWAN",
            target_id = id.from(_N, "LoRaWANMulticast"),
            target = M.LoRaWANMulticast,
        }),
    },
})

M.UpdateMulticastGroupOutput = schema.new({
    id = id.from(_N, "UpdateMulticastGroupOutput"),
    type = "structure",
})

M.UpdateNetworkAnalyzerConfigurationInput = schema.new({
    id = id.from(_N, "UpdateNetworkAnalyzerConfigurationInput"),
    type = "structure",
    members = {
        ConfigurationName = schema.new({
            id = id.from(_N, "UpdateNetworkAnalyzerConfigurationInput", "ConfigurationName"),
            type = "string",
            name = "ConfigurationName",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
        TraceContent = schema.new({
            id = id.from(_N, "UpdateNetworkAnalyzerConfigurationInput", "TraceContent"),
            type = "structure",
            name = "TraceContent",
            target_id = id.from(_N, "TraceContent"),
            target = M.TraceContent,
        }),
        WirelessDevicesToAdd = schema.new({
            id = id.from(_N, "UpdateNetworkAnalyzerConfigurationInput", "WirelessDevicesToAdd"),
            type = "list",
            name = "WirelessDevicesToAdd",
            target_id = prelude.Document.id,
            list_member = prelude.String,
        }),
        WirelessDevicesToRemove = schema.new({
            id = id.from(_N, "UpdateNetworkAnalyzerConfigurationInput", "WirelessDevicesToRemove"),
            type = "list",
            name = "WirelessDevicesToRemove",
            target_id = prelude.Document.id,
            list_member = prelude.String,
        }),
        WirelessGatewaysToAdd = schema.new({
            id = id.from(_N, "UpdateNetworkAnalyzerConfigurationInput", "WirelessGatewaysToAdd"),
            type = "list",
            name = "WirelessGatewaysToAdd",
            target_id = prelude.Document.id,
            list_member = prelude.String,
        }),
        WirelessGatewaysToRemove = schema.new({
            id = id.from(_N, "UpdateNetworkAnalyzerConfigurationInput", "WirelessGatewaysToRemove"),
            type = "list",
            name = "WirelessGatewaysToRemove",
            target_id = prelude.Document.id,
            list_member = prelude.String,
        }),
        Description = schema.new({
            id = id.from(_N, "UpdateNetworkAnalyzerConfigurationInput", "Description"),
            type = "string",
            name = "Description",
            target_id = prelude.String.id,
        }),
        MulticastGroupsToAdd = schema.new({
            id = id.from(_N, "UpdateNetworkAnalyzerConfigurationInput", "MulticastGroupsToAdd"),
            type = "list",
            name = "MulticastGroupsToAdd",
            target_id = prelude.Document.id,
            list_member = prelude.String,
        }),
        MulticastGroupsToRemove = schema.new({
            id = id.from(_N, "UpdateNetworkAnalyzerConfigurationInput", "MulticastGroupsToRemove"),
            type = "list",
            name = "MulticastGroupsToRemove",
            target_id = prelude.Document.id,
            list_member = prelude.String,
        }),
    },
})

M.UpdateNetworkAnalyzerConfigurationOutput = schema.new({
    id = id.from(_N, "UpdateNetworkAnalyzerConfigurationOutput"),
    type = "structure",
})

M.SidewalkUpdateAccount = schema.new({
    id = id.from(_N, "SidewalkUpdateAccount"),
    type = "structure",
    members = {
        AppServerPrivateKey = schema.new({
            id = id.from(_N, "SidewalkUpdateAccount", "AppServerPrivateKey"),
            type = "string",
            name = "AppServerPrivateKey",
            target_id = prelude.String.id,
        }),
    },
})

M.UpdatePartnerAccountInput = schema.new({
    id = id.from(_N, "UpdatePartnerAccountInput"),
    type = "structure",
    members = {
        Sidewalk = schema.new({
            id = id.from(_N, "UpdatePartnerAccountInput", "Sidewalk"),
            type = "structure",
            name = "Sidewalk",
            target_id = id.from(_N, "SidewalkUpdateAccount"),
            target = M.SidewalkUpdateAccount,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        PartnerAccountId = schema.new({
            id = id.from(_N, "UpdatePartnerAccountInput", "PartnerAccountId"),
            type = "string",
            name = "PartnerAccountId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
        PartnerType = schema.new({
            id = id.from(_N, "UpdatePartnerAccountInput", "PartnerType"),
            type = "string",
            name = "PartnerType",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_QUERY] = { name = "partnerType" },
            },
        }),
    },
})

M.UpdatePartnerAccountOutput = schema.new({
    id = id.from(_N, "UpdatePartnerAccountOutput"),
    type = "structure",
})

M.UpdatePositionInput = schema.new({
    id = id.from(_N, "UpdatePositionInput"),
    type = "structure",
    members = {
        ResourceIdentifier = schema.new({
            id = id.from(_N, "UpdatePositionInput", "ResourceIdentifier"),
            type = "string",
            name = "ResourceIdentifier",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
        ResourceType = schema.new({
            id = id.from(_N, "UpdatePositionInput", "ResourceType"),
            type = "string",
            name = "ResourceType",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_QUERY] = { name = "resourceType" },
            },
        }),
        Position = schema.new({
            id = id.from(_N, "UpdatePositionInput", "Position"),
            type = "list",
            name = "Position",
            target_id = prelude.Document.id,
            list_member = prelude.Float,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.UpdatePositionOutput = schema.new({
    id = id.from(_N, "UpdatePositionOutput"),
    type = "structure",
})

M.UpdateResourceEventConfigurationInput = schema.new({
    id = id.from(_N, "UpdateResourceEventConfigurationInput"),
    type = "structure",
    members = {
        Identifier = schema.new({
            id = id.from(_N, "UpdateResourceEventConfigurationInput", "Identifier"),
            type = "string",
            name = "Identifier",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
        IdentifierType = schema.new({
            id = id.from(_N, "UpdateResourceEventConfigurationInput", "IdentifierType"),
            type = "string",
            name = "IdentifierType",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_QUERY] = { name = "identifierType" },
            },
        }),
        PartnerType = schema.new({
            id = id.from(_N, "UpdateResourceEventConfigurationInput", "PartnerType"),
            type = "string",
            name = "PartnerType",
            target_id = prelude.String.id,
            traits = {
                [traits.HTTP_QUERY] = { name = "partnerType" },
            },
        }),
        DeviceRegistrationState = schema.new({
            id = id.from(_N, "UpdateResourceEventConfigurationInput", "DeviceRegistrationState"),
            type = "structure",
            name = "DeviceRegistrationState",
            target_id = id.from(_N, "DeviceRegistrationStateEventConfiguration"),
            target = M.DeviceRegistrationStateEventConfiguration,
        }),
        Proximity = schema.new({
            id = id.from(_N, "UpdateResourceEventConfigurationInput", "Proximity"),
            type = "structure",
            name = "Proximity",
            target_id = id.from(_N, "ProximityEventConfiguration"),
            target = M.ProximityEventConfiguration,
        }),
        Join = schema.new({
            id = id.from(_N, "UpdateResourceEventConfigurationInput", "Join"),
            type = "structure",
            name = "Join",
            target_id = id.from(_N, "JoinEventConfiguration"),
            target = M.JoinEventConfiguration,
        }),
        ConnectionStatus = schema.new({
            id = id.from(_N, "UpdateResourceEventConfigurationInput", "ConnectionStatus"),
            type = "structure",
            name = "ConnectionStatus",
            target_id = id.from(_N, "ConnectionStatusEventConfiguration"),
            target = M.ConnectionStatusEventConfiguration,
        }),
        MessageDeliveryStatus = schema.new({
            id = id.from(_N, "UpdateResourceEventConfigurationInput", "MessageDeliveryStatus"),
            type = "structure",
            name = "MessageDeliveryStatus",
            target_id = id.from(_N, "MessageDeliveryStatusEventConfiguration"),
            target = M.MessageDeliveryStatusEventConfiguration,
        }),
    },
})

M.UpdateResourceEventConfigurationOutput = schema.new({
    id = id.from(_N, "UpdateResourceEventConfigurationOutput"),
    type = "structure",
})

M.UpdateResourcePositionInput = schema.new({
    id = id.from(_N, "UpdateResourcePositionInput"),
    type = "structure",
    members = {
        ResourceIdentifier = schema.new({
            id = id.from(_N, "UpdateResourcePositionInput", "ResourceIdentifier"),
            type = "string",
            name = "ResourceIdentifier",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
        ResourceType = schema.new({
            id = id.from(_N, "UpdateResourcePositionInput", "ResourceType"),
            type = "string",
            name = "ResourceType",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_QUERY] = { name = "resourceType" },
            },
        }),
        GeoJsonPayload = schema.new({
            id = id.from(_N, "UpdateResourcePositionInput", "GeoJsonPayload"),
            type = "blob",
            name = "GeoJsonPayload",
            target_id = prelude.Blob.id,
            traits = {
                [traits.HTTP_PAYLOAD] = {},
            },
        }),
    },
})

M.UpdateResourcePositionOutput = schema.new({
    id = id.from(_N, "UpdateResourcePositionOutput"),
    type = "structure",
})

M.UpdateAbpV1_0_x = schema.new({
    id = id.from(_N, "UpdateAbpV1_0_x"),
    type = "structure",
    members = {
        FCntStart = schema.new({
            id = id.from(_N, "UpdateAbpV1_0_x", "FCntStart"),
            type = "integer",
            name = "FCntStart",
            target_id = prelude.Integer.id,
        }),
    },
})

M.UpdateAbpV1_1 = schema.new({
    id = id.from(_N, "UpdateAbpV1_1"),
    type = "structure",
    members = {
        FCntStart = schema.new({
            id = id.from(_N, "UpdateAbpV1_1", "FCntStart"),
            type = "integer",
            name = "FCntStart",
            target_id = prelude.Integer.id,
        }),
    },
})

M.UpdateFPorts = schema.new({
    id = id.from(_N, "UpdateFPorts"),
    type = "structure",
    members = {
        Positioning = schema.new({
            id = id.from(_N, "UpdateFPorts", "Positioning"),
            type = "structure",
            name = "Positioning",
            target_id = id.from(_N, "Positioning"),
            target = M.Positioning,
        }),
        Applications = schema.new({
            id = id.from(_N, "UpdateFPorts", "Applications"),
            type = "list",
            name = "Applications",
            target_id = prelude.Document.id,
            list_member = M.ApplicationConfig,
        }),
    },
})

M.LoRaWANUpdateDevice = schema.new({
    id = id.from(_N, "LoRaWANUpdateDevice"),
    type = "structure",
    members = {
        DeviceProfileId = schema.new({
            id = id.from(_N, "LoRaWANUpdateDevice", "DeviceProfileId"),
            type = "string",
            name = "DeviceProfileId",
            target_id = prelude.String.id,
        }),
        ServiceProfileId = schema.new({
            id = id.from(_N, "LoRaWANUpdateDevice", "ServiceProfileId"),
            type = "string",
            name = "ServiceProfileId",
            target_id = prelude.String.id,
        }),
        AbpV1_1 = schema.new({
            id = id.from(_N, "LoRaWANUpdateDevice", "AbpV1_1"),
            type = "structure",
            name = "AbpV1_1",
            target_id = id.from(_N, "UpdateAbpV1_1"),
            target = M.UpdateAbpV1_1,
        }),
        AbpV1_0_x = schema.new({
            id = id.from(_N, "LoRaWANUpdateDevice", "AbpV1_0_x"),
            type = "structure",
            name = "AbpV1_0_x",
            target_id = id.from(_N, "UpdateAbpV1_0_x"),
            target = M.UpdateAbpV1_0_x,
        }),
        FPorts = schema.new({
            id = id.from(_N, "LoRaWANUpdateDevice", "FPorts"),
            type = "structure",
            name = "FPorts",
            target_id = id.from(_N, "UpdateFPorts"),
            target = M.UpdateFPorts,
        }),
    },
})

M.SidewalkUpdateWirelessDevice = schema.new({
    id = id.from(_N, "SidewalkUpdateWirelessDevice"),
    type = "structure",
    members = {
        Positioning = schema.new({
            id = id.from(_N, "SidewalkUpdateWirelessDevice", "Positioning"),
            type = "structure",
            name = "Positioning",
            target_id = id.from(_N, "SidewalkPositioning"),
            target = M.SidewalkPositioning,
        }),
    },
})

M.UpdateWirelessDeviceInput = schema.new({
    id = id.from(_N, "UpdateWirelessDeviceInput"),
    type = "structure",
    members = {
        Id = schema.new({
            id = id.from(_N, "UpdateWirelessDeviceInput", "Id"),
            type = "string",
            name = "Id",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
        DestinationName = schema.new({
            id = id.from(_N, "UpdateWirelessDeviceInput", "DestinationName"),
            type = "string",
            name = "DestinationName",
            target_id = prelude.String.id,
        }),
        Name = schema.new({
            id = id.from(_N, "UpdateWirelessDeviceInput", "Name"),
            type = "string",
            name = "Name",
            target_id = prelude.String.id,
        }),
        Description = schema.new({
            id = id.from(_N, "UpdateWirelessDeviceInput", "Description"),
            type = "string",
            name = "Description",
            target_id = prelude.String.id,
        }),
        LoRaWAN = schema.new({
            id = id.from(_N, "UpdateWirelessDeviceInput", "LoRaWAN"),
            type = "structure",
            name = "LoRaWAN",
            target_id = id.from(_N, "LoRaWANUpdateDevice"),
            target = M.LoRaWANUpdateDevice,
        }),
        Positioning = schema.new({
            id = id.from(_N, "UpdateWirelessDeviceInput", "Positioning"),
            type = "string",
            name = "Positioning",
            target_id = prelude.String.id,
        }),
        Sidewalk = schema.new({
            id = id.from(_N, "UpdateWirelessDeviceInput", "Sidewalk"),
            type = "structure",
            name = "Sidewalk",
            target_id = id.from(_N, "SidewalkUpdateWirelessDevice"),
            target = M.SidewalkUpdateWirelessDevice,
        }),
    },
})

M.UpdateWirelessDeviceOutput = schema.new({
    id = id.from(_N, "UpdateWirelessDeviceOutput"),
    type = "structure",
})

M.SidewalkUpdateImportInfo = schema.new({
    id = id.from(_N, "SidewalkUpdateImportInfo"),
    type = "structure",
    members = {
        DeviceCreationFile = schema.new({
            id = id.from(_N, "SidewalkUpdateImportInfo", "DeviceCreationFile"),
            type = "string",
            name = "DeviceCreationFile",
            target_id = prelude.String.id,
        }),
    },
})

M.UpdateWirelessDeviceImportTaskInput = schema.new({
    id = id.from(_N, "UpdateWirelessDeviceImportTaskInput"),
    type = "structure",
    members = {
        Id = schema.new({
            id = id.from(_N, "UpdateWirelessDeviceImportTaskInput", "Id"),
            type = "string",
            name = "Id",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
        Sidewalk = schema.new({
            id = id.from(_N, "UpdateWirelessDeviceImportTaskInput", "Sidewalk"),
            type = "structure",
            name = "Sidewalk",
            target_id = id.from(_N, "SidewalkUpdateImportInfo"),
            target = M.SidewalkUpdateImportInfo,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.UpdateWirelessDeviceImportTaskOutput = schema.new({
    id = id.from(_N, "UpdateWirelessDeviceImportTaskOutput"),
    type = "structure",
})

M.UpdateWirelessGatewayInput = schema.new({
    id = id.from(_N, "UpdateWirelessGatewayInput"),
    type = "structure",
    members = {
        Id = schema.new({
            id = id.from(_N, "UpdateWirelessGatewayInput", "Id"),
            type = "string",
            name = "Id",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
        Name = schema.new({
            id = id.from(_N, "UpdateWirelessGatewayInput", "Name"),
            type = "string",
            name = "Name",
            target_id = prelude.String.id,
        }),
        Description = schema.new({
            id = id.from(_N, "UpdateWirelessGatewayInput", "Description"),
            type = "string",
            name = "Description",
            target_id = prelude.String.id,
        }),
        JoinEuiFilters = schema.new({
            id = id.from(_N, "UpdateWirelessGatewayInput", "JoinEuiFilters"),
            type = "list",
            name = "JoinEuiFilters",
            target_id = prelude.Document.id,
            list_member = prelude.Document,
        }),
        NetIdFilters = schema.new({
            id = id.from(_N, "UpdateWirelessGatewayInput", "NetIdFilters"),
            type = "list",
            name = "NetIdFilters",
            target_id = prelude.Document.id,
            list_member = prelude.String,
        }),
        MaxEirp = schema.new({
            id = id.from(_N, "UpdateWirelessGatewayInput", "MaxEirp"),
            type = "float",
            name = "MaxEirp",
            target_id = prelude.Float.id,
        }),
    },
})

M.UpdateWirelessGatewayOutput = schema.new({
    id = id.from(_N, "UpdateWirelessGatewayOutput"),
    type = "structure",
})

return M
