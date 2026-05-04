local M = {}

M.AcceleratedRecoveryStatus = {
    ENABLING = "ENABLING",
    ENABLE_FAILED = "ENABLE_FAILED",
    ENABLING_HOSTED_ZONE_LOCKED = "ENABLING_HOSTED_ZONE_LOCKED",
    ENABLED = "ENABLED",
    DISABLING = "DISABLING",
    DISABLE_FAILED = "DISABLE_FAILED",
    DISABLED = "DISABLED",
    DISABLING_HOSTED_ZONE_LOCKED = "DISABLING_HOSTED_ZONE_LOCKED",
}

M.AccountLimitType = {
    MAX_HEALTH_CHECKS_BY_OWNER = "MAX_HEALTH_CHECKS_BY_OWNER",
    MAX_HOSTED_ZONES_BY_OWNER = "MAX_HOSTED_ZONES_BY_OWNER",
    MAX_TRAFFIC_POLICY_INSTANCES_BY_OWNER = "MAX_TRAFFIC_POLICY_INSTANCES_BY_OWNER",
    MAX_REUSABLE_DELEGATION_SETS_BY_OWNER = "MAX_REUSABLE_DELEGATION_SETS_BY_OWNER",
    MAX_TRAFFIC_POLICIES_BY_OWNER = "MAX_TRAFFIC_POLICIES_BY_OWNER",
}

M.AccountLimit = {
    type = "structure",
    id = "AccountLimit",
    members = {
        Type = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Value = {
            type = "long",
            traits = {
                required = true,
            },
        },
    },
}

