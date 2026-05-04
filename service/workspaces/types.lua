local M = {}

M.AcceptAccountLinkInvitationInput = {
    type = "structure",
    members = {
        LinkId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        ClientToken = {
            type = "string",
        },
    },
}

M.AccountLinkStatusEnum = {
    LINKED = "LINKED",
    LINKING_FAILED = "LINKING_FAILED",
    LINK_NOT_FOUND = "LINK_NOT_FOUND",
    PENDING_ACCEPTANCE_BY_TARGET_ACCOUNT = "PENDING_ACCEPTANCE_BY_TARGET_ACCOUNT",
    REJECTED = "REJECTED",
}

M.AccountLink = {
    type = "structure",
    members = {
        AccountLinkId = {
            type = "string",
        },
        AccountLinkStatus = {
            type = "string",
        },
        SourceAccountId = {
            type = "string",
        },
        TargetAccountId = {
            type = "string",
        },
    },
}

M.AcceptAccountLinkInvitationOutput = {
    type = "structure",
    members = {
        AccountLink = M.AccountLink,
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

M.ConflictException = {
    type = "structure",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.InternalServerException = {
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
        ResourceId = {
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

M.AccessEndpointType = {
    STREAMING_WSP = "STREAMING_WSP",
}

M.AccessEndpoint = {
    type = "structure",
    members = {
        AccessEndpointType = {
            type = "string",
        },
        VpcEndpointId = {
            type = "string",
        },
    },
}

M.InternetFallbackProtocol = {
    PCOIP = "PCOIP",
}

M.AccessEndpointConfig = {
    type = "structure",
    members = {
        AccessEndpoints = {
            type = "list",
            member = M.AccessEndpoint,
            traits = {
                required = true,
            },
        },
        InternetFallbackProtocols = {
            type = "list",
            member = { type = "string" },
        },
    },
}

M.AccessPropertyValue = {
    ALLOW = "ALLOW",
    DENY = "DENY",
}

M.DedicatedTenancySupportResultEnum = {
    ENABLED = "ENABLED",
    DISABLED = "DISABLED",
}

M.DedicatedTenancyModificationStateEnum = {
    PENDING = "PENDING",
    COMPLETED = "COMPLETED",
    FAILED = "FAILED",
}

M.AccountModification = {
    type = "structure",
    members = {
        ModificationState = {
            type = "string",
        },
        DedicatedTenancySupport = {
            type = "string",
        },
        DedicatedTenancyManagementCidrRange = {
            type = "string",
        },
        StartTime = {
            type = "timestamp",
        },
        ErrorCode = {
            type = "string",
        },
        ErrorMessage = {
            type = "string",
        },
    },
}

M.ActiveDirectoryConfig = {
    type = "structure",
    members = {
        DomainName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        ServiceAccountSecretArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.AGAModeForDirectoryEnum = {
    ENABLED_AUTO = "ENABLED_AUTO",
    DISABLED = "DISABLED",
}

M.AGAModeForWorkSpaceEnum = {
    ENABLED_AUTO = "ENABLED_AUTO",
    DISABLED = "DISABLED",
    INHERITED = "INHERITED",
}

M.AGAPreferredProtocolForDirectory = {
    TCP = "TCP",
    NONE = "NONE",
}

M.AGAPreferredProtocolForWorkSpace = {
    TCP = "TCP",
    NONE = "NONE",
    INHERITED = "INHERITED",
}

M.Application = {
    Microsoft_Office_2016 = "Microsoft_Office_2016",
    Microsoft_Office_2019 = "Microsoft_Office_2019",
}

M.ApplicationAssociatedResourceType = {
    WORKSPACE = "WORKSPACE",
    BUNDLE = "BUNDLE",
    IMAGE = "IMAGE",
}

M.ApplicationNotSupportedException = {
    type = "structure",
    error = "client",
}

M.AssociationState = {
    PENDING_INSTALL = "PENDING_INSTALL",
    PENDING_INSTALL_DEPLOYMENT = "PENDING_INSTALL_DEPLOYMENT",
    PENDING_UNINSTALL = "PENDING_UNINSTALL",
    PENDING_UNINSTALL_DEPLOYMENT = "PENDING_UNINSTALL_DEPLOYMENT",
    INSTALLING = "INSTALLING",
    UNINSTALLING = "UNINSTALLING",
    ERROR = "ERROR",
    COMPLETED = "COMPLETED",
    REMOVED = "REMOVED",
}

M.AssociationErrorCode = {
    INSUFFICIENT_DISKSPACE = "ValidationError.InsufficientDiskSpace",
    INSUFFICIENT_MEMORY = "ValidationError.InsufficientMemory",
    UNSUPPORTED_OPERATING_SYSTEM = "ValidationError.UnsupportedOperatingSystem",
    INTERNAL_SERVER_ERROR = "DeploymentError.InternalServerError",
    WORKSPACE_UNREACHABLE = "DeploymentError.WorkspaceUnreachable",
    APPLICATION_OLDVERSIONEXIST_FAILURE = "ValidationError.ApplicationOldVersionExists",
}

M.AssociationStateReason = {
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

M.ApplicationResourceAssociation = {
    type = "structure",
    members = {
        ApplicationId = {
            type = "string",
        },
        AssociatedResourceId = {
            type = "string",
        },
        AssociatedResourceType = {
            type = "string",
        },
        Created = {
            type = "timestamp",
        },
        LastUpdatedTime = {
            type = "timestamp",
        },
        State = {
            type = "string",
        },
        StateReason = M.AssociationStateReason,
    },
}

M.ApplicationSettingsStatusEnum = {
    DISABLED = "DISABLED",
    ENABLED = "ENABLED",
}

M.ApplicationSettingsRequest = {
    type = "structure",
    members = {
        Status = {
            type = "string",
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
        Status = {
            type = "string",
            traits = {
                required = true,
            },
        },
        SettingsGroup = {
            type = "string",
        },
        S3BucketName = {
            type = "string",
        },
    },
}

M.AssociateConnectionAliasInput = {
    type = "structure",
    members = {
        AliasId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        ResourceId = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.AssociateConnectionAliasOutput = {
    type = "structure",
    members = {
        ConnectionIdentifier = {
            type = "string",
        },
    },
}

M.InvalidParameterValuesException = {
    type = "structure",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.InvalidResourceStateException = {
    type = "structure",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.OperationNotSupportedException = {
    type = "structure",
    error = "client",
    members = {
        message = {
            type = "string",
        },
        reason = {
            type = "string",
        },
    },
}

M.ResourceAssociatedException = {
    type = "structure",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.AssociateIpGroupsInput = {
    type = "structure",
    members = {
        DirectoryId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        GroupIds = {
            type = "list",
            member = { type = "string" },
            traits = {
                required = true,
            },
        },
    },
}

M.AssociateIpGroupsOutput = {
    type = "structure",
}

M.ResourceLimitExceededException = {
    type = "structure",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.AssociateWorkspaceApplicationInput = {
    type = "structure",
    members = {
        WorkspaceId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        ApplicationId = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.WorkSpaceAssociatedResourceType = {
    APPLICATION = "APPLICATION",
}

M.WorkspaceResourceAssociation = {
    type = "structure",
    members = {
        AssociatedResourceId = {
            type = "string",
        },
        AssociatedResourceType = {
            type = "string",
        },
        Created = {
            type = "timestamp",
        },
        LastUpdatedTime = {
            type = "timestamp",
        },
        State = {
            type = "string",
        },
        StateReason = M.AssociationStateReason,
        WorkspaceId = {
            type = "string",
        },
    },
}

M.AssociateWorkspaceApplicationOutput = {
    type = "structure",
    members = {
        Association = M.WorkspaceResourceAssociation,
    },
}

M.ComputeNotCompatibleException = {
    type = "structure",
    error = "client",
}

M.IncompatibleApplicationsException = {
    type = "structure",
    error = "client",
}

M.OperatingSystemNotCompatibleException = {
    type = "structure",
    error = "client",
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

M.ResourceInUseException = {
    type = "structure",
    error = "client",
    members = {
        message = {
            type = "string",
        },
        ResourceId = {
            type = "string",
        },
    },
}

M.AssociationStatus = {
    NOT_ASSOCIATED = "NOT_ASSOCIATED",
    ASSOCIATED_WITH_OWNER_ACCOUNT = "ASSOCIATED_WITH_OWNER_ACCOUNT",
    ASSOCIATED_WITH_SHARED_ACCOUNT = "ASSOCIATED_WITH_SHARED_ACCOUNT",
    PENDING_ASSOCIATION = "PENDING_ASSOCIATION",
    PENDING_DISASSOCIATION = "PENDING_DISASSOCIATION",
}

M.AuthenticationType = {
    SAML = "SAML",
}

M.IpRuleItem = {
    type = "structure",
    members = {
        ipRule = {
            type = "string",
        },
        ruleDesc = {
            type = "string",
        },
    },
}

M.AuthorizeIpRulesInput = {
    type = "structure",
    members = {
        GroupId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        UserRules = {
            type = "list",
            member = M.IpRuleItem,
            traits = {
                required = true,
            },
        },
    },
}

M.AuthorizeIpRulesOutput = {
    type = "structure",
}

M.BundleAssociatedResourceType = {
    APPLICATION = "APPLICATION",
}

M.BundleType = {
    REGULAR = "REGULAR",
    STANDBY = "STANDBY",
}

M.Compute = {
    VALUE = "VALUE",
    STANDARD = "STANDARD",
    PERFORMANCE = "PERFORMANCE",
    POWER = "POWER",
    GRAPHICS = "GRAPHICS",
    POWERPRO = "POWERPRO",
    GENERALPURPOSE_4XLARGE = "GENERALPURPOSE_4XLARGE",
    GENERALPURPOSE_8XLARGE = "GENERALPURPOSE_8XLARGE",
    GRAPHICSPRO = "GRAPHICSPRO",
    GRAPHICS_G4DN = "GRAPHICS_G4DN",
    GRAPHICSPRO_G4DN = "GRAPHICSPRO_G4DN",
    GRAPHICS_G6_XLARGE = "GRAPHICS_G6_XLARGE",
    GRAPHICS_G6_2XLARGE = "GRAPHICS_G6_2XLARGE",
    GRAPHICS_G6_4XLARGE = "GRAPHICS_G6_4XLARGE",
    GRAPHICS_G6_8XLARGE = "GRAPHICS_G6_8XLARGE",
    GRAPHICS_G6_16XLARGE = "GRAPHICS_G6_16XLARGE",
    GRAPHICS_GR6_4XLARGE = "GRAPHICS_GR6_4XLARGE",
    GRAPHICS_GR6_8XLARGE = "GRAPHICS_GR6_8XLARGE",
    GRAPHICS_G6F_LARGE = "GRAPHICS_G6F_LARGE",
    GRAPHICS_G6F_XLARGE = "GRAPHICS_G6F_XLARGE",
    GRAPHICS_G6F_2XLARGE = "GRAPHICS_G6F_2XLARGE",
    GRAPHICS_G6F_4XLARGE = "GRAPHICS_G6F_4XLARGE",
    GRAPHICS_GR6F_4XLARGE = "GRAPHICS_GR6F_4XLARGE",
}

M.ComputeType = {
    type = "structure",
    members = {
        Name = {
            type = "string",
        },
    },
}

M.RootStorage = {
    type = "structure",
    members = {
        Capacity = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.WorkspaceBundleState = {
    AVAILABLE = "AVAILABLE",
    PENDING = "PENDING",
    ERROR = "ERROR",
}

M.UserStorage = {
    type = "structure",
    members = {
        Capacity = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.WorkspaceBundle = {
    type = "structure",
    members = {
        BundleId = {
            type = "string",
        },
        Name = {
            type = "string",
        },
        Owner = {
            type = "string",
        },
        Description = {
            type = "string",
        },
        ImageId = {
            type = "string",
        },
        RootStorage = M.RootStorage,
        UserStorage = M.UserStorage,
        ComputeType = M.ComputeType,
        LastUpdatedTime = {
            type = "timestamp",
        },
        CreationTime = {
            type = "timestamp",
        },
        State = {
            type = "string",
        },
        BundleType = {
            type = "string",
        },
    },
}

M.BundleResourceAssociation = {
    type = "structure",
    members = {
        AssociatedResourceId = {
            type = "string",
        },
        AssociatedResourceType = {
            type = "string",
        },
        BundleId = {
            type = "string",
        },
        Created = {
            type = "timestamp",
        },
        LastUpdatedTime = {
            type = "timestamp",
        },
        State = {
            type = "string",
        },
        StateReason = M.AssociationStateReason,
    },
}

M.Capacity = {
    type = "structure",
    members = {
        DesiredUserSessions = {
            type = "integer",
            traits = {
                required = true,
            },
        },
    },
}

M.CapacityStatus = {
    type = "structure",
    members = {
        AvailableUserSessions = {
            type = "integer",
            traits = {
                required = true,
            },
        },
        DesiredUserSessions = {
            type = "integer",
            traits = {
                required = true,
            },
        },
        ActualUserSessions = {
            type = "integer",
            traits = {
                required = true,
            },
        },
        ActiveUserSessions = {
            type = "integer",
            traits = {
                required = true,
            },
        },
    },
}

M.CertificateBasedAuthStatusEnum = {
    DISABLED = "DISABLED",
    ENABLED = "ENABLED",
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

M.ClientDeviceType = {
    DEVICE_TYPE_WINDOWS = "DeviceTypeWindows",
    DEVICE_TYPE_OSX = "DeviceTypeOsx",
    DEVICE_TYPE_ANDROID = "DeviceTypeAndroid",
    DEVICE_TYPE_IOS = "DeviceTypeIos",
    DEVICE_TYPE_LINUX = "DeviceTypeLinux",
    DEVICE_TYPE_WEB = "DeviceTypeWeb",
}

M.LogUploadEnum = {
    ENABLED = "ENABLED",
    DISABLED = "DISABLED",
}

M.ReconnectEnum = {
    ENABLED = "ENABLED",
    DISABLED = "DISABLED",
}

M.ClientProperties = {
    type = "structure",
    members = {
        ReconnectEnabled = {
            type = "string",
        },
        LogUploadEnabled = {
            type = "string",
        },
    },
}

M.ClientPropertiesResult = {
    type = "structure",
    members = {
        ResourceId = {
            type = "string",
        },
        ClientProperties = M.ClientProperties,
    },
}

M.ConnectClientAddIn = {
    type = "structure",
    members = {
        AddInId = {
            type = "string",
        },
        ResourceId = {
            type = "string",
        },
        Name = {
            type = "string",
        },
        URL = {
            type = "string",
        },
    },
}

M.ConnectionAliasAssociation = {
    type = "structure",
    members = {
        AssociationStatus = {
            type = "string",
        },
        AssociatedAccountId = {
            type = "string",
        },
        ResourceId = {
            type = "string",
        },
        ConnectionIdentifier = {
            type = "string",
        },
    },
}

M.ConnectionAliasState = {
    CREATING = "CREATING",
    CREATED = "CREATED",
    DELETING = "DELETING",
}

M.ConnectionAlias = {
    type = "structure",
    members = {
        ConnectionString = {
            type = "string",
        },
        AliasId = {
            type = "string",
        },
        State = {
            type = "string",
        },
        OwnerAccountId = {
            type = "string",
        },
        Associations = {
            type = "list",
            member = M.ConnectionAliasAssociation,
        },
    },
}

M.ConnectionAliasPermission = {
    type = "structure",
    members = {
        SharedAccountId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        AllowAssociation = {
            type = "boolean",
            traits = {
                required = true,
            },
        },
    },
}

M.ConnectionState = {
    CONNECTED = "CONNECTED",
    DISCONNECTED = "DISCONNECTED",
    UNKNOWN = "UNKNOWN",
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
        },
    },
}

M.CopyWorkspaceImageInput = {
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
        SourceImageId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        SourceRegion = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Tags = {
            type = "list",
            member = M.Tag,
        },
    },
}

M.CopyWorkspaceImageOutput = {
    type = "structure",
    members = {
        ImageId = {
            type = "string",
        },
    },
}

M.ResourceUnavailableException = {
    type = "structure",
    error = "client",
    members = {
        message = {
            type = "string",
        },
        ResourceId = {
            type = "string",
        },
    },
}

M.CreateAccountLinkInvitationInput = {
    type = "structure",
    members = {
        TargetAccountId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        ClientToken = {
            type = "string",
        },
    },
}

M.CreateAccountLinkInvitationOutput = {
    type = "structure",
    members = {
        AccountLink = M.AccountLink,
    },
}

M.CreateConnectClientAddInInput = {
    type = "structure",
    members = {
        ResourceId = {
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
        URL = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.CreateConnectClientAddInOutput = {
    type = "structure",
    members = {
        AddInId = {
            type = "string",
        },
    },
}

M.ResourceCreationFailedException = {
    type = "structure",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.CreateConnectionAliasInput = {
    type = "structure",
    members = {
        ConnectionString = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Tags = {
            type = "list",
            member = M.Tag,
        },
    },
}

M.CreateConnectionAliasOutput = {
    type = "structure",
    members = {
        AliasId = {
            type = "string",
        },
    },
}

M.CreateIpGroupInput = {
    type = "structure",
    members = {
        GroupName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        GroupDesc = {
            type = "string",
        },
        UserRules = {
            type = "list",
            member = M.IpRuleItem,
        },
        Tags = {
            type = "list",
            member = M.Tag,
        },
    },
}

M.CreateIpGroupOutput = {
    type = "structure",
    members = {
        GroupId = {
            type = "string",
        },
    },
}

M.DataReplication = {
    NO_REPLICATION = "NO_REPLICATION",
    PRIMARY_AS_SOURCE = "PRIMARY_AS_SOURCE",
}

M.StandbyWorkspace = {
    type = "structure",
    members = {
        PrimaryWorkspaceId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        VolumeEncryptionKey = {
            type = "string",
        },
        DirectoryId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Tags = {
            type = "list",
            member = M.Tag,
        },
        DataReplication = {
            type = "string",
        },
    },
}

M.CreateStandbyWorkspacesInput = {
    type = "structure",
    members = {
        PrimaryRegion = {
            type = "string",
            traits = {
                required = true,
            },
        },
        StandbyWorkspaces = {
            type = "list",
            member = M.StandbyWorkspace,
            traits = {
                required = true,
            },
        },
    },
}

M.FailedCreateStandbyWorkspacesRequest = {
    type = "structure",
    members = {
        StandbyWorkspaceRequest = M.StandbyWorkspace,
        ErrorCode = {
            type = "string",
        },
        ErrorMessage = {
            type = "string",
        },
    },
}

M.WorkspaceState = {
    PENDING = "PENDING",
    AVAILABLE = "AVAILABLE",
    IMPAIRED = "IMPAIRED",
    UNHEALTHY = "UNHEALTHY",
    REBOOTING = "REBOOTING",
    STARTING = "STARTING",
    REBUILDING = "REBUILDING",
    RESTORING = "RESTORING",
    MAINTENANCE = "MAINTENANCE",
    ADMIN_MAINTENANCE = "ADMIN_MAINTENANCE",
    TERMINATING = "TERMINATING",
    TERMINATED = "TERMINATED",
    SUSPENDED = "SUSPENDED",
    UPDATING = "UPDATING",
    STOPPING = "STOPPING",
    STOPPED = "STOPPED",
    ERROR = "ERROR",
}

M.PendingCreateStandbyWorkspacesRequest = {
    type = "structure",
    members = {
        UserName = {
            type = "string",
        },
        DirectoryId = {
            type = "string",
        },
        State = {
            type = "string",
        },
        WorkspaceId = {
            type = "string",
        },
    },
}

M.CreateStandbyWorkspacesOutput = {
    type = "structure",
    members = {
        FailedStandbyRequests = {
            type = "list",
            member = M.FailedCreateStandbyWorkspacesRequest,
        },
        PendingStandbyRequests = {
            type = "list",
            member = M.PendingCreateStandbyWorkspacesRequest,
        },
    },
}

M.CreateTagsInput = {
    type = "structure",
    members = {
        ResourceId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Tags = {
            type = "list",
            member = M.Tag,
            traits = {
                required = true,
            },
        },
    },
}

M.CreateTagsOutput = {
    type = "structure",
}

M.CreateUpdatedWorkspaceImageInput = {
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
            traits = {
                required = true,
            },
        },
        SourceImageId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Tags = {
            type = "list",
            member = M.Tag,
        },
    },
}

M.CreateUpdatedWorkspaceImageOutput = {
    type = "structure",
    members = {
        ImageId = {
            type = "string",
        },
    },
}

M.CreateWorkspaceBundleInput = {
    type = "structure",
    members = {
        BundleName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        BundleDescription = {
            type = "string",
            traits = {
                required = true,
            },
        },
        ImageId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        ComputeType = setmetatable({ traits = {
            required = true,
        } }, { __index = M.ComputeType }),
        UserStorage = setmetatable({ traits = {
            required = true,
        } }, { __index = M.UserStorage }),
        RootStorage = M.RootStorage,
        Tags = {
            type = "list",
            member = M.Tag,
        },
    },
}

M.CreateWorkspaceBundleOutput = {
    type = "structure",
    members = {
        WorkspaceBundle = M.WorkspaceBundle,
    },
}

M.CreateWorkspaceImageInput = {
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
            traits = {
                required = true,
            },
        },
        WorkspaceId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Tags = {
            type = "list",
            member = M.Tag,
        },
    },
}

M.OperatingSystemType = {
    WINDOWS = "WINDOWS",
    LINUX = "LINUX",
}

M.OperatingSystem = {
    type = "structure",
    members = {
        Type = {
            type = "string",
        },
    },
}

M.WorkspaceImageRequiredTenancy = {
    DEFAULT = "DEFAULT",
    DEDICATED = "DEDICATED",
}

M.WorkspaceImageState = {
    AVAILABLE = "AVAILABLE",
    PENDING = "PENDING",
    ERROR = "ERROR",
}

M.CreateWorkspaceImageOutput = {
    type = "structure",
    members = {
        ImageId = {
            type = "string",
        },
        Name = {
            type = "string",
        },
        Description = {
            type = "string",
        },
        OperatingSystem = M.OperatingSystem,
        State = {
            type = "string",
        },
        RequiredTenancy = {
            type = "string",
        },
        Created = {
            type = "timestamp",
        },
        OwnerAccountId = {
            type = "string",
        },
    },
}

M.GlobalAcceleratorForWorkSpace = {
    type = "structure",
    members = {
        Mode = {
            type = "string",
            traits = {
                required = true,
            },
        },
        PreferredProtocol = {
            type = "string",
        },
    },
}

M.OperatingSystemName = {
    AMAZON_LINUX_2 = "AMAZON_LINUX_2",
    UBUNTU_18_04 = "UBUNTU_18_04",
    UBUNTU_20_04 = "UBUNTU_20_04",
    UBUNTU_22_04 = "UBUNTU_22_04",
    UNKNOWN = "UNKNOWN",
    WINDOWS_10 = "WINDOWS_10",
    WINDOWS_11 = "WINDOWS_11",
    WINDOWS_7 = "WINDOWS_7",
    WINDOWS_SERVER_2016 = "WINDOWS_SERVER_2016",
    WINDOWS_SERVER_2019 = "WINDOWS_SERVER_2019",
    WINDOWS_SERVER_2022 = "WINDOWS_SERVER_2022",
    WINDOWS_SERVER_2025 = "WINDOWS_SERVER_2025",
    RHEL_8 = "RHEL_8",
    ROCKY_8 = "ROCKY_8",
}

M.Protocol = {
    PCOIP = "PCOIP",
    WSP = "WSP",
}

M.RunningMode = {
    AUTO_STOP = "AUTO_STOP",
    ALWAYS_ON = "ALWAYS_ON",
    MANUAL = "MANUAL",
}

M.WorkspaceProperties = {
    type = "structure",
    members = {
        RunningMode = {
            type = "string",
        },
        RunningModeAutoStopTimeoutInMinutes = {
            type = "integer",
        },
        RootVolumeSizeGib = {
            type = "integer",
        },
        UserVolumeSizeGib = {
            type = "integer",
        },
        ComputeTypeName = {
            type = "string",
        },
        Protocols = {
            type = "list",
            member = { type = "string" },
        },
        OperatingSystemName = {
            type = "string",
        },
        GlobalAccelerator = M.GlobalAcceleratorForWorkSpace,
    },
}

M.WorkspaceRequest = {
    type = "structure",
    members = {
        DirectoryId = {
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
        BundleId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        VolumeEncryptionKey = {
            type = "string",
        },
        UserVolumeEncryptionEnabled = {
            type = "boolean",
        },
        RootVolumeEncryptionEnabled = {
            type = "boolean",
        },
        WorkspaceProperties = M.WorkspaceProperties,
        Tags = {
            type = "list",
            member = M.Tag,
        },
        WorkspaceName = {
            type = "string",
        },
        Ipv6Address = {
            type = "string",
        },
    },
}

M.CreateWorkspacesInput = {
    type = "structure",
    members = {
        Workspaces = {
            type = "list",
            member = M.WorkspaceRequest,
            traits = {
                required = true,
            },
        },
    },
}

M.FailedCreateWorkspaceRequest = {
    type = "structure",
    members = {
        WorkspaceRequest = M.WorkspaceRequest,
        ErrorCode = {
            type = "string",
        },
        ErrorMessage = {
            type = "string",
        },
    },
}

M.DataReplicationSettings = {
    type = "structure",
    members = {
        DataReplication = {
            type = "string",
        },
        RecoverySnapshotTime = {
            type = "timestamp",
        },
    },
}

M.ModificationResourceEnum = {
    ROOT_VOLUME = "ROOT_VOLUME",
    USER_VOLUME = "USER_VOLUME",
    COMPUTE_TYPE = "COMPUTE_TYPE",
    PROTOCOL = "PROTOCOL",
}

M.ModificationStateEnum = {
    UPDATE_INITIATED = "UPDATE_INITIATED",
    UPDATE_IN_PROGRESS = "UPDATE_IN_PROGRESS",
    UPDATE_FAILED = "UPDATE_FAILED",
}

M.ModificationState = {
    type = "structure",
    members = {
        Resource = {
            type = "string",
        },
        State = {
            type = "string",
        },
    },
}

M.StandbyWorkspaceRelationshipType = {
    PRIMARY = "PRIMARY",
    STANDBY = "STANDBY",
}

M.RelatedWorkspaceProperties = {
    type = "structure",
    members = {
        WorkspaceId = {
            type = "string",
        },
        Region = {
            type = "string",
        },
        State = {
            type = "string",
        },
        Type = {
            type = "string",
        },
    },
}

M.StandbyWorkspacesProperties = {
    type = "structure",
    members = {
        StandbyWorkspaceId = {
            type = "string",
        },
        DataReplication = {
            type = "string",
        },
        RecoverySnapshotTime = {
            type = "timestamp",
        },
    },
}

M.Workspace = {
    type = "structure",
    members = {
        WorkspaceId = {
            type = "string",
        },
        DirectoryId = {
            type = "string",
        },
        UserName = {
            type = "string",
        },
        IpAddress = {
            type = "string",
        },
        Ipv6Address = {
            type = "string",
        },
        State = {
            type = "string",
        },
        BundleId = {
            type = "string",
        },
        SubnetId = {
            type = "string",
        },
        ErrorMessage = {
            type = "string",
        },
        ErrorCode = {
            type = "string",
        },
        ComputerName = {
            type = "string",
        },
        VolumeEncryptionKey = {
            type = "string",
        },
        UserVolumeEncryptionEnabled = {
            type = "boolean",
        },
        RootVolumeEncryptionEnabled = {
            type = "boolean",
        },
        WorkspaceName = {
            type = "string",
        },
        WorkspaceProperties = M.WorkspaceProperties,
        ModificationStates = {
            type = "list",
            member = M.ModificationState,
        },
        RelatedWorkspaces = {
            type = "list",
            member = M.RelatedWorkspaceProperties,
        },
        DataReplicationSettings = M.DataReplicationSettings,
        StandbyWorkspacesProperties = {
            type = "list",
            member = M.StandbyWorkspacesProperties,
        },
    },
}

M.CreateWorkspacesOutput = {
    type = "structure",
    members = {
        FailedRequests = {
            type = "list",
            member = M.FailedCreateWorkspaceRequest,
        },
        PendingRequests = {
            type = "list",
            member = M.Workspace,
        },
    },
}

M.PoolsRunningMode = {
    AUTO_STOP = "AUTO_STOP",
    ALWAYS_ON = "ALWAYS_ON",
}

M.TimeoutSettings = {
    type = "structure",
    members = {
        DisconnectTimeoutInSeconds = {
            type = "integer",
        },
        IdleDisconnectTimeoutInSeconds = {
            type = "integer",
        },
        MaxUserDurationInSeconds = {
            type = "integer",
        },
    },
}

M.CreateWorkspacesPoolInput = {
    type = "structure",
    members = {
        PoolName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Description = {
            type = "string",
            traits = {
                required = true,
            },
        },
        BundleId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        DirectoryId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Capacity = setmetatable({ traits = {
            required = true,
        } }, { __index = M.Capacity }),
        Tags = {
            type = "list",
            member = M.Tag,
        },
        ApplicationSettings = M.ApplicationSettingsRequest,
        TimeoutSettings = M.TimeoutSettings,
        RunningMode = {
            type = "string",
        },
    },
}

M.WorkspacesPoolErrorCode = {
    IAM_SERVICE_ROLE_IS_MISSING = "IAM_SERVICE_ROLE_IS_MISSING",
    IAM_SERVICE_ROLE_MISSING_ENI_DESCRIBE_ACTION = "IAM_SERVICE_ROLE_MISSING_ENI_DESCRIBE_ACTION",
    IAM_SERVICE_ROLE_MISSING_ENI_CREATE_ACTION = "IAM_SERVICE_ROLE_MISSING_ENI_CREATE_ACTION",
    IAM_SERVICE_ROLE_MISSING_ENI_DELETE_ACTION = "IAM_SERVICE_ROLE_MISSING_ENI_DELETE_ACTION",
    NETWORK_INTERFACE_LIMIT_EXCEEDED = "NETWORK_INTERFACE_LIMIT_EXCEEDED",
    INTERNAL_SERVICE_ERROR = "INTERNAL_SERVICE_ERROR",
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
    WORKSPACES_POOL_STOPPED = "WORKSPACES_POOL_STOPPED",
    WORKSPACES_POOL_INSTANCE_PROVISIONING_FAILURE = "WORKSPACES_POOL_INSTANCE_PROVISIONING_FAILURE",
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
    DOMAIN_JOIN_ERROR_SECRET_ACTION_PERMISSION_IS_MISSING = "DOMAIN_JOIN_ERROR_SECRET_ACTION_PERMISSION_IS_MISSING",
    DOMAIN_JOIN_ERROR_SECRET_DECRYPTION_FAILURE = "DOMAIN_JOIN_ERROR_SECRET_DECRYPTION_FAILURE",
    DOMAIN_JOIN_ERROR_SECRET_STATE_INVALID = "DOMAIN_JOIN_ERROR_SECRET_STATE_INVALID",
    DOMAIN_JOIN_ERROR_SECRET_NOT_FOUND = "DOMAIN_JOIN_ERROR_SECRET_NOT_FOUND",
    DOMAIN_JOIN_ERROR_SECRET_VALUE_KEY_NOT_FOUND = "DOMAIN_JOIN_ERROR_SECRET_VALUE_KEY_NOT_FOUND",
    DOMAIN_JOIN_ERROR_SECRET_INVALID = "DOMAIN_JOIN_ERROR_SECRET_INVALID",
    BUNDLE_NOT_FOUND = "BUNDLE_NOT_FOUND",
    DIRECTORY_NOT_FOUND = "DIRECTORY_NOT_FOUND",
    INSUFFICIENT_PERMISSIONS_ERROR = "INSUFFICIENT_PERMISSIONS_ERROR",
    DEFAULT_OU_IS_MISSING = "DEFAULT_OU_IS_MISSING",
}

M.WorkspacesPoolError = {
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

M.WorkspacesPoolState = {
    CREATING = "CREATING",
    DELETING = "DELETING",
    RUNNING = "RUNNING",
    STARTING = "STARTING",
    STOPPED = "STOPPED",
    STOPPING = "STOPPING",
    UPDATING = "UPDATING",
}

M.WorkspacesPool = {
    type = "structure",
    members = {
        PoolId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        PoolArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        CapacityStatus = setmetatable({ traits = {
            required = true,
        } }, { __index = M.CapacityStatus }),
        PoolName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Description = {
            type = "string",
        },
        State = {
            type = "string",
            traits = {
                required = true,
            },
        },
        CreatedAt = {
            type = "timestamp",
            traits = {
                required = true,
            },
        },
        BundleId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        DirectoryId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Errors = {
            type = "list",
            member = M.WorkspacesPoolError,
        },
        ApplicationSettings = M.ApplicationSettingsResponse,
        TimeoutSettings = M.TimeoutSettings,
        RunningMode = {
            type = "string",
            traits = {
                default = "AUTO_STOP",
                required = true,
            },
        },
    },
}

M.CreateWorkspacesPoolOutput = {
    type = "structure",
    members = {
        WorkspacesPool = M.WorkspacesPool,
    },
}

M.CustomImageProtocol = {
    PCOIP = "PCOIP",
    DCV = "DCV",
    BYOP = "BYOP",
}

M.CustomWorkspaceImageImportErrorDetails = {
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

M.CustomWorkspaceImageImportState = {
    PENDING = "PENDING",
    IN_PROGRESS = "IN_PROGRESS",
    PROCESSING_SOURCE_IMAGE = "PROCESSING_SOURCE_IMAGE",
    IMAGE_TESTING_START = "IMAGE_TESTING_START",
    UPDATING_OPERATING_SYSTEM = "UPDATING_OPERATING_SYSTEM",
    IMAGE_COMPATIBILITY_CHECKING = "IMAGE_COMPATIBILITY_CHECKING",
    IMAGE_TESTING_GENERALIZATION = "IMAGE_TESTING_GENERALIZATION",
    CREATING_TEST_INSTANCE = "CREATING_TEST_INSTANCE",
    INSTALLING_COMPONENTS = "INSTALLING_COMPONENTS",
    GENERALIZING = "GENERALIZING",
    VALIDATING = "VALIDATING",
    PUBLISHING = "PUBLISHING",
    COMPLETED = "COMPLETED",
    ERROR = "ERROR",
}

M.DedicatedTenancyAccountType = {
    SOURCE_ACCOUNT = "SOURCE_ACCOUNT",
    TARGET_ACCOUNT = "TARGET_ACCOUNT",
}

M.DedicatedTenancySupportEnum = {
    ENABLED = "ENABLED",
}

M.DefaultClientBrandingAttributes = {
    type = "structure",
    members = {
        LogoUrl = {
            type = "string",
        },
        SupportEmail = {
            type = "string",
        },
        SupportLink = {
            type = "string",
        },
        ForgotPasswordLink = {
            type = "string",
        },
        LoginMessage = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
    },
}

M.DefaultImportClientBrandingAttributes = {
    type = "structure",
    members = {
        Logo = {
            type = "blob",
        },
        SupportEmail = {
            type = "string",
        },
        SupportLink = {
            type = "string",
        },
        ForgotPasswordLink = {
            type = "string",
        },
        LoginMessage = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
    },
}

M.DefaultWorkspaceCreationProperties = {
    type = "structure",
    members = {
        EnableInternetAccess = {
            type = "boolean",
        },
        DefaultOu = {
            type = "string",
        },
        CustomSecurityGroupId = {
            type = "string",
        },
        UserEnabledAsLocalAdministrator = {
            type = "boolean",
        },
        EnableMaintenanceMode = {
            type = "boolean",
        },
        InstanceIamRoleArn = {
            type = "string",
        },
    },
}

M.DeletableCertificateBasedAuthProperty = {
    CERTIFICATE_BASED_AUTH_PROPERTIES_CERTIFICATE_AUTHORITY_ARN = "CERTIFICATE_BASED_AUTH_PROPERTIES_CERTIFICATE_AUTHORITY_ARN",
}

M.DeletableSamlProperty = {
    SAML_PROPERTIES_USER_ACCESS_URL = "SAML_PROPERTIES_USER_ACCESS_URL",
    SAML_PROPERTIES_RELAY_STATE_PARAMETER_NAME = "SAML_PROPERTIES_RELAY_STATE_PARAMETER_NAME",
}

M.DeleteAccountLinkInvitationInput = {
    type = "structure",
    members = {
        LinkId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        ClientToken = {
            type = "string",
        },
    },
}

M.DeleteAccountLinkInvitationOutput = {
    type = "structure",
    members = {
        AccountLink = M.AccountLink,
    },
}

M.DeleteClientBrandingInput = {
    type = "structure",
    members = {
        ResourceId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Platforms = {
            type = "list",
            member = { type = "string" },
            traits = {
                required = true,
            },
        },
    },
}

M.DeleteClientBrandingOutput = {
    type = "structure",
}

M.DeleteConnectClientAddInInput = {
    type = "structure",
    members = {
        AddInId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        ResourceId = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.DeleteConnectClientAddInOutput = {
    type = "structure",
}

M.DeleteConnectionAliasInput = {
    type = "structure",
    members = {
        AliasId = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.DeleteConnectionAliasOutput = {
    type = "structure",
}

M.DeleteIpGroupInput = {
    type = "structure",
    members = {
        GroupId = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.DeleteIpGroupOutput = {
    type = "structure",
}

M.DeleteTagsInput = {
    type = "structure",
    members = {
        ResourceId = {
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

M.DeleteTagsOutput = {
    type = "structure",
}

M.DeleteWorkspaceBundleInput = {
    type = "structure",
    members = {
        BundleId = {
            type = "string",
        },
    },
}

M.DeleteWorkspaceBundleOutput = {
    type = "structure",
}

M.DeleteWorkspaceImageInput = {
    type = "structure",
    members = {
        ImageId = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.DeleteWorkspaceImageOutput = {
    type = "structure",
}

M.DeployWorkspaceApplicationsInput = {
    type = "structure",
    members = {
        WorkspaceId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Force = {
            type = "boolean",
        },
    },
}

M.WorkSpaceApplicationDeployment = {
    type = "structure",
    members = {
        Associations = {
            type = "list",
            member = M.WorkspaceResourceAssociation,
        },
    },
}

M.DeployWorkspaceApplicationsOutput = {
    type = "structure",
    members = {
        Deployment = M.WorkSpaceApplicationDeployment,
    },
}

M.DeregisterWorkspaceDirectoryInput = {
    type = "structure",
    members = {
        DirectoryId = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.DeregisterWorkspaceDirectoryOutput = {
    type = "structure",
}

M.DescribeAccountInput = {
    type = "structure",
}

M.DescribeAccountOutput = {
    type = "structure",
    members = {
        DedicatedTenancySupport = {
            type = "string",
        },
        DedicatedTenancyManagementCidrRange = {
            type = "string",
        },
        DedicatedTenancyAccountType = {
            type = "string",
        },
        Message = {
            type = "string",
        },
    },
}

M.DescribeAccountModificationsInput = {
    type = "structure",
    members = {
        NextToken = {
            type = "string",
        },
    },
}

M.DescribeAccountModificationsOutput = {
    type = "structure",
    members = {
        AccountModifications = {
            type = "list",
            member = M.AccountModification,
        },
        NextToken = {
            type = "string",
        },
    },
}

M.DescribeApplicationAssociationsInput = {
    type = "structure",
    members = {
        MaxResults = {
            type = "integer",
        },
        NextToken = {
            type = "string",
        },
        ApplicationId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        AssociatedResourceTypes = {
            type = "list",
            member = { type = "string" },
            traits = {
                required = true,
            },
        },
    },
}

M.DescribeApplicationAssociationsOutput = {
    type = "structure",
    members = {
        Associations = {
            type = "list",
            member = M.ApplicationResourceAssociation,
        },
        NextToken = {
            type = "string",
        },
    },
}

M.WorkSpaceApplicationLicenseType = {
    LICENSED = "LICENSED",
    UNLICENSED = "UNLICENSED",
}

M.DescribeApplicationsInput = {
    type = "structure",
    members = {
        ApplicationIds = {
            type = "list",
            member = { type = "string" },
        },
        ComputeTypeNames = {
            type = "list",
            member = { type = "string" },
        },
        LicenseType = {
            type = "string",
        },
        OperatingSystemNames = {
            type = "list",
            member = { type = "string" },
        },
        Owner = {
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

M.WorkSpaceApplicationState = {
    PENDING = "PENDING",
    ERROR = "ERROR",
    AVAILABLE = "AVAILABLE",
    UNINSTALL_ONLY = "UNINSTALL_ONLY",
}

M.WorkSpaceApplication = {
    type = "structure",
    members = {
        ApplicationId = {
            type = "string",
        },
        Created = {
            type = "timestamp",
        },
        Description = {
            type = "string",
        },
        LicenseType = {
            type = "string",
        },
        Name = {
            type = "string",
        },
        Owner = {
            type = "string",
        },
        State = {
            type = "string",
        },
        SupportedComputeTypeNames = {
            type = "list",
            member = { type = "string" },
        },
        SupportedOperatingSystemNames = {
            type = "list",
            member = { type = "string" },
        },
    },
}

M.DescribeApplicationsOutput = {
    type = "structure",
    members = {
        Applications = {
            type = "list",
            member = M.WorkSpaceApplication,
        },
        NextToken = {
            type = "string",
        },
    },
}

M.DescribeBundleAssociationsInput = {
    type = "structure",
    members = {
        BundleId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        AssociatedResourceTypes = {
            type = "list",
            member = { type = "string" },
            traits = {
                required = true,
            },
        },
    },
}

M.DescribeBundleAssociationsOutput = {
    type = "structure",
    members = {
        Associations = {
            type = "list",
            member = M.BundleResourceAssociation,
        },
    },
}

M.DescribeClientBrandingInput = {
    type = "structure",
    members = {
        ResourceId = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.IosClientBrandingAttributes = {
    type = "structure",
    members = {
        LogoUrl = {
            type = "string",
        },
        Logo2xUrl = {
            type = "string",
        },
        Logo3xUrl = {
            type = "string",
        },
        SupportEmail = {
            type = "string",
        },
        SupportLink = {
            type = "string",
        },
        ForgotPasswordLink = {
            type = "string",
        },
        LoginMessage = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
    },
}

M.DescribeClientBrandingOutput = {
    type = "structure",
    members = {
        DeviceTypeWindows = M.DefaultClientBrandingAttributes,
        DeviceTypeOsx = M.DefaultClientBrandingAttributes,
        DeviceTypeAndroid = M.DefaultClientBrandingAttributes,
        DeviceTypeIos = M.IosClientBrandingAttributes,
        DeviceTypeLinux = M.DefaultClientBrandingAttributes,
        DeviceTypeWeb = M.DefaultClientBrandingAttributes,
    },
}

M.DescribeClientPropertiesInput = {
    type = "structure",
    members = {
        ResourceIds = {
            type = "list",
            member = { type = "string" },
            traits = {
                required = true,
            },
        },
    },
}

M.DescribeClientPropertiesOutput = {
    type = "structure",
    members = {
        ClientPropertiesList = {
            type = "list",
            member = M.ClientPropertiesResult,
        },
    },
}

M.DescribeConnectClientAddInsInput = {
    type = "structure",
    members = {
        ResourceId = {
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

M.DescribeConnectClientAddInsOutput = {
    type = "structure",
    members = {
        AddIns = {
            type = "list",
            member = M.ConnectClientAddIn,
        },
        NextToken = {
            type = "string",
        },
    },
}

M.DescribeConnectionAliasesInput = {
    type = "structure",
    members = {
        AliasIds = {
            type = "list",
            member = { type = "string" },
        },
        ResourceId = {
            type = "string",
        },
        Limit = {
            type = "integer",
        },
        NextToken = {
            type = "string",
        },
    },
}

M.DescribeConnectionAliasesOutput = {
    type = "structure",
    members = {
        ConnectionAliases = {
            type = "list",
            member = M.ConnectionAlias,
        },
        NextToken = {
            type = "string",
        },
    },
}

M.DescribeConnectionAliasPermissionsInput = {
    type = "structure",
    members = {
        AliasId = {
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

M.DescribeConnectionAliasPermissionsOutput = {
    type = "structure",
    members = {
        AliasId = {
            type = "string",
        },
        ConnectionAliasPermissions = {
            type = "list",
            member = M.ConnectionAliasPermission,
        },
        NextToken = {
            type = "string",
        },
    },
}

M.DescribeCustomWorkspaceImageImportInput = {
    type = "structure",
    members = {
        ImageId = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.ImageSourceIdentifier = {
    type = "union",
    members = {
        Ec2ImportTaskId = {
            type = "string",
        },
        ImageBuildVersionArn = {
            type = "string",
        },
        Ec2ImageId = {
            type = "string",
        },
    },
}

M.DescribeCustomWorkspaceImageImportOutput = {
    type = "structure",
    members = {
        ImageId = {
            type = "string",
        },
        InfrastructureConfigurationArn = {
            type = "string",
        },
        State = {
            type = "string",
        },
        StateMessage = {
            type = "string",
        },
        ProgressPercentage = {
            type = "integer",
        },
        Created = {
            type = "timestamp",
        },
        LastUpdatedTime = {
            type = "timestamp",
        },
        ImageSource = M.ImageSourceIdentifier,
        ImageBuilderInstanceId = {
            type = "string",
        },
        ErrorDetails = {
            type = "list",
            member = M.CustomWorkspaceImageImportErrorDetails,
        },
    },
}

M.ImageAssociatedResourceType = {
    APPLICATION = "APPLICATION",
}

M.DescribeImageAssociationsInput = {
    type = "structure",
    members = {
        ImageId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        AssociatedResourceTypes = {
            type = "list",
            member = { type = "string" },
            traits = {
                required = true,
            },
        },
    },
}

M.ImageResourceAssociation = {
    type = "structure",
    members = {
        AssociatedResourceId = {
            type = "string",
        },
        AssociatedResourceType = {
            type = "string",
        },
        Created = {
            type = "timestamp",
        },
        LastUpdatedTime = {
            type = "timestamp",
        },
        ImageId = {
            type = "string",
        },
        State = {
            type = "string",
        },
        StateReason = M.AssociationStateReason,
    },
}

M.DescribeImageAssociationsOutput = {
    type = "structure",
    members = {
        Associations = {
            type = "list",
            member = M.ImageResourceAssociation,
        },
    },
}

M.DescribeIpGroupsInput = {
    type = "structure",
    members = {
        GroupIds = {
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

M.WorkspacesIpGroup = {
    type = "structure",
    members = {
        groupId = {
            type = "string",
        },
        groupName = {
            type = "string",
        },
        groupDesc = {
            type = "string",
        },
        userRules = {
            type = "list",
            member = M.IpRuleItem,
        },
    },
}

M.DescribeIpGroupsOutput = {
    type = "structure",
    members = {
        Result = {
            type = "list",
            member = M.WorkspacesIpGroup,
        },
        NextToken = {
            type = "string",
        },
    },
}

M.DescribeTagsInput = {
    type = "structure",
    members = {
        ResourceId = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.DescribeTagsOutput = {
    type = "structure",
    members = {
        TagList = {
            type = "list",
            member = M.Tag,
        },
    },
}

M.DescribeWorkspaceAssociationsInput = {
    type = "structure",
    members = {
        WorkspaceId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        AssociatedResourceTypes = {
            type = "list",
            member = { type = "string" },
            traits = {
                required = true,
            },
        },
    },
}

M.DescribeWorkspaceAssociationsOutput = {
    type = "structure",
    members = {
        Associations = {
            type = "list",
            member = M.WorkspaceResourceAssociation,
        },
    },
}

M.DescribeWorkspaceBundlesInput = {
    type = "structure",
    members = {
        BundleIds = {
            type = "list",
            member = { type = "string" },
        },
        Owner = {
            type = "string",
        },
        NextToken = {
            type = "string",
        },
    },
}

M.DescribeWorkspaceBundlesOutput = {
    type = "structure",
    members = {
        Bundles = {
            type = "list",
            member = M.WorkspaceBundle,
        },
        NextToken = {
            type = "string",
        },
    },
}

M.DescribeWorkspaceDirectoriesFilterName = {
    USER_IDENTITY_TYPE = "USER_IDENTITY_TYPE",
    WORKSPACE_TYPE = "WORKSPACE_TYPE",
}

M.DescribeWorkspaceDirectoriesFilter = {
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
            member = { type = "string" },
            traits = {
                required = true,
            },
        },
    },
}

M.DescribeWorkspaceDirectoriesInput = {
    type = "structure",
    members = {
        DirectoryIds = {
            type = "list",
            member = { type = "string" },
        },
        WorkspaceDirectoryNames = {
            type = "list",
            member = { type = "string" },
        },
        Limit = {
            type = "integer",
        },
        NextToken = {
            type = "string",
        },
        Filters = {
            type = "list",
            member = M.DescribeWorkspaceDirectoriesFilter,
        },
    },
}

M.WorkspaceDirectoryType = {
    SIMPLE_AD = "SIMPLE_AD",
    AD_CONNECTOR = "AD_CONNECTOR",
    CUSTOMER_MANAGED = "CUSTOMER_MANAGED",
    AWS_IAM_IDENTITY_CENTER = "AWS_IAM_IDENTITY_CENTER",
}

M.EndpointEncryptionMode = {
    STANDARD_TLS = "STANDARD_TLS",
    FIPS_VALIDATED = "FIPS_VALIDATED",
}

M.IDCConfig = {
    type = "structure",
    members = {
        InstanceArn = {
            type = "string",
        },
        ApplicationArn = {
            type = "string",
        },
    },
}

M.MicrosoftEntraConfig = {
    type = "structure",
    members = {
        TenantId = {
            type = "string",
        },
        ApplicationConfigSecretArn = {
            type = "string",
        },
    },
}

M.SamlStatusEnum = {
    DISABLED = "DISABLED",
    ENABLED = "ENABLED",
    ENABLED_WITH_DIRECTORY_LOGIN_FALLBACK = "ENABLED_WITH_DIRECTORY_LOGIN_FALLBACK",
}

M.SamlProperties = {
    type = "structure",
    members = {
        Status = {
            type = "string",
        },
        UserAccessUrl = {
            type = "string",
        },
        RelayStateParameterName = {
            type = "string",
        },
    },
}

M.SelfservicePermissions = {
    type = "structure",
    members = {
        RestartWorkspace = {
            type = "string",
        },
        IncreaseVolumeSize = {
            type = "string",
        },
        ChangeComputeType = {
            type = "string",
        },
        SwitchRunningMode = {
            type = "string",
        },
        RebuildWorkspace = {
            type = "string",
        },
    },
}

M.WorkspaceDirectoryState = {
    REGISTERING = "REGISTERING",
    REGISTERED = "REGISTERED",
    DEREGISTERING = "DEREGISTERING",
    DEREGISTERED = "DEREGISTERED",
    ERROR = "ERROR",
}

M.GlobalAcceleratorForDirectory = {
    type = "structure",
    members = {
        Mode = {
            type = "string",
            traits = {
                required = true,
            },
        },
        PreferredProtocol = {
            type = "string",
        },
    },
}

M.StorageConnectorTypeEnum = {
    HOME_FOLDER = "HOME_FOLDER",
}

M.StorageConnectorStatusEnum = {
    ENABLED = "ENABLED",
    DISABLED = "DISABLED",
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
        Status = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.StreamingExperiencePreferredProtocolEnum = {
    TCP = "TCP",
    UDP = "UDP",
}

M.UserSettingActionEnum = {
    CLIPBOARD_COPY_FROM_LOCAL_DEVICE = "CLIPBOARD_COPY_FROM_LOCAL_DEVICE",
    CLIPBOARD_COPY_TO_LOCAL_DEVICE = "CLIPBOARD_COPY_TO_LOCAL_DEVICE",
    PRINTING_TO_LOCAL_DEVICE = "PRINTING_TO_LOCAL_DEVICE",
    SMART_CARD = "SMART_CARD",
}

M.UserSettingPermissionEnum = {
    ENABLED = "ENABLED",
    DISABLED = "DISABLED",
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
            type = "integer",
        },
    },
}

M.StreamingProperties = {
    type = "structure",
    members = {
        StreamingExperiencePreferredProtocol = {
            type = "string",
        },
        UserSettings = {
            type = "list",
            member = M.UserSetting,
        },
        StorageConnectors = {
            type = "list",
            member = M.StorageConnector,
        },
        GlobalAccelerator = M.GlobalAcceleratorForDirectory,
    },
}

M.Tenancy = {
    DEDICATED = "DEDICATED",
    SHARED = "SHARED",
}

M.UserIdentityType = {
    CUSTOMER_MANAGED = "CUSTOMER_MANAGED",
    AWS_DIRECTORY_SERVICE = "AWS_DIRECTORY_SERVICE",
    AWS_IAM_IDENTITY_CENTER = "AWS_IAM_IDENTITY_CENTER",
}

M.WorkspaceAccessProperties = {
    type = "structure",
    members = {
        DeviceTypeWindows = {
            type = "string",
        },
        DeviceTypeOsx = {
            type = "string",
        },
        DeviceTypeWeb = {
            type = "string",
        },
        DeviceTypeIos = {
            type = "string",
        },
        DeviceTypeAndroid = {
            type = "string",
        },
        DeviceTypeChromeOs = {
            type = "string",
        },
        DeviceTypeZeroClient = {
            type = "string",
        },
        DeviceTypeLinux = {
            type = "string",
        },
        DeviceTypeWorkSpacesThinClient = {
            type = "string",
        },
        AccessEndpointConfig = M.AccessEndpointConfig,
    },
}

M.WorkspaceType = {
    PERSONAL = "PERSONAL",
    POOLS = "POOLS",
}

M.WorkspaceDirectory = {
    type = "structure",
    members = {
        DirectoryId = {
            type = "string",
        },
        Alias = {
            type = "string",
        },
        DirectoryName = {
            type = "string",
        },
        RegistrationCode = {
            type = "string",
        },
        SubnetIds = {
            type = "list",
            member = { type = "string" },
        },
        DnsIpAddresses = {
            type = "list",
            member = { type = "string" },
        },
        DnsIpv6Addresses = {
            type = "list",
            member = { type = "string" },
        },
        CustomerUserName = {
            type = "string",
        },
        IamRoleId = {
            type = "string",
        },
        DirectoryType = {
            type = "string",
        },
        WorkspaceSecurityGroupId = {
            type = "string",
        },
        State = {
            type = "string",
        },
        WorkspaceCreationProperties = M.DefaultWorkspaceCreationProperties,
        ipGroupIds = {
            type = "list",
            member = { type = "string" },
        },
        WorkspaceAccessProperties = M.WorkspaceAccessProperties,
        Tenancy = {
            type = "string",
        },
        SelfservicePermissions = M.SelfservicePermissions,
        SamlProperties = M.SamlProperties,
        CertificateBasedAuthProperties = M.CertificateBasedAuthProperties,
        EndpointEncryptionMode = {
            type = "string",
        },
        MicrosoftEntraConfig = M.MicrosoftEntraConfig,
        WorkspaceDirectoryName = {
            type = "string",
        },
        WorkspaceDirectoryDescription = {
            type = "string",
        },
        UserIdentityType = {
            type = "string",
        },
        WorkspaceType = {
            type = "string",
        },
        IDCConfig = M.IDCConfig,
        ActiveDirectoryConfig = M.ActiveDirectoryConfig,
        StreamingProperties = M.StreamingProperties,
        ErrorMessage = {
            type = "string",
        },
    },
}

M.DescribeWorkspaceDirectoriesOutput = {
    type = "structure",
    members = {
        Directories = {
            type = "list",
            member = M.WorkspaceDirectory,
        },
        NextToken = {
            type = "string",
        },
    },
}

M.DescribeWorkspaceImagePermissionsInput = {
    type = "structure",
    members = {
        ImageId = {
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

M.ImagePermission = {
    type = "structure",
    members = {
        SharedAccountId = {
            type = "string",
        },
    },
}

M.DescribeWorkspaceImagePermissionsOutput = {
    type = "structure",
    members = {
        ImageId = {
            type = "string",
        },
        ImagePermissions = {
            type = "list",
            member = M.ImagePermission,
        },
        NextToken = {
            type = "string",
        },
    },
}

M.ImageType = {
    OWNED = "OWNED",
    SHARED = "SHARED",
}

M.DescribeWorkspaceImagesInput = {
    type = "structure",
    members = {
        ImageIds = {
            type = "list",
            member = { type = "string" },
        },
        ImageType = {
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

M.WorkspaceImageErrorDetailCode = {
    OUTDATED_POWERSHELL_VERSION = "OutdatedPowershellVersion",
    OFFICE_INSTALLED = "OfficeInstalled",
    PCOIP_AGENT_INSTALLED = "PCoIPAgentInstalled",
    WINDOWS_UPDATES_ENABLED = "WindowsUpdatesEnabled",
    AUTO_MOUNT_DISABLED = "AutoMountDisabled",
    WORKSPACES_BYOL_ACCOUNT_NOT_FOUND = "WorkspacesBYOLAccountNotFound",
    WORKSPACES_BYOL_ACCOUNT_DISABLED = "WorkspacesBYOLAccountDisabled",
    DHCP_DISABLED = "DHCPDisabled",
    DISK_FREE_SPACE = "DiskFreeSpace",
    ADDITIONAL_DRIVES_ATTACHED = "AdditionalDrivesAttached",
    OS_NOT_SUPPORTED = "OSNotSupported",
    DOMAIN_JOINED = "DomainJoined",
    AZURE_DOMAIN_JOINED = "AzureDomainJoined",
    FIREWALL_ENABLED = "FirewallEnabled",
    VMWARE_TOOLS_INSTALLED = "VMWareToolsInstalled",
    DISK_SIZE_EXCEEDED = "DiskSizeExceeded",
    INCOMPATIBLE_PARTITIONING = "IncompatiblePartitioning",
    PENDING_REBOOT = "PendingReboot",
    AUTO_LOGON_ENABLED = "AutoLogonEnabled",
    REALTIME_UNIVERSAL_DISABLED = "RealTimeUniversalDisabled",
    MULTIPLE_BOOT_PARTITION = "MultipleBootPartition",
    SIXTY_FOUR_BIT_OS = "Requires64BitOS",
    ZERO_REARM_COUNT = "ZeroRearmCount",
    IN_PLACE_UPGRADE = "InPlaceUpgrade",
    ANTI_VIRUS_INSTALLED = "AntiVirusInstalled",
    UEFI_NOT_SUPPORTED = "UEFINotSupported",
    UNKNOWN_ERROR = "UnknownError",
    APPX_PACKAGES_INSTALLED = "AppXPackagesInstalled",
    RESERVED_STORAGE_IN_USE = "ReservedStorageInUse",
    ADDITIONAL_DRIVES_PRESENT = "AdditionalDrivesPresent",
    WINDOWS_UPDATES_REQUIRED = "WindowsUpdatesRequired",
    SYSPREP_FILE_MISSING = "SysPrepFileMissing",
    USER_PROFILE_MISSING = "UserProfileMissing",
    INSUFFICIENT_DISK_SPACE = "InsufficientDiskSpace",
    ENVIRONMENT_VARIABLES_PATH_MISSING_ENTRIES = "EnvironmentVariablesPathMissingEntries",
    DOMAIN_ACCOUNT_SERVICES_FOUND = "DomainAccountServicesFound",
    INVALID_IP = "InvalidIp",
    REMOTE_DESKTOP_SERVICES_DISABLED = "RemoteDesktopServicesDisabled",
    WINDOWS_MODULES_INSTALLER_DISABLED = "WindowsModulesInstallerDisabled",
    AMAZON_SSM_AGENT_ENABLED = "AmazonSsmAgentEnabled",
    UNSUPPORTED_SECURITY_PROTOCOL = "UnsupportedSecurityProtocol",
    MULTIPLE_USER_PROFILES = "MultipleUserProfiles",
    STAGED_APPX_PACKAGE = "StagedAppxPackage",
    UNSUPPORTED_OS_UPGRADE = "UnsupportedOsUpgrade",
    INSUFFICIENT_REARM_COUNT = "InsufficientRearmCount",
    INCOMPATIBLE_PROTOCOL = "ProtocolOSIncompatibility",
    INCOMPATIBLE_MEMORY_INTEGRITY = "MemoryIntegrityIncompatibility",
    RESTRICTED_DRIVE_LETTER = "RestrictedDriveLetterInUse",
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

M.UpdateResult = {
    type = "structure",
    members = {
        UpdateAvailable = {
            type = "boolean",
        },
        Description = {
            type = "string",
        },
    },
}

M.WorkspaceImage = {
    type = "structure",
    members = {
        ImageId = {
            type = "string",
        },
        Name = {
            type = "string",
        },
        Description = {
            type = "string",
        },
        OperatingSystem = M.OperatingSystem,
        State = {
            type = "string",
        },
        RequiredTenancy = {
            type = "string",
        },
        ErrorCode = {
            type = "string",
        },
        ErrorMessage = {
            type = "string",
        },
        Created = {
            type = "timestamp",
        },
        OwnerAccountId = {
            type = "string",
        },
        Updates = M.UpdateResult,
        ErrorDetails = {
            type = "list",
            member = M.ErrorDetails,
        },
    },
}

M.DescribeWorkspaceImagesOutput = {
    type = "structure",
    members = {
        Images = {
            type = "list",
            member = M.WorkspaceImage,
        },
        NextToken = {
            type = "string",
        },
    },
}

M.DescribeWorkspacesInput = {
    type = "structure",
    members = {
        WorkspaceIds = {
            type = "list",
            member = { type = "string" },
        },
        DirectoryId = {
            type = "string",
        },
        UserName = {
            type = "string",
        },
        BundleId = {
            type = "string",
        },
        Limit = {
            type = "integer",
        },
        NextToken = {
            type = "string",
        },
        WorkspaceName = {
            type = "string",
        },
    },
}

M.DescribeWorkspacesOutput = {
    type = "structure",
    members = {
        Workspaces = {
            type = "list",
            member = M.Workspace,
        },
        NextToken = {
            type = "string",
        },
    },
}

M.DescribeWorkspacesConnectionStatusInput = {
    type = "structure",
    members = {
        WorkspaceIds = {
            type = "list",
            member = { type = "string" },
        },
        NextToken = {
            type = "string",
        },
    },
}

M.WorkspaceConnectionStatus = {
    type = "structure",
    members = {
        WorkspaceId = {
            type = "string",
        },
        ConnectionState = {
            type = "string",
        },
        ConnectionStateCheckTimestamp = {
            type = "timestamp",
        },
        LastKnownUserConnectionTimestamp = {
            type = "timestamp",
        },
    },
}

M.DescribeWorkspacesConnectionStatusOutput = {
    type = "structure",
    members = {
        WorkspacesConnectionStatus = {
            type = "list",
            member = M.WorkspaceConnectionStatus,
        },
        NextToken = {
            type = "string",
        },
    },
}

M.DescribeWorkspaceSnapshotsInput = {
    type = "structure",
    members = {
        WorkspaceId = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.Snapshot = {
    type = "structure",
    members = {
        SnapshotTime = {
            type = "timestamp",
        },
    },
}

M.DescribeWorkspaceSnapshotsOutput = {
    type = "structure",
    members = {
        RebuildSnapshots = {
            type = "list",
            member = M.Snapshot,
        },
        RestoreSnapshots = {
            type = "list",
            member = M.Snapshot,
        },
    },
}

M.DescribeWorkspacesPoolsFilterName = {
    POOLNAME = "PoolName",
}

M.DescribeWorkspacesPoolsFilterOperator = {
    EQUALS = "EQUALS",
    NOTEQUALS = "NOTEQUALS",
    CONTAINS = "CONTAINS",
    NOTCONTAINS = "NOTCONTAINS",
}

M.DescribeWorkspacesPoolsFilter = {
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
            member = { type = "string" },
            traits = {
                required = true,
            },
        },
        Operator = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.DescribeWorkspacesPoolsInput = {
    type = "structure",
    members = {
        PoolIds = {
            type = "list",
            member = { type = "string" },
        },
        Filters = {
            type = "list",
            member = M.DescribeWorkspacesPoolsFilter,
        },
        Limit = {
            type = "integer",
        },
        NextToken = {
            type = "string",
        },
    },
}

M.DescribeWorkspacesPoolsOutput = {
    type = "structure",
    members = {
        WorkspacesPools = {
            type = "list",
            member = M.WorkspacesPool,
        },
        NextToken = {
            type = "string",
        },
    },
}

M.DescribeWorkspacesPoolSessionsInput = {
    type = "structure",
    members = {
        PoolId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        UserId = {
            type = "string",
        },
        Limit = {
            type = "integer",
        },
        NextToken = {
            type = "string",
        },
    },
}

M.SessionConnectionState = {
    CONNECTED = "CONNECTED",
    NOT_CONNECTED = "NOT_CONNECTED",
}

M.NetworkAccessConfiguration = {
    type = "structure",
    members = {
        EniPrivateIpAddress = {
            type = "string",
        },
        EniId = {
            type = "string",
        },
    },
}

M.WorkspacesPoolSession = {
    type = "structure",
    members = {
        AuthenticationType = {
            type = "string",
        },
        ConnectionState = {
            type = "string",
        },
        SessionId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        InstanceId = {
            type = "string",
        },
        PoolId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        ExpirationTime = {
            type = "timestamp",
        },
        NetworkAccessConfiguration = M.NetworkAccessConfiguration,
        StartTime = {
            type = "timestamp",
        },
        UserId = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.DescribeWorkspacesPoolSessionsOutput = {
    type = "structure",
    members = {
        Sessions = {
            type = "list",
            member = M.WorkspacesPoolSession,
        },
        NextToken = {
            type = "string",
        },
    },
}

M.DisassociateConnectionAliasInput = {
    type = "structure",
    members = {
        AliasId = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.DisassociateConnectionAliasOutput = {
    type = "structure",
}

M.DisassociateIpGroupsInput = {
    type = "structure",
    members = {
        DirectoryId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        GroupIds = {
            type = "list",
            member = { type = "string" },
            traits = {
                required = true,
            },
        },
    },
}

M.DisassociateIpGroupsOutput = {
    type = "structure",
}

M.DisassociateWorkspaceApplicationInput = {
    type = "structure",
    members = {
        WorkspaceId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        ApplicationId = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.DisassociateWorkspaceApplicationOutput = {
    type = "structure",
    members = {
        Association = M.WorkspaceResourceAssociation,
    },
}

M.FailedWorkspaceChangeRequest = {
    type = "structure",
    members = {
        WorkspaceId = {
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

M.GetAccountLinkInput = {
    type = "structure",
    members = {
        LinkId = {
            type = "string",
        },
        LinkedAccountId = {
            type = "string",
        },
    },
}

M.GetAccountLinkOutput = {
    type = "structure",
    members = {
        AccountLink = M.AccountLink,
    },
}

M.ImageComputeType = {
    BASE = "BASE",
    GRAPHICS_G4DN = "GRAPHICS_G4DN",
    GRAPHICS_G6 = "GRAPHICS_G6",
}

M.IosImportClientBrandingAttributes = {
    type = "structure",
    members = {
        Logo = {
            type = "blob",
        },
        Logo2x = {
            type = "blob",
        },
        Logo3x = {
            type = "blob",
        },
        SupportEmail = {
            type = "string",
        },
        SupportLink = {
            type = "string",
        },
        ForgotPasswordLink = {
            type = "string",
        },
        LoginMessage = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
    },
}

M.ImportClientBrandingInput = {
    type = "structure",
    members = {
        ResourceId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        DeviceTypeWindows = M.DefaultImportClientBrandingAttributes,
        DeviceTypeOsx = M.DefaultImportClientBrandingAttributes,
        DeviceTypeAndroid = M.DefaultImportClientBrandingAttributes,
        DeviceTypeIos = M.IosImportClientBrandingAttributes,
        DeviceTypeLinux = M.DefaultImportClientBrandingAttributes,
        DeviceTypeWeb = M.DefaultImportClientBrandingAttributes,
    },
}

M.ImportClientBrandingOutput = {
    type = "structure",
    members = {
        DeviceTypeWindows = M.DefaultClientBrandingAttributes,
        DeviceTypeOsx = M.DefaultClientBrandingAttributes,
        DeviceTypeAndroid = M.DefaultClientBrandingAttributes,
        DeviceTypeIos = M.IosClientBrandingAttributes,
        DeviceTypeLinux = M.DefaultClientBrandingAttributes,
        DeviceTypeWeb = M.DefaultClientBrandingAttributes,
    },
}

M.OSVersion = {
    Windows_10 = "Windows_10",
    Windows_11 = "Windows_11",
}

M.Platform = {
    WINDOWS = "WINDOWS",
}

M.ImportCustomWorkspaceImageInput = {
    type = "structure",
    members = {
        ImageName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        ImageDescription = {
            type = "string",
            traits = {
                required = true,
            },
        },
        ComputeType = {
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
        ImageSource = setmetatable({ traits = {
            required = true,
        } }, { __index = M.ImageSourceIdentifier }),
        InfrastructureConfigurationArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Platform = {
            type = "string",
            traits = {
                required = true,
            },
        },
        OsVersion = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Tags = {
            type = "list",
            member = M.Tag,
        },
    },
}

M.ImportCustomWorkspaceImageOutput = {
    type = "structure",
    members = {
        ImageId = {
            type = "string",
        },
        State = {
            type = "string",
        },
    },
}

M.WorkspaceImageIngestionProcess = {
    BYOL_REGULAR = "BYOL_REGULAR",
    BYOL_GRAPHICS = "BYOL_GRAPHICS",
    BYOL_GRAPHICSPRO = "BYOL_GRAPHICSPRO",
    BYOL_GRAPHICS_G4DN = "BYOL_GRAPHICS_G4DN",
    BYOL_REGULAR_WSP = "BYOL_REGULAR_WSP",
    BYOL_GRAPHICS_G4DN_WSP = "BYOL_GRAPHICS_G4DN_WSP",
    BYOL_REGULAR_BYOP = "BYOL_REGULAR_BYOP",
    BYOL_GRAPHICS_G4DN_BYOP = "BYOL_GRAPHICS_G4DN_BYOP",
}

M.ImportWorkspaceImageInput = {
    type = "structure",
    members = {
        Ec2ImageId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        IngestionProcess = {
            type = "string",
            traits = {
                required = true,
            },
        },
        ImageName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        ImageDescription = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Tags = {
            type = "list",
            member = M.Tag,
        },
        Applications = {
            type = "list",
            member = { type = "string" },
        },
    },
}

M.ImportWorkspaceImageOutput = {
    type = "structure",
    members = {
        ImageId = {
            type = "string",
        },
    },
}

M.InvalidParameterCombinationException = {
    type = "structure",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.ListAccountLinksInput = {
    type = "structure",
    members = {
        LinkStatusFilter = {
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

M.ListAccountLinksOutput = {
    type = "structure",
    members = {
        AccountLinks = {
            type = "list",
            member = M.AccountLink,
        },
        NextToken = {
            type = "string",
        },
    },
}

M.ListAvailableManagementCidrRangesInput = {
    type = "structure",
    members = {
        ManagementCidrRangeConstraint = {
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

M.ListAvailableManagementCidrRangesOutput = {
    type = "structure",
    members = {
        ManagementCidrRanges = {
            type = "list",
            member = { type = "string" },
        },
        NextToken = {
            type = "string",
        },
    },
}

M.MigrateWorkspaceInput = {
    type = "structure",
    members = {
        SourceWorkspaceId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        BundleId = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.MigrateWorkspaceOutput = {
    type = "structure",
    members = {
        SourceWorkspaceId = {
            type = "string",
        },
        TargetWorkspaceId = {
            type = "string",
        },
    },
}

M.OperationInProgressException = {
    type = "structure",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.ModifyAccountInput = {
    type = "structure",
    members = {
        DedicatedTenancySupport = {
            type = "string",
        },
        DedicatedTenancyManagementCidrRange = {
            type = "string",
        },
    },
}

M.ModifyAccountOutput = {
    type = "structure",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.ModifyCertificateBasedAuthPropertiesInput = {
    type = "structure",
    members = {
        ResourceId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        CertificateBasedAuthProperties = M.CertificateBasedAuthProperties,
        PropertiesToDelete = {
            type = "list",
            member = { type = "string" },
        },
    },
}

M.ModifyCertificateBasedAuthPropertiesOutput = {
    type = "structure",
}

M.ModifyClientPropertiesInput = {
    type = "structure",
    members = {
        ResourceId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        ClientProperties = setmetatable({ traits = {
            required = true,
        } }, { __index = M.ClientProperties }),
    },
}

M.ModifyClientPropertiesOutput = {
    type = "structure",
}

M.ModifyEndpointEncryptionModeInput = {
    type = "structure",
    members = {
        DirectoryId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        EndpointEncryptionMode = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.ModifyEndpointEncryptionModeOutput = {
    type = "structure",
}

M.ModifySamlPropertiesInput = {
    type = "structure",
    members = {
        ResourceId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        SamlProperties = M.SamlProperties,
        PropertiesToDelete = {
            type = "list",
            member = { type = "string" },
        },
    },
}

M.ModifySamlPropertiesOutput = {
    type = "structure",
}

M.ModifySelfservicePermissionsInput = {
    type = "structure",
    members = {
        ResourceId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        SelfservicePermissions = setmetatable({ traits = {
            required = true,
        } }, { __index = M.SelfservicePermissions }),
    },
}

M.ModifySelfservicePermissionsOutput = {
    type = "structure",
}

M.ModifyStreamingPropertiesInput = {
    type = "structure",
    members = {
        ResourceId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        StreamingProperties = M.StreamingProperties,
    },
}

M.ModifyStreamingPropertiesOutput = {
    type = "structure",
}

M.ModifyWorkspaceAccessPropertiesInput = {
    type = "structure",
    members = {
        ResourceId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        WorkspaceAccessProperties = setmetatable({ traits = {
            required = true,
        } }, { __index = M.WorkspaceAccessProperties }),
    },
}

M.ModifyWorkspaceAccessPropertiesOutput = {
    type = "structure",
}

M.WorkspaceCreationProperties = {
    type = "structure",
    members = {
        EnableInternetAccess = {
            type = "boolean",
        },
        DefaultOu = {
            type = "string",
        },
        CustomSecurityGroupId = {
            type = "string",
        },
        UserEnabledAsLocalAdministrator = {
            type = "boolean",
        },
        EnableMaintenanceMode = {
            type = "boolean",
        },
        InstanceIamRoleArn = {
            type = "string",
        },
    },
}

M.ModifyWorkspaceCreationPropertiesInput = {
    type = "structure",
    members = {
        ResourceId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        WorkspaceCreationProperties = setmetatable({ traits = {
            required = true,
        } }, { __index = M.WorkspaceCreationProperties }),
    },
}

M.ModifyWorkspaceCreationPropertiesOutput = {
    type = "structure",
}

M.ModifyWorkspacePropertiesInput = {
    type = "structure",
    members = {
        WorkspaceId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        WorkspaceProperties = M.WorkspaceProperties,
        DataReplication = {
            type = "string",
        },
    },
}

M.ModifyWorkspacePropertiesOutput = {
    type = "structure",
}

M.UnsupportedWorkspaceConfigurationException = {
    type = "structure",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.TargetWorkspaceState = {
    AVAILABLE = "AVAILABLE",
    ADMIN_MAINTENANCE = "ADMIN_MAINTENANCE",
}

M.ModifyWorkspaceStateInput = {
    type = "structure",
    members = {
        WorkspaceId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        WorkspaceState = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.ModifyWorkspaceStateOutput = {
    type = "structure",
}

M.RebootRequest = {
    type = "structure",
    members = {
        WorkspaceId = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.RebootWorkspacesInput = {
    type = "structure",
    members = {
        RebootWorkspaceRequests = {
            type = "list",
            member = M.RebootRequest,
            traits = {
                required = true,
            },
        },
    },
}

M.RebootWorkspacesOutput = {
    type = "structure",
    members = {
        FailedRequests = {
            type = "list",
            member = M.FailedWorkspaceChangeRequest,
        },
    },
}

M.RebuildRequest = {
    type = "structure",
    members = {
        WorkspaceId = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.RebuildWorkspacesInput = {
    type = "structure",
    members = {
        RebuildWorkspaceRequests = {
            type = "list",
            member = M.RebuildRequest,
            traits = {
                required = true,
            },
        },
    },
}

M.RebuildWorkspacesOutput = {
    type = "structure",
    members = {
        FailedRequests = {
            type = "list",
            member = M.FailedWorkspaceChangeRequest,
        },
    },
}

M.RegisterWorkspaceDirectoryInput = {
    type = "structure",
    members = {
        DirectoryId = {
            type = "string",
        },
        SubnetIds = {
            type = "list",
            member = { type = "string" },
        },
        EnableSelfService = {
            type = "boolean",
        },
        Tenancy = {
            type = "string",
        },
        Tags = {
            type = "list",
            member = M.Tag,
        },
        WorkspaceDirectoryName = {
            type = "string",
        },
        WorkspaceDirectoryDescription = {
            type = "string",
        },
        UserIdentityType = {
            type = "string",
        },
        IdcInstanceArn = {
            type = "string",
        },
        MicrosoftEntraConfig = M.MicrosoftEntraConfig,
        WorkspaceType = {
            type = "string",
        },
        ActiveDirectoryConfig = M.ActiveDirectoryConfig,
    },
}

M.RegisterWorkspaceDirectoryOutput = {
    type = "structure",
    members = {
        DirectoryId = {
            type = "string",
        },
        State = {
            type = "string",
        },
    },
}

M.UnsupportedNetworkConfigurationException = {
    type = "structure",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.WorkspacesDefaultRoleNotFoundException = {
    type = "structure",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.RejectAccountLinkInvitationInput = {
    type = "structure",
    members = {
        LinkId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        ClientToken = {
            type = "string",
        },
    },
}

M.RejectAccountLinkInvitationOutput = {
    type = "structure",
    members = {
        AccountLink = M.AccountLink,
    },
}

M.RestoreWorkspaceInput = {
    type = "structure",
    members = {
        WorkspaceId = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.RestoreWorkspaceOutput = {
    type = "structure",
}

M.RevokeIpRulesInput = {
    type = "structure",
    members = {
        GroupId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        UserRules = {
            type = "list",
            member = { type = "string" },
            traits = {
                required = true,
            },
        },
    },
}

M.RevokeIpRulesOutput = {
    type = "structure",
}

M.StartRequest = {
    type = "structure",
    members = {
        WorkspaceId = {
            type = "string",
        },
    },
}

M.StartWorkspacesInput = {
    type = "structure",
    members = {
        StartWorkspaceRequests = {
            type = "list",
            member = M.StartRequest,
            traits = {
                required = true,
            },
        },
    },
}

M.StartWorkspacesOutput = {
    type = "structure",
    members = {
        FailedRequests = {
            type = "list",
            member = M.FailedWorkspaceChangeRequest,
        },
    },
}

M.StartWorkspacesPoolInput = {
    type = "structure",
    members = {
        PoolId = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.StartWorkspacesPoolOutput = {
    type = "structure",
}

M.StopRequest = {
    type = "structure",
    members = {
        WorkspaceId = {
            type = "string",
        },
    },
}

M.StopWorkspacesInput = {
    type = "structure",
    members = {
        StopWorkspaceRequests = {
            type = "list",
            member = M.StopRequest,
            traits = {
                required = true,
            },
        },
    },
}

M.StopWorkspacesOutput = {
    type = "structure",
    members = {
        FailedRequests = {
            type = "list",
            member = M.FailedWorkspaceChangeRequest,
        },
    },
}

M.StopWorkspacesPoolInput = {
    type = "structure",
    members = {
        PoolId = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.StopWorkspacesPoolOutput = {
    type = "structure",
}

M.TerminateRequest = {
    type = "structure",
    members = {
        WorkspaceId = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.TerminateWorkspacesInput = {
    type = "structure",
    members = {
        TerminateWorkspaceRequests = {
            type = "list",
            member = M.TerminateRequest,
            traits = {
                required = true,
            },
        },
    },
}

M.TerminateWorkspacesOutput = {
    type = "structure",
    members = {
        FailedRequests = {
            type = "list",
            member = M.FailedWorkspaceChangeRequest,
        },
    },
}

M.TerminateWorkspacesPoolInput = {
    type = "structure",
    members = {
        PoolId = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.TerminateWorkspacesPoolOutput = {
    type = "structure",
}

M.TerminateWorkspacesPoolSessionInput = {
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

M.TerminateWorkspacesPoolSessionOutput = {
    type = "structure",
}

M.UpdateConnectClientAddInInput = {
    type = "structure",
    members = {
        AddInId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        ResourceId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Name = {
            type = "string",
        },
        URL = {
            type = "string",
        },
    },
}

M.UpdateConnectClientAddInOutput = {
    type = "structure",
}

M.UpdateConnectionAliasPermissionInput = {
    type = "structure",
    members = {
        AliasId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        ConnectionAliasPermission = setmetatable({ traits = {
            required = true,
        } }, { __index = M.ConnectionAliasPermission }),
    },
}

M.UpdateConnectionAliasPermissionOutput = {
    type = "structure",
}

M.UpdateRulesOfIpGroupInput = {
    type = "structure",
    members = {
        GroupId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        UserRules = {
            type = "list",
            member = M.IpRuleItem,
            traits = {
                required = true,
            },
        },
    },
}

M.UpdateRulesOfIpGroupOutput = {
    type = "structure",
}

M.UpdateWorkspaceBundleInput = {
    type = "structure",
    members = {
        BundleId = {
            type = "string",
        },
        ImageId = {
            type = "string",
        },
    },
}

M.UpdateWorkspaceBundleOutput = {
    type = "structure",
}

M.UpdateWorkspaceImagePermissionInput = {
    type = "structure",
    members = {
        ImageId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        AllowCopyImage = {
            type = "boolean",
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

M.UpdateWorkspaceImagePermissionOutput = {
    type = "structure",
}

M.UpdateWorkspacesPoolInput = {
    type = "structure",
    members = {
        PoolId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Description = {
            type = "string",
        },
        BundleId = {
            type = "string",
        },
        DirectoryId = {
            type = "string",
        },
        Capacity = M.Capacity,
        ApplicationSettings = M.ApplicationSettingsRequest,
        TimeoutSettings = M.TimeoutSettings,
        RunningMode = {
            type = "string",
        },
    },
}

M.UpdateWorkspacesPoolOutput = {
    type = "structure",
    members = {
        WorkspacesPool = M.WorkspacesPool,
    },
}

return M
