local M = {}

M.AcceptAdministratorInvitationInput = {
    type = "structure",
    members = {
        DetectorId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        AdministratorId = {
            type = "string",
            traits = {
                json_name = "administratorId",
                required = true,
            },
        },
        InvitationId = {
            type = "string",
            traits = {
                json_name = "invitationId",
                required = true,
            },
        },
    },
}

M.AcceptAdministratorInvitationOutput = {
    type = "structure",
}

M.BadRequestException = {
    type = "structure",
    error = "client",
    members = {
        Message = {
            type = "string",
            traits = {
                json_name = "message",
            },
        },
        Type = {
            type = "string",
            traits = {
                json_name = "type",
            },
        },
    },
}

M.InternalServerErrorException = {
    type = "structure",
    error = "server",
    members = {
        Message = {
            type = "string",
            traits = {
                json_name = "message",
            },
        },
        Type = {
            type = "string",
            traits = {
                json_name = "type",
            },
        },
    },
}

M.AcceptInvitationInput = {
    type = "structure",
    members = {
        DetectorId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        MasterId = {
            type = "string",
            traits = {
                json_name = "masterId",
                required = true,
            },
        },
        InvitationId = {
            type = "string",
            traits = {
                json_name = "invitationId",
                required = true,
            },
        },
    },
}

M.AcceptInvitationOutput = {
    type = "structure",
}

M.AccessControlList = {
    type = "structure",
    members = {
        AllowsPublicReadAccess = {
            type = "boolean",
            traits = {
                json_name = "allowsPublicReadAccess",
            },
        },
        AllowsPublicWriteAccess = {
            type = "boolean",
            traits = {
                json_name = "allowsPublicWriteAccess",
            },
        },
    },
}

M.AccessDeniedException = {
    type = "structure",
    error = "client",
    members = {
        Message = {
            type = "string",
            traits = {
                json_name = "message",
            },
        },
        Type = {
            type = "string",
            traits = {
                json_name = "type",
            },
        },
    },
}

M.AccessKey = {
    type = "structure",
    members = {
        PrincipalId = {
            type = "string",
            traits = {
                json_name = "principalId",
            },
        },
        UserName = {
            type = "string",
            traits = {
                json_name = "userName",
            },
        },
        UserType = {
            type = "string",
            traits = {
                json_name = "userType",
            },
        },
    },
}

M.AccessKeyDetails = {
    type = "structure",
    members = {
        AccessKeyId = {
            type = "string",
            traits = {
                json_name = "accessKeyId",
            },
        },
        PrincipalId = {
            type = "string",
            traits = {
                json_name = "principalId",
            },
        },
        UserName = {
            type = "string",
            traits = {
                json_name = "userName",
            },
        },
        UserType = {
            type = "string",
            traits = {
                json_name = "userType",
            },
        },
    },
}

M.Account = {
    type = "structure",
    members = {
        Uid = {
            type = "string",
            traits = {
                json_name = "uid",
                required = true,
            },
        },
        Name = {
            type = "string",
            traits = {
                json_name = "account",
            },
        },
    },
}

M.AccountDetail = {
    type = "structure",
    members = {
        AccountId = {
            type = "string",
            traits = {
                json_name = "accountId",
                required = true,
            },
        },
        Email = {
            type = "string",
            traits = {
                json_name = "email",
                required = true,
            },
        },
    },
}

M.DataSourceFreeTrial = {
    type = "structure",
    members = {
        FreeTrialDaysRemaining = {
            type = "number",
            traits = {
                json_name = "freeTrialDaysRemaining",
            },
        },
    },
}

M.KubernetesDataSourceFreeTrial = {
    type = "structure",
    members = {
        AuditLogs = {
            type = "structure",
            traits = {
                json_name = "auditLogs",
            },
        },
    },
}

M.MalwareProtectionDataSourceFreeTrial = {
    type = "structure",
    members = {
        ScanEc2InstanceWithFindings = {
            type = "structure",
            traits = {
                json_name = "scanEc2InstanceWithFindings",
            },
        },
    },
}

M.DataSourcesFreeTrial = {
    type = "structure",
    members = {
        CloudTrail = {
            type = "structure",
            traits = {
                json_name = "cloudTrail",
            },
        },
        DnsLogs = {
            type = "structure",
            traits = {
                json_name = "dnsLogs",
            },
        },
        FlowLogs = {
            type = "structure",
            traits = {
                json_name = "flowLogs",
            },
        },
        S3Logs = {
            type = "structure",
            traits = {
                json_name = "s3Logs",
            },
        },
        Kubernetes = {
            type = "structure",
            traits = {
                json_name = "kubernetes",
            },
        },
        MalwareProtection = {
            type = "structure",
            traits = {
                json_name = "malwareProtection",
            },
        },
    },
}

M.FreeTrialFeatureResult = {
    FLOW_LOGS = "FLOW_LOGS",
    CLOUD_TRAIL = "CLOUD_TRAIL",
    DNS_LOGS = "DNS_LOGS",
    S3_DATA_EVENTS = "S3_DATA_EVENTS",
    EKS_AUDIT_LOGS = "EKS_AUDIT_LOGS",
    EBS_MALWARE_PROTECTION = "EBS_MALWARE_PROTECTION",
    RDS_LOGIN_EVENTS = "RDS_LOGIN_EVENTS",
    LAMBDA_NETWORK_LOGS = "LAMBDA_NETWORK_LOGS",
    EKS_RUNTIME_MONITORING = "EKS_RUNTIME_MONITORING",
    EC2_RUNTIME_MONITORING = "EC2_RUNTIME_MONITORING",
    FARGATE_RUNTIME_MONITORING = "FARGATE_RUNTIME_MONITORING",
}

M.FreeTrialFeatureConfigurationResult = {
    type = "structure",
    members = {
        Name = {
            type = "string",
            traits = {
                json_name = "name",
            },
        },
        FreeTrialDaysRemaining = {
            type = "number",
            traits = {
                json_name = "freeTrialDaysRemaining",
            },
        },
    },
}

M.AccountFreeTrialInfo = {
    type = "structure",
    members = {
        AccountId = {
            type = "string",
            traits = {
                json_name = "accountId",
            },
        },
        DataSources = {
            type = "structure",
            traits = {
                json_name = "dataSources",
            },
        },
        Features = {
            type = "list",
            member_type = "structure",
            traits = {
                json_name = "features",
            },
        },
    },
}

M.BlockPublicAccess = {
    type = "structure",
    members = {
        IgnorePublicAcls = {
            type = "boolean",
            traits = {
                json_name = "ignorePublicAcls",
            },
        },
        RestrictPublicBuckets = {
            type = "boolean",
            traits = {
                json_name = "restrictPublicBuckets",
            },
        },
        BlockPublicAcls = {
            type = "boolean",
            traits = {
                json_name = "blockPublicAcls",
            },
        },
        BlockPublicPolicy = {
            type = "boolean",
            traits = {
                json_name = "blockPublicPolicy",
            },
        },
    },
}

M.AccountLevelPermissions = {
    type = "structure",
    members = {
        BlockPublicAccess = {
            type = "structure",
            traits = {
                json_name = "blockPublicAccess",
            },
        },
    },
}

M.AccountStatistics = {
    type = "structure",
    members = {
        AccountId = {
            type = "string",
            traits = {
                json_name = "accountId",
            },
        },
        LastGeneratedAt = {
            type = "timestamp",
            traits = {
                json_name = "lastGeneratedAt",
            },
        },
        TotalFindings = {
            type = "number",
            traits = {
                json_name = "totalFindings",
            },
        },
    },
}

M.DomainDetails = {
    type = "structure",
    members = {
        Domain = {
            type = "string",
            traits = {
                json_name = "domain",
            },
        },
    },
}

M.RemoteAccountDetails = {
    type = "structure",
    members = {
        AccountId = {
            type = "string",
            traits = {
                json_name = "accountId",
            },
        },
        Affiliated = {
            type = "boolean",
            traits = {
                json_name = "affiliated",
            },
        },
    },
}

M.City = {
    type = "structure",
    members = {
        CityName = {
            type = "string",
            traits = {
                json_name = "cityName",
            },
        },
    },
}

M.Country = {
    type = "structure",
    members = {
        CountryCode = {
            type = "string",
            traits = {
                json_name = "countryCode",
            },
        },
        CountryName = {
            type = "string",
            traits = {
                json_name = "countryName",
            },
        },
    },
}

M.GeoLocation = {
    type = "structure",
    members = {
        Lat = {
            type = "number",
            traits = {
                json_name = "lat",
            },
        },
        Lon = {
            type = "number",
            traits = {
                json_name = "lon",
            },
        },
    },
}

M.Organization = {
    type = "structure",
    members = {
        Asn = {
            type = "string",
            traits = {
                json_name = "asn",
            },
        },
        AsnOrg = {
            type = "string",
            traits = {
                json_name = "asnOrg",
            },
        },
        Isp = {
            type = "string",
            traits = {
                json_name = "isp",
            },
        },
        Org = {
            type = "string",
            traits = {
                json_name = "org",
            },
        },
    },
}

M.RemoteIpDetails = {
    type = "structure",
    members = {
        City = {
            type = "structure",
            traits = {
                json_name = "city",
            },
        },
        Country = {
            type = "structure",
            traits = {
                json_name = "country",
            },
        },
        GeoLocation = {
            type = "structure",
            traits = {
                json_name = "geoLocation",
            },
        },
        IpAddressV4 = {
            type = "string",
            traits = {
                json_name = "ipAddressV4",
            },
        },
        IpAddressV6 = {
            type = "string",
            traits = {
                json_name = "ipAddressV6",
            },
        },
        Organization = {
            type = "structure",
            traits = {
                json_name = "organization",
            },
        },
    },
}

M.AwsApiCallAction = {
    type = "structure",
    members = {
        Api = {
            type = "string",
            traits = {
                json_name = "api",
            },
        },
        CallerType = {
            type = "string",
            traits = {
                json_name = "callerType",
            },
        },
        DomainDetails = {
            type = "structure",
            traits = {
                json_name = "domainDetails",
            },
        },
        ErrorCode = {
            type = "string",
            traits = {
                json_name = "errorCode",
            },
        },
        UserAgent = {
            type = "string",
            traits = {
                json_name = "userAgent",
            },
        },
        RemoteIpDetails = {
            type = "structure",
            traits = {
                json_name = "remoteIpDetails",
            },
        },
        ServiceName = {
            type = "string",
            traits = {
                json_name = "serviceName",
            },
        },
        RemoteAccountDetails = {
            type = "structure",
            traits = {
                json_name = "remoteAccountDetails",
            },
        },
        AffectedResources = {
            type = "map",
            key_type = "string",
            value_type = "string",
            traits = {
                json_name = "affectedResources",
            },
        },
    },
}

M.DnsRequestAction = {
    type = "structure",
    members = {
        Domain = {
            type = "string",
            traits = {
                json_name = "domain",
            },
        },
        Protocol = {
            type = "string",
            traits = {
                json_name = "protocol",
            },
        },
        Blocked = {
            type = "boolean",
            traits = {
                json_name = "blocked",
            },
        },
        DomainWithSuffix = {
            type = "string",
            traits = {
                json_name = "domainWithSuffix",
            },
        },
        VpcOwnerAccountId = {
            type = "string",
            traits = {
                json_name = "vpcOwnerAccountId",
            },
        },
    },
}

M.KubernetesApiCallAction = {
    type = "structure",
    members = {
        RequestUri = {
            type = "string",
            traits = {
                json_name = "requestUri",
            },
        },
        Verb = {
            type = "string",
            traits = {
                json_name = "verb",
            },
        },
        Resource = {
            type = "string",
            traits = {
                json_name = "resource",
            },
        },
        Subresource = {
            type = "string",
            traits = {
                json_name = "subresource",
            },
        },
        Namespace = {
            type = "string",
            traits = {
                json_name = "namespace",
            },
        },
        ResourceName = {
            type = "string",
            traits = {
                json_name = "resourceName",
            },
        },
        SourceIps = {
            type = "list",
            member_type = "string",
            traits = {
                json_name = "sourceIPs",
            },
        },
        UserAgent = {
            type = "string",
            traits = {
                json_name = "userAgent",
            },
        },
        RemoteIpDetails = {
            type = "structure",
            traits = {
                json_name = "remoteIpDetails",
            },
        },
        StatusCode = {
            type = "number",
            traits = {
                json_name = "statusCode",
            },
        },
        Parameters = {
            type = "string",
            traits = {
                json_name = "parameters",
            },
        },
    },
}

M.KubernetesPermissionCheckedDetails = {
    type = "structure",
    members = {
        Verb = {
            type = "string",
            traits = {
                json_name = "verb",
            },
        },
        Resource = {
            type = "string",
            traits = {
                json_name = "resource",
            },
        },
        Namespace = {
            type = "string",
            traits = {
                json_name = "namespace",
            },
        },
        Allowed = {
            type = "boolean",
            traits = {
                json_name = "allowed",
            },
        },
    },
}

M.KubernetesRoleBindingDetails = {
    type = "structure",
    members = {
        Kind = {
            type = "string",
            traits = {
                json_name = "kind",
            },
        },
        Name = {
            type = "string",
            traits = {
                json_name = "name",
            },
        },
        Uid = {
            type = "string",
            traits = {
                json_name = "uid",
            },
        },
        RoleRefName = {
            type = "string",
            traits = {
                json_name = "roleRefName",
            },
        },
        RoleRefKind = {
            type = "string",
            traits = {
                json_name = "roleRefKind",
            },
        },
    },
}

M.KubernetesRoleDetails = {
    type = "structure",
    members = {
        Kind = {
            type = "string",
            traits = {
                json_name = "kind",
            },
        },
        Name = {
            type = "string",
            traits = {
                json_name = "name",
            },
        },
        Uid = {
            type = "string",
            traits = {
                json_name = "uid",
            },
        },
    },
}

M.LocalIpDetails = {
    type = "structure",
    members = {
        IpAddressV4 = {
            type = "string",
            traits = {
                json_name = "ipAddressV4",
            },
        },
        IpAddressV6 = {
            type = "string",
            traits = {
                json_name = "ipAddressV6",
            },
        },
    },
}

M.LocalPortDetails = {
    type = "structure",
    members = {
        Port = {
            type = "number",
            traits = {
                json_name = "port",
            },
        },
        PortName = {
            type = "string",
            traits = {
                json_name = "portName",
            },
        },
    },
}

M.RemotePortDetails = {
    type = "structure",
    members = {
        Port = {
            type = "number",
            traits = {
                json_name = "port",
            },
        },
        PortName = {
            type = "string",
            traits = {
                json_name = "portName",
            },
        },
    },
}

M.NetworkConnectionAction = {
    type = "structure",
    members = {
        Blocked = {
            type = "boolean",
            traits = {
                json_name = "blocked",
            },
        },
        ConnectionDirection = {
            type = "string",
            traits = {
                json_name = "connectionDirection",
            },
        },
        LocalPortDetails = {
            type = "structure",
            traits = {
                json_name = "localPortDetails",
            },
        },
        Protocol = {
            type = "string",
            traits = {
                json_name = "protocol",
            },
        },
        LocalIpDetails = {
            type = "structure",
            traits = {
                json_name = "localIpDetails",
            },
        },
        LocalNetworkInterface = {
            type = "string",
            traits = {
                json_name = "localNetworkInterface",
            },
        },
        RemoteIpDetails = {
            type = "structure",
            traits = {
                json_name = "remoteIpDetails",
            },
        },
        RemotePortDetails = {
            type = "structure",
            traits = {
                json_name = "remotePortDetails",
            },
        },
    },
}

M.PortProbeDetail = {
    type = "structure",
    members = {
        LocalPortDetails = {
            type = "structure",
            traits = {
                json_name = "localPortDetails",
            },
        },
        LocalIpDetails = {
            type = "structure",
            traits = {
                json_name = "localIpDetails",
            },
        },
        RemoteIpDetails = {
            type = "structure",
            traits = {
                json_name = "remoteIpDetails",
            },
        },
    },
}

M.PortProbeAction = {
    type = "structure",
    members = {
        Blocked = {
            type = "boolean",
            traits = {
                json_name = "blocked",
            },
        },
        PortProbeDetails = {
            type = "list",
            member_type = "structure",
            traits = {
                json_name = "portProbeDetails",
            },
        },
    },
}

M.LoginAttribute = {
    type = "structure",
    members = {
        User = {
            type = "string",
            traits = {
                json_name = "user",
            },
        },
        Application = {
            type = "string",
            traits = {
                json_name = "application",
            },
        },
        FailedLoginAttempts = {
            type = "number",
            traits = {
                json_name = "failedLoginAttempts",
            },
        },
        SuccessfulLoginAttempts = {
            type = "number",
            traits = {
                json_name = "successfulLoginAttempts",
            },
        },
    },
}

M.RdsLoginAttemptAction = {
    type = "structure",
    members = {
        RemoteIpDetails = {
            type = "structure",
            traits = {
                json_name = "remoteIpDetails",
            },
        },
        LoginAttributes = {
            type = "list",
            member_type = "structure",
        },
    },
}

M.Action = {
    type = "structure",
    members = {
        ActionType = {
            type = "string",
            traits = {
                json_name = "actionType",
            },
        },
        AwsApiCallAction = {
            type = "structure",
            traits = {
                json_name = "awsApiCallAction",
            },
        },
        DnsRequestAction = {
            type = "structure",
            traits = {
                json_name = "dnsRequestAction",
            },
        },
        NetworkConnectionAction = {
            type = "structure",
            traits = {
                json_name = "networkConnectionAction",
            },
        },
        PortProbeAction = {
            type = "structure",
            traits = {
                json_name = "portProbeAction",
            },
        },
        KubernetesApiCallAction = {
            type = "structure",
            traits = {
                json_name = "kubernetesApiCallAction",
            },
        },
        KubernetesPermissionCheckedDetails = {
            type = "structure",
            traits = {
                json_name = "kubernetesPermissionCheckedDetails",
            },
        },
        KubernetesRoleBindingDetails = {
            type = "structure",
            traits = {
                json_name = "kubernetesRoleBindingDetails",
            },
        },
        KubernetesRoleDetails = {
            type = "structure",
            traits = {
                json_name = "kubernetesRoleDetails",
            },
        },
        RdsLoginAttemptAction = {
            type = "structure",
            traits = {
                json_name = "rdsLoginAttemptAction",
            },
        },
    },
}

M.ActorProcess = {
    type = "structure",
    members = {
        Name = {
            type = "string",
            traits = {
                json_name = "name",
                required = true,
            },
        },
        Path = {
            type = "string",
            traits = {
                json_name = "path",
                required = true,
            },
        },
        Sha256 = {
            type = "string",
            traits = {
                json_name = "sha256",
            },
        },
    },
}

M.MfaStatus = {
    ENABLED = "ENABLED",
    DISABLED = "DISABLED",
}

M.Session = {
    type = "structure",
    members = {
        Uid = {
            type = "string",
            traits = {
                json_name = "uid",
            },
        },
        MfaStatus = {
            type = "string",
            traits = {
                json_name = "mfaStatus",
            },
        },
        CreatedTime = {
            type = "timestamp",
            traits = {
                json_name = "createdTime",
            },
        },
        Issuer = {
            type = "string",
            traits = {
                json_name = "issuer",
            },
        },
    },
}

M.User = {
    type = "structure",
    members = {
        Name = {
            type = "string",
            traits = {
                json_name = "name",
                required = true,
            },
        },
        Uid = {
            type = "string",
            traits = {
                json_name = "uid",
                required = true,
            },
        },
        Type = {
            type = "string",
            traits = {
                json_name = "type",
                required = true,
            },
        },
        CredentialUid = {
            type = "string",
            traits = {
                json_name = "credentialUid",
            },
        },
        Account = {
            type = "structure",
            traits = {
                json_name = "account",
            },
        },
    },
}

M.Actor = {
    type = "structure",
    members = {
        Id = {
            type = "string",
            traits = {
                json_name = "id",
                required = true,
            },
        },
        User = {
            type = "structure",
            traits = {
                json_name = "user",
            },
        },
        Session = {
            type = "structure",
            traits = {
                json_name = "session",
            },
        },
        Process = {
            type = "structure",
            traits = {
                json_name = "process",
            },
        },
    },
}

M.AdditionalInfo = {
    type = "structure",
    members = {
        VersionId = {
            type = "string",
            traits = {
                json_name = "versionId",
            },
        },
        DeviceName = {
            type = "string",
            traits = {
                json_name = "deviceName",
            },
        },
    },
}

M.AddonDetails = {
    type = "structure",
    members = {
        AddonVersion = {
            type = "string",
            traits = {
                json_name = "addonVersion",
            },
        },
        AddonStatus = {
            type = "string",
            traits = {
                json_name = "addonStatus",
            },
        },
    },
}

M.AdminStatus = {
    ENABLED = "ENABLED",
    DISABLE_IN_PROGRESS = "DISABLE_IN_PROGRESS",
}

M.AdminAccount = {
    type = "structure",
    members = {
        AdminAccountId = {
            type = "string",
            traits = {
                json_name = "adminAccountId",
            },
        },
        AdminStatus = {
            type = "string",
            traits = {
                json_name = "adminStatus",
            },
        },
    },
}

M.Administrator = {
    type = "structure",
    members = {
        AccountId = {
            type = "string",
            traits = {
                json_name = "accountId",
            },
        },
        InvitationId = {
            type = "string",
            traits = {
                json_name = "invitationId",
            },
        },
        RelationshipStatus = {
            type = "string",
            traits = {
                json_name = "relationshipStatus",
            },
        },
        InvitedAt = {
            type = "string",
            traits = {
                json_name = "invitedAt",
            },
        },
    },
}

M.AgentDetails = {
    type = "structure",
    members = {
        Version = {
            type = "string",
            traits = {
                json_name = "version",
            },
        },
    },
}

M.Observations = {
    type = "structure",
    members = {
        Text = {
            type = "list",
            member_type = "string",
            traits = {
                json_name = "text",
            },
        },
    },
}

M.ProfileSubtype = {
    FREQUENT = "FREQUENT",
    INFREQUENT = "INFREQUENT",
    UNSEEN = "UNSEEN",
    RARE = "RARE",
}

M.ProfileType = {
    FREQUENCY = "FREQUENCY",
}

M.AnomalyObject = {
    type = "structure",
    members = {
        ProfileType = {
            type = "string",
            traits = {
                json_name = "profileType",
            },
        },
        ProfileSubtype = {
            type = "string",
            traits = {
                json_name = "profileSubtype",
            },
        },
        Observations = {
            type = "structure",
            traits = {
                json_name = "observations",
            },
        },
    },
}

M.AnomalyUnusual = {
    type = "structure",
    members = {
        Behavior = {
            type = "map",
            key_type = "string",
            value_type = "map",
            traits = {
                json_name = "behavior",
            },
        },
    },
}

M.Anomaly = {
    type = "structure",
    members = {
        Profiles = {
            type = "map",
            key_type = "string",
            value_type = "map",
            traits = {
                json_name = "profiles",
            },
        },
        Unusual = {
            type = "structure",
            traits = {
                json_name = "unusual",
            },
        },
    },
}

M.ArchiveFindingsInput = {
    type = "structure",
    members = {
        DetectorId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        FindingIds = {
            type = "list",
            member_type = "string",
            traits = {
                json_name = "findingIds",
                required = true,
            },
        },
    },
}

M.ArchiveFindingsOutput = {
    type = "structure",
}

M.AutoEnableMembers = {
    NEW = "NEW",
    ALL = "ALL",
    NONE = "NONE",
}

