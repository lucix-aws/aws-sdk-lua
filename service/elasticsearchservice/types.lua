local M = {}

M.AcceptInboundCrossClusterSearchConnectionInput = {
    type = "structure",
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
    members = {
        SourceDomainInfo = {
            type = "structure",
        },
        DestinationDomainInfo = {
            type = "structure",
        },
        CrossClusterSearchConnectionId = {
            type = "string",
        },
        ConnectionStatus = {
            type = "structure",
        },
    },
}

M.AcceptInboundCrossClusterSearchConnectionOutput = {
    type = "structure",
    members = {
        CrossClusterSearchConnection = {
            type = "structure",
        },
    },
}

M.DisabledOperationException = {
    type = "structure",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.LimitExceededException = {
    type = "structure",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.ResourceNotFoundException = {
    type = "structure",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.AccessDeniedException = {
    type = "structure",
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
            type = "number",
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
    members = {
        Options = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Status = {
            type = "structure",
            traits = {
                required = true,
            },
        },
    },
}

M.AdditionalLimit = {
    type = "structure",
    members = {
        LimitName = {
            type = "string",
        },
        LimitValues = {
            type = "list",
            member_type = "string",
        },
    },
}

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

M.AddTagsInput = {
    type = "structure",
    members = {
        ARN = {
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

M.AddTagsOutput = {
    type = "structure",
}

M.BaseException = {
    type = "structure",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.InternalException = {
    type = "structure",
    error = "server",
    members = {
        message = {
            type = "string",
        },
    },
}

M.ValidationException = {
    type = "structure",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.AdvancedOptionsStatus = {
    type = "structure",
    members = {
        Options = {
            type = "map",
            key_type = "string",
            value_type = "string",
            traits = {
                required = true,
            },
        },
        Status = {
            type = "structure",
            traits = {
                required = true,
            },
        },
    },
}

M.SAMLIdp = {
    type = "structure",
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
    members = {
        Enabled = {
            type = "boolean",
        },
        Idp = {
            type = "structure",
        },
        SubjectKey = {
            type = "string",
        },
        RolesKey = {
            type = "string",
        },
        SessionTimeoutMinutes = {
            type = "number",
        },
    },
}

M.AdvancedSecurityOptions = {
    type = "structure",
    members = {
        Enabled = {
            type = "boolean",
        },
        InternalUserDatabaseEnabled = {
            type = "boolean",
        },
        SAMLOptions = {
            type = "structure",
        },
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
    members = {
        Enabled = {
            type = "boolean",
        },
        Idp = {
            type = "structure",
        },
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
            type = "number",
        },
    },
}

M.AdvancedSecurityOptionsInput = {
    type = "structure",
    members = {
        Enabled = {
            type = "boolean",
        },
        InternalUserDatabaseEnabled = {
            type = "boolean",
        },
        MasterUserOptions = {
            type = "structure",
        },
        SAMLOptions = {
            type = "structure",
        },
        AnonymousAuthEnabled = {
            type = "boolean",
        },
    },
}

M.AdvancedSecurityOptionsStatus = {
    type = "structure",
    members = {
        Options = {
            type = "structure",
            traits = {
                required = true,
            },
        },
        Status = {
            type = "structure",
            traits = {
                required = true,
            },
        },
    },
}

M.AssociatePackageInput = {
    type = "structure",
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
        ErrorDetails = {
            type = "structure",
        },
    },
}

M.AssociatePackageOutput = {
    type = "structure",
    members = {
        DomainPackageDetails = {
            type = "structure",
        },
    },
}

M.ConflictException = {
    type = "structure",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.AuthorizeVpcEndpointAccessInput = {
    type = "structure",
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
    members = {
        AuthorizedPrincipal = {
            type = "structure",
            traits = {
                required = true,
            },
        },
    },
}

M.CancelDomainConfigChangeInput = {
    type = "structure",
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
    members = {
        DryRun = {
            type = "boolean",
        },
        CancelledChangeIds = {
            type = "list",
            member_type = "string",
        },
        CancelledChangeProperties = {
            type = "list",
            member_type = "structure",
        },
    },
}

M.CancelElasticsearchServiceSoftwareUpdateInput = {
    type = "structure",
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
    members = {
        ServiceSoftwareOptions = {
            type = "structure",
        },
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
    members = {
        Value = {
            type = "number",
        },
        Unit = {
            type = "string",
        },
    },
}

M.AutoTuneMaintenanceSchedule = {
    type = "structure",
    members = {
        StartAt = {
            type = "timestamp",
        },
        Duration = {
            type = "structure",
        },
        CronExpressionForRecurrence = {
            type = "string",
        },
    },
}

M.AutoTuneOptionsInput = {
    type = "structure",
    members = {
        DesiredState = {
            type = "string",
        },
        MaintenanceSchedules = {
            type = "list",
            member_type = "structure",
        },
    },
}

M.CognitoOptions = {
    type = "structure",
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
    members = {
        EBSEnabled = {
            type = "boolean",
        },
        VolumeType = {
            type = "string",
        },
        VolumeSize = {
            type = "number",
        },
        Iops = {
            type = "number",
        },
        Throughput = {
            type = "number",
        },
    },
}

M.ColdStorageOptions = {
    type = "structure",
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
    members = {
        AvailabilityZoneCount = {
            type = "number",
        },
    },
}

M.ElasticsearchClusterConfig = {
    type = "structure",
    members = {
        InstanceType = {
            type = "string",
        },
        InstanceCount = {
            type = "number",
        },
        DedicatedMasterEnabled = {
            type = "boolean",
        },
        ZoneAwarenessEnabled = {
            type = "boolean",
        },
        ZoneAwarenessConfig = {
            type = "structure",
        },
        DedicatedMasterType = {
            type = "string",
        },
        DedicatedMasterCount = {
            type = "number",
        },
        WarmEnabled = {
            type = "boolean",
        },
        WarmType = {
            type = "string",
        },
        WarmCount = {
            type = "number",
        },
        ColdStorageOptions = {
            type = "structure",
        },
    },
}

M.EncryptionAtRestOptions = {
    type = "structure",
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
    members = {
        Enabled = {
            type = "boolean",
        },
    },
}

M.SnapshotOptions = {
    type = "structure",
    members = {
        AutomatedSnapshotStartHour = {
            type = "number",
        },
    },
}

M.VPCOptions = {
    type = "structure",
    members = {
        SubnetIds = {
            type = "list",
            member_type = "string",
        },
        SecurityGroupIds = {
            type = "list",
            member_type = "string",
        },
    },
}

M.CreateElasticsearchDomainInput = {
    type = "structure",
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
        ElasticsearchClusterConfig = {
            type = "structure",
        },
        EBSOptions = {
            type = "structure",
        },
        AccessPolicies = {
            type = "string",
        },
        SnapshotOptions = {
            type = "structure",
        },
        VPCOptions = {
            type = "structure",
        },
        CognitoOptions = {
            type = "structure",
        },
        EncryptionAtRestOptions = {
            type = "structure",
        },
        NodeToNodeEncryptionOptions = {
            type = "structure",
        },
        AdvancedOptions = {
            type = "map",
            key_type = "string",
            value_type = "string",
        },
        LogPublishingOptions = {
            type = "map",
            key_type = "string",
            value_type = "structure",
        },
        DomainEndpointOptions = {
            type = "structure",
        },
        AdvancedSecurityOptions = {
            type = "structure",
        },
        AutoTuneOptions = {
            type = "structure",
        },
        TagList = {
            type = "list",
            member_type = "structure",
        },
        DeploymentStrategyOptions = {
            type = "structure",
        },
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
    members = {
        VPCId = {
            type = "string",
        },
        SubnetIds = {
            type = "list",
            member_type = "string",
        },
        AvailabilityZones = {
            type = "list",
            member_type = "string",
        },
        SecurityGroupIds = {
            type = "list",
            member_type = "string",
        },
    },
}

M.ElasticsearchDomainStatus = {
    type = "structure",
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
            key_type = "string",
            value_type = "string",
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
        ElasticsearchClusterConfig = {
            type = "structure",
            traits = {
                required = true,
            },
        },
        EBSOptions = {
            type = "structure",
        },
        AccessPolicies = {
            type = "string",
        },
        SnapshotOptions = {
            type = "structure",
        },
        VPCOptions = {
            type = "structure",
        },
        CognitoOptions = {
            type = "structure",
        },
        EncryptionAtRestOptions = {
            type = "structure",
        },
        NodeToNodeEncryptionOptions = {
            type = "structure",
        },
        AdvancedOptions = {
            type = "map",
            key_type = "string",
            value_type = "string",
        },
        LogPublishingOptions = {
            type = "map",
            key_type = "string",
            value_type = "structure",
        },
        ServiceSoftwareOptions = {
            type = "structure",
        },
        DomainEndpointOptions = {
            type = "structure",
        },
        AdvancedSecurityOptions = {
            type = "structure",
        },
        AutoTuneOptions = {
            type = "structure",
        },
        ChangeProgressDetails = {
            type = "structure",
        },
        DomainProcessingStatus = {
            type = "string",
        },
        ModifyingProperties = {
            type = "list",
            member_type = "structure",
        },
        DeploymentStrategyOptions = {
            type = "structure",
        },
    },
}

M.CreateElasticsearchDomainOutput = {
    type = "structure",
    members = {
        DomainStatus = {
            type = "structure",
        },
    },
}

M.InvalidTypeException = {
    type = "structure",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.ResourceAlreadyExistsException = {
    type = "structure",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.CreateOutboundCrossClusterSearchConnectionInput = {
    type = "structure",
    members = {
        SourceDomainInfo = {
            type = "structure",
            traits = {
                required = true,
            },
        },
        DestinationDomainInfo = {
            type = "structure",
            traits = {
                required = true,
            },
        },
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
    members = {
        SourceDomainInfo = {
            type = "structure",
        },
        DestinationDomainInfo = {
            type = "structure",
        },
        ConnectionAlias = {
            type = "string",
        },
        ConnectionStatus = {
            type = "structure",
        },
        CrossClusterSearchConnectionId = {
            type = "string",
        },
    },
}

M.PackageSource = {
    type = "structure",
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
        PackageSource = {
            type = "structure",
            traits = {
                required = true,
            },
        },
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
        ErrorDetails = {
            type = "structure",
        },
    },
}

M.CreatePackageOutput = {
    type = "structure",
    members = {
        PackageDetails = {
            type = "structure",
        },
    },
}

M.CreateVpcEndpointInput = {
    type = "structure",
    members = {
        DomainArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        VpcOptions = {
            type = "structure",
            traits = {
                required = true,
            },
        },
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
        VpcOptions = {
            type = "structure",
        },
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
    members = {
        VpcEndpoint = {
            type = "structure",
            traits = {
                required = true,
            },
        },
    },
}

M.DeleteElasticsearchDomainInput = {
    type = "structure",
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
    members = {
        DomainStatus = {
            type = "structure",
        },
    },
}

M.DeleteElasticsearchServiceRoleInput = {
    type = "structure",
}

M.DeleteElasticsearchServiceRoleOutput = {
    type = "structure",
}

M.DeleteInboundCrossClusterSearchConnectionInput = {
    type = "structure",
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
    members = {
        CrossClusterSearchConnection = {
            type = "structure",
        },
    },
}

M.DeleteOutboundCrossClusterSearchConnectionInput = {
    type = "structure",
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
    members = {
        SourceDomainInfo = {
            type = "structure",
        },
        DestinationDomainInfo = {
            type = "structure",
        },
        CrossClusterSearchConnectionId = {
            type = "string",
        },
        ConnectionAlias = {
            type = "string",
        },
        ConnectionStatus = {
            type = "structure",
        },
    },
}

M.DeleteOutboundCrossClusterSearchConnectionOutput = {
    type = "structure",
    members = {
        CrossClusterSearchConnection = {
            type = "structure",
        },
    },
}

M.DeletePackageInput = {
    type = "structure",
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
    members = {
        PackageDetails = {
            type = "structure",
        },
    },
}

M.DeleteVpcEndpointInput = {
    type = "structure",
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
    members = {
        VpcEndpointSummary = {
            type = "structure",
            traits = {
                required = true,
            },
        },
    },
}

M.DescribeDomainAutoTunesInput = {
    type = "structure",
    members = {
        DomainName = {
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
    members = {
        ScheduledAutoTuneDetails = {
            type = "structure",
        },
    },
}

M.AutoTuneType = {
    SCHEDULED_ACTION = "SCHEDULED_ACTION",
}

M.AutoTune = {
    type = "structure",
    members = {
        AutoTuneType = {
            type = "string",
        },
        AutoTuneDetails = {
            type = "structure",
        },
    },
}

M.DescribeDomainAutoTunesOutput = {
    type = "structure",
    members = {
        AutoTunes = {
            type = "list",
            member_type = "structure",
        },
        NextToken = {
            type = "string",
        },
    },
}

M.DescribeDomainChangeProgressInput = {
    type = "structure",
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
            member_type = "string",
        },
        CompletedProperties = {
            type = "list",
            member_type = "string",
        },
        TotalNumberOfStages = {
            type = "number",
        },
        ChangeProgressStages = {
            type = "list",
            member_type = "structure",
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
    members = {
        ChangeProgressStatus = {
            type = "structure",
        },
    },
}

M.DescribeElasticsearchDomainInput = {
    type = "structure",
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
    members = {
        DomainStatus = {
            type = "structure",
            traits = {
                required = true,
            },
        },
    },
}

M.DescribeElasticsearchDomainConfigInput = {
    type = "structure",
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
    members = {
        DesiredState = {
            type = "string",
        },
        RollbackOnDisable = {
            type = "string",
        },
        MaintenanceSchedules = {
            type = "list",
            member_type = "structure",
        },
    },
}

M.AutoTuneStatus = {
    type = "structure",
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
            type = "number",
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
    members = {
        Options = {
            type = "structure",
        },
        Status = {
            type = "structure",
        },
    },
}

M.CognitoOptionsStatus = {
    type = "structure",
    members = {
        Options = {
            type = "structure",
            traits = {
                required = true,
            },
        },
        Status = {
            type = "structure",
            traits = {
                required = true,
            },
        },
    },
}

M.DeploymentStrategyOptionsStatus = {
    type = "structure",
    members = {
        Options = {
            type = "structure",
            traits = {
                required = true,
            },
        },
        Status = {
            type = "structure",
            traits = {
                required = true,
            },
        },
    },
}

M.DomainEndpointOptionsStatus = {
    type = "structure",
    members = {
        Options = {
            type = "structure",
            traits = {
                required = true,
            },
        },
        Status = {
            type = "structure",
            traits = {
                required = true,
            },
        },
    },
}

M.EBSOptionsStatus = {
    type = "structure",
    members = {
        Options = {
            type = "structure",
            traits = {
                required = true,
            },
        },
        Status = {
            type = "structure",
            traits = {
                required = true,
            },
        },
    },
}

M.ElasticsearchClusterConfigStatus = {
    type = "structure",
    members = {
        Options = {
            type = "structure",
            traits = {
                required = true,
            },
        },
        Status = {
            type = "structure",
            traits = {
                required = true,
            },
        },
    },
}

M.ElasticsearchVersionStatus = {
    type = "structure",
    members = {
        Options = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Status = {
            type = "structure",
            traits = {
                required = true,
            },
        },
    },
}

M.EncryptionAtRestOptionsStatus = {
    type = "structure",
    members = {
        Options = {
            type = "structure",
            traits = {
                required = true,
            },
        },
        Status = {
            type = "structure",
            traits = {
                required = true,
            },
        },
    },
}

M.LogPublishingOptionsStatus = {
    type = "structure",
    members = {
        Options = {
            type = "map",
            key_type = "string",
            value_type = "structure",
        },
        Status = {
            type = "structure",
        },
    },
}

M.NodeToNodeEncryptionOptionsStatus = {
    type = "structure",
    members = {
        Options = {
            type = "structure",
            traits = {
                required = true,
            },
        },
        Status = {
            type = "structure",
            traits = {
                required = true,
            },
        },
    },
}

M.SnapshotOptionsStatus = {
    type = "structure",
    members = {
        Options = {
            type = "structure",
            traits = {
                required = true,
            },
        },
        Status = {
            type = "structure",
            traits = {
                required = true,
            },
        },
    },
}

M.VPCDerivedInfoStatus = {
    type = "structure",
    members = {
        Options = {
            type = "structure",
            traits = {
                required = true,
            },
        },
        Status = {
            type = "structure",
            traits = {
                required = true,
            },
        },
    },
}

M.ElasticsearchDomainConfig = {
    type = "structure",
    members = {
        ElasticsearchVersion = {
            type = "structure",
        },
        ElasticsearchClusterConfig = {
            type = "structure",
        },
        EBSOptions = {
            type = "structure",
        },
        AccessPolicies = {
            type = "structure",
        },
        SnapshotOptions = {
            type = "structure",
        },
        VPCOptions = {
            type = "structure",
        },
        CognitoOptions = {
            type = "structure",
        },
        EncryptionAtRestOptions = {
            type = "structure",
        },
        NodeToNodeEncryptionOptions = {
            type = "structure",
        },
        AdvancedOptions = {
            type = "structure",
        },
        LogPublishingOptions = {
            type = "structure",
        },
        DomainEndpointOptions = {
            type = "structure",
        },
        AdvancedSecurityOptions = {
            type = "structure",
        },
        AutoTuneOptions = {
            type = "structure",
        },
        ChangeProgressDetails = {
            type = "structure",
        },
        ModifyingProperties = {
            type = "list",
            member_type = "structure",
        },
        DeploymentStrategyOptions = {
            type = "structure",
        },
    },
}

M.DescribeElasticsearchDomainConfigOutput = {
    type = "structure",
    members = {
        DomainConfig = {
            type = "structure",
            traits = {
                required = true,
            },
        },
    },
}

M.DescribeElasticsearchDomainsInput = {
    type = "structure",
    members = {
        DomainNames = {
            type = "list",
            member_type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.DescribeElasticsearchDomainsOutput = {
    type = "structure",
    members = {
        DomainStatusList = {
            type = "list",
            member_type = "structure",
            traits = {
                required = true,
            },
        },
    },
}

M.DescribeElasticsearchInstanceTypeLimitsInput = {
    type = "structure",
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
    members = {
        MinimumInstanceCount = {
            type = "number",
        },
        MaximumInstanceCount = {
            type = "number",
        },
    },
}

M.InstanceLimits = {
    type = "structure",
    members = {
        InstanceCountLimits = {
            type = "structure",
        },
    },
}

M.StorageTypeLimit = {
    type = "structure",
    members = {
        LimitName = {
            type = "string",
        },
        LimitValues = {
            type = "list",
            member_type = "string",
        },
    },
}

M.StorageType = {
    type = "structure",
    members = {
        StorageTypeName = {
            type = "string",
        },
        StorageSubTypeName = {
            type = "string",
        },
        StorageTypeLimits = {
            type = "list",
            member_type = "structure",
        },
    },
}

M.Limits = {
    type = "structure",
    members = {
        StorageTypes = {
            type = "list",
            member_type = "structure",
        },
        InstanceLimits = {
            type = "structure",
        },
        AdditionalLimits = {
            type = "list",
            member_type = "structure",
        },
    },
}

M.DescribeElasticsearchInstanceTypeLimitsOutput = {
    type = "structure",
    members = {
        LimitsByRole = {
            type = "map",
            key_type = "string",
            value_type = "structure",
        },
    },
}

M.Filter = {
    type = "structure",
    members = {
        Name = {
            type = "string",
        },
        Values = {
            type = "list",
            member_type = "string",
        },
    },
}

M.DescribeInboundCrossClusterSearchConnectionsInput = {
    type = "structure",
    members = {
        Filters = {
            type = "list",
            member_type = "structure",
        },
        MaxResults = {
            type = "number",
        },
        NextToken = {
            type = "string",
        },
    },
}

M.DescribeInboundCrossClusterSearchConnectionsOutput = {
    type = "structure",
    members = {
        CrossClusterSearchConnections = {
            type = "list",
            member_type = "structure",
        },
        NextToken = {
            type = "string",
        },
    },
}

M.InvalidPaginationTokenException = {
    type = "structure",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.DescribeOutboundCrossClusterSearchConnectionsInput = {
    type = "structure",
    members = {
        Filters = {
            type = "list",
            member_type = "structure",
        },
        MaxResults = {
            type = "number",
        },
        NextToken = {
            type = "string",
        },
    },
}

M.DescribeOutboundCrossClusterSearchConnectionsOutput = {
    type = "structure",
    members = {
        CrossClusterSearchConnections = {
            type = "list",
            member_type = "structure",
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
    members = {
        Name = {
            type = "string",
        },
        Value = {
            type = "list",
            member_type = "string",
        },
    },
}

M.DescribePackagesInput = {
    type = "structure",
    members = {
        Filters = {
            type = "list",
            member_type = "structure",
        },
        MaxResults = {
            type = "number",
        },
        NextToken = {
            type = "string",
        },
    },
}

M.DescribePackagesOutput = {
    type = "structure",
    members = {
        PackageDetailsList = {
            type = "list",
            member_type = "structure",
        },
        NextToken = {
            type = "string",
        },
    },
}

M.DescribeReservedElasticsearchInstanceOfferingsInput = {
    type = "structure",
    members = {
        ReservedElasticsearchInstanceOfferingId = {
            type = "string",
            traits = {
                http_query = "offeringId",
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

M.ReservedElasticsearchInstancePaymentOption = {
    ALL_UPFRONT = "ALL_UPFRONT",
    PARTIAL_UPFRONT = "PARTIAL_UPFRONT",
    NO_UPFRONT = "NO_UPFRONT",
}

M.RecurringCharge = {
    type = "structure",
    members = {
        RecurringChargeAmount = {
            type = "number",
        },
        RecurringChargeFrequency = {
            type = "string",
        },
    },
}

M.ReservedElasticsearchInstanceOffering = {
    type = "structure",
    members = {
        ReservedElasticsearchInstanceOfferingId = {
            type = "string",
        },
        ElasticsearchInstanceType = {
            type = "string",
        },
        Duration = {
            type = "number",
        },
        FixedPrice = {
            type = "number",
        },
        UsagePrice = {
            type = "number",
        },
        CurrencyCode = {
            type = "string",
        },
        PaymentOption = {
            type = "string",
        },
        RecurringCharges = {
            type = "list",
            member_type = "structure",
        },
    },
}

M.DescribeReservedElasticsearchInstanceOfferingsOutput = {
    type = "structure",
    members = {
        NextToken = {
            type = "string",
        },
        ReservedElasticsearchInstanceOfferings = {
            type = "list",
            member_type = "structure",
        },
    },
}

M.DescribeReservedElasticsearchInstancesInput = {
    type = "structure",
    members = {
        ReservedElasticsearchInstanceId = {
            type = "string",
            traits = {
                http_query = "reservationId",
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

M.ReservedElasticsearchInstance = {
    type = "structure",
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
            type = "number",
        },
        FixedPrice = {
            type = "number",
        },
        UsagePrice = {
            type = "number",
        },
        CurrencyCode = {
            type = "string",
        },
        ElasticsearchInstanceCount = {
            type = "number",
        },
        State = {
            type = "string",
        },
        PaymentOption = {
            type = "string",
        },
        RecurringCharges = {
            type = "list",
            member_type = "structure",
        },
    },
}

M.DescribeReservedElasticsearchInstancesOutput = {
    type = "structure",
    members = {
        NextToken = {
            type = "string",
        },
        ReservedElasticsearchInstances = {
            type = "list",
            member_type = "structure",
        },
    },
}

M.DescribeVpcEndpointsInput = {
    type = "structure",
    members = {
        VpcEndpointIds = {
            type = "list",
            member_type = "string",
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
    members = {
        VpcEndpoints = {
            type = "list",
            member_type = "structure",
            traits = {
                required = true,
            },
        },
        VpcEndpointErrors = {
            type = "list",
            member_type = "structure",
            traits = {
                required = true,
            },
        },
    },
}

M.DissociatePackageInput = {
    type = "structure",
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
    members = {
        DomainPackageDetails = {
            type = "structure",
        },
    },
}

M.GetCompatibleElasticsearchVersionsInput = {
    type = "structure",
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
    members = {
        SourceVersion = {
            type = "string",
        },
        TargetVersions = {
            type = "list",
            member_type = "string",
        },
    },
}

M.GetCompatibleElasticsearchVersionsOutput = {
    type = "structure",
    members = {
        CompatibleElasticsearchVersions = {
            type = "list",
            member_type = "structure",
        },
    },
}

M.GetPackageVersionHistoryInput = {
    type = "structure",
    members = {
        PackageID = {
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

M.PackageVersionHistory = {
    type = "structure",
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
    members = {
        PackageID = {
            type = "string",
        },
        PackageVersionHistoryList = {
            type = "list",
            member_type = "structure",
        },
        NextToken = {
            type = "string",
        },
    },
}

M.GetUpgradeHistoryInput = {
    type = "structure",
    members = {
        DomainName = {
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
    members = {
        UpgradeStep = {
            type = "string",
        },
        UpgradeStepStatus = {
            type = "string",
        },
        Issues = {
            type = "list",
            member_type = "string",
        },
        ProgressPercent = {
            type = "number",
        },
    },
}

M.UpgradeHistory = {
    type = "structure",
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
            member_type = "structure",
        },
    },
}

M.GetUpgradeHistoryOutput = {
    type = "structure",
    members = {
        UpgradeHistories = {
            type = "list",
            member_type = "structure",
        },
        NextToken = {
            type = "string",
        },
    },
}

M.GetUpgradeStatusInput = {
    type = "structure",
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
    members = {
        DomainNames = {
            type = "list",
            member_type = "structure",
        },
    },
}

M.ListDomainsForPackageInput = {
    type = "structure",
    members = {
        PackageID = {
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

M.ListDomainsForPackageOutput = {
    type = "structure",
    members = {
        DomainPackageDetailsList = {
            type = "list",
            member_type = "structure",
        },
        NextToken = {
            type = "string",
        },
    },
}

M.ListElasticsearchInstanceTypesInput = {
    type = "structure",
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

M.ListElasticsearchInstanceTypesOutput = {
    type = "structure",
    members = {
        ElasticsearchInstanceTypes = {
            type = "list",
            member_type = "string",
        },
        NextToken = {
            type = "string",
        },
    },
}

M.ListElasticsearchVersionsInput = {
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

M.ListElasticsearchVersionsOutput = {
    type = "structure",
    members = {
        ElasticsearchVersions = {
            type = "list",
            member_type = "string",
        },
        NextToken = {
            type = "string",
        },
    },
}

M.ListPackagesForDomainInput = {
    type = "structure",
    members = {
        DomainName = {
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

M.ListPackagesForDomainOutput = {
    type = "structure",
    members = {
        DomainPackageDetailsList = {
            type = "list",
            member_type = "structure",
        },
        NextToken = {
            type = "string",
        },
    },
}

M.ListTagsInput = {
    type = "structure",
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
    members = {
        TagList = {
            type = "list",
            member_type = "structure",
        },
    },
}

M.ListVpcEndpointAccessInput = {
    type = "structure",
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
    members = {
        AuthorizedPrincipalList = {
            type = "list",
            member_type = "structure",
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
    members = {
        VpcEndpointSummaryList = {
            type = "list",
            member_type = "structure",
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
    members = {
        VpcEndpointSummaryList = {
            type = "list",
            member_type = "structure",
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
            type = "number",
        },
    },
}

M.PurchaseReservedElasticsearchInstanceOfferingOutput = {
    type = "structure",
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
    members = {
        CrossClusterSearchConnection = {
            type = "structure",
        },
    },
}

M.RemoveTagsInput = {
    type = "structure",
    members = {
        ARN = {
            type = "string",
            traits = {
                required = true,
            },
        },
        TagKeys = {
            type = "list",
            member_type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.RemoveTagsOutput = {
    type = "structure",
}

M.RevokeVpcEndpointAccessInput = {
    type = "structure",
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
}

M.StartElasticsearchServiceSoftwareUpdateInput = {
    type = "structure",
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
    members = {
        ServiceSoftwareOptions = {
            type = "structure",
        },
    },
}

M.UpdateElasticsearchDomainConfigInput = {
    type = "structure",
    members = {
        DomainName = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        ElasticsearchClusterConfig = {
            type = "structure",
        },
        EBSOptions = {
            type = "structure",
        },
        SnapshotOptions = {
            type = "structure",
        },
        VPCOptions = {
            type = "structure",
        },
        CognitoOptions = {
            type = "structure",
        },
        AdvancedOptions = {
            type = "map",
            key_type = "string",
            value_type = "string",
        },
        AccessPolicies = {
            type = "string",
        },
        LogPublishingOptions = {
            type = "map",
            key_type = "string",
            value_type = "structure",
        },
        DomainEndpointOptions = {
            type = "structure",
        },
        AdvancedSecurityOptions = {
            type = "structure",
        },
        NodeToNodeEncryptionOptions = {
            type = "structure",
        },
        EncryptionAtRestOptions = {
            type = "structure",
        },
        AutoTuneOptions = {
            type = "structure",
        },
        DryRun = {
            type = "boolean",
        },
        DeploymentStrategyOptions = {
            type = "structure",
        },
    },
}

M.DryRunResults = {
    type = "structure",
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
    members = {
        DomainConfig = {
            type = "structure",
            traits = {
                required = true,
            },
        },
        DryRunResults = {
            type = "structure",
        },
    },
}

M.UpdatePackageInput = {
    type = "structure",
    members = {
        PackageID = {
            type = "string",
            traits = {
                required = true,
            },
        },
        PackageSource = {
            type = "structure",
            traits = {
                required = true,
            },
        },
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
    members = {
        PackageDetails = {
            type = "structure",
        },
    },
}

M.UpdateVpcEndpointInput = {
    type = "structure",
    members = {
        VpcEndpointId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        VpcOptions = {
            type = "structure",
            traits = {
                required = true,
            },
        },
    },
}

M.UpdateVpcEndpointOutput = {
    type = "structure",
    members = {
        VpcEndpoint = {
            type = "structure",
            traits = {
                required = true,
            },
        },
    },
}

M.UpgradeElasticsearchDomainInput = {
    type = "structure",
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
        ChangeProgressDetails = {
            type = "structure",
        },
    },
}

return M
