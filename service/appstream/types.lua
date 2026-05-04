local M = {}

M.AccessEndpointType = {
    STREAMING = "STREAMING",
}

M.AccessEndpoint = {
    type = "structure",
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
    members = {
        Settings = {
            type = "list",
            member_type = "structure",
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
    members = {
        Settings = {
            type = "list",
            member_type = "structure",
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
    members = {
        ScriptS3Location = {
            type = "structure",
            traits = {
                required = true,
            },
        },
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
            type = "number",
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
        SourceS3Location = {
            type = "structure",
        },
        SetupScriptDetails = {
            type = "structure",
        },
        CreatedTime = {
            type = "timestamp",
        },
        PostSetupScriptDetails = {
            type = "structure",
        },
        PackagingType = {
            type = "string",
        },
        State = {
            type = "string",
        },
        AppBlockErrors = {
            type = "list",
            member_type = "structure",
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

M.AppBlockBuilder = {
    type = "structure",
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
        VpcConfig = {
            type = "structure",
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
        CreatedTime = {
            type = "timestamp",
        },
        AppBlockBuilderErrors = {
            type = "list",
            member_type = "structure",
        },
        StateChangeReason = {
            type = "structure",
        },
        AccessEndpoints = {
            type = "list",
            member_type = "structure",
        },
        DisableIMDSV1 = {
            type = "boolean",
        },
    },
}

M.AppBlockBuilderAppBlockAssociation = {
    type = "structure",
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
            key_type = "string",
            value_type = "string",
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
        IconS3Location = {
            type = "structure",
        },
        Platforms = {
            type = "list",
            member_type = "string",
        },
        InstanceFamilies = {
            type = "list",
            member_type = "string",
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
    members = {
        AppBlockBuilderAppBlockAssociation = {
            type = "structure",
        },
    },
}

M.ConcurrentModificationException = {
    type = "structure",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.InvalidParameterCombinationException = {
    type = "structure",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.LimitExceededException = {
    type = "structure",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.OperationNotPermittedException = {
    type = "structure",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.ResourceNotFoundException = {
    type = "structure",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.AssociateApplicationFleetInput = {
    type = "structure",
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
    members = {
        ApplicationFleetAssociation = {
            type = "structure",
        },
    },
}

M.AssociateApplicationToEntitlementInput = {
    type = "structure",
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
}

M.EntitlementNotFoundException = {
    type = "structure",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.AssociateFleetInput = {
    type = "structure",
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
}

M.IncompatibleImageException = {
    type = "structure",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.InvalidAccountStatusException = {
    type = "structure",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.AssociateSoftwareToImageBuilderInput = {
    type = "structure",
    members = {
        ImageBuilderName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        SoftwareNames = {
            type = "list",
            member_type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.AssociateSoftwareToImageBuilderOutput = {
    type = "structure",
}

M.AuthenticationType = {
    API = "API",
    SAML = "SAML",
    USERPOOL = "USERPOOL",
    AWS_AD = "AWS_AD",
}

M.UserStackAssociation = {
    type = "structure",
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
    members = {
        UserStackAssociations = {
            type = "list",
            member_type = "structure",
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
    members = {
        UserStackAssociation = {
            type = "structure",
        },
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
    members = {
        errors = {
            type = "list",
            member_type = "structure",
        },
    },
}

M.BatchDisassociateUserStackInput = {
    type = "structure",
    members = {
        UserStackAssociations = {
            type = "list",
            member_type = "structure",
            traits = {
                required = true,
            },
        },
    },
}

M.BatchDisassociateUserStackOutput = {
    type = "structure",
    members = {
        errors = {
            type = "list",
            member_type = "structure",
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
    members = {
        DesiredInstances = {
            type = "number",
        },
        DesiredSessions = {
            type = "number",
        },
    },
}

M.ComputeCapacityStatus = {
    type = "structure",
    members = {
        Desired = {
            type = "number",
            traits = {
                required = true,
            },
        },
        Running = {
            type = "number",
        },
        InUse = {
            type = "number",
        },
        Available = {
            type = "number",
        },
        DesiredUserSessions = {
            type = "number",
        },
        AvailableUserSessions = {
            type = "number",
        },
        ActiveUserSessions = {
            type = "number",
        },
        ActualUserSessions = {
            type = "number",
        },
        Draining = {
            type = "number",
        },
        DrainModeActiveUserSessions = {
            type = "number",
        },
        DrainModeUnusedUserSessions = {
            type = "number",
        },
    },
}

M.UrlRedirectionConfig = {
    type = "structure",
    members = {
        Enabled = {
            type = "boolean",
            traits = {
                required = true,
            },
        },
        AllowedUrls = {
            type = "list",
            member_type = "string",
        },
        DeniedUrls = {
            type = "list",
            member_type = "string",
        },
    },
}

M.ContentRedirection = {
    type = "structure",
    members = {
        HostToClient = {
            type = "structure",
        },
    },
}

M.CopyImageInput = {
    type = "structure",
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
    members = {
        DestinationImageName = {
            type = "string",
        },
    },
}

M.ResourceAlreadyExistsException = {
    type = "structure",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.ResourceNotAvailableException = {
    type = "structure",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.CreateAppBlockInput = {
    type = "structure",
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
        SourceS3Location = {
            type = "structure",
            traits = {
                required = true,
            },
        },
        SetupScriptDetails = {
            type = "structure",
        },
        Tags = {
            type = "map",
            key_type = "string",
            value_type = "string",
        },
        PostSetupScriptDetails = {
            type = "structure",
        },
        PackagingType = {
            type = "string",
        },
    },
}

M.CreateAppBlockOutput = {
    type = "structure",
    members = {
        AppBlock = {
            type = "structure",
        },
    },
}

M.CreateAppBlockBuilderInput = {
    type = "structure",
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
            key_type = "string",
            value_type = "string",
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
        VpcConfig = {
            type = "structure",
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
        AccessEndpoints = {
            type = "list",
            member_type = "structure",
        },
        DisableIMDSV1 = {
            type = "boolean",
        },
    },
}

M.CreateAppBlockBuilderOutput = {
    type = "structure",
    members = {
        AppBlockBuilder = {
            type = "structure",
        },
    },
}

M.InvalidRoleException = {
    type = "structure",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.RequestLimitExceededException = {
    type = "structure",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.CreateAppBlockBuilderStreamingURLInput = {
    type = "structure",
    members = {
        AppBlockBuilderName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Validity = {
            type = "number",
        },
    },
}

M.CreateAppBlockBuilderStreamingURLOutput = {
    type = "structure",
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
        IconS3Location = {
            type = "structure",
            traits = {
                required = true,
            },
        },
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
            member_type = "string",
            traits = {
                required = true,
            },
        },
        InstanceFamilies = {
            type = "list",
            member_type = "string",
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
            key_type = "string",
            value_type = "string",
        },
    },
}

M.CreateApplicationOutput = {
    type = "structure",
    members = {
        Application = {
            type = "structure",
        },
    },
}

M.ServiceAccountCredentials = {
    type = "structure",
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
    members = {
        DirectoryName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        OrganizationalUnitDistinguishedNames = {
            type = "list",
            member_type = "string",
            traits = {
                required = true,
            },
        },
        ServiceAccountCredentials = {
            type = "structure",
        },
        CertificateBasedAuthProperties = {
            type = "structure",
        },
    },
}

M.DirectoryConfig = {
    type = "structure",
    members = {
        DirectoryName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        OrganizationalUnitDistinguishedNames = {
            type = "list",
            member_type = "string",
        },
        ServiceAccountCredentials = {
            type = "structure",
        },
        CreatedTime = {
            type = "timestamp",
        },
        CertificateBasedAuthProperties = {
            type = "structure",
        },
    },
}

M.CreateDirectoryConfigOutput = {
    type = "structure",
    members = {
        DirectoryConfig = {
            type = "structure",
        },
    },
}

M.EntitlementAttribute = {
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

M.CreateEntitlementInput = {
    type = "structure",
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
            member_type = "structure",
            traits = {
                required = true,
            },
        },
    },
}

M.Entitlement = {
    type = "structure",
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
            member_type = "structure",
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
    members = {
        Entitlement = {
            type = "structure",
        },
    },
}

M.EntitlementAlreadyExistsException = {
    type = "structure",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.CreateExportImageTaskInput = {
    type = "structure",
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
            key_type = "string",
            value_type = "string",
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
            key_type = "string",
            value_type = "string",
        },
        ErrorDetails = {
            type = "list",
            member_type = "structure",
        },
    },
}

M.CreateExportImageTaskOutput = {
    type = "structure",
    members = {
        ExportImageTask = {
            type = "structure",
        },
    },
}

M.DomainJoinInfo = {
    type = "structure",
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
    members = {
        VolumeSizeInGb = {
            type = "number",
        },
    },
}

M.StreamView = {
    APP = "APP",
    DESKTOP = "DESKTOP",
}

M.CreateFleetInput = {
    type = "structure",
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
        ComputeCapacity = {
            type = "structure",
        },
        VpcConfig = {
            type = "structure",
        },
        MaxUserDurationInSeconds = {
            type = "number",
        },
        DisconnectTimeoutInSeconds = {
            type = "number",
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
        DomainJoinInfo = {
            type = "structure",
        },
        Tags = {
            type = "map",
            key_type = "string",
            value_type = "string",
        },
        IdleDisconnectTimeoutInSeconds = {
            type = "number",
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
            type = "number",
        },
        UsbDeviceFilterStrings = {
            type = "list",
            member_type = "string",
        },
        SessionScriptS3Location = {
            type = "structure",
        },
        MaxSessionsPerInstance = {
            type = "number",
        },
        RootVolumeConfig = {
            type = "structure",
        },
        DisableIMDSV1 = {
            type = "boolean",
        },
    },
}

M.FleetError = {
    type = "structure",
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
        ComputeCapacityStatus = {
            type = "structure",
            traits = {
                required = true,
            },
        },
        MaxUserDurationInSeconds = {
            type = "number",
        },
        DisconnectTimeoutInSeconds = {
            type = "number",
        },
        State = {
            type = "string",
            traits = {
                required = true,
            },
        },
        VpcConfig = {
            type = "structure",
        },
        CreatedTime = {
            type = "timestamp",
        },
        FleetErrors = {
            type = "list",
            member_type = "structure",
        },
        EnableDefaultInternetAccess = {
            type = "boolean",
        },
        DomainJoinInfo = {
            type = "structure",
        },
        IdleDisconnectTimeoutInSeconds = {
            type = "number",
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
            type = "number",
        },
        UsbDeviceFilterStrings = {
            type = "list",
            member_type = "string",
        },
        SessionScriptS3Location = {
            type = "structure",
        },
        MaxSessionsPerInstance = {
            type = "number",
        },
        RootVolumeConfig = {
            type = "structure",
        },
        DisableIMDSV1 = {
            type = "boolean",
        },
    },
}

M.CreateFleetOutput = {
    type = "structure",
    members = {
        Fleet = {
            type = "structure",
        },
    },
}

M.CreateImageBuilderInput = {
    type = "structure",
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
        VpcConfig = {
            type = "structure",
        },
        IamRoleArn = {
            type = "string",
        },
        EnableDefaultInternetAccess = {
            type = "boolean",
        },
        DomainJoinInfo = {
            type = "structure",
        },
        AppstreamAgentVersion = {
            type = "string",
        },
        Tags = {
            type = "map",
            key_type = "string",
            value_type = "string",
        },
        AccessEndpoints = {
            type = "list",
            member_type = "structure",
        },
        RootVolumeConfig = {
            type = "structure",
        },
        SoftwaresToInstall = {
            type = "list",
            member_type = "string",
        },
        SoftwaresToUninstall = {
            type = "list",
            member_type = "string",
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
    members = {
        EniPrivateIpAddress = {
            type = "string",
        },
        EniIpv6Addresses = {
            type = "list",
            member_type = "string",
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
        VpcConfig = {
            type = "structure",
        },
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
        StateChangeReason = {
            type = "structure",
        },
        CreatedTime = {
            type = "timestamp",
        },
        EnableDefaultInternetAccess = {
            type = "boolean",
        },
        DomainJoinInfo = {
            type = "structure",
        },
        NetworkAccessConfiguration = {
            type = "structure",
        },
        ImageBuilderErrors = {
            type = "list",
            member_type = "structure",
        },
        AppstreamAgentVersion = {
            type = "string",
        },
        AccessEndpoints = {
            type = "list",
            member_type = "structure",
        },
        RootVolumeConfig = {
            type = "structure",
        },
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
    members = {
        ImageBuilder = {
            type = "structure",
        },
    },
}

M.CreateImageBuilderStreamingURLInput = {
    type = "structure",
    members = {
        Name = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Validity = {
            type = "number",
        },
    },
}

M.CreateImageBuilderStreamingURLOutput = {
    type = "structure",
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
    members = {
        IntendedInstanceType = {
            type = "string",
        },
    },
}

M.CreateImportedImageInput = {
    type = "structure",
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
            key_type = "string",
            value_type = "string",
        },
        RuntimeValidationConfig = {
            type = "structure",
        },
        AgentSoftwareVersion = {
            type = "string",
        },
        AppCatalogConfig = {
            type = "list",
            member_type = "structure",
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
        StateChangeReason = {
            type = "structure",
        },
        Applications = {
            type = "list",
            member_type = "structure",
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
        ImagePermissions = {
            type = "structure",
        },
        ImageErrors = {
            type = "list",
            member_type = "structure",
        },
        LatestAppstreamAgentVersion = {
            type = "string",
        },
        SupportedInstanceFamilies = {
            type = "list",
            member_type = "string",
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
    members = {
        Image = {
            type = "structure",
        },
    },
}

M.DryRunOperationException = {
    type = "structure",
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
            member_type = "string",
        },
        DomainsRequireAdminConsent = {
            type = "list",
            member_type = "string",
        },
    },
}

M.PreferredProtocol = {
    TCP = "TCP",
    UDP = "UDP",
}

M.StreamingExperienceSettings = {
    type = "structure",
    members = {
        PreferredProtocol = {
            type = "string",
        },
    },
}

M.UserSetting = {
    type = "structure",
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
            type = "number",
        },
    },
}

M.CreateStackInput = {
    type = "structure",
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
            member_type = "structure",
        },
        RedirectURL = {
            type = "string",
        },
        FeedbackURL = {
            type = "string",
        },
        UserSettings = {
            type = "list",
            member_type = "structure",
        },
        ApplicationSettings = {
            type = "structure",
        },
        Tags = {
            type = "map",
            key_type = "string",
            value_type = "string",
        },
        AccessEndpoints = {
            type = "list",
            member_type = "structure",
        },
        EmbedHostDomains = {
            type = "list",
            member_type = "string",
        },
        StreamingExperienceSettings = {
            type = "structure",
        },
        ContentRedirection = {
            type = "structure",
        },
        AgentAccessConfig = {
            type = "structure",
        },
    },
}

M.StackErrorCode = {
    STORAGE_CONNECTOR_ERROR = "STORAGE_CONNECTOR_ERROR",
    INTERNAL_SERVICE_ERROR = "INTERNAL_SERVICE_ERROR",
}

M.StackError = {
    type = "structure",
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
            member_type = "structure",
        },
        RedirectURL = {
            type = "string",
        },
        FeedbackURL = {
            type = "string",
        },
        StackErrors = {
            type = "list",
            member_type = "structure",
        },
        UserSettings = {
            type = "list",
            member_type = "structure",
        },
        ApplicationSettings = {
            type = "structure",
        },
        AccessEndpoints = {
            type = "list",
            member_type = "structure",
        },
        EmbedHostDomains = {
            type = "list",
            member_type = "string",
        },
        StreamingExperienceSettings = {
            type = "structure",
        },
        ContentRedirection = {
            type = "structure",
        },
        AgentAccessConfig = {
            type = "structure",
        },
    },
}

M.CreateStackOutput = {
    type = "structure",
    members = {
        Stack = {
            type = "structure",
        },
    },
}

M.CreateStreamingURLInput = {
    type = "structure",
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
            type = "number",
        },
        SessionContext = {
            type = "string",
        },
    },
}

M.CreateStreamingURLOutput = {
    type = "structure",
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
    members = {
        StackName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        FooterLinks = {
            type = "list",
            member_type = "structure",
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
        OrganizationLogoS3Location = {
            type = "structure",
            traits = {
                required = true,
            },
        },
        FaviconS3Location = {
            type = "structure",
            traits = {
                required = true,
            },
        },
    },
}

M.ThemeState = {
    ENABLED = "ENABLED",
    DISABLED = "DISABLED",
}

M.Theme = {
    type = "structure",
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
            member_type = "structure",
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
    members = {
        Theme = {
            type = "structure",
        },
    },
}

M.CreateUpdatedImageInput = {
    type = "structure",
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
            key_type = "string",
            value_type = "string",
        },
        dryRun = {
            type = "boolean",
        },
    },
}

M.CreateUpdatedImageOutput = {
    type = "structure",
    members = {
        image = {
            type = "structure",
        },
        canUpdateImage = {
            type = "boolean",
        },
    },
}

M.CreateUsageReportSubscriptionInput = {
    type = "structure",
}

M.UsageReportSchedule = {
    DAILY = "DAILY",
}

M.CreateUsageReportSubscriptionOutput = {
    type = "structure",
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
}

M.DeleteAppBlockInput = {
    type = "structure",
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
}

M.ResourceInUseException = {
    type = "structure",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.DeleteAppBlockBuilderInput = {
    type = "structure",
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
}

M.DeleteApplicationInput = {
    type = "structure",
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
}

M.DeleteDirectoryConfigInput = {
    type = "structure",
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
}

M.DeleteEntitlementInput = {
    type = "structure",
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
}

M.DeleteFleetInput = {
    type = "structure",
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
}

M.DeleteImageInput = {
    type = "structure",
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
    members = {
        Image = {
            type = "structure",
        },
    },
}

M.DeleteImageBuilderInput = {
    type = "structure",
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
    members = {
        ImageBuilder = {
            type = "structure",
        },
    },
}

M.DeleteImagePermissionsInput = {
    type = "structure",
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
}

M.DeleteStackInput = {
    type = "structure",
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
}

M.DeleteThemeForStackInput = {
    type = "structure",
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
}

M.DeleteUsageReportSubscriptionInput = {
    type = "structure",
}

M.DeleteUsageReportSubscriptionOutput = {
    type = "structure",
}

M.DeleteUserInput = {
    type = "structure",
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
}

M.DescribeAppBlockBuilderAppBlockAssociationsInput = {
    type = "structure",
    members = {
        AppBlockArn = {
            type = "string",
        },
        AppBlockBuilderName = {
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

M.DescribeAppBlockBuilderAppBlockAssociationsOutput = {
    type = "structure",
    members = {
        AppBlockBuilderAppBlockAssociations = {
            type = "list",
            member_type = "structure",
        },
        NextToken = {
            type = "string",
        },
    },
}

M.DescribeAppBlockBuildersInput = {
    type = "structure",
    members = {
        Names = {
            type = "list",
            member_type = "string",
        },
        NextToken = {
            type = "string",
        },
        MaxResults = {
            type = "number",
        },
    },
}

M.DescribeAppBlockBuildersOutput = {
    type = "structure",
    members = {
        AppBlockBuilders = {
            type = "list",
            member_type = "structure",
        },
        NextToken = {
            type = "string",
        },
    },
}

M.DescribeAppBlocksInput = {
    type = "structure",
    members = {
        Arns = {
            type = "list",
            member_type = "string",
        },
        NextToken = {
            type = "string",
        },
        MaxResults = {
            type = "number",
        },
    },
}

M.DescribeAppBlocksOutput = {
    type = "structure",
    members = {
        AppBlocks = {
            type = "list",
            member_type = "structure",
        },
        NextToken = {
            type = "string",
        },
    },
}

M.DescribeApplicationFleetAssociationsInput = {
    type = "structure",
    members = {
        FleetName = {
            type = "string",
        },
        ApplicationArn = {
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

M.DescribeApplicationFleetAssociationsOutput = {
    type = "structure",
    members = {
        ApplicationFleetAssociations = {
            type = "list",
            member_type = "structure",
        },
        NextToken = {
            type = "string",
        },
    },
}

M.DescribeApplicationsInput = {
    type = "structure",
    members = {
        Arns = {
            type = "list",
            member_type = "string",
        },
        NextToken = {
            type = "string",
        },
        MaxResults = {
            type = "number",
        },
    },
}

M.DescribeApplicationsOutput = {
    type = "structure",
    members = {
        Applications = {
            type = "list",
            member_type = "structure",
        },
        NextToken = {
            type = "string",
        },
    },
}

M.DescribeAppLicenseUsageInput = {
    type = "structure",
    members = {
        BillingPeriod = {
            type = "string",
            traits = {
                required = true,
            },
        },
        MaxResults = {
            type = "number",
        },
        NextToken = {
            type = "string",
        },
    },
}

M.DescribeAppLicenseUsageOutput = {
    type = "structure",
    members = {
        AppLicenseUsages = {
            type = "list",
            member_type = "structure",
        },
        NextToken = {
            type = "string",
        },
    },
}

M.DescribeDirectoryConfigsInput = {
    type = "structure",
    members = {
        DirectoryNames = {
            type = "list",
            member_type = "string",
        },
        MaxResults = {
            type = "number",
        },
        NextToken = {
            type = "string",
        },
    },
}

M.DescribeDirectoryConfigsOutput = {
    type = "structure",
    members = {
        DirectoryConfigs = {
            type = "list",
            member_type = "structure",
        },
        NextToken = {
            type = "string",
        },
    },
}

M.DescribeEntitlementsInput = {
    type = "structure",
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
            type = "number",
        },
    },
}

M.DescribeEntitlementsOutput = {
    type = "structure",
    members = {
        Entitlements = {
            type = "list",
            member_type = "structure",
        },
        NextToken = {
            type = "string",
        },
    },
}

M.DescribeFleetsInput = {
    type = "structure",
    members = {
        Names = {
            type = "list",
            member_type = "string",
        },
        NextToken = {
            type = "string",
        },
    },
}

M.DescribeFleetsOutput = {
    type = "structure",
    members = {
        Fleets = {
            type = "list",
            member_type = "structure",
        },
        NextToken = {
            type = "string",
        },
    },
}

M.DescribeImageBuildersInput = {
    type = "structure",
    members = {
        Names = {
            type = "list",
            member_type = "string",
        },
        MaxResults = {
            type = "number",
        },
        NextToken = {
            type = "string",
        },
    },
}

M.DescribeImageBuildersOutput = {
    type = "structure",
    members = {
        ImageBuilders = {
            type = "list",
            member_type = "structure",
        },
        NextToken = {
            type = "string",
        },
    },
}

M.DescribeImagePermissionsInput = {
    type = "structure",
    members = {
        Name = {
            type = "string",
            traits = {
                required = true,
            },
        },
        MaxResults = {
            type = "number",
        },
        SharedAwsAccountIds = {
            type = "list",
            member_type = "string",
        },
        NextToken = {
            type = "string",
        },
    },
}

M.SharedImagePermissions = {
    type = "structure",
    members = {
        sharedAccountId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        imagePermissions = {
            type = "structure",
            traits = {
                required = true,
            },
        },
    },
}

M.DescribeImagePermissionsOutput = {
    type = "structure",
    members = {
        Name = {
            type = "string",
        },
        SharedImagePermissionsList = {
            type = "list",
            member_type = "structure",
        },
        NextToken = {
            type = "string",
        },
    },
}

M.DescribeImagesInput = {
    type = "structure",
    members = {
        Names = {
            type = "list",
            member_type = "string",
        },
        Arns = {
            type = "list",
            member_type = "string",
        },
        Type = {
            type = "string",
        },
        NextToken = {
            type = "string",
        },
        MaxResults = {
            type = "number",
        },
    },
}

M.DescribeImagesOutput = {
    type = "structure",
    members = {
        Images = {
            type = "list",
            member_type = "structure",
        },
        NextToken = {
            type = "string",
        },
    },
}

M.DescribeSessionsInput = {
    type = "structure",
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
            type = "number",
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
        NetworkAccessConfiguration = {
            type = "structure",
        },
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
    members = {
        Sessions = {
            type = "list",
            member_type = "structure",
        },
        NextToken = {
            type = "string",
        },
    },
}

M.DescribeSoftwareAssociationsInput = {
    type = "structure",
    members = {
        AssociatedResource = {
            type = "string",
            traits = {
                required = true,
            },
        },
        MaxResults = {
            type = "number",
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
    members = {
        SoftwareName = {
            type = "string",
        },
        Status = {
            type = "string",
        },
        DeploymentError = {
            type = "list",
            member_type = "structure",
        },
    },
}

M.DescribeSoftwareAssociationsOutput = {
    type = "structure",
    members = {
        AssociatedResource = {
            type = "string",
        },
        SoftwareAssociations = {
            type = "list",
            member_type = "structure",
        },
        NextToken = {
            type = "string",
        },
    },
}

M.DescribeStacksInput = {
    type = "structure",
    members = {
        Names = {
            type = "list",
            member_type = "string",
        },
        NextToken = {
            type = "string",
        },
    },
}

M.DescribeStacksOutput = {
    type = "structure",
    members = {
        Stacks = {
            type = "list",
            member_type = "structure",
        },
        NextToken = {
            type = "string",
        },
    },
}

M.DescribeThemeForStackInput = {
    type = "structure",
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
    members = {
        Theme = {
            type = "structure",
        },
    },
}

M.DescribeUsageReportSubscriptionsInput = {
    type = "structure",
    members = {
        MaxResults = {
            type = "number",
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
            member_type = "structure",
        },
    },
}

M.DescribeUsageReportSubscriptionsOutput = {
    type = "structure",
    members = {
        UsageReportSubscriptions = {
            type = "list",
            member_type = "structure",
        },
        NextToken = {
            type = "string",
        },
    },
}

M.DescribeUsersInput = {
    type = "structure",
    members = {
        AuthenticationType = {
            type = "string",
            traits = {
                required = true,
            },
        },
        MaxResults = {
            type = "number",
        },
        NextToken = {
            type = "string",
        },
    },
}

M.User = {
    type = "structure",
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
    members = {
        Users = {
            type = "list",
            member_type = "structure",
        },
        NextToken = {
            type = "string",
        },
    },
}

M.DescribeUserStackAssociationsInput = {
    type = "structure",
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
            type = "number",
        },
        NextToken = {
            type = "string",
        },
    },
}

M.DescribeUserStackAssociationsOutput = {
    type = "structure",
    members = {
        UserStackAssociations = {
            type = "list",
            member_type = "structure",
        },
        NextToken = {
            type = "string",
        },
    },
}

M.DisableUserInput = {
    type = "structure",
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
}

M.DisassociateAppBlockBuilderAppBlockInput = {
    type = "structure",
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
}

M.DisassociateApplicationFleetInput = {
    type = "structure",
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
}

M.DisassociateApplicationFromEntitlementInput = {
    type = "structure",
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
}

M.DisassociateFleetInput = {
    type = "structure",
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
}

M.DisassociateSoftwareFromImageBuilderInput = {
    type = "structure",
    members = {
        ImageBuilderName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        SoftwareNames = {
            type = "list",
            member_type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.DisassociateSoftwareFromImageBuilderOutput = {
    type = "structure",
}

M.DrainSessionInstanceInput = {
    type = "structure",
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
}

M.EnableUserInput = {
    type = "structure",
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
}

M.EntitledApplication = {
    type = "structure",
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
}

M.Filter = {
    type = "structure",
    members = {
        Name = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Values = {
            type = "list",
            member_type = "string",
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
    members = {
        TaskId = {
            type = "string",
        },
    },
}

M.GetExportImageTaskOutput = {
    type = "structure",
    members = {
        ExportImageTask = {
            type = "structure",
        },
    },
}

M.ListAssociatedFleetsInput = {
    type = "structure",
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
    members = {
        Names = {
            type = "list",
            member_type = "string",
        },
        NextToken = {
            type = "string",
        },
    },
}

M.ListAssociatedStacksInput = {
    type = "structure",
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
    members = {
        Names = {
            type = "list",
            member_type = "string",
        },
        NextToken = {
            type = "string",
        },
    },
}

M.ListEntitledApplicationsInput = {
    type = "structure",
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
            type = "number",
        },
    },
}

M.ListEntitledApplicationsOutput = {
    type = "structure",
    members = {
        EntitledApplications = {
            type = "list",
            member_type = "structure",
        },
        NextToken = {
            type = "string",
        },
    },
}

M.ListExportImageTasksInput = {
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

M.ListExportImageTasksOutput = {
    type = "structure",
    members = {
        ExportImageTasks = {
            type = "list",
            member_type = "structure",
        },
        NextToken = {
            type = "string",
        },
    },
}

M.ListTagsForResourceInput = {
    type = "structure",
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
    members = {
        Tags = {
            type = "map",
            key_type = "string",
            value_type = "string",
        },
    },
}

M.StartAppBlockBuilderInput = {
    type = "structure",
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
    members = {
        AppBlockBuilder = {
            type = "structure",
        },
    },
}

M.StartFleetInput = {
    type = "structure",
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
}

M.StartImageBuilderInput = {
    type = "structure",
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
    members = {
        ImageBuilder = {
            type = "structure",
        },
    },
}

M.StartSoftwareDeploymentToImageBuilderInput = {
    type = "structure",
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
}

M.StopAppBlockBuilderInput = {
    type = "structure",
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
    members = {
        AppBlockBuilder = {
            type = "structure",
        },
    },
}

M.StopFleetInput = {
    type = "structure",
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
}

M.StopImageBuilderInput = {
    type = "structure",
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
    members = {
        ImageBuilder = {
            type = "structure",
        },
    },
}

M.TagResourceInput = {
    type = "structure",
    members = {
        ResourceArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Tags = {
            type = "map",
            key_type = "string",
            value_type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.TagResourceOutput = {
    type = "structure",
}

M.UntagResourceInput = {
    type = "structure",
    members = {
        ResourceArn = {
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

M.UntagResourceOutput = {
    type = "structure",
}

M.UpdateAppBlockBuilderInput = {
    type = "structure",
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
        VpcConfig = {
            type = "structure",
        },
        EnableDefaultInternetAccess = {
            type = "boolean",
        },
        IamRoleArn = {
            type = "string",
        },
        AccessEndpoints = {
            type = "list",
            member_type = "structure",
        },
        AttributesToDelete = {
            type = "list",
            member_type = "string",
        },
        DisableIMDSV1 = {
            type = "boolean",
        },
    },
}

M.UpdateAppBlockBuilderOutput = {
    type = "structure",
    members = {
        AppBlockBuilder = {
            type = "structure",
        },
    },
}

M.UpdateApplicationInput = {
    type = "structure",
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
        IconS3Location = {
            type = "structure",
        },
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
            member_type = "string",
        },
    },
}

M.UpdateApplicationOutput = {
    type = "structure",
    members = {
        Application = {
            type = "structure",
        },
    },
}

M.UpdateDirectoryConfigInput = {
    type = "structure",
    members = {
        DirectoryName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        OrganizationalUnitDistinguishedNames = {
            type = "list",
            member_type = "string",
        },
        ServiceAccountCredentials = {
            type = "structure",
        },
        CertificateBasedAuthProperties = {
            type = "structure",
        },
    },
}

M.UpdateDirectoryConfigOutput = {
    type = "structure",
    members = {
        DirectoryConfig = {
            type = "structure",
        },
    },
}

M.UpdateEntitlementInput = {
    type = "structure",
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
            member_type = "structure",
        },
    },
}

M.UpdateEntitlementOutput = {
    type = "structure",
    members = {
        Entitlement = {
            type = "structure",
        },
    },
}

M.UpdateFleetInput = {
    type = "structure",
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
        ComputeCapacity = {
            type = "structure",
        },
        VpcConfig = {
            type = "structure",
        },
        MaxUserDurationInSeconds = {
            type = "number",
        },
        DisconnectTimeoutInSeconds = {
            type = "number",
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
        DomainJoinInfo = {
            type = "structure",
        },
        IdleDisconnectTimeoutInSeconds = {
            type = "number",
        },
        AttributesToDelete = {
            type = "list",
            member_type = "string",
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
            type = "number",
        },
        UsbDeviceFilterStrings = {
            type = "list",
            member_type = "string",
        },
        SessionScriptS3Location = {
            type = "structure",
        },
        MaxSessionsPerInstance = {
            type = "number",
        },
        RootVolumeConfig = {
            type = "structure",
        },
        DisableIMDSV1 = {
            type = "boolean",
        },
    },
}

M.UpdateFleetOutput = {
    type = "structure",
    members = {
        Fleet = {
            type = "structure",
        },
    },
}

M.UpdateImagePermissionsInput = {
    type = "structure",
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
        ImagePermissions = {
            type = "structure",
            traits = {
                required = true,
            },
        },
    },
}

M.UpdateImagePermissionsOutput = {
    type = "structure",
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
            member_type = "structure",
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
            member_type = "string",
        },
        UserSettings = {
            type = "list",
            member_type = "structure",
        },
        ApplicationSettings = {
            type = "structure",
        },
        AccessEndpoints = {
            type = "list",
            member_type = "structure",
        },
        EmbedHostDomains = {
            type = "list",
            member_type = "string",
        },
        StreamingExperienceSettings = {
            type = "structure",
        },
        ContentRedirection = {
            type = "structure",
        },
        AgentAccessConfig = {
            type = "structure",
        },
    },
}

M.UpdateStackOutput = {
    type = "structure",
    members = {
        Stack = {
            type = "structure",
        },
    },
}

M.ThemeAttribute = {
    FOOTER_LINKS = "FOOTER_LINKS",
}

M.UpdateThemeForStackInput = {
    type = "structure",
    members = {
        StackName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        FooterLinks = {
            type = "list",
            member_type = "structure",
        },
        TitleText = {
            type = "string",
        },
        ThemeStyling = {
            type = "string",
        },
        OrganizationLogoS3Location = {
            type = "structure",
        },
        FaviconS3Location = {
            type = "structure",
        },
        State = {
            type = "string",
        },
        AttributesToDelete = {
            type = "list",
            member_type = "string",
        },
    },
}

M.UpdateThemeForStackOutput = {
    type = "structure",
    members = {
        Theme = {
            type = "structure",
        },
    },
}

return M