M.AutonomousSystem = {
    type = "structure",
    members = {
        Name = {
            type = "string",
            traits = {
                json_name = "name",
                required = true,
            },
        },
        Number = {
            type = "number",
            traits = {
                json_name = "number",
                required = true,
            },
        },
    },
}

M.AutoscalingAutoScalingGroup = {
    type = "structure",
    members = {
        Ec2InstanceUids = {
            type = "list",
            member_type = "string",
            traits = {
                json_name = "ec2InstanceUids",
            },
        },
    },
}

M.BucketPolicy = {
    type = "structure",
    members = {
        AllowsPublicReadAccess = {
            type = "boolean",
            traits = {
                json_name = "allowsPublicReadAccess",
            },
        },
        AllowsPublicWriteAccess = {
            type = "boolean",
            traits = {
                json_name = "allowsPublicWriteAccess",
            },
        },
    },
}

M.BucketLevelPermissions = {
    type = "structure",
    members = {
        AccessControlList = {
            type = "structure",
            traits = {
                json_name = "accessControlList",
            },
        },
        BucketPolicy = {
            type = "structure",
            traits = {
                json_name = "bucketPolicy",
            },
        },
        BlockPublicAccess = {
            type = "structure",
            traits = {
                json_name = "blockPublicAccess",
            },
        },
    },
}

M.CloudformationStack = {
    type = "structure",
    members = {
        Ec2InstanceUids = {
            type = "list",
            member_type = "string",
            traits = {
                json_name = "ec2InstanceUids",
            },
        },
    },
}

M.DataSourceStatus = {
    ENABLED = "ENABLED",
    DISABLED = "DISABLED",
}

M.CloudTrailConfigurationResult = {
    type = "structure",
    members = {
        Status = {
            type = "string",
            traits = {
                json_name = "status",
                required = true,
            },
        },
    },
}

M.ClusterStatus = {
    CREATING = "CREATING",
    ACTIVE = "ACTIVE",
    DELETING = "DELETING",
    FAILED = "FAILED",
    UPDATING = "UPDATING",
    PENDING = "PENDING",
}

M.Condition = {
    type = "structure",
    members = {
        Eq = {
            type = "list",
            member_type = "string",
            traits = {
                json_name = "eq",
            },
        },
        Neq = {
            type = "list",
            member_type = "string",
            traits = {
                json_name = "neq",
            },
        },
        Gt = {
            type = "number",
            traits = {
                json_name = "gt",
            },
        },
        Gte = {
            type = "number",
            traits = {
                json_name = "gte",
            },
        },
        Lt = {
            type = "number",
            traits = {
                json_name = "lt",
            },
        },
        Lte = {
            type = "number",
            traits = {
                json_name = "lte",
            },
        },
        Equals = {
            type = "list",
            member_type = "string",
            traits = {
                json_name = "equals",
            },
        },
        NotEquals = {
            type = "list",
            member_type = "string",
            traits = {
                json_name = "notEquals",
            },
        },
        GreaterThan = {
            type = "number",
            traits = {
                json_name = "greaterThan",
            },
        },
        GreaterThanOrEqual = {
            type = "number",
            traits = {
                json_name = "greaterThanOrEqual",
            },
        },
        LessThan = {
            type = "number",
            traits = {
                json_name = "lessThan",
            },
        },
        LessThanOrEqual = {
            type = "number",
            traits = {
                json_name = "lessThanOrEqual",
            },
        },
        Matches = {
            type = "list",
            member_type = "string",
            traits = {
                json_name = "matches",
            },
        },
        NotMatches = {
            type = "list",
            member_type = "string",
            traits = {
                json_name = "notMatches",
            },
        },
    },
}

M.ConflictException = {
    type = "structure",
    error = "client",
    members = {
        Message = {
            type = "string",
            traits = {
                json_name = "message",
            },
        },
        Type = {
            type = "string",
            traits = {
                json_name = "type",
            },
        },
    },
}

M.SecurityContext = {
    type = "structure",
    members = {
        Privileged = {
            type = "boolean",
            traits = {
                json_name = "privileged",
            },
        },
        AllowPrivilegeEscalation = {
            type = "boolean",
            traits = {
                json_name = "allowPrivilegeEscalation",
            },
        },
    },
}

M.VolumeMount = {
    type = "structure",
    members = {
        Name = {
            type = "string",
            traits = {
                json_name = "name",
            },
        },
        MountPath = {
            type = "string",
            traits = {
                json_name = "mountPath",
            },
        },
    },
}

M.Container = {
    type = "structure",
    members = {
        ContainerRuntime = {
            type = "string",
            traits = {
                json_name = "containerRuntime",
            },
        },
        Id = {
            type = "string",
            traits = {
                json_name = "id",
            },
        },
        Name = {
            type = "string",
            traits = {
                json_name = "name",
            },
        },
        Image = {
            type = "string",
            traits = {
                json_name = "image",
            },
        },
        ImagePrefix = {
            type = "string",
            traits = {
                json_name = "imagePrefix",
            },
        },
        VolumeMounts = {
            type = "list",
            member_type = "structure",
            traits = {
                json_name = "volumeMounts",
            },
        },
        SecurityContext = {
            type = "structure",
            traits = {
                json_name = "securityContext",
            },
        },
    },
}

M.ContainerFindingResource = {
    type = "structure",
    members = {
        Image = {
            type = "string",
            traits = {
                json_name = "image",
                required = true,
            },
        },
        ImageUid = {
            type = "string",
            traits = {
                json_name = "imageUid",
            },
        },
    },
}

M.ContainerInstanceDetails = {
    type = "structure",
    members = {
        CoveredContainerInstances = {
            type = "number",
            traits = {
                json_name = "coveredContainerInstances",
            },
        },
        CompatibleContainerInstances = {
            type = "number",
            traits = {
                json_name = "compatibleContainerInstances",
            },
        },
    },
}

M.CoverageStatus = {
    HEALTHY = "HEALTHY",
    UNHEALTHY = "UNHEALTHY",
}

M.ResourceType = {
    EKS = "EKS",
    ECS = "ECS",
    EC2 = "EC2",
}

M.ManagementType = {
    AUTO_MANAGED = "AUTO_MANAGED",
    MANUAL = "MANUAL",
    DISABLED = "DISABLED",
}

M.CoverageEc2InstanceDetails = {
    type = "structure",
    members = {
        InstanceId = {
            type = "string",
            traits = {
                json_name = "instanceId",
            },
        },
        InstanceType = {
            type = "string",
            traits = {
                json_name = "instanceType",
            },
        },
        ClusterArn = {
            type = "string",
            traits = {
                json_name = "clusterArn",
            },
        },
        AgentDetails = {
            type = "structure",
            traits = {
                json_name = "agentDetails",
            },
        },
        ManagementType = {
            type = "string",
            traits = {
                json_name = "managementType",
            },
        },
    },
}

M.FargateDetails = {
    type = "structure",
    members = {
        Issues = {
            type = "list",
            member_type = "string",
            traits = {
                json_name = "issues",
            },
        },
        ManagementType = {
            type = "string",
            traits = {
                json_name = "managementType",
            },
        },
    },
}

M.CoverageEcsClusterDetails = {
    type = "structure",
    members = {
        ClusterName = {
            type = "string",
            traits = {
                json_name = "clusterName",
            },
        },
        FargateDetails = {
            type = "structure",
            traits = {
                json_name = "fargateDetails",
            },
        },
        ContainerInstanceDetails = {
            type = "structure",
            traits = {
                json_name = "containerInstanceDetails",
            },
        },
    },
}

M.CoverageEksClusterDetails = {
    type = "structure",
    members = {
        ClusterName = {
            type = "string",
            traits = {
                json_name = "clusterName",
            },
        },
        CoveredNodes = {
            type = "number",
            traits = {
                json_name = "coveredNodes",
            },
        },
        CompatibleNodes = {
            type = "number",
            traits = {
                json_name = "compatibleNodes",
            },
        },
        AddonDetails = {
            type = "structure",
            traits = {
                json_name = "addonDetails",
            },
        },
        ManagementType = {
            type = "string",
            traits = {
                json_name = "managementType",
            },
        },
    },
}

M.CoverageFilterCondition = {
    type = "structure",
    members = {
        Equals = {
            type = "list",
            member_type = "string",
            traits = {
                json_name = "equals",
            },
        },
        NotEquals = {
            type = "list",
            member_type = "string",
            traits = {
                json_name = "notEquals",
            },
        },
    },
}

M.CoverageFilterCriterionKey = {
    ACCOUNT_ID = "ACCOUNT_ID",
    RESOURCE_TYPE = "RESOURCE_TYPE",
    COVERAGE_STATUS = "COVERAGE_STATUS",
    ADDON_VERSION = "ADDON_VERSION",
    CLUSTER_NAME = "CLUSTER_NAME",
    ECS_CLUSTER_NAME = "ECS_CLUSTER_NAME",
    MANAGEMENT_TYPE = "MANAGEMENT_TYPE",
    EKS_CLUSTER_NAME = "EKS_CLUSTER_NAME",
    AGENT_VERSION = "AGENT_VERSION",
    INSTANCE_ID = "INSTANCE_ID",
    CLUSTER_ARN = "CLUSTER_ARN",
}

M.CoverageFilterCriterion = {
    type = "structure",
    members = {
        CriterionKey = {
            type = "string",
            traits = {
                json_name = "criterionKey",
            },
        },
        FilterCondition = {
            type = "structure",
            traits = {
                json_name = "filterCondition",
            },
        },
    },
}

M.CoverageFilterCriteria = {
    type = "structure",
    members = {
        FilterCriterion = {
            type = "list",
            member_type = "structure",
            traits = {
                json_name = "filterCriterion",
            },
        },
    },
}

M.CoverageResourceDetails = {
    type = "structure",
    members = {
        EksClusterDetails = {
            type = "structure",
            traits = {
                json_name = "eksClusterDetails",
            },
        },
        EcsClusterDetails = {
            type = "structure",
            traits = {
                json_name = "ecsClusterDetails",
            },
        },
        Ec2InstanceDetails = {
            type = "structure",
            traits = {
                json_name = "ec2InstanceDetails",
            },
        },
        ResourceType = {
            type = "string",
            traits = {
                json_name = "resourceType",
            },
        },
    },
}

M.CoverageResource = {
    type = "structure",
    members = {
        ResourceId = {
            type = "string",
            traits = {
                json_name = "resourceId",
            },
        },
        DetectorId = {
            type = "string",
            traits = {
                json_name = "detectorId",
            },
        },
        AccountId = {
            type = "string",
            traits = {
                json_name = "accountId",
            },
        },
        ResourceDetails = {
            type = "structure",
            traits = {
                json_name = "resourceDetails",
            },
        },
        CoverageStatus = {
            type = "string",
            traits = {
                json_name = "coverageStatus",
            },
        },
        Issue = {
            type = "string",
            traits = {
                json_name = "issue",
            },
        },
        UpdatedAt = {
            type = "timestamp",
            traits = {
                json_name = "updatedAt",
            },
        },
    },
}

M.CoverageSortKey = {
    ACCOUNT_ID = "ACCOUNT_ID",
    COVERAGE_STATUS = "COVERAGE_STATUS",
    ISSUE = "ISSUE",
    ADDON_VERSION = "ADDON_VERSION",
    UPDATED_AT = "UPDATED_AT",
    CLUSTER_NAME = "CLUSTER_NAME",
    EKS_CLUSTER_NAME = "EKS_CLUSTER_NAME",
    ECS_CLUSTER_NAME = "ECS_CLUSTER_NAME",
    INSTANCE_ID = "INSTANCE_ID",
}

M.OrderBy = {
    ASC = "ASC",
    DESC = "DESC",
}

M.CoverageSortCriteria = {
    type = "structure",
    members = {
        AttributeName = {
            type = "string",
            traits = {
                json_name = "attributeName",
            },
        },
        OrderBy = {
            type = "string",
            traits = {
                json_name = "orderBy",
            },
        },
    },
}

M.CoverageStatistics = {
    type = "structure",
    members = {
        CountByResourceType = {
            type = "map",
            key_type = "string",
            value_type = "number",
            traits = {
                json_name = "countByResourceType",
            },
        },
        CountByCoverageStatus = {
            type = "map",
            key_type = "string",
            value_type = "number",
            traits = {
                json_name = "countByCoverageStatus",
            },
        },
    },
}

M.CoverageStatisticsType = {
    COUNT_BY_RESOURCE_TYPE = "COUNT_BY_RESOURCE_TYPE",
    COUNT_BY_COVERAGE_STATUS = "COUNT_BY_COVERAGE_STATUS",
}

M.KubernetesAuditLogsConfiguration = {
    type = "structure",
    members = {
        Enable = {
            type = "boolean",
            traits = {
                json_name = "enable",
                required = true,
            },
        },
    },
}

M.KubernetesConfiguration = {
    type = "structure",
    members = {
        AuditLogs = {
            type = "structure",
            traits = {
                json_name = "auditLogs",
                required = true,
            },
        },
    },
}

M.ScanEc2InstanceWithFindings = {
    type = "structure",
    members = {
        EbsVolumes = {
            type = "boolean",
            traits = {
                json_name = "ebsVolumes",
            },
        },
    },
}

M.MalwareProtectionConfiguration = {
    type = "structure",
    members = {
        ScanEc2InstanceWithFindings = {
            type = "structure",
            traits = {
                json_name = "scanEc2InstanceWithFindings",
            },
        },
    },
}

M.S3LogsConfiguration = {
    type = "structure",
    members = {
        Enable = {
            type = "boolean",
            traits = {
                json_name = "enable",
                required = true,
            },
        },
    },
}

M.DataSourceConfigurations = {
    type = "structure",
    members = {
        S3Logs = {
            type = "structure",
            traits = {
                json_name = "s3Logs",
            },
        },
        Kubernetes = {
            type = "structure",
            traits = {
                json_name = "kubernetes",
            },
        },
        MalwareProtection = {
            type = "structure",
            traits = {
                json_name = "malwareProtection",
            },
        },
    },
}

M.FeatureAdditionalConfiguration = {
    EKS_ADDON_MANAGEMENT = "EKS_ADDON_MANAGEMENT",
    ECS_FARGATE_AGENT_MANAGEMENT = "ECS_FARGATE_AGENT_MANAGEMENT",
    EC2_AGENT_MANAGEMENT = "EC2_AGENT_MANAGEMENT",
}

M.FeatureStatus = {
    ENABLED = "ENABLED",
    DISABLED = "DISABLED",
}

M.DetectorAdditionalConfiguration = {
    type = "structure",
    members = {
        Name = {
            type = "string",
            traits = {
                json_name = "name",
            },
        },
        Status = {
            type = "string",
            traits = {
                json_name = "status",
            },
        },
    },
}

M.DetectorFeature = {
    S3_DATA_EVENTS = "S3_DATA_EVENTS",
    EKS_AUDIT_LOGS = "EKS_AUDIT_LOGS",
    EBS_MALWARE_PROTECTION = "EBS_MALWARE_PROTECTION",
    RDS_LOGIN_EVENTS = "RDS_LOGIN_EVENTS",
    LAMBDA_NETWORK_LOGS = "LAMBDA_NETWORK_LOGS",
    EKS_RUNTIME_MONITORING = "EKS_RUNTIME_MONITORING",
    RUNTIME_MONITORING = "RUNTIME_MONITORING",
}

M.DetectorFeatureConfiguration = {
    type = "structure",
    members = {
        Name = {
            type = "string",
            traits = {
                json_name = "name",
            },
        },
        Status = {
            type = "string",
            traits = {
                json_name = "status",
            },
        },
        AdditionalConfiguration = {
            type = "list",
            member_type = "structure",
            traits = {
                json_name = "additionalConfiguration",
            },
        },
    },
}

M.FindingPublishingFrequency = {
    FIFTEEN_MINUTES = "FIFTEEN_MINUTES",
    ONE_HOUR = "ONE_HOUR",
    SIX_HOURS = "SIX_HOURS",
}

M.CreateDetectorInput = {
    type = "structure",
    members = {
        Enable = {
            type = "boolean",
            traits = {
                json_name = "enable",
                required = true,
            },
        },
        ClientToken = {
            type = "string",
            traits = {
                json_name = "clientToken",
            },
        },
        FindingPublishingFrequency = {
            type = "string",
            traits = {
                json_name = "findingPublishingFrequency",
            },
        },
        DataSources = {
            type = "structure",
            traits = {
                json_name = "dataSources",
            },
        },
        Tags = {
            type = "map",
            key_type = "string",
            value_type = "string",
            traits = {
                json_name = "tags",
            },
        },
        Features = {
            type = "list",
            member_type = "structure",
            traits = {
                json_name = "features",
            },
        },
    },
}

M.EbsVolumesResult = {
    type = "structure",
    members = {
        Status = {
            type = "string",
            traits = {
                json_name = "status",
            },
        },
        Reason = {
            type = "string",
            traits = {
                json_name = "reason",
            },
        },
    },
}

M.ScanEc2InstanceWithFindingsResult = {
    type = "structure",
    members = {
        EbsVolumes = {
            type = "structure",
            traits = {
                json_name = "ebsVolumes",
            },
        },
    },
}

M.MalwareProtectionConfigurationResult = {
    type = "structure",
    members = {
        ScanEc2InstanceWithFindings = {
            type = "structure",
            traits = {
                json_name = "scanEc2InstanceWithFindings",
            },
        },
        ServiceRole = {
            type = "string",
            traits = {
                json_name = "serviceRole",
            },
        },
    },
}

M.UnprocessedDataSourcesResult = {
    type = "structure",
    members = {
        MalwareProtection = {
            type = "structure",
            traits = {
                json_name = "malwareProtection",
            },
        },
    },
}

M.CreateDetectorOutput = {
    type = "structure",
    members = {
        DetectorId = {
            type = "string",
            traits = {
                json_name = "detectorId",
            },
        },
        UnprocessedDataSources = {
            type = "structure",
            traits = {
                json_name = "unprocessedDataSources",
            },
        },
    },
}

M.FilterAction = {
    NOOP = "NOOP",
    ARCHIVE = "ARCHIVE",
}

M.FindingCriteria = {
    type = "structure",
    members = {
        Criterion = {
            type = "map",
            key_type = "string",
            value_type = "structure",
            traits = {
                json_name = "criterion",
            },
        },
    },
}

M.CreateFilterInput = {
    type = "structure",
    members = {
        DetectorId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        Name = {
            type = "string",
            traits = {
                json_name = "name",
                required = true,
            },
        },
        Description = {
            type = "string",
            traits = {
                json_name = "description",
            },
        },
        Action = {
            type = "string",
            traits = {
                json_name = "action",
            },
        },
        Rank = {
            type = "number",
            traits = {
                json_name = "rank",
            },
        },
        FindingCriteria = {
            type = "structure",
            traits = {
                json_name = "findingCriteria",
                required = true,
            },
        },
        ClientToken = {
            type = "string",
            traits = {
                json_name = "clientToken",
            },
        },
        Tags = {
            type = "map",
            key_type = "string",
            value_type = "string",
            traits = {
                json_name = "tags",
            },
        },
    },
}

M.CreateFilterOutput = {
    type = "structure",
    members = {
        Name = {
            type = "string",
            traits = {
                json_name = "name",
                required = true,
            },
        },
    },
}

M.IpSetFormat = {
    TXT = "TXT",
    STIX = "STIX",
    OTX_CSV = "OTX_CSV",
    ALIEN_VAULT = "ALIEN_VAULT",
    PROOF_POINT = "PROOF_POINT",
    FIRE_EYE = "FIRE_EYE",
}

M.CreateIPSetInput = {
    type = "structure",
    members = {
        DetectorId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        Name = {
            type = "string",
            traits = {
                json_name = "name",
                required = true,
            },
        },
        Format = {
            type = "string",
            traits = {
                json_name = "format",
                required = true,
            },
        },
        Location = {
            type = "string",
            traits = {
                json_name = "location",
                required = true,
            },
        },
        Activate = {
            type = "boolean",
            traits = {
                json_name = "activate",
                required = true,
            },
        },
        ClientToken = {
            type = "string",
            traits = {
                json_name = "clientToken",
            },
        },
        Tags = {
            type = "map",
            key_type = "string",
            value_type = "string",
            traits = {
                json_name = "tags",
            },
        },
        ExpectedBucketOwner = {
            type = "string",
            traits = {
                json_name = "expectedBucketOwner",
            },
        },
    },
}

M.CreateIPSetOutput = {
    type = "structure",
    members = {
        IpSetId = {
            type = "string",
            traits = {
                json_name = "ipSetId",
                required = true,
            },
        },
    },
}

M.MalwareProtectionPlanTaggingActionStatus = {
    ENABLED = "ENABLED",
    DISABLED = "DISABLED",
}

M.MalwareProtectionPlanTaggingAction = {
    type = "structure",
    members = {
        Status = {
            type = "string",
            traits = {
                json_name = "status",
            },
        },
    },
}

M.MalwareProtectionPlanActions = {
    type = "structure",
    members = {
        Tagging = {
            type = "structure",
            traits = {
                json_name = "tagging",
            },
        },
    },
}

M.CreateS3BucketResource = {
    type = "structure",
    members = {
        BucketName = {
            type = "string",
            traits = {
                json_name = "bucketName",
            },
        },
        ObjectPrefixes = {
            type = "list",
            member_type = "string",
            traits = {
                json_name = "objectPrefixes",
            },
        },
    },
}

M.CreateProtectedResource = {
    type = "structure",
    members = {
        S3Bucket = {
            type = "structure",
            traits = {
                json_name = "s3Bucket",
            },
        },
    },
}

M.CreateMalwareProtectionPlanInput = {
    type = "structure",
    members = {
        ClientToken = {
            type = "string",
            traits = {
                json_name = "clientToken",
            },
        },
        Role = {
            type = "string",
            traits = {
                json_name = "role",
                required = true,
            },
        },
        ProtectedResource = {
            type = "structure",
            traits = {
                json_name = "protectedResource",
                required = true,
            },
        },
        Actions = {
            type = "structure",
            traits = {
                json_name = "actions",
            },
        },
        Tags = {
            type = "map",
            key_type = "string",
            value_type = "string",
            traits = {
                json_name = "tags",
            },
        },
    },
}

M.CreateMalwareProtectionPlanOutput = {
    type = "structure",
    members = {
        MalwareProtectionPlanId = {
            type = "string",
            traits = {
                json_name = "malwareProtectionPlanId",
            },
        },
    },
}

M.CreateMembersInput = {
    type = "structure",
    members = {
        DetectorId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        AccountDetails = {
            type = "list",
            member_type = "structure",
            traits = {
                json_name = "accountDetails",
                required = true,
            },
        },
    },
}

M.UnprocessedAccount = {
    type = "structure",
    members = {
        AccountId = {
            type = "string",
            traits = {
                json_name = "accountId",
                required = true,
            },
        },
        Result = {
            type = "string",
            traits = {
                json_name = "result",
                required = true,
            },
        },
    },
}

M.CreateMembersOutput = {
    type = "structure",
    members = {
        UnprocessedAccounts = {
            type = "list",
            member_type = "structure",
            traits = {
                json_name = "unprocessedAccounts",
                required = true,
            },
        },
    },
}

M.DestinationProperties = {
    type = "structure",
    members = {
        DestinationArn = {
            type = "string",
            traits = {
                json_name = "destinationArn",
            },
        },
        KmsKeyArn = {
            type = "string",
            traits = {
                json_name = "kmsKeyArn",
            },
        },
    },
}

M.DestinationType = {
    S3 = "S3",
}

