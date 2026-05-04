local M = {}

M.AllocationType = {
    VPC_SUBNET = "VPC_SUBNET",
    ELASTIC_IP = "ELASTIC_IP",
    OVERLAY = "OVERLAY",
    UNKNOWN = "UNKNOWN",
}

M.ApplicationDiscoveryStatus = {
    SUCCESS = "SUCCESS",
    REGISTRATION_FAILED = "REGISTRATION_FAILED",
    REFRESH_FAILED = "REFRESH_FAILED",
    REGISTERING = "REGISTERING",
    DELETING = "DELETING",
}

M.ApplicationStatus = {
    ACTIVATED = "ACTIVATED",
    STARTING = "STARTING",
    STOPPED = "STOPPED",
    STOPPING = "STOPPING",
    FAILED = "FAILED",
    REGISTERING = "REGISTERING",
    DELETING = "DELETING",
    UNKNOWN = "UNKNOWN",
}

M.ApplicationType = {
    HANA = "HANA",
    SAP_ABAP = "SAP_ABAP",
}

M.Application = {
    type = "structure",
    members = {
        Id = {
            type = "string",
        },
        Type = {
            type = "string",
        },
        Arn = {
            type = "string",
        },
        AppRegistryArn = {
            type = "string",
        },
        Status = {
            type = "string",
        },
        DiscoveryStatus = {
            type = "string",
        },
        Components = {
            type = "list",
            member_type = "string",
        },
        LastUpdated = {
            type = "timestamp",
        },
        StatusMessage = {
            type = "string",
        },
        AssociatedApplicationArns = {
            type = "list",
            member_type = "string",
        },
    },
}

M.CredentialType = {
    ADMIN = "ADMIN",
}

