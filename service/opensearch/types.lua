local M = {}

M.AcceptInboundConnectionInput = {
    type = "structure",
    id = "AcceptInboundConnectionInput",
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
    id = "InboundConnectionStatus",
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
    id = "AWSDomainInformation",
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
    id = "DomainInformationContainer",
    members = {
        AWSDomainInformation = M.AWSDomainInformation,
    },
}

M.InboundConnection = {
    type = "structure",
    id = "InboundConnection",
    members = {
        LocalDomainInfo = M.DomainInformationContainer,
        RemoteDomainInfo = M.DomainInformationContainer,
        ConnectionId = {
            type = "string",
        },
        ConnectionStatus = M.InboundConnectionStatus,
        ConnectionMode = {
            type = "string",
        },
    },
}

M.AcceptInboundConnectionOutput = {
    type = "structure",
    id = "AcceptInboundConnectionOutput",
    members = {
        Connection = M.InboundConnection,
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
    id = "S3GlueDataCatalog",
    members = {
        RoleArn = {
            type = "string",
        },
    },
}

M.DataSourceType = {
    type = "union",
    id = "DataSourceType",
    members = {
        S3GlueDataCatalog = M.S3GlueDataCatalog,
    },
}

M.AddDataSourceInput = {
    type = "structure",
    id = "AddDataSourceInput",
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
        DataSourceType = setmetatable({ traits = {
            required = true,
        } }, { __index = M.DataSourceType }),
        Description = {
            type = "string",
        },
    },
}

