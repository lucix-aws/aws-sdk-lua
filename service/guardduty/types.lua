local M = {}

M.AcceptAdministratorInvitationInput = {
    type = "structure",
    id = "AcceptAdministratorInvitationInput",
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
    id = "AcceptAdministratorInvitationOutput",
}

M.BadRequestException = {
    type = "structure",
    id = "BadRequestException",
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
    id = "InternalServerErrorException",
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
    id = "AcceptInvitationInput",
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
    id = "AcceptInvitationOutput",
}

M.AccessControlList = {
    type = "structure",
    id = "AccessControlList",
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
    id = "AccessDeniedException",
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
    id = "AccessKey",
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
    id = "AccessKeyDetails",
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
    id = "Account",
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
    id = "AccountDetail",
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
    id = "DataSourceFreeTrial",
    members = {
        FreeTrialDaysRemaining = {
            type = "integer",
            traits = {
                json_name = "freeTrialDaysRemaining",
            },
        },
    },
}

M.KubernetesDataSourceFreeTrial = {
    type = "structure",
    id = "KubernetesDataSourceFreeTrial",
    members = {
        AuditLogs = setmetatable({ traits = {
            json_name = "auditLogs",
        } }, { __index = M.DataSourceFreeTrial }),
    },
}

M.MalwareProtectionDataSourceFreeTrial = {
    type = "structure",
    id = "MalwareProtectionDataSourceFreeTrial",
    members = {
        ScanEc2InstanceWithFindings = setmetatable({ traits = {
            json_name = "scanEc2InstanceWithFindings",
        } }, { __index = M.DataSourceFreeTrial }),
    },
}

M.DataSourcesFreeTrial = {
    type = "structure",
    id = "DataSourcesFreeTrial",
    members = {
        CloudTrail = setmetatable({ traits = {
            json_name = "cloudTrail",
        } }, { __index = M.DataSourceFreeTrial }),
        DnsLogs = setmetatable({ traits = {
            json_name = "dnsLogs",
        } }, { __index = M.DataSourceFreeTrial }),
        FlowLogs = setmetatable({ traits = {
            json_name = "flowLogs",
        } }, { __index = M.DataSourceFreeTrial }),
        S3Logs = setmetatable({ traits = {
            json_name = "s3Logs",
        } }, { __index = M.DataSourceFreeTrial }),
        Kubernetes = setmetatable({ traits = {
            json_name = "kubernetes",
        } }, { __index = M.KubernetesDataSourceFreeTrial }),
        MalwareProtection = setmetatable({ traits = {
            json_name = "malwareProtection",
        } }, { __index = M.MalwareProtectionDataSourceFreeTrial }),
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
    id = "FreeTrialFeatureConfigurationResult",
    members = {
        Name = {
            type = "string",
            traits = {
                json_name = "name",
            },
        },
        FreeTrialDaysRemaining = {
            type = "integer",
            traits = {
                json_name = "freeTrialDaysRemaining",
            },
        },
    },
}

M.AccountFreeTrialInfo = {
    type = "structure",
    id = "AccountFreeTrialInfo",
    members = {
        AccountId = {
            type = "string",
            traits = {
                json_name = "accountId",
            },
        },
        DataSources = setmetatable({ traits = {
            json_name = "dataSources",
        } }, { __index = M.DataSourcesFreeTrial }),
        Features = {
            type = "list",
            member = M.FreeTrialFeatureConfigurationResult,
            traits = {
                json_name = "features",
            },
        },
    },
}

M.BlockPublicAccess = {
    type = "structure",
    id = "BlockPublicAccess",
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
    id = "AccountLevelPermissions",
    members = {
        BlockPublicAccess = setmetatable({ traits = {
            json_name = "blockPublicAccess",
        } }, { __index = M.BlockPublicAccess }),
    },
}

M.AccountStatistics = {
    type = "structure",
    id = "AccountStatistics",
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
            type = "integer",
            traits = {
                json_name = "totalFindings",
            },
        },
    },
}

M.DomainDetails = {
    type = "structure",
    id = "DomainDetails",
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
    id = "RemoteAccountDetails",
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
    id = "City",
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
    id = "Country",
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
    id = "GeoLocation",
    members = {
        Lat = {
            type = "double",
            traits = {
                json_name = "lat",
            },
        },
        Lon = {
            type = "double",
            traits = {
                json_name = "lon",
            },
        },
    },
}

M.Organization = {
    type = "structure",
    id = "Organization",
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
    id = "RemoteIpDetails",
    members = {
        City = setmetatable({ traits = {
            json_name = "city",
        } }, { __index = M.City }),
        Country = setmetatable({ traits = {
            json_name = "country",
        } }, { __index = M.Country }),
        GeoLocation = setmetatable({ traits = {
            json_name = "geoLocation",
        } }, { __index = M.GeoLocation }),
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
        Organization = setmetatable({ traits = {
            json_name = "organization",
        } }, { __index = M.Organization }),
    },
}

M.AwsApiCallAction = {
    type = "structure",
    id = "AwsApiCallAction",
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
        DomainDetails = setmetatable({ traits = {
            json_name = "domainDetails",
        } }, { __index = M.DomainDetails }),
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
        RemoteIpDetails = setmetatable({ traits = {
            json_name = "remoteIpDetails",
        } }, { __index = M.RemoteIpDetails }),
        ServiceName = {
            type = "string",
            traits = {
                json_name = "serviceName",
            },
        },
        RemoteAccountDetails = setmetatable({ traits = {
            json_name = "remoteAccountDetails",
        } }, { __index = M.RemoteAccountDetails }),
        AffectedResources = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
            traits = {
                json_name = "affectedResources",
            },
        },
    },
}

M.DnsRequestAction = {
    type = "structure",
    id = "DnsRequestAction",
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
    id = "KubernetesApiCallAction",
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
            member = { type = "string" },
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
        RemoteIpDetails = setmetatable({ traits = {
            json_name = "remoteIpDetails",
        } }, { __index = M.RemoteIpDetails }),
        StatusCode = {
            type = "integer",
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
    id = "KubernetesPermissionCheckedDetails",
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
    id = "KubernetesRoleBindingDetails",
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
    id = "KubernetesRoleDetails",
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
    id = "LocalIpDetails",
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
    id = "LocalPortDetails",
    members = {
        Port = {
            type = "integer",
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
    id = "RemotePortDetails",
    members = {
        Port = {
            type = "integer",
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
    id = "NetworkConnectionAction",
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
        LocalPortDetails = setmetatable({ traits = {
            json_name = "localPortDetails",
        } }, { __index = M.LocalPortDetails }),
        Protocol = {
            type = "string",
            traits = {
                json_name = "protocol",
            },
        },
        LocalIpDetails = setmetatable({ traits = {
            json_name = "localIpDetails",
        } }, { __index = M.LocalIpDetails }),
        LocalNetworkInterface = {
            type = "string",
            traits = {
                json_name = "localNetworkInterface",
            },
        },
        RemoteIpDetails = setmetatable({ traits = {
            json_name = "remoteIpDetails",
        } }, { __index = M.RemoteIpDetails }),
        RemotePortDetails = setmetatable({ traits = {
            json_name = "remotePortDetails",
        } }, { __index = M.RemotePortDetails }),
    },
}

M.PortProbeDetail = {
    type = "structure",
    id = "PortProbeDetail",
    members = {
        LocalPortDetails = setmetatable({ traits = {
            json_name = "localPortDetails",
        } }, { __index = M.LocalPortDetails }),
        LocalIpDetails = setmetatable({ traits = {
            json_name = "localIpDetails",
        } }, { __index = M.LocalIpDetails }),
        RemoteIpDetails = setmetatable({ traits = {
            json_name = "remoteIpDetails",
        } }, { __index = M.RemoteIpDetails }),
    },
}

M.PortProbeAction = {
    type = "structure",
    id = "PortProbeAction",
    members = {
        Blocked = {
            type = "boolean",
            traits = {
                json_name = "blocked",
            },
        },
        PortProbeDetails = {
            type = "list",
            member = M.PortProbeDetail,
            traits = {
                json_name = "portProbeDetails",
            },
        },
    },
}

M.LoginAttribute = {
    type = "structure",
    id = "LoginAttribute",
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
            type = "integer",
            traits = {
                json_name = "failedLoginAttempts",
            },
        },
        SuccessfulLoginAttempts = {
            type = "integer",
            traits = {
                json_name = "successfulLoginAttempts",
            },
        },
    },
}

M.RdsLoginAttemptAction = {
    type = "structure",
    id = "RdsLoginAttemptAction",
    members = {
        RemoteIpDetails = setmetatable({ traits = {
            json_name = "remoteIpDetails",
        } }, { __index = M.RemoteIpDetails }),
        LoginAttributes = {
            type = "list",
            member = M.LoginAttribute,
        },
    },
}

M.Action = {
    type = "structure",
    id = "Action",
    members = {
        ActionType = {
            type = "string",
            traits = {
                json_name = "actionType",
            },
        },
        AwsApiCallAction = setmetatable({ traits = {
            json_name = "awsApiCallAction",
        } }, { __index = M.AwsApiCallAction }),
        DnsRequestAction = setmetatable({ traits = {
            json_name = "dnsRequestAction",
        } }, { __index = M.DnsRequestAction }),
        NetworkConnectionAction = setmetatable({ traits = {
            json_name = "networkConnectionAction",
        } }, { __index = M.NetworkConnectionAction }),
        PortProbeAction = setmetatable({ traits = {
            json_name = "portProbeAction",
        } }, { __index = M.PortProbeAction }),
        KubernetesApiCallAction = setmetatable({ traits = {
            json_name = "kubernetesApiCallAction",
        } }, { __index = M.KubernetesApiCallAction }),
        KubernetesPermissionCheckedDetails = setmetatable({ traits = {
            json_name = "kubernetesPermissionCheckedDetails",
        } }, { __index = M.KubernetesPermissionCheckedDetails }),
        KubernetesRoleBindingDetails = setmetatable({ traits = {
            json_name = "kubernetesRoleBindingDetails",
        } }, { __index = M.KubernetesRoleBindingDetails }),
        KubernetesRoleDetails = setmetatable({ traits = {
            json_name = "kubernetesRoleDetails",
        } }, { __index = M.KubernetesRoleDetails }),
        RdsLoginAttemptAction = setmetatable({ traits = {
            json_name = "rdsLoginAttemptAction",
        } }, { __index = M.RdsLoginAttemptAction }),
    },
}

M.ActorProcess = {
    type = "structure",
    id = "ActorProcess",
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
    id = "Session",
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
    id = "User",
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
        Account = setmetatable({ traits = {
            json_name = "account",
        } }, { __index = M.Account }),
    },
}

M.Actor = {
    type = "structure",
    id = "Actor",
    members = {
        Id = {
            type = "string",
            traits = {
                json_name = "id",
                required = true,
            },
        },
        User = setmetatable({ traits = {
            json_name = "user",
        } }, { __index = M.User }),
        Session = setmetatable({ traits = {
            json_name = "session",
        } }, { __index = M.Session }),
        Process = setmetatable({ traits = {
            json_name = "process",
        } }, { __index = M.ActorProcess }),
    },
}

M.AdditionalInfo = {
    type = "structure",
    id = "AdditionalInfo",
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
    id = "AddonDetails",
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
    id = "AdminAccount",
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
    id = "Administrator",
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
    id = "AgentDetails",
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
    id = "Observations",
    members = {
        Text = {
            type = "list",
            member = { type = "string" },
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
    id = "AnomalyObject",
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
        Observations = setmetatable({ traits = {
            json_name = "observations",
        } }, { __index = M.Observations }),
    },
}

M.AnomalyUnusual = {
    type = "structure",
    id = "AnomalyUnusual",
    members = {
        Behavior = {
            type = "map",
            key = { type = "string" },
            value = { type = "map" },
            traits = {
                json_name = "behavior",
            },
        },
    },
}

M.Anomaly = {
    type = "structure",
    id = "Anomaly",
    members = {
        Profiles = {
            type = "map",
            key = { type = "string" },
            value = { type = "map" },
            traits = {
                json_name = "profiles",
            },
        },
        Unusual = setmetatable({ traits = {
            json_name = "unusual",
        } }, { __index = M.AnomalyUnusual }),
    },
}

M.ArchiveFindingsInput = {
    type = "structure",
    id = "ArchiveFindingsInput",
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
            member = { type = "string" },
            traits = {
                json_name = "findingIds",
                required = true,
            },
        },
    },
}

M.ArchiveFindingsOutput = {
    type = "structure",
    id = "ArchiveFindingsOutput",
}

M.AutoEnableMembers = {
    NEW = "NEW",
    ALL = "ALL",
    NONE = "NONE",
}

