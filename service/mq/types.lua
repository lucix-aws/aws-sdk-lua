local M = {}

M.ActionRequired = {
    type = "structure",
    id = "ActionRequired",
    members = {
        ActionRequiredCode = {
            type = "string",
            traits = {
                json_name = "actionRequiredCode",
            },
        },
        ActionRequiredInfo = {
            type = "string",
            traits = {
                json_name = "actionRequiredInfo",
            },
        },
    },
}

M.AvailabilityZone = {
    type = "structure",
    id = "AvailabilityZone",
    members = {
        Name = {
            type = "string",
            traits = {
                json_name = "name",
            },
        },
    },
}

M.EngineType = {
    ACTIVEMQ = "ACTIVEMQ",
    RABBITMQ = "RABBITMQ",
}

M.EngineVersion = {
    type = "structure",
    id = "EngineVersion",
    members = {
        Name = {
            type = "string",
            traits = {
                json_name = "name",
            },
        },
    },
}

M.BrokerEngineType = {
    type = "structure",
    id = "BrokerEngineType",
    members = {
        EngineType = {
            type = "string",
            traits = {
                json_name = "engineType",
            },
        },
        EngineVersions = {
            type = "list",
            member = M.EngineVersion,
            traits = {
                json_name = "engineVersions",
            },
        },
    },
}

M.BrokerInstance = {
    type = "structure",
    id = "BrokerInstance",
    members = {
        ConsoleURL = {
            type = "string",
            traits = {
                json_name = "consoleURL",
            },
        },
        Endpoints = {
            type = "list",
            member = { type = "string" },
            traits = {
                json_name = "endpoints",
            },
        },
        IpAddress = {
            type = "string",
            traits = {
                json_name = "ipAddress",
            },
        },
    },
}

M.BrokerStorageType = {
    EBS = "EBS",
    EFS = "EFS",
}

M.DeploymentMode = {
    SINGLE_INSTANCE = "SINGLE_INSTANCE",
    ACTIVE_STANDBY_MULTI_AZ = "ACTIVE_STANDBY_MULTI_AZ",
    CLUSTER_MULTI_AZ = "CLUSTER_MULTI_AZ",
}

M.BrokerInstanceOption = {
    type = "structure",
    id = "BrokerInstanceOption",
    members = {
        AvailabilityZones = {
            type = "list",
            member = M.AvailabilityZone,
            traits = {
                json_name = "availabilityZones",
            },
        },
        EngineType = {
            type = "string",
            traits = {
                json_name = "engineType",
            },
        },
        HostInstanceType = {
            type = "string",
            traits = {
                json_name = "hostInstanceType",
            },
        },
        StorageType = {
            type = "string",
            traits = {
                json_name = "storageType",
            },
        },
        SupportedDeploymentModes = {
            type = "list",
            member = { type = "string" },
            traits = {
                json_name = "supportedDeploymentModes",
            },
        },
        SupportedEngineVersions = {
            type = "list",
            member = { type = "string" },
            traits = {
                json_name = "supportedEngineVersions",
            },
        },
    },
}

M.BrokerState = {
    CREATION_IN_PROGRESS = "CREATION_IN_PROGRESS",
    CREATION_FAILED = "CREATION_FAILED",
    DELETION_IN_PROGRESS = "DELETION_IN_PROGRESS",
    RUNNING = "RUNNING",
    REBOOT_IN_PROGRESS = "REBOOT_IN_PROGRESS",
    CRITICAL_ACTION_REQUIRED = "CRITICAL_ACTION_REQUIRED",
    REPLICA = "REPLICA",
}

M.BrokerSummary = {
    type = "structure",
    id = "BrokerSummary",
    members = {
        BrokerArn = {
            type = "string",
            traits = {
                json_name = "brokerArn",
            },
        },
        BrokerId = {
            type = "string",
            traits = {
                json_name = "brokerId",
            },
        },
        BrokerName = {
            type = "string",
            traits = {
                json_name = "brokerName",
            },
        },
        BrokerState = {
            type = "string",
            traits = {
                json_name = "brokerState",
            },
        },
        Created = {
            type = "timestamp",
            traits = {
                json_name = "created",
                timestamp_format = "date-time",
            },
        },
        DeploymentMode = {
            type = "string",
            traits = {
                json_name = "deploymentMode",
                required = true,
            },
        },
        EngineType = {
            type = "string",
            traits = {
                json_name = "engineType",
                required = true,
            },
        },
        HostInstanceType = {
            type = "string",
            traits = {
                json_name = "hostInstanceType",
            },
        },
    },
}

M.AuthenticationStrategy = {
    SIMPLE = "SIMPLE",
    LDAP = "LDAP",
    CONFIG_MANAGED = "CONFIG_MANAGED",
}

