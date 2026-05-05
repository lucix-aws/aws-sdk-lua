local id = require("smithy.shape_id")
local schema = require("smithy.schema")
local prelude = require("smithy.prelude")
local traits = require("smithy.traits")

local _N = "com.amazonaws.mq"

local M = {}

M.ActionRequired = schema.new({
    id = id.from(_N, "ActionRequired"),
    type = "structure",
    members = {
        ActionRequiredCode = schema.new({
            id = id.from(_N, "ActionRequired", "ActionRequiredCode"),
            type = "string",
            name = "ActionRequiredCode",
            target_id = prelude.String.id,
            traits = {
                [traits.JSON_NAME] = { name = "actionRequiredCode" },
            },
        }),
        ActionRequiredInfo = schema.new({
            id = id.from(_N, "ActionRequired", "ActionRequiredInfo"),
            type = "string",
            name = "ActionRequiredInfo",
            target_id = prelude.String.id,
            traits = {
                [traits.JSON_NAME] = { name = "actionRequiredInfo" },
            },
        }),
    },
})

M.AvailabilityZone = schema.new({
    id = id.from(_N, "AvailabilityZone"),
    type = "structure",
    members = {
        Name = schema.new({
            id = id.from(_N, "AvailabilityZone", "Name"),
            type = "string",
            name = "Name",
            target_id = prelude.String.id,
            traits = {
                [traits.JSON_NAME] = { name = "name" },
            },
        }),
    },
})

M.EngineVersion = schema.new({
    id = id.from(_N, "EngineVersion"),
    type = "structure",
    members = {
        Name = schema.new({
            id = id.from(_N, "EngineVersion", "Name"),
            type = "string",
            name = "Name",
            target_id = prelude.String.id,
            traits = {
                [traits.JSON_NAME] = { name = "name" },
            },
        }),
    },
})

M.BrokerEngineType = schema.new({
    id = id.from(_N, "BrokerEngineType"),
    type = "structure",
    members = {
        EngineType = schema.new({
            id = id.from(_N, "BrokerEngineType", "EngineType"),
            type = "string",
            name = "EngineType",
            target_id = prelude.String.id,
            traits = {
                [traits.JSON_NAME] = { name = "engineType" },
            },
        }),
        EngineVersions = schema.new({
            id = id.from(_N, "BrokerEngineType", "EngineVersions"),
            type = "list",
            name = "EngineVersions",
            target_id = prelude.Document.id,
            list_member = M.EngineVersion,
            traits = {
                [traits.JSON_NAME] = { name = "engineVersions" },
            },
        }),
    },
})

M.BrokerInstance = schema.new({
    id = id.from(_N, "BrokerInstance"),
    type = "structure",
    members = {
        ConsoleURL = schema.new({
            id = id.from(_N, "BrokerInstance", "ConsoleURL"),
            type = "string",
            name = "ConsoleURL",
            target_id = prelude.String.id,
            traits = {
                [traits.JSON_NAME] = { name = "consoleURL" },
            },
        }),
        Endpoints = schema.new({
            id = id.from(_N, "BrokerInstance", "Endpoints"),
            type = "list",
            name = "Endpoints",
            target_id = prelude.Document.id,
            list_member = prelude.String,
            traits = {
                [traits.JSON_NAME] = { name = "endpoints" },
            },
        }),
        IpAddress = schema.new({
            id = id.from(_N, "BrokerInstance", "IpAddress"),
            type = "string",
            name = "IpAddress",
            target_id = prelude.String.id,
            traits = {
                [traits.JSON_NAME] = { name = "ipAddress" },
            },
        }),
    },
})

M.BrokerInstanceOption = schema.new({
    id = id.from(_N, "BrokerInstanceOption"),
    type = "structure",
    members = {
        AvailabilityZones = schema.new({
            id = id.from(_N, "BrokerInstanceOption", "AvailabilityZones"),
            type = "list",
            name = "AvailabilityZones",
            target_id = prelude.Document.id,
            list_member = M.AvailabilityZone,
            traits = {
                [traits.JSON_NAME] = { name = "availabilityZones" },
            },
        }),
        EngineType = schema.new({
            id = id.from(_N, "BrokerInstanceOption", "EngineType"),
            type = "string",
            name = "EngineType",
            target_id = prelude.String.id,
            traits = {
                [traits.JSON_NAME] = { name = "engineType" },
            },
        }),
        HostInstanceType = schema.new({
            id = id.from(_N, "BrokerInstanceOption", "HostInstanceType"),
            type = "string",
            name = "HostInstanceType",
            target_id = prelude.String.id,
            traits = {
                [traits.JSON_NAME] = { name = "hostInstanceType" },
            },
        }),
        StorageType = schema.new({
            id = id.from(_N, "BrokerInstanceOption", "StorageType"),
            type = "string",
            name = "StorageType",
            target_id = prelude.String.id,
            traits = {
                [traits.JSON_NAME] = { name = "storageType" },
            },
        }),
        SupportedDeploymentModes = schema.new({
            id = id.from(_N, "BrokerInstanceOption", "SupportedDeploymentModes"),
            type = "list",
            name = "SupportedDeploymentModes",
            target_id = prelude.Document.id,
            list_member = prelude.String,
            traits = {
                [traits.JSON_NAME] = { name = "supportedDeploymentModes" },
            },
        }),
        SupportedEngineVersions = schema.new({
            id = id.from(_N, "BrokerInstanceOption", "SupportedEngineVersions"),
            type = "list",
            name = "SupportedEngineVersions",
            target_id = prelude.Document.id,
            list_member = prelude.String,
            traits = {
                [traits.JSON_NAME] = { name = "supportedEngineVersions" },
            },
        }),
    },
})

M.BrokerSummary = schema.new({
    id = id.from(_N, "BrokerSummary"),
    type = "structure",
    members = {
        BrokerArn = schema.new({
            id = id.from(_N, "BrokerSummary", "BrokerArn"),
            type = "string",
            name = "BrokerArn",
            target_id = prelude.String.id,
            traits = {
                [traits.JSON_NAME] = { name = "brokerArn" },
            },
        }),
        BrokerId = schema.new({
            id = id.from(_N, "BrokerSummary", "BrokerId"),
            type = "string",
            name = "BrokerId",
            target_id = prelude.String.id,
            traits = {
                [traits.JSON_NAME] = { name = "brokerId" },
            },
        }),
        BrokerName = schema.new({
            id = id.from(_N, "BrokerSummary", "BrokerName"),
            type = "string",
            name = "BrokerName",
            target_id = prelude.String.id,
            traits = {
                [traits.JSON_NAME] = { name = "brokerName" },
            },
        }),
        BrokerState = schema.new({
            id = id.from(_N, "BrokerSummary", "BrokerState"),
            type = "string",
            name = "BrokerState",
            target_id = prelude.String.id,
            traits = {
                [traits.JSON_NAME] = { name = "brokerState" },
            },
        }),
        Created = schema.new({
            id = id.from(_N, "BrokerSummary", "Created"),
            type = "timestamp",
            name = "Created",
            target_id = prelude.Timestamp.id,
            traits = {
                [traits.JSON_NAME] = { name = "created" },
                [traits.TIMESTAMP_FORMAT] = { format = "date-time" },
            },
            direct_traits = {
                [traits.JSON_NAME] = { name = "created" },
            },
        }),
        DeploymentMode = schema.new({
            id = id.from(_N, "BrokerSummary", "DeploymentMode"),
            type = "string",
            name = "DeploymentMode",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.JSON_NAME] = { name = "deploymentMode" },
            },
        }),
        EngineType = schema.new({
            id = id.from(_N, "BrokerSummary", "EngineType"),
            type = "string",
            name = "EngineType",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.JSON_NAME] = { name = "engineType" },
            },
        }),
        HostInstanceType = schema.new({
            id = id.from(_N, "BrokerSummary", "HostInstanceType"),
            type = "string",
            name = "HostInstanceType",
            target_id = prelude.String.id,
            traits = {
                [traits.JSON_NAME] = { name = "hostInstanceType" },
            },
        }),
    },
})

M.ConfigurationRevision = schema.new({
    id = id.from(_N, "ConfigurationRevision"),
    type = "structure",
    members = {
        Created = schema.new({
            id = id.from(_N, "ConfigurationRevision", "Created"),
            type = "timestamp",
            name = "Created",
            target_id = prelude.Timestamp.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.JSON_NAME] = { name = "created" },
                [traits.TIMESTAMP_FORMAT] = { format = "date-time" },
            },
            direct_traits = {
                [traits.REQUIRED] = {},
                [traits.JSON_NAME] = { name = "created" },
            },
        }),
        Description = schema.new({
            id = id.from(_N, "ConfigurationRevision", "Description"),
            type = "string",
            name = "Description",
            target_id = prelude.String.id,
            traits = {
                [traits.JSON_NAME] = { name = "description" },
            },
        }),
        Revision = schema.new({
            id = id.from(_N, "ConfigurationRevision", "Revision"),
            type = "integer",
            name = "Revision",
            target_id = prelude.Integer.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.JSON_NAME] = { name = "revision" },
            },
        }),
    },
})

M.Configuration = schema.new({
    id = id.from(_N, "Configuration"),
    type = "structure",
    members = {
        Arn = schema.new({
            id = id.from(_N, "Configuration", "Arn"),
            type = "string",
            name = "Arn",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.JSON_NAME] = { name = "arn" },
            },
        }),
        AuthenticationStrategy = schema.new({
            id = id.from(_N, "Configuration", "AuthenticationStrategy"),
            type = "string",
            name = "AuthenticationStrategy",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.JSON_NAME] = { name = "authenticationStrategy" },
            },
        }),
        Created = schema.new({
            id = id.from(_N, "Configuration", "Created"),
            type = "timestamp",
            name = "Created",
            target_id = prelude.Timestamp.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.JSON_NAME] = { name = "created" },
                [traits.TIMESTAMP_FORMAT] = { format = "date-time" },
            },
            direct_traits = {
                [traits.REQUIRED] = {},
                [traits.JSON_NAME] = { name = "created" },
            },
        }),
        Description = schema.new({
            id = id.from(_N, "Configuration", "Description"),
            type = "string",
            name = "Description",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.JSON_NAME] = { name = "description" },
            },
        }),
        EngineType = schema.new({
            id = id.from(_N, "Configuration", "EngineType"),
            type = "string",
            name = "EngineType",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.JSON_NAME] = { name = "engineType" },
            },
        }),
        EngineVersion = schema.new({
            id = id.from(_N, "Configuration", "EngineVersion"),
            type = "string",
            name = "EngineVersion",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.JSON_NAME] = { name = "engineVersion" },
            },
        }),
        Id = schema.new({
            id = id.from(_N, "Configuration", "Id"),
            type = "string",
            name = "Id",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.JSON_NAME] = { name = "id" },
            },
        }),
        LatestRevision = schema.new({
            id = id.from(_N, "Configuration", "LatestRevision"),
            type = "structure",
            name = "LatestRevision",
            target_id = id.from(_N, "ConfigurationRevision"),
            target = M.ConfigurationRevision,
            traits = {
                [traits.REQUIRED] = {},
                [traits.JSON_NAME] = { name = "latestRevision" },
            },
        }),
        Name = schema.new({
            id = id.from(_N, "Configuration", "Name"),
            type = "string",
            name = "Name",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.JSON_NAME] = { name = "name" },
            },
        }),
        Tags = schema.new({
            id = id.from(_N, "Configuration", "Tags"),
            type = "map",
            name = "Tags",
            target_id = prelude.Document.id,
            map_key = prelude.String,
            map_value = prelude.String,
            traits = {
                [traits.JSON_NAME] = { name = "tags" },
            },
        }),
    },
})

M.ConfigurationId = schema.new({
    id = id.from(_N, "ConfigurationId"),
    type = "structure",
    members = {
        Id = schema.new({
            id = id.from(_N, "ConfigurationId", "Id"),
            type = "string",
            name = "Id",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.JSON_NAME] = { name = "id" },
            },
        }),
        Revision = schema.new({
            id = id.from(_N, "ConfigurationId", "Revision"),
            type = "integer",
            name = "Revision",
            target_id = prelude.Integer.id,
            traits = {
                [traits.JSON_NAME] = { name = "revision" },
            },
        }),
    },
})

