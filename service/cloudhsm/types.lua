local M = {}

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

M.AddTagsToResourceInput = {
    type = "structure",
    id = "AddTagsToResourceInput",
    members = {
        ResourceArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        TagList = {
            type = "list",
            member = M.Tag,
            traits = {
                required = true,
            },
        },
    },
}

M.AddTagsToResourceOutput = {
    type = "structure",
    id = "AddTagsToResourceOutput",
    members = {
        Status = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.CloudHsmInternalException = {
    type = "structure",
    id = "CloudHsmInternalException",
    error = "server",
    members = {
        message = {
            type = "string",
        },
        retryable = {
            type = "boolean",
            traits = {
                default = false,
            },
        },
    },
}

M.CloudHsmServiceException = {
    type = "structure",
    id = "CloudHsmServiceException",
    error = "client",
    members = {
        message = {
            type = "string",
        },
        retryable = {
            type = "boolean",
            traits = {
                default = false,
            },
        },
    },
}

M.InvalidRequestException = {
    type = "structure",
    id = "InvalidRequestException",
    error = "client",
    members = {
        message = {
            type = "string",
        },
        retryable = {
            type = "boolean",
            traits = {
                default = false,
            },
        },
    },
}

M.ClientVersion = {
    FIVE_ONE = "5.1",
    FIVE_THREE = "5.3",
}

M.CreateHapgInput = {
    type = "structure",
    id = "CreateHapgInput",
    members = {
        Label = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.CreateHapgOutput = {
    type = "structure",
    id = "CreateHapgOutput",
    members = {
        HapgArn = {
            type = "string",
        },
    },
}

M.SubscriptionType = {
    PRODUCTION = "PRODUCTION",
}

M.CreateHsmInput = {
    type = "structure",
    id = "CreateHsmInput",
    traits = {
        xml_name = "CreateHsmRequest",
    },
    members = {
        SubnetId = {
            type = "string",
            traits = {
                required = true,
                xml_name = "SubnetId",
            },
        },
        SshKey = {
            type = "string",
            traits = {
                required = true,
                xml_name = "SshKey",
            },
        },
        EniIp = {
            type = "string",
            traits = {
                xml_name = "EniIp",
            },
        },
        IamRoleArn = {
            type = "string",
            traits = {
                required = true,
                xml_name = "IamRoleArn",
            },
        },
        ExternalId = {
            type = "string",
            traits = {
                xml_name = "ExternalId",
            },
        },
        SubscriptionType = {
            type = "string",
            traits = {
                required = true,
                xml_name = "SubscriptionType",
            },
        },
        ClientToken = {
            type = "string",
            traits = {
                xml_name = "ClientToken",
            },
        },
        SyslogIp = {
            type = "string",
            traits = {
                xml_name = "SyslogIp",
            },
        },
    },
}

M.CreateHsmOutput = {
    type = "structure",
    id = "CreateHsmOutput",
    members = {
        HsmArn = {
            type = "string",
        },
    },
}

M.CreateLunaClientInput = {
    type = "structure",
    id = "CreateLunaClientInput",
    members = {
        Label = {
            type = "string",
        },
        Certificate = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.CreateLunaClientOutput = {
    type = "structure",
    id = "CreateLunaClientOutput",
    members = {
        ClientArn = {
            type = "string",
        },
    },
}

M.DeleteHapgInput = {
    type = "structure",
    id = "DeleteHapgInput",
    members = {
        HapgArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.DeleteHapgOutput = {
    type = "structure",
    id = "DeleteHapgOutput",
    members = {
        Status = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.DeleteHsmInput = {
    type = "structure",
    id = "DeleteHsmInput",
    traits = {
        xml_name = "DeleteHsmRequest",
    },
    members = {
        HsmArn = {
            type = "string",
            traits = {
                required = true,
                xml_name = "HsmArn",
            },
        },
    },
}

M.DeleteHsmOutput = {
    type = "structure",
    id = "DeleteHsmOutput",
    members = {
        Status = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.DeleteLunaClientInput = {
    type = "structure",
    id = "DeleteLunaClientInput",
    members = {
        ClientArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.DeleteLunaClientOutput = {
    type = "structure",
    id = "DeleteLunaClientOutput",
    members = {
        Status = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.DescribeHapgInput = {
    type = "structure",
    id = "DescribeHapgInput",
    members = {
        HapgArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.CloudHsmObjectState = {
    READY = "READY",
    UPDATING = "UPDATING",
    DEGRADED = "DEGRADED",
}

M.DescribeHapgOutput = {
    type = "structure",
    id = "DescribeHapgOutput",
    members = {
        HapgArn = {
            type = "string",
        },
        HapgSerial = {
            type = "string",
        },
        HsmsLastActionFailed = {
            type = "list",
            member = { type = "string" },
        },
        HsmsPendingDeletion = {
            type = "list",
            member = { type = "string" },
        },
        HsmsPendingRegistration = {
            type = "list",
            member = { type = "string" },
        },
        Label = {
            type = "string",
        },
        LastModifiedTimestamp = {
            type = "string",
        },
        PartitionSerialList = {
            type = "list",
            member = { type = "string" },
        },
        State = {
            type = "string",
        },
    },
}

M.DescribeHsmInput = {
    type = "structure",
    id = "DescribeHsmInput",
    members = {
        HsmArn = {
            type = "string",
        },
        HsmSerialNumber = {
            type = "string",
        },
    },
}

M.HsmStatus = {
    PENDING = "PENDING",
    RUNNING = "RUNNING",
    UPDATING = "UPDATING",
    SUSPENDED = "SUSPENDED",
    TERMINATING = "TERMINATING",
    TERMINATED = "TERMINATED",
    DEGRADED = "DEGRADED",
}

M.DescribeHsmOutput = {
    type = "structure",
    id = "DescribeHsmOutput",
    members = {
        HsmArn = {
            type = "string",
        },
        Status = {
            type = "string",
        },
        StatusDetails = {
            type = "string",
        },
        AvailabilityZone = {
            type = "string",
        },
        EniId = {
            type = "string",
        },
        EniIp = {
            type = "string",
        },
        SubscriptionType = {
            type = "string",
        },
        SubscriptionStartDate = {
            type = "string",
        },
        SubscriptionEndDate = {
            type = "string",
        },
        VpcId = {
            type = "string",
        },
        SubnetId = {
            type = "string",
        },
        IamRoleArn = {
            type = "string",
        },
        SerialNumber = {
            type = "string",
        },
        VendorName = {
            type = "string",
        },
        HsmType = {
            type = "string",
        },
        SoftwareVersion = {
            type = "string",
        },
        SshPublicKey = {
            type = "string",
        },
        SshKeyLastUpdated = {
            type = "string",
        },
        ServerCertUri = {
            type = "string",
        },
        ServerCertLastUpdated = {
            type = "string",
        },
        Partitions = {
            type = "list",
            member = { type = "string" },
        },
    },
}

M.DescribeLunaClientInput = {
    type = "structure",
    id = "DescribeLunaClientInput",
    members = {
        ClientArn = {
            type = "string",
        },
        CertificateFingerprint = {
            type = "string",
        },
    },
}

M.DescribeLunaClientOutput = {
    type = "structure",
    id = "DescribeLunaClientOutput",
    members = {
        ClientArn = {
            type = "string",
        },
        Certificate = {
            type = "string",
        },
        CertificateFingerprint = {
            type = "string",
        },
        LastModifiedTimestamp = {
            type = "string",
        },
        Label = {
            type = "string",
        },
    },
}

M.GetConfigInput = {
    type = "structure",
    id = "GetConfigInput",
    members = {
        ClientArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        ClientVersion = {
            type = "string",
            traits = {
                required = true,
            },
        },
        HapgList = {
            type = "list",
            member = { type = "string" },
            traits = {
                required = true,
            },
        },
    },
}

M.GetConfigOutput = {
    type = "structure",
    id = "GetConfigOutput",
    members = {
        ConfigType = {
            type = "string",
        },
        ConfigFile = {
            type = "string",
        },
        ConfigCred = {
            type = "string",
        },
    },
}

M.ListAvailableZonesInput = {
    type = "structure",
    id = "ListAvailableZonesInput",
}

M.ListAvailableZonesOutput = {
    type = "structure",
    id = "ListAvailableZonesOutput",
    members = {
        AZList = {
            type = "list",
            member = { type = "string" },
        },
    },
}

M.ListHapgsInput = {
    type = "structure",
    id = "ListHapgsInput",
    members = {
        NextToken = {
            type = "string",
        },
    },
}

M.ListHapgsOutput = {
    type = "structure",
    id = "ListHapgsOutput",
    members = {
        HapgList = {
            type = "list",
            member = { type = "string" },
            traits = {
                required = true,
            },
        },
        NextToken = {
            type = "string",
        },
    },
}

M.ListHsmsInput = {
    type = "structure",
    id = "ListHsmsInput",
    members = {
        NextToken = {
            type = "string",
        },
    },
}

M.ListHsmsOutput = {
    type = "structure",
    id = "ListHsmsOutput",
    members = {
        HsmList = {
            type = "list",
            member = { type = "string" },
        },
        NextToken = {
            type = "string",
        },
    },
}

M.ListLunaClientsInput = {
    type = "structure",
    id = "ListLunaClientsInput",
    members = {
        NextToken = {
            type = "string",
        },
    },
}

M.ListLunaClientsOutput = {
    type = "structure",
    id = "ListLunaClientsOutput",
    members = {
        ClientList = {
            type = "list",
            member = { type = "string" },
            traits = {
                required = true,
            },
        },
        NextToken = {
            type = "string",
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
                required = true,
            },
        },
    },
}

M.ListTagsForResourceOutput = {
    type = "structure",
    id = "ListTagsForResourceOutput",
    members = {
        TagList = {
            type = "list",
            member = M.Tag,
            traits = {
                required = true,
            },
        },
    },
}

M.ModifyHapgInput = {
    type = "structure",
    id = "ModifyHapgInput",
    members = {
        HapgArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Label = {
            type = "string",
        },
        PartitionSerialList = {
            type = "list",
            member = { type = "string" },
        },
    },
}

M.ModifyHapgOutput = {
    type = "structure",
    id = "ModifyHapgOutput",
    members = {
        HapgArn = {
            type = "string",
        },
    },
}

M.ModifyHsmInput = {
    type = "structure",
    id = "ModifyHsmInput",
    traits = {
        xml_name = "ModifyHsmRequest",
    },
    members = {
        HsmArn = {
            type = "string",
            traits = {
                required = true,
                xml_name = "HsmArn",
            },
        },
        SubnetId = {
            type = "string",
            traits = {
                xml_name = "SubnetId",
            },
        },
        EniIp = {
            type = "string",
            traits = {
                xml_name = "EniIp",
            },
        },
        IamRoleArn = {
            type = "string",
            traits = {
                xml_name = "IamRoleArn",
            },
        },
        ExternalId = {
            type = "string",
            traits = {
                xml_name = "ExternalId",
            },
        },
        SyslogIp = {
            type = "string",
            traits = {
                xml_name = "SyslogIp",
            },
        },
    },
}

M.ModifyHsmOutput = {
    type = "structure",
    id = "ModifyHsmOutput",
    members = {
        HsmArn = {
            type = "string",
        },
    },
}

M.ModifyLunaClientInput = {
    type = "structure",
    id = "ModifyLunaClientInput",
    members = {
        ClientArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Certificate = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.ModifyLunaClientOutput = {
    type = "structure",
    id = "ModifyLunaClientOutput",
    members = {
        ClientArn = {
            type = "string",
        },
    },
}

M.RemoveTagsFromResourceInput = {
    type = "structure",
    id = "RemoveTagsFromResourceInput",
    members = {
        ResourceArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        TagKeyList = {
            type = "list",
            member = { type = "string" },
            traits = {
                required = true,
            },
        },
    },
}

M.RemoveTagsFromResourceOutput = {
    type = "structure",
    id = "RemoveTagsFromResourceOutput",
    members = {
        Status = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

return M