M.CreatePublishingDestinationInput = {
    type = "structure",
    members = {
        DetectorId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        DestinationType = {
            type = "string",
            traits = {
                json_name = "destinationType",
                required = true,
            },
        },
        DestinationProperties = {
            type = "structure",
            traits = {
                json_name = "destinationProperties",
                required = true,
            },
        },
        ClientToken = {
            type = "string",
            traits = {
                json_name = "clientToken",
            },
        },
        Tags = {
            type = "map",
            key_type = "string",
            value_type = "string",
            traits = {
                json_name = "tags",
            },
        },
    },
}

M.CreatePublishingDestinationOutput = {
    type = "structure",
    members = {
        DestinationId = {
            type = "string",
            traits = {
                json_name = "destinationId",
                required = true,
            },
        },
    },
}

M.CreateSampleFindingsInput = {
    type = "structure",
    members = {
        DetectorId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        FindingTypes = {
            type = "list",
            member_type = "string",
            traits = {
                json_name = "findingTypes",
            },
        },
    },
}

M.CreateSampleFindingsOutput = {
    type = "structure",
}

M.ThreatEntitySetFormat = {
    TXT = "TXT",
    STIX = "STIX",
    OTX_CSV = "OTX_CSV",
    ALIEN_VAULT = "ALIEN_VAULT",
    PROOF_POINT = "PROOF_POINT",
    FIRE_EYE = "FIRE_EYE",
}

M.CreateThreatEntitySetInput = {
    type = "structure",
    members = {
        DetectorId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        Name = {
            type = "string",
            traits = {
                json_name = "name",
                required = true,
            },
        },
        Format = {
            type = "string",
            traits = {
                json_name = "format",
                required = true,
            },
        },
        Location = {
            type = "string",
            traits = {
                json_name = "location",
                required = true,
            },
        },
        ExpectedBucketOwner = {
            type = "string",
            traits = {
                json_name = "expectedBucketOwner",
            },
        },
        Activate = {
            type = "boolean",
            traits = {
                json_name = "activate",
                required = true,
            },
        },
        ClientToken = {
            type = "string",
            traits = {
                json_name = "clientToken",
            },
        },
        Tags = {
            type = "map",
            key_type = "string",
            value_type = "string",
            traits = {
                json_name = "tags",
            },
        },
    },
}

M.CreateThreatEntitySetOutput = {
    type = "structure",
    members = {
        ThreatEntitySetId = {
            type = "string",
            traits = {
                json_name = "threatEntitySetId",
                required = true,
            },
        },
    },
}

M.ThreatIntelSetFormat = {
    TXT = "TXT",
    STIX = "STIX",
    OTX_CSV = "OTX_CSV",
    ALIEN_VAULT = "ALIEN_VAULT",
    PROOF_POINT = "PROOF_POINT",
    FIRE_EYE = "FIRE_EYE",
}

M.CreateThreatIntelSetInput = {
    type = "structure",
    members = {
        DetectorId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        Name = {
            type = "string",
            traits = {
                json_name = "name",
                required = true,
            },
        },
        Format = {
            type = "string",
            traits = {
                json_name = "format",
                required = true,
            },
        },
        Location = {
            type = "string",
            traits = {
                json_name = "location",
                required = true,
            },
        },
        Activate = {
            type = "boolean",
            traits = {
                json_name = "activate",
                required = true,
            },
        },
        ClientToken = {
            type = "string",
            traits = {
                json_name = "clientToken",
            },
        },
        Tags = {
            type = "map",
            key_type = "string",
            value_type = "string",
            traits = {
                json_name = "tags",
            },
        },
        ExpectedBucketOwner = {
            type = "string",
            traits = {
                json_name = "expectedBucketOwner",
            },
        },
    },
}

M.CreateThreatIntelSetOutput = {
    type = "structure",
    members = {
        ThreatIntelSetId = {
            type = "string",
            traits = {
                json_name = "threatIntelSetId",
                required = true,
            },
        },
    },
}

M.TrustedEntitySetFormat = {
    TXT = "TXT",
    STIX = "STIX",
    OTX_CSV = "OTX_CSV",
    ALIEN_VAULT = "ALIEN_VAULT",
    PROOF_POINT = "PROOF_POINT",
    FIRE_EYE = "FIRE_EYE",
}

M.CreateTrustedEntitySetInput = {
    type = "structure",
    members = {
        DetectorId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        Name = {
            type = "string",
            traits = {
                json_name = "name",
                required = true,
            },
        },
        Format = {
            type = "string",
            traits = {
                json_name = "format",
                required = true,
            },
        },
        Location = {
            type = "string",
            traits = {
                json_name = "location",
                required = true,
            },
        },
        ExpectedBucketOwner = {
            type = "string",
            traits = {
                json_name = "expectedBucketOwner",
            },
        },
        Activate = {
            type = "boolean",
            traits = {
                json_name = "activate",
                required = true,
            },
        },
        ClientToken = {
            type = "string",
            traits = {
                json_name = "clientToken",
            },
        },
        Tags = {
            type = "map",
            key_type = "string",
            value_type = "string",
            traits = {
                json_name = "tags",
            },
        },
    },
}

M.CreateTrustedEntitySetOutput = {
    type = "structure",
    members = {
        TrustedEntitySetId = {
            type = "string",
            traits = {
                json_name = "trustedEntitySetId",
                required = true,
            },
        },
    },
}

M.CriterionKey = {
    EC2_INSTANCE_ARN = "EC2_INSTANCE_ARN",
    SCAN_ID = "SCAN_ID",
    ACCOUNT_ID = "ACCOUNT_ID",
    GUARDDUTY_FINDING_ID = "GUARDDUTY_FINDING_ID",
    SCAN_START_TIME = "SCAN_START_TIME",
    SCAN_STATUS = "SCAN_STATUS",
    SCAN_TYPE = "SCAN_TYPE",
}

M.DataSource = {
    FLOW_LOGS = "FLOW_LOGS",
    CLOUD_TRAIL = "CLOUD_TRAIL",
    DNS_LOGS = "DNS_LOGS",
    S3_LOGS = "S3_LOGS",
    KUBERNETES_AUDIT_LOGS = "KUBERNETES_AUDIT_LOGS",
    EC2_MALWARE_SCAN = "EC2_MALWARE_SCAN",
}

M.DNSLogsConfigurationResult = {
    type = "structure",
    members = {
        Status = {
            type = "string",
            traits = {
                json_name = "status",
                required = true,
            },
        },
    },
}

M.FlowLogsConfigurationResult = {
    type = "structure",
    members = {
        Status = {
            type = "string",
            traits = {
                json_name = "status",
                required = true,
            },
        },
    },
}

M.KubernetesAuditLogsConfigurationResult = {
    type = "structure",
    members = {
        Status = {
            type = "string",
            traits = {
                json_name = "status",
                required = true,
            },
        },
    },
}

M.KubernetesConfigurationResult = {
    type = "structure",
    members = {
        AuditLogs = {
            type = "structure",
            traits = {
                json_name = "auditLogs",
                required = true,
            },
        },
    },
}

M.S3LogsConfigurationResult = {
    type = "structure",
    members = {
        Status = {
            type = "string",
            traits = {
                json_name = "status",
                required = true,
            },
        },
    },
}

M.DataSourceConfigurationsResult = {
    type = "structure",
    members = {
        CloudTrail = {
            type = "structure",
            traits = {
                json_name = "cloudTrail",
                required = true,
            },
        },
        DNSLogs = {
            type = "structure",
            traits = {
                json_name = "dnsLogs",
                required = true,
            },
        },
        FlowLogs = {
            type = "structure",
            traits = {
                json_name = "flowLogs",
                required = true,
            },
        },
        S3Logs = {
            type = "structure",
            traits = {
                json_name = "s3Logs",
                required = true,
            },
        },
        Kubernetes = {
            type = "structure",
            traits = {
                json_name = "kubernetes",
            },
        },
        MalwareProtection = {
            type = "structure",
            traits = {
                json_name = "malwareProtection",
            },
        },
    },
}

M.DateStatistics = {
    type = "structure",
    members = {
        Date = {
            type = "timestamp",
            traits = {
                json_name = "date",
            },
        },
        LastGeneratedAt = {
            type = "timestamp",
            traits = {
                json_name = "lastGeneratedAt",
            },
        },
        Severity = {
            type = "number",
            traits = {
                json_name = "severity",
            },
        },
        TotalFindings = {
            type = "number",
            traits = {
                json_name = "totalFindings",
            },
        },
    },
}

M.DeclineInvitationsInput = {
    type = "structure",
    members = {
        AccountIds = {
            type = "list",
            member_type = "string",
            traits = {
                json_name = "accountIds",
                required = true,
            },
        },
    },
}

M.DeclineInvitationsOutput = {
    type = "structure",
    members = {
        UnprocessedAccounts = {
            type = "list",
            member_type = "structure",
            traits = {
                json_name = "unprocessedAccounts",
                required = true,
            },
        },
    },
}

M.DefaultServerSideEncryption = {
    type = "structure",
    members = {
        EncryptionType = {
            type = "string",
            traits = {
                json_name = "encryptionType",
            },
        },
        KmsMasterKeyArn = {
            type = "string",
            traits = {
                json_name = "kmsMasterKeyArn",
            },
        },
    },
}