M.AutonomousSystem = {
    type = "structure",
    id = "AutonomousSystem",
    members = {
        Name = {
            type = "string",
            traits = {
                json_name = "name",
                required = true,
            },
        },
        Number = {
            type = "integer",
            traits = {
                json_name = "number",
                required = true,
            },
        },
    },
}

M.AutoscalingAutoScalingGroup = {
    type = "structure",
    id = "AutoscalingAutoScalingGroup",
    members = {
        Ec2InstanceUids = {
            type = "list",
            member = { type = "string" },
            traits = {
                json_name = "ec2InstanceUids",
            },
        },
    },
}

M.BucketPolicy = {
    type = "structure",
    id = "BucketPolicy",
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
    id = "BucketLevelPermissions",
    members = {
        AccessControlList = setmetatable({ traits = {
            json_name = "accessControlList",
        } }, { __index = M.AccessControlList }),
        BucketPolicy = setmetatable({ traits = {
            json_name = "bucketPolicy",
        } }, { __index = M.BucketPolicy }),
        BlockPublicAccess = setmetatable({ traits = {
            json_name = "blockPublicAccess",
        } }, { __index = M.BlockPublicAccess }),
    },
}

M.CloudformationStack = {
    type = "structure",
    id = "CloudformationStack",
    members = {
        Ec2InstanceUids = {
            type = "list",
            member = { type = "string" },
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
    id = "CloudTrailConfigurationResult",
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
    id = "Condition",
    members = {
        Eq = {
            type = "list",
            member = { type = "string" },
            traits = {
                json_name = "eq",
            },
        },
        Neq = {
            type = "list",
            member = { type = "string" },
            traits = {
                json_name = "neq",
            },
        },
        Gt = {
            type = "integer",
            traits = {
                json_name = "gt",
            },
        },
        Gte = {
            type = "integer",
            traits = {
                json_name = "gte",
            },
        },
        Lt = {
            type = "integer",
            traits = {
                json_name = "lt",
            },
        },
        Lte = {
            type = "integer",
            traits = {
                json_name = "lte",
            },
        },
        Equals = {
            type = "list",
            member = { type = "string" },
            traits = {
                json_name = "equals",
            },
        },
        NotEquals = {
            type = "list",
            member = { type = "string" },
            traits = {
                json_name = "notEquals",
            },
        },
        GreaterThan = {
            type = "long",
            traits = {
                json_name = "greaterThan",
            },
        },
        GreaterThanOrEqual = {
            type = "long",
            traits = {
                json_name = "greaterThanOrEqual",
            },
        },
        LessThan = {
            type = "long",
            traits = {
                json_name = "lessThan",
            },
        },
        LessThanOrEqual = {
            type = "long",
            traits = {
                json_name = "lessThanOrEqual",
            },
        },
        Matches = {
            type = "list",
            member = { type = "string" },
            traits = {
                json_name = "matches",
            },
        },
        NotMatches = {
            type = "list",
            member = { type = "string" },
            traits = {
                json_name = "notMatches",
            },
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
    id = "SecurityContext",
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
    id = "VolumeMount",
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
    id = "Container",
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
            member = M.VolumeMount,
            traits = {
                json_name = "volumeMounts",
            },
        },
        SecurityContext = setmetatable({ traits = {
            json_name = "securityContext",
        } }, { __index = M.SecurityContext }),
    },
}

M.ContainerFindingResource = {
    type = "structure",
    id = "ContainerFindingResource",
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
    id = "ContainerInstanceDetails",
    members = {
        CoveredContainerInstances = {
            type = "long",
            traits = {
                json_name = "coveredContainerInstances",
            },
        },
        CompatibleContainerInstances = {
            type = "long",
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
    id = "CoverageEc2InstanceDetails",
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
        AgentDetails = setmetatable({ traits = {
            json_name = "agentDetails",
        } }, { __index = M.AgentDetails }),
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
    id = "FargateDetails",
    members = {
        Issues = {
            type = "list",
            member = { type = "string" },
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
    id = "CoverageEcsClusterDetails",
    members = {
        ClusterName = {
            type = "string",
            traits = {
                json_name = "clusterName",
            },
        },
        FargateDetails = setmetatable({ traits = {
            json_name = "fargateDetails",
        } }, { __index = M.FargateDetails }),
        ContainerInstanceDetails = setmetatable({ traits = {
            json_name = "containerInstanceDetails",
        } }, { __index = M.ContainerInstanceDetails }),
    },
}

M.CoverageEksClusterDetails = {
    type = "structure",
    id = "CoverageEksClusterDetails",
    members = {
        ClusterName = {
            type = "string",
            traits = {
                json_name = "clusterName",
            },
        },
        CoveredNodes = {
            type = "long",
            traits = {
                json_name = "coveredNodes",
            },
        },
        CompatibleNodes = {
            type = "long",
            traits = {
                json_name = "compatibleNodes",
            },
        },
        AddonDetails = setmetatable({ traits = {
            json_name = "addonDetails",
        } }, { __index = M.AddonDetails }),
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
    id = "CoverageFilterCondition",
    members = {
        Equals = {
            type = "list",
            member = { type = "string" },
            traits = {
                json_name = "equals",
            },
        },
        NotEquals = {
            type = "list",
            member = { type = "string" },
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
    id = "CoverageFilterCriterion",
    members = {
        CriterionKey = {
            type = "string",
            traits = {
                json_name = "criterionKey",
            },
        },
        FilterCondition = setmetatable({ traits = {
            json_name = "filterCondition",
        } }, { __index = M.CoverageFilterCondition }),
    },
}

M.CoverageFilterCriteria = {
    type = "structure",
    id = "CoverageFilterCriteria",
    members = {
        FilterCriterion = {
            type = "list",
            member = M.CoverageFilterCriterion,
            traits = {
                json_name = "filterCriterion",
            },
        },
    },
}

M.CoverageResourceDetails = {
    type = "structure",
    id = "CoverageResourceDetails",
    members = {
        EksClusterDetails = setmetatable({ traits = {
            json_name = "eksClusterDetails",
        } }, { __index = M.CoverageEksClusterDetails }),
        EcsClusterDetails = setmetatable({ traits = {
            json_name = "ecsClusterDetails",
        } }, { __index = M.CoverageEcsClusterDetails }),
        Ec2InstanceDetails = setmetatable({ traits = {
            json_name = "ec2InstanceDetails",
        } }, { __index = M.CoverageEc2InstanceDetails }),
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
    id = "CoverageResource",
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
        ResourceDetails = setmetatable({ traits = {
            json_name = "resourceDetails",
        } }, { __index = M.CoverageResourceDetails }),
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
    id = "CoverageSortCriteria",
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
    id = "CoverageStatistics",
    members = {
        CountByResourceType = {
            type = "map",
            key = { type = "string" },
            value = { type = "long" },
            traits = {
                json_name = "countByResourceType",
            },
        },
        CountByCoverageStatus = {
            type = "map",
            key = { type = "string" },
            value = { type = "long" },
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
    id = "KubernetesAuditLogsConfiguration",
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
    id = "KubernetesConfiguration",
    members = {
        AuditLogs = setmetatable({ traits = {
            json_name = "auditLogs",
            required = true,
        } }, { __index = M.KubernetesAuditLogsConfiguration }),
    },
}

M.ScanEc2InstanceWithFindings = {
    type = "structure",
    id = "ScanEc2InstanceWithFindings",
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
    id = "MalwareProtectionConfiguration",
    members = {
        ScanEc2InstanceWithFindings = setmetatable({ traits = {
            json_name = "scanEc2InstanceWithFindings",
        } }, { __index = M.ScanEc2InstanceWithFindings }),
    },
}

M.S3LogsConfiguration = {
    type = "structure",
    id = "S3LogsConfiguration",
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
    id = "DataSourceConfigurations",
    members = {
        S3Logs = setmetatable({ traits = {
            json_name = "s3Logs",
        } }, { __index = M.S3LogsConfiguration }),
        Kubernetes = setmetatable({ traits = {
            json_name = "kubernetes",
        } }, { __index = M.KubernetesConfiguration }),
        MalwareProtection = setmetatable({ traits = {
            json_name = "malwareProtection",
        } }, { __index = M.MalwareProtectionConfiguration }),
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
    id = "DetectorAdditionalConfiguration",
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
    id = "DetectorFeatureConfiguration",
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
            member = M.DetectorAdditionalConfiguration,
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
    id = "CreateDetectorInput",
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
                idempotency_token = true,
                json_name = "clientToken",
            },
        },
        FindingPublishingFrequency = {
            type = "string",
            traits = {
                json_name = "findingPublishingFrequency",
            },
        },
        DataSources = setmetatable({ traits = {
            json_name = "dataSources",
        } }, { __index = M.DataSourceConfigurations }),
        Tags = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
            traits = {
                json_name = "tags",
            },
        },
        Features = {
            type = "list",
            member = M.DetectorFeatureConfiguration,
            traits = {
                json_name = "features",
            },
        },
    },
}

M.EbsVolumesResult = {
    type = "structure",
    id = "EbsVolumesResult",
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
    id = "ScanEc2InstanceWithFindingsResult",
    members = {
        EbsVolumes = setmetatable({ traits = {
            json_name = "ebsVolumes",
        } }, { __index = M.EbsVolumesResult }),
    },
}

M.MalwareProtectionConfigurationResult = {
    type = "structure",
    id = "MalwareProtectionConfigurationResult",
    members = {
        ScanEc2InstanceWithFindings = setmetatable({ traits = {
            json_name = "scanEc2InstanceWithFindings",
        } }, { __index = M.ScanEc2InstanceWithFindingsResult }),
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
    id = "UnprocessedDataSourcesResult",
    members = {
        MalwareProtection = setmetatable({ traits = {
            json_name = "malwareProtection",
        } }, { __index = M.MalwareProtectionConfigurationResult }),
    },
}

M.CreateDetectorOutput = {
    type = "structure",
    id = "CreateDetectorOutput",
    members = {
        DetectorId = {
            type = "string",
            traits = {
                json_name = "detectorId",
            },
        },
        UnprocessedDataSources = setmetatable({ traits = {
            json_name = "unprocessedDataSources",
        } }, { __index = M.UnprocessedDataSourcesResult }),
    },
}

M.FilterAction = {
    NOOP = "NOOP",
    ARCHIVE = "ARCHIVE",
}

M.FindingCriteria = {
    type = "structure",
    id = "FindingCriteria",
    members = {
        Criterion = {
            type = "map",
            key = { type = "string" },
            value = M.Condition,
            traits = {
                json_name = "criterion",
            },
        },
    },
}

M.CreateFilterInput = {
    type = "structure",
    id = "CreateFilterInput",
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
            type = "integer",
            traits = {
                json_name = "rank",
            },
        },
        FindingCriteria = setmetatable({ traits = {
            json_name = "findingCriteria",
            required = true,
        } }, { __index = M.FindingCriteria }),
        ClientToken = {
            type = "string",
            traits = {
                idempotency_token = true,
                json_name = "clientToken",
            },
        },
        Tags = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
            traits = {
                json_name = "tags",
            },
        },
    },
}

M.CreateFilterOutput = {
    type = "structure",
    id = "CreateFilterOutput",
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
    id = "CreateIPSetInput",
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
                idempotency_token = true,
                json_name = "clientToken",
            },
        },
        Tags = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
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
    id = "CreateIPSetOutput",
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
    id = "MalwareProtectionPlanTaggingAction",
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
    id = "MalwareProtectionPlanActions",
    members = {
        Tagging = setmetatable({ traits = {
            json_name = "tagging",
        } }, { __index = M.MalwareProtectionPlanTaggingAction }),
    },
}

M.CreateS3BucketResource = {
    type = "structure",
    id = "CreateS3BucketResource",
    members = {
        BucketName = {
            type = "string",
            traits = {
                json_name = "bucketName",
            },
        },
        ObjectPrefixes = {
            type = "list",
            member = { type = "string" },
            traits = {
                json_name = "objectPrefixes",
            },
        },
    },
}

M.CreateProtectedResource = {
    type = "structure",
    id = "CreateProtectedResource",
    members = {
        S3Bucket = setmetatable({ traits = {
            json_name = "s3Bucket",
        } }, { __index = M.CreateS3BucketResource }),
    },
}

M.CreateMalwareProtectionPlanInput = {
    type = "structure",
    id = "CreateMalwareProtectionPlanInput",
    members = {
        ClientToken = {
            type = "string",
            traits = {
                idempotency_token = true,
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
        ProtectedResource = setmetatable({ traits = {
            json_name = "protectedResource",
            required = true,
        } }, { __index = M.CreateProtectedResource }),
        Actions = setmetatable({ traits = {
            json_name = "actions",
        } }, { __index = M.MalwareProtectionPlanActions }),
        Tags = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
            traits = {
                json_name = "tags",
            },
        },
    },
}

M.CreateMalwareProtectionPlanOutput = {
    type = "structure",
    id = "CreateMalwareProtectionPlanOutput",
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
    id = "CreateMembersInput",
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
            member = M.AccountDetail,
            traits = {
                json_name = "accountDetails",
                required = true,
            },
        },
    },
}

M.UnprocessedAccount = {
    type = "structure",
    id = "UnprocessedAccount",
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
    id = "CreateMembersOutput",
    members = {
        UnprocessedAccounts = {
            type = "list",
            member = M.UnprocessedAccount,
            traits = {
                json_name = "unprocessedAccounts",
                required = true,
            },
        },
    },
}

M.DestinationProperties = {
    type = "structure",
    id = "DestinationProperties",
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
    id = "CreatePublishingDestinationInput",
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
        DestinationProperties = setmetatable({ traits = {
            json_name = "destinationProperties",
            required = true,
        } }, { __index = M.DestinationProperties }),
        ClientToken = {
            type = "string",
            traits = {
                idempotency_token = true,
                json_name = "clientToken",
            },
        },
        Tags = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
            traits = {
                json_name = "tags",
            },
        },
    },
}

M.CreatePublishingDestinationOutput = {
    type = "structure",
    id = "CreatePublishingDestinationOutput",
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
    id = "CreateSampleFindingsInput",
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
            member = { type = "string" },
            traits = {
                json_name = "findingTypes",
            },
        },
    },
}

