local id = require("smithy.shape_id")
local schema = require("smithy.schema")
local prelude = require("smithy.prelude")
local traits = require("smithy.traits")

local _N = "com.amazonaws.cloudhsm"

local M = {}

M.TagList = schema.new({ type = "list", list_member = M.Tag })

M.HsmList = schema.new({ type = "list", list_member = prelude.String })

M.PartitionSerialList = schema.new({ type = "list", list_member = prelude.String })

M.PartitionList = schema.new({ type = "list", list_member = prelude.String })

M.HapgList = schema.new({ type = "list", list_member = prelude.String })

M.AZList = schema.new({ type = "list", list_member = prelude.String })

M.ClientList = schema.new({ type = "list", list_member = prelude.String })

M.TagKeyList = schema.new({ type = "list", list_member = prelude.String })

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

M.AddTagsToResourceInput = schema.new({
    id = id.from(_N, "AddTagsToResourceRequest"),
    type = "structure",
    members = {
        ResourceArn = schema.new({
            id = id.from(_N, "AddTagsToResourceInput", "ResourceArn"),
            type = "string",
            name = "ResourceArn",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        TagList = schema.new({
            id = id.from(_N, "AddTagsToResourceInput", "TagList"),
            type = "list",
            name = "TagList",
            target_id = prelude.Document.id,
            list_member = M.Tag,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.AddTagsToResourceOutput = schema.new({
    id = id.from(_N, "AddTagsToResourceResponse"),
    type = "structure",
    members = {
        Status = schema.new({
            id = id.from(_N, "AddTagsToResourceOutput", "Status"),
            type = "string",
            name = "Status",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.CloudHsmInternalException = schema.new({
    id = id.from(_N, "CloudHsmInternalException"),
    type = "structure",
    traits = {
        [traits.ERROR] = { value = "server" },
    },
    members = {
        message = schema.new({
            id = id.from(_N, "CloudHsmInternalException", "message"),
            type = "string",
            name = "message",
            target_id = prelude.String.id,
        }),
        retryable = schema.new({
            id = id.from(_N, "CloudHsmInternalException", "retryable"),
            type = "boolean",
            name = "retryable",
            target_id = prelude.Boolean.id,
            traits = {
                [traits.DEFAULT] = { value = false },
            },
        }),
    },
})

M.CloudHsmServiceException = schema.new({
    id = id.from(_N, "CloudHsmServiceException"),
    type = "structure",
    traits = {
        [traits.ERROR] = { value = "client" },
    },
    members = {
        message = schema.new({
            id = id.from(_N, "CloudHsmServiceException", "message"),
            type = "string",
            name = "message",
            target_id = prelude.String.id,
        }),
        retryable = schema.new({
            id = id.from(_N, "CloudHsmServiceException", "retryable"),
            type = "boolean",
            name = "retryable",
            target_id = prelude.Boolean.id,
            traits = {
                [traits.DEFAULT] = { value = false },
            },
        }),
    },
})

M.InvalidRequestException = schema.new({
    id = id.from(_N, "InvalidRequestException"),
    type = "structure",
    traits = {
        [traits.ERROR] = { value = "client" },
    },
    members = {
        message = schema.new({
            id = id.from(_N, "InvalidRequestException", "message"),
            type = "string",
            name = "message",
            target_id = prelude.String.id,
        }),
        retryable = schema.new({
            id = id.from(_N, "InvalidRequestException", "retryable"),
            type = "boolean",
            name = "retryable",
            target_id = prelude.Boolean.id,
            traits = {
                [traits.DEFAULT] = { value = false },
            },
        }),
    },
})

M.CreateHapgInput = schema.new({
    id = id.from(_N, "CreateHapgRequest"),
    type = "structure",
    members = {
        Label = schema.new({
            id = id.from(_N, "CreateHapgInput", "Label"),
            type = "string",
            name = "Label",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.CreateHapgOutput = schema.new({
    id = id.from(_N, "CreateHapgResponse"),
    type = "structure",
    members = {
        HapgArn = schema.new({
            id = id.from(_N, "CreateHapgOutput", "HapgArn"),
            type = "string",
            name = "HapgArn",
            target_id = prelude.String.id,
        }),
    },
})

M.CreateHsmInput = schema.new({
    id = id.from(_N, "CreateHsmRequest"),
    type = "structure",
    traits = {
        [traits.XML_NAME] = { name = "CreateHsmRequest" },
    },
    members = {
        SubnetId = schema.new({
            id = id.from(_N, "CreateHsmInput", "SubnetId"),
            type = "string",
            name = "SubnetId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.XML_NAME] = { name = "SubnetId" },
            },
        }),
        SshKey = schema.new({
            id = id.from(_N, "CreateHsmInput", "SshKey"),
            type = "string",
            name = "SshKey",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.XML_NAME] = { name = "SshKey" },
            },
        }),
        EniIp = schema.new({
            id = id.from(_N, "CreateHsmInput", "EniIp"),
            type = "string",
            name = "EniIp",
            target_id = prelude.String.id,
            traits = {
                [traits.XML_NAME] = { name = "EniIp" },
            },
        }),
        IamRoleArn = schema.new({
            id = id.from(_N, "CreateHsmInput", "IamRoleArn"),
            type = "string",
            name = "IamRoleArn",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.XML_NAME] = { name = "IamRoleArn" },
            },
        }),
        ExternalId = schema.new({
            id = id.from(_N, "CreateHsmInput", "ExternalId"),
            type = "string",
            name = "ExternalId",
            target_id = prelude.String.id,
            traits = {
                [traits.XML_NAME] = { name = "ExternalId" },
            },
        }),
        SubscriptionType = schema.new({
            id = id.from(_N, "CreateHsmInput", "SubscriptionType"),
            type = "string",
            name = "SubscriptionType",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.XML_NAME] = { name = "SubscriptionType" },
            },
        }),
        ClientToken = schema.new({
            id = id.from(_N, "CreateHsmInput", "ClientToken"),
            type = "string",
            name = "ClientToken",
            target_id = prelude.String.id,
            traits = {
                [traits.XML_NAME] = { name = "ClientToken" },
            },
        }),
        SyslogIp = schema.new({
            id = id.from(_N, "CreateHsmInput", "SyslogIp"),
            type = "string",
            name = "SyslogIp",
            target_id = prelude.String.id,
            traits = {
                [traits.XML_NAME] = { name = "SyslogIp" },
            },
        }),
    },
})

M.CreateHsmOutput = schema.new({
    id = id.from(_N, "CreateHsmResponse"),
    type = "structure",
    members = {
        HsmArn = schema.new({
            id = id.from(_N, "CreateHsmOutput", "HsmArn"),
            type = "string",
            name = "HsmArn",
            target_id = prelude.String.id,
        }),
    },
})

M.CreateLunaClientInput = schema.new({
    id = id.from(_N, "CreateLunaClientRequest"),
    type = "structure",
    members = {
        Label = schema.new({
            id = id.from(_N, "CreateLunaClientInput", "Label"),
            type = "string",
            name = "Label",
            target_id = prelude.String.id,
        }),
        Certificate = schema.new({
            id = id.from(_N, "CreateLunaClientInput", "Certificate"),
            type = "string",
            name = "Certificate",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.CreateLunaClientOutput = schema.new({
    id = id.from(_N, "CreateLunaClientResponse"),
    type = "structure",
    members = {
        ClientArn = schema.new({
            id = id.from(_N, "CreateLunaClientOutput", "ClientArn"),
            type = "string",
            name = "ClientArn",
            target_id = prelude.String.id,
        }),
    },
})

M.DeleteHapgInput = schema.new({
    id = id.from(_N, "DeleteHapgRequest"),
    type = "structure",
    members = {
        HapgArn = schema.new({
            id = id.from(_N, "DeleteHapgInput", "HapgArn"),
            type = "string",
            name = "HapgArn",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.DeleteHapgOutput = schema.new({
    id = id.from(_N, "DeleteHapgResponse"),
    type = "structure",
    members = {
        Status = schema.new({
            id = id.from(_N, "DeleteHapgOutput", "Status"),
            type = "string",
            name = "Status",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.DeleteHsmInput = schema.new({
    id = id.from(_N, "DeleteHsmRequest"),
    type = "structure",
    traits = {
        [traits.XML_NAME] = { name = "DeleteHsmRequest" },
    },
    members = {
        HsmArn = schema.new({
            id = id.from(_N, "DeleteHsmInput", "HsmArn"),
            type = "string",
            name = "HsmArn",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.XML_NAME] = { name = "HsmArn" },
            },
        }),
    },
})

M.DeleteHsmOutput = schema.new({
    id = id.from(_N, "DeleteHsmResponse"),
    type = "structure",
    members = {
        Status = schema.new({
            id = id.from(_N, "DeleteHsmOutput", "Status"),
            type = "string",
            name = "Status",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.DeleteLunaClientInput = schema.new({
    id = id.from(_N, "DeleteLunaClientRequest"),
    type = "structure",
    members = {
        ClientArn = schema.new({
            id = id.from(_N, "DeleteLunaClientInput", "ClientArn"),
            type = "string",
            name = "ClientArn",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.DeleteLunaClientOutput = schema.new({
    id = id.from(_N, "DeleteLunaClientResponse"),
    type = "structure",
    members = {
        Status = schema.new({
            id = id.from(_N, "DeleteLunaClientOutput", "Status"),
            type = "string",
            name = "Status",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.DescribeHapgInput = schema.new({
    id = id.from(_N, "DescribeHapgRequest"),
    type = "structure",
    members = {
        HapgArn = schema.new({
            id = id.from(_N, "DescribeHapgInput", "HapgArn"),
            type = "string",
            name = "HapgArn",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.DescribeHapgOutput = schema.new({
    id = id.from(_N, "DescribeHapgResponse"),
    type = "structure",
    members = {
        HapgArn = schema.new({
            id = id.from(_N, "DescribeHapgOutput", "HapgArn"),
            type = "string",
            name = "HapgArn",
            target_id = prelude.String.id,
        }),
        HapgSerial = schema.new({
            id = id.from(_N, "DescribeHapgOutput", "HapgSerial"),
            type = "string",
            name = "HapgSerial",
            target_id = prelude.String.id,
        }),
        HsmsLastActionFailed = schema.new({
            id = id.from(_N, "DescribeHapgOutput", "HsmsLastActionFailed"),
            type = "list",
            name = "HsmsLastActionFailed",
            target_id = prelude.Document.id,
            list_member = prelude.String,
        }),
        HsmsPendingDeletion = schema.new({
            id = id.from(_N, "DescribeHapgOutput", "HsmsPendingDeletion"),
            type = "list",
            name = "HsmsPendingDeletion",
            target_id = prelude.Document.id,
            list_member = prelude.String,
        }),
        HsmsPendingRegistration = schema.new({
            id = id.from(_N, "DescribeHapgOutput", "HsmsPendingRegistration"),
            type = "list",
            name = "HsmsPendingRegistration",
            target_id = prelude.Document.id,
            list_member = prelude.String,
        }),
        Label = schema.new({
            id = id.from(_N, "DescribeHapgOutput", "Label"),
            type = "string",
            name = "Label",
            target_id = prelude.String.id,
        }),
        LastModifiedTimestamp = schema.new({
            id = id.from(_N, "DescribeHapgOutput", "LastModifiedTimestamp"),
            type = "string",
            name = "LastModifiedTimestamp",
            target_id = prelude.String.id,
        }),
        PartitionSerialList = schema.new({
            id = id.from(_N, "DescribeHapgOutput", "PartitionSerialList"),
            type = "list",
            name = "PartitionSerialList",
            target_id = prelude.Document.id,
            list_member = prelude.String,
        }),
        State = schema.new({
            id = id.from(_N, "DescribeHapgOutput", "State"),
            type = "string",
            name = "State",
            target_id = prelude.String.id,
        }),
    },
})

M.DescribeHsmInput = schema.new({
    id = id.from(_N, "DescribeHsmRequest"),
    type = "structure",
    members = {
        HsmArn = schema.new({
            id = id.from(_N, "DescribeHsmInput", "HsmArn"),
            type = "string",
            name = "HsmArn",
            target_id = prelude.String.id,
        }),
        HsmSerialNumber = schema.new({
            id = id.from(_N, "DescribeHsmInput", "HsmSerialNumber"),
            type = "string",
            name = "HsmSerialNumber",
            target_id = prelude.String.id,
        }),
    },
})

M.DescribeHsmOutput = schema.new({
    id = id.from(_N, "DescribeHsmResponse"),
    type = "structure",
    members = {
        HsmArn = schema.new({
            id = id.from(_N, "DescribeHsmOutput", "HsmArn"),
            type = "string",
            name = "HsmArn",
            target_id = prelude.String.id,
        }),
        Status = schema.new({
            id = id.from(_N, "DescribeHsmOutput", "Status"),
            type = "string",
            name = "Status",
            target_id = prelude.String.id,
        }),
        StatusDetails = schema.new({
            id = id.from(_N, "DescribeHsmOutput", "StatusDetails"),
            type = "string",
            name = "StatusDetails",
            target_id = prelude.String.id,
        }),
        AvailabilityZone = schema.new({
            id = id.from(_N, "DescribeHsmOutput", "AvailabilityZone"),
            type = "string",
            name = "AvailabilityZone",
            target_id = prelude.String.id,
        }),
        EniId = schema.new({
            id = id.from(_N, "DescribeHsmOutput", "EniId"),
            type = "string",
            name = "EniId",
            target_id = prelude.String.id,
        }),
        EniIp = schema.new({
            id = id.from(_N, "DescribeHsmOutput", "EniIp"),
            type = "string",
            name = "EniIp",
            target_id = prelude.String.id,
        }),
        SubscriptionType = schema.new({
            id = id.from(_N, "DescribeHsmOutput", "SubscriptionType"),
            type = "string",
            name = "SubscriptionType",
            target_id = prelude.String.id,
        }),
        SubscriptionStartDate = schema.new({
            id = id.from(_N, "DescribeHsmOutput", "SubscriptionStartDate"),
            type = "string",
            name = "SubscriptionStartDate",
            target_id = prelude.String.id,
        }),
        SubscriptionEndDate = schema.new({
            id = id.from(_N, "DescribeHsmOutput", "SubscriptionEndDate"),
            type = "string",
            name = "SubscriptionEndDate",
            target_id = prelude.String.id,
        }),
        VpcId = schema.new({
            id = id.from(_N, "DescribeHsmOutput", "VpcId"),
            type = "string",
            name = "VpcId",
            target_id = prelude.String.id,
        }),
        SubnetId = schema.new({
            id = id.from(_N, "DescribeHsmOutput", "SubnetId"),
            type = "string",
            name = "SubnetId",
            target_id = prelude.String.id,
        }),
        IamRoleArn = schema.new({
            id = id.from(_N, "DescribeHsmOutput", "IamRoleArn"),
            type = "string",
            name = "IamRoleArn",
            target_id = prelude.String.id,
        }),
        SerialNumber = schema.new({
            id = id.from(_N, "DescribeHsmOutput", "SerialNumber"),
            type = "string",
            name = "SerialNumber",
            target_id = prelude.String.id,
        }),
        VendorName = schema.new({
            id = id.from(_N, "DescribeHsmOutput", "VendorName"),
            type = "string",
            name = "VendorName",
            target_id = prelude.String.id,
        }),
        HsmType = schema.new({
            id = id.from(_N, "DescribeHsmOutput", "HsmType"),
            type = "string",
            name = "HsmType",
            target_id = prelude.String.id,
        }),
        SoftwareVersion = schema.new({
            id = id.from(_N, "DescribeHsmOutput", "SoftwareVersion"),
            type = "string",
            name = "SoftwareVersion",
            target_id = prelude.String.id,
        }),
        SshPublicKey = schema.new({
            id = id.from(_N, "DescribeHsmOutput", "SshPublicKey"),
            type = "string",
            name = "SshPublicKey",
            target_id = prelude.String.id,
        }),
        SshKeyLastUpdated = schema.new({
            id = id.from(_N, "DescribeHsmOutput", "SshKeyLastUpdated"),
            type = "string",
            name = "SshKeyLastUpdated",
            target_id = prelude.String.id,
        }),
        ServerCertUri = schema.new({
            id = id.from(_N, "DescribeHsmOutput", "ServerCertUri"),
            type = "string",
            name = "ServerCertUri",
            target_id = prelude.String.id,
        }),
        ServerCertLastUpdated = schema.new({
            id = id.from(_N, "DescribeHsmOutput", "ServerCertLastUpdated"),
            type = "string",
            name = "ServerCertLastUpdated",
            target_id = prelude.String.id,
        }),
        Partitions = schema.new({
            id = id.from(_N, "DescribeHsmOutput", "Partitions"),
            type = "list",
            name = "Partitions",
            target_id = prelude.Document.id,
            list_member = prelude.String,
        }),
    },
})

M.DescribeLunaClientInput = schema.new({
    id = id.from(_N, "DescribeLunaClientRequest"),
    type = "structure",
    members = {
        ClientArn = schema.new({
            id = id.from(_N, "DescribeLunaClientInput", "ClientArn"),
            type = "string",
            name = "ClientArn",
            target_id = prelude.String.id,
        }),
        CertificateFingerprint = schema.new({
            id = id.from(_N, "DescribeLunaClientInput", "CertificateFingerprint"),
            type = "string",
            name = "CertificateFingerprint",
            target_id = prelude.String.id,
        }),
    },
})

M.DescribeLunaClientOutput = schema.new({
    id = id.from(_N, "DescribeLunaClientResponse"),
    type = "structure",
    members = {
        ClientArn = schema.new({
            id = id.from(_N, "DescribeLunaClientOutput", "ClientArn"),
            type = "string",
            name = "ClientArn",
            target_id = prelude.String.id,
        }),
        Certificate = schema.new({
            id = id.from(_N, "DescribeLunaClientOutput", "Certificate"),
            type = "string",
            name = "Certificate",
            target_id = prelude.String.id,
        }),
        CertificateFingerprint = schema.new({
            id = id.from(_N, "DescribeLunaClientOutput", "CertificateFingerprint"),
            type = "string",
            name = "CertificateFingerprint",
            target_id = prelude.String.id,
        }),
        LastModifiedTimestamp = schema.new({
            id = id.from(_N, "DescribeLunaClientOutput", "LastModifiedTimestamp"),
            type = "string",
            name = "LastModifiedTimestamp",
            target_id = prelude.String.id,
        }),
        Label = schema.new({
            id = id.from(_N, "DescribeLunaClientOutput", "Label"),
            type = "string",
            name = "Label",
            target_id = prelude.String.id,
        }),
    },
})

M.GetConfigInput = schema.new({
    id = id.from(_N, "GetConfigRequest"),
    type = "structure",
    members = {
        ClientArn = schema.new({
            id = id.from(_N, "GetConfigInput", "ClientArn"),
            type = "string",
            name = "ClientArn",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        ClientVersion = schema.new({
            id = id.from(_N, "GetConfigInput", "ClientVersion"),
            type = "string",
            name = "ClientVersion",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        HapgList = schema.new({
            id = id.from(_N, "GetConfigInput", "HapgList"),
            type = "list",
            name = "HapgList",
            target_id = prelude.Document.id,
            list_member = prelude.String,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.GetConfigOutput = schema.new({
    id = id.from(_N, "GetConfigResponse"),
    type = "structure",
    members = {
        ConfigType = schema.new({
            id = id.from(_N, "GetConfigOutput", "ConfigType"),
            type = "string",
            name = "ConfigType",
            target_id = prelude.String.id,
        }),
        ConfigFile = schema.new({
            id = id.from(_N, "GetConfigOutput", "ConfigFile"),
            type = "string",
            name = "ConfigFile",
            target_id = prelude.String.id,
        }),
        ConfigCred = schema.new({
            id = id.from(_N, "GetConfigOutput", "ConfigCred"),
            type = "string",
            name = "ConfigCred",
            target_id = prelude.String.id,
        }),
    },
})

M.ListAvailableZonesInput = schema.new({
    id = id.from(_N, "ListAvailableZonesRequest"),
    type = "structure",
})

M.ListAvailableZonesOutput = schema.new({
    id = id.from(_N, "ListAvailableZonesResponse"),
    type = "structure",
    members = {
        AZList = schema.new({
            id = id.from(_N, "ListAvailableZonesOutput", "AZList"),
            type = "list",
            name = "AZList",
            target_id = prelude.Document.id,
            list_member = prelude.String,
        }),
    },
})

M.ListHapgsInput = schema.new({
    id = id.from(_N, "ListHapgsRequest"),
    type = "structure",
    members = {
        NextToken = schema.new({
            id = id.from(_N, "ListHapgsInput", "NextToken"),
            type = "string",
            name = "NextToken",
            target_id = prelude.String.id,
        }),
    },
})

M.ListHapgsOutput = schema.new({
    id = id.from(_N, "ListHapgsResponse"),
    type = "structure",
    members = {
        HapgList = schema.new({
            id = id.from(_N, "ListHapgsOutput", "HapgList"),
            type = "list",
            name = "HapgList",
            target_id = prelude.Document.id,
            list_member = prelude.String,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        NextToken = schema.new({
            id = id.from(_N, "ListHapgsOutput", "NextToken"),
            type = "string",
            name = "NextToken",
            target_id = prelude.String.id,
        }),
    },
})

M.ListHsmsInput = schema.new({
    id = id.from(_N, "ListHsmsRequest"),
    type = "structure",
    members = {
        NextToken = schema.new({
            id = id.from(_N, "ListHsmsInput", "NextToken"),
            type = "string",
            name = "NextToken",
            target_id = prelude.String.id,
        }),
    },
})

M.ListHsmsOutput = schema.new({
    id = id.from(_N, "ListHsmsResponse"),
    type = "structure",
    members = {
        HsmList = schema.new({
            id = id.from(_N, "ListHsmsOutput", "HsmList"),
            type = "list",
            name = "HsmList",
            target_id = prelude.Document.id,
            list_member = prelude.String,
        }),
        NextToken = schema.new({
            id = id.from(_N, "ListHsmsOutput", "NextToken"),
            type = "string",
            name = "NextToken",
            target_id = prelude.String.id,
        }),
    },
})

M.ListLunaClientsInput = schema.new({
    id = id.from(_N, "ListLunaClientsRequest"),
    type = "structure",
    members = {
        NextToken = schema.new({
            id = id.from(_N, "ListLunaClientsInput", "NextToken"),
            type = "string",
            name = "NextToken",
            target_id = prelude.String.id,
        }),
    },
})

M.ListLunaClientsOutput = schema.new({
    id = id.from(_N, "ListLunaClientsResponse"),
    type = "structure",
    members = {
        ClientList = schema.new({
            id = id.from(_N, "ListLunaClientsOutput", "ClientList"),
            type = "list",
            name = "ClientList",
            target_id = prelude.Document.id,
            list_member = prelude.String,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        NextToken = schema.new({
            id = id.from(_N, "ListLunaClientsOutput", "NextToken"),
            type = "string",
            name = "NextToken",
            target_id = prelude.String.id,
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
            },
        }),
    },
})

M.ListTagsForResourceOutput = schema.new({
    id = id.from(_N, "ListTagsForResourceResponse"),
    type = "structure",
    members = {
        TagList = schema.new({
            id = id.from(_N, "ListTagsForResourceOutput", "TagList"),
            type = "list",
            name = "TagList",
            target_id = prelude.Document.id,
            list_member = M.Tag,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.ModifyHapgInput = schema.new({
    id = id.from(_N, "ModifyHapgRequest"),
    type = "structure",
    members = {
        HapgArn = schema.new({
            id = id.from(_N, "ModifyHapgInput", "HapgArn"),
            type = "string",
            name = "HapgArn",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        Label = schema.new({
            id = id.from(_N, "ModifyHapgInput", "Label"),
            type = "string",
            name = "Label",
            target_id = prelude.String.id,
        }),
        PartitionSerialList = schema.new({
            id = id.from(_N, "ModifyHapgInput", "PartitionSerialList"),
            type = "list",
            name = "PartitionSerialList",
            target_id = prelude.Document.id,
            list_member = prelude.String,
        }),
    },
})

M.ModifyHapgOutput = schema.new({
    id = id.from(_N, "ModifyHapgResponse"),
    type = "structure",
    members = {
        HapgArn = schema.new({
            id = id.from(_N, "ModifyHapgOutput", "HapgArn"),
            type = "string",
            name = "HapgArn",
            target_id = prelude.String.id,
        }),
    },
})

M.ModifyHsmInput = schema.new({
    id = id.from(_N, "ModifyHsmRequest"),
    type = "structure",
    traits = {
        [traits.XML_NAME] = { name = "ModifyHsmRequest" },
    },
    members = {
        HsmArn = schema.new({
            id = id.from(_N, "ModifyHsmInput", "HsmArn"),
            type = "string",
            name = "HsmArn",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.XML_NAME] = { name = "HsmArn" },
            },
        }),
        SubnetId = schema.new({
            id = id.from(_N, "ModifyHsmInput", "SubnetId"),
            type = "string",
            name = "SubnetId",
            target_id = prelude.String.id,
            traits = {
                [traits.XML_NAME] = { name = "SubnetId" },
            },
        }),
        EniIp = schema.new({
            id = id.from(_N, "ModifyHsmInput", "EniIp"),
            type = "string",
            name = "EniIp",
            target_id = prelude.String.id,
            traits = {
                [traits.XML_NAME] = { name = "EniIp" },
            },
        }),
        IamRoleArn = schema.new({
            id = id.from(_N, "ModifyHsmInput", "IamRoleArn"),
            type = "string",
            name = "IamRoleArn",
            target_id = prelude.String.id,
            traits = {
                [traits.XML_NAME] = { name = "IamRoleArn" },
            },
        }),
        ExternalId = schema.new({
            id = id.from(_N, "ModifyHsmInput", "ExternalId"),
            type = "string",
            name = "ExternalId",
            target_id = prelude.String.id,
            traits = {
                [traits.XML_NAME] = { name = "ExternalId" },
            },
        }),
        SyslogIp = schema.new({
            id = id.from(_N, "ModifyHsmInput", "SyslogIp"),
            type = "string",
            name = "SyslogIp",
            target_id = prelude.String.id,
            traits = {
                [traits.XML_NAME] = { name = "SyslogIp" },
            },
        }),
    },
})

M.ModifyHsmOutput = schema.new({
    id = id.from(_N, "ModifyHsmResponse"),
    type = "structure",
    members = {
        HsmArn = schema.new({
            id = id.from(_N, "ModifyHsmOutput", "HsmArn"),
            type = "string",
            name = "HsmArn",
            target_id = prelude.String.id,
        }),
    },
})

M.ModifyLunaClientInput = schema.new({
    id = id.from(_N, "ModifyLunaClientRequest"),
    type = "structure",
    members = {
        ClientArn = schema.new({
            id = id.from(_N, "ModifyLunaClientInput", "ClientArn"),
            type = "string",
            name = "ClientArn",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        Certificate = schema.new({
            id = id.from(_N, "ModifyLunaClientInput", "Certificate"),
            type = "string",
            name = "Certificate",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.ModifyLunaClientOutput = schema.new({
    id = id.from(_N, "ModifyLunaClientResponse"),
    type = "structure",
    members = {
        ClientArn = schema.new({
            id = id.from(_N, "ModifyLunaClientOutput", "ClientArn"),
            type = "string",
            name = "ClientArn",
            target_id = prelude.String.id,
        }),
    },
})

M.RemoveTagsFromResourceInput = schema.new({
    id = id.from(_N, "RemoveTagsFromResourceRequest"),
    type = "structure",
    members = {
        ResourceArn = schema.new({
            id = id.from(_N, "RemoveTagsFromResourceInput", "ResourceArn"),
            type = "string",
            name = "ResourceArn",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        TagKeyList = schema.new({
            id = id.from(_N, "RemoveTagsFromResourceInput", "TagKeyList"),
            type = "list",
            name = "TagKeyList",
            target_id = prelude.Document.id,
            list_member = prelude.String,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.RemoveTagsFromResourceOutput = schema.new({
    id = id.from(_N, "RemoveTagsFromResourceResponse"),
    type = "structure",
    members = {
        Status = schema.new({
            id = id.from(_N, "RemoveTagsFromResourceOutput", "Status"),
            type = "string",
            name = "Status",
            target_id = prelude.String.id,
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
