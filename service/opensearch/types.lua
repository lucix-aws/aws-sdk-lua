local M = {}

M.AcceptInboundConnectionInput = {
    type = "structure",
    members = {
        ConnectionId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.ConnectionMode = {
    DIRECT = "DIRECT",
    VPC_ENDPOINT = "VPC_ENDPOINT",
}

M.InboundConnectionStatusCode = {
    PENDING_ACCEPTANCE = "PENDING_ACCEPTANCE",
    APPROVED = "APPROVED",
    PROVISIONING = "PROVISIONING",
    ACTIVE = "ACTIVE",
    REJECTING = "REJECTING",
    REJECTED = "REJECTED",
    DELETING = "DELETING",
    DELETED = "DELETED",
}

M.InboundConnectionStatus = {
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

M.AWSDomainInformation = {
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

M.DomainInformationContainer = {
    type = "structure",
    members = {
        AWSDomainInformation = {
            type = "structure",
        },
    },
}

M.InboundConnection = {
    type = "structure",
    members = {
        LocalDomainInfo = {
            type = "structure",
        },
        RemoteDomainInfo = {
            type = "structure",
        },
        ConnectionId = {
            type = "string",
        },
        ConnectionStatus = {
            type = "structure",
        },
        ConnectionMode = {
            type = "string",
        },
    },
}

M.AcceptInboundConnectionOutput = {
    type = "structure",
    members = {
        Connection = {
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

M.ActionSeverity = {
    HIGH = "HIGH",
    MEDIUM = "MEDIUM",
    LOW = "LOW",
}

M.ActionStatus = {
    PENDING_UPDATE = "PENDING_UPDATE",
    IN_PROGRESS = "IN_PROGRESS",
    FAILED = "FAILED",
    COMPLETED = "COMPLETED",
    NOT_ELIGIBLE = "NOT_ELIGIBLE",
    ELIGIBLE = "ELIGIBLE",
}

M.ActionType = {
    SERVICE_SOFTWARE_UPDATE = "SERVICE_SOFTWARE_UPDATE",
    JVM_HEAP_SIZE_TUNING = "JVM_HEAP_SIZE_TUNING",
    JVM_YOUNG_GEN_TUNING = "JVM_YOUNG_GEN_TUNING",
}

M.S3GlueDataCatalog = {
    type = "structure",
    members = {
        RoleArn = {
            type = "string",
        },
    },
}

M.DataSourceType = {
    type = "union",
    members = {
        S3GlueDataCatalog = {
            type = "structure",
        },
    },
}

M.AddDataSourceInput = {
    type = "structure",
    members = {
        DomainName = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        Name = {
            type = "string",
            traits = {
                required = true,
            },
        },
        DataSourceType = {
            type = "union",
            traits = {
                required = true,
            },
        },
        Description = {
            type = "string",
        },
    },
}

M.AddDataSourceOutput = {
    type = "structure",
    members = {
        Message = {
            type = "string",
        },
    },
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

M.DependencyFailureException = {
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

M.CloudWatchDirectQueryDataSource = {
    type = "structure",
    members = {
        RoleArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.PrometheusDirectQueryDataSource = {
    type = "structure",
    members = {
        RoleArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        WorkspaceArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.SecurityLakeDirectQueryDataSource = {
    type = "structure",
    members = {
        RoleArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.DirectQueryDataSourceType = {
    type = "union",
    members = {
        CloudWatchLog = {
            type = "structure",
        },
        SecurityLake = {
            type = "structure",
        },
        Prometheus = {
            type = "structure",
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

M.AddDirectQueryDataSourceInput = {
    type = "structure",
    members = {
        DataSourceName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        DataSourceType = {
            type = "union",
            traits = {
                required = true,
            },
        },
        Description = {
            type = "string",
        },
        OpenSearchArns = {
            type = "list",
            member_type = "string",
        },
        DataSourceAccessPolicy = {
            type = "string",
        },
        TagList = {
            type = "list",
            member_type = "structure",
        },
    },
}

M.AddDirectQueryDataSourceOutput = {
    type = "structure",
    members = {
        DataSourceArn = {
            type = "string",
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

M.IAMFederationOptionsOutput = {
    type = "structure",
    members = {
        Enabled = {
            type = "boolean",
        },
        SubjectKey = {
            type = "string",
        },
        RolesKey = {
            type = "string",
        },
    },
}

M.JWTOptionsOutput = {
    type = "structure",
    members = {
        Enabled = {
            type = "boolean",
        },
        SubjectKey = {
            type = "string",
        },
        RolesKey = {
            type = "string",
        },
        JwksUrl = {
            type = "string",
        },
        PublicKey = {
            type = "string",
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
        JWTOptions = {
            type = "structure",
        },
        IAMFederationOptions = {
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

M.IAMFederationOptionsInput = {
    type = "structure",
    members = {
        Enabled = {
            type = "boolean",
        },
        SubjectKey = {
            type = "string",
        },
        RolesKey = {
            type = "string",
        },
    },
}

M.JWTOptionsInput = {
    type = "structure",
    members = {
        Enabled = {
            type = "boolean",
        },
        SubjectKey = {
            type = "string",
        },
        RolesKey = {
            type = "string",
        },
        JwksUrl = {
            type = "string",
        },
        PublicKey = {
            type = "string",
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
        JWTOptions = {
            type = "structure",
        },
        IAMFederationOptions = {
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

M.AIConfig = {
    type = "structure",
}

M.NaturalLanguageQueryGenerationDesiredState = {
    Enabled = "ENABLED",
    Disabled = "DISABLED",
}

M.NaturalLanguageQueryGenerationOptionsInput = {
    type = "structure",
    members = {
        DesiredState = {
            type = "string",
        },
    },
}

M.S3VectorsEngine = {
    type = "structure",
    members = {
        Enabled = {
            type = "boolean",
        },
    },
}

M.ServerlessVectorAcceleration = {
    type = "structure",
    members = {
        Enabled = {
            type = "boolean",
        },
    },
}

M.AIMLOptionsInput = {
    type = "structure",
    members = {
        NaturalLanguageQueryGenerationOptions = {
            type = "structure",
        },
        S3VectorsEngine = {
            type = "structure",
        },
        ServerlessVectorAcceleration = {
            type = "structure",
        },
    },
}

M.NaturalLanguageQueryGenerationCurrentState = {
    NotEnabled = "NOT_ENABLED",
    EnableComplete = "ENABLE_COMPLETE",
    EnableInProgress = "ENABLE_IN_PROGRESS",
    EnableFailed = "ENABLE_FAILED",
    DisableComplete = "DISABLE_COMPLETE",
    DisableInProgress = "DISABLE_IN_PROGRESS",
    DisableFailed = "DISABLE_FAILED",
}

M.NaturalLanguageQueryGenerationOptionsOutput = {
    type = "structure",
    members = {
        DesiredState = {
            type = "string",
        },
        CurrentState = {
            type = "string",
        },
    },
}

M.AIMLOptionsOutput = {
    type = "structure",
    members = {
        NaturalLanguageQueryGenerationOptions = {
            type = "structure",
        },
        S3VectorsEngine = {
            type = "structure",
        },
        ServerlessVectorAcceleration = {
            type = "structure",
        },
    },
}

M.AIMLOptionsStatus = {
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

M.KeyStoreAccessOption = {
    type = "structure",
    members = {
        KeyAccessRoleArn = {
            type = "string",
        },
        KeyStoreAccessEnabled = {
            type = "boolean",
            traits = {
                required = true,
            },
        },
    },
}

M.PackageAssociationConfiguration = {
    type = "structure",
    members = {
        KeyStoreAccessOption = {
            type = "structure",
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
        PrerequisitePackageIDList = {
            type = "list",
            member_type = "string",
        },
        AssociationConfiguration = {
            type = "structure",
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
    ZIP_PLUGIN = "ZIP-PLUGIN",
    PACKAGE_LICENSE = "PACKAGE-LICENSE",
    PACKAGE_CONFIG = "PACKAGE-CONFIG",
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
        PrerequisitePackageIDList = {
            type = "list",
            member_type = "string",
        },
        ReferencePath = {
            type = "string",
        },
        ErrorDetails = {
            type = "structure",
        },
        AssociationConfiguration = {
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

M.PackageDetailsForAssociation = {
    type = "structure",
    members = {
        PackageID = {
            type = "string",
            traits = {
                required = true,
            },
        },
        PrerequisitePackageIDList = {
            type = "list",
            member_type = "string",
        },
        AssociationConfiguration = {
            type = "structure",
        },
    },
}

M.AssociatePackagesInput = {
    type = "structure",
    members = {
        PackageList = {
            type = "list",
            member_type = "structure",
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
    },
}

M.AssociatePackagesOutput = {
    type = "structure",
    members = {
        DomainPackageDetailsList = {
            type = "list",
            member_type = "structure",
        },
    },
}

M.AWSServicePrincipal = {
    application_opensearchservice_amazonaws_com = "application.opensearchservice.amazonaws.com",
}

M.ServiceOptions = {
    type = "structure",
    members = {
        SupportedRegions = {
            type = "list",
            member_type = "string",
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
        },
        Service = {
            type = "string",
        },
        ServiceOptions = {
            type = "structure",
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
        ServiceOptions = {
            type = "structure",
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
        CancelledChangeIds = {
            type = "list",
            member_type = "string",
        },
        CancelledChangeProperties = {
            type = "list",
            member_type = "structure",
        },
        DryRun = {
            type = "boolean",
        },
    },
}

M.CancelServiceSoftwareUpdateInput = {
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

M.CancelServiceSoftwareUpdateOutput = {
    type = "structure",
    members = {
        ServiceSoftwareOptions = {
            type = "structure",
        },
    },
}

M.AppConfigType = {
    OpensearchDashboardAdminUsers = "opensearchDashboards.dashboardAdmin.users",
    OpensearchDashboardAdminGroups = "opensearchDashboards.dashboardAdmin.groups",
}

M.AppConfig = {
    type = "structure",
    members = {
        key = {
            type = "string",
        },
        value = {
            type = "string",
        },
    },
}

M.DataSource = {
    type = "structure",
    members = {
        dataSourceArn = {
            type = "string",
        },
        dataSourceDescription = {
            type = "string",
        },
        iamRoleForDataSourceArn = {
            type = "string",
        },
    },
}

M.IamIdentityCenterOptionsInput = {
    type = "structure",
    members = {
        enabled = {
            type = "boolean",
        },
        iamIdentityCenterInstanceArn = {
            type = "string",
        },
        iamRoleForIdentityCenterApplicationArn = {
            type = "string",
        },
    },
}

M.CreateApplicationInput = {
    type = "structure",
    members = {
        clientToken = {
            type = "string",
        },
        name = {
            type = "string",
            traits = {
                required = true,
            },
        },
        dataSources = {
            type = "list",
            member_type = "structure",
        },
        iamIdentityCenterOptions = {
            type = "structure",
        },
        appConfigs = {
            type = "list",
            member_type = "structure",
        },
        tagList = {
            type = "list",
            member_type = "structure",
        },
        kmsKeyArn = {
            type = "string",
        },
    },
}

M.IamIdentityCenterOptions = {
    type = "structure",
    members = {
        enabled = {
            type = "boolean",
        },
        iamIdentityCenterInstanceArn = {
            type = "string",
        },
        iamRoleForIdentityCenterApplicationArn = {
            type = "string",
        },
        iamIdentityCenterApplicationArn = {
            type = "string",
        },
    },
}

M.CreateApplicationOutput = {
    type = "structure",
    members = {
        id = {
            type = "string",
        },
        name = {
            type = "string",
        },
        arn = {
            type = "string",
        },
        dataSources = {
            type = "list",
            member_type = "structure",
        },
        iamIdentityCenterOptions = {
            type = "structure",
        },
        appConfigs = {
            type = "list",
            member_type = "structure",
        },
        tagList = {
            type = "list",
            member_type = "structure",
        },
        createdAt = {
            type = "timestamp",
        },
        kmsKeyArn = {
            type = "string",
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
        UseOffPeakWindow = {
            type = "boolean",
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

M.OpenSearchPartitionInstanceType = {
    m3_medium_search = "m3.medium.search",
    m3_large_search = "m3.large.search",
    m3_xlarge_search = "m3.xlarge.search",
    m3_2xlarge_search = "m3.2xlarge.search",
    m4_large_search = "m4.large.search",
    m4_xlarge_search = "m4.xlarge.search",
    m4_2xlarge_search = "m4.2xlarge.search",
    m4_4xlarge_search = "m4.4xlarge.search",
    m4_10xlarge_search = "m4.10xlarge.search",
    m5_large_search = "m5.large.search",
    m5_xlarge_search = "m5.xlarge.search",
    m5_2xlarge_search = "m5.2xlarge.search",
    m5_4xlarge_search = "m5.4xlarge.search",
    m5_12xlarge_search = "m5.12xlarge.search",
    m5_24xlarge_search = "m5.24xlarge.search",
    r5_large_search = "r5.large.search",
    r5_xlarge_search = "r5.xlarge.search",
    r5_2xlarge_search = "r5.2xlarge.search",
    r5_4xlarge_search = "r5.4xlarge.search",
    r5_12xlarge_search = "r5.12xlarge.search",
    r5_24xlarge_search = "r5.24xlarge.search",
    c5_large_search = "c5.large.search",
    c5_xlarge_search = "c5.xlarge.search",
    c5_2xlarge_search = "c5.2xlarge.search",
    c5_4xlarge_search = "c5.4xlarge.search",
    c5_9xlarge_search = "c5.9xlarge.search",
    c5_18xlarge_search = "c5.18xlarge.search",
    t3_nano_search = "t3.nano.search",
    t3_micro_search = "t3.micro.search",
    t3_small_search = "t3.small.search",
    t3_medium_search = "t3.medium.search",
    t3_large_search = "t3.large.search",
    t3_xlarge_search = "t3.xlarge.search",
    t3_2xlarge_search = "t3.2xlarge.search",
    or1_medium_search = "or1.medium.search",
    or1_large_search = "or1.large.search",
    or1_xlarge_search = "or1.xlarge.search",
    or1_2xlarge_search = "or1.2xlarge.search",
    or1_4xlarge_search = "or1.4xlarge.search",
    or1_8xlarge_search = "or1.8xlarge.search",
    or1_12xlarge_search = "or1.12xlarge.search",
    or1_16xlarge_search = "or1.16xlarge.search",
    ultrawarm1_medium_search = "ultrawarm1.medium.search",
    ultrawarm1_large_search = "ultrawarm1.large.search",
    ultrawarm1_xlarge_search = "ultrawarm1.xlarge.search",
    t2_micro_search = "t2.micro.search",
    t2_small_search = "t2.small.search",
    t2_medium_search = "t2.medium.search",
    r3_large_search = "r3.large.search",
    r3_xlarge_search = "r3.xlarge.search",
    r3_2xlarge_search = "r3.2xlarge.search",
    r3_4xlarge_search = "r3.4xlarge.search",
    r3_8xlarge_search = "r3.8xlarge.search",
    i2_xlarge_search = "i2.xlarge.search",
    i2_2xlarge_search = "i2.2xlarge.search",
    d2_xlarge_search = "d2.xlarge.search",
    d2_2xlarge_search = "d2.2xlarge.search",
    d2_4xlarge_search = "d2.4xlarge.search",
    d2_8xlarge_search = "d2.8xlarge.search",
    c4_large_search = "c4.large.search",
    c4_xlarge_search = "c4.xlarge.search",
    c4_2xlarge_search = "c4.2xlarge.search",
    c4_4xlarge_search = "c4.4xlarge.search",
    c4_8xlarge_search = "c4.8xlarge.search",
    r4_large_search = "r4.large.search",
    r4_xlarge_search = "r4.xlarge.search",
    r4_2xlarge_search = "r4.2xlarge.search",
    r4_4xlarge_search = "r4.4xlarge.search",
    r4_8xlarge_search = "r4.8xlarge.search",
    r4_16xlarge_search = "r4.16xlarge.search",
    i3_large_search = "i3.large.search",
    i3_xlarge_search = "i3.xlarge.search",
    i3_2xlarge_search = "i3.2xlarge.search",
    i3_4xlarge_search = "i3.4xlarge.search",
    i3_8xlarge_search = "i3.8xlarge.search",
    i3_16xlarge_search = "i3.16xlarge.search",
    r6g_large_search = "r6g.large.search",
    r6g_xlarge_search = "r6g.xlarge.search",
    r6g_2xlarge_search = "r6g.2xlarge.search",
    r6g_4xlarge_search = "r6g.4xlarge.search",
    r6g_8xlarge_search = "r6g.8xlarge.search",
    r6g_12xlarge_search = "r6g.12xlarge.search",
    m6g_large_search = "m6g.large.search",
    m6g_xlarge_search = "m6g.xlarge.search",
    m6g_2xlarge_search = "m6g.2xlarge.search",
    m6g_4xlarge_search = "m6g.4xlarge.search",
    m6g_8xlarge_search = "m6g.8xlarge.search",
    m6g_12xlarge_search = "m6g.12xlarge.search",
    c6g_large_search = "c6g.large.search",
    c6g_xlarge_search = "c6g.xlarge.search",
    c6g_2xlarge_search = "c6g.2xlarge.search",
    c6g_4xlarge_search = "c6g.4xlarge.search",
    c6g_8xlarge_search = "c6g.8xlarge.search",
    c6g_12xlarge_search = "c6g.12xlarge.search",
    r6gd_large_search = "r6gd.large.search",
    r6gd_xlarge_search = "r6gd.xlarge.search",
    r6gd_2xlarge_search = "r6gd.2xlarge.search",
    r6gd_4xlarge_search = "r6gd.4xlarge.search",
    r6gd_8xlarge_search = "r6gd.8xlarge.search",
    r6gd_12xlarge_search = "r6gd.12xlarge.search",
    r6gd_16xlarge_search = "r6gd.16xlarge.search",
    t4g_small_search = "t4g.small.search",
    t4g_medium_search = "t4g.medium.search",
}

M.NodeConfig = {
    type = "structure",
    members = {
        Enabled = {
            type = "boolean",
        },
        Type = {
            type = "string",
        },
        Count = {
            type = "number",
        },
    },
}

M.NodeOptionsNodeType = {
    COORDINATOR = "coordinator",
}

M.NodeOption = {
    type = "structure",
    members = {
        NodeType = {
            type = "string",
        },
        NodeConfig = {
            type = "structure",
        },
    },
}

M.OpenSearchWarmPartitionInstanceType = {
    ultrawarm1_medium_search = "ultrawarm1.medium.search",
    ultrawarm1_large_search = "ultrawarm1.large.search",
    ultrawarm1_xlarge_search = "ultrawarm1.xlarge.search",
}

M.ZoneAwarenessConfig = {
    type = "structure",
    members = {
        AvailabilityZoneCount = {
            type = "number",
        },
    },
}

M.ClusterConfig = {
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
        MultiAZWithStandbyEnabled = {
            type = "boolean",
        },
        NodeOptions = {
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

M.RolesKeyIdCOption = {
    GroupName = "GroupName",
    GroupId = "GroupId",
}

M.SubjectKeyIdCOption = {
    UserName = "UserName",
    UserId = "UserId",
    Email = "Email",
}

M.IdentityCenterOptionsInput = {
    type = "structure",
    members = {
        EnabledAPIAccess = {
            type = "boolean",
        },
        IdentityCenterInstanceARN = {
            type = "string",
        },
        IdentityCenterInstanceRegion = {
            type = "string",
        },
        SubjectKey = {
            type = "string",
        },
        RolesKey = {
            type = "string",
        },
    },
}

M.IPAddressType = {
    IPV4 = "ipv4",
    DUALSTACK = "dualstack",
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

M.WindowStartTime = {
    type = "structure",
    members = {
        Hours = {
            type = "number",
            traits = {
                required = true,
            },
        },
        Minutes = {
            type = "number",
            traits = {
                required = true,
            },
        },
    },
}

M.OffPeakWindow = {
    type = "structure",
    members = {
        WindowStartTime = {
            type = "structure",
        },
    },
}

M.OffPeakWindowOptions = {
    type = "structure",
    members = {
        Enabled = {
            type = "boolean",
        },
        OffPeakWindow = {
            type = "structure",
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

M.SoftwareUpdateOptions = {
    type = "structure",
    members = {
        AutoSoftwareUpdateEnabled = {
            type = "boolean",
        },
        UseLatestServiceSoftwareForBlueGreen = {
            type = "boolean",
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

M.CreateDomainInput = {
    type = "structure",
    members = {
        DomainName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        EngineVersion = {
            type = "string",
        },
        ClusterConfig = {
            type = "structure",
        },
        EBSOptions = {
            type = "structure",
        },
        AccessPolicies = {
            type = "string",
        },
        IPAddressType = {
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
        IdentityCenterOptions = {
            type = "structure",
        },
        TagList = {
            type = "list",
            member_type = "structure",
        },
        AutoTuneOptions = {
            type = "structure",
        },
        OffPeakWindowOptions = {
            type = "structure",
        },
        SoftwareUpdateOptions = {
            type = "structure",
        },
        AIMLOptions = {
            type = "structure",
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
        UseOffPeakWindow = {
            type = "boolean",
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
        InitiatedBy = {
            type = "string",
        },
        StartTime = {
            type = "timestamp",
        },
        LastUpdatedTime = {
            type = "timestamp",
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

M.IdentityCenterOptions = {
    type = "structure",
    members = {
        EnabledAPIAccess = {
            type = "boolean",
        },
        IdentityCenterInstanceARN = {
            type = "string",
        },
        IdentityCenterInstanceRegion = {
            type = "string",
        },
        SubjectKey = {
            type = "string",
        },
        RolesKey = {
            type = "string",
        },
        IdentityCenterApplicationARN = {
            type = "string",
        },
        IdentityStoreId = {
            type = "string",
        },
    },
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

M.DomainStatus = {
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
        EndpointV2 = {
            type = "string",
        },
        Endpoints = {
            type = "map",
            key_type = "string",
            value_type = "string",
        },
        DomainEndpointV2HostedZoneId = {
            type = "string",
        },
        Processing = {
            type = "boolean",
        },
        UpgradeProcessing = {
            type = "boolean",
        },
        EngineVersion = {
            type = "string",
        },
        ClusterConfig = {
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
        IPAddressType = {
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
        IdentityCenterOptions = {
            type = "structure",
        },
        AutoTuneOptions = {
            type = "structure",
        },
        ChangeProgressDetails = {
            type = "structure",
        },
        OffPeakWindowOptions = {
            type = "structure",
        },
        SoftwareUpdateOptions = {
            type = "structure",
        },
        DomainProcessingStatus = {
            type = "string",
        },
        ModifyingProperties = {
            type = "list",
            member_type = "structure",
        },
        AIMLOptions = {
            type = "structure",
        },
        DeploymentStrategyOptions = {
            type = "structure",
        },
    },
}

M.CreateDomainOutput = {
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

M.CreateIndexInput = {
    type = "structure",
    members = {
        DomainName = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        IndexName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        IndexSchema = {
            type = "document",
            traits = {
                required = true,
            },
        },
    },
}

M.IndexStatus = {
    CREATED = "CREATED",
    UPDATED = "UPDATED",
    DELETED = "DELETED",
}

M.CreateIndexOutput = {
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

M.ThrottlingException = {
    type = "structure",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.SkipUnavailableStatus = {
    ENABLED = "ENABLED",
    DISABLED = "DISABLED",
}

M.CrossClusterSearchConnectionProperties = {
    type = "structure",
    members = {
        SkipUnavailable = {
            type = "string",
        },
    },
}

M.ConnectionProperties = {
    type = "structure",
    members = {
        Endpoint = {
            type = "string",
        },
        CrossClusterSearch = {
            type = "structure",
        },
    },
}

M.CreateOutboundConnectionInput = {
    type = "structure",
    members = {
        LocalDomainInfo = {
            type = "structure",
            traits = {
                required = true,
            },
        },
        RemoteDomainInfo = {
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
        ConnectionMode = {
            type = "string",
        },
        ConnectionProperties = {
            type = "structure",
        },
    },
}

M.OutboundConnectionStatusCode = {
    VALIDATING = "VALIDATING",
    VALIDATION_FAILED = "VALIDATION_FAILED",
    PENDING_ACCEPTANCE = "PENDING_ACCEPTANCE",
    APPROVED = "APPROVED",
    PROVISIONING = "PROVISIONING",
    ACTIVE = "ACTIVE",
    REJECTING = "REJECTING",
    REJECTED = "REJECTED",
    DELETING = "DELETING",
    DELETED = "DELETED",
}

M.OutboundConnectionStatus = {
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

M.CreateOutboundConnectionOutput = {
    type = "structure",
    members = {
        LocalDomainInfo = {
            type = "structure",
        },
        RemoteDomainInfo = {
            type = "structure",
        },
        ConnectionAlias = {
            type = "string",
        },
        ConnectionStatus = {
            type = "structure",
        },
        ConnectionId = {
            type = "string",
        },
        ConnectionMode = {
            type = "string",
        },
        ConnectionProperties = {
            type = "structure",
        },
    },
}

M.RequirementLevel = {
    REQUIRED = "REQUIRED",
    OPTIONAL = "OPTIONAL",
    NONE = "NONE",
}

M.PackageConfiguration = {
    type = "structure",
    members = {
        LicenseRequirement = {
            type = "string",
            traits = {
                required = true,
            },
        },
        LicenseFilepath = {
            type = "string",
        },
        ConfigurationRequirement = {
            type = "string",
            traits = {
                required = true,
            },
        },
        RequiresRestartForConfigurationUpdate = {
            type = "boolean",
        },
    },
}

M.PackageEncryptionOptions = {
    type = "structure",
    members = {
        KmsKeyIdentifier = {
            type = "string",
        },
        EncryptionEnabled = {
            type = "boolean",
            traits = {
                required = true,
            },
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

M.PackageVendingOptions = {
    type = "structure",
    members = {
        VendingEnabled = {
            type = "boolean",
            traits = {
                required = true,
            },
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
        PackageConfiguration = {
            type = "structure",
        },
        EngineVersion = {
            type = "string",
        },
        PackageVendingOptions = {
            type = "structure",
        },
        PackageEncryptionOptions = {
            type = "structure",
        },
    },
}

M.PluginProperties = {
    type = "structure",
    members = {
        Name = {
            type = "string",
        },
        Description = {
            type = "string",
        },
        Version = {
            type = "string",
        },
        ClassName = {
            type = "string",
        },
        UncompressedSizeInBytes = {
            type = "number",
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
        EngineVersion = {
            type = "string",
        },
        AvailablePluginProperties = {
            type = "structure",
        },
        AvailablePackageConfiguration = {
            type = "structure",
        },
        AllowListedUserList = {
            type = "list",
            member_type = "string",
        },
        PackageOwner = {
            type = "string",
        },
        PackageVendingOptions = {
            type = "structure",
        },
        PackageEncryptionOptions = {
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

M.DeleteApplicationInput = {
    type = "structure",
    members = {
        id = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.DeleteApplicationOutput = {
    type = "structure",
}

M.DeleteDataSourceInput = {
    type = "structure",
    members = {
        DomainName = {
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

M.DeleteDataSourceOutput = {
    type = "structure",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.DeleteDirectQueryDataSourceInput = {
    type = "structure",
    members = {
        DataSourceName = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.DeleteDirectQueryDataSourceOutput = {
    type = "structure",
}

M.DeleteDomainInput = {
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

M.DeleteDomainOutput = {
    type = "structure",
    members = {
        DomainStatus = {
            type = "structure",
        },
    },
}

M.DeleteInboundConnectionInput = {
    type = "structure",
    members = {
        ConnectionId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.DeleteInboundConnectionOutput = {
    type = "structure",
    members = {
        Connection = {
            type = "structure",
        },
    },
}

M.DeleteIndexInput = {
    type = "structure",
    members = {
        DomainName = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        IndexName = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.DeleteIndexOutput = {
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

M.DeleteOutboundConnectionInput = {
    type = "structure",
    members = {
        ConnectionId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.OutboundConnection = {
    type = "structure",
    members = {
        LocalDomainInfo = {
            type = "structure",
        },
        RemoteDomainInfo = {
            type = "structure",
        },
        ConnectionId = {
            type = "string",
        },
        ConnectionAlias = {
            type = "string",
        },
        ConnectionStatus = {
            type = "structure",
        },
        ConnectionMode = {
            type = "string",
        },
        ConnectionProperties = {
            type = "structure",
        },
    },
}

M.DeleteOutboundConnectionOutput = {
    type = "structure",
    members = {
        Connection = {
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

M.DeregisterCapabilityInput = {
    type = "structure",
    members = {
        applicationId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        capabilityName = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.CapabilityStatus = {
    CREATING = "creating",
    CREATE_FAILED = "create_failed",
    ACTIVE = "active",
    UPDATING = "updating",
    UPDATE_FAILED = "update_failed",
    DELETING = "deleting",
    DELETE_FAILED = "delete_failed",
}

M.DeregisterCapabilityOutput = {
    type = "structure",
    members = {
        status = {
            type = "string",
        },
    },
}

M.DescribeDomainInput = {
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

M.DescribeDomainOutput = {
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
        LastUpdatedTime = {
            type = "timestamp",
        },
        ConfigChangeStatus = {
            type = "string",
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

M.DescribeDomainConfigInput = {
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
        UseOffPeakWindow = {
            type = "boolean",
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

M.ClusterConfigStatus = {
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

M.VersionStatus = {
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

M.IdentityCenterOptionsStatus = {
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

M.IPAddressTypeStatus = {
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

M.OffPeakWindowOptionsStatus = {
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

M.SoftwareUpdateOptionsStatus = {
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

M.DomainConfig = {
    type = "structure",
    members = {
        EngineVersion = {
            type = "structure",
        },
        ClusterConfig = {
            type = "structure",
        },
        EBSOptions = {
            type = "structure",
        },
        AccessPolicies = {
            type = "structure",
        },
        IPAddressType = {
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
        IdentityCenterOptions = {
            type = "structure",
        },
        AutoTuneOptions = {
            type = "structure",
        },
        ChangeProgressDetails = {
            type = "structure",
        },
        OffPeakWindowOptions = {
            type = "structure",
        },
        SoftwareUpdateOptions = {
            type = "structure",
        },
        ModifyingProperties = {
            type = "list",
            member_type = "structure",
        },
        AIMLOptions = {
            type = "structure",
        },
        DeploymentStrategyOptions = {
            type = "structure",
        },
    },
}

M.DescribeDomainConfigOutput = {
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

M.DescribeDomainHealthInput = {
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

M.DomainHealth = {
    Red = "Red",
    Yellow = "Yellow",
    Green = "Green",
    NotAvailable = "NotAvailable",
}

M.DomainState = {
    Active = "Active",
    Processing = "Processing",
    NotAvailable = "NotAvailable",
}

M.ZoneStatus = {
    Active = "Active",
    StandBy = "StandBy",
    NotAvailable = "NotAvailable",
}

M.AvailabilityZoneInfo = {
    type = "structure",
    members = {
        AvailabilityZoneName = {
            type = "string",
        },
        ZoneStatus = {
            type = "string",
        },
        ConfiguredDataNodeCount = {
            type = "string",
        },
        AvailableDataNodeCount = {
            type = "string",
        },
        TotalShards = {
            type = "string",
        },
        TotalUnAssignedShards = {
            type = "string",
        },
    },
}

M.EnvironmentInfo = {
    type = "structure",
    members = {
        AvailabilityZoneInformation = {
            type = "list",
            member_type = "structure",
        },
    },
}

M.MasterNodeStatus = {
    Available = "Available",
    UnAvailable = "UnAvailable",
}

M.DescribeDomainHealthOutput = {
    type = "structure",
    members = {
        DomainState = {
            type = "string",
        },
        AvailabilityZoneCount = {
            type = "string",
        },
        ActiveAvailabilityZoneCount = {
            type = "string",
        },
        StandByAvailabilityZoneCount = {
            type = "string",
        },
        DataNodeCount = {
            type = "string",
        },
        DedicatedMaster = {
            type = "boolean",
        },
        MasterEligibleNodeCount = {
            type = "string",
        },
        WarmNodeCount = {
            type = "string",
        },
        MasterNode = {
            type = "string",
        },
        ClusterHealth = {
            type = "string",
        },
        TotalShards = {
            type = "string",
        },
        TotalUnAssignedShards = {
            type = "string",
        },
        EnvironmentInformation = {
            type = "list",
            member_type = "structure",
        },
    },
}

M.DescribeDomainNodesInput = {
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

M.NodeStatus = {
    Active = "Active",
    StandBy = "StandBy",
    NotAvailable = "NotAvailable",
}

M.NodeType = {
    Data = "Data",
    Ultrawarm = "Ultrawarm",
    Master = "Master",
    Warm = "Warm",
}

M.DomainNodesStatus = {
    type = "structure",
    members = {
        NodeId = {
            type = "string",
        },
        NodeType = {
            type = "string",
        },
        AvailabilityZone = {
            type = "string",
        },
        InstanceType = {
            type = "string",
        },
        NodeStatus = {
            type = "string",
        },
        StorageType = {
            type = "string",
        },
        StorageVolumeType = {
            type = "string",
        },
        StorageSize = {
            type = "string",
        },
    },
}

M.DescribeDomainNodesOutput = {
    type = "structure",
    members = {
        DomainNodesStatusList = {
            type = "list",
            member_type = "structure",
        },
    },
}

M.DescribeDomainsInput = {
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

M.DescribeDomainsOutput = {
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

M.DescribeDryRunProgressInput = {
    type = "structure",
    members = {
        DomainName = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        DryRunId = {
            type = "string",
            traits = {
                http_query = "dryRunId",
            },
        },
        LoadDryRunConfig = {
            type = "boolean",
            traits = {
                http_query = "loadDryRunConfig",
            },
        },
    },
}

M.ValidationFailure = {
    type = "structure",
    members = {
        Code = {
            type = "string",
        },
        Message = {
            type = "string",
        },
    },
}

M.DryRunProgressStatus = {
    type = "structure",
    members = {
        DryRunId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        DryRunStatus = {
            type = "string",
            traits = {
                required = true,
            },
        },
        CreationDate = {
            type = "string",
            traits = {
                required = true,
            },
        },
        UpdateDate = {
            type = "string",
            traits = {
                required = true,
            },
        },
        ValidationFailures = {
            type = "list",
            member_type = "structure",
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

M.DescribeDryRunProgressOutput = {
    type = "structure",
    members = {
        DryRunProgressStatus = {
            type = "structure",
        },
        DryRunConfig = {
            type = "structure",
        },
        DryRunResults = {
            type = "structure",
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

M.DescribeInboundConnectionsInput = {
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

M.DescribeInboundConnectionsOutput = {
    type = "structure",
    members = {
        Connections = {
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

M.InsightEntityType = {
    ACCOUNT = "Account",
    DOMAIN = "DomainName",
}

M.InsightEntity = {
    type = "structure",
    members = {
        Type = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Value = {
            type = "string",
        },
    },
}

M.DescribeInsightDetailsInput = {
    type = "structure",
    members = {
        Entity = {
            type = "structure",
            traits = {
                required = true,
            },
        },
        InsightId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        ShowHtmlContent = {
            type = "boolean",
        },
    },
}

M.InsightFieldType = {
    TEXT = "text",
    METRIC = "metric",
}

M.InsightField = {
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
        Value = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.DescribeInsightDetailsOutput = {
    type = "structure",
    members = {
        Fields = {
            type = "list",
            member_type = "structure",
            traits = {
                required = true,
            },
        },
    },
}

M.DescribeInstanceTypeLimitsInput = {
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
        EngineVersion = {
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

M.DescribeInstanceTypeLimitsOutput = {
    type = "structure",
    members = {
        LimitsByRole = {
            type = "map",
            key_type = "string",
            value_type = "structure",
        },
    },
}

M.DescribeOutboundConnectionsInput = {
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

M.DescribeOutboundConnectionsOutput = {
    type = "structure",
    members = {
        Connections = {
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
    PackageType = "PackageType",
    EngineVersion = "EngineVersion",
    PackageOwner = "PackageOwner",
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

M.DescribeReservedInstanceOfferingsInput = {
    type = "structure",
    members = {
        ReservedInstanceOfferingId = {
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

M.ReservedInstancePaymentOption = {
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

M.ReservedInstanceOffering = {
    type = "structure",
    members = {
        ReservedInstanceOfferingId = {
            type = "string",
        },
        InstanceType = {
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

M.DescribeReservedInstanceOfferingsOutput = {
    type = "structure",
    members = {
        NextToken = {
            type = "string",
        },
        ReservedInstanceOfferings = {
            type = "list",
            member_type = "structure",
        },
    },
}

M.DescribeReservedInstancesInput = {
    type = "structure",
    members = {
        ReservedInstanceId = {
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

M.ReservedInstance = {
    type = "structure",
    members = {
        ReservationName = {
            type = "string",
        },
        ReservedInstanceId = {
            type = "string",
        },
        BillingSubscriptionId = {
            type = "number",
        },
        ReservedInstanceOfferingId = {
            type = "string",
        },
        InstanceType = {
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
        InstanceCount = {
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

M.DescribeReservedInstancesOutput = {
    type = "structure",
    members = {
        NextToken = {
            type = "string",
        },
        ReservedInstances = {
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

M.DissociatePackagesInput = {
    type = "structure",
    members = {
        PackageList = {
            type = "list",
            member_type = "string",
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
    },
}

M.DissociatePackagesOutput = {
    type = "structure",
    members = {
        DomainPackageDetailsList = {
            type = "list",
            member_type = "structure",
        },
    },
}

M.GetApplicationInput = {
    type = "structure",
    members = {
        id = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.ApplicationStatus = {
    CREATING = "CREATING",
    UPDATING = "UPDATING",
    DELETING = "DELETING",
    ACTIVE = "ACTIVE",
    FAILED = "FAILED",
}

M.GetApplicationOutput = {
    type = "structure",
    members = {
        id = {
            type = "string",
        },
        arn = {
            type = "string",
        },
        name = {
            type = "string",
        },
        endpoint = {
            type = "string",
        },
        status = {
            type = "string",
        },
        iamIdentityCenterOptions = {
            type = "structure",
        },
        dataSources = {
            type = "list",
            member_type = "structure",
        },
        appConfigs = {
            type = "list",
            member_type = "structure",
        },
        createdAt = {
            type = "timestamp",
        },
        lastUpdatedAt = {
            type = "timestamp",
        },
        kmsKeyArn = {
            type = "string",
        },
    },
}

M.GetCapabilityInput = {
    type = "structure",
    members = {
        applicationId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        capabilityName = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.CapabilityExtendedResponseConfig = {
    type = "union",
    members = {
        aiConfig = {
            type = "structure",
        },
    },
}

M.CapabilityFailureReason = {
    KMS_KEY_INSUFFICIENT_PERMISSION = "KMS_KEY_INSUFFICIENT_PERMISSION",
}

M.CapabilityFailure = {
    type = "structure",
    members = {
        reason = {
            type = "string",
        },
        details = {
            type = "string",
        },
    },
}

M.GetCapabilityOutput = {
    type = "structure",
    members = {
        capabilityName = {
            type = "string",
        },
        applicationId = {
            type = "string",
        },
        status = {
            type = "string",
        },
        capabilityConfig = {
            type = "union",
        },
        failures = {
            type = "list",
            member_type = "structure",
        },
    },
}

M.GetCompatibleVersionsInput = {
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

M.GetCompatibleVersionsOutput = {
    type = "structure",
    members = {
        CompatibleVersions = {
            type = "list",
            member_type = "structure",
        },
    },
}

M.GetDataSourceInput = {
    type = "structure",
    members = {
        DomainName = {
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

M.DataSourceStatus = {
    ACTIVE = "ACTIVE",
    DISABLED = "DISABLED",
}

M.GetDataSourceOutput = {
    type = "structure",
    members = {
        DataSourceType = {
            type = "union",
        },
        Name = {
            type = "string",
        },
        Description = {
            type = "string",
        },
        Status = {
            type = "string",
        },
    },
}

M.GetDefaultApplicationSettingInput = {
    type = "structure",
}

M.GetDefaultApplicationSettingOutput = {
    type = "structure",
    members = {
        applicationArn = {
            type = "string",
        },
    },
}

M.GetDirectQueryDataSourceInput = {
    type = "structure",
    members = {
        DataSourceName = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.GetDirectQueryDataSourceOutput = {
    type = "structure",
    members = {
        DataSourceName = {
            type = "string",
        },
        DataSourceType = {
            type = "union",
        },
        Description = {
            type = "string",
        },
        OpenSearchArns = {
            type = "list",
            member_type = "string",
        },
        DataSourceAccessPolicy = {
            type = "string",
        },
        DataSourceArn = {
            type = "string",
        },
    },
}

M.GetDomainMaintenanceStatusInput = {
    type = "structure",
    members = {
        DomainName = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        MaintenanceId = {
            type = "string",
            traits = {
                http_query = "maintenanceId",
                required = true,
            },
        },
    },
}

M.MaintenanceType = {
    REBOOT_NODE = "REBOOT_NODE",
    RESTART_SEARCH_PROCESS = "RESTART_SEARCH_PROCESS",
    RESTART_DASHBOARD = "RESTART_DASHBOARD",
}

M.MaintenanceStatus = {
    PENDING = "PENDING",
    IN_PROGRESS = "IN_PROGRESS",
    COMPLETED = "COMPLETED",
    FAILED = "FAILED",
    TIMED_OUT = "TIMED_OUT",
}

M.GetDomainMaintenanceStatusOutput = {
    type = "structure",
    members = {
        Status = {
            type = "string",
        },
        StatusMessage = {
            type = "string",
        },
        NodeId = {
            type = "string",
        },
        Action = {
            type = "string",
        },
        CreatedAt = {
            type = "timestamp",
        },
        UpdatedAt = {
            type = "timestamp",
        },
    },
}

M.GetIndexInput = {
    type = "structure",
    members = {
        DomainName = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        IndexName = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.GetIndexOutput = {
    type = "structure",
    members = {
        IndexSchema = {
            type = "document",
            traits = {
                required = true,
            },
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
        PluginProperties = {
            type = "structure",
        },
        PackageConfiguration = {
            type = "structure",
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

M.ListApplicationsInput = {
    type = "structure",
    members = {
        nextToken = {
            type = "string",
            traits = {
                http_query = "nextToken",
            },
        },
        statuses = {
            type = "list",
            member_type = "string",
            traits = {
                http_query = "statuses",
            },
        },
        maxResults = {
            type = "number",
            traits = {
                http_query = "maxResults",
            },
        },
    },
}

M.ApplicationSummary = {
    type = "structure",
    members = {
        id = {
            type = "string",
        },
        arn = {
            type = "string",
        },
        name = {
            type = "string",
        },
        endpoint = {
            type = "string",
        },
        status = {
            type = "string",
        },
        createdAt = {
            type = "timestamp",
        },
        lastUpdatedAt = {
            type = "timestamp",
        },
    },
}

M.ListApplicationsOutput = {
    type = "structure",
    members = {
        ApplicationSummaries = {
            type = "list",
            member_type = "structure",
        },
        nextToken = {
            type = "string",
        },
    },
}

M.ListDataSourcesInput = {
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

M.DataSourceDetails = {
    type = "structure",
    members = {
        DataSourceType = {
            type = "union",
        },
        Name = {
            type = "string",
        },
        Description = {
            type = "string",
        },
        Status = {
            type = "string",
        },
    },
}

M.ListDataSourcesOutput = {
    type = "structure",
    members = {
        DataSources = {
            type = "list",
            member_type = "structure",
        },
    },
}

M.ListDirectQueryDataSourcesInput = {
    type = "structure",
    members = {
        NextToken = {
            type = "string",
            traits = {
                http_query = "nexttoken",
            },
        },
    },
}

M.DirectQueryDataSource = {
    type = "structure",
    members = {
        DataSourceName = {
            type = "string",
        },
        DataSourceType = {
            type = "union",
        },
        Description = {
            type = "string",
        },
        OpenSearchArns = {
            type = "list",
            member_type = "string",
        },
        DataSourceArn = {
            type = "string",
        },
        TagList = {
            type = "list",
            member_type = "structure",
        },
    },
}

M.ListDirectQueryDataSourcesOutput = {
    type = "structure",
    members = {
        NextToken = {
            type = "string",
        },
        DirectQueryDataSources = {
            type = "list",
            member_type = "structure",
        },
    },
}

M.ListDomainMaintenancesInput = {
    type = "structure",
    members = {
        DomainName = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        Action = {
            type = "string",
            traits = {
                http_query = "action",
            },
        },
        Status = {
            type = "string",
            traits = {
                http_query = "status",
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

M.DomainMaintenanceDetails = {
    type = "structure",
    members = {
        MaintenanceId = {
            type = "string",
        },
        DomainName = {
            type = "string",
        },
        Action = {
            type = "string",
        },
        NodeId = {
            type = "string",
        },
        Status = {
            type = "string",
        },
        StatusMessage = {
            type = "string",
        },
        CreatedAt = {
            type = "timestamp",
        },
        UpdatedAt = {
            type = "timestamp",
        },
    },
}

M.ListDomainMaintenancesOutput = {
    type = "structure",
    members = {
        DomainMaintenances = {
            type = "list",
            member_type = "structure",
        },
        NextToken = {
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

M.InsightSortOrder = {
    ASC = "ASC",
    DESC = "DESC",
}

M.InsightTimeRange = {
    type = "structure",
    members = {
        From = {
            type = "number",
            traits = {
                required = true,
            },
        },
        To = {
            type = "number",
            traits = {
                required = true,
            },
        },
    },
}

M.ListInsightsInput = {
    type = "structure",
    members = {
        Entity = {
            type = "structure",
            traits = {
                required = true,
            },
        },
        TimeRange = {
            type = "structure",
        },
        SortOrder = {
            type = "string",
        },
        MaxResults = {
            type = "number",
        },
        NextToken = {
            type = "string",
        },
    },
}

M.InsightPriorityLevel = {
    CRITICAL = "CRITICAL",
    HIGH = "HIGH",
    MEDIUM = "MEDIUM",
    LOW = "LOW",
}

M.InsightStatus = {
    ACTIVE = "ACTIVE",
    RESOLVED = "RESOLVED",
    DISMISSED = "DISMISSED",
}

M.InsightType = {
    EVENT = "EVENT",
    RECOMMENDATION = "RECOMMENDATION",
}

M.Insight = {
    type = "structure",
    members = {
        InsightId = {
            type = "string",
        },
        DisplayName = {
            type = "string",
        },
        Type = {
            type = "string",
        },
        Priority = {
            type = "string",
        },
        Status = {
            type = "string",
        },
        CreationTime = {
            type = "timestamp",
        },
        UpdateTime = {
            type = "timestamp",
        },
        IsExperimental = {
            type = "boolean",
        },
    },
}

M.ListInsightsOutput = {
    type = "structure",
    members = {
        Insights = {
            type = "list",
            member_type = "structure",
        },
        NextToken = {
            type = "string",
        },
    },
}

M.ListInstanceTypeDetailsInput = {
    type = "structure",
    members = {
        EngineVersion = {
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
        RetrieveAZs = {
            type = "boolean",
            traits = {
                http_query = "retrieveAZs",
            },
        },
        InstanceType = {
            type = "string",
            traits = {
                http_query = "instanceType",
            },
        },
    },
}

M.InstanceTypeDetails = {
    type = "structure",
    members = {
        InstanceType = {
            type = "string",
        },
        EncryptionEnabled = {
            type = "boolean",
        },
        CognitoEnabled = {
            type = "boolean",
        },
        AppLogsEnabled = {
            type = "boolean",
        },
        AdvancedSecurityEnabled = {
            type = "boolean",
        },
        WarmEnabled = {
            type = "boolean",
        },
        InstanceRole = {
            type = "list",
            member_type = "string",
        },
        AvailabilityZones = {
            type = "list",
            member_type = "string",
        },
    },
}

M.ListInstanceTypeDetailsOutput = {
    type = "structure",
    members = {
        InstanceTypeDetails = {
            type = "list",
            member_type = "structure",
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

M.ListScheduledActionsInput = {
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

M.ScheduledBy = {
    CUSTOMER = "CUSTOMER",
    SYSTEM = "SYSTEM",
}

M.ScheduledAction = {
    type = "structure",
    members = {
        Id = {
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
        Severity = {
            type = "string",
            traits = {
                required = true,
            },
        },
        ScheduledTime = {
            type = "number",
            traits = {
                required = true,
            },
        },
        Description = {
            type = "string",
        },
        ScheduledBy = {
            type = "string",
        },
        Status = {
            type = "string",
        },
        Mandatory = {
            type = "boolean",
        },
        Cancellable = {
            type = "boolean",
        },
    },
}

M.ListScheduledActionsOutput = {
    type = "structure",
    members = {
        ScheduledActions = {
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

M.ListVersionsInput = {
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

M.ListVersionsOutput = {
    type = "structure",
    members = {
        Versions = {
            type = "list",
            member_type = "string",
        },
        NextToken = {
            type = "string",
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

M.PurchaseReservedInstanceOfferingInput = {
    type = "structure",
    members = {
        ReservedInstanceOfferingId = {
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

M.PurchaseReservedInstanceOfferingOutput = {
    type = "structure",
    members = {
        ReservedInstanceId = {
            type = "string",
        },
        ReservationName = {
            type = "string",
        },
    },
}

M.PutDefaultApplicationSettingInput = {
    type = "structure",
    members = {
        applicationArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        setAsDefault = {
            type = "boolean",
            traits = {
                required = true,
            },
        },
    },
}

M.PutDefaultApplicationSettingOutput = {
    type = "structure",
    members = {
        applicationArn = {
            type = "string",
        },
    },
}

M.CapabilityBaseRequestConfig = {
    type = "union",
    members = {
        aiConfig = {
            type = "structure",
        },
    },
}

M.RegisterCapabilityInput = {
    type = "structure",
    members = {
        applicationId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        capabilityName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        capabilityConfig = {
            type = "union",
            traits = {
                required = true,
            },
        },
    },
}

M.CapabilityBaseResponseConfig = {
    type = "union",
    members = {
        aiConfig = {
            type = "structure",
        },
    },
}

M.RegisterCapabilityOutput = {
    type = "structure",
    members = {
        capabilityName = {
            type = "string",
        },
        applicationId = {
            type = "string",
        },
        status = {
            type = "string",
        },
        capabilityConfig = {
            type = "union",
        },
    },
}

M.ServiceQuotaExceededException = {
    type = "structure",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.RejectInboundConnectionInput = {
    type = "structure",
    members = {
        ConnectionId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.RejectInboundConnectionOutput = {
    type = "structure",
    members = {
        Connection = {
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
        },
        Service = {
            type = "string",
        },
        ServiceOptions = {
            type = "structure",
        },
    },
}

M.RevokeVpcEndpointAccessOutput = {
    type = "structure",
}

M.RollbackServiceSoftwareUpdateInput = {
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

M.RollbackServiceSoftwareOptions = {
    type = "structure",
    members = {
        CurrentVersion = {
            type = "string",
        },
        NewVersion = {
            type = "string",
        },
        RollbackAvailable = {
            type = "boolean",
        },
        Description = {
            type = "string",
        },
    },
}

M.RollbackServiceSoftwareUpdateOutput = {
    type = "structure",
    members = {
        RollbackServiceSoftwareOptions = {
            type = "structure",
        },
    },
}

M.StartDomainMaintenanceInput = {
    type = "structure",
    members = {
        DomainName = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        Action = {
            type = "string",
            traits = {
                required = true,
            },
        },
        NodeId = {
            type = "string",
        },
    },
}

M.StartDomainMaintenanceOutput = {
    type = "structure",
    members = {
        MaintenanceId = {
            type = "string",
        },
    },
}

M.ScheduleAt = {
    NOW = "NOW",
    TIMESTAMP = "TIMESTAMP",
    OFF_PEAK_WINDOW = "OFF_PEAK_WINDOW",
}

M.StartServiceSoftwareUpdateInput = {
    type = "structure",
    members = {
        DomainName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        ScheduleAt = {
            type = "string",
        },
        DesiredStartTime = {
            type = "number",
        },
    },
}

M.StartServiceSoftwareUpdateOutput = {
    type = "structure",
    members = {
        ServiceSoftwareOptions = {
            type = "structure",
        },
    },
}

M.UpdateApplicationInput = {
    type = "structure",
    members = {
        id = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        dataSources = {
            type = "list",
            member_type = "structure",
        },
        appConfigs = {
            type = "list",
            member_type = "structure",
        },
    },
}

M.UpdateApplicationOutput = {
    type = "structure",
    members = {
        id = {
            type = "string",
        },
        name = {
            type = "string",
        },
        arn = {
            type = "string",
        },
        dataSources = {
            type = "list",
            member_type = "structure",
        },
        iamIdentityCenterOptions = {
            type = "structure",
        },
        appConfigs = {
            type = "list",
            member_type = "structure",
        },
        createdAt = {
            type = "timestamp",
        },
        lastUpdatedAt = {
            type = "timestamp",
        },
    },
}

M.UpdateDataSourceInput = {
    type = "structure",
    members = {
        DomainName = {
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
        DataSourceType = {
            type = "union",
            traits = {
                required = true,
            },
        },
        Description = {
            type = "string",
        },
        Status = {
            type = "string",
        },
    },
}

M.UpdateDataSourceOutput = {
    type = "structure",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.UpdateDirectQueryDataSourceInput = {
    type = "structure",
    members = {
        DataSourceName = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        DataSourceType = {
            type = "union",
            traits = {
                required = true,
            },
        },
        Description = {
            type = "string",
        },
        OpenSearchArns = {
            type = "list",
            member_type = "string",
        },
        DataSourceAccessPolicy = {
            type = "string",
        },
    },
}

M.UpdateDirectQueryDataSourceOutput = {
    type = "structure",
    members = {
        DataSourceArn = {
            type = "string",
        },
    },
}

M.DryRunMode = {
    Basic = "Basic",
    Verbose = "Verbose",
}

M.UpdateDomainConfigInput = {
    type = "structure",
    members = {
        DomainName = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        ClusterConfig = {
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
        IPAddressType = {
            type = "string",
        },
        LogPublishingOptions = {
            type = "map",
            key_type = "string",
            value_type = "structure",
        },
        EncryptionAtRestOptions = {
            type = "structure",
        },
        DomainEndpointOptions = {
            type = "structure",
        },
        NodeToNodeEncryptionOptions = {
            type = "structure",
        },
        AdvancedSecurityOptions = {
            type = "structure",
        },
        IdentityCenterOptions = {
            type = "structure",
        },
        AutoTuneOptions = {
            type = "structure",
        },
        DryRun = {
            type = "boolean",
        },
        DryRunMode = {
            type = "string",
        },
        OffPeakWindowOptions = {
            type = "structure",
        },
        SoftwareUpdateOptions = {
            type = "structure",
        },
        AIMLOptions = {
            type = "structure",
        },
        DeploymentStrategyOptions = {
            type = "structure",
        },
    },
}

M.UpdateDomainConfigOutput = {
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
        DryRunProgressStatus = {
            type = "structure",
        },
    },
}

M.UpdateIndexInput = {
    type = "structure",
    members = {
        DomainName = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        IndexName = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        IndexSchema = {
            type = "document",
            traits = {
                required = true,
            },
        },
    },
}

M.UpdateIndexOutput = {
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
        PackageConfiguration = {
            type = "structure",
        },
        PackageEncryptionOptions = {
            type = "structure",
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

M.PackageScopeOperationEnum = {
    ADD = "ADD",
    OVERRIDE = "OVERRIDE",
    REMOVE = "REMOVE",
}

M.UpdatePackageScopeInput = {
    type = "structure",
    members = {
        PackageID = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Operation = {
            type = "string",
            traits = {
                required = true,
            },
        },
        PackageUserList = {
            type = "list",
            member_type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.UpdatePackageScopeOutput = {
    type = "structure",
    members = {
        PackageID = {
            type = "string",
        },
        Operation = {
            type = "string",
        },
        PackageUserList = {
            type = "list",
            member_type = "string",
        },
    },
}

M.SlotNotAvailableException = {
    type = "structure",
    error = "client",
    members = {
        SlotSuggestions = {
            type = "list",
            member_type = "number",
        },
        message = {
            type = "string",
        },
    },
}

M.UpdateScheduledActionInput = {
    type = "structure",
    members = {
        DomainName = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        ActionID = {
            type = "string",
            traits = {
                required = true,
            },
        },
        ActionType = {
            type = "string",
            traits = {
                required = true,
            },
        },
        ScheduleAt = {
            type = "string",
            traits = {
                required = true,
            },
        },
        DesiredStartTime = {
            type = "number",
        },
    },
}

M.UpdateScheduledActionOutput = {
    type = "structure",
    members = {
        ScheduledAction = {
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

M.UpgradeDomainInput = {
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
        AdvancedOptions = {
            type = "map",
            key_type = "string",
            value_type = "string",
        },
    },
}

M.UpgradeDomainOutput = {
    type = "structure",
    members = {
        UpgradeId = {
            type = "string",
        },
        DomainName = {
            type = "string",
        },
        TargetVersion = {
            type = "string",
        },
        PerformCheckOnly = {
            type = "boolean",
        },
        AdvancedOptions = {
            type = "map",
            key_type = "string",
            value_type = "string",
        },
        ChangeProgressDetails = {
            type = "structure",
        },
    },
}

return M