M.CreateSampleFindingsOutput = {
    type = "structure",
    id = "CreateSampleFindingsOutput",
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
    id = "CreateThreatEntitySetInput",
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
                idempotency_token = true,
                json_name = "clientToken",
            },
        },
        Tags = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
            traits = {
                json_name = "tags",
            },
        },
    },
}

M.CreateThreatEntitySetOutput = {
    type = "structure",
    id = "CreateThreatEntitySetOutput",
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
    id = "CreateThreatIntelSetInput",
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
                idempotency_token = true,
                json_name = "clientToken",
            },
        },
        Tags = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
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
    id = "CreateThreatIntelSetOutput",
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
    id = "CreateTrustedEntitySetInput",
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
                idempotency_token = true,
                json_name = "clientToken",
            },
        },
        Tags = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
            traits = {
                json_name = "tags",
            },
        },
    },
}

M.CreateTrustedEntitySetOutput = {
    type = "structure",
    id = "CreateTrustedEntitySetOutput",
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
    id = "DNSLogsConfigurationResult",
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
    id = "FlowLogsConfigurationResult",
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
    id = "KubernetesAuditLogsConfigurationResult",
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
    id = "KubernetesConfigurationResult",
    members = {
        AuditLogs = setmetatable({ traits = {
            json_name = "auditLogs",
            required = true,
        } }, { __index = M.KubernetesAuditLogsConfigurationResult }),
    },
}

M.S3LogsConfigurationResult = {
    type = "structure",
    id = "S3LogsConfigurationResult",
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
    id = "DataSourceConfigurationsResult",
    members = {
        CloudTrail = setmetatable({ traits = {
            json_name = "cloudTrail",
            required = true,
        } }, { __index = M.CloudTrailConfigurationResult }),
        DNSLogs = setmetatable({ traits = {
            json_name = "dnsLogs",
            required = true,
        } }, { __index = M.DNSLogsConfigurationResult }),
        FlowLogs = setmetatable({ traits = {
            json_name = "flowLogs",
            required = true,
        } }, { __index = M.FlowLogsConfigurationResult }),
        S3Logs = setmetatable({ traits = {
            json_name = "s3Logs",
            required = true,
        } }, { __index = M.S3LogsConfigurationResult }),
        Kubernetes = setmetatable({ traits = {
            json_name = "kubernetes",
        } }, { __index = M.KubernetesConfigurationResult }),
        MalwareProtection = setmetatable({ traits = {
            json_name = "malwareProtection",
        } }, { __index = M.MalwareProtectionConfigurationResult }),
    },
}

M.DateStatistics = {
    type = "structure",
    id = "DateStatistics",
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
            type = "double",
            traits = {
                json_name = "severity",
            },
        },
        TotalFindings = {
            type = "integer",
            traits = {
                json_name = "totalFindings",
            },
        },
    },
}

M.DeclineInvitationsInput = {
    type = "structure",
    id = "DeclineInvitationsInput",
    members = {
        AccountIds = {
            type = "list",
            member = { type = "string" },
            traits = {
                json_name = "accountIds",
                required = true,
            },
        },
    },
}

M.DeclineInvitationsOutput = {
    type = "structure",
    id = "DeclineInvitationsOutput",
    members = {
        UnprocessedAccounts = {
            type = "list",
            member = M.UnprocessedAccount,
            traits = {
                json_name = "unprocessedAccounts",
                required = true,
            },
        },
    },
}

M.DefaultServerSideEncryption = {
    type = "structure",
    id = "DefaultServerSideEncryption",
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
    id = "DeleteDetectorInput",
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
    id = "DeleteDetectorOutput",
}

M.DeleteFilterInput = {
    type = "structure",
    id = "DeleteFilterInput",
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
    id = "DeleteFilterOutput",
}

M.DeleteInvitationsInput = {
    type = "structure",
    id = "DeleteInvitationsInput",
    members = {
        AccountIds = {
            type = "list",
            member = { type = "string" },
            traits = {
                json_name = "accountIds",
                required = true,
            },
        },
    },
}

M.DeleteInvitationsOutput = {
    type = "structure",
    id = "DeleteInvitationsOutput",
    members = {
        UnprocessedAccounts = {
            type = "list",
            member = M.UnprocessedAccount,
            traits = {
                json_name = "unprocessedAccounts",
                required = true,
            },
        },
    },
}

M.DeleteIPSetInput = {
    type = "structure",
    id = "DeleteIPSetInput",
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
    id = "DeleteIPSetOutput",
}

M.DeleteMalwareProtectionPlanInput = {
    type = "structure",
    id = "DeleteMalwareProtectionPlanInput",
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
    id = "DeleteMalwareProtectionPlanOutput",
}

M.ResourceNotFoundException = {
    type = "structure",
    id = "ResourceNotFoundException",
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
    id = "DeleteMembersInput",
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
            member = { type = "string" },
            traits = {
                json_name = "accountIds",
                required = true,
            },
        },
    },
}

M.DeleteMembersOutput = {
    type = "structure",
    id = "DeleteMembersOutput",
    members = {
        UnprocessedAccounts = {
            type = "list",
            member = M.UnprocessedAccount,
            traits = {
                json_name = "unprocessedAccounts",
                required = true,
            },
        },
    },
}

M.DeletePublishingDestinationInput = {
    type = "structure",
    id = "DeletePublishingDestinationInput",
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
    id = "DeletePublishingDestinationOutput",
}

M.DeleteThreatEntitySetInput = {
    type = "structure",
    id = "DeleteThreatEntitySetInput",
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
    id = "DeleteThreatEntitySetOutput",
}

M.DeleteThreatIntelSetInput = {
    type = "structure",
    id = "DeleteThreatIntelSetInput",
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
    id = "DeleteThreatIntelSetOutput",
}

M.DeleteTrustedEntitySetInput = {
    type = "structure",
    id = "DeleteTrustedEntitySetInput",
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
    id = "DeleteTrustedEntitySetOutput",
}

M.FilterCondition = {
    type = "structure",
    id = "FilterCondition",
    members = {
        EqualsValue = {
            type = "string",
            traits = {
                json_name = "equalsValue",
            },
        },
        GreaterThan = {
            type = "long",
            traits = {
                json_name = "greaterThan",
            },
        },
        LessThan = {
            type = "long",
            traits = {
                json_name = "lessThan",
            },
        },
    },
}

M.FilterCriterion = {
    type = "structure",
    id = "FilterCriterion",
    members = {
        CriterionKey = {
            type = "string",
            traits = {
                json_name = "criterionKey",
            },
        },
        FilterCondition = setmetatable({ traits = {
            json_name = "filterCondition",
        } }, { __index = M.FilterCondition }),
    },
}

M.FilterCriteria = {
    type = "structure",
    id = "FilterCriteria",
    members = {
        FilterCriterion = {
            type = "list",
            member = M.FilterCriterion,
            traits = {
                json_name = "filterCriterion",
            },
        },
    },
}

M.SortCriteria = {
    type = "structure",
    id = "SortCriteria",
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
    id = "DescribeMalwareScansInput",
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
            type = "integer",
            traits = {
                json_name = "maxResults",
            },
        },
        FilterCriteria = setmetatable({ traits = {
            json_name = "filterCriteria",
        } }, { __index = M.FilterCriteria }),
        SortCriteria = setmetatable({ traits = {
            json_name = "sortCriteria",
        } }, { __index = M.SortCriteria }),
    },
}

M.VolumeDetail = {
    type = "structure",
    id = "VolumeDetail",
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
            type = "integer",
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
    id = "ResourceDetails",
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
    id = "ScanResultDetails",
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
    id = "TriggerDetails",
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
    id = "Scan",
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
        TriggerDetails = setmetatable({ traits = {
            json_name = "triggerDetails",
        } }, { __index = M.TriggerDetails }),
        ResourceDetails = setmetatable({ traits = {
            json_name = "resourceDetails",
        } }, { __index = M.ResourceDetails }),
        ScanResultDetails = setmetatable({ traits = {
            json_name = "scanResultDetails",
        } }, { __index = M.ScanResultDetails }),
        AccountId = {
            type = "string",
            traits = {
                json_name = "accountId",
            },
        },
        TotalBytes = {
            type = "long",
            traits = {
                json_name = "totalBytes",
            },
        },
        FileCount = {
            type = "long",
            traits = {
                json_name = "fileCount",
            },
        },
        AttachedVolumes = {
            type = "list",
            member = M.VolumeDetail,
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
    id = "DescribeMalwareScansOutput",
    members = {
        Scans = {
            type = "list",
            member = M.Scan,
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
    id = "DescribeOrganizationConfigurationInput",
    members = {
        DetectorId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        MaxResults = {
            type = "integer",
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
    id = "OrganizationKubernetesAuditLogsConfigurationResult",
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
    id = "OrganizationKubernetesConfigurationResult",
    members = {
        AuditLogs = setmetatable({ traits = {
            json_name = "auditLogs",
            required = true,
        } }, { __index = M.OrganizationKubernetesAuditLogsConfigurationResult }),
    },
}

M.OrganizationEbsVolumesResult = {
    type = "structure",
    id = "OrganizationEbsVolumesResult",
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
    id = "OrganizationScanEc2InstanceWithFindingsResult",
    members = {
        EbsVolumes = setmetatable({ traits = {
            json_name = "ebsVolumes",
        } }, { __index = M.OrganizationEbsVolumesResult }),
    },
}

M.OrganizationMalwareProtectionConfigurationResult = {
    type = "structure",
    id = "OrganizationMalwareProtectionConfigurationResult",
    members = {
        ScanEc2InstanceWithFindings = setmetatable({ traits = {
            json_name = "scanEc2InstanceWithFindings",
        } }, { __index = M.OrganizationScanEc2InstanceWithFindingsResult }),
    },
}

M.OrganizationS3LogsConfigurationResult = {
    type = "structure",
    id = "OrganizationS3LogsConfigurationResult",
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
    id = "OrganizationDataSourceConfigurationsResult",
    members = {
        S3Logs = setmetatable({ traits = {
            json_name = "s3Logs",
            required = true,
        } }, { __index = M.OrganizationS3LogsConfigurationResult }),
        Kubernetes = setmetatable({ traits = {
            json_name = "kubernetes",
        } }, { __index = M.OrganizationKubernetesConfigurationResult }),
        MalwareProtection = setmetatable({ traits = {
            json_name = "malwareProtection",
        } }, { __index = M.OrganizationMalwareProtectionConfigurationResult }),
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
    id = "OrganizationAdditionalConfigurationResult",
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
    id = "OrganizationFeatureConfigurationResult",
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
            member = M.OrganizationAdditionalConfigurationResult,
            traits = {
                json_name = "additionalConfiguration",
            },
        },
    },
}

M.DescribeOrganizationConfigurationOutput = {
    type = "structure",
    id = "DescribeOrganizationConfigurationOutput",
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
        DataSources = setmetatable({ traits = {
            json_name = "dataSources",
        } }, { __index = M.OrganizationDataSourceConfigurationsResult }),
        Features = {
            type = "list",
            member = M.OrganizationFeatureConfigurationResult,
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
    id = "DescribePublishingDestinationInput",
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
    id = "DescribePublishingDestinationOutput",
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
            type = "long",
            traits = {
                json_name = "publishingFailureStartTimestamp",
                required = true,
            },
        },
        DestinationProperties = setmetatable({ traits = {
            json_name = "destinationProperties",
            required = true,
        } }, { __index = M.DestinationProperties }),
        Tags = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
            traits = {
                json_name = "tags",
            },
        },
    },
}

M.Destination = {
    type = "structure",
    id = "Destination",
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
    id = "NetworkConnection",
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
    id = "NetworkGeoLocation",
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
            type = "double",
            traits = {
                json_name = "lat",
                required = true,
            },
        },
        Longitude = {
            type = "double",
            traits = {
                json_name = "lon",
                required = true,
            },
        },
    },
}

