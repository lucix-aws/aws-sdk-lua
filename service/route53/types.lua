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
    members = {
        Type = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Value = {
            type = "number",
            traits = {
                required = true,
            },
        },
    },
}

M.ActivateKeySigningKeyInput = {
    type = "structure",
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
    members = {
        ChangeInfo = {
            type = "structure",
            traits = {
                required = true,
            },
        },
    },
}

M.ConcurrentModification = {
    type = "structure",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.InvalidInput = {
    type = "structure",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.InvalidKeySigningKeyStatus = {
    type = "structure",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.InvalidKMSArn = {
    type = "structure",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.InvalidSigningStatus = {
    type = "structure",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.NoSuchKeySigningKey = {
    type = "structure",
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
    members = {
        HostedZoneId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        VPC = {
            type = "structure",
            traits = {
                required = true,
            },
        },
        Comment = {
            type = "string",
        },
    },
}

M.AssociateVPCWithHostedZoneOutput = {
    type = "structure",
    members = {
        ChangeInfo = {
            type = "structure",
            traits = {
                required = true,
            },
        },
    },
}

M.ConflictingDomainExists = {
    type = "structure",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.InvalidVPCId = {
    type = "structure",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.LimitsExceeded = {
    type = "structure",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.NoSuchHostedZone = {
    type = "structure",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.NotAuthorizedException = {
    type = "structure",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.PriorRequestNotComplete = {
    type = "structure",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.PublicZoneVPCAssociation = {
    type = "structure",
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
            member_type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.ChangeCidrCollectionInput = {
    type = "structure",
    members = {
        Id = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        CollectionVersion = {
            type = "number",
        },
        Changes = {
            type = "list",
            member_type = "structure",
            traits = {
                required = true,
            },
        },
    },
}

M.ChangeCidrCollectionOutput = {
    type = "structure",
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
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.CidrCollectionVersionMismatchException = {
    type = "structure",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.NoSuchCidrCollectionException = {
    type = "structure",
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
    members = {
        AWSRegion = {
            type = "string",
        },
        LocalZoneGroup = {
            type = "string",
        },
        Coordinates = {
            type = "structure",
        },
        Bias = {
            type = "number",
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
            type = "number",
        },
        Region = {
            type = "string",
        },
        GeoLocation = {
            type = "structure",
        },
        Failover = {
            type = "string",
        },
        MultiValueAnswer = {
            type = "boolean",
        },
        TTL = {
            type = "number",
        },
        ResourceRecords = {
            type = "list",
            member_type = "structure",
        },
        AliasTarget = {
            type = "structure",
        },
        HealthCheckId = {
            type = "string",
        },
        TrafficPolicyInstanceId = {
            type = "string",
        },
        CidrRoutingConfig = {
            type = "structure",
        },
        GeoProximityLocation = {
            type = "structure",
        },
    },
}

M.Change = {
    type = "structure",
    members = {
        Action = {
            type = "string",
            traits = {
                required = true,
            },
        },
        ResourceRecordSet = {
            type = "structure",
            traits = {
                required = true,
            },
        },
    },
}

M.ChangeBatch = {
    type = "structure",
    members = {
        Comment = {
            type = "string",
        },
        Changes = {
            type = "list",
            member_type = "structure",
            traits = {
                required = true,
            },
        },
    },
}

M.ChangeResourceRecordSetsInput = {
    type = "structure",
    members = {
        HostedZoneId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        ChangeBatch = {
            type = "structure",
            traits = {
                required = true,
            },
        },
    },
}

M.ChangeResourceRecordSetsOutput = {
    type = "structure",
    members = {
        ChangeInfo = {
            type = "structure",
            traits = {
                required = true,
            },
        },
    },
}

M.InvalidChangeBatch = {
    type = "structure",
    error = "client",
    members = {
        messages = {
            type = "list",
            member_type = "string",
        },
        message = {
            type = "string",
        },
    },
}

M.NoSuchHealthCheck = {
    type = "structure",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.Tag = {
    type = "structure",
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
            member_type = "structure",
        },
        RemoveTagKeys = {
            type = "list",
            member_type = "string",
        },
    },
}

M.ChangeTagsForResourceOutput = {
    type = "structure",
}

M.ThrottlingException = {
    type = "structure",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.CidrCollectionAlreadyExistsException = {
    type = "structure",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.CreateCidrCollectionInput = {
    type = "structure",
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
            type = "number",
        },
    },
}

M.CreateCidrCollectionOutput = {
    type = "structure",
    members = {
        Collection = {
            type = "structure",
        },
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
    members = {
        IPAddress = {
            type = "string",
        },
        Port = {
            type = "number",
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
            type = "number",
        },
        FailureThreshold = {
            type = "number",
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
            type = "number",
        },
        ChildHealthChecks = {
            type = "list",
            member_type = "string",
        },
        EnableSNI = {
            type = "boolean",
        },
        Regions = {
            type = "list",
            member_type = "string",
        },
        AlarmIdentifier = {
            type = "structure",
        },
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
    members = {
        CallerReference = {
            type = "string",
            traits = {
                required = true,
            },
        },
        HealthCheckConfig = {
            type = "structure",
            traits = {
                required = true,
            },
        },
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
    members = {
        EvaluationPeriods = {
            type = "number",
            traits = {
                required = true,
            },
        },
        Threshold = {
            type = "number",
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
            type = "number",
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
            member_type = "structure",
        },
    },
}

M.LinkedService = {
    type = "structure",
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
        LinkedService = {
            type = "structure",
        },
        HealthCheckConfig = {
            type = "structure",
            traits = {
                required = true,
            },
        },
        HealthCheckVersion = {
            type = "number",
            traits = {
                required = true,
            },
        },
        CloudWatchAlarmConfiguration = {
            type = "structure",
        },
    },
}

M.CreateHealthCheckOutput = {
    type = "structure",
    members = {
        HealthCheck = {
            type = "structure",
            traits = {
                required = true,
            },
        },
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
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.TooManyHealthChecks = {
    type = "structure",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.HostedZoneConfig = {
    type = "structure",
    members = {
        Comment = {
            type = "string",
        },
        PrivateZone = {
            type = "boolean",
        },
    },
}

M.CreateHostedZoneInput = {
    type = "structure",
    members = {
        Name = {
            type = "string",
            traits = {
                required = true,
            },
        },
        VPC = {
            type = "structure",
        },
        CallerReference = {
            type = "string",
            traits = {
                required = true,
            },
        },
        HostedZoneConfig = {
            type = "structure",
        },
        DelegationSetId = {
            type = "string",
        },
    },
}

M.DelegationSet = {
    type = "structure",
    members = {
        Id = {
            type = "string",
        },
        CallerReference = {
            type = "string",
        },
        NameServers = {
            type = "list",
            member_type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.HostedZoneFailureReasons = {
    type = "structure",
    members = {
        AcceleratedRecovery = {
            type = "string",
        },
    },
}

M.HostedZoneFeatures = {
    type = "structure",
    members = {
        AcceleratedRecoveryStatus = {
            type = "string",
        },
        FailureReasons = {
            type = "structure",
        },
    },
}

M.HostedZone = {
    type = "structure",
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
        Config = {
            type = "structure",
        },
        ResourceRecordSetCount = {
            type = "number",
        },
        LinkedService = {
            type = "structure",
        },
        Features = {
            type = "structure",
        },
    },
}

M.CreateHostedZoneOutput = {
    type = "structure",
    members = {
        HostedZone = {
            type = "structure",
            traits = {
                required = true,
            },
        },
        ChangeInfo = {
            type = "structure",
            traits = {
                required = true,
            },
        },
        DelegationSet = {
            type = "structure",
            traits = {
                required = true,
            },
        },
        VPC = {
            type = "structure",
        },
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
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.DelegationSetNotReusable = {
    type = "structure",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.HostedZoneAlreadyExists = {
    type = "structure",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.InvalidDomainName = {
    type = "structure",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.NoSuchDelegationSet = {
    type = "structure",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.TooManyHostedZones = {
    type = "structure",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.CreateKeySigningKeyInput = {
    type = "structure",
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
    members = {
        Name = {
            type = "string",
        },
        KmsArn = {
            type = "string",
        },
        Flag = {
            type = "number",
        },
        SigningAlgorithmMnemonic = {
            type = "string",
        },
        SigningAlgorithmType = {
            type = "number",
        },
        DigestAlgorithmMnemonic = {
            type = "string",
        },
        DigestAlgorithmType = {
            type = "number",
        },
        KeyTag = {
            type = "number",
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
    members = {
        ChangeInfo = {
            type = "structure",
            traits = {
                required = true,
            },
        },
        KeySigningKey = {
            type = "structure",
            traits = {
                required = true,
            },
        },
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
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.InvalidKeySigningKeyName = {
    type = "structure",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.KeySigningKeyAlreadyExists = {
    type = "structure",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.TooManyKeySigningKeys = {
    type = "structure",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.CreateQueryLoggingConfigInput = {
    type = "structure",
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
    members = {
        QueryLoggingConfig = {
            type = "structure",
            traits = {
                required = true,
            },
        },
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
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.NoSuchCloudWatchLogsLogGroup = {
    type = "structure",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.QueryLoggingConfigAlreadyExists = {
    type = "structure",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.CreateReusableDelegationSetInput = {
    type = "structure",
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
    members = {
        DelegationSet = {
            type = "structure",
            traits = {
                required = true,
            },
        },
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
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.DelegationSetAlreadyReusable = {
    type = "structure",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.HostedZoneNotFound = {
    type = "structure",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.CreateTrafficPolicyInput = {
    type = "structure",
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
    members = {
        Id = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Version = {
            type = "number",
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
    members = {
        TrafficPolicy = {
            type = "structure",
            traits = {
                required = true,
            },
        },
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
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.TooManyTrafficPolicies = {
    type = "structure",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.TrafficPolicyAlreadyExists = {
    type = "structure",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.CreateTrafficPolicyInstanceInput = {
    type = "structure",
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
            type = "number",
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
            type = "number",
            traits = {
                required = true,
            },
        },
    },
}

M.TrafficPolicyInstance = {
    type = "structure",
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
            type = "number",
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
            type = "number",
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
    members = {
        TrafficPolicyInstance = {
            type = "structure",
            traits = {
                required = true,
            },
        },
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
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.TooManyTrafficPolicyInstances = {
    type = "structure",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.TrafficPolicyInstanceAlreadyExists = {
    type = "structure",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.CreateTrafficPolicyVersionInput = {
    type = "structure",
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
    members = {
        TrafficPolicy = {
            type = "structure",
            traits = {
                required = true,
            },
        },
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
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.CreateVPCAssociationAuthorizationInput = {
    type = "structure",
    members = {
        HostedZoneId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        VPC = {
            type = "structure",
            traits = {
                required = true,
            },
        },
    },
}

M.CreateVPCAssociationAuthorizationOutput = {
    type = "structure",
    members = {
        HostedZoneId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        VPC = {
            type = "structure",
            traits = {
                required = true,
            },
        },
    },
}

M.TooManyVPCAssociationAuthorizations = {
    type = "structure",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.DeactivateKeySigningKeyInput = {
    type = "structure",
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
    members = {
        ChangeInfo = {
            type = "structure",
            traits = {
                required = true,
            },
        },
    },
}

M.KeySigningKeyInParentDSRecord = {
    type = "structure",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.KeySigningKeyInUse = {
    type = "structure",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.CidrCollectionInUseException = {
    type = "structure",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.DeleteCidrCollectionInput = {
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

M.DeleteCidrCollectionOutput = {
    type = "structure",
}

M.DeleteHealthCheckInput = {
    type = "structure",
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
}

M.HealthCheckInUse = {
    type = "structure",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.DeleteHostedZoneInput = {
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

M.DeleteHostedZoneOutput = {
    type = "structure",
    members = {
        ChangeInfo = {
            type = "structure",
            traits = {
                required = true,
            },
        },
    },
}

M.HostedZoneNotEmpty = {
    type = "structure",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.DeleteKeySigningKeyInput = {
    type = "structure",
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
    members = {
        ChangeInfo = {
            type = "structure",
            traits = {
                required = true,
            },
        },
    },
}

M.DeleteQueryLoggingConfigInput = {
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

M.DeleteQueryLoggingConfigOutput = {
    type = "structure",
}

M.NoSuchQueryLoggingConfig = {
    type = "structure",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.DelegationSetInUse = {
    type = "structure",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.DeleteReusableDelegationSetInput = {
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

M.DeleteReusableDelegationSetOutput = {
    type = "structure",
}

M.DeleteTrafficPolicyInput = {
    type = "structure",
    members = {
        Id = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        Version = {
            type = "number",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.DeleteTrafficPolicyOutput = {
    type = "structure",
}

M.TrafficPolicyInUse = {
    type = "structure",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.DeleteTrafficPolicyInstanceInput = {
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

M.DeleteTrafficPolicyInstanceOutput = {
    type = "structure",
}

M.NoSuchTrafficPolicyInstance = {
    type = "structure",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.DeleteVPCAssociationAuthorizationInput = {
    type = "structure",
    members = {
        HostedZoneId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        VPC = {
            type = "structure",
            traits = {
                required = true,
            },
        },
    },
}

M.DeleteVPCAssociationAuthorizationOutput = {
    type = "structure",
}

M.VPCAssociationAuthorizationNotFound = {
    type = "structure",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.DisableHostedZoneDNSSECInput = {
    type = "structure",
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
    members = {
        ChangeInfo = {
            type = "structure",
            traits = {
                required = true,
            },
        },
    },
}

M.DNSSECNotFound = {
    type = "structure",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.DisassociateVPCFromHostedZoneInput = {
    type = "structure",
    members = {
        HostedZoneId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        VPC = {
            type = "structure",
            traits = {
                required = true,
            },
        },
        Comment = {
            type = "string",
        },
    },
}

M.DisassociateVPCFromHostedZoneOutput = {
    type = "structure",
    members = {
        ChangeInfo = {
            type = "structure",
            traits = {
                required = true,
            },
        },
    },
}

M.LastVPCAssociation = {
    type = "structure",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.VPCAssociationNotFound = {
    type = "structure",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.EnableHostedZoneDNSSECInput = {
    type = "structure",
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
    members = {
        ChangeInfo = {
            type = "structure",
            traits = {
                required = true,
            },
        },
    },
}

M.HostedZonePartiallyDelegated = {
    type = "structure",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.KeySigningKeyWithActiveStatusNotFound = {
    type = "structure",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.GetAccountLimitInput = {
    type = "structure",
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
    members = {
        Limit = {
            type = "structure",
            traits = {
                required = true,
            },
        },
        Count = {
            type = "number",
            traits = {
                required = true,
            },
        },
    },
}

M.GetChangeInput = {
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

M.GetChangeOutput = {
    type = "structure",
    members = {
        ChangeInfo = {
            type = "structure",
            traits = {
                required = true,
            },
        },
    },
}

M.NoSuchChange = {
    type = "structure",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.GetCheckerIpRangesInput = {
    type = "structure",
}

M.GetCheckerIpRangesOutput = {
    type = "structure",
    members = {
        CheckerIpRanges = {
            type = "list",
            member_type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.GetDNSSECInput = {
    type = "structure",
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
    members = {
        Status = {
            type = "structure",
            traits = {
                required = true,
            },
        },
        KeySigningKeys = {
            type = "list",
            member_type = "structure",
            traits = {
                required = true,
            },
        },
    },
}

M.GetGeoLocationInput = {
    type = "structure",
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
    members = {
        GeoLocationDetails = {
            type = "structure",
            traits = {
                required = true,
            },
        },
    },
}

M.NoSuchGeoLocation = {
    type = "structure",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.GetHealthCheckInput = {
    type = "structure",
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
    members = {
        HealthCheck = {
            type = "structure",
            traits = {
                required = true,
            },
        },
    },
}

M.IncompatibleVersion = {
    type = "structure",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.GetHealthCheckCountInput = {
    type = "structure",
}

M.GetHealthCheckCountOutput = {
    type = "structure",
    members = {
        HealthCheckCount = {
            type = "number",
            traits = {
                required = true,
            },
        },
    },
}

M.GetHealthCheckLastFailureReasonInput = {
    type = "structure",
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
    members = {
        Region = {
            type = "string",
        },
        IPAddress = {
            type = "string",
        },
        StatusReport = {
            type = "structure",
        },
    },
}

M.GetHealthCheckLastFailureReasonOutput = {
    type = "structure",
    members = {
        HealthCheckObservations = {
            type = "list",
            member_type = "structure",
            traits = {
                required = true,
            },
        },
    },
}

M.GetHealthCheckStatusInput = {
    type = "structure",
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
    members = {
        HealthCheckObservations = {
            type = "list",
            member_type = "structure",
            traits = {
                required = true,
            },
        },
    },
}

M.GetHostedZoneInput = {
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

M.GetHostedZoneOutput = {
    type = "structure",
    members = {
        HostedZone = {
            type = "structure",
            traits = {
                required = true,
            },
        },
        DelegationSet = {
            type = "structure",
        },
        VPCs = {
            type = "list",
            member_type = "structure",
        },
    },
}

M.GetHostedZoneCountInput = {
    type = "structure",
}

M.GetHostedZoneCountOutput = {
    type = "structure",
    members = {
        HostedZoneCount = {
            type = "number",
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
    members = {
        Type = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Value = {
            type = "number",
            traits = {
                required = true,
            },
        },
    },
}

M.GetHostedZoneLimitOutput = {
    type = "structure",
    members = {
        Limit = {
            type = "structure",
            traits = {
                required = true,
            },
        },
        Count = {
            type = "number",
            traits = {
                required = true,
            },
        },
    },
}

M.HostedZoneNotPrivate = {
    type = "structure",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.GetQueryLoggingConfigInput = {
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

M.GetQueryLoggingConfigOutput = {
    type = "structure",
    members = {
        QueryLoggingConfig = {
            type = "structure",
            traits = {
                required = true,
            },
        },
    },
}

M.GetReusableDelegationSetInput = {
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

M.GetReusableDelegationSetOutput = {
    type = "structure",
    members = {
        DelegationSet = {
            type = "structure",
            traits = {
                required = true,
            },
        },
    },
}

M.ReusableDelegationSetLimitType = {
    MAX_ZONES_BY_REUSABLE_DELEGATION_SET = "MAX_ZONES_BY_REUSABLE_DELEGATION_SET",
}

M.GetReusableDelegationSetLimitInput = {
    type = "structure",
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
    members = {
        Type = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Value = {
            type = "number",
            traits = {
                required = true,
            },
        },
    },
}

M.GetReusableDelegationSetLimitOutput = {
    type = "structure",
    members = {
        Limit = {
            type = "structure",
            traits = {
                required = true,
            },
        },
        Count = {
            type = "number",
            traits = {
                required = true,
            },
        },
    },
}

M.GetTrafficPolicyInput = {
    type = "structure",
    members = {
        Id = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        Version = {
            type = "number",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.GetTrafficPolicyOutput = {
    type = "structure",
    members = {
        TrafficPolicy = {
            type = "structure",
            traits = {
                required = true,
            },
        },
    },
}

M.GetTrafficPolicyInstanceInput = {
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

M.GetTrafficPolicyInstanceOutput = {
    type = "structure",
    members = {
        TrafficPolicyInstance = {
            type = "structure",
            traits = {
                required = true,
            },
        },
    },
}

M.GetTrafficPolicyInstanceCountInput = {
    type = "structure",
}

M.GetTrafficPolicyInstanceCountOutput = {
    type = "structure",
    members = {
        TrafficPolicyInstanceCount = {
            type = "number",
            traits = {
                required = true,
            },
        },
    },
}

M.ListCidrBlocksInput = {
    type = "structure",
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
            type = "number",
            traits = {
                http_query = "maxresults",
            },
        },
    },
}

M.CidrBlockSummary = {
    type = "structure",
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
    members = {
        NextToken = {
            type = "string",
        },
        CidrBlocks = {
            type = "list",
            member_type = "structure",
        },
    },
}

M.NoSuchCidrLocationException = {
    type = "structure",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.ListCidrCollectionsInput = {
    type = "structure",
    members = {
        NextToken = {
            type = "string",
            traits = {
                http_query = "nexttoken",
            },
        },
        MaxResults = {
            type = "number",
            traits = {
                http_query = "maxresults",
            },
        },
    },
}

M.CollectionSummary = {
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
        Version = {
            type = "number",
        },
    },
}

M.ListCidrCollectionsOutput = {
    type = "structure",
    members = {
        NextToken = {
            type = "string",
        },
        CidrCollections = {
            type = "list",
            member_type = "structure",
        },
    },
}

M.ListCidrLocationsInput = {
    type = "structure",
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
            type = "number",
            traits = {
                http_query = "maxresults",
            },
        },
    },
}

M.LocationSummary = {
    type = "structure",
    members = {
        LocationName = {
            type = "string",
        },
    },
}

M.ListCidrLocationsOutput = {
    type = "structure",
    members = {
        NextToken = {
            type = "string",
        },
        CidrLocations = {
            type = "list",
            member_type = "structure",
        },
    },
}

M.ListGeoLocationsInput = {
    type = "structure",
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
            type = "number",
            traits = {
                http_query = "maxitems",
            },
        },
    },
}

M.ListGeoLocationsOutput = {
    type = "structure",
    members = {
        GeoLocationDetailsList = {
            type = "list",
            member_type = "structure",
            traits = {
                required = true,
            },
        },
        IsTruncated = {
            type = "boolean",
            traits = {
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
            type = "number",
            traits = {
                required = true,
            },
        },
    },
}

M.ListHealthChecksInput = {
    type = "structure",
    members = {
        Marker = {
            type = "string",
            traits = {
                http_query = "marker",
            },
        },
        MaxItems = {
            type = "number",
            traits = {
                http_query = "maxitems",
            },
        },
    },
}

M.ListHealthChecksOutput = {
    type = "structure",
    members = {
        HealthChecks = {
            type = "list",
            member_type = "structure",
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
                required = true,
            },
        },
        NextMarker = {
            type = "string",
        },
        MaxItems = {
            type = "number",
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
    members = {
        Marker = {
            type = "string",
            traits = {
                http_query = "marker",
            },
        },
        MaxItems = {
            type = "number",
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
    members = {
        HostedZones = {
            type = "list",
            member_type = "structure",
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
                required = true,
            },
        },
        NextMarker = {
            type = "string",
        },
        MaxItems = {
            type = "number",
            traits = {
                required = true,
            },
        },
    },
}

M.ListHostedZonesByNameInput = {
    type = "structure",
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
            type = "number",
            traits = {
                http_query = "maxitems",
            },
        },
    },
}

M.ListHostedZonesByNameOutput = {
    type = "structure",
    members = {
        HostedZones = {
            type = "list",
            member_type = "structure",
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
            type = "number",
            traits = {
                required = true,
            },
        },
    },
}

M.InvalidPaginationToken = {
    type = "structure",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.ListHostedZonesByVPCInput = {
    type = "structure",
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
            type = "number",
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
        Owner = {
            type = "structure",
            traits = {
                required = true,
            },
        },
    },
}

M.ListHostedZonesByVPCOutput = {
    type = "structure",
    members = {
        HostedZoneSummaries = {
            type = "list",
            member_type = "structure",
            traits = {
                required = true,
            },
        },
        MaxItems = {
            type = "number",
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
            type = "number",
            traits = {
                http_query = "maxresults",
            },
        },
    },
}

M.ListQueryLoggingConfigsOutput = {
    type = "structure",
    members = {
        QueryLoggingConfigs = {
            type = "list",
            member_type = "structure",
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
            type = "number",
            traits = {
                http_query = "maxitems",
            },
        },
    },
}

M.ListResourceRecordSetsOutput = {
    type = "structure",
    members = {
        ResourceRecordSets = {
            type = "list",
            member_type = "structure",
            traits = {
                required = true,
            },
        },
        IsTruncated = {
            type = "boolean",
            traits = {
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
            type = "number",
            traits = {
                required = true,
            },
        },
    },
}

M.ListReusableDelegationSetsInput = {
    type = "structure",
    members = {
        Marker = {
            type = "string",
            traits = {
                http_query = "marker",
            },
        },
        MaxItems = {
            type = "number",
            traits = {
                http_query = "maxitems",
            },
        },
    },
}

M.ListReusableDelegationSetsOutput = {
    type = "structure",
    members = {
        DelegationSets = {
            type = "list",
            member_type = "structure",
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
                required = true,
            },
        },
        NextMarker = {
            type = "string",
        },
        MaxItems = {
            type = "number",
            traits = {
                required = true,
            },
        },
    },
}

M.ListTagsForResourceInput = {
    type = "structure",
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
    members = {
        ResourceType = {
            type = "string",
        },
        ResourceId = {
            type = "string",
        },
        Tags = {
            type = "list",
            member_type = "structure",
        },
    },
}

M.ListTagsForResourceOutput = {
    type = "structure",
    members = {
        ResourceTagSet = {
            type = "structure",
            traits = {
                required = true,
            },
        },
    },
}

M.ListTagsForResourcesInput = {
    type = "structure",
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
            member_type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.ListTagsForResourcesOutput = {
    type = "structure",
    members = {
        ResourceTagSets = {
            type = "list",
            member_type = "structure",
            traits = {
                required = true,
            },
        },
    },
}

M.ListTrafficPoliciesInput = {
    type = "structure",
    members = {
        TrafficPolicyIdMarker = {
            type = "string",
            traits = {
                http_query = "trafficpolicyid",
            },
        },
        MaxItems = {
            type = "number",
            traits = {
                http_query = "maxitems",
            },
        },
    },
}

M.TrafficPolicySummary = {
    type = "structure",
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
            type = "number",
            traits = {
                required = true,
            },
        },
        TrafficPolicyCount = {
            type = "number",
            traits = {
                required = true,
            },
        },
    },
}

M.ListTrafficPoliciesOutput = {
    type = "structure",
    members = {
        TrafficPolicySummaries = {
            type = "list",
            member_type = "structure",
            traits = {
                required = true,
            },
        },
        IsTruncated = {
            type = "boolean",
            traits = {
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
            type = "number",
            traits = {
                required = true,
            },
        },
    },
}

M.ListTrafficPolicyInstancesInput = {
    type = "structure",
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
            type = "number",
            traits = {
                http_query = "maxitems",
            },
        },
    },
}

M.ListTrafficPolicyInstancesOutput = {
    type = "structure",
    members = {
        TrafficPolicyInstances = {
            type = "list",
            member_type = "structure",
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
                required = true,
            },
        },
        MaxItems = {
            type = "number",
            traits = {
                required = true,
            },
        },
    },
}

M.ListTrafficPolicyInstancesByHostedZoneInput = {
    type = "structure",
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
            type = "number",
            traits = {
                http_query = "maxitems",
            },
        },
    },
}

M.ListTrafficPolicyInstancesByHostedZoneOutput = {
    type = "structure",
    members = {
        TrafficPolicyInstances = {
            type = "list",
            member_type = "structure",
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
                required = true,
            },
        },
        MaxItems = {
            type = "number",
            traits = {
                required = true,
            },
        },
    },
}

M.ListTrafficPolicyInstancesByPolicyInput = {
    type = "structure",
    members = {
        TrafficPolicyId = {
            type = "string",
            traits = {
                http_query = "id",
                required = true,
            },
        },
        TrafficPolicyVersion = {
            type = "number",
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
            type = "number",
            traits = {
                http_query = "maxitems",
            },
        },
    },
}

M.ListTrafficPolicyInstancesByPolicyOutput = {
    type = "structure",
    members = {
        TrafficPolicyInstances = {
            type = "list",
            member_type = "structure",
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
                required = true,
            },
        },
        MaxItems = {
            type = "number",
            traits = {
                required = true,
            },
        },
    },
}

M.ListTrafficPolicyVersionsInput = {
    type = "structure",
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
            type = "number",
            traits = {
                http_query = "maxitems",
            },
        },
    },
}

M.ListTrafficPolicyVersionsOutput = {
    type = "structure",
    members = {
        TrafficPolicies = {
            type = "list",
            member_type = "structure",
            traits = {
                required = true,
            },
        },
        IsTruncated = {
            type = "boolean",
            traits = {
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
            type = "number",
            traits = {
                required = true,
            },
        },
    },
}

M.ListVPCAssociationAuthorizationsInput = {
    type = "structure",
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
            type = "number",
            traits = {
                http_query = "maxresults",
            },
        },
    },
}

M.ListVPCAssociationAuthorizationsOutput = {
    type = "structure",
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
            member_type = "structure",
            traits = {
                required = true,
            },
        },
    },
}

M.TestDNSAnswerInput = {
    type = "structure",
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
            member_type = "string",
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
    members = {
        HealthCheckId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        HealthCheckVersion = {
            type = "number",
        },
        IPAddress = {
            type = "string",
        },
        Port = {
            type = "number",
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
            type = "number",
        },
        Inverted = {
            type = "boolean",
        },
        Disabled = {
            type = "boolean",
        },
        HealthThreshold = {
            type = "number",
        },
        ChildHealthChecks = {
            type = "list",
            member_type = "string",
        },
        EnableSNI = {
            type = "boolean",
        },
        Regions = {
            type = "list",
            member_type = "string",
        },
        AlarmIdentifier = {
            type = "structure",
        },
        InsufficientDataHealthStatus = {
            type = "string",
        },
        ResetElements = {
            type = "list",
            member_type = "string",
        },
    },
}

M.UpdateHealthCheckOutput = {
    type = "structure",
    members = {
        HealthCheck = {
            type = "structure",
            traits = {
                required = true,
            },
        },
    },
}

M.UpdateHostedZoneCommentInput = {
    type = "structure",
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
    members = {
        HostedZone = {
            type = "structure",
            traits = {
                required = true,
            },
        },
    },
}

M.UpdateHostedZoneFeaturesInput = {
    type = "structure",
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
}

M.UpdateTrafficPolicyCommentInput = {
    type = "structure",
    members = {
        Id = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        Version = {
            type = "number",
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
    members = {
        TrafficPolicy = {
            type = "structure",
            traits = {
                required = true,
            },
        },
    },
}

M.ConflictingTypes = {
    type = "structure",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.UpdateTrafficPolicyInstanceInput = {
    type = "structure",
    members = {
        Id = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        TTL = {
            type = "number",
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
            type = "number",
            traits = {
                required = true,
            },
        },
    },
}

M.UpdateTrafficPolicyInstanceOutput = {
    type = "structure",
    members = {
        TrafficPolicyInstance = {
            type = "structure",
            traits = {
                required = true,
            },
        },
    },
}

return M