M.DeleteDetectorInput = {
    type = "structure",
    members = {
        DetectorId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.DeleteDetectorOutput = {
    type = "structure",
}

M.DeleteFilterInput = {
    type = "structure",
    members = {
        DetectorId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        FilterName = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.DeleteFilterOutput = {
    type = "structure",
}

M.DeleteInvitationsInput = {
    type = "structure",
    members = {
        AccountIds = {
            type = "list",
            member_type = "string",
            traits = {
                json_name = "accountIds",
                required = true,
            },
        },
    },
}

M.DeleteInvitationsOutput = {
    type = "structure",
    members = {
        UnprocessedAccounts = {
            type = "list",
            member_type = "structure",
            traits = {
                json_name = "unprocessedAccounts",
                required = true,
            },
        },
    },
}

M.DeleteIPSetInput = {
    type = "structure",
    members = {
        DetectorId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        IpSetId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.DeleteIPSetOutput = {
    type = "structure",
}

M.DeleteMalwareProtectionPlanInput = {
    type = "structure",
    members = {
        MalwareProtectionPlanId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.DeleteMalwareProtectionPlanOutput = {
    type = "structure",
}

M.ResourceNotFoundException = {
    type = "structure",
    error = "client",
    members = {
        Message = {
            type = "string",
            traits = {
                json_name = "message",
            },
        },
        Type = {
            type = "string",
            traits = {
                json_name = "type",
            },
        },
    },
}

M.DeleteMembersInput = {
    type = "structure",
    members = {
        DetectorId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        AccountIds = {
            type = "list",
            member_type = "string",
            traits = {
                json_name = "accountIds",
                required = true,
            },
        },
    },
}

M.DeleteMembersOutput = {
    type = "structure",
    members = {
        UnprocessedAccounts = {
            type = "list",
            member_type = "structure",
            traits = {
                json_name = "unprocessedAccounts",
                required = true,
            },
        },
    },
}

M.DeletePublishingDestinationInput = {
    type = "structure",
    members = {
        DetectorId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        DestinationId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.DeletePublishingDestinationOutput = {
    type = "structure",
}

M.DeleteThreatEntitySetInput = {
    type = "structure",
    members = {
        DetectorId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        ThreatEntitySetId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.DeleteThreatEntitySetOutput = {
    type = "structure",
}

M.DeleteThreatIntelSetInput = {
    type = "structure",
    members = {
        DetectorId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        ThreatIntelSetId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.DeleteThreatIntelSetOutput = {
    type = "structure",
}

M.DeleteTrustedEntitySetInput = {
    type = "structure",
    members = {
        DetectorId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        TrustedEntitySetId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.DeleteTrustedEntitySetOutput = {
    type = "structure",
}

M.FilterCondition = {
    type = "structure",
    members = {
        EqualsValue = {
            type = "string",
            traits = {
                json_name = "equalsValue",
            },
        },
        GreaterThan = {
            type = "number",
            traits = {
                json_name = "greaterThan",
            },
        },
        LessThan = {
            type = "number",
            traits = {
                json_name = "lessThan",
            },
        },
    },
}

M.FilterCriterion = {
    type = "structure",
    members = {
        CriterionKey = {
            type = "string",
            traits = {
                json_name = "criterionKey",
            },
        },
        FilterCondition = {
            type = "structure",
            traits = {
                json_name = "filterCondition",
            },
        },
    },
}

M.FilterCriteria = {
    type = "structure",
    members = {
        FilterCriterion = {
            type = "list",
            member_type = "structure",
            traits = {
                json_name = "filterCriterion",
            },
        },
    },
}

M.SortCriteria = {
    type = "structure",
    members = {
        AttributeName = {
            type = "string",
            traits = {
                json_name = "attributeName",
            },
        },
        OrderBy = {
            type = "string",
            traits = {
                json_name = "orderBy",
            },
        },
    },
}

M.DescribeMalwareScansInput = {
    type = "structure",
    members = {
        DetectorId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        NextToken = {
            type = "string",
            traits = {
                json_name = "nextToken",
            },
        },
        MaxResults = {
            type = "number",
            traits = {
                json_name = "maxResults",
            },
        },
        FilterCriteria = {
            type = "structure",
            traits = {
                json_name = "filterCriteria",
            },
        },
        SortCriteria = {
            type = "structure",
            traits = {
                json_name = "sortCriteria",
            },
        },
    },
}

M.VolumeDetail = {
    type = "structure",
    members = {
        VolumeArn = {
            type = "string",
            traits = {
                json_name = "volumeArn",
            },
        },
        VolumeType = {
            type = "string",
            traits = {
                json_name = "volumeType",
            },
        },
        DeviceName = {
            type = "string",
            traits = {
                json_name = "deviceName",
            },
        },
        VolumeSizeInGB = {
            type = "number",
            traits = {
                json_name = "volumeSizeInGB",
            },
        },
        EncryptionType = {
            type = "string",
            traits = {
                json_name = "encryptionType",
            },
        },
        SnapshotArn = {
            type = "string",
            traits = {
                json_name = "snapshotArn",
            },
        },
        KmsKeyArn = {
            type = "string",
            traits = {
                json_name = "kmsKeyArn",
            },
        },
    },
}

M.ResourceDetails = {
    type = "structure",
    members = {
        InstanceArn = {
            type = "string",
            traits = {
                json_name = "instanceArn",
            },
        },
    },
}

M.ScanResult = {
    CLEAN = "CLEAN",
    INFECTED = "INFECTED",
}

M.ScanResultDetails = {
    type = "structure",
    members = {
        ScanResult = {
            type = "string",
            traits = {
                json_name = "scanResult",
            },
        },
    },
}

M.ScanStatus = {
    RUNNING = "RUNNING",
    COMPLETED = "COMPLETED",
    FAILED = "FAILED",
    SKIPPED = "SKIPPED",
}

M.ScanType = {
    GUARDDUTY_INITIATED = "GUARDDUTY_INITIATED",
    ON_DEMAND = "ON_DEMAND",
}

M.TriggerType = {
    BACKUP = "BACKUP",
    GUARDDUTY = "GUARDDUTY",
}

M.TriggerDetails = {
    type = "structure",
    members = {
        GuardDutyFindingId = {
            type = "string",
            traits = {
                json_name = "guardDutyFindingId",
            },
        },
        Description = {
            type = "string",
            traits = {
                json_name = "description",
            },
        },
        TriggerType = {
            type = "string",
            traits = {
                json_name = "triggerType",
            },
        },
    },
}

M.Scan = {
    type = "structure",
    members = {
        DetectorId = {
            type = "string",
            traits = {
                json_name = "detectorId",
            },
        },
        AdminDetectorId = {
            type = "string",
            traits = {
                json_name = "adminDetectorId",
            },
        },
        ScanId = {
            type = "string",
            traits = {
                json_name = "scanId",
            },
        },
        ScanStatus = {
            type = "string",
            traits = {
                json_name = "scanStatus",
            },
        },
        FailureReason = {
            type = "string",
            traits = {
                json_name = "failureReason",
            },
        },
        ScanStartTime = {
            type = "timestamp",
            traits = {
                json_name = "scanStartTime",
            },
        },
        ScanEndTime = {
            type = "timestamp",
            traits = {
                json_name = "scanEndTime",
            },
        },
        TriggerDetails = {
            type = "structure",
            traits = {
                json_name = "triggerDetails",
            },
        },
        ResourceDetails = {
            type = "structure",
            traits = {
                json_name = "resourceDetails",
            },
        },
        ScanResultDetails = {
            type = "structure",
            traits = {
                json_name = "scanResultDetails",
            },
        },
        AccountId = {
            type = "string",
            traits = {
                json_name = "accountId",
            },
        },
        TotalBytes = {
            type = "number",
            traits = {
                json_name = "totalBytes",
            },
        },
        FileCount = {
            type = "number",
            traits = {
                json_name = "fileCount",
            },
        },
        AttachedVolumes = {
            type = "list",
            member_type = "structure",
            traits = {
                json_name = "attachedVolumes",
            },
        },
        ScanType = {
            type = "string",
            traits = {
                json_name = "scanType",
            },
        },
    },
}

M.DescribeMalwareScansOutput = {
    type = "structure",
    members = {
        Scans = {
            type = "list",
            member_type = "structure",
            traits = {
                json_name = "scans",
                required = true,
            },
        },
        NextToken = {
            type = "string",
            traits = {
                json_name = "nextToken",
            },
        },
    },
}

M.DescribeOrganizationConfigurationInput = {
    type = "structure",
    members = {
        DetectorId = {
            type = "string",
            traits = {
                http_label = true,
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

M.OrganizationKubernetesAuditLogsConfigurationResult = {
    type = "structure",
    members = {
        AutoEnable = {
            type = "boolean",
            traits = {
                json_name = "autoEnable",
                required = true,
            },
        },
    },
}

M.OrganizationKubernetesConfigurationResult = {
    type = "structure",
    members = {
        AuditLogs = {
            type = "structure",
            traits = {
                json_name = "auditLogs",
                required = true,
            },
        },
    },
}

M.OrganizationEbsVolumesResult = {
    type = "structure",
    members = {
        AutoEnable = {
            type = "boolean",
            traits = {
                json_name = "autoEnable",
            },
        },
    },
}

M.OrganizationScanEc2InstanceWithFindingsResult = {
    type = "structure",
    members = {
        EbsVolumes = {
            type = "structure",
            traits = {
                json_name = "ebsVolumes",
            },
        },
    },
}

M.OrganizationMalwareProtectionConfigurationResult = {
    type = "structure",
    members = {
        ScanEc2InstanceWithFindings = {
            type = "structure",
            traits = {
                json_name = "scanEc2InstanceWithFindings",
            },
        },
    },
}

M.OrganizationS3LogsConfigurationResult = {
    type = "structure",
    members = {
        AutoEnable = {
            type = "boolean",
            traits = {
                json_name = "autoEnable",
                required = true,
            },
        },
    },
}

M.OrganizationDataSourceConfigurationsResult = {
    type = "structure",
    members = {
        S3Logs = {
            type = "structure",
            traits = {
                json_name = "s3Logs",
                required = true,
            },
        },
        Kubernetes = {
            type = "structure",
            traits = {
                json_name = "kubernetes",
            },
        },
        MalwareProtection = {
            type = "structure",
            traits = {
                json_name = "malwareProtection",
            },
        },
    },
}

M.OrgFeatureStatus = {
    NEW = "NEW",
    NONE = "NONE",
    ALL = "ALL",
}

M.OrgFeatureAdditionalConfiguration = {
    EKS_ADDON_MANAGEMENT = "EKS_ADDON_MANAGEMENT",
    ECS_FARGATE_AGENT_MANAGEMENT = "ECS_FARGATE_AGENT_MANAGEMENT",
    EC2_AGENT_MANAGEMENT = "EC2_AGENT_MANAGEMENT",
}

M.OrganizationAdditionalConfigurationResult = {
    type = "structure",
    members = {
        Name = {
            type = "string",
            traits = {
                json_name = "name",
            },
        },
        AutoEnable = {
            type = "string",
            traits = {
                json_name = "autoEnable",
            },
        },
    },
}

M.OrgFeature = {
    S3_DATA_EVENTS = "S3_DATA_EVENTS",
    EKS_AUDIT_LOGS = "EKS_AUDIT_LOGS",
    EBS_MALWARE_PROTECTION = "EBS_MALWARE_PROTECTION",
    RDS_LOGIN_EVENTS = "RDS_LOGIN_EVENTS",
    LAMBDA_NETWORK_LOGS = "LAMBDA_NETWORK_LOGS",
    EKS_RUNTIME_MONITORING = "EKS_RUNTIME_MONITORING",
    RUNTIME_MONITORING = "RUNTIME_MONITORING",
}

M.OrganizationFeatureConfigurationResult = {
    type = "structure",
    members = {
        Name = {
            type = "string",
            traits = {
                json_name = "name",
            },
        },
        AutoEnable = {
            type = "string",
            traits = {
                json_name = "autoEnable",
            },
        },
        AdditionalConfiguration = {
            type = "list",
            member_type = "structure",
            traits = {
                json_name = "additionalConfiguration",
            },
        },
    },
}

M.DescribeOrganizationConfigurationOutput = {
    type = "structure",
    members = {
        AutoEnable = {
            type = "boolean",
            traits = {
                json_name = "autoEnable",
            },
        },
        MemberAccountLimitReached = {
            type = "boolean",
            traits = {
                json_name = "memberAccountLimitReached",
                required = true,
            },
        },
        DataSources = {
            type = "structure",
            traits = {
                json_name = "dataSources",
            },
        },
        Features = {
            type = "list",
            member_type = "structure",
            traits = {
                json_name = "features",
            },
        },
        NextToken = {
            type = "string",
            traits = {
                json_name = "nextToken",
            },
        },
        AutoEnableOrganizationMembers = {
            type = "string",
            traits = {
                json_name = "autoEnableOrganizationMembers",
            },
        },
    },
}

M.DescribePublishingDestinationInput = {
    type = "structure",
    members = {
        DetectorId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        DestinationId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.PublishingStatus = {
    PENDING_VERIFICATION = "PENDING_VERIFICATION",
    PUBLISHING = "PUBLISHING",
    UNABLE_TO_PUBLISH_FIX_DESTINATION_PROPERTY = "UNABLE_TO_PUBLISH_FIX_DESTINATION_PROPERTY",
    STOPPED = "STOPPED",
}

M.DescribePublishingDestinationOutput = {
    type = "structure",
    members = {
        DestinationId = {
            type = "string",
            traits = {
                json_name = "destinationId",
                required = true,
            },
        },
        DestinationType = {
            type = "string",
            traits = {
                json_name = "destinationType",
                required = true,
            },
        },
        Status = {
            type = "string",
            traits = {
                json_name = "status",
                required = true,
            },
        },
        PublishingFailureStartTimestamp = {
            type = "number",
            traits = {
                json_name = "publishingFailureStartTimestamp",
                required = true,
            },
        },
        DestinationProperties = {
            type = "structure",
            traits = {
                json_name = "destinationProperties",
                required = true,
            },
        },
        Tags = {
            type = "map",
            key_type = "string",
            value_type = "string",
            traits = {
                json_name = "tags",
            },
        },
    },
}

M.Destination = {
    type = "structure",
    members = {
        DestinationId = {
            type = "string",
            traits = {
                json_name = "destinationId",
                required = true,
            },
        },
        DestinationType = {
            type = "string",
            traits = {
                json_name = "destinationType",
                required = true,
            },
        },
        Status = {
            type = "string",
            traits = {
                json_name = "status",
                required = true,
            },
        },
    },
}

M.NetworkDirection = {
    INBOUND = "INBOUND",
    OUTBOUND = "OUTBOUND",
}

M.NetworkConnection = {
    type = "structure",
    members = {
        Direction = {
            type = "string",
            traits = {
                json_name = "direction",
                required = true,
            },
        },
    },
}

M.NetworkGeoLocation = {
    type = "structure",
    members = {
        City = {
            type = "string",
            traits = {
                json_name = "city",
                required = true,
            },
        },
        Country = {
            type = "string",
            traits = {
                json_name = "country",
                required = true,
            },
        },
        Latitude = {
            type = "number",
            traits = {
                json_name = "lat",
                required = true,
            },
        },
        Longitude = {
            type = "number",
            traits = {
                json_name = "lon",
                required = true,
            },
        },
    },
}

M.NetworkEndpoint = {
    type = "structure",
    members = {
        Id = {
            type = "string",
            traits = {
                json_name = "id",
                required = true,
            },
        },
        Ip = {
            type = "string",
            traits = {
                json_name = "ip",
            },
        },
        Domain = {
            type = "string",
            traits = {
                json_name = "domain",
            },
        },
        Port = {
            type = "number",
            traits = {
                json_name = "port",
            },
        },
        Location = {
            type = "structure",
            traits = {
                json_name = "location",
            },
        },
        AutonomousSystem = {
            type = "structure",
            traits = {
                json_name = "autonomousSystem",
            },
        },
        Connection = {
            type = "structure",
            traits = {
                json_name = "connection",
            },
        },
    },
}

M.Ec2Image = {
    type = "structure",
    members = {
        Ec2InstanceUids = {
            type = "list",
            member_type = "string",
            traits = {
                json_name = "ec2InstanceUids",
            },
        },
    },
}

M.IamInstanceProfile = {
    type = "structure",
    members = {
        Arn = {
            type = "string",
            traits = {
                json_name = "arn",
            },
        },
        Id = {
            type = "string",
            traits = {
                json_name = "id",
            },
        },
    },
}

M.ProductCode = {
    type = "structure",
    members = {
        Code = {
            type = "string",
            traits = {
                json_name = "productCodeId",
            },
        },
        ProductType = {
            type = "string",
            traits = {
                json_name = "productCodeType",
            },
        },
    },
}

M.Ec2Instance = {
    type = "structure",
    members = {
        AvailabilityZone = {
            type = "string",
            traits = {
                json_name = "availabilityZone",
            },
        },
        ImageDescription = {
            type = "string",
            traits = {
                json_name = "imageDescription",
            },
        },
        InstanceState = {
            type = "string",
            traits = {
                json_name = "instanceState",
            },
        },
        IamInstanceProfile = {
            type = "structure",
        },
        InstanceType = {
            type = "string",
            traits = {
                json_name = "instanceType",
            },
        },
        OutpostArn = {
            type = "string",
            traits = {
                json_name = "outpostArn",
            },
        },
        Platform = {
            type = "string",
            traits = {
                json_name = "platform",
            },
        },
        ProductCodes = {
            type = "list",
            member_type = "structure",
            traits = {
                json_name = "productCodes",
            },
        },
        Ec2NetworkInterfaceUids = {
            type = "list",
            member_type = "string",
            traits = {
                json_name = "ec2NetworkInterfaceUids",
            },
        },
    },
}

M.Ec2LaunchTemplate = {
    type = "structure",
    members = {
        Ec2InstanceUids = {
            type = "list",
            member_type = "string",
            traits = {
                json_name = "ec2InstanceUids",
            },
        },
        Version = {
            type = "string",
            traits = {
                json_name = "version",
            },
        },
    },
}

M.PrivateIpAddressDetails = {
    type = "structure",
    members = {
        PrivateDnsName = {
            type = "string",
            traits = {
                json_name = "privateDnsName",
            },
        },
        PrivateIpAddress = {
            type = "string",
            traits = {
                json_name = "privateIpAddress",
            },
        },
    },
}

M.SecurityGroup = {
    type = "structure",
    members = {
        GroupId = {
            type = "string",
            traits = {
                json_name = "groupId",
            },
        },
        GroupName = {
            type = "string",
            traits = {
                json_name = "groupName",
            },
        },
    },
}

M.Ec2NetworkInterface = {
    type = "structure",
    members = {
        Ipv6Addresses = {
            type = "list",
            member_type = "string",
            traits = {
                json_name = "ipv6Addresses",
            },
        },
        PrivateIpAddresses = {
            type = "list",
            member_type = "structure",
            traits = {
                json_name = "privateIpAddresses",
            },
        },
        PublicIp = {
            type = "string",
            traits = {
                json_name = "publicIp",
            },
        },
        SecurityGroups = {
            type = "list",
            member_type = "structure",
            traits = {
                json_name = "securityGroups",
            },
        },
        SubNetId = {
            type = "string",
            traits = {
                json_name = "subNetId",
            },
        },
        VpcId = {
            type = "string",
            traits = {
                json_name = "vpcId",
            },
        },
    },
}

M.Ec2Vpc = {
    type = "structure",
    members = {
        Ec2InstanceUids = {
            type = "list",
            member_type = "string",
            traits = {
                json_name = "ec2InstanceUids",
            },
        },
    },
}

M.EcsClusterStatus = {
    ACTIVE = "ACTIVE",
    PROVISIONING = "PROVISIONING",
    DEPROVISIONING = "DEPROVISIONING",
    FAILED = "FAILED",
    INACTIVE = "INACTIVE",
}

M.EcsCluster = {
    type = "structure",
    members = {
        Status = {
            type = "string",
            traits = {
                json_name = "status",
            },
        },
        Ec2InstanceUids = {
            type = "list",
            member_type = "string",
            traits = {
                json_name = "ec2InstanceUids",
            },
        },
    },
}

M.EcsLaunchType = {
    FARGATE = "FARGATE",
    EC2 = "EC2",
}

M.EcsTask = {
    type = "structure",
    members = {
        CreatedAt = {
            type = "timestamp",
            traits = {
                json_name = "createdAt",
            },
        },
        TaskDefinitionArn = {
            type = "string",
            traits = {
                json_name = "taskDefinitionArn",
            },
        },
        LaunchType = {
            type = "string",
            traits = {
                json_name = "launchType",
            },
        },
        ContainerUids = {
            type = "list",
            member_type = "string",
            traits = {
                json_name = "containerUids",
            },
        },
    },
}

M.EksCluster = {
    type = "structure",
    members = {
        Arn = {
            type = "string",
            traits = {
                json_name = "arn",
            },
        },
        CreatedAt = {
            type = "timestamp",
            traits = {
                json_name = "createdAt",
            },
        },
        Status = {
            type = "string",
            traits = {
                json_name = "status",
            },
        },
        VpcId = {
            type = "string",
            traits = {
                json_name = "vpcId",
            },
        },
        Ec2InstanceUids = {
            type = "list",
            member_type = "string",
            traits = {
                json_name = "ec2InstanceUids",
            },
        },
    },
}

M.IamInstanceProfileV2 = {
    type = "structure",
    members = {
        Ec2InstanceUids = {
            type = "list",
            member_type = "string",
            traits = {
                json_name = "ec2InstanceUids",
            },
        },
    },
}

M.KubernetesResourcesTypes = {
    PODS = "PODS",
    JOBS = "JOBS",
    CRONJOBS = "CRONJOBS",
    DEPLOYMENTS = "DEPLOYMENTS",
    DAEMONSETS = "DAEMONSETS",
    STATEFULSETS = "STATEFULSETS",
    REPLICASETS = "REPLICASETS",
    REPLICATIONCONTROLLERS = "REPLICATIONCONTROLLERS",
}

M.KubernetesWorkload = {
    type = "structure",
    members = {
        ContainerUids = {
            type = "list",
            member_type = "string",
            traits = {
                json_name = "containerUids",
            },
        },
        Namespace = {
            type = "string",
            traits = {
                json_name = "namespace",
            },
        },
        KubernetesResourcesTypes = {
            type = "string",
            traits = {
                json_name = "type",
            },
        },
    },
}

M.PublicAccessStatus = {
    BLOCKED = "BLOCKED",
    ALLOWED = "ALLOWED",
}

M.PublicAclIgnoreBehavior = {
    IGNORED = "IGNORED",
    NOT_IGNORED = "NOT_IGNORED",
}

M.PublicBucketRestrictBehavior = {
    RESTRICTED = "RESTRICTED",
    NOT_RESTRICTED = "NOT_RESTRICTED",
}

M.PublicAccessConfiguration = {
    type = "structure",
    members = {
        PublicAclAccess = {
            type = "string",
            traits = {
                json_name = "publicAclAccess",
            },
        },
        PublicPolicyAccess = {
            type = "string",
            traits = {
                json_name = "publicPolicyAccess",
            },
        },
        PublicAclIgnoreBehavior = {
            type = "string",
            traits = {
                json_name = "publicAclIgnoreBehavior",
            },
        },
        PublicBucketRestrictBehavior = {
            type = "string",
            traits = {
                json_name = "publicBucketRestrictBehavior",
            },
        },
    },
}

M.S3Bucket = {
    type = "structure",
    members = {
        OwnerId = {
            type = "string",
            traits = {
                json_name = "ownerId",
            },
        },
        CreatedAt = {
            type = "timestamp",
            traits = {
                json_name = "createdAt",
            },
        },
        EncryptionType = {
            type = "string",
            traits = {
                json_name = "encryptionType",
            },
        },
        EncryptionKeyArn = {
            type = "string",
            traits = {
                json_name = "encryptionKeyArn",
            },
        },
        EffectivePermission = {
            type = "string",
            traits = {
                json_name = "effectivePermission",
            },
        },
        PublicReadAccess = {
            type = "string",
            traits = {
                json_name = "publicReadAccess",
            },
        },
        PublicWriteAccess = {
            type = "string",
            traits = {
                json_name = "publicWriteAccess",
            },
        },
        AccountPublicAccess = {
            type = "structure",
            traits = {
                json_name = "accountPublicAccess",
            },
        },
        BucketPublicAccess = {
            type = "structure",
            traits = {
                json_name = "bucketPublicAccess",
            },
        },
        S3ObjectUids = {
            type = "list",
            member_type = "string",
            traits = {
                json_name = "s3ObjectUids",
            },
        },
    },
}

M.S3Object = {
    type = "structure",
    members = {
        ETag = {
            type = "string",
            traits = {
                json_name = "eTag",
            },
        },
        Key = {
            type = "string",
            traits = {
                json_name = "key",
            },
        },
        VersionId = {
            type = "string",
            traits = {
                json_name = "versionId",
            },
        },
    },
}

M.ResourceData = {
    type = "structure",
    members = {
        S3Bucket = {
            type = "structure",
            traits = {
                json_name = "s3Bucket",
            },
        },
        Ec2Instance = {
            type = "structure",
            traits = {
                json_name = "ec2Instance",
            },
        },
        AccessKey = {
            type = "structure",
            traits = {
                json_name = "accessKey",
            },
        },
        Ec2NetworkInterface = {
            type = "structure",
            traits = {
                json_name = "ec2NetworkInterface",
            },
        },
        S3Object = {
            type = "structure",
            traits = {
                json_name = "s3Object",
            },
        },
        EksCluster = {
            type = "structure",
            traits = {
                json_name = "eksCluster",
            },
        },
        KubernetesWorkload = {
            type = "structure",
            traits = {
                json_name = "kubernetesWorkload",
            },
        },
        Container = {
            type = "structure",
            traits = {
                json_name = "container",
            },
        },
        EcsCluster = {
            type = "structure",
            traits = {
                json_name = "ecsCluster",
            },
        },
        EcsTask = {
            type = "structure",
            traits = {
                json_name = "ecsTask",
            },
        },
        IamInstanceProfile = {
            type = "structure",
            traits = {
                json_name = "iamInstanceProfile",
            },
        },
        AutoscalingAutoScalingGroup = {
            type = "structure",
            traits = {
                json_name = "autoscalingAutoScalingGroup",
            },
        },
        Ec2LaunchTemplate = {
            type = "structure",
            traits = {
                json_name = "ec2LaunchTemplate",
            },
        },
        Ec2Vpc = {
            type = "structure",
            traits = {
                json_name = "ec2Vpc",
            },
        },
        Ec2Image = {
            type = "structure",
            traits = {
                json_name = "ec2Image",
            },
        },
        CloudformationStack = {
            type = "structure",
            traits = {
                json_name = "cloudformationStack",
            },
        },
    },
}

M.FindingResourceType = {
    EC2_INSTANCE = "EC2_INSTANCE",
    EC2_NETWORK_INTERFACE = "EC2_NETWORK_INTERFACE",
    S3_BUCKET = "S3_BUCKET",
    S3_OBJECT = "S3_OBJECT",
    ACCESS_KEY = "ACCESS_KEY",
    EKS_CLUSTER = "EKS_CLUSTER",
    KUBERNETES_WORKLOAD = "KUBERNETES_WORKLOAD",
    CONTAINER = "CONTAINER",
    ECS_CLUSTER = "ECS_CLUSTER",
    ECS_TASK = "ECS_TASK",
    AUTOSCALING_AUTO_SCALING_GROUP = "AUTOSCALING_AUTO_SCALING_GROUP",
    IAM_INSTANCE_PROFILE = "IAM_INSTANCE_PROFILE",
    CLOUDFORMATION_STACK = "CLOUDFORMATION_STACK",
    EC2_LAUNCH_TEMPLATE = "EC2_LAUNCH_TEMPLATE",
    EC2_VPC = "EC2_VPC",
    EC2_IMAGE = "EC2_IMAGE",
}

M.Tag = {
    type = "structure",
    members = {
        Key = {
            type = "string",
            traits = {
                json_name = "key",
            },
        },
        Value = {
            type = "string",
            traits = {
                json_name = "value",
            },
        },
    },
}

M.ResourceV2 = {
    type = "structure",
    members = {
        Uid = {
            type = "string",
            traits = {
                json_name = "uid",
                required = true,
            },
        },
        Name = {
            type = "string",
            traits = {
                json_name = "name",
            },
        },
        AccountId = {
            type = "string",
            traits = {
                json_name = "accountId",
            },
        },
        ResourceType = {
            type = "string",
            traits = {
                json_name = "resourceType",
                required = true,
            },
        },
        Region = {
            type = "string",
            traits = {
                json_name = "region",
            },
        },
        Service = {
            type = "string",
            traits = {
                json_name = "service",
            },
        },
        CloudPartition = {
            type = "string",
            traits = {
                json_name = "cloudPartition",
            },
        },
        Tags = {
            type = "list",
            member_type = "structure",
            traits = {
                json_name = "tags",
            },
        },
        Data = {
            type = "structure",
            traits = {
                json_name = "data",
            },
        },
    },
}

M.IndicatorType = {
    SUSPICIOUS_USER_AGENT = "SUSPICIOUS_USER_AGENT",
    SUSPICIOUS_NETWORK = "SUSPICIOUS_NETWORK",
    MALICIOUS_IP = "MALICIOUS_IP",
    TOR_IP = "TOR_IP",
    ATTACK_TACTIC = "ATTACK_TACTIC",
    HIGH_RISK_API = "HIGH_RISK_API",
    ATTACK_TECHNIQUE = "ATTACK_TECHNIQUE",
    UNUSUAL_API_FOR_ACCOUNT = "UNUSUAL_API_FOR_ACCOUNT",
    UNUSUAL_ASN_FOR_ACCOUNT = "UNUSUAL_ASN_FOR_ACCOUNT",
    UNUSUAL_ASN_FOR_USER = "UNUSUAL_ASN_FOR_USER",
    SUSPICIOUS_PROCESS = "SUSPICIOUS_PROCESS",
    MALICIOUS_DOMAIN = "MALICIOUS_DOMAIN",
    MALICIOUS_PROCESS = "MALICIOUS_PROCESS",
    CRYPTOMINING_IP = "CRYPTOMINING_IP",
    CRYPTOMINING_DOMAIN = "CRYPTOMINING_DOMAIN",
    CRYPTOMINING_PROCESS = "CRYPTOMINING_PROCESS",
    MALICIOUS_FILE = "MALICIOUS_FILE",
}

M.Indicator = {
    type = "structure",
    members = {
        Key = {
            type = "string",
            traits = {
                json_name = "key",
                required = true,
            },
        },
        Values = {
            type = "list",
            member_type = "string",
            traits = {
                json_name = "values",
            },
        },
        Title = {
            type = "string",
            traits = {
                json_name = "title",
            },
        },
    },
}

M.SignalType = {
    FINDING = "FINDING",
    CLOUD_TRAIL = "CLOUD_TRAIL",
    S3_DATA_EVENTS = "S3_DATA_EVENTS",
    EKS_AUDIT_LOGS = "EKS_AUDIT_LOGS",
    FLOW_LOGS = "FLOW_LOGS",
    DNS_LOGS = "DNS_LOGS",
    RUNTIME_MONITORING = "RUNTIME_MONITORING",
}

M.Signal = {
    type = "structure",
    members = {
        Uid = {
            type = "string",
            traits = {
                json_name = "uid",
                required = true,
            },
        },
        Type = {
            type = "string",
            traits = {
                json_name = "type",
                required = true,
            },
        },
        Description = {
            type = "string",
            traits = {
                json_name = "description",
            },
        },
        Name = {
            type = "string",
            traits = {
                json_name = "name",
                required = true,
            },
        },
        CreatedAt = {
            type = "timestamp",
            traits = {
                json_name = "createdAt",
                required = true,
            },
        },
        UpdatedAt = {
            type = "timestamp",
            traits = {
                json_name = "updatedAt",
                required = true,
            },
        },
        FirstSeenAt = {
            type = "timestamp",
            traits = {
                json_name = "firstSeenAt",
                required = true,
            },
        },
        LastSeenAt = {
            type = "timestamp",
            traits = {
                json_name = "lastSeenAt",
                required = true,
            },
        },
        Severity = {
            type = "number",
            traits = {
                json_name = "severity",
            },
        },
        Count = {
            type = "number",
            traits = {
                json_name = "count",
                required = true,
            },
        },
        ResourceUids = {
            type = "list",
            member_type = "string",
            traits = {
                json_name = "resourceUids",
            },
        },
        ActorIds = {
            type = "list",
            member_type = "string",
            traits = {
                json_name = "actorIds",
            },
        },
        EndpointIds = {
            type = "list",
            member_type = "string",
            traits = {
                json_name = "endpointIds",
            },
        },
        SignalIndicators = {
            type = "list",
            member_type = "structure",
            traits = {
                json_name = "signalIndicators",
            },
        },
    },
}

M.Sequence = {
    type = "structure",
    members = {
        Uid = {
            type = "string",
            traits = {
                json_name = "uid",
                required = true,
            },
        },
        Description = {
            type = "string",
            traits = {
                json_name = "description",
                required = true,
            },
        },
        Actors = {
            type = "list",
            member_type = "structure",
            traits = {
                json_name = "actors",
            },
        },
        Resources = {
            type = "list",
            member_type = "structure",
            traits = {
                json_name = "resources",
            },
        },
        Endpoints = {
            type = "list",
            member_type = "structure",
            traits = {
                json_name = "endpoints",
            },
        },
        Signals = {
            type = "list",
            member_type = "structure",
            traits = {
                json_name = "signals",
                required = true,
            },
        },
        SequenceIndicators = {
            type = "list",
            member_type = "structure",
            traits = {
                json_name = "sequenceIndicators",
            },
        },
        AdditionalSequenceTypes = {
            type = "list",
            member_type = "string",
            traits = {
                json_name = "additionalSequenceTypes",
            },
        },
    },
}

M.Detection = {
    type = "structure",
    members = {
        Anomaly = {
            type = "structure",
            traits = {
                json_name = "anomaly",
            },
        },
        Sequence = {
            type = "structure",
            traits = {
                json_name = "sequence",
            },
        },
    },
}

M.DetectionSource = {
    AMAZON = "AMAZON",
    BITDEFENDER = "BITDEFENDER",
}

M.DetectorAdditionalConfigurationResult = {
    type = "structure",
    members = {
        Name = {
            type = "string",
            traits = {
                json_name = "name",
            },
        },
        Status = {
            type = "string",
            traits = {
                json_name = "status",
            },
        },
        UpdatedAt = {
            type = "timestamp",
            traits = {
                json_name = "updatedAt",
            },
        },
    },
}

M.DetectorFeatureResult = {
    FLOW_LOGS = "FLOW_LOGS",
    CLOUD_TRAIL = "CLOUD_TRAIL",
    DNS_LOGS = "DNS_LOGS",
    S3_DATA_EVENTS = "S3_DATA_EVENTS",
    EKS_AUDIT_LOGS = "EKS_AUDIT_LOGS",
    EBS_MALWARE_PROTECTION = "EBS_MALWARE_PROTECTION",
    RDS_LOGIN_EVENTS = "RDS_LOGIN_EVENTS",
    LAMBDA_NETWORK_LOGS = "LAMBDA_NETWORK_LOGS",
    EKS_RUNTIME_MONITORING = "EKS_RUNTIME_MONITORING",
    RUNTIME_MONITORING = "RUNTIME_MONITORING",
}

M.DetectorFeatureConfigurationResult = {
    type = "structure",
    members = {
        Name = {
            type = "string",
            traits = {
                json_name = "name",
            },
        },
        Status = {
            type = "string",
            traits = {
                json_name = "status",
            },
        },
        UpdatedAt = {
            type = "timestamp",
            traits = {
                json_name = "updatedAt",
            },
        },
        AdditionalConfiguration = {
            type = "list",
            member_type = "structure",
            traits = {
                json_name = "additionalConfiguration",
            },
        },
    },
}

M.DetectorStatus = {
    ENABLED = "ENABLED",
    DISABLED = "DISABLED",
}

M.DisableOrganizationAdminAccountInput = {
    type = "structure",
    members = {
        AdminAccountId = {
            type = "string",
            traits = {
                json_name = "adminAccountId",
                required = true,
            },
        },
    },
}

M.DisableOrganizationAdminAccountOutput = {
    type = "structure",
}

M.DisassociateFromAdministratorAccountInput = {
    type = "structure",
    members = {
        DetectorId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.DisassociateFromAdministratorAccountOutput = {
    type = "structure",
}

M.DisassociateFromMasterAccountInput = {
    type = "structure",
    members = {
        DetectorId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.DisassociateFromMasterAccountOutput = {
    type = "structure",
}

M.DisassociateMembersInput = {
    type = "structure",
    members = {
        DetectorId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        AccountIds = {
            type = "list",
            member_type = "string",
            traits = {
                json_name = "accountIds",
                required = true,
            },
        },
    },
}

M.DisassociateMembersOutput = {
    type = "structure",
    members = {
        UnprocessedAccounts = {
            type = "list",
            member_type = "structure",
            traits = {
                json_name = "unprocessedAccounts",
                required = true,
            },
        },
    },
}

M.EbsSnapshot = {
    type = "structure",
    members = {
        DeviceName = {
            type = "string",
            traits = {
                json_name = "deviceName",
            },
        },
    },
}

M.EbsSnapshotDetails = {
    type = "structure",
    members = {
        SnapshotArn = {
            type = "string",
            traits = {
                json_name = "snapshotArn",
            },
        },
    },
}

M.EbsSnapshotPreservation = {
    NO_RETENTION = "NO_RETENTION",
    RETENTION_WITH_FINDING = "RETENTION_WITH_FINDING",
}

M.EbsVolumeDetails = {
    type = "structure",
    members = {
        ScannedVolumeDetails = {
            type = "list",
            member_type = "structure",
            traits = {
                json_name = "scannedVolumeDetails",
            },
        },
        SkippedVolumeDetails = {
            type = "list",
            member_type = "structure",
            traits = {
                json_name = "skippedVolumeDetails",
            },
        },
    },
}

M.HighestSeverityThreatDetails = {
    type = "structure",
    members = {
        Severity = {
            type = "string",
            traits = {
                json_name = "severity",
            },
        },
        ThreatName = {
            type = "string",
            traits = {
                json_name = "threatName",
            },
        },
        Count = {
            type = "number",
            traits = {
                json_name = "count",
            },
        },
    },
}

M.ScannedItemCount = {
    type = "structure",
    members = {
        TotalGb = {
            type = "number",
            traits = {
                json_name = "totalGb",
            },
        },
        Files = {
            type = "number",
            traits = {
                json_name = "files",
            },
        },
        Volumes = {
            type = "number",
            traits = {
                json_name = "volumes",
            },
        },
    },
}

M.ScanFilePath = {
    type = "structure",
    members = {
        FilePath = {
            type = "string",
            traits = {
                json_name = "filePath",
            },
        },
        VolumeArn = {
            type = "string",
            traits = {
                json_name = "volumeArn",
            },
        },
        Hash = {
            type = "string",
            traits = {
                json_name = "hash",
            },
        },
        FileName = {
            type = "string",
            traits = {
                json_name = "fileName",
            },
        },
    },
}

M.ScanThreatName = {
    type = "structure",
    members = {
        Name = {
            type = "string",
            traits = {
                json_name = "name",
            },
        },
        Severity = {
            type = "string",
            traits = {
                json_name = "severity",
            },
        },
        ItemCount = {
            type = "number",
            traits = {
                json_name = "itemCount",
            },
        },
        FilePaths = {
            type = "list",
            member_type = "structure",
            traits = {
                json_name = "filePaths",
            },
        },
    },
}

M.ThreatDetectedByName = {
    type = "structure",
    members = {
        ItemCount = {
            type = "number",
            traits = {
                json_name = "itemCount",
            },
        },
        UniqueThreatNameCount = {
            type = "number",
            traits = {
                json_name = "uniqueThreatNameCount",
            },
        },
        Shortened = {
            type = "boolean",
            traits = {
                json_name = "shortened",
            },
        },
        ThreatNames = {
            type = "list",
            member_type = "structure",
            traits = {
                json_name = "threatNames",
            },
        },
    },
}

M.ThreatsDetectedItemCount = {
    type = "structure",
    members = {
        Files = {
            type = "number",
            traits = {
                json_name = "files",
            },
        },
    },
}

M.ScanDetections = {
    type = "structure",
    members = {
        ScannedItemCount = {
            type = "structure",
            traits = {
                json_name = "scannedItemCount",
            },
        },
        ThreatsDetectedItemCount = {
            type = "structure",
            traits = {
                json_name = "threatsDetectedItemCount",
            },
        },
        HighestSeverityThreatDetails = {
            type = "structure",
            traits = {
                json_name = "highestSeverityThreatDetails",
            },
        },
        ThreatDetectedByName = {
            type = "structure",
            traits = {
                json_name = "threatDetectedByName",
            },
        },
    },
}

M.EbsVolumeScanDetails = {
    type = "structure",
    members = {
        ScanId = {
            type = "string",
            traits = {
                json_name = "scanId",
            },
        },
        ScanStartedAt = {
            type = "timestamp",
            traits = {
                json_name = "scanStartedAt",
            },
        },
        ScanCompletedAt = {
            type = "timestamp",
            traits = {
                json_name = "scanCompletedAt",
            },
        },
        TriggerFindingId = {
            type = "string",
            traits = {
                json_name = "triggerFindingId",
            },
        },
        Sources = {
            type = "list",
            member_type = "string",
            traits = {
                json_name = "sources",
            },
        },
        ScanDetections = {
            type = "structure",
            traits = {
                json_name = "scanDetections",
            },
        },
        ScanType = {
            type = "string",
            traits = {
                json_name = "scanType",
            },
        },
    },
}

M.Ec2ImageDetails = {
    type = "structure",
    members = {
        ImageArn = {
            type = "string",
            traits = {
                json_name = "imageArn",
            },
        },
    },
}

M.HostPath = {
    type = "structure",
    members = {
        Path = {
            type = "string",
            traits = {
                json_name = "path",
            },
        },
    },
}

M.Volume = {
    type = "structure",
    members = {
        Name = {
            type = "string",
            traits = {
                json_name = "name",
            },
        },
        HostPath = {
            type = "structure",
            traits = {
                json_name = "hostPath",
            },
        },
    },
}

M.EcsTaskDetails = {
    type = "structure",
    members = {
        Arn = {
            type = "string",
            traits = {
                json_name = "arn",
            },
        },
        DefinitionArn = {
            type = "string",
            traits = {
                json_name = "definitionArn",
            },
        },
        Version = {
            type = "string",
            traits = {
                json_name = "version",
            },
        },
        TaskCreatedAt = {
            type = "timestamp",
            traits = {
                json_name = "createdAt",
            },
        },
        StartedAt = {
            type = "timestamp",
            traits = {
                json_name = "startedAt",
            },
        },
        StartedBy = {
            type = "string",
            traits = {
                json_name = "startedBy",
            },
        },
        Tags = {
            type = "list",
            member_type = "structure",
            traits = {
                json_name = "tags",
            },
        },
        Volumes = {
            type = "list",
            member_type = "structure",
            traits = {
                json_name = "volumes",
            },
        },
        Containers = {
            type = "list",
            member_type = "structure",
            traits = {
                json_name = "containers",
            },
        },
        Group = {
            type = "string",
            traits = {
                json_name = "group",
            },
        },
        LaunchType = {
            type = "string",
            traits = {
                json_name = "launchType",
            },
        },
    },
}

M.EcsClusterDetails = {
    type = "structure",
    members = {
        Name = {
            type = "string",
            traits = {
                json_name = "name",
            },
        },
        Arn = {
            type = "string",
            traits = {
                json_name = "arn",
            },
        },
        Status = {
            type = "string",
            traits = {
                json_name = "status",
            },
        },
        ActiveServicesCount = {
            type = "number",
            traits = {
                json_name = "activeServicesCount",
            },
        },
        RegisteredContainerInstancesCount = {
            type = "number",
            traits = {
                json_name = "registeredContainerInstancesCount",
            },
        },
        RunningTasksCount = {
            type = "number",
            traits = {
                json_name = "runningTasksCount",
            },
        },
        Tags = {
            type = "list",
            member_type = "structure",
            traits = {
                json_name = "tags",
            },
        },
        TaskDetails = {
            type = "structure",
            traits = {
                json_name = "taskDetails",
            },
        },
    },
}

M.EksClusterDetails = {
    type = "structure",
    members = {
        Name = {
            type = "string",
            traits = {
                json_name = "name",
            },
        },
        Arn = {
            type = "string",
            traits = {
                json_name = "arn",
            },
        },
        VpcId = {
            type = "string",
            traits = {
                json_name = "vpcId",
            },
        },
        Status = {
            type = "string",
            traits = {
                json_name = "status",
            },
        },
        Tags = {
            type = "list",
            member_type = "structure",
            traits = {
                json_name = "tags",
            },
        },
        CreatedAt = {
            type = "timestamp",
            traits = {
                json_name = "createdAt",
            },
        },
    },
}

M.EnableOrganizationAdminAccountInput = {
    type = "structure",
    members = {
        AdminAccountId = {
            type = "string",
            traits = {
                json_name = "adminAccountId",
                required = true,
            },
        },
    },
}

M.EnableOrganizationAdminAccountOutput = {
    type = "structure",
}

M.ThreatIntelligenceDetail = {
    type = "structure",
    members = {
        ThreatListName = {
            type = "string",
            traits = {
                json_name = "threatListName",
            },
        },
        ThreatNames = {
            type = "list",
            member_type = "string",
            traits = {
                json_name = "threatNames",
            },
        },
        ThreatFileSha256 = {
            type = "string",
            traits = {
                json_name = "threatFileSha256",
            },
        },
    },
}

M.Evidence = {
    type = "structure",
    members = {
        ThreatIntelligenceDetails = {
            type = "list",
            member_type = "structure",
            traits = {
                json_name = "threatIntelligenceDetails",
            },
        },
    },
}

M.Feedback = {
    USEFUL = "USEFUL",
    NOT_USEFUL = "NOT_USEFUL",
}

M.NetworkInterface = {
    type = "structure",
    members = {
        Ipv6Addresses = {
            type = "list",
            member_type = "string",
            traits = {
                json_name = "ipv6Addresses",
            },
        },
        NetworkInterfaceId = {
            type = "string",
            traits = {
                json_name = "networkInterfaceId",
            },
        },
        PrivateDnsName = {
            type = "string",
            traits = {
                json_name = "privateDnsName",
            },
        },
        PrivateIpAddress = {
            type = "string",
            traits = {
                json_name = "privateIpAddress",
            },
        },
        PrivateIpAddresses = {
            type = "list",
            member_type = "structure",
            traits = {
                json_name = "privateIpAddresses",
            },
        },
        PublicDnsName = {
            type = "string",
            traits = {
                json_name = "publicDnsName",
            },
        },
        PublicIp = {
            type = "string",
            traits = {
                json_name = "publicIp",
            },
        },
        SecurityGroups = {
            type = "list",
            member_type = "structure",
            traits = {
                json_name = "securityGroups",
            },
        },
        SubnetId = {
            type = "string",
            traits = {
                json_name = "subnetId",
            },
        },
        VpcId = {
            type = "string",
            traits = {
                json_name = "vpcId",
            },
        },
    },
}

M.InstanceDetails = {
    type = "structure",
    members = {
        AvailabilityZone = {
            type = "string",
            traits = {
                json_name = "availabilityZone",
            },
        },
        IamInstanceProfile = {
            type = "structure",
            traits = {
                json_name = "iamInstanceProfile",
            },
        },
        ImageDescription = {
            type = "string",
            traits = {
                json_name = "imageDescription",
            },
        },
        ImageId = {
            type = "string",
            traits = {
                json_name = "imageId",
            },
        },
        InstanceId = {
            type = "string",
            traits = {
                json_name = "instanceId",
            },
        },
        InstanceState = {
            type = "string",
            traits = {
                json_name = "instanceState",
            },
        },
        InstanceType = {
            type = "string",
            traits = {
                json_name = "instanceType",
            },
        },
        OutpostArn = {
            type = "string",
            traits = {
                json_name = "outpostArn",
            },
        },
        LaunchTime = {
            type = "string",
            traits = {
                json_name = "launchTime",
            },
        },
        NetworkInterfaces = {
            type = "list",
            member_type = "structure",
            traits = {
                json_name = "networkInterfaces",
            },
        },
        Platform = {
            type = "string",
            traits = {
                json_name = "platform",
            },
        },
        ProductCodes = {
            type = "list",
            member_type = "structure",
            traits = {
                json_name = "productCodes",
            },
        },
        Tags = {
            type = "list",
            member_type = "structure",
            traits = {
                json_name = "tags",
            },
        },
    },
}

M.ImpersonatedUser = {
    type = "structure",
    members = {
        Username = {
            type = "string",
            traits = {
                json_name = "username",
            },
        },
        Groups = {
            type = "list",
            member_type = "string",
            traits = {
                json_name = "groups",
            },
        },
    },
}

M.KubernetesUserDetails = {
    type = "structure",
    members = {
        Username = {
            type = "string",
            traits = {
                json_name = "username",
            },
        },
        Uid = {
            type = "string",
            traits = {
                json_name = "uid",
            },
        },
        Groups = {
            type = "list",
            member_type = "string",
            traits = {
                json_name = "groups",
            },
        },
        SessionName = {
            type = "list",
            member_type = "string",
            traits = {
                json_name = "sessionName",
            },
        },
        ImpersonatedUser = {
            type = "structure",
            traits = {
                json_name = "impersonatedUser",
            },
        },
    },
}

M.KubernetesWorkloadDetails = {
    type = "structure",
    members = {
        Name = {
            type = "string",
            traits = {
                json_name = "name",
            },
        },
        Type = {
            type = "string",
            traits = {
                json_name = "type",
            },
        },
        Uid = {
            type = "string",
            traits = {
                json_name = "uid",
            },
        },
        Namespace = {
            type = "string",
            traits = {
                json_name = "namespace",
            },
        },
        HostNetwork = {
            type = "boolean",
            traits = {
                json_name = "hostNetwork",
            },
        },
        ServiceAccountName = {
            type = "string",
            traits = {
                json_name = "serviceAccountName",
            },
        },
        Containers = {
            type = "list",
            member_type = "structure",
            traits = {
                json_name = "containers",
            },
        },
        Volumes = {
            type = "list",
            member_type = "structure",
            traits = {
                json_name = "volumes",
            },
        },
        HostIPC = {
            type = "boolean",
            traits = {
                json_name = "hostIPC",
            },
        },
        HostPID = {
            type = "boolean",
            traits = {
                json_name = "hostPID",
            },
        },
    },
}

M.KubernetesDetails = {
    type = "structure",
    members = {
        KubernetesUserDetails = {
            type = "structure",
            traits = {
                json_name = "kubernetesUserDetails",
            },
        },
        KubernetesWorkloadDetails = {
            type = "structure",
            traits = {
                json_name = "kubernetesWorkloadDetails",
            },
        },
    },
}

M.VpcConfig = {
    type = "structure",
    members = {
        SubnetIds = {
            type = "list",
            member_type = "string",
            traits = {
                json_name = "subnetIds",
            },
        },
        VpcId = {
            type = "string",
            traits = {
                json_name = "vpcId",
            },
        },
        SecurityGroups = {
            type = "list",
            member_type = "structure",
            traits = {
                json_name = "securityGroups",
            },
        },
    },
}

M.LambdaDetails = {
    type = "structure",
    members = {
        FunctionArn = {
            type = "string",
            traits = {
                json_name = "functionArn",
            },
        },
        FunctionName = {
            type = "string",
            traits = {
                json_name = "functionName",
            },
        },
        Description = {
            type = "string",
            traits = {
                json_name = "description",
            },
        },
        LastModifiedAt = {
            type = "timestamp",
            traits = {
                json_name = "lastModifiedAt",
            },
        },
        RevisionId = {
            type = "string",
            traits = {
                json_name = "revisionId",
            },
        },
        FunctionVersion = {
            type = "string",
            traits = {
                json_name = "functionVersion",
            },
        },
        Role = {
            type = "string",
            traits = {
                json_name = "role",
            },
        },
        VpcConfig = {
            type = "structure",
            traits = {
                json_name = "vpcConfig",
            },
        },
        Tags = {
            type = "list",
            member_type = "structure",
            traits = {
                json_name = "tags",
            },
        },
    },
}

M.RdsDbInstanceDetails = {
    type = "structure",
    members = {
        DbInstanceIdentifier = {
            type = "string",
            traits = {
                json_name = "dbInstanceIdentifier",
            },
        },
        Engine = {
            type = "string",
            traits = {
                json_name = "engine",
            },
        },
        EngineVersion = {
            type = "string",
            traits = {
                json_name = "engineVersion",
            },
        },
        DbClusterIdentifier = {
            type = "string",
            traits = {
                json_name = "dbClusterIdentifier",
            },
        },
        DbInstanceArn = {
            type = "string",
            traits = {
                json_name = "dbInstanceArn",
            },
        },
        DbiResourceId = {
            type = "string",
            traits = {
                json_name = "dbiResourceId",
            },
        },
        Tags = {
            type = "list",
            member_type = "structure",
            traits = {
                json_name = "tags",
            },
        },
    },
}

M.RdsDbUserDetails = {
    type = "structure",
    members = {
        User = {
            type = "string",
            traits = {
                json_name = "user",
            },
        },
        Application = {
            type = "string",
            traits = {
                json_name = "application",
            },
        },
        Database = {
            type = "string",
            traits = {
                json_name = "database",
            },
        },
        Ssl = {
            type = "string",
            traits = {
                json_name = "ssl",
            },
        },
        AuthMethod = {
            type = "string",
            traits = {
                json_name = "authMethod",
            },
        },
    },
}

M.RdsLimitlessDbDetails = {
    type = "structure",
    members = {
        DbShardGroupIdentifier = {
            type = "string",
            traits = {
                json_name = "dbShardGroupIdentifier",
            },
        },
        DbShardGroupResourceId = {
            type = "string",
            traits = {
                json_name = "dbShardGroupResourceId",
            },
        },
        DbShardGroupArn = {
            type = "string",
            traits = {
                json_name = "dbShardGroupArn",
            },
        },
        Engine = {
            type = "string",
            traits = {
                json_name = "engine",
            },
        },
        EngineVersion = {
            type = "string",
            traits = {
                json_name = "engineVersion",
            },
        },
        DbClusterIdentifier = {
            type = "string",
            traits = {
                json_name = "dbClusterIdentifier",
            },
        },
        Tags = {
            type = "list",
            member_type = "structure",
            traits = {
                json_name = "tags",
            },
        },
    },
}

M.RecoveryPointDetails = {
    type = "structure",
    members = {
        RecoveryPointArn = {
            type = "string",
            traits = {
                json_name = "recoveryPointArn",
            },
        },
        BackupVaultName = {
            type = "string",
            traits = {
                json_name = "backupVaultName",
            },
        },
    },
}

M.Owner = {
    type = "structure",
    members = {
        Id = {
            type = "string",
            traits = {
                json_name = "id",
            },
        },
    },
}

M.PermissionConfiguration = {
    type = "structure",
    members = {
        BucketLevelPermissions = {
            type = "structure",
            traits = {
                json_name = "bucketLevelPermissions",
            },
        },
        AccountLevelPermissions = {
            type = "structure",
            traits = {
                json_name = "accountLevelPermissions",
            },
        },
    },
}

M.PublicAccess = {
    type = "structure",
    members = {
        PermissionConfiguration = {
            type = "structure",
            traits = {
                json_name = "permissionConfiguration",
            },
        },
        EffectivePermission = {
            type = "string",
            traits = {
                json_name = "effectivePermission",
            },
        },
    },
}

M.S3ObjectDetail = {
    type = "structure",
    members = {
        ObjectArn = {
            type = "string",
            traits = {
                json_name = "objectArn",
            },
        },
        Key = {
            type = "string",
            traits = {
                json_name = "key",
            },
        },
        ETag = {
            type = "string",
            traits = {
                json_name = "eTag",
            },
        },
        Hash = {
            type = "string",
            traits = {
                json_name = "hash",
            },
        },
        VersionId = {
            type = "string",
            traits = {
                json_name = "versionId",
            },
        },
    },
}

M.S3BucketDetail = {
    type = "structure",
    members = {
        Arn = {
            type = "string",
            traits = {
                json_name = "arn",
            },
        },
        Name = {
            type = "string",
            traits = {
                json_name = "name",
            },
        },
        Type = {
            type = "string",
            traits = {
                json_name = "type",
            },
        },
        CreatedAt = {
            type = "timestamp",
            traits = {
                json_name = "createdAt",
            },
        },
        Owner = {
            type = "structure",
            traits = {
                json_name = "owner",
            },
        },
        Tags = {
            type = "list",
            member_type = "structure",
            traits = {
                json_name = "tags",
            },
        },
        DefaultServerSideEncryption = {
            type = "structure",
            traits = {
                json_name = "defaultServerSideEncryption",
            },
        },
        PublicAccess = {
            type = "structure",
            traits = {
                json_name = "publicAccess",
            },
        },
        S3ObjectDetails = {
            type = "list",
            member_type = "structure",
            traits = {
                json_name = "s3ObjectDetails",
            },
        },
    },
}

M.Resource = {
    type = "structure",
    members = {
        AccessKeyDetails = {
            type = "structure",
            traits = {
                json_name = "accessKeyDetails",
            },
        },
        S3BucketDetails = {
            type = "list",
            member_type = "structure",
            traits = {
                json_name = "s3BucketDetails",
            },
        },
        InstanceDetails = {
            type = "structure",
            traits = {
                json_name = "instanceDetails",
            },
        },
        EksClusterDetails = {
            type = "structure",
            traits = {
                json_name = "eksClusterDetails",
            },
        },
        KubernetesDetails = {
            type = "structure",
            traits = {
                json_name = "kubernetesDetails",
            },
        },
        ResourceType = {
            type = "string",
            traits = {
                json_name = "resourceType",
            },
        },
        EbsVolumeDetails = {
            type = "structure",
            traits = {
                json_name = "ebsVolumeDetails",
            },
        },
        EcsClusterDetails = {
            type = "structure",
            traits = {
                json_name = "ecsClusterDetails",
            },
        },
        ContainerDetails = {
            type = "structure",
            traits = {
                json_name = "containerDetails",
            },
        },
        LambdaDetails = {
            type = "structure",
            traits = {
                json_name = "lambdaDetails",
            },
        },
        RdsDbInstanceDetails = {
            type = "structure",
            traits = {
                json_name = "rdsDbInstanceDetails",
            },
        },
        RdsLimitlessDbDetails = {
            type = "structure",
            traits = {
                json_name = "rdsLimitlessDbDetails",
            },
        },
        RdsDbUserDetails = {
            type = "structure",
            traits = {
                json_name = "rdsDbUserDetails",
            },
        },
        EbsSnapshotDetails = {
            type = "structure",
            traits = {
                json_name = "ebsSnapshotDetails",
            },
        },
        Ec2ImageDetails = {
            type = "structure",
            traits = {
                json_name = "ec2ImageDetails",
            },
        },
        RecoveryPointDetails = {
            type = "structure",
            traits = {
                json_name = "recoveryPointDetails",
            },
        },
    },
}

M.ServiceAdditionalInfo = {
    type = "structure",
    members = {
        Value = {
            type = "string",
            traits = {
                json_name = "value",
            },
        },
        Type = {
            type = "string",
            traits = {
                json_name = "type",
            },
        },
    },
}

M.ScanCategory = {
    FULL_SCAN = "FULL_SCAN",
    INCREMENTAL_SCAN = "INCREMENTAL_SCAN",
}

M.IncrementalScanDetails = {
    type = "structure",
    members = {
        BaselineResourceArn = {
            type = "string",
            traits = {
                json_name = "baselineResourceArn",
                required = true,
            },
        },
    },
}

M.MalwareProtectionFindingsScanConfiguration = {
    type = "structure",
    members = {
        TriggerType = {
            type = "string",
            traits = {
                json_name = "triggerType",
            },
        },
        IncrementalScanDetails = {
            type = "structure",
            traits = {
                json_name = "incrementalScanDetails",
            },
        },
    },
}

M.MalwareProtectionScanType = {
    BACKUP_INITIATED = "BACKUP_INITIATED",
    ON_DEMAND = "ON_DEMAND",
    GUARDDUTY_INITIATED = "GUARDDUTY_INITIATED",
}

M.ItemDetails = {
    type = "structure",
    members = {
        ResourceArn = {
            type = "string",
            traits = {
                json_name = "resourceArn",
            },
        },
        ItemPath = {
            type = "string",
            traits = {
                json_name = "itemPath",
            },
        },
        Hash = {
            type = "string",
            traits = {
                json_name = "hash",
            },
        },
        AdditionalInfo = {
            type = "structure",
            traits = {
                json_name = "additionalInfo",
            },
        },
    },
}

M.ItemPath = {
    type = "structure",
    members = {
        NestedItemPath = {
            type = "string",
            traits = {
                json_name = "nestedItemPath",
            },
        },
        Hash = {
            type = "string",
            traits = {
                json_name = "hash",
            },
        },
    },
}

M.Threat = {
    type = "structure",
    members = {
        Name = {
            type = "string",
            traits = {
                json_name = "name",
            },
        },
        Source = {
            type = "string",
            traits = {
                json_name = "source",
            },
        },
        ItemPaths = {
            type = "list",
            member_type = "structure",
            traits = {
                json_name = "itemPaths",
            },
        },
        Count = {
            type = "number",
            traits = {
                json_name = "count",
            },
        },
        Hash = {
            type = "string",
            traits = {
                json_name = "hash",
            },
        },
        ItemDetails = {
            type = "list",
            member_type = "structure",
            traits = {
                json_name = "itemDetails",
            },
        },
    },
}

M.MalwareScanDetails = {
    type = "structure",
    members = {
        Threats = {
            type = "list",
            member_type = "structure",
            traits = {
                json_name = "threats",
            },
        },
        ScanId = {
            type = "string",
            traits = {
                json_name = "scanId",
            },
        },
        ScanType = {
            type = "string",
            traits = {
                json_name = "scanType",
            },
        },
        ScanCategory = {
            type = "string",
            traits = {
                json_name = "scanCategory",
            },
        },
        ScanConfiguration = {
            type = "structure",
            traits = {
                json_name = "scanConfiguration",
            },
        },
        UniqueThreatCount = {
            type = "number",
            traits = {
                json_name = "uniqueThreatCount",
            },
        },
    },
}

M.LineageObject = {
    type = "structure",
    members = {
        StartTime = {
            type = "timestamp",
            traits = {
                json_name = "startTime",
            },
        },
        NamespacePid = {
            type = "number",
            traits = {
                json_name = "namespacePid",
            },
        },
        UserId = {
            type = "number",
            traits = {
                json_name = "userId",
            },
        },
        Name = {
            type = "string",
            traits = {
                json_name = "name",
            },
        },
        Pid = {
            type = "number",
            traits = {
                json_name = "pid",
            },
        },
        Uuid = {
            type = "string",
            traits = {
                json_name = "uuid",
            },
        },
        ExecutablePath = {
            type = "string",
            traits = {
                json_name = "executablePath",
            },
        },
        Euid = {
            type = "number",
            traits = {
                json_name = "euid",
            },
        },
        ParentUuid = {
            type = "string",
            traits = {
                json_name = "parentUuid",
            },
        },
    },
}

M.ProcessDetails = {
    type = "structure",
    members = {
        Name = {
            type = "string",
            traits = {
                json_name = "name",
            },
        },
        ExecutablePath = {
            type = "string",
            traits = {
                json_name = "executablePath",
            },
        },
        ExecutableSha256 = {
            type = "string",
            traits = {
                json_name = "executableSha256",
            },
        },
        NamespacePid = {
            type = "number",
            traits = {
                json_name = "namespacePid",
            },
        },
        Pwd = {
            type = "string",
            traits = {
                json_name = "pwd",
            },
        },
        Pid = {
            type = "number",
            traits = {
                json_name = "pid",
            },
        },
        StartTime = {
            type = "timestamp",
            traits = {
                json_name = "startTime",
            },
        },
        Uuid = {
            type = "string",
            traits = {
                json_name = "uuid",
            },
        },
        ParentUuid = {
            type = "string",
            traits = {
                json_name = "parentUuid",
            },
        },
        User = {
            type = "string",
            traits = {
                json_name = "user",
            },
        },
        UserId = {
            type = "number",
            traits = {
                json_name = "userId",
            },
        },
        Euid = {
            type = "number",
            traits = {
                json_name = "euid",
            },
        },
        Lineage = {
            type = "list",
            member_type = "structure",
            traits = {
                json_name = "lineage",
            },
        },
    },
}

M.RuntimeContext = {
    type = "structure",
    members = {
        ModifyingProcess = {
            type = "structure",
            traits = {
                json_name = "modifyingProcess",
            },
        },
        ModifiedAt = {
            type = "timestamp",
            traits = {
                json_name = "modifiedAt",
            },
        },
        ScriptPath = {
            type = "string",
            traits = {
                json_name = "scriptPath",
            },
        },
        LibraryPath = {
            type = "string",
            traits = {
                json_name = "libraryPath",
            },
        },
        LdPreloadValue = {
            type = "string",
            traits = {
                json_name = "ldPreloadValue",
            },
        },
        SocketPath = {
            type = "string",
            traits = {
                json_name = "socketPath",
            },
        },
        RuncBinaryPath = {
            type = "string",
            traits = {
                json_name = "runcBinaryPath",
            },
        },
        ReleaseAgentPath = {
            type = "string",
            traits = {
                json_name = "releaseAgentPath",
            },
        },
        MountSource = {
            type = "string",
            traits = {
                json_name = "mountSource",
            },
        },
        MountTarget = {
            type = "string",
            traits = {
                json_name = "mountTarget",
            },
        },
        FileSystemType = {
            type = "string",
            traits = {
                json_name = "fileSystemType",
            },
        },
        Flags = {
            type = "list",
            member_type = "string",
            traits = {
                json_name = "flags",
            },
        },
        ModuleName = {
            type = "string",
            traits = {
                json_name = "moduleName",
            },
        },
        ModuleFilePath = {
            type = "string",
            traits = {
                json_name = "moduleFilePath",
            },
        },
        ModuleSha256 = {
            type = "string",
            traits = {
                json_name = "moduleSha256",
            },
        },
        ShellHistoryFilePath = {
            type = "string",
            traits = {
                json_name = "shellHistoryFilePath",
            },
        },
        TargetProcess = {
            type = "structure",
            traits = {
                json_name = "targetProcess",
            },
        },
        AddressFamily = {
            type = "string",
            traits = {
                json_name = "addressFamily",
            },
        },
        IanaProtocolNumber = {
            type = "number",
            traits = {
                json_name = "ianaProtocolNumber",
            },
        },
        MemoryRegions = {
            type = "list",
            member_type = "string",
            traits = {
                json_name = "memoryRegions",
            },
        },
        ToolName = {
            type = "string",
            traits = {
                json_name = "toolName",
            },
        },
        ToolCategory = {
            type = "string",
            traits = {
                json_name = "toolCategory",
            },
        },
        ServiceName = {
            type = "string",
            traits = {
                json_name = "serviceName",
            },
        },
        CommandLineExample = {
            type = "string",
            traits = {
                json_name = "commandLineExample",
            },
        },
        ThreatFilePath = {
            type = "string",
            traits = {
                json_name = "threatFilePath",
            },
        },
    },
}

M.RuntimeDetails = {
    type = "structure",
    members = {
        Process = {
            type = "structure",
            traits = {
                json_name = "process",
            },
        },
        Context = {
            type = "structure",
            traits = {
                json_name = "context",
            },
        },
    },
}

M.Service = {
    type = "structure",
    members = {
        Action = {
            type = "structure",
            traits = {
                json_name = "action",
            },
        },
        Evidence = {
            type = "structure",
            traits = {
                json_name = "evidence",
            },
        },
        Archived = {
            type = "boolean",
            traits = {
                json_name = "archived",
            },
        },
        Count = {
            type = "number",
            traits = {
                json_name = "count",
            },
        },
        DetectorId = {
            type = "string",
            traits = {
                json_name = "detectorId",
            },
        },
        EventFirstSeen = {
            type = "string",
            traits = {
                json_name = "eventFirstSeen",
            },
        },
        EventLastSeen = {
            type = "string",
            traits = {
                json_name = "eventLastSeen",
            },
        },
        ResourceRole = {
            type = "string",
            traits = {
                json_name = "resourceRole",
            },
        },
        ServiceName = {
            type = "string",
            traits = {
                json_name = "serviceName",
            },
        },
        UserFeedback = {
            type = "string",
            traits = {
                json_name = "userFeedback",
            },
        },
        AdditionalInfo = {
            type = "structure",
            traits = {
                json_name = "additionalInfo",
            },
        },
        FeatureName = {
            type = "string",
            traits = {
                json_name = "featureName",
            },
        },
        EbsVolumeScanDetails = {
            type = "structure",
            traits = {
                json_name = "ebsVolumeScanDetails",
            },
        },
        RuntimeDetails = {
            type = "structure",
            traits = {
                json_name = "runtimeDetails",
            },
        },
        Detection = {
            type = "structure",
            traits = {
                json_name = "detection",
            },
        },
        MalwareScanDetails = {
            type = "structure",
            traits = {
                json_name = "malwareScanDetails",
            },
        },
    },
}

M.Finding = {
    type = "structure",
    members = {
        AccountId = {
            type = "string",
            traits = {
                json_name = "accountId",
                required = true,
            },
        },
        Arn = {
            type = "string",
            traits = {
                json_name = "arn",
                required = true,
            },
        },
        Confidence = {
            type = "number",
            traits = {
                json_name = "confidence",
            },
        },
        CreatedAt = {
            type = "string",
            traits = {
                json_name = "createdAt",
                required = true,
            },
        },
        Description = {
            type = "string",
            traits = {
                json_name = "description",
            },
        },
        Id = {
            type = "string",
            traits = {
                json_name = "id",
                required = true,
            },
        },
        Partition = {
            type = "string",
            traits = {
                json_name = "partition",
            },
        },
        Region = {
            type = "string",
            traits = {
                json_name = "region",
                required = true,
            },
        },
        Resource = {
            type = "structure",
            traits = {
                json_name = "resource",
                required = true,
            },
        },
        SchemaVersion = {
            type = "string",
            traits = {
                json_name = "schemaVersion",
                required = true,
            },
        },
        Service = {
            type = "structure",
            traits = {
                json_name = "service",
            },
        },
        Severity = {
            type = "number",
            traits = {
                json_name = "severity",
                required = true,
            },
        },
        Title = {
            type = "string",
            traits = {
                json_name = "title",
            },
        },
        Type = {
            type = "string",
            traits = {
                json_name = "type",
                required = true,
            },
        },
        UpdatedAt = {
            type = "string",
            traits = {
                json_name = "updatedAt",
                required = true,
            },
        },
        AssociatedAttackSequenceArn = {
            type = "string",
            traits = {
                json_name = "associatedAttackSequenceArn",
            },
        },
    },
}

M.FindingTypeStatistics = {
    type = "structure",
    members = {
        FindingType = {
            type = "string",
            traits = {
                json_name = "findingType",
            },
        },
        LastGeneratedAt = {
            type = "timestamp",
            traits = {
                json_name = "lastGeneratedAt",
            },
        },
        TotalFindings = {
            type = "number",
            traits = {
                json_name = "totalFindings",
            },
        },
    },
}

M.ResourceStatistics = {
    type = "structure",
    members = {
        AccountId = {
            type = "string",
            traits = {
                json_name = "accountId",
            },
        },
        LastGeneratedAt = {
            type = "timestamp",
            traits = {
                json_name = "lastGeneratedAt",
            },
        },
        ResourceId = {
            type = "string",
            traits = {
                json_name = "resourceId",
            },
        },
        ResourceType = {
            type = "string",
            traits = {
                json_name = "resourceType",
            },
        },
        TotalFindings = {
            type = "number",
            traits = {
                json_name = "totalFindings",
            },
        },
    },
}

M.SeverityStatistics = {
    type = "structure",
    members = {
        LastGeneratedAt = {
            type = "timestamp",
            traits = {
                json_name = "lastGeneratedAt",
            },
        },
        Severity = {
            type = "number",
            traits = {
                json_name = "severity",
            },
        },
        TotalFindings = {
            type = "number",
            traits = {
                json_name = "totalFindings",
            },
        },
    },
}

M.FindingStatistics = {
    type = "structure",
    members = {
        CountBySeverity = {
            type = "map",
            key_type = "string",
            value_type = "number",
            traits = {
                json_name = "countBySeverity",
            },
        },
        GroupedByAccount = {
            type = "list",
            member_type = "structure",
            traits = {
                json_name = "groupedByAccount",
            },
        },
        GroupedByDate = {
            type = "list",
            member_type = "structure",
            traits = {
                json_name = "groupedByDate",
            },
        },
        GroupedByFindingType = {
            type = "list",
            member_type = "structure",
            traits = {
                json_name = "groupedByFindingType",
            },
        },
        GroupedByResource = {
            type = "list",
            member_type = "structure",
            traits = {
                json_name = "groupedByResource",
            },
        },
        GroupedBySeverity = {
            type = "list",
            member_type = "structure",
            traits = {
                json_name = "groupedBySeverity",
            },
        },
    },
}

M.FindingStatisticType = {
    COUNT_BY_SEVERITY = "COUNT_BY_SEVERITY",
}

M.GetAdministratorAccountInput = {
    type = "structure",
    members = {
        DetectorId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.GetAdministratorAccountOutput = {
    type = "structure",
    members = {
        Administrator = {
            type = "structure",
            traits = {
                json_name = "administrator",
                required = true,
            },
        },
    },
}

M.GetCoverageStatisticsInput = {
    type = "structure",
    members = {
        DetectorId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        FilterCriteria = {
            type = "structure",
            traits = {
                json_name = "filterCriteria",
            },
        },
        StatisticsType = {
            type = "list",
            member_type = "string",
            traits = {
                json_name = "statisticsType",
                required = true,
            },
        },
    },
}

M.GetCoverageStatisticsOutput = {
    type = "structure",
    members = {
        CoverageStatistics = {
            type = "structure",
            traits = {
                json_name = "coverageStatistics",
            },
        },
    },
}

M.GetDetectorInput = {
    type = "structure",
    members = {
        DetectorId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.GetDetectorOutput = {
    type = "structure",
    members = {
        CreatedAt = {
            type = "string",
            traits = {
                json_name = "createdAt",
            },
        },
        FindingPublishingFrequency = {
            type = "string",
            traits = {
                json_name = "findingPublishingFrequency",
            },
        },
        ServiceRole = {
            type = "string",
            traits = {
                json_name = "serviceRole",
                required = true,
            },
        },
        Status = {
            type = "string",
            traits = {
                json_name = "status",
                required = true,
            },
        },
        UpdatedAt = {
            type = "string",
            traits = {
                json_name = "updatedAt",
            },
        },
        DataSources = {
            type = "structure",
            traits = {
                json_name = "dataSources",
            },
        },
        Tags = {
            type = "map",
            key_type = "string",
            value_type = "string",
            traits = {
                json_name = "tags",
            },
        },
        Features = {
            type = "list",
            member_type = "structure",
            traits = {
                json_name = "features",
            },
        },
    },
}

M.GetFilterInput = {
    type = "structure",
    members = {
        DetectorId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        FilterName = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.GetFilterOutput = {
    type = "structure",
    members = {
        Name = {
            type = "string",
            traits = {
                json_name = "name",
                required = true,
            },
        },
        Description = {
            type = "string",
            traits = {
                json_name = "description",
            },
        },
        Action = {
            type = "string",
            traits = {
                json_name = "action",
                required = true,
            },
        },
        Rank = {
            type = "number",
            traits = {
                json_name = "rank",
            },
        },
        FindingCriteria = {
            type = "structure",
            traits = {
                json_name = "findingCriteria",
                required = true,
            },
        },
        Tags = {
            type = "map",
            key_type = "string",
            value_type = "string",
            traits = {
                json_name = "tags",
            },
        },
    },
}

M.GetFindingsInput = {
    type = "structure",
    members = {
        DetectorId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        FindingIds = {
            type = "list",
            member_type = "string",
            traits = {
                json_name = "findingIds",
                required = true,
            },
        },
        SortCriteria = {
            type = "structure",
            traits = {
                json_name = "sortCriteria",
            },
        },
    },
}

M.GetFindingsOutput = {
    type = "structure",
    members = {
        Findings = {
            type = "list",
            member_type = "structure",
            traits = {
                json_name = "findings",
                required = true,
            },
        },
    },
}

M.GroupByType = {
    ACCOUNT = "ACCOUNT",
    DATE = "DATE",
    FINDING_TYPE = "FINDING_TYPE",
    RESOURCE = "RESOURCE",
    SEVERITY = "SEVERITY",
}

M.GetFindingsStatisticsInput = {
    type = "structure",
    members = {
        DetectorId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        FindingStatisticTypes = {
            type = "list",
            member_type = "string",
            traits = {
                json_name = "findingStatisticTypes",
            },
        },
        FindingCriteria = {
            type = "structure",
            traits = {
                json_name = "findingCriteria",
            },
        },
        GroupBy = {
            type = "string",
            traits = {
                json_name = "groupBy",
            },
        },
        OrderBy = {
            type = "string",
            traits = {
                json_name = "orderBy",
            },
        },
        MaxResults = {
            type = "number",
            traits = {
                json_name = "maxResults",
            },
        },
    },
}

M.GetFindingsStatisticsOutput = {
    type = "structure",
    members = {
        FindingStatistics = {
            type = "structure",
            traits = {
                json_name = "findingStatistics",
                required = true,
            },
        },
        NextToken = {
            type = "string",
            traits = {
                json_name = "nextToken",
            },
        },
    },
}

M.GetInvitationsCountInput = {
    type = "structure",
}

M.GetInvitationsCountOutput = {
    type = "structure",
    members = {
        InvitationsCount = {
            type = "number",
            traits = {
                json_name = "invitationsCount",
            },
        },
    },
}

M.GetIPSetInput = {
    type = "structure",
    members = {
        DetectorId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        IpSetId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.IpSetStatus = {
    INACTIVE = "INACTIVE",
    ACTIVATING = "ACTIVATING",
    ACTIVE = "ACTIVE",
    DEACTIVATING = "DEACTIVATING",
    ERROR = "ERROR",
    DELETE_PENDING = "DELETE_PENDING",
    DELETED = "DELETED",
}

M.GetIPSetOutput = {
    type = "structure",
    members = {
        Name = {
            type = "string",
            traits = {
                json_name = "name",
                required = true,
            },
        },
        Format = {
            type = "string",
            traits = {
                json_name = "format",
                required = true,
            },
        },
        Location = {
            type = "string",
            traits = {
                json_name = "location",
                required = true,
            },
        },
        Status = {
            type = "string",
            traits = {
                json_name = "status",
                required = true,
            },
        },
        Tags = {
            type = "map",
            key_type = "string",
            value_type = "string",
            traits = {
                json_name = "tags",
            },
        },
        ExpectedBucketOwner = {
            type = "string",
            traits = {
                json_name = "expectedBucketOwner",
            },
        },
    },
}

M.GetMalwareProtectionPlanInput = {
    type = "structure",
    members = {
        MalwareProtectionPlanId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.MalwareProtectionPlanStatus = {
    ACTIVE = "ACTIVE",
    WARNING = "WARNING",
    ERROR = "ERROR",
}

M.MalwareProtectionPlanStatusReason = {
    type = "structure",
    members = {
        Code = {
            type = "string",
            traits = {
                json_name = "code",
            },
        },
        Message = {
            type = "string",
            traits = {
                json_name = "message",
            },
        },
    },
}

M.GetMalwareProtectionPlanOutput = {
    type = "structure",
    members = {
        Arn = {
            type = "string",
            traits = {
                json_name = "arn",
            },
        },
        Role = {
            type = "string",
            traits = {
                json_name = "role",
            },
        },
        ProtectedResource = {
            type = "structure",
            traits = {
                json_name = "protectedResource",
            },
        },
        Actions = {
            type = "structure",
            traits = {
                json_name = "actions",
            },
        },
        CreatedAt = {
            type = "timestamp",
            traits = {
                json_name = "createdAt",
            },
        },
        Status = {
            type = "string",
            traits = {
                json_name = "status",
            },
        },
        StatusReasons = {
            type = "list",
            member_type = "structure",
            traits = {
                json_name = "statusReasons",
            },
        },
        Tags = {
            type = "map",
            key_type = "string",
            value_type = "string",
            traits = {
                json_name = "tags",
            },
        },
    },
}

M.GetMalwareScanInput = {
    type = "structure",
    members = {
        ScanId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.MalwareProtectionResourceType = {
    EBS_RECOVERY_POINT = "EBS_RECOVERY_POINT",
    EBS_SNAPSHOT = "EBS_SNAPSHOT",
    EBS_VOLUME = "EBS_VOLUME",
    EC2_AMI = "EC2_AMI",
    EC2_INSTANCE = "EC2_INSTANCE",
    EC2_RECOVERY_POINT = "EC2_RECOVERY_POINT",
    S3_RECOVERY_POINT = "S3_RECOVERY_POINT",
    S3_BUCKET = "S3_BUCKET",
}

M.ScanConfigurationRecoveryPoint = {
    type = "structure",
    members = {
        BackupVaultName = {
            type = "string",
            traits = {
                json_name = "backupVaultName",
            },
        },
    },
}

M.ScanConfiguration = {
    type = "structure",
    members = {
        Role = {
            type = "string",
            traits = {
                json_name = "role",
            },
        },
        TriggerDetails = {
            type = "structure",
            traits = {
                json_name = "triggerDetails",
            },
        },
        IncrementalScanDetails = {
            type = "structure",
            traits = {
                json_name = "incrementalScanDetails",
            },
        },
        RecoveryPoint = {
            type = "structure",
            traits = {
                json_name = "recoveryPoint",
            },
        },
    },
}

M.ScannedResourceDetails = {
    type = "structure",
    members = {
        EbsVolume = {
            type = "structure",
            traits = {
                json_name = "ebsVolume",
            },
        },
        EbsSnapshot = {
            type = "structure",
            traits = {
                json_name = "ebsSnapshot",
            },
        },
    },
}

M.MalwareProtectionScanStatus = {
    RUNNING = "RUNNING",
    COMPLETED = "COMPLETED",
    COMPLETED_WITH_ISSUES = "COMPLETED_WITH_ISSUES",
    FAILED = "FAILED",
    SKIPPED = "SKIPPED",
}

M.ScanStatusReason = {
    ACCESS_DENIED = "ACCESS_DENIED",
    RESOURCE_NOT_FOUND = "RESOURCE_NOT_FOUND",
    SNAPSHOT_SIZE_LIMIT_EXCEEDED = "SNAPSHOT_SIZE_LIMIT_EXCEEDED",
    RESOURCE_UNAVAILABLE = "RESOURCE_UNAVAILABLE",
    INCONSISTENT_SOURCE = "INCONSISTENT_SOURCE",
    INCREMENTAL_NO_DIFFERENCE = "INCREMENTAL_NO_DIFFERENCE",
    NO_EBS_VOLUMES_FOUND = "NO_EBS_VOLUMES_FOUND",
    UNSUPPORTED_PRODUCT_CODE_TYPE = "UNSUPPORTED_PRODUCT_CODE_TYPE",
    AMI_SNAPSHOT_LIMIT_EXCEEDED = "AMI_SNAPSHOT_LIMIT_EXCEEDED",
    UNRELATED_RESOURCES = "UNRELATED_RESOURCES",
    BASE_RESOURCE_NOT_SCANNED = "BASE_RESOURCE_NOT_SCANNED",
    BASE_CREATED_AFTER_TARGET = "BASE_CREATED_AFTER_TARGET",
    UNSUPPORTED_FOR_INCREMENTAL = "UNSUPPORTED_FOR_INCREMENTAL",
    UNSUPPORTED_AMI = "UNSUPPORTED_AMI",
    UNSUPPORTED_SNAPSHOT = "UNSUPPORTED_SNAPSHOT",
    UNSUPPORTED_COMPOSITE_RECOVERY_POINT = "UNSUPPORTED_COMPOSITE_RECOVERY_POINT",
    ALL_FILES_SKIPPED_OR_FAILED = "ALL_FILES_SKIPPED_OR_FAILED",
}

M.ScannedResource = {
    type = "structure",
    members = {
        ScannedResourceArn = {
            type = "string",
            traits = {
                json_name = "scannedResourceArn",
            },
        },
        ScannedResourceType = {
            type = "string",
            traits = {
                json_name = "scannedResourceType",
            },
        },
        ScannedResourceStatus = {
            type = "string",
            traits = {
                json_name = "scannedResourceStatus",
            },
        },
        ScanStatusReason = {
            type = "string",
            traits = {
                json_name = "scanStatusReason",
            },
        },
        ResourceDetails = {
            type = "structure",
            traits = {
                json_name = "resourceDetails",
            },
        },
    },
}

M.ScanResultStatus = {
    NO_THREATS_FOUND = "NO_THREATS_FOUND",
    THREATS_FOUND = "THREATS_FOUND",
}

M.ScanResultThreat = {
    type = "structure",
    members = {
        Name = {
            type = "string",
            traits = {
                json_name = "name",
            },
        },
        Source = {
            type = "string",
            traits = {
                json_name = "source",
            },
        },
        Count = {
            type = "number",
            traits = {
                json_name = "count",
            },
        },
        Hash = {
            type = "string",
            traits = {
                json_name = "hash",
            },
        },
        ItemDetails = {
            type = "list",
            member_type = "structure",
            traits = {
                json_name = "itemDetails",
            },
        },
    },
}

M.GetMalwareScanResultDetails = {
    type = "structure",
    members = {
        ScanResultStatus = {
            type = "string",
            traits = {
                json_name = "scanResultStatus",
            },
        },
        SkippedFileCount = {
            type = "number",
            traits = {
                json_name = "skippedFileCount",
            },
        },
        FailedFileCount = {
            type = "number",
            traits = {
                json_name = "failedFileCount",
            },
        },
        ThreatFoundFileCount = {
            type = "number",
            traits = {
                json_name = "threatFoundFileCount",
            },
        },
        TotalFileCount = {
            type = "number",
            traits = {
                json_name = "totalFileCount",
            },
        },
        TotalBytes = {
            type = "number",
            traits = {
                json_name = "totalBytes",
            },
        },
        UniqueThreatCount = {
            type = "number",
            traits = {
                json_name = "uniqueThreatCount",
            },
        },
        Threats = {
            type = "list",
            member_type = "structure",
            traits = {
                json_name = "threats",
            },
        },
    },
}

M.GetMalwareScanOutput = {
    type = "structure",
    members = {
        ScanId = {
            type = "string",
            traits = {
                json_name = "scanId",
            },
        },
        DetectorId = {
            type = "string",
            traits = {
                json_name = "detectorId",
            },
        },
        AdminDetectorId = {
            type = "string",
            traits = {
                json_name = "adminDetectorId",
            },
        },
        ResourceArn = {
            type = "string",
            traits = {
                json_name = "resourceArn",
            },
        },
        ResourceType = {
            type = "string",
            traits = {
                json_name = "resourceType",
            },
        },
        ScannedResourcesCount = {
            type = "number",
            traits = {
                json_name = "scannedResourcesCount",
            },
        },
        SkippedResourcesCount = {
            type = "number",
            traits = {
                json_name = "skippedResourcesCount",
            },
        },
        FailedResourcesCount = {
            type = "number",
            traits = {
                json_name = "failedResourcesCount",
            },
        },
        ScannedResources = {
            type = "list",
            member_type = "structure",
            traits = {
                json_name = "scannedResources",
            },
        },
        ScanConfiguration = {
            type = "structure",
            traits = {
                json_name = "scanConfiguration",
            },
        },
        ScanCategory = {
            type = "string",
            traits = {
                json_name = "scanCategory",
            },
        },
        ScanStatus = {
            type = "string",
            traits = {
                json_name = "scanStatus",
            },
        },
        ScanStatusReason = {
            type = "string",
            traits = {
                json_name = "scanStatusReason",
            },
        },
        ScanType = {
            type = "string",
            traits = {
                json_name = "scanType",
            },
        },
        ScanStartedAt = {
            type = "timestamp",
            traits = {
                json_name = "scanStartedAt",
            },
        },
        ScanCompletedAt = {
            type = "timestamp",
            traits = {
                json_name = "scanCompletedAt",
            },
        },
        ScanResultDetails = {
            type = "structure",
            traits = {
                json_name = "scanResultDetails",
            },
        },
    },
}

M.GetMalwareScanSettingsInput = {
    type = "structure",
    members = {
        DetectorId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.ScanCriterionKey = {
    EC2_INSTANCE_TAG = "EC2_INSTANCE_TAG",
}

M.ScanConditionPair = {
    type = "structure",
    members = {
        Key = {
            type = "string",
            traits = {
                json_name = "key",
                required = true,
            },
        },
        Value = {
            type = "string",
            traits = {
                json_name = "value",
            },
        },
    },
}

M.ScanCondition = {
    type = "structure",
    members = {
        MapEquals = {
            type = "list",
            member_type = "structure",
            traits = {
                json_name = "mapEquals",
                required = true,
            },
        },
    },
}

M.ScanResourceCriteria = {
    type = "structure",
    members = {
        Include = {
            type = "map",
            key_type = "string",
            value_type = "structure",
            traits = {
                json_name = "include",
            },
        },
        Exclude = {
            type = "map",
            key_type = "string",
            value_type = "structure",
            traits = {
                json_name = "exclude",
            },
        },
    },
}

M.GetMalwareScanSettingsOutput = {
    type = "structure",
    members = {
        ScanResourceCriteria = {
            type = "structure",
            traits = {
                json_name = "scanResourceCriteria",
            },
        },
        EbsSnapshotPreservation = {
            type = "string",
            traits = {
                json_name = "ebsSnapshotPreservation",
            },
        },
    },
}

M.GetMasterAccountInput = {
    type = "structure",
    members = {
        DetectorId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.Master = {
    type = "structure",
    members = {
        AccountId = {
            type = "string",
            traits = {
                json_name = "accountId",
            },
        },
        InvitationId = {
            type = "string",
            traits = {
                json_name = "invitationId",
            },
        },
        RelationshipStatus = {
            type = "string",
            traits = {
                json_name = "relationshipStatus",
            },
        },
        InvitedAt = {
            type = "string",
            traits = {
                json_name = "invitedAt",
            },
        },
    },
}

M.GetMasterAccountOutput = {
    type = "structure",
    members = {
        Master = {
            type = "structure",
            traits = {
                json_name = "master",
                required = true,
            },
        },
    },
}

M.GetMemberDetectorsInput = {
    type = "structure",
    members = {
        DetectorId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        AccountIds = {
            type = "list",
            member_type = "string",
            traits = {
                json_name = "accountIds",
                required = true,
            },
        },
    },
}

M.MemberAdditionalConfigurationResult = {
    type = "structure",
    members = {
        Name = {
            type = "string",
            traits = {
                json_name = "name",
            },
        },
        Status = {
            type = "string",
            traits = {
                json_name = "status",
            },
        },
        UpdatedAt = {
            type = "timestamp",
            traits = {
                json_name = "updatedAt",
            },
        },
    },
}

M.MemberFeaturesConfigurationResult = {
    type = "structure",
    members = {
        Name = {
            type = "string",
            traits = {
                json_name = "name",
            },
        },
        Status = {
            type = "string",
            traits = {
                json_name = "status",
            },
        },
        UpdatedAt = {
            type = "timestamp",
            traits = {
                json_name = "updatedAt",
            },
        },
        AdditionalConfiguration = {
            type = "list",
            member_type = "structure",
            traits = {
                json_name = "additionalConfiguration",
            },
        },
    },
}

M.MemberDataSourceConfiguration = {
    type = "structure",
    members = {
        AccountId = {
            type = "string",
            traits = {
                json_name = "accountId",
                required = true,
            },
        },
        DataSources = {
            type = "structure",
            traits = {
                json_name = "dataSources",
                required = true,
            },
        },
        Features = {
            type = "list",
            member_type = "structure",
            traits = {
                json_name = "features",
            },
        },
    },
}

M.GetMemberDetectorsOutput = {
    type = "structure",
    members = {
        MemberDataSourceConfigurations = {
            type = "list",
            member_type = "structure",
            traits = {
                json_name = "members",
                required = true,
            },
        },
        UnprocessedAccounts = {
            type = "list",
            member_type = "structure",
            traits = {
                json_name = "unprocessedAccounts",
                required = true,
            },
        },
    },
}

M.GetMembersInput = {
    type = "structure",
    members = {
        DetectorId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        AccountIds = {
            type = "list",
            member_type = "string",
            traits = {
                json_name = "accountIds",
                required = true,
            },
        },
    },
}

M.Member = {
    type = "structure",
    members = {
        AccountId = {
            type = "string",
            traits = {
                json_name = "accountId",
                required = true,
            },
        },
        DetectorId = {
            type = "string",
            traits = {
                json_name = "detectorId",
            },
        },
        MasterId = {
            type = "string",
            traits = {
                json_name = "masterId",
                required = true,
            },
        },
        Email = {
            type = "string",
            traits = {
                json_name = "email",
                required = true,
            },
        },
        RelationshipStatus = {
            type = "string",
            traits = {
                json_name = "relationshipStatus",
                required = true,
            },
        },
        InvitedAt = {
            type = "string",
            traits = {
                json_name = "invitedAt",
            },
        },
        UpdatedAt = {
            type = "string",
            traits = {
                json_name = "updatedAt",
                required = true,
            },
        },
        AdministratorId = {
            type = "string",
            traits = {
                json_name = "administratorId",
            },
        },
    },
}

M.GetMembersOutput = {
    type = "structure",
    members = {
        Members = {
            type = "list",
            member_type = "structure",
            traits = {
                json_name = "members",
                required = true,
            },
        },
        UnprocessedAccounts = {
            type = "list",
            member_type = "structure",
            traits = {
                json_name = "unprocessedAccounts",
                required = true,
            },
        },
    },
}

M.GetOrganizationStatisticsInput = {
    type = "structure",
}

M.OrganizationFeatureStatisticsAdditionalConfiguration = {
    type = "structure",
    members = {
        Name = {
            type = "string",
            traits = {
                json_name = "name",
            },
        },
        EnabledAccountsCount = {
            type = "number",
            traits = {
                json_name = "enabledAccountsCount",
            },
        },
    },
}

M.OrganizationFeatureStatistics = {
    type = "structure",
    members = {
        Name = {
            type = "string",
            traits = {
                json_name = "name",
            },
        },
        EnabledAccountsCount = {
            type = "number",
            traits = {
                json_name = "enabledAccountsCount",
            },
        },
        AdditionalConfiguration = {
            type = "list",
            member_type = "structure",
            traits = {
                json_name = "additionalConfiguration",
            },
        },
    },
}

M.OrganizationStatistics = {
    type = "structure",
    members = {
        TotalAccountsCount = {
            type = "number",
            traits = {
                json_name = "totalAccountsCount",
            },
        },
        MemberAccountsCount = {
            type = "number",
            traits = {
                json_name = "memberAccountsCount",
            },
        },
        ActiveAccountsCount = {
            type = "number",
            traits = {
                json_name = "activeAccountsCount",
            },
        },
        EnabledAccountsCount = {
            type = "number",
            traits = {
                json_name = "enabledAccountsCount",
            },
        },
        CountByFeature = {
            type = "list",
            member_type = "structure",
            traits = {
                json_name = "countByFeature",
            },
        },
    },
}

M.OrganizationDetails = {
    type = "structure",
    members = {
        UpdatedAt = {
            type = "timestamp",
            traits = {
                json_name = "updatedAt",
            },
        },
        OrganizationStatistics = {
            type = "structure",
            traits = {
                json_name = "organizationStatistics",
            },
        },
    },
}

M.GetOrganizationStatisticsOutput = {
    type = "structure",
    members = {
        OrganizationDetails = {
            type = "structure",
            traits = {
                json_name = "organizationDetails",
            },
        },
    },
}

M.GetRemainingFreeTrialDaysInput = {
    type = "structure",
    members = {
        DetectorId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        AccountIds = {
            type = "list",
            member_type = "string",
            traits = {
                json_name = "accountIds",
                required = true,
            },
        },
    },
}

M.GetRemainingFreeTrialDaysOutput = {
    type = "structure",
    members = {
        Accounts = {
            type = "list",
            member_type = "structure",
            traits = {
                json_name = "accounts",
            },
        },
        UnprocessedAccounts = {
            type = "list",
            member_type = "structure",
            traits = {
                json_name = "unprocessedAccounts",
            },
        },
    },
}

M.GetThreatEntitySetInput = {
    type = "structure",
    members = {
        DetectorId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        ThreatEntitySetId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.ThreatEntitySetStatus = {
    INACTIVE = "INACTIVE",
    ACTIVATING = "ACTIVATING",
    ACTIVE = "ACTIVE",
    DEACTIVATING = "DEACTIVATING",
    ERROR = "ERROR",
    DELETE_PENDING = "DELETE_PENDING",
    DELETED = "DELETED",
}

M.GetThreatEntitySetOutput = {
    type = "structure",
    members = {
        Name = {
            type = "string",
            traits = {
                json_name = "name",
                required = true,
            },
        },
        Format = {
            type = "string",
            traits = {
                json_name = "format",
                required = true,
            },
        },
        Location = {
            type = "string",
            traits = {
                json_name = "location",
                required = true,
            },
        },
        ExpectedBucketOwner = {
            type = "string",
            traits = {
                json_name = "expectedBucketOwner",
            },
        },
        Status = {
            type = "string",
            traits = {
                json_name = "status",
                required = true,
            },
        },
        Tags = {
            type = "map",
            key_type = "string",
            value_type = "string",
            traits = {
                json_name = "tags",
            },
        },
        CreatedAt = {
            type = "timestamp",
            traits = {
                json_name = "createdAt",
            },
        },
        UpdatedAt = {
            type = "timestamp",
            traits = {
                json_name = "updatedAt",
            },
        },
        ErrorDetails = {
            type = "string",
            traits = {
                json_name = "errorDetails",
            },
        },
    },
}

M.GetThreatIntelSetInput = {
    type = "structure",
    members = {
        DetectorId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        ThreatIntelSetId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.ThreatIntelSetStatus = {
    INACTIVE = "INACTIVE",
    ACTIVATING = "ACTIVATING",
    ACTIVE = "ACTIVE",
    DEACTIVATING = "DEACTIVATING",
    ERROR = "ERROR",
    DELETE_PENDING = "DELETE_PENDING",
    DELETED = "DELETED",
}

M.GetThreatIntelSetOutput = {
    type = "structure",
    members = {
        Name = {
            type = "string",
            traits = {
                json_name = "name",
                required = true,
            },
        },
        Format = {
            type = "string",
            traits = {
                json_name = "format",
                required = true,
            },
        },
        Location = {
            type = "string",
            traits = {
                json_name = "location",
                required = true,
            },
        },
        Status = {
            type = "string",
            traits = {
                json_name = "status",
                required = true,
            },
        },
        Tags = {
            type = "map",
            key_type = "string",
            value_type = "string",
            traits = {
                json_name = "tags",
            },
        },
        ExpectedBucketOwner = {
            type = "string",
            traits = {
                json_name = "expectedBucketOwner",
            },
        },
    },
}

M.GetTrustedEntitySetInput = {
    type = "structure",
    members = {
        DetectorId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        TrustedEntitySetId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.TrustedEntitySetStatus = {
    INACTIVE = "INACTIVE",
    ACTIVATING = "ACTIVATING",
    ACTIVE = "ACTIVE",
    DEACTIVATING = "DEACTIVATING",
    ERROR = "ERROR",
    DELETE_PENDING = "DELETE_PENDING",
    DELETED = "DELETED",
}

M.GetTrustedEntitySetOutput = {
    type = "structure",
    members = {
        Name = {
            type = "string",
            traits = {
                json_name = "name",
                required = true,
            },
        },
        Format = {
            type = "string",
            traits = {
                json_name = "format",
                required = true,
            },
        },
        Location = {
            type = "string",
            traits = {
                json_name = "location",
                required = true,
            },
        },
        ExpectedBucketOwner = {
            type = "string",
            traits = {
                json_name = "expectedBucketOwner",
            },
        },
        Status = {
            type = "string",
            traits = {
                json_name = "status",
                required = true,
            },
        },
        Tags = {
            type = "map",
            key_type = "string",
            value_type = "string",
            traits = {
                json_name = "tags",
            },
        },
        CreatedAt = {
            type = "timestamp",
            traits = {
                json_name = "createdAt",
            },
        },
        UpdatedAt = {
            type = "timestamp",
            traits = {
                json_name = "updatedAt",
            },
        },
        ErrorDetails = {
            type = "string",
            traits = {
                json_name = "errorDetails",
            },
        },
    },
}

M.UsageFeature = {
    FLOW_LOGS = "FLOW_LOGS",
    CLOUD_TRAIL = "CLOUD_TRAIL",
    DNS_LOGS = "DNS_LOGS",
    S3_DATA_EVENTS = "S3_DATA_EVENTS",
    EKS_AUDIT_LOGS = "EKS_AUDIT_LOGS",
    EBS_MALWARE_PROTECTION = "EBS_MALWARE_PROTECTION",
    RDS_LOGIN_EVENTS = "RDS_LOGIN_EVENTS",
    LAMBDA_NETWORK_LOGS = "LAMBDA_NETWORK_LOGS",
    EKS_RUNTIME_MONITORING = "EKS_RUNTIME_MONITORING",
    EC2_RUNTIME_MONITORING = "EC2_RUNTIME_MONITORING",
    FARGATE_RUNTIME_MONITORING = "FARGATE_RUNTIME_MONITORING",
    RDS_DBI_PROTECTION_PROVISIONED = "RDS_DBI_PROTECTION_PROVISIONED",
    RDS_DBI_PROTECTION_SERVERLESS = "RDS_DBI_PROTECTION_SERVERLESS",
}

M.UsageCriteria = {
    type = "structure",
    members = {
        AccountIds = {
            type = "list",
            member_type = "string",
            traits = {
                json_name = "accountIds",
            },
        },
        DataSources = {
            type = "list",
            member_type = "string",
            traits = {
                json_name = "dataSources",
            },
        },
        Resources = {
            type = "list",
            member_type = "string",
            traits = {
                json_name = "resources",
            },
        },
        Features = {
            type = "list",
            member_type = "string",
            traits = {
                json_name = "features",
            },
        },
    },
}

M.UsageStatisticType = {
    SUM_BY_ACCOUNT = "SUM_BY_ACCOUNT",
    SUM_BY_DATA_SOURCE = "SUM_BY_DATA_SOURCE",
    SUM_BY_RESOURCE = "SUM_BY_RESOURCE",
    TOP_RESOURCES = "TOP_RESOURCES",
    SUM_BY_FEATURES = "SUM_BY_FEATURES",
    TOP_ACCOUNTS_BY_FEATURE = "TOP_ACCOUNTS_BY_FEATURE",
}

M.GetUsageStatisticsInput = {
    type = "structure",
    members = {
        DetectorId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        UsageStatisticType = {
            type = "string",
            traits = {
                json_name = "usageStatisticsType",
                required = true,
            },
        },
        UsageCriteria = {
            type = "structure",
            traits = {
                json_name = "usageCriteria",
                required = true,
            },
        },
        Unit = {
            type = "string",
            traits = {
                json_name = "unit",
            },
        },
        MaxResults = {
            type = "number",
            traits = {
                json_name = "maxResults",
            },
        },
        NextToken = {
            type = "string",
            traits = {
                json_name = "nextToken",
            },
        },
    },
}

M.Total = {
    type = "structure",
    members = {
        Amount = {
            type = "string",
            traits = {
                json_name = "amount",
            },
        },
        Unit = {
            type = "string",
            traits = {
                json_name = "unit",
            },
        },
    },
}

M.UsageAccountResult = {
    type = "structure",
    members = {
        AccountId = {
            type = "string",
            traits = {
                json_name = "accountId",
            },
        },
        Total = {
            type = "structure",
            traits = {
                json_name = "total",
            },
        },
    },
}

M.UsageDataSourceResult = {
    type = "structure",
    members = {
        DataSource = {
            type = "string",
            traits = {
                json_name = "dataSource",
            },
        },
        Total = {
            type = "structure",
            traits = {
                json_name = "total",
            },
        },
    },
}

M.UsageFeatureResult = {
    type = "structure",
    members = {
        Feature = {
            type = "string",
            traits = {
                json_name = "feature",
            },
        },
        Total = {
            type = "structure",
            traits = {
                json_name = "total",
            },
        },
    },
}

M.UsageResourceResult = {
    type = "structure",
    members = {
        Resource = {
            type = "string",
            traits = {
                json_name = "resource",
            },
        },
        Total = {
            type = "structure",
            traits = {
                json_name = "total",
            },
        },
    },
}

M.UsageTopAccountResult = {
    type = "structure",
    members = {
        AccountId = {
            type = "string",
            traits = {
                json_name = "accountId",
            },
        },
        Total = {
            type = "structure",
            traits = {
                json_name = "total",
            },
        },
    },
}

M.UsageTopAccountsResult = {
    type = "structure",
    members = {
        Feature = {
            type = "string",
            traits = {
                json_name = "feature",
            },
        },
        Accounts = {
            type = "list",
            member_type = "structure",
            traits = {
                json_name = "accounts",
            },
        },
    },
}

M.UsageStatistics = {
    type = "structure",
    members = {
        SumByAccount = {
            type = "list",
            member_type = "structure",
            traits = {
                json_name = "sumByAccount",
            },
        },
        TopAccountsByFeature = {
            type = "list",
            member_type = "structure",
            traits = {
                json_name = "topAccountsByFeature",
            },
        },
        SumByDataSource = {
            type = "list",
            member_type = "structure",
            traits = {
                json_name = "sumByDataSource",
            },
        },
        SumByResource = {
            type = "list",
            member_type = "structure",
            traits = {
                json_name = "sumByResource",
            },
        },
        TopResources = {
            type = "list",
            member_type = "structure",
            traits = {
                json_name = "topResources",
            },
        },
        SumByFeature = {
            type = "list",
            member_type = "structure",
            traits = {
                json_name = "sumByFeature",
            },
        },
    },
}

M.GetUsageStatisticsOutput = {
    type = "structure",
    members = {
        UsageStatistics = {
            type = "structure",
            traits = {
                json_name = "usageStatistics",
            },
        },
        NextToken = {
            type = "string",
            traits = {
                json_name = "nextToken",
            },
        },
    },
}

M.InviteMembersInput = {
    type = "structure",
    members = {
        DetectorId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        AccountIds = {
            type = "list",
            member_type = "string",
            traits = {
                json_name = "accountIds",
                required = true,
            },
        },
        DisableEmailNotification = {
            type = "boolean",
            traits = {
                json_name = "disableEmailNotification",
            },
        },
        Message = {
            type = "string",
            traits = {
                json_name = "message",
            },
        },
    },
}

M.InviteMembersOutput = {
    type = "structure",
    members = {
        UnprocessedAccounts = {
            type = "list",
            member_type = "structure",
            traits = {
                json_name = "unprocessedAccounts",
                required = true,
            },
        },
    },
}

M.ListCoverageInput = {
    type = "structure",
    members = {
        DetectorId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        NextToken = {
            type = "string",
            traits = {
                json_name = "nextToken",
            },
        },
        MaxResults = {
            type = "number",
            traits = {
                json_name = "maxResults",
            },
        },
        FilterCriteria = {
            type = "structure",
            traits = {
                json_name = "filterCriteria",
            },
        },
        SortCriteria = {
            type = "structure",
            traits = {
                json_name = "sortCriteria",
            },
        },
    },
}

M.ListCoverageOutput = {
    type = "structure",
    members = {
        Resources = {
            type = "list",
            member_type = "structure",
            traits = {
                json_name = "resources",
                required = true,
            },
        },
        NextToken = {
            type = "string",
            traits = {
                json_name = "nextToken",
            },
        },
    },
}

M.ListDetectorsInput = {
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

M.ListDetectorsOutput = {
    type = "structure",
    members = {
        DetectorIds = {
            type = "list",
            member_type = "string",
            traits = {
                json_name = "detectorIds",
                required = true,
            },
        },
        NextToken = {
            type = "string",
            traits = {
                json_name = "nextToken",
            },
        },
    },
}

M.ListFiltersInput = {
    type = "structure",
    members = {
        DetectorId = {
            type = "string",
            traits = {
                http_label = true,
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

M.ListFiltersOutput = {
    type = "structure",
    members = {
        FilterNames = {
            type = "list",
            member_type = "string",
            traits = {
                json_name = "filterNames",
                required = true,
            },
        },
        NextToken = {
            type = "string",
            traits = {
                json_name = "nextToken",
            },
        },
    },
}

M.ListFindingsInput = {
    type = "structure",
    members = {
        DetectorId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        FindingCriteria = {
            type = "structure",
            traits = {
                json_name = "findingCriteria",
            },
        },
        SortCriteria = {
            type = "structure",
            traits = {
                json_name = "sortCriteria",
            },
        },
        MaxResults = {
            type = "number",
            traits = {
                json_name = "maxResults",
            },
        },
        NextToken = {
            type = "string",
            traits = {
                json_name = "nextToken",
            },
        },
    },
}

M.ListFindingsOutput = {
    type = "structure",
    members = {
        FindingIds = {
            type = "list",
            member_type = "string",
            traits = {
                json_name = "findingIds",
                required = true,
            },
        },
        NextToken = {
            type = "string",
            traits = {
                json_name = "nextToken",
            },
        },
    },
}

M.ListInvitationsInput = {
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

M.Invitation = {
    type = "structure",
    members = {
        AccountId = {
            type = "string",
            traits = {
                json_name = "accountId",
            },
        },
        InvitationId = {
            type = "string",
            traits = {
                json_name = "invitationId",
            },
        },
        RelationshipStatus = {
            type = "string",
            traits = {
                json_name = "relationshipStatus",
            },
        },
        InvitedAt = {
            type = "string",
            traits = {
                json_name = "invitedAt",
            },
        },
    },
}

M.ListInvitationsOutput = {
    type = "structure",
    members = {
        Invitations = {
            type = "list",
            member_type = "structure",
            traits = {
                json_name = "invitations",
            },
        },
        NextToken = {
            type = "string",
            traits = {
                json_name = "nextToken",
            },
        },
    },
}

M.ListIPSetsInput = {
    type = "structure",
    members = {
        DetectorId = {
            type = "string",
            traits = {
                http_label = true,
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

M.ListIPSetsOutput = {
    type = "structure",
    members = {
        IpSetIds = {
            type = "list",
            member_type = "string",
            traits = {
                json_name = "ipSetIds",
                required = true,
            },
        },
        NextToken = {
            type = "string",
            traits = {
                json_name = "nextToken",
            },
        },
    },
}

M.ListMalwareProtectionPlansInput = {
    type = "structure",
    members = {
        NextToken = {
            type = "string",
            traits = {
                http_query = "nextToken",
            },
        },
    },
}

M.MalwareProtectionPlanSummary = {
    type = "structure",
    members = {
        MalwareProtectionPlanId = {
            type = "string",
            traits = {
                json_name = "malwareProtectionPlanId",
            },
        },
    },
}

M.ListMalwareProtectionPlansOutput = {
    type = "structure",
    members = {
        MalwareProtectionPlans = {
            type = "list",
            member_type = "structure",
            traits = {
                json_name = "malwareProtectionPlans",
            },
        },
        NextToken = {
            type = "string",
            traits = {
                json_name = "nextToken",
            },
        },
    },
}

M.ListMalwareScansCriterionKey = {
    RESOURCE_ARN = "RESOURCE_ARN",
    SCAN_ID = "SCAN_ID",
    ACCOUNT_ID = "ACCOUNT_ID",
    GUARDDUTY_FINDING_ID = "GUARDDUTY_FINDING_ID",
    RESOURCE_TYPE = "RESOURCE_TYPE",
    SCAN_START_TIME = "SCAN_START_TIME",
    SCAN_STATUS = "SCAN_STATUS",
    SCAN_TYPE = "SCAN_TYPE",
}

M.ListMalwareScansFilterCriterion = {
    type = "structure",
    members = {
        ListMalwareScansCriterionKey = {
            type = "string",
            traits = {
                json_name = "criterionKey",
            },
        },
        FilterCondition = {
            type = "structure",
            traits = {
                json_name = "filterCondition",
            },
        },
    },
}

M.ListMalwareScansFilterCriteria = {
    type = "structure",
    members = {
        ListMalwareScansFilterCriterion = {
            type = "list",
            member_type = "structure",
            traits = {
                json_name = "filterCriterion",
            },
        },
    },
}

M.ListMalwareScansInput = {
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
        FilterCriteria = {
            type = "structure",
            traits = {
                json_name = "filterCriteria",
            },
        },
        SortCriteria = {
            type = "structure",
            traits = {
                json_name = "sortCriteria",
            },
        },
    },
}

M.MalwareScan = {
    type = "structure",
    members = {
        ResourceArn = {
            type = "string",
            traits = {
                json_name = "resourceArn",
            },
        },
        ResourceType = {
            type = "string",
            traits = {
                json_name = "resourceType",
            },
        },
        ScanId = {
            type = "string",
            traits = {
                json_name = "scanId",
            },
        },
        ScanStatus = {
            type = "string",
            traits = {
                json_name = "scanStatus",
            },
        },
        ScanResultStatus = {
            type = "string",
            traits = {
                json_name = "scanResultStatus",
            },
        },
        ScanType = {
            type = "string",
            traits = {
                json_name = "scanType",
            },
        },
        ScanStartedAt = {
            type = "timestamp",
            traits = {
                json_name = "scanStartedAt",
            },
        },
        ScanCompletedAt = {
            type = "timestamp",
            traits = {
                json_name = "scanCompletedAt",
            },
        },
    },
}

M.ListMalwareScansOutput = {
    type = "structure",
    members = {
        Scans = {
            type = "list",
            member_type = "structure",
            traits = {
                json_name = "scans",
                required = true,
            },
        },
        NextToken = {
            type = "string",
            traits = {
                json_name = "nextToken",
            },
        },
    },
}

M.ListMembersInput = {
    type = "structure",
    members = {
        DetectorId = {
            type = "string",
            traits = {
                http_label = true,
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
        OnlyAssociated = {
            type = "string",
            traits = {
                http_query = "onlyAssociated",
            },
        },
    },
}

M.ListMembersOutput = {
    type = "structure",
    members = {
        Members = {
            type = "list",
            member_type = "structure",
            traits = {
                json_name = "members",
            },
        },
        NextToken = {
            type = "string",
            traits = {
                json_name = "nextToken",
            },
        },
    },
}

M.ListOrganizationAdminAccountsInput = {
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

M.ListOrganizationAdminAccountsOutput = {
    type = "structure",
    members = {
        AdminAccounts = {
            type = "list",
            member_type = "structure",
            traits = {
                json_name = "adminAccounts",
            },
        },
        NextToken = {
            type = "string",
            traits = {
                json_name = "nextToken",
            },
        },
    },
}

M.ListPublishingDestinationsInput = {
    type = "structure",
    members = {
        DetectorId = {
            type = "string",
            traits = {
                http_label = true,
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

M.ListPublishingDestinationsOutput = {
    type = "structure",
    members = {
        Destinations = {
            type = "list",
            member_type = "structure",
            traits = {
                json_name = "destinations",
                required = true,
            },
        },
        NextToken = {
            type = "string",
            traits = {
                json_name = "nextToken",
            },
        },
    },
}

M.ListTagsForResourceInput = {
    type = "structure",
    members = {
        ResourceArn = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.ListTagsForResourceOutput = {
    type = "structure",
    members = {
        Tags = {
            type = "map",
            key_type = "string",
            value_type = "string",
            traits = {
                json_name = "tags",
            },
        },
    },
}

M.ListThreatEntitySetsInput = {
    type = "structure",
    members = {
        DetectorId = {
            type = "string",
            traits = {
                http_label = true,
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

M.ListThreatEntitySetsOutput = {
    type = "structure",
    members = {
        ThreatEntitySetIds = {
            type = "list",
            member_type = "string",
            traits = {
                json_name = "threatEntitySetIds",
                required = true,
            },
        },
        NextToken = {
            type = "string",
            traits = {
                json_name = "nextToken",
            },
        },
    },
}

M.ListThreatIntelSetsInput = {
    type = "structure",
    members = {
        DetectorId = {
            type = "string",
            traits = {
                http_label = true,
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

M.ListThreatIntelSetsOutput = {
    type = "structure",
    members = {
        ThreatIntelSetIds = {
            type = "list",
            member_type = "string",
            traits = {
                json_name = "threatIntelSetIds",
                required = true,
            },
        },
        NextToken = {
            type = "string",
            traits = {
                json_name = "nextToken",
            },
        },
    },
}

M.ListTrustedEntitySetsInput = {
    type = "structure",
    members = {
        DetectorId = {
            type = "string",
            traits = {
                http_label = true,
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

M.ListTrustedEntitySetsOutput = {
    type = "structure",
    members = {
        TrustedEntitySetIds = {
            type = "list",
            member_type = "string",
            traits = {
                json_name = "trustedEntitySetIds",
                required = true,
            },
        },
        NextToken = {
            type = "string",
            traits = {
                json_name = "nextToken",
            },
        },
    },
}

M.S3ObjectForSendObjectMalwareScan = {
    type = "structure",
    members = {
        Bucket = {
            type = "string",
            traits = {
                json_name = "bucket",
            },
        },
        Key = {
            type = "string",
            traits = {
                json_name = "key",
            },
        },
        VersionId = {
            type = "string",
            traits = {
                json_name = "versionId",
            },
        },
    },
}

M.SendObjectMalwareScanInput = {
    type = "structure",
    members = {
        S3Object = {
            type = "structure",
            traits = {
                json_name = "s3Object",
            },
        },
    },
}

M.SendObjectMalwareScanOutput = {
    type = "structure",
}

M.RecoveryPoint = {
    type = "structure",
    members = {
        BackupVaultName = {
            type = "string",
            traits = {
                json_name = "backupVaultName",
                required = true,
            },
        },
    },
}

M.StartMalwareScanConfiguration = {
    type = "structure",
    members = {
        Role = {
            type = "string",
            traits = {
                json_name = "role",
                required = true,
            },
        },
        IncrementalScanDetails = {
            type = "structure",
            traits = {
                json_name = "incrementalScanDetails",
            },
        },
        RecoveryPoint = {
            type = "structure",
            traits = {
                json_name = "recoveryPoint",
            },
        },
    },
}

M.StartMalwareScanInput = {
    type = "structure",
    members = {
        ResourceArn = {
            type = "string",
            traits = {
                json_name = "resourceArn",
                required = true,
            },
        },
        ClientToken = {
            type = "string",
            traits = {
                json_name = "clientToken",
            },
        },
        ScanConfiguration = {
            type = "structure",
            traits = {
                json_name = "scanConfiguration",
            },
        },
    },
}

M.StartMalwareScanOutput = {
    type = "structure",
    members = {
        ScanId = {
            type = "string",
            traits = {
                json_name = "scanId",
            },
        },
    },
}

M.StartMonitoringMembersInput = {
    type = "structure",
    members = {
        DetectorId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        AccountIds = {
            type = "list",
            member_type = "string",
            traits = {
                json_name = "accountIds",
                required = true,
            },
        },
    },
}

M.StartMonitoringMembersOutput = {
    type = "structure",
    members = {
        UnprocessedAccounts = {
            type = "list",
            member_type = "structure",
            traits = {
                json_name = "unprocessedAccounts",
                required = true,
            },
        },
    },
}

M.StopMonitoringMembersInput = {
    type = "structure",
    members = {
        DetectorId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        AccountIds = {
            type = "list",
            member_type = "string",
            traits = {
                json_name = "accountIds",
                required = true,
            },
        },
    },
}

M.StopMonitoringMembersOutput = {
    type = "structure",
    members = {
        UnprocessedAccounts = {
            type = "list",
            member_type = "structure",
            traits = {
                json_name = "unprocessedAccounts",
                required = true,
            },
        },
    },
}

M.TagResourceInput = {
    type = "structure",
    members = {
        ResourceArn = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        Tags = {
            type = "map",
            key_type = "string",
            value_type = "string",
            traits = {
                json_name = "tags",
                required = true,
            },
        },
    },
}

M.TagResourceOutput = {
    type = "structure",
}

M.UnarchiveFindingsInput = {
    type = "structure",
    members = {
        DetectorId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        FindingIds = {
            type = "list",
            member_type = "string",
            traits = {
                json_name = "findingIds",
                required = true,
            },
        },
    },
}

M.UnarchiveFindingsOutput = {
    type = "structure",
}

M.UntagResourceInput = {
    type = "structure",
    members = {
        ResourceArn = {
            type = "string",
            traits = {
                http_label = true,
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

M.UpdateDetectorInput = {
    type = "structure",
    members = {
        DetectorId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        Enable = {
            type = "boolean",
            traits = {
                json_name = "enable",
            },
        },
        FindingPublishingFrequency = {
            type = "string",
            traits = {
                json_name = "findingPublishingFrequency",
            },
        },
        DataSources = {
            type = "structure",
            traits = {
                json_name = "dataSources",
            },
        },
        Features = {
            type = "list",
            member_type = "structure",
            traits = {
                json_name = "features",
            },
        },
    },
}

M.UpdateDetectorOutput = {
    type = "structure",
}

M.UpdateFilterInput = {
    type = "structure",
    members = {
        DetectorId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        FilterName = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        Description = {
            type = "string",
            traits = {
                json_name = "description",
            },
        },
        Action = {
            type = "string",
            traits = {
                json_name = "action",
            },
        },
        Rank = {
            type = "number",
            traits = {
                json_name = "rank",
            },
        },
        FindingCriteria = {
            type = "structure",
            traits = {
                json_name = "findingCriteria",
            },
        },
    },
}

M.UpdateFilterOutput = {
    type = "structure",
    members = {
        Name = {
            type = "string",
            traits = {
                json_name = "name",
                required = true,
            },
        },
    },
}

M.UpdateFindingsFeedbackInput = {
    type = "structure",
    members = {
        DetectorId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        FindingIds = {
            type = "list",
            member_type = "string",
            traits = {
                json_name = "findingIds",
                required = true,
            },
        },
        Feedback = {
            type = "string",
            traits = {
                json_name = "feedback",
                required = true,
            },
        },
        Comments = {
            type = "string",
            traits = {
                json_name = "comments",
            },
        },
    },
}

M.UpdateFindingsFeedbackOutput = {
    type = "structure",
}

M.UpdateIPSetInput = {
    type = "structure",
    members = {
        DetectorId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        IpSetId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        Name = {
            type = "string",
            traits = {
                json_name = "name",
            },
        },
        Location = {
            type = "string",
            traits = {
                json_name = "location",
            },
        },
        Activate = {
            type = "boolean",
            traits = {
                json_name = "activate",
            },
        },
        ExpectedBucketOwner = {
            type = "string",
            traits = {
                json_name = "expectedBucketOwner",
            },
        },
    },
}

M.UpdateIPSetOutput = {
    type = "structure",
}

M.UpdateS3BucketResource = {
    type = "structure",
    members = {
        ObjectPrefixes = {
            type = "list",
            member_type = "string",
            traits = {
                json_name = "objectPrefixes",
            },
        },
    },
}

M.UpdateProtectedResource = {
    type = "structure",
    members = {
        S3Bucket = {
            type = "structure",
            traits = {
                json_name = "s3Bucket",
            },
        },
    },
}

M.UpdateMalwareProtectionPlanInput = {
    type = "structure",
    members = {
        MalwareProtectionPlanId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        Role = {
            type = "string",
            traits = {
                json_name = "role",
            },
        },
        Actions = {
            type = "structure",
            traits = {
                json_name = "actions",
            },
        },
        ProtectedResource = {
            type = "structure",
            traits = {
                json_name = "protectedResource",
            },
        },
    },
}

M.UpdateMalwareProtectionPlanOutput = {
    type = "structure",
}

M.UpdateMalwareScanSettingsInput = {
    type = "structure",
    members = {
        DetectorId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        ScanResourceCriteria = {
            type = "structure",
            traits = {
                json_name = "scanResourceCriteria",
            },
        },
        EbsSnapshotPreservation = {
            type = "string",
            traits = {
                json_name = "ebsSnapshotPreservation",
            },
        },
    },
}

M.UpdateMalwareScanSettingsOutput = {
    type = "structure",
}

M.MemberAdditionalConfiguration = {
    type = "structure",
    members = {
        Name = {
            type = "string",
            traits = {
                json_name = "name",
            },
        },
        Status = {
            type = "string",
            traits = {
                json_name = "status",
            },
        },
    },
}

M.MemberFeaturesConfiguration = {
    type = "structure",
    members = {
        Name = {
            type = "string",
            traits = {
                json_name = "name",
            },
        },
        Status = {
            type = "string",
            traits = {
                json_name = "status",
            },
        },
        AdditionalConfiguration = {
            type = "list",
            member_type = "structure",
            traits = {
                json_name = "additionalConfiguration",
            },
        },
    },
}

M.UpdateMemberDetectorsInput = {
    type = "structure",
    members = {
        DetectorId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        AccountIds = {
            type = "list",
            member_type = "string",
            traits = {
                json_name = "accountIds",
                required = true,
            },
        },
        DataSources = {
            type = "structure",
            traits = {
                json_name = "dataSources",
            },
        },
        Features = {
            type = "list",
            member_type = "structure",
            traits = {
                json_name = "features",
            },
        },
    },
}

M.UpdateMemberDetectorsOutput = {
    type = "structure",
    members = {
        UnprocessedAccounts = {
            type = "list",
            member_type = "structure",
            traits = {
                json_name = "unprocessedAccounts",
                required = true,
            },
        },
    },
}

M.OrganizationKubernetesAuditLogsConfiguration = {
    type = "structure",
    members = {
        AutoEnable = {
            type = "boolean",
            traits = {
                json_name = "autoEnable",
                required = true,
            },
        },
    },
}

M.OrganizationKubernetesConfiguration = {
    type = "structure",
    members = {
        AuditLogs = {
            type = "structure",
            traits = {
                json_name = "auditLogs",
                required = true,
            },
        },
    },
}

M.OrganizationEbsVolumes = {
    type = "structure",
    members = {
        AutoEnable = {
            type = "boolean",
            traits = {
                json_name = "autoEnable",
            },
        },
    },
}

M.OrganizationScanEc2InstanceWithFindings = {
    type = "structure",
    members = {
        EbsVolumes = {
            type = "structure",
            traits = {
                json_name = "ebsVolumes",
            },
        },
    },
}

M.OrganizationMalwareProtectionConfiguration = {
    type = "structure",
    members = {
        ScanEc2InstanceWithFindings = {
            type = "structure",
            traits = {
                json_name = "scanEc2InstanceWithFindings",
            },
        },
    },
}

M.OrganizationS3LogsConfiguration = {
    type = "structure",
    members = {
        AutoEnable = {
            type = "boolean",
            traits = {
                json_name = "autoEnable",
                required = true,
            },
        },
    },
}

M.OrganizationDataSourceConfigurations = {
    type = "structure",
    members = {
        S3Logs = {
            type = "structure",
            traits = {
                json_name = "s3Logs",
            },
        },
        Kubernetes = {
            type = "structure",
            traits = {
                json_name = "kubernetes",
            },
        },
        MalwareProtection = {
            type = "structure",
            traits = {
                json_name = "malwareProtection",
            },
        },
    },
}

M.OrganizationAdditionalConfiguration = {
    type = "structure",
    members = {
        Name = {
            type = "string",
            traits = {
                json_name = "name",
            },
        },
        AutoEnable = {
            type = "string",
            traits = {
                json_name = "autoEnable",
            },
        },
    },
}

M.OrganizationFeatureConfiguration = {
    type = "structure",
    members = {
        Name = {
            type = "string",
            traits = {
                json_name = "name",
            },
        },
        AutoEnable = {
            type = "string",
            traits = {
                json_name = "autoEnable",
            },
        },
        AdditionalConfiguration = {
            type = "list",
            member_type = "structure",
            traits = {
                json_name = "additionalConfiguration",
            },
        },
    },
}

M.UpdateOrganizationConfigurationInput = {
    type = "structure",
    members = {
        DetectorId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        AutoEnable = {
            type = "boolean",
            traits = {
                json_name = "autoEnable",
            },
        },
        DataSources = {
            type = "structure",
            traits = {
                json_name = "dataSources",
            },
        },
        Features = {
            type = "list",
            member_type = "structure",
            traits = {
                json_name = "features",
            },
        },
        AutoEnableOrganizationMembers = {
            type = "string",
            traits = {
                json_name = "autoEnableOrganizationMembers",
            },
        },
    },
}

M.UpdateOrganizationConfigurationOutput = {
    type = "structure",
}

M.UpdatePublishingDestinationInput = {
    type = "structure",
    members = {
        DetectorId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        DestinationId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        DestinationProperties = {
            type = "structure",
            traits = {
                json_name = "destinationProperties",
            },
        },
    },
}

M.UpdatePublishingDestinationOutput = {
    type = "structure",
}

M.UpdateThreatEntitySetInput = {
    type = "structure",
    members = {
        DetectorId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        ThreatEntitySetId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        Name = {
            type = "string",
            traits = {
                json_name = "name",
            },
        },
        Location = {
            type = "string",
            traits = {
                json_name = "location",
            },
        },
        ExpectedBucketOwner = {
            type = "string",
            traits = {
                json_name = "expectedBucketOwner",
            },
        },
        Activate = {
            type = "boolean",
            traits = {
                json_name = "activate",
            },
        },
    },
}

M.UpdateThreatEntitySetOutput = {
    type = "structure",
}

M.UpdateThreatIntelSetInput = {
    type = "structure",
    members = {
        DetectorId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        ThreatIntelSetId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        Name = {
            type = "string",
            traits = {
                json_name = "name",
            },
        },
        Location = {
            type = "string",
            traits = {
                json_name = "location",
            },
        },
        Activate = {
            type = "boolean",
            traits = {
                json_name = "activate",
            },
        },
        ExpectedBucketOwner = {
            type = "string",
            traits = {
                json_name = "expectedBucketOwner",
            },
        },
    },
}

M.UpdateThreatIntelSetOutput = {
    type = "structure",
}

M.UpdateTrustedEntitySetInput = {
    type = "structure",
    members = {
        DetectorId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        TrustedEntitySetId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        Name = {
            type = "string",
            traits = {
                json_name = "name",
            },
        },
        Location = {
            type = "string",
            traits = {
                json_name = "location",
            },
        },
        ExpectedBucketOwner = {
            type = "string",
            traits = {
                json_name = "expectedBucketOwner",
            },
        },
        Activate = {
            type = "boolean",
            traits = {
                json_name = "activate",
            },
        },
    },
}

M.UpdateTrustedEntitySetOutput = {
    type = "structure",
}

return M