M.NetworkEndpoint = {
    type = "structure",
    id = "NetworkEndpoint",
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
            type = "integer",
            traits = {
                json_name = "port",
            },
        },
        Location = setmetatable({ traits = {
            json_name = "location",
        } }, { __index = M.NetworkGeoLocation }),
        AutonomousSystem = setmetatable({ traits = {
            json_name = "autonomousSystem",
        } }, { __index = M.AutonomousSystem }),
        Connection = setmetatable({ traits = {
            json_name = "connection",
        } }, { __index = M.NetworkConnection }),
    },
}

M.Ec2Image = {
    type = "structure",
    id = "Ec2Image",
    members = {
        Ec2InstanceUids = {
            type = "list",
            member = { type = "string" },
            traits = {
                json_name = "ec2InstanceUids",
            },
        },
    },
}

M.IamInstanceProfile = {
    type = "structure",
    id = "IamInstanceProfile",
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
    id = "ProductCode",
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
    id = "Ec2Instance",
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
        IamInstanceProfile = M.IamInstanceProfile,
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
            member = M.ProductCode,
            traits = {
                json_name = "productCodes",
            },
        },
        Ec2NetworkInterfaceUids = {
            type = "list",
            member = { type = "string" },
            traits = {
                json_name = "ec2NetworkInterfaceUids",
            },
        },
    },
}

M.Ec2LaunchTemplate = {
    type = "structure",
    id = "Ec2LaunchTemplate",
    members = {
        Ec2InstanceUids = {
            type = "list",
            member = { type = "string" },
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
    id = "PrivateIpAddressDetails",
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
    id = "SecurityGroup",
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
    id = "Ec2NetworkInterface",
    members = {
        Ipv6Addresses = {
            type = "list",
            member = { type = "string" },
            traits = {
                json_name = "ipv6Addresses",
            },
        },
        PrivateIpAddresses = {
            type = "list",
            member = M.PrivateIpAddressDetails,
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
            member = M.SecurityGroup,
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
    id = "Ec2Vpc",
    members = {
        Ec2InstanceUids = {
            type = "list",
            member = { type = "string" },
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
    id = "EcsCluster",
    members = {
        Status = {
            type = "string",
            traits = {
                json_name = "status",
            },
        },
        Ec2InstanceUids = {
            type = "list",
            member = { type = "string" },
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
    id = "EcsTask",
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
            member = { type = "string" },
            traits = {
                json_name = "containerUids",
            },
        },
    },
}

M.EksCluster = {
    type = "structure",
    id = "EksCluster",
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
            member = { type = "string" },
            traits = {
                json_name = "ec2InstanceUids",
            },
        },
    },
}

M.IamInstanceProfileV2 = {
    type = "structure",
    id = "IamInstanceProfileV2",
    members = {
        Ec2InstanceUids = {
            type = "list",
            member = { type = "string" },
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
    id = "KubernetesWorkload",
    members = {
        ContainerUids = {
            type = "list",
            member = { type = "string" },
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
    id = "PublicAccessConfiguration",
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
    id = "S3Bucket",
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
        AccountPublicAccess = setmetatable({ traits = {
            json_name = "accountPublicAccess",
        } }, { __index = M.PublicAccessConfiguration }),
        BucketPublicAccess = setmetatable({ traits = {
            json_name = "bucketPublicAccess",
        } }, { __index = M.PublicAccessConfiguration }),
        S3ObjectUids = {
            type = "list",
            member = { type = "string" },
            traits = {
                json_name = "s3ObjectUids",
            },
        },
    },
}

M.S3Object = {
    type = "structure",
    id = "S3Object",
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
    id = "ResourceData",
    members = {
        S3Bucket = setmetatable({ traits = {
            json_name = "s3Bucket",
        } }, { __index = M.S3Bucket }),
        Ec2Instance = setmetatable({ traits = {
            json_name = "ec2Instance",
        } }, { __index = M.Ec2Instance }),
        AccessKey = setmetatable({ traits = {
            json_name = "accessKey",
        } }, { __index = M.AccessKey }),
        Ec2NetworkInterface = setmetatable({ traits = {
            json_name = "ec2NetworkInterface",
        } }, { __index = M.Ec2NetworkInterface }),
        S3Object = setmetatable({ traits = {
            json_name = "s3Object",
        } }, { __index = M.S3Object }),
        EksCluster = setmetatable({ traits = {
            json_name = "eksCluster",
        } }, { __index = M.EksCluster }),
        KubernetesWorkload = setmetatable({ traits = {
            json_name = "kubernetesWorkload",
        } }, { __index = M.KubernetesWorkload }),
        Container = setmetatable({ traits = {
            json_name = "container",
        } }, { __index = M.ContainerFindingResource }),
        EcsCluster = setmetatable({ traits = {
            json_name = "ecsCluster",
        } }, { __index = M.EcsCluster }),
        EcsTask = setmetatable({ traits = {
            json_name = "ecsTask",
        } }, { __index = M.EcsTask }),
        IamInstanceProfile = setmetatable({ traits = {
            json_name = "iamInstanceProfile",
        } }, { __index = M.IamInstanceProfileV2 }),
        AutoscalingAutoScalingGroup = setmetatable({ traits = {
            json_name = "autoscalingAutoScalingGroup",
        } }, { __index = M.AutoscalingAutoScalingGroup }),
        Ec2LaunchTemplate = setmetatable({ traits = {
            json_name = "ec2LaunchTemplate",
        } }, { __index = M.Ec2LaunchTemplate }),
        Ec2Vpc = setmetatable({ traits = {
            json_name = "ec2Vpc",
        } }, { __index = M.Ec2Vpc }),
        Ec2Image = setmetatable({ traits = {
            json_name = "ec2Image",
        } }, { __index = M.Ec2Image }),
        CloudformationStack = setmetatable({ traits = {
            json_name = "cloudformationStack",
        } }, { __index = M.CloudformationStack }),
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
    id = "Tag",
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
    id = "ResourceV2",
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
            member = M.Tag,
            traits = {
                json_name = "tags",
            },
        },
        Data = setmetatable({ traits = {
            json_name = "data",
        } }, { __index = M.ResourceData }),
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
    id = "Indicator",
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
            member = { type = "string" },
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
    id = "Signal",
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
            type = "double",
            traits = {
                json_name = "severity",
            },
        },
        Count = {
            type = "integer",
            traits = {
                json_name = "count",
                required = true,
            },
        },
        ResourceUids = {
            type = "list",
            member = { type = "string" },
            traits = {
                json_name = "resourceUids",
            },
        },
        ActorIds = {
            type = "list",
            member = { type = "string" },
            traits = {
                json_name = "actorIds",
            },
        },
        EndpointIds = {
            type = "list",
            member = { type = "string" },
            traits = {
                json_name = "endpointIds",
            },
        },
        SignalIndicators = {
            type = "list",
            member = M.Indicator,
            traits = {
                json_name = "signalIndicators",
            },
        },
    },
}

M.Sequence = {
    type = "structure",
    id = "Sequence",
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
            member = M.Actor,
            traits = {
                json_name = "actors",
            },
        },
        Resources = {
            type = "list",
            member = M.ResourceV2,
            traits = {
                json_name = "resources",
            },
        },
        Endpoints = {
            type = "list",
            member = M.NetworkEndpoint,
            traits = {
                json_name = "endpoints",
            },
        },
        Signals = {
            type = "list",
            member = M.Signal,
            traits = {
                json_name = "signals",
                required = true,
            },
        },
        SequenceIndicators = {
            type = "list",
            member = M.Indicator,
            traits = {
                json_name = "sequenceIndicators",
            },
        },
        AdditionalSequenceTypes = {
            type = "list",
            member = { type = "string" },
            traits = {
                json_name = "additionalSequenceTypes",
            },
        },
    },
}

M.Detection = {
    type = "structure",
    id = "Detection",
    members = {
        Anomaly = setmetatable({ traits = {
            json_name = "anomaly",
        } }, { __index = M.Anomaly }),
        Sequence = setmetatable({ traits = {
            json_name = "sequence",
        } }, { __index = M.Sequence }),
    },
}

M.DetectionSource = {
    AMAZON = "AMAZON",
    BITDEFENDER = "BITDEFENDER",
}

M.DetectorAdditionalConfigurationResult = {
    type = "structure",
    id = "DetectorAdditionalConfigurationResult",
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
    id = "DetectorFeatureConfigurationResult",
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
            member = M.DetectorAdditionalConfigurationResult,
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
    id = "DisableOrganizationAdminAccountInput",
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
    id = "DisableOrganizationAdminAccountOutput",
}

M.DisassociateFromAdministratorAccountInput = {
    type = "structure",
    id = "DisassociateFromAdministratorAccountInput",
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
    id = "DisassociateFromAdministratorAccountOutput",
}

M.DisassociateFromMasterAccountInput = {
    type = "structure",
    id = "DisassociateFromMasterAccountInput",
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
    id = "DisassociateFromMasterAccountOutput",
}

M.DisassociateMembersInput = {
    type = "structure",
    id = "DisassociateMembersInput",
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
            member = { type = "string" },
            traits = {
                json_name = "accountIds",
                required = true,
            },
        },
    },
}

M.DisassociateMembersOutput = {
    type = "structure",
    id = "DisassociateMembersOutput",
    members = {
        UnprocessedAccounts = {
            type = "list",
            member = M.UnprocessedAccount,
            traits = {
                json_name = "unprocessedAccounts",
                required = true,
            },
        },
    },
}

M.EbsSnapshot = {
    type = "structure",
    id = "EbsSnapshot",
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
    id = "EbsSnapshotDetails",
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
    id = "EbsVolumeDetails",
    members = {
        ScannedVolumeDetails = {
            type = "list",
            member = M.VolumeDetail,
            traits = {
                json_name = "scannedVolumeDetails",
            },
        },
        SkippedVolumeDetails = {
            type = "list",
            member = M.VolumeDetail,
            traits = {
                json_name = "skippedVolumeDetails",
            },
        },
    },
}

M.HighestSeverityThreatDetails = {
    type = "structure",
    id = "HighestSeverityThreatDetails",
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
            type = "integer",
            traits = {
                json_name = "count",
            },
        },
    },
}

M.ScannedItemCount = {
    type = "structure",
    id = "ScannedItemCount",
    members = {
        TotalGb = {
            type = "integer",
            traits = {
                json_name = "totalGb",
            },
        },
        Files = {
            type = "integer",
            traits = {
                json_name = "files",
            },
        },
        Volumes = {
            type = "integer",
            traits = {
                json_name = "volumes",
            },
        },
    },
}

M.ScanFilePath = {
    type = "structure",
    id = "ScanFilePath",
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
    id = "ScanThreatName",
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
            type = "integer",
            traits = {
                json_name = "itemCount",
            },
        },
        FilePaths = {
            type = "list",
            member = M.ScanFilePath,
            traits = {
                json_name = "filePaths",
            },
        },
    },
}

M.ThreatDetectedByName = {
    type = "structure",
    id = "ThreatDetectedByName",
    members = {
        ItemCount = {
            type = "integer",
            traits = {
                json_name = "itemCount",
            },
        },
        UniqueThreatNameCount = {
            type = "integer",
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
            member = M.ScanThreatName,
            traits = {
                json_name = "threatNames",
            },
        },
    },
}

M.ThreatsDetectedItemCount = {
    type = "structure",
    id = "ThreatsDetectedItemCount",
    members = {
        Files = {
            type = "integer",
            traits = {
                json_name = "files",
            },
        },
    },
}

M.ScanDetections = {
    type = "structure",
    id = "ScanDetections",
    members = {
        ScannedItemCount = setmetatable({ traits = {
            json_name = "scannedItemCount",
        } }, { __index = M.ScannedItemCount }),
        ThreatsDetectedItemCount = setmetatable({ traits = {
            json_name = "threatsDetectedItemCount",
        } }, { __index = M.ThreatsDetectedItemCount }),
        HighestSeverityThreatDetails = setmetatable({ traits = {
            json_name = "highestSeverityThreatDetails",
        } }, { __index = M.HighestSeverityThreatDetails }),
        ThreatDetectedByName = setmetatable({ traits = {
            json_name = "threatDetectedByName",
        } }, { __index = M.ThreatDetectedByName }),
    },
}