M.SanitizationWarning = schema.new({
    id = id.from(_N, "SanitizationWarning"),
    type = "structure",
    members = {
        AttributeName = schema.new({
            id = id.from(_N, "SanitizationWarning", "AttributeName"),
            type = "string",
            name = "AttributeName",
            target_id = prelude.String.id,
            traits = {
                [traits.JSON_NAME] = { name = "attributeName" },
            },
        }),
        ElementName = schema.new({
            id = id.from(_N, "SanitizationWarning", "ElementName"),
            type = "string",
            name = "ElementName",
            target_id = prelude.String.id,
            traits = {
                [traits.JSON_NAME] = { name = "elementName" },
            },
        }),
        Reason = schema.new({
            id = id.from(_N, "SanitizationWarning", "Reason"),
            type = "string",
            name = "Reason",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.JSON_NAME] = { name = "reason" },
            },
        }),
    },
})

M.User = schema.new({
    id = id.from(_N, "User"),
    type = "structure",
    members = {
        ConsoleAccess = schema.new({
            id = id.from(_N, "User", "ConsoleAccess"),
            type = "boolean",
            name = "ConsoleAccess",
            target_id = prelude.Boolean.id,
            traits = {
                [traits.JSON_NAME] = { name = "consoleAccess" },
            },
        }),
        Groups = schema.new({
            id = id.from(_N, "User", "Groups"),
            type = "list",
            name = "Groups",
            target_id = prelude.Document.id,
            list_member = prelude.String,
            traits = {
                [traits.JSON_NAME] = { name = "groups" },
            },
        }),
        Password = schema.new({
            id = id.from(_N, "User", "Password"),
            type = "string",
            name = "Password",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.JSON_NAME] = { name = "password" },
            },
        }),
        Username = schema.new({
            id = id.from(_N, "User", "Username"),
            type = "string",
            name = "Username",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.JSON_NAME] = { name = "username" },
            },
        }),
        ReplicationUser = schema.new({
            id = id.from(_N, "User", "ReplicationUser"),
            type = "boolean",
            name = "ReplicationUser",
            target_id = prelude.Boolean.id,
            traits = {
                [traits.JSON_NAME] = { name = "replicationUser" },
            },
        }),
    },
})

M.UserSummary = schema.new({
    id = id.from(_N, "UserSummary"),
    type = "structure",
    members = {
        PendingChange = schema.new({
            id = id.from(_N, "UserSummary", "PendingChange"),
            type = "string",
            name = "PendingChange",
            target_id = prelude.String.id,
            traits = {
                [traits.JSON_NAME] = { name = "pendingChange" },
            },
        }),
        Username = schema.new({
            id = id.from(_N, "UserSummary", "Username"),
            type = "string",
            name = "Username",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.JSON_NAME] = { name = "username" },
            },
        }),
    },
})

M.BadRequestException = schema.new({
    id = id.from(_N, "BadRequestException"),
    type = "structure",
    traits = {
        [traits.ERROR] = { value = "client" },
    },
    members = {
        ErrorAttribute = schema.new({
            id = id.from(_N, "BadRequestException", "ErrorAttribute"),
            type = "string",
            name = "ErrorAttribute",
            target_id = prelude.String.id,
            traits = {
                [traits.JSON_NAME] = { name = "errorAttribute" },
            },
        }),
        Message = schema.new({
            id = id.from(_N, "BadRequestException", "Message"),
            type = "string",
            name = "Message",
            target_id = prelude.String.id,
            traits = {
                [traits.JSON_NAME] = { name = "message" },
            },
        }),
    },
})

M.Configurations = schema.new({
    id = id.from(_N, "Configurations"),
    type = "structure",
    members = {
        Current = schema.new({
            id = id.from(_N, "Configurations", "Current"),
            type = "structure",
            name = "Current",
            target_id = id.from(_N, "ConfigurationId"),
            target = M.ConfigurationId,
            traits = {
                [traits.JSON_NAME] = { name = "current" },
            },
        }),
        History = schema.new({
            id = id.from(_N, "Configurations", "History"),
            type = "list",
            name = "History",
            target_id = prelude.Document.id,
            list_member = M.ConfigurationId,
            traits = {
                [traits.JSON_NAME] = { name = "history" },
            },
        }),
        Pending = schema.new({
            id = id.from(_N, "Configurations", "Pending"),
            type = "structure",
            name = "Pending",
            target_id = id.from(_N, "ConfigurationId"),
            target = M.ConfigurationId,
            traits = {
                [traits.JSON_NAME] = { name = "pending" },
            },
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
        ErrorAttribute = schema.new({
            id = id.from(_N, "ConflictException", "ErrorAttribute"),
            type = "string",
            name = "ErrorAttribute",
            target_id = prelude.String.id,
            traits = {
                [traits.JSON_NAME] = { name = "errorAttribute" },
            },
        }),
        Message = schema.new({
            id = id.from(_N, "ConflictException", "Message"),
            type = "string",
            name = "Message",
            target_id = prelude.String.id,
            traits = {
                [traits.JSON_NAME] = { name = "message" },
            },
        }),
    },
})

M.EncryptionOptions = schema.new({
    id = id.from(_N, "EncryptionOptions"),
    type = "structure",
    members = {
        KmsKeyId = schema.new({
            id = id.from(_N, "EncryptionOptions", "KmsKeyId"),
            type = "string",
            name = "KmsKeyId",
            target_id = prelude.String.id,
            traits = {
                [traits.JSON_NAME] = { name = "kmsKeyId" },
            },
        }),
        UseAwsOwnedKey = schema.new({
            id = id.from(_N, "EncryptionOptions", "UseAwsOwnedKey"),
            type = "boolean",
            name = "UseAwsOwnedKey",
            target_id = prelude.Boolean.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.JSON_NAME] = { name = "useAwsOwnedKey" },
            },
        }),
    },
})

M.LdapServerMetadataInput = schema.new({
    id = id.from(_N, "LdapServerMetadataInput"),
    type = "structure",
    members = {
        Hosts = schema.new({
            id = id.from(_N, "LdapServerMetadataInput", "Hosts"),
            type = "list",
            name = "Hosts",
            target_id = prelude.Document.id,
            list_member = prelude.String,
            traits = {
                [traits.REQUIRED] = {},
                [traits.JSON_NAME] = { name = "hosts" },
            },
        }),
        RoleBase = schema.new({
            id = id.from(_N, "LdapServerMetadataInput", "RoleBase"),
            type = "string",
            name = "RoleBase",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.JSON_NAME] = { name = "roleBase" },
            },
        }),
        RoleName = schema.new({
            id = id.from(_N, "LdapServerMetadataInput", "RoleName"),
            type = "string",
            name = "RoleName",
            target_id = prelude.String.id,
            traits = {
                [traits.JSON_NAME] = { name = "roleName" },
            },
        }),
        RoleSearchMatching = schema.new({
            id = id.from(_N, "LdapServerMetadataInput", "RoleSearchMatching"),
            type = "string",
            name = "RoleSearchMatching",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.JSON_NAME] = { name = "roleSearchMatching" },
            },
        }),
        RoleSearchSubtree = schema.new({
            id = id.from(_N, "LdapServerMetadataInput", "RoleSearchSubtree"),
            type = "boolean",
            name = "RoleSearchSubtree",
            target_id = prelude.Boolean.id,
            traits = {
                [traits.JSON_NAME] = { name = "roleSearchSubtree" },
            },
        }),
        ServiceAccountPassword = schema.new({
            id = id.from(_N, "LdapServerMetadataInput", "ServiceAccountPassword"),
            type = "string",
            name = "ServiceAccountPassword",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.JSON_NAME] = { name = "serviceAccountPassword" },
            },
        }),
        ServiceAccountUsername = schema.new({
            id = id.from(_N, "LdapServerMetadataInput", "ServiceAccountUsername"),
            type = "string",
            name = "ServiceAccountUsername",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.JSON_NAME] = { name = "serviceAccountUsername" },
            },
        }),
        UserBase = schema.new({
            id = id.from(_N, "LdapServerMetadataInput", "UserBase"),
            type = "string",
            name = "UserBase",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.JSON_NAME] = { name = "userBase" },
            },
        }),
        UserRoleName = schema.new({
            id = id.from(_N, "LdapServerMetadataInput", "UserRoleName"),
            type = "string",
            name = "UserRoleName",
            target_id = prelude.String.id,
            traits = {
                [traits.JSON_NAME] = { name = "userRoleName" },
            },
        }),
        UserSearchMatching = schema.new({
            id = id.from(_N, "LdapServerMetadataInput", "UserSearchMatching"),
            type = "string",
            name = "UserSearchMatching",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.JSON_NAME] = { name = "userSearchMatching" },
            },
        }),
        UserSearchSubtree = schema.new({
            id = id.from(_N, "LdapServerMetadataInput", "UserSearchSubtree"),
            type = "boolean",
            name = "UserSearchSubtree",
            target_id = prelude.Boolean.id,
            traits = {
                [traits.JSON_NAME] = { name = "userSearchSubtree" },
            },
        }),
    },
})

M.Logs = schema.new({
    id = id.from(_N, "Logs"),
    type = "structure",
    members = {
        Audit = schema.new({
            id = id.from(_N, "Logs", "Audit"),
            type = "boolean",
            name = "Audit",
            target_id = prelude.Boolean.id,
            traits = {
                [traits.JSON_NAME] = { name = "audit" },
            },
        }),
        General = schema.new({
            id = id.from(_N, "Logs", "General"),
            type = "boolean",
            name = "General",
            target_id = prelude.Boolean.id,
            traits = {
                [traits.JSON_NAME] = { name = "general" },
            },
        }),
    },
})

M.WeeklyStartTime = schema.new({
    id = id.from(_N, "WeeklyStartTime"),
    type = "structure",
    members = {
        DayOfWeek = schema.new({
            id = id.from(_N, "WeeklyStartTime", "DayOfWeek"),
            type = "string",
            name = "DayOfWeek",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.JSON_NAME] = { name = "dayOfWeek" },
            },
        }),
        TimeOfDay = schema.new({
            id = id.from(_N, "WeeklyStartTime", "TimeOfDay"),
            type = "string",
            name = "TimeOfDay",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.JSON_NAME] = { name = "timeOfDay" },
            },
        }),
        TimeZone = schema.new({
            id = id.from(_N, "WeeklyStartTime", "TimeZone"),
            type = "string",
            name = "TimeZone",
            target_id = prelude.String.id,
            traits = {
                [traits.JSON_NAME] = { name = "timeZone" },
            },
        }),
    },
})

