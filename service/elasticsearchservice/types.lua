local M = {}

M.AcceptInboundCrossClusterSearchConnectionInput = {
    type = "structure",
    id = "AcceptInboundCrossClusterSearchConnectionInput",
    members = {
        CrossClusterSearchConnectionId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.InboundCrossClusterSearchConnectionStatusCode = {
    PENDING_ACCEPTANCE = "PENDING_ACCEPTANCE",
    APPROVED = "APPROVED",
    REJECTING = "REJECTING",
    REJECTED = "REJECTED",
    DELETING = "DELETING",
    DELETED = "DELETED",
}

M.InboundCrossClusterSearchConnectionStatus = {
    type = "structure",
    id = "InboundCrossClusterSearchConnectionStatus",
    members = {
        StatusCode = {
            type = "string",
        },
        Message = {
            type = "string",
        },
    },
}

M.DomainInformation = {
    type = "structure",
    id = "DomainInformation",
    members = {
        OwnerId = {
            type = "string",
        },
        DomainName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Region = {
            type = "string",
        },
    },
}

M.InboundCrossClusterSearchConnection = {
    type = "structure",
    id = "InboundCrossClusterSearchConnection",
    members = {
        SourceDomainInfo = M.DomainInformation,
        DestinationDomainInfo = M.DomainInformation,
        CrossClusterSearchConnectionId = {
            type = "string",
        },
        ConnectionStatus = M.InboundCrossClusterSearchConnectionStatus,
    },
}

M.AcceptInboundCrossClusterSearchConnectionOutput = {
    type = "structure",
    id = "AcceptInboundCrossClusterSearchConnectionOutput",
    members = {
        CrossClusterSearchConnection = M.InboundCrossClusterSearchConnection,
    },
}

M.DisabledOperationException = {
    type = "structure",
    id = "DisabledOperationException",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.LimitExceededException = {
    type = "structure",
    id = "LimitExceededException",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.ResourceNotFoundException = {
    type = "structure",
    id = "ResourceNotFoundException",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.AccessDeniedException = {
    type = "structure",
    id = "AccessDeniedException",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.OptionState = {
    RequiresIndexDocuments = "RequiresIndexDocuments",
    Processing = "Processing",
    Active = "Active",
}

M.OptionStatus = {
    type = "structure",
    id = "OptionStatus",
    members = {
        CreationDate = {
            type = "timestamp",
            traits = {
                required = true,
            },
        },
        UpdateDate = {
            type = "timestamp",
            traits = {
                required = true,
            },
        },
        UpdateVersion = {
            type = "integer",
            traits = {
                default = 0,
            },
        },
        State = {
            type = "string",
            traits = {
                required = true,
            },
        },
        PendingDeletion = {
            type = "boolean",
        },
    },
}

M.AccessPoliciesStatus = {
    type = "structure",
    id = "AccessPoliciesStatus",
    members = {
        Options = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Status = setmetatable({ traits = {
            required = true,
        } }, { __index = M.OptionStatus }),
    },
}

M.AdditionalLimit = {
    type = "structure",
    id = "AdditionalLimit",
    members = {
        LimitName = {
            type = "string",
        },
        LimitValues = {
            type = "list",
            member = { type = "string" },
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

M.AddTagsInput = {
    type = "structure",
    id = "AddTagsInput",
    members = {
        ARN = {
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

M.AddTagsOutput = {
    type = "structure",
    id = "AddTagsOutput",
}

M.BaseException = {
    type = "structure",
    id = "BaseException",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.InternalException = {
    type = "structure",
    id = "InternalException",
    error = "server",
    members = {
        message = {
            type = "string",
        },
    },
}

M.ValidationException = {
    type = "structure",
    id = "ValidationException",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.AdvancedOptionsStatus = {
    type = "structure",
    id = "AdvancedOptionsStatus",
    members = {
        Options = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
            traits = {
                required = true,
            },
        },
        Status = setmetatable({ traits = {
            required = true,
        } }, { __index = M.OptionStatus }),
    },
}

M.SAMLIdp = {
    type = "structure",
    id = "SAMLIdp",
    members = {
        MetadataContent = {
            type = "string",
            traits = {
                required = true,
            },
        },
        EntityId = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.SAMLOptionsOutput = {
    type = "structure",
    id = "SAMLOptionsOutput",
    members = {
        Enabled = {
            type = "boolean",
        },
        Idp = M.SAMLIdp,
        SubjectKey = {
            type = "string",
        },
        RolesKey = {
            type = "string",
        },
        SessionTimeoutMinutes = {
            type = "integer",
        },
    },
}

M.AdvancedSecurityOptions = {
    type = "structure",
    id = "AdvancedSecurityOptions",
    members = {
        Enabled = {
            type = "boolean",
        },
        InternalUserDatabaseEnabled = {
            type = "boolean",
        },
        SAMLOptions = M.SAMLOptionsOutput,
        AnonymousAuthDisableDate = {
            type = "timestamp",
        },
        AnonymousAuthEnabled = {
            type = "boolean",
        },
    },
}

M.MasterUserOptions = {
    type = "structure",
    id = "MasterUserOptions",
    members = {
        MasterUserARN = {
            type = "string",
        },
        MasterUserName = {
            type = "string",
        },
        MasterUserPassword = {
            type = "string",
        },
    },
}

M.SAMLOptionsInput = {
    type = "structure",
    id = "SAMLOptionsInput",
    members = {
        Enabled = {
            type = "boolean",
        },
        Idp = M.SAMLIdp,
        MasterUserName = {
            type = "string",
        },
        MasterBackendRole = {
            type = "string",
        },
        SubjectKey = {
            type = "string",
        },
        RolesKey = {
            type = "string",
        },
        SessionTimeoutMinutes = {
            type = "integer",
        },
    },
}

M.AdvancedSecurityOptionsInput = {
    type = "structure",
    id = "AdvancedSecurityOptionsInput",
    members = {
        Enabled = {
            type = "boolean",
        },
        InternalUserDatabaseEnabled = {
            type = "boolean",
        },
        MasterUserOptions = M.MasterUserOptions,
        SAMLOptions = M.SAMLOptionsInput,
        AnonymousAuthEnabled = {
            type = "boolean",
        },
    },
}

M.AdvancedSecurityOptionsStatus = {
    type = "structure",
    id = "AdvancedSecurityOptionsStatus",
    members = {
        Options = setmetatable({ traits = {
            required = true,
        } }, { __index = M.AdvancedSecurityOptions }),
        Status = setmetatable({ traits = {
            required = true,
        } }, { __index = M.OptionStatus }),
    },
}

M.AssociatePackageInput = {
    type = "structure",
    id = "AssociatePackageInput",
    members = {
        PackageID = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        DomainName = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.DomainPackageStatus = {
    ASSOCIATING = "ASSOCIATING",
    ASSOCIATION_FAILED = "ASSOCIATION_FAILED",
    ACTIVE = "ACTIVE",
    DISSOCIATING = "DISSOCIATING",
    DISSOCIATION_FAILED = "DISSOCIATION_FAILED",
}

M.ErrorDetails = {
    type = "structure",
    id = "ErrorDetails",
    members = {
        ErrorType = {
            type = "string",
        },
        ErrorMessage = {
            type = "string",
        },
    },
}

M.PackageType = {
    TXT_DICTIONARY = "TXT-DICTIONARY",
}

M.DomainPackageDetails = {
    type = "structure",
    id = "DomainPackageDetails",
    members = {
        PackageID = {
            type = "string",
        },
        PackageName = {
            type = "string",
        },
        PackageType = {
            type = "string",
        },
        LastUpdated = {
            type = "timestamp",
        },
        DomainName = {
            type = "string",
        },
        DomainPackageStatus = {
            type = "string",
        },
        PackageVersion = {
            type = "string",
        },
        ReferencePath = {
            type = "string",
        },
        ErrorDetails = M.ErrorDetails,
    },
}

M.AssociatePackageOutput = {
    type = "structure",
    id = "AssociatePackageOutput",
    members = {
        DomainPackageDetails = M.DomainPackageDetails,
    },
}

M.ConflictException = {
    type = "structure",
    id = "ConflictException",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.AuthorizeVpcEndpointAccessInput = {
    type = "structure",
    id = "AuthorizeVpcEndpointAccessInput",
    members = {
        DomainName = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        Account = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.PrincipalType = {
    AWS_ACCOUNT = "AWS_ACCOUNT",
    AWS_SERVICE = "AWS_SERVICE",
}

M.AuthorizedPrincipal = {
    type = "structure",
    id = "AuthorizedPrincipal",
    members = {
        PrincipalType = {
            type = "string",
        },
        Principal = {
            type = "string",
        },
    },
}

M.AuthorizeVpcEndpointAccessOutput = {
    type = "structure",
    id = "AuthorizeVpcEndpointAccessOutput",
    members = {
        AuthorizedPrincipal = setmetatable({ traits = {
            required = true,
        } }, { __index = M.AuthorizedPrincipal }),
    },
}

M.CancelDomainConfigChangeInput = {
    type = "structure",
    id = "CancelDomainConfigChangeInput",
    members = {
        DomainName = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        DryRun = {
            type = "boolean",
        },
    },
}

M.CancelledChangeProperty = {
    type = "structure",
    id = "CancelledChangeProperty",
    members = {
        PropertyName = {
            type = "string",
        },
        CancelledValue = {
            type = "string",
        },
        ActiveValue = {
            type = "string",
        },
    },
}

M.CancelDomainConfigChangeOutput = {
    type = "structure",
    id = "CancelDomainConfigChangeOutput",
    members = {
        DryRun = {
            type = "boolean",
        },
        CancelledChangeIds = {
            type = "list",
            member = { type = "string" },
        },
        CancelledChangeProperties = {
            type = "list",
            member = M.CancelledChangeProperty,
        },
    },
}

M.CancelElasticsearchServiceSoftwareUpdateInput = {
    type = "structure",
    id = "CancelElasticsearchServiceSoftwareUpdateInput",
    members = {
        DomainName = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.DeploymentStatus = {
    PENDING_UPDATE = "PENDING_UPDATE",
    IN_PROGRESS = "IN_PROGRESS",
    COMPLETED = "COMPLETED",
    NOT_ELIGIBLE = "NOT_ELIGIBLE",
    ELIGIBLE = "ELIGIBLE",
}

M.ServiceSoftwareOptions = {
    type = "structure",
    id = "ServiceSoftwareOptions",
    members = {
        CurrentVersion = {
            type = "string",
        },
        NewVersion = {
            type = "string",
        },
        UpdateAvailable = {
            type = "boolean",
        },
        Cancellable = {
            type = "boolean",
        },
        UpdateStatus = {
            type = "string",
        },
        Description = {
            type = "string",
        },
        AutomatedUpdateDate = {
            type = "timestamp",
        },
        OptionalDeployment = {
            type = "boolean",
        },
    },
}

M.CancelElasticsearchServiceSoftwareUpdateOutput = {
    type = "structure",
    id = "CancelElasticsearchServiceSoftwareUpdateOutput",
    members = {
        ServiceSoftwareOptions = M.ServiceSoftwareOptions,
    },
}

M.AutoTuneDesiredState = {
    ENABLED = "ENABLED",
    DISABLED = "DISABLED",
}

M.TimeUnit = {
    HOURS = "HOURS",
}

M.Duration = {
    type = "structure",
    id = "Duration",
    members = {
        Value = {
            type = "long",
        },
        Unit = {
            type = "string",
        },
    },
}

M.AutoTuneMaintenanceSchedule = {
    type = "structure",
    id = "AutoTuneMaintenanceSchedule",
    members = {
        StartAt = {
            type = "timestamp",
        },
        Duration = M.Duration,
        CronExpressionForRecurrence = {
            type = "string",
        },
    },
}

M.AutoTuneOptionsInput = {
    type = "structure",
    id = "AutoTuneOptionsInput",
    members = {
        DesiredState = {
            type = "string",
        },
        MaintenanceSchedules = {
            type = "list",
            member = M.AutoTuneMaintenanceSchedule,
        },
    },
}

M.CognitoOptions = {
    type = "structure",
    id = "CognitoOptions",
    members = {
        Enabled = {
            type = "boolean",
        },
        UserPoolId = {
            type = "string",
        },
        IdentityPoolId = {
            type = "string",
        },
        RoleArn = {
            type = "string",
        },
    },
}

M.DeploymentStrategy = {
    DEFAULT = "Default",
    CAPACITY_OPTIMIZED = "CapacityOptimized",
}

M.DeploymentStrategyOptions = {
    type = "structure",
    id = "DeploymentStrategyOptions",
    members = {
        DeploymentStrategy = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.TLSSecurityPolicy = {
    POLICY_MIN_TLS_1_0_2019_07 = "Policy-Min-TLS-1-0-2019-07",
    POLICY_MIN_TLS_1_2_2019_07 = "Policy-Min-TLS-1-2-2019-07",
    POLICY_MIN_TLS_1_2_PFS_2023_10 = "Policy-Min-TLS-1-2-PFS-2023-10",
    POLICY_MIN_TLS_1_2_RFC9151_FIPS_2024_08 = "Policy-Min-TLS-1-2-RFC9151-FIPS-2024-08",
}

M.DomainEndpointOptions = {
    type = "structure",
    id = "DomainEndpointOptions",
    members = {
        EnforceHTTPS = {
            type = "boolean",
        },
        TLSSecurityPolicy = {
            type = "string",
        },
        CustomEndpointEnabled = {
            type = "boolean",
        },
        CustomEndpoint = {
            type = "string",
        },
        CustomEndpointCertificateArn = {
            type = "string",
        },
    },
}

M.VolumeType = {
    standard = "standard",
    gp2 = "gp2",
    io1 = "io1",
    gp3 = "gp3",
}

M.EBSOptions = {
    type = "structure",
    id = "EBSOptions",
    members = {
        EBSEnabled = {
            type = "boolean",
        },
        VolumeType = {
            type = "string",
        },
        VolumeSize = {
            type = "integer",
        },
        Iops = {
            type = "integer",
        },
        Throughput = {
            type = "integer",
        },
    },
}

M.ColdStorageOptions = {
    type = "structure",
    id = "ColdStorageOptions",
    members = {
        Enabled = {
            type = "boolean",
            traits = {
                required = true,
            },
        },
    },
}

M.ESPartitionInstanceType = {
    m3_medium_elasticsearch = "m3.medium.elasticsearch",
    m3_large_elasticsearch = "m3.large.elasticsearch",
    m3_xlarge_elasticsearch = "m3.xlarge.elasticsearch",
    m3_2xlarge_elasticsearch = "m3.2xlarge.elasticsearch",
    m4_large_elasticsearch = "m4.large.elasticsearch",
    m4_xlarge_elasticsearch = "m4.xlarge.elasticsearch",
    m4_2xlarge_elasticsearch = "m4.2xlarge.elasticsearch",
    m4_4xlarge_elasticsearch = "m4.4xlarge.elasticsearch",
    m4_10xlarge_elasticsearch = "m4.10xlarge.elasticsearch",
    m5_large_elasticsearch = "m5.large.elasticsearch",
    m5_xlarge_elasticsearch = "m5.xlarge.elasticsearch",
    m5_2xlarge_elasticsearch = "m5.2xlarge.elasticsearch",
    m5_4xlarge_elasticsearch = "m5.4xlarge.elasticsearch",
    m5_12xlarge_elasticsearch = "m5.12xlarge.elasticsearch",
    r5_large_elasticsearch = "r5.large.elasticsearch",
    r5_xlarge_elasticsearch = "r5.xlarge.elasticsearch",
    r5_2xlarge_elasticsearch = "r5.2xlarge.elasticsearch",
    r5_4xlarge_elasticsearch = "r5.4xlarge.elasticsearch",
    r5_12xlarge_elasticsearch = "r5.12xlarge.elasticsearch",
    c5_large_elasticsearch = "c5.large.elasticsearch",
    c5_xlarge_elasticsearch = "c5.xlarge.elasticsearch",
    c5_2xlarge_elasticsearch = "c5.2xlarge.elasticsearch",
    c5_4xlarge_elasticsearch = "c5.4xlarge.elasticsearch",
    c5_9xlarge_elasticsearch = "c5.9xlarge.elasticsearch",
    c5_18xlarge_elasticsearch = "c5.18xlarge.elasticsearch",
    ultrawarm1_medium_elasticsearch = "ultrawarm1.medium.elasticsearch",
    ultrawarm1_large_elasticsearch = "ultrawarm1.large.elasticsearch",
    t2_micro_elasticsearch = "t2.micro.elasticsearch",
    t2_small_elasticsearch = "t2.small.elasticsearch",
    t2_medium_elasticsearch = "t2.medium.elasticsearch",
    r3_large_elasticsearch = "r3.large.elasticsearch",
    r3_xlarge_elasticsearch = "r3.xlarge.elasticsearch",
    r3_2xlarge_elasticsearch = "r3.2xlarge.elasticsearch",
    r3_4xlarge_elasticsearch = "r3.4xlarge.elasticsearch",
    r3_8xlarge_elasticsearch = "r3.8xlarge.elasticsearch",
    i2_xlarge_elasticsearch = "i2.xlarge.elasticsearch",
    i2_2xlarge_elasticsearch = "i2.2xlarge.elasticsearch",
    d2_xlarge_elasticsearch = "d2.xlarge.elasticsearch",
    d2_2xlarge_elasticsearch = "d2.2xlarge.elasticsearch",
    d2_4xlarge_elasticsearch = "d2.4xlarge.elasticsearch",
    d2_8xlarge_elasticsearch = "d2.8xlarge.elasticsearch",
    c4_large_elasticsearch = "c4.large.elasticsearch",
    c4_xlarge_elasticsearch = "c4.xlarge.elasticsearch",
    c4_2xlarge_elasticsearch = "c4.2xlarge.elasticsearch",
    c4_4xlarge_elasticsearch = "c4.4xlarge.elasticsearch",
    c4_8xlarge_elasticsearch = "c4.8xlarge.elasticsearch",
    r4_large_elasticsearch = "r4.large.elasticsearch",
    r4_xlarge_elasticsearch = "r4.xlarge.elasticsearch",
    r4_2xlarge_elasticsearch = "r4.2xlarge.elasticsearch",
    r4_4xlarge_elasticsearch = "r4.4xlarge.elasticsearch",
    r4_8xlarge_elasticsearch = "r4.8xlarge.elasticsearch",
    r4_16xlarge_elasticsearch = "r4.16xlarge.elasticsearch",
    i3_large_elasticsearch = "i3.large.elasticsearch",
    i3_xlarge_elasticsearch = "i3.xlarge.elasticsearch",
    i3_2xlarge_elasticsearch = "i3.2xlarge.elasticsearch",
    i3_4xlarge_elasticsearch = "i3.4xlarge.elasticsearch",
    i3_8xlarge_elasticsearch = "i3.8xlarge.elasticsearch",
    i3_16xlarge_elasticsearch = "i3.16xlarge.elasticsearch",
}

M.ESWarmPartitionInstanceType = {
    ultrawarm1_medium_elasticsearch = "ultrawarm1.medium.elasticsearch",
    ultrawarm1_large_elasticsearch = "ultrawarm1.large.elasticsearch",
}

M.ZoneAwarenessConfig = {
    type = "structure",
    id = "ZoneAwarenessConfig",
    members = {
        AvailabilityZoneCount = {
            type = "integer",
        },
    },
}

M.ElasticsearchClusterConfig = {
    type = "structure",
    id = "ElasticsearchClusterConfig",
    members = {
        InstanceType = {
            type = "string",
        },
        InstanceCount = {
            type = "integer",
        },
        DedicatedMasterEnabled = {
            type = "boolean",
        },
        ZoneAwarenessEnabled = {
            type = "boolean",
        },
        ZoneAwarenessConfig = M.ZoneAwarenessConfig,
        DedicatedMasterType = {
            type = "string",
        },
        DedicatedMasterCount = {
            type = "integer",
        },
        WarmEnabled = {
            type = "boolean",
        },
        WarmType = {
            type = "string",
        },
        WarmCount = {
            type = "integer",
        },
        ColdStorageOptions = M.ColdStorageOptions,
    },
}

M.EncryptionAtRestOptions = {
    type = "structure",
    id = "EncryptionAtRestOptions",
    members = {
        Enabled = {
            type = "boolean",
        },
        KmsKeyId = {
            type = "string",
        },
    },
}

M.LogType = {
    INDEX_SLOW_LOGS = "INDEX_SLOW_LOGS",
    SEARCH_SLOW_LOGS = "SEARCH_SLOW_LOGS",
    ES_APPLICATION_LOGS = "ES_APPLICATION_LOGS",
    AUDIT_LOGS = "AUDIT_LOGS",
}

M.LogPublishingOption = {
    type = "structure",
    id = "LogPublishingOption",
    members = {
        CloudWatchLogsLogGroupArn = {
            type = "string",
        },
        Enabled = {
            type = "boolean",
        },
    },
}

M.NodeToNodeEncryptionOptions = {
    type = "structure",
    id = "NodeToNodeEncryptionOptions",
    members = {
        Enabled = {
            type = "boolean",
        },
    },
}

M.SnapshotOptions = {
    type = "structure",
    id = "SnapshotOptions",
    members = {
        AutomatedSnapshotStartHour = {
            type = "integer",
        },
    },
}

M.VPCOptions = {
    type = "structure",
    id = "VPCOptions",
    members = {
        SubnetIds = {
            type = "list",
            member = { type = "string" },
        },
        SecurityGroupIds = {
            type = "list",
            member = { type = "string" },
        },
    },
}

M.CreateElasticsearchDomainInput = {
    type = "structure",
    id = "CreateElasticsearchDomainInput",
    members = {
        DomainName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        ElasticsearchVersion = {
            type = "string",
        },
        ElasticsearchClusterConfig = M.ElasticsearchClusterConfig,
        EBSOptions = M.EBSOptions,
        AccessPolicies = {
            type = "string",
        },
        SnapshotOptions = M.SnapshotOptions,
        VPCOptions = M.VPCOptions,
        CognitoOptions = M.CognitoOptions,
        EncryptionAtRestOptions = M.EncryptionAtRestOptions,
        NodeToNodeEncryptionOptions = M.NodeToNodeEncryptionOptions,
        AdvancedOptions = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
        LogPublishingOptions = {
            type = "map",
            key = { type = "string" },
            value = M.LogPublishingOption,
        },
        DomainEndpointOptions = M.DomainEndpointOptions,
        AdvancedSecurityOptions = M.AdvancedSecurityOptionsInput,
        AutoTuneOptions = M.AutoTuneOptionsInput,
        TagList = {
            type = "list",
            member = M.Tag,
        },
        DeploymentStrategyOptions = M.DeploymentStrategyOptions,
    },
}

M.AutoTuneState = {
    ENABLED = "ENABLED",
    DISABLED = "DISABLED",
    ENABLE_IN_PROGRESS = "ENABLE_IN_PROGRESS",
    DISABLE_IN_PROGRESS = "DISABLE_IN_PROGRESS",
    DISABLED_AND_ROLLBACK_SCHEDULED = "DISABLED_AND_ROLLBACK_SCHEDULED",
    DISABLED_AND_ROLLBACK_IN_PROGRESS = "DISABLED_AND_ROLLBACK_IN_PROGRESS",
    DISABLED_AND_ROLLBACK_COMPLETE = "DISABLED_AND_ROLLBACK_COMPLETE",
    DISABLED_AND_ROLLBACK_ERROR = "DISABLED_AND_ROLLBACK_ERROR",
    ERROR = "ERROR",
}

M.AutoTuneOptionsOutput = {
    type = "structure",
    id = "AutoTuneOptionsOutput",
    members = {
        State = {
            type = "string",
        },
        ErrorMessage = {
            type = "string",
        },
    },
}

M.ConfigChangeStatus = {
    PENDING = "Pending",
    INITIALIZING = "Initializing",
    VALIDATING = "Validating",
    VALIDATION_FAILED = "ValidationFailed",
    APPLYING_CHANGES = "ApplyingChanges",
    COMPLETED = "Completed",
    PENDING_USER_INPUT = "PendingUserInput",
    CANCELLED = "Cancelled",
}

M.InitiatedBy = {
    CUSTOMER = "CUSTOMER",
    SERVICE = "SERVICE",
}

M.ChangeProgressDetails = {
    type = "structure",
    id = "ChangeProgressDetails",
    members = {
        ChangeId = {
            type = "string",
        },
        Message = {
            type = "string",
        },
        ConfigChangeStatus = {
            type = "string",
        },
        StartTime = {
            type = "timestamp",
        },
        LastUpdatedTime = {
            type = "timestamp",
        },
        InitiatedBy = {
            type = "string",
        },
    },
}

M.DomainProcessingStatusType = {
    CREATING = "Creating",
    ACTIVE = "Active",
    MODIFYING = "Modifying",
    UPGRADING = "UpgradingEngineVersion",
    UPDATING = "UpdatingServiceSoftware",
    ISOLATED = "Isolated",
    DELETING = "Deleting",
}

M.PropertyValueType = {
    PLAIN_TEXT = "PLAIN_TEXT",
    STRINGIFIED_JSON = "STRINGIFIED_JSON",
}

M.ModifyingProperties = {
    type = "structure",
    id = "ModifyingProperties",
    members = {
        Name = {
            type = "string",
        },
        ActiveValue = {
            type = "string",
        },
        PendingValue = {
            type = "string",
        },
        ValueType = {
            type = "string",
        },
    },
}

M.VPCDerivedInfo = {
    type = "structure",
    id = "VPCDerivedInfo",
    members = {
        VPCId = {
            type = "string",
        },
        SubnetIds = {
            type = "list",
            member = { type = "string" },
        },
        AvailabilityZones = {
            type = "list",
            member = { type = "string" },
        },
        SecurityGroupIds = {
            type = "list",
            member = { type = "string" },
        },
    },
}

M.ElasticsearchDomainStatus = {
    type = "structure",
    id = "ElasticsearchDomainStatus",
    members = {
        DomainId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        DomainName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        ARN = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Created = {
            type = "boolean",
        },
        Deleted = {
            type = "boolean",
        },
        Endpoint = {
            type = "string",
        },
        Endpoints = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
        Processing = {
            type = "boolean",
        },
        UpgradeProcessing = {
            type = "boolean",
        },
        ElasticsearchVersion = {
            type = "string",
        },
        ElasticsearchClusterConfig = setmetatable({ traits = {
            required = true,
        } }, { __index = M.ElasticsearchClusterConfig }),
        EBSOptions = M.EBSOptions,
        AccessPolicies = {
            type = "string",
        },
        SnapshotOptions = M.SnapshotOptions,
        VPCOptions = M.VPCDerivedInfo,
        CognitoOptions = M.CognitoOptions,
        EncryptionAtRestOptions = M.EncryptionAtRestOptions,
        NodeToNodeEncryptionOptions = M.NodeToNodeEncryptionOptions,
        AdvancedOptions = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
        LogPublishingOptions = {
            type = "map",
            key = { type = "string" },
            value = M.LogPublishingOption,
        },
        ServiceSoftwareOptions = M.ServiceSoftwareOptions,
        DomainEndpointOptions = M.DomainEndpointOptions,
        AdvancedSecurityOptions = M.AdvancedSecurityOptions,
        AutoTuneOptions = M.AutoTuneOptionsOutput,
        ChangeProgressDetails = M.ChangeProgressDetails,
        DomainProcessingStatus = {
            type = "string",
        },
        ModifyingProperties = {
            type = "list",
            member = M.ModifyingProperties,
        },
        DeploymentStrategyOptions = M.DeploymentStrategyOptions,
    },
}

M.CreateElasticsearchDomainOutput = {
    type = "structure",
    id = "CreateElasticsearchDomainOutput",
    members = {
        DomainStatus = M.ElasticsearchDomainStatus,
    },
}

M.InvalidTypeException = {
    type = "structure",
    id = "InvalidTypeException",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.ResourceAlreadyExistsException = {
    type = "structure",
    id = "ResourceAlreadyExistsException",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.CreateOutboundCrossClusterSearchConnectionInput = {
    type = "structure",
    id = "CreateOutboundCrossClusterSearchConnectionInput",
    members = {
        SourceDomainInfo = setmetatable({ traits = {
            required = true,
        } }, { __index = M.DomainInformation }),
        DestinationDomainInfo = setmetatable({ traits = {
            required = true,
        } }, { __index = M.DomainInformation }),
        ConnectionAlias = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.OutboundCrossClusterSearchConnectionStatusCode = {
    PENDING_ACCEPTANCE = "PENDING_ACCEPTANCE",
    VALIDATING = "VALIDATING",
    VALIDATION_FAILED = "VALIDATION_FAILED",
    PROVISIONING = "PROVISIONING",
    ACTIVE = "ACTIVE",
    REJECTED = "REJECTED",
    DELETING = "DELETING",
    DELETED = "DELETED",
}

M.OutboundCrossClusterSearchConnectionStatus = {
    type = "structure",
    id = "OutboundCrossClusterSearchConnectionStatus",
    members = {
        StatusCode = {
            type = "string",
        },
        Message = {
            type = "string",
        },
    },
}

M.CreateOutboundCrossClusterSearchConnectionOutput = {
    type = "structure",
    id = "CreateOutboundCrossClusterSearchConnectionOutput",
    members = {
        SourceDomainInfo = M.DomainInformation,
        DestinationDomainInfo = M.DomainInformation,
        ConnectionAlias = {
            type = "string",
        },
        ConnectionStatus = M.OutboundCrossClusterSearchConnectionStatus,
        CrossClusterSearchConnectionId = {
            type = "string",
        },
    },
}

M.PackageSource = {
    type = "structure",
    id = "PackageSource",
    members = {
        S3BucketName = {
            type = "string",
        },
        S3Key = {
            type = "string",
        },
    },
}

M.CreatePackageInput = {
    type = "structure",
    id = "CreatePackageInput",
    members = {
        PackageName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        PackageType = {
            type = "string",
            traits = {
                required = true,
            },
        },
        PackageDescription = {
            type = "string",
        },
        PackageSource = setmetatable({ traits = {
            required = true,
        } }, { __index = M.PackageSource }),
    },
}

M.PackageStatus = {
    COPYING = "COPYING",
    COPY_FAILED = "COPY_FAILED",
    VALIDATING = "VALIDATING",
    VALIDATION_FAILED = "VALIDATION_FAILED",
    AVAILABLE = "AVAILABLE",
    DELETING = "DELETING",
    DELETED = "DELETED",
    DELETE_FAILED = "DELETE_FAILED",
}

M.PackageDetails = {
    type = "structure",
    id = "PackageDetails",
    members = {
        PackageID = {
            type = "string",
        },
        PackageName = {
            type = "string",
        },
        PackageType = {
            type = "string",
        },
        PackageDescription = {
            type = "string",
        },
        PackageStatus = {
            type = "string",
        },
        CreatedAt = {
            type = "timestamp",
        },
        LastUpdatedAt = {
            type = "timestamp",
        },
        AvailablePackageVersion = {
            type = "string",
        },
        ErrorDetails = M.ErrorDetails,
    },
}

M.CreatePackageOutput = {
    type = "structure",
    id = "CreatePackageOutput",
    members = {
        PackageDetails = M.PackageDetails,
    },
}

M.CreateVpcEndpointInput = {
    type = "structure",
    id = "CreateVpcEndpointInput",
    members = {
        DomainArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        VpcOptions = setmetatable({ traits = {
            required = true,
        } }, { __index = M.VPCOptions }),
        ClientToken = {
            type = "string",
        },
    },
}

M.VpcEndpointStatus = {
    CREATING = "CREATING",
    CREATE_FAILED = "CREATE_FAILED",
    ACTIVE = "ACTIVE",
    UPDATING = "UPDATING",
    UPDATE_FAILED = "UPDATE_FAILED",
    DELETING = "DELETING",
    DELETE_FAILED = "DELETE_FAILED",
}

M.VpcEndpoint = {
    type = "structure",
    id = "VpcEndpoint",
    members = {
        VpcEndpointId = {
            type = "string",
        },
        VpcEndpointOwner = {
            type = "string",
        },
        DomainArn = {
            type = "string",
        },
        VpcOptions = M.VPCDerivedInfo,
        Status = {
            type = "string",
        },
        Endpoint = {
            type = "string",
        },
    },
}

M.CreateVpcEndpointOutput = {
    type = "structure",
    id = "CreateVpcEndpointOutput",
    members = {
        VpcEndpoint = setmetatable({ traits = {
            required = true,
        } }, { __index = M.VpcEndpoint }),
    },
}

M.DeleteElasticsearchDomainInput = {
    type = "structure",
    id = "DeleteElasticsearchDomainInput",
    members = {
        DomainName = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.DeleteElasticsearchDomainOutput = {
    type = "structure",
    id = "DeleteElasticsearchDomainOutput",
    members = {
        DomainStatus = M.ElasticsearchDomainStatus,
    },
}

M.DeleteElasticsearchServiceRoleInput = {
    type = "structure",
    id = "DeleteElasticsearchServiceRoleInput",
}

M.DeleteElasticsearchServiceRoleOutput = {
    type = "structure",
    id = "DeleteElasticsearchServiceRoleOutput",
}

M.DeleteInboundCrossClusterSearchConnectionInput = {
    type = "structure",
    id = "DeleteInboundCrossClusterSearchConnectionInput",
    members = {
        CrossClusterSearchConnectionId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.DeleteInboundCrossClusterSearchConnectionOutput = {
    type = "structure",
    id = "DeleteInboundCrossClusterSearchConnectionOutput",
    members = {
        CrossClusterSearchConnection = M.InboundCrossClusterSearchConnection,
    },
}

M.DeleteOutboundCrossClusterSearchConnectionInput = {
    type = "structure",
    id = "DeleteOutboundCrossClusterSearchConnectionInput",
    members = {
        CrossClusterSearchConnectionId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.OutboundCrossClusterSearchConnection = {
    type = "structure",
    id = "OutboundCrossClusterSearchConnection",
    members = {
        SourceDomainInfo = M.DomainInformation,
        DestinationDomainInfo = M.DomainInformation,
        CrossClusterSearchConnectionId = {
            type = "string",
        },
        ConnectionAlias = {
            type = "string",
        },
        ConnectionStatus = M.OutboundCrossClusterSearchConnectionStatus,
    },
}

M.DeleteOutboundCrossClusterSearchConnectionOutput = {
    type = "structure",
    id = "DeleteOutboundCrossClusterSearchConnectionOutput",
    members = {
        CrossClusterSearchConnection = M.OutboundCrossClusterSearchConnection,
    },
}

M.DeletePackageInput = {
    type = "structure",
    id = "DeletePackageInput",
    members = {
        PackageID = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.DeletePackageOutput = {
    type = "structure",
    id = "DeletePackageOutput",
    members = {
        PackageDetails = M.PackageDetails,
    },
}

M.DeleteVpcEndpointInput = {
    type = "structure",
    id = "DeleteVpcEndpointInput",
    members = {
        VpcEndpointId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.VpcEndpointSummary = {
    type = "structure",
    id = "VpcEndpointSummary",
    members = {
        VpcEndpointId = {
            type = "string",
        },
        VpcEndpointOwner = {
            type = "string",
        },
        DomainArn = {
            type = "string",
        },
        Status = {
            type = "string",
        },
    },
}

M.DeleteVpcEndpointOutput = {
    type = "structure",
    id = "DeleteVpcEndpointOutput",
    members = {
        VpcEndpointSummary = setmetatable({ traits = {
            required = true,
        } }, { __index = M.VpcEndpointSummary }),
    },
}

M.DescribeDomainAutoTunesInput = {
    type = "structure",
    id = "DescribeDomainAutoTunesInput",
    members = {
        DomainName = {
            type = "string",
            traits = {
                http_label = true,
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

M.ScheduledAutoTuneActionType = {
    JVM_HEAP_SIZE_TUNING = "JVM_HEAP_SIZE_TUNING",
    JVM_YOUNG_GEN_TUNING = "JVM_YOUNG_GEN_TUNING",
}

M.ScheduledAutoTuneSeverityType = {
    LOW = "LOW",
    MEDIUM = "MEDIUM",
    HIGH = "HIGH",
}

M.ScheduledAutoTuneDetails = {
    type = "structure",
    id = "ScheduledAutoTuneDetails",
    members = {
        Date = {
            type = "timestamp",
        },
        ActionType = {
            type = "string",
        },
        Action = {
            type = "string",
        },
        Severity = {
            type = "string",
        },
    },
}

M.AutoTuneDetails = {
    type = "structure",
    id = "AutoTuneDetails",
    members = {
        ScheduledAutoTuneDetails = M.ScheduledAutoTuneDetails,
    },
}

M.AutoTuneType = {
    SCHEDULED_ACTION = "SCHEDULED_ACTION",
}

M.AutoTune = {
    type = "structure",
    id = "AutoTune",
    members = {
        AutoTuneType = {
            type = "string",
        },
        AutoTuneDetails = M.AutoTuneDetails,
    },
}

M.DescribeDomainAutoTunesOutput = {
    type = "structure",
    id = "DescribeDomainAutoTunesOutput",
    members = {
        AutoTunes = {
            type = "list",
            member = M.AutoTune,
        },
        NextToken = {
            type = "string",
        },
    },
}

M.DescribeDomainChangeProgressInput = {
    type = "structure",
    id = "DescribeDomainChangeProgressInput",
    members = {
        DomainName = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        ChangeId = {
            type = "string",
            traits = {
                http_query = "changeid",
            },
        },
    },
}

M.ChangeProgressStage = {
    type = "structure",
    id = "ChangeProgressStage",
    members = {
        Name = {
            type = "string",
        },
        Status = {
            type = "string",
        },
        Description = {
            type = "string",
        },
        LastUpdated = {
            type = "timestamp",
        },
    },
}

M.OverallChangeStatus = {
    PENDING = "PENDING",
    PROCESSING = "PROCESSING",
    COMPLETED = "COMPLETED",
    FAILED = "FAILED",
}

M.ChangeProgressStatusDetails = {
    type = "structure",
    id = "ChangeProgressStatusDetails",
    members = {
        ChangeId = {
            type = "string",
        },
        StartTime = {
            type = "timestamp",
        },
        Status = {
            type = "string",
        },
        PendingProperties = {
            type = "list",
            member = { type = "string" },
        },
        CompletedProperties = {
            type = "list",
            member = { type = "string" },
        },
        TotalNumberOfStages = {
            type = "integer",
            traits = {
                default = 0,
            },
        },
        ChangeProgressStages = {
            type = "list",
            member = M.ChangeProgressStage,
        },
        ConfigChangeStatus = {
            type = "string",
        },
        LastUpdatedTime = {
            type = "timestamp",
        },
        InitiatedBy = {
            type = "string",
        },
    },
}

M.DescribeDomainChangeProgressOutput = {
    type = "structure",
    id = "DescribeDomainChangeProgressOutput",
    members = {
        ChangeProgressStatus = M.ChangeProgressStatusDetails,
    },
}

M.DescribeElasticsearchDomainInput = {
    type = "structure",
    id = "DescribeElasticsearchDomainInput",
    members = {
        DomainName = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.DescribeElasticsearchDomainOutput = {
    type = "structure",
    id = "DescribeElasticsearchDomainOutput",
    members = {
        DomainStatus = setmetatable({ traits = {
            required = true,
        } }, { __index = M.ElasticsearchDomainStatus }),
    },
}

M.DescribeElasticsearchDomainConfigInput = {
    type = "structure",
    id = "DescribeElasticsearchDomainConfigInput",
    members = {
        DomainName = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.RollbackOnDisable = {
    NO_ROLLBACK = "NO_ROLLBACK",
    DEFAULT_ROLLBACK = "DEFAULT_ROLLBACK",
}

M.AutoTuneOptions = {
    type = "structure",
    id = "AutoTuneOptions",
    members = {
        DesiredState = {
            type = "string",
        },
        RollbackOnDisable = {
            type = "string",
        },
        MaintenanceSchedules = {
            type = "list",
            member = M.AutoTuneMaintenanceSchedule,
        },
    },
}

M.AutoTuneStatus = {
    type = "structure",
    id = "AutoTuneStatus",
    members = {
        CreationDate = {
            type = "timestamp",
            traits = {
                required = true,
            },
        },
        UpdateDate = {
            type = "timestamp",
            traits = {
                required = true,
            },
        },
        UpdateVersion = {
            type = "integer",
            traits = {
                default = 0,
            },
        },
        State = {
            type = "string",
            traits = {
                required = true,
            },
        },
        ErrorMessage = {
            type = "string",
        },
        PendingDeletion = {
            type = "boolean",
        },
    },
}

M.AutoTuneOptionsStatus = {
    type = "structure",
    id = "AutoTuneOptionsStatus",
    members = {
        Options = M.AutoTuneOptions,
        Status = M.AutoTuneStatus,
    },
}

M.CognitoOptionsStatus = {
    type = "structure",
    id = "CognitoOptionsStatus",
    members = {
        Options = setmetatable({ traits = {
            required = true,
        } }, { __index = M.CognitoOptions }),
        Status = setmetatable({ traits = {
            required = true,
        } }, { __index = M.OptionStatus }),
    },
}

M.DeploymentStrategyOptionsStatus = {
    type = "structure",
    id = "DeploymentStrategyOptionsStatus",
    members = {
        Options = setmetatable({ traits = {
            required = true,
        } }, { __index = M.DeploymentStrategyOptions }),
        Status = setmetatable({ traits = {
            required = true,
        } }, { __index = M.OptionStatus }),
    },
}

M.DomainEndpointOptionsStatus = {
    type = "structure",
    id = "DomainEndpointOptionsStatus",
    members = {
        Options = setmetatable({ traits = {
            required = true,
        } }, { __index = M.DomainEndpointOptions }),
        Status = setmetatable({ traits = {
            required = true,
        } }, { __index = M.OptionStatus }),
    },
}

M.EBSOptionsStatus = {
    type = "structure",
    id = "EBSOptionsStatus",
    members = {
        Options = setmetatable({ traits = {
            required = true,
        } }, { __index = M.EBSOptions }),
        Status = setmetatable({ traits = {
            required = true,
        } }, { __index = M.OptionStatus }),
    },
}

M.ElasticsearchClusterConfigStatus = {
    type = "structure",
    id = "ElasticsearchClusterConfigStatus",
    members = {
        Options = setmetatable({ traits = {
            required = true,
        } }, { __index = M.ElasticsearchClusterConfig }),
        Status = setmetatable({ traits = {
            required = true,
        } }, { __index = M.OptionStatus }),
    },
}

M.ElasticsearchVersionStatus = {
    type = "structure",
    id = "ElasticsearchVersionStatus",
    members = {
        Options = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Status = setmetatable({ traits = {
            required = true,
        } }, { __index = M.OptionStatus }),
    },
}

M.EncryptionAtRestOptionsStatus = {
    type = "structure",
    id = "EncryptionAtRestOptionsStatus",
    members = {
        Options = setmetatable({ traits = {
            required = true,
        } }, { __index = M.EncryptionAtRestOptions }),
        Status = setmetatable({ traits = {
            required = true,
        } }, { __index = M.OptionStatus }),
    },
}

M.LogPublishingOptionsStatus = {
    type = "structure",
    id = "LogPublishingOptionsStatus",
    members = {
        Options = {
            type = "map",
            key = { type = "string" },
            value = M.LogPublishingOption,
        },
        Status = M.OptionStatus,
    },
}

M.NodeToNodeEncryptionOptionsStatus = {
    type = "structure",
    id = "NodeToNodeEncryptionOptionsStatus",
    members = {
        Options = setmetatable({ traits = {
            required = true,
        } }, { __index = M.NodeToNodeEncryptionOptions }),
        Status = setmetatable({ traits = {
            required = true,
        } }, { __index = M.OptionStatus }),
    },
}

M.SnapshotOptionsStatus = {
    type = "structure",
    id = "SnapshotOptionsStatus",
    members = {
        Options = setmetatable({ traits = {
            required = true,
        } }, { __index = M.SnapshotOptions }),
        Status = setmetatable({ traits = {
            required = true,
        } }, { __index = M.OptionStatus }),
    },
}

M.VPCDerivedInfoStatus = {
    type = "structure",
    id = "VPCDerivedInfoStatus",
    members = {
        Options = setmetatable({ traits = {
            required = true,
        } }, { __index = M.VPCDerivedInfo }),
        Status = setmetatable({ traits = {
            required = true,
        } }, { __index = M.OptionStatus }),
    },
}

M.ElasticsearchDomainConfig = {
    type = "structure",
    id = "ElasticsearchDomainConfig",
    members = {
        ElasticsearchVersion = M.ElasticsearchVersionStatus,
        ElasticsearchClusterConfig = M.ElasticsearchClusterConfigStatus,
        EBSOptions = M.EBSOptionsStatus,
        AccessPolicies = M.AccessPoliciesStatus,
        SnapshotOptions = M.SnapshotOptionsStatus,
        VPCOptions = M.VPCDerivedInfoStatus,
        CognitoOptions = M.CognitoOptionsStatus,
        EncryptionAtRestOptions = M.EncryptionAtRestOptionsStatus,
        NodeToNodeEncryptionOptions = M.NodeToNodeEncryptionOptionsStatus,
        AdvancedOptions = M.AdvancedOptionsStatus,
        LogPublishingOptions = M.LogPublishingOptionsStatus,
        DomainEndpointOptions = M.DomainEndpointOptionsStatus,
        AdvancedSecurityOptions = M.AdvancedSecurityOptionsStatus,
        AutoTuneOptions = M.AutoTuneOptionsStatus,
        ChangeProgressDetails = M.ChangeProgressDetails,
        ModifyingProperties = {
            type = "list",
            member = M.ModifyingProperties,
        },
        DeploymentStrategyOptions = M.DeploymentStrategyOptionsStatus,
    },
}

M.DescribeElasticsearchDomainConfigOutput = {
    type = "structure",
    id = "DescribeElasticsearchDomainConfigOutput",
    members = {
        DomainConfig = setmetatable({ traits = {
            required = true,
        } }, { __index = M.ElasticsearchDomainConfig }),
    },
}

M.DescribeElasticsearchDomainsInput = {
    type = "structure",
    id = "DescribeElasticsearchDomainsInput",
    members = {
        DomainNames = {
            type = "list",
            member = { type = "string" },
            traits = {
                required = true,
            },
        },
    },
}

M.DescribeElasticsearchDomainsOutput = {
    type = "structure",
    id = "DescribeElasticsearchDomainsOutput",
    members = {
        DomainStatusList = {
            type = "list",
            member = M.ElasticsearchDomainStatus,
            traits = {
                required = true,
            },
        },
    },
}

M.DescribeElasticsearchInstanceTypeLimitsInput = {
    type = "structure",
    id = "DescribeElasticsearchInstanceTypeLimitsInput",
    members = {
        DomainName = {
            type = "string",
            traits = {
                http_query = "domainName",
            },
        },
        InstanceType = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        ElasticsearchVersion = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.InstanceCountLimits = {
    type = "structure",
    id = "InstanceCountLimits",
    members = {
        MinimumInstanceCount = {
            type = "integer",
            traits = {
                default = 0,
            },
        },
        MaximumInstanceCount = {
            type = "integer",
            traits = {
                default = 0,
            },
        },
    },
}

M.InstanceLimits = {
    type = "structure",
    id = "InstanceLimits",
    members = {
        InstanceCountLimits = M.InstanceCountLimits,
    },
}

M.StorageTypeLimit = {
    type = "structure",
    id = "StorageTypeLimit",
    members = {
        LimitName = {
            type = "string",
        },
        LimitValues = {
            type = "list",
            member = { type = "string" },
        },
    },
}

M.StorageType = {
    type = "structure",
    id = "StorageType",
    members = {
        StorageTypeName = {
            type = "string",
        },
        StorageSubTypeName = {
            type = "string",
        },
        StorageTypeLimits = {
            type = "list",
            member = M.StorageTypeLimit,
        },
    },
}

M.Limits = {
    type = "structure",
    id = "Limits",
    members = {
        StorageTypes = {
            type = "list",
            member = M.StorageType,
        },
        InstanceLimits = M.InstanceLimits,
        AdditionalLimits = {
            type = "list",
            member = M.AdditionalLimit,
        },
    },
}

M.DescribeElasticsearchInstanceTypeLimitsOutput = {
    type = "structure",
    id = "DescribeElasticsearchInstanceTypeLimitsOutput",
    members = {
        LimitsByRole = {
            type = "map",
            key = { type = "string" },
            value = M.Limits,
        },
    },
}

M.Filter = {
    type = "structure",
    id = "Filter",
    members = {
        Name = {
            type = "string",
        },
        Values = {
            type = "list",
            member = { type = "string" },
        },
    },
}

M.DescribeInboundCrossClusterSearchConnectionsInput = {
    type = "structure",
    id = "DescribeInboundCrossClusterSearchConnectionsInput",
    members = {
        Filters = {
            type = "list",
            member = M.Filter,
        },
        MaxResults = {
            type = "integer",
            traits = {
                default = 0,
            },
        },
        NextToken = {
            type = "string",
        },
    },
}

M.DescribeInboundCrossClusterSearchConnectionsOutput = {
    type = "structure",
    id = "DescribeInboundCrossClusterSearchConnectionsOutput",
    members = {
        CrossClusterSearchConnections = {
            type = "list",
            member = M.InboundCrossClusterSearchConnection,
        },
        NextToken = {
            type = "string",
        },
    },
}

M.InvalidPaginationTokenException = {
    type = "structure",
    id = "InvalidPaginationTokenException",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.DescribeOutboundCrossClusterSearchConnectionsInput = {
    type = "structure",
    id = "DescribeOutboundCrossClusterSearchConnectionsInput",
    members = {
        Filters = {
            type = "list",
            member = M.Filter,
        },
        MaxResults = {
            type = "integer",
            traits = {
                default = 0,
            },
        },
        NextToken = {
            type = "string",
        },
    },
}

M.DescribeOutboundCrossClusterSearchConnectionsOutput = {
    type = "structure",
    id = "DescribeOutboundCrossClusterSearchConnectionsOutput",
    members = {
        CrossClusterSearchConnections = {
            type = "list",
            member = M.OutboundCrossClusterSearchConnection,
        },
        NextToken = {
            type = "string",
        },
    },
}

M.DescribePackagesFilterName = {
    PackageID = "PackageID",
    PackageName = "PackageName",
    PackageStatus = "PackageStatus",
}

M.DescribePackagesFilter = {
    type = "structure",
    id = "DescribePackagesFilter",
    members = {
        Name = {
            type = "string",
        },
        Value = {
            type = "list",
            member = { type = "string" },
        },
    },
}

M.DescribePackagesInput = {
    type = "structure",
    id = "DescribePackagesInput",
    members = {
        Filters = {
            type = "list",
            member = M.DescribePackagesFilter,
        },
        MaxResults = {
            type = "integer",
            traits = {
                default = 0,
            },
        },
        NextToken = {
            type = "string",
        },
    },
}

M.DescribePackagesOutput = {
    type = "structure",
    id = "DescribePackagesOutput",
    members = {
        PackageDetailsList = {
            type = "list",
            member = M.PackageDetails,
        },
        NextToken = {
            type = "string",
        },
    },
}

M.DescribeReservedElasticsearchInstanceOfferingsInput = {
    type = "structure",
    id = "DescribeReservedElasticsearchInstanceOfferingsInput",
    members = {
        ReservedElasticsearchInstanceOfferingId = {
            type = "string",
            traits = {
                http_query = "offeringId",
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

M.ReservedElasticsearchInstancePaymentOption = {
    ALL_UPFRONT = "ALL_UPFRONT",
    PARTIAL_UPFRONT = "PARTIAL_UPFRONT",
    NO_UPFRONT = "NO_UPFRONT",
}

M.RecurringCharge = {
    type = "structure",
    id = "RecurringCharge",
    members = {
        RecurringChargeAmount = {
            type = "double",
        },
        RecurringChargeFrequency = {
            type = "string",
        },
    },
}

M.ReservedElasticsearchInstanceOffering = {
    type = "structure",
    id = "ReservedElasticsearchInstanceOffering",
    members = {
        ReservedElasticsearchInstanceOfferingId = {
            type = "string",
        },
        ElasticsearchInstanceType = {
            type = "string",
        },
        Duration = {
            type = "integer",
            traits = {
                default = 0,
            },
        },
        FixedPrice = {
            type = "double",
        },
        UsagePrice = {
            type = "double",
        },
        CurrencyCode = {
            type = "string",
        },
        PaymentOption = {
            type = "string",
        },
        RecurringCharges = {
            type = "list",
            member = M.RecurringCharge,
        },
    },
}

M.DescribeReservedElasticsearchInstanceOfferingsOutput = {
    type = "structure",
    id = "DescribeReservedElasticsearchInstanceOfferingsOutput",
    members = {
        NextToken = {
            type = "string",
        },
        ReservedElasticsearchInstanceOfferings = {
            type = "list",
            member = M.ReservedElasticsearchInstanceOffering,
        },
    },
}

M.DescribeReservedElasticsearchInstancesInput = {
    type = "structure",
    id = "DescribeReservedElasticsearchInstancesInput",
    members = {
        ReservedElasticsearchInstanceId = {
            type = "string",
            traits = {
                http_query = "reservationId",
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

M.ReservedElasticsearchInstance = {
    type = "structure",
    id = "ReservedElasticsearchInstance",
    members = {
        ReservationName = {
            type = "string",
        },
        ReservedElasticsearchInstanceId = {
            type = "string",
        },
        ReservedElasticsearchInstanceOfferingId = {
            type = "string",
        },
        ElasticsearchInstanceType = {
            type = "string",
        },
        StartTime = {
            type = "timestamp",
        },
        Duration = {
            type = "integer",
            traits = {
                default = 0,
            },
        },
        FixedPrice = {
            type = "double",
        },
        UsagePrice = {
            type = "double",
        },
        CurrencyCode = {
            type = "string",
        },
        ElasticsearchInstanceCount = {
            type = "integer",
            traits = {
                default = 0,
            },
        },
        State = {
            type = "string",
        },
        PaymentOption = {
            type = "string",
        },
        RecurringCharges = {
            type = "list",
            member = M.RecurringCharge,
        },
    },
}

M.DescribeReservedElasticsearchInstancesOutput = {
    type = "structure",
    id = "DescribeReservedElasticsearchInstancesOutput",
    members = {
        NextToken = {
            type = "string",
        },
        ReservedElasticsearchInstances = {
            type = "list",
            member = M.ReservedElasticsearchInstance,
        },
    },
}

M.DescribeVpcEndpointsInput = {
    type = "structure",
    id = "DescribeVpcEndpointsInput",
    members = {
        VpcEndpointIds = {
            type = "list",
            member = { type = "string" },
            traits = {
                required = true,
            },
        },
    },
}

M.VpcEndpointErrorCode = {
    ENDPOINT_NOT_FOUND = "ENDPOINT_NOT_FOUND",
    SERVER_ERROR = "SERVER_ERROR",
}

M.VpcEndpointError = {
    type = "structure",
    id = "VpcEndpointError",
    members = {
        VpcEndpointId = {
            type = "string",
        },
        ErrorCode = {
            type = "string",
        },
        ErrorMessage = {
            type = "string",
        },
    },
}

M.DescribeVpcEndpointsOutput = {
    type = "structure",
    id = "DescribeVpcEndpointsOutput",
    members = {
        VpcEndpoints = {
            type = "list",
            member = M.VpcEndpoint,
            traits = {
                required = true,
            },
        },
        VpcEndpointErrors = {
            type = "list",
            member = M.VpcEndpointError,
            traits = {
                required = true,
            },
        },
    },
}

M.DissociatePackageInput = {
    type = "structure",
    id = "DissociatePackageInput",
    members = {
        PackageID = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        DomainName = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.DissociatePackageOutput = {
    type = "structure",
    id = "DissociatePackageOutput",
    members = {
        DomainPackageDetails = M.DomainPackageDetails,
    },
}

M.GetCompatibleElasticsearchVersionsInput = {
    type = "structure",
    id = "GetCompatibleElasticsearchVersionsInput",
    members = {
        DomainName = {
            type = "string",
            traits = {
                http_query = "domainName",
            },
        },
    },
}

M.CompatibleVersionsMap = {
    type = "structure",
    id = "CompatibleVersionsMap",
    members = {
        SourceVersion = {
            type = "string",
        },
        TargetVersions = {
            type = "list",
            member = { type = "string" },
        },
    },
}

M.GetCompatibleElasticsearchVersionsOutput = {
    type = "structure",
    id = "GetCompatibleElasticsearchVersionsOutput",
    members = {
        CompatibleElasticsearchVersions = {
            type = "list",
            member = M.CompatibleVersionsMap,
        },
    },
}

M.GetPackageVersionHistoryInput = {
    type = "structure",
    id = "GetPackageVersionHistoryInput",
    members = {
        PackageID = {
            type = "string",
            traits = {
                http_label = true,
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

M.PackageVersionHistory = {
    type = "structure",
    id = "PackageVersionHistory",
    members = {
        PackageVersion = {
            type = "string",
        },
        CommitMessage = {
            type = "string",
        },
        CreatedAt = {
            type = "timestamp",
        },
    },
}

M.GetPackageVersionHistoryOutput = {
    type = "structure",
    id = "GetPackageVersionHistoryOutput",
    members = {
        PackageID = {
            type = "string",
        },
        PackageVersionHistoryList = {
            type = "list",
            member = M.PackageVersionHistory,
        },
        NextToken = {
            type = "string",
        },
    },
}

M.GetUpgradeHistoryInput = {
    type = "structure",
    id = "GetUpgradeHistoryInput",
    members = {
        DomainName = {
            type = "string",
            traits = {
                http_label = true,
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

M.UpgradeStep = {
    PRE_UPGRADE_CHECK = "PRE_UPGRADE_CHECK",
    SNAPSHOT = "SNAPSHOT",
    UPGRADE = "UPGRADE",
}

M.UpgradeStatus = {
    IN_PROGRESS = "IN_PROGRESS",
    SUCCEEDED = "SUCCEEDED",
    SUCCEEDED_WITH_ISSUES = "SUCCEEDED_WITH_ISSUES",
    FAILED = "FAILED",
}

M.UpgradeStepItem = {
    type = "structure",
    id = "UpgradeStepItem",
    members = {
        UpgradeStep = {
            type = "string",
        },
        UpgradeStepStatus = {
            type = "string",
        },
        Issues = {
            type = "list",
            member = { type = "string" },
        },
        ProgressPercent = {
            type = "double",
        },
    },
}

M.UpgradeHistory = {
    type = "structure",
    id = "UpgradeHistory",
    members = {
        UpgradeName = {
            type = "string",
        },
        StartTimestamp = {
            type = "timestamp",
        },
        UpgradeStatus = {
            type = "string",
        },
        StepsList = {
            type = "list",
            member = M.UpgradeStepItem,
        },
    },
}

M.GetUpgradeHistoryOutput = {
    type = "structure",
    id = "GetUpgradeHistoryOutput",
    members = {
        UpgradeHistories = {
            type = "list",
            member = M.UpgradeHistory,
        },
        NextToken = {
            type = "string",
        },
    },
}

M.GetUpgradeStatusInput = {
    type = "structure",
    id = "GetUpgradeStatusInput",
    members = {
        DomainName = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.GetUpgradeStatusOutput = {
    type = "structure",
    id = "GetUpgradeStatusOutput",
    members = {
        UpgradeStep = {
            type = "string",
        },
        StepStatus = {
            type = "string",
        },
        UpgradeName = {
            type = "string",
        },
    },
}

M.EngineType = {
    OpenSearch = "OpenSearch",
    Elasticsearch = "Elasticsearch",
}

M.ListDomainNamesInput = {
    type = "structure",
    id = "ListDomainNamesInput",
    members = {
        EngineType = {
            type = "string",
            traits = {
                http_query = "engineType",
            },
        },
    },
}

M.DomainInfo = {
    type = "structure",
    id = "DomainInfo",
    members = {
        DomainName = {
            type = "string",
        },
        EngineType = {
            type = "string",
        },
    },
}

M.ListDomainNamesOutput = {
    type = "structure",
    id = "ListDomainNamesOutput",
    members = {
        DomainNames = {
            type = "list",
            member = M.DomainInfo,
        },
    },
}

M.ListDomainsForPackageInput = {
    type = "structure",
    id = "ListDomainsForPackageInput",
    members = {
        PackageID = {
            type = "string",
            traits = {
                http_label = true,
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

M.ListDomainsForPackageOutput = {
    type = "structure",
    id = "ListDomainsForPackageOutput",
    members = {
        DomainPackageDetailsList = {
            type = "list",
            member = M.DomainPackageDetails,
        },
        NextToken = {
            type = "string",
        },
    },
}

M.ListElasticsearchInstanceTypesInput = {
    type = "structure",
    id = "ListElasticsearchInstanceTypesInput",
    members = {
        ElasticsearchVersion = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        DomainName = {
            type = "string",
            traits = {
                http_query = "domainName",
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

M.ListElasticsearchInstanceTypesOutput = {
    type = "structure",
    id = "ListElasticsearchInstanceTypesOutput",
    members = {
        ElasticsearchInstanceTypes = {
            type = "list",
            member = { type = "string" },
        },
        NextToken = {
            type = "string",
        },
    },
}

M.ListElasticsearchVersionsInput = {
    type = "structure",
    id = "ListElasticsearchVersionsInput",
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

M.ListElasticsearchVersionsOutput = {
    type = "structure",
    id = "ListElasticsearchVersionsOutput",
    members = {
        ElasticsearchVersions = {
            type = "list",
            member = { type = "string" },
        },
        NextToken = {
            type = "string",
        },
    },
}

M.ListPackagesForDomainInput = {
    type = "structure",
    id = "ListPackagesForDomainInput",
    members = {
        DomainName = {
            type = "string",
            traits = {
                http_label = true,
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

M.ListPackagesForDomainOutput = {
    type = "structure",
    id = "ListPackagesForDomainOutput",
    members = {
        DomainPackageDetailsList = {
            type = "list",
            member = M.DomainPackageDetails,
        },
        NextToken = {
            type = "string",
        },
    },
}

M.ListTagsInput = {
    type = "structure",
    id = "ListTagsInput",
    members = {
        ARN = {
            type = "string",
            traits = {
                http_query = "arn",
                required = true,
            },
        },
    },
}

M.ListTagsOutput = {
    type = "structure",
    id = "ListTagsOutput",
    members = {
        TagList = {
            type = "list",
            member = M.Tag,
        },
    },
}

M.ListVpcEndpointAccessInput = {
    type = "structure",
    id = "ListVpcEndpointAccessInput",
    members = {
        DomainName = {
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
    },
}

M.ListVpcEndpointAccessOutput = {
    type = "structure",
    id = "ListVpcEndpointAccessOutput",
    members = {
        AuthorizedPrincipalList = {
            type = "list",
            member = M.AuthorizedPrincipal,
            traits = {
                required = true,
            },
        },
        NextToken = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.ListVpcEndpointsInput = {
    type = "structure",
    id = "ListVpcEndpointsInput",
    members = {
        NextToken = {
            type = "string",
            traits = {
                http_query = "nextToken",
            },
        },
    },
}

M.ListVpcEndpointsOutput = {
    type = "structure",
    id = "ListVpcEndpointsOutput",
    members = {
        VpcEndpointSummaryList = {
            type = "list",
            member = M.VpcEndpointSummary,
            traits = {
                required = true,
            },
        },
        NextToken = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.ListVpcEndpointsForDomainInput = {
    type = "structure",
    id = "ListVpcEndpointsForDomainInput",
    members = {
        DomainName = {
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
    },
}

M.ListVpcEndpointsForDomainOutput = {
    type = "structure",
    id = "ListVpcEndpointsForDomainOutput",
    members = {
        VpcEndpointSummaryList = {
            type = "list",
            member = M.VpcEndpointSummary,
            traits = {
                required = true,
            },
        },
        NextToken = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.PurchaseReservedElasticsearchInstanceOfferingInput = {
    type = "structure",
    id = "PurchaseReservedElasticsearchInstanceOfferingInput",
    members = {
        ReservedElasticsearchInstanceOfferingId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        ReservationName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        InstanceCount = {
            type = "integer",
        },
    },
}

M.PurchaseReservedElasticsearchInstanceOfferingOutput = {
    type = "structure",
    id = "PurchaseReservedElasticsearchInstanceOfferingOutput",
    members = {
        ReservedElasticsearchInstanceId = {
            type = "string",
        },
        ReservationName = {
            type = "string",
        },
    },
}

M.RejectInboundCrossClusterSearchConnectionInput = {
    type = "structure",
    id = "RejectInboundCrossClusterSearchConnectionInput",
    members = {
        CrossClusterSearchConnectionId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.RejectInboundCrossClusterSearchConnectionOutput = {
    type = "structure",
    id = "RejectInboundCrossClusterSearchConnectionOutput",
    members = {
        CrossClusterSearchConnection = M.InboundCrossClusterSearchConnection,
    },
}

M.RemoveTagsInput = {
    type = "structure",
    id = "RemoveTagsInput",
    members = {
        ARN = {
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

M.RemoveTagsOutput = {
    type = "structure",
    id = "RemoveTagsOutput",
}

M.RevokeVpcEndpointAccessInput = {
    type = "structure",
    id = "RevokeVpcEndpointAccessInput",
    members = {
        DomainName = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        Account = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.RevokeVpcEndpointAccessOutput = {
    type = "structure",
    id = "RevokeVpcEndpointAccessOutput",
}

M.StartElasticsearchServiceSoftwareUpdateInput = {
    type = "structure",
    id = "StartElasticsearchServiceSoftwareUpdateInput",
    members = {
        DomainName = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.StartElasticsearchServiceSoftwareUpdateOutput = {
    type = "structure",
    id = "StartElasticsearchServiceSoftwareUpdateOutput",
    members = {
        ServiceSoftwareOptions = M.ServiceSoftwareOptions,
    },
}

M.UpdateElasticsearchDomainConfigInput = {
    type = "structure",
    id = "UpdateElasticsearchDomainConfigInput",
    members = {
        DomainName = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        ElasticsearchClusterConfig = M.ElasticsearchClusterConfig,
        EBSOptions = M.EBSOptions,
        SnapshotOptions = M.SnapshotOptions,
        VPCOptions = M.VPCOptions,
        CognitoOptions = M.CognitoOptions,
        AdvancedOptions = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
        AccessPolicies = {
            type = "string",
        },
        LogPublishingOptions = {
            type = "map",
            key = { type = "string" },
            value = M.LogPublishingOption,
        },
        DomainEndpointOptions = M.DomainEndpointOptions,
        AdvancedSecurityOptions = M.AdvancedSecurityOptionsInput,
        NodeToNodeEncryptionOptions = M.NodeToNodeEncryptionOptions,
        EncryptionAtRestOptions = M.EncryptionAtRestOptions,
        AutoTuneOptions = M.AutoTuneOptions,
        DryRun = {
            type = "boolean",
        },
        DeploymentStrategyOptions = M.DeploymentStrategyOptions,
    },
}

M.DryRunResults = {
    type = "structure",
    id = "DryRunResults",
    members = {
        DeploymentType = {
            type = "string",
        },
        Message = {
            type = "string",
        },
    },
}

M.UpdateElasticsearchDomainConfigOutput = {
    type = "structure",
    id = "UpdateElasticsearchDomainConfigOutput",
    members = {
        DomainConfig = setmetatable({ traits = {
            required = true,
        } }, { __index = M.ElasticsearchDomainConfig }),
        DryRunResults = M.DryRunResults,
    },
}

M.UpdatePackageInput = {
    type = "structure",
    id = "UpdatePackageInput",
    members = {
        PackageID = {
            type = "string",
            traits = {
                required = true,
            },
        },
        PackageSource = setmetatable({ traits = {
            required = true,
        } }, { __index = M.PackageSource }),
        PackageDescription = {
            type = "string",
        },
        CommitMessage = {
            type = "string",
        },
    },
}

M.UpdatePackageOutput = {
    type = "structure",
    id = "UpdatePackageOutput",
    members = {
        PackageDetails = M.PackageDetails,
    },
}

M.UpdateVpcEndpointInput = {
    type = "structure",
    id = "UpdateVpcEndpointInput",
    members = {
        VpcEndpointId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        VpcOptions = setmetatable({ traits = {
            required = true,
        } }, { __index = M.VPCOptions }),
    },
}

M.UpdateVpcEndpointOutput = {
    type = "structure",
    id = "UpdateVpcEndpointOutput",
    members = {
        VpcEndpoint = setmetatable({ traits = {
            required = true,
        } }, { __index = M.VpcEndpoint }),
    },
}

M.UpgradeElasticsearchDomainInput = {
    type = "structure",
    id = "UpgradeElasticsearchDomainInput",
    members = {
        DomainName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        TargetVersion = {
            type = "string",
            traits = {
                required = true,
            },
        },
        PerformCheckOnly = {
            type = "boolean",
        },
    },
}

M.UpgradeElasticsearchDomainOutput = {
    type = "structure",
    id = "UpgradeElasticsearchDomainOutput",
    members = {
        DomainName = {
            type = "string",
        },
        TargetVersion = {
            type = "string",
        },
        PerformCheckOnly = {
            type = "boolean",
        },
        ChangeProgressDetails = M.ChangeProgressDetails,
    },
}

return M