M.EbsVolumeScanDetails = {
    type = "structure",
    id = "EbsVolumeScanDetails",
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
            member = { type = "string" },
            traits = {
                json_name = "sources",
            },
        },
        ScanDetections = setmetatable({ traits = {
            json_name = "scanDetections",
        } }, { __index = M.ScanDetections }),
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
    id = "Ec2ImageDetails",
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
    id = "HostPath",
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
    id = "Volume",
    members = {
        Name = {
            type = "string",
            traits = {
                json_name = "name",
            },
        },
        HostPath = setmetatable({ traits = {
            json_name = "hostPath",
        } }, { __index = M.HostPath }),
    },
}

M.EcsTaskDetails = {
    type = "structure",
    id = "EcsTaskDetails",
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
            member = M.Tag,
            traits = {
                json_name = "tags",
            },
        },
        Volumes = {
            type = "list",
            member = M.Volume,
            traits = {
                json_name = "volumes",
            },
        },
        Containers = {
            type = "list",
            member = M.Container,
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
    id = "EcsClusterDetails",
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
            type = "integer",
            traits = {
                json_name = "activeServicesCount",
            },
        },
        RegisteredContainerInstancesCount = {
            type = "integer",
            traits = {
                json_name = "registeredContainerInstancesCount",
            },
        },
        RunningTasksCount = {
            type = "integer",
            traits = {
                json_name = "runningTasksCount",
            },
        },
        Tags = {
            type = "list",
            member = M.Tag,
            traits = {
                json_name = "tags",
            },
        },
        TaskDetails = setmetatable({ traits = {
            json_name = "taskDetails",
        } }, { __index = M.EcsTaskDetails }),
    },
}

M.EksClusterDetails = {
    type = "structure",
    id = "EksClusterDetails",
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
            member = M.Tag,
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
    id = "EnableOrganizationAdminAccountInput",
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
    id = "EnableOrganizationAdminAccountOutput",
}

M.ThreatIntelligenceDetail = {
    type = "structure",
    id = "ThreatIntelligenceDetail",
    members = {
        ThreatListName = {
            type = "string",
            traits = {
                json_name = "threatListName",
            },
        },
        ThreatNames = {
            type = "list",
            member = { type = "string" },
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
    id = "Evidence",
    members = {
        ThreatIntelligenceDetails = {
            type = "list",
            member = M.ThreatIntelligenceDetail,
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
    id = "NetworkInterface",
    members = {
        Ipv6Addresses = {
            type = "list",
            member = { type = "string" },
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
            member = M.PrivateIpAddressDetails,
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
            member = M.SecurityGroup,
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
    id = "InstanceDetails",
    members = {
        AvailabilityZone = {
            type = "string",
            traits = {
                json_name = "availabilityZone",
            },
        },
        IamInstanceProfile = setmetatable({ traits = {
            json_name = "iamInstanceProfile",
        } }, { __index = M.IamInstanceProfile }),
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
            member = M.NetworkInterface,
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
            member = M.ProductCode,
            traits = {
                json_name = "productCodes",
            },
        },
        Tags = {
            type = "list",
            member = M.Tag,
            traits = {
                json_name = "tags",
            },
        },
    },
}

M.ImpersonatedUser = {
    type = "structure",
    id = "ImpersonatedUser",
    members = {
        Username = {
            type = "string",
            traits = {
                json_name = "username",
            },
        },
        Groups = {
            type = "list",
            member = { type = "string" },
            traits = {
                json_name = "groups",
            },
        },
    },
}

M.KubernetesUserDetails = {
    type = "structure",
    id = "KubernetesUserDetails",
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
            member = { type = "string" },
            traits = {
                json_name = "groups",
            },
        },
        SessionName = {
            type = "list",
            member = { type = "string" },
            traits = {
                json_name = "sessionName",
            },
        },
        ImpersonatedUser = setmetatable({ traits = {
            json_name = "impersonatedUser",
        } }, { __index = M.ImpersonatedUser }),
    },
}

M.KubernetesWorkloadDetails = {
    type = "structure",
    id = "KubernetesWorkloadDetails",
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
            member = M.Container,
            traits = {
                json_name = "containers",
            },
        },
        Volumes = {
            type = "list",
            member = M.Volume,
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
    id = "KubernetesDetails",
    members = {
        KubernetesUserDetails = setmetatable({ traits = {
            json_name = "kubernetesUserDetails",
        } }, { __index = M.KubernetesUserDetails }),
        KubernetesWorkloadDetails = setmetatable({ traits = {
            json_name = "kubernetesWorkloadDetails",
        } }, { __index = M.KubernetesWorkloadDetails }),
    },
}

M.VpcConfig = {
    type = "structure",
    id = "VpcConfig",
    members = {
        SubnetIds = {
            type = "list",
            member = { type = "string" },
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
            member = M.SecurityGroup,
            traits = {
                json_name = "securityGroups",
            },
        },
    },
}

M.LambdaDetails = {
    type = "structure",
    id = "LambdaDetails",
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
        VpcConfig = setmetatable({ traits = {
            json_name = "vpcConfig",
        } }, { __index = M.VpcConfig }),
        Tags = {
            type = "list",
            member = M.Tag,
            traits = {
                json_name = "tags",
            },
        },
    },
}

M.RdsDbInstanceDetails = {
    type = "structure",
    id = "RdsDbInstanceDetails",
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
            member = M.Tag,
            traits = {
                json_name = "tags",
            },
        },
    },
}

M.RdsDbUserDetails = {
    type = "structure",
    id = "RdsDbUserDetails",
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
    id = "RdsLimitlessDbDetails",
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
            member = M.Tag,
            traits = {
                json_name = "tags",
            },
        },
    },
}

M.RecoveryPointDetails = {
    type = "structure",
    id = "RecoveryPointDetails",
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
    id = "Owner",
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
    id = "PermissionConfiguration",
    members = {
        BucketLevelPermissions = setmetatable({ traits = {
            json_name = "bucketLevelPermissions",
        } }, { __index = M.BucketLevelPermissions }),
        AccountLevelPermissions = setmetatable({ traits = {
            json_name = "accountLevelPermissions",
        } }, { __index = M.AccountLevelPermissions }),
    },
}

M.PublicAccess = {
    type = "structure",
    id = "PublicAccess",
    members = {
        PermissionConfiguration = setmetatable({ traits = {
            json_name = "permissionConfiguration",
        } }, { __index = M.PermissionConfiguration }),
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
    id = "S3ObjectDetail",
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
    id = "S3BucketDetail",
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
        Owner = setmetatable({ traits = {
            json_name = "owner",
        } }, { __index = M.Owner }),
        Tags = {
            type = "list",
            member = M.Tag,
            traits = {
                json_name = "tags",
            },
        },
        DefaultServerSideEncryption = setmetatable({ traits = {
            json_name = "defaultServerSideEncryption",
        } }, { __index = M.DefaultServerSideEncryption }),
        PublicAccess = setmetatable({ traits = {
            json_name = "publicAccess",
        } }, { __index = M.PublicAccess }),
        S3ObjectDetails = {
            type = "list",
            member = M.S3ObjectDetail,
            traits = {
                json_name = "s3ObjectDetails",
            },
        },
    },
}

M.Resource = {
    type = "structure",
    id = "Resource",
    members = {
        AccessKeyDetails = setmetatable({ traits = {
            json_name = "accessKeyDetails",
        } }, { __index = M.AccessKeyDetails }),
        S3BucketDetails = {
            type = "list",
            member = M.S3BucketDetail,
            traits = {
                json_name = "s3BucketDetails",
            },
        },
        InstanceDetails = setmetatable({ traits = {
            json_name = "instanceDetails",
        } }, { __index = M.InstanceDetails }),
        EksClusterDetails = setmetatable({ traits = {
            json_name = "eksClusterDetails",
        } }, { __index = M.EksClusterDetails }),
        KubernetesDetails = setmetatable({ traits = {
            json_name = "kubernetesDetails",
        } }, { __index = M.KubernetesDetails }),
        ResourceType = {
            type = "string",
            traits = {
                json_name = "resourceType",
            },
        },
        EbsVolumeDetails = setmetatable({ traits = {
            json_name = "ebsVolumeDetails",
        } }, { __index = M.EbsVolumeDetails }),
        EcsClusterDetails = setmetatable({ traits = {
            json_name = "ecsClusterDetails",
        } }, { __index = M.EcsClusterDetails }),
        ContainerDetails = setmetatable({ traits = {
            json_name = "containerDetails",
        } }, { __index = M.Container }),
        LambdaDetails = setmetatable({ traits = {
            json_name = "lambdaDetails",
        } }, { __index = M.LambdaDetails }),
        RdsDbInstanceDetails = setmetatable({ traits = {
            json_name = "rdsDbInstanceDetails",
        } }, { __index = M.RdsDbInstanceDetails }),
        RdsLimitlessDbDetails = setmetatable({ traits = {
            json_name = "rdsLimitlessDbDetails",
        } }, { __index = M.RdsLimitlessDbDetails }),
        RdsDbUserDetails = setmetatable({ traits = {
            json_name = "rdsDbUserDetails",
        } }, { __index = M.RdsDbUserDetails }),
        EbsSnapshotDetails = setmetatable({ traits = {
            json_name = "ebsSnapshotDetails",
        } }, { __index = M.EbsSnapshotDetails }),
        Ec2ImageDetails = setmetatable({ traits = {
            json_name = "ec2ImageDetails",
        } }, { __index = M.Ec2ImageDetails }),
        RecoveryPointDetails = setmetatable({ traits = {
            json_name = "recoveryPointDetails",
        } }, { __index = M.RecoveryPointDetails }),
    },
}

M.ServiceAdditionalInfo = {
    type = "structure",
    id = "ServiceAdditionalInfo",
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
    id = "IncrementalScanDetails",
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
    id = "MalwareProtectionFindingsScanConfiguration",
    members = {
        TriggerType = {
            type = "string",
            traits = {
                json_name = "triggerType",
            },
        },
        IncrementalScanDetails = setmetatable({ traits = {
            json_name = "incrementalScanDetails",
        } }, { __index = M.IncrementalScanDetails }),
    },
}

M.MalwareProtectionScanType = {
    BACKUP_INITIATED = "BACKUP_INITIATED",
    ON_DEMAND = "ON_DEMAND",
    GUARDDUTY_INITIATED = "GUARDDUTY_INITIATED",
}

M.ItemDetails = {
    type = "structure",
    id = "ItemDetails",
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
        AdditionalInfo = setmetatable({ traits = {
            json_name = "additionalInfo",
        } }, { __index = M.AdditionalInfo }),
    },
}

M.ItemPath = {
    type = "structure",
    id = "ItemPath",
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
    id = "Threat",
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
            member = M.ItemPath,
            traits = {
                json_name = "itemPaths",
            },
        },
        Count = {
            type = "long",
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
            member = M.ItemDetails,
            traits = {
                json_name = "itemDetails",
            },
        },
    },
}