M.CreateBrokerInput = schema.new({
    id = id.from(_N, "CreateBrokerInput"),
    type = "structure",
    members = {
        AuthenticationStrategy = schema.new({
            id = id.from(_N, "CreateBrokerInput", "AuthenticationStrategy"),
            type = "string",
            name = "AuthenticationStrategy",
            target_id = prelude.String.id,
            traits = {
                [traits.JSON_NAME] = { name = "authenticationStrategy" },
            },
        }),
        AutoMinorVersionUpgrade = schema.new({
            id = id.from(_N, "CreateBrokerInput", "AutoMinorVersionUpgrade"),
            type = "boolean",
            name = "AutoMinorVersionUpgrade",
            target_id = prelude.Boolean.id,
            traits = {
                [traits.JSON_NAME] = { name = "autoMinorVersionUpgrade" },
            },
        }),
        BrokerName = schema.new({
            id = id.from(_N, "CreateBrokerInput", "BrokerName"),
            type = "string",
            name = "BrokerName",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.JSON_NAME] = { name = "brokerName" },
            },
        }),
        Configuration = schema.new({
            id = id.from(_N, "CreateBrokerInput", "Configuration"),
            type = "structure",
            name = "Configuration",
            target_id = id.from(_N, "ConfigurationId"),
            target = M.ConfigurationId,
            traits = {
                [traits.JSON_NAME] = { name = "configuration" },
            },
        }),
        CreatorRequestId = schema.new({
            id = id.from(_N, "CreateBrokerInput", "CreatorRequestId"),
            type = "string",
            name = "CreatorRequestId",
            target_id = prelude.String.id,
            traits = {
                [traits.JSON_NAME] = { name = "creatorRequestId" },
                [traits.IDEMPOTENCY_TOKEN] = {},
            },
        }),
        DeploymentMode = schema.new({
            id = id.from(_N, "CreateBrokerInput", "DeploymentMode"),
            type = "string",
            name = "DeploymentMode",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.JSON_NAME] = { name = "deploymentMode" },
            },
        }),
        EncryptionOptions = schema.new({
            id = id.from(_N, "CreateBrokerInput", "EncryptionOptions"),
            type = "structure",
            name = "EncryptionOptions",
            target_id = id.from(_N, "EncryptionOptions"),
            target = M.EncryptionOptions,
            traits = {
                [traits.JSON_NAME] = { name = "encryptionOptions" },
            },
        }),
        EngineType = schema.new({
            id = id.from(_N, "CreateBrokerInput", "EngineType"),
            type = "string",
            name = "EngineType",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.JSON_NAME] = { name = "engineType" },
            },
        }),
        EngineVersion = schema.new({
            id = id.from(_N, "CreateBrokerInput", "EngineVersion"),
            type = "string",
            name = "EngineVersion",
            target_id = prelude.String.id,
            traits = {
                [traits.JSON_NAME] = { name = "engineVersion" },
            },
        }),
        HostInstanceType = schema.new({
            id = id.from(_N, "CreateBrokerInput", "HostInstanceType"),
            type = "string",
            name = "HostInstanceType",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.JSON_NAME] = { name = "hostInstanceType" },
            },
        }),
        LdapServerMetadata = schema.new({
            id = id.from(_N, "CreateBrokerInput", "LdapServerMetadata"),
            type = "structure",
            name = "LdapServerMetadata",
            target_id = id.from(_N, "LdapServerMetadataInput"),
            target = M.LdapServerMetadataInput,
            traits = {
                [traits.JSON_NAME] = { name = "ldapServerMetadata" },
            },
        }),
        Logs = schema.new({
            id = id.from(_N, "CreateBrokerInput", "Logs"),
            type = "structure",
            name = "Logs",
            target_id = id.from(_N, "Logs"),
            target = M.Logs,
            traits = {
                [traits.JSON_NAME] = { name = "logs" },
            },
        }),
        MaintenanceWindowStartTime = schema.new({
            id = id.from(_N, "CreateBrokerInput", "MaintenanceWindowStartTime"),
            type = "structure",
            name = "MaintenanceWindowStartTime",
            target_id = id.from(_N, "WeeklyStartTime"),
            target = M.WeeklyStartTime,
            traits = {
                [traits.JSON_NAME] = { name = "maintenanceWindowStartTime" },
            },
        }),
        PubliclyAccessible = schema.new({
            id = id.from(_N, "CreateBrokerInput", "PubliclyAccessible"),
            type = "boolean",
            name = "PubliclyAccessible",
            target_id = prelude.Boolean.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.JSON_NAME] = { name = "publiclyAccessible" },
            },
        }),
        SecurityGroups = schema.new({
            id = id.from(_N, "CreateBrokerInput", "SecurityGroups"),
            type = "list",
            name = "SecurityGroups",
            target_id = prelude.Document.id,
            list_member = prelude.String,
            traits = {
                [traits.JSON_NAME] = { name = "securityGroups" },
            },
        }),
        StorageType = schema.new({
            id = id.from(_N, "CreateBrokerInput", "StorageType"),
            type = "string",
            name = "StorageType",
            target_id = prelude.String.id,
            traits = {
                [traits.JSON_NAME] = { name = "storageType" },
            },
        }),
        SubnetIds = schema.new({
            id = id.from(_N, "CreateBrokerInput", "SubnetIds"),
            type = "list",
            name = "SubnetIds",
            target_id = prelude.Document.id,
            list_member = prelude.String,
            traits = {
                [traits.JSON_NAME] = { name = "subnetIds" },
            },
        }),
        Tags = schema.new({
            id = id.from(_N, "CreateBrokerInput", "Tags"),
            type = "map",
            name = "Tags",
            target_id = prelude.Document.id,
            map_key = prelude.String,
            map_value = prelude.String,
            traits = {
                [traits.JSON_NAME] = { name = "tags" },
            },
        }),
        Users = schema.new({
            id = id.from(_N, "CreateBrokerInput", "Users"),
            type = "list",
            name = "Users",
            target_id = prelude.Document.id,
            list_member = M.User,
            traits = {
                [traits.JSON_NAME] = { name = "users" },
            },
        }),
        DataReplicationMode = schema.new({
            id = id.from(_N, "CreateBrokerInput", "DataReplicationMode"),
            type = "string",
            name = "DataReplicationMode",
            target_id = prelude.String.id,
            traits = {
                [traits.JSON_NAME] = { name = "dataReplicationMode" },
            },
        }),
        DataReplicationPrimaryBrokerArn = schema.new({
            id = id.from(_N, "CreateBrokerInput", "DataReplicationPrimaryBrokerArn"),
            type = "string",
            name = "DataReplicationPrimaryBrokerArn",
            target_id = prelude.String.id,
            traits = {
                [traits.JSON_NAME] = { name = "dataReplicationPrimaryBrokerArn" },
            },
        }),
    },
})

M.CreateBrokerOutput = schema.new({
    id = id.from(_N, "CreateBrokerOutput"),
    type = "structure",
    members = {
        BrokerArn = schema.new({
            id = id.from(_N, "CreateBrokerOutput", "BrokerArn"),
            type = "string",
            name = "BrokerArn",
            target_id = prelude.String.id,
            traits = {
                [traits.JSON_NAME] = { name = "brokerArn" },
            },
        }),
        BrokerId = schema.new({
            id = id.from(_N, "CreateBrokerOutput", "BrokerId"),
            type = "string",
            name = "BrokerId",
            target_id = prelude.String.id,
            traits = {
                [traits.JSON_NAME] = { name = "brokerId" },
            },
        }),
    },
})

M.ForbiddenException = schema.new({
    id = id.from(_N, "ForbiddenException"),
    type = "structure",
    traits = {
        [traits.ERROR] = { value = "client" },
    },
    members = {
        ErrorAttribute = schema.new({
            id = id.from(_N, "ForbiddenException", "ErrorAttribute"),
            type = "string",
            name = "ErrorAttribute",
            target_id = prelude.String.id,
            traits = {
                [traits.JSON_NAME] = { name = "errorAttribute" },
            },
        }),
        Message = schema.new({
            id = id.from(_N, "ForbiddenException", "Message"),
            type = "string",
            name = "Message",
            target_id = prelude.String.id,
            traits = {
                [traits.JSON_NAME] = { name = "message" },
            },
        }),
    },
})

M.InternalServerErrorException = schema.new({
    id = id.from(_N, "InternalServerErrorException"),
    type = "structure",
    traits = {
        [traits.ERROR] = { value = "server" },
    },
    members = {
        ErrorAttribute = schema.new({
            id = id.from(_N, "InternalServerErrorException", "ErrorAttribute"),
            type = "string",
            name = "ErrorAttribute",
            target_id = prelude.String.id,
            traits = {
                [traits.JSON_NAME] = { name = "errorAttribute" },
            },
        }),
        Message = schema.new({
            id = id.from(_N, "InternalServerErrorException", "Message"),
            type = "string",
            name = "Message",
            target_id = prelude.String.id,
            traits = {
                [traits.JSON_NAME] = { name = "message" },
            },
        }),
    },
})

M.UnauthorizedException = schema.new({
    id = id.from(_N, "UnauthorizedException"),
    type = "structure",
    traits = {
        [traits.ERROR] = { value = "client" },
    },
    members = {
        ErrorAttribute = schema.new({
            id = id.from(_N, "UnauthorizedException", "ErrorAttribute"),
            type = "string",
            name = "ErrorAttribute",
            target_id = prelude.String.id,
            traits = {
                [traits.JSON_NAME] = { name = "errorAttribute" },
            },
        }),
        Message = schema.new({
            id = id.from(_N, "UnauthorizedException", "Message"),
            type = "string",
            name = "Message",
            target_id = prelude.String.id,
            traits = {
                [traits.JSON_NAME] = { name = "message" },
            },
        }),
    },
})

M.CreateConfigurationInput = schema.new({
    id = id.from(_N, "CreateConfigurationInput"),
    type = "structure",
    members = {
        AuthenticationStrategy = schema.new({
            id = id.from(_N, "CreateConfigurationInput", "AuthenticationStrategy"),
            type = "string",
            name = "AuthenticationStrategy",
            target_id = prelude.String.id,
            traits = {
                [traits.JSON_NAME] = { name = "authenticationStrategy" },
            },
        }),
        EngineType = schema.new({
            id = id.from(_N, "CreateConfigurationInput", "EngineType"),
            type = "string",
            name = "EngineType",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.JSON_NAME] = { name = "engineType" },
            },
        }),
        EngineVersion = schema.new({
            id = id.from(_N, "CreateConfigurationInput", "EngineVersion"),
            type = "string",
            name = "EngineVersion",
            target_id = prelude.String.id,
            traits = {
                [traits.JSON_NAME] = { name = "engineVersion" },
            },
        }),
        Name = schema.new({
            id = id.from(_N, "CreateConfigurationInput", "Name"),
            type = "string",
            name = "Name",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.JSON_NAME] = { name = "name" },
            },
        }),
        Tags = schema.new({
            id = id.from(_N, "CreateConfigurationInput", "Tags"),
            type = "map",
            name = "Tags",
            target_id = prelude.Document.id,
            map_key = prelude.String,
            map_value = prelude.String,
            traits = {
                [traits.JSON_NAME] = { name = "tags" },
            },
        }),
    },
})

M.CreateConfigurationOutput = schema.new({
    id = id.from(_N, "CreateConfigurationOutput"),
    type = "structure",
    members = {
        Arn = schema.new({
            id = id.from(_N, "CreateConfigurationOutput", "Arn"),
            type = "string",
            name = "Arn",
            target_id = prelude.String.id,
            traits = {
                [traits.JSON_NAME] = { name = "arn" },
            },
        }),
        AuthenticationStrategy = schema.new({
            id = id.from(_N, "CreateConfigurationOutput", "AuthenticationStrategy"),
            type = "string",
            name = "AuthenticationStrategy",
            target_id = prelude.String.id,
            traits = {
                [traits.JSON_NAME] = { name = "authenticationStrategy" },
            },
        }),
        Created = schema.new({
            id = id.from(_N, "CreateConfigurationOutput", "Created"),
            type = "timestamp",
            name = "Created",
            target_id = prelude.Timestamp.id,
            traits = {
                [traits.JSON_NAME] = { name = "created" },
                [traits.TIMESTAMP_FORMAT] = { format = "date-time" },
            },
            direct_traits = {
                [traits.JSON_NAME] = { name = "created" },
            },
        }),
        Id = schema.new({
            id = id.from(_N, "CreateConfigurationOutput", "Id"),
            type = "string",
            name = "Id",
            target_id = prelude.String.id,
            traits = {
                [traits.JSON_NAME] = { name = "id" },
            },
        }),
        LatestRevision = schema.new({
            id = id.from(_N, "CreateConfigurationOutput", "LatestRevision"),
            type = "structure",
            name = "LatestRevision",
            target_id = id.from(_N, "ConfigurationRevision"),
            target = M.ConfigurationRevision,
            traits = {
                [traits.JSON_NAME] = { name = "latestRevision" },
            },
        }),
        Name = schema.new({
            id = id.from(_N, "CreateConfigurationOutput", "Name"),
            type = "string",
            name = "Name",
            target_id = prelude.String.id,
            traits = {
                [traits.JSON_NAME] = { name = "name" },
            },
        }),
    },
})

