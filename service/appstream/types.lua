local M = {}

M.AccessEndpointType = {
    STREAMING = "STREAMING",
}

M.AccessEndpoint = {
    type = "structure",
    id = "AccessEndpoint",
    members = {
        EndpointType = {
            type = "string",
            traits = {
                required = true,
            },
        },
        VpceId = {
            type = "string",
        },
    },
}

M.Action = {
    CLIPBOARD_COPY_FROM_LOCAL_DEVICE = "CLIPBOARD_COPY_FROM_LOCAL_DEVICE",
    CLIPBOARD_COPY_TO_LOCAL_DEVICE = "CLIPBOARD_COPY_TO_LOCAL_DEVICE",
    FILE_UPLOAD = "FILE_UPLOAD",
    FILE_DOWNLOAD = "FILE_DOWNLOAD",
    PRINTING_TO_LOCAL_DEVICE = "PRINTING_TO_LOCAL_DEVICE",
    DOMAIN_PASSWORD_SIGNIN = "DOMAIN_PASSWORD_SIGNIN",
    DOMAIN_SMART_CARD_SIGNIN = "DOMAIN_SMART_CARD_SIGNIN",
    AUTO_TIME_ZONE_REDIRECTION = "AUTO_TIME_ZONE_REDIRECTION",
}