M.MalwareScanDetails = {
    type = "structure",
    id = "MalwareScanDetails",
    members = {
        Threats = {
            type = "list",
            member = M.Threat,
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
        ScanConfiguration = setmetatable({ traits = {
            json_name = "scanConfiguration",
        } }, { __index = M.MalwareProtectionFindingsScanConfiguration }),
        UniqueThreatCount = {
            type = "integer",
            traits = {
                json_name = "uniqueThreatCount",
            },
        },
    },
}

M.LineageObject = {
    type = "structure",
    id = "LineageObject",
    members = {
        StartTime = {
            type = "timestamp",
            traits = {
                json_name = "startTime",
            },
        },
        NamespacePid = {
            type = "integer",
            traits = {
                json_name = "namespacePid",
            },
        },
        UserId = {
            type = "integer",
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
            type = "integer",
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
            type = "integer",
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
    id = "ProcessDetails",
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
            type = "integer",
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
            type = "integer",
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
            type = "integer",
            traits = {
                json_name = "userId",
            },
        },
        Euid = {
            type = "integer",
            traits = {
                json_name = "euid",
            },
        },
        Lineage = {
            type = "list",
            member = M.LineageObject,
            traits = {
                json_name = "lineage",
            },
        },
    },
}

M.RuntimeContext = {
    type = "structure",
    id = "RuntimeContext",
    members = {
        ModifyingProcess = setmetatable({ traits = {
            json_name = "modifyingProcess",
        } }, { __index = M.ProcessDetails }),
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
            member = { type = "string" },
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
        TargetProcess = setmetatable({ traits = {
            json_name = "targetProcess",
        } }, { __index = M.ProcessDetails }),
        AddressFamily = {
            type = "string",
            traits = {
                json_name = "addressFamily",
            },
        },
        IanaProtocolNumber = {
            type = "integer",
            traits = {
                json_name = "ianaProtocolNumber",
            },
        },
        MemoryRegions = {
            type = "list",
            member = { type = "string" },
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
    id = "RuntimeDetails",
    members = {
        Process = setmetatable({ traits = {
            json_name = "process",
        } }, { __index = M.ProcessDetails }),
        Context = setmetatable({ traits = {
            json_name = "context",
        } }, { __index = M.RuntimeContext }),
    },
}

M.Service = {
    type = "structure",
    id = "Service",
    members = {
        Action = setmetatable({ traits = {
            json_name = "action",
        } }, { __index = M.Action }),
        Evidence = setmetatable({ traits = {
            json_name = "evidence",
        } }, { __index = M.Evidence }),
        Archived = {
            type = "boolean",
            traits = {
                json_name = "archived",
            },
        },
        Count = {
            type = "integer",
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
        AdditionalInfo = setmetatable({ traits = {
            json_name = "additionalInfo",
        } }, { __index = M.ServiceAdditionalInfo }),
        FeatureName = {
            type = "string",
            traits = {
                json_name = "featureName",
            },
        },
        EbsVolumeScanDetails = setmetatable({ traits = {
            json_name = "ebsVolumeScanDetails",
        } }, { __index = M.EbsVolumeScanDetails }),
        RuntimeDetails = setmetatable({ traits = {
            json_name = "runtimeDetails",
        } }, { __index = M.RuntimeDetails }),
        Detection = setmetatable({ traits = {
            json_name = "detection",
        } }, { __index = M.Detection }),
        MalwareScanDetails = setmetatable({ traits = {
            json_name = "malwareScanDetails",
        } }, { __index = M.MalwareScanDetails }),
    },
}

M.Finding = {
    type = "structure",
    id = "Finding",
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
            type = "double",
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
        Resource = setmetatable({ traits = {
            json_name = "resource",
            required = true,
        } }, { __index = M.Resource }),
        SchemaVersion = {
            type = "string",
            traits = {
                json_name = "schemaVersion",
                required = true,
            },
        },
        Service = setmetatable({ traits = {
            json_name = "service",
        } }, { __index = M.Service }),
        Severity = {
            type = "double",
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
    id = "FindingTypeStatistics",
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
            type = "integer",
            traits = {
                json_name = "totalFindings",
            },
        },
    },
}

M.ResourceStatistics = {
    type = "structure",
    id = "ResourceStatistics",
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
            type = "integer",
            traits = {
                json_name = "totalFindings",
            },
        },
    },
}

M.SeverityStatistics = {
    type = "structure",
    id = "SeverityStatistics",
    members = {
        LastGeneratedAt = {
            type = "timestamp",
            traits = {
                json_name = "lastGeneratedAt",
            },
        },
        Severity = {
            type = "double",
            traits = {
                json_name = "severity",
            },
        },
        TotalFindings = {
            type = "integer",
            traits = {
                json_name = "totalFindings",
            },
        },
    },
}

M.FindingStatistics = {
    type = "structure",
    id = "FindingStatistics",
    members = {
        CountBySeverity = {
            type = "map",
            key = { type = "string" },
            value = { type = "integer" },
            traits = {
                json_name = "countBySeverity",
            },
        },
        GroupedByAccount = {
            type = "list",
            member = M.AccountStatistics,
            traits = {
                json_name = "groupedByAccount",
            },
        },
        GroupedByDate = {
            type = "list",
            member = M.DateStatistics,
            traits = {
                json_name = "groupedByDate",
            },
        },
        GroupedByFindingType = {
            type = "list",
            member = M.FindingTypeStatistics,
            traits = {
                json_name = "groupedByFindingType",
            },
        },
        GroupedByResource = {
            type = "list",
            member = M.ResourceStatistics,
            traits = {
                json_name = "groupedByResource",
            },
        },
        GroupedBySeverity = {
            type = "list",
            member = M.SeverityStatistics,
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
    id = "GetAdministratorAccountInput",
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
    id = "GetAdministratorAccountOutput",
    members = {
        Administrator = setmetatable({ traits = {
            json_name = "administrator",
            required = true,
        } }, { __index = M.Administrator }),
    },
}

M.GetCoverageStatisticsInput = {
    type = "structure",
    id = "GetCoverageStatisticsInput",
    members = {
        DetectorId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        FilterCriteria = setmetatable({ traits = {
            json_name = "filterCriteria",
        } }, { __index = M.CoverageFilterCriteria }),
        StatisticsType = {
            type = "list",
            member = { type = "string" },
            traits = {
                json_name = "statisticsType",
                required = true,
            },
        },
    },
}

M.GetCoverageStatisticsOutput = {
    type = "structure",
    id = "GetCoverageStatisticsOutput",
    members = {
        CoverageStatistics = setmetatable({ traits = {
            json_name = "coverageStatistics",
        } }, { __index = M.CoverageStatistics }),
    },
}

M.GetDetectorInput = {
    type = "structure",
    id = "GetDetectorInput",
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
    id = "GetDetectorOutput",
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
        DataSources = setmetatable({ traits = {
            json_name = "dataSources",
        } }, { __index = M.DataSourceConfigurationsResult }),
        Tags = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
            traits = {
                json_name = "tags",
            },
        },
        Features = {
            type = "list",
            member = M.DetectorFeatureConfigurationResult,
            traits = {
                json_name = "features",
            },
        },
    },
}

M.GetFilterInput = {
    type = "structure",
    id = "GetFilterInput",
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
    id = "GetFilterOutput",
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
            type = "integer",
            traits = {
                json_name = "rank",
            },
        },
        FindingCriteria = setmetatable({ traits = {
            json_name = "findingCriteria",
            required = true,
        } }, { __index = M.FindingCriteria }),
        Tags = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
            traits = {
                json_name = "tags",
            },
        },
    },
}

M.GetFindingsInput = {
    type = "structure",
    id = "GetFindingsInput",
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
            member = { type = "string" },
            traits = {
                json_name = "findingIds",
                required = true,
            },
        },
        SortCriteria = setmetatable({ traits = {
            json_name = "sortCriteria",
        } }, { __index = M.SortCriteria }),
    },
}

M.GetFindingsOutput = {
    type = "structure",
    id = "GetFindingsOutput",
    members = {
        Findings = {
            type = "list",
            member = M.Finding,
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
    id = "GetFindingsStatisticsInput",
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
            member = { type = "string" },
            traits = {
                json_name = "findingStatisticTypes",
            },
        },
        FindingCriteria = setmetatable({ traits = {
            json_name = "findingCriteria",
        } }, { __index = M.FindingCriteria }),
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
            type = "integer",
            traits = {
                json_name = "maxResults",
            },
        },
    },
}

M.GetFindingsStatisticsOutput = {
    type = "structure",
    id = "GetFindingsStatisticsOutput",
    members = {
        FindingStatistics = setmetatable({ traits = {
            json_name = "findingStatistics",
            required = true,
        } }, { __index = M.FindingStatistics }),
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
    id = "GetInvitationsCountInput",
}

M.GetInvitationsCountOutput = {
    type = "structure",
    id = "GetInvitationsCountOutput",
    members = {
        InvitationsCount = {
            type = "integer",
            traits = {
                json_name = "invitationsCount",
            },
        },
    },
}

M.GetIPSetInput = {
    type = "structure",
    id = "GetIPSetInput",
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
    id = "GetIPSetOutput",
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
            key = { type = "string" },
            value = { type = "string" },
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
    id = "GetMalwareProtectionPlanInput",
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
    id = "MalwareProtectionPlanStatusReason",
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
    id = "GetMalwareProtectionPlanOutput",
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
        ProtectedResource = setmetatable({ traits = {
            json_name = "protectedResource",
        } }, { __index = M.CreateProtectedResource }),
        Actions = setmetatable({ traits = {
            json_name = "actions",
        } }, { __index = M.MalwareProtectionPlanActions }),
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
            member = M.MalwareProtectionPlanStatusReason,
            traits = {
                json_name = "statusReasons",
            },
        },
        Tags = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
            traits = {
                json_name = "tags",
            },
        },
    },
}

M.GetMalwareScanInput = {
    type = "structure",
    id = "GetMalwareScanInput",
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
    id = "ScanConfigurationRecoveryPoint",
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
    id = "ScanConfiguration",
    members = {
        Role = {
            type = "string",
            traits = {
                json_name = "role",
            },
        },
        TriggerDetails = setmetatable({ traits = {
            json_name = "triggerDetails",
        } }, { __index = M.TriggerDetails }),
        IncrementalScanDetails = setmetatable({ traits = {
            json_name = "incrementalScanDetails",
        } }, { __index = M.IncrementalScanDetails }),
        RecoveryPoint = setmetatable({ traits = {
            json_name = "recoveryPoint",
        } }, { __index = M.ScanConfigurationRecoveryPoint }),
    },
}

M.ScannedResourceDetails = {
    type = "structure",
    id = "ScannedResourceDetails",
    members = {
        EbsVolume = setmetatable({ traits = {
            json_name = "ebsVolume",
        } }, { __index = M.VolumeDetail }),
        EbsSnapshot = setmetatable({ traits = {
            json_name = "ebsSnapshot",
        } }, { __index = M.EbsSnapshot }),
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
    id = "ScannedResource",
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
        ResourceDetails = setmetatable({ traits = {
            json_name = "resourceDetails",
        } }, { __index = M.ScannedResourceDetails }),
    },
}

M.ScanResultStatus = {
    NO_THREATS_FOUND = "NO_THREATS_FOUND",
    THREATS_FOUND = "THREATS_FOUND",
}

M.ScanResultThreat = {
    type = "structure",
    id = "ScanResultThreat",
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
            type = "long",
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
            member = M.ItemDetails,
            traits = {
                json_name = "itemDetails",
            },
        },
    },
}

M.GetMalwareScanResultDetails = {
    type = "structure",
    id = "GetMalwareScanResultDetails",
    members = {
        ScanResultStatus = {
            type = "string",
            traits = {
                json_name = "scanResultStatus",
            },
        },
        SkippedFileCount = {
            type = "long",
            traits = {
                json_name = "skippedFileCount",
            },
        },
        FailedFileCount = {
            type = "long",
            traits = {
                json_name = "failedFileCount",
            },
        },
        ThreatFoundFileCount = {
            type = "long",
            traits = {
                json_name = "threatFoundFileCount",
            },
        },
        TotalFileCount = {
            type = "long",
            traits = {
                json_name = "totalFileCount",
            },
        },
        TotalBytes = {
            type = "long",
            traits = {
                json_name = "totalBytes",
            },
        },
        UniqueThreatCount = {
            type = "long",
            traits = {
                json_name = "uniqueThreatCount",
            },
        },
        Threats = {
            type = "list",
            member = M.ScanResultThreat,
            traits = {
                json_name = "threats",
            },
        },
    },
}

M.GetMalwareScanOutput = {
    type = "structure",
    id = "GetMalwareScanOutput",
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
            type = "integer",
            traits = {
                json_name = "scannedResourcesCount",
            },
        },
        SkippedResourcesCount = {
            type = "integer",
            traits = {
                json_name = "skippedResourcesCount",
            },
        },
        FailedResourcesCount = {
            type = "integer",
            traits = {
                json_name = "failedResourcesCount",
            },
        },
        ScannedResources = {
            type = "list",
            member = M.ScannedResource,
            traits = {
                json_name = "scannedResources",
            },
        },
        ScanConfiguration = setmetatable({ traits = {
            json_name = "scanConfiguration",
        } }, { __index = M.ScanConfiguration }),
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
        ScanResultDetails = setmetatable({ traits = {
            json_name = "scanResultDetails",
        } }, { __index = M.GetMalwareScanResultDetails }),
    },
}

M.GetMalwareScanSettingsInput = {
    type = "structure",
    id = "GetMalwareScanSettingsInput",
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
    id = "ScanConditionPair",
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
    id = "ScanCondition",
    members = {
        MapEquals = {
            type = "list",
            member = M.ScanConditionPair,
            traits = {
                json_name = "mapEquals",
                required = true,
            },
        },
    },
}

M.ScanResourceCriteria = {
    type = "structure",
    id = "ScanResourceCriteria",
    members = {
        Include = {
            type = "map",
            key = { type = "string" },
            value = M.ScanCondition,
            traits = {
                json_name = "include",
            },
        },
        Exclude = {
            type = "map",
            key = { type = "string" },
            value = M.ScanCondition,
            traits = {
                json_name = "exclude",
            },
        },
    },
}

M.GetMalwareScanSettingsOutput = {
    type = "structure",
    id = "GetMalwareScanSettingsOutput",
    members = {
        ScanResourceCriteria = setmetatable({ traits = {
            json_name = "scanResourceCriteria",
        } }, { __index = M.ScanResourceCriteria }),
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
    id = "GetMasterAccountInput",
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
    id = "Master",
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
    id = "GetMasterAccountOutput",
    members = {
        Master = setmetatable({ traits = {
            json_name = "master",
            required = true,
        } }, { __index = M.Master }),
    },
}

M.GetMemberDetectorsInput = {
    type = "structure",
    id = "GetMemberDetectorsInput",
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
            member = { type = "string" },
            traits = {
                json_name = "accountIds",
                required = true,
            },
        },
    },
}