M.CreateTagsInput = schema.new({
    id = id.from(_N, "CreateTagsInput"),
    type = "structure",
    members = {
        ResourceArn = schema.new({
            id = id.from(_N, "CreateTagsInput", "ResourceArn"),
            type = "string",
            name = "ResourceArn",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
        Tags = schema.new({
            id = id.from(_N, "CreateTagsInput", "Tags"),
            type = "map",
            name = "Tags",
            target_id = prelude.Document.id,
            map_key = prelude.String,
            map_value = prelude.String,
            traits = {
                [traits.JSON_NAME] = { name = "tags" },
            },
        }),
    },
})

M.CreateTagsOutput = schema.new({
    id = id.from(_N, "CreateTagsOutput"),
    type = "structure",
})

M.NotFoundException = schema.new({
    id = id.from(_N, "NotFoundException"),
    type = "structure",
    traits = {
        [traits.ERROR] = { value = "client" },
    },
    members = {
        ErrorAttribute = schema.new({
            id = id.from(_N, "NotFoundException", "ErrorAttribute"),
            type = "string",
            name = "ErrorAttribute",
            target_id = prelude.String.id,
            traits = {
                [traits.JSON_NAME] = { name = "errorAttribute" },
            },
        }),
        Message = schema.new({
            id = id.from(_N, "NotFoundException", "Message"),
            type = "string",
            name = "Message",
            target_id = prelude.String.id,
            traits = {
                [traits.JSON_NAME] = { name = "message" },
            },
        }),
    },
})

M.CreateUserInput = schema.new({
    id = id.from(_N, "CreateUserInput"),
    type = "structure",
    members = {
        BrokerId = schema.new({
            id = id.from(_N, "CreateUserInput", "BrokerId"),
            type = "string",
            name = "BrokerId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
        ConsoleAccess = schema.new({
            id = id.from(_N, "CreateUserInput", "ConsoleAccess"),
            type = "boolean",
            name = "ConsoleAccess",
            target_id = prelude.Boolean.id,
            traits = {
                [traits.JSON_NAME] = { name = "consoleAccess" },
            },
        }),
        Groups = schema.new({
            id = id.from(_N, "CreateUserInput", "Groups"),
            type = "list",
            name = "Groups",
            target_id = prelude.Document.id,
            list_member = prelude.String,
            traits = {
                [traits.JSON_NAME] = { name = "groups" },
            },
        }),
        Password = schema.new({
            id = id.from(_N, "CreateUserInput", "Password"),
            type = "string",
            name = "Password",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.JSON_NAME] = { name = "password" },
            },
        }),
        Username = schema.new({
            id = id.from(_N, "CreateUserInput", "Username"),
            type = "string",
            name = "Username",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
        ReplicationUser = schema.new({
            id = id.from(_N, "CreateUserInput", "ReplicationUser"),
            type = "boolean",
            name = "ReplicationUser",
            target_id = prelude.Boolean.id,
            traits = {
                [traits.JSON_NAME] = { name = "replicationUser" },
            },
        }),
    },
})

M.CreateUserOutput = schema.new({
    id = id.from(_N, "CreateUserOutput"),
    type = "structure",
})

M.DataReplicationCounterpart = schema.new({
    id = id.from(_N, "DataReplicationCounterpart"),
    type = "structure",
    members = {
        BrokerId = schema.new({
            id = id.from(_N, "DataReplicationCounterpart", "BrokerId"),
            type = "string",
            name = "BrokerId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.JSON_NAME] = { name = "brokerId" },
            },
        }),
        Region = schema.new({
            id = id.from(_N, "DataReplicationCounterpart", "Region"),
            type = "string",
            name = "Region",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.JSON_NAME] = { name = "region" },
            },
        }),
    },
})

M.DataReplicationMetadataOutput = schema.new({
    id = id.from(_N, "DataReplicationMetadataOutput"),
    type = "structure",
    members = {
        DataReplicationCounterpart = schema.new({
            id = id.from(_N, "DataReplicationMetadataOutput", "DataReplicationCounterpart"),
            type = "structure",
            name = "DataReplicationCounterpart",
            target_id = id.from(_N, "DataReplicationCounterpart"),
            target = M.DataReplicationCounterpart,
            traits = {
                [traits.JSON_NAME] = { name = "dataReplicationCounterpart" },
            },
        }),
        DataReplicationRole = schema.new({
            id = id.from(_N, "DataReplicationMetadataOutput", "DataReplicationRole"),
            type = "string",
            name = "DataReplicationRole",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.JSON_NAME] = { name = "dataReplicationRole" },
            },
        }),
    },
})

M.DeleteBrokerInput = schema.new({
    id = id.from(_N, "DeleteBrokerInput"),
    type = "structure",
    members = {
        BrokerId = schema.new({
            id = id.from(_N, "DeleteBrokerInput", "BrokerId"),
            type = "string",
            name = "BrokerId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
    },
})

M.DeleteBrokerOutput = schema.new({
    id = id.from(_N, "DeleteBrokerOutput"),
    type = "structure",
    members = {
        BrokerId = schema.new({
            id = id.from(_N, "DeleteBrokerOutput", "BrokerId"),
            type = "string",
            name = "BrokerId",
            target_id = prelude.String.id,
            traits = {
                [traits.JSON_NAME] = { name = "brokerId" },
            },
        }),
    },
})

M.DeleteConfigurationInput = schema.new({
    id = id.from(_N, "DeleteConfigurationInput"),
    type = "structure",
    members = {
        ConfigurationId = schema.new({
            id = id.from(_N, "DeleteConfigurationInput", "ConfigurationId"),
            type = "string",
            name = "ConfigurationId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
    },
})

M.DeleteConfigurationOutput = schema.new({
    id = id.from(_N, "DeleteConfigurationOutput"),
    type = "structure",
    members = {
        ConfigurationId = schema.new({
            id = id.from(_N, "DeleteConfigurationOutput", "ConfigurationId"),
            type = "string",
            name = "ConfigurationId",
            target_id = prelude.String.id,
            traits = {
                [traits.JSON_NAME] = { name = "configurationId" },
            },
        }),
    },
})

M.DeleteTagsInput = schema.new({
    id = id.from(_N, "DeleteTagsInput"),
    type = "structure",
    members = {
        ResourceArn = schema.new({
            id = id.from(_N, "DeleteTagsInput", "ResourceArn"),
            type = "string",
            name = "ResourceArn",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
        TagKeys = schema.new({
            id = id.from(_N, "DeleteTagsInput", "TagKeys"),
            type = "list",
            name = "TagKeys",
            target_id = prelude.Document.id,
            list_member = prelude.String,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_QUERY] = { name = "tagKeys" },
            },
        }),
    },
})

M.DeleteTagsOutput = schema.new({
    id = id.from(_N, "DeleteTagsOutput"),
    type = "structure",
})

M.DeleteUserInput = schema.new({
    id = id.from(_N, "DeleteUserInput"),
    type = "structure",
    members = {
        BrokerId = schema.new({
            id = id.from(_N, "DeleteUserInput", "BrokerId"),
            type = "string",
            name = "BrokerId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
        Username = schema.new({
            id = id.from(_N, "DeleteUserInput", "Username"),
            type = "string",
            name = "Username",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
    },
})

M.DeleteUserOutput = schema.new({
    id = id.from(_N, "DeleteUserOutput"),
    type = "structure",
})

M.DescribeBrokerInput = schema.new({
    id = id.from(_N, "DescribeBrokerInput"),
    type = "structure",
    members = {
        BrokerId = schema.new({
            id = id.from(_N, "DescribeBrokerInput", "BrokerId"),
            type = "string",
            name = "BrokerId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
    },
})

M.LdapServerMetadataOutput = schema.new({
    id = id.from(_N, "LdapServerMetadataOutput"),
    type = "structure",
    members = {
        Hosts = schema.new({
            id = id.from(_N, "LdapServerMetadataOutput", "Hosts"),
            type = "list",
            name = "Hosts",
            target_id = prelude.Document.id,
            list_member = prelude.String,
            traits = {
                [traits.REQUIRED] = {},
                [traits.JSON_NAME] = { name = "hosts" },
            },
        }),
        RoleBase = schema.new({
            id = id.from(_N, "LdapServerMetadataOutput", "RoleBase"),
            type = "string",
            name = "RoleBase",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.JSON_NAME] = { name = "roleBase" },
            },
        }),
        RoleName = schema.new({
            id = id.from(_N, "LdapServerMetadataOutput", "RoleName"),
            type = "string",
            name = "RoleName",
            target_id = prelude.String.id,
            traits = {
                [traits.JSON_NAME] = { name = "roleName" },
            },
        }),
        RoleSearchMatching = schema.new({
            id = id.from(_N, "LdapServerMetadataOutput", "RoleSearchMatching"),
            type = "string",
            name = "RoleSearchMatching",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.JSON_NAME] = { name = "roleSearchMatching" },
            },
        }),
        RoleSearchSubtree = schema.new({
            id = id.from(_N, "LdapServerMetadataOutput", "RoleSearchSubtree"),
            type = "boolean",
            name = "RoleSearchSubtree",
            target_id = prelude.Boolean.id,
            traits = {
                [traits.JSON_NAME] = { name = "roleSearchSubtree" },
            },
        }),
        ServiceAccountUsername = schema.new({
            id = id.from(_N, "LdapServerMetadataOutput", "ServiceAccountUsername"),
            type = "string",
            name = "ServiceAccountUsername",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.JSON_NAME] = { name = "serviceAccountUsername" },
            },
        }),
        UserBase = schema.new({
            id = id.from(_N, "LdapServerMetadataOutput", "UserBase"),
            type = "string",
            name = "UserBase",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.JSON_NAME] = { name = "userBase" },
            },
        }),
        UserRoleName = schema.new({
            id = id.from(_N, "LdapServerMetadataOutput", "UserRoleName"),
            type = "string",
            name = "UserRoleName",
            target_id = prelude.String.id,
            traits = {
                [traits.JSON_NAME] = { name = "userRoleName" },
            },
        }),
        UserSearchMatching = schema.new({
            id = id.from(_N, "LdapServerMetadataOutput", "UserSearchMatching"),
            type = "string",
            name = "UserSearchMatching",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.JSON_NAME] = { name = "userSearchMatching" },
            },
        }),
        UserSearchSubtree = schema.new({
            id = id.from(_N, "LdapServerMetadataOutput", "UserSearchSubtree"),
            type = "boolean",
            name = "UserSearchSubtree",
            target_id = prelude.Boolean.id,
            traits = {
                [traits.JSON_NAME] = { name = "userSearchSubtree" },
            },
        }),
    },
})

M.PendingLogs = schema.new({
    id = id.from(_N, "PendingLogs"),
    type = "structure",
    members = {
        Audit = schema.new({
            id = id.from(_N, "PendingLogs", "Audit"),
            type = "boolean",
            name = "Audit",
            target_id = prelude.Boolean.id,
            traits = {
                [traits.JSON_NAME] = { name = "audit" },
            },
        }),
        General = schema.new({
            id = id.from(_N, "PendingLogs", "General"),
            type = "boolean",
            name = "General",
            target_id = prelude.Boolean.id,
            traits = {
                [traits.JSON_NAME] = { name = "general" },
            },
        }),
    },
})

M.LogsSummary = schema.new({
    id = id.from(_N, "LogsSummary"),
    type = "structure",
    members = {
        Audit = schema.new({
            id = id.from(_N, "LogsSummary", "Audit"),
            type = "boolean",
            name = "Audit",
            target_id = prelude.Boolean.id,
            traits = {
                [traits.JSON_NAME] = { name = "audit" },
            },
        }),
        AuditLogGroup = schema.new({
            id = id.from(_N, "LogsSummary", "AuditLogGroup"),
            type = "string",
            name = "AuditLogGroup",
            target_id = prelude.String.id,
            traits = {
                [traits.JSON_NAME] = { name = "auditLogGroup" },
            },
        }),
        General = schema.new({
            id = id.from(_N, "LogsSummary", "General"),
            type = "boolean",
            name = "General",
            target_id = prelude.Boolean.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.JSON_NAME] = { name = "general" },
            },
        }),
        GeneralLogGroup = schema.new({
            id = id.from(_N, "LogsSummary", "GeneralLogGroup"),
            type = "string",
            name = "GeneralLogGroup",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.JSON_NAME] = { name = "generalLogGroup" },
            },
        }),
        Pending = schema.new({
            id = id.from(_N, "LogsSummary", "Pending"),
            type = "structure",
            name = "Pending",
            target_id = id.from(_N, "PendingLogs"),
            target = M.PendingLogs,
            traits = {
                [traits.JSON_NAME] = { name = "pending" },
            },
        }),
    },
})

