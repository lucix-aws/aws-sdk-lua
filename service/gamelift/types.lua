local M = {}

M.AcceptanceType = {
    ACCEPT = "ACCEPT",
    REJECT = "REJECT",
}

M.AcceptMatchInput = {
    type = "structure",
    id = "AcceptMatchInput",
    members = {
        TicketId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        PlayerIds = {
            type = "list",
            member = { type = "string" },
            traits = {
                required = true,
            },
        },
        AcceptanceType = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.AcceptMatchOutput = {
    type = "structure",
    id = "AcceptMatchOutput",
}

M.InternalServiceException = {
    type = "structure",
    id = "InternalServiceException",
    error = "server",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.InvalidRequestException = {
    type = "structure",
    id = "InvalidRequestException",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.NotFoundException = {
    type = "structure",
    id = "NotFoundException",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.UnsupportedRegionException = {
    type = "structure",
    id = "UnsupportedRegionException",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.RoutingStrategyType = {
    SIMPLE = "SIMPLE",
    TERMINAL = "TERMINAL",
}

M.RoutingStrategy = {
    type = "structure",
    id = "RoutingStrategy",
    members = {
        Type = {
            type = "string",
        },
        FleetId = {
            type = "string",
        },
        Message = {
            type = "string",
        },
    },
}

M.Alias = {
    type = "structure",
    id = "Alias",
    members = {
        AliasId = {
            type = "string",
        },
        Name = {
            type = "string",
        },
        AliasArn = {
            type = "string",
        },
        Description = {
            type = "string",
        },
        RoutingStrategy = M.RoutingStrategy,
        CreationTime = {
            type = "timestamp",
        },
        LastUpdatedTime = {
            type = "timestamp",
        },
    },
}

M.AnywhereConfiguration = {
    type = "structure",
    id = "AnywhereConfiguration",
    members = {
        Cost = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.AttributeValue = {
    type = "structure",
    id = "AttributeValue",
    members = {
        S = {
            type = "string",
        },
        N = {
            type = "double",
        },
        SL = {
            type = "list",
            member = { type = "string" },
        },
        SDM = {
            type = "map",
            key = { type = "string" },
            value = { type = "double" },
        },
    },
}

M.AwsCredentials = {
    type = "structure",
    id = "AwsCredentials",
    members = {
        AccessKeyId = {
            type = "string",
        },
        SecretAccessKey = {
            type = "string",
        },
        SessionToken = {
            type = "string",
        },
    },
}

M.BackfillMode = {
    AUTOMATIC = "AUTOMATIC",
    MANUAL = "MANUAL",
}

M.BalancingStrategy = {
    SPOT_ONLY = "SPOT_ONLY",
    SPOT_PREFERRED = "SPOT_PREFERRED",
    ON_DEMAND_ONLY = "ON_DEMAND_ONLY",
}

M.OperatingSystem = {
    WINDOWS_2012 = "WINDOWS_2012",
    AMAZON_LINUX = "AMAZON_LINUX",
    AMAZON_LINUX_2 = "AMAZON_LINUX_2",
    WINDOWS_2016 = "WINDOWS_2016",
    AMAZON_LINUX_2023 = "AMAZON_LINUX_2023",
    WINDOWS_2022 = "WINDOWS_2022",
}

M.BuildStatus = {
    INITIALIZED = "INITIALIZED",
    READY = "READY",
    FAILED = "FAILED",
}

M.Build = {
    type = "structure",
    id = "Build",
    members = {
        BuildId = {
            type = "string",
        },
        BuildArn = {
            type = "string",
        },
        Name = {
            type = "string",
        },
        Version = {
            type = "string",
        },
        Status = {
            type = "string",
        },
        SizeOnDisk = {
            type = "long",
        },
        OperatingSystem = {
            type = "string",
        },
        CreationTime = {
            type = "timestamp",
        },
        ServerSdkVersion = {
            type = "string",
        },
    },
}

M.CertificateType = {
    Disabled = "DISABLED",
    Generated = "GENERATED",
}

M.CertificateConfiguration = {
    type = "structure",
    id = "CertificateConfiguration",
    members = {
        CertificateType = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.FilterInstanceStatus = {
    ACTIVE = "ACTIVE",
    DRAINING = "DRAINING",
}

M.ClaimFilterOption = {
    type = "structure",
    id = "ClaimFilterOption",
    members = {
        InstanceStatuses = {
            type = "list",
            member = { type = "string" },
        },
    },
}

M.ClaimGameServerInput = {
    type = "structure",
    id = "ClaimGameServerInput",
    members = {
        GameServerGroupName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        GameServerId = {
            type = "string",
        },
        GameServerData = {
            type = "string",
        },
        FilterOption = M.ClaimFilterOption,
    },
}

M.GameServerClaimStatus = {
    CLAIMED = "CLAIMED",
}

M.GameServerUtilizationStatus = {
    AVAILABLE = "AVAILABLE",
    UTILIZED = "UTILIZED",
}

M.GameServer = {
    type = "structure",
    id = "GameServer",
    members = {
        GameServerGroupName = {
            type = "string",
        },
        GameServerGroupArn = {
            type = "string",
        },
        GameServerId = {
            type = "string",
        },
        InstanceId = {
            type = "string",
        },
        ConnectionInfo = {
            type = "string",
        },
        GameServerData = {
            type = "string",
        },
        ClaimStatus = {
            type = "string",
        },
        UtilizationStatus = {
            type = "string",
        },
        RegistrationTime = {
            type = "timestamp",
        },
        LastClaimTime = {
            type = "timestamp",
        },
        LastHealthCheckTime = {
            type = "timestamp",
        },
    },
}

M.ClaimGameServerOutput = {
    type = "structure",
    id = "ClaimGameServerOutput",
    members = {
        GameServer = M.GameServer,
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
    },
}

M.OutOfCapacityException = {
    type = "structure",
    id = "OutOfCapacityException",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.UnauthorizedException = {
    type = "structure",
    id = "UnauthorizedException",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.ComparisonOperatorType = {
    GreaterThanOrEqualToThreshold = "GreaterThanOrEqualToThreshold",
    GreaterThanThreshold = "GreaterThanThreshold",
    LessThanThreshold = "LessThanThreshold",
    LessThanOrEqualToThreshold = "LessThanOrEqualToThreshold",
}

M.ComputeStatus = {
    PENDING = "PENDING",
    ACTIVE = "ACTIVE",
    TERMINATING = "TERMINATING",
    IMPAIRED = "IMPAIRED",
}

M.ContainerAttribute = {
    type = "structure",
    id = "ContainerAttribute",
    members = {
        ContainerName = {
            type = "string",
        },
        ContainerRuntimeId = {
            type = "string",
        },
    },
}

M.EC2InstanceType = {
    t2_micro = "t2.micro",
    t2_small = "t2.small",
    t2_medium = "t2.medium",
    t2_large = "t2.large",
    c3_large = "c3.large",
    c3_xlarge = "c3.xlarge",
    c3_2xlarge = "c3.2xlarge",
    c3_4xlarge = "c3.4xlarge",
    c3_8xlarge = "c3.8xlarge",
    c4_large = "c4.large",
    c4_xlarge = "c4.xlarge",
    c4_2xlarge = "c4.2xlarge",
    c4_4xlarge = "c4.4xlarge",
    c4_8xlarge = "c4.8xlarge",
    c5_large = "c5.large",
    c5_xlarge = "c5.xlarge",
    c5_2xlarge = "c5.2xlarge",
    c5_4xlarge = "c5.4xlarge",
    c5_9xlarge = "c5.9xlarge",
    c5_12xlarge = "c5.12xlarge",
    c5_18xlarge = "c5.18xlarge",
    c5_24xlarge = "c5.24xlarge",
    c5a_large = "c5a.large",
    c5a_xlarge = "c5a.xlarge",
    c5a_2xlarge = "c5a.2xlarge",
    c5a_4xlarge = "c5a.4xlarge",
    c5a_8xlarge = "c5a.8xlarge",
    c5a_12xlarge = "c5a.12xlarge",
    c5a_16xlarge = "c5a.16xlarge",
    c5a_24xlarge = "c5a.24xlarge",
    r3_large = "r3.large",
    r3_xlarge = "r3.xlarge",
    r3_2xlarge = "r3.2xlarge",
    r3_4xlarge = "r3.4xlarge",
    r3_8xlarge = "r3.8xlarge",
    r4_large = "r4.large",
    r4_xlarge = "r4.xlarge",
    r4_2xlarge = "r4.2xlarge",
    r4_4xlarge = "r4.4xlarge",
    r4_8xlarge = "r4.8xlarge",
    r4_16xlarge = "r4.16xlarge",
    r5_large = "r5.large",
    r5_xlarge = "r5.xlarge",
    r5_2xlarge = "r5.2xlarge",
    r5_4xlarge = "r5.4xlarge",
    r5_8xlarge = "r5.8xlarge",
    r5_12xlarge = "r5.12xlarge",
    r5_16xlarge = "r5.16xlarge",
    r5_24xlarge = "r5.24xlarge",
    r5a_large = "r5a.large",
    r5a_xlarge = "r5a.xlarge",
    r5a_2xlarge = "r5a.2xlarge",
    r5a_4xlarge = "r5a.4xlarge",
    r5a_8xlarge = "r5a.8xlarge",
    r5a_12xlarge = "r5a.12xlarge",
    r5a_16xlarge = "r5a.16xlarge",
    r5a_24xlarge = "r5a.24xlarge",
    m3_medium = "m3.medium",
    m3_large = "m3.large",
    m3_xlarge = "m3.xlarge",
    m3_2xlarge = "m3.2xlarge",
    m4_large = "m4.large",
    m4_xlarge = "m4.xlarge",
    m4_2xlarge = "m4.2xlarge",
    m4_4xlarge = "m4.4xlarge",
    m4_10xlarge = "m4.10xlarge",
    m5_large = "m5.large",
    m5_xlarge = "m5.xlarge",
    m5_2xlarge = "m5.2xlarge",
    m5_4xlarge = "m5.4xlarge",
    m5_8xlarge = "m5.8xlarge",
    m5_12xlarge = "m5.12xlarge",
    m5_16xlarge = "m5.16xlarge",
    m5_24xlarge = "m5.24xlarge",
    m5a_large = "m5a.large",
    m5a_xlarge = "m5a.xlarge",
    m5a_2xlarge = "m5a.2xlarge",
    m5a_4xlarge = "m5a.4xlarge",
    m5a_8xlarge = "m5a.8xlarge",
    m5a_12xlarge = "m5a.12xlarge",
    m5a_16xlarge = "m5a.16xlarge",
    m5a_24xlarge = "m5a.24xlarge",
    c5d_large = "c5d.large",
    c5d_xlarge = "c5d.xlarge",
    c5d_2xlarge = "c5d.2xlarge",
    c5d_4xlarge = "c5d.4xlarge",
    c5d_9xlarge = "c5d.9xlarge",
    c5d_12xlarge = "c5d.12xlarge",
    c5d_18xlarge = "c5d.18xlarge",
    c5d_24xlarge = "c5d.24xlarge",
    c6a_large = "c6a.large",
    c6a_xlarge = "c6a.xlarge",
    c6a_2xlarge = "c6a.2xlarge",
    c6a_4xlarge = "c6a.4xlarge",
    c6a_8xlarge = "c6a.8xlarge",
    c6a_12xlarge = "c6a.12xlarge",
    c6a_16xlarge = "c6a.16xlarge",
    c6a_24xlarge = "c6a.24xlarge",
    c6i_large = "c6i.large",
    c6i_xlarge = "c6i.xlarge",
    c6i_2xlarge = "c6i.2xlarge",
    c6i_4xlarge = "c6i.4xlarge",
    c6i_8xlarge = "c6i.8xlarge",
    c6i_12xlarge = "c6i.12xlarge",
    c6i_16xlarge = "c6i.16xlarge",
    c6i_24xlarge = "c6i.24xlarge",
    r5d_large = "r5d.large",
    r5d_xlarge = "r5d.xlarge",
    r5d_2xlarge = "r5d.2xlarge",
    r5d_4xlarge = "r5d.4xlarge",
    r5d_8xlarge = "r5d.8xlarge",
    r5d_12xlarge = "r5d.12xlarge",
    r5d_16xlarge = "r5d.16xlarge",
    r5d_24xlarge = "r5d.24xlarge",
    m6g_medium = "m6g.medium",
    m6g_large = "m6g.large",
    m6g_xlarge = "m6g.xlarge",
    m6g_2xlarge = "m6g.2xlarge",
    m6g_4xlarge = "m6g.4xlarge",
    m6g_8xlarge = "m6g.8xlarge",
    m6g_12xlarge = "m6g.12xlarge",
    m6g_16xlarge = "m6g.16xlarge",
    c6g_medium = "c6g.medium",
    c6g_large = "c6g.large",
    c6g_xlarge = "c6g.xlarge",
    c6g_2xlarge = "c6g.2xlarge",
    c6g_4xlarge = "c6g.4xlarge",
    c6g_8xlarge = "c6g.8xlarge",
    c6g_12xlarge = "c6g.12xlarge",
    c6g_16xlarge = "c6g.16xlarge",
    r6g_medium = "r6g.medium",
    r6g_large = "r6g.large",
    r6g_xlarge = "r6g.xlarge",
    r6g_2xlarge = "r6g.2xlarge",
    r6g_4xlarge = "r6g.4xlarge",
    r6g_8xlarge = "r6g.8xlarge",
    r6g_12xlarge = "r6g.12xlarge",
    r6g_16xlarge = "r6g.16xlarge",
    c6gn_medium = "c6gn.medium",
    c6gn_large = "c6gn.large",
    c6gn_xlarge = "c6gn.xlarge",
    c6gn_2xlarge = "c6gn.2xlarge",
    c6gn_4xlarge = "c6gn.4xlarge",
    c6gn_8xlarge = "c6gn.8xlarge",
    c6gn_12xlarge = "c6gn.12xlarge",
    c6gn_16xlarge = "c6gn.16xlarge",
    c7g_medium = "c7g.medium",
    c7g_large = "c7g.large",
    c7g_xlarge = "c7g.xlarge",
    c7g_2xlarge = "c7g.2xlarge",
    c7g_4xlarge = "c7g.4xlarge",
    c7g_8xlarge = "c7g.8xlarge",
    c7g_12xlarge = "c7g.12xlarge",
    c7g_16xlarge = "c7g.16xlarge",
    r7g_medium = "r7g.medium",
    r7g_large = "r7g.large",
    r7g_xlarge = "r7g.xlarge",
    r7g_2xlarge = "r7g.2xlarge",
    r7g_4xlarge = "r7g.4xlarge",
    r7g_8xlarge = "r7g.8xlarge",
    r7g_12xlarge = "r7g.12xlarge",
    r7g_16xlarge = "r7g.16xlarge",
    m7g_medium = "m7g.medium",
    m7g_large = "m7g.large",
    m7g_xlarge = "m7g.xlarge",
    m7g_2xlarge = "m7g.2xlarge",
    m7g_4xlarge = "m7g.4xlarge",
    m7g_8xlarge = "m7g.8xlarge",
    m7g_12xlarge = "m7g.12xlarge",
    m7g_16xlarge = "m7g.16xlarge",
    g5g_xlarge = "g5g.xlarge",
    g5g_2xlarge = "g5g.2xlarge",
    g5g_4xlarge = "g5g.4xlarge",
    g5g_8xlarge = "g5g.8xlarge",
    g5g_16xlarge = "g5g.16xlarge",
    r6i_large = "r6i.large",
    r6i_xlarge = "r6i.xlarge",
    r6i_2xlarge = "r6i.2xlarge",
    r6i_4xlarge = "r6i.4xlarge",
    r6i_8xlarge = "r6i.8xlarge",
    r6i_12xlarge = "r6i.12xlarge",
    r6i_16xlarge = "r6i.16xlarge",
    c6gd_medium = "c6gd.medium",
    c6gd_large = "c6gd.large",
    c6gd_xlarge = "c6gd.xlarge",
    c6gd_2xlarge = "c6gd.2xlarge",
    c6gd_4xlarge = "c6gd.4xlarge",
    c6gd_8xlarge = "c6gd.8xlarge",
    c6gd_12xlarge = "c6gd.12xlarge",
    c6gd_16xlarge = "c6gd.16xlarge",
    c6in_large = "c6in.large",
    c6in_xlarge = "c6in.xlarge",
    c6in_2xlarge = "c6in.2xlarge",
    c6in_4xlarge = "c6in.4xlarge",
    c6in_8xlarge = "c6in.8xlarge",
    c6in_12xlarge = "c6in.12xlarge",
    c6in_16xlarge = "c6in.16xlarge",
    c7a_medium = "c7a.medium",
    c7a_large = "c7a.large",
    c7a_xlarge = "c7a.xlarge",
    c7a_2xlarge = "c7a.2xlarge",
    c7a_4xlarge = "c7a.4xlarge",
    c7a_8xlarge = "c7a.8xlarge",
    c7a_12xlarge = "c7a.12xlarge",
    c7a_16xlarge = "c7a.16xlarge",
    c7gd_medium = "c7gd.medium",
    c7gd_large = "c7gd.large",
    c7gd_xlarge = "c7gd.xlarge",
    c7gd_2xlarge = "c7gd.2xlarge",
    c7gd_4xlarge = "c7gd.4xlarge",
    c7gd_8xlarge = "c7gd.8xlarge",
    c7gd_12xlarge = "c7gd.12xlarge",
    c7gd_16xlarge = "c7gd.16xlarge",
    c7gn_medium = "c7gn.medium",
    c7gn_large = "c7gn.large",
    c7gn_xlarge = "c7gn.xlarge",
    c7gn_2xlarge = "c7gn.2xlarge",
    c7gn_4xlarge = "c7gn.4xlarge",
    c7gn_8xlarge = "c7gn.8xlarge",
    c7gn_12xlarge = "c7gn.12xlarge",
    c7gn_16xlarge = "c7gn.16xlarge",
    c7i_large = "c7i.large",
    c7i_xlarge = "c7i.xlarge",
    c7i_2xlarge = "c7i.2xlarge",
    c7i_4xlarge = "c7i.4xlarge",
    c7i_8xlarge = "c7i.8xlarge",
    c7i_12xlarge = "c7i.12xlarge",
    c7i_16xlarge = "c7i.16xlarge",
    m6a_large = "m6a.large",
    m6a_xlarge = "m6a.xlarge",
    m6a_2xlarge = "m6a.2xlarge",
    m6a_4xlarge = "m6a.4xlarge",
    m6a_8xlarge = "m6a.8xlarge",
    m6a_12xlarge = "m6a.12xlarge",
    m6a_16xlarge = "m6a.16xlarge",
    m6gd_medium = "m6gd.medium",
    m6gd_large = "m6gd.large",
    m6gd_xlarge = "m6gd.xlarge",
    m6gd_2xlarge = "m6gd.2xlarge",
    m6gd_4xlarge = "m6gd.4xlarge",
    m6gd_8xlarge = "m6gd.8xlarge",
    m6gd_12xlarge = "m6gd.12xlarge",
    m6gd_16xlarge = "m6gd.16xlarge",
    m6i_large = "m6i.large",
    m6i_xlarge = "m6i.xlarge",
    m6i_2xlarge = "m6i.2xlarge",
    m6i_4xlarge = "m6i.4xlarge",
    m6i_8xlarge = "m6i.8xlarge",
    m6i_12xlarge = "m6i.12xlarge",
    m6i_16xlarge = "m6i.16xlarge",
    m7a_medium = "m7a.medium",
    m7a_large = "m7a.large",
    m7a_xlarge = "m7a.xlarge",
    m7a_2xlarge = "m7a.2xlarge",
    m7a_4xlarge = "m7a.4xlarge",
    m7a_8xlarge = "m7a.8xlarge",
    m7a_12xlarge = "m7a.12xlarge",
    m7a_16xlarge = "m7a.16xlarge",
    m7gd_medium = "m7gd.medium",
    m7gd_large = "m7gd.large",
    m7gd_xlarge = "m7gd.xlarge",
    m7gd_2xlarge = "m7gd.2xlarge",
    m7gd_4xlarge = "m7gd.4xlarge",
    m7gd_8xlarge = "m7gd.8xlarge",
    m7gd_12xlarge = "m7gd.12xlarge",
    m7gd_16xlarge = "m7gd.16xlarge",
    m7i_large = "m7i.large",
    m7i_xlarge = "m7i.xlarge",
    m7i_2xlarge = "m7i.2xlarge",
    m7i_4xlarge = "m7i.4xlarge",
    m7i_8xlarge = "m7i.8xlarge",
    m7i_12xlarge = "m7i.12xlarge",
    m7i_16xlarge = "m7i.16xlarge",
    r6gd_medium = "r6gd.medium",
    r6gd_large = "r6gd.large",
    r6gd_xlarge = "r6gd.xlarge",
    r6gd_2xlarge = "r6gd.2xlarge",
    r6gd_4xlarge = "r6gd.4xlarge",
    r6gd_8xlarge = "r6gd.8xlarge",
    r6gd_12xlarge = "r6gd.12xlarge",
    r6gd_16xlarge = "r6gd.16xlarge",
    r7a_medium = "r7a.medium",
    r7a_large = "r7a.large",
    r7a_xlarge = "r7a.xlarge",
    r7a_2xlarge = "r7a.2xlarge",
    r7a_4xlarge = "r7a.4xlarge",
    r7a_8xlarge = "r7a.8xlarge",
    r7a_12xlarge = "r7a.12xlarge",
    r7a_16xlarge = "r7a.16xlarge",
    r7gd_medium = "r7gd.medium",
    r7gd_large = "r7gd.large",
    r7gd_xlarge = "r7gd.xlarge",
    r7gd_2xlarge = "r7gd.2xlarge",
    r7gd_4xlarge = "r7gd.4xlarge",
    r7gd_8xlarge = "r7gd.8xlarge",
    r7gd_12xlarge = "r7gd.12xlarge",
    r7gd_16xlarge = "r7gd.16xlarge",
    r7i_large = "r7i.large",
    r7i_xlarge = "r7i.xlarge",
    r7i_2xlarge = "r7i.2xlarge",
    r7i_4xlarge = "r7i.4xlarge",
    r7i_8xlarge = "r7i.8xlarge",
    r7i_12xlarge = "r7i.12xlarge",
    r7i_16xlarge = "r7i.16xlarge",
    r7i_24xlarge = "r7i.24xlarge",
    r7i_48xlarge = "r7i.48xlarge",
    c5ad_large = "c5ad.large",
    c5ad_xlarge = "c5ad.xlarge",
    c5ad_2xlarge = "c5ad.2xlarge",
    c5ad_4xlarge = "c5ad.4xlarge",
    c5ad_8xlarge = "c5ad.8xlarge",
    c5ad_12xlarge = "c5ad.12xlarge",
    c5ad_16xlarge = "c5ad.16xlarge",
    c5ad_24xlarge = "c5ad.24xlarge",
    c5n_large = "c5n.large",
    c5n_xlarge = "c5n.xlarge",
    c5n_2xlarge = "c5n.2xlarge",
    c5n_4xlarge = "c5n.4xlarge",
    c5n_9xlarge = "c5n.9xlarge",
    c5n_18xlarge = "c5n.18xlarge",
    r5ad_large = "r5ad.large",
    r5ad_xlarge = "r5ad.xlarge",
    r5ad_2xlarge = "r5ad.2xlarge",
    r5ad_4xlarge = "r5ad.4xlarge",
    r5ad_8xlarge = "r5ad.8xlarge",
    r5ad_12xlarge = "r5ad.12xlarge",
    r5ad_16xlarge = "r5ad.16xlarge",
    r5ad_24xlarge = "r5ad.24xlarge",
    c6id_large = "c6id.large",
    c6id_xlarge = "c6id.xlarge",
    c6id_2xlarge = "c6id.2xlarge",
    c6id_4xlarge = "c6id.4xlarge",
    c6id_8xlarge = "c6id.8xlarge",
    c6id_12xlarge = "c6id.12xlarge",
    c6id_16xlarge = "c6id.16xlarge",
    c6id_24xlarge = "c6id.24xlarge",
    c6id_32xlarge = "c6id.32xlarge",
    c8g_medium = "c8g.medium",
    c8g_large = "c8g.large",
    c8g_xlarge = "c8g.xlarge",
    c8g_2xlarge = "c8g.2xlarge",
    c8g_4xlarge = "c8g.4xlarge",
    c8g_8xlarge = "c8g.8xlarge",
    c8g_12xlarge = "c8g.12xlarge",
    c8g_16xlarge = "c8g.16xlarge",
    c8g_24xlarge = "c8g.24xlarge",
    c8g_48xlarge = "c8g.48xlarge",
    m5ad_large = "m5ad.large",
    m5ad_xlarge = "m5ad.xlarge",
    m5ad_2xlarge = "m5ad.2xlarge",
    m5ad_4xlarge = "m5ad.4xlarge",
    m5ad_8xlarge = "m5ad.8xlarge",
    m5ad_12xlarge = "m5ad.12xlarge",
    m5ad_16xlarge = "m5ad.16xlarge",
    m5ad_24xlarge = "m5ad.24xlarge",
    m5d_large = "m5d.large",
    m5d_xlarge = "m5d.xlarge",
    m5d_2xlarge = "m5d.2xlarge",
    m5d_4xlarge = "m5d.4xlarge",
    m5d_8xlarge = "m5d.8xlarge",
    m5d_12xlarge = "m5d.12xlarge",
    m5d_16xlarge = "m5d.16xlarge",
    m5d_24xlarge = "m5d.24xlarge",
    m5dn_large = "m5dn.large",
    m5dn_xlarge = "m5dn.xlarge",
    m5dn_2xlarge = "m5dn.2xlarge",
    m5dn_4xlarge = "m5dn.4xlarge",
    m5dn_8xlarge = "m5dn.8xlarge",
    m5dn_12xlarge = "m5dn.12xlarge",
    m5dn_16xlarge = "m5dn.16xlarge",
    m5dn_24xlarge = "m5dn.24xlarge",
    m5n_large = "m5n.large",
    m5n_xlarge = "m5n.xlarge",
    m5n_2xlarge = "m5n.2xlarge",
    m5n_4xlarge = "m5n.4xlarge",
    m5n_8xlarge = "m5n.8xlarge",
    m5n_12xlarge = "m5n.12xlarge",
    m5n_16xlarge = "m5n.16xlarge",
    m5n_24xlarge = "m5n.24xlarge",
    m6id_large = "m6id.large",
    m6id_xlarge = "m6id.xlarge",
    m6id_2xlarge = "m6id.2xlarge",
    m6id_4xlarge = "m6id.4xlarge",
    m6id_8xlarge = "m6id.8xlarge",
    m6id_12xlarge = "m6id.12xlarge",
    m6id_16xlarge = "m6id.16xlarge",
    m6id_24xlarge = "m6id.24xlarge",
    m6id_32xlarge = "m6id.32xlarge",
    m6idn_large = "m6idn.large",
    m6idn_xlarge = "m6idn.xlarge",
    m6idn_2xlarge = "m6idn.2xlarge",
    m6idn_4xlarge = "m6idn.4xlarge",
    m6idn_8xlarge = "m6idn.8xlarge",
    m6idn_12xlarge = "m6idn.12xlarge",
    m6idn_16xlarge = "m6idn.16xlarge",
    m6idn_24xlarge = "m6idn.24xlarge",
    m6idn_32xlarge = "m6idn.32xlarge",
    m6in_large = "m6in.large",
    m6in_xlarge = "m6in.xlarge",
    m6in_2xlarge = "m6in.2xlarge",
    m6in_4xlarge = "m6in.4xlarge",
    m6in_8xlarge = "m6in.8xlarge",
    m6in_12xlarge = "m6in.12xlarge",
    m6in_16xlarge = "m6in.16xlarge",
    m6in_24xlarge = "m6in.24xlarge",
    m6in_32xlarge = "m6in.32xlarge",
    m8g_medium = "m8g.medium",
    m8g_large = "m8g.large",
    m8g_xlarge = "m8g.xlarge",
    m8g_2xlarge = "m8g.2xlarge",
    m8g_4xlarge = "m8g.4xlarge",
    m8g_8xlarge = "m8g.8xlarge",
    m8g_12xlarge = "m8g.12xlarge",
    m8g_16xlarge = "m8g.16xlarge",
    m8g_24xlarge = "m8g.24xlarge",
    m8g_48xlarge = "m8g.48xlarge",
    r5dn_large = "r5dn.large",
    r5dn_xlarge = "r5dn.xlarge",
    r5dn_2xlarge = "r5dn.2xlarge",
    r5dn_4xlarge = "r5dn.4xlarge",
    r5dn_8xlarge = "r5dn.8xlarge",
    r5dn_12xlarge = "r5dn.12xlarge",
    r5dn_16xlarge = "r5dn.16xlarge",
    r5dn_24xlarge = "r5dn.24xlarge",
    r5n_large = "r5n.large",
    r5n_xlarge = "r5n.xlarge",
    r5n_2xlarge = "r5n.2xlarge",
    r5n_4xlarge = "r5n.4xlarge",
    r5n_8xlarge = "r5n.8xlarge",
    r5n_12xlarge = "r5n.12xlarge",
    r5n_16xlarge = "r5n.16xlarge",
    r5n_24xlarge = "r5n.24xlarge",
    r6a_large = "r6a.large",
    r6a_xlarge = "r6a.xlarge",
    r6a_2xlarge = "r6a.2xlarge",
    r6a_4xlarge = "r6a.4xlarge",
    r6a_8xlarge = "r6a.8xlarge",
    r6a_12xlarge = "r6a.12xlarge",
    r6a_16xlarge = "r6a.16xlarge",
    r6a_24xlarge = "r6a.24xlarge",
    r6a_32xlarge = "r6a.32xlarge",
    r6a_48xlarge = "r6a.48xlarge",
    r6id_large = "r6id.large",
    r6id_xlarge = "r6id.xlarge",
    r6id_2xlarge = "r6id.2xlarge",
    r6id_4xlarge = "r6id.4xlarge",
    r6id_8xlarge = "r6id.8xlarge",
    r6id_12xlarge = "r6id.12xlarge",
    r6id_16xlarge = "r6id.16xlarge",
    r6id_24xlarge = "r6id.24xlarge",
    r6id_32xlarge = "r6id.32xlarge",
    r6idn_large = "r6idn.large",
    r6idn_xlarge = "r6idn.xlarge",
    r6idn_2xlarge = "r6idn.2xlarge",
    r6idn_4xlarge = "r6idn.4xlarge",
    r6idn_8xlarge = "r6idn.8xlarge",
    r6idn_12xlarge = "r6idn.12xlarge",
    r6idn_16xlarge = "r6idn.16xlarge",
    r6idn_24xlarge = "r6idn.24xlarge",
    r6idn_32xlarge = "r6idn.32xlarge",
    r6in_large = "r6in.large",
    r6in_xlarge = "r6in.xlarge",
    r6in_2xlarge = "r6in.2xlarge",
    r6in_4xlarge = "r6in.4xlarge",
    r6in_8xlarge = "r6in.8xlarge",
    r6in_12xlarge = "r6in.12xlarge",
    r6in_16xlarge = "r6in.16xlarge",
    r6in_24xlarge = "r6in.24xlarge",
    r6in_32xlarge = "r6in.32xlarge",
    r8g_medium = "r8g.medium",
    r8g_large = "r8g.large",
    r8g_xlarge = "r8g.xlarge",
    r8g_2xlarge = "r8g.2xlarge",
    r8g_4xlarge = "r8g.4xlarge",
    r8g_8xlarge = "r8g.8xlarge",
    r8g_12xlarge = "r8g.12xlarge",
    r8g_16xlarge = "r8g.16xlarge",
    r8g_24xlarge = "r8g.24xlarge",
    r8g_48xlarge = "r8g.48xlarge",
    m4_16xlarge = "m4.16xlarge",
    c6a_32xlarge = "c6a.32xlarge",
    c6a_48xlarge = "c6a.48xlarge",
    c6i_32xlarge = "c6i.32xlarge",
    r6i_24xlarge = "r6i.24xlarge",
    r6i_32xlarge = "r6i.32xlarge",
    c6in_24xlarge = "c6in.24xlarge",
    c6in_32xlarge = "c6in.32xlarge",
    c7a_24xlarge = "c7a.24xlarge",
    c7a_32xlarge = "c7a.32xlarge",
    c7a_48xlarge = "c7a.48xlarge",
    c7i_24xlarge = "c7i.24xlarge",
    c7i_48xlarge = "c7i.48xlarge",
    m6a_24xlarge = "m6a.24xlarge",
    m6a_32xlarge = "m6a.32xlarge",
    m6a_48xlarge = "m6a.48xlarge",
    m6i_24xlarge = "m6i.24xlarge",
    m6i_32xlarge = "m6i.32xlarge",
    m7a_24xlarge = "m7a.24xlarge",
    m7a_32xlarge = "m7a.32xlarge",
    m7a_48xlarge = "m7a.48xlarge",
    m7i_24xlarge = "m7i.24xlarge",
    m7i_48xlarge = "m7i.48xlarge",
    r7a_24xlarge = "r7a.24xlarge",
    r7a_32xlarge = "r7a.32xlarge",
    r7a_48xlarge = "r7a.48xlarge",
}

M.Compute = {
    type = "structure",
    id = "Compute",
    members = {
        FleetId = {
            type = "string",
        },
        FleetArn = {
            type = "string",
        },
        ComputeName = {
            type = "string",
        },
        ComputeArn = {
            type = "string",
        },
        IpAddress = {
            type = "string",
        },
        DnsName = {
            type = "string",
        },
        ComputeStatus = {
            type = "string",
        },
        Location = {
            type = "string",
        },
        CreationTime = {
            type = "timestamp",
        },
        OperatingSystem = {
            type = "string",
        },
        Type = {
            type = "string",
        },
        GameLiftServiceSdkEndpoint = {
            type = "string",
        },
        GameLiftAgentEndpoint = {
            type = "string",
        },
        InstanceId = {
            type = "string",
        },
        ContainerAttributes = {
            type = "list",
            member = M.ContainerAttribute,
        },
        GameServerContainerGroupDefinitionArn = {
            type = "string",
        },
    },
}

M.ComputeType = {
    EC2 = "EC2",
    ANYWHERE = "ANYWHERE",
}

M.ConnectionPortRange = {
    type = "structure",
    id = "ConnectionPortRange",
    members = {
        FromPort = {
            type = "integer",
            traits = {
                required = true,
            },
        },
        ToPort = {
            type = "integer",
            traits = {
                required = true,
            },
        },
    },
}

M.ContainerDependencyCondition = {
    START = "START",
    COMPLETE = "COMPLETE",
    SUCCESS = "SUCCESS",
    HEALTHY = "HEALTHY",
}

M.ContainerDependency = {
    type = "structure",
    id = "ContainerDependency",
    members = {
        ContainerName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Condition = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.ContainerEnvironment = {
    type = "structure",
    id = "ContainerEnvironment",
    members = {
        Name = {
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

M.ContainerFleetBillingType = {
    ON_DEMAND = "ON_DEMAND",
    SPOT = "SPOT",
}

M.DeploymentDetails = {
    type = "structure",
    id = "DeploymentDetails",
    members = {
        LatestDeploymentId = {
            type = "string",
        },
    },
}

M.GameSessionCreationLimitPolicy = {
    type = "structure",
    id = "GameSessionCreationLimitPolicy",
    members = {
        NewGameSessionsPerCreator = {
            type = "integer",
        },
        PolicyPeriodInMinutes = {
            type = "integer",
        },
    },
}

M.IpProtocol = {
    TCP = "TCP",
    UDP = "UDP",
}

M.IpPermission = {
    type = "structure",
    id = "IpPermission",
    members = {
        FromPort = {
            type = "integer",
            traits = {
                required = true,
            },
        },
        ToPort = {
            type = "integer",
            traits = {
                required = true,
            },
        },
        IpRange = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Protocol = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.PlayerGatewayStatus = {
    DISABLED = "DISABLED",
    ENABLED = "ENABLED",
}

M.ContainerFleetLocationStatus = {
    PENDING = "PENDING",
    CREATING = "CREATING",
    CREATED = "CREATED",
    ACTIVATING = "ACTIVATING",
    ACTIVE = "ACTIVE",
    UPDATING = "UPDATING",
    DELETING = "DELETING",
}

M.ContainerFleetLocationAttributes = {
    type = "structure",
    id = "ContainerFleetLocationAttributes",
    members = {
        Location = {
            type = "string",
        },
        Status = {
            type = "string",
        },
        PlayerGatewayStatus = {
            type = "string",
        },
    },
}

M.LogDestination = {
    NONE = "NONE",
    CLOUDWATCH = "CLOUDWATCH",
    S3 = "S3",
}

M.LogConfiguration = {
    type = "structure",
    id = "LogConfiguration",
    members = {
        LogDestination = {
            type = "string",
        },
        S3BucketName = {
            type = "string",
        },
        LogGroupArn = {
            type = "string",
        },
    },
}

M.ProtectionPolicy = {
    NoProtection = "NoProtection",
    FullProtection = "FullProtection",
}

M.PlayerGatewayMode = {
    DISABLED = "DISABLED",
    ENABLED = "ENABLED",
    REQUIRED = "REQUIRED",
}

M.ContainerFleetStatus = {
    PENDING = "PENDING",
    CREATING = "CREATING",
    CREATED = "CREATED",
    ACTIVATING = "ACTIVATING",
    ACTIVE = "ACTIVE",
    UPDATING = "UPDATING",
    DELETING = "DELETING",
}

M.ContainerFleet = {
    type = "structure",
    id = "ContainerFleet",
    members = {
        FleetId = {
            type = "string",
        },
        FleetArn = {
            type = "string",
        },
        FleetRoleArn = {
            type = "string",
        },
        GameServerContainerGroupDefinitionName = {
            type = "string",
        },
        GameServerContainerGroupDefinitionArn = {
            type = "string",
        },
        PerInstanceContainerGroupDefinitionName = {
            type = "string",
        },
        PerInstanceContainerGroupDefinitionArn = {
            type = "string",
        },
        InstanceConnectionPortRange = M.ConnectionPortRange,
        InstanceInboundPermissions = {
            type = "list",
            member = M.IpPermission,
        },
        GameServerContainerGroupsPerInstance = {
            type = "integer",
        },
        MaximumGameServerContainerGroupsPerInstance = {
            type = "integer",
        },
        InstanceType = {
            type = "string",
        },
        BillingType = {
            type = "string",
        },
        Description = {
            type = "string",
        },
        CreationTime = {
            type = "timestamp",
        },
        MetricGroups = {
            type = "list",
            member = { type = "string" },
        },
        NewGameSessionProtectionPolicy = {
            type = "string",
        },
        GameSessionCreationLimitPolicy = M.GameSessionCreationLimitPolicy,
        Status = {
            type = "string",
        },
        DeploymentDetails = M.DeploymentDetails,
        LogConfiguration = M.LogConfiguration,
        LocationAttributes = {
            type = "list",
            member = M.ContainerFleetLocationAttributes,
        },
        PlayerGatewayMode = {
            type = "string",
        },
    },
}

M.ContainerFleetRemoveAttribute = {
    PER_INSTANCE_CONTAINER_GROUP_DEFINITION = "PER_INSTANCE_CONTAINER_GROUP_DEFINITION",
}

M.ContainerGroupType = {
    GAME_SERVER = "GAME_SERVER",
    PER_INSTANCE = "PER_INSTANCE",
}

M.ContainerMountPointAccessLevel = {
    READ_ONLY = "READ_ONLY",
    READ_AND_WRITE = "READ_AND_WRITE",
}

M.ContainerMountPoint = {
    type = "structure",
    id = "ContainerMountPoint",
    members = {
        InstancePath = {
            type = "string",
            traits = {
                required = true,
            },
        },
        ContainerPath = {
            type = "string",
        },
        AccessLevel = {
            type = "string",
        },
    },
}

M.ContainerPortRange = {
    type = "structure",
    id = "ContainerPortRange",
    members = {
        FromPort = {
            type = "integer",
            traits = {
                required = true,
            },
        },
        ToPort = {
            type = "integer",
            traits = {
                required = true,
            },
        },
        Protocol = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.ContainerPortConfiguration = {
    type = "structure",
    id = "ContainerPortConfiguration",
    members = {
        ContainerPortRanges = {
            type = "list",
            member = M.ContainerPortRange,
            traits = {
                required = true,
            },
        },
    },
}

M.GameServerContainerDefinition = {
    type = "structure",
    id = "GameServerContainerDefinition",
    members = {
        ContainerName = {
            type = "string",
        },
        DependsOn = {
            type = "list",
            member = M.ContainerDependency,
        },
        MountPoints = {
            type = "list",
            member = M.ContainerMountPoint,
        },
        EnvironmentOverride = {
            type = "list",
            member = M.ContainerEnvironment,
        },
        ImageUri = {
            type = "string",
        },
        PortConfiguration = M.ContainerPortConfiguration,
        ResolvedImageDigest = {
            type = "string",
        },
        ServerSdkVersion = {
            type = "string",
        },
    },
}

M.ContainerOperatingSystem = {
    AMAZON_LINUX_2023 = "AMAZON_LINUX_2023",
}

M.ContainerGroupDefinitionStatus = {
    READY = "READY",
    COPYING = "COPYING",
    FAILED = "FAILED",
}

M.ContainerHealthCheck = {
    type = "structure",
    id = "ContainerHealthCheck",
    members = {
        Command = {
            type = "list",
            member = { type = "string" },
            traits = {
                required = true,
            },
        },
        Interval = {
            type = "integer",
        },
        Retries = {
            type = "integer",
        },
        StartPeriod = {
            type = "integer",
        },
        Timeout = {
            type = "integer",
        },
    },
}

M.SupportContainerDefinition = {
    type = "structure",
    id = "SupportContainerDefinition",
    members = {
        ContainerName = {
            type = "string",
        },
        DependsOn = {
            type = "list",
            member = M.ContainerDependency,
        },
        MountPoints = {
            type = "list",
            member = M.ContainerMountPoint,
        },
        EnvironmentOverride = {
            type = "list",
            member = M.ContainerEnvironment,
        },
        Essential = {
            type = "boolean",
        },
        HealthCheck = M.ContainerHealthCheck,
        ImageUri = {
            type = "string",
        },
        MemoryHardLimitMebibytes = {
            type = "integer",
        },
        PortConfiguration = M.ContainerPortConfiguration,
        ResolvedImageDigest = {
            type = "string",
        },
        Vcpu = {
            type = "double",
        },
    },
}

M.ContainerGroupDefinition = {
    type = "structure",
    id = "ContainerGroupDefinition",
    members = {
        ContainerGroupDefinitionArn = {
            type = "string",
        },
        CreationTime = {
            type = "timestamp",
        },
        OperatingSystem = {
            type = "string",
        },
        Name = {
            type = "string",
            traits = {
                required = true,
            },
        },
        ContainerGroupType = {
            type = "string",
        },
        TotalMemoryLimitMebibytes = {
            type = "integer",
        },
        TotalVcpuLimit = {
            type = "double",
        },
        GameServerContainerDefinition = M.GameServerContainerDefinition,
        SupportContainerDefinitions = {
            type = "list",
            member = M.SupportContainerDefinition,
        },
        VersionNumber = {
            type = "integer",
        },
        VersionDescription = {
            type = "string",
        },
        Status = {
            type = "string",
        },
        StatusReason = {
            type = "string",
        },
    },
}

M.ContainerPortMapping = {
    type = "structure",
    id = "ContainerPortMapping",
    members = {
        ContainerPort = {
            type = "integer",
        },
        ConnectionPort = {
            type = "integer",
        },
        Protocol = {
            type = "string",
        },
    },
}

M.ContainerGroupPortMapping = {
    type = "structure",
    id = "ContainerGroupPortMapping",
    members = {
        ContainerName = {
            type = "string",
        },
        ContainerRuntimeId = {
            type = "string",
        },
        ContainerPortMappings = {
            type = "list",
            member = M.ContainerPortMapping,
        },
    },
}

M.ContainerIdentifier = {
    type = "structure",
    id = "ContainerIdentifier",
    members = {
        ContainerName = {
            type = "string",
        },
        ContainerRuntimeId = {
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

M.CreateAliasInput = {
    type = "structure",
    id = "CreateAliasInput",
    members = {
        Name = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Description = {
            type = "string",
        },
        RoutingStrategy = setmetatable({ traits = {
            required = true,
        } }, { __index = M.RoutingStrategy }),
        Tags = {
            type = "list",
            member = M.Tag,
        },
    },
}

M.CreateAliasOutput = {
    type = "structure",
    id = "CreateAliasOutput",
    members = {
        Alias = M.Alias,
    },
}

M.LimitExceededException = {
    type = "structure",
    id = "LimitExceededException",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.TaggingFailedException = {
    type = "structure",
    id = "TaggingFailedException",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.S3Location = {
    type = "structure",
    id = "S3Location",
    members = {
        Bucket = {
            type = "string",
        },
        Key = {
            type = "string",
        },
        RoleArn = {
            type = "string",
        },
        ObjectVersion = {
            type = "string",
        },
    },
}

M.CreateBuildInput = {
    type = "structure",
    id = "CreateBuildInput",
    members = {
        Name = {
            type = "string",
        },
        Version = {
            type = "string",
        },
        StorageLocation = M.S3Location,
        OperatingSystem = {
            type = "string",
        },
        Tags = {
            type = "list",
            member = M.Tag,
        },
        ServerSdkVersion = {
            type = "string",
        },
    },
}

M.CreateBuildOutput = {
    type = "structure",
    id = "CreateBuildOutput",
    members = {
        Build = M.Build,
        UploadCredentials = M.AwsCredentials,
        StorageLocation = M.S3Location,
    },
}

M.LocationConfiguration = {
    type = "structure",
    id = "LocationConfiguration",
    members = {
        Location = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.CreateContainerFleetInput = {
    type = "structure",
    id = "CreateContainerFleetInput",
    members = {
        FleetRoleArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Description = {
            type = "string",
        },
        GameServerContainerGroupDefinitionName = {
            type = "string",
        },
        PerInstanceContainerGroupDefinitionName = {
            type = "string",
        },
        InstanceConnectionPortRange = M.ConnectionPortRange,
        InstanceInboundPermissions = {
            type = "list",
            member = M.IpPermission,
        },
        GameServerContainerGroupsPerInstance = {
            type = "integer",
        },
        InstanceType = {
            type = "string",
        },
        BillingType = {
            type = "string",
        },
        Locations = {
            type = "list",
            member = M.LocationConfiguration,
        },
        MetricGroups = {
            type = "list",
            member = { type = "string" },
        },
        NewGameSessionProtectionPolicy = {
            type = "string",
        },
        GameSessionCreationLimitPolicy = M.GameSessionCreationLimitPolicy,
        LogConfiguration = M.LogConfiguration,
        Tags = {
            type = "list",
            member = M.Tag,
        },
        PlayerGatewayMode = {
            type = "string",
        },
    },
}

M.CreateContainerFleetOutput = {
    type = "structure",
    id = "CreateContainerFleetOutput",
    members = {
        ContainerFleet = M.ContainerFleet,
    },
}

M.GameServerContainerDefinitionInput = {
    type = "structure",
    id = "GameServerContainerDefinitionInput",
    members = {
        ContainerName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        DependsOn = {
            type = "list",
            member = M.ContainerDependency,
        },
        MountPoints = {
            type = "list",
            member = M.ContainerMountPoint,
        },
        EnvironmentOverride = {
            type = "list",
            member = M.ContainerEnvironment,
        },
        ImageUri = {
            type = "string",
            traits = {
                required = true,
            },
        },
        PortConfiguration = setmetatable({ traits = {
            required = true,
        } }, { __index = M.ContainerPortConfiguration }),
        ServerSdkVersion = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.SupportContainerDefinitionInput = {
    type = "structure",
    id = "SupportContainerDefinitionInput",
    members = {
        ContainerName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        DependsOn = {
            type = "list",
            member = M.ContainerDependency,
        },
        MountPoints = {
            type = "list",
            member = M.ContainerMountPoint,
        },
        EnvironmentOverride = {
            type = "list",
            member = M.ContainerEnvironment,
        },
        Essential = {
            type = "boolean",
        },
        HealthCheck = M.ContainerHealthCheck,
        ImageUri = {
            type = "string",
            traits = {
                required = true,
            },
        },
        MemoryHardLimitMebibytes = {
            type = "integer",
        },
        PortConfiguration = M.ContainerPortConfiguration,
        Vcpu = {
            type = "double",
        },
    },
}

M.CreateContainerGroupDefinitionInput = {
    type = "structure",
    id = "CreateContainerGroupDefinitionInput",
    members = {
        Name = {
            type = "string",
            traits = {
                required = true,
            },
        },
        ContainerGroupType = {
            type = "string",
        },
        TotalMemoryLimitMebibytes = {
            type = "integer",
            traits = {
                required = true,
            },
        },
        TotalVcpuLimit = {
            type = "double",
            traits = {
                required = true,
            },
        },
        GameServerContainerDefinition = M.GameServerContainerDefinitionInput,
        SupportContainerDefinitions = {
            type = "list",
            member = M.SupportContainerDefinitionInput,
        },
        OperatingSystem = {
            type = "string",
            traits = {
                required = true,
            },
        },
        VersionDescription = {
            type = "string",
        },
        Tags = {
            type = "list",
            member = M.Tag,
        },
    },
}

M.CreateContainerGroupDefinitionOutput = {
    type = "structure",
    id = "CreateContainerGroupDefinitionOutput",
    members = {
        ContainerGroupDefinition = M.ContainerGroupDefinition,
    },
}

M.FleetType = {
    OnDemand = "ON_DEMAND",
    Spot = "SPOT",
}

M.InstanceRoleCredentialsProvider = {
    SHARED_CREDENTIAL_FILE = "SHARED_CREDENTIAL_FILE",
}

M.GameServerIpProtocolSupported = {
    IPv4 = "IPv4",
    DUAL_STACK = "DUAL_STACK",
}

M.PlayerGatewayConfiguration = {
    type = "structure",
    id = "PlayerGatewayConfiguration",
    members = {
        GameServerIpProtocolSupported = {
            type = "string",
        },
    },
}

M.ResourceCreationLimitPolicy = {
    type = "structure",
    id = "ResourceCreationLimitPolicy",
    members = {
        NewGameSessionsPerCreator = {
            type = "integer",
        },
        PolicyPeriodInMinutes = {
            type = "integer",
        },
    },
}

M.ServerProcess = {
    type = "structure",
    id = "ServerProcess",
    members = {
        LaunchPath = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Parameters = {
            type = "string",
        },
        ConcurrentExecutions = {
            type = "integer",
            traits = {
                required = true,
            },
        },
    },
}

M.RuntimeConfiguration = {
    type = "structure",
    id = "RuntimeConfiguration",
    members = {
        ServerProcesses = {
            type = "list",
            member = M.ServerProcess,
        },
        MaxConcurrentGameSessionActivations = {
            type = "integer",
        },
        GameSessionActivationTimeoutSeconds = {
            type = "integer",
        },
    },
}

M.CreateFleetInput = {
    type = "structure",
    id = "CreateFleetInput",
    members = {
        Name = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Description = {
            type = "string",
        },
        BuildId = {
            type = "string",
        },
        ScriptId = {
            type = "string",
        },
        ServerLaunchPath = {
            type = "string",
        },
        ServerLaunchParameters = {
            type = "string",
        },
        LogPaths = {
            type = "list",
            member = { type = "string" },
        },
        EC2InstanceType = {
            type = "string",
        },
        EC2InboundPermissions = {
            type = "list",
            member = M.IpPermission,
        },
        NewGameSessionProtectionPolicy = {
            type = "string",
        },
        RuntimeConfiguration = M.RuntimeConfiguration,
        ResourceCreationLimitPolicy = M.ResourceCreationLimitPolicy,
        MetricGroups = {
            type = "list",
            member = { type = "string" },
        },
        PeerVpcAwsAccountId = {
            type = "string",
        },
        PeerVpcId = {
            type = "string",
        },
        FleetType = {
            type = "string",
        },
        InstanceRoleArn = {
            type = "string",
        },
        CertificateConfiguration = M.CertificateConfiguration,
        Locations = {
            type = "list",
            member = M.LocationConfiguration,
        },
        Tags = {
            type = "list",
            member = M.Tag,
        },
        ComputeType = {
            type = "string",
        },
        AnywhereConfiguration = M.AnywhereConfiguration,
        InstanceRoleCredentialsProvider = {
            type = "string",
        },
        PlayerGatewayMode = {
            type = "string",
        },
        PlayerGatewayConfiguration = M.PlayerGatewayConfiguration,
    },
}

M.FleetStatus = {
    NEW = "NEW",
    DOWNLOADING = "DOWNLOADING",
    VALIDATING = "VALIDATING",
    BUILDING = "BUILDING",
    ACTIVATING = "ACTIVATING",
    ACTIVE = "ACTIVE",
    DELETING = "DELETING",
    ERROR = "ERROR",
    TERMINATED = "TERMINATED",
    NOT_FOUND = "NOT_FOUND",
}

M.FleetAction = {
    AutoScaling = "AUTO_SCALING",
}

M.FleetAttributes = {
    type = "structure",
    id = "FleetAttributes",
    members = {
        FleetId = {
            type = "string",
        },
        FleetArn = {
            type = "string",
        },
        FleetType = {
            type = "string",
        },
        InstanceType = {
            type = "string",
        },
        Description = {
            type = "string",
        },
        Name = {
            type = "string",
        },
        CreationTime = {
            type = "timestamp",
        },
        TerminationTime = {
            type = "timestamp",
        },
        Status = {
            type = "string",
        },
        BuildId = {
            type = "string",
        },
        BuildArn = {
            type = "string",
        },
        ScriptId = {
            type = "string",
        },
        ScriptArn = {
            type = "string",
        },
        ServerLaunchPath = {
            type = "string",
        },
        ServerLaunchParameters = {
            type = "string",
        },
        LogPaths = {
            type = "list",
            member = { type = "string" },
        },
        NewGameSessionProtectionPolicy = {
            type = "string",
        },
        OperatingSystem = {
            type = "string",
        },
        ResourceCreationLimitPolicy = M.ResourceCreationLimitPolicy,
        MetricGroups = {
            type = "list",
            member = { type = "string" },
        },
        StoppedActions = {
            type = "list",
            member = { type = "string" },
        },
        InstanceRoleArn = {
            type = "string",
        },
        CertificateConfiguration = M.CertificateConfiguration,
        ComputeType = {
            type = "string",
        },
        AnywhereConfiguration = M.AnywhereConfiguration,
        InstanceRoleCredentialsProvider = {
            type = "string",
        },
        PlayerGatewayMode = {
            type = "string",
        },
        PlayerGatewayConfiguration = M.PlayerGatewayConfiguration,
    },
}

M.LocationState = {
    type = "structure",
    id = "LocationState",
    members = {
        Location = {
            type = "string",
        },
        Status = {
            type = "string",
        },
        PlayerGatewayStatus = {
            type = "string",
        },
    },
}

M.CreateFleetOutput = {
    type = "structure",
    id = "CreateFleetOutput",
    members = {
        FleetAttributes = M.FleetAttributes,
        LocationStates = {
            type = "list",
            member = M.LocationState,
        },
    },
}

M.NotReadyException = {
    type = "structure",
    id = "NotReadyException",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.CreateFleetLocationsInput = {
    type = "structure",
    id = "CreateFleetLocationsInput",
    members = {
        FleetId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Locations = {
            type = "list",
            member = M.LocationConfiguration,
            traits = {
                required = true,
            },
        },
    },
}

M.CreateFleetLocationsOutput = {
    type = "structure",
    id = "CreateFleetLocationsOutput",
    members = {
        FleetId = {
            type = "string",
        },
        FleetArn = {
            type = "string",
        },
        LocationStates = {
            type = "list",
            member = M.LocationState,
        },
    },
}

M.InvalidFleetStatusException = {
    type = "structure",
    id = "InvalidFleetStatusException",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.TargetTrackingConfiguration = {
    type = "structure",
    id = "TargetTrackingConfiguration",
    members = {
        TargetValue = {
            type = "double",
            traits = {
                required = true,
            },
        },
    },
}

M.GameServerGroupAutoScalingPolicy = {
    type = "structure",
    id = "GameServerGroupAutoScalingPolicy",
    members = {
        EstimatedInstanceWarmup = {
            type = "integer",
        },
        TargetTrackingConfiguration = setmetatable({ traits = {
            required = true,
        } }, { __index = M.TargetTrackingConfiguration }),
    },
}

M.GameServerProtectionPolicy = {
    NO_PROTECTION = "NO_PROTECTION",
    FULL_PROTECTION = "FULL_PROTECTION",
}

M.GameServerGroupInstanceType = {
    c4_large = "c4.large",
    c4_xlarge = "c4.xlarge",
    c4_2xlarge = "c4.2xlarge",
    c4_4xlarge = "c4.4xlarge",
    c4_8xlarge = "c4.8xlarge",
    c5_large = "c5.large",
    c5_xlarge = "c5.xlarge",
    c5_2xlarge = "c5.2xlarge",
    c5_4xlarge = "c5.4xlarge",
    c5_9xlarge = "c5.9xlarge",
    c5_12xlarge = "c5.12xlarge",
    c5_18xlarge = "c5.18xlarge",
    c5_24xlarge = "c5.24xlarge",
    c5a_large = "c5a.large",
    c5a_xlarge = "c5a.xlarge",
    c5a_2xlarge = "c5a.2xlarge",
    c5a_4xlarge = "c5a.4xlarge",
    c5a_8xlarge = "c5a.8xlarge",
    c5a_12xlarge = "c5a.12xlarge",
    c5a_16xlarge = "c5a.16xlarge",
    c5a_24xlarge = "c5a.24xlarge",
    c6g_medium = "c6g.medium",
    c6g_large = "c6g.large",
    c6g_xlarge = "c6g.xlarge",
    c6g_2xlarge = "c6g.2xlarge",
    c6g_4xlarge = "c6g.4xlarge",
    c6g_8xlarge = "c6g.8xlarge",
    c6g_12xlarge = "c6g.12xlarge",
    c6g_16xlarge = "c6g.16xlarge",
    r4_large = "r4.large",
    r4_xlarge = "r4.xlarge",
    r4_2xlarge = "r4.2xlarge",
    r4_4xlarge = "r4.4xlarge",
    r4_8xlarge = "r4.8xlarge",
    r4_16xlarge = "r4.16xlarge",
    r5_large = "r5.large",
    r5_xlarge = "r5.xlarge",
    r5_2xlarge = "r5.2xlarge",
    r5_4xlarge = "r5.4xlarge",
    r5_8xlarge = "r5.8xlarge",
    r5_12xlarge = "r5.12xlarge",
    r5_16xlarge = "r5.16xlarge",
    r5_24xlarge = "r5.24xlarge",
    r5a_large = "r5a.large",
    r5a_xlarge = "r5a.xlarge",
    r5a_2xlarge = "r5a.2xlarge",
    r5a_4xlarge = "r5a.4xlarge",
    r5a_8xlarge = "r5a.8xlarge",
    r5a_12xlarge = "r5a.12xlarge",
    r5a_16xlarge = "r5a.16xlarge",
    r5a_24xlarge = "r5a.24xlarge",
    r6g_medium = "r6g.medium",
    r6g_large = "r6g.large",
    r6g_xlarge = "r6g.xlarge",
    r6g_2xlarge = "r6g.2xlarge",
    r6g_4xlarge = "r6g.4xlarge",
    r6g_8xlarge = "r6g.8xlarge",
    r6g_12xlarge = "r6g.12xlarge",
    r6g_16xlarge = "r6g.16xlarge",
    m4_large = "m4.large",
    m4_xlarge = "m4.xlarge",
    m4_2xlarge = "m4.2xlarge",
    m4_4xlarge = "m4.4xlarge",
    m4_10xlarge = "m4.10xlarge",
    m5_large = "m5.large",
    m5_xlarge = "m5.xlarge",
    m5_2xlarge = "m5.2xlarge",
    m5_4xlarge = "m5.4xlarge",
    m5_8xlarge = "m5.8xlarge",
    m5_12xlarge = "m5.12xlarge",
    m5_16xlarge = "m5.16xlarge",
    m5_24xlarge = "m5.24xlarge",
    m5a_large = "m5a.large",
    m5a_xlarge = "m5a.xlarge",
    m5a_2xlarge = "m5a.2xlarge",
    m5a_4xlarge = "m5a.4xlarge",
    m5a_8xlarge = "m5a.8xlarge",
    m5a_12xlarge = "m5a.12xlarge",
    m5a_16xlarge = "m5a.16xlarge",
    m5a_24xlarge = "m5a.24xlarge",
    m6g_medium = "m6g.medium",
    m6g_large = "m6g.large",
    m6g_xlarge = "m6g.xlarge",
    m6g_2xlarge = "m6g.2xlarge",
    m6g_4xlarge = "m6g.4xlarge",
    m6g_8xlarge = "m6g.8xlarge",
    m6g_12xlarge = "m6g.12xlarge",
    m6g_16xlarge = "m6g.16xlarge",
}

M.InstanceDefinition = {
    type = "structure",
    id = "InstanceDefinition",
    members = {
        InstanceType = {
            type = "string",
            traits = {
                required = true,
            },
        },
        WeightedCapacity = {
            type = "string",
        },
    },
}

M.LaunchTemplateSpecification = {
    type = "structure",
    id = "LaunchTemplateSpecification",
    members = {
        LaunchTemplateId = {
            type = "string",
        },
        LaunchTemplateName = {
            type = "string",
        },
        Version = {
            type = "string",
        },
    },
}

M.CreateGameServerGroupInput = {
    type = "structure",
    id = "CreateGameServerGroupInput",
    members = {
        GameServerGroupName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        RoleArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        MinSize = {
            type = "integer",
            traits = {
                required = true,
            },
        },
        MaxSize = {
            type = "integer",
            traits = {
                required = true,
            },
        },
        LaunchTemplate = setmetatable({ traits = {
            required = true,
        } }, { __index = M.LaunchTemplateSpecification }),
        InstanceDefinitions = {
            type = "list",
            member = M.InstanceDefinition,
            traits = {
                required = true,
            },
        },
        AutoScalingPolicy = M.GameServerGroupAutoScalingPolicy,
        BalancingStrategy = {
            type = "string",
        },
        GameServerProtectionPolicy = {
            type = "string",
        },
        VpcSubnets = {
            type = "list",
            member = { type = "string" },
        },
        Tags = {
            type = "list",
            member = M.Tag,
        },
    },
}

M.GameServerGroupStatus = {
    NEW = "NEW",
    ACTIVATING = "ACTIVATING",
    ACTIVE = "ACTIVE",
    DELETE_SCHEDULED = "DELETE_SCHEDULED",
    DELETING = "DELETING",
    DELETED = "DELETED",
    ERROR = "ERROR",
}

M.GameServerGroupAction = {
    REPLACE_INSTANCE_TYPES = "REPLACE_INSTANCE_TYPES",
}

M.GameServerGroup = {
    type = "structure",
    id = "GameServerGroup",
    members = {
        GameServerGroupName = {
            type = "string",
        },
        GameServerGroupArn = {
            type = "string",
        },
        RoleArn = {
            type = "string",
        },
        InstanceDefinitions = {
            type = "list",
            member = M.InstanceDefinition,
        },
        BalancingStrategy = {
            type = "string",
        },
        GameServerProtectionPolicy = {
            type = "string",
        },
        AutoScalingGroupArn = {
            type = "string",
        },
        Status = {
            type = "string",
        },
        StatusReason = {
            type = "string",
        },
        SuspendedActions = {
            type = "list",
            member = { type = "string" },
        },
        CreationTime = {
            type = "timestamp",
        },
        LastUpdatedTime = {
            type = "timestamp",
        },
    },
}

M.CreateGameServerGroupOutput = {
    type = "structure",
    id = "CreateGameServerGroupOutput",
    members = {
        GameServerGroup = M.GameServerGroup,
    },
}

M.GameProperty = {
    type = "structure",
    id = "GameProperty",
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

M.CreateGameSessionInput = {
    type = "structure",
    id = "CreateGameSessionInput",
    members = {
        FleetId = {
            type = "string",
        },
        AliasId = {
            type = "string",
        },
        MaximumPlayerSessionCount = {
            type = "integer",
            traits = {
                required = true,
            },
        },
        Name = {
            type = "string",
        },
        GameProperties = {
            type = "list",
            member = M.GameProperty,
        },
        CreatorId = {
            type = "string",
        },
        GameSessionId = {
            type = "string",
        },
        IdempotencyToken = {
            type = "string",
        },
        GameSessionData = {
            type = "string",
        },
        Location = {
            type = "string",
        },
    },
}

M.PlayerSessionCreationPolicy = {
    ACCEPT_ALL = "ACCEPT_ALL",
    DENY_ALL = "DENY_ALL",
}

M.GameSessionStatus = {
    ACTIVE = "ACTIVE",
    ACTIVATING = "ACTIVATING",
    TERMINATED = "TERMINATED",
    TERMINATING = "TERMINATING",
    ERROR = "ERROR",
}

M.GameSessionStatusReason = {
    INTERRUPTED = "INTERRUPTED",
    TRIGGERED_ON_PROCESS_TERMINATE = "TRIGGERED_ON_PROCESS_TERMINATE",
    FORCE_TERMINATED = "FORCE_TERMINATED",
}

M.GameSession = {
    type = "structure",
    id = "GameSession",
    members = {
        GameSessionId = {
            type = "string",
        },
        Name = {
            type = "string",
        },
        FleetId = {
            type = "string",
        },
        FleetArn = {
            type = "string",
        },
        CreationTime = {
            type = "timestamp",
        },
        TerminationTime = {
            type = "timestamp",
        },
        CurrentPlayerSessionCount = {
            type = "integer",
        },
        MaximumPlayerSessionCount = {
            type = "integer",
        },
        Status = {
            type = "string",
        },
        StatusReason = {
            type = "string",
        },
        GameProperties = {
            type = "list",
            member = M.GameProperty,
        },
        IpAddress = {
            type = "string",
        },
        DnsName = {
            type = "string",
        },
        Port = {
            type = "integer",
        },
        PlayerSessionCreationPolicy = {
            type = "string",
        },
        CreatorId = {
            type = "string",
        },
        GameSessionData = {
            type = "string",
        },
        MatchmakerData = {
            type = "string",
        },
        Location = {
            type = "string",
        },
        ComputeName = {
            type = "string",
        },
        PlayerGatewayStatus = {
            type = "string",
        },
    },
}

M.CreateGameSessionOutput = {
    type = "structure",
    id = "CreateGameSessionOutput",
    members = {
        GameSession = M.GameSession,
    },
}

M.FleetCapacityExceededException = {
    type = "structure",
    id = "FleetCapacityExceededException",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.IdempotentParameterMismatchException = {
    type = "structure",
    id = "IdempotentParameterMismatchException",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.TerminalRoutingStrategyException = {
    type = "structure",
    id = "TerminalRoutingStrategyException",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.GameSessionQueueDestination = {
    type = "structure",
    id = "GameSessionQueueDestination",
    members = {
        DestinationArn = {
            type = "string",
        },
    },
}

M.FilterConfiguration = {
    type = "structure",
    id = "FilterConfiguration",
    members = {
        AllowedLocations = {
            type = "list",
            member = { type = "string" },
        },
    },
}

M.PlayerLatencyPolicy = {
    type = "structure",
    id = "PlayerLatencyPolicy",
    members = {
        MaximumIndividualPlayerLatencyMilliseconds = {
            type = "integer",
        },
        PolicyDurationSeconds = {
            type = "integer",
        },
    },
}

M.PriorityType = {
    LATENCY = "LATENCY",
    COST = "COST",
    DESTINATION = "DESTINATION",
    LOCATION = "LOCATION",
}

M.PriorityConfiguration = {
    type = "structure",
    id = "PriorityConfiguration",
    members = {
        PriorityOrder = {
            type = "list",
            member = { type = "string" },
        },
        LocationOrder = {
            type = "list",
            member = { type = "string" },
        },
    },
}

M.CreateGameSessionQueueInput = {
    type = "structure",
    id = "CreateGameSessionQueueInput",
    members = {
        Name = {
            type = "string",
            traits = {
                required = true,
            },
        },
        TimeoutInSeconds = {
            type = "integer",
        },
        PlayerLatencyPolicies = {
            type = "list",
            member = M.PlayerLatencyPolicy,
        },
        Destinations = {
            type = "list",
            member = M.GameSessionQueueDestination,
        },
        FilterConfiguration = M.FilterConfiguration,
        PriorityConfiguration = M.PriorityConfiguration,
        CustomEventData = {
            type = "string",
        },
        NotificationTarget = {
            type = "string",
        },
        Tags = {
            type = "list",
            member = M.Tag,
        },
    },
}

M.GameSessionQueue = {
    type = "structure",
    id = "GameSessionQueue",
    members = {
        Name = {
            type = "string",
        },
        GameSessionQueueArn = {
            type = "string",
        },
        TimeoutInSeconds = {
            type = "integer",
        },
        PlayerLatencyPolicies = {
            type = "list",
            member = M.PlayerLatencyPolicy,
        },
        Destinations = {
            type = "list",
            member = M.GameSessionQueueDestination,
        },
        FilterConfiguration = M.FilterConfiguration,
        PriorityConfiguration = M.PriorityConfiguration,
        CustomEventData = {
            type = "string",
        },
        NotificationTarget = {
            type = "string",
        },
    },
}

M.CreateGameSessionQueueOutput = {
    type = "structure",
    id = "CreateGameSessionQueueOutput",
    members = {
        GameSessionQueue = M.GameSessionQueue,
    },
}

M.CreateLocationInput = {
    type = "structure",
    id = "CreateLocationInput",
    members = {
        LocationName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Tags = {
            type = "list",
            member = M.Tag,
        },
    },
}

M.UDPEndpoint = {
    type = "structure",
    id = "UDPEndpoint",
    members = {
        Domain = {
            type = "string",
        },
        Port = {
            type = "integer",
        },
    },
}

M.PingBeacon = {
    type = "structure",
    id = "PingBeacon",
    members = {
        UDPEndpoint = M.UDPEndpoint,
    },
}

M.LocationModel = {
    type = "structure",
    id = "LocationModel",
    members = {
        LocationName = {
            type = "string",
        },
        LocationArn = {
            type = "string",
        },
        PingBeacon = M.PingBeacon,
    },
}

M.CreateLocationOutput = {
    type = "structure",
    id = "CreateLocationOutput",
    members = {
        Location = M.LocationModel,
    },
}

M.FlexMatchMode = {
    STANDALONE = "STANDALONE",
    WITH_QUEUE = "WITH_QUEUE",
}

M.CreateMatchmakingConfigurationInput = {
    type = "structure",
    id = "CreateMatchmakingConfigurationInput",
    members = {
        Name = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Description = {
            type = "string",
        },
        GameSessionQueueArns = {
            type = "list",
            member = { type = "string" },
        },
        RequestTimeoutSeconds = {
            type = "integer",
            traits = {
                required = true,
            },
        },
        AcceptanceTimeoutSeconds = {
            type = "integer",
        },
        AcceptanceRequired = {
            type = "boolean",
            traits = {
                required = true,
            },
        },
        RuleSetName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        NotificationTarget = {
            type = "string",
        },
        AdditionalPlayerCount = {
            type = "integer",
        },
        CustomEventData = {
            type = "string",
        },
        GameProperties = {
            type = "list",
            member = M.GameProperty,
        },
        GameSessionData = {
            type = "string",
        },
        BackfillMode = {
            type = "string",
        },
        FlexMatchMode = {
            type = "string",
        },
        Tags = {
            type = "list",
            member = M.Tag,
        },
    },
}

M.MatchmakingConfiguration = {
    type = "structure",
    id = "MatchmakingConfiguration",
    members = {
        Name = {
            type = "string",
        },
        ConfigurationArn = {
            type = "string",
        },
        Description = {
            type = "string",
        },
        GameSessionQueueArns = {
            type = "list",
            member = { type = "string" },
        },
        RequestTimeoutSeconds = {
            type = "integer",
        },
        AcceptanceTimeoutSeconds = {
            type = "integer",
        },
        AcceptanceRequired = {
            type = "boolean",
        },
        RuleSetName = {
            type = "string",
        },
        RuleSetArn = {
            type = "string",
        },
        NotificationTarget = {
            type = "string",
        },
        AdditionalPlayerCount = {
            type = "integer",
        },
        CustomEventData = {
            type = "string",
        },
        CreationTime = {
            type = "timestamp",
        },
        GameProperties = {
            type = "list",
            member = M.GameProperty,
        },
        GameSessionData = {
            type = "string",
        },
        BackfillMode = {
            type = "string",
        },
        FlexMatchMode = {
            type = "string",
        },
    },
}

M.CreateMatchmakingConfigurationOutput = {
    type = "structure",
    id = "CreateMatchmakingConfigurationOutput",
    members = {
        Configuration = M.MatchmakingConfiguration,
    },
}

M.CreateMatchmakingRuleSetInput = {
    type = "structure",
    id = "CreateMatchmakingRuleSetInput",
    members = {
        Name = {
            type = "string",
            traits = {
                required = true,
            },
        },
        RuleSetBody = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Tags = {
            type = "list",
            member = M.Tag,
        },
    },
}

M.MatchmakingRuleSet = {
    type = "structure",
    id = "MatchmakingRuleSet",
    members = {
        RuleSetName = {
            type = "string",
        },
        RuleSetArn = {
            type = "string",
        },
        RuleSetBody = {
            type = "string",
            traits = {
                required = true,
            },
        },
        CreationTime = {
            type = "timestamp",
        },
    },
}

M.CreateMatchmakingRuleSetOutput = {
    type = "structure",
    id = "CreateMatchmakingRuleSetOutput",
    members = {
        RuleSet = setmetatable({ traits = {
            required = true,
        } }, { __index = M.MatchmakingRuleSet }),
    },
}

M.CreatePlayerSessionInput = {
    type = "structure",
    id = "CreatePlayerSessionInput",
    members = {
        GameSessionId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        PlayerId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        PlayerData = {
            type = "string",
        },
    },
}

M.PlayerSessionStatus = {
    RESERVED = "RESERVED",
    ACTIVE = "ACTIVE",
    COMPLETED = "COMPLETED",
    TIMEDOUT = "TIMEDOUT",
}

M.PlayerSession = {
    type = "structure",
    id = "PlayerSession",
    members = {
        PlayerSessionId = {
            type = "string",
        },
        PlayerId = {
            type = "string",
        },
        GameSessionId = {
            type = "string",
        },
        FleetId = {
            type = "string",
        },
        FleetArn = {
            type = "string",
        },
        CreationTime = {
            type = "timestamp",
        },
        TerminationTime = {
            type = "timestamp",
        },
        Status = {
            type = "string",
        },
        IpAddress = {
            type = "string",
        },
        DnsName = {
            type = "string",
        },
        Port = {
            type = "integer",
        },
        PlayerData = {
            type = "string",
        },
    },
}

M.CreatePlayerSessionOutput = {
    type = "structure",
    id = "CreatePlayerSessionOutput",
    members = {
        PlayerSession = M.PlayerSession,
    },
}

M.GameSessionFullException = {
    type = "structure",
    id = "GameSessionFullException",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.InvalidGameSessionStatusException = {
    type = "structure",
    id = "InvalidGameSessionStatusException",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.CreatePlayerSessionsInput = {
    type = "structure",
    id = "CreatePlayerSessionsInput",
    members = {
        GameSessionId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        PlayerIds = {
            type = "list",
            member = { type = "string" },
            traits = {
                required = true,
            },
        },
        PlayerDataMap = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
    },
}

M.CreatePlayerSessionsOutput = {
    type = "structure",
    id = "CreatePlayerSessionsOutput",
    members = {
        PlayerSessions = {
            type = "list",
            member = M.PlayerSession,
        },
    },
}

M.CreateScriptInput = {
    type = "structure",
    id = "CreateScriptInput",
    members = {
        Name = {
            type = "string",
        },
        Version = {
            type = "string",
        },
        StorageLocation = M.S3Location,
        ZipFile = {
            type = "blob",
        },
        Tags = {
            type = "list",
            member = M.Tag,
        },
        NodeJsVersion = {
            type = "string",
        },
    },
}

M.Script = {
    type = "structure",
    id = "Script",
    members = {
        ScriptId = {
            type = "string",
        },
        ScriptArn = {
            type = "string",
        },
        Name = {
            type = "string",
        },
        Version = {
            type = "string",
        },
        SizeOnDisk = {
            type = "long",
        },
        CreationTime = {
            type = "timestamp",
        },
        StorageLocation = M.S3Location,
        NodeJsVersion = {
            type = "string",
        },
    },
}

M.CreateScriptOutput = {
    type = "structure",
    id = "CreateScriptOutput",
    members = {
        Script = M.Script,
    },
}

M.CreateVpcPeeringAuthorizationInput = {
    type = "structure",
    id = "CreateVpcPeeringAuthorizationInput",
    members = {
        GameLiftAwsAccountId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        PeerVpcId = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.VpcPeeringAuthorization = {
    type = "structure",
    id = "VpcPeeringAuthorization",
    members = {
        GameLiftAwsAccountId = {
            type = "string",
        },
        PeerVpcAwsAccountId = {
            type = "string",
        },
        PeerVpcId = {
            type = "string",
        },
        CreationTime = {
            type = "timestamp",
        },
        ExpirationTime = {
            type = "timestamp",
        },
    },
}

M.CreateVpcPeeringAuthorizationOutput = {
    type = "structure",
    id = "CreateVpcPeeringAuthorizationOutput",
    members = {
        VpcPeeringAuthorization = M.VpcPeeringAuthorization,
    },
}

M.CreateVpcPeeringConnectionInput = {
    type = "structure",
    id = "CreateVpcPeeringConnectionInput",
    members = {
        FleetId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        PeerVpcAwsAccountId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        PeerVpcId = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.CreateVpcPeeringConnectionOutput = {
    type = "structure",
    id = "CreateVpcPeeringConnectionOutput",
}

M.DeleteAliasInput = {
    type = "structure",
    id = "DeleteAliasInput",
    members = {
        AliasId = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.DeleteAliasOutput = {
    type = "structure",
    id = "DeleteAliasOutput",
}

M.DeleteBuildInput = {
    type = "structure",
    id = "DeleteBuildInput",
    members = {
        BuildId = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.DeleteBuildOutput = {
    type = "structure",
    id = "DeleteBuildOutput",
}

M.DeleteContainerFleetInput = {
    type = "structure",
    id = "DeleteContainerFleetInput",
    members = {
        FleetId = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.DeleteContainerFleetOutput = {
    type = "structure",
    id = "DeleteContainerFleetOutput",
}

M.DeleteContainerGroupDefinitionInput = {
    type = "structure",
    id = "DeleteContainerGroupDefinitionInput",
    members = {
        Name = {
            type = "string",
            traits = {
                required = true,
            },
        },
        VersionNumber = {
            type = "integer",
        },
        VersionCountToRetain = {
            type = "integer",
        },
    },
}

M.DeleteContainerGroupDefinitionOutput = {
    type = "structure",
    id = "DeleteContainerGroupDefinitionOutput",
}

M.DeleteFleetInput = {
    type = "structure",
    id = "DeleteFleetInput",
    members = {
        FleetId = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.DeleteFleetOutput = {
    type = "structure",
    id = "DeleteFleetOutput",
}

M.DeleteFleetLocationsInput = {
    type = "structure",
    id = "DeleteFleetLocationsInput",
    members = {
        FleetId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Locations = {
            type = "list",
            member = { type = "string" },
            traits = {
                required = true,
            },
        },
    },
}

M.DeleteFleetLocationsOutput = {
    type = "structure",
    id = "DeleteFleetLocationsOutput",
    members = {
        FleetId = {
            type = "string",
        },
        FleetArn = {
            type = "string",
        },
        LocationStates = {
            type = "list",
            member = M.LocationState,
        },
    },
}

M.GameServerGroupDeleteOption = {
    SAFE_DELETE = "SAFE_DELETE",
    FORCE_DELETE = "FORCE_DELETE",
    RETAIN = "RETAIN",
}

M.DeleteGameServerGroupInput = {
    type = "structure",
    id = "DeleteGameServerGroupInput",
    members = {
        GameServerGroupName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        DeleteOption = {
            type = "string",
        },
    },
}

M.DeleteGameServerGroupOutput = {
    type = "structure",
    id = "DeleteGameServerGroupOutput",
    members = {
        GameServerGroup = M.GameServerGroup,
    },
}

M.DeleteGameSessionQueueInput = {
    type = "structure",
    id = "DeleteGameSessionQueueInput",
    members = {
        Name = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.DeleteGameSessionQueueOutput = {
    type = "structure",
    id = "DeleteGameSessionQueueOutput",
}

M.DeleteLocationInput = {
    type = "structure",
    id = "DeleteLocationInput",
    members = {
        LocationName = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.DeleteLocationOutput = {
    type = "structure",
    id = "DeleteLocationOutput",
}

M.DeleteMatchmakingConfigurationInput = {
    type = "structure",
    id = "DeleteMatchmakingConfigurationInput",
    members = {
        Name = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.DeleteMatchmakingConfigurationOutput = {
    type = "structure",
    id = "DeleteMatchmakingConfigurationOutput",
}

M.DeleteMatchmakingRuleSetInput = {
    type = "structure",
    id = "DeleteMatchmakingRuleSetInput",
    members = {
        Name = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.DeleteMatchmakingRuleSetOutput = {
    type = "structure",
    id = "DeleteMatchmakingRuleSetOutput",
}

M.DeleteScalingPolicyInput = {
    type = "structure",
    id = "DeleteScalingPolicyInput",
    members = {
        Name = {
            type = "string",
            traits = {
                required = true,
            },
        },
        FleetId = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.DeleteScalingPolicyOutput = {
    type = "structure",
    id = "DeleteScalingPolicyOutput",
}

M.DeleteScriptInput = {
    type = "structure",
    id = "DeleteScriptInput",
    members = {
        ScriptId = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.DeleteScriptOutput = {
    type = "structure",
    id = "DeleteScriptOutput",
}

M.DeleteVpcPeeringAuthorizationInput = {
    type = "structure",
    id = "DeleteVpcPeeringAuthorizationInput",
    members = {
        GameLiftAwsAccountId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        PeerVpcId = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.DeleteVpcPeeringAuthorizationOutput = {
    type = "structure",
    id = "DeleteVpcPeeringAuthorizationOutput",
}

M.DeleteVpcPeeringConnectionInput = {
    type = "structure",
    id = "DeleteVpcPeeringConnectionInput",
    members = {
        FleetId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        VpcPeeringConnectionId = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.DeleteVpcPeeringConnectionOutput = {
    type = "structure",
    id = "DeleteVpcPeeringConnectionOutput",
}

M.DeploymentImpairmentStrategy = {
    MAINTAIN = "MAINTAIN",
    ROLLBACK = "ROLLBACK",
}

M.DeploymentProtectionStrategy = {
    WITH_PROTECTION = "WITH_PROTECTION",
    IGNORE_PROTECTION = "IGNORE_PROTECTION",
}

M.DeploymentConfiguration = {
    type = "structure",
    id = "DeploymentConfiguration",
    members = {
        ProtectionStrategy = {
            type = "string",
        },
        MinimumHealthyPercentage = {
            type = "integer",
        },
        ImpairmentStrategy = {
            type = "string",
        },
    },
}

M.DeploymentStatus = {
    IN_PROGRESS = "IN_PROGRESS",
    IMPAIRED = "IMPAIRED",
    COMPLETE = "COMPLETE",
    ROLLBACK_IN_PROGRESS = "ROLLBACK_IN_PROGRESS",
    ROLLBACK_COMPLETE = "ROLLBACK_COMPLETE",
    CANCELLED = "CANCELLED",
    PENDING = "PENDING",
}

M.DeregisterComputeInput = {
    type = "structure",
    id = "DeregisterComputeInput",
    members = {
        FleetId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        ComputeName = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.DeregisterComputeOutput = {
    type = "structure",
    id = "DeregisterComputeOutput",
}

M.DeregisterGameServerInput = {
    type = "structure",
    id = "DeregisterGameServerInput",
    members = {
        GameServerGroupName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        GameServerId = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.DeregisterGameServerOutput = {
    type = "structure",
    id = "DeregisterGameServerOutput",
}

M.DescribeAliasInput = {
    type = "structure",
    id = "DescribeAliasInput",
    members = {
        AliasId = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.DescribeAliasOutput = {
    type = "structure",
    id = "DescribeAliasOutput",
    members = {
        Alias = M.Alias,
    },
}

M.DescribeBuildInput = {
    type = "structure",
    id = "DescribeBuildInput",
    members = {
        BuildId = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.DescribeBuildOutput = {
    type = "structure",
    id = "DescribeBuildOutput",
    members = {
        Build = M.Build,
    },
}

M.DescribeComputeInput = {
    type = "structure",
    id = "DescribeComputeInput",
    members = {
        FleetId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        ComputeName = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.DescribeComputeOutput = {
    type = "structure",
    id = "DescribeComputeOutput",
    members = {
        Compute = M.Compute,
    },
}

M.DescribeContainerFleetInput = {
    type = "structure",
    id = "DescribeContainerFleetInput",
    members = {
        FleetId = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.DescribeContainerFleetOutput = {
    type = "structure",
    id = "DescribeContainerFleetOutput",
    members = {
        ContainerFleet = M.ContainerFleet,
    },
}

M.DescribeContainerGroupDefinitionInput = {
    type = "structure",
    id = "DescribeContainerGroupDefinitionInput",
    members = {
        Name = {
            type = "string",
            traits = {
                required = true,
            },
        },
        VersionNumber = {
            type = "integer",
        },
    },
}

M.DescribeContainerGroupDefinitionOutput = {
    type = "structure",
    id = "DescribeContainerGroupDefinitionOutput",
    members = {
        ContainerGroupDefinition = M.ContainerGroupDefinition,
    },
}

M.DescribeContainerGroupPortMappingsInput = {
    type = "structure",
    id = "DescribeContainerGroupPortMappingsInput",
    members = {
        FleetId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        ContainerGroupType = {
            type = "string",
            traits = {
                required = true,
            },
        },
        ComputeName = {
            type = "string",
        },
        InstanceId = {
            type = "string",
        },
        ContainerName = {
            type = "string",
        },
    },
}

M.DescribeContainerGroupPortMappingsOutput = {
    type = "structure",
    id = "DescribeContainerGroupPortMappingsOutput",
    members = {
        FleetId = {
            type = "string",
        },
        Location = {
            type = "string",
        },
        ContainerGroupDefinitionArn = {
            type = "string",
        },
        ContainerGroupType = {
            type = "string",
        },
        ComputeName = {
            type = "string",
        },
        InstanceId = {
            type = "string",
        },
        ContainerGroupPortMappings = {
            type = "list",
            member = M.ContainerGroupPortMapping,
        },
    },
}

M.DescribeEC2InstanceLimitsInput = {
    type = "structure",
    id = "DescribeEC2InstanceLimitsInput",
    members = {
        EC2InstanceType = {
            type = "string",
        },
        Location = {
            type = "string",
        },
    },
}

M.EC2InstanceLimit = {
    type = "structure",
    id = "EC2InstanceLimit",
    members = {
        EC2InstanceType = {
            type = "string",
        },
        CurrentInstances = {
            type = "integer",
        },
        InstanceLimit = {
            type = "integer",
        },
        Location = {
            type = "string",
        },
    },
}

M.DescribeEC2InstanceLimitsOutput = {
    type = "structure",
    id = "DescribeEC2InstanceLimitsOutput",
    members = {
        EC2InstanceLimits = {
            type = "list",
            member = M.EC2InstanceLimit,
        },
    },
}

M.DescribeFleetAttributesInput = {
    type = "structure",
    id = "DescribeFleetAttributesInput",
    members = {
        FleetIds = {
            type = "list",
            member = { type = "string" },
        },
        Limit = {
            type = "integer",
        },
        NextToken = {
            type = "string",
        },
    },
}

M.DescribeFleetAttributesOutput = {
    type = "structure",
    id = "DescribeFleetAttributesOutput",
    members = {
        FleetAttributes = {
            type = "list",
            member = M.FleetAttributes,
        },
        NextToken = {
            type = "string",
        },
    },
}

M.DescribeFleetCapacityInput = {
    type = "structure",
    id = "DescribeFleetCapacityInput",
    members = {
        FleetIds = {
            type = "list",
            member = { type = "string" },
        },
        Limit = {
            type = "integer",
        },
        NextToken = {
            type = "string",
        },
    },
}

M.GameServerContainerGroupCounts = {
    type = "structure",
    id = "GameServerContainerGroupCounts",
    members = {
        PENDING = {
            type = "integer",
        },
        ACTIVE = {
            type = "integer",
        },
        IDLE = {
            type = "integer",
        },
        TERMINATING = {
            type = "integer",
        },
    },
}

M.EC2InstanceCounts = {
    type = "structure",
    id = "EC2InstanceCounts",
    members = {
        DESIRED = {
            type = "integer",
        },
        MINIMUM = {
            type = "integer",
        },
        MAXIMUM = {
            type = "integer",
        },
        PENDING = {
            type = "integer",
        },
        ACTIVE = {
            type = "integer",
        },
        IDLE = {
            type = "integer",
        },
        TERMINATING = {
            type = "integer",
        },
    },
}

M.ZeroCapacityStrategy = {
    MANUAL = "MANUAL",
    SCALE_TO_AND_FROM_ZERO = "SCALE_TO_AND_FROM_ZERO",
}

M.ManagedCapacityConfiguration = {
    type = "structure",
    id = "ManagedCapacityConfiguration",
    members = {
        ZeroCapacityStrategy = {
            type = "string",
        },
        ScaleInAfterInactivityMinutes = {
            type = "integer",
        },
    },
}

M.FleetCapacity = {
    type = "structure",
    id = "FleetCapacity",
    members = {
        FleetId = {
            type = "string",
        },
        FleetArn = {
            type = "string",
        },
        InstanceType = {
            type = "string",
        },
        InstanceCounts = M.EC2InstanceCounts,
        Location = {
            type = "string",
        },
        GameServerContainerGroupCounts = M.GameServerContainerGroupCounts,
        ManagedCapacityConfiguration = M.ManagedCapacityConfiguration,
    },
}

M.DescribeFleetCapacityOutput = {
    type = "structure",
    id = "DescribeFleetCapacityOutput",
    members = {
        FleetCapacity = {
            type = "list",
            member = M.FleetCapacity,
        },
        NextToken = {
            type = "string",
        },
    },
}

M.DescribeFleetDeploymentInput = {
    type = "structure",
    id = "DescribeFleetDeploymentInput",
    members = {
        FleetId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        DeploymentId = {
            type = "string",
        },
    },
}

M.FleetDeployment = {
    type = "structure",
    id = "FleetDeployment",
    members = {
        DeploymentId = {
            type = "string",
        },
        FleetId = {
            type = "string",
        },
        GameServerBinaryArn = {
            type = "string",
        },
        RollbackGameServerBinaryArn = {
            type = "string",
        },
        PerInstanceBinaryArn = {
            type = "string",
        },
        RollbackPerInstanceBinaryArn = {
            type = "string",
        },
        DeploymentStatus = {
            type = "string",
        },
        DeploymentConfiguration = M.DeploymentConfiguration,
        CreationTime = {
            type = "timestamp",
        },
    },
}

M.LocationalDeployment = {
    type = "structure",
    id = "LocationalDeployment",
    members = {
        DeploymentStatus = {
            type = "string",
        },
    },
}

M.DescribeFleetDeploymentOutput = {
    type = "structure",
    id = "DescribeFleetDeploymentOutput",
    members = {
        FleetDeployment = M.FleetDeployment,
        LocationalDeployments = {
            type = "map",
            key = { type = "string" },
            value = M.LocationalDeployment,
        },
    },
}

M.DescribeFleetEventsInput = {
    type = "structure",
    id = "DescribeFleetEventsInput",
    members = {
        FleetId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        StartTime = {
            type = "timestamp",
        },
        EndTime = {
            type = "timestamp",
        },
        Limit = {
            type = "integer",
        },
        NextToken = {
            type = "string",
        },
    },
}

M.EventCode = {
    GENERIC_EVENT = "GENERIC_EVENT",
    FLEET_CREATED = "FLEET_CREATED",
    FLEET_DELETED = "FLEET_DELETED",
    FLEET_SCALING_EVENT = "FLEET_SCALING_EVENT",
    FLEET_STATE_DOWNLOADING = "FLEET_STATE_DOWNLOADING",
    FLEET_STATE_VALIDATING = "FLEET_STATE_VALIDATING",
    FLEET_STATE_BUILDING = "FLEET_STATE_BUILDING",
    FLEET_STATE_ACTIVATING = "FLEET_STATE_ACTIVATING",
    FLEET_STATE_ACTIVE = "FLEET_STATE_ACTIVE",
    FLEET_STATE_ERROR = "FLEET_STATE_ERROR",
    FLEET_STATE_PENDING = "FLEET_STATE_PENDING",
    FLEET_STATE_CREATING = "FLEET_STATE_CREATING",
    FLEET_STATE_CREATED = "FLEET_STATE_CREATED",
    FLEET_STATE_UPDATING = "FLEET_STATE_UPDATING",
    FLEET_INITIALIZATION_FAILED = "FLEET_INITIALIZATION_FAILED",
    FLEET_BINARY_DOWNLOAD_FAILED = "FLEET_BINARY_DOWNLOAD_FAILED",
    FLEET_VALIDATION_LAUNCH_PATH_NOT_FOUND = "FLEET_VALIDATION_LAUNCH_PATH_NOT_FOUND",
    FLEET_VALIDATION_EXECUTABLE_RUNTIME_FAILURE = "FLEET_VALIDATION_EXECUTABLE_RUNTIME_FAILURE",
    FLEET_VALIDATION_TIMED_OUT = "FLEET_VALIDATION_TIMED_OUT",
    FLEET_ACTIVATION_FAILED = "FLEET_ACTIVATION_FAILED",
    FLEET_ACTIVATION_FAILED_NO_INSTANCES = "FLEET_ACTIVATION_FAILED_NO_INSTANCES",
    FLEET_NEW_GAME_SESSION_PROTECTION_POLICY_UPDATED = "FLEET_NEW_GAME_SESSION_PROTECTION_POLICY_UPDATED",
    SERVER_PROCESS_INVALID_PATH = "SERVER_PROCESS_INVALID_PATH",
    SERVER_PROCESS_SDK_INITIALIZATION_TIMEOUT = "SERVER_PROCESS_SDK_INITIALIZATION_TIMEOUT",
    SERVER_PROCESS_PROCESS_READY_TIMEOUT = "SERVER_PROCESS_PROCESS_READY_TIMEOUT",
    SERVER_PROCESS_CRASHED = "SERVER_PROCESS_CRASHED",
    SERVER_PROCESS_TERMINATED_UNHEALTHY = "SERVER_PROCESS_TERMINATED_UNHEALTHY",
    SERVER_PROCESS_FORCE_TERMINATED = "SERVER_PROCESS_FORCE_TERMINATED",
    SERVER_PROCESS_PROCESS_EXIT_TIMEOUT = "SERVER_PROCESS_PROCESS_EXIT_TIMEOUT",
    SERVER_PROCESS_SDK_INITIALIZATION_FAILED = "SERVER_PROCESS_SDK_INITIALIZATION_FAILED",
    SERVER_PROCESS_MISCONFIGURED_CONTAINER_PORT = "SERVER_PROCESS_MISCONFIGURED_CONTAINER_PORT",
    GAME_SESSION_ACTIVATION_TIMEOUT = "GAME_SESSION_ACTIVATION_TIMEOUT",
    FLEET_CREATION_EXTRACTING_BUILD = "FLEET_CREATION_EXTRACTING_BUILD",
    FLEET_CREATION_RUNNING_INSTALLER = "FLEET_CREATION_RUNNING_INSTALLER",
    FLEET_CREATION_VALIDATING_RUNTIME_CONFIG = "FLEET_CREATION_VALIDATING_RUNTIME_CONFIG",
    FLEET_VPC_PEERING_SUCCEEDED = "FLEET_VPC_PEERING_SUCCEEDED",
    FLEET_VPC_PEERING_FAILED = "FLEET_VPC_PEERING_FAILED",
    FLEET_VPC_PEERING_DELETED = "FLEET_VPC_PEERING_DELETED",
    INSTANCE_INTERRUPTED = "INSTANCE_INTERRUPTED",
    INSTANCE_RECYCLED = "INSTANCE_RECYCLED",
    INSTANCE_REPLACED_UNHEALTHY = "INSTANCE_REPLACED_UNHEALTHY",
    FLEET_CREATION_COMPLETED_INSTALLER = "FLEET_CREATION_COMPLETED_INSTALLER",
    FLEET_CREATION_FAILED_INSTALLER = "FLEET_CREATION_FAILED_INSTALLER",
    COMPUTE_LOG_UPLOAD_FAILED = "COMPUTE_LOG_UPLOAD_FAILED",
    GAME_SERVER_CONTAINER_GROUP_CRASHED = "GAME_SERVER_CONTAINER_GROUP_CRASHED",
    PER_INSTANCE_CONTAINER_GROUP_CRASHED = "PER_INSTANCE_CONTAINER_GROUP_CRASHED",
    GAME_SERVER_CONTAINER_GROUP_REPLACED_UNHEALTHY = "GAME_SERVER_CONTAINER_GROUP_REPLACED_UNHEALTHY",
    LOCATION_STATE_PENDING = "LOCATION_STATE_PENDING",
    LOCATION_STATE_CREATING = "LOCATION_STATE_CREATING",
    LOCATION_STATE_CREATED = "LOCATION_STATE_CREATED",
    LOCATION_STATE_ACTIVATING = "LOCATION_STATE_ACTIVATING",
    LOCATION_STATE_ACTIVE = "LOCATION_STATE_ACTIVE",
    LOCATION_STATE_UPDATING = "LOCATION_STATE_UPDATING",
    LOCATION_STATE_ERROR = "LOCATION_STATE_ERROR",
    LOCATION_STATE_DELETING = "LOCATION_STATE_DELETING",
    LOCATION_STATE_DELETED = "LOCATION_STATE_DELETED",
}

M.Event = {
    type = "structure",
    id = "Event",
    members = {
        EventId = {
            type = "string",
        },
        ResourceId = {
            type = "string",
        },
        EventCode = {
            type = "string",
        },
        Message = {
            type = "string",
        },
        EventTime = {
            type = "timestamp",
        },
        PreSignedLogUrl = {
            type = "string",
        },
        Count = {
            type = "long",
        },
    },
}

M.DescribeFleetEventsOutput = {
    type = "structure",
    id = "DescribeFleetEventsOutput",
    members = {
        Events = {
            type = "list",
            member = M.Event,
        },
        NextToken = {
            type = "string",
        },
    },
}

M.DescribeFleetLocationAttributesInput = {
    type = "structure",
    id = "DescribeFleetLocationAttributesInput",
    members = {
        FleetId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Locations = {
            type = "list",
            member = { type = "string" },
        },
        Limit = {
            type = "integer",
        },
        NextToken = {
            type = "string",
        },
    },
}

M.LocationUpdateStatus = {
    PENDING_UPDATE = "PENDING_UPDATE",
}

M.LocationAttributes = {
    type = "structure",
    id = "LocationAttributes",
    members = {
        LocationState = M.LocationState,
        StoppedActions = {
            type = "list",
            member = { type = "string" },
        },
        UpdateStatus = {
            type = "string",
        },
    },
}

M.DescribeFleetLocationAttributesOutput = {
    type = "structure",
    id = "DescribeFleetLocationAttributesOutput",
    members = {
        FleetId = {
            type = "string",
        },
        FleetArn = {
            type = "string",
        },
        LocationAttributes = {
            type = "list",
            member = M.LocationAttributes,
        },
        NextToken = {
            type = "string",
        },
    },
}

M.DescribeFleetLocationCapacityInput = {
    type = "structure",
    id = "DescribeFleetLocationCapacityInput",
    members = {
        FleetId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Location = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.DescribeFleetLocationCapacityOutput = {
    type = "structure",
    id = "DescribeFleetLocationCapacityOutput",
    members = {
        FleetCapacity = M.FleetCapacity,
    },
}

M.DescribeFleetLocationUtilizationInput = {
    type = "structure",
    id = "DescribeFleetLocationUtilizationInput",
    members = {
        FleetId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Location = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.FleetUtilization = {
    type = "structure",
    id = "FleetUtilization",
    members = {
        FleetId = {
            type = "string",
        },
        FleetArn = {
            type = "string",
        },
        ActiveServerProcessCount = {
            type = "integer",
        },
        ActiveGameSessionCount = {
            type = "integer",
        },
        CurrentPlayerSessionCount = {
            type = "integer",
        },
        MaximumPlayerSessionCount = {
            type = "integer",
        },
        Location = {
            type = "string",
        },
    },
}

M.DescribeFleetLocationUtilizationOutput = {
    type = "structure",
    id = "DescribeFleetLocationUtilizationOutput",
    members = {
        FleetUtilization = M.FleetUtilization,
    },
}

M.DescribeFleetPortSettingsInput = {
    type = "structure",
    id = "DescribeFleetPortSettingsInput",
    members = {
        FleetId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Location = {
            type = "string",
        },
    },
}

M.DescribeFleetPortSettingsOutput = {
    type = "structure",
    id = "DescribeFleetPortSettingsOutput",
    members = {
        FleetId = {
            type = "string",
        },
        FleetArn = {
            type = "string",
        },
        InboundPermissions = {
            type = "list",
            member = M.IpPermission,
        },
        UpdateStatus = {
            type = "string",
        },
        Location = {
            type = "string",
        },
    },
}

M.DescribeFleetUtilizationInput = {
    type = "structure",
    id = "DescribeFleetUtilizationInput",
    members = {
        FleetIds = {
            type = "list",
            member = { type = "string" },
        },
        Limit = {
            type = "integer",
        },
        NextToken = {
            type = "string",
        },
    },
}

M.DescribeFleetUtilizationOutput = {
    type = "structure",
    id = "DescribeFleetUtilizationOutput",
    members = {
        FleetUtilization = {
            type = "list",
            member = M.FleetUtilization,
        },
        NextToken = {
            type = "string",
        },
    },
}

M.DescribeGameServerInput = {
    type = "structure",
    id = "DescribeGameServerInput",
    members = {
        GameServerGroupName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        GameServerId = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.DescribeGameServerOutput = {
    type = "structure",
    id = "DescribeGameServerOutput",
    members = {
        GameServer = M.GameServer,
    },
}

M.DescribeGameServerGroupInput = {
    type = "structure",
    id = "DescribeGameServerGroupInput",
    members = {
        GameServerGroupName = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.DescribeGameServerGroupOutput = {
    type = "structure",
    id = "DescribeGameServerGroupOutput",
    members = {
        GameServerGroup = M.GameServerGroup,
    },
}

M.DescribeGameServerInstancesInput = {
    type = "structure",
    id = "DescribeGameServerInstancesInput",
    members = {
        GameServerGroupName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        InstanceIds = {
            type = "list",
            member = { type = "string" },
        },
        Limit = {
            type = "integer",
        },
        NextToken = {
            type = "string",
        },
    },
}

M.GameServerInstanceStatus = {
    ACTIVE = "ACTIVE",
    DRAINING = "DRAINING",
    SPOT_TERMINATING = "SPOT_TERMINATING",
}

M.GameServerInstance = {
    type = "structure",
    id = "GameServerInstance",
    members = {
        GameServerGroupName = {
            type = "string",
        },
        GameServerGroupArn = {
            type = "string",
        },
        InstanceId = {
            type = "string",
        },
        InstanceStatus = {
            type = "string",
        },
    },
}

M.DescribeGameServerInstancesOutput = {
    type = "structure",
    id = "DescribeGameServerInstancesOutput",
    members = {
        GameServerInstances = {
            type = "list",
            member = M.GameServerInstance,
        },
        NextToken = {
            type = "string",
        },
    },
}

M.DescribeGameSessionDetailsInput = {
    type = "structure",
    id = "DescribeGameSessionDetailsInput",
    members = {
        FleetId = {
            type = "string",
        },
        GameSessionId = {
            type = "string",
        },
        AliasId = {
            type = "string",
        },
        Location = {
            type = "string",
        },
        StatusFilter = {
            type = "string",
        },
        Limit = {
            type = "integer",
        },
        NextToken = {
            type = "string",
        },
    },
}

M.GameSessionDetail = {
    type = "structure",
    id = "GameSessionDetail",
    members = {
        GameSession = M.GameSession,
        ProtectionPolicy = {
            type = "string",
        },
    },
}

M.DescribeGameSessionDetailsOutput = {
    type = "structure",
    id = "DescribeGameSessionDetailsOutput",
    members = {
        GameSessionDetails = {
            type = "list",
            member = M.GameSessionDetail,
        },
        NextToken = {
            type = "string",
        },
    },
}

M.DescribeGameSessionPlacementInput = {
    type = "structure",
    id = "DescribeGameSessionPlacementInput",
    members = {
        PlacementId = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.PlacedPlayerSession = {
    type = "structure",
    id = "PlacedPlayerSession",
    members = {
        PlayerId = {
            type = "string",
        },
        PlayerSessionId = {
            type = "string",
        },
    },
}

M.PlayerLatency = {
    type = "structure",
    id = "PlayerLatency",
    members = {
        PlayerId = {
            type = "string",
        },
        RegionIdentifier = {
            type = "string",
        },
        LatencyInMilliseconds = {
            type = "float",
        },
    },
}

M.PlacementFallbackStrategy = {
    DEFAULT_AFTER_SINGLE_PASS = "DEFAULT_AFTER_SINGLE_PASS",
    NONE = "NONE",
}

M.PriorityConfigurationOverride = {
    type = "structure",
    id = "PriorityConfigurationOverride",
    members = {
        PlacementFallbackStrategy = {
            type = "string",
        },
        LocationOrder = {
            type = "list",
            member = { type = "string" },
            traits = {
                required = true,
            },
        },
    },
}

M.GameSessionPlacementState = {
    PENDING = "PENDING",
    FULFILLED = "FULFILLED",
    CANCELLED = "CANCELLED",
    TIMED_OUT = "TIMED_OUT",
    FAILED = "FAILED",
}

M.GameSessionPlacement = {
    type = "structure",
    id = "GameSessionPlacement",
    members = {
        PlacementId = {
            type = "string",
        },
        GameSessionQueueName = {
            type = "string",
        },
        Status = {
            type = "string",
        },
        GameProperties = {
            type = "list",
            member = M.GameProperty,
        },
        MaximumPlayerSessionCount = {
            type = "integer",
        },
        GameSessionName = {
            type = "string",
        },
        GameSessionId = {
            type = "string",
        },
        GameSessionArn = {
            type = "string",
        },
        GameSessionRegion = {
            type = "string",
        },
        PlayerLatencies = {
            type = "list",
            member = M.PlayerLatency,
        },
        StartTime = {
            type = "timestamp",
        },
        EndTime = {
            type = "timestamp",
        },
        IpAddress = {
            type = "string",
        },
        DnsName = {
            type = "string",
        },
        Port = {
            type = "integer",
        },
        PlacedPlayerSessions = {
            type = "list",
            member = M.PlacedPlayerSession,
        },
        GameSessionData = {
            type = "string",
        },
        MatchmakerData = {
            type = "string",
        },
        PriorityConfigurationOverride = M.PriorityConfigurationOverride,
        PlayerGatewayStatus = {
            type = "string",
        },
    },
}

M.DescribeGameSessionPlacementOutput = {
    type = "structure",
    id = "DescribeGameSessionPlacementOutput",
    members = {
        GameSessionPlacement = M.GameSessionPlacement,
    },
}

M.DescribeGameSessionQueuesInput = {
    type = "structure",
    id = "DescribeGameSessionQueuesInput",
    members = {
        Names = {
            type = "list",
            member = { type = "string" },
        },
        Limit = {
            type = "integer",
        },
        NextToken = {
            type = "string",
        },
    },
}

M.DescribeGameSessionQueuesOutput = {
    type = "structure",
    id = "DescribeGameSessionQueuesOutput",
    members = {
        GameSessionQueues = {
            type = "list",
            member = M.GameSessionQueue,
        },
        NextToken = {
            type = "string",
        },
    },
}

M.DescribeGameSessionsInput = {
    type = "structure",
    id = "DescribeGameSessionsInput",
    members = {
        FleetId = {
            type = "string",
        },
        GameSessionId = {
            type = "string",
        },
        AliasId = {
            type = "string",
        },
        Location = {
            type = "string",
        },
        StatusFilter = {
            type = "string",
        },
        Limit = {
            type = "integer",
        },
        NextToken = {
            type = "string",
        },
    },
}

M.DescribeGameSessionsOutput = {
    type = "structure",
    id = "DescribeGameSessionsOutput",
    members = {
        GameSessions = {
            type = "list",
            member = M.GameSession,
        },
        NextToken = {
            type = "string",
        },
    },
}

M.DescribeInstancesInput = {
    type = "structure",
    id = "DescribeInstancesInput",
    members = {
        FleetId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        InstanceId = {
            type = "string",
        },
        Limit = {
            type = "integer",
        },
        NextToken = {
            type = "string",
        },
        Location = {
            type = "string",
        },
    },
}

M.InstanceStatus = {
    PENDING = "PENDING",
    ACTIVE = "ACTIVE",
    TERMINATING = "TERMINATING",
}

M.Instance = {
    type = "structure",
    id = "Instance",
    members = {
        FleetId = {
            type = "string",
        },
        FleetArn = {
            type = "string",
        },
        InstanceId = {
            type = "string",
        },
        IpAddress = {
            type = "string",
        },
        DnsName = {
            type = "string",
        },
        OperatingSystem = {
            type = "string",
        },
        Type = {
            type = "string",
        },
        Status = {
            type = "string",
        },
        CreationTime = {
            type = "timestamp",
        },
        Location = {
            type = "string",
        },
    },
}

M.DescribeInstancesOutput = {
    type = "structure",
    id = "DescribeInstancesOutput",
    members = {
        Instances = {
            type = "list",
            member = M.Instance,
        },
        NextToken = {
            type = "string",
        },
    },
}

M.DescribeMatchmakingInput = {
    type = "structure",
    id = "DescribeMatchmakingInput",
    members = {
        TicketIds = {
            type = "list",
            member = { type = "string" },
            traits = {
                required = true,
            },
        },
    },
}

M.MatchedPlayerSession = {
    type = "structure",
    id = "MatchedPlayerSession",
    members = {
        PlayerId = {
            type = "string",
        },
        PlayerSessionId = {
            type = "string",
        },
    },
}

M.GameSessionConnectionInfo = {
    type = "structure",
    id = "GameSessionConnectionInfo",
    members = {
        GameSessionArn = {
            type = "string",
        },
        IpAddress = {
            type = "string",
        },
        DnsName = {
            type = "string",
        },
        Port = {
            type = "integer",
        },
        MatchedPlayerSessions = {
            type = "list",
            member = M.MatchedPlayerSession,
        },
        PlayerGatewayStatus = {
            type = "string",
        },
    },
}

M.Player = {
    type = "structure",
    id = "Player",
    members = {
        PlayerId = {
            type = "string",
        },
        PlayerAttributes = {
            type = "map",
            key = { type = "string" },
            value = M.AttributeValue,
        },
        Team = {
            type = "string",
        },
        LatencyInMs = {
            type = "map",
            key = { type = "string" },
            value = { type = "integer" },
        },
    },
}

M.MatchmakingConfigurationStatus = {
    CANCELLED = "CANCELLED",
    COMPLETED = "COMPLETED",
    FAILED = "FAILED",
    PLACING = "PLACING",
    QUEUED = "QUEUED",
    REQUIRES_ACCEPTANCE = "REQUIRES_ACCEPTANCE",
    SEARCHING = "SEARCHING",
    TIMED_OUT = "TIMED_OUT",
}

M.MatchmakingTicket = {
    type = "structure",
    id = "MatchmakingTicket",
    members = {
        TicketId = {
            type = "string",
        },
        ConfigurationName = {
            type = "string",
        },
        ConfigurationArn = {
            type = "string",
        },
        Status = {
            type = "string",
        },
        StatusReason = {
            type = "string",
        },
        StatusMessage = {
            type = "string",
        },
        StartTime = {
            type = "timestamp",
        },
        EndTime = {
            type = "timestamp",
        },
        Players = {
            type = "list",
            member = M.Player,
        },
        GameSessionConnectionInfo = M.GameSessionConnectionInfo,
        EstimatedWaitTime = {
            type = "integer",
        },
    },
}

M.DescribeMatchmakingOutput = {
    type = "structure",
    id = "DescribeMatchmakingOutput",
    members = {
        TicketList = {
            type = "list",
            member = M.MatchmakingTicket,
        },
    },
}

M.DescribeMatchmakingConfigurationsInput = {
    type = "structure",
    id = "DescribeMatchmakingConfigurationsInput",
    members = {
        Names = {
            type = "list",
            member = { type = "string" },
        },
        RuleSetName = {
            type = "string",
        },
        Limit = {
            type = "integer",
        },
        NextToken = {
            type = "string",
        },
    },
}

M.DescribeMatchmakingConfigurationsOutput = {
    type = "structure",
    id = "DescribeMatchmakingConfigurationsOutput",
    members = {
        Configurations = {
            type = "list",
            member = M.MatchmakingConfiguration,
        },
        NextToken = {
            type = "string",
        },
    },
}

M.DescribeMatchmakingRuleSetsInput = {
    type = "structure",
    id = "DescribeMatchmakingRuleSetsInput",
    members = {
        Names = {
            type = "list",
            member = { type = "string" },
        },
        Limit = {
            type = "integer",
        },
        NextToken = {
            type = "string",
        },
    },
}

M.DescribeMatchmakingRuleSetsOutput = {
    type = "structure",
    id = "DescribeMatchmakingRuleSetsOutput",
    members = {
        RuleSets = {
            type = "list",
            member = M.MatchmakingRuleSet,
            traits = {
                required = true,
            },
        },
        NextToken = {
            type = "string",
        },
    },
}

M.DescribePlayerSessionsInput = {
    type = "structure",
    id = "DescribePlayerSessionsInput",
    members = {
        GameSessionId = {
            type = "string",
        },
        PlayerId = {
            type = "string",
        },
        PlayerSessionId = {
            type = "string",
        },
        PlayerSessionStatusFilter = {
            type = "string",
        },
        Limit = {
            type = "integer",
        },
        NextToken = {
            type = "string",
        },
    },
}

M.DescribePlayerSessionsOutput = {
    type = "structure",
    id = "DescribePlayerSessionsOutput",
    members = {
        PlayerSessions = {
            type = "list",
            member = M.PlayerSession,
        },
        NextToken = {
            type = "string",
        },
    },
}

M.DescribeRuntimeConfigurationInput = {
    type = "structure",
    id = "DescribeRuntimeConfigurationInput",
    members = {
        FleetId = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.DescribeRuntimeConfigurationOutput = {
    type = "structure",
    id = "DescribeRuntimeConfigurationOutput",
    members = {
        RuntimeConfiguration = M.RuntimeConfiguration,
    },
}

M.ScalingStatusType = {
    ACTIVE = "ACTIVE",
    UPDATE_REQUESTED = "UPDATE_REQUESTED",
    UPDATING = "UPDATING",
    DELETE_REQUESTED = "DELETE_REQUESTED",
    DELETING = "DELETING",
    DELETED = "DELETED",
    ERROR = "ERROR",
}

M.DescribeScalingPoliciesInput = {
    type = "structure",
    id = "DescribeScalingPoliciesInput",
    members = {
        FleetId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        StatusFilter = {
            type = "string",
        },
        Limit = {
            type = "integer",
        },
        NextToken = {
            type = "string",
        },
        Location = {
            type = "string",
        },
    },
}

M.MetricName = {
    ActivatingGameSessions = "ActivatingGameSessions",
    ActiveGameSessions = "ActiveGameSessions",
    ActiveInstances = "ActiveInstances",
    AvailableGameSessions = "AvailableGameSessions",
    AvailablePlayerSessions = "AvailablePlayerSessions",
    CurrentPlayerSessions = "CurrentPlayerSessions",
    IdleInstances = "IdleInstances",
    PercentAvailableGameSessions = "PercentAvailableGameSessions",
    PercentIdleInstances = "PercentIdleInstances",
    QueueDepth = "QueueDepth",
    WaitTime = "WaitTime",
    ConcurrentActivatableGameSessions = "ConcurrentActivatableGameSessions",
}

M.PolicyType = {
    RuleBased = "RuleBased",
    TargetBased = "TargetBased",
}

M.ScalingAdjustmentType = {
    ChangeInCapacity = "ChangeInCapacity",
    ExactCapacity = "ExactCapacity",
    PercentChangeInCapacity = "PercentChangeInCapacity",
}

M.TargetConfiguration = {
    type = "structure",
    id = "TargetConfiguration",
    members = {
        TargetValue = {
            type = "double",
            traits = {
                required = true,
            },
        },
    },
}

M.ScalingPolicy = {
    type = "structure",
    id = "ScalingPolicy",
    members = {
        FleetId = {
            type = "string",
        },
        FleetArn = {
            type = "string",
        },
        Name = {
            type = "string",
        },
        Status = {
            type = "string",
        },
        ScalingAdjustment = {
            type = "integer",
        },
        ScalingAdjustmentType = {
            type = "string",
        },
        ComparisonOperator = {
            type = "string",
        },
        Threshold = {
            type = "double",
        },
        EvaluationPeriods = {
            type = "integer",
        },
        MetricName = {
            type = "string",
        },
        PolicyType = {
            type = "string",
        },
        TargetConfiguration = M.TargetConfiguration,
        UpdateStatus = {
            type = "string",
        },
        Location = {
            type = "string",
        },
    },
}

M.DescribeScalingPoliciesOutput = {
    type = "structure",
    id = "DescribeScalingPoliciesOutput",
    members = {
        ScalingPolicies = {
            type = "list",
            member = M.ScalingPolicy,
        },
        NextToken = {
            type = "string",
        },
    },
}

M.DescribeScriptInput = {
    type = "structure",
    id = "DescribeScriptInput",
    members = {
        ScriptId = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.DescribeScriptOutput = {
    type = "structure",
    id = "DescribeScriptOutput",
    members = {
        Script = M.Script,
    },
}

M.DescribeVpcPeeringAuthorizationsInput = {
    type = "structure",
    id = "DescribeVpcPeeringAuthorizationsInput",
}

M.DescribeVpcPeeringAuthorizationsOutput = {
    type = "structure",
    id = "DescribeVpcPeeringAuthorizationsOutput",
    members = {
        VpcPeeringAuthorizations = {
            type = "list",
            member = M.VpcPeeringAuthorization,
        },
    },
}

M.DescribeVpcPeeringConnectionsInput = {
    type = "structure",
    id = "DescribeVpcPeeringConnectionsInput",
    members = {
        FleetId = {
            type = "string",
        },
    },
}

M.VpcPeeringConnectionStatus = {
    type = "structure",
    id = "VpcPeeringConnectionStatus",
    members = {
        Code = {
            type = "string",
        },
        Message = {
            type = "string",
        },
    },
}

M.VpcPeeringConnection = {
    type = "structure",
    id = "VpcPeeringConnection",
    members = {
        FleetId = {
            type = "string",
        },
        FleetArn = {
            type = "string",
        },
        IpV4CidrBlock = {
            type = "string",
        },
        VpcPeeringConnectionId = {
            type = "string",
        },
        Status = M.VpcPeeringConnectionStatus,
        PeerVpcId = {
            type = "string",
        },
        GameLiftVpcId = {
            type = "string",
        },
    },
}

M.DescribeVpcPeeringConnectionsOutput = {
    type = "structure",
    id = "DescribeVpcPeeringConnectionsOutput",
    members = {
        VpcPeeringConnections = {
            type = "list",
            member = M.VpcPeeringConnection,
        },
    },
}

M.DesiredPlayerSession = {
    type = "structure",
    id = "DesiredPlayerSession",
    members = {
        PlayerId = {
            type = "string",
        },
        PlayerData = {
            type = "string",
        },
    },
}

M.GetComputeAccessInput = {
    type = "structure",
    id = "GetComputeAccessInput",
    members = {
        FleetId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        ComputeName = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.GetComputeAccessOutput = {
    type = "structure",
    id = "GetComputeAccessOutput",
    members = {
        FleetId = {
            type = "string",
        },
        FleetArn = {
            type = "string",
        },
        ComputeName = {
            type = "string",
        },
        ComputeArn = {
            type = "string",
        },
        Credentials = M.AwsCredentials,
        Target = {
            type = "string",
        },
        ContainerIdentifiers = {
            type = "list",
            member = M.ContainerIdentifier,
        },
    },
}

M.GetComputeAuthTokenInput = {
    type = "structure",
    id = "GetComputeAuthTokenInput",
    members = {
        FleetId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        ComputeName = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.GetComputeAuthTokenOutput = {
    type = "structure",
    id = "GetComputeAuthTokenOutput",
    members = {
        FleetId = {
            type = "string",
        },
        FleetArn = {
            type = "string",
        },
        ComputeName = {
            type = "string",
        },
        ComputeArn = {
            type = "string",
        },
        AuthToken = {
            type = "string",
        },
        ExpirationTimestamp = {
            type = "timestamp",
        },
    },
}

M.GetGameSessionLogUrlInput = {
    type = "structure",
    id = "GetGameSessionLogUrlInput",
    members = {
        GameSessionId = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.GetGameSessionLogUrlOutput = {
    type = "structure",
    id = "GetGameSessionLogUrlOutput",
    members = {
        PreSignedUrl = {
            type = "string",
        },
    },
}

M.GetInstanceAccessInput = {
    type = "structure",
    id = "GetInstanceAccessInput",
    members = {
        FleetId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        InstanceId = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.InstanceCredentials = {
    type = "structure",
    id = "InstanceCredentials",
    members = {
        UserName = {
            type = "string",
        },
        Secret = {
            type = "string",
        },
    },
}

M.InstanceAccess = {
    type = "structure",
    id = "InstanceAccess",
    members = {
        FleetId = {
            type = "string",
        },
        InstanceId = {
            type = "string",
        },
        IpAddress = {
            type = "string",
        },
        OperatingSystem = {
            type = "string",
        },
        Credentials = M.InstanceCredentials,
    },
}

M.GetInstanceAccessOutput = {
    type = "structure",
    id = "GetInstanceAccessOutput",
    members = {
        InstanceAccess = M.InstanceAccess,
    },
}

M.GetPlayerConnectionDetailsInput = {
    type = "structure",
    id = "GetPlayerConnectionDetailsInput",
    members = {
        GameSessionId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        PlayerIds = {
            type = "list",
            member = { type = "string" },
            traits = {
                required = true,
            },
        },
    },
}

M.PlayerConnectionEndpoint = {
    type = "structure",
    id = "PlayerConnectionEndpoint",
    members = {
        IpAddress = {
            type = "string",
        },
        Port = {
            type = "integer",
        },
    },
}

M.PlayerConnectionDetail = {
    type = "structure",
    id = "PlayerConnectionDetail",
    members = {
        PlayerId = {
            type = "string",
        },
        Endpoints = {
            type = "list",
            member = M.PlayerConnectionEndpoint,
        },
        PlayerGatewayToken = {
            type = "string",
        },
        Expiration = {
            type = "timestamp",
        },
    },
}

M.GetPlayerConnectionDetailsOutput = {
    type = "structure",
    id = "GetPlayerConnectionDetailsOutput",
    members = {
        GameSessionId = {
            type = "string",
        },
        PlayerConnectionDetails = {
            type = "list",
            member = M.PlayerConnectionDetail,
        },
    },
}

M.ListAliasesInput = {
    type = "structure",
    id = "ListAliasesInput",
    members = {
        RoutingStrategyType = {
            type = "string",
        },
        Name = {
            type = "string",
        },
        Limit = {
            type = "integer",
        },
        NextToken = {
            type = "string",
        },
    },
}

M.ListAliasesOutput = {
    type = "structure",
    id = "ListAliasesOutput",
    members = {
        Aliases = {
            type = "list",
            member = M.Alias,
        },
        NextToken = {
            type = "string",
        },
    },
}

M.ListBuildsInput = {
    type = "structure",
    id = "ListBuildsInput",
    members = {
        Status = {
            type = "string",
        },
        Limit = {
            type = "integer",
        },
        NextToken = {
            type = "string",
        },
    },
}

M.ListBuildsOutput = {
    type = "structure",
    id = "ListBuildsOutput",
    members = {
        Builds = {
            type = "list",
            member = M.Build,
        },
        NextToken = {
            type = "string",
        },
    },
}

M.ListComputeInputStatus = {
    ACTIVE = "ACTIVE",
    IMPAIRED = "IMPAIRED",
}

M.ListComputeInput = {
    type = "structure",
    id = "ListComputeInput",
    members = {
        FleetId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Location = {
            type = "string",
        },
        ContainerGroupDefinitionName = {
            type = "string",
        },
        ComputeStatus = {
            type = "string",
        },
        Limit = {
            type = "integer",
        },
        NextToken = {
            type = "string",
        },
    },
}

M.ListComputeOutput = {
    type = "structure",
    id = "ListComputeOutput",
    members = {
        ComputeList = {
            type = "list",
            member = M.Compute,
        },
        NextToken = {
            type = "string",
        },
    },
}

M.ListContainerFleetsInput = {
    type = "structure",
    id = "ListContainerFleetsInput",
    members = {
        ContainerGroupDefinitionName = {
            type = "string",
        },
        Limit = {
            type = "integer",
        },
        NextToken = {
            type = "string",
        },
    },
}

M.ListContainerFleetsOutput = {
    type = "structure",
    id = "ListContainerFleetsOutput",
    members = {
        ContainerFleets = {
            type = "list",
            member = M.ContainerFleet,
        },
        NextToken = {
            type = "string",
        },
    },
}

M.ListContainerGroupDefinitionsInput = {
    type = "structure",
    id = "ListContainerGroupDefinitionsInput",
    members = {
        ContainerGroupType = {
            type = "string",
        },
        Limit = {
            type = "integer",
        },
        NextToken = {
            type = "string",
        },
    },
}

M.ListContainerGroupDefinitionsOutput = {
    type = "structure",
    id = "ListContainerGroupDefinitionsOutput",
    members = {
        ContainerGroupDefinitions = {
            type = "list",
            member = M.ContainerGroupDefinition,
        },
        NextToken = {
            type = "string",
        },
    },
}

M.ListContainerGroupDefinitionVersionsInput = {
    type = "structure",
    id = "ListContainerGroupDefinitionVersionsInput",
    members = {
        Name = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Limit = {
            type = "integer",
        },
        NextToken = {
            type = "string",
        },
    },
}

M.ListContainerGroupDefinitionVersionsOutput = {
    type = "structure",
    id = "ListContainerGroupDefinitionVersionsOutput",
    members = {
        ContainerGroupDefinitions = {
            type = "list",
            member = M.ContainerGroupDefinition,
        },
        NextToken = {
            type = "string",
        },
    },
}

M.ListFleetDeploymentsInput = {
    type = "structure",
    id = "ListFleetDeploymentsInput",
    members = {
        FleetId = {
            type = "string",
        },
        Limit = {
            type = "integer",
        },
        NextToken = {
            type = "string",
        },
    },
}

M.ListFleetDeploymentsOutput = {
    type = "structure",
    id = "ListFleetDeploymentsOutput",
    members = {
        FleetDeployments = {
            type = "list",
            member = M.FleetDeployment,
        },
        NextToken = {
            type = "string",
        },
    },
}

M.ListFleetsInput = {
    type = "structure",
    id = "ListFleetsInput",
    members = {
        BuildId = {
            type = "string",
        },
        ScriptId = {
            type = "string",
        },
        Limit = {
            type = "integer",
        },
        NextToken = {
            type = "string",
        },
    },
}

M.ListFleetsOutput = {
    type = "structure",
    id = "ListFleetsOutput",
    members = {
        FleetIds = {
            type = "list",
            member = { type = "string" },
        },
        NextToken = {
            type = "string",
        },
    },
}

M.ListGameServerGroupsInput = {
    type = "structure",
    id = "ListGameServerGroupsInput",
    members = {
        Limit = {
            type = "integer",
        },
        NextToken = {
            type = "string",
        },
    },
}

M.ListGameServerGroupsOutput = {
    type = "structure",
    id = "ListGameServerGroupsOutput",
    members = {
        GameServerGroups = {
            type = "list",
            member = M.GameServerGroup,
        },
        NextToken = {
            type = "string",
        },
    },
}

M.SortOrder = {
    ASCENDING = "ASCENDING",
    DESCENDING = "DESCENDING",
}

M.ListGameServersInput = {
    type = "structure",
    id = "ListGameServersInput",
    members = {
        GameServerGroupName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        SortOrder = {
            type = "string",
        },
        Limit = {
            type = "integer",
        },
        NextToken = {
            type = "string",
        },
    },
}

M.ListGameServersOutput = {
    type = "structure",
    id = "ListGameServersOutput",
    members = {
        GameServers = {
            type = "list",
            member = M.GameServer,
        },
        NextToken = {
            type = "string",
        },
    },
}

M.LocationFilter = {
    AWS = "AWS",
    CUSTOM = "CUSTOM",
}

M.ListLocationsInput = {
    type = "structure",
    id = "ListLocationsInput",
    members = {
        Filters = {
            type = "list",
            member = { type = "string" },
        },
        Limit = {
            type = "integer",
        },
        NextToken = {
            type = "string",
        },
    },
}

M.ListLocationsOutput = {
    type = "structure",
    id = "ListLocationsOutput",
    members = {
        Locations = {
            type = "list",
            member = M.LocationModel,
        },
        NextToken = {
            type = "string",
        },
    },
}

M.ListScriptsInput = {
    type = "structure",
    id = "ListScriptsInput",
    members = {
        Limit = {
            type = "integer",
        },
        NextToken = {
            type = "string",
        },
    },
}

M.ListScriptsOutput = {
    type = "structure",
    id = "ListScriptsOutput",
    members = {
        Scripts = {
            type = "list",
            member = M.Script,
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
        ResourceARN = {
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
        Tags = {
            type = "list",
            member = M.Tag,
        },
    },
}

M.PutScalingPolicyInput = {
    type = "structure",
    id = "PutScalingPolicyInput",
    members = {
        Name = {
            type = "string",
            traits = {
                required = true,
            },
        },
        FleetId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        ScalingAdjustment = {
            type = "integer",
        },
        ScalingAdjustmentType = {
            type = "string",
        },
        Threshold = {
            type = "double",
        },
        ComparisonOperator = {
            type = "string",
        },
        EvaluationPeriods = {
            type = "integer",
        },
        MetricName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        PolicyType = {
            type = "string",
        },
        TargetConfiguration = M.TargetConfiguration,
    },
}

M.PutScalingPolicyOutput = {
    type = "structure",
    id = "PutScalingPolicyOutput",
    members = {
        Name = {
            type = "string",
        },
    },
}

M.RegisterComputeInput = {
    type = "structure",
    id = "RegisterComputeInput",
    members = {
        FleetId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        ComputeName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        CertificatePath = {
            type = "string",
        },
        DnsName = {
            type = "string",
        },
        IpAddress = {
            type = "string",
        },
        Location = {
            type = "string",
        },
    },
}

M.RegisterComputeOutput = {
    type = "structure",
    id = "RegisterComputeOutput",
    members = {
        Compute = M.Compute,
    },
}

M.RegisterGameServerInput = {
    type = "structure",
    id = "RegisterGameServerInput",
    members = {
        GameServerGroupName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        GameServerId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        InstanceId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        ConnectionInfo = {
            type = "string",
        },
        GameServerData = {
            type = "string",
        },
    },
}

M.RegisterGameServerOutput = {
    type = "structure",
    id = "RegisterGameServerOutput",
    members = {
        GameServer = M.GameServer,
    },
}

M.RequestUploadCredentialsInput = {
    type = "structure",
    id = "RequestUploadCredentialsInput",
    members = {
        BuildId = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.RequestUploadCredentialsOutput = {
    type = "structure",
    id = "RequestUploadCredentialsOutput",
    members = {
        UploadCredentials = M.AwsCredentials,
        StorageLocation = M.S3Location,
    },
}

M.ResolveAliasInput = {
    type = "structure",
    id = "ResolveAliasInput",
    members = {
        AliasId = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.ResolveAliasOutput = {
    type = "structure",
    id = "ResolveAliasOutput",
    members = {
        FleetId = {
            type = "string",
        },
        FleetArn = {
            type = "string",
        },
    },
}

M.ResumeGameServerGroupInput = {
    type = "structure",
    id = "ResumeGameServerGroupInput",
    members = {
        GameServerGroupName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        ResumeActions = {
            type = "list",
            member = { type = "string" },
            traits = {
                required = true,
            },
        },
    },
}

M.ResumeGameServerGroupOutput = {
    type = "structure",
    id = "ResumeGameServerGroupOutput",
    members = {
        GameServerGroup = M.GameServerGroup,
    },
}

M.SearchGameSessionsInput = {
    type = "structure",
    id = "SearchGameSessionsInput",
    members = {
        FleetId = {
            type = "string",
        },
        AliasId = {
            type = "string",
        },
        Location = {
            type = "string",
        },
        FilterExpression = {
            type = "string",
        },
        SortExpression = {
            type = "string",
        },
        Limit = {
            type = "integer",
        },
        NextToken = {
            type = "string",
        },
    },
}

M.SearchGameSessionsOutput = {
    type = "structure",
    id = "SearchGameSessionsOutput",
    members = {
        GameSessions = {
            type = "list",
            member = M.GameSession,
        },
        NextToken = {
            type = "string",
        },
    },
}

M.StartFleetActionsInput = {
    type = "structure",
    id = "StartFleetActionsInput",
    members = {
        FleetId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Actions = {
            type = "list",
            member = { type = "string" },
            traits = {
                required = true,
            },
        },
        Location = {
            type = "string",
        },
    },
}

M.StartFleetActionsOutput = {
    type = "structure",
    id = "StartFleetActionsOutput",
    members = {
        FleetId = {
            type = "string",
        },
        FleetArn = {
            type = "string",
        },
    },
}

M.StartGameSessionPlacementInput = {
    type = "structure",
    id = "StartGameSessionPlacementInput",
    members = {
        PlacementId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        GameSessionQueueName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        GameProperties = {
            type = "list",
            member = M.GameProperty,
        },
        MaximumPlayerSessionCount = {
            type = "integer",
            traits = {
                required = true,
            },
        },
        GameSessionName = {
            type = "string",
        },
        PlayerLatencies = {
            type = "list",
            member = M.PlayerLatency,
        },
        DesiredPlayerSessions = {
            type = "list",
            member = M.DesiredPlayerSession,
        },
        GameSessionData = {
            type = "string",
        },
        PriorityConfigurationOverride = M.PriorityConfigurationOverride,
    },
}

M.StartGameSessionPlacementOutput = {
    type = "structure",
    id = "StartGameSessionPlacementOutput",
    members = {
        GameSessionPlacement = M.GameSessionPlacement,
    },
}

M.StartMatchBackfillInput = {
    type = "structure",
    id = "StartMatchBackfillInput",
    members = {
        TicketId = {
            type = "string",
        },
        ConfigurationName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        GameSessionArn = {
            type = "string",
        },
        Players = {
            type = "list",
            member = M.Player,
            traits = {
                required = true,
            },
        },
    },
}

M.StartMatchBackfillOutput = {
    type = "structure",
    id = "StartMatchBackfillOutput",
    members = {
        MatchmakingTicket = M.MatchmakingTicket,
    },
}

M.StartMatchmakingInput = {
    type = "structure",
    id = "StartMatchmakingInput",
    members = {
        TicketId = {
            type = "string",
        },
        ConfigurationName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Players = {
            type = "list",
            member = M.Player,
            traits = {
                required = true,
            },
        },
    },
}

M.StartMatchmakingOutput = {
    type = "structure",
    id = "StartMatchmakingOutput",
    members = {
        MatchmakingTicket = M.MatchmakingTicket,
    },
}

M.StopFleetActionsInput = {
    type = "structure",
    id = "StopFleetActionsInput",
    members = {
        FleetId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Actions = {
            type = "list",
            member = { type = "string" },
            traits = {
                required = true,
            },
        },
        Location = {
            type = "string",
        },
    },
}

M.StopFleetActionsOutput = {
    type = "structure",
    id = "StopFleetActionsOutput",
    members = {
        FleetId = {
            type = "string",
        },
        FleetArn = {
            type = "string",
        },
    },
}

M.StopGameSessionPlacementInput = {
    type = "structure",
    id = "StopGameSessionPlacementInput",
    members = {
        PlacementId = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.StopGameSessionPlacementOutput = {
    type = "structure",
    id = "StopGameSessionPlacementOutput",
    members = {
        GameSessionPlacement = M.GameSessionPlacement,
    },
}

M.StopMatchmakingInput = {
    type = "structure",
    id = "StopMatchmakingInput",
    members = {
        TicketId = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.StopMatchmakingOutput = {
    type = "structure",
    id = "StopMatchmakingOutput",
}

M.SuspendGameServerGroupInput = {
    type = "structure",
    id = "SuspendGameServerGroupInput",
    members = {
        GameServerGroupName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        SuspendActions = {
            type = "list",
            member = { type = "string" },
            traits = {
                required = true,
            },
        },
    },
}

M.SuspendGameServerGroupOutput = {
    type = "structure",
    id = "SuspendGameServerGroupOutput",
    members = {
        GameServerGroup = M.GameServerGroup,
    },
}

M.TagResourceInput = {
    type = "structure",
    id = "TagResourceInput",
    members = {
        ResourceARN = {
            type = "string",
            traits = {
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

M.TerminationMode = {
    TRIGGER_ON_PROCESS_TERMINATE = "TRIGGER_ON_PROCESS_TERMINATE",
    FORCE_TERMINATE = "FORCE_TERMINATE",
}

M.TerminateGameSessionInput = {
    type = "structure",
    id = "TerminateGameSessionInput",
    members = {
        GameSessionId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        TerminationMode = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.TerminateGameSessionOutput = {
    type = "structure",
    id = "TerminateGameSessionOutput",
    members = {
        GameSession = M.GameSession,
    },
}

M.UntagResourceInput = {
    type = "structure",
    id = "UntagResourceInput",
    members = {
        ResourceARN = {
            type = "string",
            traits = {
                required = true,
            },
        },
        TagKeys = {
            type = "list",
            member = { type = "string" },
            traits = {
                required = true,
            },
        },
    },
}

M.UntagResourceOutput = {
    type = "structure",
    id = "UntagResourceOutput",
}

M.UpdateAliasInput = {
    type = "structure",
    id = "UpdateAliasInput",
    members = {
        AliasId = {
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
        RoutingStrategy = M.RoutingStrategy,
    },
}

M.UpdateAliasOutput = {
    type = "structure",
    id = "UpdateAliasOutput",
    members = {
        Alias = M.Alias,
    },
}

M.UpdateBuildInput = {
    type = "structure",
    id = "UpdateBuildInput",
    members = {
        BuildId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Name = {
            type = "string",
        },
        Version = {
            type = "string",
        },
    },
}

M.UpdateBuildOutput = {
    type = "structure",
    id = "UpdateBuildOutput",
    members = {
        Build = M.Build,
    },
}

M.UpdateContainerFleetInput = {
    type = "structure",
    id = "UpdateContainerFleetInput",
    members = {
        FleetId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        GameServerContainerGroupDefinitionName = {
            type = "string",
        },
        PerInstanceContainerGroupDefinitionName = {
            type = "string",
        },
        GameServerContainerGroupsPerInstance = {
            type = "integer",
        },
        InstanceConnectionPortRange = M.ConnectionPortRange,
        InstanceInboundPermissionAuthorizations = {
            type = "list",
            member = M.IpPermission,
        },
        InstanceInboundPermissionRevocations = {
            type = "list",
            member = M.IpPermission,
        },
        DeploymentConfiguration = M.DeploymentConfiguration,
        Description = {
            type = "string",
        },
        MetricGroups = {
            type = "list",
            member = { type = "string" },
        },
        NewGameSessionProtectionPolicy = {
            type = "string",
        },
        GameSessionCreationLimitPolicy = M.GameSessionCreationLimitPolicy,
        LogConfiguration = M.LogConfiguration,
        RemoveAttributes = {
            type = "list",
            member = { type = "string" },
        },
    },
}

M.UpdateContainerFleetOutput = {
    type = "structure",
    id = "UpdateContainerFleetOutput",
    members = {
        ContainerFleet = M.ContainerFleet,
    },
}

M.UpdateContainerGroupDefinitionInput = {
    type = "structure",
    id = "UpdateContainerGroupDefinitionInput",
    members = {
        Name = {
            type = "string",
            traits = {
                required = true,
            },
        },
        GameServerContainerDefinition = M.GameServerContainerDefinitionInput,
        SupportContainerDefinitions = {
            type = "list",
            member = M.SupportContainerDefinitionInput,
        },
        TotalMemoryLimitMebibytes = {
            type = "integer",
        },
        TotalVcpuLimit = {
            type = "double",
        },
        VersionDescription = {
            type = "string",
        },
        SourceVersionNumber = {
            type = "integer",
        },
        OperatingSystem = {
            type = "string",
        },
    },
}

M.UpdateContainerGroupDefinitionOutput = {
    type = "structure",
    id = "UpdateContainerGroupDefinitionOutput",
    members = {
        ContainerGroupDefinition = M.ContainerGroupDefinition,
    },
}

M.UpdateFleetAttributesInput = {
    type = "structure",
    id = "UpdateFleetAttributesInput",
    members = {
        FleetId = {
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
        NewGameSessionProtectionPolicy = {
            type = "string",
        },
        ResourceCreationLimitPolicy = M.ResourceCreationLimitPolicy,
        MetricGroups = {
            type = "list",
            member = { type = "string" },
        },
        AnywhereConfiguration = M.AnywhereConfiguration,
    },
}

M.UpdateFleetAttributesOutput = {
    type = "structure",
    id = "UpdateFleetAttributesOutput",
    members = {
        FleetId = {
            type = "string",
        },
        FleetArn = {
            type = "string",
        },
    },
}

M.UpdateFleetCapacityInput = {
    type = "structure",
    id = "UpdateFleetCapacityInput",
    members = {
        FleetId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        DesiredInstances = {
            type = "integer",
        },
        MinSize = {
            type = "integer",
        },
        MaxSize = {
            type = "integer",
        },
        Location = {
            type = "string",
        },
        ManagedCapacityConfiguration = M.ManagedCapacityConfiguration,
    },
}

M.UpdateFleetCapacityOutput = {
    type = "structure",
    id = "UpdateFleetCapacityOutput",
    members = {
        FleetId = {
            type = "string",
        },
        FleetArn = {
            type = "string",
        },
        Location = {
            type = "string",
        },
        ManagedCapacityConfiguration = M.ManagedCapacityConfiguration,
    },
}

M.UpdateFleetPortSettingsInput = {
    type = "structure",
    id = "UpdateFleetPortSettingsInput",
    members = {
        FleetId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        InboundPermissionAuthorizations = {
            type = "list",
            member = M.IpPermission,
        },
        InboundPermissionRevocations = {
            type = "list",
            member = M.IpPermission,
        },
    },
}

M.UpdateFleetPortSettingsOutput = {
    type = "structure",
    id = "UpdateFleetPortSettingsOutput",
    members = {
        FleetId = {
            type = "string",
        },
        FleetArn = {
            type = "string",
        },
    },
}

M.GameServerHealthCheck = {
    HEALTHY = "HEALTHY",
}

M.UpdateGameServerInput = {
    type = "structure",
    id = "UpdateGameServerInput",
    members = {
        GameServerGroupName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        GameServerId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        GameServerData = {
            type = "string",
        },
        UtilizationStatus = {
            type = "string",
        },
        HealthCheck = {
            type = "string",
        },
    },
}

M.UpdateGameServerOutput = {
    type = "structure",
    id = "UpdateGameServerOutput",
    members = {
        GameServer = M.GameServer,
    },
}

M.UpdateGameServerGroupInput = {
    type = "structure",
    id = "UpdateGameServerGroupInput",
    members = {
        GameServerGroupName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        RoleArn = {
            type = "string",
        },
        InstanceDefinitions = {
            type = "list",
            member = M.InstanceDefinition,
        },
        GameServerProtectionPolicy = {
            type = "string",
        },
        BalancingStrategy = {
            type = "string",
        },
    },
}

M.UpdateGameServerGroupOutput = {
    type = "structure",
    id = "UpdateGameServerGroupOutput",
    members = {
        GameServerGroup = M.GameServerGroup,
    },
}

M.UpdateGameSessionInput = {
    type = "structure",
    id = "UpdateGameSessionInput",
    members = {
        GameSessionId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        MaximumPlayerSessionCount = {
            type = "integer",
        },
        Name = {
            type = "string",
        },
        PlayerSessionCreationPolicy = {
            type = "string",
        },
        ProtectionPolicy = {
            type = "string",
        },
        GameProperties = {
            type = "list",
            member = M.GameProperty,
        },
    },
}

M.UpdateGameSessionOutput = {
    type = "structure",
    id = "UpdateGameSessionOutput",
    members = {
        GameSession = M.GameSession,
    },
}

M.UpdateGameSessionQueueInput = {
    type = "structure",
    id = "UpdateGameSessionQueueInput",
    members = {
        Name = {
            type = "string",
            traits = {
                required = true,
            },
        },
        TimeoutInSeconds = {
            type = "integer",
        },
        PlayerLatencyPolicies = {
            type = "list",
            member = M.PlayerLatencyPolicy,
        },
        Destinations = {
            type = "list",
            member = M.GameSessionQueueDestination,
        },
        FilterConfiguration = M.FilterConfiguration,
        PriorityConfiguration = M.PriorityConfiguration,
        CustomEventData = {
            type = "string",
        },
        NotificationTarget = {
            type = "string",
        },
    },
}

M.UpdateGameSessionQueueOutput = {
    type = "structure",
    id = "UpdateGameSessionQueueOutput",
    members = {
        GameSessionQueue = M.GameSessionQueue,
    },
}

M.UpdateMatchmakingConfigurationInput = {
    type = "structure",
    id = "UpdateMatchmakingConfigurationInput",
    members = {
        Name = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Description = {
            type = "string",
        },
        GameSessionQueueArns = {
            type = "list",
            member = { type = "string" },
        },
        RequestTimeoutSeconds = {
            type = "integer",
        },
        AcceptanceTimeoutSeconds = {
            type = "integer",
        },
        AcceptanceRequired = {
            type = "boolean",
        },
        RuleSetName = {
            type = "string",
        },
        NotificationTarget = {
            type = "string",
        },
        AdditionalPlayerCount = {
            type = "integer",
        },
        CustomEventData = {
            type = "string",
        },
        GameProperties = {
            type = "list",
            member = M.GameProperty,
        },
        GameSessionData = {
            type = "string",
        },
        BackfillMode = {
            type = "string",
        },
        FlexMatchMode = {
            type = "string",
        },
    },
}

M.UpdateMatchmakingConfigurationOutput = {
    type = "structure",
    id = "UpdateMatchmakingConfigurationOutput",
    members = {
        Configuration = M.MatchmakingConfiguration,
    },
}

M.UpdateRuntimeConfigurationInput = {
    type = "structure",
    id = "UpdateRuntimeConfigurationInput",
    members = {
        FleetId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        RuntimeConfiguration = setmetatable({ traits = {
            required = true,
        } }, { __index = M.RuntimeConfiguration }),
    },
}

M.UpdateRuntimeConfigurationOutput = {
    type = "structure",
    id = "UpdateRuntimeConfigurationOutput",
    members = {
        RuntimeConfiguration = M.RuntimeConfiguration,
    },
}

M.UpdateScriptInput = {
    type = "structure",
    id = "UpdateScriptInput",
    members = {
        ScriptId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Name = {
            type = "string",
        },
        Version = {
            type = "string",
        },
        StorageLocation = M.S3Location,
        ZipFile = {
            type = "blob",
        },
    },
}

M.UpdateScriptOutput = {
    type = "structure",
    id = "UpdateScriptOutput",
    members = {
        Script = M.Script,
    },
}

M.ValidateMatchmakingRuleSetInput = {
    type = "structure",
    id = "ValidateMatchmakingRuleSetInput",
    members = {
        RuleSetBody = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.ValidateMatchmakingRuleSetOutput = {
    type = "structure",
    id = "ValidateMatchmakingRuleSetOutput",
    members = {
        Valid = {
            type = "boolean",
        },
    },
}

return M
