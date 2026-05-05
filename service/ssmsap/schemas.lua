local id = require("smithy.shape_id")
local schema = require("smithy.schema")
local prelude = require("smithy.prelude")
local traits = require("smithy.traits")

local _N = "com.amazonaws.ssmsap"

local M = {}

M.Application = schema.new({
    id = id.from(_N, "Application"),
    type = "structure",
    members = {
        Id = schema.new({
            id = id.from(_N, "Application", "Id"),
            type = "string",
            name = "Id",
            target_id = prelude.String.id,
        }),
        Type = schema.new({
            id = id.from(_N, "Application", "Type"),
            type = "string",
            name = "Type",
            target_id = prelude.String.id,
        }),
        Arn = schema.new({
            id = id.from(_N, "Application", "Arn"),
            type = "string",
            name = "Arn",
            target_id = prelude.String.id,
        }),
        AppRegistryArn = schema.new({
            id = id.from(_N, "Application", "AppRegistryArn"),
            type = "string",
            name = "AppRegistryArn",
            target_id = prelude.String.id,
        }),
        Status = schema.new({
            id = id.from(_N, "Application", "Status"),
            type = "string",
            name = "Status",
            target_id = prelude.String.id,
        }),
        DiscoveryStatus = schema.new({
            id = id.from(_N, "Application", "DiscoveryStatus"),
            type = "string",
            name = "DiscoveryStatus",
            target_id = prelude.String.id,
        }),
        Components = schema.new({
            id = id.from(_N, "Application", "Components"),
            type = "list",
            name = "Components",
            target_id = prelude.Document.id,
            list_member = prelude.String,
        }),
        LastUpdated = schema.new({
            id = id.from(_N, "Application", "LastUpdated"),
            type = "timestamp",
            name = "LastUpdated",
            target_id = prelude.Timestamp.id,
        }),
        StatusMessage = schema.new({
            id = id.from(_N, "Application", "StatusMessage"),
            type = "string",
            name = "StatusMessage",
            target_id = prelude.String.id,
        }),
        AssociatedApplicationArns = schema.new({
            id = id.from(_N, "Application", "AssociatedApplicationArns"),
            type = "list",
            name = "AssociatedApplicationArns",
            target_id = prelude.Document.id,
            list_member = prelude.String,
        }),
    },
})