M.DescribeBrokerOutput = schema.new({
    id = id.from(_N, "DescribeBrokerOutput"),
    type = "structure",
    members = {
        ActionsRequired = schema.new({
            id = id.from(_N, "DescribeBrokerOutput", "ActionsRequired"),
            type = "list",
            name = "ActionsRequired",
            target_id = prelude.Document.id,
            list_member = M.ActionRequired,
            traits = {
                [traits.JSON_NAME] = { name = "actionsRequired" },
            },
        }),
        AuthenticationStrategy = schema.new({
            id = id.from(_N, "DescribeBrokerOutput", "AuthenticationStrategy"),
            type = "string",
            name = "AuthenticationStrategy",
            target_id = prelude.String.id,
            traits = {
                [traits.JSON_NAME] = { name = "authenticationStrategy" },
            },
        }),
        AutoMinorVersionUpgrade = schema.new({
            id = id.from(_N, "DescribeBrokerOutput", "AutoMinorVersionUpgrade"),
            type = "boolean",
            name = "AutoMinorVersionUpgrade",
            target_id = prelude.Boolean.id,
            traits = {
                [traits.JSON_NAME] = { name = "autoMinorVersionUpgrade" },
            },
        }),
        BrokerArn = schema.new({
            id = id.from(_N, "DescribeBrokerOutput", "BrokerArn"),
            type = "string",
            name = "BrokerArn",
            target_id = prelude.String.id,
            traits = {
                [traits.JSON_NAME] = { name = "brokerArn" },
            },
        }),
        BrokerId = schema.new({
            id = id.from(_N, "DescribeBrokerOutput", "BrokerId"),
            type = "string",
            name = "BrokerId",
            target_id = prelude.String.id,
            traits = {
                [traits.JSON_NAME] = { name = "brokerId" },
            },
        }),
        BrokerInstances = schema.new({
            id = id.from(_N, "DescribeBrokerOutput", "BrokerInstances"),
            type = "list",
            name = "BrokerInstances",
            target_id = prelude.Document.id,
            list_member = M.BrokerInstance,
            traits = {
                [traits.JSON_NAME] = { name = "brokerInstances" },
            },
        }),
        BrokerName = schema.new({
            id = id.from(_N, "DescribeBrokerOutput", "BrokerName"),
            type = "string",
            name = "BrokerName",
            target_id = prelude.String.id,
            traits = {
                [traits.JSON_NAME] = { name = "brokerName" },
            },
        }),
        BrokerState = schema.new({
            id = id.from(_N, "DescribeBrokerOutput", "BrokerState"),
            type = "string",
            name = "BrokerState",
            target_id = prelude.String.id,
            traits = {
                [traits.JSON_NAME] = { name = "brokerState" },
            },
        }),
        Configurations = schema.new({
            id = id.from(_N, "DescribeBrokerOutput", "Configurations"),
            type = "structure",
            name = "Configurations",
            target_id = id.from(_N, "Configurations"),
            target = M.Configurations,
            traits = {
                [traits.JSON_NAME] = { name = "configurations" },
            },
        }),
        Created = schema.new({
            id = id.from(_N, "DescribeBrokerOutput", "Created"),
            type = "timestamp",
            name = "Created",
            target_id = prelude.Timestamp.id,
            traits = {
                [traits.JSON_NAME] = { name = "created" },
                [traits.TIMESTAMP_FORMAT] = { format = "date-time" },
            },
            direct_traits = {
                [traits.JSON_NAME] = { name = "created" },
            },
        }),
        DeploymentMode = schema.new({
            id = id.from(_N, "DescribeBrokerOutput", "DeploymentMode"),
            type = "string",
            name = "DeploymentMode",
            target_id = prelude.String.id,
            traits = {
                [traits.JSON_NAME] = { name = "deploymentMode" },
            },
        }),
        EncryptionOptions = schema.new({
            id = id.from(_N, "DescribeBrokerOutput", "EncryptionOptions"),
            type = "structure",
            name = "EncryptionOptions",
            target_id = id.from(_N, "EncryptionOptions"),
            target = M.EncryptionOptions,
            traits = {
                [traits.JSON_NAME] = { name = "encryptionOptions" },
            },
        }),
        EngineType = schema.new({
            id = id.from(_N, "DescribeBrokerOutput", "EngineType"),
            type = "string",
            name = "EngineType",
            target_id = prelude.String.id,
            traits = {
                [traits.JSON_NAME] = { name = "engineType" },
            },
        }),
        EngineVersion = schema.new({
            id = id.from(_N, "DescribeBrokerOutput", "EngineVersion"),
            type = "string",
            name = "EngineVersion",
            target_id = prelude.String.id,
            traits = {
                [traits.JSON_NAME] = { name = "engineVersion" },
            },
        }),
        HostInstanceType = schema.new({
            id = id.from(_N, "DescribeBrokerOutput", "HostInstanceType"),
            type = "string",
            name = "HostInstanceType",
            target_id = prelude.String.id,
            traits = {
                [traits.JSON_NAME] = { name = "hostInstanceType" },
            },
        }),
        LdapServerMetadata = schema.new({
            id = id.from(_N, "DescribeBrokerOutput", "LdapServerMetadata"),
            type = "structure",
            name = "LdapServerMetadata",
            target_id = id.from(_N, "LdapServerMetadataOutput"),
            target = M.LdapServerMetadataOutput,
            traits = {
                [traits.JSON_NAME] = { name = "ldapServerMetadata" },
            },
        }),
        Logs = schema.new({
            id = id.from(_N, "DescribeBrokerOutput", "Logs"),
            type = "structure",
            name = "Logs",
            target_id = id.from(_N, "LogsSummary"),
            target = M.LogsSummary,
            traits = {
                [traits.JSON_NAME] = { name = "logs" },
            },
        }),
        MaintenanceWindowStartTime = schema.new({
            id = id.from(_N, "DescribeBrokerOutput", "MaintenanceWindowStartTime"),
            type = "structure",
            name = "MaintenanceWindowStartTime",
            target_id = id.from(_N, "WeeklyStartTime"),
            target = M.WeeklyStartTime,
            traits = {
                [traits.JSON_NAME] = { name = "maintenanceWindowStartTime" },
            },
        }),
        PendingAuthenticationStrategy = schema.new({
            id = id.from(_N, "DescribeBrokerOutput", "PendingAuthenticationStrategy"),
            type = "string",
            name = "PendingAuthenticationStrategy",
            target_id = prelude.String.id,
            traits = {
                [traits.JSON_NAME] = { name = "pendingAuthenticationStrategy" },
            },
        }),
        PendingEngineVersion = schema.new({
            id = id.from(_N, "DescribeBrokerOutput", "PendingEngineVersion"),
            type = "string",
            name = "PendingEngineVersion",
            target_id = prelude.String.id,
            traits = {
                [traits.JSON_NAME] = { name = "pendingEngineVersion" },
            },
        }),
        PendingHostInstanceType = schema.new({
            id = id.from(_N, "DescribeBrokerOutput", "PendingHostInstanceType"),
            type = "string",
            name = "PendingHostInstanceType",
            target_id = prelude.String.id,
            traits = {
                [traits.JSON_NAME] = { name = "pendingHostInstanceType" },
            },
        }),
        PendingLdapServerMetadata = schema.new({
            id = id.from(_N, "DescribeBrokerOutput", "PendingLdapServerMetadata"),
            type = "structure",
            name = "PendingLdapServerMetadata",
            target_id = id.from(_N, "LdapServerMetadataOutput"),
            target = M.LdapServerMetadataOutput,
            traits = {
                [traits.JSON_NAME] = { name = "pendingLdapServerMetadata" },
            },
        }),
        PendingSecurityGroups = schema.new({
            id = id.from(_N, "DescribeBrokerOutput", "PendingSecurityGroups"),
            type = "list",
            name = "PendingSecurityGroups",
            target_id = prelude.Document.id,
            list_member = prelude.String,
            traits = {
                [traits.JSON_NAME] = { name = "pendingSecurityGroups" },
            },
        }),
        PubliclyAccessible = schema.new({
            id = id.from(_N, "DescribeBrokerOutput", "PubliclyAccessible"),
            type = "boolean",
            name = "PubliclyAccessible",
            target_id = prelude.Boolean.id,
            traits = {
                [traits.JSON_NAME] = { name = "publiclyAccessible" },
            },
        }),
        SecurityGroups = schema.new({
            id = id.from(_N, "DescribeBrokerOutput", "SecurityGroups"),
            type = "list",
            name = "SecurityGroups",
            target_id = prelude.Document.id,
            list_member = prelude.String,
            traits = {
                [traits.JSON_NAME] = { name = "securityGroups" },
            },
        }),
        StorageType = schema.new({
            id = id.from(_N, "DescribeBrokerOutput", "StorageType"),
            type = "string",
            name = "StorageType",
            target_id = prelude.String.id,
            traits = {
                [traits.JSON_NAME] = { name = "storageType" },
            },
        }),
        SubnetIds = schema.new({
            id = id.from(_N, "DescribeBrokerOutput", "SubnetIds"),
            type = "list",
            name = "SubnetIds",
            target_id = prelude.Document.id,
            list_member = prelude.String,
            traits = {
                [traits.JSON_NAME] = { name = "subnetIds" },
            },
        }),
        Tags = schema.new({
            id = id.from(_N, "DescribeBrokerOutput", "Tags"),
            type = "map",
            name = "Tags",
            target_id = prelude.Document.id,
            map_key = prelude.String,
            map_value = prelude.String,
            traits = {
                [traits.JSON_NAME] = { name = "tags" },
            },
        }),
        Users = schema.new({
            id = id.from(_N, "DescribeBrokerOutput", "Users"),
            type = "list",
            name = "Users",
            target_id = prelude.Document.id,
            list_member = M.UserSummary,
            traits = {
                [traits.JSON_NAME] = { name = "users" },
            },
        }),
        DataReplicationMetadata = schema.new({
            id = id.from(_N, "DescribeBrokerOutput", "DataReplicationMetadata"),
            type = "structure",
            name = "DataReplicationMetadata",
            target_id = id.from(_N, "DataReplicationMetadataOutput"),
            target = M.DataReplicationMetadataOutput,
            traits = {
                [traits.JSON_NAME] = { name = "dataReplicationMetadata" },
            },
        }),
        DataReplicationMode = schema.new({
            id = id.from(_N, "DescribeBrokerOutput", "DataReplicationMode"),
            type = "string",
            name = "DataReplicationMode",
            target_id = prelude.String.id,
            traits = {
                [traits.JSON_NAME] = { name = "dataReplicationMode" },
            },
        }),
        PendingDataReplicationMetadata = schema.new({
            id = id.from(_N, "DescribeBrokerOutput", "PendingDataReplicationMetadata"),
            type = "structure",
            name = "PendingDataReplicationMetadata",
            target_id = id.from(_N, "DataReplicationMetadataOutput"),
            target = M.DataReplicationMetadataOutput,
            traits = {
                [traits.JSON_NAME] = { name = "pendingDataReplicationMetadata" },
            },
        }),
        PendingDataReplicationMode = schema.new({
            id = id.from(_N, "DescribeBrokerOutput", "PendingDataReplicationMode"),
            type = "string",
            name = "PendingDataReplicationMode",
            target_id = prelude.String.id,
            traits = {
                [traits.JSON_NAME] = { name = "pendingDataReplicationMode" },
            },
        }),
    },
})

M.DescribeBrokerEngineTypesInput = schema.new({
    id = id.from(_N, "DescribeBrokerEngineTypesInput"),
    type = "structure",
    members = {
        EngineType = schema.new({
            id = id.from(_N, "DescribeBrokerEngineTypesInput", "EngineType"),
            type = "string",
            name = "EngineType",
            target_id = prelude.String.id,
            traits = {
                [traits.HTTP_QUERY] = { name = "engineType" },
            },
        }),
        MaxResults = schema.new({
            id = id.from(_N, "DescribeBrokerEngineTypesInput", "MaxResults"),
            type = "integer",
            name = "MaxResults",
            target_id = prelude.Integer.id,
            traits = {
                [traits.HTTP_QUERY] = { name = "maxResults" },
            },
        }),
        NextToken = schema.new({
            id = id.from(_N, "DescribeBrokerEngineTypesInput", "NextToken"),
            type = "string",
            name = "NextToken",
            target_id = prelude.String.id,
            traits = {
                [traits.HTTP_QUERY] = { name = "nextToken" },
            },
        }),
    },
})