M.ApplicationCredential = {
    type = "structure",
    members = {
        DatabaseName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        CredentialType = {
            type = "string",
            traits = {
                required = true,
            },
        },
        SecretId = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.ApplicationSummary = {
    type = "structure",
    members = {
        Id = {
            type = "string",
        },
        DiscoveryStatus = {
            type = "string",
        },
        Type = {
            type = "string",
        },
        Arn = {
            type = "string",
        },
        Tags = {
            type = "map",
            key_type = "string",
            value_type = "string",
        },
    },
}

M.IpAddressMember = {
    type = "structure",
    members = {
        IpAddress = {
            type = "string",
        },
        Primary = {
            type = "boolean",
        },
        AllocationType = {
            type = "string",
        },
    },
}

M.AssociatedHost = {
    type = "structure",
    members = {
        Hostname = {
            type = "string",
        },
        Ec2InstanceId = {
            type = "string",
        },
        IpAddresses = {
            type = "list",
            member_type = "structure",
        },
        OsVersion = {
            type = "string",
        },
    },
}

M.BackintMode = {
    AWSBackup = "AWSBackup",
}

M.BackintConfig = {
    type = "structure",
    members = {
        BackintMode = {
            type = "string",
            traits = {
                required = true,
            },
        },
        EnsureNoBackupInProcess = {
            type = "boolean",
            traits = {
                required = true,
            },
        },
    },
}

M.ClusterStatus = {
    ONLINE = "ONLINE",
    STANDBY = "STANDBY",
    MAINTENANCE = "MAINTENANCE",
    OFFLINE = "OFFLINE",
    NONE = "NONE",
}

M.ComponentType = {
    HANA = "HANA",
    HANA_NODE = "HANA_NODE",
    ABAP = "ABAP",
    ASCS = "ASCS",
    DIALOG = "DIALOG",
    WEBDISP = "WEBDISP",
    WD = "WD",
    ERS = "ERS",
}

M.DatabaseConnectionMethod = {
    DIRECT = "DIRECT",
    OVERLAY = "OVERLAY",
}

M.DatabaseConnection = {
    type = "structure",
    members = {
        DatabaseConnectionMethod = {
            type = "string",
        },
        DatabaseArn = {
            type = "string",
        },
        ConnectionIp = {
            type = "string",
        },
    },
}

M.HostRole = {
    LEADER = "LEADER",
    WORKER = "WORKER",
    STANDBY = "STANDBY",
    UNKNOWN = "UNKNOWN",
}

M.Host = {
    type = "structure",
    members = {
        HostName = {
            type = "string",
        },
        HostIp = {
            type = "string",
        },
        EC2InstanceId = {
            type = "string",
        },
        InstanceId = {
            type = "string",
        },
        HostRole = {
            type = "string",
        },
        OsVersion = {
            type = "string",
        },
    },
}

M.OperationMode = {
    PRIMARY = "PRIMARY",
    LOGREPLAY = "LOGREPLAY",
    DELTA_DATASHIPPING = "DELTA_DATASHIPPING",
    LOGREPLAY_READACCESS = "LOGREPLAY_READACCESS",
    NONE = "NONE",
}

M.ReplicationMode = {
    PRIMARY = "PRIMARY",
    NONE = "NONE",
    SYNC = "SYNC",
    SYNCMEM = "SYNCMEM",
    ASYNC = "ASYNC",
}

M.Resilience = {
    type = "structure",
    members = {
        HsrTier = {
            type = "string",
        },
        HsrReplicationMode = {
            type = "string",
        },
        HsrOperationMode = {
            type = "string",
        },
        ClusterStatus = {
            type = "string",
        },
        EnqueueReplication = {
            type = "boolean",
        },
    },
}

M.ComponentStatus = {
    ACTIVATED = "ACTIVATED",
    STARTING = "STARTING",
    STOPPED = "STOPPED",
    STOPPING = "STOPPING",
    RUNNING = "RUNNING",
    RUNNING_WITH_ERROR = "RUNNING_WITH_ERROR",
    UNDEFINED = "UNDEFINED",
}

M.Component = {
    type = "structure",
    members = {
        ComponentId = {
            type = "string",
        },
        Sid = {
            type = "string",
        },
        SystemNumber = {
            type = "string",
        },
        ParentComponent = {
            type = "string",
        },
        ChildComponents = {
            type = "list",
            member_type = "string",
        },
        ApplicationId = {
            type = "string",
        },
        ComponentType = {
            type = "string",
        },
        Status = {
            type = "string",
        },
        SapHostname = {
            type = "string",
        },
        SapFeature = {
            type = "string",
        },
        SapKernelVersion = {
            type = "string",
        },
        HdbVersion = {
            type = "string",
        },
        Resilience = {
            type = "structure",
        },
        AssociatedHost = {
            type = "structure",
        },
        Databases = {
            type = "list",
            member_type = "string",
        },
        Hosts = {
            type = "list",
            member_type = "structure",
        },
        PrimaryHost = {
            type = "string",
        },
        DatabaseConnection = {
            type = "structure",
        },
        LastUpdated = {
            type = "timestamp",
        },
        Arn = {
            type = "string",
        },
    },
}

M.ComponentInfo = {
    type = "structure",
    members = {
        ComponentType = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Sid = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Ec2InstanceId = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.ComponentSummary = {
    type = "structure",
    members = {
        ApplicationId = {
            type = "string",
        },
        ComponentId = {
            type = "string",
        },
        ComponentType = {
            type = "string",
        },
        Tags = {
            type = "map",
            key_type = "string",
            value_type = "string",
        },
        Arn = {
            type = "string",
        },
    },
}

M.ConfigurationCheckType = {
    SAP_CHECK_01 = "SAP_CHECK_01",
    SAP_CHECK_02 = "SAP_CHECK_02",
    SAP_CHECK_03 = "SAP_CHECK_03",
}

M.ConfigurationCheckDefinition = {
    type = "structure",
    members = {
        Id = {
            type = "string",
        },
        Name = {
            type = "string",
        },
        Description = {
            type = "string",
        },
        ApplicableApplicationTypes = {
            type = "list",
            member_type = "string",
        },
    },
}

M.RuleStatusCounts = {
    type = "structure",
    members = {
        Failed = {
            type = "number",
        },
        Warning = {
            type = "number",
        },
        Info = {
            type = "number",
        },
        Passed = {
            type = "number",
        },
        Unknown = {
            type = "number",
        },
    },
}

M.OperationStatus = {
    INPROGRESS = "INPROGRESS",
    SUCCESS = "SUCCESS",
    ERROR = "ERROR",
}

M.ConfigurationCheckOperation = {
    type = "structure",
    members = {
        Id = {
            type = "string",
        },
        ApplicationId = {
            type = "string",
        },
        Status = {
            type = "string",
        },
        StatusMessage = {
            type = "string",
        },
        ConfigurationCheckId = {
            type = "string",
        },
        ConfigurationCheckName = {
            type = "string",
        },
        ConfigurationCheckDescription = {
            type = "string",
        },
        StartTime = {
            type = "timestamp",
        },
        EndTime = {
            type = "timestamp",
        },
        RuleStatusCounts = {
            type = "structure",
        },
    },
}

M.ConfigurationCheckOperationListingMode = {
    ALL_OPERATIONS = "ALL_OPERATIONS",
    LATEST_PER_CHECK = "LATEST_PER_CHECK",
}

M.ConflictException = {
    type = "structure",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.ConnectedEntityType = {
    DBMS = "DBMS",
}

M.DatabaseType = {
    SYSTEM = "SYSTEM",
    TENANT = "TENANT",
}

M.DatabaseStatus = {
    RUNNING = "RUNNING",
    STARTING = "STARTING",
    STOPPED = "STOPPED",
    WARNING = "WARNING",
    UNKNOWN = "UNKNOWN",
    ERROR = "ERROR",
    STOPPING = "STOPPING",
}

M.Database = {
    type = "structure",
    members = {
        ApplicationId = {
            type = "string",
        },
        ComponentId = {
            type = "string",
        },
        Credentials = {
            type = "list",
            member_type = "structure",
        },
        DatabaseId = {
            type = "string",
        },
        DatabaseName = {
            type = "string",
        },
        DatabaseType = {
            type = "string",
        },
        Arn = {
            type = "string",
        },
        Status = {
            type = "string",
        },
        PrimaryHost = {
            type = "string",
        },
        SQLPort = {
            type = "number",
        },
        LastUpdated = {
            type = "timestamp",
        },
        ConnectedComponentArns = {
            type = "list",
            member_type = "string",
        },
    },
}

M.DatabaseSummary = {
    type = "structure",
    members = {
        ApplicationId = {
            type = "string",
        },
        ComponentId = {
            type = "string",
        },
        DatabaseId = {
            type = "string",
        },
        DatabaseType = {
            type = "string",
        },
        Arn = {
            type = "string",
        },
        Tags = {
            type = "map",
            key_type = "string",
            value_type = "string",
        },
    },
}

M.PermissionActionType = {
    RESTORE = "RESTORE",
}

M.DeleteResourcePermissionInput = {
    type = "structure",
    members = {
        ActionType = {
            type = "string",
        },
        SourceResourceArn = {
            type = "string",
        },
        ResourceArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.DeleteResourcePermissionOutput = {
    type = "structure",
    members = {
        Policy = {
            type = "string",
        },
    },
}

M.InternalServerException = {
    type = "structure",
    error = "server",
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

M.ValidationException = {
    type = "structure",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.DeregisterApplicationInput = {
    type = "structure",
    members = {
        ApplicationId = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.DeregisterApplicationOutput = {
    type = "structure",
}

M.UnauthorizedException = {
    type = "structure",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.FilterOperator = {
    EQUALS = "Equals",
    GREATER_THAN_OR_EQUALS = "GreaterThanOrEquals",
    LESS_THAN_OR_EQUALS = "LessThanOrEquals",
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
        Value = {
            type = "string",
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

M.GetApplicationInput = {
    type = "structure",
    members = {
        ApplicationId = {
            type = "string",
        },
        ApplicationArn = {
            type = "string",
        },
        AppRegistryArn = {
            type = "string",
        },
    },
}

M.GetApplicationOutput = {
    type = "structure",
    members = {
        Application = {
            type = "structure",
        },
        Tags = {
            type = "map",
            key_type = "string",
            value_type = "string",
        },
    },
}

M.GetComponentInput = {
    type = "structure",
    members = {
        ApplicationId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        ComponentId = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.GetComponentOutput = {
    type = "structure",
    members = {
        Component = {
            type = "structure",
        },
        Tags = {
            type = "map",
            key_type = "string",
            value_type = "string",
        },
    },
}

M.GetConfigurationCheckOperationInput = {
    type = "structure",
    members = {
        OperationId = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.GetConfigurationCheckOperationOutput = {
    type = "structure",
    members = {
        ConfigurationCheckOperation = {
            type = "structure",
        },
    },
}

M.GetDatabaseInput = {
    type = "structure",
    members = {
        ApplicationId = {
            type = "string",
        },
        ComponentId = {
            type = "string",
        },
        DatabaseId = {
            type = "string",
        },
        DatabaseArn = {
            type = "string",
        },
    },
}

M.GetDatabaseOutput = {
    type = "structure",
    members = {
        Database = {
            type = "structure",
        },
        Tags = {
            type = "map",
            key_type = "string",
            value_type = "string",
        },
    },
}

M.GetOperationInput = {
    type = "structure",
    members = {
        OperationId = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.Operation = {
    type = "structure",
    members = {
        Id = {
            type = "string",
        },
        Type = {
            type = "string",
        },
        Status = {
            type = "string",
        },
        StatusMessage = {
            type = "string",
        },
        Properties = {
            type = "map",
            key_type = "string",
            value_type = "string",
        },
        ResourceType = {
            type = "string",
        },
        ResourceId = {
            type = "string",
        },
        ResourceArn = {
            type = "string",
        },
        StartTime = {
            type = "timestamp",
        },
        EndTime = {
            type = "timestamp",
        },
        LastUpdatedTime = {
            type = "timestamp",
        },
    },
}

M.GetOperationOutput = {
    type = "structure",
    members = {
        Operation = {
            type = "structure",
        },
    },
}

M.GetResourcePermissionInput = {
    type = "structure",
    members = {
        ActionType = {
            type = "string",
        },
        ResourceArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.GetResourcePermissionOutput = {
    type = "structure",
    members = {
        Policy = {
            type = "string",
        },
    },
}

M.ListApplicationsInput = {
    type = "structure",
    members = {
        NextToken = {
            type = "string",
        },
        MaxResults = {
            type = "number",
        },
        Filters = {
            type = "list",
            member_type = "structure",
        },
    },
}

M.ListApplicationsOutput = {
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

M.ListComponentsInput = {
    type = "structure",
    members = {
        ApplicationId = {
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

M.ListComponentsOutput = {
    type = "structure",
    members = {
        Components = {
            type = "list",
            member_type = "structure",
        },
        NextToken = {
            type = "string",
        },
    },
}

M.ListConfigurationCheckDefinitionsInput = {
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

M.ListConfigurationCheckDefinitionsOutput = {
    type = "structure",
    members = {
        ConfigurationChecks = {
            type = "list",
            member_type = "structure",
        },
        NextToken = {
            type = "string",
        },
    },
}

M.ListConfigurationCheckOperationsInput = {
    type = "structure",
    members = {
        ApplicationId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        ListMode = {
            type = "string",
        },
        MaxResults = {
            type = "number",
        },
        NextToken = {
            type = "string",
        },
        Filters = {
            type = "list",
            member_type = "structure",
        },
    },
}

M.ListConfigurationCheckOperationsOutput = {
    type = "structure",
    members = {
        ConfigurationCheckOperations = {
            type = "list",
            member_type = "structure",
        },
        NextToken = {
            type = "string",
        },
    },
}

M.ListDatabasesInput = {
    type = "structure",
    members = {
        ApplicationId = {
            type = "string",
        },
        ComponentId = {
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

M.ListDatabasesOutput = {
    type = "structure",
    members = {
        Databases = {
            type = "list",
            member_type = "structure",
        },
        NextToken = {
            type = "string",
        },
    },
}

M.ListOperationEventsInput = {
    type = "structure",
    members = {
        OperationId = {
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
        Filters = {
            type = "list",
            member_type = "structure",
        },
    },
}

M.Resource = {
    type = "structure",
    members = {
        ResourceArn = {
            type = "string",
        },
        ResourceType = {
            type = "string",
        },
    },
}

M.OperationEventStatus = {
    IN_PROGRESS = "IN_PROGRESS",
    COMPLETED = "COMPLETED",
    FAILED = "FAILED",
}

M.OperationEvent = {
    type = "structure",
    members = {
        Description = {
            type = "string",
        },
        Resource = {
            type = "structure",
        },
        Status = {
            type = "string",
        },
        StatusMessage = {
            type = "string",
        },
        Timestamp = {
            type = "timestamp",
        },
    },
}

M.ListOperationEventsOutput = {
    type = "structure",
    members = {
        OperationEvents = {
            type = "list",
            member_type = "structure",
        },
        NextToken = {
            type = "string",
        },
    },
}

M.ListOperationsInput = {
    type = "structure",
    members = {
        ApplicationId = {
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
        Filters = {
            type = "list",
            member_type = "structure",
        },
    },
}

M.ListOperationsOutput = {
    type = "structure",
    members = {
        Operations = {
            type = "list",
            member_type = "structure",
        },
        NextToken = {
            type = "string",
        },
    },
}

M.ListSubCheckResultsInput = {
    type = "structure",
    members = {
        OperationId = {
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

M.SubCheckResult = {
    type = "structure",
    members = {
        Id = {
            type = "string",
        },
        Name = {
            type = "string",
        },
        Description = {
            type = "string",
        },
        References = {
            type = "list",
            member_type = "string",
        },
    },
}

M.ListSubCheckResultsOutput = {
    type = "structure",
    members = {
        SubCheckResults = {
            type = "list",
            member_type = "structure",
        },
        NextToken = {
            type = "string",
        },
    },
}

M.ListSubCheckRuleResultsInput = {
    type = "structure",
    members = {
        SubCheckResultId = {
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

M.RuleResultStatus = {
    PASSED = "PASSED",
    FAILED = "FAILED",
    WARNING = "WARNING",
    INFO = "INFO",
    UNKNOWN = "UNKNOWN",
}

M.RuleResult = {
    type = "structure",
    members = {
        Id = {
            type = "string",
        },
        Description = {
            type = "string",
        },
        Status = {
            type = "string",
        },
        Message = {
            type = "string",
        },
        Metadata = {
            type = "map",
            key_type = "string",
            value_type = "string",
        },
    },
}

M.ListSubCheckRuleResultsOutput = {
    type = "structure",
    members = {
        RuleResults = {
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
        resourceArn = {
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
    members = {
        tags = {
            type = "map",
            key_type = "string",
            value_type = "string",
        },
    },
}

M.PutResourcePermissionInput = {
    type = "structure",
    members = {
        ActionType = {
            type = "string",
            traits = {
                required = true,
            },
        },
        SourceResourceArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        ResourceArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.PutResourcePermissionOutput = {
    type = "structure",
    members = {
        Policy = {
            type = "string",
        },
    },
}

M.RegisterApplicationInput = {
    type = "structure",
    members = {
        ApplicationId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        ApplicationType = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Instances = {
            type = "list",
            member_type = "string",
            traits = {
                required = true,
            },
        },
        SapInstanceNumber = {
            type = "string",
        },
        Sid = {
            type = "string",
        },
        Tags = {
            type = "map",
            key_type = "string",
            value_type = "string",
        },
        Credentials = {
            type = "list",
            member_type = "structure",
        },
        DatabaseArn = {
            type = "string",
        },
        ComponentsInfo = {
            type = "list",
            member_type = "structure",
        },
    },
}

M.RegisterApplicationOutput = {
    type = "structure",
    members = {
        Application = {
            type = "structure",
        },
        OperationId = {
            type = "string",
        },
    },
}

M.StartApplicationInput = {
    type = "structure",
    members = {
        ApplicationId = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.StartApplicationOutput = {
    type = "structure",
    members = {
        OperationId = {
            type = "string",
        },
    },
}

M.StartApplicationRefreshInput = {
    type = "structure",
    members = {
        ApplicationId = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.StartApplicationRefreshOutput = {
    type = "structure",
    members = {
        OperationId = {
            type = "string",
        },
    },
}

M.StartConfigurationChecksInput = {
    type = "structure",
    members = {
        ApplicationId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        ConfigurationCheckIds = {
            type = "list",
            member_type = "string",
        },
    },
}

M.StartConfigurationChecksOutput = {
    type = "structure",
    members = {
        ConfigurationCheckOperations = {
            type = "list",
            member_type = "structure",
        },
    },
}

M.StopApplicationInput = {
    type = "structure",
    members = {
        ApplicationId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        StopConnectedEntity = {
            type = "string",
        },
        IncludeEc2InstanceShutdown = {
            type = "boolean",
        },
    },
}

M.StopApplicationOutput = {
    type = "structure",
    members = {
        OperationId = {
            type = "string",
        },
    },
}

M.TagResourceInput = {
    type = "structure",
    members = {
        resourceArn = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        tags = {
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
        resourceArn = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        tagKeys = {
            type = "list",
            member_type = "string",
            traits = {
                http_query = "tagKeys",
                required = true,
            },
        },
    },
}

M.UntagResourceOutput = {
    type = "structure",
}

M.UpdateApplicationSettingsInput = {
    type = "structure",
    members = {
        ApplicationId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        CredentialsToAddOrUpdate = {
            type = "list",
            member_type = "structure",
        },
        CredentialsToRemove = {
            type = "list",
            member_type = "structure",
        },
        Backint = {
            type = "structure",
        },
        DatabaseArn = {
            type = "string",
        },
    },
}

M.UpdateApplicationSettingsOutput = {
    type = "structure",
    members = {
        Message = {
            type = "string",
        },
        OperationIds = {
            type = "list",
            member_type = "string",
        },
    },
}

return M