M.ApplicationCredential = schema.new({
    id = id.from(_N, "ApplicationCredential"),
    type = "structure",
    members = {
        DatabaseName = schema.new({
            id = id.from(_N, "ApplicationCredential", "DatabaseName"),
            type = "string",
            name = "DatabaseName",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        CredentialType = schema.new({
            id = id.from(_N, "ApplicationCredential", "CredentialType"),
            type = "string",
            name = "CredentialType",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        SecretId = schema.new({
            id = id.from(_N, "ApplicationCredential", "SecretId"),
            type = "string",
            name = "SecretId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.ApplicationSummary = schema.new({
    id = id.from(_N, "ApplicationSummary"),
    type = "structure",
    members = {
        Id = schema.new({
            id = id.from(_N, "ApplicationSummary", "Id"),
            type = "string",
            name = "Id",
            target_id = prelude.String.id,
        }),
        DiscoveryStatus = schema.new({
            id = id.from(_N, "ApplicationSummary", "DiscoveryStatus"),
            type = "string",
            name = "DiscoveryStatus",
            target_id = prelude.String.id,
        }),
        Type = schema.new({
            id = id.from(_N, "ApplicationSummary", "Type"),
            type = "string",
            name = "Type",
            target_id = prelude.String.id,
        }),
        Arn = schema.new({
            id = id.from(_N, "ApplicationSummary", "Arn"),
            type = "string",
            name = "Arn",
            target_id = prelude.String.id,
        }),
        Tags = schema.new({
            id = id.from(_N, "ApplicationSummary", "Tags"),
            type = "map",
            name = "Tags",
            target_id = prelude.Document.id,
            map_key = prelude.String,
            map_value = prelude.String,
        }),
    },
})

M.IpAddressMember = schema.new({
    id = id.from(_N, "IpAddressMember"),
    type = "structure",
    members = {
        IpAddress = schema.new({
            id = id.from(_N, "IpAddressMember", "IpAddress"),
            type = "string",
            name = "IpAddress",
            target_id = prelude.String.id,
        }),
        Primary = schema.new({
            id = id.from(_N, "IpAddressMember", "Primary"),
            type = "boolean",
            name = "Primary",
            target_id = prelude.Boolean.id,
        }),
        AllocationType = schema.new({
            id = id.from(_N, "IpAddressMember", "AllocationType"),
            type = "string",
            name = "AllocationType",
            target_id = prelude.String.id,
        }),
    },
})

M.AssociatedHost = schema.new({
    id = id.from(_N, "AssociatedHost"),
    type = "structure",
    members = {
        Hostname = schema.new({
            id = id.from(_N, "AssociatedHost", "Hostname"),
            type = "string",
            name = "Hostname",
            target_id = prelude.String.id,
        }),
        Ec2InstanceId = schema.new({
            id = id.from(_N, "AssociatedHost", "Ec2InstanceId"),
            type = "string",
            name = "Ec2InstanceId",
            target_id = prelude.String.id,
        }),
        IpAddresses = schema.new({
            id = id.from(_N, "AssociatedHost", "IpAddresses"),
            type = "list",
            name = "IpAddresses",
            target_id = prelude.Document.id,
            list_member = M.IpAddressMember,
        }),
        OsVersion = schema.new({
            id = id.from(_N, "AssociatedHost", "OsVersion"),
            type = "string",
            name = "OsVersion",
            target_id = prelude.String.id,
        }),
    },
})

M.BackintConfig = schema.new({
    id = id.from(_N, "BackintConfig"),
    type = "structure",
    members = {
        BackintMode = schema.new({
            id = id.from(_N, "BackintConfig", "BackintMode"),
            type = "string",
            name = "BackintMode",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        EnsureNoBackupInProcess = schema.new({
            id = id.from(_N, "BackintConfig", "EnsureNoBackupInProcess"),
            type = "boolean",
            name = "EnsureNoBackupInProcess",
            target_id = prelude.Boolean.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.DatabaseConnection = schema.new({
    id = id.from(_N, "DatabaseConnection"),
    type = "structure",
    members = {
        DatabaseConnectionMethod = schema.new({
            id = id.from(_N, "DatabaseConnection", "DatabaseConnectionMethod"),
            type = "string",
            name = "DatabaseConnectionMethod",
            target_id = prelude.String.id,
        }),
        DatabaseArn = schema.new({
            id = id.from(_N, "DatabaseConnection", "DatabaseArn"),
            type = "string",
            name = "DatabaseArn",
            target_id = prelude.String.id,
        }),
        ConnectionIp = schema.new({
            id = id.from(_N, "DatabaseConnection", "ConnectionIp"),
            type = "string",
            name = "ConnectionIp",
            target_id = prelude.String.id,
        }),
    },
})

M.Host = schema.new({
    id = id.from(_N, "Host"),
    type = "structure",
    members = {
        HostName = schema.new({
            id = id.from(_N, "Host", "HostName"),
            type = "string",
            name = "HostName",
            target_id = prelude.String.id,
        }),
        HostIp = schema.new({
            id = id.from(_N, "Host", "HostIp"),
            type = "string",
            name = "HostIp",
            target_id = prelude.String.id,
        }),
        EC2InstanceId = schema.new({
            id = id.from(_N, "Host", "EC2InstanceId"),
            type = "string",
            name = "EC2InstanceId",
            target_id = prelude.String.id,
        }),
        InstanceId = schema.new({
            id = id.from(_N, "Host", "InstanceId"),
            type = "string",
            name = "InstanceId",
            target_id = prelude.String.id,
        }),
        HostRole = schema.new({
            id = id.from(_N, "Host", "HostRole"),
            type = "string",
            name = "HostRole",
            target_id = prelude.String.id,
        }),
        OsVersion = schema.new({
            id = id.from(_N, "Host", "OsVersion"),
            type = "string",
            name = "OsVersion",
            target_id = prelude.String.id,
        }),
    },
})

M.Resilience = schema.new({
    id = id.from(_N, "Resilience"),
    type = "structure",
    members = {
        HsrTier = schema.new({
            id = id.from(_N, "Resilience", "HsrTier"),
            type = "string",
            name = "HsrTier",
            target_id = prelude.String.id,
        }),
        HsrReplicationMode = schema.new({
            id = id.from(_N, "Resilience", "HsrReplicationMode"),
            type = "string",
            name = "HsrReplicationMode",
            target_id = prelude.String.id,
        }),
        HsrOperationMode = schema.new({
            id = id.from(_N, "Resilience", "HsrOperationMode"),
            type = "string",
            name = "HsrOperationMode",
            target_id = prelude.String.id,
        }),
        ClusterStatus = schema.new({
            id = id.from(_N, "Resilience", "ClusterStatus"),
            type = "string",
            name = "ClusterStatus",
            target_id = prelude.String.id,
        }),
        EnqueueReplication = schema.new({
            id = id.from(_N, "Resilience", "EnqueueReplication"),
            type = "boolean",
            name = "EnqueueReplication",
            target_id = prelude.Boolean.id,
        }),
    },
})

M.Component = schema.new({
    id = id.from(_N, "Component"),
    type = "structure",
    members = {
        ComponentId = schema.new({
            id = id.from(_N, "Component", "ComponentId"),
            type = "string",
            name = "ComponentId",
            target_id = prelude.String.id,
        }),
        Sid = schema.new({
            id = id.from(_N, "Component", "Sid"),
            type = "string",
            name = "Sid",
            target_id = prelude.String.id,
        }),
        SystemNumber = schema.new({
            id = id.from(_N, "Component", "SystemNumber"),
            type = "string",
            name = "SystemNumber",
            target_id = prelude.String.id,
        }),
        ParentComponent = schema.new({
            id = id.from(_N, "Component", "ParentComponent"),
            type = "string",
            name = "ParentComponent",
            target_id = prelude.String.id,
        }),
        ChildComponents = schema.new({
            id = id.from(_N, "Component", "ChildComponents"),
            type = "list",
            name = "ChildComponents",
            target_id = prelude.Document.id,
            list_member = prelude.String,
        }),
        ApplicationId = schema.new({
            id = id.from(_N, "Component", "ApplicationId"),
            type = "string",
            name = "ApplicationId",
            target_id = prelude.String.id,
        }),
        ComponentType = schema.new({
            id = id.from(_N, "Component", "ComponentType"),
            type = "string",
            name = "ComponentType",
            target_id = prelude.String.id,
        }),
        Status = schema.new({
            id = id.from(_N, "Component", "Status"),
            type = "string",
            name = "Status",
            target_id = prelude.String.id,
        }),
        SapHostname = schema.new({
            id = id.from(_N, "Component", "SapHostname"),
            type = "string",
            name = "SapHostname",
            target_id = prelude.String.id,
        }),
        SapFeature = schema.new({
            id = id.from(_N, "Component", "SapFeature"),
            type = "string",
            name = "SapFeature",
            target_id = prelude.String.id,
        }),
        SapKernelVersion = schema.new({
            id = id.from(_N, "Component", "SapKernelVersion"),
            type = "string",
            name = "SapKernelVersion",
            target_id = prelude.String.id,
        }),
        HdbVersion = schema.new({
            id = id.from(_N, "Component", "HdbVersion"),
            type = "string",
            name = "HdbVersion",
            target_id = prelude.String.id,
        }),
        Resilience = schema.new({
            id = id.from(_N, "Component", "Resilience"),
            type = "structure",
            name = "Resilience",
            target_id = id.from(_N, "Resilience"),
            target = M.Resilience,
        }),
        AssociatedHost = schema.new({
            id = id.from(_N, "Component", "AssociatedHost"),
            type = "structure",
            name = "AssociatedHost",
            target_id = id.from(_N, "AssociatedHost"),
            target = M.AssociatedHost,
        }),
        Databases = schema.new({
            id = id.from(_N, "Component", "Databases"),
            type = "list",
            name = "Databases",
            target_id = prelude.Document.id,
            list_member = prelude.String,
        }),
        Hosts = schema.new({
            id = id.from(_N, "Component", "Hosts"),
            type = "list",
            name = "Hosts",
            target_id = prelude.Document.id,
            list_member = M.Host,
        }),
        PrimaryHost = schema.new({
            id = id.from(_N, "Component", "PrimaryHost"),
            type = "string",
            name = "PrimaryHost",
            target_id = prelude.String.id,
        }),
        DatabaseConnection = schema.new({
            id = id.from(_N, "Component", "DatabaseConnection"),
            type = "structure",
            name = "DatabaseConnection",
            target_id = id.from(_N, "DatabaseConnection"),
            target = M.DatabaseConnection,
        }),
        LastUpdated = schema.new({
            id = id.from(_N, "Component", "LastUpdated"),
            type = "timestamp",
            name = "LastUpdated",
            target_id = prelude.Timestamp.id,
        }),
        Arn = schema.new({
            id = id.from(_N, "Component", "Arn"),
            type = "string",
            name = "Arn",
            target_id = prelude.String.id,
        }),
    },
})

M.ComponentInfo = schema.new({
    id = id.from(_N, "ComponentInfo"),
    type = "structure",
    members = {
        ComponentType = schema.new({
            id = id.from(_N, "ComponentInfo", "ComponentType"),
            type = "string",
            name = "ComponentType",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        Sid = schema.new({
            id = id.from(_N, "ComponentInfo", "Sid"),
            type = "string",
            name = "Sid",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        Ec2InstanceId = schema.new({
            id = id.from(_N, "ComponentInfo", "Ec2InstanceId"),
            type = "string",
            name = "Ec2InstanceId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.ComponentSummary = schema.new({
    id = id.from(_N, "ComponentSummary"),
    type = "structure",
    members = {
        ApplicationId = schema.new({
            id = id.from(_N, "ComponentSummary", "ApplicationId"),
            type = "string",
            name = "ApplicationId",
            target_id = prelude.String.id,
        }),
        ComponentId = schema.new({
            id = id.from(_N, "ComponentSummary", "ComponentId"),
            type = "string",
            name = "ComponentId",
            target_id = prelude.String.id,
        }),
        ComponentType = schema.new({
            id = id.from(_N, "ComponentSummary", "ComponentType"),
            type = "string",
            name = "ComponentType",
            target_id = prelude.String.id,
        }),
        Tags = schema.new({
            id = id.from(_N, "ComponentSummary", "Tags"),
            type = "map",
            name = "Tags",
            target_id = prelude.Document.id,
            map_key = prelude.String,
            map_value = prelude.String,
        }),
        Arn = schema.new({
            id = id.from(_N, "ComponentSummary", "Arn"),
            type = "string",
            name = "Arn",
            target_id = prelude.String.id,
        }),
    },
})

M.ConfigurationCheckDefinition = schema.new({
    id = id.from(_N, "ConfigurationCheckDefinition"),
    type = "structure",
    members = {
        Id = schema.new({
            id = id.from(_N, "ConfigurationCheckDefinition", "Id"),
            type = "string",
            name = "Id",
            target_id = prelude.String.id,
        }),
        Name = schema.new({
            id = id.from(_N, "ConfigurationCheckDefinition", "Name"),
            type = "string",
            name = "Name",
            target_id = prelude.String.id,
        }),
        Description = schema.new({
            id = id.from(_N, "ConfigurationCheckDefinition", "Description"),
            type = "string",
            name = "Description",
            target_id = prelude.String.id,
        }),
        ApplicableApplicationTypes = schema.new({
            id = id.from(_N, "ConfigurationCheckDefinition", "ApplicableApplicationTypes"),
            type = "list",
            name = "ApplicableApplicationTypes",
            target_id = prelude.Document.id,
            list_member = prelude.String,
        }),
    },
})

M.RuleStatusCounts = schema.new({
    id = id.from(_N, "RuleStatusCounts"),
    type = "structure",
    members = {
        Failed = schema.new({
            id = id.from(_N, "RuleStatusCounts", "Failed"),
            type = "integer",
            name = "Failed",
            target_id = prelude.Integer.id,
        }),
        Warning = schema.new({
            id = id.from(_N, "RuleStatusCounts", "Warning"),
            type = "integer",
            name = "Warning",
            target_id = prelude.Integer.id,
        }),
        Info = schema.new({
            id = id.from(_N, "RuleStatusCounts", "Info"),
            type = "integer",
            name = "Info",
            target_id = prelude.Integer.id,
        }),
        Passed = schema.new({
            id = id.from(_N, "RuleStatusCounts", "Passed"),
            type = "integer",
            name = "Passed",
            target_id = prelude.Integer.id,
        }),
        Unknown = schema.new({
            id = id.from(_N, "RuleStatusCounts", "Unknown"),
            type = "integer",
            name = "Unknown",
            target_id = prelude.Integer.id,
        }),
    },
})

M.ConfigurationCheckOperation = schema.new({
    id = id.from(_N, "ConfigurationCheckOperation"),
    type = "structure",
    members = {
        Id = schema.new({
            id = id.from(_N, "ConfigurationCheckOperation", "Id"),
            type = "string",
            name = "Id",
            target_id = prelude.String.id,
        }),
        ApplicationId = schema.new({
            id = id.from(_N, "ConfigurationCheckOperation", "ApplicationId"),
            type = "string",
            name = "ApplicationId",
            target_id = prelude.String.id,
        }),
        Status = schema.new({
            id = id.from(_N, "ConfigurationCheckOperation", "Status"),
            type = "string",
            name = "Status",
            target_id = prelude.String.id,
        }),
        StatusMessage = schema.new({
            id = id.from(_N, "ConfigurationCheckOperation", "StatusMessage"),
            type = "string",
            name = "StatusMessage",
            target_id = prelude.String.id,
        }),
        ConfigurationCheckId = schema.new({
            id = id.from(_N, "ConfigurationCheckOperation", "ConfigurationCheckId"),
            type = "string",
            name = "ConfigurationCheckId",
            target_id = prelude.String.id,
        }),
        ConfigurationCheckName = schema.new({
            id = id.from(_N, "ConfigurationCheckOperation", "ConfigurationCheckName"),
            type = "string",
            name = "ConfigurationCheckName",
            target_id = prelude.String.id,
        }),
        ConfigurationCheckDescription = schema.new({
            id = id.from(_N, "ConfigurationCheckOperation", "ConfigurationCheckDescription"),
            type = "string",
            name = "ConfigurationCheckDescription",
            target_id = prelude.String.id,
        }),
        StartTime = schema.new({
            id = id.from(_N, "ConfigurationCheckOperation", "StartTime"),
            type = "timestamp",
            name = "StartTime",
            target_id = prelude.Timestamp.id,
        }),
        EndTime = schema.new({
            id = id.from(_N, "ConfigurationCheckOperation", "EndTime"),
            type = "timestamp",
            name = "EndTime",
            target_id = prelude.Timestamp.id,
        }),
        RuleStatusCounts = schema.new({
            id = id.from(_N, "ConfigurationCheckOperation", "RuleStatusCounts"),
            type = "structure",
            name = "RuleStatusCounts",
            target_id = id.from(_N, "RuleStatusCounts"),
            target = M.RuleStatusCounts,
        }),
    },
})

M.ConflictException = schema.new({
    id = id.from(_N, "ConflictException"),
    type = "structure",
    traits = {
        [traits.ERROR] = { value = "client" },
    },
    members = {
        Message = schema.new({
            id = id.from(_N, "ConflictException", "Message"),
            type = "string",
            name = "Message",
            target_id = prelude.String.id,
        }),
    },
})

M.Database = schema.new({
    id = id.from(_N, "Database"),
    type = "structure",
    members = {
        ApplicationId = schema.new({
            id = id.from(_N, "Database", "ApplicationId"),
            type = "string",
            name = "ApplicationId",
            target_id = prelude.String.id,
        }),
        ComponentId = schema.new({
            id = id.from(_N, "Database", "ComponentId"),
            type = "string",
            name = "ComponentId",
            target_id = prelude.String.id,
        }),
        Credentials = schema.new({
            id = id.from(_N, "Database", "Credentials"),
            type = "list",
            name = "Credentials",
            target_id = prelude.Document.id,
            list_member = M.ApplicationCredential,
        }),
        DatabaseId = schema.new({
            id = id.from(_N, "Database", "DatabaseId"),
            type = "string",
            name = "DatabaseId",
            target_id = prelude.String.id,
        }),
        DatabaseName = schema.new({
            id = id.from(_N, "Database", "DatabaseName"),
            type = "string",
            name = "DatabaseName",
            target_id = prelude.String.id,
        }),
        DatabaseType = schema.new({
            id = id.from(_N, "Database", "DatabaseType"),
            type = "string",
            name = "DatabaseType",
            target_id = prelude.String.id,
        }),
        Arn = schema.new({
            id = id.from(_N, "Database", "Arn"),
            type = "string",
            name = "Arn",
            target_id = prelude.String.id,
        }),
        Status = schema.new({
            id = id.from(_N, "Database", "Status"),
            type = "string",
            name = "Status",
            target_id = prelude.String.id,
        }),
        PrimaryHost = schema.new({
            id = id.from(_N, "Database", "PrimaryHost"),
            type = "string",
            name = "PrimaryHost",
            target_id = prelude.String.id,
        }),
        SQLPort = schema.new({
            id = id.from(_N, "Database", "SQLPort"),
            type = "integer",
            name = "SQLPort",
            target_id = prelude.Integer.id,
        }),
        LastUpdated = schema.new({
            id = id.from(_N, "Database", "LastUpdated"),
            type = "timestamp",
            name = "LastUpdated",
            target_id = prelude.Timestamp.id,
        }),
        ConnectedComponentArns = schema.new({
            id = id.from(_N, "Database", "ConnectedComponentArns"),
            type = "list",
            name = "ConnectedComponentArns",
            target_id = prelude.Document.id,
            list_member = prelude.String,
        }),
    },
})

M.DatabaseSummary = schema.new({
    id = id.from(_N, "DatabaseSummary"),
    type = "structure",
    members = {
        ApplicationId = schema.new({
            id = id.from(_N, "DatabaseSummary", "ApplicationId"),
            type = "string",
            name = "ApplicationId",
            target_id = prelude.String.id,
        }),
        ComponentId = schema.new({
            id = id.from(_N, "DatabaseSummary", "ComponentId"),
            type = "string",
            name = "ComponentId",
            target_id = prelude.String.id,
        }),
        DatabaseId = schema.new({
            id = id.from(_N, "DatabaseSummary", "DatabaseId"),
            type = "string",
            name = "DatabaseId",
            target_id = prelude.String.id,
        }),
        DatabaseType = schema.new({
            id = id.from(_N, "DatabaseSummary", "DatabaseType"),
            type = "string",
            name = "DatabaseType",
            target_id = prelude.String.id,
        }),
        Arn = schema.new({
            id = id.from(_N, "DatabaseSummary", "Arn"),
            type = "string",
            name = "Arn",
            target_id = prelude.String.id,
        }),
        Tags = schema.new({
            id = id.from(_N, "DatabaseSummary", "Tags"),
            type = "map",
            name = "Tags",
            target_id = prelude.Document.id,
            map_key = prelude.String,
            map_value = prelude.String,
        }),
    },
})

M.DeleteResourcePermissionInput = schema.new({
    id = id.from(_N, "DeleteResourcePermissionInput"),
    type = "structure",
    members = {
        ActionType = schema.new({
            id = id.from(_N, "DeleteResourcePermissionInput", "ActionType"),
            type = "string",
            name = "ActionType",
            target_id = prelude.String.id,
        }),
        SourceResourceArn = schema.new({
            id = id.from(_N, "DeleteResourcePermissionInput", "SourceResourceArn"),
            type = "string",
            name = "SourceResourceArn",
            target_id = prelude.String.id,
        }),
        ResourceArn = schema.new({
            id = id.from(_N, "DeleteResourcePermissionInput", "ResourceArn"),
            type = "string",
            name = "ResourceArn",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.DeleteResourcePermissionOutput = schema.new({
    id = id.from(_N, "DeleteResourcePermissionOutput"),
    type = "structure",
    members = {
        Policy = schema.new({
            id = id.from(_N, "DeleteResourcePermissionOutput", "Policy"),
            type = "string",
            name = "Policy",
            target_id = prelude.String.id,
        }),
    },
})

M.InternalServerException = schema.new({
    id = id.from(_N, "InternalServerException"),
    type = "structure",
    traits = {
        [traits.ERROR] = { value = "server" },
    },
    members = {
        Message = schema.new({
            id = id.from(_N, "InternalServerException", "Message"),
            type = "string",
            name = "Message",
            target_id = prelude.String.id,
        }),
    },
})

M.ResourceNotFoundException = schema.new({
    id = id.from(_N, "ResourceNotFoundException"),
    type = "structure",
    traits = {
        [traits.ERROR] = { value = "client" },
    },
    members = {
        Message = schema.new({
            id = id.from(_N, "ResourceNotFoundException", "Message"),
            type = "string",
            name = "Message",
            target_id = prelude.String.id,
        }),
    },
})

M.ValidationException = schema.new({
    id = id.from(_N, "ValidationException"),
    type = "structure",
    traits = {
        [traits.ERROR] = { value = "client" },
    },
    members = {
        Message = schema.new({
            id = id.from(_N, "ValidationException", "Message"),
            type = "string",
            name = "Message",
            target_id = prelude.String.id,
        }),
    },
})

M.DeregisterApplicationInput = schema.new({
    id = id.from(_N, "DeregisterApplicationInput"),
    type = "structure",
    members = {
        ApplicationId = schema.new({
            id = id.from(_N, "DeregisterApplicationInput", "ApplicationId"),
            type = "string",
            name = "ApplicationId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.DeregisterApplicationOutput = schema.new({
    id = id.from(_N, "DeregisterApplicationOutput"),
    type = "structure",
})

M.UnauthorizedException = schema.new({
    id = id.from(_N, "UnauthorizedException"),
    type = "structure",
    traits = {
        [traits.ERROR] = { value = "client" },
    },
    members = {
        Message = schema.new({
            id = id.from(_N, "UnauthorizedException", "Message"),
            type = "string",
            name = "Message",
            target_id = prelude.String.id,
        }),
    },
})

M.Filter = schema.new({
    id = id.from(_N, "Filter"),
    type = "structure",
    members = {
        Name = schema.new({
            id = id.from(_N, "Filter", "Name"),
            type = "string",
            name = "Name",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        Value = schema.new({
            id = id.from(_N, "Filter", "Value"),
            type = "string",
            name = "Value",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        Operator = schema.new({
            id = id.from(_N, "Filter", "Operator"),
            type = "string",
            name = "Operator",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.GetApplicationInput = schema.new({
    id = id.from(_N, "GetApplicationInput"),
    type = "structure",
    members = {
        ApplicationId = schema.new({
            id = id.from(_N, "GetApplicationInput", "ApplicationId"),
            type = "string",
            name = "ApplicationId",
            target_id = prelude.String.id,
        }),
        ApplicationArn = schema.new({
            id = id.from(_N, "GetApplicationInput", "ApplicationArn"),
            type = "string",
            name = "ApplicationArn",
            target_id = prelude.String.id,
        }),
        AppRegistryArn = schema.new({
            id = id.from(_N, "GetApplicationInput", "AppRegistryArn"),
            type = "string",
            name = "AppRegistryArn",
            target_id = prelude.String.id,
        }),
    },
})

M.GetApplicationOutput = schema.new({
    id = id.from(_N, "GetApplicationOutput"),
    type = "structure",
    members = {
        Application = schema.new({
            id = id.from(_N, "GetApplicationOutput", "Application"),
            type = "structure",
            name = "Application",
            target_id = id.from(_N, "Application"),
            target = M.Application,
        }),
        Tags = schema.new({
            id = id.from(_N, "GetApplicationOutput", "Tags"),
            type = "map",
            name = "Tags",
            target_id = prelude.Document.id,
            map_key = prelude.String,
            map_value = prelude.String,
        }),
    },
})

M.GetComponentInput = schema.new({
    id = id.from(_N, "GetComponentInput"),
    type = "structure",
    members = {
        ApplicationId = schema.new({
            id = id.from(_N, "GetComponentInput", "ApplicationId"),
            type = "string",
            name = "ApplicationId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        ComponentId = schema.new({
            id = id.from(_N, "GetComponentInput", "ComponentId"),
            type = "string",
            name = "ComponentId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.GetComponentOutput = schema.new({
    id = id.from(_N, "GetComponentOutput"),
    type = "structure",
    members = {
        Component = schema.new({
            id = id.from(_N, "GetComponentOutput", "Component"),
            type = "structure",
            name = "Component",
            target_id = id.from(_N, "Component"),
            target = M.Component,
        }),
        Tags = schema.new({
            id = id.from(_N, "GetComponentOutput", "Tags"),
            type = "map",
            name = "Tags",
            target_id = prelude.Document.id,
            map_key = prelude.String,
            map_value = prelude.String,
        }),
    },
})

M.GetConfigurationCheckOperationInput = schema.new({
    id = id.from(_N, "GetConfigurationCheckOperationInput"),
    type = "structure",
    members = {
        OperationId = schema.new({
            id = id.from(_N, "GetConfigurationCheckOperationInput", "OperationId"),
            type = "string",
            name = "OperationId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.GetConfigurationCheckOperationOutput = schema.new({
    id = id.from(_N, "GetConfigurationCheckOperationOutput"),
    type = "structure",
    members = {
        ConfigurationCheckOperation = schema.new({
            id = id.from(_N, "GetConfigurationCheckOperationOutput", "ConfigurationCheckOperation"),
            type = "structure",
            name = "ConfigurationCheckOperation",
            target_id = id.from(_N, "ConfigurationCheckOperation"),
            target = M.ConfigurationCheckOperation,
        }),
    },
})

M.GetDatabaseInput = schema.new({
    id = id.from(_N, "GetDatabaseInput"),
    type = "structure",
    members = {
        ApplicationId = schema.new({
            id = id.from(_N, "GetDatabaseInput", "ApplicationId"),
            type = "string",
            name = "ApplicationId",
            target_id = prelude.String.id,
        }),
        ComponentId = schema.new({
            id = id.from(_N, "GetDatabaseInput", "ComponentId"),
            type = "string",
            name = "ComponentId",
            target_id = prelude.String.id,
        }),
        DatabaseId = schema.new({
            id = id.from(_N, "GetDatabaseInput", "DatabaseId"),
            type = "string",
            name = "DatabaseId",
            target_id = prelude.String.id,
        }),
        DatabaseArn = schema.new({
            id = id.from(_N, "GetDatabaseInput", "DatabaseArn"),
            type = "string",
            name = "DatabaseArn",
            target_id = prelude.String.id,
        }),
    },
})

M.GetDatabaseOutput = schema.new({
    id = id.from(_N, "GetDatabaseOutput"),
    type = "structure",
    members = {
        Database = schema.new({
            id = id.from(_N, "GetDatabaseOutput", "Database"),
            type = "structure",
            name = "Database",
            target_id = id.from(_N, "Database"),
            target = M.Database,
        }),
        Tags = schema.new({
            id = id.from(_N, "GetDatabaseOutput", "Tags"),
            type = "map",
            name = "Tags",
            target_id = prelude.Document.id,
            map_key = prelude.String,
            map_value = prelude.String,
        }),
    },
})

M.GetOperationInput = schema.new({
    id = id.from(_N, "GetOperationInput"),
    type = "structure",
    members = {
        OperationId = schema.new({
            id = id.from(_N, "GetOperationInput", "OperationId"),
            type = "string",
            name = "OperationId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.Operation = schema.new({
    id = id.from(_N, "Operation"),
    type = "structure",
    members = {
        Id = schema.new({
            id = id.from(_N, "Operation", "Id"),
            type = "string",
            name = "Id",
            target_id = prelude.String.id,
        }),
        Type = schema.new({
            id = id.from(_N, "Operation", "Type"),
            type = "string",
            name = "Type",
            target_id = prelude.String.id,
        }),
        Status = schema.new({
            id = id.from(_N, "Operation", "Status"),
            type = "string",
            name = "Status",
            target_id = prelude.String.id,
        }),
        StatusMessage = schema.new({
            id = id.from(_N, "Operation", "StatusMessage"),
            type = "string",
            name = "StatusMessage",
            target_id = prelude.String.id,
        }),
        Properties = schema.new({
            id = id.from(_N, "Operation", "Properties"),
            type = "map",
            name = "Properties",
            target_id = prelude.Document.id,
            map_key = prelude.String,
            map_value = prelude.String,
        }),
        ResourceType = schema.new({
            id = id.from(_N, "Operation", "ResourceType"),
            type = "string",
            name = "ResourceType",
            target_id = prelude.String.id,
        }),
        ResourceId = schema.new({
            id = id.from(_N, "Operation", "ResourceId"),
            type = "string",
            name = "ResourceId",
            target_id = prelude.String.id,
        }),
        ResourceArn = schema.new({
            id = id.from(_N, "Operation", "ResourceArn"),
            type = "string",
            name = "ResourceArn",
            target_id = prelude.String.id,
        }),
        StartTime = schema.new({
            id = id.from(_N, "Operation", "StartTime"),
            type = "timestamp",
            name = "StartTime",
            target_id = prelude.Timestamp.id,
        }),
        EndTime = schema.new({
            id = id.from(_N, "Operation", "EndTime"),
            type = "timestamp",
            name = "EndTime",
            target_id = prelude.Timestamp.id,
        }),
        LastUpdatedTime = schema.new({
            id = id.from(_N, "Operation", "LastUpdatedTime"),
            type = "timestamp",
            name = "LastUpdatedTime",
            target_id = prelude.Timestamp.id,
        }),
    },
})

M.GetOperationOutput = schema.new({
    id = id.from(_N, "GetOperationOutput"),
    type = "structure",
    members = {
        Operation = schema.new({
            id = id.from(_N, "GetOperationOutput", "Operation"),
            type = "structure",
            name = "Operation",
            target_id = id.from(_N, "Operation"),
            target = M.Operation,
        }),
    },
})

M.GetResourcePermissionInput = schema.new({
    id = id.from(_N, "GetResourcePermissionInput"),
    type = "structure",
    members = {
        ActionType = schema.new({
            id = id.from(_N, "GetResourcePermissionInput", "ActionType"),
            type = "string",
            name = "ActionType",
            target_id = prelude.String.id,
        }),
        ResourceArn = schema.new({
            id = id.from(_N, "GetResourcePermissionInput", "ResourceArn"),
            type = "string",
            name = "ResourceArn",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.GetResourcePermissionOutput = schema.new({
    id = id.from(_N, "GetResourcePermissionOutput"),
    type = "structure",
    members = {
        Policy = schema.new({
            id = id.from(_N, "GetResourcePermissionOutput", "Policy"),
            type = "string",
            name = "Policy",
            target_id = prelude.String.id,
        }),
    },
})

M.ListApplicationsInput = schema.new({
    id = id.from(_N, "ListApplicationsInput"),
    type = "structure",
    members = {
        NextToken = schema.new({
            id = id.from(_N, "ListApplicationsInput", "NextToken"),
            type = "string",
            name = "NextToken",
            target_id = prelude.String.id,
        }),
        MaxResults = schema.new({
            id = id.from(_N, "ListApplicationsInput", "MaxResults"),
            type = "integer",
            name = "MaxResults",
            target_id = prelude.Integer.id,
            traits = {
                [traits.DEFAULT] = { value = nil },
            },
        }),
        Filters = schema.new({
            id = id.from(_N, "ListApplicationsInput", "Filters"),
            type = "list",
            name = "Filters",
            target_id = prelude.Document.id,
            list_member = M.Filter,
        }),
    },
})

M.ListApplicationsOutput = schema.new({
    id = id.from(_N, "ListApplicationsOutput"),
    type = "structure",
    members = {
        Applications = schema.new({
            id = id.from(_N, "ListApplicationsOutput", "Applications"),
            type = "list",
            name = "Applications",
            target_id = prelude.Document.id,
            list_member = M.ApplicationSummary,
        }),
        NextToken = schema.new({
            id = id.from(_N, "ListApplicationsOutput", "NextToken"),
            type = "string",
            name = "NextToken",
            target_id = prelude.String.id,
        }),
    },
})

M.ListComponentsInput = schema.new({
    id = id.from(_N, "ListComponentsInput"),
    type = "structure",
    members = {
        ApplicationId = schema.new({
            id = id.from(_N, "ListComponentsInput", "ApplicationId"),
            type = "string",
            name = "ApplicationId",
            target_id = prelude.String.id,
        }),
        NextToken = schema.new({
            id = id.from(_N, "ListComponentsInput", "NextToken"),
            type = "string",
            name = "NextToken",
            target_id = prelude.String.id,
        }),
        MaxResults = schema.new({
            id = id.from(_N, "ListComponentsInput", "MaxResults"),
            type = "integer",
            name = "MaxResults",
            target_id = prelude.Integer.id,
            traits = {
                [traits.DEFAULT] = { value = nil },
            },
        }),
    },
})

M.ListComponentsOutput = schema.new({
    id = id.from(_N, "ListComponentsOutput"),
    type = "structure",
    members = {
        Components = schema.new({
            id = id.from(_N, "ListComponentsOutput", "Components"),
            type = "list",
            name = "Components",
            target_id = prelude.Document.id,
            list_member = M.ComponentSummary,
        }),
        NextToken = schema.new({
            id = id.from(_N, "ListComponentsOutput", "NextToken"),
            type = "string",
            name = "NextToken",
            target_id = prelude.String.id,
        }),
    },
})

M.ListConfigurationCheckDefinitionsInput = schema.new({
    id = id.from(_N, "ListConfigurationCheckDefinitionsInput"),
    type = "structure",
    members = {
        MaxResults = schema.new({
            id = id.from(_N, "ListConfigurationCheckDefinitionsInput", "MaxResults"),
            type = "integer",
            name = "MaxResults",
            target_id = prelude.Integer.id,
            traits = {
                [traits.DEFAULT] = { value = nil },
            },
        }),
        NextToken = schema.new({
            id = id.from(_N, "ListConfigurationCheckDefinitionsInput", "NextToken"),
            type = "string",
            name = "NextToken",
            target_id = prelude.String.id,
        }),
    },
})

M.ListConfigurationCheckDefinitionsOutput = schema.new({
    id = id.from(_N, "ListConfigurationCheckDefinitionsOutput"),
    type = "structure",
    members = {
        ConfigurationChecks = schema.new({
            id = id.from(_N, "ListConfigurationCheckDefinitionsOutput", "ConfigurationChecks"),
            type = "list",
            name = "ConfigurationChecks",
            target_id = prelude.Document.id,
            list_member = M.ConfigurationCheckDefinition,
        }),
        NextToken = schema.new({
            id = id.from(_N, "ListConfigurationCheckDefinitionsOutput", "NextToken"),
            type = "string",
            name = "NextToken",
            target_id = prelude.String.id,
        }),
    },
})

M.ListConfigurationCheckOperationsInput = schema.new({
    id = id.from(_N, "ListConfigurationCheckOperationsInput"),
    type = "structure",
    members = {
        ApplicationId = schema.new({
            id = id.from(_N, "ListConfigurationCheckOperationsInput", "ApplicationId"),
            type = "string",
            name = "ApplicationId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        ListMode = schema.new({
            id = id.from(_N, "ListConfigurationCheckOperationsInput", "ListMode"),
            type = "string",
            name = "ListMode",
            target_id = prelude.String.id,
            traits = {
                [traits.DEFAULT] = { value = "LATEST_PER_CHECK" },
            },
        }),
        MaxResults = schema.new({
            id = id.from(_N, "ListConfigurationCheckOperationsInput", "MaxResults"),
            type = "integer",
            name = "MaxResults",
            target_id = prelude.Integer.id,
            traits = {
                [traits.DEFAULT] = { value = nil },
            },
        }),
        NextToken = schema.new({
            id = id.from(_N, "ListConfigurationCheckOperationsInput", "NextToken"),
            type = "string",
            name = "NextToken",
            target_id = prelude.String.id,
        }),
        Filters = schema.new({
            id = id.from(_N, "ListConfigurationCheckOperationsInput", "Filters"),
            type = "list",
            name = "Filters",
            target_id = prelude.Document.id,
            list_member = M.Filter,
        }),
    },
})

M.ListConfigurationCheckOperationsOutput = schema.new({
    id = id.from(_N, "ListConfigurationCheckOperationsOutput"),
    type = "structure",
    members = {
        ConfigurationCheckOperations = schema.new({
            id = id.from(_N, "ListConfigurationCheckOperationsOutput", "ConfigurationCheckOperations"),
            type = "list",
            name = "ConfigurationCheckOperations",
            target_id = prelude.Document.id,
            list_member = M.ConfigurationCheckOperation,
        }),
        NextToken = schema.new({
            id = id.from(_N, "ListConfigurationCheckOperationsOutput", "NextToken"),
            type = "string",
            name = "NextToken",
            target_id = prelude.String.id,
        }),
    },
})

M.ListDatabasesInput = schema.new({
    id = id.from(_N, "ListDatabasesInput"),
    type = "structure",
    members = {
        ApplicationId = schema.new({
            id = id.from(_N, "ListDatabasesInput", "ApplicationId"),
            type = "string",
            name = "ApplicationId",
            target_id = prelude.String.id,
        }),
        ComponentId = schema.new({
            id = id.from(_N, "ListDatabasesInput", "ComponentId"),
            type = "string",
            name = "ComponentId",
            target_id = prelude.String.id,
        }),
        NextToken = schema.new({
            id = id.from(_N, "ListDatabasesInput", "NextToken"),
            type = "string",
            name = "NextToken",
            target_id = prelude.String.id,
        }),
        MaxResults = schema.new({
            id = id.from(_N, "ListDatabasesInput", "MaxResults"),
            type = "integer",
            name = "MaxResults",
            target_id = prelude.Integer.id,
            traits = {
                [traits.DEFAULT] = { value = nil },
            },
        }),
    },
})

M.ListDatabasesOutput = schema.new({
    id = id.from(_N, "ListDatabasesOutput"),
    type = "structure",
    members = {
        Databases = schema.new({
            id = id.from(_N, "ListDatabasesOutput", "Databases"),
            type = "list",
            name = "Databases",
            target_id = prelude.Document.id,
            list_member = M.DatabaseSummary,
        }),
        NextToken = schema.new({
            id = id.from(_N, "ListDatabasesOutput", "NextToken"),
            type = "string",
            name = "NextToken",
            target_id = prelude.String.id,
        }),
    },
})

M.ListOperationEventsInput = schema.new({
    id = id.from(_N, "ListOperationEventsInput"),
    type = "structure",
    members = {
        OperationId = schema.new({
            id = id.from(_N, "ListOperationEventsInput", "OperationId"),
            type = "string",
            name = "OperationId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        MaxResults = schema.new({
            id = id.from(_N, "ListOperationEventsInput", "MaxResults"),
            type = "integer",
            name = "MaxResults",
            target_id = prelude.Integer.id,
            traits = {
                [traits.DEFAULT] = { value = nil },
            },
        }),
        NextToken = schema.new({
            id = id.from(_N, "ListOperationEventsInput", "NextToken"),
            type = "string",
            name = "NextToken",
            target_id = prelude.String.id,
        }),
        Filters = schema.new({
            id = id.from(_N, "ListOperationEventsInput", "Filters"),
            type = "list",
            name = "Filters",
            target_id = prelude.Document.id,
            list_member = M.Filter,
        }),
    },
})

M.Resource = schema.new({
    id = id.from(_N, "Resource"),
    type = "structure",
    members = {
        ResourceArn = schema.new({
            id = id.from(_N, "Resource", "ResourceArn"),
            type = "string",
            name = "ResourceArn",
            target_id = prelude.String.id,
        }),
        ResourceType = schema.new({
            id = id.from(_N, "Resource", "ResourceType"),
            type = "string",
            name = "ResourceType",
            target_id = prelude.String.id,
        }),
    },
})

M.OperationEvent = schema.new({
    id = id.from(_N, "OperationEvent"),
    type = "structure",
    members = {
        Description = schema.new({
            id = id.from(_N, "OperationEvent", "Description"),
            type = "string",
            name = "Description",
            target_id = prelude.String.id,
        }),
        Resource = schema.new({
            id = id.from(_N, "OperationEvent", "Resource"),
            type = "structure",
            name = "Resource",
            target_id = id.from(_N, "Resource"),
            target = M.Resource,
        }),
        Status = schema.new({
            id = id.from(_N, "OperationEvent", "Status"),
            type = "string",
            name = "Status",
            target_id = prelude.String.id,
        }),
        StatusMessage = schema.new({
            id = id.from(_N, "OperationEvent", "StatusMessage"),
            type = "string",
            name = "StatusMessage",
            target_id = prelude.String.id,
        }),
        Timestamp = schema.new({
            id = id.from(_N, "OperationEvent", "Timestamp"),
            type = "timestamp",
            name = "Timestamp",
            target_id = prelude.Timestamp.id,
        }),
    },
})

M.ListOperationEventsOutput = schema.new({
    id = id.from(_N, "ListOperationEventsOutput"),
    type = "structure",
    members = {
        OperationEvents = schema.new({
            id = id.from(_N, "ListOperationEventsOutput", "OperationEvents"),
            type = "list",
            name = "OperationEvents",
            target_id = prelude.Document.id,
            list_member = M.OperationEvent,
        }),
        NextToken = schema.new({
            id = id.from(_N, "ListOperationEventsOutput", "NextToken"),
            type = "string",
            name = "NextToken",
            target_id = prelude.String.id,
        }),
    },
})

M.ListOperationsInput = schema.new({
    id = id.from(_N, "ListOperationsInput"),
    type = "structure",
    members = {
        ApplicationId = schema.new({
            id = id.from(_N, "ListOperationsInput", "ApplicationId"),
            type = "string",
            name = "ApplicationId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        MaxResults = schema.new({
            id = id.from(_N, "ListOperationsInput", "MaxResults"),
            type = "integer",
            name = "MaxResults",
            target_id = prelude.Integer.id,
            traits = {
                [traits.DEFAULT] = { value = nil },
            },
        }),
        NextToken = schema.new({
            id = id.from(_N, "ListOperationsInput", "NextToken"),
            type = "string",
            name = "NextToken",
            target_id = prelude.String.id,
        }),
        Filters = schema.new({
            id = id.from(_N, "ListOperationsInput", "Filters"),
            type = "list",
            name = "Filters",
            target_id = prelude.Document.id,
            list_member = M.Filter,
        }),
    },
})

M.ListOperationsOutput = schema.new({
    id = id.from(_N, "ListOperationsOutput"),
    type = "structure",
    members = {
        Operations = schema.new({
            id = id.from(_N, "ListOperationsOutput", "Operations"),
            type = "list",
            name = "Operations",
            target_id = prelude.Document.id,
            list_member = M.Operation,
        }),
        NextToken = schema.new({
            id = id.from(_N, "ListOperationsOutput", "NextToken"),
            type = "string",
            name = "NextToken",
            target_id = prelude.String.id,
        }),
    },
})

M.ListSubCheckResultsInput = schema.new({
    id = id.from(_N, "ListSubCheckResultsInput"),
    type = "structure",
    members = {
        OperationId = schema.new({
            id = id.from(_N, "ListSubCheckResultsInput", "OperationId"),
            type = "string",
            name = "OperationId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        MaxResults = schema.new({
            id = id.from(_N, "ListSubCheckResultsInput", "MaxResults"),
            type = "integer",
            name = "MaxResults",
            target_id = prelude.Integer.id,
            traits = {
                [traits.DEFAULT] = { value = nil },
            },
        }),
        NextToken = schema.new({
            id = id.from(_N, "ListSubCheckResultsInput", "NextToken"),
            type = "string",
            name = "NextToken",
            target_id = prelude.String.id,
        }),
    },
})

M.SubCheckResult = schema.new({
    id = id.from(_N, "SubCheckResult"),
    type = "structure",
    members = {
        Id = schema.new({
            id = id.from(_N, "SubCheckResult", "Id"),
            type = "string",
            name = "Id",
            target_id = prelude.String.id,
        }),
        Name = schema.new({
            id = id.from(_N, "SubCheckResult", "Name"),
            type = "string",
            name = "Name",
            target_id = prelude.String.id,
        }),
        Description = schema.new({
            id = id.from(_N, "SubCheckResult", "Description"),
            type = "string",
            name = "Description",
            target_id = prelude.String.id,
        }),
        References = schema.new({
            id = id.from(_N, "SubCheckResult", "References"),
            type = "list",
            name = "References",
            target_id = prelude.Document.id,
            list_member = prelude.String,
        }),
    },
})

M.ListSubCheckResultsOutput = schema.new({
    id = id.from(_N, "ListSubCheckResultsOutput"),
    type = "structure",
    members = {
        SubCheckResults = schema.new({
            id = id.from(_N, "ListSubCheckResultsOutput", "SubCheckResults"),
            type = "list",
            name = "SubCheckResults",
            target_id = prelude.Document.id,
            list_member = M.SubCheckResult,
        }),
        NextToken = schema.new({
            id = id.from(_N, "ListSubCheckResultsOutput", "NextToken"),
            type = "string",
            name = "NextToken",
            target_id = prelude.String.id,
        }),
    },
})

M.ListSubCheckRuleResultsInput = schema.new({
    id = id.from(_N, "ListSubCheckRuleResultsInput"),
    type = "structure",
    members = {
        SubCheckResultId = schema.new({
            id = id.from(_N, "ListSubCheckRuleResultsInput", "SubCheckResultId"),
            type = "string",
            name = "SubCheckResultId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        MaxResults = schema.new({
            id = id.from(_N, "ListSubCheckRuleResultsInput", "MaxResults"),
            type = "integer",
            name = "MaxResults",
            target_id = prelude.Integer.id,
            traits = {
                [traits.DEFAULT] = { value = nil },
            },
        }),
        NextToken = schema.new({
            id = id.from(_N, "ListSubCheckRuleResultsInput", "NextToken"),
            type = "string",
            name = "NextToken",
            target_id = prelude.String.id,
        }),
    },
})

M.RuleResult = schema.new({
    id = id.from(_N, "RuleResult"),
    type = "structure",
    members = {
        Id = schema.new({
            id = id.from(_N, "RuleResult", "Id"),
            type = "string",
            name = "Id",
            target_id = prelude.String.id,
        }),
        Description = schema.new({
            id = id.from(_N, "RuleResult", "Description"),
            type = "string",
            name = "Description",
            target_id = prelude.String.id,
        }),
        Status = schema.new({
            id = id.from(_N, "RuleResult", "Status"),
            type = "string",
            name = "Status",
            target_id = prelude.String.id,
        }),
        Message = schema.new({
            id = id.from(_N, "RuleResult", "Message"),
            type = "string",
            name = "Message",
            target_id = prelude.String.id,
        }),
        Metadata = schema.new({
            id = id.from(_N, "RuleResult", "Metadata"),
            type = "map",
            name = "Metadata",
            target_id = prelude.Document.id,
            map_key = prelude.String,
            map_value = prelude.String,
        }),
    },
})

M.ListSubCheckRuleResultsOutput = schema.new({
    id = id.from(_N, "ListSubCheckRuleResultsOutput"),
    type = "structure",
    members = {
        RuleResults = schema.new({
            id = id.from(_N, "ListSubCheckRuleResultsOutput", "RuleResults"),
            type = "list",
            name = "RuleResults",
            target_id = prelude.Document.id,
            list_member = M.RuleResult,
        }),
        NextToken = schema.new({
            id = id.from(_N, "ListSubCheckRuleResultsOutput", "NextToken"),
            type = "string",
            name = "NextToken",
            target_id = prelude.String.id,
        }),
    },
})

M.ListTagsForResourceInput = schema.new({
    id = id.from(_N, "ListTagsForResourceRequest"),
    type = "structure",
    members = {
        resourceArn = schema.new({
            id = id.from(_N, "ListTagsForResourceInput", "resourceArn"),
            type = "string",
            name = "resourceArn",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
    },
})

M.ListTagsForResourceOutput = schema.new({
    id = id.from(_N, "ListTagsForResourceResponse"),
    type = "structure",
    members = {
        tags = schema.new({
            id = id.from(_N, "ListTagsForResourceOutput", "tags"),
            type = "map",
            name = "tags",
            target_id = prelude.Document.id,
            map_key = prelude.String,
            map_value = prelude.String,
        }),
    },
})

M.PutResourcePermissionInput = schema.new({
    id = id.from(_N, "PutResourcePermissionInput"),
    type = "structure",
    members = {
        ActionType = schema.new({
            id = id.from(_N, "PutResourcePermissionInput", "ActionType"),
            type = "string",
            name = "ActionType",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        SourceResourceArn = schema.new({
            id = id.from(_N, "PutResourcePermissionInput", "SourceResourceArn"),
            type = "string",
            name = "SourceResourceArn",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        ResourceArn = schema.new({
            id = id.from(_N, "PutResourcePermissionInput", "ResourceArn"),
            type = "string",
            name = "ResourceArn",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.PutResourcePermissionOutput = schema.new({
    id = id.from(_N, "PutResourcePermissionOutput"),
    type = "structure",
    members = {
        Policy = schema.new({
            id = id.from(_N, "PutResourcePermissionOutput", "Policy"),
            type = "string",
            name = "Policy",
            target_id = prelude.String.id,
        }),
    },
})

M.RegisterApplicationInput = schema.new({
    id = id.from(_N, "RegisterApplicationInput"),
    type = "structure",
    members = {
        ApplicationId = schema.new({
            id = id.from(_N, "RegisterApplicationInput", "ApplicationId"),
            type = "string",
            name = "ApplicationId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        ApplicationType = schema.new({
            id = id.from(_N, "RegisterApplicationInput", "ApplicationType"),
            type = "string",
            name = "ApplicationType",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        Instances = schema.new({
            id = id.from(_N, "RegisterApplicationInput", "Instances"),
            type = "list",
            name = "Instances",
            target_id = prelude.Document.id,
            list_member = prelude.String,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        SapInstanceNumber = schema.new({
            id = id.from(_N, "RegisterApplicationInput", "SapInstanceNumber"),
            type = "string",
            name = "SapInstanceNumber",
            target_id = prelude.String.id,
        }),
        Sid = schema.new({
            id = id.from(_N, "RegisterApplicationInput", "Sid"),
            type = "string",
            name = "Sid",
            target_id = prelude.String.id,
        }),
        Tags = schema.new({
            id = id.from(_N, "RegisterApplicationInput", "Tags"),
            type = "map",
            name = "Tags",
            target_id = prelude.Document.id,
            map_key = prelude.String,
            map_value = prelude.String,
        }),
        Credentials = schema.new({
            id = id.from(_N, "RegisterApplicationInput", "Credentials"),
            type = "list",
            name = "Credentials",
            target_id = prelude.Document.id,
            list_member = M.ApplicationCredential,
            traits = {
                [traits.DEFAULT] = { value = {} },
            },
        }),
        DatabaseArn = schema.new({
            id = id.from(_N, "RegisterApplicationInput", "DatabaseArn"),
            type = "string",
            name = "DatabaseArn",
            target_id = prelude.String.id,
        }),
        ComponentsInfo = schema.new({
            id = id.from(_N, "RegisterApplicationInput", "ComponentsInfo"),
            type = "list",
            name = "ComponentsInfo",
            target_id = prelude.Document.id,
            list_member = M.ComponentInfo,
        }),
    },
})

M.RegisterApplicationOutput = schema.new({
    id = id.from(_N, "RegisterApplicationOutput"),
    type = "structure",
    members = {
        Application = schema.new({
            id = id.from(_N, "RegisterApplicationOutput", "Application"),
            type = "structure",
            name = "Application",
            target_id = id.from(_N, "Application"),
            target = M.Application,
        }),
        OperationId = schema.new({
            id = id.from(_N, "RegisterApplicationOutput", "OperationId"),
            type = "string",
            name = "OperationId",
            target_id = prelude.String.id,
        }),
    },
})

M.StartApplicationInput = schema.new({
    id = id.from(_N, "StartApplicationInput"),
    type = "structure",
    members = {
        ApplicationId = schema.new({
            id = id.from(_N, "StartApplicationInput", "ApplicationId"),
            type = "string",
            name = "ApplicationId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.StartApplicationOutput = schema.new({
    id = id.from(_N, "StartApplicationOutput"),
    type = "structure",
    members = {
        OperationId = schema.new({
            id = id.from(_N, "StartApplicationOutput", "OperationId"),
            type = "string",
            name = "OperationId",
            target_id = prelude.String.id,
        }),
    },
})

M.StartApplicationRefreshInput = schema.new({
    id = id.from(_N, "StartApplicationRefreshInput"),
    type = "structure",
    members = {
        ApplicationId = schema.new({
            id = id.from(_N, "StartApplicationRefreshInput", "ApplicationId"),
            type = "string",
            name = "ApplicationId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.StartApplicationRefreshOutput = schema.new({
    id = id.from(_N, "StartApplicationRefreshOutput"),
    type = "structure",
    members = {
        OperationId = schema.new({
            id = id.from(_N, "StartApplicationRefreshOutput", "OperationId"),
            type = "string",
            name = "OperationId",
            target_id = prelude.String.id,
        }),
    },
})

M.StartConfigurationChecksInput = schema.new({
    id = id.from(_N, "StartConfigurationChecksInput"),
    type = "structure",
    members = {
        ApplicationId = schema.new({
            id = id.from(_N, "StartConfigurationChecksInput", "ApplicationId"),
            type = "string",
            name = "ApplicationId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        ConfigurationCheckIds = schema.new({
            id = id.from(_N, "StartConfigurationChecksInput", "ConfigurationCheckIds"),
            type = "list",
            name = "ConfigurationCheckIds",
            target_id = prelude.Document.id,
            list_member = prelude.String,
        }),
    },
})

M.StartConfigurationChecksOutput = schema.new({
    id = id.from(_N, "StartConfigurationChecksOutput"),
    type = "structure",
    members = {
        ConfigurationCheckOperations = schema.new({
            id = id.from(_N, "StartConfigurationChecksOutput", "ConfigurationCheckOperations"),
            type = "list",
            name = "ConfigurationCheckOperations",
            target_id = prelude.Document.id,
            list_member = M.ConfigurationCheckOperation,
        }),
    },
})

M.StopApplicationInput = schema.new({
    id = id.from(_N, "StopApplicationInput"),
    type = "structure",
    members = {
        ApplicationId = schema.new({
            id = id.from(_N, "StopApplicationInput", "ApplicationId"),
            type = "string",
            name = "ApplicationId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        StopConnectedEntity = schema.new({
            id = id.from(_N, "StopApplicationInput", "StopConnectedEntity"),
            type = "string",
            name = "StopConnectedEntity",
            target_id = prelude.String.id,
        }),
        IncludeEc2InstanceShutdown = schema.new({
            id = id.from(_N, "StopApplicationInput", "IncludeEc2InstanceShutdown"),
            type = "boolean",
            name = "IncludeEc2InstanceShutdown",
            target_id = prelude.Boolean.id,
        }),
    },
})

M.StopApplicationOutput = schema.new({
    id = id.from(_N, "StopApplicationOutput"),
    type = "structure",
    members = {
        OperationId = schema.new({
            id = id.from(_N, "StopApplicationOutput", "OperationId"),
            type = "string",
            name = "OperationId",
            target_id = prelude.String.id,
        }),
    },
})

M.TagResourceInput = schema.new({
    id = id.from(_N, "TagResourceRequest"),
    type = "structure",
    members = {
        resourceArn = schema.new({
            id = id.from(_N, "TagResourceInput", "resourceArn"),
            type = "string",
            name = "resourceArn",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
        tags = schema.new({
            id = id.from(_N, "TagResourceInput", "tags"),
            type = "map",
            name = "tags",
            target_id = prelude.Document.id,
            map_key = prelude.String,
            map_value = prelude.String,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.TagResourceOutput = schema.new({
    id = id.from(_N, "TagResourceResponse"),
    type = "structure",
})

M.UntagResourceInput = schema.new({
    id = id.from(_N, "UntagResourceRequest"),
    type = "structure",
    members = {
        resourceArn = schema.new({
            id = id.from(_N, "UntagResourceInput", "resourceArn"),
            type = "string",
            name = "resourceArn",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
        tagKeys = schema.new({
            id = id.from(_N, "UntagResourceInput", "tagKeys"),
            type = "list",
            name = "tagKeys",
            target_id = prelude.Document.id,
            list_member = prelude.String,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_QUERY] = { name = "tagKeys" },
            },
        }),
    },
})

M.UntagResourceOutput = schema.new({
    id = id.from(_N, "UntagResourceResponse"),
    type = "structure",
})

M.UpdateApplicationSettingsInput = schema.new({
    id = id.from(_N, "UpdateApplicationSettingsInput"),
    type = "structure",
    members = {
        ApplicationId = schema.new({
            id = id.from(_N, "UpdateApplicationSettingsInput", "ApplicationId"),
            type = "string",
            name = "ApplicationId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        CredentialsToAddOrUpdate = schema.new({
            id = id.from(_N, "UpdateApplicationSettingsInput", "CredentialsToAddOrUpdate"),
            type = "list",
            name = "CredentialsToAddOrUpdate",
            target_id = prelude.Document.id,
            list_member = M.ApplicationCredential,
        }),
        CredentialsToRemove = schema.new({
            id = id.from(_N, "UpdateApplicationSettingsInput", "CredentialsToRemove"),
            type = "list",
            name = "CredentialsToRemove",
            target_id = prelude.Document.id,
            list_member = M.ApplicationCredential,
        }),
        Backint = schema.new({
            id = id.from(_N, "UpdateApplicationSettingsInput", "Backint"),
            type = "structure",
            name = "Backint",
            target_id = id.from(_N, "BackintConfig"),
            target = M.BackintConfig,
        }),
        DatabaseArn = schema.new({
            id = id.from(_N, "UpdateApplicationSettingsInput", "DatabaseArn"),
            type = "string",
            name = "DatabaseArn",
            target_id = prelude.String.id,
        }),
    },
})

M.UpdateApplicationSettingsOutput = schema.new({
    id = id.from(_N, "UpdateApplicationSettingsOutput"),
    type = "structure",
    members = {
        Message = schema.new({
            id = id.from(_N, "UpdateApplicationSettingsOutput", "Message"),
            type = "string",
            name = "Message",
            target_id = prelude.String.id,
        }),
        OperationIds = schema.new({
            id = id.from(_N, "UpdateApplicationSettingsOutput", "OperationIds"),
            type = "list",
            name = "OperationIds",
            target_id = prelude.Document.id,
            list_member = prelude.String,
        }),
    },
})

-- Fix forward references for recursive schemas
for _, s in pairs(M) do
    if type(s) == "table" and (s.type == "structure" or s.type == "union") then
        local members = rawget(s, "_members")
        if members then
            for _, ms in pairs(members) do
                if (ms.type == "structure" or ms.type == "union") and not rawget(ms, "_target") and ms.target_id then
                    rawset(ms, "_target", M[ms.target_id.name])
                end
            end
        end
    end
end

return M