M.DescribeBrokerEngineTypesOutput = schema.new({
    id = id.from(_N, "DescribeBrokerEngineTypesOutput"),
    type = "structure",
    members = {
        BrokerEngineTypes = schema.new({
            id = id.from(_N, "DescribeBrokerEngineTypesOutput", "BrokerEngineTypes"),
            type = "list",
            name = "BrokerEngineTypes",
            target_id = prelude.Document.id,
            list_member = M.BrokerEngineType,
            traits = {
                [traits.JSON_NAME] = { name = "brokerEngineTypes" },
            },
        }),
        MaxResults = schema.new({
            id = id.from(_N, "DescribeBrokerEngineTypesOutput", "MaxResults"),
            type = "integer",
            name = "MaxResults",
            target_id = prelude.Integer.id,
            traits = {
                [traits.JSON_NAME] = { name = "maxResults" },
            },
        }),
        NextToken = schema.new({
            id = id.from(_N, "DescribeBrokerEngineTypesOutput", "NextToken"),
            type = "string",
            name = "NextToken",
            target_id = prelude.String.id,
            traits = {
                [traits.JSON_NAME] = { name = "nextToken" },
            },
        }),
    },
})

M.DescribeBrokerInstanceOptionsInput = schema.new({
    id = id.from(_N, "DescribeBrokerInstanceOptionsInput"),
    type = "structure",
    members = {
        EngineType = schema.new({
            id = id.from(_N, "DescribeBrokerInstanceOptionsInput", "EngineType"),
            type = "string",
            name = "EngineType",
            target_id = prelude.String.id,
            traits = {
                [traits.HTTP_QUERY] = { name = "engineType" },
            },
        }),
        HostInstanceType = schema.new({
            id = id.from(_N, "DescribeBrokerInstanceOptionsInput", "HostInstanceType"),
            type = "string",
            name = "HostInstanceType",
            target_id = prelude.String.id,
            traits = {
                [traits.HTTP_QUERY] = { name = "hostInstanceType" },
            },
        }),
        MaxResults = schema.new({
            id = id.from(_N, "DescribeBrokerInstanceOptionsInput", "MaxResults"),
            type = "integer",
            name = "MaxResults",
            target_id = prelude.Integer.id,
            traits = {
                [traits.HTTP_QUERY] = { name = "maxResults" },
            },
        }),
        NextToken = schema.new({
            id = id.from(_N, "DescribeBrokerInstanceOptionsInput", "NextToken"),
            type = "string",
            name = "NextToken",
            target_id = prelude.String.id,
            traits = {
                [traits.HTTP_QUERY] = { name = "nextToken" },
            },
        }),
        StorageType = schema.new({
            id = id.from(_N, "DescribeBrokerInstanceOptionsInput", "StorageType"),
            type = "string",
            name = "StorageType",
            target_id = prelude.String.id,
            traits = {
                [traits.HTTP_QUERY] = { name = "storageType" },
            },
        }),
    },
})

M.DescribeBrokerInstanceOptionsOutput = schema.new({
    id = id.from(_N, "DescribeBrokerInstanceOptionsOutput"),
    type = "structure",
    members = {
        BrokerInstanceOptions = schema.new({
            id = id.from(_N, "DescribeBrokerInstanceOptionsOutput", "BrokerInstanceOptions"),
            type = "list",
            name = "BrokerInstanceOptions",
            target_id = prelude.Document.id,
            list_member = M.BrokerInstanceOption,
            traits = {
                [traits.JSON_NAME] = { name = "brokerInstanceOptions" },
            },
        }),
        MaxResults = schema.new({
            id = id.from(_N, "DescribeBrokerInstanceOptionsOutput", "MaxResults"),
            type = "integer",
            name = "MaxResults",
            target_id = prelude.Integer.id,
            traits = {
                [traits.JSON_NAME] = { name = "maxResults" },
            },
        }),
        NextToken = schema.new({
            id = id.from(_N, "DescribeBrokerInstanceOptionsOutput", "NextToken"),
            type = "string",
            name = "NextToken",
            target_id = prelude.String.id,
            traits = {
                [traits.JSON_NAME] = { name = "nextToken" },
            },
        }),
    },
})

