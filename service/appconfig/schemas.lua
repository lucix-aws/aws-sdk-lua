local id = require("smithy.shape_id")
local schema = require("smithy.schema")
local prelude = require("smithy.prelude")
local traits = require("smithy.traits")

local _N = "com.amazonaws.appconfig"

local M = {}

M.DeletionProtectionSettings = schema.new({
    id = id.from(_N, "DeletionProtectionSettings"),
    type = "structure",
    members = {
        Enabled = schema.new({
            id = id.from(_N, "DeletionProtectionSettings", "Enabled"),
            type = "boolean",
            name = "Enabled",
            target_id = prelude.Boolean.id,
            traits = {
                [traits.DEFAULT] = { value = nil },
            },
        }),
        ProtectionPeriodInMinutes = schema.new({
            id = id.from(_N, "DeletionProtectionSettings", "ProtectionPeriodInMinutes"),
            type = "integer",
            name = "ProtectionPeriodInMinutes",
            target_id = prelude.Integer.id,
        }),
    },
})

M.Action = schema.new({
    id = id.from(_N, "Action"),
    type = "structure",
    members = {
        Name = schema.new({
            id = id.from(_N, "Action", "Name"),
            type = "string",
            name = "Name",
            target_id = prelude.String.id,
        }),
        Description = schema.new({
            id = id.from(_N, "Action", "Description"),
            type = "string",
            name = "Description",
            target_id = prelude.String.id,
        }),
        Uri = schema.new({
            id = id.from(_N, "Action", "Uri"),
            type = "string",
            name = "Uri",
            target_id = prelude.String.id,
        }),
        RoleArn = schema.new({
            id = id.from(_N, "Action", "RoleArn"),
            type = "string",
            name = "RoleArn",
            target_id = prelude.String.id,
        }),
    },
})

M.ActionInvocation = schema.new({
    id = id.from(_N, "ActionInvocation"),
    type = "structure",
    members = {
        ExtensionIdentifier = schema.new({
            id = id.from(_N, "ActionInvocation", "ExtensionIdentifier"),
            type = "string",
            name = "ExtensionIdentifier",
            target_id = prelude.String.id,
        }),
        ActionName = schema.new({
            id = id.from(_N, "ActionInvocation", "ActionName"),
            type = "string",
            name = "ActionName",
            target_id = prelude.String.id,
        }),
        Uri = schema.new({
            id = id.from(_N, "ActionInvocation", "Uri"),
            type = "string",
            name = "Uri",
            target_id = prelude.String.id,
        }),
        RoleArn = schema.new({
            id = id.from(_N, "ActionInvocation", "RoleArn"),
            type = "string",
            name = "RoleArn",
            target_id = prelude.String.id,
        }),
        ErrorMessage = schema.new({
            id = id.from(_N, "ActionInvocation", "ErrorMessage"),
            type = "string",
            name = "ErrorMessage",
            target_id = prelude.String.id,
        }),
        ErrorCode = schema.new({
            id = id.from(_N, "ActionInvocation", "ErrorCode"),
            type = "string",
            name = "ErrorCode",
            target_id = prelude.String.id,
        }),
        InvocationId = schema.new({
            id = id.from(_N, "ActionInvocation", "InvocationId"),
            type = "string",
            name = "InvocationId",
            target_id = prelude.String.id,
        }),
    },
})

M.InvalidConfigurationDetail = schema.new({
    id = id.from(_N, "InvalidConfigurationDetail"),
    type = "structure",
    members = {
        Constraint = schema.new({
            id = id.from(_N, "InvalidConfigurationDetail", "Constraint"),
            type = "string",
            name = "Constraint",
            target_id = prelude.String.id,
        }),
        Location = schema.new({
            id = id.from(_N, "InvalidConfigurationDetail", "Location"),
            type = "string",
            name = "Location",
            target_id = prelude.String.id,
        }),
        Reason = schema.new({
            id = id.from(_N, "InvalidConfigurationDetail", "Reason"),
            type = "string",
            name = "Reason",
            target_id = prelude.String.id,
        }),
        Type = schema.new({
            id = id.from(_N, "InvalidConfigurationDetail", "Type"),
            type = "string",
            name = "Type",
            target_id = prelude.String.id,
        }),
        Value = schema.new({
            id = id.from(_N, "InvalidConfigurationDetail", "Value"),
            type = "string",
            name = "Value",
            target_id = prelude.String.id,
        }),
    },
})