M.AdminAppLicenseUsageRecord = {
    type = "structure",
    id = "AdminAppLicenseUsageRecord",
    members = {
        UserArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        BillingPeriod = {
            type = "string",
            traits = {
                required = true,
            },
        },
        OwnerAWSAccountId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        SubscriptionFirstUsedDate = {
            type = "timestamp",
            traits = {
                required = true,
            },
        },
        SubscriptionLastUsedDate = {
            type = "timestamp",
            traits = {
                required = true,
            },
        },
        LicenseType = {
            type = "string",
            traits = {
                required = true,
            },
        },
        UserId = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.ScreenImageFormat = {
    PNG = "PNG",
    JPEG = "JPEG",
}

M.ScreenResolution = {
    W_1280xH_720 = "W_1280xH_720",
}

M.AgentAction = {
    COMPUTER_VISION = "COMPUTER_VISION",
    COMPUTER_INPUT = "COMPUTER_INPUT",
}

M.Permission = {
    ENABLED = "ENABLED",
    DISABLED = "DISABLED",
}

M.AgentAccessSetting = {
    type = "structure",
    id = "AgentAccessSetting",
    members = {
        AgentAction = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Permission = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.AgentAccessConfig = {
    type = "structure",
    id = "AgentAccessConfig",
    members = {
        Settings = {
            type = "list",
            member = M.AgentAccessSetting,
            traits = {
                required = true,
            },
        },
        S3BucketArn = {
            type = "string",
        },
        ScreenshotsUploadEnabled = {
            type = "boolean",
        },
        ScreenResolution = {
            type = "string",
            traits = {
                required = true,
            },
        },
        ScreenImageFormat = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.AgentAccessConfigForUpdate = {
    type = "structure",
    id = "AgentAccessConfigForUpdate",
    members = {
        Settings = {
            type = "list",
            member = M.AgentAccessSetting,
        },
        S3BucketArn = {
            type = "string",
        },
        ScreenshotsUploadEnabled = {
            type = "boolean",
        },
        ScreenResolution = {
            type = "string",
        },
        ScreenImageFormat = {
            type = "string",
        },
    },
}

M.AgentSoftwareVersion = {
    CURRENT_LATEST = "CURRENT_LATEST",
    ALWAYS_LATEST = "ALWAYS_LATEST",
}

M.ErrorDetails = {
    type = "structure",
    id = "ErrorDetails",
    members = {
        ErrorCode = {
            type = "string",
        },
        ErrorMessage = {
            type = "string",
        },
    },
}

M.PackagingType = {
    CUSTOM = "CUSTOM",
    APPSTREAM2 = "APPSTREAM2",
}

M.S3Location = {
    type = "structure",
    id = "S3Location",
    members = {
        S3Bucket = {
            type = "string",
            traits = {
                required = true,
            },
        },
        S3Key = {
            type = "string",
        },
    },
}

M.ScriptDetails = {
    type = "structure",
    id = "ScriptDetails",
    members = {
        ScriptS3Location = setmetatable({ traits = {
            required = true,
        } }, { __index = M.S3Location }),
        ExecutablePath = {
            type = "string",
            traits = {
                required = true,
            },
        },
        ExecutableParameters = {
            type = "string",
        },
        TimeoutInSeconds = {
            type = "integer",
            traits = {
                required = true,
            },
        },
    },
}

M.AppBlockState = {
    INACTIVE = "INACTIVE",
    ACTIVE = "ACTIVE",
}

M.AppBlock = {
    type = "structure",
    id = "AppBlock",
    members = {
        Name = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Arn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Description = {
            type = "string",
        },
        DisplayName = {
            type = "string",
        },
        SourceS3Location = M.S3Location,
        SetupScriptDetails = M.ScriptDetails,
        CreatedTime = {
            type = "timestamp",
        },
        PostSetupScriptDetails = M.ScriptDetails,
        PackagingType = {
            type = "string",
        },
        State = {
            type = "string",
        },
        AppBlockErrors = {
            type = "list",
            member = M.ErrorDetails,
        },
    },
}

M.FleetErrorCode = {
    IAM_SERVICE_ROLE_MISSING_ENI_DESCRIBE_ACTION = "IAM_SERVICE_ROLE_MISSING_ENI_DESCRIBE_ACTION",
    IAM_SERVICE_ROLE_MISSING_ENI_CREATE_ACTION = "IAM_SERVICE_ROLE_MISSING_ENI_CREATE_ACTION",
    IAM_SERVICE_ROLE_MISSING_ENI_DELETE_ACTION = "IAM_SERVICE_ROLE_MISSING_ENI_DELETE_ACTION",
    NETWORK_INTERFACE_LIMIT_EXCEEDED = "NETWORK_INTERFACE_LIMIT_EXCEEDED",
    INTERNAL_SERVICE_ERROR = "INTERNAL_SERVICE_ERROR",
    IAM_SERVICE_ROLE_IS_MISSING = "IAM_SERVICE_ROLE_IS_MISSING",
    MACHINE_ROLE_IS_MISSING = "MACHINE_ROLE_IS_MISSING",
    STS_DISABLED_IN_REGION = "STS_DISABLED_IN_REGION",
    SUBNET_HAS_INSUFFICIENT_IP_ADDRESSES = "SUBNET_HAS_INSUFFICIENT_IP_ADDRESSES",
    IAM_SERVICE_ROLE_MISSING_DESCRIBE_SUBNET_ACTION = "IAM_SERVICE_ROLE_MISSING_DESCRIBE_SUBNET_ACTION",
    SUBNET_NOT_FOUND = "SUBNET_NOT_FOUND",
    IMAGE_NOT_FOUND = "IMAGE_NOT_FOUND",
    INVALID_SUBNET_CONFIGURATION = "INVALID_SUBNET_CONFIGURATION",
    SECURITY_GROUPS_NOT_FOUND = "SECURITY_GROUPS_NOT_FOUND",
    IGW_NOT_ATTACHED = "IGW_NOT_ATTACHED",
    IAM_SERVICE_ROLE_MISSING_DESCRIBE_SECURITY_GROUPS_ACTION = "IAM_SERVICE_ROLE_MISSING_DESCRIBE_SECURITY_GROUPS_ACTION",
    FLEET_STOPPED = "FLEET_STOPPED",
    FLEET_INSTANCE_PROVISIONING_FAILURE = "FLEET_INSTANCE_PROVISIONING_FAILURE",
    DOMAIN_JOIN_ERROR_FILE_NOT_FOUND = "DOMAIN_JOIN_ERROR_FILE_NOT_FOUND",
    DOMAIN_JOIN_ERROR_ACCESS_DENIED = "DOMAIN_JOIN_ERROR_ACCESS_DENIED",
    DOMAIN_JOIN_ERROR_LOGON_FAILURE = "DOMAIN_JOIN_ERROR_LOGON_FAILURE",
    DOMAIN_JOIN_ERROR_INVALID_PARAMETER = "DOMAIN_JOIN_ERROR_INVALID_PARAMETER",
    DOMAIN_JOIN_ERROR_MORE_DATA = "DOMAIN_JOIN_ERROR_MORE_DATA",
    DOMAIN_JOIN_ERROR_NO_SUCH_DOMAIN = "DOMAIN_JOIN_ERROR_NO_SUCH_DOMAIN",
    DOMAIN_JOIN_ERROR_NOT_SUPPORTED = "DOMAIN_JOIN_ERROR_NOT_SUPPORTED",
    DOMAIN_JOIN_NERR_INVALID_WORKGROUP_NAME = "DOMAIN_JOIN_NERR_INVALID_WORKGROUP_NAME",
    DOMAIN_JOIN_NERR_WORKSTATION_NOT_STARTED = "DOMAIN_JOIN_NERR_WORKSTATION_NOT_STARTED",
    DOMAIN_JOIN_ERROR_DS_MACHINE_ACCOUNT_QUOTA_EXCEEDED = "DOMAIN_JOIN_ERROR_DS_MACHINE_ACCOUNT_QUOTA_EXCEEDED",
    DOMAIN_JOIN_NERR_PASSWORD_EXPIRED = "DOMAIN_JOIN_NERR_PASSWORD_EXPIRED",
    DOMAIN_JOIN_INTERNAL_SERVICE_ERROR = "DOMAIN_JOIN_INTERNAL_SERVICE_ERROR",
    VALIDATION_ERROR = "VALIDATION_ERROR",
}

M.ResourceError = {
    type = "structure",
    id = "ResourceError",
    members = {
        ErrorCode = {
            type = "string",
        },
        ErrorMessage = {
            type = "string",
        },
        ErrorTimestamp = {
            type = "timestamp",
        },
    },
}

M.AppBlockBuilderPlatformType = {
    WINDOWS_SERVER_2019 = "WINDOWS_SERVER_2019",
}

M.AppBlockBuilderState = {
    STARTING = "STARTING",
    RUNNING = "RUNNING",
    STOPPING = "STOPPING",
    STOPPED = "STOPPED",
}

M.AppBlockBuilderStateChangeReasonCode = {
    INTERNAL_ERROR = "INTERNAL_ERROR",
}

M.AppBlockBuilderStateChangeReason = {
    type = "structure",
    id = "AppBlockBuilderStateChangeReason",
    members = {
        Code = {
            type = "string",
        },
        Message = {
            type = "string",
        },
    },
}

M.VpcConfig = {
    type = "structure",
    id = "VpcConfig",
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

M.AppBlockBuilder = {
    type = "structure",
    id = "AppBlockBuilder",
    members = {
        Arn = {
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
        DisplayName = {
            type = "string",
        },
        Description = {
            type = "string",
        },
        Platform = {
            type = "string",
            traits = {
                required = true,
            },
        },
        InstanceType = {
            type = "string",
            traits = {
                required = true,
            },
        },
        EnableDefaultInternetAccess = {
            type = "boolean",
        },
        IamRoleArn = {
            type = "string",
        },
        VpcConfig = setmetatable({ traits = {
            required = true,
        } }, { __index = M.VpcConfig }),
        State = {
            type = "string",
            traits = {
                required = true,
            },
        },
        CreatedTime = {
            type = "timestamp",
        },
        AppBlockBuilderErrors = {
            type = "list",
            member = M.ResourceError,
        },
        StateChangeReason = M.AppBlockBuilderStateChangeReason,
        AccessEndpoints = {
            type = "list",
            member = M.AccessEndpoint,
        },
        DisableIMDSV1 = {
            type = "boolean",
        },
    },
}

M.AppBlockBuilderAppBlockAssociation = {
    type = "structure",
    id = "AppBlockBuilderAppBlockAssociation",
    members = {
        AppBlockArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        AppBlockBuilderName = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.AppBlockBuilderAttribute = {
    IAM_ROLE_ARN = "IAM_ROLE_ARN",
    ACCESS_ENDPOINTS = "ACCESS_ENDPOINTS",
    VPC_CONFIGURATION_SECURITY_GROUP_IDS = "VPC_CONFIGURATION_SECURITY_GROUP_IDS",
}

M.ApplicationConfig = {
    type = "structure",
    id = "ApplicationConfig",
    members = {
        Name = {
            type = "string",
            traits = {
                required = true,
            },
        },
        DisplayName = {
            type = "string",
        },
        AbsoluteAppPath = {
            type = "string",
            traits = {
                required = true,
            },
        },
        AbsoluteIconPath = {
            type = "string",
        },
        AbsoluteManifestPath = {
            type = "string",
        },
        WorkingDirectory = {
            type = "string",
        },
        LaunchParameters = {
            type = "string",
        },
    },
}

M.PlatformType = {
    WINDOWS = "WINDOWS",
    WINDOWS_SERVER_2016 = "WINDOWS_SERVER_2016",
    WINDOWS_SERVER_2019 = "WINDOWS_SERVER_2019",
    WINDOWS_SERVER_2022 = "WINDOWS_SERVER_2022",
    WINDOWS_SERVER_2025 = "WINDOWS_SERVER_2025",
    AMAZON_LINUX2 = "AMAZON_LINUX2",
    RHEL8 = "RHEL8",
    ROCKY_LINUX8 = "ROCKY_LINUX8",
    UBUNTU_PRO_2404 = "UBUNTU_PRO_2404",
}

M.Application = {
    type = "structure",
    id = "Application",
    members = {
        Name = {
            type = "string",
        },
        DisplayName = {
            type = "string",
        },
        IconURL = {
            type = "string",
        },
        LaunchPath = {
            type = "string",
        },
        LaunchParameters = {
            type = "string",
        },
        Enabled = {
            type = "boolean",
        },
        Metadata = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
        WorkingDirectory = {
            type = "string",
        },
        Description = {
            type = "string",
        },
        Arn = {
            type = "string",
        },
        AppBlockArn = {
            type = "string",
        },
        IconS3Location = M.S3Location,
        Platforms = {
            type = "list",
            member = { type = "string" },
        },
        InstanceFamilies = {
            type = "list",
            member = { type = "string" },
        },
        CreatedTime = {
            type = "timestamp",
        },
    },
}

M.ApplicationAttribute = {
    LAUNCH_PARAMETERS = "LAUNCH_PARAMETERS",
    WORKING_DIRECTORY = "WORKING_DIRECTORY",
}

M.ApplicationFleetAssociation = {
    type = "structure",
    id = "ApplicationFleetAssociation",
    members = {
        FleetName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        ApplicationArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.ApplicationSettings = {
    type = "structure",
    id = "ApplicationSettings",
    members = {
        Enabled = {
            type = "boolean",
            traits = {
                required = true,
            },
        },
        SettingsGroup = {
            type = "string",
        },
    },
}

M.ApplicationSettingsResponse = {
    type = "structure",
    id = "ApplicationSettingsResponse",
    members = {
        Enabled = {
            type = "boolean",
        },
        SettingsGroup = {
            type = "string",
        },
        S3BucketName = {
            type = "string",
        },
    },
}

M.AppVisibility = {
    ALL = "ALL",
    ASSOCIATED = "ASSOCIATED",
}

M.AssociateAppBlockBuilderAppBlockInput = {
    type = "structure",
    id = "AssociateAppBlockBuilderAppBlockInput",
    members = {
        AppBlockArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        AppBlockBuilderName = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.AssociateAppBlockBuilderAppBlockOutput = {
    type = "structure",
    id = "AssociateAppBlockBuilderAppBlockOutput",
    members = {
        AppBlockBuilderAppBlockAssociation = M.AppBlockBuilderAppBlockAssociation,
    },
}

M.ConcurrentModificationException = {
    type = "structure",
    id = "ConcurrentModificationException",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.InvalidParameterCombinationException = {
    type = "structure",
    id = "InvalidParameterCombinationException",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
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

M.OperationNotPermittedException = {
    type = "structure",
    id = "OperationNotPermittedException",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.ResourceNotFoundException = {
    type = "structure",
    id = "ResourceNotFoundException",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.AssociateApplicationFleetInput = {
    type = "structure",
    id = "AssociateApplicationFleetInput",
    members = {
        FleetName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        ApplicationArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.AssociateApplicationFleetOutput = {
    type = "structure",
    id = "AssociateApplicationFleetOutput",
    members = {
        ApplicationFleetAssociation = M.ApplicationFleetAssociation,
    },
}

M.AssociateApplicationToEntitlementInput = {
    type = "structure",
    id = "AssociateApplicationToEntitlementInput",
    members = {
        StackName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        EntitlementName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        ApplicationIdentifier = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.AssociateApplicationToEntitlementOutput = {
    type = "structure",
    id = "AssociateApplicationToEntitlementOutput",
}

M.EntitlementNotFoundException = {
    type = "structure",
    id = "EntitlementNotFoundException",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.AssociateFleetInput = {
    type = "structure",
    id = "AssociateFleetInput",
    members = {
        FleetName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        StackName = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.AssociateFleetOutput = {
    type = "structure",
    id = "AssociateFleetOutput",
}

M.IncompatibleImageException = {
    type = "structure",
    id = "IncompatibleImageException",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.InvalidAccountStatusException = {
    type = "structure",
    id = "InvalidAccountStatusException",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.AssociateSoftwareToImageBuilderInput = {
    type = "structure",
    id = "AssociateSoftwareToImageBuilderInput",
    members = {
        ImageBuilderName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        SoftwareNames = {
            type = "list",
            member = { type = "string" },
            traits = {
                required = true,
            },
        },
    },
}

M.AssociateSoftwareToImageBuilderOutput = {
    type = "structure",
    id = "AssociateSoftwareToImageBuilderOutput",
}

M.AuthenticationType = {
    API = "API",
    SAML = "SAML",
    USERPOOL = "USERPOOL",
    AWS_AD = "AWS_AD",
}

M.UserStackAssociation = {
    type = "structure",
    id = "UserStackAssociation",
    members = {
        StackName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        UserName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        AuthenticationType = {
            type = "string",
            traits = {
                required = true,
            },
        },
        SendEmailNotification = {
            type = "boolean",
        },
    },
}

M.BatchAssociateUserStackInput = {
    type = "structure",
    id = "BatchAssociateUserStackInput",
    members = {
        UserStackAssociations = {
            type = "list",
            member = M.UserStackAssociation,
            traits = {
                required = true,
            },
        },
    },
}

M.UserStackAssociationErrorCode = {
    STACK_NOT_FOUND = "STACK_NOT_FOUND",
    USER_NAME_NOT_FOUND = "USER_NAME_NOT_FOUND",
    DIRECTORY_NOT_FOUND = "DIRECTORY_NOT_FOUND",
    INTERNAL_ERROR = "INTERNAL_ERROR",
}

M.UserStackAssociationError = {
    type = "structure",
    id = "UserStackAssociationError",
    members = {
        UserStackAssociation = M.UserStackAssociation,
        ErrorCode = {
            type = "string",
        },
        ErrorMessage = {
            type = "string",
        },
    },
}

M.BatchAssociateUserStackOutput = {
    type = "structure",
    id = "BatchAssociateUserStackOutput",
    members = {
        errors = {
            type = "list",
            member = M.UserStackAssociationError,
        },
    },
}

M.BatchDisassociateUserStackInput = {
    type = "structure",
    id = "BatchDisassociateUserStackInput",
    members = {
        UserStackAssociations = {
            type = "list",
            member = M.UserStackAssociation,
            traits = {
                required = true,
            },
        },
    },
}

M.BatchDisassociateUserStackOutput = {
    type = "structure",
    id = "BatchDisassociateUserStackOutput",
    members = {
        errors = {
            type = "list",
            member = M.UserStackAssociationError,
        },
    },
}

M.CertificateBasedAuthStatus = {
    DISABLED = "DISABLED",
    ENABLED = "ENABLED",
    ENABLED_NO_DIRECTORY_LOGIN_FALLBACK = "ENABLED_NO_DIRECTORY_LOGIN_FALLBACK",
}

M.CertificateBasedAuthProperties = {
    type = "structure",
    id = "CertificateBasedAuthProperties",
    members = {
        Status = {
            type = "string",
        },
        CertificateAuthorityArn = {
            type = "string",
        },
    },
}

M.ComputeCapacity = {
    type = "structure",
    id = "ComputeCapacity",
    members = {
        DesiredInstances = {
            type = "integer",
        },
        DesiredSessions = {
            type = "integer",
        },
    },
}

M.ComputeCapacityStatus = {
    type = "structure",
    id = "ComputeCapacityStatus",
    members = {
        Desired = {
            type = "integer",
            traits = {
                required = true,
            },
        },
        Running = {
            type = "integer",
        },
        InUse = {
            type = "integer",
        },
        Available = {
            type = "integer",
        },
        DesiredUserSessions = {
            type = "integer",
        },
        AvailableUserSessions = {
            type = "integer",
        },
        ActiveUserSessions = {
            type = "integer",
        },
        ActualUserSessions = {
            type = "integer",
        },
        Draining = {
            type = "integer",
        },
        DrainModeActiveUserSessions = {
            type = "integer",
        },
        DrainModeUnusedUserSessions = {
            type = "integer",
        },
    },
}

M.UrlRedirectionConfig = {
    type = "structure",
    id = "UrlRedirectionConfig",
    members = {
        Enabled = {
            type = "boolean",
            traits = {
                required = true,
            },
        },
        AllowedUrls = {
            type = "list",
            member = { type = "string" },
        },
        DeniedUrls = {
            type = "list",
            member = { type = "string" },
        },
    },
}

M.ContentRedirection = {
    type = "structure",
    id = "ContentRedirection",
    members = {
        HostToClient = M.UrlRedirectionConfig,
    },
}

M.CopyImageInput = {
    type = "structure",
    id = "CopyImageInput",
    members = {
        SourceImageName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        DestinationImageName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        DestinationRegion = {
            type = "string",
            traits = {
                required = true,
            },
        },
        DestinationImageDescription = {
            type = "string",
        },
    },
}

M.CopyImageOutput = {
    type = "structure",
    id = "CopyImageOutput",
    members = {
        DestinationImageName = {
            type = "string",
        },
    },
}

M.ResourceAlreadyExistsException = {
    type = "structure",
    id = "ResourceAlreadyExistsException",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.ResourceNotAvailableException = {
    type = "structure",
    id = "ResourceNotAvailableException",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.CreateAppBlockInput = {
    type = "structure",
    id = "CreateAppBlockInput",
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
        DisplayName = {
            type = "string",
        },
        SourceS3Location = setmetatable({ traits = {
            required = true,
        } }, { __index = M.S3Location }),
        SetupScriptDetails = M.ScriptDetails,
        Tags = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
        PostSetupScriptDetails = M.ScriptDetails,
        PackagingType = {
            type = "string",
        },
    },
}

M.CreateAppBlockOutput = {
    type = "structure",
    id = "CreateAppBlockOutput",
    members = {
        AppBlock = M.AppBlock,
    },
}

M.CreateAppBlockBuilderInput = {
    type = "structure",
    id = "CreateAppBlockBuilderInput",
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
        DisplayName = {
            type = "string",
        },
        Tags = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
        Platform = {
            type = "string",
            traits = {
                required = true,
            },
        },
        InstanceType = {
            type = "string",
            traits = {
                required = true,
            },
        },
        VpcConfig = setmetatable({ traits = {
            required = true,
        } }, { __index = M.VpcConfig }),
        EnableDefaultInternetAccess = {
            type = "boolean",
        },
        IamRoleArn = {
            type = "string",
        },
        AccessEndpoints = {
            type = "list",
            member = M.AccessEndpoint,
        },
        DisableIMDSV1 = {
            type = "boolean",
        },
    },
}

M.CreateAppBlockBuilderOutput = {
    type = "structure",
    id = "CreateAppBlockBuilderOutput",
    members = {
        AppBlockBuilder = M.AppBlockBuilder,
    },
}

M.InvalidRoleException = {
    type = "structure",
    id = "InvalidRoleException",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.RequestLimitExceededException = {
    type = "structure",
    id = "RequestLimitExceededException",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.CreateAppBlockBuilderStreamingURLInput = {
    type = "structure",
    id = "CreateAppBlockBuilderStreamingURLInput",
    members = {
        AppBlockBuilderName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Validity = {
            type = "long",
        },
    },
}

M.CreateAppBlockBuilderStreamingURLOutput = {
    type = "structure",
    id = "CreateAppBlockBuilderStreamingURLOutput",
    members = {
        StreamingURL = {
            type = "string",
        },
        Expires = {
            type = "timestamp",
        },
    },
}

M.CreateApplicationInput = {
    type = "structure",
    id = "CreateApplicationInput",
    members = {
        Name = {
            type = "string",
            traits = {
                required = true,
            },
        },
        DisplayName = {
            type = "string",
        },
        Description = {
            type = "string",
        },
        IconS3Location = setmetatable({ traits = {
            required = true,
        } }, { __index = M.S3Location }),
        LaunchPath = {
            type = "string",
            traits = {
                required = true,
            },
        },
        WorkingDirectory = {
            type = "string",
        },
        LaunchParameters = {
            type = "string",
        },
        Platforms = {
            type = "list",
            member = { type = "string" },
            traits = {
                required = true,
            },
        },
        InstanceFamilies = {
            type = "list",
            member = { type = "string" },
            traits = {
                required = true,
            },
        },
        AppBlockArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Tags = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
    },
}

M.CreateApplicationOutput = {
    type = "structure",
    id = "CreateApplicationOutput",
    members = {
        Application = M.Application,
    },
}

M.ServiceAccountCredentials = {
    type = "structure",
    id = "ServiceAccountCredentials",
    members = {
        AccountName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        AccountPassword = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.CreateDirectoryConfigInput = {
    type = "structure",
    id = "CreateDirectoryConfigInput",
    members = {
        DirectoryName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        OrganizationalUnitDistinguishedNames = {
            type = "list",
            member = { type = "string" },
            traits = {
                required = true,
            },
        },
        ServiceAccountCredentials = M.ServiceAccountCredentials,
        CertificateBasedAuthProperties = M.CertificateBasedAuthProperties,
    },
}

M.DirectoryConfig = {
    type = "structure",
    id = "DirectoryConfig",
    members = {
        DirectoryName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        OrganizationalUnitDistinguishedNames = {
            type = "list",
            member = { type = "string" },
        },
        ServiceAccountCredentials = M.ServiceAccountCredentials,
        CreatedTime = {
            type = "timestamp",
        },
        CertificateBasedAuthProperties = M.CertificateBasedAuthProperties,
    },
}

M.CreateDirectoryConfigOutput = {
    type = "structure",
    id = "CreateDirectoryConfigOutput",
    members = {
        DirectoryConfig = M.DirectoryConfig,
    },
}

M.EntitlementAttribute = {
    type = "structure",
    id = "EntitlementAttribute",
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

M.CreateEntitlementInput = {
    type = "structure",
    id = "CreateEntitlementInput",
    members = {
        Name = {
            type = "string",
            traits = {
                required = true,
            },
        },
        StackName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Description = {
            type = "string",
        },
        AppVisibility = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Attributes = {
            type = "list",
            member = M.EntitlementAttribute,
            traits = {
                required = true,
            },
        },
    },
}

M.Entitlement = {
    type = "structure",
    id = "Entitlement",
    members = {
        Name = {
            type = "string",
            traits = {
                required = true,
            },
        },
        StackName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Description = {
            type = "string",
        },
        AppVisibility = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Attributes = {
            type = "list",
            member = M.EntitlementAttribute,
            traits = {
                required = true,
            },
        },
        CreatedTime = {
            type = "timestamp",
        },
        LastModifiedTime = {
            type = "timestamp",
        },
    },
}

M.CreateEntitlementOutput = {
    type = "structure",
    id = "CreateEntitlementOutput",
    members = {
        Entitlement = M.Entitlement,
    },
}

M.EntitlementAlreadyExistsException = {
    type = "structure",
    id = "EntitlementAlreadyExistsException",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.CreateExportImageTaskInput = {
    type = "structure",
    id = "CreateExportImageTaskInput",
    members = {
        ImageName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        AmiName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        IamRoleArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        TagSpecifications = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
        AmiDescription = {
            type = "string",
        },
    },
}

M.ExportImageTaskState = {
    EXPORTING = "EXPORTING",
    COMPLETED = "COMPLETED",
    FAILED = "FAILED",
}

M.ExportImageTask = {
    type = "structure",
    id = "ExportImageTask",
    members = {
        TaskId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        ImageArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        AmiName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        CreatedDate = {
            type = "timestamp",
            traits = {
                required = true,
            },
        },
        AmiDescription = {
            type = "string",
        },
        State = {
            type = "string",
        },
        AmiId = {
            type = "string",
        },
        TagSpecifications = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
        ErrorDetails = {
            type = "list",
            member = M.ErrorDetails,
        },
    },
}

M.CreateExportImageTaskOutput = {
    type = "structure",
    id = "CreateExportImageTaskOutput",
    members = {
        ExportImageTask = M.ExportImageTask,
    },
}

M.DomainJoinInfo = {
    type = "structure",
    id = "DomainJoinInfo",
    members = {
        DirectoryName = {
            type = "string",
        },
        OrganizationalUnitDistinguishedName = {
            type = "string",
        },
    },
}

M.FleetType = {
    ALWAYS_ON = "ALWAYS_ON",
    ON_DEMAND = "ON_DEMAND",
    ELASTIC = "ELASTIC",
}

M.VolumeConfig = {
    type = "structure",
    id = "VolumeConfig",
    members = {
        VolumeSizeInGb = {
            type = "integer",
        },
    },
}

M.StreamView = {
    APP = "APP",
    DESKTOP = "DESKTOP",
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
        ImageName = {
            type = "string",
        },
        ImageArn = {
            type = "string",
        },
        InstanceType = {
            type = "string",
            traits = {
                required = true,
            },
        },
        FleetType = {
            type = "string",
        },
        ComputeCapacity = M.ComputeCapacity,
        VpcConfig = M.VpcConfig,
        MaxUserDurationInSeconds = {
            type = "integer",
        },
        DisconnectTimeoutInSeconds = {
            type = "integer",
        },
        Description = {
            type = "string",
        },
        DisplayName = {
            type = "string",
        },
        EnableDefaultInternetAccess = {
            type = "boolean",
        },
        DomainJoinInfo = M.DomainJoinInfo,
        Tags = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
        IdleDisconnectTimeoutInSeconds = {
            type = "integer",
        },
        IamRoleArn = {
            type = "string",
        },
        StreamView = {
            type = "string",
        },
        Platform = {
            type = "string",
        },
        MaxConcurrentSessions = {
            type = "integer",
        },
        UsbDeviceFilterStrings = {
            type = "list",
            member = { type = "string" },
        },
        SessionScriptS3Location = M.S3Location,
        MaxSessionsPerInstance = {
            type = "integer",
        },
        RootVolumeConfig = M.VolumeConfig,
        DisableIMDSV1 = {
            type = "boolean",
        },
    },
}

M.FleetError = {
    type = "structure",
    id = "FleetError",
    members = {
        ErrorCode = {
            type = "string",
        },
        ErrorMessage = {
            type = "string",
        },
    },
}

M.FleetState = {
    STARTING = "STARTING",
    RUNNING = "RUNNING",
    STOPPING = "STOPPING",
    STOPPED = "STOPPED",
}

M.Fleet = {
    type = "structure",
    id = "Fleet",
    members = {
        Arn = {
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
        DisplayName = {
            type = "string",
        },
        Description = {
            type = "string",
        },
        ImageName = {
            type = "string",
        },
        ImageArn = {
            type = "string",
        },
        InstanceType = {
            type = "string",
            traits = {
                required = true,
            },
        },
        FleetType = {
            type = "string",
        },
        ComputeCapacityStatus = setmetatable({ traits = {
            required = true,
        } }, { __index = M.ComputeCapacityStatus }),
        MaxUserDurationInSeconds = {
            type = "integer",
        },
        DisconnectTimeoutInSeconds = {
            type = "integer",
        },
        State = {
            type = "string",
            traits = {
                required = true,
            },
        },
        VpcConfig = M.VpcConfig,
        CreatedTime = {
            type = "timestamp",
        },
        FleetErrors = {
            type = "list",
            member = M.FleetError,
        },
        EnableDefaultInternetAccess = {
            type = "boolean",
        },
        DomainJoinInfo = M.DomainJoinInfo,
        IdleDisconnectTimeoutInSeconds = {
            type = "integer",
        },
        IamRoleArn = {
            type = "string",
        },
        StreamView = {
            type = "string",
        },
        Platform = {
            type = "string",
        },
        MaxConcurrentSessions = {
            type = "integer",
        },
        UsbDeviceFilterStrings = {
            type = "list",
            member = { type = "string" },
        },
        SessionScriptS3Location = M.S3Location,
        MaxSessionsPerInstance = {
            type = "integer",
        },
        RootVolumeConfig = M.VolumeConfig,
        DisableIMDSV1 = {
            type = "boolean",
        },
    },
}

M.CreateFleetOutput = {
    type = "structure",
    id = "CreateFleetOutput",
    members = {
        Fleet = M.Fleet,
    },
}

M.CreateImageBuilderInput = {
    type = "structure",
    id = "CreateImageBuilderInput",
    members = {
        Name = {
            type = "string",
            traits = {
                required = true,
            },
        },
        ImageName = {
            type = "string",
        },
        ImageArn = {
            type = "string",
        },
        InstanceType = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Description = {
            type = "string",
        },
        DisplayName = {
            type = "string",
        },
        VpcConfig = M.VpcConfig,
        IamRoleArn = {
            type = "string",
        },
        EnableDefaultInternetAccess = {
            type = "boolean",
        },
        DomainJoinInfo = M.DomainJoinInfo,
        AppstreamAgentVersion = {
            type = "string",
        },
        Tags = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
        AccessEndpoints = {
            type = "list",
            member = M.AccessEndpoint,
        },
        RootVolumeConfig = M.VolumeConfig,
        SoftwaresToInstall = {
            type = "list",
            member = { type = "string" },
        },
        SoftwaresToUninstall = {
            type = "list",
            member = { type = "string" },
        },
        DisableIMDSV1 = {
            type = "boolean",
        },
    },
}

M.LatestAppstreamAgentVersion = {
    TRUE = "TRUE",
    FALSE = "FALSE",
}

M.NetworkAccessConfiguration = {
    type = "structure",
    id = "NetworkAccessConfiguration",
    members = {
        EniPrivateIpAddress = {
            type = "string",
        },
        EniIpv6Addresses = {
            type = "list",
            member = { type = "string" },
        },
        EniId = {
            type = "string",
        },
    },
}

M.ImageBuilderState = {
    PENDING = "PENDING",
    UPDATING_AGENT = "UPDATING_AGENT",
    RUNNING = "RUNNING",
    STOPPING = "STOPPING",
    STOPPED = "STOPPED",
    REBOOTING = "REBOOTING",
    SNAPSHOTTING = "SNAPSHOTTING",
    DELETING = "DELETING",
    FAILED = "FAILED",
    UPDATING = "UPDATING",
    PENDING_QUALIFICATION = "PENDING_QUALIFICATION",
    PENDING_SYNCING_APPS = "PENDING_SYNCING_APPS",
    SYNCING_APPS = "SYNCING_APPS",
    PENDING_IMAGE_IMPORT = "PENDING_IMAGE_IMPORT",
}

M.ImageBuilderStateChangeReasonCode = {
    INTERNAL_ERROR = "INTERNAL_ERROR",
    IMAGE_UNAVAILABLE = "IMAGE_UNAVAILABLE",
}

M.ImageBuilderStateChangeReason = {
    type = "structure",
    id = "ImageBuilderStateChangeReason",
    members = {
        Code = {
            type = "string",
        },
        Message = {
            type = "string",
        },
    },
}

M.ImageBuilder = {
    type = "structure",
    id = "ImageBuilder",
    members = {
        Name = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Arn = {
            type = "string",
        },
        ImageArn = {
            type = "string",
        },
        Description = {
            type = "string",
        },
        DisplayName = {
            type = "string",
        },
        VpcConfig = M.VpcConfig,
        InstanceType = {
            type = "string",
        },
        Platform = {
            type = "string",
        },
        IamRoleArn = {
            type = "string",
        },
        State = {
            type = "string",
        },
        StateChangeReason = M.ImageBuilderStateChangeReason,
        CreatedTime = {
            type = "timestamp",
        },
        EnableDefaultInternetAccess = {
            type = "boolean",
        },
        DomainJoinInfo = M.DomainJoinInfo,
        NetworkAccessConfiguration = M.NetworkAccessConfiguration,
        ImageBuilderErrors = {
            type = "list",
            member = M.ResourceError,
        },
        AppstreamAgentVersion = {
            type = "string",
        },
        AccessEndpoints = {
            type = "list",
            member = M.AccessEndpoint,
        },
        RootVolumeConfig = M.VolumeConfig,
        LatestAppstreamAgentVersion = {
            type = "string",
        },
        DisableIMDSV1 = {
            type = "boolean",
        },
    },
}

M.CreateImageBuilderOutput = {
    type = "structure",
    id = "CreateImageBuilderOutput",
    members = {
        ImageBuilder = M.ImageBuilder,
    },
}

M.CreateImageBuilderStreamingURLInput = {
    type = "structure",
    id = "CreateImageBuilderStreamingURLInput",
    members = {
        Name = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Validity = {
            type = "long",
        },
    },
}

M.CreateImageBuilderStreamingURLOutput = {
    type = "structure",
    id = "CreateImageBuilderStreamingURLOutput",
    members = {
        StreamingURL = {
            type = "string",
        },
        Expires = {
            type = "timestamp",
        },
    },
}

M.RuntimeValidationConfig = {
    type = "structure",
    id = "RuntimeValidationConfig",
    members = {
        IntendedInstanceType = {
            type = "string",
        },
    },
}

M.CreateImportedImageInput = {
    type = "structure",
    id = "CreateImportedImageInput",
    members = {
        Name = {
            type = "string",
            traits = {
                required = true,
            },
        },
        SourceAmiId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        IamRoleArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Description = {
            type = "string",
        },
        DisplayName = {
            type = "string",
        },
        Tags = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
        RuntimeValidationConfig = M.RuntimeValidationConfig,
        AgentSoftwareVersion = {
            type = "string",
        },
        AppCatalogConfig = {
            type = "list",
            member = M.ApplicationConfig,
        },
        DryRun = {
            type = "boolean",
        },
    },
}

M.DynamicAppProvidersEnabled = {
    ENABLED = "ENABLED",
    DISABLED = "DISABLED",
}

M.ImagePermissions = {
    type = "structure",
    id = "ImagePermissions",
    members = {
        allowFleet = {
            type = "boolean",
        },
        allowImageBuilder = {
            type = "boolean",
        },
    },
}

M.ImageSharedWithOthers = {
    TRUE = "TRUE",
    FALSE = "FALSE",
}

M.ImageType = {
    CUSTOM = "CUSTOM",
    NATIVE = "NATIVE",
}

M.ImageState = {
    PENDING = "PENDING",
    AVAILABLE = "AVAILABLE",
    FAILED = "FAILED",
    COPYING = "COPYING",
    DELETING = "DELETING",
    CREATING = "CREATING",
    IMPORTING = "IMPORTING",
    VALIDATING = "VALIDATING",
}

M.ImageStateChangeReasonCode = {
    INTERNAL_ERROR = "INTERNAL_ERROR",
    IMAGE_BUILDER_NOT_AVAILABLE = "IMAGE_BUILDER_NOT_AVAILABLE",
    IMAGE_COPY_FAILURE = "IMAGE_COPY_FAILURE",
    IMAGE_UPDATE_FAILURE = "IMAGE_UPDATE_FAILURE",
    IMAGE_IMPORT_FAILURE = "IMAGE_IMPORT_FAILURE",
}

M.ImageStateChangeReason = {
    type = "structure",
    id = "ImageStateChangeReason",
    members = {
        Code = {
            type = "string",
        },
        Message = {
            type = "string",
        },
    },
}

M.VisibilityType = {
    PUBLIC = "PUBLIC",
    PRIVATE = "PRIVATE",
    SHARED = "SHARED",
}

M.Image = {
    type = "structure",
    id = "Image",
    members = {
        Name = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Arn = {
            type = "string",
        },
        BaseImageArn = {
            type = "string",
        },
        DisplayName = {
            type = "string",
        },
        State = {
            type = "string",
        },
        Visibility = {
            type = "string",
        },
        ImageBuilderSupported = {
            type = "boolean",
        },
        ImageBuilderName = {
            type = "string",
        },
        Platform = {
            type = "string",
        },
        Description = {
            type = "string",
        },
        StateChangeReason = M.ImageStateChangeReason,
        Applications = {
            type = "list",
            member = M.Application,
        },
        CreatedTime = {
            type = "timestamp",
        },
        PublicBaseImageReleasedDate = {
            type = "timestamp",
        },
        AppstreamAgentVersion = {
            type = "string",
        },
        ImagePermissions = M.ImagePermissions,
        ImageErrors = {
            type = "list",
            member = M.ResourceError,
        },
        LatestAppstreamAgentVersion = {
            type = "string",
        },
        SupportedInstanceFamilies = {
            type = "list",
            member = { type = "string" },
        },
        DynamicAppProvidersEnabled = {
            type = "string",
        },
        ImageSharedWithOthers = {
            type = "string",
        },
        ManagedSoftwareIncluded = {
            type = "boolean",
        },
        ImageType = {
            type = "string",
        },
    },
}

M.CreateImportedImageOutput = {
    type = "structure",
    id = "CreateImportedImageOutput",
    members = {
        Image = M.Image,
    },
}

M.DryRunOperationException = {
    type = "structure",
    id = "DryRunOperationException",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.StorageConnectorType = {
    HOMEFOLDERS = "HOMEFOLDERS",
    GOOGLE_DRIVE = "GOOGLE_DRIVE",
    ONE_DRIVE = "ONE_DRIVE",
}

M.StorageConnector = {
    type = "structure",
    id = "StorageConnector",
    members = {
        ConnectorType = {
            type = "string",
            traits = {
                required = true,
            },
        },
        ResourceIdentifier = {
            type = "string",
        },
        Domains = {
            type = "list",
            member = { type = "string" },
        },
        DomainsRequireAdminConsent = {
            type = "list",
            member = { type = "string" },
        },
    },
}

M.PreferredProtocol = {
    TCP = "TCP",
    UDP = "UDP",
}

M.StreamingExperienceSettings = {
    type = "structure",
    id = "StreamingExperienceSettings",
    members = {
        PreferredProtocol = {
            type = "string",
        },
    },
}

M.UserSetting = {
    type = "structure",
    id = "UserSetting",
    members = {
        Action = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Permission = {
            type = "string",
            traits = {
                required = true,
            },
        },
        MaximumLength = {
            type = "integer",
        },
    },
}

M.CreateStackInput = {
    type = "structure",
    id = "CreateStackInput",
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
        DisplayName = {
            type = "string",
        },
        StorageConnectors = {
            type = "list",
            member = M.StorageConnector,
        },
        RedirectURL = {
            type = "string",
        },
        FeedbackURL = {
            type = "string",
        },
        UserSettings = {
            type = "list",
            member = M.UserSetting,
        },
        ApplicationSettings = M.ApplicationSettings,
        Tags = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
        AccessEndpoints = {
            type = "list",
            member = M.AccessEndpoint,
        },
        EmbedHostDomains = {
            type = "list",
            member = { type = "string" },
        },
        StreamingExperienceSettings = M.StreamingExperienceSettings,
        ContentRedirection = M.ContentRedirection,
        AgentAccessConfig = M.AgentAccessConfig,
    },
}

M.StackErrorCode = {
    STORAGE_CONNECTOR_ERROR = "STORAGE_CONNECTOR_ERROR",
    INTERNAL_SERVICE_ERROR = "INTERNAL_SERVICE_ERROR",
}

M.StackError = {
    type = "structure",
    id = "StackError",
    members = {
        ErrorCode = {
            type = "string",
        },
        ErrorMessage = {
            type = "string",
        },
    },
}

M.Stack = {
    type = "structure",
    id = "Stack",
    members = {
        Arn = {
            type = "string",
        },
        Name = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Description = {
            type = "string",
        },
        DisplayName = {
            type = "string",
        },
        CreatedTime = {
            type = "timestamp",
        },
        StorageConnectors = {
            type = "list",
            member = M.StorageConnector,
        },
        RedirectURL = {
            type = "string",
        },
        FeedbackURL = {
            type = "string",
        },
        StackErrors = {
            type = "list",
            member = M.StackError,
        },
        UserSettings = {
            type = "list",
            member = M.UserSetting,
        },
        ApplicationSettings = M.ApplicationSettingsResponse,
        AccessEndpoints = {
            type = "list",
            member = M.AccessEndpoint,
        },
        EmbedHostDomains = {
            type = "list",
            member = { type = "string" },
        },
        StreamingExperienceSettings = M.StreamingExperienceSettings,
        ContentRedirection = M.ContentRedirection,
        AgentAccessConfig = M.AgentAccessConfig,
    },
}

M.CreateStackOutput = {
    type = "structure",
    id = "CreateStackOutput",
    members = {
        Stack = M.Stack,
    },
}

M.CreateStreamingURLInput = {
    type = "structure",
    id = "CreateStreamingURLInput",
    members = {
        StackName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        FleetName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        UserId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        ApplicationId = {
            type = "string",
        },
        Validity = {
            type = "long",
        },
        SessionContext = {
            type = "string",
        },
    },
}

M.CreateStreamingURLOutput = {
    type = "structure",
    id = "CreateStreamingURLOutput",
    members = {
        StreamingURL = {
            type = "string",
        },
        Expires = {
            type = "timestamp",
        },
    },
}

M.ThemeFooterLink = {
    type = "structure",
    id = "ThemeFooterLink",
    members = {
        DisplayName = {
            type = "string",
        },
        FooterLinkURL = {
            type = "string",
        },
    },
}

M.ThemeStyling = {
    LIGHT_BLUE = "LIGHT_BLUE",
    BLUE = "BLUE",
    PINK = "PINK",
    RED = "RED",
}

M.CreateThemeForStackInput = {
    type = "structure",
    id = "CreateThemeForStackInput",
    members = {
        StackName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        FooterLinks = {
            type = "list",
            member = M.ThemeFooterLink,
        },
        TitleText = {
            type = "string",
            traits = {
                required = true,
            },
        },
        ThemeStyling = {
            type = "string",
            traits = {
                required = true,
            },
        },
        OrganizationLogoS3Location = setmetatable({ traits = {
            required = true,
        } }, { __index = M.S3Location }),
        FaviconS3Location = setmetatable({ traits = {
            required = true,
        } }, { __index = M.S3Location }),
    },
}

M.ThemeState = {
    ENABLED = "ENABLED",
    DISABLED = "DISABLED",
}

M.Theme = {
    type = "structure",
    id = "Theme",
    members = {
        StackName = {
            type = "string",
        },
        State = {
            type = "string",
        },
        ThemeTitleText = {
            type = "string",
        },
        ThemeStyling = {
            type = "string",
        },
        ThemeFooterLinks = {
            type = "list",
            member = M.ThemeFooterLink,
        },
        ThemeOrganizationLogoURL = {
            type = "string",
        },
        ThemeFaviconURL = {
            type = "string",
        },
        CreatedTime = {
            type = "timestamp",
        },
    },
}

M.CreateThemeForStackOutput = {
    type = "structure",
    id = "CreateThemeForStackOutput",
    members = {
        Theme = M.Theme,
    },
}

M.CreateUpdatedImageInput = {
    type = "structure",
    id = "CreateUpdatedImageInput",
    members = {
        existingImageName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        newImageName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        newImageDescription = {
            type = "string",
        },
        newImageDisplayName = {
            type = "string",
        },
        newImageTags = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
        dryRun = {
            type = "boolean",
        },
    },
}

M.CreateUpdatedImageOutput = {
    type = "structure",
    id = "CreateUpdatedImageOutput",
    members = {
        image = M.Image,
        canUpdateImage = {
            type = "boolean",
        },
    },
}

M.CreateUsageReportSubscriptionInput = {
    type = "structure",
    id = "CreateUsageReportSubscriptionInput",
}

M.UsageReportSchedule = {
    DAILY = "DAILY",
}

M.CreateUsageReportSubscriptionOutput = {
    type = "structure",
    id = "CreateUsageReportSubscriptionOutput",
    members = {
        S3BucketName = {
            type = "string",
        },
        Schedule = {
            type = "string",
        },
    },
}

M.MessageAction = {
    SUPPRESS = "SUPPRESS",
    RESEND = "RESEND",
}

M.CreateUserInput = {
    type = "structure",
    id = "CreateUserInput",
    members = {
        UserName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        MessageAction = {
            type = "string",
        },
        FirstName = {
            type = "string",
        },
        LastName = {
            type = "string",
        },
        AuthenticationType = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.CreateUserOutput = {
    type = "structure",
    id = "CreateUserOutput",
}

M.DeleteAppBlockInput = {
    type = "structure",
    id = "DeleteAppBlockInput",
    members = {
        Name = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.DeleteAppBlockOutput = {
    type = "structure",
    id = "DeleteAppBlockOutput",
}

M.ResourceInUseException = {
    type = "structure",
    id = "ResourceInUseException",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.DeleteAppBlockBuilderInput = {
    type = "structure",
    id = "DeleteAppBlockBuilderInput",
    members = {
        Name = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.DeleteAppBlockBuilderOutput = {
    type = "structure",
    id = "DeleteAppBlockBuilderOutput",
}

M.DeleteApplicationInput = {
    type = "structure",
    id = "DeleteApplicationInput",
    members = {
        Name = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.DeleteApplicationOutput = {
    type = "structure",
    id = "DeleteApplicationOutput",
}

M.DeleteDirectoryConfigInput = {
    type = "structure",
    id = "DeleteDirectoryConfigInput",
    members = {
        DirectoryName = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.DeleteDirectoryConfigOutput = {
    type = "structure",
    id = "DeleteDirectoryConfigOutput",
}

M.DeleteEntitlementInput = {
    type = "structure",
    id = "DeleteEntitlementInput",
    members = {
        Name = {
            type = "string",
            traits = {
                required = true,
            },
        },
        StackName = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.DeleteEntitlementOutput = {
    type = "structure",
    id = "DeleteEntitlementOutput",
}

M.DeleteFleetInput = {
    type = "structure",
    id = "DeleteFleetInput",
    members = {
        Name = {
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

M.DeleteImageInput = {
    type = "structure",
    id = "DeleteImageInput",
    members = {
        Name = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.DeleteImageOutput = {
    type = "structure",
    id = "DeleteImageOutput",
    members = {
        Image = M.Image,
    },
}

M.DeleteImageBuilderInput = {
    type = "structure",
    id = "DeleteImageBuilderInput",
    members = {
        Name = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.DeleteImageBuilderOutput = {
    type = "structure",
    id = "DeleteImageBuilderOutput",
    members = {
        ImageBuilder = M.ImageBuilder,
    },
}

M.DeleteImagePermissionsInput = {
    type = "structure",
    id = "DeleteImagePermissionsInput",
    members = {
        Name = {
            type = "string",
            traits = {
                required = true,
            },
        },
        SharedAccountId = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.DeleteImagePermissionsOutput = {
    type = "structure",
    id = "DeleteImagePermissionsOutput",
}

M.DeleteStackInput = {
    type = "structure",
    id = "DeleteStackInput",
    members = {
        Name = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.DeleteStackOutput = {
    type = "structure",
    id = "DeleteStackOutput",
}

M.DeleteThemeForStackInput = {
    type = "structure",
    id = "DeleteThemeForStackInput",
    members = {
        StackName = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.DeleteThemeForStackOutput = {
    type = "structure",
    id = "DeleteThemeForStackOutput",
}

M.DeleteUsageReportSubscriptionInput = {
    type = "structure",
    id = "DeleteUsageReportSubscriptionInput",
}

M.DeleteUsageReportSubscriptionOutput = {
    type = "structure",
    id = "DeleteUsageReportSubscriptionOutput",
}

M.DeleteUserInput = {
    type = "structure",
    id = "DeleteUserInput",
    members = {
        UserName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        AuthenticationType = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.DeleteUserOutput = {
    type = "structure",
    id = "DeleteUserOutput",
}

M.DescribeAppBlockBuilderAppBlockAssociationsInput = {
    type = "structure",
    id = "DescribeAppBlockBuilderAppBlockAssociationsInput",
    members = {
        AppBlockArn = {
            type = "string",
        },
        AppBlockBuilderName = {
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

M.DescribeAppBlockBuilderAppBlockAssociationsOutput = {
    type = "structure",
    id = "DescribeAppBlockBuilderAppBlockAssociationsOutput",
    members = {
        AppBlockBuilderAppBlockAssociations = {
            type = "list",
            member = M.AppBlockBuilderAppBlockAssociation,
        },
        NextToken = {
            type = "string",
        },
    },
}

M.DescribeAppBlockBuildersInput = {
    type = "structure",
    id = "DescribeAppBlockBuildersInput",
    members = {
        Names = {
            type = "list",
            member = { type = "string" },
        },
        NextToken = {
            type = "string",
        },
        MaxResults = {
            type = "integer",
        },
    },
}

M.DescribeAppBlockBuildersOutput = {
    type = "structure",
    id = "DescribeAppBlockBuildersOutput",
    members = {
        AppBlockBuilders = {
            type = "list",
            member = M.AppBlockBuilder,
        },
        NextToken = {
            type = "string",
        },
    },
}

M.DescribeAppBlocksInput = {
    type = "structure",
    id = "DescribeAppBlocksInput",
    members = {
        Arns = {
            type = "list",
            member = { type = "string" },
        },
        NextToken = {
            type = "string",
        },
        MaxResults = {
            type = "integer",
        },
    },
}

M.DescribeAppBlocksOutput = {
    type = "structure",
    id = "DescribeAppBlocksOutput",
    members = {
        AppBlocks = {
            type = "list",
            member = M.AppBlock,
        },
        NextToken = {
            type = "string",
        },
    },
}

M.DescribeApplicationFleetAssociationsInput = {
    type = "structure",
    id = "DescribeApplicationFleetAssociationsInput",
    members = {
        FleetName = {
            type = "string",
        },
        ApplicationArn = {
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

M.DescribeApplicationFleetAssociationsOutput = {
    type = "structure",
    id = "DescribeApplicationFleetAssociationsOutput",
    members = {
        ApplicationFleetAssociations = {
            type = "list",
            member = M.ApplicationFleetAssociation,
        },
        NextToken = {
            type = "string",
        },
    },
}

M.DescribeApplicationsInput = {
    type = "structure",
    id = "DescribeApplicationsInput",
    members = {
        Arns = {
            type = "list",
            member = { type = "string" },
        },
        NextToken = {
            type = "string",
        },
        MaxResults = {
            type = "integer",
        },
    },
}

M.DescribeApplicationsOutput = {
    type = "structure",
    id = "DescribeApplicationsOutput",
    members = {
        Applications = {
            type = "list",
            member = M.Application,
        },
        NextToken = {
            type = "string",
        },
    },
}

M.DescribeAppLicenseUsageInput = {
    type = "structure",
    id = "DescribeAppLicenseUsageInput",
    members = {
        BillingPeriod = {
            type = "string",
            traits = {
                required = true,
            },
        },
        MaxResults = {
            type = "integer",
        },
        NextToken = {
            type = "string",
        },
    },
}

M.DescribeAppLicenseUsageOutput = {
    type = "structure",
    id = "DescribeAppLicenseUsageOutput",
    members = {
        AppLicenseUsages = {
            type = "list",
            member = M.AdminAppLicenseUsageRecord,
        },
        NextToken = {
            type = "string",
        },
    },
}

M.DescribeDirectoryConfigsInput = {
    type = "structure",
    id = "DescribeDirectoryConfigsInput",
    members = {
        DirectoryNames = {
            type = "list",
            member = { type = "string" },
        },
        MaxResults = {
            type = "integer",
        },
        NextToken = {
            type = "string",
        },
    },
}

M.DescribeDirectoryConfigsOutput = {
    type = "structure",
    id = "DescribeDirectoryConfigsOutput",
    members = {
        DirectoryConfigs = {
            type = "list",
            member = M.DirectoryConfig,
        },
        NextToken = {
            type = "string",
        },
    },
}

M.DescribeEntitlementsInput = {
    type = "structure",
    id = "DescribeEntitlementsInput",
    members = {
        Name = {
            type = "string",
        },
        StackName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        NextToken = {
            type = "string",
        },
        MaxResults = {
            type = "integer",
        },
    },
}

M.DescribeEntitlementsOutput = {
    type = "structure",
    id = "DescribeEntitlementsOutput",
    members = {
        Entitlements = {
            type = "list",
            member = M.Entitlement,
        },
        NextToken = {
            type = "string",
        },
    },
}

M.DescribeFleetsInput = {
    type = "structure",
    id = "DescribeFleetsInput",
    members = {
        Names = {
            type = "list",
            member = { type = "string" },
        },
        NextToken = {
            type = "string",
        },
    },
}

M.DescribeFleetsOutput = {
    type = "structure",
    id = "DescribeFleetsOutput",
    members = {
        Fleets = {
            type = "list",
            member = M.Fleet,
        },
        NextToken = {
            type = "string",
        },
    },
}

M.DescribeImageBuildersInput = {
    type = "structure",
    id = "DescribeImageBuildersInput",
    members = {
        Names = {
            type = "list",
            member = { type = "string" },
        },
        MaxResults = {
            type = "integer",
        },
        NextToken = {
            type = "string",
        },
    },
}

M.DescribeImageBuildersOutput = {
    type = "structure",
    id = "DescribeImageBuildersOutput",
    members = {
        ImageBuilders = {
            type = "list",
            member = M.ImageBuilder,
        },
        NextToken = {
            type = "string",
        },
    },
}

M.DescribeImagePermissionsInput = {
    type = "structure",
    id = "DescribeImagePermissionsInput",
    members = {
        Name = {
            type = "string",
            traits = {
                required = true,
            },
        },
        MaxResults = {
            type = "integer",
        },
        SharedAwsAccountIds = {
            type = "list",
            member = { type = "string" },
        },
        NextToken = {
            type = "string",
        },
    },
}

M.SharedImagePermissions = {
    type = "structure",
    id = "SharedImagePermissions",
    members = {
        sharedAccountId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        imagePermissions = setmetatable({ traits = {
            required = true,
        } }, { __index = M.ImagePermissions }),
    },
}

M.DescribeImagePermissionsOutput = {
    type = "structure",
    id = "DescribeImagePermissionsOutput",
    members = {
        Name = {
            type = "string",
        },
        SharedImagePermissionsList = {
            type = "list",
            member = M.SharedImagePermissions,
        },
        NextToken = {
            type = "string",
        },
    },
}

M.DescribeImagesInput = {
    type = "structure",
    id = "DescribeImagesInput",
    members = {
        Names = {
            type = "list",
            member = { type = "string" },
        },
        Arns = {
            type = "list",
            member = { type = "string" },
        },
        Type = {
            type = "string",
        },
        NextToken = {
            type = "string",
        },
        MaxResults = {
            type = "integer",
        },
    },
}

M.DescribeImagesOutput = {
    type = "structure",
    id = "DescribeImagesOutput",
    members = {
        Images = {
            type = "list",
            member = M.Image,
        },
        NextToken = {
            type = "string",
        },
    },
}

M.DescribeSessionsInput = {
    type = "structure",
    id = "DescribeSessionsInput",
    members = {
        StackName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        FleetName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        UserId = {
            type = "string",
        },
        NextToken = {
            type = "string",
        },
        Limit = {
            type = "integer",
        },
        AuthenticationType = {
            type = "string",
        },
        InstanceId = {
            type = "string",
        },
    },
}

M.SessionConnectionState = {
    CONNECTED = "CONNECTED",
    NOT_CONNECTED = "NOT_CONNECTED",
}

M.InstanceDrainStatus = {
    ACTIVE = "ACTIVE",
    DRAINING = "DRAINING",
    NOT_APPLICABLE = "NOT_APPLICABLE",
}

M.SessionState = {
    ACTIVE = "ACTIVE",
    PENDING = "PENDING",
    EXPIRED = "EXPIRED",
}

M.Session = {
    type = "structure",
    id = "Session",
    members = {
        Id = {
            type = "string",
            traits = {
                required = true,
            },
        },
        UserId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        StackName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        FleetName = {
            type = "string",
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
        ConnectionState = {
            type = "string",
        },
        StartTime = {
            type = "timestamp",
        },
        MaxExpirationTime = {
            type = "timestamp",
        },
        AuthenticationType = {
            type = "string",
        },
        NetworkAccessConfiguration = M.NetworkAccessConfiguration,
        InstanceId = {
            type = "string",
        },
        InstanceDrainStatus = {
            type = "string",
        },
    },
}

M.DescribeSessionsOutput = {
    type = "structure",
    id = "DescribeSessionsOutput",
    members = {
        Sessions = {
            type = "list",
            member = M.Session,
        },
        NextToken = {
            type = "string",
        },
    },
}

M.DescribeSoftwareAssociationsInput = {
    type = "structure",
    id = "DescribeSoftwareAssociationsInput",
    members = {
        AssociatedResource = {
            type = "string",
            traits = {
                required = true,
            },
        },
        MaxResults = {
            type = "integer",
        },
        NextToken = {
            type = "string",
        },
    },
}

M.SoftwareDeploymentStatus = {
    STAGED_FOR_INSTALLATION = "STAGED_FOR_INSTALLATION",
    PENDING_INSTALLATION = "PENDING_INSTALLATION",
    INSTALLED = "INSTALLED",
    STAGED_FOR_UNINSTALLATION = "STAGED_FOR_UNINSTALLATION",
    PENDING_UNINSTALLATION = "PENDING_UNINSTALLATION",
    FAILED_TO_INSTALL = "FAILED_TO_INSTALL",
    FAILED_TO_UNINSTALL = "FAILED_TO_UNINSTALL",
}

M.SoftwareAssociations = {
    type = "structure",
    id = "SoftwareAssociations",
    members = {
        SoftwareName = {
            type = "string",
        },
        Status = {
            type = "string",
        },
        DeploymentError = {
            type = "list",
            member = M.ErrorDetails,
        },
    },
}

M.DescribeSoftwareAssociationsOutput = {
    type = "structure",
    id = "DescribeSoftwareAssociationsOutput",
    members = {
        AssociatedResource = {
            type = "string",
        },
        SoftwareAssociations = {
            type = "list",
            member = M.SoftwareAssociations,
        },
        NextToken = {
            type = "string",
        },
    },
}

M.DescribeStacksInput = {
    type = "structure",
    id = "DescribeStacksInput",
    members = {
        Names = {
            type = "list",
            member = { type = "string" },
        },
        NextToken = {
            type = "string",
        },
    },
}

M.DescribeStacksOutput = {
    type = "structure",
    id = "DescribeStacksOutput",
    members = {
        Stacks = {
            type = "list",
            member = M.Stack,
        },
        NextToken = {
            type = "string",
        },
    },
}

M.DescribeThemeForStackInput = {
    type = "structure",
    id = "DescribeThemeForStackInput",
    members = {
        StackName = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.DescribeThemeForStackOutput = {
    type = "structure",
    id = "DescribeThemeForStackOutput",
    members = {
        Theme = M.Theme,
    },
}

M.DescribeUsageReportSubscriptionsInput = {
    type = "structure",
    id = "DescribeUsageReportSubscriptionsInput",
    members = {
        MaxResults = {
            type = "integer",
        },
        NextToken = {
            type = "string",
        },
    },
}

M.UsageReportExecutionErrorCode = {
    RESOURCE_NOT_FOUND = "RESOURCE_NOT_FOUND",
    ACCESS_DENIED = "ACCESS_DENIED",
    INTERNAL_SERVICE_ERROR = "INTERNAL_SERVICE_ERROR",
}

M.LastReportGenerationExecutionError = {
    type = "structure",
    id = "LastReportGenerationExecutionError",
    members = {
        ErrorCode = {
            type = "string",
        },
        ErrorMessage = {
            type = "string",
        },
    },
}

M.UsageReportSubscription = {
    type = "structure",
    id = "UsageReportSubscription",
    members = {
        S3BucketName = {
            type = "string",
        },
        Schedule = {
            type = "string",
        },
        LastGeneratedReportDate = {
            type = "timestamp",
        },
        SubscriptionErrors = {
            type = "list",
            member = M.LastReportGenerationExecutionError,
        },
    },
}

M.DescribeUsageReportSubscriptionsOutput = {
    type = "structure",
    id = "DescribeUsageReportSubscriptionsOutput",
    members = {
        UsageReportSubscriptions = {
            type = "list",
            member = M.UsageReportSubscription,
        },
        NextToken = {
            type = "string",
        },
    },
}

M.DescribeUsersInput = {
    type = "structure",
    id = "DescribeUsersInput",
    members = {
        AuthenticationType = {
            type = "string",
            traits = {
                required = true,
            },
        },
        MaxResults = {
            type = "integer",
        },
        NextToken = {
            type = "string",
        },
    },
}

M.User = {
    type = "structure",
    id = "User",
    members = {
        Arn = {
            type = "string",
        },
        UserName = {
            type = "string",
        },
        Enabled = {
            type = "boolean",
        },
        Status = {
            type = "string",
        },
        FirstName = {
            type = "string",
        },
        LastName = {
            type = "string",
        },
        CreatedTime = {
            type = "timestamp",
        },
        AuthenticationType = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.DescribeUsersOutput = {
    type = "structure",
    id = "DescribeUsersOutput",
    members = {
        Users = {
            type = "list",
            member = M.User,
        },
        NextToken = {
            type = "string",
        },
    },
}

M.DescribeUserStackAssociationsInput = {
    type = "structure",
    id = "DescribeUserStackAssociationsInput",
    members = {
        StackName = {
            type = "string",
        },
        UserName = {
            type = "string",
        },
        AuthenticationType = {
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

M.DescribeUserStackAssociationsOutput = {
    type = "structure",
    id = "DescribeUserStackAssociationsOutput",
    members = {
        UserStackAssociations = {
            type = "list",
            member = M.UserStackAssociation,
        },
        NextToken = {
            type = "string",
        },
    },
}

M.DisableUserInput = {
    type = "structure",
    id = "DisableUserInput",
    members = {
        UserName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        AuthenticationType = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.DisableUserOutput = {
    type = "structure",
    id = "DisableUserOutput",
}

M.DisassociateAppBlockBuilderAppBlockInput = {
    type = "structure",
    id = "DisassociateAppBlockBuilderAppBlockInput",
    members = {
        AppBlockArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        AppBlockBuilderName = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.DisassociateAppBlockBuilderAppBlockOutput = {
    type = "structure",
    id = "DisassociateAppBlockBuilderAppBlockOutput",
}

M.DisassociateApplicationFleetInput = {
    type = "structure",
    id = "DisassociateApplicationFleetInput",
    members = {
        FleetName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        ApplicationArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.DisassociateApplicationFleetOutput = {
    type = "structure",
    id = "DisassociateApplicationFleetOutput",
}

M.DisassociateApplicationFromEntitlementInput = {
    type = "structure",
    id = "DisassociateApplicationFromEntitlementInput",
    members = {
        StackName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        EntitlementName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        ApplicationIdentifier = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.DisassociateApplicationFromEntitlementOutput = {
    type = "structure",
    id = "DisassociateApplicationFromEntitlementOutput",
}

M.DisassociateFleetInput = {
    type = "structure",
    id = "DisassociateFleetInput",
    members = {
        FleetName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        StackName = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.DisassociateFleetOutput = {
    type = "structure",
    id = "DisassociateFleetOutput",
}

M.DisassociateSoftwareFromImageBuilderInput = {
    type = "structure",
    id = "DisassociateSoftwareFromImageBuilderInput",
    members = {
        ImageBuilderName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        SoftwareNames = {
            type = "list",
            member = { type = "string" },
            traits = {
                required = true,
            },
        },
    },
}

M.DisassociateSoftwareFromImageBuilderOutput = {
    type = "structure",
    id = "DisassociateSoftwareFromImageBuilderOutput",
}

M.DrainSessionInstanceInput = {
    type = "structure",
    id = "DrainSessionInstanceInput",
    members = {
        SessionId = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.DrainSessionInstanceOutput = {
    type = "structure",
    id = "DrainSessionInstanceOutput",
}

M.EnableUserInput = {
    type = "structure",
    id = "EnableUserInput",
    members = {
        UserName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        AuthenticationType = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.EnableUserOutput = {
    type = "structure",
    id = "EnableUserOutput",
}

M.EntitledApplication = {
    type = "structure",
    id = "EntitledApplication",
    members = {
        ApplicationIdentifier = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.ExpireSessionInput = {
    type = "structure",
    id = "ExpireSessionInput",
    members = {
        SessionId = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.ExpireSessionOutput = {
    type = "structure",
    id = "ExpireSessionOutput",
}

M.Filter = {
    type = "structure",
    id = "Filter",
    members = {
        Name = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Values = {
            type = "list",
            member = { type = "string" },
            traits = {
                required = true,
            },
        },
    },
}

M.FleetAttribute = {
    VPC_CONFIGURATION = "VPC_CONFIGURATION",
    VPC_CONFIGURATION_SECURITY_GROUP_IDS = "VPC_CONFIGURATION_SECURITY_GROUP_IDS",
    DOMAIN_JOIN_INFO = "DOMAIN_JOIN_INFO",
    IAM_ROLE_ARN = "IAM_ROLE_ARN",
    USB_DEVICE_FILTER_STRINGS = "USB_DEVICE_FILTER_STRINGS",
    SESSION_SCRIPT_S3_LOCATION = "SESSION_SCRIPT_S3_LOCATION",
    MAX_SESSIONS_PER_INSTANCE = "MAX_SESSIONS_PER_INSTANCE",
    VOLUME_CONFIGURATION = "VOLUME_CONFIGURATION",
}

M.GetExportImageTaskInput = {
    type = "structure",
    id = "GetExportImageTaskInput",
    members = {
        TaskId = {
            type = "string",
        },
    },
}

M.GetExportImageTaskOutput = {
    type = "structure",
    id = "GetExportImageTaskOutput",
    members = {
        ExportImageTask = M.ExportImageTask,
    },
}

M.ListAssociatedFleetsInput = {
    type = "structure",
    id = "ListAssociatedFleetsInput",
    members = {
        StackName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        NextToken = {
            type = "string",
        },
    },
}

M.ListAssociatedFleetsOutput = {
    type = "structure",
    id = "ListAssociatedFleetsOutput",
    members = {
        Names = {
            type = "list",
            member = { type = "string" },
        },
        NextToken = {
            type = "string",
        },
    },
}

M.ListAssociatedStacksInput = {
    type = "structure",
    id = "ListAssociatedStacksInput",
    members = {
        FleetName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        NextToken = {
            type = "string",
        },
    },
}

M.ListAssociatedStacksOutput = {
    type = "structure",
    id = "ListAssociatedStacksOutput",
    members = {
        Names = {
            type = "list",
            member = { type = "string" },
        },
        NextToken = {
            type = "string",
        },
    },
}

M.ListEntitledApplicationsInput = {
    type = "structure",
    id = "ListEntitledApplicationsInput",
    members = {
        StackName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        EntitlementName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        NextToken = {
            type = "string",
        },
        MaxResults = {
            type = "integer",
        },
    },
}

M.ListEntitledApplicationsOutput = {
    type = "structure",
    id = "ListEntitledApplicationsOutput",
    members = {
        EntitledApplications = {
            type = "list",
            member = M.EntitledApplication,
        },
        NextToken = {
            type = "string",
        },
    },
}

M.ListExportImageTasksInput = {
    type = "structure",
    id = "ListExportImageTasksInput",
    members = {
        Filters = {
            type = "list",
            member = M.Filter,
        },
        MaxResults = {
            type = "integer",
        },
        NextToken = {
            type = "string",
        },
    },
}

M.ListExportImageTasksOutput = {
    type = "structure",
    id = "ListExportImageTasksOutput",
    members = {
        ExportImageTasks = {
            type = "list",
            member = M.ExportImageTask,
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
    id = "ListTagsForResourceOutput",
    members = {
        Tags = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
    },
}

M.StartAppBlockBuilderInput = {
    type = "structure",
    id = "StartAppBlockBuilderInput",
    members = {
        Name = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.StartAppBlockBuilderOutput = {
    type = "structure",
    id = "StartAppBlockBuilderOutput",
    members = {
        AppBlockBuilder = M.AppBlockBuilder,
    },
}

M.StartFleetInput = {
    type = "structure",
    id = "StartFleetInput",
    members = {
        Name = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.StartFleetOutput = {
    type = "structure",
    id = "StartFleetOutput",
}

M.StartImageBuilderInput = {
    type = "structure",
    id = "StartImageBuilderInput",
    members = {
        Name = {
            type = "string",
            traits = {
                required = true,
            },
        },
        AppstreamAgentVersion = {
            type = "string",
        },
    },
}

M.StartImageBuilderOutput = {
    type = "structure",
    id = "StartImageBuilderOutput",
    members = {
        ImageBuilder = M.ImageBuilder,
    },
}

M.StartSoftwareDeploymentToImageBuilderInput = {
    type = "structure",
    id = "StartSoftwareDeploymentToImageBuilderInput",
    members = {
        ImageBuilderName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        RetryFailedDeployments = {
            type = "boolean",
        },
    },
}

M.StartSoftwareDeploymentToImageBuilderOutput = {
    type = "structure",
    id = "StartSoftwareDeploymentToImageBuilderOutput",
}

M.StopAppBlockBuilderInput = {
    type = "structure",
    id = "StopAppBlockBuilderInput",
    members = {
        Name = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.StopAppBlockBuilderOutput = {
    type = "structure",
    id = "StopAppBlockBuilderOutput",
    members = {
        AppBlockBuilder = M.AppBlockBuilder,
    },
}

M.StopFleetInput = {
    type = "structure",
    id = "StopFleetInput",
    members = {
        Name = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.StopFleetOutput = {
    type = "structure",
    id = "StopFleetOutput",
}

M.StopImageBuilderInput = {
    type = "structure",
    id = "StopImageBuilderInput",
    members = {
        Name = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.StopImageBuilderOutput = {
    type = "structure",
    id = "StopImageBuilderOutput",
    members = {
        ImageBuilder = M.ImageBuilder,
    },
}

M.TagResourceInput = {
    type = "structure",
    id = "TagResourceInput",
    members = {
        ResourceArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Tags = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
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

M.UntagResourceInput = {
    type = "structure",
    id = "UntagResourceInput",
    members = {
        ResourceArn = {
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

M.UpdateAppBlockBuilderInput = {
    type = "structure",
    id = "UpdateAppBlockBuilderInput",
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
        DisplayName = {
            type = "string",
        },
        Platform = {
            type = "string",
        },
        InstanceType = {
            type = "string",
        },
        VpcConfig = M.VpcConfig,
        EnableDefaultInternetAccess = {
            type = "boolean",
        },
        IamRoleArn = {
            type = "string",
        },
        AccessEndpoints = {
            type = "list",
            member = M.AccessEndpoint,
        },
        AttributesToDelete = {
            type = "list",
            member = { type = "string" },
        },
        DisableIMDSV1 = {
            type = "boolean",
        },
    },
}

M.UpdateAppBlockBuilderOutput = {
    type = "structure",
    id = "UpdateAppBlockBuilderOutput",
    members = {
        AppBlockBuilder = M.AppBlockBuilder,
    },
}

M.UpdateApplicationInput = {
    type = "structure",
    id = "UpdateApplicationInput",
    members = {
        Name = {
            type = "string",
            traits = {
                required = true,
            },
        },
        DisplayName = {
            type = "string",
        },
        Description = {
            type = "string",
        },
        IconS3Location = M.S3Location,
        LaunchPath = {
            type = "string",
        },
        WorkingDirectory = {
            type = "string",
        },
        LaunchParameters = {
            type = "string",
        },
        AppBlockArn = {
            type = "string",
        },
        AttributesToDelete = {
            type = "list",
            member = { type = "string" },
        },
    },
}

M.UpdateApplicationOutput = {
    type = "structure",
    id = "UpdateApplicationOutput",
    members = {
        Application = M.Application,
    },
}

M.UpdateDirectoryConfigInput = {
    type = "structure",
    id = "UpdateDirectoryConfigInput",
    members = {
        DirectoryName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        OrganizationalUnitDistinguishedNames = {
            type = "list",
            member = { type = "string" },
        },
        ServiceAccountCredentials = M.ServiceAccountCredentials,
        CertificateBasedAuthProperties = M.CertificateBasedAuthProperties,
    },
}

M.UpdateDirectoryConfigOutput = {
    type = "structure",
    id = "UpdateDirectoryConfigOutput",
    members = {
        DirectoryConfig = M.DirectoryConfig,
    },
}

M.UpdateEntitlementInput = {
    type = "structure",
    id = "UpdateEntitlementInput",
    members = {
        Name = {
            type = "string",
            traits = {
                required = true,
            },
        },
        StackName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Description = {
            type = "string",
        },
        AppVisibility = {
            type = "string",
        },
        Attributes = {
            type = "list",
            member = M.EntitlementAttribute,
        },
    },
}

M.UpdateEntitlementOutput = {
    type = "structure",
    id = "UpdateEntitlementOutput",
    members = {
        Entitlement = M.Entitlement,
    },
}

M.UpdateFleetInput = {
    type = "structure",
    id = "UpdateFleetInput",
    members = {
        ImageName = {
            type = "string",
        },
        ImageArn = {
            type = "string",
        },
        Name = {
            type = "string",
        },
        InstanceType = {
            type = "string",
        },
        ComputeCapacity = M.ComputeCapacity,
        VpcConfig = M.VpcConfig,
        MaxUserDurationInSeconds = {
            type = "integer",
        },
        DisconnectTimeoutInSeconds = {
            type = "integer",
        },
        DeleteVpcConfig = {
            type = "boolean",
        },
        Description = {
            type = "string",
        },
        DisplayName = {
            type = "string",
        },
        EnableDefaultInternetAccess = {
            type = "boolean",
        },
        DomainJoinInfo = M.DomainJoinInfo,
        IdleDisconnectTimeoutInSeconds = {
            type = "integer",
        },
        AttributesToDelete = {
            type = "list",
            member = { type = "string" },
        },
        IamRoleArn = {
            type = "string",
        },
        StreamView = {
            type = "string",
        },
        Platform = {
            type = "string",
        },
        MaxConcurrentSessions = {
            type = "integer",
        },
        UsbDeviceFilterStrings = {
            type = "list",
            member = { type = "string" },
        },
        SessionScriptS3Location = M.S3Location,
        MaxSessionsPerInstance = {
            type = "integer",
        },
        RootVolumeConfig = M.VolumeConfig,
        DisableIMDSV1 = {
            type = "boolean",
        },
    },
}

M.UpdateFleetOutput = {
    type = "structure",
    id = "UpdateFleetOutput",
    members = {
        Fleet = M.Fleet,
    },
}

M.UpdateImagePermissionsInput = {
    type = "structure",
    id = "UpdateImagePermissionsInput",
    members = {
        Name = {
            type = "string",
            traits = {
                required = true,
            },
        },
        SharedAccountId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        ImagePermissions = setmetatable({ traits = {
            required = true,
        } }, { __index = M.ImagePermissions }),
    },
}

M.UpdateImagePermissionsOutput = {
    type = "structure",
    id = "UpdateImagePermissionsOutput",
}

M.StackAttribute = {
    STORAGE_CONNECTORS = "STORAGE_CONNECTORS",
    STORAGE_CONNECTOR_HOMEFOLDERS = "STORAGE_CONNECTOR_HOMEFOLDERS",
    STORAGE_CONNECTOR_GOOGLE_DRIVE = "STORAGE_CONNECTOR_GOOGLE_DRIVE",
    STORAGE_CONNECTOR_ONE_DRIVE = "STORAGE_CONNECTOR_ONE_DRIVE",
    REDIRECT_URL = "REDIRECT_URL",
    FEEDBACK_URL = "FEEDBACK_URL",
    THEME_NAME = "THEME_NAME",
    USER_SETTINGS = "USER_SETTINGS",
    EMBED_HOST_DOMAINS = "EMBED_HOST_DOMAINS",
    IAM_ROLE_ARN = "IAM_ROLE_ARN",
    ACCESS_ENDPOINTS = "ACCESS_ENDPOINTS",
    STREAMING_EXPERIENCE_SETTINGS = "STREAMING_EXPERIENCE_SETTINGS",
    CONTENT_REDIRECTION = "CONTENT_REDIRECTION",
    AGENT_ACCESS_CONFIG = "AGENT_ACCESS_CONFIG",
}

M.UpdateStackInput = {
    type = "structure",
    id = "UpdateStackInput",
    members = {
        DisplayName = {
            type = "string",
        },
        Description = {
            type = "string",
        },
        Name = {
            type = "string",
            traits = {
                required = true,
            },
        },
        StorageConnectors = {
            type = "list",
            member = M.StorageConnector,
        },
        DeleteStorageConnectors = {
            type = "boolean",
        },
        RedirectURL = {
            type = "string",
        },
        FeedbackURL = {
            type = "string",
        },
        AttributesToDelete = {
            type = "list",
            member = { type = "string" },
        },
        UserSettings = {
            type = "list",
            member = M.UserSetting,
        },
        ApplicationSettings = M.ApplicationSettings,
        AccessEndpoints = {
            type = "list",
            member = M.AccessEndpoint,
        },
        EmbedHostDomains = {
            type = "list",
            member = { type = "string" },
        },
        StreamingExperienceSettings = M.StreamingExperienceSettings,
        ContentRedirection = M.ContentRedirection,
        AgentAccessConfig = M.AgentAccessConfigForUpdate,
    },
}

M.UpdateStackOutput = {
    type = "structure",
    id = "UpdateStackOutput",
    members = {
        Stack = M.Stack,
    },
}

M.ThemeAttribute = {
    FOOTER_LINKS = "FOOTER_LINKS",
}

M.UpdateThemeForStackInput = {
    type = "structure",
    id = "UpdateThemeForStackInput",
    members = {
        StackName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        FooterLinks = {
            type = "list",
            member = M.ThemeFooterLink,
        },
        TitleText = {
            type = "string",
        },
        ThemeStyling = {
            type = "string",
        },
        OrganizationLogoS3Location = M.S3Location,
        FaviconS3Location = M.S3Location,
        State = {
            type = "string",
        },
        AttributesToDelete = {
            type = "list",
            member = { type = "string" },
        },
    },
}

M.UpdateThemeForStackOutput = {
    type = "structure",
    id = "UpdateThemeForStackOutput",
    members = {
        Theme = M.Theme,
    },
}

return M