M.DescribeConfigurationInput = schema.new({
    id = id.from(_N, "DescribeConfigurationInput"),
    type = "structure",
    members = {
        ConfigurationId = schema.new({
            id = id.from(_N, "DescribeConfigurationInput", "ConfigurationId"),
            type = "string",
            name = "ConfigurationId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
    },
})

M.DescribeConfigurationOutput = schema.new({
    id = id.from(_N, "DescribeConfigurationOutput"),
    type = "structure",
    members = {
        Arn = schema.new({
            id = id.from(_N, "DescribeConfigurationOutput", "Arn"),
            type = "string",
            name = "Arn",
            target_id = prelude.String.id,
            traits = {
                [traits.JSON_NAME] = { name = "arn" },
            },
        }),
        AuthenticationStrategy = schema.new({
            id = id.from(_N, "DescribeConfigurationOutput", "AuthenticationStrategy"),
            type = "string",
            name = "AuthenticationStrategy",
            target_id = prelude.String.id,
            traits = {
                [traits.JSON_NAME] = { name = "authenticationStrategy" },
            },
        }),
        Created = schema.new({
            id = id.from(_N, "DescribeConfigurationOutput", "Created"),
            type = "timestamp",
            name = "Created",
            target_id = prelude.Timestamp.id,
            traits = {
                [traits.JSON_NAME] = { name = "created" },
                [traits.TIMESTAMP_FORMAT] = { format = "date-time" },
            },
            direct_traits = {
                [traits.JSON_NAME] = { name = "created" },
            },
        }),
        Description = schema.new({
            id = id.from(_N, "DescribeConfigurationOutput", "Description"),
            type = "string",
            name = "Description",
            target_id = prelude.String.id,
            traits = {
                [traits.JSON_NAME] = { name = "description" },
            },
        }),
        EngineType = schema.new({
            id = id.from(_N, "DescribeConfigurationOutput", "EngineType"),
            type = "string",
            name = "EngineType",
            target_id = prelude.String.id,
            traits = {
                [traits.JSON_NAME] = { name = "engineType" },
            },
        }),
        EngineVersion = schema.new({
            id = id.from(_N, "DescribeConfigurationOutput", "EngineVersion"),
            type = "string",
            name = "EngineVersion",
            target_id = prelude.String.id,
            traits = {
                [traits.JSON_NAME] = { name = "engineVersion" },
            },
        }),
        Id = schema.new({
            id = id.from(_N, "DescribeConfigurationOutput", "Id"),
            type = "string",
            name = "Id",
            target_id = prelude.String.id,
            traits = {
                [traits.JSON_NAME] = { name = "id" },
            },
        }),
        LatestRevision = schema.new({
            id = id.from(_N, "DescribeConfigurationOutput", "LatestRevision"),
            type = "structure",
            name = "LatestRevision",
            target_id = id.from(_N, "ConfigurationRevision"),
            target = M.ConfigurationRevision,
            traits = {
                [traits.JSON_NAME] = { name = "latestRevision" },
            },
        }),
        Name = schema.new({
            id = id.from(_N, "DescribeConfigurationOutput", "Name"),
            type = "string",
            name = "Name",
            target_id = prelude.String.id,
            traits = {
                [traits.JSON_NAME] = { name = "name" },
            },
        }),
        Tags = schema.new({
            id = id.from(_N, "DescribeConfigurationOutput", "Tags"),
            type = "map",
            name = "Tags",
            target_id = prelude.Document.id,
            map_key = prelude.String,
            map_value = prelude.String,
            traits = {
                [traits.JSON_NAME] = { name = "tags" },
            },
        }),
    },
})

M.DescribeConfigurationRevisionInput = schema.new({
    id = id.from(_N, "DescribeConfigurationRevisionInput"),
    type = "structure",
    members = {
        ConfigurationId = schema.new({
            id = id.from(_N, "DescribeConfigurationRevisionInput", "ConfigurationId"),
            type = "string",
            name = "ConfigurationId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
        ConfigurationRevision = schema.new({
            id = id.from(_N, "DescribeConfigurationRevisionInput", "ConfigurationRevision"),
            type = "string",
            name = "ConfigurationRevision",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
    },
})

M.DescribeConfigurationRevisionOutput = schema.new({
    id = id.from(_N, "DescribeConfigurationRevisionOutput"),
    type = "structure",
    members = {
        ConfigurationId = schema.new({
            id = id.from(_N, "DescribeConfigurationRevisionOutput", "ConfigurationId"),
            type = "string",
            name = "ConfigurationId",
            target_id = prelude.String.id,
            traits = {
                [traits.JSON_NAME] = { name = "configurationId" },
            },
        }),
        Created = schema.new({
            id = id.from(_N, "DescribeConfigurationRevisionOutput", "Created"),
            type = "timestamp",
            name = "Created",
            target_id = prelude.Timestamp.id,
            traits = {
                [traits.JSON_NAME] = { name = "created" },
                [traits.TIMESTAMP_FORMAT] = { format = "date-time" },
            },
            direct_traits = {
                [traits.JSON_NAME] = { name = "created" },
            },
        }),
        Data = schema.new({
            id = id.from(_N, "DescribeConfigurationRevisionOutput", "Data"),
            type = "string",
            name = "Data",
            target_id = prelude.String.id,
            traits = {
                [traits.JSON_NAME] = { name = "data" },
            },
        }),
        Description = schema.new({
            id = id.from(_N, "DescribeConfigurationRevisionOutput", "Description"),
            type = "string",
            name = "Description",
            target_id = prelude.String.id,
            traits = {
                [traits.JSON_NAME] = { name = "description" },
            },
        }),
    },
})

M.DescribeUserInput = schema.new({
    id = id.from(_N, "DescribeUserInput"),
    type = "structure",
    members = {
        BrokerId = schema.new({
            id = id.from(_N, "DescribeUserInput", "BrokerId"),
            type = "string",
            name = "BrokerId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
        Username = schema.new({
            id = id.from(_N, "DescribeUserInput", "Username"),
            type = "string",
            name = "Username",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
    },
})

M.UserPendingChanges = schema.new({
    id = id.from(_N, "UserPendingChanges"),
    type = "structure",
    members = {
        ConsoleAccess = schema.new({
            id = id.from(_N, "UserPendingChanges", "ConsoleAccess"),
            type = "boolean",
            name = "ConsoleAccess",
            target_id = prelude.Boolean.id,
            traits = {
                [traits.JSON_NAME] = { name = "consoleAccess" },
            },
        }),
        Groups = schema.new({
            id = id.from(_N, "UserPendingChanges", "Groups"),
            type = "list",
            name = "Groups",
            target_id = prelude.Document.id,
            list_member = prelude.String,
            traits = {
                [traits.JSON_NAME] = { name = "groups" },
            },
        }),
        PendingChange = schema.new({
            id = id.from(_N, "UserPendingChanges", "PendingChange"),
            type = "string",
            name = "PendingChange",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.JSON_NAME] = { name = "pendingChange" },
            },
        }),
    },
})

M.DescribeUserOutput = schema.new({
    id = id.from(_N, "DescribeUserOutput"),
    type = "structure",
    members = {
        BrokerId = schema.new({
            id = id.from(_N, "DescribeUserOutput", "BrokerId"),
            type = "string",
            name = "BrokerId",
            target_id = prelude.String.id,
            traits = {
                [traits.JSON_NAME] = { name = "brokerId" },
            },
        }),
        ConsoleAccess = schema.new({
            id = id.from(_N, "DescribeUserOutput", "ConsoleAccess"),
            type = "boolean",
            name = "ConsoleAccess",
            target_id = prelude.Boolean.id,
            traits = {
                [traits.JSON_NAME] = { name = "consoleAccess" },
            },
        }),
        Groups = schema.new({
            id = id.from(_N, "DescribeUserOutput", "Groups"),
            type = "list",
            name = "Groups",
            target_id = prelude.Document.id,
            list_member = prelude.String,
            traits = {
                [traits.JSON_NAME] = { name = "groups" },
            },
        }),
        Pending = schema.new({
            id = id.from(_N, "DescribeUserOutput", "Pending"),
            type = "structure",
            name = "Pending",
            target_id = id.from(_N, "UserPendingChanges"),
            target = M.UserPendingChanges,
            traits = {
                [traits.JSON_NAME] = { name = "pending" },
            },
        }),
        Username = schema.new({
            id = id.from(_N, "DescribeUserOutput", "Username"),
            type = "string",
            name = "Username",
            target_id = prelude.String.id,
            traits = {
                [traits.JSON_NAME] = { name = "username" },
            },
        }),
        ReplicationUser = schema.new({
            id = id.from(_N, "DescribeUserOutput", "ReplicationUser"),
            type = "boolean",
            name = "ReplicationUser",
            target_id = prelude.Boolean.id,
            traits = {
                [traits.JSON_NAME] = { name = "replicationUser" },
            },
        }),
    },
})

M.ListBrokersInput = schema.new({
    id = id.from(_N, "ListBrokersInput"),
    type = "structure",
    members = {
        MaxResults = schema.new({
            id = id.from(_N, "ListBrokersInput", "MaxResults"),
            type = "integer",
            name = "MaxResults",
            target_id = prelude.Integer.id,
            traits = {
                [traits.HTTP_QUERY] = { name = "maxResults" },
            },
        }),
        NextToken = schema.new({
            id = id.from(_N, "ListBrokersInput", "NextToken"),
            type = "string",
            name = "NextToken",
            target_id = prelude.String.id,
            traits = {
                [traits.HTTP_QUERY] = { name = "nextToken" },
            },
        }),
    },
})

M.ListBrokersOutput = schema.new({
    id = id.from(_N, "ListBrokersOutput"),
    type = "structure",
    members = {
        BrokerSummaries = schema.new({
            id = id.from(_N, "ListBrokersOutput", "BrokerSummaries"),
            type = "list",
            name = "BrokerSummaries",
            target_id = prelude.Document.id,
            list_member = M.BrokerSummary,
            traits = {
                [traits.JSON_NAME] = { name = "brokerSummaries" },
            },
        }),
        NextToken = schema.new({
            id = id.from(_N, "ListBrokersOutput", "NextToken"),
            type = "string",
            name = "NextToken",
            target_id = prelude.String.id,
            traits = {
                [traits.JSON_NAME] = { name = "nextToken" },
            },
        }),
    },
})

M.ListConfigurationRevisionsInput = schema.new({
    id = id.from(_N, "ListConfigurationRevisionsInput"),
    type = "structure",
    members = {
        ConfigurationId = schema.new({
            id = id.from(_N, "ListConfigurationRevisionsInput", "ConfigurationId"),
            type = "string",
            name = "ConfigurationId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
        MaxResults = schema.new({
            id = id.from(_N, "ListConfigurationRevisionsInput", "MaxResults"),
            type = "integer",
            name = "MaxResults",
            target_id = prelude.Integer.id,
            traits = {
                [traits.HTTP_QUERY] = { name = "maxResults" },
            },
        }),
        NextToken = schema.new({
            id = id.from(_N, "ListConfigurationRevisionsInput", "NextToken"),
            type = "string",
            name = "NextToken",
            target_id = prelude.String.id,
            traits = {
                [traits.HTTP_QUERY] = { name = "nextToken" },
            },
        }),
    },
})

M.ListConfigurationRevisionsOutput = schema.new({
    id = id.from(_N, "ListConfigurationRevisionsOutput"),
    type = "structure",
    members = {
        ConfigurationId = schema.new({
            id = id.from(_N, "ListConfigurationRevisionsOutput", "ConfigurationId"),
            type = "string",
            name = "ConfigurationId",
            target_id = prelude.String.id,
            traits = {
                [traits.JSON_NAME] = { name = "configurationId" },
            },
        }),
        MaxResults = schema.new({
            id = id.from(_N, "ListConfigurationRevisionsOutput", "MaxResults"),
            type = "integer",
            name = "MaxResults",
            target_id = prelude.Integer.id,
            traits = {
                [traits.JSON_NAME] = { name = "maxResults" },
            },
        }),
        NextToken = schema.new({
            id = id.from(_N, "ListConfigurationRevisionsOutput", "NextToken"),
            type = "string",
            name = "NextToken",
            target_id = prelude.String.id,
            traits = {
                [traits.JSON_NAME] = { name = "nextToken" },
            },
        }),
        Revisions = schema.new({
            id = id.from(_N, "ListConfigurationRevisionsOutput", "Revisions"),
            type = "list",
            name = "Revisions",
            target_id = prelude.Document.id,
            list_member = M.ConfigurationRevision,
            traits = {
                [traits.JSON_NAME] = { name = "revisions" },
            },
        }),
    },
})

M.ListConfigurationsInput = schema.new({
    id = id.from(_N, "ListConfigurationsInput"),
    type = "structure",
    members = {
        MaxResults = schema.new({
            id = id.from(_N, "ListConfigurationsInput", "MaxResults"),
            type = "integer",
            name = "MaxResults",
            target_id = prelude.Integer.id,
            traits = {
                [traits.HTTP_QUERY] = { name = "maxResults" },
            },
        }),
        NextToken = schema.new({
            id = id.from(_N, "ListConfigurationsInput", "NextToken"),
            type = "string",
            name = "NextToken",
            target_id = prelude.String.id,
            traits = {
                [traits.HTTP_QUERY] = { name = "nextToken" },
            },
        }),
    },
})

M.ListConfigurationsOutput = schema.new({
    id = id.from(_N, "ListConfigurationsOutput"),
    type = "structure",
    members = {
        Configurations = schema.new({
            id = id.from(_N, "ListConfigurationsOutput", "Configurations"),
            type = "list",
            name = "Configurations",
            target_id = prelude.Document.id,
            list_member = M.Configuration,
            traits = {
                [traits.JSON_NAME] = { name = "configurations" },
            },
        }),
        MaxResults = schema.new({
            id = id.from(_N, "ListConfigurationsOutput", "MaxResults"),
            type = "integer",
            name = "MaxResults",
            target_id = prelude.Integer.id,
            traits = {
                [traits.JSON_NAME] = { name = "maxResults" },
            },
        }),
        NextToken = schema.new({
            id = id.from(_N, "ListConfigurationsOutput", "NextToken"),
            type = "string",
            name = "NextToken",
            target_id = prelude.String.id,
            traits = {
                [traits.JSON_NAME] = { name = "nextToken" },
            },
        }),
    },
})

M.ListTagsInput = schema.new({
    id = id.from(_N, "ListTagsInput"),
    type = "structure",
    members = {
        ResourceArn = schema.new({
            id = id.from(_N, "ListTagsInput", "ResourceArn"),
            type = "string",
            name = "ResourceArn",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
    },
})

M.ListTagsOutput = schema.new({
    id = id.from(_N, "ListTagsOutput"),
    type = "structure",
    members = {
        Tags = schema.new({
            id = id.from(_N, "ListTagsOutput", "Tags"),
            type = "map",
            name = "Tags",
            target_id = prelude.Document.id,
            map_key = prelude.String,
            map_value = prelude.String,
            traits = {
                [traits.JSON_NAME] = { name = "tags" },
            },
        }),
    },
})

M.ListUsersInput = schema.new({
    id = id.from(_N, "ListUsersInput"),
    type = "structure",
    members = {
        BrokerId = schema.new({
            id = id.from(_N, "ListUsersInput", "BrokerId"),
            type = "string",
            name = "BrokerId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
        MaxResults = schema.new({
            id = id.from(_N, "ListUsersInput", "MaxResults"),
            type = "integer",
            name = "MaxResults",
            target_id = prelude.Integer.id,
            traits = {
                [traits.HTTP_QUERY] = { name = "maxResults" },
            },
        }),
        NextToken = schema.new({
            id = id.from(_N, "ListUsersInput", "NextToken"),
            type = "string",
            name = "NextToken",
            target_id = prelude.String.id,
            traits = {
                [traits.HTTP_QUERY] = { name = "nextToken" },
            },
        }),
    },
})

M.ListUsersOutput = schema.new({
    id = id.from(_N, "ListUsersOutput"),
    type = "structure",
    members = {
        BrokerId = schema.new({
            id = id.from(_N, "ListUsersOutput", "BrokerId"),
            type = "string",
            name = "BrokerId",
            target_id = prelude.String.id,
            traits = {
                [traits.JSON_NAME] = { name = "brokerId" },
            },
        }),
        MaxResults = schema.new({
            id = id.from(_N, "ListUsersOutput", "MaxResults"),
            type = "integer",
            name = "MaxResults",
            target_id = prelude.Integer.id,
            traits = {
                [traits.JSON_NAME] = { name = "maxResults" },
            },
        }),
        NextToken = schema.new({
            id = id.from(_N, "ListUsersOutput", "NextToken"),
            type = "string",
            name = "NextToken",
            target_id = prelude.String.id,
            traits = {
                [traits.JSON_NAME] = { name = "nextToken" },
            },
        }),
        Users = schema.new({
            id = id.from(_N, "ListUsersOutput", "Users"),
            type = "list",
            name = "Users",
            target_id = prelude.Document.id,
            list_member = M.UserSummary,
            traits = {
                [traits.JSON_NAME] = { name = "users" },
            },
        }),
    },
})

M.PromoteInput = schema.new({
    id = id.from(_N, "PromoteInput"),
    type = "structure",
    members = {
        BrokerId = schema.new({
            id = id.from(_N, "PromoteInput", "BrokerId"),
            type = "string",
            name = "BrokerId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
        Mode = schema.new({
            id = id.from(_N, "PromoteInput", "Mode"),
            type = "string",
            name = "Mode",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.JSON_NAME] = { name = "mode" },
            },
        }),
    },
})

M.PromoteOutput = schema.new({
    id = id.from(_N, "PromoteOutput"),
    type = "structure",
    members = {
        BrokerId = schema.new({
            id = id.from(_N, "PromoteOutput", "BrokerId"),
            type = "string",
            name = "BrokerId",
            target_id = prelude.String.id,
            traits = {
                [traits.JSON_NAME] = { name = "brokerId" },
            },
        }),
    },
})

M.RebootBrokerInput = schema.new({
    id = id.from(_N, "RebootBrokerInput"),
    type = "structure",
    members = {
        BrokerId = schema.new({
            id = id.from(_N, "RebootBrokerInput", "BrokerId"),
            type = "string",
            name = "BrokerId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
    },
})

M.RebootBrokerOutput = schema.new({
    id = id.from(_N, "RebootBrokerOutput"),
    type = "structure",
})

M.UpdateBrokerInput = schema.new({
    id = id.from(_N, "UpdateBrokerInput"),
    type = "structure",
    members = {
        AuthenticationStrategy = schema.new({
            id = id.from(_N, "UpdateBrokerInput", "AuthenticationStrategy"),
            type = "string",
            name = "AuthenticationStrategy",
            target_id = prelude.String.id,
            traits = {
                [traits.JSON_NAME] = { name = "authenticationStrategy" },
            },
        }),
        AutoMinorVersionUpgrade = schema.new({
            id = id.from(_N, "UpdateBrokerInput", "AutoMinorVersionUpgrade"),
            type = "boolean",
            name = "AutoMinorVersionUpgrade",
            target_id = prelude.Boolean.id,
            traits = {
                [traits.JSON_NAME] = { name = "autoMinorVersionUpgrade" },
            },
        }),
        BrokerId = schema.new({
            id = id.from(_N, "UpdateBrokerInput", "BrokerId"),
            type = "string",
            name = "BrokerId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
        Configuration = schema.new({
            id = id.from(_N, "UpdateBrokerInput", "Configuration"),
            type = "structure",
            name = "Configuration",
            target_id = id.from(_N, "ConfigurationId"),
            target = M.ConfigurationId,
            traits = {
                [traits.JSON_NAME] = { name = "configuration" },
            },
        }),
        EngineVersion = schema.new({
            id = id.from(_N, "UpdateBrokerInput", "EngineVersion"),
            type = "string",
            name = "EngineVersion",
            target_id = prelude.String.id,
            traits = {
                [traits.JSON_NAME] = { name = "engineVersion" },
            },
        }),
        HostInstanceType = schema.new({
            id = id.from(_N, "UpdateBrokerInput", "HostInstanceType"),
            type = "string",
            name = "HostInstanceType",
            target_id = prelude.String.id,
            traits = {
                [traits.JSON_NAME] = { name = "hostInstanceType" },
            },
        }),
        LdapServerMetadata = schema.new({
            id = id.from(_N, "UpdateBrokerInput", "LdapServerMetadata"),
            type = "structure",
            name = "LdapServerMetadata",
            target_id = id.from(_N, "LdapServerMetadataInput"),
            target = M.LdapServerMetadataInput,
            traits = {
                [traits.JSON_NAME] = { name = "ldapServerMetadata" },
            },
        }),
        Logs = schema.new({
            id = id.from(_N, "UpdateBrokerInput", "Logs"),
            type = "structure",
            name = "Logs",
            target_id = id.from(_N, "Logs"),
            target = M.Logs,
            traits = {
                [traits.JSON_NAME] = { name = "logs" },
            },
        }),
        MaintenanceWindowStartTime = schema.new({
            id = id.from(_N, "UpdateBrokerInput", "MaintenanceWindowStartTime"),
            type = "structure",
            name = "MaintenanceWindowStartTime",
            target_id = id.from(_N, "WeeklyStartTime"),
            target = M.WeeklyStartTime,
            traits = {
                [traits.JSON_NAME] = { name = "maintenanceWindowStartTime" },
            },
        }),
        SecurityGroups = schema.new({
            id = id.from(_N, "UpdateBrokerInput", "SecurityGroups"),
            type = "list",
            name = "SecurityGroups",
            target_id = prelude.Document.id,
            list_member = prelude.String,
            traits = {
                [traits.JSON_NAME] = { name = "securityGroups" },
            },
        }),
        DataReplicationMode = schema.new({
            id = id.from(_N, "UpdateBrokerInput", "DataReplicationMode"),
            type = "string",
            name = "DataReplicationMode",
            target_id = prelude.String.id,
            traits = {
                [traits.JSON_NAME] = { name = "dataReplicationMode" },
            },
        }),
    },
})

M.UpdateBrokerOutput = schema.new({
    id = id.from(_N, "UpdateBrokerOutput"),
    type = "structure",
    members = {
        AuthenticationStrategy = schema.new({
            id = id.from(_N, "UpdateBrokerOutput", "AuthenticationStrategy"),
            type = "string",
            name = "AuthenticationStrategy",
            target_id = prelude.String.id,
            traits = {
                [traits.JSON_NAME] = { name = "authenticationStrategy" },
            },
        }),
        AutoMinorVersionUpgrade = schema.new({
            id = id.from(_N, "UpdateBrokerOutput", "AutoMinorVersionUpgrade"),
            type = "boolean",
            name = "AutoMinorVersionUpgrade",
            target_id = prelude.Boolean.id,
            traits = {
                [traits.JSON_NAME] = { name = "autoMinorVersionUpgrade" },
            },
        }),
        BrokerId = schema.new({
            id = id.from(_N, "UpdateBrokerOutput", "BrokerId"),
            type = "string",
            name = "BrokerId",
            target_id = prelude.String.id,
            traits = {
                [traits.JSON_NAME] = { name = "brokerId" },
            },
        }),
        Configuration = schema.new({
            id = id.from(_N, "UpdateBrokerOutput", "Configuration"),
            type = "structure",
            name = "Configuration",
            target_id = id.from(_N, "ConfigurationId"),
            target = M.ConfigurationId,
            traits = {
                [traits.JSON_NAME] = { name = "configuration" },
            },
        }),
        EngineVersion = schema.new({
            id = id.from(_N, "UpdateBrokerOutput", "EngineVersion"),
            type = "string",
            name = "EngineVersion",
            target_id = prelude.String.id,
            traits = {
                [traits.JSON_NAME] = { name = "engineVersion" },
            },
        }),
        HostInstanceType = schema.new({
            id = id.from(_N, "UpdateBrokerOutput", "HostInstanceType"),
            type = "string",
            name = "HostInstanceType",
            target_id = prelude.String.id,
            traits = {
                [traits.JSON_NAME] = { name = "hostInstanceType" },
            },
        }),
        LdapServerMetadata = schema.new({
            id = id.from(_N, "UpdateBrokerOutput", "LdapServerMetadata"),
            type = "structure",
            name = "LdapServerMetadata",
            target_id = id.from(_N, "LdapServerMetadataOutput"),
            target = M.LdapServerMetadataOutput,
            traits = {
                [traits.JSON_NAME] = { name = "ldapServerMetadata" },
            },
        }),
        Logs = schema.new({
            id = id.from(_N, "UpdateBrokerOutput", "Logs"),
            type = "structure",
            name = "Logs",
            target_id = id.from(_N, "Logs"),
            target = M.Logs,
            traits = {
                [traits.JSON_NAME] = { name = "logs" },
            },
        }),
        MaintenanceWindowStartTime = schema.new({
            id = id.from(_N, "UpdateBrokerOutput", "MaintenanceWindowStartTime"),
            type = "structure",
            name = "MaintenanceWindowStartTime",
            target_id = id.from(_N, "WeeklyStartTime"),
            target = M.WeeklyStartTime,
            traits = {
                [traits.JSON_NAME] = { name = "maintenanceWindowStartTime" },
            },
        }),
        SecurityGroups = schema.new({
            id = id.from(_N, "UpdateBrokerOutput", "SecurityGroups"),
            type = "list",
            name = "SecurityGroups",
            target_id = prelude.Document.id,
            list_member = prelude.String,
            traits = {
                [traits.JSON_NAME] = { name = "securityGroups" },
            },
        }),
        DataReplicationMetadata = schema.new({
            id = id.from(_N, "UpdateBrokerOutput", "DataReplicationMetadata"),
            type = "structure",
            name = "DataReplicationMetadata",
            target_id = id.from(_N, "DataReplicationMetadataOutput"),
            target = M.DataReplicationMetadataOutput,
            traits = {
                [traits.JSON_NAME] = { name = "dataReplicationMetadata" },
            },
        }),
        DataReplicationMode = schema.new({
            id = id.from(_N, "UpdateBrokerOutput", "DataReplicationMode"),
            type = "string",
            name = "DataReplicationMode",
            target_id = prelude.String.id,
            traits = {
                [traits.JSON_NAME] = { name = "dataReplicationMode" },
            },
        }),
        PendingDataReplicationMetadata = schema.new({
            id = id.from(_N, "UpdateBrokerOutput", "PendingDataReplicationMetadata"),
            type = "structure",
            name = "PendingDataReplicationMetadata",
            target_id = id.from(_N, "DataReplicationMetadataOutput"),
            target = M.DataReplicationMetadataOutput,
            traits = {
                [traits.JSON_NAME] = { name = "pendingDataReplicationMetadata" },
            },
        }),
        PendingDataReplicationMode = schema.new({
            id = id.from(_N, "UpdateBrokerOutput", "PendingDataReplicationMode"),
            type = "string",
            name = "PendingDataReplicationMode",
            target_id = prelude.String.id,
            traits = {
                [traits.JSON_NAME] = { name = "pendingDataReplicationMode" },
            },
        }),
    },
})

M.UpdateConfigurationInput = schema.new({
    id = id.from(_N, "UpdateConfigurationInput"),
    type = "structure",
    members = {
        ConfigurationId = schema.new({
            id = id.from(_N, "UpdateConfigurationInput", "ConfigurationId"),
            type = "string",
            name = "ConfigurationId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
        Data = schema.new({
            id = id.from(_N, "UpdateConfigurationInput", "Data"),
            type = "string",
            name = "Data",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.JSON_NAME] = { name = "data" },
            },
        }),
        Description = schema.new({
            id = id.from(_N, "UpdateConfigurationInput", "Description"),
            type = "string",
            name = "Description",
            target_id = prelude.String.id,
            traits = {
                [traits.JSON_NAME] = { name = "description" },
            },
        }),
    },
})

M.UpdateConfigurationOutput = schema.new({
    id = id.from(_N, "UpdateConfigurationOutput"),
    type = "structure",
    members = {
        Arn = schema.new({
            id = id.from(_N, "UpdateConfigurationOutput", "Arn"),
            type = "string",
            name = "Arn",
            target_id = prelude.String.id,
            traits = {
                [traits.JSON_NAME] = { name = "arn" },
            },
        }),
        Created = schema.new({
            id = id.from(_N, "UpdateConfigurationOutput", "Created"),
            type = "timestamp",
            name = "Created",
            target_id = prelude.Timestamp.id,
            traits = {
                [traits.JSON_NAME] = { name = "created" },
                [traits.TIMESTAMP_FORMAT] = { format = "date-time" },
            },
            direct_traits = {
                [traits.JSON_NAME] = { name = "created" },
            },
        }),
        Id = schema.new({
            id = id.from(_N, "UpdateConfigurationOutput", "Id"),
            type = "string",
            name = "Id",
            target_id = prelude.String.id,
            traits = {
                [traits.JSON_NAME] = { name = "id" },
            },
        }),
        LatestRevision = schema.new({
            id = id.from(_N, "UpdateConfigurationOutput", "LatestRevision"),
            type = "structure",
            name = "LatestRevision",
            target_id = id.from(_N, "ConfigurationRevision"),
            target = M.ConfigurationRevision,
            traits = {
                [traits.JSON_NAME] = { name = "latestRevision" },
            },
        }),
        Name = schema.new({
            id = id.from(_N, "UpdateConfigurationOutput", "Name"),
            type = "string",
            name = "Name",
            target_id = prelude.String.id,
            traits = {
                [traits.JSON_NAME] = { name = "name" },
            },
        }),
        Warnings = schema.new({
            id = id.from(_N, "UpdateConfigurationOutput", "Warnings"),
            type = "list",
            name = "Warnings",
            target_id = prelude.Document.id,
            list_member = M.SanitizationWarning,
            traits = {
                [traits.JSON_NAME] = { name = "warnings" },
            },
        }),
    },
})

M.UpdateUserInput = schema.new({
    id = id.from(_N, "UpdateUserInput"),
    type = "structure",
    members = {
        BrokerId = schema.new({
            id = id.from(_N, "UpdateUserInput", "BrokerId"),
            type = "string",
            name = "BrokerId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
        ConsoleAccess = schema.new({
            id = id.from(_N, "UpdateUserInput", "ConsoleAccess"),
            type = "boolean",
            name = "ConsoleAccess",
            target_id = prelude.Boolean.id,
            traits = {
                [traits.JSON_NAME] = { name = "consoleAccess" },
            },
        }),
        Groups = schema.new({
            id = id.from(_N, "UpdateUserInput", "Groups"),
            type = "list",
            name = "Groups",
            target_id = prelude.Document.id,
            list_member = prelude.String,
            traits = {
                [traits.JSON_NAME] = { name = "groups" },
            },
        }),
        Password = schema.new({
            id = id.from(_N, "UpdateUserInput", "Password"),
            type = "string",
            name = "Password",
            target_id = prelude.String.id,
            traits = {
                [traits.JSON_NAME] = { name = "password" },
            },
        }),
        Username = schema.new({
            id = id.from(_N, "UpdateUserInput", "Username"),
            type = "string",
            name = "Username",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
        ReplicationUser = schema.new({
            id = id.from(_N, "UpdateUserInput", "ReplicationUser"),
            type = "boolean",
            name = "ReplicationUser",
            target_id = prelude.Boolean.id,
            traits = {
                [traits.JSON_NAME] = { name = "replicationUser" },
            },
        }),
    },
})

M.UpdateUserOutput = schema.new({
    id = id.from(_N, "UpdateUserOutput"),
    type = "structure",
})

return M