M.AddDataSourceOutput = {
    type = "structure",
    id = "AddDataSourceOutput",
    members = {
        Message = {
            type = "string",
        },
    },
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

M.DependencyFailureException = {
    type = "structure",
    id = "DependencyFailureException",
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

M.CloudWatchDirectQueryDataSource = {
    type = "structure",
    id = "CloudWatchDirectQueryDataSource",
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
    id = "PrometheusDirectQueryDataSource",
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
    id = "SecurityLakeDirectQueryDataSource",
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
    id = "DirectQueryDataSourceType",
    members = {
        CloudWatchLog = M.CloudWatchDirectQueryDataSource,
        SecurityLake = M.SecurityLakeDirectQueryDataSource,
        Prometheus = M.PrometheusDirectQueryDataSource,
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

M.AddDirectQueryDataSourceInput = {
    type = "structure",
    id = "AddDirectQueryDataSourceInput",
    members = {
        DataSourceName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        DataSourceType = setmetatable({ traits = {
            required = true,
        } }, { __index = M.DirectQueryDataSourceType }),
        Description = {
            type = "string",
        },
        OpenSearchArns = {
            type = "list",
            member = { type = "string" },
        },
        DataSourceAccessPolicy = {
            type = "string",
        },
        TagList = {
            type = "list",
            member = M.Tag,
        },
    },
}

M.AddDirectQueryDataSourceOutput = {
    type = "structure",
    id = "AddDirectQueryDataSourceOutput",
    members = {
        DataSourceArn = {
            type = "string",
        },
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

M.IAMFederationOptionsOutput = {
    type = "structure",
    id = "IAMFederationOptionsOutput",
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
    id = "JWTOptionsOutput",
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
        JWTOptions = M.JWTOptionsOutput,
        IAMFederationOptions = M.IAMFederationOptionsOutput,
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
    id = "IAMFederationOptionsInput",
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
    id = "JWTOptionsInput",
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
        JWTOptions = M.JWTOptionsInput,
        IAMFederationOptions = M.IAMFederationOptionsInput,
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

M.AIConfig = {
    type = "structure",
    id = "AIConfig",
}

M.NaturalLanguageQueryGenerationDesiredState = {
    Enabled = "ENABLED",
    Disabled = "DISABLED",
}

M.NaturalLanguageQueryGenerationOptionsInput = {
    type = "structure",
    id = "NaturalLanguageQueryGenerationOptionsInput",
    members = {
        DesiredState = {
            type = "string",
        },
    },
}

M.S3VectorsEngine = {
    type = "structure",
    id = "S3VectorsEngine",
    members = {
        Enabled = {
            type = "boolean",
        },
    },
}

M.ServerlessVectorAcceleration = {
    type = "structure",
    id = "ServerlessVectorAcceleration",
    members = {
        Enabled = {
            type = "boolean",
        },
    },
}

M.AIMLOptionsInput = {
    type = "structure",
    id = "AIMLOptionsInput",
    members = {
        NaturalLanguageQueryGenerationOptions = M.NaturalLanguageQueryGenerationOptionsInput,
        S3VectorsEngine = M.S3VectorsEngine,
        ServerlessVectorAcceleration = M.ServerlessVectorAcceleration,
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
    id = "NaturalLanguageQueryGenerationOptionsOutput",
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
    id = "AIMLOptionsOutput",
    members = {
        NaturalLanguageQueryGenerationOptions = M.NaturalLanguageQueryGenerationOptionsOutput,
        S3VectorsEngine = M.S3VectorsEngine,
        ServerlessVectorAcceleration = M.ServerlessVectorAcceleration,
    },
}

M.AIMLOptionsStatus = {
    type = "structure",
    id = "AIMLOptionsStatus",
    members = {
        Options = M.AIMLOptionsOutput,
        Status = M.OptionStatus,
    },
}

M.KeyStoreAccessOption = {
    type = "structure",
    id = "KeyStoreAccessOption",
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
    id = "PackageAssociationConfiguration",
    members = {
        KeyStoreAccessOption = M.KeyStoreAccessOption,
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
        PrerequisitePackageIDList = {
            type = "list",
            member = { type = "string" },
        },
        AssociationConfiguration = M.PackageAssociationConfiguration,
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
    ZIP_PLUGIN = "ZIP-PLUGIN",
    PACKAGE_LICENSE = "PACKAGE-LICENSE",
    PACKAGE_CONFIG = "PACKAGE-CONFIG",
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
        PrerequisitePackageIDList = {
            type = "list",
            member = { type = "string" },
        },
        ReferencePath = {
            type = "string",
        },
        ErrorDetails = M.ErrorDetails,
        AssociationConfiguration = M.PackageAssociationConfiguration,
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

M.PackageDetailsForAssociation = {
    type = "structure",
    id = "PackageDetailsForAssociation",
    members = {
        PackageID = {
            type = "string",
            traits = {
                required = true,
            },
        },
        PrerequisitePackageIDList = {
            type = "list",
            member = { type = "string" },
        },
        AssociationConfiguration = M.PackageAssociationConfiguration,
    },
}

M.AssociatePackagesInput = {
    type = "structure",
    id = "AssociatePackagesInput",
    members = {
        PackageList = {
            type = "list",
            member = M.PackageDetailsForAssociation,
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
    id = "AssociatePackagesOutput",
    members = {
        DomainPackageDetailsList = {
            type = "list",
            member = M.DomainPackageDetails,
        },
    },
}

M.AWSServicePrincipal = {
    application_opensearchservice_amazonaws_com = "application.opensearchservice.amazonaws.com",
}

M.ServiceOptions = {
    type = "structure",
    id = "ServiceOptions",
    members = {
        SupportedRegions = {
            type = "list",
            member = { type = "string" },
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
        },
        Service = {
            type = "string",
        },
        ServiceOptions = M.ServiceOptions,
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
        ServiceOptions = M.ServiceOptions,
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
        CancelledChangeIds = {
            type = "list",
            member = { type = "string" },
        },
        CancelledChangeProperties = {
            type = "list",
            member = M.CancelledChangeProperty,
        },
        DryRun = {
            type = "boolean",
        },
    },
}

M.CancelServiceSoftwareUpdateInput = {
    type = "structure",
    id = "CancelServiceSoftwareUpdateInput",
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

M.CancelServiceSoftwareUpdateOutput = {
    type = "structure",
    id = "CancelServiceSoftwareUpdateOutput",
    members = {
        ServiceSoftwareOptions = M.ServiceSoftwareOptions,
    },
}

M.AppConfigType = {
    OpensearchDashboardAdminUsers = "opensearchDashboards.dashboardAdmin.users",
    OpensearchDashboardAdminGroups = "opensearchDashboards.dashboardAdmin.groups",
}

M.AppConfig = {
    type = "structure",
    id = "AppConfig",
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
    id = "DataSource",
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
    id = "IamIdentityCenterOptionsInput",
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
    id = "CreateApplicationInput",
    members = {
        clientToken = {
            type = "string",
            traits = {
                idempotency_token = true,
            },
        },
        name = {
            type = "string",
            traits = {
                required = true,
            },
        },
        dataSources = {
            type = "list",
            member = M.DataSource,
        },
        iamIdentityCenterOptions = M.IamIdentityCenterOptionsInput,
        appConfigs = {
            type = "list",
            member = M.AppConfig,
        },
        tagList = {
            type = "list",
            member = M.Tag,
        },
        kmsKeyArn = {
            type = "string",
        },
    },
}

M.IamIdentityCenterOptions = {
    type = "structure",
    id = "IamIdentityCenterOptions",
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
    id = "CreateApplicationOutput",
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
            member = M.DataSource,
        },
        iamIdentityCenterOptions = M.IamIdentityCenterOptions,
        appConfigs = {
            type = "list",
            member = M.AppConfig,
        },
        tagList = {
            type = "list",
            member = M.Tag,
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
        UseOffPeakWindow = {
            type = "boolean",
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
    id = "NodeConfig",
    members = {
        Enabled = {
            type = "boolean",
        },
        Type = {
            type = "string",
        },
        Count = {
            type = "integer",
        },
    },
}

M.NodeOptionsNodeType = {
    COORDINATOR = "coordinator",
}

M.NodeOption = {
    type = "structure",
    id = "NodeOption",
    members = {
        NodeType = {
            type = "string",
        },
        NodeConfig = M.NodeConfig,
    },
}

M.OpenSearchWarmPartitionInstanceType = {
    ultrawarm1_medium_search = "ultrawarm1.medium.search",
    ultrawarm1_large_search = "ultrawarm1.large.search",
    ultrawarm1_xlarge_search = "ultrawarm1.xlarge.search",
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

M.ClusterConfig = {
    type = "structure",
    id = "ClusterConfig",
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
        MultiAZWithStandbyEnabled = {
            type = "boolean",
        },
        NodeOptions = {
            type = "list",
            member = M.NodeOption,
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
    id = "IdentityCenterOptionsInput",
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

M.WindowStartTime = {
    type = "structure",
    id = "WindowStartTime",
    members = {
        Hours = {
            type = "long",
            traits = {
                default = 0,
                required = true,
            },
        },
        Minutes = {
            type = "long",
            traits = {
                default = 0,
                required = true,
            },
        },
    },
}

M.OffPeakWindow = {
    type = "structure",
    id = "OffPeakWindow",
    members = {
        WindowStartTime = M.WindowStartTime,
    },
}

M.OffPeakWindowOptions = {
    type = "structure",
    id = "OffPeakWindowOptions",
    members = {
        Enabled = {
            type = "boolean",
        },
        OffPeakWindow = M.OffPeakWindow,
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

M.SoftwareUpdateOptions = {
    type = "structure",
    id = "SoftwareUpdateOptions",
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

M.CreateDomainInput = {
    type = "structure",
    id = "CreateDomainInput",
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
        ClusterConfig = M.ClusterConfig,
        EBSOptions = M.EBSOptions,
        AccessPolicies = {
            type = "string",
        },
        IPAddressType = {
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
        IdentityCenterOptions = M.IdentityCenterOptionsInput,
        TagList = {
            type = "list",
            member = M.Tag,
        },
        AutoTuneOptions = M.AutoTuneOptionsInput,
        OffPeakWindowOptions = M.OffPeakWindowOptions,
        SoftwareUpdateOptions = M.SoftwareUpdateOptions,
        AIMLOptions = M.AIMLOptionsInput,
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
    id = "IdentityCenterOptions",
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

M.DomainStatus = {
    type = "structure",
    id = "DomainStatus",
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
            key = { type = "string" },
            value = { type = "string" },
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
        ClusterConfig = setmetatable({ traits = {
            required = true,
        } }, { __index = M.ClusterConfig }),
        EBSOptions = M.EBSOptions,
        AccessPolicies = {
            type = "string",
        },
        IPAddressType = {
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
        IdentityCenterOptions = M.IdentityCenterOptions,
        AutoTuneOptions = M.AutoTuneOptionsOutput,
        ChangeProgressDetails = M.ChangeProgressDetails,
        OffPeakWindowOptions = M.OffPeakWindowOptions,
        SoftwareUpdateOptions = M.SoftwareUpdateOptions,
        DomainProcessingStatus = {
            type = "string",
        },
        ModifyingProperties = {
            type = "list",
            member = M.ModifyingProperties,
        },
        AIMLOptions = M.AIMLOptionsOutput,
        DeploymentStrategyOptions = M.DeploymentStrategyOptions,
    },
}

M.CreateDomainOutput = {
    type = "structure",
    id = "CreateDomainOutput",
    members = {
        DomainStatus = M.DomainStatus,
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

M.CreateIndexInput = {
    type = "structure",
    id = "CreateIndexInput",
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
    id = "CreateIndexOutput",
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
    id = "ThrottlingException",
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
    id = "CrossClusterSearchConnectionProperties",
    members = {
        SkipUnavailable = {
            type = "string",
        },
    },
}

M.ConnectionProperties = {
    type = "structure",
    id = "ConnectionProperties",
    members = {
        Endpoint = {
            type = "string",
        },
        CrossClusterSearch = M.CrossClusterSearchConnectionProperties,
    },
}

M.CreateOutboundConnectionInput = {
    type = "structure",
    id = "CreateOutboundConnectionInput",
    members = {
        LocalDomainInfo = setmetatable({ traits = {
            required = true,
        } }, { __index = M.DomainInformationContainer }),
        RemoteDomainInfo = setmetatable({ traits = {
            required = true,
        } }, { __index = M.DomainInformationContainer }),
        ConnectionAlias = {
            type = "string",
            traits = {
                required = true,
            },
        },
        ConnectionMode = {
            type = "string",
        },
        ConnectionProperties = M.ConnectionProperties,
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
    id = "OutboundConnectionStatus",
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
    id = "CreateOutboundConnectionOutput",
    members = {
        LocalDomainInfo = M.DomainInformationContainer,
        RemoteDomainInfo = M.DomainInformationContainer,
        ConnectionAlias = {
            type = "string",
        },
        ConnectionStatus = M.OutboundConnectionStatus,
        ConnectionId = {
            type = "string",
        },
        ConnectionMode = {
            type = "string",
        },
        ConnectionProperties = M.ConnectionProperties,
    },
}

M.RequirementLevel = {
    REQUIRED = "REQUIRED",
    OPTIONAL = "OPTIONAL",
    NONE = "NONE",
}

M.PackageConfiguration = {
    type = "structure",
    id = "PackageConfiguration",
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
    id = "PackageEncryptionOptions",
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

M.PackageVendingOptions = {
    type = "structure",
    id = "PackageVendingOptions",
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
        PackageConfiguration = M.PackageConfiguration,
        EngineVersion = {
            type = "string",
        },
        PackageVendingOptions = M.PackageVendingOptions,
        PackageEncryptionOptions = M.PackageEncryptionOptions,
    },
}

M.PluginProperties = {
    type = "structure",
    id = "PluginProperties",
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
            type = "long",
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
        EngineVersion = {
            type = "string",
        },
        AvailablePluginProperties = M.PluginProperties,
        AvailablePackageConfiguration = M.PackageConfiguration,
        AllowListedUserList = {
            type = "list",
            member = { type = "string" },
        },
        PackageOwner = {
            type = "string",
        },
        PackageVendingOptions = M.PackageVendingOptions,
        PackageEncryptionOptions = M.PackageEncryptionOptions,
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

M.DeleteApplicationInput = {
    type = "structure",
    id = "DeleteApplicationInput",
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
    id = "DeleteApplicationOutput",
}

M.DeleteDataSourceInput = {
    type = "structure",
    id = "DeleteDataSourceInput",
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
    id = "DeleteDataSourceOutput",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.DeleteDirectQueryDataSourceInput = {
    type = "structure",
    id = "DeleteDirectQueryDataSourceInput",
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
    id = "DeleteDirectQueryDataSourceOutput",
}

M.DeleteDomainInput = {
    type = "structure",
    id = "DeleteDomainInput",
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
    id = "DeleteDomainOutput",
    members = {
        DomainStatus = M.DomainStatus,
    },
}

M.DeleteInboundConnectionInput = {
    type = "structure",
    id = "DeleteInboundConnectionInput",
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
    id = "DeleteInboundConnectionOutput",
    members = {
        Connection = M.InboundConnection,
    },
}

M.DeleteIndexInput = {
    type = "structure",
    id = "DeleteIndexInput",
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
    id = "DeleteIndexOutput",
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
    id = "DeleteOutboundConnectionInput",
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
    id = "OutboundConnection",
    members = {
        LocalDomainInfo = M.DomainInformationContainer,
        RemoteDomainInfo = M.DomainInformationContainer,
        ConnectionId = {
            type = "string",
        },
        ConnectionAlias = {
            type = "string",
        },
        ConnectionStatus = M.OutboundConnectionStatus,
        ConnectionMode = {
            type = "string",
        },
        ConnectionProperties = M.ConnectionProperties,
    },
}

M.DeleteOutboundConnectionOutput = {
    type = "structure",
    id = "DeleteOutboundConnectionOutput",
    members = {
        Connection = M.OutboundConnection,
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

M.DeregisterCapabilityInput = {
    type = "structure",
    id = "DeregisterCapabilityInput",
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
    id = "DeregisterCapabilityOutput",
    members = {
        status = {
            type = "string",
        },
    },
}

M.DescribeDomainInput = {
    type = "structure",
    id = "DescribeDomainInput",
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
    id = "DescribeDomainOutput",
    members = {
        DomainStatus = setmetatable({ traits = {
            required = true,
        } }, { __index = M.DomainStatus }),
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
    id = "DescribeDomainChangeProgressOutput",
    members = {
        ChangeProgressStatus = M.ChangeProgressStatusDetails,
    },
}

M.DescribeDomainConfigInput = {
    type = "structure",
    id = "DescribeDomainConfigInput",
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
        UseOffPeakWindow = {
            type = "boolean",
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

M.ClusterConfigStatus = {
    type = "structure",
    id = "ClusterConfigStatus",
    members = {
        Options = setmetatable({ traits = {
            required = true,
        } }, { __index = M.ClusterConfig }),
        Status = setmetatable({ traits = {
            required = true,
        } }, { __index = M.OptionStatus }),
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

M.VersionStatus = {
    type = "structure",
    id = "VersionStatus",
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

M.IdentityCenterOptionsStatus = {
    type = "structure",
    id = "IdentityCenterOptionsStatus",
    members = {
        Options = setmetatable({ traits = {
            required = true,
        } }, { __index = M.IdentityCenterOptions }),
        Status = setmetatable({ traits = {
            required = true,
        } }, { __index = M.OptionStatus }),
    },
}

M.IPAddressTypeStatus = {
    type = "structure",
    id = "IPAddressTypeStatus",
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

M.OffPeakWindowOptionsStatus = {
    type = "structure",
    id = "OffPeakWindowOptionsStatus",
    members = {
        Options = M.OffPeakWindowOptions,
        Status = M.OptionStatus,
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

M.SoftwareUpdateOptionsStatus = {
    type = "structure",
    id = "SoftwareUpdateOptionsStatus",
    members = {
        Options = M.SoftwareUpdateOptions,
        Status = M.OptionStatus,
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

M.DomainConfig = {
    type = "structure",
    id = "DomainConfig",
    members = {
        EngineVersion = M.VersionStatus,
        ClusterConfig = M.ClusterConfigStatus,
        EBSOptions = M.EBSOptionsStatus,
        AccessPolicies = M.AccessPoliciesStatus,
        IPAddressType = M.IPAddressTypeStatus,
        SnapshotOptions = M.SnapshotOptionsStatus,
        VPCOptions = M.VPCDerivedInfoStatus,
        CognitoOptions = M.CognitoOptionsStatus,
        EncryptionAtRestOptions = M.EncryptionAtRestOptionsStatus,
        NodeToNodeEncryptionOptions = M.NodeToNodeEncryptionOptionsStatus,
        AdvancedOptions = M.AdvancedOptionsStatus,
        LogPublishingOptions = M.LogPublishingOptionsStatus,
        DomainEndpointOptions = M.DomainEndpointOptionsStatus,
        AdvancedSecurityOptions = M.AdvancedSecurityOptionsStatus,
        IdentityCenterOptions = M.IdentityCenterOptionsStatus,
        AutoTuneOptions = M.AutoTuneOptionsStatus,
        ChangeProgressDetails = M.ChangeProgressDetails,
        OffPeakWindowOptions = M.OffPeakWindowOptionsStatus,
        SoftwareUpdateOptions = M.SoftwareUpdateOptionsStatus,
        ModifyingProperties = {
            type = "list",
            member = M.ModifyingProperties,
        },
        AIMLOptions = M.AIMLOptionsStatus,
        DeploymentStrategyOptions = M.DeploymentStrategyOptionsStatus,
    },
}

M.DescribeDomainConfigOutput = {
    type = "structure",
    id = "DescribeDomainConfigOutput",
    members = {
        DomainConfig = setmetatable({ traits = {
            required = true,
        } }, { __index = M.DomainConfig }),
    },
}

M.DescribeDomainHealthInput = {
    type = "structure",
    id = "DescribeDomainHealthInput",
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
    id = "AvailabilityZoneInfo",
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
    id = "EnvironmentInfo",
    members = {
        AvailabilityZoneInformation = {
            type = "list",
            member = M.AvailabilityZoneInfo,
        },
    },
}

M.MasterNodeStatus = {
    Available = "Available",
    UnAvailable = "UnAvailable",
}

M.DescribeDomainHealthOutput = {
    type = "structure",
    id = "DescribeDomainHealthOutput",
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
            member = M.EnvironmentInfo,
        },
    },
}

M.DescribeDomainNodesInput = {
    type = "structure",
    id = "DescribeDomainNodesInput",
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
    id = "DomainNodesStatus",
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
    id = "DescribeDomainNodesOutput",
    members = {
        DomainNodesStatusList = {
            type = "list",
            member = M.DomainNodesStatus,
        },
    },
}

M.DescribeDomainsInput = {
    type = "structure",
    id = "DescribeDomainsInput",
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

M.DescribeDomainsOutput = {
    type = "structure",
    id = "DescribeDomainsOutput",
    members = {
        DomainStatusList = {
            type = "list",
            member = M.DomainStatus,
            traits = {
                required = true,
            },
        },
    },
}

M.DescribeDryRunProgressInput = {
    type = "structure",
    id = "DescribeDryRunProgressInput",
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
    id = "ValidationFailure",
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
    id = "DryRunProgressStatus",
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
            member = M.ValidationFailure,
        },
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

M.DescribeDryRunProgressOutput = {
    type = "structure",
    id = "DescribeDryRunProgressOutput",
    members = {
        DryRunProgressStatus = M.DryRunProgressStatus,
        DryRunConfig = M.DomainStatus,
        DryRunResults = M.DryRunResults,
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

M.DescribeInboundConnectionsInput = {
    type = "structure",
    id = "DescribeInboundConnectionsInput",
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

M.DescribeInboundConnectionsOutput = {
    type = "structure",
    id = "DescribeInboundConnectionsOutput",
    members = {
        Connections = {
            type = "list",
            member = M.InboundConnection,
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

M.InsightEntityType = {
    ACCOUNT = "Account",
    DOMAIN = "DomainName",
}

M.InsightEntity = {
    type = "structure",
    id = "InsightEntity",
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
    id = "DescribeInsightDetailsInput",
    members = {
        Entity = setmetatable({ traits = {
            required = true,
        } }, { __index = M.InsightEntity }),
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
    id = "InsightField",
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
    id = "DescribeInsightDetailsOutput",
    members = {
        Fields = {
            type = "list",
            member = M.InsightField,
            traits = {
                required = true,
            },
        },
    },
}

M.DescribeInstanceTypeLimitsInput = {
    type = "structure",
    id = "DescribeInstanceTypeLimitsInput",
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

M.DescribeInstanceTypeLimitsOutput = {
    type = "structure",
    id = "DescribeInstanceTypeLimitsOutput",
    members = {
        LimitsByRole = {
            type = "map",
            key = { type = "string" },
            value = M.Limits,
        },
    },
}

M.DescribeOutboundConnectionsInput = {
    type = "structure",
    id = "DescribeOutboundConnectionsInput",
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

M.DescribeOutboundConnectionsOutput = {
    type = "structure",
    id = "DescribeOutboundConnectionsOutput",
    members = {
        Connections = {
            type = "list",
            member = M.OutboundConnection,
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

M.DescribeReservedInstanceOfferingsInput = {
    type = "structure",
    id = "DescribeReservedInstanceOfferingsInput",
    members = {
        ReservedInstanceOfferingId = {
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

M.ReservedInstancePaymentOption = {
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

M.ReservedInstanceOffering = {
    type = "structure",
    id = "ReservedInstanceOffering",
    members = {
        ReservedInstanceOfferingId = {
            type = "string",
        },
        InstanceType = {
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

M.DescribeReservedInstanceOfferingsOutput = {
    type = "structure",
    id = "DescribeReservedInstanceOfferingsOutput",
    members = {
        NextToken = {
            type = "string",
        },
        ReservedInstanceOfferings = {
            type = "list",
            member = M.ReservedInstanceOffering,
        },
    },
}

M.DescribeReservedInstancesInput = {
    type = "structure",
    id = "DescribeReservedInstancesInput",
    members = {
        ReservedInstanceId = {
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

M.ReservedInstance = {
    type = "structure",
    id = "ReservedInstance",
    members = {
        ReservationName = {
            type = "string",
        },
        ReservedInstanceId = {
            type = "string",
        },
        BillingSubscriptionId = {
            type = "long",
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
        InstanceCount = {
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

M.DescribeReservedInstancesOutput = {
    type = "structure",
    id = "DescribeReservedInstancesOutput",
    members = {
        NextToken = {
            type = "string",
        },
        ReservedInstances = {
            type = "list",
            member = M.ReservedInstance,
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

M.DissociatePackagesInput = {
    type = "structure",
    id = "DissociatePackagesInput",
    members = {
        PackageList = {
            type = "list",
            member = { type = "string" },
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
    id = "DissociatePackagesOutput",
    members = {
        DomainPackageDetailsList = {
            type = "list",
            member = M.DomainPackageDetails,
        },
    },
}

M.GetApplicationInput = {
    type = "structure",
    id = "GetApplicationInput",
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
    id = "GetApplicationOutput",
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
        iamIdentityCenterOptions = M.IamIdentityCenterOptions,
        dataSources = {
            type = "list",
            member = M.DataSource,
        },
        appConfigs = {
            type = "list",
            member = M.AppConfig,
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
    id = "GetCapabilityInput",
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
    id = "CapabilityExtendedResponseConfig",
    members = {
        aiConfig = M.AIConfig,
    },
}

M.CapabilityFailureReason = {
    KMS_KEY_INSUFFICIENT_PERMISSION = "KMS_KEY_INSUFFICIENT_PERMISSION",
}

M.CapabilityFailure = {
    type = "structure",
    id = "CapabilityFailure",
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
    id = "GetCapabilityOutput",
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
        capabilityConfig = M.CapabilityExtendedResponseConfig,
        failures = {
            type = "list",
            member = M.CapabilityFailure,
        },
    },
}

M.GetCompatibleVersionsInput = {
    type = "structure",
    id = "GetCompatibleVersionsInput",
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

M.GetCompatibleVersionsOutput = {
    type = "structure",
    id = "GetCompatibleVersionsOutput",
    members = {
        CompatibleVersions = {
            type = "list",
            member = M.CompatibleVersionsMap,
        },
    },
}

M.GetDataSourceInput = {
    type = "structure",
    id = "GetDataSourceInput",
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
    id = "GetDataSourceOutput",
    members = {
        DataSourceType = M.DataSourceType,
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
    id = "GetDefaultApplicationSettingInput",
}

M.GetDefaultApplicationSettingOutput = {
    type = "structure",
    id = "GetDefaultApplicationSettingOutput",
    members = {
        applicationArn = {
            type = "string",
        },
    },
}

M.GetDirectQueryDataSourceInput = {
    type = "structure",
    id = "GetDirectQueryDataSourceInput",
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
    id = "GetDirectQueryDataSourceOutput",
    members = {
        DataSourceName = {
            type = "string",
        },
        DataSourceType = M.DirectQueryDataSourceType,
        Description = {
            type = "string",
        },
        OpenSearchArns = {
            type = "list",
            member = { type = "string" },
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
    id = "GetDomainMaintenanceStatusInput",
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
    id = "GetDomainMaintenanceStatusOutput",
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
    id = "GetIndexInput",
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
    id = "GetIndexOutput",
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
        PluginProperties = M.PluginProperties,
        PackageConfiguration = M.PackageConfiguration,
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

M.ListApplicationsInput = {
    type = "structure",
    id = "ListApplicationsInput",
    members = {
        nextToken = {
            type = "string",
            traits = {
                http_query = "nextToken",
            },
        },
        statuses = {
            type = "list",
            member = { type = "string" },
            traits = {
                http_query = "statuses",
            },
        },
        maxResults = {
            type = "integer",
            traits = {
                default = 0,
                http_query = "maxResults",
            },
        },
    },
}

M.ApplicationSummary = {
    type = "structure",
    id = "ApplicationSummary",
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
    id = "ListApplicationsOutput",
    members = {
        ApplicationSummaries = {
            type = "list",
            member = M.ApplicationSummary,
        },
        nextToken = {
            type = "string",
        },
    },
}

M.ListDataSourcesInput = {
    type = "structure",
    id = "ListDataSourcesInput",
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
    id = "DataSourceDetails",
    members = {
        DataSourceType = M.DataSourceType,
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
    id = "ListDataSourcesOutput",
    members = {
        DataSources = {
            type = "list",
            member = M.DataSourceDetails,
        },
    },
}

M.ListDirectQueryDataSourcesInput = {
    type = "structure",
    id = "ListDirectQueryDataSourcesInput",
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
    id = "DirectQueryDataSource",
    members = {
        DataSourceName = {
            type = "string",
        },
        DataSourceType = M.DirectQueryDataSourceType,
        Description = {
            type = "string",
        },
        OpenSearchArns = {
            type = "list",
            member = { type = "string" },
        },
        DataSourceArn = {
            type = "string",
        },
        TagList = {
            type = "list",
            member = M.Tag,
        },
    },
}

M.ListDirectQueryDataSourcesOutput = {
    type = "structure",
    id = "ListDirectQueryDataSourcesOutput",
    members = {
        NextToken = {
            type = "string",
        },
        DirectQueryDataSources = {
            type = "list",
            member = M.DirectQueryDataSource,
        },
    },
}

M.ListDomainMaintenancesInput = {
    type = "structure",
    id = "ListDomainMaintenancesInput",
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

M.DomainMaintenanceDetails = {
    type = "structure",
    id = "DomainMaintenanceDetails",
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
    id = "ListDomainMaintenancesOutput",
    members = {
        DomainMaintenances = {
            type = "list",
            member = M.DomainMaintenanceDetails,
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

M.InsightSortOrder = {
    ASC = "ASC",
    DESC = "DESC",
}

M.InsightTimeRange = {
    type = "structure",
    id = "InsightTimeRange",
    members = {
        From = {
            type = "long",
            traits = {
                required = true,
            },
        },
        To = {
            type = "long",
            traits = {
                required = true,
            },
        },
    },
}

M.ListInsightsInput = {
    type = "structure",
    id = "ListInsightsInput",
    members = {
        Entity = setmetatable({ traits = {
            required = true,
        } }, { __index = M.InsightEntity }),
        TimeRange = M.InsightTimeRange,
        SortOrder = {
            type = "string",
        },
        MaxResults = {
            type = "integer",
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
    id = "Insight",
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
    id = "ListInsightsOutput",
    members = {
        Insights = {
            type = "list",
            member = M.Insight,
        },
        NextToken = {
            type = "string",
        },
    },
}

M.ListInstanceTypeDetailsInput = {
    type = "structure",
    id = "ListInstanceTypeDetailsInput",
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
    id = "InstanceTypeDetails",
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
            member = { type = "string" },
        },
        AvailabilityZones = {
            type = "list",
            member = { type = "string" },
        },
    },
}

M.ListInstanceTypeDetailsOutput = {
    type = "structure",
    id = "ListInstanceTypeDetailsOutput",
    members = {
        InstanceTypeDetails = {
            type = "list",
            member = M.InstanceTypeDetails,
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

M.ListScheduledActionsInput = {
    type = "structure",
    id = "ListScheduledActionsInput",
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

M.ScheduledBy = {
    CUSTOMER = "CUSTOMER",
    SYSTEM = "SYSTEM",
}

M.ScheduledAction = {
    type = "structure",
    id = "ScheduledAction",
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
            type = "long",
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
    id = "ListScheduledActionsOutput",
    members = {
        ScheduledActions = {
            type = "list",
            member = M.ScheduledAction,
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

M.ListVersionsInput = {
    type = "structure",
    id = "ListVersionsInput",
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

M.ListVersionsOutput = {
    type = "structure",
    id = "ListVersionsOutput",
    members = {
        Versions = {
            type = "list",
            member = { type = "string" },
        },
        NextToken = {
            type = "string",
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

M.PurchaseReservedInstanceOfferingInput = {
    type = "structure",
    id = "PurchaseReservedInstanceOfferingInput",
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
            type = "integer",
        },
    },
}

M.PurchaseReservedInstanceOfferingOutput = {
    type = "structure",
    id = "PurchaseReservedInstanceOfferingOutput",
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
    id = "PutDefaultApplicationSettingInput",
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
    id = "PutDefaultApplicationSettingOutput",
    members = {
        applicationArn = {
            type = "string",
        },
    },
}

M.CapabilityBaseRequestConfig = {
    type = "union",
    id = "CapabilityBaseRequestConfig",
    members = {
        aiConfig = M.AIConfig,
    },
}

M.RegisterCapabilityInput = {
    type = "structure",
    id = "RegisterCapabilityInput",
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
        capabilityConfig = setmetatable({ traits = {
            required = true,
        } }, { __index = M.CapabilityBaseRequestConfig }),
    },
}

M.CapabilityBaseResponseConfig = {
    type = "union",
    id = "CapabilityBaseResponseConfig",
    members = {
        aiConfig = M.AIConfig,
    },
}

M.RegisterCapabilityOutput = {
    type = "structure",
    id = "RegisterCapabilityOutput",
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
        capabilityConfig = M.CapabilityBaseResponseConfig,
    },
}

M.ServiceQuotaExceededException = {
    type = "structure",
    id = "ServiceQuotaExceededException",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.RejectInboundConnectionInput = {
    type = "structure",
    id = "RejectInboundConnectionInput",
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
    id = "RejectInboundConnectionOutput",
    members = {
        Connection = M.InboundConnection,
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
        },
        Service = {
            type = "string",
        },
        ServiceOptions = M.ServiceOptions,
    },
}

M.RevokeVpcEndpointAccessOutput = {
    type = "structure",
    id = "RevokeVpcEndpointAccessOutput",
}

M.RollbackServiceSoftwareUpdateInput = {
    type = "structure",
    id = "RollbackServiceSoftwareUpdateInput",
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
    id = "RollbackServiceSoftwareOptions",
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
    id = "RollbackServiceSoftwareUpdateOutput",
    members = {
        RollbackServiceSoftwareOptions = M.RollbackServiceSoftwareOptions,
    },
}

M.StartDomainMaintenanceInput = {
    type = "structure",
    id = "StartDomainMaintenanceInput",
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
    id = "StartDomainMaintenanceOutput",
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
    id = "StartServiceSoftwareUpdateInput",
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
            type = "long",
        },
    },
}

M.StartServiceSoftwareUpdateOutput = {
    type = "structure",
    id = "StartServiceSoftwareUpdateOutput",
    members = {
        ServiceSoftwareOptions = M.ServiceSoftwareOptions,
    },
}

M.UpdateApplicationInput = {
    type = "structure",
    id = "UpdateApplicationInput",
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
            member = M.DataSource,
        },
        appConfigs = {
            type = "list",
            member = M.AppConfig,
        },
    },
}

M.UpdateApplicationOutput = {
    type = "structure",
    id = "UpdateApplicationOutput",
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
            member = M.DataSource,
        },
        iamIdentityCenterOptions = M.IamIdentityCenterOptions,
        appConfigs = {
            type = "list",
            member = M.AppConfig,
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
    id = "UpdateDataSourceInput",
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
        DataSourceType = setmetatable({ traits = {
            required = true,
        } }, { __index = M.DataSourceType }),
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
    id = "UpdateDataSourceOutput",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.UpdateDirectQueryDataSourceInput = {
    type = "structure",
    id = "UpdateDirectQueryDataSourceInput",
    members = {
        DataSourceName = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        DataSourceType = setmetatable({ traits = {
            required = true,
        } }, { __index = M.DirectQueryDataSourceType }),
        Description = {
            type = "string",
        },
        OpenSearchArns = {
            type = "list",
            member = { type = "string" },
        },
        DataSourceAccessPolicy = {
            type = "string",
        },
    },
}

M.UpdateDirectQueryDataSourceOutput = {
    type = "structure",
    id = "UpdateDirectQueryDataSourceOutput",
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
    id = "UpdateDomainConfigInput",
    members = {
        DomainName = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        ClusterConfig = M.ClusterConfig,
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
        IPAddressType = {
            type = "string",
        },
        LogPublishingOptions = {
            type = "map",
            key = { type = "string" },
            value = M.LogPublishingOption,
        },
        EncryptionAtRestOptions = M.EncryptionAtRestOptions,
        DomainEndpointOptions = M.DomainEndpointOptions,
        NodeToNodeEncryptionOptions = M.NodeToNodeEncryptionOptions,
        AdvancedSecurityOptions = M.AdvancedSecurityOptionsInput,
        IdentityCenterOptions = M.IdentityCenterOptionsInput,
        AutoTuneOptions = M.AutoTuneOptions,
        DryRun = {
            type = "boolean",
        },
        DryRunMode = {
            type = "string",
        },
        OffPeakWindowOptions = M.OffPeakWindowOptions,
        SoftwareUpdateOptions = M.SoftwareUpdateOptions,
        AIMLOptions = M.AIMLOptionsInput,
        DeploymentStrategyOptions = M.DeploymentStrategyOptions,
    },
}

M.UpdateDomainConfigOutput = {
    type = "structure",
    id = "UpdateDomainConfigOutput",
    members = {
        DomainConfig = setmetatable({ traits = {
            required = true,
        } }, { __index = M.DomainConfig }),
        DryRunResults = M.DryRunResults,
        DryRunProgressStatus = M.DryRunProgressStatus,
    },
}

M.UpdateIndexInput = {
    type = "structure",
    id = "UpdateIndexInput",
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
    id = "UpdateIndexOutput",
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
        PackageConfiguration = M.PackageConfiguration,
        PackageEncryptionOptions = M.PackageEncryptionOptions,
    },
}

M.UpdatePackageOutput = {
    type = "structure",
    id = "UpdatePackageOutput",
    members = {
        PackageDetails = M.PackageDetails,
    },
}

M.PackageScopeOperationEnum = {
    ADD = "ADD",
    OVERRIDE = "OVERRIDE",
    REMOVE = "REMOVE",
}

M.UpdatePackageScopeInput = {
    type = "structure",
    id = "UpdatePackageScopeInput",
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
            member = { type = "string" },
            traits = {
                required = true,
            },
        },
    },
}

M.UpdatePackageScopeOutput = {
    type = "structure",
    id = "UpdatePackageScopeOutput",
    members = {
        PackageID = {
            type = "string",
        },
        Operation = {
            type = "string",
        },
        PackageUserList = {
            type = "list",
            member = { type = "string" },
        },
    },
}

M.SlotNotAvailableException = {
    type = "structure",
    id = "SlotNotAvailableException",
    error = "client",
    members = {
        SlotSuggestions = {
            type = "list",
            member = { type = "long" },
        },
        message = {
            type = "string",
        },
    },
}

M.UpdateScheduledActionInput = {
    type = "structure",
    id = "UpdateScheduledActionInput",
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
            type = "long",
        },
    },
}

M.UpdateScheduledActionOutput = {
    type = "structure",
    id = "UpdateScheduledActionOutput",
    members = {
        ScheduledAction = M.ScheduledAction,
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

M.UpgradeDomainInput = {
    type = "structure",
    id = "UpgradeDomainInput",
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
            key = { type = "string" },
            value = { type = "string" },
        },
    },
}

M.UpgradeDomainOutput = {
    type = "structure",
    id = "UpgradeDomainOutput",
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
            key = { type = "string" },
            value = { type = "string" },
        },
        ChangeProgressDetails = M.ChangeProgressDetails,
    },
}

return M
