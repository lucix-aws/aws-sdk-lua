local M = {}

M.ActionRequired = {
    type = "structure",
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
}

M.NotFoundException = {
    type = "structure",
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
}

M.DataReplicationCounterpart = {
    type = "structure",
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
}

M.DeleteUserInput = {
    type = "structure",
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
}

M.DescribeBrokerInput = {
    type = "structure",
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
}

M.UpdateBrokerInput = {
    type = "structure",
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
}

return M