M.ConfigurationRevision = {
    type = "structure",
    id = "ConfigurationRevision",
    members = {
        Created = {
            type = "timestamp",
            traits = {
                json_name = "created",
                required = true,
                timestamp_format = "date-time",
            },
        },
        Description = {
            type = "string",
            traits = {
                json_name = "description",
            },
        },
        Revision = {
            type = "integer",
            traits = {
                json_name = "revision",
                required = true,
            },
        },
    },
}

M.Configuration = {
    type = "structure",
    id = "Configuration",
    members = {
        Arn = {
            type = "string",
            traits = {
                json_name = "arn",
                required = true,
            },
        },
        AuthenticationStrategy = {
            type = "string",
            traits = {
                json_name = "authenticationStrategy",
                required = true,
            },
        },
        Created = {
            type = "timestamp",
            traits = {
                json_name = "created",
                required = true,
                timestamp_format = "date-time",
            },
        },
        Description = {
            type = "string",
            traits = {
                json_name = "description",
                required = true,
            },
        },
        EngineType = {
            type = "string",
            traits = {
                json_name = "engineType",
                required = true,
            },
        },
        EngineVersion = {
            type = "string",
            traits = {
                json_name = "engineVersion",
                required = true,
            },
        },
        Id = {
            type = "string",
            traits = {
                json_name = "id",
                required = true,
            },
        },
        LatestRevision = setmetatable({ traits = {
            json_name = "latestRevision",
            required = true,
        } }, { __index = M.ConfigurationRevision }),
        Name = {
            type = "string",
            traits = {
                json_name = "name",
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
    },
}

M.ConfigurationId = {
    type = "structure",
    id = "ConfigurationId",
    members = {
        Id = {
            type = "string",
            traits = {
                json_name = "id",
                required = true,
            },
        },
        Revision = {
            type = "integer",
            traits = {
                json_name = "revision",
            },
        },
    },
}

M.SanitizationWarningReason = {
    DISALLOWED_ELEMENT_REMOVED = "DISALLOWED_ELEMENT_REMOVED",
    DISALLOWED_ATTRIBUTE_REMOVED = "DISALLOWED_ATTRIBUTE_REMOVED",
    INVALID_ATTRIBUTE_VALUE_REMOVED = "INVALID_ATTRIBUTE_VALUE_REMOVED",
}

M.SanitizationWarning = {
    type = "structure",
    id = "SanitizationWarning",
    members = {
        AttributeName = {
            type = "string",
            traits = {
                json_name = "attributeName",
            },
        },
        ElementName = {
            type = "string",
            traits = {
                json_name = "elementName",
            },
        },
        Reason = {
            type = "string",
            traits = {
                json_name = "reason",
                required = true,
            },
        },
    },
}

M.User = {
    type = "structure",
    id = "User",
    members = {
        ConsoleAccess = {
            type = "boolean",
            traits = {
                json_name = "consoleAccess",
            },
        },
        Groups = {
            type = "list",
            member = { type = "string" },
            traits = {
                json_name = "groups",
            },
        },
        Password = {
            type = "string",
            traits = {
                json_name = "password",
                required = true,
            },
        },
        Username = {
            type = "string",
            traits = {
                json_name = "username",
                required = true,
            },
        },
        ReplicationUser = {
            type = "boolean",
            traits = {
                json_name = "replicationUser",
            },
        },
    },
}

M.ChangeType = {
    CREATE = "CREATE",
    UPDATE = "UPDATE",
    DELETE = "DELETE",
}

M.UserSummary = {
    type = "structure",
    id = "UserSummary",
    members = {
        PendingChange = {
            type = "string",
            traits = {
                json_name = "pendingChange",
            },
        },
        Username = {
            type = "string",
            traits = {
                json_name = "username",
                required = true,
            },
        },
    },
}

M.BadRequestException = {
    type = "structure",
    id = "BadRequestException",
    error = "client",
    members = {
        ErrorAttribute = {
            type = "string",
            traits = {
                json_name = "errorAttribute",
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

M.Configurations = {
    type = "structure",
    id = "Configurations",
    members = {
        Current = setmetatable({ traits = {
            json_name = "current",
        } }, { __index = M.ConfigurationId }),
        History = {
            type = "list",
            member = M.ConfigurationId,
            traits = {
                json_name = "history",
            },
        },
        Pending = setmetatable({ traits = {
            json_name = "pending",
        } }, { __index = M.ConfigurationId }),
    },
}

M.ConflictException = {
    type = "structure",
    id = "ConflictException",
    error = "client",
    members = {
        ErrorAttribute = {
            type = "string",
            traits = {
                json_name = "errorAttribute",
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

M.DataReplicationMode = {
    NONE = "NONE",
    CRDR = "CRDR",
}

M.EncryptionOptions = {
    type = "structure",
    id = "EncryptionOptions",
    members = {
        KmsKeyId = {
            type = "string",
            traits = {
                json_name = "kmsKeyId",
            },
        },
        UseAwsOwnedKey = {
            type = "boolean",
            traits = {
                json_name = "useAwsOwnedKey",
                required = true,
            },
        },
    },
}

M.LdapServerMetadataInput = {
    type = "structure",
    id = "LdapServerMetadataInput",
    members = {
        Hosts = {
            type = "list",
            member = { type = "string" },
            traits = {
                json_name = "hosts",
                required = true,
            },
        },
        RoleBase = {
            type = "string",
            traits = {
                json_name = "roleBase",
                required = true,
            },
        },
        RoleName = {
            type = "string",
            traits = {
                json_name = "roleName",
            },
        },
        RoleSearchMatching = {
            type = "string",
            traits = {
                json_name = "roleSearchMatching",
                required = true,
            },
        },
        RoleSearchSubtree = {
            type = "boolean",
            traits = {
                json_name = "roleSearchSubtree",
            },
        },
        ServiceAccountPassword = {
            type = "string",
            traits = {
                json_name = "serviceAccountPassword",
                required = true,
            },
        },
        ServiceAccountUsername = {
            type = "string",
            traits = {
                json_name = "serviceAccountUsername",
                required = true,
            },
        },
        UserBase = {
            type = "string",
            traits = {
                json_name = "userBase",
                required = true,
            },
        },
        UserRoleName = {
            type = "string",
            traits = {
                json_name = "userRoleName",
            },
        },
        UserSearchMatching = {
            type = "string",
            traits = {
                json_name = "userSearchMatching",
                required = true,
            },
        },
        UserSearchSubtree = {
            type = "boolean",
            traits = {
                json_name = "userSearchSubtree",
            },
        },
    },
}

M.Logs = {
    type = "structure",
    id = "Logs",
    members = {
        Audit = {
            type = "boolean",
            traits = {
                json_name = "audit",
            },
        },
        General = {
            type = "boolean",
            traits = {
                json_name = "general",
            },
        },
    },
}

M.DayOfWeek = {
    MONDAY = "MONDAY",
    TUESDAY = "TUESDAY",
    WEDNESDAY = "WEDNESDAY",
    THURSDAY = "THURSDAY",
    FRIDAY = "FRIDAY",
    SATURDAY = "SATURDAY",
    SUNDAY = "SUNDAY",
}

M.WeeklyStartTime = {
    type = "structure",
    id = "WeeklyStartTime",
    members = {
        DayOfWeek = {
            type = "string",
            traits = {
                json_name = "dayOfWeek",
                required = true,
            },
        },
        TimeOfDay = {
            type = "string",
            traits = {
                json_name = "timeOfDay",
                required = true,
            },
        },
        TimeZone = {
            type = "string",
            traits = {
                json_name = "timeZone",
            },
        },
    },
}

M.CreateBrokerInput = {
    type = "structure",
    id = "CreateBrokerInput",
    members = {
        AuthenticationStrategy = {
            type = "string",
            traits = {
                json_name = "authenticationStrategy",
            },
        },
        AutoMinorVersionUpgrade = {
            type = "boolean",
            traits = {
                json_name = "autoMinorVersionUpgrade",
            },
        },
        BrokerName = {
            type = "string",
            traits = {
                json_name = "brokerName",
                required = true,
            },
        },
        Configuration = setmetatable({ traits = {
            json_name = "configuration",
        } }, { __index = M.ConfigurationId }),
        CreatorRequestId = {
            type = "string",
            traits = {
                idempotency_token = true,
                json_name = "creatorRequestId",
            },
        },
        DeploymentMode = {
            type = "string",
            traits = {
                json_name = "deploymentMode",
                required = true,
            },
        },
        EncryptionOptions = setmetatable({ traits = {
            json_name = "encryptionOptions",
        } }, { __index = M.EncryptionOptions }),
        EngineType = {
            type = "string",
            traits = {
                json_name = "engineType",
                required = true,
            },
        },
        EngineVersion = {
            type = "string",
            traits = {
                json_name = "engineVersion",
            },
        },
        HostInstanceType = {
            type = "string",
            traits = {
                json_name = "hostInstanceType",
                required = true,
            },
        },
        LdapServerMetadata = setmetatable({ traits = {
            json_name = "ldapServerMetadata",
        } }, { __index = M.LdapServerMetadataInput }),
        Logs = setmetatable({ traits = {
            json_name = "logs",
        } }, { __index = M.Logs }),
        MaintenanceWindowStartTime = setmetatable({ traits = {
            json_name = "maintenanceWindowStartTime",
        } }, { __index = M.WeeklyStartTime }),
        PubliclyAccessible = {
            type = "boolean",
            traits = {
                json_name = "publiclyAccessible",
                required = true,
            },
        },
        SecurityGroups = {
            type = "list",
            member = { type = "string" },
            traits = {
                json_name = "securityGroups",
            },
        },
        StorageType = {
            type = "string",
            traits = {
                json_name = "storageType",
            },
        },
        SubnetIds = {
            type = "list",
            member = { type = "string" },
            traits = {
                json_name = "subnetIds",
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
        Users = {
            type = "list",
            member = M.User,
            traits = {
                json_name = "users",
            },
        },
        DataReplicationMode = {
            type = "string",
            traits = {
                json_name = "dataReplicationMode",
            },
        },
        DataReplicationPrimaryBrokerArn = {
            type = "string",
            traits = {
                json_name = "dataReplicationPrimaryBrokerArn",
            },
        },
    },
}

M.CreateBrokerOutput = {
    type = "structure",
    id = "CreateBrokerOutput",
    members = {
        BrokerArn = {
            type = "string",
            traits = {
                json_name = "brokerArn",
            },
        },
        BrokerId = {
            type = "string",
            traits = {
                json_name = "brokerId",
            },
        },
    },
}

M.ForbiddenException = {
    type = "structure",
    id = "ForbiddenException",
    error = "client",
    members = {
        ErrorAttribute = {
            type = "string",
            traits = {
                json_name = "errorAttribute",
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

M.InternalServerErrorException = {
    type = "structure",
    id = "InternalServerErrorException",
    error = "server",
    members = {
        ErrorAttribute = {
            type = "string",
            traits = {
                json_name = "errorAttribute",
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

M.UnauthorizedException = {
    type = "structure",
    id = "UnauthorizedException",
    error = "client",
    members = {
        ErrorAttribute = {
            type = "string",
            traits = {
                json_name = "errorAttribute",
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

M.CreateConfigurationInput = {
    type = "structure",
    id = "CreateConfigurationInput",
    members = {
        AuthenticationStrategy = {
            type = "string",
            traits = {
                json_name = "authenticationStrategy",
            },
        },
        EngineType = {
            type = "string",
            traits = {
                json_name = "engineType",
                required = true,
            },
        },
        EngineVersion = {
            type = "string",
            traits = {
                json_name = "engineVersion",
            },
        },
        Name = {
            type = "string",
            traits = {
                json_name = "name",
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
    },
}

M.CreateConfigurationOutput = {
    type = "structure",
    id = "CreateConfigurationOutput",
    members = {
        Arn = {
            type = "string",
            traits = {
                json_name = "arn",
            },
        },
        AuthenticationStrategy = {
            type = "string",
            traits = {
                json_name = "authenticationStrategy",
            },
        },
        Created = {
            type = "timestamp",
            traits = {
                json_name = "created",
                timestamp_format = "date-time",
            },
        },
        Id = {
            type = "string",
            traits = {
                json_name = "id",
            },
        },
        LatestRevision = setmetatable({ traits = {
            json_name = "latestRevision",
        } }, { __index = M.ConfigurationRevision }),
        Name = {
            type = "string",
            traits = {
                json_name = "name",
            },
        },
    },
}

M.CreateTagsInput = {
    type = "structure",
    id = "CreateTagsInput",
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
            },
        },
    },
}

M.CreateTagsOutput = {
    type = "structure",
    id = "CreateTagsOutput",
}

M.NotFoundException = {
    type = "structure",
    id = "NotFoundException",
    error = "client",
    members = {
        ErrorAttribute = {
            type = "string",
            traits = {
                json_name = "errorAttribute",
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

M.CreateUserInput = {
    type = "structure",
    id = "CreateUserInput",
    members = {
        BrokerId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        ConsoleAccess = {
            type = "boolean",
            traits = {
                json_name = "consoleAccess",
            },
        },
        Groups = {
            type = "list",
            member = { type = "string" },
            traits = {
                json_name = "groups",
            },
        },
        Password = {
            type = "string",
            traits = {
                json_name = "password",
                required = true,
            },
        },
        Username = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        ReplicationUser = {
            type = "boolean",
            traits = {
                json_name = "replicationUser",
            },
        },
    },
}

M.CreateUserOutput = {
    type = "structure",
    id = "CreateUserOutput",
}

M.DataReplicationCounterpart = {
    type = "structure",
    id = "DataReplicationCounterpart",
    members = {
        BrokerId = {
            type = "string",
            traits = {
                json_name = "brokerId",
                required = true,
            },
        },
        Region = {
            type = "string",
            traits = {
                json_name = "region",
                required = true,
            },
        },
    },
}

M.DataReplicationMetadataOutput = {
    type = "structure",
    id = "DataReplicationMetadataOutput",
    members = {
        DataReplicationCounterpart = setmetatable({ traits = {
            json_name = "dataReplicationCounterpart",
        } }, { __index = M.DataReplicationCounterpart }),
        DataReplicationRole = {
            type = "string",
            traits = {
                json_name = "dataReplicationRole",
                required = true,
            },
        },
    },
}

M.DeleteBrokerInput = {
    type = "structure",
    id = "DeleteBrokerInput",
    members = {
        BrokerId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.DeleteBrokerOutput = {
    type = "structure",
    id = "DeleteBrokerOutput",
    members = {
        BrokerId = {
            type = "string",
            traits = {
                json_name = "brokerId",
            },
        },
    },
}

M.DeleteConfigurationInput = {
    type = "structure",
    id = "DeleteConfigurationInput",
    members = {
        ConfigurationId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.DeleteConfigurationOutput = {
    type = "structure",
    id = "DeleteConfigurationOutput",
    members = {
        ConfigurationId = {
            type = "string",
            traits = {
                json_name = "configurationId",
            },
        },
    },
}

M.DeleteTagsInput = {
    type = "structure",
    id = "DeleteTagsInput",
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

M.DeleteTagsOutput = {
    type = "structure",
    id = "DeleteTagsOutput",
}

M.DeleteUserInput = {
    type = "structure",
    id = "DeleteUserInput",
    members = {
        BrokerId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        Username = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.DeleteUserOutput = {
    type = "structure",
    id = "DeleteUserOutput",
}

M.DescribeBrokerInput = {
    type = "structure",
    id = "DescribeBrokerInput",
    members = {
        BrokerId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.LdapServerMetadataOutput = {
    type = "structure",
    id = "LdapServerMetadataOutput",
    members = {
        Hosts = {
            type = "list",
            member = { type = "string" },
            traits = {
                json_name = "hosts",
                required = true,
            },
        },
        RoleBase = {
            type = "string",
            traits = {
                json_name = "roleBase",
                required = true,
            },
        },
        RoleName = {
            type = "string",
            traits = {
                json_name = "roleName",
            },
        },
        RoleSearchMatching = {
            type = "string",
            traits = {
                json_name = "roleSearchMatching",
                required = true,
            },
        },
        RoleSearchSubtree = {
            type = "boolean",
            traits = {
                json_name = "roleSearchSubtree",
            },
        },
        ServiceAccountUsername = {
            type = "string",
            traits = {
                json_name = "serviceAccountUsername",
                required = true,
            },
        },
        UserBase = {
            type = "string",
            traits = {
                json_name = "userBase",
                required = true,
            },
        },
        UserRoleName = {
            type = "string",
            traits = {
                json_name = "userRoleName",
            },
        },
        UserSearchMatching = {
            type = "string",
            traits = {
                json_name = "userSearchMatching",
                required = true,
            },
        },
        UserSearchSubtree = {
            type = "boolean",
            traits = {
                json_name = "userSearchSubtree",
            },
        },
    },
}

M.PendingLogs = {
    type = "structure",
    id = "PendingLogs",
    members = {
        Audit = {
            type = "boolean",
            traits = {
                json_name = "audit",
            },
        },
        General = {
            type = "boolean",
            traits = {
                json_name = "general",
            },
        },
    },
}

M.LogsSummary = {
    type = "structure",
    id = "LogsSummary",
    members = {
        Audit = {
            type = "boolean",
            traits = {
                json_name = "audit",
            },
        },
        AuditLogGroup = {
            type = "string",
            traits = {
                json_name = "auditLogGroup",
            },
        },
        General = {
            type = "boolean",
            traits = {
                json_name = "general",
                required = true,
            },
        },
        GeneralLogGroup = {
            type = "string",
            traits = {
                json_name = "generalLogGroup",
                required = true,
            },
        },
        Pending = setmetatable({ traits = {
            json_name = "pending",
        } }, { __index = M.PendingLogs }),
    },
}

M.DescribeBrokerOutput = {
    type = "structure",
    id = "DescribeBrokerOutput",
    members = {
        ActionsRequired = {
            type = "list",
            member = M.ActionRequired,
            traits = {
                json_name = "actionsRequired",
            },
        },
        AuthenticationStrategy = {
            type = "string",
            traits = {
                json_name = "authenticationStrategy",
            },
        },
        AutoMinorVersionUpgrade = {
            type = "boolean",
            traits = {
                json_name = "autoMinorVersionUpgrade",
            },
        },
        BrokerArn = {
            type = "string",
            traits = {
                json_name = "brokerArn",
            },
        },
        BrokerId = {
            type = "string",
            traits = {
                json_name = "brokerId",
            },
        },
        BrokerInstances = {
            type = "list",
            member = M.BrokerInstance,
            traits = {
                json_name = "brokerInstances",
            },
        },
        BrokerName = {
            type = "string",
            traits = {
                json_name = "brokerName",
            },
        },
        BrokerState = {
            type = "string",
            traits = {
                json_name = "brokerState",
            },
        },
        Configurations = setmetatable({ traits = {
            json_name = "configurations",
        } }, { __index = M.Configurations }),
        Created = {
            type = "timestamp",
            traits = {
                json_name = "created",
                timestamp_format = "date-time",
            },
        },
        DeploymentMode = {
            type = "string",
            traits = {
                json_name = "deploymentMode",
            },
        },
        EncryptionOptions = setmetatable({ traits = {
            json_name = "encryptionOptions",
        } }, { __index = M.EncryptionOptions }),
        EngineType = {
            type = "string",
            traits = {
                json_name = "engineType",
            },
        },
        EngineVersion = {
            type = "string",
            traits = {
                json_name = "engineVersion",
            },
        },
        HostInstanceType = {
            type = "string",
            traits = {
                json_name = "hostInstanceType",
            },
        },
        LdapServerMetadata = setmetatable({ traits = {
            json_name = "ldapServerMetadata",
        } }, { __index = M.LdapServerMetadataOutput }),
        Logs = setmetatable({ traits = {
            json_name = "logs",
        } }, { __index = M.LogsSummary }),
        MaintenanceWindowStartTime = setmetatable({ traits = {
            json_name = "maintenanceWindowStartTime",
        } }, { __index = M.WeeklyStartTime }),
        PendingAuthenticationStrategy = {
            type = "string",
            traits = {
                json_name = "pendingAuthenticationStrategy",
            },
        },
        PendingEngineVersion = {
            type = "string",
            traits = {
                json_name = "pendingEngineVersion",
            },
        },
        PendingHostInstanceType = {
            type = "string",
            traits = {
                json_name = "pendingHostInstanceType",
            },
        },
        PendingLdapServerMetadata = setmetatable({ traits = {
            json_name = "pendingLdapServerMetadata",
        } }, { __index = M.LdapServerMetadataOutput }),
        PendingSecurityGroups = {
            type = "list",
            member = { type = "string" },
            traits = {
                json_name = "pendingSecurityGroups",
            },
        },
        PubliclyAccessible = {
            type = "boolean",
            traits = {
                json_name = "publiclyAccessible",
            },
        },
        SecurityGroups = {
            type = "list",
            member = { type = "string" },
            traits = {
                json_name = "securityGroups",
            },
        },
        StorageType = {
            type = "string",
            traits = {
                json_name = "storageType",
            },
        },
        SubnetIds = {
            type = "list",
            member = { type = "string" },
            traits = {
                json_name = "subnetIds",
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
        Users = {
            type = "list",
            member = M.UserSummary,
            traits = {
                json_name = "users",
            },
        },
        DataReplicationMetadata = setmetatable({ traits = {
            json_name = "dataReplicationMetadata",
        } }, { __index = M.DataReplicationMetadataOutput }),
        DataReplicationMode = {
            type = "string",
            traits = {
                json_name = "dataReplicationMode",
            },
        },
        PendingDataReplicationMetadata = setmetatable({ traits = {
            json_name = "pendingDataReplicationMetadata",
        } }, { __index = M.DataReplicationMetadataOutput }),
        PendingDataReplicationMode = {
            type = "string",
            traits = {
                json_name = "pendingDataReplicationMode",
            },
        },
    },
}

M.DescribeBrokerEngineTypesInput = {
    type = "structure",
    id = "DescribeBrokerEngineTypesInput",
    members = {
        EngineType = {
            type = "string",
            traits = {
                http_query = "engineType",
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

M.DescribeBrokerEngineTypesOutput = {
    type = "structure",
    id = "DescribeBrokerEngineTypesOutput",
    members = {
        BrokerEngineTypes = {
            type = "list",
            member = M.BrokerEngineType,
            traits = {
                json_name = "brokerEngineTypes",
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

M.DescribeBrokerInstanceOptionsInput = {
    type = "structure",
    id = "DescribeBrokerInstanceOptionsInput",
    members = {
        EngineType = {
            type = "string",
            traits = {
                http_query = "engineType",
            },
        },
        HostInstanceType = {
            type = "string",
            traits = {
                http_query = "hostInstanceType",
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
        StorageType = {
            type = "string",
            traits = {
                http_query = "storageType",
            },
        },
    },
}

M.DescribeBrokerInstanceOptionsOutput = {
    type = "structure",
    id = "DescribeBrokerInstanceOptionsOutput",
    members = {
        BrokerInstanceOptions = {
            type = "list",
            member = M.BrokerInstanceOption,
            traits = {
                json_name = "brokerInstanceOptions",
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

M.DescribeConfigurationInput = {
    type = "structure",
    id = "DescribeConfigurationInput",
    members = {
        ConfigurationId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.DescribeConfigurationOutput = {
    type = "structure",
    id = "DescribeConfigurationOutput",
    members = {
        Arn = {
            type = "string",
            traits = {
                json_name = "arn",
            },
        },
        AuthenticationStrategy = {
            type = "string",
            traits = {
                json_name = "authenticationStrategy",
            },
        },
        Created = {
            type = "timestamp",
            traits = {
                json_name = "created",
                timestamp_format = "date-time",
            },
        },
        Description = {
            type = "string",
            traits = {
                json_name = "description",
            },
        },
        EngineType = {
            type = "string",
            traits = {
                json_name = "engineType",
            },
        },
        EngineVersion = {
            type = "string",
            traits = {
                json_name = "engineVersion",
            },
        },
        Id = {
            type = "string",
            traits = {
                json_name = "id",
            },
        },
        LatestRevision = setmetatable({ traits = {
            json_name = "latestRevision",
        } }, { __index = M.ConfigurationRevision }),
        Name = {
            type = "string",
            traits = {
                json_name = "name",
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

M.DescribeConfigurationRevisionInput = {
    type = "structure",
    id = "DescribeConfigurationRevisionInput",
    members = {
        ConfigurationId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        ConfigurationRevision = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.DescribeConfigurationRevisionOutput = {
    type = "structure",
    id = "DescribeConfigurationRevisionOutput",
    members = {
        ConfigurationId = {
            type = "string",
            traits = {
                json_name = "configurationId",
            },
        },
        Created = {
            type = "timestamp",
            traits = {
                json_name = "created",
                timestamp_format = "date-time",
            },
        },
        Data = {
            type = "string",
            traits = {
                json_name = "data",
            },
        },
        Description = {
            type = "string",
            traits = {
                json_name = "description",
            },
        },
    },
}

M.DescribeUserInput = {
    type = "structure",
    id = "DescribeUserInput",
    members = {
        BrokerId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        Username = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.UserPendingChanges = {
    type = "structure",
    id = "UserPendingChanges",
    members = {
        ConsoleAccess = {
            type = "boolean",
            traits = {
                json_name = "consoleAccess",
            },
        },
        Groups = {
            type = "list",
            member = { type = "string" },
            traits = {
                json_name = "groups",
            },
        },
        PendingChange = {
            type = "string",
            traits = {
                json_name = "pendingChange",
                required = true,
            },
        },
    },
}

M.DescribeUserOutput = {
    type = "structure",
    id = "DescribeUserOutput",
    members = {
        BrokerId = {
            type = "string",
            traits = {
                json_name = "brokerId",
            },
        },
        ConsoleAccess = {
            type = "boolean",
            traits = {
                json_name = "consoleAccess",
            },
        },
        Groups = {
            type = "list",
            member = { type = "string" },
            traits = {
                json_name = "groups",
            },
        },
        Pending = setmetatable({ traits = {
            json_name = "pending",
        } }, { __index = M.UserPendingChanges }),
        Username = {
            type = "string",
            traits = {
                json_name = "username",
            },
        },
        ReplicationUser = {
            type = "boolean",
            traits = {
                json_name = "replicationUser",
            },
        },
    },
}

M.ListBrokersInput = {
    type = "structure",
    id = "ListBrokersInput",
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

M.ListBrokersOutput = {
    type = "structure",
    id = "ListBrokersOutput",
    members = {
        BrokerSummaries = {
            type = "list",
            member = M.BrokerSummary,
            traits = {
                json_name = "brokerSummaries",
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

M.ListConfigurationRevisionsInput = {
    type = "structure",
    id = "ListConfigurationRevisionsInput",
    members = {
        ConfigurationId = {
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

M.ListConfigurationRevisionsOutput = {
    type = "structure",
    id = "ListConfigurationRevisionsOutput",
    members = {
        ConfigurationId = {
            type = "string",
            traits = {
                json_name = "configurationId",
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
        Revisions = {
            type = "list",
            member = M.ConfigurationRevision,
            traits = {
                json_name = "revisions",
            },
        },
    },
}

M.ListConfigurationsInput = {
    type = "structure",
    id = "ListConfigurationsInput",
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

M.ListConfigurationsOutput = {
    type = "structure",
    id = "ListConfigurationsOutput",
    members = {
        Configurations = {
            type = "list",
            member = M.Configuration,
            traits = {
                json_name = "configurations",
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

M.ListTagsInput = {
    type = "structure",
    id = "ListTagsInput",
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

M.ListTagsOutput = {
    type = "structure",
    id = "ListTagsOutput",
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

M.ListUsersInput = {
    type = "structure",
    id = "ListUsersInput",
    members = {
        BrokerId = {
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

M.ListUsersOutput = {
    type = "structure",
    id = "ListUsersOutput",
    members = {
        BrokerId = {
            type = "string",
            traits = {
                json_name = "brokerId",
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
        Users = {
            type = "list",
            member = M.UserSummary,
            traits = {
                json_name = "users",
            },
        },
    },
}

M.PromoteMode = {
    SWITCHOVER = "SWITCHOVER",
    FAILOVER = "FAILOVER",
}

M.PromoteInput = {
    type = "structure",
    id = "PromoteInput",
    members = {
        BrokerId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        Mode = {
            type = "string",
            traits = {
                json_name = "mode",
                required = true,
            },
        },
    },
}

M.PromoteOutput = {
    type = "structure",
    id = "PromoteOutput",
    members = {
        BrokerId = {
            type = "string",
            traits = {
                json_name = "brokerId",
            },
        },
    },
}

M.RebootBrokerInput = {
    type = "structure",
    id = "RebootBrokerInput",
    members = {
        BrokerId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.RebootBrokerOutput = {
    type = "structure",
    id = "RebootBrokerOutput",
}

M.UpdateBrokerInput = {
    type = "structure",
    id = "UpdateBrokerInput",
    members = {
        AuthenticationStrategy = {
            type = "string",
            traits = {
                json_name = "authenticationStrategy",
            },
        },
        AutoMinorVersionUpgrade = {
            type = "boolean",
            traits = {
                json_name = "autoMinorVersionUpgrade",
            },
        },
        BrokerId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        Configuration = setmetatable({ traits = {
            json_name = "configuration",
        } }, { __index = M.ConfigurationId }),
        EngineVersion = {
            type = "string",
            traits = {
                json_name = "engineVersion",
            },
        },
        HostInstanceType = {
            type = "string",
            traits = {
                json_name = "hostInstanceType",
            },
        },
        LdapServerMetadata = setmetatable({ traits = {
            json_name = "ldapServerMetadata",
        } }, { __index = M.LdapServerMetadataInput }),
        Logs = setmetatable({ traits = {
            json_name = "logs",
        } }, { __index = M.Logs }),
        MaintenanceWindowStartTime = setmetatable({ traits = {
            json_name = "maintenanceWindowStartTime",
        } }, { __index = M.WeeklyStartTime }),
        SecurityGroups = {
            type = "list",
            member = { type = "string" },
            traits = {
                json_name = "securityGroups",
            },
        },
        DataReplicationMode = {
            type = "string",
            traits = {
                json_name = "dataReplicationMode",
            },
        },
    },
}

M.UpdateBrokerOutput = {
    type = "structure",
    id = "UpdateBrokerOutput",
    members = {
        AuthenticationStrategy = {
            type = "string",
            traits = {
                json_name = "authenticationStrategy",
            },
        },
        AutoMinorVersionUpgrade = {
            type = "boolean",
            traits = {
                json_name = "autoMinorVersionUpgrade",
            },
        },
        BrokerId = {
            type = "string",
            traits = {
                json_name = "brokerId",
            },
        },
        Configuration = setmetatable({ traits = {
            json_name = "configuration",
        } }, { __index = M.ConfigurationId }),
        EngineVersion = {
            type = "string",
            traits = {
                json_name = "engineVersion",
            },
        },
        HostInstanceType = {
            type = "string",
            traits = {
                json_name = "hostInstanceType",
            },
        },
        LdapServerMetadata = setmetatable({ traits = {
            json_name = "ldapServerMetadata",
        } }, { __index = M.LdapServerMetadataOutput }),
        Logs = setmetatable({ traits = {
            json_name = "logs",
        } }, { __index = M.Logs }),
        MaintenanceWindowStartTime = setmetatable({ traits = {
            json_name = "maintenanceWindowStartTime",
        } }, { __index = M.WeeklyStartTime }),
        SecurityGroups = {
            type = "list",
            member = { type = "string" },
            traits = {
                json_name = "securityGroups",
            },
        },
        DataReplicationMetadata = setmetatable({ traits = {
            json_name = "dataReplicationMetadata",
        } }, { __index = M.DataReplicationMetadataOutput }),
        DataReplicationMode = {
            type = "string",
            traits = {
                json_name = "dataReplicationMode",
            },
        },
        PendingDataReplicationMetadata = setmetatable({ traits = {
            json_name = "pendingDataReplicationMetadata",
        } }, { __index = M.DataReplicationMetadataOutput }),
        PendingDataReplicationMode = {
            type = "string",
            traits = {
                json_name = "pendingDataReplicationMode",
            },
        },
    },
}

M.UpdateConfigurationInput = {
    type = "structure",
    id = "UpdateConfigurationInput",
    members = {
        ConfigurationId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        Data = {
            type = "string",
            traits = {
                json_name = "data",
                required = true,
            },
        },
        Description = {
            type = "string",
            traits = {
                json_name = "description",
            },
        },
    },
}

M.UpdateConfigurationOutput = {
    type = "structure",
    id = "UpdateConfigurationOutput",
    members = {
        Arn = {
            type = "string",
            traits = {
                json_name = "arn",
            },
        },
        Created = {
            type = "timestamp",
            traits = {
                json_name = "created",
                timestamp_format = "date-time",
            },
        },
        Id = {
            type = "string",
            traits = {
                json_name = "id",
            },
        },
        LatestRevision = setmetatable({ traits = {
            json_name = "latestRevision",
        } }, { __index = M.ConfigurationRevision }),
        Name = {
            type = "string",
            traits = {
                json_name = "name",
            },
        },
        Warnings = {
            type = "list",
            member = M.SanitizationWarning,
            traits = {
                json_name = "warnings",
            },
        },
    },
}

M.UpdateUserInput = {
    type = "structure",
    id = "UpdateUserInput",
    members = {
        BrokerId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        ConsoleAccess = {
            type = "boolean",
            traits = {
                json_name = "consoleAccess",
            },
        },
        Groups = {
            type = "list",
            member = { type = "string" },
            traits = {
                json_name = "groups",
            },
        },
        Password = {
            type = "string",
            traits = {
                json_name = "password",
            },
        },
        Username = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        ReplicationUser = {
            type = "boolean",
            traits = {
                json_name = "replicationUser",
            },
        },
    },
}

M.UpdateUserOutput = {
    type = "structure",
    id = "UpdateUserOutput",
}

return M
