local M = {}

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

M.AddTagsToResourceInput = {
    type = "structure",
    members = {
        ResourceArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        TagList = {
            type = "list",
            member_type = "structure",
            traits = {
                required = true,
            },
        },
    },
}

M.AddTagsToResourceOutput = {
    type = "structure",
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
    error = "server",
    members = {
        message = {
            type = "string",
        },
        retryable = {
            type = "boolean",
        },
    },
}

M.CloudHsmServiceException = {
    type = "structure",
    error = "client",
    members = {
        message = {
            type = "string",
        },
        retryable = {
            type = "boolean",
        },
    },
}

M.InvalidRequestException = {
    type = "structure",
    error = "client",
    members = {
        message = {
            type = "string",
        },
        retryable = {
            type = "boolean",
        },
    },
}

M.ClientVersion = {
    FIVE_ONE = "5.1",
    FIVE_THREE = "5.3",
}

M.CreateHapgInput = {
    type = "structure",
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
    members = {
        HsmArn = {
            type = "string",
        },
    },
}

M.CreateLunaClientInput = {
    type = "structure",
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
    members = {
        ClientArn = {
            type = "string",
        },
    },
}

M.DeleteHapgInput = {
    type = "structure",
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
    members = {
        HapgArn = {
            type = "string",
        },
        HapgSerial = {
            type = "string",
        },
        HsmsLastActionFailed = {
            type = "list",
            member_type = "string",
        },
        HsmsPendingDeletion = {
            type = "list",
            member_type = "string",
        },
        HsmsPendingRegistration = {
            type = "list",
            member_type = "string",
        },
        Label = {
            type = "string",
        },
        LastModifiedTimestamp = {
            type = "string",
        },
        PartitionSerialList = {
            type = "list",
            member_type = "string",
        },
        State = {
            type = "string",
        },
    },
}

M.DescribeHsmInput = {
    type = "structure",
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
            member_type = "string",
        },
    },
}

M.DescribeLunaClientInput = {
    type = "structure",
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
            member_type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.GetConfigOutput = {
    type = "structure",
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
}

M.ListAvailableZonesOutput = {
    type = "structure",
    members = {
        AZList = {
            type = "list",
            member_type = "string",
        },
    },
}

M.ListHapgsInput = {
    type = "structure",
    members = {
        NextToken = {
            type = "string",
        },
    },
}

M.ListHapgsOutput = {
    type = "structure",
    members = {
        HapgList = {
            type = "list",
            member_type = "string",
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
    members = {
        NextToken = {
            type = "string",
        },
    },
}

M.ListHsmsOutput = {
    type = "structure",
    members = {
        HsmList = {
            type = "list",
            member_type = "string",
        },
        NextToken = {
            type = "string",
        },
    },
}

M.ListLunaClientsInput = {
    type = "structure",
    members = {
        NextToken = {
            type = "string",
        },
    },
}

M.ListLunaClientsOutput = {
    type = "structure",
    members = {
        ClientList = {
            type = "list",
            member_type = "string",
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
    members = {
        TagList = {
            type = "list",
            member_type = "structure",
            traits = {
                required = true,
            },
        },
    },
}

M.ModifyHapgInput = {
    type = "structure",
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
            member_type = "string",
        },
    },
}

M.ModifyHapgOutput = {
    type = "structure",
    members = {
        HapgArn = {
            type = "string",
        },
    },
}

M.ModifyHsmInput = {
    type = "structure",
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
    members = {
        HsmArn = {
            type = "string",
        },
    },
}

M.ModifyLunaClientInput = {
    type = "structure",
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
    members = {
        ClientArn = {
            type = "string",
        },
    },
}

M.RemoveTagsFromResourceInput = {
    type = "structure",
    members = {
        ResourceArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        TagKeyList = {
            type = "list",
            member_type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.RemoveTagsFromResourceOutput = {
    type = "structure",
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