M.MemberAdditionalConfigurationResult = {
    type = "structure",
    id = "MemberAdditionalConfigurationResult",
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
    id = "MemberFeaturesConfigurationResult",
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
            member = M.MemberAdditionalConfigurationResult,
            traits = {
                json_name = "additionalConfiguration",
            },
        },
    },
}

M.MemberDataSourceConfiguration = {
    type = "structure",
    id = "MemberDataSourceConfiguration",
    members = {
        AccountId = {
            type = "string",
            traits = {
                json_name = "accountId",
                required = true,
            },
        },
        DataSources = setmetatable({ traits = {
            json_name = "dataSources",
            required = true,
        } }, { __index = M.DataSourceConfigurationsResult }),
        Features = {
            type = "list",
            member = M.MemberFeaturesConfigurationResult,
            traits = {
                json_name = "features",
            },
        },
    },
}

M.GetMemberDetectorsOutput = {
    type = "structure",
    id = "GetMemberDetectorsOutput",
    members = {
        MemberDataSourceConfigurations = {
            type = "list",
            member = M.MemberDataSourceConfiguration,
            traits = {
                json_name = "members",
                required = true,
            },
        },
        UnprocessedAccounts = {
            type = "list",
            member = M.UnprocessedAccount,
            traits = {
                json_name = "unprocessedAccounts",
                required = true,
            },
        },
    },
}

M.GetMembersInput = {
    type = "structure",
    id = "GetMembersInput",
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
            member = { type = "string" },
            traits = {
                json_name = "accountIds",
                required = true,
            },
        },
    },
}

M.Member = {
    type = "structure",
    id = "Member",
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
    id = "GetMembersOutput",
    members = {
        Members = {
            type = "list",
            member = M.Member,
            traits = {
                json_name = "members",
                required = true,
            },
        },
        UnprocessedAccounts = {
            type = "list",
            member = M.UnprocessedAccount,
            traits = {
                json_name = "unprocessedAccounts",
                required = true,
            },
        },
    },
}

M.GetOrganizationStatisticsInput = {
    type = "structure",
    id = "GetOrganizationStatisticsInput",
}

M.OrganizationFeatureStatisticsAdditionalConfiguration = {
    type = "structure",
    id = "OrganizationFeatureStatisticsAdditionalConfiguration",
    members = {
        Name = {
            type = "string",
            traits = {
                json_name = "name",
            },
        },
        EnabledAccountsCount = {
            type = "integer",
            traits = {
                json_name = "enabledAccountsCount",
            },
        },
    },
}

M.OrganizationFeatureStatistics = {
    type = "structure",
    id = "OrganizationFeatureStatistics",
    members = {
        Name = {
            type = "string",
            traits = {
                json_name = "name",
            },
        },
        EnabledAccountsCount = {
            type = "integer",
            traits = {
                json_name = "enabledAccountsCount",
            },
        },
        AdditionalConfiguration = {
            type = "list",
            member = M.OrganizationFeatureStatisticsAdditionalConfiguration,
            traits = {
                json_name = "additionalConfiguration",
            },
        },
    },
}

M.OrganizationStatistics = {
    type = "structure",
    id = "OrganizationStatistics",
    members = {
        TotalAccountsCount = {
            type = "integer",
            traits = {
                json_name = "totalAccountsCount",
            },
        },
        MemberAccountsCount = {
            type = "integer",
            traits = {
                json_name = "memberAccountsCount",
            },
        },
        ActiveAccountsCount = {
            type = "integer",
            traits = {
                json_name = "activeAccountsCount",
            },
        },
        EnabledAccountsCount = {
            type = "integer",
            traits = {
                json_name = "enabledAccountsCount",
            },
        },
        CountByFeature = {
            type = "list",
            member = M.OrganizationFeatureStatistics,
            traits = {
                json_name = "countByFeature",
            },
        },
    },
}

M.OrganizationDetails = {
    type = "structure",
    id = "OrganizationDetails",
    members = {
        UpdatedAt = {
            type = "timestamp",
            traits = {
                json_name = "updatedAt",
            },
        },
        OrganizationStatistics = setmetatable({ traits = {
            json_name = "organizationStatistics",
        } }, { __index = M.OrganizationStatistics }),
    },
}

M.GetOrganizationStatisticsOutput = {
    type = "structure",
    id = "GetOrganizationStatisticsOutput",
    members = {
        OrganizationDetails = setmetatable({ traits = {
            json_name = "organizationDetails",
        } }, { __index = M.OrganizationDetails }),
    },
}

M.GetRemainingFreeTrialDaysInput = {
    type = "structure",
    id = "GetRemainingFreeTrialDaysInput",
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
            member = { type = "string" },
            traits = {
                json_name = "accountIds",
                required = true,
            },
        },
    },
}

M.GetRemainingFreeTrialDaysOutput = {
    type = "structure",
    id = "GetRemainingFreeTrialDaysOutput",
    members = {
        Accounts = {
            type = "list",
            member = M.AccountFreeTrialInfo,
            traits = {
                json_name = "accounts",
            },
        },
        UnprocessedAccounts = {
            type = "list",
            member = M.UnprocessedAccount,
            traits = {
                json_name = "unprocessedAccounts",
            },
        },
    },
}