M.BadRequestDetails = schema.new({
    id = id.from(_N, "BadRequestDetails"),
    type = "union",
    members = {
        InvalidConfiguration = schema.new({
            id = id.from(_N, "BadRequestDetails", "InvalidConfiguration"),
            type = "list",
            name = "InvalidConfiguration",
            target_id = prelude.Document.id,
            list_member = M.InvalidConfigurationDetail,
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
        Message = schema.new({
            id = id.from(_N, "BadRequestException", "Message"),
            type = "string",
            name = "Message",
            target_id = prelude.String.id,
        }),
        Reason = schema.new({
            id = id.from(_N, "BadRequestException", "Reason"),
            type = "string",
            name = "Reason",
            target_id = prelude.String.id,
        }),
        Details = schema.new({
            id = id.from(_N, "BadRequestException", "Details"),
            type = "union",
            name = "Details",
            target_id = id.from(_N, "BadRequestDetails"),
            target = M.BadRequestDetails,
        }),
    },
})

M.CreateApplicationInput = schema.new({
    id = id.from(_N, "CreateApplicationInput"),
    type = "structure",
    members = {
        Name = schema.new({
            id = id.from(_N, "CreateApplicationInput", "Name"),
            type = "string",
            name = "Name",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        Description = schema.new({
            id = id.from(_N, "CreateApplicationInput", "Description"),
            type = "string",
            name = "Description",
            target_id = prelude.String.id,
        }),
        Tags = schema.new({
            id = id.from(_N, "CreateApplicationInput", "Tags"),
            type = "map",
            name = "Tags",
            target_id = prelude.Document.id,
            map_key = prelude.String,
            map_value = prelude.String,
        }),
    },
})

M.CreateApplicationOutput = schema.new({
    id = id.from(_N, "CreateApplicationOutput"),
    type = "structure",
    members = {
        Id = schema.new({
            id = id.from(_N, "CreateApplicationOutput", "Id"),
            type = "string",
            name = "Id",
            target_id = prelude.String.id,
        }),
        Name = schema.new({
            id = id.from(_N, "CreateApplicationOutput", "Name"),
            type = "string",
            name = "Name",
            target_id = prelude.String.id,
        }),
        Description = schema.new({
            id = id.from(_N, "CreateApplicationOutput", "Description"),
            type = "string",
            name = "Description",
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

M.ServiceQuotaExceededException = schema.new({
    id = id.from(_N, "ServiceQuotaExceededException"),
    type = "structure",
    traits = {
        [traits.ERROR] = { value = "client" },
    },
    members = {
        Message = schema.new({
            id = id.from(_N, "ServiceQuotaExceededException", "Message"),
            type = "string",
            name = "Message",
            target_id = prelude.String.id,
        }),
    },
})

M.Validator = schema.new({
    id = id.from(_N, "Validator"),
    type = "structure",
    members = {
        Type = schema.new({
            id = id.from(_N, "Validator", "Type"),
            type = "string",
            name = "Type",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        Content = schema.new({
            id = id.from(_N, "Validator", "Content"),
            type = "string",
            name = "Content",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.CreateConfigurationProfileInput = schema.new({
    id = id.from(_N, "CreateConfigurationProfileInput"),
    type = "structure",
    members = {
        ApplicationId = schema.new({
            id = id.from(_N, "CreateConfigurationProfileInput", "ApplicationId"),
            type = "string",
            name = "ApplicationId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
        Name = schema.new({
            id = id.from(_N, "CreateConfigurationProfileInput", "Name"),
            type = "string",
            name = "Name",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        Description = schema.new({
            id = id.from(_N, "CreateConfigurationProfileInput", "Description"),
            type = "string",
            name = "Description",
            target_id = prelude.String.id,
        }),
        LocationUri = schema.new({
            id = id.from(_N, "CreateConfigurationProfileInput", "LocationUri"),
            type = "string",
            name = "LocationUri",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        RetrievalRoleArn = schema.new({
            id = id.from(_N, "CreateConfigurationProfileInput", "RetrievalRoleArn"),
            type = "string",
            name = "RetrievalRoleArn",
            target_id = prelude.String.id,
        }),
        Validators = schema.new({
            id = id.from(_N, "CreateConfigurationProfileInput", "Validators"),
            type = "list",
            name = "Validators",
            target_id = prelude.Document.id,
            list_member = M.Validator,
        }),
        Tags = schema.new({
            id = id.from(_N, "CreateConfigurationProfileInput", "Tags"),
            type = "map",
            name = "Tags",
            target_id = prelude.Document.id,
            map_key = prelude.String,
            map_value = prelude.String,
        }),
        Type = schema.new({
            id = id.from(_N, "CreateConfigurationProfileInput", "Type"),
            type = "string",
            name = "Type",
            target_id = prelude.String.id,
        }),
        KmsKeyIdentifier = schema.new({
            id = id.from(_N, "CreateConfigurationProfileInput", "KmsKeyIdentifier"),
            type = "string",
            name = "KmsKeyIdentifier",
            target_id = prelude.String.id,
        }),
    },
})

M.CreateConfigurationProfileOutput = schema.new({
    id = id.from(_N, "CreateConfigurationProfileOutput"),
    type = "structure",
    members = {
        ApplicationId = schema.new({
            id = id.from(_N, "CreateConfigurationProfileOutput", "ApplicationId"),
            type = "string",
            name = "ApplicationId",
            target_id = prelude.String.id,
        }),
        Id = schema.new({
            id = id.from(_N, "CreateConfigurationProfileOutput", "Id"),
            type = "string",
            name = "Id",
            target_id = prelude.String.id,
        }),
        Name = schema.new({
            id = id.from(_N, "CreateConfigurationProfileOutput", "Name"),
            type = "string",
            name = "Name",
            target_id = prelude.String.id,
        }),
        Description = schema.new({
            id = id.from(_N, "CreateConfigurationProfileOutput", "Description"),
            type = "string",
            name = "Description",
            target_id = prelude.String.id,
        }),
        LocationUri = schema.new({
            id = id.from(_N, "CreateConfigurationProfileOutput", "LocationUri"),
            type = "string",
            name = "LocationUri",
            target_id = prelude.String.id,
        }),
        RetrievalRoleArn = schema.new({
            id = id.from(_N, "CreateConfigurationProfileOutput", "RetrievalRoleArn"),
            type = "string",
            name = "RetrievalRoleArn",
            target_id = prelude.String.id,
        }),
        Validators = schema.new({
            id = id.from(_N, "CreateConfigurationProfileOutput", "Validators"),
            type = "list",
            name = "Validators",
            target_id = prelude.Document.id,
            list_member = M.Validator,
        }),
        Type = schema.new({
            id = id.from(_N, "CreateConfigurationProfileOutput", "Type"),
            type = "string",
            name = "Type",
            target_id = prelude.String.id,
        }),
        KmsKeyArn = schema.new({
            id = id.from(_N, "CreateConfigurationProfileOutput", "KmsKeyArn"),
            type = "string",
            name = "KmsKeyArn",
            target_id = prelude.String.id,
        }),
        KmsKeyIdentifier = schema.new({
            id = id.from(_N, "CreateConfigurationProfileOutput", "KmsKeyIdentifier"),
            type = "string",
            name = "KmsKeyIdentifier",
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
        ResourceName = schema.new({
            id = id.from(_N, "ResourceNotFoundException", "ResourceName"),
            type = "string",
            name = "ResourceName",
            target_id = prelude.String.id,
        }),
    },
})

M.CreateDeploymentStrategyInput = schema.new({
    id = id.from(_N, "CreateDeploymentStrategyInput"),
    type = "structure",
    members = {
        Name = schema.new({
            id = id.from(_N, "CreateDeploymentStrategyInput", "Name"),
            type = "string",
            name = "Name",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        Description = schema.new({
            id = id.from(_N, "CreateDeploymentStrategyInput", "Description"),
            type = "string",
            name = "Description",
            target_id = prelude.String.id,
        }),
        DeploymentDurationInMinutes = schema.new({
            id = id.from(_N, "CreateDeploymentStrategyInput", "DeploymentDurationInMinutes"),
            type = "integer",
            name = "DeploymentDurationInMinutes",
            target_id = prelude.Integer.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.DEFAULT] = { value = nil },
            },
        }),
        FinalBakeTimeInMinutes = schema.new({
            id = id.from(_N, "CreateDeploymentStrategyInput", "FinalBakeTimeInMinutes"),
            type = "integer",
            name = "FinalBakeTimeInMinutes",
            target_id = prelude.Integer.id,
            traits = {
                [traits.DEFAULT] = { value = 0 },
            },
        }),
        GrowthFactor = schema.new({
            id = id.from(_N, "CreateDeploymentStrategyInput", "GrowthFactor"),
            type = "float",
            name = "GrowthFactor",
            target_id = prelude.Float.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        GrowthType = schema.new({
            id = id.from(_N, "CreateDeploymentStrategyInput", "GrowthType"),
            type = "string",
            name = "GrowthType",
            target_id = prelude.String.id,
        }),
        ReplicateTo = schema.new({
            id = id.from(_N, "CreateDeploymentStrategyInput", "ReplicateTo"),
            type = "string",
            name = "ReplicateTo",
            target_id = prelude.String.id,
        }),
        Tags = schema.new({
            id = id.from(_N, "CreateDeploymentStrategyInput", "Tags"),
            type = "map",
            name = "Tags",
            target_id = prelude.Document.id,
            map_key = prelude.String,
            map_value = prelude.String,
        }),
    },
})

M.CreateDeploymentStrategyOutput = schema.new({
    id = id.from(_N, "CreateDeploymentStrategyOutput"),
    type = "structure",
    members = {
        Id = schema.new({
            id = id.from(_N, "CreateDeploymentStrategyOutput", "Id"),
            type = "string",
            name = "Id",
            target_id = prelude.String.id,
        }),
        Name = schema.new({
            id = id.from(_N, "CreateDeploymentStrategyOutput", "Name"),
            type = "string",
            name = "Name",
            target_id = prelude.String.id,
        }),
        Description = schema.new({
            id = id.from(_N, "CreateDeploymentStrategyOutput", "Description"),
            type = "string",
            name = "Description",
            target_id = prelude.String.id,
        }),
        DeploymentDurationInMinutes = schema.new({
            id = id.from(_N, "CreateDeploymentStrategyOutput", "DeploymentDurationInMinutes"),
            type = "integer",
            name = "DeploymentDurationInMinutes",
            target_id = prelude.Integer.id,
            traits = {
                [traits.DEFAULT] = { value = 0 },
            },
        }),
        GrowthType = schema.new({
            id = id.from(_N, "CreateDeploymentStrategyOutput", "GrowthType"),
            type = "string",
            name = "GrowthType",
            target_id = prelude.String.id,
        }),
        GrowthFactor = schema.new({
            id = id.from(_N, "CreateDeploymentStrategyOutput", "GrowthFactor"),
            type = "float",
            name = "GrowthFactor",
            target_id = prelude.Float.id,
        }),
        FinalBakeTimeInMinutes = schema.new({
            id = id.from(_N, "CreateDeploymentStrategyOutput", "FinalBakeTimeInMinutes"),
            type = "integer",
            name = "FinalBakeTimeInMinutes",
            target_id = prelude.Integer.id,
            traits = {
                [traits.DEFAULT] = { value = 0 },
            },
        }),
        ReplicateTo = schema.new({
            id = id.from(_N, "CreateDeploymentStrategyOutput", "ReplicateTo"),
            type = "string",
            name = "ReplicateTo",
            target_id = prelude.String.id,
        }),
    },
})

M.Monitor = schema.new({
    id = id.from(_N, "Monitor"),
    type = "structure",
    members = {
        AlarmArn = schema.new({
            id = id.from(_N, "Monitor", "AlarmArn"),
            type = "string",
            name = "AlarmArn",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        AlarmRoleArn = schema.new({
            id = id.from(_N, "Monitor", "AlarmRoleArn"),
            type = "string",
            name = "AlarmRoleArn",
            target_id = prelude.String.id,
        }),
    },
})

M.CreateEnvironmentInput = schema.new({
    id = id.from(_N, "CreateEnvironmentInput"),
    type = "structure",
    members = {
        ApplicationId = schema.new({
            id = id.from(_N, "CreateEnvironmentInput", "ApplicationId"),
            type = "string",
            name = "ApplicationId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
        Name = schema.new({
            id = id.from(_N, "CreateEnvironmentInput", "Name"),
            type = "string",
            name = "Name",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        Description = schema.new({
            id = id.from(_N, "CreateEnvironmentInput", "Description"),
            type = "string",
            name = "Description",
            target_id = prelude.String.id,
        }),
        Monitors = schema.new({
            id = id.from(_N, "CreateEnvironmentInput", "Monitors"),
            type = "list",
            name = "Monitors",
            target_id = prelude.Document.id,
            list_member = M.Monitor,
        }),
        Tags = schema.new({
            id = id.from(_N, "CreateEnvironmentInput", "Tags"),
            type = "map",
            name = "Tags",
            target_id = prelude.Document.id,
            map_key = prelude.String,
            map_value = prelude.String,
        }),
    },
})

M.CreateEnvironmentOutput = schema.new({
    id = id.from(_N, "CreateEnvironmentOutput"),
    type = "structure",
    members = {
        ApplicationId = schema.new({
            id = id.from(_N, "CreateEnvironmentOutput", "ApplicationId"),
            type = "string",
            name = "ApplicationId",
            target_id = prelude.String.id,
        }),
        Id = schema.new({
            id = id.from(_N, "CreateEnvironmentOutput", "Id"),
            type = "string",
            name = "Id",
            target_id = prelude.String.id,
        }),
        Name = schema.new({
            id = id.from(_N, "CreateEnvironmentOutput", "Name"),
            type = "string",
            name = "Name",
            target_id = prelude.String.id,
        }),
        Description = schema.new({
            id = id.from(_N, "CreateEnvironmentOutput", "Description"),
            type = "string",
            name = "Description",
            target_id = prelude.String.id,
        }),
        State = schema.new({
            id = id.from(_N, "CreateEnvironmentOutput", "State"),
            type = "string",
            name = "State",
            target_id = prelude.String.id,
        }),
        Monitors = schema.new({
            id = id.from(_N, "CreateEnvironmentOutput", "Monitors"),
            type = "list",
            name = "Monitors",
            target_id = prelude.Document.id,
            list_member = M.Monitor,
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

M.Parameter = schema.new({
    id = id.from(_N, "Parameter"),
    type = "structure",
    members = {
        Description = schema.new({
            id = id.from(_N, "Parameter", "Description"),
            type = "string",
            name = "Description",
            target_id = prelude.String.id,
        }),
        Required = schema.new({
            id = id.from(_N, "Parameter", "Required"),
            type = "boolean",
            name = "Required",
            target_id = prelude.Boolean.id,
            traits = {
                [traits.DEFAULT] = { value = false },
            },
        }),
        Dynamic = schema.new({
            id = id.from(_N, "Parameter", "Dynamic"),
            type = "boolean",
            name = "Dynamic",
            target_id = prelude.Boolean.id,
            traits = {
                [traits.DEFAULT] = { value = false },
            },
        }),
    },
})

M.CreateExtensionInput = schema.new({
    id = id.from(_N, "CreateExtensionInput"),
    type = "structure",
    members = {
        Name = schema.new({
            id = id.from(_N, "CreateExtensionInput", "Name"),
            type = "string",
            name = "Name",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        Description = schema.new({
            id = id.from(_N, "CreateExtensionInput", "Description"),
            type = "string",
            name = "Description",
            target_id = prelude.String.id,
        }),
        Actions = schema.new({
            id = id.from(_N, "CreateExtensionInput", "Actions"),
            type = "map",
            name = "Actions",
            target_id = prelude.Document.id,
            map_key = prelude.String,
            map_value = prelude.Document,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        Parameters = schema.new({
            id = id.from(_N, "CreateExtensionInput", "Parameters"),
            type = "map",
            name = "Parameters",
            target_id = prelude.Document.id,
            map_key = prelude.String,
            map_value = M.Parameter,
        }),
        Tags = schema.new({
            id = id.from(_N, "CreateExtensionInput", "Tags"),
            type = "map",
            name = "Tags",
            target_id = prelude.Document.id,
            map_key = prelude.String,
            map_value = prelude.String,
        }),
        LatestVersionNumber = schema.new({
            id = id.from(_N, "CreateExtensionInput", "LatestVersionNumber"),
            type = "integer",
            name = "LatestVersionNumber",
            target_id = prelude.Integer.id,
            traits = {
                [traits.DEFAULT] = { value = nil },
                [traits.HTTP_HEADER] = { name = "Latest-Version-Number" },
            },
        }),
    },
})

M.CreateExtensionOutput = schema.new({
    id = id.from(_N, "CreateExtensionOutput"),
    type = "structure",
    members = {
        Id = schema.new({
            id = id.from(_N, "CreateExtensionOutput", "Id"),
            type = "string",
            name = "Id",
            target_id = prelude.String.id,
        }),
        Name = schema.new({
            id = id.from(_N, "CreateExtensionOutput", "Name"),
            type = "string",
            name = "Name",
            target_id = prelude.String.id,
        }),
        VersionNumber = schema.new({
            id = id.from(_N, "CreateExtensionOutput", "VersionNumber"),
            type = "integer",
            name = "VersionNumber",
            target_id = prelude.Integer.id,
            traits = {
                [traits.DEFAULT] = { value = 0 },
            },
        }),
        Arn = schema.new({
            id = id.from(_N, "CreateExtensionOutput", "Arn"),
            type = "string",
            name = "Arn",
            target_id = prelude.String.id,
        }),
        Description = schema.new({
            id = id.from(_N, "CreateExtensionOutput", "Description"),
            type = "string",
            name = "Description",
            target_id = prelude.String.id,
        }),
        Actions = schema.new({
            id = id.from(_N, "CreateExtensionOutput", "Actions"),
            type = "map",
            name = "Actions",
            target_id = prelude.Document.id,
            map_key = prelude.String,
            map_value = prelude.Document,
        }),
        Parameters = schema.new({
            id = id.from(_N, "CreateExtensionOutput", "Parameters"),
            type = "map",
            name = "Parameters",
            target_id = prelude.Document.id,
            map_key = prelude.String,
            map_value = M.Parameter,
        }),
    },
})

M.CreateExtensionAssociationInput = schema.new({
    id = id.from(_N, "CreateExtensionAssociationInput"),
    type = "structure",
    members = {
        ExtensionIdentifier = schema.new({
            id = id.from(_N, "CreateExtensionAssociationInput", "ExtensionIdentifier"),
            type = "string",
            name = "ExtensionIdentifier",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        ExtensionVersionNumber = schema.new({
            id = id.from(_N, "CreateExtensionAssociationInput", "ExtensionVersionNumber"),
            type = "integer",
            name = "ExtensionVersionNumber",
            target_id = prelude.Integer.id,
            traits = {
                [traits.DEFAULT] = { value = nil },
            },
        }),
        ResourceIdentifier = schema.new({
            id = id.from(_N, "CreateExtensionAssociationInput", "ResourceIdentifier"),
            type = "string",
            name = "ResourceIdentifier",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        Parameters = schema.new({
            id = id.from(_N, "CreateExtensionAssociationInput", "Parameters"),
            type = "map",
            name = "Parameters",
            target_id = prelude.Document.id,
            map_key = prelude.String,
            map_value = prelude.String,
        }),
        Tags = schema.new({
            id = id.from(_N, "CreateExtensionAssociationInput", "Tags"),
            type = "map",
            name = "Tags",
            target_id = prelude.Document.id,
            map_key = prelude.String,
            map_value = prelude.String,
        }),
    },
})

M.CreateExtensionAssociationOutput = schema.new({
    id = id.from(_N, "CreateExtensionAssociationOutput"),
    type = "structure",
    members = {
        Id = schema.new({
            id = id.from(_N, "CreateExtensionAssociationOutput", "Id"),
            type = "string",
            name = "Id",
            target_id = prelude.String.id,
        }),
        ExtensionArn = schema.new({
            id = id.from(_N, "CreateExtensionAssociationOutput", "ExtensionArn"),
            type = "string",
            name = "ExtensionArn",
            target_id = prelude.String.id,
        }),
        ResourceArn = schema.new({
            id = id.from(_N, "CreateExtensionAssociationOutput", "ResourceArn"),
            type = "string",
            name = "ResourceArn",
            target_id = prelude.String.id,
        }),
        Arn = schema.new({
            id = id.from(_N, "CreateExtensionAssociationOutput", "Arn"),
            type = "string",
            name = "Arn",
            target_id = prelude.String.id,
        }),
        Parameters = schema.new({
            id = id.from(_N, "CreateExtensionAssociationOutput", "Parameters"),
            type = "map",
            name = "Parameters",
            target_id = prelude.Document.id,
            map_key = prelude.String,
            map_value = prelude.String,
        }),
        ExtensionVersionNumber = schema.new({
            id = id.from(_N, "CreateExtensionAssociationOutput", "ExtensionVersionNumber"),
            type = "integer",
            name = "ExtensionVersionNumber",
            target_id = prelude.Integer.id,
            traits = {
                [traits.DEFAULT] = { value = 0 },
            },
        }),
    },
})

M.CreateHostedConfigurationVersionInput = schema.new({
    id = id.from(_N, "CreateHostedConfigurationVersionInput"),
    type = "structure",
    members = {
        ApplicationId = schema.new({
            id = id.from(_N, "CreateHostedConfigurationVersionInput", "ApplicationId"),
            type = "string",
            name = "ApplicationId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
        ConfigurationProfileId = schema.new({
            id = id.from(_N, "CreateHostedConfigurationVersionInput", "ConfigurationProfileId"),
            type = "string",
            name = "ConfigurationProfileId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
        Description = schema.new({
            id = id.from(_N, "CreateHostedConfigurationVersionInput", "Description"),
            type = "string",
            name = "Description",
            target_id = prelude.String.id,
            traits = {
                [traits.HTTP_HEADER] = { name = "Description" },
            },
        }),
        Content = schema.new({
            id = id.from(_N, "CreateHostedConfigurationVersionInput", "Content"),
            type = "blob",
            name = "Content",
            target_id = prelude.Blob.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_PAYLOAD] = {},
            },
        }),
        ContentType = schema.new({
            id = id.from(_N, "CreateHostedConfigurationVersionInput", "ContentType"),
            type = "string",
            name = "ContentType",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_HEADER] = { name = "Content-Type" },
            },
        }),
        LatestVersionNumber = schema.new({
            id = id.from(_N, "CreateHostedConfigurationVersionInput", "LatestVersionNumber"),
            type = "integer",
            name = "LatestVersionNumber",
            target_id = prelude.Integer.id,
            traits = {
                [traits.DEFAULT] = { value = nil },
                [traits.HTTP_HEADER] = { name = "Latest-Version-Number" },
            },
        }),
        VersionLabel = schema.new({
            id = id.from(_N, "CreateHostedConfigurationVersionInput", "VersionLabel"),
            type = "string",
            name = "VersionLabel",
            target_id = prelude.String.id,
            traits = {
                [traits.HTTP_HEADER] = { name = "VersionLabel" },
            },
        }),
    },
})

M.CreateHostedConfigurationVersionOutput = schema.new({
    id = id.from(_N, "CreateHostedConfigurationVersionOutput"),
    type = "structure",
    members = {
        ApplicationId = schema.new({
            id = id.from(_N, "CreateHostedConfigurationVersionOutput", "ApplicationId"),
            type = "string",
            name = "ApplicationId",
            target_id = prelude.String.id,
            traits = {
                [traits.HTTP_HEADER] = { name = "Application-Id" },
            },
        }),
        ConfigurationProfileId = schema.new({
            id = id.from(_N, "CreateHostedConfigurationVersionOutput", "ConfigurationProfileId"),
            type = "string",
            name = "ConfigurationProfileId",
            target_id = prelude.String.id,
            traits = {
                [traits.HTTP_HEADER] = { name = "Configuration-Profile-Id" },
            },
        }),
        VersionNumber = schema.new({
            id = id.from(_N, "CreateHostedConfigurationVersionOutput", "VersionNumber"),
            type = "integer",
            name = "VersionNumber",
            target_id = prelude.Integer.id,
            traits = {
                [traits.DEFAULT] = { value = 0 },
                [traits.HTTP_HEADER] = { name = "Version-Number" },
            },
        }),
        Description = schema.new({
            id = id.from(_N, "CreateHostedConfigurationVersionOutput", "Description"),
            type = "string",
            name = "Description",
            target_id = prelude.String.id,
            traits = {
                [traits.HTTP_HEADER] = { name = "Description" },
            },
        }),
        Content = schema.new({
            id = id.from(_N, "CreateHostedConfigurationVersionOutput", "Content"),
            type = "blob",
            name = "Content",
            target_id = prelude.Blob.id,
            traits = {
                [traits.HTTP_PAYLOAD] = {},
            },
        }),
        ContentType = schema.new({
            id = id.from(_N, "CreateHostedConfigurationVersionOutput", "ContentType"),
            type = "string",
            name = "ContentType",
            target_id = prelude.String.id,
            traits = {
                [traits.HTTP_HEADER] = { name = "Content-Type" },
            },
        }),
        VersionLabel = schema.new({
            id = id.from(_N, "CreateHostedConfigurationVersionOutput", "VersionLabel"),
            type = "string",
            name = "VersionLabel",
            target_id = prelude.String.id,
            traits = {
                [traits.HTTP_HEADER] = { name = "VersionLabel" },
            },
        }),
        KmsKeyArn = schema.new({
            id = id.from(_N, "CreateHostedConfigurationVersionOutput", "KmsKeyArn"),
            type = "string",
            name = "KmsKeyArn",
            target_id = prelude.String.id,
            traits = {
                [traits.HTTP_HEADER] = { name = "KmsKeyArn" },
            },
        }),
    },
})

M.PayloadTooLargeException = schema.new({
    id = id.from(_N, "PayloadTooLargeException"),
    type = "structure",
    traits = {
        [traits.ERROR] = { value = "client" },
    },
    members = {
        Message = schema.new({
            id = id.from(_N, "PayloadTooLargeException", "Message"),
            type = "string",
            name = "Message",
            target_id = prelude.String.id,
        }),
        Measure = schema.new({
            id = id.from(_N, "PayloadTooLargeException", "Measure"),
            type = "string",
            name = "Measure",
            target_id = prelude.String.id,
        }),
        Limit = schema.new({
            id = id.from(_N, "PayloadTooLargeException", "Limit"),
            type = "float",
            name = "Limit",
            target_id = prelude.Float.id,
            traits = {
                [traits.DEFAULT] = { value = 0 },
            },
        }),
        Size = schema.new({
            id = id.from(_N, "PayloadTooLargeException", "Size"),
            type = "float",
            name = "Size",
            target_id = prelude.Float.id,
            traits = {
                [traits.DEFAULT] = { value = 0 },
            },
        }),
    },
})

M.DeleteApplicationInput = schema.new({
    id = id.from(_N, "DeleteApplicationInput"),
    type = "structure",
    members = {
        ApplicationId = schema.new({
            id = id.from(_N, "DeleteApplicationInput", "ApplicationId"),
            type = "string",
            name = "ApplicationId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
    },
})

M.DeleteApplicationOutput = schema.new({
    id = id.from(_N, "DeleteApplicationOutput"),
    type = "structure",
})

M.DeleteConfigurationProfileInput = schema.new({
    id = id.from(_N, "DeleteConfigurationProfileInput"),
    type = "structure",
    members = {
        ApplicationId = schema.new({
            id = id.from(_N, "DeleteConfigurationProfileInput", "ApplicationId"),
            type = "string",
            name = "ApplicationId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
        ConfigurationProfileId = schema.new({
            id = id.from(_N, "DeleteConfigurationProfileInput", "ConfigurationProfileId"),
            type = "string",
            name = "ConfigurationProfileId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
        DeletionProtectionCheck = schema.new({
            id = id.from(_N, "DeleteConfigurationProfileInput", "DeletionProtectionCheck"),
            type = "string",
            name = "DeletionProtectionCheck",
            target_id = prelude.String.id,
            traits = {
                [traits.HTTP_HEADER] = { name = "x-amzn-deletion-protection-check" },
            },
        }),
    },
})

M.DeleteConfigurationProfileOutput = schema.new({
    id = id.from(_N, "DeleteConfigurationProfileOutput"),
    type = "structure",
})

M.DeleteDeploymentStrategyInput = schema.new({
    id = id.from(_N, "DeleteDeploymentStrategyInput"),
    type = "structure",
    members = {
        DeploymentStrategyId = schema.new({
            id = id.from(_N, "DeleteDeploymentStrategyInput", "DeploymentStrategyId"),
            type = "string",
            name = "DeploymentStrategyId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
    },
})

M.DeleteDeploymentStrategyOutput = schema.new({
    id = id.from(_N, "DeleteDeploymentStrategyOutput"),
    type = "structure",
})

M.DeleteEnvironmentInput = schema.new({
    id = id.from(_N, "DeleteEnvironmentInput"),
    type = "structure",
    members = {
        EnvironmentId = schema.new({
            id = id.from(_N, "DeleteEnvironmentInput", "EnvironmentId"),
            type = "string",
            name = "EnvironmentId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
        ApplicationId = schema.new({
            id = id.from(_N, "DeleteEnvironmentInput", "ApplicationId"),
            type = "string",
            name = "ApplicationId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
        DeletionProtectionCheck = schema.new({
            id = id.from(_N, "DeleteEnvironmentInput", "DeletionProtectionCheck"),
            type = "string",
            name = "DeletionProtectionCheck",
            target_id = prelude.String.id,
            traits = {
                [traits.HTTP_HEADER] = { name = "x-amzn-deletion-protection-check" },
            },
        }),
    },
})

M.DeleteEnvironmentOutput = schema.new({
    id = id.from(_N, "DeleteEnvironmentOutput"),
    type = "structure",
})

M.DeleteExtensionInput = schema.new({
    id = id.from(_N, "DeleteExtensionInput"),
    type = "structure",
    members = {
        ExtensionIdentifier = schema.new({
            id = id.from(_N, "DeleteExtensionInput", "ExtensionIdentifier"),
            type = "string",
            name = "ExtensionIdentifier",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
        VersionNumber = schema.new({
            id = id.from(_N, "DeleteExtensionInput", "VersionNumber"),
            type = "integer",
            name = "VersionNumber",
            target_id = prelude.Integer.id,
            traits = {
                [traits.DEFAULT] = { value = nil },
                [traits.HTTP_QUERY] = { name = "version" },
            },
        }),
    },
})

M.DeleteExtensionOutput = schema.new({
    id = id.from(_N, "DeleteExtensionOutput"),
    type = "structure",
})

M.DeleteExtensionAssociationInput = schema.new({
    id = id.from(_N, "DeleteExtensionAssociationInput"),
    type = "structure",
    members = {
        ExtensionAssociationId = schema.new({
            id = id.from(_N, "DeleteExtensionAssociationInput", "ExtensionAssociationId"),
            type = "string",
            name = "ExtensionAssociationId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
    },
})

M.DeleteExtensionAssociationOutput = schema.new({
    id = id.from(_N, "DeleteExtensionAssociationOutput"),
    type = "structure",
})

M.DeleteHostedConfigurationVersionInput = schema.new({
    id = id.from(_N, "DeleteHostedConfigurationVersionInput"),
    type = "structure",
    members = {
        ApplicationId = schema.new({
            id = id.from(_N, "DeleteHostedConfigurationVersionInput", "ApplicationId"),
            type = "string",
            name = "ApplicationId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
        ConfigurationProfileId = schema.new({
            id = id.from(_N, "DeleteHostedConfigurationVersionInput", "ConfigurationProfileId"),
            type = "string",
            name = "ConfigurationProfileId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
        VersionNumber = schema.new({
            id = id.from(_N, "DeleteHostedConfigurationVersionInput", "VersionNumber"),
            type = "integer",
            name = "VersionNumber",
            target_id = prelude.Integer.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.DEFAULT] = { value = nil },
                [traits.HTTP_LABEL] = {},
            },
        }),
    },
})

M.DeleteHostedConfigurationVersionOutput = schema.new({
    id = id.from(_N, "DeleteHostedConfigurationVersionOutput"),
    type = "structure",
})

M.GetAccountSettingsInput = schema.new({
    id = id.from(_N, "GetAccountSettingsInput"),
    type = "structure",
})

M.GetAccountSettingsOutput = schema.new({
    id = id.from(_N, "GetAccountSettingsOutput"),
    type = "structure",
    members = {
        DeletionProtection = schema.new({
            id = id.from(_N, "GetAccountSettingsOutput", "DeletionProtection"),
            type = "structure",
            name = "DeletionProtection",
            target_id = id.from(_N, "DeletionProtectionSettings"),
            target = M.DeletionProtectionSettings,
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
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
    },
})

M.GetApplicationOutput = schema.new({
    id = id.from(_N, "GetApplicationOutput"),
    type = "structure",
    members = {
        Id = schema.new({
            id = id.from(_N, "GetApplicationOutput", "Id"),
            type = "string",
            name = "Id",
            target_id = prelude.String.id,
        }),
        Name = schema.new({
            id = id.from(_N, "GetApplicationOutput", "Name"),
            type = "string",
            name = "Name",
            target_id = prelude.String.id,
        }),
        Description = schema.new({
            id = id.from(_N, "GetApplicationOutput", "Description"),
            type = "string",
            name = "Description",
            target_id = prelude.String.id,
        }),
    },
})

M.GetConfigurationInput = schema.new({
    id = id.from(_N, "GetConfigurationInput"),
    type = "structure",
    members = {
        Application = schema.new({
            id = id.from(_N, "GetConfigurationInput", "Application"),
            type = "string",
            name = "Application",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
        Environment = schema.new({
            id = id.from(_N, "GetConfigurationInput", "Environment"),
            type = "string",
            name = "Environment",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
        Configuration = schema.new({
            id = id.from(_N, "GetConfigurationInput", "Configuration"),
            type = "string",
            name = "Configuration",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
        ClientId = schema.new({
            id = id.from(_N, "GetConfigurationInput", "ClientId"),
            type = "string",
            name = "ClientId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_QUERY] = { name = "client_id" },
            },
        }),
        ClientConfigurationVersion = schema.new({
            id = id.from(_N, "GetConfigurationInput", "ClientConfigurationVersion"),
            type = "string",
            name = "ClientConfigurationVersion",
            target_id = prelude.String.id,
            traits = {
                [traits.HTTP_QUERY] = { name = "client_configuration_version" },
            },
        }),
    },
})

M.GetConfigurationOutput = schema.new({
    id = id.from(_N, "GetConfigurationOutput"),
    type = "structure",
    members = {
        Content = schema.new({
            id = id.from(_N, "GetConfigurationOutput", "Content"),
            type = "blob",
            name = "Content",
            target_id = prelude.Blob.id,
            traits = {
                [traits.HTTP_PAYLOAD] = {},
            },
        }),
        ConfigurationVersion = schema.new({
            id = id.from(_N, "GetConfigurationOutput", "ConfigurationVersion"),
            type = "string",
            name = "ConfigurationVersion",
            target_id = prelude.String.id,
            traits = {
                [traits.HTTP_HEADER] = { name = "Configuration-Version" },
            },
        }),
        ContentType = schema.new({
            id = id.from(_N, "GetConfigurationOutput", "ContentType"),
            type = "string",
            name = "ContentType",
            target_id = prelude.String.id,
            traits = {
                [traits.HTTP_HEADER] = { name = "Content-Type" },
            },
        }),
    },
})

M.GetConfigurationProfileInput = schema.new({
    id = id.from(_N, "GetConfigurationProfileInput"),
    type = "structure",
    members = {
        ApplicationId = schema.new({
            id = id.from(_N, "GetConfigurationProfileInput", "ApplicationId"),
            type = "string",
            name = "ApplicationId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
        ConfigurationProfileId = schema.new({
            id = id.from(_N, "GetConfigurationProfileInput", "ConfigurationProfileId"),
            type = "string",
            name = "ConfigurationProfileId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
    },
})

M.GetConfigurationProfileOutput = schema.new({
    id = id.from(_N, "GetConfigurationProfileOutput"),
    type = "structure",
    members = {
        ApplicationId = schema.new({
            id = id.from(_N, "GetConfigurationProfileOutput", "ApplicationId"),
            type = "string",
            name = "ApplicationId",
            target_id = prelude.String.id,
        }),
        Id = schema.new({
            id = id.from(_N, "GetConfigurationProfileOutput", "Id"),
            type = "string",
            name = "Id",
            target_id = prelude.String.id,
        }),
        Name = schema.new({
            id = id.from(_N, "GetConfigurationProfileOutput", "Name"),
            type = "string",
            name = "Name",
            target_id = prelude.String.id,
        }),
        Description = schema.new({
            id = id.from(_N, "GetConfigurationProfileOutput", "Description"),
            type = "string",
            name = "Description",
            target_id = prelude.String.id,
        }),
        LocationUri = schema.new({
            id = id.from(_N, "GetConfigurationProfileOutput", "LocationUri"),
            type = "string",
            name = "LocationUri",
            target_id = prelude.String.id,
        }),
        RetrievalRoleArn = schema.new({
            id = id.from(_N, "GetConfigurationProfileOutput", "RetrievalRoleArn"),
            type = "string",
            name = "RetrievalRoleArn",
            target_id = prelude.String.id,
        }),
        Validators = schema.new({
            id = id.from(_N, "GetConfigurationProfileOutput", "Validators"),
            type = "list",
            name = "Validators",
            target_id = prelude.Document.id,
            list_member = M.Validator,
        }),
        Type = schema.new({
            id = id.from(_N, "GetConfigurationProfileOutput", "Type"),
            type = "string",
            name = "Type",
            target_id = prelude.String.id,
        }),
        KmsKeyArn = schema.new({
            id = id.from(_N, "GetConfigurationProfileOutput", "KmsKeyArn"),
            type = "string",
            name = "KmsKeyArn",
            target_id = prelude.String.id,
        }),
        KmsKeyIdentifier = schema.new({
            id = id.from(_N, "GetConfigurationProfileOutput", "KmsKeyIdentifier"),
            type = "string",
            name = "KmsKeyIdentifier",
            target_id = prelude.String.id,
        }),
    },
})

M.GetDeploymentInput = schema.new({
    id = id.from(_N, "GetDeploymentInput"),
    type = "structure",
    members = {
        ApplicationId = schema.new({
            id = id.from(_N, "GetDeploymentInput", "ApplicationId"),
            type = "string",
            name = "ApplicationId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
        EnvironmentId = schema.new({
            id = id.from(_N, "GetDeploymentInput", "EnvironmentId"),
            type = "string",
            name = "EnvironmentId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
        DeploymentNumber = schema.new({
            id = id.from(_N, "GetDeploymentInput", "DeploymentNumber"),
            type = "integer",
            name = "DeploymentNumber",
            target_id = prelude.Integer.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.DEFAULT] = { value = nil },
                [traits.HTTP_LABEL] = {},
            },
        }),
    },
})

M.AppliedExtension = schema.new({
    id = id.from(_N, "AppliedExtension"),
    type = "structure",
    members = {
        ExtensionId = schema.new({
            id = id.from(_N, "AppliedExtension", "ExtensionId"),
            type = "string",
            name = "ExtensionId",
            target_id = prelude.String.id,
        }),
        ExtensionAssociationId = schema.new({
            id = id.from(_N, "AppliedExtension", "ExtensionAssociationId"),
            type = "string",
            name = "ExtensionAssociationId",
            target_id = prelude.String.id,
        }),
        VersionNumber = schema.new({
            id = id.from(_N, "AppliedExtension", "VersionNumber"),
            type = "integer",
            name = "VersionNumber",
            target_id = prelude.Integer.id,
            traits = {
                [traits.DEFAULT] = { value = 0 },
            },
        }),
        Parameters = schema.new({
            id = id.from(_N, "AppliedExtension", "Parameters"),
            type = "map",
            name = "Parameters",
            target_id = prelude.Document.id,
            map_key = prelude.String,
            map_value = prelude.String,
        }),
    },
})

M.DeploymentEvent = schema.new({
    id = id.from(_N, "DeploymentEvent"),
    type = "structure",
    members = {
        EventType = schema.new({
            id = id.from(_N, "DeploymentEvent", "EventType"),
            type = "string",
            name = "EventType",
            target_id = prelude.String.id,
        }),
        TriggeredBy = schema.new({
            id = id.from(_N, "DeploymentEvent", "TriggeredBy"),
            type = "string",
            name = "TriggeredBy",
            target_id = prelude.String.id,
        }),
        Description = schema.new({
            id = id.from(_N, "DeploymentEvent", "Description"),
            type = "string",
            name = "Description",
            target_id = prelude.String.id,
        }),
        ActionInvocations = schema.new({
            id = id.from(_N, "DeploymentEvent", "ActionInvocations"),
            type = "list",
            name = "ActionInvocations",
            target_id = prelude.Document.id,
            list_member = M.ActionInvocation,
        }),
        OccurredAt = schema.new({
            id = id.from(_N, "DeploymentEvent", "OccurredAt"),
            type = "timestamp",
            name = "OccurredAt",
            target_id = prelude.Timestamp.id,
            traits = {
                [traits.TIMESTAMP_FORMAT] = { format = "date-time" },
            },
        }),
    },
})

M.GetDeploymentOutput = schema.new({
    id = id.from(_N, "GetDeploymentOutput"),
    type = "structure",
    members = {
        ApplicationId = schema.new({
            id = id.from(_N, "GetDeploymentOutput", "ApplicationId"),
            type = "string",
            name = "ApplicationId",
            target_id = prelude.String.id,
        }),
        EnvironmentId = schema.new({
            id = id.from(_N, "GetDeploymentOutput", "EnvironmentId"),
            type = "string",
            name = "EnvironmentId",
            target_id = prelude.String.id,
        }),
        DeploymentStrategyId = schema.new({
            id = id.from(_N, "GetDeploymentOutput", "DeploymentStrategyId"),
            type = "string",
            name = "DeploymentStrategyId",
            target_id = prelude.String.id,
        }),
        ConfigurationProfileId = schema.new({
            id = id.from(_N, "GetDeploymentOutput", "ConfigurationProfileId"),
            type = "string",
            name = "ConfigurationProfileId",
            target_id = prelude.String.id,
        }),
        DeploymentNumber = schema.new({
            id = id.from(_N, "GetDeploymentOutput", "DeploymentNumber"),
            type = "integer",
            name = "DeploymentNumber",
            target_id = prelude.Integer.id,
            traits = {
                [traits.DEFAULT] = { value = 0 },
            },
        }),
        ConfigurationName = schema.new({
            id = id.from(_N, "GetDeploymentOutput", "ConfigurationName"),
            type = "string",
            name = "ConfigurationName",
            target_id = prelude.String.id,
        }),
        ConfigurationLocationUri = schema.new({
            id = id.from(_N, "GetDeploymentOutput", "ConfigurationLocationUri"),
            type = "string",
            name = "ConfigurationLocationUri",
            target_id = prelude.String.id,
        }),
        ConfigurationVersion = schema.new({
            id = id.from(_N, "GetDeploymentOutput", "ConfigurationVersion"),
            type = "string",
            name = "ConfigurationVersion",
            target_id = prelude.String.id,
        }),
        Description = schema.new({
            id = id.from(_N, "GetDeploymentOutput", "Description"),
            type = "string",
            name = "Description",
            target_id = prelude.String.id,
        }),
        DeploymentDurationInMinutes = schema.new({
            id = id.from(_N, "GetDeploymentOutput", "DeploymentDurationInMinutes"),
            type = "integer",
            name = "DeploymentDurationInMinutes",
            target_id = prelude.Integer.id,
            traits = {
                [traits.DEFAULT] = { value = 0 },
            },
        }),
        GrowthType = schema.new({
            id = id.from(_N, "GetDeploymentOutput", "GrowthType"),
            type = "string",
            name = "GrowthType",
            target_id = prelude.String.id,
        }),
        GrowthFactor = schema.new({
            id = id.from(_N, "GetDeploymentOutput", "GrowthFactor"),
            type = "float",
            name = "GrowthFactor",
            target_id = prelude.Float.id,
        }),
        FinalBakeTimeInMinutes = schema.new({
            id = id.from(_N, "GetDeploymentOutput", "FinalBakeTimeInMinutes"),
            type = "integer",
            name = "FinalBakeTimeInMinutes",
            target_id = prelude.Integer.id,
            traits = {
                [traits.DEFAULT] = { value = 0 },
            },
        }),
        State = schema.new({
            id = id.from(_N, "GetDeploymentOutput", "State"),
            type = "string",
            name = "State",
            target_id = prelude.String.id,
        }),
        EventLog = schema.new({
            id = id.from(_N, "GetDeploymentOutput", "EventLog"),
            type = "list",
            name = "EventLog",
            target_id = prelude.Document.id,
            list_member = M.DeploymentEvent,
        }),
        PercentageComplete = schema.new({
            id = id.from(_N, "GetDeploymentOutput", "PercentageComplete"),
            type = "float",
            name = "PercentageComplete",
            target_id = prelude.Float.id,
        }),
        StartedAt = schema.new({
            id = id.from(_N, "GetDeploymentOutput", "StartedAt"),
            type = "timestamp",
            name = "StartedAt",
            target_id = prelude.Timestamp.id,
            traits = {
                [traits.TIMESTAMP_FORMAT] = { format = "date-time" },
            },
        }),
        CompletedAt = schema.new({
            id = id.from(_N, "GetDeploymentOutput", "CompletedAt"),
            type = "timestamp",
            name = "CompletedAt",
            target_id = prelude.Timestamp.id,
            traits = {
                [traits.TIMESTAMP_FORMAT] = { format = "date-time" },
            },
        }),
        AppliedExtensions = schema.new({
            id = id.from(_N, "GetDeploymentOutput", "AppliedExtensions"),
            type = "list",
            name = "AppliedExtensions",
            target_id = prelude.Document.id,
            list_member = M.AppliedExtension,
        }),
        KmsKeyArn = schema.new({
            id = id.from(_N, "GetDeploymentOutput", "KmsKeyArn"),
            type = "string",
            name = "KmsKeyArn",
            target_id = prelude.String.id,
        }),
        KmsKeyIdentifier = schema.new({
            id = id.from(_N, "GetDeploymentOutput", "KmsKeyIdentifier"),
            type = "string",
            name = "KmsKeyIdentifier",
            target_id = prelude.String.id,
        }),
        VersionLabel = schema.new({
            id = id.from(_N, "GetDeploymentOutput", "VersionLabel"),
            type = "string",
            name = "VersionLabel",
            target_id = prelude.String.id,
        }),
    },
})

M.GetDeploymentStrategyInput = schema.new({
    id = id.from(_N, "GetDeploymentStrategyInput"),
    type = "structure",
    members = {
        DeploymentStrategyId = schema.new({
            id = id.from(_N, "GetDeploymentStrategyInput", "DeploymentStrategyId"),
            type = "string",
            name = "DeploymentStrategyId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
    },
})

M.GetDeploymentStrategyOutput = schema.new({
    id = id.from(_N, "GetDeploymentStrategyOutput"),
    type = "structure",
    members = {
        Id = schema.new({
            id = id.from(_N, "GetDeploymentStrategyOutput", "Id"),
            type = "string",
            name = "Id",
            target_id = prelude.String.id,
        }),
        Name = schema.new({
            id = id.from(_N, "GetDeploymentStrategyOutput", "Name"),
            type = "string",
            name = "Name",
            target_id = prelude.String.id,
        }),
        Description = schema.new({
            id = id.from(_N, "GetDeploymentStrategyOutput", "Description"),
            type = "string",
            name = "Description",
            target_id = prelude.String.id,
        }),
        DeploymentDurationInMinutes = schema.new({
            id = id.from(_N, "GetDeploymentStrategyOutput", "DeploymentDurationInMinutes"),
            type = "integer",
            name = "DeploymentDurationInMinutes",
            target_id = prelude.Integer.id,
            traits = {
                [traits.DEFAULT] = { value = 0 },
            },
        }),
        GrowthType = schema.new({
            id = id.from(_N, "GetDeploymentStrategyOutput", "GrowthType"),
            type = "string",
            name = "GrowthType",
            target_id = prelude.String.id,
        }),
        GrowthFactor = schema.new({
            id = id.from(_N, "GetDeploymentStrategyOutput", "GrowthFactor"),
            type = "float",
            name = "GrowthFactor",
            target_id = prelude.Float.id,
        }),
        FinalBakeTimeInMinutes = schema.new({
            id = id.from(_N, "GetDeploymentStrategyOutput", "FinalBakeTimeInMinutes"),
            type = "integer",
            name = "FinalBakeTimeInMinutes",
            target_id = prelude.Integer.id,
            traits = {
                [traits.DEFAULT] = { value = 0 },
            },
        }),
        ReplicateTo = schema.new({
            id = id.from(_N, "GetDeploymentStrategyOutput", "ReplicateTo"),
            type = "string",
            name = "ReplicateTo",
            target_id = prelude.String.id,
        }),
    },
})

M.GetEnvironmentInput = schema.new({
    id = id.from(_N, "GetEnvironmentInput"),
    type = "structure",
    members = {
        ApplicationId = schema.new({
            id = id.from(_N, "GetEnvironmentInput", "ApplicationId"),
            type = "string",
            name = "ApplicationId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
        EnvironmentId = schema.new({
            id = id.from(_N, "GetEnvironmentInput", "EnvironmentId"),
            type = "string",
            name = "EnvironmentId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
    },
})

M.GetEnvironmentOutput = schema.new({
    id = id.from(_N, "GetEnvironmentOutput"),
    type = "structure",
    members = {
        ApplicationId = schema.new({
            id = id.from(_N, "GetEnvironmentOutput", "ApplicationId"),
            type = "string",
            name = "ApplicationId",
            target_id = prelude.String.id,
        }),
        Id = schema.new({
            id = id.from(_N, "GetEnvironmentOutput", "Id"),
            type = "string",
            name = "Id",
            target_id = prelude.String.id,
        }),
        Name = schema.new({
            id = id.from(_N, "GetEnvironmentOutput", "Name"),
            type = "string",
            name = "Name",
            target_id = prelude.String.id,
        }),
        Description = schema.new({
            id = id.from(_N, "GetEnvironmentOutput", "Description"),
            type = "string",
            name = "Description",
            target_id = prelude.String.id,
        }),
        State = schema.new({
            id = id.from(_N, "GetEnvironmentOutput", "State"),
            type = "string",
            name = "State",
            target_id = prelude.String.id,
        }),
        Monitors = schema.new({
            id = id.from(_N, "GetEnvironmentOutput", "Monitors"),
            type = "list",
            name = "Monitors",
            target_id = prelude.Document.id,
            list_member = M.Monitor,
        }),
    },
})

M.GetExtensionInput = schema.new({
    id = id.from(_N, "GetExtensionInput"),
    type = "structure",
    members = {
        ExtensionIdentifier = schema.new({
            id = id.from(_N, "GetExtensionInput", "ExtensionIdentifier"),
            type = "string",
            name = "ExtensionIdentifier",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
        VersionNumber = schema.new({
            id = id.from(_N, "GetExtensionInput", "VersionNumber"),
            type = "integer",
            name = "VersionNumber",
            target_id = prelude.Integer.id,
            traits = {
                [traits.DEFAULT] = { value = nil },
                [traits.HTTP_QUERY] = { name = "version_number" },
            },
        }),
    },
})

M.GetExtensionOutput = schema.new({
    id = id.from(_N, "GetExtensionOutput"),
    type = "structure",
    members = {
        Id = schema.new({
            id = id.from(_N, "GetExtensionOutput", "Id"),
            type = "string",
            name = "Id",
            target_id = prelude.String.id,
        }),
        Name = schema.new({
            id = id.from(_N, "GetExtensionOutput", "Name"),
            type = "string",
            name = "Name",
            target_id = prelude.String.id,
        }),
        VersionNumber = schema.new({
            id = id.from(_N, "GetExtensionOutput", "VersionNumber"),
            type = "integer",
            name = "VersionNumber",
            target_id = prelude.Integer.id,
            traits = {
                [traits.DEFAULT] = { value = 0 },
            },
        }),
        Arn = schema.new({
            id = id.from(_N, "GetExtensionOutput", "Arn"),
            type = "string",
            name = "Arn",
            target_id = prelude.String.id,
        }),
        Description = schema.new({
            id = id.from(_N, "GetExtensionOutput", "Description"),
            type = "string",
            name = "Description",
            target_id = prelude.String.id,
        }),
        Actions = schema.new({
            id = id.from(_N, "GetExtensionOutput", "Actions"),
            type = "map",
            name = "Actions",
            target_id = prelude.Document.id,
            map_key = prelude.String,
            map_value = prelude.Document,
        }),
        Parameters = schema.new({
            id = id.from(_N, "GetExtensionOutput", "Parameters"),
            type = "map",
            name = "Parameters",
            target_id = prelude.Document.id,
            map_key = prelude.String,
            map_value = M.Parameter,
        }),
    },
})

M.GetExtensionAssociationInput = schema.new({
    id = id.from(_N, "GetExtensionAssociationInput"),
    type = "structure",
    members = {
        ExtensionAssociationId = schema.new({
            id = id.from(_N, "GetExtensionAssociationInput", "ExtensionAssociationId"),
            type = "string",
            name = "ExtensionAssociationId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
    },
})

M.GetExtensionAssociationOutput = schema.new({
    id = id.from(_N, "GetExtensionAssociationOutput"),
    type = "structure",
    members = {
        Id = schema.new({
            id = id.from(_N, "GetExtensionAssociationOutput", "Id"),
            type = "string",
            name = "Id",
            target_id = prelude.String.id,
        }),
        ExtensionArn = schema.new({
            id = id.from(_N, "GetExtensionAssociationOutput", "ExtensionArn"),
            type = "string",
            name = "ExtensionArn",
            target_id = prelude.String.id,
        }),
        ResourceArn = schema.new({
            id = id.from(_N, "GetExtensionAssociationOutput", "ResourceArn"),
            type = "string",
            name = "ResourceArn",
            target_id = prelude.String.id,
        }),
        Arn = schema.new({
            id = id.from(_N, "GetExtensionAssociationOutput", "Arn"),
            type = "string",
            name = "Arn",
            target_id = prelude.String.id,
        }),
        Parameters = schema.new({
            id = id.from(_N, "GetExtensionAssociationOutput", "Parameters"),
            type = "map",
            name = "Parameters",
            target_id = prelude.Document.id,
            map_key = prelude.String,
            map_value = prelude.String,
        }),
        ExtensionVersionNumber = schema.new({
            id = id.from(_N, "GetExtensionAssociationOutput", "ExtensionVersionNumber"),
            type = "integer",
            name = "ExtensionVersionNumber",
            target_id = prelude.Integer.id,
            traits = {
                [traits.DEFAULT] = { value = 0 },
            },
        }),
    },
})

M.GetHostedConfigurationVersionInput = schema.new({
    id = id.from(_N, "GetHostedConfigurationVersionInput"),
    type = "structure",
    members = {
        ApplicationId = schema.new({
            id = id.from(_N, "GetHostedConfigurationVersionInput", "ApplicationId"),
            type = "string",
            name = "ApplicationId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
        ConfigurationProfileId = schema.new({
            id = id.from(_N, "GetHostedConfigurationVersionInput", "ConfigurationProfileId"),
            type = "string",
            name = "ConfigurationProfileId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
        VersionNumber = schema.new({
            id = id.from(_N, "GetHostedConfigurationVersionInput", "VersionNumber"),
            type = "integer",
            name = "VersionNumber",
            target_id = prelude.Integer.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.DEFAULT] = { value = nil },
                [traits.HTTP_LABEL] = {},
            },
        }),
    },
})

M.GetHostedConfigurationVersionOutput = schema.new({
    id = id.from(_N, "GetHostedConfigurationVersionOutput"),
    type = "structure",
    members = {
        ApplicationId = schema.new({
            id = id.from(_N, "GetHostedConfigurationVersionOutput", "ApplicationId"),
            type = "string",
            name = "ApplicationId",
            target_id = prelude.String.id,
            traits = {
                [traits.HTTP_HEADER] = { name = "Application-Id" },
            },
        }),
        ConfigurationProfileId = schema.new({
            id = id.from(_N, "GetHostedConfigurationVersionOutput", "ConfigurationProfileId"),
            type = "string",
            name = "ConfigurationProfileId",
            target_id = prelude.String.id,
            traits = {
                [traits.HTTP_HEADER] = { name = "Configuration-Profile-Id" },
            },
        }),
        VersionNumber = schema.new({
            id = id.from(_N, "GetHostedConfigurationVersionOutput", "VersionNumber"),
            type = "integer",
            name = "VersionNumber",
            target_id = prelude.Integer.id,
            traits = {
                [traits.DEFAULT] = { value = 0 },
                [traits.HTTP_HEADER] = { name = "Version-Number" },
            },
        }),
        Description = schema.new({
            id = id.from(_N, "GetHostedConfigurationVersionOutput", "Description"),
            type = "string",
            name = "Description",
            target_id = prelude.String.id,
            traits = {
                [traits.HTTP_HEADER] = { name = "Description" },
            },
        }),
        Content = schema.new({
            id = id.from(_N, "GetHostedConfigurationVersionOutput", "Content"),
            type = "blob",
            name = "Content",
            target_id = prelude.Blob.id,
            traits = {
                [traits.HTTP_PAYLOAD] = {},
            },
        }),
        ContentType = schema.new({
            id = id.from(_N, "GetHostedConfigurationVersionOutput", "ContentType"),
            type = "string",
            name = "ContentType",
            target_id = prelude.String.id,
            traits = {
                [traits.HTTP_HEADER] = { name = "Content-Type" },
            },
        }),
        VersionLabel = schema.new({
            id = id.from(_N, "GetHostedConfigurationVersionOutput", "VersionLabel"),
            type = "string",
            name = "VersionLabel",
            target_id = prelude.String.id,
            traits = {
                [traits.HTTP_HEADER] = { name = "VersionLabel" },
            },
        }),
        KmsKeyArn = schema.new({
            id = id.from(_N, "GetHostedConfigurationVersionOutput", "KmsKeyArn"),
            type = "string",
            name = "KmsKeyArn",
            target_id = prelude.String.id,
            traits = {
                [traits.HTTP_HEADER] = { name = "KmsKeyArn" },
            },
        }),
    },
})

M.ListApplicationsInput = schema.new({
    id = id.from(_N, "ListApplicationsInput"),
    type = "structure",
    members = {
        MaxResults = schema.new({
            id = id.from(_N, "ListApplicationsInput", "MaxResults"),
            type = "integer",
            name = "MaxResults",
            target_id = prelude.Integer.id,
            traits = {
                [traits.HTTP_QUERY] = { name = "max_results" },
            },
        }),
        NextToken = schema.new({
            id = id.from(_N, "ListApplicationsInput", "NextToken"),
            type = "string",
            name = "NextToken",
            target_id = prelude.String.id,
            traits = {
                [traits.HTTP_QUERY] = { name = "next_token" },
            },
        }),
    },
})

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
        Name = schema.new({
            id = id.from(_N, "Application", "Name"),
            type = "string",
            name = "Name",
            target_id = prelude.String.id,
        }),
        Description = schema.new({
            id = id.from(_N, "Application", "Description"),
            type = "string",
            name = "Description",
            target_id = prelude.String.id,
        }),
    },
})

M.ListApplicationsOutput = schema.new({
    id = id.from(_N, "ListApplicationsOutput"),
    type = "structure",
    members = {
        Items = schema.new({
            id = id.from(_N, "ListApplicationsOutput", "Items"),
            type = "list",
            name = "Items",
            target_id = prelude.Document.id,
            list_member = M.Application,
        }),
        NextToken = schema.new({
            id = id.from(_N, "ListApplicationsOutput", "NextToken"),
            type = "string",
            name = "NextToken",
            target_id = prelude.String.id,
        }),
    },
})

M.ListConfigurationProfilesInput = schema.new({
    id = id.from(_N, "ListConfigurationProfilesInput"),
    type = "structure",
    members = {
        ApplicationId = schema.new({
            id = id.from(_N, "ListConfigurationProfilesInput", "ApplicationId"),
            type = "string",
            name = "ApplicationId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
        MaxResults = schema.new({
            id = id.from(_N, "ListConfigurationProfilesInput", "MaxResults"),
            type = "integer",
            name = "MaxResults",
            target_id = prelude.Integer.id,
            traits = {
                [traits.HTTP_QUERY] = { name = "max_results" },
            },
        }),
        NextToken = schema.new({
            id = id.from(_N, "ListConfigurationProfilesInput", "NextToken"),
            type = "string",
            name = "NextToken",
            target_id = prelude.String.id,
            traits = {
                [traits.HTTP_QUERY] = { name = "next_token" },
            },
        }),
        Type = schema.new({
            id = id.from(_N, "ListConfigurationProfilesInput", "Type"),
            type = "string",
            name = "Type",
            target_id = prelude.String.id,
            traits = {
                [traits.HTTP_QUERY] = { name = "type" },
            },
        }),
    },
})

M.ConfigurationProfileSummary = schema.new({
    id = id.from(_N, "ConfigurationProfileSummary"),
    type = "structure",
    members = {
        ApplicationId = schema.new({
            id = id.from(_N, "ConfigurationProfileSummary", "ApplicationId"),
            type = "string",
            name = "ApplicationId",
            target_id = prelude.String.id,
        }),
        Id = schema.new({
            id = id.from(_N, "ConfigurationProfileSummary", "Id"),
            type = "string",
            name = "Id",
            target_id = prelude.String.id,
        }),
        Name = schema.new({
            id = id.from(_N, "ConfigurationProfileSummary", "Name"),
            type = "string",
            name = "Name",
            target_id = prelude.String.id,
        }),
        LocationUri = schema.new({
            id = id.from(_N, "ConfigurationProfileSummary", "LocationUri"),
            type = "string",
            name = "LocationUri",
            target_id = prelude.String.id,
        }),
        ValidatorTypes = schema.new({
            id = id.from(_N, "ConfigurationProfileSummary", "ValidatorTypes"),
            type = "list",
            name = "ValidatorTypes",
            target_id = prelude.Document.id,
            list_member = prelude.String,
        }),
        Type = schema.new({
            id = id.from(_N, "ConfigurationProfileSummary", "Type"),
            type = "string",
            name = "Type",
            target_id = prelude.String.id,
        }),
    },
})

M.ListConfigurationProfilesOutput = schema.new({
    id = id.from(_N, "ListConfigurationProfilesOutput"),
    type = "structure",
    members = {
        Items = schema.new({
            id = id.from(_N, "ListConfigurationProfilesOutput", "Items"),
            type = "list",
            name = "Items",
            target_id = prelude.Document.id,
            list_member = M.ConfigurationProfileSummary,
        }),
        NextToken = schema.new({
            id = id.from(_N, "ListConfigurationProfilesOutput", "NextToken"),
            type = "string",
            name = "NextToken",
            target_id = prelude.String.id,
        }),
    },
})

M.ListDeploymentsInput = schema.new({
    id = id.from(_N, "ListDeploymentsInput"),
    type = "structure",
    members = {
        ApplicationId = schema.new({
            id = id.from(_N, "ListDeploymentsInput", "ApplicationId"),
            type = "string",
            name = "ApplicationId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
        EnvironmentId = schema.new({
            id = id.from(_N, "ListDeploymentsInput", "EnvironmentId"),
            type = "string",
            name = "EnvironmentId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
        MaxResults = schema.new({
            id = id.from(_N, "ListDeploymentsInput", "MaxResults"),
            type = "integer",
            name = "MaxResults",
            target_id = prelude.Integer.id,
            traits = {
                [traits.HTTP_QUERY] = { name = "max_results" },
            },
        }),
        NextToken = schema.new({
            id = id.from(_N, "ListDeploymentsInput", "NextToken"),
            type = "string",
            name = "NextToken",
            target_id = prelude.String.id,
            traits = {
                [traits.HTTP_QUERY] = { name = "next_token" },
            },
        }),
    },
})

M.DeploymentSummary = schema.new({
    id = id.from(_N, "DeploymentSummary"),
    type = "structure",
    members = {
        DeploymentNumber = schema.new({
            id = id.from(_N, "DeploymentSummary", "DeploymentNumber"),
            type = "integer",
            name = "DeploymentNumber",
            target_id = prelude.Integer.id,
            traits = {
                [traits.DEFAULT] = { value = 0 },
            },
        }),
        ConfigurationName = schema.new({
            id = id.from(_N, "DeploymentSummary", "ConfigurationName"),
            type = "string",
            name = "ConfigurationName",
            target_id = prelude.String.id,
        }),
        ConfigurationVersion = schema.new({
            id = id.from(_N, "DeploymentSummary", "ConfigurationVersion"),
            type = "string",
            name = "ConfigurationVersion",
            target_id = prelude.String.id,
        }),
        DeploymentDurationInMinutes = schema.new({
            id = id.from(_N, "DeploymentSummary", "DeploymentDurationInMinutes"),
            type = "integer",
            name = "DeploymentDurationInMinutes",
            target_id = prelude.Integer.id,
            traits = {
                [traits.DEFAULT] = { value = 0 },
            },
        }),
        GrowthType = schema.new({
            id = id.from(_N, "DeploymentSummary", "GrowthType"),
            type = "string",
            name = "GrowthType",
            target_id = prelude.String.id,
        }),
        GrowthFactor = schema.new({
            id = id.from(_N, "DeploymentSummary", "GrowthFactor"),
            type = "float",
            name = "GrowthFactor",
            target_id = prelude.Float.id,
        }),
        FinalBakeTimeInMinutes = schema.new({
            id = id.from(_N, "DeploymentSummary", "FinalBakeTimeInMinutes"),
            type = "integer",
            name = "FinalBakeTimeInMinutes",
            target_id = prelude.Integer.id,
            traits = {
                [traits.DEFAULT] = { value = 0 },
            },
        }),
        State = schema.new({
            id = id.from(_N, "DeploymentSummary", "State"),
            type = "string",
            name = "State",
            target_id = prelude.String.id,
        }),
        PercentageComplete = schema.new({
            id = id.from(_N, "DeploymentSummary", "PercentageComplete"),
            type = "float",
            name = "PercentageComplete",
            target_id = prelude.Float.id,
        }),
        StartedAt = schema.new({
            id = id.from(_N, "DeploymentSummary", "StartedAt"),
            type = "timestamp",
            name = "StartedAt",
            target_id = prelude.Timestamp.id,
            traits = {
                [traits.TIMESTAMP_FORMAT] = { format = "date-time" },
            },
        }),
        CompletedAt = schema.new({
            id = id.from(_N, "DeploymentSummary", "CompletedAt"),
            type = "timestamp",
            name = "CompletedAt",
            target_id = prelude.Timestamp.id,
            traits = {
                [traits.TIMESTAMP_FORMAT] = { format = "date-time" },
            },
        }),
        VersionLabel = schema.new({
            id = id.from(_N, "DeploymentSummary", "VersionLabel"),
            type = "string",
            name = "VersionLabel",
            target_id = prelude.String.id,
        }),
    },
})

M.ListDeploymentsOutput = schema.new({
    id = id.from(_N, "ListDeploymentsOutput"),
    type = "structure",
    members = {
        Items = schema.new({
            id = id.from(_N, "ListDeploymentsOutput", "Items"),
            type = "list",
            name = "Items",
            target_id = prelude.Document.id,
            list_member = M.DeploymentSummary,
        }),
        NextToken = schema.new({
            id = id.from(_N, "ListDeploymentsOutput", "NextToken"),
            type = "string",
            name = "NextToken",
            target_id = prelude.String.id,
        }),
    },
})

M.ListDeploymentStrategiesInput = schema.new({
    id = id.from(_N, "ListDeploymentStrategiesInput"),
    type = "structure",
    members = {
        MaxResults = schema.new({
            id = id.from(_N, "ListDeploymentStrategiesInput", "MaxResults"),
            type = "integer",
            name = "MaxResults",
            target_id = prelude.Integer.id,
            traits = {
                [traits.HTTP_QUERY] = { name = "max_results" },
            },
        }),
        NextToken = schema.new({
            id = id.from(_N, "ListDeploymentStrategiesInput", "NextToken"),
            type = "string",
            name = "NextToken",
            target_id = prelude.String.id,
            traits = {
                [traits.HTTP_QUERY] = { name = "next_token" },
            },
        }),
    },
})

M.DeploymentStrategy = schema.new({
    id = id.from(_N, "DeploymentStrategy"),
    type = "structure",
    members = {
        Id = schema.new({
            id = id.from(_N, "DeploymentStrategy", "Id"),
            type = "string",
            name = "Id",
            target_id = prelude.String.id,
        }),
        Name = schema.new({
            id = id.from(_N, "DeploymentStrategy", "Name"),
            type = "string",
            name = "Name",
            target_id = prelude.String.id,
        }),
        Description = schema.new({
            id = id.from(_N, "DeploymentStrategy", "Description"),
            type = "string",
            name = "Description",
            target_id = prelude.String.id,
        }),
        DeploymentDurationInMinutes = schema.new({
            id = id.from(_N, "DeploymentStrategy", "DeploymentDurationInMinutes"),
            type = "integer",
            name = "DeploymentDurationInMinutes",
            target_id = prelude.Integer.id,
            traits = {
                [traits.DEFAULT] = { value = 0 },
            },
        }),
        GrowthType = schema.new({
            id = id.from(_N, "DeploymentStrategy", "GrowthType"),
            type = "string",
            name = "GrowthType",
            target_id = prelude.String.id,
        }),
        GrowthFactor = schema.new({
            id = id.from(_N, "DeploymentStrategy", "GrowthFactor"),
            type = "float",
            name = "GrowthFactor",
            target_id = prelude.Float.id,
        }),
        FinalBakeTimeInMinutes = schema.new({
            id = id.from(_N, "DeploymentStrategy", "FinalBakeTimeInMinutes"),
            type = "integer",
            name = "FinalBakeTimeInMinutes",
            target_id = prelude.Integer.id,
            traits = {
                [traits.DEFAULT] = { value = 0 },
            },
        }),
        ReplicateTo = schema.new({
            id = id.from(_N, "DeploymentStrategy", "ReplicateTo"),
            type = "string",
            name = "ReplicateTo",
            target_id = prelude.String.id,
        }),
    },
})

M.ListDeploymentStrategiesOutput = schema.new({
    id = id.from(_N, "ListDeploymentStrategiesOutput"),
    type = "structure",
    members = {
        Items = schema.new({
            id = id.from(_N, "ListDeploymentStrategiesOutput", "Items"),
            type = "list",
            name = "Items",
            target_id = prelude.Document.id,
            list_member = M.DeploymentStrategy,
        }),
        NextToken = schema.new({
            id = id.from(_N, "ListDeploymentStrategiesOutput", "NextToken"),
            type = "string",
            name = "NextToken",
            target_id = prelude.String.id,
        }),
    },
})

M.ListEnvironmentsInput = schema.new({
    id = id.from(_N, "ListEnvironmentsInput"),
    type = "structure",
    members = {
        ApplicationId = schema.new({
            id = id.from(_N, "ListEnvironmentsInput", "ApplicationId"),
            type = "string",
            name = "ApplicationId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
        MaxResults = schema.new({
            id = id.from(_N, "ListEnvironmentsInput", "MaxResults"),
            type = "integer",
            name = "MaxResults",
            target_id = prelude.Integer.id,
            traits = {
                [traits.HTTP_QUERY] = { name = "max_results" },
            },
        }),
        NextToken = schema.new({
            id = id.from(_N, "ListEnvironmentsInput", "NextToken"),
            type = "string",
            name = "NextToken",
            target_id = prelude.String.id,
            traits = {
                [traits.HTTP_QUERY] = { name = "next_token" },
            },
        }),
    },
})

M.Environment = schema.new({
    id = id.from(_N, "Environment"),
    type = "structure",
    members = {
        ApplicationId = schema.new({
            id = id.from(_N, "Environment", "ApplicationId"),
            type = "string",
            name = "ApplicationId",
            target_id = prelude.String.id,
        }),
        Id = schema.new({
            id = id.from(_N, "Environment", "Id"),
            type = "string",
            name = "Id",
            target_id = prelude.String.id,
        }),
        Name = schema.new({
            id = id.from(_N, "Environment", "Name"),
            type = "string",
            name = "Name",
            target_id = prelude.String.id,
        }),
        Description = schema.new({
            id = id.from(_N, "Environment", "Description"),
            type = "string",
            name = "Description",
            target_id = prelude.String.id,
        }),
        State = schema.new({
            id = id.from(_N, "Environment", "State"),
            type = "string",
            name = "State",
            target_id = prelude.String.id,
        }),
        Monitors = schema.new({
            id = id.from(_N, "Environment", "Monitors"),
            type = "list",
            name = "Monitors",
            target_id = prelude.Document.id,
            list_member = M.Monitor,
        }),
    },
})

M.ListEnvironmentsOutput = schema.new({
    id = id.from(_N, "ListEnvironmentsOutput"),
    type = "structure",
    members = {
        Items = schema.new({
            id = id.from(_N, "ListEnvironmentsOutput", "Items"),
            type = "list",
            name = "Items",
            target_id = prelude.Document.id,
            list_member = M.Environment,
        }),
        NextToken = schema.new({
            id = id.from(_N, "ListEnvironmentsOutput", "NextToken"),
            type = "string",
            name = "NextToken",
            target_id = prelude.String.id,
        }),
    },
})

M.ListExtensionAssociationsInput = schema.new({
    id = id.from(_N, "ListExtensionAssociationsInput"),
    type = "structure",
    members = {
        ResourceIdentifier = schema.new({
            id = id.from(_N, "ListExtensionAssociationsInput", "ResourceIdentifier"),
            type = "string",
            name = "ResourceIdentifier",
            target_id = prelude.String.id,
            traits = {
                [traits.HTTP_QUERY] = { name = "resource_identifier" },
            },
        }),
        ExtensionIdentifier = schema.new({
            id = id.from(_N, "ListExtensionAssociationsInput", "ExtensionIdentifier"),
            type = "string",
            name = "ExtensionIdentifier",
            target_id = prelude.String.id,
            traits = {
                [traits.HTTP_QUERY] = { name = "extension_identifier" },
            },
        }),
        ExtensionVersionNumber = schema.new({
            id = id.from(_N, "ListExtensionAssociationsInput", "ExtensionVersionNumber"),
            type = "integer",
            name = "ExtensionVersionNumber",
            target_id = prelude.Integer.id,
            traits = {
                [traits.DEFAULT] = { value = nil },
                [traits.HTTP_QUERY] = { name = "extension_version_number" },
            },
        }),
        MaxResults = schema.new({
            id = id.from(_N, "ListExtensionAssociationsInput", "MaxResults"),
            type = "integer",
            name = "MaxResults",
            target_id = prelude.Integer.id,
            traits = {
                [traits.HTTP_QUERY] = { name = "max_results" },
            },
        }),
        NextToken = schema.new({
            id = id.from(_N, "ListExtensionAssociationsInput", "NextToken"),
            type = "string",
            name = "NextToken",
            target_id = prelude.String.id,
            traits = {
                [traits.HTTP_QUERY] = { name = "next_token" },
            },
        }),
    },
})

M.ExtensionAssociationSummary = schema.new({
    id = id.from(_N, "ExtensionAssociationSummary"),
    type = "structure",
    members = {
        Id = schema.new({
            id = id.from(_N, "ExtensionAssociationSummary", "Id"),
            type = "string",
            name = "Id",
            target_id = prelude.String.id,
        }),
        ExtensionArn = schema.new({
            id = id.from(_N, "ExtensionAssociationSummary", "ExtensionArn"),
            type = "string",
            name = "ExtensionArn",
            target_id = prelude.String.id,
        }),
        ResourceArn = schema.new({
            id = id.from(_N, "ExtensionAssociationSummary", "ResourceArn"),
            type = "string",
            name = "ResourceArn",
            target_id = prelude.String.id,
        }),
    },
})

M.ListExtensionAssociationsOutput = schema.new({
    id = id.from(_N, "ListExtensionAssociationsOutput"),
    type = "structure",
    members = {
        Items = schema.new({
            id = id.from(_N, "ListExtensionAssociationsOutput", "Items"),
            type = "list",
            name = "Items",
            target_id = prelude.Document.id,
            list_member = M.ExtensionAssociationSummary,
        }),
        NextToken = schema.new({
            id = id.from(_N, "ListExtensionAssociationsOutput", "NextToken"),
            type = "string",
            name = "NextToken",
            target_id = prelude.String.id,
        }),
    },
})

M.ListExtensionsInput = schema.new({
    id = id.from(_N, "ListExtensionsInput"),
    type = "structure",
    members = {
        MaxResults = schema.new({
            id = id.from(_N, "ListExtensionsInput", "MaxResults"),
            type = "integer",
            name = "MaxResults",
            target_id = prelude.Integer.id,
            traits = {
                [traits.HTTP_QUERY] = { name = "max_results" },
            },
        }),
        NextToken = schema.new({
            id = id.from(_N, "ListExtensionsInput", "NextToken"),
            type = "string",
            name = "NextToken",
            target_id = prelude.String.id,
            traits = {
                [traits.HTTP_QUERY] = { name = "next_token" },
            },
        }),
        Name = schema.new({
            id = id.from(_N, "ListExtensionsInput", "Name"),
            type = "string",
            name = "Name",
            target_id = prelude.String.id,
            traits = {
                [traits.HTTP_QUERY] = { name = "name" },
            },
        }),
    },
})

M.ExtensionSummary = schema.new({
    id = id.from(_N, "ExtensionSummary"),
    type = "structure",
    members = {
        Id = schema.new({
            id = id.from(_N, "ExtensionSummary", "Id"),
            type = "string",
            name = "Id",
            target_id = prelude.String.id,
        }),
        Name = schema.new({
            id = id.from(_N, "ExtensionSummary", "Name"),
            type = "string",
            name = "Name",
            target_id = prelude.String.id,
        }),
        VersionNumber = schema.new({
            id = id.from(_N, "ExtensionSummary", "VersionNumber"),
            type = "integer",
            name = "VersionNumber",
            target_id = prelude.Integer.id,
            traits = {
                [traits.DEFAULT] = { value = 0 },
            },
        }),
        Arn = schema.new({
            id = id.from(_N, "ExtensionSummary", "Arn"),
            type = "string",
            name = "Arn",
            target_id = prelude.String.id,
        }),
        Description = schema.new({
            id = id.from(_N, "ExtensionSummary", "Description"),
            type = "string",
            name = "Description",
            target_id = prelude.String.id,
        }),
    },
})

M.ListExtensionsOutput = schema.new({
    id = id.from(_N, "ListExtensionsOutput"),
    type = "structure",
    members = {
        Items = schema.new({
            id = id.from(_N, "ListExtensionsOutput", "Items"),
            type = "list",
            name = "Items",
            target_id = prelude.Document.id,
            list_member = M.ExtensionSummary,
        }),
        NextToken = schema.new({
            id = id.from(_N, "ListExtensionsOutput", "NextToken"),
            type = "string",
            name = "NextToken",
            target_id = prelude.String.id,
        }),
    },
})

M.ListHostedConfigurationVersionsInput = schema.new({
    id = id.from(_N, "ListHostedConfigurationVersionsInput"),
    type = "structure",
    members = {
        ApplicationId = schema.new({
            id = id.from(_N, "ListHostedConfigurationVersionsInput", "ApplicationId"),
            type = "string",
            name = "ApplicationId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
        ConfigurationProfileId = schema.new({
            id = id.from(_N, "ListHostedConfigurationVersionsInput", "ConfigurationProfileId"),
            type = "string",
            name = "ConfigurationProfileId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
        MaxResults = schema.new({
            id = id.from(_N, "ListHostedConfigurationVersionsInput", "MaxResults"),
            type = "integer",
            name = "MaxResults",
            target_id = prelude.Integer.id,
            traits = {
                [traits.HTTP_QUERY] = { name = "max_results" },
            },
        }),
        NextToken = schema.new({
            id = id.from(_N, "ListHostedConfigurationVersionsInput", "NextToken"),
            type = "string",
            name = "NextToken",
            target_id = prelude.String.id,
            traits = {
                [traits.HTTP_QUERY] = { name = "next_token" },
            },
        }),
        VersionLabel = schema.new({
            id = id.from(_N, "ListHostedConfigurationVersionsInput", "VersionLabel"),
            type = "string",
            name = "VersionLabel",
            target_id = prelude.String.id,
            traits = {
                [traits.HTTP_QUERY] = { name = "version_label" },
            },
        }),
    },
})

M.HostedConfigurationVersionSummary = schema.new({
    id = id.from(_N, "HostedConfigurationVersionSummary"),
    type = "structure",
    members = {
        ApplicationId = schema.new({
            id = id.from(_N, "HostedConfigurationVersionSummary", "ApplicationId"),
            type = "string",
            name = "ApplicationId",
            target_id = prelude.String.id,
        }),
        ConfigurationProfileId = schema.new({
            id = id.from(_N, "HostedConfigurationVersionSummary", "ConfigurationProfileId"),
            type = "string",
            name = "ConfigurationProfileId",
            target_id = prelude.String.id,
        }),
        VersionNumber = schema.new({
            id = id.from(_N, "HostedConfigurationVersionSummary", "VersionNumber"),
            type = "integer",
            name = "VersionNumber",
            target_id = prelude.Integer.id,
            traits = {
                [traits.DEFAULT] = { value = 0 },
            },
        }),
        Description = schema.new({
            id = id.from(_N, "HostedConfigurationVersionSummary", "Description"),
            type = "string",
            name = "Description",
            target_id = prelude.String.id,
        }),
        ContentType = schema.new({
            id = id.from(_N, "HostedConfigurationVersionSummary", "ContentType"),
            type = "string",
            name = "ContentType",
            target_id = prelude.String.id,
        }),
        VersionLabel = schema.new({
            id = id.from(_N, "HostedConfigurationVersionSummary", "VersionLabel"),
            type = "string",
            name = "VersionLabel",
            target_id = prelude.String.id,
        }),
        KmsKeyArn = schema.new({
            id = id.from(_N, "HostedConfigurationVersionSummary", "KmsKeyArn"),
            type = "string",
            name = "KmsKeyArn",
            target_id = prelude.String.id,
        }),
    },
})

M.ListHostedConfigurationVersionsOutput = schema.new({
    id = id.from(_N, "ListHostedConfigurationVersionsOutput"),
    type = "structure",
    members = {
        Items = schema.new({
            id = id.from(_N, "ListHostedConfigurationVersionsOutput", "Items"),
            type = "list",
            name = "Items",
            target_id = prelude.Document.id,
            list_member = M.HostedConfigurationVersionSummary,
        }),
        NextToken = schema.new({
            id = id.from(_N, "ListHostedConfigurationVersionsOutput", "NextToken"),
            type = "string",
            name = "NextToken",
            target_id = prelude.String.id,
        }),
    },
})

M.ListTagsForResourceInput = schema.new({
    id = id.from(_N, "ListTagsForResourceInput"),
    type = "structure",
    members = {
        ResourceArn = schema.new({
            id = id.from(_N, "ListTagsForResourceInput", "ResourceArn"),
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

M.ListTagsForResourceOutput = schema.new({
    id = id.from(_N, "ListTagsForResourceOutput"),
    type = "structure",
    members = {
        Tags = schema.new({
            id = id.from(_N, "ListTagsForResourceOutput", "Tags"),
            type = "map",
            name = "Tags",
            target_id = prelude.Document.id,
            map_key = prelude.String,
            map_value = prelude.String,
        }),
    },
})

M.StartDeploymentInput = schema.new({
    id = id.from(_N, "StartDeploymentInput"),
    type = "structure",
    members = {
        ApplicationId = schema.new({
            id = id.from(_N, "StartDeploymentInput", "ApplicationId"),
            type = "string",
            name = "ApplicationId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
        EnvironmentId = schema.new({
            id = id.from(_N, "StartDeploymentInput", "EnvironmentId"),
            type = "string",
            name = "EnvironmentId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
        DeploymentStrategyId = schema.new({
            id = id.from(_N, "StartDeploymentInput", "DeploymentStrategyId"),
            type = "string",
            name = "DeploymentStrategyId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        ConfigurationProfileId = schema.new({
            id = id.from(_N, "StartDeploymentInput", "ConfigurationProfileId"),
            type = "string",
            name = "ConfigurationProfileId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        ConfigurationVersion = schema.new({
            id = id.from(_N, "StartDeploymentInput", "ConfigurationVersion"),
            type = "string",
            name = "ConfigurationVersion",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        Description = schema.new({
            id = id.from(_N, "StartDeploymentInput", "Description"),
            type = "string",
            name = "Description",
            target_id = prelude.String.id,
        }),
        Tags = schema.new({
            id = id.from(_N, "StartDeploymentInput", "Tags"),
            type = "map",
            name = "Tags",
            target_id = prelude.Document.id,
            map_key = prelude.String,
            map_value = prelude.String,
        }),
        KmsKeyIdentifier = schema.new({
            id = id.from(_N, "StartDeploymentInput", "KmsKeyIdentifier"),
            type = "string",
            name = "KmsKeyIdentifier",
            target_id = prelude.String.id,
        }),
        DynamicExtensionParameters = schema.new({
            id = id.from(_N, "StartDeploymentInput", "DynamicExtensionParameters"),
            type = "map",
            name = "DynamicExtensionParameters",
            target_id = prelude.Document.id,
            map_key = prelude.String,
            map_value = prelude.String,
        }),
    },
})

M.StartDeploymentOutput = schema.new({
    id = id.from(_N, "StartDeploymentOutput"),
    type = "structure",
    members = {
        ApplicationId = schema.new({
            id = id.from(_N, "StartDeploymentOutput", "ApplicationId"),
            type = "string",
            name = "ApplicationId",
            target_id = prelude.String.id,
        }),
        EnvironmentId = schema.new({
            id = id.from(_N, "StartDeploymentOutput", "EnvironmentId"),
            type = "string",
            name = "EnvironmentId",
            target_id = prelude.String.id,
        }),
        DeploymentStrategyId = schema.new({
            id = id.from(_N, "StartDeploymentOutput", "DeploymentStrategyId"),
            type = "string",
            name = "DeploymentStrategyId",
            target_id = prelude.String.id,
        }),
        ConfigurationProfileId = schema.new({
            id = id.from(_N, "StartDeploymentOutput", "ConfigurationProfileId"),
            type = "string",
            name = "ConfigurationProfileId",
            target_id = prelude.String.id,
        }),
        DeploymentNumber = schema.new({
            id = id.from(_N, "StartDeploymentOutput", "DeploymentNumber"),
            type = "integer",
            name = "DeploymentNumber",
            target_id = prelude.Integer.id,
            traits = {
                [traits.DEFAULT] = { value = 0 },
            },
        }),
        ConfigurationName = schema.new({
            id = id.from(_N, "StartDeploymentOutput", "ConfigurationName"),
            type = "string",
            name = "ConfigurationName",
            target_id = prelude.String.id,
        }),
        ConfigurationLocationUri = schema.new({
            id = id.from(_N, "StartDeploymentOutput", "ConfigurationLocationUri"),
            type = "string",
            name = "ConfigurationLocationUri",
            target_id = prelude.String.id,
        }),
        ConfigurationVersion = schema.new({
            id = id.from(_N, "StartDeploymentOutput", "ConfigurationVersion"),
            type = "string",
            name = "ConfigurationVersion",
            target_id = prelude.String.id,
        }),
        Description = schema.new({
            id = id.from(_N, "StartDeploymentOutput", "Description"),
            type = "string",
            name = "Description",
            target_id = prelude.String.id,
        }),
        DeploymentDurationInMinutes = schema.new({
            id = id.from(_N, "StartDeploymentOutput", "DeploymentDurationInMinutes"),
            type = "integer",
            name = "DeploymentDurationInMinutes",
            target_id = prelude.Integer.id,
            traits = {
                [traits.DEFAULT] = { value = 0 },
            },
        }),
        GrowthType = schema.new({
            id = id.from(_N, "StartDeploymentOutput", "GrowthType"),
            type = "string",
            name = "GrowthType",
            target_id = prelude.String.id,
        }),
        GrowthFactor = schema.new({
            id = id.from(_N, "StartDeploymentOutput", "GrowthFactor"),
            type = "float",
            name = "GrowthFactor",
            target_id = prelude.Float.id,
        }),
        FinalBakeTimeInMinutes = schema.new({
            id = id.from(_N, "StartDeploymentOutput", "FinalBakeTimeInMinutes"),
            type = "integer",
            name = "FinalBakeTimeInMinutes",
            target_id = prelude.Integer.id,
            traits = {
                [traits.DEFAULT] = { value = 0 },
            },
        }),
        State = schema.new({
            id = id.from(_N, "StartDeploymentOutput", "State"),
            type = "string",
            name = "State",
            target_id = prelude.String.id,
        }),
        EventLog = schema.new({
            id = id.from(_N, "StartDeploymentOutput", "EventLog"),
            type = "list",
            name = "EventLog",
            target_id = prelude.Document.id,
            list_member = M.DeploymentEvent,
        }),
        PercentageComplete = schema.new({
            id = id.from(_N, "StartDeploymentOutput", "PercentageComplete"),
            type = "float",
            name = "PercentageComplete",
            target_id = prelude.Float.id,
        }),
        StartedAt = schema.new({
            id = id.from(_N, "StartDeploymentOutput", "StartedAt"),
            type = "timestamp",
            name = "StartedAt",
            target_id = prelude.Timestamp.id,
            traits = {
                [traits.TIMESTAMP_FORMAT] = { format = "date-time" },
            },
        }),
        CompletedAt = schema.new({
            id = id.from(_N, "StartDeploymentOutput", "CompletedAt"),
            type = "timestamp",
            name = "CompletedAt",
            target_id = prelude.Timestamp.id,
            traits = {
                [traits.TIMESTAMP_FORMAT] = { format = "date-time" },
            },
        }),
        AppliedExtensions = schema.new({
            id = id.from(_N, "StartDeploymentOutput", "AppliedExtensions"),
            type = "list",
            name = "AppliedExtensions",
            target_id = prelude.Document.id,
            list_member = M.AppliedExtension,
        }),
        KmsKeyArn = schema.new({
            id = id.from(_N, "StartDeploymentOutput", "KmsKeyArn"),
            type = "string",
            name = "KmsKeyArn",
            target_id = prelude.String.id,
        }),
        KmsKeyIdentifier = schema.new({
            id = id.from(_N, "StartDeploymentOutput", "KmsKeyIdentifier"),
            type = "string",
            name = "KmsKeyIdentifier",
            target_id = prelude.String.id,
        }),
        VersionLabel = schema.new({
            id = id.from(_N, "StartDeploymentOutput", "VersionLabel"),
            type = "string",
            name = "VersionLabel",
            target_id = prelude.String.id,
        }),
    },
})

M.StopDeploymentInput = schema.new({
    id = id.from(_N, "StopDeploymentInput"),
    type = "structure",
    members = {
        ApplicationId = schema.new({
            id = id.from(_N, "StopDeploymentInput", "ApplicationId"),
            type = "string",
            name = "ApplicationId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
        EnvironmentId = schema.new({
            id = id.from(_N, "StopDeploymentInput", "EnvironmentId"),
            type = "string",
            name = "EnvironmentId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
        DeploymentNumber = schema.new({
            id = id.from(_N, "StopDeploymentInput", "DeploymentNumber"),
            type = "integer",
            name = "DeploymentNumber",
            target_id = prelude.Integer.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.DEFAULT] = { value = nil },
                [traits.HTTP_LABEL] = {},
            },
        }),
        AllowRevert = schema.new({
            id = id.from(_N, "StopDeploymentInput", "AllowRevert"),
            type = "boolean",
            name = "AllowRevert",
            target_id = prelude.Boolean.id,
            traits = {
                [traits.DEFAULT] = { value = nil },
                [traits.HTTP_HEADER] = { name = "Allow-Revert" },
            },
        }),
    },
})

M.StopDeploymentOutput = schema.new({
    id = id.from(_N, "StopDeploymentOutput"),
    type = "structure",
    members = {
        ApplicationId = schema.new({
            id = id.from(_N, "StopDeploymentOutput", "ApplicationId"),
            type = "string",
            name = "ApplicationId",
            target_id = prelude.String.id,
        }),
        EnvironmentId = schema.new({
            id = id.from(_N, "StopDeploymentOutput", "EnvironmentId"),
            type = "string",
            name = "EnvironmentId",
            target_id = prelude.String.id,
        }),
        DeploymentStrategyId = schema.new({
            id = id.from(_N, "StopDeploymentOutput", "DeploymentStrategyId"),
            type = "string",
            name = "DeploymentStrategyId",
            target_id = prelude.String.id,
        }),
        ConfigurationProfileId = schema.new({
            id = id.from(_N, "StopDeploymentOutput", "ConfigurationProfileId"),
            type = "string",
            name = "ConfigurationProfileId",
            target_id = prelude.String.id,
        }),
        DeploymentNumber = schema.new({
            id = id.from(_N, "StopDeploymentOutput", "DeploymentNumber"),
            type = "integer",
            name = "DeploymentNumber",
            target_id = prelude.Integer.id,
            traits = {
                [traits.DEFAULT] = { value = 0 },
            },
        }),
        ConfigurationName = schema.new({
            id = id.from(_N, "StopDeploymentOutput", "ConfigurationName"),
            type = "string",
            name = "ConfigurationName",
            target_id = prelude.String.id,
        }),
        ConfigurationLocationUri = schema.new({
            id = id.from(_N, "StopDeploymentOutput", "ConfigurationLocationUri"),
            type = "string",
            name = "ConfigurationLocationUri",
            target_id = prelude.String.id,
        }),
        ConfigurationVersion = schema.new({
            id = id.from(_N, "StopDeploymentOutput", "ConfigurationVersion"),
            type = "string",
            name = "ConfigurationVersion",
            target_id = prelude.String.id,
        }),
        Description = schema.new({
            id = id.from(_N, "StopDeploymentOutput", "Description"),
            type = "string",
            name = "Description",
            target_id = prelude.String.id,
        }),
        DeploymentDurationInMinutes = schema.new({
            id = id.from(_N, "StopDeploymentOutput", "DeploymentDurationInMinutes"),
            type = "integer",
            name = "DeploymentDurationInMinutes",
            target_id = prelude.Integer.id,
            traits = {
                [traits.DEFAULT] = { value = 0 },
            },
        }),
        GrowthType = schema.new({
            id = id.from(_N, "StopDeploymentOutput", "GrowthType"),
            type = "string",
            name = "GrowthType",
            target_id = prelude.String.id,
        }),
        GrowthFactor = schema.new({
            id = id.from(_N, "StopDeploymentOutput", "GrowthFactor"),
            type = "float",
            name = "GrowthFactor",
            target_id = prelude.Float.id,
        }),
        FinalBakeTimeInMinutes = schema.new({
            id = id.from(_N, "StopDeploymentOutput", "FinalBakeTimeInMinutes"),
            type = "integer",
            name = "FinalBakeTimeInMinutes",
            target_id = prelude.Integer.id,
            traits = {
                [traits.DEFAULT] = { value = 0 },
            },
        }),
        State = schema.new({
            id = id.from(_N, "StopDeploymentOutput", "State"),
            type = "string",
            name = "State",
            target_id = prelude.String.id,
        }),
        EventLog = schema.new({
            id = id.from(_N, "StopDeploymentOutput", "EventLog"),
            type = "list",
            name = "EventLog",
            target_id = prelude.Document.id,
            list_member = M.DeploymentEvent,
        }),
        PercentageComplete = schema.new({
            id = id.from(_N, "StopDeploymentOutput", "PercentageComplete"),
            type = "float",
            name = "PercentageComplete",
            target_id = prelude.Float.id,
        }),
        StartedAt = schema.new({
            id = id.from(_N, "StopDeploymentOutput", "StartedAt"),
            type = "timestamp",
            name = "StartedAt",
            target_id = prelude.Timestamp.id,
            traits = {
                [traits.TIMESTAMP_FORMAT] = { format = "date-time" },
            },
        }),
        CompletedAt = schema.new({
            id = id.from(_N, "StopDeploymentOutput", "CompletedAt"),
            type = "timestamp",
            name = "CompletedAt",
            target_id = prelude.Timestamp.id,
            traits = {
                [traits.TIMESTAMP_FORMAT] = { format = "date-time" },
            },
        }),
        AppliedExtensions = schema.new({
            id = id.from(_N, "StopDeploymentOutput", "AppliedExtensions"),
            type = "list",
            name = "AppliedExtensions",
            target_id = prelude.Document.id,
            list_member = M.AppliedExtension,
        }),
        KmsKeyArn = schema.new({
            id = id.from(_N, "StopDeploymentOutput", "KmsKeyArn"),
            type = "string",
            name = "KmsKeyArn",
            target_id = prelude.String.id,
        }),
        KmsKeyIdentifier = schema.new({
            id = id.from(_N, "StopDeploymentOutput", "KmsKeyIdentifier"),
            type = "string",
            name = "KmsKeyIdentifier",
            target_id = prelude.String.id,
        }),
        VersionLabel = schema.new({
            id = id.from(_N, "StopDeploymentOutput", "VersionLabel"),
            type = "string",
            name = "VersionLabel",
            target_id = prelude.String.id,
        }),
    },
})

M.TagResourceInput = schema.new({
    id = id.from(_N, "TagResourceInput"),
    type = "structure",
    members = {
        ResourceArn = schema.new({
            id = id.from(_N, "TagResourceInput", "ResourceArn"),
            type = "string",
            name = "ResourceArn",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
        Tags = schema.new({
            id = id.from(_N, "TagResourceInput", "Tags"),
            type = "map",
            name = "Tags",
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
    id = id.from(_N, "TagResourceOutput"),
    type = "structure",
})

M.UntagResourceInput = schema.new({
    id = id.from(_N, "UntagResourceInput"),
    type = "structure",
    members = {
        ResourceArn = schema.new({
            id = id.from(_N, "UntagResourceInput", "ResourceArn"),
            type = "string",
            name = "ResourceArn",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
        TagKeys = schema.new({
            id = id.from(_N, "UntagResourceInput", "TagKeys"),
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

M.UntagResourceOutput = schema.new({
    id = id.from(_N, "UntagResourceOutput"),
    type = "structure",
})

M.UpdateAccountSettingsInput = schema.new({
    id = id.from(_N, "UpdateAccountSettingsInput"),
    type = "structure",
    members = {
        DeletionProtection = schema.new({
            id = id.from(_N, "UpdateAccountSettingsInput", "DeletionProtection"),
            type = "structure",
            name = "DeletionProtection",
            target_id = id.from(_N, "DeletionProtectionSettings"),
            target = M.DeletionProtectionSettings,
        }),
    },
})

M.UpdateAccountSettingsOutput = schema.new({
    id = id.from(_N, "UpdateAccountSettingsOutput"),
    type = "structure",
    members = {
        DeletionProtection = schema.new({
            id = id.from(_N, "UpdateAccountSettingsOutput", "DeletionProtection"),
            type = "structure",
            name = "DeletionProtection",
            target_id = id.from(_N, "DeletionProtectionSettings"),
            target = M.DeletionProtectionSettings,
        }),
    },
})

M.UpdateApplicationInput = schema.new({
    id = id.from(_N, "UpdateApplicationInput"),
    type = "structure",
    members = {
        ApplicationId = schema.new({
            id = id.from(_N, "UpdateApplicationInput", "ApplicationId"),
            type = "string",
            name = "ApplicationId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
        Name = schema.new({
            id = id.from(_N, "UpdateApplicationInput", "Name"),
            type = "string",
            name = "Name",
            target_id = prelude.String.id,
        }),
        Description = schema.new({
            id = id.from(_N, "UpdateApplicationInput", "Description"),
            type = "string",
            name = "Description",
            target_id = prelude.String.id,
        }),
    },
})

M.UpdateApplicationOutput = schema.new({
    id = id.from(_N, "UpdateApplicationOutput"),
    type = "structure",
    members = {
        Id = schema.new({
            id = id.from(_N, "UpdateApplicationOutput", "Id"),
            type = "string",
            name = "Id",
            target_id = prelude.String.id,
        }),
        Name = schema.new({
            id = id.from(_N, "UpdateApplicationOutput", "Name"),
            type = "string",
            name = "Name",
            target_id = prelude.String.id,
        }),
        Description = schema.new({
            id = id.from(_N, "UpdateApplicationOutput", "Description"),
            type = "string",
            name = "Description",
            target_id = prelude.String.id,
        }),
    },
})

M.UpdateConfigurationProfileInput = schema.new({
    id = id.from(_N, "UpdateConfigurationProfileInput"),
    type = "structure",
    members = {
        ApplicationId = schema.new({
            id = id.from(_N, "UpdateConfigurationProfileInput", "ApplicationId"),
            type = "string",
            name = "ApplicationId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
        ConfigurationProfileId = schema.new({
            id = id.from(_N, "UpdateConfigurationProfileInput", "ConfigurationProfileId"),
            type = "string",
            name = "ConfigurationProfileId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
        Name = schema.new({
            id = id.from(_N, "UpdateConfigurationProfileInput", "Name"),
            type = "string",
            name = "Name",
            target_id = prelude.String.id,
        }),
        Description = schema.new({
            id = id.from(_N, "UpdateConfigurationProfileInput", "Description"),
            type = "string",
            name = "Description",
            target_id = prelude.String.id,
        }),
        RetrievalRoleArn = schema.new({
            id = id.from(_N, "UpdateConfigurationProfileInput", "RetrievalRoleArn"),
            type = "string",
            name = "RetrievalRoleArn",
            target_id = prelude.String.id,
        }),
        Validators = schema.new({
            id = id.from(_N, "UpdateConfigurationProfileInput", "Validators"),
            type = "list",
            name = "Validators",
            target_id = prelude.Document.id,
            list_member = M.Validator,
        }),
        KmsKeyIdentifier = schema.new({
            id = id.from(_N, "UpdateConfigurationProfileInput", "KmsKeyIdentifier"),
            type = "string",
            name = "KmsKeyIdentifier",
            target_id = prelude.String.id,
        }),
    },
})

M.UpdateConfigurationProfileOutput = schema.new({
    id = id.from(_N, "UpdateConfigurationProfileOutput"),
    type = "structure",
    members = {
        ApplicationId = schema.new({
            id = id.from(_N, "UpdateConfigurationProfileOutput", "ApplicationId"),
            type = "string",
            name = "ApplicationId",
            target_id = prelude.String.id,
        }),
        Id = schema.new({
            id = id.from(_N, "UpdateConfigurationProfileOutput", "Id"),
            type = "string",
            name = "Id",
            target_id = prelude.String.id,
        }),
        Name = schema.new({
            id = id.from(_N, "UpdateConfigurationProfileOutput", "Name"),
            type = "string",
            name = "Name",
            target_id = prelude.String.id,
        }),
        Description = schema.new({
            id = id.from(_N, "UpdateConfigurationProfileOutput", "Description"),
            type = "string",
            name = "Description",
            target_id = prelude.String.id,
        }),
        LocationUri = schema.new({
            id = id.from(_N, "UpdateConfigurationProfileOutput", "LocationUri"),
            type = "string",
            name = "LocationUri",
            target_id = prelude.String.id,
        }),
        RetrievalRoleArn = schema.new({
            id = id.from(_N, "UpdateConfigurationProfileOutput", "RetrievalRoleArn"),
            type = "string",
            name = "RetrievalRoleArn",
            target_id = prelude.String.id,
        }),
        Validators = schema.new({
            id = id.from(_N, "UpdateConfigurationProfileOutput", "Validators"),
            type = "list",
            name = "Validators",
            target_id = prelude.Document.id,
            list_member = M.Validator,
        }),
        Type = schema.new({
            id = id.from(_N, "UpdateConfigurationProfileOutput", "Type"),
            type = "string",
            name = "Type",
            target_id = prelude.String.id,
        }),
        KmsKeyArn = schema.new({
            id = id.from(_N, "UpdateConfigurationProfileOutput", "KmsKeyArn"),
            type = "string",
            name = "KmsKeyArn",
            target_id = prelude.String.id,
        }),
        KmsKeyIdentifier = schema.new({
            id = id.from(_N, "UpdateConfigurationProfileOutput", "KmsKeyIdentifier"),
            type = "string",
            name = "KmsKeyIdentifier",
            target_id = prelude.String.id,
        }),
    },
})

M.UpdateDeploymentStrategyInput = schema.new({
    id = id.from(_N, "UpdateDeploymentStrategyInput"),
    type = "structure",
    members = {
        DeploymentStrategyId = schema.new({
            id = id.from(_N, "UpdateDeploymentStrategyInput", "DeploymentStrategyId"),
            type = "string",
            name = "DeploymentStrategyId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
        Description = schema.new({
            id = id.from(_N, "UpdateDeploymentStrategyInput", "Description"),
            type = "string",
            name = "Description",
            target_id = prelude.String.id,
        }),
        DeploymentDurationInMinutes = schema.new({
            id = id.from(_N, "UpdateDeploymentStrategyInput", "DeploymentDurationInMinutes"),
            type = "integer",
            name = "DeploymentDurationInMinutes",
            target_id = prelude.Integer.id,
            traits = {
                [traits.DEFAULT] = { value = nil },
            },
        }),
        FinalBakeTimeInMinutes = schema.new({
            id = id.from(_N, "UpdateDeploymentStrategyInput", "FinalBakeTimeInMinutes"),
            type = "integer",
            name = "FinalBakeTimeInMinutes",
            target_id = prelude.Integer.id,
            traits = {
                [traits.DEFAULT] = { value = nil },
            },
        }),
        GrowthFactor = schema.new({
            id = id.from(_N, "UpdateDeploymentStrategyInput", "GrowthFactor"),
            type = "float",
            name = "GrowthFactor",
            target_id = prelude.Float.id,
        }),
        GrowthType = schema.new({
            id = id.from(_N, "UpdateDeploymentStrategyInput", "GrowthType"),
            type = "string",
            name = "GrowthType",
            target_id = prelude.String.id,
        }),
    },
})

M.UpdateDeploymentStrategyOutput = schema.new({
    id = id.from(_N, "UpdateDeploymentStrategyOutput"),
    type = "structure",
    members = {
        Id = schema.new({
            id = id.from(_N, "UpdateDeploymentStrategyOutput", "Id"),
            type = "string",
            name = "Id",
            target_id = prelude.String.id,
        }),
        Name = schema.new({
            id = id.from(_N, "UpdateDeploymentStrategyOutput", "Name"),
            type = "string",
            name = "Name",
            target_id = prelude.String.id,
        }),
        Description = schema.new({
            id = id.from(_N, "UpdateDeploymentStrategyOutput", "Description"),
            type = "string",
            name = "Description",
            target_id = prelude.String.id,
        }),
        DeploymentDurationInMinutes = schema.new({
            id = id.from(_N, "UpdateDeploymentStrategyOutput", "DeploymentDurationInMinutes"),
            type = "integer",
            name = "DeploymentDurationInMinutes",
            target_id = prelude.Integer.id,
            traits = {
                [traits.DEFAULT] = { value = 0 },
            },
        }),
        GrowthType = schema.new({
            id = id.from(_N, "UpdateDeploymentStrategyOutput", "GrowthType"),
            type = "string",
            name = "GrowthType",
            target_id = prelude.String.id,
        }),
        GrowthFactor = schema.new({
            id = id.from(_N, "UpdateDeploymentStrategyOutput", "GrowthFactor"),
            type = "float",
            name = "GrowthFactor",
            target_id = prelude.Float.id,
        }),
        FinalBakeTimeInMinutes = schema.new({
            id = id.from(_N, "UpdateDeploymentStrategyOutput", "FinalBakeTimeInMinutes"),
            type = "integer",
            name = "FinalBakeTimeInMinutes",
            target_id = prelude.Integer.id,
            traits = {
                [traits.DEFAULT] = { value = 0 },
            },
        }),
        ReplicateTo = schema.new({
            id = id.from(_N, "UpdateDeploymentStrategyOutput", "ReplicateTo"),
            type = "string",
            name = "ReplicateTo",
            target_id = prelude.String.id,
        }),
    },
})

M.UpdateEnvironmentInput = schema.new({
    id = id.from(_N, "UpdateEnvironmentInput"),
    type = "structure",
    members = {
        ApplicationId = schema.new({
            id = id.from(_N, "UpdateEnvironmentInput", "ApplicationId"),
            type = "string",
            name = "ApplicationId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
        EnvironmentId = schema.new({
            id = id.from(_N, "UpdateEnvironmentInput", "EnvironmentId"),
            type = "string",
            name = "EnvironmentId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
        Name = schema.new({
            id = id.from(_N, "UpdateEnvironmentInput", "Name"),
            type = "string",
            name = "Name",
            target_id = prelude.String.id,
        }),
        Description = schema.new({
            id = id.from(_N, "UpdateEnvironmentInput", "Description"),
            type = "string",
            name = "Description",
            target_id = prelude.String.id,
        }),
        Monitors = schema.new({
            id = id.from(_N, "UpdateEnvironmentInput", "Monitors"),
            type = "list",
            name = "Monitors",
            target_id = prelude.Document.id,
            list_member = M.Monitor,
        }),
    },
})

M.UpdateEnvironmentOutput = schema.new({
    id = id.from(_N, "UpdateEnvironmentOutput"),
    type = "structure",
    members = {
        ApplicationId = schema.new({
            id = id.from(_N, "UpdateEnvironmentOutput", "ApplicationId"),
            type = "string",
            name = "ApplicationId",
            target_id = prelude.String.id,
        }),
        Id = schema.new({
            id = id.from(_N, "UpdateEnvironmentOutput", "Id"),
            type = "string",
            name = "Id",
            target_id = prelude.String.id,
        }),
        Name = schema.new({
            id = id.from(_N, "UpdateEnvironmentOutput", "Name"),
            type = "string",
            name = "Name",
            target_id = prelude.String.id,
        }),
        Description = schema.new({
            id = id.from(_N, "UpdateEnvironmentOutput", "Description"),
            type = "string",
            name = "Description",
            target_id = prelude.String.id,
        }),
        State = schema.new({
            id = id.from(_N, "UpdateEnvironmentOutput", "State"),
            type = "string",
            name = "State",
            target_id = prelude.String.id,
        }),
        Monitors = schema.new({
            id = id.from(_N, "UpdateEnvironmentOutput", "Monitors"),
            type = "list",
            name = "Monitors",
            target_id = prelude.Document.id,
            list_member = M.Monitor,
        }),
    },
})

M.UpdateExtensionInput = schema.new({
    id = id.from(_N, "UpdateExtensionInput"),
    type = "structure",
    members = {
        ExtensionIdentifier = schema.new({
            id = id.from(_N, "UpdateExtensionInput", "ExtensionIdentifier"),
            type = "string",
            name = "ExtensionIdentifier",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
        Description = schema.new({
            id = id.from(_N, "UpdateExtensionInput", "Description"),
            type = "string",
            name = "Description",
            target_id = prelude.String.id,
        }),
        Actions = schema.new({
            id = id.from(_N, "UpdateExtensionInput", "Actions"),
            type = "map",
            name = "Actions",
            target_id = prelude.Document.id,
            map_key = prelude.String,
            map_value = prelude.Document,
        }),
        Parameters = schema.new({
            id = id.from(_N, "UpdateExtensionInput", "Parameters"),
            type = "map",
            name = "Parameters",
            target_id = prelude.Document.id,
            map_key = prelude.String,
            map_value = M.Parameter,
        }),
        VersionNumber = schema.new({
            id = id.from(_N, "UpdateExtensionInput", "VersionNumber"),
            type = "integer",
            name = "VersionNumber",
            target_id = prelude.Integer.id,
            traits = {
                [traits.DEFAULT] = { value = nil },
            },
        }),
    },
})

M.UpdateExtensionOutput = schema.new({
    id = id.from(_N, "UpdateExtensionOutput"),
    type = "structure",
    members = {
        Id = schema.new({
            id = id.from(_N, "UpdateExtensionOutput", "Id"),
            type = "string",
            name = "Id",
            target_id = prelude.String.id,
        }),
        Name = schema.new({
            id = id.from(_N, "UpdateExtensionOutput", "Name"),
            type = "string",
            name = "Name",
            target_id = prelude.String.id,
        }),
        VersionNumber = schema.new({
            id = id.from(_N, "UpdateExtensionOutput", "VersionNumber"),
            type = "integer",
            name = "VersionNumber",
            target_id = prelude.Integer.id,
            traits = {
                [traits.DEFAULT] = { value = 0 },
            },
        }),
        Arn = schema.new({
            id = id.from(_N, "UpdateExtensionOutput", "Arn"),
            type = "string",
            name = "Arn",
            target_id = prelude.String.id,
        }),
        Description = schema.new({
            id = id.from(_N, "UpdateExtensionOutput", "Description"),
            type = "string",
            name = "Description",
            target_id = prelude.String.id,
        }),
        Actions = schema.new({
            id = id.from(_N, "UpdateExtensionOutput", "Actions"),
            type = "map",
            name = "Actions",
            target_id = prelude.Document.id,
            map_key = prelude.String,
            map_value = prelude.Document,
        }),
        Parameters = schema.new({
            id = id.from(_N, "UpdateExtensionOutput", "Parameters"),
            type = "map",
            name = "Parameters",
            target_id = prelude.Document.id,
            map_key = prelude.String,
            map_value = M.Parameter,
        }),
    },
})

M.UpdateExtensionAssociationInput = schema.new({
    id = id.from(_N, "UpdateExtensionAssociationInput"),
    type = "structure",
    members = {
        ExtensionAssociationId = schema.new({
            id = id.from(_N, "UpdateExtensionAssociationInput", "ExtensionAssociationId"),
            type = "string",
            name = "ExtensionAssociationId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
        Parameters = schema.new({
            id = id.from(_N, "UpdateExtensionAssociationInput", "Parameters"),
            type = "map",
            name = "Parameters",
            target_id = prelude.Document.id,
            map_key = prelude.String,
            map_value = prelude.String,
        }),
    },
})

M.UpdateExtensionAssociationOutput = schema.new({
    id = id.from(_N, "UpdateExtensionAssociationOutput"),
    type = "structure",
    members = {
        Id = schema.new({
            id = id.from(_N, "UpdateExtensionAssociationOutput", "Id"),
            type = "string",
            name = "Id",
            target_id = prelude.String.id,
        }),
        ExtensionArn = schema.new({
            id = id.from(_N, "UpdateExtensionAssociationOutput", "ExtensionArn"),
            type = "string",
            name = "ExtensionArn",
            target_id = prelude.String.id,
        }),
        ResourceArn = schema.new({
            id = id.from(_N, "UpdateExtensionAssociationOutput", "ResourceArn"),
            type = "string",
            name = "ResourceArn",
            target_id = prelude.String.id,
        }),
        Arn = schema.new({
            id = id.from(_N, "UpdateExtensionAssociationOutput", "Arn"),
            type = "string",
            name = "Arn",
            target_id = prelude.String.id,
        }),
        Parameters = schema.new({
            id = id.from(_N, "UpdateExtensionAssociationOutput", "Parameters"),
            type = "map",
            name = "Parameters",
            target_id = prelude.Document.id,
            map_key = prelude.String,
            map_value = prelude.String,
        }),
        ExtensionVersionNumber = schema.new({
            id = id.from(_N, "UpdateExtensionAssociationOutput", "ExtensionVersionNumber"),
            type = "integer",
            name = "ExtensionVersionNumber",
            target_id = prelude.Integer.id,
            traits = {
                [traits.DEFAULT] = { value = 0 },
            },
        }),
    },
})

M.ValidateConfigurationInput = schema.new({
    id = id.from(_N, "ValidateConfigurationInput"),
    type = "structure",
    members = {
        ApplicationId = schema.new({
            id = id.from(_N, "ValidateConfigurationInput", "ApplicationId"),
            type = "string",
            name = "ApplicationId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
        ConfigurationProfileId = schema.new({
            id = id.from(_N, "ValidateConfigurationInput", "ConfigurationProfileId"),
            type = "string",
            name = "ConfigurationProfileId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
        ConfigurationVersion = schema.new({
            id = id.from(_N, "ValidateConfigurationInput", "ConfigurationVersion"),
            type = "string",
            name = "ConfigurationVersion",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_QUERY] = { name = "configuration_version" },
            },
        }),
    },
})

M.ValidateConfigurationOutput = schema.new({
    id = id.from(_N, "ValidateConfigurationOutput"),
    type = "structure",
})

return M