M.ActivateKeySigningKeyInput = {
    type = "structure",
    id = "ActivateKeySigningKeyInput",
    members = {
        HostedZoneId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        Name = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.ChangeStatus = {
    PENDING = "PENDING",
    INSYNC = "INSYNC",
}

M.ChangeInfo = {
    type = "structure",
    id = "ChangeInfo",
    members = {
        Id = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Status = {
            type = "string",
            traits = {
                required = true,
            },
        },
        SubmittedAt = {
            type = "timestamp",
            traits = {
                required = true,
            },
        },
        Comment = {
            type = "string",
        },
    },
}

M.ActivateKeySigningKeyOutput = {
    type = "structure",
    id = "ActivateKeySigningKeyOutput",
    members = {
        ChangeInfo = setmetatable({ traits = {
            required = true,
        } }, { __index = M.ChangeInfo }),
    },
}

M.ConcurrentModification = {
    type = "structure",
    id = "ConcurrentModification",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.InvalidInput = {
    type = "structure",
    id = "InvalidInput",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.InvalidKeySigningKeyStatus = {
    type = "structure",
    id = "InvalidKeySigningKeyStatus",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.InvalidKMSArn = {
    type = "structure",
    id = "InvalidKMSArn",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.InvalidSigningStatus = {
    type = "structure",
    id = "InvalidSigningStatus",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.NoSuchKeySigningKey = {
    type = "structure",
    id = "NoSuchKeySigningKey",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.CloudWatchRegion = {
    us_east_1 = "us-east-1",
    us_east_2 = "us-east-2",
    us_west_1 = "us-west-1",
    us_west_2 = "us-west-2",
    ca_central_1 = "ca-central-1",
    eu_central_1 = "eu-central-1",
    eu_central_2 = "eu-central-2",
    eu_west_1 = "eu-west-1",
    eu_west_2 = "eu-west-2",
    eu_west_3 = "eu-west-3",
    ap_east_1 = "ap-east-1",
    me_south_1 = "me-south-1",
    me_central_1 = "me-central-1",
    ap_south_1 = "ap-south-1",
    ap_south_2 = "ap-south-2",
    ap_southeast_1 = "ap-southeast-1",
    ap_southeast_2 = "ap-southeast-2",
    ap_southeast_3 = "ap-southeast-3",
    ap_northeast_1 = "ap-northeast-1",
    ap_northeast_2 = "ap-northeast-2",
    ap_northeast_3 = "ap-northeast-3",
    eu_north_1 = "eu-north-1",
    sa_east_1 = "sa-east-1",
    cn_northwest_1 = "cn-northwest-1",
    cn_north_1 = "cn-north-1",
    af_south_1 = "af-south-1",
    eu_south_1 = "eu-south-1",
    eu_south_2 = "eu-south-2",
    us_gov_west_1 = "us-gov-west-1",
    us_gov_east_1 = "us-gov-east-1",
    us_iso_east_1 = "us-iso-east-1",
    us_iso_west_1 = "us-iso-west-1",
    us_isob_east_1 = "us-isob-east-1",
    ap_southeast_4 = "ap-southeast-4",
    il_central_1 = "il-central-1",
    ca_west_1 = "ca-west-1",
    ap_southeast_5 = "ap-southeast-5",
    mx_central_1 = "mx-central-1",
    us_isof_south_1 = "us-isof-south-1",
    us_isof_east_1 = "us-isof-east-1",
    ap_southeast_7 = "ap-southeast-7",
    ap_east_2 = "ap-east-2",
    eu_isoe_west_1 = "eu-isoe-west-1",
    ap_southeast_6 = "ap-southeast-6",
    us_isob_west_1 = "us-isob-west-1",
    eusc_de_east_1 = "eusc-de-east-1",
}

M.AlarmIdentifier = {
    type = "structure",
    id = "AlarmIdentifier",
    members = {
        Region = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Name = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.AliasTarget = {
    type = "structure",
    id = "AliasTarget",
    members = {
        HostedZoneId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        DNSName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        EvaluateTargetHealth = {
            type = "boolean",
            traits = {
                default = false,
                required = true,
            },
        },
    },
}

M.VPCRegion = {
    us_east_1 = "us-east-1",
    us_east_2 = "us-east-2",
    us_west_1 = "us-west-1",
    us_west_2 = "us-west-2",
    eu_west_1 = "eu-west-1",
    eu_west_2 = "eu-west-2",
    eu_west_3 = "eu-west-3",
    eu_central_1 = "eu-central-1",
    eu_central_2 = "eu-central-2",
    ap_east_1 = "ap-east-1",
    me_south_1 = "me-south-1",
    us_gov_west_1 = "us-gov-west-1",
    us_gov_east_1 = "us-gov-east-1",
    us_iso_east_1 = "us-iso-east-1",
    us_iso_west_1 = "us-iso-west-1",
    us_isob_east_1 = "us-isob-east-1",
    me_central_1 = "me-central-1",
    ap_southeast_1 = "ap-southeast-1",
    ap_southeast_2 = "ap-southeast-2",
    ap_southeast_3 = "ap-southeast-3",
    ap_south_1 = "ap-south-1",
    ap_south_2 = "ap-south-2",
    ap_northeast_1 = "ap-northeast-1",
    ap_northeast_2 = "ap-northeast-2",
    ap_northeast_3 = "ap-northeast-3",
    eu_north_1 = "eu-north-1",
    sa_east_1 = "sa-east-1",
    ca_central_1 = "ca-central-1",
    cn_north_1 = "cn-north-1",
    cn_northwest_1 = "cn-northwest-1",
    af_south_1 = "af-south-1",
    eu_south_1 = "eu-south-1",
    eu_south_2 = "eu-south-2",
    ap_southeast_4 = "ap-southeast-4",
    il_central_1 = "il-central-1",
    ca_west_1 = "ca-west-1",
    ap_southeast_5 = "ap-southeast-5",
    mx_central_1 = "mx-central-1",
    us_isof_south_1 = "us-isof-south-1",
    us_isof_east_1 = "us-isof-east-1",
    ap_southeast_7 = "ap-southeast-7",
    ap_east_2 = "ap-east-2",
    eu_isoe_west_1 = "eu-isoe-west-1",
    ap_southeast_6 = "ap-southeast-6",
    us_isob_west_1 = "us-isob-west-1",
    eusc_de_east_1 = "eusc-de-east-1",
}

M.VPC = {
    type = "structure",
    id = "VPC",
    members = {
        VPCRegion = {
            type = "string",
        },
        VPCId = {
            type = "string",
        },
    },
}

M.AssociateVPCWithHostedZoneInput = {
    type = "structure",
    id = "AssociateVPCWithHostedZoneInput",
    members = {
        HostedZoneId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        VPC = setmetatable({ traits = {
            required = true,
        } }, { __index = M.VPC }),
        Comment = {
            type = "string",
        },
    },
}

M.AssociateVPCWithHostedZoneOutput = {
    type = "structure",
    id = "AssociateVPCWithHostedZoneOutput",
    members = {
        ChangeInfo = setmetatable({ traits = {
            required = true,
        } }, { __index = M.ChangeInfo }),
    },
}

M.ConflictingDomainExists = {
    type = "structure",
    id = "ConflictingDomainExists",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.InvalidVPCId = {
    type = "structure",
    id = "InvalidVPCId",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.LimitsExceeded = {
    type = "structure",
    id = "LimitsExceeded",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.NoSuchHostedZone = {
    type = "structure",
    id = "NoSuchHostedZone",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.NotAuthorizedException = {
    type = "structure",
    id = "NotAuthorizedException",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.PriorRequestNotComplete = {
    type = "structure",
    id = "PriorRequestNotComplete",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.PublicZoneVPCAssociation = {
    type = "structure",
    id = "PublicZoneVPCAssociation",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.CidrCollectionChangeAction = {
    PUT = "PUT",
    DELETE_IF_EXISTS = "DELETE_IF_EXISTS",
}

M.CidrCollectionChange = {
    type = "structure",
    id = "CidrCollectionChange",
    members = {
        LocationName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Action = {
            type = "string",
            traits = {
                required = true,
            },
        },
        CidrList = {
            type = "list",
            member = { type = "string" },
            traits = {
                required = true,
            },
        },
    },
}

M.ChangeCidrCollectionInput = {
    type = "structure",
    id = "ChangeCidrCollectionInput",
    members = {
        Id = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        CollectionVersion = {
            type = "long",
        },
        Changes = {
            type = "list",
            member = M.CidrCollectionChange,
            traits = {
                required = true,
            },
        },
    },
}

M.ChangeCidrCollectionOutput = {
    type = "structure",
    id = "ChangeCidrCollectionOutput",
    members = {
        Id = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.CidrBlockInUseException = {
    type = "structure",
    id = "CidrBlockInUseException",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.CidrCollectionVersionMismatchException = {
    type = "structure",
    id = "CidrCollectionVersionMismatchException",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.NoSuchCidrCollectionException = {
    type = "structure",
    id = "NoSuchCidrCollectionException",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.ChangeAction = {
    CREATE = "CREATE",
    DELETE = "DELETE",
    UPSERT = "UPSERT",
}

M.CidrRoutingConfig = {
    type = "structure",
    id = "CidrRoutingConfig",
    members = {
        CollectionId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        LocationName = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.ResourceRecordSetFailover = {
    PRIMARY = "PRIMARY",
    SECONDARY = "SECONDARY",
}

M.GeoLocation = {
    type = "structure",
    id = "GeoLocation",
    members = {
        ContinentCode = {
            type = "string",
        },
        CountryCode = {
            type = "string",
        },
        SubdivisionCode = {
            type = "string",
        },
    },
}

M.Coordinates = {
    type = "structure",
    id = "Coordinates",
    members = {
        Latitude = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Longitude = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.GeoProximityLocation = {
    type = "structure",
    id = "GeoProximityLocation",
    members = {
        AWSRegion = {
            type = "string",
        },
        LocalZoneGroup = {
            type = "string",
        },
        Coordinates = M.Coordinates,
        Bias = {
            type = "integer",
        },
    },
}

M.ResourceRecordSetRegion = {
    us_east_1 = "us-east-1",
    us_east_2 = "us-east-2",
    us_west_1 = "us-west-1",
    us_west_2 = "us-west-2",
    ca_central_1 = "ca-central-1",
    eu_west_1 = "eu-west-1",
    eu_west_2 = "eu-west-2",
    eu_west_3 = "eu-west-3",
    eu_central_1 = "eu-central-1",
    eu_central_2 = "eu-central-2",
    ap_southeast_1 = "ap-southeast-1",
    ap_southeast_2 = "ap-southeast-2",
    ap_southeast_3 = "ap-southeast-3",
    ap_northeast_1 = "ap-northeast-1",
    ap_northeast_2 = "ap-northeast-2",
    ap_northeast_3 = "ap-northeast-3",
    eu_north_1 = "eu-north-1",
    sa_east_1 = "sa-east-1",
    cn_north_1 = "cn-north-1",
    cn_northwest_1 = "cn-northwest-1",
    ap_east_1 = "ap-east-1",
    me_south_1 = "me-south-1",
    me_central_1 = "me-central-1",
    ap_south_1 = "ap-south-1",
    ap_south_2 = "ap-south-2",
    af_south_1 = "af-south-1",
    eu_south_1 = "eu-south-1",
    eu_south_2 = "eu-south-2",
    ap_southeast_4 = "ap-southeast-4",
    il_central_1 = "il-central-1",
    ca_west_1 = "ca-west-1",
    ap_southeast_5 = "ap-southeast-5",
    mx_central_1 = "mx-central-1",
    ap_southeast_7 = "ap-southeast-7",
    us_gov_east_1 = "us-gov-east-1",
    us_gov_west_1 = "us-gov-west-1",
    ap_east_2 = "ap-east-2",
    ap_southeast_6 = "ap-southeast-6",
    eusc_de_east_1 = "eusc-de-east-1",
}

M.ResourceRecord = {
    type = "structure",
    id = "ResourceRecord",
    members = {
        Value = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.RRType = {
    SOA = "SOA",
    A = "A",
    TXT = "TXT",
    NS = "NS",
    CNAME = "CNAME",
    MX = "MX",
    NAPTR = "NAPTR",
    PTR = "PTR",
    SRV = "SRV",
    SPF = "SPF",
    AAAA = "AAAA",
    CAA = "CAA",
    DS = "DS",
    TLSA = "TLSA",
    SSHFP = "SSHFP",
    SVCB = "SVCB",
    HTTPS = "HTTPS",
}

M.ResourceRecordSet = {
    type = "structure",
    id = "ResourceRecordSet",
    members = {
        Name = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Type = {
            type = "string",
            traits = {
                required = true,
            },
        },
        SetIdentifier = {
            type = "string",
        },
        Weight = {
            type = "long",
        },
        Region = {
            type = "string",
        },
        GeoLocation = M.GeoLocation,
        Failover = {
            type = "string",
        },
        MultiValueAnswer = {
            type = "boolean",
        },
        TTL = {
            type = "long",
        },
        ResourceRecords = {
            type = "list",
            member = M.ResourceRecord,
        },
        AliasTarget = M.AliasTarget,
        HealthCheckId = {
            type = "string",
        },
        TrafficPolicyInstanceId = {
            type = "string",
        },
        CidrRoutingConfig = M.CidrRoutingConfig,
        GeoProximityLocation = M.GeoProximityLocation,
    },
}

M.Change = {
    type = "structure",
    id = "Change",
    members = {
        Action = {
            type = "string",
            traits = {
                required = true,
            },
        },
        ResourceRecordSet = setmetatable({ traits = {
            required = true,
        } }, { __index = M.ResourceRecordSet }),
    },
}

M.ChangeBatch = {
    type = "structure",
    id = "ChangeBatch",
    members = {
        Comment = {
            type = "string",
        },
        Changes = {
            type = "list",
            member = M.Change,
            traits = {
                required = true,
            },
        },
    },
}

M.ChangeResourceRecordSetsInput = {
    type = "structure",
    id = "ChangeResourceRecordSetsInput",
    members = {
        HostedZoneId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        ChangeBatch = setmetatable({ traits = {
            required = true,
        } }, { __index = M.ChangeBatch }),
    },
}

M.ChangeResourceRecordSetsOutput = {
    type = "structure",
    id = "ChangeResourceRecordSetsOutput",
    members = {
        ChangeInfo = setmetatable({ traits = {
            required = true,
        } }, { __index = M.ChangeInfo }),
    },
}

M.InvalidChangeBatch = {
    type = "structure",
    id = "InvalidChangeBatch",
    error = "client",
    members = {
        messages = {
            type = "list",
            member = { type = "string" },
        },
        message = {
            type = "string",
        },
    },
}

M.NoSuchHealthCheck = {
    type = "structure",
    id = "NoSuchHealthCheck",
    error = "client",
    members = {
        message = {
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
        },
        Value = {
            type = "string",
        },
    },
}

M.TagResourceType = {
    healthcheck = "healthcheck",
    hostedzone = "hostedzone",
}

M.ChangeTagsForResourceInput = {
    type = "structure",
    id = "ChangeTagsForResourceInput",
    members = {
        ResourceType = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        ResourceId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        AddTags = {
            type = "list",
            member = M.Tag,
        },
        RemoveTagKeys = {
            type = "list",
            member = { type = "string" },
        },
    },
}

M.ChangeTagsForResourceOutput = {
    type = "structure",
    id = "ChangeTagsForResourceOutput",
}

M.ThrottlingException = {
    type = "structure",
    id = "ThrottlingException",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.CidrCollectionAlreadyExistsException = {
    type = "structure",
    id = "CidrCollectionAlreadyExistsException",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.CreateCidrCollectionInput = {
    type = "structure",
    id = "CreateCidrCollectionInput",
    members = {
        Name = {
            type = "string",
            traits = {
                required = true,
            },
        },
        CallerReference = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.CidrCollection = {
    type = "structure",
    id = "CidrCollection",
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
        Version = {
            type = "long",
        },
    },
}

M.CreateCidrCollectionOutput = {
    type = "structure",
    id = "CreateCidrCollectionOutput",
    members = {
        Collection = M.CidrCollection,
        Location = {
            type = "string",
            traits = {
                http_header = "Location",
            },
        },
    },
}

M.InsufficientDataHealthStatus = {
    Healthy = "Healthy",
    Unhealthy = "Unhealthy",
    LastKnownStatus = "LastKnownStatus",
}

M.HealthCheckRegion = {
    us_east_1 = "us-east-1",
    us_west_1 = "us-west-1",
    us_west_2 = "us-west-2",
    eu_west_1 = "eu-west-1",
    ap_southeast_1 = "ap-southeast-1",
    ap_southeast_2 = "ap-southeast-2",
    ap_northeast_1 = "ap-northeast-1",
    sa_east_1 = "sa-east-1",
}

M.HealthCheckType = {
    HTTP = "HTTP",
    HTTPS = "HTTPS",
    HTTP_STR_MATCH = "HTTP_STR_MATCH",
    HTTPS_STR_MATCH = "HTTPS_STR_MATCH",
    TCP = "TCP",
    CALCULATED = "CALCULATED",
    CLOUDWATCH_METRIC = "CLOUDWATCH_METRIC",
    RECOVERY_CONTROL = "RECOVERY_CONTROL",
}

M.HealthCheckConfig = {
    type = "structure",
    id = "HealthCheckConfig",
    members = {
        IPAddress = {
            type = "string",
        },
        Port = {
            type = "integer",
        },
        Type = {
            type = "string",
            traits = {
                required = true,
            },
        },
        ResourcePath = {
            type = "string",
        },
        FullyQualifiedDomainName = {
            type = "string",
        },
        SearchString = {
            type = "string",
        },
        RequestInterval = {
            type = "integer",
        },
        FailureThreshold = {
            type = "integer",
        },
        MeasureLatency = {
            type = "boolean",
        },
        Inverted = {
            type = "boolean",
        },
        Disabled = {
            type = "boolean",
        },
        HealthThreshold = {
            type = "integer",
        },
        ChildHealthChecks = {
            type = "list",
            member = { type = "string" },
        },
        EnableSNI = {
            type = "boolean",
        },
        Regions = {
            type = "list",
            member = { type = "string" },
        },
        AlarmIdentifier = M.AlarmIdentifier,
        InsufficientDataHealthStatus = {
            type = "string",
        },
        RoutingControlArn = {
            type = "string",
        },
    },
}

M.CreateHealthCheckInput = {
    type = "structure",
    id = "CreateHealthCheckInput",
    members = {
        CallerReference = {
            type = "string",
            traits = {
                required = true,
            },
        },
        HealthCheckConfig = setmetatable({ traits = {
            required = true,
        } }, { __index = M.HealthCheckConfig }),
    },
}

M.ComparisonOperator = {
    GreaterThanOrEqualToThreshold = "GreaterThanOrEqualToThreshold",
    GreaterThanThreshold = "GreaterThanThreshold",
    LessThanThreshold = "LessThanThreshold",
    LessThanOrEqualToThreshold = "LessThanOrEqualToThreshold",
}

M.Dimension = {
    type = "structure",
    id = "Dimension",
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

M.Statistic = {
    Average = "Average",
    Sum = "Sum",
    SampleCount = "SampleCount",
    Maximum = "Maximum",
    Minimum = "Minimum",
}

M.CloudWatchAlarmConfiguration = {
    type = "structure",
    id = "CloudWatchAlarmConfiguration",
    members = {
        EvaluationPeriods = {
            type = "integer",
            traits = {
                required = true,
            },
        },
        Threshold = {
            type = "double",
            traits = {
                required = true,
            },
        },
        ComparisonOperator = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Period = {
            type = "integer",
            traits = {
                required = true,
            },
        },
        MetricName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Namespace = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Statistic = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Dimensions = {
            type = "list",
            member = M.Dimension,
        },
    },
}

M.LinkedService = {
    type = "structure",
    id = "LinkedService",
    members = {
        ServicePrincipal = {
            type = "string",
        },
        Description = {
            type = "string",
        },
    },
}

M.HealthCheck = {
    type = "structure",
    id = "HealthCheck",
    members = {
        Id = {
            type = "string",
            traits = {
                required = true,
            },
        },
        CallerReference = {
            type = "string",
            traits = {
                required = true,
            },
        },
        LinkedService = M.LinkedService,
        HealthCheckConfig = setmetatable({ traits = {
            required = true,
        } }, { __index = M.HealthCheckConfig }),
        HealthCheckVersion = {
            type = "long",
            traits = {
                required = true,
            },
        },
        CloudWatchAlarmConfiguration = M.CloudWatchAlarmConfiguration,
    },
}

M.CreateHealthCheckOutput = {
    type = "structure",
    id = "CreateHealthCheckOutput",
    members = {
        HealthCheck = setmetatable({ traits = {
            required = true,
        } }, { __index = M.HealthCheck }),
        Location = {
            type = "string",
            traits = {
                http_header = "Location",
                required = true,
            },
        },
    },
}

M.HealthCheckAlreadyExists = {
    type = "structure",
    id = "HealthCheckAlreadyExists",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.TooManyHealthChecks = {
    type = "structure",
    id = "TooManyHealthChecks",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.HostedZoneConfig = {
    type = "structure",
    id = "HostedZoneConfig",
    members = {
        Comment = {
            type = "string",
        },
        PrivateZone = {
            type = "boolean",
            traits = {
                default = false,
            },
        },
    },
}

M.CreateHostedZoneInput = {
    type = "structure",
    id = "CreateHostedZoneInput",
    members = {
        Name = {
            type = "string",
            traits = {
                required = true,
            },
        },
        VPC = M.VPC,
        CallerReference = {
            type = "string",
            traits = {
                required = true,
            },
        },
        HostedZoneConfig = M.HostedZoneConfig,
        DelegationSetId = {
            type = "string",
        },
    },
}

M.DelegationSet = {
    type = "structure",
    id = "DelegationSet",
    members = {
        Id = {
            type = "string",
        },
        CallerReference = {
            type = "string",
        },
        NameServers = {
            type = "list",
            member = { type = "string" },
            traits = {
                required = true,
            },
        },
    },
}

M.HostedZoneFailureReasons = {
    type = "structure",
    id = "HostedZoneFailureReasons",
    members = {
        AcceleratedRecovery = {
            type = "string",
        },
    },
}

M.HostedZoneFeatures = {
    type = "structure",
    id = "HostedZoneFeatures",
    members = {
        AcceleratedRecoveryStatus = {
            type = "string",
        },
        FailureReasons = M.HostedZoneFailureReasons,
    },
}

M.HostedZone = {
    type = "structure",
    id = "HostedZone",
    members = {
        Id = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Name = {
            type = "string",
            traits = {
                required = true,
            },
        },
        CallerReference = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Config = M.HostedZoneConfig,
        ResourceRecordSetCount = {
            type = "long",
        },
        LinkedService = M.LinkedService,
        Features = M.HostedZoneFeatures,
    },
}

M.CreateHostedZoneOutput = {
    type = "structure",
    id = "CreateHostedZoneOutput",
    members = {
        HostedZone = setmetatable({ traits = {
            required = true,
        } }, { __index = M.HostedZone }),
        ChangeInfo = setmetatable({ traits = {
            required = true,
        } }, { __index = M.ChangeInfo }),
        DelegationSet = setmetatable({ traits = {
            required = true,
        } }, { __index = M.DelegationSet }),
        VPC = M.VPC,
        Location = {
            type = "string",
            traits = {
                http_header = "Location",
                required = true,
            },
        },
    },
}

M.DelegationSetNotAvailable = {
    type = "structure",
    id = "DelegationSetNotAvailable",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.DelegationSetNotReusable = {
    type = "structure",
    id = "DelegationSetNotReusable",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.HostedZoneAlreadyExists = {
    type = "structure",
    id = "HostedZoneAlreadyExists",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.InvalidDomainName = {
    type = "structure",
    id = "InvalidDomainName",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.NoSuchDelegationSet = {
    type = "structure",
    id = "NoSuchDelegationSet",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.TooManyHostedZones = {
    type = "structure",
    id = "TooManyHostedZones",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.CreateKeySigningKeyInput = {
    type = "structure",
    id = "CreateKeySigningKeyInput",
    members = {
        CallerReference = {
            type = "string",
            traits = {
                required = true,
            },
        },
        HostedZoneId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        KeyManagementServiceArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Name = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Status = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.KeySigningKey = {
    type = "structure",
    id = "KeySigningKey",
    members = {
        Name = {
            type = "string",
        },
        KmsArn = {
            type = "string",
        },
        Flag = {
            type = "integer",
            traits = {
                default = 0,
            },
        },
        SigningAlgorithmMnemonic = {
            type = "string",
        },
        SigningAlgorithmType = {
            type = "integer",
            traits = {
                default = 0,
            },
        },
        DigestAlgorithmMnemonic = {
            type = "string",
        },
        DigestAlgorithmType = {
            type = "integer",
            traits = {
                default = 0,
            },
        },
        KeyTag = {
            type = "integer",
            traits = {
                default = 0,
            },
        },
        DigestValue = {
            type = "string",
        },
        PublicKey = {
            type = "string",
        },
        DSRecord = {
            type = "string",
        },
        DNSKEYRecord = {
            type = "string",
        },
        Status = {
            type = "string",
        },
        StatusMessage = {
            type = "string",
        },
        CreatedDate = {
            type = "timestamp",
        },
        LastModifiedDate = {
            type = "timestamp",
        },
    },
}

M.CreateKeySigningKeyOutput = {
    type = "structure",
    id = "CreateKeySigningKeyOutput",
    members = {
        ChangeInfo = setmetatable({ traits = {
            required = true,
        } }, { __index = M.ChangeInfo }),
        KeySigningKey = setmetatable({ traits = {
            required = true,
        } }, { __index = M.KeySigningKey }),
        Location = {
            type = "string",
            traits = {
                http_header = "Location",
                required = true,
            },
        },
    },
}

M.InvalidArgument = {
    type = "structure",
    id = "InvalidArgument",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.InvalidKeySigningKeyName = {
    type = "structure",
    id = "InvalidKeySigningKeyName",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.KeySigningKeyAlreadyExists = {
    type = "structure",
    id = "KeySigningKeyAlreadyExists",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.TooManyKeySigningKeys = {
    type = "structure",
    id = "TooManyKeySigningKeys",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.CreateQueryLoggingConfigInput = {
    type = "structure",
    id = "CreateQueryLoggingConfigInput",
    members = {
        HostedZoneId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        CloudWatchLogsLogGroupArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.QueryLoggingConfig = {
    type = "structure",
    id = "QueryLoggingConfig",
    members = {
        Id = {
            type = "string",
            traits = {
                required = true,
            },
        },
        HostedZoneId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        CloudWatchLogsLogGroupArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.CreateQueryLoggingConfigOutput = {
    type = "structure",
    id = "CreateQueryLoggingConfigOutput",
    members = {
        QueryLoggingConfig = setmetatable({ traits = {
            required = true,
        } }, { __index = M.QueryLoggingConfig }),
        Location = {
            type = "string",
            traits = {
                http_header = "Location",
                required = true,
            },
        },
    },
}

M.InsufficientCloudWatchLogsResourcePolicy = {
    type = "structure",
    id = "InsufficientCloudWatchLogsResourcePolicy",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.NoSuchCloudWatchLogsLogGroup = {
    type = "structure",
    id = "NoSuchCloudWatchLogsLogGroup",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.QueryLoggingConfigAlreadyExists = {
    type = "structure",
    id = "QueryLoggingConfigAlreadyExists",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.CreateReusableDelegationSetInput = {
    type = "structure",
    id = "CreateReusableDelegationSetInput",
    members = {
        CallerReference = {
            type = "string",
            traits = {
                required = true,
            },
        },
        HostedZoneId = {
            type = "string",
        },
    },
}

M.CreateReusableDelegationSetOutput = {
    type = "structure",
    id = "CreateReusableDelegationSetOutput",
    members = {
        DelegationSet = setmetatable({ traits = {
            required = true,
        } }, { __index = M.DelegationSet }),
        Location = {
            type = "string",
            traits = {
                http_header = "Location",
                required = true,
            },
        },
    },
}

M.DelegationSetAlreadyCreated = {
    type = "structure",
    id = "DelegationSetAlreadyCreated",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.DelegationSetAlreadyReusable = {
    type = "structure",
    id = "DelegationSetAlreadyReusable",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.HostedZoneNotFound = {
    type = "structure",
    id = "HostedZoneNotFound",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.CreateTrafficPolicyInput = {
    type = "structure",
    id = "CreateTrafficPolicyInput",
    members = {
        Name = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Document = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Comment = {
            type = "string",
        },
    },
}

M.TrafficPolicy = {
    type = "structure",
    id = "TrafficPolicy",
    members = {
        Id = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Version = {
            type = "integer",
            traits = {
                required = true,
            },
        },
        Name = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Type = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Document = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Comment = {
            type = "string",
        },
    },
}

M.CreateTrafficPolicyOutput = {
    type = "structure",
    id = "CreateTrafficPolicyOutput",
    members = {
        TrafficPolicy = setmetatable({ traits = {
            required = true,
        } }, { __index = M.TrafficPolicy }),
        Location = {
            type = "string",
            traits = {
                http_header = "Location",
                required = true,
            },
        },
    },
}

M.InvalidTrafficPolicyDocument = {
    type = "structure",
    id = "InvalidTrafficPolicyDocument",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.TooManyTrafficPolicies = {
    type = "structure",
    id = "TooManyTrafficPolicies",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.TrafficPolicyAlreadyExists = {
    type = "structure",
    id = "TrafficPolicyAlreadyExists",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.CreateTrafficPolicyInstanceInput = {
    type = "structure",
    id = "CreateTrafficPolicyInstanceInput",
    members = {
        HostedZoneId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Name = {
            type = "string",
            traits = {
                required = true,
            },
        },
        TTL = {
            type = "long",
            traits = {
                required = true,
            },
        },
        TrafficPolicyId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        TrafficPolicyVersion = {
            type = "integer",
            traits = {
                required = true,
            },
        },
    },
}

M.TrafficPolicyInstance = {
    type = "structure",
    id = "TrafficPolicyInstance",
    members = {
        Id = {
            type = "string",
            traits = {
                required = true,
            },
        },
        HostedZoneId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Name = {
            type = "string",
            traits = {
                required = true,
            },
        },
        TTL = {
            type = "long",
            traits = {
                required = true,
            },
        },
        State = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Message = {
            type = "string",
            traits = {
                required = true,
            },
        },
        TrafficPolicyId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        TrafficPolicyVersion = {
            type = "integer",
            traits = {
                required = true,
            },
        },
        TrafficPolicyType = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.CreateTrafficPolicyInstanceOutput = {
    type = "structure",
    id = "CreateTrafficPolicyInstanceOutput",
    members = {
        TrafficPolicyInstance = setmetatable({ traits = {
            required = true,
        } }, { __index = M.TrafficPolicyInstance }),
        Location = {
            type = "string",
            traits = {
                http_header = "Location",
                required = true,
            },
        },
    },
}

M.NoSuchTrafficPolicy = {
    type = "structure",
    id = "NoSuchTrafficPolicy",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.TooManyTrafficPolicyInstances = {
    type = "structure",
    id = "TooManyTrafficPolicyInstances",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.TrafficPolicyInstanceAlreadyExists = {
    type = "structure",
    id = "TrafficPolicyInstanceAlreadyExists",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.CreateTrafficPolicyVersionInput = {
    type = "structure",
    id = "CreateTrafficPolicyVersionInput",
    members = {
        Id = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        Document = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Comment = {
            type = "string",
        },
    },
}

M.CreateTrafficPolicyVersionOutput = {
    type = "structure",
    id = "CreateTrafficPolicyVersionOutput",
    members = {
        TrafficPolicy = setmetatable({ traits = {
            required = true,
        } }, { __index = M.TrafficPolicy }),
        Location = {
            type = "string",
            traits = {
                http_header = "Location",
                required = true,
            },
        },
    },
}

M.TooManyTrafficPolicyVersionsForCurrentPolicy = {
    type = "structure",
    id = "TooManyTrafficPolicyVersionsForCurrentPolicy",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.CreateVPCAssociationAuthorizationInput = {
    type = "structure",
    id = "CreateVPCAssociationAuthorizationInput",
    members = {
        HostedZoneId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        VPC = setmetatable({ traits = {
            required = true,
        } }, { __index = M.VPC }),
    },
}

M.CreateVPCAssociationAuthorizationOutput = {
    type = "structure",
    id = "CreateVPCAssociationAuthorizationOutput",
    members = {
        HostedZoneId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        VPC = setmetatable({ traits = {
            required = true,
        } }, { __index = M.VPC }),
    },
}

M.TooManyVPCAssociationAuthorizations = {
    type = "structure",
    id = "TooManyVPCAssociationAuthorizations",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.DeactivateKeySigningKeyInput = {
    type = "structure",
    id = "DeactivateKeySigningKeyInput",
    members = {
        HostedZoneId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        Name = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.DeactivateKeySigningKeyOutput = {
    type = "structure",
    id = "DeactivateKeySigningKeyOutput",
    members = {
        ChangeInfo = setmetatable({ traits = {
            required = true,
        } }, { __index = M.ChangeInfo }),
    },
}

M.KeySigningKeyInParentDSRecord = {
    type = "structure",
    id = "KeySigningKeyInParentDSRecord",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.KeySigningKeyInUse = {
    type = "structure",
    id = "KeySigningKeyInUse",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.CidrCollectionInUseException = {
    type = "structure",
    id = "CidrCollectionInUseException",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.DeleteCidrCollectionInput = {
    type = "structure",
    id = "DeleteCidrCollectionInput",
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

M.DeleteCidrCollectionOutput = {
    type = "structure",
    id = "DeleteCidrCollectionOutput",
}

M.DeleteHealthCheckInput = {
    type = "structure",
    id = "DeleteHealthCheckInput",
    members = {
        HealthCheckId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.DeleteHealthCheckOutput = {
    type = "structure",
    id = "DeleteHealthCheckOutput",
}

M.HealthCheckInUse = {
    type = "structure",
    id = "HealthCheckInUse",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.DeleteHostedZoneInput = {
    type = "structure",
    id = "DeleteHostedZoneInput",
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

M.DeleteHostedZoneOutput = {
    type = "structure",
    id = "DeleteHostedZoneOutput",
    members = {
        ChangeInfo = setmetatable({ traits = {
            required = true,
        } }, { __index = M.ChangeInfo }),
    },
}

M.HostedZoneNotEmpty = {
    type = "structure",
    id = "HostedZoneNotEmpty",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.DeleteKeySigningKeyInput = {
    type = "structure",
    id = "DeleteKeySigningKeyInput",
    members = {
        HostedZoneId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        Name = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.DeleteKeySigningKeyOutput = {
    type = "structure",
    id = "DeleteKeySigningKeyOutput",
    members = {
        ChangeInfo = setmetatable({ traits = {
            required = true,
        } }, { __index = M.ChangeInfo }),
    },
}

M.DeleteQueryLoggingConfigInput = {
    type = "structure",
    id = "DeleteQueryLoggingConfigInput",
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

M.DeleteQueryLoggingConfigOutput = {
    type = "structure",
    id = "DeleteQueryLoggingConfigOutput",
}

M.NoSuchQueryLoggingConfig = {
    type = "structure",
    id = "NoSuchQueryLoggingConfig",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.DelegationSetInUse = {
    type = "structure",
    id = "DelegationSetInUse",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.DeleteReusableDelegationSetInput = {
    type = "structure",
    id = "DeleteReusableDelegationSetInput",
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

M.DeleteReusableDelegationSetOutput = {
    type = "structure",
    id = "DeleteReusableDelegationSetOutput",
}

M.DeleteTrafficPolicyInput = {
    type = "structure",
    id = "DeleteTrafficPolicyInput",
    members = {
        Id = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        Version = {
            type = "integer",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.DeleteTrafficPolicyOutput = {
    type = "structure",
    id = "DeleteTrafficPolicyOutput",
}

M.TrafficPolicyInUse = {
    type = "structure",
    id = "TrafficPolicyInUse",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.DeleteTrafficPolicyInstanceInput = {
    type = "structure",
    id = "DeleteTrafficPolicyInstanceInput",
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

M.DeleteTrafficPolicyInstanceOutput = {
    type = "structure",
    id = "DeleteTrafficPolicyInstanceOutput",
}

M.NoSuchTrafficPolicyInstance = {
    type = "structure",
    id = "NoSuchTrafficPolicyInstance",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.DeleteVPCAssociationAuthorizationInput = {
    type = "structure",
    id = "DeleteVPCAssociationAuthorizationInput",
    members = {
        HostedZoneId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        VPC = setmetatable({ traits = {
            required = true,
        } }, { __index = M.VPC }),
    },
}

M.DeleteVPCAssociationAuthorizationOutput = {
    type = "structure",
    id = "DeleteVPCAssociationAuthorizationOutput",
}

M.VPCAssociationAuthorizationNotFound = {
    type = "structure",
    id = "VPCAssociationAuthorizationNotFound",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.DisableHostedZoneDNSSECInput = {
    type = "structure",
    id = "DisableHostedZoneDNSSECInput",
    members = {
        HostedZoneId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.DisableHostedZoneDNSSECOutput = {
    type = "structure",
    id = "DisableHostedZoneDNSSECOutput",
    members = {
        ChangeInfo = setmetatable({ traits = {
            required = true,
        } }, { __index = M.ChangeInfo }),
    },
}

M.DNSSECNotFound = {
    type = "structure",
    id = "DNSSECNotFound",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.DisassociateVPCFromHostedZoneInput = {
    type = "structure",
    id = "DisassociateVPCFromHostedZoneInput",
    members = {
        HostedZoneId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        VPC = setmetatable({ traits = {
            required = true,
        } }, { __index = M.VPC }),
        Comment = {
            type = "string",
        },
    },
}

M.DisassociateVPCFromHostedZoneOutput = {
    type = "structure",
    id = "DisassociateVPCFromHostedZoneOutput",
    members = {
        ChangeInfo = setmetatable({ traits = {
            required = true,
        } }, { __index = M.ChangeInfo }),
    },
}

M.LastVPCAssociation = {
    type = "structure",
    id = "LastVPCAssociation",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.VPCAssociationNotFound = {
    type = "structure",
    id = "VPCAssociationNotFound",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.EnableHostedZoneDNSSECInput = {
    type = "structure",
    id = "EnableHostedZoneDNSSECInput",
    members = {
        HostedZoneId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.EnableHostedZoneDNSSECOutput = {
    type = "structure",
    id = "EnableHostedZoneDNSSECOutput",
    members = {
        ChangeInfo = setmetatable({ traits = {
            required = true,
        } }, { __index = M.ChangeInfo }),
    },
}

M.HostedZonePartiallyDelegated = {
    type = "structure",
    id = "HostedZonePartiallyDelegated",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.KeySigningKeyWithActiveStatusNotFound = {
    type = "structure",
    id = "KeySigningKeyWithActiveStatusNotFound",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.GetAccountLimitInput = {
    type = "structure",
    id = "GetAccountLimitInput",
    members = {
        Type = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.GetAccountLimitOutput = {
    type = "structure",
    id = "GetAccountLimitOutput",
    members = {
        Limit = setmetatable({ traits = {
            required = true,
        } }, { __index = M.AccountLimit }),
        Count = {
            type = "long",
            traits = {
                default = 0,
                required = true,
            },
        },
    },
}

M.GetChangeInput = {
    type = "structure",
    id = "GetChangeInput",
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

M.GetChangeOutput = {
    type = "structure",
    id = "GetChangeOutput",
    members = {
        ChangeInfo = setmetatable({ traits = {
            required = true,
        } }, { __index = M.ChangeInfo }),
    },
}

M.NoSuchChange = {
    type = "structure",
    id = "NoSuchChange",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.GetCheckerIpRangesInput = {
    type = "structure",
    id = "GetCheckerIpRangesInput",
}

M.GetCheckerIpRangesOutput = {
    type = "structure",
    id = "GetCheckerIpRangesOutput",
    members = {
        CheckerIpRanges = {
            type = "list",
            member = { type = "string" },
            traits = {
                required = true,
            },
        },
    },
}

M.GetDNSSECInput = {
    type = "structure",
    id = "GetDNSSECInput",
    members = {
        HostedZoneId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.DNSSECStatus = {
    type = "structure",
    id = "DNSSECStatus",
    members = {
        ServeSignature = {
            type = "string",
        },
        StatusMessage = {
            type = "string",
        },
    },
}

M.GetDNSSECOutput = {
    type = "structure",
    id = "GetDNSSECOutput",
    members = {
        Status = setmetatable({ traits = {
            required = true,
        } }, { __index = M.DNSSECStatus }),
        KeySigningKeys = {
            type = "list",
            member = M.KeySigningKey,
            traits = {
                required = true,
            },
        },
    },
}

M.GetGeoLocationInput = {
    type = "structure",
    id = "GetGeoLocationInput",
    members = {
        ContinentCode = {
            type = "string",
            traits = {
                http_query = "continentcode",
            },
        },
        CountryCode = {
            type = "string",
            traits = {
                http_query = "countrycode",
            },
        },
        SubdivisionCode = {
            type = "string",
            traits = {
                http_query = "subdivisioncode",
            },
        },
    },
}

M.GeoLocationDetails = {
    type = "structure",
    id = "GeoLocationDetails",
    members = {
        ContinentCode = {
            type = "string",
        },
        ContinentName = {
            type = "string",
        },
        CountryCode = {
            type = "string",
        },
        CountryName = {
            type = "string",
        },
        SubdivisionCode = {
            type = "string",
        },
        SubdivisionName = {
            type = "string",
        },
    },
}

M.GetGeoLocationOutput = {
    type = "structure",
    id = "GetGeoLocationOutput",
    members = {
        GeoLocationDetails = setmetatable({ traits = {
            required = true,
        } }, { __index = M.GeoLocationDetails }),
    },
}

M.NoSuchGeoLocation = {
    type = "structure",
    id = "NoSuchGeoLocation",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.GetHealthCheckInput = {
    type = "structure",
    id = "GetHealthCheckInput",
    members = {
        HealthCheckId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.GetHealthCheckOutput = {
    type = "structure",
    id = "GetHealthCheckOutput",
    members = {
        HealthCheck = setmetatable({ traits = {
            required = true,
        } }, { __index = M.HealthCheck }),
    },
}

M.IncompatibleVersion = {
    type = "structure",
    id = "IncompatibleVersion",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.GetHealthCheckCountInput = {
    type = "structure",
    id = "GetHealthCheckCountInput",
}

M.GetHealthCheckCountOutput = {
    type = "structure",
    id = "GetHealthCheckCountOutput",
    members = {
        HealthCheckCount = {
            type = "long",
            traits = {
                required = true,
            },
        },
    },
}

M.GetHealthCheckLastFailureReasonInput = {
    type = "structure",
    id = "GetHealthCheckLastFailureReasonInput",
    members = {
        HealthCheckId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.StatusReport = {
    type = "structure",
    id = "StatusReport",
    members = {
        Status = {
            type = "string",
        },
        CheckedTime = {
            type = "timestamp",
        },
    },
}

M.HealthCheckObservation = {
    type = "structure",
    id = "HealthCheckObservation",
    members = {
        Region = {
            type = "string",
        },
        IPAddress = {
            type = "string",
        },
        StatusReport = M.StatusReport,
    },
}

M.GetHealthCheckLastFailureReasonOutput = {
    type = "structure",
    id = "GetHealthCheckLastFailureReasonOutput",
    members = {
        HealthCheckObservations = {
            type = "list",
            member = M.HealthCheckObservation,
            traits = {
                required = true,
            },
        },
    },
}

M.GetHealthCheckStatusInput = {
    type = "structure",
    id = "GetHealthCheckStatusInput",
    members = {
        HealthCheckId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.GetHealthCheckStatusOutput = {
    type = "structure",
    id = "GetHealthCheckStatusOutput",
    members = {
        HealthCheckObservations = {
            type = "list",
            member = M.HealthCheckObservation,
            traits = {
                required = true,
            },
        },
    },
}

M.GetHostedZoneInput = {
    type = "structure",
    id = "GetHostedZoneInput",
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

M.GetHostedZoneOutput = {
    type = "structure",
    id = "GetHostedZoneOutput",
    members = {
        HostedZone = setmetatable({ traits = {
            required = true,
        } }, { __index = M.HostedZone }),
        DelegationSet = M.DelegationSet,
        VPCs = {
            type = "list",
            member = M.VPC,
        },
    },
}

M.GetHostedZoneCountInput = {
    type = "structure",
    id = "GetHostedZoneCountInput",
}

M.GetHostedZoneCountOutput = {
    type = "structure",
    id = "GetHostedZoneCountOutput",
    members = {
        HostedZoneCount = {
            type = "long",
            traits = {
                required = true,
            },
        },
    },
}

M.HostedZoneLimitType = {
    MAX_RRSETS_BY_ZONE = "MAX_RRSETS_BY_ZONE",
    MAX_VPCS_ASSOCIATED_BY_ZONE = "MAX_VPCS_ASSOCIATED_BY_ZONE",
}

M.GetHostedZoneLimitInput = {
    type = "structure",
    id = "GetHostedZoneLimitInput",
    members = {
        Type = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        HostedZoneId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.HostedZoneLimit = {
    type = "structure",
    id = "HostedZoneLimit",
    members = {
        Type = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Value = {
            type = "long",
            traits = {
                required = true,
            },
        },
    },
}

M.GetHostedZoneLimitOutput = {
    type = "structure",
    id = "GetHostedZoneLimitOutput",
    members = {
        Limit = setmetatable({ traits = {
            required = true,
        } }, { __index = M.HostedZoneLimit }),
        Count = {
            type = "long",
            traits = {
                default = 0,
                required = true,
            },
        },
    },
}

M.HostedZoneNotPrivate = {
    type = "structure",
    id = "HostedZoneNotPrivate",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.GetQueryLoggingConfigInput = {
    type = "structure",
    id = "GetQueryLoggingConfigInput",
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

M.GetQueryLoggingConfigOutput = {
    type = "structure",
    id = "GetQueryLoggingConfigOutput",
    members = {
        QueryLoggingConfig = setmetatable({ traits = {
            required = true,
        } }, { __index = M.QueryLoggingConfig }),
    },
}

M.GetReusableDelegationSetInput = {
    type = "structure",
    id = "GetReusableDelegationSetInput",
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

M.GetReusableDelegationSetOutput = {
    type = "structure",
    id = "GetReusableDelegationSetOutput",
    members = {
        DelegationSet = setmetatable({ traits = {
            required = true,
        } }, { __index = M.DelegationSet }),
    },
}

M.ReusableDelegationSetLimitType = {
    MAX_ZONES_BY_REUSABLE_DELEGATION_SET = "MAX_ZONES_BY_REUSABLE_DELEGATION_SET",
}

M.GetReusableDelegationSetLimitInput = {
    type = "structure",
    id = "GetReusableDelegationSetLimitInput",
    members = {
        Type = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        DelegationSetId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.ReusableDelegationSetLimit = {
    type = "structure",
    id = "ReusableDelegationSetLimit",
    members = {
        Type = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Value = {
            type = "long",
            traits = {
                required = true,
            },
        },
    },
}

M.GetReusableDelegationSetLimitOutput = {
    type = "structure",
    id = "GetReusableDelegationSetLimitOutput",
    members = {
        Limit = setmetatable({ traits = {
            required = true,
        } }, { __index = M.ReusableDelegationSetLimit }),
        Count = {
            type = "long",
            traits = {
                default = 0,
                required = true,
            },
        },
    },
}

M.GetTrafficPolicyInput = {
    type = "structure",
    id = "GetTrafficPolicyInput",
    members = {
        Id = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        Version = {
            type = "integer",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.GetTrafficPolicyOutput = {
    type = "structure",
    id = "GetTrafficPolicyOutput",
    members = {
        TrafficPolicy = setmetatable({ traits = {
            required = true,
        } }, { __index = M.TrafficPolicy }),
    },
}

M.GetTrafficPolicyInstanceInput = {
    type = "structure",
    id = "GetTrafficPolicyInstanceInput",
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

M.GetTrafficPolicyInstanceOutput = {
    type = "structure",
    id = "GetTrafficPolicyInstanceOutput",
    members = {
        TrafficPolicyInstance = setmetatable({ traits = {
            required = true,
        } }, { __index = M.TrafficPolicyInstance }),
    },
}

M.GetTrafficPolicyInstanceCountInput = {
    type = "structure",
    id = "GetTrafficPolicyInstanceCountInput",
}

M.GetTrafficPolicyInstanceCountOutput = {
    type = "structure",
    id = "GetTrafficPolicyInstanceCountOutput",
    members = {
        TrafficPolicyInstanceCount = {
            type = "integer",
            traits = {
                required = true,
            },
        },
    },
}

M.ListCidrBlocksInput = {
    type = "structure",
    id = "ListCidrBlocksInput",
    members = {
        CollectionId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        LocationName = {
            type = "string",
            traits = {
                http_query = "location",
            },
        },
        NextToken = {
            type = "string",
            traits = {
                http_query = "nexttoken",
            },
        },
        MaxResults = {
            type = "integer",
            traits = {
                http_query = "maxresults",
            },
        },
    },
}

M.CidrBlockSummary = {
    type = "structure",
    id = "CidrBlockSummary",
    members = {
        CidrBlock = {
            type = "string",
        },
        LocationName = {
            type = "string",
        },
    },
}

M.ListCidrBlocksOutput = {
    type = "structure",
    id = "ListCidrBlocksOutput",
    members = {
        NextToken = {
            type = "string",
        },
        CidrBlocks = {
            type = "list",
            member = M.CidrBlockSummary,
        },
    },
}

M.NoSuchCidrLocationException = {
    type = "structure",
    id = "NoSuchCidrLocationException",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.ListCidrCollectionsInput = {
    type = "structure",
    id = "ListCidrCollectionsInput",
    members = {
        NextToken = {
            type = "string",
            traits = {
                http_query = "nexttoken",
            },
        },
        MaxResults = {
            type = "integer",
            traits = {
                http_query = "maxresults",
            },
        },
    },
}

M.CollectionSummary = {
    type = "structure",
    id = "CollectionSummary",
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
        Version = {
            type = "long",
        },
    },
}

M.ListCidrCollectionsOutput = {
    type = "structure",
    id = "ListCidrCollectionsOutput",
    members = {
        NextToken = {
            type = "string",
        },
        CidrCollections = {
            type = "list",
            member = M.CollectionSummary,
        },
    },
}

M.ListCidrLocationsInput = {
    type = "structure",
    id = "ListCidrLocationsInput",
    members = {
        CollectionId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        NextToken = {
            type = "string",
            traits = {
                http_query = "nexttoken",
            },
        },
        MaxResults = {
            type = "integer",
            traits = {
                http_query = "maxresults",
            },
        },
    },
}

M.LocationSummary = {
    type = "structure",
    id = "LocationSummary",
    members = {
        LocationName = {
            type = "string",
        },
    },
}

M.ListCidrLocationsOutput = {
    type = "structure",
    id = "ListCidrLocationsOutput",
    members = {
        NextToken = {
            type = "string",
        },
        CidrLocations = {
            type = "list",
            member = M.LocationSummary,
        },
    },
}

M.ListGeoLocationsInput = {
    type = "structure",
    id = "ListGeoLocationsInput",
    members = {
        StartContinentCode = {
            type = "string",
            traits = {
                http_query = "startcontinentcode",
            },
        },
        StartCountryCode = {
            type = "string",
            traits = {
                http_query = "startcountrycode",
            },
        },
        StartSubdivisionCode = {
            type = "string",
            traits = {
                http_query = "startsubdivisioncode",
            },
        },
        MaxItems = {
            type = "integer",
            traits = {
                http_query = "maxitems",
            },
        },
    },
}

M.ListGeoLocationsOutput = {
    type = "structure",
    id = "ListGeoLocationsOutput",
    members = {
        GeoLocationDetailsList = {
            type = "list",
            member = M.GeoLocationDetails,
            traits = {
                required = true,
            },
        },
        IsTruncated = {
            type = "boolean",
            traits = {
                default = false,
                required = true,
            },
        },
        NextContinentCode = {
            type = "string",
        },
        NextCountryCode = {
            type = "string",
        },
        NextSubdivisionCode = {
            type = "string",
        },
        MaxItems = {
            type = "integer",
            traits = {
                required = true,
            },
        },
    },
}

M.ListHealthChecksInput = {
    type = "structure",
    id = "ListHealthChecksInput",
    members = {
        Marker = {
            type = "string",
            traits = {
                http_query = "marker",
            },
        },
        MaxItems = {
            type = "integer",
            traits = {
                http_query = "maxitems",
            },
        },
    },
}

M.ListHealthChecksOutput = {
    type = "structure",
    id = "ListHealthChecksOutput",
    members = {
        HealthChecks = {
            type = "list",
            member = M.HealthCheck,
            traits = {
                required = true,
            },
        },
        Marker = {
            type = "string",
            traits = {
                required = true,
            },
        },
        IsTruncated = {
            type = "boolean",
            traits = {
                default = false,
                required = true,
            },
        },
        NextMarker = {
            type = "string",
        },
        MaxItems = {
            type = "integer",
            traits = {
                required = true,
            },
        },
    },
}

M.HostedZoneType = {
    PRIVATE_HOSTED_ZONE = "PrivateHostedZone",
}

M.ListHostedZonesInput = {
    type = "structure",
    id = "ListHostedZonesInput",
    members = {
        Marker = {
            type = "string",
            traits = {
                http_query = "marker",
            },
        },
        MaxItems = {
            type = "integer",
            traits = {
                http_query = "maxitems",
            },
        },
        DelegationSetId = {
            type = "string",
            traits = {
                http_query = "delegationsetid",
            },
        },
        HostedZoneType = {
            type = "string",
            traits = {
                http_query = "hostedzonetype",
            },
        },
    },
}

M.ListHostedZonesOutput = {
    type = "structure",
    id = "ListHostedZonesOutput",
    members = {
        HostedZones = {
            type = "list",
            member = M.HostedZone,
            traits = {
                required = true,
            },
        },
        Marker = {
            type = "string",
            traits = {
                required = true,
            },
        },
        IsTruncated = {
            type = "boolean",
            traits = {
                default = false,
                required = true,
            },
        },
        NextMarker = {
            type = "string",
        },
        MaxItems = {
            type = "integer",
            traits = {
                required = true,
            },
        },
    },
}

M.ListHostedZonesByNameInput = {
    type = "structure",
    id = "ListHostedZonesByNameInput",
    members = {
        DNSName = {
            type = "string",
            traits = {
                http_query = "dnsname",
            },
        },
        HostedZoneId = {
            type = "string",
            traits = {
                http_query = "hostedzoneid",
            },
        },
        MaxItems = {
            type = "integer",
            traits = {
                http_query = "maxitems",
            },
        },
    },
}

M.ListHostedZonesByNameOutput = {
    type = "structure",
    id = "ListHostedZonesByNameOutput",
    members = {
        HostedZones = {
            type = "list",
            member = M.HostedZone,
            traits = {
                required = true,
            },
        },
        DNSName = {
            type = "string",
        },
        HostedZoneId = {
            type = "string",
        },
        IsTruncated = {
            type = "boolean",
            traits = {
                default = false,
                required = true,
            },
        },
        NextDNSName = {
            type = "string",
        },
        NextHostedZoneId = {
            type = "string",
        },
        MaxItems = {
            type = "integer",
            traits = {
                required = true,
            },
        },
    },
}

M.InvalidPaginationToken = {
    type = "structure",
    id = "InvalidPaginationToken",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.ListHostedZonesByVPCInput = {
    type = "structure",
    id = "ListHostedZonesByVPCInput",
    members = {
        VPCId = {
            type = "string",
            traits = {
                http_query = "vpcid",
                required = true,
            },
        },
        VPCRegion = {
            type = "string",
            traits = {
                http_query = "vpcregion",
                required = true,
            },
        },
        MaxItems = {
            type = "integer",
            traits = {
                http_query = "maxitems",
            },
        },
        NextToken = {
            type = "string",
            traits = {
                http_query = "nexttoken",
            },
        },
    },
}

M.HostedZoneOwner = {
    type = "structure",
    id = "HostedZoneOwner",
    members = {
        OwningAccount = {
            type = "string",
        },
        OwningService = {
            type = "string",
        },
    },
}

M.HostedZoneSummary = {
    type = "structure",
    id = "HostedZoneSummary",
    members = {
        HostedZoneId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Name = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Owner = setmetatable({ traits = {
            required = true,
        } }, { __index = M.HostedZoneOwner }),
    },
}

M.ListHostedZonesByVPCOutput = {
    type = "structure",
    id = "ListHostedZonesByVPCOutput",
    members = {
        HostedZoneSummaries = {
            type = "list",
            member = M.HostedZoneSummary,
            traits = {
                required = true,
            },
        },
        MaxItems = {
            type = "integer",
            traits = {
                required = true,
            },
        },
        NextToken = {
            type = "string",
        },
    },
}

M.ListQueryLoggingConfigsInput = {
    type = "structure",
    id = "ListQueryLoggingConfigsInput",
    members = {
        HostedZoneId = {
            type = "string",
            traits = {
                http_query = "hostedzoneid",
            },
        },
        NextToken = {
            type = "string",
            traits = {
                http_query = "nexttoken",
            },
        },
        MaxResults = {
            type = "integer",
            traits = {
                http_query = "maxresults",
            },
        },
    },
}

M.ListQueryLoggingConfigsOutput = {
    type = "structure",
    id = "ListQueryLoggingConfigsOutput",
    members = {
        QueryLoggingConfigs = {
            type = "list",
            member = M.QueryLoggingConfig,
            traits = {
                required = true,
            },
        },
        NextToken = {
            type = "string",
        },
    },
}

M.ListResourceRecordSetsInput = {
    type = "structure",
    id = "ListResourceRecordSetsInput",
    members = {
        HostedZoneId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        StartRecordName = {
            type = "string",
            traits = {
                http_query = "name",
            },
        },
        StartRecordType = {
            type = "string",
            traits = {
                http_query = "type",
            },
        },
        StartRecordIdentifier = {
            type = "string",
            traits = {
                http_query = "identifier",
            },
        },
        MaxItems = {
            type = "integer",
            traits = {
                http_query = "maxitems",
            },
        },
    },
}

M.ListResourceRecordSetsOutput = {
    type = "structure",
    id = "ListResourceRecordSetsOutput",
    members = {
        ResourceRecordSets = {
            type = "list",
            member = M.ResourceRecordSet,
            traits = {
                required = true,
            },
        },
        IsTruncated = {
            type = "boolean",
            traits = {
                default = false,
                required = true,
            },
        },
        NextRecordName = {
            type = "string",
        },
        NextRecordType = {
            type = "string",
        },
        NextRecordIdentifier = {
            type = "string",
        },
        MaxItems = {
            type = "integer",
            traits = {
                required = true,
            },
        },
    },
}

M.ListReusableDelegationSetsInput = {
    type = "structure",
    id = "ListReusableDelegationSetsInput",
    members = {
        Marker = {
            type = "string",
            traits = {
                http_query = "marker",
            },
        },
        MaxItems = {
            type = "integer",
            traits = {
                http_query = "maxitems",
            },
        },
    },
}

M.ListReusableDelegationSetsOutput = {
    type = "structure",
    id = "ListReusableDelegationSetsOutput",
    members = {
        DelegationSets = {
            type = "list",
            member = M.DelegationSet,
            traits = {
                required = true,
            },
        },
        Marker = {
            type = "string",
            traits = {
                required = true,
            },
        },
        IsTruncated = {
            type = "boolean",
            traits = {
                default = false,
                required = true,
            },
        },
        NextMarker = {
            type = "string",
        },
        MaxItems = {
            type = "integer",
            traits = {
                required = true,
            },
        },
    },
}

M.ListTagsForResourceInput = {
    type = "structure",
    id = "ListTagsForResourceInput",
    members = {
        ResourceType = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        ResourceId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.ResourceTagSet = {
    type = "structure",
    id = "ResourceTagSet",
    members = {
        ResourceType = {
            type = "string",
        },
        ResourceId = {
            type = "string",
        },
        Tags = {
            type = "list",
            member = M.Tag,
        },
    },
}

M.ListTagsForResourceOutput = {
    type = "structure",
    id = "ListTagsForResourceOutput",
    members = {
        ResourceTagSet = setmetatable({ traits = {
            required = true,
        } }, { __index = M.ResourceTagSet }),
    },
}

M.ListTagsForResourcesInput = {
    type = "structure",
    id = "ListTagsForResourcesInput",
    members = {
        ResourceType = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        ResourceIds = {
            type = "list",
            member = { type = "string" },
            traits = {
                required = true,
            },
        },
    },
}

M.ListTagsForResourcesOutput = {
    type = "structure",
    id = "ListTagsForResourcesOutput",
    members = {
        ResourceTagSets = {
            type = "list",
            member = M.ResourceTagSet,
            traits = {
                required = true,
            },
        },
    },
}

M.ListTrafficPoliciesInput = {
    type = "structure",
    id = "ListTrafficPoliciesInput",
    members = {
        TrafficPolicyIdMarker = {
            type = "string",
            traits = {
                http_query = "trafficpolicyid",
            },
        },
        MaxItems = {
            type = "integer",
            traits = {
                http_query = "maxitems",
            },
        },
    },
}

M.TrafficPolicySummary = {
    type = "structure",
    id = "TrafficPolicySummary",
    members = {
        Id = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Name = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Type = {
            type = "string",
            traits = {
                required = true,
            },
        },
        LatestVersion = {
            type = "integer",
            traits = {
                required = true,
            },
        },
        TrafficPolicyCount = {
            type = "integer",
            traits = {
                required = true,
            },
        },
    },
}

M.ListTrafficPoliciesOutput = {
    type = "structure",
    id = "ListTrafficPoliciesOutput",
    members = {
        TrafficPolicySummaries = {
            type = "list",
            member = M.TrafficPolicySummary,
            traits = {
                required = true,
            },
        },
        IsTruncated = {
            type = "boolean",
            traits = {
                default = false,
                required = true,
            },
        },
        TrafficPolicyIdMarker = {
            type = "string",
            traits = {
                required = true,
            },
        },
        MaxItems = {
            type = "integer",
            traits = {
                required = true,
            },
        },
    },
}

M.ListTrafficPolicyInstancesInput = {
    type = "structure",
    id = "ListTrafficPolicyInstancesInput",
    members = {
        HostedZoneIdMarker = {
            type = "string",
            traits = {
                http_query = "hostedzoneid",
            },
        },
        TrafficPolicyInstanceNameMarker = {
            type = "string",
            traits = {
                http_query = "trafficpolicyinstancename",
            },
        },
        TrafficPolicyInstanceTypeMarker = {
            type = "string",
            traits = {
                http_query = "trafficpolicyinstancetype",
            },
        },
        MaxItems = {
            type = "integer",
            traits = {
                http_query = "maxitems",
            },
        },
    },
}

M.ListTrafficPolicyInstancesOutput = {
    type = "structure",
    id = "ListTrafficPolicyInstancesOutput",
    members = {
        TrafficPolicyInstances = {
            type = "list",
            member = M.TrafficPolicyInstance,
            traits = {
                required = true,
            },
        },
        HostedZoneIdMarker = {
            type = "string",
        },
        TrafficPolicyInstanceNameMarker = {
            type = "string",
        },
        TrafficPolicyInstanceTypeMarker = {
            type = "string",
        },
        IsTruncated = {
            type = "boolean",
            traits = {
                default = false,
                required = true,
            },
        },
        MaxItems = {
            type = "integer",
            traits = {
                required = true,
            },
        },
    },
}

M.ListTrafficPolicyInstancesByHostedZoneInput = {
    type = "structure",
    id = "ListTrafficPolicyInstancesByHostedZoneInput",
    members = {
        HostedZoneId = {
            type = "string",
            traits = {
                http_query = "id",
                required = true,
            },
        },
        TrafficPolicyInstanceNameMarker = {
            type = "string",
            traits = {
                http_query = "trafficpolicyinstancename",
            },
        },
        TrafficPolicyInstanceTypeMarker = {
            type = "string",
            traits = {
                http_query = "trafficpolicyinstancetype",
            },
        },
        MaxItems = {
            type = "integer",
            traits = {
                http_query = "maxitems",
            },
        },
    },
}

M.ListTrafficPolicyInstancesByHostedZoneOutput = {
    type = "structure",
    id = "ListTrafficPolicyInstancesByHostedZoneOutput",
    members = {
        TrafficPolicyInstances = {
            type = "list",
            member = M.TrafficPolicyInstance,
            traits = {
                required = true,
            },
        },
        TrafficPolicyInstanceNameMarker = {
            type = "string",
        },
        TrafficPolicyInstanceTypeMarker = {
            type = "string",
        },
        IsTruncated = {
            type = "boolean",
            traits = {
                default = false,
                required = true,
            },
        },
        MaxItems = {
            type = "integer",
            traits = {
                required = true,
            },
        },
    },
}

M.ListTrafficPolicyInstancesByPolicyInput = {
    type = "structure",
    id = "ListTrafficPolicyInstancesByPolicyInput",
    members = {
        TrafficPolicyId = {
            type = "string",
            traits = {
                http_query = "id",
                required = true,
            },
        },
        TrafficPolicyVersion = {
            type = "integer",
            traits = {
                http_query = "version",
                required = true,
            },
        },
        HostedZoneIdMarker = {
            type = "string",
            traits = {
                http_query = "hostedzoneid",
            },
        },
        TrafficPolicyInstanceNameMarker = {
            type = "string",
            traits = {
                http_query = "trafficpolicyinstancename",
            },
        },
        TrafficPolicyInstanceTypeMarker = {
            type = "string",
            traits = {
                http_query = "trafficpolicyinstancetype",
            },
        },
        MaxItems = {
            type = "integer",
            traits = {
                http_query = "maxitems",
            },
        },
    },
}

M.ListTrafficPolicyInstancesByPolicyOutput = {
    type = "structure",
    id = "ListTrafficPolicyInstancesByPolicyOutput",
    members = {
        TrafficPolicyInstances = {
            type = "list",
            member = M.TrafficPolicyInstance,
            traits = {
                required = true,
            },
        },
        HostedZoneIdMarker = {
            type = "string",
        },
        TrafficPolicyInstanceNameMarker = {
            type = "string",
        },
        TrafficPolicyInstanceTypeMarker = {
            type = "string",
        },
        IsTruncated = {
            type = "boolean",
            traits = {
                default = false,
                required = true,
            },
        },
        MaxItems = {
            type = "integer",
            traits = {
                required = true,
            },
        },
    },
}

M.ListTrafficPolicyVersionsInput = {
    type = "structure",
    id = "ListTrafficPolicyVersionsInput",
    members = {
        Id = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        TrafficPolicyVersionMarker = {
            type = "string",
            traits = {
                http_query = "trafficpolicyversion",
            },
        },
        MaxItems = {
            type = "integer",
            traits = {
                http_query = "maxitems",
            },
        },
    },
}

M.ListTrafficPolicyVersionsOutput = {
    type = "structure",
    id = "ListTrafficPolicyVersionsOutput",
    members = {
        TrafficPolicies = {
            type = "list",
            member = M.TrafficPolicy,
            traits = {
                required = true,
            },
        },
        IsTruncated = {
            type = "boolean",
            traits = {
                default = false,
                required = true,
            },
        },
        TrafficPolicyVersionMarker = {
            type = "string",
            traits = {
                required = true,
            },
        },
        MaxItems = {
            type = "integer",
            traits = {
                required = true,
            },
        },
    },
}

M.ListVPCAssociationAuthorizationsInput = {
    type = "structure",
    id = "ListVPCAssociationAuthorizationsInput",
    members = {
        HostedZoneId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        NextToken = {
            type = "string",
            traits = {
                http_query = "nexttoken",
            },
        },
        MaxResults = {
            type = "integer",
            traits = {
                http_query = "maxresults",
            },
        },
    },
}

M.ListVPCAssociationAuthorizationsOutput = {
    type = "structure",
    id = "ListVPCAssociationAuthorizationsOutput",
    members = {
        HostedZoneId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        NextToken = {
            type = "string",
        },
        VPCs = {
            type = "list",
            member = M.VPC,
            traits = {
                required = true,
            },
        },
    },
}

M.TestDNSAnswerInput = {
    type = "structure",
    id = "TestDNSAnswerInput",
    members = {
        HostedZoneId = {
            type = "string",
            traits = {
                http_query = "hostedzoneid",
                required = true,
            },
        },
        RecordName = {
            type = "string",
            traits = {
                http_query = "recordname",
                required = true,
            },
        },
        RecordType = {
            type = "string",
            traits = {
                http_query = "recordtype",
                required = true,
            },
        },
        ResolverIP = {
            type = "string",
            traits = {
                http_query = "resolverip",
            },
        },
        EDNS0ClientSubnetIP = {
            type = "string",
            traits = {
                http_query = "edns0clientsubnetip",
            },
        },
        EDNS0ClientSubnetMask = {
            type = "string",
            traits = {
                http_query = "edns0clientsubnetmask",
            },
        },
    },
}

M.TestDNSAnswerOutput = {
    type = "structure",
    id = "TestDNSAnswerOutput",
    members = {
        Nameserver = {
            type = "string",
            traits = {
                required = true,
            },
        },
        RecordName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        RecordType = {
            type = "string",
            traits = {
                required = true,
            },
        },
        RecordData = {
            type = "list",
            member = { type = "string" },
            traits = {
                required = true,
            },
        },
        ResponseCode = {
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

M.HealthCheckVersionMismatch = {
    type = "structure",
    id = "HealthCheckVersionMismatch",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.ResettableElementName = {
    FullyQualifiedDomainName = "FullyQualifiedDomainName",
    Regions = "Regions",
    ResourcePath = "ResourcePath",
    ChildHealthChecks = "ChildHealthChecks",
}

M.UpdateHealthCheckInput = {
    type = "structure",
    id = "UpdateHealthCheckInput",
    members = {
        HealthCheckId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        HealthCheckVersion = {
            type = "long",
        },
        IPAddress = {
            type = "string",
        },
        Port = {
            type = "integer",
        },
        ResourcePath = {
            type = "string",
        },
        FullyQualifiedDomainName = {
            type = "string",
        },
        SearchString = {
            type = "string",
        },
        FailureThreshold = {
            type = "integer",
        },
        Inverted = {
            type = "boolean",
        },
        Disabled = {
            type = "boolean",
        },
        HealthThreshold = {
            type = "integer",
        },
        ChildHealthChecks = {
            type = "list",
            member = { type = "string" },
        },
        EnableSNI = {
            type = "boolean",
        },
        Regions = {
            type = "list",
            member = { type = "string" },
        },
        AlarmIdentifier = M.AlarmIdentifier,
        InsufficientDataHealthStatus = {
            type = "string",
        },
        ResetElements = {
            type = "list",
            member = { type = "string" },
        },
    },
}

M.UpdateHealthCheckOutput = {
    type = "structure",
    id = "UpdateHealthCheckOutput",
    members = {
        HealthCheck = setmetatable({ traits = {
            required = true,
        } }, { __index = M.HealthCheck }),
    },
}

M.UpdateHostedZoneCommentInput = {
    type = "structure",
    id = "UpdateHostedZoneCommentInput",
    members = {
        Id = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        Comment = {
            type = "string",
        },
    },
}

M.UpdateHostedZoneCommentOutput = {
    type = "structure",
    id = "UpdateHostedZoneCommentOutput",
    members = {
        HostedZone = setmetatable({ traits = {
            required = true,
        } }, { __index = M.HostedZone }),
    },
}

M.UpdateHostedZoneFeaturesInput = {
    type = "structure",
    id = "UpdateHostedZoneFeaturesInput",
    members = {
        HostedZoneId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        EnableAcceleratedRecovery = {
            type = "boolean",
        },
    },
}

M.UpdateHostedZoneFeaturesOutput = {
    type = "structure",
    id = "UpdateHostedZoneFeaturesOutput",
}

M.UpdateTrafficPolicyCommentInput = {
    type = "structure",
    id = "UpdateTrafficPolicyCommentInput",
    members = {
        Id = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        Version = {
            type = "integer",
            traits = {
                http_label = true,
                required = true,
            },
        },
        Comment = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.UpdateTrafficPolicyCommentOutput = {
    type = "structure",
    id = "UpdateTrafficPolicyCommentOutput",
    members = {
        TrafficPolicy = setmetatable({ traits = {
            required = true,
        } }, { __index = M.TrafficPolicy }),
    },
}

M.ConflictingTypes = {
    type = "structure",
    id = "ConflictingTypes",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.UpdateTrafficPolicyInstanceInput = {
    type = "structure",
    id = "UpdateTrafficPolicyInstanceInput",
    members = {
        Id = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        TTL = {
            type = "long",
            traits = {
                required = true,
            },
        },
        TrafficPolicyId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        TrafficPolicyVersion = {
            type = "integer",
            traits = {
                required = true,
            },
        },
    },
}

M.UpdateTrafficPolicyInstanceOutput = {
    type = "structure",
    id = "UpdateTrafficPolicyInstanceOutput",
    members = {
        TrafficPolicyInstance = setmetatable({ traits = {
            required = true,
        } }, { __index = M.TrafficPolicyInstance }),
    },
}

return M