M.GetThreatEntitySetInput = {
    type = "structure",
    id = "GetThreatEntitySetInput",
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
    id = "GetThreatEntitySetOutput",
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
            key = { type = "string" },
            value = { type = "string" },
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
    id = "GetThreatIntelSetInput",
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
    id = "GetThreatIntelSetOutput",
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
            key = { type = "string" },
            value = { type = "string" },
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
    id = "GetTrustedEntitySetInput",
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
    id = "GetTrustedEntitySetOutput",
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
            key = { type = "string" },
            value = { type = "string" },
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
    id = "UsageCriteria",
    members = {
        AccountIds = {
            type = "list",
            member = { type = "string" },
            traits = {
                json_name = "accountIds",
            },
        },
        DataSources = {
            type = "list",
            member = { type = "string" },
            traits = {
                json_name = "dataSources",
            },
        },
        Resources = {
            type = "list",
            member = { type = "string" },
            traits = {
                json_name = "resources",
            },
        },
        Features = {
            type = "list",
            member = { type = "string" },
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
    id = "GetUsageStatisticsInput",
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
        UsageCriteria = setmetatable({ traits = {
            json_name = "usageCriteria",
            required = true,
        } }, { __index = M.UsageCriteria }),
        Unit = {
            type = "string",
            traits = {
                json_name = "unit",
            },
        },
        MaxResults = {
            type = "integer",
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
    id = "Total",
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
    id = "UsageAccountResult",
    members = {
        AccountId = {
            type = "string",
            traits = {
                json_name = "accountId",
            },
        },
        Total = setmetatable({ traits = {
            json_name = "total",
        } }, { __index = M.Total }),
    },
}

M.UsageDataSourceResult = {
    type = "structure",
    id = "UsageDataSourceResult",
    members = {
        DataSource = {
            type = "string",
            traits = {
                json_name = "dataSource",
            },
        },
        Total = setmetatable({ traits = {
            json_name = "total",
        } }, { __index = M.Total }),
    },
}

M.UsageFeatureResult = {
    type = "structure",
    id = "UsageFeatureResult",
    members = {
        Feature = {
            type = "string",
            traits = {
                json_name = "feature",
            },
        },
        Total = setmetatable({ traits = {
            json_name = "total",
        } }, { __index = M.Total }),
    },
}

M.UsageResourceResult = {
    type = "structure",
    id = "UsageResourceResult",
    members = {
        Resource = {
            type = "string",
            traits = {
                json_name = "resource",
            },
        },
        Total = setmetatable({ traits = {
            json_name = "total",
        } }, { __index = M.Total }),
    },
}

M.UsageTopAccountResult = {
    type = "structure",
    id = "UsageTopAccountResult",
    members = {
        AccountId = {
            type = "string",
            traits = {
                json_name = "accountId",
            },
        },
        Total = setmetatable({ traits = {
            json_name = "total",
        } }, { __index = M.Total }),
    },
}

M.UsageTopAccountsResult = {
    type = "structure",
    id = "UsageTopAccountsResult",
    members = {
        Feature = {
            type = "string",
            traits = {
                json_name = "feature",
            },
        },
        Accounts = {
            type = "list",
            member = M.UsageTopAccountResult,
            traits = {
                json_name = "accounts",
            },
        },
    },
}

M.UsageStatistics = {
    type = "structure",
    id = "UsageStatistics",
    members = {
        SumByAccount = {
            type = "list",
            member = M.UsageAccountResult,
            traits = {
                json_name = "sumByAccount",
            },
        },
        TopAccountsByFeature = {
            type = "list",
            member = M.UsageTopAccountsResult,
            traits = {
                json_name = "topAccountsByFeature",
            },
        },
        SumByDataSource = {
            type = "list",
            member = M.UsageDataSourceResult,
            traits = {
                json_name = "sumByDataSource",
            },
        },
        SumByResource = {
            type = "list",
            member = M.UsageResourceResult,
            traits = {
                json_name = "sumByResource",
            },
        },
        TopResources = {
            type = "list",
            member = M.UsageResourceResult,
            traits = {
                json_name = "topResources",
            },
        },
        SumByFeature = {
            type = "list",
            member = M.UsageFeatureResult,
            traits = {
                json_name = "sumByFeature",
            },
        },
    },
}

M.GetUsageStatisticsOutput = {
    type = "structure",
    id = "GetUsageStatisticsOutput",
    members = {
        UsageStatistics = setmetatable({ traits = {
            json_name = "usageStatistics",
        } }, { __index = M.UsageStatistics }),
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
    id = "InviteMembersInput",
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
            member = { type = "string" },
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
    id = "InviteMembersOutput",
    members = {
        UnprocessedAccounts = {
            type = "list",
            member = M.UnprocessedAccount,
            traits = {
                json_name = "unprocessedAccounts",
                required = true,
            },
        },
    },
}

M.ListCoverageInput = {
    type = "structure",
    id = "ListCoverageInput",
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
            type = "integer",
            traits = {
                json_name = "maxResults",
            },
        },
        FilterCriteria = setmetatable({ traits = {
            json_name = "filterCriteria",
        } }, { __index = M.CoverageFilterCriteria }),
        SortCriteria = setmetatable({ traits = {
            json_name = "sortCriteria",
        } }, { __index = M.CoverageSortCriteria }),
    },
}

M.ListCoverageOutput = {
    type = "structure",
    id = "ListCoverageOutput",
    members = {
        Resources = {
            type = "list",
            member = M.CoverageResource,
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
    id = "ListDetectorsInput",
    members = {
        MaxResults = {
            type = "integer",
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
    id = "ListDetectorsOutput",
    members = {
        DetectorIds = {
            type = "list",
            member = { type = "string" },
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
    id = "ListFiltersInput",
    members = {
        DetectorId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        MaxResults = {
            type = "integer",
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
    id = "ListFiltersOutput",
    members = {
        FilterNames = {
            type = "list",
            member = { type = "string" },
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
    id = "ListFindingsInput",
    members = {
        DetectorId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        FindingCriteria = setmetatable({ traits = {
            json_name = "findingCriteria",
        } }, { __index = M.FindingCriteria }),
        SortCriteria = setmetatable({ traits = {
            json_name = "sortCriteria",
        } }, { __index = M.SortCriteria }),
        MaxResults = {
            type = "integer",
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
    id = "ListFindingsOutput",
    members = {
        FindingIds = {
            type = "list",
            member = { type = "string" },
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
    id = "ListInvitationsInput",
    members = {
        MaxResults = {
            type = "integer",
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
    id = "Invitation",
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
    id = "ListInvitationsOutput",
    members = {
        Invitations = {
            type = "list",
            member = M.Invitation,
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
    id = "ListIPSetsInput",
    members = {
        DetectorId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        MaxResults = {
            type = "integer",
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
    id = "ListIPSetsOutput",
    members = {
        IpSetIds = {
            type = "list",
            member = { type = "string" },
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
    id = "ListMalwareProtectionPlansInput",
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
    id = "MalwareProtectionPlanSummary",
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
    id = "ListMalwareProtectionPlansOutput",
    members = {
        MalwareProtectionPlans = {
            type = "list",
            member = M.MalwareProtectionPlanSummary,
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
    id = "ListMalwareScansFilterCriterion",
    members = {
        ListMalwareScansCriterionKey = {
            type = "string",
            traits = {
                json_name = "criterionKey",
            },
        },
        FilterCondition = setmetatable({ traits = {
            json_name = "filterCondition",
        } }, { __index = M.FilterCondition }),
    },
}

M.ListMalwareScansFilterCriteria = {
    type = "structure",
    id = "ListMalwareScansFilterCriteria",
    members = {
        ListMalwareScansFilterCriterion = {
            type = "list",
            member = M.ListMalwareScansFilterCriterion,
            traits = {
                json_name = "filterCriterion",
            },
        },
    },
}

M.ListMalwareScansInput = {
    type = "structure",
    id = "ListMalwareScansInput",
    members = {
        MaxResults = {
            type = "integer",
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
        FilterCriteria = setmetatable({ traits = {
            json_name = "filterCriteria",
        } }, { __index = M.ListMalwareScansFilterCriteria }),
        SortCriteria = setmetatable({ traits = {
            json_name = "sortCriteria",
        } }, { __index = M.SortCriteria }),
    },
}

M.MalwareScan = {
    type = "structure",
    id = "MalwareScan",
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
    id = "ListMalwareScansOutput",
    members = {
        Scans = {
            type = "list",
            member = M.MalwareScan,
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
    id = "ListMembersInput",
    members = {
        DetectorId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        MaxResults = {
            type = "integer",
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
    id = "ListMembersOutput",
    members = {
        Members = {
            type = "list",
            member = M.Member,
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
    id = "ListOrganizationAdminAccountsInput",
    members = {
        MaxResults = {
            type = "integer",
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
    id = "ListOrganizationAdminAccountsOutput",
    members = {
        AdminAccounts = {
            type = "list",
            member = M.AdminAccount,
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
    id = "ListPublishingDestinationsInput",
    members = {
        DetectorId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        MaxResults = {
            type = "integer",
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
    id = "ListPublishingDestinationsOutput",
    members = {
        Destinations = {
            type = "list",
            member = M.Destination,
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
    id = "ListTagsForResourceInput",
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
    id = "ListTagsForResourceOutput",
    members = {
        Tags = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
            traits = {
                json_name = "tags",
            },
        },
    },
}

M.ListThreatEntitySetsInput = {
    type = "structure",
    id = "ListThreatEntitySetsInput",
    members = {
        DetectorId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        MaxResults = {
            type = "integer",
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
    id = "ListThreatEntitySetsOutput",
    members = {
        ThreatEntitySetIds = {
            type = "list",
            member = { type = "string" },
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
    id = "ListThreatIntelSetsInput",
    members = {
        DetectorId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        MaxResults = {
            type = "integer",
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
    id = "ListThreatIntelSetsOutput",
    members = {
        ThreatIntelSetIds = {
            type = "list",
            member = { type = "string" },
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
    id = "ListTrustedEntitySetsInput",
    members = {
        DetectorId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        MaxResults = {
            type = "integer",
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
    id = "ListTrustedEntitySetsOutput",
    members = {
        TrustedEntitySetIds = {
            type = "list",
            member = { type = "string" },
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
    id = "S3ObjectForSendObjectMalwareScan",
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
    id = "SendObjectMalwareScanInput",
    members = {
        S3Object = setmetatable({ traits = {
            json_name = "s3Object",
        } }, { __index = M.S3ObjectForSendObjectMalwareScan }),
    },
}

M.SendObjectMalwareScanOutput = {
    type = "structure",
    id = "SendObjectMalwareScanOutput",
}

M.RecoveryPoint = {
    type = "structure",
    id = "RecoveryPoint",
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
    id = "StartMalwareScanConfiguration",
    members = {
        Role = {
            type = "string",
            traits = {
                json_name = "role",
                required = true,
            },
        },
        IncrementalScanDetails = setmetatable({ traits = {
            json_name = "incrementalScanDetails",
        } }, { __index = M.IncrementalScanDetails }),
        RecoveryPoint = setmetatable({ traits = {
            json_name = "recoveryPoint",
        } }, { __index = M.RecoveryPoint }),
    },
}

M.StartMalwareScanInput = {
    type = "structure",
    id = "StartMalwareScanInput",
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
                idempotency_token = true,
                json_name = "clientToken",
            },
        },
        ScanConfiguration = setmetatable({ traits = {
            json_name = "scanConfiguration",
        } }, { __index = M.StartMalwareScanConfiguration }),
    },
}

M.StartMalwareScanOutput = {
    type = "structure",
    id = "StartMalwareScanOutput",
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
    id = "StartMonitoringMembersInput",
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
            member = { type = "string" },
            traits = {
                json_name = "accountIds",
                required = true,
            },
        },
    },
}

M.StartMonitoringMembersOutput = {
    type = "structure",
    id = "StartMonitoringMembersOutput",
    members = {
        UnprocessedAccounts = {
            type = "list",
            member = M.UnprocessedAccount,
            traits = {
                json_name = "unprocessedAccounts",
                required = true,
            },
        },
    },
}

M.StopMonitoringMembersInput = {
    type = "structure",
    id = "StopMonitoringMembersInput",
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
            member = { type = "string" },
            traits = {
                json_name = "accountIds",
                required = true,
            },
        },
    },
}

M.StopMonitoringMembersOutput = {
    type = "structure",
    id = "StopMonitoringMembersOutput",
    members = {
        UnprocessedAccounts = {
            type = "list",
            member = M.UnprocessedAccount,
            traits = {
                json_name = "unprocessedAccounts",
                required = true,
            },
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
                http_label = true,
                required = true,
            },
        },
        Tags = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
            traits = {
                json_name = "tags",
                required = true,
            },
        },
    },
}

M.TagResourceOutput = {
    type = "structure",
    id = "TagResourceOutput",
}

M.UnarchiveFindingsInput = {
    type = "structure",
    id = "UnarchiveFindingsInput",
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
            member = { type = "string" },
            traits = {
                json_name = "findingIds",
                required = true,
            },
        },
    },
}

M.UnarchiveFindingsOutput = {
    type = "structure",
    id = "UnarchiveFindingsOutput",
}

M.UntagResourceInput = {
    type = "structure",
    id = "UntagResourceInput",
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

M.UpdateDetectorInput = {
    type = "structure",
    id = "UpdateDetectorInput",
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
        DataSources = setmetatable({ traits = {
            json_name = "dataSources",
        } }, { __index = M.DataSourceConfigurations }),
        Features = {
            type = "list",
            member = M.DetectorFeatureConfiguration,
            traits = {
                json_name = "features",
            },
        },
    },
}

M.UpdateDetectorOutput = {
    type = "structure",
    id = "UpdateDetectorOutput",
}

M.UpdateFilterInput = {
    type = "structure",
    id = "UpdateFilterInput",
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
            type = "integer",
            traits = {
                json_name = "rank",
            },
        },
        FindingCriteria = setmetatable({ traits = {
            json_name = "findingCriteria",
        } }, { __index = M.FindingCriteria }),
    },
}

M.UpdateFilterOutput = {
    type = "structure",
    id = "UpdateFilterOutput",
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
    id = "UpdateFindingsFeedbackInput",
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
            member = { type = "string" },
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
    id = "UpdateFindingsFeedbackOutput",
}

M.UpdateIPSetInput = {
    type = "structure",
    id = "UpdateIPSetInput",
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
    id = "UpdateIPSetOutput",
}

M.UpdateS3BucketResource = {
    type = "structure",
    id = "UpdateS3BucketResource",
    members = {
        ObjectPrefixes = {
            type = "list",
            member = { type = "string" },
            traits = {
                json_name = "objectPrefixes",
            },
        },
    },
}

M.UpdateProtectedResource = {
    type = "structure",
    id = "UpdateProtectedResource",
    members = {
        S3Bucket = setmetatable({ traits = {
            json_name = "s3Bucket",
        } }, { __index = M.UpdateS3BucketResource }),
    },
}

M.UpdateMalwareProtectionPlanInput = {
    type = "structure",
    id = "UpdateMalwareProtectionPlanInput",
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
        Actions = setmetatable({ traits = {
            json_name = "actions",
        } }, { __index = M.MalwareProtectionPlanActions }),
        ProtectedResource = setmetatable({ traits = {
            json_name = "protectedResource",
        } }, { __index = M.UpdateProtectedResource }),
    },
}

M.UpdateMalwareProtectionPlanOutput = {
    type = "structure",
    id = "UpdateMalwareProtectionPlanOutput",
}

M.UpdateMalwareScanSettingsInput = {
    type = "structure",
    id = "UpdateMalwareScanSettingsInput",
    members = {
        DetectorId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        ScanResourceCriteria = setmetatable({ traits = {
            json_name = "scanResourceCriteria",
        } }, { __index = M.ScanResourceCriteria }),
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
    id = "UpdateMalwareScanSettingsOutput",
}

M.MemberAdditionalConfiguration = {
    type = "structure",
    id = "MemberAdditionalConfiguration",
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
    id = "MemberFeaturesConfiguration",
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
            member = M.MemberAdditionalConfiguration,
            traits = {
                json_name = "additionalConfiguration",
            },
        },
    },
}

M.UpdateMemberDetectorsInput = {
    type = "structure",
    id = "UpdateMemberDetectorsInput",
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
            member = { type = "string" },
            traits = {
                json_name = "accountIds",
                required = true,
            },
        },
        DataSources = setmetatable({ traits = {
            json_name = "dataSources",
        } }, { __index = M.DataSourceConfigurations }),
        Features = {
            type = "list",
            member = M.MemberFeaturesConfiguration,
            traits = {
                json_name = "features",
            },
        },
    },
}

M.UpdateMemberDetectorsOutput = {
    type = "structure",
    id = "UpdateMemberDetectorsOutput",
    members = {
        UnprocessedAccounts = {
            type = "list",
            member = M.UnprocessedAccount,
            traits = {
                json_name = "unprocessedAccounts",
                required = true,
            },
        },
    },
}

M.OrganizationKubernetesAuditLogsConfiguration = {
    type = "structure",
    id = "OrganizationKubernetesAuditLogsConfiguration",
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
    id = "OrganizationKubernetesConfiguration",
    members = {
        AuditLogs = setmetatable({ traits = {
            json_name = "auditLogs",
            required = true,
        } }, { __index = M.OrganizationKubernetesAuditLogsConfiguration }),
    },
}

M.OrganizationEbsVolumes = {
    type = "structure",
    id = "OrganizationEbsVolumes",
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
    id = "OrganizationScanEc2InstanceWithFindings",
    members = {
        EbsVolumes = setmetatable({ traits = {
            json_name = "ebsVolumes",
        } }, { __index = M.OrganizationEbsVolumes }),
    },
}

M.OrganizationMalwareProtectionConfiguration = {
    type = "structure",
    id = "OrganizationMalwareProtectionConfiguration",
    members = {
        ScanEc2InstanceWithFindings = setmetatable({ traits = {
            json_name = "scanEc2InstanceWithFindings",
        } }, { __index = M.OrganizationScanEc2InstanceWithFindings }),
    },
}

M.OrganizationS3LogsConfiguration = {
    type = "structure",
    id = "OrganizationS3LogsConfiguration",
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
    id = "OrganizationDataSourceConfigurations",
    members = {
        S3Logs = setmetatable({ traits = {
            json_name = "s3Logs",
        } }, { __index = M.OrganizationS3LogsConfiguration }),
        Kubernetes = setmetatable({ traits = {
            json_name = "kubernetes",
        } }, { __index = M.OrganizationKubernetesConfiguration }),
        MalwareProtection = setmetatable({ traits = {
            json_name = "malwareProtection",
        } }, { __index = M.OrganizationMalwareProtectionConfiguration }),
    },
}

M.OrganizationAdditionalConfiguration = {
    type = "structure",
    id = "OrganizationAdditionalConfiguration",
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
    id = "OrganizationFeatureConfiguration",
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
            member = M.OrganizationAdditionalConfiguration,
            traits = {
                json_name = "additionalConfiguration",
            },
        },
    },
}

M.UpdateOrganizationConfigurationInput = {
    type = "structure",
    id = "UpdateOrganizationConfigurationInput",
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
        DataSources = setmetatable({ traits = {
            json_name = "dataSources",
        } }, { __index = M.OrganizationDataSourceConfigurations }),
        Features = {
            type = "list",
            member = M.OrganizationFeatureConfiguration,
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
    id = "UpdateOrganizationConfigurationOutput",
}

M.UpdatePublishingDestinationInput = {
    type = "structure",
    id = "UpdatePublishingDestinationInput",
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
        DestinationProperties = setmetatable({ traits = {
            json_name = "destinationProperties",
        } }, { __index = M.DestinationProperties }),
    },
}

M.UpdatePublishingDestinationOutput = {
    type = "structure",
    id = "UpdatePublishingDestinationOutput",
}

M.UpdateThreatEntitySetInput = {
    type = "structure",
    id = "UpdateThreatEntitySetInput",
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
    id = "UpdateThreatEntitySetOutput",
}

M.UpdateThreatIntelSetInput = {
    type = "structure",
    id = "UpdateThreatIntelSetInput",
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
    id = "UpdateThreatIntelSetOutput",
}

M.UpdateTrustedEntitySetInput = {
    type = "structure",
    id = "UpdateTrustedEntitySetInput",
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
    id = "UpdateTrustedEntitySetOutput",
}

return M
